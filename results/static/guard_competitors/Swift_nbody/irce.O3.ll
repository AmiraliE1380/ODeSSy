; ModuleID = 'results/static/guard_competitors/Swift_nbody/irce.ll'
source_filename = "/Users/ebrah/Project/compiler/ODeSSy/logs/swift_triage/nbody.ll"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

%TSi = type <{ i64 }>
%TSa = type <{ %Ts12_ArrayBufferV }>
%Ts12_ArrayBufferV = type <{ %Ts14_BridgeStorageV }>
%Ts14_BridgeStorageV = type <{ ptr }>
%TSd = type <{ double }>
%struct._SwiftEmptyArrayStorage = type { %struct.HeapObject, %struct._SwiftArrayBodyStorage }
%struct.HeapObject = type { ptr, %struct.InlineRefCountsPlaceholder }
%struct.InlineRefCountsPlaceholder = type { i64 }
%struct._SwiftArrayBodyStorage = type { i64, i64 }
%swift.type = type { i64 }
%Ts23_ContiguousArrayStorageCySdG_tailelems1 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%swift.refcounted = type { ptr, i64 }
%Ts10_ArrayBodyV = type <{ %TSo22_SwiftArrayBodyStorageV }>
%TSo22_SwiftArrayBodyStorageV = type <{ %TSi, %TSu }>
%TSu = type <{ i64 }>
%Ts23_ContiguousArrayStorageCySdG_tailelems2 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySdG_tailelems3 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySdG_tailelems4 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySdG_tailelems5 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd, %TSd }>
%Ts23_ContiguousArrayStorageCySaySdGG_tailelems0 = type <{ %swift.refcounted, %Ts10_ArrayBodyV, %TSa, %TSa, %TSa, %TSa, %TSa }>
%swift.type_descriptor = type opaque
%swift.protocol = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
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
@"$s5nbody3mpxSdvp" = hidden global %TSd zeroinitializer, align 8
@"$s5nbody3mpySdvp" = hidden global %TSd zeroinitializer, align 8
@"$s5nbody3mpzSdvp" = hidden global %TSd zeroinitializer, align 8
@"$s5nbody2dtSdvp" = hidden local_unnamed_addr global %TSd zeroinitializer, align 8
@"$s5nbody1eSdvp" = hidden global %TSd zeroinitializer, align 8
@_swiftEmptyArrayStorage = external global %struct._SwiftEmptyArrayStorage, align 8
@_swiftImmortalRefCount = external constant i8
@"$ss20__StaticArrayStorageCN" = external global %swift.type, align 8
@mainTv_r = internal constant %Ts23_ContiguousArrayStorageCySdG_tailelems1 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd zeroinitializer, %TSd <{ double 1.000000e+00 }> }>, align 8
@mainTv0_r = internal constant %Ts23_ContiguousArrayStorageCySdG_tailelems2 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x40135DA0343CD92C }>, %TSd <{ double 0xBFF290ABC01FDB7C }>, %TSd <{ double 0xBFBA86F96C25EBF0 }>, %TSd <{ double 0x3F5B32DDB8EC9209 }>, %TSd <{ double 0x3F7F88FF93F670B6 }>, %TSd <{ double 0xBF12199946DEBD80 }>, %TSd <{ double 0x3F4F49601333C135 }> }>, align 8
@mainTv1_r = internal constant %Ts23_ContiguousArrayStorageCySdG_tailelems3 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x4020AFCDC332CA67 }>, %TSd <{ double 0x40107FCB31DE01B0 }>, %TSd <{ double 0xBFD9D353E1EB467C }>, %TSd <{ double 0xBF66ABB60A8E1D76 }>, %TSd <{ double 0x3F747956257578B8 }>, %TSd <{ double 0x3EF829379CAD4AC0 }>, %TSd <{ double 0x3F32BC5EEFF5E6F8 }> }>, align 8
@mainTv2_r = internal constant %Ts23_ContiguousArrayStorageCySdG_tailelems4 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x4029C9EACEA7D9CF }>, %TSd <{ double 0xC02E38E8D626667E }>, %TSd <{ double 0xBFCC9557BE257DA0 }>, %TSd <{ double 0x3F6849383E87D954 }>, %TSd <{ double 0x3F637C044AC0ACE1 }>, %TSd <{ double 0xBEFF1983FEDBFAA0 }>, %TSd <{ double 0x3F06E44607A13BD6 }> }>, align 8
@mainTv3_r = internal constant %Ts23_ContiguousArrayStorageCySdG_tailelems5 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 7 }>, %TSu <{ i64 14 }> }> }>, %TSd <{ double 0x402EC267A905572A }>, %TSd <{ double 0xC039EB5833C8A220 }>, %TSd <{ double 0x3FC6F1F393ABE540 }>, %TSd <{ double 0x3F65F5C9E51B4320 }>, %TSd <{ double 0x3F5AAD5736999D88 }>, %TSd <{ double 0xBF18F2070B7F9750 }>, %TSd <{ double 0x3F0B0213CA2D0EEC }> }>, align 8
@mainTv4_r = internal constant %Ts23_ContiguousArrayStorageCySaySdGG_tailelems0 <{ %swift.refcounted { ptr @"$ss20__StaticArrayStorageCN", i64 ptrtoint (ptr @_swiftImmortalRefCount to i64) }, %Ts10_ArrayBodyV <{ %TSo22_SwiftArrayBodyStorageV <{ %TSi <{ i64 5 }>, %TSu <{ i64 10 }> }> }>, %TSa <{ %Ts12_ArrayBufferV <{ %Ts14_BridgeStorageV <{ ptr @mainTv_r }> }> }>, %TSa <{ %Ts12_ArrayBufferV <{ %Ts14_BridgeStorageV <{ ptr @mainTv0_r }> }> }>, %TSa <{ %Ts12_ArrayBufferV <{ %Ts14_BridgeStorageV <{ ptr @mainTv1_r }> }> }>, %TSa <{ %Ts12_ArrayBufferV <{ %Ts14_BridgeStorageV <{ ptr @mainTv2_r }> }> }>, %TSa <{ %Ts12_ArrayBufferV <{ %Ts14_BridgeStorageV <{ ptr @mainTv3_r }> }> }> }>, align 8
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = private unnamed_addr constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCyypGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMR" to i64)) to i32), i32 9 }, align 8
@"$ss7CVarArgMp" = external global %swift.protocol, align 4
@"got.$ss7CVarArgMp" = private unnamed_addr constant ptr @"$ss7CVarArgMp"
@"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [3 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [3 x i8], i8 }>, ptr @"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss7CVarArgMp" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [3 x i8], i8 }>, ptr @"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP", i32 0, i32 4) to i64)) to i32), [3 x i8] c"_pG", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys7CVarArg_pGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCys7CVarArg_pGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y______pG s23_ContiguousArrayStorageC s7CVarArgP" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys7CVarArg_pGMR" to i64)) to i32), i32 14 }, align 8
@"$sSdN" = external global %swift.type, align 8
@"$sSds7CVarArgsWP" = external global ptr, align 8
@"$sSSN" = external global %swift.type, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"_swift_FORCE_LOAD_$_swiftFoundation_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftFoundation"
@"_swift_FORCE_LOAD_$_swift_Builtin_float_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float"
@"_swift_FORCE_LOAD_$_swiftObjectiveC_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC"
@"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation"
@"_swift_FORCE_LOAD_$_swiftDispatch_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftDispatch"
@"_swift_FORCE_LOAD_$_swiftXPC_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftXPC"
@"_swift_FORCE_LOAD_$_swiftIOKit_$_nbody" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftIOKit"
@"symbolic _____ySdG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____ySdG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"ySdG", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCySdGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCySdGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____ySdG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCySdGMR" to i64)) to i32), i32 9 }, align 8
@"$sSSs25LosslessStringConvertiblesWP" = external global ptr, align 8
@"$sSSSTsWP" = external global ptr, align 8
@"$ss5UInt8VMn" = external global %swift.type_descriptor, align 4
@"got.$ss5UInt8VMn" = private unnamed_addr constant ptr @"$ss5UInt8VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss5UInt8VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys5UInt8VGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCys5UInt8VGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys5UInt8VGMR" to i64)) to i32), i32 12 }, align 8
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@llvm.used = appending global [10 x ptr] [ptr @"\01l_entry_point", ptr @__swift_reflection_version, ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_nbody", ptr @"_swift_FORCE_LOAD_$_swiftDispatch_$_nbody", ptr @"_swift_FORCE_LOAD_$_swiftFoundation_$_nbody", ptr @"_swift_FORCE_LOAD_$_swiftIOKit_$_nbody", ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC_$_nbody", ptr @"_swift_FORCE_LOAD_$_swiftXPC_$_nbody", ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float_$_nbody", ptr @main], section "llvm.metadata"

define noundef i32 @main(i32 %0, ptr readnone captures(none) %1) #0 {
entry:
  %access-scratch = alloca [24 x i8], align 8
  %access-scratch4 = alloca [24 x i8], align 8
  %access-scratch11 = alloca [24 x i8], align 8
  %access-scratch18 = alloca [24 x i8], align 8
  %access-scratch25 = alloca [24 x i8], align 8
  %access-scratch32 = alloca [24 x i8], align 8
  %access-scratch39 = alloca [24 x i8], align 8
  %access-scratch46 = alloca [24 x i8], align 8
  %access-scratch49 = alloca [24 x i8], align 8
  %access-scratch50 = alloca [24 x i8], align 8
  %access-scratch51 = alloca [24 x i8], align 8
  %access-scratch52 = alloca [24 x i8], align 8
  %access-scratch53 = alloca [24 x i8], align 8
  %access-scratch54 = alloca [24 x i8], align 8
  %access-scratch58 = alloca [24 x i8], align 8
  %access-scratch64 = alloca [24 x i8], align 8
  %access-scratch65 = alloca [24 x i8], align 8
  %access-scratch68 = alloca [24 x i8], align 8
  %access-scratch69 = alloca [24 x i8], align 8
  %access-scratch72 = alloca [24 x i8], align 8
  %access-scratch73 = alloca [24 x i8], align 8
  %access-scratch76 = alloca [24 x i8], align 8
  %access-scratch77 = alloca [24 x i8], align 8
  %access-scratch78 = alloca [24 x i8], align 8
  %access-scratch90 = alloca [24 x i8], align 8
  %access-scratch96 = alloca [24 x i8], align 8
  %access-scratch102 = alloca [24 x i8], align 8
  %access-scratch108 = alloca [24 x i8], align 8
  %access-scratch114 = alloca [24 x i8], align 8
  %access-scratch120 = alloca [24 x i8], align 8
  %access-scratch126 = alloca [24 x i8], align 8
  %access-scratch132 = alloca [24 x i8], align 8
  %access-scratch138 = alloca [24 x i8], align 8
  %access-scratch142 = alloca [24 x i8], align 8
  %access-scratch143 = alloca [24 x i8], align 8
  %access-scratch152 = alloca [24 x i8], align 8
  %access-scratch153 = alloca [24 x i8], align 8
  %2 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %3 = tail call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = load i64, ptr %4, align 8, !range !41
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %odessy.chk, label %7, !prof !42

7:                                                ; preds = %entry
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %9 = load i64, ptr %8, align 8
  %._guts._object._object = getelementptr inbounds nuw i8, ptr %3, i64 56
  %10 = load ptr, ptr %._guts._object._object, align 8
  %11 = tail call ptr @swift_bridgeObjectRetain(ptr returned %10) #2
  tail call void @swift_bridgeObjectRelease(ptr nonnull %3) #2
  %12 = ptrtoint ptr %10 to i64
  %13 = and i64 %12, 2305843009213693952
  %.not = icmp eq i64 %13, 0
  %14 = and i64 %9, 281474976710655
  %15 = lshr i64 %12, 56
  %16 = and i64 %15, 15
  %17 = select i1 %.not, i64 %14, i64 %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20, !prof !42

19:                                               ; preds = %7
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
  unreachable

20:                                               ; preds = %7
  %21 = and i64 %12, 1152921504606846976
  %.not245 = icmp eq i64 %21, 0
  br i1 %.not245, label %22, label %.thread, !prof !43

22:                                               ; preds = %20
  br i1 %.not, label %91, label %23

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.elt177 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %24 = and i64 %12, 72057594037927935
  store i64 %9, ptr %2, align 8
  store i64 %24, ptr %.elt177, align 8
  %25 = trunc i64 %9 to i8
  switch i8 %25, label %50 [
    i8 45, label %26
    i8 43, label %49
  ]

26:                                               ; preds = %23
  switch i64 %16, label %29 [
    i64 0, label %899
    i64 1, label %.loopexit326
  ], !prof !44

.loopexit326:                                     ; preds = %55, %60, %63, %68, %32, %37, %40, %45, %74, %79, %82, %87, %50, %49, %26
  %27 = phi i64 [ 0, %50 ], [ 0, %26 ], [ 0, %49 ], [ 0, %32 ], [ 0, %74 ], [ %88, %87 ], [ 0, %82 ], [ 0, %79 ], [ %46, %45 ], [ 0, %40 ], [ 0, %37 ], [ 0, %55 ], [ %69, %68 ], [ 0, %63 ], [ 0, %60 ]
  %28 = phi i8 [ 1, %50 ], [ 1, %26 ], [ 1, %49 ], [ 1, %32 ], [ 1, %74 ], [ 0, %87 ], [ 1, %82 ], [ 1, %79 ], [ 0, %45 ], [ 1, %40 ], [ 1, %37 ], [ 1, %55 ], [ 0, %68 ], [ 1, %63 ], [ 1, %60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread309

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %31 = getelementptr i8, ptr %2, i64 %16
  br label %32

32:                                               ; preds = %45, %29
  %33 = phi ptr [ %30, %29 ], [ %47, %45 ]
  %34 = phi i64 [ 0, %29 ], [ %46, %45 ]
  %35 = load i8, ptr %33, align 1
  %36 = add i8 %35, -48
  %or.cond = icmp ult i8 %36, 10
  br i1 %or.cond, label %37, label %.loopexit326, !prof !45

37:                                               ; preds = %32
  %38 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %34, i64 10)
  %39 = extractvalue { i64, i1 } %38, 1
  br i1 %39, label %.loopexit326, label %40

40:                                               ; preds = %37
  %41 = extractvalue { i64, i1 } %38, 0
  %42 = zext nneg i8 %36 to i64
  %43 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %41, i64 %42)
  %44 = extractvalue { i64, i1 } %43, 1
  br i1 %44, label %.loopexit326, label %45, !prof !42

45:                                               ; preds = %40
  %46 = extractvalue { i64, i1 } %43, 0
  %47 = getelementptr inbounds nuw i8, ptr %33, i64 1
  %48 = icmp eq ptr %47, %31
  br i1 %48, label %.loopexit326, label %32

49:                                               ; preds = %23
  switch i64 %16, label %52 [
    i64 0, label %898
    i64 1, label %.loopexit326
  ], !prof !44

50:                                               ; preds = %23
  %51 = icmp eq i64 %16, 0
  br i1 %51, label %.loopexit326, label %72, !prof !42

52:                                               ; preds = %49
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %54 = getelementptr i8, ptr %2, i64 %16
  br label %55

55:                                               ; preds = %68, %52
  %56 = phi ptr [ %53, %52 ], [ %70, %68 ]
  %57 = phi i64 [ 0, %52 ], [ %69, %68 ]
  %58 = load i8, ptr %56, align 1
  %59 = add i8 %58, -48
  %or.cond182 = icmp ult i8 %59, 10
  br i1 %or.cond182, label %60, label %.loopexit326, !prof !45

60:                                               ; preds = %55
  %61 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %57, i64 10)
  %62 = extractvalue { i64, i1 } %61, 1
  br i1 %62, label %.loopexit326, label %63

