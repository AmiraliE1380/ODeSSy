; ModuleID = 'results/static/guard_ablation_0927/Swift_sha1/tag.ll'
source_filename = "results/static/guard_ablation_0927/ir/sha1.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TSi = type <{ i64 }>
%TSa = type <{ %Ts22_ContiguousArrayBufferV }>
%Ts22_ContiguousArrayBufferV = type <{ ptr }>
%Ts6UInt32V = type <{ i32 }>
%swift.type = type { i64 }
%swift.type_descriptor = type opaque
%struct._SwiftEmptyArrayStorage = type { %struct.HeapObject, %struct._SwiftArrayBodyStorage }
%struct.HeapObject = type { ptr, %struct.InlineRefCountsPlaceholder }
%struct.InlineRefCountsPlaceholder = type { i64 }
%struct._SwiftArrayBodyStorage = type { i64, i64 }
%Ts6UInt64V = type <{ i64 }>
%Ts5UInt8V = type <{ i8 }>
%TSS = type <{ %Ts11_StringGutsV }>
%Ts11_StringGutsV = type <{ %Ts13_StringObjectV }>
%Ts13_StringObjectV = type <{ %Ts6UInt64V, ptr }>
%Ts16IndexingIteratorVySs8UTF8ViewVG = type <{ %TSs8UTF8ViewV, %TSS5IndexV }>
%TSs8UTF8ViewV = type <{ %Ts5SliceVySS8UTF8ViewVG }>
%Ts5SliceVySS8UTF8ViewVG = type <{ %TSS5IndexV, %TSS5IndexV, %TSS8UTF8ViewV }>
%TSS8UTF8ViewV = type <{ %Ts11_StringGutsV }>
%TSS5IndexV = type <{ %Ts6UInt64V }>
%T20FoundationEssentials4DataV8IteratorV = type <{ %T20FoundationEssentials4DataV, <{ %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V, %Ts5UInt8V }>, %TSi, %TSi }>
%T20FoundationEssentials4DataV = type <{ %T20FoundationEssentials4DataV15_RepresentationO }>
%T20FoundationEssentials4DataV15_RepresentationO = type <{ [16 x i8] }>

@"$s4sha15itersSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@".str.15.sha1/sha1.swift" = private unnamed_addr constant [16 x i8] c"sha1/sha1.swift\00"
@"$s4sha14dataSays5UInt8VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$s4sha15finals6UInt32Vvp" = hidden local_unnamed_addr global %Ts6UInt32V zeroinitializer, align 4
@"$ss6UInt32VN" = external global %swift.type, align 8
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = linkonce_odr hidden constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMD" to i64)) to i32), i32 -9 }, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "swift5_entry", align 4
@"$ss5UInt8VMn" = external global %swift.type_descriptor, align 4
@"got.$ss5UInt8VMn" = linkonce_odr hidden constant ptr @"$ss5UInt8VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss5UInt8VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys5UInt8VGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys5UInt8VGMD" to i64)) to i32), i32 -12 }, align 8
@"$s20FoundationEssentials4DataV8IteratorVMn" = external global %swift.type_descriptor, align 4
@"got.$s20FoundationEssentials4DataV8IteratorVMn" = linkonce_odr hidden constant ptr @"$s20FoundationEssentials4DataV8IteratorVMn"
@"symbolic ______Sit 20FoundationEssentials4DataV8IteratorV" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$s20FoundationEssentials4DataV8IteratorVMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic ______Sit 20FoundationEssentials4DataV8IteratorV", i32 0, i32 1) to i64)) to i32), [4 x i8] c"_Sit", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$s20FoundationEssentials4DataV8IteratorV_SitMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic ______Sit 20FoundationEssentials4DataV8IteratorV" to i64), i64 ptrtoint (ptr @"$s20FoundationEssentials4DataV8IteratorV_SitMD" to i64)) to i32), i32 -9 }, align 8
@_swiftEmptyArrayStorage = external global %struct._SwiftEmptyArrayStorage, align 8
@"$sSSN" = external global %swift.type, align 8
@"$sSSs25LosslessStringConvertiblesWP" = external global ptr, align 8
@"$sSSSTsWP" = external global ptr, align 8
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@_swift1_autolink_entries = private constant [228 x i8] c"-lFoundation\00-lswiftCore\00-lswift_StringProcessing\00-lswift_RegexParser\00-lswift_Concurrency\00-lswiftGlibc\00-lm\00-lpthread\00-lutil\00-ldl\00-lFoundationInternationalization\00-lFoundationEssentials\00-lswiftDispatch\00-ldispatch\00-lBlocksRuntime\00", section ".swift1_autolink_entries", no_sanitize_address, align 8
@llvm.used = appending global [4 x ptr] [ptr @"\01l_entry_point", ptr @__swift_reflection_version, ptr @_swift1_autolink_entries, ptr @main], section "llvm.metadata"

define protected noundef i32 @main(i32 %0, ptr readnone captures(none) %1) #0 {
entry:
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
  br label %324

20:                                               ; preds = %7
  %21 = and i64 %12, 1152921504606846976
  %.not65 = icmp eq i64 %21, 0
  br i1 %.not65, label %22, label %.thread81, !prof !11

22:                                               ; preds = %20
  br i1 %.not, label %26, label %23

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(ptr %2)
  %.elt21 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %24 = and i64 %12, 72057594037927935
  store i64 %9, ptr %2, align 8
  store i64 %24, ptr %.elt21, align 8
  %25 = trunc i64 %9 to i8
  switch i8 %25, label %58 [
    i8 45, label %28
    i8 43, label %57
  ]

26:                                               ; preds = %22
  %27 = and i64 %9, 1152921504606846976
  %.not63 = icmp eq i64 %27, 0
  br i1 %.not63, label %102, label %99, !prof !10

28:                                               ; preds = %23
  switch i64 %16, label %29 [
    i64 0, label %335
    i64 1, label %.thread84
  ], !prof !12

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %31 = getelementptr i8, ptr %2, i64 %16
  br label %40

.thread84:                                        ; preds = %58, %57, %28
  call void @llvm.lifetime.end.p0(ptr %2)
  br label %32

.loopexit90.loopexit:                             ; preds = %82, %87, %90, %95
  %.sroa.17.0.ph = phi i8 [ 0, %95 ], [ 1, %90 ], [ 1, %87 ], [ 1, %82 ]
  %.sroa.0.0.ph = phi i64 [ %96, %95 ], [ 0, %90 ], [ 0, %87 ], [ 0, %82 ]
  br label %.loopexit90

.loopexit90.loopexit10:                           ; preds = %40, %45, %48, %53
  %.sroa.17.0.ph11 = phi i8 [ 0, %53 ], [ 1, %48 ], [ 1, %45 ], [ 1, %40 ]
  %.sroa.0.0.ph12 = phi i64 [ %54, %53 ], [ 0, %48 ], [ 0, %45 ], [ 0, %40 ]
  br label %.loopexit90

.loopexit90.loopexit13:                           ; preds = %63, %68, %71, %76
  %.sroa.17.0.ph14 = phi i8 [ 0, %76 ], [ 1, %71 ], [ 1, %68 ], [ 1, %63 ]
  %.sroa.0.0.ph15 = phi i64 [ %77, %76 ], [ 0, %71 ], [ 0, %68 ], [ 0, %63 ]
  br label %.loopexit90

.loopexit90:                                      ; preds = %.loopexit90.loopexit13, %.loopexit90.loopexit10, %.loopexit90.loopexit
  %.sroa.17.0 = phi i8 [ %.sroa.17.0.ph, %.loopexit90.loopexit ], [ %.sroa.17.0.ph11, %.loopexit90.loopexit10 ], [ %.sroa.17.0.ph14, %.loopexit90.loopexit13 ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.ph, %.loopexit90.loopexit ], [ %.sroa.0.0.ph12, %.loopexit90.loopexit10 ], [ %.sroa.0.0.ph15, %.loopexit90.loopexit13 ]
  call void @llvm.lifetime.end.p0(ptr %2)
  br label %32

