; ModuleID = 'results/static/guard_competitors/Swift_sha1/mv.ll'
source_filename = "/Users/ebrah/Project/compiler/ODeSSy/logs/swift_triage/sha1.ll"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

%TSi = type <{ i64 }>
%TSa = type <{ %Ts12_ArrayBufferV }>
%Ts12_ArrayBufferV = type <{ %Ts14_BridgeStorageV }>
%Ts14_BridgeStorageV = type <{ ptr }>
%Ts6UInt32V = type <{ i32 }>
%swift.type = type { i64 }
%swift.type_descriptor = type opaque
%struct._SwiftEmptyArrayStorage = type { %struct.HeapObject, %struct._SwiftArrayBodyStorage }
%struct.HeapObject = type { ptr, %struct.InlineRefCountsPlaceholder }
%struct.InlineRefCountsPlaceholder = type { i64 }
%struct._SwiftArrayBodyStorage = type { i64, i64 }
%Ts6UInt64V = type <{ i64 }>
%swift.metadata_response = type { ptr, i64 }
%swift.opaque = type opaque
%TSS = type <{ %Ts11_StringGutsV }>
%Ts11_StringGutsV = type <{ %Ts13_StringObjectV }>
%Ts13_StringObjectV = type <{ %Ts6UInt64V, ptr }>
%Ts16IndexingIteratorVySs8UTF8ViewVG = type <{ %TSs8UTF8ViewV, %TSS5IndexV }>
%TSs8UTF8ViewV = type <{ %Ts5SliceVySS8UTF8ViewVG }>
%Ts5SliceVySS8UTF8ViewVG = type <{ %TSS5IndexV, %TSS5IndexV, %TSS8UTF8ViewV }>
%TSS8UTF8ViewV = type <{ %Ts11_StringGutsV }>
%TSS5IndexV = type <{ %Ts6UInt64V }>

@"$s4sha15itersSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@"$s4sha14dataSays5UInt8VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$s4sha15finals6UInt32Vvp" = hidden global %Ts6UInt32V zeroinitializer, align 4
@".str.15.sha1/sha1.swift" = private unnamed_addr constant [16 x i8] c"sha1/sha1.swift\00"
@"$ss6UInt32VN" = external global %swift.type, align 8
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = private unnamed_addr constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCyypGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMR" to i64)) to i32), i32 9 }, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"_swift_FORCE_LOAD_$_swiftFoundation_$_sha1" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftFoundation"
@"_swift_FORCE_LOAD_$_swift_Builtin_float_$_sha1" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float"
@"_swift_FORCE_LOAD_$_swiftObjectiveC_$_sha1" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC"
@"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_sha1" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation"
@"_swift_FORCE_LOAD_$_swiftDispatch_$_sha1" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftDispatch"
@"_swift_FORCE_LOAD_$_swiftXPC_$_sha1" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftXPC"
@"_swift_FORCE_LOAD_$_swiftIOKit_$_sha1" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftIOKit"
@_swiftEmptyArrayStorage = external global %struct._SwiftEmptyArrayStorage, align 8
@"$ss5UInt8VMn" = external global %swift.type_descriptor, align 4
@"got.$ss5UInt8VMn" = private unnamed_addr constant ptr @"$ss5UInt8VMn"
@"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" = linkonce_odr hidden constant <{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 1) to i64)) to i32), [1 x i8] c"y", i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss5UInt8VMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [1 x i8], i8, i32, [1 x i8], i8 }>, ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V", i32 0, i32 4) to i64)) to i32), [1 x i8] c"G", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCys5UInt8VGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCys5UInt8VGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____y_____G s23_ContiguousArrayStorageC s5UInt8V" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCys5UInt8VGMR" to i64)) to i32), i32 12 }, align 8
@"$sSSN" = external global %swift.type, align 8
@"$sSSs25LosslessStringConvertiblesWP" = external global ptr, align 8
@"$sSSSTsWP" = external global ptr, align 8
@__swift_reflection_version = linkonce_odr hidden constant i16 3
@llvm.used = appending global [10 x ptr] [ptr @"\01l_entry_point", ptr @__swift_reflection_version, ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_sha1", ptr @"_swift_FORCE_LOAD_$_swiftDispatch_$_sha1", ptr @"_swift_FORCE_LOAD_$_swiftFoundation_$_sha1", ptr @"_swift_FORCE_LOAD_$_swiftIOKit_$_sha1", ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC_$_sha1", ptr @"_swift_FORCE_LOAD_$_swiftXPC_$_sha1", ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float_$_sha1", ptr @main], section "llvm.metadata"

define noundef i32 @main(i32 %0, ptr readnone captures(none) %1) #0 {
entry:
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %access-scratch = alloca [24 x i8], align 8
  %access-scratch20 = alloca [24 x i8], align 8
  %2 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %3 = tail call swiftcc %swift.metadata_response @"$s10Foundation3URLVMa"(i64 0) #15
  %4 = extractvalue %swift.metadata_response %3, 0
  %5 = getelementptr inbounds i8, ptr %4, i64 -8
  %.valueWitnesses = load ptr, ptr %5, align 8, !invariant.load !41, !dereferenceable !42
  %6 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 64
  %size = load i64, ptr %6, align 8, !invariant.load !41
  %7 = alloca i8, i64 %size, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %8 = tail call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %10 = load i64, ptr %9, align 8, !range !43
  %11 = icmp samesign ult i64 %10, 2
  br i1 %11, label %odessy.chk, label %12, !prof !44

12:                                               ; preds = %entry
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %14 = load i64, ptr %13, align 8
  %._guts._object._object = getelementptr inbounds nuw i8, ptr %8, i64 56
  %15 = load ptr, ptr %._guts._object._object, align 8
  %16 = tail call ptr @swift_bridgeObjectRetain(ptr returned %15) #2
  tail call void @swift_bridgeObjectRelease(ptr nonnull %8) #2
  %17 = ptrtoint ptr %15 to i64
  %18 = and i64 %17, 2305843009213693952
  %.not = icmp eq i64 %18, 0
  %19 = and i64 %14, 281474976710655
  %20 = lshr i64 %17, 56
  %21 = and i64 %20, 15
  %22 = select i1 %.not, i64 %19, i64 %21
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25, !prof !44

24:                                               ; preds = %12
  tail call void @swift_bridgeObjectRelease(ptr %15) #2
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
  unreachable

25:                                               ; preds = %12
  %26 = and i64 %17, 1152921504606846976
  %.not87 = icmp eq i64 %26, 0
  br i1 %.not87, label %27, label %.thread, !prof !45

27:                                               ; preds = %25
  br i1 %.not, label %96, label %28

28:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.elt27 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %29 = and i64 %17, 72057594037927935
  store i64 %14, ptr %2, align 8
  store i64 %29, ptr %.elt27, align 8
  %30 = trunc i64 %14 to i8
  switch i8 %30, label %55 [
    i8 45, label %31
    i8 43, label %54
  ]

31:                                               ; preds = %28
  switch i64 %21, label %34 [
    i64 0, label %612
    i64 1, label %.loopexit115
  ], !prof !46

.loopexit115:                                     ; preds = %73, %68, %65, %60, %50, %45, %42, %37, %92, %87, %84, %79, %55, %54, %31
  %32 = phi i64 [ 0, %55 ], [ 0, %31 ], [ 0, %54 ], [ 0, %37 ], [ 0, %79 ], [ 0, %84 ], [ 0, %87 ], [ %93, %92 ], [ 0, %42 ], [ 0, %45 ], [ %51, %50 ], [ 0, %65 ], [ 0, %68 ], [ %74, %73 ], [ 0, %60 ]
  %33 = phi i8 [ 1, %55 ], [ 1, %31 ], [ 1, %54 ], [ 1, %37 ], [ 1, %79 ], [ 1, %84 ], [ 1, %87 ], [ 0, %92 ], [ 1, %42 ], [ 1, %45 ], [ 0, %50 ], [ 1, %65 ], [ 1, %68 ], [ 0, %73 ], [ 1, %60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread102

34:                                               ; preds = %31
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %36 = getelementptr i8, ptr %2, i64 %21
  br label %37

37:                                               ; preds = %50, %34
  %38 = phi ptr [ %35, %34 ], [ %52, %50 ]
  %39 = phi i64 [ 0, %34 ], [ %51, %50 ]
  %40 = load i8, ptr %38, align 1
  %41 = add i8 %40, -48
  %or.cond = icmp ult i8 %41, 10
  br i1 %or.cond, label %42, label %.loopexit115, !prof !47

42:                                               ; preds = %37
  %43 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 10)
  %44 = extractvalue { i64, i1 } %43, 1
  br i1 %44, label %.loopexit115, label %45

45:                                               ; preds = %42
  %46 = extractvalue { i64, i1 } %43, 0
  %47 = zext nneg i8 %41 to i64
  %48 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %46, i64 %47)
  %49 = extractvalue { i64, i1 } %48, 1
  br i1 %49, label %.loopexit115, label %50, !prof !44

