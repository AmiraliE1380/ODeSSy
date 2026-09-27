; ModuleID = 'results/static/guard_ablation_0927/Swift_crc32/tag.ll'
source_filename = "results/static/guard_ablation_0927/ir/crc32.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TSi = type <{ i64 }>
%TSa = type <{ %Ts22_ContiguousArrayBufferV }>
%Ts22_ContiguousArrayBufferV = type <{ ptr }>
%swift.type = type { i64 }
%Ts6UInt32V = type <{ i32 }>
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

@"$s5crc325itersSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@".str.17.crc32/crc32.swift" = private unnamed_addr constant [18 x i8] c"crc32/crc32.swift\00"
@"$s5crc324dataSays5UInt8VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$ss6UInt32VN" = external global %swift.type, align 8
@"$s5crc322t0Says6UInt32VGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5crc322t1Says6UInt32VGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5crc322t2Says6UInt32VGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5crc322t3Says6UInt32VGvp" = hidden global %TSa zeroinitializer, align 8
@"$s5crc325finals6UInt32Vvp" = hidden local_unnamed_addr global %Ts6UInt32V zeroinitializer, align 4
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = linkonce_odr hidden constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMD" to i64)) to i32), i32 -9 }, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "swift5_entry", align 4
@"$ss6UInt32VMn" = external global %swift.type_descriptor, align 4
@"got.$ss6UInt32VMn" = linkonce_odr hidden constant ptr @"$ss6UInt32VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss6UInt32VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys6UInt32VGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s6UInt32V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys6UInt32VGMD" to i64)) to i32), i32 -12 }, align 8
@_swiftEmptyArrayStorage = external global %struct._SwiftEmptyArrayStorage, align 8
@"$ss5UInt8VMn" = external global %swift.type_descriptor, align 4
@"got.$ss5UInt8VMn" = linkonce_odr hidden constant ptr @"$ss5UInt8VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss5UInt8VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys5UInt8VGMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys5UInt8VGMD" to i64)) to i32), i32 -12 }, align 8
@"$s20FoundationEssentials4DataV8IteratorVMn" = external global %swift.type_descriptor, align 4
@"got.$s20FoundationEssentials4DataV8IteratorVMn" = linkonce_odr hidden constant ptr @"$s20FoundationEssentials4DataV8IteratorVMn"
@"symbolic ______Sit 20FoundationEssentials4DataV8IteratorV" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$s20FoundationEssentials4DataV8IteratorVMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic ______Sit 20FoundationEssentials4DataV8IteratorV", i32 0, i32 1) to i64)) to i32), [4 x i8] c"_Sit", i8 0 }>, section "swift5_typeref", no_sanitize_address, align 2
@"$s20FoundationEssentials4DataV8IteratorV_SitMD" = linkonce_odr hidden global { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic ______Sit 20FoundationEssentials4DataV8IteratorV" to i64), i64 ptrtoint (ptr @"$s20FoundationEssentials4DataV8IteratorV_SitMD" to i64)) to i32), i32 -9 }, align 8
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
  %access-scratch = alloca [24 x i8], align 8
  %access-scratch15 = alloca [24 x i8], align 8
  %access-scratch20 = alloca [24 x i8], align 8
  %access-scratch25 = alloca [24 x i8], align 8
  %access-scratch32 = alloca [24 x i8], align 8
  %access-scratch36 = alloca [24 x i8], align 8
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
  br label %644

20:                                               ; preds = %7
  %21 = and i64 %12, 1152921504606846976
  %.not99 = icmp eq i64 %21, 0
  br i1 %.not99, label %22, label %.thread134, !prof !11

22:                                               ; preds = %20
  br i1 %.not, label %26, label %23

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(ptr %2)
  %.elt49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %24 = and i64 %12, 72057594037927935
  store i64 %9, ptr %2, align 8
  store i64 %24, ptr %.elt49, align 8
  %25 = trunc i64 %9 to i8
  switch i8 %25, label %58 [
    i8 45, label %28
    i8 43, label %57
  ]

26:                                               ; preds = %22
  %27 = and i64 %9, 1152921504606846976
  %.not97 = icmp eq i64 %27, 0
  br i1 %.not97, label %102, label %99, !prof !10

28:                                               ; preds = %23
  switch i64 %16, label %29 [
    i64 0, label %667
    i64 1, label %.thread137
  ], !prof !12

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %31 = getelementptr i8, ptr %2, i64 %16
  br label %40

.thread137:                                       ; preds = %58, %57, %28
  call void @llvm.lifetime.end.p0(ptr %2)
  br label %32

.loopexit140:                                     ; preds = %95, %90, %87, %82, %76, %71, %68, %63, %53, %48, %45, %40
  %.sroa.17.0 = phi i8 [ 1, %82 ], [ 1, %87 ], [ 1, %90 ], [ 0, %95 ], [ 1, %40 ], [ 1, %45 ], [ 1, %48 ], [ 0, %53 ], [ 1, %63 ], [ 1, %68 ], [ 1, %71 ], [ 0, %76 ]
  %.sroa.0.0 = phi i64 [ 0, %82 ], [ 0, %87 ], [ 0, %90 ], [ %96, %95 ], [ 0, %40 ], [ 0, %45 ], [ 0, %48 ], [ %54, %53 ], [ 0, %63 ], [ 0, %68 ], [ 0, %71 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(ptr %2)
  br label %32

32:                                               ; preds = %.thread, %.loopexit140, %.thread137
  %.sroa.0.2133 = phi i64 [ %111, %.thread ], [ %.sroa.0.0, %.loopexit140 ], [ 0, %.thread137 ]
  %.sroa.17.2132 = phi i8 [ %110, %.thread ], [ %.sroa.17.0, %.loopexit140 ], [ 1, %.thread137 ]
  call void @swift_bridgeObjectRelease(ptr %10) #2
  br label %36

.thread134:                                       ; preds = %20
  %33 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSSSiADSSRszsAER_r0_lIetgyr_Tpq5Si_Tg5"(i64 %9, ptr %10, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %10) #2
  %34 = extractvalue { i64, i8 } %33, 0
  %35 = extractvalue { i64, i8 } %33, 1
  br label %36

36:                                               ; preds = %.thread134, %32
  %37 = phi i64 [ %34, %.thread134 ], [ %.sroa.0.2133, %32 ]
  %38 = phi i8 [ %35, %.thread134 ], [ %.sroa.17.2132, %32 ]
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %odessy.chk1, label %112

40:                                               ; preds = %53, %29
  %41 = phi ptr [ %30, %29 ], [ %55, %53 ]
  %42 = phi i64 [ 0, %29 ], [ %54, %53 ]
  %43 = load i8, ptr %41, align 1
  %44 = add i8 %43, -48
  %or.cond = icmp ult i8 %44, 10
  br i1 %or.cond, label %45, label %.loopexit140, !prof !13

45:                                               ; preds = %40
  %46 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %42, i64 10)
  %47 = extractvalue { i64, i1 } %46, 1
  br i1 %47, label %.loopexit140, label %48

48:                                               ; preds = %45
  %49 = extractvalue { i64, i1 } %46, 0
  %50 = zext nneg i8 %44 to i64
  %51 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %49, i64 %50)
  %52 = extractvalue { i64, i1 } %51, 1
  br i1 %52, label %.loopexit140, label %53, !prof !10

53:                                               ; preds = %48
  %54 = extractvalue { i64, i1 } %51, 0
  %55 = getelementptr inbounds nuw i8, ptr %41, i64 1
  %56 = icmp eq ptr %55, %31
  br i1 %56, label %.loopexit140, label %40

57:                                               ; preds = %23
  switch i64 %16, label %60 [
    i64 0, label %666
    i64 1, label %.thread137
  ], !prof !12

58:                                               ; preds = %23
  %59 = icmp eq i64 %16, 0
  br i1 %59, label %.thread137, label %80, !prof !10

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %62 = getelementptr i8, ptr %2, i64 %16
  br label %63

63:                                               ; preds = %76, %60
  %64 = phi ptr [ %61, %60 ], [ %78, %76 ]
  %65 = phi i64 [ 0, %60 ], [ %77, %76 ]
  %66 = load i8, ptr %64, align 1
  %67 = add i8 %66, -48
  %or.cond54 = icmp ult i8 %67, 10
  br i1 %or.cond54, label %68, label %.loopexit140, !prof !13