63:                                               ; preds = %60
  %64 = extractvalue { i64, i1 } %61, 0
  %65 = zext nneg i8 %59 to i64
  %66 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %64, i64 %65)
  %67 = extractvalue { i64, i1 } %66, 1
  br i1 %67, label %.loopexit326, label %68, !prof !42

68:                                               ; preds = %63
  %69 = extractvalue { i64, i1 } %66, 0
  %70 = getelementptr inbounds nuw i8, ptr %56, i64 1
  %71 = icmp eq ptr %70, %54
  br i1 %71, label %.loopexit326, label %55

72:                                               ; preds = %50
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 %16
  br label %74

74:                                               ; preds = %87, %72
  %75 = phi ptr [ %2, %72 ], [ %89, %87 ]
  %76 = phi i64 [ 0, %72 ], [ %88, %87 ]
  %77 = load i8, ptr %75, align 1
  %78 = add i8 %77, -48
  %or.cond183 = icmp ult i8 %78, 10
  br i1 %or.cond183, label %79, label %.loopexit326, !prof !45

79:                                               ; preds = %74
  %80 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %76, i64 10)
  %81 = extractvalue { i64, i1 } %80, 1
  br i1 %81, label %.loopexit326, label %82

82:                                               ; preds = %79
  %83 = extractvalue { i64, i1 } %80, 0
  %84 = zext nneg i8 %78 to i64
  %85 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %83, i64 %84)
  %86 = extractvalue { i64, i1 } %85, 1
  br i1 %86, label %.loopexit326, label %87, !prof !42

87:                                               ; preds = %82
  %88 = extractvalue { i64, i1 } %85, 0
  %89 = getelementptr inbounds nuw i8, ptr %75, i64 1
  %90 = icmp eq ptr %89, %73
  br i1 %90, label %.loopexit326, label %74

91:                                               ; preds = %22
  %92 = and i64 %9, 1152921504606846976
  %.not244 = icmp eq i64 %92, 0
  br i1 %.not244, label %103, label %100, !prof !42

.thread309:                                       ; preds = %145, %150, %153, %158, %119, %124, %127, %132, %166, %171, %174, %179, %162, %140, %138, %114, %.loopexit326
  %.sroa.6.1313 = phi i8 [ 0, %162 ], [ 1, %140 ], [ 1, %138 ], [ 1, %114 ], [ %28, %.loopexit326 ], [ 1, %119 ], [ 1, %166 ], [ 0, %179 ], [ 1, %174 ], [ 1, %171 ], [ 0, %132 ], [ 1, %127 ], [ 1, %124 ], [ 1, %145 ], [ 0, %158 ], [ 1, %153 ], [ 1, %150 ]
  %.sroa.0.1312 = phi i64 [ 0, %162 ], [ 0, %140 ], [ 0, %138 ], [ 0, %114 ], [ %27, %.loopexit326 ], [ 0, %119 ], [ 0, %166 ], [ %180, %179 ], [ 0, %174 ], [ 0, %171 ], [ %133, %132 ], [ 0, %127 ], [ 0, %124 ], [ 0, %145 ], [ %159, %158 ], [ 0, %153 ], [ 0, %150 ]
  call void @swift_bridgeObjectRelease(ptr %10) #2
  br label %96

.thread:                                          ; preds = %20
  %93 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSS_SiTg5"(i64 %9, ptr %10, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  %94 = extractvalue { i64, i8 } %93, 0
  %95 = extractvalue { i64, i8 } %93, 1
  br label %96

96:                                               ; preds = %.thread, %.thread309
  %97 = phi i64 [ %94, %.thread ], [ %.sroa.0.1312, %.thread309 ]
  %98 = phi i8 [ %95, %.thread ], [ %.sroa.6.1313, %.thread309 ]
  %99 = icmp eq i8 %98, 1
  br i1 %99, label %odessy.chk1, label %183

100:                                              ; preds = %91
  %101 = and i64 %12, 1152921504606846975
  %102 = add nuw nsw i64 %101, 32
  br label %107

103:                                              ; preds = %91
  %104 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %9, ptr %10)
  %105 = extractvalue { i64, i64 } %104, 0
  %106 = extractvalue { i64, i64 } %104, 1
  br label %107

107:                                              ; preds = %103, %100
  %108 = phi i64 [ %105, %103 ], [ %102, %100 ]
  %109 = phi i64 [ %106, %103 ], [ %14, %100 ]
  %110 = inttoptr i64 %108 to ptr
  %111 = load i8, ptr %110, align 1
  switch i8 %111, label %140 [
    i8 45, label %112
    i8 43, label %136
  ]

112:                                              ; preds = %107
  %113 = icmp slt i64 %109, 1
  br i1 %113, label %odessy.chk75, label %114, !prof !42

114:                                              ; preds = %112
  %115 = icmp eq i64 %109, 1
  br i1 %115, label %.thread309, label %116, !prof !42

116:                                              ; preds = %114
  %117 = getelementptr inbounds nuw i8, ptr %110, i64 1
  %118 = getelementptr i8, ptr %110, i64 %109
  br label %119

119:                                              ; preds = %132, %116
  %120 = phi ptr [ %117, %116 ], [ %134, %132 ]
  %121 = phi i64 [ 0, %116 ], [ %133, %132 ]
  %122 = load i8, ptr %120, align 1
  %123 = add i8 %122, -48
  %or.cond184 = icmp ult i8 %123, 10
  br i1 %or.cond184, label %124, label %.thread309, !prof !45

124:                                              ; preds = %119
  %125 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %121, i64 10)
  %126 = extractvalue { i64, i1 } %125, 1
  br i1 %126, label %.thread309, label %127

127:                                              ; preds = %124
  %128 = extractvalue { i64, i1 } %125, 0
  %129 = zext nneg i8 %123 to i64
  %130 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %128, i64 %129)
  %131 = extractvalue { i64, i1 } %130, 1
  br i1 %131, label %.thread309, label %132, !prof !42

132:                                              ; preds = %127
  %133 = extractvalue { i64, i1 } %130, 0
  %134 = getelementptr inbounds nuw i8, ptr %120, i64 1
  %135 = icmp eq ptr %134, %118
  br i1 %135, label %.thread309, label %119

136:                                              ; preds = %107
  %137 = icmp slt i64 %109, 1
  br i1 %137, label %odessy.chk74, label %138, !prof !42

138:                                              ; preds = %136
  %139 = icmp eq i64 %109, 1
  br i1 %139, label %.thread309, label %142, !prof !42

140:                                              ; preds = %107
  %141 = icmp eq i64 %109, 0
  br i1 %141, label %.thread309, label %162, !prof !42

142:                                              ; preds = %138
  %143 = getelementptr inbounds nuw i8, ptr %110, i64 1
  %144 = getelementptr i8, ptr %110, i64 %109
  br label %145

145:                                              ; preds = %158, %142
  %146 = phi ptr [ %143, %142 ], [ %160, %158 ]
  %147 = phi i64 [ 0, %142 ], [ %159, %158 ]
  %148 = load i8, ptr %146, align 1
  %149 = add i8 %148, -48
  %or.cond185 = icmp ult i8 %149, 10
  br i1 %or.cond185, label %150, label %.thread309, !prof !45

150:                                              ; preds = %145
  %151 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %147, i64 10)
  %152 = extractvalue { i64, i1 } %151, 1
  br i1 %152, label %.thread309, label %153

153:                                              ; preds = %150
  %154 = extractvalue { i64, i1 } %151, 0
  %155 = zext nneg i8 %149 to i64
  %156 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155)
  %157 = extractvalue { i64, i1 } %156, 1
  br i1 %157, label %.thread309, label %158, !prof !42

158:                                              ; preds = %153
  %159 = extractvalue { i64, i1 } %156, 0
  %160 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %161 = icmp eq ptr %160, %144
  br i1 %161, label %.thread309, label %145

162:                                              ; preds = %140
  %163 = icmp eq i64 %108, 0
  br i1 %163, label %.thread309, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds i8, ptr %110, i64 %109
  br label %166

166:                                              ; preds = %179, %164
  %167 = phi ptr [ %110, %164 ], [ %181, %179 ]
  %168 = phi i64 [ 0, %164 ], [ %180, %179 ]
  %169 = load i8, ptr %167, align 1
  %170 = add i8 %169, -48
  %or.cond186 = icmp ult i8 %170, 10
  br i1 %or.cond186, label %171, label %.thread309, !prof !45

171:                                              ; preds = %166
  %172 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %168, i64 10)
  %173 = extractvalue { i64, i1 } %172, 1
  br i1 %173, label %.thread309, label %174

174:                                              ; preds = %171
  %175 = extractvalue { i64, i1 } %172, 0
  %176 = zext nneg i8 %170 to i64
  %177 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %175, i64 %176)
  %178 = extractvalue { i64, i1 } %177, 1
  br i1 %178, label %.thread309, label %179, !prof !42

179:                                              ; preds = %174
  %180 = extractvalue { i64, i1 } %177, 0
  %181 = getelementptr inbounds nuw i8, ptr %167, i64 1
  %182 = icmp eq ptr %181, %165
  br i1 %182, label %.thread309, label %166

183:                                              ; preds = %96
  store i64 %97, ptr @"$s5nbody5stepsSivp", align 8
  store i64 5, ptr @"$s5nbody1nSivp", align 8
  %184 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZ"(i64 5, ptr nonnull @"$sSdN")
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 16
  store i64 5, ptr %185, align 8
  %186 = getelementptr i8, ptr %184, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %186, i8 0, i64 40, i1 false)
  store ptr %184, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch, i64 0, ptr null) #2
  %187 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  store ptr %187, ptr @"$s5nbody2pySaySdGvp", align 8
  store ptr %187, ptr @"$s5nbody2pzSaySdGvp", align 8
  store ptr %187, ptr @"$s5nbody2vxSaySdGvp", align 8
  store ptr %187, ptr @"$s5nbody2vySaySdGvp", align 8
  store ptr %187, ptr @"$s5nbody2vzSaySdGvp", align 8
  store ptr %187, ptr @"$s5nbody4massSaySdGvp", align 8
  store double 0x400921FB54442D18, ptr @"$s5nbody2piSdvp", align 8
  store double 0x4043BD3CC9BE45DE, ptr @"$s5nbody5solarSdvp", align 8
  store double 3.652400e+02, ptr @"$s5nbody3dpySdvp", align 8
  store ptr @mainTv4_r, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %188 = load i64, ptr @"$s5nbody1nSivp", align 8
  %189 = icmp slt i64 %188, 0
  %190 = call ptr @swift_bridgeObjectRetain_n(ptr %187, i32 2)
  br i1 %189, label %odessy.chk2, label %191, !prof !42

191:                                              ; preds = %183
  %192 = icmp eq i64 %188, 0
  br i1 %192, label %.thread370, label %193

193:                                              ; preds = %191
  %194 = call ptr @swift_bridgeObjectRetain_n(ptr %187, i32 4)
  br label %263

.thread370:                                       ; preds = %191
  store double 0.000000e+00, ptr @"$s5nbody3mpxSdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpySdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpzSdvp", align 8
  %195 = call ptr @swift_bridgeObjectRetain_n(ptr %187, i32 4)
  br label %442

.loopexit319:                                     ; preds = %437
  %.pre = load i64, ptr @"$s5nbody1nSivp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpxSdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpySdvp", align 8
  store double 0.000000e+00, ptr @"$s5nbody3mpzSdvp", align 8
  %196 = icmp slt i64 %.pre, 0
  br i1 %196, label %odessy.chk24, label %197, !prof !46

197:                                              ; preds = %.loopexit319
  %198 = icmp eq i64 %.pre, 0
  br i1 %198, label %442, label %199

199:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch49)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch49, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch50)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody3mpxSdvp", ptr nonnull %access-scratch50, i64 1, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch51)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch51, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch52)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody3mpySdvp", ptr nonnull %access-scratch52, i64 1, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch53)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch53, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch54)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody3mpzSdvp", ptr nonnull %access-scratch54, i64 1, ptr null) #2
  %200 = load double, ptr @"$s5nbody3mpxSdvp", align 8
  %201 = load double, ptr @"$s5nbody3mpySdvp", align 8
  %202 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 32
  %204 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 32
  %206 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %207 = getelementptr inbounds nuw i8, ptr %206, i64 32
  %208 = getelementptr inbounds nuw i8, ptr %202, i64 16
  %209 = getelementptr inbounds nuw i8, ptr %204, i64 16
  %210 = getelementptr inbounds nuw i8, ptr %206, i64 16
  %211 = load i64, ptr %208, align 8, !range !41
  %212 = load i64, ptr %209, align 8, !range !41
  %213 = freeze i64 %212
  %214 = load i64, ptr %210, align 8, !range !41
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch58)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch58, i64 0, ptr null) #2
  %215 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 32
  %217 = getelementptr inbounds nuw i8, ptr %215, i64 16
  %218 = load i64, ptr %217, align 8, !range !41
  %219 = freeze i64 %218
  %220 = add nsw i64 %.pre, -1
  %umin = call i64 @llvm.umin.i64(i64 %214, i64 %220)
  %221 = freeze i64 %umin
  %umin360 = call i64 @llvm.umin.i64(i64 %221, i64 %213)
  %umin361 = call i64 @llvm.umin.i64(i64 %umin360, i64 %219)
  %umin362 = call i64 @llvm.umin.i64(i64 %umin361, i64 %211)
  %.not364.not = icmp ugt i64 %211, %umin361
  %.not366 = icmp eq i64 %213, %umin362
  %.not367 = icmp eq i64 %214, %umin362
  br i1 %.not364.not, label %.split, label %odessy.chk25, !prof !43

.split:                                           ; preds = %199
  %.not365 = icmp eq i64 %219, %umin362
  br i1 %.not365, label %odessy.chk26, label %.split.split, !prof !42

.split.split:                                     ; preds = %.split
  br i1 %.not366, label %odessy.chk27, label %.split.split.split, !prof !42

.split.split.split:                               ; preds = %.split.split
  br i1 %.not367, label %odessy.chk28, label %.split.split.split.split.preheader, !prof !42

.split.split.split.split.preheader:               ; preds = %.split.split.split
  %min.iters.check = icmp samesign ult i64 %.pre, 8
  br i1 %min.iters.check, label %.split.split.split.split.preheader169, label %vector.ph

.split.split.split.split.preheader169:            ; preds = %middle.block, %.split.split.split.split.preheader
  %.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.split.split.split.split.preheader ]
  %.ph170 = phi double [ %253, %middle.block ], [ %200, %.split.split.split.split.preheader ]
  %.ph171 = phi double [ %257, %middle.block ], [ %201, %.split.split.split.split.preheader ]
  %.ph172 = phi double [ %261, %middle.block ], [ 0.000000e+00, %.split.split.split.split.preheader ]
  br label %.split.split.split.split

