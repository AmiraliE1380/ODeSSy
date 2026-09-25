; ModuleID = 'results/static/guard_competitors/Swift_base64/tag.ll'
source_filename = "/Users/ebrah/Project/compiler/ODeSSy/logs/swift_triage/base64.ll"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

%TSi = type <{ i64 }>
%TSa = type <{ %Ts12_ArrayBufferV }>
%Ts12_ArrayBufferV = type <{ %Ts14_BridgeStorageV }>
%Ts14_BridgeStorageV = type <{ ptr }>
%Ts6UInt64V = type <{ i64 }>
%swift.type_descriptor = type opaque
%swift.type = type { i64 }
%struct._SwiftEmptyArrayStorage = type { %struct.HeapObject, %struct._SwiftArrayBodyStorage }
%struct.HeapObject = type { ptr, %struct.InlineRefCountsPlaceholder }
%struct.InlineRefCountsPlaceholder = type { i64 }
%struct._SwiftArrayBodyStorage = type { i64, i64 }
%swift.metadata_response = type { ptr, i64 }
%swift.opaque = type opaque
%Ts5UInt8V = type <{ i8 }>
%TSS = type <{ %Ts11_StringGutsV }>
%Ts11_StringGutsV = type <{ %Ts13_StringObjectV }>
%Ts13_StringObjectV = type <{ %Ts6UInt64V, ptr }>
%Ts16IndexingIteratorVySs8UTF8ViewVG = type <{ %TSs8UTF8ViewV, %TSS5IndexV }>
%TSs8UTF8ViewV = type <{ %Ts5SliceVySS8UTF8ViewVG }>
%Ts5SliceVySS8UTF8ViewVG = type <{ %TSS5IndexV, %TSS5IndexV, %TSS8UTF8ViewV }>
%TSS8UTF8ViewV = type <{ %Ts11_StringGutsV }>
%TSS5IndexV = type <{ %Ts6UInt64V }>

@"$s6base645itersSivp" = hidden local_unnamed_addr global %TSi zeroinitializer, align 8
@"$s6base644dataSays5UInt8VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$s6base643tblSays5UInt8VGvp" = hidden local_unnamed_addr global %TSa zeroinitializer, align 8
@"$s6base645finals6UInt64Vvp" = hidden global %Ts6UInt64V zeroinitializer, align 8
@".str.19.base64/base64.swift" = private unnamed_addr constant [20 x i8] c"base64/base64.swift\00"
@".str.64.ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00"
@"$ss23_ContiguousArrayStorageCMn" = external global %swift.type_descriptor, align 4
@"got.$ss23_ContiguousArrayStorageCMn" = private unnamed_addr constant ptr @"$ss23_ContiguousArrayStorageCMn"
@"symbolic _____yypG s23_ContiguousArrayStorageC" = linkonce_odr hidden constant <{ i8, i32, [4 x i8], i8 }> <{ i8 2, i32 trunc (i64 sub (i64 ptrtoint (ptr @"got.$ss23_ContiguousArrayStorageCMn" to i64), i64 ptrtoint (ptr getelementptr inbounds (<{ i8, i32, [4 x i8], i8 }>, ptr @"symbolic _____yypG s23_ContiguousArrayStorageC", i32 0, i32 1) to i64)) to i32), [4 x i8] c"yypG", i8 0 }>, section "__TEXT,__swift5_typeref, regular", no_sanitize_address, align 2
@"$ss23_ContiguousArrayStorageCyypGMd" = linkonce_odr hidden global { ptr } zeroinitializer, align 8
@"$ss23_ContiguousArrayStorageCyypGMR" = linkonce_odr hidden constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @"symbolic _____yypG s23_ContiguousArrayStorageC" to i64), i64 ptrtoint (ptr @"$ss23_ContiguousArrayStorageCyypGMR" to i64)) to i32), i32 9 }, align 8
@"$ss6UInt64VN" = external global %swift.type, align 8
@"\01l_entry_point" = private constant { i32, i32 } { i32 trunc (i64 sub (i64 ptrtoint (ptr @main to i64), i64 ptrtoint (ptr @"\01l_entry_point" to i64)) to i32), i32 0 }, section "__TEXT, __swift5_entry, regular, no_dead_strip", align 4
@"_swift_FORCE_LOAD_$_swiftFoundation_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftFoundation"
@"_swift_FORCE_LOAD_$_swift_Builtin_float_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float"
@"_swift_FORCE_LOAD_$_swiftObjectiveC_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC"
@"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation"
@"_swift_FORCE_LOAD_$_swiftDispatch_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftDispatch"
@"_swift_FORCE_LOAD_$_swiftXPC_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftXPC"
@"_swift_FORCE_LOAD_$_swiftIOKit_$_base64" = weak_odr hidden constant ptr @"_swift_FORCE_LOAD_$_swiftIOKit"
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
@llvm.used = appending global [10 x ptr] [ptr @"\01l_entry_point", ptr @__swift_reflection_version, ptr @"_swift_FORCE_LOAD_$_swiftCoreFoundation_$_base64", ptr @"_swift_FORCE_LOAD_$_swiftDispatch_$_base64", ptr @"_swift_FORCE_LOAD_$_swiftFoundation_$_base64", ptr @"_swift_FORCE_LOAD_$_swiftIOKit_$_base64", ptr @"_swift_FORCE_LOAD_$_swiftObjectiveC_$_base64", ptr @"_swift_FORCE_LOAD_$_swiftXPC_$_base64", ptr @"_swift_FORCE_LOAD_$_swift_Builtin_float_$_base64", ptr @main], section "llvm.metadata"

define noundef i32 @main(i32 %0, ptr readnone captures(none) %1) #0 {
entry:
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
  %access-scratch = alloca [24 x i8], align 8
  %2 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %3 = tail call swiftcc %swift.metadata_response @"$s10Foundation3URLVMa"(i64 0) #14
  %4 = extractvalue %swift.metadata_response %3, 0
  %5 = getelementptr inbounds i8, ptr %4, i64 -8
  %.valueWitnesses = load ptr, ptr %5, align 8, !invariant.load !41, !dereferenceable !42
  %6 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 64
  %size = load i64, ptr %6, align 8, !invariant.load !41
  %7 = alloca i8, i64 %size, align 16
  call void @llvm.lifetime.start.p0(ptr %7)
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
  br label %471

25:                                               ; preds = %12
  %26 = and i64 %17, 1152921504606846976
  %.not69 = icmp eq i64 %26, 0
  br i1 %.not69, label %27, label %.thread, !prof !45

27:                                               ; preds = %25
  br i1 %.not, label %96, label %28

28:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(ptr %2)
  %.elt20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %29 = and i64 %17, 72057594037927935
  store i64 %14, ptr %2, align 8
  store i64 %29, ptr %.elt20, align 8
  %30 = trunc i64 %14 to i8
  switch i8 %30, label %55 [
    i8 45, label %31
    i8 43, label %54
  ]

31:                                               ; preds = %28
  switch i64 %21, label %34 [
    i64 0, label %485
    i64 1, label %.loopexit
  ], !prof !46

.loopexit:                                        ; preds = %92, %87, %84, %79, %73, %68, %65, %60, %55, %54, %50, %45, %42, %37, %31
  %32 = phi i64 [ 0, %55 ], [ 0, %31 ], [ 0, %54 ], [ 0, %79 ], [ %93, %92 ], [ 0, %87 ], [ 0, %84 ], [ 0, %37 ], [ %51, %50 ], [ 0, %45 ], [ 0, %42 ], [ 0, %60 ], [ %74, %73 ], [ 0, %68 ], [ 0, %65 ]
  %33 = phi i8 [ 1, %55 ], [ 1, %31 ], [ 1, %54 ], [ 1, %79 ], [ 0, %92 ], [ 1, %87 ], [ 1, %84 ], [ 1, %37 ], [ 0, %50 ], [ 1, %45 ], [ 1, %42 ], [ 1, %60 ], [ 0, %73 ], [ 1, %68 ], [ 1, %65 ]
  call void @llvm.lifetime.end.p0(ptr %2)
  br label %.thread81

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
  br i1 %or.cond, label %42, label %.loopexit, !prof !47