68:                                               ; preds = %63
  %69 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %65, i64 10)
  %70 = extractvalue { i64, i1 } %69, 1
  br i1 %70, label %.loopexit140, label %71

71:                                               ; preds = %68
  %72 = extractvalue { i64, i1 } %69, 0
  %73 = zext nneg i8 %67 to i64
  %74 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %72, i64 %73)
  %75 = extractvalue { i64, i1 } %74, 1
  br i1 %75, label %.loopexit140, label %76, !prof !10

76:                                               ; preds = %71
  %77 = extractvalue { i64, i1 } %74, 0
  %78 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %79 = icmp eq ptr %78, %62
  br i1 %79, label %.loopexit140, label %63

80:                                               ; preds = %58
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 %16
  br label %82

82:                                               ; preds = %95, %80
  %83 = phi ptr [ %2, %80 ], [ %97, %95 ]
  %84 = phi i64 [ 0, %80 ], [ %96, %95 ]
  %85 = load i8, ptr %83, align 1
  %86 = add i8 %85, -48
  %or.cond55 = icmp ult i8 %86, 10
  br i1 %or.cond55, label %87, label %.loopexit140, !prof !13

87:                                               ; preds = %82
  %88 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %84, i64 10)
  %89 = extractvalue { i64, i1 } %88, 1
  br i1 %89, label %.loopexit140, label %90

90:                                               ; preds = %87
  %91 = extractvalue { i64, i1 } %88, 0
  %92 = zext nneg i8 %86 to i64
  %93 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %91, i64 %92)
  %94 = extractvalue { i64, i1 } %93, 1
  br i1 %94, label %.loopexit140, label %95, !prof !10

95:                                               ; preds = %90
  %96 = extractvalue { i64, i1 } %93, 0
  %97 = getelementptr inbounds nuw i8, ptr %83, i64 1
  %98 = icmp eq ptr %97, %81
  br i1 %98, label %.loopexit140, label %82

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
  %.not98 = icmp eq ptr %109, null
  tail call void @llvm.assume(i1 %.not98)
  %110 = extractvalue { i64, i8 } %108, 1
  %111 = extractvalue { i64, i8 } %108, 0
  br label %32

112:                                              ; preds = %36
  store i64 %37, ptr @"$s5crc325itersSivp", align 8
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
  %.not100 = icmp eq ptr %126, null
  call void @swift_release(ptr %123) #2
  br i1 %.not100, label %127, label %641

127:                                              ; preds = %117
  %128 = extractvalue { i64, i64 } %125, 1
  %129 = extractvalue { i64, i64 } %125, 0
  %130 = inttoptr i64 %124 to ptr
  call void @swift_release(ptr %130) #2
  %131 = call swiftcc ptr @"$ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlF20FoundationEssentials4DataV_Tgq5"(i64 %129, i64 %128)
  call void @"$s20FoundationEssentials4DataV15_RepresentationOWOe"(i64 %129, i64 %128)
  store ptr %131, ptr @"$s5crc324dataSays5UInt8VGvp", align 8
  %132 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 256, ptr nonnull @"$ss6UInt32VN")
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 16
  store i64 256, ptr %133, align 8
  %134 = getelementptr i8, ptr %132, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %134, i8 0, i64 1024, i1 false)
  store ptr %132, ptr @"$s5crc322t0Says6UInt32VGvp", align 8
  %135 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 256, ptr nonnull @"$ss6UInt32VN")
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 16
  store i64 256, ptr %136, align 8
  %137 = getelementptr i8, ptr %135, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %137, i8 0, i64 1024, i1 false)
  store ptr %135, ptr @"$s5crc322t1Says6UInt32VGvp", align 8
  %138 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 256, ptr nonnull @"$ss6UInt32VN")
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 16
  store i64 256, ptr %139, align 8
  %140 = getelementptr i8, ptr %138, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %140, i8 0, i64 1024, i1 false)
  store ptr %138, ptr @"$s5crc322t2Says6UInt32VGvp", align 8
  %141 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys016_ContiguousArrayB0VyxGSi_tFZ"(i64 256, ptr nonnull @"$ss6UInt32VN")
  %142 = getelementptr inbounds nuw i8, ptr %141, i64 16
  store i64 256, ptr %142, align 8
  %143 = getelementptr i8, ptr %141, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %143, i8 0, i64 1024, i1 false)
  store ptr %141, ptr @"$s5crc322t3Says6UInt32VGvp", align 8
  call void @llvm.lifetime.start.p0(ptr %access-scratch)
  call void @swift_beginAccess(ptr nonnull @"$s5crc322t0Says6UInt32VGvp", ptr nonnull %access-scratch, i64 33, ptr null) #2
  %144 = load ptr, ptr @"$s5crc322t0Says6UInt32VGvp", align 8
  %145 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %144) #16
  store ptr %144, ptr @"$s5crc322t0Says6UInt32VGvp", align 8
  br i1 %145, label %.split, label %146

146:                                              ; preds = %127
  %147 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFs6UInt32V_Tg5"(ptr %144)
  br label %.split

.split:                                           ; preds = %146, %127
  %148 = phi ptr [ %147, %146 ], [ %144, %127 ]
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 16
  %150 = getelementptr inbounds nuw i8, ptr %148, i64 32
  br label %152

151:                                              ; preds = %155
  store ptr %148, ptr @"$s5crc322t0Says6UInt32VGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch)
  br label %386

152:                                              ; preds = %155, %.split
  %153 = phi i64 [ 0, %.split ], [ %156, %155 ]
  %154 = load i64, ptr %149, align 8, !range !9
  %.not109 = icmp samesign ult i64 %153, %154
  br i1 %.not109, label %155, label %odessy.chk3, !prof !11

155:                                              ; preds = %152
  %156 = add nuw nsw i64 %153, 1
  %157 = trunc i64 %153 to i32
  %158 = and i32 %157, 1
  %.not101 = icmp eq i32 %158, 0
  %159 = lshr i32 %157, 1
  %160 = xor i32 %159, -306674912
  %161 = select i1 %.not101, i32 %159, i32 %160
  %162 = and i32 %161, 1
  %.not102 = icmp eq i32 %162, 0
  %163 = lshr i32 %161, 1
  %164 = xor i32 %163, -306674912
  %165 = select i1 %.not102, i32 %163, i32 %164
  %166 = and i32 %165, 1
  %.not103 = icmp eq i32 %166, 0
  %167 = lshr i32 %165, 1
  %168 = xor i32 %167, -306674912
  %169 = select i1 %.not103, i32 %167, i32 %168
  %170 = and i32 %169, 1
  %.not104 = icmp eq i32 %170, 0
  %171 = lshr i32 %169, 1
  %172 = xor i32 %171, -306674912
  %173 = select i1 %.not104, i32 %171, i32 %172
  %174 = and i32 %173, 1
  %.not105 = icmp eq i32 %174, 0
  %175 = lshr i32 %173, 1
  %176 = xor i32 %175, -306674912
  %177 = select i1 %.not105, i32 %175, i32 %176
  %178 = and i32 %177, 1
  %.not106 = icmp eq i32 %178, 0
  %179 = lshr i32 %177, 1
  %180 = xor i32 %179, -306674912
  %181 = select i1 %.not106, i32 %179, i32 %180
  %182 = and i32 %181, 1
  %.not107 = icmp eq i32 %182, 0
  %183 = lshr i32 %181, 1
  %184 = xor i32 %183, -306674912
  %185 = select i1 %.not107, i32 %183, i32 %184
  %186 = and i32 %185, 1
  %.not108 = icmp eq i32 %186, 0
  %187 = lshr i32 %185, 1
  %188 = xor i32 %187, -306674912
  %189 = select i1 %.not108, i32 %187, i32 %188
  %190 = getelementptr inbounds nuw %Ts6UInt32V, ptr %150, i64 %153
  store i32 %189, ptr %190, align 4
  %191 = icmp eq i64 %156, 256
  br i1 %191, label %151, label %152