32:                                               ; preds = %.thread, %.loopexit90, %.thread84
  %.sroa.0.280 = phi i64 [ %111, %.thread ], [ %.sroa.0.0, %.loopexit90 ], [ 0, %.thread84 ]
  %.sroa.17.279 = phi i8 [ %110, %.thread ], [ %.sroa.17.0, %.loopexit90 ], [ 1, %.thread84 ]
  call void @swift_bridgeObjectRelease(ptr %10) #2
  br label %36

.thread81:                                        ; preds = %20
  %33 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSSSiADSSRszsAER_r0_lIetgyr_Tpq5Si_Tg5"(i64 %9, ptr %10, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  %34 = extractvalue { i64, i8 } %33, 0
  %35 = extractvalue { i64, i8 } %33, 1
  br label %36

36:                                               ; preds = %.thread81, %32
  %37 = phi i64 [ %34, %.thread81 ], [ %.sroa.0.280, %32 ]
  %38 = phi i8 [ %35, %.thread81 ], [ %.sroa.17.279, %32 ]
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %odessy.chk1, label %112

40:                                               ; preds = %53, %29
  %41 = phi ptr [ %30, %29 ], [ %55, %53 ]
  %42 = phi i64 [ 0, %29 ], [ %54, %53 ]
  %43 = load i8, ptr %41, align 1
  %44 = add i8 %43, -48
  %or.cond = icmp ult i8 %44, 10
  br i1 %or.cond, label %45, label %.loopexit90.loopexit10, !prof !13

45:                                               ; preds = %40
  %46 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %42, i64 10)
  %47 = extractvalue { i64, i1 } %46, 1
  br i1 %47, label %.loopexit90.loopexit10, label %48

48:                                               ; preds = %45
  %49 = extractvalue { i64, i1 } %46, 0
  %50 = zext nneg i8 %44 to i64
  %51 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %49, i64 %50)
  %52 = extractvalue { i64, i1 } %51, 1
  br i1 %52, label %.loopexit90.loopexit10, label %53, !prof !10

53:                                               ; preds = %48
  %54 = extractvalue { i64, i1 } %51, 0
  %55 = getelementptr inbounds nuw i8, ptr %41, i64 1
  %56 = icmp eq ptr %55, %31
  br i1 %56, label %.loopexit90.loopexit10, label %40

57:                                               ; preds = %23
  switch i64 %16, label %60 [
    i64 0, label %334
    i64 1, label %.thread84
  ], !prof !12

58:                                               ; preds = %23
  %59 = icmp eq i64 %16, 0
  br i1 %59, label %.thread84, label %80, !prof !10

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %62 = getelementptr i8, ptr %2, i64 %16
  br label %63

63:                                               ; preds = %76, %60
  %64 = phi ptr [ %61, %60 ], [ %78, %76 ]
  %65 = phi i64 [ 0, %60 ], [ %77, %76 ]
  %66 = load i8, ptr %64, align 1
  %67 = add i8 %66, -48
  %or.cond26 = icmp ult i8 %67, 10
  br i1 %or.cond26, label %68, label %.loopexit90.loopexit13, !prof !13

68:                                               ; preds = %63
  %69 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %65, i64 10)
  %70 = extractvalue { i64, i1 } %69, 1
  br i1 %70, label %.loopexit90.loopexit13, label %71

71:                                               ; preds = %68
  %72 = extractvalue { i64, i1 } %69, 0
  %73 = zext nneg i8 %67 to i64
  %74 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %72, i64 %73)
  %75 = extractvalue { i64, i1 } %74, 1
  br i1 %75, label %.loopexit90.loopexit13, label %76, !prof !10

76:                                               ; preds = %71
  %77 = extractvalue { i64, i1 } %74, 0
  %78 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %79 = icmp eq ptr %78, %62
  br i1 %79, label %.loopexit90.loopexit13, label %63

80:                                               ; preds = %58
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 %16
  br label %82

82:                                               ; preds = %95, %80
  %83 = phi ptr [ %2, %80 ], [ %97, %95 ]
  %84 = phi i64 [ 0, %80 ], [ %96, %95 ]
  %85 = load i8, ptr %83, align 1
  %86 = add i8 %85, -48
  %or.cond27 = icmp ult i8 %86, 10
  br i1 %or.cond27, label %87, label %.loopexit90.loopexit, !prof !13

87:                                               ; preds = %82
  %88 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %84, i64 10)
  %89 = extractvalue { i64, i1 } %88, 1
  br i1 %89, label %.loopexit90.loopexit, label %90

90:                                               ; preds = %87
  %91 = extractvalue { i64, i1 } %88, 0
  %92 = zext nneg i8 %86 to i64
  %93 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %91, i64 %92)
  %94 = extractvalue { i64, i1 } %93, 1
  br i1 %94, label %.loopexit90.loopexit, label %95, !prof !10

95:                                               ; preds = %90
  %96 = extractvalue { i64, i1 } %93, 0
  %97 = getelementptr inbounds nuw i8, ptr %83, i64 1
  %98 = icmp eq ptr %97, %81
  br i1 %98, label %.loopexit90.loopexit, label %82

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
  %.not64 = icmp eq ptr %109, null
  tail call void @llvm.assume(i1 %.not64)
  %110 = extractvalue { i64, i8 } %108, 1
  %111 = extractvalue { i64, i8 } %108, 0
  br label %32

112:                                              ; preds = %36
  store i64 %37, ptr @"$s4sha15itersSivp", align 8
  %113 = call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 16
  %115 = load i64, ptr %114, align 8, !range !9
  %116 = icmp samesign ult i64 %115, 3
  br i1 %116, label %odessy.chk2, label %117, !prof !10

117:                                              ; preds = %112
  %118 = getelementptr inbounds nuw i8, ptr %113, i64 64
  %119 = load i64, ptr %118, align 8
  %._guts2._object._object = getelementptr inbounds nuw i8, ptr %113, i64 72
  %120 = load ptr, ptr %._guts2._object._object, align 8
  %121 = call ptr @swift_bridgeObjectRetain(ptr returned %120) #2
  call void @swift_release(ptr nonnull %113) #2
  %122 = call swiftcc { ptr, i64 } @"$s20FoundationEssentials3URLV15fileURLWithPathACSSh_tcfC"(i64 %119, ptr %120)
  call void @swift_bridgeObjectRelease(ptr %120) #2
  %123 = extractvalue { ptr, i64 } %122, 0
  %124 = extractvalue { ptr, i64 } %122, 1
  %125 = call swiftcc { i64, i64 } @"$s20FoundationEssentials4DataV10contentsOf7optionsAcA3URLVh_AC14ReadingOptionsVtKcfC"(ptr %123, i64 %124, i64 0, ptr swiftself undef, ptr noalias nonnull swifterror captures(none) dereferenceable(8) %swifterror)
  %126 = load ptr, ptr %swifterror, align 8
  %.not66 = icmp eq ptr %126, null
  call void @swift_release(ptr %123) #2
  br i1 %.not66, label %127, label %321

127:                                              ; preds = %117
  %128 = extractvalue { i64, i64 } %125, 1
  %129 = extractvalue { i64, i64 } %125, 0
  %130 = inttoptr i64 %124 to ptr
  call void @swift_release(ptr %130) #2
  %131 = call swiftcc ptr @"$ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlF20FoundationEssentials4DataV_Tgq5"(i64 %129, i64 %128)
  call void @"$s20FoundationEssentials4DataV15_RepresentationOWOe"(i64 %129, i64 %128)
  store ptr %131, ptr @"$s4sha14dataSays5UInt8VGvp", align 8
  store i32 0, ptr @"$s4sha15finals6UInt32Vvp", align 4
  %132 = load i64, ptr @"$s4sha15itersSivp", align 8
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %odessy.chk3, label %134, !prof !10

134:                                              ; preds = %127
  %135 = icmp eq i64 %132, 0
  br i1 %135, label %.loopexit89, label %.preheader88.preheader.preheader

.preheader88.preheader.preheader:                 ; preds = %134
  br label %.preheader88.preheader