42:                                               ; preds = %37
  %43 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 10)
  %44 = extractvalue { i64, i1 } %43, 1
  br i1 %44, label %.loopexit, label %45

45:                                               ; preds = %42
  %46 = extractvalue { i64, i1 } %43, 0
  %47 = zext nneg i8 %41 to i64
  %48 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %46, i64 %47)
  %49 = extractvalue { i64, i1 } %48, 1
  br i1 %49, label %.loopexit, label %50, !prof !44

50:                                               ; preds = %45
  %51 = extractvalue { i64, i1 } %48, 0
  %52 = getelementptr inbounds nuw i8, ptr %38, i64 1
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %.loopexit, label %37

54:                                               ; preds = %28
  switch i64 %21, label %57 [
    i64 0, label %484
    i64 1, label %.loopexit
  ], !prof !46

55:                                               ; preds = %28
  %56 = icmp eq i64 %21, 0
  br i1 %56, label %.loopexit, label %77, !prof !44

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %59 = getelementptr i8, ptr %2, i64 %21
  br label %60

60:                                               ; preds = %73, %57
  %61 = phi ptr [ %58, %57 ], [ %75, %73 ]
  %62 = phi i64 [ 0, %57 ], [ %74, %73 ]
  %63 = load i8, ptr %61, align 1
  %64 = add i8 %63, -48
  %or.cond25 = icmp ult i8 %64, 10
  br i1 %or.cond25, label %65, label %.loopexit, !prof !47

65:                                               ; preds = %60
  %66 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 10)
  %67 = extractvalue { i64, i1 } %66, 1
  br i1 %67, label %.loopexit, label %68

68:                                               ; preds = %65
  %69 = extractvalue { i64, i1 } %66, 0
  %70 = zext nneg i8 %64 to i64
  %71 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %69, i64 %70)
  %72 = extractvalue { i64, i1 } %71, 1
  br i1 %72, label %.loopexit, label %73, !prof !44

73:                                               ; preds = %68
  %74 = extractvalue { i64, i1 } %71, 0
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 1
  %76 = icmp eq ptr %75, %59
  br i1 %76, label %.loopexit, label %60

77:                                               ; preds = %55
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 %21
  br label %79

79:                                               ; preds = %92, %77
  %80 = phi ptr [ %2, %77 ], [ %94, %92 ]
  %81 = phi i64 [ 0, %77 ], [ %93, %92 ]
  %82 = load i8, ptr %80, align 1
  %83 = add i8 %82, -48
  %or.cond26 = icmp ult i8 %83, 10
  br i1 %or.cond26, label %84, label %.loopexit, !prof !47

84:                                               ; preds = %79
  %85 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %81, i64 10)
  %86 = extractvalue { i64, i1 } %85, 1
  br i1 %86, label %.loopexit, label %87

87:                                               ; preds = %84
  %88 = extractvalue { i64, i1 } %85, 0
  %89 = zext nneg i8 %83 to i64
  %90 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %88, i64 %89)
  %91 = extractvalue { i64, i1 } %90, 1
  br i1 %91, label %.loopexit, label %92, !prof !44

92:                                               ; preds = %87
  %93 = extractvalue { i64, i1 } %90, 0
  %94 = getelementptr inbounds nuw i8, ptr %80, i64 1
  %95 = icmp eq ptr %94, %78
  br i1 %95, label %.loopexit, label %79

96:                                               ; preds = %27
  %97 = and i64 %14, 1152921504606846976
  %.not68 = icmp eq i64 %97, 0
  br i1 %.not68, label %108, label %105, !prof !44

.thread81:                                        ; preds = %184, %179, %176, %171, %167, %163, %158, %155, %150, %145, %143, %137, %132, %129, %124, %119, %.loopexit
  %.sroa.6.185 = phi i8 [ 0, %167 ], [ 1, %145 ], [ 1, %143 ], [ 1, %119 ], [ %33, %.loopexit ], [ 1, %171 ], [ 0, %184 ], [ 1, %179 ], [ 1, %176 ], [ 1, %124 ], [ 0, %137 ], [ 1, %132 ], [ 1, %129 ], [ 1, %150 ], [ 0, %163 ], [ 1, %158 ], [ 1, %155 ]
  %.sroa.0.184 = phi i64 [ 0, %167 ], [ 0, %145 ], [ 0, %143 ], [ 0, %119 ], [ %32, %.loopexit ], [ 0, %171 ], [ %185, %184 ], [ 0, %179 ], [ 0, %176 ], [ 0, %124 ], [ %138, %137 ], [ 0, %132 ], [ 0, %129 ], [ 0, %150 ], [ %164, %163 ], [ 0, %158 ], [ 0, %155 ]
  call void @swift_bridgeObjectRelease(ptr %15) #2
  br label %101

.thread:                                          ; preds = %25
  %98 = tail call swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSS_SiTg5"(i64 %14, ptr %15, i64 10)
  tail call void @swift_bridgeObjectRelease(ptr %15) #2
  %99 = extractvalue { i64, i8 } %98, 0
  %100 = extractvalue { i64, i8 } %98, 1
  br label %101

101:                                              ; preds = %.thread, %.thread81
  %102 = phi i64 [ %99, %.thread ], [ %.sroa.0.184, %.thread81 ]
  %103 = phi i8 [ %100, %.thread ], [ %.sroa.6.185, %.thread81 ]
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
  br i1 %118, label %odessy.chk13, label %119, !prof !44

119:                                              ; preds = %117
  %120 = icmp eq i64 %114, 1
  br i1 %120, label %.thread81, label %121, !prof !44

121:                                              ; preds = %119
  %122 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %123 = getelementptr i8, ptr %115, i64 %114
  br label %124

124:                                              ; preds = %137, %121
  %125 = phi ptr [ %122, %121 ], [ %139, %137 ]
  %126 = phi i64 [ 0, %121 ], [ %138, %137 ]
  %127 = load i8, ptr %125, align 1
  %128 = add i8 %127, -48
  %or.cond27 = icmp ult i8 %128, 10
  br i1 %or.cond27, label %129, label %.thread81, !prof !47

129:                                              ; preds = %124
  %130 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %126, i64 10)
  %131 = extractvalue { i64, i1 } %130, 1
  br i1 %131, label %.thread81, label %132

132:                                              ; preds = %129
  %133 = extractvalue { i64, i1 } %130, 0
  %134 = zext nneg i8 %128 to i64
  %135 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %133, i64 %134)
  %136 = extractvalue { i64, i1 } %135, 1
  br i1 %136, label %.thread81, label %137, !prof !44

137:                                              ; preds = %132
  %138 = extractvalue { i64, i1 } %135, 0
  %139 = getelementptr inbounds nuw i8, ptr %125, i64 1
  %140 = icmp eq ptr %139, %123
  br i1 %140, label %.thread81, label %124

141:                                              ; preds = %112
  %142 = icmp slt i64 %114, 1
  br i1 %142, label %odessy.chk12, label %143, !prof !44

143:                                              ; preds = %141
  %144 = icmp eq i64 %114, 1
  br i1 %144, label %.thread81, label %147, !prof !44

145:                                              ; preds = %112
  %146 = icmp eq i64 %114, 0
  br i1 %146, label %.thread81, label %167, !prof !44

147:                                              ; preds = %143
  %148 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %149 = getelementptr i8, ptr %115, i64 %114
  br label %150

150:                                              ; preds = %163, %147
  %151 = phi ptr [ %148, %147 ], [ %165, %163 ]
  %152 = phi i64 [ 0, %147 ], [ %164, %163 ]
  %153 = load i8, ptr %151, align 1
  %154 = add i8 %153, -48
  %or.cond28 = icmp ult i8 %154, 10
  br i1 %or.cond28, label %155, label %.thread81, !prof !47