50:                                               ; preds = %45
  %51 = extractvalue { i64, i1 } %48, 0
  %52 = getelementptr inbounds nuw i8, ptr %38, i64 1
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %.loopexit115, label %37

54:                                               ; preds = %28
  switch i64 %21, label %57 [
    i64 0, label %611
    i64 1, label %.loopexit115
  ], !prof !46

55:                                               ; preds = %28
  %56 = icmp eq i64 %21, 0
  br i1 %56, label %.loopexit115, label %77, !prof !44

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %59 = getelementptr i8, ptr %2, i64 %21
  br label %60

60:                                               ; preds = %73, %57
  %61 = phi ptr [ %58, %57 ], [ %75, %73 ]
  %62 = phi i64 [ 0, %57 ], [ %74, %73 ]
  %63 = load i8, ptr %61, align 1
  %64 = add i8 %63, -48
  %or.cond32 = icmp ult i8 %64, 10
  br i1 %or.cond32, label %65, label %.loopexit115, !prof !47

65:                                               ; preds = %60
  %66 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 10)
  %67 = extractvalue { i64, i1 } %66, 1
  br i1 %67, label %.loopexit115, label %68

68:                                               ; preds = %65
  %69 = extractvalue { i64, i1 } %66, 0
  %70 = zext nneg i8 %64 to i64
  %71 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %69, i64 %70)
  %72 = extractvalue { i64, i1 } %71, 1
  br i1 %72, label %.loopexit115, label %73, !prof !44

73:                                               ; preds = %68
  %74 = extractvalue { i64, i1 } %71, 0
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 1
  %76 = icmp eq ptr %75, %59
  br i1 %76, label %.loopexit115, label %60

77:                                               ; preds = %55
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %21
  br label %79

79:                                               ; preds = %92, %77
  %80 = phi ptr [ %2, %77 ], [ %94, %92 ]
  %81 = phi i64 [ 0, %77 ], [ %93, %92 ]
  %82 = load i8, ptr %80, align 1
  %83 = add i8 %82, -48
  %or.cond33 = icmp ult i8 %83, 10
  br i1 %or.cond33, label %84, label %.loopexit115, !prof !47

84:                                               ; preds = %79
  %85 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %81, i64 10)
  %86 = extractvalue { i64, i1 } %85, 1
  br i1 %86, label %.loopexit115, label %87

87:                                               ; preds = %84
  %88 = extractvalue { i64, i1 } %85, 0
  %89 = zext nneg i8 %83 to i64
  %90 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %88, i64 %89)
  %91 = extractvalue { i64, i1 } %90, 1
  br i1 %91, label %.loopexit115, label %92, !prof !44

92:                                               ; preds = %87
  %93 = extractvalue { i64, i1 } %90, 0
  %94 = getelementptr inbounds nuw i8, ptr %80, i64 1
  %95 = icmp eq ptr %94, %78
  br i1 %95, label %.loopexit115, label %79

96:                                               ; preds = %27
  %97 = and i64 %14, 1152921504606846976
  %.not86 = icmp eq i64 %97, 0
  br i1 %.not86, label %108, label %105, !prof !44

.thread102:                                       ; preds = %163, %158, %155, %150, %137, %132, %129, %124, %184, %179, %176, %171, %167, %145, %143, %119, %.loopexit115
  %.sroa.0.1106 = phi i64 [ 0, %119 ], [ 0, %143 ], [ 0, %145 ], [ 0, %167 ], [ %32, %.loopexit115 ], [ 0, %124 ], [ 0, %171 ], [ 0, %176 ], [ 0, %179 ], [ %185, %184 ], [ 0, %129 ], [ 0, %132 ], [ %138, %137 ], [ 0, %155 ], [ 0, %158 ], [ %164, %163 ], [ 0, %150 ]
  %.sroa.6.1105 = phi i8 [ 1, %119 ], [ 1, %143 ], [ 1, %145 ], [ 0, %167 ], [ %33, %.loopexit115 ], [ 1, %124 ], [ 1, %171 ], [ 1, %176 ], [ 1, %179 ], [ 0, %184 ], [ 1, %129 ], [ 1, %132 ], [ 0, %137 ], [ 1, %155 ], [ 1, %158 ], [ 0, %163 ], [ 1, %150 ]
  call void @swift_bridgeObjectRelease(ptr %15) #2
  br label %101

.thread:                                          ; preds = %25
  %98 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSS_SiTg5"(i64 %14, ptr %15, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %15) #2
  %99 = extractvalue { i64, i8 } %98, 0
  %100 = extractvalue { i64, i8 } %98, 1
  br label %101

101:                                              ; preds = %.thread, %.thread102
  %102 = phi i64 [ %99, %.thread ], [ %.sroa.0.1106, %.thread102 ]
  %103 = phi i8 [ %100, %.thread ], [ %.sroa.6.1105, %.thread102 ]
  %104 = icmp eq i8 %103, 1
  br i1 %104, label %odessy.chk1, label %188

105:                                              ; preds = %96
  %106 = and i64 %17, 1152921504606846975
  %107 = add nuw nsw i64 %106, 32
  br label %112

108:                                              ; preds = %96
  %109 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %14, ptr %15)
  %110 = extractvalue { i64, i64 } %109, 0
  %111 = extractvalue { i64, i64 } %109, 1
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi i64 [ %110, %108 ], [ %107, %105 ]
  %114 = phi i64 [ %111, %108 ], [ %19, %105 ]
  %115 = inttoptr i64 %113 to ptr
  %116 = load i8, ptr %115, align 1
  switch i8 %116, label %145 [
    i8 45, label %117
    i8 43, label %141
  ]

117:                                              ; preds = %112
  %118 = icmp slt i64 %114, 1
  br i1 %118, label %odessy.chk12, label %119, !prof !44

119:                                              ; preds = %117
  %120 = icmp eq i64 %114, 1
  br i1 %120, label %.thread102, label %121, !prof !44

121:                                              ; preds = %119
  %122 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %123 = getelementptr i8, ptr %115, i64 %114
  br label %124

124:                                              ; preds = %137, %121
  %125 = phi ptr [ %122, %121 ], [ %139, %137 ]
  %126 = phi i64 [ 0, %121 ], [ %138, %137 ]
  %127 = load i8, ptr %125, align 1
  %128 = add i8 %127, -48
  %or.cond34 = icmp ult i8 %128, 10
  br i1 %or.cond34, label %129, label %.thread102, !prof !47

129:                                              ; preds = %124
  %130 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %126, i64 10)
  %131 = extractvalue { i64, i1 } %130, 1
  br i1 %131, label %.thread102, label %132

132:                                              ; preds = %129
  %133 = extractvalue { i64, i1 } %130, 0
  %134 = zext nneg i8 %128 to i64
  %135 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %133, i64 %134)
  %136 = extractvalue { i64, i1 } %135, 1
  br i1 %136, label %.thread102, label %137, !prof !44

137:                                              ; preds = %132
  %138 = extractvalue { i64, i1 } %135, 0
  %139 = getelementptr inbounds nuw i8, ptr %125, i64 1
  %140 = icmp eq ptr %139, %123
  br i1 %140, label %.thread102, label %124

141:                                              ; preds = %112
  %142 = icmp slt i64 %114, 1
  br i1 %142, label %odessy.chk11, label %143, !prof !44

143:                                              ; preds = %141
  %144 = icmp eq i64 %114, 1
  br i1 %144, label %.thread102, label %147, !prof !44

145:                                              ; preds = %112
  %146 = icmp eq i64 %114, 0
  br i1 %146, label %.thread102, label %167, !prof !44