vector.ph:                                        ; preds = %.split.split.split.split.preheader
  %n.vec = and i64 %.pre, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi double [ %200, %vector.ph ], [ %253, %vector.body ]
  %vec.phi405 = phi double [ %201, %vector.ph ], [ %257, %vector.body ]
  %vec.phi406 = phi double [ 0.000000e+00, %vector.ph ], [ %261, %vector.body ]
  %222 = getelementptr inbounds nuw [8 x i8], ptr %203, i64 %index
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 16
  %224 = getelementptr inbounds nuw i8, ptr %222, i64 32
  %225 = getelementptr inbounds nuw i8, ptr %222, i64 48
  %wide.load = load <2 x double>, ptr %222, align 8
  %wide.load407 = load <2 x double>, ptr %223, align 8
  %wide.load408 = load <2 x double>, ptr %224, align 8
  %wide.load409 = load <2 x double>, ptr %225, align 8
  %226 = getelementptr inbounds nuw [8 x i8], ptr %216, i64 %index
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 16
  %228 = getelementptr inbounds nuw i8, ptr %226, i64 32
  %229 = getelementptr inbounds nuw i8, ptr %226, i64 48
  %wide.load410 = load <2 x double>, ptr %226, align 8
  %wide.load411 = load <2 x double>, ptr %227, align 8
  %wide.load412 = load <2 x double>, ptr %228, align 8
  %wide.load413 = load <2 x double>, ptr %229, align 8
  %230 = fmul <2 x double> %wide.load, %wide.load410
  %231 = fmul <2 x double> %wide.load407, %wide.load411
  %232 = fmul <2 x double> %wide.load408, %wide.load412
  %233 = fmul <2 x double> %wide.load409, %wide.load413
  %234 = getelementptr inbounds nuw [8 x i8], ptr %205, i64 %index
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 16
  %236 = getelementptr inbounds nuw i8, ptr %234, i64 32
  %237 = getelementptr inbounds nuw i8, ptr %234, i64 48
  %wide.load414 = load <2 x double>, ptr %234, align 8
  %wide.load415 = load <2 x double>, ptr %235, align 8
  %wide.load416 = load <2 x double>, ptr %236, align 8
  %wide.load417 = load <2 x double>, ptr %237, align 8
  %238 = fmul <2 x double> %wide.load410, %wide.load414
  %239 = fmul <2 x double> %wide.load411, %wide.load415
  %240 = fmul <2 x double> %wide.load412, %wide.load416
  %241 = fmul <2 x double> %wide.load413, %wide.load417
  %242 = getelementptr inbounds nuw [8 x i8], ptr %207, i64 %index
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 16
  %244 = getelementptr inbounds nuw i8, ptr %242, i64 32
  %245 = getelementptr inbounds nuw i8, ptr %242, i64 48
  %wide.load418 = load <2 x double>, ptr %242, align 8
  %wide.load419 = load <2 x double>, ptr %243, align 8
  %wide.load420 = load <2 x double>, ptr %244, align 8
  %wide.load421 = load <2 x double>, ptr %245, align 8
  %246 = fmul <2 x double> %wide.load410, %wide.load418
  %247 = fmul <2 x double> %wide.load411, %wide.load419
  %248 = fmul <2 x double> %wide.load412, %wide.load420
  %249 = fmul <2 x double> %wide.load413, %wide.load421
  %250 = call double @llvm.vector.reduce.fadd.v2f64(double %vec.phi, <2 x double> %230)
  %251 = call double @llvm.vector.reduce.fadd.v2f64(double %250, <2 x double> %231)
  %252 = call double @llvm.vector.reduce.fadd.v2f64(double %251, <2 x double> %232)
  %253 = call double @llvm.vector.reduce.fadd.v2f64(double %252, <2 x double> %233)
  %254 = call double @llvm.vector.reduce.fadd.v2f64(double %vec.phi405, <2 x double> %238)
  %255 = call double @llvm.vector.reduce.fadd.v2f64(double %254, <2 x double> %239)
  %256 = call double @llvm.vector.reduce.fadd.v2f64(double %255, <2 x double> %240)
  %257 = call double @llvm.vector.reduce.fadd.v2f64(double %256, <2 x double> %241)
  %258 = call double @llvm.vector.reduce.fadd.v2f64(double %vec.phi406, <2 x double> %246)
  %259 = call double @llvm.vector.reduce.fadd.v2f64(double %258, <2 x double> %247)
  %260 = call double @llvm.vector.reduce.fadd.v2f64(double %259, <2 x double> %248)
  %261 = call double @llvm.vector.reduce.fadd.v2f64(double %260, <2 x double> %249)
  %index.next = add nuw nsw i64 %index, 8
  %262 = icmp eq i64 %index.next, %n.vec
  br i1 %262, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre, %n.vec
  br i1 %cmp.n, label %.loopexit424, label %.split.split.split.split.preheader169

263:                                              ; preds = %437, %193
  %264 = phi i64 [ 0, %193 ], [ %265, %437 ]
  %265 = add nuw nsw i64 %264, 1
  %266 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 16
  %268 = load i64, ptr %267, align 8, !range !41
  %.not246 = icmp samesign ult i64 %264, %268
  br i1 %.not246, label %269, label %odessy.chk3, !prof !43

269:                                              ; preds = %263
  %270 = getelementptr inbounds nuw i8, ptr %266, i64 32
  %271 = getelementptr inbounds nuw [8 x i8], ptr %270, i64 %264
  %272 = load ptr, ptr %271, align 8
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 16
  %274 = load i64, ptr %273, align 8, !range !41
  %.not41 = icmp eq i64 %274, 0
  br i1 %.not41, label %odessy.chk4, label %275, !prof !42

275:                                              ; preds = %269
  %276 = getelementptr inbounds nuw i8, ptr %272, i64 32
  %277 = load double, ptr %276, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch4)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch4, i64 33, ptr null) #2
  %278 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %279 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %278) #15
  store ptr %278, ptr @"$s5nbody2pxSaySdGvp", align 8
  br i1 %279, label %282, label %280, !prof !43

280:                                              ; preds = %275
  %281 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %278)
  br label %282

282:                                              ; preds = %280, %275
  %283 = phi ptr [ %281, %280 ], [ %278, %275 ]
  %284 = getelementptr inbounds nuw i8, ptr %283, i64 16
  %285 = load i64, ptr %284, align 8, !range !41
  %.not247 = icmp samesign ult i64 %264, %285
  br i1 %.not247, label %286, label %odessy.chk5, !prof !43

286:                                              ; preds = %282
  %287 = getelementptr inbounds nuw i8, ptr %283, i64 32
  %288 = getelementptr inbounds nuw [8 x i8], ptr %287, i64 %264
  store double %277, ptr %288, align 8
  store ptr %283, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch4) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch4)
  %289 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %290 = getelementptr inbounds nuw i8, ptr %289, i64 16
  %291 = load i64, ptr %290, align 8, !range !41
  %.not248 = icmp samesign ult i64 %264, %291
  br i1 %.not248, label %292, label %odessy.chk6, !prof !43

292:                                              ; preds = %286
  %293 = getelementptr inbounds nuw i8, ptr %289, i64 32
  %294 = getelementptr inbounds nuw [8 x i8], ptr %293, i64 %264
  %295 = load ptr, ptr %294, align 8
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 16
  %297 = load i64, ptr %296, align 8, !range !41
  %298 = icmp samesign ugt i64 %297, 1
  br i1 %298, label %299, label %odessy.chk7, !prof !43

299:                                              ; preds = %292
  %300 = getelementptr inbounds nuw i8, ptr %295, i64 40
  %301 = load double, ptr %300, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch11)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch11, i64 33, ptr null) #2
  %302 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %303 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %302) #15
  store ptr %302, ptr @"$s5nbody2pySaySdGvp", align 8
  br i1 %303, label %306, label %304, !prof !43

304:                                              ; preds = %299
  %305 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %302)
  br label %306

306:                                              ; preds = %304, %299
  %307 = phi ptr [ %305, %304 ], [ %302, %299 ]
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 16
  %309 = load i64, ptr %308, align 8, !range !41
  %.not249 = icmp samesign ult i64 %264, %309
  br i1 %.not249, label %310, label %odessy.chk8, !prof !43

310:                                              ; preds = %306
  %311 = getelementptr inbounds nuw i8, ptr %307, i64 32
  %312 = getelementptr inbounds nuw [8 x i8], ptr %311, i64 %264
  store double %301, ptr %312, align 8
  store ptr %307, ptr @"$s5nbody2pySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch11) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch11)
  %313 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 16
  %315 = load i64, ptr %314, align 8, !range !41
  %.not250 = icmp samesign ult i64 %264, %315
  br i1 %.not250, label %316, label %odessy.chk9, !prof !43

316:                                              ; preds = %310
  %317 = getelementptr inbounds nuw i8, ptr %313, i64 32
  %318 = getelementptr inbounds nuw [8 x i8], ptr %317, i64 %264
  %319 = load ptr, ptr %318, align 8
  %320 = getelementptr inbounds nuw i8, ptr %319, i64 16
  %321 = load i64, ptr %320, align 8, !range !41
  %322 = icmp samesign ugt i64 %321, 2
  br i1 %322, label %323, label %odessy.chk10, !prof !43

323:                                              ; preds = %316
  %324 = getelementptr inbounds nuw i8, ptr %319, i64 48
  %325 = load double, ptr %324, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch18)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch18, i64 33, ptr null) #2
  %326 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %327 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %326) #15
  store ptr %326, ptr @"$s5nbody2pzSaySdGvp", align 8
  br i1 %327, label %330, label %328, !prof !43

328:                                              ; preds = %323
  %329 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %326)
  br label %330

330:                                              ; preds = %328, %323
  %331 = phi ptr [ %329, %328 ], [ %326, %323 ]
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 16
  %333 = load i64, ptr %332, align 8, !range !41
  %.not251 = icmp samesign ult i64 %264, %333
  br i1 %.not251, label %334, label %odessy.chk11, !prof !43

334:                                              ; preds = %330
  %335 = getelementptr inbounds nuw i8, ptr %331, i64 32
  %336 = getelementptr inbounds nuw [8 x i8], ptr %335, i64 %264
  store double %325, ptr %336, align 8
  store ptr %331, ptr @"$s5nbody2pzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch18) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch18)
  %337 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %338 = getelementptr inbounds nuw i8, ptr %337, i64 16
  %339 = load i64, ptr %338, align 8, !range !41
  %.not252 = icmp samesign ult i64 %264, %339
  br i1 %.not252, label %340, label %odessy.chk12, !prof !43

340:                                              ; preds = %334
  %341 = getelementptr inbounds nuw i8, ptr %337, i64 32
  %342 = getelementptr inbounds nuw [8 x i8], ptr %341, i64 %264
  %343 = load ptr, ptr %342, align 8
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 16
  %345 = load i64, ptr %344, align 8, !range !41
  %346 = icmp samesign ugt i64 %345, 3
  br i1 %346, label %347, label %odessy.chk13, !prof !43

347:                                              ; preds = %340
  %348 = getelementptr inbounds nuw i8, ptr %343, i64 56
  %349 = load double, ptr %348, align 8
  %350 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch25)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch25, i64 33, ptr null) #2
  %351 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %352 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %351) #15
  store ptr %351, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %352, label %355, label %353, !prof !43

353:                                              ; preds = %347
  %354 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %351)
  br label %355

355:                                              ; preds = %353, %347
  %356 = phi ptr [ %354, %353 ], [ %351, %347 ]
  %357 = getelementptr inbounds nuw i8, ptr %356, i64 16
  %358 = load i64, ptr %357, align 8, !range !41
  %.not253 = icmp samesign ult i64 %264, %358
  br i1 %.not253, label %359, label %odessy.chk14, !prof !43

359:                                              ; preds = %355
  %360 = fmul double %349, %350
  %361 = getelementptr inbounds nuw i8, ptr %356, i64 32
  %362 = getelementptr inbounds nuw [8 x i8], ptr %361, i64 %264
  store double %360, ptr %362, align 8
  store ptr %356, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch25) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch25)
  %363 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %364 = getelementptr inbounds nuw i8, ptr %363, i64 16
  %365 = load i64, ptr %364, align 8, !range !41
  %.not254 = icmp samesign ult i64 %264, %365
  br i1 %.not254, label %366, label %odessy.chk15, !prof !43

366:                                              ; preds = %359
  %367 = getelementptr inbounds nuw i8, ptr %363, i64 32
  %368 = getelementptr inbounds nuw [8 x i8], ptr %367, i64 %264
  %369 = load ptr, ptr %368, align 8
  %370 = getelementptr inbounds nuw i8, ptr %369, i64 16
  %371 = load i64, ptr %370, align 8, !range !41
  %372 = icmp samesign ugt i64 %371, 4
  br i1 %372, label %373, label %odessy.chk16, !prof !43

373:                                              ; preds = %366
  %374 = getelementptr inbounds nuw i8, ptr %369, i64 64
  %375 = load double, ptr %374, align 8
  %376 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch32)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch32, i64 33, ptr null) #2
  %377 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %378 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %377) #15
  store ptr %377, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %378, label %381, label %379, !prof !43

379:                                              ; preds = %373
  %380 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %377)
  br label %381

381:                                              ; preds = %379, %373
  %382 = phi ptr [ %380, %379 ], [ %377, %373 ]
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 16
  %384 = load i64, ptr %383, align 8, !range !41
  %.not255 = icmp samesign ult i64 %264, %384
  br i1 %.not255, label %385, label %odessy.chk17, !prof !43

385:                                              ; preds = %381
  %386 = fmul double %375, %376
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 32
  %388 = getelementptr inbounds nuw [8 x i8], ptr %387, i64 %264
  store double %386, ptr %388, align 8
  store ptr %382, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch32) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch32)
  %389 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %390 = getelementptr inbounds nuw i8, ptr %389, i64 16
  %391 = load i64, ptr %390, align 8, !range !41
  %.not256 = icmp samesign ult i64 %264, %391
  br i1 %.not256, label %392, label %odessy.chk18, !prof !43

392:                                              ; preds = %385
  %393 = getelementptr inbounds nuw i8, ptr %389, i64 32
  %394 = getelementptr inbounds nuw [8 x i8], ptr %393, i64 %264
  %395 = load ptr, ptr %394, align 8
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 16
  %397 = load i64, ptr %396, align 8, !range !41
  %398 = icmp samesign ugt i64 %397, 5
  br i1 %398, label %399, label %odessy.chk19, !prof !43

399:                                              ; preds = %392
  %400 = getelementptr inbounds nuw i8, ptr %395, i64 72
  %401 = load double, ptr %400, align 8
  %402 = load double, ptr @"$s5nbody3dpySdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch39)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch39, i64 33, ptr null) #2
  %403 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %404 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %403) #15
  store ptr %403, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %404, label %407, label %405, !prof !43

405:                                              ; preds = %399
  %406 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %403)
  br label %407

407:                                              ; preds = %405, %399
  %408 = phi ptr [ %406, %405 ], [ %403, %399 ]
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 16
  %410 = load i64, ptr %409, align 8, !range !41
  %.not257 = icmp samesign ult i64 %264, %410
  br i1 %.not257, label %411, label %odessy.chk20, !prof !43

411:                                              ; preds = %407
  %412 = fmul double %401, %402
  %413 = getelementptr inbounds nuw i8, ptr %408, i64 32
  %414 = getelementptr inbounds nuw [8 x i8], ptr %413, i64 %264
  store double %412, ptr %414, align 8
  store ptr %408, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch39) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch39)
  %415 = load ptr, ptr @"$s5nbody6bodiesSaySaySdGGvp", align 8
  %416 = getelementptr inbounds nuw i8, ptr %415, i64 16
  %417 = load i64, ptr %416, align 8, !range !41
  %.not258 = icmp samesign ult i64 %264, %417
  br i1 %.not258, label %418, label %odessy.chk21, !prof !43

418:                                              ; preds = %411
  %419 = getelementptr inbounds nuw i8, ptr %415, i64 32
  %420 = getelementptr inbounds nuw [8 x i8], ptr %419, i64 %264
  %421 = load ptr, ptr %420, align 8
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 16
  %423 = load i64, ptr %422, align 8, !range !41
  %424 = icmp samesign ugt i64 %423, 6
  br i1 %424, label %425, label %odessy.chk22, !prof !43

425:                                              ; preds = %418
  %426 = getelementptr inbounds nuw i8, ptr %421, i64 80
  %427 = load double, ptr %426, align 8
  %428 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch46)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch46, i64 33, ptr null) #2
  %429 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %430 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %429) #15
  store ptr %429, ptr @"$s5nbody4massSaySdGvp", align 8
  br i1 %430, label %433, label %431, !prof !43