192:                                              ; preds = %455
  store i32 0, ptr @"$s5crc325finals6UInt32Vvp", align 4
  %193 = load i64, ptr @"$s5crc325itersSivp", align 8
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %odessy.chk11, label %195, !prof !10

195:                                              ; preds = %192
  %196 = icmp eq i64 %193, 0
  br i1 %196, label %459, label %197

197:                                              ; preds = %195
  %198 = load ptr, ptr @"$s5crc324dataSays5UInt8VGvp", align 8
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 16
  %200 = load i64, ptr %199, align 8, !range !9
  %201 = icmp samesign ugt i64 %200, 3
  %202 = load ptr, ptr @"$s5crc322t3Says6UInt32VGvp", align 8
  %203 = load ptr, ptr @"$s5crc322t2Says6UInt32VGvp", align 8
  %204 = load ptr, ptr @"$s5crc322t1Says6UInt32VGvp", align 8
  %205 = getelementptr inbounds nuw i8, ptr %202, i64 16
  %206 = getelementptr inbounds nuw i8, ptr %203, i64 16
  %207 = getelementptr inbounds nuw i8, ptr %204, i64 16
  %.not118 = icmp eq i64 %200, 0
  %208 = getelementptr inbounds nuw i8, ptr %198, i64 32
  %209 = getelementptr inbounds nuw i8, ptr %202, i64 32
  %210 = getelementptr inbounds nuw i8, ptr %203, i64 32
  %211 = getelementptr inbounds nuw i8, ptr %204, i64 32
  %mv.h14 = icmp sle i64 %200, 4611686018427387904
  br i1 %mv.h14, label %.mv.ph15.mv.fast, label %.mv.ph15

.mv.ph15.mv.fast:                                 ; preds = %197
  br label %212

212:                                              ; preds = %.loopexit.mv.fast, %.mv.ph15.mv.fast
  %213 = phi i64 [ 0, %.mv.ph15.mv.fast ], [ %215, %.loopexit.mv.fast ]
  %214 = phi i32 [ 0, %.mv.ph15.mv.fast ], [ %311, %.loopexit.mv.fast ]
  %215 = add nuw nsw i64 %213, 1
  br i1 %201, label %217, label %216

216:                                              ; preds = %212
  br i1 %.not118, label %.loopexit.mv.fast, label %286

217:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(ptr %access-scratch36)
  call void @swift_beginAccess(ptr nonnull @"$s5crc322t0Says6UInt32VGvp", ptr nonnull %access-scratch36, i64 0, ptr null) #2
  %218 = load ptr, ptr @"$s5crc322t0Says6UInt32VGvp", align 8
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 16
  %220 = load i64, ptr %205, align 8, !range !9
  %221 = load i64, ptr %206, align 8, !range !9
  %222 = load i64, ptr %207, align 8, !range !9
  %223 = load i64, ptr %219, align 8, !range !9
  %224 = getelementptr inbounds nuw i8, ptr %218, i64 32
  %mv.h.mv.fast = icmp ugt i64 %220, 255
  %mv.h2.mv.fast = icmp ugt i64 %221, 255
  %mv.h3.mv.fast = and i1 %mv.h.mv.fast, %mv.h2.mv.fast
  %mv.h4.mv.fast = icmp ugt i64 %222, 255
  %mv.h5.mv.fast = and i1 %mv.h3.mv.fast, %mv.h4.mv.fast
  %mv.h6.mv.fast = icmp ugt i64 %223, 255
  %mv.h7.mv.fast = and i1 %mv.h5.mv.fast, %mv.h6.mv.fast
  br i1 %mv.h7.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast29

225:                                              ; preds = %.mv.ph.mv.fast29, %270
  %226 = phi i32 [ -1, %.mv.ph.mv.fast29 ], [ %282, %270 ]
  %227 = phi i64 [ 0, %.mv.ph.mv.fast29 ], [ %271, %270 ]
  %.not119.mv.fast16 = icmp samesign ult i64 %227, %200
  br i1 true, label %228, label %odessy.chk14, !prof !11

228:                                              ; preds = %225
  %229 = or disjoint i64 %227, 1
  %.not120.mv.fast17 = icmp samesign ult i64 %229, %200
  br i1 true, label %230, label %odessy.chk15, !prof !11

230:                                              ; preds = %228
  %231 = or disjoint i64 %227, 2
  %.not121.mv.fast18 = icmp samesign ult i64 %231, %200
  br i1 true, label %232, label %odessy.chk16, !prof !11

232:                                              ; preds = %230
  %233 = or disjoint i64 %227, 3
  %.not122.mv.fast19 = icmp samesign ult i64 %233, %200
  br i1 true, label %234, label %odessy.chk17, !prof !11

234:                                              ; preds = %232
  %235 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %229
  %236 = load i8, ptr %235, align 1
  %237 = zext i8 %236 to i32
  %238 = shl nuw nsw i32 %237, 8
  %239 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %227
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = or disjoint i32 %238, %241
  %243 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %231
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i32
  %246 = shl nuw nsw i32 %245, 16
  %247 = or disjoint i32 %242, %246
  %248 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %233
  %249 = load i8, ptr %248, align 1
  %250 = zext i8 %249 to i32
  %251 = shl nuw i32 %250, 24
  %252 = or disjoint i32 %247, %251
  %253 = xor i32 %252, %226
  %254 = and i32 %253, 255
  %255 = zext nneg i32 %254 to i64
  %.not123.mv.fast20 = icmp samesign ugt i64 %220, %255
  br i1 %.not123.mv.fast20, label %256, label %odessy.chk18, !prof !11

256:                                              ; preds = %234
  %257 = lshr i32 %253, 8
  %258 = and i32 %257, 255
  %259 = zext nneg i32 %258 to i64
  %.not124.mv.fast21 = icmp samesign ugt i64 %221, %259
  br i1 %.not124.mv.fast21, label %260, label %odessy.chk19, !prof !11

260:                                              ; preds = %256
  %261 = lshr i32 %253, 16
  %262 = and i32 %261, 255
  %263 = zext nneg i32 %262 to i64
  %.not125.mv.fast22 = icmp samesign ugt i64 %222, %263
  br i1 %.not125.mv.fast22, label %264, label %odessy.chk20, !prof !11

264:                                              ; preds = %260
  %265 = lshr i32 %253, 24
  %266 = zext nneg i32 %265 to i64
  %.not126.mv.fast23 = icmp samesign ugt i64 %223, %266
  br i1 %.not126.mv.fast23, label %267, label %odessy.chk21, !prof !11

267:                                              ; preds = %264
  %268 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %227, i64 8)
  %269 = extractvalue { i64, i1 } %268, 1
  br i1 false, label %odessy.chk22, label %270, !prof !10

270:                                              ; preds = %267
  %271 = add nuw nsw i64 %227, 4
  %272 = getelementptr inbounds nuw %Ts6UInt32V, ptr %210, i64 %259
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds nuw %Ts6UInt32V, ptr %209, i64 %255
  %275 = load i32, ptr %274, align 4
  %276 = xor i32 %273, %275
  %277 = getelementptr inbounds nuw %Ts6UInt32V, ptr %211, i64 %263
  %278 = load i32, ptr %277, align 4
  %279 = xor i32 %276, %278
  %280 = getelementptr inbounds nuw %Ts6UInt32V, ptr %224, i64 %266
  %281 = load i32, ptr %280, align 4
  %282 = xor i32 %279, %281
  %283 = extractvalue { i64, i1 } %268, 0
  %.not127.mv.fast24 = icmp slt i64 %200, %283
  br i1 %.not127.mv.fast24, label %284, label %225

284:                                              ; preds = %358, %270
  %.lcssa1.mv.fast = phi i64 [ %271, %270 ], [ %359, %358 ]
  %.lcssa.mv.fast = phi i32 [ %282, %270 ], [ %370, %358 ]
  %285 = icmp samesign ult i64 %.lcssa1.mv.fast, %200
  br i1 %285, label %286, label %.loopexit.mv.fast