.loopexit89.loopexit:                             ; preds = %.loopexit
  %.pre = load i32, ptr @"$s4sha15finals6UInt32Vvp", align 4
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit89.loopexit, %134
  %136 = phi i32 [ %.pre, %.loopexit89.loopexit ], [ 0, %134 ]
  %137 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMD") #14
  %138 = call noalias ptr @swift_allocObject(ptr %137, i64 64, i64 7) #2
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 16
  store i64 1, ptr %139, align 8
  %._storage18._capacityAndFlags = getelementptr inbounds nuw i8, ptr %138, i64 24
  store i64 2, ptr %._storage18._capacityAndFlags, align 8
  %140 = getelementptr inbounds nuw i8, ptr %138, i64 32
  %141 = getelementptr inbounds nuw i8, ptr %138, i64 56
  store ptr @"$ss6UInt32VN", ptr %141, align 8
  store i32 %136, ptr %140, align 4
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %138, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %138) #2
  ret i32 0

.preheader88.preheader:                           ; preds = %.preheader88.preheader.preheader, %.loopexit
  %142 = phi i64 [ %146, %.loopexit ], [ 0, %.preheader88.preheader.preheader ]
  %143 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 80, ptr nonnull @"$ss6UInt32VN")
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 16
  store i64 80, ptr %144, align 8
  %145 = getelementptr i8, ptr %143, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %145, i8 0, i64 320, i1 false)
  %146 = add nuw nsw i64 %142, 1
  %147 = load ptr, ptr @"$s4sha14dataSays5UInt8VGvp", align 8
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 16
  %149 = load i64, ptr %148, align 8, !range !9
  %150 = lshr i64 %149, 6
  %151 = icmp samesign ult i64 %149, 64
  br i1 %151, label %.loopexit, label %152

152:                                              ; preds = %.preheader88.preheader
  %153 = getelementptr inbounds nuw i8, ptr %147, i64 32
  %invariant.gep = getelementptr i8, ptr %143, i64 -24
  %invariant.gep149 = getelementptr i8, ptr %143, i64 -32
  %scevgep = getelementptr i8, ptr %143, i64 36
  %invariant.gep211 = getelementptr i8, ptr %147, i64 32
  %invariant.gep213 = getelementptr i8, ptr %147, i64 36
  br label %162

.loopexit.loopexit:                               ; preds = %279
  %.lcssa9 = phi i32 [ %280, %279 ]
  %.lcssa8 = phi i32 [ %281, %279 ]
  %.lcssa7 = phi i32 [ %282, %279 ]
  %.lcssa6 = phi i32 [ %283, %279 ]
  %.lcssa5 = phi i32 [ %284, %279 ]
  %154 = add i32 %.lcssa6, %.lcssa5
  %155 = add i32 %154, %.lcssa7
  %156 = add i32 %155, %.lcssa8
  %157 = add i32 %156, %.lcssa9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader88.preheader
  %158 = phi i32 [ -1009589778, %.preheader88.preheader ], [ %157, %.loopexit.loopexit ]
  %159 = load i32, ptr @"$s4sha15finals6UInt32Vvp", align 4
  %160 = add i32 %158, %159
  store i32 %160, ptr @"$s4sha15finals6UInt32Vvp", align 4
  call void @swift_release(ptr nonnull %143) #2
  %161 = icmp eq i64 %146, %132
  br i1 %161, label %.loopexit89.loopexit, label %.preheader88.preheader

162:                                              ; preds = %279, %152
  %163 = phi i32 [ -1009589776, %152 ], [ %284, %279 ]
  %164 = phi i32 [ 271733878, %152 ], [ %283, %279 ]
  %165 = phi i32 [ -1732584194, %152 ], [ %282, %279 ]
  %166 = phi i32 [ -271733879, %152 ], [ %281, %279 ]
  %167 = phi i32 [ 1732584193, %152 ], [ %280, %279 ]
  %168 = phi i64 [ 0, %152 ], [ %204, %279 ]
  %169 = shl nuw nsw i64 %168, 6
  %umax176 = call i64 @llvm.umax.i64(i64 %149, i64 %169)
  %170 = mul nsw i64 %168, -64
  %171 = or disjoint i64 %170, 3
  %172 = add i64 %umax176, %171
  %173 = lshr i64 %172, 2
  %174 = or disjoint i64 %169, 1
  %umax177 = call i64 @llvm.umax.i64(i64 %149, i64 %174)
  %175 = or disjoint i64 %170, 2
  %176 = add i64 %umax177, %175
  %177 = lshr i64 %176, 2
  %umin178 = call i64 @llvm.umin.i64(i64 %173, i64 %177)
  %178 = or disjoint i64 %169, 2
  %umax179 = call i64 @llvm.umax.i64(i64 %149, i64 %178)
  %179 = or disjoint i64 %170, 1
  %180 = add i64 %umax179, %179
  %181 = lshr i64 %180, 2
  %umin180 = call i64 @llvm.umin.i64(i64 %umin178, i64 %181)
  %182 = or disjoint i64 %169, 3
  %umax181 = call i64 @llvm.umax.i64(i64 %149, i64 %182)
  %183 = add i64 %umax181, %170
  %184 = lshr i64 %183, 2
  %umin182 = call i64 @llvm.umin.i64(i64 %umin180, i64 %184)
  %umin183 = call i64 @llvm.umin.i64(i64 %umin182, i64 15)
  %185 = add nuw nsw i64 %umin183, 1
  %186 = shl nuw nsw i64 %168, 6
  %umax = call i64 @llvm.umax.i64(i64 %149, i64 %186)
  %187 = mul nsw i64 %168, -64
  %188 = or disjoint i64 %187, 3
  %189 = add i64 %umax, %188
  %190 = lshr i64 %189, 2
  %191 = or disjoint i64 %186, 1
  %umax166 = call i64 @llvm.umax.i64(i64 %149, i64 %191)
  %192 = or disjoint i64 %187, 2
  %193 = add i64 %umax166, %192
  %194 = lshr i64 %193, 2
  %umin = call i64 @llvm.umin.i64(i64 %190, i64 %194)
  %195 = or disjoint i64 %186, 2
  %umax167 = call i64 @llvm.umax.i64(i64 %149, i64 %195)
  %196 = or disjoint i64 %187, 1
  %197 = add i64 %umax167, %196
  %198 = lshr i64 %197, 2
  %umin168 = call i64 @llvm.umin.i64(i64 %umin, i64 %198)
  %199 = or disjoint i64 %186, 3
  %umax169 = call i64 @llvm.umax.i64(i64 %149, i64 %199)
  %200 = add i64 %umax169, %187
  %201 = lshr i64 %200, 2
  %umin170 = call i64 @llvm.umin.i64(i64 %umin168, i64 %201)
  %umin171 = call i64 @llvm.umin.i64(i64 %umin170, i64 15)
  %202 = shl nuw nsw i64 %umin171, 2
  %scevgep172 = getelementptr i8, ptr %scevgep, i64 %202
  %gep212 = getelementptr i8, ptr %invariant.gep211, i64 %186
  %gep214 = getelementptr i8, ptr %invariant.gep213, i64 %186
  %scevgep175 = getelementptr i8, ptr %gep214, i64 %202
  %exitcond.not = icmp eq i64 %168, %150
  br i1 %exitcond.not, label %odessy.chk4, label %203, !prof !10

203:                                              ; preds = %162
  %204 = add nuw nsw i64 %168, 1
  %205 = shl i64 %168, 6
  %min.iters.check = icmp samesign ult i64 %umin182, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %203
  %bound0 = icmp ult ptr %145, %scevgep175
  %bound1 = icmp ult ptr %gep212, %scevgep172
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %185, 3
  %206 = icmp eq i64 %n.mod.vf, 0
  %207 = select i1 %206, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %185, %207
  %208 = getelementptr inbounds nuw %Ts5UInt8V, ptr %153, i64 %205
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %209 = shl nuw nsw i64 %index, 2
  %210 = getelementptr inbounds nuw i8, ptr %208, i64 %209
  %wide.vec = load <16 x i8>, ptr %210, align 1
  %strided.vec = shufflevector <16 x i8> %wide.vec, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec184 = shufflevector <16 x i8> %wide.vec, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec185 = shufflevector <16 x i8> %wide.vec, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec186 = shufflevector <16 x i8> %wide.vec, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %211 = zext <4 x i8> %strided.vec to <4 x i32>
  %212 = shl nuw <4 x i32> %211, splat (i32 24)
  %213 = zext <4 x i8> %strided.vec184 to <4 x i32>
  %214 = shl nuw nsw <4 x i32> %213, splat (i32 16)
  %215 = or disjoint <4 x i32> %214, %212
  %216 = zext <4 x i8> %strided.vec185 to <4 x i32>
  %217 = shl nuw nsw <4 x i32> %216, splat (i32 8)
  %218 = or disjoint <4 x i32> %215, %217
  %219 = zext <4 x i8> %strided.vec186 to <4 x i32>
  %220 = or disjoint <4 x i32> %218, %219
  %221 = getelementptr inbounds nuw %Ts6UInt32V, ptr %145, i64 %index
  store <4 x i32> %220, ptr %221, align 4, !alias.scope !14, !noalias !17
  %index.next = add nuw i64 %index, 4
  %222 = icmp eq i64 %index.next, %n.vec
  br i1 %222, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !19

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %203
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %203 ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %234, %scalar.ph.preheader
  %223 = phi i64 [ %224, %234 ], [ %.ph, %scalar.ph.preheader ]
  %224 = add nuw nsw i64 %223, 1
  %225 = shl nuw nsw i64 %223, 2
  %226 = add nuw nsw i64 %205, %225
  %.not69 = icmp ult i64 %226, %149
  br i1 %.not69, label %227, label %odessy.chk5, !prof !11