147:                                              ; preds = %143
  %148 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %149 = getelementptr i8, ptr %115, i64 %114
  br label %150

150:                                              ; preds = %163, %147
  %151 = phi ptr [ %148, %147 ], [ %165, %163 ]
  %152 = phi i64 [ 0, %147 ], [ %164, %163 ]
  %153 = load i8, ptr %151, align 1
  %154 = add i8 %153, -48
  %or.cond35 = icmp ult i8 %154, 10
  br i1 %or.cond35, label %155, label %.thread102, !prof !47

155:                                              ; preds = %150
  %156 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %152, i64 10)
  %157 = extractvalue { i64, i1 } %156, 1
  br i1 %157, label %.thread102, label %158

158:                                              ; preds = %155
  %159 = extractvalue { i64, i1 } %156, 0
  %160 = zext nneg i8 %154 to i64
  %161 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %159, i64 %160)
  %162 = extractvalue { i64, i1 } %161, 1
  br i1 %162, label %.thread102, label %163, !prof !44

163:                                              ; preds = %158
  %164 = extractvalue { i64, i1 } %161, 0
  %165 = getelementptr inbounds nuw i8, ptr %151, i64 1
  %166 = icmp eq ptr %165, %149
  br i1 %166, label %.thread102, label %150

167:                                              ; preds = %145
  %168 = icmp eq i64 %113, 0
  br i1 %168, label %.thread102, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds i8, ptr %115, i64 %114
  br label %171

171:                                              ; preds = %184, %169
  %172 = phi ptr [ %115, %169 ], [ %186, %184 ]
  %173 = phi i64 [ 0, %169 ], [ %185, %184 ]
  %174 = load i8, ptr %172, align 1
  %175 = add i8 %174, -48
  %or.cond36 = icmp ult i8 %175, 10
  br i1 %or.cond36, label %176, label %.thread102, !prof !47

176:                                              ; preds = %171
  %177 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %173, i64 10)
  %178 = extractvalue { i64, i1 } %177, 1
  br i1 %178, label %.thread102, label %179

179:                                              ; preds = %176
  %180 = extractvalue { i64, i1 } %177, 0
  %181 = zext nneg i8 %175 to i64
  %182 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %180, i64 %181)
  %183 = extractvalue { i64, i1 } %182, 1
  br i1 %183, label %.thread102, label %184, !prof !44

184:                                              ; preds = %179
  %185 = extractvalue { i64, i1 } %182, 0
  %186 = getelementptr inbounds nuw i8, ptr %172, i64 1
  %187 = icmp eq ptr %186, %170
  br i1 %187, label %.thread102, label %171

188:                                              ; preds = %101
  store i64 %102, ptr @"$s4sha15itersSivp", align 8
  %189 = call swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"()
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 16
  %191 = load i64, ptr %190, align 8, !range !43
  %192 = icmp samesign ult i64 %191, 3
  br i1 %192, label %odessy.chk2, label %193, !prof !44

193:                                              ; preds = %188
  %194 = getelementptr inbounds nuw i8, ptr %189, i64 64
  %195 = load i64, ptr %194, align 8
  %._guts2._object._object = getelementptr inbounds nuw i8, ptr %189, i64 72
  %196 = load ptr, ptr %._guts2._object._object, align 8
  %197 = call ptr @swift_bridgeObjectRetain(ptr returned %196) #2
  call void @swift_bridgeObjectRelease(ptr nonnull %189) #2
  call swiftcc void @"$s10Foundation3URLV15fileURLWithPathACSSh_tcfC"(ptr noalias nonnull sret(%swift.opaque) %7, i64 %195, ptr %196)
  call void @swift_bridgeObjectRelease(ptr %196) #2
  %198 = call swiftcc { i64, i64 } @"$s10Foundation4DataV10contentsOf7optionsAcA3URLVh_So20NSDataReadingOptionsVtKcfC"(ptr noalias nonnull %7, i64 0, ptr swiftself undef, ptr noalias nonnull swifterror captures(none) dereferenceable(8) %swifterror)
  %199 = load ptr, ptr %swifterror, align 8
  %.not88 = icmp eq ptr %199, null
  br i1 %.not88, label %200, label %609

200:                                              ; preds = %193
  %201 = extractvalue { i64, i64 } %198, 1
  %202 = extractvalue { i64, i64 } %198, 0
  %203 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy3 = load ptr, ptr %203, align 8, !invariant.load !41
  call void %Destroy3(ptr noalias nonnull %7, ptr %4) #2
  %204 = call swiftcc ptr @"$sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5"(i64 %202, i64 %201)
  store ptr %204, ptr @"$s4sha14dataSays5UInt8VGvp", align 8
  store i32 0, ptr @"$s4sha15finals6UInt32Vvp", align 4
  %205 = load i64, ptr @"$s4sha15itersSivp", align 8
  %206 = icmp slt i64 %205, 0
  br i1 %206, label %odessy.chk3, label %207, !prof !44

207:                                              ; preds = %200
  %208 = icmp eq i64 %205, 0
  br i1 %208, label %.loopexit108, label %209

209:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch)
  call void @swift_beginAccess(ptr nonnull @"$s4sha15finals6UInt32Vvp", ptr nonnull %access-scratch, i64 1, ptr null) #2
  br label %216

.loopexit108:                                     ; preds = %.loopexit, %207
  %210 = call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMR") #16
  %211 = call noalias ptr @swift_allocObject(ptr %210, i64 64, i64 7) #2
  %212 = getelementptr inbounds nuw i8, ptr %211, i64 16
  store <2 x i64> <i64 1, i64 2>, ptr %212, align 8
  %213 = getelementptr inbounds nuw i8, ptr %211, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %access-scratch20)
  call void @swift_beginAccess(ptr nonnull @"$s4sha15finals6UInt32Vvp", ptr nonnull %access-scratch20, i64 0, ptr null) #2
  %214 = load i32, ptr @"$s4sha15finals6UInt32Vvp", align 4
  %215 = getelementptr inbounds nuw i8, ptr %211, i64 56
  store ptr @"$ss6UInt32VN", ptr %215, align 8
  store i32 %214, ptr %213, align 8
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %211, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %211) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i32 0

216:                                              ; preds = %.loopexit, %209
  %217 = phi i64 [ 0, %209 ], [ %221, %.loopexit ]
  %218 = call swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZ"(i64 80, ptr nonnull @"$ss6UInt32VN")
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 16
  store i64 80, ptr %219, align 8
  %220 = getelementptr i8, ptr %218, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %220, i8 0, i64 320, i1 false)
  %221 = add nuw nsw i64 %217, 1
  %222 = load ptr, ptr @"$s4sha14dataSays5UInt8VGvp", align 8
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 16
  %224 = load i64, ptr %223, align 8, !range !43
  %225 = lshr i64 %224, 6
  %226 = icmp samesign ult i64 %224, 64
  br i1 %226, label %.loopexit, label %227

227:                                              ; preds = %216
  %228 = getelementptr inbounds nuw i8, ptr %222, i64 32
  %invariant.gep = getelementptr i8, ptr %218, i64 -24
  %invariant.gep189 = getelementptr i8, ptr %218, i64 -32
  %229 = getelementptr i8, ptr %218, i64 36
  %230 = getelementptr i8, ptr %218, i64 40
  %231 = getelementptr i8, ptr %218, i64 44
  %232 = getelementptr i8, ptr %218, i64 48
  %233 = getelementptr i8, ptr %218, i64 52
  %234 = getelementptr i8, ptr %218, i64 56
  %235 = getelementptr i8, ptr %218, i64 60
  %236 = getelementptr i8, ptr %218, i64 64
  %237 = getelementptr i8, ptr %218, i64 68
  %238 = getelementptr i8, ptr %218, i64 72
  %239 = getelementptr i8, ptr %218, i64 76
  %240 = getelementptr i8, ptr %218, i64 80
  %241 = getelementptr i8, ptr %218, i64 84
  %242 = getelementptr i8, ptr %218, i64 88
  %243 = getelementptr i8, ptr %218, i64 92
  br label %scalar.ph