431:                                              ; preds = %425
  %432 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %429)
  br label %433

433:                                              ; preds = %431, %425
  %434 = phi ptr [ %432, %431 ], [ %429, %425 ]
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 16
  %436 = load i64, ptr %435, align 8, !range !41
  %.not259 = icmp samesign ult i64 %264, %436
  br i1 %.not259, label %437, label %odessy.chk23, !prof !43

437:                                              ; preds = %433
  %438 = fmul double %427, %428
  %439 = getelementptr inbounds nuw i8, ptr %434, i64 32
  %440 = getelementptr inbounds nuw [8 x i8], ptr %439, i64 %264
  store double %438, ptr %440, align 8
  store ptr %434, ptr @"$s5nbody4massSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch46) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch46)
  %441 = icmp eq i64 %265, %188
  br i1 %441, label %.loopexit319, label %263

442:                                              ; preds = %.loopexit424, %197, %.thread370
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch64)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody3mpxSdvp", ptr nonnull %access-scratch64, i64 0, ptr null) #2
  %443 = load double, ptr @"$s5nbody3mpxSdvp", align 8
  %444 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch65)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch65, i64 33, ptr null) #2
  %445 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %446 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %445) #15
  store ptr %445, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %446, label %449, label %447, !prof !43

447:                                              ; preds = %442
  %448 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %445)
  br label %449

449:                                              ; preds = %447, %442
  %450 = phi ptr [ %448, %447 ], [ %445, %442 ]
  %451 = getelementptr inbounds nuw i8, ptr %450, i64 16
  %452 = load i64, ptr %451, align 8, !range !41
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %odessy.chk29, label %454, !prof !42

454:                                              ; preds = %449
  %455 = fneg double %443
  %456 = fdiv double %455, %444
  %457 = getelementptr inbounds nuw i8, ptr %450, i64 32
  store double %456, ptr %457, align 8
  store ptr %450, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch65) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch65)
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch68)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody3mpySdvp", ptr nonnull %access-scratch68, i64 0, ptr null) #2
  %458 = load double, ptr @"$s5nbody3mpySdvp", align 8
  %459 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch69)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch69, i64 33, ptr null) #2
  %460 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %461 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %460) #15
  store ptr %460, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %461, label %464, label %462, !prof !43

462:                                              ; preds = %454
  %463 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %460)
  br label %464

464:                                              ; preds = %462, %454
  %465 = phi ptr [ %463, %462 ], [ %460, %454 ]
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 16
  %467 = load i64, ptr %466, align 8, !range !41
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %odessy.chk30, label %469, !prof !42

469:                                              ; preds = %464
  %470 = fneg double %458
  %471 = fdiv double %470, %459
  %472 = getelementptr inbounds nuw i8, ptr %465, i64 32
  store double %471, ptr %472, align 8
  store ptr %465, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch69) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch69)
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch72)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody3mpzSdvp", ptr nonnull %access-scratch72, i64 0, ptr null) #2
  %473 = load double, ptr @"$s5nbody3mpzSdvp", align 8
  %474 = load double, ptr @"$s5nbody5solarSdvp", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch73)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch73, i64 33, ptr null) #2
  %475 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %476 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %475) #15
  store ptr %475, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %476, label %479, label %477, !prof !43

477:                                              ; preds = %469
  %478 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %475)
  br label %479

479:                                              ; preds = %477, %469
  %480 = phi ptr [ %478, %477 ], [ %475, %469 ]
  %481 = getelementptr inbounds nuw i8, ptr %480, i64 16
  %482 = load i64, ptr %481, align 8, !range !41
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %odessy.chk31, label %484, !prof !42

484:                                              ; preds = %479
  %485 = fneg double %473
  %486 = fdiv double %485, %474
  %487 = getelementptr inbounds nuw i8, ptr %480, i64 32
  store double %486, ptr %487, align 8
  store ptr %480, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch73) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch73)
  store double 1.000000e-02, ptr @"$s5nbody2dtSdvp", align 8
  %488 = load i64, ptr @"$s5nbody5stepsSivp", align 8
  %489 = icmp slt i64 %488, 0
  br i1 %489, label %odessy.chk32, label %490, !prof !42

490:                                              ; preds = %484
  %491 = icmp eq i64 %488, 0
  br i1 %491, label %.loopexit318, label %.preheader317.preheader

.split.split.split.split:                         ; preds = %.split.split.split.split.preheader169, %.split.split.split.split
  %492 = phi i64 [ %496, %.split.split.split.split ], [ %.ph, %.split.split.split.split.preheader169 ]
  %493 = phi double [ %502, %.split.split.split.split ], [ %.ph170, %.split.split.split.split.preheader169 ]
  %494 = phi double [ %506, %.split.split.split.split ], [ %.ph171, %.split.split.split.split.preheader169 ]
  %495 = phi double [ %510, %.split.split.split.split ], [ %.ph172, %.split.split.split.split.preheader169 ]
  %496 = add nuw nsw i64 %492, 1
  %497 = getelementptr inbounds nuw [8 x i8], ptr %203, i64 %492
  %498 = load double, ptr %497, align 8
  %499 = getelementptr inbounds nuw [8 x i8], ptr %216, i64 %492
  %500 = load double, ptr %499, align 8
  %501 = fmul double %498, %500
  %502 = fadd double %493, %501
  %503 = getelementptr inbounds nuw [8 x i8], ptr %205, i64 %492
  %504 = load double, ptr %503, align 8
  %505 = fmul double %500, %504
  %506 = fadd double %494, %505
  %507 = getelementptr inbounds nuw [8 x i8], ptr %207, i64 %492
  %508 = load double, ptr %507, align 8
  %509 = fmul double %500, %508
  %510 = fadd double %495, %509
  %511 = icmp eq i64 %496, %.pre
  br i1 %511, label %.loopexit424, label %.split.split.split.split, !llvm.loop !50

.loopexit424:                                     ; preds = %.split.split.split.split, %middle.block
  %.lcssa404 = phi double [ %253, %middle.block ], [ %502, %.split.split.split.split ]
  %.lcssa403 = phi double [ %257, %middle.block ], [ %506, %.split.split.split.split ]
  %.lcssa402 = phi double [ %261, %middle.block ], [ %510, %.split.split.split.split ]
  store double %.lcssa402, ptr @"$s5nbody3mpzSdvp", align 8
  store double %.lcssa403, ptr @"$s5nbody3mpySdvp", align 8
  store double %.lcssa404, ptr @"$s5nbody3mpxSdvp", align 8
  br label %442

.preheader317.preheader:                          ; preds = %490, %.thread308
  %512 = phi i64 [ %513, %.thread308 ], [ 0, %490 ]
  %513 = add nuw nsw i64 %512, 1
  %514 = load i64, ptr @"$s5nbody1nSivp", align 8
  %515 = icmp slt i64 %514, 0
  br i1 %515, label %odessy.chk33, label %516, !prof !42

516:                                              ; preds = %.preheader317.preheader
  %517 = icmp eq i64 %514, 0
  br i1 %517, label %.thread308, label %.preheader316.preheader

.loopexit318:                                     ; preds = %.thread308, %490
  store double 0.000000e+00, ptr @"$s5nbody1eSdvp", align 8
  %518 = load i64, ptr @"$s5nbody1nSivp", align 8
  %519 = icmp slt i64 %518, 0
  br i1 %519, label %odessy.chk60, label %520, !prof !42

520:                                              ; preds = %.loopexit318
  %521 = icmp eq i64 %518, 0
  br i1 %521, label %.loopexit314, label %522

522:                                              ; preds = %520
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch142)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch142, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch143)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody1eSdvp", ptr nonnull %access-scratch143, i64 1, ptr null) #2
  %.pre85 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  br label %797

523:                                              ; preds = %.loopexit315
  %.pr = load i64, ptr @"$s5nbody1nSivp", align 8
  %524 = icmp slt i64 %.pr, 0
  br i1 %524, label %odessy.chk53, label %525, !prof !51

525:                                              ; preds = %523
  %526 = icmp eq i64 %.pr, 0
  br i1 %526, label %.thread308, label %.preheader

.preheader316.preheader:                          ; preds = %516, %.loopexit315
  %527 = phi i64 [ %528, %.loopexit315 ], [ 0, %516 ]
  %528 = add nuw nsw i64 %527, 1
  %529 = load i64, ptr @"$s5nbody1nSivp", align 8
  %.not368 = icmp sgt i64 %529, %527
  br i1 %.not368, label %530, label %odessy.chk34, !prof !43

530:                                              ; preds = %.preheader316.preheader
  %531 = icmp eq i64 %528, %529
  br i1 %531, label %.loopexit315, label %532

532:                                              ; preds = %530
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch76)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch76, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch77)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch77, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch78)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody4massSaySdGvp", ptr nonnull %access-scratch78, i64 0, ptr null) #2
  br label %534

.loopexit315:                                     ; preds = %704, %530
  %533 = icmp eq i64 %528, %514
  br i1 %533, label %523, label %.preheader316.preheader

534:                                              ; preds = %704, %532
  %535 = phi i64 [ %528, %532 ], [ %536, %704 ]
  %536 = add nuw i64 %535, 1
  %537 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 16
  %539 = load i64, ptr %538, align 8, !range !41
  %.not267 = icmp samesign ult i64 %527, %539
  br i1 %.not267, label %540, label %odessy.chk35, !prof !43

540:                                              ; preds = %534
  %.not268 = icmp samesign ult i64 %535, %539
  br i1 %.not268, label %541, label %odessy.chk36, !prof !43

541:                                              ; preds = %540
  %542 = getelementptr inbounds nuw i8, ptr %537, i64 32
  %543 = getelementptr inbounds nuw [8 x i8], ptr %542, i64 %527
  %544 = load double, ptr %543, align 8
  %545 = getelementptr inbounds nuw [8 x i8], ptr %542, i64 %535
  %546 = load double, ptr %545, align 8
  %547 = fsub double %544, %546
  %548 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 16
  %550 = load i64, ptr %549, align 8, !range !41
  %.not269 = icmp samesign ult i64 %527, %550
  br i1 %.not269, label %551, label %odessy.chk37, !prof !43

551:                                              ; preds = %541
  %.not270 = icmp samesign ult i64 %535, %550
  br i1 %.not270, label %552, label %odessy.chk38, !prof !43

552:                                              ; preds = %551
  %553 = getelementptr inbounds nuw i8, ptr %548, i64 32
  %554 = getelementptr inbounds nuw [8 x i8], ptr %553, i64 %527
  %555 = load double, ptr %554, align 8
  %556 = getelementptr inbounds nuw [8 x i8], ptr %553, i64 %535
  %557 = load double, ptr %556, align 8
  %558 = fsub double %555, %557
  %559 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %560 = getelementptr inbounds nuw i8, ptr %559, i64 16
  %561 = load i64, ptr %560, align 8, !range !41
  %.not271 = icmp samesign ult i64 %527, %561
  br i1 %.not271, label %562, label %odessy.chk39, !prof !43

562:                                              ; preds = %552
  %.not272 = icmp samesign ult i64 %535, %561
  br i1 %.not272, label %563, label %odessy.chk40, !prof !43

563:                                              ; preds = %562
  %564 = getelementptr inbounds nuw i8, ptr %559, i64 32
  %565 = getelementptr inbounds nuw [8 x i8], ptr %564, i64 %527
  %566 = load double, ptr %565, align 8
  %567 = getelementptr inbounds nuw [8 x i8], ptr %564, i64 %535
  %568 = load double, ptr %567, align 8
  %569 = fsub double %566, %568
  %570 = fmul double %547, %547
  %571 = fmul double %558, %558
  %572 = fadd double %570, %571
  %573 = fmul double %569, %569
  %574 = fadd double %572, %573
  %575 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %576 = call double @llvm.sqrt.f64(double %574)
  %577 = fmul double %574, %576
  %578 = fdiv double %575, %577
  %579 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %580 = getelementptr inbounds nuw i8, ptr %579, i64 16
  %581 = load i64, ptr %580, align 8, !range !41
  %.not273 = icmp samesign ult i64 %535, %581
  br i1 %.not273, label %582, label %odessy.chk41, !prof !43

582:                                              ; preds = %563
  %583 = getelementptr inbounds nuw i8, ptr %579, i64 32
  %584 = getelementptr inbounds nuw [8 x i8], ptr %583, i64 %535
  %585 = load double, ptr %584, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch90)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch90, i64 33, ptr null) #2
  %586 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %587 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %586) #15
  store ptr %586, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %587, label %590, label %588, !prof !43

588:                                              ; preds = %582
  %589 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %586)
  br label %590

590:                                              ; preds = %588, %582
  %591 = phi ptr [ %589, %588 ], [ %586, %582 ]
  %592 = getelementptr inbounds nuw i8, ptr %591, i64 16
  %593 = load i64, ptr %592, align 8, !range !41
  %.not274 = icmp samesign ult i64 %527, %593
  br i1 %.not274, label %594, label %odessy.chk42, !prof !43

594:                                              ; preds = %590
  %595 = fmul double %547, %585
  %596 = fmul double %578, %595
  %597 = getelementptr inbounds nuw i8, ptr %591, i64 32
  %598 = getelementptr inbounds nuw [8 x i8], ptr %597, i64 %527
  %599 = load double, ptr %598, align 8
  %600 = fsub double %599, %596
  store double %600, ptr %598, align 8
  store ptr %591, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch90) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch90)
  %601 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %602 = getelementptr inbounds nuw i8, ptr %601, i64 16
  %603 = load i64, ptr %602, align 8, !range !41
  %.not275 = icmp samesign ult i64 %535, %603
  br i1 %.not275, label %604, label %odessy.chk43, !prof !43

604:                                              ; preds = %594
  %605 = getelementptr inbounds nuw i8, ptr %601, i64 32
  %606 = getelementptr inbounds nuw [8 x i8], ptr %605, i64 %535
  %607 = load double, ptr %606, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch96)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch96, i64 33, ptr null) #2
  %608 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %609 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %608) #15
  store ptr %608, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %609, label %612, label %610, !prof !43

610:                                              ; preds = %604
  %611 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %608)
  br label %612

612:                                              ; preds = %610, %604
  %613 = phi ptr [ %611, %610 ], [ %608, %604 ]
  %614 = getelementptr inbounds nuw i8, ptr %613, i64 16
  %615 = load i64, ptr %614, align 8, !range !41
  %.not276 = icmp samesign ult i64 %527, %615
  br i1 %.not276, label %616, label %odessy.chk44, !prof !43

616:                                              ; preds = %612
  %617 = fmul double %558, %607
  %618 = fmul double %578, %617
  %619 = getelementptr inbounds nuw i8, ptr %613, i64 32
  %620 = getelementptr inbounds nuw [8 x i8], ptr %619, i64 %527
  %621 = load double, ptr %620, align 8
  %622 = fsub double %621, %618
  store double %622, ptr %620, align 8
  store ptr %613, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch96) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch96)
  %623 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %624 = getelementptr inbounds nuw i8, ptr %623, i64 16
  %625 = load i64, ptr %624, align 8, !range !41
  %.not277 = icmp samesign ult i64 %535, %625
  br i1 %.not277, label %626, label %odessy.chk45, !prof !43

626:                                              ; preds = %616
  %627 = getelementptr inbounds nuw i8, ptr %623, i64 32
  %628 = getelementptr inbounds nuw [8 x i8], ptr %627, i64 %535
  %629 = load double, ptr %628, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch102)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch102, i64 33, ptr null) #2
  %630 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %631 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %630) #15
  store ptr %630, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %631, label %634, label %632, !prof !43

632:                                              ; preds = %626
  %633 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %630)
  br label %634