155:                                              ; preds = %150
  %156 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %152, i64 10)
  %157 = extractvalue { i64, i1 } %156, 1
  br i1 %157, label %.thread81, label %158

158:                                              ; preds = %155
  %159 = extractvalue { i64, i1 } %156, 0
  %160 = zext nneg i8 %154 to i64
  %161 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %159, i64 %160)
  %162 = extractvalue { i64, i1 } %161, 1
  br i1 %162, label %.thread81, label %163, !prof !44

163:                                              ; preds = %158
  %164 = extractvalue { i64, i1 } %161, 0
  %165 = getelementptr inbounds nuw i8, ptr %151, i64 1
  %166 = icmp eq ptr %165, %149
  br i1 %166, label %.thread81, label %150

167:                                              ; preds = %145
  %168 = icmp eq i64 %113, 0
  br i1 %168, label %.thread81, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds i8, ptr %115, i64 %114
  br label %171

171:                                              ; preds = %184, %169
  %172 = phi ptr [ %115, %169 ], [ %186, %184 ]
  %173 = phi i64 [ 0, %169 ], [ %185, %184 ]
  %174 = load i8, ptr %172, align 1
  %175 = add i8 %174, -48
  %or.cond29 = icmp ult i8 %175, 10
  br i1 %or.cond29, label %176, label %.thread81, !prof !47

176:                                              ; preds = %171
  %177 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %173, i64 10)
  %178 = extractvalue { i64, i1 } %177, 1
  br i1 %178, label %.thread81, label %179

179:                                              ; preds = %176
  %180 = extractvalue { i64, i1 } %177, 0
  %181 = zext nneg i8 %175 to i64
  %182 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %180, i64 %181)
  %183 = extractvalue { i64, i1 } %182, 1
  br i1 %183, label %.thread81, label %184, !prof !44

184:                                              ; preds = %179
  %185 = extractvalue { i64, i1 } %182, 0
  %186 = getelementptr inbounds nuw i8, ptr %172, i64 1
  %187 = icmp eq ptr %186, %170
  br i1 %187, label %.thread81, label %171

188:                                              ; preds = %101
  store i64 %102, ptr @"$s6base645itersSivp", align 8
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
  %.not70 = icmp eq ptr %199, null
  br i1 %.not70, label %200, label %468

200:                                              ; preds = %193
  %201 = extractvalue { i64, i64 } %198, 1
  %202 = extractvalue { i64, i64 } %198, 0
  %203 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy3 = load ptr, ptr %203, align 8, !invariant.load !41
  call void %Destroy3(ptr noalias nonnull %7, ptr %4) #2
  %204 = call swiftcc ptr @"$sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5"(i64 %202, i64 %201)
  store ptr %204, ptr @"$s6base644dataSays5UInt8VGvp", align 8
  %205 = or i64 sub (i64 ptrtoint (ptr @".str.64.ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" to i64), i64 32), -9223372036854775808
  %206 = inttoptr i64 %205 to ptr
  %207 = call swiftcc ptr @"$ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5"(i64 -3458764513820540864, ptr nonnull %206)
  store ptr %207, ptr @"$s6base643tblSays5UInt8VGvp", align 8
  store i64 0, ptr @"$s6base645finals6UInt64Vvp", align 8
  %208 = load i64, ptr @"$s6base645itersSivp", align 8
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %odessy.chk3, label %210, !prof !44

210:                                              ; preds = %200
  %211 = icmp eq i64 %208, 0
  br i1 %211, label %401, label %212

212:                                              ; preds = %210
  %213 = load ptr, ptr @"$s6base644dataSays5UInt8VGvp", align 8
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 16
  %215 = load i64, ptr %214, align 8, !range !43
  %216 = icmp samesign ugt i64 %215, 2
  call void @llvm.lifetime.start.p0(ptr %access-scratch)
  call void @swift_beginAccess(ptr nonnull @"$s6base645finals6UInt64Vvp", ptr nonnull %access-scratch, i64 1, ptr null) #2
  %217 = getelementptr inbounds nuw i8, ptr %213, i64 32
  %218 = load ptr, ptr @"$s6base643tblSays5UInt8VGvp", align 8
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 32
  %220 = getelementptr inbounds nuw i8, ptr %218, i64 16
  %mv.h4 = icmp sle i64 %215, 4611686018427387904
  br i1 %mv.h4, label %.mv.ph5.mv.fast, label %.mv.ph5

.mv.ph5.mv.fast:                                  ; preds = %212
  br label %221

221:                                              ; preds = %285, %.mv.ph5.mv.fast
  %222 = phi i64 [ 0, %.mv.ph5.mv.fast ], [ %286, %285 ]
  %223 = phi i64 [ 0, %.mv.ph5.mv.fast ], [ %224, %285 ]
  %224 = add nuw i64 %223, 1
  br i1 %216, label %227, label %225

225:                                              ; preds = %221
  %226 = icmp eq i64 %224, %208
  br i1 %226, label %466, label %285

227:                                              ; preds = %221
  %228 = load i64, ptr %220, align 8, !range !43
  %mv.h.mv.fast = icmp ugt i64 %228, 63
  br i1 %mv.h.mv.fast, label %.mv.ph.mv.fast.mv.fast, label %.mv.ph.mv.fast12

229:                                              ; preds = %.mv.ph.mv.fast12, %262
  %230 = phi i64 [ 0, %.mv.ph.mv.fast12 ], [ %279, %262 ]
  %231 = phi i64 [ 0, %.mv.ph.mv.fast12 ], [ %263, %262 ]
  %232 = phi i64 [ 2, %.mv.ph.mv.fast12 ], [ %280, %262 ]
  %.not72.mv.fast6 = icmp samesign ult i64 %231, %215
  br i1 true, label %233, label %odessy.chk5, !prof !45

233:                                              ; preds = %229
  %234 = getelementptr inbounds nuw %Ts5UInt8V, ptr %217, i64 %231
  %235 = load i8, ptr %234, align 1
  %236 = add nuw nsw i64 %231, 1
  %.not73.mv.fast7 = icmp samesign ult i64 %236, %215
  br i1 true, label %237, label %odessy.chk6, !prof !45

237:                                              ; preds = %233
  %238 = getelementptr inbounds nuw %Ts5UInt8V, ptr %217, i64 %236
  %239 = load i8, ptr %238, align 1
  %240 = getelementptr inbounds nuw %Ts5UInt8V, ptr %217, i64 %232
  %241 = load i8, ptr %240, align 1
  %242 = lshr i8 %235, 2
  %243 = zext nneg i8 %242 to i64
  %.not75.mv.fast8 = icmp samesign ugt i64 %228, %243
  br i1 %.not75.mv.fast8, label %244, label %odessy.chk7, !prof !45

244:                                              ; preds = %237
  %245 = shl i8 %235, 4
  %246 = and i8 %245, 48
  %247 = lshr i8 %239, 4
  %248 = or disjoint i8 %247, %246
  %249 = zext nneg i8 %248 to i64
  %.not76.mv.fast9 = icmp samesign ugt i64 %228, %249
  br i1 %.not76.mv.fast9, label %250, label %odessy.chk8, !prof !45

250:                                              ; preds = %244
  %251 = shl i8 %239, 2
  %252 = and i8 %251, 60
  %253 = lshr i8 %241, 6
  %254 = or disjoint i8 %253, %252
  %255 = zext nneg i8 %254 to i64
  %.not77.mv.fast10 = icmp samesign ugt i64 %228, %255
  br i1 %.not77.mv.fast10, label %256, label %odessy.chk9, !prof !45

256:                                              ; preds = %250
  %257 = and i8 %241, 63
  %258 = zext nneg i8 %257 to i64
  %.not78.mv.fast11 = icmp samesign ugt i64 %228, %258
  br i1 %.not78.mv.fast11, label %259, label %odessy.chk10, !prof !45

259:                                              ; preds = %256
  %260 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %231, i64 5)
  %261 = extractvalue { i64, i1 } %260, 1
  br i1 %261, label %odessy.fasttrap13, label %262, !prof !44