286:                                              ; preds = %284, %216
  %287 = phi i32 [ %.lcssa.mv.fast, %284 ], [ -1, %216 ]
  %288 = phi i64 [ %.lcssa1.mv.fast, %284 ], [ 0, %216 ]
  call void @llvm.lifetime.start.p0(ptr %access-scratch32)
  call void @swift_beginAccess(ptr nonnull @"$s5crc322t0Says6UInt32VGvp", ptr nonnull %access-scratch32, i64 0, ptr null) #2
  %289 = load ptr, ptr @"$s5crc322t0Says6UInt32VGvp", align 8
  %290 = getelementptr inbounds nuw i8, ptr %289, i64 32
  %291 = getelementptr inbounds nuw i8, ptr %289, i64 16
  %292 = load i64, ptr %291, align 8, !range !9
  %293 = add nuw nsw i64 %288, 1
  %umax.mv.fast = call i64 @llvm.umax.i64(i64 %200, i64 %293)
  %294 = add nsw i64 %umax.mv.fast, -1
  %mv.h9.mv.fast = icmp ugt i64 %200, %294
  %mv.h10.mv.fast = icmp ugt i64 %292, 255
  %mv.h11.mv.fast = and i1 %mv.h9.mv.fast, %mv.h10.mv.fast
  br i1 %mv.h11.mv.fast, label %.mv.ph12.mv.fast.mv.fast, label %.mv.ph12.mv.fast30

295:                                              ; preds = %.mv.ph12.mv.fast30, %302
  %296 = phi i32 [ %287, %.mv.ph12.mv.fast30 ], [ %307, %302 ]
  %297 = phi i64 [ %288, %.mv.ph12.mv.fast30 ], [ %303, %302 ]
  %.not128.mv.fast25 = icmp ult i64 %297, %200
  br i1 %.not128.mv.fast25, label %298, label %odessy.chk12, !prof !11

298:                                              ; preds = %295
  %299 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %297
  %300 = load i8, ptr %299, align 1
  %.tr.mv.fast26 = trunc i32 %296 to i8
  %.narrow.mv.fast27 = xor i8 %300, %.tr.mv.fast26
  %301 = zext i8 %.narrow.mv.fast27 to i64
  %.not129.mv.fast28 = icmp samesign ugt i64 %292, %301
  br i1 %.not129.mv.fast28, label %302, label %odessy.chk13, !prof !11

302:                                              ; preds = %298
  %303 = add nuw nsw i64 %297, 1
  %304 = getelementptr inbounds nuw %Ts6UInt32V, ptr %290, i64 %301
  %305 = load i32, ptr %304, align 4
  %306 = lshr i32 %296, 8
  %307 = xor i32 %305, %306
  %308 = icmp samesign ult i64 %303, %200
  br i1 %308, label %295, label %.loopexit.loopexit.mv.fast

.loopexit.mv.fast:                                ; preds = %.loopexit.loopexit.mv.fast, %284, %216
  %309 = phi i32 [ %.lcssa.mv.fast, %284 ], [ -1, %216 ], [ %.lcssa8.mv.fast, %.loopexit.loopexit.mv.fast ]
  %310 = xor i32 %309, -1
  %311 = add i32 %214, %310
  %312 = icmp eq i64 %215, %193
  br i1 %312, label %640, label %212

.mv.ph.mv.fast29:                                 ; preds = %217
  br label %225

.mv.ph.mv.fast.mv.fast:                           ; preds = %217
  br label %313

313:                                              ; preds = %358, %.mv.ph.mv.fast.mv.fast
  %314 = phi i32 [ -1, %.mv.ph.mv.fast.mv.fast ], [ %370, %358 ]
  %315 = phi i64 [ 0, %.mv.ph.mv.fast.mv.fast ], [ %359, %358 ]
  %.not119.mv.fast.mv.fast = icmp samesign ult i64 %315, %200
  br i1 true, label %316, label %odessy.chk14, !prof !11

316:                                              ; preds = %313
  %317 = or disjoint i64 %315, 1
  %.not120.mv.fast.mv.fast = icmp samesign ult i64 %317, %200
  br i1 true, label %318, label %odessy.chk15, !prof !11

318:                                              ; preds = %316
  %319 = or disjoint i64 %315, 2
  %.not121.mv.fast.mv.fast = icmp samesign ult i64 %319, %200
  br i1 true, label %320, label %odessy.chk16, !prof !11

320:                                              ; preds = %318
  %321 = or disjoint i64 %315, 3
  %.not122.mv.fast.mv.fast = icmp samesign ult i64 %321, %200
  br i1 true, label %322, label %odessy.chk17, !prof !11

322:                                              ; preds = %320
  %323 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %317
  %324 = load i8, ptr %323, align 1
  %325 = zext i8 %324 to i32
  %326 = shl nuw nsw i32 %325, 8
  %327 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %315
  %328 = load i8, ptr %327, align 1
  %329 = zext i8 %328 to i32
  %330 = or disjoint i32 %326, %329
  %331 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %319
  %332 = load i8, ptr %331, align 1
  %333 = zext i8 %332 to i32
  %334 = shl nuw nsw i32 %333, 16
  %335 = or disjoint i32 %330, %334
  %336 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %321
  %337 = load i8, ptr %336, align 1
  %338 = zext i8 %337 to i32
  %339 = shl nuw i32 %338, 24
  %340 = or disjoint i32 %335, %339
  %341 = xor i32 %340, %314
  %342 = and i32 %341, 255
  %343 = zext nneg i32 %342 to i64
  %.not123.mv.fast.mv.fast = icmp samesign ugt i64 %220, %343
  br i1 true, label %344, label %odessy.chk18, !prof !11

344:                                              ; preds = %322
  %345 = lshr i32 %341, 8
  %346 = and i32 %345, 255
  %347 = zext nneg i32 %346 to i64
  %.not124.mv.fast.mv.fast = icmp samesign ugt i64 %221, %347
  br i1 true, label %348, label %odessy.chk19, !prof !11

348:                                              ; preds = %344
  %349 = lshr i32 %341, 16
  %350 = and i32 %349, 255
  %351 = zext nneg i32 %350 to i64
  %.not125.mv.fast.mv.fast = icmp samesign ugt i64 %222, %351
  br i1 true, label %352, label %odessy.chk20, !prof !11

352:                                              ; preds = %348
  %353 = lshr i32 %341, 24
  %354 = zext nneg i32 %353 to i64
  %.not126.mv.fast.mv.fast = icmp samesign ugt i64 %223, %354
  br i1 true, label %355, label %odessy.chk21, !prof !11

355:                                              ; preds = %352
  %356 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %315, i64 8)
  %357 = extractvalue { i64, i1 } %356, 1
  br i1 false, label %odessy.chk22, label %358, !prof !10

358:                                              ; preds = %355
  %359 = add nuw nsw i64 %315, 4
  %360 = getelementptr inbounds nuw %Ts6UInt32V, ptr %210, i64 %347
  %361 = load i32, ptr %360, align 4
  %362 = getelementptr inbounds nuw %Ts6UInt32V, ptr %209, i64 %343
  %363 = load i32, ptr %362, align 4
  %364 = xor i32 %361, %363
  %365 = getelementptr inbounds nuw %Ts6UInt32V, ptr %211, i64 %351
  %366 = load i32, ptr %365, align 4
  %367 = xor i32 %364, %366
  %368 = getelementptr inbounds nuw %Ts6UInt32V, ptr %224, i64 %354
  %369 = load i32, ptr %368, align 4
  %370 = xor i32 %367, %369
  %371 = extractvalue { i64, i1 } %356, 0
  %.not127.mv.fast.mv.fast = icmp slt i64 %200, %371
  br i1 %.not127.mv.fast.mv.fast, label %284, label %313

.loopexit.loopexit.mv.fast:                       ; preds = %379, %302
  %.lcssa8.mv.fast = phi i32 [ %307, %302 ], [ %384, %379 ]
  br label %.loopexit.mv.fast

.mv.ph12.mv.fast30:                               ; preds = %286
  br label %295

.mv.ph12.mv.fast.mv.fast:                         ; preds = %286
  br label %372

372:                                              ; preds = %379, %.mv.ph12.mv.fast.mv.fast
  %373 = phi i32 [ %287, %.mv.ph12.mv.fast.mv.fast ], [ %384, %379 ]
  %374 = phi i64 [ %288, %.mv.ph12.mv.fast.mv.fast ], [ %380, %379 ]
  %.not128.mv.fast.mv.fast = icmp ult i64 %374, %200
  br i1 true, label %375, label %odessy.chk12, !prof !11