634:                                              ; preds = %632, %626
  %635 = phi ptr [ %633, %632 ], [ %630, %626 ]
  %636 = getelementptr inbounds nuw i8, ptr %635, i64 16
  %637 = load i64, ptr %636, align 8, !range !41
  %.not278 = icmp samesign ult i64 %527, %637
  br i1 %.not278, label %638, label %odessy.chk46, !prof !43

638:                                              ; preds = %634
  %639 = fmul double %569, %629
  %640 = fmul double %578, %639
  %641 = getelementptr inbounds nuw i8, ptr %635, i64 32
  %642 = getelementptr inbounds nuw [8 x i8], ptr %641, i64 %527
  %643 = load double, ptr %642, align 8
  %644 = fsub double %643, %640
  store double %644, ptr %642, align 8
  store ptr %635, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch102) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch102)
  %645 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %646 = getelementptr inbounds nuw i8, ptr %645, i64 16
  %647 = load i64, ptr %646, align 8, !range !41
  %.not279 = icmp samesign ult i64 %527, %647
  br i1 %.not279, label %648, label %odessy.chk47, !prof !43

648:                                              ; preds = %638
  %649 = getelementptr inbounds nuw i8, ptr %645, i64 32
  %650 = getelementptr inbounds nuw [8 x i8], ptr %649, i64 %527
  %651 = load double, ptr %650, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch108)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vxSaySdGvp", ptr nonnull %access-scratch108, i64 33, ptr null) #2
  %652 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %653 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %652) #15
  store ptr %652, ptr @"$s5nbody2vxSaySdGvp", align 8
  br i1 %653, label %656, label %654, !prof !43

654:                                              ; preds = %648
  %655 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %652)
  br label %656

656:                                              ; preds = %654, %648
  %657 = phi ptr [ %655, %654 ], [ %652, %648 ]
  %658 = getelementptr inbounds nuw i8, ptr %657, i64 16
  %659 = load i64, ptr %658, align 8, !range !41
  %.not280 = icmp samesign ult i64 %535, %659
  br i1 %.not280, label %660, label %odessy.chk48, !prof !43

660:                                              ; preds = %656
  %661 = fmul double %547, %651
  %662 = fmul double %578, %661
  %663 = getelementptr inbounds nuw i8, ptr %657, i64 32
  %664 = getelementptr inbounds nuw [8 x i8], ptr %663, i64 %535
  %665 = load double, ptr %664, align 8
  %666 = fadd double %662, %665
  store double %666, ptr %664, align 8
  store ptr %657, ptr @"$s5nbody2vxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch108) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch108)
  %667 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %668 = getelementptr inbounds nuw i8, ptr %667, i64 16
  %669 = load i64, ptr %668, align 8, !range !41
  %.not281 = icmp samesign ult i64 %527, %669
  br i1 %.not281, label %670, label %odessy.chk49, !prof !43

670:                                              ; preds = %660
  %671 = getelementptr inbounds nuw i8, ptr %667, i64 32
  %672 = getelementptr inbounds nuw [8 x i8], ptr %671, i64 %527
  %673 = load double, ptr %672, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch114)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vySaySdGvp", ptr nonnull %access-scratch114, i64 33, ptr null) #2
  %674 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %675 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %674) #15
  store ptr %674, ptr @"$s5nbody2vySaySdGvp", align 8
  br i1 %675, label %678, label %676, !prof !43

676:                                              ; preds = %670
  %677 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %674)
  br label %678

678:                                              ; preds = %676, %670
  %679 = phi ptr [ %677, %676 ], [ %674, %670 ]
  %680 = getelementptr inbounds nuw i8, ptr %679, i64 16
  %681 = load i64, ptr %680, align 8, !range !41
  %.not282 = icmp samesign ult i64 %535, %681
  br i1 %.not282, label %682, label %odessy.chk50, !prof !43

682:                                              ; preds = %678
  %683 = fmul double %558, %673
  %684 = fmul double %578, %683
  %685 = getelementptr inbounds nuw i8, ptr %679, i64 32
  %686 = getelementptr inbounds nuw [8 x i8], ptr %685, i64 %535
  %687 = load double, ptr %686, align 8
  %688 = fadd double %684, %687
  store double %688, ptr %686, align 8
  store ptr %679, ptr @"$s5nbody2vySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch114) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch114)
  %689 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %690 = getelementptr inbounds nuw i8, ptr %689, i64 16
  %691 = load i64, ptr %690, align 8, !range !41
  %.not283 = icmp samesign ult i64 %527, %691
  br i1 %.not283, label %692, label %odessy.chk51, !prof !43

692:                                              ; preds = %682
  %693 = getelementptr inbounds nuw i8, ptr %689, i64 32
  %694 = getelementptr inbounds nuw [8 x i8], ptr %693, i64 %527
  %695 = load double, ptr %694, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch120)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2vzSaySdGvp", ptr nonnull %access-scratch120, i64 33, ptr null) #2
  %696 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %697 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %696) #15
  store ptr %696, ptr @"$s5nbody2vzSaySdGvp", align 8
  br i1 %697, label %700, label %698, !prof !43

698:                                              ; preds = %692
  %699 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %696)
  br label %700

700:                                              ; preds = %698, %692
  %701 = phi ptr [ %699, %698 ], [ %696, %692 ]
  %702 = getelementptr inbounds nuw i8, ptr %701, i64 16
  %703 = load i64, ptr %702, align 8, !range !41
  %.not284 = icmp samesign ult i64 %535, %703
  br i1 %.not284, label %704, label %odessy.chk52, !prof !43

704:                                              ; preds = %700
  %705 = fmul double %569, %695
  %706 = fmul double %578, %705
  %707 = getelementptr inbounds nuw i8, ptr %701, i64 32
  %708 = getelementptr inbounds nuw [8 x i8], ptr %707, i64 %535
  %709 = load double, ptr %708, align 8
  %710 = fadd double %706, %709
  store double %710, ptr %708, align 8
  store ptr %701, ptr @"$s5nbody2vzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch120) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch120)
  %711 = icmp eq i64 %536, %529
  br i1 %711, label %.loopexit315, label %534

.thread308:                                       ; preds = %775, %525, %516
  %712 = icmp eq i64 %513, %488
  br i1 %712, label %.loopexit318, label %.preheader317.preheader

.preheader:                                       ; preds = %525, %775
  %713 = phi i64 [ %714, %775 ], [ 0, %525 ]
  %714 = add nuw nsw i64 %713, 1
  %715 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %716 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %717 = getelementptr inbounds nuw i8, ptr %716, i64 16
  %718 = load i64, ptr %717, align 8, !range !41
  %.not285 = icmp samesign ult i64 %713, %718
  br i1 %.not285, label %719, label %odessy.chk54, !prof !43

719:                                              ; preds = %.preheader
  %720 = getelementptr inbounds nuw i8, ptr %716, i64 32
  %721 = getelementptr inbounds nuw [8 x i8], ptr %720, i64 %713
  %722 = load double, ptr %721, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch126)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pxSaySdGvp", ptr nonnull %access-scratch126, i64 33, ptr null) #2
  %723 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %724 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %723) #15
  store ptr %723, ptr @"$s5nbody2pxSaySdGvp", align 8
  br i1 %724, label %727, label %725, !prof !43

725:                                              ; preds = %719
  %726 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %723)
  br label %727

727:                                              ; preds = %725, %719
  %728 = phi ptr [ %726, %725 ], [ %723, %719 ]
  %729 = getelementptr inbounds nuw i8, ptr %728, i64 16
  %730 = load i64, ptr %729, align 8, !range !41
  %.not286 = icmp samesign ult i64 %713, %730
  br i1 %.not286, label %731, label %odessy.chk55, !prof !43

731:                                              ; preds = %727
  %732 = fmul double %715, %722
  %733 = getelementptr inbounds nuw i8, ptr %728, i64 32
  %734 = getelementptr inbounds nuw [8 x i8], ptr %733, i64 %713
  %735 = load double, ptr %734, align 8
  %736 = fadd double %732, %735
  store double %736, ptr %734, align 8
  store ptr %728, ptr @"$s5nbody2pxSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch126) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch126)
  %737 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %738 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %739 = getelementptr inbounds nuw i8, ptr %738, i64 16
  %740 = load i64, ptr %739, align 8, !range !41
  %.not287 = icmp samesign ult i64 %713, %740
  br i1 %.not287, label %741, label %odessy.chk56, !prof !43

741:                                              ; preds = %731
  %742 = getelementptr inbounds nuw i8, ptr %738, i64 32
  %743 = getelementptr inbounds nuw [8 x i8], ptr %742, i64 %713
  %744 = load double, ptr %743, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch132)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch132, i64 33, ptr null) #2
  %745 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %746 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %745) #15
  store ptr %745, ptr @"$s5nbody2pySaySdGvp", align 8
  br i1 %746, label %749, label %747, !prof !43

747:                                              ; preds = %741
  %748 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %745)
  br label %749

749:                                              ; preds = %747, %741
  %750 = phi ptr [ %748, %747 ], [ %745, %741 ]
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 16
  %752 = load i64, ptr %751, align 8, !range !41
  %.not288 = icmp samesign ult i64 %713, %752
  br i1 %.not288, label %753, label %odessy.chk57, !prof !43

753:                                              ; preds = %749
  %754 = fmul double %737, %744
  %755 = getelementptr inbounds nuw i8, ptr %750, i64 32
  %756 = getelementptr inbounds nuw [8 x i8], ptr %755, i64 %713
  %757 = load double, ptr %756, align 8
  %758 = fadd double %754, %757
  store double %758, ptr %756, align 8
  store ptr %750, ptr @"$s5nbody2pySaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch132) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch132)
  %759 = load double, ptr @"$s5nbody2dtSdvp", align 8
  %760 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %761 = getelementptr inbounds nuw i8, ptr %760, i64 16
  %762 = load i64, ptr %761, align 8, !range !41
  %.not289 = icmp samesign ult i64 %713, %762
  br i1 %.not289, label %763, label %odessy.chk58, !prof !43

763:                                              ; preds = %753
  %764 = getelementptr inbounds nuw i8, ptr %760, i64 32
  %765 = getelementptr inbounds nuw [8 x i8], ptr %764, i64 %713
  %766 = load double, ptr %765, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch138)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch138, i64 33, ptr null) #2
  %767 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %768 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %767) #15
  store ptr %767, ptr @"$s5nbody2pzSaySdGvp", align 8
  br i1 %768, label %771, label %769, !prof !43

769:                                              ; preds = %763
  %770 = call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %767)
  br label %771

771:                                              ; preds = %769, %763
  %772 = phi ptr [ %770, %769 ], [ %767, %763 ]
  %773 = getelementptr inbounds nuw i8, ptr %772, i64 16
  %774 = load i64, ptr %773, align 8, !range !41
  %.not290 = icmp samesign ult i64 %713, %774
  br i1 %.not290, label %775, label %odessy.chk59, !prof !43

775:                                              ; preds = %771
  %776 = fmul double %759, %766
  %777 = getelementptr inbounds nuw i8, ptr %772, i64 32
  %778 = getelementptr inbounds nuw [8 x i8], ptr %777, i64 %713
  %779 = load double, ptr %778, align 8
  %780 = fadd double %776, %779
  store double %780, ptr %778, align 8
  store ptr %772, ptr @"$s5nbody2pzSaySdGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch138) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %access-scratch138)
  %781 = icmp eq i64 %714, %.pr
  br i1 %781, label %.thread308, label %.preheader

.loopexit314:                                     ; preds = %.loopexit, %520
  %782 = phi double [ 0.000000e+00, %520 ], [ %858, %.loopexit ]
  %783 = call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMR") #16
  %784 = call noalias ptr @swift_allocObject(ptr %783, i64 64, i64 7) #2
  %785 = getelementptr inbounds nuw i8, ptr %784, i64 16
  store <2 x i64> <i64 1, i64 2>, ptr %785, align 8
  %786 = getelementptr inbounds nuw i8, ptr %784, i64 32
  %787 = call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys7CVarArg_pGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys7CVarArg_pGMR") #16
  %788 = call noalias ptr @swift_allocObject(ptr %787, i64 72, i64 7) #2
  %789 = getelementptr inbounds nuw i8, ptr %788, i64 16
  store <2 x i64> <i64 1, i64 2>, ptr %789, align 8
  %790 = getelementptr inbounds nuw i8, ptr %788, i64 32
  %791 = getelementptr inbounds nuw i8, ptr %788, i64 56
  store ptr @"$sSdN", ptr %791, align 8
  %792 = getelementptr inbounds nuw i8, ptr %788, i64 64
  store ptr @"$sSds7CVarArgsWP", ptr %792, align 8
  store double %782, ptr %790, align 8
  %793 = call swiftcc { i64, ptr } @"$sSS10FoundationE6format_S2Sh_s7CVarArg_pdtcfC"(i64 1715023397, ptr nonnull inttoptr (i64 -2017612633061982208 to ptr), ptr %788)
  %794 = extractvalue { i64, ptr } %793, 0
  %795 = extractvalue { i64, ptr } %793, 1
  %796 = getelementptr inbounds nuw i8, ptr %784, i64 56
  store ptr @"$sSSN", ptr %796, align 8
  store i64 %794, ptr %786, align 8
  %._guts170._object._object = getelementptr inbounds nuw i8, ptr %784, i64 40
  store ptr %795, ptr %._guts170._object._object, align 8
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %784, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %784) #2
  ret i32 0

797:                                              ; preds = %.loopexit, %522
  %798 = phi ptr [ %.pre85, %522 ], [ %857, %.loopexit ]
  %799 = phi i64 [ 0, %522 ], [ %801, %.loopexit ]
  %800 = phi double [ 0.000000e+00, %522 ], [ %858, %.loopexit ]
  %801 = add nuw nsw i64 %799, 1
  %802 = getelementptr inbounds nuw i8, ptr %798, i64 16
  %803 = load i64, ptr %802, align 8, !range !41
  %.not292 = icmp samesign ult i64 %799, %803
  br i1 %.not292, label %804, label %odessy.chk61, !prof !43

804:                                              ; preds = %797
  %805 = getelementptr inbounds nuw i8, ptr %798, i64 32
  %806 = getelementptr inbounds nuw [8 x i8], ptr %805, i64 %799
  %807 = load double, ptr %806, align 8
  %808 = fmul double %807, 5.000000e-01
  %809 = load ptr, ptr @"$s5nbody2vxSaySdGvp", align 8
  %810 = getelementptr inbounds nuw i8, ptr %809, i64 16
  %811 = load i64, ptr %810, align 8, !range !41
  %.not293 = icmp samesign ult i64 %799, %811
  br i1 %.not293, label %812, label %odessy.chk62, !prof !43

812:                                              ; preds = %804
  %813 = load ptr, ptr @"$s5nbody2vySaySdGvp", align 8
  %814 = getelementptr inbounds nuw i8, ptr %813, i64 16
  %815 = load i64, ptr %814, align 8, !range !41
  %.not294 = icmp samesign ult i64 %799, %815
  br i1 %.not294, label %816, label %odessy.chk63, !prof !43

816:                                              ; preds = %812
  %817 = load ptr, ptr @"$s5nbody2vzSaySdGvp", align 8
  %818 = getelementptr inbounds nuw i8, ptr %817, i64 16
  %819 = load i64, ptr %818, align 8, !range !41
  %.not295 = icmp samesign ult i64 %799, %819
  br i1 %.not295, label %820, label %odessy.chk64, !prof !43