227:                                              ; preds = %scalar.ph
  %228 = or disjoint i64 %226, 1
  %.not70 = icmp samesign ult i64 %228, %149
  br i1 %.not70, label %229, label %odessy.chk6, !prof !11

229:                                              ; preds = %227
  %230 = or disjoint i64 %226, 2
  %.not71 = icmp samesign ult i64 %230, %149
  br i1 %.not71, label %231, label %odessy.chk7, !prof !11

231:                                              ; preds = %229
  %232 = or disjoint i64 %226, 3
  %.not112 = icmp samesign ult i64 %232, %149
  br i1 %.not112, label %233, label %odessy.chk8, !prof !11

233:                                              ; preds = %231
  %.not72 = icmp samesign ult i64 %223, 80
  br i1 %.not72, label %234, label %odessy.chk9, !prof !11

234:                                              ; preds = %233
  %235 = getelementptr inbounds nuw %Ts5UInt8V, ptr %153, i64 %226
  %236 = load i8, ptr %235, align 1
  %237 = zext i8 %236 to i32
  %238 = shl nuw i32 %237, 24
  %239 = getelementptr inbounds nuw %Ts5UInt8V, ptr %153, i64 %228
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = shl nuw nsw i32 %241, 16
  %243 = or disjoint i32 %242, %238
  %244 = getelementptr inbounds nuw %Ts5UInt8V, ptr %153, i64 %230
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i32
  %247 = shl nuw nsw i32 %246, 8
  %248 = or disjoint i32 %243, %247
  %249 = getelementptr inbounds nuw %Ts5UInt8V, ptr %153, i64 %232
  %250 = load i8, ptr %249, align 1
  %251 = zext i8 %250 to i32
  %252 = or disjoint i32 %248, %251
  %253 = getelementptr inbounds nuw %Ts6UInt32V, ptr %145, i64 %223
  store i32 %252, ptr %253, align 4
  %254 = icmp eq i64 %224, 16
  br i1 %254, label %.preheader87.preheader.preheader, label %scalar.ph, !llvm.loop !22

.preheader87.preheader.preheader:                 ; preds = %234
  br label %.preheader87.preheader

.preheader87.preheader:                           ; preds = %.preheader87.preheader.preheader, %257
  %255 = phi i64 [ %258, %257 ], [ 16, %.preheader87.preheader.preheader ]
  %256 = add nsw i64 %255, -3
  %.not73 = icmp samesign ult i64 %256, 80
  br i1 true, label %257, label %odessy.chk10, !prof !11

257:                                              ; preds = %.preheader87.preheader
  %258 = add nuw nsw i64 %255, 1
  %259 = getelementptr inbounds nuw %Ts6UInt32V, ptr %145, i64 %256
  %260 = load i32, ptr %259, align 4
  %261 = getelementptr %Ts6UInt32V, ptr %143, i64 %255
  %262 = load i32, ptr %261, align 4
  %263 = xor i32 %262, %260
  %gep = getelementptr %Ts6UInt32V, ptr %invariant.gep, i64 %255
  %264 = load i32, ptr %gep, align 4
  %265 = xor i32 %263, %264
  %gep150 = getelementptr %Ts6UInt32V, ptr %invariant.gep149, i64 %255
  %266 = load i32, ptr %gep150, align 4
  %267 = xor i32 %265, %266
  %268 = call i32 @llvm.fshl.i32(i32 %267, i32 %267, i32 1)
  %269 = getelementptr inbounds nuw %Ts6UInt32V, ptr %145, i64 %255
  store i32 %268, ptr %269, align 4
  %270 = icmp eq i64 %258, 80
  br i1 %270, label %.preheader.preheader, label %.preheader87.preheader

.preheader.preheader:                             ; preds = %257
  br i1 true, label %.preheader.preheader28, label %main.pseudo.exit

.preheader.preheader28:                           ; preds = %.preheader.preheader
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader28, %306
  %271 = phi i32 [ %273, %306 ], [ %163, %.preheader.preheader28 ]
  %272 = phi i32 [ %315, %306 ], [ %167, %.preheader.preheader28 ]
  %273 = phi i32 [ %274, %306 ], [ %164, %.preheader.preheader28 ]
  %274 = phi i32 [ %316, %306 ], [ %165, %.preheader.preheader28 ]
  %275 = phi i32 [ %272, %306 ], [ %166, %.preheader.preheader28 ]
  %276 = phi i64 [ %277, %306 ], [ 0, %.preheader.preheader28 ]
  %277 = add nuw nsw i64 %276, 1
  %278 = icmp samesign ult i64 %276, 20
  br i1 true, label %286, label %291

.loopexit21:                                      ; preds = %364
  %.lcssa4.ph = phi i32 [ %373, %364 ]
  %.lcssa3.ph = phi i32 [ %374, %364 ]
  %.lcssa2.ph = phi i32 [ %337, %364 ]
  %.lcssa1.ph = phi i32 [ %338, %364 ]
  %.lcssa.ph = phi i32 [ %339, %364 ]
  br label %279

279:                                              ; preds = %.loopexit21, %main.exit.selector
  %.lcssa4 = phi i32 [ %.lcssa27, %main.exit.selector ], [ %.lcssa4.ph, %.loopexit21 ]
  %.lcssa3 = phi i32 [ %.lcssa26, %main.exit.selector ], [ %.lcssa3.ph, %.loopexit21 ]
  %.lcssa2 = phi i32 [ %.lcssa25, %main.exit.selector ], [ %.lcssa2.ph, %.loopexit21 ]
  %.lcssa1 = phi i32 [ %.lcssa24, %main.exit.selector ], [ %.lcssa1.ph, %.loopexit21 ]
  %.lcssa = phi i32 [ %.lcssa23, %main.exit.selector ], [ %.lcssa.ph, %.loopexit21 ]
  %280 = add i32 %.lcssa4, %167
  %281 = add i32 %.lcssa2, %166
  %282 = add i32 %.lcssa3, %165
  %283 = add i32 %.lcssa, %164
  %284 = add i32 %.lcssa1, %163
  %285 = icmp eq i64 %204, %150
  br i1 %285, label %.loopexit.loopexit, label %162

286:                                              ; preds = %.preheader
  %287 = and i32 %275, %274
  %288 = xor i32 %275, -1
  %289 = and i32 %273, %288
  %290 = or i32 %287, %289
  br label %306

291:                                              ; preds = %.preheader
  %292 = icmp samesign ult i64 %276, 40
  br i1 true, label %293, label %296

293:                                              ; preds = %291
  %294 = xor i32 %274, %273
  %295 = xor i32 %294, %275
  br label %306

296:                                              ; preds = %291
  %297 = icmp samesign ult i64 %276, 60
  br i1 true, label %298, label %303

298:                                              ; preds = %296
  %299 = or i32 %274, %273
  %300 = and i32 %275, %299
  %301 = and i32 %274, %273
  %302 = or i32 %300, %301
  br label %306

303:                                              ; preds = %296
  %304 = xor i32 %274, %273
  %305 = xor i32 %304, %275
  br label %306