.loopexit.loopexit:                               ; preds = %569
  %244 = add i32 %575, %572
  %245 = add i32 %244, %574
  %246 = add i32 %245, %573
  %247 = add i32 %246, %571
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %216
  %248 = phi i32 [ -1009589778, %216 ], [ %247, %.loopexit.loopexit ]
  %249 = load i32, ptr @"$s4sha15finals6UInt32Vvp", align 4
  %250 = add i32 %249, %248
  store i32 %250, ptr @"$s4sha15finals6UInt32Vvp", align 4
  call void @swift_bridgeObjectRelease(ptr nonnull %218) #2
  %251 = icmp eq i64 %221, %205
  br i1 %251, label %.loopexit108, label %216

scalar.ph:                                        ; preds = %569, %227
  %252 = phi i32 [ -1009589776, %227 ], [ %575, %569 ]
  %253 = phi i32 [ 271733878, %227 ], [ %574, %569 ]
  %254 = phi i32 [ -1732584194, %227 ], [ %573, %569 ]
  %255 = phi i32 [ -271733879, %227 ], [ %572, %569 ]
  %256 = phi i32 [ 1732584193, %227 ], [ %571, %569 ]
  %257 = phi i64 [ 0, %227 ], [ %570, %569 ]
  %258 = shl i64 %257, 6
  %259 = getelementptr inbounds nuw i8, ptr %228, i64 %258
  %260 = load i8, ptr %259, align 1
  %261 = zext i8 %260 to i32
  %262 = shl nuw i32 %261, 24
  %263 = getelementptr inbounds nuw i8, ptr %259, i64 1
  %264 = load i8, ptr %263, align 1
  %265 = zext i8 %264 to i32
  %266 = shl nuw nsw i32 %265, 16
  %267 = or disjoint i32 %266, %262
  %268 = getelementptr inbounds nuw i8, ptr %259, i64 2
  %269 = load i8, ptr %268, align 1
  %270 = zext i8 %269 to i32
  %271 = shl nuw nsw i32 %270, 8
  %272 = or disjoint i32 %267, %271
  %273 = getelementptr inbounds nuw i8, ptr %259, i64 3
  %274 = load i8, ptr %273, align 1
  %275 = zext i8 %274 to i32
  %276 = or disjoint i32 %272, %275
  store i32 %276, ptr %220, align 4
  %277 = getelementptr inbounds nuw i8, ptr %259, i64 4
  %278 = load i8, ptr %277, align 1
  %279 = zext i8 %278 to i32
  %280 = shl nuw i32 %279, 24
  %281 = getelementptr inbounds nuw i8, ptr %259, i64 5
  %282 = load i8, ptr %281, align 1
  %283 = zext i8 %282 to i32
  %284 = shl nuw nsw i32 %283, 16
  %285 = or disjoint i32 %284, %280
  %286 = getelementptr inbounds nuw i8, ptr %259, i64 6
  %287 = load i8, ptr %286, align 1
  %288 = zext i8 %287 to i32
  %289 = shl nuw nsw i32 %288, 8
  %290 = or disjoint i32 %285, %289
  %291 = getelementptr inbounds nuw i8, ptr %259, i64 7
  %292 = load i8, ptr %291, align 1
  %293 = zext i8 %292 to i32
  %294 = or disjoint i32 %290, %293
  store i32 %294, ptr %229, align 4
  %295 = getelementptr inbounds nuw i8, ptr %259, i64 8
  %296 = load i8, ptr %295, align 1
  %297 = zext i8 %296 to i32
  %298 = shl nuw i32 %297, 24
  %299 = getelementptr inbounds nuw i8, ptr %259, i64 9
  %300 = load i8, ptr %299, align 1
  %301 = zext i8 %300 to i32
  %302 = shl nuw nsw i32 %301, 16
  %303 = or disjoint i32 %302, %298
  %304 = getelementptr inbounds nuw i8, ptr %259, i64 10
  %305 = load i8, ptr %304, align 1
  %306 = zext i8 %305 to i32
  %307 = shl nuw nsw i32 %306, 8
  %308 = or disjoint i32 %303, %307
  %309 = getelementptr inbounds nuw i8, ptr %259, i64 11
  %310 = load i8, ptr %309, align 1
  %311 = zext i8 %310 to i32
  %312 = or disjoint i32 %308, %311
  store i32 %312, ptr %230, align 4
  %313 = getelementptr inbounds nuw i8, ptr %259, i64 12
  %314 = load i8, ptr %313, align 1
  %315 = zext i8 %314 to i32
  %316 = shl nuw i32 %315, 24
  %317 = getelementptr inbounds nuw i8, ptr %259, i64 13
  %318 = load i8, ptr %317, align 1
  %319 = zext i8 %318 to i32
  %320 = shl nuw nsw i32 %319, 16
  %321 = or disjoint i32 %320, %316
  %322 = getelementptr inbounds nuw i8, ptr %259, i64 14
  %323 = load i8, ptr %322, align 1
  %324 = zext i8 %323 to i32
  %325 = shl nuw nsw i32 %324, 8
  %326 = or disjoint i32 %321, %325
  %327 = getelementptr inbounds nuw i8, ptr %259, i64 15
  %328 = load i8, ptr %327, align 1
  %329 = zext i8 %328 to i32
  %330 = or disjoint i32 %326, %329
  store i32 %330, ptr %231, align 4
  %331 = getelementptr inbounds nuw i8, ptr %259, i64 16
  %332 = load i8, ptr %331, align 1
  %333 = zext i8 %332 to i32
  %334 = shl nuw i32 %333, 24
  %335 = getelementptr inbounds nuw i8, ptr %259, i64 17
  %336 = load i8, ptr %335, align 1
  %337 = zext i8 %336 to i32
  %338 = shl nuw nsw i32 %337, 16
  %339 = or disjoint i32 %338, %334
  %340 = getelementptr inbounds nuw i8, ptr %259, i64 18
  %341 = load i8, ptr %340, align 1
  %342 = zext i8 %341 to i32
  %343 = shl nuw nsw i32 %342, 8
  %344 = or disjoint i32 %339, %343
  %345 = getelementptr inbounds nuw i8, ptr %259, i64 19
  %346 = load i8, ptr %345, align 1
  %347 = zext i8 %346 to i32
  %348 = or disjoint i32 %344, %347
  store i32 %348, ptr %232, align 4
  %349 = getelementptr inbounds nuw i8, ptr %259, i64 20
  %350 = load i8, ptr %349, align 1
  %351 = zext i8 %350 to i32
  %352 = shl nuw i32 %351, 24
  %353 = getelementptr inbounds nuw i8, ptr %259, i64 21
  %354 = load i8, ptr %353, align 1
  %355 = zext i8 %354 to i32
  %356 = shl nuw nsw i32 %355, 16
  %357 = or disjoint i32 %356, %352
  %358 = getelementptr inbounds nuw i8, ptr %259, i64 22
  %359 = load i8, ptr %358, align 1
  %360 = zext i8 %359 to i32
  %361 = shl nuw nsw i32 %360, 8
  %362 = or disjoint i32 %357, %361
  %363 = getelementptr inbounds nuw i8, ptr %259, i64 23
  %364 = load i8, ptr %363, align 1
  %365 = zext i8 %364 to i32
  %366 = or disjoint i32 %362, %365
  store i32 %366, ptr %233, align 4
  %367 = getelementptr inbounds nuw i8, ptr %259, i64 24
  %368 = load i8, ptr %367, align 1
  %369 = zext i8 %368 to i32
  %370 = shl nuw i32 %369, 24
  %371 = getelementptr inbounds nuw i8, ptr %259, i64 25
  %372 = load i8, ptr %371, align 1
  %373 = zext i8 %372 to i32
  %374 = shl nuw nsw i32 %373, 16
  %375 = or disjoint i32 %374, %370
  %376 = getelementptr inbounds nuw i8, ptr %259, i64 26
  %377 = load i8, ptr %376, align 1
  %378 = zext i8 %377 to i32
  %379 = shl nuw nsw i32 %378, 8
  %380 = or disjoint i32 %375, %379
  %381 = getelementptr inbounds nuw i8, ptr %259, i64 27
  %382 = load i8, ptr %381, align 1
  %383 = zext i8 %382 to i32
  %384 = or disjoint i32 %380, %383
  store i32 %384, ptr %234, align 4
  %385 = getelementptr inbounds nuw i8, ptr %259, i64 28
  %386 = load i8, ptr %385, align 1
  %387 = zext i8 %386 to i32
  %388 = shl nuw i32 %387, 24
  %389 = getelementptr inbounds nuw i8, ptr %259, i64 29
  %390 = load i8, ptr %389, align 1
  %391 = zext i8 %390 to i32
  %392 = shl nuw nsw i32 %391, 16
  %393 = or disjoint i32 %392, %388
  %394 = getelementptr inbounds nuw i8, ptr %259, i64 30
  %395 = load i8, ptr %394, align 1
  %396 = zext i8 %395 to i32
  %397 = shl nuw nsw i32 %396, 8
  %398 = or disjoint i32 %393, %397
  %399 = getelementptr inbounds nuw i8, ptr %259, i64 31
  %400 = load i8, ptr %399, align 1
  %401 = zext i8 %400 to i32
  %402 = or disjoint i32 %398, %401
  store i32 %402, ptr %235, align 4
  %403 = getelementptr inbounds nuw i8, ptr %259, i64 32
  %404 = load i8, ptr %403, align 1
  %405 = zext i8 %404 to i32
  %406 = shl nuw i32 %405, 24
  %407 = getelementptr inbounds nuw i8, ptr %259, i64 33
  %408 = load i8, ptr %407, align 1
  %409 = zext i8 %408 to i32
  %410 = shl nuw nsw i32 %409, 16
  %411 = or disjoint i32 %410, %406
  %412 = getelementptr inbounds nuw i8, ptr %259, i64 34
  %413 = load i8, ptr %412, align 1
  %414 = zext i8 %413 to i32
  %415 = shl nuw nsw i32 %414, 8
  %416 = or disjoint i32 %411, %415
  %417 = getelementptr inbounds nuw i8, ptr %259, i64 35
  %418 = load i8, ptr %417, align 1
  %419 = zext i8 %418 to i32
  %420 = or disjoint i32 %416, %419
  store i32 %420, ptr %236, align 4
  %421 = getelementptr inbounds nuw i8, ptr %259, i64 36
  %422 = load i8, ptr %421, align 1
  %423 = zext i8 %422 to i32
  %424 = shl nuw i32 %423, 24
  %425 = getelementptr inbounds nuw i8, ptr %259, i64 37
  %426 = load i8, ptr %425, align 1
  %427 = zext i8 %426 to i32
  %428 = shl nuw nsw i32 %427, 16
  %429 = or disjoint i32 %428, %424
  %430 = getelementptr inbounds nuw i8, ptr %259, i64 38
  %431 = load i8, ptr %430, align 1
  %432 = zext i8 %431 to i32
  %433 = shl nuw nsw i32 %432, 8
  %434 = or disjoint i32 %429, %433
  %435 = getelementptr inbounds nuw i8, ptr %259, i64 39
  %436 = load i8, ptr %435, align 1
  %437 = zext i8 %436 to i32
  %438 = or disjoint i32 %434, %437
  store i32 %438, ptr %237, align 4
  %439 = getelementptr inbounds nuw i8, ptr %259, i64 40
  %440 = load i8, ptr %439, align 1
  %441 = zext i8 %440 to i32
  %442 = shl nuw i32 %441, 24
  %443 = getelementptr inbounds nuw i8, ptr %259, i64 41
  %444 = load i8, ptr %443, align 1
  %445 = zext i8 %444 to i32
  %446 = shl nuw nsw i32 %445, 16
  %447 = or disjoint i32 %446, %442
  %448 = getelementptr inbounds nuw i8, ptr %259, i64 42
  %449 = load i8, ptr %448, align 1
  %450 = zext i8 %449 to i32
  %451 = shl nuw nsw i32 %450, 8
  %452 = or disjoint i32 %447, %451
  %453 = getelementptr inbounds nuw i8, ptr %259, i64 43
  %454 = load i8, ptr %453, align 1
  %455 = zext i8 %454 to i32
  %456 = or disjoint i32 %452, %455
  store i32 %456, ptr %238, align 4
  %457 = getelementptr inbounds nuw i8, ptr %259, i64 44
  %458 = load i8, ptr %457, align 1
  %459 = zext i8 %458 to i32
  %460 = shl nuw i32 %459, 24
  %461 = getelementptr inbounds nuw i8, ptr %259, i64 45
  %462 = load i8, ptr %461, align 1
  %463 = zext i8 %462 to i32
  %464 = shl nuw nsw i32 %463, 16
  %465 = or disjoint i32 %464, %460
  %466 = getelementptr inbounds nuw i8, ptr %259, i64 46
  %467 = load i8, ptr %466, align 1
  %468 = zext i8 %467 to i32
  %469 = shl nuw nsw i32 %468, 8
  %470 = or disjoint i32 %465, %469
  %471 = getelementptr inbounds nuw i8, ptr %259, i64 47
  %472 = load i8, ptr %471, align 1
  %473 = zext i8 %472 to i32
  %474 = or disjoint i32 %470, %473
  store i32 %474, ptr %239, align 4
  %475 = getelementptr inbounds nuw i8, ptr %259, i64 48
  %476 = load i8, ptr %475, align 1
  %477 = zext i8 %476 to i32
  %478 = shl nuw i32 %477, 24
  %479 = getelementptr inbounds nuw i8, ptr %259, i64 49
  %480 = load i8, ptr %479, align 1
  %481 = zext i8 %480 to i32
  %482 = shl nuw nsw i32 %481, 16
  %483 = or disjoint i32 %482, %478
  %484 = getelementptr inbounds nuw i8, ptr %259, i64 50
  %485 = load i8, ptr %484, align 1
  %486 = zext i8 %485 to i32
  %487 = shl nuw nsw i32 %486, 8
  %488 = or disjoint i32 %483, %487
  %489 = getelementptr inbounds nuw i8, ptr %259, i64 51
  %490 = load i8, ptr %489, align 1
  %491 = zext i8 %490 to i32
  %492 = or disjoint i32 %488, %491
  store i32 %492, ptr %240, align 4
  %493 = getelementptr inbounds nuw i8, ptr %259, i64 52
  %494 = load i8, ptr %493, align 1
  %495 = zext i8 %494 to i32
  %496 = shl nuw i32 %495, 24
  %497 = getelementptr inbounds nuw i8, ptr %259, i64 53
  %498 = load i8, ptr %497, align 1
  %499 = zext i8 %498 to i32
  %500 = shl nuw nsw i32 %499, 16
  %501 = or disjoint i32 %500, %496
  %502 = getelementptr inbounds nuw i8, ptr %259, i64 54
  %503 = load i8, ptr %502, align 1
  %504 = zext i8 %503 to i32
  %505 = shl nuw nsw i32 %504, 8
  %506 = or disjoint i32 %501, %505
  %507 = getelementptr inbounds nuw i8, ptr %259, i64 55
  %508 = load i8, ptr %507, align 1
  %509 = zext i8 %508 to i32
  %510 = or disjoint i32 %506, %509
  store i32 %510, ptr %241, align 4
  %511 = getelementptr inbounds nuw i8, ptr %259, i64 56
  %512 = load i8, ptr %511, align 1
  %513 = zext i8 %512 to i32
  %514 = shl nuw i32 %513, 24
  %515 = getelementptr inbounds nuw i8, ptr %259, i64 57
  %516 = load i8, ptr %515, align 1
  %517 = zext i8 %516 to i32
  %518 = shl nuw nsw i32 %517, 16
  %519 = or disjoint i32 %518, %514
  %520 = getelementptr inbounds nuw i8, ptr %259, i64 58
  %521 = load i8, ptr %520, align 1
  %522 = zext i8 %521 to i32
  %523 = shl nuw nsw i32 %522, 8
  %524 = or disjoint i32 %519, %523
  %525 = getelementptr inbounds nuw i8, ptr %259, i64 59
  %526 = load i8, ptr %525, align 1
  %527 = zext i8 %526 to i32
  %528 = or disjoint i32 %524, %527
  store i32 %528, ptr %242, align 4
  %529 = getelementptr inbounds nuw i8, ptr %259, i64 60
  %530 = load i8, ptr %529, align 1
  %531 = zext i8 %530 to i32
  %532 = shl nuw i32 %531, 24
  %533 = getelementptr inbounds nuw i8, ptr %259, i64 61
  %534 = load i8, ptr %533, align 1
  %535 = zext i8 %534 to i32
  %536 = shl nuw nsw i32 %535, 16
  %537 = or disjoint i32 %536, %532
  %538 = getelementptr inbounds nuw i8, ptr %259, i64 62
  %539 = load i8, ptr %538, align 1
  %540 = zext i8 %539 to i32
  %541 = shl nuw nsw i32 %540, 8
  %542 = or disjoint i32 %537, %541
  %543 = getelementptr inbounds nuw i8, ptr %259, i64 63
  %544 = load i8, ptr %543, align 1
  %545 = zext i8 %544 to i32
  %546 = or disjoint i32 %542, %545
  store i32 %546, ptr %243, align 4
  br label %.preheader107.preheader