820:                                              ; preds = %816
  %821 = getelementptr inbounds nuw i8, ptr %809, i64 32
  %822 = getelementptr inbounds nuw [8 x i8], ptr %821, i64 %799
  %823 = load double, ptr %822, align 8
  %824 = fmul double %823, %823
  %825 = getelementptr inbounds nuw i8, ptr %813, i64 32
  %826 = getelementptr inbounds nuw [8 x i8], ptr %825, i64 %799
  %827 = load double, ptr %826, align 8
  %828 = fmul double %827, %827
  %829 = fadd double %824, %828
  %830 = getelementptr inbounds nuw i8, ptr %817, i64 32
  %831 = getelementptr inbounds nuw [8 x i8], ptr %830, i64 %799
  %832 = load double, ptr %831, align 8
  %833 = fmul double %832, %832
  %834 = fadd double %829, %833
  %835 = fmul double %808, %834
  %836 = fadd double %800, %835
  store double %836, ptr @"$s5nbody1eSdvp", align 8
  %837 = load i64, ptr @"$s5nbody1nSivp", align 8
  %.not369 = icmp sgt i64 %837, %799
  br i1 %.not369, label %838, label %odessy.chk65, !prof !43

838:                                              ; preds = %820
  %839 = icmp eq i64 %801, %837
  br i1 %839, label %.loopexit, label %840

840:                                              ; preds = %838
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch152)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pySaySdGvp", ptr nonnull %access-scratch152, i64 0, ptr null) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch153)
  call void @swift_beginAccess(ptr nonnull @"$s5nbody2pzSaySdGvp", ptr nonnull %access-scratch153, i64 0, ptr null) #2
  %841 = load ptr, ptr @"$s5nbody2pxSaySdGvp", align 8
  %842 = getelementptr inbounds nuw i8, ptr %841, i64 16
  %843 = getelementptr inbounds nuw i8, ptr %841, i64 32
  %844 = getelementptr inbounds nuw [8 x i8], ptr %843, i64 %799
  %845 = load ptr, ptr @"$s5nbody2pySaySdGvp", align 8
  %846 = getelementptr inbounds nuw i8, ptr %845, i64 16
  %847 = getelementptr inbounds nuw i8, ptr %845, i64 32
  %848 = getelementptr inbounds nuw [8 x i8], ptr %847, i64 %799
  %849 = load ptr, ptr @"$s5nbody2pzSaySdGvp", align 8
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 16
  %851 = getelementptr inbounds nuw i8, ptr %849, i64 32
  %852 = getelementptr inbounds nuw [8 x i8], ptr %851, i64 %799
  %853 = load ptr, ptr @"$s5nbody4massSaySdGvp", align 8
  %854 = getelementptr inbounds nuw i8, ptr %853, i64 16
  %855 = getelementptr inbounds nuw i8, ptr %853, i64 32
  %856 = getelementptr inbounds nuw [8 x i8], ptr %855, i64 %799
  %.pre363 = load i64, ptr %842, align 8, !range !41
  %.not297 = icmp samesign ult i64 %799, %.pre363
  br i1 %.not297, label %.split63.preheader, label %odessy.chk66, !prof !43

.split63.preheader:                               ; preds = %840
  %"$s5nbody1eSdvp.promoted" = load double, ptr @"$s5nbody1eSdvp", align 8
  br label %.split63

.loopexit:                                        ; preds = %884, %838
  %857 = phi ptr [ %798, %838 ], [ %853, %884 ]
  %858 = phi double [ %836, %838 ], [ %896, %884 ]
  %859 = icmp eq i64 %801, %518
  br i1 %859, label %.loopexit314, label %797

.split63:                                         ; preds = %.split63.preheader, %884
  %860 = phi double [ %896, %884 ], [ %"$s5nbody1eSdvp.promoted", %.split63.preheader ]
  %861 = phi i64 [ %862, %884 ], [ %801, %.split63.preheader ]
  %862 = add nuw i64 %861, 1
  %exitcond.not = icmp eq i64 %861, %.pre363
  br i1 %exitcond.not, label %odessy.chk67, label %863, !prof !42

863:                                              ; preds = %.split63
  %864 = load double, ptr %844, align 8
  %865 = getelementptr inbounds nuw [8 x i8], ptr %843, i64 %861
  %866 = load double, ptr %865, align 8
  %867 = fsub double %864, %866
  %868 = load i64, ptr %846, align 8, !range !41
  %.not299 = icmp samesign ult i64 %799, %868
  br i1 %.not299, label %869, label %odessy.chk68, !prof !43

869:                                              ; preds = %863
  %.not300 = icmp samesign ult i64 %861, %868
  br i1 %.not300, label %870, label %odessy.chk69, !prof !43

870:                                              ; preds = %869
  %871 = load double, ptr %848, align 8
  %872 = getelementptr inbounds nuw [8 x i8], ptr %847, i64 %861
  %873 = load double, ptr %872, align 8
  %874 = fsub double %871, %873
  %875 = load i64, ptr %850, align 8, !range !41
  %.not301 = icmp samesign ult i64 %799, %875
  br i1 %.not301, label %876, label %odessy.chk70, !prof !43

876:                                              ; preds = %870
  %.not302 = icmp samesign ult i64 %861, %875
  br i1 %.not302, label %877, label %odessy.chk71, !prof !43

877:                                              ; preds = %876
  %878 = load double, ptr %852, align 8
  %879 = getelementptr inbounds nuw [8 x i8], ptr %851, i64 %861
  %880 = load double, ptr %879, align 8
  %881 = fsub double %878, %880
  %882 = load i64, ptr %854, align 8, !range !41
  %.not303 = icmp samesign ult i64 %799, %882
  br i1 %.not303, label %883, label %odessy.chk72, !prof !43

883:                                              ; preds = %877
  %.not304 = icmp samesign ult i64 %861, %882
  br i1 %.not304, label %884, label %odessy.chk73, !prof !43

884:                                              ; preds = %883
  %885 = load double, ptr %856, align 8
  %886 = getelementptr inbounds nuw [8 x i8], ptr %855, i64 %861
  %887 = load double, ptr %886, align 8
  %888 = fmul double %885, %887
  %889 = fmul double %867, %867
  %890 = fmul double %874, %874
  %891 = fadd double %889, %890
  %892 = fmul double %881, %881
  %893 = fadd double %891, %892
  %894 = call double @llvm.sqrt.f64(double %893)
  %895 = fdiv double %888, %894
  %896 = fsub double %860, %895
  store double %896, ptr @"$s5nbody1eSdvp", align 8
  %897 = icmp eq i64 %862, %837
  br i1 %897, label %.loopexit, label %.split63

898:                                              ; preds = %49
  tail call void asm sideeffect "", "n"(i32 91) #2
  tail call void @llvm.trap()
  unreachable

899:                                              ; preds = %26
  tail call void asm sideeffect "", "n"(i32 92) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %entry
  tail call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %96
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %183
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %263
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %269
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %282
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %286
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %292
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %306
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %310
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %316
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %330
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %334
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %340
  call void @odessy.chk(i32 13)
  unreachable

odessy.chk14:                                     ; preds = %355
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %359
  call void @odessy.chk(i32 15)
  unreachable

odessy.chk16:                                     ; preds = %366
  call void @odessy.chk(i32 16)
  unreachable

odessy.chk17:                                     ; preds = %381
  call void @odessy.chk(i32 17)
  unreachable

odessy.chk18:                                     ; preds = %385
  call void @odessy.chk(i32 18)
  unreachable

odessy.chk19:                                     ; preds = %392
  call void @odessy.chk(i32 19)
  unreachable

odessy.chk20:                                     ; preds = %407
  call void @odessy.chk(i32 20)
  unreachable

odessy.chk21:                                     ; preds = %411
  call void @odessy.chk(i32 21)
  unreachable

odessy.chk22:                                     ; preds = %418
  call void @odessy.chk(i32 22)
  unreachable

odessy.chk23:                                     ; preds = %433
  call void @odessy.chk(i32 23)
  unreachable

odessy.chk24:                                     ; preds = %.loopexit319
  call void @odessy.chk(i32 24)
  unreachable

odessy.chk25:                                     ; preds = %199
  call void @odessy.chk(i32 25)
  unreachable

odessy.chk26:                                     ; preds = %.split
  call void @odessy.chk(i32 26)
  unreachable

odessy.chk27:                                     ; preds = %.split.split
  call void @odessy.chk(i32 27)
  unreachable

odessy.chk28:                                     ; preds = %.split.split.split
  call void @odessy.chk(i32 28)
  unreachable

odessy.chk29:                                     ; preds = %449
  call void @odessy.chk(i32 29)
  unreachable

odessy.chk30:                                     ; preds = %464
  call void @odessy.chk(i32 30)
  unreachable

odessy.chk31:                                     ; preds = %479
  call void @odessy.chk(i32 31)
  unreachable

odessy.chk32:                                     ; preds = %484
  call void @odessy.chk(i32 32)
  unreachable

odessy.chk33:                                     ; preds = %.preheader317.preheader
  call void @odessy.chk(i32 33)
  unreachable

odessy.chk34:                                     ; preds = %.preheader316.preheader
  call void @odessy.chk(i32 34)
  unreachable

odessy.chk35:                                     ; preds = %534
  call void @odessy.chk(i32 35)
  unreachable

odessy.chk36:                                     ; preds = %540
  call void @odessy.chk(i32 36)
  unreachable

odessy.chk37:                                     ; preds = %541
  call void @odessy.chk(i32 37)
  unreachable

odessy.chk38:                                     ; preds = %551
  call void @odessy.chk(i32 38)
  unreachable

odessy.chk39:                                     ; preds = %552
  call void @odessy.chk(i32 39)
  unreachable

odessy.chk40:                                     ; preds = %562
  call void @odessy.chk(i32 40)
  unreachable

odessy.chk41:                                     ; preds = %563
  call void @odessy.chk(i32 41)
  unreachable

odessy.chk42:                                     ; preds = %590
  call void @odessy.chk(i32 42)
  unreachable

odessy.chk43:                                     ; preds = %594
  call void @odessy.chk(i32 43)
  unreachable

odessy.chk44:                                     ; preds = %612
  call void @odessy.chk(i32 44)
  unreachable

odessy.chk45:                                     ; preds = %616
  call void @odessy.chk(i32 45)
  unreachable

odessy.chk46:                                     ; preds = %634
  call void @odessy.chk(i32 46)
  unreachable

odessy.chk47:                                     ; preds = %638
  call void @odessy.chk(i32 47)
  unreachable

odessy.chk48:                                     ; preds = %656
  call void @odessy.chk(i32 48)
  unreachable

odessy.chk49:                                     ; preds = %660
  call void @odessy.chk(i32 49)
  unreachable

odessy.chk50:                                     ; preds = %678
  call void @odessy.chk(i32 50)
  unreachable

odessy.chk51:                                     ; preds = %682
  call void @odessy.chk(i32 51)
  unreachable

odessy.chk52:                                     ; preds = %700
  call void @odessy.chk(i32 52)
  unreachable

odessy.chk53:                                     ; preds = %523
  call void @odessy.chk(i32 53)
  unreachable

odessy.chk54:                                     ; preds = %.preheader
  call void @odessy.chk(i32 54)
  unreachable

odessy.chk55:                                     ; preds = %727
  call void @odessy.chk(i32 55)
  unreachable

odessy.chk56:                                     ; preds = %731
  call void @odessy.chk(i32 56)
  unreachable

odessy.chk57:                                     ; preds = %749
  call void @odessy.chk(i32 57)
  unreachable

odessy.chk58:                                     ; preds = %753
  call void @odessy.chk(i32 58)
  unreachable

odessy.chk59:                                     ; preds = %771
  call void @odessy.chk(i32 59)
  unreachable

odessy.chk60:                                     ; preds = %.loopexit318
  call void @odessy.chk(i32 60)
  unreachable

odessy.chk61:                                     ; preds = %797
  call void @odessy.chk(i32 61)
  unreachable

odessy.chk62:                                     ; preds = %804
  call void @odessy.chk(i32 62)
  unreachable

odessy.chk63:                                     ; preds = %812
  call void @odessy.chk(i32 63)
  unreachable

odessy.chk64:                                     ; preds = %816
  call void @odessy.chk(i32 64)
  unreachable

odessy.chk65:                                     ; preds = %820
  call void @odessy.chk(i32 65)
  unreachable

odessy.chk66:                                     ; preds = %840
  call void @odessy.chk(i32 66)
  unreachable

odessy.chk67:                                     ; preds = %.split63
  call void @odessy.chk(i32 67)
  unreachable

odessy.chk68:                                     ; preds = %863
  call void @odessy.chk(i32 68)
  unreachable

odessy.chk69:                                     ; preds = %869
  call void @odessy.chk(i32 69)
  unreachable

odessy.chk70:                                     ; preds = %870
  call void @odessy.chk(i32 70)
  unreachable

odessy.chk71:                                     ; preds = %876
  call void @odessy.chk(i32 71)
  unreachable

odessy.chk72:                                     ; preds = %877
  call void @odessy.chk(i32 72)
  unreachable

odessy.chk73:                                     ; preds = %883
  call void @odessy.chk(i32 73)
  unreachable

odessy.chk74:                                     ; preds = %136
  tail call void @odessy.chk(i32 74)
  unreachable

odessy.chk75:                                     ; preds = %112
  tail call void @odessy.chk(i32 75)
  unreachable
}

declare swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"() local_unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: nounwind
declare ptr @swift_bridgeObjectRetain(ptr returned) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(ptr) local_unnamed_addr #2

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSS_SiTg5"(i64 %0, ptr %1, i64 %2) local_unnamed_addr #3 {
entry:
  %3 = alloca %TSS, align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
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
  br i1 %11, label %16, label %12, !prof !43

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
  br i1 %.not, label %29, label %20

20:                                               ; preds = %16
  %21 = lshr i64 %.pre-phi, 56
  %22 = and i64 %21, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.elt2 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %23 = and i64 %.pre-phi, 72057594037927935
  store i64 %17, ptr %4, align 8
  store i64 %23, ptr %.elt2, align 8
  %24 = ptrtoint ptr %4 to i64
  %25 = call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFADSRys5UInt8VGXEfU_SS_SiTg5"(i64 %24, i64 %22, i64 %2, ptr swiftself undef, ptr noalias nonnull swifterror captures(none) dereferenceable(8) %swifterror)
  %26 = load ptr, ptr %swifterror, align 8
  %.not5 = icmp eq ptr %26, null
  br i1 %.not5, label %27, label %28

27:                                               ; preds = %20
  call void @swift_bridgeObjectRelease(ptr %18) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %31

28:                                               ; preds = %20
  call void @swift_errorRelease(ptr nonnull %26) #2
  unreachable

29:                                               ; preds = %16
  %30 = and i64 %17, 1152921504606846976
  %.not3 = icmp eq i64 %30, 0
  br i1 %.not3, label %36, label %32, !prof !42

31:                                               ; preds = %40, %27
  %.pn = phi { i64, i8 } [ %43, %40 ], [ %25, %27 ]
  ret { i64, i8 } %.pn

32:                                               ; preds = %29
  %33 = and i64 %.pre-phi, 1152921504606846975
  %34 = add nuw nsw i64 %33, 32
  %35 = and i64 %17, 281474976710655
  br label %40

36:                                               ; preds = %29
  %37 = call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %17, ptr %18)
  %38 = extractvalue { i64, i64 } %37, 0
  %39 = extractvalue { i64, i64 } %37, 1
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i64 [ %38, %36 ], [ %34, %32 ]
  %42 = phi i64 [ %39, %36 ], [ %35, %32 ]
  %43 = call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFADSRys5UInt8VGXEfU_SS_SiTg5"(i64 %41, i64 %42, i64 %2, ptr swiftself undef, ptr noalias nonnull swifterror captures(none) dereferenceable(8) %swifterror)
  call void @swift_bridgeObjectRelease(ptr %18) #2
  br label %31
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn
declare zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr) local_unnamed_addr #5