306:                                              ; preds = %303, %298, %293, %286
  %307 = phi i32 [ -899497514, %303 ], [ -1894007588, %298 ], [ 1859775393, %293 ], [ 1518500249, %286 ]
  %308 = phi i32 [ %305, %303 ], [ %302, %298 ], [ %295, %293 ], [ %290, %286 ]
  %309 = call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 5)
  %310 = getelementptr inbounds nuw %Ts6UInt32V, ptr %145, i64 %276
  %311 = load i32, ptr %310, align 4
  %312 = add i32 %309, %271
  %313 = add i32 %312, %307
  %314 = add i32 %313, %308
  %315 = add i32 %314, %311
  %316 = call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 30)
  %317 = icmp eq i64 %277, 80
  %318 = icmp ult i64 %277, 20
  %319 = xor i1 %318, true
  br i1 %319, label %main.exit.selector, label %.preheader

main.exit.selector:                               ; preds = %306
  %.lcssa27 = phi i32 [ %315, %306 ]
  %.lcssa26 = phi i32 [ %316, %306 ]
  %.lcssa25 = phi i32 [ %272, %306 ]
  %.lcssa24 = phi i32 [ %273, %306 ]
  %.lcssa23 = phi i32 [ %274, %306 ]
  %.lcssa22 = phi i64 [ %277, %306 ]
  %320 = icmp ult i64 %.lcssa22, 80
  br i1 %320, label %main.pseudo.exit, label %279

main.pseudo.exit:                                 ; preds = %main.exit.selector, %.preheader.preheader
  %.copy = phi i32 [ %163, %.preheader.preheader ], [ %.lcssa24, %main.exit.selector ]
  %.copy16 = phi i32 [ %167, %.preheader.preheader ], [ %.lcssa27, %main.exit.selector ]
  %.copy17 = phi i32 [ %164, %.preheader.preheader ], [ %.lcssa23, %main.exit.selector ]
  %.copy18 = phi i32 [ %165, %.preheader.preheader ], [ %.lcssa26, %main.exit.selector ]
  %.copy19 = phi i32 [ %166, %.preheader.preheader ], [ %.lcssa25, %main.exit.selector ]
  %.copy20 = phi i64 [ 0, %.preheader.preheader ], [ %.lcssa22, %main.exit.selector ]
  %indvar.end = phi i64 [ 0, %.preheader.preheader ], [ %.lcssa22, %main.exit.selector ]
  br label %postloop

321:                                              ; preds = %117
  %322 = inttoptr i64 %124 to ptr
  call void @swift_release(ptr %322) #2
  call swiftcc void @swift_unexpectedError(ptr nonnull %126, ptr nonnull @".str.15.sha1/sha1.swift", i64 15, i1 true, i64 6)
  unreachable

323:                                              ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

324:                                              ; preds = %19
  call void asm sideeffect "", "n"(i32 1) #2
  call void @llvm.trap()
  unreachable

325:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 2) #2
  call void @llvm.trap()
  unreachable

326:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 3) #2
  call void @llvm.trap()
  unreachable

327:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 7) #2
  call void @llvm.trap()
  unreachable

328:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 12) #2
  call void @llvm.trap()
  unreachable

329:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 13) #2
  call void @llvm.trap()
  unreachable

330:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 14) #2
  call void @llvm.trap()
  unreachable

331:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 16) #2
  call void @llvm.trap()
  unreachable

332:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 18) #2
  call void @llvm.trap()
  unreachable

333:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 21) #2
  call void @llvm.trap()
  unreachable

334:                                              ; preds = %57
  tail call void asm sideeffect "", "n"(i32 27) #2
  tail call void @llvm.trap()
  unreachable

335:                                              ; preds = %28
  tail call void asm sideeffect "", "n"(i32 28) #2
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

odessy.chk3:                                      ; preds = %127
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %162
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %scalar.ph
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %227
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %229
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %231
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %233
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %.preheader87.preheader
  call void @odessy.chk(i32 10)
  unreachable

postloop:                                         ; preds = %main.pseudo.exit
  br label %.preheader.postloop

.preheader.postloop:                              ; preds = %postloop, %364
  %336 = phi i32 [ %338, %364 ], [ %.copy, %postloop ]
  %337 = phi i32 [ %373, %364 ], [ %.copy16, %postloop ]
  %338 = phi i32 [ %339, %364 ], [ %.copy17, %postloop ]
  %339 = phi i32 [ %374, %364 ], [ %.copy18, %postloop ]
  %340 = phi i32 [ %337, %364 ], [ %.copy19, %postloop ]
  %341 = phi i64 [ %342, %364 ], [ %.copy20, %postloop ]
  %342 = add nuw nsw i64 %341, 1
  %343 = icmp samesign ult i64 %341, 20
  br i1 %343, label %359, label %344

344:                                              ; preds = %.preheader.postloop
  %345 = icmp samesign ult i64 %341, 40
  br i1 %345, label %356, label %346

346:                                              ; preds = %344
  %347 = icmp samesign ult i64 %341, 60
  br i1 %347, label %351, label %348

348:                                              ; preds = %346
  %349 = xor i32 %339, %338
  %350 = xor i32 %349, %340
  br label %364

351:                                              ; preds = %346
  %352 = or i32 %339, %338
  %353 = and i32 %340, %352
  %354 = and i32 %339, %338
  %355 = or i32 %353, %354
  br label %364

356:                                              ; preds = %344
  %357 = xor i32 %339, %338
  %358 = xor i32 %357, %340
  br label %364

359:                                              ; preds = %.preheader.postloop
  %360 = and i32 %340, %339
  %361 = xor i32 %340, -1
  %362 = and i32 %338, %361
  %363 = or i32 %360, %362
  br label %364

364:                                              ; preds = %359, %356, %351, %348
  %365 = phi i32 [ -899497514, %348 ], [ -1894007588, %351 ], [ 1859775393, %356 ], [ 1518500249, %359 ]
  %366 = phi i32 [ %350, %348 ], [ %355, %351 ], [ %358, %356 ], [ %363, %359 ]
  %367 = call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 5)
  %368 = getelementptr inbounds nuw %Ts6UInt32V, ptr %145, i64 %341
  %369 = load i32, ptr %368, align 4
  %370 = add i32 %367, %336
  %371 = add i32 %370, %365
  %372 = add i32 %371, %366
  %373 = add i32 %372, %369
  %374 = call i32 @llvm.fshl.i32(i32 %340, i32 %340, i32 30)
  %375 = icmp eq i64 %342, 80
  br i1 %375, label %.loopexit21, label %.preheader.postloop, !llvm.loop !23, !loop_constrainer.loop.clone !28
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

.loopexit.loopexit:                               ; preds = %113, %116, %122, %129
  %.ph = phi i64 [ 0, %113 ], [ 0, %116 ], [ %123, %122 ], [ 0, %129 ]
  %.ph1 = phi i8 [ 1, %113 ], [ 1, %116 ], [ 0, %122 ], [ 1, %129 ]
  br label %.loopexit

.loopexit.loopexit2:                              ; preds = %34, %37, %43, %50
  %.ph3 = phi i64 [ 0, %34 ], [ 0, %37 ], [ %44, %43 ], [ 0, %50 ]
  %.ph4 = phi i8 [ 1, %34 ], [ 1, %37 ], [ 0, %43 ], [ 1, %50 ]
  br label %.loopexit

.loopexit.loopexit5:                              ; preds = %78, %81, %87, %94
  %.ph6 = phi i64 [ 0, %78 ], [ 0, %81 ], [ %88, %87 ], [ 0, %94 ]
  %.ph7 = phi i8 [ 1, %78 ], [ 1, %81 ], [ 0, %87 ], [ 1, %94 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit5, %.loopexit.loopexit2, %.loopexit.loopexit, %60, %58, %55, %12, %9
  %22 = phi i64 [ 0, %9 ], [ 0, %12 ], [ 0, %55 ], [ 0, %60 ], [ 0, %58 ], [ %.ph, %.loopexit.loopexit ], [ %.ph3, %.loopexit.loopexit2 ], [ %.ph6, %.loopexit.loopexit5 ]
  %23 = phi i8 [ 1, %9 ], [ 0, %12 ], [ 1, %55 ], [ 0, %60 ], [ 1, %58 ], [ %.ph1, %.loopexit.loopexit ], [ %.ph4, %.loopexit.loopexit2 ], [ %.ph7, %.loopexit.loopexit5 ]
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
  br i1 %36, label %.loopexit.loopexit2, label %37

37:                                               ; preds = %34
  %38 = add i8 %31, %.sink
  %39 = extractvalue { i64, i1 } %35, 0
  %40 = zext i8 %38 to i64
  %41 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %39, i64 %40)
  %42 = extractvalue { i64, i1 } %41, 1
  br i1 %42, label %.loopexit.loopexit2, label %43, !prof !10