.preheader107.preheader:                          ; preds = %scalar.ph, %.preheader107.preheader
  %547 = phi i64 [ %548, %.preheader107.preheader ], [ 16, %scalar.ph ]
  %548 = add nuw nsw i64 %547, 1
  %549 = getelementptr [4 x i8], ptr %220, i64 %547
  %550 = getelementptr i8, ptr %549, i64 -12
  %551 = load i32, ptr %550, align 4
  %552 = getelementptr [4 x i8], ptr %218, i64 %547
  %553 = load i32, ptr %552, align 4
  %554 = xor i32 %553, %551
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %547
  %555 = load i32, ptr %gep, align 4
  %556 = xor i32 %554, %555
  %gep190 = getelementptr [4 x i8], ptr %invariant.gep189, i64 %547
  %557 = load i32, ptr %gep190, align 4
  %558 = xor i32 %556, %557
  %559 = call i32 @llvm.fshl.i32(i32 %558, i32 %558, i32 1)
  store i32 %559, ptr %549, align 4
  %560 = icmp eq i64 %548, 80
  br i1 %560, label %.preheader, label %.preheader107.preheader

.preheader:                                       ; preds = %.preheader107.preheader, %597
  %561 = phi i32 [ %563, %597 ], [ %252, %.preheader107.preheader ]
  %562 = phi i32 [ %606, %597 ], [ %256, %.preheader107.preheader ]
  %563 = phi i32 [ %564, %597 ], [ %253, %.preheader107.preheader ]
  %564 = phi i32 [ %607, %597 ], [ %254, %.preheader107.preheader ]
  %565 = phi i32 [ %562, %597 ], [ %255, %.preheader107.preheader ]
  %566 = phi i64 [ %567, %597 ], [ 0, %.preheader107.preheader ]
  %567 = add nuw nsw i64 %566, 1
  %568 = icmp samesign ult i64 %566, 20
  br i1 %568, label %577, label %582