; Function Attrs: noinline
define linkonce_odr hidden swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSd_Tg5"(ptr %0) local_unnamed_addr #3 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load i64, ptr %1, align 8, !range !41
  %3 = tail call swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5"(i1 false, i64 %2, i1 false, ptr %0)
  ret ptr %3
}

; Function Attrs: nounwind
declare void @swift_endAccess(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read)
define linkonce_odr hidden ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr %0, ptr %1) local_unnamed_addr #6 {
entry:
  %2 = load atomic ptr, ptr %0 monotonic, align 8
  %3 = icmp eq ptr %2, null
  %4 = ptrtoint ptr %2 to i64
  %5 = trunc i64 %4 to i1
  %6 = or i1 %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %9, %entry
  %8 = phi ptr [ %2, %entry ], [ %16, %9 ]
  ret ptr %8

9:                                                ; preds = %entry
  %10 = load i64, ptr %1, align 8
  %11 = ashr i64 %10, 32
  %sext = shl i64 %10, 32
  %12 = ashr exact i64 %sext, 32
  %13 = ptrtoint ptr %1 to i64
  %14 = add i64 %12, %13
  %15 = inttoptr i64 %14 to ptr
  %16 = tail call swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr %15, i64 %11, ptr null, ptr null) #17
  store atomic ptr %16, ptr %0 monotonic, align 8
  br label %7
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr, i64, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

declare swiftcc { i64, ptr } @"$sSS10FoundationE6format_S2Sh_s7CVarArg_pdtcfC"(i64, ptr, ptr) local_unnamed_addr #0

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @swift_release(ptr) local_unnamed_addr #2

; Function Attrs: noinline
declare swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZ"(i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swift_Builtin_float"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftObjectiveC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDispatch"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftXPC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftIOKit"()

; Function Attrs: noinline
define linkonce_odr hidden swiftcc ptr @"$ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5"(i1 %0, i64 %1, i1 %2, ptr %3) local_unnamed_addr #3 {
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
  br i1 %10, label %odessy.chk, label %11, !prof !42

11:                                               ; preds = %9
  %12 = and i64 %6, 9223372036854775806
  %13 = tail call i64 @llvm.umax.i64(i64 %12, i64 %1)
  br label %14

14:                                               ; preds = %11, %5, %entry
  %15 = phi i64 [ %1, %entry ], [ %13, %11 ], [ %7, %5 ]
  %16 = load i64, ptr %4, align 8, !range !41
  %.4 = tail call i64 @llvm.smax.i64(i64 %15, i64 %16)
  %17 = icmp eq i64 %.4, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCySdGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCySdGMR") #16
  %20 = shl i64 %.4, 3
  %21 = add i64 %20, 32
  %22 = tail call noalias ptr @swift_allocObject(ptr %19, i64 %21, i64 7) #2
  %call.i = tail call i64 @malloc_size(ptr noundef %22) #18, !clang.arc.no_objc_arc_exceptions !52
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
  tail call void @swift_bridgeObjectRelease(ptr nonnull %3) #2
  ret ptr %27

odessy.chk:                                       ; preds = %9
  tail call void @odessy.chk(i32 76)
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

declare swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias, ptr, ptr, ptr) local_unnamed_addr #0

define linkonce_odr hidden swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFADSRys5UInt8VGXEfU_SS_SiTg5"(i64 %0, i64 %1, i64 %2, ptr swiftself %3, ptr noalias swifterror captures(none) dereferenceable(8) %4) local_unnamed_addr #0 {
entry:
  %5 = inttoptr i64 %0 to ptr
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %51 [
    i8 45, label %7
    i8 43, label %90
  ]

7:                                                ; preds = %entry
  %8 = icmp slt i64 %1, 1
  br i1 %8, label %odessy.chk1, label %9, !prof !42

9:                                                ; preds = %7
  %10 = icmp eq i64 %1, 1
  br i1 %10, label %.loopexit, label %11, !prof !42

11:                                               ; preds = %9
  %12 = icmp slt i64 %2, 11
  %13 = trunc i64 %2 to i8
  %14 = add i8 %13, 55
  %15 = add i8 %13, 87
  %16 = add i8 %13, 48
  %17 = select i1 %12, i8 97, i8 %15
  %18 = select i1 %12, i8 65, i8 %14
  %19 = select i1 %12, i8 %16, i8 58
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %21 = getelementptr i8, ptr %5, i64 %1
  br label %22

22:                                               ; preds = %37, %11
  %23 = phi ptr [ %20, %11 ], [ %39, %37 ]
  %24 = phi i64 [ 0, %11 ], [ %38, %37 ]
  %25 = load i8, ptr %23, align 1
  %26 = icmp ugt i8 %25, 47
  %27 = icmp ult i8 %25, %19
  %or.cond = select i1 %26, i1 %27, i1 false
  br i1 %or.cond, label %28, label %41, !prof !45

28:                                               ; preds = %44, %41, %22
  %.sink = phi i8 [ -55, %41 ], [ -87, %44 ], [ -48, %22 ]
  %29 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %24, i64 %2)
  %30 = extractvalue { i64, i1 } %29, 1
  br i1 %30, label %.loopexit, label %31

31:                                               ; preds = %28
  %32 = add i8 %.sink, %25
  %33 = extractvalue { i64, i1 } %29, 0
  %34 = zext i8 %32 to i64
  %35 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %33, i64 %34)
  %36 = extractvalue { i64, i1 } %35, 1
  br i1 %36, label %.loopexit, label %37, !prof !42

37:                                               ; preds = %31
  %38 = extractvalue { i64, i1 } %35, 0
  %39 = getelementptr inbounds nuw i8, ptr %23, i64 1
  %40 = icmp eq ptr %39, %21
  br i1 %40, label %.loopexit, label %22

41:                                               ; preds = %22
  %42 = icmp ugt i8 %25, 64
  %43 = icmp ult i8 %25, %18
  %or.cond4 = select i1 %42, i1 %43, i1 false
  br i1 %or.cond4, label %28, label %44, !prof !45

44:                                               ; preds = %41
  %45 = icmp ugt i8 %25, 96
  %46 = icmp ult i8 %25, %17
  %or.cond5 = select i1 %45, i1 %46, i1 false
  br i1 %or.cond5, label %28, label %.loopexit, !prof !45

.loopexit:                                        ; preds = %111, %114, %120, %127, %28, %31, %37, %44, %71, %74, %80, %87, %92, %53, %51, %9
  %47 = phi i64 [ 0, %9 ], [ 0, %51 ], [ 0, %53 ], [ 0, %92 ], [ 0, %44 ], [ 0, %87 ], [ %81, %80 ], [ 0, %74 ], [ 0, %71 ], [ %38, %37 ], [ 0, %31 ], [ 0, %28 ], [ 0, %127 ], [ %121, %120 ], [ 0, %114 ], [ 0, %111 ]
  %48 = phi i8 [ 1, %9 ], [ 1, %51 ], [ 0, %53 ], [ 1, %92 ], [ 1, %44 ], [ 1, %87 ], [ 0, %80 ], [ 1, %74 ], [ 1, %71 ], [ 0, %37 ], [ 1, %31 ], [ 1, %28 ], [ 1, %127 ], [ 0, %120 ], [ 1, %114 ], [ 1, %111 ]
  %49 = insertvalue { i64, i8 } undef, i64 %47, 0
  %50 = insertvalue { i64, i8 } %49, i8 %48, 1
  ret { i64, i8 } %50

51:                                               ; preds = %entry
  %52 = icmp eq i64 %1, 0
  br i1 %52, label %.loopexit, label %53, !prof !42

53:                                               ; preds = %51
  %54 = icmp slt i64 %2, 11
  %55 = trunc i64 %2 to i8
  %56 = add i8 %55, 55
  %57 = add i8 %55, 87
  %58 = add i8 %55, 48
  %59 = select i1 %54, i8 97, i8 %57
  %60 = select i1 %54, i8 65, i8 %56
  %61 = select i1 %54, i8 %58, i8 58
  %62 = icmp eq i64 %0, 0
  br i1 %62, label %.loopexit, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds i8, ptr %5, i64 %1
  br label %65

65:                                               ; preds = %80, %63
  %66 = phi ptr [ %5, %63 ], [ %82, %80 ]
  %67 = phi i64 [ 0, %63 ], [ %81, %80 ]
  %68 = load i8, ptr %66, align 1
  %69 = icmp ugt i8 %68, 47
  %70 = icmp ult i8 %68, %61
  %or.cond6 = select i1 %69, i1 %70, i1 false
  br i1 %or.cond6, label %71, label %84, !prof !45

71:                                               ; preds = %87, %84, %65
  %.sink55 = phi i8 [ -55, %84 ], [ -87, %87 ], [ -48, %65 ]
  %72 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %67, i64 %2)
  %73 = extractvalue { i64, i1 } %72, 1
  br i1 %73, label %.loopexit, label %74

74:                                               ; preds = %71
  %75 = add i8 %.sink55, %68
  %76 = extractvalue { i64, i1 } %72, 0
  %77 = zext i8 %75 to i64
  %78 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %76, i64 %77)
  %79 = extractvalue { i64, i1 } %78, 1
  br i1 %79, label %.loopexit, label %80, !prof !42

80:                                               ; preds = %74
  %81 = extractvalue { i64, i1 } %78, 0
  %82 = getelementptr inbounds nuw i8, ptr %66, i64 1
  %83 = icmp eq ptr %82, %64
  br i1 %83, label %.loopexit, label %65

84:                                               ; preds = %65
  %85 = icmp ugt i8 %68, 64
  %86 = icmp ult i8 %68, %60
  %or.cond7 = select i1 %85, i1 %86, i1 false
  br i1 %or.cond7, label %71, label %87, !prof !45

87:                                               ; preds = %84
  %88 = icmp ugt i8 %68, 96
  %89 = icmp ult i8 %68, %59
  %or.cond8 = select i1 %88, i1 %89, i1 false
  br i1 %or.cond8, label %71, label %.loopexit, !prof !45

90:                                               ; preds = %entry
  %91 = icmp slt i64 %1, 1
  br i1 %91, label %odessy.chk, label %92, !prof !42

92:                                               ; preds = %90
  %93 = icmp eq i64 %1, 1
  br i1 %93, label %.loopexit, label %94, !prof !42

94:                                               ; preds = %92
  %95 = icmp slt i64 %2, 11
  %96 = trunc i64 %2 to i8
  %97 = add i8 %96, 55
  %98 = add i8 %96, 87
  %99 = add i8 %96, 48
  %100 = select i1 %95, i8 97, i8 %98
  %101 = select i1 %95, i8 65, i8 %97
  %102 = select i1 %95, i8 %99, i8 58
  %103 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %104 = getelementptr i8, ptr %5, i64 %1
  br label %105

105:                                              ; preds = %120, %94
  %106 = phi ptr [ %103, %94 ], [ %122, %120 ]
  %107 = phi i64 [ 0, %94 ], [ %121, %120 ]
  %108 = load i8, ptr %106, align 1
  %109 = icmp ugt i8 %108, 47
  %110 = icmp ult i8 %108, %102
  %or.cond9 = select i1 %109, i1 %110, i1 false
  br i1 %or.cond9, label %111, label %124, !prof !45

111:                                              ; preds = %127, %124, %105
  %.sink56 = phi i8 [ -55, %124 ], [ -87, %127 ], [ -48, %105 ]
  %112 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %107, i64 %2)
  %113 = extractvalue { i64, i1 } %112, 1
  br i1 %113, label %.loopexit, label %114

114:                                              ; preds = %111
  %115 = add i8 %.sink56, %108
  %116 = extractvalue { i64, i1 } %112, 0
  %117 = zext i8 %115 to i64
  %118 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %116, i64 %117)
  %119 = extractvalue { i64, i1 } %118, 1
  br i1 %119, label %.loopexit, label %120, !prof !42

120:                                              ; preds = %114
  %121 = extractvalue { i64, i1 } %118, 0
  %122 = getelementptr inbounds nuw i8, ptr %106, i64 1
  %123 = icmp eq ptr %122, %104
  br i1 %123, label %.loopexit, label %105

124:                                              ; preds = %105
  %125 = icmp ugt i8 %108, 64
  %126 = icmp ult i8 %108, %101
  %or.cond10 = select i1 %125, i1 %126, i1 false
  br i1 %or.cond10, label %111, label %127, !prof !45

127:                                              ; preds = %124
  %128 = icmp ugt i8 %108, 96
  %129 = icmp ult i8 %108, %100
  %or.cond11 = select i1 %128, i1 %129, i1 false
  br i1 %or.cond11, label %111, label %.loopexit, !prof !45

odessy.chk:                                       ; preds = %90
  tail call void @odessy.chk(i32 77)
  unreachable

odessy.chk1:                                      ; preds = %7
  tail call void @odessy.chk(i32 78)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingyS2SFZ"(i64 %0, ptr %1) local_unnamed_addr #3 {
entry:
  %2 = ptrtoint ptr %1 to i64
  %3 = and i64 %2, 2305843009213693952
  %.not.i = icmp eq i64 %3, 0
  %4 = and i64 %0, 281474976710655
  %5 = lshr i64 %2, 56
  %6 = and i64 %5, 15
  %7 = select i1 %.not.i, i64 %4, i64 %6
  %8 = shl nuw i64 %7, 16
  %9 = and i64 %2, 1152921504606846976
  %10 = icmp eq i64 %9, 0
  %11 = and i64 %0, 576460752303423488
  %12 = icmp ne i64 %11, 0
  %or.cond.i = select i1 %10, i1 true, i1 %12
  %.v.i = select i1 %or.cond.i, i64 7, i64 11
  %13 = or disjoint i64 %8, %.v.i
  %14 = tail call swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64 15, i64 %13, i64 %0, ptr %1)
  %15 = extractvalue { i64, i64, i64, ptr } %14, 0
  %16 = extractvalue { i64, i64, i64, ptr } %14, 1
  %17 = extractvalue { i64, i64, i64, ptr } %14, 2
  %18 = extractvalue { i64, i64, i64, ptr } %14, 3
  %19 = tail call swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %15, i64 %16, i64 %17, ptr %18)
  tail call void @swift_bridgeObjectRelease(ptr %18) #2
  ret { i64, ptr } %19
}

; Function Attrs: nounwind
declare void @swift_errorRelease(ptr) local_unnamed_addr #2

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #3 {
entry:
  %4 = alloca %Ts16IndexingIteratorVySs8UTF8ViewVG, align 8
  %5 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = and i64 %6, 1152921504606846976
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %26, label %9, !prof !43

9:                                                ; preds = %entry
  %10 = tail call swiftcc i64 @"$sSs8UTF8ViewV8distance4from2toSiSS5IndexV_AGtF"(i64 %0, i64 %1, i64 %0, i64 %1, i64 %2, ptr %3)
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
  br i1 %.not, label %19, label %odessy.chk, !prof !43

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %._crit_edge

._crit_edge:                                      ; preds = %9, %19
  %20 = phi ptr [ %13, %19 ], [ @_swiftEmptyArrayStorage, %9 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %22 = ptrtoint ptr %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %24 = load i64, ptr %23, align 8, !range !41
  %25 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %22, i64 %24), !noalias !53
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
  br i1 %.not5, label %32, label %36, !prof !42

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
  tail call void @odessy.chk(i32 80)
  unreachable
}

declare swiftcc i64 @"$sSs8UTF8ViewV8distance4from2toSiSS5IndexV_AGtF"(i64, i64, i64, i64, i64, ptr) local_unnamed_addr #0

define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %. = tail call i64 @llvm.smax.i64(i64 %1, i64 %0)
  %2 = icmp eq i64 %., 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %entry
  %4 = tail call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMR") #16
  %5 = add i64 %., 32
  %6 = tail call noalias ptr @swift_allocObject(ptr %4, i64 %5, i64 7) #2
  %call.i = tail call i64 @malloc_size(ptr noundef %6) #18, !clang.arc.no_objc_arc_exceptions !52
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
  %.fr17 = freeze i64 %5
  %.fr16 = freeze ptr %6
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %.loopexit17, label %9