262:                                              ; preds = %259
  %263 = add nuw nsw i64 %231, 3
  %264 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %255
  %265 = load i8, ptr %264, align 1
  %266 = zext i8 %265 to i64
  %267 = add i64 %230, %266
  %268 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %243
  %269 = load i8, ptr %268, align 1
  %270 = zext i8 %269 to i64
  %271 = add i64 %267, %270
  %272 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %249
  %273 = load i8, ptr %272, align 1
  %274 = zext i8 %273 to i64
  %275 = add i64 %271, %274
  %276 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %258
  %277 = load i8, ptr %276, align 1
  %278 = zext i8 %277 to i64
  %279 = add i64 %275, %278
  %280 = extractvalue { i64, i1 } %260, 0
  %281 = icmp slt i64 %280, %215
  br i1 %281, label %229, label %282

282:                                              ; preds = %320, %262
  %.lcssa.mv.fast = phi i64 [ %279, %262 ], [ %337, %320 ]
  %283 = add i64 %.lcssa.mv.fast, %222
  %284 = icmp eq i64 %224, %208
  br i1 %284, label %466, label %285

285:                                              ; preds = %282, %225
  %286 = phi i64 [ %222, %225 ], [ %283, %282 ]
  %exitcond.not.mv.fast = icmp eq i64 %224, %208
  br i1 %exitcond.not.mv.fast, label %odessy.chk4, label %221, !prof !48

.mv.ph.mv.fast12:                                 ; preds = %227
  br label %229

.mv.ph.mv.fast.mv.fast:                           ; preds = %227
  br label %287

287:                                              ; preds = %320, %.mv.ph.mv.fast.mv.fast
  %288 = phi i64 [ 0, %.mv.ph.mv.fast.mv.fast ], [ %337, %320 ]
  %289 = phi i64 [ 0, %.mv.ph.mv.fast.mv.fast ], [ %321, %320 ]
  %290 = phi i64 [ 2, %.mv.ph.mv.fast.mv.fast ], [ %338, %320 ]
  %.not72.mv.fast.mv.fast = icmp samesign ult i64 %289, %215
  br i1 true, label %291, label %odessy.chk5, !prof !45

291:                                              ; preds = %287
  %292 = getelementptr inbounds nuw %Ts5UInt8V, ptr %217, i64 %289
  %293 = load i8, ptr %292, align 1
  %294 = add nuw nsw i64 %289, 1
  %.not73.mv.fast.mv.fast = icmp samesign ult i64 %294, %215
  br i1 true, label %295, label %odessy.chk6, !prof !45

295:                                              ; preds = %291
  %296 = getelementptr inbounds nuw %Ts5UInt8V, ptr %217, i64 %294
  %297 = load i8, ptr %296, align 1
  %298 = getelementptr inbounds nuw %Ts5UInt8V, ptr %217, i64 %290
  %299 = load i8, ptr %298, align 1
  %300 = lshr i8 %293, 2
  %301 = zext nneg i8 %300 to i64
  %.not75.mv.fast.mv.fast = icmp samesign ugt i64 %228, %301
  br i1 %.not75.mv.fast.mv.fast, label %302, label %odessy.fasttrap, !prof !45

302:                                              ; preds = %295
  %303 = shl i8 %293, 4
  %304 = and i8 %303, 48
  %305 = lshr i8 %297, 4
  %306 = or disjoint i8 %305, %304
  %307 = zext nneg i8 %306 to i64
  %.not76.mv.fast.mv.fast = icmp samesign ugt i64 %228, %307
  br i1 %.not76.mv.fast.mv.fast, label %308, label %odessy.fasttrap1, !prof !45

308:                                              ; preds = %302
  %309 = shl i8 %297, 2
  %310 = and i8 %309, 60
  %311 = lshr i8 %299, 6
  %312 = or disjoint i8 %311, %310
  %313 = zext nneg i8 %312 to i64
  %.not77.mv.fast.mv.fast = icmp samesign ugt i64 %228, %313
  br i1 %.not77.mv.fast.mv.fast, label %314, label %odessy.fasttrap2, !prof !45

314:                                              ; preds = %308
  %315 = and i8 %299, 63
  %316 = zext nneg i8 %315 to i64
  %.not78.mv.fast.mv.fast = icmp samesign ugt i64 %228, %316
  br i1 %.not78.mv.fast.mv.fast, label %317, label %odessy.fasttrap3, !prof !45

317:                                              ; preds = %314
  %318 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %289, i64 5)
  %319 = extractvalue { i64, i1 } %318, 1
  br i1 %319, label %odessy.fasttrap14, label %320, !prof !44

320:                                              ; preds = %317
  %321 = add nuw nsw i64 %289, 3
  %322 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %313
  %323 = load i8, ptr %322, align 1
  %324 = zext i8 %323 to i64
  %325 = add i64 %288, %324
  %326 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %301
  %327 = load i8, ptr %326, align 1
  %328 = zext i8 %327 to i64
  %329 = add i64 %325, %328
  %330 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %307
  %331 = load i8, ptr %330, align 1
  %332 = zext i8 %331 to i64
  %333 = add i64 %329, %332
  %334 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %316
  %335 = load i8, ptr %334, align 1
  %336 = zext i8 %335 to i64
  %337 = add i64 %333, %336
  %338 = extractvalue { i64, i1 } %318, 0
  %339 = icmp slt i64 %338, %215
  br i1 %339, label %287, label %282

.mv.ph5:                                          ; preds = %212
  br label %340

340:                                              ; preds = %464, %.mv.ph5
  %341 = phi i64 [ 0, %.mv.ph5 ], [ %465, %464 ]
  %342 = phi i64 [ 0, %.mv.ph5 ], [ %343, %464 ]
  %343 = add nuw i64 %342, 1
  br i1 %216, label %346, label %344

344:                                              ; preds = %340
  %345 = icmp eq i64 %343, %208
  br i1 %345, label %466, label %464

346:                                              ; preds = %340
  %347 = load i64, ptr %220, align 8, !range !43
  %mv.h = icmp ugt i64 %347, 63
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %346
  br label %348

348:                                              ; preds = %381, %.mv.ph.mv.fast
  %349 = phi i64 [ 0, %.mv.ph.mv.fast ], [ %398, %381 ]
  %350 = phi i64 [ 0, %.mv.ph.mv.fast ], [ %382, %381 ]
  %351 = phi i64 [ 2, %.mv.ph.mv.fast ], [ %399, %381 ]
  %.not72.mv.fast = icmp samesign ult i64 %350, %215
  br i1 true, label %352, label %odessy.chk5, !prof !45

352:                                              ; preds = %348
  %353 = getelementptr inbounds nuw %Ts5UInt8V, ptr %217, i64 %350
  %354 = load i8, ptr %353, align 1
  %355 = add nuw nsw i64 %350, 1
  %.not73.mv.fast = icmp samesign ult i64 %355, %215
  br i1 true, label %356, label %odessy.chk6, !prof !45

356:                                              ; preds = %352
  %357 = getelementptr inbounds nuw %Ts5UInt8V, ptr %217, i64 %355
  %358 = load i8, ptr %357, align 1
  %359 = getelementptr inbounds nuw %Ts5UInt8V, ptr %217, i64 %351
  %360 = load i8, ptr %359, align 1
  %361 = lshr i8 %354, 2
  %362 = zext nneg i8 %361 to i64
  %.not75.mv.fast = icmp samesign ugt i64 %347, %362
  br i1 %.not75.mv.fast, label %363, label %odessy.fasttrap, !prof !45

363:                                              ; preds = %356
  %364 = shl i8 %354, 4
  %365 = and i8 %364, 48
  %366 = lshr i8 %358, 4
  %367 = or disjoint i8 %366, %365
  %368 = zext nneg i8 %367 to i64
  %.not76.mv.fast = icmp samesign ugt i64 %347, %368
  br i1 %.not76.mv.fast, label %369, label %odessy.fasttrap1, !prof !45