375:                                              ; preds = %372
  %376 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %374
  %377 = load i8, ptr %376, align 1
  %.tr.mv.fast.mv.fast = trunc i32 %373 to i8
  %.narrow.mv.fast.mv.fast = xor i8 %377, %.tr.mv.fast.mv.fast
  %378 = zext i8 %.narrow.mv.fast.mv.fast to i64
  %.not129.mv.fast.mv.fast = icmp samesign ugt i64 %292, %378
  br i1 true, label %379, label %odessy.chk13, !prof !11

379:                                              ; preds = %375
  %380 = add nuw nsw i64 %374, 1
  %381 = getelementptr inbounds nuw %Ts6UInt32V, ptr %290, i64 %378
  %382 = load i32, ptr %381, align 4
  %383 = lshr i32 %373, 8
  %384 = xor i32 %382, %383
  %385 = icmp samesign ult i64 %380, %200
  br i1 %385, label %372, label %.loopexit.loopexit.mv.fast

.mv.ph15:                                         ; preds = %197
  br label %466

386:                                              ; preds = %455, %151
  %387 = phi i64 [ 0, %151 ], [ %388, %455 ]
  %388 = add nuw nsw i64 %387, 1
  %389 = load ptr, ptr @"$s5crc322t0Says6UInt32VGvp", align 8
  %390 = getelementptr inbounds nuw i8, ptr %389, i64 16
  %391 = load i64, ptr %390, align 8, !range !9
  %.not110 = icmp samesign ult i64 %387, %391
  br i1 %.not110, label %392, label %odessy.chk4, !prof !11

392:                                              ; preds = %386
  %393 = getelementptr inbounds nuw i8, ptr %389, i64 32
  %394 = getelementptr inbounds nuw %Ts6UInt32V, ptr %393, i64 %387
  %395 = load i32, ptr %394, align 4
  %396 = and i32 %395, 255
  %397 = zext nneg i32 %396 to i64
  %.not111 = icmp samesign ugt i64 %391, %397
  br i1 %.not111, label %398, label %odessy.chk5, !prof !11

398:                                              ; preds = %392
  %399 = getelementptr inbounds nuw %Ts6UInt32V, ptr %393, i64 %397
  %400 = load i32, ptr %399, align 4
  %401 = lshr i32 %395, 8
  %402 = xor i32 %400, %401
  call void @llvm.lifetime.start.p0(ptr %access-scratch15)
  call void @swift_beginAccess(ptr nonnull @"$s5crc322t1Says6UInt32VGvp", ptr nonnull %access-scratch15, i64 33, ptr null) #2
  %403 = load ptr, ptr @"$s5crc322t1Says6UInt32VGvp", align 8
  %404 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %403) #16
  store ptr %403, ptr @"$s5crc322t1Says6UInt32VGvp", align 8
  br i1 %404, label %407, label %405

405:                                              ; preds = %398
  %406 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFs6UInt32V_Tg5"(ptr %403)
  br label %407

407:                                              ; preds = %405, %398
  %408 = phi ptr [ %406, %405 ], [ %403, %398 ]
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 16
  %410 = load i64, ptr %409, align 8, !range !9
  %.not112 = icmp samesign ult i64 %387, %410
  br i1 %.not112, label %411, label %odessy.chk6, !prof !11

411:                                              ; preds = %407
  %412 = getelementptr inbounds nuw i8, ptr %408, i64 32
  %413 = getelementptr inbounds nuw %Ts6UInt32V, ptr %412, i64 %387
  store i32 %402, ptr %413, align 4
  store ptr %408, ptr @"$s5crc322t1Says6UInt32VGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch15) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch15)
  %414 = and i32 %402, 255
  %415 = zext nneg i32 %414 to i64
  %416 = load ptr, ptr @"$s5crc322t0Says6UInt32VGvp", align 8
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 16
  %418 = load i64, ptr %417, align 8, !range !9
  %.not113 = icmp samesign ugt i64 %418, %415
  br i1 %.not113, label %419, label %odessy.chk7, !prof !11

419:                                              ; preds = %411
  %420 = getelementptr inbounds nuw i8, ptr %416, i64 32
  %421 = getelementptr inbounds nuw %Ts6UInt32V, ptr %420, i64 %415
  %422 = load i32, ptr %421, align 4
  %423 = lshr i32 %402, 8
  %424 = xor i32 %422, %423
  call void @llvm.lifetime.start.p0(ptr %access-scratch20)
  call void @swift_beginAccess(ptr nonnull @"$s5crc322t2Says6UInt32VGvp", ptr nonnull %access-scratch20, i64 33, ptr null) #2
  %425 = load ptr, ptr @"$s5crc322t2Says6UInt32VGvp", align 8
  %426 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %425) #16
  store ptr %425, ptr @"$s5crc322t2Says6UInt32VGvp", align 8
  br i1 %426, label %429, label %427

427:                                              ; preds = %419
  %428 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFs6UInt32V_Tg5"(ptr %425)
  br label %429

429:                                              ; preds = %427, %419
  %430 = phi ptr [ %428, %427 ], [ %425, %419 ]
  %431 = getelementptr inbounds nuw i8, ptr %430, i64 16
  %432 = load i64, ptr %431, align 8, !range !9
  %.not114 = icmp samesign ult i64 %387, %432
  br i1 %.not114, label %433, label %odessy.chk8, !prof !11

433:                                              ; preds = %429
  %434 = getelementptr inbounds nuw i8, ptr %430, i64 32
  %435 = getelementptr inbounds nuw %Ts6UInt32V, ptr %434, i64 %387
  store i32 %424, ptr %435, align 4
  store ptr %430, ptr @"$s5crc322t2Says6UInt32VGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch20) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch20)
  %436 = and i32 %424, 255
  %437 = zext nneg i32 %436 to i64
  %438 = load ptr, ptr @"$s5crc322t0Says6UInt32VGvp", align 8
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 16
  %440 = load i64, ptr %439, align 8, !range !9
  %.not115 = icmp samesign ugt i64 %440, %437
  br i1 %.not115, label %441, label %odessy.chk9, !prof !11

441:                                              ; preds = %433
  %442 = getelementptr inbounds nuw i8, ptr %438, i64 32
  %443 = getelementptr inbounds nuw %Ts6UInt32V, ptr %442, i64 %437
  %444 = load i32, ptr %443, align 4
  %445 = lshr i32 %424, 8
  %446 = xor i32 %444, %445
  call void @llvm.lifetime.start.p0(ptr %access-scratch25)
  call void @swift_beginAccess(ptr nonnull @"$s5crc322t3Says6UInt32VGvp", ptr nonnull %access-scratch25, i64 33, ptr null) #2
  %447 = load ptr, ptr @"$s5crc322t3Says6UInt32VGvp", align 8
  %448 = call zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr %447) #16
  store ptr %447, ptr @"$s5crc322t3Says6UInt32VGvp", align 8
  br i1 %448, label %451, label %449

449:                                              ; preds = %441
  %450 = call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFs6UInt32V_Tg5"(ptr %447)
  br label %451

451:                                              ; preds = %449, %441
  %452 = phi ptr [ %450, %449 ], [ %447, %441 ]
  %453 = getelementptr inbounds nuw i8, ptr %452, i64 16
  %454 = load i64, ptr %453, align 8, !range !9
  %.not116 = icmp samesign ult i64 %387, %454
  br i1 %.not116, label %455, label %odessy.chk10, !prof !11

455:                                              ; preds = %451
  %456 = getelementptr inbounds nuw i8, ptr %452, i64 32
  %457 = getelementptr inbounds nuw %Ts6UInt32V, ptr %456, i64 %387
  store i32 %446, ptr %457, align 4
  store ptr %452, ptr @"$s5crc322t3Says6UInt32VGvp", align 8
  call void @swift_endAccess(ptr nonnull %access-scratch25) #2
  call void @llvm.lifetime.end.p0(ptr %access-scratch25)
  %458 = icmp eq i64 %388, 256
  br i1 %458, label %192, label %386