9:                                                ; preds = %entry
  %10 = inttoptr i64 %1 to ptr
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %.loopexit17, label %12

12:                                               ; preds = %9
  %13 = icmp slt i64 %2, 0
  %14 = lshr i64 %4, 14
  br i1 %13, label %odessy.chk, label %15, !prof !42

15:                                               ; preds = %12
  %16 = lshr i64 %3, 14
  %17 = icmp eq i64 %16, %14
  br i1 %17, label %.loopexit17, label %18

18:                                               ; preds = %15
  %19 = ptrtoint ptr %.fr16 to i64
  %20 = and i64 %19, 1152921504606846976
  %21 = icmp eq i64 %20, 0
  %22 = and i64 %.fr17, 576460752303423488
  %23 = icmp ne i64 %22, 0
  %24 = or i1 %21, %23
  %25 = zext i1 %24 to i64
  %26 = shl nuw nsw i64 4, %25
  %27 = and i64 %19, 2305843009213693952
  %.not12 = icmp eq i64 %27, 0
  %.elt6 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %28 = and i64 %19, 72057594037927935
  %29 = and i64 %.fr17, 1152921504606846976
  %.not13 = icmp eq i64 %29, 0
  %30 = and i64 %19, 1152921504606846975
  %31 = add nuw nsw i64 %30, 32
  %32 = and i64 %.fr17, 281474976710655
  %33 = lshr i64 %19, 56
  %34 = and i64 %33, 15
  %35 = select i1 %.not12, i64 %32, i64 %34
  br i1 %21, label %.split.us.split, label %.split

.split.us.split:                                  ; preds = %18
  br i1 %.not12, label %.split.us.split.split.us, label %.split.us.split.split

.split.us.split.split.us:                         ; preds = %.split.us.split
  br i1 %.not13, label %.split.us.split.split.us.split.us, label %.split.us.split.split.us.split, !prof !42

.split.us.split.split.us.split.us:                ; preds = %.split.us.split.split.us, %62
  %36 = phi ptr [ %64, %62 ], [ %10, %.split.us.split.split.us ]
  %37 = phi i64 [ %59, %62 ], [ %3, %.split.us.split.split.us ]
  %38 = phi i64 [ %63, %62 ], [ 1, %.split.us.split.split.us ]
  %39 = and i64 %37, 12
  %.not.us.us.us = icmp eq i64 %39, %26
  br i1 %.not.us.us.us, label %40, label %42, !prof !42

40:                                               ; preds = %.split.us.split.split.us.split.us
  %41 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr17, ptr %.fr16)
  br label %42

42:                                               ; preds = %40, %.split.us.split.split.us.split.us
  %43 = phi i64 [ %41, %40 ], [ %37, %.split.us.split.split.us.split.us ]
  %44 = lshr i64 %43, 14
  %45 = icmp samesign uge i64 %44, %16
  %46 = icmp samesign ult i64 %44, %14
  %.not7.us.us.us = and i1 %45, %46
  br i1 %.not7.us.us.us, label %47, label %odessy.chk1, !prof !43

47:                                               ; preds = %42
  %48 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %.fr17, ptr %.fr16)
  %49 = extractvalue { i64, i64 } %48, 0
  %50 = lshr i64 %43, 16
  %51 = inttoptr i64 %49 to ptr
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 %50
  %53 = load i8, ptr %52, align 1
  br i1 %.not.us.us.us, label %54, label %56, !prof !42

54:                                               ; preds = %47
  %55 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr17, ptr %.fr16)
  br label %56

56:                                               ; preds = %54, %47
  %57 = phi i64 [ %55, %54 ], [ %37, %47 ]
  %58 = and i64 %57, -65536
  %59 = add i64 %58, 65540
  store i8 %53, ptr %36, align 1
  %.not8.us.us.us = icmp eq i64 %38, %2
  br i1 %.not8.us.us.us, label %.loopexit17, label %60

60:                                               ; preds = %56
  %61 = lshr i64 %59, 14
  %.not9.us.us.us = icmp eq i64 %61, %14
  br i1 %.not9.us.us.us, label %.loopexit17, label %62

62:                                               ; preds = %60
  %63 = add nuw i64 %38, 1
  %64 = getelementptr inbounds nuw i8, ptr %36, i64 1
  br label %.split.us.split.split.us.split.us

.split.us.split.split.us.split:                   ; preds = %.split.us.split.split.us
  %65 = inttoptr i64 %31 to ptr
  br label %66

66:                                               ; preds = %94, %.split.us.split.split.us.split
  %67 = phi ptr [ %10, %.split.us.split.split.us.split ], [ %96, %94 ]
  %68 = phi i64 [ %3, %.split.us.split.split.us.split ], [ %91, %94 ]
  %69 = phi i64 [ 1, %.split.us.split.split.us.split ], [ %95, %94 ]
  %70 = and i64 %68, 12
  %.not.us.us = icmp eq i64 %70, %26
  br i1 %.not.us.us, label %71, label %.thread, !prof !42

71:                                               ; preds = %66
  %72 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %68, i64 %.fr17, ptr %.fr16)
  %73 = lshr i64 %72, 14
  %74 = icmp samesign uge i64 %73, %16
  %75 = icmp samesign ult i64 %73, %14
  %.not7.us.us = and i1 %74, %75
  br i1 %.not7.us.us, label %82, label %odessy.chk1, !prof !43

.thread:                                          ; preds = %66
  %76 = lshr i64 %68, 14
  %77 = icmp samesign uge i64 %76, %16
  %78 = icmp samesign ult i64 %76, %14
  %.not7.us.us37 = and i1 %77, %78
  br i1 %.not7.us.us37, label %.thread38, label %odessy.chk1, !prof !43

.thread38:                                        ; preds = %.thread
  %79 = lshr i64 %68, 16
  %80 = getelementptr inbounds nuw i8, ptr %65, i64 %79
  %81 = load i8, ptr %80, align 1
  br label %87

82:                                               ; preds = %71
  %83 = lshr i64 %72, 16
  %84 = getelementptr inbounds nuw i8, ptr %65, i64 %83
  %85 = load i8, ptr %84, align 1
  %86 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %68, i64 %.fr17, ptr %.fr16)
  br label %87

87:                                               ; preds = %.thread38, %82
  %88 = phi i8 [ %85, %82 ], [ %81, %.thread38 ]
  %89 = phi i64 [ %86, %82 ], [ %68, %.thread38 ]
  %90 = and i64 %89, -65536
  %91 = add i64 %90, 65540
  store i8 %88, ptr %67, align 1
  %.not8.us.us = icmp eq i64 %69, %2
  br i1 %.not8.us.us, label %.loopexit17, label %92

92:                                               ; preds = %87
  %93 = lshr i64 %91, 14
  %.not9.us.us = icmp eq i64 %93, %14
  br i1 %.not9.us.us, label %.loopexit17, label %94

94:                                               ; preds = %92
  %95 = add nuw i64 %69, 1
  %96 = getelementptr inbounds nuw i8, ptr %67, i64 1
  br label %66

.split.us.split.split:                            ; preds = %.split.us.split, %120
  %97 = phi ptr [ %122, %120 ], [ %10, %.split.us.split ]
  %98 = phi i64 [ %117, %120 ], [ %3, %.split.us.split ]
  %99 = phi i64 [ %121, %120 ], [ 1, %.split.us.split ]
  %100 = and i64 %98, 12
  %.not.us = icmp eq i64 %100, %26
  br i1 %.not.us, label %101, label %103, !prof !42

101:                                              ; preds = %.split.us.split.split
  %102 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %98, i64 %.fr17, ptr %.fr16)
  br label %103

103:                                              ; preds = %101, %.split.us.split.split
  %104 = phi i64 [ %102, %101 ], [ %98, %.split.us.split.split ]
  %105 = lshr i64 %104, 14
  %106 = icmp samesign uge i64 %105, %16
  %107 = icmp samesign ult i64 %105, %14
  %.not7.us = and i1 %106, %107
  br i1 %.not7.us, label %108, label %odessy.chk1, !prof !43

108:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.fr17, ptr %7, align 8
  store i64 %28, ptr %.elt6, align 8
  %109 = lshr i64 %104, 16
  %110 = getelementptr inbounds nuw i8, ptr %7, i64 %109
  %111 = load i8, ptr %110, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not.us, label %112, label %114, !prof !42

112:                                              ; preds = %108
  %113 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %98, i64 %.fr17, ptr %.fr16)
  br label %114

114:                                              ; preds = %112, %108
  %115 = phi i64 [ %113, %112 ], [ %98, %108 ]
  %116 = and i64 %115, -65536
  %117 = add i64 %116, 65540
  store i8 %111, ptr %97, align 1
  %.not8.us = icmp eq i64 %99, %2
  br i1 %.not8.us, label %.loopexit17, label %118

118:                                              ; preds = %114
  %119 = lshr i64 %117, 14
  %.not9.us = icmp eq i64 %119, %14
  br i1 %.not9.us, label %.loopexit17, label %120

120:                                              ; preds = %118
  %121 = add nuw i64 %99, 1
  %122 = getelementptr inbounds nuw i8, ptr %97, i64 1
  br label %.split.us.split.split

.split:                                           ; preds = %18, %145
  %123 = phi ptr [ %147, %145 ], [ %10, %18 ]
  %124 = phi i64 [ %142, %145 ], [ %3, %18 ]
  %125 = phi i64 [ %146, %145 ], [ 1, %18 ]
  %126 = and i64 %124, 12
  %.not = icmp eq i64 %126, %26
  br i1 %.not, label %127, label %129, !prof !42

127:                                              ; preds = %.split
  %128 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %124, i64 %.fr17, ptr %.fr16)
  br label %129

129:                                              ; preds = %127, %.split
  %130 = phi i64 [ %128, %127 ], [ %124, %.split ]
  %131 = lshr i64 %130, 14
  %132 = icmp samesign uge i64 %131, %16
  %133 = icmp samesign ult i64 %131, %14
  %.not7 = and i1 %132, %133
  br i1 %.not7, label %134, label %odessy.chk1, !prof !43

134:                                              ; preds = %129
  %135 = tail call swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %130, i64 %.fr17, ptr %.fr16)
  br i1 %.not, label %136, label %138, !prof !42

136:                                              ; preds = %134
  %137 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %124, i64 %.fr17, ptr %.fr16)
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i64 [ %137, %136 ], [ %124, %134 ]
  %140 = lshr i64 %139, 16
  %.not15 = icmp samesign ult i64 %140, %35
  br i1 %.not15, label %141, label %odessy.chk2, !prof !43

141:                                              ; preds = %138
  %142 = tail call swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %139, i64 %.fr17, ptr %.fr16)
  store i8 %135, ptr %123, align 1
  %.not8 = icmp eq i64 %125, %2
  br i1 %.not8, label %.loopexit17, label %143

143:                                              ; preds = %141
  %144 = lshr i64 %142, 14
  %.not9 = icmp eq i64 %144, %14
  br i1 %.not9, label %.loopexit17, label %145

145:                                              ; preds = %143
  %146 = add nuw i64 %125, 1
  %147 = getelementptr inbounds nuw i8, ptr %123, i64 1
  br label %.split

.loopexit17:                                      ; preds = %143, %141, %114, %118, %92, %87, %60, %56, %15, %9, %entry
  %.sink = phi i64 [ %3, %entry ], [ %3, %15 ], [ %3, %9 ], [ %117, %114 ], [ %91, %92 ], [ %59, %60 ], [ %59, %56 ], [ %91, %87 ], [ %117, %118 ], [ %142, %141 ], [ %142, %143 ]
  %148 = phi i64 [ 0, %entry ], [ 0, %15 ], [ 0, %9 ], [ %2, %114 ], [ %69, %92 ], [ %38, %60 ], [ %2, %56 ], [ %2, %87 ], [ %99, %118 ], [ %125, %143 ], [ %2, %141 ]
  store i64 %3, ptr %0, align 8
  %._elements3._slice._endIndex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %._elements3._slice._endIndex, align 8
  %._elements3._slice._base = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.fr17, ptr %._elements3._slice._base, align 8
  %._elements3._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.fr16, ptr %._elements3._slice._base._guts._object._object, align 8
  %._position4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %._position4, align 8
  ret i64 %148

odessy.chk:                                       ; preds = %12
  tail call void @odessy.chk(i32 81)
  unreachable

odessy.chk1:                                      ; preds = %129, %103, %71, %.thread, %42
  tail call void @odessy.chk(i32 82)
  unreachable

odessy.chk2:                                      ; preds = %138
  tail call void @odessy.chk(i32 83)
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

declare swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: optsize
declare i64 @malloc_size(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #4

; Function Attrs: nounwind
declare ptr @swift_bridgeObjectRetain_n(ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { noinline "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn }
attributes #6 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #7 = { nounwind memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { optsize "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind willreturn }
attributes #16 = { nounwind memory(read) }
attributes #17 = { nounwind memory(argmem: read) }
attributes #18 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14}
!swift.module.flags = !{!15}
!llvm.linker.options = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 5]}
!1 = !{i32 1, !"Objective-C Version", i32 2}
!2 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!3 = !{i32 1, !"Objective-C Image Info Section", !"__DATA,__objc_imageinfo,regular,no_dead_strip"}
!4 = !{i32 1, !"Objective-C Garbage Collection", i8 0}
!5 = !{i32 1, !"Objective-C Class Properties", i32 64}
!6 = !{i32 1, !"Objective-C Enforce ClassRO Pointer Signing", i8 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 1}
!11 = !{i32 1, !"Swift Version", i32 7}
!12 = !{i32 1, !"Swift ABI Version", i32 7}
!13 = !{i32 1, !"Swift Major Version", i8 6}
!14 = !{i32 1, !"Swift Minor Version", i8 3}
!15 = !{!"standard-library", i1 false}
!16 = !{!"-lswiftFoundation"}
!17 = !{!"-framework", !"Foundation"}
!18 = !{!"-lswiftCore"}
!19 = !{!"-lswift_DarwinFoundation3"}
!20 = !{!"-lswift_DarwinFoundation1"}
!21 = !{!"-lswift_DarwinFoundation2"}
!22 = !{!"-lswift_StringProcessing"}
!23 = !{!"-lswift_Concurrency"}
!24 = !{!"-lswiftSystem"}
!25 = !{!"-lswiftDarwin"}
!26 = !{!"-lswift_Builtin_float"}
!27 = !{!"-lswiftObservation"}
!28 = !{!"-lswiftObjectiveC"}
!29 = !{!"-lswiftCoreFoundation"}
!30 = !{!"-framework", !"CoreFoundation"}
!31 = !{!"-lswiftDispatch"}
!32 = !{!"-framework", !"Combine"}
!33 = !{!"-framework", !"CoreServices"}
!34 = !{!"-framework", !"Security"}
!35 = !{!"-lswiftXPC"}
!36 = !{!"-framework", !"CFNetwork"}
!37 = !{!"-framework", !"DiskArbitration"}
!38 = !{!"-lswiftIOKit"}
!39 = !{!"-framework", !"IOKit"}
!40 = !{!"-lobjc"}
!41 = !{i64 0, i64 9223372036854775807}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!44 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!45 = !{!"branch_weights", i32 2000, i32 2002}
!46 = !{!"branch_weights", !"expected", i32 1934571, i32 2145549077}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = distinct !{!50, !49, !48}
!51 = !{!"branch_weights", !"expected", i32 4348775, i32 2143134873}
!52 = !{}
!53 = !{!54}
!54 = distinct !{!54, !55, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!55 = distinct !{!55, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