369:                                              ; preds = %363
  %370 = shl i8 %358, 2
  %371 = and i8 %370, 60
  %372 = lshr i8 %360, 6
  %373 = or disjoint i8 %372, %371
  %374 = zext nneg i8 %373 to i64
  %.not77.mv.fast = icmp samesign ugt i64 %347, %374
  br i1 %.not77.mv.fast, label %375, label %odessy.fasttrap2, !prof !45

375:                                              ; preds = %369
  %376 = and i8 %360, 63
  %377 = zext nneg i8 %376 to i64
  %.not78.mv.fast = icmp samesign ugt i64 %347, %377
  br i1 %.not78.mv.fast, label %378, label %odessy.fasttrap3, !prof !45

378:                                              ; preds = %375
  %379 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %350, i64 5)
  %380 = extractvalue { i64, i1 } %379, 1
  br i1 %380, label %odessy.chk11, label %381, !prof !44

381:                                              ; preds = %378
  %382 = add nuw nsw i64 %350, 3
  %383 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %374
  %384 = load i8, ptr %383, align 1
  %385 = zext i8 %384 to i64
  %386 = add i64 %349, %385
  %387 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %362
  %388 = load i8, ptr %387, align 1
  %389 = zext i8 %388 to i64
  %390 = add i64 %386, %389
  %391 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %368
  %392 = load i8, ptr %391, align 1
  %393 = zext i8 %392 to i64
  %394 = add i64 %390, %393
  %395 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %377
  %396 = load i8, ptr %395, align 1
  %397 = zext i8 %396 to i64
  %398 = add i64 %394, %397
  %399 = extractvalue { i64, i1 } %379, 0
  %400 = icmp slt i64 %399, %215
  br i1 %400, label %348, label %461

.mv.ph:                                           ; preds = %346
  br label %408

401:                                              ; preds = %466, %210
  %402 = phi i64 [ %467, %466 ], [ 0, %210 ]
  %403 = call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCyypGMR") #15
  %404 = call noalias ptr @swift_allocObject(ptr %403, i64 64, i64 7) #2
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 16
  store <2 x i64> <i64 1, i64 2>, ptr %405, align 8
  %406 = getelementptr inbounds nuw i8, ptr %404, i64 32
  %407 = getelementptr inbounds nuw i8, ptr %404, i64 56
  store ptr @"$ss6UInt64VN", ptr %407, align 8
  store i64 %402, ptr %406, align 8
  call swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr %404, i64 32, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr), i64 10, ptr nonnull inttoptr (i64 -2233785415175766016 to ptr))
  call void @swift_release(ptr %404) #2
  call void @llvm.lifetime.end.p0(ptr %7)
  ret i32 0

408:                                              ; preds = %441, %.mv.ph
  %409 = phi i64 [ 0, %.mv.ph ], [ %458, %441 ]
  %410 = phi i64 [ 0, %.mv.ph ], [ %442, %441 ]
  %411 = phi i64 [ 2, %.mv.ph ], [ %459, %441 ]
  %.not72 = icmp samesign ult i64 %410, %215
  br i1 true, label %412, label %odessy.chk5, !prof !45

412:                                              ; preds = %408
  %413 = getelementptr inbounds nuw %Ts5UInt8V, ptr %217, i64 %410
  %414 = load i8, ptr %413, align 1
  %415 = add nuw nsw i64 %410, 1
  %.not73 = icmp samesign ult i64 %415, %215
  br i1 true, label %416, label %odessy.chk6, !prof !45

416:                                              ; preds = %412
  %417 = getelementptr inbounds nuw %Ts5UInt8V, ptr %217, i64 %415
  %418 = load i8, ptr %417, align 1
  %419 = getelementptr inbounds nuw %Ts5UInt8V, ptr %217, i64 %411
  %420 = load i8, ptr %419, align 1
  %421 = lshr i8 %414, 2
  %422 = zext nneg i8 %421 to i64
  %.not75 = icmp samesign ugt i64 %347, %422
  br i1 %.not75, label %423, label %odessy.chk7, !prof !45

423:                                              ; preds = %416
  %424 = shl i8 %414, 4
  %425 = and i8 %424, 48
  %426 = lshr i8 %418, 4
  %427 = or disjoint i8 %426, %425
  %428 = zext nneg i8 %427 to i64
  %.not76 = icmp samesign ugt i64 %347, %428
  br i1 %.not76, label %429, label %odessy.chk8, !prof !45

429:                                              ; preds = %423
  %430 = shl i8 %418, 2
  %431 = and i8 %430, 60
  %432 = lshr i8 %420, 6
  %433 = or disjoint i8 %432, %431
  %434 = zext nneg i8 %433 to i64
  %.not77 = icmp samesign ugt i64 %347, %434
  br i1 %.not77, label %435, label %odessy.chk9, !prof !45

435:                                              ; preds = %429
  %436 = and i8 %420, 63
  %437 = zext nneg i8 %436 to i64
  %.not78 = icmp samesign ugt i64 %347, %437
  br i1 %.not78, label %438, label %odessy.chk10, !prof !45

438:                                              ; preds = %435
  %439 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %410, i64 5)
  %440 = extractvalue { i64, i1 } %439, 1
  br i1 %440, label %odessy.chk11, label %441, !prof !44

441:                                              ; preds = %438
  %442 = add nuw nsw i64 %410, 3
  %443 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %434
  %444 = load i8, ptr %443, align 1
  %445 = zext i8 %444 to i64
  %446 = add i64 %409, %445
  %447 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %422
  %448 = load i8, ptr %447, align 1
  %449 = zext i8 %448 to i64
  %450 = add i64 %446, %449
  %451 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %428
  %452 = load i8, ptr %451, align 1
  %453 = zext i8 %452 to i64
  %454 = add i64 %450, %453
  %455 = getelementptr inbounds nuw %Ts5UInt8V, ptr %219, i64 %437
  %456 = load i8, ptr %455, align 1
  %457 = zext i8 %456 to i64
  %458 = add i64 %454, %457
  %459 = extractvalue { i64, i1 } %439, 0
  %460 = icmp slt i64 %459, %215
  br i1 %460, label %408, label %461

461:                                              ; preds = %381, %441
  %.lcssa = phi i64 [ %458, %441 ], [ %398, %381 ]
  %462 = add i64 %.lcssa, %341
  %463 = icmp eq i64 %343, %208
  br i1 %463, label %466, label %464

464:                                              ; preds = %461, %344
  %465 = phi i64 [ %341, %344 ], [ %462, %461 ]
  %exitcond.not = icmp eq i64 %343, %208
  br i1 %exitcond.not, label %odessy.chk4, label %340, !prof !48

466:                                              ; preds = %282, %225, %461, %344
  %467 = phi i64 [ %341, %344 ], [ %462, %461 ], [ %222, %225 ], [ %283, %282 ]
  store i64 %467, ptr @"$s6base645finals6UInt64Vvp", align 8
  br label %401

468:                                              ; preds = %193
  %469 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %469, align 8, !invariant.load !41
  call void %Destroy(ptr noalias nonnull %7, ptr %4) #2
  call swiftcc void @swift_unexpectedError(ptr nonnull %199, ptr nonnull @".str.19.base64/base64.swift", i64 19, i1 true, i64 11)
  unreachable

470:                                              ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

471:                                              ; preds = %24
  call void asm sideeffect "", "n"(i32 1) #2
  call void @llvm.trap()
  unreachable

472:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 2) #2
  call void @llvm.trap()
  unreachable

473:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 3) #2
  call void @llvm.trap()
  unreachable

474:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 4) #2
  call void @llvm.trap()
  unreachable

475:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 6) #2
  call void @llvm.trap()
  unreachable

476:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 7) #2
  call void @llvm.trap()
  unreachable

477:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 9) #2
  call void @llvm.trap()
  unreachable

478:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 10) #2
  call void @llvm.trap()
  unreachable

479:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 11) #2
  call void @llvm.trap()
  unreachable

480:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 12) #2
  call void @llvm.trap()
  unreachable

481:                                              ; No predecessors!
  call void asm sideeffect "", "n"(i32 14) #2
  call void @llvm.trap()
  unreachable

482:                                              ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 15) #2
  tail call void @llvm.trap()
  unreachable

483:                                              ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 16) #2
  tail call void @llvm.trap()
  unreachable

484:                                              ; preds = %54
  tail call void asm sideeffect "", "n"(i32 17) #2
  tail call void @llvm.trap()
  unreachable

485:                                              ; preds = %31
  tail call void asm sideeffect "", "n"(i32 18) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %entry
  call void @odessy.chk(i32 0)
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

odessy.chk4:                                      ; preds = %285, %464
  call void @odessy.chk(i32 4)
  unreachable

odessy.chk5:                                      ; preds = %287, %229, %348, %408
  call void @odessy.chk(i32 5)
  unreachable

odessy.chk6:                                      ; preds = %291, %233, %352, %412
  call void @odessy.chk(i32 6)
  unreachable

odessy.chk7:                                      ; preds = %237, %416
  call void @odessy.chk(i32 7)
  unreachable

odessy.chk8:                                      ; preds = %244, %423
  call void @odessy.chk(i32 8)
  unreachable

odessy.chk9:                                      ; preds = %250, %429
  call void @odessy.chk(i32 9)
  unreachable

odessy.chk10:                                     ; preds = %256, %435
  call void @odessy.chk(i32 10)
  unreachable

odessy.chk11:                                     ; preds = %378, %438
  call void @odessy.chk(i32 11)
  unreachable

odessy.chk12:                                     ; preds = %141
  call void @odessy.chk(i32 12)
  unreachable

odessy.chk13:                                     ; preds = %117
  call void @odessy.chk(i32 13)
  unreachable

odessy.fasttrap:                                  ; preds = %295, %356
  call void @odessy.fast.trap(i32 0)
  unreachable

odessy.fasttrap1:                                 ; preds = %302, %363
  call void @odessy.fast.trap(i32 1)
  unreachable

odessy.fasttrap2:                                 ; preds = %308, %369
  call void @odessy.fast.trap(i32 2)
  unreachable

odessy.fasttrap3:                                 ; preds = %314, %375
  call void @odessy.fast.trap(i32 3)
  unreachable

odessy.fasttrap13:                                ; preds = %259
  call void @odessy.fast.trap(i32 4)
  unreachable

odessy.fasttrap14:                                ; preds = %317
  call void @odessy.fast.trap(i32 5)
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
  %2 = tail call swiftcc %swift.metadata_response @"$s10Foundation4DataV8IteratorVMa"(i64 0) #14
  %3 = extractvalue %swift.metadata_response %2, 0
  %4 = getelementptr inbounds i8, ptr %3, i64 -8
  %.valueWitnesses = load ptr, ptr %4, align 8, !invariant.load !41, !dereferenceable !42
  %5 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 64
  %size = load i64, ptr %5, align 8, !invariant.load !41
  %6 = alloca i8, i64 %size, align 16
  call void @llvm.lifetime.start.p0(ptr %6)
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

29:                                               ; preds = %34, %.sink.split
  %30 = phi ptr [ %35, %34 ], [ @_swiftEmptyArrayStorage, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr %6)
  ret ptr %30

31:                                               ; preds = %26, %18, %9
  %32 = phi i64 [ %28, %26 ], [ %11, %9 ], [ %24, %18 ]
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %.sink.split, label %34

34:                                               ; preds = %31
  %35 = tail call swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %32, i64 0)
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = ptrtoint ptr %36 to i64
  %38 = icmp sgt i64 %32, -1
  tail call void @llvm.assume(i1 %38)
  %39 = call swiftcc i64 @"$s10Foundation4DataV13_copyContents12initializingAC8IteratorV_SitSrys5UInt8VG_tF"(ptr noalias nonnull %6, i64 %37, i64 %32, i64 %0, i64 %1)
  call void @"$s10Foundation4DataV15_RepresentationOWOe"(i64 %0, i64 %1)
  %40 = getelementptr inbounds nuw i8, ptr %.valueWitnesses, i64 8
  %Destroy = load ptr, ptr %40, align 8, !invariant.load !41
  call void %Destroy(ptr noalias nonnull %6, ptr nonnull %3) #2
  %.not = icmp eq i64 %39, %32
  br i1 %.not, label %29, label %odessy.chk1, !prof !45

41:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

42:                                               ; No predecessors!
  call void asm sideeffect "", "n"(i32 1) #2
  call void @llvm.trap()
  unreachable

43:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 2) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %18
  call void @odessy.chk(i32 14)
  unreachable

odessy.chk1:                                      ; preds = %34
  call void @odessy.chk(i32 15)
  unreachable

odessy.chk2:                                      ; preds = %12
  call void @odessy.chk(i32 16)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, i8 } @"$ss13_parseInteger5ascii5radixq_Sgx_SitSyRzs010FixedWidthB0R_r0_lFSS_SiTg5"(i64 %0, ptr %1, i64 %2) local_unnamed_addr #3 {
entry:
  %3 = alloca %TSS, align 8
  %swifterror = alloca swifterror ptr, align 8
  store ptr null, ptr %swifterror, align 8
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
  call void @llvm.lifetime.start.p0(ptr %4)
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
  call void @llvm.lifetime.end.p0(ptr %4)
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
  %44 = load ptr, ptr %swifterror, align 8
  %.not4 = icmp eq ptr %44, null
  call void @llvm.assume(i1 %.not4)
  call void @swift_bridgeObjectRelease(ptr %18) #2
  br label %31
}

declare swiftcc void @"$s10Foundation3URLV15fileURLWithPathACSSh_tcfC"(ptr noalias sret(%swift.opaque), i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64 } @"$s10Foundation4DataV10contentsOf7optionsAcA3URLVh_So20NSDataReadingOptionsVtKcfC"(ptr noalias, i64, ptr swiftself, ptr noalias swifterror captures(none) dereferenceable(8)) local_unnamed_addr #0

declare swiftcc void @swift_unexpectedError(ptr, ptr, i64, i1, i64) local_unnamed_addr #0

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
  %32 = add i8 %25, %.sink
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

.loopexit:                                        ; preds = %127, %120, %114, %111, %92, %87, %80, %74, %71, %53, %51, %44, %37, %31, %28, %9
  %47 = phi i64 [ 0, %9 ], [ 0, %51 ], [ 0, %53 ], [ 0, %92 ], [ 0, %87 ], [ %81, %80 ], [ 0, %74 ], [ 0, %71 ], [ 0, %44 ], [ %38, %37 ], [ 0, %31 ], [ 0, %28 ], [ 0, %127 ], [ %121, %120 ], [ 0, %114 ], [ 0, %111 ]
  %48 = phi i8 [ 1, %9 ], [ 1, %51 ], [ 0, %53 ], [ 1, %92 ], [ 1, %87 ], [ 0, %80 ], [ 1, %74 ], [ 1, %71 ], [ 1, %44 ], [ 0, %37 ], [ 1, %31 ], [ 1, %28 ], [ 1, %127 ], [ 0, %120 ], [ 1, %114 ], [ 1, %111 ]
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
  %75 = add i8 %68, %.sink55
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
  %115 = add i8 %108, %.sink56
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

130:                                              ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

131:                                              ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %90
  call void @odessy.chk(i32 17)
  unreachable

odessy.chk1:                                      ; preds = %7
  call void @odessy.chk(i32 18)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingyS2SFZ"(i64 %0, ptr %1) local_unnamed_addr #3 {