43:                                               ; preds = %37
  %44 = extractvalue { i64, i1 } %41, 0
  %45 = getelementptr inbounds nuw i8, ptr %29, i64 1
  %46 = icmp eq ptr %45, %27
  br i1 %46, label %.loopexit.loopexit2, label %28

47:                                               ; preds = %28
  %48 = icmp ugt i8 %31, 64
  %49 = icmp ult i8 %31, %20
  %or.cond4 = select i1 %48, i1 %49, i1 false
  br i1 %or.cond4, label %34, label %50, !prof !13

50:                                               ; preds = %47
  %51 = icmp ugt i8 %31, 96
  %52 = icmp ult i8 %31, %19
  %or.cond5 = select i1 %51, i1 %52, i1 false
  br i1 %or.cond5, label %34, label %.loopexit.loopexit2, !prof !13

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
  br i1 %80, label %.loopexit.loopexit5, label %81

81:                                               ; preds = %78
  %82 = add i8 %75, %.sink55
  %83 = extractvalue { i64, i1 } %79, 0
  %84 = zext i8 %82 to i64
  %85 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %83, i64 %84)
  %86 = extractvalue { i64, i1 } %85, 1
  br i1 %86, label %.loopexit.loopexit5, label %87, !prof !10

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %85, 0
  %89 = getelementptr inbounds nuw i8, ptr %73, i64 1
  %90 = icmp eq ptr %89, %71
  br i1 %90, label %.loopexit.loopexit5, label %72

91:                                               ; preds = %72
  %92 = icmp ugt i8 %75, 64
  %93 = icmp ult i8 %75, %68
  %or.cond7 = select i1 %92, i1 %93, i1 false
  br i1 %or.cond7, label %78, label %94, !prof !13

94:                                               ; preds = %91
  %95 = icmp ugt i8 %75, 96
  %96 = icmp ult i8 %75, %67
  %or.cond8 = select i1 %95, i1 %96, i1 false
  br i1 %or.cond8, label %78, label %.loopexit.loopexit5, !prof !13

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
  br i1 %115, label %.loopexit.loopexit, label %116

116:                                              ; preds = %113
  %117 = add i8 %110, %.sink56
  %118 = extractvalue { i64, i1 } %114, 0
  %119 = zext i8 %117 to i64
  %120 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %118, i64 %119)
  %121 = extractvalue { i64, i1 } %120, 1
  br i1 %121, label %.loopexit.loopexit, label %122, !prof !10

122:                                              ; preds = %116
  %123 = extractvalue { i64, i1 } %120, 0
  %124 = getelementptr inbounds nuw i8, ptr %108, i64 1
  %125 = icmp eq ptr %124, %106
  br i1 %125, label %.loopexit.loopexit, label %107

126:                                              ; preds = %107
  %127 = icmp ugt i8 %110, 64
  %128 = icmp ult i8 %110, %104
  %or.cond10 = select i1 %127, i1 %128, i1 false
  br i1 %or.cond10, label %113, label %129, !prof !13

129:                                              ; preds = %126
  %130 = icmp ugt i8 %110, 96
  %131 = icmp ult i8 %110, %103
  %or.cond11 = select i1 %130, i1 %131, i1 false
  br i1 %or.cond11, label %113, label %.loopexit.loopexit, !prof !13

132:                                              ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

133:                                              ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %53
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk1:                                      ; preds = %7
  call void @odessy.chk(i32 12)
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

.loopexit81.loopexit:                             ; preds = %126, %129, %135, %142
  %.ph8 = phi i64 [ 0, %126 ], [ 0, %129 ], [ %136, %135 ], [ 0, %142 ]
  %.ph9 = phi i8 [ 1, %126 ], [ 1, %129 ], [ 0, %135 ], [ 1, %142 ]
  br label %.loopexit81

.loopexit81.loopexit10:                           ; preds = %52, %55, %61, %68
  %.ph11 = phi i64 [ 0, %52 ], [ 0, %55 ], [ %62, %61 ], [ 0, %68 ]
  %.ph12 = phi i8 [ 1, %52 ], [ 1, %55 ], [ 0, %61 ], [ 1, %68 ]
  br label %.loopexit81

.loopexit81.loopexit13:                           ; preds = %91, %94, %100, %107
  %.ph14 = phi i64 [ 0, %91 ], [ 0, %94 ], [ %101, %100 ], [ 0, %107 ]
  %.ph15 = phi i8 [ 1, %91 ], [ 1, %94 ], [ 0, %100 ], [ 1, %107 ]
  br label %.loopexit81

.loopexit81:                                      ; preds = %.loopexit81.loopexit13, %.loopexit81.loopexit10, %.loopexit81.loopexit, %72, %71, %27
  %39 = phi i64 [ 0, %72 ], [ 0, %27 ], [ 0, %71 ], [ %.ph8, %.loopexit81.loopexit ], [ %.ph11, %.loopexit81.loopexit10 ], [ %.ph14, %.loopexit81.loopexit13 ]
  %40 = phi i8 [ 1, %72 ], [ 1, %27 ], [ 1, %71 ], [ %.ph9, %.loopexit81.loopexit ], [ %.ph12, %.loopexit81.loopexit10 ], [ %.ph15, %.loopexit81.loopexit13 ]
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
  br i1 %54, label %.loopexit81.loopexit10, label %55

55:                                               ; preds = %52
  %56 = add i8 %49, %.sink
  %57 = extractvalue { i64, i1 } %53, 0
  %58 = zext i8 %56 to i64
  %59 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %57, i64 %58)
  %60 = extractvalue { i64, i1 } %59, 1
  br i1 %60, label %.loopexit81.loopexit10, label %61, !prof !10

61:                                               ; preds = %55
  %62 = extractvalue { i64, i1 } %59, 0
  %63 = getelementptr inbounds nuw i8, ptr %47, i64 1
  %64 = icmp eq ptr %63, %38
  br i1 %64, label %.loopexit81.loopexit10, label %46

65:                                               ; preds = %46
  %66 = icmp ugt i8 %49, 64
  %67 = icmp ult i8 %49, %35
  %or.cond10 = select i1 %66, i1 %67, i1 false
  br i1 %or.cond10, label %52, label %68, !prof !13

68:                                               ; preds = %65
  %69 = icmp ugt i8 %49, 96
  %70 = icmp ult i8 %49, %34
  %or.cond11 = select i1 %69, i1 %70, i1 false
  br i1 %or.cond11, label %52, label %.loopexit81.loopexit10, !prof !13

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
  br i1 %93, label %.loopexit81.loopexit13, label %94

94:                                               ; preds = %91
  %95 = add i8 %88, %.sink120
  %96 = extractvalue { i64, i1 } %92, 0
  %97 = zext i8 %95 to i64
  %98 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %96, i64 %97)
  %99 = extractvalue { i64, i1 } %98, 1
  br i1 %99, label %.loopexit81.loopexit13, label %100, !prof !10

100:                                              ; preds = %94
  %101 = extractvalue { i64, i1 } %98, 0
  %102 = getelementptr inbounds nuw i8, ptr %86, i64 1
  %103 = icmp eq ptr %102, %84
  br i1 %103, label %.loopexit81.loopexit13, label %85

104:                                              ; preds = %85
  %105 = icmp ugt i8 %88, 64
  %106 = icmp ult i8 %88, %81
  %or.cond13 = select i1 %105, i1 %106, i1 false
  br i1 %or.cond13, label %91, label %107, !prof !13