459:                                              ; preds = %640, %195
  %460 = phi i32 [ %.lcssa13, %640 ], [ 0, %195 ]
  %461 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMD") #17
  %462 = call noalias ptr @swift_allocObject(ptr %461, i64 64, i64 7) #2
  %463 = getelementptr inbounds nuw i8, ptr %462, i64 16
  store i64 1, ptr %463, align 8
  %._storage29._capacityAndFlags = getelementptr inbounds nuw i8, ptr %462, i64 24
  store i64 2, ptr %._storage29._capacityAndFlags, align 8
  %464 = getelementptr inbounds nuw i8, ptr %462, i64 32
  %465 = getelementptr inbounds nuw i8, ptr %462, i64 56
  store ptr @"$ss6UInt32VN", ptr %465, align 8
  store i32 %460, ptr %464, align 4
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %462, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %462) #2
  ret i32 0

466:                                              ; preds = %.loopexit, %.mv.ph15
  %467 = phi i64 [ 0, %.mv.ph15 ], [ %469, %.loopexit ]
  %468 = phi i32 [ 0, %.mv.ph15 ], [ %638, %.loopexit ]
  %469 = add nuw nsw i64 %467, 1
  br i1 %201, label %470, label %537

470:                                              ; preds = %466
  call void @llvm.lifetime.start.p0(ptr %access-scratch36)
  call void @swift_beginAccess(ptr nonnull @"$s5crc322t0Says6UInt32VGvp", ptr nonnull %access-scratch36, i64 0, ptr null) #2
  %471 = load ptr, ptr @"$s5crc322t0Says6UInt32VGvp", align 8
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 16
  %473 = load i64, ptr %205, align 8, !range !9
  %474 = load i64, ptr %206, align 8, !range !9
  %475 = load i64, ptr %207, align 8, !range !9
  %476 = load i64, ptr %472, align 8, !range !9
  %477 = getelementptr inbounds nuw i8, ptr %471, i64 32
  %mv.h = icmp ugt i64 %473, 255
  %mv.h2 = icmp ugt i64 %474, 255
  %mv.h3 = and i1 %mv.h, %mv.h2
  %mv.h4 = icmp ugt i64 %475, 255
  %mv.h5 = and i1 %mv.h3, %mv.h4
  %mv.h6 = icmp ugt i64 %476, 255
  %mv.h7 = and i1 %mv.h5, %mv.h6
  br i1 %mv.h7, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %470
  br label %478

478:                                              ; preds = %523, %.mv.ph.mv.fast
  %479 = phi i32 [ -1, %.mv.ph.mv.fast ], [ %535, %523 ]
  %480 = phi i64 [ 0, %.mv.ph.mv.fast ], [ %524, %523 ]
  %.not119.mv.fast = icmp samesign ult i64 %480, %200
  br i1 true, label %481, label %odessy.chk14, !prof !11

481:                                              ; preds = %478
  %482 = or disjoint i64 %480, 1
  %.not120.mv.fast = icmp samesign ult i64 %482, %200
  br i1 true, label %483, label %odessy.chk15, !prof !11

483:                                              ; preds = %481
  %484 = or disjoint i64 %480, 2
  %.not121.mv.fast = icmp samesign ult i64 %484, %200
  br i1 true, label %485, label %odessy.chk16, !prof !11

485:                                              ; preds = %483
  %486 = or disjoint i64 %480, 3
  %.not122.mv.fast = icmp samesign ult i64 %486, %200
  br i1 true, label %487, label %odessy.chk17, !prof !11

487:                                              ; preds = %485
  %488 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %482
  %489 = load i8, ptr %488, align 1
  %490 = zext i8 %489 to i32
  %491 = shl nuw nsw i32 %490, 8
  %492 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %480
  %493 = load i8, ptr %492, align 1
  %494 = zext i8 %493 to i32
  %495 = or disjoint i32 %491, %494
  %496 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %484
  %497 = load i8, ptr %496, align 1
  %498 = zext i8 %497 to i32
  %499 = shl nuw nsw i32 %498, 16
  %500 = or disjoint i32 %495, %499
  %501 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %486
  %502 = load i8, ptr %501, align 1
  %503 = zext i8 %502 to i32
  %504 = shl nuw i32 %503, 24
  %505 = or disjoint i32 %500, %504
  %506 = xor i32 %505, %479
  %507 = and i32 %506, 255
  %508 = zext nneg i32 %507 to i64
  %.not123.mv.fast = icmp samesign ugt i64 %473, %508
  br i1 true, label %509, label %odessy.chk18, !prof !11

509:                                              ; preds = %487
  %510 = lshr i32 %506, 8
  %511 = and i32 %510, 255
  %512 = zext nneg i32 %511 to i64
  %.not124.mv.fast = icmp samesign ugt i64 %474, %512
  br i1 true, label %513, label %odessy.chk19, !prof !11

513:                                              ; preds = %509
  %514 = lshr i32 %506, 16
  %515 = and i32 %514, 255
  %516 = zext nneg i32 %515 to i64
  %.not125.mv.fast = icmp samesign ugt i64 %475, %516
  br i1 true, label %517, label %odessy.chk20, !prof !11

517:                                              ; preds = %513
  %518 = lshr i32 %506, 24
  %519 = zext nneg i32 %518 to i64
  %.not126.mv.fast = icmp samesign ugt i64 %476, %519
  br i1 true, label %520, label %odessy.chk21, !prof !11

520:                                              ; preds = %517
  %521 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %480, i64 8)
  %522 = extractvalue { i64, i1 } %521, 1
  br i1 %522, label %odessy.chk22, label %523, !prof !10

523:                                              ; preds = %520
  %524 = add nuw nsw i64 %480, 4
  %525 = getelementptr inbounds nuw %Ts6UInt32V, ptr %210, i64 %512
  %526 = load i32, ptr %525, align 4
  %527 = getelementptr inbounds nuw %Ts6UInt32V, ptr %209, i64 %508
  %528 = load i32, ptr %527, align 4
  %529 = xor i32 %526, %528
  %530 = getelementptr inbounds nuw %Ts6UInt32V, ptr %211, i64 %516
  %531 = load i32, ptr %530, align 4
  %532 = xor i32 %529, %531
  %533 = getelementptr inbounds nuw %Ts6UInt32V, ptr %477, i64 %519
  %534 = load i32, ptr %533, align 4
  %535 = xor i32 %532, %534
  %536 = extractvalue { i64, i1 } %521, 0
  %.not127.mv.fast = icmp slt i64 %200, %536
  br i1 %.not127.mv.fast, label %597, label %478

.mv.ph:                                           ; preds = %470
  br label %538

537:                                              ; preds = %466
  br i1 %.not118, label %.loopexit, label %599

538:                                              ; preds = %583, %.mv.ph
  %539 = phi i32 [ -1, %.mv.ph ], [ %595, %583 ]
  %540 = phi i64 [ 0, %.mv.ph ], [ %584, %583 ]
  %.not119 = icmp samesign ult i64 %540, %200
  br i1 true, label %541, label %odessy.chk14, !prof !11

541:                                              ; preds = %538
  %542 = or disjoint i64 %540, 1
  %.not120 = icmp samesign ult i64 %542, %200
  br i1 true, label %543, label %odessy.chk15, !prof !11

543:                                              ; preds = %541
  %544 = or disjoint i64 %540, 2
  %.not121 = icmp samesign ult i64 %544, %200
  br i1 true, label %545, label %odessy.chk16, !prof !11

545:                                              ; preds = %543
  %546 = or disjoint i64 %540, 3
  %.not122 = icmp samesign ult i64 %546, %200
  br i1 true, label %547, label %odessy.chk17, !prof !11

547:                                              ; preds = %545
  %548 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %542
  %549 = load i8, ptr %548, align 1
  %550 = zext i8 %549 to i32
  %551 = shl nuw nsw i32 %550, 8
  %552 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %540
  %553 = load i8, ptr %552, align 1
  %554 = zext i8 %553 to i32
  %555 = or disjoint i32 %551, %554
  %556 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %544
  %557 = load i8, ptr %556, align 1
  %558 = zext i8 %557 to i32
  %559 = shl nuw nsw i32 %558, 16
  %560 = or disjoint i32 %555, %559
  %561 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %546
  %562 = load i8, ptr %561, align 1
  %563 = zext i8 %562 to i32
  %564 = shl nuw i32 %563, 24
  %565 = or disjoint i32 %560, %564
  %566 = xor i32 %565, %539
  %567 = and i32 %566, 255
  %568 = zext nneg i32 %567 to i64
  %.not123 = icmp samesign ugt i64 %473, %568
  br i1 %.not123, label %569, label %odessy.chk18, !prof !11