entry:
  %2 = tail call swiftcc { i64, i64, i64, ptr } @"$sSlsEy11SubSequenceQzqd__cSXRd__5BoundQyd__5IndexRtzluigSS_s16PartialRangeFromVySSAEVGTgq5"(i64 15, i64 %0, ptr %1)
  %3 = extractvalue { i64, i64, i64, ptr } %2, 0
  %4 = extractvalue { i64, i64, i64, ptr } %2, 1
  %5 = extractvalue { i64, i64, i64, ptr } %2, 2
  %6 = extractvalue { i64, i64, i64, ptr } %2, 3
  %7 = tail call swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %3, i64 %4, i64 %5, ptr %6)
  tail call void @swift_bridgeObjectRelease(ptr %6) #2
  ret { i64, ptr } %7
}

define linkonce_odr hidden swiftcc { i64, i64, i64, ptr } @"$sSlsEy11SubSequenceQzqd__cSXRd__5BoundQyd__5IndexRtzluigSS_s16PartialRangeFromVySSAEVGTgq5"(i64 %0, i64 %1, ptr %2) local_unnamed_addr #0 {
entry:
  %3 = ptrtoint ptr %2 to i64
  %4 = and i64 %3, 2305843009213693952
  %.not = icmp eq i64 %4, 0
  %5 = and i64 %1, 281474976710655
  %6 = lshr i64 %3, 56
  %7 = and i64 %6, 15
  %8 = select i1 %.not, i64 %5, i64 %7
  %9 = shl nuw nsw i64 %8, 2
  %10 = lshr i64 %0, 14
  %11 = icmp samesign ult i64 %9, %10
  br i1 %11, label %odessy.chk, label %12, !prof !44

12:                                               ; preds = %entry
  %13 = shl nuw i64 %8, 16
  %14 = and i64 %3, 1152921504606846976
  %15 = icmp eq i64 %14, 0
  %16 = and i64 %1, 576460752303423488
  %17 = icmp ne i64 %16, 0
  %or.cond = select i1 %15, i1 true, i1 %17
  %.v = select i1 %or.cond, i64 7, i64 11
  %18 = or disjoint i64 %13, %.v
  %19 = tail call swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64 %0, i64 %18, i64 %1, ptr %2)
  %20 = extractvalue { i64, i64, i64, ptr } %19, 0
  %21 = extractvalue { i64, i64, i64, ptr } %19, 1
  %22 = extractvalue { i64, i64, i64, ptr } %19, 2
  %23 = extractvalue { i64, i64, i64, ptr } %19, 3
  %24 = insertvalue { i64, i64, i64, ptr } undef, i64 %20, 0
  %25 = insertvalue { i64, i64, i64, ptr } %24, i64 %21, 1
  %26 = insertvalue { i64, i64, i64, ptr } %25, i64 %22, 2
  %27 = insertvalue { i64, i64, i64, ptr } %26, ptr %23, 3
  ret { i64, i64, i64, ptr } %27

28:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %entry
  call void @odessy.chk(i32 19)
  unreachable
}

; Function Attrs: noinline
define linkonce_odr hidden swiftcc { i64, ptr } @"$sSS8_copyingySSSsFZ"(i64 %0, i64 %1, i64 %2, ptr %3) local_unnamed_addr #3 {
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
  call void @llvm.lifetime.start.p0(ptr %4)
  %16 = call swiftcc i64 @"$sSTsE21_copySequenceContents12initializing8IteratorQz_SitSry7ElementQzG_tFSs8UTF8ViewV_Tgq5"(ptr noalias nonnull captures(none) %4, i64 %15, i64 %10, i64 %0, i64 %1, i64 %2, ptr %3)
  %._elements._slice._base._guts._object._object = getelementptr inbounds nuw i8, ptr %4, i64 24
  %17 = load ptr, ptr %._elements._slice._base._guts._object._object, align 8
  %18 = tail call ptr @swift_bridgeObjectRetain(ptr returned %3) #2
  tail call void @swift_bridgeObjectRelease(ptr %17) #2
  %.not = icmp eq i64 %16, %10
  br i1 %.not, label %19, label %odessy.chk, !prof !45

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(ptr %4)
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %9
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
  call void @odessy.chk(i32 20)
  unreachable
}

declare swiftcc i64 @"$sSs8UTF8ViewV8distance4from2toSiSS5IndexV_AGtF"(i64, i64, i64, i64, i64, ptr) local_unnamed_addr #0

define linkonce_odr hidden swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %. = tail call i64 @llvm.smax.i64(i64 %1, i64 %0)
  %2 = icmp eq i64 %., 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %entry
  %4 = tail call ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMd", ptr nonnull @"$ss23_ContiguousArrayStorageCys5UInt8VGMR") #15
  %5 = add i64 %., 32
  %6 = tail call noalias ptr @swift_allocObject(ptr %4, i64 %5, i64 7) #2
  %call.i = tail call i64 @malloc_size(ptr noundef %6) #16, !clang.arc.no_objc_arc_exceptions !41
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
  br i1 %13, label %odessy.chk, label %15, !prof !44

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
  br i1 %.not, label %41, label %43, !prof !44

41:                                               ; preds = %36
  %42 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %38, i64 %5, ptr %6)
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi i64 [ %42, %41 ], [ %38, %36 ]
  %45 = lshr i64 %44, 14
  %46 = icmp samesign ult i64 %45, %16
  %47 = icmp samesign uge i64 %45, %14
  %48 = or i1 %46, %47
  br i1 %48, label %odessy.chk1, label %49, !prof !44

49:                                               ; preds = %43
  br i1 %21, label %50, label %51

50:                                               ; preds = %49
  br i1 %.not12, label %57, label %53

51:                                               ; preds = %49
  %52 = tail call swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64 %44, i64 %5, ptr %6)
  br label %58

53:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(ptr %7)
  store i64 %5, ptr %7, align 8
  store i64 %28, ptr %.elt6, align 8
  %54 = lshr i64 %44, 16
  %55 = getelementptr inbounds nuw %Ts5UInt8V, ptr %7, i64 %54
  %56 = load i8, ptr %55, align 1
  call void @llvm.lifetime.end.p0(ptr %7)
  br label %58

57:                                               ; preds = %50
  br i1 %.not13, label %60, label %63, !prof !44

58:                                               ; preds = %63, %53, %51
  %59 = phi i8 [ %52, %51 ], [ %68, %63 ], [ %56, %53 ]
  br i1 %.not, label %69, label %71, !prof !44

60:                                               ; preds = %57
  %61 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %5, ptr %6)
  %62 = extractvalue { i64, i64 } %61, 0
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i64 [ %62, %60 ], [ %31, %57 ]
  %65 = lshr i64 %44, 16
  %66 = inttoptr i64 %64 to ptr
  %67 = getelementptr inbounds nuw %Ts5UInt8V, ptr %66, i64 %65
  %68 = load i8, ptr %67, align 1
  br label %58

69:                                               ; preds = %58
  %70 = tail call swiftcc i64 @"$ss11_StringGutsV27_slowEnsureMatchingEncodingySS5IndexVAEF"(i64 %38, i64 %5, ptr %6)
  br label %71

71:                                               ; preds = %69, %58
  %72 = phi i64 [ %70, %69 ], [ %38, %58 ]
  br i1 %21, label %77, label %73

73:                                               ; preds = %71
  %74 = lshr i64 %72, 16
  %.not15 = icmp samesign ult i64 %74, %35
  br i1 %.not15, label %75, label %odessy.chk2, !prof !45

75:                                               ; preds = %73
  %76 = tail call swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64 %72, i64 %5, ptr %6)
  br label %80

77:                                               ; preds = %71
  %78 = and i64 %72, -65536
  %79 = add i64 %78, 65540
  br label %80

80:                                               ; preds = %77, %75
  %81 = phi i64 [ %76, %75 ], [ %79, %77 ]
  store i8 %59, ptr %37, align 1
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
  call void @odessy.chk(i32 21)
  unreachable

odessy.chk1:                                      ; preds = %43
  call void @odessy.chk(i32 22)
  unreachable

odessy.chk2:                                      ; preds = %73
  call void @odessy.chk(i32 23)
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

define linkonce_odr hidden swiftcc ptr @"$ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5"(i64 %0, ptr %1) local_unnamed_addr #0 {
entry:
  %2 = alloca <{ %Ts6UInt64V, %Ts6UInt64V }>, align 8
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, 1152921504606846976
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %.thread, !prof !45