107:                                              ; preds = %104
  %108 = icmp ugt i8 %88, 96
  %109 = icmp ult i8 %88, %80
  %or.cond14 = select i1 %108, i1 %109, i1 false
  br i1 %or.cond14, label %91, label %.loopexit81.loopexit13, !prof !13

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
  br i1 %128, label %.loopexit81.loopexit, label %129

129:                                              ; preds = %126
  %130 = add i8 %123, %.sink121
  %131 = extractvalue { i64, i1 } %127, 0
  %132 = zext i8 %130 to i64
  %133 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %131, i64 %132)
  %134 = extractvalue { i64, i1 } %133, 1
  br i1 %134, label %.loopexit81.loopexit, label %135, !prof !10

135:                                              ; preds = %129
  %136 = extractvalue { i64, i1 } %133, 0
  %137 = getelementptr inbounds nuw i8, ptr %121, i64 1
  %138 = icmp eq ptr %137, %119
  br i1 %138, label %.loopexit81.loopexit, label %120

139:                                              ; preds = %120
  %140 = icmp ugt i8 %123, 64
  %141 = icmp ult i8 %123, %117
  %or.cond16 = select i1 %140, i1 %141, i1 false
  br i1 %or.cond16, label %126, label %142, !prof !13

142:                                              ; preds = %139
  %143 = icmp ugt i8 %123, 96
  %144 = icmp ult i8 %123, %116
  %or.cond17 = select i1 %143, i1 %144, i1 false
  br i1 %or.cond17, label %126, label %.loopexit81.loopexit, !prof !13

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

.loopexit.loopexit:                               ; preds = %262, %265, %271, %278
  %.ph = phi i64 [ 0, %262 ], [ 0, %265 ], [ %272, %271 ], [ 0, %278 ]
  %.ph1 = phi i8 [ 1, %262 ], [ 1, %265 ], [ 0, %271 ], [ 1, %278 ]
  br label %.loopexit

.loopexit.loopexit2:                              ; preds = %183, %186, %192, %199
  %.ph3 = phi i64 [ 0, %183 ], [ 0, %186 ], [ %193, %192 ], [ 0, %199 ]
  %.ph4 = phi i8 [ 1, %183 ], [ 1, %186 ], [ 0, %192 ], [ 1, %199 ]
  br label %.loopexit

.loopexit.loopexit5:                              ; preds = %227, %230, %236, %243
  %.ph6 = phi i64 [ 0, %227 ], [ 0, %230 ], [ %237, %236 ], [ 0, %243 ]
  %.ph7 = phi i8 [ 1, %227 ], [ 1, %230 ], [ 0, %236 ], [ 1, %243 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit5, %.loopexit.loopexit2, %.loopexit.loopexit, %209, %207, %204, %163, %160
  %173 = phi i64 [ 0, %160 ], [ 0, %163 ], [ 0, %204 ], [ 0, %209 ], [ 0, %207 ], [ %.ph, %.loopexit.loopexit ], [ %.ph3, %.loopexit.loopexit2 ], [ %.ph6, %.loopexit.loopexit5 ]
  %174 = phi i8 [ 1, %160 ], [ 0, %163 ], [ 1, %204 ], [ 0, %209 ], [ 1, %207 ], [ %.ph1, %.loopexit.loopexit ], [ %.ph4, %.loopexit.loopexit2 ], [ %.ph7, %.loopexit.loopexit5 ]
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
  br i1 %185, label %.loopexit.loopexit2, label %186

186:                                              ; preds = %183
  %187 = add i8 %180, %.sink122
  %188 = extractvalue { i64, i1 } %184, 0
  %189 = zext i8 %187 to i64
  %190 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %188, i64 %189)
  %191 = extractvalue { i64, i1 } %190, 1
  br i1 %191, label %.loopexit.loopexit2, label %192, !prof !10

192:                                              ; preds = %186
  %193 = extractvalue { i64, i1 } %190, 0
  %194 = getelementptr inbounds nuw i8, ptr %178, i64 1
  %195 = icmp eq ptr %194, %176
  br i1 %195, label %.loopexit.loopexit2, label %177

196:                                              ; preds = %177
  %197 = icmp ugt i8 %180, 64
  %198 = icmp ult i8 %180, %171
  %or.cond19 = select i1 %197, i1 %198, i1 false
  br i1 %or.cond19, label %183, label %199, !prof !13

199:                                              ; preds = %196
  %200 = icmp ugt i8 %180, 96
  %201 = icmp ult i8 %180, %170
  %or.cond20 = select i1 %200, i1 %201, i1 false
  br i1 %or.cond20, label %183, label %.loopexit.loopexit2, !prof !13

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
  br i1 %229, label %.loopexit.loopexit5, label %230

230:                                              ; preds = %227
  %231 = add i8 %224, %.sink123
  %232 = extractvalue { i64, i1 } %228, 0
  %233 = zext i8 %231 to i64
  %234 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %232, i64 %233)
  %235 = extractvalue { i64, i1 } %234, 1
  br i1 %235, label %.loopexit.loopexit5, label %236, !prof !10

236:                                              ; preds = %230
  %237 = extractvalue { i64, i1 } %234, 0
  %238 = getelementptr inbounds nuw i8, ptr %222, i64 1
  %239 = icmp eq ptr %238, %220
  br i1 %239, label %.loopexit.loopexit5, label %221

240:                                              ; preds = %221
  %241 = icmp ugt i8 %224, 64
  %242 = icmp ult i8 %224, %217
  %or.cond22 = select i1 %241, i1 %242, i1 false
  br i1 %or.cond22, label %227, label %243, !prof !13

243:                                              ; preds = %240
  %244 = icmp ugt i8 %224, 96
  %245 = icmp ult i8 %224, %216
  %or.cond23 = select i1 %244, i1 %245, i1 false
  br i1 %or.cond23, label %227, label %.loopexit.loopexit5, !prof !13

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
  br i1 %264, label %.loopexit.loopexit, label %265

265:                                              ; preds = %262
  %266 = add i8 %259, %.sink124
  %267 = extractvalue { i64, i1 } %263, 0
  %268 = zext i8 %266 to i64
  %269 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %267, i64 %268)
  %270 = extractvalue { i64, i1 } %269, 1
  br i1 %270, label %.loopexit.loopexit, label %271, !prof !10

271:                                              ; preds = %265
  %272 = extractvalue { i64, i1 } %269, 0
  %273 = getelementptr inbounds nuw i8, ptr %257, i64 1
  %274 = icmp eq ptr %273, %255
  br i1 %274, label %.loopexit.loopexit, label %256

275:                                              ; preds = %256
  %276 = icmp ugt i8 %259, 64
  %277 = icmp ult i8 %259, %253
  %or.cond25 = select i1 %276, i1 %277, i1 false
  br i1 %or.cond25, label %262, label %278, !prof !13

278:                                              ; preds = %275
  %279 = icmp ugt i8 %259, 96
  %280 = icmp ult i8 %259, %252
  %or.cond26 = select i1 %279, i1 %280, i1 false
  br i1 %or.cond26, label %262, label %.loopexit.loopexit, !prof !13

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
  call void @odessy.chk(i32 13)
  unreachable

odessy.chk1:                                      ; preds = %158
  call void @odessy.chk(i32 14)
  unreachable
}

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(ptr) local_unnamed_addr #2

declare swiftcc { ptr, i64 } @"$s20FoundationEssentials3URLV15fileURLWithPathACSSh_tcfC"(i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64 } @"$s20FoundationEssentials4DataV10contentsOf7optionsAcA3URLVh_AC14ReadingOptionsVtKcfC"(ptr, i64, i64, ptr swiftself, ptr noalias swifterror captures(none) dereferenceable(8)) local_unnamed_addr #0

declare swiftcc void @swift_unexpectedError(ptr, ptr, i64, i1, i64) local_unnamed_addr #0

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
  %25 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %22, i64 %24), !noalias !29
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
  call void @odessy.chk(i32 15)
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
  call void @odessy.chk(i32 16)
  unreachable

odessy.chk1:                                      ; preds = %30
  call void @odessy.chk(i32 17)
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
  %call.i = tail call i64 @malloc_usable_size(ptr noundef %6) #15
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
  %.not1 = xor i1 %48, true
  br i1 %.not1, label %49, label %odessy.chk1, !prof !11

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
  %82 = icmp ne i64 %39, %2
  br i1 %82, label %83, label %.loopexit17.loopexit