569:                                              ; preds = %597
  %570 = add nuw nsw i64 %257, 1
  %571 = add i32 %606, %256
  %572 = add i32 %562, %255
  %573 = add i32 %607, %254
  %574 = add i32 %564, %253
  %575 = add i32 %563, %252
  %576 = icmp eq i64 %570, %225
  br i1 %576, label %.loopexit.loopexit, label %scalar.ph

577:                                              ; preds = %.preheader
  %578 = and i32 %565, %564
  %579 = xor i32 %565, -1
  %580 = and i32 %563, %579
  %581 = or i32 %578, %580
  br label %597

582:                                              ; preds = %.preheader
  %583 = icmp samesign ult i64 %566, 40
  br i1 %583, label %584, label %587

584:                                              ; preds = %582
  %585 = xor i32 %564, %563
  %586 = xor i32 %585, %565
  br label %597

587:                                              ; preds = %582
  %588 = icmp samesign ult i64 %566, 60
  br i1 %588, label %589, label %594

589:                                              ; preds = %587
  %590 = or i32 %564, %563
  %591 = and i32 %565, %590
  %592 = and i32 %564, %563
  %593 = or i32 %591, %592
  br label %597

594:                                              ; preds = %587
  %595 = xor i32 %564, %563
  %596 = xor i32 %595, %565
  br label %597

597:                                              ; preds = %594, %589, %584, %577
  %598 = phi i32 [ -899497514, %594 ], [ -1894007588, %589 ], [ 1859775393, %584 ], [ 1518500249, %577 ]
  %599 = phi i32 [ %596, %594 ], [ %593, %589 ], [ %586, %584 ], [ %581, %577 ]
  %600 = call i32 @llvm.fshl.i32(i32 %562, i32 %562, i32 5)
  %601 = getelementptr inbounds nuw [4 x i8], ptr %220, i64 %566
  %602 = load i32, ptr %601, align 4
  %603 = add i32 %600, %561
  %604 = add i32 %603, %598
  %605 = add i32 %604, %599
  %606 = add i32 %605, %602
  %607 = call i32 @llvm.fshl.i32(i32 %565, i32 %565, i32 30)
  %608 = icmp eq i64 %567, 80
  br i1 %608, label %569, label %.preheader

609:                                              ; preds = %193
  %610 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %610, align 8, !invariant.load !41
  call void %Destroy(ptr noalias nonnull %7, ptr %4) #2
  call swiftcc void @swift_unexpectedError(ptr nonnull %199, ptr nonnull @".str.15.sha1/sha1.swift", i64 15, i1 true, i64 6)
  unreachable

611:                                              ; preds = %54
  tail call void asm sideeffect "", "n"(i32 29) #2
  tail call void @llvm.trap()
  unreachable

612:                                              ; preds = %31
  tail call void asm sideeffect "", "n"(i32 30) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %entry
  tail call void @odessy.chk(i32 0)
  unreachable

odessy.chk1:                                      ; preds = %101
  call void @odessy.chk(i32 1)
  unreachable

odessy.chk2:                                      ; preds = %188
  call void @odessy.chk(i32 2)
  unreachable

odessy.chk3:                                      ; preds = %200
  call void @odessy.chk(i32 3)
  unreachable

odessy.chk11:                                     ; preds = %141
  tail call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %117
  tail call void @odessy.chk(i32 12)
  unreachable
}

declare swiftcc %swift.metadata_response @"$s10Foundation3URLVMa"(i64) local_unnamed_addr #0

declare swiftcc ptr @"$ss11CommandLineO9argumentsSaySSGvgZ"() local_unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: nounwind
declare ptr @swift_bridgeObjectRetain(ptr returned) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @swift_bridgeObjectRelease(ptr) local_unnamed_addr #2

define linkonce_odr hidden swiftcc ptr @"$sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %2 = tail call swiftcc %swift.metadata_response @"$s10Foundation4DataV8IteratorVMa"(i64 0) #15
  %3 = extractvalue %swift.metadata_response %2, 0
  %4 = getelementptr inbounds i8, ptr %3, i64 -8
  %.valueWitnesses = load ptr, ptr %4, align 8, !invariant.load !41, !dereferenceable !42
  %5 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 64
  %size = load i64, ptr %5, align 8, !invariant.load !41
  %6 = alloca i8, i64 %size, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %7 = lshr i64 %1, 62
  %8 = trunc nuw nsw i64 %7 to i8
  switch i8 %8, label %default.unreachable1 [
    i8 0, label %9
    i8 1, label %12
    i8 2, label %18
    i8 3, label %.sink.split
  ]

default.unreachable1:                             ; preds = %entry
  unreachable

9:                                                ; preds = %entry
  %10 = lshr i64 %1, 48
  %11 = and i64 %10, 255
  br label %31

12:                                               ; preds = %entry
  %13 = trunc i64 %0 to i32
  %14 = lshr i64 %0, 32
  %15 = trunc nuw i64 %14 to i32
  %16 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %15, i32 %13)
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %odessy.chk2, label %26, !prof !44

18:                                               ; preds = %entry
  %19 = inttoptr i64 %0 to ptr
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %.upperBound = getelementptr inbounds nuw i8, ptr %19, i64 24
  %21 = load i64, ptr %.upperBound, align 8
  %22 = load i64, ptr %20, align 8
  %23 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %21, i64 %22)
  %24 = extractvalue { i64, i1 } %23, 0
  %25 = extractvalue { i64, i1 } %23, 1
  br i1 %25, label %odessy.chk, label %31, !prof !44

26:                                               ; preds = %12
  %27 = extractvalue { i32, i1 } %16, 0
  %28 = sext i32 %27 to i64
  br label %31

.sink.split:                                      ; preds = %31, %entry
  tail call void @"$s10Foundation4DataV15_RepresentationOWOe"(i64 %0, i64 %1)
  br label %29