569:                                              ; preds = %547
  %570 = lshr i32 %566, 8
  %571 = and i32 %570, 255
  %572 = zext nneg i32 %571 to i64
  %.not124 = icmp samesign ugt i64 %474, %572
  br i1 %.not124, label %573, label %odessy.chk19, !prof !11

573:                                              ; preds = %569
  %574 = lshr i32 %566, 16
  %575 = and i32 %574, 255
  %576 = zext nneg i32 %575 to i64
  %.not125 = icmp samesign ugt i64 %475, %576
  br i1 %.not125, label %577, label %odessy.chk20, !prof !11

577:                                              ; preds = %573
  %578 = lshr i32 %566, 24
  %579 = zext nneg i32 %578 to i64
  %.not126 = icmp samesign ugt i64 %476, %579
  br i1 %.not126, label %580, label %odessy.chk21, !prof !11

580:                                              ; preds = %577
  %581 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %540, i64 8)
  %582 = extractvalue { i64, i1 } %581, 1
  br i1 %582, label %odessy.chk22, label %583, !prof !10

583:                                              ; preds = %580
  %584 = add nuw nsw i64 %540, 4
  %585 = getelementptr inbounds nuw %Ts6UInt32V, ptr %210, i64 %572
  %586 = load i32, ptr %585, align 4
  %587 = getelementptr inbounds nuw %Ts6UInt32V, ptr %209, i64 %568
  %588 = load i32, ptr %587, align 4
  %589 = xor i32 %586, %588
  %590 = getelementptr inbounds nuw %Ts6UInt32V, ptr %211, i64 %576
  %591 = load i32, ptr %590, align 4
  %592 = xor i32 %589, %591
  %593 = getelementptr inbounds nuw %Ts6UInt32V, ptr %477, i64 %579
  %594 = load i32, ptr %593, align 4
  %595 = xor i32 %592, %594
  %596 = extractvalue { i64, i1 } %581, 0
  %.not127 = icmp slt i64 %200, %596
  br i1 %.not127, label %597, label %538

597:                                              ; preds = %523, %583
  %.lcssa1 = phi i64 [ %584, %583 ], [ %524, %523 ]
  %.lcssa = phi i32 [ %595, %583 ], [ %535, %523 ]
  %598 = icmp samesign ult i64 %.lcssa1, %200
  br i1 %598, label %599, label %.loopexit

599:                                              ; preds = %597, %537
  %600 = phi i32 [ %.lcssa, %597 ], [ -1, %537 ]
  %601 = phi i64 [ %.lcssa1, %597 ], [ 0, %537 ]
  call void @llvm.lifetime.start.p0(ptr %access-scratch32)
  call void @swift_beginAccess(ptr nonnull @"$s5crc322t0Says6UInt32VGvp", ptr nonnull %access-scratch32, i64 0, ptr null) #2
  %602 = load ptr, ptr @"$s5crc322t0Says6UInt32VGvp", align 8
  %603 = getelementptr inbounds nuw i8, ptr %602, i64 32
  %604 = getelementptr inbounds nuw i8, ptr %602, i64 16
  %605 = load i64, ptr %604, align 8, !range !9
  %606 = add nuw nsw i64 %601, 1
  %umax = call i64 @llvm.umax.i64(i64 %200, i64 %606)
  %607 = add nsw i64 %umax, -1
  %mv.h9 = icmp ugt i64 %200, %607
  %mv.h10 = icmp ugt i64 %605, 255
  %mv.h11 = and i1 %mv.h9, %mv.h10
  br i1 %mv.h11, label %.mv.ph12.mv.fast, label %.mv.ph12

.mv.ph12.mv.fast:                                 ; preds = %599
  br label %608

608:                                              ; preds = %615, %.mv.ph12.mv.fast
  %609 = phi i32 [ %600, %.mv.ph12.mv.fast ], [ %620, %615 ]
  %610 = phi i64 [ %601, %.mv.ph12.mv.fast ], [ %616, %615 ]
  %.not128.mv.fast = icmp ult i64 %610, %200
  br i1 true, label %611, label %odessy.chk12, !prof !11

611:                                              ; preds = %608
  %612 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %610
  %613 = load i8, ptr %612, align 1
  %.tr.mv.fast = trunc i32 %609 to i8
  %.narrow.mv.fast = xor i8 %613, %.tr.mv.fast
  %614 = zext i8 %.narrow.mv.fast to i64
  %.not129.mv.fast = icmp samesign ugt i64 %605, %614
  br i1 true, label %615, label %odessy.chk13, !prof !11

615:                                              ; preds = %611
  %616 = add nuw nsw i64 %610, 1
  %617 = getelementptr inbounds nuw %Ts6UInt32V, ptr %603, i64 %614
  %618 = load i32, ptr %617, align 4
  %619 = lshr i32 %609, 8
  %620 = xor i32 %618, %619
  %621 = icmp samesign ult i64 %616, %200
  br i1 %621, label %608, label %.loopexit.loopexit

.mv.ph12:                                         ; preds = %599
  br label %622

622:                                              ; preds = %629, %.mv.ph12
  %623 = phi i32 [ %600, %.mv.ph12 ], [ %634, %629 ]
  %624 = phi i64 [ %601, %.mv.ph12 ], [ %630, %629 ]
  %.not128 = icmp ult i64 %624, %200
  br i1 %.not128, label %625, label %odessy.chk12, !prof !11

625:                                              ; preds = %622
  %626 = getelementptr inbounds nuw %Ts5UInt8V, ptr %208, i64 %624
  %627 = load i8, ptr %626, align 1
  %.tr = trunc i32 %623 to i8
  %.narrow = xor i8 %627, %.tr
  %628 = zext i8 %.narrow to i64
  %.not129 = icmp samesign ugt i64 %605, %628
  br i1 %.not129, label %629, label %odessy.chk13, !prof !11

629:                                              ; preds = %625
  %630 = add nuw nsw i64 %624, 1
  %631 = getelementptr inbounds nuw %Ts6UInt32V, ptr %603, i64 %628
  %632 = load i32, ptr %631, align 4
  %633 = lshr i32 %623, 8
  %634 = xor i32 %632, %633
  %635 = icmp samesign ult i64 %630, %200
  br i1 %635, label %622, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %615, %629
  %.lcssa8 = phi i32 [ %634, %629 ], [ %620, %615 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %597, %537
  %636 = phi i32 [ %.lcssa, %597 ], [ -1, %537 ], [ %.lcssa8, %.loopexit.loopexit ]
  %637 = xor i32 %636, -1
  %638 = add i32 %468, %637
  %639 = icmp eq i64 %469, %193
  br i1 %639, label %640, label %466

640:                                              ; preds = %.loopexit.mv.fast, %.loopexit
  %.lcssa13 = phi i32 [ %638, %.loopexit ], [ %311, %.loopexit.mv.fast ]
  store i32 %.lcssa13, ptr @"$s5crc325finals6UInt32Vvp", align 4
  br label %459

641:                                              ; preds = %117
  %642 = inttoptr i64 %124 to ptr
  call void @swift_release(ptr %642) #2
  call swiftcc void @swift_unexpectedError(ptr nonnull %126, ptr nonnull @".str.17.crc32/crc32.swift", i64 17, i1 true, i64 14)
  unreachable

643:                                              ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

644:                                              ; preds = %19
  call void asm sideeffect "", "n"(i32 1) #2
  call void @llvm.trap()
  unreachable

645:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 2) #2
  call void @llvm.trap()
  unreachable

646:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 5) #2
  call void @llvm.trap()
  unreachable

647:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 7) #2
  call void @llvm.trap()
  unreachable

648:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 8) #2
  call void @llvm.trap()
  unreachable

649:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 9) #2
  call void @llvm.trap()
  unreachable

650:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 11) #2
  call void @llvm.trap()
  unreachable

651:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 12) #2
  call void @llvm.trap()
  unreachable

652:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 14) #2
  call void @llvm.trap()
  unreachable

653:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 15) #2
  call void @llvm.trap()
  unreachable

654:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 16) #2
  call void @llvm.trap()
  unreachable

655:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 19) #2
  call void @llvm.trap()
  unreachable

656:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 20) #2
  call void @llvm.trap()
  unreachable

657:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 22) #2
  call void @llvm.trap()
  unreachable

658:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 23) #2
  call void @llvm.trap()
  unreachable

659:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 24) #2
  call void @llvm.trap()
  unreachable

660:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 25) #2
  call void @llvm.trap()
  unreachable

661:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 26) #2
  call void @llvm.trap()
  unreachable

662:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 27) #2
  call void @llvm.trap()
  unreachable

663:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 28) #2
  call void @llvm.trap()
  unreachable

664:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 29) #2
  call void @llvm.trap()
  unreachable

665:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 31) #2
  call void @llvm.trap()
  unreachable

666:                                              ; preds = %57
  tail call void asm sideeffect "", "n"(i32 32) #2
  tail call void @llvm.trap()
  unreachable

667:                                              ; preds = %28
  tail call void asm sideeffect "", "n"(i32 33) #2
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

odessy.chk3:                                      ; preds = %152
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk4:                                      ; preds = %386
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %392
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %407
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %411
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %429
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %433
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %451
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %192
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %372, %295, %608, %622
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %375, %298, %611, %625
  call void @odessy.chk(i32 13)
  unreachable

odessy.chk14:                                     ; preds = %313, %225, %478, %538
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk15:                                     ; preds = %316, %228, %481, %541
  call void @odessy.chk(i32 15)
  unreachable

odessy.chk16:                                     ; preds = %318, %230, %483, %543
  call void @odessy.chk(i32 16)
  unreachable

odessy.chk17:                                     ; preds = %320, %232, %485, %545
  call void @odessy.chk(i32 17)
  unreachable

odessy.chk18:                                     ; preds = %322, %234, %487, %547
  call void @odessy.chk(i32 18)
  unreachable

odessy.chk19:                                     ; preds = %344, %256, %509, %569
  call void @odessy.chk(i32 19)
  unreachable

odessy.chk20:                                     ; preds = %348, %260, %513, %573
  call void @odessy.chk(i32 20)
  unreachable

odessy.chk21:                                     ; preds = %352, %264, %517, %577
  call void @odessy.chk(i32 21)
  unreachable

odessy.chk22:                                     ; preds = %355, %267, %520, %580
  call void @odessy.chk(i32 22)
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
  call void @odessy.chk(i32 23)
  unreachable

odessy.chk1:                                      ; preds = %7
  call void @odessy.chk(i32 24)
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
  call void @odessy.chk(i32 25)
  unreachable

odessy.chk1:                                      ; preds = %158
  call void @odessy.chk(i32 26)
  unreachable
}

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(ptr) local_unnamed_addr #2

declare swiftcc { ptr, i64 } @"$s20FoundationEssentials3URLV15fileURLWithPathACSSh_tcfC"(i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64 } @"$s20FoundationEssentials4DataV10contentsOf7optionsAcA3URLVh_AC14ReadingOptionsVtKcfC"(ptr, i64, i64, ptr swiftself, ptr noalias swifterror captures(none) dereferenceable(8)) local_unnamed_addr #0

declare swiftcc void @swift_unexpectedError(ptr, ptr, i64, i1, i64) local_unnamed_addr #0

; Function Attrs: noinline
define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFs6UInt32V_Tg5"(ptr %0) local_unnamed_addr #3 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load i64, ptr %1, align 8, !range !9
  %3 = tail call swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs6UInt32V_Tg5"(i1 false, i64 %2, i1 false, ptr %0)
  ret ptr %3
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs6UInt32V_Tg5"(i1 %0, i64 %1, i1 %2, ptr %3) local_unnamed_addr #3 {
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
  %19 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys6UInt32VGMD") #17
  %20 = shl i64 %.4, 2
  %21 = add i64 %20, 32
  %22 = tail call noalias ptr @swift_allocObject(ptr %19, i64 %21, i64 7) #2
  %call.i = tail call i64 @malloc_usable_size(ptr noundef %22) #18
  %gepdiff = add nsw i64 %call.i, -32
  %23 = sdiv i64 %gepdiff, 4
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
  %31 = getelementptr inbounds nuw %Ts6UInt32V, ptr %29, i64 %16
  %32 = icmp ult ptr %28, %31
  %.not = icmp eq ptr %27, %3
  %or.cond9 = select i1 %.not, i1 %32, i1 false
  br i1 %or.cond9, label %34, label %.sink.split

.sink.split:                                      ; preds = %30
  %33 = shl nuw i64 %16, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %28, ptr nonnull align 4 %29, i64 %33, i1 false)
  br label %34

34:                                               ; preds = %.sink.split, %30
  store i64 0, ptr %4, align 8
  br label %37

35:                                               ; preds = %26
  %36 = shl nuw i64 %16, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %28, ptr nonnull align 4 %29, i64 %36, i1 false)
  br label %37

37:                                               ; preds = %35, %34
  tail call void @swift_release(ptr nonnull %3) #2
  ret ptr %27

38:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %9
  call void @odessy.chk(i32 27)
  unreachable
}

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
  %25 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %22, i64 %24), !noalias !14
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
  call void @odessy.chk(i32 28)
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
  call void @odessy.chk(i32 29)
  unreachable

odessy.chk1:                                      ; preds = %30
  call void @odessy.chk(i32 30)
  unreachable
}

define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %. = tail call i64 @llvm.smax.i64(i64 %1, i64 %0)
  %2 = icmp eq i64 %., 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %entry
  %4 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMD") #17
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
  call void @odessy.chk(i32 31)
  unreachable

odessy.chk1:                                      ; preds = %43
  call void @odessy.chk(i32 32)
  unreachable

odessy.chk2:                                      ; preds = %73
  call void @odessy.chk(i32 33)
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
  %31 = call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMD") #17
  %32 = add nuw i64 %26, 32
  %33 = call noalias ptr @swift_allocObject(ptr %31, i64 %32, i64 7) #2
  %call.i = call i64 @malloc_usable_size(ptr noundef %33) #18
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
  call void @odessy.chk(i32 34)
  unreachable

odessy.chk1:                                      ; preds = %36
  call void @odessy.chk(i32 35)
  unreachable

odessy.chk2:                                      ; preds = %8
  call void @odessy.chk(i32 36)
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

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn
declare zeroext i1 @swift_isUniquelyReferenced_nonNull_native(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @swift_endAccess(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read)
define linkonce_odr hidden ptr @__swift_instantiateConcreteTypeFromMangledName(ptr %0) local_unnamed_addr #7 {
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
  %13 = tail call swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr %12, i64 %8, ptr null, ptr null) #19
  %14 = ptrtoint ptr %13 to i64
  store atomic i64 %14, ptr %0 monotonic, align 8
  br label %3
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr, i64, ptr, ptr) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: sspreq
declare swiftcc void @"$s20FoundationEssentials4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias sret(<{ %T20FoundationEssentials4DataV8IteratorV, %TSi }>) captures(none), i64, i64, i64, i64) local_unnamed_addr #11

; Function Attrs: noinline nounwind
define linkonce_odr hidden ptr @"$s20FoundationEssentials4DataV8IteratorV_SitWOh"(ptr %0) local_unnamed_addr #4 {
entry:
  %1 = tail call ptr @__swift_instantiateConcreteTypeFromMangledName(ptr nonnull @"$s20FoundationEssentials4DataV8IteratorV_SitMD") #17
  %2 = getelementptr inbounds i8, ptr %1, i64 -8
  %.valueWitnesses = load ptr, ptr %2, align 8, !invariant.load !17, !dereferenceable !18
  %3 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %3, align 8, !invariant.load !17
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
declare i64 @malloc_usable_size(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { noinline "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn }
attributes #7 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { sspreq "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind willreturn }
attributes #17 = { nounwind memory(read) }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind memory(argmem: read) }

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
!15 = distinct !{!15, !16, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!16 = distinct !{!16, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
!17 = !{}
!18 = !{i64 96}
