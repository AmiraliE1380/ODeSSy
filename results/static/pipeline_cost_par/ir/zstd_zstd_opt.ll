; ModuleID = '/mydata/zstd/lib/compress/zstd_opt.c'
source_filename = "/mydata/zstd/lib/compress/zstd_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repcodes_s = type { [3 x i32] }
%struct.ZSTD_optLdm_t = type { %struct.RawSeqStore_t, i32, i32, i32 }
%struct.RawSeqStore_t = type { ptr, i64, i64, i64, i64 }
%struct.ZSTD_match_t = type { i32, i32 }
%struct.ZSTD_optimal_t = type { i32, i32, i32, i32, [3 x i32] }
%struct.rawSeq = type { i32, i32, i32 }
%struct.FSE_symbolCompressionTransform = type { i32, i32 }

@__const.ZSTD_selectBtGetAllMatches.getAllMatchesFns = private unnamed_addr constant [3 x [4 x ptr]] [[4 x ptr] [ptr @ZSTD_btGetAllMatches_noDict_3, ptr @ZSTD_btGetAllMatches_noDict_4, ptr @ZSTD_btGetAllMatches_noDict_5, ptr @ZSTD_btGetAllMatches_noDict_6], [4 x ptr] [ptr @ZSTD_btGetAllMatches_extDict_3, ptr @ZSTD_btGetAllMatches_extDict_4, ptr @ZSTD_btGetAllMatches_extDict_5, ptr @ZSTD_btGetAllMatches_extDict_6], [4 x ptr] [ptr @ZSTD_btGetAllMatches_dictMatchState_3, ptr @ZSTD_btGetAllMatches_dictMatchState_4, ptr @ZSTD_btGetAllMatches_dictMatchState_5, ptr @ZSTD_btGetAllMatches_dictMatchState_6]], align 16
@__const.ZSTD_rescaleFreqs.baseLLfreqs = private unnamed_addr constant [36 x i32] [i32 4, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@__const.ZSTD_rescaleFreqs.baseOFCfreqs = private unnamed_addr constant [32 x i32] [i32 6, i32 2, i32 1, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@LL_bits = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ZSTD_LLcode.LL_Code = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 16
@ML_bits = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ZSTD_MLcode.ML_Code = internal unnamed_addr constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$$$$%%%%&&&&&&&&''''''''(((((((((((((((())))))))))))))))********************************", align 16

; Function Attrs: nounwind uwtable
define dso_local void @ZSTD_updateTree(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef readnone captures(address) %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = icmp ult i32 %13, %11
  br i1 %14, label %15, label %22

15:                                               ; preds = %3, %15
  %16 = phi i32 [ %20, %15 ], [ %13, %3 ]
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 %17
  %19 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %0, ptr noundef %18, ptr noundef %2, i32 noundef %11, i32 noundef %5, i32 noundef 0)
  %20 = add i32 %19, %16
  %21 = icmp ult i32 %20, %11
  br i1 %21, label %15, label %22, !llvm.loop !20

22:                                               ; preds = %15, %3
  store i32 %11, ptr %12, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btopt(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #1 {
  %7 = alloca %struct.repcodes_s, align 8
  %8 = alloca %struct.repcodes_s, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca %struct.ZSTD_optLdm_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !18
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %20 = load i32, ptr %19, align 8, !tbaa !22
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 %21
  %23 = getelementptr i8, ptr %0, i64 272
  %24 = load i32, ptr %23, align 8, !tbaa !5
  %25 = icmp ult i32 %24, 3
  %26 = add i32 %24, -6
  %27 = icmp ult i32 %26, -3
  %28 = select i1 %25, i64 0, i64 3
  %29 = add nsw i32 %24, -3
  %30 = zext nneg i32 %29 to i64
  %31 = select i1 %27, i64 %28, i64 %30
  %32 = zext nneg i32 %5 to i64
  %33 = getelementptr inbounds nuw [3 x [4 x ptr]], ptr @__const.ZSTD_selectBtGetAllMatches.getAllMatchesFns, i64 0, i64 %32, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !23
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %36 = load i32, ptr %35, align 4, !tbaa !24
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 4095)
  %38 = icmp eq i32 %24, 3
  %39 = select i1 %38, i32 3, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %41 = load i32, ptr %40, align 4, !tbaa !19
  store i32 %41, ptr %9, align 4, !tbaa !25
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %43 = load ptr, ptr %42, align 8, !tbaa !26
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %45 = load ptr, ptr %44, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %47 = load ptr, ptr %46, align 8, !tbaa !28
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %47, i64 40, i1 false), !tbaa.struct !29
  br label %51

50:                                               ; preds = %6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  br label %51

51:                                               ; preds = %50, %49
  %52 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 0, ptr %52, align 8, !tbaa !31
  %53 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 0, ptr %53, align 8, !tbaa !34
  %54 = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 0, ptr %54, align 4, !tbaa !35
  %55 = ptrtoint ptr %3 to i64
  %56 = ptrtoint ptr %15 to i64
  %57 = trunc i64 %4 to i32
  call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef %11, i32 noundef 0, i32 noundef %57)
  tail call fastcc void @ZSTD_rescaleFreqs(ptr noundef nonnull %14, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  %58 = icmp eq ptr %3, %22
  %59 = zext i1 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 %59
  %61 = icmp ult ptr %60, %16
  br i1 %61, label %62, label %1261

62:                                               ; preds = %51
  %63 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %64 = getelementptr inbounds nuw i8, ptr %43, i64 12
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %68 = getelementptr inbounds nuw i8, ptr %43, i64 16
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %73 = getelementptr i8, ptr %0, i64 240
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %75 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %76 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %78 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %84 = getelementptr inbounds i8, ptr %15, i64 -32
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %86 = ptrtoint ptr %84 to i64
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %90 = zext nneg i32 %39 to i64
  %91 = add nsw i64 %90, -1
  %92 = and i64 %91, 1
  %93 = and i64 %91, -2
  %94 = icmp eq i64 %92, 0
  br label %95

95:                                               ; preds = %62, %1254
  %96 = phi ptr [ %60, %62 ], [ %1257, %1254 ]
  %97 = phi ptr [ %3, %62 ], [ %1256, %1254 ]
  %98 = phi i32 [ 0, %62 ], [ %1255, %1254 ]
  %99 = ptrtoint ptr %96 to i64
  %100 = ptrtoint ptr %97 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  %105 = call i32 %34(ptr noundef %45, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %96, ptr noundef %15, ptr noundef %2, i32 noundef %104, i32 noundef %39) #12
  store i32 %105, ptr %12, align 4, !tbaa !25
  %106 = sub i64 %99, %55
  %107 = trunc i64 %106 to i32
  %108 = sub i64 %56, %99
  %109 = trunc i64 %108 to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %11, ptr noundef %45, ptr noundef %12, i32 noundef %107, i32 noundef %109, i32 noundef %39)
  %110 = load i32, ptr %12, align 4, !tbaa !25
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %95
  %113 = getelementptr inbounds nuw i8, ptr %96, i64 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  br label %1254

114:                                              ; preds = %95
  store i32 0, ptr %63, align 4, !tbaa !36
  store i32 %102, ptr %64, align 4, !tbaa !38
  %115 = load i32, ptr %65, align 8, !tbaa !39
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = add i32 %102, 1
  %119 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %118, i1 true)
  %120 = shl nuw nsw i32 %119, 8
  %121 = xor i32 %120, 7936
  br label %160

122:                                              ; preds = %114
  %123 = icmp eq i32 %102, 131072
  br i1 %123, label %124, label %134

124:                                              ; preds = %122
  %125 = load i32, ptr %66, align 4, !tbaa !40
  %126 = load ptr, ptr %67, align 8, !tbaa !41
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 140
  %128 = load i32, ptr %127, align 4, !tbaa !25
  %129 = add i32 %128, 1
  %130 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %129, i1 true)
  %131 = shl nuw nsw i32 %130, 8
  %132 = add i32 %125, -3584
  %133 = add i32 %132, %131
  br label %160

134:                                              ; preds = %122
  %135 = icmp ugt i32 %102, 63
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %102, i1 true)
  %138 = sub nuw nsw i32 50, %137
  br label %144

139:                                              ; preds = %134
  %140 = and i64 %101, 63
  %141 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !42
  %143 = zext i8 %142 to i32
  br label %144

144:                                              ; preds = %139, %136
  %145 = phi i32 [ %138, %136 ], [ %143, %139 ]
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds nuw [36 x i8], ptr @LL_bits, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !42
  %149 = zext i8 %148 to i32
  %150 = load i32, ptr %66, align 4, !tbaa !40
  %151 = load ptr, ptr %67, align 8, !tbaa !41
  %152 = getelementptr inbounds nuw i32, ptr %151, i64 %146
  %153 = load i32, ptr %152, align 4, !tbaa !25
  %154 = add i32 %153, 1
  %155 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %154, i1 true)
  %156 = add nuw nsw i32 %155, %149
  %157 = shl nuw nsw i32 %156, 8
  %158 = add i32 %150, -7936
  %159 = add i32 %158, %157
  br label %160

160:                                              ; preds = %117, %124, %144
  %161 = phi i32 [ %133, %124 ], [ %159, %144 ], [ %121, %117 ]
  store i32 %161, ptr %43, align 4, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %68, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %162 = add i32 %110, -1
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %45, i64 %163
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 4
  %166 = load i32, ptr %165, align 4, !tbaa !44
  %167 = icmp ugt i32 %166, %37
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = load i32, ptr %164, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  br label %815

170:                                              ; preds = %160, %170
  %171 = phi i64 [ %184, %170 ], [ 1, %160 ]
  %172 = phi i64 [ %185, %170 ], [ 0, %160 ]
  %173 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %171
  store i32 1073741824, ptr %173, align 4, !tbaa !43
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 8
  store i32 0, ptr %174, align 4, !tbaa !36
  %175 = trunc nuw nsw i64 %171 to i32
  %176 = add i32 %175, %102
  %177 = getelementptr inbounds nuw i8, ptr %173, i64 12
  store i32 %176, ptr %177, align 4, !tbaa !38
  %178 = add nuw nsw i64 %171, 1
  %179 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %178
  store i32 1073741824, ptr %179, align 4, !tbaa !43
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 8
  store i32 0, ptr %180, align 4, !tbaa !36
  %181 = trunc nuw nsw i64 %178 to i32
  %182 = add i32 %181, %102
  %183 = getelementptr inbounds nuw i8, ptr %179, i64 12
  store i32 %182, ptr %183, align 4, !tbaa !38
  %184 = add nuw nsw i64 %171, 2
  %185 = add i64 %172, 2
  %186 = icmp eq i64 %185, %93
  br i1 %186, label %187, label %170, !llvm.loop !47

187:                                              ; preds = %170
  br i1 %94, label %194, label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %184
  store i32 1073741824, ptr %189, align 4, !tbaa !43
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 8
  store i32 0, ptr %190, align 4, !tbaa !36
  %191 = trunc nuw nsw i64 %184 to i32
  %192 = add i32 %191, %102
  %193 = getelementptr inbounds nuw i8, ptr %189, i64 12
  store i32 %192, ptr %193, align 4, !tbaa !38
  br label %194

194:                                              ; preds = %187, %188
  %195 = zext i32 %110 to i64
  br label %196

196:                                              ; preds = %194, %300
  %197 = phi i64 [ 0, %194 ], [ %302, %300 ]
  %198 = phi i32 [ %39, %194 ], [ %301, %300 ]
  %199 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %45, i64 %197
  %200 = load i32, ptr %199, align 4, !tbaa !46
  %201 = getelementptr inbounds nuw i8, ptr %199, i64 4
  %202 = load i32, ptr %201, align 4, !tbaa !44
  %203 = icmp ugt i32 %198, %202
  br i1 %203, label %300, label %204

204:                                              ; preds = %196
  %205 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %200, i1 true)
  %206 = xor i32 %205, 31
  %207 = load i32, ptr %65, align 8, !tbaa !39
  %208 = icmp eq i32 %207, 1
  %209 = shl nuw nsw i32 %206, 8
  %210 = add nuw nsw i32 %209, 4096
  br i1 %208, label %211, label %230

211:                                              ; preds = %204, %221
  %212 = phi i32 [ %228, %221 ], [ %198, %204 ]
  %213 = add i32 %212, -2
  %214 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %213, i1 true)
  %215 = shl nuw nsw i32 %214, 8
  %216 = xor i32 %215, 7936
  %217 = add nuw nsw i32 %210, %216
  %218 = load i32, ptr %43, align 4, !tbaa !43
  %219 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %218, i32 %217), !nosanitize !48
  %220 = extractvalue { i32, i1 } %219, 1, !nosanitize !48
  br i1 %220, label %278, label %221, !prof !49, !nosanitize !48

221:                                              ; preds = %211
  %222 = zext i32 %212 to i64
  %223 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %222
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 8
  store i32 %212, ptr %224, align 4, !tbaa !36
  %225 = getelementptr inbounds nuw i8, ptr %223, i64 4
  store i32 %200, ptr %225, align 4, !tbaa !50
  %226 = getelementptr inbounds nuw i8, ptr %223, i64 12
  store i32 0, ptr %226, align 4, !tbaa !38
  %227 = extractvalue { i32, i1 } %219, 0, !nosanitize !48
  store i32 %227, ptr %223, align 4, !tbaa !43
  %228 = add i32 %212, 1
  %229 = icmp ugt i32 %228, %202
  br i1 %229, label %300, label %211, !llvm.loop !51

230:                                              ; preds = %204
  %231 = icmp samesign ugt i32 %206, 19
  %232 = shl nuw nsw i32 %206, 9
  %233 = add nsw i32 %232, -9677
  %234 = select i1 %231, i32 %233, i32 51
  %235 = zext nneg i32 %206 to i64
  %236 = load i32, ptr %69, align 4, !tbaa !52
  %237 = load ptr, ptr %70, align 8, !tbaa !53
  %238 = getelementptr inbounds nuw i32, ptr %237, i64 %235
  %239 = load i32, ptr %71, align 8, !tbaa !54
  %240 = load ptr, ptr %72, align 8, !tbaa !55
  %241 = add i32 %239, %234
  br label %242

242:                                              ; preds = %230, %296
  %243 = phi i32 [ %198, %230 ], [ %298, %296 ]
  %244 = add i32 %243, -3
  %245 = load i32, ptr %238, align 4, !tbaa !25
  %246 = add i32 %245, 1
  %247 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %246, i1 true)
  %248 = icmp ugt i32 %244, 127
  br i1 %248, label %249, label %252

249:                                              ; preds = %242
  %250 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %244, i1 true)
  %251 = sub nuw nsw i32 67, %250
  br label %257

252:                                              ; preds = %242
  %253 = zext nneg i32 %244 to i64
  %254 = getelementptr inbounds nuw [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !42
  %256 = zext i8 %255 to i32
  br label %257

257:                                              ; preds = %249, %252
  %258 = phi i32 [ %251, %249 ], [ %256, %252 ]
  %259 = zext nneg i32 %258 to i64
  %260 = getelementptr inbounds nuw [53 x i8], ptr @ML_bits, i64 0, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !42
  %262 = zext i8 %261 to i32
  %263 = getelementptr inbounds nuw i32, ptr %240, i64 %259
  %264 = load i32, ptr %263, align 4, !tbaa !25
  %265 = add i32 %264, 1
  %266 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %265, i1 true)
  %267 = shl nuw nsw i32 %266, 8
  %268 = add nuw nsw i32 %206, %262
  %269 = add nuw nsw i32 %247, %268
  %270 = shl nuw nsw i32 %269, 8
  %271 = add nsw i32 %270, -15872
  %272 = add i32 %267, %236
  %273 = add i32 %271, %272
  %274 = add i32 %273, %241
  %275 = load i32, ptr %43, align 4, !tbaa !43
  %276 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %275, i32 %274), !nosanitize !48
  %277 = extractvalue { i32, i1 } %276, 1, !nosanitize !48
  br i1 %277, label %278, label %279, !prof !49, !nosanitize !48

278:                                              ; preds = %532, %510, %441, %342, %257, %279, %211, %693, %589
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !48
  unreachable, !nosanitize !48

279:                                              ; preds = %257
  %280 = extractvalue { i32, i1 } %276, 0, !nosanitize !48
  %281 = zext i32 %243 to i64
  %282 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %281
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 8
  store i32 %243, ptr %283, align 4, !tbaa !36
  %284 = getelementptr inbounds nuw i8, ptr %282, i64 4
  store i32 %200, ptr %284, align 4, !tbaa !50
  %285 = getelementptr inbounds nuw i8, ptr %282, i64 12
  store i32 0, ptr %285, align 4, !tbaa !38
  %286 = load i32, ptr %66, align 4, !tbaa !40
  %287 = load ptr, ptr %67, align 8, !tbaa !41
  %288 = load i32, ptr %287, align 4, !tbaa !25
  %289 = add i32 %288, 1
  %290 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %289, i1 true)
  %291 = shl nuw nsw i32 %290, 8
  %292 = add i32 %286, -7936
  %293 = add i32 %292, %291
  %294 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %280, i32 %293), !nosanitize !48
  %295 = extractvalue { i32, i1 } %294, 1, !nosanitize !48
  br i1 %295, label %278, label %296, !prof !49, !nosanitize !48

296:                                              ; preds = %279
  %297 = extractvalue { i32, i1 } %294, 0, !nosanitize !48
  store i32 %297, ptr %282, align 4, !tbaa !43
  %298 = add i32 %243, 1
  %299 = icmp ugt i32 %298, %202
  br i1 %299, label %300, label %242, !llvm.loop !51

300:                                              ; preds = %296, %221, %196
  %301 = phi i32 [ %198, %196 ], [ %228, %221 ], [ %298, %296 ]
  %302 = add nuw nsw i64 %197, 1
  %303 = icmp eq i64 %302, %195
  br i1 %303, label %304, label %196, !llvm.loop !56

304:                                              ; preds = %300
  %305 = add i32 %301, -1
  %306 = zext i32 %301 to i64
  %307 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %306
  store i32 1073741824, ptr %307, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  %308 = icmp eq i32 %305, 0
  br i1 %308, label %782, label %309

309:                                              ; preds = %304, %778
  %310 = phi i32 [ %779, %778 ], [ 1, %304 ]
  %311 = phi i32 [ %780, %778 ], [ %305, %304 ]
  %312 = zext i32 %310 to i64
  %313 = getelementptr inbounds nuw i8, ptr %96, i64 %312
  %314 = add i32 %310, -1
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %315
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 12
  %318 = load i32, ptr %317, align 4, !tbaa !38
  %319 = add i32 %318, 1
  %320 = load i32, ptr %316, align 4, !tbaa !43
  %321 = getelementptr inbounds i8, ptr %313, i64 -1
  %322 = load i32, ptr %73, align 8, !tbaa !57
  %323 = icmp eq i32 %322, 2
  br i1 %323, label %342, label %324

324:                                              ; preds = %309
  %325 = load i32, ptr %65, align 8, !tbaa !39
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %342, label %327

327:                                              ; preds = %324
  %328 = load i32, ptr %74, align 8, !tbaa !58
  %329 = add i32 %328, -256
  %330 = load ptr, ptr %14, align 8, !tbaa !59
  %331 = load i8, ptr %321, align 1, !tbaa !42
  %332 = zext i8 %331 to i64
  %333 = getelementptr inbounds nuw i32, ptr %330, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !25
  %335 = add i32 %334, 1
  %336 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %335, i1 true)
  %337 = shl nuw nsw i32 %336, 8
  %338 = xor i32 %337, 7936
  %339 = icmp ugt i32 %338, %329
  %340 = sub i32 %328, %338
  %341 = select i1 %339, i32 256, i32 %340, !prof !60
  br label %342

342:                                              ; preds = %309, %324, %327
  %343 = phi i32 [ 2048, %309 ], [ 1536, %324 ], [ %341, %327 ]
  %344 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %320, i32 %343), !nosanitize !48
  %345 = extractvalue { i32, i1 } %344, 0, !nosanitize !48
  %346 = extractvalue { i32, i1 } %344, 1, !nosanitize !48
  br i1 %346, label %278, label %347, !prof !49, !nosanitize !48

347:                                              ; preds = %342
  %348 = load i32, ptr %65, align 8, !tbaa !39
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %373, label %350

350:                                              ; preds = %347
  %351 = icmp eq i32 %319, 131072
  br i1 %351, label %352, label %363

352:                                              ; preds = %350
  %353 = load i32, ptr %66, align 4, !tbaa !40
  %354 = load ptr, ptr %67, align 8, !tbaa !41
  %355 = getelementptr inbounds nuw i8, ptr %354, i64 140
  %356 = load i32, ptr %355, align 4, !tbaa !25
  %357 = add i32 %356, 1
  %358 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %357, i1 true)
  %359 = shl nuw nsw i32 %358, 8
  %360 = add i32 %353, -3584
  %361 = add i32 %360, %359
  %362 = add i32 %353, -7936
  br label %408

363:                                              ; preds = %350
  %364 = icmp ugt i32 %319, 63
  br i1 %364, label %365, label %368

365:                                              ; preds = %363
  %366 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %319, i1 true)
  %367 = sub nuw nsw i32 50, %366
  br label %381

368:                                              ; preds = %363
  %369 = zext nneg i32 %319 to i64
  %370 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %369
  %371 = load i8, ptr %370, align 1, !tbaa !42
  %372 = zext i8 %371 to i32
  br label %381

373:                                              ; preds = %347
  %374 = add i32 %318, 2
  %375 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %374, i1 true)
  %376 = shl nuw nsw i32 %375, 8
  %377 = xor i32 %376, 7936
  %378 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %319, i1 true)
  %379 = shl nuw nsw i32 %378, 8
  %380 = xor i32 %379, 7936
  br label %435

381:                                              ; preds = %365, %368
  %382 = phi i32 [ %367, %365 ], [ %372, %368 ]
  %383 = zext nneg i32 %382 to i64
  %384 = getelementptr inbounds nuw [36 x i8], ptr @LL_bits, i64 0, i64 %383
  %385 = load i8, ptr %384, align 1, !tbaa !42
  %386 = zext i8 %385 to i32
  %387 = load i32, ptr %66, align 4, !tbaa !40
  %388 = load ptr, ptr %67, align 8, !tbaa !41
  %389 = getelementptr inbounds nuw i32, ptr %388, i64 %383
  %390 = load i32, ptr %389, align 4, !tbaa !25
  %391 = add i32 %390, 1
  %392 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %391, i1 true)
  %393 = add nuw nsw i32 %392, %386
  %394 = shl nuw nsw i32 %393, 8
  %395 = add i32 %387, -7936
  %396 = add i32 %395, %394
  %397 = icmp eq i32 %318, 131072
  br i1 %397, label %398, label %406

398:                                              ; preds = %381
  %399 = getelementptr inbounds nuw i8, ptr %388, i64 140
  %400 = load i32, ptr %399, align 4, !tbaa !25
  %401 = add i32 %400, 1
  %402 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %401, i1 true)
  %403 = shl nuw nsw i32 %402, 8
  %404 = add i32 %387, -3584
  %405 = add i32 %404, %403
  br label %435

406:                                              ; preds = %381
  %407 = icmp ugt i32 %318, 63
  br i1 %407, label %408, label %414

408:                                              ; preds = %352, %406
  %409 = phi i32 [ %362, %352 ], [ %395, %406 ]
  %410 = phi ptr [ %354, %352 ], [ %388, %406 ]
  %411 = phi i32 [ %361, %352 ], [ %396, %406 ]
  %412 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %318, i1 true)
  %413 = sub nuw nsw i32 50, %412
  br label %419

414:                                              ; preds = %406
  %415 = zext nneg i32 %318 to i64
  %416 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %415
  %417 = load i8, ptr %416, align 1, !tbaa !42
  %418 = zext i8 %417 to i32
  br label %419

419:                                              ; preds = %414, %408
  %420 = phi i32 [ %395, %414 ], [ %409, %408 ]
  %421 = phi ptr [ %388, %414 ], [ %410, %408 ]
  %422 = phi i32 [ %396, %414 ], [ %411, %408 ]
  %423 = phi i32 [ %418, %414 ], [ %413, %408 ]
  %424 = zext nneg i32 %423 to i64
  %425 = getelementptr inbounds nuw [36 x i8], ptr @LL_bits, i64 0, i64 %424
  %426 = load i8, ptr %425, align 1, !tbaa !42
  %427 = zext i8 %426 to i32
  %428 = getelementptr inbounds nuw i32, ptr %421, i64 %424
  %429 = load i32, ptr %428, align 4, !tbaa !25
  %430 = add i32 %429, 1
  %431 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %430, i1 true)
  %432 = add nuw nsw i32 %431, %427
  %433 = shl nuw nsw i32 %432, 8
  %434 = add i32 %420, %433
  br label %435

435:                                              ; preds = %373, %398, %419
  %436 = phi i32 [ %396, %398 ], [ %422, %419 ], [ %377, %373 ]
  %437 = phi i32 [ %405, %398 ], [ %434, %419 ], [ %380, %373 ]
  %438 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %436, i32 %437), !nosanitize !48
  %439 = extractvalue { i32, i1 } %438, 1, !nosanitize !48
  br i1 %439, label %440, label %441, !prof !49, !nosanitize !48

440:                                              ; preds = %435
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !48
  unreachable, !nosanitize !48

441:                                              ; preds = %435
  %442 = extractvalue { i32, i1 } %438, 0, !nosanitize !48
  %443 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %345, i32 %442), !nosanitize !48
  %444 = extractvalue { i32, i1 } %443, 0, !nosanitize !48
  %445 = extractvalue { i32, i1 } %443, 1, !nosanitize !48
  br i1 %445, label %278, label %446, !prof !49, !nosanitize !48

446:                                              ; preds = %441
  %447 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %312
  %448 = load i32, ptr %447, align 4, !tbaa !43
  %449 = icmp sgt i32 %444, %448
  %450 = getelementptr inbounds nuw i8, ptr %447, i64 12
  br i1 %449, label %451, label %453

451:                                              ; preds = %446
  %452 = load i32, ptr %450, align 4, !tbaa !38
  br label %454

453:                                              ; preds = %446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %447, ptr noundef nonnull align 4 dereferenceable(28) %316, i64 28, i1 false), !tbaa.struct !61
  store i32 %319, ptr %450, align 4, !tbaa !38
  store i32 %444, ptr %447, align 4, !tbaa !43
  br label %454

454:                                              ; preds = %451, %453
  %455 = phi i32 [ %448, %451 ], [ %444, %453 ]
  %456 = phi i32 [ %452, %451 ], [ %319, %453 ]
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %504

458:                                              ; preds = %454
  %459 = getelementptr inbounds nuw i8, ptr %447, i64 8
  %460 = load i32, ptr %459, align 4, !tbaa !36
  %461 = sub i32 %310, %460
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %462
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 16
  %465 = getelementptr inbounds nuw i8, ptr %447, i64 4
  %466 = load i32, ptr %465, align 4, !tbaa !50
  %467 = getelementptr inbounds nuw i8, ptr %463, i64 12
  %468 = load i32, ptr %467, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull readonly align 4 dereferenceable(12) %464, i64 12, i1 false)
  %469 = icmp ugt i32 %466, 3
  br i1 %469, label %470, label %474

470:                                              ; preds = %458
  %471 = load i32, ptr %76, align 4, !tbaa !25
  %472 = load i32, ptr %8, align 8, !tbaa !25
  store i32 %472, ptr %76, align 4, !tbaa !25
  %473 = add i32 %466, -3
  br label %496

474:                                              ; preds = %458
  %475 = icmp eq i32 %468, 0
  %476 = zext i1 %475 to i32
  %477 = add nsw i32 %466, -1
  %478 = add nsw i32 %477, %476
  switch i32 %478, label %484 [
    i32 0, label %479
    i32 3, label %481
  ]

479:                                              ; preds = %474
  %480 = load i32, ptr %75, align 8
  br label %499

481:                                              ; preds = %474
  %482 = load i32, ptr %8, align 8, !tbaa !25
  %483 = add i32 %482, -1
  br label %489

484:                                              ; preds = %474
  %485 = zext i32 %478 to i64
  %486 = getelementptr inbounds nuw i32, ptr %8, i64 %485
  %487 = load i32, ptr %486, align 4, !tbaa !25
  %488 = load i32, ptr %8, align 8, !tbaa !25
  br label %489

489:                                              ; preds = %484, %481
  %490 = phi i32 [ %482, %481 ], [ %488, %484 ]
  %491 = phi i32 [ %483, %481 ], [ %487, %484 ]
  %492 = icmp eq i32 %478, 1
  %493 = load i32, ptr %75, align 8
  %494 = load i32, ptr %76, align 4
  %495 = select i1 %492, i32 %493, i32 %494
  store i32 %490, ptr %76, align 4, !tbaa !25
  br label %496

496:                                              ; preds = %489, %470
  %497 = phi i32 [ %495, %489 ], [ %471, %470 ]
  %498 = phi i32 [ %491, %489 ], [ %473, %470 ]
  store i32 %498, ptr %8, align 8, !tbaa !25
  br label %499

499:                                              ; preds = %479, %496
  %500 = phi i32 [ %480, %479 ], [ %497, %496 ]
  %501 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8)
  %502 = getelementptr inbounds nuw i8, ptr %447, i64 16
  store i64 %501, ptr %502, align 4
  %503 = getelementptr inbounds nuw i8, ptr %447, i64 24
  store i32 %500, ptr %503, align 4
  br label %504

504:                                              ; preds = %499, %454
  %505 = icmp ugt ptr %313, %16
  br i1 %505, label %506, label %508

506:                                              ; preds = %504
  %507 = add i32 %310, 1
  br label %778

508:                                              ; preds = %504
  %509 = icmp eq i32 %310, %311
  br i1 %509, label %782, label %510

510:                                              ; preds = %508
  %511 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %455, i32 128), !nosanitize !48
  %512 = extractvalue { i32, i1 } %511, 1, !nosanitize !48
  br i1 %512, label %278, label %513, !prof !49, !nosanitize !48

513:                                              ; preds = %510
  %514 = extractvalue { i32, i1 } %511, 0, !nosanitize !48
  %515 = add i32 %310, 1
  %516 = zext i32 %515 to i64
  %517 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !43
  %519 = icmp sgt i32 %518, %514
  br i1 %519, label %520, label %778

520:                                              ; preds = %513
  %521 = load i32, ptr %65, align 8, !tbaa !39
  %522 = icmp eq i32 %521, 1
  br i1 %522, label %532, label %523

523:                                              ; preds = %520
  %524 = load i32, ptr %66, align 4, !tbaa !40
  %525 = load ptr, ptr %67, align 8, !tbaa !41
  %526 = load i32, ptr %525, align 4, !tbaa !25
  %527 = add i32 %526, 1
  %528 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %527, i1 true)
  %529 = shl nuw nsw i32 %528, 8
  %530 = add i32 %524, -7936
  %531 = add i32 %530, %529
  br label %532

532:                                              ; preds = %520, %523
  %533 = phi i32 [ %531, %523 ], [ 0, %520 ]
  %534 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %455, i32 %533), !nosanitize !48
  %535 = extractvalue { i32, i1 } %534, 0, !nosanitize !48
  %536 = extractvalue { i32, i1 } %534, 1, !nosanitize !48
  br i1 %536, label %278, label %537, !prof !49, !nosanitize !48

537:                                              ; preds = %532
  %538 = zext i1 %457 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  %539 = getelementptr inbounds nuw i8, ptr %447, i64 16
  %540 = call i32 %34(ptr noundef %45, ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef %313, ptr noundef %15, ptr noundef nonnull %539, i32 noundef %538, i32 noundef %39) #12
  store i32 %540, ptr %13, align 4, !tbaa !25
  %541 = ptrtoint ptr %313 to i64
  %542 = sub i64 %541, %55
  %543 = trunc i64 %542 to i32
  %544 = sub i64 %56, %541
  %545 = trunc i64 %544 to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %11, ptr noundef %45, ptr noundef %13, i32 noundef %543, i32 noundef %545, i32 noundef %39)
  %546 = load i32, ptr %13, align 4, !tbaa !25
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %537
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  br label %778

549:                                              ; preds = %537
  %550 = add i32 %546, -1
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %45, i64 %551, i32 1
  %553 = load i32, ptr %552, align 4, !tbaa !44
  %554 = icmp ule i32 %553, %37
  %555 = add i32 %553, %310
  %556 = icmp ult i32 %555, 4096
  %557 = and i1 %554, %556
  %558 = zext nneg i32 %553 to i64
  %559 = getelementptr inbounds nuw i8, ptr %313, i64 %558
  %560 = icmp ult ptr %559, %15
  %561 = select i1 %557, i1 %560, i1 false
  br i1 %561, label %562, label %796

562:                                              ; preds = %549
  %563 = zext i32 %546 to i64
  br label %564

564:                                              ; preds = %562, %770
  %565 = phi i64 [ 0, %562 ], [ %772, %770 ]
  %566 = phi i32 [ %311, %562 ], [ %771, %770 ]
  %567 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %45, i64 %565
  %568 = load i32, ptr %567, align 4, !tbaa !46
  %569 = getelementptr inbounds nuw i8, ptr %567, i64 4
  %570 = load i32, ptr %569, align 4, !tbaa !44
  %571 = icmp eq i64 %565, 0
  br i1 %571, label %577, label %572

572:                                              ; preds = %564
  %573 = add nsw i64 %565, -1
  %574 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %45, i64 %573, i32 1
  %575 = load i32, ptr %574, align 4, !tbaa !44
  %576 = add i32 %575, 1
  br label %577

577:                                              ; preds = %572, %564
  %578 = phi i32 [ %576, %572 ], [ %39, %564 ]
  %579 = icmp ult i32 %570, %578
  br i1 %579, label %770, label %580

580:                                              ; preds = %577
  %581 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %568, i1 true)
  %582 = xor i32 %581, 31
  %583 = load i32, ptr %65, align 8, !tbaa !39
  %584 = icmp eq i32 %583, 1
  %585 = shl nuw nsw i32 %582, 8
  %586 = add nuw nsw i32 %585, 4096
  br i1 %584, label %587, label %660

587:                                              ; preds = %580
  %588 = add i32 %310, %570
  br label %589

589:                                              ; preds = %587, %635
  %590 = phi i32 [ 0, %587 ], [ %644, %635 ]
  %591 = phi i32 [ %566, %587 ], [ %637, %635 ]
  %592 = phi i32 [ %570, %587 ], [ %642, %635 ]
  %593 = sub i32 %588, %590
  %594 = zext i32 %593 to i64
  %595 = add i32 %592, %310
  %596 = add i32 %592, -2
  %597 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %596, i1 true)
  %598 = shl nuw nsw i32 %597, 8
  %599 = xor i32 %598, 7936
  %600 = add nuw nsw i32 %586, %599
  %601 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %535, i32 %600), !nosanitize !48
  %602 = extractvalue { i32, i1 } %601, 0, !nosanitize !48
  %603 = extractvalue { i32, i1 } %601, 1, !nosanitize !48
  br i1 %603, label %278, label %604, !prof !49, !nosanitize !48

604:                                              ; preds = %589
  %605 = icmp ugt i32 %595, %591
  br i1 %605, label %613, label %606

606:                                              ; preds = %604
  %607 = zext i32 %595 to i64
  %608 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %607
  %609 = load i32, ptr %608, align 4, !tbaa !43
  %610 = icmp slt i32 %602, %609
  br i1 %610, label %611, label %770

611:                                              ; preds = %606
  %612 = zext i32 %595 to i64
  br label %635

613:                                              ; preds = %604
  %614 = zext i32 %591 to i64
  %615 = zext i32 %595 to i64
  %616 = sub nsw i64 %594, %614
  %617 = and i64 %616, 3
  %618 = icmp eq i64 %617, 0
  br i1 %618, label %627, label %619

619:                                              ; preds = %613, %619
  %620 = phi i64 [ %622, %619 ], [ %614, %613 ]
  %621 = phi i64 [ %625, %619 ], [ 0, %613 ]
  %622 = add nuw nsw i64 %620, 1
  %623 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %622
  store i32 1073741824, ptr %623, align 4, !tbaa !43
  %624 = getelementptr inbounds nuw i8, ptr %623, i64 12
  store i32 1, ptr %624, align 4, !tbaa !38
  %625 = add i64 %621, 1
  %626 = icmp eq i64 %625, %617
  br i1 %626, label %627, label %619, !llvm.loop !62

627:                                              ; preds = %619, %613
  %628 = phi i64 [ %614, %613 ], [ %622, %619 ]
  %629 = phi i64 [ poison, %613 ], [ %622, %619 ]
  %630 = sub nsw i64 %614, %594
  %631 = icmp ugt i64 %630, -4
  br i1 %631, label %632, label %645

632:                                              ; preds = %645, %627
  %633 = phi i64 [ %629, %627 ], [ %656, %645 ]
  %634 = trunc nuw i64 %633 to i32
  br label %635

635:                                              ; preds = %611, %632
  %636 = phi i64 [ %612, %611 ], [ %615, %632 ]
  %637 = phi i32 [ %591, %611 ], [ %634, %632 ]
  %638 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %636
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 8
  store i32 %592, ptr %639, align 4, !tbaa !36
  %640 = getelementptr inbounds nuw i8, ptr %638, i64 4
  store i32 %568, ptr %640, align 4, !tbaa !50
  %641 = getelementptr inbounds nuw i8, ptr %638, i64 12
  store i32 0, ptr %641, align 4, !tbaa !38
  store i32 %602, ptr %638, align 4, !tbaa !43
  %642 = add i32 %592, -1
  %643 = icmp ult i32 %642, %578
  %644 = add i32 %590, 1
  br i1 %643, label %770, label %589, !llvm.loop !64

645:                                              ; preds = %627, %645
  %646 = phi i64 [ %656, %645 ], [ %628, %627 ]
  %647 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %646
  %648 = getelementptr inbounds nuw i8, ptr %647, i64 28
  store i32 1073741824, ptr %648, align 4, !tbaa !43
  %649 = getelementptr inbounds nuw i8, ptr %647, i64 40
  store i32 1, ptr %649, align 4, !tbaa !38
  %650 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %646
  %651 = getelementptr inbounds nuw i8, ptr %650, i64 56
  store i32 1073741824, ptr %651, align 4, !tbaa !43
  %652 = getelementptr inbounds nuw i8, ptr %650, i64 68
  store i32 1, ptr %652, align 4, !tbaa !38
  %653 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %646
  %654 = getelementptr inbounds nuw i8, ptr %653, i64 84
  store i32 1073741824, ptr %654, align 4, !tbaa !43
  %655 = getelementptr inbounds nuw i8, ptr %653, i64 96
  store i32 1, ptr %655, align 4, !tbaa !38
  %656 = add nuw nsw i64 %646, 4
  %657 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %656
  store i32 1073741824, ptr %657, align 4, !tbaa !43
  %658 = getelementptr inbounds nuw i8, ptr %657, i64 12
  store i32 1, ptr %658, align 4, !tbaa !38
  %659 = icmp samesign ult i64 %656, %615
  br i1 %659, label %645, label %632, !llvm.loop !65

660:                                              ; preds = %580
  %661 = icmp samesign ugt i32 %582, 19
  %662 = shl nuw nsw i32 %582, 9
  %663 = add nsw i32 %662, -9677
  %664 = select i1 %661, i32 %663, i32 51
  %665 = zext nneg i32 %582 to i64
  %666 = load i32, ptr %69, align 4, !tbaa !52
  %667 = load ptr, ptr %70, align 8, !tbaa !53
  %668 = getelementptr inbounds nuw i32, ptr %667, i64 %665
  %669 = load i32, ptr %71, align 8, !tbaa !54
  %670 = load ptr, ptr %72, align 8, !tbaa !55
  %671 = add i32 %310, %570
  %672 = add i32 %669, %664
  br label %673

673:                                              ; preds = %660, %760
  %674 = phi i32 [ 0, %660 ], [ %769, %760 ]
  %675 = phi i32 [ %566, %660 ], [ %762, %760 ]
  %676 = phi i32 [ %570, %660 ], [ %767, %760 ]
  %677 = sub i32 %671, %674
  %678 = zext i32 %677 to i64
  %679 = add i32 %676, %310
  %680 = add i32 %676, -3
  %681 = load i32, ptr %668, align 4, !tbaa !25
  %682 = add i32 %681, 1
  %683 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %682, i1 true)
  %684 = icmp ugt i32 %680, 127
  br i1 %684, label %685, label %688

685:                                              ; preds = %673
  %686 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %680, i1 true)
  %687 = sub nuw nsw i32 67, %686
  br label %693

688:                                              ; preds = %673
  %689 = zext nneg i32 %680 to i64
  %690 = getelementptr inbounds nuw [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %689
  %691 = load i8, ptr %690, align 1, !tbaa !42
  %692 = zext i8 %691 to i32
  br label %693

693:                                              ; preds = %685, %688
  %694 = phi i32 [ %687, %685 ], [ %692, %688 ]
  %695 = zext nneg i32 %694 to i64
  %696 = getelementptr inbounds nuw [53 x i8], ptr @ML_bits, i64 0, i64 %695
  %697 = load i8, ptr %696, align 1, !tbaa !42
  %698 = zext i8 %697 to i32
  %699 = getelementptr inbounds nuw i32, ptr %670, i64 %695
  %700 = load i32, ptr %699, align 4, !tbaa !25
  %701 = add i32 %700, 1
  %702 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %701, i1 true)
  %703 = shl nuw nsw i32 %702, 8
  %704 = add nuw nsw i32 %582, %698
  %705 = add nuw nsw i32 %683, %704
  %706 = shl nuw nsw i32 %705, 8
  %707 = add nsw i32 %706, -15872
  %708 = add i32 %703, %666
  %709 = add i32 %707, %708
  %710 = add i32 %709, %672
  %711 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %535, i32 %710), !nosanitize !48
  %712 = extractvalue { i32, i1 } %711, 0, !nosanitize !48
  %713 = extractvalue { i32, i1 } %711, 1, !nosanitize !48
  br i1 %713, label %278, label %714, !prof !49, !nosanitize !48

714:                                              ; preds = %693
  %715 = icmp ugt i32 %679, %675
  br i1 %715, label %723, label %716

716:                                              ; preds = %714
  %717 = zext i32 %679 to i64
  %718 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %717
  %719 = load i32, ptr %718, align 4, !tbaa !43
  %720 = icmp slt i32 %712, %719
  br i1 %720, label %721, label %770

721:                                              ; preds = %716
  %722 = zext i32 %679 to i64
  br label %760

723:                                              ; preds = %714
  %724 = zext i32 %675 to i64
  %725 = zext i32 %679 to i64
  %726 = sub nsw i64 %678, %724
  %727 = and i64 %726, 3
  %728 = icmp eq i64 %727, 0
  br i1 %728, label %737, label %729

729:                                              ; preds = %723, %729
  %730 = phi i64 [ %732, %729 ], [ %724, %723 ]
  %731 = phi i64 [ %735, %729 ], [ 0, %723 ]
  %732 = add nuw nsw i64 %730, 1
  %733 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %732
  store i32 1073741824, ptr %733, align 4, !tbaa !43
  %734 = getelementptr inbounds nuw i8, ptr %733, i64 12
  store i32 1, ptr %734, align 4, !tbaa !38
  %735 = add i64 %731, 1
  %736 = icmp eq i64 %735, %727
  br i1 %736, label %737, label %729, !llvm.loop !66

737:                                              ; preds = %729, %723
  %738 = phi i64 [ %724, %723 ], [ %732, %729 ]
  %739 = phi i64 [ poison, %723 ], [ %732, %729 ]
  %740 = sub nsw i64 %724, %678
  %741 = icmp ugt i64 %740, -4
  br i1 %741, label %757, label %742

742:                                              ; preds = %737, %742
  %743 = phi i64 [ %753, %742 ], [ %738, %737 ]
  %744 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %743
  %745 = getelementptr inbounds nuw i8, ptr %744, i64 28
  store i32 1073741824, ptr %745, align 4, !tbaa !43
  %746 = getelementptr inbounds nuw i8, ptr %744, i64 40
  store i32 1, ptr %746, align 4, !tbaa !38
  %747 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %743
  %748 = getelementptr inbounds nuw i8, ptr %747, i64 56
  store i32 1073741824, ptr %748, align 4, !tbaa !43
  %749 = getelementptr inbounds nuw i8, ptr %747, i64 68
  store i32 1, ptr %749, align 4, !tbaa !38
  %750 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %743
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 84
  store i32 1073741824, ptr %751, align 4, !tbaa !43
  %752 = getelementptr inbounds nuw i8, ptr %750, i64 96
  store i32 1, ptr %752, align 4, !tbaa !38
  %753 = add nuw nsw i64 %743, 4
  %754 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %753
  store i32 1073741824, ptr %754, align 4, !tbaa !43
  %755 = getelementptr inbounds nuw i8, ptr %754, i64 12
  store i32 1, ptr %755, align 4, !tbaa !38
  %756 = icmp samesign ult i64 %753, %725
  br i1 %756, label %742, label %757, !llvm.loop !65

757:                                              ; preds = %742, %737
  %758 = phi i64 [ %739, %737 ], [ %753, %742 ]
  %759 = trunc nuw i64 %758 to i32
  br label %760

760:                                              ; preds = %721, %757
  %761 = phi i64 [ %722, %721 ], [ %725, %757 ]
  %762 = phi i32 [ %675, %721 ], [ %759, %757 ]
  %763 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %761
  %764 = getelementptr inbounds nuw i8, ptr %763, i64 8
  store i32 %676, ptr %764, align 4, !tbaa !36
  %765 = getelementptr inbounds nuw i8, ptr %763, i64 4
  store i32 %568, ptr %765, align 4, !tbaa !50
  %766 = getelementptr inbounds nuw i8, ptr %763, i64 12
  store i32 0, ptr %766, align 4, !tbaa !38
  store i32 %712, ptr %763, align 4, !tbaa !43
  %767 = add i32 %676, -1
  %768 = icmp ult i32 %767, %578
  %769 = add i32 %674, 1
  br i1 %768, label %770, label %673, !llvm.loop !64

770:                                              ; preds = %760, %716, %635, %606, %577
  %771 = phi i32 [ %566, %577 ], [ %591, %606 ], [ %637, %635 ], [ %675, %716 ], [ %762, %760 ]
  %772 = add nuw nsw i64 %565, 1
  %773 = icmp eq i64 %772, %563
  br i1 %773, label %774, label %564, !llvm.loop !67

774:                                              ; preds = %770
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  %775 = add i32 %771, 1
  %776 = zext i32 %775 to i64
  %777 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %776
  store i32 1073741824, ptr %777, align 4, !tbaa !43
  br label %778

778:                                              ; preds = %506, %513, %774, %548
  %779 = phi i32 [ %507, %506 ], [ %515, %513 ], [ %515, %774 ], [ %515, %548 ]
  %780 = phi i32 [ %311, %506 ], [ %311, %513 ], [ %771, %774 ], [ %311, %548 ]
  %781 = icmp ugt i32 %779, %780
  br i1 %781, label %782, label %309, !llvm.loop !68

782:                                              ; preds = %508, %778, %304
  %783 = phi i32 [ 0, %304 ], [ %310, %508 ], [ %780, %778 ]
  %784 = zext i32 %783 to i64
  %785 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %784
  %786 = load i32, ptr %785, align 4, !tbaa !25
  %787 = getelementptr inbounds nuw i8, ptr %785, i64 4
  %788 = load i32, ptr %787, align 4, !tbaa !25
  %789 = getelementptr inbounds nuw i8, ptr %785, i64 8
  %790 = load i32, ptr %789, align 4, !tbaa !25
  %791 = getelementptr inbounds nuw i8, ptr %785, i64 12
  %792 = load i32, ptr %791, align 4, !tbaa !25
  %793 = getelementptr inbounds nuw i8, ptr %785, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %793, i64 12, i1 false), !tbaa.struct !69
  %794 = sub i32 %783, %790
  %795 = icmp eq i32 %790, 0
  br i1 %795, label %800, label %805

796:                                              ; preds = %549
  %797 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %45, i64 %551
  %798 = load i32, ptr %797, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  %799 = icmp eq i32 %553, 0
  br i1 %799, label %800, label %807

800:                                              ; preds = %796, %782
  %801 = phi i32 [ %98, %796 ], [ %786, %782 ]
  %802 = phi i32 [ %555, %796 ], [ %783, %782 ]
  %803 = zext i32 %802 to i64
  %804 = getelementptr inbounds nuw i8, ptr %96, i64 %803
  br label %1254, !llvm.loop !70

805:                                              ; preds = %782
  %806 = icmp eq i32 %792, 0
  br i1 %806, label %807, label %856

807:                                              ; preds = %796, %805
  %808 = phi i32 [ %794, %805 ], [ %310, %796 ]
  %809 = phi i32 [ %790, %805 ], [ %553, %796 ]
  %810 = phi i32 [ %788, %805 ], [ %798, %796 ]
  %811 = phi i32 [ %786, %805 ], [ %98, %796 ]
  %812 = zext i32 %808 to i64
  %813 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %812, i32 3
  %814 = load i32, ptr %813, align 4, !tbaa !38
  br label %815

815:                                              ; preds = %807, %168
  %816 = phi i32 [ %102, %168 ], [ %814, %807 ]
  %817 = phi i32 [ 0, %168 ], [ %808, %807 ]
  %818 = phi i32 [ %166, %168 ], [ %809, %807 ]
  %819 = phi i32 [ %169, %168 ], [ %810, %807 ]
  %820 = phi i32 [ %98, %168 ], [ %811, %807 ]
  %821 = zext i32 %817 to i64
  %822 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %821, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull readonly align 4 dereferenceable(12) %822, i64 12, i1 false)
  %823 = icmp ugt i32 %819, 3
  br i1 %823, label %824, label %828

824:                                              ; preds = %815
  %825 = load i32, ptr %78, align 4, !tbaa !25
  %826 = load i32, ptr %7, align 8, !tbaa !25
  store i32 %826, ptr %78, align 4, !tbaa !25
  %827 = add i32 %819, -3
  br label %850

828:                                              ; preds = %815
  %829 = icmp eq i32 %816, 0
  %830 = zext i1 %829 to i32
  %831 = add nsw i32 %819, -1
  %832 = add nsw i32 %831, %830
  switch i32 %832, label %838 [
    i32 0, label %833
    i32 3, label %835
  ]

833:                                              ; preds = %828
  %834 = load i32, ptr %77, align 8
  br label %853

835:                                              ; preds = %828
  %836 = load i32, ptr %7, align 8, !tbaa !25
  %837 = add i32 %836, -1
  br label %843

838:                                              ; preds = %828
  %839 = zext i32 %832 to i64
  %840 = getelementptr inbounds nuw i32, ptr %7, i64 %839
  %841 = load i32, ptr %840, align 4, !tbaa !25
  %842 = load i32, ptr %7, align 8, !tbaa !25
  br label %843

843:                                              ; preds = %838, %835
  %844 = phi i32 [ %836, %835 ], [ %842, %838 ]
  %845 = phi i32 [ %837, %835 ], [ %841, %838 ]
  %846 = icmp eq i32 %832, 1
  %847 = load i32, ptr %77, align 8
  %848 = load i32, ptr %78, align 4
  %849 = select i1 %846, i32 %847, i32 %848
  store i32 %844, ptr %78, align 4, !tbaa !25
  br label %850

850:                                              ; preds = %843, %824
  %851 = phi i32 [ %849, %843 ], [ %825, %824 ]
  %852 = phi i32 [ %845, %843 ], [ %827, %824 ]
  store i32 %852, ptr %7, align 8, !tbaa !25
  br label %853

853:                                              ; preds = %833, %850
  %854 = phi i32 [ %834, %833 ], [ %851, %850 ]
  %855 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7)
  store i64 %855, ptr %2, align 4
  store i32 %854, ptr %79, align 4
  br label %858

856:                                              ; preds = %805
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %793, i64 12, i1 false)
  %857 = sub i32 %794, %792
  br label %858

858:                                              ; preds = %856, %853
  %859 = phi i32 [ 0, %853 ], [ %792, %856 ]
  %860 = phi i32 [ %818, %853 ], [ %790, %856 ]
  %861 = phi i32 [ %819, %853 ], [ %788, %856 ]
  %862 = phi i32 [ %820, %853 ], [ %786, %856 ]
  %863 = phi i32 [ %817, %853 ], [ %857, %856 ]
  %864 = add i32 %863, 2
  %865 = zext i32 %864 to i64
  %866 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %865
  store i32 %862, ptr %866, align 4, !tbaa !25
  %867 = getelementptr inbounds nuw i8, ptr %866, i64 4
  store i32 %861, ptr %867, align 4, !tbaa !25
  %868 = getelementptr inbounds nuw i8, ptr %866, i64 8
  store i32 %860, ptr %868, align 4, !tbaa !25
  %869 = getelementptr inbounds nuw i8, ptr %866, i64 12
  store i32 %859, ptr %869, align 4, !tbaa !25
  %870 = getelementptr inbounds nuw i8, ptr %866, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %870, ptr noundef nonnull align 4 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !69
  %871 = zext i32 %863 to i64
  %872 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %871
  %873 = load i64, ptr %872, align 4
  %874 = getelementptr inbounds nuw i8, ptr %872, i64 8
  %875 = load i32, ptr %874, align 4, !tbaa !25
  %876 = getelementptr inbounds nuw i8, ptr %872, i64 12
  %877 = load i32, ptr %876, align 4, !tbaa !25
  %878 = zext i32 %864 to i64
  %879 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %878, i32 3
  store i32 %877, ptr %879, align 4, !tbaa !38
  %880 = icmp eq i32 %875, 0
  br i1 %880, label %907, label %881

881:                                              ; preds = %858, %881
  %882 = phi i32 [ %903, %881 ], [ %877, %858 ]
  %883 = phi i32 [ %901, %881 ], [ %875, %858 ]
  %884 = phi i64 [ %899, %881 ], [ %873, %858 ]
  %885 = phi i64 [ %897, %881 ], [ %871, %858 ]
  %886 = phi i32 [ %896, %881 ], [ %863, %858 ]
  %887 = phi i32 [ %889, %881 ], [ %864, %858 ]
  %888 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %885, i32 4
  %889 = add i32 %887, -1
  %890 = zext i32 %889 to i64
  %891 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %890
  store i64 %884, ptr %891, align 4
  %892 = getelementptr inbounds nuw i8, ptr %891, i64 8
  store i32 %883, ptr %892, align 4, !tbaa !25
  %893 = getelementptr inbounds nuw i8, ptr %891, i64 12
  store i32 %882, ptr %893, align 4, !tbaa !25
  %894 = getelementptr inbounds nuw i8, ptr %891, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %894, ptr noundef nonnull align 4 dereferenceable(12) %888, i64 12, i1 false)
  %895 = add i32 %883, %882
  %896 = sub i32 %886, %895
  %897 = zext i32 %896 to i64
  %898 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %897
  %899 = load i64, ptr %898, align 4
  %900 = getelementptr inbounds nuw i8, ptr %898, i64 8
  %901 = load i32, ptr %900, align 4, !tbaa !25
  %902 = getelementptr inbounds nuw i8, ptr %898, i64 12
  %903 = load i32, ptr %902, align 4, !tbaa !25
  %904 = zext i32 %889 to i64
  %905 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %904, i32 3
  store i32 %903, ptr %905, align 4, !tbaa !38
  %906 = icmp eq i32 %901, 0
  br i1 %906, label %907, label %881

907:                                              ; preds = %881, %858
  %908 = phi i32 [ %864, %858 ], [ %889, %881 ]
  %909 = icmp ugt i32 %908, %864
  br i1 %909, label %1227, label %910

910:                                              ; preds = %907, %1222
  %911 = phi ptr [ %1223, %1222 ], [ %97, %907 ]
  %912 = phi i32 [ %1225, %1222 ], [ %908, %907 ]
  %913 = ptrtoint ptr %911 to i64
  %914 = zext i32 %912 to i64
  %915 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %43, i64 %914
  %916 = getelementptr inbounds nuw i8, ptr %915, i64 12
  %917 = load i32, ptr %916, align 4, !tbaa !38
  %918 = getelementptr inbounds nuw i8, ptr %915, i64 8
  %919 = load i32, ptr %918, align 4, !tbaa !36
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %921, label %924

921:                                              ; preds = %910
  %922 = zext i32 %917 to i64
  %923 = getelementptr inbounds nuw i8, ptr %911, i64 %922
  br label %1222

924:                                              ; preds = %910
  %925 = add i32 %919, %917
  %926 = getelementptr inbounds nuw i8, ptr %915, i64 4
  %927 = load i32, ptr %926, align 4, !tbaa !50
  %928 = load i32, ptr %73, align 8, !tbaa !57
  %929 = icmp eq i32 %928, 2
  br i1 %929, label %991, label %930

930:                                              ; preds = %924
  %931 = icmp eq i32 %917, 0
  br i1 %931, label %987, label %932

932:                                              ; preds = %930
  %933 = load ptr, ptr %14, align 8, !tbaa !59
  %934 = zext i32 %917 to i64
  %935 = and i64 %934, 3
  %936 = icmp ult i32 %917, 4
  br i1 %936, label %972, label %937

937:                                              ; preds = %932
  %938 = and i64 %934, 4294967292
  %939 = getelementptr inbounds i8, ptr %911, i64 1
  %940 = getelementptr inbounds i8, ptr %911, i64 2
  %941 = getelementptr inbounds i8, ptr %911, i64 3
  br label %942

942:                                              ; preds = %942, %937
  %943 = phi i64 [ 0, %937 ], [ %969, %942 ]
  %944 = phi i64 [ 0, %937 ], [ %970, %942 ]
  %945 = getelementptr inbounds nuw i8, ptr %911, i64 %943
  %946 = load i8, ptr %945, align 1, !tbaa !42
  %947 = zext i8 %946 to i64
  %948 = getelementptr inbounds nuw i32, ptr %933, i64 %947
  %949 = load i32, ptr %948, align 4, !tbaa !25
  %950 = add i32 %949, 2
  store i32 %950, ptr %948, align 4, !tbaa !25
  %951 = getelementptr inbounds i8, ptr %939, i64 %943
  %952 = load i8, ptr %951, align 1, !tbaa !42
  %953 = zext i8 %952 to i64
  %954 = getelementptr inbounds nuw i32, ptr %933, i64 %953
  %955 = load i32, ptr %954, align 4, !tbaa !25
  %956 = add i32 %955, 2
  store i32 %956, ptr %954, align 4, !tbaa !25
  %957 = getelementptr inbounds i8, ptr %940, i64 %943
  %958 = load i8, ptr %957, align 1, !tbaa !42
  %959 = zext i8 %958 to i64
  %960 = getelementptr inbounds nuw i32, ptr %933, i64 %959
  %961 = load i32, ptr %960, align 4, !tbaa !25
  %962 = add i32 %961, 2
  store i32 %962, ptr %960, align 4, !tbaa !25
  %963 = getelementptr inbounds i8, ptr %941, i64 %943
  %964 = load i8, ptr %963, align 1, !tbaa !42
  %965 = zext i8 %964 to i64
  %966 = getelementptr inbounds nuw i32, ptr %933, i64 %965
  %967 = load i32, ptr %966, align 4, !tbaa !25
  %968 = add i32 %967, 2
  store i32 %968, ptr %966, align 4, !tbaa !25
  %969 = add nuw nsw i64 %943, 4
  %970 = add i64 %944, 4
  %971 = icmp eq i64 %970, %938
  br i1 %971, label %972, label %942, !llvm.loop !71

972:                                              ; preds = %942, %932
  %973 = phi i64 [ 0, %932 ], [ %969, %942 ]
  %974 = icmp eq i64 %935, 0
  br i1 %974, label %987, label %975

975:                                              ; preds = %972, %975
  %976 = phi i64 [ %984, %975 ], [ %973, %972 ]
  %977 = phi i64 [ %985, %975 ], [ 0, %972 ]
  %978 = getelementptr inbounds nuw i8, ptr %911, i64 %976
  %979 = load i8, ptr %978, align 1, !tbaa !42
  %980 = zext i8 %979 to i64
  %981 = getelementptr inbounds nuw i32, ptr %933, i64 %980
  %982 = load i32, ptr %981, align 4, !tbaa !25
  %983 = add i32 %982, 2
  store i32 %983, ptr %981, align 4, !tbaa !25
  %984 = add nuw nsw i64 %976, 1
  %985 = add i64 %977, 1
  %986 = icmp eq i64 %985, %935
  br i1 %986, label %987, label %975, !llvm.loop !72

987:                                              ; preds = %972, %975, %930
  %988 = shl i32 %917, 1
  %989 = load i32, ptr %80, align 8, !tbaa !73
  %990 = add i32 %989, %988
  store i32 %990, ptr %80, align 8, !tbaa !73
  br label %991

991:                                              ; preds = %987, %924
  %992 = icmp ugt i32 %917, 63
  br i1 %992, label %993, label %996

993:                                              ; preds = %991
  %994 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %917, i1 true)
  %995 = sub nuw nsw i32 50, %994
  br label %1001

996:                                              ; preds = %991
  %997 = zext nneg i32 %917 to i64
  %998 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %997
  %999 = load i8, ptr %998, align 1, !tbaa !42
  %1000 = zext i8 %999 to i32
  br label %1001

1001:                                             ; preds = %996, %993
  %1002 = phi i32 [ %995, %993 ], [ %1000, %996 ]
  %1003 = load ptr, ptr %67, align 8, !tbaa !41
  %1004 = zext nneg i32 %1002 to i64
  %1005 = getelementptr inbounds nuw i32, ptr %1003, i64 %1004
  %1006 = load i32, ptr %1005, align 4, !tbaa !25
  %1007 = add i32 %1006, 1
  store i32 %1007, ptr %1005, align 4, !tbaa !25
  %1008 = load i32, ptr %81, align 4, !tbaa !74
  %1009 = add i32 %1008, 1
  store i32 %1009, ptr %81, align 4, !tbaa !74
  %1010 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %927, i1 true)
  %1011 = xor i32 %1010, 31
  %1012 = load ptr, ptr %70, align 8, !tbaa !53
  %1013 = zext nneg i32 %1011 to i64
  %1014 = getelementptr inbounds nuw i32, ptr %1012, i64 %1013
  %1015 = load i32, ptr %1014, align 4, !tbaa !25
  %1016 = add i32 %1015, 1
  store i32 %1016, ptr %1014, align 4, !tbaa !25
  %1017 = load i32, ptr %82, align 4, !tbaa !75
  %1018 = add i32 %1017, 1
  store i32 %1018, ptr %82, align 4, !tbaa !75
  %1019 = add i32 %919, -3
  %1020 = icmp ugt i32 %1019, 127
  br i1 %1020, label %1021, label %1024

1021:                                             ; preds = %1001
  %1022 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1019, i1 true)
  %1023 = sub nuw nsw i32 67, %1022
  br label %1029

1024:                                             ; preds = %1001
  %1025 = zext nneg i32 %1019 to i64
  %1026 = getelementptr inbounds nuw [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %1025
  %1027 = load i8, ptr %1026, align 1, !tbaa !42
  %1028 = zext i8 %1027 to i32
  br label %1029

1029:                                             ; preds = %1021, %1024
  %1030 = phi i32 [ %1023, %1021 ], [ %1028, %1024 ]
  %1031 = load ptr, ptr %72, align 8, !tbaa !55
  %1032 = zext nneg i32 %1030 to i64
  %1033 = getelementptr inbounds nuw i32, ptr %1031, i64 %1032
  %1034 = load i32, ptr %1033, align 4, !tbaa !25
  %1035 = add i32 %1034, 1
  store i32 %1035, ptr %1033, align 4, !tbaa !25
  %1036 = load i32, ptr %83, align 8, !tbaa !76
  %1037 = add i32 %1036, 1
  store i32 %1037, ptr %83, align 8, !tbaa !76
  %1038 = zext i32 %917 to i64
  %1039 = zext i32 %919 to i64
  %1040 = getelementptr inbounds nuw i8, ptr %911, i64 %1038
  %1041 = icmp ugt ptr %1040, %84
  %1042 = load ptr, ptr %85, align 8, !tbaa !77
  br i1 %1041, label %1066, label %1043

1043:                                             ; preds = %1029
  %1044 = load <2 x i64>, ptr %911, align 1, !tbaa !42
  store <2 x i64> %1044, ptr %1042, align 1, !tbaa !42
  %1045 = icmp ugt i32 %917, 16
  br i1 %1045, label %1046, label %1187

1046:                                             ; preds = %1043
  %1047 = load ptr, ptr %85, align 8, !tbaa !77
  %1048 = getelementptr inbounds nuw i8, ptr %1047, i64 16
  %1049 = getelementptr inbounds nuw i8, ptr %911, i64 16
  %1050 = getelementptr i8, ptr %1047, i64 %1038
  %1051 = load <2 x i64>, ptr %1049, align 1, !tbaa !42
  store <2 x i64> %1051, ptr %1048, align 1, !tbaa !42
  %1052 = add i32 %917, -16
  %1053 = icmp ult i32 %1052, 17
  br i1 %1053, label %1187, label %1054

1054:                                             ; preds = %1046
  %1055 = getelementptr inbounds nuw i8, ptr %1047, i64 32
  br label %1056

1056:                                             ; preds = %1056, %1054
  %1057 = phi ptr [ %1055, %1054 ], [ %1064, %1056 ]
  %1058 = phi ptr [ %1049, %1054 ], [ %1062, %1056 ]
  %1059 = getelementptr inbounds nuw i8, ptr %1058, i64 16
  %1060 = load <2 x i64>, ptr %1059, align 1, !tbaa !42
  store <2 x i64> %1060, ptr %1057, align 1, !tbaa !42
  %1061 = getelementptr inbounds nuw i8, ptr %1057, i64 16
  %1062 = getelementptr inbounds nuw i8, ptr %1058, i64 32
  %1063 = load <2 x i64>, ptr %1062, align 1, !tbaa !42
  store <2 x i64> %1063, ptr %1061, align 1, !tbaa !42
  %1064 = getelementptr inbounds nuw i8, ptr %1057, i64 32
  %1065 = icmp ult ptr %1064, %1050
  br i1 %1065, label %1056, label %1191, !llvm.loop !80

1066:                                             ; preds = %1029
  %1067 = icmp ugt ptr %911, %84
  br i1 %1067, label %1086, label %1068

1068:                                             ; preds = %1066
  %1069 = ptrtoint ptr %911 to i64
  %1070 = sub i64 %86, %1069
  %1071 = getelementptr inbounds i8, ptr %1042, i64 %1070
  %1072 = load <2 x i64>, ptr %911, align 1, !tbaa !42
  store <2 x i64> %1072, ptr %1042, align 1, !tbaa !42
  %1073 = icmp ult i64 %1070, 17
  br i1 %1073, label %1086, label %1074

1074:                                             ; preds = %1068
  %1075 = getelementptr inbounds nuw i8, ptr %1042, i64 16
  br label %1076

1076:                                             ; preds = %1076, %1074
  %1077 = phi ptr [ %1075, %1074 ], [ %1084, %1076 ]
  %1078 = phi ptr [ %911, %1074 ], [ %1082, %1076 ]
  %1079 = getelementptr inbounds nuw i8, ptr %1078, i64 16
  %1080 = load <2 x i64>, ptr %1079, align 1, !tbaa !42
  store <2 x i64> %1080, ptr %1077, align 1, !tbaa !42
  %1081 = getelementptr inbounds nuw i8, ptr %1077, i64 16
  %1082 = getelementptr inbounds nuw i8, ptr %1078, i64 32
  %1083 = load <2 x i64>, ptr %1082, align 1, !tbaa !42
  store <2 x i64> %1083, ptr %1081, align 1, !tbaa !42
  %1084 = getelementptr inbounds nuw i8, ptr %1077, i64 32
  %1085 = icmp ult ptr %1084, %1071
  br i1 %1085, label %1076, label %1086, !llvm.loop !80

1086:                                             ; preds = %1076, %1068, %1066
  %1087 = phi ptr [ %84, %1068 ], [ %911, %1066 ], [ %84, %1076 ]
  %1088 = phi ptr [ %1071, %1068 ], [ %1042, %1066 ], [ %1071, %1076 ]
  %1089 = icmp ult ptr %1087, %1040
  br i1 %1089, label %1090, label %1191

1090:                                             ; preds = %1086
  %1091 = ptrtoint ptr %1087 to i64
  %1092 = ptrtoint ptr %1088 to i64
  %1093 = ptrtoint ptr %1087 to i64
  %1094 = add i64 %913, %1038
  %1095 = sub i64 %1094, %1093
  %1096 = icmp ult i64 %1095, 4
  %1097 = sub i64 %1092, %1091
  %1098 = icmp ult i64 %1097, 32
  %1099 = select i1 %1096, i1 true, i1 %1098
  br i1 %1099, label %1135, label %1100

1100:                                             ; preds = %1090
  %1101 = icmp ult i64 %1095, 32
  br i1 %1101, label %1121, label %1102

1102:                                             ; preds = %1100
  %1103 = and i64 %1095, -32
  br label %1104

1104:                                             ; preds = %1104, %1102
  %1105 = phi i64 [ 0, %1102 ], [ %1112, %1104 ]
  %1106 = getelementptr i8, ptr %1088, i64 %1105
  %1107 = getelementptr i8, ptr %1087, i64 %1105
  %1108 = getelementptr i8, ptr %1107, i64 16
  %1109 = load <16 x i8>, ptr %1107, align 1, !tbaa !42
  %1110 = load <16 x i8>, ptr %1108, align 1, !tbaa !42
  %1111 = getelementptr i8, ptr %1106, i64 16
  store <16 x i8> %1109, ptr %1106, align 1, !tbaa !42
  store <16 x i8> %1110, ptr %1111, align 1, !tbaa !42
  %1112 = add nuw i64 %1105, 32
  %1113 = icmp eq i64 %1112, %1103
  br i1 %1113, label %1114, label %1104, !llvm.loop !81

1114:                                             ; preds = %1104
  %1115 = icmp eq i64 %1095, %1103
  br i1 %1115, label %1191, label %1116

1116:                                             ; preds = %1114
  %1117 = getelementptr i8, ptr %1088, i64 %1103
  %1118 = getelementptr i8, ptr %1087, i64 %1103
  %1119 = and i64 %1095, 28
  %1120 = icmp eq i64 %1119, 0
  br i1 %1120, label %1135, label %1121

1121:                                             ; preds = %1116, %1100
  %1122 = phi i64 [ %1103, %1116 ], [ 0, %1100 ]
  %1123 = and i64 %1095, -4
  %1124 = getelementptr i8, ptr %1088, i64 %1123
  %1125 = getelementptr i8, ptr %1087, i64 %1123
  br label %1126

1126:                                             ; preds = %1126, %1121
  %1127 = phi i64 [ %1122, %1121 ], [ %1131, %1126 ]
  %1128 = getelementptr i8, ptr %1088, i64 %1127
  %1129 = getelementptr i8, ptr %1087, i64 %1127
  %1130 = load <4 x i8>, ptr %1129, align 1, !tbaa !42
  store <4 x i8> %1130, ptr %1128, align 1, !tbaa !42
  %1131 = add nuw i64 %1127, 4
  %1132 = icmp eq i64 %1131, %1123
  br i1 %1132, label %1133, label %1126, !llvm.loop !84

1133:                                             ; preds = %1126
  %1134 = icmp eq i64 %1095, %1123
  br i1 %1134, label %1191, label %1135

1135:                                             ; preds = %1116, %1133, %1090
  %1136 = phi ptr [ %1088, %1090 ], [ %1117, %1116 ], [ %1124, %1133 ]
  %1137 = phi ptr [ %1087, %1090 ], [ %1118, %1116 ], [ %1125, %1133 ]
  %1138 = add i64 %913, %1038
  %1139 = ptrtoint ptr %1137 to i64
  %1140 = sub i64 %1138, %1139
  %1141 = add i64 %913, -1
  %1142 = add i64 %1141, %1038
  %1143 = sub i64 %1142, %1139
  %1144 = and i64 %1140, 7
  %1145 = icmp eq i64 %1144, 0
  br i1 %1145, label %1155, label %1146

1146:                                             ; preds = %1135, %1146
  %1147 = phi ptr [ %1152, %1146 ], [ %1136, %1135 ]
  %1148 = phi ptr [ %1150, %1146 ], [ %1137, %1135 ]
  %1149 = phi i64 [ %1153, %1146 ], [ 0, %1135 ]
  %1150 = getelementptr inbounds nuw i8, ptr %1148, i64 1
  %1151 = load i8, ptr %1148, align 1, !tbaa !42
  %1152 = getelementptr inbounds nuw i8, ptr %1147, i64 1
  store i8 %1151, ptr %1147, align 1, !tbaa !42
  %1153 = add i64 %1149, 1
  %1154 = icmp eq i64 %1153, %1144
  br i1 %1154, label %1155, label %1146, !llvm.loop !85

1155:                                             ; preds = %1146, %1135
  %1156 = phi ptr [ %1136, %1135 ], [ %1152, %1146 ]
  %1157 = phi ptr [ %1137, %1135 ], [ %1150, %1146 ]
  %1158 = icmp ult i64 %1143, 7
  br i1 %1158, label %1191, label %1159

1159:                                             ; preds = %1155, %1159
  %1160 = phi ptr [ %1185, %1159 ], [ %1156, %1155 ]
  %1161 = phi ptr [ %1183, %1159 ], [ %1157, %1155 ]
  %1162 = getelementptr inbounds nuw i8, ptr %1161, i64 1
  %1163 = load i8, ptr %1161, align 1, !tbaa !42
  %1164 = getelementptr inbounds nuw i8, ptr %1160, i64 1
  store i8 %1163, ptr %1160, align 1, !tbaa !42
  %1165 = getelementptr inbounds nuw i8, ptr %1161, i64 2
  %1166 = load i8, ptr %1162, align 1, !tbaa !42
  %1167 = getelementptr inbounds nuw i8, ptr %1160, i64 2
  store i8 %1166, ptr %1164, align 1, !tbaa !42
  %1168 = getelementptr inbounds nuw i8, ptr %1161, i64 3
  %1169 = load i8, ptr %1165, align 1, !tbaa !42
  %1170 = getelementptr inbounds nuw i8, ptr %1160, i64 3
  store i8 %1169, ptr %1167, align 1, !tbaa !42
  %1171 = getelementptr inbounds nuw i8, ptr %1161, i64 4
  %1172 = load i8, ptr %1168, align 1, !tbaa !42
  %1173 = getelementptr inbounds nuw i8, ptr %1160, i64 4
  store i8 %1172, ptr %1170, align 1, !tbaa !42
  %1174 = getelementptr inbounds nuw i8, ptr %1161, i64 5
  %1175 = load i8, ptr %1171, align 1, !tbaa !42
  %1176 = getelementptr inbounds nuw i8, ptr %1160, i64 5
  store i8 %1175, ptr %1173, align 1, !tbaa !42
  %1177 = getelementptr inbounds nuw i8, ptr %1161, i64 6
  %1178 = load i8, ptr %1174, align 1, !tbaa !42
  %1179 = getelementptr inbounds nuw i8, ptr %1160, i64 6
  store i8 %1178, ptr %1176, align 1, !tbaa !42
  %1180 = getelementptr inbounds nuw i8, ptr %1161, i64 7
  %1181 = load i8, ptr %1177, align 1, !tbaa !42
  %1182 = getelementptr inbounds nuw i8, ptr %1160, i64 7
  store i8 %1181, ptr %1179, align 1, !tbaa !42
  %1183 = getelementptr inbounds nuw i8, ptr %1161, i64 8
  %1184 = load i8, ptr %1180, align 1, !tbaa !42
  %1185 = getelementptr inbounds nuw i8, ptr %1160, i64 8
  store i8 %1184, ptr %1182, align 1, !tbaa !42
  %1186 = icmp eq ptr %1183, %1040
  br i1 %1186, label %1191, label %1159, !llvm.loop !86

1187:                                             ; preds = %1046, %1043
  %1188 = load ptr, ptr %85, align 8, !tbaa !77
  %1189 = getelementptr inbounds nuw i8, ptr %1188, i64 %1038
  store ptr %1189, ptr %85, align 8, !tbaa !77
  %1190 = load ptr, ptr %88, align 8, !tbaa !87
  br label %1203

1191:                                             ; preds = %1056, %1155, %1159, %1114, %1133, %1086
  %1192 = load ptr, ptr %85, align 8, !tbaa !77
  %1193 = getelementptr inbounds nuw i8, ptr %1192, i64 %1038
  store ptr %1193, ptr %85, align 8, !tbaa !77
  %1194 = icmp ugt i32 %917, 65535
  %1195 = load ptr, ptr %88, align 8, !tbaa !87
  br i1 %1194, label %1196, label %1203, !prof !88

1196:                                             ; preds = %1191
  store i32 1, ptr %87, align 8, !tbaa !89
  %1197 = load ptr, ptr %1, align 8, !tbaa !90
  %1198 = ptrtoint ptr %1195 to i64
  %1199 = ptrtoint ptr %1197 to i64
  %1200 = sub i64 %1198, %1199
  %1201 = lshr exact i64 %1200, 3
  %1202 = trunc i64 %1201 to i32
  store i32 %1202, ptr %89, align 4, !tbaa !91
  br label %1203

1203:                                             ; preds = %1187, %1196, %1191
  %1204 = phi ptr [ %1190, %1187 ], [ %1195, %1196 ], [ %1195, %1191 ]
  %1205 = trunc i32 %917 to i16
  %1206 = getelementptr inbounds nuw i8, ptr %1204, i64 4
  store i16 %1205, ptr %1206, align 4, !tbaa !92
  store i32 %927, ptr %1204, align 4, !tbaa !95
  %1207 = add nsw i64 %1039, -3
  %1208 = icmp ugt i64 %1207, 65535
  br i1 %1208, label %1209, label %1216, !prof !60

1209:                                             ; preds = %1203
  store i32 2, ptr %87, align 8, !tbaa !89
  %1210 = load ptr, ptr %1, align 8, !tbaa !90
  %1211 = ptrtoint ptr %1204 to i64
  %1212 = ptrtoint ptr %1210 to i64
  %1213 = sub i64 %1211, %1212
  %1214 = lshr exact i64 %1213, 3
  %1215 = trunc i64 %1214 to i32
  store i32 %1215, ptr %89, align 4, !tbaa !91
  br label %1216

1216:                                             ; preds = %1203, %1209
  %1217 = trunc i64 %1207 to i16
  %1218 = getelementptr inbounds nuw i8, ptr %1204, i64 6
  store i16 %1217, ptr %1218, align 2, !tbaa !96
  %1219 = getelementptr inbounds nuw i8, ptr %1204, i64 8
  store ptr %1219, ptr %88, align 8, !tbaa !87
  %1220 = zext i32 %925 to i64
  %1221 = getelementptr inbounds nuw i8, ptr %911, i64 %1220
  br label %1222

1222:                                             ; preds = %1216, %921
  %1223 = phi ptr [ %911, %921 ], [ %1221, %1216 ]
  %1224 = phi ptr [ %923, %921 ], [ %1221, %1216 ]
  %1225 = add i32 %912, 1
  %1226 = icmp ugt i32 %1225, %864
  br i1 %1226, label %1227, label %910, !llvm.loop !97

1227:                                             ; preds = %1222, %907
  %1228 = phi ptr [ %97, %907 ], [ %1223, %1222 ]
  %1229 = phi ptr [ %96, %907 ], [ %1224, %1222 ]
  %1230 = load i32, ptr %73, align 8, !tbaa !57
  %1231 = icmp eq i32 %1230, 2
  br i1 %1231, label %1238, label %1232

1232:                                             ; preds = %1227
  %1233 = load i32, ptr %80, align 8, !tbaa !73
  %1234 = add i32 %1233, 1
  %1235 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1234, i1 true)
  %1236 = shl nuw nsw i32 %1235, 8
  %1237 = xor i32 %1236, 7936
  store i32 %1237, ptr %74, align 8, !tbaa !58
  br label %1238

1238:                                             ; preds = %1227, %1232
  %1239 = load i32, ptr %81, align 4, !tbaa !74
  %1240 = add i32 %1239, 1
  %1241 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1240, i1 true)
  %1242 = shl nuw nsw i32 %1241, 8
  %1243 = xor i32 %1242, 7936
  %1244 = load i32, ptr %83, align 8, !tbaa !76
  %1245 = add i32 %1244, 1
  %1246 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1245, i1 true)
  %1247 = shl nuw nsw i32 %1246, 8
  %1248 = xor i32 %1247, 7936
  %1249 = load i32, ptr %82, align 4, !tbaa !75
  %1250 = add i32 %1249, 1
  %1251 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1250, i1 true)
  %1252 = shl nuw nsw i32 %1251, 8
  %1253 = xor i32 %1252, 7936
  store i32 %1243, ptr %66, align 4, !tbaa !40
  store i32 %1248, ptr %71, align 8, !tbaa !54
  store i32 %1253, ptr %69, align 4, !tbaa !52
  br label %1254

1254:                                             ; preds = %112, %1238, %800
  %1255 = phi i32 [ %801, %800 ], [ %862, %1238 ], [ %98, %112 ]
  %1256 = phi ptr [ %97, %800 ], [ %1228, %1238 ], [ %97, %112 ]
  %1257 = phi ptr [ %804, %800 ], [ %1229, %1238 ], [ %113, %112 ]
  %1258 = icmp ult ptr %1257, %16
  br i1 %1258, label %95, label %1259

1259:                                             ; preds = %1254
  %1260 = ptrtoint ptr %1256 to i64
  br label %1261

1261:                                             ; preds = %1259, %51
  %1262 = phi i64 [ %1260, %1259 ], [ %55, %51 ]
  %1263 = sub i64 %56, %1262
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  ret i64 %1263
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btultra(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #1 {
  %7 = alloca %struct.repcodes_s, align 8
  %8 = alloca %struct.repcodes_s, align 8
  %9 = alloca %struct.repcodes_s, align 8
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca %struct.ZSTD_optLdm_t, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %17 = getelementptr inbounds i8, ptr %16, i64 -8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %21 = load i32, ptr %20, align 8, !tbaa !22
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %19, i64 %22
  %24 = getelementptr i8, ptr %0, i64 272
  %25 = load i32, ptr %24, align 8, !tbaa !5
  %26 = icmp ult i32 %25, 3
  %27 = add i32 %25, -6
  %28 = icmp ult i32 %27, -3
  %29 = select i1 %26, i64 0, i64 3
  %30 = add nsw i32 %25, -3
  %31 = zext nneg i32 %30 to i64
  %32 = select i1 %28, i64 %29, i64 %31
  %33 = zext nneg i32 %5 to i64
  %34 = getelementptr inbounds nuw [3 x [4 x ptr]], ptr @__const.ZSTD_selectBtGetAllMatches.getAllMatchesFns, i64 0, i64 %33, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !23
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %37 = load i32, ptr %36, align 4, !tbaa !24
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 4095)
  %39 = icmp eq i32 %25, 3
  %40 = select i1 %39, i32 3, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %42 = load i32, ptr %41, align 4, !tbaa !19
  store i32 %42, ptr %10, align 4, !tbaa !25
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %44 = load ptr, ptr %43, align 8, !tbaa !26
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %46 = load ptr, ptr %45, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %48 = load ptr, ptr %47, align 8, !tbaa !28
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %48, i64 40, i1 false), !tbaa.struct !29
  br label %52

51:                                               ; preds = %6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, i8 0, i64 40, i1 false)
  br label %52

52:                                               ; preds = %51, %50
  %53 = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i32 0, ptr %53, align 8, !tbaa !31
  %54 = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 0, ptr %54, align 8, !tbaa !34
  %55 = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 0, ptr %55, align 4, !tbaa !35
  %56 = ptrtoint ptr %3 to i64
  %57 = ptrtoint ptr %16 to i64
  %58 = trunc i64 %4 to i32
  call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef %12, i32 noundef 0, i32 noundef %58)
  tail call fastcc void @ZSTD_rescaleFreqs(ptr noundef nonnull %15, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  %59 = icmp eq ptr %3, %23
  %60 = zext i1 %59 to i64
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 %60
  %62 = icmp ult ptr %61, %17
  br i1 %62, label %63, label %1640

63:                                               ; preds = %52
  %64 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %65 = getelementptr inbounds nuw i8, ptr %44, i64 12
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %69 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %74 = getelementptr i8, ptr %0, i64 240
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %76 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %77 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %78 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %79 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %80 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %81 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %87 = getelementptr inbounds i8, ptr %16, i64 -32
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %89 = ptrtoint ptr %87 to i64
  %90 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %92 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %93 = zext nneg i32 %40 to i64
  %94 = add nsw i64 %93, -1
  %95 = and i64 %94, 1
  %96 = and i64 %94, -2
  %97 = icmp eq i64 %95, 0
  br label %98

98:                                               ; preds = %63, %1633
  %99 = phi ptr [ %61, %63 ], [ %1636, %1633 ]
  %100 = phi ptr [ %3, %63 ], [ %1635, %1633 ]
  %101 = phi i32 [ 0, %63 ], [ %1634, %1633 ]
  %102 = ptrtoint ptr %99 to i64
  %103 = ptrtoint ptr %100 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  %108 = call i32 %35(ptr noundef %46, ptr noundef %0, ptr noundef nonnull %10, ptr noundef %99, ptr noundef %16, ptr noundef %2, i32 noundef %107, i32 noundef %40) #12
  store i32 %108, ptr %13, align 4, !tbaa !25
  %109 = sub i64 %102, %56
  %110 = trunc i64 %109 to i32
  %111 = sub i64 %57, %102
  %112 = trunc i64 %111 to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %12, ptr noundef %46, ptr noundef %13, i32 noundef %110, i32 noundef %112, i32 noundef %40)
  %113 = load i32, ptr %13, align 4, !tbaa !25
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %98
  %116 = getelementptr inbounds nuw i8, ptr %99, i64 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  br label %1633

117:                                              ; preds = %98
  store i32 0, ptr %64, align 4, !tbaa !36
  store i32 %105, ptr %65, align 4, !tbaa !38
  %118 = load i32, ptr %66, align 8, !tbaa !39
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = add i32 %105, 1
  %122 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %121, i1 true)
  %123 = xor i32 %122, 31
  %124 = shl nuw nsw i32 %123, 8
  %125 = shl i32 %121, 8
  %126 = lshr i32 %125, %123
  %127 = add i32 %124, %126
  br label %173

128:                                              ; preds = %117
  %129 = icmp eq i32 %105, 131072
  br i1 %129, label %130, label %144

130:                                              ; preds = %128
  %131 = load i32, ptr %67, align 4, !tbaa !40
  %132 = load ptr, ptr %68, align 8, !tbaa !41
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 140
  %134 = load i32, ptr %133, align 4, !tbaa !25
  %135 = add i32 %134, 1
  %136 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %135, i1 true)
  %137 = xor i32 %136, 31
  %138 = shl i32 %135, 8
  %139 = lshr i32 %138, %137
  %140 = add i32 %131, 4352
  %141 = shl nuw nsw i32 %137, 8
  %142 = add i32 %139, %141
  %143 = sub i32 %140, %142
  br label %173

144:                                              ; preds = %128
  %145 = icmp ugt i32 %105, 63
  br i1 %145, label %146, label %149

146:                                              ; preds = %144
  %147 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %105, i1 true)
  %148 = sub nuw nsw i32 50, %147
  br label %154

149:                                              ; preds = %144
  %150 = and i64 %104, 63
  %151 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !42
  %153 = zext i8 %152 to i32
  br label %154

154:                                              ; preds = %149, %146
  %155 = phi i32 [ %148, %146 ], [ %153, %149 ]
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds nuw [36 x i8], ptr @LL_bits, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !42
  %159 = zext i8 %158 to i32
  %160 = load i32, ptr %67, align 4, !tbaa !40
  %161 = load ptr, ptr %68, align 8, !tbaa !41
  %162 = getelementptr inbounds nuw i32, ptr %161, i64 %156
  %163 = load i32, ptr %162, align 4, !tbaa !25
  %164 = add i32 %163, 1
  %165 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %164, i1 true)
  %166 = xor i32 %165, 31
  %167 = shl i32 %164, 8
  %168 = lshr i32 %167, %166
  %169 = sub nsw i32 %159, %166
  %170 = shl nsw i32 %169, 8
  %171 = sub i32 %160, %168
  %172 = add i32 %171, %170
  br label %173

173:                                              ; preds = %120, %130, %154
  %174 = phi i32 [ %143, %130 ], [ %172, %154 ], [ %127, %120 ]
  store i32 %174, ptr %44, align 4, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %69, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %175 = add i32 %113, -1
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %46, i64 %176
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 4
  %179 = load i32, ptr %178, align 4, !tbaa !44
  %180 = icmp ugt i32 %179, %38
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = load i32, ptr %177, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  br label %1182

183:                                              ; preds = %173, %183
  %184 = phi i64 [ %197, %183 ], [ 1, %173 ]
  %185 = phi i64 [ %198, %183 ], [ 0, %173 ]
  %186 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %184
  store i32 1073741824, ptr %186, align 4, !tbaa !43
  %187 = getelementptr inbounds nuw i8, ptr %186, i64 8
  store i32 0, ptr %187, align 4, !tbaa !36
  %188 = trunc nuw nsw i64 %184 to i32
  %189 = add i32 %188, %105
  %190 = getelementptr inbounds nuw i8, ptr %186, i64 12
  store i32 %189, ptr %190, align 4, !tbaa !38
  %191 = add nuw nsw i64 %184, 1
  %192 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %191
  store i32 1073741824, ptr %192, align 4, !tbaa !43
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 8
  store i32 0, ptr %193, align 4, !tbaa !36
  %194 = trunc nuw nsw i64 %191 to i32
  %195 = add i32 %194, %105
  %196 = getelementptr inbounds nuw i8, ptr %192, i64 12
  store i32 %195, ptr %196, align 4, !tbaa !38
  %197 = add nuw nsw i64 %184, 2
  %198 = add i64 %185, 2
  %199 = icmp eq i64 %198, %96
  br i1 %199, label %200, label %183, !llvm.loop !47

200:                                              ; preds = %183
  br i1 %97, label %207, label %201

201:                                              ; preds = %200
  %202 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %197
  store i32 1073741824, ptr %202, align 4, !tbaa !43
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 8
  store i32 0, ptr %203, align 4, !tbaa !36
  %204 = trunc nuw nsw i64 %197 to i32
  %205 = add i32 %204, %105
  %206 = getelementptr inbounds nuw i8, ptr %202, i64 12
  store i32 %205, ptr %206, align 4, !tbaa !38
  br label %207

207:                                              ; preds = %200, %201
  %208 = zext i32 %113 to i64
  br label %209

209:                                              ; preds = %207, %324
  %210 = phi i64 [ 0, %207 ], [ %326, %324 ]
  %211 = phi i32 [ %40, %207 ], [ %325, %324 ]
  %212 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %46, i64 %210
  %213 = load i32, ptr %212, align 4, !tbaa !46
  %214 = getelementptr inbounds nuw i8, ptr %212, i64 4
  %215 = load i32, ptr %214, align 4, !tbaa !44
  %216 = icmp ugt i32 %211, %215
  br i1 %216, label %324, label %217

217:                                              ; preds = %209
  %218 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %213, i1 true)
  %219 = xor i32 %218, 31
  %220 = load i32, ptr %66, align 8, !tbaa !39
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %249

222:                                              ; preds = %217, %245
  %223 = phi i32 [ %247, %245 ], [ %211, %217 ]
  %224 = add i32 %223, -2
  %225 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %224, i1 true)
  %226 = xor i32 %225, 31
  %227 = shl i32 %224, 8
  %228 = lshr i32 %227, %226
  %229 = add nuw nsw i32 %226, %219
  %230 = shl nuw nsw i32 %229, 8
  %231 = add i32 %228, 4096
  %232 = add i32 %231, %230
  %233 = load i32, ptr %44, align 4, !tbaa !43
  %234 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %233, i32 %232), !nosanitize !48
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !48
  br i1 %235, label %299, label %236, !prof !49, !nosanitize !48

236:                                              ; preds = %222
  %237 = extractvalue { i32, i1 } %234, 0, !nosanitize !48
  %238 = zext i32 %223 to i64
  %239 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %238
  %240 = getelementptr inbounds nuw i8, ptr %239, i64 8
  store i32 %223, ptr %240, align 4, !tbaa !36
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 4
  store i32 %213, ptr %241, align 4, !tbaa !50
  %242 = getelementptr inbounds nuw i8, ptr %239, i64 12
  store i32 0, ptr %242, align 4, !tbaa !38
  %243 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %237, i32 256), !nosanitize !48
  %244 = extractvalue { i32, i1 } %243, 1, !nosanitize !48
  br i1 %244, label %299, label %245, !prof !49, !nosanitize !48

245:                                              ; preds = %236
  %246 = extractvalue { i32, i1 } %243, 0, !nosanitize !48
  store i32 %246, ptr %239, align 4, !tbaa !43
  %247 = add i32 %223, 1
  %248 = icmp ugt i32 %247, %215
  br i1 %248, label %324, label %222, !llvm.loop !51

249:                                              ; preds = %217
  %250 = zext nneg i32 %219 to i64
  %251 = load i32, ptr %70, align 4, !tbaa !52
  %252 = load ptr, ptr %71, align 8, !tbaa !53
  %253 = getelementptr inbounds nuw i32, ptr %252, i64 %250
  %254 = load i32, ptr %72, align 8, !tbaa !54
  %255 = load ptr, ptr %73, align 8, !tbaa !55
  %256 = add i32 %251, 51
  %257 = add i32 %256, %254
  br label %258

258:                                              ; preds = %249, %320
  %259 = phi i32 [ %211, %249 ], [ %322, %320 ]
  %260 = add i32 %259, -3
  %261 = load i32, ptr %253, align 4, !tbaa !25
  %262 = add i32 %261, 1
  %263 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %262, i1 true)
  %264 = xor i32 %263, 31
  %265 = shl i32 %262, 8
  %266 = lshr i32 %265, %264
  %267 = icmp ugt i32 %260, 127
  br i1 %267, label %268, label %271

268:                                              ; preds = %258
  %269 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %260, i1 true)
  %270 = sub nuw nsw i32 67, %269
  br label %276

271:                                              ; preds = %258
  %272 = zext nneg i32 %260 to i64
  %273 = getelementptr inbounds nuw [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !42
  %275 = zext i8 %274 to i32
  br label %276

276:                                              ; preds = %268, %271
  %277 = phi i32 [ %270, %268 ], [ %275, %271 ]
  %278 = zext nneg i32 %277 to i64
  %279 = getelementptr inbounds nuw [53 x i8], ptr @ML_bits, i64 0, i64 %278
  %280 = load i8, ptr %279, align 1, !tbaa !42
  %281 = zext i8 %280 to i32
  %282 = getelementptr inbounds nuw i32, ptr %255, i64 %278
  %283 = load i32, ptr %282, align 4, !tbaa !25
  %284 = add i32 %283, 1
  %285 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %284, i1 true)
  %286 = xor i32 %285, 31
  %287 = shl i32 %284, 8
  %288 = lshr i32 %287, %286
  %289 = add nuw nsw i32 %219, %281
  %290 = add nuw nsw i32 %264, %286
  %291 = sub nsw i32 %289, %290
  %292 = shl nsw i32 %291, 8
  %293 = add i32 %266, %288
  %294 = sub i32 %257, %293
  %295 = add i32 %294, %292
  %296 = load i32, ptr %44, align 4, !tbaa !43
  %297 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %296, i32 %295), !nosanitize !48
  %298 = extractvalue { i32, i1 } %297, 1, !nosanitize !48
  br i1 %298, label %299, label %300, !prof !49, !nosanitize !48

299:                                              ; preds = %617, %623, %551, %555, %891, %762, %614, %607, %548, %489, %369, %276, %300, %236, %222, %1056, %946
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !48
  unreachable, !nosanitize !48

300:                                              ; preds = %276
  %301 = extractvalue { i32, i1 } %297, 0, !nosanitize !48
  %302 = zext i32 %259 to i64
  %303 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %302
  %304 = getelementptr inbounds nuw i8, ptr %303, i64 8
  store i32 %259, ptr %304, align 4, !tbaa !36
  %305 = getelementptr inbounds nuw i8, ptr %303, i64 4
  store i32 %213, ptr %305, align 4, !tbaa !50
  %306 = getelementptr inbounds nuw i8, ptr %303, i64 12
  store i32 0, ptr %306, align 4, !tbaa !38
  %307 = load i32, ptr %67, align 4, !tbaa !40
  %308 = load ptr, ptr %68, align 8, !tbaa !41
  %309 = load i32, ptr %308, align 4, !tbaa !25
  %310 = add i32 %309, 1
  %311 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %310, i1 true)
  %312 = xor i32 %311, 31
  %313 = shl i32 %310, 8
  %314 = lshr i32 %313, %312
  %315 = shl nuw nsw i32 %312, 8
  %316 = add i32 %314, %315
  %317 = sub i32 %307, %316
  %318 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %301, i32 %317), !nosanitize !48
  %319 = extractvalue { i32, i1 } %318, 1, !nosanitize !48
  br i1 %319, label %299, label %320, !prof !49, !nosanitize !48

320:                                              ; preds = %300
  %321 = extractvalue { i32, i1 } %318, 0, !nosanitize !48
  store i32 %321, ptr %303, align 4, !tbaa !43
  %322 = add i32 %259, 1
  %323 = icmp ugt i32 %322, %215
  br i1 %323, label %324, label %258, !llvm.loop !51

324:                                              ; preds = %320, %245, %209
  %325 = phi i32 [ %211, %209 ], [ %247, %245 ], [ %322, %320 ]
  %326 = add nuw nsw i64 %210, 1
  %327 = icmp eq i64 %326, %208
  br i1 %327, label %328, label %209, !llvm.loop !56

328:                                              ; preds = %324
  %329 = add i32 %325, -1
  %330 = zext i32 %325 to i64
  %331 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %330
  store i32 1073741824, ptr %331, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  %332 = icmp eq i32 %329, 0
  br i1 %332, label %1149, label %333

333:                                              ; preds = %328, %1145
  %334 = phi i32 [ %1147, %1145 ], [ 1, %328 ]
  %335 = phi i32 [ %1146, %1145 ], [ %329, %328 ]
  %336 = zext i32 %334 to i64
  %337 = getelementptr inbounds nuw i8, ptr %99, i64 %336
  %338 = add i32 %334, -1
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %339
  %341 = getelementptr inbounds nuw i8, ptr %340, i64 12
  %342 = load i32, ptr %341, align 4, !tbaa !38
  %343 = add i32 %342, 1
  %344 = load i32, ptr %340, align 4, !tbaa !43
  %345 = getelementptr inbounds i8, ptr %337, i64 -1
  %346 = load i32, ptr %74, align 8, !tbaa !57
  %347 = icmp eq i32 %346, 2
  br i1 %347, label %369, label %348

348:                                              ; preds = %333
  %349 = load i32, ptr %66, align 8, !tbaa !39
  %350 = icmp eq i32 %349, 1
  br i1 %350, label %369, label %351

351:                                              ; preds = %348
  %352 = load i32, ptr %75, align 8, !tbaa !58
  %353 = add i32 %352, -256
  %354 = load ptr, ptr %15, align 8, !tbaa !59
  %355 = load i8, ptr %345, align 1, !tbaa !42
  %356 = zext i8 %355 to i64
  %357 = getelementptr inbounds nuw i32, ptr %354, i64 %356
  %358 = load i32, ptr %357, align 4, !tbaa !25
  %359 = add i32 %358, 1
  %360 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %359, i1 true)
  %361 = xor i32 %360, 31
  %362 = shl nuw nsw i32 %361, 8
  %363 = shl i32 %359, 8
  %364 = lshr i32 %363, %361
  %365 = add i32 %362, %364
  %366 = icmp ugt i32 %365, %353
  %367 = sub i32 %352, %365
  %368 = select i1 %366, i32 256, i32 %367, !prof !60
  br label %369

369:                                              ; preds = %333, %348, %351
  %370 = phi i32 [ 2048, %333 ], [ 1536, %348 ], [ %368, %351 ]
  %371 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %344, i32 %370), !nosanitize !48
  %372 = extractvalue { i32, i1 } %371, 0, !nosanitize !48
  %373 = extractvalue { i32, i1 } %371, 1, !nosanitize !48
  br i1 %373, label %299, label %374, !prof !49, !nosanitize !48

374:                                              ; preds = %369
  %375 = load i32, ptr %66, align 8, !tbaa !39
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %403, label %377

377:                                              ; preds = %374
  %378 = icmp eq i32 %343, 131072
  br i1 %378, label %379, label %393

379:                                              ; preds = %377
  %380 = load i32, ptr %67, align 4, !tbaa !40
  %381 = load ptr, ptr %68, align 8, !tbaa !41
  %382 = getelementptr inbounds nuw i8, ptr %381, i64 140
  %383 = load i32, ptr %382, align 4, !tbaa !25
  %384 = add i32 %383, 1
  %385 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %384, i1 true)
  %386 = xor i32 %385, 31
  %387 = shl i32 %384, 8
  %388 = lshr i32 %387, %386
  %389 = add i32 %380, 4352
  %390 = shl nuw nsw i32 %386, 8
  %391 = add i32 %388, %390
  %392 = sub i32 %389, %391
  br label %452

393:                                              ; preds = %377
  %394 = icmp ugt i32 %343, 63
  br i1 %394, label %395, label %398

395:                                              ; preds = %393
  %396 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %343, i1 true)
  %397 = sub nuw nsw i32 50, %396
  br label %417

398:                                              ; preds = %393
  %399 = zext nneg i32 %343 to i64
  %400 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %399
  %401 = load i8, ptr %400, align 1, !tbaa !42
  %402 = zext i8 %401 to i32
  br label %417

403:                                              ; preds = %374
  %404 = add i32 %342, 2
  %405 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %404, i1 true)
  %406 = xor i32 %405, 31
  %407 = shl nuw nsw i32 %406, 8
  %408 = shl i32 %404, 8
  %409 = lshr i32 %408, %406
  %410 = add i32 %407, %409
  %411 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %343, i1 true)
  %412 = xor i32 %411, 31
  %413 = shl nuw nsw i32 %412, 8
  %414 = shl i32 %343, 8
  %415 = lshr i32 %414, %412
  %416 = add i32 %413, %415
  br label %483

417:                                              ; preds = %395, %398
  %418 = phi i32 [ %397, %395 ], [ %402, %398 ]
  %419 = zext nneg i32 %418 to i64
  %420 = getelementptr inbounds nuw [36 x i8], ptr @LL_bits, i64 0, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !42
  %422 = zext i8 %421 to i32
  %423 = shl nuw nsw i32 %422, 8
  %424 = load i32, ptr %67, align 4, !tbaa !40
  %425 = add i32 %423, %424
  %426 = load ptr, ptr %68, align 8, !tbaa !41
  %427 = getelementptr inbounds nuw i32, ptr %426, i64 %419
  %428 = load i32, ptr %427, align 4, !tbaa !25
  %429 = add i32 %428, 1
  %430 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %429, i1 true)
  %431 = xor i32 %430, 31
  %432 = mul nsw i32 %431, -256
  %433 = shl i32 %429, 8
  %434 = lshr i32 %433, %431
  %435 = sub i32 %432, %434
  %436 = add i32 %425, %435
  %437 = icmp eq i32 %342, 131072
  br i1 %437, label %438, label %450

438:                                              ; preds = %417
  %439 = getelementptr inbounds nuw i8, ptr %426, i64 140
  %440 = load i32, ptr %439, align 4, !tbaa !25
  %441 = add i32 %440, 1
  %442 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %441, i1 true)
  %443 = xor i32 %442, 31
  %444 = shl i32 %441, 8
  %445 = lshr i32 %444, %443
  %446 = add i32 %424, 4352
  %447 = shl nuw nsw i32 %443, 8
  %448 = add i32 %445, %447
  %449 = sub i32 %446, %448
  br label %483

450:                                              ; preds = %417
  %451 = icmp ugt i32 %342, 63
  br i1 %451, label %452, label %458

452:                                              ; preds = %379, %450
  %453 = phi ptr [ %381, %379 ], [ %426, %450 ]
  %454 = phi i32 [ %380, %379 ], [ %424, %450 ]
  %455 = phi i32 [ %392, %379 ], [ %436, %450 ]
  %456 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %342, i1 true)
  %457 = sub nuw nsw i32 50, %456
  br label %463

458:                                              ; preds = %450
  %459 = zext nneg i32 %342 to i64
  %460 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %459
  %461 = load i8, ptr %460, align 1, !tbaa !42
  %462 = zext i8 %461 to i32
  br label %463

463:                                              ; preds = %458, %452
  %464 = phi ptr [ %453, %452 ], [ %426, %458 ]
  %465 = phi i32 [ %454, %452 ], [ %424, %458 ]
  %466 = phi i32 [ %455, %452 ], [ %436, %458 ]
  %467 = phi i32 [ %457, %452 ], [ %462, %458 ]
  %468 = zext nneg i32 %467 to i64
  %469 = getelementptr inbounds nuw [36 x i8], ptr @LL_bits, i64 0, i64 %468
  %470 = load i8, ptr %469, align 1, !tbaa !42
  %471 = zext i8 %470 to i32
  %472 = getelementptr inbounds nuw i32, ptr %464, i64 %468
  %473 = load i32, ptr %472, align 4, !tbaa !25
  %474 = add i32 %473, 1
  %475 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %474, i1 true)
  %476 = xor i32 %475, 31
  %477 = shl i32 %474, 8
  %478 = lshr i32 %477, %476
  %479 = sub nsw i32 %471, %476
  %480 = shl nsw i32 %479, 8
  %481 = sub i32 %465, %478
  %482 = add i32 %481, %480
  br label %483

483:                                              ; preds = %403, %438, %463
  %484 = phi i32 [ %436, %438 ], [ %466, %463 ], [ %410, %403 ]
  %485 = phi i32 [ %449, %438 ], [ %482, %463 ], [ %416, %403 ]
  %486 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %484, i32 %485), !nosanitize !48
  %487 = extractvalue { i32, i1 } %486, 1, !nosanitize !48
  br i1 %487, label %488, label %489, !prof !49, !nosanitize !48

488:                                              ; preds = %756, %601, %534, %483
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !48
  unreachable, !nosanitize !48

489:                                              ; preds = %483
  %490 = extractvalue { i32, i1 } %486, 0, !nosanitize !48
  %491 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %372, i32 %490), !nosanitize !48
  %492 = extractvalue { i32, i1 } %491, 0, !nosanitize !48
  %493 = extractvalue { i32, i1 } %491, 1, !nosanitize !48
  br i1 %493, label %299, label %494, !prof !49, !nosanitize !48

494:                                              ; preds = %489
  %495 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %336
  %496 = load i32, ptr %495, align 4, !tbaa !43
  %497 = icmp sgt i32 %492, %496
  br i1 %497, label %498, label %501

498:                                              ; preds = %494
  %499 = getelementptr inbounds nuw i8, ptr %495, i64 12
  %500 = load i32, ptr %499, align 4, !tbaa !38
  br label %821

501:                                              ; preds = %494
  %502 = getelementptr inbounds nuw i8, ptr %495, i64 4
  %503 = load i32, ptr %502, align 4, !tbaa !25
  %504 = getelementptr inbounds nuw i8, ptr %495, i64 8
  %505 = load i32, ptr %504, align 4, !tbaa !25
  %506 = getelementptr inbounds nuw i8, ptr %495, i64 12
  %507 = load i32, ptr %506, align 4, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %495, ptr noundef nonnull align 4 dereferenceable(28) %340, i64 28, i1 false), !tbaa.struct !61
  store i32 %343, ptr %506, align 4, !tbaa !38
  store i32 %492, ptr %495, align 4, !tbaa !43
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %821

509:                                              ; preds = %501
  %510 = load i32, ptr %66, align 8, !tbaa !39
  %511 = icmp eq i32 %510, 1
  br i1 %511, label %534, label %512

512:                                              ; preds = %509
  %513 = load i32, ptr %67, align 4, !tbaa !40
  %514 = load ptr, ptr %68, align 8, !tbaa !41
  %515 = getelementptr inbounds nuw i8, ptr %514, i64 4
  %516 = load i32, ptr %515, align 4, !tbaa !25
  %517 = add i32 %516, 1
  %518 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %517, i1 true)
  %519 = xor i32 %518, 31
  %520 = shl i32 %517, 8
  %521 = lshr i32 %520, %519
  %522 = shl nuw nsw i32 %519, 8
  %523 = add i32 %521, %522
  %524 = sub i32 %513, %523
  %525 = load i32, ptr %514, align 4, !tbaa !25
  %526 = add i32 %525, 1
  %527 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %526, i1 true)
  %528 = xor i32 %527, 31
  %529 = shl i32 %526, 8
  %530 = lshr i32 %529, %528
  %531 = shl nuw nsw i32 %528, 8
  %532 = add i32 %530, %531
  %533 = sub i32 %513, %532
  br label %534

534:                                              ; preds = %509, %512
  %535 = phi i32 [ %524, %512 ], [ 512, %509 ]
  %536 = phi i32 [ %533, %512 ], [ 256, %509 ]
  %537 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %535, i32 %536), !nosanitize !48
  %538 = extractvalue { i32, i1 } %537, 1, !nosanitize !48
  br i1 %538, label %488, label %539, !prof !49, !nosanitize !48

539:                                              ; preds = %534
  %540 = extractvalue { i32, i1 } %537, 0, !nosanitize !48
  %541 = icmp slt i32 %540, 0
  %542 = icmp ult ptr %337, %16
  %543 = select i1 %541, i1 %542, i1 false
  br i1 %543, label %544, label %821, !prof !98

544:                                              ; preds = %539
  %545 = load i32, ptr %74, align 8, !tbaa !57
  %546 = icmp eq i32 %545, 2
  br i1 %546, label %548, label %547

547:                                              ; preds = %544
  br i1 %511, label %551, label %555

548:                                              ; preds = %544
  %549 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %496, i32 2048), !nosanitize !48
  %550 = extractvalue { i32, i1 } %549, 1, !nosanitize !48
  br i1 %550, label %299, label %576, !prof !49, !nosanitize !48

551:                                              ; preds = %547
  %552 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %496, i32 1536), !nosanitize !48
  %553 = extractvalue { i32, i1 } %552, 0, !nosanitize !48
  %554 = extractvalue { i32, i1 } %552, 1, !nosanitize !48
  br i1 %554, label %299, label %601, !prof !49, !nosanitize !48

555:                                              ; preds = %547
  %556 = load i32, ptr %75, align 8, !tbaa !58
  %557 = add i32 %556, -256
  %558 = load ptr, ptr %15, align 8, !tbaa !59
  %559 = load i8, ptr %337, align 1, !tbaa !42
  %560 = zext i8 %559 to i64
  %561 = getelementptr inbounds nuw i32, ptr %558, i64 %560
  %562 = load i32, ptr %561, align 4, !tbaa !25
  %563 = add i32 %562, 1
  %564 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %563, i1 true)
  %565 = xor i32 %564, 31
  %566 = shl nuw nsw i32 %565, 8
  %567 = shl i32 %563, 8
  %568 = lshr i32 %567, %565
  %569 = add i32 %566, %568
  %570 = icmp ugt i32 %569, %557
  %571 = sub i32 %556, %569
  %572 = select i1 %570, i32 256, i32 %571, !prof !60
  %573 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %496, i32 %572), !nosanitize !48
  %574 = extractvalue { i32, i1 } %573, 0, !nosanitize !48
  %575 = extractvalue { i32, i1 } %573, 1, !nosanitize !48
  br i1 %575, label %299, label %578, !prof !49, !nosanitize !48

576:                                              ; preds = %548
  %577 = extractvalue { i32, i1 } %549, 0, !nosanitize !48
  br i1 %511, label %601, label %578

578:                                              ; preds = %555, %576
  %579 = phi i32 [ %577, %576 ], [ %574, %555 ]
  %580 = load i32, ptr %67, align 4, !tbaa !40
  %581 = load ptr, ptr %68, align 8, !tbaa !41
  %582 = getelementptr inbounds nuw i8, ptr %581, i64 4
  %583 = load i32, ptr %582, align 4, !tbaa !25
  %584 = add i32 %583, 1
  %585 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %584, i1 true)
  %586 = xor i32 %585, 31
  %587 = shl i32 %584, 8
  %588 = lshr i32 %587, %586
  %589 = shl nuw nsw i32 %586, 8
  %590 = add i32 %588, %589
  %591 = sub i32 %580, %590
  %592 = load i32, ptr %581, align 4, !tbaa !25
  %593 = add i32 %592, 1
  %594 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %593, i1 true)
  %595 = xor i32 %594, 31
  %596 = shl i32 %593, 8
  %597 = lshr i32 %596, %595
  %598 = shl nuw nsw i32 %595, 8
  %599 = add i32 %597, %598
  %600 = sub i32 %580, %599
  br label %601

601:                                              ; preds = %551, %576, %578
  %602 = phi i32 [ %591, %578 ], [ 512, %576 ], [ 512, %551 ]
  %603 = phi i32 [ %579, %578 ], [ %577, %576 ], [ %553, %551 ]
  %604 = phi i32 [ %600, %578 ], [ 256, %576 ], [ 256, %551 ]
  %605 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %602, i32 %604), !nosanitize !48
  %606 = extractvalue { i32, i1 } %605, 1, !nosanitize !48
  br i1 %606, label %488, label %607, !prof !49, !nosanitize !48

607:                                              ; preds = %601
  %608 = extractvalue { i32, i1 } %605, 0, !nosanitize !48
  %609 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %603, i32 %608), !nosanitize !48
  %610 = extractvalue { i32, i1 } %609, 0, !nosanitize !48
  %611 = extractvalue { i32, i1 } %609, 1, !nosanitize !48
  br i1 %611, label %299, label %612, !prof !49, !nosanitize !48

612:                                              ; preds = %607
  br i1 %546, label %614, label %613

613:                                              ; preds = %612
  br i1 %511, label %617, label %623

614:                                              ; preds = %612
  %615 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %492, i32 2048), !nosanitize !48
  %616 = extractvalue { i32, i1 } %615, 1, !nosanitize !48
  br i1 %616, label %299, label %646, !prof !49, !nosanitize !48

617:                                              ; preds = %613
  %618 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %492, i32 1536), !nosanitize !48
  %619 = extractvalue { i32, i1 } %618, 1, !nosanitize !48
  br i1 %619, label %299, label %620, !prof !49, !nosanitize !48

620:                                              ; preds = %617
  %621 = extractvalue { i32, i1 } %618, 0, !nosanitize !48
  %622 = add i32 %342, 2
  br label %696

623:                                              ; preds = %613
  %624 = load i32, ptr %75, align 8, !tbaa !58
  %625 = add i32 %624, -256
  %626 = load ptr, ptr %15, align 8, !tbaa !59
  %627 = load i8, ptr %337, align 1, !tbaa !42
  %628 = zext i8 %627 to i64
  %629 = getelementptr inbounds nuw i32, ptr %626, i64 %628
  %630 = load i32, ptr %629, align 4, !tbaa !25
  %631 = add i32 %630, 1
  %632 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %631, i1 true)
  %633 = xor i32 %632, 31
  %634 = shl nuw nsw i32 %633, 8
  %635 = shl i32 %631, 8
  %636 = lshr i32 %635, %633
  %637 = add i32 %634, %636
  %638 = icmp ugt i32 %637, %625
  %639 = sub i32 %624, %637
  %640 = select i1 %638, i32 256, i32 %639, !prof !60
  %641 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %492, i32 %640), !nosanitize !48
  %642 = extractvalue { i32, i1 } %641, 1, !nosanitize !48
  br i1 %642, label %299, label %643, !prof !49, !nosanitize !48

643:                                              ; preds = %623
  %644 = extractvalue { i32, i1 } %641, 0, !nosanitize !48
  %645 = add i32 %342, 2
  br label %649

646:                                              ; preds = %614
  %647 = extractvalue { i32, i1 } %615, 0, !nosanitize !48
  %648 = add i32 %342, 2
  br i1 %511, label %696, label %649

649:                                              ; preds = %643, %646
  %650 = phi i32 [ %645, %643 ], [ %648, %646 ]
  %651 = phi i32 [ %644, %643 ], [ %647, %646 ]
  %652 = icmp eq i32 %650, 131072
  br i1 %652, label %653, label %667

653:                                              ; preds = %649
  %654 = load i32, ptr %67, align 4, !tbaa !40
  %655 = load ptr, ptr %68, align 8, !tbaa !41
  %656 = getelementptr inbounds nuw i8, ptr %655, i64 140
  %657 = load i32, ptr %656, align 4, !tbaa !25
  %658 = add i32 %657, 1
  %659 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %658, i1 true)
  %660 = xor i32 %659, 31
  %661 = shl i32 %658, 8
  %662 = lshr i32 %661, %660
  %663 = add i32 %654, 4352
  %664 = shl nuw nsw i32 %660, 8
  %665 = add i32 %662, %664
  %666 = sub i32 %663, %665
  br label %712

667:                                              ; preds = %649
  %668 = icmp ugt i32 %650, 63
  br i1 %668, label %669, label %672

669:                                              ; preds = %667
  %670 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %650, i1 true)
  %671 = sub nuw nsw i32 50, %670
  br label %677

672:                                              ; preds = %667
  %673 = zext nneg i32 %650 to i64
  %674 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %673
  %675 = load i8, ptr %674, align 1, !tbaa !42
  %676 = zext i8 %675 to i32
  br label %677

677:                                              ; preds = %672, %669
  %678 = phi i32 [ %671, %669 ], [ %676, %672 ]
  %679 = zext nneg i32 %678 to i64
  %680 = getelementptr inbounds nuw [36 x i8], ptr @LL_bits, i64 0, i64 %679
  %681 = load i8, ptr %680, align 1, !tbaa !42
  %682 = zext i8 %681 to i32
  %683 = load i32, ptr %67, align 4, !tbaa !40
  %684 = load ptr, ptr %68, align 8, !tbaa !41
  %685 = getelementptr inbounds nuw i32, ptr %684, i64 %679
  %686 = load i32, ptr %685, align 4, !tbaa !25
  %687 = add i32 %686, 1
  %688 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %687, i1 true)
  %689 = xor i32 %688, 31
  %690 = shl i32 %687, 8
  %691 = lshr i32 %690, %689
  %692 = sub nsw i32 %682, %689
  %693 = shl nsw i32 %692, 8
  %694 = sub i32 %683, %691
  %695 = add i32 %694, %693
  br label %712

696:                                              ; preds = %620, %646
  %697 = phi i32 [ %622, %620 ], [ %648, %646 ]
  %698 = phi i32 [ %621, %620 ], [ %647, %646 ]
  %699 = add i32 %697, 1
  %700 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %699, i1 true)
  %701 = xor i32 %700, 31
  %702 = shl nuw nsw i32 %701, 8
  %703 = shl i32 %699, 8
  %704 = lshr i32 %703, %701
  %705 = add i32 %702, %704
  %706 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %697, i1 true)
  %707 = xor i32 %706, 31
  %708 = shl nuw nsw i32 %707, 8
  %709 = shl i32 %697, 8
  %710 = lshr i32 %709, %707
  %711 = add i32 %708, %710
  br label %756

712:                                              ; preds = %653, %677
  %713 = phi ptr [ %684, %677 ], [ %655, %653 ]
  %714 = phi i32 [ %683, %677 ], [ %654, %653 ]
  %715 = phi i32 [ %695, %677 ], [ %666, %653 ]
  %716 = icmp eq i32 %343, 131072
  br i1 %716, label %717, label %729

717:                                              ; preds = %712
  %718 = getelementptr inbounds nuw i8, ptr %713, i64 140
  %719 = load i32, ptr %718, align 4, !tbaa !25
  %720 = add i32 %719, 1
  %721 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %720, i1 true)
  %722 = xor i32 %721, 31
  %723 = shl i32 %720, 8
  %724 = lshr i32 %723, %722
  %725 = add i32 %714, 4352
  %726 = shl nuw nsw i32 %722, 8
  %727 = add i32 %724, %726
  %728 = sub i32 %725, %727
  br label %756

729:                                              ; preds = %712
  %730 = icmp ugt i32 %343, 63
  br i1 %730, label %731, label %734

731:                                              ; preds = %729
  %732 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %343, i1 true)
  %733 = sub nuw nsw i32 50, %732
  br label %739

734:                                              ; preds = %729
  %735 = zext nneg i32 %343 to i64
  %736 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %735
  %737 = load i8, ptr %736, align 1, !tbaa !42
  %738 = zext i8 %737 to i32
  br label %739

739:                                              ; preds = %734, %731
  %740 = phi i32 [ %733, %731 ], [ %738, %734 ]
  %741 = zext nneg i32 %740 to i64
  %742 = getelementptr inbounds nuw [36 x i8], ptr @LL_bits, i64 0, i64 %741
  %743 = load i8, ptr %742, align 1, !tbaa !42
  %744 = zext i8 %743 to i32
  %745 = getelementptr inbounds nuw i32, ptr %713, i64 %741
  %746 = load i32, ptr %745, align 4, !tbaa !25
  %747 = add i32 %746, 1
  %748 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %747, i1 true)
  %749 = xor i32 %748, 31
  %750 = shl i32 %747, 8
  %751 = lshr i32 %750, %749
  %752 = sub nsw i32 %744, %749
  %753 = shl nsw i32 %752, 8
  %754 = sub i32 %714, %751
  %755 = add i32 %754, %753
  br label %756

756:                                              ; preds = %696, %717, %739
  %757 = phi i32 [ %715, %717 ], [ %715, %739 ], [ %705, %696 ]
  %758 = phi i32 [ %651, %717 ], [ %651, %739 ], [ %698, %696 ]
  %759 = phi i32 [ %728, %717 ], [ %755, %739 ], [ %711, %696 ]
  %760 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %757, i32 %759), !nosanitize !48
  %761 = extractvalue { i32, i1 } %760, 1, !nosanitize !48
  br i1 %761, label %488, label %762, !prof !49, !nosanitize !48

762:                                              ; preds = %756
  %763 = extractvalue { i32, i1 } %760, 0, !nosanitize !48
  %764 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %758, i32 %763), !nosanitize !48
  %765 = extractvalue { i32, i1 } %764, 1, !nosanitize !48
  br i1 %765, label %299, label %766, !prof !49, !nosanitize !48

766:                                              ; preds = %762
  %767 = extractvalue { i32, i1 } %764, 0, !nosanitize !48
  %768 = icmp slt i32 %610, %767
  br i1 %768, label %769, label %821

769:                                              ; preds = %766
  %770 = add i32 %334, 1
  %771 = zext i32 %770 to i64
  %772 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %771
  %773 = load i32, ptr %772, align 4, !tbaa !43
  %774 = icmp slt i32 %610, %773
  br i1 %774, label %775, label %821

775:                                              ; preds = %769
  %776 = sub i32 %334, %505
  %777 = zext i32 %776 to i64
  %778 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %777
  %779 = getelementptr inbounds nuw i8, ptr %778, i64 16
  %780 = getelementptr inbounds nuw i8, ptr %778, i64 12
  %781 = load i32, ptr %780, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull readonly align 4 dereferenceable(12) %779, i64 12, i1 false)
  %782 = icmp ugt i32 %503, 3
  br i1 %782, label %783, label %787

783:                                              ; preds = %775
  %784 = load i32, ptr %77, align 4, !tbaa !25
  %785 = load i32, ptr %9, align 8, !tbaa !25
  store i32 %785, ptr %77, align 4, !tbaa !25
  %786 = add i32 %503, -3
  br label %809

787:                                              ; preds = %775
  %788 = icmp eq i32 %781, 0
  %789 = zext i1 %788 to i32
  %790 = add nsw i32 %503, -1
  %791 = add nsw i32 %790, %789
  switch i32 %791, label %797 [
    i32 0, label %792
    i32 3, label %794
  ]

792:                                              ; preds = %787
  %793 = load i32, ptr %76, align 8
  br label %812

794:                                              ; preds = %787
  %795 = load i32, ptr %9, align 8, !tbaa !25
  %796 = add i32 %795, -1
  br label %802

797:                                              ; preds = %787
  %798 = zext i32 %791 to i64
  %799 = getelementptr inbounds nuw i32, ptr %9, i64 %798
  %800 = load i32, ptr %799, align 4, !tbaa !25
  %801 = load i32, ptr %9, align 8, !tbaa !25
  br label %802

802:                                              ; preds = %797, %794
  %803 = phi i32 [ %795, %794 ], [ %801, %797 ]
  %804 = phi i32 [ %796, %794 ], [ %800, %797 ]
  %805 = icmp eq i32 %791, 1
  %806 = load i32, ptr %76, align 8
  %807 = load i32, ptr %77, align 4
  %808 = select i1 %805, i32 %806, i32 %807
  store i32 %803, ptr %77, align 4, !tbaa !25
  br label %809

809:                                              ; preds = %802, %783
  %810 = phi i32 [ %808, %802 ], [ %784, %783 ]
  %811 = phi i32 [ %804, %802 ], [ %786, %783 ]
  store i32 %811, ptr %9, align 8, !tbaa !25
  br label %812

812:                                              ; preds = %792, %809
  %813 = phi i32 [ %793, %792 ], [ %810, %809 ]
  %814 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9)
  %815 = getelementptr inbounds nuw i8, ptr %772, i64 4
  store i32 %503, ptr %815, align 4, !tbaa !25
  %816 = getelementptr inbounds nuw i8, ptr %772, i64 8
  store i32 %505, ptr %816, align 4, !tbaa !25
  %817 = getelementptr inbounds nuw i8, ptr %772, i64 12
  %818 = getelementptr inbounds nuw i8, ptr %772, i64 16
  store i64 %814, ptr %818, align 4
  %819 = getelementptr inbounds nuw i8, ptr %772, i64 24
  store i32 %813, ptr %819, align 4
  store i32 1, ptr %817, align 4, !tbaa !38
  store i32 %610, ptr %772, align 4, !tbaa !43
  %820 = call i32 @llvm.umax.i32(i32 %335, i32 %770)
  br label %821

821:                                              ; preds = %501, %539, %766, %769, %812, %498
  %822 = phi i32 [ %496, %498 ], [ %492, %812 ], [ %492, %769 ], [ %492, %766 ], [ %492, %539 ], [ %492, %501 ]
  %823 = phi i32 [ %500, %498 ], [ %343, %812 ], [ %343, %769 ], [ %343, %766 ], [ %343, %539 ], [ %343, %501 ]
  %824 = phi i32 [ %335, %498 ], [ %820, %812 ], [ %335, %769 ], [ %335, %766 ], [ %335, %539 ], [ %335, %501 ]
  %825 = icmp eq i32 %823, 0
  br i1 %825, label %826, label %872

826:                                              ; preds = %821
  %827 = getelementptr inbounds nuw i8, ptr %495, i64 8
  %828 = load i32, ptr %827, align 4, !tbaa !36
  %829 = sub i32 %334, %828
  %830 = zext i32 %829 to i64
  %831 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %830
  %832 = getelementptr inbounds nuw i8, ptr %831, i64 16
  %833 = getelementptr inbounds nuw i8, ptr %495, i64 4
  %834 = load i32, ptr %833, align 4, !tbaa !50
  %835 = getelementptr inbounds nuw i8, ptr %831, i64 12
  %836 = load i32, ptr %835, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull readonly align 4 dereferenceable(12) %832, i64 12, i1 false)
  %837 = icmp ugt i32 %834, 3
  br i1 %837, label %838, label %842

838:                                              ; preds = %826
  %839 = load i32, ptr %79, align 4, !tbaa !25
  %840 = load i32, ptr %8, align 8, !tbaa !25
  store i32 %840, ptr %79, align 4, !tbaa !25
  %841 = add i32 %834, -3
  br label %864

842:                                              ; preds = %826
  %843 = icmp eq i32 %836, 0
  %844 = zext i1 %843 to i32
  %845 = add nsw i32 %834, -1
  %846 = add nsw i32 %845, %844
  switch i32 %846, label %852 [
    i32 0, label %847
    i32 3, label %849
  ]

847:                                              ; preds = %842
  %848 = load i32, ptr %78, align 8
  br label %867

849:                                              ; preds = %842
  %850 = load i32, ptr %8, align 8, !tbaa !25
  %851 = add i32 %850, -1
  br label %857

852:                                              ; preds = %842
  %853 = zext i32 %846 to i64
  %854 = getelementptr inbounds nuw i32, ptr %8, i64 %853
  %855 = load i32, ptr %854, align 4, !tbaa !25
  %856 = load i32, ptr %8, align 8, !tbaa !25
  br label %857

857:                                              ; preds = %852, %849
  %858 = phi i32 [ %850, %849 ], [ %856, %852 ]
  %859 = phi i32 [ %851, %849 ], [ %855, %852 ]
  %860 = icmp eq i32 %846, 1
  %861 = load i32, ptr %78, align 8
  %862 = load i32, ptr %79, align 4
  %863 = select i1 %860, i32 %861, i32 %862
  store i32 %858, ptr %79, align 4, !tbaa !25
  br label %864

864:                                              ; preds = %857, %838
  %865 = phi i32 [ %863, %857 ], [ %839, %838 ]
  %866 = phi i32 [ %859, %857 ], [ %841, %838 ]
  store i32 %866, ptr %8, align 8, !tbaa !25
  br label %867

867:                                              ; preds = %847, %864
  %868 = phi i32 [ %848, %847 ], [ %865, %864 ]
  %869 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8)
  %870 = getelementptr inbounds nuw i8, ptr %495, i64 16
  store i64 %869, ptr %870, align 4
  %871 = getelementptr inbounds nuw i8, ptr %495, i64 24
  store i32 %868, ptr %871, align 4
  br label %872

872:                                              ; preds = %867, %821
  %873 = icmp ugt ptr %337, %17
  br i1 %873, label %1145, label %874

874:                                              ; preds = %872
  %875 = icmp eq i32 %334, %824
  br i1 %875, label %1149, label %876

876:                                              ; preds = %874
  %877 = load i32, ptr %66, align 8, !tbaa !39
  %878 = icmp eq i32 %877, 1
  br i1 %878, label %891, label %879

879:                                              ; preds = %876
  %880 = load i32, ptr %67, align 4, !tbaa !40
  %881 = load ptr, ptr %68, align 8, !tbaa !41
  %882 = load i32, ptr %881, align 4, !tbaa !25
  %883 = add i32 %882, 1
  %884 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %883, i1 true)
  %885 = xor i32 %884, 31
  %886 = shl i32 %883, 8
  %887 = lshr i32 %886, %885
  %888 = shl nuw nsw i32 %885, 8
  %889 = add i32 %887, %888
  %890 = sub i32 %880, %889
  br label %891

891:                                              ; preds = %876, %879
  %892 = phi i32 [ %890, %879 ], [ 256, %876 ]
  %893 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %822, i32 %892), !nosanitize !48
  %894 = extractvalue { i32, i1 } %893, 0, !nosanitize !48
  %895 = extractvalue { i32, i1 } %893, 1, !nosanitize !48
  br i1 %895, label %299, label %896, !prof !49, !nosanitize !48

896:                                              ; preds = %891
  %897 = zext i1 %825 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #12
  %898 = getelementptr inbounds nuw i8, ptr %495, i64 16
  %899 = call i32 %35(ptr noundef %46, ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %337, ptr noundef %16, ptr noundef nonnull %898, i32 noundef %897, i32 noundef %40) #12
  store i32 %899, ptr %14, align 4, !tbaa !25
  %900 = ptrtoint ptr %337 to i64
  %901 = sub i64 %900, %56
  %902 = trunc i64 %901 to i32
  %903 = sub i64 %57, %900
  %904 = trunc i64 %903 to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %12, ptr noundef %46, ptr noundef %14, i32 noundef %902, i32 noundef %904, i32 noundef %40)
  %905 = load i32, ptr %14, align 4, !tbaa !25
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %907, label %908

907:                                              ; preds = %896
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  br label %1145

908:                                              ; preds = %896
  %909 = add i32 %905, -1
  %910 = zext i32 %909 to i64
  %911 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %46, i64 %910, i32 1
  %912 = load i32, ptr %911, align 4, !tbaa !44
  %913 = icmp ule i32 %912, %38
  %914 = add i32 %912, %334
  %915 = icmp ult i32 %914, 4096
  %916 = and i1 %913, %915
  %917 = zext nneg i32 %912 to i64
  %918 = getelementptr inbounds nuw i8, ptr %337, i64 %917
  %919 = icmp ult ptr %918, %16
  %920 = select i1 %916, i1 %919, i1 false
  br i1 %920, label %921, label %1163

921:                                              ; preds = %908
  %922 = zext i32 %905 to i64
  br label %923

923:                                              ; preds = %921, %1137
  %924 = phi i64 [ 0, %921 ], [ %1139, %1137 ]
  %925 = phi i32 [ %824, %921 ], [ %1138, %1137 ]
  %926 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %46, i64 %924
  %927 = load i32, ptr %926, align 4, !tbaa !46
  %928 = getelementptr inbounds nuw i8, ptr %926, i64 4
  %929 = load i32, ptr %928, align 4, !tbaa !44
  %930 = icmp eq i64 %924, 0
  br i1 %930, label %936, label %931

931:                                              ; preds = %923
  %932 = add nsw i64 %924, -1
  %933 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %46, i64 %932, i32 1
  %934 = load i32, ptr %933, align 4, !tbaa !44
  %935 = add i32 %934, 1
  br label %936

936:                                              ; preds = %931, %923
  %937 = phi i32 [ %935, %931 ], [ %40, %923 ]
  %938 = icmp ult i32 %929, %937
  br i1 %938, label %1137, label %939

939:                                              ; preds = %936
  %940 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %927, i1 true)
  %941 = xor i32 %940, 31
  %942 = load i32, ptr %66, align 8, !tbaa !39
  %943 = icmp eq i32 %942, 1
  br i1 %943, label %944, label %1023

944:                                              ; preds = %939
  %945 = add i32 %334, %929
  br label %946

946:                                              ; preds = %944, %1003
  %947 = phi i32 [ 0, %944 ], [ %1007, %1003 ]
  %948 = phi i32 [ %925, %944 ], [ %1004, %1003 ]
  %949 = phi i32 [ %929, %944 ], [ %1005, %1003 ]
  %950 = sub i32 %945, %947
  %951 = zext i32 %950 to i64
  %952 = add i32 %949, %334
  %953 = add i32 %949, -2
  %954 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %953, i1 true)
  %955 = xor i32 %954, 31
  %956 = shl i32 %953, 8
  %957 = lshr i32 %956, %955
  %958 = add nuw nsw i32 %955, %941
  %959 = shl nuw nsw i32 %958, 8
  %960 = add i32 %957, 4096
  %961 = add i32 %960, %959
  %962 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %894, i32 %961), !nosanitize !48
  %963 = extractvalue { i32, i1 } %962, 0, !nosanitize !48
  %964 = extractvalue { i32, i1 } %962, 1, !nosanitize !48
  br i1 %964, label %299, label %965, !prof !49, !nosanitize !48

965:                                              ; preds = %946
  %966 = icmp ugt i32 %952, %948
  br i1 %966, label %974, label %967

967:                                              ; preds = %965
  %968 = zext i32 %952 to i64
  %969 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %968
  %970 = load i32, ptr %969, align 4, !tbaa !43
  %971 = icmp slt i32 %963, %970
  br i1 %971, label %972, label %1003

972:                                              ; preds = %967
  %973 = zext i32 %952 to i64
  br label %996

974:                                              ; preds = %965
  %975 = zext i32 %948 to i64
  %976 = zext i32 %952 to i64
  %977 = sub nsw i64 %951, %975
  %978 = and i64 %977, 3
  %979 = icmp eq i64 %978, 0
  br i1 %979, label %988, label %980

980:                                              ; preds = %974, %980
  %981 = phi i64 [ %983, %980 ], [ %975, %974 ]
  %982 = phi i64 [ %986, %980 ], [ 0, %974 ]
  %983 = add nuw nsw i64 %981, 1
  %984 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %983
  store i32 1073741824, ptr %984, align 4, !tbaa !43
  %985 = getelementptr inbounds nuw i8, ptr %984, i64 12
  store i32 1, ptr %985, align 4, !tbaa !38
  %986 = add i64 %982, 1
  %987 = icmp eq i64 %986, %978
  br i1 %987, label %988, label %980, !llvm.loop !99

988:                                              ; preds = %980, %974
  %989 = phi i64 [ %975, %974 ], [ %983, %980 ]
  %990 = phi i64 [ poison, %974 ], [ %983, %980 ]
  %991 = sub nsw i64 %975, %951
  %992 = icmp ugt i64 %991, -4
  br i1 %992, label %993, label %1008

993:                                              ; preds = %1008, %988
  %994 = phi i64 [ %990, %988 ], [ %1019, %1008 ]
  %995 = trunc nuw i64 %994 to i32
  br label %996

996:                                              ; preds = %972, %993
  %997 = phi i64 [ %973, %972 ], [ %976, %993 ]
  %998 = phi i32 [ %948, %972 ], [ %995, %993 ]
  %999 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %997
  %1000 = getelementptr inbounds nuw i8, ptr %999, i64 8
  store i32 %949, ptr %1000, align 4, !tbaa !36
  %1001 = getelementptr inbounds nuw i8, ptr %999, i64 4
  store i32 %927, ptr %1001, align 4, !tbaa !50
  %1002 = getelementptr inbounds nuw i8, ptr %999, i64 12
  store i32 0, ptr %1002, align 4, !tbaa !38
  store i32 %963, ptr %999, align 4, !tbaa !43
  br label %1003

1003:                                             ; preds = %996, %967
  %1004 = phi i32 [ %998, %996 ], [ %948, %967 ]
  %1005 = add i32 %949, -1
  %1006 = icmp ult i32 %1005, %937
  %1007 = add i32 %947, 1
  br i1 %1006, label %1137, label %946, !llvm.loop !64

1008:                                             ; preds = %988, %1008
  %1009 = phi i64 [ %1019, %1008 ], [ %989, %988 ]
  %1010 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1009
  %1011 = getelementptr inbounds nuw i8, ptr %1010, i64 28
  store i32 1073741824, ptr %1011, align 4, !tbaa !43
  %1012 = getelementptr inbounds nuw i8, ptr %1010, i64 40
  store i32 1, ptr %1012, align 4, !tbaa !38
  %1013 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1009
  %1014 = getelementptr inbounds nuw i8, ptr %1013, i64 56
  store i32 1073741824, ptr %1014, align 4, !tbaa !43
  %1015 = getelementptr inbounds nuw i8, ptr %1013, i64 68
  store i32 1, ptr %1015, align 4, !tbaa !38
  %1016 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1009
  %1017 = getelementptr inbounds nuw i8, ptr %1016, i64 84
  store i32 1073741824, ptr %1017, align 4, !tbaa !43
  %1018 = getelementptr inbounds nuw i8, ptr %1016, i64 96
  store i32 1, ptr %1018, align 4, !tbaa !38
  %1019 = add nuw nsw i64 %1009, 4
  %1020 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1019
  store i32 1073741824, ptr %1020, align 4, !tbaa !43
  %1021 = getelementptr inbounds nuw i8, ptr %1020, i64 12
  store i32 1, ptr %1021, align 4, !tbaa !38
  %1022 = icmp samesign ult i64 %1019, %976
  br i1 %1022, label %1008, label %993, !llvm.loop !65

1023:                                             ; preds = %939
  %1024 = zext nneg i32 %941 to i64
  %1025 = load i32, ptr %70, align 4, !tbaa !52
  %1026 = load ptr, ptr %71, align 8, !tbaa !53
  %1027 = getelementptr inbounds nuw i32, ptr %1026, i64 %1024
  %1028 = load i32, ptr %72, align 8, !tbaa !54
  %1029 = load ptr, ptr %73, align 8, !tbaa !55
  %1030 = add i32 %1025, 51
  %1031 = add i32 %1030, %1028
  %1032 = add i32 %334, %929
  br label %1033

1033:                                             ; preds = %1023, %1132
  %1034 = phi i32 [ 0, %1023 ], [ %1136, %1132 ]
  %1035 = phi i32 [ %925, %1023 ], [ %1133, %1132 ]
  %1036 = phi i32 [ %929, %1023 ], [ %1134, %1132 ]
  %1037 = sub i32 %1032, %1034
  %1038 = zext i32 %1037 to i64
  %1039 = add i32 %1036, %334
  %1040 = add i32 %1036, -3
  %1041 = load i32, ptr %1027, align 4, !tbaa !25
  %1042 = add i32 %1041, 1
  %1043 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1042, i1 true)
  %1044 = xor i32 %1043, 31
  %1045 = shl i32 %1042, 8
  %1046 = lshr i32 %1045, %1044
  %1047 = icmp ugt i32 %1040, 127
  br i1 %1047, label %1048, label %1051

1048:                                             ; preds = %1033
  %1049 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1040, i1 true)
  %1050 = sub nuw nsw i32 67, %1049
  br label %1056

1051:                                             ; preds = %1033
  %1052 = zext nneg i32 %1040 to i64
  %1053 = getelementptr inbounds nuw [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %1052
  %1054 = load i8, ptr %1053, align 1, !tbaa !42
  %1055 = zext i8 %1054 to i32
  br label %1056

1056:                                             ; preds = %1048, %1051
  %1057 = phi i32 [ %1050, %1048 ], [ %1055, %1051 ]
  %1058 = zext nneg i32 %1057 to i64
  %1059 = getelementptr inbounds nuw [53 x i8], ptr @ML_bits, i64 0, i64 %1058
  %1060 = load i8, ptr %1059, align 1, !tbaa !42
  %1061 = zext i8 %1060 to i32
  %1062 = getelementptr inbounds nuw i32, ptr %1029, i64 %1058
  %1063 = load i32, ptr %1062, align 4, !tbaa !25
  %1064 = add i32 %1063, 1
  %1065 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1064, i1 true)
  %1066 = xor i32 %1065, 31
  %1067 = shl i32 %1064, 8
  %1068 = lshr i32 %1067, %1066
  %1069 = add nuw nsw i32 %941, %1061
  %1070 = add nuw nsw i32 %1044, %1066
  %1071 = sub nsw i32 %1069, %1070
  %1072 = shl nsw i32 %1071, 8
  %1073 = add i32 %1046, %1068
  %1074 = sub i32 %1031, %1073
  %1075 = add i32 %1074, %1072
  %1076 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %894, i32 %1075), !nosanitize !48
  %1077 = extractvalue { i32, i1 } %1076, 0, !nosanitize !48
  %1078 = extractvalue { i32, i1 } %1076, 1, !nosanitize !48
  br i1 %1078, label %299, label %1079, !prof !49, !nosanitize !48

1079:                                             ; preds = %1056
  %1080 = icmp ugt i32 %1039, %1035
  br i1 %1080, label %1088, label %1081

1081:                                             ; preds = %1079
  %1082 = zext i32 %1039 to i64
  %1083 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1082
  %1084 = load i32, ptr %1083, align 4, !tbaa !43
  %1085 = icmp slt i32 %1077, %1084
  br i1 %1085, label %1086, label %1132

1086:                                             ; preds = %1081
  %1087 = zext i32 %1039 to i64
  br label %1125

1088:                                             ; preds = %1079
  %1089 = zext i32 %1035 to i64
  %1090 = zext i32 %1039 to i64
  %1091 = sub nsw i64 %1038, %1089
  %1092 = and i64 %1091, 3
  %1093 = icmp eq i64 %1092, 0
  br i1 %1093, label %1102, label %1094

1094:                                             ; preds = %1088, %1094
  %1095 = phi i64 [ %1097, %1094 ], [ %1089, %1088 ]
  %1096 = phi i64 [ %1100, %1094 ], [ 0, %1088 ]
  %1097 = add nuw nsw i64 %1095, 1
  %1098 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1097
  store i32 1073741824, ptr %1098, align 4, !tbaa !43
  %1099 = getelementptr inbounds nuw i8, ptr %1098, i64 12
  store i32 1, ptr %1099, align 4, !tbaa !38
  %1100 = add i64 %1096, 1
  %1101 = icmp eq i64 %1100, %1092
  br i1 %1101, label %1102, label %1094, !llvm.loop !100

1102:                                             ; preds = %1094, %1088
  %1103 = phi i64 [ %1089, %1088 ], [ %1097, %1094 ]
  %1104 = phi i64 [ poison, %1088 ], [ %1097, %1094 ]
  %1105 = sub nsw i64 %1089, %1038
  %1106 = icmp ugt i64 %1105, -4
  br i1 %1106, label %1122, label %1107

1107:                                             ; preds = %1102, %1107
  %1108 = phi i64 [ %1118, %1107 ], [ %1103, %1102 ]
  %1109 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1108
  %1110 = getelementptr inbounds nuw i8, ptr %1109, i64 28
  store i32 1073741824, ptr %1110, align 4, !tbaa !43
  %1111 = getelementptr inbounds nuw i8, ptr %1109, i64 40
  store i32 1, ptr %1111, align 4, !tbaa !38
  %1112 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1108
  %1113 = getelementptr inbounds nuw i8, ptr %1112, i64 56
  store i32 1073741824, ptr %1113, align 4, !tbaa !43
  %1114 = getelementptr inbounds nuw i8, ptr %1112, i64 68
  store i32 1, ptr %1114, align 4, !tbaa !38
  %1115 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1108
  %1116 = getelementptr inbounds nuw i8, ptr %1115, i64 84
  store i32 1073741824, ptr %1116, align 4, !tbaa !43
  %1117 = getelementptr inbounds nuw i8, ptr %1115, i64 96
  store i32 1, ptr %1117, align 4, !tbaa !38
  %1118 = add nuw nsw i64 %1108, 4
  %1119 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1118
  store i32 1073741824, ptr %1119, align 4, !tbaa !43
  %1120 = getelementptr inbounds nuw i8, ptr %1119, i64 12
  store i32 1, ptr %1120, align 4, !tbaa !38
  %1121 = icmp samesign ult i64 %1118, %1090
  br i1 %1121, label %1107, label %1122, !llvm.loop !65

1122:                                             ; preds = %1107, %1102
  %1123 = phi i64 [ %1104, %1102 ], [ %1118, %1107 ]
  %1124 = trunc nuw i64 %1123 to i32
  br label %1125

1125:                                             ; preds = %1086, %1122
  %1126 = phi i64 [ %1087, %1086 ], [ %1090, %1122 ]
  %1127 = phi i32 [ %1035, %1086 ], [ %1124, %1122 ]
  %1128 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1126
  %1129 = getelementptr inbounds nuw i8, ptr %1128, i64 8
  store i32 %1036, ptr %1129, align 4, !tbaa !36
  %1130 = getelementptr inbounds nuw i8, ptr %1128, i64 4
  store i32 %927, ptr %1130, align 4, !tbaa !50
  %1131 = getelementptr inbounds nuw i8, ptr %1128, i64 12
  store i32 0, ptr %1131, align 4, !tbaa !38
  store i32 %1077, ptr %1128, align 4, !tbaa !43
  br label %1132

1132:                                             ; preds = %1081, %1125
  %1133 = phi i32 [ %1127, %1125 ], [ %1035, %1081 ]
  %1134 = add i32 %1036, -1
  %1135 = icmp ult i32 %1134, %937
  %1136 = add i32 %1034, 1
  br i1 %1135, label %1137, label %1033, !llvm.loop !64

1137:                                             ; preds = %1132, %1003, %936
  %1138 = phi i32 [ %925, %936 ], [ %1004, %1003 ], [ %1133, %1132 ]
  %1139 = add nuw nsw i64 %924, 1
  %1140 = icmp eq i64 %1139, %922
  br i1 %1140, label %1141, label %923, !llvm.loop !67

1141:                                             ; preds = %1137
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  %1142 = add i32 %1138, 1
  %1143 = zext i32 %1142 to i64
  %1144 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1143
  store i32 1073741824, ptr %1144, align 4, !tbaa !43
  br label %1145

1145:                                             ; preds = %872, %1141, %907
  %1146 = phi i32 [ %824, %907 ], [ %824, %872 ], [ %1138, %1141 ]
  %1147 = add i32 %334, 1
  %1148 = icmp ugt i32 %1147, %1146
  br i1 %1148, label %1149, label %333, !llvm.loop !68

1149:                                             ; preds = %874, %1145, %328
  %1150 = phi i32 [ 0, %328 ], [ %334, %874 ], [ %1146, %1145 ]
  %1151 = zext i32 %1150 to i64
  %1152 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1151
  %1153 = load i32, ptr %1152, align 4, !tbaa !25
  %1154 = getelementptr inbounds nuw i8, ptr %1152, i64 4
  %1155 = load i32, ptr %1154, align 4, !tbaa !25
  %1156 = getelementptr inbounds nuw i8, ptr %1152, i64 8
  %1157 = load i32, ptr %1156, align 4, !tbaa !25
  %1158 = getelementptr inbounds nuw i8, ptr %1152, i64 12
  %1159 = load i32, ptr %1158, align 4, !tbaa !25
  %1160 = getelementptr inbounds nuw i8, ptr %1152, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %1160, i64 12, i1 false), !tbaa.struct !69
  %1161 = sub i32 %1150, %1157
  %1162 = icmp eq i32 %1157, 0
  br i1 %1162, label %1167, label %1172

1163:                                             ; preds = %908
  %1164 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %46, i64 %910
  %1165 = load i32, ptr %1164, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  %1166 = icmp eq i32 %912, 0
  br i1 %1166, label %1167, label %1174

1167:                                             ; preds = %1163, %1149
  %1168 = phi i32 [ %101, %1163 ], [ %1153, %1149 ]
  %1169 = phi i32 [ %914, %1163 ], [ %1150, %1149 ]
  %1170 = zext i32 %1169 to i64
  %1171 = getelementptr inbounds nuw i8, ptr %99, i64 %1170
  br label %1633, !llvm.loop !70

1172:                                             ; preds = %1149
  %1173 = icmp eq i32 %1159, 0
  br i1 %1173, label %1174, label %1223

1174:                                             ; preds = %1163, %1172
  %1175 = phi i32 [ %1161, %1172 ], [ %334, %1163 ]
  %1176 = phi i32 [ %1157, %1172 ], [ %912, %1163 ]
  %1177 = phi i32 [ %1155, %1172 ], [ %1165, %1163 ]
  %1178 = phi i32 [ %1153, %1172 ], [ %101, %1163 ]
  %1179 = zext i32 %1175 to i64
  %1180 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1179, i32 3
  %1181 = load i32, ptr %1180, align 4, !tbaa !38
  br label %1182

1182:                                             ; preds = %1174, %181
  %1183 = phi i32 [ %105, %181 ], [ %1181, %1174 ]
  %1184 = phi i32 [ 0, %181 ], [ %1175, %1174 ]
  %1185 = phi i32 [ %179, %181 ], [ %1176, %1174 ]
  %1186 = phi i32 [ %182, %181 ], [ %1177, %1174 ]
  %1187 = phi i32 [ %101, %181 ], [ %1178, %1174 ]
  %1188 = zext i32 %1184 to i64
  %1189 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1188, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull readonly align 4 dereferenceable(12) %1189, i64 12, i1 false)
  %1190 = icmp ugt i32 %1186, 3
  br i1 %1190, label %1191, label %1195

1191:                                             ; preds = %1182
  %1192 = load i32, ptr %81, align 4, !tbaa !25
  %1193 = load i32, ptr %7, align 8, !tbaa !25
  store i32 %1193, ptr %81, align 4, !tbaa !25
  %1194 = add i32 %1186, -3
  br label %1217

1195:                                             ; preds = %1182
  %1196 = icmp eq i32 %1183, 0
  %1197 = zext i1 %1196 to i32
  %1198 = add nsw i32 %1186, -1
  %1199 = add nsw i32 %1198, %1197
  switch i32 %1199, label %1205 [
    i32 0, label %1200
    i32 3, label %1202
  ]

1200:                                             ; preds = %1195
  %1201 = load i32, ptr %80, align 8
  br label %1220

1202:                                             ; preds = %1195
  %1203 = load i32, ptr %7, align 8, !tbaa !25
  %1204 = add i32 %1203, -1
  br label %1210

1205:                                             ; preds = %1195
  %1206 = zext i32 %1199 to i64
  %1207 = getelementptr inbounds nuw i32, ptr %7, i64 %1206
  %1208 = load i32, ptr %1207, align 4, !tbaa !25
  %1209 = load i32, ptr %7, align 8, !tbaa !25
  br label %1210

1210:                                             ; preds = %1205, %1202
  %1211 = phi i32 [ %1203, %1202 ], [ %1209, %1205 ]
  %1212 = phi i32 [ %1204, %1202 ], [ %1208, %1205 ]
  %1213 = icmp eq i32 %1199, 1
  %1214 = load i32, ptr %80, align 8
  %1215 = load i32, ptr %81, align 4
  %1216 = select i1 %1213, i32 %1214, i32 %1215
  store i32 %1211, ptr %81, align 4, !tbaa !25
  br label %1217

1217:                                             ; preds = %1210, %1191
  %1218 = phi i32 [ %1216, %1210 ], [ %1192, %1191 ]
  %1219 = phi i32 [ %1212, %1210 ], [ %1194, %1191 ]
  store i32 %1219, ptr %7, align 8, !tbaa !25
  br label %1220

1220:                                             ; preds = %1200, %1217
  %1221 = phi i32 [ %1201, %1200 ], [ %1218, %1217 ]
  %1222 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7)
  store i64 %1222, ptr %2, align 4
  store i32 %1221, ptr %82, align 4
  br label %1225

1223:                                             ; preds = %1172
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %1160, i64 12, i1 false)
  %1224 = sub i32 %1161, %1159
  br label %1225

1225:                                             ; preds = %1223, %1220
  %1226 = phi i32 [ 0, %1220 ], [ %1159, %1223 ]
  %1227 = phi i32 [ %1185, %1220 ], [ %1157, %1223 ]
  %1228 = phi i32 [ %1186, %1220 ], [ %1155, %1223 ]
  %1229 = phi i32 [ %1187, %1220 ], [ %1153, %1223 ]
  %1230 = phi i32 [ %1184, %1220 ], [ %1224, %1223 ]
  %1231 = add i32 %1230, 2
  %1232 = zext i32 %1231 to i64
  %1233 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1232
  store i32 %1229, ptr %1233, align 4, !tbaa !25
  %1234 = getelementptr inbounds nuw i8, ptr %1233, i64 4
  store i32 %1228, ptr %1234, align 4, !tbaa !25
  %1235 = getelementptr inbounds nuw i8, ptr %1233, i64 8
  store i32 %1227, ptr %1235, align 4, !tbaa !25
  %1236 = getelementptr inbounds nuw i8, ptr %1233, i64 12
  store i32 %1226, ptr %1236, align 4, !tbaa !25
  %1237 = getelementptr inbounds nuw i8, ptr %1233, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1237, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !69
  %1238 = zext i32 %1230 to i64
  %1239 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1238
  %1240 = load i64, ptr %1239, align 4
  %1241 = getelementptr inbounds nuw i8, ptr %1239, i64 8
  %1242 = load i32, ptr %1241, align 4, !tbaa !25
  %1243 = getelementptr inbounds nuw i8, ptr %1239, i64 12
  %1244 = load i32, ptr %1243, align 4, !tbaa !25
  %1245 = zext i32 %1231 to i64
  %1246 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1245, i32 3
  store i32 %1244, ptr %1246, align 4, !tbaa !38
  %1247 = icmp eq i32 %1242, 0
  br i1 %1247, label %1274, label %1248

1248:                                             ; preds = %1225, %1248
  %1249 = phi i32 [ %1270, %1248 ], [ %1244, %1225 ]
  %1250 = phi i32 [ %1268, %1248 ], [ %1242, %1225 ]
  %1251 = phi i64 [ %1266, %1248 ], [ %1240, %1225 ]
  %1252 = phi i64 [ %1264, %1248 ], [ %1238, %1225 ]
  %1253 = phi i32 [ %1263, %1248 ], [ %1230, %1225 ]
  %1254 = phi i32 [ %1256, %1248 ], [ %1231, %1225 ]
  %1255 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1252, i32 4
  %1256 = add i32 %1254, -1
  %1257 = zext i32 %1256 to i64
  %1258 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1257
  store i64 %1251, ptr %1258, align 4
  %1259 = getelementptr inbounds nuw i8, ptr %1258, i64 8
  store i32 %1250, ptr %1259, align 4, !tbaa !25
  %1260 = getelementptr inbounds nuw i8, ptr %1258, i64 12
  store i32 %1249, ptr %1260, align 4, !tbaa !25
  %1261 = getelementptr inbounds nuw i8, ptr %1258, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1261, ptr noundef nonnull align 4 dereferenceable(12) %1255, i64 12, i1 false)
  %1262 = add i32 %1250, %1249
  %1263 = sub i32 %1253, %1262
  %1264 = zext i32 %1263 to i64
  %1265 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1264
  %1266 = load i64, ptr %1265, align 4
  %1267 = getelementptr inbounds nuw i8, ptr %1265, i64 8
  %1268 = load i32, ptr %1267, align 4, !tbaa !25
  %1269 = getelementptr inbounds nuw i8, ptr %1265, i64 12
  %1270 = load i32, ptr %1269, align 4, !tbaa !25
  %1271 = zext i32 %1256 to i64
  %1272 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1271, i32 3
  store i32 %1270, ptr %1272, align 4, !tbaa !38
  %1273 = icmp eq i32 %1268, 0
  br i1 %1273, label %1274, label %1248

1274:                                             ; preds = %1248, %1225
  %1275 = phi i32 [ %1231, %1225 ], [ %1256, %1248 ]
  %1276 = icmp ugt i32 %1275, %1231
  br i1 %1276, label %1594, label %1277

1277:                                             ; preds = %1274, %1589
  %1278 = phi ptr [ %1590, %1589 ], [ %100, %1274 ]
  %1279 = phi i32 [ %1592, %1589 ], [ %1275, %1274 ]
  %1280 = ptrtoint ptr %1278 to i64
  %1281 = zext i32 %1279 to i64
  %1282 = getelementptr inbounds nuw %struct.ZSTD_optimal_t, ptr %44, i64 %1281
  %1283 = getelementptr inbounds nuw i8, ptr %1282, i64 12
  %1284 = load i32, ptr %1283, align 4, !tbaa !38
  %1285 = getelementptr inbounds nuw i8, ptr %1282, i64 8
  %1286 = load i32, ptr %1285, align 4, !tbaa !36
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1288, label %1291

1288:                                             ; preds = %1277
  %1289 = zext i32 %1284 to i64
  %1290 = getelementptr inbounds nuw i8, ptr %1278, i64 %1289
  br label %1589

1291:                                             ; preds = %1277
  %1292 = add i32 %1286, %1284
  %1293 = getelementptr inbounds nuw i8, ptr %1282, i64 4
  %1294 = load i32, ptr %1293, align 4, !tbaa !50
  %1295 = load i32, ptr %74, align 8, !tbaa !57
  %1296 = icmp eq i32 %1295, 2
  br i1 %1296, label %1358, label %1297

1297:                                             ; preds = %1291
  %1298 = icmp eq i32 %1284, 0
  br i1 %1298, label %1354, label %1299

1299:                                             ; preds = %1297
  %1300 = load ptr, ptr %15, align 8, !tbaa !59
  %1301 = zext i32 %1284 to i64
  %1302 = and i64 %1301, 3
  %1303 = icmp ult i32 %1284, 4
  br i1 %1303, label %1339, label %1304

1304:                                             ; preds = %1299
  %1305 = and i64 %1301, 4294967292
  %1306 = getelementptr inbounds i8, ptr %1278, i64 1
  %1307 = getelementptr inbounds i8, ptr %1278, i64 2
  %1308 = getelementptr inbounds i8, ptr %1278, i64 3
  br label %1309

1309:                                             ; preds = %1309, %1304
  %1310 = phi i64 [ 0, %1304 ], [ %1336, %1309 ]
  %1311 = phi i64 [ 0, %1304 ], [ %1337, %1309 ]
  %1312 = getelementptr inbounds nuw i8, ptr %1278, i64 %1310
  %1313 = load i8, ptr %1312, align 1, !tbaa !42
  %1314 = zext i8 %1313 to i64
  %1315 = getelementptr inbounds nuw i32, ptr %1300, i64 %1314
  %1316 = load i32, ptr %1315, align 4, !tbaa !25
  %1317 = add i32 %1316, 2
  store i32 %1317, ptr %1315, align 4, !tbaa !25
  %1318 = getelementptr inbounds i8, ptr %1306, i64 %1310
  %1319 = load i8, ptr %1318, align 1, !tbaa !42
  %1320 = zext i8 %1319 to i64
  %1321 = getelementptr inbounds nuw i32, ptr %1300, i64 %1320
  %1322 = load i32, ptr %1321, align 4, !tbaa !25
  %1323 = add i32 %1322, 2
  store i32 %1323, ptr %1321, align 4, !tbaa !25
  %1324 = getelementptr inbounds i8, ptr %1307, i64 %1310
  %1325 = load i8, ptr %1324, align 1, !tbaa !42
  %1326 = zext i8 %1325 to i64
  %1327 = getelementptr inbounds nuw i32, ptr %1300, i64 %1326
  %1328 = load i32, ptr %1327, align 4, !tbaa !25
  %1329 = add i32 %1328, 2
  store i32 %1329, ptr %1327, align 4, !tbaa !25
  %1330 = getelementptr inbounds i8, ptr %1308, i64 %1310
  %1331 = load i8, ptr %1330, align 1, !tbaa !42
  %1332 = zext i8 %1331 to i64
  %1333 = getelementptr inbounds nuw i32, ptr %1300, i64 %1332
  %1334 = load i32, ptr %1333, align 4, !tbaa !25
  %1335 = add i32 %1334, 2
  store i32 %1335, ptr %1333, align 4, !tbaa !25
  %1336 = add nuw nsw i64 %1310, 4
  %1337 = add i64 %1311, 4
  %1338 = icmp eq i64 %1337, %1305
  br i1 %1338, label %1339, label %1309, !llvm.loop !71

1339:                                             ; preds = %1309, %1299
  %1340 = phi i64 [ 0, %1299 ], [ %1336, %1309 ]
  %1341 = icmp eq i64 %1302, 0
  br i1 %1341, label %1354, label %1342

1342:                                             ; preds = %1339, %1342
  %1343 = phi i64 [ %1351, %1342 ], [ %1340, %1339 ]
  %1344 = phi i64 [ %1352, %1342 ], [ 0, %1339 ]
  %1345 = getelementptr inbounds nuw i8, ptr %1278, i64 %1343
  %1346 = load i8, ptr %1345, align 1, !tbaa !42
  %1347 = zext i8 %1346 to i64
  %1348 = getelementptr inbounds nuw i32, ptr %1300, i64 %1347
  %1349 = load i32, ptr %1348, align 4, !tbaa !25
  %1350 = add i32 %1349, 2
  store i32 %1350, ptr %1348, align 4, !tbaa !25
  %1351 = add nuw nsw i64 %1343, 1
  %1352 = add i64 %1344, 1
  %1353 = icmp eq i64 %1352, %1302
  br i1 %1353, label %1354, label %1342, !llvm.loop !101

1354:                                             ; preds = %1339, %1342, %1297
  %1355 = shl i32 %1284, 1
  %1356 = load i32, ptr %83, align 8, !tbaa !73
  %1357 = add i32 %1356, %1355
  store i32 %1357, ptr %83, align 8, !tbaa !73
  br label %1358

1358:                                             ; preds = %1354, %1291
  %1359 = icmp ugt i32 %1284, 63
  br i1 %1359, label %1360, label %1363

1360:                                             ; preds = %1358
  %1361 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1284, i1 true)
  %1362 = sub nuw nsw i32 50, %1361
  br label %1368

1363:                                             ; preds = %1358
  %1364 = zext nneg i32 %1284 to i64
  %1365 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %1364
  %1366 = load i8, ptr %1365, align 1, !tbaa !42
  %1367 = zext i8 %1366 to i32
  br label %1368

1368:                                             ; preds = %1363, %1360
  %1369 = phi i32 [ %1362, %1360 ], [ %1367, %1363 ]
  %1370 = load ptr, ptr %68, align 8, !tbaa !41
  %1371 = zext nneg i32 %1369 to i64
  %1372 = getelementptr inbounds nuw i32, ptr %1370, i64 %1371
  %1373 = load i32, ptr %1372, align 4, !tbaa !25
  %1374 = add i32 %1373, 1
  store i32 %1374, ptr %1372, align 4, !tbaa !25
  %1375 = load i32, ptr %84, align 4, !tbaa !74
  %1376 = add i32 %1375, 1
  store i32 %1376, ptr %84, align 4, !tbaa !74
  %1377 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1294, i1 true)
  %1378 = xor i32 %1377, 31
  %1379 = load ptr, ptr %71, align 8, !tbaa !53
  %1380 = zext nneg i32 %1378 to i64
  %1381 = getelementptr inbounds nuw i32, ptr %1379, i64 %1380
  %1382 = load i32, ptr %1381, align 4, !tbaa !25
  %1383 = add i32 %1382, 1
  store i32 %1383, ptr %1381, align 4, !tbaa !25
  %1384 = load i32, ptr %85, align 4, !tbaa !75
  %1385 = add i32 %1384, 1
  store i32 %1385, ptr %85, align 4, !tbaa !75
  %1386 = add i32 %1286, -3
  %1387 = icmp ugt i32 %1386, 127
  br i1 %1387, label %1388, label %1391

1388:                                             ; preds = %1368
  %1389 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1386, i1 true)
  %1390 = sub nuw nsw i32 67, %1389
  br label %1396

1391:                                             ; preds = %1368
  %1392 = zext nneg i32 %1386 to i64
  %1393 = getelementptr inbounds nuw [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %1392
  %1394 = load i8, ptr %1393, align 1, !tbaa !42
  %1395 = zext i8 %1394 to i32
  br label %1396

1396:                                             ; preds = %1388, %1391
  %1397 = phi i32 [ %1390, %1388 ], [ %1395, %1391 ]
  %1398 = load ptr, ptr %73, align 8, !tbaa !55
  %1399 = zext nneg i32 %1397 to i64
  %1400 = getelementptr inbounds nuw i32, ptr %1398, i64 %1399
  %1401 = load i32, ptr %1400, align 4, !tbaa !25
  %1402 = add i32 %1401, 1
  store i32 %1402, ptr %1400, align 4, !tbaa !25
  %1403 = load i32, ptr %86, align 8, !tbaa !76
  %1404 = add i32 %1403, 1
  store i32 %1404, ptr %86, align 8, !tbaa !76
  %1405 = zext i32 %1284 to i64
  %1406 = zext i32 %1286 to i64
  %1407 = getelementptr inbounds nuw i8, ptr %1278, i64 %1405
  %1408 = icmp ugt ptr %1407, %87
  %1409 = load ptr, ptr %88, align 8, !tbaa !77
  br i1 %1408, label %1433, label %1410

1410:                                             ; preds = %1396
  %1411 = load <2 x i64>, ptr %1278, align 1, !tbaa !42
  store <2 x i64> %1411, ptr %1409, align 1, !tbaa !42
  %1412 = icmp ugt i32 %1284, 16
  br i1 %1412, label %1413, label %1554

1413:                                             ; preds = %1410
  %1414 = load ptr, ptr %88, align 8, !tbaa !77
  %1415 = getelementptr inbounds nuw i8, ptr %1414, i64 16
  %1416 = getelementptr inbounds nuw i8, ptr %1278, i64 16
  %1417 = getelementptr i8, ptr %1414, i64 %1405
  %1418 = load <2 x i64>, ptr %1416, align 1, !tbaa !42
  store <2 x i64> %1418, ptr %1415, align 1, !tbaa !42
  %1419 = add i32 %1284, -16
  %1420 = icmp ult i32 %1419, 17
  br i1 %1420, label %1554, label %1421

1421:                                             ; preds = %1413
  %1422 = getelementptr inbounds nuw i8, ptr %1414, i64 32
  br label %1423

1423:                                             ; preds = %1423, %1421
  %1424 = phi ptr [ %1422, %1421 ], [ %1431, %1423 ]
  %1425 = phi ptr [ %1416, %1421 ], [ %1429, %1423 ]
  %1426 = getelementptr inbounds nuw i8, ptr %1425, i64 16
  %1427 = load <2 x i64>, ptr %1426, align 1, !tbaa !42
  store <2 x i64> %1427, ptr %1424, align 1, !tbaa !42
  %1428 = getelementptr inbounds nuw i8, ptr %1424, i64 16
  %1429 = getelementptr inbounds nuw i8, ptr %1425, i64 32
  %1430 = load <2 x i64>, ptr %1429, align 1, !tbaa !42
  store <2 x i64> %1430, ptr %1428, align 1, !tbaa !42
  %1431 = getelementptr inbounds nuw i8, ptr %1424, i64 32
  %1432 = icmp ult ptr %1431, %1417
  br i1 %1432, label %1423, label %1558, !llvm.loop !80

1433:                                             ; preds = %1396
  %1434 = icmp ugt ptr %1278, %87
  br i1 %1434, label %1453, label %1435

1435:                                             ; preds = %1433
  %1436 = ptrtoint ptr %1278 to i64
  %1437 = sub i64 %89, %1436
  %1438 = getelementptr inbounds i8, ptr %1409, i64 %1437
  %1439 = load <2 x i64>, ptr %1278, align 1, !tbaa !42
  store <2 x i64> %1439, ptr %1409, align 1, !tbaa !42
  %1440 = icmp ult i64 %1437, 17
  br i1 %1440, label %1453, label %1441

1441:                                             ; preds = %1435
  %1442 = getelementptr inbounds nuw i8, ptr %1409, i64 16
  br label %1443

1443:                                             ; preds = %1443, %1441
  %1444 = phi ptr [ %1442, %1441 ], [ %1451, %1443 ]
  %1445 = phi ptr [ %1278, %1441 ], [ %1449, %1443 ]
  %1446 = getelementptr inbounds nuw i8, ptr %1445, i64 16
  %1447 = load <2 x i64>, ptr %1446, align 1, !tbaa !42
  store <2 x i64> %1447, ptr %1444, align 1, !tbaa !42
  %1448 = getelementptr inbounds nuw i8, ptr %1444, i64 16
  %1449 = getelementptr inbounds nuw i8, ptr %1445, i64 32
  %1450 = load <2 x i64>, ptr %1449, align 1, !tbaa !42
  store <2 x i64> %1450, ptr %1448, align 1, !tbaa !42
  %1451 = getelementptr inbounds nuw i8, ptr %1444, i64 32
  %1452 = icmp ult ptr %1451, %1438
  br i1 %1452, label %1443, label %1453, !llvm.loop !80

1453:                                             ; preds = %1443, %1435, %1433
  %1454 = phi ptr [ %87, %1435 ], [ %1278, %1433 ], [ %87, %1443 ]
  %1455 = phi ptr [ %1438, %1435 ], [ %1409, %1433 ], [ %1438, %1443 ]
  %1456 = icmp ult ptr %1454, %1407
  br i1 %1456, label %1457, label %1558

1457:                                             ; preds = %1453
  %1458 = ptrtoint ptr %1454 to i64
  %1459 = ptrtoint ptr %1455 to i64
  %1460 = ptrtoint ptr %1454 to i64
  %1461 = add i64 %1280, %1405
  %1462 = sub i64 %1461, %1460
  %1463 = icmp ult i64 %1462, 4
  %1464 = sub i64 %1459, %1458
  %1465 = icmp ult i64 %1464, 32
  %1466 = select i1 %1463, i1 true, i1 %1465
  br i1 %1466, label %1502, label %1467

1467:                                             ; preds = %1457
  %1468 = icmp ult i64 %1462, 32
  br i1 %1468, label %1488, label %1469

1469:                                             ; preds = %1467
  %1470 = and i64 %1462, -32
  br label %1471

1471:                                             ; preds = %1471, %1469
  %1472 = phi i64 [ 0, %1469 ], [ %1479, %1471 ]
  %1473 = getelementptr i8, ptr %1455, i64 %1472
  %1474 = getelementptr i8, ptr %1454, i64 %1472
  %1475 = getelementptr i8, ptr %1474, i64 16
  %1476 = load <16 x i8>, ptr %1474, align 1, !tbaa !42
  %1477 = load <16 x i8>, ptr %1475, align 1, !tbaa !42
  %1478 = getelementptr i8, ptr %1473, i64 16
  store <16 x i8> %1476, ptr %1473, align 1, !tbaa !42
  store <16 x i8> %1477, ptr %1478, align 1, !tbaa !42
  %1479 = add nuw i64 %1472, 32
  %1480 = icmp eq i64 %1479, %1470
  br i1 %1480, label %1481, label %1471, !llvm.loop !102

1481:                                             ; preds = %1471
  %1482 = icmp eq i64 %1462, %1470
  br i1 %1482, label %1558, label %1483

1483:                                             ; preds = %1481
  %1484 = getelementptr i8, ptr %1455, i64 %1470
  %1485 = getelementptr i8, ptr %1454, i64 %1470
  %1486 = and i64 %1462, 28
  %1487 = icmp eq i64 %1486, 0
  br i1 %1487, label %1502, label %1488

1488:                                             ; preds = %1483, %1467
  %1489 = phi i64 [ %1470, %1483 ], [ 0, %1467 ]
  %1490 = and i64 %1462, -4
  %1491 = getelementptr i8, ptr %1455, i64 %1490
  %1492 = getelementptr i8, ptr %1454, i64 %1490
  br label %1493

1493:                                             ; preds = %1493, %1488
  %1494 = phi i64 [ %1489, %1488 ], [ %1498, %1493 ]
  %1495 = getelementptr i8, ptr %1455, i64 %1494
  %1496 = getelementptr i8, ptr %1454, i64 %1494
  %1497 = load <4 x i8>, ptr %1496, align 1, !tbaa !42
  store <4 x i8> %1497, ptr %1495, align 1, !tbaa !42
  %1498 = add nuw i64 %1494, 4
  %1499 = icmp eq i64 %1498, %1490
  br i1 %1499, label %1500, label %1493, !llvm.loop !103

1500:                                             ; preds = %1493
  %1501 = icmp eq i64 %1462, %1490
  br i1 %1501, label %1558, label %1502

1502:                                             ; preds = %1483, %1500, %1457
  %1503 = phi ptr [ %1455, %1457 ], [ %1484, %1483 ], [ %1491, %1500 ]
  %1504 = phi ptr [ %1454, %1457 ], [ %1485, %1483 ], [ %1492, %1500 ]
  %1505 = add i64 %1280, %1405
  %1506 = ptrtoint ptr %1504 to i64
  %1507 = sub i64 %1505, %1506
  %1508 = add i64 %1280, -1
  %1509 = add i64 %1508, %1405
  %1510 = sub i64 %1509, %1506
  %1511 = and i64 %1507, 7
  %1512 = icmp eq i64 %1511, 0
  br i1 %1512, label %1522, label %1513

1513:                                             ; preds = %1502, %1513
  %1514 = phi ptr [ %1519, %1513 ], [ %1503, %1502 ]
  %1515 = phi ptr [ %1517, %1513 ], [ %1504, %1502 ]
  %1516 = phi i64 [ %1520, %1513 ], [ 0, %1502 ]
  %1517 = getelementptr inbounds nuw i8, ptr %1515, i64 1
  %1518 = load i8, ptr %1515, align 1, !tbaa !42
  %1519 = getelementptr inbounds nuw i8, ptr %1514, i64 1
  store i8 %1518, ptr %1514, align 1, !tbaa !42
  %1520 = add i64 %1516, 1
  %1521 = icmp eq i64 %1520, %1511
  br i1 %1521, label %1522, label %1513, !llvm.loop !104

1522:                                             ; preds = %1513, %1502
  %1523 = phi ptr [ %1503, %1502 ], [ %1519, %1513 ]
  %1524 = phi ptr [ %1504, %1502 ], [ %1517, %1513 ]
  %1525 = icmp ult i64 %1510, 7
  br i1 %1525, label %1558, label %1526

1526:                                             ; preds = %1522, %1526
  %1527 = phi ptr [ %1552, %1526 ], [ %1523, %1522 ]
  %1528 = phi ptr [ %1550, %1526 ], [ %1524, %1522 ]
  %1529 = getelementptr inbounds nuw i8, ptr %1528, i64 1
  %1530 = load i8, ptr %1528, align 1, !tbaa !42
  %1531 = getelementptr inbounds nuw i8, ptr %1527, i64 1
  store i8 %1530, ptr %1527, align 1, !tbaa !42
  %1532 = getelementptr inbounds nuw i8, ptr %1528, i64 2
  %1533 = load i8, ptr %1529, align 1, !tbaa !42
  %1534 = getelementptr inbounds nuw i8, ptr %1527, i64 2
  store i8 %1533, ptr %1531, align 1, !tbaa !42
  %1535 = getelementptr inbounds nuw i8, ptr %1528, i64 3
  %1536 = load i8, ptr %1532, align 1, !tbaa !42
  %1537 = getelementptr inbounds nuw i8, ptr %1527, i64 3
  store i8 %1536, ptr %1534, align 1, !tbaa !42
  %1538 = getelementptr inbounds nuw i8, ptr %1528, i64 4
  %1539 = load i8, ptr %1535, align 1, !tbaa !42
  %1540 = getelementptr inbounds nuw i8, ptr %1527, i64 4
  store i8 %1539, ptr %1537, align 1, !tbaa !42
  %1541 = getelementptr inbounds nuw i8, ptr %1528, i64 5
  %1542 = load i8, ptr %1538, align 1, !tbaa !42
  %1543 = getelementptr inbounds nuw i8, ptr %1527, i64 5
  store i8 %1542, ptr %1540, align 1, !tbaa !42
  %1544 = getelementptr inbounds nuw i8, ptr %1528, i64 6
  %1545 = load i8, ptr %1541, align 1, !tbaa !42
  %1546 = getelementptr inbounds nuw i8, ptr %1527, i64 6
  store i8 %1545, ptr %1543, align 1, !tbaa !42
  %1547 = getelementptr inbounds nuw i8, ptr %1528, i64 7
  %1548 = load i8, ptr %1544, align 1, !tbaa !42
  %1549 = getelementptr inbounds nuw i8, ptr %1527, i64 7
  store i8 %1548, ptr %1546, align 1, !tbaa !42
  %1550 = getelementptr inbounds nuw i8, ptr %1528, i64 8
  %1551 = load i8, ptr %1547, align 1, !tbaa !42
  %1552 = getelementptr inbounds nuw i8, ptr %1527, i64 8
  store i8 %1551, ptr %1549, align 1, !tbaa !42
  %1553 = icmp eq ptr %1550, %1407
  br i1 %1553, label %1558, label %1526, !llvm.loop !105

1554:                                             ; preds = %1413, %1410
  %1555 = load ptr, ptr %88, align 8, !tbaa !77
  %1556 = getelementptr inbounds nuw i8, ptr %1555, i64 %1405
  store ptr %1556, ptr %88, align 8, !tbaa !77
  %1557 = load ptr, ptr %91, align 8, !tbaa !87
  br label %1570

1558:                                             ; preds = %1423, %1522, %1526, %1481, %1500, %1453
  %1559 = load ptr, ptr %88, align 8, !tbaa !77
  %1560 = getelementptr inbounds nuw i8, ptr %1559, i64 %1405
  store ptr %1560, ptr %88, align 8, !tbaa !77
  %1561 = icmp ugt i32 %1284, 65535
  %1562 = load ptr, ptr %91, align 8, !tbaa !87
  br i1 %1561, label %1563, label %1570, !prof !88

1563:                                             ; preds = %1558
  store i32 1, ptr %90, align 8, !tbaa !89
  %1564 = load ptr, ptr %1, align 8, !tbaa !90
  %1565 = ptrtoint ptr %1562 to i64
  %1566 = ptrtoint ptr %1564 to i64
  %1567 = sub i64 %1565, %1566
  %1568 = lshr exact i64 %1567, 3
  %1569 = trunc i64 %1568 to i32
  store i32 %1569, ptr %92, align 4, !tbaa !91
  br label %1570

1570:                                             ; preds = %1554, %1563, %1558
  %1571 = phi ptr [ %1557, %1554 ], [ %1562, %1563 ], [ %1562, %1558 ]
  %1572 = trunc i32 %1284 to i16
  %1573 = getelementptr inbounds nuw i8, ptr %1571, i64 4
  store i16 %1572, ptr %1573, align 4, !tbaa !92
  store i32 %1294, ptr %1571, align 4, !tbaa !95
  %1574 = add nsw i64 %1406, -3
  %1575 = icmp ugt i64 %1574, 65535
  br i1 %1575, label %1576, label %1583, !prof !60

1576:                                             ; preds = %1570
  store i32 2, ptr %90, align 8, !tbaa !89
  %1577 = load ptr, ptr %1, align 8, !tbaa !90
  %1578 = ptrtoint ptr %1571 to i64
  %1579 = ptrtoint ptr %1577 to i64
  %1580 = sub i64 %1578, %1579
  %1581 = lshr exact i64 %1580, 3
  %1582 = trunc i64 %1581 to i32
  store i32 %1582, ptr %92, align 4, !tbaa !91
  br label %1583

1583:                                             ; preds = %1570, %1576
  %1584 = trunc i64 %1574 to i16
  %1585 = getelementptr inbounds nuw i8, ptr %1571, i64 6
  store i16 %1584, ptr %1585, align 2, !tbaa !96
  %1586 = getelementptr inbounds nuw i8, ptr %1571, i64 8
  store ptr %1586, ptr %91, align 8, !tbaa !87
  %1587 = zext i32 %1292 to i64
  %1588 = getelementptr inbounds nuw i8, ptr %1278, i64 %1587
  br label %1589

1589:                                             ; preds = %1583, %1288
  %1590 = phi ptr [ %1278, %1288 ], [ %1588, %1583 ]
  %1591 = phi ptr [ %1290, %1288 ], [ %1588, %1583 ]
  %1592 = add i32 %1279, 1
  %1593 = icmp ugt i32 %1592, %1231
  br i1 %1593, label %1594, label %1277, !llvm.loop !97

1594:                                             ; preds = %1589, %1274
  %1595 = phi ptr [ %100, %1274 ], [ %1590, %1589 ]
  %1596 = phi ptr [ %99, %1274 ], [ %1591, %1589 ]
  %1597 = load i32, ptr %74, align 8, !tbaa !57
  %1598 = icmp eq i32 %1597, 2
  br i1 %1598, label %1608, label %1599

1599:                                             ; preds = %1594
  %1600 = load i32, ptr %83, align 8, !tbaa !73
  %1601 = add i32 %1600, 1
  %1602 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1601, i1 true)
  %1603 = xor i32 %1602, 31
  %1604 = shl nuw nsw i32 %1603, 8
  %1605 = shl i32 %1601, 8
  %1606 = lshr i32 %1605, %1603
  %1607 = add i32 %1604, %1606
  store i32 %1607, ptr %75, align 8, !tbaa !58
  br label %1608

1608:                                             ; preds = %1594, %1599
  %1609 = load i32, ptr %84, align 4, !tbaa !74
  %1610 = add i32 %1609, 1
  %1611 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1610, i1 true)
  %1612 = xor i32 %1611, 31
  %1613 = shl nuw nsw i32 %1612, 8
  %1614 = shl i32 %1610, 8
  %1615 = lshr i32 %1614, %1612
  %1616 = add i32 %1613, %1615
  %1617 = load i32, ptr %86, align 8, !tbaa !76
  %1618 = add i32 %1617, 1
  %1619 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1618, i1 true)
  %1620 = xor i32 %1619, 31
  %1621 = shl nuw nsw i32 %1620, 8
  %1622 = shl i32 %1618, 8
  %1623 = lshr i32 %1622, %1620
  %1624 = add i32 %1621, %1623
  %1625 = load i32, ptr %85, align 4, !tbaa !75
  %1626 = add i32 %1625, 1
  %1627 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1626, i1 true)
  %1628 = xor i32 %1627, 31
  %1629 = shl nuw nsw i32 %1628, 8
  %1630 = shl i32 %1626, 8
  %1631 = lshr i32 %1630, %1628
  %1632 = add i32 %1629, %1631
  store i32 %1616, ptr %67, align 4, !tbaa !40
  store i32 %1624, ptr %72, align 8, !tbaa !54
  store i32 %1632, ptr %70, align 4, !tbaa !52
  br label %1633

1633:                                             ; preds = %115, %1608, %1167
  %1634 = phi i32 [ %1168, %1167 ], [ %1229, %1608 ], [ %101, %115 ]
  %1635 = phi ptr [ %100, %1167 ], [ %1595, %1608 ], [ %100, %115 ]
  %1636 = phi ptr [ %1171, %1167 ], [ %1596, %1608 ], [ %116, %115 ]
  %1637 = icmp ult ptr %1636, %17
  br i1 %1637, label %98, label %1638

1638:                                             ; preds = %1633
  %1639 = ptrtoint ptr %1635 to i64
  br label %1640

1640:                                             ; preds = %1638, %52
  %1641 = phi i64 [ %1639, %1638 ], [ %56, %52 ]
  %1642 = sub i64 %57, %1641
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  ret i64 %1642
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btultra2(ptr noundef initializes((224, 228)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x i32], align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = ptrtoint ptr %3 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %14 = load i32, ptr %13, align 4, !tbaa !106
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %5
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !87
  %19 = load ptr, ptr %1, align 8, !tbaa !90
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load i32, ptr %22, align 8, !tbaa !22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %25 = load i32, ptr %24, align 4, !tbaa !107
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = icmp eq i32 %23, %12
  %29 = icmp ugt i64 %4, 8
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false)
  %32 = call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef %3, i64 noundef range(i64 9, 0) %4, i32 noundef 0)
  call void @ZSTD_resetSeqStore(ptr noundef nonnull %1) #12
  %33 = load ptr, ptr %7, align 8, !tbaa !18
  %34 = sub i64 0, %4
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  store ptr %35, ptr %7, align 8, !tbaa !18
  %36 = trunc i64 %4 to i32
  %37 = load i32, ptr %22, align 8, !tbaa !22
  %38 = add i32 %37, %36
  store i32 %38, ptr %22, align 8, !tbaa !22
  store i32 %38, ptr %24, align 4, !tbaa !107
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %38, ptr %39, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  br label %40

40:                                               ; preds = %31, %27, %21, %16, %5
  %41 = call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %41
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btopt_extDict(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btultra_extDict(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ZSTD_insertBt1(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readnone captures(address) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %11 = load i32, ptr %10, align 4, !tbaa !109
  switch i32 %4, label %12 [
    i32 8, label %36
    i32 5, label %18
    i32 6, label %24
    i32 7, label %30
  ]

12:                                               ; preds = %6
  %13 = load i32, ptr %1, align 1, !tbaa !25
  %14 = mul i32 %13, -1640531535
  %15 = sub i32 32, %11
  %16 = lshr i32 %14, %15
  %17 = zext i32 %16 to i64
  br label %42

18:                                               ; preds = %6
  %19 = load i64, ptr %1, align 1, !tbaa !30
  %20 = mul i64 %19, -3523014627271114752
  %21 = sub i32 64, %11
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %20, %22
  br label %42

24:                                               ; preds = %6
  %25 = load i64, ptr %1, align 1, !tbaa !30
  %26 = mul i64 %25, -3523014627193847808
  %27 = sub i32 64, %11
  %28 = zext nneg i32 %27 to i64
  %29 = lshr i64 %26, %28
  br label %42

30:                                               ; preds = %6
  %31 = load i64, ptr %1, align 1, !tbaa !30
  %32 = mul i64 %31, -3523014627193167104
  %33 = sub i32 64, %11
  %34 = zext nneg i32 %33 to i64
  %35 = lshr i64 %32, %34
  br label %42

36:                                               ; preds = %6
  %37 = load i64, ptr %1, align 1, !tbaa !30
  %38 = mul i64 %37, -3523014627327384477
  %39 = sub i32 64, %11
  %40 = zext nneg i32 %39 to i64
  %41 = lshr i64 %38, %40
  br label %42

42:                                               ; preds = %12, %18, %24, %30, %36
  %43 = phi i64 [ %17, %12 ], [ %41, %36 ], [ %23, %18 ], [ %29, %24 ], [ %35, %30 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %45 = load ptr, ptr %44, align 8, !tbaa !110
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %47 = load i32, ptr %46, align 4, !tbaa !111
  %48 = add i32 %47, -1
  %49 = shl nuw i32 1, %48
  %50 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %49, i32 -1)
  %51 = extractvalue { i32, i1 } %50, 0, !nosanitize !48
  %52 = extractvalue { i32, i1 } %50, 1, !nosanitize !48
  br i1 %52, label %53, label %54, !prof !49, !nosanitize !48

53:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !48
  unreachable, !nosanitize !48

54:                                               ; preds = %42
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %56 = getelementptr inbounds nuw i32, ptr %9, i64 %43
  %57 = load i32, ptr %56, align 4, !tbaa !25
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %59 = load ptr, ptr %58, align 8, !tbaa !18
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %61 = load ptr, ptr %60, align 8, !tbaa !112
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %63 = load i32, ptr %62, align 8, !tbaa !22
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %66 = getelementptr inbounds nuw i8, ptr %59, i64 %64
  %67 = ptrtoint ptr %1 to i64
  %68 = ptrtoint ptr %59 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = tail call i32 @llvm.usub.sat.i32(i32 %70, i32 %51)
  %72 = and i32 %51, %70
  %73 = shl nuw i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds nuw i32, ptr %45, i64 %74
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  %77 = load i32, ptr %55, align 4, !tbaa !113
  %78 = getelementptr i8, ptr %0, i64 28
  %79 = load i32, ptr %78, align 4, !tbaa !107
  %80 = getelementptr i8, ptr %0, i64 40
  %81 = load i32, ptr %80, align 8, !tbaa !114
  %82 = shl nuw i32 1, %77
  %83 = sub i32 %3, %79
  %84 = icmp ugt i32 %83, %82
  %85 = sub i32 %3, %82
  %86 = icmp eq i32 %81, 0
  %87 = select i1 %86, i1 %84, i1 false
  %88 = select i1 %87, i32 %85, i32 %79
  %89 = add i32 %70, 9
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %91 = load i32, ptr %90, align 4, !tbaa !115
  store i32 %70, ptr %56, align 4, !tbaa !25
  %92 = icmp ult i32 %57, %88
  br i1 %92, label %235, label %93

93:                                               ; preds = %54
  %94 = shl nuw i32 1, %91
  %95 = icmp ne i32 %5, 0
  %96 = getelementptr inbounds i8, ptr %2, i64 -7
  %97 = getelementptr inbounds i8, ptr %2, i64 -3
  %98 = getelementptr inbounds i8, ptr %2, i64 -1
  br label %99

99:                                               ; preds = %93, %224
  %100 = phi i32 [ %57, %93 ], [ %230, %224 ]
  %101 = phi i32 [ %94, %93 ], [ %231, %224 ]
  %102 = phi i64 [ 8, %93 ], [ %211, %224 ]
  %103 = phi i32 [ %89, %93 ], [ %209, %224 ]
  %104 = phi i64 [ 0, %93 ], [ %228, %224 ]
  %105 = phi ptr [ %76, %93 ], [ %227, %224 ]
  %106 = phi ptr [ %75, %93 ], [ %226, %224 ]
  %107 = phi i64 [ 0, %93 ], [ %225, %224 ]
  %108 = and i32 %100, %51
  %109 = shl nuw i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds nuw i32, ptr %45, i64 %110
  %112 = tail call i64 @llvm.umin.i64(i64 %104, i64 %107)
  %113 = zext i32 %100 to i64
  %114 = add i64 %112, %113
  %115 = icmp ult i64 %114, %64
  %116 = select i1 %95, i1 %115, i1 false
  %117 = getelementptr inbounds nuw i8, ptr %1, i64 %112
  br i1 %116, label %188, label %118

118:                                              ; preds = %99
  %119 = getelementptr inbounds nuw i8, ptr %59, i64 %113
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 %112
  %121 = icmp ult ptr %117, %96
  br i1 %121, label %122, label %148

122:                                              ; preds = %118
  %123 = load i64, ptr %120, align 1, !tbaa !30
  %124 = load i64, ptr %117, align 1, !tbaa !30
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = xor i64 %124, %123
  %128 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %127, i1 true)
  %129 = lshr i64 %128, 3
  br label %185

130:                                              ; preds = %122, %136
  %131 = phi ptr [ %134, %136 ], [ %120, %122 ]
  %132 = phi ptr [ %133, %136 ], [ %117, %122 ]
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 8
  %134 = getelementptr inbounds nuw i8, ptr %131, i64 8
  %135 = icmp ult ptr %133, %96
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = load i64, ptr %134, align 1, !tbaa !30
  %138 = load i64, ptr %133, align 1, !tbaa !30
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %130, label %140

140:                                              ; preds = %136
  %141 = xor i64 %138, %137
  %142 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %141, i1 true)
  %143 = lshr i64 %142, 3
  %144 = getelementptr inbounds nuw i8, ptr %133, i64 %143
  %145 = ptrtoint ptr %144 to i64
  %146 = ptrtoint ptr %117 to i64
  %147 = sub i64 %145, %146
  br label %185

148:                                              ; preds = %130, %118
  %149 = phi ptr [ %120, %118 ], [ %134, %130 ]
  %150 = phi ptr [ %117, %118 ], [ %133, %130 ]
  %151 = icmp ult ptr %150, %97
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i32, ptr %149, align 1, !tbaa !25
  %154 = load i32, ptr %150, align 1, !tbaa !25
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = getelementptr inbounds nuw i8, ptr %150, i64 4
  %158 = getelementptr inbounds nuw i8, ptr %149, i64 4
  br label %159

159:                                              ; preds = %156, %152, %148
  %160 = phi ptr [ %158, %156 ], [ %149, %152 ], [ %149, %148 ]
  %161 = phi ptr [ %157, %156 ], [ %150, %152 ], [ %150, %148 ]
  %162 = icmp ult ptr %161, %98
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i16, ptr %160, align 1, !tbaa !116
  %165 = load i16, ptr %161, align 1, !tbaa !116
  %166 = icmp eq i16 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = getelementptr inbounds nuw i8, ptr %161, i64 2
  %169 = getelementptr inbounds nuw i8, ptr %160, i64 2
  br label %170

170:                                              ; preds = %167, %163, %159
  %171 = phi ptr [ %169, %167 ], [ %160, %163 ], [ %160, %159 ]
  %172 = phi ptr [ %168, %167 ], [ %161, %163 ], [ %161, %159 ]
  %173 = icmp ult ptr %172, %2
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load i8, ptr %171, align 1, !tbaa !42
  %176 = load i8, ptr %172, align 1, !tbaa !42
  %177 = icmp eq i8 %175, %176
  %178 = zext i1 %177 to i64
  %179 = getelementptr inbounds nuw i8, ptr %172, i64 %178
  br label %180

180:                                              ; preds = %174, %170
  %181 = phi ptr [ %172, %170 ], [ %179, %174 ]
  %182 = ptrtoint ptr %181 to i64
  %183 = ptrtoint ptr %117 to i64
  %184 = sub i64 %182, %183
  br label %185

185:                                              ; preds = %126, %140, %180
  %186 = phi i64 [ %184, %180 ], [ %129, %126 ], [ %147, %140 ]
  %187 = add i64 %186, %112
  br label %197

188:                                              ; preds = %99
  %189 = getelementptr inbounds nuw i8, ptr %61, i64 %113
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 %112
  %191 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef %117, ptr noundef %190, ptr noundef %2, ptr noundef nonnull %65, ptr noundef nonnull %66)
  %192 = add i64 %191, %112
  %193 = add i64 %192, %113
  %194 = icmp ult i64 %193, %64
  %195 = getelementptr inbounds nuw i8, ptr %59, i64 %113
  %196 = select i1 %194, ptr %189, ptr %195
  br label %197

197:                                              ; preds = %188, %185
  %198 = phi ptr [ %119, %185 ], [ %196, %188 ]
  %199 = phi i64 [ %187, %185 ], [ %192, %188 ]
  %200 = icmp ugt i64 %199, %102
  br i1 %200, label %201, label %208

201:                                              ; preds = %197
  %202 = sub i32 %103, %100
  %203 = zext i32 %202 to i64
  %204 = icmp ugt i64 %199, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = trunc i64 %199 to i32
  %207 = add i32 %100, %206
  br label %208

208:                                              ; preds = %201, %205, %197
  %209 = phi i32 [ %207, %205 ], [ %103, %201 ], [ %103, %197 ]
  %210 = phi i64 [ %199, %205 ], [ %199, %201 ], [ %102, %197 ]
  %211 = freeze i64 %210
  %212 = getelementptr inbounds nuw i8, ptr %1, i64 %199
  %213 = icmp eq ptr %212, %2
  br i1 %213, label %235, label %214

214:                                              ; preds = %208
  %215 = getelementptr inbounds nuw i8, ptr %198, i64 %199
  %216 = load i8, ptr %215, align 1, !tbaa !42
  %217 = load i8, ptr %212, align 1, !tbaa !42
  %218 = icmp ult i8 %216, %217
  %219 = icmp ugt i32 %100, %71
  br i1 %218, label %220, label %223

220:                                              ; preds = %214
  store i32 %100, ptr %106, align 4, !tbaa !25
  br i1 %219, label %221, label %235

221:                                              ; preds = %220
  %222 = getelementptr inbounds nuw i8, ptr %111, i64 4
  br label %224

223:                                              ; preds = %214
  store i32 %100, ptr %105, align 4, !tbaa !25
  br i1 %219, label %224, label %235

224:                                              ; preds = %223, %221
  %225 = phi i64 [ %107, %221 ], [ %199, %223 ]
  %226 = phi ptr [ %222, %221 ], [ %106, %223 ]
  %227 = phi ptr [ %105, %221 ], [ %111, %223 ]
  %228 = phi i64 [ %199, %221 ], [ %104, %223 ]
  %229 = phi ptr [ %222, %221 ], [ %111, %223 ]
  %230 = load i32, ptr %229, align 4, !tbaa !25
  %231 = add i32 %101, -1
  %232 = icmp ne i32 %231, 0
  %233 = icmp uge i32 %230, %88
  %234 = select i1 %232, i1 %233, i1 false
  br i1 %234, label %99, label %235, !llvm.loop !117

235:                                              ; preds = %224, %208, %220, %223, %54
  %236 = phi ptr [ %75, %54 ], [ %106, %223 ], [ %7, %220 ], [ %106, %208 ], [ %226, %224 ]
  %237 = phi ptr [ %76, %54 ], [ %7, %223 ], [ %105, %220 ], [ %105, %208 ], [ %227, %224 ]
  %238 = phi i32 [ %89, %54 ], [ %209, %223 ], [ %209, %220 ], [ %209, %208 ], [ %209, %224 ]
  %239 = phi i64 [ 8, %54 ], [ %211, %223 ], [ %211, %220 ], [ %211, %208 ], [ %211, %224 ]
  store i32 0, ptr %237, align 4, !tbaa !25
  store i32 0, ptr %236, align 4, !tbaa !25
  %240 = icmp ugt i64 %239, 384
  %241 = trunc i64 %239 to i32
  %242 = add i32 %241, -384
  %243 = tail call i32 @llvm.umin.i32(i32 %242, i32 192)
  %244 = sub i32 %238, %70
  %245 = add i32 %244, -8
  %246 = tail call i32 @llvm.umax.i32(i32 %243, i32 %245)
  %247 = select i1 %240, i32 %246, i32 %245
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  ret i32 %247
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @ZSTD_count_2segments(ptr noundef %0, ptr noundef %1, ptr noundef readnone captures(address) %2, ptr noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #5 {
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = icmp ult ptr %9, %2
  %11 = select i1 %10, ptr %9, ptr %2
  %12 = getelementptr inbounds i8, ptr %11, i64 -7
  %13 = icmp ult ptr %0, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %5
  %15 = load i64, ptr %1, align 1, !tbaa !30
  %16 = load i64, ptr %0, align 1, !tbaa !30
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = xor i64 %16, %15
  %20 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %19, i1 true)
  %21 = lshr i64 %20, 3
  br label %79

22:                                               ; preds = %14, %28
  %23 = phi ptr [ %26, %28 ], [ %1, %14 ]
  %24 = phi ptr [ %25, %28 ], [ %0, %14 ]
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %27 = icmp ult ptr %25, %12
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load i64, ptr %26, align 1, !tbaa !30
  %30 = load i64, ptr %25, align 1, !tbaa !30
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %22, label %32

32:                                               ; preds = %28
  %33 = xor i64 %30, %29
  %34 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %33, i1 true)
  %35 = lshr i64 %34, 3
  %36 = getelementptr inbounds nuw i8, ptr %25, i64 %35
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %0 to i64
  %39 = sub i64 %37, %38
  br label %79

40:                                               ; preds = %22, %5
  %41 = phi ptr [ %1, %5 ], [ %26, %22 ]
  %42 = phi ptr [ %0, %5 ], [ %25, %22 ]
  %43 = getelementptr inbounds i8, ptr %11, i64 -3
  %44 = icmp ult ptr %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, ptr %41, align 1, !tbaa !25
  %47 = load i32, ptr %42, align 1, !tbaa !25
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %51 = getelementptr inbounds nuw i8, ptr %41, i64 4
  br label %52

52:                                               ; preds = %49, %45, %40
  %53 = phi ptr [ %51, %49 ], [ %41, %45 ], [ %41, %40 ]
  %54 = phi ptr [ %50, %49 ], [ %42, %45 ], [ %42, %40 ]
  %55 = getelementptr inbounds i8, ptr %11, i64 -1
  %56 = icmp ult ptr %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i16, ptr %53, align 1, !tbaa !116
  %59 = load i16, ptr %54, align 1, !tbaa !116
  %60 = icmp eq i16 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %54, i64 2
  %63 = getelementptr inbounds nuw i8, ptr %53, i64 2
  br label %64

64:                                               ; preds = %61, %57, %52
  %65 = phi ptr [ %63, %61 ], [ %53, %57 ], [ %53, %52 ]
  %66 = phi ptr [ %62, %61 ], [ %54, %57 ], [ %54, %52 ]
  %67 = icmp ult ptr %66, %11
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i8, ptr %65, align 1, !tbaa !42
  %70 = load i8, ptr %66, align 1, !tbaa !42
  %71 = icmp eq i8 %69, %70
  %72 = zext i1 %71 to i64
  %73 = getelementptr inbounds nuw i8, ptr %66, i64 %72
  br label %74

74:                                               ; preds = %68, %64
  %75 = phi ptr [ %66, %64 ], [ %73, %68 ]
  %76 = ptrtoint ptr %75 to i64
  %77 = ptrtoint ptr %0 to i64
  %78 = sub i64 %76, %77
  br label %79

79:                                               ; preds = %18, %32, %74
  %80 = phi i64 [ %78, %74 ], [ %21, %18 ], [ %39, %32 ]
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 %80
  %82 = icmp eq ptr %81, %3
  br i1 %82, label %83, label %155

83:                                               ; preds = %79
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %80
  %85 = getelementptr inbounds i8, ptr %2, i64 -7
  %86 = icmp ult ptr %84, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %83
  %88 = load i64, ptr %4, align 1, !tbaa !30
  %89 = load i64, ptr %84, align 1, !tbaa !30
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = xor i64 %89, %88
  %93 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %92, i1 true)
  %94 = lshr i64 %93, 3
  br label %152

95:                                               ; preds = %87, %101
  %96 = phi ptr [ %99, %101 ], [ %4, %87 ]
  %97 = phi ptr [ %98, %101 ], [ %84, %87 ]
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 8
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 8
  %100 = icmp ult ptr %98, %85
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load i64, ptr %99, align 1, !tbaa !30
  %103 = load i64, ptr %98, align 1, !tbaa !30
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %95, label %105

105:                                              ; preds = %101
  %106 = xor i64 %103, %102
  %107 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %106, i1 true)
  %108 = lshr i64 %107, 3
  %109 = getelementptr inbounds nuw i8, ptr %98, i64 %108
  %110 = ptrtoint ptr %109 to i64
  %111 = ptrtoint ptr %84 to i64
  %112 = sub i64 %110, %111
  br label %152

113:                                              ; preds = %95, %83
  %114 = phi ptr [ %4, %83 ], [ %99, %95 ]
  %115 = phi ptr [ %84, %83 ], [ %98, %95 ]
  %116 = getelementptr inbounds i8, ptr %2, i64 -3
  %117 = icmp ult ptr %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i32, ptr %114, align 1, !tbaa !25
  %120 = load i32, ptr %115, align 1, !tbaa !25
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = getelementptr inbounds nuw i8, ptr %115, i64 4
  %124 = getelementptr inbounds nuw i8, ptr %114, i64 4
  br label %125

125:                                              ; preds = %122, %118, %113
  %126 = phi ptr [ %124, %122 ], [ %114, %118 ], [ %114, %113 ]
  %127 = phi ptr [ %123, %122 ], [ %115, %118 ], [ %115, %113 ]
  %128 = getelementptr inbounds i8, ptr %2, i64 -1
  %129 = icmp ult ptr %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i16, ptr %126, align 1, !tbaa !116
  %132 = load i16, ptr %127, align 1, !tbaa !116
  %133 = icmp eq i16 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = getelementptr inbounds nuw i8, ptr %127, i64 2
  %136 = getelementptr inbounds nuw i8, ptr %126, i64 2
  br label %137

137:                                              ; preds = %134, %130, %125
  %138 = phi ptr [ %136, %134 ], [ %126, %130 ], [ %126, %125 ]
  %139 = phi ptr [ %135, %134 ], [ %127, %130 ], [ %127, %125 ]
  %140 = icmp ult ptr %139, %2
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i8, ptr %138, align 1, !tbaa !42
  %143 = load i8, ptr %139, align 1, !tbaa !42
  %144 = icmp eq i8 %142, %143
  %145 = zext i1 %144 to i64
  %146 = getelementptr inbounds nuw i8, ptr %139, i64 %145
  br label %147

147:                                              ; preds = %141, %137
  %148 = phi ptr [ %139, %137 ], [ %146, %141 ]
  %149 = ptrtoint ptr %148 to i64
  %150 = ptrtoint ptr %84 to i64
  %151 = sub i64 %149, %150
  br label %152

152:                                              ; preds = %91, %105, %147
  %153 = phi i64 [ %151, %147 ], [ %94, %91 ], [ %112, %105 ]
  %154 = add i64 %153, %80
  br label %155

155:                                              ; preds = %79, %152
  %156 = phi i64 [ %154, %152 ], [ %80, %79 ]
  ret i64 %156
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef nonnull captures(none) initializes((40, 48)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i64, ptr %4, align 8, !tbaa !118
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !119
  %10 = icmp ult i64 %9, %5
  br i1 %10, label %14, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %13, align 4, !tbaa !35
  br label %116

14:                                               ; preds = %7
  %15 = load ptr, ptr %0, align 8, !tbaa !120
  %16 = getelementptr inbounds nuw %struct.rawSeq, ptr %15, i64 %9
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !25
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %20 = load i32, ptr %19, align 4, !tbaa !25
  %21 = add i32 %2, %1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = load i64, ptr %22, align 8, !tbaa !121
  %24 = zext i32 %18 to i64
  %25 = icmp ult i64 %23, %24
  %26 = trunc i64 %23 to i32
  %27 = sub i32 %18, %26
  %28 = select i1 %25, i32 %27, i32 0
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %27, i32 0
  %31 = add i32 %30, %20
  %32 = icmp ult i32 %28, %2
  br i1 %32, label %59, label %33

33:                                               ; preds = %14
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %34, align 8, !tbaa !34
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %35, align 4, !tbaa !35
  %36 = add i32 %2, %26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %33, %52
  %39 = phi i64 [ %54, %52 ], [ %9, %33 ]
  %40 = phi i32 [ %53, %52 ], [ %36, %33 ]
  %41 = icmp ult i64 %39, %5
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw %struct.rawSeq, ptr %15, i64 %39
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 4
  %45 = load i32, ptr %44, align 4, !tbaa !25
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %47 = load i32, ptr %46, align 4, !tbaa !25
  %48 = add i32 %47, %45
  %49 = icmp ult i32 %40, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = zext i32 %40 to i64
  store i64 %51, ptr %22, align 8, !tbaa !122
  br label %56

52:                                               ; preds = %42
  %53 = sub nuw i32 %40, %48
  %54 = add nuw i64 %39, 1
  store i64 %54, ptr %8, align 8, !tbaa !123
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %58, label %38

56:                                               ; preds = %38, %50
  %57 = icmp eq i64 %39, %5
  br i1 %57, label %58, label %116

58:                                               ; preds = %52, %56, %33
  store i64 0, ptr %22, align 8, !tbaa !122
  br label %116

59:                                               ; preds = %14
  %60 = load i32, ptr %16, align 4, !tbaa !25
  %61 = add i32 %28, %1
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %61, ptr %62, align 8, !tbaa !34
  %63 = add i32 %31, %61
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %63, ptr %64, align 4, !tbaa !35
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %60, ptr %65, align 8, !tbaa !31
  %66 = icmp ugt i32 %63, %21
  br i1 %66, label %67, label %91

67:                                               ; preds = %59
  store i32 %21, ptr %64, align 4, !tbaa !35
  %68 = add i32 %2, %26
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %67, %84
  %71 = phi i64 [ %86, %84 ], [ %9, %67 ]
  %72 = phi i32 [ %85, %84 ], [ %68, %67 ]
  %73 = icmp ult i64 %71, %5
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = getelementptr inbounds nuw %struct.rawSeq, ptr %15, i64 %71
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 4
  %77 = load i32, ptr %76, align 4, !tbaa !25
  %78 = getelementptr inbounds nuw i8, ptr %75, i64 8
  %79 = load i32, ptr %78, align 4, !tbaa !25
  %80 = add i32 %79, %77
  %81 = icmp ult i32 %72, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = zext i32 %72 to i64
  store i64 %83, ptr %22, align 8, !tbaa !122
  br label %88

84:                                               ; preds = %74
  %85 = sub nuw i32 %72, %80
  %86 = add nuw i64 %71, 1
  store i64 %86, ptr %8, align 8, !tbaa !123
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %90, label %70

88:                                               ; preds = %70, %82
  %89 = icmp eq i64 %71, %5
  br i1 %89, label %90, label %116

90:                                               ; preds = %84, %88, %67
  store i64 0, ptr %22, align 8, !tbaa !122
  br label %116

91:                                               ; preds = %59
  %92 = add i32 %28, %26
  %93 = add i32 %92, %31
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %115, label %95

95:                                               ; preds = %91, %109
  %96 = phi i64 [ %111, %109 ], [ %9, %91 ]
  %97 = phi i32 [ %110, %109 ], [ %93, %91 ]
  %98 = icmp ult i64 %96, %5
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = getelementptr inbounds nuw %struct.rawSeq, ptr %15, i64 %96
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 4
  %102 = load i32, ptr %101, align 4, !tbaa !25
  %103 = getelementptr inbounds nuw i8, ptr %100, i64 8
  %104 = load i32, ptr %103, align 4, !tbaa !25
  %105 = add i32 %104, %102
  %106 = icmp ult i32 %97, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = zext i32 %97 to i64
  store i64 %108, ptr %22, align 8, !tbaa !122
  br label %113

109:                                              ; preds = %99
  %110 = sub nuw i32 %97, %105
  %111 = add nuw i64 %96, 1
  store i64 %111, ptr %8, align 8, !tbaa !123
  %112 = icmp eq i32 %110, 0
  br i1 %112, label %115, label %95

113:                                              ; preds = %95, %107
  %114 = icmp eq i64 %96, %5
  br i1 %114, label %115, label %116

115:                                              ; preds = %109, %113, %91
  store i64 0, ptr %22, align 8, !tbaa !122
  br label %116

116:                                              ; preds = %115, %113, %90, %88, %58, %56, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_rescaleFreqs(ptr noundef captures(none) initializes((80, 84)) %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 0, 3) %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i64 96
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = icmp eq i32 %7, 2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %9, align 8, !tbaa !39
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %11 = load i32, ptr %10, align 4, !tbaa !74
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %216

13:                                               ; preds = %4
  %14 = icmp ult i64 %2, 9
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  store i32 1, ptr %9, align 8, !tbaa !39
  br label %16

16:                                               ; preds = %15, %13
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 2056
  %20 = load i32, ptr %19, align 8, !tbaa !125
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %166

22:                                               ; preds = %16
  store i32 0, ptr %9, align 8, !tbaa !39
  br i1 %8, label %42, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %24, align 8, !tbaa !73
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %38, %25 ]
  %27 = load ptr, ptr %17, align 8, !tbaa !124
  %28 = trunc nuw nsw i64 %26 to i32
  %29 = tail call i32 @HUF_getNbBitsFromCTable(ptr noundef %27, i32 noundef %28) #12
  %30 = icmp eq i32 %29, 0
  %31 = sub i32 11, %29
  %32 = shl nuw i32 1, %31
  %33 = select i1 %30, i32 1, i32 %32
  %34 = load ptr, ptr %0, align 8, !tbaa !59
  %35 = getelementptr inbounds nuw i32, ptr %34, i64 %26
  store i32 %33, ptr %35, align 4, !tbaa !25
  %36 = load i32, ptr %24, align 8, !tbaa !73
  %37 = add i32 %36, %33
  store i32 %37, ptr %24, align 8, !tbaa !73
  %38 = add nuw nsw i64 %26, 1
  %39 = icmp eq i64 %38, 256
  br i1 %39, label %40, label %25, !llvm.loop !129

40:                                               ; preds = %25
  %41 = load ptr, ptr %17, align 8, !tbaa !124
  br label %42

42:                                               ; preds = %40, %22
  %43 = phi ptr [ %41, %40 ], [ %18, %22 ]
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 4288
  %45 = load i16, ptr %44, align 1, !tbaa !116
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds nuw i8, ptr %43, i64 4292
  %48 = icmp eq i16 %45, 0
  %49 = add nsw i32 %46, -1
  %50 = shl nuw i32 1, %49
  %51 = sext i32 %50 to i64
  %52 = select i1 %48, i64 1, i64 %51
  %53 = getelementptr inbounds i32, ptr %47, i64 %52
  store i32 0, ptr %10, align 4, !tbaa !74
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %55 = load ptr, ptr %54, align 8, !tbaa !41
  br label %56

56:                                               ; preds = %56, %42
  %57 = phi i64 [ 0, %42 ], [ %81, %56 ]
  %58 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %53, i64 %57, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !44
  %60 = add i32 %59, 65535
  %61 = lshr i32 %60, 16
  %62 = icmp ult i32 %60, 65536
  %63 = sub nsw i32 10, %61
  %64 = shl nuw nsw i32 1, %63
  %65 = select i1 %62, i32 1, i32 %64
  %66 = getelementptr inbounds nuw i32, ptr %55, i64 %57
  store i32 %65, ptr %66, align 4, !tbaa !25
  %67 = load i32, ptr %10, align 4, !tbaa !74
  %68 = add i32 %65, %67
  store i32 %68, ptr %10, align 4, !tbaa !74
  %69 = or disjoint i64 %57, 1
  %70 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %53, i64 %69, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !44
  %72 = add i32 %71, 65535
  %73 = lshr i32 %72, 16
  %74 = icmp ult i32 %72, 65536
  %75 = sub nsw i32 10, %73
  %76 = shl nuw nsw i32 1, %75
  %77 = select i1 %74, i32 1, i32 %76
  %78 = getelementptr inbounds nuw i32, ptr %55, i64 %69
  store i32 %77, ptr %78, align 4, !tbaa !25
  %79 = load i32, ptr %10, align 4, !tbaa !74
  %80 = add i32 %77, %79
  store i32 %80, ptr %10, align 4, !tbaa !74
  %81 = add nuw nsw i64 %57, 2
  %82 = icmp eq i64 %81, 36
  br i1 %82, label %83, label %56, !llvm.loop !130

83:                                               ; preds = %56
  %84 = getelementptr inbounds nuw i8, ptr %43, i64 2836
  %85 = load i16, ptr %84, align 1, !tbaa !116
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds nuw i8, ptr %43, i64 2840
  %88 = icmp eq i16 %85, 0
  %89 = add nsw i32 %86, -1
  %90 = shl nuw i32 1, %89
  %91 = sext i32 %90 to i64
  %92 = select i1 %88, i64 1, i64 %91
  %93 = getelementptr inbounds i32, ptr %87, i64 %92
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %94, align 8, !tbaa !76
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %96 = load ptr, ptr %95, align 8, !tbaa !55
  br label %97

97:                                               ; preds = %111, %83
  %98 = phi i64 [ 0, %83 ], [ %124, %111 ]
  %99 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %93, i64 %98, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !44
  %101 = add i32 %100, 65535
  %102 = lshr i32 %101, 16
  %103 = icmp ult i32 %101, 65536
  %104 = sub nsw i32 10, %102
  %105 = shl nuw nsw i32 1, %104
  %106 = select i1 %103, i32 1, i32 %105
  %107 = getelementptr inbounds nuw i32, ptr %96, i64 %98
  store i32 %106, ptr %107, align 4, !tbaa !25
  %108 = load i32, ptr %94, align 8, !tbaa !76
  %109 = add i32 %106, %108
  store i32 %109, ptr %94, align 8, !tbaa !76
  %110 = icmp eq i64 %98, 52
  br i1 %110, label %125, label %111, !llvm.loop !131

111:                                              ; preds = %97
  %112 = or disjoint i64 %98, 1
  %113 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %93, i64 %112, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !44
  %115 = add i32 %114, 65535
  %116 = lshr i32 %115, 16
  %117 = icmp ult i32 %115, 65536
  %118 = sub nsw i32 10, %116
  %119 = shl nuw nsw i32 1, %118
  %120 = select i1 %117, i32 1, i32 %119
  %121 = getelementptr inbounds nuw i32, ptr %96, i64 %112
  store i32 %120, ptr %121, align 4, !tbaa !25
  %122 = load i32, ptr %94, align 8, !tbaa !76
  %123 = add i32 %120, %122
  store i32 %123, ptr %94, align 8, !tbaa !76
  %124 = add nuw nsw i64 %98, 2
  br label %97

125:                                              ; preds = %97
  %126 = getelementptr inbounds nuw i8, ptr %43, i64 2064
  %127 = load i16, ptr %126, align 1, !tbaa !116
  %128 = zext i16 %127 to i32
  %129 = getelementptr inbounds nuw i8, ptr %43, i64 2068
  %130 = icmp eq i16 %127, 0
  %131 = add nsw i32 %128, -1
  %132 = shl nuw i32 1, %131
  %133 = sext i32 %132 to i64
  %134 = select i1 %130, i64 1, i64 %133
  %135 = getelementptr inbounds i32, ptr %129, i64 %134
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %136, align 4, !tbaa !75
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %138 = load ptr, ptr %137, align 8, !tbaa !53
  br label %139

139:                                              ; preds = %139, %125
  %140 = phi i64 [ 0, %125 ], [ %164, %139 ]
  %141 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %135, i64 %140, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !44
  %143 = add i32 %142, 65535
  %144 = lshr i32 %143, 16
  %145 = icmp ult i32 %143, 65536
  %146 = sub nsw i32 10, %144
  %147 = shl nuw nsw i32 1, %146
  %148 = select i1 %145, i32 1, i32 %147
  %149 = getelementptr inbounds nuw i32, ptr %138, i64 %140
  store i32 %148, ptr %149, align 4, !tbaa !25
  %150 = load i32, ptr %136, align 4, !tbaa !75
  %151 = add i32 %148, %150
  store i32 %151, ptr %136, align 4, !tbaa !75
  %152 = or disjoint i64 %140, 1
  %153 = getelementptr inbounds nuw %struct.FSE_symbolCompressionTransform, ptr %135, i64 %152, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !44
  %155 = add i32 %154, 65535
  %156 = lshr i32 %155, 16
  %157 = icmp ult i32 %155, 65536
  %158 = sub nsw i32 10, %156
  %159 = shl nuw nsw i32 1, %158
  %160 = select i1 %157, i32 1, i32 %159
  %161 = getelementptr inbounds nuw i32, ptr %138, i64 %152
  store i32 %160, ptr %161, align 4, !tbaa !25
  %162 = load i32, ptr %136, align 4, !tbaa !75
  %163 = add i32 %160, %162
  store i32 %163, ptr %136, align 4, !tbaa !75
  %164 = add nuw nsw i64 %140, 2
  %165 = icmp eq i64 %164, 32
  br i1 %165, label %673, label %139, !llvm.loop !132

166:                                              ; preds = %16
  br i1 %8, label %195, label %167

167:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 255, ptr %5, align 4, !tbaa !25
  %168 = load ptr, ptr %0, align 8, !tbaa !59
  %169 = call i32 @HIST_count_simple(ptr noundef %168, ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2) #12
  %170 = load ptr, ptr %0, align 8, !tbaa !59
  br label %171

171:                                              ; preds = %171, %167
  %172 = phi i64 [ 0, %167 ], [ %189, %171 ]
  %173 = phi <4 x i32> [ zeroinitializer, %167 ], [ %187, %171 ]
  %174 = phi <4 x i32> [ zeroinitializer, %167 ], [ %188, %171 ]
  %175 = getelementptr inbounds nuw i32, ptr %170, i64 %172
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 16
  %177 = load <4 x i32>, ptr %175, align 4, !tbaa !25
  %178 = load <4 x i32>, ptr %176, align 4, !tbaa !25
  %179 = icmp ne <4 x i32> %177, zeroinitializer
  %180 = icmp ne <4 x i32> %178, zeroinitializer
  %181 = zext <4 x i1> %179 to <4 x i32>
  %182 = zext <4 x i1> %180 to <4 x i32>
  %183 = lshr <4 x i32> %177, splat (i32 8)
  %184 = lshr <4 x i32> %178, splat (i32 8)
  %185 = add nuw nsw <4 x i32> %183, %181
  %186 = add nuw nsw <4 x i32> %184, %182
  %187 = add <4 x i32> %185, %173
  %188 = add <4 x i32> %186, %174
  store <4 x i32> %185, ptr %175, align 4, !tbaa !25
  store <4 x i32> %186, ptr %176, align 4, !tbaa !25
  %189 = add nuw i64 %172, 8
  %190 = icmp eq i64 %189, 256
  br i1 %190, label %191, label %171, !llvm.loop !133

191:                                              ; preds = %171
  %192 = add <4 x i32> %188, %187
  %193 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %192)
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %193, ptr %194, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %195

195:                                              ; preds = %191, %166
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %197 = load ptr, ptr %196, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %197, ptr noundef nonnull align 16 dereferenceable(144) @__const.ZSTD_rescaleFreqs.baseLLfreqs, i64 144, i1 false)
  store i32 40, ptr %10, align 4, !tbaa !74
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %199 = load ptr, ptr %198, align 8, !tbaa !55
  store <4 x i32> splat (i32 1), ptr %199, align 4, !tbaa !25
  %200 = getelementptr inbounds nuw i8, ptr %199, i64 16
  store <4 x i32> splat (i32 1), ptr %200, align 4, !tbaa !25
  %201 = getelementptr inbounds nuw i8, ptr %199, i64 32
  store <4 x i32> splat (i32 1), ptr %201, align 4, !tbaa !25
  %202 = getelementptr inbounds nuw i8, ptr %199, i64 48
  store <4 x i32> splat (i32 1), ptr %202, align 4, !tbaa !25
  %203 = getelementptr inbounds nuw i8, ptr %199, i64 64
  store <4 x i32> splat (i32 1), ptr %203, align 4, !tbaa !25
  %204 = getelementptr inbounds nuw i8, ptr %199, i64 80
  store <4 x i32> splat (i32 1), ptr %204, align 4, !tbaa !25
  %205 = getelementptr inbounds nuw i8, ptr %199, i64 96
  store <4 x i32> splat (i32 1), ptr %205, align 4, !tbaa !25
  %206 = getelementptr inbounds nuw i8, ptr %199, i64 112
  store <4 x i32> splat (i32 1), ptr %206, align 4, !tbaa !25
  %207 = getelementptr inbounds nuw i8, ptr %199, i64 128
  store <4 x i32> splat (i32 1), ptr %207, align 4, !tbaa !25
  %208 = getelementptr inbounds nuw i8, ptr %199, i64 144
  store <4 x i32> splat (i32 1), ptr %208, align 4, !tbaa !25
  %209 = getelementptr inbounds nuw i8, ptr %199, i64 160
  store <4 x i32> splat (i32 1), ptr %209, align 4, !tbaa !25
  %210 = getelementptr inbounds nuw i8, ptr %199, i64 176
  store <4 x i32> splat (i32 1), ptr %210, align 4, !tbaa !25
  %211 = getelementptr inbounds nuw i8, ptr %199, i64 192
  store <4 x i32> splat (i32 1), ptr %211, align 4, !tbaa !25
  %212 = getelementptr inbounds nuw i8, ptr %199, i64 208
  store i32 1, ptr %212, align 4, !tbaa !25
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 53, ptr %213, align 8, !tbaa !76
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %215 = load ptr, ptr %214, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %215, ptr noundef nonnull align 16 dereferenceable(128) @__const.ZSTD_rescaleFreqs.baseOFCfreqs, i64 128, i1 false)
  br label %670

216:                                              ; preds = %4
  br i1 %8, label %450, label %217

217:                                              ; preds = %216
  %218 = load ptr, ptr %0, align 8, !tbaa !59
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 16
  %220 = load <4 x i32>, ptr %218, align 4, !tbaa !25
  %221 = load <4 x i32>, ptr %219, align 4, !tbaa !25
  %222 = getelementptr inbounds nuw i8, ptr %218, i64 32
  %223 = getelementptr inbounds nuw i8, ptr %218, i64 48
  %224 = load <4 x i32>, ptr %222, align 4, !tbaa !25
  %225 = load <4 x i32>, ptr %223, align 4, !tbaa !25
  %226 = add <4 x i32> %224, %220
  %227 = add <4 x i32> %225, %221
  %228 = getelementptr inbounds nuw i8, ptr %218, i64 64
  %229 = getelementptr inbounds nuw i8, ptr %218, i64 80
  %230 = load <4 x i32>, ptr %228, align 4, !tbaa !25
  %231 = load <4 x i32>, ptr %229, align 4, !tbaa !25
  %232 = add <4 x i32> %230, %226
  %233 = add <4 x i32> %231, %227
  %234 = getelementptr inbounds nuw i8, ptr %218, i64 96
  %235 = getelementptr inbounds nuw i8, ptr %218, i64 112
  %236 = load <4 x i32>, ptr %234, align 4, !tbaa !25
  %237 = load <4 x i32>, ptr %235, align 4, !tbaa !25
  %238 = add <4 x i32> %236, %232
  %239 = add <4 x i32> %237, %233
  %240 = getelementptr inbounds nuw i8, ptr %218, i64 128
  %241 = getelementptr inbounds nuw i8, ptr %218, i64 144
  %242 = load <4 x i32>, ptr %240, align 4, !tbaa !25
  %243 = load <4 x i32>, ptr %241, align 4, !tbaa !25
  %244 = add <4 x i32> %242, %238
  %245 = add <4 x i32> %243, %239
  %246 = getelementptr inbounds nuw i8, ptr %218, i64 160
  %247 = getelementptr inbounds nuw i8, ptr %218, i64 176
  %248 = load <4 x i32>, ptr %246, align 4, !tbaa !25
  %249 = load <4 x i32>, ptr %247, align 4, !tbaa !25
  %250 = add <4 x i32> %248, %244
  %251 = add <4 x i32> %249, %245
  %252 = getelementptr inbounds nuw i8, ptr %218, i64 192
  %253 = getelementptr inbounds nuw i8, ptr %218, i64 208
  %254 = load <4 x i32>, ptr %252, align 4, !tbaa !25
  %255 = load <4 x i32>, ptr %253, align 4, !tbaa !25
  %256 = add <4 x i32> %254, %250
  %257 = add <4 x i32> %255, %251
  %258 = getelementptr inbounds nuw i8, ptr %218, i64 224
  %259 = getelementptr inbounds nuw i8, ptr %218, i64 240
  %260 = load <4 x i32>, ptr %258, align 4, !tbaa !25
  %261 = load <4 x i32>, ptr %259, align 4, !tbaa !25
  %262 = add <4 x i32> %260, %256
  %263 = add <4 x i32> %261, %257
  %264 = getelementptr inbounds nuw i8, ptr %218, i64 256
  %265 = getelementptr inbounds nuw i8, ptr %218, i64 272
  %266 = load <4 x i32>, ptr %264, align 4, !tbaa !25
  %267 = load <4 x i32>, ptr %265, align 4, !tbaa !25
  %268 = add <4 x i32> %266, %262
  %269 = add <4 x i32> %267, %263
  %270 = getelementptr inbounds nuw i8, ptr %218, i64 288
  %271 = getelementptr inbounds nuw i8, ptr %218, i64 304
  %272 = load <4 x i32>, ptr %270, align 4, !tbaa !25
  %273 = load <4 x i32>, ptr %271, align 4, !tbaa !25
  %274 = add <4 x i32> %272, %268
  %275 = add <4 x i32> %273, %269
  %276 = getelementptr inbounds nuw i8, ptr %218, i64 320
  %277 = getelementptr inbounds nuw i8, ptr %218, i64 336
  %278 = load <4 x i32>, ptr %276, align 4, !tbaa !25
  %279 = load <4 x i32>, ptr %277, align 4, !tbaa !25
  %280 = add <4 x i32> %278, %274
  %281 = add <4 x i32> %279, %275
  %282 = getelementptr inbounds nuw i8, ptr %218, i64 352
  %283 = getelementptr inbounds nuw i8, ptr %218, i64 368
  %284 = load <4 x i32>, ptr %282, align 4, !tbaa !25
  %285 = load <4 x i32>, ptr %283, align 4, !tbaa !25
  %286 = add <4 x i32> %284, %280
  %287 = add <4 x i32> %285, %281
  %288 = getelementptr inbounds nuw i8, ptr %218, i64 384
  %289 = getelementptr inbounds nuw i8, ptr %218, i64 400
  %290 = load <4 x i32>, ptr %288, align 4, !tbaa !25
  %291 = load <4 x i32>, ptr %289, align 4, !tbaa !25
  %292 = add <4 x i32> %290, %286
  %293 = add <4 x i32> %291, %287
  %294 = getelementptr inbounds nuw i8, ptr %218, i64 416
  %295 = getelementptr inbounds nuw i8, ptr %218, i64 432
  %296 = load <4 x i32>, ptr %294, align 4, !tbaa !25
  %297 = load <4 x i32>, ptr %295, align 4, !tbaa !25
  %298 = add <4 x i32> %296, %292
  %299 = add <4 x i32> %297, %293
  %300 = getelementptr inbounds nuw i8, ptr %218, i64 448
  %301 = getelementptr inbounds nuw i8, ptr %218, i64 464
  %302 = load <4 x i32>, ptr %300, align 4, !tbaa !25
  %303 = load <4 x i32>, ptr %301, align 4, !tbaa !25
  %304 = add <4 x i32> %302, %298
  %305 = add <4 x i32> %303, %299
  %306 = getelementptr inbounds nuw i8, ptr %218, i64 480
  %307 = getelementptr inbounds nuw i8, ptr %218, i64 496
  %308 = load <4 x i32>, ptr %306, align 4, !tbaa !25
  %309 = load <4 x i32>, ptr %307, align 4, !tbaa !25
  %310 = add <4 x i32> %308, %304
  %311 = add <4 x i32> %309, %305
  %312 = getelementptr inbounds nuw i8, ptr %218, i64 512
  %313 = getelementptr inbounds nuw i8, ptr %218, i64 528
  %314 = load <4 x i32>, ptr %312, align 4, !tbaa !25
  %315 = load <4 x i32>, ptr %313, align 4, !tbaa !25
  %316 = add <4 x i32> %314, %310
  %317 = add <4 x i32> %315, %311
  %318 = getelementptr inbounds nuw i8, ptr %218, i64 544
  %319 = getelementptr inbounds nuw i8, ptr %218, i64 560
  %320 = load <4 x i32>, ptr %318, align 4, !tbaa !25
  %321 = load <4 x i32>, ptr %319, align 4, !tbaa !25
  %322 = add <4 x i32> %320, %316
  %323 = add <4 x i32> %321, %317
  %324 = getelementptr inbounds nuw i8, ptr %218, i64 576
  %325 = getelementptr inbounds nuw i8, ptr %218, i64 592
  %326 = load <4 x i32>, ptr %324, align 4, !tbaa !25
  %327 = load <4 x i32>, ptr %325, align 4, !tbaa !25
  %328 = add <4 x i32> %326, %322
  %329 = add <4 x i32> %327, %323
  %330 = getelementptr inbounds nuw i8, ptr %218, i64 608
  %331 = getelementptr inbounds nuw i8, ptr %218, i64 624
  %332 = load <4 x i32>, ptr %330, align 4, !tbaa !25
  %333 = load <4 x i32>, ptr %331, align 4, !tbaa !25
  %334 = add <4 x i32> %332, %328
  %335 = add <4 x i32> %333, %329
  %336 = getelementptr inbounds nuw i8, ptr %218, i64 640
  %337 = getelementptr inbounds nuw i8, ptr %218, i64 656
  %338 = load <4 x i32>, ptr %336, align 4, !tbaa !25
  %339 = load <4 x i32>, ptr %337, align 4, !tbaa !25
  %340 = add <4 x i32> %338, %334
  %341 = add <4 x i32> %339, %335
  %342 = getelementptr inbounds nuw i8, ptr %218, i64 672
  %343 = getelementptr inbounds nuw i8, ptr %218, i64 688
  %344 = load <4 x i32>, ptr %342, align 4, !tbaa !25
  %345 = load <4 x i32>, ptr %343, align 4, !tbaa !25
  %346 = add <4 x i32> %344, %340
  %347 = add <4 x i32> %345, %341
  %348 = getelementptr inbounds nuw i8, ptr %218, i64 704
  %349 = getelementptr inbounds nuw i8, ptr %218, i64 720
  %350 = load <4 x i32>, ptr %348, align 4, !tbaa !25
  %351 = load <4 x i32>, ptr %349, align 4, !tbaa !25
  %352 = add <4 x i32> %350, %346
  %353 = add <4 x i32> %351, %347
  %354 = getelementptr inbounds nuw i8, ptr %218, i64 736
  %355 = getelementptr inbounds nuw i8, ptr %218, i64 752
  %356 = load <4 x i32>, ptr %354, align 4, !tbaa !25
  %357 = load <4 x i32>, ptr %355, align 4, !tbaa !25
  %358 = add <4 x i32> %356, %352
  %359 = add <4 x i32> %357, %353
  %360 = getelementptr inbounds nuw i8, ptr %218, i64 768
  %361 = getelementptr inbounds nuw i8, ptr %218, i64 784
  %362 = load <4 x i32>, ptr %360, align 4, !tbaa !25
  %363 = load <4 x i32>, ptr %361, align 4, !tbaa !25
  %364 = add <4 x i32> %362, %358
  %365 = add <4 x i32> %363, %359
  %366 = getelementptr inbounds nuw i8, ptr %218, i64 800
  %367 = getelementptr inbounds nuw i8, ptr %218, i64 816
  %368 = load <4 x i32>, ptr %366, align 4, !tbaa !25
  %369 = load <4 x i32>, ptr %367, align 4, !tbaa !25
  %370 = add <4 x i32> %368, %364
  %371 = add <4 x i32> %369, %365
  %372 = getelementptr inbounds nuw i8, ptr %218, i64 832
  %373 = getelementptr inbounds nuw i8, ptr %218, i64 848
  %374 = load <4 x i32>, ptr %372, align 4, !tbaa !25
  %375 = load <4 x i32>, ptr %373, align 4, !tbaa !25
  %376 = add <4 x i32> %374, %370
  %377 = add <4 x i32> %375, %371
  %378 = getelementptr inbounds nuw i8, ptr %218, i64 864
  %379 = getelementptr inbounds nuw i8, ptr %218, i64 880
  %380 = load <4 x i32>, ptr %378, align 4, !tbaa !25
  %381 = load <4 x i32>, ptr %379, align 4, !tbaa !25
  %382 = add <4 x i32> %380, %376
  %383 = add <4 x i32> %381, %377
  %384 = getelementptr inbounds nuw i8, ptr %218, i64 896
  %385 = getelementptr inbounds nuw i8, ptr %218, i64 912
  %386 = load <4 x i32>, ptr %384, align 4, !tbaa !25
  %387 = load <4 x i32>, ptr %385, align 4, !tbaa !25
  %388 = add <4 x i32> %386, %382
  %389 = add <4 x i32> %387, %383
  %390 = getelementptr inbounds nuw i8, ptr %218, i64 928
  %391 = getelementptr inbounds nuw i8, ptr %218, i64 944
  %392 = load <4 x i32>, ptr %390, align 4, !tbaa !25
  %393 = load <4 x i32>, ptr %391, align 4, !tbaa !25
  %394 = add <4 x i32> %392, %388
  %395 = add <4 x i32> %393, %389
  %396 = getelementptr inbounds nuw i8, ptr %218, i64 960
  %397 = getelementptr inbounds nuw i8, ptr %218, i64 976
  %398 = load <4 x i32>, ptr %396, align 4, !tbaa !25
  %399 = load <4 x i32>, ptr %397, align 4, !tbaa !25
  %400 = add <4 x i32> %398, %394
  %401 = add <4 x i32> %399, %395
  %402 = getelementptr inbounds nuw i8, ptr %218, i64 992
  %403 = getelementptr inbounds nuw i8, ptr %218, i64 1008
  %404 = load <4 x i32>, ptr %402, align 4, !tbaa !25
  %405 = load <4 x i32>, ptr %403, align 4, !tbaa !25
  %406 = add <4 x i32> %404, %400
  %407 = add <4 x i32> %405, %401
  %408 = add <4 x i32> %407, %406
  %409 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %408)
  %410 = icmp ult i32 %409, 8192
  br i1 %410, label %447, label %411

411:                                              ; preds = %217
  %412 = lshr i32 %409, 12
  %413 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %412, i1 true)
  %414 = xor i32 %413, 31
  %415 = insertelement <4 x i32> poison, i32 %414, i64 0
  %416 = shufflevector <4 x i32> %415, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %417

417:                                              ; preds = %417, %411
  %418 = phi i64 [ 0, %411 ], [ %442, %417 ]
  %419 = phi <4 x i32> [ zeroinitializer, %411 ], [ %440, %417 ]
  %420 = phi <4 x i32> [ zeroinitializer, %411 ], [ %441, %417 ]
  %421 = getelementptr inbounds nuw i32, ptr %218, i64 %418
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 16
  %423 = load <4 x i32>, ptr %421, align 4, !tbaa !25
  %424 = load <4 x i32>, ptr %422, align 4, !tbaa !25
  %425 = lshr <4 x i32> %423, %416
  %426 = lshr <4 x i32> %424, %416
  %427 = add nuw <4 x i32> %425, splat (i32 1)
  %428 = add nuw <4 x i32> %426, splat (i32 1)
  %429 = add <4 x i32> %427, %419
  %430 = add <4 x i32> %428, %420
  store <4 x i32> %427, ptr %421, align 4, !tbaa !25
  store <4 x i32> %428, ptr %422, align 4, !tbaa !25
  %431 = getelementptr inbounds nuw i32, ptr %218, i64 %418
  %432 = getelementptr inbounds nuw i8, ptr %431, i64 32
  %433 = getelementptr inbounds nuw i8, ptr %431, i64 48
  %434 = load <4 x i32>, ptr %432, align 4, !tbaa !25
  %435 = load <4 x i32>, ptr %433, align 4, !tbaa !25
  %436 = lshr <4 x i32> %434, %416
  %437 = lshr <4 x i32> %435, %416
  %438 = add nuw <4 x i32> %436, splat (i32 1)
  %439 = add nuw <4 x i32> %437, splat (i32 1)
  %440 = add <4 x i32> %438, %429
  %441 = add <4 x i32> %439, %430
  store <4 x i32> %438, ptr %432, align 4, !tbaa !25
  store <4 x i32> %439, ptr %433, align 4, !tbaa !25
  %442 = add nuw nsw i64 %418, 16
  %443 = icmp eq i64 %442, 256
  br i1 %443, label %444, label %417, !llvm.loop !134

444:                                              ; preds = %417
  %445 = add <4 x i32> %441, %440
  %446 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %445)
  br label %447

447:                                              ; preds = %444, %217
  %448 = phi i32 [ %409, %217 ], [ %446, %444 ]
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %448, ptr %449, align 8, !tbaa !73
  br label %450

450:                                              ; preds = %447, %216
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %452 = load ptr, ptr %451, align 8, !tbaa !41
  %453 = load <32 x i32>, ptr %452, align 4, !tbaa !25
  %454 = getelementptr inbounds nuw i8, ptr %452, i64 128
  %455 = load <4 x i32>, ptr %454, align 4, !tbaa !25
  %456 = shufflevector <32 x i32> %453, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %457 = add <4 x i32> %456, %455
  %458 = shufflevector <4 x i32> %457, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %459 = shufflevector <32 x i32> %458, <32 x i32> %453, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %460 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %459)
  %461 = icmp ult i32 %460, 4096
  br i1 %461, label %503, label %462

462:                                              ; preds = %450
  %463 = getelementptr inbounds nuw i8, ptr %452, i64 16
  %464 = load <4 x i32>, ptr %463, align 4, !tbaa !25
  %465 = getelementptr inbounds nuw i8, ptr %452, i64 112
  %466 = getelementptr inbounds nuw i8, ptr %452, i64 96
  %467 = getelementptr inbounds nuw i8, ptr %452, i64 80
  %468 = getelementptr inbounds nuw i8, ptr %452, i64 64
  %469 = getelementptr inbounds nuw i8, ptr %452, i64 48
  %470 = getelementptr inbounds nuw i8, ptr %452, i64 32
  %471 = lshr i32 %460, 11
  %472 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %471, i1 true)
  %473 = xor i32 %472, 31
  %474 = load <4 x i32>, ptr %452, align 4, !tbaa !25
  %475 = load <8 x i32>, ptr %466, align 4, !tbaa !25
  %476 = shufflevector <8 x i32> %475, <8 x i32> poison, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %477 = shufflevector <4 x i32> %474, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %478 = shufflevector <32 x i32> %477, <32 x i32> %476, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %479 = shufflevector <4 x i32> %464, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %480 = shufflevector <32 x i32> %478, <32 x i32> %479, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %481 = shufflevector <32 x i32> %480, <32 x i32> %453, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %482 = insertelement <32 x i32> poison, i32 %473, i64 0
  %483 = shufflevector <32 x i32> %482, <32 x i32> poison, <32 x i32> zeroinitializer
  %484 = lshr <32 x i32> %481, %483
  %485 = add nuw <32 x i32> %484, splat (i32 1)
  %486 = shufflevector <32 x i32> %485, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %486, ptr %452, align 4, !tbaa !25
  %487 = shufflevector <32 x i32> %485, <32 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %487, ptr %463, align 4, !tbaa !25
  %488 = shufflevector <32 x i32> %485, <32 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %488, ptr %470, align 4, !tbaa !25
  %489 = shufflevector <32 x i32> %485, <32 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %489, ptr %469, align 4, !tbaa !25
  %490 = shufflevector <32 x i32> %485, <32 x i32> poison, <4 x i32> <i32 16, i32 17, i32 18, i32 19>
  store <4 x i32> %490, ptr %468, align 4, !tbaa !25
  %491 = shufflevector <32 x i32> %485, <32 x i32> poison, <4 x i32> <i32 20, i32 21, i32 22, i32 23>
  store <4 x i32> %491, ptr %467, align 4, !tbaa !25
  %492 = shufflevector <32 x i32> %485, <32 x i32> poison, <4 x i32> <i32 24, i32 25, i32 26, i32 27>
  store <4 x i32> %492, ptr %466, align 4, !tbaa !25
  %493 = shufflevector <32 x i32> %485, <32 x i32> poison, <4 x i32> <i32 28, i32 29, i32 30, i32 31>
  store <4 x i32> %493, ptr %465, align 4, !tbaa !25
  %494 = load <4 x i32>, ptr %454, align 4, !tbaa !25
  %495 = insertelement <4 x i32> poison, i32 %473, i64 0
  %496 = shufflevector <4 x i32> %495, <4 x i32> poison, <4 x i32> zeroinitializer
  %497 = lshr <4 x i32> %494, %496
  %498 = add nuw <4 x i32> %497, splat (i32 1)
  %499 = add <4 x i32> %486, %498
  %500 = shufflevector <4 x i32> %499, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %501 = shufflevector <32 x i32> %500, <32 x i32> %485, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %502 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %501)
  store <4 x i32> %498, ptr %454, align 4, !tbaa !25
  br label %503

503:                                              ; preds = %462, %450
  %504 = phi i32 [ %460, %450 ], [ %502, %462 ]
  store i32 %504, ptr %10, align 4, !tbaa !74
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %506 = load ptr, ptr %505, align 8, !tbaa !55
  %507 = load <32 x i32>, ptr %506, align 4, !tbaa !25
  %508 = getelementptr inbounds nuw i8, ptr %506, i64 128
  %509 = load <20 x i32>, ptr %508, align 4, !tbaa !25
  %510 = getelementptr inbounds nuw i8, ptr %506, i64 208
  %511 = load i32, ptr %510, align 4, !tbaa !25
  %512 = shufflevector <20 x i32> %509, <20 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %513 = add <32 x i32> %507, %512
  %514 = shufflevector <32 x i32> %513, <32 x i32> %507, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %515 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %514)
  %516 = add i32 %515, %511
  %517 = icmp ult i32 %516, 4096
  br i1 %517, label %608, label %518

518:                                              ; preds = %503
  %519 = lshr i32 %516, 11
  %520 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %519, i1 true)
  %521 = xor i32 %520, 31
  %522 = insertelement <4 x i32> poison, i32 %521, i64 0
  %523 = shufflevector <4 x i32> %522, <4 x i32> poison, <4 x i32> zeroinitializer
  %524 = getelementptr inbounds nuw i8, ptr %506, i64 16
  %525 = load <4 x i32>, ptr %506, align 4, !tbaa !25
  %526 = load <4 x i32>, ptr %524, align 4, !tbaa !25
  %527 = lshr <4 x i32> %525, %523
  %528 = lshr <4 x i32> %526, %523
  %529 = add nuw <4 x i32> %527, splat (i32 1)
  %530 = add nuw <4 x i32> %528, splat (i32 1)
  store <4 x i32> %529, ptr %506, align 4, !tbaa !25
  store <4 x i32> %530, ptr %524, align 4, !tbaa !25
  %531 = getelementptr inbounds nuw i8, ptr %506, i64 32
  %532 = getelementptr inbounds nuw i8, ptr %506, i64 48
  %533 = load <4 x i32>, ptr %531, align 4, !tbaa !25
  %534 = load <4 x i32>, ptr %532, align 4, !tbaa !25
  %535 = lshr <4 x i32> %533, %523
  %536 = lshr <4 x i32> %534, %523
  %537 = add nuw <4 x i32> %535, splat (i32 1)
  %538 = add nuw <4 x i32> %536, splat (i32 1)
  store <4 x i32> %537, ptr %531, align 4, !tbaa !25
  store <4 x i32> %538, ptr %532, align 4, !tbaa !25
  %539 = getelementptr inbounds nuw i8, ptr %506, i64 64
  %540 = getelementptr inbounds nuw i8, ptr %506, i64 80
  %541 = load <4 x i32>, ptr %539, align 4, !tbaa !25
  %542 = load <4 x i32>, ptr %540, align 4, !tbaa !25
  %543 = lshr <4 x i32> %541, %523
  %544 = lshr <4 x i32> %542, %523
  %545 = add nuw <4 x i32> %543, splat (i32 1)
  %546 = add nuw <4 x i32> %544, splat (i32 1)
  store <4 x i32> %545, ptr %539, align 4, !tbaa !25
  store <4 x i32> %546, ptr %540, align 4, !tbaa !25
  %547 = getelementptr inbounds nuw i8, ptr %506, i64 96
  %548 = getelementptr inbounds nuw i8, ptr %506, i64 112
  %549 = load <4 x i32>, ptr %547, align 4, !tbaa !25
  %550 = load <4 x i32>, ptr %548, align 4, !tbaa !25
  %551 = lshr <4 x i32> %549, %523
  %552 = lshr <4 x i32> %550, %523
  %553 = add nuw <4 x i32> %551, splat (i32 1)
  %554 = add nuw <4 x i32> %552, splat (i32 1)
  store <4 x i32> %553, ptr %547, align 4, !tbaa !25
  store <4 x i32> %554, ptr %548, align 4, !tbaa !25
  %555 = getelementptr inbounds nuw i8, ptr %506, i64 128
  %556 = getelementptr inbounds nuw i8, ptr %506, i64 144
  %557 = load <4 x i32>, ptr %555, align 4, !tbaa !25
  %558 = load <4 x i32>, ptr %556, align 4, !tbaa !25
  %559 = lshr <4 x i32> %557, %523
  %560 = lshr <4 x i32> %558, %523
  %561 = add nuw <4 x i32> %559, splat (i32 1)
  %562 = add nuw <4 x i32> %560, splat (i32 1)
  store <4 x i32> %561, ptr %555, align 4, !tbaa !25
  store <4 x i32> %562, ptr %556, align 4, !tbaa !25
  %563 = getelementptr inbounds nuw i8, ptr %506, i64 160
  %564 = getelementptr inbounds nuw i8, ptr %506, i64 176
  %565 = load <4 x i32>, ptr %563, align 4, !tbaa !25
  %566 = load <4 x i32>, ptr %564, align 4, !tbaa !25
  %567 = lshr <4 x i32> %565, %523
  %568 = lshr <4 x i32> %566, %523
  %569 = add nuw <4 x i32> %567, splat (i32 1)
  %570 = add nuw <4 x i32> %568, splat (i32 1)
  store <4 x i32> %569, ptr %563, align 4, !tbaa !25
  store <4 x i32> %570, ptr %564, align 4, !tbaa !25
  %571 = add <4 x i32> %538, %530
  %572 = add <4 x i32> %546, %571
  %573 = add <4 x i32> %554, %572
  %574 = add <4 x i32> %562, %573
  %575 = add <4 x i32> %570, %574
  %576 = add <4 x i32> %537, %529
  %577 = add <4 x i32> %545, %576
  %578 = add <4 x i32> %553, %577
  %579 = add <4 x i32> %561, %578
  %580 = add <4 x i32> %569, %579
  %581 = add <4 x i32> %575, %580
  %582 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %581)
  %583 = getelementptr inbounds nuw i8, ptr %506, i64 192
  %584 = load i32, ptr %583, align 4, !tbaa !25
  %585 = lshr i32 %584, %521
  %586 = add nuw i32 %585, 1
  %587 = add i32 %586, %582
  store i32 %586, ptr %583, align 4, !tbaa !25
  %588 = getelementptr inbounds nuw i8, ptr %506, i64 196
  %589 = load i32, ptr %588, align 4, !tbaa !25
  %590 = lshr i32 %589, %521
  %591 = add nuw i32 %590, 1
  %592 = add i32 %591, %587
  store i32 %591, ptr %588, align 4, !tbaa !25
  %593 = getelementptr inbounds nuw i8, ptr %506, i64 200
  %594 = load i32, ptr %593, align 4, !tbaa !25
  %595 = lshr i32 %594, %521
  %596 = add nuw i32 %595, 1
  %597 = add i32 %596, %592
  store i32 %596, ptr %593, align 4, !tbaa !25
  %598 = getelementptr inbounds nuw i8, ptr %506, i64 204
  %599 = load i32, ptr %598, align 4, !tbaa !25
  %600 = lshr i32 %599, %521
  %601 = add nuw i32 %600, 1
  %602 = add i32 %601, %597
  store i32 %601, ptr %598, align 4, !tbaa !25
  %603 = getelementptr inbounds nuw i8, ptr %506, i64 208
  %604 = load i32, ptr %603, align 4, !tbaa !25
  %605 = lshr i32 %604, %521
  %606 = add nuw i32 %605, 1
  %607 = add i32 %606, %602
  store i32 %606, ptr %603, align 4, !tbaa !25
  br label %608

608:                                              ; preds = %518, %503
  %609 = phi i32 [ %516, %503 ], [ %607, %518 ]
  %610 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %609, ptr %610, align 8, !tbaa !76
  %611 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %612 = load ptr, ptr %611, align 8, !tbaa !53
  %613 = load <32 x i32>, ptr %612, align 4, !tbaa !25
  %614 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %613)
  %615 = icmp ult i32 %614, 4096
  br i1 %615, label %670, label %616

616:                                              ; preds = %608
  %617 = getelementptr inbounds nuw i8, ptr %612, i64 4
  %618 = load i32, ptr %617, align 4, !tbaa !25
  %619 = load <9 x i32>, ptr %612, align 4, !tbaa !25
  %620 = getelementptr inbounds nuw i8, ptr %612, i64 124
  %621 = getelementptr inbounds nuw i8, ptr %612, i64 120
  %622 = getelementptr inbounds nuw i8, ptr %612, i64 116
  %623 = getelementptr inbounds nuw i8, ptr %612, i64 112
  %624 = getelementptr inbounds nuw i8, ptr %612, i64 104
  %625 = getelementptr inbounds nuw i8, ptr %612, i64 100
  %626 = getelementptr inbounds nuw i8, ptr %612, i64 88
  %627 = getelementptr inbounds nuw i8, ptr %612, i64 72
  %628 = getelementptr inbounds nuw i8, ptr %612, i64 56
  %629 = getelementptr inbounds nuw i8, ptr %612, i64 40
  %630 = getelementptr inbounds nuw i8, ptr %612, i64 24
  %631 = getelementptr inbounds nuw i8, ptr %612, i64 8
  %632 = lshr i32 %614, 11
  %633 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %632, i1 true)
  %634 = xor i32 %633, 31
  %635 = lshr i32 %618, %634
  %636 = add nuw i32 %635, 1
  store i32 %636, ptr %617, align 4, !tbaa !25
  %637 = load <4 x i32>, ptr %625, align 4, !tbaa !25
  %638 = shufflevector <9 x i32> %619, <9 x i32> poison, <28 x i32> <i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %639 = shufflevector <28 x i32> %638, <28 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %640 = shufflevector <32 x i32> %639, <32 x i32> %613, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 poison, i32 poison, i32 poison, i32 poison>
  %641 = shufflevector <4 x i32> %637, <4 x i32> poison, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %642 = shufflevector <28 x i32> %640, <28 x i32> %641, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %643 = insertelement <28 x i32> poison, i32 %634, i64 0
  %644 = shufflevector <28 x i32> %643, <28 x i32> poison, <28 x i32> zeroinitializer
  %645 = lshr <28 x i32> %642, %644
  %646 = add nuw <28 x i32> %645, splat (i32 1)
  %647 = extractelement <28 x i32> %646, i64 0
  store i32 %647, ptr %612, align 4, !tbaa !25
  %648 = shufflevector <28 x i32> %646, <28 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  store <4 x i32> %648, ptr %631, align 4, !tbaa !25
  %649 = shufflevector <28 x i32> %646, <28 x i32> poison, <4 x i32> <i32 5, i32 6, i32 7, i32 8>
  store <4 x i32> %649, ptr %630, align 4, !tbaa !25
  %650 = shufflevector <28 x i32> %646, <28 x i32> poison, <4 x i32> <i32 9, i32 10, i32 11, i32 12>
  store <4 x i32> %650, ptr %629, align 4, !tbaa !25
  %651 = shufflevector <28 x i32> %646, <28 x i32> poison, <4 x i32> <i32 13, i32 14, i32 15, i32 16>
  store <4 x i32> %651, ptr %628, align 4, !tbaa !25
  %652 = shufflevector <28 x i32> %646, <28 x i32> poison, <4 x i32> <i32 17, i32 18, i32 19, i32 20>
  store <4 x i32> %652, ptr %627, align 4, !tbaa !25
  %653 = shufflevector <28 x i32> %646, <28 x i32> poison, <4 x i32> <i32 21, i32 22, i32 23, i32 24>
  store <4 x i32> %653, ptr %626, align 4, !tbaa !25
  %654 = shufflevector <28 x i32> %646, <28 x i32> poison, <2 x i32> <i32 25, i32 26>
  store <2 x i32> %654, ptr %624, align 4, !tbaa !25
  %655 = extractelement <28 x i32> %646, i64 27
  store i32 %655, ptr %623, align 4, !tbaa !25
  %656 = load i32, ptr %622, align 4, !tbaa !25
  %657 = lshr i32 %656, %634
  %658 = add nuw i32 %657, 1
  store i32 %658, ptr %622, align 4, !tbaa !25
  %659 = load i32, ptr %621, align 4, !tbaa !25
  %660 = lshr i32 %659, %634
  %661 = add nuw i32 %660, 1
  store i32 %661, ptr %621, align 4, !tbaa !25
  %662 = load i32, ptr %620, align 4, !tbaa !25
  %663 = lshr i32 %662, %634
  %664 = add nuw i32 %663, 1
  %665 = tail call i32 @llvm.vector.reduce.add.v28i32(<28 x i32> %646)
  %666 = add i32 %665, %636
  %667 = add i32 %658, %661
  %668 = add i32 %666, %667
  %669 = add i32 %668, %664
  store i32 %664, ptr %620, align 4, !tbaa !25
  br label %670

670:                                              ; preds = %608, %616, %195
  %671 = phi i32 [ 53, %195 ], [ %614, %608 ], [ %669, %616 ]
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %671, ptr %672, align 4, !tbaa !75
  br label %673

673:                                              ; preds = %139, %670
  %674 = phi i32 [ %671, %670 ], [ %163, %139 ]
  %675 = load i32, ptr %6, align 8, !tbaa !57
  %676 = icmp eq i32 %675, 2
  br i1 %676, label %695, label %677

677:                                              ; preds = %673
  %678 = icmp eq i32 %3, 0
  %679 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %680 = load i32, ptr %679, align 8, !tbaa !73
  %681 = add i32 %680, 1
  %682 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %681, i1 true)
  br i1 %678, label %689, label %683

683:                                              ; preds = %677
  %684 = xor i32 %682, 31
  %685 = shl nuw nsw i32 %684, 8
  %686 = shl i32 %681, 8
  %687 = lshr i32 %686, %684
  %688 = add i32 %685, %687
  br label %692

689:                                              ; preds = %677
  %690 = shl nuw nsw i32 %682, 8
  %691 = xor i32 %690, 7936
  br label %692

692:                                              ; preds = %689, %683
  %693 = phi i32 [ %688, %683 ], [ %691, %689 ]
  %694 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %693, ptr %694, align 8, !tbaa !58
  br label %695

695:                                              ; preds = %692, %673
  %696 = icmp eq i32 %3, 0
  %697 = load i32, ptr %10, align 4, !tbaa !74
  %698 = add i32 %697, 1
  %699 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %698, i1 true)
  br i1 %696, label %722, label %700

700:                                              ; preds = %695
  %701 = xor i32 %699, 31
  %702 = shl nuw nsw i32 %701, 8
  %703 = shl i32 %698, 8
  %704 = lshr i32 %703, %701
  %705 = add i32 %702, %704
  %706 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %707 = load i32, ptr %706, align 8, !tbaa !76
  %708 = add i32 %707, 1
  %709 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %708, i1 true)
  %710 = xor i32 %709, 31
  %711 = shl nuw nsw i32 %710, 8
  %712 = shl i32 %708, 8
  %713 = lshr i32 %712, %710
  %714 = add i32 %711, %713
  %715 = add i32 %674, 1
  %716 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %715, i1 true)
  %717 = xor i32 %716, 31
  %718 = shl nuw nsw i32 %717, 8
  %719 = shl i32 %715, 8
  %720 = lshr i32 %719, %717
  %721 = add i32 %718, %720
  br label %735

722:                                              ; preds = %695
  %723 = shl nuw nsw i32 %699, 8
  %724 = xor i32 %723, 7936
  %725 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %726 = load i32, ptr %725, align 8, !tbaa !76
  %727 = add i32 %726, 1
  %728 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %727, i1 true)
  %729 = shl nuw nsw i32 %728, 8
  %730 = xor i32 %729, 7936
  %731 = add i32 %674, 1
  %732 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %731, i1 true)
  %733 = shl nuw nsw i32 %732, 8
  %734 = xor i32 %733, 7936
  br label %735

735:                                              ; preds = %700, %722
  %736 = phi i32 [ %724, %722 ], [ %705, %700 ]
  %737 = phi i32 [ %730, %722 ], [ %714, %700 ]
  %738 = phi i32 [ %734, %722 ], [ %721, %700 ]
  %739 = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %736, ptr %739, align 4, !tbaa !40
  %740 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %737, ptr %740, align 8, !tbaa !54
  %741 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %738, ptr %741, align 4, !tbaa !52
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef nonnull captures(none) %0, ptr noundef captures(none) %1, ptr noundef nonnull captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 3, 5) %5) unnamed_addr #8 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i64, ptr %7, align 8, !tbaa !118
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %83, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !119
  %13 = icmp ult i64 %12, %8
  br i1 %13, label %14, label %83

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %16 = load i32, ptr %15, align 4, !tbaa !35
  %17 = icmp ult i32 %3, %16
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = icmp ugt i32 %3, %16
  br i1 %19, label %20, label %49

20:                                               ; preds = %18
  %21 = sub nuw i32 %3, %16
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = load i64, ptr %22, align 8, !tbaa !122
  %24 = trunc i64 %23 to i32
  %25 = add i32 %21, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %20, %42
  %28 = phi i64 [ %44, %42 ], [ %12, %20 ]
  %29 = phi i32 [ %43, %42 ], [ %25, %20 ]
  %30 = icmp ult i64 %28, %8
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !135
  %33 = getelementptr inbounds nuw %struct.rawSeq, ptr %32, i64 %28
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 4
  %35 = load i32, ptr %34, align 4, !tbaa !25
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %37 = load i32, ptr %36, align 4, !tbaa !25
  %38 = add i32 %37, %35
  %39 = icmp ult i32 %29, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = zext i32 %29 to i64
  store i64 %41, ptr %22, align 8, !tbaa !122
  br label %46

42:                                               ; preds = %31
  %43 = sub nuw i32 %29, %38
  %44 = add nuw i64 %28, 1
  store i64 %44, ptr %11, align 8, !tbaa !123
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %48, label %27

46:                                               ; preds = %27, %40
  %47 = icmp eq i64 %28, %8
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %46, %20
  store i64 0, ptr %22, align 8, !tbaa !122
  br label %49

49:                                               ; preds = %48, %46, %18
  tail call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef %0, i32 noundef %3, i32 noundef %4)
  %50 = load i32, ptr %15, align 4, !tbaa !35
  br label %51

51:                                               ; preds = %49, %14
  %52 = phi i32 [ %50, %49 ], [ %16, %14 ]
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %54 = load i32, ptr %53, align 8, !tbaa !34
  %55 = sub i32 %52, %3
  %56 = icmp ult i32 %3, %54
  %57 = icmp uge i32 %3, %52
  %58 = icmp ult i32 %55, %5
  %59 = or i1 %57, %58
  %60 = select i1 %56, i1 true, i1 %59
  br i1 %60, label %83, label %61

61:                                               ; preds = %51
  %62 = load i32, ptr %2, align 4, !tbaa !25
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = add i32 %62, -1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %1, i64 %66, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !44
  %69 = icmp ugt i32 %55, %68
  %70 = icmp ult i32 %62, 4096
  %71 = and i1 %70, %69
  br i1 %71, label %72, label %83

72:                                               ; preds = %64, %61
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %74 = load i32, ptr %73, align 8, !tbaa !31
  %75 = add i32 %74, 3
  %76 = zext nneg i32 %62 to i64
  %77 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %1, i64 %76, i32 1
  store i32 %55, ptr %77, align 4, !tbaa !44
  %78 = load i32, ptr %2, align 4, !tbaa !25
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %1, i64 %79
  store i32 %75, ptr %80, align 4, !tbaa !46
  %81 = load i32, ptr %2, align 4, !tbaa !25
  %82 = add i32 %81, 1
  store i32 %82, ptr %2, align 4, !tbaa !25
  br label %83

83:                                               ; preds = %72, %64, %51, %6, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_noDict_3(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %720, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %13, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 3, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !20

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !18
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi i64 [ %33, %30 ], [ %20, %17 ]
  %38 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %41 = load i32, ptr %40, align 4, !tbaa !24
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 4095)
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %44 = load i32, ptr %43, align 4, !tbaa !109
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %46 = load ptr, ptr %45, align 8, !tbaa !108
  %47 = load i32, ptr %3, align 1, !tbaa !25
  %48 = mul i32 %47, -1640531535
  %49 = sub i32 32, %44
  %50 = lshr i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds nuw i32, ptr %46, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !25
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %55 = load ptr, ptr %54, align 8, !tbaa !110
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %57 = load i32, ptr %56, align 4, !tbaa !111
  %58 = add i32 %57, -1
  %59 = shl nsw i32 -1, %58
  %60 = xor i32 %59, -1
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %62 = load i32, ptr %61, align 8, !tbaa !22
  %63 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %60)
  %64 = load i32, ptr %39, align 4, !tbaa !113
  %65 = getelementptr i8, ptr %1, i64 28
  %66 = load i32, ptr %65, align 4, !tbaa !107
  %67 = getelementptr i8, ptr %1, i64 40
  %68 = load i32, ptr %67, align 8, !tbaa !114
  %69 = shl nuw i32 1, %64
  %70 = sub i32 %36, %66
  %71 = icmp ugt i32 %70, %69
  %72 = sub i32 %36, %69
  %73 = icmp eq i32 %68, 0
  %74 = select i1 %73, i1 %71, i1 false
  %75 = select i1 %74, i32 %72, i32 %66
  %76 = tail call i32 @llvm.umax.i32(i32 %75, i32 1)
  %77 = and i32 %36, %60
  %78 = shl nuw i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds nuw i32, ptr %55, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 4
  %82 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %84 = load i32, ptr %83, align 4, !tbaa !115
  %85 = shl nuw i32 1, %84
  %86 = add i32 %7, -1
  %87 = zext i32 %86 to i64
  %88 = icmp ult i32 %6, -3
  br i1 %88, label %89, label %409

89:                                               ; preds = %35
  %90 = sub i32 %36, %62
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %92 = getelementptr inbounds i8, ptr %4, i64 -7
  %93 = icmp ult ptr %91, %92
  %94 = getelementptr inbounds i8, ptr %4, i64 -3
  %95 = getelementptr inbounds i8, ptr %4, i64 -1
  %96 = ptrtoint ptr %91 to i64
  %97 = zext i32 %6 to i64
  %98 = icmp eq i32 %6, 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, ptr %5, align 4, !tbaa !25
  %101 = add i32 %100, -1
  br label %105

102:                                              ; preds = %89
  %103 = getelementptr inbounds nuw i32, ptr %5, i64 %97
  %104 = load i32, ptr %103, align 4, !tbaa !25
  br label %105

105:                                              ; preds = %102, %99
  %106 = phi i32 [ %101, %99 ], [ %104, %102 ]
  %107 = add i32 %106, -1
  %108 = icmp ult i32 %107, %90
  br i1 %108, label %109, label %195

109:                                              ; preds = %105
  %110 = sub i32 %36, %106
  %111 = icmp uge i32 %110, %75
  %112 = zext i32 %106 to i64
  %113 = sub nsw i64 0, %112
  %114 = getelementptr inbounds i8, ptr %3, i64 %113
  %115 = load i32, ptr %114, align 1, !tbaa !25
  %116 = xor i32 %115, %47
  %117 = and i32 %116, 16777215
  %118 = icmp eq i32 %117, 0
  %119 = and i1 %111, %118
  br i1 %119, label %120, label %195

120:                                              ; preds = %109
  %121 = getelementptr inbounds i8, ptr %91, i64 %113
  br i1 %93, label %122, label %147

122:                                              ; preds = %120
  %123 = load i64, ptr %121, align 1, !tbaa !30
  %124 = load i64, ptr %91, align 1, !tbaa !30
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = xor i64 %124, %123
  %128 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %127, i1 true)
  %129 = lshr i64 %128, 3
  br label %183

130:                                              ; preds = %122, %136
  %131 = phi ptr [ %134, %136 ], [ %121, %122 ]
  %132 = phi ptr [ %133, %136 ], [ %91, %122 ]
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 8
  %134 = getelementptr inbounds nuw i8, ptr %131, i64 8
  %135 = icmp ult ptr %133, %92
  br i1 %135, label %136, label %147

136:                                              ; preds = %130
  %137 = load i64, ptr %134, align 1, !tbaa !30
  %138 = load i64, ptr %133, align 1, !tbaa !30
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %130, label %140

140:                                              ; preds = %136
  %141 = xor i64 %138, %137
  %142 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %141, i1 true)
  %143 = lshr i64 %142, 3
  %144 = getelementptr inbounds nuw i8, ptr %133, i64 %143
  %145 = ptrtoint ptr %144 to i64
  %146 = sub i64 %145, %96
  br label %183

147:                                              ; preds = %130, %120
  %148 = phi ptr [ %121, %120 ], [ %134, %130 ]
  %149 = phi ptr [ %91, %120 ], [ %133, %130 ]
  %150 = icmp ult ptr %149, %94
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = load i32, ptr %148, align 1, !tbaa !25
  %153 = load i32, ptr %149, align 1, !tbaa !25
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = getelementptr inbounds nuw i8, ptr %149, i64 4
  %157 = getelementptr inbounds nuw i8, ptr %148, i64 4
  br label %158

158:                                              ; preds = %155, %151, %147
  %159 = phi ptr [ %157, %155 ], [ %148, %151 ], [ %148, %147 ]
  %160 = phi ptr [ %156, %155 ], [ %149, %151 ], [ %149, %147 ]
  %161 = icmp ult ptr %160, %95
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i16, ptr %159, align 1, !tbaa !116
  %164 = load i16, ptr %160, align 1, !tbaa !116
  %165 = icmp eq i16 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = getelementptr inbounds nuw i8, ptr %160, i64 2
  %168 = getelementptr inbounds nuw i8, ptr %159, i64 2
  br label %169

169:                                              ; preds = %166, %162, %158
  %170 = phi ptr [ %168, %166 ], [ %159, %162 ], [ %159, %158 ]
  %171 = phi ptr [ %167, %166 ], [ %160, %162 ], [ %160, %158 ]
  %172 = icmp ult ptr %171, %4
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load i8, ptr %170, align 1, !tbaa !42
  %175 = load i8, ptr %171, align 1, !tbaa !42
  %176 = icmp eq i8 %174, %175
  %177 = zext i1 %176 to i64
  %178 = getelementptr inbounds nuw i8, ptr %171, i64 %177
  br label %179

179:                                              ; preds = %173, %169
  %180 = phi ptr [ %171, %169 ], [ %178, %173 ]
  %181 = ptrtoint ptr %180 to i64
  %182 = sub i64 %181, %96
  br label %183

183:                                              ; preds = %179, %140, %126
  %184 = phi i64 [ %182, %179 ], [ %129, %126 ], [ %146, %140 ]
  %185 = trunc i64 %184 to i32
  %186 = add i32 %185, 3
  %187 = icmp ult i32 %86, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  %189 = zext i32 %186 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %186, ptr %190, align 4, !tbaa !44
  %191 = icmp ule i32 %186, %42
  %192 = getelementptr inbounds nuw i8, ptr %3, i64 %189
  %193 = icmp ne ptr %192, %4
  %194 = and i1 %191, %193
  br i1 %194, label %195, label %718

195:                                              ; preds = %105, %109, %183, %188
  %196 = phi i32 [ 1, %188 ], [ 0, %183 ], [ 0, %109 ], [ 0, %105 ]
  %197 = phi i64 [ %189, %188 ], [ %87, %183 ], [ %87, %109 ], [ %87, %105 ]
  %198 = add nuw nsw i64 %97, 1
  %199 = icmp eq i64 %198, 3
  br i1 %199, label %203, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds nuw i32, ptr %5, i64 %198
  %202 = load i32, ptr %201, align 4, !tbaa !25
  br label %206

203:                                              ; preds = %195
  %204 = load i32, ptr %5, align 4, !tbaa !25
  %205 = add i32 %204, -1
  br label %206

206:                                              ; preds = %203, %200
  %207 = phi i32 [ %205, %203 ], [ %202, %200 ]
  %208 = add i32 %207, -1
  %209 = icmp ult i32 %208, %90
  br i1 %209, label %210, label %289

210:                                              ; preds = %206
  %211 = sub i32 %36, %207
  %212 = icmp uge i32 %211, %75
  %213 = load i32, ptr %3, align 1, !tbaa !25
  %214 = zext i32 %207 to i64
  %215 = sub nsw i64 0, %214
  %216 = getelementptr inbounds i8, ptr %3, i64 %215
  %217 = load i32, ptr %216, align 1, !tbaa !25
  %218 = xor i32 %217, %213
  %219 = and i32 %218, 16777215
  %220 = icmp eq i32 %219, 0
  %221 = and i1 %212, %220
  br i1 %221, label %222, label %289

222:                                              ; preds = %210
  %223 = getelementptr inbounds i8, ptr %91, i64 %215
  br i1 %93, label %224, label %238

224:                                              ; preds = %222
  %225 = load i64, ptr %223, align 1, !tbaa !30
  %226 = load i64, ptr %91, align 1, !tbaa !30
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = xor i64 %226, %225
  %230 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %229, i1 true)
  %231 = lshr i64 %230, 3
  br label %285

232:                                              ; preds = %224, %274
  %233 = phi ptr [ %236, %274 ], [ %223, %224 ]
  %234 = phi ptr [ %235, %274 ], [ %91, %224 ]
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 8
  %236 = getelementptr inbounds nuw i8, ptr %233, i64 8
  %237 = icmp ult ptr %235, %92
  br i1 %237, label %274, label %238

238:                                              ; preds = %232, %222
  %239 = phi ptr [ %223, %222 ], [ %236, %232 ]
  %240 = phi ptr [ %91, %222 ], [ %235, %232 ]
  %241 = icmp ult ptr %240, %94
  br i1 %241, label %242, label %249

242:                                              ; preds = %238
  %243 = load i32, ptr %239, align 1, !tbaa !25
  %244 = load i32, ptr %240, align 1, !tbaa !25
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = getelementptr inbounds nuw i8, ptr %240, i64 4
  %248 = getelementptr inbounds nuw i8, ptr %239, i64 4
  br label %249

249:                                              ; preds = %246, %242, %238
  %250 = phi ptr [ %248, %246 ], [ %239, %242 ], [ %239, %238 ]
  %251 = phi ptr [ %247, %246 ], [ %240, %242 ], [ %240, %238 ]
  %252 = icmp ult ptr %251, %95
  br i1 %252, label %253, label %260

253:                                              ; preds = %249
  %254 = load i16, ptr %250, align 1, !tbaa !116
  %255 = load i16, ptr %251, align 1, !tbaa !116
  %256 = icmp eq i16 %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = getelementptr inbounds nuw i8, ptr %251, i64 2
  %259 = getelementptr inbounds nuw i8, ptr %250, i64 2
  br label %260

260:                                              ; preds = %257, %253, %249
  %261 = phi ptr [ %259, %257 ], [ %250, %253 ], [ %250, %249 ]
  %262 = phi ptr [ %258, %257 ], [ %251, %253 ], [ %251, %249 ]
  %263 = icmp ult ptr %262, %4
  br i1 %263, label %264, label %270

264:                                              ; preds = %260
  %265 = load i8, ptr %261, align 1, !tbaa !42
  %266 = load i8, ptr %262, align 1, !tbaa !42
  %267 = icmp eq i8 %265, %266
  %268 = zext i1 %267 to i64
  %269 = getelementptr inbounds nuw i8, ptr %262, i64 %268
  br label %270

270:                                              ; preds = %264, %260
  %271 = phi ptr [ %262, %260 ], [ %269, %264 ]
  %272 = ptrtoint ptr %271 to i64
  %273 = sub i64 %272, %96
  br label %285

274:                                              ; preds = %232
  %275 = load i64, ptr %236, align 1, !tbaa !30
  %276 = load i64, ptr %235, align 1, !tbaa !30
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %232, label %278

278:                                              ; preds = %274
  %279 = xor i64 %276, %275
  %280 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %279, i1 true)
  %281 = lshr i64 %280, 3
  %282 = getelementptr inbounds nuw i8, ptr %235, i64 %281
  %283 = ptrtoint ptr %282 to i64
  %284 = sub i64 %283, %96
  br label %285

285:                                              ; preds = %278, %270, %228
  %286 = phi i64 [ %273, %270 ], [ %231, %228 ], [ %284, %278 ]
  %287 = trunc i64 %286 to i32
  %288 = add i32 %287, 3
  br label %289

289:                                              ; preds = %285, %210, %206
  %290 = phi i32 [ %288, %285 ], [ 0, %210 ], [ 0, %206 ]
  %291 = zext i32 %290 to i64
  %292 = icmp samesign ult i64 %197, %291
  br i1 %292, label %293, label %302

293:                                              ; preds = %289
  %294 = zext nneg i32 %196 to i64
  %295 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %294
  store i32 2, ptr %295, align 4, !tbaa !46
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 4
  store i32 %290, ptr %296, align 4, !tbaa !44
  %297 = add nuw nsw i32 %196, 1
  %298 = icmp ule i32 %290, %42
  %299 = getelementptr inbounds nuw i8, ptr %3, i64 %291
  %300 = icmp ne ptr %299, %4
  %301 = and i1 %298, %300
  br i1 %301, label %302, label %718

302:                                              ; preds = %293, %289
  %303 = phi i32 [ %297, %293 ], [ %196, %289 ]
  %304 = phi i64 [ %291, %293 ], [ %197, %289 ]
  %305 = add nuw nsw i64 %97, 2
  %306 = icmp eq i64 %305, 3
  br i1 %306, label %310, label %307

307:                                              ; preds = %302
  %308 = getelementptr inbounds nuw i32, ptr %5, i64 %305
  %309 = load i32, ptr %308, align 4, !tbaa !25
  br label %313

310:                                              ; preds = %302
  %311 = load i32, ptr %5, align 4, !tbaa !25
  %312 = add i32 %311, -1
  br label %313

313:                                              ; preds = %310, %307
  %314 = phi i32 [ %312, %310 ], [ %309, %307 ]
  %315 = add i32 %314, -1
  %316 = icmp ult i32 %315, %90
  br i1 %316, label %317, label %396

317:                                              ; preds = %313
  %318 = sub i32 %36, %314
  %319 = icmp uge i32 %318, %75
  %320 = load i32, ptr %3, align 1, !tbaa !25
  %321 = zext i32 %314 to i64
  %322 = sub nsw i64 0, %321
  %323 = getelementptr inbounds i8, ptr %3, i64 %322
  %324 = load i32, ptr %323, align 1, !tbaa !25
  %325 = xor i32 %324, %320
  %326 = and i32 %325, 16777215
  %327 = icmp eq i32 %326, 0
  %328 = and i1 %319, %327
  br i1 %328, label %329, label %396

329:                                              ; preds = %317
  %330 = getelementptr inbounds i8, ptr %91, i64 %322
  br i1 %93, label %331, label %345

331:                                              ; preds = %329
  %332 = load i64, ptr %330, align 1, !tbaa !30
  %333 = load i64, ptr %91, align 1, !tbaa !30
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %339, label %335

335:                                              ; preds = %331
  %336 = xor i64 %333, %332
  %337 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %336, i1 true)
  %338 = lshr i64 %337, 3
  br label %392

339:                                              ; preds = %331, %381
  %340 = phi ptr [ %343, %381 ], [ %330, %331 ]
  %341 = phi ptr [ %342, %381 ], [ %91, %331 ]
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 8
  %343 = getelementptr inbounds nuw i8, ptr %340, i64 8
  %344 = icmp ult ptr %342, %92
  br i1 %344, label %381, label %345

345:                                              ; preds = %339, %329
  %346 = phi ptr [ %330, %329 ], [ %343, %339 ]
  %347 = phi ptr [ %91, %329 ], [ %342, %339 ]
  %348 = icmp ult ptr %347, %94
  br i1 %348, label %349, label %356

349:                                              ; preds = %345
  %350 = load i32, ptr %346, align 1, !tbaa !25
  %351 = load i32, ptr %347, align 1, !tbaa !25
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %349
  %354 = getelementptr inbounds nuw i8, ptr %347, i64 4
  %355 = getelementptr inbounds nuw i8, ptr %346, i64 4
  br label %356

356:                                              ; preds = %353, %349, %345
  %357 = phi ptr [ %355, %353 ], [ %346, %349 ], [ %346, %345 ]
  %358 = phi ptr [ %354, %353 ], [ %347, %349 ], [ %347, %345 ]
  %359 = icmp ult ptr %358, %95
  br i1 %359, label %360, label %367

360:                                              ; preds = %356
  %361 = load i16, ptr %357, align 1, !tbaa !116
  %362 = load i16, ptr %358, align 1, !tbaa !116
  %363 = icmp eq i16 %361, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %360
  %365 = getelementptr inbounds nuw i8, ptr %358, i64 2
  %366 = getelementptr inbounds nuw i8, ptr %357, i64 2
  br label %367

367:                                              ; preds = %364, %360, %356
  %368 = phi ptr [ %366, %364 ], [ %357, %360 ], [ %357, %356 ]
  %369 = phi ptr [ %365, %364 ], [ %358, %360 ], [ %358, %356 ]
  %370 = icmp ult ptr %369, %4
  br i1 %370, label %371, label %377

371:                                              ; preds = %367
  %372 = load i8, ptr %368, align 1, !tbaa !42
  %373 = load i8, ptr %369, align 1, !tbaa !42
  %374 = icmp eq i8 %372, %373
  %375 = zext i1 %374 to i64
  %376 = getelementptr inbounds nuw i8, ptr %369, i64 %375
  br label %377

377:                                              ; preds = %371, %367
  %378 = phi ptr [ %369, %367 ], [ %376, %371 ]
  %379 = ptrtoint ptr %378 to i64
  %380 = sub i64 %379, %96
  br label %392

381:                                              ; preds = %339
  %382 = load i64, ptr %343, align 1, !tbaa !30
  %383 = load i64, ptr %342, align 1, !tbaa !30
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %339, label %385

385:                                              ; preds = %381
  %386 = xor i64 %383, %382
  %387 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %386, i1 true)
  %388 = lshr i64 %387, 3
  %389 = getelementptr inbounds nuw i8, ptr %342, i64 %388
  %390 = ptrtoint ptr %389 to i64
  %391 = sub i64 %390, %96
  br label %392

392:                                              ; preds = %385, %377, %335
  %393 = phi i64 [ %380, %377 ], [ %338, %335 ], [ %391, %385 ]
  %394 = trunc i64 %393 to i32
  %395 = add i32 %394, 3
  br label %396

396:                                              ; preds = %392, %317, %313
  %397 = phi i32 [ %395, %392 ], [ 0, %317 ], [ 0, %313 ]
  %398 = zext i32 %397 to i64
  %399 = icmp samesign ult i64 %304, %398
  br i1 %399, label %400, label %409

400:                                              ; preds = %396
  %401 = zext nneg i32 %303 to i64
  %402 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %401
  store i32 3, ptr %402, align 4, !tbaa !46
  %403 = getelementptr inbounds nuw i8, ptr %402, i64 4
  store i32 %397, ptr %403, align 4, !tbaa !44
  %404 = add nuw nsw i32 %303, 1
  %405 = icmp ule i32 %397, %42
  %406 = getelementptr inbounds nuw i8, ptr %3, i64 %398
  %407 = icmp ne ptr %406, %4
  %408 = and i1 %405, %407
  br i1 %408, label %409, label %718

409:                                              ; preds = %396, %400, %35
  %410 = phi i64 [ %87, %35 ], [ %398, %400 ], [ %304, %396 ]
  %411 = phi i32 [ 0, %35 ], [ %404, %400 ], [ %303, %396 ]
  %412 = icmp samesign ult i64 %410, 3
  br i1 %412, label %413, label %572

413:                                              ; preds = %409
  %414 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %415 = load ptr, ptr %414, align 8, !tbaa !136
  %416 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %417 = load i32, ptr %416, align 8, !tbaa !137
  %418 = load i32, ptr %2, align 4, !tbaa !25
  %419 = load i32, ptr %3, align 1, !tbaa !25
  %420 = sub i32 32, %417
  %421 = icmp ult i32 %418, %36
  br i1 %421, label %422, label %480

422:                                              ; preds = %413
  %423 = zext i32 %418 to i64
  %424 = and i64 %37, 4294967295
  %425 = sub i64 %37, %423
  %426 = and i64 %425, 3
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %441, label %428

428:                                              ; preds = %422, %428
  %429 = phi i64 [ %438, %428 ], [ %423, %422 ]
  %430 = phi i64 [ %439, %428 ], [ 0, %422 ]
  %431 = getelementptr inbounds nuw i8, ptr %38, i64 %429
  %432 = load i32, ptr %431, align 1, !tbaa !25
  %433 = mul i32 %432, 900185344
  %434 = lshr i32 %433, %420
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds nuw i32, ptr %415, i64 %435
  %437 = trunc nuw i64 %429 to i32
  store i32 %437, ptr %436, align 4, !tbaa !25
  %438 = add nuw nsw i64 %429, 1
  %439 = add i64 %430, 1
  %440 = icmp eq i64 %439, %426
  br i1 %440, label %441, label %428, !llvm.loop !138

441:                                              ; preds = %428, %422
  %442 = phi i64 [ %423, %422 ], [ %438, %428 ]
  %443 = sub nsw i64 %423, %424
  %444 = icmp ugt i64 %443, -4
  br i1 %444, label %480, label %445

445:                                              ; preds = %441, %445
  %446 = phi i64 [ %478, %445 ], [ %442, %441 ]
  %447 = getelementptr inbounds nuw i8, ptr %38, i64 %446
  %448 = load i32, ptr %447, align 1, !tbaa !25
  %449 = mul i32 %448, 900185344
  %450 = lshr i32 %449, %420
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds nuw i32, ptr %415, i64 %451
  %453 = trunc nuw i64 %446 to i32
  store i32 %453, ptr %452, align 4, !tbaa !25
  %454 = add nuw nsw i64 %446, 1
  %455 = getelementptr inbounds nuw i8, ptr %38, i64 %454
  %456 = load i32, ptr %455, align 1, !tbaa !25
  %457 = mul i32 %456, 900185344
  %458 = lshr i32 %457, %420
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds nuw i32, ptr %415, i64 %459
  %461 = trunc nuw i64 %454 to i32
  store i32 %461, ptr %460, align 4, !tbaa !25
  %462 = add nuw nsw i64 %446, 2
  %463 = getelementptr inbounds nuw i8, ptr %38, i64 %462
  %464 = load i32, ptr %463, align 1, !tbaa !25
  %465 = mul i32 %464, 900185344
  %466 = lshr i32 %465, %420
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds nuw i32, ptr %415, i64 %467
  %469 = trunc nuw i64 %462 to i32
  store i32 %469, ptr %468, align 4, !tbaa !25
  %470 = add nuw nsw i64 %446, 3
  %471 = getelementptr inbounds nuw i8, ptr %38, i64 %470
  %472 = load i32, ptr %471, align 1, !tbaa !25
  %473 = mul i32 %472, 900185344
  %474 = lshr i32 %473, %420
  %475 = zext i32 %474 to i64
  %476 = getelementptr inbounds nuw i32, ptr %415, i64 %475
  %477 = trunc nuw i64 %470 to i32
  store i32 %477, ptr %476, align 4, !tbaa !25
  %478 = add nuw nsw i64 %446, 4
  %479 = icmp eq i64 %478, %424
  br i1 %479, label %480, label %445, !llvm.loop !139

480:                                              ; preds = %441, %445, %413
  %481 = mul i32 %419, 900185344
  %482 = lshr i32 %481, %420
  %483 = zext i32 %482 to i64
  store i32 %36, ptr %2, align 4, !tbaa !25
  %484 = getelementptr inbounds nuw i32, ptr %415, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !25
  %486 = icmp uge i32 %485, %76
  %487 = sub i32 %36, %485
  %488 = icmp ult i32 %487, 262144
  %489 = and i1 %486, %488
  br i1 %489, label %490, label %572

490:                                              ; preds = %480
  %491 = zext i32 %485 to i64
  %492 = getelementptr inbounds nuw i8, ptr %38, i64 %491
  %493 = getelementptr inbounds i8, ptr %4, i64 -7
  %494 = icmp ult ptr %3, %493
  br i1 %494, label %495, label %520

495:                                              ; preds = %490
  %496 = load i64, ptr %492, align 1, !tbaa !30
  %497 = load i64, ptr %3, align 1, !tbaa !30
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %503, label %499

499:                                              ; preds = %495
  %500 = xor i64 %497, %496
  %501 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %500, i1 true)
  %502 = lshr i64 %501, 3
  br label %558

503:                                              ; preds = %495, %509
  %504 = phi ptr [ %507, %509 ], [ %492, %495 ]
  %505 = phi ptr [ %506, %509 ], [ %3, %495 ]
  %506 = getelementptr inbounds nuw i8, ptr %505, i64 8
  %507 = getelementptr inbounds nuw i8, ptr %504, i64 8
  %508 = icmp ult ptr %506, %493
  br i1 %508, label %509, label %520

509:                                              ; preds = %503
  %510 = load i64, ptr %507, align 1, !tbaa !30
  %511 = load i64, ptr %506, align 1, !tbaa !30
  %512 = icmp eq i64 %510, %511
  br i1 %512, label %503, label %513

513:                                              ; preds = %509
  %514 = xor i64 %511, %510
  %515 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %514, i1 true)
  %516 = lshr i64 %515, 3
  %517 = getelementptr inbounds nuw i8, ptr %506, i64 %516
  %518 = ptrtoint ptr %517 to i64
  %519 = sub i64 %518, %18
  br label %558

520:                                              ; preds = %503, %490
  %521 = phi ptr [ %492, %490 ], [ %507, %503 ]
  %522 = phi ptr [ %3, %490 ], [ %506, %503 ]
  %523 = getelementptr inbounds i8, ptr %4, i64 -3
  %524 = icmp ult ptr %522, %523
  br i1 %524, label %525, label %532

525:                                              ; preds = %520
  %526 = load i32, ptr %521, align 1, !tbaa !25
  %527 = load i32, ptr %522, align 1, !tbaa !25
  %528 = icmp eq i32 %526, %527
  br i1 %528, label %529, label %532

529:                                              ; preds = %525
  %530 = getelementptr inbounds nuw i8, ptr %522, i64 4
  %531 = getelementptr inbounds nuw i8, ptr %521, i64 4
  br label %532

532:                                              ; preds = %529, %525, %520
  %533 = phi ptr [ %531, %529 ], [ %521, %525 ], [ %521, %520 ]
  %534 = phi ptr [ %530, %529 ], [ %522, %525 ], [ %522, %520 ]
  %535 = getelementptr inbounds i8, ptr %4, i64 -1
  %536 = icmp ult ptr %534, %535
  br i1 %536, label %537, label %544

537:                                              ; preds = %532
  %538 = load i16, ptr %533, align 1, !tbaa !116
  %539 = load i16, ptr %534, align 1, !tbaa !116
  %540 = icmp eq i16 %538, %539
  br i1 %540, label %541, label %544

541:                                              ; preds = %537
  %542 = getelementptr inbounds nuw i8, ptr %534, i64 2
  %543 = getelementptr inbounds nuw i8, ptr %533, i64 2
  br label %544

544:                                              ; preds = %541, %537, %532
  %545 = phi ptr [ %543, %541 ], [ %533, %537 ], [ %533, %532 ]
  %546 = phi ptr [ %542, %541 ], [ %534, %537 ], [ %534, %532 ]
  %547 = icmp ult ptr %546, %4
  br i1 %547, label %548, label %554

548:                                              ; preds = %544
  %549 = load i8, ptr %545, align 1, !tbaa !42
  %550 = load i8, ptr %546, align 1, !tbaa !42
  %551 = icmp eq i8 %549, %550
  %552 = zext i1 %551 to i64
  %553 = getelementptr inbounds nuw i8, ptr %546, i64 %552
  br label %554

554:                                              ; preds = %548, %544
  %555 = phi ptr [ %546, %544 ], [ %553, %548 ]
  %556 = ptrtoint ptr %555 to i64
  %557 = sub i64 %556, %18
  br label %558

558:                                              ; preds = %499, %513, %554
  %559 = phi i64 [ %557, %554 ], [ %502, %499 ], [ %519, %513 ]
  %560 = icmp ugt i64 %559, 2
  br i1 %560, label %561, label %572

561:                                              ; preds = %558
  %562 = add nuw nsw i32 %487, 3
  store i32 %562, ptr %0, align 4, !tbaa !46
  %563 = trunc i64 %559 to i32
  %564 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %563, ptr %564, align 4, !tbaa !44
  %565 = zext nneg i32 %42 to i64
  %566 = icmp ugt i64 %559, %565
  %567 = getelementptr inbounds nuw i8, ptr %3, i64 %559
  %568 = icmp eq ptr %567, %4
  %569 = or i1 %566, %568
  br i1 %569, label %570, label %572

570:                                              ; preds = %561
  %571 = add i32 %36, 1
  br label %715

572:                                              ; preds = %558, %561, %480, %409
  %573 = phi i64 [ %410, %409 ], [ %410, %558 ], [ %559, %561 ], [ %410, %480 ]
  %574 = phi i32 [ %411, %409 ], [ %411, %558 ], [ 1, %561 ], [ %411, %480 ]
  store i32 %36, ptr %52, align 4, !tbaa !25
  %575 = icmp ult i32 %53, %76
  br i1 %575, label %709, label %576

576:                                              ; preds = %572
  %577 = getelementptr inbounds i8, ptr %4, i64 -7
  %578 = getelementptr inbounds i8, ptr %4, i64 -3
  %579 = getelementptr inbounds i8, ptr %4, i64 -1
  %580 = add i32 %36, 3
  br label %581

581:                                              ; preds = %576, %698
  %582 = phi i32 [ %53, %576 ], [ %704, %698 ]
  %583 = phi i64 [ 0, %576 ], [ %702, %698 ]
  %584 = phi i64 [ 0, %576 ], [ %701, %698 ]
  %585 = phi ptr [ %80, %576 ], [ %700, %698 ]
  %586 = phi ptr [ %81, %576 ], [ %699, %698 ]
  %587 = phi i32 [ %82, %576 ], [ %687, %698 ]
  %588 = phi i32 [ %574, %576 ], [ %686, %698 ]
  %589 = phi i32 [ %85, %576 ], [ %705, %698 ]
  %590 = phi i64 [ %573, %576 ], [ %685, %698 ]
  %591 = and i32 %582, %60
  %592 = shl nuw i32 %591, 1
  %593 = zext i32 %592 to i64
  %594 = getelementptr inbounds nuw i32, ptr %55, i64 %593
  %595 = tail call i64 @llvm.umin.i64(i64 %583, i64 %584)
  %596 = zext i32 %582 to i64
  %597 = getelementptr inbounds nuw i8, ptr %38, i64 %596
  %598 = getelementptr inbounds nuw i8, ptr %3, i64 %595
  %599 = getelementptr inbounds nuw i8, ptr %597, i64 %595
  %600 = icmp ult ptr %598, %577
  br i1 %600, label %601, label %627

601:                                              ; preds = %581
  %602 = load i64, ptr %599, align 1, !tbaa !30
  %603 = load i64, ptr %598, align 1, !tbaa !30
  %604 = icmp eq i64 %602, %603
  br i1 %604, label %609, label %605

605:                                              ; preds = %601
  %606 = xor i64 %603, %602
  %607 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %606, i1 true)
  %608 = lshr i64 %607, 3
  br label %664

609:                                              ; preds = %601, %615
  %610 = phi ptr [ %613, %615 ], [ %599, %601 ]
  %611 = phi ptr [ %612, %615 ], [ %598, %601 ]
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 8
  %613 = getelementptr inbounds nuw i8, ptr %610, i64 8
  %614 = icmp ult ptr %612, %577
  br i1 %614, label %615, label %627

615:                                              ; preds = %609
  %616 = load i64, ptr %613, align 1, !tbaa !30
  %617 = load i64, ptr %612, align 1, !tbaa !30
  %618 = icmp eq i64 %616, %617
  br i1 %618, label %609, label %619

619:                                              ; preds = %615
  %620 = xor i64 %617, %616
  %621 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %620, i1 true)
  %622 = lshr i64 %621, 3
  %623 = getelementptr inbounds nuw i8, ptr %612, i64 %622
  %624 = ptrtoint ptr %623 to i64
  %625 = ptrtoint ptr %598 to i64
  %626 = sub i64 %624, %625
  br label %664

627:                                              ; preds = %609, %581
  %628 = phi ptr [ %599, %581 ], [ %613, %609 ]
  %629 = phi ptr [ %598, %581 ], [ %612, %609 ]
  %630 = icmp ult ptr %629, %578
  br i1 %630, label %631, label %638

631:                                              ; preds = %627
  %632 = load i32, ptr %628, align 1, !tbaa !25
  %633 = load i32, ptr %629, align 1, !tbaa !25
  %634 = icmp eq i32 %632, %633
  br i1 %634, label %635, label %638

635:                                              ; preds = %631
  %636 = getelementptr inbounds nuw i8, ptr %629, i64 4
  %637 = getelementptr inbounds nuw i8, ptr %628, i64 4
  br label %638

638:                                              ; preds = %635, %631, %627
  %639 = phi ptr [ %637, %635 ], [ %628, %631 ], [ %628, %627 ]
  %640 = phi ptr [ %636, %635 ], [ %629, %631 ], [ %629, %627 ]
  %641 = icmp ult ptr %640, %579
  br i1 %641, label %642, label %649

642:                                              ; preds = %638
  %643 = load i16, ptr %639, align 1, !tbaa !116
  %644 = load i16, ptr %640, align 1, !tbaa !116
  %645 = icmp eq i16 %643, %644
  br i1 %645, label %646, label %649

646:                                              ; preds = %642
  %647 = getelementptr inbounds nuw i8, ptr %640, i64 2
  %648 = getelementptr inbounds nuw i8, ptr %639, i64 2
  br label %649

649:                                              ; preds = %646, %642, %638
  %650 = phi ptr [ %648, %646 ], [ %639, %642 ], [ %639, %638 ]
  %651 = phi ptr [ %647, %646 ], [ %640, %642 ], [ %640, %638 ]
  %652 = icmp ult ptr %651, %4
  br i1 %652, label %653, label %659

653:                                              ; preds = %649
  %654 = load i8, ptr %650, align 1, !tbaa !42
  %655 = load i8, ptr %651, align 1, !tbaa !42
  %656 = icmp eq i8 %654, %655
  %657 = zext i1 %656 to i64
  %658 = getelementptr inbounds nuw i8, ptr %651, i64 %657
  br label %659

659:                                              ; preds = %653, %649
  %660 = phi ptr [ %651, %649 ], [ %658, %653 ]
  %661 = ptrtoint ptr %660 to i64
  %662 = ptrtoint ptr %598 to i64
  %663 = sub i64 %661, %662
  br label %664

664:                                              ; preds = %605, %619, %659
  %665 = phi i64 [ %663, %659 ], [ %608, %605 ], [ %626, %619 ]
  %666 = add i64 %665, %595
  %667 = icmp ugt i64 %666, %590
  br i1 %667, label %668, label %684

668:                                              ; preds = %664
  %669 = sub i32 %587, %582
  %670 = zext i32 %669 to i64
  %671 = icmp ugt i64 %666, %670
  %672 = trunc i64 %666 to i32
  %673 = add i32 %582, %672
  %674 = select i1 %671, i32 %673, i32 %587
  %675 = sub i32 %580, %582
  %676 = zext i32 %588 to i64
  %677 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %676
  store i32 %675, ptr %677, align 4, !tbaa !46
  %678 = getelementptr inbounds nuw i8, ptr %677, i64 4
  store i32 %672, ptr %678, align 4, !tbaa !44
  %679 = add i32 %588, 1
  %680 = icmp ugt i64 %666, 4096
  %681 = getelementptr inbounds nuw i8, ptr %3, i64 %666
  %682 = icmp eq ptr %681, %4
  %683 = or i1 %680, %682
  br i1 %683, label %709, label %684

684:                                              ; preds = %668, %664
  %685 = phi i64 [ %666, %668 ], [ %590, %664 ]
  %686 = phi i32 [ %679, %668 ], [ %588, %664 ]
  %687 = phi i32 [ %674, %668 ], [ %587, %664 ]
  %688 = getelementptr inbounds nuw i8, ptr %597, i64 %666
  %689 = load i8, ptr %688, align 1, !tbaa !42
  %690 = getelementptr inbounds nuw i8, ptr %3, i64 %666
  %691 = load i8, ptr %690, align 1, !tbaa !42
  %692 = icmp ult i8 %689, %691
  %693 = icmp ugt i32 %582, %63
  br i1 %692, label %694, label %697

694:                                              ; preds = %684
  store i32 %582, ptr %585, align 4, !tbaa !25
  br i1 %693, label %695, label %709

695:                                              ; preds = %694
  %696 = getelementptr inbounds nuw i8, ptr %594, i64 4
  br label %698

697:                                              ; preds = %684
  store i32 %582, ptr %586, align 4, !tbaa !25
  br i1 %693, label %698, label %709

698:                                              ; preds = %697, %695
  %699 = phi ptr [ %586, %695 ], [ %594, %697 ]
  %700 = phi ptr [ %696, %695 ], [ %585, %697 ]
  %701 = phi i64 [ %584, %695 ], [ %666, %697 ]
  %702 = phi i64 [ %666, %695 ], [ %583, %697 ]
  %703 = phi ptr [ %696, %695 ], [ %594, %697 ]
  %704 = load i32, ptr %703, align 4, !tbaa !25
  %705 = add i32 %589, -1
  %706 = icmp ne i32 %705, 0
  %707 = icmp uge i32 %704, %76
  %708 = select i1 %706, i1 %707, i1 false
  br i1 %708, label %581, label %709, !llvm.loop !140

709:                                              ; preds = %698, %694, %697, %668, %572
  %710 = phi i32 [ %574, %572 ], [ %679, %668 ], [ %686, %697 ], [ %686, %694 ], [ %686, %698 ]
  %711 = phi i32 [ %82, %572 ], [ %674, %668 ], [ %687, %697 ], [ %687, %694 ], [ %687, %698 ]
  %712 = phi ptr [ %81, %572 ], [ %586, %668 ], [ %9, %697 ], [ %586, %694 ], [ %699, %698 ]
  %713 = phi ptr [ %80, %572 ], [ %585, %668 ], [ %585, %697 ], [ %9, %694 ], [ %700, %698 ]
  store i32 0, ptr %712, align 4, !tbaa !25
  store i32 0, ptr %713, align 4, !tbaa !25
  %714 = add i32 %711, -8
  br label %715

715:                                              ; preds = %709, %570
  %716 = phi i32 [ %571, %570 ], [ %714, %709 ]
  %717 = phi i32 [ 1, %570 ], [ %710, %709 ]
  store i32 %716, ptr %12, align 4, !tbaa !19
  br label %718

718:                                              ; preds = %715, %188, %293, %400
  %719 = phi i32 [ 1, %188 ], [ %297, %293 ], [ %404, %400 ], [ %717, %715 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %720

720:                                              ; preds = %8, %718
  %721 = phi i32 [ %719, %718 ], [ 0, %8 ]
  ret i32 %721
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_noDict_4(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %547, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %13, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 4, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !20

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !18
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %43 = load i32, ptr %42, align 4, !tbaa !109
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  %46 = load i32, ptr %3, align 1, !tbaa !25
  %47 = mul i32 %46, -1640531535
  %48 = sub i32 32, %43
  %49 = lshr i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %56 = load i32, ptr %55, align 4, !tbaa !111
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %61 = load i32, ptr %60, align 8, !tbaa !22
  %62 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %63 = load i32, ptr %38, align 4, !tbaa !113
  %64 = getelementptr i8, ptr %1, i64 28
  %65 = load i32, ptr %64, align 4, !tbaa !107
  %66 = getelementptr i8, ptr %1, i64 40
  %67 = load i32, ptr %66, align 8, !tbaa !114
  %68 = shl nuw i32 1, %63
  %69 = sub i32 %36, %65
  %70 = icmp ugt i32 %69, %68
  %71 = sub i32 %36, %68
  %72 = icmp eq i32 %67, 0
  %73 = select i1 %72, i1 %70, i1 false
  %74 = select i1 %73, i32 %71, i32 %65
  %75 = tail call i32 @llvm.umax.i32(i32 %74, i32 1)
  %76 = and i32 %36, %59
  %77 = shl nuw i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw i32, ptr %54, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 4
  %81 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %83 = load i32, ptr %82, align 4, !tbaa !115
  %84 = shl nuw i32 1, %83
  %85 = add i32 %7, -1
  %86 = zext i32 %85 to i64
  %87 = icmp ult i32 %6, -3
  br i1 %87, label %88, label %402

88:                                               ; preds = %35
  %89 = sub i32 %36, %61
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %91 = getelementptr inbounds i8, ptr %4, i64 -7
  %92 = icmp ult ptr %90, %91
  %93 = getelementptr inbounds i8, ptr %4, i64 -3
  %94 = getelementptr inbounds i8, ptr %4, i64 -1
  %95 = ptrtoint ptr %90 to i64
  %96 = zext i32 %6 to i64
  %97 = icmp eq i32 %6, 3
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i32, ptr %5, align 4, !tbaa !25
  %100 = add i32 %99, -1
  br label %104

101:                                              ; preds = %88
  %102 = getelementptr inbounds nuw i32, ptr %5, i64 %96
  %103 = load i32, ptr %102, align 4, !tbaa !25
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i32 [ %100, %98 ], [ %103, %101 ]
  %106 = add i32 %105, -1
  %107 = icmp ult i32 %106, %89
  br i1 %107, label %108, label %192

108:                                              ; preds = %104
  %109 = sub i32 %36, %105
  %110 = icmp uge i32 %109, %74
  %111 = zext i32 %105 to i64
  %112 = sub nsw i64 0, %111
  %113 = getelementptr inbounds i8, ptr %3, i64 %112
  %114 = load i32, ptr %113, align 1, !tbaa !25
  %115 = icmp eq i32 %46, %114
  %116 = and i1 %110, %115
  br i1 %116, label %117, label %192

117:                                              ; preds = %108
  %118 = getelementptr inbounds i8, ptr %90, i64 %112
  br i1 %92, label %119, label %144

119:                                              ; preds = %117
  %120 = load i64, ptr %118, align 1, !tbaa !30
  %121 = load i64, ptr %90, align 1, !tbaa !30
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = xor i64 %121, %120
  %125 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %124, i1 true)
  %126 = lshr i64 %125, 3
  br label %180

127:                                              ; preds = %119, %133
  %128 = phi ptr [ %131, %133 ], [ %118, %119 ]
  %129 = phi ptr [ %130, %133 ], [ %90, %119 ]
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 8
  %131 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %132 = icmp ult ptr %130, %91
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load i64, ptr %131, align 1, !tbaa !30
  %135 = load i64, ptr %130, align 1, !tbaa !30
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %127, label %137

137:                                              ; preds = %133
  %138 = xor i64 %135, %134
  %139 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %138, i1 true)
  %140 = lshr i64 %139, 3
  %141 = getelementptr inbounds nuw i8, ptr %130, i64 %140
  %142 = ptrtoint ptr %141 to i64
  %143 = sub i64 %142, %95
  br label %180

144:                                              ; preds = %127, %117
  %145 = phi ptr [ %118, %117 ], [ %131, %127 ]
  %146 = phi ptr [ %90, %117 ], [ %130, %127 ]
  %147 = icmp ult ptr %146, %93
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load i32, ptr %145, align 1, !tbaa !25
  %150 = load i32, ptr %146, align 1, !tbaa !25
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = getelementptr inbounds nuw i8, ptr %146, i64 4
  %154 = getelementptr inbounds nuw i8, ptr %145, i64 4
  br label %155

155:                                              ; preds = %152, %148, %144
  %156 = phi ptr [ %154, %152 ], [ %145, %148 ], [ %145, %144 ]
  %157 = phi ptr [ %153, %152 ], [ %146, %148 ], [ %146, %144 ]
  %158 = icmp ult ptr %157, %94
  br i1 %158, label %159, label %166

159:                                              ; preds = %155
  %160 = load i16, ptr %156, align 1, !tbaa !116
  %161 = load i16, ptr %157, align 1, !tbaa !116
  %162 = icmp eq i16 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = getelementptr inbounds nuw i8, ptr %157, i64 2
  %165 = getelementptr inbounds nuw i8, ptr %156, i64 2
  br label %166

166:                                              ; preds = %163, %159, %155
  %167 = phi ptr [ %165, %163 ], [ %156, %159 ], [ %156, %155 ]
  %168 = phi ptr [ %164, %163 ], [ %157, %159 ], [ %157, %155 ]
  %169 = icmp ult ptr %168, %4
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load i8, ptr %167, align 1, !tbaa !42
  %172 = load i8, ptr %168, align 1, !tbaa !42
  %173 = icmp eq i8 %171, %172
  %174 = zext i1 %173 to i64
  %175 = getelementptr inbounds nuw i8, ptr %168, i64 %174
  br label %176

176:                                              ; preds = %170, %166
  %177 = phi ptr [ %168, %166 ], [ %175, %170 ]
  %178 = ptrtoint ptr %177 to i64
  %179 = sub i64 %178, %95
  br label %180

180:                                              ; preds = %176, %137, %123
  %181 = phi i64 [ %179, %176 ], [ %126, %123 ], [ %143, %137 ]
  %182 = trunc i64 %181 to i32
  %183 = add i32 %182, 4
  %184 = icmp ult i32 %85, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = zext i32 %183 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %183, ptr %187, align 4, !tbaa !44
  %188 = icmp ule i32 %183, %41
  %189 = getelementptr inbounds nuw i8, ptr %3, i64 %186
  %190 = icmp ne ptr %189, %4
  %191 = and i1 %188, %190
  br i1 %191, label %192, label %545

192:                                              ; preds = %104, %108, %180, %185
  %193 = phi i32 [ 1, %185 ], [ 0, %180 ], [ 0, %108 ], [ 0, %104 ]
  %194 = phi i64 [ %186, %185 ], [ %86, %180 ], [ %86, %108 ], [ %86, %104 ]
  %195 = add nuw nsw i64 %96, 1
  %196 = icmp eq i64 %195, 3
  br i1 %196, label %200, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds nuw i32, ptr %5, i64 %195
  %199 = load i32, ptr %198, align 4, !tbaa !25
  br label %203

200:                                              ; preds = %192
  %201 = load i32, ptr %5, align 4, !tbaa !25
  %202 = add i32 %201, -1
  br label %203

203:                                              ; preds = %200, %197
  %204 = phi i32 [ %202, %200 ], [ %199, %197 ]
  %205 = add i32 %204, -1
  %206 = icmp ult i32 %205, %89
  br i1 %206, label %207, label %284

207:                                              ; preds = %203
  %208 = sub i32 %36, %204
  %209 = icmp uge i32 %208, %74
  %210 = load i32, ptr %3, align 1, !tbaa !25
  %211 = zext i32 %204 to i64
  %212 = sub nsw i64 0, %211
  %213 = getelementptr inbounds i8, ptr %3, i64 %212
  %214 = load i32, ptr %213, align 1, !tbaa !25
  %215 = icmp eq i32 %210, %214
  %216 = and i1 %209, %215
  br i1 %216, label %217, label %284

217:                                              ; preds = %207
  %218 = getelementptr inbounds i8, ptr %90, i64 %212
  br i1 %92, label %219, label %233

219:                                              ; preds = %217
  %220 = load i64, ptr %218, align 1, !tbaa !30
  %221 = load i64, ptr %90, align 1, !tbaa !30
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %227, label %223

223:                                              ; preds = %219
  %224 = xor i64 %221, %220
  %225 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %224, i1 true)
  %226 = lshr i64 %225, 3
  br label %280

227:                                              ; preds = %219, %269
  %228 = phi ptr [ %231, %269 ], [ %218, %219 ]
  %229 = phi ptr [ %230, %269 ], [ %90, %219 ]
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 8
  %231 = getelementptr inbounds nuw i8, ptr %228, i64 8
  %232 = icmp ult ptr %230, %91
  br i1 %232, label %269, label %233

233:                                              ; preds = %227, %217
  %234 = phi ptr [ %218, %217 ], [ %231, %227 ]
  %235 = phi ptr [ %90, %217 ], [ %230, %227 ]
  %236 = icmp ult ptr %235, %93
  br i1 %236, label %237, label %244

237:                                              ; preds = %233
  %238 = load i32, ptr %234, align 1, !tbaa !25
  %239 = load i32, ptr %235, align 1, !tbaa !25
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = getelementptr inbounds nuw i8, ptr %235, i64 4
  %243 = getelementptr inbounds nuw i8, ptr %234, i64 4
  br label %244

244:                                              ; preds = %241, %237, %233
  %245 = phi ptr [ %243, %241 ], [ %234, %237 ], [ %234, %233 ]
  %246 = phi ptr [ %242, %241 ], [ %235, %237 ], [ %235, %233 ]
  %247 = icmp ult ptr %246, %94
  br i1 %247, label %248, label %255

248:                                              ; preds = %244
  %249 = load i16, ptr %245, align 1, !tbaa !116
  %250 = load i16, ptr %246, align 1, !tbaa !116
  %251 = icmp eq i16 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = getelementptr inbounds nuw i8, ptr %246, i64 2
  %254 = getelementptr inbounds nuw i8, ptr %245, i64 2
  br label %255

255:                                              ; preds = %252, %248, %244
  %256 = phi ptr [ %254, %252 ], [ %245, %248 ], [ %245, %244 ]
  %257 = phi ptr [ %253, %252 ], [ %246, %248 ], [ %246, %244 ]
  %258 = icmp ult ptr %257, %4
  br i1 %258, label %259, label %265

259:                                              ; preds = %255
  %260 = load i8, ptr %256, align 1, !tbaa !42
  %261 = load i8, ptr %257, align 1, !tbaa !42
  %262 = icmp eq i8 %260, %261
  %263 = zext i1 %262 to i64
  %264 = getelementptr inbounds nuw i8, ptr %257, i64 %263
  br label %265

265:                                              ; preds = %259, %255
  %266 = phi ptr [ %257, %255 ], [ %264, %259 ]
  %267 = ptrtoint ptr %266 to i64
  %268 = sub i64 %267, %95
  br label %280

269:                                              ; preds = %227
  %270 = load i64, ptr %231, align 1, !tbaa !30
  %271 = load i64, ptr %230, align 1, !tbaa !30
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %227, label %273

273:                                              ; preds = %269
  %274 = xor i64 %271, %270
  %275 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %274, i1 true)
  %276 = lshr i64 %275, 3
  %277 = getelementptr inbounds nuw i8, ptr %230, i64 %276
  %278 = ptrtoint ptr %277 to i64
  %279 = sub i64 %278, %95
  br label %280

280:                                              ; preds = %273, %265, %223
  %281 = phi i64 [ %268, %265 ], [ %226, %223 ], [ %279, %273 ]
  %282 = trunc i64 %281 to i32
  %283 = add i32 %282, 4
  br label %284

284:                                              ; preds = %280, %207, %203
  %285 = phi i32 [ %283, %280 ], [ 0, %207 ], [ 0, %203 ]
  %286 = zext i32 %285 to i64
  %287 = icmp samesign ult i64 %194, %286
  br i1 %287, label %288, label %297

288:                                              ; preds = %284
  %289 = zext nneg i32 %193 to i64
  %290 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %289
  store i32 2, ptr %290, align 4, !tbaa !46
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 4
  store i32 %285, ptr %291, align 4, !tbaa !44
  %292 = add nuw nsw i32 %193, 1
  %293 = icmp ule i32 %285, %41
  %294 = getelementptr inbounds nuw i8, ptr %3, i64 %286
  %295 = icmp ne ptr %294, %4
  %296 = and i1 %293, %295
  br i1 %296, label %297, label %545

297:                                              ; preds = %288, %284
  %298 = phi i32 [ %292, %288 ], [ %193, %284 ]
  %299 = phi i64 [ %286, %288 ], [ %194, %284 ]
  %300 = add nuw nsw i64 %96, 2
  %301 = icmp eq i64 %300, 3
  br i1 %301, label %305, label %302

302:                                              ; preds = %297
  %303 = getelementptr inbounds nuw i32, ptr %5, i64 %300
  %304 = load i32, ptr %303, align 4, !tbaa !25
  br label %308

305:                                              ; preds = %297
  %306 = load i32, ptr %5, align 4, !tbaa !25
  %307 = add i32 %306, -1
  br label %308

308:                                              ; preds = %305, %302
  %309 = phi i32 [ %307, %305 ], [ %304, %302 ]
  %310 = add i32 %309, -1
  %311 = icmp ult i32 %310, %89
  br i1 %311, label %312, label %389

312:                                              ; preds = %308
  %313 = sub i32 %36, %309
  %314 = icmp uge i32 %313, %74
  %315 = load i32, ptr %3, align 1, !tbaa !25
  %316 = zext i32 %309 to i64
  %317 = sub nsw i64 0, %316
  %318 = getelementptr inbounds i8, ptr %3, i64 %317
  %319 = load i32, ptr %318, align 1, !tbaa !25
  %320 = icmp eq i32 %315, %319
  %321 = and i1 %314, %320
  br i1 %321, label %322, label %389

322:                                              ; preds = %312
  %323 = getelementptr inbounds i8, ptr %90, i64 %317
  br i1 %92, label %324, label %338

324:                                              ; preds = %322
  %325 = load i64, ptr %323, align 1, !tbaa !30
  %326 = load i64, ptr %90, align 1, !tbaa !30
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %332, label %328

328:                                              ; preds = %324
  %329 = xor i64 %326, %325
  %330 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %329, i1 true)
  %331 = lshr i64 %330, 3
  br label %385

332:                                              ; preds = %324, %374
  %333 = phi ptr [ %336, %374 ], [ %323, %324 ]
  %334 = phi ptr [ %335, %374 ], [ %90, %324 ]
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 8
  %336 = getelementptr inbounds nuw i8, ptr %333, i64 8
  %337 = icmp ult ptr %335, %91
  br i1 %337, label %374, label %338

338:                                              ; preds = %332, %322
  %339 = phi ptr [ %323, %322 ], [ %336, %332 ]
  %340 = phi ptr [ %90, %322 ], [ %335, %332 ]
  %341 = icmp ult ptr %340, %93
  br i1 %341, label %342, label %349

342:                                              ; preds = %338
  %343 = load i32, ptr %339, align 1, !tbaa !25
  %344 = load i32, ptr %340, align 1, !tbaa !25
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %342
  %347 = getelementptr inbounds nuw i8, ptr %340, i64 4
  %348 = getelementptr inbounds nuw i8, ptr %339, i64 4
  br label %349

349:                                              ; preds = %346, %342, %338
  %350 = phi ptr [ %348, %346 ], [ %339, %342 ], [ %339, %338 ]
  %351 = phi ptr [ %347, %346 ], [ %340, %342 ], [ %340, %338 ]
  %352 = icmp ult ptr %351, %94
  br i1 %352, label %353, label %360

353:                                              ; preds = %349
  %354 = load i16, ptr %350, align 1, !tbaa !116
  %355 = load i16, ptr %351, align 1, !tbaa !116
  %356 = icmp eq i16 %354, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = getelementptr inbounds nuw i8, ptr %351, i64 2
  %359 = getelementptr inbounds nuw i8, ptr %350, i64 2
  br label %360

360:                                              ; preds = %357, %353, %349
  %361 = phi ptr [ %359, %357 ], [ %350, %353 ], [ %350, %349 ]
  %362 = phi ptr [ %358, %357 ], [ %351, %353 ], [ %351, %349 ]
  %363 = icmp ult ptr %362, %4
  br i1 %363, label %364, label %370

364:                                              ; preds = %360
  %365 = load i8, ptr %361, align 1, !tbaa !42
  %366 = load i8, ptr %362, align 1, !tbaa !42
  %367 = icmp eq i8 %365, %366
  %368 = zext i1 %367 to i64
  %369 = getelementptr inbounds nuw i8, ptr %362, i64 %368
  br label %370

370:                                              ; preds = %364, %360
  %371 = phi ptr [ %362, %360 ], [ %369, %364 ]
  %372 = ptrtoint ptr %371 to i64
  %373 = sub i64 %372, %95
  br label %385

374:                                              ; preds = %332
  %375 = load i64, ptr %336, align 1, !tbaa !30
  %376 = load i64, ptr %335, align 1, !tbaa !30
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %332, label %378

378:                                              ; preds = %374
  %379 = xor i64 %376, %375
  %380 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %379, i1 true)
  %381 = lshr i64 %380, 3
  %382 = getelementptr inbounds nuw i8, ptr %335, i64 %381
  %383 = ptrtoint ptr %382 to i64
  %384 = sub i64 %383, %95
  br label %385

385:                                              ; preds = %378, %370, %328
  %386 = phi i64 [ %373, %370 ], [ %331, %328 ], [ %384, %378 ]
  %387 = trunc i64 %386 to i32
  %388 = add i32 %387, 4
  br label %389

389:                                              ; preds = %385, %312, %308
  %390 = phi i32 [ %388, %385 ], [ 0, %312 ], [ 0, %308 ]
  %391 = zext i32 %390 to i64
  %392 = icmp samesign ult i64 %299, %391
  br i1 %392, label %393, label %402

393:                                              ; preds = %389
  %394 = zext nneg i32 %298 to i64
  %395 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %394
  store i32 3, ptr %395, align 4, !tbaa !46
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 4
  store i32 %390, ptr %396, align 4, !tbaa !44
  %397 = add nuw nsw i32 %298, 1
  %398 = icmp ule i32 %390, %41
  %399 = getelementptr inbounds nuw i8, ptr %3, i64 %391
  %400 = icmp ne ptr %399, %4
  %401 = and i1 %398, %400
  br i1 %401, label %402, label %545

402:                                              ; preds = %389, %393, %35
  %403 = phi i64 [ %86, %35 ], [ %391, %393 ], [ %299, %389 ]
  %404 = phi i32 [ 0, %35 ], [ %397, %393 ], [ %298, %389 ]
  store i32 %36, ptr %51, align 4, !tbaa !25
  %405 = icmp ult i32 %52, %75
  br i1 %405, label %539, label %406

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, ptr %4, i64 -7
  %408 = getelementptr inbounds i8, ptr %4, i64 -3
  %409 = getelementptr inbounds i8, ptr %4, i64 -1
  %410 = add i32 %36, 3
  br label %411

411:                                              ; preds = %406, %528
  %412 = phi i32 [ %52, %406 ], [ %534, %528 ]
  %413 = phi i64 [ 0, %406 ], [ %532, %528 ]
  %414 = phi i64 [ 0, %406 ], [ %531, %528 ]
  %415 = phi ptr [ %79, %406 ], [ %530, %528 ]
  %416 = phi ptr [ %80, %406 ], [ %529, %528 ]
  %417 = phi i32 [ %81, %406 ], [ %517, %528 ]
  %418 = phi i32 [ %404, %406 ], [ %516, %528 ]
  %419 = phi i32 [ %84, %406 ], [ %535, %528 ]
  %420 = phi i64 [ %403, %406 ], [ %515, %528 ]
  %421 = and i32 %412, %59
  %422 = shl nuw i32 %421, 1
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds nuw i32, ptr %54, i64 %423
  %425 = tail call i64 @llvm.umin.i64(i64 %413, i64 %414)
  %426 = zext i32 %412 to i64
  %427 = getelementptr inbounds nuw i8, ptr %37, i64 %426
  %428 = getelementptr inbounds nuw i8, ptr %3, i64 %425
  %429 = getelementptr inbounds nuw i8, ptr %427, i64 %425
  %430 = icmp ult ptr %428, %407
  br i1 %430, label %431, label %457

431:                                              ; preds = %411
  %432 = load i64, ptr %429, align 1, !tbaa !30
  %433 = load i64, ptr %428, align 1, !tbaa !30
  %434 = icmp eq i64 %432, %433
  br i1 %434, label %439, label %435

435:                                              ; preds = %431
  %436 = xor i64 %433, %432
  %437 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %436, i1 true)
  %438 = lshr i64 %437, 3
  br label %494

439:                                              ; preds = %431, %445
  %440 = phi ptr [ %443, %445 ], [ %429, %431 ]
  %441 = phi ptr [ %442, %445 ], [ %428, %431 ]
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 8
  %443 = getelementptr inbounds nuw i8, ptr %440, i64 8
  %444 = icmp ult ptr %442, %407
  br i1 %444, label %445, label %457

445:                                              ; preds = %439
  %446 = load i64, ptr %443, align 1, !tbaa !30
  %447 = load i64, ptr %442, align 1, !tbaa !30
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %439, label %449

449:                                              ; preds = %445
  %450 = xor i64 %447, %446
  %451 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %450, i1 true)
  %452 = lshr i64 %451, 3
  %453 = getelementptr inbounds nuw i8, ptr %442, i64 %452
  %454 = ptrtoint ptr %453 to i64
  %455 = ptrtoint ptr %428 to i64
  %456 = sub i64 %454, %455
  br label %494

457:                                              ; preds = %439, %411
  %458 = phi ptr [ %429, %411 ], [ %443, %439 ]
  %459 = phi ptr [ %428, %411 ], [ %442, %439 ]
  %460 = icmp ult ptr %459, %408
  br i1 %460, label %461, label %468

461:                                              ; preds = %457
  %462 = load i32, ptr %458, align 1, !tbaa !25
  %463 = load i32, ptr %459, align 1, !tbaa !25
  %464 = icmp eq i32 %462, %463
  br i1 %464, label %465, label %468

465:                                              ; preds = %461
  %466 = getelementptr inbounds nuw i8, ptr %459, i64 4
  %467 = getelementptr inbounds nuw i8, ptr %458, i64 4
  br label %468

468:                                              ; preds = %465, %461, %457
  %469 = phi ptr [ %467, %465 ], [ %458, %461 ], [ %458, %457 ]
  %470 = phi ptr [ %466, %465 ], [ %459, %461 ], [ %459, %457 ]
  %471 = icmp ult ptr %470, %409
  br i1 %471, label %472, label %479

472:                                              ; preds = %468
  %473 = load i16, ptr %469, align 1, !tbaa !116
  %474 = load i16, ptr %470, align 1, !tbaa !116
  %475 = icmp eq i16 %473, %474
  br i1 %475, label %476, label %479

476:                                              ; preds = %472
  %477 = getelementptr inbounds nuw i8, ptr %470, i64 2
  %478 = getelementptr inbounds nuw i8, ptr %469, i64 2
  br label %479

479:                                              ; preds = %476, %472, %468
  %480 = phi ptr [ %478, %476 ], [ %469, %472 ], [ %469, %468 ]
  %481 = phi ptr [ %477, %476 ], [ %470, %472 ], [ %470, %468 ]
  %482 = icmp ult ptr %481, %4
  br i1 %482, label %483, label %489

483:                                              ; preds = %479
  %484 = load i8, ptr %480, align 1, !tbaa !42
  %485 = load i8, ptr %481, align 1, !tbaa !42
  %486 = icmp eq i8 %484, %485
  %487 = zext i1 %486 to i64
  %488 = getelementptr inbounds nuw i8, ptr %481, i64 %487
  br label %489

489:                                              ; preds = %483, %479
  %490 = phi ptr [ %481, %479 ], [ %488, %483 ]
  %491 = ptrtoint ptr %490 to i64
  %492 = ptrtoint ptr %428 to i64
  %493 = sub i64 %491, %492
  br label %494

494:                                              ; preds = %435, %449, %489
  %495 = phi i64 [ %493, %489 ], [ %438, %435 ], [ %456, %449 ]
  %496 = add i64 %495, %425
  %497 = icmp ugt i64 %496, %420
  br i1 %497, label %498, label %514

498:                                              ; preds = %494
  %499 = sub i32 %417, %412
  %500 = zext i32 %499 to i64
  %501 = icmp ugt i64 %496, %500
  %502 = trunc i64 %496 to i32
  %503 = add i32 %412, %502
  %504 = select i1 %501, i32 %503, i32 %417
  %505 = sub i32 %410, %412
  %506 = zext i32 %418 to i64
  %507 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %506
  store i32 %505, ptr %507, align 4, !tbaa !46
  %508 = getelementptr inbounds nuw i8, ptr %507, i64 4
  store i32 %502, ptr %508, align 4, !tbaa !44
  %509 = add i32 %418, 1
  %510 = icmp ugt i64 %496, 4096
  %511 = getelementptr inbounds nuw i8, ptr %3, i64 %496
  %512 = icmp eq ptr %511, %4
  %513 = or i1 %510, %512
  br i1 %513, label %539, label %514

514:                                              ; preds = %498, %494
  %515 = phi i64 [ %496, %498 ], [ %420, %494 ]
  %516 = phi i32 [ %509, %498 ], [ %418, %494 ]
  %517 = phi i32 [ %504, %498 ], [ %417, %494 ]
  %518 = getelementptr inbounds nuw i8, ptr %427, i64 %496
  %519 = load i8, ptr %518, align 1, !tbaa !42
  %520 = getelementptr inbounds nuw i8, ptr %3, i64 %496
  %521 = load i8, ptr %520, align 1, !tbaa !42
  %522 = icmp ult i8 %519, %521
  %523 = icmp ugt i32 %412, %62
  br i1 %522, label %524, label %527

524:                                              ; preds = %514
  store i32 %412, ptr %415, align 4, !tbaa !25
  br i1 %523, label %525, label %539

525:                                              ; preds = %524
  %526 = getelementptr inbounds nuw i8, ptr %424, i64 4
  br label %528

527:                                              ; preds = %514
  store i32 %412, ptr %416, align 4, !tbaa !25
  br i1 %523, label %528, label %539

528:                                              ; preds = %527, %525
  %529 = phi ptr [ %416, %525 ], [ %424, %527 ]
  %530 = phi ptr [ %526, %525 ], [ %415, %527 ]
  %531 = phi i64 [ %414, %525 ], [ %496, %527 ]
  %532 = phi i64 [ %496, %525 ], [ %413, %527 ]
  %533 = phi ptr [ %526, %525 ], [ %424, %527 ]
  %534 = load i32, ptr %533, align 4, !tbaa !25
  %535 = add i32 %419, -1
  %536 = icmp ne i32 %535, 0
  %537 = icmp uge i32 %534, %75
  %538 = select i1 %536, i1 %537, i1 false
  br i1 %538, label %411, label %539, !llvm.loop !140

539:                                              ; preds = %528, %524, %527, %498, %402
  %540 = phi i32 [ %404, %402 ], [ %509, %498 ], [ %516, %527 ], [ %516, %524 ], [ %516, %528 ]
  %541 = phi i32 [ %81, %402 ], [ %504, %498 ], [ %517, %527 ], [ %517, %524 ], [ %517, %528 ]
  %542 = phi ptr [ %80, %402 ], [ %416, %498 ], [ %9, %527 ], [ %416, %524 ], [ %529, %528 ]
  %543 = phi ptr [ %79, %402 ], [ %415, %498 ], [ %415, %527 ], [ %9, %524 ], [ %530, %528 ]
  store i32 0, ptr %542, align 4, !tbaa !25
  store i32 0, ptr %543, align 4, !tbaa !25
  %544 = add i32 %541, -8
  store i32 %544, ptr %12, align 4, !tbaa !19
  br label %545

545:                                              ; preds = %185, %288, %393, %539
  %546 = phi i32 [ %540, %539 ], [ 1, %185 ], [ %292, %288 ], [ %397, %393 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %547

547:                                              ; preds = %8, %545
  %548 = phi i32 [ %546, %545 ], [ 0, %8 ]
  ret i32 %548
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_noDict_5(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %548, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %13, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 5, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !20

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !18
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %43 = load i32, ptr %42, align 4, !tbaa !109
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  %46 = load i64, ptr %3, align 1
  %47 = mul i64 %46, -3523014627271114752
  %48 = sub i32 64, %43
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = getelementptr inbounds nuw i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %56 = load i32, ptr %55, align 4, !tbaa !111
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %61 = load i32, ptr %60, align 8, !tbaa !22
  %62 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %63 = load i32, ptr %38, align 4, !tbaa !113
  %64 = getelementptr i8, ptr %1, i64 28
  %65 = load i32, ptr %64, align 4, !tbaa !107
  %66 = getelementptr i8, ptr %1, i64 40
  %67 = load i32, ptr %66, align 8, !tbaa !114
  %68 = shl nuw i32 1, %63
  %69 = sub i32 %36, %65
  %70 = icmp ugt i32 %69, %68
  %71 = sub i32 %36, %68
  %72 = icmp eq i32 %67, 0
  %73 = select i1 %72, i1 %70, i1 false
  %74 = select i1 %73, i32 %71, i32 %65
  %75 = tail call i32 @llvm.umax.i32(i32 %74, i32 1)
  %76 = and i32 %36, %59
  %77 = shl nuw i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw i32, ptr %54, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 4
  %81 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %83 = load i32, ptr %82, align 4, !tbaa !115
  %84 = shl nuw i32 1, %83
  %85 = add i32 %7, -1
  %86 = zext i32 %85 to i64
  %87 = icmp ult i32 %6, -3
  %88 = trunc i64 %46 to i32
  br i1 %87, label %89, label %403

89:                                               ; preds = %35
  %90 = sub i32 %36, %61
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %92 = getelementptr inbounds i8, ptr %4, i64 -7
  %93 = icmp ult ptr %91, %92
  %94 = getelementptr inbounds i8, ptr %4, i64 -3
  %95 = getelementptr inbounds i8, ptr %4, i64 -1
  %96 = ptrtoint ptr %91 to i64
  %97 = zext i32 %6 to i64
  %98 = icmp eq i32 %6, 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, ptr %5, align 4, !tbaa !25
  %101 = add i32 %100, -1
  br label %105

102:                                              ; preds = %89
  %103 = getelementptr inbounds nuw i32, ptr %5, i64 %97
  %104 = load i32, ptr %103, align 4, !tbaa !25
  br label %105

105:                                              ; preds = %102, %99
  %106 = phi i32 [ %101, %99 ], [ %104, %102 ]
  %107 = add i32 %106, -1
  %108 = icmp ult i32 %107, %90
  br i1 %108, label %109, label %193

109:                                              ; preds = %105
  %110 = sub i32 %36, %106
  %111 = icmp uge i32 %110, %74
  %112 = zext i32 %106 to i64
  %113 = sub nsw i64 0, %112
  %114 = getelementptr inbounds i8, ptr %3, i64 %113
  %115 = load i32, ptr %114, align 1, !tbaa !25
  %116 = icmp eq i32 %115, %88
  %117 = and i1 %111, %116
  br i1 %117, label %118, label %193

118:                                              ; preds = %109
  %119 = getelementptr inbounds i8, ptr %91, i64 %113
  br i1 %93, label %120, label %145

120:                                              ; preds = %118
  %121 = load i64, ptr %119, align 1, !tbaa !30
  %122 = load i64, ptr %91, align 1, !tbaa !30
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = xor i64 %122, %121
  %126 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %125, i1 true)
  %127 = lshr i64 %126, 3
  br label %181

128:                                              ; preds = %120, %134
  %129 = phi ptr [ %132, %134 ], [ %119, %120 ]
  %130 = phi ptr [ %131, %134 ], [ %91, %120 ]
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %132 = getelementptr inbounds nuw i8, ptr %129, i64 8
  %133 = icmp ult ptr %131, %92
  br i1 %133, label %134, label %145

134:                                              ; preds = %128
  %135 = load i64, ptr %132, align 1, !tbaa !30
  %136 = load i64, ptr %131, align 1, !tbaa !30
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %128, label %138

138:                                              ; preds = %134
  %139 = xor i64 %136, %135
  %140 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %139, i1 true)
  %141 = lshr i64 %140, 3
  %142 = getelementptr inbounds nuw i8, ptr %131, i64 %141
  %143 = ptrtoint ptr %142 to i64
  %144 = sub i64 %143, %96
  br label %181

145:                                              ; preds = %128, %118
  %146 = phi ptr [ %119, %118 ], [ %132, %128 ]
  %147 = phi ptr [ %91, %118 ], [ %131, %128 ]
  %148 = icmp ult ptr %147, %94
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i32, ptr %146, align 1, !tbaa !25
  %151 = load i32, ptr %147, align 1, !tbaa !25
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = getelementptr inbounds nuw i8, ptr %147, i64 4
  %155 = getelementptr inbounds nuw i8, ptr %146, i64 4
  br label %156

156:                                              ; preds = %153, %149, %145
  %157 = phi ptr [ %155, %153 ], [ %146, %149 ], [ %146, %145 ]
  %158 = phi ptr [ %154, %153 ], [ %147, %149 ], [ %147, %145 ]
  %159 = icmp ult ptr %158, %95
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i16, ptr %157, align 1, !tbaa !116
  %162 = load i16, ptr %158, align 1, !tbaa !116
  %163 = icmp eq i16 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = getelementptr inbounds nuw i8, ptr %158, i64 2
  %166 = getelementptr inbounds nuw i8, ptr %157, i64 2
  br label %167

167:                                              ; preds = %164, %160, %156
  %168 = phi ptr [ %166, %164 ], [ %157, %160 ], [ %157, %156 ]
  %169 = phi ptr [ %165, %164 ], [ %158, %160 ], [ %158, %156 ]
  %170 = icmp ult ptr %169, %4
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = load i8, ptr %168, align 1, !tbaa !42
  %173 = load i8, ptr %169, align 1, !tbaa !42
  %174 = icmp eq i8 %172, %173
  %175 = zext i1 %174 to i64
  %176 = getelementptr inbounds nuw i8, ptr %169, i64 %175
  br label %177

177:                                              ; preds = %171, %167
  %178 = phi ptr [ %169, %167 ], [ %176, %171 ]
  %179 = ptrtoint ptr %178 to i64
  %180 = sub i64 %179, %96
  br label %181

181:                                              ; preds = %177, %138, %124
  %182 = phi i64 [ %180, %177 ], [ %127, %124 ], [ %144, %138 ]
  %183 = trunc i64 %182 to i32
  %184 = add i32 %183, 4
  %185 = icmp ult i32 %85, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = zext i32 %184 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %184, ptr %188, align 4, !tbaa !44
  %189 = icmp ule i32 %184, %41
  %190 = getelementptr inbounds nuw i8, ptr %3, i64 %187
  %191 = icmp ne ptr %190, %4
  %192 = and i1 %189, %191
  br i1 %192, label %193, label %546

193:                                              ; preds = %105, %109, %181, %186
  %194 = phi i32 [ 1, %186 ], [ 0, %181 ], [ 0, %109 ], [ 0, %105 ]
  %195 = phi i64 [ %187, %186 ], [ %86, %181 ], [ %86, %109 ], [ %86, %105 ]
  %196 = add nuw nsw i64 %97, 1
  %197 = icmp eq i64 %196, 3
  br i1 %197, label %201, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds nuw i32, ptr %5, i64 %196
  %200 = load i32, ptr %199, align 4, !tbaa !25
  br label %204

201:                                              ; preds = %193
  %202 = load i32, ptr %5, align 4, !tbaa !25
  %203 = add i32 %202, -1
  br label %204

204:                                              ; preds = %201, %198
  %205 = phi i32 [ %203, %201 ], [ %200, %198 ]
  %206 = add i32 %205, -1
  %207 = icmp ult i32 %206, %90
  br i1 %207, label %208, label %285

208:                                              ; preds = %204
  %209 = sub i32 %36, %205
  %210 = icmp uge i32 %209, %74
  %211 = load i32, ptr %3, align 1, !tbaa !25
  %212 = zext i32 %205 to i64
  %213 = sub nsw i64 0, %212
  %214 = getelementptr inbounds i8, ptr %3, i64 %213
  %215 = load i32, ptr %214, align 1, !tbaa !25
  %216 = icmp eq i32 %211, %215
  %217 = and i1 %210, %216
  br i1 %217, label %218, label %285

218:                                              ; preds = %208
  %219 = getelementptr inbounds i8, ptr %91, i64 %213
  br i1 %93, label %220, label %234

220:                                              ; preds = %218
  %221 = load i64, ptr %219, align 1, !tbaa !30
  %222 = load i64, ptr %91, align 1, !tbaa !30
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  %225 = xor i64 %222, %221
  %226 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %225, i1 true)
  %227 = lshr i64 %226, 3
  br label %281

228:                                              ; preds = %220, %270
  %229 = phi ptr [ %232, %270 ], [ %219, %220 ]
  %230 = phi ptr [ %231, %270 ], [ %91, %220 ]
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 8
  %232 = getelementptr inbounds nuw i8, ptr %229, i64 8
  %233 = icmp ult ptr %231, %92
  br i1 %233, label %270, label %234

234:                                              ; preds = %228, %218
  %235 = phi ptr [ %219, %218 ], [ %232, %228 ]
  %236 = phi ptr [ %91, %218 ], [ %231, %228 ]
  %237 = icmp ult ptr %236, %94
  br i1 %237, label %238, label %245

238:                                              ; preds = %234
  %239 = load i32, ptr %235, align 1, !tbaa !25
  %240 = load i32, ptr %236, align 1, !tbaa !25
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = getelementptr inbounds nuw i8, ptr %236, i64 4
  %244 = getelementptr inbounds nuw i8, ptr %235, i64 4
  br label %245

245:                                              ; preds = %242, %238, %234
  %246 = phi ptr [ %244, %242 ], [ %235, %238 ], [ %235, %234 ]
  %247 = phi ptr [ %243, %242 ], [ %236, %238 ], [ %236, %234 ]
  %248 = icmp ult ptr %247, %95
  br i1 %248, label %249, label %256

249:                                              ; preds = %245
  %250 = load i16, ptr %246, align 1, !tbaa !116
  %251 = load i16, ptr %247, align 1, !tbaa !116
  %252 = icmp eq i16 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = getelementptr inbounds nuw i8, ptr %247, i64 2
  %255 = getelementptr inbounds nuw i8, ptr %246, i64 2
  br label %256

256:                                              ; preds = %253, %249, %245
  %257 = phi ptr [ %255, %253 ], [ %246, %249 ], [ %246, %245 ]
  %258 = phi ptr [ %254, %253 ], [ %247, %249 ], [ %247, %245 ]
  %259 = icmp ult ptr %258, %4
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load i8, ptr %257, align 1, !tbaa !42
  %262 = load i8, ptr %258, align 1, !tbaa !42
  %263 = icmp eq i8 %261, %262
  %264 = zext i1 %263 to i64
  %265 = getelementptr inbounds nuw i8, ptr %258, i64 %264
  br label %266

266:                                              ; preds = %260, %256
  %267 = phi ptr [ %258, %256 ], [ %265, %260 ]
  %268 = ptrtoint ptr %267 to i64
  %269 = sub i64 %268, %96
  br label %281

270:                                              ; preds = %228
  %271 = load i64, ptr %232, align 1, !tbaa !30
  %272 = load i64, ptr %231, align 1, !tbaa !30
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %228, label %274

274:                                              ; preds = %270
  %275 = xor i64 %272, %271
  %276 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %275, i1 true)
  %277 = lshr i64 %276, 3
  %278 = getelementptr inbounds nuw i8, ptr %231, i64 %277
  %279 = ptrtoint ptr %278 to i64
  %280 = sub i64 %279, %96
  br label %281

281:                                              ; preds = %274, %266, %224
  %282 = phi i64 [ %269, %266 ], [ %227, %224 ], [ %280, %274 ]
  %283 = trunc i64 %282 to i32
  %284 = add i32 %283, 4
  br label %285

285:                                              ; preds = %281, %208, %204
  %286 = phi i32 [ %284, %281 ], [ 0, %208 ], [ 0, %204 ]
  %287 = zext i32 %286 to i64
  %288 = icmp samesign ult i64 %195, %287
  br i1 %288, label %289, label %298

289:                                              ; preds = %285
  %290 = zext nneg i32 %194 to i64
  %291 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %290
  store i32 2, ptr %291, align 4, !tbaa !46
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 4
  store i32 %286, ptr %292, align 4, !tbaa !44
  %293 = add nuw nsw i32 %194, 1
  %294 = icmp ule i32 %286, %41
  %295 = getelementptr inbounds nuw i8, ptr %3, i64 %287
  %296 = icmp ne ptr %295, %4
  %297 = and i1 %294, %296
  br i1 %297, label %298, label %546

298:                                              ; preds = %289, %285
  %299 = phi i32 [ %293, %289 ], [ %194, %285 ]
  %300 = phi i64 [ %287, %289 ], [ %195, %285 ]
  %301 = add nuw nsw i64 %97, 2
  %302 = icmp eq i64 %301, 3
  br i1 %302, label %306, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds nuw i32, ptr %5, i64 %301
  %305 = load i32, ptr %304, align 4, !tbaa !25
  br label %309

306:                                              ; preds = %298
  %307 = load i32, ptr %5, align 4, !tbaa !25
  %308 = add i32 %307, -1
  br label %309

309:                                              ; preds = %306, %303
  %310 = phi i32 [ %308, %306 ], [ %305, %303 ]
  %311 = add i32 %310, -1
  %312 = icmp ult i32 %311, %90
  br i1 %312, label %313, label %390

313:                                              ; preds = %309
  %314 = sub i32 %36, %310
  %315 = icmp uge i32 %314, %74
  %316 = load i32, ptr %3, align 1, !tbaa !25
  %317 = zext i32 %310 to i64
  %318 = sub nsw i64 0, %317
  %319 = getelementptr inbounds i8, ptr %3, i64 %318
  %320 = load i32, ptr %319, align 1, !tbaa !25
  %321 = icmp eq i32 %316, %320
  %322 = and i1 %315, %321
  br i1 %322, label %323, label %390

323:                                              ; preds = %313
  %324 = getelementptr inbounds i8, ptr %91, i64 %318
  br i1 %93, label %325, label %339

325:                                              ; preds = %323
  %326 = load i64, ptr %324, align 1, !tbaa !30
  %327 = load i64, ptr %91, align 1, !tbaa !30
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %333, label %329

329:                                              ; preds = %325
  %330 = xor i64 %327, %326
  %331 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %330, i1 true)
  %332 = lshr i64 %331, 3
  br label %386

333:                                              ; preds = %325, %375
  %334 = phi ptr [ %337, %375 ], [ %324, %325 ]
  %335 = phi ptr [ %336, %375 ], [ %91, %325 ]
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 8
  %337 = getelementptr inbounds nuw i8, ptr %334, i64 8
  %338 = icmp ult ptr %336, %92
  br i1 %338, label %375, label %339

339:                                              ; preds = %333, %323
  %340 = phi ptr [ %324, %323 ], [ %337, %333 ]
  %341 = phi ptr [ %91, %323 ], [ %336, %333 ]
  %342 = icmp ult ptr %341, %94
  br i1 %342, label %343, label %350

343:                                              ; preds = %339
  %344 = load i32, ptr %340, align 1, !tbaa !25
  %345 = load i32, ptr %341, align 1, !tbaa !25
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %343
  %348 = getelementptr inbounds nuw i8, ptr %341, i64 4
  %349 = getelementptr inbounds nuw i8, ptr %340, i64 4
  br label %350

350:                                              ; preds = %347, %343, %339
  %351 = phi ptr [ %349, %347 ], [ %340, %343 ], [ %340, %339 ]
  %352 = phi ptr [ %348, %347 ], [ %341, %343 ], [ %341, %339 ]
  %353 = icmp ult ptr %352, %95
  br i1 %353, label %354, label %361

354:                                              ; preds = %350
  %355 = load i16, ptr %351, align 1, !tbaa !116
  %356 = load i16, ptr %352, align 1, !tbaa !116
  %357 = icmp eq i16 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = getelementptr inbounds nuw i8, ptr %352, i64 2
  %360 = getelementptr inbounds nuw i8, ptr %351, i64 2
  br label %361

361:                                              ; preds = %358, %354, %350
  %362 = phi ptr [ %360, %358 ], [ %351, %354 ], [ %351, %350 ]
  %363 = phi ptr [ %359, %358 ], [ %352, %354 ], [ %352, %350 ]
  %364 = icmp ult ptr %363, %4
  br i1 %364, label %365, label %371

365:                                              ; preds = %361
  %366 = load i8, ptr %362, align 1, !tbaa !42
  %367 = load i8, ptr %363, align 1, !tbaa !42
  %368 = icmp eq i8 %366, %367
  %369 = zext i1 %368 to i64
  %370 = getelementptr inbounds nuw i8, ptr %363, i64 %369
  br label %371

371:                                              ; preds = %365, %361
  %372 = phi ptr [ %363, %361 ], [ %370, %365 ]
  %373 = ptrtoint ptr %372 to i64
  %374 = sub i64 %373, %96
  br label %386

375:                                              ; preds = %333
  %376 = load i64, ptr %337, align 1, !tbaa !30
  %377 = load i64, ptr %336, align 1, !tbaa !30
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %333, label %379

379:                                              ; preds = %375
  %380 = xor i64 %377, %376
  %381 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %380, i1 true)
  %382 = lshr i64 %381, 3
  %383 = getelementptr inbounds nuw i8, ptr %336, i64 %382
  %384 = ptrtoint ptr %383 to i64
  %385 = sub i64 %384, %96
  br label %386

386:                                              ; preds = %379, %371, %329
  %387 = phi i64 [ %374, %371 ], [ %332, %329 ], [ %385, %379 ]
  %388 = trunc i64 %387 to i32
  %389 = add i32 %388, 4
  br label %390

390:                                              ; preds = %386, %313, %309
  %391 = phi i32 [ %389, %386 ], [ 0, %313 ], [ 0, %309 ]
  %392 = zext i32 %391 to i64
  %393 = icmp samesign ult i64 %300, %392
  br i1 %393, label %394, label %403

394:                                              ; preds = %390
  %395 = zext nneg i32 %299 to i64
  %396 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %395
  store i32 3, ptr %396, align 4, !tbaa !46
  %397 = getelementptr inbounds nuw i8, ptr %396, i64 4
  store i32 %391, ptr %397, align 4, !tbaa !44
  %398 = add nuw nsw i32 %299, 1
  %399 = icmp ule i32 %391, %41
  %400 = getelementptr inbounds nuw i8, ptr %3, i64 %392
  %401 = icmp ne ptr %400, %4
  %402 = and i1 %399, %401
  br i1 %402, label %403, label %546

403:                                              ; preds = %390, %394, %35
  %404 = phi i64 [ %86, %35 ], [ %392, %394 ], [ %300, %390 ]
  %405 = phi i32 [ 0, %35 ], [ %398, %394 ], [ %299, %390 ]
  store i32 %36, ptr %51, align 4, !tbaa !25
  %406 = icmp ult i32 %52, %75
  br i1 %406, label %540, label %407

407:                                              ; preds = %403
  %408 = getelementptr inbounds i8, ptr %4, i64 -7
  %409 = getelementptr inbounds i8, ptr %4, i64 -3
  %410 = getelementptr inbounds i8, ptr %4, i64 -1
  %411 = add i32 %36, 3
  br label %412

412:                                              ; preds = %407, %529
  %413 = phi i32 [ %52, %407 ], [ %535, %529 ]
  %414 = phi i64 [ 0, %407 ], [ %533, %529 ]
  %415 = phi i64 [ 0, %407 ], [ %532, %529 ]
  %416 = phi ptr [ %79, %407 ], [ %531, %529 ]
  %417 = phi ptr [ %80, %407 ], [ %530, %529 ]
  %418 = phi i32 [ %81, %407 ], [ %518, %529 ]
  %419 = phi i32 [ %405, %407 ], [ %517, %529 ]
  %420 = phi i32 [ %84, %407 ], [ %536, %529 ]
  %421 = phi i64 [ %404, %407 ], [ %516, %529 ]
  %422 = and i32 %413, %59
  %423 = shl nuw i32 %422, 1
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds nuw i32, ptr %54, i64 %424
  %426 = tail call i64 @llvm.umin.i64(i64 %414, i64 %415)
  %427 = zext i32 %413 to i64
  %428 = getelementptr inbounds nuw i8, ptr %37, i64 %427
  %429 = getelementptr inbounds nuw i8, ptr %3, i64 %426
  %430 = getelementptr inbounds nuw i8, ptr %428, i64 %426
  %431 = icmp ult ptr %429, %408
  br i1 %431, label %432, label %458

432:                                              ; preds = %412
  %433 = load i64, ptr %430, align 1, !tbaa !30
  %434 = load i64, ptr %429, align 1, !tbaa !30
  %435 = icmp eq i64 %433, %434
  br i1 %435, label %440, label %436

436:                                              ; preds = %432
  %437 = xor i64 %434, %433
  %438 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %437, i1 true)
  %439 = lshr i64 %438, 3
  br label %495

440:                                              ; preds = %432, %446
  %441 = phi ptr [ %444, %446 ], [ %430, %432 ]
  %442 = phi ptr [ %443, %446 ], [ %429, %432 ]
  %443 = getelementptr inbounds nuw i8, ptr %442, i64 8
  %444 = getelementptr inbounds nuw i8, ptr %441, i64 8
  %445 = icmp ult ptr %443, %408
  br i1 %445, label %446, label %458

446:                                              ; preds = %440
  %447 = load i64, ptr %444, align 1, !tbaa !30
  %448 = load i64, ptr %443, align 1, !tbaa !30
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %440, label %450

450:                                              ; preds = %446
  %451 = xor i64 %448, %447
  %452 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %451, i1 true)
  %453 = lshr i64 %452, 3
  %454 = getelementptr inbounds nuw i8, ptr %443, i64 %453
  %455 = ptrtoint ptr %454 to i64
  %456 = ptrtoint ptr %429 to i64
  %457 = sub i64 %455, %456
  br label %495

458:                                              ; preds = %440, %412
  %459 = phi ptr [ %430, %412 ], [ %444, %440 ]
  %460 = phi ptr [ %429, %412 ], [ %443, %440 ]
  %461 = icmp ult ptr %460, %409
  br i1 %461, label %462, label %469

462:                                              ; preds = %458
  %463 = load i32, ptr %459, align 1, !tbaa !25
  %464 = load i32, ptr %460, align 1, !tbaa !25
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %466, label %469

466:                                              ; preds = %462
  %467 = getelementptr inbounds nuw i8, ptr %460, i64 4
  %468 = getelementptr inbounds nuw i8, ptr %459, i64 4
  br label %469

469:                                              ; preds = %466, %462, %458
  %470 = phi ptr [ %468, %466 ], [ %459, %462 ], [ %459, %458 ]
  %471 = phi ptr [ %467, %466 ], [ %460, %462 ], [ %460, %458 ]
  %472 = icmp ult ptr %471, %410
  br i1 %472, label %473, label %480

473:                                              ; preds = %469
  %474 = load i16, ptr %470, align 1, !tbaa !116
  %475 = load i16, ptr %471, align 1, !tbaa !116
  %476 = icmp eq i16 %474, %475
  br i1 %476, label %477, label %480

477:                                              ; preds = %473
  %478 = getelementptr inbounds nuw i8, ptr %471, i64 2
  %479 = getelementptr inbounds nuw i8, ptr %470, i64 2
  br label %480

480:                                              ; preds = %477, %473, %469
  %481 = phi ptr [ %479, %477 ], [ %470, %473 ], [ %470, %469 ]
  %482 = phi ptr [ %478, %477 ], [ %471, %473 ], [ %471, %469 ]
  %483 = icmp ult ptr %482, %4
  br i1 %483, label %484, label %490

484:                                              ; preds = %480
  %485 = load i8, ptr %481, align 1, !tbaa !42
  %486 = load i8, ptr %482, align 1, !tbaa !42
  %487 = icmp eq i8 %485, %486
  %488 = zext i1 %487 to i64
  %489 = getelementptr inbounds nuw i8, ptr %482, i64 %488
  br label %490

490:                                              ; preds = %484, %480
  %491 = phi ptr [ %482, %480 ], [ %489, %484 ]
  %492 = ptrtoint ptr %491 to i64
  %493 = ptrtoint ptr %429 to i64
  %494 = sub i64 %492, %493
  br label %495

495:                                              ; preds = %436, %450, %490
  %496 = phi i64 [ %494, %490 ], [ %439, %436 ], [ %457, %450 ]
  %497 = add i64 %496, %426
  %498 = icmp ugt i64 %497, %421
  br i1 %498, label %499, label %515

499:                                              ; preds = %495
  %500 = sub i32 %418, %413
  %501 = zext i32 %500 to i64
  %502 = icmp ugt i64 %497, %501
  %503 = trunc i64 %497 to i32
  %504 = add i32 %413, %503
  %505 = select i1 %502, i32 %504, i32 %418
  %506 = sub i32 %411, %413
  %507 = zext i32 %419 to i64
  %508 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %507
  store i32 %506, ptr %508, align 4, !tbaa !46
  %509 = getelementptr inbounds nuw i8, ptr %508, i64 4
  store i32 %503, ptr %509, align 4, !tbaa !44
  %510 = add i32 %419, 1
  %511 = icmp ugt i64 %497, 4096
  %512 = getelementptr inbounds nuw i8, ptr %3, i64 %497
  %513 = icmp eq ptr %512, %4
  %514 = or i1 %511, %513
  br i1 %514, label %540, label %515

515:                                              ; preds = %499, %495
  %516 = phi i64 [ %497, %499 ], [ %421, %495 ]
  %517 = phi i32 [ %510, %499 ], [ %419, %495 ]
  %518 = phi i32 [ %505, %499 ], [ %418, %495 ]
  %519 = getelementptr inbounds nuw i8, ptr %428, i64 %497
  %520 = load i8, ptr %519, align 1, !tbaa !42
  %521 = getelementptr inbounds nuw i8, ptr %3, i64 %497
  %522 = load i8, ptr %521, align 1, !tbaa !42
  %523 = icmp ult i8 %520, %522
  %524 = icmp ugt i32 %413, %62
  br i1 %523, label %525, label %528

525:                                              ; preds = %515
  store i32 %413, ptr %416, align 4, !tbaa !25
  br i1 %524, label %526, label %540

526:                                              ; preds = %525
  %527 = getelementptr inbounds nuw i8, ptr %425, i64 4
  br label %529

528:                                              ; preds = %515
  store i32 %413, ptr %417, align 4, !tbaa !25
  br i1 %524, label %529, label %540

529:                                              ; preds = %528, %526
  %530 = phi ptr [ %417, %526 ], [ %425, %528 ]
  %531 = phi ptr [ %527, %526 ], [ %416, %528 ]
  %532 = phi i64 [ %415, %526 ], [ %497, %528 ]
  %533 = phi i64 [ %497, %526 ], [ %414, %528 ]
  %534 = phi ptr [ %527, %526 ], [ %425, %528 ]
  %535 = load i32, ptr %534, align 4, !tbaa !25
  %536 = add i32 %420, -1
  %537 = icmp ne i32 %536, 0
  %538 = icmp uge i32 %535, %75
  %539 = select i1 %537, i1 %538, i1 false
  br i1 %539, label %412, label %540, !llvm.loop !140

540:                                              ; preds = %529, %525, %528, %499, %403
  %541 = phi i32 [ %405, %403 ], [ %510, %499 ], [ %517, %528 ], [ %517, %525 ], [ %517, %529 ]
  %542 = phi i32 [ %81, %403 ], [ %505, %499 ], [ %518, %528 ], [ %518, %525 ], [ %518, %529 ]
  %543 = phi ptr [ %80, %403 ], [ %417, %499 ], [ %9, %528 ], [ %417, %525 ], [ %530, %529 ]
  %544 = phi ptr [ %79, %403 ], [ %416, %499 ], [ %416, %528 ], [ %9, %525 ], [ %531, %529 ]
  store i32 0, ptr %543, align 4, !tbaa !25
  store i32 0, ptr %544, align 4, !tbaa !25
  %545 = add i32 %542, -8
  store i32 %545, ptr %12, align 4, !tbaa !19
  br label %546

546:                                              ; preds = %186, %289, %394, %540
  %547 = phi i32 [ %541, %540 ], [ 1, %186 ], [ %293, %289 ], [ %398, %394 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %548

548:                                              ; preds = %8, %546
  %549 = phi i32 [ %547, %546 ], [ 0, %8 ]
  ret i32 %549
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_noDict_6(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %548, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %13, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 6, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !20

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !18
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %43 = load i32, ptr %42, align 4, !tbaa !109
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  %46 = load i64, ptr %3, align 1
  %47 = mul i64 %46, -3523014627193847808
  %48 = sub i32 64, %43
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = getelementptr inbounds nuw i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %56 = load i32, ptr %55, align 4, !tbaa !111
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %61 = load i32, ptr %60, align 8, !tbaa !22
  %62 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %63 = load i32, ptr %38, align 4, !tbaa !113
  %64 = getelementptr i8, ptr %1, i64 28
  %65 = load i32, ptr %64, align 4, !tbaa !107
  %66 = getelementptr i8, ptr %1, i64 40
  %67 = load i32, ptr %66, align 8, !tbaa !114
  %68 = shl nuw i32 1, %63
  %69 = sub i32 %36, %65
  %70 = icmp ugt i32 %69, %68
  %71 = sub i32 %36, %68
  %72 = icmp eq i32 %67, 0
  %73 = select i1 %72, i1 %70, i1 false
  %74 = select i1 %73, i32 %71, i32 %65
  %75 = tail call i32 @llvm.umax.i32(i32 %74, i32 1)
  %76 = and i32 %36, %59
  %77 = shl nuw i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw i32, ptr %54, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 4
  %81 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %83 = load i32, ptr %82, align 4, !tbaa !115
  %84 = shl nuw i32 1, %83
  %85 = add i32 %7, -1
  %86 = zext i32 %85 to i64
  %87 = icmp ult i32 %6, -3
  %88 = trunc i64 %46 to i32
  br i1 %87, label %89, label %403

89:                                               ; preds = %35
  %90 = sub i32 %36, %61
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %92 = getelementptr inbounds i8, ptr %4, i64 -7
  %93 = icmp ult ptr %91, %92
  %94 = getelementptr inbounds i8, ptr %4, i64 -3
  %95 = getelementptr inbounds i8, ptr %4, i64 -1
  %96 = ptrtoint ptr %91 to i64
  %97 = zext i32 %6 to i64
  %98 = icmp eq i32 %6, 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, ptr %5, align 4, !tbaa !25
  %101 = add i32 %100, -1
  br label %105

102:                                              ; preds = %89
  %103 = getelementptr inbounds nuw i32, ptr %5, i64 %97
  %104 = load i32, ptr %103, align 4, !tbaa !25
  br label %105

105:                                              ; preds = %102, %99
  %106 = phi i32 [ %101, %99 ], [ %104, %102 ]
  %107 = add i32 %106, -1
  %108 = icmp ult i32 %107, %90
  br i1 %108, label %109, label %193

109:                                              ; preds = %105
  %110 = sub i32 %36, %106
  %111 = icmp uge i32 %110, %74
  %112 = zext i32 %106 to i64
  %113 = sub nsw i64 0, %112
  %114 = getelementptr inbounds i8, ptr %3, i64 %113
  %115 = load i32, ptr %114, align 1, !tbaa !25
  %116 = icmp eq i32 %115, %88
  %117 = and i1 %111, %116
  br i1 %117, label %118, label %193

118:                                              ; preds = %109
  %119 = getelementptr inbounds i8, ptr %91, i64 %113
  br i1 %93, label %120, label %145

120:                                              ; preds = %118
  %121 = load i64, ptr %119, align 1, !tbaa !30
  %122 = load i64, ptr %91, align 1, !tbaa !30
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = xor i64 %122, %121
  %126 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %125, i1 true)
  %127 = lshr i64 %126, 3
  br label %181

128:                                              ; preds = %120, %134
  %129 = phi ptr [ %132, %134 ], [ %119, %120 ]
  %130 = phi ptr [ %131, %134 ], [ %91, %120 ]
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %132 = getelementptr inbounds nuw i8, ptr %129, i64 8
  %133 = icmp ult ptr %131, %92
  br i1 %133, label %134, label %145

134:                                              ; preds = %128
  %135 = load i64, ptr %132, align 1, !tbaa !30
  %136 = load i64, ptr %131, align 1, !tbaa !30
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %128, label %138

138:                                              ; preds = %134
  %139 = xor i64 %136, %135
  %140 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %139, i1 true)
  %141 = lshr i64 %140, 3
  %142 = getelementptr inbounds nuw i8, ptr %131, i64 %141
  %143 = ptrtoint ptr %142 to i64
  %144 = sub i64 %143, %96
  br label %181

145:                                              ; preds = %128, %118
  %146 = phi ptr [ %119, %118 ], [ %132, %128 ]
  %147 = phi ptr [ %91, %118 ], [ %131, %128 ]
  %148 = icmp ult ptr %147, %94
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i32, ptr %146, align 1, !tbaa !25
  %151 = load i32, ptr %147, align 1, !tbaa !25
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = getelementptr inbounds nuw i8, ptr %147, i64 4
  %155 = getelementptr inbounds nuw i8, ptr %146, i64 4
  br label %156

156:                                              ; preds = %153, %149, %145
  %157 = phi ptr [ %155, %153 ], [ %146, %149 ], [ %146, %145 ]
  %158 = phi ptr [ %154, %153 ], [ %147, %149 ], [ %147, %145 ]
  %159 = icmp ult ptr %158, %95
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i16, ptr %157, align 1, !tbaa !116
  %162 = load i16, ptr %158, align 1, !tbaa !116
  %163 = icmp eq i16 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = getelementptr inbounds nuw i8, ptr %158, i64 2
  %166 = getelementptr inbounds nuw i8, ptr %157, i64 2
  br label %167

167:                                              ; preds = %164, %160, %156
  %168 = phi ptr [ %166, %164 ], [ %157, %160 ], [ %157, %156 ]
  %169 = phi ptr [ %165, %164 ], [ %158, %160 ], [ %158, %156 ]
  %170 = icmp ult ptr %169, %4
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = load i8, ptr %168, align 1, !tbaa !42
  %173 = load i8, ptr %169, align 1, !tbaa !42
  %174 = icmp eq i8 %172, %173
  %175 = zext i1 %174 to i64
  %176 = getelementptr inbounds nuw i8, ptr %169, i64 %175
  br label %177

177:                                              ; preds = %171, %167
  %178 = phi ptr [ %169, %167 ], [ %176, %171 ]
  %179 = ptrtoint ptr %178 to i64
  %180 = sub i64 %179, %96
  br label %181

181:                                              ; preds = %177, %138, %124
  %182 = phi i64 [ %180, %177 ], [ %127, %124 ], [ %144, %138 ]
  %183 = trunc i64 %182 to i32
  %184 = add i32 %183, 4
  %185 = icmp ult i32 %85, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = zext i32 %184 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %184, ptr %188, align 4, !tbaa !44
  %189 = icmp ule i32 %184, %41
  %190 = getelementptr inbounds nuw i8, ptr %3, i64 %187
  %191 = icmp ne ptr %190, %4
  %192 = and i1 %189, %191
  br i1 %192, label %193, label %546

193:                                              ; preds = %105, %109, %181, %186
  %194 = phi i32 [ 1, %186 ], [ 0, %181 ], [ 0, %109 ], [ 0, %105 ]
  %195 = phi i64 [ %187, %186 ], [ %86, %181 ], [ %86, %109 ], [ %86, %105 ]
  %196 = add nuw nsw i64 %97, 1
  %197 = icmp eq i64 %196, 3
  br i1 %197, label %201, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds nuw i32, ptr %5, i64 %196
  %200 = load i32, ptr %199, align 4, !tbaa !25
  br label %204

201:                                              ; preds = %193
  %202 = load i32, ptr %5, align 4, !tbaa !25
  %203 = add i32 %202, -1
  br label %204

204:                                              ; preds = %201, %198
  %205 = phi i32 [ %203, %201 ], [ %200, %198 ]
  %206 = add i32 %205, -1
  %207 = icmp ult i32 %206, %90
  br i1 %207, label %208, label %285

208:                                              ; preds = %204
  %209 = sub i32 %36, %205
  %210 = icmp uge i32 %209, %74
  %211 = load i32, ptr %3, align 1, !tbaa !25
  %212 = zext i32 %205 to i64
  %213 = sub nsw i64 0, %212
  %214 = getelementptr inbounds i8, ptr %3, i64 %213
  %215 = load i32, ptr %214, align 1, !tbaa !25
  %216 = icmp eq i32 %211, %215
  %217 = and i1 %210, %216
  br i1 %217, label %218, label %285

218:                                              ; preds = %208
  %219 = getelementptr inbounds i8, ptr %91, i64 %213
  br i1 %93, label %220, label %234

220:                                              ; preds = %218
  %221 = load i64, ptr %219, align 1, !tbaa !30
  %222 = load i64, ptr %91, align 1, !tbaa !30
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  %225 = xor i64 %222, %221
  %226 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %225, i1 true)
  %227 = lshr i64 %226, 3
  br label %281

228:                                              ; preds = %220, %270
  %229 = phi ptr [ %232, %270 ], [ %219, %220 ]
  %230 = phi ptr [ %231, %270 ], [ %91, %220 ]
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 8
  %232 = getelementptr inbounds nuw i8, ptr %229, i64 8
  %233 = icmp ult ptr %231, %92
  br i1 %233, label %270, label %234

234:                                              ; preds = %228, %218
  %235 = phi ptr [ %219, %218 ], [ %232, %228 ]
  %236 = phi ptr [ %91, %218 ], [ %231, %228 ]
  %237 = icmp ult ptr %236, %94
  br i1 %237, label %238, label %245

238:                                              ; preds = %234
  %239 = load i32, ptr %235, align 1, !tbaa !25
  %240 = load i32, ptr %236, align 1, !tbaa !25
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = getelementptr inbounds nuw i8, ptr %236, i64 4
  %244 = getelementptr inbounds nuw i8, ptr %235, i64 4
  br label %245

245:                                              ; preds = %242, %238, %234
  %246 = phi ptr [ %244, %242 ], [ %235, %238 ], [ %235, %234 ]
  %247 = phi ptr [ %243, %242 ], [ %236, %238 ], [ %236, %234 ]
  %248 = icmp ult ptr %247, %95
  br i1 %248, label %249, label %256

249:                                              ; preds = %245
  %250 = load i16, ptr %246, align 1, !tbaa !116
  %251 = load i16, ptr %247, align 1, !tbaa !116
  %252 = icmp eq i16 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = getelementptr inbounds nuw i8, ptr %247, i64 2
  %255 = getelementptr inbounds nuw i8, ptr %246, i64 2
  br label %256

256:                                              ; preds = %253, %249, %245
  %257 = phi ptr [ %255, %253 ], [ %246, %249 ], [ %246, %245 ]
  %258 = phi ptr [ %254, %253 ], [ %247, %249 ], [ %247, %245 ]
  %259 = icmp ult ptr %258, %4
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load i8, ptr %257, align 1, !tbaa !42
  %262 = load i8, ptr %258, align 1, !tbaa !42
  %263 = icmp eq i8 %261, %262
  %264 = zext i1 %263 to i64
  %265 = getelementptr inbounds nuw i8, ptr %258, i64 %264
  br label %266

266:                                              ; preds = %260, %256
  %267 = phi ptr [ %258, %256 ], [ %265, %260 ]
  %268 = ptrtoint ptr %267 to i64
  %269 = sub i64 %268, %96
  br label %281

270:                                              ; preds = %228
  %271 = load i64, ptr %232, align 1, !tbaa !30
  %272 = load i64, ptr %231, align 1, !tbaa !30
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %228, label %274

274:                                              ; preds = %270
  %275 = xor i64 %272, %271
  %276 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %275, i1 true)
  %277 = lshr i64 %276, 3
  %278 = getelementptr inbounds nuw i8, ptr %231, i64 %277
  %279 = ptrtoint ptr %278 to i64
  %280 = sub i64 %279, %96
  br label %281

281:                                              ; preds = %274, %266, %224
  %282 = phi i64 [ %269, %266 ], [ %227, %224 ], [ %280, %274 ]
  %283 = trunc i64 %282 to i32
  %284 = add i32 %283, 4
  br label %285

285:                                              ; preds = %281, %208, %204
  %286 = phi i32 [ %284, %281 ], [ 0, %208 ], [ 0, %204 ]
  %287 = zext i32 %286 to i64
  %288 = icmp samesign ult i64 %195, %287
  br i1 %288, label %289, label %298

289:                                              ; preds = %285
  %290 = zext nneg i32 %194 to i64
  %291 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %290
  store i32 2, ptr %291, align 4, !tbaa !46
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 4
  store i32 %286, ptr %292, align 4, !tbaa !44
  %293 = add nuw nsw i32 %194, 1
  %294 = icmp ule i32 %286, %41
  %295 = getelementptr inbounds nuw i8, ptr %3, i64 %287
  %296 = icmp ne ptr %295, %4
  %297 = and i1 %294, %296
  br i1 %297, label %298, label %546

298:                                              ; preds = %289, %285
  %299 = phi i32 [ %293, %289 ], [ %194, %285 ]
  %300 = phi i64 [ %287, %289 ], [ %195, %285 ]
  %301 = add nuw nsw i64 %97, 2
  %302 = icmp eq i64 %301, 3
  br i1 %302, label %306, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds nuw i32, ptr %5, i64 %301
  %305 = load i32, ptr %304, align 4, !tbaa !25
  br label %309

306:                                              ; preds = %298
  %307 = load i32, ptr %5, align 4, !tbaa !25
  %308 = add i32 %307, -1
  br label %309

309:                                              ; preds = %306, %303
  %310 = phi i32 [ %308, %306 ], [ %305, %303 ]
  %311 = add i32 %310, -1
  %312 = icmp ult i32 %311, %90
  br i1 %312, label %313, label %390

313:                                              ; preds = %309
  %314 = sub i32 %36, %310
  %315 = icmp uge i32 %314, %74
  %316 = load i32, ptr %3, align 1, !tbaa !25
  %317 = zext i32 %310 to i64
  %318 = sub nsw i64 0, %317
  %319 = getelementptr inbounds i8, ptr %3, i64 %318
  %320 = load i32, ptr %319, align 1, !tbaa !25
  %321 = icmp eq i32 %316, %320
  %322 = and i1 %315, %321
  br i1 %322, label %323, label %390

323:                                              ; preds = %313
  %324 = getelementptr inbounds i8, ptr %91, i64 %318
  br i1 %93, label %325, label %339

325:                                              ; preds = %323
  %326 = load i64, ptr %324, align 1, !tbaa !30
  %327 = load i64, ptr %91, align 1, !tbaa !30
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %333, label %329

329:                                              ; preds = %325
  %330 = xor i64 %327, %326
  %331 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %330, i1 true)
  %332 = lshr i64 %331, 3
  br label %386

333:                                              ; preds = %325, %375
  %334 = phi ptr [ %337, %375 ], [ %324, %325 ]
  %335 = phi ptr [ %336, %375 ], [ %91, %325 ]
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 8
  %337 = getelementptr inbounds nuw i8, ptr %334, i64 8
  %338 = icmp ult ptr %336, %92
  br i1 %338, label %375, label %339

339:                                              ; preds = %333, %323
  %340 = phi ptr [ %324, %323 ], [ %337, %333 ]
  %341 = phi ptr [ %91, %323 ], [ %336, %333 ]
  %342 = icmp ult ptr %341, %94
  br i1 %342, label %343, label %350

343:                                              ; preds = %339
  %344 = load i32, ptr %340, align 1, !tbaa !25
  %345 = load i32, ptr %341, align 1, !tbaa !25
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %343
  %348 = getelementptr inbounds nuw i8, ptr %341, i64 4
  %349 = getelementptr inbounds nuw i8, ptr %340, i64 4
  br label %350

350:                                              ; preds = %347, %343, %339
  %351 = phi ptr [ %349, %347 ], [ %340, %343 ], [ %340, %339 ]
  %352 = phi ptr [ %348, %347 ], [ %341, %343 ], [ %341, %339 ]
  %353 = icmp ult ptr %352, %95
  br i1 %353, label %354, label %361

354:                                              ; preds = %350
  %355 = load i16, ptr %351, align 1, !tbaa !116
  %356 = load i16, ptr %352, align 1, !tbaa !116
  %357 = icmp eq i16 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = getelementptr inbounds nuw i8, ptr %352, i64 2
  %360 = getelementptr inbounds nuw i8, ptr %351, i64 2
  br label %361

361:                                              ; preds = %358, %354, %350
  %362 = phi ptr [ %360, %358 ], [ %351, %354 ], [ %351, %350 ]
  %363 = phi ptr [ %359, %358 ], [ %352, %354 ], [ %352, %350 ]
  %364 = icmp ult ptr %363, %4
  br i1 %364, label %365, label %371

365:                                              ; preds = %361
  %366 = load i8, ptr %362, align 1, !tbaa !42
  %367 = load i8, ptr %363, align 1, !tbaa !42
  %368 = icmp eq i8 %366, %367
  %369 = zext i1 %368 to i64
  %370 = getelementptr inbounds nuw i8, ptr %363, i64 %369
  br label %371

371:                                              ; preds = %365, %361
  %372 = phi ptr [ %363, %361 ], [ %370, %365 ]
  %373 = ptrtoint ptr %372 to i64
  %374 = sub i64 %373, %96
  br label %386

375:                                              ; preds = %333
  %376 = load i64, ptr %337, align 1, !tbaa !30
  %377 = load i64, ptr %336, align 1, !tbaa !30
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %333, label %379

379:                                              ; preds = %375
  %380 = xor i64 %377, %376
  %381 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %380, i1 true)
  %382 = lshr i64 %381, 3
  %383 = getelementptr inbounds nuw i8, ptr %336, i64 %382
  %384 = ptrtoint ptr %383 to i64
  %385 = sub i64 %384, %96
  br label %386

386:                                              ; preds = %379, %371, %329
  %387 = phi i64 [ %374, %371 ], [ %332, %329 ], [ %385, %379 ]
  %388 = trunc i64 %387 to i32
  %389 = add i32 %388, 4
  br label %390

390:                                              ; preds = %386, %313, %309
  %391 = phi i32 [ %389, %386 ], [ 0, %313 ], [ 0, %309 ]
  %392 = zext i32 %391 to i64
  %393 = icmp samesign ult i64 %300, %392
  br i1 %393, label %394, label %403

394:                                              ; preds = %390
  %395 = zext nneg i32 %299 to i64
  %396 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %395
  store i32 3, ptr %396, align 4, !tbaa !46
  %397 = getelementptr inbounds nuw i8, ptr %396, i64 4
  store i32 %391, ptr %397, align 4, !tbaa !44
  %398 = add nuw nsw i32 %299, 1
  %399 = icmp ule i32 %391, %41
  %400 = getelementptr inbounds nuw i8, ptr %3, i64 %392
  %401 = icmp ne ptr %400, %4
  %402 = and i1 %399, %401
  br i1 %402, label %403, label %546

403:                                              ; preds = %390, %394, %35
  %404 = phi i64 [ %86, %35 ], [ %392, %394 ], [ %300, %390 ]
  %405 = phi i32 [ 0, %35 ], [ %398, %394 ], [ %299, %390 ]
  store i32 %36, ptr %51, align 4, !tbaa !25
  %406 = icmp ult i32 %52, %75
  br i1 %406, label %540, label %407

407:                                              ; preds = %403
  %408 = getelementptr inbounds i8, ptr %4, i64 -7
  %409 = getelementptr inbounds i8, ptr %4, i64 -3
  %410 = getelementptr inbounds i8, ptr %4, i64 -1
  %411 = add i32 %36, 3
  br label %412

412:                                              ; preds = %407, %529
  %413 = phi i32 [ %52, %407 ], [ %535, %529 ]
  %414 = phi i64 [ 0, %407 ], [ %533, %529 ]
  %415 = phi i64 [ 0, %407 ], [ %532, %529 ]
  %416 = phi ptr [ %79, %407 ], [ %531, %529 ]
  %417 = phi ptr [ %80, %407 ], [ %530, %529 ]
  %418 = phi i32 [ %81, %407 ], [ %518, %529 ]
  %419 = phi i32 [ %405, %407 ], [ %517, %529 ]
  %420 = phi i32 [ %84, %407 ], [ %536, %529 ]
  %421 = phi i64 [ %404, %407 ], [ %516, %529 ]
  %422 = and i32 %413, %59
  %423 = shl nuw i32 %422, 1
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds nuw i32, ptr %54, i64 %424
  %426 = tail call i64 @llvm.umin.i64(i64 %414, i64 %415)
  %427 = zext i32 %413 to i64
  %428 = getelementptr inbounds nuw i8, ptr %37, i64 %427
  %429 = getelementptr inbounds nuw i8, ptr %3, i64 %426
  %430 = getelementptr inbounds nuw i8, ptr %428, i64 %426
  %431 = icmp ult ptr %429, %408
  br i1 %431, label %432, label %458

432:                                              ; preds = %412
  %433 = load i64, ptr %430, align 1, !tbaa !30
  %434 = load i64, ptr %429, align 1, !tbaa !30
  %435 = icmp eq i64 %433, %434
  br i1 %435, label %440, label %436

436:                                              ; preds = %432
  %437 = xor i64 %434, %433
  %438 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %437, i1 true)
  %439 = lshr i64 %438, 3
  br label %495

440:                                              ; preds = %432, %446
  %441 = phi ptr [ %444, %446 ], [ %430, %432 ]
  %442 = phi ptr [ %443, %446 ], [ %429, %432 ]
  %443 = getelementptr inbounds nuw i8, ptr %442, i64 8
  %444 = getelementptr inbounds nuw i8, ptr %441, i64 8
  %445 = icmp ult ptr %443, %408
  br i1 %445, label %446, label %458

446:                                              ; preds = %440
  %447 = load i64, ptr %444, align 1, !tbaa !30
  %448 = load i64, ptr %443, align 1, !tbaa !30
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %440, label %450

450:                                              ; preds = %446
  %451 = xor i64 %448, %447
  %452 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %451, i1 true)
  %453 = lshr i64 %452, 3
  %454 = getelementptr inbounds nuw i8, ptr %443, i64 %453
  %455 = ptrtoint ptr %454 to i64
  %456 = ptrtoint ptr %429 to i64
  %457 = sub i64 %455, %456
  br label %495

458:                                              ; preds = %440, %412
  %459 = phi ptr [ %430, %412 ], [ %444, %440 ]
  %460 = phi ptr [ %429, %412 ], [ %443, %440 ]
  %461 = icmp ult ptr %460, %409
  br i1 %461, label %462, label %469

462:                                              ; preds = %458
  %463 = load i32, ptr %459, align 1, !tbaa !25
  %464 = load i32, ptr %460, align 1, !tbaa !25
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %466, label %469

466:                                              ; preds = %462
  %467 = getelementptr inbounds nuw i8, ptr %460, i64 4
  %468 = getelementptr inbounds nuw i8, ptr %459, i64 4
  br label %469

469:                                              ; preds = %466, %462, %458
  %470 = phi ptr [ %468, %466 ], [ %459, %462 ], [ %459, %458 ]
  %471 = phi ptr [ %467, %466 ], [ %460, %462 ], [ %460, %458 ]
  %472 = icmp ult ptr %471, %410
  br i1 %472, label %473, label %480

473:                                              ; preds = %469
  %474 = load i16, ptr %470, align 1, !tbaa !116
  %475 = load i16, ptr %471, align 1, !tbaa !116
  %476 = icmp eq i16 %474, %475
  br i1 %476, label %477, label %480

477:                                              ; preds = %473
  %478 = getelementptr inbounds nuw i8, ptr %471, i64 2
  %479 = getelementptr inbounds nuw i8, ptr %470, i64 2
  br label %480

480:                                              ; preds = %477, %473, %469
  %481 = phi ptr [ %479, %477 ], [ %470, %473 ], [ %470, %469 ]
  %482 = phi ptr [ %478, %477 ], [ %471, %473 ], [ %471, %469 ]
  %483 = icmp ult ptr %482, %4
  br i1 %483, label %484, label %490

484:                                              ; preds = %480
  %485 = load i8, ptr %481, align 1, !tbaa !42
  %486 = load i8, ptr %482, align 1, !tbaa !42
  %487 = icmp eq i8 %485, %486
  %488 = zext i1 %487 to i64
  %489 = getelementptr inbounds nuw i8, ptr %482, i64 %488
  br label %490

490:                                              ; preds = %484, %480
  %491 = phi ptr [ %482, %480 ], [ %489, %484 ]
  %492 = ptrtoint ptr %491 to i64
  %493 = ptrtoint ptr %429 to i64
  %494 = sub i64 %492, %493
  br label %495

495:                                              ; preds = %436, %450, %490
  %496 = phi i64 [ %494, %490 ], [ %439, %436 ], [ %457, %450 ]
  %497 = add i64 %496, %426
  %498 = icmp ugt i64 %497, %421
  br i1 %498, label %499, label %515

499:                                              ; preds = %495
  %500 = sub i32 %418, %413
  %501 = zext i32 %500 to i64
  %502 = icmp ugt i64 %497, %501
  %503 = trunc i64 %497 to i32
  %504 = add i32 %413, %503
  %505 = select i1 %502, i32 %504, i32 %418
  %506 = sub i32 %411, %413
  %507 = zext i32 %419 to i64
  %508 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %507
  store i32 %506, ptr %508, align 4, !tbaa !46
  %509 = getelementptr inbounds nuw i8, ptr %508, i64 4
  store i32 %503, ptr %509, align 4, !tbaa !44
  %510 = add i32 %419, 1
  %511 = icmp ugt i64 %497, 4096
  %512 = getelementptr inbounds nuw i8, ptr %3, i64 %497
  %513 = icmp eq ptr %512, %4
  %514 = or i1 %511, %513
  br i1 %514, label %540, label %515

515:                                              ; preds = %499, %495
  %516 = phi i64 [ %497, %499 ], [ %421, %495 ]
  %517 = phi i32 [ %510, %499 ], [ %419, %495 ]
  %518 = phi i32 [ %505, %499 ], [ %418, %495 ]
  %519 = getelementptr inbounds nuw i8, ptr %428, i64 %497
  %520 = load i8, ptr %519, align 1, !tbaa !42
  %521 = getelementptr inbounds nuw i8, ptr %3, i64 %497
  %522 = load i8, ptr %521, align 1, !tbaa !42
  %523 = icmp ult i8 %520, %522
  %524 = icmp ugt i32 %413, %62
  br i1 %523, label %525, label %528

525:                                              ; preds = %515
  store i32 %413, ptr %416, align 4, !tbaa !25
  br i1 %524, label %526, label %540

526:                                              ; preds = %525
  %527 = getelementptr inbounds nuw i8, ptr %425, i64 4
  br label %529

528:                                              ; preds = %515
  store i32 %413, ptr %417, align 4, !tbaa !25
  br i1 %524, label %529, label %540

529:                                              ; preds = %528, %526
  %530 = phi ptr [ %417, %526 ], [ %425, %528 ]
  %531 = phi ptr [ %527, %526 ], [ %416, %528 ]
  %532 = phi i64 [ %415, %526 ], [ %497, %528 ]
  %533 = phi i64 [ %497, %526 ], [ %414, %528 ]
  %534 = phi ptr [ %527, %526 ], [ %425, %528 ]
  %535 = load i32, ptr %534, align 4, !tbaa !25
  %536 = add i32 %420, -1
  %537 = icmp ne i32 %536, 0
  %538 = icmp uge i32 %535, %75
  %539 = select i1 %537, i1 %538, i1 false
  br i1 %539, label %412, label %540, !llvm.loop !140

540:                                              ; preds = %529, %525, %528, %499, %403
  %541 = phi i32 [ %405, %403 ], [ %510, %499 ], [ %517, %528 ], [ %517, %525 ], [ %517, %529 ]
  %542 = phi i32 [ %81, %403 ], [ %505, %499 ], [ %518, %528 ], [ %518, %525 ], [ %518, %529 ]
  %543 = phi ptr [ %80, %403 ], [ %417, %499 ], [ %9, %528 ], [ %417, %525 ], [ %530, %529 ]
  %544 = phi ptr [ %79, %403 ], [ %416, %499 ], [ %416, %528 ], [ %9, %525 ], [ %531, %529 ]
  store i32 0, ptr %543, align 4, !tbaa !25
  store i32 0, ptr %544, align 4, !tbaa !25
  %545 = add i32 %542, -8
  store i32 %545, ptr %12, align 4, !tbaa !19
  br label %546

546:                                              ; preds = %186, %289, %394, %540
  %547 = phi i32 [ %541, %540 ], [ 1, %186 ], [ %293, %289 ], [ %398, %394 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %548

548:                                              ; preds = %8, %546
  %549 = phi i32 [ %547, %546 ], [ 0, %8 ]
  ret i32 %549
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_extDict_3(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %570, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %13, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 3, i32 noundef 1)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !20

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !18
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi i64 [ %33, %30 ], [ %20, %17 ]
  %38 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %41 = load i32, ptr %40, align 4, !tbaa !24
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 4095)
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %44 = load i32, ptr %43, align 4, !tbaa !109
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %46 = load ptr, ptr %45, align 8, !tbaa !108
  %47 = load i32, ptr %3, align 1, !tbaa !25
  %48 = mul i32 %47, -1640531535
  %49 = sub i32 32, %44
  %50 = lshr i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds nuw i32, ptr %46, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !25
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %55 = load ptr, ptr %54, align 8, !tbaa !110
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %57 = load i32, ptr %56, align 4, !tbaa !111
  %58 = add i32 %57, -1
  %59 = shl nsw i32 -1, %58
  %60 = xor i32 %59, -1
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %62 = load ptr, ptr %61, align 8, !tbaa !112
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %64 = load i32, ptr %63, align 8, !tbaa !22
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds nuw i8, ptr %62, i64 %65
  %67 = getelementptr inbounds nuw i8, ptr %38, i64 %65
  %68 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %60)
  %69 = load i32, ptr %39, align 4, !tbaa !113
  %70 = getelementptr i8, ptr %1, i64 28
  %71 = load i32, ptr %70, align 4, !tbaa !107
  %72 = getelementptr i8, ptr %1, i64 40
  %73 = load i32, ptr %72, align 8, !tbaa !114
  %74 = shl nuw i32 1, %69
  %75 = sub i32 %36, %71
  %76 = icmp ugt i32 %75, %74
  %77 = sub i32 %36, %74
  %78 = icmp eq i32 %73, 0
  %79 = select i1 %78, i1 %76, i1 false
  %80 = select i1 %79, i32 %77, i32 %71
  %81 = tail call i32 @llvm.umax.i32(i32 %80, i32 1)
  %82 = and i32 %36, %60
  %83 = shl nuw i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds nuw i32, ptr %55, i64 %84
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 4
  %87 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %89 = load i32, ptr %88, align 4, !tbaa !115
  %90 = shl nuw i32 1, %89
  %91 = add i32 %7, -1
  %92 = zext i32 %91 to i64
  %93 = icmp ult i32 %6, -3
  br i1 %93, label %94, label %239

94:                                               ; preds = %35
  %95 = add nuw i32 %6, 3
  %96 = sub i32 %36, %64
  %97 = sub i32 %36, %80
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %99 = getelementptr inbounds i8, ptr %4, i64 -7
  %100 = icmp ult ptr %98, %99
  %101 = getelementptr inbounds i8, ptr %4, i64 -3
  %102 = getelementptr inbounds i8, ptr %4, i64 -1
  %103 = ptrtoint ptr %98 to i64
  %104 = zext i32 %6 to i64
  %105 = zext i32 %95 to i64
  br label %106

106:                                              ; preds = %94, %234
  %107 = phi i64 [ %104, %94 ], [ %237, %234 ]
  %108 = phi i32 [ 0, %94 ], [ %235, %234 ]
  %109 = phi i64 [ %92, %94 ], [ %236, %234 ]
  %110 = icmp eq i64 %107, 3
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, ptr %5, align 4, !tbaa !25
  %113 = add i32 %112, -1
  br label %117

114:                                              ; preds = %106
  %115 = getelementptr inbounds nuw i32, ptr %5, i64 %107
  %116 = load i32, ptr %115, align 4, !tbaa !25
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi i32 [ %113, %111 ], [ %116, %114 ]
  %119 = sub i32 %36, %118
  %120 = add i32 %118, -1
  %121 = icmp ult i32 %120, %96
  br i1 %121, label %122, label %200

122:                                              ; preds = %117
  %123 = icmp uge i32 %119, %80
  %124 = load i32, ptr %3, align 1, !tbaa !25
  %125 = zext i32 %118 to i64
  %126 = sub nsw i64 0, %125
  %127 = getelementptr inbounds i8, ptr %3, i64 %126
  %128 = load i32, ptr %127, align 1, !tbaa !25
  %129 = xor i32 %128, %124
  %130 = and i32 %129, 16777215
  %131 = icmp eq i32 %130, 0
  %132 = and i1 %123, %131
  br i1 %132, label %133, label %218

133:                                              ; preds = %122
  %134 = getelementptr inbounds i8, ptr %98, i64 %126
  br i1 %100, label %135, label %160

135:                                              ; preds = %133
  %136 = load i64, ptr %134, align 1, !tbaa !30
  %137 = load i64, ptr %98, align 1, !tbaa !30
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = xor i64 %137, %136
  %141 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %140, i1 true)
  %142 = lshr i64 %141, 3
  br label %196

143:                                              ; preds = %135, %149
  %144 = phi ptr [ %147, %149 ], [ %134, %135 ]
  %145 = phi ptr [ %146, %149 ], [ %98, %135 ]
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %147 = getelementptr inbounds nuw i8, ptr %144, i64 8
  %148 = icmp ult ptr %146, %99
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load i64, ptr %147, align 1, !tbaa !30
  %151 = load i64, ptr %146, align 1, !tbaa !30
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %143, label %153

153:                                              ; preds = %149
  %154 = xor i64 %151, %150
  %155 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %154, i1 true)
  %156 = lshr i64 %155, 3
  %157 = getelementptr inbounds nuw i8, ptr %146, i64 %156
  %158 = ptrtoint ptr %157 to i64
  %159 = sub i64 %158, %103
  br label %196

160:                                              ; preds = %143, %133
  %161 = phi ptr [ %134, %133 ], [ %147, %143 ]
  %162 = phi ptr [ %98, %133 ], [ %146, %143 ]
  %163 = icmp ult ptr %162, %101
  br i1 %163, label %164, label %171

164:                                              ; preds = %160
  %165 = load i32, ptr %161, align 1, !tbaa !25
  %166 = load i32, ptr %162, align 1, !tbaa !25
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = getelementptr inbounds nuw i8, ptr %162, i64 4
  %170 = getelementptr inbounds nuw i8, ptr %161, i64 4
  br label %171

171:                                              ; preds = %168, %164, %160
  %172 = phi ptr [ %170, %168 ], [ %161, %164 ], [ %161, %160 ]
  %173 = phi ptr [ %169, %168 ], [ %162, %164 ], [ %162, %160 ]
  %174 = icmp ult ptr %173, %102
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  %176 = load i16, ptr %172, align 1, !tbaa !116
  %177 = load i16, ptr %173, align 1, !tbaa !116
  %178 = icmp eq i16 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = getelementptr inbounds nuw i8, ptr %173, i64 2
  %181 = getelementptr inbounds nuw i8, ptr %172, i64 2
  br label %182

182:                                              ; preds = %179, %175, %171
  %183 = phi ptr [ %181, %179 ], [ %172, %175 ], [ %172, %171 ]
  %184 = phi ptr [ %180, %179 ], [ %173, %175 ], [ %173, %171 ]
  %185 = icmp ult ptr %184, %4
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load i8, ptr %183, align 1, !tbaa !42
  %188 = load i8, ptr %184, align 1, !tbaa !42
  %189 = icmp eq i8 %187, %188
  %190 = zext i1 %189 to i64
  %191 = getelementptr inbounds nuw i8, ptr %184, i64 %190
  br label %192

192:                                              ; preds = %186, %182
  %193 = phi ptr [ %184, %182 ], [ %191, %186 ]
  %194 = ptrtoint ptr %193 to i64
  %195 = sub i64 %194, %103
  br label %196

196:                                              ; preds = %139, %153, %192
  %197 = phi i64 [ %195, %192 ], [ %142, %139 ], [ %159, %153 ]
  %198 = trunc i64 %197 to i32
  %199 = add i32 %198, 3
  br label %218

200:                                              ; preds = %117
  %201 = zext i32 %119 to i64
  %202 = getelementptr inbounds nuw i8, ptr %62, i64 %201
  %203 = icmp uge i32 %120, %97
  %204 = sub i32 %119, %64
  %205 = icmp ugt i32 %204, -4
  %206 = select i1 %203, i1 true, i1 %205
  br i1 %206, label %218, label %207

207:                                              ; preds = %200
  %208 = load i32, ptr %3, align 1, !tbaa !25
  %209 = load i32, ptr %202, align 1, !tbaa !25
  %210 = xor i32 %209, %208
  %211 = and i32 %210, 16777215
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = getelementptr inbounds nuw i8, ptr %202, i64 3
  %215 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %98, ptr noundef nonnull %214, ptr noundef %4, ptr noundef nonnull %66, ptr noundef %67)
  %216 = trunc i64 %215 to i32
  %217 = add i32 %216, 3
  br label %218

218:                                              ; preds = %200, %207, %213, %196, %122
  %219 = phi i32 [ %199, %196 ], [ 0, %122 ], [ %217, %213 ], [ 0, %207 ], [ 0, %200 ]
  %220 = zext i32 %219 to i64
  %221 = icmp samesign ult i64 %109, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %218
  %223 = zext i32 %108 to i64
  %224 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %223
  %225 = trunc i64 %107 to i32
  %226 = sub i32 %225, %6
  %227 = add i32 %226, 1
  store i32 %227, ptr %224, align 4, !tbaa !46
  %228 = getelementptr inbounds nuw i8, ptr %224, i64 4
  store i32 %219, ptr %228, align 4, !tbaa !44
  %229 = add i32 %108, 1
  %230 = icmp ule i32 %219, %42
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 %220
  %232 = icmp ne ptr %231, %4
  %233 = and i1 %230, %232
  br i1 %233, label %234, label %568

234:                                              ; preds = %218, %222
  %235 = phi i32 [ %229, %222 ], [ %108, %218 ]
  %236 = phi i64 [ %220, %222 ], [ %109, %218 ]
  %237 = add nuw nsw i64 %107, 1
  %238 = icmp eq i64 %237, %105
  br i1 %238, label %239, label %106, !llvm.loop !141

239:                                              ; preds = %234, %35
  %240 = phi i64 [ %92, %35 ], [ %236, %234 ]
  %241 = phi i32 [ 0, %35 ], [ %235, %234 ]
  %242 = icmp samesign ult i64 %240, 3
  br i1 %242, label %243, label %407

243:                                              ; preds = %239
  %244 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %245 = load ptr, ptr %244, align 8, !tbaa !136
  %246 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %247 = load i32, ptr %246, align 8, !tbaa !137
  %248 = load i32, ptr %2, align 4, !tbaa !25
  %249 = load i32, ptr %3, align 1, !tbaa !25
  %250 = sub i32 32, %247
  %251 = icmp ult i32 %248, %36
  br i1 %251, label %252, label %310

252:                                              ; preds = %243
  %253 = zext i32 %248 to i64
  %254 = and i64 %37, 4294967295
  %255 = sub i64 %37, %253
  %256 = and i64 %255, 3
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %252, %258
  %259 = phi i64 [ %268, %258 ], [ %253, %252 ]
  %260 = phi i64 [ %269, %258 ], [ 0, %252 ]
  %261 = getelementptr inbounds nuw i8, ptr %38, i64 %259
  %262 = load i32, ptr %261, align 1, !tbaa !25
  %263 = mul i32 %262, 900185344
  %264 = lshr i32 %263, %250
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds nuw i32, ptr %245, i64 %265
  %267 = trunc nuw i64 %259 to i32
  store i32 %267, ptr %266, align 4, !tbaa !25
  %268 = add nuw nsw i64 %259, 1
  %269 = add i64 %260, 1
  %270 = icmp eq i64 %269, %256
  br i1 %270, label %271, label %258, !llvm.loop !142

271:                                              ; preds = %258, %252
  %272 = phi i64 [ %253, %252 ], [ %268, %258 ]
  %273 = sub nsw i64 %253, %254
  %274 = icmp ugt i64 %273, -4
  br i1 %274, label %310, label %275

275:                                              ; preds = %271, %275
  %276 = phi i64 [ %308, %275 ], [ %272, %271 ]
  %277 = getelementptr inbounds nuw i8, ptr %38, i64 %276
  %278 = load i32, ptr %277, align 1, !tbaa !25
  %279 = mul i32 %278, 900185344
  %280 = lshr i32 %279, %250
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds nuw i32, ptr %245, i64 %281
  %283 = trunc nuw i64 %276 to i32
  store i32 %283, ptr %282, align 4, !tbaa !25
  %284 = add nuw nsw i64 %276, 1
  %285 = getelementptr inbounds nuw i8, ptr %38, i64 %284
  %286 = load i32, ptr %285, align 1, !tbaa !25
  %287 = mul i32 %286, 900185344
  %288 = lshr i32 %287, %250
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds nuw i32, ptr %245, i64 %289
  %291 = trunc nuw i64 %284 to i32
  store i32 %291, ptr %290, align 4, !tbaa !25
  %292 = add nuw nsw i64 %276, 2
  %293 = getelementptr inbounds nuw i8, ptr %38, i64 %292
  %294 = load i32, ptr %293, align 1, !tbaa !25
  %295 = mul i32 %294, 900185344
  %296 = lshr i32 %295, %250
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds nuw i32, ptr %245, i64 %297
  %299 = trunc nuw i64 %292 to i32
  store i32 %299, ptr %298, align 4, !tbaa !25
  %300 = add nuw nsw i64 %276, 3
  %301 = getelementptr inbounds nuw i8, ptr %38, i64 %300
  %302 = load i32, ptr %301, align 1, !tbaa !25
  %303 = mul i32 %302, 900185344
  %304 = lshr i32 %303, %250
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds nuw i32, ptr %245, i64 %305
  %307 = trunc nuw i64 %300 to i32
  store i32 %307, ptr %306, align 4, !tbaa !25
  %308 = add nuw nsw i64 %276, 4
  %309 = icmp eq i64 %308, %254
  br i1 %309, label %310, label %275, !llvm.loop !139

310:                                              ; preds = %271, %275, %243
  %311 = mul i32 %249, 900185344
  %312 = lshr i32 %311, %250
  %313 = zext i32 %312 to i64
  store i32 %36, ptr %2, align 4, !tbaa !25
  %314 = getelementptr inbounds nuw i32, ptr %245, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !25
  %316 = icmp uge i32 %315, %81
  %317 = sub i32 %36, %315
  %318 = icmp ult i32 %317, 262144
  %319 = and i1 %316, %318
  br i1 %319, label %320, label %407

320:                                              ; preds = %310
  %321 = icmp ult i32 %315, %64
  %322 = zext i32 %315 to i64
  br i1 %321, label %390, label %323

323:                                              ; preds = %320
  %324 = getelementptr inbounds nuw i8, ptr %38, i64 %322
  %325 = getelementptr inbounds i8, ptr %4, i64 -7
  %326 = icmp ult ptr %3, %325
  br i1 %326, label %327, label %352

327:                                              ; preds = %323
  %328 = load i64, ptr %324, align 1, !tbaa !30
  %329 = load i64, ptr %3, align 1, !tbaa !30
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %335, label %331

331:                                              ; preds = %327
  %332 = xor i64 %329, %328
  %333 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %332, i1 true)
  %334 = lshr i64 %333, 3
  br label %393

335:                                              ; preds = %327, %341
  %336 = phi ptr [ %339, %341 ], [ %324, %327 ]
  %337 = phi ptr [ %338, %341 ], [ %3, %327 ]
  %338 = getelementptr inbounds nuw i8, ptr %337, i64 8
  %339 = getelementptr inbounds nuw i8, ptr %336, i64 8
  %340 = icmp ult ptr %338, %325
  br i1 %340, label %341, label %352

341:                                              ; preds = %335
  %342 = load i64, ptr %339, align 1, !tbaa !30
  %343 = load i64, ptr %338, align 1, !tbaa !30
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %335, label %345

345:                                              ; preds = %341
  %346 = xor i64 %343, %342
  %347 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %346, i1 true)
  %348 = lshr i64 %347, 3
  %349 = getelementptr inbounds nuw i8, ptr %338, i64 %348
  %350 = ptrtoint ptr %349 to i64
  %351 = sub i64 %350, %18
  br label %393

352:                                              ; preds = %335, %323
  %353 = phi ptr [ %324, %323 ], [ %339, %335 ]
  %354 = phi ptr [ %3, %323 ], [ %338, %335 ]
  %355 = getelementptr inbounds i8, ptr %4, i64 -3
  %356 = icmp ult ptr %354, %355
  br i1 %356, label %357, label %364

357:                                              ; preds = %352
  %358 = load i32, ptr %353, align 1, !tbaa !25
  %359 = load i32, ptr %354, align 1, !tbaa !25
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %357
  %362 = getelementptr inbounds nuw i8, ptr %354, i64 4
  %363 = getelementptr inbounds nuw i8, ptr %353, i64 4
  br label %364

364:                                              ; preds = %361, %357, %352
  %365 = phi ptr [ %363, %361 ], [ %353, %357 ], [ %353, %352 ]
  %366 = phi ptr [ %362, %361 ], [ %354, %357 ], [ %354, %352 ]
  %367 = getelementptr inbounds i8, ptr %4, i64 -1
  %368 = icmp ult ptr %366, %367
  br i1 %368, label %369, label %376

369:                                              ; preds = %364
  %370 = load i16, ptr %365, align 1, !tbaa !116
  %371 = load i16, ptr %366, align 1, !tbaa !116
  %372 = icmp eq i16 %370, %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %369
  %374 = getelementptr inbounds nuw i8, ptr %366, i64 2
  %375 = getelementptr inbounds nuw i8, ptr %365, i64 2
  br label %376

376:                                              ; preds = %373, %369, %364
  %377 = phi ptr [ %375, %373 ], [ %365, %369 ], [ %365, %364 ]
  %378 = phi ptr [ %374, %373 ], [ %366, %369 ], [ %366, %364 ]
  %379 = icmp ult ptr %378, %4
  br i1 %379, label %380, label %386

380:                                              ; preds = %376
  %381 = load i8, ptr %377, align 1, !tbaa !42
  %382 = load i8, ptr %378, align 1, !tbaa !42
  %383 = icmp eq i8 %381, %382
  %384 = zext i1 %383 to i64
  %385 = getelementptr inbounds nuw i8, ptr %378, i64 %384
  br label %386

386:                                              ; preds = %380, %376
  %387 = phi ptr [ %378, %376 ], [ %385, %380 ]
  %388 = ptrtoint ptr %387 to i64
  %389 = sub i64 %388, %18
  br label %393

390:                                              ; preds = %320
  %391 = getelementptr inbounds nuw i8, ptr %62, i64 %322
  %392 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3, ptr noundef %391, ptr noundef %4, ptr noundef nonnull %66, ptr noundef nonnull %67)
  br label %393

393:                                              ; preds = %386, %345, %331, %390
  %394 = phi i64 [ %392, %390 ], [ %389, %386 ], [ %334, %331 ], [ %351, %345 ]
  %395 = icmp ugt i64 %394, 2
  br i1 %395, label %396, label %407

396:                                              ; preds = %393
  %397 = add nuw nsw i32 %317, 3
  store i32 %397, ptr %0, align 4, !tbaa !46
  %398 = trunc i64 %394 to i32
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %398, ptr %399, align 4, !tbaa !44
  %400 = zext nneg i32 %42 to i64
  %401 = icmp ugt i64 %394, %400
  %402 = getelementptr inbounds nuw i8, ptr %3, i64 %394
  %403 = icmp eq ptr %402, %4
  %404 = or i1 %401, %403
  br i1 %404, label %405, label %407

405:                                              ; preds = %396
  %406 = add i32 %36, 1
  br label %565

407:                                              ; preds = %393, %396, %310, %239
  %408 = phi i64 [ %240, %239 ], [ %240, %393 ], [ %394, %396 ], [ %240, %310 ]
  %409 = phi i32 [ %241, %239 ], [ %241, %393 ], [ 1, %396 ], [ %241, %310 ]
  store i32 %36, ptr %52, align 4, !tbaa !25
  %410 = icmp ult i32 %53, %81
  br i1 %410, label %559, label %411

411:                                              ; preds = %407
  %412 = getelementptr inbounds i8, ptr %4, i64 -7
  %413 = getelementptr inbounds i8, ptr %4, i64 -3
  %414 = getelementptr inbounds i8, ptr %4, i64 -1
  %415 = add i32 %36, 3
  br label %416

416:                                              ; preds = %411, %548
  %417 = phi i32 [ %53, %411 ], [ %554, %548 ]
  %418 = phi i64 [ 0, %411 ], [ %552, %548 ]
  %419 = phi i64 [ 0, %411 ], [ %551, %548 ]
  %420 = phi ptr [ %85, %411 ], [ %550, %548 ]
  %421 = phi ptr [ %86, %411 ], [ %549, %548 ]
  %422 = phi i32 [ %87, %411 ], [ %537, %548 ]
  %423 = phi i32 [ %409, %411 ], [ %536, %548 ]
  %424 = phi i32 [ %90, %411 ], [ %555, %548 ]
  %425 = phi i64 [ %408, %411 ], [ %535, %548 ]
  %426 = and i32 %417, %60
  %427 = shl nuw i32 %426, 1
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds nuw i32, ptr %55, i64 %428
  %430 = tail call i64 @llvm.umin.i64(i64 %418, i64 %419)
  %431 = zext i32 %417 to i64
  %432 = add i64 %430, %431
  %433 = icmp ult i64 %432, %65
  %434 = getelementptr inbounds nuw i8, ptr %3, i64 %430
  br i1 %433, label %505, label %435

435:                                              ; preds = %416
  %436 = getelementptr inbounds nuw i8, ptr %38, i64 %431
  %437 = getelementptr inbounds nuw i8, ptr %436, i64 %430
  %438 = icmp ult ptr %434, %412
  br i1 %438, label %439, label %465

439:                                              ; preds = %435
  %440 = load i64, ptr %437, align 1, !tbaa !30
  %441 = load i64, ptr %434, align 1, !tbaa !30
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %447, label %443

443:                                              ; preds = %439
  %444 = xor i64 %441, %440
  %445 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %444, i1 true)
  %446 = lshr i64 %445, 3
  br label %502

447:                                              ; preds = %439, %453
  %448 = phi ptr [ %451, %453 ], [ %437, %439 ]
  %449 = phi ptr [ %450, %453 ], [ %434, %439 ]
  %450 = getelementptr inbounds nuw i8, ptr %449, i64 8
  %451 = getelementptr inbounds nuw i8, ptr %448, i64 8
  %452 = icmp ult ptr %450, %412
  br i1 %452, label %453, label %465

453:                                              ; preds = %447
  %454 = load i64, ptr %451, align 1, !tbaa !30
  %455 = load i64, ptr %450, align 1, !tbaa !30
  %456 = icmp eq i64 %454, %455
  br i1 %456, label %447, label %457

457:                                              ; preds = %453
  %458 = xor i64 %455, %454
  %459 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %458, i1 true)
  %460 = lshr i64 %459, 3
  %461 = getelementptr inbounds nuw i8, ptr %450, i64 %460
  %462 = ptrtoint ptr %461 to i64
  %463 = ptrtoint ptr %434 to i64
  %464 = sub i64 %462, %463
  br label %502

465:                                              ; preds = %447, %435
  %466 = phi ptr [ %437, %435 ], [ %451, %447 ]
  %467 = phi ptr [ %434, %435 ], [ %450, %447 ]
  %468 = icmp ult ptr %467, %413
  br i1 %468, label %469, label %476

469:                                              ; preds = %465
  %470 = load i32, ptr %466, align 1, !tbaa !25
  %471 = load i32, ptr %467, align 1, !tbaa !25
  %472 = icmp eq i32 %470, %471
  br i1 %472, label %473, label %476

473:                                              ; preds = %469
  %474 = getelementptr inbounds nuw i8, ptr %467, i64 4
  %475 = getelementptr inbounds nuw i8, ptr %466, i64 4
  br label %476

476:                                              ; preds = %473, %469, %465
  %477 = phi ptr [ %475, %473 ], [ %466, %469 ], [ %466, %465 ]
  %478 = phi ptr [ %474, %473 ], [ %467, %469 ], [ %467, %465 ]
  %479 = icmp ult ptr %478, %414
  br i1 %479, label %480, label %487

480:                                              ; preds = %476
  %481 = load i16, ptr %477, align 1, !tbaa !116
  %482 = load i16, ptr %478, align 1, !tbaa !116
  %483 = icmp eq i16 %481, %482
  br i1 %483, label %484, label %487

484:                                              ; preds = %480
  %485 = getelementptr inbounds nuw i8, ptr %478, i64 2
  %486 = getelementptr inbounds nuw i8, ptr %477, i64 2
  br label %487

487:                                              ; preds = %484, %480, %476
  %488 = phi ptr [ %486, %484 ], [ %477, %480 ], [ %477, %476 ]
  %489 = phi ptr [ %485, %484 ], [ %478, %480 ], [ %478, %476 ]
  %490 = icmp ult ptr %489, %4
  br i1 %490, label %491, label %497

491:                                              ; preds = %487
  %492 = load i8, ptr %488, align 1, !tbaa !42
  %493 = load i8, ptr %489, align 1, !tbaa !42
  %494 = icmp eq i8 %492, %493
  %495 = zext i1 %494 to i64
  %496 = getelementptr inbounds nuw i8, ptr %489, i64 %495
  br label %497

497:                                              ; preds = %491, %487
  %498 = phi ptr [ %489, %487 ], [ %496, %491 ]
  %499 = ptrtoint ptr %498 to i64
  %500 = ptrtoint ptr %434 to i64
  %501 = sub i64 %499, %500
  br label %502

502:                                              ; preds = %443, %457, %497
  %503 = phi i64 [ %501, %497 ], [ %446, %443 ], [ %464, %457 ]
  %504 = add i64 %503, %430
  br label %514

505:                                              ; preds = %416
  %506 = getelementptr inbounds nuw i8, ptr %62, i64 %431
  %507 = getelementptr inbounds nuw i8, ptr %506, i64 %430
  %508 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %434, ptr noundef %507, ptr noundef %4, ptr noundef nonnull %66, ptr noundef nonnull %67)
  %509 = add i64 %508, %430
  %510 = add i64 %509, %431
  %511 = icmp ult i64 %510, %65
  %512 = getelementptr inbounds nuw i8, ptr %38, i64 %431
  %513 = select i1 %511, ptr %506, ptr %512
  br label %514

514:                                              ; preds = %505, %502
  %515 = phi ptr [ %436, %502 ], [ %513, %505 ]
  %516 = phi i64 [ %504, %502 ], [ %509, %505 ]
  %517 = icmp ugt i64 %516, %425
  br i1 %517, label %518, label %534

518:                                              ; preds = %514
  %519 = sub i32 %422, %417
  %520 = zext i32 %519 to i64
  %521 = icmp ugt i64 %516, %520
  %522 = trunc i64 %516 to i32
  %523 = add i32 %417, %522
  %524 = select i1 %521, i32 %523, i32 %422
  %525 = sub i32 %415, %417
  %526 = zext i32 %423 to i64
  %527 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %526
  store i32 %525, ptr %527, align 4, !tbaa !46
  %528 = getelementptr inbounds nuw i8, ptr %527, i64 4
  store i32 %522, ptr %528, align 4, !tbaa !44
  %529 = add i32 %423, 1
  %530 = icmp ugt i64 %516, 4096
  %531 = getelementptr inbounds nuw i8, ptr %3, i64 %516
  %532 = icmp eq ptr %531, %4
  %533 = or i1 %530, %532
  br i1 %533, label %559, label %534

534:                                              ; preds = %518, %514
  %535 = phi i64 [ %516, %518 ], [ %425, %514 ]
  %536 = phi i32 [ %529, %518 ], [ %423, %514 ]
  %537 = phi i32 [ %524, %518 ], [ %422, %514 ]
  %538 = getelementptr inbounds nuw i8, ptr %515, i64 %516
  %539 = load i8, ptr %538, align 1, !tbaa !42
  %540 = getelementptr inbounds nuw i8, ptr %3, i64 %516
  %541 = load i8, ptr %540, align 1, !tbaa !42
  %542 = icmp ult i8 %539, %541
  %543 = icmp ugt i32 %417, %68
  br i1 %542, label %544, label %547

544:                                              ; preds = %534
  store i32 %417, ptr %420, align 4, !tbaa !25
  br i1 %543, label %545, label %559

545:                                              ; preds = %544
  %546 = getelementptr inbounds nuw i8, ptr %429, i64 4
  br label %548

547:                                              ; preds = %534
  store i32 %417, ptr %421, align 4, !tbaa !25
  br i1 %543, label %548, label %559

548:                                              ; preds = %547, %545
  %549 = phi ptr [ %421, %545 ], [ %429, %547 ]
  %550 = phi ptr [ %546, %545 ], [ %420, %547 ]
  %551 = phi i64 [ %419, %545 ], [ %516, %547 ]
  %552 = phi i64 [ %516, %545 ], [ %418, %547 ]
  %553 = phi ptr [ %546, %545 ], [ %429, %547 ]
  %554 = load i32, ptr %553, align 4, !tbaa !25
  %555 = add i32 %424, -1
  %556 = icmp ne i32 %555, 0
  %557 = icmp uge i32 %554, %81
  %558 = select i1 %556, i1 %557, i1 false
  br i1 %558, label %416, label %559, !llvm.loop !140

559:                                              ; preds = %548, %544, %547, %518, %407
  %560 = phi i32 [ %409, %407 ], [ %529, %518 ], [ %536, %547 ], [ %536, %544 ], [ %536, %548 ]
  %561 = phi i32 [ %87, %407 ], [ %524, %518 ], [ %537, %547 ], [ %537, %544 ], [ %537, %548 ]
  %562 = phi ptr [ %86, %407 ], [ %421, %518 ], [ %9, %547 ], [ %421, %544 ], [ %549, %548 ]
  %563 = phi ptr [ %85, %407 ], [ %420, %518 ], [ %420, %547 ], [ %9, %544 ], [ %550, %548 ]
  store i32 0, ptr %562, align 4, !tbaa !25
  store i32 0, ptr %563, align 4, !tbaa !25
  %564 = add i32 %561, -8
  br label %565

565:                                              ; preds = %559, %405
  %566 = phi i32 [ %406, %405 ], [ %564, %559 ]
  %567 = phi i32 [ 1, %405 ], [ %560, %559 ]
  store i32 %566, ptr %12, align 4, !tbaa !19
  br label %568

568:                                              ; preds = %222, %565
  %569 = phi i32 [ %567, %565 ], [ %229, %222 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %570

570:                                              ; preds = %8, %568
  %571 = phi i32 [ %569, %568 ], [ 0, %8 ]
  ret i32 %571
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_extDict_4(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %613, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %13, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 4, i32 noundef 1)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !20

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !18
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %43 = load i32, ptr %42, align 4, !tbaa !109
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  %46 = load i32, ptr %3, align 1, !tbaa !25
  %47 = mul i32 %46, -1640531535
  %48 = sub i32 32, %43
  %49 = lshr i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %56 = load i32, ptr %55, align 4, !tbaa !111
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %61 = load ptr, ptr %60, align 8, !tbaa !112
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %63 = load i32, ptr %62, align 8, !tbaa !22
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %66 = getelementptr inbounds nuw i8, ptr %37, i64 %64
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %68 = load i32, ptr %38, align 4, !tbaa !113
  %69 = getelementptr i8, ptr %1, i64 28
  %70 = load i32, ptr %69, align 4, !tbaa !107
  %71 = getelementptr i8, ptr %1, i64 40
  %72 = load i32, ptr %71, align 8, !tbaa !114
  %73 = shl nuw i32 1, %68
  %74 = sub i32 %36, %70
  %75 = icmp ugt i32 %74, %73
  %76 = sub i32 %36, %73
  %77 = icmp eq i32 %72, 0
  %78 = select i1 %77, i1 %75, i1 false
  %79 = select i1 %78, i32 %76, i32 %70
  %80 = tail call i32 @llvm.umax.i32(i32 %79, i32 1)
  %81 = and i32 %36, %59
  %82 = shl nuw i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds nuw i32, ptr %54, i64 %83
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 4
  %86 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %88 = load i32, ptr %87, align 4, !tbaa !115
  %89 = shl nuw i32 1, %88
  %90 = add i32 %7, -1
  %91 = zext i32 %90 to i64
  %92 = icmp ult i32 %6, -3
  br i1 %92, label %93, label %453

93:                                               ; preds = %35
  %94 = sub i32 %36, %63
  %95 = sub i32 %36, %79
  %96 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %97 = getelementptr inbounds i8, ptr %4, i64 -7
  %98 = icmp ult ptr %96, %97
  %99 = getelementptr inbounds i8, ptr %4, i64 -3
  %100 = getelementptr inbounds i8, ptr %4, i64 -1
  %101 = ptrtoint ptr %96 to i64
  %102 = zext i32 %6 to i64
  %103 = icmp eq i32 %6, 3
  br i1 %103, label %104, label %107

104:                                              ; preds = %93
  %105 = load i32, ptr %5, align 4, !tbaa !25
  %106 = add i32 %105, -1
  br label %110

107:                                              ; preds = %93
  %108 = getelementptr inbounds nuw i32, ptr %5, i64 %102
  %109 = load i32, ptr %108, align 4, !tbaa !25
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i32 [ %106, %104 ], [ %109, %107 ]
  %112 = sub i32 %36, %111
  %113 = add i32 %111, -1
  %114 = icmp ult i32 %113, %94
  br i1 %114, label %115, label %186

115:                                              ; preds = %110
  %116 = icmp uge i32 %112, %79
  %117 = zext i32 %111 to i64
  %118 = sub nsw i64 0, %117
  %119 = getelementptr inbounds i8, ptr %3, i64 %118
  %120 = load i32, ptr %119, align 1, !tbaa !25
  %121 = icmp eq i32 %46, %120
  %122 = and i1 %116, %121
  br i1 %122, label %123, label %211

123:                                              ; preds = %115
  %124 = getelementptr inbounds i8, ptr %96, i64 %118
  br i1 %98, label %125, label %150

125:                                              ; preds = %123
  %126 = load i64, ptr %124, align 1, !tbaa !30
  %127 = load i64, ptr %96, align 1, !tbaa !30
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = xor i64 %127, %126
  %131 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %130, i1 true)
  %132 = lshr i64 %131, 3
  br label %199

133:                                              ; preds = %125, %139
  %134 = phi ptr [ %137, %139 ], [ %124, %125 ]
  %135 = phi ptr [ %136, %139 ], [ %96, %125 ]
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 8
  %137 = getelementptr inbounds nuw i8, ptr %134, i64 8
  %138 = icmp ult ptr %136, %97
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load i64, ptr %137, align 1, !tbaa !30
  %141 = load i64, ptr %136, align 1, !tbaa !30
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %133, label %143

143:                                              ; preds = %139
  %144 = xor i64 %141, %140
  %145 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %144, i1 true)
  %146 = lshr i64 %145, 3
  %147 = getelementptr inbounds nuw i8, ptr %136, i64 %146
  %148 = ptrtoint ptr %147 to i64
  %149 = sub i64 %148, %101
  br label %199

150:                                              ; preds = %133, %123
  %151 = phi ptr [ %124, %123 ], [ %137, %133 ]
  %152 = phi ptr [ %96, %123 ], [ %136, %133 ]
  %153 = icmp ult ptr %152, %99
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load i32, ptr %151, align 1, !tbaa !25
  %156 = load i32, ptr %152, align 1, !tbaa !25
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = getelementptr inbounds nuw i8, ptr %152, i64 4
  %160 = getelementptr inbounds nuw i8, ptr %151, i64 4
  br label %161

161:                                              ; preds = %158, %154, %150
  %162 = phi ptr [ %160, %158 ], [ %151, %154 ], [ %151, %150 ]
  %163 = phi ptr [ %159, %158 ], [ %152, %154 ], [ %152, %150 ]
  %164 = icmp ult ptr %163, %100
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load i16, ptr %162, align 1, !tbaa !116
  %167 = load i16, ptr %163, align 1, !tbaa !116
  %168 = icmp eq i16 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = getelementptr inbounds nuw i8, ptr %163, i64 2
  %171 = getelementptr inbounds nuw i8, ptr %162, i64 2
  br label %172

172:                                              ; preds = %169, %165, %161
  %173 = phi ptr [ %171, %169 ], [ %162, %165 ], [ %162, %161 ]
  %174 = phi ptr [ %170, %169 ], [ %163, %165 ], [ %163, %161 ]
  %175 = icmp ult ptr %174, %4
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load i8, ptr %173, align 1, !tbaa !42
  %178 = load i8, ptr %174, align 1, !tbaa !42
  %179 = icmp eq i8 %177, %178
  %180 = zext i1 %179 to i64
  %181 = getelementptr inbounds nuw i8, ptr %174, i64 %180
  br label %182

182:                                              ; preds = %176, %172
  %183 = phi ptr [ %174, %172 ], [ %181, %176 ]
  %184 = ptrtoint ptr %183 to i64
  %185 = sub i64 %184, %101
  br label %199

186:                                              ; preds = %110
  %187 = zext i32 %112 to i64
  %188 = getelementptr inbounds nuw i8, ptr %61, i64 %187
  %189 = icmp uge i32 %113, %95
  %190 = sub i32 %112, %63
  %191 = icmp ugt i32 %190, -4
  %192 = select i1 %189, i1 true, i1 %191
  br i1 %192, label %211, label %193

193:                                              ; preds = %186
  %194 = load i32, ptr %188, align 1, !tbaa !25
  %195 = icmp eq i32 %46, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  %197 = getelementptr inbounds nuw i8, ptr %188, i64 4
  %198 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %96, ptr noundef nonnull %197, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  br label %199

199:                                              ; preds = %182, %143, %129, %196
  %200 = phi i64 [ %198, %196 ], [ %185, %182 ], [ %132, %129 ], [ %149, %143 ]
  %201 = trunc i64 %200 to i32
  %202 = add i32 %201, 4
  %203 = icmp ult i32 %90, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = zext i32 %202 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %202, ptr %206, align 4, !tbaa !44
  %207 = icmp ule i32 %202, %41
  %208 = getelementptr inbounds nuw i8, ptr %3, i64 %205
  %209 = icmp ne ptr %208, %4
  %210 = and i1 %207, %209
  br i1 %210, label %211, label %611

211:                                              ; preds = %186, %193, %115, %199, %204
  %212 = phi i32 [ 1, %204 ], [ 0, %199 ], [ 0, %115 ], [ 0, %193 ], [ 0, %186 ]
  %213 = phi i64 [ %205, %204 ], [ %91, %199 ], [ %91, %115 ], [ %91, %193 ], [ %91, %186 ]
  %214 = add nuw nsw i64 %102, 1
  %215 = icmp eq i64 %214, 3
  br i1 %215, label %219, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds nuw i32, ptr %5, i64 %214
  %218 = load i32, ptr %217, align 4, !tbaa !25
  br label %222

219:                                              ; preds = %211
  %220 = load i32, ptr %5, align 4, !tbaa !25
  %221 = add i32 %220, -1
  br label %222

222:                                              ; preds = %219, %216
  %223 = phi i32 [ %221, %219 ], [ %218, %216 ]
  %224 = sub i32 %36, %223
  %225 = add i32 %223, -1
  %226 = icmp ult i32 %225, %94
  br i1 %226, label %243, label %227

227:                                              ; preds = %222
  %228 = zext i32 %224 to i64
  %229 = getelementptr inbounds nuw i8, ptr %61, i64 %228
  %230 = icmp uge i32 %225, %95
  %231 = sub i32 %224, %63
  %232 = icmp ugt i32 %231, -4
  %233 = select i1 %230, i1 true, i1 %232
  br i1 %233, label %319, label %234

234:                                              ; preds = %227
  %235 = load i32, ptr %3, align 1, !tbaa !25
  %236 = load i32, ptr %229, align 1, !tbaa !25
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %319

238:                                              ; preds = %234
  %239 = getelementptr inbounds nuw i8, ptr %229, i64 4
  %240 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %96, ptr noundef nonnull %239, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %241 = trunc i64 %240 to i32
  %242 = add i32 %241, 4
  br label %319

243:                                              ; preds = %222
  %244 = icmp uge i32 %224, %79
  %245 = load i32, ptr %3, align 1, !tbaa !25
  %246 = zext i32 %223 to i64
  %247 = sub nsw i64 0, %246
  %248 = getelementptr inbounds i8, ptr %3, i64 %247
  %249 = load i32, ptr %248, align 1, !tbaa !25
  %250 = icmp eq i32 %245, %249
  %251 = and i1 %244, %250
  br i1 %251, label %252, label %319

252:                                              ; preds = %243
  %253 = getelementptr inbounds i8, ptr %96, i64 %247
  br i1 %98, label %254, label %268

254:                                              ; preds = %252
  %255 = load i64, ptr %253, align 1, !tbaa !30
  %256 = load i64, ptr %96, align 1, !tbaa !30
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = xor i64 %256, %255
  %260 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %259, i1 true)
  %261 = lshr i64 %260, 3
  br label %315

262:                                              ; preds = %254, %304
  %263 = phi ptr [ %266, %304 ], [ %253, %254 ]
  %264 = phi ptr [ %265, %304 ], [ %96, %254 ]
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %266 = getelementptr inbounds nuw i8, ptr %263, i64 8
  %267 = icmp ult ptr %265, %97
  br i1 %267, label %304, label %268

268:                                              ; preds = %262, %252
  %269 = phi ptr [ %253, %252 ], [ %266, %262 ]
  %270 = phi ptr [ %96, %252 ], [ %265, %262 ]
  %271 = icmp ult ptr %270, %99
  br i1 %271, label %272, label %279

272:                                              ; preds = %268
  %273 = load i32, ptr %269, align 1, !tbaa !25
  %274 = load i32, ptr %270, align 1, !tbaa !25
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = getelementptr inbounds nuw i8, ptr %270, i64 4
  %278 = getelementptr inbounds nuw i8, ptr %269, i64 4
  br label %279

279:                                              ; preds = %276, %272, %268
  %280 = phi ptr [ %278, %276 ], [ %269, %272 ], [ %269, %268 ]
  %281 = phi ptr [ %277, %276 ], [ %270, %272 ], [ %270, %268 ]
  %282 = icmp ult ptr %281, %100
  br i1 %282, label %283, label %290

283:                                              ; preds = %279
  %284 = load i16, ptr %280, align 1, !tbaa !116
  %285 = load i16, ptr %281, align 1, !tbaa !116
  %286 = icmp eq i16 %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  %288 = getelementptr inbounds nuw i8, ptr %281, i64 2
  %289 = getelementptr inbounds nuw i8, ptr %280, i64 2
  br label %290

290:                                              ; preds = %287, %283, %279
  %291 = phi ptr [ %289, %287 ], [ %280, %283 ], [ %280, %279 ]
  %292 = phi ptr [ %288, %287 ], [ %281, %283 ], [ %281, %279 ]
  %293 = icmp ult ptr %292, %4
  br i1 %293, label %294, label %300

294:                                              ; preds = %290
  %295 = load i8, ptr %291, align 1, !tbaa !42
  %296 = load i8, ptr %292, align 1, !tbaa !42
  %297 = icmp eq i8 %295, %296
  %298 = zext i1 %297 to i64
  %299 = getelementptr inbounds nuw i8, ptr %292, i64 %298
  br label %300

300:                                              ; preds = %294, %290
  %301 = phi ptr [ %292, %290 ], [ %299, %294 ]
  %302 = ptrtoint ptr %301 to i64
  %303 = sub i64 %302, %101
  br label %315

304:                                              ; preds = %262
  %305 = load i64, ptr %266, align 1, !tbaa !30
  %306 = load i64, ptr %265, align 1, !tbaa !30
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %262, label %308

308:                                              ; preds = %304
  %309 = xor i64 %306, %305
  %310 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %309, i1 true)
  %311 = lshr i64 %310, 3
  %312 = getelementptr inbounds nuw i8, ptr %265, i64 %311
  %313 = ptrtoint ptr %312 to i64
  %314 = sub i64 %313, %101
  br label %315

315:                                              ; preds = %308, %300, %258
  %316 = phi i64 [ %303, %300 ], [ %261, %258 ], [ %314, %308 ]
  %317 = trunc i64 %316 to i32
  %318 = add i32 %317, 4
  br label %319

319:                                              ; preds = %315, %243, %238, %234, %227
  %320 = phi i32 [ %318, %315 ], [ 0, %243 ], [ %242, %238 ], [ 0, %234 ], [ 0, %227 ]
  %321 = zext i32 %320 to i64
  %322 = icmp samesign ult i64 %213, %321
  br i1 %322, label %323, label %332

323:                                              ; preds = %319
  %324 = zext nneg i32 %212 to i64
  %325 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %324
  store i32 2, ptr %325, align 4, !tbaa !46
  %326 = getelementptr inbounds nuw i8, ptr %325, i64 4
  store i32 %320, ptr %326, align 4, !tbaa !44
  %327 = add nuw nsw i32 %212, 1
  %328 = icmp ule i32 %320, %41
  %329 = getelementptr inbounds nuw i8, ptr %3, i64 %321
  %330 = icmp ne ptr %329, %4
  %331 = and i1 %328, %330
  br i1 %331, label %332, label %611

332:                                              ; preds = %323, %319
  %333 = phi i32 [ %327, %323 ], [ %212, %319 ]
  %334 = phi i64 [ %321, %323 ], [ %213, %319 ]
  %335 = add nuw nsw i64 %102, 2
  %336 = icmp eq i64 %335, 3
  br i1 %336, label %340, label %337

337:                                              ; preds = %332
  %338 = getelementptr inbounds nuw i32, ptr %5, i64 %335
  %339 = load i32, ptr %338, align 4, !tbaa !25
  br label %343

340:                                              ; preds = %332
  %341 = load i32, ptr %5, align 4, !tbaa !25
  %342 = add i32 %341, -1
  br label %343

343:                                              ; preds = %340, %337
  %344 = phi i32 [ %342, %340 ], [ %339, %337 ]
  %345 = sub i32 %36, %344
  %346 = add i32 %344, -1
  %347 = icmp ult i32 %346, %94
  br i1 %347, label %364, label %348

348:                                              ; preds = %343
  %349 = zext i32 %345 to i64
  %350 = getelementptr inbounds nuw i8, ptr %61, i64 %349
  %351 = icmp uge i32 %346, %95
  %352 = sub i32 %345, %63
  %353 = icmp ugt i32 %352, -4
  %354 = select i1 %351, i1 true, i1 %353
  br i1 %354, label %440, label %355

355:                                              ; preds = %348
  %356 = load i32, ptr %3, align 1, !tbaa !25
  %357 = load i32, ptr %350, align 1, !tbaa !25
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %440

359:                                              ; preds = %355
  %360 = getelementptr inbounds nuw i8, ptr %350, i64 4
  %361 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %96, ptr noundef nonnull %360, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %362 = trunc i64 %361 to i32
  %363 = add i32 %362, 4
  br label %440

364:                                              ; preds = %343
  %365 = icmp uge i32 %345, %79
  %366 = load i32, ptr %3, align 1, !tbaa !25
  %367 = zext i32 %344 to i64
  %368 = sub nsw i64 0, %367
  %369 = getelementptr inbounds i8, ptr %3, i64 %368
  %370 = load i32, ptr %369, align 1, !tbaa !25
  %371 = icmp eq i32 %366, %370
  %372 = and i1 %365, %371
  br i1 %372, label %373, label %440

373:                                              ; preds = %364
  %374 = getelementptr inbounds i8, ptr %96, i64 %368
  br i1 %98, label %375, label %389

375:                                              ; preds = %373
  %376 = load i64, ptr %374, align 1, !tbaa !30
  %377 = load i64, ptr %96, align 1, !tbaa !30
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %383, label %379

379:                                              ; preds = %375
  %380 = xor i64 %377, %376
  %381 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %380, i1 true)
  %382 = lshr i64 %381, 3
  br label %436

383:                                              ; preds = %375, %425
  %384 = phi ptr [ %387, %425 ], [ %374, %375 ]
  %385 = phi ptr [ %386, %425 ], [ %96, %375 ]
  %386 = getelementptr inbounds nuw i8, ptr %385, i64 8
  %387 = getelementptr inbounds nuw i8, ptr %384, i64 8
  %388 = icmp ult ptr %386, %97
  br i1 %388, label %425, label %389

389:                                              ; preds = %383, %373
  %390 = phi ptr [ %374, %373 ], [ %387, %383 ]
  %391 = phi ptr [ %96, %373 ], [ %386, %383 ]
  %392 = icmp ult ptr %391, %99
  br i1 %392, label %393, label %400

393:                                              ; preds = %389
  %394 = load i32, ptr %390, align 1, !tbaa !25
  %395 = load i32, ptr %391, align 1, !tbaa !25
  %396 = icmp eq i32 %394, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %393
  %398 = getelementptr inbounds nuw i8, ptr %391, i64 4
  %399 = getelementptr inbounds nuw i8, ptr %390, i64 4
  br label %400

400:                                              ; preds = %397, %393, %389
  %401 = phi ptr [ %399, %397 ], [ %390, %393 ], [ %390, %389 ]
  %402 = phi ptr [ %398, %397 ], [ %391, %393 ], [ %391, %389 ]
  %403 = icmp ult ptr %402, %100
  br i1 %403, label %404, label %411

404:                                              ; preds = %400
  %405 = load i16, ptr %401, align 1, !tbaa !116
  %406 = load i16, ptr %402, align 1, !tbaa !116
  %407 = icmp eq i16 %405, %406
  br i1 %407, label %408, label %411

408:                                              ; preds = %404
  %409 = getelementptr inbounds nuw i8, ptr %402, i64 2
  %410 = getelementptr inbounds nuw i8, ptr %401, i64 2
  br label %411

411:                                              ; preds = %408, %404, %400
  %412 = phi ptr [ %410, %408 ], [ %401, %404 ], [ %401, %400 ]
  %413 = phi ptr [ %409, %408 ], [ %402, %404 ], [ %402, %400 ]
  %414 = icmp ult ptr %413, %4
  br i1 %414, label %415, label %421

415:                                              ; preds = %411
  %416 = load i8, ptr %412, align 1, !tbaa !42
  %417 = load i8, ptr %413, align 1, !tbaa !42
  %418 = icmp eq i8 %416, %417
  %419 = zext i1 %418 to i64
  %420 = getelementptr inbounds nuw i8, ptr %413, i64 %419
  br label %421

421:                                              ; preds = %415, %411
  %422 = phi ptr [ %413, %411 ], [ %420, %415 ]
  %423 = ptrtoint ptr %422 to i64
  %424 = sub i64 %423, %101
  br label %436

425:                                              ; preds = %383
  %426 = load i64, ptr %387, align 1, !tbaa !30
  %427 = load i64, ptr %386, align 1, !tbaa !30
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %383, label %429

429:                                              ; preds = %425
  %430 = xor i64 %427, %426
  %431 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %430, i1 true)
  %432 = lshr i64 %431, 3
  %433 = getelementptr inbounds nuw i8, ptr %386, i64 %432
  %434 = ptrtoint ptr %433 to i64
  %435 = sub i64 %434, %101
  br label %436

436:                                              ; preds = %429, %421, %379
  %437 = phi i64 [ %424, %421 ], [ %382, %379 ], [ %435, %429 ]
  %438 = trunc i64 %437 to i32
  %439 = add i32 %438, 4
  br label %440

440:                                              ; preds = %436, %364, %359, %355, %348
  %441 = phi i32 [ %439, %436 ], [ 0, %364 ], [ %363, %359 ], [ 0, %355 ], [ 0, %348 ]
  %442 = zext i32 %441 to i64
  %443 = icmp samesign ult i64 %334, %442
  br i1 %443, label %444, label %453

444:                                              ; preds = %440
  %445 = zext nneg i32 %333 to i64
  %446 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %445
  store i32 3, ptr %446, align 4, !tbaa !46
  %447 = getelementptr inbounds nuw i8, ptr %446, i64 4
  store i32 %441, ptr %447, align 4, !tbaa !44
  %448 = add nuw nsw i32 %333, 1
  %449 = icmp ule i32 %441, %41
  %450 = getelementptr inbounds nuw i8, ptr %3, i64 %442
  %451 = icmp ne ptr %450, %4
  %452 = and i1 %449, %451
  br i1 %452, label %453, label %611

453:                                              ; preds = %440, %444, %35
  %454 = phi i64 [ %91, %35 ], [ %442, %444 ], [ %334, %440 ]
  %455 = phi i32 [ 0, %35 ], [ %448, %444 ], [ %333, %440 ]
  store i32 %36, ptr %51, align 4, !tbaa !25
  %456 = icmp ult i32 %52, %80
  br i1 %456, label %605, label %457

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, ptr %4, i64 -7
  %459 = getelementptr inbounds i8, ptr %4, i64 -3
  %460 = getelementptr inbounds i8, ptr %4, i64 -1
  %461 = add i32 %36, 3
  br label %462

462:                                              ; preds = %457, %594
  %463 = phi i32 [ %52, %457 ], [ %600, %594 ]
  %464 = phi i64 [ 0, %457 ], [ %598, %594 ]
  %465 = phi i64 [ 0, %457 ], [ %597, %594 ]
  %466 = phi ptr [ %84, %457 ], [ %596, %594 ]
  %467 = phi ptr [ %85, %457 ], [ %595, %594 ]
  %468 = phi i32 [ %86, %457 ], [ %583, %594 ]
  %469 = phi i32 [ %455, %457 ], [ %582, %594 ]
  %470 = phi i32 [ %89, %457 ], [ %601, %594 ]
  %471 = phi i64 [ %454, %457 ], [ %581, %594 ]
  %472 = and i32 %463, %59
  %473 = shl nuw i32 %472, 1
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds nuw i32, ptr %54, i64 %474
  %476 = tail call i64 @llvm.umin.i64(i64 %464, i64 %465)
  %477 = zext i32 %463 to i64
  %478 = add i64 %476, %477
  %479 = icmp ult i64 %478, %64
  %480 = getelementptr inbounds nuw i8, ptr %3, i64 %476
  br i1 %479, label %551, label %481

481:                                              ; preds = %462
  %482 = getelementptr inbounds nuw i8, ptr %37, i64 %477
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 %476
  %484 = icmp ult ptr %480, %458
  br i1 %484, label %485, label %511

485:                                              ; preds = %481
  %486 = load i64, ptr %483, align 1, !tbaa !30
  %487 = load i64, ptr %480, align 1, !tbaa !30
  %488 = icmp eq i64 %486, %487
  br i1 %488, label %493, label %489

489:                                              ; preds = %485
  %490 = xor i64 %487, %486
  %491 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %490, i1 true)
  %492 = lshr i64 %491, 3
  br label %548

493:                                              ; preds = %485, %499
  %494 = phi ptr [ %497, %499 ], [ %483, %485 ]
  %495 = phi ptr [ %496, %499 ], [ %480, %485 ]
  %496 = getelementptr inbounds nuw i8, ptr %495, i64 8
  %497 = getelementptr inbounds nuw i8, ptr %494, i64 8
  %498 = icmp ult ptr %496, %458
  br i1 %498, label %499, label %511

499:                                              ; preds = %493
  %500 = load i64, ptr %497, align 1, !tbaa !30
  %501 = load i64, ptr %496, align 1, !tbaa !30
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %493, label %503

503:                                              ; preds = %499
  %504 = xor i64 %501, %500
  %505 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %504, i1 true)
  %506 = lshr i64 %505, 3
  %507 = getelementptr inbounds nuw i8, ptr %496, i64 %506
  %508 = ptrtoint ptr %507 to i64
  %509 = ptrtoint ptr %480 to i64
  %510 = sub i64 %508, %509
  br label %548

511:                                              ; preds = %493, %481
  %512 = phi ptr [ %483, %481 ], [ %497, %493 ]
  %513 = phi ptr [ %480, %481 ], [ %496, %493 ]
  %514 = icmp ult ptr %513, %459
  br i1 %514, label %515, label %522

515:                                              ; preds = %511
  %516 = load i32, ptr %512, align 1, !tbaa !25
  %517 = load i32, ptr %513, align 1, !tbaa !25
  %518 = icmp eq i32 %516, %517
  br i1 %518, label %519, label %522

519:                                              ; preds = %515
  %520 = getelementptr inbounds nuw i8, ptr %513, i64 4
  %521 = getelementptr inbounds nuw i8, ptr %512, i64 4
  br label %522

522:                                              ; preds = %519, %515, %511
  %523 = phi ptr [ %521, %519 ], [ %512, %515 ], [ %512, %511 ]
  %524 = phi ptr [ %520, %519 ], [ %513, %515 ], [ %513, %511 ]
  %525 = icmp ult ptr %524, %460
  br i1 %525, label %526, label %533

526:                                              ; preds = %522
  %527 = load i16, ptr %523, align 1, !tbaa !116
  %528 = load i16, ptr %524, align 1, !tbaa !116
  %529 = icmp eq i16 %527, %528
  br i1 %529, label %530, label %533

530:                                              ; preds = %526
  %531 = getelementptr inbounds nuw i8, ptr %524, i64 2
  %532 = getelementptr inbounds nuw i8, ptr %523, i64 2
  br label %533

533:                                              ; preds = %530, %526, %522
  %534 = phi ptr [ %532, %530 ], [ %523, %526 ], [ %523, %522 ]
  %535 = phi ptr [ %531, %530 ], [ %524, %526 ], [ %524, %522 ]
  %536 = icmp ult ptr %535, %4
  br i1 %536, label %537, label %543

537:                                              ; preds = %533
  %538 = load i8, ptr %534, align 1, !tbaa !42
  %539 = load i8, ptr %535, align 1, !tbaa !42
  %540 = icmp eq i8 %538, %539
  %541 = zext i1 %540 to i64
  %542 = getelementptr inbounds nuw i8, ptr %535, i64 %541
  br label %543

543:                                              ; preds = %537, %533
  %544 = phi ptr [ %535, %533 ], [ %542, %537 ]
  %545 = ptrtoint ptr %544 to i64
  %546 = ptrtoint ptr %480 to i64
  %547 = sub i64 %545, %546
  br label %548

548:                                              ; preds = %489, %503, %543
  %549 = phi i64 [ %547, %543 ], [ %492, %489 ], [ %510, %503 ]
  %550 = add i64 %549, %476
  br label %560

551:                                              ; preds = %462
  %552 = getelementptr inbounds nuw i8, ptr %61, i64 %477
  %553 = getelementptr inbounds nuw i8, ptr %552, i64 %476
  %554 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %480, ptr noundef %553, ptr noundef %4, ptr noundef nonnull %65, ptr noundef nonnull %66)
  %555 = add i64 %554, %476
  %556 = add i64 %555, %477
  %557 = icmp ult i64 %556, %64
  %558 = getelementptr inbounds nuw i8, ptr %37, i64 %477
  %559 = select i1 %557, ptr %552, ptr %558
  br label %560

560:                                              ; preds = %551, %548
  %561 = phi ptr [ %482, %548 ], [ %559, %551 ]
  %562 = phi i64 [ %550, %548 ], [ %555, %551 ]
  %563 = icmp ugt i64 %562, %471
  br i1 %563, label %564, label %580

564:                                              ; preds = %560
  %565 = sub i32 %468, %463
  %566 = zext i32 %565 to i64
  %567 = icmp ugt i64 %562, %566
  %568 = trunc i64 %562 to i32
  %569 = add i32 %463, %568
  %570 = select i1 %567, i32 %569, i32 %468
  %571 = sub i32 %461, %463
  %572 = zext i32 %469 to i64
  %573 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %572
  store i32 %571, ptr %573, align 4, !tbaa !46
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 4
  store i32 %568, ptr %574, align 4, !tbaa !44
  %575 = add i32 %469, 1
  %576 = icmp ugt i64 %562, 4096
  %577 = getelementptr inbounds nuw i8, ptr %3, i64 %562
  %578 = icmp eq ptr %577, %4
  %579 = or i1 %576, %578
  br i1 %579, label %605, label %580

580:                                              ; preds = %564, %560
  %581 = phi i64 [ %562, %564 ], [ %471, %560 ]
  %582 = phi i32 [ %575, %564 ], [ %469, %560 ]
  %583 = phi i32 [ %570, %564 ], [ %468, %560 ]
  %584 = getelementptr inbounds nuw i8, ptr %561, i64 %562
  %585 = load i8, ptr %584, align 1, !tbaa !42
  %586 = getelementptr inbounds nuw i8, ptr %3, i64 %562
  %587 = load i8, ptr %586, align 1, !tbaa !42
  %588 = icmp ult i8 %585, %587
  %589 = icmp ugt i32 %463, %67
  br i1 %588, label %590, label %593

590:                                              ; preds = %580
  store i32 %463, ptr %466, align 4, !tbaa !25
  br i1 %589, label %591, label %605

591:                                              ; preds = %590
  %592 = getelementptr inbounds nuw i8, ptr %475, i64 4
  br label %594

593:                                              ; preds = %580
  store i32 %463, ptr %467, align 4, !tbaa !25
  br i1 %589, label %594, label %605

594:                                              ; preds = %593, %591
  %595 = phi ptr [ %467, %591 ], [ %475, %593 ]
  %596 = phi ptr [ %592, %591 ], [ %466, %593 ]
  %597 = phi i64 [ %465, %591 ], [ %562, %593 ]
  %598 = phi i64 [ %562, %591 ], [ %464, %593 ]
  %599 = phi ptr [ %592, %591 ], [ %475, %593 ]
  %600 = load i32, ptr %599, align 4, !tbaa !25
  %601 = add i32 %470, -1
  %602 = icmp ne i32 %601, 0
  %603 = icmp uge i32 %600, %80
  %604 = select i1 %602, i1 %603, i1 false
  br i1 %604, label %462, label %605, !llvm.loop !140

605:                                              ; preds = %594, %590, %593, %564, %453
  %606 = phi i32 [ %455, %453 ], [ %575, %564 ], [ %582, %593 ], [ %582, %590 ], [ %582, %594 ]
  %607 = phi i32 [ %86, %453 ], [ %570, %564 ], [ %583, %593 ], [ %583, %590 ], [ %583, %594 ]
  %608 = phi ptr [ %85, %453 ], [ %467, %564 ], [ %9, %593 ], [ %467, %590 ], [ %595, %594 ]
  %609 = phi ptr [ %84, %453 ], [ %466, %564 ], [ %466, %593 ], [ %9, %590 ], [ %596, %594 ]
  store i32 0, ptr %608, align 4, !tbaa !25
  store i32 0, ptr %609, align 4, !tbaa !25
  %610 = add i32 %607, -8
  store i32 %610, ptr %12, align 4, !tbaa !19
  br label %611

611:                                              ; preds = %204, %323, %444, %605
  %612 = phi i32 [ %606, %605 ], [ 1, %204 ], [ %327, %323 ], [ %448, %444 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %613

613:                                              ; preds = %8, %611
  %614 = phi i32 [ %612, %611 ], [ 0, %8 ]
  ret i32 %614
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_extDict_5(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %614, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %13, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 5, i32 noundef 1)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !20

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !18
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %43 = load i32, ptr %42, align 4, !tbaa !109
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  %46 = load i64, ptr %3, align 1
  %47 = mul i64 %46, -3523014627271114752
  %48 = sub i32 64, %43
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = getelementptr inbounds nuw i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %56 = load i32, ptr %55, align 4, !tbaa !111
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %61 = load ptr, ptr %60, align 8, !tbaa !112
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %63 = load i32, ptr %62, align 8, !tbaa !22
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %66 = getelementptr inbounds nuw i8, ptr %37, i64 %64
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %68 = load i32, ptr %38, align 4, !tbaa !113
  %69 = getelementptr i8, ptr %1, i64 28
  %70 = load i32, ptr %69, align 4, !tbaa !107
  %71 = getelementptr i8, ptr %1, i64 40
  %72 = load i32, ptr %71, align 8, !tbaa !114
  %73 = shl nuw i32 1, %68
  %74 = sub i32 %36, %70
  %75 = icmp ugt i32 %74, %73
  %76 = sub i32 %36, %73
  %77 = icmp eq i32 %72, 0
  %78 = select i1 %77, i1 %75, i1 false
  %79 = select i1 %78, i32 %76, i32 %70
  %80 = tail call i32 @llvm.umax.i32(i32 %79, i32 1)
  %81 = and i32 %36, %59
  %82 = shl nuw i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds nuw i32, ptr %54, i64 %83
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 4
  %86 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %88 = load i32, ptr %87, align 4, !tbaa !115
  %89 = shl nuw i32 1, %88
  %90 = add i32 %7, -1
  %91 = zext i32 %90 to i64
  %92 = icmp ult i32 %6, -3
  %93 = trunc i64 %46 to i32
  br i1 %92, label %94, label %454

94:                                               ; preds = %35
  %95 = sub i32 %36, %63
  %96 = sub i32 %36, %79
  %97 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %98 = getelementptr inbounds i8, ptr %4, i64 -7
  %99 = icmp ult ptr %97, %98
  %100 = getelementptr inbounds i8, ptr %4, i64 -3
  %101 = getelementptr inbounds i8, ptr %4, i64 -1
  %102 = ptrtoint ptr %97 to i64
  %103 = zext i32 %6 to i64
  %104 = icmp eq i32 %6, 3
  br i1 %104, label %105, label %108

105:                                              ; preds = %94
  %106 = load i32, ptr %5, align 4, !tbaa !25
  %107 = add i32 %106, -1
  br label %111

108:                                              ; preds = %94
  %109 = getelementptr inbounds nuw i32, ptr %5, i64 %103
  %110 = load i32, ptr %109, align 4, !tbaa !25
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi i32 [ %107, %105 ], [ %110, %108 ]
  %113 = sub i32 %36, %112
  %114 = add i32 %112, -1
  %115 = icmp ult i32 %114, %95
  br i1 %115, label %116, label %187

116:                                              ; preds = %111
  %117 = icmp uge i32 %113, %79
  %118 = zext i32 %112 to i64
  %119 = sub nsw i64 0, %118
  %120 = getelementptr inbounds i8, ptr %3, i64 %119
  %121 = load i32, ptr %120, align 1, !tbaa !25
  %122 = icmp eq i32 %121, %93
  %123 = and i1 %117, %122
  br i1 %123, label %124, label %212

124:                                              ; preds = %116
  %125 = getelementptr inbounds i8, ptr %97, i64 %119
  br i1 %99, label %126, label %151

126:                                              ; preds = %124
  %127 = load i64, ptr %125, align 1, !tbaa !30
  %128 = load i64, ptr %97, align 1, !tbaa !30
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = xor i64 %128, %127
  %132 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %131, i1 true)
  %133 = lshr i64 %132, 3
  br label %200

134:                                              ; preds = %126, %140
  %135 = phi ptr [ %138, %140 ], [ %125, %126 ]
  %136 = phi ptr [ %137, %140 ], [ %97, %126 ]
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 8
  %138 = getelementptr inbounds nuw i8, ptr %135, i64 8
  %139 = icmp ult ptr %137, %98
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load i64, ptr %138, align 1, !tbaa !30
  %142 = load i64, ptr %137, align 1, !tbaa !30
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %134, label %144

144:                                              ; preds = %140
  %145 = xor i64 %142, %141
  %146 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %145, i1 true)
  %147 = lshr i64 %146, 3
  %148 = getelementptr inbounds nuw i8, ptr %137, i64 %147
  %149 = ptrtoint ptr %148 to i64
  %150 = sub i64 %149, %102
  br label %200

151:                                              ; preds = %134, %124
  %152 = phi ptr [ %125, %124 ], [ %138, %134 ]
  %153 = phi ptr [ %97, %124 ], [ %137, %134 ]
  %154 = icmp ult ptr %153, %100
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i32, ptr %152, align 1, !tbaa !25
  %157 = load i32, ptr %153, align 1, !tbaa !25
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = getelementptr inbounds nuw i8, ptr %153, i64 4
  %161 = getelementptr inbounds nuw i8, ptr %152, i64 4
  br label %162

162:                                              ; preds = %159, %155, %151
  %163 = phi ptr [ %161, %159 ], [ %152, %155 ], [ %152, %151 ]
  %164 = phi ptr [ %160, %159 ], [ %153, %155 ], [ %153, %151 ]
  %165 = icmp ult ptr %164, %101
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load i16, ptr %163, align 1, !tbaa !116
  %168 = load i16, ptr %164, align 1, !tbaa !116
  %169 = icmp eq i16 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = getelementptr inbounds nuw i8, ptr %164, i64 2
  %172 = getelementptr inbounds nuw i8, ptr %163, i64 2
  br label %173

173:                                              ; preds = %170, %166, %162
  %174 = phi ptr [ %172, %170 ], [ %163, %166 ], [ %163, %162 ]
  %175 = phi ptr [ %171, %170 ], [ %164, %166 ], [ %164, %162 ]
  %176 = icmp ult ptr %175, %4
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i8, ptr %174, align 1, !tbaa !42
  %179 = load i8, ptr %175, align 1, !tbaa !42
  %180 = icmp eq i8 %178, %179
  %181 = zext i1 %180 to i64
  %182 = getelementptr inbounds nuw i8, ptr %175, i64 %181
  br label %183

183:                                              ; preds = %177, %173
  %184 = phi ptr [ %175, %173 ], [ %182, %177 ]
  %185 = ptrtoint ptr %184 to i64
  %186 = sub i64 %185, %102
  br label %200

187:                                              ; preds = %111
  %188 = zext i32 %113 to i64
  %189 = getelementptr inbounds nuw i8, ptr %61, i64 %188
  %190 = icmp uge i32 %114, %96
  %191 = sub i32 %113, %63
  %192 = icmp ugt i32 %191, -4
  %193 = select i1 %190, i1 true, i1 %192
  br i1 %193, label %212, label %194

194:                                              ; preds = %187
  %195 = load i32, ptr %189, align 1, !tbaa !25
  %196 = icmp eq i32 %195, %93
  br i1 %196, label %197, label %212

197:                                              ; preds = %194
  %198 = getelementptr inbounds nuw i8, ptr %189, i64 4
  %199 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %198, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  br label %200

200:                                              ; preds = %183, %144, %130, %197
  %201 = phi i64 [ %199, %197 ], [ %186, %183 ], [ %133, %130 ], [ %150, %144 ]
  %202 = trunc i64 %201 to i32
  %203 = add i32 %202, 4
  %204 = icmp ult i32 %90, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = zext i32 %203 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %203, ptr %207, align 4, !tbaa !44
  %208 = icmp ule i32 %203, %41
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 %206
  %210 = icmp ne ptr %209, %4
  %211 = and i1 %208, %210
  br i1 %211, label %212, label %612

212:                                              ; preds = %187, %194, %116, %200, %205
  %213 = phi i32 [ 1, %205 ], [ 0, %200 ], [ 0, %116 ], [ 0, %194 ], [ 0, %187 ]
  %214 = phi i64 [ %206, %205 ], [ %91, %200 ], [ %91, %116 ], [ %91, %194 ], [ %91, %187 ]
  %215 = add nuw nsw i64 %103, 1
  %216 = icmp eq i64 %215, 3
  br i1 %216, label %220, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds nuw i32, ptr %5, i64 %215
  %219 = load i32, ptr %218, align 4, !tbaa !25
  br label %223

220:                                              ; preds = %212
  %221 = load i32, ptr %5, align 4, !tbaa !25
  %222 = add i32 %221, -1
  br label %223

223:                                              ; preds = %220, %217
  %224 = phi i32 [ %222, %220 ], [ %219, %217 ]
  %225 = sub i32 %36, %224
  %226 = add i32 %224, -1
  %227 = icmp ult i32 %226, %95
  br i1 %227, label %244, label %228

228:                                              ; preds = %223
  %229 = zext i32 %225 to i64
  %230 = getelementptr inbounds nuw i8, ptr %61, i64 %229
  %231 = icmp uge i32 %226, %96
  %232 = sub i32 %225, %63
  %233 = icmp ugt i32 %232, -4
  %234 = select i1 %231, i1 true, i1 %233
  br i1 %234, label %320, label %235

235:                                              ; preds = %228
  %236 = load i32, ptr %3, align 1, !tbaa !25
  %237 = load i32, ptr %230, align 1, !tbaa !25
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %320

239:                                              ; preds = %235
  %240 = getelementptr inbounds nuw i8, ptr %230, i64 4
  %241 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %240, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %242 = trunc i64 %241 to i32
  %243 = add i32 %242, 4
  br label %320

244:                                              ; preds = %223
  %245 = icmp uge i32 %225, %79
  %246 = load i32, ptr %3, align 1, !tbaa !25
  %247 = zext i32 %224 to i64
  %248 = sub nsw i64 0, %247
  %249 = getelementptr inbounds i8, ptr %3, i64 %248
  %250 = load i32, ptr %249, align 1, !tbaa !25
  %251 = icmp eq i32 %246, %250
  %252 = and i1 %245, %251
  br i1 %252, label %253, label %320

253:                                              ; preds = %244
  %254 = getelementptr inbounds i8, ptr %97, i64 %248
  br i1 %99, label %255, label %269

255:                                              ; preds = %253
  %256 = load i64, ptr %254, align 1, !tbaa !30
  %257 = load i64, ptr %97, align 1, !tbaa !30
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %263, label %259

259:                                              ; preds = %255
  %260 = xor i64 %257, %256
  %261 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %260, i1 true)
  %262 = lshr i64 %261, 3
  br label %316

263:                                              ; preds = %255, %305
  %264 = phi ptr [ %267, %305 ], [ %254, %255 ]
  %265 = phi ptr [ %266, %305 ], [ %97, %255 ]
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 8
  %267 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %268 = icmp ult ptr %266, %98
  br i1 %268, label %305, label %269

269:                                              ; preds = %263, %253
  %270 = phi ptr [ %254, %253 ], [ %267, %263 ]
  %271 = phi ptr [ %97, %253 ], [ %266, %263 ]
  %272 = icmp ult ptr %271, %100
  br i1 %272, label %273, label %280

273:                                              ; preds = %269
  %274 = load i32, ptr %270, align 1, !tbaa !25
  %275 = load i32, ptr %271, align 1, !tbaa !25
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = getelementptr inbounds nuw i8, ptr %271, i64 4
  %279 = getelementptr inbounds nuw i8, ptr %270, i64 4
  br label %280

280:                                              ; preds = %277, %273, %269
  %281 = phi ptr [ %279, %277 ], [ %270, %273 ], [ %270, %269 ]
  %282 = phi ptr [ %278, %277 ], [ %271, %273 ], [ %271, %269 ]
  %283 = icmp ult ptr %282, %101
  br i1 %283, label %284, label %291

284:                                              ; preds = %280
  %285 = load i16, ptr %281, align 1, !tbaa !116
  %286 = load i16, ptr %282, align 1, !tbaa !116
  %287 = icmp eq i16 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = getelementptr inbounds nuw i8, ptr %282, i64 2
  %290 = getelementptr inbounds nuw i8, ptr %281, i64 2
  br label %291

291:                                              ; preds = %288, %284, %280
  %292 = phi ptr [ %290, %288 ], [ %281, %284 ], [ %281, %280 ]
  %293 = phi ptr [ %289, %288 ], [ %282, %284 ], [ %282, %280 ]
  %294 = icmp ult ptr %293, %4
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = load i8, ptr %292, align 1, !tbaa !42
  %297 = load i8, ptr %293, align 1, !tbaa !42
  %298 = icmp eq i8 %296, %297
  %299 = zext i1 %298 to i64
  %300 = getelementptr inbounds nuw i8, ptr %293, i64 %299
  br label %301

301:                                              ; preds = %295, %291
  %302 = phi ptr [ %293, %291 ], [ %300, %295 ]
  %303 = ptrtoint ptr %302 to i64
  %304 = sub i64 %303, %102
  br label %316

305:                                              ; preds = %263
  %306 = load i64, ptr %267, align 1, !tbaa !30
  %307 = load i64, ptr %266, align 1, !tbaa !30
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %263, label %309

309:                                              ; preds = %305
  %310 = xor i64 %307, %306
  %311 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %310, i1 true)
  %312 = lshr i64 %311, 3
  %313 = getelementptr inbounds nuw i8, ptr %266, i64 %312
  %314 = ptrtoint ptr %313 to i64
  %315 = sub i64 %314, %102
  br label %316

316:                                              ; preds = %309, %301, %259
  %317 = phi i64 [ %304, %301 ], [ %262, %259 ], [ %315, %309 ]
  %318 = trunc i64 %317 to i32
  %319 = add i32 %318, 4
  br label %320

320:                                              ; preds = %316, %244, %239, %235, %228
  %321 = phi i32 [ %319, %316 ], [ 0, %244 ], [ %243, %239 ], [ 0, %235 ], [ 0, %228 ]
  %322 = zext i32 %321 to i64
  %323 = icmp samesign ult i64 %214, %322
  br i1 %323, label %324, label %333

324:                                              ; preds = %320
  %325 = zext nneg i32 %213 to i64
  %326 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %325
  store i32 2, ptr %326, align 4, !tbaa !46
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 4
  store i32 %321, ptr %327, align 4, !tbaa !44
  %328 = add nuw nsw i32 %213, 1
  %329 = icmp ule i32 %321, %41
  %330 = getelementptr inbounds nuw i8, ptr %3, i64 %322
  %331 = icmp ne ptr %330, %4
  %332 = and i1 %329, %331
  br i1 %332, label %333, label %612

333:                                              ; preds = %324, %320
  %334 = phi i32 [ %328, %324 ], [ %213, %320 ]
  %335 = phi i64 [ %322, %324 ], [ %214, %320 ]
  %336 = add nuw nsw i64 %103, 2
  %337 = icmp eq i64 %336, 3
  br i1 %337, label %341, label %338

338:                                              ; preds = %333
  %339 = getelementptr inbounds nuw i32, ptr %5, i64 %336
  %340 = load i32, ptr %339, align 4, !tbaa !25
  br label %344

341:                                              ; preds = %333
  %342 = load i32, ptr %5, align 4, !tbaa !25
  %343 = add i32 %342, -1
  br label %344

344:                                              ; preds = %341, %338
  %345 = phi i32 [ %343, %341 ], [ %340, %338 ]
  %346 = sub i32 %36, %345
  %347 = add i32 %345, -1
  %348 = icmp ult i32 %347, %95
  br i1 %348, label %365, label %349

349:                                              ; preds = %344
  %350 = zext i32 %346 to i64
  %351 = getelementptr inbounds nuw i8, ptr %61, i64 %350
  %352 = icmp uge i32 %347, %96
  %353 = sub i32 %346, %63
  %354 = icmp ugt i32 %353, -4
  %355 = select i1 %352, i1 true, i1 %354
  br i1 %355, label %441, label %356

356:                                              ; preds = %349
  %357 = load i32, ptr %3, align 1, !tbaa !25
  %358 = load i32, ptr %351, align 1, !tbaa !25
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %441

360:                                              ; preds = %356
  %361 = getelementptr inbounds nuw i8, ptr %351, i64 4
  %362 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %361, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %363 = trunc i64 %362 to i32
  %364 = add i32 %363, 4
  br label %441

365:                                              ; preds = %344
  %366 = icmp uge i32 %346, %79
  %367 = load i32, ptr %3, align 1, !tbaa !25
  %368 = zext i32 %345 to i64
  %369 = sub nsw i64 0, %368
  %370 = getelementptr inbounds i8, ptr %3, i64 %369
  %371 = load i32, ptr %370, align 1, !tbaa !25
  %372 = icmp eq i32 %367, %371
  %373 = and i1 %366, %372
  br i1 %373, label %374, label %441

374:                                              ; preds = %365
  %375 = getelementptr inbounds i8, ptr %97, i64 %369
  br i1 %99, label %376, label %390

376:                                              ; preds = %374
  %377 = load i64, ptr %375, align 1, !tbaa !30
  %378 = load i64, ptr %97, align 1, !tbaa !30
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %384, label %380

380:                                              ; preds = %376
  %381 = xor i64 %378, %377
  %382 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %381, i1 true)
  %383 = lshr i64 %382, 3
  br label %437

384:                                              ; preds = %376, %426
  %385 = phi ptr [ %388, %426 ], [ %375, %376 ]
  %386 = phi ptr [ %387, %426 ], [ %97, %376 ]
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 8
  %388 = getelementptr inbounds nuw i8, ptr %385, i64 8
  %389 = icmp ult ptr %387, %98
  br i1 %389, label %426, label %390

390:                                              ; preds = %384, %374
  %391 = phi ptr [ %375, %374 ], [ %388, %384 ]
  %392 = phi ptr [ %97, %374 ], [ %387, %384 ]
  %393 = icmp ult ptr %392, %100
  br i1 %393, label %394, label %401

394:                                              ; preds = %390
  %395 = load i32, ptr %391, align 1, !tbaa !25
  %396 = load i32, ptr %392, align 1, !tbaa !25
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %401

398:                                              ; preds = %394
  %399 = getelementptr inbounds nuw i8, ptr %392, i64 4
  %400 = getelementptr inbounds nuw i8, ptr %391, i64 4
  br label %401

401:                                              ; preds = %398, %394, %390
  %402 = phi ptr [ %400, %398 ], [ %391, %394 ], [ %391, %390 ]
  %403 = phi ptr [ %399, %398 ], [ %392, %394 ], [ %392, %390 ]
  %404 = icmp ult ptr %403, %101
  br i1 %404, label %405, label %412

405:                                              ; preds = %401
  %406 = load i16, ptr %402, align 1, !tbaa !116
  %407 = load i16, ptr %403, align 1, !tbaa !116
  %408 = icmp eq i16 %406, %407
  br i1 %408, label %409, label %412

409:                                              ; preds = %405
  %410 = getelementptr inbounds nuw i8, ptr %403, i64 2
  %411 = getelementptr inbounds nuw i8, ptr %402, i64 2
  br label %412

412:                                              ; preds = %409, %405, %401
  %413 = phi ptr [ %411, %409 ], [ %402, %405 ], [ %402, %401 ]
  %414 = phi ptr [ %410, %409 ], [ %403, %405 ], [ %403, %401 ]
  %415 = icmp ult ptr %414, %4
  br i1 %415, label %416, label %422

416:                                              ; preds = %412
  %417 = load i8, ptr %413, align 1, !tbaa !42
  %418 = load i8, ptr %414, align 1, !tbaa !42
  %419 = icmp eq i8 %417, %418
  %420 = zext i1 %419 to i64
  %421 = getelementptr inbounds nuw i8, ptr %414, i64 %420
  br label %422

422:                                              ; preds = %416, %412
  %423 = phi ptr [ %414, %412 ], [ %421, %416 ]
  %424 = ptrtoint ptr %423 to i64
  %425 = sub i64 %424, %102
  br label %437

426:                                              ; preds = %384
  %427 = load i64, ptr %388, align 1, !tbaa !30
  %428 = load i64, ptr %387, align 1, !tbaa !30
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %384, label %430

430:                                              ; preds = %426
  %431 = xor i64 %428, %427
  %432 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %431, i1 true)
  %433 = lshr i64 %432, 3
  %434 = getelementptr inbounds nuw i8, ptr %387, i64 %433
  %435 = ptrtoint ptr %434 to i64
  %436 = sub i64 %435, %102
  br label %437

437:                                              ; preds = %430, %422, %380
  %438 = phi i64 [ %425, %422 ], [ %383, %380 ], [ %436, %430 ]
  %439 = trunc i64 %438 to i32
  %440 = add i32 %439, 4
  br label %441

441:                                              ; preds = %437, %365, %360, %356, %349
  %442 = phi i32 [ %440, %437 ], [ 0, %365 ], [ %364, %360 ], [ 0, %356 ], [ 0, %349 ]
  %443 = zext i32 %442 to i64
  %444 = icmp samesign ult i64 %335, %443
  br i1 %444, label %445, label %454

445:                                              ; preds = %441
  %446 = zext nneg i32 %334 to i64
  %447 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %446
  store i32 3, ptr %447, align 4, !tbaa !46
  %448 = getelementptr inbounds nuw i8, ptr %447, i64 4
  store i32 %442, ptr %448, align 4, !tbaa !44
  %449 = add nuw nsw i32 %334, 1
  %450 = icmp ule i32 %442, %41
  %451 = getelementptr inbounds nuw i8, ptr %3, i64 %443
  %452 = icmp ne ptr %451, %4
  %453 = and i1 %450, %452
  br i1 %453, label %454, label %612

454:                                              ; preds = %441, %445, %35
  %455 = phi i64 [ %91, %35 ], [ %443, %445 ], [ %335, %441 ]
  %456 = phi i32 [ 0, %35 ], [ %449, %445 ], [ %334, %441 ]
  store i32 %36, ptr %51, align 4, !tbaa !25
  %457 = icmp ult i32 %52, %80
  br i1 %457, label %606, label %458

458:                                              ; preds = %454
  %459 = getelementptr inbounds i8, ptr %4, i64 -7
  %460 = getelementptr inbounds i8, ptr %4, i64 -3
  %461 = getelementptr inbounds i8, ptr %4, i64 -1
  %462 = add i32 %36, 3
  br label %463

463:                                              ; preds = %458, %595
  %464 = phi i32 [ %52, %458 ], [ %601, %595 ]
  %465 = phi i64 [ 0, %458 ], [ %599, %595 ]
  %466 = phi i64 [ 0, %458 ], [ %598, %595 ]
  %467 = phi ptr [ %84, %458 ], [ %597, %595 ]
  %468 = phi ptr [ %85, %458 ], [ %596, %595 ]
  %469 = phi i32 [ %86, %458 ], [ %584, %595 ]
  %470 = phi i32 [ %456, %458 ], [ %583, %595 ]
  %471 = phi i32 [ %89, %458 ], [ %602, %595 ]
  %472 = phi i64 [ %455, %458 ], [ %582, %595 ]
  %473 = and i32 %464, %59
  %474 = shl nuw i32 %473, 1
  %475 = zext i32 %474 to i64
  %476 = getelementptr inbounds nuw i32, ptr %54, i64 %475
  %477 = tail call i64 @llvm.umin.i64(i64 %465, i64 %466)
  %478 = zext i32 %464 to i64
  %479 = add i64 %477, %478
  %480 = icmp ult i64 %479, %64
  %481 = getelementptr inbounds nuw i8, ptr %3, i64 %477
  br i1 %480, label %552, label %482

482:                                              ; preds = %463
  %483 = getelementptr inbounds nuw i8, ptr %37, i64 %478
  %484 = getelementptr inbounds nuw i8, ptr %483, i64 %477
  %485 = icmp ult ptr %481, %459
  br i1 %485, label %486, label %512

486:                                              ; preds = %482
  %487 = load i64, ptr %484, align 1, !tbaa !30
  %488 = load i64, ptr %481, align 1, !tbaa !30
  %489 = icmp eq i64 %487, %488
  br i1 %489, label %494, label %490

490:                                              ; preds = %486
  %491 = xor i64 %488, %487
  %492 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %491, i1 true)
  %493 = lshr i64 %492, 3
  br label %549

494:                                              ; preds = %486, %500
  %495 = phi ptr [ %498, %500 ], [ %484, %486 ]
  %496 = phi ptr [ %497, %500 ], [ %481, %486 ]
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 8
  %498 = getelementptr inbounds nuw i8, ptr %495, i64 8
  %499 = icmp ult ptr %497, %459
  br i1 %499, label %500, label %512

500:                                              ; preds = %494
  %501 = load i64, ptr %498, align 1, !tbaa !30
  %502 = load i64, ptr %497, align 1, !tbaa !30
  %503 = icmp eq i64 %501, %502
  br i1 %503, label %494, label %504

504:                                              ; preds = %500
  %505 = xor i64 %502, %501
  %506 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %505, i1 true)
  %507 = lshr i64 %506, 3
  %508 = getelementptr inbounds nuw i8, ptr %497, i64 %507
  %509 = ptrtoint ptr %508 to i64
  %510 = ptrtoint ptr %481 to i64
  %511 = sub i64 %509, %510
  br label %549

512:                                              ; preds = %494, %482
  %513 = phi ptr [ %484, %482 ], [ %498, %494 ]
  %514 = phi ptr [ %481, %482 ], [ %497, %494 ]
  %515 = icmp ult ptr %514, %460
  br i1 %515, label %516, label %523

516:                                              ; preds = %512
  %517 = load i32, ptr %513, align 1, !tbaa !25
  %518 = load i32, ptr %514, align 1, !tbaa !25
  %519 = icmp eq i32 %517, %518
  br i1 %519, label %520, label %523

520:                                              ; preds = %516
  %521 = getelementptr inbounds nuw i8, ptr %514, i64 4
  %522 = getelementptr inbounds nuw i8, ptr %513, i64 4
  br label %523

523:                                              ; preds = %520, %516, %512
  %524 = phi ptr [ %522, %520 ], [ %513, %516 ], [ %513, %512 ]
  %525 = phi ptr [ %521, %520 ], [ %514, %516 ], [ %514, %512 ]
  %526 = icmp ult ptr %525, %461
  br i1 %526, label %527, label %534

527:                                              ; preds = %523
  %528 = load i16, ptr %524, align 1, !tbaa !116
  %529 = load i16, ptr %525, align 1, !tbaa !116
  %530 = icmp eq i16 %528, %529
  br i1 %530, label %531, label %534

531:                                              ; preds = %527
  %532 = getelementptr inbounds nuw i8, ptr %525, i64 2
  %533 = getelementptr inbounds nuw i8, ptr %524, i64 2
  br label %534

534:                                              ; preds = %531, %527, %523
  %535 = phi ptr [ %533, %531 ], [ %524, %527 ], [ %524, %523 ]
  %536 = phi ptr [ %532, %531 ], [ %525, %527 ], [ %525, %523 ]
  %537 = icmp ult ptr %536, %4
  br i1 %537, label %538, label %544

538:                                              ; preds = %534
  %539 = load i8, ptr %535, align 1, !tbaa !42
  %540 = load i8, ptr %536, align 1, !tbaa !42
  %541 = icmp eq i8 %539, %540
  %542 = zext i1 %541 to i64
  %543 = getelementptr inbounds nuw i8, ptr %536, i64 %542
  br label %544

544:                                              ; preds = %538, %534
  %545 = phi ptr [ %536, %534 ], [ %543, %538 ]
  %546 = ptrtoint ptr %545 to i64
  %547 = ptrtoint ptr %481 to i64
  %548 = sub i64 %546, %547
  br label %549

549:                                              ; preds = %490, %504, %544
  %550 = phi i64 [ %548, %544 ], [ %493, %490 ], [ %511, %504 ]
  %551 = add i64 %550, %477
  br label %561

552:                                              ; preds = %463
  %553 = getelementptr inbounds nuw i8, ptr %61, i64 %478
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 %477
  %555 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %481, ptr noundef %554, ptr noundef %4, ptr noundef nonnull %65, ptr noundef nonnull %66)
  %556 = add i64 %555, %477
  %557 = add i64 %556, %478
  %558 = icmp ult i64 %557, %64
  %559 = getelementptr inbounds nuw i8, ptr %37, i64 %478
  %560 = select i1 %558, ptr %553, ptr %559
  br label %561

561:                                              ; preds = %552, %549
  %562 = phi ptr [ %483, %549 ], [ %560, %552 ]
  %563 = phi i64 [ %551, %549 ], [ %556, %552 ]
  %564 = icmp ugt i64 %563, %472
  br i1 %564, label %565, label %581

565:                                              ; preds = %561
  %566 = sub i32 %469, %464
  %567 = zext i32 %566 to i64
  %568 = icmp ugt i64 %563, %567
  %569 = trunc i64 %563 to i32
  %570 = add i32 %464, %569
  %571 = select i1 %568, i32 %570, i32 %469
  %572 = sub i32 %462, %464
  %573 = zext i32 %470 to i64
  %574 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %573
  store i32 %572, ptr %574, align 4, !tbaa !46
  %575 = getelementptr inbounds nuw i8, ptr %574, i64 4
  store i32 %569, ptr %575, align 4, !tbaa !44
  %576 = add i32 %470, 1
  %577 = icmp ugt i64 %563, 4096
  %578 = getelementptr inbounds nuw i8, ptr %3, i64 %563
  %579 = icmp eq ptr %578, %4
  %580 = or i1 %577, %579
  br i1 %580, label %606, label %581

581:                                              ; preds = %565, %561
  %582 = phi i64 [ %563, %565 ], [ %472, %561 ]
  %583 = phi i32 [ %576, %565 ], [ %470, %561 ]
  %584 = phi i32 [ %571, %565 ], [ %469, %561 ]
  %585 = getelementptr inbounds nuw i8, ptr %562, i64 %563
  %586 = load i8, ptr %585, align 1, !tbaa !42
  %587 = getelementptr inbounds nuw i8, ptr %3, i64 %563
  %588 = load i8, ptr %587, align 1, !tbaa !42
  %589 = icmp ult i8 %586, %588
  %590 = icmp ugt i32 %464, %67
  br i1 %589, label %591, label %594

591:                                              ; preds = %581
  store i32 %464, ptr %467, align 4, !tbaa !25
  br i1 %590, label %592, label %606

592:                                              ; preds = %591
  %593 = getelementptr inbounds nuw i8, ptr %476, i64 4
  br label %595

594:                                              ; preds = %581
  store i32 %464, ptr %468, align 4, !tbaa !25
  br i1 %590, label %595, label %606

595:                                              ; preds = %594, %592
  %596 = phi ptr [ %468, %592 ], [ %476, %594 ]
  %597 = phi ptr [ %593, %592 ], [ %467, %594 ]
  %598 = phi i64 [ %466, %592 ], [ %563, %594 ]
  %599 = phi i64 [ %563, %592 ], [ %465, %594 ]
  %600 = phi ptr [ %593, %592 ], [ %476, %594 ]
  %601 = load i32, ptr %600, align 4, !tbaa !25
  %602 = add i32 %471, -1
  %603 = icmp ne i32 %602, 0
  %604 = icmp uge i32 %601, %80
  %605 = select i1 %603, i1 %604, i1 false
  br i1 %605, label %463, label %606, !llvm.loop !140

606:                                              ; preds = %595, %591, %594, %565, %454
  %607 = phi i32 [ %456, %454 ], [ %576, %565 ], [ %583, %594 ], [ %583, %591 ], [ %583, %595 ]
  %608 = phi i32 [ %86, %454 ], [ %571, %565 ], [ %584, %594 ], [ %584, %591 ], [ %584, %595 ]
  %609 = phi ptr [ %85, %454 ], [ %468, %565 ], [ %9, %594 ], [ %468, %591 ], [ %596, %595 ]
  %610 = phi ptr [ %84, %454 ], [ %467, %565 ], [ %467, %594 ], [ %9, %591 ], [ %597, %595 ]
  store i32 0, ptr %609, align 4, !tbaa !25
  store i32 0, ptr %610, align 4, !tbaa !25
  %611 = add i32 %608, -8
  store i32 %611, ptr %12, align 4, !tbaa !19
  br label %612

612:                                              ; preds = %205, %324, %445, %606
  %613 = phi i32 [ %607, %606 ], [ 1, %205 ], [ %328, %324 ], [ %449, %445 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %614

614:                                              ; preds = %8, %612
  %615 = phi i32 [ %613, %612 ], [ 0, %8 ]
  ret i32 %615
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_extDict_6(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %614, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %13, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 6, i32 noundef 1)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !20

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !18
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %43 = load i32, ptr %42, align 4, !tbaa !109
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  %46 = load i64, ptr %3, align 1
  %47 = mul i64 %46, -3523014627193847808
  %48 = sub i32 64, %43
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = getelementptr inbounds nuw i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %56 = load i32, ptr %55, align 4, !tbaa !111
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %61 = load ptr, ptr %60, align 8, !tbaa !112
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %63 = load i32, ptr %62, align 8, !tbaa !22
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %66 = getelementptr inbounds nuw i8, ptr %37, i64 %64
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %68 = load i32, ptr %38, align 4, !tbaa !113
  %69 = getelementptr i8, ptr %1, i64 28
  %70 = load i32, ptr %69, align 4, !tbaa !107
  %71 = getelementptr i8, ptr %1, i64 40
  %72 = load i32, ptr %71, align 8, !tbaa !114
  %73 = shl nuw i32 1, %68
  %74 = sub i32 %36, %70
  %75 = icmp ugt i32 %74, %73
  %76 = sub i32 %36, %73
  %77 = icmp eq i32 %72, 0
  %78 = select i1 %77, i1 %75, i1 false
  %79 = select i1 %78, i32 %76, i32 %70
  %80 = tail call i32 @llvm.umax.i32(i32 %79, i32 1)
  %81 = and i32 %36, %59
  %82 = shl nuw i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds nuw i32, ptr %54, i64 %83
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 4
  %86 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %88 = load i32, ptr %87, align 4, !tbaa !115
  %89 = shl nuw i32 1, %88
  %90 = add i32 %7, -1
  %91 = zext i32 %90 to i64
  %92 = icmp ult i32 %6, -3
  %93 = trunc i64 %46 to i32
  br i1 %92, label %94, label %454

94:                                               ; preds = %35
  %95 = sub i32 %36, %63
  %96 = sub i32 %36, %79
  %97 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %98 = getelementptr inbounds i8, ptr %4, i64 -7
  %99 = icmp ult ptr %97, %98
  %100 = getelementptr inbounds i8, ptr %4, i64 -3
  %101 = getelementptr inbounds i8, ptr %4, i64 -1
  %102 = ptrtoint ptr %97 to i64
  %103 = zext i32 %6 to i64
  %104 = icmp eq i32 %6, 3
  br i1 %104, label %105, label %108

105:                                              ; preds = %94
  %106 = load i32, ptr %5, align 4, !tbaa !25
  %107 = add i32 %106, -1
  br label %111

108:                                              ; preds = %94
  %109 = getelementptr inbounds nuw i32, ptr %5, i64 %103
  %110 = load i32, ptr %109, align 4, !tbaa !25
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi i32 [ %107, %105 ], [ %110, %108 ]
  %113 = sub i32 %36, %112
  %114 = add i32 %112, -1
  %115 = icmp ult i32 %114, %95
  br i1 %115, label %116, label %187

116:                                              ; preds = %111
  %117 = icmp uge i32 %113, %79
  %118 = zext i32 %112 to i64
  %119 = sub nsw i64 0, %118
  %120 = getelementptr inbounds i8, ptr %3, i64 %119
  %121 = load i32, ptr %120, align 1, !tbaa !25
  %122 = icmp eq i32 %121, %93
  %123 = and i1 %117, %122
  br i1 %123, label %124, label %212

124:                                              ; preds = %116
  %125 = getelementptr inbounds i8, ptr %97, i64 %119
  br i1 %99, label %126, label %151

126:                                              ; preds = %124
  %127 = load i64, ptr %125, align 1, !tbaa !30
  %128 = load i64, ptr %97, align 1, !tbaa !30
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = xor i64 %128, %127
  %132 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %131, i1 true)
  %133 = lshr i64 %132, 3
  br label %200

134:                                              ; preds = %126, %140
  %135 = phi ptr [ %138, %140 ], [ %125, %126 ]
  %136 = phi ptr [ %137, %140 ], [ %97, %126 ]
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 8
  %138 = getelementptr inbounds nuw i8, ptr %135, i64 8
  %139 = icmp ult ptr %137, %98
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load i64, ptr %138, align 1, !tbaa !30
  %142 = load i64, ptr %137, align 1, !tbaa !30
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %134, label %144

144:                                              ; preds = %140
  %145 = xor i64 %142, %141
  %146 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %145, i1 true)
  %147 = lshr i64 %146, 3
  %148 = getelementptr inbounds nuw i8, ptr %137, i64 %147
  %149 = ptrtoint ptr %148 to i64
  %150 = sub i64 %149, %102
  br label %200

151:                                              ; preds = %134, %124
  %152 = phi ptr [ %125, %124 ], [ %138, %134 ]
  %153 = phi ptr [ %97, %124 ], [ %137, %134 ]
  %154 = icmp ult ptr %153, %100
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i32, ptr %152, align 1, !tbaa !25
  %157 = load i32, ptr %153, align 1, !tbaa !25
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = getelementptr inbounds nuw i8, ptr %153, i64 4
  %161 = getelementptr inbounds nuw i8, ptr %152, i64 4
  br label %162

162:                                              ; preds = %159, %155, %151
  %163 = phi ptr [ %161, %159 ], [ %152, %155 ], [ %152, %151 ]
  %164 = phi ptr [ %160, %159 ], [ %153, %155 ], [ %153, %151 ]
  %165 = icmp ult ptr %164, %101
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load i16, ptr %163, align 1, !tbaa !116
  %168 = load i16, ptr %164, align 1, !tbaa !116
  %169 = icmp eq i16 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = getelementptr inbounds nuw i8, ptr %164, i64 2
  %172 = getelementptr inbounds nuw i8, ptr %163, i64 2
  br label %173

173:                                              ; preds = %170, %166, %162
  %174 = phi ptr [ %172, %170 ], [ %163, %166 ], [ %163, %162 ]
  %175 = phi ptr [ %171, %170 ], [ %164, %166 ], [ %164, %162 ]
  %176 = icmp ult ptr %175, %4
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i8, ptr %174, align 1, !tbaa !42
  %179 = load i8, ptr %175, align 1, !tbaa !42
  %180 = icmp eq i8 %178, %179
  %181 = zext i1 %180 to i64
  %182 = getelementptr inbounds nuw i8, ptr %175, i64 %181
  br label %183

183:                                              ; preds = %177, %173
  %184 = phi ptr [ %175, %173 ], [ %182, %177 ]
  %185 = ptrtoint ptr %184 to i64
  %186 = sub i64 %185, %102
  br label %200

187:                                              ; preds = %111
  %188 = zext i32 %113 to i64
  %189 = getelementptr inbounds nuw i8, ptr %61, i64 %188
  %190 = icmp uge i32 %114, %96
  %191 = sub i32 %113, %63
  %192 = icmp ugt i32 %191, -4
  %193 = select i1 %190, i1 true, i1 %192
  br i1 %193, label %212, label %194

194:                                              ; preds = %187
  %195 = load i32, ptr %189, align 1, !tbaa !25
  %196 = icmp eq i32 %195, %93
  br i1 %196, label %197, label %212

197:                                              ; preds = %194
  %198 = getelementptr inbounds nuw i8, ptr %189, i64 4
  %199 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %198, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  br label %200

200:                                              ; preds = %183, %144, %130, %197
  %201 = phi i64 [ %199, %197 ], [ %186, %183 ], [ %133, %130 ], [ %150, %144 ]
  %202 = trunc i64 %201 to i32
  %203 = add i32 %202, 4
  %204 = icmp ult i32 %90, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = zext i32 %203 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %203, ptr %207, align 4, !tbaa !44
  %208 = icmp ule i32 %203, %41
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 %206
  %210 = icmp ne ptr %209, %4
  %211 = and i1 %208, %210
  br i1 %211, label %212, label %612

212:                                              ; preds = %187, %194, %116, %200, %205
  %213 = phi i32 [ 1, %205 ], [ 0, %200 ], [ 0, %116 ], [ 0, %194 ], [ 0, %187 ]
  %214 = phi i64 [ %206, %205 ], [ %91, %200 ], [ %91, %116 ], [ %91, %194 ], [ %91, %187 ]
  %215 = add nuw nsw i64 %103, 1
  %216 = icmp eq i64 %215, 3
  br i1 %216, label %220, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds nuw i32, ptr %5, i64 %215
  %219 = load i32, ptr %218, align 4, !tbaa !25
  br label %223

220:                                              ; preds = %212
  %221 = load i32, ptr %5, align 4, !tbaa !25
  %222 = add i32 %221, -1
  br label %223

223:                                              ; preds = %220, %217
  %224 = phi i32 [ %222, %220 ], [ %219, %217 ]
  %225 = sub i32 %36, %224
  %226 = add i32 %224, -1
  %227 = icmp ult i32 %226, %95
  br i1 %227, label %244, label %228

228:                                              ; preds = %223
  %229 = zext i32 %225 to i64
  %230 = getelementptr inbounds nuw i8, ptr %61, i64 %229
  %231 = icmp uge i32 %226, %96
  %232 = sub i32 %225, %63
  %233 = icmp ugt i32 %232, -4
  %234 = select i1 %231, i1 true, i1 %233
  br i1 %234, label %320, label %235

235:                                              ; preds = %228
  %236 = load i32, ptr %3, align 1, !tbaa !25
  %237 = load i32, ptr %230, align 1, !tbaa !25
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %320

239:                                              ; preds = %235
  %240 = getelementptr inbounds nuw i8, ptr %230, i64 4
  %241 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %240, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %242 = trunc i64 %241 to i32
  %243 = add i32 %242, 4
  br label %320

244:                                              ; preds = %223
  %245 = icmp uge i32 %225, %79
  %246 = load i32, ptr %3, align 1, !tbaa !25
  %247 = zext i32 %224 to i64
  %248 = sub nsw i64 0, %247
  %249 = getelementptr inbounds i8, ptr %3, i64 %248
  %250 = load i32, ptr %249, align 1, !tbaa !25
  %251 = icmp eq i32 %246, %250
  %252 = and i1 %245, %251
  br i1 %252, label %253, label %320

253:                                              ; preds = %244
  %254 = getelementptr inbounds i8, ptr %97, i64 %248
  br i1 %99, label %255, label %269

255:                                              ; preds = %253
  %256 = load i64, ptr %254, align 1, !tbaa !30
  %257 = load i64, ptr %97, align 1, !tbaa !30
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %263, label %259

259:                                              ; preds = %255
  %260 = xor i64 %257, %256
  %261 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %260, i1 true)
  %262 = lshr i64 %261, 3
  br label %316

263:                                              ; preds = %255, %305
  %264 = phi ptr [ %267, %305 ], [ %254, %255 ]
  %265 = phi ptr [ %266, %305 ], [ %97, %255 ]
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 8
  %267 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %268 = icmp ult ptr %266, %98
  br i1 %268, label %305, label %269

269:                                              ; preds = %263, %253
  %270 = phi ptr [ %254, %253 ], [ %267, %263 ]
  %271 = phi ptr [ %97, %253 ], [ %266, %263 ]
  %272 = icmp ult ptr %271, %100
  br i1 %272, label %273, label %280

273:                                              ; preds = %269
  %274 = load i32, ptr %270, align 1, !tbaa !25
  %275 = load i32, ptr %271, align 1, !tbaa !25
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = getelementptr inbounds nuw i8, ptr %271, i64 4
  %279 = getelementptr inbounds nuw i8, ptr %270, i64 4
  br label %280

280:                                              ; preds = %277, %273, %269
  %281 = phi ptr [ %279, %277 ], [ %270, %273 ], [ %270, %269 ]
  %282 = phi ptr [ %278, %277 ], [ %271, %273 ], [ %271, %269 ]
  %283 = icmp ult ptr %282, %101
  br i1 %283, label %284, label %291

284:                                              ; preds = %280
  %285 = load i16, ptr %281, align 1, !tbaa !116
  %286 = load i16, ptr %282, align 1, !tbaa !116
  %287 = icmp eq i16 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = getelementptr inbounds nuw i8, ptr %282, i64 2
  %290 = getelementptr inbounds nuw i8, ptr %281, i64 2
  br label %291

291:                                              ; preds = %288, %284, %280
  %292 = phi ptr [ %290, %288 ], [ %281, %284 ], [ %281, %280 ]
  %293 = phi ptr [ %289, %288 ], [ %282, %284 ], [ %282, %280 ]
  %294 = icmp ult ptr %293, %4
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = load i8, ptr %292, align 1, !tbaa !42
  %297 = load i8, ptr %293, align 1, !tbaa !42
  %298 = icmp eq i8 %296, %297
  %299 = zext i1 %298 to i64
  %300 = getelementptr inbounds nuw i8, ptr %293, i64 %299
  br label %301

301:                                              ; preds = %295, %291
  %302 = phi ptr [ %293, %291 ], [ %300, %295 ]
  %303 = ptrtoint ptr %302 to i64
  %304 = sub i64 %303, %102
  br label %316

305:                                              ; preds = %263
  %306 = load i64, ptr %267, align 1, !tbaa !30
  %307 = load i64, ptr %266, align 1, !tbaa !30
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %263, label %309

309:                                              ; preds = %305
  %310 = xor i64 %307, %306
  %311 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %310, i1 true)
  %312 = lshr i64 %311, 3
  %313 = getelementptr inbounds nuw i8, ptr %266, i64 %312
  %314 = ptrtoint ptr %313 to i64
  %315 = sub i64 %314, %102
  br label %316

316:                                              ; preds = %309, %301, %259
  %317 = phi i64 [ %304, %301 ], [ %262, %259 ], [ %315, %309 ]
  %318 = trunc i64 %317 to i32
  %319 = add i32 %318, 4
  br label %320

320:                                              ; preds = %316, %244, %239, %235, %228
  %321 = phi i32 [ %319, %316 ], [ 0, %244 ], [ %243, %239 ], [ 0, %235 ], [ 0, %228 ]
  %322 = zext i32 %321 to i64
  %323 = icmp samesign ult i64 %214, %322
  br i1 %323, label %324, label %333

324:                                              ; preds = %320
  %325 = zext nneg i32 %213 to i64
  %326 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %325
  store i32 2, ptr %326, align 4, !tbaa !46
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 4
  store i32 %321, ptr %327, align 4, !tbaa !44
  %328 = add nuw nsw i32 %213, 1
  %329 = icmp ule i32 %321, %41
  %330 = getelementptr inbounds nuw i8, ptr %3, i64 %322
  %331 = icmp ne ptr %330, %4
  %332 = and i1 %329, %331
  br i1 %332, label %333, label %612

333:                                              ; preds = %324, %320
  %334 = phi i32 [ %328, %324 ], [ %213, %320 ]
  %335 = phi i64 [ %322, %324 ], [ %214, %320 ]
  %336 = add nuw nsw i64 %103, 2
  %337 = icmp eq i64 %336, 3
  br i1 %337, label %341, label %338

338:                                              ; preds = %333
  %339 = getelementptr inbounds nuw i32, ptr %5, i64 %336
  %340 = load i32, ptr %339, align 4, !tbaa !25
  br label %344

341:                                              ; preds = %333
  %342 = load i32, ptr %5, align 4, !tbaa !25
  %343 = add i32 %342, -1
  br label %344

344:                                              ; preds = %341, %338
  %345 = phi i32 [ %343, %341 ], [ %340, %338 ]
  %346 = sub i32 %36, %345
  %347 = add i32 %345, -1
  %348 = icmp ult i32 %347, %95
  br i1 %348, label %365, label %349

349:                                              ; preds = %344
  %350 = zext i32 %346 to i64
  %351 = getelementptr inbounds nuw i8, ptr %61, i64 %350
  %352 = icmp uge i32 %347, %96
  %353 = sub i32 %346, %63
  %354 = icmp ugt i32 %353, -4
  %355 = select i1 %352, i1 true, i1 %354
  br i1 %355, label %441, label %356

356:                                              ; preds = %349
  %357 = load i32, ptr %3, align 1, !tbaa !25
  %358 = load i32, ptr %351, align 1, !tbaa !25
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %441

360:                                              ; preds = %356
  %361 = getelementptr inbounds nuw i8, ptr %351, i64 4
  %362 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %361, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %363 = trunc i64 %362 to i32
  %364 = add i32 %363, 4
  br label %441

365:                                              ; preds = %344
  %366 = icmp uge i32 %346, %79
  %367 = load i32, ptr %3, align 1, !tbaa !25
  %368 = zext i32 %345 to i64
  %369 = sub nsw i64 0, %368
  %370 = getelementptr inbounds i8, ptr %3, i64 %369
  %371 = load i32, ptr %370, align 1, !tbaa !25
  %372 = icmp eq i32 %367, %371
  %373 = and i1 %366, %372
  br i1 %373, label %374, label %441

374:                                              ; preds = %365
  %375 = getelementptr inbounds i8, ptr %97, i64 %369
  br i1 %99, label %376, label %390

376:                                              ; preds = %374
  %377 = load i64, ptr %375, align 1, !tbaa !30
  %378 = load i64, ptr %97, align 1, !tbaa !30
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %384, label %380

380:                                              ; preds = %376
  %381 = xor i64 %378, %377
  %382 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %381, i1 true)
  %383 = lshr i64 %382, 3
  br label %437

384:                                              ; preds = %376, %426
  %385 = phi ptr [ %388, %426 ], [ %375, %376 ]
  %386 = phi ptr [ %387, %426 ], [ %97, %376 ]
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 8
  %388 = getelementptr inbounds nuw i8, ptr %385, i64 8
  %389 = icmp ult ptr %387, %98
  br i1 %389, label %426, label %390

390:                                              ; preds = %384, %374
  %391 = phi ptr [ %375, %374 ], [ %388, %384 ]
  %392 = phi ptr [ %97, %374 ], [ %387, %384 ]
  %393 = icmp ult ptr %392, %100
  br i1 %393, label %394, label %401

394:                                              ; preds = %390
  %395 = load i32, ptr %391, align 1, !tbaa !25
  %396 = load i32, ptr %392, align 1, !tbaa !25
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %401

398:                                              ; preds = %394
  %399 = getelementptr inbounds nuw i8, ptr %392, i64 4
  %400 = getelementptr inbounds nuw i8, ptr %391, i64 4
  br label %401

401:                                              ; preds = %398, %394, %390
  %402 = phi ptr [ %400, %398 ], [ %391, %394 ], [ %391, %390 ]
  %403 = phi ptr [ %399, %398 ], [ %392, %394 ], [ %392, %390 ]
  %404 = icmp ult ptr %403, %101
  br i1 %404, label %405, label %412

405:                                              ; preds = %401
  %406 = load i16, ptr %402, align 1, !tbaa !116
  %407 = load i16, ptr %403, align 1, !tbaa !116
  %408 = icmp eq i16 %406, %407
  br i1 %408, label %409, label %412

409:                                              ; preds = %405
  %410 = getelementptr inbounds nuw i8, ptr %403, i64 2
  %411 = getelementptr inbounds nuw i8, ptr %402, i64 2
  br label %412

412:                                              ; preds = %409, %405, %401
  %413 = phi ptr [ %411, %409 ], [ %402, %405 ], [ %402, %401 ]
  %414 = phi ptr [ %410, %409 ], [ %403, %405 ], [ %403, %401 ]
  %415 = icmp ult ptr %414, %4
  br i1 %415, label %416, label %422

416:                                              ; preds = %412
  %417 = load i8, ptr %413, align 1, !tbaa !42
  %418 = load i8, ptr %414, align 1, !tbaa !42
  %419 = icmp eq i8 %417, %418
  %420 = zext i1 %419 to i64
  %421 = getelementptr inbounds nuw i8, ptr %414, i64 %420
  br label %422

422:                                              ; preds = %416, %412
  %423 = phi ptr [ %414, %412 ], [ %421, %416 ]
  %424 = ptrtoint ptr %423 to i64
  %425 = sub i64 %424, %102
  br label %437

426:                                              ; preds = %384
  %427 = load i64, ptr %388, align 1, !tbaa !30
  %428 = load i64, ptr %387, align 1, !tbaa !30
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %384, label %430

430:                                              ; preds = %426
  %431 = xor i64 %428, %427
  %432 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %431, i1 true)
  %433 = lshr i64 %432, 3
  %434 = getelementptr inbounds nuw i8, ptr %387, i64 %433
  %435 = ptrtoint ptr %434 to i64
  %436 = sub i64 %435, %102
  br label %437

437:                                              ; preds = %430, %422, %380
  %438 = phi i64 [ %425, %422 ], [ %383, %380 ], [ %436, %430 ]
  %439 = trunc i64 %438 to i32
  %440 = add i32 %439, 4
  br label %441

441:                                              ; preds = %437, %365, %360, %356, %349
  %442 = phi i32 [ %440, %437 ], [ 0, %365 ], [ %364, %360 ], [ 0, %356 ], [ 0, %349 ]
  %443 = zext i32 %442 to i64
  %444 = icmp samesign ult i64 %335, %443
  br i1 %444, label %445, label %454

445:                                              ; preds = %441
  %446 = zext nneg i32 %334 to i64
  %447 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %446
  store i32 3, ptr %447, align 4, !tbaa !46
  %448 = getelementptr inbounds nuw i8, ptr %447, i64 4
  store i32 %442, ptr %448, align 4, !tbaa !44
  %449 = add nuw nsw i32 %334, 1
  %450 = icmp ule i32 %442, %41
  %451 = getelementptr inbounds nuw i8, ptr %3, i64 %443
  %452 = icmp ne ptr %451, %4
  %453 = and i1 %450, %452
  br i1 %453, label %454, label %612

454:                                              ; preds = %441, %445, %35
  %455 = phi i64 [ %91, %35 ], [ %443, %445 ], [ %335, %441 ]
  %456 = phi i32 [ 0, %35 ], [ %449, %445 ], [ %334, %441 ]
  store i32 %36, ptr %51, align 4, !tbaa !25
  %457 = icmp ult i32 %52, %80
  br i1 %457, label %606, label %458

458:                                              ; preds = %454
  %459 = getelementptr inbounds i8, ptr %4, i64 -7
  %460 = getelementptr inbounds i8, ptr %4, i64 -3
  %461 = getelementptr inbounds i8, ptr %4, i64 -1
  %462 = add i32 %36, 3
  br label %463

463:                                              ; preds = %458, %595
  %464 = phi i32 [ %52, %458 ], [ %601, %595 ]
  %465 = phi i64 [ 0, %458 ], [ %599, %595 ]
  %466 = phi i64 [ 0, %458 ], [ %598, %595 ]
  %467 = phi ptr [ %84, %458 ], [ %597, %595 ]
  %468 = phi ptr [ %85, %458 ], [ %596, %595 ]
  %469 = phi i32 [ %86, %458 ], [ %584, %595 ]
  %470 = phi i32 [ %456, %458 ], [ %583, %595 ]
  %471 = phi i32 [ %89, %458 ], [ %602, %595 ]
  %472 = phi i64 [ %455, %458 ], [ %582, %595 ]
  %473 = and i32 %464, %59
  %474 = shl nuw i32 %473, 1
  %475 = zext i32 %474 to i64
  %476 = getelementptr inbounds nuw i32, ptr %54, i64 %475
  %477 = tail call i64 @llvm.umin.i64(i64 %465, i64 %466)
  %478 = zext i32 %464 to i64
  %479 = add i64 %477, %478
  %480 = icmp ult i64 %479, %64
  %481 = getelementptr inbounds nuw i8, ptr %3, i64 %477
  br i1 %480, label %552, label %482

482:                                              ; preds = %463
  %483 = getelementptr inbounds nuw i8, ptr %37, i64 %478
  %484 = getelementptr inbounds nuw i8, ptr %483, i64 %477
  %485 = icmp ult ptr %481, %459
  br i1 %485, label %486, label %512

486:                                              ; preds = %482
  %487 = load i64, ptr %484, align 1, !tbaa !30
  %488 = load i64, ptr %481, align 1, !tbaa !30
  %489 = icmp eq i64 %487, %488
  br i1 %489, label %494, label %490

490:                                              ; preds = %486
  %491 = xor i64 %488, %487
  %492 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %491, i1 true)
  %493 = lshr i64 %492, 3
  br label %549

494:                                              ; preds = %486, %500
  %495 = phi ptr [ %498, %500 ], [ %484, %486 ]
  %496 = phi ptr [ %497, %500 ], [ %481, %486 ]
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 8
  %498 = getelementptr inbounds nuw i8, ptr %495, i64 8
  %499 = icmp ult ptr %497, %459
  br i1 %499, label %500, label %512

500:                                              ; preds = %494
  %501 = load i64, ptr %498, align 1, !tbaa !30
  %502 = load i64, ptr %497, align 1, !tbaa !30
  %503 = icmp eq i64 %501, %502
  br i1 %503, label %494, label %504

504:                                              ; preds = %500
  %505 = xor i64 %502, %501
  %506 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %505, i1 true)
  %507 = lshr i64 %506, 3
  %508 = getelementptr inbounds nuw i8, ptr %497, i64 %507
  %509 = ptrtoint ptr %508 to i64
  %510 = ptrtoint ptr %481 to i64
  %511 = sub i64 %509, %510
  br label %549

512:                                              ; preds = %494, %482
  %513 = phi ptr [ %484, %482 ], [ %498, %494 ]
  %514 = phi ptr [ %481, %482 ], [ %497, %494 ]
  %515 = icmp ult ptr %514, %460
  br i1 %515, label %516, label %523

516:                                              ; preds = %512
  %517 = load i32, ptr %513, align 1, !tbaa !25
  %518 = load i32, ptr %514, align 1, !tbaa !25
  %519 = icmp eq i32 %517, %518
  br i1 %519, label %520, label %523

520:                                              ; preds = %516
  %521 = getelementptr inbounds nuw i8, ptr %514, i64 4
  %522 = getelementptr inbounds nuw i8, ptr %513, i64 4
  br label %523

523:                                              ; preds = %520, %516, %512
  %524 = phi ptr [ %522, %520 ], [ %513, %516 ], [ %513, %512 ]
  %525 = phi ptr [ %521, %520 ], [ %514, %516 ], [ %514, %512 ]
  %526 = icmp ult ptr %525, %461
  br i1 %526, label %527, label %534

527:                                              ; preds = %523
  %528 = load i16, ptr %524, align 1, !tbaa !116
  %529 = load i16, ptr %525, align 1, !tbaa !116
  %530 = icmp eq i16 %528, %529
  br i1 %530, label %531, label %534

531:                                              ; preds = %527
  %532 = getelementptr inbounds nuw i8, ptr %525, i64 2
  %533 = getelementptr inbounds nuw i8, ptr %524, i64 2
  br label %534

534:                                              ; preds = %531, %527, %523
  %535 = phi ptr [ %533, %531 ], [ %524, %527 ], [ %524, %523 ]
  %536 = phi ptr [ %532, %531 ], [ %525, %527 ], [ %525, %523 ]
  %537 = icmp ult ptr %536, %4
  br i1 %537, label %538, label %544

538:                                              ; preds = %534
  %539 = load i8, ptr %535, align 1, !tbaa !42
  %540 = load i8, ptr %536, align 1, !tbaa !42
  %541 = icmp eq i8 %539, %540
  %542 = zext i1 %541 to i64
  %543 = getelementptr inbounds nuw i8, ptr %536, i64 %542
  br label %544

544:                                              ; preds = %538, %534
  %545 = phi ptr [ %536, %534 ], [ %543, %538 ]
  %546 = ptrtoint ptr %545 to i64
  %547 = ptrtoint ptr %481 to i64
  %548 = sub i64 %546, %547
  br label %549

549:                                              ; preds = %490, %504, %544
  %550 = phi i64 [ %548, %544 ], [ %493, %490 ], [ %511, %504 ]
  %551 = add i64 %550, %477
  br label %561

552:                                              ; preds = %463
  %553 = getelementptr inbounds nuw i8, ptr %61, i64 %478
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 %477
  %555 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %481, ptr noundef %554, ptr noundef %4, ptr noundef nonnull %65, ptr noundef nonnull %66)
  %556 = add i64 %555, %477
  %557 = add i64 %556, %478
  %558 = icmp ult i64 %557, %64
  %559 = getelementptr inbounds nuw i8, ptr %37, i64 %478
  %560 = select i1 %558, ptr %553, ptr %559
  br label %561

561:                                              ; preds = %552, %549
  %562 = phi ptr [ %483, %549 ], [ %560, %552 ]
  %563 = phi i64 [ %551, %549 ], [ %556, %552 ]
  %564 = icmp ugt i64 %563, %472
  br i1 %564, label %565, label %581

565:                                              ; preds = %561
  %566 = sub i32 %469, %464
  %567 = zext i32 %566 to i64
  %568 = icmp ugt i64 %563, %567
  %569 = trunc i64 %563 to i32
  %570 = add i32 %464, %569
  %571 = select i1 %568, i32 %570, i32 %469
  %572 = sub i32 %462, %464
  %573 = zext i32 %470 to i64
  %574 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %573
  store i32 %572, ptr %574, align 4, !tbaa !46
  %575 = getelementptr inbounds nuw i8, ptr %574, i64 4
  store i32 %569, ptr %575, align 4, !tbaa !44
  %576 = add i32 %470, 1
  %577 = icmp ugt i64 %563, 4096
  %578 = getelementptr inbounds nuw i8, ptr %3, i64 %563
  %579 = icmp eq ptr %578, %4
  %580 = or i1 %577, %579
  br i1 %580, label %606, label %581

581:                                              ; preds = %565, %561
  %582 = phi i64 [ %563, %565 ], [ %472, %561 ]
  %583 = phi i32 [ %576, %565 ], [ %470, %561 ]
  %584 = phi i32 [ %571, %565 ], [ %469, %561 ]
  %585 = getelementptr inbounds nuw i8, ptr %562, i64 %563
  %586 = load i8, ptr %585, align 1, !tbaa !42
  %587 = getelementptr inbounds nuw i8, ptr %3, i64 %563
  %588 = load i8, ptr %587, align 1, !tbaa !42
  %589 = icmp ult i8 %586, %588
  %590 = icmp ugt i32 %464, %67
  br i1 %589, label %591, label %594

591:                                              ; preds = %581
  store i32 %464, ptr %467, align 4, !tbaa !25
  br i1 %590, label %592, label %606

592:                                              ; preds = %591
  %593 = getelementptr inbounds nuw i8, ptr %476, i64 4
  br label %595

594:                                              ; preds = %581
  store i32 %464, ptr %468, align 4, !tbaa !25
  br i1 %590, label %595, label %606

595:                                              ; preds = %594, %592
  %596 = phi ptr [ %468, %592 ], [ %476, %594 ]
  %597 = phi ptr [ %593, %592 ], [ %467, %594 ]
  %598 = phi i64 [ %466, %592 ], [ %563, %594 ]
  %599 = phi i64 [ %563, %592 ], [ %465, %594 ]
  %600 = phi ptr [ %593, %592 ], [ %476, %594 ]
  %601 = load i32, ptr %600, align 4, !tbaa !25
  %602 = add i32 %471, -1
  %603 = icmp ne i32 %602, 0
  %604 = icmp uge i32 %601, %80
  %605 = select i1 %603, i1 %604, i1 false
  br i1 %605, label %463, label %606, !llvm.loop !140

606:                                              ; preds = %595, %591, %594, %565, %454
  %607 = phi i32 [ %456, %454 ], [ %576, %565 ], [ %583, %594 ], [ %583, %591 ], [ %583, %595 ]
  %608 = phi i32 [ %86, %454 ], [ %571, %565 ], [ %584, %594 ], [ %584, %591 ], [ %584, %595 ]
  %609 = phi ptr [ %85, %454 ], [ %468, %565 ], [ %9, %594 ], [ %468, %591 ], [ %596, %595 ]
  %610 = phi ptr [ %84, %454 ], [ %467, %565 ], [ %467, %594 ], [ %9, %591 ], [ %597, %595 ]
  store i32 0, ptr %609, align 4, !tbaa !25
  store i32 0, ptr %610, align 4, !tbaa !25
  %611 = add i32 %608, -8
  store i32 %611, ptr %12, align 4, !tbaa !19
  br label %612

612:                                              ; preds = %205, %324, %445, %606
  %613 = phi i32 [ %607, %606 ], [ 1, %205 ], [ %328, %324 ], [ %449, %445 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %614

614:                                              ; preds = %8, %612
  %615 = phi i32 [ %613, %612 ], [ 0, %8 ]
  ret i32 %615
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_dictMatchState_3(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %662, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %13, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 3, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !20

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !18
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi i64 [ %33, %30 ], [ %20, %17 ]
  %38 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %41 = load i32, ptr %40, align 4, !tbaa !24
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 4095)
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %44 = load i32, ptr %43, align 4, !tbaa !109
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %46 = load ptr, ptr %45, align 8, !tbaa !108
  %47 = load i32, ptr %3, align 1, !tbaa !25
  %48 = mul i32 %47, -1640531535
  %49 = sub i32 32, %44
  %50 = lshr i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds nuw i32, ptr %46, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !25
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %55 = load ptr, ptr %54, align 8, !tbaa !110
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %57 = load i32, ptr %56, align 4, !tbaa !111
  %58 = add i32 %57, -1
  %59 = shl nsw i32 -1, %58
  %60 = xor i32 %59, -1
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %62 = load i32, ptr %61, align 8, !tbaa !22
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds nuw i8, ptr %38, i64 %63
  %65 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %60)
  %66 = load i32, ptr %39, align 4, !tbaa !113
  %67 = getelementptr i8, ptr %1, i64 28
  %68 = load i32, ptr %67, align 4, !tbaa !107
  %69 = getelementptr i8, ptr %1, i64 40
  %70 = load i32, ptr %69, align 8, !tbaa !114
  %71 = shl nuw i32 1, %66
  %72 = sub i32 %36, %68
  %73 = icmp ugt i32 %72, %71
  %74 = sub i32 %36, %71
  %75 = icmp eq i32 %70, 0
  %76 = select i1 %75, i1 %73, i1 false
  %77 = select i1 %76, i32 %74, i32 %68
  %78 = tail call i32 @llvm.umax.i32(i32 %77, i32 1)
  %79 = and i32 %36, %60
  %80 = shl nuw i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds nuw i32, ptr %55, i64 %81
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 4
  %84 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %86 = load i32, ptr %85, align 4, !tbaa !115
  %87 = shl nuw i32 1, %86
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %89 = load ptr, ptr %88, align 8, !tbaa !143
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 8
  %91 = load ptr, ptr %90, align 8, !tbaa !18
  %92 = load ptr, ptr %89, align 8, !tbaa !144
  %93 = ptrtoint ptr %92 to i64
  %94 = ptrtoint ptr %91 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds nuw i8, ptr %89, i64 28
  %98 = load i32, ptr %97, align 4, !tbaa !107
  %99 = sub i32 %77, %96
  %100 = getelementptr inbounds nuw i8, ptr %89, i64 264
  %101 = load i32, ptr %100, align 4, !tbaa !109
  %102 = getelementptr inbounds nuw i8, ptr %89, i64 260
  %103 = load i32, ptr %102, align 4, !tbaa !111
  %104 = add i32 %103, -1
  %105 = shl nsw i32 -1, %104
  %106 = xor i32 %105, -1
  %107 = sub i32 %96, %98
  %108 = icmp ugt i32 %107, %106
  %109 = sub i32 %96, %106
  %110 = select i1 %108, i32 %109, i32 %98
  %111 = add i32 %7, -1
  %112 = zext i32 %111 to i64
  %113 = icmp ult i32 %6, -3
  br i1 %113, label %114, label %263

114:                                              ; preds = %35
  %115 = add nuw i32 %6, 3
  %116 = sub i32 %36, %62
  %117 = zext i32 %99 to i64
  %118 = sub nsw i64 0, %117
  %119 = getelementptr i8, ptr %91, i64 %118
  %120 = add i32 %98, %99
  %121 = sub i32 %36, %120
  %122 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %123 = getelementptr inbounds i8, ptr %4, i64 -7
  %124 = icmp ult ptr %122, %123
  %125 = getelementptr inbounds i8, ptr %4, i64 -3
  %126 = getelementptr inbounds i8, ptr %4, i64 -1
  %127 = ptrtoint ptr %122 to i64
  %128 = zext i32 %6 to i64
  %129 = zext i32 %115 to i64
  br label %130

130:                                              ; preds = %114, %258
  %131 = phi i64 [ %128, %114 ], [ %261, %258 ]
  %132 = phi i32 [ 0, %114 ], [ %259, %258 ]
  %133 = phi i64 [ %112, %114 ], [ %260, %258 ]
  %134 = icmp eq i64 %131, 3
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, ptr %5, align 4, !tbaa !25
  %137 = add i32 %136, -1
  br label %141

138:                                              ; preds = %130
  %139 = getelementptr inbounds nuw i32, ptr %5, i64 %131
  %140 = load i32, ptr %139, align 4, !tbaa !25
  br label %141

141:                                              ; preds = %138, %135
  %142 = phi i32 [ %137, %135 ], [ %140, %138 ]
  %143 = sub i32 %36, %142
  %144 = add i32 %142, -1
  %145 = icmp ult i32 %144, %116
  br i1 %145, label %146, label %224

146:                                              ; preds = %141
  %147 = icmp uge i32 %143, %77
  %148 = load i32, ptr %3, align 1, !tbaa !25
  %149 = zext i32 %142 to i64
  %150 = sub nsw i64 0, %149
  %151 = getelementptr inbounds i8, ptr %3, i64 %150
  %152 = load i32, ptr %151, align 1, !tbaa !25
  %153 = xor i32 %152, %148
  %154 = and i32 %153, 16777215
  %155 = icmp eq i32 %154, 0
  %156 = and i1 %147, %155
  br i1 %156, label %157, label %242

157:                                              ; preds = %146
  %158 = getelementptr inbounds i8, ptr %122, i64 %150
  br i1 %124, label %159, label %184

159:                                              ; preds = %157
  %160 = load i64, ptr %158, align 1, !tbaa !30
  %161 = load i64, ptr %122, align 1, !tbaa !30
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = xor i64 %161, %160
  %165 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %164, i1 true)
  %166 = lshr i64 %165, 3
  br label %220

167:                                              ; preds = %159, %173
  %168 = phi ptr [ %171, %173 ], [ %158, %159 ]
  %169 = phi ptr [ %170, %173 ], [ %122, %159 ]
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 8
  %171 = getelementptr inbounds nuw i8, ptr %168, i64 8
  %172 = icmp ult ptr %170, %123
  br i1 %172, label %173, label %184

173:                                              ; preds = %167
  %174 = load i64, ptr %171, align 1, !tbaa !30
  %175 = load i64, ptr %170, align 1, !tbaa !30
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %167, label %177

177:                                              ; preds = %173
  %178 = xor i64 %175, %174
  %179 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %178, i1 true)
  %180 = lshr i64 %179, 3
  %181 = getelementptr inbounds nuw i8, ptr %170, i64 %180
  %182 = ptrtoint ptr %181 to i64
  %183 = sub i64 %182, %127
  br label %220

184:                                              ; preds = %167, %157
  %185 = phi ptr [ %158, %157 ], [ %171, %167 ]
  %186 = phi ptr [ %122, %157 ], [ %170, %167 ]
  %187 = icmp ult ptr %186, %125
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load i32, ptr %185, align 1, !tbaa !25
  %190 = load i32, ptr %186, align 1, !tbaa !25
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %194 = getelementptr inbounds nuw i8, ptr %185, i64 4
  br label %195

195:                                              ; preds = %192, %188, %184
  %196 = phi ptr [ %194, %192 ], [ %185, %188 ], [ %185, %184 ]
  %197 = phi ptr [ %193, %192 ], [ %186, %188 ], [ %186, %184 ]
  %198 = icmp ult ptr %197, %126
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = load i16, ptr %196, align 1, !tbaa !116
  %201 = load i16, ptr %197, align 1, !tbaa !116
  %202 = icmp eq i16 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = getelementptr inbounds nuw i8, ptr %197, i64 2
  %205 = getelementptr inbounds nuw i8, ptr %196, i64 2
  br label %206

206:                                              ; preds = %203, %199, %195
  %207 = phi ptr [ %205, %203 ], [ %196, %199 ], [ %196, %195 ]
  %208 = phi ptr [ %204, %203 ], [ %197, %199 ], [ %197, %195 ]
  %209 = icmp ult ptr %208, %4
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = load i8, ptr %207, align 1, !tbaa !42
  %212 = load i8, ptr %208, align 1, !tbaa !42
  %213 = icmp eq i8 %211, %212
  %214 = zext i1 %213 to i64
  %215 = getelementptr inbounds nuw i8, ptr %208, i64 %214
  br label %216

216:                                              ; preds = %210, %206
  %217 = phi ptr [ %208, %206 ], [ %215, %210 ]
  %218 = ptrtoint ptr %217 to i64
  %219 = sub i64 %218, %127
  br label %220

220:                                              ; preds = %163, %177, %216
  %221 = phi i64 [ %219, %216 ], [ %166, %163 ], [ %183, %177 ]
  %222 = trunc i64 %221 to i32
  %223 = add i32 %222, 3
  br label %242

224:                                              ; preds = %141
  %225 = zext i32 %143 to i64
  %226 = getelementptr i8, ptr %119, i64 %225
  %227 = icmp uge i32 %144, %121
  %228 = sub i32 %143, %62
  %229 = icmp ugt i32 %228, -4
  %230 = select i1 %227, i1 true, i1 %229
  br i1 %230, label %242, label %231

231:                                              ; preds = %224
  %232 = load i32, ptr %3, align 1, !tbaa !25
  %233 = load i32, ptr %226, align 1, !tbaa !25
  %234 = xor i32 %233, %232
  %235 = and i32 %234, 16777215
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %231
  %238 = getelementptr inbounds nuw i8, ptr %226, i64 3
  %239 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %122, ptr noundef nonnull %238, ptr noundef %4, ptr noundef %92, ptr noundef %64)
  %240 = trunc i64 %239 to i32
  %241 = add i32 %240, 3
  br label %242

242:                                              ; preds = %237, %231, %224, %220, %146
  %243 = phi i32 [ %223, %220 ], [ 0, %146 ], [ %241, %237 ], [ 0, %231 ], [ 0, %224 ]
  %244 = zext i32 %243 to i64
  %245 = icmp samesign ult i64 %133, %244
  br i1 %245, label %246, label %258

246:                                              ; preds = %242
  %247 = zext i32 %132 to i64
  %248 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %247
  %249 = trunc i64 %131 to i32
  %250 = sub i32 %249, %6
  %251 = add i32 %250, 1
  store i32 %251, ptr %248, align 4, !tbaa !46
  %252 = getelementptr inbounds nuw i8, ptr %248, i64 4
  store i32 %243, ptr %252, align 4, !tbaa !44
  %253 = add i32 %132, 1
  %254 = icmp ule i32 %243, %42
  %255 = getelementptr inbounds nuw i8, ptr %3, i64 %244
  %256 = icmp ne ptr %255, %4
  %257 = and i1 %254, %256
  br i1 %257, label %258, label %660

258:                                              ; preds = %242, %246
  %259 = phi i32 [ %253, %246 ], [ %132, %242 ]
  %260 = phi i64 [ %244, %246 ], [ %133, %242 ]
  %261 = add nuw nsw i64 %131, 1
  %262 = icmp eq i64 %261, %129
  br i1 %262, label %263, label %130, !llvm.loop !141

263:                                              ; preds = %258, %35
  %264 = phi i64 [ %112, %35 ], [ %260, %258 ]
  %265 = phi i32 [ 0, %35 ], [ %259, %258 ]
  %266 = icmp samesign ult i64 %264, 3
  br i1 %266, label %267, label %426

267:                                              ; preds = %263
  %268 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %269 = load ptr, ptr %268, align 8, !tbaa !136
  %270 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %271 = load i32, ptr %270, align 8, !tbaa !137
  %272 = load i32, ptr %2, align 4, !tbaa !25
  %273 = load i32, ptr %3, align 1, !tbaa !25
  %274 = sub i32 32, %271
  %275 = icmp ult i32 %272, %36
  br i1 %275, label %276, label %334

276:                                              ; preds = %267
  %277 = zext i32 %272 to i64
  %278 = and i64 %37, 4294967295
  %279 = sub i64 %37, %277
  %280 = and i64 %279, 3
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %295, label %282

282:                                              ; preds = %276, %282
  %283 = phi i64 [ %292, %282 ], [ %277, %276 ]
  %284 = phi i64 [ %293, %282 ], [ 0, %276 ]
  %285 = getelementptr inbounds nuw i8, ptr %38, i64 %283
  %286 = load i32, ptr %285, align 1, !tbaa !25
  %287 = mul i32 %286, 900185344
  %288 = lshr i32 %287, %274
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds nuw i32, ptr %269, i64 %289
  %291 = trunc nuw i64 %283 to i32
  store i32 %291, ptr %290, align 4, !tbaa !25
  %292 = add nuw nsw i64 %283, 1
  %293 = add i64 %284, 1
  %294 = icmp eq i64 %293, %280
  br i1 %294, label %295, label %282, !llvm.loop !145

295:                                              ; preds = %282, %276
  %296 = phi i64 [ %277, %276 ], [ %292, %282 ]
  %297 = sub nsw i64 %277, %278
  %298 = icmp ugt i64 %297, -4
  br i1 %298, label %334, label %299

299:                                              ; preds = %295, %299
  %300 = phi i64 [ %332, %299 ], [ %296, %295 ]
  %301 = getelementptr inbounds nuw i8, ptr %38, i64 %300
  %302 = load i32, ptr %301, align 1, !tbaa !25
  %303 = mul i32 %302, 900185344
  %304 = lshr i32 %303, %274
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds nuw i32, ptr %269, i64 %305
  %307 = trunc nuw i64 %300 to i32
  store i32 %307, ptr %306, align 4, !tbaa !25
  %308 = add nuw nsw i64 %300, 1
  %309 = getelementptr inbounds nuw i8, ptr %38, i64 %308
  %310 = load i32, ptr %309, align 1, !tbaa !25
  %311 = mul i32 %310, 900185344
  %312 = lshr i32 %311, %274
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds nuw i32, ptr %269, i64 %313
  %315 = trunc nuw i64 %308 to i32
  store i32 %315, ptr %314, align 4, !tbaa !25
  %316 = add nuw nsw i64 %300, 2
  %317 = getelementptr inbounds nuw i8, ptr %38, i64 %316
  %318 = load i32, ptr %317, align 1, !tbaa !25
  %319 = mul i32 %318, 900185344
  %320 = lshr i32 %319, %274
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds nuw i32, ptr %269, i64 %321
  %323 = trunc nuw i64 %316 to i32
  store i32 %323, ptr %322, align 4, !tbaa !25
  %324 = add nuw nsw i64 %300, 3
  %325 = getelementptr inbounds nuw i8, ptr %38, i64 %324
  %326 = load i32, ptr %325, align 1, !tbaa !25
  %327 = mul i32 %326, 900185344
  %328 = lshr i32 %327, %274
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds nuw i32, ptr %269, i64 %329
  %331 = trunc nuw i64 %324 to i32
  store i32 %331, ptr %330, align 4, !tbaa !25
  %332 = add nuw nsw i64 %300, 4
  %333 = icmp eq i64 %332, %278
  br i1 %333, label %334, label %299, !llvm.loop !139

334:                                              ; preds = %295, %299, %267
  %335 = mul i32 %273, 900185344
  %336 = lshr i32 %335, %274
  %337 = zext i32 %336 to i64
  store i32 %36, ptr %2, align 4, !tbaa !25
  %338 = getelementptr inbounds nuw i32, ptr %269, i64 %337
  %339 = load i32, ptr %338, align 4, !tbaa !25
  %340 = icmp uge i32 %339, %78
  %341 = sub i32 %36, %339
  %342 = icmp ult i32 %341, 262144
  %343 = and i1 %340, %342
  br i1 %343, label %344, label %426

344:                                              ; preds = %334
  %345 = zext i32 %339 to i64
  %346 = getelementptr inbounds nuw i8, ptr %38, i64 %345
  %347 = getelementptr inbounds i8, ptr %4, i64 -7
  %348 = icmp ult ptr %3, %347
  br i1 %348, label %349, label %374

349:                                              ; preds = %344
  %350 = load i64, ptr %346, align 1, !tbaa !30
  %351 = load i64, ptr %3, align 1, !tbaa !30
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %357, label %353

353:                                              ; preds = %349
  %354 = xor i64 %351, %350
  %355 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %354, i1 true)
  %356 = lshr i64 %355, 3
  br label %412

357:                                              ; preds = %349, %363
  %358 = phi ptr [ %361, %363 ], [ %346, %349 ]
  %359 = phi ptr [ %360, %363 ], [ %3, %349 ]
  %360 = getelementptr inbounds nuw i8, ptr %359, i64 8
  %361 = getelementptr inbounds nuw i8, ptr %358, i64 8
  %362 = icmp ult ptr %360, %347
  br i1 %362, label %363, label %374

363:                                              ; preds = %357
  %364 = load i64, ptr %361, align 1, !tbaa !30
  %365 = load i64, ptr %360, align 1, !tbaa !30
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %357, label %367

367:                                              ; preds = %363
  %368 = xor i64 %365, %364
  %369 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %368, i1 true)
  %370 = lshr i64 %369, 3
  %371 = getelementptr inbounds nuw i8, ptr %360, i64 %370
  %372 = ptrtoint ptr %371 to i64
  %373 = sub i64 %372, %18
  br label %412

374:                                              ; preds = %357, %344
  %375 = phi ptr [ %346, %344 ], [ %361, %357 ]
  %376 = phi ptr [ %3, %344 ], [ %360, %357 ]
  %377 = getelementptr inbounds i8, ptr %4, i64 -3
  %378 = icmp ult ptr %376, %377
  br i1 %378, label %379, label %386

379:                                              ; preds = %374
  %380 = load i32, ptr %375, align 1, !tbaa !25
  %381 = load i32, ptr %376, align 1, !tbaa !25
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %386

383:                                              ; preds = %379
  %384 = getelementptr inbounds nuw i8, ptr %376, i64 4
  %385 = getelementptr inbounds nuw i8, ptr %375, i64 4
  br label %386

386:                                              ; preds = %383, %379, %374
  %387 = phi ptr [ %385, %383 ], [ %375, %379 ], [ %375, %374 ]
  %388 = phi ptr [ %384, %383 ], [ %376, %379 ], [ %376, %374 ]
  %389 = getelementptr inbounds i8, ptr %4, i64 -1
  %390 = icmp ult ptr %388, %389
  br i1 %390, label %391, label %398

391:                                              ; preds = %386
  %392 = load i16, ptr %387, align 1, !tbaa !116
  %393 = load i16, ptr %388, align 1, !tbaa !116
  %394 = icmp eq i16 %392, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %391
  %396 = getelementptr inbounds nuw i8, ptr %388, i64 2
  %397 = getelementptr inbounds nuw i8, ptr %387, i64 2
  br label %398

398:                                              ; preds = %395, %391, %386
  %399 = phi ptr [ %397, %395 ], [ %387, %391 ], [ %387, %386 ]
  %400 = phi ptr [ %396, %395 ], [ %388, %391 ], [ %388, %386 ]
  %401 = icmp ult ptr %400, %4
  br i1 %401, label %402, label %408

402:                                              ; preds = %398
  %403 = load i8, ptr %399, align 1, !tbaa !42
  %404 = load i8, ptr %400, align 1, !tbaa !42
  %405 = icmp eq i8 %403, %404
  %406 = zext i1 %405 to i64
  %407 = getelementptr inbounds nuw i8, ptr %400, i64 %406
  br label %408

408:                                              ; preds = %402, %398
  %409 = phi ptr [ %400, %398 ], [ %407, %402 ]
  %410 = ptrtoint ptr %409 to i64
  %411 = sub i64 %410, %18
  br label %412

412:                                              ; preds = %353, %367, %408
  %413 = phi i64 [ %411, %408 ], [ %356, %353 ], [ %373, %367 ]
  %414 = icmp ugt i64 %413, 2
  br i1 %414, label %415, label %426

415:                                              ; preds = %412
  %416 = add nuw nsw i32 %341, 3
  store i32 %416, ptr %0, align 4, !tbaa !46
  %417 = trunc i64 %413 to i32
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %417, ptr %418, align 4, !tbaa !44
  %419 = zext nneg i32 %42 to i64
  %420 = icmp ugt i64 %413, %419
  %421 = getelementptr inbounds nuw i8, ptr %3, i64 %413
  %422 = icmp eq ptr %421, %4
  %423 = or i1 %420, %422
  br i1 %423, label %424, label %426

424:                                              ; preds = %415
  %425 = add i32 %36, 1
  br label %657

426:                                              ; preds = %412, %415, %334, %263
  %427 = phi i64 [ %264, %263 ], [ %264, %412 ], [ %413, %415 ], [ %264, %334 ]
  %428 = phi i32 [ %265, %263 ], [ %265, %412 ], [ 1, %415 ], [ %265, %334 ]
  store i32 %36, ptr %52, align 4, !tbaa !25
  %429 = icmp ult i32 %53, %78
  br i1 %429, label %430, label %431

430:                                              ; preds = %426
  store i32 0, ptr %83, align 4, !tbaa !25
  store i32 0, ptr %82, align 4, !tbaa !25
  br label %570

431:                                              ; preds = %426
  %432 = getelementptr inbounds i8, ptr %4, i64 -7
  %433 = getelementptr inbounds i8, ptr %4, i64 -3
  %434 = getelementptr inbounds i8, ptr %4, i64 -1
  %435 = add i32 %36, 3
  br label %436

436:                                              ; preds = %431, %554
  %437 = phi i32 [ %53, %431 ], [ %560, %554 ]
  %438 = phi i64 [ 0, %431 ], [ %558, %554 ]
  %439 = phi i64 [ 0, %431 ], [ %557, %554 ]
  %440 = phi ptr [ %82, %431 ], [ %556, %554 ]
  %441 = phi ptr [ %83, %431 ], [ %555, %554 ]
  %442 = phi i32 [ %84, %431 ], [ %543, %554 ]
  %443 = phi i32 [ %428, %431 ], [ %542, %554 ]
  %444 = phi i32 [ %87, %431 ], [ %561, %554 ]
  %445 = phi i64 [ %427, %431 ], [ %541, %554 ]
  %446 = and i32 %437, %60
  %447 = shl nuw i32 %446, 1
  %448 = zext i32 %447 to i64
  %449 = getelementptr inbounds nuw i32, ptr %55, i64 %448
  %450 = tail call i64 @llvm.umin.i64(i64 %438, i64 %439)
  %451 = zext i32 %437 to i64
  %452 = getelementptr inbounds nuw i8, ptr %38, i64 %451
  %453 = getelementptr inbounds nuw i8, ptr %3, i64 %450
  %454 = getelementptr inbounds nuw i8, ptr %452, i64 %450
  %455 = icmp ult ptr %453, %432
  br i1 %455, label %456, label %482

456:                                              ; preds = %436
  %457 = load i64, ptr %454, align 1, !tbaa !30
  %458 = load i64, ptr %453, align 1, !tbaa !30
  %459 = icmp eq i64 %457, %458
  br i1 %459, label %464, label %460

460:                                              ; preds = %456
  %461 = xor i64 %458, %457
  %462 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %461, i1 true)
  %463 = lshr i64 %462, 3
  br label %519

464:                                              ; preds = %456, %470
  %465 = phi ptr [ %468, %470 ], [ %454, %456 ]
  %466 = phi ptr [ %467, %470 ], [ %453, %456 ]
  %467 = getelementptr inbounds nuw i8, ptr %466, i64 8
  %468 = getelementptr inbounds nuw i8, ptr %465, i64 8
  %469 = icmp ult ptr %467, %432
  br i1 %469, label %470, label %482

470:                                              ; preds = %464
  %471 = load i64, ptr %468, align 1, !tbaa !30
  %472 = load i64, ptr %467, align 1, !tbaa !30
  %473 = icmp eq i64 %471, %472
  br i1 %473, label %464, label %474

474:                                              ; preds = %470
  %475 = xor i64 %472, %471
  %476 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %475, i1 true)
  %477 = lshr i64 %476, 3
  %478 = getelementptr inbounds nuw i8, ptr %467, i64 %477
  %479 = ptrtoint ptr %478 to i64
  %480 = ptrtoint ptr %453 to i64
  %481 = sub i64 %479, %480
  br label %519

482:                                              ; preds = %464, %436
  %483 = phi ptr [ %454, %436 ], [ %468, %464 ]
  %484 = phi ptr [ %453, %436 ], [ %467, %464 ]
  %485 = icmp ult ptr %484, %433
  br i1 %485, label %486, label %493

486:                                              ; preds = %482
  %487 = load i32, ptr %483, align 1, !tbaa !25
  %488 = load i32, ptr %484, align 1, !tbaa !25
  %489 = icmp eq i32 %487, %488
  br i1 %489, label %490, label %493

490:                                              ; preds = %486
  %491 = getelementptr inbounds nuw i8, ptr %484, i64 4
  %492 = getelementptr inbounds nuw i8, ptr %483, i64 4
  br label %493

493:                                              ; preds = %490, %486, %482
  %494 = phi ptr [ %492, %490 ], [ %483, %486 ], [ %483, %482 ]
  %495 = phi ptr [ %491, %490 ], [ %484, %486 ], [ %484, %482 ]
  %496 = icmp ult ptr %495, %434
  br i1 %496, label %497, label %504

497:                                              ; preds = %493
  %498 = load i16, ptr %494, align 1, !tbaa !116
  %499 = load i16, ptr %495, align 1, !tbaa !116
  %500 = icmp eq i16 %498, %499
  br i1 %500, label %501, label %504

501:                                              ; preds = %497
  %502 = getelementptr inbounds nuw i8, ptr %495, i64 2
  %503 = getelementptr inbounds nuw i8, ptr %494, i64 2
  br label %504

504:                                              ; preds = %501, %497, %493
  %505 = phi ptr [ %503, %501 ], [ %494, %497 ], [ %494, %493 ]
  %506 = phi ptr [ %502, %501 ], [ %495, %497 ], [ %495, %493 ]
  %507 = icmp ult ptr %506, %4
  br i1 %507, label %508, label %514

508:                                              ; preds = %504
  %509 = load i8, ptr %505, align 1, !tbaa !42
  %510 = load i8, ptr %506, align 1, !tbaa !42
  %511 = icmp eq i8 %509, %510
  %512 = zext i1 %511 to i64
  %513 = getelementptr inbounds nuw i8, ptr %506, i64 %512
  br label %514

514:                                              ; preds = %508, %504
  %515 = phi ptr [ %506, %504 ], [ %513, %508 ]
  %516 = ptrtoint ptr %515 to i64
  %517 = ptrtoint ptr %453 to i64
  %518 = sub i64 %516, %517
  br label %519

519:                                              ; preds = %460, %474, %514
  %520 = phi i64 [ %518, %514 ], [ %463, %460 ], [ %481, %474 ]
  %521 = add i64 %520, %450
  %522 = icmp ugt i64 %521, %445
  br i1 %522, label %523, label %540

523:                                              ; preds = %519
  %524 = sub i32 %442, %437
  %525 = zext i32 %524 to i64
  %526 = icmp ugt i64 %521, %525
  %527 = trunc i64 %521 to i32
  %528 = add i32 %437, %527
  %529 = select i1 %526, i32 %528, i32 %442
  %530 = sub i32 %435, %437
  %531 = zext i32 %443 to i64
  %532 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %531
  store i32 %530, ptr %532, align 4, !tbaa !46
  %533 = getelementptr inbounds nuw i8, ptr %532, i64 4
  store i32 %527, ptr %533, align 4, !tbaa !44
  %534 = add i32 %443, 1
  %535 = icmp ugt i64 %521, 4096
  %536 = getelementptr inbounds nuw i8, ptr %3, i64 %521
  %537 = icmp eq ptr %536, %4
  %538 = or i1 %535, %537
  br i1 %538, label %539, label %540

539:                                              ; preds = %523
  store i32 0, ptr %441, align 4, !tbaa !25
  store i32 0, ptr %440, align 4, !tbaa !25
  br label %653

540:                                              ; preds = %523, %519
  %541 = phi i64 [ %521, %523 ], [ %445, %519 ]
  %542 = phi i32 [ %534, %523 ], [ %443, %519 ]
  %543 = phi i32 [ %529, %523 ], [ %442, %519 ]
  %544 = getelementptr inbounds nuw i8, ptr %452, i64 %521
  %545 = load i8, ptr %544, align 1, !tbaa !42
  %546 = getelementptr inbounds nuw i8, ptr %3, i64 %521
  %547 = load i8, ptr %546, align 1, !tbaa !42
  %548 = icmp ult i8 %545, %547
  %549 = icmp ugt i32 %437, %65
  br i1 %548, label %550, label %553

550:                                              ; preds = %540
  store i32 %437, ptr %440, align 4, !tbaa !25
  br i1 %549, label %551, label %565

551:                                              ; preds = %550
  %552 = getelementptr inbounds nuw i8, ptr %449, i64 4
  br label %554

553:                                              ; preds = %540
  store i32 %437, ptr %441, align 4, !tbaa !25
  br i1 %549, label %554, label %565

554:                                              ; preds = %553, %551
  %555 = phi ptr [ %441, %551 ], [ %449, %553 ]
  %556 = phi ptr [ %552, %551 ], [ %440, %553 ]
  %557 = phi i64 [ %439, %551 ], [ %521, %553 ]
  %558 = phi i64 [ %521, %551 ], [ %438, %553 ]
  %559 = phi ptr [ %552, %551 ], [ %449, %553 ]
  %560 = load i32, ptr %559, align 4, !tbaa !25
  %561 = add i32 %444, -1
  %562 = icmp ne i32 %561, 0
  %563 = icmp uge i32 %560, %78
  %564 = select i1 %562, i1 %563, i1 false
  br i1 %564, label %436, label %565, !llvm.loop !140

565:                                              ; preds = %554, %550, %553
  %566 = phi i32 [ %561, %554 ], [ %444, %550 ], [ %444, %553 ]
  %567 = phi ptr [ %555, %554 ], [ %441, %550 ], [ %9, %553 ]
  %568 = phi ptr [ %556, %554 ], [ %9, %550 ], [ %440, %553 ]
  store i32 0, ptr %567, align 4, !tbaa !25
  store i32 0, ptr %568, align 4, !tbaa !25
  %569 = icmp eq i32 %566, 0
  br i1 %569, label %653, label %570

570:                                              ; preds = %430, %565
  %571 = phi i32 [ %84, %430 ], [ %543, %565 ]
  %572 = phi i32 [ %428, %430 ], [ %542, %565 ]
  %573 = phi i64 [ %427, %430 ], [ %541, %565 ]
  %574 = phi i32 [ %87, %430 ], [ %566, %565 ]
  %575 = load i32, ptr %3, align 1, !tbaa !25
  %576 = mul i32 %575, -1640531535
  %577 = sub i32 32, %101
  %578 = lshr i32 %576, %577
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds nuw i8, ptr %89, i64 112
  %581 = load ptr, ptr %580, align 8, !tbaa !108
  %582 = getelementptr inbounds nuw i32, ptr %581, i64 %579
  %583 = getelementptr inbounds nuw i8, ptr %89, i64 128
  %584 = load ptr, ptr %583, align 8, !tbaa !110
  %585 = load i32, ptr %582, align 4, !tbaa !25
  %586 = icmp ugt i32 %585, %98
  br i1 %586, label %587, label %653

587:                                              ; preds = %570
  %588 = and i64 %95, 4294967295
  %589 = zext i32 %99 to i64
  %590 = getelementptr inbounds nuw i8, ptr %38, i64 %589
  %591 = add i32 %36, 3
  br label %592

592:                                              ; preds = %587, %638
  %593 = phi i32 [ %585, %587 ], [ %649, %638 ]
  %594 = phi i64 [ 0, %587 ], [ %645, %638 ]
  %595 = phi i64 [ 0, %587 ], [ %644, %638 ]
  %596 = phi i32 [ %571, %587 ], [ %636, %638 ]
  %597 = phi i32 [ %572, %587 ], [ %635, %638 ]
  %598 = phi i32 [ %574, %587 ], [ %648, %638 ]
  %599 = phi i64 [ %573, %587 ], [ %634, %638 ]
  %600 = and i32 %593, %106
  %601 = shl nuw i32 %600, 1
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds nuw i32, ptr %584, i64 %602
  %604 = tail call i64 @llvm.umin.i64(i64 %594, i64 %595)
  %605 = zext i32 %593 to i64
  %606 = getelementptr inbounds nuw i8, ptr %91, i64 %605
  %607 = getelementptr inbounds nuw i8, ptr %3, i64 %604
  %608 = getelementptr inbounds nuw i8, ptr %606, i64 %604
  %609 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %607, ptr noundef nonnull %608, ptr noundef %4, ptr noundef %92, ptr noundef %64)
  %610 = add i64 %609, %604
  %611 = add i64 %610, %605
  %612 = icmp ult i64 %611, %588
  %613 = getelementptr inbounds nuw i8, ptr %590, i64 %605
  %614 = select i1 %612, ptr %606, ptr %613
  %615 = icmp ugt i64 %610, %599
  br i1 %615, label %616, label %633

616:                                              ; preds = %592
  %617 = add i32 %593, %99
  %618 = sub i32 %596, %617
  %619 = zext i32 %618 to i64
  %620 = icmp ugt i64 %610, %619
  %621 = trunc i64 %610 to i32
  %622 = add i32 %617, %621
  %623 = select i1 %620, i32 %622, i32 %596
  %624 = sub i32 %591, %617
  %625 = zext i32 %597 to i64
  %626 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %625
  store i32 %624, ptr %626, align 4, !tbaa !46
  %627 = getelementptr inbounds nuw i8, ptr %626, i64 4
  store i32 %621, ptr %627, align 4, !tbaa !44
  %628 = add i32 %597, 1
  %629 = icmp ugt i64 %610, 4096
  %630 = getelementptr inbounds nuw i8, ptr %3, i64 %610
  %631 = icmp eq ptr %630, %4
  %632 = or i1 %629, %631
  br i1 %632, label %653, label %633

633:                                              ; preds = %616, %592
  %634 = phi i64 [ %610, %616 ], [ %599, %592 ]
  %635 = phi i32 [ %628, %616 ], [ %597, %592 ]
  %636 = phi i32 [ %623, %616 ], [ %596, %592 ]
  %637 = icmp ugt i32 %593, %110
  br i1 %637, label %638, label %653

638:                                              ; preds = %633
  %639 = getelementptr inbounds nuw i8, ptr %614, i64 %610
  %640 = load i8, ptr %639, align 1, !tbaa !42
  %641 = getelementptr inbounds nuw i8, ptr %3, i64 %610
  %642 = load i8, ptr %641, align 1, !tbaa !42
  %643 = icmp ult i8 %640, %642
  %644 = select i1 %643, i64 %595, i64 %610
  %645 = select i1 %643, i64 %610, i64 %594
  %646 = select i1 %643, i64 4, i64 0
  %647 = getelementptr inbounds nuw i8, ptr %603, i64 %646
  %648 = add i32 %598, -1
  %649 = load i32, ptr %647, align 4, !tbaa !25
  %650 = icmp ne i32 %648, 0
  %651 = icmp ugt i32 %649, %98
  %652 = select i1 %650, i1 %651, i1 false
  br i1 %652, label %592, label %653, !llvm.loop !146

653:                                              ; preds = %638, %616, %633, %570, %539, %565
  %654 = phi i32 [ %542, %565 ], [ %534, %539 ], [ %572, %570 ], [ %635, %638 ], [ %628, %616 ], [ %635, %633 ]
  %655 = phi i32 [ %543, %565 ], [ %529, %539 ], [ %571, %570 ], [ %636, %638 ], [ %623, %616 ], [ %636, %633 ]
  %656 = add i32 %655, -8
  br label %657

657:                                              ; preds = %653, %424
  %658 = phi i32 [ %425, %424 ], [ %656, %653 ]
  %659 = phi i32 [ 1, %424 ], [ %654, %653 ]
  store i32 %658, ptr %12, align 4, !tbaa !19
  br label %660

660:                                              ; preds = %246, %657
  %661 = phi i32 [ %659, %657 ], [ %253, %246 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %662

662:                                              ; preds = %8, %660
  %663 = phi i32 [ %661, %660 ], [ 0, %8 ]
  ret i32 %663
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_dictMatchState_4(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %710, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %13, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 4, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !20

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !18
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %43 = load i32, ptr %42, align 4, !tbaa !109
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  %46 = load i32, ptr %3, align 1, !tbaa !25
  %47 = mul i32 %46, -1640531535
  %48 = sub i32 32, %43
  %49 = lshr i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %56 = load i32, ptr %55, align 4, !tbaa !111
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %61 = load i32, ptr %60, align 8, !tbaa !22
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds nuw i8, ptr %37, i64 %62
  %64 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %65 = load i32, ptr %38, align 4, !tbaa !113
  %66 = getelementptr i8, ptr %1, i64 28
  %67 = load i32, ptr %66, align 4, !tbaa !107
  %68 = getelementptr i8, ptr %1, i64 40
  %69 = load i32, ptr %68, align 8, !tbaa !114
  %70 = shl nuw i32 1, %65
  %71 = sub i32 %36, %67
  %72 = icmp ugt i32 %71, %70
  %73 = sub i32 %36, %70
  %74 = icmp eq i32 %69, 0
  %75 = select i1 %74, i1 %72, i1 false
  %76 = select i1 %75, i32 %73, i32 %67
  %77 = tail call i32 @llvm.umax.i32(i32 %76, i32 1)
  %78 = and i32 %36, %59
  %79 = shl nuw i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds nuw i32, ptr %54, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %83 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %85 = load i32, ptr %84, align 4, !tbaa !115
  %86 = shl nuw i32 1, %85
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %88 = load ptr, ptr %87, align 8, !tbaa !143
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %90 = load ptr, ptr %89, align 8, !tbaa !18
  %91 = load ptr, ptr %88, align 8, !tbaa !144
  %92 = ptrtoint ptr %91 to i64
  %93 = ptrtoint ptr %90 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds nuw i8, ptr %88, i64 28
  %97 = load i32, ptr %96, align 4, !tbaa !107
  %98 = sub i32 %76, %95
  %99 = getelementptr inbounds nuw i8, ptr %88, i64 264
  %100 = load i32, ptr %99, align 4, !tbaa !109
  %101 = getelementptr inbounds nuw i8, ptr %88, i64 260
  %102 = load i32, ptr %101, align 4, !tbaa !111
  %103 = add i32 %102, -1
  %104 = shl nsw i32 -1, %103
  %105 = xor i32 %104, -1
  %106 = sub i32 %95, %97
  %107 = icmp ugt i32 %106, %105
  %108 = sub i32 %95, %105
  %109 = select i1 %107, i32 %108, i32 %97
  %110 = add i32 %7, -1
  %111 = zext i32 %110 to i64
  %112 = icmp ult i32 %6, -3
  br i1 %112, label %113, label %477

113:                                              ; preds = %35
  %114 = sub i32 %36, %61
  %115 = zext i32 %98 to i64
  %116 = sub nsw i64 0, %115
  %117 = getelementptr i8, ptr %90, i64 %116
  %118 = add i32 %97, %98
  %119 = sub i32 %36, %118
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %121 = getelementptr inbounds i8, ptr %4, i64 -7
  %122 = icmp ult ptr %120, %121
  %123 = getelementptr inbounds i8, ptr %4, i64 -3
  %124 = getelementptr inbounds i8, ptr %4, i64 -1
  %125 = ptrtoint ptr %120 to i64
  %126 = zext i32 %6 to i64
  %127 = icmp eq i32 %6, 3
  br i1 %127, label %128, label %131

128:                                              ; preds = %113
  %129 = load i32, ptr %5, align 4, !tbaa !25
  %130 = add i32 %129, -1
  br label %134

131:                                              ; preds = %113
  %132 = getelementptr inbounds nuw i32, ptr %5, i64 %126
  %133 = load i32, ptr %132, align 4, !tbaa !25
  br label %134

134:                                              ; preds = %131, %128
  %135 = phi i32 [ %130, %128 ], [ %133, %131 ]
  %136 = sub i32 %36, %135
  %137 = add i32 %135, -1
  %138 = icmp ult i32 %137, %114
  br i1 %138, label %139, label %210

139:                                              ; preds = %134
  %140 = icmp uge i32 %136, %76
  %141 = zext i32 %135 to i64
  %142 = sub nsw i64 0, %141
  %143 = getelementptr inbounds i8, ptr %3, i64 %142
  %144 = load i32, ptr %143, align 1, !tbaa !25
  %145 = icmp eq i32 %46, %144
  %146 = and i1 %140, %145
  br i1 %146, label %147, label %235

147:                                              ; preds = %139
  %148 = getelementptr inbounds i8, ptr %120, i64 %142
  br i1 %122, label %149, label %174

149:                                              ; preds = %147
  %150 = load i64, ptr %148, align 1, !tbaa !30
  %151 = load i64, ptr %120, align 1, !tbaa !30
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = xor i64 %151, %150
  %155 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %154, i1 true)
  %156 = lshr i64 %155, 3
  br label %223

157:                                              ; preds = %149, %163
  %158 = phi ptr [ %161, %163 ], [ %148, %149 ]
  %159 = phi ptr [ %160, %163 ], [ %120, %149 ]
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 8
  %161 = getelementptr inbounds nuw i8, ptr %158, i64 8
  %162 = icmp ult ptr %160, %121
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  %164 = load i64, ptr %161, align 1, !tbaa !30
  %165 = load i64, ptr %160, align 1, !tbaa !30
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %157, label %167

167:                                              ; preds = %163
  %168 = xor i64 %165, %164
  %169 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %168, i1 true)
  %170 = lshr i64 %169, 3
  %171 = getelementptr inbounds nuw i8, ptr %160, i64 %170
  %172 = ptrtoint ptr %171 to i64
  %173 = sub i64 %172, %125
  br label %223

174:                                              ; preds = %157, %147
  %175 = phi ptr [ %148, %147 ], [ %161, %157 ]
  %176 = phi ptr [ %120, %147 ], [ %160, %157 ]
  %177 = icmp ult ptr %176, %123
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load i32, ptr %175, align 1, !tbaa !25
  %180 = load i32, ptr %176, align 1, !tbaa !25
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = getelementptr inbounds nuw i8, ptr %176, i64 4
  %184 = getelementptr inbounds nuw i8, ptr %175, i64 4
  br label %185

185:                                              ; preds = %182, %178, %174
  %186 = phi ptr [ %184, %182 ], [ %175, %178 ], [ %175, %174 ]
  %187 = phi ptr [ %183, %182 ], [ %176, %178 ], [ %176, %174 ]
  %188 = icmp ult ptr %187, %124
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i16, ptr %186, align 1, !tbaa !116
  %191 = load i16, ptr %187, align 1, !tbaa !116
  %192 = icmp eq i16 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = getelementptr inbounds nuw i8, ptr %187, i64 2
  %195 = getelementptr inbounds nuw i8, ptr %186, i64 2
  br label %196

196:                                              ; preds = %193, %189, %185
  %197 = phi ptr [ %195, %193 ], [ %186, %189 ], [ %186, %185 ]
  %198 = phi ptr [ %194, %193 ], [ %187, %189 ], [ %187, %185 ]
  %199 = icmp ult ptr %198, %4
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load i8, ptr %197, align 1, !tbaa !42
  %202 = load i8, ptr %198, align 1, !tbaa !42
  %203 = icmp eq i8 %201, %202
  %204 = zext i1 %203 to i64
  %205 = getelementptr inbounds nuw i8, ptr %198, i64 %204
  br label %206

206:                                              ; preds = %200, %196
  %207 = phi ptr [ %198, %196 ], [ %205, %200 ]
  %208 = ptrtoint ptr %207 to i64
  %209 = sub i64 %208, %125
  br label %223

210:                                              ; preds = %134
  %211 = zext i32 %136 to i64
  %212 = getelementptr i8, ptr %117, i64 %211
  %213 = icmp uge i32 %137, %119
  %214 = sub i32 %136, %61
  %215 = icmp ugt i32 %214, -4
  %216 = select i1 %213, i1 true, i1 %215
  br i1 %216, label %235, label %217

217:                                              ; preds = %210
  %218 = load i32, ptr %212, align 1, !tbaa !25
  %219 = icmp eq i32 %46, %218
  br i1 %219, label %220, label %235

220:                                              ; preds = %217
  %221 = getelementptr inbounds nuw i8, ptr %212, i64 4
  %222 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %120, ptr noundef nonnull %221, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  br label %223

223:                                              ; preds = %206, %167, %153, %220
  %224 = phi i64 [ %222, %220 ], [ %209, %206 ], [ %156, %153 ], [ %173, %167 ]
  %225 = trunc i64 %224 to i32
  %226 = add i32 %225, 4
  %227 = icmp ult i32 %110, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = zext i32 %226 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %226, ptr %230, align 4, !tbaa !44
  %231 = icmp ule i32 %226, %41
  %232 = getelementptr inbounds nuw i8, ptr %3, i64 %229
  %233 = icmp ne ptr %232, %4
  %234 = and i1 %231, %233
  br i1 %234, label %235, label %708

235:                                              ; preds = %210, %217, %139, %223, %228
  %236 = phi i32 [ 1, %228 ], [ 0, %223 ], [ 0, %139 ], [ 0, %217 ], [ 0, %210 ]
  %237 = phi i64 [ %229, %228 ], [ %111, %223 ], [ %111, %139 ], [ %111, %217 ], [ %111, %210 ]
  %238 = add nuw nsw i64 %126, 1
  %239 = icmp eq i64 %238, 3
  br i1 %239, label %243, label %240

240:                                              ; preds = %235
  %241 = getelementptr inbounds nuw i32, ptr %5, i64 %238
  %242 = load i32, ptr %241, align 4, !tbaa !25
  br label %246

243:                                              ; preds = %235
  %244 = load i32, ptr %5, align 4, !tbaa !25
  %245 = add i32 %244, -1
  br label %246

246:                                              ; preds = %243, %240
  %247 = phi i32 [ %245, %243 ], [ %242, %240 ]
  %248 = sub i32 %36, %247
  %249 = add i32 %247, -1
  %250 = icmp ult i32 %249, %114
  br i1 %250, label %267, label %251

251:                                              ; preds = %246
  %252 = zext i32 %248 to i64
  %253 = getelementptr i8, ptr %117, i64 %252
  %254 = icmp uge i32 %249, %119
  %255 = sub i32 %248, %61
  %256 = icmp ugt i32 %255, -4
  %257 = select i1 %254, i1 true, i1 %256
  br i1 %257, label %343, label %258

258:                                              ; preds = %251
  %259 = load i32, ptr %3, align 1, !tbaa !25
  %260 = load i32, ptr %253, align 1, !tbaa !25
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %343

262:                                              ; preds = %258
  %263 = getelementptr inbounds nuw i8, ptr %253, i64 4
  %264 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %120, ptr noundef nonnull %263, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %265 = trunc i64 %264 to i32
  %266 = add i32 %265, 4
  br label %343

267:                                              ; preds = %246
  %268 = icmp uge i32 %248, %76
  %269 = load i32, ptr %3, align 1, !tbaa !25
  %270 = zext i32 %247 to i64
  %271 = sub nsw i64 0, %270
  %272 = getelementptr inbounds i8, ptr %3, i64 %271
  %273 = load i32, ptr %272, align 1, !tbaa !25
  %274 = icmp eq i32 %269, %273
  %275 = and i1 %268, %274
  br i1 %275, label %276, label %343

276:                                              ; preds = %267
  %277 = getelementptr inbounds i8, ptr %120, i64 %271
  br i1 %122, label %278, label %292

278:                                              ; preds = %276
  %279 = load i64, ptr %277, align 1, !tbaa !30
  %280 = load i64, ptr %120, align 1, !tbaa !30
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %286, label %282

282:                                              ; preds = %278
  %283 = xor i64 %280, %279
  %284 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %283, i1 true)
  %285 = lshr i64 %284, 3
  br label %339

286:                                              ; preds = %278, %328
  %287 = phi ptr [ %290, %328 ], [ %277, %278 ]
  %288 = phi ptr [ %289, %328 ], [ %120, %278 ]
  %289 = getelementptr inbounds nuw i8, ptr %288, i64 8
  %290 = getelementptr inbounds nuw i8, ptr %287, i64 8
  %291 = icmp ult ptr %289, %121
  br i1 %291, label %328, label %292

292:                                              ; preds = %286, %276
  %293 = phi ptr [ %277, %276 ], [ %290, %286 ]
  %294 = phi ptr [ %120, %276 ], [ %289, %286 ]
  %295 = icmp ult ptr %294, %123
  br i1 %295, label %296, label %303

296:                                              ; preds = %292
  %297 = load i32, ptr %293, align 1, !tbaa !25
  %298 = load i32, ptr %294, align 1, !tbaa !25
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = getelementptr inbounds nuw i8, ptr %294, i64 4
  %302 = getelementptr inbounds nuw i8, ptr %293, i64 4
  br label %303

303:                                              ; preds = %300, %296, %292
  %304 = phi ptr [ %302, %300 ], [ %293, %296 ], [ %293, %292 ]
  %305 = phi ptr [ %301, %300 ], [ %294, %296 ], [ %294, %292 ]
  %306 = icmp ult ptr %305, %124
  br i1 %306, label %307, label %314

307:                                              ; preds = %303
  %308 = load i16, ptr %304, align 1, !tbaa !116
  %309 = load i16, ptr %305, align 1, !tbaa !116
  %310 = icmp eq i16 %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = getelementptr inbounds nuw i8, ptr %305, i64 2
  %313 = getelementptr inbounds nuw i8, ptr %304, i64 2
  br label %314

314:                                              ; preds = %311, %307, %303
  %315 = phi ptr [ %313, %311 ], [ %304, %307 ], [ %304, %303 ]
  %316 = phi ptr [ %312, %311 ], [ %305, %307 ], [ %305, %303 ]
  %317 = icmp ult ptr %316, %4
  br i1 %317, label %318, label %324

318:                                              ; preds = %314
  %319 = load i8, ptr %315, align 1, !tbaa !42
  %320 = load i8, ptr %316, align 1, !tbaa !42
  %321 = icmp eq i8 %319, %320
  %322 = zext i1 %321 to i64
  %323 = getelementptr inbounds nuw i8, ptr %316, i64 %322
  br label %324

324:                                              ; preds = %318, %314
  %325 = phi ptr [ %316, %314 ], [ %323, %318 ]
  %326 = ptrtoint ptr %325 to i64
  %327 = sub i64 %326, %125
  br label %339

328:                                              ; preds = %286
  %329 = load i64, ptr %290, align 1, !tbaa !30
  %330 = load i64, ptr %289, align 1, !tbaa !30
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %286, label %332

332:                                              ; preds = %328
  %333 = xor i64 %330, %329
  %334 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %333, i1 true)
  %335 = lshr i64 %334, 3
  %336 = getelementptr inbounds nuw i8, ptr %289, i64 %335
  %337 = ptrtoint ptr %336 to i64
  %338 = sub i64 %337, %125
  br label %339

339:                                              ; preds = %332, %324, %282
  %340 = phi i64 [ %327, %324 ], [ %285, %282 ], [ %338, %332 ]
  %341 = trunc i64 %340 to i32
  %342 = add i32 %341, 4
  br label %343

343:                                              ; preds = %339, %267, %262, %258, %251
  %344 = phi i32 [ %342, %339 ], [ 0, %267 ], [ %266, %262 ], [ 0, %258 ], [ 0, %251 ]
  %345 = zext i32 %344 to i64
  %346 = icmp samesign ult i64 %237, %345
  br i1 %346, label %347, label %356

347:                                              ; preds = %343
  %348 = zext nneg i32 %236 to i64
  %349 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %348
  store i32 2, ptr %349, align 4, !tbaa !46
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 4
  store i32 %344, ptr %350, align 4, !tbaa !44
  %351 = add nuw nsw i32 %236, 1
  %352 = icmp ule i32 %344, %41
  %353 = getelementptr inbounds nuw i8, ptr %3, i64 %345
  %354 = icmp ne ptr %353, %4
  %355 = and i1 %352, %354
  br i1 %355, label %356, label %708

356:                                              ; preds = %347, %343
  %357 = phi i32 [ %351, %347 ], [ %236, %343 ]
  %358 = phi i64 [ %345, %347 ], [ %237, %343 ]
  %359 = add nuw nsw i64 %126, 2
  %360 = icmp eq i64 %359, 3
  br i1 %360, label %364, label %361

361:                                              ; preds = %356
  %362 = getelementptr inbounds nuw i32, ptr %5, i64 %359
  %363 = load i32, ptr %362, align 4, !tbaa !25
  br label %367

364:                                              ; preds = %356
  %365 = load i32, ptr %5, align 4, !tbaa !25
  %366 = add i32 %365, -1
  br label %367

367:                                              ; preds = %364, %361
  %368 = phi i32 [ %366, %364 ], [ %363, %361 ]
  %369 = sub i32 %36, %368
  %370 = add i32 %368, -1
  %371 = icmp ult i32 %370, %114
  br i1 %371, label %388, label %372

372:                                              ; preds = %367
  %373 = zext i32 %369 to i64
  %374 = getelementptr i8, ptr %117, i64 %373
  %375 = icmp uge i32 %370, %119
  %376 = sub i32 %369, %61
  %377 = icmp ugt i32 %376, -4
  %378 = select i1 %375, i1 true, i1 %377
  br i1 %378, label %464, label %379

379:                                              ; preds = %372
  %380 = load i32, ptr %3, align 1, !tbaa !25
  %381 = load i32, ptr %374, align 1, !tbaa !25
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %464

383:                                              ; preds = %379
  %384 = getelementptr inbounds nuw i8, ptr %374, i64 4
  %385 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %120, ptr noundef nonnull %384, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %386 = trunc i64 %385 to i32
  %387 = add i32 %386, 4
  br label %464

388:                                              ; preds = %367
  %389 = icmp uge i32 %369, %76
  %390 = load i32, ptr %3, align 1, !tbaa !25
  %391 = zext i32 %368 to i64
  %392 = sub nsw i64 0, %391
  %393 = getelementptr inbounds i8, ptr %3, i64 %392
  %394 = load i32, ptr %393, align 1, !tbaa !25
  %395 = icmp eq i32 %390, %394
  %396 = and i1 %389, %395
  br i1 %396, label %397, label %464

397:                                              ; preds = %388
  %398 = getelementptr inbounds i8, ptr %120, i64 %392
  br i1 %122, label %399, label %413

399:                                              ; preds = %397
  %400 = load i64, ptr %398, align 1, !tbaa !30
  %401 = load i64, ptr %120, align 1, !tbaa !30
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %407, label %403

403:                                              ; preds = %399
  %404 = xor i64 %401, %400
  %405 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %404, i1 true)
  %406 = lshr i64 %405, 3
  br label %460

407:                                              ; preds = %399, %449
  %408 = phi ptr [ %411, %449 ], [ %398, %399 ]
  %409 = phi ptr [ %410, %449 ], [ %120, %399 ]
  %410 = getelementptr inbounds nuw i8, ptr %409, i64 8
  %411 = getelementptr inbounds nuw i8, ptr %408, i64 8
  %412 = icmp ult ptr %410, %121
  br i1 %412, label %449, label %413

413:                                              ; preds = %407, %397
  %414 = phi ptr [ %398, %397 ], [ %411, %407 ]
  %415 = phi ptr [ %120, %397 ], [ %410, %407 ]
  %416 = icmp ult ptr %415, %123
  br i1 %416, label %417, label %424

417:                                              ; preds = %413
  %418 = load i32, ptr %414, align 1, !tbaa !25
  %419 = load i32, ptr %415, align 1, !tbaa !25
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %421, label %424

421:                                              ; preds = %417
  %422 = getelementptr inbounds nuw i8, ptr %415, i64 4
  %423 = getelementptr inbounds nuw i8, ptr %414, i64 4
  br label %424

424:                                              ; preds = %421, %417, %413
  %425 = phi ptr [ %423, %421 ], [ %414, %417 ], [ %414, %413 ]
  %426 = phi ptr [ %422, %421 ], [ %415, %417 ], [ %415, %413 ]
  %427 = icmp ult ptr %426, %124
  br i1 %427, label %428, label %435

428:                                              ; preds = %424
  %429 = load i16, ptr %425, align 1, !tbaa !116
  %430 = load i16, ptr %426, align 1, !tbaa !116
  %431 = icmp eq i16 %429, %430
  br i1 %431, label %432, label %435

432:                                              ; preds = %428
  %433 = getelementptr inbounds nuw i8, ptr %426, i64 2
  %434 = getelementptr inbounds nuw i8, ptr %425, i64 2
  br label %435

435:                                              ; preds = %432, %428, %424
  %436 = phi ptr [ %434, %432 ], [ %425, %428 ], [ %425, %424 ]
  %437 = phi ptr [ %433, %432 ], [ %426, %428 ], [ %426, %424 ]
  %438 = icmp ult ptr %437, %4
  br i1 %438, label %439, label %445

439:                                              ; preds = %435
  %440 = load i8, ptr %436, align 1, !tbaa !42
  %441 = load i8, ptr %437, align 1, !tbaa !42
  %442 = icmp eq i8 %440, %441
  %443 = zext i1 %442 to i64
  %444 = getelementptr inbounds nuw i8, ptr %437, i64 %443
  br label %445

445:                                              ; preds = %439, %435
  %446 = phi ptr [ %437, %435 ], [ %444, %439 ]
  %447 = ptrtoint ptr %446 to i64
  %448 = sub i64 %447, %125
  br label %460

449:                                              ; preds = %407
  %450 = load i64, ptr %411, align 1, !tbaa !30
  %451 = load i64, ptr %410, align 1, !tbaa !30
  %452 = icmp eq i64 %450, %451
  br i1 %452, label %407, label %453

453:                                              ; preds = %449
  %454 = xor i64 %451, %450
  %455 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %454, i1 true)
  %456 = lshr i64 %455, 3
  %457 = getelementptr inbounds nuw i8, ptr %410, i64 %456
  %458 = ptrtoint ptr %457 to i64
  %459 = sub i64 %458, %125
  br label %460

460:                                              ; preds = %453, %445, %403
  %461 = phi i64 [ %448, %445 ], [ %406, %403 ], [ %459, %453 ]
  %462 = trunc i64 %461 to i32
  %463 = add i32 %462, 4
  br label %464

464:                                              ; preds = %460, %388, %383, %379, %372
  %465 = phi i32 [ %463, %460 ], [ 0, %388 ], [ %387, %383 ], [ 0, %379 ], [ 0, %372 ]
  %466 = zext i32 %465 to i64
  %467 = icmp samesign ult i64 %358, %466
  br i1 %467, label %468, label %477

468:                                              ; preds = %464
  %469 = zext nneg i32 %357 to i64
  %470 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %469
  store i32 3, ptr %470, align 4, !tbaa !46
  %471 = getelementptr inbounds nuw i8, ptr %470, i64 4
  store i32 %465, ptr %471, align 4, !tbaa !44
  %472 = add nuw nsw i32 %357, 1
  %473 = icmp ule i32 %465, %41
  %474 = getelementptr inbounds nuw i8, ptr %3, i64 %466
  %475 = icmp ne ptr %474, %4
  %476 = and i1 %473, %475
  br i1 %476, label %477, label %708

477:                                              ; preds = %464, %468, %35
  %478 = phi i64 [ %111, %35 ], [ %466, %468 ], [ %358, %464 ]
  %479 = phi i32 [ 0, %35 ], [ %472, %468 ], [ %357, %464 ]
  store i32 %36, ptr %51, align 4, !tbaa !25
  %480 = icmp ult i32 %52, %77
  br i1 %480, label %481, label %482

481:                                              ; preds = %477
  store i32 0, ptr %82, align 4, !tbaa !25
  store i32 0, ptr %81, align 4, !tbaa !25
  br label %621

482:                                              ; preds = %477
  %483 = getelementptr inbounds i8, ptr %4, i64 -7
  %484 = getelementptr inbounds i8, ptr %4, i64 -3
  %485 = getelementptr inbounds i8, ptr %4, i64 -1
  %486 = add i32 %36, 3
  br label %487

487:                                              ; preds = %482, %605
  %488 = phi i32 [ %52, %482 ], [ %611, %605 ]
  %489 = phi i64 [ 0, %482 ], [ %609, %605 ]
  %490 = phi i64 [ 0, %482 ], [ %608, %605 ]
  %491 = phi ptr [ %81, %482 ], [ %607, %605 ]
  %492 = phi ptr [ %82, %482 ], [ %606, %605 ]
  %493 = phi i32 [ %83, %482 ], [ %594, %605 ]
  %494 = phi i32 [ %479, %482 ], [ %593, %605 ]
  %495 = phi i32 [ %86, %482 ], [ %612, %605 ]
  %496 = phi i64 [ %478, %482 ], [ %592, %605 ]
  %497 = and i32 %488, %59
  %498 = shl nuw i32 %497, 1
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds nuw i32, ptr %54, i64 %499
  %501 = tail call i64 @llvm.umin.i64(i64 %489, i64 %490)
  %502 = zext i32 %488 to i64
  %503 = getelementptr inbounds nuw i8, ptr %37, i64 %502
  %504 = getelementptr inbounds nuw i8, ptr %3, i64 %501
  %505 = getelementptr inbounds nuw i8, ptr %503, i64 %501
  %506 = icmp ult ptr %504, %483
  br i1 %506, label %507, label %533

507:                                              ; preds = %487
  %508 = load i64, ptr %505, align 1, !tbaa !30
  %509 = load i64, ptr %504, align 1, !tbaa !30
  %510 = icmp eq i64 %508, %509
  br i1 %510, label %515, label %511

511:                                              ; preds = %507
  %512 = xor i64 %509, %508
  %513 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %512, i1 true)
  %514 = lshr i64 %513, 3
  br label %570

515:                                              ; preds = %507, %521
  %516 = phi ptr [ %519, %521 ], [ %505, %507 ]
  %517 = phi ptr [ %518, %521 ], [ %504, %507 ]
  %518 = getelementptr inbounds nuw i8, ptr %517, i64 8
  %519 = getelementptr inbounds nuw i8, ptr %516, i64 8
  %520 = icmp ult ptr %518, %483
  br i1 %520, label %521, label %533

521:                                              ; preds = %515
  %522 = load i64, ptr %519, align 1, !tbaa !30
  %523 = load i64, ptr %518, align 1, !tbaa !30
  %524 = icmp eq i64 %522, %523
  br i1 %524, label %515, label %525

525:                                              ; preds = %521
  %526 = xor i64 %523, %522
  %527 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %526, i1 true)
  %528 = lshr i64 %527, 3
  %529 = getelementptr inbounds nuw i8, ptr %518, i64 %528
  %530 = ptrtoint ptr %529 to i64
  %531 = ptrtoint ptr %504 to i64
  %532 = sub i64 %530, %531
  br label %570

533:                                              ; preds = %515, %487
  %534 = phi ptr [ %505, %487 ], [ %519, %515 ]
  %535 = phi ptr [ %504, %487 ], [ %518, %515 ]
  %536 = icmp ult ptr %535, %484
  br i1 %536, label %537, label %544

537:                                              ; preds = %533
  %538 = load i32, ptr %534, align 1, !tbaa !25
  %539 = load i32, ptr %535, align 1, !tbaa !25
  %540 = icmp eq i32 %538, %539
  br i1 %540, label %541, label %544

541:                                              ; preds = %537
  %542 = getelementptr inbounds nuw i8, ptr %535, i64 4
  %543 = getelementptr inbounds nuw i8, ptr %534, i64 4
  br label %544

544:                                              ; preds = %541, %537, %533
  %545 = phi ptr [ %543, %541 ], [ %534, %537 ], [ %534, %533 ]
  %546 = phi ptr [ %542, %541 ], [ %535, %537 ], [ %535, %533 ]
  %547 = icmp ult ptr %546, %485
  br i1 %547, label %548, label %555

548:                                              ; preds = %544
  %549 = load i16, ptr %545, align 1, !tbaa !116
  %550 = load i16, ptr %546, align 1, !tbaa !116
  %551 = icmp eq i16 %549, %550
  br i1 %551, label %552, label %555

552:                                              ; preds = %548
  %553 = getelementptr inbounds nuw i8, ptr %546, i64 2
  %554 = getelementptr inbounds nuw i8, ptr %545, i64 2
  br label %555

555:                                              ; preds = %552, %548, %544
  %556 = phi ptr [ %554, %552 ], [ %545, %548 ], [ %545, %544 ]
  %557 = phi ptr [ %553, %552 ], [ %546, %548 ], [ %546, %544 ]
  %558 = icmp ult ptr %557, %4
  br i1 %558, label %559, label %565

559:                                              ; preds = %555
  %560 = load i8, ptr %556, align 1, !tbaa !42
  %561 = load i8, ptr %557, align 1, !tbaa !42
  %562 = icmp eq i8 %560, %561
  %563 = zext i1 %562 to i64
  %564 = getelementptr inbounds nuw i8, ptr %557, i64 %563
  br label %565

565:                                              ; preds = %559, %555
  %566 = phi ptr [ %557, %555 ], [ %564, %559 ]
  %567 = ptrtoint ptr %566 to i64
  %568 = ptrtoint ptr %504 to i64
  %569 = sub i64 %567, %568
  br label %570

570:                                              ; preds = %511, %525, %565
  %571 = phi i64 [ %569, %565 ], [ %514, %511 ], [ %532, %525 ]
  %572 = add i64 %571, %501
  %573 = icmp ugt i64 %572, %496
  br i1 %573, label %574, label %591

574:                                              ; preds = %570
  %575 = sub i32 %493, %488
  %576 = zext i32 %575 to i64
  %577 = icmp ugt i64 %572, %576
  %578 = trunc i64 %572 to i32
  %579 = add i32 %488, %578
  %580 = select i1 %577, i32 %579, i32 %493
  %581 = sub i32 %486, %488
  %582 = zext i32 %494 to i64
  %583 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %582
  store i32 %581, ptr %583, align 4, !tbaa !46
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 4
  store i32 %578, ptr %584, align 4, !tbaa !44
  %585 = add i32 %494, 1
  %586 = icmp ugt i64 %572, 4096
  %587 = getelementptr inbounds nuw i8, ptr %3, i64 %572
  %588 = icmp eq ptr %587, %4
  %589 = or i1 %586, %588
  br i1 %589, label %590, label %591

590:                                              ; preds = %574
  store i32 0, ptr %492, align 4, !tbaa !25
  store i32 0, ptr %491, align 4, !tbaa !25
  br label %704

591:                                              ; preds = %574, %570
  %592 = phi i64 [ %572, %574 ], [ %496, %570 ]
  %593 = phi i32 [ %585, %574 ], [ %494, %570 ]
  %594 = phi i32 [ %580, %574 ], [ %493, %570 ]
  %595 = getelementptr inbounds nuw i8, ptr %503, i64 %572
  %596 = load i8, ptr %595, align 1, !tbaa !42
  %597 = getelementptr inbounds nuw i8, ptr %3, i64 %572
  %598 = load i8, ptr %597, align 1, !tbaa !42
  %599 = icmp ult i8 %596, %598
  %600 = icmp ugt i32 %488, %64
  br i1 %599, label %601, label %604

601:                                              ; preds = %591
  store i32 %488, ptr %491, align 4, !tbaa !25
  br i1 %600, label %602, label %616

602:                                              ; preds = %601
  %603 = getelementptr inbounds nuw i8, ptr %500, i64 4
  br label %605

604:                                              ; preds = %591
  store i32 %488, ptr %492, align 4, !tbaa !25
  br i1 %600, label %605, label %616

605:                                              ; preds = %604, %602
  %606 = phi ptr [ %492, %602 ], [ %500, %604 ]
  %607 = phi ptr [ %603, %602 ], [ %491, %604 ]
  %608 = phi i64 [ %490, %602 ], [ %572, %604 ]
  %609 = phi i64 [ %572, %602 ], [ %489, %604 ]
  %610 = phi ptr [ %603, %602 ], [ %500, %604 ]
  %611 = load i32, ptr %610, align 4, !tbaa !25
  %612 = add i32 %495, -1
  %613 = icmp ne i32 %612, 0
  %614 = icmp uge i32 %611, %77
  %615 = select i1 %613, i1 %614, i1 false
  br i1 %615, label %487, label %616, !llvm.loop !140

616:                                              ; preds = %605, %601, %604
  %617 = phi i32 [ %612, %605 ], [ %495, %601 ], [ %495, %604 ]
  %618 = phi ptr [ %606, %605 ], [ %492, %601 ], [ %9, %604 ]
  %619 = phi ptr [ %607, %605 ], [ %9, %601 ], [ %491, %604 ]
  store i32 0, ptr %618, align 4, !tbaa !25
  store i32 0, ptr %619, align 4, !tbaa !25
  %620 = icmp eq i32 %617, 0
  br i1 %620, label %704, label %621

621:                                              ; preds = %481, %616
  %622 = phi i32 [ %83, %481 ], [ %594, %616 ]
  %623 = phi i32 [ %479, %481 ], [ %593, %616 ]
  %624 = phi i64 [ %478, %481 ], [ %592, %616 ]
  %625 = phi i32 [ %86, %481 ], [ %617, %616 ]
  %626 = load i32, ptr %3, align 1, !tbaa !25
  %627 = mul i32 %626, -1640531535
  %628 = sub i32 32, %100
  %629 = lshr i32 %627, %628
  %630 = zext i32 %629 to i64
  %631 = getelementptr inbounds nuw i8, ptr %88, i64 112
  %632 = load ptr, ptr %631, align 8, !tbaa !108
  %633 = getelementptr inbounds nuw i32, ptr %632, i64 %630
  %634 = getelementptr inbounds nuw i8, ptr %88, i64 128
  %635 = load ptr, ptr %634, align 8, !tbaa !110
  %636 = load i32, ptr %633, align 4, !tbaa !25
  %637 = icmp ugt i32 %636, %97
  br i1 %637, label %638, label %704

638:                                              ; preds = %621
  %639 = and i64 %94, 4294967295
  %640 = zext i32 %98 to i64
  %641 = getelementptr inbounds nuw i8, ptr %37, i64 %640
  %642 = add i32 %36, 3
  br label %643

643:                                              ; preds = %638, %689
  %644 = phi i32 [ %636, %638 ], [ %700, %689 ]
  %645 = phi i64 [ 0, %638 ], [ %696, %689 ]
  %646 = phi i64 [ 0, %638 ], [ %695, %689 ]
  %647 = phi i32 [ %622, %638 ], [ %687, %689 ]
  %648 = phi i32 [ %623, %638 ], [ %686, %689 ]
  %649 = phi i32 [ %625, %638 ], [ %699, %689 ]
  %650 = phi i64 [ %624, %638 ], [ %685, %689 ]
  %651 = and i32 %644, %105
  %652 = shl nuw i32 %651, 1
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds nuw i32, ptr %635, i64 %653
  %655 = tail call i64 @llvm.umin.i64(i64 %645, i64 %646)
  %656 = zext i32 %644 to i64
  %657 = getelementptr inbounds nuw i8, ptr %90, i64 %656
  %658 = getelementptr inbounds nuw i8, ptr %3, i64 %655
  %659 = getelementptr inbounds nuw i8, ptr %657, i64 %655
  %660 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %658, ptr noundef nonnull %659, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %661 = add i64 %660, %655
  %662 = add i64 %661, %656
  %663 = icmp ult i64 %662, %639
  %664 = getelementptr inbounds nuw i8, ptr %641, i64 %656
  %665 = select i1 %663, ptr %657, ptr %664
  %666 = icmp ugt i64 %661, %650
  br i1 %666, label %667, label %684

667:                                              ; preds = %643
  %668 = add i32 %644, %98
  %669 = sub i32 %647, %668
  %670 = zext i32 %669 to i64
  %671 = icmp ugt i64 %661, %670
  %672 = trunc i64 %661 to i32
  %673 = add i32 %668, %672
  %674 = select i1 %671, i32 %673, i32 %647
  %675 = sub i32 %642, %668
  %676 = zext i32 %648 to i64
  %677 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %676
  store i32 %675, ptr %677, align 4, !tbaa !46
  %678 = getelementptr inbounds nuw i8, ptr %677, i64 4
  store i32 %672, ptr %678, align 4, !tbaa !44
  %679 = add i32 %648, 1
  %680 = icmp ugt i64 %661, 4096
  %681 = getelementptr inbounds nuw i8, ptr %3, i64 %661
  %682 = icmp eq ptr %681, %4
  %683 = or i1 %680, %682
  br i1 %683, label %704, label %684

684:                                              ; preds = %667, %643
  %685 = phi i64 [ %661, %667 ], [ %650, %643 ]
  %686 = phi i32 [ %679, %667 ], [ %648, %643 ]
  %687 = phi i32 [ %674, %667 ], [ %647, %643 ]
  %688 = icmp ugt i32 %644, %109
  br i1 %688, label %689, label %704

689:                                              ; preds = %684
  %690 = getelementptr inbounds nuw i8, ptr %665, i64 %661
  %691 = load i8, ptr %690, align 1, !tbaa !42
  %692 = getelementptr inbounds nuw i8, ptr %3, i64 %661
  %693 = load i8, ptr %692, align 1, !tbaa !42
  %694 = icmp ult i8 %691, %693
  %695 = select i1 %694, i64 %646, i64 %661
  %696 = select i1 %694, i64 %661, i64 %645
  %697 = select i1 %694, i64 4, i64 0
  %698 = getelementptr inbounds nuw i8, ptr %654, i64 %697
  %699 = add i32 %649, -1
  %700 = load i32, ptr %698, align 4, !tbaa !25
  %701 = icmp ne i32 %699, 0
  %702 = icmp ugt i32 %700, %97
  %703 = select i1 %701, i1 %702, i1 false
  br i1 %703, label %643, label %704, !llvm.loop !146

704:                                              ; preds = %689, %667, %684, %621, %590, %616
  %705 = phi i32 [ %593, %616 ], [ %585, %590 ], [ %623, %621 ], [ %686, %689 ], [ %679, %667 ], [ %686, %684 ]
  %706 = phi i32 [ %594, %616 ], [ %580, %590 ], [ %622, %621 ], [ %687, %689 ], [ %674, %667 ], [ %687, %684 ]
  %707 = add i32 %706, -8
  store i32 %707, ptr %12, align 4, !tbaa !19
  br label %708

708:                                              ; preds = %228, %347, %468, %704
  %709 = phi i32 [ %705, %704 ], [ 1, %228 ], [ %351, %347 ], [ %472, %468 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %710

710:                                              ; preds = %8, %708
  %711 = phi i32 [ %709, %708 ], [ 0, %8 ]
  ret i32 %711
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_dictMatchState_5(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %709, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %13, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 5, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !20

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !18
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %43 = load i32, ptr %42, align 4, !tbaa !109
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  %46 = load i64, ptr %3, align 1
  %47 = mul i64 %46, -3523014627271114752
  %48 = sub i32 64, %43
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = getelementptr inbounds nuw i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %56 = load i32, ptr %55, align 4, !tbaa !111
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %61 = load i32, ptr %60, align 8, !tbaa !22
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds nuw i8, ptr %37, i64 %62
  %64 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %65 = load i32, ptr %38, align 4, !tbaa !113
  %66 = getelementptr i8, ptr %1, i64 28
  %67 = load i32, ptr %66, align 4, !tbaa !107
  %68 = getelementptr i8, ptr %1, i64 40
  %69 = load i32, ptr %68, align 8, !tbaa !114
  %70 = shl nuw i32 1, %65
  %71 = sub i32 %36, %67
  %72 = icmp ugt i32 %71, %70
  %73 = sub i32 %36, %70
  %74 = icmp eq i32 %69, 0
  %75 = select i1 %74, i1 %72, i1 false
  %76 = select i1 %75, i32 %73, i32 %67
  %77 = tail call i32 @llvm.umax.i32(i32 %76, i32 1)
  %78 = and i32 %36, %59
  %79 = shl nuw i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds nuw i32, ptr %54, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %83 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %85 = load i32, ptr %84, align 4, !tbaa !115
  %86 = shl nuw i32 1, %85
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %88 = load ptr, ptr %87, align 8, !tbaa !143
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %90 = load ptr, ptr %89, align 8, !tbaa !18
  %91 = load ptr, ptr %88, align 8, !tbaa !144
  %92 = ptrtoint ptr %91 to i64
  %93 = ptrtoint ptr %90 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds nuw i8, ptr %88, i64 28
  %97 = load i32, ptr %96, align 4, !tbaa !107
  %98 = sub i32 %76, %95
  %99 = getelementptr inbounds nuw i8, ptr %88, i64 264
  %100 = load i32, ptr %99, align 4, !tbaa !109
  %101 = getelementptr inbounds nuw i8, ptr %88, i64 260
  %102 = load i32, ptr %101, align 4, !tbaa !111
  %103 = add i32 %102, -1
  %104 = shl nsw i32 -1, %103
  %105 = xor i32 %104, -1
  %106 = sub i32 %95, %97
  %107 = icmp ugt i32 %106, %105
  %108 = sub i32 %95, %105
  %109 = select i1 %107, i32 %108, i32 %97
  %110 = add i32 %7, -1
  %111 = zext i32 %110 to i64
  %112 = icmp ult i32 %6, -3
  %113 = trunc i64 %46 to i32
  br i1 %112, label %114, label %478

114:                                              ; preds = %35
  %115 = sub i32 %36, %61
  %116 = zext i32 %98 to i64
  %117 = sub nsw i64 0, %116
  %118 = getelementptr i8, ptr %90, i64 %117
  %119 = add i32 %97, %98
  %120 = sub i32 %36, %119
  %121 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %122 = getelementptr inbounds i8, ptr %4, i64 -7
  %123 = icmp ult ptr %121, %122
  %124 = getelementptr inbounds i8, ptr %4, i64 -3
  %125 = getelementptr inbounds i8, ptr %4, i64 -1
  %126 = ptrtoint ptr %121 to i64
  %127 = zext i32 %6 to i64
  %128 = icmp eq i32 %6, 3
  br i1 %128, label %129, label %132

129:                                              ; preds = %114
  %130 = load i32, ptr %5, align 4, !tbaa !25
  %131 = add i32 %130, -1
  br label %135

132:                                              ; preds = %114
  %133 = getelementptr inbounds nuw i32, ptr %5, i64 %127
  %134 = load i32, ptr %133, align 4, !tbaa !25
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi i32 [ %131, %129 ], [ %134, %132 ]
  %137 = sub i32 %36, %136
  %138 = add i32 %136, -1
  %139 = icmp ult i32 %138, %115
  br i1 %139, label %140, label %211

140:                                              ; preds = %135
  %141 = icmp uge i32 %137, %76
  %142 = zext i32 %136 to i64
  %143 = sub nsw i64 0, %142
  %144 = getelementptr inbounds i8, ptr %3, i64 %143
  %145 = load i32, ptr %144, align 1, !tbaa !25
  %146 = icmp eq i32 %145, %113
  %147 = and i1 %141, %146
  br i1 %147, label %148, label %236

148:                                              ; preds = %140
  %149 = getelementptr inbounds i8, ptr %121, i64 %143
  br i1 %123, label %150, label %175

150:                                              ; preds = %148
  %151 = load i64, ptr %149, align 1, !tbaa !30
  %152 = load i64, ptr %121, align 1, !tbaa !30
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = xor i64 %152, %151
  %156 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %155, i1 true)
  %157 = lshr i64 %156, 3
  br label %224

158:                                              ; preds = %150, %164
  %159 = phi ptr [ %162, %164 ], [ %149, %150 ]
  %160 = phi ptr [ %161, %164 ], [ %121, %150 ]
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 8
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 8
  %163 = icmp ult ptr %161, %122
  br i1 %163, label %164, label %175

164:                                              ; preds = %158
  %165 = load i64, ptr %162, align 1, !tbaa !30
  %166 = load i64, ptr %161, align 1, !tbaa !30
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %158, label %168

168:                                              ; preds = %164
  %169 = xor i64 %166, %165
  %170 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %169, i1 true)
  %171 = lshr i64 %170, 3
  %172 = getelementptr inbounds nuw i8, ptr %161, i64 %171
  %173 = ptrtoint ptr %172 to i64
  %174 = sub i64 %173, %126
  br label %224

175:                                              ; preds = %158, %148
  %176 = phi ptr [ %149, %148 ], [ %162, %158 ]
  %177 = phi ptr [ %121, %148 ], [ %161, %158 ]
  %178 = icmp ult ptr %177, %124
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i32, ptr %176, align 1, !tbaa !25
  %181 = load i32, ptr %177, align 1, !tbaa !25
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = getelementptr inbounds nuw i8, ptr %177, i64 4
  %185 = getelementptr inbounds nuw i8, ptr %176, i64 4
  br label %186

186:                                              ; preds = %183, %179, %175
  %187 = phi ptr [ %185, %183 ], [ %176, %179 ], [ %176, %175 ]
  %188 = phi ptr [ %184, %183 ], [ %177, %179 ], [ %177, %175 ]
  %189 = icmp ult ptr %188, %125
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load i16, ptr %187, align 1, !tbaa !116
  %192 = load i16, ptr %188, align 1, !tbaa !116
  %193 = icmp eq i16 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = getelementptr inbounds nuw i8, ptr %188, i64 2
  %196 = getelementptr inbounds nuw i8, ptr %187, i64 2
  br label %197

197:                                              ; preds = %194, %190, %186
  %198 = phi ptr [ %196, %194 ], [ %187, %190 ], [ %187, %186 ]
  %199 = phi ptr [ %195, %194 ], [ %188, %190 ], [ %188, %186 ]
  %200 = icmp ult ptr %199, %4
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load i8, ptr %198, align 1, !tbaa !42
  %203 = load i8, ptr %199, align 1, !tbaa !42
  %204 = icmp eq i8 %202, %203
  %205 = zext i1 %204 to i64
  %206 = getelementptr inbounds nuw i8, ptr %199, i64 %205
  br label %207

207:                                              ; preds = %201, %197
  %208 = phi ptr [ %199, %197 ], [ %206, %201 ]
  %209 = ptrtoint ptr %208 to i64
  %210 = sub i64 %209, %126
  br label %224

211:                                              ; preds = %135
  %212 = zext i32 %137 to i64
  %213 = getelementptr i8, ptr %118, i64 %212
  %214 = icmp uge i32 %138, %120
  %215 = sub i32 %137, %61
  %216 = icmp ugt i32 %215, -4
  %217 = select i1 %214, i1 true, i1 %216
  br i1 %217, label %236, label %218

218:                                              ; preds = %211
  %219 = load i32, ptr %213, align 1, !tbaa !25
  %220 = icmp eq i32 %219, %113
  br i1 %220, label %221, label %236

221:                                              ; preds = %218
  %222 = getelementptr inbounds nuw i8, ptr %213, i64 4
  %223 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %222, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  br label %224

224:                                              ; preds = %207, %168, %154, %221
  %225 = phi i64 [ %223, %221 ], [ %210, %207 ], [ %157, %154 ], [ %174, %168 ]
  %226 = trunc i64 %225 to i32
  %227 = add i32 %226, 4
  %228 = icmp ult i32 %110, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  %230 = zext i32 %227 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %227, ptr %231, align 4, !tbaa !44
  %232 = icmp ule i32 %227, %41
  %233 = getelementptr inbounds nuw i8, ptr %3, i64 %230
  %234 = icmp ne ptr %233, %4
  %235 = and i1 %232, %234
  br i1 %235, label %236, label %707

236:                                              ; preds = %211, %218, %140, %224, %229
  %237 = phi i32 [ 1, %229 ], [ 0, %224 ], [ 0, %140 ], [ 0, %218 ], [ 0, %211 ]
  %238 = phi i64 [ %230, %229 ], [ %111, %224 ], [ %111, %140 ], [ %111, %218 ], [ %111, %211 ]
  %239 = add nuw nsw i64 %127, 1
  %240 = icmp eq i64 %239, 3
  br i1 %240, label %244, label %241

241:                                              ; preds = %236
  %242 = getelementptr inbounds nuw i32, ptr %5, i64 %239
  %243 = load i32, ptr %242, align 4, !tbaa !25
  br label %247

244:                                              ; preds = %236
  %245 = load i32, ptr %5, align 4, !tbaa !25
  %246 = add i32 %245, -1
  br label %247

247:                                              ; preds = %244, %241
  %248 = phi i32 [ %246, %244 ], [ %243, %241 ]
  %249 = sub i32 %36, %248
  %250 = add i32 %248, -1
  %251 = icmp ult i32 %250, %115
  br i1 %251, label %268, label %252

252:                                              ; preds = %247
  %253 = zext i32 %249 to i64
  %254 = getelementptr i8, ptr %118, i64 %253
  %255 = icmp uge i32 %250, %120
  %256 = sub i32 %249, %61
  %257 = icmp ugt i32 %256, -4
  %258 = select i1 %255, i1 true, i1 %257
  br i1 %258, label %344, label %259

259:                                              ; preds = %252
  %260 = load i32, ptr %3, align 1, !tbaa !25
  %261 = load i32, ptr %254, align 1, !tbaa !25
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %344

263:                                              ; preds = %259
  %264 = getelementptr inbounds nuw i8, ptr %254, i64 4
  %265 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %264, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %266 = trunc i64 %265 to i32
  %267 = add i32 %266, 4
  br label %344

268:                                              ; preds = %247
  %269 = icmp uge i32 %249, %76
  %270 = load i32, ptr %3, align 1, !tbaa !25
  %271 = zext i32 %248 to i64
  %272 = sub nsw i64 0, %271
  %273 = getelementptr inbounds i8, ptr %3, i64 %272
  %274 = load i32, ptr %273, align 1, !tbaa !25
  %275 = icmp eq i32 %270, %274
  %276 = and i1 %269, %275
  br i1 %276, label %277, label %344

277:                                              ; preds = %268
  %278 = getelementptr inbounds i8, ptr %121, i64 %272
  br i1 %123, label %279, label %293

279:                                              ; preds = %277
  %280 = load i64, ptr %278, align 1, !tbaa !30
  %281 = load i64, ptr %121, align 1, !tbaa !30
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %287, label %283

283:                                              ; preds = %279
  %284 = xor i64 %281, %280
  %285 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %284, i1 true)
  %286 = lshr i64 %285, 3
  br label %340

287:                                              ; preds = %279, %329
  %288 = phi ptr [ %291, %329 ], [ %278, %279 ]
  %289 = phi ptr [ %290, %329 ], [ %121, %279 ]
  %290 = getelementptr inbounds nuw i8, ptr %289, i64 8
  %291 = getelementptr inbounds nuw i8, ptr %288, i64 8
  %292 = icmp ult ptr %290, %122
  br i1 %292, label %329, label %293

293:                                              ; preds = %287, %277
  %294 = phi ptr [ %278, %277 ], [ %291, %287 ]
  %295 = phi ptr [ %121, %277 ], [ %290, %287 ]
  %296 = icmp ult ptr %295, %124
  br i1 %296, label %297, label %304

297:                                              ; preds = %293
  %298 = load i32, ptr %294, align 1, !tbaa !25
  %299 = load i32, ptr %295, align 1, !tbaa !25
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %297
  %302 = getelementptr inbounds nuw i8, ptr %295, i64 4
  %303 = getelementptr inbounds nuw i8, ptr %294, i64 4
  br label %304

304:                                              ; preds = %301, %297, %293
  %305 = phi ptr [ %303, %301 ], [ %294, %297 ], [ %294, %293 ]
  %306 = phi ptr [ %302, %301 ], [ %295, %297 ], [ %295, %293 ]
  %307 = icmp ult ptr %306, %125
  br i1 %307, label %308, label %315

308:                                              ; preds = %304
  %309 = load i16, ptr %305, align 1, !tbaa !116
  %310 = load i16, ptr %306, align 1, !tbaa !116
  %311 = icmp eq i16 %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = getelementptr inbounds nuw i8, ptr %306, i64 2
  %314 = getelementptr inbounds nuw i8, ptr %305, i64 2
  br label %315

315:                                              ; preds = %312, %308, %304
  %316 = phi ptr [ %314, %312 ], [ %305, %308 ], [ %305, %304 ]
  %317 = phi ptr [ %313, %312 ], [ %306, %308 ], [ %306, %304 ]
  %318 = icmp ult ptr %317, %4
  br i1 %318, label %319, label %325

319:                                              ; preds = %315
  %320 = load i8, ptr %316, align 1, !tbaa !42
  %321 = load i8, ptr %317, align 1, !tbaa !42
  %322 = icmp eq i8 %320, %321
  %323 = zext i1 %322 to i64
  %324 = getelementptr inbounds nuw i8, ptr %317, i64 %323
  br label %325

325:                                              ; preds = %319, %315
  %326 = phi ptr [ %317, %315 ], [ %324, %319 ]
  %327 = ptrtoint ptr %326 to i64
  %328 = sub i64 %327, %126
  br label %340

329:                                              ; preds = %287
  %330 = load i64, ptr %291, align 1, !tbaa !30
  %331 = load i64, ptr %290, align 1, !tbaa !30
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %287, label %333

333:                                              ; preds = %329
  %334 = xor i64 %331, %330
  %335 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %334, i1 true)
  %336 = lshr i64 %335, 3
  %337 = getelementptr inbounds nuw i8, ptr %290, i64 %336
  %338 = ptrtoint ptr %337 to i64
  %339 = sub i64 %338, %126
  br label %340

340:                                              ; preds = %333, %325, %283
  %341 = phi i64 [ %328, %325 ], [ %286, %283 ], [ %339, %333 ]
  %342 = trunc i64 %341 to i32
  %343 = add i32 %342, 4
  br label %344

344:                                              ; preds = %340, %268, %263, %259, %252
  %345 = phi i32 [ %343, %340 ], [ 0, %268 ], [ %267, %263 ], [ 0, %259 ], [ 0, %252 ]
  %346 = zext i32 %345 to i64
  %347 = icmp samesign ult i64 %238, %346
  br i1 %347, label %348, label %357

348:                                              ; preds = %344
  %349 = zext nneg i32 %237 to i64
  %350 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %349
  store i32 2, ptr %350, align 4, !tbaa !46
  %351 = getelementptr inbounds nuw i8, ptr %350, i64 4
  store i32 %345, ptr %351, align 4, !tbaa !44
  %352 = add nuw nsw i32 %237, 1
  %353 = icmp ule i32 %345, %41
  %354 = getelementptr inbounds nuw i8, ptr %3, i64 %346
  %355 = icmp ne ptr %354, %4
  %356 = and i1 %353, %355
  br i1 %356, label %357, label %707

357:                                              ; preds = %348, %344
  %358 = phi i32 [ %352, %348 ], [ %237, %344 ]
  %359 = phi i64 [ %346, %348 ], [ %238, %344 ]
  %360 = add nuw nsw i64 %127, 2
  %361 = icmp eq i64 %360, 3
  br i1 %361, label %365, label %362

362:                                              ; preds = %357
  %363 = getelementptr inbounds nuw i32, ptr %5, i64 %360
  %364 = load i32, ptr %363, align 4, !tbaa !25
  br label %368

365:                                              ; preds = %357
  %366 = load i32, ptr %5, align 4, !tbaa !25
  %367 = add i32 %366, -1
  br label %368

368:                                              ; preds = %365, %362
  %369 = phi i32 [ %367, %365 ], [ %364, %362 ]
  %370 = sub i32 %36, %369
  %371 = add i32 %369, -1
  %372 = icmp ult i32 %371, %115
  br i1 %372, label %389, label %373

373:                                              ; preds = %368
  %374 = zext i32 %370 to i64
  %375 = getelementptr i8, ptr %118, i64 %374
  %376 = icmp uge i32 %371, %120
  %377 = sub i32 %370, %61
  %378 = icmp ugt i32 %377, -4
  %379 = select i1 %376, i1 true, i1 %378
  br i1 %379, label %465, label %380

380:                                              ; preds = %373
  %381 = load i32, ptr %3, align 1, !tbaa !25
  %382 = load i32, ptr %375, align 1, !tbaa !25
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %465

384:                                              ; preds = %380
  %385 = getelementptr inbounds nuw i8, ptr %375, i64 4
  %386 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %385, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %387 = trunc i64 %386 to i32
  %388 = add i32 %387, 4
  br label %465

389:                                              ; preds = %368
  %390 = icmp uge i32 %370, %76
  %391 = load i32, ptr %3, align 1, !tbaa !25
  %392 = zext i32 %369 to i64
  %393 = sub nsw i64 0, %392
  %394 = getelementptr inbounds i8, ptr %3, i64 %393
  %395 = load i32, ptr %394, align 1, !tbaa !25
  %396 = icmp eq i32 %391, %395
  %397 = and i1 %390, %396
  br i1 %397, label %398, label %465

398:                                              ; preds = %389
  %399 = getelementptr inbounds i8, ptr %121, i64 %393
  br i1 %123, label %400, label %414

400:                                              ; preds = %398
  %401 = load i64, ptr %399, align 1, !tbaa !30
  %402 = load i64, ptr %121, align 1, !tbaa !30
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %408, label %404

404:                                              ; preds = %400
  %405 = xor i64 %402, %401
  %406 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %405, i1 true)
  %407 = lshr i64 %406, 3
  br label %461

408:                                              ; preds = %400, %450
  %409 = phi ptr [ %412, %450 ], [ %399, %400 ]
  %410 = phi ptr [ %411, %450 ], [ %121, %400 ]
  %411 = getelementptr inbounds nuw i8, ptr %410, i64 8
  %412 = getelementptr inbounds nuw i8, ptr %409, i64 8
  %413 = icmp ult ptr %411, %122
  br i1 %413, label %450, label %414

414:                                              ; preds = %408, %398
  %415 = phi ptr [ %399, %398 ], [ %412, %408 ]
  %416 = phi ptr [ %121, %398 ], [ %411, %408 ]
  %417 = icmp ult ptr %416, %124
  br i1 %417, label %418, label %425

418:                                              ; preds = %414
  %419 = load i32, ptr %415, align 1, !tbaa !25
  %420 = load i32, ptr %416, align 1, !tbaa !25
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %418
  %423 = getelementptr inbounds nuw i8, ptr %416, i64 4
  %424 = getelementptr inbounds nuw i8, ptr %415, i64 4
  br label %425

425:                                              ; preds = %422, %418, %414
  %426 = phi ptr [ %424, %422 ], [ %415, %418 ], [ %415, %414 ]
  %427 = phi ptr [ %423, %422 ], [ %416, %418 ], [ %416, %414 ]
  %428 = icmp ult ptr %427, %125
  br i1 %428, label %429, label %436

429:                                              ; preds = %425
  %430 = load i16, ptr %426, align 1, !tbaa !116
  %431 = load i16, ptr %427, align 1, !tbaa !116
  %432 = icmp eq i16 %430, %431
  br i1 %432, label %433, label %436

433:                                              ; preds = %429
  %434 = getelementptr inbounds nuw i8, ptr %427, i64 2
  %435 = getelementptr inbounds nuw i8, ptr %426, i64 2
  br label %436

436:                                              ; preds = %433, %429, %425
  %437 = phi ptr [ %435, %433 ], [ %426, %429 ], [ %426, %425 ]
  %438 = phi ptr [ %434, %433 ], [ %427, %429 ], [ %427, %425 ]
  %439 = icmp ult ptr %438, %4
  br i1 %439, label %440, label %446

440:                                              ; preds = %436
  %441 = load i8, ptr %437, align 1, !tbaa !42
  %442 = load i8, ptr %438, align 1, !tbaa !42
  %443 = icmp eq i8 %441, %442
  %444 = zext i1 %443 to i64
  %445 = getelementptr inbounds nuw i8, ptr %438, i64 %444
  br label %446

446:                                              ; preds = %440, %436
  %447 = phi ptr [ %438, %436 ], [ %445, %440 ]
  %448 = ptrtoint ptr %447 to i64
  %449 = sub i64 %448, %126
  br label %461

450:                                              ; preds = %408
  %451 = load i64, ptr %412, align 1, !tbaa !30
  %452 = load i64, ptr %411, align 1, !tbaa !30
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %408, label %454

454:                                              ; preds = %450
  %455 = xor i64 %452, %451
  %456 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %455, i1 true)
  %457 = lshr i64 %456, 3
  %458 = getelementptr inbounds nuw i8, ptr %411, i64 %457
  %459 = ptrtoint ptr %458 to i64
  %460 = sub i64 %459, %126
  br label %461

461:                                              ; preds = %454, %446, %404
  %462 = phi i64 [ %449, %446 ], [ %407, %404 ], [ %460, %454 ]
  %463 = trunc i64 %462 to i32
  %464 = add i32 %463, 4
  br label %465

465:                                              ; preds = %461, %389, %384, %380, %373
  %466 = phi i32 [ %464, %461 ], [ 0, %389 ], [ %388, %384 ], [ 0, %380 ], [ 0, %373 ]
  %467 = zext i32 %466 to i64
  %468 = icmp samesign ult i64 %359, %467
  br i1 %468, label %469, label %478

469:                                              ; preds = %465
  %470 = zext nneg i32 %358 to i64
  %471 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %470
  store i32 3, ptr %471, align 4, !tbaa !46
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 4
  store i32 %466, ptr %472, align 4, !tbaa !44
  %473 = add nuw nsw i32 %358, 1
  %474 = icmp ule i32 %466, %41
  %475 = getelementptr inbounds nuw i8, ptr %3, i64 %467
  %476 = icmp ne ptr %475, %4
  %477 = and i1 %474, %476
  br i1 %477, label %478, label %707

478:                                              ; preds = %465, %469, %35
  %479 = phi i64 [ %111, %35 ], [ %467, %469 ], [ %359, %465 ]
  %480 = phi i32 [ 0, %35 ], [ %473, %469 ], [ %358, %465 ]
  store i32 %36, ptr %51, align 4, !tbaa !25
  %481 = icmp ult i32 %52, %77
  br i1 %481, label %482, label %483

482:                                              ; preds = %478
  store i32 0, ptr %82, align 4, !tbaa !25
  store i32 0, ptr %81, align 4, !tbaa !25
  br label %622

483:                                              ; preds = %478
  %484 = getelementptr inbounds i8, ptr %4, i64 -7
  %485 = getelementptr inbounds i8, ptr %4, i64 -3
  %486 = getelementptr inbounds i8, ptr %4, i64 -1
  %487 = add i32 %36, 3
  br label %488

488:                                              ; preds = %483, %606
  %489 = phi i32 [ %52, %483 ], [ %612, %606 ]
  %490 = phi i64 [ 0, %483 ], [ %610, %606 ]
  %491 = phi i64 [ 0, %483 ], [ %609, %606 ]
  %492 = phi ptr [ %81, %483 ], [ %608, %606 ]
  %493 = phi ptr [ %82, %483 ], [ %607, %606 ]
  %494 = phi i32 [ %83, %483 ], [ %595, %606 ]
  %495 = phi i32 [ %480, %483 ], [ %594, %606 ]
  %496 = phi i32 [ %86, %483 ], [ %613, %606 ]
  %497 = phi i64 [ %479, %483 ], [ %593, %606 ]
  %498 = and i32 %489, %59
  %499 = shl nuw i32 %498, 1
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds nuw i32, ptr %54, i64 %500
  %502 = tail call i64 @llvm.umin.i64(i64 %490, i64 %491)
  %503 = zext i32 %489 to i64
  %504 = getelementptr inbounds nuw i8, ptr %37, i64 %503
  %505 = getelementptr inbounds nuw i8, ptr %3, i64 %502
  %506 = getelementptr inbounds nuw i8, ptr %504, i64 %502
  %507 = icmp ult ptr %505, %484
  br i1 %507, label %508, label %534

508:                                              ; preds = %488
  %509 = load i64, ptr %506, align 1, !tbaa !30
  %510 = load i64, ptr %505, align 1, !tbaa !30
  %511 = icmp eq i64 %509, %510
  br i1 %511, label %516, label %512

512:                                              ; preds = %508
  %513 = xor i64 %510, %509
  %514 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %513, i1 true)
  %515 = lshr i64 %514, 3
  br label %571

516:                                              ; preds = %508, %522
  %517 = phi ptr [ %520, %522 ], [ %506, %508 ]
  %518 = phi ptr [ %519, %522 ], [ %505, %508 ]
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 8
  %520 = getelementptr inbounds nuw i8, ptr %517, i64 8
  %521 = icmp ult ptr %519, %484
  br i1 %521, label %522, label %534

522:                                              ; preds = %516
  %523 = load i64, ptr %520, align 1, !tbaa !30
  %524 = load i64, ptr %519, align 1, !tbaa !30
  %525 = icmp eq i64 %523, %524
  br i1 %525, label %516, label %526

526:                                              ; preds = %522
  %527 = xor i64 %524, %523
  %528 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %527, i1 true)
  %529 = lshr i64 %528, 3
  %530 = getelementptr inbounds nuw i8, ptr %519, i64 %529
  %531 = ptrtoint ptr %530 to i64
  %532 = ptrtoint ptr %505 to i64
  %533 = sub i64 %531, %532
  br label %571

534:                                              ; preds = %516, %488
  %535 = phi ptr [ %506, %488 ], [ %520, %516 ]
  %536 = phi ptr [ %505, %488 ], [ %519, %516 ]
  %537 = icmp ult ptr %536, %485
  br i1 %537, label %538, label %545

538:                                              ; preds = %534
  %539 = load i32, ptr %535, align 1, !tbaa !25
  %540 = load i32, ptr %536, align 1, !tbaa !25
  %541 = icmp eq i32 %539, %540
  br i1 %541, label %542, label %545

542:                                              ; preds = %538
  %543 = getelementptr inbounds nuw i8, ptr %536, i64 4
  %544 = getelementptr inbounds nuw i8, ptr %535, i64 4
  br label %545

545:                                              ; preds = %542, %538, %534
  %546 = phi ptr [ %544, %542 ], [ %535, %538 ], [ %535, %534 ]
  %547 = phi ptr [ %543, %542 ], [ %536, %538 ], [ %536, %534 ]
  %548 = icmp ult ptr %547, %486
  br i1 %548, label %549, label %556

549:                                              ; preds = %545
  %550 = load i16, ptr %546, align 1, !tbaa !116
  %551 = load i16, ptr %547, align 1, !tbaa !116
  %552 = icmp eq i16 %550, %551
  br i1 %552, label %553, label %556

553:                                              ; preds = %549
  %554 = getelementptr inbounds nuw i8, ptr %547, i64 2
  %555 = getelementptr inbounds nuw i8, ptr %546, i64 2
  br label %556

556:                                              ; preds = %553, %549, %545
  %557 = phi ptr [ %555, %553 ], [ %546, %549 ], [ %546, %545 ]
  %558 = phi ptr [ %554, %553 ], [ %547, %549 ], [ %547, %545 ]
  %559 = icmp ult ptr %558, %4
  br i1 %559, label %560, label %566

560:                                              ; preds = %556
  %561 = load i8, ptr %557, align 1, !tbaa !42
  %562 = load i8, ptr %558, align 1, !tbaa !42
  %563 = icmp eq i8 %561, %562
  %564 = zext i1 %563 to i64
  %565 = getelementptr inbounds nuw i8, ptr %558, i64 %564
  br label %566

566:                                              ; preds = %560, %556
  %567 = phi ptr [ %558, %556 ], [ %565, %560 ]
  %568 = ptrtoint ptr %567 to i64
  %569 = ptrtoint ptr %505 to i64
  %570 = sub i64 %568, %569
  br label %571

571:                                              ; preds = %512, %526, %566
  %572 = phi i64 [ %570, %566 ], [ %515, %512 ], [ %533, %526 ]
  %573 = add i64 %572, %502
  %574 = icmp ugt i64 %573, %497
  br i1 %574, label %575, label %592

575:                                              ; preds = %571
  %576 = sub i32 %494, %489
  %577 = zext i32 %576 to i64
  %578 = icmp ugt i64 %573, %577
  %579 = trunc i64 %573 to i32
  %580 = add i32 %489, %579
  %581 = select i1 %578, i32 %580, i32 %494
  %582 = sub i32 %487, %489
  %583 = zext i32 %495 to i64
  %584 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %583
  store i32 %582, ptr %584, align 4, !tbaa !46
  %585 = getelementptr inbounds nuw i8, ptr %584, i64 4
  store i32 %579, ptr %585, align 4, !tbaa !44
  %586 = add i32 %495, 1
  %587 = icmp ugt i64 %573, 4096
  %588 = getelementptr inbounds nuw i8, ptr %3, i64 %573
  %589 = icmp eq ptr %588, %4
  %590 = or i1 %587, %589
  br i1 %590, label %591, label %592

591:                                              ; preds = %575
  store i32 0, ptr %493, align 4, !tbaa !25
  store i32 0, ptr %492, align 4, !tbaa !25
  br label %703

592:                                              ; preds = %575, %571
  %593 = phi i64 [ %573, %575 ], [ %497, %571 ]
  %594 = phi i32 [ %586, %575 ], [ %495, %571 ]
  %595 = phi i32 [ %581, %575 ], [ %494, %571 ]
  %596 = getelementptr inbounds nuw i8, ptr %504, i64 %573
  %597 = load i8, ptr %596, align 1, !tbaa !42
  %598 = getelementptr inbounds nuw i8, ptr %3, i64 %573
  %599 = load i8, ptr %598, align 1, !tbaa !42
  %600 = icmp ult i8 %597, %599
  %601 = icmp ugt i32 %489, %64
  br i1 %600, label %602, label %605

602:                                              ; preds = %592
  store i32 %489, ptr %492, align 4, !tbaa !25
  br i1 %601, label %603, label %617

603:                                              ; preds = %602
  %604 = getelementptr inbounds nuw i8, ptr %501, i64 4
  br label %606

605:                                              ; preds = %592
  store i32 %489, ptr %493, align 4, !tbaa !25
  br i1 %601, label %606, label %617

606:                                              ; preds = %605, %603
  %607 = phi ptr [ %493, %603 ], [ %501, %605 ]
  %608 = phi ptr [ %604, %603 ], [ %492, %605 ]
  %609 = phi i64 [ %491, %603 ], [ %573, %605 ]
  %610 = phi i64 [ %573, %603 ], [ %490, %605 ]
  %611 = phi ptr [ %604, %603 ], [ %501, %605 ]
  %612 = load i32, ptr %611, align 4, !tbaa !25
  %613 = add i32 %496, -1
  %614 = icmp ne i32 %613, 0
  %615 = icmp uge i32 %612, %77
  %616 = select i1 %614, i1 %615, i1 false
  br i1 %616, label %488, label %617, !llvm.loop !140

617:                                              ; preds = %606, %602, %605
  %618 = phi i32 [ %613, %606 ], [ %496, %602 ], [ %496, %605 ]
  %619 = phi ptr [ %607, %606 ], [ %493, %602 ], [ %9, %605 ]
  %620 = phi ptr [ %608, %606 ], [ %9, %602 ], [ %492, %605 ]
  store i32 0, ptr %619, align 4, !tbaa !25
  store i32 0, ptr %620, align 4, !tbaa !25
  %621 = icmp eq i32 %618, 0
  br i1 %621, label %703, label %622

622:                                              ; preds = %482, %617
  %623 = phi i32 [ %83, %482 ], [ %595, %617 ]
  %624 = phi i32 [ %480, %482 ], [ %594, %617 ]
  %625 = phi i64 [ %479, %482 ], [ %593, %617 ]
  %626 = phi i32 [ %86, %482 ], [ %618, %617 ]
  %627 = sub i32 64, %100
  %628 = zext nneg i32 %627 to i64
  %629 = lshr i64 %47, %628
  %630 = getelementptr inbounds nuw i8, ptr %88, i64 112
  %631 = load ptr, ptr %630, align 8, !tbaa !108
  %632 = getelementptr inbounds nuw i32, ptr %631, i64 %629
  %633 = getelementptr inbounds nuw i8, ptr %88, i64 128
  %634 = load ptr, ptr %633, align 8, !tbaa !110
  %635 = load i32, ptr %632, align 4, !tbaa !25
  %636 = icmp ugt i32 %635, %97
  br i1 %636, label %637, label %703

637:                                              ; preds = %622
  %638 = and i64 %94, 4294967295
  %639 = zext i32 %98 to i64
  %640 = getelementptr inbounds nuw i8, ptr %37, i64 %639
  %641 = add i32 %36, 3
  br label %642

642:                                              ; preds = %637, %688
  %643 = phi i32 [ %635, %637 ], [ %699, %688 ]
  %644 = phi i64 [ 0, %637 ], [ %695, %688 ]
  %645 = phi i64 [ 0, %637 ], [ %694, %688 ]
  %646 = phi i32 [ %623, %637 ], [ %686, %688 ]
  %647 = phi i32 [ %624, %637 ], [ %685, %688 ]
  %648 = phi i32 [ %626, %637 ], [ %698, %688 ]
  %649 = phi i64 [ %625, %637 ], [ %684, %688 ]
  %650 = and i32 %643, %105
  %651 = shl nuw i32 %650, 1
  %652 = zext i32 %651 to i64
  %653 = getelementptr inbounds nuw i32, ptr %634, i64 %652
  %654 = tail call i64 @llvm.umin.i64(i64 %644, i64 %645)
  %655 = zext i32 %643 to i64
  %656 = getelementptr inbounds nuw i8, ptr %90, i64 %655
  %657 = getelementptr inbounds nuw i8, ptr %3, i64 %654
  %658 = getelementptr inbounds nuw i8, ptr %656, i64 %654
  %659 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %657, ptr noundef nonnull %658, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %660 = add i64 %659, %654
  %661 = add i64 %660, %655
  %662 = icmp ult i64 %661, %638
  %663 = getelementptr inbounds nuw i8, ptr %640, i64 %655
  %664 = select i1 %662, ptr %656, ptr %663
  %665 = icmp ugt i64 %660, %649
  br i1 %665, label %666, label %683

666:                                              ; preds = %642
  %667 = add i32 %643, %98
  %668 = sub i32 %646, %667
  %669 = zext i32 %668 to i64
  %670 = icmp ugt i64 %660, %669
  %671 = trunc i64 %660 to i32
  %672 = add i32 %667, %671
  %673 = select i1 %670, i32 %672, i32 %646
  %674 = sub i32 %641, %667
  %675 = zext i32 %647 to i64
  %676 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %675
  store i32 %674, ptr %676, align 4, !tbaa !46
  %677 = getelementptr inbounds nuw i8, ptr %676, i64 4
  store i32 %671, ptr %677, align 4, !tbaa !44
  %678 = add i32 %647, 1
  %679 = icmp ugt i64 %660, 4096
  %680 = getelementptr inbounds nuw i8, ptr %3, i64 %660
  %681 = icmp eq ptr %680, %4
  %682 = or i1 %679, %681
  br i1 %682, label %703, label %683

683:                                              ; preds = %666, %642
  %684 = phi i64 [ %660, %666 ], [ %649, %642 ]
  %685 = phi i32 [ %678, %666 ], [ %647, %642 ]
  %686 = phi i32 [ %673, %666 ], [ %646, %642 ]
  %687 = icmp ugt i32 %643, %109
  br i1 %687, label %688, label %703

688:                                              ; preds = %683
  %689 = getelementptr inbounds nuw i8, ptr %664, i64 %660
  %690 = load i8, ptr %689, align 1, !tbaa !42
  %691 = getelementptr inbounds nuw i8, ptr %3, i64 %660
  %692 = load i8, ptr %691, align 1, !tbaa !42
  %693 = icmp ult i8 %690, %692
  %694 = select i1 %693, i64 %645, i64 %660
  %695 = select i1 %693, i64 %660, i64 %644
  %696 = select i1 %693, i64 4, i64 0
  %697 = getelementptr inbounds nuw i8, ptr %653, i64 %696
  %698 = add i32 %648, -1
  %699 = load i32, ptr %697, align 4, !tbaa !25
  %700 = icmp ne i32 %698, 0
  %701 = icmp ugt i32 %699, %97
  %702 = select i1 %700, i1 %701, i1 false
  br i1 %702, label %642, label %703, !llvm.loop !146

703:                                              ; preds = %688, %666, %683, %622, %591, %617
  %704 = phi i32 [ %594, %617 ], [ %586, %591 ], [ %624, %622 ], [ %685, %688 ], [ %678, %666 ], [ %685, %683 ]
  %705 = phi i32 [ %595, %617 ], [ %581, %591 ], [ %623, %622 ], [ %686, %688 ], [ %673, %666 ], [ %686, %683 ]
  %706 = add i32 %705, -8
  store i32 %706, ptr %12, align 4, !tbaa !19
  br label %707

707:                                              ; preds = %229, %348, %469, %703
  %708 = phi i32 [ %704, %703 ], [ 1, %229 ], [ %352, %348 ], [ %473, %469 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %709

709:                                              ; preds = %8, %707
  %710 = phi i32 [ %708, %707 ], [ 0, %8 ]
  ret i32 %710
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_dictMatchState_6(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %709, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %13, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 6, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !20

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !18
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %43 = load i32, ptr %42, align 4, !tbaa !109
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  %46 = load i64, ptr %3, align 1
  %47 = mul i64 %46, -3523014627193847808
  %48 = sub i32 64, %43
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = getelementptr inbounds nuw i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %56 = load i32, ptr %55, align 4, !tbaa !111
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %61 = load i32, ptr %60, align 8, !tbaa !22
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds nuw i8, ptr %37, i64 %62
  %64 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %65 = load i32, ptr %38, align 4, !tbaa !113
  %66 = getelementptr i8, ptr %1, i64 28
  %67 = load i32, ptr %66, align 4, !tbaa !107
  %68 = getelementptr i8, ptr %1, i64 40
  %69 = load i32, ptr %68, align 8, !tbaa !114
  %70 = shl nuw i32 1, %65
  %71 = sub i32 %36, %67
  %72 = icmp ugt i32 %71, %70
  %73 = sub i32 %36, %70
  %74 = icmp eq i32 %69, 0
  %75 = select i1 %74, i1 %72, i1 false
  %76 = select i1 %75, i32 %73, i32 %67
  %77 = tail call i32 @llvm.umax.i32(i32 %76, i32 1)
  %78 = and i32 %36, %59
  %79 = shl nuw i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds nuw i32, ptr %54, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %83 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %85 = load i32, ptr %84, align 4, !tbaa !115
  %86 = shl nuw i32 1, %85
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %88 = load ptr, ptr %87, align 8, !tbaa !143
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %90 = load ptr, ptr %89, align 8, !tbaa !18
  %91 = load ptr, ptr %88, align 8, !tbaa !144
  %92 = ptrtoint ptr %91 to i64
  %93 = ptrtoint ptr %90 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds nuw i8, ptr %88, i64 28
  %97 = load i32, ptr %96, align 4, !tbaa !107
  %98 = sub i32 %76, %95
  %99 = getelementptr inbounds nuw i8, ptr %88, i64 264
  %100 = load i32, ptr %99, align 4, !tbaa !109
  %101 = getelementptr inbounds nuw i8, ptr %88, i64 260
  %102 = load i32, ptr %101, align 4, !tbaa !111
  %103 = add i32 %102, -1
  %104 = shl nsw i32 -1, %103
  %105 = xor i32 %104, -1
  %106 = sub i32 %95, %97
  %107 = icmp ugt i32 %106, %105
  %108 = sub i32 %95, %105
  %109 = select i1 %107, i32 %108, i32 %97
  %110 = add i32 %7, -1
  %111 = zext i32 %110 to i64
  %112 = icmp ult i32 %6, -3
  %113 = trunc i64 %46 to i32
  br i1 %112, label %114, label %478

114:                                              ; preds = %35
  %115 = sub i32 %36, %61
  %116 = zext i32 %98 to i64
  %117 = sub nsw i64 0, %116
  %118 = getelementptr i8, ptr %90, i64 %117
  %119 = add i32 %97, %98
  %120 = sub i32 %36, %119
  %121 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %122 = getelementptr inbounds i8, ptr %4, i64 -7
  %123 = icmp ult ptr %121, %122
  %124 = getelementptr inbounds i8, ptr %4, i64 -3
  %125 = getelementptr inbounds i8, ptr %4, i64 -1
  %126 = ptrtoint ptr %121 to i64
  %127 = zext i32 %6 to i64
  %128 = icmp eq i32 %6, 3
  br i1 %128, label %129, label %132

129:                                              ; preds = %114
  %130 = load i32, ptr %5, align 4, !tbaa !25
  %131 = add i32 %130, -1
  br label %135

132:                                              ; preds = %114
  %133 = getelementptr inbounds nuw i32, ptr %5, i64 %127
  %134 = load i32, ptr %133, align 4, !tbaa !25
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi i32 [ %131, %129 ], [ %134, %132 ]
  %137 = sub i32 %36, %136
  %138 = add i32 %136, -1
  %139 = icmp ult i32 %138, %115
  br i1 %139, label %140, label %211

140:                                              ; preds = %135
  %141 = icmp uge i32 %137, %76
  %142 = zext i32 %136 to i64
  %143 = sub nsw i64 0, %142
  %144 = getelementptr inbounds i8, ptr %3, i64 %143
  %145 = load i32, ptr %144, align 1, !tbaa !25
  %146 = icmp eq i32 %145, %113
  %147 = and i1 %141, %146
  br i1 %147, label %148, label %236

148:                                              ; preds = %140
  %149 = getelementptr inbounds i8, ptr %121, i64 %143
  br i1 %123, label %150, label %175

150:                                              ; preds = %148
  %151 = load i64, ptr %149, align 1, !tbaa !30
  %152 = load i64, ptr %121, align 1, !tbaa !30
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = xor i64 %152, %151
  %156 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %155, i1 true)
  %157 = lshr i64 %156, 3
  br label %224

158:                                              ; preds = %150, %164
  %159 = phi ptr [ %162, %164 ], [ %149, %150 ]
  %160 = phi ptr [ %161, %164 ], [ %121, %150 ]
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 8
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 8
  %163 = icmp ult ptr %161, %122
  br i1 %163, label %164, label %175

164:                                              ; preds = %158
  %165 = load i64, ptr %162, align 1, !tbaa !30
  %166 = load i64, ptr %161, align 1, !tbaa !30
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %158, label %168

168:                                              ; preds = %164
  %169 = xor i64 %166, %165
  %170 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %169, i1 true)
  %171 = lshr i64 %170, 3
  %172 = getelementptr inbounds nuw i8, ptr %161, i64 %171
  %173 = ptrtoint ptr %172 to i64
  %174 = sub i64 %173, %126
  br label %224

175:                                              ; preds = %158, %148
  %176 = phi ptr [ %149, %148 ], [ %162, %158 ]
  %177 = phi ptr [ %121, %148 ], [ %161, %158 ]
  %178 = icmp ult ptr %177, %124
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i32, ptr %176, align 1, !tbaa !25
  %181 = load i32, ptr %177, align 1, !tbaa !25
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = getelementptr inbounds nuw i8, ptr %177, i64 4
  %185 = getelementptr inbounds nuw i8, ptr %176, i64 4
  br label %186

186:                                              ; preds = %183, %179, %175
  %187 = phi ptr [ %185, %183 ], [ %176, %179 ], [ %176, %175 ]
  %188 = phi ptr [ %184, %183 ], [ %177, %179 ], [ %177, %175 ]
  %189 = icmp ult ptr %188, %125
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load i16, ptr %187, align 1, !tbaa !116
  %192 = load i16, ptr %188, align 1, !tbaa !116
  %193 = icmp eq i16 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = getelementptr inbounds nuw i8, ptr %188, i64 2
  %196 = getelementptr inbounds nuw i8, ptr %187, i64 2
  br label %197

197:                                              ; preds = %194, %190, %186
  %198 = phi ptr [ %196, %194 ], [ %187, %190 ], [ %187, %186 ]
  %199 = phi ptr [ %195, %194 ], [ %188, %190 ], [ %188, %186 ]
  %200 = icmp ult ptr %199, %4
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load i8, ptr %198, align 1, !tbaa !42
  %203 = load i8, ptr %199, align 1, !tbaa !42
  %204 = icmp eq i8 %202, %203
  %205 = zext i1 %204 to i64
  %206 = getelementptr inbounds nuw i8, ptr %199, i64 %205
  br label %207

207:                                              ; preds = %201, %197
  %208 = phi ptr [ %199, %197 ], [ %206, %201 ]
  %209 = ptrtoint ptr %208 to i64
  %210 = sub i64 %209, %126
  br label %224

211:                                              ; preds = %135
  %212 = zext i32 %137 to i64
  %213 = getelementptr i8, ptr %118, i64 %212
  %214 = icmp uge i32 %138, %120
  %215 = sub i32 %137, %61
  %216 = icmp ugt i32 %215, -4
  %217 = select i1 %214, i1 true, i1 %216
  br i1 %217, label %236, label %218

218:                                              ; preds = %211
  %219 = load i32, ptr %213, align 1, !tbaa !25
  %220 = icmp eq i32 %219, %113
  br i1 %220, label %221, label %236

221:                                              ; preds = %218
  %222 = getelementptr inbounds nuw i8, ptr %213, i64 4
  %223 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %222, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  br label %224

224:                                              ; preds = %207, %168, %154, %221
  %225 = phi i64 [ %223, %221 ], [ %210, %207 ], [ %157, %154 ], [ %174, %168 ]
  %226 = trunc i64 %225 to i32
  %227 = add i32 %226, 4
  %228 = icmp ult i32 %110, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  %230 = zext i32 %227 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %227, ptr %231, align 4, !tbaa !44
  %232 = icmp ule i32 %227, %41
  %233 = getelementptr inbounds nuw i8, ptr %3, i64 %230
  %234 = icmp ne ptr %233, %4
  %235 = and i1 %232, %234
  br i1 %235, label %236, label %707

236:                                              ; preds = %211, %218, %140, %224, %229
  %237 = phi i32 [ 1, %229 ], [ 0, %224 ], [ 0, %140 ], [ 0, %218 ], [ 0, %211 ]
  %238 = phi i64 [ %230, %229 ], [ %111, %224 ], [ %111, %140 ], [ %111, %218 ], [ %111, %211 ]
  %239 = add nuw nsw i64 %127, 1
  %240 = icmp eq i64 %239, 3
  br i1 %240, label %244, label %241

241:                                              ; preds = %236
  %242 = getelementptr inbounds nuw i32, ptr %5, i64 %239
  %243 = load i32, ptr %242, align 4, !tbaa !25
  br label %247

244:                                              ; preds = %236
  %245 = load i32, ptr %5, align 4, !tbaa !25
  %246 = add i32 %245, -1
  br label %247

247:                                              ; preds = %244, %241
  %248 = phi i32 [ %246, %244 ], [ %243, %241 ]
  %249 = sub i32 %36, %248
  %250 = add i32 %248, -1
  %251 = icmp ult i32 %250, %115
  br i1 %251, label %268, label %252

252:                                              ; preds = %247
  %253 = zext i32 %249 to i64
  %254 = getelementptr i8, ptr %118, i64 %253
  %255 = icmp uge i32 %250, %120
  %256 = sub i32 %249, %61
  %257 = icmp ugt i32 %256, -4
  %258 = select i1 %255, i1 true, i1 %257
  br i1 %258, label %344, label %259

259:                                              ; preds = %252
  %260 = load i32, ptr %3, align 1, !tbaa !25
  %261 = load i32, ptr %254, align 1, !tbaa !25
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %344

263:                                              ; preds = %259
  %264 = getelementptr inbounds nuw i8, ptr %254, i64 4
  %265 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %264, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %266 = trunc i64 %265 to i32
  %267 = add i32 %266, 4
  br label %344

268:                                              ; preds = %247
  %269 = icmp uge i32 %249, %76
  %270 = load i32, ptr %3, align 1, !tbaa !25
  %271 = zext i32 %248 to i64
  %272 = sub nsw i64 0, %271
  %273 = getelementptr inbounds i8, ptr %3, i64 %272
  %274 = load i32, ptr %273, align 1, !tbaa !25
  %275 = icmp eq i32 %270, %274
  %276 = and i1 %269, %275
  br i1 %276, label %277, label %344

277:                                              ; preds = %268
  %278 = getelementptr inbounds i8, ptr %121, i64 %272
  br i1 %123, label %279, label %293

279:                                              ; preds = %277
  %280 = load i64, ptr %278, align 1, !tbaa !30
  %281 = load i64, ptr %121, align 1, !tbaa !30
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %287, label %283

283:                                              ; preds = %279
  %284 = xor i64 %281, %280
  %285 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %284, i1 true)
  %286 = lshr i64 %285, 3
  br label %340

287:                                              ; preds = %279, %329
  %288 = phi ptr [ %291, %329 ], [ %278, %279 ]
  %289 = phi ptr [ %290, %329 ], [ %121, %279 ]
  %290 = getelementptr inbounds nuw i8, ptr %289, i64 8
  %291 = getelementptr inbounds nuw i8, ptr %288, i64 8
  %292 = icmp ult ptr %290, %122
  br i1 %292, label %329, label %293

293:                                              ; preds = %287, %277
  %294 = phi ptr [ %278, %277 ], [ %291, %287 ]
  %295 = phi ptr [ %121, %277 ], [ %290, %287 ]
  %296 = icmp ult ptr %295, %124
  br i1 %296, label %297, label %304

297:                                              ; preds = %293
  %298 = load i32, ptr %294, align 1, !tbaa !25
  %299 = load i32, ptr %295, align 1, !tbaa !25
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %297
  %302 = getelementptr inbounds nuw i8, ptr %295, i64 4
  %303 = getelementptr inbounds nuw i8, ptr %294, i64 4
  br label %304

304:                                              ; preds = %301, %297, %293
  %305 = phi ptr [ %303, %301 ], [ %294, %297 ], [ %294, %293 ]
  %306 = phi ptr [ %302, %301 ], [ %295, %297 ], [ %295, %293 ]
  %307 = icmp ult ptr %306, %125
  br i1 %307, label %308, label %315

308:                                              ; preds = %304
  %309 = load i16, ptr %305, align 1, !tbaa !116
  %310 = load i16, ptr %306, align 1, !tbaa !116
  %311 = icmp eq i16 %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = getelementptr inbounds nuw i8, ptr %306, i64 2
  %314 = getelementptr inbounds nuw i8, ptr %305, i64 2
  br label %315

315:                                              ; preds = %312, %308, %304
  %316 = phi ptr [ %314, %312 ], [ %305, %308 ], [ %305, %304 ]
  %317 = phi ptr [ %313, %312 ], [ %306, %308 ], [ %306, %304 ]
  %318 = icmp ult ptr %317, %4
  br i1 %318, label %319, label %325

319:                                              ; preds = %315
  %320 = load i8, ptr %316, align 1, !tbaa !42
  %321 = load i8, ptr %317, align 1, !tbaa !42
  %322 = icmp eq i8 %320, %321
  %323 = zext i1 %322 to i64
  %324 = getelementptr inbounds nuw i8, ptr %317, i64 %323
  br label %325

325:                                              ; preds = %319, %315
  %326 = phi ptr [ %317, %315 ], [ %324, %319 ]
  %327 = ptrtoint ptr %326 to i64
  %328 = sub i64 %327, %126
  br label %340

329:                                              ; preds = %287
  %330 = load i64, ptr %291, align 1, !tbaa !30
  %331 = load i64, ptr %290, align 1, !tbaa !30
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %287, label %333

333:                                              ; preds = %329
  %334 = xor i64 %331, %330
  %335 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %334, i1 true)
  %336 = lshr i64 %335, 3
  %337 = getelementptr inbounds nuw i8, ptr %290, i64 %336
  %338 = ptrtoint ptr %337 to i64
  %339 = sub i64 %338, %126
  br label %340

340:                                              ; preds = %333, %325, %283
  %341 = phi i64 [ %328, %325 ], [ %286, %283 ], [ %339, %333 ]
  %342 = trunc i64 %341 to i32
  %343 = add i32 %342, 4
  br label %344

344:                                              ; preds = %340, %268, %263, %259, %252
  %345 = phi i32 [ %343, %340 ], [ 0, %268 ], [ %267, %263 ], [ 0, %259 ], [ 0, %252 ]
  %346 = zext i32 %345 to i64
  %347 = icmp samesign ult i64 %238, %346
  br i1 %347, label %348, label %357

348:                                              ; preds = %344
  %349 = zext nneg i32 %237 to i64
  %350 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %349
  store i32 2, ptr %350, align 4, !tbaa !46
  %351 = getelementptr inbounds nuw i8, ptr %350, i64 4
  store i32 %345, ptr %351, align 4, !tbaa !44
  %352 = add nuw nsw i32 %237, 1
  %353 = icmp ule i32 %345, %41
  %354 = getelementptr inbounds nuw i8, ptr %3, i64 %346
  %355 = icmp ne ptr %354, %4
  %356 = and i1 %353, %355
  br i1 %356, label %357, label %707

357:                                              ; preds = %348, %344
  %358 = phi i32 [ %352, %348 ], [ %237, %344 ]
  %359 = phi i64 [ %346, %348 ], [ %238, %344 ]
  %360 = add nuw nsw i64 %127, 2
  %361 = icmp eq i64 %360, 3
  br i1 %361, label %365, label %362

362:                                              ; preds = %357
  %363 = getelementptr inbounds nuw i32, ptr %5, i64 %360
  %364 = load i32, ptr %363, align 4, !tbaa !25
  br label %368

365:                                              ; preds = %357
  %366 = load i32, ptr %5, align 4, !tbaa !25
  %367 = add i32 %366, -1
  br label %368

368:                                              ; preds = %365, %362
  %369 = phi i32 [ %367, %365 ], [ %364, %362 ]
  %370 = sub i32 %36, %369
  %371 = add i32 %369, -1
  %372 = icmp ult i32 %371, %115
  br i1 %372, label %389, label %373

373:                                              ; preds = %368
  %374 = zext i32 %370 to i64
  %375 = getelementptr i8, ptr %118, i64 %374
  %376 = icmp uge i32 %371, %120
  %377 = sub i32 %370, %61
  %378 = icmp ugt i32 %377, -4
  %379 = select i1 %376, i1 true, i1 %378
  br i1 %379, label %465, label %380

380:                                              ; preds = %373
  %381 = load i32, ptr %3, align 1, !tbaa !25
  %382 = load i32, ptr %375, align 1, !tbaa !25
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %465

384:                                              ; preds = %380
  %385 = getelementptr inbounds nuw i8, ptr %375, i64 4
  %386 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %385, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %387 = trunc i64 %386 to i32
  %388 = add i32 %387, 4
  br label %465

389:                                              ; preds = %368
  %390 = icmp uge i32 %370, %76
  %391 = load i32, ptr %3, align 1, !tbaa !25
  %392 = zext i32 %369 to i64
  %393 = sub nsw i64 0, %392
  %394 = getelementptr inbounds i8, ptr %3, i64 %393
  %395 = load i32, ptr %394, align 1, !tbaa !25
  %396 = icmp eq i32 %391, %395
  %397 = and i1 %390, %396
  br i1 %397, label %398, label %465

398:                                              ; preds = %389
  %399 = getelementptr inbounds i8, ptr %121, i64 %393
  br i1 %123, label %400, label %414

400:                                              ; preds = %398
  %401 = load i64, ptr %399, align 1, !tbaa !30
  %402 = load i64, ptr %121, align 1, !tbaa !30
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %408, label %404

404:                                              ; preds = %400
  %405 = xor i64 %402, %401
  %406 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %405, i1 true)
  %407 = lshr i64 %406, 3
  br label %461

408:                                              ; preds = %400, %450
  %409 = phi ptr [ %412, %450 ], [ %399, %400 ]
  %410 = phi ptr [ %411, %450 ], [ %121, %400 ]
  %411 = getelementptr inbounds nuw i8, ptr %410, i64 8
  %412 = getelementptr inbounds nuw i8, ptr %409, i64 8
  %413 = icmp ult ptr %411, %122
  br i1 %413, label %450, label %414

414:                                              ; preds = %408, %398
  %415 = phi ptr [ %399, %398 ], [ %412, %408 ]
  %416 = phi ptr [ %121, %398 ], [ %411, %408 ]
  %417 = icmp ult ptr %416, %124
  br i1 %417, label %418, label %425

418:                                              ; preds = %414
  %419 = load i32, ptr %415, align 1, !tbaa !25
  %420 = load i32, ptr %416, align 1, !tbaa !25
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %418
  %423 = getelementptr inbounds nuw i8, ptr %416, i64 4
  %424 = getelementptr inbounds nuw i8, ptr %415, i64 4
  br label %425

425:                                              ; preds = %422, %418, %414
  %426 = phi ptr [ %424, %422 ], [ %415, %418 ], [ %415, %414 ]
  %427 = phi ptr [ %423, %422 ], [ %416, %418 ], [ %416, %414 ]
  %428 = icmp ult ptr %427, %125
  br i1 %428, label %429, label %436

429:                                              ; preds = %425
  %430 = load i16, ptr %426, align 1, !tbaa !116
  %431 = load i16, ptr %427, align 1, !tbaa !116
  %432 = icmp eq i16 %430, %431
  br i1 %432, label %433, label %436

433:                                              ; preds = %429
  %434 = getelementptr inbounds nuw i8, ptr %427, i64 2
  %435 = getelementptr inbounds nuw i8, ptr %426, i64 2
  br label %436

436:                                              ; preds = %433, %429, %425
  %437 = phi ptr [ %435, %433 ], [ %426, %429 ], [ %426, %425 ]
  %438 = phi ptr [ %434, %433 ], [ %427, %429 ], [ %427, %425 ]
  %439 = icmp ult ptr %438, %4
  br i1 %439, label %440, label %446

440:                                              ; preds = %436
  %441 = load i8, ptr %437, align 1, !tbaa !42
  %442 = load i8, ptr %438, align 1, !tbaa !42
  %443 = icmp eq i8 %441, %442
  %444 = zext i1 %443 to i64
  %445 = getelementptr inbounds nuw i8, ptr %438, i64 %444
  br label %446

446:                                              ; preds = %440, %436
  %447 = phi ptr [ %438, %436 ], [ %445, %440 ]
  %448 = ptrtoint ptr %447 to i64
  %449 = sub i64 %448, %126
  br label %461

450:                                              ; preds = %408
  %451 = load i64, ptr %412, align 1, !tbaa !30
  %452 = load i64, ptr %411, align 1, !tbaa !30
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %408, label %454

454:                                              ; preds = %450
  %455 = xor i64 %452, %451
  %456 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %455, i1 true)
  %457 = lshr i64 %456, 3
  %458 = getelementptr inbounds nuw i8, ptr %411, i64 %457
  %459 = ptrtoint ptr %458 to i64
  %460 = sub i64 %459, %126
  br label %461

461:                                              ; preds = %454, %446, %404
  %462 = phi i64 [ %449, %446 ], [ %407, %404 ], [ %460, %454 ]
  %463 = trunc i64 %462 to i32
  %464 = add i32 %463, 4
  br label %465

465:                                              ; preds = %461, %389, %384, %380, %373
  %466 = phi i32 [ %464, %461 ], [ 0, %389 ], [ %388, %384 ], [ 0, %380 ], [ 0, %373 ]
  %467 = zext i32 %466 to i64
  %468 = icmp samesign ult i64 %359, %467
  br i1 %468, label %469, label %478

469:                                              ; preds = %465
  %470 = zext nneg i32 %358 to i64
  %471 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %470
  store i32 3, ptr %471, align 4, !tbaa !46
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 4
  store i32 %466, ptr %472, align 4, !tbaa !44
  %473 = add nuw nsw i32 %358, 1
  %474 = icmp ule i32 %466, %41
  %475 = getelementptr inbounds nuw i8, ptr %3, i64 %467
  %476 = icmp ne ptr %475, %4
  %477 = and i1 %474, %476
  br i1 %477, label %478, label %707

478:                                              ; preds = %465, %469, %35
  %479 = phi i64 [ %111, %35 ], [ %467, %469 ], [ %359, %465 ]
  %480 = phi i32 [ 0, %35 ], [ %473, %469 ], [ %358, %465 ]
  store i32 %36, ptr %51, align 4, !tbaa !25
  %481 = icmp ult i32 %52, %77
  br i1 %481, label %482, label %483

482:                                              ; preds = %478
  store i32 0, ptr %82, align 4, !tbaa !25
  store i32 0, ptr %81, align 4, !tbaa !25
  br label %622

483:                                              ; preds = %478
  %484 = getelementptr inbounds i8, ptr %4, i64 -7
  %485 = getelementptr inbounds i8, ptr %4, i64 -3
  %486 = getelementptr inbounds i8, ptr %4, i64 -1
  %487 = add i32 %36, 3
  br label %488

488:                                              ; preds = %483, %606
  %489 = phi i32 [ %52, %483 ], [ %612, %606 ]
  %490 = phi i64 [ 0, %483 ], [ %610, %606 ]
  %491 = phi i64 [ 0, %483 ], [ %609, %606 ]
  %492 = phi ptr [ %81, %483 ], [ %608, %606 ]
  %493 = phi ptr [ %82, %483 ], [ %607, %606 ]
  %494 = phi i32 [ %83, %483 ], [ %595, %606 ]
  %495 = phi i32 [ %480, %483 ], [ %594, %606 ]
  %496 = phi i32 [ %86, %483 ], [ %613, %606 ]
  %497 = phi i64 [ %479, %483 ], [ %593, %606 ]
  %498 = and i32 %489, %59
  %499 = shl nuw i32 %498, 1
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds nuw i32, ptr %54, i64 %500
  %502 = tail call i64 @llvm.umin.i64(i64 %490, i64 %491)
  %503 = zext i32 %489 to i64
  %504 = getelementptr inbounds nuw i8, ptr %37, i64 %503
  %505 = getelementptr inbounds nuw i8, ptr %3, i64 %502
  %506 = getelementptr inbounds nuw i8, ptr %504, i64 %502
  %507 = icmp ult ptr %505, %484
  br i1 %507, label %508, label %534

508:                                              ; preds = %488
  %509 = load i64, ptr %506, align 1, !tbaa !30
  %510 = load i64, ptr %505, align 1, !tbaa !30
  %511 = icmp eq i64 %509, %510
  br i1 %511, label %516, label %512

512:                                              ; preds = %508
  %513 = xor i64 %510, %509
  %514 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %513, i1 true)
  %515 = lshr i64 %514, 3
  br label %571

516:                                              ; preds = %508, %522
  %517 = phi ptr [ %520, %522 ], [ %506, %508 ]
  %518 = phi ptr [ %519, %522 ], [ %505, %508 ]
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 8
  %520 = getelementptr inbounds nuw i8, ptr %517, i64 8
  %521 = icmp ult ptr %519, %484
  br i1 %521, label %522, label %534

522:                                              ; preds = %516
  %523 = load i64, ptr %520, align 1, !tbaa !30
  %524 = load i64, ptr %519, align 1, !tbaa !30
  %525 = icmp eq i64 %523, %524
  br i1 %525, label %516, label %526

526:                                              ; preds = %522
  %527 = xor i64 %524, %523
  %528 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %527, i1 true)
  %529 = lshr i64 %528, 3
  %530 = getelementptr inbounds nuw i8, ptr %519, i64 %529
  %531 = ptrtoint ptr %530 to i64
  %532 = ptrtoint ptr %505 to i64
  %533 = sub i64 %531, %532
  br label %571

534:                                              ; preds = %516, %488
  %535 = phi ptr [ %506, %488 ], [ %520, %516 ]
  %536 = phi ptr [ %505, %488 ], [ %519, %516 ]
  %537 = icmp ult ptr %536, %485
  br i1 %537, label %538, label %545

538:                                              ; preds = %534
  %539 = load i32, ptr %535, align 1, !tbaa !25
  %540 = load i32, ptr %536, align 1, !tbaa !25
  %541 = icmp eq i32 %539, %540
  br i1 %541, label %542, label %545

542:                                              ; preds = %538
  %543 = getelementptr inbounds nuw i8, ptr %536, i64 4
  %544 = getelementptr inbounds nuw i8, ptr %535, i64 4
  br label %545

545:                                              ; preds = %542, %538, %534
  %546 = phi ptr [ %544, %542 ], [ %535, %538 ], [ %535, %534 ]
  %547 = phi ptr [ %543, %542 ], [ %536, %538 ], [ %536, %534 ]
  %548 = icmp ult ptr %547, %486
  br i1 %548, label %549, label %556

549:                                              ; preds = %545
  %550 = load i16, ptr %546, align 1, !tbaa !116
  %551 = load i16, ptr %547, align 1, !tbaa !116
  %552 = icmp eq i16 %550, %551
  br i1 %552, label %553, label %556

553:                                              ; preds = %549
  %554 = getelementptr inbounds nuw i8, ptr %547, i64 2
  %555 = getelementptr inbounds nuw i8, ptr %546, i64 2
  br label %556

556:                                              ; preds = %553, %549, %545
  %557 = phi ptr [ %555, %553 ], [ %546, %549 ], [ %546, %545 ]
  %558 = phi ptr [ %554, %553 ], [ %547, %549 ], [ %547, %545 ]
  %559 = icmp ult ptr %558, %4
  br i1 %559, label %560, label %566

560:                                              ; preds = %556
  %561 = load i8, ptr %557, align 1, !tbaa !42
  %562 = load i8, ptr %558, align 1, !tbaa !42
  %563 = icmp eq i8 %561, %562
  %564 = zext i1 %563 to i64
  %565 = getelementptr inbounds nuw i8, ptr %558, i64 %564
  br label %566

566:                                              ; preds = %560, %556
  %567 = phi ptr [ %558, %556 ], [ %565, %560 ]
  %568 = ptrtoint ptr %567 to i64
  %569 = ptrtoint ptr %505 to i64
  %570 = sub i64 %568, %569
  br label %571

571:                                              ; preds = %512, %526, %566
  %572 = phi i64 [ %570, %566 ], [ %515, %512 ], [ %533, %526 ]
  %573 = add i64 %572, %502
  %574 = icmp ugt i64 %573, %497
  br i1 %574, label %575, label %592

575:                                              ; preds = %571
  %576 = sub i32 %494, %489
  %577 = zext i32 %576 to i64
  %578 = icmp ugt i64 %573, %577
  %579 = trunc i64 %573 to i32
  %580 = add i32 %489, %579
  %581 = select i1 %578, i32 %580, i32 %494
  %582 = sub i32 %487, %489
  %583 = zext i32 %495 to i64
  %584 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %583
  store i32 %582, ptr %584, align 4, !tbaa !46
  %585 = getelementptr inbounds nuw i8, ptr %584, i64 4
  store i32 %579, ptr %585, align 4, !tbaa !44
  %586 = add i32 %495, 1
  %587 = icmp ugt i64 %573, 4096
  %588 = getelementptr inbounds nuw i8, ptr %3, i64 %573
  %589 = icmp eq ptr %588, %4
  %590 = or i1 %587, %589
  br i1 %590, label %591, label %592

591:                                              ; preds = %575
  store i32 0, ptr %493, align 4, !tbaa !25
  store i32 0, ptr %492, align 4, !tbaa !25
  br label %703

592:                                              ; preds = %575, %571
  %593 = phi i64 [ %573, %575 ], [ %497, %571 ]
  %594 = phi i32 [ %586, %575 ], [ %495, %571 ]
  %595 = phi i32 [ %581, %575 ], [ %494, %571 ]
  %596 = getelementptr inbounds nuw i8, ptr %504, i64 %573
  %597 = load i8, ptr %596, align 1, !tbaa !42
  %598 = getelementptr inbounds nuw i8, ptr %3, i64 %573
  %599 = load i8, ptr %598, align 1, !tbaa !42
  %600 = icmp ult i8 %597, %599
  %601 = icmp ugt i32 %489, %64
  br i1 %600, label %602, label %605

602:                                              ; preds = %592
  store i32 %489, ptr %492, align 4, !tbaa !25
  br i1 %601, label %603, label %617

603:                                              ; preds = %602
  %604 = getelementptr inbounds nuw i8, ptr %501, i64 4
  br label %606

605:                                              ; preds = %592
  store i32 %489, ptr %493, align 4, !tbaa !25
  br i1 %601, label %606, label %617

606:                                              ; preds = %605, %603
  %607 = phi ptr [ %493, %603 ], [ %501, %605 ]
  %608 = phi ptr [ %604, %603 ], [ %492, %605 ]
  %609 = phi i64 [ %491, %603 ], [ %573, %605 ]
  %610 = phi i64 [ %573, %603 ], [ %490, %605 ]
  %611 = phi ptr [ %604, %603 ], [ %501, %605 ]
  %612 = load i32, ptr %611, align 4, !tbaa !25
  %613 = add i32 %496, -1
  %614 = icmp ne i32 %613, 0
  %615 = icmp uge i32 %612, %77
  %616 = select i1 %614, i1 %615, i1 false
  br i1 %616, label %488, label %617, !llvm.loop !140

617:                                              ; preds = %606, %602, %605
  %618 = phi i32 [ %613, %606 ], [ %496, %602 ], [ %496, %605 ]
  %619 = phi ptr [ %607, %606 ], [ %493, %602 ], [ %9, %605 ]
  %620 = phi ptr [ %608, %606 ], [ %9, %602 ], [ %492, %605 ]
  store i32 0, ptr %619, align 4, !tbaa !25
  store i32 0, ptr %620, align 4, !tbaa !25
  %621 = icmp eq i32 %618, 0
  br i1 %621, label %703, label %622

622:                                              ; preds = %482, %617
  %623 = phi i32 [ %83, %482 ], [ %595, %617 ]
  %624 = phi i32 [ %480, %482 ], [ %594, %617 ]
  %625 = phi i64 [ %479, %482 ], [ %593, %617 ]
  %626 = phi i32 [ %86, %482 ], [ %618, %617 ]
  %627 = sub i32 64, %100
  %628 = zext nneg i32 %627 to i64
  %629 = lshr i64 %47, %628
  %630 = getelementptr inbounds nuw i8, ptr %88, i64 112
  %631 = load ptr, ptr %630, align 8, !tbaa !108
  %632 = getelementptr inbounds nuw i32, ptr %631, i64 %629
  %633 = getelementptr inbounds nuw i8, ptr %88, i64 128
  %634 = load ptr, ptr %633, align 8, !tbaa !110
  %635 = load i32, ptr %632, align 4, !tbaa !25
  %636 = icmp ugt i32 %635, %97
  br i1 %636, label %637, label %703

637:                                              ; preds = %622
  %638 = and i64 %94, 4294967295
  %639 = zext i32 %98 to i64
  %640 = getelementptr inbounds nuw i8, ptr %37, i64 %639
  %641 = add i32 %36, 3
  br label %642

642:                                              ; preds = %637, %688
  %643 = phi i32 [ %635, %637 ], [ %699, %688 ]
  %644 = phi i64 [ 0, %637 ], [ %695, %688 ]
  %645 = phi i64 [ 0, %637 ], [ %694, %688 ]
  %646 = phi i32 [ %623, %637 ], [ %686, %688 ]
  %647 = phi i32 [ %624, %637 ], [ %685, %688 ]
  %648 = phi i32 [ %626, %637 ], [ %698, %688 ]
  %649 = phi i64 [ %625, %637 ], [ %684, %688 ]
  %650 = and i32 %643, %105
  %651 = shl nuw i32 %650, 1
  %652 = zext i32 %651 to i64
  %653 = getelementptr inbounds nuw i32, ptr %634, i64 %652
  %654 = tail call i64 @llvm.umin.i64(i64 %644, i64 %645)
  %655 = zext i32 %643 to i64
  %656 = getelementptr inbounds nuw i8, ptr %90, i64 %655
  %657 = getelementptr inbounds nuw i8, ptr %3, i64 %654
  %658 = getelementptr inbounds nuw i8, ptr %656, i64 %654
  %659 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %657, ptr noundef nonnull %658, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %660 = add i64 %659, %654
  %661 = add i64 %660, %655
  %662 = icmp ult i64 %661, %638
  %663 = getelementptr inbounds nuw i8, ptr %640, i64 %655
  %664 = select i1 %662, ptr %656, ptr %663
  %665 = icmp ugt i64 %660, %649
  br i1 %665, label %666, label %683

666:                                              ; preds = %642
  %667 = add i32 %643, %98
  %668 = sub i32 %646, %667
  %669 = zext i32 %668 to i64
  %670 = icmp ugt i64 %660, %669
  %671 = trunc i64 %660 to i32
  %672 = add i32 %667, %671
  %673 = select i1 %670, i32 %672, i32 %646
  %674 = sub i32 %641, %667
  %675 = zext i32 %647 to i64
  %676 = getelementptr inbounds nuw %struct.ZSTD_match_t, ptr %0, i64 %675
  store i32 %674, ptr %676, align 4, !tbaa !46
  %677 = getelementptr inbounds nuw i8, ptr %676, i64 4
  store i32 %671, ptr %677, align 4, !tbaa !44
  %678 = add i32 %647, 1
  %679 = icmp ugt i64 %660, 4096
  %680 = getelementptr inbounds nuw i8, ptr %3, i64 %660
  %681 = icmp eq ptr %680, %4
  %682 = or i1 %679, %681
  br i1 %682, label %703, label %683

683:                                              ; preds = %666, %642
  %684 = phi i64 [ %660, %666 ], [ %649, %642 ]
  %685 = phi i32 [ %678, %666 ], [ %647, %642 ]
  %686 = phi i32 [ %673, %666 ], [ %646, %642 ]
  %687 = icmp ugt i32 %643, %109
  br i1 %687, label %688, label %703

688:                                              ; preds = %683
  %689 = getelementptr inbounds nuw i8, ptr %664, i64 %660
  %690 = load i8, ptr %689, align 1, !tbaa !42
  %691 = getelementptr inbounds nuw i8, ptr %3, i64 %660
  %692 = load i8, ptr %691, align 1, !tbaa !42
  %693 = icmp ult i8 %690, %692
  %694 = select i1 %693, i64 %645, i64 %660
  %695 = select i1 %693, i64 %660, i64 %644
  %696 = select i1 %693, i64 4, i64 0
  %697 = getelementptr inbounds nuw i8, ptr %653, i64 %696
  %698 = add i32 %648, -1
  %699 = load i32, ptr %697, align 4, !tbaa !25
  %700 = icmp ne i32 %698, 0
  %701 = icmp ugt i32 %699, %97
  %702 = select i1 %700, i1 %701, i1 false
  br i1 %702, label %642, label %703, !llvm.loop !146

703:                                              ; preds = %688, %666, %683, %622, %591, %617
  %704 = phi i32 [ %594, %617 ], [ %586, %591 ], [ %624, %622 ], [ %685, %688 ], [ %678, %666 ], [ %685, %683 ]
  %705 = phi i32 [ %595, %617 ], [ %581, %591 ], [ %623, %622 ], [ %686, %688 ], [ %673, %666 ], [ %686, %683 ]
  %706 = add i32 %705, -8
  store i32 %706, ptr %12, align 4, !tbaa !19
  br label %707

707:                                              ; preds = %229, %348, %469, %703
  %708 = phi i32 [ %704, %703 ], [ 1, %229 ], [ %352, %348 ], [ %473, %469 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br label %709

709:                                              ; preds = %8, %707
  %710 = phi i32 [ %708, %707 ], [ 0, %8 ]
  ret i32 %710
}

declare i32 @HUF_getNbBitsFromCTable(ptr noundef, i32 noundef) local_unnamed_addr #9

declare i32 @HIST_count_simple(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @ZSTD_resetSeqStore(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v28i32(<28 x i32>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !12, i64 272}
!6 = !{!"ZSTD_MatchState_t", !7, i64 0, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !8, i64 56, !10, i64 64, !13, i64 96, !12, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !12, i64 136, !12, i64 140, !15, i64 144, !16, i64 248, !17, i64 256, !9, i64 288, !12, i64 296, !12, i64 300}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!"p1 int", !9, i64 0}
!15 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !9, i64 32, !9, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !9, i64 88, !12, i64 96}
!16 = !{!"p1 _ZTS17ZSTD_MatchState_t", !9, i64 0}
!17 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24}
!18 = !{!6, !8, i64 8}
!19 = !{!6, !12, i64 44}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!6, !12, i64 24}
!23 = !{!9, !9, i64 0}
!24 = !{!17, !12, i64 20}
!25 = !{!12, !12, i64 0}
!26 = !{!15, !9, i64 40}
!27 = !{!15, !9, i64 32}
!28 = !{!6, !9, i64 288}
!29 = !{i64 0, i64 8, !23, i64 8, i64 8, !30, i64 16, i64 8, !30, i64 24, i64 8, !30, i64 32, i64 8, !30}
!30 = !{!13, !13, i64 0}
!31 = !{!32, !12, i64 48}
!32 = !{!"", !33, i64 0, !12, i64 40, !12, i64 44, !12, i64 48}
!33 = !{!"", !9, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!34 = !{!32, !12, i64 40}
!35 = !{!32, !12, i64 44}
!36 = !{!37, !12, i64 8}
!37 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !10, i64 16}
!38 = !{!37, !12, i64 12}
!39 = !{!15, !12, i64 80}
!40 = !{!15, !12, i64 68}
!41 = !{!15, !14, i64 8}
!42 = !{!10, !10, i64 0}
!43 = !{!37, !12, i64 0}
!44 = !{!45, !12, i64 4}
!45 = !{!"", !12, i64 0, !12, i64 4}
!46 = !{!45, !12, i64 0}
!47 = distinct !{!47, !21}
!48 = !{}
!49 = !{!"branch_weights", i32 1, i32 1048575}
!50 = !{!37, !12, i64 4}
!51 = distinct !{!51, !21}
!52 = !{!15, !12, i64 76}
!53 = !{!15, !14, i64 24}
!54 = !{!15, !12, i64 72}
!55 = !{!15, !14, i64 16}
!56 = distinct !{!56, !21}
!57 = !{!15, !12, i64 96}
!58 = !{!15, !12, i64 64}
!59 = !{!15, !14, i64 0}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = !{i64 0, i64 4, !25, i64 4, i64 4, !25, i64 8, i64 4, !25, i64 12, i64 4, !25, i64 16, i64 12, !42}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !63}
!67 = distinct !{!67, !21}
!68 = distinct !{!68, !21}
!69 = !{i64 0, i64 12, !42}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, !21}
!72 = distinct !{!72, !63}
!73 = !{!15, !12, i64 48}
!74 = !{!15, !12, i64 52}
!75 = !{!15, !12, i64 60}
!76 = !{!15, !12, i64 56}
!77 = !{!78, !8, i64 24}
!78 = !{!"", !79, i64 0, !79, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !13, i64 56, !13, i64 64, !12, i64 72, !12, i64 76}
!79 = !{!"p1 _ZTS8SeqDef_s", !9, i64 0}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !21, !82, !83}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = distinct !{!84, !21, !82, !83}
!85 = distinct !{!85, !63}
!86 = distinct !{!86, !21, !82}
!87 = !{!78, !79, i64 8}
!88 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!89 = !{!78, !12, i64 72}
!90 = !{!78, !79, i64 0}
!91 = !{!78, !12, i64 76}
!92 = !{!93, !94, i64 4}
!93 = !{!"SeqDef_s", !12, i64 0, !94, i64 4, !94, i64 6}
!94 = !{!"short", !10, i64 0}
!95 = !{!93, !12, i64 0}
!96 = !{!93, !94, i64 6}
!97 = distinct !{!97, !21}
!98 = !{!"branch_weights", i32 2000, i32 2002}
!99 = distinct !{!99, !63}
!100 = distinct !{!100, !63}
!101 = distinct !{!101, !63}
!102 = distinct !{!102, !21, !82, !83}
!103 = distinct !{!103, !21, !82, !83}
!104 = distinct !{!104, !63}
!105 = distinct !{!105, !21, !82}
!106 = !{!6, !12, i64 196}
!107 = !{!6, !12, i64 28}
!108 = !{!6, !14, i64 112}
!109 = !{!17, !12, i64 8}
!110 = !{!6, !14, i64 128}
!111 = !{!17, !12, i64 4}
!112 = !{!6, !8, i64 16}
!113 = !{!17, !12, i64 0}
!114 = !{!6, !12, i64 40}
!115 = !{!17, !12, i64 12}
!116 = !{!94, !94, i64 0}
!117 = distinct !{!117, !21}
!118 = !{!32, !13, i64 24}
!119 = !{!32, !13, i64 8}
!120 = !{!32, !9, i64 0}
!121 = !{!32, !13, i64 16}
!122 = !{!33, !13, i64 16}
!123 = !{!33, !13, i64 8}
!124 = !{!15, !9, i64 88}
!125 = !{!126, !12, i64 2056}
!126 = !{!"", !127, i64 0, !128, i64 2064}
!127 = !{!"", !10, i64 0, !12, i64 2056}
!128 = !{!"", !10, i64 0, !10, i64 772, !10, i64 2224, !12, i64 3540, !12, i64 3544, !12, i64 3548}
!129 = distinct !{!129, !21}
!130 = distinct !{!130, !21}
!131 = distinct !{!131, !21}
!132 = distinct !{!132, !21}
!133 = distinct !{!133, !21, !82, !83}
!134 = distinct !{!134, !21, !82, !83}
!135 = !{!33, !9, i64 0}
!136 = !{!6, !14, i64 120}
!137 = !{!6, !12, i64 48}
!138 = distinct !{!138, !63}
!139 = distinct !{!139, !21}
!140 = distinct !{!140, !21}
!141 = distinct !{!141, !21}
!142 = distinct !{!142, !63}
!143 = !{!6, !16, i64 248}
!144 = !{!6, !8, i64 0}
!145 = distinct !{!145, !63}
!146 = distinct !{!146, !21}