29:                                               ; preds = %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit", %.sink.split
  %30 = phi ptr [ %42, %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit" ], [ @_swiftEmptyArrayStorage, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %30

31:                                               ; preds = %26, %18, %9
  %32 = phi i64 [ %28, %26 ], [ %11, %9 ], [ %24, %18 ]
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %.sink.split, label %34

34:                                               ; preds = %31
  %..i = tail call i64 @llvm.smax.i64(i64 %32, i64 0)
  %35 = icmp eq i64 %..i, 0
  br i1 %35, label %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit", label %36

36:                                               ; preds = %34
  %37 = tail call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMR") #16
  %38 = add nuw i64 %..i, 32
  %39 = tail call noalias ptr @swift_allocObject(ptr %37, i64 %38, i64 7) #2
  %call.i.i = tail call i64 @malloc_size(ptr noundef %39) #17, !clang.arc.no_objc_arc_exceptions !41
  %gepdiff.i = shl i64 %call.i.i, 1
  %40 = add i64 %gepdiff.i, -64
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i64 %32, ptr %41, align 8
  %._storage1._capacityAndFlags.i = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i64 %40, ptr %._storage1._capacityAndFlags.i, align 8
  br label %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit"

"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit": ; preds = %34, %36
  %42 = phi ptr [ %39, %36 ], [ @_swiftEmptyArrayStorage, %34 ]
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %44 = ptrtoint ptr %43 to i64
  %45 = icmp sgt i64 %32, -1
  tail call void @llvm.assume(i1 %45)
  %46 = call swiftcc i64 @"$s10Foundation4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias nonnull %6, i64 %44, i64 %32, i64 %0, i64 %1)
  call void @"$s10Foundation4DataV15_RepresentationOWOe"(i64 %0, i64 %1)
  %47 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %47, align 8, !invariant.load !41
  call void %Destroy(ptr noalias nonnull %6, ptr nonnull %3) #2
  %.not = icmp eq i64 %46, %32
  br i1 %.not, label %29, label %odessy.chk1, !prof !45

odessy.chk:                                       ; preds = %18
  tail call void @odessy.chk(i32 13)
  unreachable

odessy.chk1:                                      ; preds = %"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5.exit"
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk2:                                      ; preds = %12
  tail call void @odessy.chk(i32 15)
  unreachable
}

; Function Attrs: nounwind
define hidden swiftcc i32 @"$s4sha14rotlys6UInt32VAD_ADtF"(i32 %0, i32 %1) local_unnamed_addr #3 {
entry:
  %2 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 32, i32 %1)
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %odessy.chk, label %4, !prof !44

4:                                                ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %or.cond = icmp ugt i32 %1, 31
  %6 = and i32 %1, 31
  %7 = shl i32 %0, %6
  %8 = select i1 %or.cond, i32 0, i32 %7, !prof !48
  %or.cond4 = icmp ugt i32 %5, 31
  %9 = and i32 %5, 31
  %10 = lshr i32 %0, %9
  %11 = select i1 %or.cond4, i32 0, i32 %10, !prof !48
  %12 = or i32 %11, %8
  ret i32 %12

odessy.chk:                                       ; preds = %entry
  tail call void @odessy.chk(i32 16)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSS_SiTg5"(i64 %0, ptr %1, i64 %2) local_unnamed_addr #4 {
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
  br i1 %11, label %16, label %12, !prof !45

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
  br i1 %.not3, label %36, label %32, !prof !44

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

declare swiftcc void @"$s10Foundation3URLV15fileURLWithPathACSSh_tcfC"(ptr noalias sret(%swift.opaque), i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64 } @"$s10Foundation4DataV10contentsOf7optionsAcA3URLVh_So20NSDataReadingOptionsVtKcfC"(ptr noalias, i64, ptr swiftself, ptr noalias swifterror captures(none) dereferenceable(8)) local_unnamed_addr #0

declare swiftcc void @swift_unexpectedError(ptr, ptr, i64, i1, i64) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc ptr @"$sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZ"(i64, ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #5

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
  %16 = tail call swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr %15, i64 %11, ptr null, ptr null) #18
  store atomic ptr %16, ptr %0 monotonic, align 8
  br label %7
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr, i64, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @swift_release(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #5

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swift_Builtin_float"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftObjectiveC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDispatch"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftXPC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftIOKit"()

declare swiftcc %swift.metadata_response @"$s10Foundation4DataV8IteratorVMa"(i64) local_unnamed_addr #0

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
  br i1 %8, label %odessy.chk1, label %9, !prof !44

9:                                                ; preds = %7
  %10 = icmp eq i64 %1, 1
  br i1 %10, label %.loopexit, label %11, !prof !44

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
  br i1 %or.cond, label %28, label %41, !prof !47

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
  br i1 %36, label %.loopexit, label %37, !prof !44

37:                                               ; preds = %31
  %38 = extractvalue { i64, i1 } %35, 0
  %39 = getelementptr inbounds nuw i8, ptr %23, i64 1
  %40 = icmp eq ptr %39, %21
  br i1 %40, label %.loopexit, label %22

41:                                               ; preds = %22
  %42 = icmp ugt i8 %25, 64
  %43 = icmp ult i8 %25, %18
  %or.cond4 = select i1 %42, i1 %43, i1 false
  br i1 %or.cond4, label %28, label %44, !prof !47

44:                                               ; preds = %41
  %45 = icmp ugt i8 %25, 96
  %46 = icmp ult i8 %25, %17
  %or.cond5 = select i1 %45, i1 %46, i1 false
  br i1 %or.cond5, label %28, label %.loopexit, !prof !47

.loopexit:                                        ; preds = %127, %120, %114, %111, %44, %37, %31, %28, %87, %80, %74, %71, %92, %53, %51, %9
  %47 = phi i64 [ 0, %9 ], [ 0, %51 ], [ 0, %53 ], [ 0, %92 ], [ 0, %44 ], [ 0, %87 ], [ 0, %71 ], [ 0, %74 ], [ %81, %80 ], [ 0, %28 ], [ 0, %31 ], [ %38, %37 ], [ 0, %111 ], [ 0, %114 ], [ %121, %120 ], [ 0, %127 ]
  %48 = phi i8 [ 1, %9 ], [ 1, %51 ], [ 0, %53 ], [ 1, %92 ], [ 1, %44 ], [ 1, %87 ], [ 1, %71 ], [ 1, %74 ], [ 0, %80 ], [ 1, %28 ], [ 1, %31 ], [ 0, %37 ], [ 1, %111 ], [ 1, %114 ], [ 0, %120 ], [ 1, %127 ]
  %49 = insertvalue { i64, i8 } undef, i64 %47, 0
  %50 = insertvalue { i64, i8 } %49, i8 %48, 1
  ret { i64, i8 } %50

51:                                               ; preds = %entry
  %52 = icmp eq i64 %1, 0
  br i1 %52, label %.loopexit, label %53, !prof !44

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
  br i1 %or.cond6, label %71, label %84, !prof !47

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
  br i1 %79, label %.loopexit, label %80, !prof !44

80:                                               ; preds = %74
  %81 = extractvalue { i64, i1 } %78, 0
  %82 = getelementptr inbounds nuw i8, ptr %66, i64 1
  %83 = icmp eq ptr %82, %64
  br i1 %83, label %.loopexit, label %65

84:                                               ; preds = %65
  %85 = icmp ugt i8 %68, 64
  %86 = icmp ult i8 %68, %60
  %or.cond7 = select i1 %85, i1 %86, i1 false
  br i1 %or.cond7, label %71, label %87, !prof !47

87:                                               ; preds = %84
  %88 = icmp ugt i8 %68, 96
  %89 = icmp ult i8 %68, %59
  %or.cond8 = select i1 %88, i1 %89, i1 false
  br i1 %or.cond8, label %71, label %.loopexit, !prof !47

90:                                               ; preds = %entry
  %91 = icmp slt i64 %1, 1
  br i1 %91, label %odessy.chk, label %92, !prof !44

92:                                               ; preds = %90
  %93 = icmp eq i64 %1, 1
  br i1 %93, label %.loopexit, label %94, !prof !44

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
  br i1 %or.cond9, label %111, label %124, !prof !47

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
  br i1 %119, label %.loopexit, label %120, !prof !44

120:                                              ; preds = %114
  %121 = extractvalue { i64, i1 } %118, 0
  %122 = getelementptr inbounds nuw i8, ptr %106, i64 1
  %123 = icmp eq ptr %122, %104
  br i1 %123, label %.loopexit, label %105

124:                                              ; preds = %105
  %125 = icmp ugt i8 %108, 64
  %126 = icmp ult i8 %108, %101
  %or.cond10 = select i1 %125, i1 %126, i1 false
  br i1 %or.cond10, label %111, label %127, !prof !47

127:                                              ; preds = %124
  %128 = icmp ugt i8 %108, 96
  %129 = icmp ult i8 %108, %100
  %or.cond11 = select i1 %128, i1 %129, i1 false
  br i1 %or.cond11, label %111, label %.loopexit, !prof !47

odessy.chk:                                       ; preds = %90
  tail call void @odessy.chk(i32 17)
  unreachable

odessy.chk1:                                      ; preds = %7
  tail call void @odessy.chk(i32 18)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingyS2SFZ"(i64 %0, ptr %1) local_unnamed_addr #4 {
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

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #4 {
entry:
  %4 = alloca %Ts16IndexingIteratorVySs8UTF8ViewVG, align 8
  %5 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = and i64 %6, 1152921504606846976
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %26, label %9, !prof !45

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
  br i1 %.not, label %19, label %odessy.chk, !prof !45

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %._crit_edge

._crit_edge:                                      ; preds = %9, %19
  %20 = phi ptr [ %13, %19 ], [ @_swiftEmptyArrayStorage, %9 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %22 = ptrtoint ptr %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %24 = load i64, ptr %23, align 8, !range !43
  %25 = tail call swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64 %22, i64 %24), !noalias !49
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
  br i1 %.not5, label %32, label %36, !prof !44

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
  tail call void @odessy.chk(i32 20)
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
  %call.i = tail call i64 @malloc_size(ptr noundef %6) #17, !clang.arc.no_objc_arc_exceptions !41
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
  br i1 %13, label %odessy.chk, label %15, !prof !44

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
  br i1 %.not13, label %.split.us.split.split.us.split.us, label %.split.us.split.split.us.split, !prof !44

.split.us.split.split.us.split.us:                ; preds = %.split.us.split.split.us, %65
  %36 = phi ptr [ %67, %65 ], [ %10, %.split.us.split.split.us ]
  %37 = phi i64 [ %60, %65 ], [ %3, %.split.us.split.split.us ]
  %38 = phi i64 [ %66, %65 ], [ 1, %.split.us.split.split.us ]
  %39 = and i64 %37, 12
  %.not.us.us.us = icmp eq i64 %39, %26
  br i1 %.not.us.us.us, label %40, label %42, !prof !44

40:                                               ; preds = %.split.us.split.split.us.split.us
  %41 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %37, i64 %.fr12, ptr %.fr11)
  br label %42

