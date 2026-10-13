; ModuleID = '/mydata/zstd/lib/compress/zstd_opt.c'
source_filename = "/mydata/zstd/lib/compress/zstd_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_MatchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, i32, ptr, [8 x i32], i64, i32, ptr, ptr, ptr, i32, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr, i32, i32 }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.repcodes_s = type { [3 x i32] }
%struct.ZSTD_optLdm_t = type { %struct.RawSeqStore_t, i32, i32, i32 }
%struct.RawSeqStore_t = type { ptr, i64, i64, i64, i64 }
%struct.ZSTD_optimal_t = type { i32, i32, i32, i32, [3 x i32] }
%struct.SeqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.ZSTD_match_t = type { i32, i32 }
%struct.SeqDef_s = type { i32, i16, i16 }
%struct.rawSeq = type { i32, i32, i32 }
%struct.ZSTD_hufCTables_t = type { [257 x i64], i32 }
%struct.ZSTD_entropyCTables_t = type { %struct.ZSTD_hufCTables_t, %struct.ZSTD_fseCTables_t }
%struct.ZSTD_fseCTables_t = type { [193 x i32], [363 x i32], [329 x i32], i32, i32, i32 }
%struct.FSE_symbolCompressionTransform = type { i32, i32 }

@__const.ZSTD_selectBtGetAllMatches.getAllMatchesFns = private unnamed_addr constant [3 x [4 x ptr]] [[4 x ptr] [ptr @ZSTD_btGetAllMatches_noDict_3, ptr @ZSTD_btGetAllMatches_noDict_4, ptr @ZSTD_btGetAllMatches_noDict_5, ptr @ZSTD_btGetAllMatches_noDict_6], [4 x ptr] [ptr @ZSTD_btGetAllMatches_extDict_3, ptr @ZSTD_btGetAllMatches_extDict_4, ptr @ZSTD_btGetAllMatches_extDict_5, ptr @ZSTD_btGetAllMatches_extDict_6], [4 x ptr] [ptr @ZSTD_btGetAllMatches_dictMatchState_3, ptr @ZSTD_btGetAllMatches_dictMatchState_4, ptr @ZSTD_btGetAllMatches_dictMatchState_5, ptr @ZSTD_btGetAllMatches_dictMatchState_6]], align 16
@__const.ZSTD_rescaleFreqs.baseLLfreqs = private unnamed_addr constant [36 x i32] [i32 4, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@__const.ZSTD_rescaleFreqs.baseOFCfreqs = private unnamed_addr constant [32 x i32] [i32 6, i32 2, i32 1, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@LL_bits = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ZSTD_LLcode.LL_Code = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 16
@ML_bits = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ZSTD_MLcode.ML_Code = internal unnamed_addr constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$$$$%%%%&&&&&&&&''''''''(((((((((((((((())))))))))))))))********************************", align 16

; Function Attrs: nounwind uwtable
define dso_local void @ZSTD_updateTree(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = icmp ult i32 %13, %11
  br i1 %14, label %15, label %22

15:                                               ; preds = %3, %15
  %16 = phi i32 [ %20, %15 ], [ %13, %3 ]
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %7, i64 %17
  %19 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %0, ptr noundef %18, ptr noundef %2, i32 noundef %11, i32 noundef %5, i32 noundef 0)
  %20 = add i32 %19, %16
  %21 = icmp ult i32 %20, %11
  br i1 %21, label %15, label %22, !llvm.loop !17

22:                                               ; preds = %15, %3
  store i32 %11, ptr %12, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btopt(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = alloca %struct.repcodes_s, align 8
  %8 = alloca %struct.repcodes_s, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca %struct.ZSTD_optLdm_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14
  %15 = getelementptr inbounds i8, ptr %3, i64 %4
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  %17 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !19
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  %23 = getelementptr i8, ptr %0, i64 272
  %24 = load i32, ptr %23, align 8, !tbaa !20
  %25 = icmp ult i32 %24, 3
  %26 = add i32 %24, -6
  %27 = icmp ult i32 %26, -3
  %28 = select i1 %25, i64 0, i64 3
  %29 = add nsw i32 %24, -3
  %30 = zext nneg i32 %29 to i64
  %31 = select i1 %27, i64 %28, i64 %30
  %32 = zext nneg i32 %5 to i64
  %33 = getelementptr inbounds [3 x [4 x ptr]], ptr @__const.ZSTD_selectBtGetAllMatches.getAllMatchesFns, i64 0, i64 %32, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  %35 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !22
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 4095)
  %38 = icmp eq i32 %24, 3
  %39 = select i1 %38, i32 3, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %40 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !16
  store i32 %41, ptr %9, align 4, !tbaa !23
  %42 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !24
  %44 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  %46 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !26
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %47, i64 40, i1 false), !tbaa.struct !27
  br label %51

50:                                               ; preds = %6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  br label %51

51:                                               ; preds = %50, %49
  %52 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %11, i64 0, i32 3
  store i32 0, ptr %52, align 8, !tbaa !29
  %53 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %11, i64 0, i32 1
  store i32 0, ptr %53, align 8, !tbaa !32
  %54 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %11, i64 0, i32 2
  store i32 0, ptr %54, align 4, !tbaa !33
  %55 = ptrtoint ptr %3 to i64
  %56 = ptrtoint ptr %15 to i64
  %57 = trunc i64 %4 to i32
  call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef nonnull %11, i32 noundef 0, i32 noundef %57)
  tail call fastcc void @ZSTD_rescaleFreqs(ptr noundef nonnull %14, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  %58 = icmp eq ptr %22, %3
  %59 = zext i1 %58 to i64
  %60 = getelementptr inbounds i8, ptr %3, i64 %59
  %61 = icmp ult ptr %60, %16
  br i1 %61, label %62, label %1245

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 0, i32 2
  %64 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 0, i32 3
  %65 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 14
  %66 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 11
  %67 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 1
  %68 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 0, i32 4
  %69 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 13
  %70 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 3
  %71 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 12
  %72 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 2
  %73 = getelementptr %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 16
  %74 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 10
  %75 = getelementptr inbounds i8, ptr %8, i64 8
  %76 = getelementptr inbounds i32, ptr %8, i64 1
  %77 = getelementptr inbounds i8, ptr %7, i64 8
  %78 = getelementptr inbounds i32, ptr %7, i64 1
  %79 = getelementptr inbounds i8, ptr %2, i64 8
  %80 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 6
  %81 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 7
  %82 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 9
  %83 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 8
  %84 = getelementptr inbounds i8, ptr %15, i64 -32
  %85 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %86 = ptrtoint ptr %84 to i64
  %87 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %88 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %89 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %90 = zext nneg i32 %39 to i64
  %91 = add nsw i64 %90, -1
  %92 = and i64 %91, 1
  %93 = and i64 %91, -2
  %94 = icmp eq i64 %92, 0
  br label %95

95:                                               ; preds = %62, %1238
  %96 = phi ptr [ %60, %62 ], [ %1241, %1238 ]
  %97 = phi ptr [ %3, %62 ], [ %1240, %1238 ]
  %98 = phi i32 [ 0, %62 ], [ %1239, %1238 ]
  %99 = ptrtoint ptr %96 to i64
  %100 = ptrtoint ptr %97 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  %105 = call i32 %34(ptr noundef %45, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %96, ptr noundef %15, ptr noundef %2, i32 noundef %104, i32 noundef %39) #12
  store i32 %105, ptr %12, align 4, !tbaa !23
  %106 = sub i64 %99, %55
  %107 = trunc i64 %106 to i32
  %108 = sub i64 %56, %99
  %109 = trunc i64 %108 to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef nonnull %11, ptr noundef %45, ptr noundef nonnull %12, i32 noundef %107, i32 noundef %109, i32 noundef %39)
  %110 = load i32, ptr %12, align 4, !tbaa !23
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %95
  %113 = getelementptr inbounds i8, ptr %96, i64 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  br label %1238

114:                                              ; preds = %95
  store i32 0, ptr %63, align 4, !tbaa !34
  store i32 %102, ptr %64, align 4, !tbaa !36
  %115 = load i32, ptr %65, align 8, !tbaa !37
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = add i32 %102, 1
  %119 = call i32 @llvm.ctlz.i32(i32 %118, i1 true), !range !38
  %120 = shl nuw nsw i32 %119, 8
  %121 = xor i32 %120, 7936
  br label %160

122:                                              ; preds = %114
  %123 = icmp eq i32 %102, 131072
  br i1 %123, label %124, label %134

124:                                              ; preds = %122
  %125 = load i32, ptr %66, align 4, !tbaa !39
  %126 = load ptr, ptr %67, align 8, !tbaa !40
  %127 = getelementptr inbounds i32, ptr %126, i64 35
  %128 = load i32, ptr %127, align 4, !tbaa !23
  %129 = add i32 %128, 1
  %130 = call i32 @llvm.ctlz.i32(i32 %129, i1 true), !range !38
  %131 = shl nuw nsw i32 %130, 8
  %132 = add i32 %125, -3584
  %133 = add i32 %132, %131
  br label %160

134:                                              ; preds = %122
  %135 = icmp ugt i32 %102, 63
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = call i32 @llvm.ctlz.i32(i32 %102, i1 true), !range !38
  %138 = sub nuw nsw i32 50, %137
  br label %144

139:                                              ; preds = %134
  %140 = and i64 %101, 4294967295
  %141 = getelementptr inbounds [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !41
  %143 = zext i8 %142 to i32
  br label %144

144:                                              ; preds = %139, %136
  %145 = phi i32 [ %138, %136 ], [ %143, %139 ]
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds [36 x i8], ptr @LL_bits, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !41
  %149 = zext i8 %148 to i32
  %150 = load i32, ptr %66, align 4, !tbaa !39
  %151 = load ptr, ptr %67, align 8, !tbaa !40
  %152 = getelementptr inbounds i32, ptr %151, i64 %146
  %153 = load i32, ptr %152, align 4, !tbaa !23
  %154 = add i32 %153, 1
  %155 = call i32 @llvm.ctlz.i32(i32 %154, i1 true), !range !38
  %156 = add nuw nsw i32 %155, %149
  %157 = shl nuw nsw i32 %156, 8
  %158 = add i32 %150, -7936
  %159 = add i32 %158, %157
  br label %160

160:                                              ; preds = %117, %124, %144
  %161 = phi i32 [ %133, %124 ], [ %159, %144 ], [ %121, %117 ]
  store i32 %161, ptr %43, align 4, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %68, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %162 = add i32 %110, -1
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.ZSTD_match_t, ptr %45, i64 %163, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !43
  %166 = icmp ugt i32 %165, %37
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.ZSTD_match_t, ptr %45, i64 %163
  %169 = load i32, ptr %168, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  br label %800

170:                                              ; preds = %160, %170
  %171 = phi i64 [ %184, %170 ], [ 1, %160 ]
  %172 = phi i64 [ %185, %170 ], [ 0, %160 ]
  %173 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %171
  store i32 1073741824, ptr %173, align 4, !tbaa !42
  %174 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %171, i32 2
  store i32 0, ptr %174, align 4, !tbaa !34
  %175 = trunc i64 %171 to i32
  %176 = add i32 %175, %102
  %177 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %171, i32 3
  store i32 %176, ptr %177, align 4, !tbaa !36
  %178 = add nuw nsw i64 %171, 1
  %179 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %178
  store i32 1073741824, ptr %179, align 4, !tbaa !42
  %180 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %178, i32 2
  store i32 0, ptr %180, align 4, !tbaa !34
  %181 = trunc i64 %178 to i32
  %182 = add i32 %181, %102
  %183 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %178, i32 3
  store i32 %182, ptr %183, align 4, !tbaa !36
  %184 = add nuw nsw i64 %171, 2
  %185 = add i64 %172, 2
  %186 = icmp eq i64 %185, %93
  br i1 %186, label %187, label %170, !llvm.loop !46

187:                                              ; preds = %170
  br i1 %94, label %194, label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %184
  store i32 1073741824, ptr %189, align 4, !tbaa !42
  %190 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %184, i32 2
  store i32 0, ptr %190, align 4, !tbaa !34
  %191 = trunc i64 %184 to i32
  %192 = add i32 %191, %102
  %193 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %184, i32 3
  store i32 %192, ptr %193, align 4, !tbaa !36
  br label %194

194:                                              ; preds = %187, %188
  %195 = call i32 @llvm.umax.i32(i32 %110, i32 1)
  %196 = zext i32 %195 to i64
  br label %197

197:                                              ; preds = %194, %303
  %198 = phi i64 [ 0, %194 ], [ %305, %303 ]
  %199 = phi i32 [ %39, %194 ], [ %304, %303 ]
  %200 = getelementptr inbounds %struct.ZSTD_match_t, ptr %45, i64 %198
  %201 = load i32, ptr %200, align 4, !tbaa !45
  %202 = getelementptr inbounds %struct.ZSTD_match_t, ptr %45, i64 %198, i32 1
  %203 = load i32, ptr %202, align 4, !tbaa !43
  %204 = icmp ugt i32 %199, %203
  br i1 %204, label %303, label %205

205:                                              ; preds = %197
  %206 = call i32 @llvm.ctlz.i32(i32 %201, i1 true), !range !38
  %207 = xor i32 %206, 31
  %208 = load i32, ptr %65, align 8, !tbaa !37
  %209 = icmp eq i32 %208, 1
  %210 = shl nuw nsw i32 %207, 8
  %211 = add nuw nsw i32 %210, 4096
  br i1 %209, label %212, label %231

212:                                              ; preds = %205, %222
  %213 = phi i32 [ %229, %222 ], [ %199, %205 ]
  %214 = add i32 %213, -2
  %215 = call i32 @llvm.ctlz.i32(i32 %214, i1 true), !range !38
  %216 = shl nuw nsw i32 %215, 8
  %217 = xor i32 %216, 7936
  %218 = add nuw nsw i32 %211, %217
  %219 = load i32, ptr %43, align 4, !tbaa !42
  %220 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %219, i32 %218), !nosanitize !47
  %221 = extractvalue { i32, i1 } %220, 1, !nosanitize !47
  br i1 %221, label %281, label %222, !nosanitize !47

222:                                              ; preds = %212
  %223 = zext i32 %213 to i64
  %224 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %223, i32 2
  store i32 %213, ptr %224, align 4, !tbaa !34
  %225 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %223, i32 1
  store i32 %201, ptr %225, align 4, !tbaa !48
  %226 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %223, i32 3
  store i32 0, ptr %226, align 4, !tbaa !36
  %227 = extractvalue { i32, i1 } %220, 0, !nosanitize !47
  %228 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %223
  store i32 %227, ptr %228, align 4, !tbaa !42
  %229 = add i32 %213, 1
  %230 = icmp ugt i32 %229, %203
  br i1 %230, label %303, label %212, !llvm.loop !49

231:                                              ; preds = %205
  %232 = icmp ugt i32 %207, 19
  %233 = shl nuw nsw i32 %207, 9
  %234 = add nsw i32 %233, -9677
  %235 = select i1 %232, i32 %234, i32 51
  %236 = zext nneg i32 %207 to i64
  %237 = load i32, ptr %69, align 4, !tbaa !50
  %238 = load ptr, ptr %70, align 8, !tbaa !51
  %239 = getelementptr inbounds i32, ptr %238, i64 %236
  %240 = load i32, ptr %71, align 8, !tbaa !52
  %241 = load ptr, ptr %72, align 8, !tbaa !53
  %242 = add i32 %235, %237
  br label %243

243:                                              ; preds = %231, %298
  %244 = phi i32 [ %199, %231 ], [ %301, %298 ]
  %245 = add i32 %244, -3
  %246 = load i32, ptr %239, align 4, !tbaa !23
  %247 = add i32 %246, 1
  %248 = call i32 @llvm.ctlz.i32(i32 %247, i1 true), !range !38
  %249 = shl nuw nsw i32 %248, 8
  %250 = add nsw i32 %249, -7936
  %251 = icmp ugt i32 %245, 127
  br i1 %251, label %252, label %255

252:                                              ; preds = %243
  %253 = call i32 @llvm.ctlz.i32(i32 %245, i1 true), !range !38
  %254 = sub nuw nsw i32 67, %253
  br label %260

255:                                              ; preds = %243
  %256 = zext nneg i32 %245 to i64
  %257 = getelementptr inbounds [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !41
  %259 = zext i8 %258 to i32
  br label %260

260:                                              ; preds = %252, %255
  %261 = phi i32 [ %254, %252 ], [ %259, %255 ]
  %262 = zext nneg i32 %261 to i64
  %263 = getelementptr inbounds [53 x i8], ptr @ML_bits, i64 0, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !41
  %265 = zext i8 %264 to i32
  %266 = getelementptr inbounds i32, ptr %241, i64 %262
  %267 = load i32, ptr %266, align 4, !tbaa !23
  %268 = add i32 %267, 1
  %269 = call i32 @llvm.ctlz.i32(i32 %268, i1 true), !range !38
  %270 = shl nuw nsw i32 %269, 8
  %271 = add nsw i32 %270, -7936
  %272 = add nuw nsw i32 %207, %265
  %273 = shl nuw nsw i32 %272, 8
  %274 = add i32 %242, %250
  %275 = add i32 %274, %240
  %276 = add i32 %275, %273
  %277 = add i32 %276, %271
  %278 = load i32, ptr %43, align 4, !tbaa !42
  %279 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %278, i32 %277), !nosanitize !47
  %280 = extractvalue { i32, i1 } %279, 1, !nosanitize !47
  br i1 %280, label %281, label %282, !nosanitize !47

281:                                              ; preds = %535, %513, %444, %345, %260, %282, %212, %688, %592
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

282:                                              ; preds = %260
  %283 = extractvalue { i32, i1 } %279, 0, !nosanitize !47
  %284 = zext i32 %244 to i64
  %285 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %284, i32 2
  store i32 %244, ptr %285, align 4, !tbaa !34
  %286 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %284, i32 1
  store i32 %201, ptr %286, align 4, !tbaa !48
  %287 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %284, i32 3
  store i32 0, ptr %287, align 4, !tbaa !36
  %288 = load i32, ptr %66, align 4, !tbaa !39
  %289 = load ptr, ptr %67, align 8, !tbaa !40
  %290 = load i32, ptr %289, align 4, !tbaa !23
  %291 = add i32 %290, 1
  %292 = call i32 @llvm.ctlz.i32(i32 %291, i1 true), !range !38
  %293 = shl nuw nsw i32 %292, 8
  %294 = add i32 %288, -7936
  %295 = add i32 %294, %293
  %296 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %283, i32 %295), !nosanitize !47
  %297 = extractvalue { i32, i1 } %296, 1, !nosanitize !47
  br i1 %297, label %281, label %298, !nosanitize !47

298:                                              ; preds = %282
  %299 = extractvalue { i32, i1 } %296, 0, !nosanitize !47
  %300 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %284
  store i32 %299, ptr %300, align 4, !tbaa !42
  %301 = add i32 %244, 1
  %302 = icmp ugt i32 %301, %203
  br i1 %302, label %303, label %243, !llvm.loop !49

303:                                              ; preds = %298, %222, %197
  %304 = phi i32 [ %199, %197 ], [ %229, %222 ], [ %301, %298 ]
  %305 = add nuw nsw i64 %198, 1
  %306 = icmp eq i64 %305, %196
  br i1 %306, label %307, label %197, !llvm.loop !54

307:                                              ; preds = %303
  %308 = add i32 %304, -1
  %309 = zext i32 %304 to i64
  %310 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %309
  store i32 1073741824, ptr %310, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  %311 = icmp eq i32 %308, 0
  br i1 %311, label %767, label %312

312:                                              ; preds = %307, %763
  %313 = phi i32 [ %764, %763 ], [ 1, %307 ]
  %314 = phi i32 [ %765, %763 ], [ %308, %307 ]
  %315 = zext i32 %313 to i64
  %316 = getelementptr inbounds i8, ptr %96, i64 %315
  %317 = add i32 %313, -1
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %318
  %320 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %318, i32 3
  %321 = load i32, ptr %320, align 4, !tbaa !36
  %322 = add i32 %321, 1
  %323 = load i32, ptr %319, align 4, !tbaa !42
  %324 = getelementptr inbounds i8, ptr %316, i64 -1
  %325 = load i32, ptr %73, align 8, !tbaa !55
  %326 = icmp eq i32 %325, 2
  br i1 %326, label %345, label %327

327:                                              ; preds = %312
  %328 = load i32, ptr %65, align 8, !tbaa !37
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %345, label %330

330:                                              ; preds = %327
  %331 = load i32, ptr %74, align 8, !tbaa !56
  %332 = add i32 %331, -256
  %333 = load ptr, ptr %14, align 8, !tbaa !57
  %334 = load i8, ptr %324, align 1, !tbaa !41
  %335 = zext i8 %334 to i64
  %336 = getelementptr inbounds i32, ptr %333, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !23
  %338 = add i32 %337, 1
  %339 = call i32 @llvm.ctlz.i32(i32 %338, i1 true), !range !38
  %340 = shl nuw nsw i32 %339, 8
  %341 = xor i32 %340, 7936
  %342 = icmp ugt i32 %341, %332
  %343 = sub i32 %331, %341
  %344 = select i1 %342, i32 256, i32 %343, !prof !58
  br label %345

345:                                              ; preds = %312, %327, %330
  %346 = phi i32 [ 2048, %312 ], [ 1536, %327 ], [ %344, %330 ]
  %347 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %323, i32 %346), !nosanitize !47
  %348 = extractvalue { i32, i1 } %347, 0, !nosanitize !47
  %349 = extractvalue { i32, i1 } %347, 1, !nosanitize !47
  br i1 %349, label %281, label %350, !nosanitize !47

350:                                              ; preds = %345
  %351 = load i32, ptr %65, align 8, !tbaa !37
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %376, label %353

353:                                              ; preds = %350
  %354 = icmp eq i32 %322, 131072
  br i1 %354, label %355, label %366

355:                                              ; preds = %353
  %356 = load i32, ptr %66, align 4, !tbaa !39
  %357 = load ptr, ptr %67, align 8, !tbaa !40
  %358 = getelementptr inbounds i32, ptr %357, i64 35
  %359 = load i32, ptr %358, align 4, !tbaa !23
  %360 = add i32 %359, 1
  %361 = call i32 @llvm.ctlz.i32(i32 %360, i1 true), !range !38
  %362 = shl nuw nsw i32 %361, 8
  %363 = add i32 %356, -3584
  %364 = add i32 %363, %362
  %365 = add i32 %356, -7936
  br label %411

366:                                              ; preds = %353
  %367 = icmp ugt i32 %322, 63
  br i1 %367, label %368, label %371

368:                                              ; preds = %366
  %369 = call i32 @llvm.ctlz.i32(i32 %322, i1 true), !range !38
  %370 = sub nuw nsw i32 50, %369
  br label %384

371:                                              ; preds = %366
  %372 = zext nneg i32 %322 to i64
  %373 = getelementptr inbounds [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %372
  %374 = load i8, ptr %373, align 1, !tbaa !41
  %375 = zext i8 %374 to i32
  br label %384

376:                                              ; preds = %350
  %377 = add i32 %321, 2
  %378 = call i32 @llvm.ctlz.i32(i32 %377, i1 true), !range !38
  %379 = shl nuw nsw i32 %378, 8
  %380 = xor i32 %379, 7936
  %381 = call i32 @llvm.ctlz.i32(i32 %322, i1 true), !range !38
  %382 = shl nuw nsw i32 %381, 8
  %383 = xor i32 %382, 7936
  br label %438

384:                                              ; preds = %368, %371
  %385 = phi i32 [ %370, %368 ], [ %375, %371 ]
  %386 = zext nneg i32 %385 to i64
  %387 = getelementptr inbounds [36 x i8], ptr @LL_bits, i64 0, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !41
  %389 = zext i8 %388 to i32
  %390 = load i32, ptr %66, align 4, !tbaa !39
  %391 = load ptr, ptr %67, align 8, !tbaa !40
  %392 = getelementptr inbounds i32, ptr %391, i64 %386
  %393 = load i32, ptr %392, align 4, !tbaa !23
  %394 = add i32 %393, 1
  %395 = call i32 @llvm.ctlz.i32(i32 %394, i1 true), !range !38
  %396 = add nuw nsw i32 %395, %389
  %397 = shl nuw nsw i32 %396, 8
  %398 = add i32 %390, -7936
  %399 = add i32 %398, %397
  %400 = icmp eq i32 %321, 131072
  br i1 %400, label %401, label %409

401:                                              ; preds = %384
  %402 = getelementptr inbounds i32, ptr %391, i64 35
  %403 = load i32, ptr %402, align 4, !tbaa !23
  %404 = add i32 %403, 1
  %405 = call i32 @llvm.ctlz.i32(i32 %404, i1 true), !range !38
  %406 = shl nuw nsw i32 %405, 8
  %407 = add i32 %390, -3584
  %408 = add i32 %407, %406
  br label %438

409:                                              ; preds = %384
  %410 = icmp ugt i32 %321, 63
  br i1 %410, label %411, label %417

411:                                              ; preds = %355, %409
  %412 = phi i32 [ %365, %355 ], [ %398, %409 ]
  %413 = phi ptr [ %357, %355 ], [ %391, %409 ]
  %414 = phi i32 [ %364, %355 ], [ %399, %409 ]
  %415 = call i32 @llvm.ctlz.i32(i32 %321, i1 true), !range !38
  %416 = sub nuw nsw i32 50, %415
  br label %422

417:                                              ; preds = %409
  %418 = zext nneg i32 %321 to i64
  %419 = getelementptr inbounds [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !41
  %421 = zext i8 %420 to i32
  br label %422

422:                                              ; preds = %417, %411
  %423 = phi i32 [ %398, %417 ], [ %412, %411 ]
  %424 = phi ptr [ %391, %417 ], [ %413, %411 ]
  %425 = phi i32 [ %399, %417 ], [ %414, %411 ]
  %426 = phi i32 [ %421, %417 ], [ %416, %411 ]
  %427 = zext nneg i32 %426 to i64
  %428 = getelementptr inbounds [36 x i8], ptr @LL_bits, i64 0, i64 %427
  %429 = load i8, ptr %428, align 1, !tbaa !41
  %430 = zext i8 %429 to i32
  %431 = getelementptr inbounds i32, ptr %424, i64 %427
  %432 = load i32, ptr %431, align 4, !tbaa !23
  %433 = add i32 %432, 1
  %434 = call i32 @llvm.ctlz.i32(i32 %433, i1 true), !range !38
  %435 = add nuw nsw i32 %434, %430
  %436 = shl nuw nsw i32 %435, 8
  %437 = add i32 %423, %436
  br label %438

438:                                              ; preds = %376, %401, %422
  %439 = phi i32 [ %399, %401 ], [ %425, %422 ], [ %380, %376 ]
  %440 = phi i32 [ %408, %401 ], [ %437, %422 ], [ %383, %376 ]
  %441 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %439, i32 %440), !nosanitize !47
  %442 = extractvalue { i32, i1 } %441, 1, !nosanitize !47
  br i1 %442, label %443, label %444, !nosanitize !47

443:                                              ; preds = %438
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

444:                                              ; preds = %438
  %445 = extractvalue { i32, i1 } %441, 0, !nosanitize !47
  %446 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %348, i32 %445), !nosanitize !47
  %447 = extractvalue { i32, i1 } %446, 0, !nosanitize !47
  %448 = extractvalue { i32, i1 } %446, 1, !nosanitize !47
  br i1 %448, label %281, label %449, !nosanitize !47

449:                                              ; preds = %444
  %450 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %315
  %451 = load i32, ptr %450, align 4, !tbaa !42
  %452 = icmp sgt i32 %447, %451
  br i1 %452, label %453, label %456

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %315, i32 3
  %455 = load i32, ptr %454, align 4, !tbaa !36
  br label %458

456:                                              ; preds = %449
  %457 = getelementptr inbounds i8, ptr %450, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %450, ptr noundef nonnull align 4 dereferenceable(28) %319, i64 28, i1 false), !tbaa.struct !59
  store i32 %322, ptr %457, align 4, !tbaa !36
  store i32 %447, ptr %450, align 4, !tbaa !42
  br label %458

458:                                              ; preds = %453, %456
  %459 = phi i32 [ %451, %453 ], [ %447, %456 ]
  %460 = phi i32 [ %455, %453 ], [ %322, %456 ]
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %507

462:                                              ; preds = %458
  %463 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %315, i32 2
  %464 = load i32, ptr %463, align 4, !tbaa !34
  %465 = sub i32 %313, %464
  %466 = zext i32 %465 to i64
  %467 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %466, i32 4
  %468 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %315, i32 1
  %469 = load i32, ptr %468, align 4, !tbaa !48
  %470 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %466, i32 3
  %471 = load i32, ptr %470, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %467, i64 12, i1 false)
  %472 = icmp ugt i32 %469, 3
  br i1 %472, label %473, label %477

473:                                              ; preds = %462
  %474 = load i32, ptr %76, align 4, !tbaa !23
  %475 = load i32, ptr %8, align 8, !tbaa !23
  store i32 %475, ptr %76, align 4, !tbaa !23
  %476 = add i32 %469, -3
  br label %499

477:                                              ; preds = %462
  %478 = icmp eq i32 %471, 0
  %479 = zext i1 %478 to i32
  %480 = add nsw i32 %469, -1
  %481 = add nsw i32 %480, %479
  switch i32 %481, label %487 [
    i32 0, label %482
    i32 3, label %484
  ]

482:                                              ; preds = %477
  %483 = load i32, ptr %75, align 8
  br label %502

484:                                              ; preds = %477
  %485 = load i32, ptr %8, align 8, !tbaa !23
  %486 = add i32 %485, -1
  br label %492

487:                                              ; preds = %477
  %488 = zext i32 %481 to i64
  %489 = getelementptr inbounds i32, ptr %8, i64 %488
  %490 = load i32, ptr %489, align 4, !tbaa !23
  %491 = load i32, ptr %8, align 8, !tbaa !23
  br label %492

492:                                              ; preds = %487, %484
  %493 = phi i32 [ %485, %484 ], [ %491, %487 ]
  %494 = phi i32 [ %486, %484 ], [ %490, %487 ]
  %495 = icmp eq i32 %481, 1
  %496 = load i32, ptr %75, align 8
  %497 = load i32, ptr %76, align 4
  %498 = select i1 %495, i32 %496, i32 %497
  store i32 %493, ptr %76, align 4, !tbaa !23
  br label %499

499:                                              ; preds = %492, %473
  %500 = phi i32 [ %498, %492 ], [ %474, %473 ]
  %501 = phi i32 [ %494, %492 ], [ %476, %473 ]
  store i32 %501, ptr %8, align 8, !tbaa !23
  br label %502

502:                                              ; preds = %482, %499
  %503 = phi i32 [ %483, %482 ], [ %500, %499 ]
  %504 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8)
  %505 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %315, i32 4
  store i64 %504, ptr %505, align 4
  %506 = getelementptr inbounds i8, ptr %505, i64 8
  store i32 %503, ptr %506, align 4
  br label %507

507:                                              ; preds = %502, %458
  %508 = icmp ugt ptr %316, %16
  br i1 %508, label %509, label %511

509:                                              ; preds = %507
  %510 = add i32 %313, 1
  br label %763

511:                                              ; preds = %507
  %512 = icmp eq i32 %313, %314
  br i1 %512, label %767, label %513

513:                                              ; preds = %511
  %514 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %459, i32 128), !nosanitize !47
  %515 = extractvalue { i32, i1 } %514, 1, !nosanitize !47
  br i1 %515, label %281, label %516, !nosanitize !47

516:                                              ; preds = %513
  %517 = extractvalue { i32, i1 } %514, 0, !nosanitize !47
  %518 = add i32 %313, 1
  %519 = zext i32 %518 to i64
  %520 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %519
  %521 = load i32, ptr %520, align 4, !tbaa !42
  %522 = icmp sgt i32 %521, %517
  br i1 %522, label %523, label %763

523:                                              ; preds = %516
  %524 = load i32, ptr %65, align 8, !tbaa !37
  %525 = icmp eq i32 %524, 1
  br i1 %525, label %535, label %526

526:                                              ; preds = %523
  %527 = load i32, ptr %66, align 4, !tbaa !39
  %528 = load ptr, ptr %67, align 8, !tbaa !40
  %529 = load i32, ptr %528, align 4, !tbaa !23
  %530 = add i32 %529, 1
  %531 = call i32 @llvm.ctlz.i32(i32 %530, i1 true), !range !38
  %532 = shl nuw nsw i32 %531, 8
  %533 = add i32 %527, -7936
  %534 = add i32 %533, %532
  br label %535

535:                                              ; preds = %523, %526
  %536 = phi i32 [ %534, %526 ], [ 0, %523 ]
  %537 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %459, i32 %536), !nosanitize !47
  %538 = extractvalue { i32, i1 } %537, 0, !nosanitize !47
  %539 = extractvalue { i32, i1 } %537, 1, !nosanitize !47
  br i1 %539, label %281, label %540, !nosanitize !47

540:                                              ; preds = %535
  %541 = zext i1 %461 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  %542 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %315, i32 4
  %543 = call i32 %34(ptr noundef %45, ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef %316, ptr noundef %15, ptr noundef nonnull %542, i32 noundef %541, i32 noundef %39) #12
  store i32 %543, ptr %13, align 4, !tbaa !23
  %544 = ptrtoint ptr %316 to i64
  %545 = sub i64 %544, %55
  %546 = trunc i64 %545 to i32
  %547 = sub i64 %56, %544
  %548 = trunc i64 %547 to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef nonnull %11, ptr noundef %45, ptr noundef nonnull %13, i32 noundef %546, i32 noundef %548, i32 noundef %39)
  %549 = load i32, ptr %13, align 4, !tbaa !23
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %540
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  br label %763

552:                                              ; preds = %540
  %553 = add i32 %549, -1
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds %struct.ZSTD_match_t, ptr %45, i64 %554, i32 1
  %556 = load i32, ptr %555, align 4, !tbaa !43
  %557 = icmp ule i32 %556, %37
  %558 = add i32 %556, %313
  %559 = icmp ult i32 %558, 4096
  %560 = and i1 %557, %559
  %561 = zext nneg i32 %556 to i64
  %562 = getelementptr inbounds i8, ptr %316, i64 %561
  %563 = icmp ult ptr %562, %15
  %564 = select i1 %560, i1 %563, i1 false
  br i1 %564, label %565, label %781

565:                                              ; preds = %552
  %566 = zext i32 %549 to i64
  br label %567

567:                                              ; preds = %565, %755
  %568 = phi i64 [ 0, %565 ], [ %757, %755 ]
  %569 = phi i32 [ %314, %565 ], [ %756, %755 ]
  %570 = getelementptr inbounds %struct.ZSTD_match_t, ptr %45, i64 %568
  %571 = load i32, ptr %570, align 4, !tbaa !45
  %572 = getelementptr inbounds %struct.ZSTD_match_t, ptr %45, i64 %568, i32 1
  %573 = load i32, ptr %572, align 4, !tbaa !43
  %574 = icmp eq i64 %568, 0
  br i1 %574, label %580, label %575

575:                                              ; preds = %567
  %576 = add nsw i64 %568, -1
  %577 = getelementptr inbounds %struct.ZSTD_match_t, ptr %45, i64 %576, i32 1
  %578 = load i32, ptr %577, align 4, !tbaa !43
  %579 = add i32 %578, 1
  br label %580

580:                                              ; preds = %575, %567
  %581 = phi i32 [ %579, %575 ], [ %39, %567 ]
  %582 = icmp ult i32 %573, %581
  br i1 %582, label %755, label %583

583:                                              ; preds = %580
  %584 = call i32 @llvm.ctlz.i32(i32 %571, i1 true), !range !38
  %585 = xor i32 %584, 31
  %586 = load i32, ptr %65, align 8, !tbaa !37
  %587 = icmp eq i32 %586, 1
  %588 = shl nuw nsw i32 %585, 8
  %589 = add nuw nsw i32 %588, 4096
  br i1 %587, label %590, label %653

590:                                              ; preds = %583
  %591 = add i32 %313, %573
  br label %592

592:                                              ; preds = %590, %634
  %593 = phi i32 [ 0, %590 ], [ %643, %634 ]
  %594 = phi i32 [ %569, %590 ], [ %636, %634 ]
  %595 = phi i32 [ %573, %590 ], [ %641, %634 ]
  %596 = sub i32 %591, %593
  %597 = zext i32 %596 to i64
  %598 = add i32 %595, %313
  %599 = add i32 %595, -2
  %600 = call i32 @llvm.ctlz.i32(i32 %599, i1 true), !range !38
  %601 = shl nuw nsw i32 %600, 8
  %602 = xor i32 %601, 7936
  %603 = add nuw nsw i32 %589, %602
  %604 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %538, i32 %603), !nosanitize !47
  %605 = extractvalue { i32, i1 } %604, 0, !nosanitize !47
  %606 = extractvalue { i32, i1 } %604, 1, !nosanitize !47
  br i1 %606, label %281, label %607, !nosanitize !47

607:                                              ; preds = %592
  %608 = icmp ugt i32 %598, %594
  br i1 %608, label %616, label %609

609:                                              ; preds = %607
  %610 = zext i32 %598 to i64
  %611 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %610
  %612 = load i32, ptr %611, align 4, !tbaa !42
  %613 = icmp slt i32 %605, %612
  br i1 %613, label %614, label %755

614:                                              ; preds = %609
  %615 = zext i32 %598 to i64
  br label %634

616:                                              ; preds = %607
  %617 = zext i32 %594 to i64
  %618 = zext i32 %598 to i64
  %619 = sub nsw i64 %597, %617
  %620 = and i64 %619, 1
  %621 = icmp eq i64 %620, 0
  br i1 %621, label %626, label %622

622:                                              ; preds = %616
  %623 = add nuw nsw i64 %617, 1
  %624 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %623
  store i32 1073741824, ptr %624, align 4, !tbaa !42
  %625 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %623, i32 3
  store i32 1, ptr %625, align 4, !tbaa !36
  br label %626

626:                                              ; preds = %622, %616
  %627 = phi i64 [ %617, %616 ], [ %623, %622 ]
  %628 = phi i64 [ undef, %616 ], [ %623, %622 ]
  %629 = add nsw i64 %597, -1
  %630 = icmp eq i64 %629, %617
  br i1 %630, label %631, label %644

631:                                              ; preds = %644, %626
  %632 = phi i64 [ %628, %626 ], [ %649, %644 ]
  %633 = trunc i64 %632 to i32
  br label %634

634:                                              ; preds = %614, %631
  %635 = phi i64 [ %615, %614 ], [ %618, %631 ]
  %636 = phi i32 [ %594, %614 ], [ %633, %631 ]
  %637 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %635
  %638 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %635, i32 2
  store i32 %595, ptr %638, align 4, !tbaa !34
  %639 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %635, i32 1
  store i32 %571, ptr %639, align 4, !tbaa !48
  %640 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %635, i32 3
  store i32 0, ptr %640, align 4, !tbaa !36
  store i32 %605, ptr %637, align 4, !tbaa !42
  %641 = add i32 %595, -1
  %642 = icmp ult i32 %641, %581
  %643 = add i32 %593, 1
  br i1 %642, label %755, label %592, !llvm.loop !60

644:                                              ; preds = %626, %644
  %645 = phi i64 [ %649, %644 ], [ %627, %626 ]
  %646 = add nuw nsw i64 %645, 1
  %647 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %646
  store i32 1073741824, ptr %647, align 4, !tbaa !42
  %648 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %646, i32 3
  store i32 1, ptr %648, align 4, !tbaa !36
  %649 = add nuw nsw i64 %645, 2
  %650 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %649
  store i32 1073741824, ptr %650, align 4, !tbaa !42
  %651 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %649, i32 3
  store i32 1, ptr %651, align 4, !tbaa !36
  %652 = icmp ult i64 %649, %618
  br i1 %652, label %644, label %631, !llvm.loop !61

653:                                              ; preds = %583
  %654 = icmp ugt i32 %585, 19
  %655 = shl nuw nsw i32 %585, 9
  %656 = add nsw i32 %655, -9677
  %657 = select i1 %654, i32 %656, i32 51
  %658 = zext nneg i32 %585 to i64
  %659 = load i32, ptr %69, align 4, !tbaa !50
  %660 = load ptr, ptr %70, align 8, !tbaa !51
  %661 = getelementptr inbounds i32, ptr %660, i64 %658
  %662 = load i32, ptr %71, align 8, !tbaa !52
  %663 = load ptr, ptr %72, align 8, !tbaa !53
  %664 = add i32 %657, %659
  %665 = add i32 %313, %573
  br label %666

666:                                              ; preds = %653, %745
  %667 = phi i32 [ 0, %653 ], [ %754, %745 ]
  %668 = phi i32 [ %569, %653 ], [ %747, %745 ]
  %669 = phi i32 [ %573, %653 ], [ %752, %745 ]
  %670 = sub i32 %665, %667
  %671 = zext i32 %670 to i64
  %672 = add i32 %669, %313
  %673 = add i32 %669, -3
  %674 = load i32, ptr %661, align 4, !tbaa !23
  %675 = add i32 %674, 1
  %676 = call i32 @llvm.ctlz.i32(i32 %675, i1 true), !range !38
  %677 = shl nuw nsw i32 %676, 8
  %678 = add nsw i32 %677, -7936
  %679 = icmp ugt i32 %673, 127
  br i1 %679, label %680, label %683

680:                                              ; preds = %666
  %681 = call i32 @llvm.ctlz.i32(i32 %673, i1 true), !range !38
  %682 = sub nuw nsw i32 67, %681
  br label %688

683:                                              ; preds = %666
  %684 = zext nneg i32 %673 to i64
  %685 = getelementptr inbounds [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %684
  %686 = load i8, ptr %685, align 1, !tbaa !41
  %687 = zext i8 %686 to i32
  br label %688

688:                                              ; preds = %680, %683
  %689 = phi i32 [ %682, %680 ], [ %687, %683 ]
  %690 = zext nneg i32 %689 to i64
  %691 = getelementptr inbounds [53 x i8], ptr @ML_bits, i64 0, i64 %690
  %692 = load i8, ptr %691, align 1, !tbaa !41
  %693 = zext i8 %692 to i32
  %694 = getelementptr inbounds i32, ptr %663, i64 %690
  %695 = load i32, ptr %694, align 4, !tbaa !23
  %696 = add i32 %695, 1
  %697 = call i32 @llvm.ctlz.i32(i32 %696, i1 true), !range !38
  %698 = shl nuw nsw i32 %697, 8
  %699 = add nsw i32 %698, -7936
  %700 = add nuw nsw i32 %585, %693
  %701 = shl nuw nsw i32 %700, 8
  %702 = add i32 %664, %678
  %703 = add i32 %702, %662
  %704 = add i32 %703, %701
  %705 = add i32 %704, %699
  %706 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %538, i32 %705), !nosanitize !47
  %707 = extractvalue { i32, i1 } %706, 0, !nosanitize !47
  %708 = extractvalue { i32, i1 } %706, 1, !nosanitize !47
  br i1 %708, label %281, label %709, !nosanitize !47

709:                                              ; preds = %688
  %710 = icmp ugt i32 %672, %668
  br i1 %710, label %718, label %711

711:                                              ; preds = %709
  %712 = zext i32 %672 to i64
  %713 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %712
  %714 = load i32, ptr %713, align 4, !tbaa !42
  %715 = icmp slt i32 %707, %714
  br i1 %715, label %716, label %755

716:                                              ; preds = %711
  %717 = zext i32 %672 to i64
  br label %745

718:                                              ; preds = %709
  %719 = zext i32 %668 to i64
  %720 = zext i32 %672 to i64
  %721 = sub nsw i64 %671, %719
  %722 = and i64 %721, 1
  %723 = icmp eq i64 %722, 0
  br i1 %723, label %728, label %724

724:                                              ; preds = %718
  %725 = add nuw nsw i64 %719, 1
  %726 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %725
  store i32 1073741824, ptr %726, align 4, !tbaa !42
  %727 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %725, i32 3
  store i32 1, ptr %727, align 4, !tbaa !36
  br label %728

728:                                              ; preds = %724, %718
  %729 = phi i64 [ %719, %718 ], [ %725, %724 ]
  %730 = phi i64 [ undef, %718 ], [ %725, %724 ]
  %731 = add nsw i64 %671, -1
  %732 = icmp eq i64 %731, %719
  br i1 %732, label %742, label %733

733:                                              ; preds = %728, %733
  %734 = phi i64 [ %738, %733 ], [ %729, %728 ]
  %735 = add nuw nsw i64 %734, 1
  %736 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %735
  store i32 1073741824, ptr %736, align 4, !tbaa !42
  %737 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %735, i32 3
  store i32 1, ptr %737, align 4, !tbaa !36
  %738 = add nuw nsw i64 %734, 2
  %739 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %738
  store i32 1073741824, ptr %739, align 4, !tbaa !42
  %740 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %738, i32 3
  store i32 1, ptr %740, align 4, !tbaa !36
  %741 = icmp ult i64 %738, %720
  br i1 %741, label %733, label %742, !llvm.loop !61

742:                                              ; preds = %733, %728
  %743 = phi i64 [ %730, %728 ], [ %738, %733 ]
  %744 = trunc i64 %743 to i32
  br label %745

745:                                              ; preds = %716, %742
  %746 = phi i64 [ %717, %716 ], [ %720, %742 ]
  %747 = phi i32 [ %668, %716 ], [ %744, %742 ]
  %748 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %746
  %749 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %746, i32 2
  store i32 %669, ptr %749, align 4, !tbaa !34
  %750 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %746, i32 1
  store i32 %571, ptr %750, align 4, !tbaa !48
  %751 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %746, i32 3
  store i32 0, ptr %751, align 4, !tbaa !36
  store i32 %707, ptr %748, align 4, !tbaa !42
  %752 = add i32 %669, -1
  %753 = icmp ult i32 %752, %581
  %754 = add i32 %667, 1
  br i1 %753, label %755, label %666, !llvm.loop !60

755:                                              ; preds = %745, %711, %634, %609, %580
  %756 = phi i32 [ %569, %580 ], [ %594, %609 ], [ %636, %634 ], [ %668, %711 ], [ %747, %745 ]
  %757 = add nuw nsw i64 %568, 1
  %758 = icmp eq i64 %757, %566
  br i1 %758, label %759, label %567, !llvm.loop !62

759:                                              ; preds = %755
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  %760 = add i32 %756, 1
  %761 = zext i32 %760 to i64
  %762 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %761
  store i32 1073741824, ptr %762, align 4, !tbaa !42
  br label %763

763:                                              ; preds = %509, %516, %759, %551
  %764 = phi i32 [ %510, %509 ], [ %518, %516 ], [ %518, %759 ], [ %518, %551 ]
  %765 = phi i32 [ %314, %509 ], [ %314, %516 ], [ %756, %759 ], [ %314, %551 ]
  %766 = icmp ugt i32 %764, %765
  br i1 %766, label %767, label %312, !llvm.loop !63

767:                                              ; preds = %511, %763, %307
  %768 = phi i32 [ 0, %307 ], [ %313, %511 ], [ %765, %763 ]
  %769 = zext i32 %768 to i64
  %770 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %769
  %771 = load i32, ptr %770, align 4, !tbaa.struct !59
  %772 = getelementptr inbounds i8, ptr %770, i64 4
  %773 = load i32, ptr %772, align 4, !tbaa.struct !64
  %774 = getelementptr inbounds i8, ptr %770, i64 8
  %775 = load i32, ptr %774, align 4, !tbaa.struct !65
  %776 = getelementptr inbounds i8, ptr %770, i64 12
  %777 = load i32, ptr %776, align 4, !tbaa.struct !66
  %778 = getelementptr inbounds i8, ptr %770, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %778, i64 12, i1 false), !tbaa.struct !67
  %779 = sub i32 %768, %775
  %780 = icmp eq i32 %775, 0
  br i1 %780, label %785, label %790

781:                                              ; preds = %552
  %782 = getelementptr inbounds %struct.ZSTD_match_t, ptr %45, i64 %554
  %783 = load i32, ptr %782, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  %784 = icmp eq i32 %556, 0
  br i1 %784, label %785, label %792

785:                                              ; preds = %781, %767
  %786 = phi i32 [ %98, %781 ], [ %771, %767 ]
  %787 = phi i32 [ %558, %781 ], [ %768, %767 ]
  %788 = zext i32 %787 to i64
  %789 = getelementptr inbounds i8, ptr %96, i64 %788
  br label %1238, !llvm.loop !68

790:                                              ; preds = %767
  %791 = icmp eq i32 %777, 0
  br i1 %791, label %792, label %841

792:                                              ; preds = %781, %790
  %793 = phi i32 [ %779, %790 ], [ %313, %781 ]
  %794 = phi i32 [ %775, %790 ], [ %556, %781 ]
  %795 = phi i32 [ %773, %790 ], [ %783, %781 ]
  %796 = phi i32 [ %771, %790 ], [ %98, %781 ]
  %797 = zext i32 %793 to i64
  %798 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %797, i32 3
  %799 = load i32, ptr %798, align 4, !tbaa !36
  br label %800

800:                                              ; preds = %792, %167
  %801 = phi i32 [ %102, %167 ], [ %799, %792 ]
  %802 = phi i32 [ 0, %167 ], [ %793, %792 ]
  %803 = phi i32 [ %165, %167 ], [ %794, %792 ]
  %804 = phi i32 [ %169, %167 ], [ %795, %792 ]
  %805 = phi i32 [ %98, %167 ], [ %796, %792 ]
  %806 = zext i32 %802 to i64
  %807 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %806, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %807, i64 12, i1 false)
  %808 = icmp ugt i32 %804, 3
  br i1 %808, label %809, label %813

809:                                              ; preds = %800
  %810 = load i32, ptr %78, align 4, !tbaa !23
  %811 = load i32, ptr %7, align 8, !tbaa !23
  store i32 %811, ptr %78, align 4, !tbaa !23
  %812 = add i32 %804, -3
  br label %835

813:                                              ; preds = %800
  %814 = icmp eq i32 %801, 0
  %815 = zext i1 %814 to i32
  %816 = add nsw i32 %804, -1
  %817 = add nsw i32 %816, %815
  switch i32 %817, label %823 [
    i32 0, label %818
    i32 3, label %820
  ]

818:                                              ; preds = %813
  %819 = load i32, ptr %77, align 8
  br label %838

820:                                              ; preds = %813
  %821 = load i32, ptr %7, align 8, !tbaa !23
  %822 = add i32 %821, -1
  br label %828

823:                                              ; preds = %813
  %824 = zext i32 %817 to i64
  %825 = getelementptr inbounds i32, ptr %7, i64 %824
  %826 = load i32, ptr %825, align 4, !tbaa !23
  %827 = load i32, ptr %7, align 8, !tbaa !23
  br label %828

828:                                              ; preds = %823, %820
  %829 = phi i32 [ %821, %820 ], [ %827, %823 ]
  %830 = phi i32 [ %822, %820 ], [ %826, %823 ]
  %831 = icmp eq i32 %817, 1
  %832 = load i32, ptr %77, align 8
  %833 = load i32, ptr %78, align 4
  %834 = select i1 %831, i32 %832, i32 %833
  store i32 %829, ptr %78, align 4, !tbaa !23
  br label %835

835:                                              ; preds = %828, %809
  %836 = phi i32 [ %834, %828 ], [ %810, %809 ]
  %837 = phi i32 [ %830, %828 ], [ %812, %809 ]
  store i32 %837, ptr %7, align 8, !tbaa !23
  br label %838

838:                                              ; preds = %818, %835
  %839 = phi i32 [ %819, %818 ], [ %836, %835 ]
  %840 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7)
  store i64 %840, ptr %2, align 4
  store i32 %839, ptr %79, align 4
  br label %843

841:                                              ; preds = %790
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %778, i64 12, i1 false)
  %842 = sub i32 %779, %777
  br label %843

843:                                              ; preds = %841, %838
  %844 = phi i32 [ 0, %838 ], [ %777, %841 ]
  %845 = phi i32 [ %803, %838 ], [ %775, %841 ]
  %846 = phi i32 [ %804, %838 ], [ %773, %841 ]
  %847 = phi i32 [ %805, %838 ], [ %771, %841 ]
  %848 = phi i32 [ %802, %838 ], [ %842, %841 ]
  %849 = add i32 %848, 2
  %850 = zext i32 %849 to i64
  %851 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %850
  store i32 %847, ptr %851, align 4, !tbaa.struct !59
  %852 = getelementptr inbounds i8, ptr %851, i64 4
  store i32 %846, ptr %852, align 4, !tbaa.struct !64
  %853 = getelementptr inbounds i8, ptr %851, i64 8
  store i32 %845, ptr %853, align 4, !tbaa.struct !65
  %854 = getelementptr inbounds i8, ptr %851, i64 12
  store i32 %844, ptr %854, align 4, !tbaa.struct !66
  %855 = getelementptr inbounds i8, ptr %851, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %855, ptr noundef nonnull align 4 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !67
  %856 = zext i32 %848 to i64
  %857 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %856
  %858 = load i64, ptr %857, align 4
  %859 = getelementptr inbounds i8, ptr %857, i64 8
  %860 = load i32, ptr %859, align 4, !tbaa.struct !65
  %861 = getelementptr inbounds i8, ptr %857, i64 12
  %862 = load i32, ptr %861, align 4, !tbaa.struct !66
  %863 = zext i32 %849 to i64
  %864 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %863, i32 3
  store i32 %862, ptr %864, align 4, !tbaa !36
  %865 = icmp eq i32 %860, 0
  br i1 %865, label %892, label %866

866:                                              ; preds = %843, %866
  %867 = phi i32 [ %888, %866 ], [ %862, %843 ]
  %868 = phi i32 [ %886, %866 ], [ %860, %843 ]
  %869 = phi i64 [ %884, %866 ], [ %858, %843 ]
  %870 = phi i64 [ %882, %866 ], [ %856, %843 ]
  %871 = phi i32 [ %881, %866 ], [ %848, %843 ]
  %872 = phi i32 [ %874, %866 ], [ %849, %843 ]
  %873 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %870, i32 4
  %874 = add i32 %872, -1
  %875 = zext i32 %874 to i64
  %876 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %875
  store i64 %869, ptr %876, align 4
  %877 = getelementptr inbounds i8, ptr %876, i64 8
  store i32 %868, ptr %877, align 4, !tbaa.struct !65
  %878 = getelementptr inbounds i8, ptr %876, i64 12
  store i32 %867, ptr %878, align 4, !tbaa.struct !66
  %879 = getelementptr inbounds i8, ptr %876, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %879, ptr noundef nonnull align 4 dereferenceable(12) %873, i64 12, i1 false)
  %880 = add i32 %868, %867
  %881 = sub i32 %871, %880
  %882 = zext i32 %881 to i64
  %883 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %882
  %884 = load i64, ptr %883, align 4
  %885 = getelementptr inbounds i8, ptr %883, i64 8
  %886 = load i32, ptr %885, align 4, !tbaa.struct !65
  %887 = getelementptr inbounds i8, ptr %883, i64 12
  %888 = load i32, ptr %887, align 4, !tbaa.struct !66
  %889 = zext i32 %874 to i64
  %890 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %889, i32 3
  store i32 %888, ptr %890, align 4, !tbaa !36
  %891 = icmp eq i32 %886, 0
  br i1 %891, label %892, label %866

892:                                              ; preds = %866, %843
  %893 = phi i32 [ %849, %843 ], [ %874, %866 ]
  %894 = icmp ugt i32 %893, %849
  br i1 %894, label %1211, label %895

895:                                              ; preds = %892, %1206
  %896 = phi ptr [ %1207, %1206 ], [ %97, %892 ]
  %897 = phi i32 [ %1209, %1206 ], [ %893, %892 ]
  %898 = ptrtoint ptr %896 to i64
  %899 = zext i32 %897 to i64
  %900 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %899, i32 3
  %901 = load i32, ptr %900, align 4, !tbaa !36
  %902 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %899, i32 2
  %903 = load i32, ptr %902, align 4, !tbaa !34
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %905, label %908

905:                                              ; preds = %895
  %906 = zext i32 %901 to i64
  %907 = getelementptr inbounds i8, ptr %896, i64 %906
  br label %1206

908:                                              ; preds = %895
  %909 = add i32 %903, %901
  %910 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %43, i64 %899, i32 1
  %911 = load i32, ptr %910, align 4, !tbaa !48
  %912 = load i32, ptr %73, align 8, !tbaa !55
  %913 = icmp eq i32 %912, 2
  br i1 %913, label %975, label %914

914:                                              ; preds = %908
  %915 = icmp eq i32 %901, 0
  br i1 %915, label %971, label %916

916:                                              ; preds = %914
  %917 = load ptr, ptr %14, align 8, !tbaa !57
  %918 = zext i32 %901 to i64
  %919 = and i64 %918, 3
  %920 = icmp ult i32 %901, 4
  br i1 %920, label %956, label %921

921:                                              ; preds = %916
  %922 = and i64 %918, 4294967292
  br label %923

923:                                              ; preds = %923, %921
  %924 = phi i64 [ 0, %921 ], [ %953, %923 ]
  %925 = phi i64 [ 0, %921 ], [ %954, %923 ]
  %926 = getelementptr inbounds i8, ptr %896, i64 %924
  %927 = load i8, ptr %926, align 1, !tbaa !41
  %928 = zext i8 %927 to i64
  %929 = getelementptr inbounds i32, ptr %917, i64 %928
  %930 = load i32, ptr %929, align 4, !tbaa !23
  %931 = add i32 %930, 2
  store i32 %931, ptr %929, align 4, !tbaa !23
  %932 = or disjoint i64 %924, 1
  %933 = getelementptr inbounds i8, ptr %896, i64 %932
  %934 = load i8, ptr %933, align 1, !tbaa !41
  %935 = zext i8 %934 to i64
  %936 = getelementptr inbounds i32, ptr %917, i64 %935
  %937 = load i32, ptr %936, align 4, !tbaa !23
  %938 = add i32 %937, 2
  store i32 %938, ptr %936, align 4, !tbaa !23
  %939 = or disjoint i64 %924, 2
  %940 = getelementptr inbounds i8, ptr %896, i64 %939
  %941 = load i8, ptr %940, align 1, !tbaa !41
  %942 = zext i8 %941 to i64
  %943 = getelementptr inbounds i32, ptr %917, i64 %942
  %944 = load i32, ptr %943, align 4, !tbaa !23
  %945 = add i32 %944, 2
  store i32 %945, ptr %943, align 4, !tbaa !23
  %946 = or disjoint i64 %924, 3
  %947 = getelementptr inbounds i8, ptr %896, i64 %946
  %948 = load i8, ptr %947, align 1, !tbaa !41
  %949 = zext i8 %948 to i64
  %950 = getelementptr inbounds i32, ptr %917, i64 %949
  %951 = load i32, ptr %950, align 4, !tbaa !23
  %952 = add i32 %951, 2
  store i32 %952, ptr %950, align 4, !tbaa !23
  %953 = add nuw nsw i64 %924, 4
  %954 = add i64 %925, 4
  %955 = icmp eq i64 %954, %922
  br i1 %955, label %956, label %923, !llvm.loop !69

956:                                              ; preds = %923, %916
  %957 = phi i64 [ 0, %916 ], [ %953, %923 ]
  %958 = icmp eq i64 %919, 0
  br i1 %958, label %971, label %959

959:                                              ; preds = %956, %959
  %960 = phi i64 [ %968, %959 ], [ %957, %956 ]
  %961 = phi i64 [ %969, %959 ], [ 0, %956 ]
  %962 = getelementptr inbounds i8, ptr %896, i64 %960
  %963 = load i8, ptr %962, align 1, !tbaa !41
  %964 = zext i8 %963 to i64
  %965 = getelementptr inbounds i32, ptr %917, i64 %964
  %966 = load i32, ptr %965, align 4, !tbaa !23
  %967 = add i32 %966, 2
  store i32 %967, ptr %965, align 4, !tbaa !23
  %968 = add nuw nsw i64 %960, 1
  %969 = add i64 %961, 1
  %970 = icmp eq i64 %969, %919
  br i1 %970, label %971, label %959, !llvm.loop !70

971:                                              ; preds = %956, %959, %914
  %972 = shl i32 %901, 1
  %973 = load i32, ptr %80, align 8, !tbaa !72
  %974 = add i32 %973, %972
  store i32 %974, ptr %80, align 8, !tbaa !72
  br label %975

975:                                              ; preds = %971, %908
  %976 = icmp ugt i32 %901, 63
  br i1 %976, label %977, label %980

977:                                              ; preds = %975
  %978 = call i32 @llvm.ctlz.i32(i32 %901, i1 true), !range !38
  %979 = sub nuw nsw i32 50, %978
  br label %985

980:                                              ; preds = %975
  %981 = zext nneg i32 %901 to i64
  %982 = getelementptr inbounds [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %981
  %983 = load i8, ptr %982, align 1, !tbaa !41
  %984 = zext i8 %983 to i32
  br label %985

985:                                              ; preds = %980, %977
  %986 = phi i32 [ %979, %977 ], [ %984, %980 ]
  %987 = load ptr, ptr %67, align 8, !tbaa !40
  %988 = zext nneg i32 %986 to i64
  %989 = getelementptr inbounds i32, ptr %987, i64 %988
  %990 = load i32, ptr %989, align 4, !tbaa !23
  %991 = add i32 %990, 1
  store i32 %991, ptr %989, align 4, !tbaa !23
  %992 = load i32, ptr %81, align 4, !tbaa !73
  %993 = add i32 %992, 1
  store i32 %993, ptr %81, align 4, !tbaa !73
  %994 = call i32 @llvm.ctlz.i32(i32 %911, i1 true), !range !38
  %995 = xor i32 %994, 31
  %996 = load ptr, ptr %70, align 8, !tbaa !51
  %997 = zext nneg i32 %995 to i64
  %998 = getelementptr inbounds i32, ptr %996, i64 %997
  %999 = load i32, ptr %998, align 4, !tbaa !23
  %1000 = add i32 %999, 1
  store i32 %1000, ptr %998, align 4, !tbaa !23
  %1001 = load i32, ptr %82, align 4, !tbaa !74
  %1002 = add i32 %1001, 1
  store i32 %1002, ptr %82, align 4, !tbaa !74
  %1003 = add i32 %903, -3
  %1004 = icmp ugt i32 %1003, 127
  br i1 %1004, label %1005, label %1008

1005:                                             ; preds = %985
  %1006 = call i32 @llvm.ctlz.i32(i32 %1003, i1 true), !range !38
  %1007 = sub nuw nsw i32 67, %1006
  br label %1013

1008:                                             ; preds = %985
  %1009 = zext nneg i32 %1003 to i64
  %1010 = getelementptr inbounds [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %1009
  %1011 = load i8, ptr %1010, align 1, !tbaa !41
  %1012 = zext i8 %1011 to i32
  br label %1013

1013:                                             ; preds = %1005, %1008
  %1014 = phi i32 [ %1007, %1005 ], [ %1012, %1008 ]
  %1015 = load ptr, ptr %72, align 8, !tbaa !53
  %1016 = zext nneg i32 %1014 to i64
  %1017 = getelementptr inbounds i32, ptr %1015, i64 %1016
  %1018 = load i32, ptr %1017, align 4, !tbaa !23
  %1019 = add i32 %1018, 1
  store i32 %1019, ptr %1017, align 4, !tbaa !23
  %1020 = load i32, ptr %83, align 8, !tbaa !75
  %1021 = add i32 %1020, 1
  store i32 %1021, ptr %83, align 8, !tbaa !75
  %1022 = zext i32 %901 to i64
  %1023 = zext i32 %903 to i64
  %1024 = getelementptr inbounds i8, ptr %896, i64 %1022
  %1025 = icmp ugt ptr %1024, %84
  %1026 = load ptr, ptr %85, align 8, !tbaa !76
  br i1 %1025, label %1050, label %1027

1027:                                             ; preds = %1013
  %1028 = load <2 x i64>, ptr %896, align 1, !tbaa !41
  store <2 x i64> %1028, ptr %1026, align 1, !tbaa !41
  %1029 = icmp ugt i32 %901, 16
  br i1 %1029, label %1030, label %1171

1030:                                             ; preds = %1027
  %1031 = load ptr, ptr %85, align 8, !tbaa !76
  %1032 = getelementptr inbounds i8, ptr %1031, i64 16
  %1033 = getelementptr inbounds i8, ptr %896, i64 16
  %1034 = add nsw i64 %1022, -16
  %1035 = getelementptr inbounds i8, ptr %1031, i64 %1022
  %1036 = load <2 x i64>, ptr %1033, align 1, !tbaa !41
  store <2 x i64> %1036, ptr %1032, align 1, !tbaa !41
  %1037 = icmp ult i64 %1034, 17
  br i1 %1037, label %1171, label %1038

1038:                                             ; preds = %1030
  %1039 = getelementptr inbounds i8, ptr %1031, i64 32
  br label %1040

1040:                                             ; preds = %1040, %1038
  %1041 = phi ptr [ %1039, %1038 ], [ %1048, %1040 ]
  %1042 = phi ptr [ %1033, %1038 ], [ %1046, %1040 ]
  %1043 = getelementptr inbounds i8, ptr %1042, i64 16
  %1044 = load <2 x i64>, ptr %1043, align 1, !tbaa !41
  store <2 x i64> %1044, ptr %1041, align 1, !tbaa !41
  %1045 = getelementptr inbounds i8, ptr %1041, i64 16
  %1046 = getelementptr inbounds i8, ptr %1042, i64 32
  %1047 = load <2 x i64>, ptr %1046, align 1, !tbaa !41
  store <2 x i64> %1047, ptr %1045, align 1, !tbaa !41
  %1048 = getelementptr inbounds i8, ptr %1041, i64 32
  %1049 = icmp ult ptr %1048, %1035
  br i1 %1049, label %1040, label %1175, !llvm.loop !78

1050:                                             ; preds = %1013
  %1051 = ptrtoint ptr %1024 to i64
  %1052 = icmp ugt ptr %896, %84
  br i1 %1052, label %1071, label %1053

1053:                                             ; preds = %1050
  %1054 = ptrtoint ptr %896 to i64
  %1055 = sub i64 %86, %1054
  %1056 = getelementptr inbounds i8, ptr %1026, i64 %1055
  %1057 = load <2 x i64>, ptr %896, align 1, !tbaa !41
  store <2 x i64> %1057, ptr %1026, align 1, !tbaa !41
  %1058 = icmp ult i64 %1055, 17
  br i1 %1058, label %1071, label %1059

1059:                                             ; preds = %1053
  %1060 = getelementptr inbounds i8, ptr %1026, i64 16
  br label %1061

1061:                                             ; preds = %1061, %1059
  %1062 = phi ptr [ %1060, %1059 ], [ %1069, %1061 ]
  %1063 = phi ptr [ %896, %1059 ], [ %1067, %1061 ]
  %1064 = getelementptr inbounds i8, ptr %1063, i64 16
  %1065 = load <2 x i64>, ptr %1064, align 1, !tbaa !41
  store <2 x i64> %1065, ptr %1062, align 1, !tbaa !41
  %1066 = getelementptr inbounds i8, ptr %1062, i64 16
  %1067 = getelementptr inbounds i8, ptr %1063, i64 32
  %1068 = load <2 x i64>, ptr %1067, align 1, !tbaa !41
  store <2 x i64> %1068, ptr %1066, align 1, !tbaa !41
  %1069 = getelementptr inbounds i8, ptr %1062, i64 32
  %1070 = icmp ult ptr %1069, %1056
  br i1 %1070, label %1061, label %1071, !llvm.loop !78

1071:                                             ; preds = %1061, %1053, %1050
  %1072 = phi ptr [ %84, %1053 ], [ %896, %1050 ], [ %84, %1061 ]
  %1073 = phi ptr [ %1056, %1053 ], [ %1026, %1050 ], [ %1056, %1061 ]
  %1074 = icmp ult ptr %1072, %1024
  br i1 %1074, label %1075, label %1175

1075:                                             ; preds = %1071
  %1076 = ptrtoint ptr %1073 to i64
  %1077 = ptrtoint ptr %1072 to i64
  %1078 = sub i64 %1051, %1077
  %1079 = getelementptr i8, ptr %1072, i64 %1078
  %1080 = icmp ult i64 %1078, 8
  %1081 = sub i64 %1076, %1077
  %1082 = icmp ult i64 %1081, 32
  %1083 = select i1 %1080, i1 true, i1 %1082
  br i1 %1083, label %1119, label %1084

1084:                                             ; preds = %1075
  %1085 = icmp ult i64 %1078, 32
  br i1 %1085, label %1105, label %1086

1086:                                             ; preds = %1084
  %1087 = and i64 %1078, -32
  br label %1088

1088:                                             ; preds = %1088, %1086
  %1089 = phi i64 [ 0, %1086 ], [ %1096, %1088 ]
  %1090 = getelementptr i8, ptr %1073, i64 %1089
  %1091 = getelementptr i8, ptr %1072, i64 %1089
  %1092 = getelementptr i8, ptr %1091, i64 16
  %1093 = load <16 x i8>, ptr %1091, align 1, !tbaa !41
  %1094 = load <16 x i8>, ptr %1092, align 1, !tbaa !41
  %1095 = getelementptr i8, ptr %1090, i64 16
  store <16 x i8> %1093, ptr %1090, align 1, !tbaa !41
  store <16 x i8> %1094, ptr %1095, align 1, !tbaa !41
  %1096 = add nuw i64 %1089, 32
  %1097 = icmp eq i64 %1096, %1087
  br i1 %1097, label %1098, label %1088, !llvm.loop !79

1098:                                             ; preds = %1088
  %1099 = icmp eq i64 %1078, %1087
  br i1 %1099, label %1175, label %1100

1100:                                             ; preds = %1098
  %1101 = getelementptr i8, ptr %1072, i64 %1087
  %1102 = getelementptr i8, ptr %1073, i64 %1087
  %1103 = and i64 %1078, 24
  %1104 = icmp eq i64 %1103, 0
  br i1 %1104, label %1119, label %1105

1105:                                             ; preds = %1084, %1100
  %1106 = phi i64 [ %1087, %1100 ], [ 0, %1084 ]
  %1107 = and i64 %1078, -8
  %1108 = getelementptr i8, ptr %1073, i64 %1107
  %1109 = getelementptr i8, ptr %1072, i64 %1107
  br label %1110

1110:                                             ; preds = %1110, %1105
  %1111 = phi i64 [ %1106, %1105 ], [ %1115, %1110 ]
  %1112 = getelementptr i8, ptr %1073, i64 %1111
  %1113 = getelementptr i8, ptr %1072, i64 %1111
  %1114 = load <8 x i8>, ptr %1113, align 1, !tbaa !41
  store <8 x i8> %1114, ptr %1112, align 1, !tbaa !41
  %1115 = add nuw i64 %1111, 8
  %1116 = icmp eq i64 %1115, %1107
  br i1 %1116, label %1117, label %1110, !llvm.loop !82

1117:                                             ; preds = %1110
  %1118 = icmp eq i64 %1078, %1107
  br i1 %1118, label %1175, label %1119

1119:                                             ; preds = %1075, %1100, %1117
  %1120 = phi ptr [ %1073, %1075 ], [ %1102, %1100 ], [ %1108, %1117 ]
  %1121 = phi ptr [ %1072, %1075 ], [ %1101, %1100 ], [ %1109, %1117 ]
  %1122 = add i64 %898, %1022
  %1123 = ptrtoint ptr %1121 to i64
  %1124 = sub i64 %1122, %1123
  %1125 = add i64 %898, -1
  %1126 = add i64 %1125, %1022
  %1127 = sub i64 %1126, %1123
  %1128 = and i64 %1124, 7
  %1129 = icmp eq i64 %1128, 0
  br i1 %1129, label %1139, label %1130

1130:                                             ; preds = %1119, %1130
  %1131 = phi ptr [ %1136, %1130 ], [ %1120, %1119 ]
  %1132 = phi ptr [ %1134, %1130 ], [ %1121, %1119 ]
  %1133 = phi i64 [ %1137, %1130 ], [ 0, %1119 ]
  %1134 = getelementptr inbounds i8, ptr %1132, i64 1
  %1135 = load i8, ptr %1132, align 1, !tbaa !41
  %1136 = getelementptr inbounds i8, ptr %1131, i64 1
  store i8 %1135, ptr %1131, align 1, !tbaa !41
  %1137 = add i64 %1133, 1
  %1138 = icmp eq i64 %1137, %1128
  br i1 %1138, label %1139, label %1130, !llvm.loop !83

1139:                                             ; preds = %1130, %1119
  %1140 = phi ptr [ %1120, %1119 ], [ %1136, %1130 ]
  %1141 = phi ptr [ %1121, %1119 ], [ %1134, %1130 ]
  %1142 = icmp ult i64 %1127, 7
  br i1 %1142, label %1175, label %1143

1143:                                             ; preds = %1139, %1143
  %1144 = phi ptr [ %1169, %1143 ], [ %1140, %1139 ]
  %1145 = phi ptr [ %1167, %1143 ], [ %1141, %1139 ]
  %1146 = getelementptr inbounds i8, ptr %1145, i64 1
  %1147 = load i8, ptr %1145, align 1, !tbaa !41
  %1148 = getelementptr inbounds i8, ptr %1144, i64 1
  store i8 %1147, ptr %1144, align 1, !tbaa !41
  %1149 = getelementptr inbounds i8, ptr %1145, i64 2
  %1150 = load i8, ptr %1146, align 1, !tbaa !41
  %1151 = getelementptr inbounds i8, ptr %1144, i64 2
  store i8 %1150, ptr %1148, align 1, !tbaa !41
  %1152 = getelementptr inbounds i8, ptr %1145, i64 3
  %1153 = load i8, ptr %1149, align 1, !tbaa !41
  %1154 = getelementptr inbounds i8, ptr %1144, i64 3
  store i8 %1153, ptr %1151, align 1, !tbaa !41
  %1155 = getelementptr inbounds i8, ptr %1145, i64 4
  %1156 = load i8, ptr %1152, align 1, !tbaa !41
  %1157 = getelementptr inbounds i8, ptr %1144, i64 4
  store i8 %1156, ptr %1154, align 1, !tbaa !41
  %1158 = getelementptr inbounds i8, ptr %1145, i64 5
  %1159 = load i8, ptr %1155, align 1, !tbaa !41
  %1160 = getelementptr inbounds i8, ptr %1144, i64 5
  store i8 %1159, ptr %1157, align 1, !tbaa !41
  %1161 = getelementptr inbounds i8, ptr %1145, i64 6
  %1162 = load i8, ptr %1158, align 1, !tbaa !41
  %1163 = getelementptr inbounds i8, ptr %1144, i64 6
  store i8 %1162, ptr %1160, align 1, !tbaa !41
  %1164 = getelementptr inbounds i8, ptr %1145, i64 7
  %1165 = load i8, ptr %1161, align 1, !tbaa !41
  %1166 = getelementptr inbounds i8, ptr %1144, i64 7
  store i8 %1165, ptr %1163, align 1, !tbaa !41
  %1167 = getelementptr inbounds i8, ptr %1145, i64 8
  %1168 = load i8, ptr %1164, align 1, !tbaa !41
  %1169 = getelementptr inbounds i8, ptr %1144, i64 8
  store i8 %1168, ptr %1166, align 1, !tbaa !41
  %1170 = icmp eq ptr %1167, %1079
  br i1 %1170, label %1175, label %1143, !llvm.loop !84

1171:                                             ; preds = %1030, %1027
  %1172 = load ptr, ptr %85, align 8, !tbaa !76
  %1173 = getelementptr inbounds i8, ptr %1172, i64 %1022
  store ptr %1173, ptr %85, align 8, !tbaa !76
  %1174 = load ptr, ptr %88, align 8, !tbaa !85
  br label %1187

1175:                                             ; preds = %1040, %1139, %1143, %1098, %1117, %1071
  %1176 = load ptr, ptr %85, align 8, !tbaa !76
  %1177 = getelementptr inbounds i8, ptr %1176, i64 %1022
  store ptr %1177, ptr %85, align 8, !tbaa !76
  %1178 = icmp ugt i32 %901, 65535
  %1179 = load ptr, ptr %88, align 8, !tbaa !85
  br i1 %1178, label %1180, label %1187, !prof !86

1180:                                             ; preds = %1175
  store i32 1, ptr %87, align 8, !tbaa !87
  %1181 = load ptr, ptr %1, align 8, !tbaa !88
  %1182 = ptrtoint ptr %1179 to i64
  %1183 = ptrtoint ptr %1181 to i64
  %1184 = sub i64 %1182, %1183
  %1185 = lshr exact i64 %1184, 3
  %1186 = trunc i64 %1185 to i32
  store i32 %1186, ptr %89, align 4, !tbaa !89
  br label %1187

1187:                                             ; preds = %1171, %1180, %1175
  %1188 = phi ptr [ %1174, %1171 ], [ %1179, %1180 ], [ %1179, %1175 ]
  %1189 = trunc i32 %901 to i16
  %1190 = getelementptr inbounds %struct.SeqDef_s, ptr %1188, i64 0, i32 1
  store i16 %1189, ptr %1190, align 4, !tbaa !90
  store i32 %911, ptr %1188, align 4, !tbaa !93
  %1191 = add nsw i64 %1023, -3
  %1192 = icmp ugt i64 %1191, 65535
  br i1 %1192, label %1193, label %1200, !prof !58

1193:                                             ; preds = %1187
  store i32 2, ptr %87, align 8, !tbaa !87
  %1194 = load ptr, ptr %1, align 8, !tbaa !88
  %1195 = ptrtoint ptr %1188 to i64
  %1196 = ptrtoint ptr %1194 to i64
  %1197 = sub i64 %1195, %1196
  %1198 = lshr exact i64 %1197, 3
  %1199 = trunc i64 %1198 to i32
  store i32 %1199, ptr %89, align 4, !tbaa !89
  br label %1200

1200:                                             ; preds = %1187, %1193
  %1201 = trunc i64 %1191 to i16
  %1202 = getelementptr inbounds %struct.SeqDef_s, ptr %1188, i64 0, i32 2
  store i16 %1201, ptr %1202, align 2, !tbaa !94
  %1203 = getelementptr inbounds %struct.SeqDef_s, ptr %1188, i64 1
  store ptr %1203, ptr %88, align 8, !tbaa !85
  %1204 = zext i32 %909 to i64
  %1205 = getelementptr inbounds i8, ptr %896, i64 %1204
  br label %1206

1206:                                             ; preds = %1200, %905
  %1207 = phi ptr [ %896, %905 ], [ %1205, %1200 ]
  %1208 = phi ptr [ %907, %905 ], [ %1205, %1200 ]
  %1209 = add i32 %897, 1
  %1210 = icmp ugt i32 %1209, %849
  br i1 %1210, label %1211, label %895, !llvm.loop !95

1211:                                             ; preds = %1206, %892
  %1212 = phi ptr [ %97, %892 ], [ %1207, %1206 ]
  %1213 = phi ptr [ %96, %892 ], [ %1208, %1206 ]
  %1214 = load i32, ptr %73, align 8, !tbaa !55
  %1215 = icmp eq i32 %1214, 2
  br i1 %1215, label %1222, label %1216

1216:                                             ; preds = %1211
  %1217 = load i32, ptr %80, align 8, !tbaa !72
  %1218 = add i32 %1217, 1
  %1219 = call i32 @llvm.ctlz.i32(i32 %1218, i1 true), !range !38
  %1220 = shl nuw nsw i32 %1219, 8
  %1221 = xor i32 %1220, 7936
  store i32 %1221, ptr %74, align 8, !tbaa !56
  br label %1222

1222:                                             ; preds = %1211, %1216
  %1223 = load i32, ptr %81, align 4, !tbaa !73
  %1224 = add i32 %1223, 1
  %1225 = call i32 @llvm.ctlz.i32(i32 %1224, i1 true), !range !38
  %1226 = shl nuw nsw i32 %1225, 8
  %1227 = xor i32 %1226, 7936
  %1228 = load i32, ptr %83, align 8, !tbaa !75
  %1229 = add i32 %1228, 1
  %1230 = call i32 @llvm.ctlz.i32(i32 %1229, i1 true), !range !38
  %1231 = shl nuw nsw i32 %1230, 8
  %1232 = xor i32 %1231, 7936
  %1233 = load i32, ptr %82, align 4, !tbaa !74
  %1234 = add i32 %1233, 1
  %1235 = call i32 @llvm.ctlz.i32(i32 %1234, i1 true), !range !38
  %1236 = shl nuw nsw i32 %1235, 8
  %1237 = xor i32 %1236, 7936
  store i32 %1227, ptr %66, align 4
  store i32 %1232, ptr %71, align 8
  store i32 %1237, ptr %69, align 4, !tbaa !50
  br label %1238

1238:                                             ; preds = %112, %1222, %785
  %1239 = phi i32 [ %786, %785 ], [ %847, %1222 ], [ %98, %112 ]
  %1240 = phi ptr [ %97, %785 ], [ %1212, %1222 ], [ %97, %112 ]
  %1241 = phi ptr [ %789, %785 ], [ %1213, %1222 ], [ %113, %112 ]
  %1242 = icmp ult ptr %1241, %16
  br i1 %1242, label %95, label %1243

1243:                                             ; preds = %1238
  %1244 = ptrtoint ptr %1240 to i64
  br label %1245

1245:                                             ; preds = %1243, %51
  %1246 = phi i64 [ %1244, %1243 ], [ %55, %51 ]
  %1247 = sub i64 %56, %1246
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  ret i64 %1247
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btultra(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = alloca %struct.repcodes_s, align 8
  %8 = alloca %struct.repcodes_s, align 8
  %9 = alloca %struct.repcodes_s, align 8
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca %struct.ZSTD_optLdm_t, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14
  %16 = getelementptr inbounds i8, ptr %3, i64 %4
  %17 = getelementptr inbounds i8, ptr %16, i64 -8
  %18 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !19
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %19, i64 %22
  %24 = getelementptr i8, ptr %0, i64 272
  %25 = load i32, ptr %24, align 8, !tbaa !20
  %26 = icmp ult i32 %25, 3
  %27 = add i32 %25, -6
  %28 = icmp ult i32 %27, -3
  %29 = select i1 %26, i64 0, i64 3
  %30 = add nsw i32 %25, -3
  %31 = zext nneg i32 %30 to i64
  %32 = select i1 %28, i64 %29, i64 %31
  %33 = zext nneg i32 %5 to i64
  %34 = getelementptr inbounds [3 x [4 x ptr]], ptr @__const.ZSTD_selectBtGetAllMatches.getAllMatchesFns, i64 0, i64 %33, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !21
  %36 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !22
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 4095)
  %39 = icmp eq i32 %25, 3
  %40 = select i1 %39, i32 3, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  %41 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !16
  store i32 %42, ptr %10, align 4, !tbaa !23
  %43 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !24
  %45 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  %47 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !26
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %48, i64 40, i1 false), !tbaa.struct !27
  br label %52

51:                                               ; preds = %6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, i8 0, i64 40, i1 false)
  br label %52

52:                                               ; preds = %51, %50
  %53 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %12, i64 0, i32 3
  store i32 0, ptr %53, align 8, !tbaa !29
  %54 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %12, i64 0, i32 1
  store i32 0, ptr %54, align 8, !tbaa !32
  %55 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %12, i64 0, i32 2
  store i32 0, ptr %55, align 4, !tbaa !33
  %56 = ptrtoint ptr %3 to i64
  %57 = ptrtoint ptr %16 to i64
  %58 = trunc i64 %4 to i32
  call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef nonnull %12, i32 noundef 0, i32 noundef %58)
  tail call fastcc void @ZSTD_rescaleFreqs(ptr noundef nonnull %15, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  %59 = icmp eq ptr %23, %3
  %60 = zext i1 %59 to i64
  %61 = getelementptr inbounds i8, ptr %3, i64 %60
  %62 = icmp ult ptr %61, %17
  br i1 %62, label %63, label %1618

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 0, i32 2
  %65 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 0, i32 3
  %66 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 14
  %67 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 11
  %68 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 1
  %69 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 0, i32 4
  %70 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 13
  %71 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 3
  %72 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 12
  %73 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 2
  %74 = getelementptr %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 16
  %75 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 10
  %76 = getelementptr inbounds i8, ptr %9, i64 8
  %77 = getelementptr inbounds i32, ptr %9, i64 1
  %78 = getelementptr inbounds i8, ptr %8, i64 8
  %79 = getelementptr inbounds i32, ptr %8, i64 1
  %80 = getelementptr inbounds i8, ptr %7, i64 8
  %81 = getelementptr inbounds i32, ptr %7, i64 1
  %82 = getelementptr inbounds i8, ptr %2, i64 8
  %83 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 6
  %84 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 7
  %85 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 9
  %86 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 8
  %87 = getelementptr inbounds i8, ptr %16, i64 -32
  %88 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %89 = ptrtoint ptr %87 to i64
  %90 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %91 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %92 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %93 = zext nneg i32 %40 to i64
  %94 = add nsw i64 %93, -1
  %95 = and i64 %94, 1
  %96 = and i64 %94, -2
  %97 = icmp eq i64 %95, 0
  br label %98

98:                                               ; preds = %63, %1611
  %99 = phi ptr [ %61, %63 ], [ %1614, %1611 ]
  %100 = phi ptr [ %3, %63 ], [ %1613, %1611 ]
  %101 = phi i32 [ 0, %63 ], [ %1612, %1611 ]
  %102 = ptrtoint ptr %99 to i64
  %103 = ptrtoint ptr %100 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  %108 = call i32 %35(ptr noundef %46, ptr noundef %0, ptr noundef nonnull %10, ptr noundef %99, ptr noundef %16, ptr noundef %2, i32 noundef %107, i32 noundef %40) #12
  store i32 %108, ptr %13, align 4, !tbaa !23
  %109 = sub i64 %102, %56
  %110 = trunc i64 %109 to i32
  %111 = sub i64 %57, %102
  %112 = trunc i64 %111 to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef nonnull %12, ptr noundef %46, ptr noundef nonnull %13, i32 noundef %110, i32 noundef %112, i32 noundef %40)
  %113 = load i32, ptr %13, align 4, !tbaa !23
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %98
  %116 = getelementptr inbounds i8, ptr %99, i64 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  br label %1611

117:                                              ; preds = %98
  store i32 0, ptr %64, align 4, !tbaa !34
  store i32 %105, ptr %65, align 4, !tbaa !36
  %118 = load i32, ptr %66, align 8, !tbaa !37
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = add i32 %105, 1
  %122 = call i32 @llvm.ctlz.i32(i32 %121, i1 true), !range !38
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
  %131 = load i32, ptr %67, align 4, !tbaa !39
  %132 = load ptr, ptr %68, align 8, !tbaa !40
  %133 = getelementptr inbounds i32, ptr %132, i64 35
  %134 = load i32, ptr %133, align 4, !tbaa !23
  %135 = add i32 %134, 1
  %136 = call i32 @llvm.ctlz.i32(i32 %135, i1 true), !range !38
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
  %147 = call i32 @llvm.ctlz.i32(i32 %105, i1 true), !range !38
  %148 = sub nuw nsw i32 50, %147
  br label %154

149:                                              ; preds = %144
  %150 = and i64 %104, 4294967295
  %151 = getelementptr inbounds [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !41
  %153 = zext i8 %152 to i32
  br label %154

154:                                              ; preds = %149, %146
  %155 = phi i32 [ %148, %146 ], [ %153, %149 ]
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds [36 x i8], ptr @LL_bits, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !41
  %159 = zext i8 %158 to i32
  %160 = load i32, ptr %67, align 4, !tbaa !39
  %161 = load ptr, ptr %68, align 8, !tbaa !40
  %162 = getelementptr inbounds i32, ptr %161, i64 %156
  %163 = load i32, ptr %162, align 4, !tbaa !23
  %164 = add i32 %163, 1
  %165 = call i32 @llvm.ctlz.i32(i32 %164, i1 true), !range !38
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
  store i32 %174, ptr %44, align 4, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %69, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %175 = add i32 %113, -1
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.ZSTD_match_t, ptr %46, i64 %176, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !43
  %179 = icmp ugt i32 %178, %38
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.ZSTD_match_t, ptr %46, i64 %176
  %182 = load i32, ptr %181, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  br label %1161

183:                                              ; preds = %173, %183
  %184 = phi i64 [ %197, %183 ], [ 1, %173 ]
  %185 = phi i64 [ %198, %183 ], [ 0, %173 ]
  %186 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %184
  store i32 1073741824, ptr %186, align 4, !tbaa !42
  %187 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %184, i32 2
  store i32 0, ptr %187, align 4, !tbaa !34
  %188 = trunc i64 %184 to i32
  %189 = add i32 %188, %105
  %190 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %184, i32 3
  store i32 %189, ptr %190, align 4, !tbaa !36
  %191 = add nuw nsw i64 %184, 1
  %192 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %191
  store i32 1073741824, ptr %192, align 4, !tbaa !42
  %193 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %191, i32 2
  store i32 0, ptr %193, align 4, !tbaa !34
  %194 = trunc i64 %191 to i32
  %195 = add i32 %194, %105
  %196 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %191, i32 3
  store i32 %195, ptr %196, align 4, !tbaa !36
  %197 = add nuw nsw i64 %184, 2
  %198 = add i64 %185, 2
  %199 = icmp eq i64 %198, %96
  br i1 %199, label %200, label %183, !llvm.loop !46

200:                                              ; preds = %183
  br i1 %97, label %207, label %201

201:                                              ; preds = %200
  %202 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %197
  store i32 1073741824, ptr %202, align 4, !tbaa !42
  %203 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %197, i32 2
  store i32 0, ptr %203, align 4, !tbaa !34
  %204 = trunc i64 %197 to i32
  %205 = add i32 %204, %105
  %206 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %197, i32 3
  store i32 %205, ptr %206, align 4, !tbaa !36
  br label %207

207:                                              ; preds = %200, %201
  %208 = call i32 @llvm.umax.i32(i32 %113, i32 1)
  %209 = zext i32 %208 to i64
  br label %210

210:                                              ; preds = %207, %325
  %211 = phi i64 [ 0, %207 ], [ %327, %325 ]
  %212 = phi i32 [ %40, %207 ], [ %326, %325 ]
  %213 = getelementptr inbounds %struct.ZSTD_match_t, ptr %46, i64 %211
  %214 = load i32, ptr %213, align 4, !tbaa !45
  %215 = getelementptr inbounds %struct.ZSTD_match_t, ptr %46, i64 %211, i32 1
  %216 = load i32, ptr %215, align 4, !tbaa !43
  %217 = icmp ugt i32 %212, %216
  br i1 %217, label %325, label %218

218:                                              ; preds = %210
  %219 = call i32 @llvm.ctlz.i32(i32 %214, i1 true), !range !38
  %220 = xor i32 %219, 31
  %221 = load i32, ptr %66, align 8, !tbaa !37
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %250

223:                                              ; preds = %218, %245
  %224 = phi i32 [ %248, %245 ], [ %212, %218 ]
  %225 = add i32 %224, -2
  %226 = call i32 @llvm.ctlz.i32(i32 %225, i1 true), !range !38
  %227 = xor i32 %226, 31
  %228 = shl i32 %225, 8
  %229 = lshr i32 %228, %227
  %230 = add nuw nsw i32 %227, %220
  %231 = shl nuw nsw i32 %230, 8
  %232 = add i32 %229, 4096
  %233 = add i32 %232, %231
  %234 = load i32, ptr %44, align 4, !tbaa !42
  %235 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %234, i32 %233), !nosanitize !47
  %236 = extractvalue { i32, i1 } %235, 1, !nosanitize !47
  br i1 %236, label %300, label %237, !nosanitize !47

237:                                              ; preds = %223
  %238 = extractvalue { i32, i1 } %235, 0, !nosanitize !47
  %239 = zext i32 %224 to i64
  %240 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %239, i32 2
  store i32 %224, ptr %240, align 4, !tbaa !34
  %241 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %239, i32 1
  store i32 %214, ptr %241, align 4, !tbaa !48
  %242 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %239, i32 3
  store i32 0, ptr %242, align 4, !tbaa !36
  %243 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %238, i32 256), !nosanitize !47
  %244 = extractvalue { i32, i1 } %243, 1, !nosanitize !47
  br i1 %244, label %300, label %245, !nosanitize !47

245:                                              ; preds = %237
  %246 = extractvalue { i32, i1 } %243, 0, !nosanitize !47
  %247 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %239
  store i32 %246, ptr %247, align 4, !tbaa !42
  %248 = add i32 %224, 1
  %249 = icmp ugt i32 %248, %216
  br i1 %249, label %325, label %223, !llvm.loop !49

250:                                              ; preds = %218
  %251 = zext nneg i32 %220 to i64
  %252 = load i32, ptr %70, align 4, !tbaa !50
  %253 = load ptr, ptr %71, align 8, !tbaa !51
  %254 = getelementptr inbounds i32, ptr %253, i64 %251
  %255 = load i32, ptr %72, align 8, !tbaa !52
  %256 = load ptr, ptr %73, align 8, !tbaa !53
  %257 = add i32 %252, 51
  %258 = add i32 %257, %255
  br label %259

259:                                              ; preds = %250, %320
  %260 = phi i32 [ %212, %250 ], [ %323, %320 ]
  %261 = add i32 %260, -3
  %262 = load i32, ptr %254, align 4, !tbaa !23
  %263 = add i32 %262, 1
  %264 = call i32 @llvm.ctlz.i32(i32 %263, i1 true), !range !38
  %265 = xor i32 %264, 31
  %266 = shl i32 %263, 8
  %267 = lshr i32 %266, %265
  %268 = icmp ugt i32 %261, 127
  br i1 %268, label %269, label %272

269:                                              ; preds = %259
  %270 = call i32 @llvm.ctlz.i32(i32 %261, i1 true), !range !38
  %271 = sub nuw nsw i32 67, %270
  br label %277

272:                                              ; preds = %259
  %273 = zext nneg i32 %261 to i64
  %274 = getelementptr inbounds [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !41
  %276 = zext i8 %275 to i32
  br label %277

277:                                              ; preds = %269, %272
  %278 = phi i32 [ %271, %269 ], [ %276, %272 ]
  %279 = zext nneg i32 %278 to i64
  %280 = getelementptr inbounds [53 x i8], ptr @ML_bits, i64 0, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !41
  %282 = zext i8 %281 to i32
  %283 = getelementptr inbounds i32, ptr %256, i64 %279
  %284 = load i32, ptr %283, align 4, !tbaa !23
  %285 = add i32 %284, 1
  %286 = call i32 @llvm.ctlz.i32(i32 %285, i1 true), !range !38
  %287 = xor i32 %286, 31
  %288 = shl i32 %285, 8
  %289 = lshr i32 %288, %287
  %290 = add nuw nsw i32 %220, %282
  %291 = add nuw nsw i32 %265, %287
  %292 = sub nsw i32 %290, %291
  %293 = shl nsw i32 %292, 8
  %294 = add i32 %267, %289
  %295 = sub i32 %258, %294
  %296 = add i32 %295, %293
  %297 = load i32, ptr %44, align 4, !tbaa !42
  %298 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %297, i32 %296), !nosanitize !47
  %299 = extractvalue { i32, i1 } %298, 1, !nosanitize !47
  br i1 %299, label %300, label %301, !nosanitize !47

300:                                              ; preds = %618, %624, %552, %556, %890, %763, %615, %608, %549, %490, %370, %277, %301, %237, %223, %1045, %945
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

301:                                              ; preds = %277
  %302 = extractvalue { i32, i1 } %298, 0, !nosanitize !47
  %303 = zext i32 %260 to i64
  %304 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %303, i32 2
  store i32 %260, ptr %304, align 4, !tbaa !34
  %305 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %303, i32 1
  store i32 %214, ptr %305, align 4, !tbaa !48
  %306 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %303, i32 3
  store i32 0, ptr %306, align 4, !tbaa !36
  %307 = load i32, ptr %67, align 4, !tbaa !39
  %308 = load ptr, ptr %68, align 8, !tbaa !40
  %309 = load i32, ptr %308, align 4, !tbaa !23
  %310 = add i32 %309, 1
  %311 = call i32 @llvm.ctlz.i32(i32 %310, i1 true), !range !38
  %312 = xor i32 %311, 31
  %313 = shl i32 %310, 8
  %314 = lshr i32 %313, %312
  %315 = shl nuw nsw i32 %312, 8
  %316 = add i32 %314, %315
  %317 = sub i32 %307, %316
  %318 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %302, i32 %317), !nosanitize !47
  %319 = extractvalue { i32, i1 } %318, 1, !nosanitize !47
  br i1 %319, label %300, label %320, !nosanitize !47

320:                                              ; preds = %301
  %321 = extractvalue { i32, i1 } %318, 0, !nosanitize !47
  %322 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %303
  store i32 %321, ptr %322, align 4, !tbaa !42
  %323 = add i32 %260, 1
  %324 = icmp ugt i32 %323, %216
  br i1 %324, label %325, label %259, !llvm.loop !49

325:                                              ; preds = %320, %245, %210
  %326 = phi i32 [ %212, %210 ], [ %248, %245 ], [ %323, %320 ]
  %327 = add nuw nsw i64 %211, 1
  %328 = icmp eq i64 %327, %209
  br i1 %328, label %329, label %210, !llvm.loop !54

329:                                              ; preds = %325
  %330 = add i32 %326, -1
  %331 = zext i32 %326 to i64
  %332 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %331
  store i32 1073741824, ptr %332, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  %333 = icmp eq i32 %330, 0
  br i1 %333, label %1128, label %334

334:                                              ; preds = %329, %1124
  %335 = phi i32 [ %1126, %1124 ], [ 1, %329 ]
  %336 = phi i32 [ %1125, %1124 ], [ %330, %329 ]
  %337 = zext i32 %335 to i64
  %338 = getelementptr inbounds i8, ptr %99, i64 %337
  %339 = add i32 %335, -1
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %340
  %342 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %340, i32 3
  %343 = load i32, ptr %342, align 4, !tbaa !36
  %344 = add i32 %343, 1
  %345 = load i32, ptr %341, align 4, !tbaa !42
  %346 = getelementptr inbounds i8, ptr %338, i64 -1
  %347 = load i32, ptr %74, align 8, !tbaa !55
  %348 = icmp eq i32 %347, 2
  br i1 %348, label %370, label %349

349:                                              ; preds = %334
  %350 = load i32, ptr %66, align 8, !tbaa !37
  %351 = icmp eq i32 %350, 1
  br i1 %351, label %370, label %352

352:                                              ; preds = %349
  %353 = load i32, ptr %75, align 8, !tbaa !56
  %354 = add i32 %353, -256
  %355 = load ptr, ptr %15, align 8, !tbaa !57
  %356 = load i8, ptr %346, align 1, !tbaa !41
  %357 = zext i8 %356 to i64
  %358 = getelementptr inbounds i32, ptr %355, i64 %357
  %359 = load i32, ptr %358, align 4, !tbaa !23
  %360 = add i32 %359, 1
  %361 = call i32 @llvm.ctlz.i32(i32 %360, i1 true), !range !38
  %362 = xor i32 %361, 31
  %363 = shl nuw nsw i32 %362, 8
  %364 = shl i32 %360, 8
  %365 = lshr i32 %364, %362
  %366 = add i32 %363, %365
  %367 = icmp ugt i32 %366, %354
  %368 = sub i32 %353, %366
  %369 = select i1 %367, i32 256, i32 %368, !prof !58
  br label %370

370:                                              ; preds = %334, %349, %352
  %371 = phi i32 [ 2048, %334 ], [ 1536, %349 ], [ %369, %352 ]
  %372 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %345, i32 %371), !nosanitize !47
  %373 = extractvalue { i32, i1 } %372, 0, !nosanitize !47
  %374 = extractvalue { i32, i1 } %372, 1, !nosanitize !47
  br i1 %374, label %300, label %375, !nosanitize !47

375:                                              ; preds = %370
  %376 = load i32, ptr %66, align 8, !tbaa !37
  %377 = icmp eq i32 %376, 1
  br i1 %377, label %404, label %378

378:                                              ; preds = %375
  %379 = icmp eq i32 %344, 131072
  br i1 %379, label %380, label %394

380:                                              ; preds = %378
  %381 = load i32, ptr %67, align 4, !tbaa !39
  %382 = load ptr, ptr %68, align 8, !tbaa !40
  %383 = getelementptr inbounds i32, ptr %382, i64 35
  %384 = load i32, ptr %383, align 4, !tbaa !23
  %385 = add i32 %384, 1
  %386 = call i32 @llvm.ctlz.i32(i32 %385, i1 true), !range !38
  %387 = xor i32 %386, 31
  %388 = shl i32 %385, 8
  %389 = lshr i32 %388, %387
  %390 = add i32 %381, 4352
  %391 = shl nuw nsw i32 %387, 8
  %392 = add i32 %389, %391
  %393 = sub i32 %390, %392
  br label %453

394:                                              ; preds = %378
  %395 = icmp ugt i32 %344, 63
  br i1 %395, label %396, label %399

396:                                              ; preds = %394
  %397 = call i32 @llvm.ctlz.i32(i32 %344, i1 true), !range !38
  %398 = sub nuw nsw i32 50, %397
  br label %418

399:                                              ; preds = %394
  %400 = zext nneg i32 %344 to i64
  %401 = getelementptr inbounds [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %400
  %402 = load i8, ptr %401, align 1, !tbaa !41
  %403 = zext i8 %402 to i32
  br label %418

404:                                              ; preds = %375
  %405 = add i32 %343, 2
  %406 = call i32 @llvm.ctlz.i32(i32 %405, i1 true), !range !38
  %407 = xor i32 %406, 31
  %408 = shl nuw nsw i32 %407, 8
  %409 = shl i32 %405, 8
  %410 = lshr i32 %409, %407
  %411 = add i32 %408, %410
  %412 = call i32 @llvm.ctlz.i32(i32 %344, i1 true), !range !38
  %413 = xor i32 %412, 31
  %414 = shl nuw nsw i32 %413, 8
  %415 = shl i32 %344, 8
  %416 = lshr i32 %415, %413
  %417 = add i32 %414, %416
  br label %484

418:                                              ; preds = %396, %399
  %419 = phi i32 [ %398, %396 ], [ %403, %399 ]
  %420 = zext nneg i32 %419 to i64
  %421 = getelementptr inbounds [36 x i8], ptr @LL_bits, i64 0, i64 %420
  %422 = load i8, ptr %421, align 1, !tbaa !41
  %423 = zext i8 %422 to i32
  %424 = shl nuw nsw i32 %423, 8
  %425 = load i32, ptr %67, align 4, !tbaa !39
  %426 = add i32 %424, %425
  %427 = load ptr, ptr %68, align 8, !tbaa !40
  %428 = getelementptr inbounds i32, ptr %427, i64 %420
  %429 = load i32, ptr %428, align 4, !tbaa !23
  %430 = add i32 %429, 1
  %431 = call i32 @llvm.ctlz.i32(i32 %430, i1 true), !range !38
  %432 = xor i32 %431, 31
  %433 = mul nsw i32 %432, -256
  %434 = shl i32 %430, 8
  %435 = lshr i32 %434, %432
  %436 = sub i32 %433, %435
  %437 = add i32 %426, %436
  %438 = icmp eq i32 %343, 131072
  br i1 %438, label %439, label %451

439:                                              ; preds = %418
  %440 = getelementptr inbounds i32, ptr %427, i64 35
  %441 = load i32, ptr %440, align 4, !tbaa !23
  %442 = add i32 %441, 1
  %443 = call i32 @llvm.ctlz.i32(i32 %442, i1 true), !range !38
  %444 = xor i32 %443, 31
  %445 = shl i32 %442, 8
  %446 = lshr i32 %445, %444
  %447 = add i32 %425, 4352
  %448 = shl nuw nsw i32 %444, 8
  %449 = add i32 %446, %448
  %450 = sub i32 %447, %449
  br label %484

451:                                              ; preds = %418
  %452 = icmp ugt i32 %343, 63
  br i1 %452, label %453, label %459

453:                                              ; preds = %380, %451
  %454 = phi ptr [ %382, %380 ], [ %427, %451 ]
  %455 = phi i32 [ %381, %380 ], [ %425, %451 ]
  %456 = phi i32 [ %393, %380 ], [ %437, %451 ]
  %457 = call i32 @llvm.ctlz.i32(i32 %343, i1 true), !range !38
  %458 = sub nuw nsw i32 50, %457
  br label %464

459:                                              ; preds = %451
  %460 = zext nneg i32 %343 to i64
  %461 = getelementptr inbounds [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %460
  %462 = load i8, ptr %461, align 1, !tbaa !41
  %463 = zext i8 %462 to i32
  br label %464

464:                                              ; preds = %459, %453
  %465 = phi ptr [ %454, %453 ], [ %427, %459 ]
  %466 = phi i32 [ %455, %453 ], [ %425, %459 ]
  %467 = phi i32 [ %456, %453 ], [ %437, %459 ]
  %468 = phi i32 [ %458, %453 ], [ %463, %459 ]
  %469 = zext nneg i32 %468 to i64
  %470 = getelementptr inbounds [36 x i8], ptr @LL_bits, i64 0, i64 %469
  %471 = load i8, ptr %470, align 1, !tbaa !41
  %472 = zext i8 %471 to i32
  %473 = getelementptr inbounds i32, ptr %465, i64 %469
  %474 = load i32, ptr %473, align 4, !tbaa !23
  %475 = add i32 %474, 1
  %476 = call i32 @llvm.ctlz.i32(i32 %475, i1 true), !range !38
  %477 = xor i32 %476, 31
  %478 = shl i32 %475, 8
  %479 = lshr i32 %478, %477
  %480 = sub nsw i32 %472, %477
  %481 = shl nsw i32 %480, 8
  %482 = sub i32 %466, %479
  %483 = add i32 %482, %481
  br label %484

484:                                              ; preds = %404, %439, %464
  %485 = phi i32 [ %437, %439 ], [ %467, %464 ], [ %411, %404 ]
  %486 = phi i32 [ %450, %439 ], [ %483, %464 ], [ %417, %404 ]
  %487 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %485, i32 %486), !nosanitize !47
  %488 = extractvalue { i32, i1 } %487, 1, !nosanitize !47
  br i1 %488, label %489, label %490, !nosanitize !47

489:                                              ; preds = %757, %602, %535, %484
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

490:                                              ; preds = %484
  %491 = extractvalue { i32, i1 } %487, 0, !nosanitize !47
  %492 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %373, i32 %491), !nosanitize !47
  %493 = extractvalue { i32, i1 } %492, 0, !nosanitize !47
  %494 = extractvalue { i32, i1 } %492, 1, !nosanitize !47
  br i1 %494, label %300, label %495, !nosanitize !47

495:                                              ; preds = %490
  %496 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %337
  %497 = load i32, ptr %496, align 4
  %498 = icmp sgt i32 %493, %497
  br i1 %498, label %499, label %502

499:                                              ; preds = %495
  %500 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %337, i32 3
  %501 = load i32, ptr %500, align 4, !tbaa !36
  br label %821

502:                                              ; preds = %495
  %503 = getelementptr inbounds i8, ptr %496, i64 4
  %504 = load i32, ptr %503, align 4, !tbaa.struct !64
  %505 = getelementptr inbounds i8, ptr %496, i64 8
  %506 = load i32, ptr %505, align 4, !tbaa.struct !65
  %507 = getelementptr inbounds i8, ptr %496, i64 12
  %508 = load i32, ptr %507, align 4, !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %496, ptr noundef nonnull align 4 dereferenceable(28) %341, i64 28, i1 false), !tbaa.struct !59
  store i32 %344, ptr %507, align 4, !tbaa !36
  store i32 %493, ptr %496, align 4, !tbaa !42
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %821

510:                                              ; preds = %502
  %511 = load i32, ptr %66, align 8, !tbaa !37
  %512 = icmp eq i32 %511, 1
  br i1 %512, label %535, label %513

513:                                              ; preds = %510
  %514 = load i32, ptr %67, align 4, !tbaa !39
  %515 = load ptr, ptr %68, align 8, !tbaa !40
  %516 = getelementptr inbounds i32, ptr %515, i64 1
  %517 = load i32, ptr %516, align 4, !tbaa !23
  %518 = add i32 %517, 1
  %519 = call i32 @llvm.ctlz.i32(i32 %518, i1 true), !range !38
  %520 = xor i32 %519, 31
  %521 = shl i32 %518, 8
  %522 = lshr i32 %521, %520
  %523 = shl nuw nsw i32 %520, 8
  %524 = add i32 %522, %523
  %525 = sub i32 %514, %524
  %526 = load i32, ptr %515, align 4, !tbaa !23
  %527 = add i32 %526, 1
  %528 = call i32 @llvm.ctlz.i32(i32 %527, i1 true), !range !38
  %529 = xor i32 %528, 31
  %530 = shl i32 %527, 8
  %531 = lshr i32 %530, %529
  %532 = shl nuw nsw i32 %529, 8
  %533 = add i32 %531, %532
  %534 = sub i32 %514, %533
  br label %535

535:                                              ; preds = %510, %513
  %536 = phi i32 [ %525, %513 ], [ 512, %510 ]
  %537 = phi i32 [ %534, %513 ], [ 256, %510 ]
  %538 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %536, i32 %537), !nosanitize !47
  %539 = extractvalue { i32, i1 } %538, 1, !nosanitize !47
  br i1 %539, label %489, label %540, !nosanitize !47

540:                                              ; preds = %535
  %541 = extractvalue { i32, i1 } %538, 0, !nosanitize !47
  %542 = icmp slt i32 %541, 0
  %543 = icmp ult ptr %338, %16
  %544 = select i1 %542, i1 %543, i1 false
  br i1 %544, label %545, label %821, !prof !96

545:                                              ; preds = %540
  %546 = load i32, ptr %74, align 8, !tbaa !55
  %547 = icmp eq i32 %546, 2
  br i1 %547, label %549, label %548

548:                                              ; preds = %545
  br i1 %512, label %552, label %556

549:                                              ; preds = %545
  %550 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %497, i32 2048), !nosanitize !47
  %551 = extractvalue { i32, i1 } %550, 1, !nosanitize !47
  br i1 %551, label %300, label %577, !nosanitize !47

552:                                              ; preds = %548
  %553 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %497, i32 1536), !nosanitize !47
  %554 = extractvalue { i32, i1 } %553, 0, !nosanitize !47
  %555 = extractvalue { i32, i1 } %553, 1, !nosanitize !47
  br i1 %555, label %300, label %602, !nosanitize !47

556:                                              ; preds = %548
  %557 = load i32, ptr %75, align 8, !tbaa !56
  %558 = add i32 %557, -256
  %559 = load ptr, ptr %15, align 8, !tbaa !57
  %560 = load i8, ptr %338, align 1, !tbaa !41
  %561 = zext i8 %560 to i64
  %562 = getelementptr inbounds i32, ptr %559, i64 %561
  %563 = load i32, ptr %562, align 4, !tbaa !23
  %564 = add i32 %563, 1
  %565 = call i32 @llvm.ctlz.i32(i32 %564, i1 true), !range !38
  %566 = xor i32 %565, 31
  %567 = shl nuw nsw i32 %566, 8
  %568 = shl i32 %564, 8
  %569 = lshr i32 %568, %566
  %570 = add i32 %567, %569
  %571 = icmp ugt i32 %570, %558
  %572 = sub i32 %557, %570
  %573 = select i1 %571, i32 256, i32 %572, !prof !58
  %574 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %497, i32 %573), !nosanitize !47
  %575 = extractvalue { i32, i1 } %574, 0, !nosanitize !47
  %576 = extractvalue { i32, i1 } %574, 1, !nosanitize !47
  br i1 %576, label %300, label %579, !nosanitize !47

577:                                              ; preds = %549
  %578 = extractvalue { i32, i1 } %550, 0, !nosanitize !47
  br i1 %512, label %602, label %579

579:                                              ; preds = %556, %577
  %580 = phi i32 [ %578, %577 ], [ %575, %556 ]
  %581 = load i32, ptr %67, align 4, !tbaa !39
  %582 = load ptr, ptr %68, align 8, !tbaa !40
  %583 = getelementptr inbounds i32, ptr %582, i64 1
  %584 = load i32, ptr %583, align 4, !tbaa !23
  %585 = add i32 %584, 1
  %586 = call i32 @llvm.ctlz.i32(i32 %585, i1 true), !range !38
  %587 = xor i32 %586, 31
  %588 = shl i32 %585, 8
  %589 = lshr i32 %588, %587
  %590 = shl nuw nsw i32 %587, 8
  %591 = add i32 %589, %590
  %592 = sub i32 %581, %591
  %593 = load i32, ptr %582, align 4, !tbaa !23
  %594 = add i32 %593, 1
  %595 = call i32 @llvm.ctlz.i32(i32 %594, i1 true), !range !38
  %596 = xor i32 %595, 31
  %597 = shl i32 %594, 8
  %598 = lshr i32 %597, %596
  %599 = shl nuw nsw i32 %596, 8
  %600 = add i32 %598, %599
  %601 = sub i32 %581, %600
  br label %602

602:                                              ; preds = %552, %577, %579
  %603 = phi i32 [ %592, %579 ], [ 512, %577 ], [ 512, %552 ]
  %604 = phi i32 [ %580, %579 ], [ %578, %577 ], [ %554, %552 ]
  %605 = phi i32 [ %601, %579 ], [ 256, %577 ], [ 256, %552 ]
  %606 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %603, i32 %605), !nosanitize !47
  %607 = extractvalue { i32, i1 } %606, 1, !nosanitize !47
  br i1 %607, label %489, label %608, !nosanitize !47

608:                                              ; preds = %602
  %609 = extractvalue { i32, i1 } %606, 0, !nosanitize !47
  %610 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %604, i32 %609), !nosanitize !47
  %611 = extractvalue { i32, i1 } %610, 0, !nosanitize !47
  %612 = extractvalue { i32, i1 } %610, 1, !nosanitize !47
  br i1 %612, label %300, label %613, !nosanitize !47

613:                                              ; preds = %608
  br i1 %547, label %615, label %614

614:                                              ; preds = %613
  br i1 %512, label %618, label %624

615:                                              ; preds = %613
  %616 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %493, i32 2048), !nosanitize !47
  %617 = extractvalue { i32, i1 } %616, 1, !nosanitize !47
  br i1 %617, label %300, label %647, !nosanitize !47

618:                                              ; preds = %614
  %619 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %493, i32 1536), !nosanitize !47
  %620 = extractvalue { i32, i1 } %619, 1, !nosanitize !47
  br i1 %620, label %300, label %621, !nosanitize !47

621:                                              ; preds = %618
  %622 = extractvalue { i32, i1 } %619, 0, !nosanitize !47
  %623 = add i32 %343, 2
  br label %697

624:                                              ; preds = %614
  %625 = load i32, ptr %75, align 8, !tbaa !56
  %626 = add i32 %625, -256
  %627 = load ptr, ptr %15, align 8, !tbaa !57
  %628 = load i8, ptr %338, align 1, !tbaa !41
  %629 = zext i8 %628 to i64
  %630 = getelementptr inbounds i32, ptr %627, i64 %629
  %631 = load i32, ptr %630, align 4, !tbaa !23
  %632 = add i32 %631, 1
  %633 = call i32 @llvm.ctlz.i32(i32 %632, i1 true), !range !38
  %634 = xor i32 %633, 31
  %635 = shl nuw nsw i32 %634, 8
  %636 = shl i32 %632, 8
  %637 = lshr i32 %636, %634
  %638 = add i32 %635, %637
  %639 = icmp ugt i32 %638, %626
  %640 = sub i32 %625, %638
  %641 = select i1 %639, i32 256, i32 %640, !prof !58
  %642 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %493, i32 %641), !nosanitize !47
  %643 = extractvalue { i32, i1 } %642, 1, !nosanitize !47
  br i1 %643, label %300, label %644, !nosanitize !47

644:                                              ; preds = %624
  %645 = extractvalue { i32, i1 } %642, 0, !nosanitize !47
  %646 = add i32 %343, 2
  br label %650

647:                                              ; preds = %615
  %648 = extractvalue { i32, i1 } %616, 0, !nosanitize !47
  %649 = add i32 %343, 2
  br i1 %512, label %697, label %650

650:                                              ; preds = %644, %647
  %651 = phi i32 [ %646, %644 ], [ %649, %647 ]
  %652 = phi i32 [ %645, %644 ], [ %648, %647 ]
  %653 = icmp eq i32 %651, 131072
  br i1 %653, label %654, label %668

654:                                              ; preds = %650
  %655 = load i32, ptr %67, align 4, !tbaa !39
  %656 = load ptr, ptr %68, align 8, !tbaa !40
  %657 = getelementptr inbounds i32, ptr %656, i64 35
  %658 = load i32, ptr %657, align 4, !tbaa !23
  %659 = add i32 %658, 1
  %660 = call i32 @llvm.ctlz.i32(i32 %659, i1 true), !range !38
  %661 = xor i32 %660, 31
  %662 = shl i32 %659, 8
  %663 = lshr i32 %662, %661
  %664 = add i32 %655, 4352
  %665 = shl nuw nsw i32 %661, 8
  %666 = add i32 %663, %665
  %667 = sub i32 %664, %666
  br label %713

668:                                              ; preds = %650
  %669 = icmp ugt i32 %651, 63
  br i1 %669, label %670, label %673

670:                                              ; preds = %668
  %671 = call i32 @llvm.ctlz.i32(i32 %651, i1 true), !range !38
  %672 = sub nuw nsw i32 50, %671
  br label %678

673:                                              ; preds = %668
  %674 = zext nneg i32 %651 to i64
  %675 = getelementptr inbounds [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %674
  %676 = load i8, ptr %675, align 1, !tbaa !41
  %677 = zext i8 %676 to i32
  br label %678

678:                                              ; preds = %673, %670
  %679 = phi i32 [ %672, %670 ], [ %677, %673 ]
  %680 = zext nneg i32 %679 to i64
  %681 = getelementptr inbounds [36 x i8], ptr @LL_bits, i64 0, i64 %680
  %682 = load i8, ptr %681, align 1, !tbaa !41
  %683 = zext i8 %682 to i32
  %684 = load i32, ptr %67, align 4, !tbaa !39
  %685 = load ptr, ptr %68, align 8, !tbaa !40
  %686 = getelementptr inbounds i32, ptr %685, i64 %680
  %687 = load i32, ptr %686, align 4, !tbaa !23
  %688 = add i32 %687, 1
  %689 = call i32 @llvm.ctlz.i32(i32 %688, i1 true), !range !38
  %690 = xor i32 %689, 31
  %691 = shl i32 %688, 8
  %692 = lshr i32 %691, %690
  %693 = sub nsw i32 %683, %690
  %694 = shl nsw i32 %693, 8
  %695 = sub i32 %684, %692
  %696 = add i32 %695, %694
  br label %713

697:                                              ; preds = %621, %647
  %698 = phi i32 [ %623, %621 ], [ %649, %647 ]
  %699 = phi i32 [ %622, %621 ], [ %648, %647 ]
  %700 = add i32 %698, 1
  %701 = call i32 @llvm.ctlz.i32(i32 %700, i1 true), !range !38
  %702 = xor i32 %701, 31
  %703 = shl nuw nsw i32 %702, 8
  %704 = shl i32 %700, 8
  %705 = lshr i32 %704, %702
  %706 = add i32 %703, %705
  %707 = call i32 @llvm.ctlz.i32(i32 %698, i1 true), !range !38
  %708 = xor i32 %707, 31
  %709 = shl nuw nsw i32 %708, 8
  %710 = shl i32 %698, 8
  %711 = lshr i32 %710, %708
  %712 = add i32 %709, %711
  br label %757

713:                                              ; preds = %654, %678
  %714 = phi ptr [ %685, %678 ], [ %656, %654 ]
  %715 = phi i32 [ %684, %678 ], [ %655, %654 ]
  %716 = phi i32 [ %696, %678 ], [ %667, %654 ]
  %717 = icmp eq i32 %344, 131072
  br i1 %717, label %718, label %730

718:                                              ; preds = %713
  %719 = getelementptr inbounds i32, ptr %714, i64 35
  %720 = load i32, ptr %719, align 4, !tbaa !23
  %721 = add i32 %720, 1
  %722 = call i32 @llvm.ctlz.i32(i32 %721, i1 true), !range !38
  %723 = xor i32 %722, 31
  %724 = shl i32 %721, 8
  %725 = lshr i32 %724, %723
  %726 = add i32 %715, 4352
  %727 = shl nuw nsw i32 %723, 8
  %728 = add i32 %725, %727
  %729 = sub i32 %726, %728
  br label %757

730:                                              ; preds = %713
  %731 = icmp ugt i32 %344, 63
  br i1 %731, label %732, label %735

732:                                              ; preds = %730
  %733 = call i32 @llvm.ctlz.i32(i32 %344, i1 true), !range !38
  %734 = sub nuw nsw i32 50, %733
  br label %740

735:                                              ; preds = %730
  %736 = zext nneg i32 %344 to i64
  %737 = getelementptr inbounds [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %736
  %738 = load i8, ptr %737, align 1, !tbaa !41
  %739 = zext i8 %738 to i32
  br label %740

740:                                              ; preds = %735, %732
  %741 = phi i32 [ %734, %732 ], [ %739, %735 ]
  %742 = zext nneg i32 %741 to i64
  %743 = getelementptr inbounds [36 x i8], ptr @LL_bits, i64 0, i64 %742
  %744 = load i8, ptr %743, align 1, !tbaa !41
  %745 = zext i8 %744 to i32
  %746 = getelementptr inbounds i32, ptr %714, i64 %742
  %747 = load i32, ptr %746, align 4, !tbaa !23
  %748 = add i32 %747, 1
  %749 = call i32 @llvm.ctlz.i32(i32 %748, i1 true), !range !38
  %750 = xor i32 %749, 31
  %751 = shl i32 %748, 8
  %752 = lshr i32 %751, %750
  %753 = sub nsw i32 %745, %750
  %754 = shl nsw i32 %753, 8
  %755 = sub i32 %715, %752
  %756 = add i32 %755, %754
  br label %757

757:                                              ; preds = %697, %718, %740
  %758 = phi i32 [ %716, %718 ], [ %716, %740 ], [ %706, %697 ]
  %759 = phi i32 [ %652, %718 ], [ %652, %740 ], [ %699, %697 ]
  %760 = phi i32 [ %729, %718 ], [ %756, %740 ], [ %712, %697 ]
  %761 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %758, i32 %760), !nosanitize !47
  %762 = extractvalue { i32, i1 } %761, 1, !nosanitize !47
  br i1 %762, label %489, label %763, !nosanitize !47

763:                                              ; preds = %757
  %764 = extractvalue { i32, i1 } %761, 0, !nosanitize !47
  %765 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %759, i32 %764), !nosanitize !47
  %766 = extractvalue { i32, i1 } %765, 1, !nosanitize !47
  br i1 %766, label %300, label %767, !nosanitize !47

767:                                              ; preds = %763
  %768 = extractvalue { i32, i1 } %765, 0, !nosanitize !47
  %769 = icmp slt i32 %611, %768
  br i1 %769, label %770, label %821

770:                                              ; preds = %767
  %771 = add i32 %335, 1
  %772 = zext i32 %771 to i64
  %773 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %772
  %774 = load i32, ptr %773, align 4, !tbaa !42
  %775 = icmp slt i32 %611, %774
  br i1 %775, label %776, label %821

776:                                              ; preds = %770
  %777 = sub i32 %335, %506
  %778 = zext i32 %777 to i64
  %779 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %778, i32 4
  %780 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %778, i32 3
  %781 = load i32, ptr %780, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %779, i64 12, i1 false)
  %782 = icmp ugt i32 %504, 3
  br i1 %782, label %783, label %787

783:                                              ; preds = %776
  %784 = load i32, ptr %77, align 4, !tbaa !23
  %785 = load i32, ptr %9, align 8, !tbaa !23
  store i32 %785, ptr %77, align 4, !tbaa !23
  %786 = add i32 %504, -3
  br label %809

787:                                              ; preds = %776
  %788 = icmp eq i32 %781, 0
  %789 = zext i1 %788 to i32
  %790 = add nsw i32 %504, -1
  %791 = add nsw i32 %790, %789
  switch i32 %791, label %797 [
    i32 0, label %792
    i32 3, label %794
  ]

792:                                              ; preds = %787
  %793 = load i32, ptr %76, align 8
  br label %812

794:                                              ; preds = %787
  %795 = load i32, ptr %9, align 8, !tbaa !23
  %796 = add i32 %795, -1
  br label %802

797:                                              ; preds = %787
  %798 = zext i32 %791 to i64
  %799 = getelementptr inbounds i32, ptr %9, i64 %798
  %800 = load i32, ptr %799, align 4, !tbaa !23
  %801 = load i32, ptr %9, align 8, !tbaa !23
  br label %802

802:                                              ; preds = %797, %794
  %803 = phi i32 [ %795, %794 ], [ %801, %797 ]
  %804 = phi i32 [ %796, %794 ], [ %800, %797 ]
  %805 = icmp eq i32 %791, 1
  %806 = load i32, ptr %76, align 8
  %807 = load i32, ptr %77, align 4
  %808 = select i1 %805, i32 %806, i32 %807
  store i32 %803, ptr %77, align 4, !tbaa !23
  br label %809

809:                                              ; preds = %802, %783
  %810 = phi i32 [ %808, %802 ], [ %784, %783 ]
  %811 = phi i32 [ %804, %802 ], [ %786, %783 ]
  store i32 %811, ptr %9, align 8, !tbaa !23
  br label %812

812:                                              ; preds = %792, %809
  %813 = phi i32 [ %793, %792 ], [ %810, %809 ]
  %814 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9)
  %815 = getelementptr inbounds i8, ptr %773, i64 4
  store i32 %504, ptr %815, align 4, !tbaa.struct !64
  %816 = getelementptr inbounds i8, ptr %773, i64 8
  store i32 %506, ptr %816, align 4, !tbaa.struct !65
  %817 = getelementptr inbounds i8, ptr %773, i64 12
  %818 = getelementptr inbounds i8, ptr %773, i64 16
  store i64 %814, ptr %818, align 4
  %819 = getelementptr inbounds i8, ptr %773, i64 24
  store i32 %813, ptr %819, align 4
  store i32 1, ptr %817, align 4, !tbaa !36
  store i32 %611, ptr %773, align 4, !tbaa !42
  %820 = call i32 @llvm.umax.i32(i32 %336, i32 %771)
  br label %821

821:                                              ; preds = %502, %540, %767, %770, %812, %499
  %822 = phi i32 [ %497, %499 ], [ %493, %812 ], [ %493, %770 ], [ %493, %767 ], [ %493, %540 ], [ %493, %502 ]
  %823 = phi i32 [ %501, %499 ], [ %344, %812 ], [ %344, %770 ], [ %344, %767 ], [ %344, %540 ], [ %344, %502 ]
  %824 = phi i32 [ %336, %499 ], [ %820, %812 ], [ %336, %770 ], [ %336, %767 ], [ %336, %540 ], [ %336, %502 ]
  %825 = icmp eq i32 %823, 0
  br i1 %825, label %826, label %871

826:                                              ; preds = %821
  %827 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %337, i32 2
  %828 = load i32, ptr %827, align 4, !tbaa !34
  %829 = sub i32 %335, %828
  %830 = zext i32 %829 to i64
  %831 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %830, i32 4
  %832 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %337, i32 1
  %833 = load i32, ptr %832, align 4, !tbaa !48
  %834 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %830, i32 3
  %835 = load i32, ptr %834, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %831, i64 12, i1 false)
  %836 = icmp ugt i32 %833, 3
  br i1 %836, label %837, label %841

837:                                              ; preds = %826
  %838 = load i32, ptr %79, align 4, !tbaa !23
  %839 = load i32, ptr %8, align 8, !tbaa !23
  store i32 %839, ptr %79, align 4, !tbaa !23
  %840 = add i32 %833, -3
  br label %863

841:                                              ; preds = %826
  %842 = icmp eq i32 %835, 0
  %843 = zext i1 %842 to i32
  %844 = add nsw i32 %833, -1
  %845 = add nsw i32 %844, %843
  switch i32 %845, label %851 [
    i32 0, label %846
    i32 3, label %848
  ]

846:                                              ; preds = %841
  %847 = load i32, ptr %78, align 8
  br label %866

848:                                              ; preds = %841
  %849 = load i32, ptr %8, align 8, !tbaa !23
  %850 = add i32 %849, -1
  br label %856

851:                                              ; preds = %841
  %852 = zext i32 %845 to i64
  %853 = getelementptr inbounds i32, ptr %8, i64 %852
  %854 = load i32, ptr %853, align 4, !tbaa !23
  %855 = load i32, ptr %8, align 8, !tbaa !23
  br label %856

856:                                              ; preds = %851, %848
  %857 = phi i32 [ %849, %848 ], [ %855, %851 ]
  %858 = phi i32 [ %850, %848 ], [ %854, %851 ]
  %859 = icmp eq i32 %845, 1
  %860 = load i32, ptr %78, align 8
  %861 = load i32, ptr %79, align 4
  %862 = select i1 %859, i32 %860, i32 %861
  store i32 %857, ptr %79, align 4, !tbaa !23
  br label %863

863:                                              ; preds = %856, %837
  %864 = phi i32 [ %862, %856 ], [ %838, %837 ]
  %865 = phi i32 [ %858, %856 ], [ %840, %837 ]
  store i32 %865, ptr %8, align 8, !tbaa !23
  br label %866

866:                                              ; preds = %846, %863
  %867 = phi i32 [ %847, %846 ], [ %864, %863 ]
  %868 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8)
  %869 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %337, i32 4
  store i64 %868, ptr %869, align 4
  %870 = getelementptr inbounds i8, ptr %869, i64 8
  store i32 %867, ptr %870, align 4
  br label %871

871:                                              ; preds = %866, %821
  %872 = icmp ugt ptr %338, %17
  br i1 %872, label %1124, label %873

873:                                              ; preds = %871
  %874 = icmp eq i32 %335, %824
  br i1 %874, label %1128, label %875

875:                                              ; preds = %873
  %876 = load i32, ptr %66, align 8, !tbaa !37
  %877 = icmp eq i32 %876, 1
  br i1 %877, label %890, label %878

878:                                              ; preds = %875
  %879 = load i32, ptr %67, align 4, !tbaa !39
  %880 = load ptr, ptr %68, align 8, !tbaa !40
  %881 = load i32, ptr %880, align 4, !tbaa !23
  %882 = add i32 %881, 1
  %883 = call i32 @llvm.ctlz.i32(i32 %882, i1 true), !range !38
  %884 = xor i32 %883, 31
  %885 = shl i32 %882, 8
  %886 = lshr i32 %885, %884
  %887 = shl nuw nsw i32 %884, 8
  %888 = add i32 %886, %887
  %889 = sub i32 %879, %888
  br label %890

890:                                              ; preds = %875, %878
  %891 = phi i32 [ %889, %878 ], [ 256, %875 ]
  %892 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %822, i32 %891), !nosanitize !47
  %893 = extractvalue { i32, i1 } %892, 0, !nosanitize !47
  %894 = extractvalue { i32, i1 } %892, 1, !nosanitize !47
  br i1 %894, label %300, label %895, !nosanitize !47

895:                                              ; preds = %890
  %896 = zext i1 %825 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #12
  %897 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %337, i32 4
  %898 = call i32 %35(ptr noundef %46, ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %338, ptr noundef %16, ptr noundef nonnull %897, i32 noundef %896, i32 noundef %40) #12
  store i32 %898, ptr %14, align 4, !tbaa !23
  %899 = ptrtoint ptr %338 to i64
  %900 = sub i64 %899, %56
  %901 = trunc i64 %900 to i32
  %902 = sub i64 %57, %899
  %903 = trunc i64 %902 to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef nonnull %12, ptr noundef %46, ptr noundef nonnull %14, i32 noundef %901, i32 noundef %903, i32 noundef %40)
  %904 = load i32, ptr %14, align 4, !tbaa !23
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %906, label %907

906:                                              ; preds = %895
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  br label %1124

907:                                              ; preds = %895
  %908 = add i32 %904, -1
  %909 = zext i32 %908 to i64
  %910 = getelementptr inbounds %struct.ZSTD_match_t, ptr %46, i64 %909, i32 1
  %911 = load i32, ptr %910, align 4, !tbaa !43
  %912 = icmp ule i32 %911, %38
  %913 = add i32 %911, %335
  %914 = icmp ult i32 %913, 4096
  %915 = and i1 %912, %914
  %916 = zext nneg i32 %911 to i64
  %917 = getelementptr inbounds i8, ptr %338, i64 %916
  %918 = icmp ult ptr %917, %16
  %919 = select i1 %915, i1 %918, i1 false
  br i1 %919, label %920, label %1142

920:                                              ; preds = %907
  %921 = zext i32 %904 to i64
  br label %922

922:                                              ; preds = %920, %1116
  %923 = phi i64 [ 0, %920 ], [ %1118, %1116 ]
  %924 = phi i32 [ %824, %920 ], [ %1117, %1116 ]
  %925 = getelementptr inbounds %struct.ZSTD_match_t, ptr %46, i64 %923
  %926 = load i32, ptr %925, align 4, !tbaa !45
  %927 = getelementptr inbounds %struct.ZSTD_match_t, ptr %46, i64 %923, i32 1
  %928 = load i32, ptr %927, align 4, !tbaa !43
  %929 = icmp eq i64 %923, 0
  br i1 %929, label %935, label %930

930:                                              ; preds = %922
  %931 = add nsw i64 %923, -1
  %932 = getelementptr inbounds %struct.ZSTD_match_t, ptr %46, i64 %931, i32 1
  %933 = load i32, ptr %932, align 4, !tbaa !43
  %934 = add i32 %933, 1
  br label %935

935:                                              ; preds = %930, %922
  %936 = phi i32 [ %934, %930 ], [ %40, %922 ]
  %937 = icmp ult i32 %928, %936
  br i1 %937, label %1116, label %938

938:                                              ; preds = %935
  %939 = call i32 @llvm.ctlz.i32(i32 %926, i1 true), !range !38
  %940 = xor i32 %939, 31
  %941 = load i32, ptr %66, align 8, !tbaa !37
  %942 = icmp eq i32 %941, 1
  br i1 %942, label %943, label %1012

943:                                              ; preds = %938
  %944 = add i32 %335, %928
  br label %945

945:                                              ; preds = %943, %998
  %946 = phi i32 [ 0, %943 ], [ %1002, %998 ]
  %947 = phi i32 [ %924, %943 ], [ %999, %998 ]
  %948 = phi i32 [ %928, %943 ], [ %1000, %998 ]
  %949 = sub i32 %944, %946
  %950 = zext i32 %949 to i64
  %951 = add i32 %948, %335
  %952 = add i32 %948, -2
  %953 = call i32 @llvm.ctlz.i32(i32 %952, i1 true), !range !38
  %954 = xor i32 %953, 31
  %955 = shl i32 %952, 8
  %956 = lshr i32 %955, %954
  %957 = add nuw nsw i32 %954, %940
  %958 = shl nuw nsw i32 %957, 8
  %959 = add i32 %956, 4096
  %960 = add i32 %959, %958
  %961 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %893, i32 %960), !nosanitize !47
  %962 = extractvalue { i32, i1 } %961, 0, !nosanitize !47
  %963 = extractvalue { i32, i1 } %961, 1, !nosanitize !47
  br i1 %963, label %300, label %964, !nosanitize !47

964:                                              ; preds = %945
  %965 = icmp ugt i32 %951, %947
  br i1 %965, label %973, label %966

966:                                              ; preds = %964
  %967 = zext i32 %951 to i64
  %968 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %967
  %969 = load i32, ptr %968, align 4, !tbaa !42
  %970 = icmp slt i32 %962, %969
  br i1 %970, label %971, label %998

971:                                              ; preds = %966
  %972 = zext i32 %951 to i64
  br label %991

973:                                              ; preds = %964
  %974 = zext i32 %947 to i64
  %975 = zext i32 %951 to i64
  %976 = sub nsw i64 %950, %974
  %977 = and i64 %976, 1
  %978 = icmp eq i64 %977, 0
  br i1 %978, label %983, label %979

979:                                              ; preds = %973
  %980 = add nuw nsw i64 %974, 1
  %981 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %980
  store i32 1073741824, ptr %981, align 4, !tbaa !42
  %982 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %980, i32 3
  store i32 1, ptr %982, align 4, !tbaa !36
  br label %983

983:                                              ; preds = %979, %973
  %984 = phi i64 [ %974, %973 ], [ %980, %979 ]
  %985 = phi i64 [ undef, %973 ], [ %980, %979 ]
  %986 = add nsw i64 %950, -1
  %987 = icmp eq i64 %986, %974
  br i1 %987, label %988, label %1003

988:                                              ; preds = %1003, %983
  %989 = phi i64 [ %985, %983 ], [ %1008, %1003 ]
  %990 = trunc i64 %989 to i32
  br label %991

991:                                              ; preds = %971, %988
  %992 = phi i64 [ %972, %971 ], [ %975, %988 ]
  %993 = phi i32 [ %947, %971 ], [ %990, %988 ]
  %994 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %992
  %995 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %992, i32 2
  store i32 %948, ptr %995, align 4, !tbaa !34
  %996 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %992, i32 1
  store i32 %926, ptr %996, align 4, !tbaa !48
  %997 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %992, i32 3
  store i32 0, ptr %997, align 4, !tbaa !36
  store i32 %962, ptr %994, align 4, !tbaa !42
  br label %998

998:                                              ; preds = %991, %966
  %999 = phi i32 [ %993, %991 ], [ %947, %966 ]
  %1000 = add i32 %948, -1
  %1001 = icmp ult i32 %1000, %936
  %1002 = add i32 %946, 1
  br i1 %1001, label %1116, label %945, !llvm.loop !60

1003:                                             ; preds = %983, %1003
  %1004 = phi i64 [ %1008, %1003 ], [ %984, %983 ]
  %1005 = add nuw nsw i64 %1004, 1
  %1006 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1005
  store i32 1073741824, ptr %1006, align 4, !tbaa !42
  %1007 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1005, i32 3
  store i32 1, ptr %1007, align 4, !tbaa !36
  %1008 = add nuw nsw i64 %1004, 2
  %1009 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1008
  store i32 1073741824, ptr %1009, align 4, !tbaa !42
  %1010 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1008, i32 3
  store i32 1, ptr %1010, align 4, !tbaa !36
  %1011 = icmp ult i64 %1008, %975
  br i1 %1011, label %1003, label %988, !llvm.loop !61

1012:                                             ; preds = %938
  %1013 = zext nneg i32 %940 to i64
  %1014 = load i32, ptr %70, align 4, !tbaa !50
  %1015 = load ptr, ptr %71, align 8, !tbaa !51
  %1016 = getelementptr inbounds i32, ptr %1015, i64 %1013
  %1017 = load i32, ptr %72, align 8, !tbaa !52
  %1018 = load ptr, ptr %73, align 8, !tbaa !53
  %1019 = add i32 %1014, 51
  %1020 = add i32 %1019, %1017
  %1021 = add i32 %335, %928
  br label %1022

1022:                                             ; preds = %1012, %1111
  %1023 = phi i32 [ 0, %1012 ], [ %1115, %1111 ]
  %1024 = phi i32 [ %924, %1012 ], [ %1112, %1111 ]
  %1025 = phi i32 [ %928, %1012 ], [ %1113, %1111 ]
  %1026 = sub i32 %1021, %1023
  %1027 = zext i32 %1026 to i64
  %1028 = add i32 %1025, %335
  %1029 = add i32 %1025, -3
  %1030 = load i32, ptr %1016, align 4, !tbaa !23
  %1031 = add i32 %1030, 1
  %1032 = call i32 @llvm.ctlz.i32(i32 %1031, i1 true), !range !38
  %1033 = xor i32 %1032, 31
  %1034 = shl i32 %1031, 8
  %1035 = lshr i32 %1034, %1033
  %1036 = icmp ugt i32 %1029, 127
  br i1 %1036, label %1037, label %1040

1037:                                             ; preds = %1022
  %1038 = call i32 @llvm.ctlz.i32(i32 %1029, i1 true), !range !38
  %1039 = sub nuw nsw i32 67, %1038
  br label %1045

1040:                                             ; preds = %1022
  %1041 = zext nneg i32 %1029 to i64
  %1042 = getelementptr inbounds [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %1041
  %1043 = load i8, ptr %1042, align 1, !tbaa !41
  %1044 = zext i8 %1043 to i32
  br label %1045

1045:                                             ; preds = %1037, %1040
  %1046 = phi i32 [ %1039, %1037 ], [ %1044, %1040 ]
  %1047 = zext nneg i32 %1046 to i64
  %1048 = getelementptr inbounds [53 x i8], ptr @ML_bits, i64 0, i64 %1047
  %1049 = load i8, ptr %1048, align 1, !tbaa !41
  %1050 = zext i8 %1049 to i32
  %1051 = getelementptr inbounds i32, ptr %1018, i64 %1047
  %1052 = load i32, ptr %1051, align 4, !tbaa !23
  %1053 = add i32 %1052, 1
  %1054 = call i32 @llvm.ctlz.i32(i32 %1053, i1 true), !range !38
  %1055 = xor i32 %1054, 31
  %1056 = shl i32 %1053, 8
  %1057 = lshr i32 %1056, %1055
  %1058 = add nuw nsw i32 %940, %1050
  %1059 = add nuw nsw i32 %1033, %1055
  %1060 = sub nsw i32 %1058, %1059
  %1061 = shl nsw i32 %1060, 8
  %1062 = add i32 %1035, %1057
  %1063 = sub i32 %1020, %1062
  %1064 = add i32 %1063, %1061
  %1065 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %893, i32 %1064), !nosanitize !47
  %1066 = extractvalue { i32, i1 } %1065, 0, !nosanitize !47
  %1067 = extractvalue { i32, i1 } %1065, 1, !nosanitize !47
  br i1 %1067, label %300, label %1068, !nosanitize !47

1068:                                             ; preds = %1045
  %1069 = icmp ugt i32 %1028, %1024
  br i1 %1069, label %1077, label %1070

1070:                                             ; preds = %1068
  %1071 = zext i32 %1028 to i64
  %1072 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1071
  %1073 = load i32, ptr %1072, align 4, !tbaa !42
  %1074 = icmp slt i32 %1066, %1073
  br i1 %1074, label %1075, label %1111

1075:                                             ; preds = %1070
  %1076 = zext i32 %1028 to i64
  br label %1104

1077:                                             ; preds = %1068
  %1078 = zext i32 %1024 to i64
  %1079 = zext i32 %1028 to i64
  %1080 = sub nsw i64 %1027, %1078
  %1081 = and i64 %1080, 1
  %1082 = icmp eq i64 %1081, 0
  br i1 %1082, label %1087, label %1083

1083:                                             ; preds = %1077
  %1084 = add nuw nsw i64 %1078, 1
  %1085 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1084
  store i32 1073741824, ptr %1085, align 4, !tbaa !42
  %1086 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1084, i32 3
  store i32 1, ptr %1086, align 4, !tbaa !36
  br label %1087

1087:                                             ; preds = %1083, %1077
  %1088 = phi i64 [ %1078, %1077 ], [ %1084, %1083 ]
  %1089 = phi i64 [ undef, %1077 ], [ %1084, %1083 ]
  %1090 = add nsw i64 %1027, -1
  %1091 = icmp eq i64 %1090, %1078
  br i1 %1091, label %1101, label %1092

1092:                                             ; preds = %1087, %1092
  %1093 = phi i64 [ %1097, %1092 ], [ %1088, %1087 ]
  %1094 = add nuw nsw i64 %1093, 1
  %1095 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1094
  store i32 1073741824, ptr %1095, align 4, !tbaa !42
  %1096 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1094, i32 3
  store i32 1, ptr %1096, align 4, !tbaa !36
  %1097 = add nuw nsw i64 %1093, 2
  %1098 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1097
  store i32 1073741824, ptr %1098, align 4, !tbaa !42
  %1099 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1097, i32 3
  store i32 1, ptr %1099, align 4, !tbaa !36
  %1100 = icmp ult i64 %1097, %1079
  br i1 %1100, label %1092, label %1101, !llvm.loop !61

1101:                                             ; preds = %1092, %1087
  %1102 = phi i64 [ %1089, %1087 ], [ %1097, %1092 ]
  %1103 = trunc i64 %1102 to i32
  br label %1104

1104:                                             ; preds = %1075, %1101
  %1105 = phi i64 [ %1076, %1075 ], [ %1079, %1101 ]
  %1106 = phi i32 [ %1024, %1075 ], [ %1103, %1101 ]
  %1107 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1105
  %1108 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1105, i32 2
  store i32 %1025, ptr %1108, align 4, !tbaa !34
  %1109 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1105, i32 1
  store i32 %926, ptr %1109, align 4, !tbaa !48
  %1110 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1105, i32 3
  store i32 0, ptr %1110, align 4, !tbaa !36
  store i32 %1066, ptr %1107, align 4, !tbaa !42
  br label %1111

1111:                                             ; preds = %1070, %1104
  %1112 = phi i32 [ %1106, %1104 ], [ %1024, %1070 ]
  %1113 = add i32 %1025, -1
  %1114 = icmp ult i32 %1113, %936
  %1115 = add i32 %1023, 1
  br i1 %1114, label %1116, label %1022, !llvm.loop !60

1116:                                             ; preds = %1111, %998, %935
  %1117 = phi i32 [ %924, %935 ], [ %999, %998 ], [ %1112, %1111 ]
  %1118 = add nuw nsw i64 %923, 1
  %1119 = icmp eq i64 %1118, %921
  br i1 %1119, label %1120, label %922, !llvm.loop !62

1120:                                             ; preds = %1116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  %1121 = add i32 %1117, 1
  %1122 = zext i32 %1121 to i64
  %1123 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1122
  store i32 1073741824, ptr %1123, align 4, !tbaa !42
  br label %1124

1124:                                             ; preds = %871, %1120, %906
  %1125 = phi i32 [ %824, %906 ], [ %824, %871 ], [ %1117, %1120 ]
  %1126 = add i32 %335, 1
  %1127 = icmp ugt i32 %1126, %1125
  br i1 %1127, label %1128, label %334, !llvm.loop !63

1128:                                             ; preds = %873, %1124, %329
  %1129 = phi i32 [ 0, %329 ], [ %335, %873 ], [ %1125, %1124 ]
  %1130 = zext i32 %1129 to i64
  %1131 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1130
  %1132 = load i32, ptr %1131, align 4, !tbaa.struct !59
  %1133 = getelementptr inbounds i8, ptr %1131, i64 4
  %1134 = load i32, ptr %1133, align 4, !tbaa.struct !64
  %1135 = getelementptr inbounds i8, ptr %1131, i64 8
  %1136 = load i32, ptr %1135, align 4, !tbaa.struct !65
  %1137 = getelementptr inbounds i8, ptr %1131, i64 12
  %1138 = load i32, ptr %1137, align 4, !tbaa.struct !66
  %1139 = getelementptr inbounds i8, ptr %1131, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %1139, i64 12, i1 false), !tbaa.struct !67
  %1140 = sub i32 %1129, %1136
  %1141 = icmp eq i32 %1136, 0
  br i1 %1141, label %1146, label %1151

1142:                                             ; preds = %907
  %1143 = getelementptr inbounds %struct.ZSTD_match_t, ptr %46, i64 %909
  %1144 = load i32, ptr %1143, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  %1145 = icmp eq i32 %911, 0
  br i1 %1145, label %1146, label %1153

1146:                                             ; preds = %1142, %1128
  %1147 = phi i32 [ %101, %1142 ], [ %1132, %1128 ]
  %1148 = phi i32 [ %913, %1142 ], [ %1129, %1128 ]
  %1149 = zext i32 %1148 to i64
  %1150 = getelementptr inbounds i8, ptr %99, i64 %1149
  br label %1611, !llvm.loop !68

1151:                                             ; preds = %1128
  %1152 = icmp eq i32 %1138, 0
  br i1 %1152, label %1153, label %1202

1153:                                             ; preds = %1142, %1151
  %1154 = phi i32 [ %1140, %1151 ], [ %335, %1142 ]
  %1155 = phi i32 [ %1136, %1151 ], [ %911, %1142 ]
  %1156 = phi i32 [ %1134, %1151 ], [ %1144, %1142 ]
  %1157 = phi i32 [ %1132, %1151 ], [ %101, %1142 ]
  %1158 = zext i32 %1154 to i64
  %1159 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1158, i32 3
  %1160 = load i32, ptr %1159, align 4, !tbaa !36
  br label %1161

1161:                                             ; preds = %1153, %180
  %1162 = phi i32 [ %105, %180 ], [ %1160, %1153 ]
  %1163 = phi i32 [ 0, %180 ], [ %1154, %1153 ]
  %1164 = phi i32 [ %178, %180 ], [ %1155, %1153 ]
  %1165 = phi i32 [ %182, %180 ], [ %1156, %1153 ]
  %1166 = phi i32 [ %101, %180 ], [ %1157, %1153 ]
  %1167 = zext i32 %1163 to i64
  %1168 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1167, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %1168, i64 12, i1 false)
  %1169 = icmp ugt i32 %1165, 3
  br i1 %1169, label %1170, label %1174

1170:                                             ; preds = %1161
  %1171 = load i32, ptr %81, align 4, !tbaa !23
  %1172 = load i32, ptr %7, align 8, !tbaa !23
  store i32 %1172, ptr %81, align 4, !tbaa !23
  %1173 = add i32 %1165, -3
  br label %1196

1174:                                             ; preds = %1161
  %1175 = icmp eq i32 %1162, 0
  %1176 = zext i1 %1175 to i32
  %1177 = add nsw i32 %1165, -1
  %1178 = add nsw i32 %1177, %1176
  switch i32 %1178, label %1184 [
    i32 0, label %1179
    i32 3, label %1181
  ]

1179:                                             ; preds = %1174
  %1180 = load i32, ptr %80, align 8
  br label %1199

1181:                                             ; preds = %1174
  %1182 = load i32, ptr %7, align 8, !tbaa !23
  %1183 = add i32 %1182, -1
  br label %1189

1184:                                             ; preds = %1174
  %1185 = zext i32 %1178 to i64
  %1186 = getelementptr inbounds i32, ptr %7, i64 %1185
  %1187 = load i32, ptr %1186, align 4, !tbaa !23
  %1188 = load i32, ptr %7, align 8, !tbaa !23
  br label %1189

1189:                                             ; preds = %1184, %1181
  %1190 = phi i32 [ %1182, %1181 ], [ %1188, %1184 ]
  %1191 = phi i32 [ %1183, %1181 ], [ %1187, %1184 ]
  %1192 = icmp eq i32 %1178, 1
  %1193 = load i32, ptr %80, align 8
  %1194 = load i32, ptr %81, align 4
  %1195 = select i1 %1192, i32 %1193, i32 %1194
  store i32 %1190, ptr %81, align 4, !tbaa !23
  br label %1196

1196:                                             ; preds = %1189, %1170
  %1197 = phi i32 [ %1195, %1189 ], [ %1171, %1170 ]
  %1198 = phi i32 [ %1191, %1189 ], [ %1173, %1170 ]
  store i32 %1198, ptr %7, align 8, !tbaa !23
  br label %1199

1199:                                             ; preds = %1179, %1196
  %1200 = phi i32 [ %1180, %1179 ], [ %1197, %1196 ]
  %1201 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7)
  store i64 %1201, ptr %2, align 4
  store i32 %1200, ptr %82, align 4
  br label %1204

1202:                                             ; preds = %1151
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %1139, i64 12, i1 false)
  %1203 = sub i32 %1140, %1138
  br label %1204

1204:                                             ; preds = %1202, %1199
  %1205 = phi i32 [ 0, %1199 ], [ %1138, %1202 ]
  %1206 = phi i32 [ %1164, %1199 ], [ %1136, %1202 ]
  %1207 = phi i32 [ %1165, %1199 ], [ %1134, %1202 ]
  %1208 = phi i32 [ %1166, %1199 ], [ %1132, %1202 ]
  %1209 = phi i32 [ %1163, %1199 ], [ %1203, %1202 ]
  %1210 = add i32 %1209, 2
  %1211 = zext i32 %1210 to i64
  %1212 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1211
  store i32 %1208, ptr %1212, align 4, !tbaa.struct !59
  %1213 = getelementptr inbounds i8, ptr %1212, i64 4
  store i32 %1207, ptr %1213, align 4, !tbaa.struct !64
  %1214 = getelementptr inbounds i8, ptr %1212, i64 8
  store i32 %1206, ptr %1214, align 4, !tbaa.struct !65
  %1215 = getelementptr inbounds i8, ptr %1212, i64 12
  store i32 %1205, ptr %1215, align 4, !tbaa.struct !66
  %1216 = getelementptr inbounds i8, ptr %1212, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1216, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !67
  %1217 = zext i32 %1209 to i64
  %1218 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1217
  %1219 = load i64, ptr %1218, align 4
  %1220 = getelementptr inbounds i8, ptr %1218, i64 8
  %1221 = load i32, ptr %1220, align 4, !tbaa.struct !65
  %1222 = getelementptr inbounds i8, ptr %1218, i64 12
  %1223 = load i32, ptr %1222, align 4, !tbaa.struct !66
  %1224 = zext i32 %1210 to i64
  %1225 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1224, i32 3
  store i32 %1223, ptr %1225, align 4, !tbaa !36
  %1226 = icmp eq i32 %1221, 0
  br i1 %1226, label %1253, label %1227

1227:                                             ; preds = %1204, %1227
  %1228 = phi i32 [ %1249, %1227 ], [ %1223, %1204 ]
  %1229 = phi i32 [ %1247, %1227 ], [ %1221, %1204 ]
  %1230 = phi i64 [ %1245, %1227 ], [ %1219, %1204 ]
  %1231 = phi i64 [ %1243, %1227 ], [ %1217, %1204 ]
  %1232 = phi i32 [ %1242, %1227 ], [ %1209, %1204 ]
  %1233 = phi i32 [ %1235, %1227 ], [ %1210, %1204 ]
  %1234 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1231, i32 4
  %1235 = add i32 %1233, -1
  %1236 = zext i32 %1235 to i64
  %1237 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1236
  store i64 %1230, ptr %1237, align 4
  %1238 = getelementptr inbounds i8, ptr %1237, i64 8
  store i32 %1229, ptr %1238, align 4, !tbaa.struct !65
  %1239 = getelementptr inbounds i8, ptr %1237, i64 12
  store i32 %1228, ptr %1239, align 4, !tbaa.struct !66
  %1240 = getelementptr inbounds i8, ptr %1237, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1240, ptr noundef nonnull align 4 dereferenceable(12) %1234, i64 12, i1 false)
  %1241 = add i32 %1229, %1228
  %1242 = sub i32 %1232, %1241
  %1243 = zext i32 %1242 to i64
  %1244 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1243
  %1245 = load i64, ptr %1244, align 4
  %1246 = getelementptr inbounds i8, ptr %1244, i64 8
  %1247 = load i32, ptr %1246, align 4, !tbaa.struct !65
  %1248 = getelementptr inbounds i8, ptr %1244, i64 12
  %1249 = load i32, ptr %1248, align 4, !tbaa.struct !66
  %1250 = zext i32 %1235 to i64
  %1251 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1250, i32 3
  store i32 %1249, ptr %1251, align 4, !tbaa !36
  %1252 = icmp eq i32 %1247, 0
  br i1 %1252, label %1253, label %1227

1253:                                             ; preds = %1227, %1204
  %1254 = phi i32 [ %1210, %1204 ], [ %1235, %1227 ]
  %1255 = icmp ugt i32 %1254, %1210
  br i1 %1255, label %1572, label %1256

1256:                                             ; preds = %1253, %1567
  %1257 = phi ptr [ %1568, %1567 ], [ %100, %1253 ]
  %1258 = phi i32 [ %1570, %1567 ], [ %1254, %1253 ]
  %1259 = ptrtoint ptr %1257 to i64
  %1260 = zext i32 %1258 to i64
  %1261 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1260, i32 3
  %1262 = load i32, ptr %1261, align 4, !tbaa !36
  %1263 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1260, i32 2
  %1264 = load i32, ptr %1263, align 4, !tbaa !34
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1266, label %1269

1266:                                             ; preds = %1256
  %1267 = zext i32 %1262 to i64
  %1268 = getelementptr inbounds i8, ptr %1257, i64 %1267
  br label %1567

1269:                                             ; preds = %1256
  %1270 = add i32 %1264, %1262
  %1271 = getelementptr inbounds %struct.ZSTD_optimal_t, ptr %44, i64 %1260, i32 1
  %1272 = load i32, ptr %1271, align 4, !tbaa !48
  %1273 = load i32, ptr %74, align 8, !tbaa !55
  %1274 = icmp eq i32 %1273, 2
  br i1 %1274, label %1336, label %1275

1275:                                             ; preds = %1269
  %1276 = icmp eq i32 %1262, 0
  br i1 %1276, label %1332, label %1277

1277:                                             ; preds = %1275
  %1278 = load ptr, ptr %15, align 8, !tbaa !57
  %1279 = zext i32 %1262 to i64
  %1280 = and i64 %1279, 3
  %1281 = icmp ult i32 %1262, 4
  br i1 %1281, label %1317, label %1282

1282:                                             ; preds = %1277
  %1283 = and i64 %1279, 4294967292
  br label %1284

1284:                                             ; preds = %1284, %1282
  %1285 = phi i64 [ 0, %1282 ], [ %1314, %1284 ]
  %1286 = phi i64 [ 0, %1282 ], [ %1315, %1284 ]
  %1287 = getelementptr inbounds i8, ptr %1257, i64 %1285
  %1288 = load i8, ptr %1287, align 1, !tbaa !41
  %1289 = zext i8 %1288 to i64
  %1290 = getelementptr inbounds i32, ptr %1278, i64 %1289
  %1291 = load i32, ptr %1290, align 4, !tbaa !23
  %1292 = add i32 %1291, 2
  store i32 %1292, ptr %1290, align 4, !tbaa !23
  %1293 = or disjoint i64 %1285, 1
  %1294 = getelementptr inbounds i8, ptr %1257, i64 %1293
  %1295 = load i8, ptr %1294, align 1, !tbaa !41
  %1296 = zext i8 %1295 to i64
  %1297 = getelementptr inbounds i32, ptr %1278, i64 %1296
  %1298 = load i32, ptr %1297, align 4, !tbaa !23
  %1299 = add i32 %1298, 2
  store i32 %1299, ptr %1297, align 4, !tbaa !23
  %1300 = or disjoint i64 %1285, 2
  %1301 = getelementptr inbounds i8, ptr %1257, i64 %1300
  %1302 = load i8, ptr %1301, align 1, !tbaa !41
  %1303 = zext i8 %1302 to i64
  %1304 = getelementptr inbounds i32, ptr %1278, i64 %1303
  %1305 = load i32, ptr %1304, align 4, !tbaa !23
  %1306 = add i32 %1305, 2
  store i32 %1306, ptr %1304, align 4, !tbaa !23
  %1307 = or disjoint i64 %1285, 3
  %1308 = getelementptr inbounds i8, ptr %1257, i64 %1307
  %1309 = load i8, ptr %1308, align 1, !tbaa !41
  %1310 = zext i8 %1309 to i64
  %1311 = getelementptr inbounds i32, ptr %1278, i64 %1310
  %1312 = load i32, ptr %1311, align 4, !tbaa !23
  %1313 = add i32 %1312, 2
  store i32 %1313, ptr %1311, align 4, !tbaa !23
  %1314 = add nuw nsw i64 %1285, 4
  %1315 = add i64 %1286, 4
  %1316 = icmp eq i64 %1315, %1283
  br i1 %1316, label %1317, label %1284, !llvm.loop !69

1317:                                             ; preds = %1284, %1277
  %1318 = phi i64 [ 0, %1277 ], [ %1314, %1284 ]
  %1319 = icmp eq i64 %1280, 0
  br i1 %1319, label %1332, label %1320

1320:                                             ; preds = %1317, %1320
  %1321 = phi i64 [ %1329, %1320 ], [ %1318, %1317 ]
  %1322 = phi i64 [ %1330, %1320 ], [ 0, %1317 ]
  %1323 = getelementptr inbounds i8, ptr %1257, i64 %1321
  %1324 = load i8, ptr %1323, align 1, !tbaa !41
  %1325 = zext i8 %1324 to i64
  %1326 = getelementptr inbounds i32, ptr %1278, i64 %1325
  %1327 = load i32, ptr %1326, align 4, !tbaa !23
  %1328 = add i32 %1327, 2
  store i32 %1328, ptr %1326, align 4, !tbaa !23
  %1329 = add nuw nsw i64 %1321, 1
  %1330 = add i64 %1322, 1
  %1331 = icmp eq i64 %1330, %1280
  br i1 %1331, label %1332, label %1320, !llvm.loop !97

1332:                                             ; preds = %1317, %1320, %1275
  %1333 = shl i32 %1262, 1
  %1334 = load i32, ptr %83, align 8, !tbaa !72
  %1335 = add i32 %1334, %1333
  store i32 %1335, ptr %83, align 8, !tbaa !72
  br label %1336

1336:                                             ; preds = %1332, %1269
  %1337 = icmp ugt i32 %1262, 63
  br i1 %1337, label %1338, label %1341

1338:                                             ; preds = %1336
  %1339 = call i32 @llvm.ctlz.i32(i32 %1262, i1 true), !range !38
  %1340 = sub nuw nsw i32 50, %1339
  br label %1346

1341:                                             ; preds = %1336
  %1342 = zext nneg i32 %1262 to i64
  %1343 = getelementptr inbounds [64 x i8], ptr @ZSTD_LLcode.LL_Code, i64 0, i64 %1342
  %1344 = load i8, ptr %1343, align 1, !tbaa !41
  %1345 = zext i8 %1344 to i32
  br label %1346

1346:                                             ; preds = %1341, %1338
  %1347 = phi i32 [ %1340, %1338 ], [ %1345, %1341 ]
  %1348 = load ptr, ptr %68, align 8, !tbaa !40
  %1349 = zext nneg i32 %1347 to i64
  %1350 = getelementptr inbounds i32, ptr %1348, i64 %1349
  %1351 = load i32, ptr %1350, align 4, !tbaa !23
  %1352 = add i32 %1351, 1
  store i32 %1352, ptr %1350, align 4, !tbaa !23
  %1353 = load i32, ptr %84, align 4, !tbaa !73
  %1354 = add i32 %1353, 1
  store i32 %1354, ptr %84, align 4, !tbaa !73
  %1355 = call i32 @llvm.ctlz.i32(i32 %1272, i1 true), !range !38
  %1356 = xor i32 %1355, 31
  %1357 = load ptr, ptr %71, align 8, !tbaa !51
  %1358 = zext nneg i32 %1356 to i64
  %1359 = getelementptr inbounds i32, ptr %1357, i64 %1358
  %1360 = load i32, ptr %1359, align 4, !tbaa !23
  %1361 = add i32 %1360, 1
  store i32 %1361, ptr %1359, align 4, !tbaa !23
  %1362 = load i32, ptr %85, align 4, !tbaa !74
  %1363 = add i32 %1362, 1
  store i32 %1363, ptr %85, align 4, !tbaa !74
  %1364 = add i32 %1264, -3
  %1365 = icmp ugt i32 %1364, 127
  br i1 %1365, label %1366, label %1369

1366:                                             ; preds = %1346
  %1367 = call i32 @llvm.ctlz.i32(i32 %1364, i1 true), !range !38
  %1368 = sub nuw nsw i32 67, %1367
  br label %1374

1369:                                             ; preds = %1346
  %1370 = zext nneg i32 %1364 to i64
  %1371 = getelementptr inbounds [128 x i8], ptr @ZSTD_MLcode.ML_Code, i64 0, i64 %1370
  %1372 = load i8, ptr %1371, align 1, !tbaa !41
  %1373 = zext i8 %1372 to i32
  br label %1374

1374:                                             ; preds = %1366, %1369
  %1375 = phi i32 [ %1368, %1366 ], [ %1373, %1369 ]
  %1376 = load ptr, ptr %73, align 8, !tbaa !53
  %1377 = zext nneg i32 %1375 to i64
  %1378 = getelementptr inbounds i32, ptr %1376, i64 %1377
  %1379 = load i32, ptr %1378, align 4, !tbaa !23
  %1380 = add i32 %1379, 1
  store i32 %1380, ptr %1378, align 4, !tbaa !23
  %1381 = load i32, ptr %86, align 8, !tbaa !75
  %1382 = add i32 %1381, 1
  store i32 %1382, ptr %86, align 8, !tbaa !75
  %1383 = zext i32 %1262 to i64
  %1384 = zext i32 %1264 to i64
  %1385 = getelementptr inbounds i8, ptr %1257, i64 %1383
  %1386 = icmp ugt ptr %1385, %87
  %1387 = load ptr, ptr %88, align 8, !tbaa !76
  br i1 %1386, label %1411, label %1388

1388:                                             ; preds = %1374
  %1389 = load <2 x i64>, ptr %1257, align 1, !tbaa !41
  store <2 x i64> %1389, ptr %1387, align 1, !tbaa !41
  %1390 = icmp ugt i32 %1262, 16
  br i1 %1390, label %1391, label %1532

1391:                                             ; preds = %1388
  %1392 = load ptr, ptr %88, align 8, !tbaa !76
  %1393 = getelementptr inbounds i8, ptr %1392, i64 16
  %1394 = getelementptr inbounds i8, ptr %1257, i64 16
  %1395 = add nsw i64 %1383, -16
  %1396 = getelementptr inbounds i8, ptr %1392, i64 %1383
  %1397 = load <2 x i64>, ptr %1394, align 1, !tbaa !41
  store <2 x i64> %1397, ptr %1393, align 1, !tbaa !41
  %1398 = icmp ult i64 %1395, 17
  br i1 %1398, label %1532, label %1399

1399:                                             ; preds = %1391
  %1400 = getelementptr inbounds i8, ptr %1392, i64 32
  br label %1401

1401:                                             ; preds = %1401, %1399
  %1402 = phi ptr [ %1400, %1399 ], [ %1409, %1401 ]
  %1403 = phi ptr [ %1394, %1399 ], [ %1407, %1401 ]
  %1404 = getelementptr inbounds i8, ptr %1403, i64 16
  %1405 = load <2 x i64>, ptr %1404, align 1, !tbaa !41
  store <2 x i64> %1405, ptr %1402, align 1, !tbaa !41
  %1406 = getelementptr inbounds i8, ptr %1402, i64 16
  %1407 = getelementptr inbounds i8, ptr %1403, i64 32
  %1408 = load <2 x i64>, ptr %1407, align 1, !tbaa !41
  store <2 x i64> %1408, ptr %1406, align 1, !tbaa !41
  %1409 = getelementptr inbounds i8, ptr %1402, i64 32
  %1410 = icmp ult ptr %1409, %1396
  br i1 %1410, label %1401, label %1536, !llvm.loop !78

1411:                                             ; preds = %1374
  %1412 = ptrtoint ptr %1385 to i64
  %1413 = icmp ugt ptr %1257, %87
  br i1 %1413, label %1432, label %1414

1414:                                             ; preds = %1411
  %1415 = ptrtoint ptr %1257 to i64
  %1416 = sub i64 %89, %1415
  %1417 = getelementptr inbounds i8, ptr %1387, i64 %1416
  %1418 = load <2 x i64>, ptr %1257, align 1, !tbaa !41
  store <2 x i64> %1418, ptr %1387, align 1, !tbaa !41
  %1419 = icmp ult i64 %1416, 17
  br i1 %1419, label %1432, label %1420

1420:                                             ; preds = %1414
  %1421 = getelementptr inbounds i8, ptr %1387, i64 16
  br label %1422

1422:                                             ; preds = %1422, %1420
  %1423 = phi ptr [ %1421, %1420 ], [ %1430, %1422 ]
  %1424 = phi ptr [ %1257, %1420 ], [ %1428, %1422 ]
  %1425 = getelementptr inbounds i8, ptr %1424, i64 16
  %1426 = load <2 x i64>, ptr %1425, align 1, !tbaa !41
  store <2 x i64> %1426, ptr %1423, align 1, !tbaa !41
  %1427 = getelementptr inbounds i8, ptr %1423, i64 16
  %1428 = getelementptr inbounds i8, ptr %1424, i64 32
  %1429 = load <2 x i64>, ptr %1428, align 1, !tbaa !41
  store <2 x i64> %1429, ptr %1427, align 1, !tbaa !41
  %1430 = getelementptr inbounds i8, ptr %1423, i64 32
  %1431 = icmp ult ptr %1430, %1417
  br i1 %1431, label %1422, label %1432, !llvm.loop !78

1432:                                             ; preds = %1422, %1414, %1411
  %1433 = phi ptr [ %87, %1414 ], [ %1257, %1411 ], [ %87, %1422 ]
  %1434 = phi ptr [ %1417, %1414 ], [ %1387, %1411 ], [ %1417, %1422 ]
  %1435 = icmp ult ptr %1433, %1385
  br i1 %1435, label %1436, label %1536

1436:                                             ; preds = %1432
  %1437 = ptrtoint ptr %1434 to i64
  %1438 = ptrtoint ptr %1433 to i64
  %1439 = sub i64 %1412, %1438
  %1440 = getelementptr i8, ptr %1433, i64 %1439
  %1441 = icmp ult i64 %1439, 8
  %1442 = sub i64 %1437, %1438
  %1443 = icmp ult i64 %1442, 32
  %1444 = select i1 %1441, i1 true, i1 %1443
  br i1 %1444, label %1480, label %1445

1445:                                             ; preds = %1436
  %1446 = icmp ult i64 %1439, 32
  br i1 %1446, label %1466, label %1447

1447:                                             ; preds = %1445
  %1448 = and i64 %1439, -32
  br label %1449

1449:                                             ; preds = %1449, %1447
  %1450 = phi i64 [ 0, %1447 ], [ %1457, %1449 ]
  %1451 = getelementptr i8, ptr %1434, i64 %1450
  %1452 = getelementptr i8, ptr %1433, i64 %1450
  %1453 = getelementptr i8, ptr %1452, i64 16
  %1454 = load <16 x i8>, ptr %1452, align 1, !tbaa !41
  %1455 = load <16 x i8>, ptr %1453, align 1, !tbaa !41
  %1456 = getelementptr i8, ptr %1451, i64 16
  store <16 x i8> %1454, ptr %1451, align 1, !tbaa !41
  store <16 x i8> %1455, ptr %1456, align 1, !tbaa !41
  %1457 = add nuw i64 %1450, 32
  %1458 = icmp eq i64 %1457, %1448
  br i1 %1458, label %1459, label %1449, !llvm.loop !98

1459:                                             ; preds = %1449
  %1460 = icmp eq i64 %1439, %1448
  br i1 %1460, label %1536, label %1461

1461:                                             ; preds = %1459
  %1462 = getelementptr i8, ptr %1433, i64 %1448
  %1463 = getelementptr i8, ptr %1434, i64 %1448
  %1464 = and i64 %1439, 24
  %1465 = icmp eq i64 %1464, 0
  br i1 %1465, label %1480, label %1466

1466:                                             ; preds = %1445, %1461
  %1467 = phi i64 [ %1448, %1461 ], [ 0, %1445 ]
  %1468 = and i64 %1439, -8
  %1469 = getelementptr i8, ptr %1434, i64 %1468
  %1470 = getelementptr i8, ptr %1433, i64 %1468
  br label %1471

1471:                                             ; preds = %1471, %1466
  %1472 = phi i64 [ %1467, %1466 ], [ %1476, %1471 ]
  %1473 = getelementptr i8, ptr %1434, i64 %1472
  %1474 = getelementptr i8, ptr %1433, i64 %1472
  %1475 = load <8 x i8>, ptr %1474, align 1, !tbaa !41
  store <8 x i8> %1475, ptr %1473, align 1, !tbaa !41
  %1476 = add nuw i64 %1472, 8
  %1477 = icmp eq i64 %1476, %1468
  br i1 %1477, label %1478, label %1471, !llvm.loop !99

1478:                                             ; preds = %1471
  %1479 = icmp eq i64 %1439, %1468
  br i1 %1479, label %1536, label %1480

1480:                                             ; preds = %1436, %1461, %1478
  %1481 = phi ptr [ %1434, %1436 ], [ %1463, %1461 ], [ %1469, %1478 ]
  %1482 = phi ptr [ %1433, %1436 ], [ %1462, %1461 ], [ %1470, %1478 ]
  %1483 = add i64 %1259, %1383
  %1484 = ptrtoint ptr %1482 to i64
  %1485 = sub i64 %1483, %1484
  %1486 = add i64 %1259, -1
  %1487 = add i64 %1486, %1383
  %1488 = sub i64 %1487, %1484
  %1489 = and i64 %1485, 7
  %1490 = icmp eq i64 %1489, 0
  br i1 %1490, label %1500, label %1491

1491:                                             ; preds = %1480, %1491
  %1492 = phi ptr [ %1497, %1491 ], [ %1481, %1480 ]
  %1493 = phi ptr [ %1495, %1491 ], [ %1482, %1480 ]
  %1494 = phi i64 [ %1498, %1491 ], [ 0, %1480 ]
  %1495 = getelementptr inbounds i8, ptr %1493, i64 1
  %1496 = load i8, ptr %1493, align 1, !tbaa !41
  %1497 = getelementptr inbounds i8, ptr %1492, i64 1
  store i8 %1496, ptr %1492, align 1, !tbaa !41
  %1498 = add i64 %1494, 1
  %1499 = icmp eq i64 %1498, %1489
  br i1 %1499, label %1500, label %1491, !llvm.loop !100

1500:                                             ; preds = %1491, %1480
  %1501 = phi ptr [ %1481, %1480 ], [ %1497, %1491 ]
  %1502 = phi ptr [ %1482, %1480 ], [ %1495, %1491 ]
  %1503 = icmp ult i64 %1488, 7
  br i1 %1503, label %1536, label %1504

1504:                                             ; preds = %1500, %1504
  %1505 = phi ptr [ %1530, %1504 ], [ %1501, %1500 ]
  %1506 = phi ptr [ %1528, %1504 ], [ %1502, %1500 ]
  %1507 = getelementptr inbounds i8, ptr %1506, i64 1
  %1508 = load i8, ptr %1506, align 1, !tbaa !41
  %1509 = getelementptr inbounds i8, ptr %1505, i64 1
  store i8 %1508, ptr %1505, align 1, !tbaa !41
  %1510 = getelementptr inbounds i8, ptr %1506, i64 2
  %1511 = load i8, ptr %1507, align 1, !tbaa !41
  %1512 = getelementptr inbounds i8, ptr %1505, i64 2
  store i8 %1511, ptr %1509, align 1, !tbaa !41
  %1513 = getelementptr inbounds i8, ptr %1506, i64 3
  %1514 = load i8, ptr %1510, align 1, !tbaa !41
  %1515 = getelementptr inbounds i8, ptr %1505, i64 3
  store i8 %1514, ptr %1512, align 1, !tbaa !41
  %1516 = getelementptr inbounds i8, ptr %1506, i64 4
  %1517 = load i8, ptr %1513, align 1, !tbaa !41
  %1518 = getelementptr inbounds i8, ptr %1505, i64 4
  store i8 %1517, ptr %1515, align 1, !tbaa !41
  %1519 = getelementptr inbounds i8, ptr %1506, i64 5
  %1520 = load i8, ptr %1516, align 1, !tbaa !41
  %1521 = getelementptr inbounds i8, ptr %1505, i64 5
  store i8 %1520, ptr %1518, align 1, !tbaa !41
  %1522 = getelementptr inbounds i8, ptr %1506, i64 6
  %1523 = load i8, ptr %1519, align 1, !tbaa !41
  %1524 = getelementptr inbounds i8, ptr %1505, i64 6
  store i8 %1523, ptr %1521, align 1, !tbaa !41
  %1525 = getelementptr inbounds i8, ptr %1506, i64 7
  %1526 = load i8, ptr %1522, align 1, !tbaa !41
  %1527 = getelementptr inbounds i8, ptr %1505, i64 7
  store i8 %1526, ptr %1524, align 1, !tbaa !41
  %1528 = getelementptr inbounds i8, ptr %1506, i64 8
  %1529 = load i8, ptr %1525, align 1, !tbaa !41
  %1530 = getelementptr inbounds i8, ptr %1505, i64 8
  store i8 %1529, ptr %1527, align 1, !tbaa !41
  %1531 = icmp eq ptr %1528, %1440
  br i1 %1531, label %1536, label %1504, !llvm.loop !101

1532:                                             ; preds = %1391, %1388
  %1533 = load ptr, ptr %88, align 8, !tbaa !76
  %1534 = getelementptr inbounds i8, ptr %1533, i64 %1383
  store ptr %1534, ptr %88, align 8, !tbaa !76
  %1535 = load ptr, ptr %91, align 8, !tbaa !85
  br label %1548

1536:                                             ; preds = %1401, %1500, %1504, %1459, %1478, %1432
  %1537 = load ptr, ptr %88, align 8, !tbaa !76
  %1538 = getelementptr inbounds i8, ptr %1537, i64 %1383
  store ptr %1538, ptr %88, align 8, !tbaa !76
  %1539 = icmp ugt i32 %1262, 65535
  %1540 = load ptr, ptr %91, align 8, !tbaa !85
  br i1 %1539, label %1541, label %1548, !prof !86

1541:                                             ; preds = %1536
  store i32 1, ptr %90, align 8, !tbaa !87
  %1542 = load ptr, ptr %1, align 8, !tbaa !88
  %1543 = ptrtoint ptr %1540 to i64
  %1544 = ptrtoint ptr %1542 to i64
  %1545 = sub i64 %1543, %1544
  %1546 = lshr exact i64 %1545, 3
  %1547 = trunc i64 %1546 to i32
  store i32 %1547, ptr %92, align 4, !tbaa !89
  br label %1548

1548:                                             ; preds = %1532, %1541, %1536
  %1549 = phi ptr [ %1535, %1532 ], [ %1540, %1541 ], [ %1540, %1536 ]
  %1550 = trunc i32 %1262 to i16
  %1551 = getelementptr inbounds %struct.SeqDef_s, ptr %1549, i64 0, i32 1
  store i16 %1550, ptr %1551, align 4, !tbaa !90
  store i32 %1272, ptr %1549, align 4, !tbaa !93
  %1552 = add nsw i64 %1384, -3
  %1553 = icmp ugt i64 %1552, 65535
  br i1 %1553, label %1554, label %1561, !prof !58

1554:                                             ; preds = %1548
  store i32 2, ptr %90, align 8, !tbaa !87
  %1555 = load ptr, ptr %1, align 8, !tbaa !88
  %1556 = ptrtoint ptr %1549 to i64
  %1557 = ptrtoint ptr %1555 to i64
  %1558 = sub i64 %1556, %1557
  %1559 = lshr exact i64 %1558, 3
  %1560 = trunc i64 %1559 to i32
  store i32 %1560, ptr %92, align 4, !tbaa !89
  br label %1561

1561:                                             ; preds = %1548, %1554
  %1562 = trunc i64 %1552 to i16
  %1563 = getelementptr inbounds %struct.SeqDef_s, ptr %1549, i64 0, i32 2
  store i16 %1562, ptr %1563, align 2, !tbaa !94
  %1564 = getelementptr inbounds %struct.SeqDef_s, ptr %1549, i64 1
  store ptr %1564, ptr %91, align 8, !tbaa !85
  %1565 = zext i32 %1270 to i64
  %1566 = getelementptr inbounds i8, ptr %1257, i64 %1565
  br label %1567

1567:                                             ; preds = %1561, %1266
  %1568 = phi ptr [ %1257, %1266 ], [ %1566, %1561 ]
  %1569 = phi ptr [ %1268, %1266 ], [ %1566, %1561 ]
  %1570 = add i32 %1258, 1
  %1571 = icmp ugt i32 %1570, %1210
  br i1 %1571, label %1572, label %1256, !llvm.loop !95

1572:                                             ; preds = %1567, %1253
  %1573 = phi ptr [ %100, %1253 ], [ %1568, %1567 ]
  %1574 = phi ptr [ %99, %1253 ], [ %1569, %1567 ]
  %1575 = load i32, ptr %74, align 8, !tbaa !55
  %1576 = icmp eq i32 %1575, 2
  br i1 %1576, label %1586, label %1577

1577:                                             ; preds = %1572
  %1578 = load i32, ptr %83, align 8, !tbaa !72
  %1579 = add i32 %1578, 1
  %1580 = call i32 @llvm.ctlz.i32(i32 %1579, i1 true), !range !38
  %1581 = xor i32 %1580, 31
  %1582 = shl nuw nsw i32 %1581, 8
  %1583 = shl i32 %1579, 8
  %1584 = lshr i32 %1583, %1581
  %1585 = add i32 %1582, %1584
  store i32 %1585, ptr %75, align 8, !tbaa !56
  br label %1586

1586:                                             ; preds = %1572, %1577
  %1587 = load i32, ptr %84, align 4, !tbaa !73
  %1588 = add i32 %1587, 1
  %1589 = call i32 @llvm.ctlz.i32(i32 %1588, i1 true), !range !38
  %1590 = xor i32 %1589, 31
  %1591 = shl nuw nsw i32 %1590, 8
  %1592 = shl i32 %1588, 8
  %1593 = lshr i32 %1592, %1590
  %1594 = add i32 %1591, %1593
  %1595 = load i32, ptr %86, align 8, !tbaa !75
  %1596 = add i32 %1595, 1
  %1597 = call i32 @llvm.ctlz.i32(i32 %1596, i1 true), !range !38
  %1598 = xor i32 %1597, 31
  %1599 = shl nuw nsw i32 %1598, 8
  %1600 = shl i32 %1596, 8
  %1601 = lshr i32 %1600, %1598
  %1602 = add i32 %1599, %1601
  %1603 = load i32, ptr %85, align 4, !tbaa !74
  %1604 = add i32 %1603, 1
  %1605 = call i32 @llvm.ctlz.i32(i32 %1604, i1 true), !range !38
  %1606 = xor i32 %1605, 31
  %1607 = shl nuw nsw i32 %1606, 8
  %1608 = shl i32 %1604, 8
  %1609 = lshr i32 %1608, %1606
  %1610 = add i32 %1607, %1609
  store i32 %1594, ptr %67, align 4
  store i32 %1602, ptr %72, align 8
  store i32 %1610, ptr %70, align 4, !tbaa !50
  br label %1611

1611:                                             ; preds = %115, %1586, %1146
  %1612 = phi i32 [ %1147, %1146 ], [ %1208, %1586 ], [ %101, %115 ]
  %1613 = phi ptr [ %100, %1146 ], [ %1573, %1586 ], [ %100, %115 ]
  %1614 = phi ptr [ %1150, %1146 ], [ %1574, %1586 ], [ %116, %115 ]
  %1615 = icmp ult ptr %1614, %17
  br i1 %1615, label %98, label %1616

1616:                                             ; preds = %1611
  %1617 = ptrtoint ptr %1613 to i64
  br label %1618

1618:                                             ; preds = %1616, %52
  %1619 = phi i64 [ %1617, %1616 ], [ %56, %52 ]
  %1620 = sub i64 %57, %1619
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  ret i64 %1620
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btultra2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x i32], align 4
  %7 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = ptrtoint ptr %3 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 14, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !102
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = load ptr, ptr %1, align 8, !tbaa !88
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !19
  %24 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !103
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = icmp eq i32 %23, %12
  %29 = icmp ugt i64 %4, 8
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %32 = call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  call void @ZSTD_resetSeqStore(ptr noundef nonnull %1) #12
  %33 = load ptr, ptr %7, align 8, !tbaa !15
  %34 = sub i64 0, %4
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  store ptr %35, ptr %7, align 8, !tbaa !15
  %36 = trunc i64 %4 to i32
  %37 = load i32, ptr %22, align 8, !tbaa !19
  %38 = add i32 %37, %36
  store i32 %38, ptr %22, align 8, !tbaa !19
  store i32 %38, ptr %24, align 4, !tbaa !103
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 2
  store i32 %38, ptr %39, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  br label %40

40:                                               ; preds = %31, %27, %21, %16, %5
  %41 = call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %41
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btopt_extDict(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btultra_extDict(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ZSTD_insertBt1(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !105
  switch i32 %4, label %12 [
    i32 8, label %36
    i32 5, label %18
    i32 6, label %24
    i32 7, label %30
  ]

12:                                               ; preds = %6
  %13 = load i32, ptr %1, align 1, !tbaa !23
  %14 = mul i32 %13, -1640531535
  %15 = sub i32 32, %11
  %16 = lshr i32 %14, %15
  %17 = zext i32 %16 to i64
  br label %42

18:                                               ; preds = %6
  %19 = load i64, ptr %1, align 1, !tbaa !28
  %20 = mul i64 %19, -3523014627271114752
  %21 = sub i32 64, %11
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %20, %22
  br label %42

24:                                               ; preds = %6
  %25 = load i64, ptr %1, align 1, !tbaa !28
  %26 = mul i64 %25, -3523014627193847808
  %27 = sub i32 64, %11
  %28 = zext nneg i32 %27 to i64
  %29 = lshr i64 %26, %28
  br label %42

30:                                               ; preds = %6
  %31 = load i64, ptr %1, align 1, !tbaa !28
  %32 = mul i64 %31, -3523014627193167104
  %33 = sub i32 64, %11
  %34 = zext nneg i32 %33 to i64
  %35 = lshr i64 %32, %34
  br label %42

36:                                               ; preds = %6
  %37 = load i64, ptr %1, align 1, !tbaa !28
  %38 = mul i64 %37, -3523014627327384477
  %39 = sub i32 64, %11
  %40 = zext nneg i32 %39 to i64
  %41 = lshr i64 %38, %40
  br label %42

42:                                               ; preds = %12, %18, %24, %30, %36
  %43 = phi i64 [ %17, %12 ], [ %35, %30 ], [ %29, %24 ], [ %23, %18 ], [ %41, %36 ]
  %44 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 11
  %45 = load ptr, ptr %44, align 8, !tbaa !106
  %46 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !107
  %48 = add i32 %47, -1
  %49 = shl nuw i32 1, %48
  %50 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %49, i32 -1)
  %51 = extractvalue { i32, i1 } %50, 0, !nosanitize !47
  %52 = extractvalue { i32, i1 } %50, 1, !nosanitize !47
  br i1 %52, label %53, label %54, !nosanitize !47

53:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16
  %56 = getelementptr inbounds i32, ptr %9, i64 %43
  %57 = load i32, ptr %56, align 4, !tbaa !23
  %58 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !15
  %60 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !108
  %62 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !19
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %61, i64 %64
  %66 = getelementptr inbounds i8, ptr %59, i64 %64
  %67 = ptrtoint ptr %1 to i64
  %68 = ptrtoint ptr %59 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = tail call i32 @llvm.usub.sat.i32(i32 %70, i32 %51)
  %72 = and i32 %51, %70
  %73 = shl i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %45, i64 %74
  %76 = getelementptr inbounds i32, ptr %75, i64 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  %77 = load i32, ptr %55, align 4, !tbaa !109
  %78 = getelementptr i8, ptr %0, i64 28
  %79 = load i32, ptr %78, align 4, !tbaa !103
  %80 = getelementptr i8, ptr %0, i64 40
  %81 = load i32, ptr %80, align 8, !tbaa !110
  %82 = shl nuw i32 1, %77
  %83 = sub i32 %3, %79
  %84 = icmp ugt i32 %83, %82
  %85 = sub i32 %3, %82
  %86 = icmp eq i32 %81, 0
  %87 = select i1 %86, i1 %84, i1 false
  %88 = select i1 %87, i32 %85, i32 %79
  %89 = add i32 %70, 9
  %90 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 3
  %91 = load i32, ptr %90, align 4, !tbaa !111
  store i32 %70, ptr %56, align 4, !tbaa !23
  %92 = icmp ult i32 %57, %88
  br i1 %92, label %93, label %94

93:                                               ; preds = %54
  store i32 0, ptr %76, align 4, !tbaa !23
  store i32 0, ptr %75, align 4, !tbaa !23
  br label %244

94:                                               ; preds = %54
  %95 = shl nuw i32 1, %91
  %96 = icmp ne i32 %5, 0
  %97 = getelementptr inbounds i8, ptr %2, i64 -7
  %98 = getelementptr inbounds i8, ptr %2, i64 -3
  %99 = getelementptr inbounds i8, ptr %2, i64 -1
  br label %100

100:                                              ; preds = %94, %225
  %101 = phi i32 [ %57, %94 ], [ %231, %225 ]
  %102 = phi i32 [ %95, %94 ], [ %232, %225 ]
  %103 = phi i64 [ 8, %94 ], [ %212, %225 ]
  %104 = phi i32 [ %89, %94 ], [ %210, %225 ]
  %105 = phi i64 [ 0, %94 ], [ %229, %225 ]
  %106 = phi ptr [ %76, %94 ], [ %228, %225 ]
  %107 = phi ptr [ %75, %94 ], [ %227, %225 ]
  %108 = phi i64 [ 0, %94 ], [ %226, %225 ]
  %109 = and i32 %101, %51
  %110 = shl i32 %109, 1
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %45, i64 %111
  %113 = tail call i64 @llvm.umin.i64(i64 %105, i64 %108)
  %114 = zext i32 %101 to i64
  %115 = add i64 %113, %114
  %116 = icmp ult i64 %115, %64
  %117 = select i1 %96, i1 %116, i1 false
  %118 = getelementptr inbounds i8, ptr %1, i64 %113
  br i1 %117, label %189, label %119

119:                                              ; preds = %100
  %120 = getelementptr inbounds i8, ptr %59, i64 %114
  %121 = getelementptr inbounds i8, ptr %120, i64 %113
  %122 = icmp ugt ptr %97, %118
  br i1 %122, label %123, label %149

123:                                              ; preds = %119
  %124 = load i64, ptr %121, align 1, !tbaa !28
  %125 = load i64, ptr %118, align 1, !tbaa !28
  %126 = xor i64 %125, %124
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = tail call i64 @llvm.cttz.i64(i64 %126, i1 true), !range !112
  %130 = lshr i64 %129, 3
  br label %186

131:                                              ; preds = %123, %137
  %132 = phi ptr [ %135, %137 ], [ %121, %123 ]
  %133 = phi ptr [ %134, %137 ], [ %118, %123 ]
  %134 = getelementptr inbounds i8, ptr %133, i64 8
  %135 = getelementptr inbounds i8, ptr %132, i64 8
  %136 = icmp ult ptr %134, %97
  br i1 %136, label %137, label %149

137:                                              ; preds = %131
  %138 = load i64, ptr %135, align 1, !tbaa !28
  %139 = load i64, ptr %134, align 1, !tbaa !28
  %140 = xor i64 %139, %138
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %131, label %142

142:                                              ; preds = %137
  %143 = tail call i64 @llvm.cttz.i64(i64 %140, i1 true), !range !112
  %144 = lshr i64 %143, 3
  %145 = getelementptr inbounds i8, ptr %134, i64 %144
  %146 = ptrtoint ptr %145 to i64
  %147 = ptrtoint ptr %118 to i64
  %148 = sub i64 %146, %147
  br label %186

149:                                              ; preds = %131, %119
  %150 = phi ptr [ %121, %119 ], [ %135, %131 ]
  %151 = phi ptr [ %118, %119 ], [ %134, %131 ]
  %152 = icmp ult ptr %151, %98
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i32, ptr %150, align 1, !tbaa !23
  %155 = load i32, ptr %151, align 1, !tbaa !23
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = getelementptr inbounds i8, ptr %151, i64 4
  %159 = getelementptr inbounds i8, ptr %150, i64 4
  br label %160

160:                                              ; preds = %157, %153, %149
  %161 = phi ptr [ %159, %157 ], [ %150, %153 ], [ %150, %149 ]
  %162 = phi ptr [ %158, %157 ], [ %151, %153 ], [ %151, %149 ]
  %163 = icmp ult ptr %162, %99
  br i1 %163, label %164, label %171

164:                                              ; preds = %160
  %165 = load i16, ptr %161, align 1, !tbaa !113
  %166 = load i16, ptr %162, align 1, !tbaa !113
  %167 = icmp eq i16 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = getelementptr inbounds i8, ptr %162, i64 2
  %170 = getelementptr inbounds i8, ptr %161, i64 2
  br label %171

171:                                              ; preds = %168, %164, %160
  %172 = phi ptr [ %170, %168 ], [ %161, %164 ], [ %161, %160 ]
  %173 = phi ptr [ %169, %168 ], [ %162, %164 ], [ %162, %160 ]
  %174 = icmp ult ptr %173, %2
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load i8, ptr %172, align 1, !tbaa !41
  %177 = load i8, ptr %173, align 1, !tbaa !41
  %178 = icmp eq i8 %176, %177
  %179 = zext i1 %178 to i64
  %180 = getelementptr inbounds i8, ptr %173, i64 %179
  br label %181

181:                                              ; preds = %175, %171
  %182 = phi ptr [ %173, %171 ], [ %180, %175 ]
  %183 = ptrtoint ptr %182 to i64
  %184 = ptrtoint ptr %118 to i64
  %185 = sub i64 %183, %184
  br label %186

186:                                              ; preds = %128, %142, %181
  %187 = phi i64 [ %185, %181 ], [ %130, %128 ], [ %148, %142 ]
  %188 = add i64 %187, %113
  br label %198

189:                                              ; preds = %100
  %190 = getelementptr inbounds i8, ptr %61, i64 %114
  %191 = getelementptr inbounds i8, ptr %190, i64 %113
  %192 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef %118, ptr noundef %191, ptr noundef %2, ptr noundef nonnull %65, ptr noundef nonnull %66)
  %193 = add i64 %192, %113
  %194 = add i64 %193, %114
  %195 = icmp ult i64 %194, %64
  %196 = getelementptr inbounds i8, ptr %59, i64 %114
  %197 = select i1 %195, ptr %190, ptr %196
  br label %198

198:                                              ; preds = %189, %186
  %199 = phi ptr [ %120, %186 ], [ %197, %189 ]
  %200 = phi i64 [ %188, %186 ], [ %193, %189 ]
  %201 = icmp ugt i64 %200, %103
  br i1 %201, label %202, label %209

202:                                              ; preds = %198
  %203 = sub i32 %104, %101
  %204 = zext i32 %203 to i64
  %205 = icmp ugt i64 %200, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = trunc i64 %200 to i32
  %208 = add i32 %101, %207
  br label %209

209:                                              ; preds = %202, %206, %198
  %210 = phi i32 [ %208, %206 ], [ %104, %202 ], [ %104, %198 ]
  %211 = phi i64 [ %200, %206 ], [ %200, %202 ], [ %103, %198 ]
  %212 = freeze i64 %211
  %213 = getelementptr inbounds i8, ptr %1, i64 %200
  %214 = icmp eq ptr %213, %2
  br i1 %214, label %236, label %215

215:                                              ; preds = %209
  %216 = getelementptr inbounds i8, ptr %199, i64 %200
  %217 = load i8, ptr %216, align 1, !tbaa !41
  %218 = load i8, ptr %213, align 1, !tbaa !41
  %219 = icmp ult i8 %217, %218
  %220 = icmp ugt i32 %101, %71
  br i1 %219, label %221, label %224

221:                                              ; preds = %215
  store i32 %101, ptr %107, align 4, !tbaa !23
  br i1 %220, label %222, label %236

222:                                              ; preds = %221
  %223 = getelementptr inbounds i32, ptr %112, i64 1
  br label %225

224:                                              ; preds = %215
  store i32 %101, ptr %106, align 4, !tbaa !23
  br i1 %220, label %225, label %236

225:                                              ; preds = %224, %222
  %226 = phi i64 [ %108, %222 ], [ %200, %224 ]
  %227 = phi ptr [ %223, %222 ], [ %107, %224 ]
  %228 = phi ptr [ %106, %222 ], [ %112, %224 ]
  %229 = phi i64 [ %200, %222 ], [ %105, %224 ]
  %230 = phi ptr [ %223, %222 ], [ %112, %224 ]
  %231 = load i32, ptr %230, align 4, !tbaa !23
  %232 = add i32 %102, -1
  %233 = icmp ne i32 %232, 0
  %234 = icmp uge i32 %231, %88
  %235 = select i1 %233, i1 %234, i1 false
  br i1 %235, label %100, label %236, !llvm.loop !114

236:                                              ; preds = %225, %209, %221, %224
  %237 = phi ptr [ %227, %225 ], [ %107, %209 ], [ %7, %221 ], [ %107, %224 ]
  %238 = phi ptr [ %228, %225 ], [ %106, %209 ], [ %106, %221 ], [ %7, %224 ]
  store i32 0, ptr %238, align 4, !tbaa !23
  store i32 0, ptr %237, align 4, !tbaa !23
  %239 = icmp ugt i64 %212, 384
  %240 = trunc i64 %212 to i32
  %241 = add i32 %240, -384
  %242 = tail call i32 @llvm.umin.i32(i32 %241, i32 192)
  %243 = select i1 %239, i32 %242, i32 0
  br label %244

244:                                              ; preds = %236, %93
  %245 = phi i32 [ %89, %93 ], [ %210, %236 ]
  %246 = phi i32 [ 0, %93 ], [ %243, %236 ]
  %247 = sub i32 %245, %70
  %248 = add i32 %247, -8
  %249 = tail call i32 @llvm.umax.i32(i32 %246, i32 %248)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  ret i32 %249
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @ZSTD_count_2segments(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #5 {
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = icmp ult ptr %9, %2
  %11 = select i1 %10, ptr %9, ptr %2
  %12 = getelementptr inbounds i8, ptr %11, i64 -7
  %13 = icmp ugt ptr %12, %0
  br i1 %13, label %14, label %40

14:                                               ; preds = %5
  %15 = load i64, ptr %1, align 1, !tbaa !28
  %16 = load i64, ptr %0, align 1, !tbaa !28
  %17 = xor i64 %16, %15
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = tail call i64 @llvm.cttz.i64(i64 %17, i1 true), !range !112
  %21 = lshr i64 %20, 3
  br label %79

22:                                               ; preds = %14, %28
  %23 = phi ptr [ %26, %28 ], [ %1, %14 ]
  %24 = phi ptr [ %25, %28 ], [ %0, %14 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 8
  %26 = getelementptr inbounds i8, ptr %23, i64 8
  %27 = icmp ult ptr %25, %12
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load i64, ptr %26, align 1, !tbaa !28
  %30 = load i64, ptr %25, align 1, !tbaa !28
  %31 = xor i64 %30, %29
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %22, label %33

33:                                               ; preds = %28
  %34 = tail call i64 @llvm.cttz.i64(i64 %31, i1 true), !range !112
  %35 = lshr i64 %34, 3
  %36 = getelementptr inbounds i8, ptr %25, i64 %35
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
  %46 = load i32, ptr %41, align 1, !tbaa !23
  %47 = load i32, ptr %42, align 1, !tbaa !23
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %42, i64 4
  %51 = getelementptr inbounds i8, ptr %41, i64 4
  br label %52

52:                                               ; preds = %49, %45, %40
  %53 = phi ptr [ %51, %49 ], [ %41, %45 ], [ %41, %40 ]
  %54 = phi ptr [ %50, %49 ], [ %42, %45 ], [ %42, %40 ]
  %55 = getelementptr inbounds i8, ptr %11, i64 -1
  %56 = icmp ult ptr %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i16, ptr %53, align 1, !tbaa !113
  %59 = load i16, ptr %54, align 1, !tbaa !113
  %60 = icmp eq i16 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, ptr %54, i64 2
  %63 = getelementptr inbounds i8, ptr %53, i64 2
  br label %64

64:                                               ; preds = %61, %57, %52
  %65 = phi ptr [ %63, %61 ], [ %53, %57 ], [ %53, %52 ]
  %66 = phi ptr [ %62, %61 ], [ %54, %57 ], [ %54, %52 ]
  %67 = icmp ult ptr %66, %11
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i8, ptr %65, align 1, !tbaa !41
  %70 = load i8, ptr %66, align 1, !tbaa !41
  %71 = icmp eq i8 %69, %70
  %72 = zext i1 %71 to i64
  %73 = getelementptr inbounds i8, ptr %66, i64 %72
  br label %74

74:                                               ; preds = %68, %64
  %75 = phi ptr [ %66, %64 ], [ %73, %68 ]
  %76 = ptrtoint ptr %75 to i64
  %77 = ptrtoint ptr %0 to i64
  %78 = sub i64 %76, %77
  br label %79

79:                                               ; preds = %19, %33, %74
  %80 = phi i64 [ %78, %74 ], [ %21, %19 ], [ %39, %33 ]
  %81 = getelementptr inbounds i8, ptr %1, i64 %80
  %82 = icmp eq ptr %81, %3
  br i1 %82, label %83, label %155

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %0, i64 %80
  %85 = getelementptr inbounds i8, ptr %2, i64 -7
  %86 = icmp ugt ptr %85, %84
  br i1 %86, label %87, label %113

87:                                               ; preds = %83
  %88 = load i64, ptr %4, align 1, !tbaa !28
  %89 = load i64, ptr %84, align 1, !tbaa !28
  %90 = xor i64 %89, %88
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = tail call i64 @llvm.cttz.i64(i64 %90, i1 true), !range !112
  %94 = lshr i64 %93, 3
  br label %152

95:                                               ; preds = %87, %101
  %96 = phi ptr [ %99, %101 ], [ %4, %87 ]
  %97 = phi ptr [ %98, %101 ], [ %84, %87 ]
  %98 = getelementptr inbounds i8, ptr %97, i64 8
  %99 = getelementptr inbounds i8, ptr %96, i64 8
  %100 = icmp ult ptr %98, %85
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load i64, ptr %99, align 1, !tbaa !28
  %103 = load i64, ptr %98, align 1, !tbaa !28
  %104 = xor i64 %103, %102
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %95, label %106

106:                                              ; preds = %101
  %107 = tail call i64 @llvm.cttz.i64(i64 %104, i1 true), !range !112
  %108 = lshr i64 %107, 3
  %109 = getelementptr inbounds i8, ptr %98, i64 %108
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
  %119 = load i32, ptr %114, align 1, !tbaa !23
  %120 = load i32, ptr %115, align 1, !tbaa !23
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = getelementptr inbounds i8, ptr %115, i64 4
  %124 = getelementptr inbounds i8, ptr %114, i64 4
  br label %125

125:                                              ; preds = %122, %118, %113
  %126 = phi ptr [ %124, %122 ], [ %114, %118 ], [ %114, %113 ]
  %127 = phi ptr [ %123, %122 ], [ %115, %118 ], [ %115, %113 ]
  %128 = getelementptr inbounds i8, ptr %2, i64 -1
  %129 = icmp ult ptr %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i16, ptr %126, align 1, !tbaa !113
  %132 = load i16, ptr %127, align 1, !tbaa !113
  %133 = icmp eq i16 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, ptr %127, i64 2
  %136 = getelementptr inbounds i8, ptr %126, i64 2
  br label %137

137:                                              ; preds = %134, %130, %125
  %138 = phi ptr [ %136, %134 ], [ %126, %130 ], [ %126, %125 ]
  %139 = phi ptr [ %135, %134 ], [ %127, %130 ], [ %127, %125 ]
  %140 = icmp ult ptr %139, %2
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i8, ptr %138, align 1, !tbaa !41
  %143 = load i8, ptr %139, align 1, !tbaa !41
  %144 = icmp eq i8 %142, %143
  %145 = zext i1 %144 to i64
  %146 = getelementptr inbounds i8, ptr %139, i64 %145
  br label %147

147:                                              ; preds = %141, %137
  %148 = phi ptr [ %139, %137 ], [ %146, %141 ]
  %149 = ptrtoint ptr %148 to i64
  %150 = ptrtoint ptr %84 to i64
  %151 = sub i64 %149, %150
  br label %152

152:                                              ; preds = %92, %106, %147
  %153 = phi i64 [ %151, %147 ], [ %94, %92 ], [ %112, %106 ]
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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.RawSeqStore_t, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !115
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RawSeqStore_t, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !116
  %10 = icmp ult i64 %9, %5
  br i1 %10, label %14, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i64 0, i32 1
  store i32 -1, ptr %12, align 8, !tbaa !32
  %13 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i64 0, i32 2
  store i32 -1, ptr %13, align 4, !tbaa !33
  br label %116

14:                                               ; preds = %7
  %15 = load ptr, ptr %0, align 8, !tbaa !117
  %16 = getelementptr inbounds %struct.rawSeq, ptr %15, i64 %9
  %17 = getelementptr inbounds i8, ptr %16, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa.struct !118
  %19 = getelementptr inbounds i8, ptr %16, i64 8
  %20 = load i32, ptr %19, align 4, !tbaa.struct !119
  %21 = add i32 %2, %1
  %22 = getelementptr inbounds %struct.RawSeqStore_t, ptr %0, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !120
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
  %34 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i64 0, i32 1
  store i32 -1, ptr %34, align 8, !tbaa !32
  %35 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i64 0, i32 2
  store i32 -1, ptr %35, align 4, !tbaa !33
  %36 = add i32 %26, %2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %33, %52
  %39 = phi i64 [ %54, %52 ], [ %9, %33 ]
  %40 = phi i32 [ %53, %52 ], [ %36, %33 ]
  %41 = icmp ult i64 %39, %5
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rawSeq, ptr %15, i64 %39
  %44 = getelementptr inbounds i8, ptr %43, i64 4
  %45 = load i32, ptr %44, align 4, !tbaa.struct !118
  %46 = getelementptr inbounds i8, ptr %43, i64 8
  %47 = load i32, ptr %46, align 4, !tbaa.struct !119
  %48 = add i32 %47, %45
  %49 = icmp ult i32 %40, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = zext i32 %40 to i64
  store i64 %51, ptr %22, align 8, !tbaa !120
  br label %56

52:                                               ; preds = %42
  %53 = sub i32 %40, %48
  %54 = add nuw i64 %39, 1
  store i64 %54, ptr %8, align 8, !tbaa !116
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %58, label %38

56:                                               ; preds = %38, %50
  %57 = icmp eq i64 %39, %5
  br i1 %57, label %58, label %116

58:                                               ; preds = %52, %56, %33
  store i64 0, ptr %22, align 8, !tbaa !120
  br label %116

59:                                               ; preds = %14
  %60 = load i32, ptr %16, align 4, !tbaa.struct !121
  %61 = add i32 %28, %1
  %62 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i64 0, i32 1
  store i32 %61, ptr %62, align 8, !tbaa !32
  %63 = add i32 %31, %61
  %64 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i64 0, i32 2
  store i32 %63, ptr %64, align 4, !tbaa !33
  %65 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i64 0, i32 3
  store i32 %60, ptr %65, align 8, !tbaa !29
  %66 = icmp ugt i32 %63, %21
  br i1 %66, label %67, label %91

67:                                               ; preds = %59
  store i32 %21, ptr %64, align 4, !tbaa !33
  %68 = add i32 %26, %2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %67, %84
  %71 = phi i64 [ %86, %84 ], [ %9, %67 ]
  %72 = phi i32 [ %85, %84 ], [ %68, %67 ]
  %73 = icmp ult i64 %71, %5
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.rawSeq, ptr %15, i64 %71
  %76 = getelementptr inbounds i8, ptr %75, i64 4
  %77 = load i32, ptr %76, align 4, !tbaa.struct !118
  %78 = getelementptr inbounds i8, ptr %75, i64 8
  %79 = load i32, ptr %78, align 4, !tbaa.struct !119
  %80 = add i32 %79, %77
  %81 = icmp ult i32 %72, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = zext i32 %72 to i64
  store i64 %83, ptr %22, align 8, !tbaa !120
  br label %88

84:                                               ; preds = %74
  %85 = sub i32 %72, %80
  %86 = add nuw i64 %71, 1
  store i64 %86, ptr %8, align 8, !tbaa !116
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %90, label %70

88:                                               ; preds = %70, %82
  %89 = icmp eq i64 %71, %5
  br i1 %89, label %90, label %116

90:                                               ; preds = %84, %88, %67
  store i64 0, ptr %22, align 8, !tbaa !120
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
  %100 = getelementptr inbounds %struct.rawSeq, ptr %15, i64 %96
  %101 = getelementptr inbounds i8, ptr %100, i64 4
  %102 = load i32, ptr %101, align 4, !tbaa.struct !118
  %103 = getelementptr inbounds i8, ptr %100, i64 8
  %104 = load i32, ptr %103, align 4, !tbaa.struct !119
  %105 = add i32 %104, %102
  %106 = icmp ult i32 %97, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = zext i32 %97 to i64
  store i64 %108, ptr %22, align 8, !tbaa !120
  br label %113

109:                                              ; preds = %99
  %110 = sub i32 %97, %105
  %111 = add nuw i64 %96, 1
  store i64 %111, ptr %8, align 8, !tbaa !116
  %112 = icmp eq i32 %110, 0
  br i1 %112, label %115, label %95

113:                                              ; preds = %95, %107
  %114 = icmp eq i64 %96, %5
  br i1 %114, label %115, label %116

115:                                              ; preds = %109, %113, %91
  store i64 0, ptr %22, align 8, !tbaa !120
  br label %116

116:                                              ; preds = %115, %113, %90, %88, %58, %56, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_rescaleFreqs(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i64 96
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = icmp eq i32 %7, 2
  %9 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 14
  store i32 0, ptr %9, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !73
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %216

13:                                               ; preds = %4
  %14 = icmp ult i64 %2, 9
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  store i32 1, ptr %9, align 8, !tbaa !37
  br label %16

16:                                               ; preds = %15, %13
  %17 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  %19 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !123
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %166

22:                                               ; preds = %16
  store i32 0, ptr %9, align 8, !tbaa !37
  br i1 %8, label %42, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 6
  store i32 0, ptr %24, align 8, !tbaa !72
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %38, %25 ]
  %27 = load ptr, ptr %17, align 8, !tbaa !122
  %28 = trunc i64 %26 to i32
  %29 = tail call i32 @HUF_getNbBitsFromCTable(ptr noundef %27, i32 noundef %28) #12
  %30 = icmp eq i32 %29, 0
  %31 = sub i32 11, %29
  %32 = shl nuw i32 1, %31
  %33 = select i1 %30, i32 1, i32 %32
  %34 = load ptr, ptr %0, align 8, !tbaa !57
  %35 = getelementptr inbounds i32, ptr %34, i64 %26
  store i32 %33, ptr %35, align 4, !tbaa !23
  %36 = load i32, ptr %24, align 8, !tbaa !72
  %37 = add i32 %36, %33
  store i32 %37, ptr %24, align 8, !tbaa !72
  %38 = add nuw nsw i64 %26, 1
  %39 = icmp eq i64 %38, 256
  br i1 %39, label %40, label %25, !llvm.loop !127

40:                                               ; preds = %25
  %41 = load ptr, ptr %17, align 8, !tbaa !122
  br label %42

42:                                               ; preds = %40, %22
  %43 = phi ptr [ %41, %40 ], [ %18, %22 ]
  %44 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %43, i64 0, i32 1, i32 2
  %45 = load i16, ptr %44, align 1, !tbaa !113
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %43, i64 0, i32 1, i32 2, i64 1
  %48 = icmp eq i16 %45, 0
  %49 = add nsw i32 %46, -1
  %50 = shl nuw i32 1, %49
  %51 = sext i32 %50 to i64
  %52 = select i1 %48, i64 1, i64 %51
  %53 = getelementptr inbounds i32, ptr %47, i64 %52
  store i32 0, ptr %10, align 4, !tbaa !73
  %54 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !40
  br label %56

56:                                               ; preds = %56, %42
  %57 = phi i64 [ 0, %42 ], [ %81, %56 ]
  %58 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %53, i64 %57, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !43
  %60 = add i32 %59, 65535
  %61 = lshr i32 %60, 16
  %62 = icmp ult i32 %60, 65536
  %63 = sub nsw i32 10, %61
  %64 = shl nuw nsw i32 1, %63
  %65 = select i1 %62, i32 1, i32 %64
  %66 = getelementptr inbounds i32, ptr %55, i64 %57
  store i32 %65, ptr %66, align 4, !tbaa !23
  %67 = load i32, ptr %10, align 4, !tbaa !73
  %68 = add i32 %65, %67
  store i32 %68, ptr %10, align 4, !tbaa !73
  %69 = or disjoint i64 %57, 1
  %70 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %53, i64 %69, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !43
  %72 = add i32 %71, 65535
  %73 = lshr i32 %72, 16
  %74 = icmp ult i32 %72, 65536
  %75 = sub nsw i32 10, %73
  %76 = shl nuw nsw i32 1, %75
  %77 = select i1 %74, i32 1, i32 %76
  %78 = getelementptr inbounds i32, ptr %55, i64 %69
  store i32 %77, ptr %78, align 4, !tbaa !23
  %79 = load i32, ptr %10, align 4, !tbaa !73
  %80 = add i32 %77, %79
  store i32 %80, ptr %10, align 4, !tbaa !73
  %81 = add nuw nsw i64 %57, 2
  %82 = icmp eq i64 %81, 36
  br i1 %82, label %83, label %56, !llvm.loop !128

83:                                               ; preds = %56
  %84 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %43, i64 0, i32 1, i32 1
  %85 = load i16, ptr %84, align 1, !tbaa !113
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %43, i64 0, i32 1, i32 1, i64 1
  %88 = icmp eq i16 %85, 0
  %89 = add nsw i32 %86, -1
  %90 = shl nuw i32 1, %89
  %91 = sext i32 %90 to i64
  %92 = select i1 %88, i64 1, i64 %91
  %93 = getelementptr inbounds i32, ptr %87, i64 %92
  %94 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 8
  store i32 0, ptr %94, align 8, !tbaa !75
  %95 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !53
  br label %97

97:                                               ; preds = %112, %83
  %98 = phi i64 [ 0, %83 ], [ %124, %112 ]
  %99 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %93, i64 %98, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !43
  %101 = add i32 %100, 65535
  %102 = lshr i32 %101, 16
  %103 = icmp ult i32 %101, 65536
  %104 = sub nsw i32 10, %102
  %105 = shl nuw nsw i32 1, %104
  %106 = select i1 %103, i32 1, i32 %105
  %107 = getelementptr inbounds i32, ptr %96, i64 %98
  store i32 %106, ptr %107, align 4, !tbaa !23
  %108 = load i32, ptr %94, align 8, !tbaa !75
  %109 = add i32 %106, %108
  store i32 %109, ptr %94, align 8, !tbaa !75
  %110 = or disjoint i64 %98, 1
  %111 = icmp eq i64 %110, 53
  br i1 %111, label %125, label %112, !llvm.loop !129

112:                                              ; preds = %97
  %113 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %93, i64 %110, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !43
  %115 = add i32 %114, 65535
  %116 = lshr i32 %115, 16
  %117 = icmp ult i32 %115, 65536
  %118 = sub nsw i32 10, %116
  %119 = shl nuw nsw i32 1, %118
  %120 = select i1 %117, i32 1, i32 %119
  %121 = getelementptr inbounds i32, ptr %96, i64 %110
  store i32 %120, ptr %121, align 4, !tbaa !23
  %122 = load i32, ptr %94, align 8, !tbaa !75
  %123 = add i32 %120, %122
  store i32 %123, ptr %94, align 8, !tbaa !75
  %124 = add nuw nsw i64 %98, 2
  br label %97

125:                                              ; preds = %97
  %126 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %43, i64 0, i32 1
  %127 = load i16, ptr %126, align 1, !tbaa !113
  %128 = zext i16 %127 to i32
  %129 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %43, i64 0, i32 1, i32 0, i64 1
  %130 = icmp eq i16 %127, 0
  %131 = add nsw i32 %128, -1
  %132 = shl nuw i32 1, %131
  %133 = sext i32 %132 to i64
  %134 = select i1 %130, i64 1, i64 %133
  %135 = getelementptr inbounds i32, ptr %129, i64 %134
  %136 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 9
  store i32 0, ptr %136, align 4, !tbaa !74
  %137 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !51
  br label %139

139:                                              ; preds = %139, %125
  %140 = phi i64 [ 0, %125 ], [ %164, %139 ]
  %141 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %135, i64 %140, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !43
  %143 = add i32 %142, 65535
  %144 = lshr i32 %143, 16
  %145 = icmp ult i32 %143, 65536
  %146 = sub nsw i32 10, %144
  %147 = shl nuw nsw i32 1, %146
  %148 = select i1 %145, i32 1, i32 %147
  %149 = getelementptr inbounds i32, ptr %138, i64 %140
  store i32 %148, ptr %149, align 4, !tbaa !23
  %150 = load i32, ptr %136, align 4, !tbaa !74
  %151 = add i32 %148, %150
  store i32 %151, ptr %136, align 4, !tbaa !74
  %152 = or disjoint i64 %140, 1
  %153 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %135, i64 %152, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !43
  %155 = add i32 %154, 65535
  %156 = lshr i32 %155, 16
  %157 = icmp ult i32 %155, 65536
  %158 = sub nsw i32 10, %156
  %159 = shl nuw nsw i32 1, %158
  %160 = select i1 %157, i32 1, i32 %159
  %161 = getelementptr inbounds i32, ptr %138, i64 %152
  store i32 %160, ptr %161, align 4, !tbaa !23
  %162 = load i32, ptr %136, align 4, !tbaa !74
  %163 = add i32 %160, %162
  store i32 %163, ptr %136, align 4, !tbaa !74
  %164 = add nuw nsw i64 %140, 2
  %165 = icmp eq i64 %164, 32
  br i1 %165, label %642, label %139, !llvm.loop !130

166:                                              ; preds = %16
  br i1 %8, label %195, label %167

167:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 255, ptr %5, align 4, !tbaa !23
  %168 = load ptr, ptr %0, align 8, !tbaa !57
  %169 = call i32 @HIST_count_simple(ptr noundef %168, ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2) #12
  %170 = load ptr, ptr %0, align 8, !tbaa !57
  br label %171

171:                                              ; preds = %171, %167
  %172 = phi i64 [ 0, %167 ], [ %189, %171 ]
  %173 = phi <4 x i32> [ zeroinitializer, %167 ], [ %187, %171 ]
  %174 = phi <4 x i32> [ zeroinitializer, %167 ], [ %188, %171 ]
  %175 = getelementptr inbounds i32, ptr %170, i64 %172
  %176 = getelementptr inbounds i32, ptr %175, i64 4
  %177 = load <4 x i32>, ptr %175, align 4, !tbaa !23
  %178 = load <4 x i32>, ptr %176, align 4, !tbaa !23
  %179 = icmp ne <4 x i32> %177, zeroinitializer
  %180 = icmp ne <4 x i32> %178, zeroinitializer
  %181 = zext <4 x i1> %179 to <4 x i32>
  %182 = zext <4 x i1> %180 to <4 x i32>
  %183 = lshr <4 x i32> %177, <i32 8, i32 8, i32 8, i32 8>
  %184 = lshr <4 x i32> %178, <i32 8, i32 8, i32 8, i32 8>
  %185 = add nuw nsw <4 x i32> %183, %181
  %186 = add nuw nsw <4 x i32> %184, %182
  %187 = add <4 x i32> %185, %173
  %188 = add <4 x i32> %186, %174
  store <4 x i32> %185, ptr %175, align 4, !tbaa !23
  store <4 x i32> %186, ptr %176, align 4, !tbaa !23
  %189 = add nuw i64 %172, 8
  %190 = icmp eq i64 %189, 256
  br i1 %190, label %191, label %171, !llvm.loop !131

191:                                              ; preds = %171
  %192 = add <4 x i32> %188, %187
  %193 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %192)
  %194 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 6
  store i32 %193, ptr %194, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %195

195:                                              ; preds = %191, %166
  %196 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %197, ptr noundef nonnull align 16 dereferenceable(144) @__const.ZSTD_rescaleFreqs.baseLLfreqs, i64 144, i1 false)
  store i32 40, ptr %10, align 4, !tbaa !73
  %198 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !53
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %199, align 4, !tbaa !23
  %200 = getelementptr inbounds i32, ptr %199, i64 4
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %200, align 4, !tbaa !23
  %201 = getelementptr inbounds i32, ptr %199, i64 8
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %201, align 4, !tbaa !23
  %202 = getelementptr inbounds i32, ptr %199, i64 12
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %202, align 4, !tbaa !23
  %203 = getelementptr inbounds i32, ptr %199, i64 16
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %203, align 4, !tbaa !23
  %204 = getelementptr inbounds i32, ptr %199, i64 20
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %204, align 4, !tbaa !23
  %205 = getelementptr inbounds i32, ptr %199, i64 24
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %205, align 4, !tbaa !23
  %206 = getelementptr inbounds i32, ptr %199, i64 28
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %206, align 4, !tbaa !23
  %207 = getelementptr inbounds i32, ptr %199, i64 32
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %207, align 4, !tbaa !23
  %208 = getelementptr inbounds i32, ptr %199, i64 36
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %208, align 4, !tbaa !23
  %209 = getelementptr inbounds i32, ptr %199, i64 40
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %209, align 4, !tbaa !23
  %210 = getelementptr inbounds i32, ptr %199, i64 44
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %210, align 4, !tbaa !23
  %211 = getelementptr inbounds i32, ptr %199, i64 48
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %211, align 4, !tbaa !23
  %212 = getelementptr inbounds i32, ptr %199, i64 52
  store i32 1, ptr %212, align 4, !tbaa !23
  %213 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 8
  store i32 53, ptr %213, align 8, !tbaa !75
  %214 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %215, ptr noundef nonnull align 16 dereferenceable(128) @__const.ZSTD_rescaleFreqs.baseOFCfreqs, i64 128, i1 false)
  br label %639

216:                                              ; preds = %4
  br i1 %8, label %450, label %217

217:                                              ; preds = %216
  %218 = load ptr, ptr %0, align 8, !tbaa !57
  %219 = getelementptr inbounds i32, ptr %218, i64 4
  %220 = load <4 x i32>, ptr %218, align 4, !tbaa !23
  %221 = load <4 x i32>, ptr %219, align 4, !tbaa !23
  %222 = getelementptr inbounds i32, ptr %218, i64 8
  %223 = getelementptr inbounds i32, ptr %218, i64 12
  %224 = load <4 x i32>, ptr %222, align 4, !tbaa !23
  %225 = load <4 x i32>, ptr %223, align 4, !tbaa !23
  %226 = add <4 x i32> %224, %220
  %227 = add <4 x i32> %225, %221
  %228 = getelementptr inbounds i32, ptr %218, i64 16
  %229 = getelementptr inbounds i32, ptr %218, i64 20
  %230 = load <4 x i32>, ptr %228, align 4, !tbaa !23
  %231 = load <4 x i32>, ptr %229, align 4, !tbaa !23
  %232 = add <4 x i32> %230, %226
  %233 = add <4 x i32> %231, %227
  %234 = getelementptr inbounds i32, ptr %218, i64 24
  %235 = getelementptr inbounds i32, ptr %218, i64 28
  %236 = load <4 x i32>, ptr %234, align 4, !tbaa !23
  %237 = load <4 x i32>, ptr %235, align 4, !tbaa !23
  %238 = add <4 x i32> %236, %232
  %239 = add <4 x i32> %237, %233
  %240 = getelementptr inbounds i32, ptr %218, i64 32
  %241 = getelementptr inbounds i32, ptr %218, i64 36
  %242 = load <4 x i32>, ptr %240, align 4, !tbaa !23
  %243 = load <4 x i32>, ptr %241, align 4, !tbaa !23
  %244 = add <4 x i32> %242, %238
  %245 = add <4 x i32> %243, %239
  %246 = getelementptr inbounds i32, ptr %218, i64 40
  %247 = getelementptr inbounds i32, ptr %218, i64 44
  %248 = load <4 x i32>, ptr %246, align 4, !tbaa !23
  %249 = load <4 x i32>, ptr %247, align 4, !tbaa !23
  %250 = add <4 x i32> %248, %244
  %251 = add <4 x i32> %249, %245
  %252 = getelementptr inbounds i32, ptr %218, i64 48
  %253 = getelementptr inbounds i32, ptr %218, i64 52
  %254 = load <4 x i32>, ptr %252, align 4, !tbaa !23
  %255 = load <4 x i32>, ptr %253, align 4, !tbaa !23
  %256 = add <4 x i32> %254, %250
  %257 = add <4 x i32> %255, %251
  %258 = getelementptr inbounds i32, ptr %218, i64 56
  %259 = getelementptr inbounds i32, ptr %218, i64 60
  %260 = load <4 x i32>, ptr %258, align 4, !tbaa !23
  %261 = load <4 x i32>, ptr %259, align 4, !tbaa !23
  %262 = add <4 x i32> %260, %256
  %263 = add <4 x i32> %261, %257
  %264 = getelementptr inbounds i32, ptr %218, i64 64
  %265 = getelementptr inbounds i32, ptr %218, i64 68
  %266 = load <4 x i32>, ptr %264, align 4, !tbaa !23
  %267 = load <4 x i32>, ptr %265, align 4, !tbaa !23
  %268 = add <4 x i32> %266, %262
  %269 = add <4 x i32> %267, %263
  %270 = getelementptr inbounds i32, ptr %218, i64 72
  %271 = getelementptr inbounds i32, ptr %218, i64 76
  %272 = load <4 x i32>, ptr %270, align 4, !tbaa !23
  %273 = load <4 x i32>, ptr %271, align 4, !tbaa !23
  %274 = add <4 x i32> %272, %268
  %275 = add <4 x i32> %273, %269
  %276 = getelementptr inbounds i32, ptr %218, i64 80
  %277 = getelementptr inbounds i32, ptr %218, i64 84
  %278 = load <4 x i32>, ptr %276, align 4, !tbaa !23
  %279 = load <4 x i32>, ptr %277, align 4, !tbaa !23
  %280 = add <4 x i32> %278, %274
  %281 = add <4 x i32> %279, %275
  %282 = getelementptr inbounds i32, ptr %218, i64 88
  %283 = getelementptr inbounds i32, ptr %218, i64 92
  %284 = load <4 x i32>, ptr %282, align 4, !tbaa !23
  %285 = load <4 x i32>, ptr %283, align 4, !tbaa !23
  %286 = add <4 x i32> %284, %280
  %287 = add <4 x i32> %285, %281
  %288 = getelementptr inbounds i32, ptr %218, i64 96
  %289 = getelementptr inbounds i32, ptr %218, i64 100
  %290 = load <4 x i32>, ptr %288, align 4, !tbaa !23
  %291 = load <4 x i32>, ptr %289, align 4, !tbaa !23
  %292 = add <4 x i32> %290, %286
  %293 = add <4 x i32> %291, %287
  %294 = getelementptr inbounds i32, ptr %218, i64 104
  %295 = getelementptr inbounds i32, ptr %218, i64 108
  %296 = load <4 x i32>, ptr %294, align 4, !tbaa !23
  %297 = load <4 x i32>, ptr %295, align 4, !tbaa !23
  %298 = add <4 x i32> %296, %292
  %299 = add <4 x i32> %297, %293
  %300 = getelementptr inbounds i32, ptr %218, i64 112
  %301 = getelementptr inbounds i32, ptr %218, i64 116
  %302 = load <4 x i32>, ptr %300, align 4, !tbaa !23
  %303 = load <4 x i32>, ptr %301, align 4, !tbaa !23
  %304 = add <4 x i32> %302, %298
  %305 = add <4 x i32> %303, %299
  %306 = getelementptr inbounds i32, ptr %218, i64 120
  %307 = getelementptr inbounds i32, ptr %218, i64 124
  %308 = load <4 x i32>, ptr %306, align 4, !tbaa !23
  %309 = load <4 x i32>, ptr %307, align 4, !tbaa !23
  %310 = add <4 x i32> %308, %304
  %311 = add <4 x i32> %309, %305
  %312 = getelementptr inbounds i32, ptr %218, i64 128
  %313 = getelementptr inbounds i32, ptr %218, i64 132
  %314 = load <4 x i32>, ptr %312, align 4, !tbaa !23
  %315 = load <4 x i32>, ptr %313, align 4, !tbaa !23
  %316 = add <4 x i32> %314, %310
  %317 = add <4 x i32> %315, %311
  %318 = getelementptr inbounds i32, ptr %218, i64 136
  %319 = getelementptr inbounds i32, ptr %218, i64 140
  %320 = load <4 x i32>, ptr %318, align 4, !tbaa !23
  %321 = load <4 x i32>, ptr %319, align 4, !tbaa !23
  %322 = add <4 x i32> %320, %316
  %323 = add <4 x i32> %321, %317
  %324 = getelementptr inbounds i32, ptr %218, i64 144
  %325 = getelementptr inbounds i32, ptr %218, i64 148
  %326 = load <4 x i32>, ptr %324, align 4, !tbaa !23
  %327 = load <4 x i32>, ptr %325, align 4, !tbaa !23
  %328 = add <4 x i32> %326, %322
  %329 = add <4 x i32> %327, %323
  %330 = getelementptr inbounds i32, ptr %218, i64 152
  %331 = getelementptr inbounds i32, ptr %218, i64 156
  %332 = load <4 x i32>, ptr %330, align 4, !tbaa !23
  %333 = load <4 x i32>, ptr %331, align 4, !tbaa !23
  %334 = add <4 x i32> %332, %328
  %335 = add <4 x i32> %333, %329
  %336 = getelementptr inbounds i32, ptr %218, i64 160
  %337 = getelementptr inbounds i32, ptr %218, i64 164
  %338 = load <4 x i32>, ptr %336, align 4, !tbaa !23
  %339 = load <4 x i32>, ptr %337, align 4, !tbaa !23
  %340 = add <4 x i32> %338, %334
  %341 = add <4 x i32> %339, %335
  %342 = getelementptr inbounds i32, ptr %218, i64 168
  %343 = getelementptr inbounds i32, ptr %218, i64 172
  %344 = load <4 x i32>, ptr %342, align 4, !tbaa !23
  %345 = load <4 x i32>, ptr %343, align 4, !tbaa !23
  %346 = add <4 x i32> %344, %340
  %347 = add <4 x i32> %345, %341
  %348 = getelementptr inbounds i32, ptr %218, i64 176
  %349 = getelementptr inbounds i32, ptr %218, i64 180
  %350 = load <4 x i32>, ptr %348, align 4, !tbaa !23
  %351 = load <4 x i32>, ptr %349, align 4, !tbaa !23
  %352 = add <4 x i32> %350, %346
  %353 = add <4 x i32> %351, %347
  %354 = getelementptr inbounds i32, ptr %218, i64 184
  %355 = getelementptr inbounds i32, ptr %218, i64 188
  %356 = load <4 x i32>, ptr %354, align 4, !tbaa !23
  %357 = load <4 x i32>, ptr %355, align 4, !tbaa !23
  %358 = add <4 x i32> %356, %352
  %359 = add <4 x i32> %357, %353
  %360 = getelementptr inbounds i32, ptr %218, i64 192
  %361 = getelementptr inbounds i32, ptr %218, i64 196
  %362 = load <4 x i32>, ptr %360, align 4, !tbaa !23
  %363 = load <4 x i32>, ptr %361, align 4, !tbaa !23
  %364 = add <4 x i32> %362, %358
  %365 = add <4 x i32> %363, %359
  %366 = getelementptr inbounds i32, ptr %218, i64 200
  %367 = getelementptr inbounds i32, ptr %218, i64 204
  %368 = load <4 x i32>, ptr %366, align 4, !tbaa !23
  %369 = load <4 x i32>, ptr %367, align 4, !tbaa !23
  %370 = add <4 x i32> %368, %364
  %371 = add <4 x i32> %369, %365
  %372 = getelementptr inbounds i32, ptr %218, i64 208
  %373 = getelementptr inbounds i32, ptr %218, i64 212
  %374 = load <4 x i32>, ptr %372, align 4, !tbaa !23
  %375 = load <4 x i32>, ptr %373, align 4, !tbaa !23
  %376 = add <4 x i32> %374, %370
  %377 = add <4 x i32> %375, %371
  %378 = getelementptr inbounds i32, ptr %218, i64 216
  %379 = getelementptr inbounds i32, ptr %218, i64 220
  %380 = load <4 x i32>, ptr %378, align 4, !tbaa !23
  %381 = load <4 x i32>, ptr %379, align 4, !tbaa !23
  %382 = add <4 x i32> %380, %376
  %383 = add <4 x i32> %381, %377
  %384 = getelementptr inbounds i32, ptr %218, i64 224
  %385 = getelementptr inbounds i32, ptr %218, i64 228
  %386 = load <4 x i32>, ptr %384, align 4, !tbaa !23
  %387 = load <4 x i32>, ptr %385, align 4, !tbaa !23
  %388 = add <4 x i32> %386, %382
  %389 = add <4 x i32> %387, %383
  %390 = getelementptr inbounds i32, ptr %218, i64 232
  %391 = getelementptr inbounds i32, ptr %218, i64 236
  %392 = load <4 x i32>, ptr %390, align 4, !tbaa !23
  %393 = load <4 x i32>, ptr %391, align 4, !tbaa !23
  %394 = add <4 x i32> %392, %388
  %395 = add <4 x i32> %393, %389
  %396 = getelementptr inbounds i32, ptr %218, i64 240
  %397 = getelementptr inbounds i32, ptr %218, i64 244
  %398 = load <4 x i32>, ptr %396, align 4, !tbaa !23
  %399 = load <4 x i32>, ptr %397, align 4, !tbaa !23
  %400 = add <4 x i32> %398, %394
  %401 = add <4 x i32> %399, %395
  %402 = getelementptr inbounds i32, ptr %218, i64 248
  %403 = getelementptr inbounds i32, ptr %218, i64 252
  %404 = load <4 x i32>, ptr %402, align 4, !tbaa !23
  %405 = load <4 x i32>, ptr %403, align 4, !tbaa !23
  %406 = add <4 x i32> %404, %400
  %407 = add <4 x i32> %405, %401
  %408 = add <4 x i32> %407, %406
  %409 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %408)
  %410 = icmp ult i32 %409, 8192
  br i1 %410, label %447, label %411

411:                                              ; preds = %217
  %412 = lshr i32 %409, 12
  %413 = tail call i32 @llvm.ctlz.i32(i32 %412, i1 true), !range !38
  %414 = xor i32 %413, 31
  %415 = insertelement <4 x i32> poison, i32 %414, i64 0
  %416 = shufflevector <4 x i32> %415, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %417

417:                                              ; preds = %417, %411
  %418 = phi i64 [ 0, %411 ], [ %442, %417 ]
  %419 = phi <4 x i32> [ zeroinitializer, %411 ], [ %440, %417 ]
  %420 = phi <4 x i32> [ zeroinitializer, %411 ], [ %441, %417 ]
  %421 = getelementptr inbounds i32, ptr %218, i64 %418
  %422 = getelementptr inbounds i32, ptr %421, i64 4
  %423 = load <4 x i32>, ptr %421, align 4, !tbaa !23
  %424 = load <4 x i32>, ptr %422, align 4, !tbaa !23
  %425 = lshr <4 x i32> %423, %416
  %426 = lshr <4 x i32> %424, %416
  %427 = add <4 x i32> %425, <i32 1, i32 1, i32 1, i32 1>
  %428 = add <4 x i32> %426, <i32 1, i32 1, i32 1, i32 1>
  %429 = add <4 x i32> %427, %419
  %430 = add <4 x i32> %428, %420
  store <4 x i32> %427, ptr %421, align 4, !tbaa !23
  store <4 x i32> %428, ptr %422, align 4, !tbaa !23
  %431 = or disjoint i64 %418, 8
  %432 = getelementptr inbounds i32, ptr %218, i64 %431
  %433 = getelementptr inbounds i32, ptr %432, i64 4
  %434 = load <4 x i32>, ptr %432, align 4, !tbaa !23
  %435 = load <4 x i32>, ptr %433, align 4, !tbaa !23
  %436 = lshr <4 x i32> %434, %416
  %437 = lshr <4 x i32> %435, %416
  %438 = add <4 x i32> %436, <i32 1, i32 1, i32 1, i32 1>
  %439 = add <4 x i32> %437, <i32 1, i32 1, i32 1, i32 1>
  %440 = add <4 x i32> %438, %429
  %441 = add <4 x i32> %439, %430
  store <4 x i32> %438, ptr %432, align 4, !tbaa !23
  store <4 x i32> %439, ptr %433, align 4, !tbaa !23
  %442 = add nuw nsw i64 %418, 16
  %443 = icmp eq i64 %442, 256
  br i1 %443, label %444, label %417, !llvm.loop !132

444:                                              ; preds = %417
  %445 = add <4 x i32> %441, %440
  %446 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %445)
  br label %447

447:                                              ; preds = %444, %217
  %448 = phi i32 [ %409, %217 ], [ %446, %444 ]
  %449 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 6
  store i32 %448, ptr %449, align 8, !tbaa !72
  br label %450

450:                                              ; preds = %447, %216
  %451 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 1
  %452 = load ptr, ptr %451, align 8, !tbaa !40
  %453 = load <32 x i32>, ptr %452, align 4, !tbaa !23
  %454 = getelementptr inbounds i32, ptr %452, i64 32
  %455 = load <4 x i32>, ptr %454, align 4, !tbaa !23
  %456 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %453)
  %457 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %455)
  %458 = add i32 %456, %457
  %459 = icmp ult i32 %458, 4096
  br i1 %459, label %503, label %460

460:                                              ; preds = %450
  %461 = getelementptr inbounds i32, ptr %452, i64 28
  %462 = getelementptr inbounds i32, ptr %452, i64 24
  %463 = getelementptr inbounds i32, ptr %452, i64 20
  %464 = getelementptr inbounds i32, ptr %452, i64 16
  %465 = getelementptr inbounds i32, ptr %452, i64 12
  %466 = getelementptr inbounds i32, ptr %452, i64 8
  %467 = getelementptr inbounds i32, ptr %452, i64 4
  %468 = lshr i32 %458, 11
  %469 = tail call i32 @llvm.ctlz.i32(i32 %468, i1 true), !range !38
  %470 = xor i32 %469, 31
  %471 = load <4 x i32>, ptr %452, align 4, !tbaa !23
  %472 = load <8 x i32>, ptr %462, align 4, !tbaa !23
  %473 = shufflevector <4 x i32> %471, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %474 = shufflevector <32 x i32> %473, <32 x i32> %453, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %475 = shufflevector <8 x i32> %472, <8 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %476 = shufflevector <32 x i32> %474, <32 x i32> %475, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %477 = insertelement <32 x i32> poison, i32 %470, i64 0
  %478 = shufflevector <32 x i32> %477, <32 x i32> poison, <32 x i32> zeroinitializer
  %479 = lshr <32 x i32> %476, %478
  %480 = add <32 x i32> %479, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %481 = shufflevector <32 x i32> %480, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %481, ptr %452, align 4, !tbaa !23
  %482 = shufflevector <32 x i32> %480, <32 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %482, ptr %467, align 4, !tbaa !23
  %483 = shufflevector <32 x i32> %480, <32 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %483, ptr %466, align 4, !tbaa !23
  %484 = shufflevector <32 x i32> %480, <32 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %484, ptr %465, align 4, !tbaa !23
  %485 = shufflevector <32 x i32> %480, <32 x i32> poison, <4 x i32> <i32 16, i32 17, i32 18, i32 19>
  store <4 x i32> %485, ptr %464, align 4, !tbaa !23
  %486 = shufflevector <32 x i32> %480, <32 x i32> poison, <4 x i32> <i32 20, i32 21, i32 22, i32 23>
  store <4 x i32> %486, ptr %463, align 4, !tbaa !23
  %487 = shufflevector <32 x i32> %480, <32 x i32> poison, <4 x i32> <i32 24, i32 25, i32 26, i32 27>
  store <4 x i32> %487, ptr %462, align 4, !tbaa !23
  %488 = shufflevector <32 x i32> %480, <32 x i32> poison, <4 x i32> <i32 28, i32 29, i32 30, i32 31>
  store <4 x i32> %488, ptr %461, align 4, !tbaa !23
  %489 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %480)
  %490 = load <4 x i32>, ptr %454, align 4, !tbaa !23
  %491 = insertelement <4 x i32> poison, i32 %470, i64 0
  %492 = shufflevector <4 x i32> %491, <4 x i32> poison, <4 x i32> zeroinitializer
  %493 = lshr <4 x i32> %490, %492
  %494 = add <4 x i32> %493, <i32 1, i32 1, i32 1, i32 1>
  %495 = extractelement <4 x i32> %494, i64 0
  %496 = add i32 %489, %495
  %497 = shufflevector <4 x i32> %494, <4 x i32> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %498 = add <4 x i32> %494, %497
  %499 = extractelement <4 x i32> %498, i64 1
  %500 = add i32 %496, %499
  %501 = extractelement <4 x i32> %494, i64 3
  %502 = add i32 %500, %501
  store <4 x i32> %494, ptr %454, align 4, !tbaa !23
  br label %503

503:                                              ; preds = %460, %450
  %504 = phi i32 [ %458, %450 ], [ %502, %460 ]
  store i32 %504, ptr %10, align 4, !tbaa !73
  %505 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 2
  %506 = load ptr, ptr %505, align 8, !tbaa !53
  %507 = load <32 x i32>, ptr %506, align 4, !tbaa !23
  %508 = getelementptr inbounds i32, ptr %506, i64 32
  %509 = load <16 x i32>, ptr %508, align 4, !tbaa !23
  %510 = getelementptr inbounds i32, ptr %506, i64 48
  %511 = load <4 x i32>, ptr %510, align 4, !tbaa !23
  %512 = getelementptr inbounds i32, ptr %506, i64 52
  %513 = load i32, ptr %512, align 4, !tbaa !23
  %514 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %507)
  %515 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %509)
  %516 = add i32 %514, %515
  %517 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %511)
  %518 = add i32 %516, %517
  %519 = add i32 %518, %513
  %520 = icmp ult i32 %519, 4096
  br i1 %520, label %596, label %521

521:                                              ; preds = %503
  %522 = lshr i32 %519, 11
  %523 = tail call i32 @llvm.ctlz.i32(i32 %522, i1 true), !range !38
  %524 = xor i32 %523, 31
  %525 = insertelement <4 x i32> poison, i32 %524, i64 0
  %526 = shufflevector <4 x i32> %525, <4 x i32> poison, <4 x i32> zeroinitializer
  %527 = load <4 x i32>, ptr %506, align 4, !tbaa !23
  %528 = lshr <4 x i32> %527, %526
  %529 = add <4 x i32> %528, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %529, ptr %506, align 4, !tbaa !23
  %530 = getelementptr inbounds i32, ptr %506, i64 4
  %531 = load <4 x i32>, ptr %530, align 4, !tbaa !23
  %532 = lshr <4 x i32> %531, %526
  %533 = add <4 x i32> %532, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %533, ptr %530, align 4, !tbaa !23
  %534 = getelementptr inbounds i32, ptr %506, i64 8
  %535 = load <4 x i32>, ptr %534, align 4, !tbaa !23
  %536 = lshr <4 x i32> %535, %526
  %537 = add <4 x i32> %536, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %537, ptr %534, align 4, !tbaa !23
  %538 = getelementptr inbounds i32, ptr %506, i64 12
  %539 = load <4 x i32>, ptr %538, align 4, !tbaa !23
  %540 = lshr <4 x i32> %539, %526
  %541 = add <4 x i32> %540, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %541, ptr %538, align 4, !tbaa !23
  %542 = getelementptr inbounds i32, ptr %506, i64 16
  %543 = load <4 x i32>, ptr %542, align 4, !tbaa !23
  %544 = lshr <4 x i32> %543, %526
  %545 = add <4 x i32> %544, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %545, ptr %542, align 4, !tbaa !23
  %546 = getelementptr inbounds i32, ptr %506, i64 20
  %547 = load <4 x i32>, ptr %546, align 4, !tbaa !23
  %548 = lshr <4 x i32> %547, %526
  %549 = add <4 x i32> %548, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %549, ptr %546, align 4, !tbaa !23
  %550 = getelementptr inbounds i32, ptr %506, i64 24
  %551 = load <4 x i32>, ptr %550, align 4, !tbaa !23
  %552 = lshr <4 x i32> %551, %526
  %553 = add <4 x i32> %552, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %553, ptr %550, align 4, !tbaa !23
  %554 = getelementptr inbounds i32, ptr %506, i64 28
  %555 = load <4 x i32>, ptr %554, align 4, !tbaa !23
  %556 = lshr <4 x i32> %555, %526
  %557 = add <4 x i32> %556, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %557, ptr %554, align 4, !tbaa !23
  %558 = getelementptr inbounds i32, ptr %506, i64 32
  %559 = load <4 x i32>, ptr %558, align 4, !tbaa !23
  %560 = lshr <4 x i32> %559, %526
  %561 = add <4 x i32> %560, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %561, ptr %558, align 4, !tbaa !23
  %562 = getelementptr inbounds i32, ptr %506, i64 36
  %563 = load <4 x i32>, ptr %562, align 4, !tbaa !23
  %564 = lshr <4 x i32> %563, %526
  %565 = add <4 x i32> %564, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %565, ptr %562, align 4, !tbaa !23
  %566 = getelementptr inbounds i32, ptr %506, i64 40
  %567 = load <4 x i32>, ptr %566, align 4, !tbaa !23
  %568 = lshr <4 x i32> %567, %526
  %569 = add <4 x i32> %568, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %569, ptr %566, align 4, !tbaa !23
  %570 = getelementptr inbounds i32, ptr %506, i64 44
  %571 = load <4 x i32>, ptr %570, align 4, !tbaa !23
  %572 = lshr <4 x i32> %571, %526
  %573 = add <4 x i32> %572, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %573, ptr %570, align 4, !tbaa !23
  %574 = getelementptr inbounds i32, ptr %506, i64 48
  %575 = load <4 x i32>, ptr %574, align 4, !tbaa !23
  %576 = lshr <4 x i32> %575, %526
  %577 = add <4 x i32> %576, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %577, ptr %574, align 4, !tbaa !23
  %578 = add <4 x i32> %533, %529
  %579 = add <4 x i32> %537, %578
  %580 = add <4 x i32> %541, %579
  %581 = add <4 x i32> %545, %580
  %582 = add <4 x i32> %549, %581
  %583 = add <4 x i32> %553, %582
  %584 = add <4 x i32> %557, %583
  %585 = add <4 x i32> %561, %584
  %586 = add <4 x i32> %565, %585
  %587 = add <4 x i32> %569, %586
  %588 = add <4 x i32> %573, %587
  %589 = add <4 x i32> %577, %588
  %590 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %589)
  %591 = getelementptr inbounds i32, ptr %506, i64 52
  %592 = load i32, ptr %591, align 4, !tbaa !23
  %593 = lshr i32 %592, %524
  %594 = add i32 %593, 1
  %595 = add i32 %594, %590
  store i32 %594, ptr %591, align 4, !tbaa !23
  br label %596

596:                                              ; preds = %521, %503
  %597 = phi i32 [ %519, %503 ], [ %595, %521 ]
  %598 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 8
  store i32 %597, ptr %598, align 8, !tbaa !75
  %599 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 3
  %600 = load ptr, ptr %599, align 8, !tbaa !51
  %601 = load <32 x i32>, ptr %600, align 4, !tbaa !23
  %602 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %601)
  %603 = icmp ult i32 %602, 4096
  br i1 %603, label %639, label %604

604:                                              ; preds = %596
  %605 = getelementptr inbounds i32, ptr %600, i64 30
  %606 = getelementptr inbounds i32, ptr %600, i64 29
  %607 = getelementptr inbounds i32, ptr %600, i64 28
  %608 = getelementptr inbounds i32, ptr %600, i64 25
  %609 = getelementptr inbounds i32, ptr %600, i64 24
  %610 = getelementptr inbounds i32, ptr %600, i64 20
  %611 = getelementptr inbounds i32, ptr %600, i64 16
  %612 = getelementptr inbounds i32, ptr %600, i64 12
  %613 = getelementptr inbounds i32, ptr %600, i64 8
  %614 = getelementptr inbounds i32, ptr %600, i64 4
  %615 = lshr i32 %602, 11
  %616 = tail call i32 @llvm.ctlz.i32(i32 %615, i1 true), !range !38
  %617 = xor i32 %616, 31
  %618 = load <4 x i32>, ptr %608, align 4, !tbaa !23
  %619 = load i32, ptr %606, align 4, !tbaa !23
  %620 = load <2 x i32>, ptr %605, align 4, !tbaa !23
  %621 = shufflevector <4 x i32> %618, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %622 = shufflevector <32 x i32> %601, <32 x i32> %621, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %623 = insertelement <32 x i32> %622, i32 %619, i64 29
  %624 = shufflevector <2 x i32> %620, <2 x i32> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %625 = shufflevector <32 x i32> %623, <32 x i32> %624, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %626 = insertelement <32 x i32> poison, i32 %617, i64 0
  %627 = shufflevector <32 x i32> %626, <32 x i32> poison, <32 x i32> zeroinitializer
  %628 = lshr <32 x i32> %625, %627
  %629 = add <32 x i32> %628, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %630 = shufflevector <32 x i32> %629, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %630, ptr %600, align 4, !tbaa !23
  %631 = shufflevector <32 x i32> %629, <32 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %631, ptr %614, align 4, !tbaa !23
  %632 = shufflevector <32 x i32> %629, <32 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %632, ptr %613, align 4, !tbaa !23
  %633 = shufflevector <32 x i32> %629, <32 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %633, ptr %612, align 4, !tbaa !23
  %634 = shufflevector <32 x i32> %629, <32 x i32> poison, <4 x i32> <i32 16, i32 17, i32 18, i32 19>
  store <4 x i32> %634, ptr %611, align 4, !tbaa !23
  %635 = shufflevector <32 x i32> %629, <32 x i32> poison, <4 x i32> <i32 20, i32 21, i32 22, i32 23>
  store <4 x i32> %635, ptr %610, align 4, !tbaa !23
  %636 = shufflevector <32 x i32> %629, <32 x i32> poison, <4 x i32> <i32 24, i32 25, i32 26, i32 27>
  store <4 x i32> %636, ptr %609, align 4, !tbaa !23
  %637 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %629)
  %638 = shufflevector <32 x i32> %629, <32 x i32> poison, <4 x i32> <i32 28, i32 29, i32 30, i32 31>
  store <4 x i32> %638, ptr %607, align 4, !tbaa !23
  br label %639

639:                                              ; preds = %596, %604, %195
  %640 = phi i32 [ 53, %195 ], [ %602, %596 ], [ %637, %604 ]
  %641 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 9
  store i32 %640, ptr %641, align 4, !tbaa !74
  br label %642

642:                                              ; preds = %139, %639
  %643 = phi i32 [ %640, %639 ], [ %163, %139 ]
  %644 = load i32, ptr %6, align 8, !tbaa !55
  %645 = icmp eq i32 %644, 2
  br i1 %645, label %664, label %646

646:                                              ; preds = %642
  %647 = icmp eq i32 %3, 0
  %648 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 6
  %649 = load i32, ptr %648, align 8, !tbaa !72
  %650 = add i32 %649, 1
  %651 = call i32 @llvm.ctlz.i32(i32 %650, i1 true), !range !38
  br i1 %647, label %658, label %652

652:                                              ; preds = %646
  %653 = xor i32 %651, 31
  %654 = shl nuw nsw i32 %653, 8
  %655 = shl i32 %650, 8
  %656 = lshr i32 %655, %653
  %657 = add i32 %654, %656
  br label %661

658:                                              ; preds = %646
  %659 = shl nuw nsw i32 %651, 8
  %660 = xor i32 %659, 7936
  br label %661

661:                                              ; preds = %658, %652
  %662 = phi i32 [ %657, %652 ], [ %660, %658 ]
  %663 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 10
  store i32 %662, ptr %663, align 8, !tbaa !56
  br label %664

664:                                              ; preds = %661, %642
  %665 = icmp eq i32 %3, 0
  %666 = load i32, ptr %10, align 4, !tbaa !73
  %667 = add i32 %666, 1
  %668 = call i32 @llvm.ctlz.i32(i32 %667, i1 true), !range !38
  br i1 %665, label %691, label %669

669:                                              ; preds = %664
  %670 = xor i32 %668, 31
  %671 = shl nuw nsw i32 %670, 8
  %672 = shl i32 %667, 8
  %673 = lshr i32 %672, %670
  %674 = add i32 %671, %673
  %675 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 8
  %676 = load i32, ptr %675, align 8, !tbaa !75
  %677 = add i32 %676, 1
  %678 = call i32 @llvm.ctlz.i32(i32 %677, i1 true), !range !38
  %679 = xor i32 %678, 31
  %680 = shl nuw nsw i32 %679, 8
  %681 = shl i32 %677, 8
  %682 = lshr i32 %681, %679
  %683 = add i32 %680, %682
  %684 = add i32 %643, 1
  %685 = call i32 @llvm.ctlz.i32(i32 %684, i1 true), !range !38
  %686 = xor i32 %685, 31
  %687 = shl nuw nsw i32 %686, 8
  %688 = shl i32 %684, 8
  %689 = lshr i32 %688, %686
  %690 = add i32 %687, %689
  br label %704

691:                                              ; preds = %664
  %692 = shl nuw nsw i32 %668, 8
  %693 = xor i32 %692, 7936
  %694 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 8
  %695 = load i32, ptr %694, align 8, !tbaa !75
  %696 = add i32 %695, 1
  %697 = call i32 @llvm.ctlz.i32(i32 %696, i1 true), !range !38
  %698 = shl nuw nsw i32 %697, 8
  %699 = xor i32 %698, 7936
  %700 = add i32 %643, 1
  %701 = call i32 @llvm.ctlz.i32(i32 %700, i1 true), !range !38
  %702 = shl nuw nsw i32 %701, 8
  %703 = xor i32 %702, 7936
  br label %704

704:                                              ; preds = %669, %691
  %705 = phi i32 [ %693, %691 ], [ %674, %669 ]
  %706 = phi i32 [ %699, %691 ], [ %683, %669 ]
  %707 = phi i32 [ %703, %691 ], [ %690, %669 ]
  %708 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 11
  store i32 %705, ptr %708, align 4
  %709 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 12
  store i32 %706, ptr %709, align 8
  %710 = getelementptr inbounds %struct.optState_t, ptr %0, i64 0, i32 13
  store i32 %707, ptr %710, align 4, !tbaa !50
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ZSTD_optLdm_processMatchCandidate(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #8 {
  %7 = getelementptr inbounds %struct.RawSeqStore_t, ptr %0, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !115
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %85, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.RawSeqStore_t, ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !116
  %13 = icmp ult i64 %12, %8
  br i1 %13, label %14, label %85

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !33
  %17 = icmp ugt i32 %16, %3
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = icmp ult i32 %16, %3
  br i1 %19, label %20, label %49

20:                                               ; preds = %18
  %21 = sub i32 %3, %16
  %22 = getelementptr inbounds %struct.RawSeqStore_t, ptr %0, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !120
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
  %32 = load ptr, ptr %0, align 8, !tbaa !117
  %33 = getelementptr inbounds %struct.rawSeq, ptr %32, i64 %28
  %34 = getelementptr inbounds i8, ptr %33, i64 4
  %35 = load i32, ptr %34, align 4, !tbaa.struct !118
  %36 = getelementptr inbounds i8, ptr %33, i64 8
  %37 = load i32, ptr %36, align 4, !tbaa.struct !119
  %38 = add i32 %37, %35
  %39 = icmp ult i32 %29, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = zext i32 %29 to i64
  store i64 %41, ptr %22, align 8, !tbaa !120
  br label %46

42:                                               ; preds = %31
  %43 = sub i32 %29, %38
  %44 = add nuw i64 %28, 1
  store i64 %44, ptr %11, align 8, !tbaa !116
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %48, label %27

46:                                               ; preds = %27, %40
  %47 = icmp eq i64 %28, %8
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %46, %20
  store i64 0, ptr %22, align 8, !tbaa !120
  br label %49

49:                                               ; preds = %48, %46, %18
  tail call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %4)
  %50 = load i32, ptr %15, align 4, !tbaa !33
  br label %51

51:                                               ; preds = %49, %14
  %52 = phi i32 [ %50, %49 ], [ %16, %14 ]
  %53 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !32
  %55 = sub i32 %54, %3
  %56 = sub i32 %52, %54
  %57 = add i32 %56, %55
  %58 = icmp ugt i32 %54, %3
  %59 = icmp ule i32 %52, %3
  %60 = select i1 %58, i1 true, i1 %59
  %61 = icmp ult i32 %57, %5
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %85, label %63

63:                                               ; preds = %51
  %64 = load i32, ptr %2, align 4, !tbaa !23
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = add i32 %64, -1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ZSTD_match_t, ptr %1, i64 %68, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !43
  %71 = icmp ugt i32 %57, %70
  %72 = icmp ult i32 %64, 4096
  %73 = and i1 %72, %71
  br i1 %73, label %74, label %85

74:                                               ; preds = %66, %63
  %75 = getelementptr inbounds %struct.ZSTD_optLdm_t, ptr %0, i64 0, i32 3
  %76 = load i32, ptr %75, align 8, !tbaa !29
  %77 = add i32 %76, 3
  %78 = zext nneg i32 %64 to i64
  %79 = getelementptr inbounds %struct.ZSTD_match_t, ptr %1, i64 %78, i32 1
  store i32 %57, ptr %79, align 4, !tbaa !43
  %80 = load i32, ptr %2, align 4, !tbaa !23
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ZSTD_match_t, ptr %1, i64 %81
  store i32 %77, ptr %82, align 4, !tbaa !45
  %83 = load i32, ptr %2, align 4, !tbaa !23
  %84 = add i32 %83, 1
  store i32 %84, ptr %2, align 4, !tbaa !23
  br label %85

85:                                               ; preds = %74, %66, %51, %6, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @ZSTD_btGetAllMatches_noDict_3(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %15, %3
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
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 3, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !17

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !15
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi i64 [ %33, %30 ], [ %20, %17 ]
  %38 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !16
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16
  %40 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !22
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 4095)
  %43 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !105
  %45 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !104
  %47 = load i32, ptr %3, align 1, !tbaa !23
  %48 = mul i32 %47, -1640531535
  %49 = sub i32 32, %44
  %50 = lshr i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %46, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !23
  %54 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !106
  %56 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !107
  %58 = add i32 %57, -1
  %59 = shl nsw i32 -1, %58
  %60 = xor i32 %59, -1
  %61 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !19
  %63 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %60)
  %64 = load i32, ptr %39, align 4, !tbaa !109
  %65 = getelementptr i8, ptr %1, i64 28
  %66 = load i32, ptr %65, align 4, !tbaa !103
  %67 = getelementptr i8, ptr %1, i64 40
  %68 = load i32, ptr %67, align 8, !tbaa !110
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
  %80 = getelementptr inbounds i32, ptr %55, i64 %79
  %81 = getelementptr inbounds i32, ptr %80, i64 1
  %82 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %83 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !111
  %85 = shl nuw i32 1, %84
  %86 = add i32 %7, -1
  %87 = zext i32 %86 to i64
  %88 = icmp ult i32 %6, -3
  br i1 %88, label %89, label %409

89:                                               ; preds = %35
  %90 = sub i32 %36, %62
  %91 = getelementptr inbounds i8, ptr %3, i64 3
  %92 = getelementptr inbounds i8, ptr %4, i64 -7
  %93 = icmp ugt ptr %92, %91
  %94 = getelementptr inbounds i8, ptr %4, i64 -3
  %95 = getelementptr inbounds i8, ptr %4, i64 -1
  %96 = ptrtoint ptr %91 to i64
  %97 = zext i32 %6 to i64
  %98 = icmp eq i32 %6, 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, ptr %5, align 4, !tbaa !23
  %101 = add i32 %100, -1
  br label %105

102:                                              ; preds = %89
  %103 = getelementptr inbounds i32, ptr %5, i64 %97
  %104 = load i32, ptr %103, align 4, !tbaa !23
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
  %115 = load i32, ptr %114, align 1, !tbaa !23
  %116 = xor i32 %115, %47
  %117 = and i32 %116, 16777215
  %118 = icmp eq i32 %117, 0
  %119 = and i1 %111, %118
  br i1 %119, label %120, label %195

120:                                              ; preds = %109
  %121 = getelementptr inbounds i8, ptr %91, i64 %113
  br i1 %93, label %122, label %147

122:                                              ; preds = %120
  %123 = load i64, ptr %121, align 1, !tbaa !28
  %124 = load i64, ptr %91, align 1, !tbaa !28
  %125 = xor i64 %124, %123
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = tail call i64 @llvm.cttz.i64(i64 %125, i1 true), !range !112
  %129 = lshr i64 %128, 3
  br label %183

130:                                              ; preds = %122, %136
  %131 = phi ptr [ %134, %136 ], [ %121, %122 ]
  %132 = phi ptr [ %133, %136 ], [ %91, %122 ]
  %133 = getelementptr inbounds i8, ptr %132, i64 8
  %134 = getelementptr inbounds i8, ptr %131, i64 8
  %135 = icmp ult ptr %133, %92
  br i1 %135, label %136, label %147

136:                                              ; preds = %130
  %137 = load i64, ptr %134, align 1, !tbaa !28
  %138 = load i64, ptr %133, align 1, !tbaa !28
  %139 = xor i64 %138, %137
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %130, label %141

141:                                              ; preds = %136
  %142 = tail call i64 @llvm.cttz.i64(i64 %139, i1 true), !range !112
  %143 = lshr i64 %142, 3
  %144 = getelementptr inbounds i8, ptr %133, i64 %143
  %145 = ptrtoint ptr %144 to i64
  %146 = sub i64 %145, %96
  br label %183

147:                                              ; preds = %130, %120
  %148 = phi ptr [ %121, %120 ], [ %134, %130 ]
  %149 = phi ptr [ %91, %120 ], [ %133, %130 ]
  %150 = icmp ult ptr %149, %94
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = load i32, ptr %148, align 1, !tbaa !23
  %153 = load i32, ptr %149, align 1, !tbaa !23
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = getelementptr inbounds i8, ptr %149, i64 4
  %157 = getelementptr inbounds i8, ptr %148, i64 4
  br label %158

158:                                              ; preds = %155, %151, %147
  %159 = phi ptr [ %157, %155 ], [ %148, %151 ], [ %148, %147 ]
  %160 = phi ptr [ %156, %155 ], [ %149, %151 ], [ %149, %147 ]
  %161 = icmp ult ptr %160, %95
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i16, ptr %159, align 1, !tbaa !113
  %164 = load i16, ptr %160, align 1, !tbaa !113
  %165 = icmp eq i16 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = getelementptr inbounds i8, ptr %160, i64 2
  %168 = getelementptr inbounds i8, ptr %159, i64 2
  br label %169

169:                                              ; preds = %166, %162, %158
  %170 = phi ptr [ %168, %166 ], [ %159, %162 ], [ %159, %158 ]
  %171 = phi ptr [ %167, %166 ], [ %160, %162 ], [ %160, %158 ]
  %172 = icmp ult ptr %171, %4
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load i8, ptr %170, align 1, !tbaa !41
  %175 = load i8, ptr %171, align 1, !tbaa !41
  %176 = icmp eq i8 %174, %175
  %177 = zext i1 %176 to i64
  %178 = getelementptr inbounds i8, ptr %171, i64 %177
  br label %179

179:                                              ; preds = %173, %169
  %180 = phi ptr [ %171, %169 ], [ %178, %173 ]
  %181 = ptrtoint ptr %180 to i64
  %182 = sub i64 %181, %96
  br label %183

183:                                              ; preds = %179, %141, %127
  %184 = phi i64 [ %182, %179 ], [ %129, %127 ], [ %146, %141 ]
  %185 = trunc i64 %184 to i32
  %186 = add i32 %185, 3
  %187 = icmp ult i32 %86, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  %189 = zext i32 %186 to i64
  store i32 1, ptr %0, align 4, !tbaa !45
  %190 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %186, ptr %190, align 4, !tbaa !43
  %191 = icmp ule i32 %186, %42
  %192 = getelementptr inbounds i8, ptr %3, i64 %189
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
  %201 = getelementptr inbounds i32, ptr %5, i64 %198
  %202 = load i32, ptr %201, align 4, !tbaa !23
  br label %206

203:                                              ; preds = %195
  %204 = load i32, ptr %5, align 4, !tbaa !23
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
  %213 = load i32, ptr %3, align 1, !tbaa !23
  %214 = zext i32 %207 to i64
  %215 = sub nsw i64 0, %214
  %216 = getelementptr inbounds i8, ptr %3, i64 %215
  %217 = load i32, ptr %216, align 1, !tbaa !23
  %218 = xor i32 %217, %213
  %219 = and i32 %218, 16777215
  %220 = icmp eq i32 %219, 0
  %221 = and i1 %212, %220
  br i1 %221, label %222, label %289

222:                                              ; preds = %210
  %223 = getelementptr inbounds i8, ptr %91, i64 %215
  br i1 %93, label %224, label %238

224:                                              ; preds = %222
  %225 = load i64, ptr %223, align 1, !tbaa !28
  %226 = load i64, ptr %91, align 1, !tbaa !28
  %227 = xor i64 %226, %225
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %224
  %230 = tail call i64 @llvm.cttz.i64(i64 %227, i1 true), !range !112
  %231 = lshr i64 %230, 3
  br label %285

232:                                              ; preds = %224, %274
  %233 = phi ptr [ %236, %274 ], [ %223, %224 ]
  %234 = phi ptr [ %235, %274 ], [ %91, %224 ]
  %235 = getelementptr inbounds i8, ptr %234, i64 8
  %236 = getelementptr inbounds i8, ptr %233, i64 8
  %237 = icmp ult ptr %235, %92
  br i1 %237, label %274, label %238

238:                                              ; preds = %232, %222
  %239 = phi ptr [ %223, %222 ], [ %236, %232 ]
  %240 = phi ptr [ %91, %222 ], [ %235, %232 ]
  %241 = icmp ult ptr %240, %94
  br i1 %241, label %242, label %249

242:                                              ; preds = %238
  %243 = load i32, ptr %239, align 1, !tbaa !23
  %244 = load i32, ptr %240, align 1, !tbaa !23
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = getelementptr inbounds i8, ptr %240, i64 4
  %248 = getelementptr inbounds i8, ptr %239, i64 4
  br label %249

249:                                              ; preds = %246, %242, %238
  %250 = phi ptr [ %248, %246 ], [ %239, %242 ], [ %239, %238 ]
  %251 = phi ptr [ %247, %246 ], [ %240, %242 ], [ %240, %238 ]
  %252 = icmp ult ptr %251, %95
  br i1 %252, label %253, label %260

253:                                              ; preds = %249
  %254 = load i16, ptr %250, align 1, !tbaa !113
  %255 = load i16, ptr %251, align 1, !tbaa !113
  %256 = icmp eq i16 %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = getelementptr inbounds i8, ptr %251, i64 2
  %259 = getelementptr inbounds i8, ptr %250, i64 2
  br label %260

260:                                              ; preds = %257, %253, %249
  %261 = phi ptr [ %259, %257 ], [ %250, %253 ], [ %250, %249 ]
  %262 = phi ptr [ %258, %257 ], [ %251, %253 ], [ %251, %249 ]
  %263 = icmp ult ptr %262, %4
  br i1 %263, label %264, label %270

264:                                              ; preds = %260
  %265 = load i8, ptr %261, align 1, !tbaa !41
  %266 = load i8, ptr %262, align 1, !tbaa !41
  %267 = icmp eq i8 %265, %266
  %268 = zext i1 %267 to i64
  %269 = getelementptr inbounds i8, ptr %262, i64 %268
  br label %270

270:                                              ; preds = %264, %260
  %271 = phi ptr [ %262, %260 ], [ %269, %264 ]
  %272 = ptrtoint ptr %271 to i64
  %273 = sub i64 %272, %96
  br label %285

274:                                              ; preds = %232
  %275 = load i64, ptr %236, align 1, !tbaa !28
  %276 = load i64, ptr %235, align 1, !tbaa !28
  %277 = xor i64 %276, %275
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %232, label %279

279:                                              ; preds = %274
  %280 = tail call i64 @llvm.cttz.i64(i64 %277, i1 true), !range !112
  %281 = lshr i64 %280, 3
  %282 = getelementptr inbounds i8, ptr %235, i64 %281
  %283 = ptrtoint ptr %282 to i64
  %284 = sub i64 %283, %96
  br label %285

285:                                              ; preds = %279, %270, %229
  %286 = phi i64 [ %273, %270 ], [ %231, %229 ], [ %284, %279 ]
  %287 = trunc i64 %286 to i32
  %288 = add i32 %287, 3
  br label %289

289:                                              ; preds = %285, %210, %206
  %290 = phi i32 [ %288, %285 ], [ 0, %210 ], [ 0, %206 ]
  %291 = zext i32 %290 to i64
  %292 = icmp ult i64 %197, %291
  br i1 %292, label %293, label %302

293:                                              ; preds = %289
  %294 = zext nneg i32 %196 to i64
  %295 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %294
  store i32 2, ptr %295, align 4, !tbaa !45
  %296 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %294, i32 1
  store i32 %290, ptr %296, align 4, !tbaa !43
  %297 = add nuw nsw i32 %196, 1
  %298 = icmp ule i32 %290, %42
  %299 = getelementptr inbounds i8, ptr %3, i64 %291
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
  %308 = getelementptr inbounds i32, ptr %5, i64 %305
  %309 = load i32, ptr %308, align 4, !tbaa !23
  br label %313

310:                                              ; preds = %302
  %311 = load i32, ptr %5, align 4, !tbaa !23
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
  %320 = load i32, ptr %3, align 1, !tbaa !23
  %321 = zext i32 %314 to i64
  %322 = sub nsw i64 0, %321
  %323 = getelementptr inbounds i8, ptr %3, i64 %322
  %324 = load i32, ptr %323, align 1, !tbaa !23
  %325 = xor i32 %324, %320
  %326 = and i32 %325, 16777215
  %327 = icmp eq i32 %326, 0
  %328 = and i1 %319, %327
  br i1 %328, label %329, label %396

329:                                              ; preds = %317
  %330 = getelementptr inbounds i8, ptr %91, i64 %322
  br i1 %93, label %331, label %345

331:                                              ; preds = %329
  %332 = load i64, ptr %330, align 1, !tbaa !28
  %333 = load i64, ptr %91, align 1, !tbaa !28
  %334 = xor i64 %333, %332
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %339, label %336

336:                                              ; preds = %331
  %337 = tail call i64 @llvm.cttz.i64(i64 %334, i1 true), !range !112
  %338 = lshr i64 %337, 3
  br label %392

339:                                              ; preds = %331, %381
  %340 = phi ptr [ %343, %381 ], [ %330, %331 ]
  %341 = phi ptr [ %342, %381 ], [ %91, %331 ]
  %342 = getelementptr inbounds i8, ptr %341, i64 8
  %343 = getelementptr inbounds i8, ptr %340, i64 8
  %344 = icmp ult ptr %342, %92
  br i1 %344, label %381, label %345

345:                                              ; preds = %339, %329
  %346 = phi ptr [ %330, %329 ], [ %343, %339 ]
  %347 = phi ptr [ %91, %329 ], [ %342, %339 ]
  %348 = icmp ult ptr %347, %94
  br i1 %348, label %349, label %356

349:                                              ; preds = %345
  %350 = load i32, ptr %346, align 1, !tbaa !23
  %351 = load i32, ptr %347, align 1, !tbaa !23
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %349
  %354 = getelementptr inbounds i8, ptr %347, i64 4
  %355 = getelementptr inbounds i8, ptr %346, i64 4
  br label %356

356:                                              ; preds = %353, %349, %345
  %357 = phi ptr [ %355, %353 ], [ %346, %349 ], [ %346, %345 ]
  %358 = phi ptr [ %354, %353 ], [ %347, %349 ], [ %347, %345 ]
  %359 = icmp ult ptr %358, %95
  br i1 %359, label %360, label %367

360:                                              ; preds = %356
  %361 = load i16, ptr %357, align 1, !tbaa !113
  %362 = load i16, ptr %358, align 1, !tbaa !113
  %363 = icmp eq i16 %361, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %360
  %365 = getelementptr inbounds i8, ptr %358, i64 2
  %366 = getelementptr inbounds i8, ptr %357, i64 2
  br label %367

367:                                              ; preds = %364, %360, %356
  %368 = phi ptr [ %366, %364 ], [ %357, %360 ], [ %357, %356 ]
  %369 = phi ptr [ %365, %364 ], [ %358, %360 ], [ %358, %356 ]
  %370 = icmp ult ptr %369, %4
  br i1 %370, label %371, label %377

371:                                              ; preds = %367
  %372 = load i8, ptr %368, align 1, !tbaa !41
  %373 = load i8, ptr %369, align 1, !tbaa !41
  %374 = icmp eq i8 %372, %373
  %375 = zext i1 %374 to i64
  %376 = getelementptr inbounds i8, ptr %369, i64 %375
  br label %377

377:                                              ; preds = %371, %367
  %378 = phi ptr [ %369, %367 ], [ %376, %371 ]
  %379 = ptrtoint ptr %378 to i64
  %380 = sub i64 %379, %96
  br label %392

381:                                              ; preds = %339
  %382 = load i64, ptr %343, align 1, !tbaa !28
  %383 = load i64, ptr %342, align 1, !tbaa !28
  %384 = xor i64 %383, %382
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %339, label %386

386:                                              ; preds = %381
  %387 = tail call i64 @llvm.cttz.i64(i64 %384, i1 true), !range !112
  %388 = lshr i64 %387, 3
  %389 = getelementptr inbounds i8, ptr %342, i64 %388
  %390 = ptrtoint ptr %389 to i64
  %391 = sub i64 %390, %96
  br label %392

392:                                              ; preds = %386, %377, %336
  %393 = phi i64 [ %380, %377 ], [ %338, %336 ], [ %391, %386 ]
  %394 = trunc i64 %393 to i32
  %395 = add i32 %394, 3
  br label %396

396:                                              ; preds = %392, %317, %313
  %397 = phi i32 [ %395, %392 ], [ 0, %317 ], [ 0, %313 ]
  %398 = zext i32 %397 to i64
  %399 = icmp ult i64 %304, %398
  br i1 %399, label %400, label %409

400:                                              ; preds = %396
  %401 = zext nneg i32 %303 to i64
  %402 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %401
  store i32 3, ptr %402, align 4, !tbaa !45
  %403 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %401, i32 1
  store i32 %397, ptr %403, align 4, !tbaa !43
  %404 = add nuw nsw i32 %303, 1
  %405 = icmp ule i32 %397, %42
  %406 = getelementptr inbounds i8, ptr %3, i64 %398
  %407 = icmp ne ptr %406, %4
  %408 = and i1 %405, %407
  br i1 %408, label %409, label %718

409:                                              ; preds = %396, %400, %35
  %410 = phi i64 [ %87, %35 ], [ %398, %400 ], [ %304, %396 ]
  %411 = phi i32 [ 0, %35 ], [ %404, %400 ], [ %303, %396 ]
  %412 = icmp ult i64 %410, 3
  br i1 %412, label %413, label %572

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 10
  %415 = load ptr, ptr %414, align 8, !tbaa !133
  %416 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 3
  %417 = load i32, ptr %416, align 8, !tbaa !134
  %418 = load i32, ptr %2, align 4, !tbaa !23
  %419 = load i32, ptr %3, align 1, !tbaa !23
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
  %431 = getelementptr inbounds i8, ptr %38, i64 %429
  %432 = load i32, ptr %431, align 1, !tbaa !23
  %433 = mul i32 %432, 900185344
  %434 = lshr i32 %433, %420
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds i32, ptr %415, i64 %435
  %437 = trunc i64 %429 to i32
  store i32 %437, ptr %436, align 4, !tbaa !23
  %438 = add nuw nsw i64 %429, 1
  %439 = add i64 %430, 1
  %440 = icmp eq i64 %439, %426
  br i1 %440, label %441, label %428, !llvm.loop !135

441:                                              ; preds = %428, %422
  %442 = phi i64 [ %423, %422 ], [ %438, %428 ]
  %443 = sub nsw i64 %423, %424
  %444 = icmp ugt i64 %443, -4
  br i1 %444, label %480, label %445

445:                                              ; preds = %441, %445
  %446 = phi i64 [ %478, %445 ], [ %442, %441 ]
  %447 = getelementptr inbounds i8, ptr %38, i64 %446
  %448 = load i32, ptr %447, align 1, !tbaa !23
  %449 = mul i32 %448, 900185344
  %450 = lshr i32 %449, %420
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds i32, ptr %415, i64 %451
  %453 = trunc i64 %446 to i32
  store i32 %453, ptr %452, align 4, !tbaa !23
  %454 = add nuw nsw i64 %446, 1
  %455 = getelementptr inbounds i8, ptr %38, i64 %454
  %456 = load i32, ptr %455, align 1, !tbaa !23
  %457 = mul i32 %456, 900185344
  %458 = lshr i32 %457, %420
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds i32, ptr %415, i64 %459
  %461 = trunc i64 %454 to i32
  store i32 %461, ptr %460, align 4, !tbaa !23
  %462 = add nuw nsw i64 %446, 2
  %463 = getelementptr inbounds i8, ptr %38, i64 %462
  %464 = load i32, ptr %463, align 1, !tbaa !23
  %465 = mul i32 %464, 900185344
  %466 = lshr i32 %465, %420
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds i32, ptr %415, i64 %467
  %469 = trunc i64 %462 to i32
  store i32 %469, ptr %468, align 4, !tbaa !23
  %470 = add nuw nsw i64 %446, 3
  %471 = getelementptr inbounds i8, ptr %38, i64 %470
  %472 = load i32, ptr %471, align 1, !tbaa !23
  %473 = mul i32 %472, 900185344
  %474 = lshr i32 %473, %420
  %475 = zext i32 %474 to i64
  %476 = getelementptr inbounds i32, ptr %415, i64 %475
  %477 = trunc i64 %470 to i32
  store i32 %477, ptr %476, align 4, !tbaa !23
  %478 = add nuw nsw i64 %446, 4
  %479 = icmp eq i64 %478, %424
  br i1 %479, label %480, label %445, !llvm.loop !136

480:                                              ; preds = %441, %445, %413
  %481 = mul i32 %419, 900185344
  %482 = lshr i32 %481, %420
  %483 = zext i32 %482 to i64
  store i32 %36, ptr %2, align 4, !tbaa !23
  %484 = getelementptr inbounds i32, ptr %415, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !23
  %486 = icmp uge i32 %485, %76
  %487 = sub i32 %36, %485
  %488 = icmp ult i32 %487, 262144
  %489 = and i1 %486, %488
  br i1 %489, label %490, label %572

490:                                              ; preds = %480
  %491 = zext i32 %485 to i64
  %492 = getelementptr inbounds i8, ptr %38, i64 %491
  %493 = getelementptr inbounds i8, ptr %4, i64 -7
  %494 = icmp ugt ptr %493, %3
  br i1 %494, label %495, label %520

495:                                              ; preds = %490
  %496 = load i64, ptr %492, align 1, !tbaa !28
  %497 = load i64, ptr %3, align 1, !tbaa !28
  %498 = xor i64 %497, %496
  %499 = icmp eq i64 %498, 0
  br i1 %499, label %503, label %500

500:                                              ; preds = %495
  %501 = tail call i64 @llvm.cttz.i64(i64 %498, i1 true), !range !112
  %502 = lshr i64 %501, 3
  br label %558

503:                                              ; preds = %495, %509
  %504 = phi ptr [ %507, %509 ], [ %492, %495 ]
  %505 = phi ptr [ %506, %509 ], [ %3, %495 ]
  %506 = getelementptr inbounds i8, ptr %505, i64 8
  %507 = getelementptr inbounds i8, ptr %504, i64 8
  %508 = icmp ult ptr %506, %493
  br i1 %508, label %509, label %520

509:                                              ; preds = %503
  %510 = load i64, ptr %507, align 1, !tbaa !28
  %511 = load i64, ptr %506, align 1, !tbaa !28
  %512 = xor i64 %511, %510
  %513 = icmp eq i64 %512, 0
  br i1 %513, label %503, label %514

514:                                              ; preds = %509
  %515 = tail call i64 @llvm.cttz.i64(i64 %512, i1 true), !range !112
  %516 = lshr i64 %515, 3
  %517 = getelementptr inbounds i8, ptr %506, i64 %516
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
  %526 = load i32, ptr %521, align 1, !tbaa !23
  %527 = load i32, ptr %522, align 1, !tbaa !23
  %528 = icmp eq i32 %526, %527
  br i1 %528, label %529, label %532

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, ptr %522, i64 4
  %531 = getelementptr inbounds i8, ptr %521, i64 4
  br label %532

532:                                              ; preds = %529, %525, %520
  %533 = phi ptr [ %531, %529 ], [ %521, %525 ], [ %521, %520 ]
  %534 = phi ptr [ %530, %529 ], [ %522, %525 ], [ %522, %520 ]
  %535 = getelementptr inbounds i8, ptr %4, i64 -1
  %536 = icmp ult ptr %534, %535
  br i1 %536, label %537, label %544

537:                                              ; preds = %532
  %538 = load i16, ptr %533, align 1, !tbaa !113
  %539 = load i16, ptr %534, align 1, !tbaa !113
  %540 = icmp eq i16 %538, %539
  br i1 %540, label %541, label %544

541:                                              ; preds = %537
  %542 = getelementptr inbounds i8, ptr %534, i64 2
  %543 = getelementptr inbounds i8, ptr %533, i64 2
  br label %544

544:                                              ; preds = %541, %537, %532
  %545 = phi ptr [ %543, %541 ], [ %533, %537 ], [ %533, %532 ]
  %546 = phi ptr [ %542, %541 ], [ %534, %537 ], [ %534, %532 ]
  %547 = icmp ult ptr %546, %4
  br i1 %547, label %548, label %554

548:                                              ; preds = %544
  %549 = load i8, ptr %545, align 1, !tbaa !41
  %550 = load i8, ptr %546, align 1, !tbaa !41
  %551 = icmp eq i8 %549, %550
  %552 = zext i1 %551 to i64
  %553 = getelementptr inbounds i8, ptr %546, i64 %552
  br label %554

554:                                              ; preds = %548, %544
  %555 = phi ptr [ %546, %544 ], [ %553, %548 ]
  %556 = ptrtoint ptr %555 to i64
  %557 = sub i64 %556, %18
  br label %558

558:                                              ; preds = %500, %514, %554
  %559 = phi i64 [ %557, %554 ], [ %502, %500 ], [ %519, %514 ]
  %560 = icmp ugt i64 %559, 2
  br i1 %560, label %561, label %572

561:                                              ; preds = %558
  %562 = add i32 %487, 3
  store i32 %562, ptr %0, align 4, !tbaa !45
  %563 = trunc i64 %559 to i32
  %564 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %563, ptr %564, align 4, !tbaa !43
  %565 = zext nneg i32 %42 to i64
  %566 = icmp ugt i64 %559, %565
  %567 = getelementptr inbounds i8, ptr %3, i64 %559
  %568 = icmp eq ptr %567, %4
  %569 = or i1 %566, %568
  br i1 %569, label %570, label %572

570:                                              ; preds = %561
  %571 = add i32 %36, 1
  br label %715

572:                                              ; preds = %558, %561, %480, %409
  %573 = phi i64 [ %410, %409 ], [ %410, %558 ], [ %559, %561 ], [ %410, %480 ]
  %574 = phi i32 [ %411, %409 ], [ %411, %558 ], [ 1, %561 ], [ %411, %480 ]
  store i32 %36, ptr %52, align 4, !tbaa !23
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
  %594 = getelementptr inbounds i32, ptr %55, i64 %593
  %595 = tail call i64 @llvm.umin.i64(i64 %583, i64 %584)
  %596 = zext i32 %582 to i64
  %597 = getelementptr inbounds i8, ptr %38, i64 %596
  %598 = getelementptr inbounds i8, ptr %3, i64 %595
  %599 = getelementptr inbounds i8, ptr %597, i64 %595
  %600 = icmp ugt ptr %577, %598
  br i1 %600, label %601, label %627

601:                                              ; preds = %581
  %602 = load i64, ptr %599, align 1, !tbaa !28
  %603 = load i64, ptr %598, align 1, !tbaa !28
  %604 = xor i64 %603, %602
  %605 = icmp eq i64 %604, 0
  br i1 %605, label %609, label %606

606:                                              ; preds = %601
  %607 = tail call i64 @llvm.cttz.i64(i64 %604, i1 true), !range !112
  %608 = lshr i64 %607, 3
  br label %664

609:                                              ; preds = %601, %615
  %610 = phi ptr [ %613, %615 ], [ %599, %601 ]
  %611 = phi ptr [ %612, %615 ], [ %598, %601 ]
  %612 = getelementptr inbounds i8, ptr %611, i64 8
  %613 = getelementptr inbounds i8, ptr %610, i64 8
  %614 = icmp ult ptr %612, %577
  br i1 %614, label %615, label %627

615:                                              ; preds = %609
  %616 = load i64, ptr %613, align 1, !tbaa !28
  %617 = load i64, ptr %612, align 1, !tbaa !28
  %618 = xor i64 %617, %616
  %619 = icmp eq i64 %618, 0
  br i1 %619, label %609, label %620

620:                                              ; preds = %615
  %621 = tail call i64 @llvm.cttz.i64(i64 %618, i1 true), !range !112
  %622 = lshr i64 %621, 3
  %623 = getelementptr inbounds i8, ptr %612, i64 %622
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
  %632 = load i32, ptr %628, align 1, !tbaa !23
  %633 = load i32, ptr %629, align 1, !tbaa !23
  %634 = icmp eq i32 %632, %633
  br i1 %634, label %635, label %638

635:                                              ; preds = %631
  %636 = getelementptr inbounds i8, ptr %629, i64 4
  %637 = getelementptr inbounds i8, ptr %628, i64 4
  br label %638

638:                                              ; preds = %635, %631, %627
  %639 = phi ptr [ %637, %635 ], [ %628, %631 ], [ %628, %627 ]
  %640 = phi ptr [ %636, %635 ], [ %629, %631 ], [ %629, %627 ]
  %641 = icmp ult ptr %640, %579
  br i1 %641, label %642, label %649

642:                                              ; preds = %638
  %643 = load i16, ptr %639, align 1, !tbaa !113
  %644 = load i16, ptr %640, align 1, !tbaa !113
  %645 = icmp eq i16 %643, %644
  br i1 %645, label %646, label %649

646:                                              ; preds = %642
  %647 = getelementptr inbounds i8, ptr %640, i64 2
  %648 = getelementptr inbounds i8, ptr %639, i64 2
  br label %649

649:                                              ; preds = %646, %642, %638
  %650 = phi ptr [ %648, %646 ], [ %639, %642 ], [ %639, %638 ]
  %651 = phi ptr [ %647, %646 ], [ %640, %642 ], [ %640, %638 ]
  %652 = icmp ult ptr %651, %4
  br i1 %652, label %653, label %659

653:                                              ; preds = %649
  %654 = load i8, ptr %650, align 1, !tbaa !41
  %655 = load i8, ptr %651, align 1, !tbaa !41
  %656 = icmp eq i8 %654, %655
  %657 = zext i1 %656 to i64
  %658 = getelementptr inbounds i8, ptr %651, i64 %657
  br label %659

659:                                              ; preds = %653, %649
  %660 = phi ptr [ %651, %649 ], [ %658, %653 ]
  %661 = ptrtoint ptr %660 to i64
  %662 = ptrtoint ptr %598 to i64
  %663 = sub i64 %661, %662
  br label %664

664:                                              ; preds = %606, %620, %659
  %665 = phi i64 [ %663, %659 ], [ %608, %606 ], [ %626, %620 ]
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
  %677 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %676
  store i32 %675, ptr %677, align 4, !tbaa !45
  %678 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %676, i32 1
  store i32 %672, ptr %678, align 4, !tbaa !43
  %679 = add i32 %588, 1
  %680 = icmp ugt i64 %666, 4096
  %681 = getelementptr inbounds i8, ptr %3, i64 %666
  %682 = icmp eq ptr %681, %4
  %683 = or i1 %680, %682
  br i1 %683, label %709, label %684

684:                                              ; preds = %668, %664
  %685 = phi i64 [ %666, %668 ], [ %590, %664 ]
  %686 = phi i32 [ %679, %668 ], [ %588, %664 ]
  %687 = phi i32 [ %674, %668 ], [ %587, %664 ]
  %688 = getelementptr inbounds i8, ptr %597, i64 %666
  %689 = load i8, ptr %688, align 1, !tbaa !41
  %690 = getelementptr inbounds i8, ptr %3, i64 %666
  %691 = load i8, ptr %690, align 1, !tbaa !41
  %692 = icmp ult i8 %689, %691
  %693 = icmp ugt i32 %582, %63
  br i1 %692, label %694, label %697

694:                                              ; preds = %684
  store i32 %582, ptr %585, align 4, !tbaa !23
  br i1 %693, label %695, label %709

695:                                              ; preds = %694
  %696 = getelementptr inbounds i32, ptr %594, i64 1
  br label %698

697:                                              ; preds = %684
  store i32 %582, ptr %586, align 4, !tbaa !23
  br i1 %693, label %698, label %709

698:                                              ; preds = %697, %695
  %699 = phi ptr [ %586, %695 ], [ %594, %697 ]
  %700 = phi ptr [ %696, %695 ], [ %585, %697 ]
  %701 = phi i64 [ %584, %695 ], [ %666, %697 ]
  %702 = phi i64 [ %666, %695 ], [ %583, %697 ]
  %703 = phi ptr [ %696, %695 ], [ %594, %697 ]
  %704 = load i32, ptr %703, align 4, !tbaa !23
  %705 = add i32 %589, -1
  %706 = icmp ne i32 %705, 0
  %707 = icmp uge i32 %704, %76
  %708 = select i1 %706, i1 %707, i1 false
  br i1 %708, label %581, label %709, !llvm.loop !137

709:                                              ; preds = %698, %694, %697, %668, %572
  %710 = phi i32 [ %574, %572 ], [ %679, %668 ], [ %686, %697 ], [ %686, %694 ], [ %686, %698 ]
  %711 = phi i32 [ %82, %572 ], [ %674, %668 ], [ %687, %697 ], [ %687, %694 ], [ %687, %698 ]
  %712 = phi ptr [ %81, %572 ], [ %586, %668 ], [ %9, %697 ], [ %586, %694 ], [ %699, %698 ]
  %713 = phi ptr [ %80, %572 ], [ %585, %668 ], [ %585, %697 ], [ %9, %694 ], [ %700, %698 ]
  store i32 0, ptr %712, align 4, !tbaa !23
  store i32 0, ptr %713, align 4, !tbaa !23
  %714 = add i32 %711, -8
  br label %715

715:                                              ; preds = %709, %570
  %716 = phi i32 [ %571, %570 ], [ %714, %709 ]
  %717 = phi i32 [ 1, %570 ], [ %710, %709 ]
  store i32 %716, ptr %12, align 4, !tbaa !16
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
define internal i32 @ZSTD_btGetAllMatches_noDict_4(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %15, %3
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
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 4, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !17

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !15
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !16
  %38 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !22
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !104
  %46 = load i32, ptr %3, align 1, !tbaa !23
  %47 = mul i32 %46, -1640531535
  %48 = sub i32 32, %43
  %49 = lshr i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !23
  %53 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !107
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !19
  %62 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %63 = load i32, ptr %38, align 4, !tbaa !109
  %64 = getelementptr i8, ptr %1, i64 28
  %65 = load i32, ptr %64, align 4, !tbaa !103
  %66 = getelementptr i8, ptr %1, i64 40
  %67 = load i32, ptr %66, align 8, !tbaa !110
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
  %79 = getelementptr inbounds i32, ptr %54, i64 %78
  %80 = getelementptr inbounds i32, ptr %79, i64 1
  %81 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %82 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !111
  %84 = shl nuw i32 1, %83
  %85 = add i32 %7, -1
  %86 = zext i32 %85 to i64
  %87 = icmp ult i32 %6, -3
  br i1 %87, label %88, label %402

88:                                               ; preds = %35
  %89 = sub i32 %36, %61
  %90 = getelementptr inbounds i8, ptr %3, i64 4
  %91 = getelementptr inbounds i8, ptr %4, i64 -7
  %92 = icmp ugt ptr %91, %90
  %93 = getelementptr inbounds i8, ptr %4, i64 -3
  %94 = getelementptr inbounds i8, ptr %4, i64 -1
  %95 = ptrtoint ptr %90 to i64
  %96 = zext i32 %6 to i64
  %97 = icmp eq i32 %6, 3
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i32, ptr %5, align 4, !tbaa !23
  %100 = add i32 %99, -1
  br label %104

101:                                              ; preds = %88
  %102 = getelementptr inbounds i32, ptr %5, i64 %96
  %103 = load i32, ptr %102, align 4, !tbaa !23
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
  %114 = load i32, ptr %113, align 1, !tbaa !23
  %115 = icmp eq i32 %46, %114
  %116 = and i1 %110, %115
  br i1 %116, label %117, label %192

117:                                              ; preds = %108
  %118 = getelementptr inbounds i8, ptr %90, i64 %112
  br i1 %92, label %119, label %144

119:                                              ; preds = %117
  %120 = load i64, ptr %118, align 1, !tbaa !28
  %121 = load i64, ptr %90, align 1, !tbaa !28
  %122 = xor i64 %121, %120
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = tail call i64 @llvm.cttz.i64(i64 %122, i1 true), !range !112
  %126 = lshr i64 %125, 3
  br label %180

127:                                              ; preds = %119, %133
  %128 = phi ptr [ %131, %133 ], [ %118, %119 ]
  %129 = phi ptr [ %130, %133 ], [ %90, %119 ]
  %130 = getelementptr inbounds i8, ptr %129, i64 8
  %131 = getelementptr inbounds i8, ptr %128, i64 8
  %132 = icmp ult ptr %130, %91
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load i64, ptr %131, align 1, !tbaa !28
  %135 = load i64, ptr %130, align 1, !tbaa !28
  %136 = xor i64 %135, %134
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %127, label %138

138:                                              ; preds = %133
  %139 = tail call i64 @llvm.cttz.i64(i64 %136, i1 true), !range !112
  %140 = lshr i64 %139, 3
  %141 = getelementptr inbounds i8, ptr %130, i64 %140
  %142 = ptrtoint ptr %141 to i64
  %143 = sub i64 %142, %95
  br label %180

144:                                              ; preds = %127, %117
  %145 = phi ptr [ %118, %117 ], [ %131, %127 ]
  %146 = phi ptr [ %90, %117 ], [ %130, %127 ]
  %147 = icmp ult ptr %146, %93
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load i32, ptr %145, align 1, !tbaa !23
  %150 = load i32, ptr %146, align 1, !tbaa !23
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = getelementptr inbounds i8, ptr %146, i64 4
  %154 = getelementptr inbounds i8, ptr %145, i64 4
  br label %155

155:                                              ; preds = %152, %148, %144
  %156 = phi ptr [ %154, %152 ], [ %145, %148 ], [ %145, %144 ]
  %157 = phi ptr [ %153, %152 ], [ %146, %148 ], [ %146, %144 ]
  %158 = icmp ult ptr %157, %94
  br i1 %158, label %159, label %166

159:                                              ; preds = %155
  %160 = load i16, ptr %156, align 1, !tbaa !113
  %161 = load i16, ptr %157, align 1, !tbaa !113
  %162 = icmp eq i16 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, ptr %157, i64 2
  %165 = getelementptr inbounds i8, ptr %156, i64 2
  br label %166

166:                                              ; preds = %163, %159, %155
  %167 = phi ptr [ %165, %163 ], [ %156, %159 ], [ %156, %155 ]
  %168 = phi ptr [ %164, %163 ], [ %157, %159 ], [ %157, %155 ]
  %169 = icmp ult ptr %168, %4
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load i8, ptr %167, align 1, !tbaa !41
  %172 = load i8, ptr %168, align 1, !tbaa !41
  %173 = icmp eq i8 %171, %172
  %174 = zext i1 %173 to i64
  %175 = getelementptr inbounds i8, ptr %168, i64 %174
  br label %176

176:                                              ; preds = %170, %166
  %177 = phi ptr [ %168, %166 ], [ %175, %170 ]
  %178 = ptrtoint ptr %177 to i64
  %179 = sub i64 %178, %95
  br label %180

180:                                              ; preds = %176, %138, %124
  %181 = phi i64 [ %179, %176 ], [ %126, %124 ], [ %143, %138 ]
  %182 = trunc i64 %181 to i32
  %183 = add i32 %182, 4
  %184 = icmp ult i32 %85, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = zext i32 %183 to i64
  store i32 1, ptr %0, align 4, !tbaa !45
  %187 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %183, ptr %187, align 4, !tbaa !43
  %188 = icmp ule i32 %183, %41
  %189 = getelementptr inbounds i8, ptr %3, i64 %186
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
  %198 = getelementptr inbounds i32, ptr %5, i64 %195
  %199 = load i32, ptr %198, align 4, !tbaa !23
  br label %203

200:                                              ; preds = %192
  %201 = load i32, ptr %5, align 4, !tbaa !23
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
  %210 = load i32, ptr %3, align 1, !tbaa !23
  %211 = zext i32 %204 to i64
  %212 = sub nsw i64 0, %211
  %213 = getelementptr inbounds i8, ptr %3, i64 %212
  %214 = load i32, ptr %213, align 1, !tbaa !23
  %215 = icmp eq i32 %210, %214
  %216 = and i1 %209, %215
  br i1 %216, label %217, label %284

217:                                              ; preds = %207
  %218 = getelementptr inbounds i8, ptr %90, i64 %212
  br i1 %92, label %219, label %233

219:                                              ; preds = %217
  %220 = load i64, ptr %218, align 1, !tbaa !28
  %221 = load i64, ptr %90, align 1, !tbaa !28
  %222 = xor i64 %221, %220
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %219
  %225 = tail call i64 @llvm.cttz.i64(i64 %222, i1 true), !range !112
  %226 = lshr i64 %225, 3
  br label %280

227:                                              ; preds = %219, %269
  %228 = phi ptr [ %231, %269 ], [ %218, %219 ]
  %229 = phi ptr [ %230, %269 ], [ %90, %219 ]
  %230 = getelementptr inbounds i8, ptr %229, i64 8
  %231 = getelementptr inbounds i8, ptr %228, i64 8
  %232 = icmp ult ptr %230, %91
  br i1 %232, label %269, label %233

233:                                              ; preds = %227, %217
  %234 = phi ptr [ %218, %217 ], [ %231, %227 ]
  %235 = phi ptr [ %90, %217 ], [ %230, %227 ]
  %236 = icmp ult ptr %235, %93
  br i1 %236, label %237, label %244

237:                                              ; preds = %233
  %238 = load i32, ptr %234, align 1, !tbaa !23
  %239 = load i32, ptr %235, align 1, !tbaa !23
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = getelementptr inbounds i8, ptr %235, i64 4
  %243 = getelementptr inbounds i8, ptr %234, i64 4
  br label %244

244:                                              ; preds = %241, %237, %233
  %245 = phi ptr [ %243, %241 ], [ %234, %237 ], [ %234, %233 ]
  %246 = phi ptr [ %242, %241 ], [ %235, %237 ], [ %235, %233 ]
  %247 = icmp ult ptr %246, %94
  br i1 %247, label %248, label %255

248:                                              ; preds = %244
  %249 = load i16, ptr %245, align 1, !tbaa !113
  %250 = load i16, ptr %246, align 1, !tbaa !113
  %251 = icmp eq i16 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = getelementptr inbounds i8, ptr %246, i64 2
  %254 = getelementptr inbounds i8, ptr %245, i64 2
  br label %255

255:                                              ; preds = %252, %248, %244
  %256 = phi ptr [ %254, %252 ], [ %245, %248 ], [ %245, %244 ]
  %257 = phi ptr [ %253, %252 ], [ %246, %248 ], [ %246, %244 ]
  %258 = icmp ult ptr %257, %4
  br i1 %258, label %259, label %265

259:                                              ; preds = %255
  %260 = load i8, ptr %256, align 1, !tbaa !41
  %261 = load i8, ptr %257, align 1, !tbaa !41
  %262 = icmp eq i8 %260, %261
  %263 = zext i1 %262 to i64
  %264 = getelementptr inbounds i8, ptr %257, i64 %263
  br label %265

265:                                              ; preds = %259, %255
  %266 = phi ptr [ %257, %255 ], [ %264, %259 ]
  %267 = ptrtoint ptr %266 to i64
  %268 = sub i64 %267, %95
  br label %280

269:                                              ; preds = %227
  %270 = load i64, ptr %231, align 1, !tbaa !28
  %271 = load i64, ptr %230, align 1, !tbaa !28
  %272 = xor i64 %271, %270
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %227, label %274

274:                                              ; preds = %269
  %275 = tail call i64 @llvm.cttz.i64(i64 %272, i1 true), !range !112
  %276 = lshr i64 %275, 3
  %277 = getelementptr inbounds i8, ptr %230, i64 %276
  %278 = ptrtoint ptr %277 to i64
  %279 = sub i64 %278, %95
  br label %280

280:                                              ; preds = %274, %265, %224
  %281 = phi i64 [ %268, %265 ], [ %226, %224 ], [ %279, %274 ]
  %282 = trunc i64 %281 to i32
  %283 = add i32 %282, 4
  br label %284

284:                                              ; preds = %280, %207, %203
  %285 = phi i32 [ %283, %280 ], [ 0, %207 ], [ 0, %203 ]
  %286 = zext i32 %285 to i64
  %287 = icmp ult i64 %194, %286
  br i1 %287, label %288, label %297

288:                                              ; preds = %284
  %289 = zext nneg i32 %193 to i64
  %290 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %289
  store i32 2, ptr %290, align 4, !tbaa !45
  %291 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %289, i32 1
  store i32 %285, ptr %291, align 4, !tbaa !43
  %292 = add nuw nsw i32 %193, 1
  %293 = icmp ule i32 %285, %41
  %294 = getelementptr inbounds i8, ptr %3, i64 %286
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
  %303 = getelementptr inbounds i32, ptr %5, i64 %300
  %304 = load i32, ptr %303, align 4, !tbaa !23
  br label %308

305:                                              ; preds = %297
  %306 = load i32, ptr %5, align 4, !tbaa !23
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
  %315 = load i32, ptr %3, align 1, !tbaa !23
  %316 = zext i32 %309 to i64
  %317 = sub nsw i64 0, %316
  %318 = getelementptr inbounds i8, ptr %3, i64 %317
  %319 = load i32, ptr %318, align 1, !tbaa !23
  %320 = icmp eq i32 %315, %319
  %321 = and i1 %314, %320
  br i1 %321, label %322, label %389

322:                                              ; preds = %312
  %323 = getelementptr inbounds i8, ptr %90, i64 %317
  br i1 %92, label %324, label %338

324:                                              ; preds = %322
  %325 = load i64, ptr %323, align 1, !tbaa !28
  %326 = load i64, ptr %90, align 1, !tbaa !28
  %327 = xor i64 %326, %325
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %324
  %330 = tail call i64 @llvm.cttz.i64(i64 %327, i1 true), !range !112
  %331 = lshr i64 %330, 3
  br label %385

332:                                              ; preds = %324, %374
  %333 = phi ptr [ %336, %374 ], [ %323, %324 ]
  %334 = phi ptr [ %335, %374 ], [ %90, %324 ]
  %335 = getelementptr inbounds i8, ptr %334, i64 8
  %336 = getelementptr inbounds i8, ptr %333, i64 8
  %337 = icmp ult ptr %335, %91
  br i1 %337, label %374, label %338

338:                                              ; preds = %332, %322
  %339 = phi ptr [ %323, %322 ], [ %336, %332 ]
  %340 = phi ptr [ %90, %322 ], [ %335, %332 ]
  %341 = icmp ult ptr %340, %93
  br i1 %341, label %342, label %349

342:                                              ; preds = %338
  %343 = load i32, ptr %339, align 1, !tbaa !23
  %344 = load i32, ptr %340, align 1, !tbaa !23
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %342
  %347 = getelementptr inbounds i8, ptr %340, i64 4
  %348 = getelementptr inbounds i8, ptr %339, i64 4
  br label %349

349:                                              ; preds = %346, %342, %338
  %350 = phi ptr [ %348, %346 ], [ %339, %342 ], [ %339, %338 ]
  %351 = phi ptr [ %347, %346 ], [ %340, %342 ], [ %340, %338 ]
  %352 = icmp ult ptr %351, %94
  br i1 %352, label %353, label %360

353:                                              ; preds = %349
  %354 = load i16, ptr %350, align 1, !tbaa !113
  %355 = load i16, ptr %351, align 1, !tbaa !113
  %356 = icmp eq i16 %354, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = getelementptr inbounds i8, ptr %351, i64 2
  %359 = getelementptr inbounds i8, ptr %350, i64 2
  br label %360

360:                                              ; preds = %357, %353, %349
  %361 = phi ptr [ %359, %357 ], [ %350, %353 ], [ %350, %349 ]
  %362 = phi ptr [ %358, %357 ], [ %351, %353 ], [ %351, %349 ]
  %363 = icmp ult ptr %362, %4
  br i1 %363, label %364, label %370

364:                                              ; preds = %360
  %365 = load i8, ptr %361, align 1, !tbaa !41
  %366 = load i8, ptr %362, align 1, !tbaa !41
  %367 = icmp eq i8 %365, %366
  %368 = zext i1 %367 to i64
  %369 = getelementptr inbounds i8, ptr %362, i64 %368
  br label %370

370:                                              ; preds = %364, %360
  %371 = phi ptr [ %362, %360 ], [ %369, %364 ]
  %372 = ptrtoint ptr %371 to i64
  %373 = sub i64 %372, %95
  br label %385

374:                                              ; preds = %332
  %375 = load i64, ptr %336, align 1, !tbaa !28
  %376 = load i64, ptr %335, align 1, !tbaa !28
  %377 = xor i64 %376, %375
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %332, label %379

379:                                              ; preds = %374
  %380 = tail call i64 @llvm.cttz.i64(i64 %377, i1 true), !range !112
  %381 = lshr i64 %380, 3
  %382 = getelementptr inbounds i8, ptr %335, i64 %381
  %383 = ptrtoint ptr %382 to i64
  %384 = sub i64 %383, %95
  br label %385

385:                                              ; preds = %379, %370, %329
  %386 = phi i64 [ %373, %370 ], [ %331, %329 ], [ %384, %379 ]
  %387 = trunc i64 %386 to i32
  %388 = add i32 %387, 4
  br label %389

389:                                              ; preds = %385, %312, %308
  %390 = phi i32 [ %388, %385 ], [ 0, %312 ], [ 0, %308 ]
  %391 = zext i32 %390 to i64
  %392 = icmp ult i64 %299, %391
  br i1 %392, label %393, label %402

393:                                              ; preds = %389
  %394 = zext nneg i32 %298 to i64
  %395 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %394
  store i32 3, ptr %395, align 4, !tbaa !45
  %396 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %394, i32 1
  store i32 %390, ptr %396, align 4, !tbaa !43
  %397 = add nuw nsw i32 %298, 1
  %398 = icmp ule i32 %390, %41
  %399 = getelementptr inbounds i8, ptr %3, i64 %391
  %400 = icmp ne ptr %399, %4
  %401 = and i1 %398, %400
  br i1 %401, label %402, label %545

402:                                              ; preds = %389, %393, %35
  %403 = phi i64 [ %86, %35 ], [ %391, %393 ], [ %299, %389 ]
  %404 = phi i32 [ 0, %35 ], [ %397, %393 ], [ %298, %389 ]
  store i32 %36, ptr %51, align 4, !tbaa !23
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
  %424 = getelementptr inbounds i32, ptr %54, i64 %423
  %425 = tail call i64 @llvm.umin.i64(i64 %413, i64 %414)
  %426 = zext i32 %412 to i64
  %427 = getelementptr inbounds i8, ptr %37, i64 %426
  %428 = getelementptr inbounds i8, ptr %3, i64 %425
  %429 = getelementptr inbounds i8, ptr %427, i64 %425
  %430 = icmp ugt ptr %407, %428
  br i1 %430, label %431, label %457

431:                                              ; preds = %411
  %432 = load i64, ptr %429, align 1, !tbaa !28
  %433 = load i64, ptr %428, align 1, !tbaa !28
  %434 = xor i64 %433, %432
  %435 = icmp eq i64 %434, 0
  br i1 %435, label %439, label %436

436:                                              ; preds = %431
  %437 = tail call i64 @llvm.cttz.i64(i64 %434, i1 true), !range !112
  %438 = lshr i64 %437, 3
  br label %494

439:                                              ; preds = %431, %445
  %440 = phi ptr [ %443, %445 ], [ %429, %431 ]
  %441 = phi ptr [ %442, %445 ], [ %428, %431 ]
  %442 = getelementptr inbounds i8, ptr %441, i64 8
  %443 = getelementptr inbounds i8, ptr %440, i64 8
  %444 = icmp ult ptr %442, %407
  br i1 %444, label %445, label %457

445:                                              ; preds = %439
  %446 = load i64, ptr %443, align 1, !tbaa !28
  %447 = load i64, ptr %442, align 1, !tbaa !28
  %448 = xor i64 %447, %446
  %449 = icmp eq i64 %448, 0
  br i1 %449, label %439, label %450

450:                                              ; preds = %445
  %451 = tail call i64 @llvm.cttz.i64(i64 %448, i1 true), !range !112
  %452 = lshr i64 %451, 3
  %453 = getelementptr inbounds i8, ptr %442, i64 %452
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
  %462 = load i32, ptr %458, align 1, !tbaa !23
  %463 = load i32, ptr %459, align 1, !tbaa !23
  %464 = icmp eq i32 %462, %463
  br i1 %464, label %465, label %468

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, ptr %459, i64 4
  %467 = getelementptr inbounds i8, ptr %458, i64 4
  br label %468

468:                                              ; preds = %465, %461, %457
  %469 = phi ptr [ %467, %465 ], [ %458, %461 ], [ %458, %457 ]
  %470 = phi ptr [ %466, %465 ], [ %459, %461 ], [ %459, %457 ]
  %471 = icmp ult ptr %470, %409
  br i1 %471, label %472, label %479

472:                                              ; preds = %468
  %473 = load i16, ptr %469, align 1, !tbaa !113
  %474 = load i16, ptr %470, align 1, !tbaa !113
  %475 = icmp eq i16 %473, %474
  br i1 %475, label %476, label %479

476:                                              ; preds = %472
  %477 = getelementptr inbounds i8, ptr %470, i64 2
  %478 = getelementptr inbounds i8, ptr %469, i64 2
  br label %479

479:                                              ; preds = %476, %472, %468
  %480 = phi ptr [ %478, %476 ], [ %469, %472 ], [ %469, %468 ]
  %481 = phi ptr [ %477, %476 ], [ %470, %472 ], [ %470, %468 ]
  %482 = icmp ult ptr %481, %4
  br i1 %482, label %483, label %489

483:                                              ; preds = %479
  %484 = load i8, ptr %480, align 1, !tbaa !41
  %485 = load i8, ptr %481, align 1, !tbaa !41
  %486 = icmp eq i8 %484, %485
  %487 = zext i1 %486 to i64
  %488 = getelementptr inbounds i8, ptr %481, i64 %487
  br label %489

489:                                              ; preds = %483, %479
  %490 = phi ptr [ %481, %479 ], [ %488, %483 ]
  %491 = ptrtoint ptr %490 to i64
  %492 = ptrtoint ptr %428 to i64
  %493 = sub i64 %491, %492
  br label %494

494:                                              ; preds = %436, %450, %489
  %495 = phi i64 [ %493, %489 ], [ %438, %436 ], [ %456, %450 ]
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
  %507 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %506
  store i32 %505, ptr %507, align 4, !tbaa !45
  %508 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %506, i32 1
  store i32 %502, ptr %508, align 4, !tbaa !43
  %509 = add i32 %418, 1
  %510 = icmp ugt i64 %496, 4096
  %511 = getelementptr inbounds i8, ptr %3, i64 %496
  %512 = icmp eq ptr %511, %4
  %513 = or i1 %510, %512
  br i1 %513, label %539, label %514

514:                                              ; preds = %498, %494
  %515 = phi i64 [ %496, %498 ], [ %420, %494 ]
  %516 = phi i32 [ %509, %498 ], [ %418, %494 ]
  %517 = phi i32 [ %504, %498 ], [ %417, %494 ]
  %518 = getelementptr inbounds i8, ptr %427, i64 %496
  %519 = load i8, ptr %518, align 1, !tbaa !41
  %520 = getelementptr inbounds i8, ptr %3, i64 %496
  %521 = load i8, ptr %520, align 1, !tbaa !41
  %522 = icmp ult i8 %519, %521
  %523 = icmp ugt i32 %412, %62
  br i1 %522, label %524, label %527

524:                                              ; preds = %514
  store i32 %412, ptr %415, align 4, !tbaa !23
  br i1 %523, label %525, label %539

525:                                              ; preds = %524
  %526 = getelementptr inbounds i32, ptr %424, i64 1
  br label %528

527:                                              ; preds = %514
  store i32 %412, ptr %416, align 4, !tbaa !23
  br i1 %523, label %528, label %539

528:                                              ; preds = %527, %525
  %529 = phi ptr [ %416, %525 ], [ %424, %527 ]
  %530 = phi ptr [ %526, %525 ], [ %415, %527 ]
  %531 = phi i64 [ %414, %525 ], [ %496, %527 ]
  %532 = phi i64 [ %496, %525 ], [ %413, %527 ]
  %533 = phi ptr [ %526, %525 ], [ %424, %527 ]
  %534 = load i32, ptr %533, align 4, !tbaa !23
  %535 = add i32 %419, -1
  %536 = icmp ne i32 %535, 0
  %537 = icmp uge i32 %534, %75
  %538 = select i1 %536, i1 %537, i1 false
  br i1 %538, label %411, label %539, !llvm.loop !137

539:                                              ; preds = %528, %524, %527, %498, %402
  %540 = phi i32 [ %404, %402 ], [ %509, %498 ], [ %516, %527 ], [ %516, %524 ], [ %516, %528 ]
  %541 = phi i32 [ %81, %402 ], [ %504, %498 ], [ %517, %527 ], [ %517, %524 ], [ %517, %528 ]
  %542 = phi ptr [ %80, %402 ], [ %416, %498 ], [ %9, %527 ], [ %416, %524 ], [ %529, %528 ]
  %543 = phi ptr [ %79, %402 ], [ %415, %498 ], [ %415, %527 ], [ %9, %524 ], [ %530, %528 ]
  store i32 0, ptr %542, align 4, !tbaa !23
  store i32 0, ptr %543, align 4, !tbaa !23
  %544 = add i32 %541, -8
  store i32 %544, ptr %12, align 4, !tbaa !16
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
define internal i32 @ZSTD_btGetAllMatches_noDict_5(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %15, %3
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
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 5, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !17

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !15
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !16
  %38 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !22
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !104
  %46 = load i64, ptr %3, align 1
  %47 = mul i64 %46, -3523014627271114752
  %48 = sub i32 64, %43
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = getelementptr inbounds i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !23
  %53 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !107
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !19
  %62 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %63 = load i32, ptr %38, align 4, !tbaa !109
  %64 = getelementptr i8, ptr %1, i64 28
  %65 = load i32, ptr %64, align 4, !tbaa !103
  %66 = getelementptr i8, ptr %1, i64 40
  %67 = load i32, ptr %66, align 8, !tbaa !110
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
  %79 = getelementptr inbounds i32, ptr %54, i64 %78
  %80 = getelementptr inbounds i32, ptr %79, i64 1
  %81 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %82 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !111
  %84 = shl nuw i32 1, %83
  %85 = add i32 %7, -1
  %86 = zext i32 %85 to i64
  %87 = icmp ult i32 %6, -3
  %88 = trunc i64 %46 to i32
  br i1 %87, label %89, label %403

89:                                               ; preds = %35
  %90 = sub i32 %36, %61
  %91 = getelementptr inbounds i8, ptr %3, i64 4
  %92 = getelementptr inbounds i8, ptr %4, i64 -7
  %93 = icmp ugt ptr %92, %91
  %94 = getelementptr inbounds i8, ptr %4, i64 -3
  %95 = getelementptr inbounds i8, ptr %4, i64 -1
  %96 = ptrtoint ptr %91 to i64
  %97 = zext i32 %6 to i64
  %98 = icmp eq i32 %6, 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, ptr %5, align 4, !tbaa !23
  %101 = add i32 %100, -1
  br label %105

102:                                              ; preds = %89
  %103 = getelementptr inbounds i32, ptr %5, i64 %97
  %104 = load i32, ptr %103, align 4, !tbaa !23
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
  %115 = load i32, ptr %114, align 1, !tbaa !23
  %116 = icmp eq i32 %115, %88
  %117 = and i1 %111, %116
  br i1 %117, label %118, label %193

118:                                              ; preds = %109
  %119 = getelementptr inbounds i8, ptr %91, i64 %113
  br i1 %93, label %120, label %145

120:                                              ; preds = %118
  %121 = load i64, ptr %119, align 1, !tbaa !28
  %122 = load i64, ptr %91, align 1, !tbaa !28
  %123 = xor i64 %122, %121
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = tail call i64 @llvm.cttz.i64(i64 %123, i1 true), !range !112
  %127 = lshr i64 %126, 3
  br label %181

128:                                              ; preds = %120, %134
  %129 = phi ptr [ %132, %134 ], [ %119, %120 ]
  %130 = phi ptr [ %131, %134 ], [ %91, %120 ]
  %131 = getelementptr inbounds i8, ptr %130, i64 8
  %132 = getelementptr inbounds i8, ptr %129, i64 8
  %133 = icmp ult ptr %131, %92
  br i1 %133, label %134, label %145

134:                                              ; preds = %128
  %135 = load i64, ptr %132, align 1, !tbaa !28
  %136 = load i64, ptr %131, align 1, !tbaa !28
  %137 = xor i64 %136, %135
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %128, label %139

139:                                              ; preds = %134
  %140 = tail call i64 @llvm.cttz.i64(i64 %137, i1 true), !range !112
  %141 = lshr i64 %140, 3
  %142 = getelementptr inbounds i8, ptr %131, i64 %141
  %143 = ptrtoint ptr %142 to i64
  %144 = sub i64 %143, %96
  br label %181

145:                                              ; preds = %128, %118
  %146 = phi ptr [ %119, %118 ], [ %132, %128 ]
  %147 = phi ptr [ %91, %118 ], [ %131, %128 ]
  %148 = icmp ult ptr %147, %94
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i32, ptr %146, align 1, !tbaa !23
  %151 = load i32, ptr %147, align 1, !tbaa !23
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = getelementptr inbounds i8, ptr %147, i64 4
  %155 = getelementptr inbounds i8, ptr %146, i64 4
  br label %156

156:                                              ; preds = %153, %149, %145
  %157 = phi ptr [ %155, %153 ], [ %146, %149 ], [ %146, %145 ]
  %158 = phi ptr [ %154, %153 ], [ %147, %149 ], [ %147, %145 ]
  %159 = icmp ult ptr %158, %95
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i16, ptr %157, align 1, !tbaa !113
  %162 = load i16, ptr %158, align 1, !tbaa !113
  %163 = icmp eq i16 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = getelementptr inbounds i8, ptr %158, i64 2
  %166 = getelementptr inbounds i8, ptr %157, i64 2
  br label %167

167:                                              ; preds = %164, %160, %156
  %168 = phi ptr [ %166, %164 ], [ %157, %160 ], [ %157, %156 ]
  %169 = phi ptr [ %165, %164 ], [ %158, %160 ], [ %158, %156 ]
  %170 = icmp ult ptr %169, %4
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = load i8, ptr %168, align 1, !tbaa !41
  %173 = load i8, ptr %169, align 1, !tbaa !41
  %174 = icmp eq i8 %172, %173
  %175 = zext i1 %174 to i64
  %176 = getelementptr inbounds i8, ptr %169, i64 %175
  br label %177

177:                                              ; preds = %171, %167
  %178 = phi ptr [ %169, %167 ], [ %176, %171 ]
  %179 = ptrtoint ptr %178 to i64
  %180 = sub i64 %179, %96
  br label %181

181:                                              ; preds = %177, %139, %125
  %182 = phi i64 [ %180, %177 ], [ %127, %125 ], [ %144, %139 ]
  %183 = trunc i64 %182 to i32
  %184 = add i32 %183, 4
  %185 = icmp ult i32 %85, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = zext i32 %184 to i64
  store i32 1, ptr %0, align 4, !tbaa !45
  %188 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %184, ptr %188, align 4, !tbaa !43
  %189 = icmp ule i32 %184, %41
  %190 = getelementptr inbounds i8, ptr %3, i64 %187
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
  %199 = getelementptr inbounds i32, ptr %5, i64 %196
  %200 = load i32, ptr %199, align 4, !tbaa !23
  br label %204

201:                                              ; preds = %193
  %202 = load i32, ptr %5, align 4, !tbaa !23
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
  %211 = load i32, ptr %3, align 1, !tbaa !23
  %212 = zext i32 %205 to i64
  %213 = sub nsw i64 0, %212
  %214 = getelementptr inbounds i8, ptr %3, i64 %213
  %215 = load i32, ptr %214, align 1, !tbaa !23
  %216 = icmp eq i32 %211, %215
  %217 = and i1 %210, %216
  br i1 %217, label %218, label %285

218:                                              ; preds = %208
  %219 = getelementptr inbounds i8, ptr %91, i64 %213
  br i1 %93, label %220, label %234

220:                                              ; preds = %218
  %221 = load i64, ptr %219, align 1, !tbaa !28
  %222 = load i64, ptr %91, align 1, !tbaa !28
  %223 = xor i64 %222, %221
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %220
  %226 = tail call i64 @llvm.cttz.i64(i64 %223, i1 true), !range !112
  %227 = lshr i64 %226, 3
  br label %281

228:                                              ; preds = %220, %270
  %229 = phi ptr [ %232, %270 ], [ %219, %220 ]
  %230 = phi ptr [ %231, %270 ], [ %91, %220 ]
  %231 = getelementptr inbounds i8, ptr %230, i64 8
  %232 = getelementptr inbounds i8, ptr %229, i64 8
  %233 = icmp ult ptr %231, %92
  br i1 %233, label %270, label %234

234:                                              ; preds = %228, %218
  %235 = phi ptr [ %219, %218 ], [ %232, %228 ]
  %236 = phi ptr [ %91, %218 ], [ %231, %228 ]
  %237 = icmp ult ptr %236, %94
  br i1 %237, label %238, label %245

238:                                              ; preds = %234
  %239 = load i32, ptr %235, align 1, !tbaa !23
  %240 = load i32, ptr %236, align 1, !tbaa !23
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = getelementptr inbounds i8, ptr %236, i64 4
  %244 = getelementptr inbounds i8, ptr %235, i64 4
  br label %245

245:                                              ; preds = %242, %238, %234
  %246 = phi ptr [ %244, %242 ], [ %235, %238 ], [ %235, %234 ]
  %247 = phi ptr [ %243, %242 ], [ %236, %238 ], [ %236, %234 ]
  %248 = icmp ult ptr %247, %95
  br i1 %248, label %249, label %256

249:                                              ; preds = %245
  %250 = load i16, ptr %246, align 1, !tbaa !113
  %251 = load i16, ptr %247, align 1, !tbaa !113
  %252 = icmp eq i16 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = getelementptr inbounds i8, ptr %247, i64 2
  %255 = getelementptr inbounds i8, ptr %246, i64 2
  br label %256

256:                                              ; preds = %253, %249, %245
  %257 = phi ptr [ %255, %253 ], [ %246, %249 ], [ %246, %245 ]
  %258 = phi ptr [ %254, %253 ], [ %247, %249 ], [ %247, %245 ]
  %259 = icmp ult ptr %258, %4
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load i8, ptr %257, align 1, !tbaa !41
  %262 = load i8, ptr %258, align 1, !tbaa !41
  %263 = icmp eq i8 %261, %262
  %264 = zext i1 %263 to i64
  %265 = getelementptr inbounds i8, ptr %258, i64 %264
  br label %266

266:                                              ; preds = %260, %256
  %267 = phi ptr [ %258, %256 ], [ %265, %260 ]
  %268 = ptrtoint ptr %267 to i64
  %269 = sub i64 %268, %96
  br label %281

270:                                              ; preds = %228
  %271 = load i64, ptr %232, align 1, !tbaa !28
  %272 = load i64, ptr %231, align 1, !tbaa !28
  %273 = xor i64 %272, %271
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %228, label %275

275:                                              ; preds = %270
  %276 = tail call i64 @llvm.cttz.i64(i64 %273, i1 true), !range !112
  %277 = lshr i64 %276, 3
  %278 = getelementptr inbounds i8, ptr %231, i64 %277
  %279 = ptrtoint ptr %278 to i64
  %280 = sub i64 %279, %96
  br label %281

281:                                              ; preds = %275, %266, %225
  %282 = phi i64 [ %269, %266 ], [ %227, %225 ], [ %280, %275 ]
  %283 = trunc i64 %282 to i32
  %284 = add i32 %283, 4
  br label %285

285:                                              ; preds = %281, %208, %204
  %286 = phi i32 [ %284, %281 ], [ 0, %208 ], [ 0, %204 ]
  %287 = zext i32 %286 to i64
  %288 = icmp ult i64 %195, %287
  br i1 %288, label %289, label %298

289:                                              ; preds = %285
  %290 = zext nneg i32 %194 to i64
  %291 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %290
  store i32 2, ptr %291, align 4, !tbaa !45
  %292 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %290, i32 1
  store i32 %286, ptr %292, align 4, !tbaa !43
  %293 = add nuw nsw i32 %194, 1
  %294 = icmp ule i32 %286, %41
  %295 = getelementptr inbounds i8, ptr %3, i64 %287
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
  %304 = getelementptr inbounds i32, ptr %5, i64 %301
  %305 = load i32, ptr %304, align 4, !tbaa !23
  br label %309

306:                                              ; preds = %298
  %307 = load i32, ptr %5, align 4, !tbaa !23
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
  %316 = load i32, ptr %3, align 1, !tbaa !23
  %317 = zext i32 %310 to i64
  %318 = sub nsw i64 0, %317
  %319 = getelementptr inbounds i8, ptr %3, i64 %318
  %320 = load i32, ptr %319, align 1, !tbaa !23
  %321 = icmp eq i32 %316, %320
  %322 = and i1 %315, %321
  br i1 %322, label %323, label %390

323:                                              ; preds = %313
  %324 = getelementptr inbounds i8, ptr %91, i64 %318
  br i1 %93, label %325, label %339

325:                                              ; preds = %323
  %326 = load i64, ptr %324, align 1, !tbaa !28
  %327 = load i64, ptr %91, align 1, !tbaa !28
  %328 = xor i64 %327, %326
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %333, label %330

330:                                              ; preds = %325
  %331 = tail call i64 @llvm.cttz.i64(i64 %328, i1 true), !range !112
  %332 = lshr i64 %331, 3
  br label %386

333:                                              ; preds = %325, %375
  %334 = phi ptr [ %337, %375 ], [ %324, %325 ]
  %335 = phi ptr [ %336, %375 ], [ %91, %325 ]
  %336 = getelementptr inbounds i8, ptr %335, i64 8
  %337 = getelementptr inbounds i8, ptr %334, i64 8
  %338 = icmp ult ptr %336, %92
  br i1 %338, label %375, label %339

339:                                              ; preds = %333, %323
  %340 = phi ptr [ %324, %323 ], [ %337, %333 ]
  %341 = phi ptr [ %91, %323 ], [ %336, %333 ]
  %342 = icmp ult ptr %341, %94
  br i1 %342, label %343, label %350

343:                                              ; preds = %339
  %344 = load i32, ptr %340, align 1, !tbaa !23
  %345 = load i32, ptr %341, align 1, !tbaa !23
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %343
  %348 = getelementptr inbounds i8, ptr %341, i64 4
  %349 = getelementptr inbounds i8, ptr %340, i64 4
  br label %350

350:                                              ; preds = %347, %343, %339
  %351 = phi ptr [ %349, %347 ], [ %340, %343 ], [ %340, %339 ]
  %352 = phi ptr [ %348, %347 ], [ %341, %343 ], [ %341, %339 ]
  %353 = icmp ult ptr %352, %95
  br i1 %353, label %354, label %361

354:                                              ; preds = %350
  %355 = load i16, ptr %351, align 1, !tbaa !113
  %356 = load i16, ptr %352, align 1, !tbaa !113
  %357 = icmp eq i16 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = getelementptr inbounds i8, ptr %352, i64 2
  %360 = getelementptr inbounds i8, ptr %351, i64 2
  br label %361

361:                                              ; preds = %358, %354, %350
  %362 = phi ptr [ %360, %358 ], [ %351, %354 ], [ %351, %350 ]
  %363 = phi ptr [ %359, %358 ], [ %352, %354 ], [ %352, %350 ]
  %364 = icmp ult ptr %363, %4
  br i1 %364, label %365, label %371

365:                                              ; preds = %361
  %366 = load i8, ptr %362, align 1, !tbaa !41
  %367 = load i8, ptr %363, align 1, !tbaa !41
  %368 = icmp eq i8 %366, %367
  %369 = zext i1 %368 to i64
  %370 = getelementptr inbounds i8, ptr %363, i64 %369
  br label %371

371:                                              ; preds = %365, %361
  %372 = phi ptr [ %363, %361 ], [ %370, %365 ]
  %373 = ptrtoint ptr %372 to i64
  %374 = sub i64 %373, %96
  br label %386

375:                                              ; preds = %333
  %376 = load i64, ptr %337, align 1, !tbaa !28
  %377 = load i64, ptr %336, align 1, !tbaa !28
  %378 = xor i64 %377, %376
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %333, label %380

380:                                              ; preds = %375
  %381 = tail call i64 @llvm.cttz.i64(i64 %378, i1 true), !range !112
  %382 = lshr i64 %381, 3
  %383 = getelementptr inbounds i8, ptr %336, i64 %382
  %384 = ptrtoint ptr %383 to i64
  %385 = sub i64 %384, %96
  br label %386

386:                                              ; preds = %380, %371, %330
  %387 = phi i64 [ %374, %371 ], [ %332, %330 ], [ %385, %380 ]
  %388 = trunc i64 %387 to i32
  %389 = add i32 %388, 4
  br label %390

390:                                              ; preds = %386, %313, %309
  %391 = phi i32 [ %389, %386 ], [ 0, %313 ], [ 0, %309 ]
  %392 = zext i32 %391 to i64
  %393 = icmp ult i64 %300, %392
  br i1 %393, label %394, label %403

394:                                              ; preds = %390
  %395 = zext nneg i32 %299 to i64
  %396 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %395
  store i32 3, ptr %396, align 4, !tbaa !45
  %397 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %395, i32 1
  store i32 %391, ptr %397, align 4, !tbaa !43
  %398 = add nuw nsw i32 %299, 1
  %399 = icmp ule i32 %391, %41
  %400 = getelementptr inbounds i8, ptr %3, i64 %392
  %401 = icmp ne ptr %400, %4
  %402 = and i1 %399, %401
  br i1 %402, label %403, label %546

403:                                              ; preds = %390, %394, %35
  %404 = phi i64 [ %86, %35 ], [ %392, %394 ], [ %300, %390 ]
  %405 = phi i32 [ 0, %35 ], [ %398, %394 ], [ %299, %390 ]
  store i32 %36, ptr %51, align 4, !tbaa !23
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
  %425 = getelementptr inbounds i32, ptr %54, i64 %424
  %426 = tail call i64 @llvm.umin.i64(i64 %414, i64 %415)
  %427 = zext i32 %413 to i64
  %428 = getelementptr inbounds i8, ptr %37, i64 %427
  %429 = getelementptr inbounds i8, ptr %3, i64 %426
  %430 = getelementptr inbounds i8, ptr %428, i64 %426
  %431 = icmp ugt ptr %408, %429
  br i1 %431, label %432, label %458

432:                                              ; preds = %412
  %433 = load i64, ptr %430, align 1, !tbaa !28
  %434 = load i64, ptr %429, align 1, !tbaa !28
  %435 = xor i64 %434, %433
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %432
  %438 = tail call i64 @llvm.cttz.i64(i64 %435, i1 true), !range !112
  %439 = lshr i64 %438, 3
  br label %495

440:                                              ; preds = %432, %446
  %441 = phi ptr [ %444, %446 ], [ %430, %432 ]
  %442 = phi ptr [ %443, %446 ], [ %429, %432 ]
  %443 = getelementptr inbounds i8, ptr %442, i64 8
  %444 = getelementptr inbounds i8, ptr %441, i64 8
  %445 = icmp ult ptr %443, %408
  br i1 %445, label %446, label %458

446:                                              ; preds = %440
  %447 = load i64, ptr %444, align 1, !tbaa !28
  %448 = load i64, ptr %443, align 1, !tbaa !28
  %449 = xor i64 %448, %447
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %440, label %451

451:                                              ; preds = %446
  %452 = tail call i64 @llvm.cttz.i64(i64 %449, i1 true), !range !112
  %453 = lshr i64 %452, 3
  %454 = getelementptr inbounds i8, ptr %443, i64 %453
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
  %463 = load i32, ptr %459, align 1, !tbaa !23
  %464 = load i32, ptr %460, align 1, !tbaa !23
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %466, label %469

466:                                              ; preds = %462
  %467 = getelementptr inbounds i8, ptr %460, i64 4
  %468 = getelementptr inbounds i8, ptr %459, i64 4
  br label %469

469:                                              ; preds = %466, %462, %458
  %470 = phi ptr [ %468, %466 ], [ %459, %462 ], [ %459, %458 ]
  %471 = phi ptr [ %467, %466 ], [ %460, %462 ], [ %460, %458 ]
  %472 = icmp ult ptr %471, %410
  br i1 %472, label %473, label %480

473:                                              ; preds = %469
  %474 = load i16, ptr %470, align 1, !tbaa !113
  %475 = load i16, ptr %471, align 1, !tbaa !113
  %476 = icmp eq i16 %474, %475
  br i1 %476, label %477, label %480

477:                                              ; preds = %473
  %478 = getelementptr inbounds i8, ptr %471, i64 2
  %479 = getelementptr inbounds i8, ptr %470, i64 2
  br label %480

480:                                              ; preds = %477, %473, %469
  %481 = phi ptr [ %479, %477 ], [ %470, %473 ], [ %470, %469 ]
  %482 = phi ptr [ %478, %477 ], [ %471, %473 ], [ %471, %469 ]
  %483 = icmp ult ptr %482, %4
  br i1 %483, label %484, label %490

484:                                              ; preds = %480
  %485 = load i8, ptr %481, align 1, !tbaa !41
  %486 = load i8, ptr %482, align 1, !tbaa !41
  %487 = icmp eq i8 %485, %486
  %488 = zext i1 %487 to i64
  %489 = getelementptr inbounds i8, ptr %482, i64 %488
  br label %490

490:                                              ; preds = %484, %480
  %491 = phi ptr [ %482, %480 ], [ %489, %484 ]
  %492 = ptrtoint ptr %491 to i64
  %493 = ptrtoint ptr %429 to i64
  %494 = sub i64 %492, %493
  br label %495

495:                                              ; preds = %437, %451, %490
  %496 = phi i64 [ %494, %490 ], [ %439, %437 ], [ %457, %451 ]
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
  %508 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %507
  store i32 %506, ptr %508, align 4, !tbaa !45
  %509 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %507, i32 1
  store i32 %503, ptr %509, align 4, !tbaa !43
  %510 = add i32 %419, 1
  %511 = icmp ugt i64 %497, 4096
  %512 = getelementptr inbounds i8, ptr %3, i64 %497
  %513 = icmp eq ptr %512, %4
  %514 = or i1 %511, %513
  br i1 %514, label %540, label %515

515:                                              ; preds = %499, %495
  %516 = phi i64 [ %497, %499 ], [ %421, %495 ]
  %517 = phi i32 [ %510, %499 ], [ %419, %495 ]
  %518 = phi i32 [ %505, %499 ], [ %418, %495 ]
  %519 = getelementptr inbounds i8, ptr %428, i64 %497
  %520 = load i8, ptr %519, align 1, !tbaa !41
  %521 = getelementptr inbounds i8, ptr %3, i64 %497
  %522 = load i8, ptr %521, align 1, !tbaa !41
  %523 = icmp ult i8 %520, %522
  %524 = icmp ugt i32 %413, %62
  br i1 %523, label %525, label %528

525:                                              ; preds = %515
  store i32 %413, ptr %416, align 4, !tbaa !23
  br i1 %524, label %526, label %540

526:                                              ; preds = %525
  %527 = getelementptr inbounds i32, ptr %425, i64 1
  br label %529

528:                                              ; preds = %515
  store i32 %413, ptr %417, align 4, !tbaa !23
  br i1 %524, label %529, label %540

529:                                              ; preds = %528, %526
  %530 = phi ptr [ %417, %526 ], [ %425, %528 ]
  %531 = phi ptr [ %527, %526 ], [ %416, %528 ]
  %532 = phi i64 [ %415, %526 ], [ %497, %528 ]
  %533 = phi i64 [ %497, %526 ], [ %414, %528 ]
  %534 = phi ptr [ %527, %526 ], [ %425, %528 ]
  %535 = load i32, ptr %534, align 4, !tbaa !23
  %536 = add i32 %420, -1
  %537 = icmp ne i32 %536, 0
  %538 = icmp uge i32 %535, %75
  %539 = select i1 %537, i1 %538, i1 false
  br i1 %539, label %412, label %540, !llvm.loop !137

540:                                              ; preds = %529, %525, %528, %499, %403
  %541 = phi i32 [ %405, %403 ], [ %510, %499 ], [ %517, %528 ], [ %517, %525 ], [ %517, %529 ]
  %542 = phi i32 [ %81, %403 ], [ %505, %499 ], [ %518, %528 ], [ %518, %525 ], [ %518, %529 ]
  %543 = phi ptr [ %80, %403 ], [ %417, %499 ], [ %9, %528 ], [ %417, %525 ], [ %530, %529 ]
  %544 = phi ptr [ %79, %403 ], [ %416, %499 ], [ %416, %528 ], [ %9, %525 ], [ %531, %529 ]
  store i32 0, ptr %543, align 4, !tbaa !23
  store i32 0, ptr %544, align 4, !tbaa !23
  %545 = add i32 %542, -8
  store i32 %545, ptr %12, align 4, !tbaa !16
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
define internal i32 @ZSTD_btGetAllMatches_noDict_6(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %15, %3
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
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 6, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !17

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !15
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !16
  %38 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !22
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !104
  %46 = load i64, ptr %3, align 1
  %47 = mul i64 %46, -3523014627193847808
  %48 = sub i32 64, %43
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = getelementptr inbounds i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !23
  %53 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !107
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !19
  %62 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %63 = load i32, ptr %38, align 4, !tbaa !109
  %64 = getelementptr i8, ptr %1, i64 28
  %65 = load i32, ptr %64, align 4, !tbaa !103
  %66 = getelementptr i8, ptr %1, i64 40
  %67 = load i32, ptr %66, align 8, !tbaa !110
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
  %79 = getelementptr inbounds i32, ptr %54, i64 %78
  %80 = getelementptr inbounds i32, ptr %79, i64 1
  %81 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %82 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !111
  %84 = shl nuw i32 1, %83
  %85 = add i32 %7, -1
  %86 = zext i32 %85 to i64
  %87 = icmp ult i32 %6, -3
  %88 = trunc i64 %46 to i32
  br i1 %87, label %89, label %403

89:                                               ; preds = %35
  %90 = sub i32 %36, %61
  %91 = getelementptr inbounds i8, ptr %3, i64 4
  %92 = getelementptr inbounds i8, ptr %4, i64 -7
  %93 = icmp ugt ptr %92, %91
  %94 = getelementptr inbounds i8, ptr %4, i64 -3
  %95 = getelementptr inbounds i8, ptr %4, i64 -1
  %96 = ptrtoint ptr %91 to i64
  %97 = zext i32 %6 to i64
  %98 = icmp eq i32 %6, 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, ptr %5, align 4, !tbaa !23
  %101 = add i32 %100, -1
  br label %105

102:                                              ; preds = %89
  %103 = getelementptr inbounds i32, ptr %5, i64 %97
  %104 = load i32, ptr %103, align 4, !tbaa !23
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
  %115 = load i32, ptr %114, align 1, !tbaa !23
  %116 = icmp eq i32 %115, %88
  %117 = and i1 %111, %116
  br i1 %117, label %118, label %193

118:                                              ; preds = %109
  %119 = getelementptr inbounds i8, ptr %91, i64 %113
  br i1 %93, label %120, label %145

120:                                              ; preds = %118
  %121 = load i64, ptr %119, align 1, !tbaa !28
  %122 = load i64, ptr %91, align 1, !tbaa !28
  %123 = xor i64 %122, %121
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = tail call i64 @llvm.cttz.i64(i64 %123, i1 true), !range !112
  %127 = lshr i64 %126, 3
  br label %181

128:                                              ; preds = %120, %134
  %129 = phi ptr [ %132, %134 ], [ %119, %120 ]
  %130 = phi ptr [ %131, %134 ], [ %91, %120 ]
  %131 = getelementptr inbounds i8, ptr %130, i64 8
  %132 = getelementptr inbounds i8, ptr %129, i64 8
  %133 = icmp ult ptr %131, %92
  br i1 %133, label %134, label %145

134:                                              ; preds = %128
  %135 = load i64, ptr %132, align 1, !tbaa !28
  %136 = load i64, ptr %131, align 1, !tbaa !28
  %137 = xor i64 %136, %135
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %128, label %139

139:                                              ; preds = %134
  %140 = tail call i64 @llvm.cttz.i64(i64 %137, i1 true), !range !112
  %141 = lshr i64 %140, 3
  %142 = getelementptr inbounds i8, ptr %131, i64 %141
  %143 = ptrtoint ptr %142 to i64
  %144 = sub i64 %143, %96
  br label %181

145:                                              ; preds = %128, %118
  %146 = phi ptr [ %119, %118 ], [ %132, %128 ]
  %147 = phi ptr [ %91, %118 ], [ %131, %128 ]
  %148 = icmp ult ptr %147, %94
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i32, ptr %146, align 1, !tbaa !23
  %151 = load i32, ptr %147, align 1, !tbaa !23
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = getelementptr inbounds i8, ptr %147, i64 4
  %155 = getelementptr inbounds i8, ptr %146, i64 4
  br label %156

156:                                              ; preds = %153, %149, %145
  %157 = phi ptr [ %155, %153 ], [ %146, %149 ], [ %146, %145 ]
  %158 = phi ptr [ %154, %153 ], [ %147, %149 ], [ %147, %145 ]
  %159 = icmp ult ptr %158, %95
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i16, ptr %157, align 1, !tbaa !113
  %162 = load i16, ptr %158, align 1, !tbaa !113
  %163 = icmp eq i16 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = getelementptr inbounds i8, ptr %158, i64 2
  %166 = getelementptr inbounds i8, ptr %157, i64 2
  br label %167

167:                                              ; preds = %164, %160, %156
  %168 = phi ptr [ %166, %164 ], [ %157, %160 ], [ %157, %156 ]
  %169 = phi ptr [ %165, %164 ], [ %158, %160 ], [ %158, %156 ]
  %170 = icmp ult ptr %169, %4
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = load i8, ptr %168, align 1, !tbaa !41
  %173 = load i8, ptr %169, align 1, !tbaa !41
  %174 = icmp eq i8 %172, %173
  %175 = zext i1 %174 to i64
  %176 = getelementptr inbounds i8, ptr %169, i64 %175
  br label %177

177:                                              ; preds = %171, %167
  %178 = phi ptr [ %169, %167 ], [ %176, %171 ]
  %179 = ptrtoint ptr %178 to i64
  %180 = sub i64 %179, %96
  br label %181

181:                                              ; preds = %177, %139, %125
  %182 = phi i64 [ %180, %177 ], [ %127, %125 ], [ %144, %139 ]
  %183 = trunc i64 %182 to i32
  %184 = add i32 %183, 4
  %185 = icmp ult i32 %85, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = zext i32 %184 to i64
  store i32 1, ptr %0, align 4, !tbaa !45
  %188 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %184, ptr %188, align 4, !tbaa !43
  %189 = icmp ule i32 %184, %41
  %190 = getelementptr inbounds i8, ptr %3, i64 %187
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
  %199 = getelementptr inbounds i32, ptr %5, i64 %196
  %200 = load i32, ptr %199, align 4, !tbaa !23
  br label %204

201:                                              ; preds = %193
  %202 = load i32, ptr %5, align 4, !tbaa !23
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
  %211 = load i32, ptr %3, align 1, !tbaa !23
  %212 = zext i32 %205 to i64
  %213 = sub nsw i64 0, %212
  %214 = getelementptr inbounds i8, ptr %3, i64 %213
  %215 = load i32, ptr %214, align 1, !tbaa !23
  %216 = icmp eq i32 %211, %215
  %217 = and i1 %210, %216
  br i1 %217, label %218, label %285

218:                                              ; preds = %208
  %219 = getelementptr inbounds i8, ptr %91, i64 %213
  br i1 %93, label %220, label %234

220:                                              ; preds = %218
  %221 = load i64, ptr %219, align 1, !tbaa !28
  %222 = load i64, ptr %91, align 1, !tbaa !28
  %223 = xor i64 %222, %221
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %220
  %226 = tail call i64 @llvm.cttz.i64(i64 %223, i1 true), !range !112
  %227 = lshr i64 %226, 3
  br label %281

228:                                              ; preds = %220, %270
  %229 = phi ptr [ %232, %270 ], [ %219, %220 ]
  %230 = phi ptr [ %231, %270 ], [ %91, %220 ]
  %231 = getelementptr inbounds i8, ptr %230, i64 8
  %232 = getelementptr inbounds i8, ptr %229, i64 8
  %233 = icmp ult ptr %231, %92
  br i1 %233, label %270, label %234

234:                                              ; preds = %228, %218
  %235 = phi ptr [ %219, %218 ], [ %232, %228 ]
  %236 = phi ptr [ %91, %218 ], [ %231, %228 ]
  %237 = icmp ult ptr %236, %94
  br i1 %237, label %238, label %245

238:                                              ; preds = %234
  %239 = load i32, ptr %235, align 1, !tbaa !23
  %240 = load i32, ptr %236, align 1, !tbaa !23
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = getelementptr inbounds i8, ptr %236, i64 4
  %244 = getelementptr inbounds i8, ptr %235, i64 4
  br label %245

245:                                              ; preds = %242, %238, %234
  %246 = phi ptr [ %244, %242 ], [ %235, %238 ], [ %235, %234 ]
  %247 = phi ptr [ %243, %242 ], [ %236, %238 ], [ %236, %234 ]
  %248 = icmp ult ptr %247, %95
  br i1 %248, label %249, label %256

249:                                              ; preds = %245
  %250 = load i16, ptr %246, align 1, !tbaa !113
  %251 = load i16, ptr %247, align 1, !tbaa !113
  %252 = icmp eq i16 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = getelementptr inbounds i8, ptr %247, i64 2
  %255 = getelementptr inbounds i8, ptr %246, i64 2
  br label %256

256:                                              ; preds = %253, %249, %245
  %257 = phi ptr [ %255, %253 ], [ %246, %249 ], [ %246, %245 ]
  %258 = phi ptr [ %254, %253 ], [ %247, %249 ], [ %247, %245 ]
  %259 = icmp ult ptr %258, %4
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load i8, ptr %257, align 1, !tbaa !41
  %262 = load i8, ptr %258, align 1, !tbaa !41
  %263 = icmp eq i8 %261, %262
  %264 = zext i1 %263 to i64
  %265 = getelementptr inbounds i8, ptr %258, i64 %264
  br label %266

266:                                              ; preds = %260, %256
  %267 = phi ptr [ %258, %256 ], [ %265, %260 ]
  %268 = ptrtoint ptr %267 to i64
  %269 = sub i64 %268, %96
  br label %281

270:                                              ; preds = %228
  %271 = load i64, ptr %232, align 1, !tbaa !28
  %272 = load i64, ptr %231, align 1, !tbaa !28
  %273 = xor i64 %272, %271
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %228, label %275

275:                                              ; preds = %270
  %276 = tail call i64 @llvm.cttz.i64(i64 %273, i1 true), !range !112
  %277 = lshr i64 %276, 3
  %278 = getelementptr inbounds i8, ptr %231, i64 %277
  %279 = ptrtoint ptr %278 to i64
  %280 = sub i64 %279, %96
  br label %281

281:                                              ; preds = %275, %266, %225
  %282 = phi i64 [ %269, %266 ], [ %227, %225 ], [ %280, %275 ]
  %283 = trunc i64 %282 to i32
  %284 = add i32 %283, 4
  br label %285

285:                                              ; preds = %281, %208, %204
  %286 = phi i32 [ %284, %281 ], [ 0, %208 ], [ 0, %204 ]
  %287 = zext i32 %286 to i64
  %288 = icmp ult i64 %195, %287
  br i1 %288, label %289, label %298

289:                                              ; preds = %285
  %290 = zext nneg i32 %194 to i64
  %291 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %290
  store i32 2, ptr %291, align 4, !tbaa !45
  %292 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %290, i32 1
  store i32 %286, ptr %292, align 4, !tbaa !43
  %293 = add nuw nsw i32 %194, 1
  %294 = icmp ule i32 %286, %41
  %295 = getelementptr inbounds i8, ptr %3, i64 %287
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
  %304 = getelementptr inbounds i32, ptr %5, i64 %301
  %305 = load i32, ptr %304, align 4, !tbaa !23
  br label %309

306:                                              ; preds = %298
  %307 = load i32, ptr %5, align 4, !tbaa !23
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
  %316 = load i32, ptr %3, align 1, !tbaa !23
  %317 = zext i32 %310 to i64
  %318 = sub nsw i64 0, %317
  %319 = getelementptr inbounds i8, ptr %3, i64 %318
  %320 = load i32, ptr %319, align 1, !tbaa !23
  %321 = icmp eq i32 %316, %320
  %322 = and i1 %315, %321
  br i1 %322, label %323, label %390

323:                                              ; preds = %313
  %324 = getelementptr inbounds i8, ptr %91, i64 %318
  br i1 %93, label %325, label %339

325:                                              ; preds = %323
  %326 = load i64, ptr %324, align 1, !tbaa !28
  %327 = load i64, ptr %91, align 1, !tbaa !28
  %328 = xor i64 %327, %326
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %333, label %330

330:                                              ; preds = %325
  %331 = tail call i64 @llvm.cttz.i64(i64 %328, i1 true), !range !112
  %332 = lshr i64 %331, 3
  br label %386

333:                                              ; preds = %325, %375
  %334 = phi ptr [ %337, %375 ], [ %324, %325 ]
  %335 = phi ptr [ %336, %375 ], [ %91, %325 ]
  %336 = getelementptr inbounds i8, ptr %335, i64 8
  %337 = getelementptr inbounds i8, ptr %334, i64 8
  %338 = icmp ult ptr %336, %92
  br i1 %338, label %375, label %339

339:                                              ; preds = %333, %323
  %340 = phi ptr [ %324, %323 ], [ %337, %333 ]
  %341 = phi ptr [ %91, %323 ], [ %336, %333 ]
  %342 = icmp ult ptr %341, %94
  br i1 %342, label %343, label %350

343:                                              ; preds = %339
  %344 = load i32, ptr %340, align 1, !tbaa !23
  %345 = load i32, ptr %341, align 1, !tbaa !23
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %343
  %348 = getelementptr inbounds i8, ptr %341, i64 4
  %349 = getelementptr inbounds i8, ptr %340, i64 4
  br label %350

350:                                              ; preds = %347, %343, %339
  %351 = phi ptr [ %349, %347 ], [ %340, %343 ], [ %340, %339 ]
  %352 = phi ptr [ %348, %347 ], [ %341, %343 ], [ %341, %339 ]
  %353 = icmp ult ptr %352, %95
  br i1 %353, label %354, label %361

354:                                              ; preds = %350
  %355 = load i16, ptr %351, align 1, !tbaa !113
  %356 = load i16, ptr %352, align 1, !tbaa !113
  %357 = icmp eq i16 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = getelementptr inbounds i8, ptr %352, i64 2
  %360 = getelementptr inbounds i8, ptr %351, i64 2
  br label %361

361:                                              ; preds = %358, %354, %350
  %362 = phi ptr [ %360, %358 ], [ %351, %354 ], [ %351, %350 ]
  %363 = phi ptr [ %359, %358 ], [ %352, %354 ], [ %352, %350 ]
  %364 = icmp ult ptr %363, %4
  br i1 %364, label %365, label %371

365:                                              ; preds = %361
  %366 = load i8, ptr %362, align 1, !tbaa !41
  %367 = load i8, ptr %363, align 1, !tbaa !41
  %368 = icmp eq i8 %366, %367
  %369 = zext i1 %368 to i64
  %370 = getelementptr inbounds i8, ptr %363, i64 %369
  br label %371

371:                                              ; preds = %365, %361
  %372 = phi ptr [ %363, %361 ], [ %370, %365 ]
  %373 = ptrtoint ptr %372 to i64
  %374 = sub i64 %373, %96
  br label %386

375:                                              ; preds = %333
  %376 = load i64, ptr %337, align 1, !tbaa !28
  %377 = load i64, ptr %336, align 1, !tbaa !28
  %378 = xor i64 %377, %376
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %333, label %380

380:                                              ; preds = %375
  %381 = tail call i64 @llvm.cttz.i64(i64 %378, i1 true), !range !112
  %382 = lshr i64 %381, 3
  %383 = getelementptr inbounds i8, ptr %336, i64 %382
  %384 = ptrtoint ptr %383 to i64
  %385 = sub i64 %384, %96
  br label %386

386:                                              ; preds = %380, %371, %330
  %387 = phi i64 [ %374, %371 ], [ %332, %330 ], [ %385, %380 ]
  %388 = trunc i64 %387 to i32
  %389 = add i32 %388, 4
  br label %390

390:                                              ; preds = %386, %313, %309
  %391 = phi i32 [ %389, %386 ], [ 0, %313 ], [ 0, %309 ]
  %392 = zext i32 %391 to i64
  %393 = icmp ult i64 %300, %392
  br i1 %393, label %394, label %403

394:                                              ; preds = %390
  %395 = zext nneg i32 %299 to i64
  %396 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %395
  store i32 3, ptr %396, align 4, !tbaa !45
  %397 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %395, i32 1
  store i32 %391, ptr %397, align 4, !tbaa !43
  %398 = add nuw nsw i32 %299, 1
  %399 = icmp ule i32 %391, %41
  %400 = getelementptr inbounds i8, ptr %3, i64 %392
  %401 = icmp ne ptr %400, %4
  %402 = and i1 %399, %401
  br i1 %402, label %403, label %546

403:                                              ; preds = %390, %394, %35
  %404 = phi i64 [ %86, %35 ], [ %392, %394 ], [ %300, %390 ]
  %405 = phi i32 [ 0, %35 ], [ %398, %394 ], [ %299, %390 ]
  store i32 %36, ptr %51, align 4, !tbaa !23
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
  %425 = getelementptr inbounds i32, ptr %54, i64 %424
  %426 = tail call i64 @llvm.umin.i64(i64 %414, i64 %415)
  %427 = zext i32 %413 to i64
  %428 = getelementptr inbounds i8, ptr %37, i64 %427
  %429 = getelementptr inbounds i8, ptr %3, i64 %426
  %430 = getelementptr inbounds i8, ptr %428, i64 %426
  %431 = icmp ugt ptr %408, %429
  br i1 %431, label %432, label %458

432:                                              ; preds = %412
  %433 = load i64, ptr %430, align 1, !tbaa !28
  %434 = load i64, ptr %429, align 1, !tbaa !28
  %435 = xor i64 %434, %433
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %432
  %438 = tail call i64 @llvm.cttz.i64(i64 %435, i1 true), !range !112
  %439 = lshr i64 %438, 3
  br label %495

440:                                              ; preds = %432, %446
  %441 = phi ptr [ %444, %446 ], [ %430, %432 ]
  %442 = phi ptr [ %443, %446 ], [ %429, %432 ]
  %443 = getelementptr inbounds i8, ptr %442, i64 8
  %444 = getelementptr inbounds i8, ptr %441, i64 8
  %445 = icmp ult ptr %443, %408
  br i1 %445, label %446, label %458

446:                                              ; preds = %440
  %447 = load i64, ptr %444, align 1, !tbaa !28
  %448 = load i64, ptr %443, align 1, !tbaa !28
  %449 = xor i64 %448, %447
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %440, label %451

451:                                              ; preds = %446
  %452 = tail call i64 @llvm.cttz.i64(i64 %449, i1 true), !range !112
  %453 = lshr i64 %452, 3
  %454 = getelementptr inbounds i8, ptr %443, i64 %453
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
  %463 = load i32, ptr %459, align 1, !tbaa !23
  %464 = load i32, ptr %460, align 1, !tbaa !23
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %466, label %469

466:                                              ; preds = %462
  %467 = getelementptr inbounds i8, ptr %460, i64 4
  %468 = getelementptr inbounds i8, ptr %459, i64 4
  br label %469

469:                                              ; preds = %466, %462, %458
  %470 = phi ptr [ %468, %466 ], [ %459, %462 ], [ %459, %458 ]
  %471 = phi ptr [ %467, %466 ], [ %460, %462 ], [ %460, %458 ]
  %472 = icmp ult ptr %471, %410
  br i1 %472, label %473, label %480

473:                                              ; preds = %469
  %474 = load i16, ptr %470, align 1, !tbaa !113
  %475 = load i16, ptr %471, align 1, !tbaa !113
  %476 = icmp eq i16 %474, %475
  br i1 %476, label %477, label %480

477:                                              ; preds = %473
  %478 = getelementptr inbounds i8, ptr %471, i64 2
  %479 = getelementptr inbounds i8, ptr %470, i64 2
  br label %480

480:                                              ; preds = %477, %473, %469
  %481 = phi ptr [ %479, %477 ], [ %470, %473 ], [ %470, %469 ]
  %482 = phi ptr [ %478, %477 ], [ %471, %473 ], [ %471, %469 ]
  %483 = icmp ult ptr %482, %4
  br i1 %483, label %484, label %490

484:                                              ; preds = %480
  %485 = load i8, ptr %481, align 1, !tbaa !41
  %486 = load i8, ptr %482, align 1, !tbaa !41
  %487 = icmp eq i8 %485, %486
  %488 = zext i1 %487 to i64
  %489 = getelementptr inbounds i8, ptr %482, i64 %488
  br label %490

490:                                              ; preds = %484, %480
  %491 = phi ptr [ %482, %480 ], [ %489, %484 ]
  %492 = ptrtoint ptr %491 to i64
  %493 = ptrtoint ptr %429 to i64
  %494 = sub i64 %492, %493
  br label %495

495:                                              ; preds = %437, %451, %490
  %496 = phi i64 [ %494, %490 ], [ %439, %437 ], [ %457, %451 ]
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
  %508 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %507
  store i32 %506, ptr %508, align 4, !tbaa !45
  %509 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %507, i32 1
  store i32 %503, ptr %509, align 4, !tbaa !43
  %510 = add i32 %419, 1
  %511 = icmp ugt i64 %497, 4096
  %512 = getelementptr inbounds i8, ptr %3, i64 %497
  %513 = icmp eq ptr %512, %4
  %514 = or i1 %511, %513
  br i1 %514, label %540, label %515

515:                                              ; preds = %499, %495
  %516 = phi i64 [ %497, %499 ], [ %421, %495 ]
  %517 = phi i32 [ %510, %499 ], [ %419, %495 ]
  %518 = phi i32 [ %505, %499 ], [ %418, %495 ]
  %519 = getelementptr inbounds i8, ptr %428, i64 %497
  %520 = load i8, ptr %519, align 1, !tbaa !41
  %521 = getelementptr inbounds i8, ptr %3, i64 %497
  %522 = load i8, ptr %521, align 1, !tbaa !41
  %523 = icmp ult i8 %520, %522
  %524 = icmp ugt i32 %413, %62
  br i1 %523, label %525, label %528

525:                                              ; preds = %515
  store i32 %413, ptr %416, align 4, !tbaa !23
  br i1 %524, label %526, label %540

526:                                              ; preds = %525
  %527 = getelementptr inbounds i32, ptr %425, i64 1
  br label %529

528:                                              ; preds = %515
  store i32 %413, ptr %417, align 4, !tbaa !23
  br i1 %524, label %529, label %540

529:                                              ; preds = %528, %526
  %530 = phi ptr [ %417, %526 ], [ %425, %528 ]
  %531 = phi ptr [ %527, %526 ], [ %416, %528 ]
  %532 = phi i64 [ %415, %526 ], [ %497, %528 ]
  %533 = phi i64 [ %497, %526 ], [ %414, %528 ]
  %534 = phi ptr [ %527, %526 ], [ %425, %528 ]
  %535 = load i32, ptr %534, align 4, !tbaa !23
  %536 = add i32 %420, -1
  %537 = icmp ne i32 %536, 0
  %538 = icmp uge i32 %535, %75
  %539 = select i1 %537, i1 %538, i1 false
  br i1 %539, label %412, label %540, !llvm.loop !137

540:                                              ; preds = %529, %525, %528, %499, %403
  %541 = phi i32 [ %405, %403 ], [ %510, %499 ], [ %517, %528 ], [ %517, %525 ], [ %517, %529 ]
  %542 = phi i32 [ %81, %403 ], [ %505, %499 ], [ %518, %528 ], [ %518, %525 ], [ %518, %529 ]
  %543 = phi ptr [ %80, %403 ], [ %417, %499 ], [ %9, %528 ], [ %417, %525 ], [ %530, %529 ]
  %544 = phi ptr [ %79, %403 ], [ %416, %499 ], [ %416, %528 ], [ %9, %525 ], [ %531, %529 ]
  store i32 0, ptr %543, align 4, !tbaa !23
  store i32 0, ptr %544, align 4, !tbaa !23
  %545 = add i32 %542, -8
  store i32 %545, ptr %12, align 4, !tbaa !16
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
define internal i32 @ZSTD_btGetAllMatches_extDict_3(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %15, %3
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
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 3, i32 noundef 1)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !17

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !15
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi i64 [ %33, %30 ], [ %20, %17 ]
  %38 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !16
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16
  %40 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !22
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 4095)
  %43 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !105
  %45 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !104
  %47 = load i32, ptr %3, align 1, !tbaa !23
  %48 = mul i32 %47, -1640531535
  %49 = sub i32 32, %44
  %50 = lshr i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %46, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !23
  %54 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !106
  %56 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !107
  %58 = add i32 %57, -1
  %59 = shl nsw i32 -1, %58
  %60 = xor i32 %59, -1
  %61 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !108
  %63 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !19
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  %67 = getelementptr inbounds i8, ptr %38, i64 %65
  %68 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %60)
  %69 = load i32, ptr %39, align 4, !tbaa !109
  %70 = getelementptr i8, ptr %1, i64 28
  %71 = load i32, ptr %70, align 4, !tbaa !103
  %72 = getelementptr i8, ptr %1, i64 40
  %73 = load i32, ptr %72, align 8, !tbaa !110
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
  %85 = getelementptr inbounds i32, ptr %55, i64 %84
  %86 = getelementptr inbounds i32, ptr %85, i64 1
  %87 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %88 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !111
  %90 = shl nuw i32 1, %89
  %91 = add i32 %7, -1
  %92 = zext i32 %91 to i64
  %93 = icmp ult i32 %6, -3
  br i1 %93, label %94, label %239

94:                                               ; preds = %35
  %95 = add nuw i32 %6, 3
  %96 = sub i32 %36, %64
  %97 = sub i32 %36, %80
  %98 = getelementptr inbounds i8, ptr %3, i64 3
  %99 = getelementptr inbounds i8, ptr %4, i64 -7
  %100 = icmp ugt ptr %99, %98
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
  %112 = load i32, ptr %5, align 4, !tbaa !23
  %113 = add i32 %112, -1
  br label %117

114:                                              ; preds = %106
  %115 = getelementptr inbounds i32, ptr %5, i64 %107
  %116 = load i32, ptr %115, align 4, !tbaa !23
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi i32 [ %113, %111 ], [ %116, %114 ]
  %119 = sub i32 %36, %118
  %120 = add i32 %118, -1
  %121 = icmp ult i32 %120, %96
  br i1 %121, label %122, label %200

122:                                              ; preds = %117
  %123 = icmp uge i32 %119, %80
  %124 = load i32, ptr %3, align 1, !tbaa !23
  %125 = zext i32 %118 to i64
  %126 = sub nsw i64 0, %125
  %127 = getelementptr inbounds i8, ptr %3, i64 %126
  %128 = load i32, ptr %127, align 1, !tbaa !23
  %129 = xor i32 %128, %124
  %130 = and i32 %129, 16777215
  %131 = icmp eq i32 %130, 0
  %132 = and i1 %123, %131
  br i1 %132, label %133, label %218

133:                                              ; preds = %122
  %134 = getelementptr inbounds i8, ptr %98, i64 %126
  br i1 %100, label %135, label %160

135:                                              ; preds = %133
  %136 = load i64, ptr %134, align 1, !tbaa !28
  %137 = load i64, ptr %98, align 1, !tbaa !28
  %138 = xor i64 %137, %136
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = tail call i64 @llvm.cttz.i64(i64 %138, i1 true), !range !112
  %142 = lshr i64 %141, 3
  br label %196

143:                                              ; preds = %135, %149
  %144 = phi ptr [ %147, %149 ], [ %134, %135 ]
  %145 = phi ptr [ %146, %149 ], [ %98, %135 ]
  %146 = getelementptr inbounds i8, ptr %145, i64 8
  %147 = getelementptr inbounds i8, ptr %144, i64 8
  %148 = icmp ult ptr %146, %99
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load i64, ptr %147, align 1, !tbaa !28
  %151 = load i64, ptr %146, align 1, !tbaa !28
  %152 = xor i64 %151, %150
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %143, label %154

154:                                              ; preds = %149
  %155 = tail call i64 @llvm.cttz.i64(i64 %152, i1 true), !range !112
  %156 = lshr i64 %155, 3
  %157 = getelementptr inbounds i8, ptr %146, i64 %156
  %158 = ptrtoint ptr %157 to i64
  %159 = sub i64 %158, %103
  br label %196

160:                                              ; preds = %143, %133
  %161 = phi ptr [ %134, %133 ], [ %147, %143 ]
  %162 = phi ptr [ %98, %133 ], [ %146, %143 ]
  %163 = icmp ult ptr %162, %101
  br i1 %163, label %164, label %171

164:                                              ; preds = %160
  %165 = load i32, ptr %161, align 1, !tbaa !23
  %166 = load i32, ptr %162, align 1, !tbaa !23
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = getelementptr inbounds i8, ptr %162, i64 4
  %170 = getelementptr inbounds i8, ptr %161, i64 4
  br label %171

171:                                              ; preds = %168, %164, %160
  %172 = phi ptr [ %170, %168 ], [ %161, %164 ], [ %161, %160 ]
  %173 = phi ptr [ %169, %168 ], [ %162, %164 ], [ %162, %160 ]
  %174 = icmp ult ptr %173, %102
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  %176 = load i16, ptr %172, align 1, !tbaa !113
  %177 = load i16, ptr %173, align 1, !tbaa !113
  %178 = icmp eq i16 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = getelementptr inbounds i8, ptr %173, i64 2
  %181 = getelementptr inbounds i8, ptr %172, i64 2
  br label %182

182:                                              ; preds = %179, %175, %171
  %183 = phi ptr [ %181, %179 ], [ %172, %175 ], [ %172, %171 ]
  %184 = phi ptr [ %180, %179 ], [ %173, %175 ], [ %173, %171 ]
  %185 = icmp ult ptr %184, %4
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load i8, ptr %183, align 1, !tbaa !41
  %188 = load i8, ptr %184, align 1, !tbaa !41
  %189 = icmp eq i8 %187, %188
  %190 = zext i1 %189 to i64
  %191 = getelementptr inbounds i8, ptr %184, i64 %190
  br label %192

192:                                              ; preds = %186, %182
  %193 = phi ptr [ %184, %182 ], [ %191, %186 ]
  %194 = ptrtoint ptr %193 to i64
  %195 = sub i64 %194, %103
  br label %196

196:                                              ; preds = %140, %154, %192
  %197 = phi i64 [ %195, %192 ], [ %142, %140 ], [ %159, %154 ]
  %198 = trunc i64 %197 to i32
  %199 = add i32 %198, 3
  br label %218

200:                                              ; preds = %117
  %201 = zext i32 %119 to i64
  %202 = getelementptr inbounds i8, ptr %62, i64 %201
  %203 = icmp uge i32 %120, %97
  %204 = sub i32 %119, %64
  %205 = icmp ugt i32 %204, -4
  %206 = select i1 %203, i1 true, i1 %205
  br i1 %206, label %218, label %207

207:                                              ; preds = %200
  %208 = load i32, ptr %3, align 1, !tbaa !23
  %209 = load i32, ptr %202, align 1, !tbaa !23
  %210 = xor i32 %209, %208
  %211 = and i32 %210, 16777215
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = getelementptr inbounds i8, ptr %202, i64 3
  %215 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %98, ptr noundef nonnull %214, ptr noundef %4, ptr noundef nonnull %66, ptr noundef %67)
  %216 = trunc i64 %215 to i32
  %217 = add i32 %216, 3
  br label %218

218:                                              ; preds = %200, %207, %213, %196, %122
  %219 = phi i32 [ %199, %196 ], [ 0, %122 ], [ %217, %213 ], [ 0, %207 ], [ 0, %200 ]
  %220 = zext i32 %219 to i64
  %221 = icmp ult i64 %109, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %218
  %223 = zext i32 %108 to i64
  %224 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %223
  %225 = trunc i64 %107 to i32
  %226 = sub i32 %225, %6
  %227 = add i32 %226, 1
  store i32 %227, ptr %224, align 4, !tbaa !45
  %228 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %223, i32 1
  store i32 %219, ptr %228, align 4, !tbaa !43
  %229 = add i32 %108, 1
  %230 = icmp ule i32 %219, %42
  %231 = getelementptr inbounds i8, ptr %3, i64 %220
  %232 = icmp ne ptr %231, %4
  %233 = and i1 %230, %232
  br i1 %233, label %234, label %568

234:                                              ; preds = %218, %222
  %235 = phi i32 [ %229, %222 ], [ %108, %218 ]
  %236 = phi i64 [ %220, %222 ], [ %109, %218 ]
  %237 = add nuw nsw i64 %107, 1
  %238 = icmp eq i64 %237, %105
  br i1 %238, label %239, label %106, !llvm.loop !138

239:                                              ; preds = %234, %35
  %240 = phi i64 [ %92, %35 ], [ %236, %234 ]
  %241 = phi i32 [ 0, %35 ], [ %235, %234 ]
  %242 = icmp ult i64 %240, 3
  br i1 %242, label %243, label %407

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 10
  %245 = load ptr, ptr %244, align 8, !tbaa !133
  %246 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 3
  %247 = load i32, ptr %246, align 8, !tbaa !134
  %248 = load i32, ptr %2, align 4, !tbaa !23
  %249 = load i32, ptr %3, align 1, !tbaa !23
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
  %261 = getelementptr inbounds i8, ptr %38, i64 %259
  %262 = load i32, ptr %261, align 1, !tbaa !23
  %263 = mul i32 %262, 900185344
  %264 = lshr i32 %263, %250
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32, ptr %245, i64 %265
  %267 = trunc i64 %259 to i32
  store i32 %267, ptr %266, align 4, !tbaa !23
  %268 = add nuw nsw i64 %259, 1
  %269 = add i64 %260, 1
  %270 = icmp eq i64 %269, %256
  br i1 %270, label %271, label %258, !llvm.loop !139

271:                                              ; preds = %258, %252
  %272 = phi i64 [ %253, %252 ], [ %268, %258 ]
  %273 = sub nsw i64 %253, %254
  %274 = icmp ugt i64 %273, -4
  br i1 %274, label %310, label %275

275:                                              ; preds = %271, %275
  %276 = phi i64 [ %308, %275 ], [ %272, %271 ]
  %277 = getelementptr inbounds i8, ptr %38, i64 %276
  %278 = load i32, ptr %277, align 1, !tbaa !23
  %279 = mul i32 %278, 900185344
  %280 = lshr i32 %279, %250
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i32, ptr %245, i64 %281
  %283 = trunc i64 %276 to i32
  store i32 %283, ptr %282, align 4, !tbaa !23
  %284 = add nuw nsw i64 %276, 1
  %285 = getelementptr inbounds i8, ptr %38, i64 %284
  %286 = load i32, ptr %285, align 1, !tbaa !23
  %287 = mul i32 %286, 900185344
  %288 = lshr i32 %287, %250
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds i32, ptr %245, i64 %289
  %291 = trunc i64 %284 to i32
  store i32 %291, ptr %290, align 4, !tbaa !23
  %292 = add nuw nsw i64 %276, 2
  %293 = getelementptr inbounds i8, ptr %38, i64 %292
  %294 = load i32, ptr %293, align 1, !tbaa !23
  %295 = mul i32 %294, 900185344
  %296 = lshr i32 %295, %250
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds i32, ptr %245, i64 %297
  %299 = trunc i64 %292 to i32
  store i32 %299, ptr %298, align 4, !tbaa !23
  %300 = add nuw nsw i64 %276, 3
  %301 = getelementptr inbounds i8, ptr %38, i64 %300
  %302 = load i32, ptr %301, align 1, !tbaa !23
  %303 = mul i32 %302, 900185344
  %304 = lshr i32 %303, %250
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds i32, ptr %245, i64 %305
  %307 = trunc i64 %300 to i32
  store i32 %307, ptr %306, align 4, !tbaa !23
  %308 = add nuw nsw i64 %276, 4
  %309 = icmp eq i64 %308, %254
  br i1 %309, label %310, label %275, !llvm.loop !136

310:                                              ; preds = %271, %275, %243
  %311 = mul i32 %249, 900185344
  %312 = lshr i32 %311, %250
  %313 = zext i32 %312 to i64
  store i32 %36, ptr %2, align 4, !tbaa !23
  %314 = getelementptr inbounds i32, ptr %245, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !23
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
  %324 = getelementptr inbounds i8, ptr %38, i64 %322
  %325 = getelementptr inbounds i8, ptr %4, i64 -7
  %326 = icmp ugt ptr %325, %3
  br i1 %326, label %327, label %352

327:                                              ; preds = %323
  %328 = load i64, ptr %324, align 1, !tbaa !28
  %329 = load i64, ptr %3, align 1, !tbaa !28
  %330 = xor i64 %329, %328
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %327
  %333 = tail call i64 @llvm.cttz.i64(i64 %330, i1 true), !range !112
  %334 = lshr i64 %333, 3
  br label %393

335:                                              ; preds = %327, %341
  %336 = phi ptr [ %339, %341 ], [ %324, %327 ]
  %337 = phi ptr [ %338, %341 ], [ %3, %327 ]
  %338 = getelementptr inbounds i8, ptr %337, i64 8
  %339 = getelementptr inbounds i8, ptr %336, i64 8
  %340 = icmp ult ptr %338, %325
  br i1 %340, label %341, label %352

341:                                              ; preds = %335
  %342 = load i64, ptr %339, align 1, !tbaa !28
  %343 = load i64, ptr %338, align 1, !tbaa !28
  %344 = xor i64 %343, %342
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %335, label %346

346:                                              ; preds = %341
  %347 = tail call i64 @llvm.cttz.i64(i64 %344, i1 true), !range !112
  %348 = lshr i64 %347, 3
  %349 = getelementptr inbounds i8, ptr %338, i64 %348
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
  %358 = load i32, ptr %353, align 1, !tbaa !23
  %359 = load i32, ptr %354, align 1, !tbaa !23
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %357
  %362 = getelementptr inbounds i8, ptr %354, i64 4
  %363 = getelementptr inbounds i8, ptr %353, i64 4
  br label %364

364:                                              ; preds = %361, %357, %352
  %365 = phi ptr [ %363, %361 ], [ %353, %357 ], [ %353, %352 ]
  %366 = phi ptr [ %362, %361 ], [ %354, %357 ], [ %354, %352 ]
  %367 = getelementptr inbounds i8, ptr %4, i64 -1
  %368 = icmp ult ptr %366, %367
  br i1 %368, label %369, label %376

369:                                              ; preds = %364
  %370 = load i16, ptr %365, align 1, !tbaa !113
  %371 = load i16, ptr %366, align 1, !tbaa !113
  %372 = icmp eq i16 %370, %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %366, i64 2
  %375 = getelementptr inbounds i8, ptr %365, i64 2
  br label %376

376:                                              ; preds = %373, %369, %364
  %377 = phi ptr [ %375, %373 ], [ %365, %369 ], [ %365, %364 ]
  %378 = phi ptr [ %374, %373 ], [ %366, %369 ], [ %366, %364 ]
  %379 = icmp ult ptr %378, %4
  br i1 %379, label %380, label %386

380:                                              ; preds = %376
  %381 = load i8, ptr %377, align 1, !tbaa !41
  %382 = load i8, ptr %378, align 1, !tbaa !41
  %383 = icmp eq i8 %381, %382
  %384 = zext i1 %383 to i64
  %385 = getelementptr inbounds i8, ptr %378, i64 %384
  br label %386

386:                                              ; preds = %380, %376
  %387 = phi ptr [ %378, %376 ], [ %385, %380 ]
  %388 = ptrtoint ptr %387 to i64
  %389 = sub i64 %388, %18
  br label %393

390:                                              ; preds = %320
  %391 = getelementptr inbounds i8, ptr %62, i64 %322
  %392 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3, ptr noundef %391, ptr noundef %4, ptr noundef nonnull %66, ptr noundef nonnull %67)
  br label %393

393:                                              ; preds = %386, %346, %332, %390
  %394 = phi i64 [ %392, %390 ], [ %389, %386 ], [ %334, %332 ], [ %351, %346 ]
  %395 = icmp ugt i64 %394, 2
  br i1 %395, label %396, label %407

396:                                              ; preds = %393
  %397 = add i32 %317, 3
  store i32 %397, ptr %0, align 4, !tbaa !45
  %398 = trunc i64 %394 to i32
  %399 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %398, ptr %399, align 4, !tbaa !43
  %400 = zext nneg i32 %42 to i64
  %401 = icmp ugt i64 %394, %400
  %402 = getelementptr inbounds i8, ptr %3, i64 %394
  %403 = icmp eq ptr %402, %4
  %404 = or i1 %401, %403
  br i1 %404, label %405, label %407

405:                                              ; preds = %396
  %406 = add i32 %36, 1
  br label %565

407:                                              ; preds = %393, %396, %310, %239
  %408 = phi i64 [ %240, %239 ], [ %240, %393 ], [ %394, %396 ], [ %240, %310 ]
  %409 = phi i32 [ %241, %239 ], [ %241, %393 ], [ 1, %396 ], [ %241, %310 ]
  store i32 %36, ptr %52, align 4, !tbaa !23
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
  %429 = getelementptr inbounds i32, ptr %55, i64 %428
  %430 = tail call i64 @llvm.umin.i64(i64 %418, i64 %419)
  %431 = zext i32 %417 to i64
  %432 = add i64 %430, %431
  %433 = icmp ult i64 %432, %65
  %434 = getelementptr inbounds i8, ptr %3, i64 %430
  br i1 %433, label %505, label %435

435:                                              ; preds = %416
  %436 = getelementptr inbounds i8, ptr %38, i64 %431
  %437 = getelementptr inbounds i8, ptr %436, i64 %430
  %438 = icmp ugt ptr %412, %434
  br i1 %438, label %439, label %465

439:                                              ; preds = %435
  %440 = load i64, ptr %437, align 1, !tbaa !28
  %441 = load i64, ptr %434, align 1, !tbaa !28
  %442 = xor i64 %441, %440
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %447, label %444

444:                                              ; preds = %439
  %445 = tail call i64 @llvm.cttz.i64(i64 %442, i1 true), !range !112
  %446 = lshr i64 %445, 3
  br label %502

447:                                              ; preds = %439, %453
  %448 = phi ptr [ %451, %453 ], [ %437, %439 ]
  %449 = phi ptr [ %450, %453 ], [ %434, %439 ]
  %450 = getelementptr inbounds i8, ptr %449, i64 8
  %451 = getelementptr inbounds i8, ptr %448, i64 8
  %452 = icmp ult ptr %450, %412
  br i1 %452, label %453, label %465

453:                                              ; preds = %447
  %454 = load i64, ptr %451, align 1, !tbaa !28
  %455 = load i64, ptr %450, align 1, !tbaa !28
  %456 = xor i64 %455, %454
  %457 = icmp eq i64 %456, 0
  br i1 %457, label %447, label %458

458:                                              ; preds = %453
  %459 = tail call i64 @llvm.cttz.i64(i64 %456, i1 true), !range !112
  %460 = lshr i64 %459, 3
  %461 = getelementptr inbounds i8, ptr %450, i64 %460
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
  %470 = load i32, ptr %466, align 1, !tbaa !23
  %471 = load i32, ptr %467, align 1, !tbaa !23
  %472 = icmp eq i32 %470, %471
  br i1 %472, label %473, label %476

473:                                              ; preds = %469
  %474 = getelementptr inbounds i8, ptr %467, i64 4
  %475 = getelementptr inbounds i8, ptr %466, i64 4
  br label %476

476:                                              ; preds = %473, %469, %465
  %477 = phi ptr [ %475, %473 ], [ %466, %469 ], [ %466, %465 ]
  %478 = phi ptr [ %474, %473 ], [ %467, %469 ], [ %467, %465 ]
  %479 = icmp ult ptr %478, %414
  br i1 %479, label %480, label %487

480:                                              ; preds = %476
  %481 = load i16, ptr %477, align 1, !tbaa !113
  %482 = load i16, ptr %478, align 1, !tbaa !113
  %483 = icmp eq i16 %481, %482
  br i1 %483, label %484, label %487

484:                                              ; preds = %480
  %485 = getelementptr inbounds i8, ptr %478, i64 2
  %486 = getelementptr inbounds i8, ptr %477, i64 2
  br label %487

487:                                              ; preds = %484, %480, %476
  %488 = phi ptr [ %486, %484 ], [ %477, %480 ], [ %477, %476 ]
  %489 = phi ptr [ %485, %484 ], [ %478, %480 ], [ %478, %476 ]
  %490 = icmp ult ptr %489, %4
  br i1 %490, label %491, label %497

491:                                              ; preds = %487
  %492 = load i8, ptr %488, align 1, !tbaa !41
  %493 = load i8, ptr %489, align 1, !tbaa !41
  %494 = icmp eq i8 %492, %493
  %495 = zext i1 %494 to i64
  %496 = getelementptr inbounds i8, ptr %489, i64 %495
  br label %497

497:                                              ; preds = %491, %487
  %498 = phi ptr [ %489, %487 ], [ %496, %491 ]
  %499 = ptrtoint ptr %498 to i64
  %500 = ptrtoint ptr %434 to i64
  %501 = sub i64 %499, %500
  br label %502

502:                                              ; preds = %444, %458, %497
  %503 = phi i64 [ %501, %497 ], [ %446, %444 ], [ %464, %458 ]
  %504 = add i64 %503, %430
  br label %514

505:                                              ; preds = %416
  %506 = getelementptr inbounds i8, ptr %62, i64 %431
  %507 = getelementptr inbounds i8, ptr %506, i64 %430
  %508 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %434, ptr noundef %507, ptr noundef %4, ptr noundef nonnull %66, ptr noundef nonnull %67)
  %509 = add i64 %508, %430
  %510 = add i64 %509, %431
  %511 = icmp ult i64 %510, %65
  %512 = getelementptr inbounds i8, ptr %38, i64 %431
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
  %527 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %526
  store i32 %525, ptr %527, align 4, !tbaa !45
  %528 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %526, i32 1
  store i32 %522, ptr %528, align 4, !tbaa !43
  %529 = add i32 %423, 1
  %530 = icmp ugt i64 %516, 4096
  %531 = getelementptr inbounds i8, ptr %3, i64 %516
  %532 = icmp eq ptr %531, %4
  %533 = or i1 %530, %532
  br i1 %533, label %559, label %534

534:                                              ; preds = %518, %514
  %535 = phi i64 [ %516, %518 ], [ %425, %514 ]
  %536 = phi i32 [ %529, %518 ], [ %423, %514 ]
  %537 = phi i32 [ %524, %518 ], [ %422, %514 ]
  %538 = getelementptr inbounds i8, ptr %515, i64 %516
  %539 = load i8, ptr %538, align 1, !tbaa !41
  %540 = getelementptr inbounds i8, ptr %3, i64 %516
  %541 = load i8, ptr %540, align 1, !tbaa !41
  %542 = icmp ult i8 %539, %541
  %543 = icmp ugt i32 %417, %68
  br i1 %542, label %544, label %547

544:                                              ; preds = %534
  store i32 %417, ptr %420, align 4, !tbaa !23
  br i1 %543, label %545, label %559

545:                                              ; preds = %544
  %546 = getelementptr inbounds i32, ptr %429, i64 1
  br label %548

547:                                              ; preds = %534
  store i32 %417, ptr %421, align 4, !tbaa !23
  br i1 %543, label %548, label %559

548:                                              ; preds = %547, %545
  %549 = phi ptr [ %421, %545 ], [ %429, %547 ]
  %550 = phi ptr [ %546, %545 ], [ %420, %547 ]
  %551 = phi i64 [ %419, %545 ], [ %516, %547 ]
  %552 = phi i64 [ %516, %545 ], [ %418, %547 ]
  %553 = phi ptr [ %546, %545 ], [ %429, %547 ]
  %554 = load i32, ptr %553, align 4, !tbaa !23
  %555 = add i32 %424, -1
  %556 = icmp ne i32 %555, 0
  %557 = icmp uge i32 %554, %81
  %558 = select i1 %556, i1 %557, i1 false
  br i1 %558, label %416, label %559, !llvm.loop !137

559:                                              ; preds = %548, %544, %547, %518, %407
  %560 = phi i32 [ %409, %407 ], [ %529, %518 ], [ %536, %547 ], [ %536, %544 ], [ %536, %548 ]
  %561 = phi i32 [ %87, %407 ], [ %524, %518 ], [ %537, %547 ], [ %537, %544 ], [ %537, %548 ]
  %562 = phi ptr [ %86, %407 ], [ %421, %518 ], [ %9, %547 ], [ %421, %544 ], [ %549, %548 ]
  %563 = phi ptr [ %85, %407 ], [ %420, %518 ], [ %420, %547 ], [ %9, %544 ], [ %550, %548 ]
  store i32 0, ptr %562, align 4, !tbaa !23
  store i32 0, ptr %563, align 4, !tbaa !23
  %564 = add i32 %561, -8
  br label %565

565:                                              ; preds = %559, %405
  %566 = phi i32 [ %406, %405 ], [ %564, %559 ]
  %567 = phi i32 [ 1, %405 ], [ %560, %559 ]
  store i32 %566, ptr %12, align 4, !tbaa !16
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
define internal i32 @ZSTD_btGetAllMatches_extDict_4(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %15, %3
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
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 4, i32 noundef 1)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !17

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !15
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !16
  %38 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !22
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !104
  %46 = load i32, ptr %3, align 1, !tbaa !23
  %47 = mul i32 %46, -1640531535
  %48 = sub i32 32, %43
  %49 = lshr i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !23
  %53 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !107
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !108
  %62 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !19
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %61, i64 %64
  %66 = getelementptr inbounds i8, ptr %37, i64 %64
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %68 = load i32, ptr %38, align 4, !tbaa !109
  %69 = getelementptr i8, ptr %1, i64 28
  %70 = load i32, ptr %69, align 4, !tbaa !103
  %71 = getelementptr i8, ptr %1, i64 40
  %72 = load i32, ptr %71, align 8, !tbaa !110
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
  %84 = getelementptr inbounds i32, ptr %54, i64 %83
  %85 = getelementptr inbounds i32, ptr %84, i64 1
  %86 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %87 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !111
  %89 = shl nuw i32 1, %88
  %90 = add i32 %7, -1
  %91 = zext i32 %90 to i64
  %92 = icmp ult i32 %6, -3
  br i1 %92, label %93, label %453

93:                                               ; preds = %35
  %94 = sub i32 %36, %63
  %95 = sub i32 %36, %79
  %96 = getelementptr inbounds i8, ptr %3, i64 4
  %97 = getelementptr inbounds i8, ptr %4, i64 -7
  %98 = icmp ugt ptr %97, %96
  %99 = getelementptr inbounds i8, ptr %4, i64 -3
  %100 = getelementptr inbounds i8, ptr %4, i64 -1
  %101 = ptrtoint ptr %96 to i64
  %102 = zext i32 %6 to i64
  %103 = icmp eq i32 %6, 3
  br i1 %103, label %104, label %107

104:                                              ; preds = %93
  %105 = load i32, ptr %5, align 4, !tbaa !23
  %106 = add i32 %105, -1
  br label %110

107:                                              ; preds = %93
  %108 = getelementptr inbounds i32, ptr %5, i64 %102
  %109 = load i32, ptr %108, align 4, !tbaa !23
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
  %120 = load i32, ptr %119, align 1, !tbaa !23
  %121 = icmp eq i32 %46, %120
  %122 = and i1 %116, %121
  br i1 %122, label %123, label %211

123:                                              ; preds = %115
  %124 = getelementptr inbounds i8, ptr %96, i64 %118
  br i1 %98, label %125, label %150

125:                                              ; preds = %123
  %126 = load i64, ptr %124, align 1, !tbaa !28
  %127 = load i64, ptr %96, align 1, !tbaa !28
  %128 = xor i64 %127, %126
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = tail call i64 @llvm.cttz.i64(i64 %128, i1 true), !range !112
  %132 = lshr i64 %131, 3
  br label %199

133:                                              ; preds = %125, %139
  %134 = phi ptr [ %137, %139 ], [ %124, %125 ]
  %135 = phi ptr [ %136, %139 ], [ %96, %125 ]
  %136 = getelementptr inbounds i8, ptr %135, i64 8
  %137 = getelementptr inbounds i8, ptr %134, i64 8
  %138 = icmp ult ptr %136, %97
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load i64, ptr %137, align 1, !tbaa !28
  %141 = load i64, ptr %136, align 1, !tbaa !28
  %142 = xor i64 %141, %140
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %133, label %144

144:                                              ; preds = %139
  %145 = tail call i64 @llvm.cttz.i64(i64 %142, i1 true), !range !112
  %146 = lshr i64 %145, 3
  %147 = getelementptr inbounds i8, ptr %136, i64 %146
  %148 = ptrtoint ptr %147 to i64
  %149 = sub i64 %148, %101
  br label %199

150:                                              ; preds = %133, %123
  %151 = phi ptr [ %124, %123 ], [ %137, %133 ]
  %152 = phi ptr [ %96, %123 ], [ %136, %133 ]
  %153 = icmp ult ptr %152, %99
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load i32, ptr %151, align 1, !tbaa !23
  %156 = load i32, ptr %152, align 1, !tbaa !23
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = getelementptr inbounds i8, ptr %152, i64 4
  %160 = getelementptr inbounds i8, ptr %151, i64 4
  br label %161

161:                                              ; preds = %158, %154, %150
  %162 = phi ptr [ %160, %158 ], [ %151, %154 ], [ %151, %150 ]
  %163 = phi ptr [ %159, %158 ], [ %152, %154 ], [ %152, %150 ]
  %164 = icmp ult ptr %163, %100
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load i16, ptr %162, align 1, !tbaa !113
  %167 = load i16, ptr %163, align 1, !tbaa !113
  %168 = icmp eq i16 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = getelementptr inbounds i8, ptr %163, i64 2
  %171 = getelementptr inbounds i8, ptr %162, i64 2
  br label %172

172:                                              ; preds = %169, %165, %161
  %173 = phi ptr [ %171, %169 ], [ %162, %165 ], [ %162, %161 ]
  %174 = phi ptr [ %170, %169 ], [ %163, %165 ], [ %163, %161 ]
  %175 = icmp ult ptr %174, %4
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load i8, ptr %173, align 1, !tbaa !41
  %178 = load i8, ptr %174, align 1, !tbaa !41
  %179 = icmp eq i8 %177, %178
  %180 = zext i1 %179 to i64
  %181 = getelementptr inbounds i8, ptr %174, i64 %180
  br label %182

182:                                              ; preds = %176, %172
  %183 = phi ptr [ %174, %172 ], [ %181, %176 ]
  %184 = ptrtoint ptr %183 to i64
  %185 = sub i64 %184, %101
  br label %199

186:                                              ; preds = %110
  %187 = zext i32 %112 to i64
  %188 = getelementptr inbounds i8, ptr %61, i64 %187
  %189 = icmp uge i32 %113, %95
  %190 = sub i32 %112, %63
  %191 = icmp ugt i32 %190, -4
  %192 = select i1 %189, i1 true, i1 %191
  br i1 %192, label %211, label %193

193:                                              ; preds = %186
  %194 = load i32, ptr %188, align 1, !tbaa !23
  %195 = icmp eq i32 %46, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  %197 = getelementptr inbounds i8, ptr %188, i64 4
  %198 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %96, ptr noundef nonnull %197, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  br label %199

199:                                              ; preds = %182, %144, %130, %196
  %200 = phi i64 [ %198, %196 ], [ %185, %182 ], [ %132, %130 ], [ %149, %144 ]
  %201 = trunc i64 %200 to i32
  %202 = add i32 %201, 4
  %203 = icmp ult i32 %90, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = zext i32 %202 to i64
  store i32 1, ptr %0, align 4, !tbaa !45
  %206 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %202, ptr %206, align 4, !tbaa !43
  %207 = icmp ule i32 %202, %41
  %208 = getelementptr inbounds i8, ptr %3, i64 %205
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
  %217 = getelementptr inbounds i32, ptr %5, i64 %214
  %218 = load i32, ptr %217, align 4, !tbaa !23
  br label %222

219:                                              ; preds = %211
  %220 = load i32, ptr %5, align 4, !tbaa !23
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
  %229 = getelementptr inbounds i8, ptr %61, i64 %228
  %230 = icmp uge i32 %225, %95
  %231 = sub i32 %224, %63
  %232 = icmp ugt i32 %231, -4
  %233 = select i1 %230, i1 true, i1 %232
  br i1 %233, label %319, label %234

234:                                              ; preds = %227
  %235 = load i32, ptr %3, align 1, !tbaa !23
  %236 = load i32, ptr %229, align 1, !tbaa !23
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %319

238:                                              ; preds = %234
  %239 = getelementptr inbounds i8, ptr %229, i64 4
  %240 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %96, ptr noundef nonnull %239, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %241 = trunc i64 %240 to i32
  %242 = add i32 %241, 4
  br label %319

243:                                              ; preds = %222
  %244 = icmp uge i32 %224, %79
  %245 = load i32, ptr %3, align 1, !tbaa !23
  %246 = zext i32 %223 to i64
  %247 = sub nsw i64 0, %246
  %248 = getelementptr inbounds i8, ptr %3, i64 %247
  %249 = load i32, ptr %248, align 1, !tbaa !23
  %250 = icmp eq i32 %245, %249
  %251 = and i1 %244, %250
  br i1 %251, label %252, label %319

252:                                              ; preds = %243
  %253 = getelementptr inbounds i8, ptr %96, i64 %247
  br i1 %98, label %254, label %268

254:                                              ; preds = %252
  %255 = load i64, ptr %253, align 1, !tbaa !28
  %256 = load i64, ptr %96, align 1, !tbaa !28
  %257 = xor i64 %256, %255
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %254
  %260 = tail call i64 @llvm.cttz.i64(i64 %257, i1 true), !range !112
  %261 = lshr i64 %260, 3
  br label %315

262:                                              ; preds = %254, %304
  %263 = phi ptr [ %266, %304 ], [ %253, %254 ]
  %264 = phi ptr [ %265, %304 ], [ %96, %254 ]
  %265 = getelementptr inbounds i8, ptr %264, i64 8
  %266 = getelementptr inbounds i8, ptr %263, i64 8
  %267 = icmp ult ptr %265, %97
  br i1 %267, label %304, label %268

268:                                              ; preds = %262, %252
  %269 = phi ptr [ %253, %252 ], [ %266, %262 ]
  %270 = phi ptr [ %96, %252 ], [ %265, %262 ]
  %271 = icmp ult ptr %270, %99
  br i1 %271, label %272, label %279

272:                                              ; preds = %268
  %273 = load i32, ptr %269, align 1, !tbaa !23
  %274 = load i32, ptr %270, align 1, !tbaa !23
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = getelementptr inbounds i8, ptr %270, i64 4
  %278 = getelementptr inbounds i8, ptr %269, i64 4
  br label %279

279:                                              ; preds = %276, %272, %268
  %280 = phi ptr [ %278, %276 ], [ %269, %272 ], [ %269, %268 ]
  %281 = phi ptr [ %277, %276 ], [ %270, %272 ], [ %270, %268 ]
  %282 = icmp ult ptr %281, %100
  br i1 %282, label %283, label %290

283:                                              ; preds = %279
  %284 = load i16, ptr %280, align 1, !tbaa !113
  %285 = load i16, ptr %281, align 1, !tbaa !113
  %286 = icmp eq i16 %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  %288 = getelementptr inbounds i8, ptr %281, i64 2
  %289 = getelementptr inbounds i8, ptr %280, i64 2
  br label %290

290:                                              ; preds = %287, %283, %279
  %291 = phi ptr [ %289, %287 ], [ %280, %283 ], [ %280, %279 ]
  %292 = phi ptr [ %288, %287 ], [ %281, %283 ], [ %281, %279 ]
  %293 = icmp ult ptr %292, %4
  br i1 %293, label %294, label %300

294:                                              ; preds = %290
  %295 = load i8, ptr %291, align 1, !tbaa !41
  %296 = load i8, ptr %292, align 1, !tbaa !41
  %297 = icmp eq i8 %295, %296
  %298 = zext i1 %297 to i64
  %299 = getelementptr inbounds i8, ptr %292, i64 %298
  br label %300

300:                                              ; preds = %294, %290
  %301 = phi ptr [ %292, %290 ], [ %299, %294 ]
  %302 = ptrtoint ptr %301 to i64
  %303 = sub i64 %302, %101
  br label %315

304:                                              ; preds = %262
  %305 = load i64, ptr %266, align 1, !tbaa !28
  %306 = load i64, ptr %265, align 1, !tbaa !28
  %307 = xor i64 %306, %305
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %262, label %309

309:                                              ; preds = %304
  %310 = tail call i64 @llvm.cttz.i64(i64 %307, i1 true), !range !112
  %311 = lshr i64 %310, 3
  %312 = getelementptr inbounds i8, ptr %265, i64 %311
  %313 = ptrtoint ptr %312 to i64
  %314 = sub i64 %313, %101
  br label %315

315:                                              ; preds = %309, %300, %259
  %316 = phi i64 [ %303, %300 ], [ %261, %259 ], [ %314, %309 ]
  %317 = trunc i64 %316 to i32
  %318 = add i32 %317, 4
  br label %319

319:                                              ; preds = %315, %243, %238, %234, %227
  %320 = phi i32 [ %318, %315 ], [ 0, %243 ], [ %242, %238 ], [ 0, %234 ], [ 0, %227 ]
  %321 = zext i32 %320 to i64
  %322 = icmp ult i64 %213, %321
  br i1 %322, label %323, label %332

323:                                              ; preds = %319
  %324 = zext nneg i32 %212 to i64
  %325 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %324
  store i32 2, ptr %325, align 4, !tbaa !45
  %326 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %324, i32 1
  store i32 %320, ptr %326, align 4, !tbaa !43
  %327 = add nuw nsw i32 %212, 1
  %328 = icmp ule i32 %320, %41
  %329 = getelementptr inbounds i8, ptr %3, i64 %321
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
  %338 = getelementptr inbounds i32, ptr %5, i64 %335
  %339 = load i32, ptr %338, align 4, !tbaa !23
  br label %343

340:                                              ; preds = %332
  %341 = load i32, ptr %5, align 4, !tbaa !23
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
  %350 = getelementptr inbounds i8, ptr %61, i64 %349
  %351 = icmp uge i32 %346, %95
  %352 = sub i32 %345, %63
  %353 = icmp ugt i32 %352, -4
  %354 = select i1 %351, i1 true, i1 %353
  br i1 %354, label %440, label %355

355:                                              ; preds = %348
  %356 = load i32, ptr %3, align 1, !tbaa !23
  %357 = load i32, ptr %350, align 1, !tbaa !23
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %440

359:                                              ; preds = %355
  %360 = getelementptr inbounds i8, ptr %350, i64 4
  %361 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %96, ptr noundef nonnull %360, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %362 = trunc i64 %361 to i32
  %363 = add i32 %362, 4
  br label %440

364:                                              ; preds = %343
  %365 = icmp uge i32 %345, %79
  %366 = load i32, ptr %3, align 1, !tbaa !23
  %367 = zext i32 %344 to i64
  %368 = sub nsw i64 0, %367
  %369 = getelementptr inbounds i8, ptr %3, i64 %368
  %370 = load i32, ptr %369, align 1, !tbaa !23
  %371 = icmp eq i32 %366, %370
  %372 = and i1 %365, %371
  br i1 %372, label %373, label %440

373:                                              ; preds = %364
  %374 = getelementptr inbounds i8, ptr %96, i64 %368
  br i1 %98, label %375, label %389

375:                                              ; preds = %373
  %376 = load i64, ptr %374, align 1, !tbaa !28
  %377 = load i64, ptr %96, align 1, !tbaa !28
  %378 = xor i64 %377, %376
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %375
  %381 = tail call i64 @llvm.cttz.i64(i64 %378, i1 true), !range !112
  %382 = lshr i64 %381, 3
  br label %436

383:                                              ; preds = %375, %425
  %384 = phi ptr [ %387, %425 ], [ %374, %375 ]
  %385 = phi ptr [ %386, %425 ], [ %96, %375 ]
  %386 = getelementptr inbounds i8, ptr %385, i64 8
  %387 = getelementptr inbounds i8, ptr %384, i64 8
  %388 = icmp ult ptr %386, %97
  br i1 %388, label %425, label %389

389:                                              ; preds = %383, %373
  %390 = phi ptr [ %374, %373 ], [ %387, %383 ]
  %391 = phi ptr [ %96, %373 ], [ %386, %383 ]
  %392 = icmp ult ptr %391, %99
  br i1 %392, label %393, label %400

393:                                              ; preds = %389
  %394 = load i32, ptr %390, align 1, !tbaa !23
  %395 = load i32, ptr %391, align 1, !tbaa !23
  %396 = icmp eq i32 %394, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %393
  %398 = getelementptr inbounds i8, ptr %391, i64 4
  %399 = getelementptr inbounds i8, ptr %390, i64 4
  br label %400

400:                                              ; preds = %397, %393, %389
  %401 = phi ptr [ %399, %397 ], [ %390, %393 ], [ %390, %389 ]
  %402 = phi ptr [ %398, %397 ], [ %391, %393 ], [ %391, %389 ]
  %403 = icmp ult ptr %402, %100
  br i1 %403, label %404, label %411

404:                                              ; preds = %400
  %405 = load i16, ptr %401, align 1, !tbaa !113
  %406 = load i16, ptr %402, align 1, !tbaa !113
  %407 = icmp eq i16 %405, %406
  br i1 %407, label %408, label %411

408:                                              ; preds = %404
  %409 = getelementptr inbounds i8, ptr %402, i64 2
  %410 = getelementptr inbounds i8, ptr %401, i64 2
  br label %411

411:                                              ; preds = %408, %404, %400
  %412 = phi ptr [ %410, %408 ], [ %401, %404 ], [ %401, %400 ]
  %413 = phi ptr [ %409, %408 ], [ %402, %404 ], [ %402, %400 ]
  %414 = icmp ult ptr %413, %4
  br i1 %414, label %415, label %421

415:                                              ; preds = %411
  %416 = load i8, ptr %412, align 1, !tbaa !41
  %417 = load i8, ptr %413, align 1, !tbaa !41
  %418 = icmp eq i8 %416, %417
  %419 = zext i1 %418 to i64
  %420 = getelementptr inbounds i8, ptr %413, i64 %419
  br label %421

421:                                              ; preds = %415, %411
  %422 = phi ptr [ %413, %411 ], [ %420, %415 ]
  %423 = ptrtoint ptr %422 to i64
  %424 = sub i64 %423, %101
  br label %436

425:                                              ; preds = %383
  %426 = load i64, ptr %387, align 1, !tbaa !28
  %427 = load i64, ptr %386, align 1, !tbaa !28
  %428 = xor i64 %427, %426
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %383, label %430

430:                                              ; preds = %425
  %431 = tail call i64 @llvm.cttz.i64(i64 %428, i1 true), !range !112
  %432 = lshr i64 %431, 3
  %433 = getelementptr inbounds i8, ptr %386, i64 %432
  %434 = ptrtoint ptr %433 to i64
  %435 = sub i64 %434, %101
  br label %436

436:                                              ; preds = %430, %421, %380
  %437 = phi i64 [ %424, %421 ], [ %382, %380 ], [ %435, %430 ]
  %438 = trunc i64 %437 to i32
  %439 = add i32 %438, 4
  br label %440

440:                                              ; preds = %436, %364, %359, %355, %348
  %441 = phi i32 [ %439, %436 ], [ 0, %364 ], [ %363, %359 ], [ 0, %355 ], [ 0, %348 ]
  %442 = zext i32 %441 to i64
  %443 = icmp ult i64 %334, %442
  br i1 %443, label %444, label %453

444:                                              ; preds = %440
  %445 = zext nneg i32 %333 to i64
  %446 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %445
  store i32 3, ptr %446, align 4, !tbaa !45
  %447 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %445, i32 1
  store i32 %441, ptr %447, align 4, !tbaa !43
  %448 = add nuw nsw i32 %333, 1
  %449 = icmp ule i32 %441, %41
  %450 = getelementptr inbounds i8, ptr %3, i64 %442
  %451 = icmp ne ptr %450, %4
  %452 = and i1 %449, %451
  br i1 %452, label %453, label %611

453:                                              ; preds = %440, %444, %35
  %454 = phi i64 [ %91, %35 ], [ %442, %444 ], [ %334, %440 ]
  %455 = phi i32 [ 0, %35 ], [ %448, %444 ], [ %333, %440 ]
  store i32 %36, ptr %51, align 4, !tbaa !23
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
  %475 = getelementptr inbounds i32, ptr %54, i64 %474
  %476 = tail call i64 @llvm.umin.i64(i64 %464, i64 %465)
  %477 = zext i32 %463 to i64
  %478 = add i64 %476, %477
  %479 = icmp ult i64 %478, %64
  %480 = getelementptr inbounds i8, ptr %3, i64 %476
  br i1 %479, label %551, label %481

481:                                              ; preds = %462
  %482 = getelementptr inbounds i8, ptr %37, i64 %477
  %483 = getelementptr inbounds i8, ptr %482, i64 %476
  %484 = icmp ugt ptr %458, %480
  br i1 %484, label %485, label %511

485:                                              ; preds = %481
  %486 = load i64, ptr %483, align 1, !tbaa !28
  %487 = load i64, ptr %480, align 1, !tbaa !28
  %488 = xor i64 %487, %486
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %493, label %490

490:                                              ; preds = %485
  %491 = tail call i64 @llvm.cttz.i64(i64 %488, i1 true), !range !112
  %492 = lshr i64 %491, 3
  br label %548

493:                                              ; preds = %485, %499
  %494 = phi ptr [ %497, %499 ], [ %483, %485 ]
  %495 = phi ptr [ %496, %499 ], [ %480, %485 ]
  %496 = getelementptr inbounds i8, ptr %495, i64 8
  %497 = getelementptr inbounds i8, ptr %494, i64 8
  %498 = icmp ult ptr %496, %458
  br i1 %498, label %499, label %511

499:                                              ; preds = %493
  %500 = load i64, ptr %497, align 1, !tbaa !28
  %501 = load i64, ptr %496, align 1, !tbaa !28
  %502 = xor i64 %501, %500
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %493, label %504

504:                                              ; preds = %499
  %505 = tail call i64 @llvm.cttz.i64(i64 %502, i1 true), !range !112
  %506 = lshr i64 %505, 3
  %507 = getelementptr inbounds i8, ptr %496, i64 %506
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
  %516 = load i32, ptr %512, align 1, !tbaa !23
  %517 = load i32, ptr %513, align 1, !tbaa !23
  %518 = icmp eq i32 %516, %517
  br i1 %518, label %519, label %522

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %513, i64 4
  %521 = getelementptr inbounds i8, ptr %512, i64 4
  br label %522

522:                                              ; preds = %519, %515, %511
  %523 = phi ptr [ %521, %519 ], [ %512, %515 ], [ %512, %511 ]
  %524 = phi ptr [ %520, %519 ], [ %513, %515 ], [ %513, %511 ]
  %525 = icmp ult ptr %524, %460
  br i1 %525, label %526, label %533

526:                                              ; preds = %522
  %527 = load i16, ptr %523, align 1, !tbaa !113
  %528 = load i16, ptr %524, align 1, !tbaa !113
  %529 = icmp eq i16 %527, %528
  br i1 %529, label %530, label %533

530:                                              ; preds = %526
  %531 = getelementptr inbounds i8, ptr %524, i64 2
  %532 = getelementptr inbounds i8, ptr %523, i64 2
  br label %533

533:                                              ; preds = %530, %526, %522
  %534 = phi ptr [ %532, %530 ], [ %523, %526 ], [ %523, %522 ]
  %535 = phi ptr [ %531, %530 ], [ %524, %526 ], [ %524, %522 ]
  %536 = icmp ult ptr %535, %4
  br i1 %536, label %537, label %543

537:                                              ; preds = %533
  %538 = load i8, ptr %534, align 1, !tbaa !41
  %539 = load i8, ptr %535, align 1, !tbaa !41
  %540 = icmp eq i8 %538, %539
  %541 = zext i1 %540 to i64
  %542 = getelementptr inbounds i8, ptr %535, i64 %541
  br label %543

543:                                              ; preds = %537, %533
  %544 = phi ptr [ %535, %533 ], [ %542, %537 ]
  %545 = ptrtoint ptr %544 to i64
  %546 = ptrtoint ptr %480 to i64
  %547 = sub i64 %545, %546
  br label %548

548:                                              ; preds = %490, %504, %543
  %549 = phi i64 [ %547, %543 ], [ %492, %490 ], [ %510, %504 ]
  %550 = add i64 %549, %476
  br label %560

551:                                              ; preds = %462
  %552 = getelementptr inbounds i8, ptr %61, i64 %477
  %553 = getelementptr inbounds i8, ptr %552, i64 %476
  %554 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %480, ptr noundef %553, ptr noundef %4, ptr noundef nonnull %65, ptr noundef nonnull %66)
  %555 = add i64 %554, %476
  %556 = add i64 %555, %477
  %557 = icmp ult i64 %556, %64
  %558 = getelementptr inbounds i8, ptr %37, i64 %477
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
  %573 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %572
  store i32 %571, ptr %573, align 4, !tbaa !45
  %574 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %572, i32 1
  store i32 %568, ptr %574, align 4, !tbaa !43
  %575 = add i32 %469, 1
  %576 = icmp ugt i64 %562, 4096
  %577 = getelementptr inbounds i8, ptr %3, i64 %562
  %578 = icmp eq ptr %577, %4
  %579 = or i1 %576, %578
  br i1 %579, label %605, label %580

580:                                              ; preds = %564, %560
  %581 = phi i64 [ %562, %564 ], [ %471, %560 ]
  %582 = phi i32 [ %575, %564 ], [ %469, %560 ]
  %583 = phi i32 [ %570, %564 ], [ %468, %560 ]
  %584 = getelementptr inbounds i8, ptr %561, i64 %562
  %585 = load i8, ptr %584, align 1, !tbaa !41
  %586 = getelementptr inbounds i8, ptr %3, i64 %562
  %587 = load i8, ptr %586, align 1, !tbaa !41
  %588 = icmp ult i8 %585, %587
  %589 = icmp ugt i32 %463, %67
  br i1 %588, label %590, label %593

590:                                              ; preds = %580
  store i32 %463, ptr %466, align 4, !tbaa !23
  br i1 %589, label %591, label %605

591:                                              ; preds = %590
  %592 = getelementptr inbounds i32, ptr %475, i64 1
  br label %594

593:                                              ; preds = %580
  store i32 %463, ptr %467, align 4, !tbaa !23
  br i1 %589, label %594, label %605

594:                                              ; preds = %593, %591
  %595 = phi ptr [ %467, %591 ], [ %475, %593 ]
  %596 = phi ptr [ %592, %591 ], [ %466, %593 ]
  %597 = phi i64 [ %465, %591 ], [ %562, %593 ]
  %598 = phi i64 [ %562, %591 ], [ %464, %593 ]
  %599 = phi ptr [ %592, %591 ], [ %475, %593 ]
  %600 = load i32, ptr %599, align 4, !tbaa !23
  %601 = add i32 %470, -1
  %602 = icmp ne i32 %601, 0
  %603 = icmp uge i32 %600, %80
  %604 = select i1 %602, i1 %603, i1 false
  br i1 %604, label %462, label %605, !llvm.loop !137

605:                                              ; preds = %594, %590, %593, %564, %453
  %606 = phi i32 [ %455, %453 ], [ %575, %564 ], [ %582, %593 ], [ %582, %590 ], [ %582, %594 ]
  %607 = phi i32 [ %86, %453 ], [ %570, %564 ], [ %583, %593 ], [ %583, %590 ], [ %583, %594 ]
  %608 = phi ptr [ %85, %453 ], [ %467, %564 ], [ %9, %593 ], [ %467, %590 ], [ %595, %594 ]
  %609 = phi ptr [ %84, %453 ], [ %466, %564 ], [ %466, %593 ], [ %9, %590 ], [ %596, %594 ]
  store i32 0, ptr %608, align 4, !tbaa !23
  store i32 0, ptr %609, align 4, !tbaa !23
  %610 = add i32 %607, -8
  store i32 %610, ptr %12, align 4, !tbaa !16
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
define internal i32 @ZSTD_btGetAllMatches_extDict_5(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %15, %3
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
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 5, i32 noundef 1)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !17

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !15
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !16
  %38 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !22
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !104
  %46 = load i64, ptr %3, align 1
  %47 = mul i64 %46, -3523014627271114752
  %48 = sub i32 64, %43
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = getelementptr inbounds i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !23
  %53 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !107
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !108
  %62 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !19
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %61, i64 %64
  %66 = getelementptr inbounds i8, ptr %37, i64 %64
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %68 = load i32, ptr %38, align 4, !tbaa !109
  %69 = getelementptr i8, ptr %1, i64 28
  %70 = load i32, ptr %69, align 4, !tbaa !103
  %71 = getelementptr i8, ptr %1, i64 40
  %72 = load i32, ptr %71, align 8, !tbaa !110
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
  %84 = getelementptr inbounds i32, ptr %54, i64 %83
  %85 = getelementptr inbounds i32, ptr %84, i64 1
  %86 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %87 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !111
  %89 = shl nuw i32 1, %88
  %90 = add i32 %7, -1
  %91 = zext i32 %90 to i64
  %92 = icmp ult i32 %6, -3
  %93 = trunc i64 %46 to i32
  br i1 %92, label %94, label %454

94:                                               ; preds = %35
  %95 = sub i32 %36, %63
  %96 = sub i32 %36, %79
  %97 = getelementptr inbounds i8, ptr %3, i64 4
  %98 = getelementptr inbounds i8, ptr %4, i64 -7
  %99 = icmp ugt ptr %98, %97
  %100 = getelementptr inbounds i8, ptr %4, i64 -3
  %101 = getelementptr inbounds i8, ptr %4, i64 -1
  %102 = ptrtoint ptr %97 to i64
  %103 = zext i32 %6 to i64
  %104 = icmp eq i32 %6, 3
  br i1 %104, label %105, label %108

105:                                              ; preds = %94
  %106 = load i32, ptr %5, align 4, !tbaa !23
  %107 = add i32 %106, -1
  br label %111

108:                                              ; preds = %94
  %109 = getelementptr inbounds i32, ptr %5, i64 %103
  %110 = load i32, ptr %109, align 4, !tbaa !23
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
  %121 = load i32, ptr %120, align 1, !tbaa !23
  %122 = icmp eq i32 %121, %93
  %123 = and i1 %117, %122
  br i1 %123, label %124, label %212

124:                                              ; preds = %116
  %125 = getelementptr inbounds i8, ptr %97, i64 %119
  br i1 %99, label %126, label %151

126:                                              ; preds = %124
  %127 = load i64, ptr %125, align 1, !tbaa !28
  %128 = load i64, ptr %97, align 1, !tbaa !28
  %129 = xor i64 %128, %127
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = tail call i64 @llvm.cttz.i64(i64 %129, i1 true), !range !112
  %133 = lshr i64 %132, 3
  br label %200

134:                                              ; preds = %126, %140
  %135 = phi ptr [ %138, %140 ], [ %125, %126 ]
  %136 = phi ptr [ %137, %140 ], [ %97, %126 ]
  %137 = getelementptr inbounds i8, ptr %136, i64 8
  %138 = getelementptr inbounds i8, ptr %135, i64 8
  %139 = icmp ult ptr %137, %98
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load i64, ptr %138, align 1, !tbaa !28
  %142 = load i64, ptr %137, align 1, !tbaa !28
  %143 = xor i64 %142, %141
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %134, label %145

145:                                              ; preds = %140
  %146 = tail call i64 @llvm.cttz.i64(i64 %143, i1 true), !range !112
  %147 = lshr i64 %146, 3
  %148 = getelementptr inbounds i8, ptr %137, i64 %147
  %149 = ptrtoint ptr %148 to i64
  %150 = sub i64 %149, %102
  br label %200

151:                                              ; preds = %134, %124
  %152 = phi ptr [ %125, %124 ], [ %138, %134 ]
  %153 = phi ptr [ %97, %124 ], [ %137, %134 ]
  %154 = icmp ult ptr %153, %100
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i32, ptr %152, align 1, !tbaa !23
  %157 = load i32, ptr %153, align 1, !tbaa !23
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = getelementptr inbounds i8, ptr %153, i64 4
  %161 = getelementptr inbounds i8, ptr %152, i64 4
  br label %162

162:                                              ; preds = %159, %155, %151
  %163 = phi ptr [ %161, %159 ], [ %152, %155 ], [ %152, %151 ]
  %164 = phi ptr [ %160, %159 ], [ %153, %155 ], [ %153, %151 ]
  %165 = icmp ult ptr %164, %101
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load i16, ptr %163, align 1, !tbaa !113
  %168 = load i16, ptr %164, align 1, !tbaa !113
  %169 = icmp eq i16 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = getelementptr inbounds i8, ptr %164, i64 2
  %172 = getelementptr inbounds i8, ptr %163, i64 2
  br label %173

173:                                              ; preds = %170, %166, %162
  %174 = phi ptr [ %172, %170 ], [ %163, %166 ], [ %163, %162 ]
  %175 = phi ptr [ %171, %170 ], [ %164, %166 ], [ %164, %162 ]
  %176 = icmp ult ptr %175, %4
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i8, ptr %174, align 1, !tbaa !41
  %179 = load i8, ptr %175, align 1, !tbaa !41
  %180 = icmp eq i8 %178, %179
  %181 = zext i1 %180 to i64
  %182 = getelementptr inbounds i8, ptr %175, i64 %181
  br label %183

183:                                              ; preds = %177, %173
  %184 = phi ptr [ %175, %173 ], [ %182, %177 ]
  %185 = ptrtoint ptr %184 to i64
  %186 = sub i64 %185, %102
  br label %200

187:                                              ; preds = %111
  %188 = zext i32 %113 to i64
  %189 = getelementptr inbounds i8, ptr %61, i64 %188
  %190 = icmp uge i32 %114, %96
  %191 = sub i32 %113, %63
  %192 = icmp ugt i32 %191, -4
  %193 = select i1 %190, i1 true, i1 %192
  br i1 %193, label %212, label %194

194:                                              ; preds = %187
  %195 = load i32, ptr %189, align 1, !tbaa !23
  %196 = icmp eq i32 %195, %93
  br i1 %196, label %197, label %212

197:                                              ; preds = %194
  %198 = getelementptr inbounds i8, ptr %189, i64 4
  %199 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %198, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  br label %200

200:                                              ; preds = %183, %145, %131, %197
  %201 = phi i64 [ %199, %197 ], [ %186, %183 ], [ %133, %131 ], [ %150, %145 ]
  %202 = trunc i64 %201 to i32
  %203 = add i32 %202, 4
  %204 = icmp ult i32 %90, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = zext i32 %203 to i64
  store i32 1, ptr %0, align 4, !tbaa !45
  %207 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %203, ptr %207, align 4, !tbaa !43
  %208 = icmp ule i32 %203, %41
  %209 = getelementptr inbounds i8, ptr %3, i64 %206
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
  %218 = getelementptr inbounds i32, ptr %5, i64 %215
  %219 = load i32, ptr %218, align 4, !tbaa !23
  br label %223

220:                                              ; preds = %212
  %221 = load i32, ptr %5, align 4, !tbaa !23
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
  %230 = getelementptr inbounds i8, ptr %61, i64 %229
  %231 = icmp uge i32 %226, %96
  %232 = sub i32 %225, %63
  %233 = icmp ugt i32 %232, -4
  %234 = select i1 %231, i1 true, i1 %233
  br i1 %234, label %320, label %235

235:                                              ; preds = %228
  %236 = load i32, ptr %3, align 1, !tbaa !23
  %237 = load i32, ptr %230, align 1, !tbaa !23
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %320

239:                                              ; preds = %235
  %240 = getelementptr inbounds i8, ptr %230, i64 4
  %241 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %240, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %242 = trunc i64 %241 to i32
  %243 = add i32 %242, 4
  br label %320

244:                                              ; preds = %223
  %245 = icmp uge i32 %225, %79
  %246 = load i32, ptr %3, align 1, !tbaa !23
  %247 = zext i32 %224 to i64
  %248 = sub nsw i64 0, %247
  %249 = getelementptr inbounds i8, ptr %3, i64 %248
  %250 = load i32, ptr %249, align 1, !tbaa !23
  %251 = icmp eq i32 %246, %250
  %252 = and i1 %245, %251
  br i1 %252, label %253, label %320

253:                                              ; preds = %244
  %254 = getelementptr inbounds i8, ptr %97, i64 %248
  br i1 %99, label %255, label %269

255:                                              ; preds = %253
  %256 = load i64, ptr %254, align 1, !tbaa !28
  %257 = load i64, ptr %97, align 1, !tbaa !28
  %258 = xor i64 %257, %256
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %255
  %261 = tail call i64 @llvm.cttz.i64(i64 %258, i1 true), !range !112
  %262 = lshr i64 %261, 3
  br label %316

263:                                              ; preds = %255, %305
  %264 = phi ptr [ %267, %305 ], [ %254, %255 ]
  %265 = phi ptr [ %266, %305 ], [ %97, %255 ]
  %266 = getelementptr inbounds i8, ptr %265, i64 8
  %267 = getelementptr inbounds i8, ptr %264, i64 8
  %268 = icmp ult ptr %266, %98
  br i1 %268, label %305, label %269

269:                                              ; preds = %263, %253
  %270 = phi ptr [ %254, %253 ], [ %267, %263 ]
  %271 = phi ptr [ %97, %253 ], [ %266, %263 ]
  %272 = icmp ult ptr %271, %100
  br i1 %272, label %273, label %280

273:                                              ; preds = %269
  %274 = load i32, ptr %270, align 1, !tbaa !23
  %275 = load i32, ptr %271, align 1, !tbaa !23
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = getelementptr inbounds i8, ptr %271, i64 4
  %279 = getelementptr inbounds i8, ptr %270, i64 4
  br label %280

280:                                              ; preds = %277, %273, %269
  %281 = phi ptr [ %279, %277 ], [ %270, %273 ], [ %270, %269 ]
  %282 = phi ptr [ %278, %277 ], [ %271, %273 ], [ %271, %269 ]
  %283 = icmp ult ptr %282, %101
  br i1 %283, label %284, label %291

284:                                              ; preds = %280
  %285 = load i16, ptr %281, align 1, !tbaa !113
  %286 = load i16, ptr %282, align 1, !tbaa !113
  %287 = icmp eq i16 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = getelementptr inbounds i8, ptr %282, i64 2
  %290 = getelementptr inbounds i8, ptr %281, i64 2
  br label %291

291:                                              ; preds = %288, %284, %280
  %292 = phi ptr [ %290, %288 ], [ %281, %284 ], [ %281, %280 ]
  %293 = phi ptr [ %289, %288 ], [ %282, %284 ], [ %282, %280 ]
  %294 = icmp ult ptr %293, %4
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = load i8, ptr %292, align 1, !tbaa !41
  %297 = load i8, ptr %293, align 1, !tbaa !41
  %298 = icmp eq i8 %296, %297
  %299 = zext i1 %298 to i64
  %300 = getelementptr inbounds i8, ptr %293, i64 %299
  br label %301

301:                                              ; preds = %295, %291
  %302 = phi ptr [ %293, %291 ], [ %300, %295 ]
  %303 = ptrtoint ptr %302 to i64
  %304 = sub i64 %303, %102
  br label %316

305:                                              ; preds = %263
  %306 = load i64, ptr %267, align 1, !tbaa !28
  %307 = load i64, ptr %266, align 1, !tbaa !28
  %308 = xor i64 %307, %306
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %263, label %310

310:                                              ; preds = %305
  %311 = tail call i64 @llvm.cttz.i64(i64 %308, i1 true), !range !112
  %312 = lshr i64 %311, 3
  %313 = getelementptr inbounds i8, ptr %266, i64 %312
  %314 = ptrtoint ptr %313 to i64
  %315 = sub i64 %314, %102
  br label %316

316:                                              ; preds = %310, %301, %260
  %317 = phi i64 [ %304, %301 ], [ %262, %260 ], [ %315, %310 ]
  %318 = trunc i64 %317 to i32
  %319 = add i32 %318, 4
  br label %320

320:                                              ; preds = %316, %244, %239, %235, %228
  %321 = phi i32 [ %319, %316 ], [ 0, %244 ], [ %243, %239 ], [ 0, %235 ], [ 0, %228 ]
  %322 = zext i32 %321 to i64
  %323 = icmp ult i64 %214, %322
  br i1 %323, label %324, label %333

324:                                              ; preds = %320
  %325 = zext nneg i32 %213 to i64
  %326 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %325
  store i32 2, ptr %326, align 4, !tbaa !45
  %327 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %325, i32 1
  store i32 %321, ptr %327, align 4, !tbaa !43
  %328 = add nuw nsw i32 %213, 1
  %329 = icmp ule i32 %321, %41
  %330 = getelementptr inbounds i8, ptr %3, i64 %322
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
  %339 = getelementptr inbounds i32, ptr %5, i64 %336
  %340 = load i32, ptr %339, align 4, !tbaa !23
  br label %344

341:                                              ; preds = %333
  %342 = load i32, ptr %5, align 4, !tbaa !23
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
  %351 = getelementptr inbounds i8, ptr %61, i64 %350
  %352 = icmp uge i32 %347, %96
  %353 = sub i32 %346, %63
  %354 = icmp ugt i32 %353, -4
  %355 = select i1 %352, i1 true, i1 %354
  br i1 %355, label %441, label %356

356:                                              ; preds = %349
  %357 = load i32, ptr %3, align 1, !tbaa !23
  %358 = load i32, ptr %351, align 1, !tbaa !23
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %441

360:                                              ; preds = %356
  %361 = getelementptr inbounds i8, ptr %351, i64 4
  %362 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %361, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %363 = trunc i64 %362 to i32
  %364 = add i32 %363, 4
  br label %441

365:                                              ; preds = %344
  %366 = icmp uge i32 %346, %79
  %367 = load i32, ptr %3, align 1, !tbaa !23
  %368 = zext i32 %345 to i64
  %369 = sub nsw i64 0, %368
  %370 = getelementptr inbounds i8, ptr %3, i64 %369
  %371 = load i32, ptr %370, align 1, !tbaa !23
  %372 = icmp eq i32 %367, %371
  %373 = and i1 %366, %372
  br i1 %373, label %374, label %441

374:                                              ; preds = %365
  %375 = getelementptr inbounds i8, ptr %97, i64 %369
  br i1 %99, label %376, label %390

376:                                              ; preds = %374
  %377 = load i64, ptr %375, align 1, !tbaa !28
  %378 = load i64, ptr %97, align 1, !tbaa !28
  %379 = xor i64 %378, %377
  %380 = icmp eq i64 %379, 0
  br i1 %380, label %384, label %381

381:                                              ; preds = %376
  %382 = tail call i64 @llvm.cttz.i64(i64 %379, i1 true), !range !112
  %383 = lshr i64 %382, 3
  br label %437

384:                                              ; preds = %376, %426
  %385 = phi ptr [ %388, %426 ], [ %375, %376 ]
  %386 = phi ptr [ %387, %426 ], [ %97, %376 ]
  %387 = getelementptr inbounds i8, ptr %386, i64 8
  %388 = getelementptr inbounds i8, ptr %385, i64 8
  %389 = icmp ult ptr %387, %98
  br i1 %389, label %426, label %390

390:                                              ; preds = %384, %374
  %391 = phi ptr [ %375, %374 ], [ %388, %384 ]
  %392 = phi ptr [ %97, %374 ], [ %387, %384 ]
  %393 = icmp ult ptr %392, %100
  br i1 %393, label %394, label %401

394:                                              ; preds = %390
  %395 = load i32, ptr %391, align 1, !tbaa !23
  %396 = load i32, ptr %392, align 1, !tbaa !23
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %401

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, ptr %392, i64 4
  %400 = getelementptr inbounds i8, ptr %391, i64 4
  br label %401

401:                                              ; preds = %398, %394, %390
  %402 = phi ptr [ %400, %398 ], [ %391, %394 ], [ %391, %390 ]
  %403 = phi ptr [ %399, %398 ], [ %392, %394 ], [ %392, %390 ]
  %404 = icmp ult ptr %403, %101
  br i1 %404, label %405, label %412

405:                                              ; preds = %401
  %406 = load i16, ptr %402, align 1, !tbaa !113
  %407 = load i16, ptr %403, align 1, !tbaa !113
  %408 = icmp eq i16 %406, %407
  br i1 %408, label %409, label %412

409:                                              ; preds = %405
  %410 = getelementptr inbounds i8, ptr %403, i64 2
  %411 = getelementptr inbounds i8, ptr %402, i64 2
  br label %412

412:                                              ; preds = %409, %405, %401
  %413 = phi ptr [ %411, %409 ], [ %402, %405 ], [ %402, %401 ]
  %414 = phi ptr [ %410, %409 ], [ %403, %405 ], [ %403, %401 ]
  %415 = icmp ult ptr %414, %4
  br i1 %415, label %416, label %422

416:                                              ; preds = %412
  %417 = load i8, ptr %413, align 1, !tbaa !41
  %418 = load i8, ptr %414, align 1, !tbaa !41
  %419 = icmp eq i8 %417, %418
  %420 = zext i1 %419 to i64
  %421 = getelementptr inbounds i8, ptr %414, i64 %420
  br label %422

422:                                              ; preds = %416, %412
  %423 = phi ptr [ %414, %412 ], [ %421, %416 ]
  %424 = ptrtoint ptr %423 to i64
  %425 = sub i64 %424, %102
  br label %437

426:                                              ; preds = %384
  %427 = load i64, ptr %388, align 1, !tbaa !28
  %428 = load i64, ptr %387, align 1, !tbaa !28
  %429 = xor i64 %428, %427
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %384, label %431

431:                                              ; preds = %426
  %432 = tail call i64 @llvm.cttz.i64(i64 %429, i1 true), !range !112
  %433 = lshr i64 %432, 3
  %434 = getelementptr inbounds i8, ptr %387, i64 %433
  %435 = ptrtoint ptr %434 to i64
  %436 = sub i64 %435, %102
  br label %437

437:                                              ; preds = %431, %422, %381
  %438 = phi i64 [ %425, %422 ], [ %383, %381 ], [ %436, %431 ]
  %439 = trunc i64 %438 to i32
  %440 = add i32 %439, 4
  br label %441

441:                                              ; preds = %437, %365, %360, %356, %349
  %442 = phi i32 [ %440, %437 ], [ 0, %365 ], [ %364, %360 ], [ 0, %356 ], [ 0, %349 ]
  %443 = zext i32 %442 to i64
  %444 = icmp ult i64 %335, %443
  br i1 %444, label %445, label %454

445:                                              ; preds = %441
  %446 = zext nneg i32 %334 to i64
  %447 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %446
  store i32 3, ptr %447, align 4, !tbaa !45
  %448 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %446, i32 1
  store i32 %442, ptr %448, align 4, !tbaa !43
  %449 = add nuw nsw i32 %334, 1
  %450 = icmp ule i32 %442, %41
  %451 = getelementptr inbounds i8, ptr %3, i64 %443
  %452 = icmp ne ptr %451, %4
  %453 = and i1 %450, %452
  br i1 %453, label %454, label %612

454:                                              ; preds = %441, %445, %35
  %455 = phi i64 [ %91, %35 ], [ %443, %445 ], [ %335, %441 ]
  %456 = phi i32 [ 0, %35 ], [ %449, %445 ], [ %334, %441 ]
  store i32 %36, ptr %51, align 4, !tbaa !23
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
  %476 = getelementptr inbounds i32, ptr %54, i64 %475
  %477 = tail call i64 @llvm.umin.i64(i64 %465, i64 %466)
  %478 = zext i32 %464 to i64
  %479 = add i64 %477, %478
  %480 = icmp ult i64 %479, %64
  %481 = getelementptr inbounds i8, ptr %3, i64 %477
  br i1 %480, label %552, label %482

482:                                              ; preds = %463
  %483 = getelementptr inbounds i8, ptr %37, i64 %478
  %484 = getelementptr inbounds i8, ptr %483, i64 %477
  %485 = icmp ugt ptr %459, %481
  br i1 %485, label %486, label %512

486:                                              ; preds = %482
  %487 = load i64, ptr %484, align 1, !tbaa !28
  %488 = load i64, ptr %481, align 1, !tbaa !28
  %489 = xor i64 %488, %487
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %494, label %491

491:                                              ; preds = %486
  %492 = tail call i64 @llvm.cttz.i64(i64 %489, i1 true), !range !112
  %493 = lshr i64 %492, 3
  br label %549

494:                                              ; preds = %486, %500
  %495 = phi ptr [ %498, %500 ], [ %484, %486 ]
  %496 = phi ptr [ %497, %500 ], [ %481, %486 ]
  %497 = getelementptr inbounds i8, ptr %496, i64 8
  %498 = getelementptr inbounds i8, ptr %495, i64 8
  %499 = icmp ult ptr %497, %459
  br i1 %499, label %500, label %512

500:                                              ; preds = %494
  %501 = load i64, ptr %498, align 1, !tbaa !28
  %502 = load i64, ptr %497, align 1, !tbaa !28
  %503 = xor i64 %502, %501
  %504 = icmp eq i64 %503, 0
  br i1 %504, label %494, label %505

505:                                              ; preds = %500
  %506 = tail call i64 @llvm.cttz.i64(i64 %503, i1 true), !range !112
  %507 = lshr i64 %506, 3
  %508 = getelementptr inbounds i8, ptr %497, i64 %507
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
  %517 = load i32, ptr %513, align 1, !tbaa !23
  %518 = load i32, ptr %514, align 1, !tbaa !23
  %519 = icmp eq i32 %517, %518
  br i1 %519, label %520, label %523

520:                                              ; preds = %516
  %521 = getelementptr inbounds i8, ptr %514, i64 4
  %522 = getelementptr inbounds i8, ptr %513, i64 4
  br label %523

523:                                              ; preds = %520, %516, %512
  %524 = phi ptr [ %522, %520 ], [ %513, %516 ], [ %513, %512 ]
  %525 = phi ptr [ %521, %520 ], [ %514, %516 ], [ %514, %512 ]
  %526 = icmp ult ptr %525, %461
  br i1 %526, label %527, label %534

527:                                              ; preds = %523
  %528 = load i16, ptr %524, align 1, !tbaa !113
  %529 = load i16, ptr %525, align 1, !tbaa !113
  %530 = icmp eq i16 %528, %529
  br i1 %530, label %531, label %534

531:                                              ; preds = %527
  %532 = getelementptr inbounds i8, ptr %525, i64 2
  %533 = getelementptr inbounds i8, ptr %524, i64 2
  br label %534

534:                                              ; preds = %531, %527, %523
  %535 = phi ptr [ %533, %531 ], [ %524, %527 ], [ %524, %523 ]
  %536 = phi ptr [ %532, %531 ], [ %525, %527 ], [ %525, %523 ]
  %537 = icmp ult ptr %536, %4
  br i1 %537, label %538, label %544

538:                                              ; preds = %534
  %539 = load i8, ptr %535, align 1, !tbaa !41
  %540 = load i8, ptr %536, align 1, !tbaa !41
  %541 = icmp eq i8 %539, %540
  %542 = zext i1 %541 to i64
  %543 = getelementptr inbounds i8, ptr %536, i64 %542
  br label %544

544:                                              ; preds = %538, %534
  %545 = phi ptr [ %536, %534 ], [ %543, %538 ]
  %546 = ptrtoint ptr %545 to i64
  %547 = ptrtoint ptr %481 to i64
  %548 = sub i64 %546, %547
  br label %549

549:                                              ; preds = %491, %505, %544
  %550 = phi i64 [ %548, %544 ], [ %493, %491 ], [ %511, %505 ]
  %551 = add i64 %550, %477
  br label %561

552:                                              ; preds = %463
  %553 = getelementptr inbounds i8, ptr %61, i64 %478
  %554 = getelementptr inbounds i8, ptr %553, i64 %477
  %555 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %481, ptr noundef %554, ptr noundef %4, ptr noundef nonnull %65, ptr noundef nonnull %66)
  %556 = add i64 %555, %477
  %557 = add i64 %556, %478
  %558 = icmp ult i64 %557, %64
  %559 = getelementptr inbounds i8, ptr %37, i64 %478
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
  %574 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %573
  store i32 %572, ptr %574, align 4, !tbaa !45
  %575 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %573, i32 1
  store i32 %569, ptr %575, align 4, !tbaa !43
  %576 = add i32 %470, 1
  %577 = icmp ugt i64 %563, 4096
  %578 = getelementptr inbounds i8, ptr %3, i64 %563
  %579 = icmp eq ptr %578, %4
  %580 = or i1 %577, %579
  br i1 %580, label %606, label %581

581:                                              ; preds = %565, %561
  %582 = phi i64 [ %563, %565 ], [ %472, %561 ]
  %583 = phi i32 [ %576, %565 ], [ %470, %561 ]
  %584 = phi i32 [ %571, %565 ], [ %469, %561 ]
  %585 = getelementptr inbounds i8, ptr %562, i64 %563
  %586 = load i8, ptr %585, align 1, !tbaa !41
  %587 = getelementptr inbounds i8, ptr %3, i64 %563
  %588 = load i8, ptr %587, align 1, !tbaa !41
  %589 = icmp ult i8 %586, %588
  %590 = icmp ugt i32 %464, %67
  br i1 %589, label %591, label %594

591:                                              ; preds = %581
  store i32 %464, ptr %467, align 4, !tbaa !23
  br i1 %590, label %592, label %606

592:                                              ; preds = %591
  %593 = getelementptr inbounds i32, ptr %476, i64 1
  br label %595

594:                                              ; preds = %581
  store i32 %464, ptr %468, align 4, !tbaa !23
  br i1 %590, label %595, label %606

595:                                              ; preds = %594, %592
  %596 = phi ptr [ %468, %592 ], [ %476, %594 ]
  %597 = phi ptr [ %593, %592 ], [ %467, %594 ]
  %598 = phi i64 [ %466, %592 ], [ %563, %594 ]
  %599 = phi i64 [ %563, %592 ], [ %465, %594 ]
  %600 = phi ptr [ %593, %592 ], [ %476, %594 ]
  %601 = load i32, ptr %600, align 4, !tbaa !23
  %602 = add i32 %471, -1
  %603 = icmp ne i32 %602, 0
  %604 = icmp uge i32 %601, %80
  %605 = select i1 %603, i1 %604, i1 false
  br i1 %605, label %463, label %606, !llvm.loop !137

606:                                              ; preds = %595, %591, %594, %565, %454
  %607 = phi i32 [ %456, %454 ], [ %576, %565 ], [ %583, %594 ], [ %583, %591 ], [ %583, %595 ]
  %608 = phi i32 [ %86, %454 ], [ %571, %565 ], [ %584, %594 ], [ %584, %591 ], [ %584, %595 ]
  %609 = phi ptr [ %85, %454 ], [ %468, %565 ], [ %9, %594 ], [ %468, %591 ], [ %596, %595 ]
  %610 = phi ptr [ %84, %454 ], [ %467, %565 ], [ %467, %594 ], [ %9, %591 ], [ %597, %595 ]
  store i32 0, ptr %609, align 4, !tbaa !23
  store i32 0, ptr %610, align 4, !tbaa !23
  %611 = add i32 %608, -8
  store i32 %611, ptr %12, align 4, !tbaa !16
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
define internal i32 @ZSTD_btGetAllMatches_extDict_6(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %15, %3
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
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 6, i32 noundef 1)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !17

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !15
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !16
  %38 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !22
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !104
  %46 = load i64, ptr %3, align 1
  %47 = mul i64 %46, -3523014627193847808
  %48 = sub i32 64, %43
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = getelementptr inbounds i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !23
  %53 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !107
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !108
  %62 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !19
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %61, i64 %64
  %66 = getelementptr inbounds i8, ptr %37, i64 %64
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %68 = load i32, ptr %38, align 4, !tbaa !109
  %69 = getelementptr i8, ptr %1, i64 28
  %70 = load i32, ptr %69, align 4, !tbaa !103
  %71 = getelementptr i8, ptr %1, i64 40
  %72 = load i32, ptr %71, align 8, !tbaa !110
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
  %84 = getelementptr inbounds i32, ptr %54, i64 %83
  %85 = getelementptr inbounds i32, ptr %84, i64 1
  %86 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %87 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !111
  %89 = shl nuw i32 1, %88
  %90 = add i32 %7, -1
  %91 = zext i32 %90 to i64
  %92 = icmp ult i32 %6, -3
  %93 = trunc i64 %46 to i32
  br i1 %92, label %94, label %454

94:                                               ; preds = %35
  %95 = sub i32 %36, %63
  %96 = sub i32 %36, %79
  %97 = getelementptr inbounds i8, ptr %3, i64 4
  %98 = getelementptr inbounds i8, ptr %4, i64 -7
  %99 = icmp ugt ptr %98, %97
  %100 = getelementptr inbounds i8, ptr %4, i64 -3
  %101 = getelementptr inbounds i8, ptr %4, i64 -1
  %102 = ptrtoint ptr %97 to i64
  %103 = zext i32 %6 to i64
  %104 = icmp eq i32 %6, 3
  br i1 %104, label %105, label %108

105:                                              ; preds = %94
  %106 = load i32, ptr %5, align 4, !tbaa !23
  %107 = add i32 %106, -1
  br label %111

108:                                              ; preds = %94
  %109 = getelementptr inbounds i32, ptr %5, i64 %103
  %110 = load i32, ptr %109, align 4, !tbaa !23
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
  %121 = load i32, ptr %120, align 1, !tbaa !23
  %122 = icmp eq i32 %121, %93
  %123 = and i1 %117, %122
  br i1 %123, label %124, label %212

124:                                              ; preds = %116
  %125 = getelementptr inbounds i8, ptr %97, i64 %119
  br i1 %99, label %126, label %151

126:                                              ; preds = %124
  %127 = load i64, ptr %125, align 1, !tbaa !28
  %128 = load i64, ptr %97, align 1, !tbaa !28
  %129 = xor i64 %128, %127
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = tail call i64 @llvm.cttz.i64(i64 %129, i1 true), !range !112
  %133 = lshr i64 %132, 3
  br label %200

134:                                              ; preds = %126, %140
  %135 = phi ptr [ %138, %140 ], [ %125, %126 ]
  %136 = phi ptr [ %137, %140 ], [ %97, %126 ]
  %137 = getelementptr inbounds i8, ptr %136, i64 8
  %138 = getelementptr inbounds i8, ptr %135, i64 8
  %139 = icmp ult ptr %137, %98
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load i64, ptr %138, align 1, !tbaa !28
  %142 = load i64, ptr %137, align 1, !tbaa !28
  %143 = xor i64 %142, %141
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %134, label %145

145:                                              ; preds = %140
  %146 = tail call i64 @llvm.cttz.i64(i64 %143, i1 true), !range !112
  %147 = lshr i64 %146, 3
  %148 = getelementptr inbounds i8, ptr %137, i64 %147
  %149 = ptrtoint ptr %148 to i64
  %150 = sub i64 %149, %102
  br label %200

151:                                              ; preds = %134, %124
  %152 = phi ptr [ %125, %124 ], [ %138, %134 ]
  %153 = phi ptr [ %97, %124 ], [ %137, %134 ]
  %154 = icmp ult ptr %153, %100
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i32, ptr %152, align 1, !tbaa !23
  %157 = load i32, ptr %153, align 1, !tbaa !23
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = getelementptr inbounds i8, ptr %153, i64 4
  %161 = getelementptr inbounds i8, ptr %152, i64 4
  br label %162

162:                                              ; preds = %159, %155, %151
  %163 = phi ptr [ %161, %159 ], [ %152, %155 ], [ %152, %151 ]
  %164 = phi ptr [ %160, %159 ], [ %153, %155 ], [ %153, %151 ]
  %165 = icmp ult ptr %164, %101
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load i16, ptr %163, align 1, !tbaa !113
  %168 = load i16, ptr %164, align 1, !tbaa !113
  %169 = icmp eq i16 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = getelementptr inbounds i8, ptr %164, i64 2
  %172 = getelementptr inbounds i8, ptr %163, i64 2
  br label %173

173:                                              ; preds = %170, %166, %162
  %174 = phi ptr [ %172, %170 ], [ %163, %166 ], [ %163, %162 ]
  %175 = phi ptr [ %171, %170 ], [ %164, %166 ], [ %164, %162 ]
  %176 = icmp ult ptr %175, %4
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i8, ptr %174, align 1, !tbaa !41
  %179 = load i8, ptr %175, align 1, !tbaa !41
  %180 = icmp eq i8 %178, %179
  %181 = zext i1 %180 to i64
  %182 = getelementptr inbounds i8, ptr %175, i64 %181
  br label %183

183:                                              ; preds = %177, %173
  %184 = phi ptr [ %175, %173 ], [ %182, %177 ]
  %185 = ptrtoint ptr %184 to i64
  %186 = sub i64 %185, %102
  br label %200

187:                                              ; preds = %111
  %188 = zext i32 %113 to i64
  %189 = getelementptr inbounds i8, ptr %61, i64 %188
  %190 = icmp uge i32 %114, %96
  %191 = sub i32 %113, %63
  %192 = icmp ugt i32 %191, -4
  %193 = select i1 %190, i1 true, i1 %192
  br i1 %193, label %212, label %194

194:                                              ; preds = %187
  %195 = load i32, ptr %189, align 1, !tbaa !23
  %196 = icmp eq i32 %195, %93
  br i1 %196, label %197, label %212

197:                                              ; preds = %194
  %198 = getelementptr inbounds i8, ptr %189, i64 4
  %199 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %198, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  br label %200

200:                                              ; preds = %183, %145, %131, %197
  %201 = phi i64 [ %199, %197 ], [ %186, %183 ], [ %133, %131 ], [ %150, %145 ]
  %202 = trunc i64 %201 to i32
  %203 = add i32 %202, 4
  %204 = icmp ult i32 %90, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = zext i32 %203 to i64
  store i32 1, ptr %0, align 4, !tbaa !45
  %207 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %203, ptr %207, align 4, !tbaa !43
  %208 = icmp ule i32 %203, %41
  %209 = getelementptr inbounds i8, ptr %3, i64 %206
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
  %218 = getelementptr inbounds i32, ptr %5, i64 %215
  %219 = load i32, ptr %218, align 4, !tbaa !23
  br label %223

220:                                              ; preds = %212
  %221 = load i32, ptr %5, align 4, !tbaa !23
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
  %230 = getelementptr inbounds i8, ptr %61, i64 %229
  %231 = icmp uge i32 %226, %96
  %232 = sub i32 %225, %63
  %233 = icmp ugt i32 %232, -4
  %234 = select i1 %231, i1 true, i1 %233
  br i1 %234, label %320, label %235

235:                                              ; preds = %228
  %236 = load i32, ptr %3, align 1, !tbaa !23
  %237 = load i32, ptr %230, align 1, !tbaa !23
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %320

239:                                              ; preds = %235
  %240 = getelementptr inbounds i8, ptr %230, i64 4
  %241 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %240, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %242 = trunc i64 %241 to i32
  %243 = add i32 %242, 4
  br label %320

244:                                              ; preds = %223
  %245 = icmp uge i32 %225, %79
  %246 = load i32, ptr %3, align 1, !tbaa !23
  %247 = zext i32 %224 to i64
  %248 = sub nsw i64 0, %247
  %249 = getelementptr inbounds i8, ptr %3, i64 %248
  %250 = load i32, ptr %249, align 1, !tbaa !23
  %251 = icmp eq i32 %246, %250
  %252 = and i1 %245, %251
  br i1 %252, label %253, label %320

253:                                              ; preds = %244
  %254 = getelementptr inbounds i8, ptr %97, i64 %248
  br i1 %99, label %255, label %269

255:                                              ; preds = %253
  %256 = load i64, ptr %254, align 1, !tbaa !28
  %257 = load i64, ptr %97, align 1, !tbaa !28
  %258 = xor i64 %257, %256
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %255
  %261 = tail call i64 @llvm.cttz.i64(i64 %258, i1 true), !range !112
  %262 = lshr i64 %261, 3
  br label %316

263:                                              ; preds = %255, %305
  %264 = phi ptr [ %267, %305 ], [ %254, %255 ]
  %265 = phi ptr [ %266, %305 ], [ %97, %255 ]
  %266 = getelementptr inbounds i8, ptr %265, i64 8
  %267 = getelementptr inbounds i8, ptr %264, i64 8
  %268 = icmp ult ptr %266, %98
  br i1 %268, label %305, label %269

269:                                              ; preds = %263, %253
  %270 = phi ptr [ %254, %253 ], [ %267, %263 ]
  %271 = phi ptr [ %97, %253 ], [ %266, %263 ]
  %272 = icmp ult ptr %271, %100
  br i1 %272, label %273, label %280

273:                                              ; preds = %269
  %274 = load i32, ptr %270, align 1, !tbaa !23
  %275 = load i32, ptr %271, align 1, !tbaa !23
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = getelementptr inbounds i8, ptr %271, i64 4
  %279 = getelementptr inbounds i8, ptr %270, i64 4
  br label %280

280:                                              ; preds = %277, %273, %269
  %281 = phi ptr [ %279, %277 ], [ %270, %273 ], [ %270, %269 ]
  %282 = phi ptr [ %278, %277 ], [ %271, %273 ], [ %271, %269 ]
  %283 = icmp ult ptr %282, %101
  br i1 %283, label %284, label %291

284:                                              ; preds = %280
  %285 = load i16, ptr %281, align 1, !tbaa !113
  %286 = load i16, ptr %282, align 1, !tbaa !113
  %287 = icmp eq i16 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = getelementptr inbounds i8, ptr %282, i64 2
  %290 = getelementptr inbounds i8, ptr %281, i64 2
  br label %291

291:                                              ; preds = %288, %284, %280
  %292 = phi ptr [ %290, %288 ], [ %281, %284 ], [ %281, %280 ]
  %293 = phi ptr [ %289, %288 ], [ %282, %284 ], [ %282, %280 ]
  %294 = icmp ult ptr %293, %4
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = load i8, ptr %292, align 1, !tbaa !41
  %297 = load i8, ptr %293, align 1, !tbaa !41
  %298 = icmp eq i8 %296, %297
  %299 = zext i1 %298 to i64
  %300 = getelementptr inbounds i8, ptr %293, i64 %299
  br label %301

301:                                              ; preds = %295, %291
  %302 = phi ptr [ %293, %291 ], [ %300, %295 ]
  %303 = ptrtoint ptr %302 to i64
  %304 = sub i64 %303, %102
  br label %316

305:                                              ; preds = %263
  %306 = load i64, ptr %267, align 1, !tbaa !28
  %307 = load i64, ptr %266, align 1, !tbaa !28
  %308 = xor i64 %307, %306
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %263, label %310

310:                                              ; preds = %305
  %311 = tail call i64 @llvm.cttz.i64(i64 %308, i1 true), !range !112
  %312 = lshr i64 %311, 3
  %313 = getelementptr inbounds i8, ptr %266, i64 %312
  %314 = ptrtoint ptr %313 to i64
  %315 = sub i64 %314, %102
  br label %316

316:                                              ; preds = %310, %301, %260
  %317 = phi i64 [ %304, %301 ], [ %262, %260 ], [ %315, %310 ]
  %318 = trunc i64 %317 to i32
  %319 = add i32 %318, 4
  br label %320

320:                                              ; preds = %316, %244, %239, %235, %228
  %321 = phi i32 [ %319, %316 ], [ 0, %244 ], [ %243, %239 ], [ 0, %235 ], [ 0, %228 ]
  %322 = zext i32 %321 to i64
  %323 = icmp ult i64 %214, %322
  br i1 %323, label %324, label %333

324:                                              ; preds = %320
  %325 = zext nneg i32 %213 to i64
  %326 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %325
  store i32 2, ptr %326, align 4, !tbaa !45
  %327 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %325, i32 1
  store i32 %321, ptr %327, align 4, !tbaa !43
  %328 = add nuw nsw i32 %213, 1
  %329 = icmp ule i32 %321, %41
  %330 = getelementptr inbounds i8, ptr %3, i64 %322
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
  %339 = getelementptr inbounds i32, ptr %5, i64 %336
  %340 = load i32, ptr %339, align 4, !tbaa !23
  br label %344

341:                                              ; preds = %333
  %342 = load i32, ptr %5, align 4, !tbaa !23
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
  %351 = getelementptr inbounds i8, ptr %61, i64 %350
  %352 = icmp uge i32 %347, %96
  %353 = sub i32 %346, %63
  %354 = icmp ugt i32 %353, -4
  %355 = select i1 %352, i1 true, i1 %354
  br i1 %355, label %441, label %356

356:                                              ; preds = %349
  %357 = load i32, ptr %3, align 1, !tbaa !23
  %358 = load i32, ptr %351, align 1, !tbaa !23
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %441

360:                                              ; preds = %356
  %361 = getelementptr inbounds i8, ptr %351, i64 4
  %362 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %361, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %363 = trunc i64 %362 to i32
  %364 = add i32 %363, 4
  br label %441

365:                                              ; preds = %344
  %366 = icmp uge i32 %346, %79
  %367 = load i32, ptr %3, align 1, !tbaa !23
  %368 = zext i32 %345 to i64
  %369 = sub nsw i64 0, %368
  %370 = getelementptr inbounds i8, ptr %3, i64 %369
  %371 = load i32, ptr %370, align 1, !tbaa !23
  %372 = icmp eq i32 %367, %371
  %373 = and i1 %366, %372
  br i1 %373, label %374, label %441

374:                                              ; preds = %365
  %375 = getelementptr inbounds i8, ptr %97, i64 %369
  br i1 %99, label %376, label %390

376:                                              ; preds = %374
  %377 = load i64, ptr %375, align 1, !tbaa !28
  %378 = load i64, ptr %97, align 1, !tbaa !28
  %379 = xor i64 %378, %377
  %380 = icmp eq i64 %379, 0
  br i1 %380, label %384, label %381

381:                                              ; preds = %376
  %382 = tail call i64 @llvm.cttz.i64(i64 %379, i1 true), !range !112
  %383 = lshr i64 %382, 3
  br label %437

384:                                              ; preds = %376, %426
  %385 = phi ptr [ %388, %426 ], [ %375, %376 ]
  %386 = phi ptr [ %387, %426 ], [ %97, %376 ]
  %387 = getelementptr inbounds i8, ptr %386, i64 8
  %388 = getelementptr inbounds i8, ptr %385, i64 8
  %389 = icmp ult ptr %387, %98
  br i1 %389, label %426, label %390

390:                                              ; preds = %384, %374
  %391 = phi ptr [ %375, %374 ], [ %388, %384 ]
  %392 = phi ptr [ %97, %374 ], [ %387, %384 ]
  %393 = icmp ult ptr %392, %100
  br i1 %393, label %394, label %401

394:                                              ; preds = %390
  %395 = load i32, ptr %391, align 1, !tbaa !23
  %396 = load i32, ptr %392, align 1, !tbaa !23
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %401

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, ptr %392, i64 4
  %400 = getelementptr inbounds i8, ptr %391, i64 4
  br label %401

401:                                              ; preds = %398, %394, %390
  %402 = phi ptr [ %400, %398 ], [ %391, %394 ], [ %391, %390 ]
  %403 = phi ptr [ %399, %398 ], [ %392, %394 ], [ %392, %390 ]
  %404 = icmp ult ptr %403, %101
  br i1 %404, label %405, label %412

405:                                              ; preds = %401
  %406 = load i16, ptr %402, align 1, !tbaa !113
  %407 = load i16, ptr %403, align 1, !tbaa !113
  %408 = icmp eq i16 %406, %407
  br i1 %408, label %409, label %412

409:                                              ; preds = %405
  %410 = getelementptr inbounds i8, ptr %403, i64 2
  %411 = getelementptr inbounds i8, ptr %402, i64 2
  br label %412

412:                                              ; preds = %409, %405, %401
  %413 = phi ptr [ %411, %409 ], [ %402, %405 ], [ %402, %401 ]
  %414 = phi ptr [ %410, %409 ], [ %403, %405 ], [ %403, %401 ]
  %415 = icmp ult ptr %414, %4
  br i1 %415, label %416, label %422

416:                                              ; preds = %412
  %417 = load i8, ptr %413, align 1, !tbaa !41
  %418 = load i8, ptr %414, align 1, !tbaa !41
  %419 = icmp eq i8 %417, %418
  %420 = zext i1 %419 to i64
  %421 = getelementptr inbounds i8, ptr %414, i64 %420
  br label %422

422:                                              ; preds = %416, %412
  %423 = phi ptr [ %414, %412 ], [ %421, %416 ]
  %424 = ptrtoint ptr %423 to i64
  %425 = sub i64 %424, %102
  br label %437

426:                                              ; preds = %384
  %427 = load i64, ptr %388, align 1, !tbaa !28
  %428 = load i64, ptr %387, align 1, !tbaa !28
  %429 = xor i64 %428, %427
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %384, label %431

431:                                              ; preds = %426
  %432 = tail call i64 @llvm.cttz.i64(i64 %429, i1 true), !range !112
  %433 = lshr i64 %432, 3
  %434 = getelementptr inbounds i8, ptr %387, i64 %433
  %435 = ptrtoint ptr %434 to i64
  %436 = sub i64 %435, %102
  br label %437

437:                                              ; preds = %431, %422, %381
  %438 = phi i64 [ %425, %422 ], [ %383, %381 ], [ %436, %431 ]
  %439 = trunc i64 %438 to i32
  %440 = add i32 %439, 4
  br label %441

441:                                              ; preds = %437, %365, %360, %356, %349
  %442 = phi i32 [ %440, %437 ], [ 0, %365 ], [ %364, %360 ], [ 0, %356 ], [ 0, %349 ]
  %443 = zext i32 %442 to i64
  %444 = icmp ult i64 %335, %443
  br i1 %444, label %445, label %454

445:                                              ; preds = %441
  %446 = zext nneg i32 %334 to i64
  %447 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %446
  store i32 3, ptr %447, align 4, !tbaa !45
  %448 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %446, i32 1
  store i32 %442, ptr %448, align 4, !tbaa !43
  %449 = add nuw nsw i32 %334, 1
  %450 = icmp ule i32 %442, %41
  %451 = getelementptr inbounds i8, ptr %3, i64 %443
  %452 = icmp ne ptr %451, %4
  %453 = and i1 %450, %452
  br i1 %453, label %454, label %612

454:                                              ; preds = %441, %445, %35
  %455 = phi i64 [ %91, %35 ], [ %443, %445 ], [ %335, %441 ]
  %456 = phi i32 [ 0, %35 ], [ %449, %445 ], [ %334, %441 ]
  store i32 %36, ptr %51, align 4, !tbaa !23
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
  %476 = getelementptr inbounds i32, ptr %54, i64 %475
  %477 = tail call i64 @llvm.umin.i64(i64 %465, i64 %466)
  %478 = zext i32 %464 to i64
  %479 = add i64 %477, %478
  %480 = icmp ult i64 %479, %64
  %481 = getelementptr inbounds i8, ptr %3, i64 %477
  br i1 %480, label %552, label %482

482:                                              ; preds = %463
  %483 = getelementptr inbounds i8, ptr %37, i64 %478
  %484 = getelementptr inbounds i8, ptr %483, i64 %477
  %485 = icmp ugt ptr %459, %481
  br i1 %485, label %486, label %512

486:                                              ; preds = %482
  %487 = load i64, ptr %484, align 1, !tbaa !28
  %488 = load i64, ptr %481, align 1, !tbaa !28
  %489 = xor i64 %488, %487
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %494, label %491

491:                                              ; preds = %486
  %492 = tail call i64 @llvm.cttz.i64(i64 %489, i1 true), !range !112
  %493 = lshr i64 %492, 3
  br label %549

494:                                              ; preds = %486, %500
  %495 = phi ptr [ %498, %500 ], [ %484, %486 ]
  %496 = phi ptr [ %497, %500 ], [ %481, %486 ]
  %497 = getelementptr inbounds i8, ptr %496, i64 8
  %498 = getelementptr inbounds i8, ptr %495, i64 8
  %499 = icmp ult ptr %497, %459
  br i1 %499, label %500, label %512

500:                                              ; preds = %494
  %501 = load i64, ptr %498, align 1, !tbaa !28
  %502 = load i64, ptr %497, align 1, !tbaa !28
  %503 = xor i64 %502, %501
  %504 = icmp eq i64 %503, 0
  br i1 %504, label %494, label %505

505:                                              ; preds = %500
  %506 = tail call i64 @llvm.cttz.i64(i64 %503, i1 true), !range !112
  %507 = lshr i64 %506, 3
  %508 = getelementptr inbounds i8, ptr %497, i64 %507
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
  %517 = load i32, ptr %513, align 1, !tbaa !23
  %518 = load i32, ptr %514, align 1, !tbaa !23
  %519 = icmp eq i32 %517, %518
  br i1 %519, label %520, label %523

520:                                              ; preds = %516
  %521 = getelementptr inbounds i8, ptr %514, i64 4
  %522 = getelementptr inbounds i8, ptr %513, i64 4
  br label %523

523:                                              ; preds = %520, %516, %512
  %524 = phi ptr [ %522, %520 ], [ %513, %516 ], [ %513, %512 ]
  %525 = phi ptr [ %521, %520 ], [ %514, %516 ], [ %514, %512 ]
  %526 = icmp ult ptr %525, %461
  br i1 %526, label %527, label %534

527:                                              ; preds = %523
  %528 = load i16, ptr %524, align 1, !tbaa !113
  %529 = load i16, ptr %525, align 1, !tbaa !113
  %530 = icmp eq i16 %528, %529
  br i1 %530, label %531, label %534

531:                                              ; preds = %527
  %532 = getelementptr inbounds i8, ptr %525, i64 2
  %533 = getelementptr inbounds i8, ptr %524, i64 2
  br label %534

534:                                              ; preds = %531, %527, %523
  %535 = phi ptr [ %533, %531 ], [ %524, %527 ], [ %524, %523 ]
  %536 = phi ptr [ %532, %531 ], [ %525, %527 ], [ %525, %523 ]
  %537 = icmp ult ptr %536, %4
  br i1 %537, label %538, label %544

538:                                              ; preds = %534
  %539 = load i8, ptr %535, align 1, !tbaa !41
  %540 = load i8, ptr %536, align 1, !tbaa !41
  %541 = icmp eq i8 %539, %540
  %542 = zext i1 %541 to i64
  %543 = getelementptr inbounds i8, ptr %536, i64 %542
  br label %544

544:                                              ; preds = %538, %534
  %545 = phi ptr [ %536, %534 ], [ %543, %538 ]
  %546 = ptrtoint ptr %545 to i64
  %547 = ptrtoint ptr %481 to i64
  %548 = sub i64 %546, %547
  br label %549

549:                                              ; preds = %491, %505, %544
  %550 = phi i64 [ %548, %544 ], [ %493, %491 ], [ %511, %505 ]
  %551 = add i64 %550, %477
  br label %561

552:                                              ; preds = %463
  %553 = getelementptr inbounds i8, ptr %61, i64 %478
  %554 = getelementptr inbounds i8, ptr %553, i64 %477
  %555 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %481, ptr noundef %554, ptr noundef %4, ptr noundef nonnull %65, ptr noundef nonnull %66)
  %556 = add i64 %555, %477
  %557 = add i64 %556, %478
  %558 = icmp ult i64 %557, %64
  %559 = getelementptr inbounds i8, ptr %37, i64 %478
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
  %574 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %573
  store i32 %572, ptr %574, align 4, !tbaa !45
  %575 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %573, i32 1
  store i32 %569, ptr %575, align 4, !tbaa !43
  %576 = add i32 %470, 1
  %577 = icmp ugt i64 %563, 4096
  %578 = getelementptr inbounds i8, ptr %3, i64 %563
  %579 = icmp eq ptr %578, %4
  %580 = or i1 %577, %579
  br i1 %580, label %606, label %581

581:                                              ; preds = %565, %561
  %582 = phi i64 [ %563, %565 ], [ %472, %561 ]
  %583 = phi i32 [ %576, %565 ], [ %470, %561 ]
  %584 = phi i32 [ %571, %565 ], [ %469, %561 ]
  %585 = getelementptr inbounds i8, ptr %562, i64 %563
  %586 = load i8, ptr %585, align 1, !tbaa !41
  %587 = getelementptr inbounds i8, ptr %3, i64 %563
  %588 = load i8, ptr %587, align 1, !tbaa !41
  %589 = icmp ult i8 %586, %588
  %590 = icmp ugt i32 %464, %67
  br i1 %589, label %591, label %594

591:                                              ; preds = %581
  store i32 %464, ptr %467, align 4, !tbaa !23
  br i1 %590, label %592, label %606

592:                                              ; preds = %591
  %593 = getelementptr inbounds i32, ptr %476, i64 1
  br label %595

594:                                              ; preds = %581
  store i32 %464, ptr %468, align 4, !tbaa !23
  br i1 %590, label %595, label %606

595:                                              ; preds = %594, %592
  %596 = phi ptr [ %468, %592 ], [ %476, %594 ]
  %597 = phi ptr [ %593, %592 ], [ %467, %594 ]
  %598 = phi i64 [ %466, %592 ], [ %563, %594 ]
  %599 = phi i64 [ %563, %592 ], [ %465, %594 ]
  %600 = phi ptr [ %593, %592 ], [ %476, %594 ]
  %601 = load i32, ptr %600, align 4, !tbaa !23
  %602 = add i32 %471, -1
  %603 = icmp ne i32 %602, 0
  %604 = icmp uge i32 %601, %80
  %605 = select i1 %603, i1 %604, i1 false
  br i1 %605, label %463, label %606, !llvm.loop !137

606:                                              ; preds = %595, %591, %594, %565, %454
  %607 = phi i32 [ %456, %454 ], [ %576, %565 ], [ %583, %594 ], [ %583, %591 ], [ %583, %595 ]
  %608 = phi i32 [ %86, %454 ], [ %571, %565 ], [ %584, %594 ], [ %584, %591 ], [ %584, %595 ]
  %609 = phi ptr [ %85, %454 ], [ %468, %565 ], [ %9, %594 ], [ %468, %591 ], [ %596, %595 ]
  %610 = phi ptr [ %84, %454 ], [ %467, %565 ], [ %467, %594 ], [ %9, %591 ], [ %597, %595 ]
  store i32 0, ptr %609, align 4, !tbaa !23
  store i32 0, ptr %610, align 4, !tbaa !23
  %611 = add i32 %608, -8
  store i32 %611, ptr %12, align 4, !tbaa !16
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
define internal i32 @ZSTD_btGetAllMatches_dictMatchState_3(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %15, %3
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
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 3, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !17

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !15
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi i64 [ %33, %30 ], [ %20, %17 ]
  %38 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !16
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16
  %40 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !22
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 4095)
  %43 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !105
  %45 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !104
  %47 = load i32, ptr %3, align 1, !tbaa !23
  %48 = mul i32 %47, -1640531535
  %49 = sub i32 32, %44
  %50 = lshr i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %46, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !23
  %54 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !106
  %56 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !107
  %58 = add i32 %57, -1
  %59 = shl nsw i32 -1, %58
  %60 = xor i32 %59, -1
  %61 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !19
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %38, i64 %63
  %65 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %60)
  %66 = load i32, ptr %39, align 4, !tbaa !109
  %67 = getelementptr i8, ptr %1, i64 28
  %68 = load i32, ptr %67, align 4, !tbaa !103
  %69 = getelementptr i8, ptr %1, i64 40
  %70 = load i32, ptr %69, align 8, !tbaa !110
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
  %82 = getelementptr inbounds i32, ptr %55, i64 %81
  %83 = getelementptr inbounds i32, ptr %82, i64 1
  %84 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %85 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !111
  %87 = shl nuw i32 1, %86
  %88 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 15
  %89 = load ptr, ptr %88, align 8, !tbaa !140
  %90 = getelementptr inbounds %struct.ZSTD_window_t, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !15
  %92 = load ptr, ptr %89, align 8, !tbaa !141
  %93 = ptrtoint ptr %92 to i64
  %94 = ptrtoint ptr %91 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.ZSTD_window_t, ptr %89, i64 0, i32 4
  %98 = load i32, ptr %97, align 4, !tbaa !103
  %99 = sub i32 %77, %96
  %100 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %89, i64 0, i32 16, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !105
  %102 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %89, i64 0, i32 16, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !107
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
  %122 = getelementptr inbounds i8, ptr %3, i64 3
  %123 = getelementptr inbounds i8, ptr %4, i64 -7
  %124 = icmp ugt ptr %123, %122
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
  %136 = load i32, ptr %5, align 4, !tbaa !23
  %137 = add i32 %136, -1
  br label %141

138:                                              ; preds = %130
  %139 = getelementptr inbounds i32, ptr %5, i64 %131
  %140 = load i32, ptr %139, align 4, !tbaa !23
  br label %141

141:                                              ; preds = %138, %135
  %142 = phi i32 [ %137, %135 ], [ %140, %138 ]
  %143 = sub i32 %36, %142
  %144 = add i32 %142, -1
  %145 = icmp ult i32 %144, %116
  br i1 %145, label %146, label %224

146:                                              ; preds = %141
  %147 = icmp uge i32 %143, %77
  %148 = load i32, ptr %3, align 1, !tbaa !23
  %149 = zext i32 %142 to i64
  %150 = sub nsw i64 0, %149
  %151 = getelementptr inbounds i8, ptr %3, i64 %150
  %152 = load i32, ptr %151, align 1, !tbaa !23
  %153 = xor i32 %152, %148
  %154 = and i32 %153, 16777215
  %155 = icmp eq i32 %154, 0
  %156 = and i1 %147, %155
  br i1 %156, label %157, label %242

157:                                              ; preds = %146
  %158 = getelementptr inbounds i8, ptr %122, i64 %150
  br i1 %124, label %159, label %184

159:                                              ; preds = %157
  %160 = load i64, ptr %158, align 1, !tbaa !28
  %161 = load i64, ptr %122, align 1, !tbaa !28
  %162 = xor i64 %161, %160
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  %165 = tail call i64 @llvm.cttz.i64(i64 %162, i1 true), !range !112
  %166 = lshr i64 %165, 3
  br label %220

167:                                              ; preds = %159, %173
  %168 = phi ptr [ %171, %173 ], [ %158, %159 ]
  %169 = phi ptr [ %170, %173 ], [ %122, %159 ]
  %170 = getelementptr inbounds i8, ptr %169, i64 8
  %171 = getelementptr inbounds i8, ptr %168, i64 8
  %172 = icmp ult ptr %170, %123
  br i1 %172, label %173, label %184

173:                                              ; preds = %167
  %174 = load i64, ptr %171, align 1, !tbaa !28
  %175 = load i64, ptr %170, align 1, !tbaa !28
  %176 = xor i64 %175, %174
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %167, label %178

178:                                              ; preds = %173
  %179 = tail call i64 @llvm.cttz.i64(i64 %176, i1 true), !range !112
  %180 = lshr i64 %179, 3
  %181 = getelementptr inbounds i8, ptr %170, i64 %180
  %182 = ptrtoint ptr %181 to i64
  %183 = sub i64 %182, %127
  br label %220

184:                                              ; preds = %167, %157
  %185 = phi ptr [ %158, %157 ], [ %171, %167 ]
  %186 = phi ptr [ %122, %157 ], [ %170, %167 ]
  %187 = icmp ult ptr %186, %125
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load i32, ptr %185, align 1, !tbaa !23
  %190 = load i32, ptr %186, align 1, !tbaa !23
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, ptr %186, i64 4
  %194 = getelementptr inbounds i8, ptr %185, i64 4
  br label %195

195:                                              ; preds = %192, %188, %184
  %196 = phi ptr [ %194, %192 ], [ %185, %188 ], [ %185, %184 ]
  %197 = phi ptr [ %193, %192 ], [ %186, %188 ], [ %186, %184 ]
  %198 = icmp ult ptr %197, %126
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = load i16, ptr %196, align 1, !tbaa !113
  %201 = load i16, ptr %197, align 1, !tbaa !113
  %202 = icmp eq i16 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = getelementptr inbounds i8, ptr %197, i64 2
  %205 = getelementptr inbounds i8, ptr %196, i64 2
  br label %206

206:                                              ; preds = %203, %199, %195
  %207 = phi ptr [ %205, %203 ], [ %196, %199 ], [ %196, %195 ]
  %208 = phi ptr [ %204, %203 ], [ %197, %199 ], [ %197, %195 ]
  %209 = icmp ult ptr %208, %4
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = load i8, ptr %207, align 1, !tbaa !41
  %212 = load i8, ptr %208, align 1, !tbaa !41
  %213 = icmp eq i8 %211, %212
  %214 = zext i1 %213 to i64
  %215 = getelementptr inbounds i8, ptr %208, i64 %214
  br label %216

216:                                              ; preds = %210, %206
  %217 = phi ptr [ %208, %206 ], [ %215, %210 ]
  %218 = ptrtoint ptr %217 to i64
  %219 = sub i64 %218, %127
  br label %220

220:                                              ; preds = %164, %178, %216
  %221 = phi i64 [ %219, %216 ], [ %166, %164 ], [ %183, %178 ]
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
  %232 = load i32, ptr %3, align 1, !tbaa !23
  %233 = load i32, ptr %226, align 1, !tbaa !23
  %234 = xor i32 %233, %232
  %235 = and i32 %234, 16777215
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %231
  %238 = getelementptr inbounds i8, ptr %226, i64 3
  %239 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %122, ptr noundef nonnull %238, ptr noundef %4, ptr noundef %92, ptr noundef %64)
  %240 = trunc i64 %239 to i32
  %241 = add i32 %240, 3
  br label %242

242:                                              ; preds = %237, %231, %224, %220, %146
  %243 = phi i32 [ %223, %220 ], [ 0, %146 ], [ %241, %237 ], [ 0, %231 ], [ 0, %224 ]
  %244 = zext i32 %243 to i64
  %245 = icmp ult i64 %133, %244
  br i1 %245, label %246, label %258

246:                                              ; preds = %242
  %247 = zext i32 %132 to i64
  %248 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %247
  %249 = trunc i64 %131 to i32
  %250 = sub i32 %249, %6
  %251 = add i32 %250, 1
  store i32 %251, ptr %248, align 4, !tbaa !45
  %252 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %247, i32 1
  store i32 %243, ptr %252, align 4, !tbaa !43
  %253 = add i32 %132, 1
  %254 = icmp ule i32 %243, %42
  %255 = getelementptr inbounds i8, ptr %3, i64 %244
  %256 = icmp ne ptr %255, %4
  %257 = and i1 %254, %256
  br i1 %257, label %258, label %660

258:                                              ; preds = %242, %246
  %259 = phi i32 [ %253, %246 ], [ %132, %242 ]
  %260 = phi i64 [ %244, %246 ], [ %133, %242 ]
  %261 = add nuw nsw i64 %131, 1
  %262 = icmp eq i64 %261, %129
  br i1 %262, label %263, label %130, !llvm.loop !138

263:                                              ; preds = %258, %35
  %264 = phi i64 [ %112, %35 ], [ %260, %258 ]
  %265 = phi i32 [ 0, %35 ], [ %259, %258 ]
  %266 = icmp ult i64 %264, 3
  br i1 %266, label %267, label %426

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 10
  %269 = load ptr, ptr %268, align 8, !tbaa !133
  %270 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 3
  %271 = load i32, ptr %270, align 8, !tbaa !134
  %272 = load i32, ptr %2, align 4, !tbaa !23
  %273 = load i32, ptr %3, align 1, !tbaa !23
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
  %285 = getelementptr inbounds i8, ptr %38, i64 %283
  %286 = load i32, ptr %285, align 1, !tbaa !23
  %287 = mul i32 %286, 900185344
  %288 = lshr i32 %287, %274
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds i32, ptr %269, i64 %289
  %291 = trunc i64 %283 to i32
  store i32 %291, ptr %290, align 4, !tbaa !23
  %292 = add nuw nsw i64 %283, 1
  %293 = add i64 %284, 1
  %294 = icmp eq i64 %293, %280
  br i1 %294, label %295, label %282, !llvm.loop !142

295:                                              ; preds = %282, %276
  %296 = phi i64 [ %277, %276 ], [ %292, %282 ]
  %297 = sub nsw i64 %277, %278
  %298 = icmp ugt i64 %297, -4
  br i1 %298, label %334, label %299

299:                                              ; preds = %295, %299
  %300 = phi i64 [ %332, %299 ], [ %296, %295 ]
  %301 = getelementptr inbounds i8, ptr %38, i64 %300
  %302 = load i32, ptr %301, align 1, !tbaa !23
  %303 = mul i32 %302, 900185344
  %304 = lshr i32 %303, %274
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds i32, ptr %269, i64 %305
  %307 = trunc i64 %300 to i32
  store i32 %307, ptr %306, align 4, !tbaa !23
  %308 = add nuw nsw i64 %300, 1
  %309 = getelementptr inbounds i8, ptr %38, i64 %308
  %310 = load i32, ptr %309, align 1, !tbaa !23
  %311 = mul i32 %310, 900185344
  %312 = lshr i32 %311, %274
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds i32, ptr %269, i64 %313
  %315 = trunc i64 %308 to i32
  store i32 %315, ptr %314, align 4, !tbaa !23
  %316 = add nuw nsw i64 %300, 2
  %317 = getelementptr inbounds i8, ptr %38, i64 %316
  %318 = load i32, ptr %317, align 1, !tbaa !23
  %319 = mul i32 %318, 900185344
  %320 = lshr i32 %319, %274
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i32, ptr %269, i64 %321
  %323 = trunc i64 %316 to i32
  store i32 %323, ptr %322, align 4, !tbaa !23
  %324 = add nuw nsw i64 %300, 3
  %325 = getelementptr inbounds i8, ptr %38, i64 %324
  %326 = load i32, ptr %325, align 1, !tbaa !23
  %327 = mul i32 %326, 900185344
  %328 = lshr i32 %327, %274
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds i32, ptr %269, i64 %329
  %331 = trunc i64 %324 to i32
  store i32 %331, ptr %330, align 4, !tbaa !23
  %332 = add nuw nsw i64 %300, 4
  %333 = icmp eq i64 %332, %278
  br i1 %333, label %334, label %299, !llvm.loop !136

334:                                              ; preds = %295, %299, %267
  %335 = mul i32 %273, 900185344
  %336 = lshr i32 %335, %274
  %337 = zext i32 %336 to i64
  store i32 %36, ptr %2, align 4, !tbaa !23
  %338 = getelementptr inbounds i32, ptr %269, i64 %337
  %339 = load i32, ptr %338, align 4, !tbaa !23
  %340 = icmp uge i32 %339, %78
  %341 = sub i32 %36, %339
  %342 = icmp ult i32 %341, 262144
  %343 = and i1 %340, %342
  br i1 %343, label %344, label %426

344:                                              ; preds = %334
  %345 = zext i32 %339 to i64
  %346 = getelementptr inbounds i8, ptr %38, i64 %345
  %347 = getelementptr inbounds i8, ptr %4, i64 -7
  %348 = icmp ugt ptr %347, %3
  br i1 %348, label %349, label %374

349:                                              ; preds = %344
  %350 = load i64, ptr %346, align 1, !tbaa !28
  %351 = load i64, ptr %3, align 1, !tbaa !28
  %352 = xor i64 %351, %350
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %357, label %354

354:                                              ; preds = %349
  %355 = tail call i64 @llvm.cttz.i64(i64 %352, i1 true), !range !112
  %356 = lshr i64 %355, 3
  br label %412

357:                                              ; preds = %349, %363
  %358 = phi ptr [ %361, %363 ], [ %346, %349 ]
  %359 = phi ptr [ %360, %363 ], [ %3, %349 ]
  %360 = getelementptr inbounds i8, ptr %359, i64 8
  %361 = getelementptr inbounds i8, ptr %358, i64 8
  %362 = icmp ult ptr %360, %347
  br i1 %362, label %363, label %374

363:                                              ; preds = %357
  %364 = load i64, ptr %361, align 1, !tbaa !28
  %365 = load i64, ptr %360, align 1, !tbaa !28
  %366 = xor i64 %365, %364
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %357, label %368

368:                                              ; preds = %363
  %369 = tail call i64 @llvm.cttz.i64(i64 %366, i1 true), !range !112
  %370 = lshr i64 %369, 3
  %371 = getelementptr inbounds i8, ptr %360, i64 %370
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
  %380 = load i32, ptr %375, align 1, !tbaa !23
  %381 = load i32, ptr %376, align 1, !tbaa !23
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %386

383:                                              ; preds = %379
  %384 = getelementptr inbounds i8, ptr %376, i64 4
  %385 = getelementptr inbounds i8, ptr %375, i64 4
  br label %386

386:                                              ; preds = %383, %379, %374
  %387 = phi ptr [ %385, %383 ], [ %375, %379 ], [ %375, %374 ]
  %388 = phi ptr [ %384, %383 ], [ %376, %379 ], [ %376, %374 ]
  %389 = getelementptr inbounds i8, ptr %4, i64 -1
  %390 = icmp ult ptr %388, %389
  br i1 %390, label %391, label %398

391:                                              ; preds = %386
  %392 = load i16, ptr %387, align 1, !tbaa !113
  %393 = load i16, ptr %388, align 1, !tbaa !113
  %394 = icmp eq i16 %392, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %391
  %396 = getelementptr inbounds i8, ptr %388, i64 2
  %397 = getelementptr inbounds i8, ptr %387, i64 2
  br label %398

398:                                              ; preds = %395, %391, %386
  %399 = phi ptr [ %397, %395 ], [ %387, %391 ], [ %387, %386 ]
  %400 = phi ptr [ %396, %395 ], [ %388, %391 ], [ %388, %386 ]
  %401 = icmp ult ptr %400, %4
  br i1 %401, label %402, label %408

402:                                              ; preds = %398
  %403 = load i8, ptr %399, align 1, !tbaa !41
  %404 = load i8, ptr %400, align 1, !tbaa !41
  %405 = icmp eq i8 %403, %404
  %406 = zext i1 %405 to i64
  %407 = getelementptr inbounds i8, ptr %400, i64 %406
  br label %408

408:                                              ; preds = %402, %398
  %409 = phi ptr [ %400, %398 ], [ %407, %402 ]
  %410 = ptrtoint ptr %409 to i64
  %411 = sub i64 %410, %18
  br label %412

412:                                              ; preds = %354, %368, %408
  %413 = phi i64 [ %411, %408 ], [ %356, %354 ], [ %373, %368 ]
  %414 = icmp ugt i64 %413, 2
  br i1 %414, label %415, label %426

415:                                              ; preds = %412
  %416 = add i32 %341, 3
  store i32 %416, ptr %0, align 4, !tbaa !45
  %417 = trunc i64 %413 to i32
  %418 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %417, ptr %418, align 4, !tbaa !43
  %419 = zext nneg i32 %42 to i64
  %420 = icmp ugt i64 %413, %419
  %421 = getelementptr inbounds i8, ptr %3, i64 %413
  %422 = icmp eq ptr %421, %4
  %423 = or i1 %420, %422
  br i1 %423, label %424, label %426

424:                                              ; preds = %415
  %425 = add i32 %36, 1
  br label %657

426:                                              ; preds = %412, %415, %334, %263
  %427 = phi i64 [ %264, %263 ], [ %264, %412 ], [ %413, %415 ], [ %264, %334 ]
  %428 = phi i32 [ %265, %263 ], [ %265, %412 ], [ 1, %415 ], [ %265, %334 ]
  store i32 %36, ptr %52, align 4, !tbaa !23
  %429 = icmp ult i32 %53, %78
  br i1 %429, label %430, label %431

430:                                              ; preds = %426
  store i32 0, ptr %83, align 4, !tbaa !23
  store i32 0, ptr %82, align 4, !tbaa !23
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
  %449 = getelementptr inbounds i32, ptr %55, i64 %448
  %450 = tail call i64 @llvm.umin.i64(i64 %438, i64 %439)
  %451 = zext i32 %437 to i64
  %452 = getelementptr inbounds i8, ptr %38, i64 %451
  %453 = getelementptr inbounds i8, ptr %3, i64 %450
  %454 = getelementptr inbounds i8, ptr %452, i64 %450
  %455 = icmp ugt ptr %432, %453
  br i1 %455, label %456, label %482

456:                                              ; preds = %436
  %457 = load i64, ptr %454, align 1, !tbaa !28
  %458 = load i64, ptr %453, align 1, !tbaa !28
  %459 = xor i64 %458, %457
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %464, label %461

461:                                              ; preds = %456
  %462 = tail call i64 @llvm.cttz.i64(i64 %459, i1 true), !range !112
  %463 = lshr i64 %462, 3
  br label %519

464:                                              ; preds = %456, %470
  %465 = phi ptr [ %468, %470 ], [ %454, %456 ]
  %466 = phi ptr [ %467, %470 ], [ %453, %456 ]
  %467 = getelementptr inbounds i8, ptr %466, i64 8
  %468 = getelementptr inbounds i8, ptr %465, i64 8
  %469 = icmp ult ptr %467, %432
  br i1 %469, label %470, label %482

470:                                              ; preds = %464
  %471 = load i64, ptr %468, align 1, !tbaa !28
  %472 = load i64, ptr %467, align 1, !tbaa !28
  %473 = xor i64 %472, %471
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %464, label %475

475:                                              ; preds = %470
  %476 = tail call i64 @llvm.cttz.i64(i64 %473, i1 true), !range !112
  %477 = lshr i64 %476, 3
  %478 = getelementptr inbounds i8, ptr %467, i64 %477
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
  %487 = load i32, ptr %483, align 1, !tbaa !23
  %488 = load i32, ptr %484, align 1, !tbaa !23
  %489 = icmp eq i32 %487, %488
  br i1 %489, label %490, label %493

490:                                              ; preds = %486
  %491 = getelementptr inbounds i8, ptr %484, i64 4
  %492 = getelementptr inbounds i8, ptr %483, i64 4
  br label %493

493:                                              ; preds = %490, %486, %482
  %494 = phi ptr [ %492, %490 ], [ %483, %486 ], [ %483, %482 ]
  %495 = phi ptr [ %491, %490 ], [ %484, %486 ], [ %484, %482 ]
  %496 = icmp ult ptr %495, %434
  br i1 %496, label %497, label %504

497:                                              ; preds = %493
  %498 = load i16, ptr %494, align 1, !tbaa !113
  %499 = load i16, ptr %495, align 1, !tbaa !113
  %500 = icmp eq i16 %498, %499
  br i1 %500, label %501, label %504

501:                                              ; preds = %497
  %502 = getelementptr inbounds i8, ptr %495, i64 2
  %503 = getelementptr inbounds i8, ptr %494, i64 2
  br label %504

504:                                              ; preds = %501, %497, %493
  %505 = phi ptr [ %503, %501 ], [ %494, %497 ], [ %494, %493 ]
  %506 = phi ptr [ %502, %501 ], [ %495, %497 ], [ %495, %493 ]
  %507 = icmp ult ptr %506, %4
  br i1 %507, label %508, label %514

508:                                              ; preds = %504
  %509 = load i8, ptr %505, align 1, !tbaa !41
  %510 = load i8, ptr %506, align 1, !tbaa !41
  %511 = icmp eq i8 %509, %510
  %512 = zext i1 %511 to i64
  %513 = getelementptr inbounds i8, ptr %506, i64 %512
  br label %514

514:                                              ; preds = %508, %504
  %515 = phi ptr [ %506, %504 ], [ %513, %508 ]
  %516 = ptrtoint ptr %515 to i64
  %517 = ptrtoint ptr %453 to i64
  %518 = sub i64 %516, %517
  br label %519

519:                                              ; preds = %461, %475, %514
  %520 = phi i64 [ %518, %514 ], [ %463, %461 ], [ %481, %475 ]
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
  %532 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %531
  store i32 %530, ptr %532, align 4, !tbaa !45
  %533 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %531, i32 1
  store i32 %527, ptr %533, align 4, !tbaa !43
  %534 = add i32 %443, 1
  %535 = icmp ugt i64 %521, 4096
  %536 = getelementptr inbounds i8, ptr %3, i64 %521
  %537 = icmp eq ptr %536, %4
  %538 = or i1 %535, %537
  br i1 %538, label %539, label %540

539:                                              ; preds = %523
  store i32 0, ptr %441, align 4, !tbaa !23
  store i32 0, ptr %440, align 4, !tbaa !23
  br label %653

540:                                              ; preds = %523, %519
  %541 = phi i64 [ %521, %523 ], [ %445, %519 ]
  %542 = phi i32 [ %534, %523 ], [ %443, %519 ]
  %543 = phi i32 [ %529, %523 ], [ %442, %519 ]
  %544 = getelementptr inbounds i8, ptr %452, i64 %521
  %545 = load i8, ptr %544, align 1, !tbaa !41
  %546 = getelementptr inbounds i8, ptr %3, i64 %521
  %547 = load i8, ptr %546, align 1, !tbaa !41
  %548 = icmp ult i8 %545, %547
  %549 = icmp ugt i32 %437, %65
  br i1 %548, label %550, label %553

550:                                              ; preds = %540
  store i32 %437, ptr %440, align 4, !tbaa !23
  br i1 %549, label %551, label %565

551:                                              ; preds = %550
  %552 = getelementptr inbounds i32, ptr %449, i64 1
  br label %554

553:                                              ; preds = %540
  store i32 %437, ptr %441, align 4, !tbaa !23
  br i1 %549, label %554, label %565

554:                                              ; preds = %553, %551
  %555 = phi ptr [ %441, %551 ], [ %449, %553 ]
  %556 = phi ptr [ %552, %551 ], [ %440, %553 ]
  %557 = phi i64 [ %439, %551 ], [ %521, %553 ]
  %558 = phi i64 [ %521, %551 ], [ %438, %553 ]
  %559 = phi ptr [ %552, %551 ], [ %449, %553 ]
  %560 = load i32, ptr %559, align 4, !tbaa !23
  %561 = add i32 %444, -1
  %562 = icmp ne i32 %561, 0
  %563 = icmp uge i32 %560, %78
  %564 = select i1 %562, i1 %563, i1 false
  br i1 %564, label %436, label %565, !llvm.loop !137

565:                                              ; preds = %554, %550, %553
  %566 = phi i32 [ %561, %554 ], [ %444, %550 ], [ %444, %553 ]
  %567 = phi ptr [ %555, %554 ], [ %441, %550 ], [ %9, %553 ]
  %568 = phi ptr [ %556, %554 ], [ %9, %550 ], [ %440, %553 ]
  store i32 0, ptr %567, align 4, !tbaa !23
  store i32 0, ptr %568, align 4, !tbaa !23
  %569 = icmp eq i32 %566, 0
  br i1 %569, label %653, label %570

570:                                              ; preds = %430, %565
  %571 = phi i32 [ %84, %430 ], [ %543, %565 ]
  %572 = phi i32 [ %428, %430 ], [ %542, %565 ]
  %573 = phi i64 [ %427, %430 ], [ %541, %565 ]
  %574 = phi i32 [ %87, %430 ], [ %566, %565 ]
  %575 = load i32, ptr %3, align 1, !tbaa !23
  %576 = mul i32 %575, -1640531535
  %577 = sub i32 32, %101
  %578 = lshr i32 %576, %577
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %89, i64 0, i32 9
  %581 = load ptr, ptr %580, align 8, !tbaa !104
  %582 = getelementptr inbounds i32, ptr %581, i64 %579
  %583 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %89, i64 0, i32 11
  %584 = load ptr, ptr %583, align 8, !tbaa !106
  %585 = load i32, ptr %582, align 4, !tbaa !23
  %586 = icmp ugt i32 %585, %98
  br i1 %586, label %587, label %653

587:                                              ; preds = %570
  %588 = and i64 %95, 4294967295
  %589 = zext i32 %99 to i64
  %590 = getelementptr inbounds i8, ptr %38, i64 %589
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
  %603 = getelementptr inbounds i32, ptr %584, i64 %602
  %604 = tail call i64 @llvm.umin.i64(i64 %594, i64 %595)
  %605 = zext i32 %593 to i64
  %606 = getelementptr inbounds i8, ptr %91, i64 %605
  %607 = getelementptr inbounds i8, ptr %3, i64 %604
  %608 = getelementptr inbounds i8, ptr %606, i64 %604
  %609 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %607, ptr noundef nonnull %608, ptr noundef %4, ptr noundef %92, ptr noundef %64)
  %610 = add i64 %609, %604
  %611 = add i64 %610, %605
  %612 = icmp ult i64 %611, %588
  %613 = getelementptr inbounds i8, ptr %590, i64 %605
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
  %626 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %625
  store i32 %624, ptr %626, align 4, !tbaa !45
  %627 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %625, i32 1
  store i32 %621, ptr %627, align 4, !tbaa !43
  %628 = add i32 %597, 1
  %629 = icmp ugt i64 %610, 4096
  %630 = getelementptr inbounds i8, ptr %3, i64 %610
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
  %639 = getelementptr inbounds i8, ptr %614, i64 %610
  %640 = load i8, ptr %639, align 1, !tbaa !41
  %641 = getelementptr inbounds i8, ptr %3, i64 %610
  %642 = load i8, ptr %641, align 1, !tbaa !41
  %643 = icmp ult i8 %640, %642
  %644 = select i1 %643, i64 %595, i64 %610
  %645 = select i1 %643, i64 %610, i64 %594
  %646 = zext i1 %643 to i64
  %647 = getelementptr inbounds i32, ptr %603, i64 %646
  %648 = add i32 %598, -1
  %649 = load i32, ptr %647, align 4, !tbaa !23
  %650 = icmp ne i32 %648, 0
  %651 = icmp ugt i32 %649, %98
  %652 = select i1 %650, i1 %651, i1 false
  br i1 %652, label %592, label %653, !llvm.loop !143

653:                                              ; preds = %638, %616, %633, %570, %539, %565
  %654 = phi i32 [ %542, %565 ], [ %534, %539 ], [ %572, %570 ], [ %635, %638 ], [ %628, %616 ], [ %635, %633 ]
  %655 = phi i32 [ %543, %565 ], [ %529, %539 ], [ %571, %570 ], [ %636, %638 ], [ %623, %616 ], [ %636, %633 ]
  %656 = add i32 %655, -8
  br label %657

657:                                              ; preds = %653, %424
  %658 = phi i32 [ %425, %424 ], [ %656, %653 ]
  %659 = phi i32 [ 1, %424 ], [ %654, %653 ]
  store i32 %658, ptr %12, align 4, !tbaa !16
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
define internal i32 @ZSTD_btGetAllMatches_dictMatchState_4(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %15, %3
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
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 4, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !17

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !15
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !16
  %38 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !22
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !104
  %46 = load i32, ptr %3, align 1, !tbaa !23
  %47 = mul i32 %46, -1640531535
  %48 = sub i32 32, %43
  %49 = lshr i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !23
  %53 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !107
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !19
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %37, i64 %62
  %64 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %65 = load i32, ptr %38, align 4, !tbaa !109
  %66 = getelementptr i8, ptr %1, i64 28
  %67 = load i32, ptr %66, align 4, !tbaa !103
  %68 = getelementptr i8, ptr %1, i64 40
  %69 = load i32, ptr %68, align 8, !tbaa !110
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
  %81 = getelementptr inbounds i32, ptr %54, i64 %80
  %82 = getelementptr inbounds i32, ptr %81, i64 1
  %83 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %84 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !111
  %86 = shl nuw i32 1, %85
  %87 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 15
  %88 = load ptr, ptr %87, align 8, !tbaa !140
  %89 = getelementptr inbounds %struct.ZSTD_window_t, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !15
  %91 = load ptr, ptr %88, align 8, !tbaa !141
  %92 = ptrtoint ptr %91 to i64
  %93 = ptrtoint ptr %90 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.ZSTD_window_t, ptr %88, i64 0, i32 4
  %97 = load i32, ptr %96, align 4, !tbaa !103
  %98 = sub i32 %76, %95
  %99 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %88, i64 0, i32 16, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !105
  %101 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %88, i64 0, i32 16, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !107
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
  %120 = getelementptr inbounds i8, ptr %3, i64 4
  %121 = getelementptr inbounds i8, ptr %4, i64 -7
  %122 = icmp ugt ptr %121, %120
  %123 = getelementptr inbounds i8, ptr %4, i64 -3
  %124 = getelementptr inbounds i8, ptr %4, i64 -1
  %125 = ptrtoint ptr %120 to i64
  %126 = zext i32 %6 to i64
  %127 = icmp eq i32 %6, 3
  br i1 %127, label %128, label %131

128:                                              ; preds = %113
  %129 = load i32, ptr %5, align 4, !tbaa !23
  %130 = add i32 %129, -1
  br label %134

131:                                              ; preds = %113
  %132 = getelementptr inbounds i32, ptr %5, i64 %126
  %133 = load i32, ptr %132, align 4, !tbaa !23
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
  %144 = load i32, ptr %143, align 1, !tbaa !23
  %145 = icmp eq i32 %46, %144
  %146 = and i1 %140, %145
  br i1 %146, label %147, label %235

147:                                              ; preds = %139
  %148 = getelementptr inbounds i8, ptr %120, i64 %142
  br i1 %122, label %149, label %174

149:                                              ; preds = %147
  %150 = load i64, ptr %148, align 1, !tbaa !28
  %151 = load i64, ptr %120, align 1, !tbaa !28
  %152 = xor i64 %151, %150
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = tail call i64 @llvm.cttz.i64(i64 %152, i1 true), !range !112
  %156 = lshr i64 %155, 3
  br label %223

157:                                              ; preds = %149, %163
  %158 = phi ptr [ %161, %163 ], [ %148, %149 ]
  %159 = phi ptr [ %160, %163 ], [ %120, %149 ]
  %160 = getelementptr inbounds i8, ptr %159, i64 8
  %161 = getelementptr inbounds i8, ptr %158, i64 8
  %162 = icmp ult ptr %160, %121
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  %164 = load i64, ptr %161, align 1, !tbaa !28
  %165 = load i64, ptr %160, align 1, !tbaa !28
  %166 = xor i64 %165, %164
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %157, label %168

168:                                              ; preds = %163
  %169 = tail call i64 @llvm.cttz.i64(i64 %166, i1 true), !range !112
  %170 = lshr i64 %169, 3
  %171 = getelementptr inbounds i8, ptr %160, i64 %170
  %172 = ptrtoint ptr %171 to i64
  %173 = sub i64 %172, %125
  br label %223

174:                                              ; preds = %157, %147
  %175 = phi ptr [ %148, %147 ], [ %161, %157 ]
  %176 = phi ptr [ %120, %147 ], [ %160, %157 ]
  %177 = icmp ult ptr %176, %123
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load i32, ptr %175, align 1, !tbaa !23
  %180 = load i32, ptr %176, align 1, !tbaa !23
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = getelementptr inbounds i8, ptr %176, i64 4
  %184 = getelementptr inbounds i8, ptr %175, i64 4
  br label %185

185:                                              ; preds = %182, %178, %174
  %186 = phi ptr [ %184, %182 ], [ %175, %178 ], [ %175, %174 ]
  %187 = phi ptr [ %183, %182 ], [ %176, %178 ], [ %176, %174 ]
  %188 = icmp ult ptr %187, %124
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i16, ptr %186, align 1, !tbaa !113
  %191 = load i16, ptr %187, align 1, !tbaa !113
  %192 = icmp eq i16 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = getelementptr inbounds i8, ptr %187, i64 2
  %195 = getelementptr inbounds i8, ptr %186, i64 2
  br label %196

196:                                              ; preds = %193, %189, %185
  %197 = phi ptr [ %195, %193 ], [ %186, %189 ], [ %186, %185 ]
  %198 = phi ptr [ %194, %193 ], [ %187, %189 ], [ %187, %185 ]
  %199 = icmp ult ptr %198, %4
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load i8, ptr %197, align 1, !tbaa !41
  %202 = load i8, ptr %198, align 1, !tbaa !41
  %203 = icmp eq i8 %201, %202
  %204 = zext i1 %203 to i64
  %205 = getelementptr inbounds i8, ptr %198, i64 %204
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
  %218 = load i32, ptr %212, align 1, !tbaa !23
  %219 = icmp eq i32 %46, %218
  br i1 %219, label %220, label %235

220:                                              ; preds = %217
  %221 = getelementptr inbounds i8, ptr %212, i64 4
  %222 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %120, ptr noundef nonnull %221, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  br label %223

223:                                              ; preds = %206, %168, %154, %220
  %224 = phi i64 [ %222, %220 ], [ %209, %206 ], [ %156, %154 ], [ %173, %168 ]
  %225 = trunc i64 %224 to i32
  %226 = add i32 %225, 4
  %227 = icmp ult i32 %110, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = zext i32 %226 to i64
  store i32 1, ptr %0, align 4, !tbaa !45
  %230 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %226, ptr %230, align 4, !tbaa !43
  %231 = icmp ule i32 %226, %41
  %232 = getelementptr inbounds i8, ptr %3, i64 %229
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
  %241 = getelementptr inbounds i32, ptr %5, i64 %238
  %242 = load i32, ptr %241, align 4, !tbaa !23
  br label %246

243:                                              ; preds = %235
  %244 = load i32, ptr %5, align 4, !tbaa !23
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
  %259 = load i32, ptr %3, align 1, !tbaa !23
  %260 = load i32, ptr %253, align 1, !tbaa !23
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %343

262:                                              ; preds = %258
  %263 = getelementptr inbounds i8, ptr %253, i64 4
  %264 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %120, ptr noundef nonnull %263, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %265 = trunc i64 %264 to i32
  %266 = add i32 %265, 4
  br label %343

267:                                              ; preds = %246
  %268 = icmp uge i32 %248, %76
  %269 = load i32, ptr %3, align 1, !tbaa !23
  %270 = zext i32 %247 to i64
  %271 = sub nsw i64 0, %270
  %272 = getelementptr inbounds i8, ptr %3, i64 %271
  %273 = load i32, ptr %272, align 1, !tbaa !23
  %274 = icmp eq i32 %269, %273
  %275 = and i1 %268, %274
  br i1 %275, label %276, label %343

276:                                              ; preds = %267
  %277 = getelementptr inbounds i8, ptr %120, i64 %271
  br i1 %122, label %278, label %292

278:                                              ; preds = %276
  %279 = load i64, ptr %277, align 1, !tbaa !28
  %280 = load i64, ptr %120, align 1, !tbaa !28
  %281 = xor i64 %280, %279
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %278
  %284 = tail call i64 @llvm.cttz.i64(i64 %281, i1 true), !range !112
  %285 = lshr i64 %284, 3
  br label %339

286:                                              ; preds = %278, %328
  %287 = phi ptr [ %290, %328 ], [ %277, %278 ]
  %288 = phi ptr [ %289, %328 ], [ %120, %278 ]
  %289 = getelementptr inbounds i8, ptr %288, i64 8
  %290 = getelementptr inbounds i8, ptr %287, i64 8
  %291 = icmp ult ptr %289, %121
  br i1 %291, label %328, label %292

292:                                              ; preds = %286, %276
  %293 = phi ptr [ %277, %276 ], [ %290, %286 ]
  %294 = phi ptr [ %120, %276 ], [ %289, %286 ]
  %295 = icmp ult ptr %294, %123
  br i1 %295, label %296, label %303

296:                                              ; preds = %292
  %297 = load i32, ptr %293, align 1, !tbaa !23
  %298 = load i32, ptr %294, align 1, !tbaa !23
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = getelementptr inbounds i8, ptr %294, i64 4
  %302 = getelementptr inbounds i8, ptr %293, i64 4
  br label %303

303:                                              ; preds = %300, %296, %292
  %304 = phi ptr [ %302, %300 ], [ %293, %296 ], [ %293, %292 ]
  %305 = phi ptr [ %301, %300 ], [ %294, %296 ], [ %294, %292 ]
  %306 = icmp ult ptr %305, %124
  br i1 %306, label %307, label %314

307:                                              ; preds = %303
  %308 = load i16, ptr %304, align 1, !tbaa !113
  %309 = load i16, ptr %305, align 1, !tbaa !113
  %310 = icmp eq i16 %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = getelementptr inbounds i8, ptr %305, i64 2
  %313 = getelementptr inbounds i8, ptr %304, i64 2
  br label %314

314:                                              ; preds = %311, %307, %303
  %315 = phi ptr [ %313, %311 ], [ %304, %307 ], [ %304, %303 ]
  %316 = phi ptr [ %312, %311 ], [ %305, %307 ], [ %305, %303 ]
  %317 = icmp ult ptr %316, %4
  br i1 %317, label %318, label %324

318:                                              ; preds = %314
  %319 = load i8, ptr %315, align 1, !tbaa !41
  %320 = load i8, ptr %316, align 1, !tbaa !41
  %321 = icmp eq i8 %319, %320
  %322 = zext i1 %321 to i64
  %323 = getelementptr inbounds i8, ptr %316, i64 %322
  br label %324

324:                                              ; preds = %318, %314
  %325 = phi ptr [ %316, %314 ], [ %323, %318 ]
  %326 = ptrtoint ptr %325 to i64
  %327 = sub i64 %326, %125
  br label %339

328:                                              ; preds = %286
  %329 = load i64, ptr %290, align 1, !tbaa !28
  %330 = load i64, ptr %289, align 1, !tbaa !28
  %331 = xor i64 %330, %329
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %286, label %333

333:                                              ; preds = %328
  %334 = tail call i64 @llvm.cttz.i64(i64 %331, i1 true), !range !112
  %335 = lshr i64 %334, 3
  %336 = getelementptr inbounds i8, ptr %289, i64 %335
  %337 = ptrtoint ptr %336 to i64
  %338 = sub i64 %337, %125
  br label %339

339:                                              ; preds = %333, %324, %283
  %340 = phi i64 [ %327, %324 ], [ %285, %283 ], [ %338, %333 ]
  %341 = trunc i64 %340 to i32
  %342 = add i32 %341, 4
  br label %343

343:                                              ; preds = %339, %267, %262, %258, %251
  %344 = phi i32 [ %342, %339 ], [ 0, %267 ], [ %266, %262 ], [ 0, %258 ], [ 0, %251 ]
  %345 = zext i32 %344 to i64
  %346 = icmp ult i64 %237, %345
  br i1 %346, label %347, label %356

347:                                              ; preds = %343
  %348 = zext nneg i32 %236 to i64
  %349 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %348
  store i32 2, ptr %349, align 4, !tbaa !45
  %350 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %348, i32 1
  store i32 %344, ptr %350, align 4, !tbaa !43
  %351 = add nuw nsw i32 %236, 1
  %352 = icmp ule i32 %344, %41
  %353 = getelementptr inbounds i8, ptr %3, i64 %345
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
  %362 = getelementptr inbounds i32, ptr %5, i64 %359
  %363 = load i32, ptr %362, align 4, !tbaa !23
  br label %367

364:                                              ; preds = %356
  %365 = load i32, ptr %5, align 4, !tbaa !23
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
  %380 = load i32, ptr %3, align 1, !tbaa !23
  %381 = load i32, ptr %374, align 1, !tbaa !23
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %464

383:                                              ; preds = %379
  %384 = getelementptr inbounds i8, ptr %374, i64 4
  %385 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %120, ptr noundef nonnull %384, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %386 = trunc i64 %385 to i32
  %387 = add i32 %386, 4
  br label %464

388:                                              ; preds = %367
  %389 = icmp uge i32 %369, %76
  %390 = load i32, ptr %3, align 1, !tbaa !23
  %391 = zext i32 %368 to i64
  %392 = sub nsw i64 0, %391
  %393 = getelementptr inbounds i8, ptr %3, i64 %392
  %394 = load i32, ptr %393, align 1, !tbaa !23
  %395 = icmp eq i32 %390, %394
  %396 = and i1 %389, %395
  br i1 %396, label %397, label %464

397:                                              ; preds = %388
  %398 = getelementptr inbounds i8, ptr %120, i64 %392
  br i1 %122, label %399, label %413

399:                                              ; preds = %397
  %400 = load i64, ptr %398, align 1, !tbaa !28
  %401 = load i64, ptr %120, align 1, !tbaa !28
  %402 = xor i64 %401, %400
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %407, label %404

404:                                              ; preds = %399
  %405 = tail call i64 @llvm.cttz.i64(i64 %402, i1 true), !range !112
  %406 = lshr i64 %405, 3
  br label %460

407:                                              ; preds = %399, %449
  %408 = phi ptr [ %411, %449 ], [ %398, %399 ]
  %409 = phi ptr [ %410, %449 ], [ %120, %399 ]
  %410 = getelementptr inbounds i8, ptr %409, i64 8
  %411 = getelementptr inbounds i8, ptr %408, i64 8
  %412 = icmp ult ptr %410, %121
  br i1 %412, label %449, label %413

413:                                              ; preds = %407, %397
  %414 = phi ptr [ %398, %397 ], [ %411, %407 ]
  %415 = phi ptr [ %120, %397 ], [ %410, %407 ]
  %416 = icmp ult ptr %415, %123
  br i1 %416, label %417, label %424

417:                                              ; preds = %413
  %418 = load i32, ptr %414, align 1, !tbaa !23
  %419 = load i32, ptr %415, align 1, !tbaa !23
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %421, label %424

421:                                              ; preds = %417
  %422 = getelementptr inbounds i8, ptr %415, i64 4
  %423 = getelementptr inbounds i8, ptr %414, i64 4
  br label %424

424:                                              ; preds = %421, %417, %413
  %425 = phi ptr [ %423, %421 ], [ %414, %417 ], [ %414, %413 ]
  %426 = phi ptr [ %422, %421 ], [ %415, %417 ], [ %415, %413 ]
  %427 = icmp ult ptr %426, %124
  br i1 %427, label %428, label %435

428:                                              ; preds = %424
  %429 = load i16, ptr %425, align 1, !tbaa !113
  %430 = load i16, ptr %426, align 1, !tbaa !113
  %431 = icmp eq i16 %429, %430
  br i1 %431, label %432, label %435

432:                                              ; preds = %428
  %433 = getelementptr inbounds i8, ptr %426, i64 2
  %434 = getelementptr inbounds i8, ptr %425, i64 2
  br label %435

435:                                              ; preds = %432, %428, %424
  %436 = phi ptr [ %434, %432 ], [ %425, %428 ], [ %425, %424 ]
  %437 = phi ptr [ %433, %432 ], [ %426, %428 ], [ %426, %424 ]
  %438 = icmp ult ptr %437, %4
  br i1 %438, label %439, label %445

439:                                              ; preds = %435
  %440 = load i8, ptr %436, align 1, !tbaa !41
  %441 = load i8, ptr %437, align 1, !tbaa !41
  %442 = icmp eq i8 %440, %441
  %443 = zext i1 %442 to i64
  %444 = getelementptr inbounds i8, ptr %437, i64 %443
  br label %445

445:                                              ; preds = %439, %435
  %446 = phi ptr [ %437, %435 ], [ %444, %439 ]
  %447 = ptrtoint ptr %446 to i64
  %448 = sub i64 %447, %125
  br label %460

449:                                              ; preds = %407
  %450 = load i64, ptr %411, align 1, !tbaa !28
  %451 = load i64, ptr %410, align 1, !tbaa !28
  %452 = xor i64 %451, %450
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %407, label %454

454:                                              ; preds = %449
  %455 = tail call i64 @llvm.cttz.i64(i64 %452, i1 true), !range !112
  %456 = lshr i64 %455, 3
  %457 = getelementptr inbounds i8, ptr %410, i64 %456
  %458 = ptrtoint ptr %457 to i64
  %459 = sub i64 %458, %125
  br label %460

460:                                              ; preds = %454, %445, %404
  %461 = phi i64 [ %448, %445 ], [ %406, %404 ], [ %459, %454 ]
  %462 = trunc i64 %461 to i32
  %463 = add i32 %462, 4
  br label %464

464:                                              ; preds = %460, %388, %383, %379, %372
  %465 = phi i32 [ %463, %460 ], [ 0, %388 ], [ %387, %383 ], [ 0, %379 ], [ 0, %372 ]
  %466 = zext i32 %465 to i64
  %467 = icmp ult i64 %358, %466
  br i1 %467, label %468, label %477

468:                                              ; preds = %464
  %469 = zext nneg i32 %357 to i64
  %470 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %469
  store i32 3, ptr %470, align 4, !tbaa !45
  %471 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %469, i32 1
  store i32 %465, ptr %471, align 4, !tbaa !43
  %472 = add nuw nsw i32 %357, 1
  %473 = icmp ule i32 %465, %41
  %474 = getelementptr inbounds i8, ptr %3, i64 %466
  %475 = icmp ne ptr %474, %4
  %476 = and i1 %473, %475
  br i1 %476, label %477, label %708

477:                                              ; preds = %464, %468, %35
  %478 = phi i64 [ %111, %35 ], [ %466, %468 ], [ %358, %464 ]
  %479 = phi i32 [ 0, %35 ], [ %472, %468 ], [ %357, %464 ]
  store i32 %36, ptr %51, align 4, !tbaa !23
  %480 = icmp ult i32 %52, %77
  br i1 %480, label %481, label %482

481:                                              ; preds = %477
  store i32 0, ptr %82, align 4, !tbaa !23
  store i32 0, ptr %81, align 4, !tbaa !23
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
  %500 = getelementptr inbounds i32, ptr %54, i64 %499
  %501 = tail call i64 @llvm.umin.i64(i64 %489, i64 %490)
  %502 = zext i32 %488 to i64
  %503 = getelementptr inbounds i8, ptr %37, i64 %502
  %504 = getelementptr inbounds i8, ptr %3, i64 %501
  %505 = getelementptr inbounds i8, ptr %503, i64 %501
  %506 = icmp ugt ptr %483, %504
  br i1 %506, label %507, label %533

507:                                              ; preds = %487
  %508 = load i64, ptr %505, align 1, !tbaa !28
  %509 = load i64, ptr %504, align 1, !tbaa !28
  %510 = xor i64 %509, %508
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %515, label %512

512:                                              ; preds = %507
  %513 = tail call i64 @llvm.cttz.i64(i64 %510, i1 true), !range !112
  %514 = lshr i64 %513, 3
  br label %570

515:                                              ; preds = %507, %521
  %516 = phi ptr [ %519, %521 ], [ %505, %507 ]
  %517 = phi ptr [ %518, %521 ], [ %504, %507 ]
  %518 = getelementptr inbounds i8, ptr %517, i64 8
  %519 = getelementptr inbounds i8, ptr %516, i64 8
  %520 = icmp ult ptr %518, %483
  br i1 %520, label %521, label %533

521:                                              ; preds = %515
  %522 = load i64, ptr %519, align 1, !tbaa !28
  %523 = load i64, ptr %518, align 1, !tbaa !28
  %524 = xor i64 %523, %522
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %515, label %526

526:                                              ; preds = %521
  %527 = tail call i64 @llvm.cttz.i64(i64 %524, i1 true), !range !112
  %528 = lshr i64 %527, 3
  %529 = getelementptr inbounds i8, ptr %518, i64 %528
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
  %538 = load i32, ptr %534, align 1, !tbaa !23
  %539 = load i32, ptr %535, align 1, !tbaa !23
  %540 = icmp eq i32 %538, %539
  br i1 %540, label %541, label %544

541:                                              ; preds = %537
  %542 = getelementptr inbounds i8, ptr %535, i64 4
  %543 = getelementptr inbounds i8, ptr %534, i64 4
  br label %544

544:                                              ; preds = %541, %537, %533
  %545 = phi ptr [ %543, %541 ], [ %534, %537 ], [ %534, %533 ]
  %546 = phi ptr [ %542, %541 ], [ %535, %537 ], [ %535, %533 ]
  %547 = icmp ult ptr %546, %485
  br i1 %547, label %548, label %555

548:                                              ; preds = %544
  %549 = load i16, ptr %545, align 1, !tbaa !113
  %550 = load i16, ptr %546, align 1, !tbaa !113
  %551 = icmp eq i16 %549, %550
  br i1 %551, label %552, label %555

552:                                              ; preds = %548
  %553 = getelementptr inbounds i8, ptr %546, i64 2
  %554 = getelementptr inbounds i8, ptr %545, i64 2
  br label %555

555:                                              ; preds = %552, %548, %544
  %556 = phi ptr [ %554, %552 ], [ %545, %548 ], [ %545, %544 ]
  %557 = phi ptr [ %553, %552 ], [ %546, %548 ], [ %546, %544 ]
  %558 = icmp ult ptr %557, %4
  br i1 %558, label %559, label %565

559:                                              ; preds = %555
  %560 = load i8, ptr %556, align 1, !tbaa !41
  %561 = load i8, ptr %557, align 1, !tbaa !41
  %562 = icmp eq i8 %560, %561
  %563 = zext i1 %562 to i64
  %564 = getelementptr inbounds i8, ptr %557, i64 %563
  br label %565

565:                                              ; preds = %559, %555
  %566 = phi ptr [ %557, %555 ], [ %564, %559 ]
  %567 = ptrtoint ptr %566 to i64
  %568 = ptrtoint ptr %504 to i64
  %569 = sub i64 %567, %568
  br label %570

570:                                              ; preds = %512, %526, %565
  %571 = phi i64 [ %569, %565 ], [ %514, %512 ], [ %532, %526 ]
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
  %583 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %582
  store i32 %581, ptr %583, align 4, !tbaa !45
  %584 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %582, i32 1
  store i32 %578, ptr %584, align 4, !tbaa !43
  %585 = add i32 %494, 1
  %586 = icmp ugt i64 %572, 4096
  %587 = getelementptr inbounds i8, ptr %3, i64 %572
  %588 = icmp eq ptr %587, %4
  %589 = or i1 %586, %588
  br i1 %589, label %590, label %591

590:                                              ; preds = %574
  store i32 0, ptr %492, align 4, !tbaa !23
  store i32 0, ptr %491, align 4, !tbaa !23
  br label %704

591:                                              ; preds = %574, %570
  %592 = phi i64 [ %572, %574 ], [ %496, %570 ]
  %593 = phi i32 [ %585, %574 ], [ %494, %570 ]
  %594 = phi i32 [ %580, %574 ], [ %493, %570 ]
  %595 = getelementptr inbounds i8, ptr %503, i64 %572
  %596 = load i8, ptr %595, align 1, !tbaa !41
  %597 = getelementptr inbounds i8, ptr %3, i64 %572
  %598 = load i8, ptr %597, align 1, !tbaa !41
  %599 = icmp ult i8 %596, %598
  %600 = icmp ugt i32 %488, %64
  br i1 %599, label %601, label %604

601:                                              ; preds = %591
  store i32 %488, ptr %491, align 4, !tbaa !23
  br i1 %600, label %602, label %616

602:                                              ; preds = %601
  %603 = getelementptr inbounds i32, ptr %500, i64 1
  br label %605

604:                                              ; preds = %591
  store i32 %488, ptr %492, align 4, !tbaa !23
  br i1 %600, label %605, label %616

605:                                              ; preds = %604, %602
  %606 = phi ptr [ %492, %602 ], [ %500, %604 ]
  %607 = phi ptr [ %603, %602 ], [ %491, %604 ]
  %608 = phi i64 [ %490, %602 ], [ %572, %604 ]
  %609 = phi i64 [ %572, %602 ], [ %489, %604 ]
  %610 = phi ptr [ %603, %602 ], [ %500, %604 ]
  %611 = load i32, ptr %610, align 4, !tbaa !23
  %612 = add i32 %495, -1
  %613 = icmp ne i32 %612, 0
  %614 = icmp uge i32 %611, %77
  %615 = select i1 %613, i1 %614, i1 false
  br i1 %615, label %487, label %616, !llvm.loop !137

616:                                              ; preds = %605, %601, %604
  %617 = phi i32 [ %612, %605 ], [ %495, %601 ], [ %495, %604 ]
  %618 = phi ptr [ %606, %605 ], [ %492, %601 ], [ %9, %604 ]
  %619 = phi ptr [ %607, %605 ], [ %9, %601 ], [ %491, %604 ]
  store i32 0, ptr %618, align 4, !tbaa !23
  store i32 0, ptr %619, align 4, !tbaa !23
  %620 = icmp eq i32 %617, 0
  br i1 %620, label %704, label %621

621:                                              ; preds = %481, %616
  %622 = phi i32 [ %83, %481 ], [ %594, %616 ]
  %623 = phi i32 [ %479, %481 ], [ %593, %616 ]
  %624 = phi i64 [ %478, %481 ], [ %592, %616 ]
  %625 = phi i32 [ %86, %481 ], [ %617, %616 ]
  %626 = load i32, ptr %3, align 1, !tbaa !23
  %627 = mul i32 %626, -1640531535
  %628 = sub i32 32, %100
  %629 = lshr i32 %627, %628
  %630 = zext i32 %629 to i64
  %631 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %88, i64 0, i32 9
  %632 = load ptr, ptr %631, align 8, !tbaa !104
  %633 = getelementptr inbounds i32, ptr %632, i64 %630
  %634 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %88, i64 0, i32 11
  %635 = load ptr, ptr %634, align 8, !tbaa !106
  %636 = load i32, ptr %633, align 4, !tbaa !23
  %637 = icmp ugt i32 %636, %97
  br i1 %637, label %638, label %704

638:                                              ; preds = %621
  %639 = and i64 %94, 4294967295
  %640 = zext i32 %98 to i64
  %641 = getelementptr inbounds i8, ptr %37, i64 %640
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
  %654 = getelementptr inbounds i32, ptr %635, i64 %653
  %655 = tail call i64 @llvm.umin.i64(i64 %645, i64 %646)
  %656 = zext i32 %644 to i64
  %657 = getelementptr inbounds i8, ptr %90, i64 %656
  %658 = getelementptr inbounds i8, ptr %3, i64 %655
  %659 = getelementptr inbounds i8, ptr %657, i64 %655
  %660 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %658, ptr noundef nonnull %659, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %661 = add i64 %660, %655
  %662 = add i64 %661, %656
  %663 = icmp ult i64 %662, %639
  %664 = getelementptr inbounds i8, ptr %641, i64 %656
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
  %677 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %676
  store i32 %675, ptr %677, align 4, !tbaa !45
  %678 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %676, i32 1
  store i32 %672, ptr %678, align 4, !tbaa !43
  %679 = add i32 %648, 1
  %680 = icmp ugt i64 %661, 4096
  %681 = getelementptr inbounds i8, ptr %3, i64 %661
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
  %690 = getelementptr inbounds i8, ptr %665, i64 %661
  %691 = load i8, ptr %690, align 1, !tbaa !41
  %692 = getelementptr inbounds i8, ptr %3, i64 %661
  %693 = load i8, ptr %692, align 1, !tbaa !41
  %694 = icmp ult i8 %691, %693
  %695 = select i1 %694, i64 %646, i64 %661
  %696 = select i1 %694, i64 %661, i64 %645
  %697 = zext i1 %694 to i64
  %698 = getelementptr inbounds i32, ptr %654, i64 %697
  %699 = add i32 %649, -1
  %700 = load i32, ptr %698, align 4, !tbaa !23
  %701 = icmp ne i32 %699, 0
  %702 = icmp ugt i32 %700, %97
  %703 = select i1 %701, i1 %702, i1 false
  br i1 %703, label %643, label %704, !llvm.loop !143

704:                                              ; preds = %689, %667, %684, %621, %590, %616
  %705 = phi i32 [ %593, %616 ], [ %585, %590 ], [ %623, %621 ], [ %686, %689 ], [ %679, %667 ], [ %686, %684 ]
  %706 = phi i32 [ %594, %616 ], [ %580, %590 ], [ %622, %621 ], [ %687, %689 ], [ %674, %667 ], [ %687, %684 ]
  %707 = add i32 %706, -8
  store i32 %707, ptr %12, align 4, !tbaa !16
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
define internal i32 @ZSTD_btGetAllMatches_dictMatchState_5(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %15, %3
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
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 5, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !17

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !15
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !16
  %38 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !22
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !104
  %46 = load i64, ptr %3, align 1
  %47 = mul i64 %46, -3523014627271114752
  %48 = sub i32 64, %43
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = getelementptr inbounds i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !23
  %53 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !107
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !19
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %37, i64 %62
  %64 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %65 = load i32, ptr %38, align 4, !tbaa !109
  %66 = getelementptr i8, ptr %1, i64 28
  %67 = load i32, ptr %66, align 4, !tbaa !103
  %68 = getelementptr i8, ptr %1, i64 40
  %69 = load i32, ptr %68, align 8, !tbaa !110
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
  %81 = getelementptr inbounds i32, ptr %54, i64 %80
  %82 = getelementptr inbounds i32, ptr %81, i64 1
  %83 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %84 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !111
  %86 = shl nuw i32 1, %85
  %87 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 15
  %88 = load ptr, ptr %87, align 8, !tbaa !140
  %89 = getelementptr inbounds %struct.ZSTD_window_t, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !15
  %91 = load ptr, ptr %88, align 8, !tbaa !141
  %92 = ptrtoint ptr %91 to i64
  %93 = ptrtoint ptr %90 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.ZSTD_window_t, ptr %88, i64 0, i32 4
  %97 = load i32, ptr %96, align 4, !tbaa !103
  %98 = sub i32 %76, %95
  %99 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %88, i64 0, i32 16, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !105
  %101 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %88, i64 0, i32 16, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !107
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
  %121 = getelementptr inbounds i8, ptr %3, i64 4
  %122 = getelementptr inbounds i8, ptr %4, i64 -7
  %123 = icmp ugt ptr %122, %121
  %124 = getelementptr inbounds i8, ptr %4, i64 -3
  %125 = getelementptr inbounds i8, ptr %4, i64 -1
  %126 = ptrtoint ptr %121 to i64
  %127 = zext i32 %6 to i64
  %128 = icmp eq i32 %6, 3
  br i1 %128, label %129, label %132

129:                                              ; preds = %114
  %130 = load i32, ptr %5, align 4, !tbaa !23
  %131 = add i32 %130, -1
  br label %135

132:                                              ; preds = %114
  %133 = getelementptr inbounds i32, ptr %5, i64 %127
  %134 = load i32, ptr %133, align 4, !tbaa !23
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
  %145 = load i32, ptr %144, align 1, !tbaa !23
  %146 = icmp eq i32 %145, %113
  %147 = and i1 %141, %146
  br i1 %147, label %148, label %236

148:                                              ; preds = %140
  %149 = getelementptr inbounds i8, ptr %121, i64 %143
  br i1 %123, label %150, label %175

150:                                              ; preds = %148
  %151 = load i64, ptr %149, align 1, !tbaa !28
  %152 = load i64, ptr %121, align 1, !tbaa !28
  %153 = xor i64 %152, %151
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = tail call i64 @llvm.cttz.i64(i64 %153, i1 true), !range !112
  %157 = lshr i64 %156, 3
  br label %224

158:                                              ; preds = %150, %164
  %159 = phi ptr [ %162, %164 ], [ %149, %150 ]
  %160 = phi ptr [ %161, %164 ], [ %121, %150 ]
  %161 = getelementptr inbounds i8, ptr %160, i64 8
  %162 = getelementptr inbounds i8, ptr %159, i64 8
  %163 = icmp ult ptr %161, %122
  br i1 %163, label %164, label %175

164:                                              ; preds = %158
  %165 = load i64, ptr %162, align 1, !tbaa !28
  %166 = load i64, ptr %161, align 1, !tbaa !28
  %167 = xor i64 %166, %165
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %158, label %169

169:                                              ; preds = %164
  %170 = tail call i64 @llvm.cttz.i64(i64 %167, i1 true), !range !112
  %171 = lshr i64 %170, 3
  %172 = getelementptr inbounds i8, ptr %161, i64 %171
  %173 = ptrtoint ptr %172 to i64
  %174 = sub i64 %173, %126
  br label %224

175:                                              ; preds = %158, %148
  %176 = phi ptr [ %149, %148 ], [ %162, %158 ]
  %177 = phi ptr [ %121, %148 ], [ %161, %158 ]
  %178 = icmp ult ptr %177, %124
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i32, ptr %176, align 1, !tbaa !23
  %181 = load i32, ptr %177, align 1, !tbaa !23
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = getelementptr inbounds i8, ptr %177, i64 4
  %185 = getelementptr inbounds i8, ptr %176, i64 4
  br label %186

186:                                              ; preds = %183, %179, %175
  %187 = phi ptr [ %185, %183 ], [ %176, %179 ], [ %176, %175 ]
  %188 = phi ptr [ %184, %183 ], [ %177, %179 ], [ %177, %175 ]
  %189 = icmp ult ptr %188, %125
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load i16, ptr %187, align 1, !tbaa !113
  %192 = load i16, ptr %188, align 1, !tbaa !113
  %193 = icmp eq i16 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = getelementptr inbounds i8, ptr %188, i64 2
  %196 = getelementptr inbounds i8, ptr %187, i64 2
  br label %197

197:                                              ; preds = %194, %190, %186
  %198 = phi ptr [ %196, %194 ], [ %187, %190 ], [ %187, %186 ]
  %199 = phi ptr [ %195, %194 ], [ %188, %190 ], [ %188, %186 ]
  %200 = icmp ult ptr %199, %4
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load i8, ptr %198, align 1, !tbaa !41
  %203 = load i8, ptr %199, align 1, !tbaa !41
  %204 = icmp eq i8 %202, %203
  %205 = zext i1 %204 to i64
  %206 = getelementptr inbounds i8, ptr %199, i64 %205
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
  %219 = load i32, ptr %213, align 1, !tbaa !23
  %220 = icmp eq i32 %219, %113
  br i1 %220, label %221, label %236

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %213, i64 4
  %223 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %222, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  br label %224

224:                                              ; preds = %207, %169, %155, %221
  %225 = phi i64 [ %223, %221 ], [ %210, %207 ], [ %157, %155 ], [ %174, %169 ]
  %226 = trunc i64 %225 to i32
  %227 = add i32 %226, 4
  %228 = icmp ult i32 %110, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  %230 = zext i32 %227 to i64
  store i32 1, ptr %0, align 4, !tbaa !45
  %231 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %227, ptr %231, align 4, !tbaa !43
  %232 = icmp ule i32 %227, %41
  %233 = getelementptr inbounds i8, ptr %3, i64 %230
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
  %242 = getelementptr inbounds i32, ptr %5, i64 %239
  %243 = load i32, ptr %242, align 4, !tbaa !23
  br label %247

244:                                              ; preds = %236
  %245 = load i32, ptr %5, align 4, !tbaa !23
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
  %260 = load i32, ptr %3, align 1, !tbaa !23
  %261 = load i32, ptr %254, align 1, !tbaa !23
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %344

263:                                              ; preds = %259
  %264 = getelementptr inbounds i8, ptr %254, i64 4
  %265 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %264, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %266 = trunc i64 %265 to i32
  %267 = add i32 %266, 4
  br label %344

268:                                              ; preds = %247
  %269 = icmp uge i32 %249, %76
  %270 = load i32, ptr %3, align 1, !tbaa !23
  %271 = zext i32 %248 to i64
  %272 = sub nsw i64 0, %271
  %273 = getelementptr inbounds i8, ptr %3, i64 %272
  %274 = load i32, ptr %273, align 1, !tbaa !23
  %275 = icmp eq i32 %270, %274
  %276 = and i1 %269, %275
  br i1 %276, label %277, label %344

277:                                              ; preds = %268
  %278 = getelementptr inbounds i8, ptr %121, i64 %272
  br i1 %123, label %279, label %293

279:                                              ; preds = %277
  %280 = load i64, ptr %278, align 1, !tbaa !28
  %281 = load i64, ptr %121, align 1, !tbaa !28
  %282 = xor i64 %281, %280
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %279
  %285 = tail call i64 @llvm.cttz.i64(i64 %282, i1 true), !range !112
  %286 = lshr i64 %285, 3
  br label %340

287:                                              ; preds = %279, %329
  %288 = phi ptr [ %291, %329 ], [ %278, %279 ]
  %289 = phi ptr [ %290, %329 ], [ %121, %279 ]
  %290 = getelementptr inbounds i8, ptr %289, i64 8
  %291 = getelementptr inbounds i8, ptr %288, i64 8
  %292 = icmp ult ptr %290, %122
  br i1 %292, label %329, label %293

293:                                              ; preds = %287, %277
  %294 = phi ptr [ %278, %277 ], [ %291, %287 ]
  %295 = phi ptr [ %121, %277 ], [ %290, %287 ]
  %296 = icmp ult ptr %295, %124
  br i1 %296, label %297, label %304

297:                                              ; preds = %293
  %298 = load i32, ptr %294, align 1, !tbaa !23
  %299 = load i32, ptr %295, align 1, !tbaa !23
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %297
  %302 = getelementptr inbounds i8, ptr %295, i64 4
  %303 = getelementptr inbounds i8, ptr %294, i64 4
  br label %304

304:                                              ; preds = %301, %297, %293
  %305 = phi ptr [ %303, %301 ], [ %294, %297 ], [ %294, %293 ]
  %306 = phi ptr [ %302, %301 ], [ %295, %297 ], [ %295, %293 ]
  %307 = icmp ult ptr %306, %125
  br i1 %307, label %308, label %315

308:                                              ; preds = %304
  %309 = load i16, ptr %305, align 1, !tbaa !113
  %310 = load i16, ptr %306, align 1, !tbaa !113
  %311 = icmp eq i16 %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = getelementptr inbounds i8, ptr %306, i64 2
  %314 = getelementptr inbounds i8, ptr %305, i64 2
  br label %315

315:                                              ; preds = %312, %308, %304
  %316 = phi ptr [ %314, %312 ], [ %305, %308 ], [ %305, %304 ]
  %317 = phi ptr [ %313, %312 ], [ %306, %308 ], [ %306, %304 ]
  %318 = icmp ult ptr %317, %4
  br i1 %318, label %319, label %325

319:                                              ; preds = %315
  %320 = load i8, ptr %316, align 1, !tbaa !41
  %321 = load i8, ptr %317, align 1, !tbaa !41
  %322 = icmp eq i8 %320, %321
  %323 = zext i1 %322 to i64
  %324 = getelementptr inbounds i8, ptr %317, i64 %323
  br label %325

325:                                              ; preds = %319, %315
  %326 = phi ptr [ %317, %315 ], [ %324, %319 ]
  %327 = ptrtoint ptr %326 to i64
  %328 = sub i64 %327, %126
  br label %340

329:                                              ; preds = %287
  %330 = load i64, ptr %291, align 1, !tbaa !28
  %331 = load i64, ptr %290, align 1, !tbaa !28
  %332 = xor i64 %331, %330
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %287, label %334

334:                                              ; preds = %329
  %335 = tail call i64 @llvm.cttz.i64(i64 %332, i1 true), !range !112
  %336 = lshr i64 %335, 3
  %337 = getelementptr inbounds i8, ptr %290, i64 %336
  %338 = ptrtoint ptr %337 to i64
  %339 = sub i64 %338, %126
  br label %340

340:                                              ; preds = %334, %325, %284
  %341 = phi i64 [ %328, %325 ], [ %286, %284 ], [ %339, %334 ]
  %342 = trunc i64 %341 to i32
  %343 = add i32 %342, 4
  br label %344

344:                                              ; preds = %340, %268, %263, %259, %252
  %345 = phi i32 [ %343, %340 ], [ 0, %268 ], [ %267, %263 ], [ 0, %259 ], [ 0, %252 ]
  %346 = zext i32 %345 to i64
  %347 = icmp ult i64 %238, %346
  br i1 %347, label %348, label %357

348:                                              ; preds = %344
  %349 = zext nneg i32 %237 to i64
  %350 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %349
  store i32 2, ptr %350, align 4, !tbaa !45
  %351 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %349, i32 1
  store i32 %345, ptr %351, align 4, !tbaa !43
  %352 = add nuw nsw i32 %237, 1
  %353 = icmp ule i32 %345, %41
  %354 = getelementptr inbounds i8, ptr %3, i64 %346
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
  %363 = getelementptr inbounds i32, ptr %5, i64 %360
  %364 = load i32, ptr %363, align 4, !tbaa !23
  br label %368

365:                                              ; preds = %357
  %366 = load i32, ptr %5, align 4, !tbaa !23
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
  %381 = load i32, ptr %3, align 1, !tbaa !23
  %382 = load i32, ptr %375, align 1, !tbaa !23
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %465

384:                                              ; preds = %380
  %385 = getelementptr inbounds i8, ptr %375, i64 4
  %386 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %385, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %387 = trunc i64 %386 to i32
  %388 = add i32 %387, 4
  br label %465

389:                                              ; preds = %368
  %390 = icmp uge i32 %370, %76
  %391 = load i32, ptr %3, align 1, !tbaa !23
  %392 = zext i32 %369 to i64
  %393 = sub nsw i64 0, %392
  %394 = getelementptr inbounds i8, ptr %3, i64 %393
  %395 = load i32, ptr %394, align 1, !tbaa !23
  %396 = icmp eq i32 %391, %395
  %397 = and i1 %390, %396
  br i1 %397, label %398, label %465

398:                                              ; preds = %389
  %399 = getelementptr inbounds i8, ptr %121, i64 %393
  br i1 %123, label %400, label %414

400:                                              ; preds = %398
  %401 = load i64, ptr %399, align 1, !tbaa !28
  %402 = load i64, ptr %121, align 1, !tbaa !28
  %403 = xor i64 %402, %401
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %408, label %405

405:                                              ; preds = %400
  %406 = tail call i64 @llvm.cttz.i64(i64 %403, i1 true), !range !112
  %407 = lshr i64 %406, 3
  br label %461

408:                                              ; preds = %400, %450
  %409 = phi ptr [ %412, %450 ], [ %399, %400 ]
  %410 = phi ptr [ %411, %450 ], [ %121, %400 ]
  %411 = getelementptr inbounds i8, ptr %410, i64 8
  %412 = getelementptr inbounds i8, ptr %409, i64 8
  %413 = icmp ult ptr %411, %122
  br i1 %413, label %450, label %414

414:                                              ; preds = %408, %398
  %415 = phi ptr [ %399, %398 ], [ %412, %408 ]
  %416 = phi ptr [ %121, %398 ], [ %411, %408 ]
  %417 = icmp ult ptr %416, %124
  br i1 %417, label %418, label %425

418:                                              ; preds = %414
  %419 = load i32, ptr %415, align 1, !tbaa !23
  %420 = load i32, ptr %416, align 1, !tbaa !23
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %418
  %423 = getelementptr inbounds i8, ptr %416, i64 4
  %424 = getelementptr inbounds i8, ptr %415, i64 4
  br label %425

425:                                              ; preds = %422, %418, %414
  %426 = phi ptr [ %424, %422 ], [ %415, %418 ], [ %415, %414 ]
  %427 = phi ptr [ %423, %422 ], [ %416, %418 ], [ %416, %414 ]
  %428 = icmp ult ptr %427, %125
  br i1 %428, label %429, label %436

429:                                              ; preds = %425
  %430 = load i16, ptr %426, align 1, !tbaa !113
  %431 = load i16, ptr %427, align 1, !tbaa !113
  %432 = icmp eq i16 %430, %431
  br i1 %432, label %433, label %436

433:                                              ; preds = %429
  %434 = getelementptr inbounds i8, ptr %427, i64 2
  %435 = getelementptr inbounds i8, ptr %426, i64 2
  br label %436

436:                                              ; preds = %433, %429, %425
  %437 = phi ptr [ %435, %433 ], [ %426, %429 ], [ %426, %425 ]
  %438 = phi ptr [ %434, %433 ], [ %427, %429 ], [ %427, %425 ]
  %439 = icmp ult ptr %438, %4
  br i1 %439, label %440, label %446

440:                                              ; preds = %436
  %441 = load i8, ptr %437, align 1, !tbaa !41
  %442 = load i8, ptr %438, align 1, !tbaa !41
  %443 = icmp eq i8 %441, %442
  %444 = zext i1 %443 to i64
  %445 = getelementptr inbounds i8, ptr %438, i64 %444
  br label %446

446:                                              ; preds = %440, %436
  %447 = phi ptr [ %438, %436 ], [ %445, %440 ]
  %448 = ptrtoint ptr %447 to i64
  %449 = sub i64 %448, %126
  br label %461

450:                                              ; preds = %408
  %451 = load i64, ptr %412, align 1, !tbaa !28
  %452 = load i64, ptr %411, align 1, !tbaa !28
  %453 = xor i64 %452, %451
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %408, label %455

455:                                              ; preds = %450
  %456 = tail call i64 @llvm.cttz.i64(i64 %453, i1 true), !range !112
  %457 = lshr i64 %456, 3
  %458 = getelementptr inbounds i8, ptr %411, i64 %457
  %459 = ptrtoint ptr %458 to i64
  %460 = sub i64 %459, %126
  br label %461

461:                                              ; preds = %455, %446, %405
  %462 = phi i64 [ %449, %446 ], [ %407, %405 ], [ %460, %455 ]
  %463 = trunc i64 %462 to i32
  %464 = add i32 %463, 4
  br label %465

465:                                              ; preds = %461, %389, %384, %380, %373
  %466 = phi i32 [ %464, %461 ], [ 0, %389 ], [ %388, %384 ], [ 0, %380 ], [ 0, %373 ]
  %467 = zext i32 %466 to i64
  %468 = icmp ult i64 %359, %467
  br i1 %468, label %469, label %478

469:                                              ; preds = %465
  %470 = zext nneg i32 %358 to i64
  %471 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %470
  store i32 3, ptr %471, align 4, !tbaa !45
  %472 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %470, i32 1
  store i32 %466, ptr %472, align 4, !tbaa !43
  %473 = add nuw nsw i32 %358, 1
  %474 = icmp ule i32 %466, %41
  %475 = getelementptr inbounds i8, ptr %3, i64 %467
  %476 = icmp ne ptr %475, %4
  %477 = and i1 %474, %476
  br i1 %477, label %478, label %707

478:                                              ; preds = %465, %469, %35
  %479 = phi i64 [ %111, %35 ], [ %467, %469 ], [ %359, %465 ]
  %480 = phi i32 [ 0, %35 ], [ %473, %469 ], [ %358, %465 ]
  store i32 %36, ptr %51, align 4, !tbaa !23
  %481 = icmp ult i32 %52, %77
  br i1 %481, label %482, label %483

482:                                              ; preds = %478
  store i32 0, ptr %82, align 4, !tbaa !23
  store i32 0, ptr %81, align 4, !tbaa !23
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
  %501 = getelementptr inbounds i32, ptr %54, i64 %500
  %502 = tail call i64 @llvm.umin.i64(i64 %490, i64 %491)
  %503 = zext i32 %489 to i64
  %504 = getelementptr inbounds i8, ptr %37, i64 %503
  %505 = getelementptr inbounds i8, ptr %3, i64 %502
  %506 = getelementptr inbounds i8, ptr %504, i64 %502
  %507 = icmp ugt ptr %484, %505
  br i1 %507, label %508, label %534

508:                                              ; preds = %488
  %509 = load i64, ptr %506, align 1, !tbaa !28
  %510 = load i64, ptr %505, align 1, !tbaa !28
  %511 = xor i64 %510, %509
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %516, label %513

513:                                              ; preds = %508
  %514 = tail call i64 @llvm.cttz.i64(i64 %511, i1 true), !range !112
  %515 = lshr i64 %514, 3
  br label %571

516:                                              ; preds = %508, %522
  %517 = phi ptr [ %520, %522 ], [ %506, %508 ]
  %518 = phi ptr [ %519, %522 ], [ %505, %508 ]
  %519 = getelementptr inbounds i8, ptr %518, i64 8
  %520 = getelementptr inbounds i8, ptr %517, i64 8
  %521 = icmp ult ptr %519, %484
  br i1 %521, label %522, label %534

522:                                              ; preds = %516
  %523 = load i64, ptr %520, align 1, !tbaa !28
  %524 = load i64, ptr %519, align 1, !tbaa !28
  %525 = xor i64 %524, %523
  %526 = icmp eq i64 %525, 0
  br i1 %526, label %516, label %527

527:                                              ; preds = %522
  %528 = tail call i64 @llvm.cttz.i64(i64 %525, i1 true), !range !112
  %529 = lshr i64 %528, 3
  %530 = getelementptr inbounds i8, ptr %519, i64 %529
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
  %539 = load i32, ptr %535, align 1, !tbaa !23
  %540 = load i32, ptr %536, align 1, !tbaa !23
  %541 = icmp eq i32 %539, %540
  br i1 %541, label %542, label %545

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, ptr %536, i64 4
  %544 = getelementptr inbounds i8, ptr %535, i64 4
  br label %545

545:                                              ; preds = %542, %538, %534
  %546 = phi ptr [ %544, %542 ], [ %535, %538 ], [ %535, %534 ]
  %547 = phi ptr [ %543, %542 ], [ %536, %538 ], [ %536, %534 ]
  %548 = icmp ult ptr %547, %486
  br i1 %548, label %549, label %556

549:                                              ; preds = %545
  %550 = load i16, ptr %546, align 1, !tbaa !113
  %551 = load i16, ptr %547, align 1, !tbaa !113
  %552 = icmp eq i16 %550, %551
  br i1 %552, label %553, label %556

553:                                              ; preds = %549
  %554 = getelementptr inbounds i8, ptr %547, i64 2
  %555 = getelementptr inbounds i8, ptr %546, i64 2
  br label %556

556:                                              ; preds = %553, %549, %545
  %557 = phi ptr [ %555, %553 ], [ %546, %549 ], [ %546, %545 ]
  %558 = phi ptr [ %554, %553 ], [ %547, %549 ], [ %547, %545 ]
  %559 = icmp ult ptr %558, %4
  br i1 %559, label %560, label %566

560:                                              ; preds = %556
  %561 = load i8, ptr %557, align 1, !tbaa !41
  %562 = load i8, ptr %558, align 1, !tbaa !41
  %563 = icmp eq i8 %561, %562
  %564 = zext i1 %563 to i64
  %565 = getelementptr inbounds i8, ptr %558, i64 %564
  br label %566

566:                                              ; preds = %560, %556
  %567 = phi ptr [ %558, %556 ], [ %565, %560 ]
  %568 = ptrtoint ptr %567 to i64
  %569 = ptrtoint ptr %505 to i64
  %570 = sub i64 %568, %569
  br label %571

571:                                              ; preds = %513, %527, %566
  %572 = phi i64 [ %570, %566 ], [ %515, %513 ], [ %533, %527 ]
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
  %584 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %583
  store i32 %582, ptr %584, align 4, !tbaa !45
  %585 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %583, i32 1
  store i32 %579, ptr %585, align 4, !tbaa !43
  %586 = add i32 %495, 1
  %587 = icmp ugt i64 %573, 4096
  %588 = getelementptr inbounds i8, ptr %3, i64 %573
  %589 = icmp eq ptr %588, %4
  %590 = or i1 %587, %589
  br i1 %590, label %591, label %592

591:                                              ; preds = %575
  store i32 0, ptr %493, align 4, !tbaa !23
  store i32 0, ptr %492, align 4, !tbaa !23
  br label %703

592:                                              ; preds = %575, %571
  %593 = phi i64 [ %573, %575 ], [ %497, %571 ]
  %594 = phi i32 [ %586, %575 ], [ %495, %571 ]
  %595 = phi i32 [ %581, %575 ], [ %494, %571 ]
  %596 = getelementptr inbounds i8, ptr %504, i64 %573
  %597 = load i8, ptr %596, align 1, !tbaa !41
  %598 = getelementptr inbounds i8, ptr %3, i64 %573
  %599 = load i8, ptr %598, align 1, !tbaa !41
  %600 = icmp ult i8 %597, %599
  %601 = icmp ugt i32 %489, %64
  br i1 %600, label %602, label %605

602:                                              ; preds = %592
  store i32 %489, ptr %492, align 4, !tbaa !23
  br i1 %601, label %603, label %617

603:                                              ; preds = %602
  %604 = getelementptr inbounds i32, ptr %501, i64 1
  br label %606

605:                                              ; preds = %592
  store i32 %489, ptr %493, align 4, !tbaa !23
  br i1 %601, label %606, label %617

606:                                              ; preds = %605, %603
  %607 = phi ptr [ %493, %603 ], [ %501, %605 ]
  %608 = phi ptr [ %604, %603 ], [ %492, %605 ]
  %609 = phi i64 [ %491, %603 ], [ %573, %605 ]
  %610 = phi i64 [ %573, %603 ], [ %490, %605 ]
  %611 = phi ptr [ %604, %603 ], [ %501, %605 ]
  %612 = load i32, ptr %611, align 4, !tbaa !23
  %613 = add i32 %496, -1
  %614 = icmp ne i32 %613, 0
  %615 = icmp uge i32 %612, %77
  %616 = select i1 %614, i1 %615, i1 false
  br i1 %616, label %488, label %617, !llvm.loop !137

617:                                              ; preds = %606, %602, %605
  %618 = phi i32 [ %613, %606 ], [ %496, %602 ], [ %496, %605 ]
  %619 = phi ptr [ %607, %606 ], [ %493, %602 ], [ %9, %605 ]
  %620 = phi ptr [ %608, %606 ], [ %9, %602 ], [ %492, %605 ]
  store i32 0, ptr %619, align 4, !tbaa !23
  store i32 0, ptr %620, align 4, !tbaa !23
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
  %630 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %88, i64 0, i32 9
  %631 = load ptr, ptr %630, align 8, !tbaa !104
  %632 = getelementptr inbounds i32, ptr %631, i64 %629
  %633 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %88, i64 0, i32 11
  %634 = load ptr, ptr %633, align 8, !tbaa !106
  %635 = load i32, ptr %632, align 4, !tbaa !23
  %636 = icmp ugt i32 %635, %97
  br i1 %636, label %637, label %703

637:                                              ; preds = %622
  %638 = and i64 %94, 4294967295
  %639 = zext i32 %98 to i64
  %640 = getelementptr inbounds i8, ptr %37, i64 %639
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
  %653 = getelementptr inbounds i32, ptr %634, i64 %652
  %654 = tail call i64 @llvm.umin.i64(i64 %644, i64 %645)
  %655 = zext i32 %643 to i64
  %656 = getelementptr inbounds i8, ptr %90, i64 %655
  %657 = getelementptr inbounds i8, ptr %3, i64 %654
  %658 = getelementptr inbounds i8, ptr %656, i64 %654
  %659 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %657, ptr noundef nonnull %658, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %660 = add i64 %659, %654
  %661 = add i64 %660, %655
  %662 = icmp ult i64 %661, %638
  %663 = getelementptr inbounds i8, ptr %640, i64 %655
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
  %676 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %675
  store i32 %674, ptr %676, align 4, !tbaa !45
  %677 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %675, i32 1
  store i32 %671, ptr %677, align 4, !tbaa !43
  %678 = add i32 %647, 1
  %679 = icmp ugt i64 %660, 4096
  %680 = getelementptr inbounds i8, ptr %3, i64 %660
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
  %689 = getelementptr inbounds i8, ptr %664, i64 %660
  %690 = load i8, ptr %689, align 1, !tbaa !41
  %691 = getelementptr inbounds i8, ptr %3, i64 %660
  %692 = load i8, ptr %691, align 1, !tbaa !41
  %693 = icmp ult i8 %690, %692
  %694 = select i1 %693, i64 %645, i64 %660
  %695 = select i1 %693, i64 %660, i64 %644
  %696 = zext i1 %693 to i64
  %697 = getelementptr inbounds i32, ptr %653, i64 %696
  %698 = add i32 %648, -1
  %699 = load i32, ptr %697, align 4, !tbaa !23
  %700 = icmp ne i32 %698, 0
  %701 = icmp ugt i32 %699, %97
  %702 = select i1 %700, i1 %701, i1 false
  br i1 %702, label %642, label %703, !llvm.loop !143

703:                                              ; preds = %688, %666, %683, %622, %591, %617
  %704 = phi i32 [ %594, %617 ], [ %586, %591 ], [ %624, %622 ], [ %685, %688 ], [ %678, %666 ], [ %685, %683 ]
  %705 = phi i32 [ %595, %617 ], [ %581, %591 ], [ %623, %622 ], [ %686, %688 ], [ %673, %666 ], [ %686, %683 ]
  %706 = add i32 %705, -8
  store i32 %706, ptr %12, align 4, !tbaa !16
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
define internal i32 @ZSTD_btGetAllMatches_dictMatchState_6(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = icmp ugt ptr %15, %3
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
  %26 = getelementptr inbounds i8, ptr %11, i64 %25
  %27 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef %1, ptr noundef %26, ptr noundef %4, i32 noundef %21, i32 noundef 6, i32 noundef 0)
  %28 = add i32 %27, %24
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %23, label %30, !llvm.loop !17

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !tbaa !15
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %18, %32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i32 [ %34, %30 ], [ %21, %17 ]
  %37 = phi ptr [ %31, %30 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !16
  %38 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16
  %39 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !22
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !104
  %46 = load i64, ptr %3, align 1
  %47 = mul i64 %46, -3523014627193847808
  %48 = sub i32 64, %43
  %49 = zext nneg i32 %48 to i64
  %50 = lshr i64 %47, %49
  %51 = getelementptr inbounds i32, ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !23
  %53 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !107
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !19
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %37, i64 %62
  %64 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %59)
  %65 = load i32, ptr %38, align 4, !tbaa !109
  %66 = getelementptr i8, ptr %1, i64 28
  %67 = load i32, ptr %66, align 4, !tbaa !103
  %68 = getelementptr i8, ptr %1, i64 40
  %69 = load i32, ptr %68, align 8, !tbaa !110
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
  %81 = getelementptr inbounds i32, ptr %54, i64 %80
  %82 = getelementptr inbounds i32, ptr %81, i64 1
  %83 = add i32 %36, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %84 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 16, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !111
  %86 = shl nuw i32 1, %85
  %87 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %1, i64 0, i32 15
  %88 = load ptr, ptr %87, align 8, !tbaa !140
  %89 = getelementptr inbounds %struct.ZSTD_window_t, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !15
  %91 = load ptr, ptr %88, align 8, !tbaa !141
  %92 = ptrtoint ptr %91 to i64
  %93 = ptrtoint ptr %90 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.ZSTD_window_t, ptr %88, i64 0, i32 4
  %97 = load i32, ptr %96, align 4, !tbaa !103
  %98 = sub i32 %76, %95
  %99 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %88, i64 0, i32 16, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !105
  %101 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %88, i64 0, i32 16, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !107
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
  %121 = getelementptr inbounds i8, ptr %3, i64 4
  %122 = getelementptr inbounds i8, ptr %4, i64 -7
  %123 = icmp ugt ptr %122, %121
  %124 = getelementptr inbounds i8, ptr %4, i64 -3
  %125 = getelementptr inbounds i8, ptr %4, i64 -1
  %126 = ptrtoint ptr %121 to i64
  %127 = zext i32 %6 to i64
  %128 = icmp eq i32 %6, 3
  br i1 %128, label %129, label %132

129:                                              ; preds = %114
  %130 = load i32, ptr %5, align 4, !tbaa !23
  %131 = add i32 %130, -1
  br label %135

132:                                              ; preds = %114
  %133 = getelementptr inbounds i32, ptr %5, i64 %127
  %134 = load i32, ptr %133, align 4, !tbaa !23
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
  %145 = load i32, ptr %144, align 1, !tbaa !23
  %146 = icmp eq i32 %145, %113
  %147 = and i1 %141, %146
  br i1 %147, label %148, label %236

148:                                              ; preds = %140
  %149 = getelementptr inbounds i8, ptr %121, i64 %143
  br i1 %123, label %150, label %175

150:                                              ; preds = %148
  %151 = load i64, ptr %149, align 1, !tbaa !28
  %152 = load i64, ptr %121, align 1, !tbaa !28
  %153 = xor i64 %152, %151
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = tail call i64 @llvm.cttz.i64(i64 %153, i1 true), !range !112
  %157 = lshr i64 %156, 3
  br label %224

158:                                              ; preds = %150, %164
  %159 = phi ptr [ %162, %164 ], [ %149, %150 ]
  %160 = phi ptr [ %161, %164 ], [ %121, %150 ]
  %161 = getelementptr inbounds i8, ptr %160, i64 8
  %162 = getelementptr inbounds i8, ptr %159, i64 8
  %163 = icmp ult ptr %161, %122
  br i1 %163, label %164, label %175

164:                                              ; preds = %158
  %165 = load i64, ptr %162, align 1, !tbaa !28
  %166 = load i64, ptr %161, align 1, !tbaa !28
  %167 = xor i64 %166, %165
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %158, label %169

169:                                              ; preds = %164
  %170 = tail call i64 @llvm.cttz.i64(i64 %167, i1 true), !range !112
  %171 = lshr i64 %170, 3
  %172 = getelementptr inbounds i8, ptr %161, i64 %171
  %173 = ptrtoint ptr %172 to i64
  %174 = sub i64 %173, %126
  br label %224

175:                                              ; preds = %158, %148
  %176 = phi ptr [ %149, %148 ], [ %162, %158 ]
  %177 = phi ptr [ %121, %148 ], [ %161, %158 ]
  %178 = icmp ult ptr %177, %124
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i32, ptr %176, align 1, !tbaa !23
  %181 = load i32, ptr %177, align 1, !tbaa !23
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = getelementptr inbounds i8, ptr %177, i64 4
  %185 = getelementptr inbounds i8, ptr %176, i64 4
  br label %186

186:                                              ; preds = %183, %179, %175
  %187 = phi ptr [ %185, %183 ], [ %176, %179 ], [ %176, %175 ]
  %188 = phi ptr [ %184, %183 ], [ %177, %179 ], [ %177, %175 ]
  %189 = icmp ult ptr %188, %125
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load i16, ptr %187, align 1, !tbaa !113
  %192 = load i16, ptr %188, align 1, !tbaa !113
  %193 = icmp eq i16 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = getelementptr inbounds i8, ptr %188, i64 2
  %196 = getelementptr inbounds i8, ptr %187, i64 2
  br label %197

197:                                              ; preds = %194, %190, %186
  %198 = phi ptr [ %196, %194 ], [ %187, %190 ], [ %187, %186 ]
  %199 = phi ptr [ %195, %194 ], [ %188, %190 ], [ %188, %186 ]
  %200 = icmp ult ptr %199, %4
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load i8, ptr %198, align 1, !tbaa !41
  %203 = load i8, ptr %199, align 1, !tbaa !41
  %204 = icmp eq i8 %202, %203
  %205 = zext i1 %204 to i64
  %206 = getelementptr inbounds i8, ptr %199, i64 %205
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
  %219 = load i32, ptr %213, align 1, !tbaa !23
  %220 = icmp eq i32 %219, %113
  br i1 %220, label %221, label %236

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %213, i64 4
  %223 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %222, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  br label %224

224:                                              ; preds = %207, %169, %155, %221
  %225 = phi i64 [ %223, %221 ], [ %210, %207 ], [ %157, %155 ], [ %174, %169 ]
  %226 = trunc i64 %225 to i32
  %227 = add i32 %226, 4
  %228 = icmp ult i32 %110, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  %230 = zext i32 %227 to i64
  store i32 1, ptr %0, align 4, !tbaa !45
  %231 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 0, i32 1
  store i32 %227, ptr %231, align 4, !tbaa !43
  %232 = icmp ule i32 %227, %41
  %233 = getelementptr inbounds i8, ptr %3, i64 %230
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
  %242 = getelementptr inbounds i32, ptr %5, i64 %239
  %243 = load i32, ptr %242, align 4, !tbaa !23
  br label %247

244:                                              ; preds = %236
  %245 = load i32, ptr %5, align 4, !tbaa !23
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
  %260 = load i32, ptr %3, align 1, !tbaa !23
  %261 = load i32, ptr %254, align 1, !tbaa !23
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %344

263:                                              ; preds = %259
  %264 = getelementptr inbounds i8, ptr %254, i64 4
  %265 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %264, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %266 = trunc i64 %265 to i32
  %267 = add i32 %266, 4
  br label %344

268:                                              ; preds = %247
  %269 = icmp uge i32 %249, %76
  %270 = load i32, ptr %3, align 1, !tbaa !23
  %271 = zext i32 %248 to i64
  %272 = sub nsw i64 0, %271
  %273 = getelementptr inbounds i8, ptr %3, i64 %272
  %274 = load i32, ptr %273, align 1, !tbaa !23
  %275 = icmp eq i32 %270, %274
  %276 = and i1 %269, %275
  br i1 %276, label %277, label %344

277:                                              ; preds = %268
  %278 = getelementptr inbounds i8, ptr %121, i64 %272
  br i1 %123, label %279, label %293

279:                                              ; preds = %277
  %280 = load i64, ptr %278, align 1, !tbaa !28
  %281 = load i64, ptr %121, align 1, !tbaa !28
  %282 = xor i64 %281, %280
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %279
  %285 = tail call i64 @llvm.cttz.i64(i64 %282, i1 true), !range !112
  %286 = lshr i64 %285, 3
  br label %340

287:                                              ; preds = %279, %329
  %288 = phi ptr [ %291, %329 ], [ %278, %279 ]
  %289 = phi ptr [ %290, %329 ], [ %121, %279 ]
  %290 = getelementptr inbounds i8, ptr %289, i64 8
  %291 = getelementptr inbounds i8, ptr %288, i64 8
  %292 = icmp ult ptr %290, %122
  br i1 %292, label %329, label %293

293:                                              ; preds = %287, %277
  %294 = phi ptr [ %278, %277 ], [ %291, %287 ]
  %295 = phi ptr [ %121, %277 ], [ %290, %287 ]
  %296 = icmp ult ptr %295, %124
  br i1 %296, label %297, label %304

297:                                              ; preds = %293
  %298 = load i32, ptr %294, align 1, !tbaa !23
  %299 = load i32, ptr %295, align 1, !tbaa !23
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %297
  %302 = getelementptr inbounds i8, ptr %295, i64 4
  %303 = getelementptr inbounds i8, ptr %294, i64 4
  br label %304

304:                                              ; preds = %301, %297, %293
  %305 = phi ptr [ %303, %301 ], [ %294, %297 ], [ %294, %293 ]
  %306 = phi ptr [ %302, %301 ], [ %295, %297 ], [ %295, %293 ]
  %307 = icmp ult ptr %306, %125
  br i1 %307, label %308, label %315

308:                                              ; preds = %304
  %309 = load i16, ptr %305, align 1, !tbaa !113
  %310 = load i16, ptr %306, align 1, !tbaa !113
  %311 = icmp eq i16 %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = getelementptr inbounds i8, ptr %306, i64 2
  %314 = getelementptr inbounds i8, ptr %305, i64 2
  br label %315

315:                                              ; preds = %312, %308, %304
  %316 = phi ptr [ %314, %312 ], [ %305, %308 ], [ %305, %304 ]
  %317 = phi ptr [ %313, %312 ], [ %306, %308 ], [ %306, %304 ]
  %318 = icmp ult ptr %317, %4
  br i1 %318, label %319, label %325

319:                                              ; preds = %315
  %320 = load i8, ptr %316, align 1, !tbaa !41
  %321 = load i8, ptr %317, align 1, !tbaa !41
  %322 = icmp eq i8 %320, %321
  %323 = zext i1 %322 to i64
  %324 = getelementptr inbounds i8, ptr %317, i64 %323
  br label %325

325:                                              ; preds = %319, %315
  %326 = phi ptr [ %317, %315 ], [ %324, %319 ]
  %327 = ptrtoint ptr %326 to i64
  %328 = sub i64 %327, %126
  br label %340

329:                                              ; preds = %287
  %330 = load i64, ptr %291, align 1, !tbaa !28
  %331 = load i64, ptr %290, align 1, !tbaa !28
  %332 = xor i64 %331, %330
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %287, label %334

334:                                              ; preds = %329
  %335 = tail call i64 @llvm.cttz.i64(i64 %332, i1 true), !range !112
  %336 = lshr i64 %335, 3
  %337 = getelementptr inbounds i8, ptr %290, i64 %336
  %338 = ptrtoint ptr %337 to i64
  %339 = sub i64 %338, %126
  br label %340

340:                                              ; preds = %334, %325, %284
  %341 = phi i64 [ %328, %325 ], [ %286, %284 ], [ %339, %334 ]
  %342 = trunc i64 %341 to i32
  %343 = add i32 %342, 4
  br label %344

344:                                              ; preds = %340, %268, %263, %259, %252
  %345 = phi i32 [ %343, %340 ], [ 0, %268 ], [ %267, %263 ], [ 0, %259 ], [ 0, %252 ]
  %346 = zext i32 %345 to i64
  %347 = icmp ult i64 %238, %346
  br i1 %347, label %348, label %357

348:                                              ; preds = %344
  %349 = zext nneg i32 %237 to i64
  %350 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %349
  store i32 2, ptr %350, align 4, !tbaa !45
  %351 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %349, i32 1
  store i32 %345, ptr %351, align 4, !tbaa !43
  %352 = add nuw nsw i32 %237, 1
  %353 = icmp ule i32 %345, %41
  %354 = getelementptr inbounds i8, ptr %3, i64 %346
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
  %363 = getelementptr inbounds i32, ptr %5, i64 %360
  %364 = load i32, ptr %363, align 4, !tbaa !23
  br label %368

365:                                              ; preds = %357
  %366 = load i32, ptr %5, align 4, !tbaa !23
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
  %381 = load i32, ptr %3, align 1, !tbaa !23
  %382 = load i32, ptr %375, align 1, !tbaa !23
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %465

384:                                              ; preds = %380
  %385 = getelementptr inbounds i8, ptr %375, i64 4
  %386 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %385, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %387 = trunc i64 %386 to i32
  %388 = add i32 %387, 4
  br label %465

389:                                              ; preds = %368
  %390 = icmp uge i32 %370, %76
  %391 = load i32, ptr %3, align 1, !tbaa !23
  %392 = zext i32 %369 to i64
  %393 = sub nsw i64 0, %392
  %394 = getelementptr inbounds i8, ptr %3, i64 %393
  %395 = load i32, ptr %394, align 1, !tbaa !23
  %396 = icmp eq i32 %391, %395
  %397 = and i1 %390, %396
  br i1 %397, label %398, label %465

398:                                              ; preds = %389
  %399 = getelementptr inbounds i8, ptr %121, i64 %393
  br i1 %123, label %400, label %414

400:                                              ; preds = %398
  %401 = load i64, ptr %399, align 1, !tbaa !28
  %402 = load i64, ptr %121, align 1, !tbaa !28
  %403 = xor i64 %402, %401
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %408, label %405

405:                                              ; preds = %400
  %406 = tail call i64 @llvm.cttz.i64(i64 %403, i1 true), !range !112
  %407 = lshr i64 %406, 3
  br label %461

408:                                              ; preds = %400, %450
  %409 = phi ptr [ %412, %450 ], [ %399, %400 ]
  %410 = phi ptr [ %411, %450 ], [ %121, %400 ]
  %411 = getelementptr inbounds i8, ptr %410, i64 8
  %412 = getelementptr inbounds i8, ptr %409, i64 8
  %413 = icmp ult ptr %411, %122
  br i1 %413, label %450, label %414

414:                                              ; preds = %408, %398
  %415 = phi ptr [ %399, %398 ], [ %412, %408 ]
  %416 = phi ptr [ %121, %398 ], [ %411, %408 ]
  %417 = icmp ult ptr %416, %124
  br i1 %417, label %418, label %425

418:                                              ; preds = %414
  %419 = load i32, ptr %415, align 1, !tbaa !23
  %420 = load i32, ptr %416, align 1, !tbaa !23
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %418
  %423 = getelementptr inbounds i8, ptr %416, i64 4
  %424 = getelementptr inbounds i8, ptr %415, i64 4
  br label %425

425:                                              ; preds = %422, %418, %414
  %426 = phi ptr [ %424, %422 ], [ %415, %418 ], [ %415, %414 ]
  %427 = phi ptr [ %423, %422 ], [ %416, %418 ], [ %416, %414 ]
  %428 = icmp ult ptr %427, %125
  br i1 %428, label %429, label %436

429:                                              ; preds = %425
  %430 = load i16, ptr %426, align 1, !tbaa !113
  %431 = load i16, ptr %427, align 1, !tbaa !113
  %432 = icmp eq i16 %430, %431
  br i1 %432, label %433, label %436

433:                                              ; preds = %429
  %434 = getelementptr inbounds i8, ptr %427, i64 2
  %435 = getelementptr inbounds i8, ptr %426, i64 2
  br label %436

436:                                              ; preds = %433, %429, %425
  %437 = phi ptr [ %435, %433 ], [ %426, %429 ], [ %426, %425 ]
  %438 = phi ptr [ %434, %433 ], [ %427, %429 ], [ %427, %425 ]
  %439 = icmp ult ptr %438, %4
  br i1 %439, label %440, label %446

440:                                              ; preds = %436
  %441 = load i8, ptr %437, align 1, !tbaa !41
  %442 = load i8, ptr %438, align 1, !tbaa !41
  %443 = icmp eq i8 %441, %442
  %444 = zext i1 %443 to i64
  %445 = getelementptr inbounds i8, ptr %438, i64 %444
  br label %446

446:                                              ; preds = %440, %436
  %447 = phi ptr [ %438, %436 ], [ %445, %440 ]
  %448 = ptrtoint ptr %447 to i64
  %449 = sub i64 %448, %126
  br label %461

450:                                              ; preds = %408
  %451 = load i64, ptr %412, align 1, !tbaa !28
  %452 = load i64, ptr %411, align 1, !tbaa !28
  %453 = xor i64 %452, %451
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %408, label %455

455:                                              ; preds = %450
  %456 = tail call i64 @llvm.cttz.i64(i64 %453, i1 true), !range !112
  %457 = lshr i64 %456, 3
  %458 = getelementptr inbounds i8, ptr %411, i64 %457
  %459 = ptrtoint ptr %458 to i64
  %460 = sub i64 %459, %126
  br label %461

461:                                              ; preds = %455, %446, %405
  %462 = phi i64 [ %449, %446 ], [ %407, %405 ], [ %460, %455 ]
  %463 = trunc i64 %462 to i32
  %464 = add i32 %463, 4
  br label %465

465:                                              ; preds = %461, %389, %384, %380, %373
  %466 = phi i32 [ %464, %461 ], [ 0, %389 ], [ %388, %384 ], [ 0, %380 ], [ 0, %373 ]
  %467 = zext i32 %466 to i64
  %468 = icmp ult i64 %359, %467
  br i1 %468, label %469, label %478

469:                                              ; preds = %465
  %470 = zext nneg i32 %358 to i64
  %471 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %470
  store i32 3, ptr %471, align 4, !tbaa !45
  %472 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %470, i32 1
  store i32 %466, ptr %472, align 4, !tbaa !43
  %473 = add nuw nsw i32 %358, 1
  %474 = icmp ule i32 %466, %41
  %475 = getelementptr inbounds i8, ptr %3, i64 %467
  %476 = icmp ne ptr %475, %4
  %477 = and i1 %474, %476
  br i1 %477, label %478, label %707

478:                                              ; preds = %465, %469, %35
  %479 = phi i64 [ %111, %35 ], [ %467, %469 ], [ %359, %465 ]
  %480 = phi i32 [ 0, %35 ], [ %473, %469 ], [ %358, %465 ]
  store i32 %36, ptr %51, align 4, !tbaa !23
  %481 = icmp ult i32 %52, %77
  br i1 %481, label %482, label %483

482:                                              ; preds = %478
  store i32 0, ptr %82, align 4, !tbaa !23
  store i32 0, ptr %81, align 4, !tbaa !23
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
  %501 = getelementptr inbounds i32, ptr %54, i64 %500
  %502 = tail call i64 @llvm.umin.i64(i64 %490, i64 %491)
  %503 = zext i32 %489 to i64
  %504 = getelementptr inbounds i8, ptr %37, i64 %503
  %505 = getelementptr inbounds i8, ptr %3, i64 %502
  %506 = getelementptr inbounds i8, ptr %504, i64 %502
  %507 = icmp ugt ptr %484, %505
  br i1 %507, label %508, label %534

508:                                              ; preds = %488
  %509 = load i64, ptr %506, align 1, !tbaa !28
  %510 = load i64, ptr %505, align 1, !tbaa !28
  %511 = xor i64 %510, %509
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %516, label %513

513:                                              ; preds = %508
  %514 = tail call i64 @llvm.cttz.i64(i64 %511, i1 true), !range !112
  %515 = lshr i64 %514, 3
  br label %571

516:                                              ; preds = %508, %522
  %517 = phi ptr [ %520, %522 ], [ %506, %508 ]
  %518 = phi ptr [ %519, %522 ], [ %505, %508 ]
  %519 = getelementptr inbounds i8, ptr %518, i64 8
  %520 = getelementptr inbounds i8, ptr %517, i64 8
  %521 = icmp ult ptr %519, %484
  br i1 %521, label %522, label %534

522:                                              ; preds = %516
  %523 = load i64, ptr %520, align 1, !tbaa !28
  %524 = load i64, ptr %519, align 1, !tbaa !28
  %525 = xor i64 %524, %523
  %526 = icmp eq i64 %525, 0
  br i1 %526, label %516, label %527

527:                                              ; preds = %522
  %528 = tail call i64 @llvm.cttz.i64(i64 %525, i1 true), !range !112
  %529 = lshr i64 %528, 3
  %530 = getelementptr inbounds i8, ptr %519, i64 %529
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
  %539 = load i32, ptr %535, align 1, !tbaa !23
  %540 = load i32, ptr %536, align 1, !tbaa !23
  %541 = icmp eq i32 %539, %540
  br i1 %541, label %542, label %545

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, ptr %536, i64 4
  %544 = getelementptr inbounds i8, ptr %535, i64 4
  br label %545

545:                                              ; preds = %542, %538, %534
  %546 = phi ptr [ %544, %542 ], [ %535, %538 ], [ %535, %534 ]
  %547 = phi ptr [ %543, %542 ], [ %536, %538 ], [ %536, %534 ]
  %548 = icmp ult ptr %547, %486
  br i1 %548, label %549, label %556

549:                                              ; preds = %545
  %550 = load i16, ptr %546, align 1, !tbaa !113
  %551 = load i16, ptr %547, align 1, !tbaa !113
  %552 = icmp eq i16 %550, %551
  br i1 %552, label %553, label %556

553:                                              ; preds = %549
  %554 = getelementptr inbounds i8, ptr %547, i64 2
  %555 = getelementptr inbounds i8, ptr %546, i64 2
  br label %556

556:                                              ; preds = %553, %549, %545
  %557 = phi ptr [ %555, %553 ], [ %546, %549 ], [ %546, %545 ]
  %558 = phi ptr [ %554, %553 ], [ %547, %549 ], [ %547, %545 ]
  %559 = icmp ult ptr %558, %4
  br i1 %559, label %560, label %566

560:                                              ; preds = %556
  %561 = load i8, ptr %557, align 1, !tbaa !41
  %562 = load i8, ptr %558, align 1, !tbaa !41
  %563 = icmp eq i8 %561, %562
  %564 = zext i1 %563 to i64
  %565 = getelementptr inbounds i8, ptr %558, i64 %564
  br label %566

566:                                              ; preds = %560, %556
  %567 = phi ptr [ %558, %556 ], [ %565, %560 ]
  %568 = ptrtoint ptr %567 to i64
  %569 = ptrtoint ptr %505 to i64
  %570 = sub i64 %568, %569
  br label %571

571:                                              ; preds = %513, %527, %566
  %572 = phi i64 [ %570, %566 ], [ %515, %513 ], [ %533, %527 ]
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
  %584 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %583
  store i32 %582, ptr %584, align 4, !tbaa !45
  %585 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %583, i32 1
  store i32 %579, ptr %585, align 4, !tbaa !43
  %586 = add i32 %495, 1
  %587 = icmp ugt i64 %573, 4096
  %588 = getelementptr inbounds i8, ptr %3, i64 %573
  %589 = icmp eq ptr %588, %4
  %590 = or i1 %587, %589
  br i1 %590, label %591, label %592

591:                                              ; preds = %575
  store i32 0, ptr %493, align 4, !tbaa !23
  store i32 0, ptr %492, align 4, !tbaa !23
  br label %703

592:                                              ; preds = %575, %571
  %593 = phi i64 [ %573, %575 ], [ %497, %571 ]
  %594 = phi i32 [ %586, %575 ], [ %495, %571 ]
  %595 = phi i32 [ %581, %575 ], [ %494, %571 ]
  %596 = getelementptr inbounds i8, ptr %504, i64 %573
  %597 = load i8, ptr %596, align 1, !tbaa !41
  %598 = getelementptr inbounds i8, ptr %3, i64 %573
  %599 = load i8, ptr %598, align 1, !tbaa !41
  %600 = icmp ult i8 %597, %599
  %601 = icmp ugt i32 %489, %64
  br i1 %600, label %602, label %605

602:                                              ; preds = %592
  store i32 %489, ptr %492, align 4, !tbaa !23
  br i1 %601, label %603, label %617

603:                                              ; preds = %602
  %604 = getelementptr inbounds i32, ptr %501, i64 1
  br label %606

605:                                              ; preds = %592
  store i32 %489, ptr %493, align 4, !tbaa !23
  br i1 %601, label %606, label %617

606:                                              ; preds = %605, %603
  %607 = phi ptr [ %493, %603 ], [ %501, %605 ]
  %608 = phi ptr [ %604, %603 ], [ %492, %605 ]
  %609 = phi i64 [ %491, %603 ], [ %573, %605 ]
  %610 = phi i64 [ %573, %603 ], [ %490, %605 ]
  %611 = phi ptr [ %604, %603 ], [ %501, %605 ]
  %612 = load i32, ptr %611, align 4, !tbaa !23
  %613 = add i32 %496, -1
  %614 = icmp ne i32 %613, 0
  %615 = icmp uge i32 %612, %77
  %616 = select i1 %614, i1 %615, i1 false
  br i1 %616, label %488, label %617, !llvm.loop !137

617:                                              ; preds = %606, %602, %605
  %618 = phi i32 [ %613, %606 ], [ %496, %602 ], [ %496, %605 ]
  %619 = phi ptr [ %607, %606 ], [ %493, %602 ], [ %9, %605 ]
  %620 = phi ptr [ %608, %606 ], [ %9, %602 ], [ %492, %605 ]
  store i32 0, ptr %619, align 4, !tbaa !23
  store i32 0, ptr %620, align 4, !tbaa !23
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
  %630 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %88, i64 0, i32 9
  %631 = load ptr, ptr %630, align 8, !tbaa !104
  %632 = getelementptr inbounds i32, ptr %631, i64 %629
  %633 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %88, i64 0, i32 11
  %634 = load ptr, ptr %633, align 8, !tbaa !106
  %635 = load i32, ptr %632, align 4, !tbaa !23
  %636 = icmp ugt i32 %635, %97
  br i1 %636, label %637, label %703

637:                                              ; preds = %622
  %638 = and i64 %94, 4294967295
  %639 = zext i32 %98 to i64
  %640 = getelementptr inbounds i8, ptr %37, i64 %639
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
  %653 = getelementptr inbounds i32, ptr %634, i64 %652
  %654 = tail call i64 @llvm.umin.i64(i64 %644, i64 %645)
  %655 = zext i32 %643 to i64
  %656 = getelementptr inbounds i8, ptr %90, i64 %655
  %657 = getelementptr inbounds i8, ptr %3, i64 %654
  %658 = getelementptr inbounds i8, ptr %656, i64 %654
  %659 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %657, ptr noundef nonnull %658, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %660 = add i64 %659, %654
  %661 = add i64 %660, %655
  %662 = icmp ult i64 %661, %638
  %663 = getelementptr inbounds i8, ptr %640, i64 %655
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
  %676 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %675
  store i32 %674, ptr %676, align 4, !tbaa !45
  %677 = getelementptr inbounds %struct.ZSTD_match_t, ptr %0, i64 %675, i32 1
  store i32 %671, ptr %677, align 4, !tbaa !43
  %678 = add i32 %647, 1
  %679 = icmp ugt i64 %660, 4096
  %680 = getelementptr inbounds i8, ptr %3, i64 %660
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
  %689 = getelementptr inbounds i8, ptr %664, i64 %660
  %690 = load i8, ptr %689, align 1, !tbaa !41
  %691 = getelementptr inbounds i8, ptr %3, i64 %660
  %692 = load i8, ptr %691, align 1, !tbaa !41
  %693 = icmp ult i8 %690, %692
  %694 = select i1 %693, i64 %645, i64 %660
  %695 = select i1 %693, i64 %660, i64 %644
  %696 = zext i1 %693 to i64
  %697 = getelementptr inbounds i32, ptr %653, i64 %696
  %698 = add i32 %648, -1
  %699 = load i32, ptr %697, align 4, !tbaa !23
  %700 = icmp ne i32 %698, 0
  %701 = icmp ugt i32 %699, %97
  %702 = select i1 %700, i1 %701, i1 false
  br i1 %702, label %642, label %703, !llvm.loop !143

703:                                              ; preds = %688, %666, %683, %622, %591, %617
  %704 = phi i32 [ %594, %617 ], [ %586, %591 ], [ %624, %622 ], [ %685, %688 ], [ %678, %666 ], [ %685, %683 ]
  %705 = phi i32 [ %595, %617 ], [ %581, %591 ], [ %623, %622 ], [ %686, %688 ], [ %673, %666 ], [ %686, %683 ]
  %706 = add i32 %705, -8
  store i32 %706, ptr %12, align 4, !tbaa !16
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
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !11, i64 272}
!6 = !{!"ZSTD_MatchState_t", !7, i64 0, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !8, i64 56, !9, i64 64, !12, i64 96, !11, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 140, !13, i64 144, !8, i64 248, !14, i64 256, !8, i64 288, !11, i64 296, !11, i64 300}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !11, i64 96}
!14 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24}
!15 = !{!6, !8, i64 8}
!16 = !{!6, !11, i64 44}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!6, !11, i64 24}
!20 = !{!14, !11, i64 16}
!21 = !{!8, !8, i64 0}
!22 = !{!14, !11, i64 20}
!23 = !{!11, !11, i64 0}
!24 = !{!13, !8, i64 40}
!25 = !{!13, !8, i64 32}
!26 = !{!6, !8, i64 288}
!27 = !{i64 0, i64 8, !21, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28}
!28 = !{!12, !12, i64 0}
!29 = !{!30, !11, i64 48}
!30 = !{!"", !31, i64 0, !11, i64 40, !11, i64 44, !11, i64 48}
!31 = !{!"", !8, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!32 = !{!30, !11, i64 40}
!33 = !{!30, !11, i64 44}
!34 = !{!35, !11, i64 8}
!35 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !9, i64 16}
!36 = !{!35, !11, i64 12}
!37 = !{!13, !11, i64 80}
!38 = !{i32 0, i32 33}
!39 = !{!13, !11, i64 68}
!40 = !{!13, !8, i64 8}
!41 = !{!9, !9, i64 0}
!42 = !{!35, !11, i64 0}
!43 = !{!44, !11, i64 4}
!44 = !{!"", !11, i64 0, !11, i64 4}
!45 = !{!44, !11, i64 0}
!46 = distinct !{!46, !18}
!47 = !{}
!48 = !{!35, !11, i64 4}
!49 = distinct !{!49, !18}
!50 = !{!13, !11, i64 76}
!51 = !{!13, !8, i64 24}
!52 = !{!13, !11, i64 72}
!53 = !{!13, !8, i64 16}
!54 = distinct !{!54, !18}
!55 = !{!13, !11, i64 96}
!56 = !{!13, !11, i64 64}
!57 = !{!13, !8, i64 0}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 12, !41}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 12, !41}
!65 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 12, !41}
!66 = !{i64 0, i64 4, !23, i64 4, i64 12, !41}
!67 = !{i64 0, i64 12, !41}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!13, !11, i64 48}
!73 = !{!13, !11, i64 52}
!74 = !{!13, !11, i64 60}
!75 = !{!13, !11, i64 56}
!76 = !{!77, !8, i64 24}
!77 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !12, i64 56, !12, i64 64, !11, i64 72, !11, i64 76}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !18, !80, !81}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = distinct !{!82, !18, !80, !81}
!83 = distinct !{!83, !71}
!84 = distinct !{!84, !18, !80}
!85 = !{!77, !8, i64 8}
!86 = !{!"branch_weights", i32 1717128, i32 2145766520}
!87 = !{!77, !11, i64 72}
!88 = !{!77, !8, i64 0}
!89 = !{!77, !11, i64 76}
!90 = !{!91, !92, i64 4}
!91 = !{!"SeqDef_s", !11, i64 0, !92, i64 4, !92, i64 6}
!92 = !{!"short", !9, i64 0}
!93 = !{!91, !11, i64 0}
!94 = !{!91, !92, i64 6}
!95 = distinct !{!95, !18}
!96 = !{!"branch_weights", i32 2000, i32 2002}
!97 = distinct !{!97, !71}
!98 = distinct !{!98, !18, !80, !81}
!99 = distinct !{!99, !18, !80, !81}
!100 = distinct !{!100, !71}
!101 = distinct !{!101, !18, !80}
!102 = !{!6, !11, i64 196}
!103 = !{!6, !11, i64 28}
!104 = !{!6, !8, i64 112}
!105 = !{!14, !11, i64 8}
!106 = !{!6, !8, i64 128}
!107 = !{!14, !11, i64 4}
!108 = !{!6, !8, i64 16}
!109 = !{!14, !11, i64 0}
!110 = !{!6, !11, i64 40}
!111 = !{!14, !11, i64 12}
!112 = !{i64 0, i64 65}
!113 = !{!92, !92, i64 0}
!114 = distinct !{!114, !18}
!115 = !{!31, !12, i64 24}
!116 = !{!31, !12, i64 8}
!117 = !{!31, !8, i64 0}
!118 = !{i64 0, i64 4, !23, i64 4, i64 4, !23}
!119 = !{i64 0, i64 4, !23}
!120 = !{!31, !12, i64 16}
!121 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23}
!122 = !{!13, !8, i64 88}
!123 = !{!124, !11, i64 2056}
!124 = !{!"", !125, i64 0, !126, i64 2064}
!125 = !{!"", !9, i64 0, !11, i64 2056}
!126 = !{!"", !9, i64 0, !9, i64 772, !9, i64 2224, !11, i64 3540, !11, i64 3544, !11, i64 3548}
!127 = distinct !{!127, !18}
!128 = distinct !{!128, !18}
!129 = distinct !{!129, !18}
!130 = distinct !{!130, !18}
!131 = distinct !{!131, !18, !80, !81}
!132 = distinct !{!132, !18, !80, !81}
!133 = !{!6, !8, i64 120}
!134 = !{!6, !11, i64 48}
!135 = distinct !{!135, !71}
!136 = distinct !{!136, !18}
!137 = distinct !{!137, !18}
!138 = distinct !{!138, !18}
!139 = distinct !{!139, !71}
!140 = !{!6, !8, i64 248}
!141 = !{!6, !8, i64 0}
!142 = distinct !{!142, !71}
!143 = distinct !{!143, !18}