83:                                               ; preds = %80
  %84 = lshr i64 %81, 14
  %85 = icmp ne i64 %84, %14
  br i1 %85, label %86, label %.loopexit17.loopexit

86:                                               ; preds = %83
  %87 = add nuw i64 %39, 1
  %88 = getelementptr inbounds nuw i8, ptr %37, i64 1
  br label %36

.loopexit17.loopexit:                             ; preds = %80, %83
  %.lcssa = phi i64 [ %81, %80 ], [ %81, %83 ]
  %.ph = phi i64 [ %39, %83 ], [ %2, %80 ]
  br label %.loopexit17

.loopexit17:                                      ; preds = %.loopexit17.loopexit, %15, %9, %entry
  %.sink = phi i64 [ %3, %entry ], [ %3, %15 ], [ %3, %9 ], [ %.lcssa, %.loopexit17.loopexit ]
  %89 = phi i64 [ 0, %entry ], [ 0, %15 ], [ %2, %9 ], [ %.ph, %.loopexit17.loopexit ]
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
  call void @odessy.chk(i32 18)
  unreachable

odessy.chk1:                                      ; preds = %43
  call void @odessy.chk(i32 19)
  unreachable

odessy.chk2:                                      ; preds = %73
  call void @odessy.chk(i32 20)
  unreachable
}

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

define linkonce_odr hidden swiftcc ptr @"$ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlF20FoundationEssentials4DataV_Tgq5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %access-scratch = alloca [24 x i8], align 8
  %2 = alloca <{ %T20FoundationEssentials4DataV8IteratorV, %TSi }>, align 8
  %3 = lshr i64 %1, 62
  %4 = trunc nuw nsw i64 %3 to i8
  switch i8 %4, label %default.unreachable34 [
    i8 0, label %5
    i8 1, label %8
    i8 2, label %14
    i8 3, label %44
  ]

default.unreachable34:                            ; preds = %entry
  unreachable

5:                                                ; preds = %entry
  %6 = lshr i64 %1, 48
  %7 = and i64 %6, 255
  br label %25

8:                                                ; preds = %entry
  %9 = trunc i64 %0 to i32
  %10 = lshr i64 %0, 32
  %11 = trunc nuw i64 %10 to i32
  %12 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %11, i32 %9)
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %odessy.chk2, label %22, !prof !10

14:                                               ; preds = %entry
  %15 = inttoptr i64 %0 to ptr
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.lifetime.start.p0(ptr %access-scratch)
  call void @swift_beginAccess(ptr nonnull %16, ptr nonnull %access-scratch, i64 0, ptr null) #2
  %.upperBound = getelementptr inbounds nuw i8, ptr %15, i64 24
  %17 = load i64, ptr %.upperBound, align 8
  %18 = load i64, ptr %16, align 8
  %19 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %17, i64 %18)
  %20 = extractvalue { i64, i1 } %19, 0
  %21 = extractvalue { i64, i1 } %19, 1
  br i1 %21, label %odessy.chk, label %25, !prof !10

22:                                               ; preds = %8
  %23 = extractvalue { i32, i1 } %12, 0
  %24 = sext i32 %23 to i64
  br label %25

25:                                               ; preds = %22, %14, %5
  %26 = phi i64 [ %24, %22 ], [ %7, %5 ], [ %20, %14 ]
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %25
  %29 = icmp slt i64 %26, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  %31 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMD") #14
  %32 = add nuw i64 %26, 32
  %33 = call noalias ptr @swift_allocObject(ptr %31, i64 %32, i64 7) #2
  %call.i = call i64 @malloc_usable_size(ptr noundef %33) #15
  %gepdiff = shl i64 %call.i, 1
  %34 = add i64 %gepdiff, -64
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i64 %26, ptr %35, align 8
  %._storage33._capacityAndFlags = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i64 %34, ptr %._storage33._capacityAndFlags, align 8
  br label %36

36:                                               ; preds = %30, %28
  %37 = phi ptr [ %33, %30 ], [ @_swiftEmptyArrayStorage, %28 ]
  call void @llvm.lifetime.start.p0(ptr %2)
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %39 = ptrtoint ptr %38 to i64
  %40 = icmp sgt i64 %26, -1
  call void @llvm.assume(i1 %40)
  call swiftcc void @"$s20FoundationEssentials4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias nonnull sret(<{ %T20FoundationEssentials4DataV8IteratorV, %TSi }>) captures(none) %2, i64 %39, i64 %26, i64 %0, i64 %1)
  %41 = call ptr @"$s20FoundationEssentials4DataV8IteratorV_SitWOh"(ptr nonnull %2)
  %.elt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %42 = load i64, ptr %.elt, align 8
  %.not = icmp eq i64 %42, %26
  br i1 %.not, label %43, label %odessy.chk1, !prof !11

43:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(ptr %2)
  br label %44

44:                                               ; preds = %43, %25, %entry
  %45 = phi ptr [ %37, %43 ], [ @_swiftEmptyArrayStorage, %entry ], [ @_swiftEmptyArrayStorage, %25 ]
  ret ptr %45

46:                                               ; No predecessors!
  call void asm sideeffect "", "n"(i32 0) #2
  call void @llvm.trap()
  unreachable

47:                                               ; No predecessors!
  call void asm sideeffect "", "n"(i32 1) #2
  call void @llvm.trap()
  unreachable

48:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 2) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %14
  call void @odessy.chk(i32 21)
  unreachable

odessy.chk1:                                      ; preds = %36
  call void @odessy.chk(i32 22)
  unreachable

odessy.chk2:                                      ; preds = %8
  call void @odessy.chk(i32 23)
  unreachable
}

; Function Attrs: noinline nounwind
define linkonce_odr hidden void @"$s20FoundationEssentials4DataV15_RepresentationOWOe"(i64 %0, i64 %1) local_unnamed_addr #4 {
entry:
  %2 = lshr i64 %1, 62
  %3 = trunc nuw nsw i64 %2 to i8
  switch i8 %3, label %7 [
    i8 1, label %.sink.split
    i8 2, label %4
  ]

4:                                                ; preds = %entry
  %5 = inttoptr i64 %0 to ptr
  tail call void @swift_release(ptr %5) #2
  br label %.sink.split

.sink.split:                                      ; preds = %4, %entry
  %.sink1 = and i64 %1, 4611686018427387903
  %6 = inttoptr i64 %.sink1 to ptr
  tail call void @swift_release(ptr %6) #2
  br label %7

7:                                                ; preds = %.sink.split, %entry
  ret void
}

; Function Attrs: noinline
declare swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read)
define linkonce_odr hidden ptr @__swift_instantiateConcreteTypeFromMangledName(ptr %0) local_unnamed_addr #6 {
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
declare swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr, i64, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: sspreq
declare swiftcc void @"$s20FoundationEssentials4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias sret(<{ %T20FoundationEssentials4DataV8IteratorV, %TSi }>) captures(none), i64, i64, i64, i64) local_unnamed_addr #9

; Function Attrs: noinline nounwind
define linkonce_odr hidden ptr @"$s20FoundationEssentials4DataV8IteratorV_SitWOh"(ptr %0) local_unnamed_addr #4 {
entry:
  %1 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$s20FoundationEssentials4DataV8IteratorV_SitMD") #14
  %2 = getelementptr inbounds i8, ptr %1, i64 -8
  %.valueWitnesses = load ptr, ptr %2, align 8, !invariant.load !28, !dereferenceable !32
  %3 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %3, align 8, !invariant.load !28
  tail call void %Destroy(ptr noalias %0, ptr %1) #2
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #5

declare swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias, ptr, ptr, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64, i64, i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64, i64) local_unnamed_addr #0

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
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

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
attributes #4 = { noinline nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { sspreq "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind memory(read) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind memory(argmem: read) }

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
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !24, !25, !26, !27}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!"llvm.loop.vectorize.enable", i1 false}
!26 = !{!"llvm.loop.licm_versioning.disable"}
!27 = !{!"llvm.loop.distribute.enable", i1 false}
!28 = !{}
!29 = !{!30}
!30 = distinct !{!30, !31, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!31 = distinct !{!31, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
!32 = !{i64 96}