6:                                                ; preds = %entry
  %7 = and i64 %3, 2305843009213693952
  %.not = icmp eq i64 %7, 0
  %8 = and i64 %0, 281474976710655
  %9 = lshr i64 %3, 56
  %10 = and i64 %9, 15
  %11 = select i1 %.not, i64 %8, i64 %10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %47, label %24

.thread:                                          ; preds = %entry
  %13 = tail call swiftcc i64 @"$sSS8UTF8ViewV13_foreignCountSiyF"(i64 %0, ptr %1)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %.thread
  %16 = tail call swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %13, i64 0)
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %18 = icmp sgt i64 %13, -1
  tail call void @llvm.assume(i1 %18)
  %19 = ptrtoint ptr %17 to i64
  %20 = tail call swiftcc { i64, i8 } @"$ss11_StringGutsV16_foreignCopyUTF84intoSiSgSrys5UInt8VG_tF"(i64 %19, i64 %13, i64 %0, ptr %1)
  %21 = extractvalue { i64, i8 } %20, 0
  %22 = extractvalue { i64, i8 } %20, 1
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %odessy.chk1, label %43

24:                                               ; preds = %6
  %25 = tail call swiftcc ptr @"$ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5"(i64 %11, i64 0)
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 32
  br i1 %.not, label %27, label %41

27:                                               ; preds = %24
  %28 = and i64 %0, 1152921504606846976
  %.not5 = icmp eq i64 %28, 0
  br i1 %.not5, label %29, label %33, !prof !44

29:                                               ; preds = %27
  %30 = tail call swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64 %0, ptr %1)
  %31 = extractvalue { i64, i64 } %30, 0
  %32 = extractvalue { i64, i64 } %30, 1
  br label %36

33:                                               ; preds = %27
  %34 = and i64 %3, 1152921504606846975
  %35 = add nuw nsw i64 %34, 32
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i64 [ %31, %29 ], [ %35, %33 ]
  %38 = phi i64 [ %32, %29 ], [ %8, %33 ]
  %.not6 = icmp slt i64 %8, %38
  br i1 %.not6, label %odessy.chk, label %39

39:                                               ; preds = %36
  %40 = inttoptr i64 %37 to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %40, i64 %38, i1 false)
  br label %43

41:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(ptr %2)
  %42 = and i64 %3, 72057594037927935
  store i64 %0, ptr %2, align 8
  %.8.sroa_idx11 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %42, ptr %.8.sroa_idx11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 8 %2, i64 %10, i1 false)
  call void @llvm.lifetime.end.p0(ptr %2)
  br label %43

43:                                               ; preds = %41, %39, %15
  %44 = phi ptr [ %25, %39 ], [ %25, %41 ], [ %16, %15 ]
  %45 = phi i64 [ %8, %39 ], [ %10, %41 ], [ %13, %15 ]
  %46 = phi i64 [ %38, %39 ], [ %10, %41 ], [ %21, %15 ]
  %.not8 = icmp eq i64 %46, %45
  br i1 %.not8, label %47, label %odessy.chk2, !prof !45

47:                                               ; preds = %43, %.thread, %6
  %48 = phi ptr [ %44, %43 ], [ @_swiftEmptyArrayStorage, %6 ], [ @_swiftEmptyArrayStorage, %.thread ]
  ret ptr %48

49:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 0) #2
  tail call void @llvm.trap()
  unreachable

50:                                               ; No predecessors!
  tail call void asm sideeffect "", "n"(i32 1) #2
  tail call void @llvm.trap()
  unreachable

odessy.chk:                                       ; preds = %36
  call void @odessy.chk(i32 24)
  unreachable

odessy.chk1:                                      ; preds = %15
  call void @odessy.chk(i32 25)
  unreachable

odessy.chk2:                                      ; preds = %43
  call void @odessy.chk(i32 26)
  unreachable
}

; Function Attrs: nounwind
declare void @swift_beginAccess(ptr, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read)
define linkonce_odr hidden ptr @__swift_instantiateConcreteTypeFromMangledNameV2(ptr %0, ptr %1) local_unnamed_addr #5 {
entry:
  %2 = load atomic ptr, ptr %0 monotonic, align 8
  %3 = icmp eq ptr %2, null
  %4 = ptrtoint ptr %2 to i64
  %5 = and i64 %4, 1
  %6 = icmp ne i64 %5, 0
  %7 = or i1 %3, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %10, %entry
  %9 = phi ptr [ %2, %entry ], [ %17, %10 ]
  ret ptr %9

10:                                               ; preds = %entry
  %11 = load i64, ptr %1, align 8
  %12 = ashr i64 %11, 32
  %sext = shl i64 %11, 32
  %13 = ashr exact i64 %sext, 32
  %14 = ptrtoint ptr %1 to i64
  %15 = add i64 %13, %14
  %16 = inttoptr i64 %15 to ptr
  %17 = tail call swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr %16, i64 %12, ptr null, ptr null) #17
  store atomic ptr %17, ptr %0 monotonic, align 8
  br label %8
}

; Function Attrs: nounwind memory(argmem: readwrite)
declare swiftcc ptr @swift_getTypeByMangledNameInContext2(ptr, i64, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @swift_allocObject(ptr, i64, i64) local_unnamed_addr #2

declare swiftcc void @"$ss5print_9separator10terminatoryypd_S2StF"(ptr, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @swift_release(ptr) local_unnamed_addr #2

; Function Attrs: noinline
declare swiftcc { i64, i64 } @"$ss13_StringObjectV10sharedUTF8SRys5UInt8VGvg"(i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swift_Builtin_float"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftObjectiveC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftCoreFoundation"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftDispatch"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftXPC"()

declare extern_weak void @"_swift_FORCE_LOAD_$_swiftIOKit"()

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignCountSiyF"(i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc { i64, i8 } @"$ss11_StringGutsV16_foreignCopyUTF84intoSiSgSrys5UInt8VG_tF"(i64, i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare swiftcc %swift.metadata_response @"$s10Foundation4DataV8IteratorVMa"(i64) local_unnamed_addr #0

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #4

declare swiftcc { i64, ptr } @"$sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufC"(ptr noalias, ptr, ptr, ptr) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @swift_errorRelease(ptr) local_unnamed_addr #2

declare swiftcc { i64, ptr } @"$sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ"(i64, i64) local_unnamed_addr #0

; Function Attrs: noinline
declare swiftcc i8 @"$sSS8UTF8ViewV17_foreignSubscript8positions5UInt8VSS5IndexV_tF"(i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex5afterSS0D0VAF_tF"(i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: noinline
declare swiftcc i64 @"$sSS8UTF8ViewV13_foreignIndex_8offsetBySS0D0VAF_SitF"(i64, i64, i64, ptr) local_unnamed_addr #3

declare swiftcc i64 @"$sSS9UTF16ViewV5index_8offsetBySS5IndexVAF_SitF"(i64, i64, i64, ptr) local_unnamed_addr #0

declare swiftcc { i64, i64, i64, ptr } @"$sSSySsSnySS5IndexVGcig"(i64, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: optsize
declare i64 @malloc_size(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: cold noreturn nounwind
declare void @odessy.chk(i32) #13

; Function Attrs: cold noreturn nounwind
declare void @odessy.fast.trap(i32) #13

attributes #0 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind }
attributes #3 = { noinline "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #6 = { nounwind memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { sspreq "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #10 = { noinline nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #11 = { optsize "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind memory(none) }
attributes #15 = { nounwind memory(read) }
attributes #16 = { optsize }
attributes #17 = { nounwind memory(argmem: read) }

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
!48 = !{!"branch_weights", i32 1, i32 1999}
!49 = !{!50}
!50 = distinct !{!50, !51, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_: argument 0"}
!51 = distinct !{!51, !"$sSS8_copyingySSSsFZSSSRys5UInt8VGXEfU0_"}