42:                                               ; preds = %40, %.split.us.split.split.us.split.us
  %43 = phi i64 [ %41, %40 ], [ %37, %.split.us.split.split.us.split.us ]
  %44 = lshr i64 %43, 14
  %45 = icmp samesign ult i64 %44, %16
  %46 = icmp samesign uge i64 %44, %14
  %47 = or i1 %45, %46
  br i1 %47, label %odessy.chk1, label %48, !prof !44

48:                                               ; preds = %42
  %49 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %.fr12, ptr %.fr11)
  %50 = extractvalue { i64, i64 } %49, 0
  %51 = lshr i64 %43, 16
  %52 = inttoptr i64 %50 to ptr
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %51
  %54 = load i8, ptr %53, align 1
  br i1 %.not.us.us.us, label %55, label %57, !prof !44

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
  br i1 %.not.us.us, label %74, label %.thread, !prof !44

74:                                               ; preds = %69
  %75 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %71, i64 %.fr12, ptr %.fr11)
  %76 = lshr i64 %75, 14
  %77 = icmp samesign ult i64 %76, %16
  %78 = icmp samesign uge i64 %76, %14
  %79 = or i1 %77, %78
  br i1 %79, label %odessy.chk1, label %87, !prof !44

.thread:                                          ; preds = %69
  %80 = lshr i64 %71, 14
  %81 = icmp samesign ult i64 %80, %16
  %82 = icmp samesign uge i64 %80, %14
  %83 = or i1 %81, %82
  br i1 %83, label %odessy.chk1, label %.thread32, !prof !44

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
  br i1 %.not.us, label %108, label %110, !prof !44

108:                                              ; preds = %.split.us.split.split
  %109 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %105, i64 %.fr12, ptr %.fr11)
  br label %110

110:                                              ; preds = %108, %.split.us.split.split
  %111 = phi i64 [ %109, %108 ], [ %105, %.split.us.split.split ]
  %112 = lshr i64 %111, 14
  %113 = icmp samesign ult i64 %112, %16
  %114 = icmp samesign uge i64 %112, %14
  %115 = or i1 %113, %114
  br i1 %115, label %odessy.chk1, label %116, !prof !44

116:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.fr12, ptr %7, align 8
  store i64 %28, ptr %.elt6, align 8
  %117 = lshr i64 %111, 16
  %118 = getelementptr inbounds nuw i8, ptr %7, i64 %117
  %119 = load i8, ptr %118, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not.us, label %120, label %122, !prof !44

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
  br i1 %.not, label %137, label %139, !prof !44

137:                                              ; preds = %.split
  %138 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %134, i64 %.fr12, ptr %.fr11)
  br label %139

139:                                              ; preds = %137, %.split
  %140 = phi i64 [ %138, %137 ], [ %134, %.split ]
  %141 = lshr i64 %140, 14
  %142 = icmp samesign ult i64 %141, %16
  %143 = icmp samesign uge i64 %141, %14
  %144 = or i1 %142, %143
  br i1 %144, label %odessy.chk1, label %145, !prof !44

145:                                              ; preds = %139
  %146 = tail call swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %140, i64 %.fr12, ptr %.fr11)
  br i1 %.not, label %147, label %149, !prof !44

147:                                              ; preds = %145
  %148 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %134, i64 %.fr12, ptr %.fr11)
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i64 [ %148, %147 ], [ %134, %145 ]
  %151 = lshr i64 %150, 16
  %.not15 = icmp samesign ult i64 %151, %35
  br i1 %.not15, label %152, label %odessy.chk2, !prof !45

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
  tail call void @odessy.chk(i32 21)
  unreachable

odessy.chk1:                                      ; preds = %139, %110, %74, %.thread, %42
  tail call void @odessy.chk(i32 22)
  unreachable

odessy.chk2:                                      ; preds = %149
  tail call void @odessy.chk(i32 23)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %0, i64 %1, ptr %2) local_unnamed_addr #4 {
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

; Function Attrs: sspreq
declare swiftcc i64 @"$s10Foundation4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias, i64, i64, i64, i64) local_unnamed_addr #9

; Function Attrs: noinline nounwind
define linkonce_odr hidden void @"$s10Foundation4DataV15_RepresentationOWOe"(i64 %0, i64 %1) local_unnamed_addr #10 {
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #5

declare swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias, ptr, ptr, ptr) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @swift_errorRelease(ptr) local_unnamed_addr #2

declare swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64, i64) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64, i64, ptr) local_unnamed_addr #4

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64, i64, ptr) local_unnamed_addr #4

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF"(i64, i64, i64, ptr) local_unnamed_addr #4

declare swiftcc i64 @"$sSS9UTF16ViewV5index_8offsetBySS5IndexVAF_SitF"(i64, i64, i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: optsize
declare i64 @malloc_size(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) local_unnamed_addr #14

attributes #0 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #4 = { noinline "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #7 = { nounwind memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { sspreq "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #10 = { noinline nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #11 = { optsize "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind memory(none) }
attributes #16 = { nounwind memory(read) }
attributes #17 = { optsize }
attributes #18 = { nounwind memory(argmem: read) }

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
!41 = !{}
!42 = !{i64 88}
!43 = !{i64 0, i64 9223372036854775807}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 2002}
!48 = !{!"branch_weights", i32 2002, i32 2000}
!49 = !{!50}
!50 = distinct !{!50, !51, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!51 = distinct !{!51, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
