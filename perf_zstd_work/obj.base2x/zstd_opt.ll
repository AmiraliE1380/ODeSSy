; ModuleID = '<stdin>'
source_filename = "/mydata/zstd/lib/compress/zstd_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repcodes_s = type { [3 x i32] }
%struct.ZSTD_optLdm_t = type { %struct.RawSeqStore_t, i32, i32, i32 }
%struct.RawSeqStore_t = type { ptr, i64, i64, i64, i64 }

@__const.ZSTD_selectBtGetAllMatches.getAllMatchesFns = private unnamed_addr constant [3 x [4 x ptr]] [[4 x ptr] [ptr @ZSTD_btGetAllMatches_noDict_3, ptr @ZSTD_btGetAllMatches_noDict_4, ptr @ZSTD_btGetAllMatches_noDict_5, ptr @ZSTD_btGetAllMatches_noDict_6], [4 x ptr] [ptr @ZSTD_btGetAllMatches_extDict_3, ptr @ZSTD_btGetAllMatches_extDict_4, ptr @ZSTD_btGetAllMatches_extDict_5, ptr @ZSTD_btGetAllMatches_extDict_6], [4 x ptr] [ptr @ZSTD_btGetAllMatches_dictMatchState_3, ptr @ZSTD_btGetAllMatches_dictMatchState_4, ptr @ZSTD_btGetAllMatches_dictMatchState_5, ptr @ZSTD_btGetAllMatches_dictMatchState_6]], align 16
@__const.ZSTD_rescaleFreqs.baseLLfreqs = private unnamed_addr constant [36 x i32] [i32 4, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@__const.ZSTD_rescaleFreqs.baseOFCfreqs = private unnamed_addr constant [32 x i32] [i32 6, i32 2, i32 1, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@LL_bits = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ZSTD_LLcode.LL_Code = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 16
@ML_bits = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ZSTD_MLcode.ML_Code = internal unnamed_addr constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$$$$%%%%&&&&&&&&''''''''(((((((((((((((())))))))))))))))********************************", align 16

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
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
  br i1 %14, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %3, %.preheader
  %15 = phi i32 [ %19, %.preheader ], [ %13, %3 ]
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 %16
  %18 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %0, ptr noundef %17, ptr noundef %2, i32 noundef %11, i32 noundef %5, i32 noundef 0)
  %19 = add i32 %18, %15
  %20 = icmp ult i32 %19, %11
  br i1 %20, label %.preheader, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %.preheader, %3
  store i32 %11, ptr %12, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btopt(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #2 {
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
  %.split = getelementptr inbounds nuw [32 x i8], ptr @__const.ZSTD_selectBtGetAllMatches.getAllMatchesFns, i64 %32
  %33 = getelementptr inbounds nuw [8 x i8], ptr %.split, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !23
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %36 = load i32, ptr %35, align 4, !tbaa !24
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 4095)
  %38 = icmp eq i32 %24, 3
  %39 = select i1 %38, i32 3, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %41 = load i32, ptr %40, align 4, !tbaa !19
  store i32 %41, ptr %9, align 4, !tbaa !25
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %43 = load ptr, ptr %42, align 8, !tbaa !26
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %45 = load ptr, ptr %44, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
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
  %60 = add nsw i64 %4, -8
  %61 = icmp sgt i64 %60, %59
  br i1 %61, label %62, label %1183

62:                                               ; preds = %51
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 %59
  %64 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %65 = getelementptr inbounds nuw i8, ptr %43, i64 12
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %69 = getelementptr inbounds nuw i8, ptr %43, i64 16
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %74 = getelementptr i8, ptr %0, i64 240
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %76 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %77 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %78 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %79 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %85 = getelementptr inbounds i8, ptr %15, i64 -32
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %87 = ptrtoint ptr %85 to i64
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %90 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %91 = and i32 %39, 1
  %.not = icmp eq i32 %91, 0
  %92 = getelementptr inbounds nuw i8, ptr %43, i64 28
  %93 = getelementptr inbounds nuw i8, ptr %43, i64 36
  %94 = getelementptr inbounds nuw i8, ptr %43, i64 40
  %95 = getelementptr inbounds nuw i8, ptr %43, i64 56
  %96 = getelementptr inbounds nuw i8, ptr %43, i64 64
  %97 = getelementptr inbounds nuw i8, ptr %43, i64 68
  %98 = getelementptr inbounds nuw i8, ptr %43, i64 84
  %99 = getelementptr inbounds nuw i8, ptr %43, i64 92
  %100 = getelementptr inbounds nuw i8, ptr %43, i64 96
  br label %101

101:                                              ; preds = %1176, %62
  %102 = phi ptr [ %63, %62 ], [ %1179, %1176 ]
  %103 = phi ptr [ %3, %62 ], [ %1178, %1176 ]
  %104 = phi i32 [ 0, %62 ], [ %1177, %1176 ]
  %105 = ptrtoint ptr %102 to i64
  %106 = ptrtoint ptr %103 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %111 = call i32 %34(ptr noundef %45, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %102, ptr noundef %15, ptr noundef %2, i32 noundef %110, i32 noundef %39) #12
  store i32 %111, ptr %12, align 4, !tbaa !25
  %112 = sub i64 %105, %55
  %113 = trunc i64 %112 to i32
  %114 = sub i64 %56, %105
  %115 = trunc i64 %114 to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %11, ptr noundef %45, ptr noundef %12, i32 noundef %113, i32 noundef %115, i32 noundef %39)
  %116 = load i32, ptr %12, align 4, !tbaa !25
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %101
  %119 = getelementptr inbounds nuw i8, ptr %102, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %1176

120:                                              ; preds = %101
  store i32 0, ptr %64, align 4, !tbaa !36
  store i32 %108, ptr %65, align 4, !tbaa !38
  %121 = load i32, ptr %66, align 8, !tbaa !39
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = add i32 %108, 1
  %125 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %124, i1 true)
  %126 = shl nuw nsw i32 %125, 8
  %127 = xor i32 %126, 7936
  br label %166

128:                                              ; preds = %120
  %129 = icmp eq i32 %108, 131072
  br i1 %129, label %130, label %140

130:                                              ; preds = %128
  %131 = load i32, ptr %67, align 4, !tbaa !40
  %132 = load ptr, ptr %68, align 8, !tbaa !41
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 140
  %134 = load i32, ptr %133, align 4, !tbaa !25
  %135 = add i32 %134, 1
  %136 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %135, i1 true)
  %137 = shl nuw nsw i32 %136, 8
  %138 = add i32 %131, -3584
  %139 = add i32 %138, %137
  br label %166

140:                                              ; preds = %128
  %141 = icmp ugt i32 %108, 63
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %108, i1 true)
  %144 = sub nuw nsw i32 50, %143
  br label %150

145:                                              ; preds = %140
  %146 = and i64 %107, 63
  %147 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !42
  %149 = zext i8 %148 to i32
  br label %150

150:                                              ; preds = %145, %142
  %151 = phi i32 [ %144, %142 ], [ %149, %145 ]
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !42
  %155 = zext i8 %154 to i32
  %156 = load i32, ptr %67, align 4, !tbaa !40
  %157 = load ptr, ptr %68, align 8, !tbaa !41
  %158 = getelementptr inbounds nuw [4 x i8], ptr %157, i64 %152
  %159 = load i32, ptr %158, align 4, !tbaa !25
  %160 = add i32 %159, 1
  %161 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %160, i1 true)
  %162 = add nuw nsw i32 %161, %155
  %163 = shl nuw nsw i32 %162, 8
  %164 = add i32 %156, -7936
  %165 = add i32 %164, %163
  br label %166

166:                                              ; preds = %150, %130, %123
  %167 = phi i32 [ %139, %130 ], [ %165, %150 ], [ %127, %123 ]
  store i32 %167, ptr %43, align 4, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %69, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %168 = add i32 %116, -1
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %169
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 4
  %172 = load i32, ptr %171, align 4, !tbaa !44
  %173 = icmp ugt i32 %172, %37
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = load i32, ptr %170, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %762

176:                                              ; preds = %166
  store i32 1073741824, ptr %92, align 4, !tbaa !43
  store i32 0, ptr %93, align 4, !tbaa !36
  %177 = add i32 %108, 1
  store i32 %177, ptr %94, align 4, !tbaa !38
  store i32 1073741824, ptr %95, align 4, !tbaa !43
  store i32 0, ptr %96, align 4, !tbaa !36
  %178 = add i32 %108, 2
  store i32 %178, ptr %97, align 4, !tbaa !38
  br i1 %.not, label %179, label %181

179:                                              ; preds = %176
  store i32 1073741824, ptr %98, align 4, !tbaa !43
  store i32 0, ptr %99, align 4, !tbaa !36
  %180 = add i32 %108, 3
  store i32 %180, ptr %100, align 4, !tbaa !38
  br label %181

181:                                              ; preds = %179, %176
  %182 = zext i32 %116 to i64
  br label %183

183:                                              ; preds = %.loopexit107, %181
  %184 = phi i64 [ 0, %181 ], [ %282, %.loopexit107 ]
  %185 = phi i32 [ %39, %181 ], [ %281, %.loopexit107 ]
  %186 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %184
  %187 = load i32, ptr %186, align 4, !tbaa !46
  %188 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %189 = load i32, ptr %188, align 4, !tbaa !44
  %190 = icmp ugt i32 %185, %189
  br i1 %190, label %.loopexit107, label %191

191:                                              ; preds = %183
  %192 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %187, i1 true)
  %193 = xor i32 %192, 31
  %194 = load i32, ptr %66, align 8, !tbaa !39
  %195 = icmp eq i32 %194, 1
  %196 = shl nuw nsw i32 %193, 8
  %197 = add nuw nsw i32 %196, 4096
  br i1 %195, label %.preheader105, label %216

.preheader105:                                    ; preds = %191, %207
  %198 = phi i32 [ %214, %207 ], [ %185, %191 ]
  %199 = add i32 %198, -2
  %200 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %199, i1 true)
  %201 = shl nuw nsw i32 %200, 8
  %202 = xor i32 %201, 7936
  %203 = add nuw nsw i32 %197, %202
  %204 = load i32, ptr %43, align 4, !tbaa !43
  %205 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %204, i32 %203), !nosanitize !47
  %206 = extractvalue { i32, i1 } %205, 1, !nosanitize !47
  br i1 %206, label %.loopexit91, label %207, !prof !48, !nosanitize !47

207:                                              ; preds = %.preheader105
  %208 = zext i32 %198 to i64
  %209 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %208
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 8
  store i32 %198, ptr %210, align 4, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %209, i64 4
  store i32 %187, ptr %211, align 4, !tbaa !49
  %212 = getelementptr inbounds nuw i8, ptr %209, i64 12
  store i32 0, ptr %212, align 4, !tbaa !38
  %213 = extractvalue { i32, i1 } %205, 0, !nosanitize !47
  store i32 %213, ptr %209, align 4, !tbaa !43
  %214 = add i32 %198, 1
  %215 = icmp ugt i32 %214, %189
  br i1 %215, label %.loopexit107, label %.preheader105, !llvm.loop !50

216:                                              ; preds = %191
  %217 = icmp samesign ugt i32 %193, 19
  %218 = shl nuw nsw i32 %193, 9
  %219 = zext nneg i32 %193 to i64
  %220 = load i32, ptr %70, align 4, !tbaa !51
  %221 = load ptr, ptr %71, align 8, !tbaa !52
  %222 = getelementptr inbounds nuw [4 x i8], ptr %221, i64 %219
  %223 = load i32, ptr %72, align 8, !tbaa !53
  %224 = load ptr, ptr %73, align 8, !tbaa !54
  %225 = add nuw nsw i32 %218, -25549
  %226 = select i1 %217, i32 %225, i32 -15821
  %227 = add i32 %220, %226
  %228 = add i32 %227, %223
  br label %229

229:                                              ; preds = %277, %216
  %230 = phi i32 [ %185, %216 ], [ %279, %277 ]
  %231 = add i32 %230, -3
  %232 = load i32, ptr %222, align 4, !tbaa !25
  %233 = add i32 %232, 1
  %234 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %233, i1 true)
  %235 = icmp ugt i32 %231, 127
  br i1 %235, label %236, label %239

236:                                              ; preds = %229
  %237 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %231, i1 true)
  %238 = sub nuw nsw i32 67, %237
  br label %244

239:                                              ; preds = %229
  %240 = zext nneg i32 %231 to i64
  %241 = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !42
  %243 = zext i8 %242 to i32
  br label %244

244:                                              ; preds = %239, %236
  %245 = phi i32 [ %238, %236 ], [ %243, %239 ]
  %246 = zext nneg i32 %245 to i64
  %247 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !42
  %249 = zext i8 %248 to i32
  %250 = getelementptr inbounds nuw [4 x i8], ptr %224, i64 %246
  %251 = load i32, ptr %250, align 4, !tbaa !25
  %252 = add i32 %251, 1
  %253 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %252, i1 true)
  %254 = add nuw nsw i32 %234, %193
  %255 = add nuw nsw i32 %254, %249
  %reass.add = add nuw nsw i32 %255, %253
  %reass.mul = shl nuw nsw i32 %reass.add, 8
  %256 = add i32 %228, %reass.mul
  %257 = load i32, ptr %43, align 4, !tbaa !43
  %258 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %257, i32 %256), !nosanitize !47
  %259 = extractvalue { i32, i1 } %258, 1, !nosanitize !47
  br i1 %259, label %.loopexit91, label %260, !prof !48, !nosanitize !47

.loopexit91:                                      ; preds = %509, %487, %418, %319, %260, %244, %.preheader105, %662, %565
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

260:                                              ; preds = %244
  %261 = extractvalue { i32, i1 } %258, 0, !nosanitize !47
  %262 = zext i32 %230 to i64
  %263 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %262
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 8
  store i32 %230, ptr %264, align 4, !tbaa !36
  %265 = getelementptr inbounds nuw i8, ptr %263, i64 4
  store i32 %187, ptr %265, align 4, !tbaa !49
  %266 = getelementptr inbounds nuw i8, ptr %263, i64 12
  store i32 0, ptr %266, align 4, !tbaa !38
  %267 = load i32, ptr %67, align 4, !tbaa !40
  %268 = load ptr, ptr %68, align 8, !tbaa !41
  %269 = load i32, ptr %268, align 4, !tbaa !25
  %270 = add i32 %269, 1
  %271 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %270, i1 true)
  %272 = shl nuw nsw i32 %271, 8
  %273 = add i32 %267, -7936
  %274 = add i32 %273, %272
  %275 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %261, i32 %274), !nosanitize !47
  %276 = extractvalue { i32, i1 } %275, 1, !nosanitize !47
  br i1 %276, label %.loopexit91, label %277, !prof !48, !nosanitize !47

277:                                              ; preds = %260
  %278 = extractvalue { i32, i1 } %275, 0, !nosanitize !47
  store i32 %278, ptr %263, align 4, !tbaa !43
  %279 = add i32 %230, 1
  %280 = icmp ugt i32 %279, %189
  br i1 %280, label %.loopexit107, label %229, !llvm.loop !50

.loopexit107:                                     ; preds = %277, %207, %183
  %281 = phi i32 [ %185, %183 ], [ %214, %207 ], [ %279, %277 ]
  %282 = add nuw nsw i64 %184, 1
  %283 = icmp eq i64 %282, %182
  br i1 %283, label %.preheader114.preheader, label %183, !llvm.loop !55

.preheader114.preheader:                          ; preds = %.loopexit107
  %284 = zext i32 %281 to i64
  %285 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %284
  store i32 1073741824, ptr %285, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %286 = add i32 %281, -1
  br label %.preheader114

.preheader114:                                    ; preds = %733, %.preheader114.preheader
  %287 = phi i32 [ %734, %733 ], [ 1, %.preheader114.preheader ]
  %288 = phi i32 [ %735, %733 ], [ %286, %.preheader114.preheader ]
  %289 = zext i32 %287 to i64
  %290 = getelementptr inbounds nuw i8, ptr %102, i64 %289
  %291 = add i32 %287, -1
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %292
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 12
  %295 = load i32, ptr %294, align 4, !tbaa !38
  %296 = add i32 %295, 1
  %297 = load i32, ptr %293, align 4, !tbaa !43
  %298 = getelementptr inbounds i8, ptr %290, i64 -1
  %299 = load i32, ptr %74, align 8, !tbaa !56
  %300 = icmp eq i32 %299, 2
  br i1 %300, label %319, label %301

301:                                              ; preds = %.preheader114
  %302 = load i32, ptr %66, align 8, !tbaa !39
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %319, label %304

304:                                              ; preds = %301
  %305 = load i32, ptr %75, align 8, !tbaa !57
  %306 = add i32 %305, -256
  %307 = load ptr, ptr %14, align 8, !tbaa !58
  %308 = load i8, ptr %298, align 1, !tbaa !42
  %309 = zext i8 %308 to i64
  %310 = getelementptr inbounds nuw [4 x i8], ptr %307, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !25
  %312 = add i32 %311, 1
  %313 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %312, i1 true)
  %314 = shl nuw nsw i32 %313, 8
  %315 = xor i32 %314, 7936
  %316 = icmp ugt i32 %315, %306
  %317 = sub i32 %305, %315
  %318 = select i1 %316, i32 256, i32 %317, !prof !59
  br label %319

319:                                              ; preds = %304, %301, %.preheader114
  %320 = phi i32 [ 2048, %.preheader114 ], [ 1536, %301 ], [ %318, %304 ]
  %321 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %297, i32 %320), !nosanitize !47
  %322 = extractvalue { i32, i1 } %321, 0, !nosanitize !47
  %323 = extractvalue { i32, i1 } %321, 1, !nosanitize !47
  br i1 %323, label %.loopexit91, label %324, !prof !48, !nosanitize !47

324:                                              ; preds = %319
  %325 = load i32, ptr %66, align 8, !tbaa !39
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %350, label %327

327:                                              ; preds = %324
  %328 = icmp eq i32 %296, 131072
  br i1 %328, label %329, label %340

329:                                              ; preds = %327
  %330 = load i32, ptr %67, align 4, !tbaa !40
  %331 = load ptr, ptr %68, align 8, !tbaa !41
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 140
  %333 = load i32, ptr %332, align 4, !tbaa !25
  %334 = add i32 %333, 1
  %335 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %334, i1 true)
  %336 = shl nuw nsw i32 %335, 8
  %337 = add i32 %330, -3584
  %338 = add i32 %337, %336
  %339 = add i32 %330, -7936
  br label %385

340:                                              ; preds = %327
  %341 = icmp ugt i32 %296, 63
  br i1 %341, label %342, label %345

342:                                              ; preds = %340
  %343 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %296, i1 true)
  %344 = sub nuw nsw i32 50, %343
  br label %358

345:                                              ; preds = %340
  %346 = zext nneg i32 %296 to i64
  %347 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !42
  %349 = zext i8 %348 to i32
  br label %358

350:                                              ; preds = %324
  %351 = add i32 %295, 2
  %352 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %351, i1 true)
  %353 = shl nuw nsw i32 %352, 8
  %354 = xor i32 %353, 7936
  %355 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %296, i1 true)
  %356 = shl nuw nsw i32 %355, 8
  %357 = xor i32 %356, 7936
  br label %412

358:                                              ; preds = %345, %342
  %359 = phi i32 [ %344, %342 ], [ %349, %345 ]
  %360 = zext nneg i32 %359 to i64
  %361 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %360
  %362 = load i8, ptr %361, align 1, !tbaa !42
  %363 = zext i8 %362 to i32
  %364 = load i32, ptr %67, align 4, !tbaa !40
  %365 = load ptr, ptr %68, align 8, !tbaa !41
  %366 = getelementptr inbounds nuw [4 x i8], ptr %365, i64 %360
  %367 = load i32, ptr %366, align 4, !tbaa !25
  %368 = add i32 %367, 1
  %369 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %368, i1 true)
  %370 = add nuw nsw i32 %369, %363
  %371 = shl nuw nsw i32 %370, 8
  %372 = add i32 %364, -7936
  %373 = add i32 %371, %372
  %374 = icmp eq i32 %295, 131072
  br i1 %374, label %375, label %383

375:                                              ; preds = %358
  %376 = getelementptr inbounds nuw i8, ptr %365, i64 140
  %377 = load i32, ptr %376, align 4, !tbaa !25
  %378 = add i32 %377, 1
  %379 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %378, i1 true)
  %380 = shl nuw nsw i32 %379, 8
  %381 = add i32 %364, -3584
  %382 = add i32 %381, %380
  br label %412

383:                                              ; preds = %358
  %384 = icmp ugt i32 %295, 63
  br i1 %384, label %385, label %391

385:                                              ; preds = %383, %329
  %386 = phi i32 [ %339, %329 ], [ %372, %383 ]
  %387 = phi ptr [ %331, %329 ], [ %365, %383 ]
  %388 = phi i32 [ %338, %329 ], [ %373, %383 ]
  %389 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %295, i1 true)
  %390 = sub nuw nsw i32 50, %389
  br label %396

391:                                              ; preds = %383
  %392 = zext nneg i32 %295 to i64
  %393 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !42
  %395 = zext i8 %394 to i32
  br label %396

396:                                              ; preds = %391, %385
  %397 = phi i32 [ %372, %391 ], [ %386, %385 ]
  %398 = phi ptr [ %365, %391 ], [ %387, %385 ]
  %399 = phi i32 [ %373, %391 ], [ %388, %385 ]
  %400 = phi i32 [ %395, %391 ], [ %390, %385 ]
  %401 = zext nneg i32 %400 to i64
  %402 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %401
  %403 = load i8, ptr %402, align 1, !tbaa !42
  %404 = zext i8 %403 to i32
  %405 = getelementptr inbounds nuw [4 x i8], ptr %398, i64 %401
  %406 = load i32, ptr %405, align 4, !tbaa !25
  %407 = add i32 %406, 1
  %408 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %407, i1 true)
  %409 = add nuw nsw i32 %408, %404
  %410 = shl nuw nsw i32 %409, 8
  %411 = add i32 %410, %397
  br label %412

412:                                              ; preds = %396, %375, %350
  %413 = phi i32 [ %373, %375 ], [ %399, %396 ], [ %354, %350 ]
  %414 = phi i32 [ %382, %375 ], [ %411, %396 ], [ %357, %350 ]
  %415 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %413, i32 %414), !nosanitize !47
  %416 = extractvalue { i32, i1 } %415, 1, !nosanitize !47
  br i1 %416, label %417, label %418, !prof !48, !nosanitize !47

417:                                              ; preds = %412
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

418:                                              ; preds = %412
  %419 = extractvalue { i32, i1 } %415, 0, !nosanitize !47
  %420 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %322, i32 %419), !nosanitize !47
  %421 = extractvalue { i32, i1 } %420, 0, !nosanitize !47
  %422 = extractvalue { i32, i1 } %420, 1, !nosanitize !47
  br i1 %422, label %.loopexit91, label %423, !prof !48, !nosanitize !47

423:                                              ; preds = %418
  %424 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %289
  %425 = load i32, ptr %424, align 4, !tbaa !43
  %426 = icmp sgt i32 %421, %425
  %427 = getelementptr inbounds nuw i8, ptr %424, i64 12
  br i1 %426, label %428, label %430

428:                                              ; preds = %423
  %429 = load i32, ptr %427, align 4, !tbaa !38
  br label %431

430:                                              ; preds = %423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %424, ptr noundef nonnull align 4 dereferenceable(28) %293, i64 28, i1 false), !tbaa.struct !60
  store i32 %296, ptr %427, align 4, !tbaa !38
  store i32 %421, ptr %424, align 4, !tbaa !43
  br label %431

431:                                              ; preds = %430, %428
  %432 = phi i32 [ %425, %428 ], [ %421, %430 ]
  %433 = phi i32 [ %429, %428 ], [ %296, %430 ]
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %481

435:                                              ; preds = %431
  %436 = getelementptr inbounds nuw i8, ptr %424, i64 8
  %437 = load i32, ptr %436, align 4, !tbaa !36
  %438 = sub i32 %287, %437
  %439 = zext i32 %438 to i64
  %440 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %439
  %441 = getelementptr inbounds nuw i8, ptr %440, i64 16
  %442 = getelementptr inbounds nuw i8, ptr %424, i64 4
  %443 = load i32, ptr %442, align 4, !tbaa !49
  %444 = getelementptr inbounds nuw i8, ptr %440, i64 12
  %445 = load i32, ptr %444, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull readonly align 4 dereferenceable(12) %441, i64 12, i1 false)
  %446 = icmp ugt i32 %443, 3
  br i1 %446, label %447, label %451

447:                                              ; preds = %435
  %448 = load i32, ptr %77, align 4, !tbaa !25
  %449 = load i32, ptr %8, align 8, !tbaa !25
  store i32 %449, ptr %77, align 4, !tbaa !25
  %450 = add i32 %443, -3
  br label %473

451:                                              ; preds = %435
  %452 = icmp eq i32 %445, 0
  %453 = zext i1 %452 to i32
  %454 = add nsw i32 %443, -1
  %455 = add nsw i32 %454, %453
  switch i32 %455, label %461 [
    i32 0, label %456
    i32 3, label %458
  ]

456:                                              ; preds = %451
  %457 = load i32, ptr %76, align 8
  br label %476

458:                                              ; preds = %451
  %459 = load i32, ptr %8, align 8, !tbaa !25
  %460 = add i32 %459, -1
  br label %466

461:                                              ; preds = %451
  %462 = zext i32 %455 to i64
  %463 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %462
  %464 = load i32, ptr %463, align 4, !tbaa !25
  %465 = load i32, ptr %8, align 8, !tbaa !25
  br label %466

466:                                              ; preds = %461, %458
  %467 = phi i32 [ %459, %458 ], [ %465, %461 ]
  %468 = phi i32 [ %460, %458 ], [ %464, %461 ]
  %469 = icmp eq i32 %455, 1
  %470 = load i32, ptr %76, align 8
  %471 = load i32, ptr %77, align 4
  %472 = select i1 %469, i32 %470, i32 %471
  store i32 %467, ptr %77, align 4, !tbaa !25
  br label %473

473:                                              ; preds = %466, %447
  %474 = phi i32 [ %472, %466 ], [ %448, %447 ]
  %475 = phi i32 [ %468, %466 ], [ %450, %447 ]
  store i32 %475, ptr %8, align 8, !tbaa !25
  br label %476

476:                                              ; preds = %473, %456
  %477 = phi i32 [ %457, %456 ], [ %474, %473 ]
  %478 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %479 = getelementptr inbounds nuw i8, ptr %424, i64 16
  store i64 %478, ptr %479, align 4
  %480 = getelementptr inbounds nuw i8, ptr %424, i64 24
  store i32 %477, ptr %480, align 4
  br label %481

481:                                              ; preds = %476, %431
  %482 = icmp ugt ptr %290, %16
  br i1 %482, label %483, label %485

483:                                              ; preds = %481
  %484 = add i32 %287, 1
  br label %733

485:                                              ; preds = %481
  %486 = icmp eq i32 %287, %288
  br i1 %486, label %.loopexit116, label %487

487:                                              ; preds = %485
  %488 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %432, i32 128), !nosanitize !47
  %489 = extractvalue { i32, i1 } %488, 1, !nosanitize !47
  br i1 %489, label %.loopexit91, label %490, !prof !48, !nosanitize !47

490:                                              ; preds = %487
  %491 = extractvalue { i32, i1 } %488, 0, !nosanitize !47
  %492 = add i32 %287, 1
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %493
  %495 = load i32, ptr %494, align 4, !tbaa !43
  %496 = icmp sgt i32 %495, %491
  br i1 %496, label %497, label %733

497:                                              ; preds = %490
  %498 = load i32, ptr %66, align 8, !tbaa !39
  %499 = icmp eq i32 %498, 1
  br i1 %499, label %509, label %500

500:                                              ; preds = %497
  %501 = load i32, ptr %67, align 4, !tbaa !40
  %502 = load ptr, ptr %68, align 8, !tbaa !41
  %503 = load i32, ptr %502, align 4, !tbaa !25
  %504 = add i32 %503, 1
  %505 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %504, i1 true)
  %506 = shl nuw nsw i32 %505, 8
  %507 = add i32 %501, -7936
  %508 = add i32 %507, %506
  br label %509

509:                                              ; preds = %500, %497
  %510 = phi i32 [ %508, %500 ], [ 0, %497 ]
  %511 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %432, i32 %510), !nosanitize !47
  %512 = extractvalue { i32, i1 } %511, 0, !nosanitize !47
  %513 = extractvalue { i32, i1 } %511, 1, !nosanitize !47
  br i1 %513, label %.loopexit91, label %514, !prof !48, !nosanitize !47

514:                                              ; preds = %509
  %515 = zext i1 %434 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %516 = getelementptr inbounds nuw i8, ptr %424, i64 16
  %517 = call i32 %34(ptr noundef %45, ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef %290, ptr noundef %15, ptr noundef nonnull %516, i32 noundef %515, i32 noundef %39) #12
  store i32 %517, ptr %13, align 4, !tbaa !25
  %518 = ptrtoint ptr %290 to i64
  %519 = sub i64 %518, %55
  %520 = trunc i64 %519 to i32
  %521 = sub i64 %56, %518
  %522 = trunc i64 %521 to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %11, ptr noundef %45, ptr noundef %13, i32 noundef %520, i32 noundef %522, i32 noundef %39)
  %523 = load i32, ptr %13, align 4, !tbaa !25
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %514
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %733

526:                                              ; preds = %514
  %527 = add i32 %523, -1
  %528 = zext i32 %527 to i64
  %.split71 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %528
  %529 = getelementptr inbounds nuw i8, ptr %.split71, i64 4
  %530 = load i32, ptr %529, align 4, !tbaa !44
  %531 = icmp ule i32 %530, %37
  %532 = add i32 %530, %287
  %533 = icmp ult i32 %532, 4096
  %534 = and i1 %531, %533
  %535 = zext nneg i32 %530 to i64
  %536 = getelementptr inbounds nuw i8, ptr %290, i64 %535
  %537 = icmp ult ptr %536, %15
  %538 = select i1 %534, i1 %537, i1 false
  br i1 %538, label %539, label %747

539:                                              ; preds = %526
  %540 = zext i32 %523 to i64
  br label %541

541:                                              ; preds = %.loopexit92, %539
  %542 = phi i64 [ 0, %539 ], [ %727, %.loopexit92 ]
  %543 = phi i32 [ %288, %539 ], [ %726, %.loopexit92 ]
  %544 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %542
  %545 = load i32, ptr %544, align 4, !tbaa !46
  %546 = getelementptr inbounds nuw i8, ptr %544, i64 4
  %547 = load i32, ptr %546, align 4, !tbaa !44
  %548 = icmp eq i64 %542, 0
  br i1 %548, label %553, label %549

549:                                              ; preds = %541
  %550 = getelementptr i8, ptr %544, i64 -4
  %551 = load i32, ptr %550, align 4, !tbaa !44
  %552 = add i32 %551, 1
  br label %553

553:                                              ; preds = %549, %541
  %554 = phi i32 [ %552, %549 ], [ %39, %541 ]
  %555 = icmp ult i32 %547, %554
  br i1 %555, label %.loopexit92, label %556

556:                                              ; preds = %553
  %557 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %545, i1 true)
  %558 = xor i32 %557, 31
  %559 = load i32, ptr %66, align 8, !tbaa !39
  %560 = icmp eq i32 %559, 1
  %561 = shl nuw nsw i32 %558, 8
  %562 = add nuw nsw i32 %561, 4096
  br i1 %560, label %563, label %628

563:                                              ; preds = %556
  %564 = add i32 %547, %287
  br label %565

565:                                              ; preds = %606, %563
  %566 = phi i32 [ 0, %563 ], [ %615, %606 ]
  %567 = phi i32 [ %543, %563 ], [ %608, %606 ]
  %568 = phi i32 [ %547, %563 ], [ %613, %606 ]
  %569 = sub i32 %564, %566
  %570 = zext i32 %569 to i64
  %571 = add i32 %568, %287
  %572 = add i32 %568, -2
  %573 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %572, i1 true)
  %574 = shl nuw nsw i32 %573, 8
  %575 = xor i32 %574, 7936
  %576 = add nuw nsw i32 %562, %575
  %577 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %512, i32 %576), !nosanitize !47
  %578 = extractvalue { i32, i1 } %577, 0, !nosanitize !47
  %579 = extractvalue { i32, i1 } %577, 1, !nosanitize !47
  br i1 %579, label %.loopexit91, label %580, !prof !48, !nosanitize !47

580:                                              ; preds = %565
  %581 = icmp ugt i32 %571, %567
  br i1 %581, label %587, label %582

582:                                              ; preds = %580
  %583 = zext i32 %571 to i64
  %584 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %583
  %585 = load i32, ptr %584, align 4, !tbaa !43
  %586 = icmp slt i32 %578, %585
  br i1 %586, label %606, label %.loopexit92

587:                                              ; preds = %580
  %588 = zext i32 %567 to i64
  %589 = zext i32 %571 to i64
  %590 = sub nsw i64 %570, %588
  %591 = and i64 %590, 3
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %.loopexit86, label %.preheader85

.preheader85:                                     ; preds = %587, %.preheader85
  %593 = phi i64 [ %595, %.preheader85 ], [ %588, %587 ]
  %594 = phi i64 [ %598, %.preheader85 ], [ 0, %587 ]
  %595 = add nuw nsw i64 %593, 1
  %596 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %595
  store i32 1073741824, ptr %596, align 4, !tbaa !43
  %597 = getelementptr inbounds nuw i8, ptr %596, i64 12
  store i32 1, ptr %597, align 4, !tbaa !38
  %598 = add nuw nsw i64 %594, 1
  %599 = icmp eq i64 %598, %591
  br i1 %599, label %.loopexit86, label %.preheader85, !llvm.loop !61

.loopexit86:                                      ; preds = %.preheader85, %587
  %600 = phi i64 [ %588, %587 ], [ %595, %.preheader85 ]
  %601 = phi i64 [ poison, %587 ], [ %595, %.preheader85 ]
  %602 = sub nsw i64 %588, %570
  %603 = icmp ugt i64 %602, -4
  br i1 %603, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.loopexit86
  %604 = phi i64 [ %601, %.loopexit86 ], [ %624, %.preheader ]
  %605 = trunc nuw i64 %604 to i32
  br label %606

606:                                              ; preds = %.loopexit, %582
  %607 = phi i64 [ %589, %.loopexit ], [ %583, %582 ]
  %608 = phi i32 [ %605, %.loopexit ], [ %567, %582 ]
  %609 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %607
  %610 = getelementptr inbounds nuw i8, ptr %609, i64 8
  store i32 %568, ptr %610, align 4, !tbaa !36
  %611 = getelementptr inbounds nuw i8, ptr %609, i64 4
  store i32 %545, ptr %611, align 4, !tbaa !49
  %612 = getelementptr inbounds nuw i8, ptr %609, i64 12
  store i32 0, ptr %612, align 4, !tbaa !38
  store i32 %578, ptr %609, align 4, !tbaa !43
  %613 = add i32 %568, -1
  %614 = icmp ult i32 %613, %554
  %615 = add i32 %566, 1
  br i1 %614, label %.loopexit92, label %565, !llvm.loop !63

.preheader:                                       ; preds = %.loopexit86, %.preheader
  %616 = phi i64 [ %624, %.preheader ], [ %600, %.loopexit86 ]
  %617 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %616
  %618 = getelementptr inbounds nuw i8, ptr %617, i64 28
  store i32 1073741824, ptr %618, align 4, !tbaa !43
  %619 = getelementptr inbounds nuw i8, ptr %617, i64 40
  store i32 1, ptr %619, align 4, !tbaa !38
  %620 = getelementptr inbounds nuw i8, ptr %617, i64 56
  store i32 1073741824, ptr %620, align 4, !tbaa !43
  %621 = getelementptr inbounds nuw i8, ptr %617, i64 68
  store i32 1, ptr %621, align 4, !tbaa !38
  %622 = getelementptr inbounds nuw i8, ptr %617, i64 84
  store i32 1073741824, ptr %622, align 4, !tbaa !43
  %623 = getelementptr inbounds nuw i8, ptr %617, i64 96
  store i32 1, ptr %623, align 4, !tbaa !38
  %624 = add nuw nsw i64 %616, 4
  %625 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %624
  store i32 1073741824, ptr %625, align 4, !tbaa !43
  %626 = getelementptr inbounds nuw i8, ptr %625, i64 12
  store i32 1, ptr %626, align 4, !tbaa !38
  %627 = icmp samesign ult i64 %624, %589
  br i1 %627, label %.preheader, label %.loopexit, !llvm.loop !64

628:                                              ; preds = %556
  %629 = icmp samesign ugt i32 %558, 19
  %630 = shl nuw nsw i32 %558, 9
  %631 = zext nneg i32 %558 to i64
  %632 = load i32, ptr %70, align 4, !tbaa !51
  %633 = load ptr, ptr %71, align 8, !tbaa !52
  %634 = getelementptr inbounds nuw [4 x i8], ptr %633, i64 %631
  %635 = load i32, ptr %72, align 8, !tbaa !53
  %636 = load ptr, ptr %73, align 8, !tbaa !54
  %637 = add i32 %547, %287
  %638 = add nuw nsw i32 %630, -25549
  %639 = select i1 %629, i32 %638, i32 -15821
  %640 = add i32 %632, %639
  %641 = add i32 %640, %635
  br label %642

642:                                              ; preds = %716, %628
  %643 = phi i32 [ 0, %628 ], [ %725, %716 ]
  %644 = phi i32 [ %543, %628 ], [ %718, %716 ]
  %645 = phi i32 [ %547, %628 ], [ %723, %716 ]
  %646 = sub i32 %637, %643
  %647 = zext i32 %646 to i64
  %648 = add i32 %645, %287
  %649 = add i32 %645, -3
  %650 = load i32, ptr %634, align 4, !tbaa !25
  %651 = add i32 %650, 1
  %652 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %651, i1 true)
  %653 = icmp ugt i32 %649, 127
  br i1 %653, label %654, label %657

654:                                              ; preds = %642
  %655 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %649, i1 true)
  %656 = sub nuw nsw i32 67, %655
  br label %662

657:                                              ; preds = %642
  %658 = zext nneg i32 %649 to i64
  %659 = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %658
  %660 = load i8, ptr %659, align 1, !tbaa !42
  %661 = zext i8 %660 to i32
  br label %662

662:                                              ; preds = %657, %654
  %663 = phi i32 [ %656, %654 ], [ %661, %657 ]
  %664 = zext nneg i32 %663 to i64
  %665 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %664
  %666 = load i8, ptr %665, align 1, !tbaa !42
  %667 = zext i8 %666 to i32
  %668 = getelementptr inbounds nuw [4 x i8], ptr %636, i64 %664
  %669 = load i32, ptr %668, align 4, !tbaa !25
  %670 = add i32 %669, 1
  %671 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %670, i1 true)
  %672 = add nuw nsw i32 %652, %558
  %673 = add nuw nsw i32 %672, %667
  %reass.add78 = add nuw nsw i32 %673, %671
  %reass.mul79 = shl nuw nsw i32 %reass.add78, 8
  %674 = add i32 %641, %reass.mul79
  %675 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %512, i32 %674), !nosanitize !47
  %676 = extractvalue { i32, i1 } %675, 0, !nosanitize !47
  %677 = extractvalue { i32, i1 } %675, 1, !nosanitize !47
  br i1 %677, label %.loopexit91, label %678, !prof !48, !nosanitize !47

678:                                              ; preds = %662
  %679 = icmp ugt i32 %648, %644
  br i1 %679, label %685, label %680

680:                                              ; preds = %678
  %681 = zext i32 %648 to i64
  %682 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %681
  %683 = load i32, ptr %682, align 4, !tbaa !43
  %684 = icmp slt i32 %676, %683
  br i1 %684, label %716, label %.loopexit92

685:                                              ; preds = %678
  %686 = zext i32 %644 to i64
  %687 = zext i32 %648 to i64
  %688 = sub nsw i64 %647, %686
  %689 = and i64 %688, 3
  %690 = icmp eq i64 %689, 0
  br i1 %690, label %.loopexit90, label %.preheader89

.preheader89:                                     ; preds = %685, %.preheader89
  %691 = phi i64 [ %693, %.preheader89 ], [ %686, %685 ]
  %692 = phi i64 [ %696, %.preheader89 ], [ 0, %685 ]
  %693 = add nuw nsw i64 %691, 1
  %694 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %693
  store i32 1073741824, ptr %694, align 4, !tbaa !43
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 12
  store i32 1, ptr %695, align 4, !tbaa !38
  %696 = add nuw nsw i64 %692, 1
  %697 = icmp eq i64 %696, %689
  br i1 %697, label %.loopexit90, label %.preheader89, !llvm.loop !65

.loopexit90:                                      ; preds = %.preheader89, %685
  %698 = phi i64 [ %686, %685 ], [ %693, %.preheader89 ]
  %699 = phi i64 [ poison, %685 ], [ %693, %.preheader89 ]
  %700 = sub nsw i64 %686, %647
  %701 = icmp ugt i64 %700, -4
  br i1 %701, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %.loopexit90, %.preheader87
  %702 = phi i64 [ %710, %.preheader87 ], [ %698, %.loopexit90 ]
  %703 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %702
  %704 = getelementptr inbounds nuw i8, ptr %703, i64 28
  store i32 1073741824, ptr %704, align 4, !tbaa !43
  %705 = getelementptr inbounds nuw i8, ptr %703, i64 40
  store i32 1, ptr %705, align 4, !tbaa !38
  %706 = getelementptr inbounds nuw i8, ptr %703, i64 56
  store i32 1073741824, ptr %706, align 4, !tbaa !43
  %707 = getelementptr inbounds nuw i8, ptr %703, i64 68
  store i32 1, ptr %707, align 4, !tbaa !38
  %708 = getelementptr inbounds nuw i8, ptr %703, i64 84
  store i32 1073741824, ptr %708, align 4, !tbaa !43
  %709 = getelementptr inbounds nuw i8, ptr %703, i64 96
  store i32 1, ptr %709, align 4, !tbaa !38
  %710 = add nuw nsw i64 %702, 4
  %711 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %710
  store i32 1073741824, ptr %711, align 4, !tbaa !43
  %712 = getelementptr inbounds nuw i8, ptr %711, i64 12
  store i32 1, ptr %712, align 4, !tbaa !38
  %713 = icmp samesign ult i64 %710, %687
  br i1 %713, label %.preheader87, label %.loopexit88, !llvm.loop !64

.loopexit88:                                      ; preds = %.preheader87, %.loopexit90
  %714 = phi i64 [ %699, %.loopexit90 ], [ %710, %.preheader87 ]
  %715 = trunc nuw i64 %714 to i32
  br label %716

716:                                              ; preds = %.loopexit88, %680
  %717 = phi i64 [ %687, %.loopexit88 ], [ %681, %680 ]
  %718 = phi i32 [ %715, %.loopexit88 ], [ %644, %680 ]
  %719 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %717
  %720 = getelementptr inbounds nuw i8, ptr %719, i64 8
  store i32 %645, ptr %720, align 4, !tbaa !36
  %721 = getelementptr inbounds nuw i8, ptr %719, i64 4
  store i32 %545, ptr %721, align 4, !tbaa !49
  %722 = getelementptr inbounds nuw i8, ptr %719, i64 12
  store i32 0, ptr %722, align 4, !tbaa !38
  store i32 %676, ptr %719, align 4, !tbaa !43
  %723 = add i32 %645, -1
  %724 = icmp ult i32 %723, %554
  %725 = add i32 %643, 1
  br i1 %724, label %.loopexit92, label %642, !llvm.loop !63

.loopexit92:                                      ; preds = %716, %680, %606, %582, %553
  %726 = phi i32 [ %543, %553 ], [ %567, %582 ], [ %608, %606 ], [ %644, %680 ], [ %718, %716 ]
  %727 = add nuw nsw i64 %542, 1
  %728 = icmp eq i64 %727, %540
  br i1 %728, label %729, label %541, !llvm.loop !66

729:                                              ; preds = %.loopexit92
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %730 = add i32 %726, 1
  %731 = zext i32 %730 to i64
  %732 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %731
  store i32 1073741824, ptr %732, align 4, !tbaa !43
  br label %733

733:                                              ; preds = %729, %525, %490, %483
  %734 = phi i32 [ %484, %483 ], [ %492, %490 ], [ %492, %729 ], [ %492, %525 ]
  %735 = phi i32 [ %288, %483 ], [ %288, %490 ], [ %726, %729 ], [ %288, %525 ]
  %736 = icmp ugt i32 %734, %735
  br i1 %736, label %..loopexit116_crit_edge, label %.preheader114, !llvm.loop !67

..loopexit116_crit_edge:                          ; preds = %733
  %.phi.trans.insert = zext i32 %735 to i64
  %.phi.trans.insert158 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %.phi.trans.insert
  %.pre159 = load i32, ptr %.phi.trans.insert158, align 4, !tbaa !25
  %.phi.trans.insert160 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert158, i64 12
  %.pre161 = load i32, ptr %.phi.trans.insert160, align 4, !tbaa !25
  br label %.loopexit116, !llvm.loop !67

.loopexit116:                                     ; preds = %485, %..loopexit116_crit_edge
  %.pre-phi162 = phi i64 [ %.phi.trans.insert, %..loopexit116_crit_edge ], [ %289, %485 ]
  %737 = phi i32 [ %.pre161, %..loopexit116_crit_edge ], [ %433, %485 ]
  %738 = phi i32 [ %.pre159, %..loopexit116_crit_edge ], [ %432, %485 ]
  %.ph154 = phi i32 [ %735, %..loopexit116_crit_edge ], [ %287, %485 ]
  %739 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %.pre-phi162
  %740 = getelementptr inbounds nuw i8, ptr %739, i64 4
  %741 = load i32, ptr %740, align 4, !tbaa !25
  %742 = getelementptr inbounds nuw i8, ptr %739, i64 8
  %743 = load i32, ptr %742, align 4, !tbaa !25
  %744 = getelementptr inbounds nuw i8, ptr %739, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %744, i64 12, i1 false), !tbaa.struct !68
  %745 = sub i32 %.ph154, %743
  %746 = icmp eq i32 %743, 0
  br i1 %746, label %750, label %753

747:                                              ; preds = %526
  %748 = load i32, ptr %.split71, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %749 = icmp eq i32 %530, 0
  br i1 %749, label %._crit_edge184, label %755

._crit_edge184:                                   ; preds = %747
  %.pre185 = zext i32 %532 to i64
  br label %750

750:                                              ; preds = %._crit_edge184, %.loopexit116
  %.pre-phi186 = phi i64 [ %.pre185, %._crit_edge184 ], [ %.pre-phi162, %.loopexit116 ]
  %751 = phi i32 [ %104, %._crit_edge184 ], [ %738, %.loopexit116 ]
  %752 = getelementptr inbounds nuw i8, ptr %102, i64 %.pre-phi186
  br label %1176, !llvm.loop !69

753:                                              ; preds = %.loopexit116
  %754 = icmp eq i32 %737, 0
  br i1 %754, label %._crit_edge, label %802

._crit_edge:                                      ; preds = %753
  %.pre187 = zext i32 %745 to i64
  br label %755

755:                                              ; preds = %._crit_edge, %747
  %.pre-phi188 = phi i64 [ %.pre187, %._crit_edge ], [ %289, %747 ]
  %756 = phi i32 [ %745, %._crit_edge ], [ %287, %747 ]
  %757 = phi i32 [ %743, %._crit_edge ], [ %530, %747 ]
  %758 = phi i32 [ %741, %._crit_edge ], [ %748, %747 ]
  %759 = phi i32 [ %738, %._crit_edge ], [ %104, %747 ]
  %.split73 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %.pre-phi188
  %760 = getelementptr inbounds nuw i8, ptr %.split73, i64 12
  %761 = load i32, ptr %760, align 4, !tbaa !38
  br label %762

762:                                              ; preds = %755, %174
  %763 = phi i32 [ %108, %174 ], [ %761, %755 ]
  %764 = phi i32 [ 0, %174 ], [ %756, %755 ]
  %765 = phi i32 [ %172, %174 ], [ %757, %755 ]
  %766 = phi i32 [ %175, %174 ], [ %758, %755 ]
  %767 = phi i32 [ %104, %174 ], [ %759, %755 ]
  %768 = zext i32 %764 to i64
  %.split74 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %768
  %769 = getelementptr inbounds nuw i8, ptr %.split74, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull readonly align 4 dereferenceable(12) %769, i64 12, i1 false)
  %770 = icmp ugt i32 %766, 3
  br i1 %770, label %771, label %775

771:                                              ; preds = %762
  %772 = load i32, ptr %79, align 4, !tbaa !25
  %773 = load i32, ptr %7, align 8, !tbaa !25
  store i32 %773, ptr %79, align 4, !tbaa !25
  %774 = add i32 %766, -3
  br label %796

775:                                              ; preds = %762
  %776 = icmp ne i32 %763, 0
  %777 = sext i1 %776 to i32
  %778 = add nsw i32 %766, %777
  switch i32 %778, label %784 [
    i32 0, label %779
    i32 3, label %781
  ]

779:                                              ; preds = %775
  %780 = load i32, ptr %78, align 8
  br label %799

781:                                              ; preds = %775
  %782 = load i32, ptr %7, align 8, !tbaa !25
  %783 = add i32 %782, -1
  br label %789

784:                                              ; preds = %775
  %785 = zext i32 %778 to i64
  %786 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %785
  %787 = load i32, ptr %786, align 4, !tbaa !25
  %788 = load i32, ptr %7, align 8, !tbaa !25
  br label %789

789:                                              ; preds = %784, %781
  %790 = phi i32 [ %782, %781 ], [ %788, %784 ]
  %791 = phi i32 [ %783, %781 ], [ %787, %784 ]
  %792 = icmp eq i32 %778, 1
  %793 = load i32, ptr %78, align 8
  %794 = load i32, ptr %79, align 4
  %795 = select i1 %792, i32 %793, i32 %794
  store i32 %790, ptr %79, align 4, !tbaa !25
  br label %796

796:                                              ; preds = %789, %771
  %797 = phi i32 [ %795, %789 ], [ %772, %771 ]
  %798 = phi i32 [ %791, %789 ], [ %774, %771 ]
  store i32 %798, ptr %7, align 8, !tbaa !25
  br label %799

799:                                              ; preds = %796, %779
  %800 = phi i32 [ %780, %779 ], [ %797, %796 ]
  %801 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %801, ptr %2, align 4
  store i32 %800, ptr %80, align 4
  br label %804

802:                                              ; preds = %753
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %744, i64 12, i1 false)
  %803 = sub i32 %745, %737
  %.pre = zext i32 %803 to i64
  br label %804

804:                                              ; preds = %802, %799
  %.pre-phi = phi i64 [ %.pre, %802 ], [ %768, %799 ]
  %805 = phi i32 [ %737, %802 ], [ 0, %799 ]
  %806 = phi i32 [ %743, %802 ], [ %765, %799 ]
  %807 = phi i32 [ %741, %802 ], [ %766, %799 ]
  %808 = phi i32 [ %738, %802 ], [ %767, %799 ]
  %809 = phi i32 [ %803, %802 ], [ %764, %799 ]
  %810 = add i32 %809, 2
  %811 = zext i32 %810 to i64
  %812 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %811
  store i32 %808, ptr %812, align 4, !tbaa !25
  %813 = getelementptr inbounds nuw i8, ptr %812, i64 4
  store i32 %807, ptr %813, align 4, !tbaa !25
  %814 = getelementptr inbounds nuw i8, ptr %812, i64 8
  store i32 %806, ptr %814, align 4, !tbaa !25
  %815 = getelementptr inbounds nuw i8, ptr %812, i64 12
  store i32 %805, ptr %815, align 4, !tbaa !25
  %816 = getelementptr inbounds nuw i8, ptr %812, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %816, ptr noundef nonnull align 4 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !68
  %817 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %.pre-phi
  %818 = load i64, ptr %817, align 4
  %819 = getelementptr inbounds nuw i8, ptr %817, i64 8
  %820 = load i32, ptr %819, align 4, !tbaa !25
  %821 = getelementptr inbounds nuw i8, ptr %817, i64 12
  %822 = load i32, ptr %821, align 4, !tbaa !25
  store i32 %822, ptr %815, align 4, !tbaa !38
  %823 = icmp eq i32 %820, 0
  br i1 %823, label %.preheader110.preheader, label %.preheader112

.preheader112:                                    ; preds = %804, %.preheader112
  %824 = phi i32 [ %845, %.preheader112 ], [ %822, %804 ]
  %825 = phi i32 [ %843, %.preheader112 ], [ %820, %804 ]
  %826 = phi i64 [ %841, %.preheader112 ], [ %818, %804 ]
  %827 = phi i64 [ %839, %.preheader112 ], [ %.pre-phi, %804 ]
  %828 = phi i32 [ %838, %.preheader112 ], [ %809, %804 ]
  %829 = phi i32 [ %831, %.preheader112 ], [ %810, %804 ]
  %.split76 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %827
  %830 = getelementptr inbounds nuw i8, ptr %.split76, i64 16
  %831 = add i32 %829, -1
  %832 = zext i32 %831 to i64
  %833 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %832
  store i64 %826, ptr %833, align 4
  %834 = getelementptr inbounds nuw i8, ptr %833, i64 8
  store i32 %825, ptr %834, align 4, !tbaa !25
  %835 = getelementptr inbounds nuw i8, ptr %833, i64 12
  store i32 %824, ptr %835, align 4, !tbaa !25
  %836 = getelementptr inbounds nuw i8, ptr %833, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %836, ptr noundef nonnull align 4 dereferenceable(12) %830, i64 12, i1 false)
  %837 = add i32 %825, %824
  %838 = sub i32 %828, %837
  %839 = zext i32 %838 to i64
  %840 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %839
  %841 = load i64, ptr %840, align 4
  %842 = getelementptr inbounds nuw i8, ptr %840, i64 8
  %843 = load i32, ptr %842, align 4, !tbaa !25
  %844 = getelementptr inbounds nuw i8, ptr %840, i64 12
  %845 = load i32, ptr %844, align 4, !tbaa !25
  store i32 %845, ptr %835, align 4, !tbaa !38
  %846 = icmp eq i32 %843, 0
  br i1 %846, label %.loopexit113, label %.preheader112

.loopexit113:                                     ; preds = %.preheader112
  %847 = icmp ugt i32 %831, %810
  br i1 %847, label %.loopexit111, label %.preheader110.preheader

.preheader110.preheader:                          ; preds = %.loopexit113, %804
  %.ph351 = phi i32 [ %810, %804 ], [ %831, %.loopexit113 ]
  br label %.preheader110

.preheader110:                                    ; preds = %.preheader110.preheader, %1145
  %848 = phi ptr [ %1146, %1145 ], [ %103, %.preheader110.preheader ]
  %849 = phi i32 [ %1148, %1145 ], [ %.ph351, %.preheader110.preheader ]
  %850 = ptrtoint ptr %848 to i64
  %851 = zext i32 %849 to i64
  %852 = getelementptr inbounds nuw [28 x i8], ptr %43, i64 %851
  %853 = getelementptr inbounds nuw i8, ptr %852, i64 12
  %854 = load i32, ptr %853, align 4, !tbaa !38
  %855 = getelementptr inbounds nuw i8, ptr %852, i64 8
  %856 = load i32, ptr %855, align 4, !tbaa !36
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %861

858:                                              ; preds = %.preheader110
  %859 = zext i32 %854 to i64
  %860 = getelementptr inbounds nuw i8, ptr %848, i64 %859
  br label %1145

861:                                              ; preds = %.preheader110
  %862 = add i32 %856, %854
  %863 = getelementptr inbounds nuw i8, ptr %852, i64 4
  %864 = load i32, ptr %863, align 4, !tbaa !49
  %865 = load i32, ptr %74, align 8, !tbaa !56
  %866 = icmp eq i32 %865, 2
  br i1 %866, label %923, label %867

867:                                              ; preds = %861
  %868 = icmp eq i32 %854, 0
  br i1 %868, label %.loopexit103, label %869

869:                                              ; preds = %867
  %870 = load ptr, ptr %14, align 8, !tbaa !58
  %871 = zext i32 %854 to i64
  %872 = and i64 %871, 3
  %873 = icmp ult i32 %854, 4
  br i1 %873, label %.loopexit104, label %874

874:                                              ; preds = %869
  %875 = and i64 %871, 4294967292
  %876 = getelementptr inbounds nuw i8, ptr %848, i64 1
  %877 = getelementptr inbounds nuw i8, ptr %848, i64 2
  %878 = getelementptr inbounds nuw i8, ptr %848, i64 3
  br label %879

879:                                              ; preds = %879, %874
  %880 = phi i64 [ 0, %874 ], [ %905, %879 ]
  %881 = getelementptr inbounds nuw i8, ptr %848, i64 %880
  %882 = load i8, ptr %881, align 1, !tbaa !42
  %883 = zext i8 %882 to i64
  %884 = getelementptr inbounds nuw [4 x i8], ptr %870, i64 %883
  %885 = load i32, ptr %884, align 4, !tbaa !25
  %886 = add i32 %885, 2
  store i32 %886, ptr %884, align 4, !tbaa !25
  %887 = getelementptr inbounds nuw i8, ptr %876, i64 %880
  %888 = load i8, ptr %887, align 1, !tbaa !42
  %889 = zext i8 %888 to i64
  %890 = getelementptr inbounds nuw [4 x i8], ptr %870, i64 %889
  %891 = load i32, ptr %890, align 4, !tbaa !25
  %892 = add i32 %891, 2
  store i32 %892, ptr %890, align 4, !tbaa !25
  %893 = getelementptr inbounds nuw i8, ptr %877, i64 %880
  %894 = load i8, ptr %893, align 1, !tbaa !42
  %895 = zext i8 %894 to i64
  %896 = getelementptr inbounds nuw [4 x i8], ptr %870, i64 %895
  %897 = load i32, ptr %896, align 4, !tbaa !25
  %898 = add i32 %897, 2
  store i32 %898, ptr %896, align 4, !tbaa !25
  %899 = getelementptr inbounds nuw i8, ptr %878, i64 %880
  %900 = load i8, ptr %899, align 1, !tbaa !42
  %901 = zext i8 %900 to i64
  %902 = getelementptr inbounds nuw [4 x i8], ptr %870, i64 %901
  %903 = load i32, ptr %902, align 4, !tbaa !25
  %904 = add i32 %903, 2
  store i32 %904, ptr %902, align 4, !tbaa !25
  %905 = add nuw nsw i64 %880, 4
  %906 = icmp eq i64 %905, %875
  br i1 %906, label %.loopexit104, label %879, !llvm.loop !70

.loopexit104:                                     ; preds = %879, %869
  %907 = phi i64 [ 0, %869 ], [ %875, %879 ]
  %908 = icmp eq i64 %872, 0
  br i1 %908, label %.loopexit103, label %.preheader102

.preheader102:                                    ; preds = %.loopexit104, %.preheader102
  %909 = phi i64 [ %917, %.preheader102 ], [ %907, %.loopexit104 ]
  %910 = phi i64 [ %918, %.preheader102 ], [ 0, %.loopexit104 ]
  %911 = getelementptr inbounds nuw i8, ptr %848, i64 %909
  %912 = load i8, ptr %911, align 1, !tbaa !42
  %913 = zext i8 %912 to i64
  %914 = getelementptr inbounds nuw [4 x i8], ptr %870, i64 %913
  %915 = load i32, ptr %914, align 4, !tbaa !25
  %916 = add i32 %915, 2
  store i32 %916, ptr %914, align 4, !tbaa !25
  %917 = add nuw nsw i64 %909, 1
  %918 = add nuw nsw i64 %910, 1
  %919 = icmp eq i64 %918, %872
  br i1 %919, label %.loopexit103, label %.preheader102, !llvm.loop !71

.loopexit103:                                     ; preds = %.preheader102, %.loopexit104, %867
  %920 = shl i32 %854, 1
  %921 = load i32, ptr %81, align 8, !tbaa !72
  %922 = add i32 %921, %920
  store i32 %922, ptr %81, align 8, !tbaa !72
  br label %923

923:                                              ; preds = %.loopexit103, %861
  %924 = icmp ugt i32 %854, 63
  br i1 %924, label %925, label %928

925:                                              ; preds = %923
  %926 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %854, i1 true)
  %927 = sub nuw nsw i32 50, %926
  br label %933

928:                                              ; preds = %923
  %929 = zext nneg i32 %854 to i64
  %930 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %929
  %931 = load i8, ptr %930, align 1, !tbaa !42
  %932 = zext i8 %931 to i32
  br label %933

933:                                              ; preds = %928, %925
  %934 = phi i32 [ %927, %925 ], [ %932, %928 ]
  %935 = load ptr, ptr %68, align 8, !tbaa !41
  %936 = zext nneg i32 %934 to i64
  %937 = getelementptr inbounds nuw [4 x i8], ptr %935, i64 %936
  %938 = load i32, ptr %937, align 4, !tbaa !25
  %939 = add i32 %938, 1
  store i32 %939, ptr %937, align 4, !tbaa !25
  %940 = load i32, ptr %82, align 4, !tbaa !73
  %941 = add i32 %940, 1
  store i32 %941, ptr %82, align 4, !tbaa !73
  %942 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %864, i1 true)
  %943 = xor i32 %942, 31
  %944 = load ptr, ptr %71, align 8, !tbaa !52
  %945 = zext nneg i32 %943 to i64
  %946 = getelementptr inbounds nuw [4 x i8], ptr %944, i64 %945
  %947 = load i32, ptr %946, align 4, !tbaa !25
  %948 = add i32 %947, 1
  store i32 %948, ptr %946, align 4, !tbaa !25
  %949 = load i32, ptr %83, align 4, !tbaa !74
  %950 = add i32 %949, 1
  store i32 %950, ptr %83, align 4, !tbaa !74
  %951 = add i32 %856, -3
  %952 = icmp ugt i32 %951, 127
  br i1 %952, label %953, label %956

953:                                              ; preds = %933
  %954 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %951, i1 true)
  %955 = sub nuw nsw i32 67, %954
  br label %961

956:                                              ; preds = %933
  %957 = zext nneg i32 %951 to i64
  %958 = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %957
  %959 = load i8, ptr %958, align 1, !tbaa !42
  %960 = zext i8 %959 to i32
  br label %961

961:                                              ; preds = %956, %953
  %962 = phi i32 [ %955, %953 ], [ %960, %956 ]
  %963 = load ptr, ptr %73, align 8, !tbaa !54
  %964 = zext nneg i32 %962 to i64
  %965 = getelementptr inbounds nuw [4 x i8], ptr %963, i64 %964
  %966 = load i32, ptr %965, align 4, !tbaa !25
  %967 = add i32 %966, 1
  store i32 %967, ptr %965, align 4, !tbaa !25
  %968 = load i32, ptr %84, align 8, !tbaa !75
  %969 = add i32 %968, 1
  store i32 %969, ptr %84, align 8, !tbaa !75
  %970 = zext i32 %854 to i64
  %971 = zext i32 %856 to i64
  %972 = getelementptr inbounds nuw i8, ptr %848, i64 %970
  %973 = icmp ugt ptr %972, %85
  %974 = load ptr, ptr %86, align 8, !tbaa !76
  br i1 %973, label %997, label %975

975:                                              ; preds = %961
  %976 = load <2 x i64>, ptr %848, align 1, !tbaa !42
  store <2 x i64> %976, ptr %974, align 1, !tbaa !42
  %977 = icmp ugt i32 %854, 16
  br i1 %977, label %978, label %1111

978:                                              ; preds = %975
  %979 = load ptr, ptr %86, align 8, !tbaa !76
  %980 = getelementptr inbounds nuw i8, ptr %979, i64 16
  %981 = getelementptr inbounds nuw i8, ptr %848, i64 16
  %982 = getelementptr i8, ptr %979, i64 %970
  %983 = load <2 x i64>, ptr %981, align 1, !tbaa !42
  store <2 x i64> %983, ptr %980, align 1, !tbaa !42
  %984 = icmp ult i32 %854, 33
  br i1 %984, label %1111, label %985

985:                                              ; preds = %978
  %986 = getelementptr inbounds nuw i8, ptr %979, i64 32
  br label %987

987:                                              ; preds = %987, %985
  %988 = phi ptr [ %986, %985 ], [ %995, %987 ]
  %989 = phi ptr [ %981, %985 ], [ %993, %987 ]
  %990 = getelementptr inbounds nuw i8, ptr %989, i64 16
  %991 = load <2 x i64>, ptr %990, align 1, !tbaa !42
  store <2 x i64> %991, ptr %988, align 1, !tbaa !42
  %992 = getelementptr inbounds nuw i8, ptr %988, i64 16
  %993 = getelementptr inbounds nuw i8, ptr %989, i64 32
  %994 = load <2 x i64>, ptr %993, align 1, !tbaa !42
  store <2 x i64> %994, ptr %992, align 1, !tbaa !42
  %995 = getelementptr inbounds nuw i8, ptr %988, i64 32
  %996 = icmp ult ptr %995, %982
  br i1 %996, label %987, label %.loopexit97, !llvm.loop !79

997:                                              ; preds = %961
  %998 = icmp ugt ptr %848, %85
  br i1 %998, label %.loopexit100, label %999

999:                                              ; preds = %997
  %1000 = sub i64 %87, %850
  %1001 = getelementptr inbounds i8, ptr %974, i64 %1000
  %1002 = load <2 x i64>, ptr %848, align 1, !tbaa !42
  store <2 x i64> %1002, ptr %974, align 1, !tbaa !42
  %1003 = icmp ult i64 %1000, 17
  br i1 %1003, label %.loopexit100, label %1004

1004:                                             ; preds = %999
  %1005 = getelementptr inbounds nuw i8, ptr %974, i64 16
  br label %1006

1006:                                             ; preds = %1006, %1004
  %1007 = phi ptr [ %1005, %1004 ], [ %1014, %1006 ]
  %1008 = phi ptr [ %848, %1004 ], [ %1012, %1006 ]
  %1009 = getelementptr inbounds nuw i8, ptr %1008, i64 16
  %1010 = load <2 x i64>, ptr %1009, align 1, !tbaa !42
  store <2 x i64> %1010, ptr %1007, align 1, !tbaa !42
  %1011 = getelementptr inbounds nuw i8, ptr %1007, i64 16
  %1012 = getelementptr inbounds nuw i8, ptr %1008, i64 32
  %1013 = load <2 x i64>, ptr %1012, align 1, !tbaa !42
  store <2 x i64> %1013, ptr %1011, align 1, !tbaa !42
  %1014 = getelementptr inbounds nuw i8, ptr %1007, i64 32
  %1015 = icmp ult ptr %1014, %1001
  br i1 %1015, label %1006, label %.loopexit100, !llvm.loop !79

.loopexit100:                                     ; preds = %1006, %999, %997
  %1016 = phi ptr [ %85, %999 ], [ %848, %997 ], [ %85, %1006 ]
  %1017 = phi ptr [ %1001, %999 ], [ %974, %997 ], [ %1001, %1006 ]
  %1018 = icmp ult ptr %1016, %972
  br i1 %1018, label %1019, label %.loopexit97

1019:                                             ; preds = %.loopexit100
  %1020 = ptrtoint ptr %1016 to i64
  %1021 = ptrtoint ptr %1017 to i64
  %1022 = add i64 %970, %850
  %1023 = sub i64 %1022, %1020
  %1024 = icmp ult i64 %1023, 4
  %1025 = sub i64 %1021, %1020
  %1026 = icmp ult i64 %1025, 32
  %1027 = select i1 %1024, i1 true, i1 %1026
  br i1 %1027, label %1063, label %1028

1028:                                             ; preds = %1019
  %1029 = icmp ult i64 %1023, 32
  br i1 %1029, label %1049, label %1030

1030:                                             ; preds = %1028
  %1031 = and i64 %1023, -32
  br label %1032

1032:                                             ; preds = %1032, %1030
  %1033 = phi i64 [ 0, %1030 ], [ %1040, %1032 ]
  %1034 = getelementptr i8, ptr %1017, i64 %1033
  %1035 = getelementptr i8, ptr %1016, i64 %1033
  %1036 = getelementptr i8, ptr %1035, i64 16
  %1037 = load <16 x i8>, ptr %1035, align 1, !tbaa !42
  %1038 = load <16 x i8>, ptr %1036, align 1, !tbaa !42
  %1039 = getelementptr i8, ptr %1034, i64 16
  store <16 x i8> %1037, ptr %1034, align 1, !tbaa !42
  store <16 x i8> %1038, ptr %1039, align 1, !tbaa !42
  %1040 = add nuw i64 %1033, 32
  %1041 = icmp eq i64 %1040, %1031
  br i1 %1041, label %1042, label %1032, !llvm.loop !80

1042:                                             ; preds = %1032
  %1043 = icmp eq i64 %1023, %1031
  br i1 %1043, label %.loopexit97, label %1044

1044:                                             ; preds = %1042
  %1045 = getelementptr i8, ptr %1017, i64 %1031
  %1046 = getelementptr i8, ptr %1016, i64 %1031
  %1047 = and i64 %1023, 28
  %1048 = icmp eq i64 %1047, 0
  br i1 %1048, label %1063, label %1049

1049:                                             ; preds = %1044, %1028
  %1050 = phi i64 [ %1031, %1044 ], [ 0, %1028 ]
  %1051 = and i64 %1023, -4
  br label %1052

1052:                                             ; preds = %1052, %1049
  %1053 = phi i64 [ %1050, %1049 ], [ %1057, %1052 ]
  %1054 = getelementptr i8, ptr %1017, i64 %1053
  %1055 = getelementptr i8, ptr %1016, i64 %1053
  %1056 = load <4 x i8>, ptr %1055, align 1, !tbaa !42
  store <4 x i8> %1056, ptr %1054, align 1, !tbaa !42
  %1057 = add nuw i64 %1053, 4
  %1058 = icmp eq i64 %1057, %1051
  br i1 %1058, label %1059, label %1052, !llvm.loop !83

1059:                                             ; preds = %1052
  %1060 = getelementptr i8, ptr %1017, i64 %1051
  %1061 = getelementptr i8, ptr %1016, i64 %1051
  %1062 = icmp eq i64 %1023, %1051
  br i1 %1062, label %.loopexit97, label %1063

1063:                                             ; preds = %1059, %1044, %1019
  %1064 = phi ptr [ %1017, %1019 ], [ %1045, %1044 ], [ %1060, %1059 ]
  %1065 = phi ptr [ %1016, %1019 ], [ %1046, %1044 ], [ %1061, %1059 ]
  %1066 = ptrtoint ptr %1065 to i64
  %1067 = sub i64 %1022, %1066
  %1068 = add i64 %850, -1
  %1069 = add i64 %1068, %970
  %1070 = sub i64 %1069, %1066
  %1071 = and i64 %1067, 7
  %1072 = icmp eq i64 %1071, 0
  br i1 %1072, label %.loopexit99, label %.preheader98

.preheader98:                                     ; preds = %1063, %.preheader98
  %1073 = phi ptr [ %1078, %.preheader98 ], [ %1064, %1063 ]
  %1074 = phi ptr [ %1076, %.preheader98 ], [ %1065, %1063 ]
  %1075 = phi i64 [ %1079, %.preheader98 ], [ 0, %1063 ]
  %1076 = getelementptr inbounds nuw i8, ptr %1074, i64 1
  %1077 = load i8, ptr %1074, align 1, !tbaa !42
  %1078 = getelementptr inbounds nuw i8, ptr %1073, i64 1
  store i8 %1077, ptr %1073, align 1, !tbaa !42
  %1079 = add nuw nsw i64 %1075, 1
  %1080 = icmp eq i64 %1079, %1071
  br i1 %1080, label %.loopexit99, label %.preheader98, !llvm.loop !84

.loopexit99:                                      ; preds = %.preheader98, %1063
  %1081 = phi ptr [ %1064, %1063 ], [ %1078, %.preheader98 ]
  %1082 = phi ptr [ %1065, %1063 ], [ %1076, %.preheader98 ]
  %1083 = icmp ult i64 %1070, 7
  br i1 %1083, label %.loopexit97, label %.preheader96

.preheader96:                                     ; preds = %.loopexit99, %.preheader96
  %1084 = phi ptr [ %1109, %.preheader96 ], [ %1081, %.loopexit99 ]
  %1085 = phi ptr [ %1107, %.preheader96 ], [ %1082, %.loopexit99 ]
  %1086 = getelementptr inbounds nuw i8, ptr %1085, i64 1
  %1087 = load i8, ptr %1085, align 1, !tbaa !42
  %1088 = getelementptr inbounds nuw i8, ptr %1084, i64 1
  store i8 %1087, ptr %1084, align 1, !tbaa !42
  %1089 = getelementptr inbounds nuw i8, ptr %1085, i64 2
  %1090 = load i8, ptr %1086, align 1, !tbaa !42
  %1091 = getelementptr inbounds nuw i8, ptr %1084, i64 2
  store i8 %1090, ptr %1088, align 1, !tbaa !42
  %1092 = getelementptr inbounds nuw i8, ptr %1085, i64 3
  %1093 = load i8, ptr %1089, align 1, !tbaa !42
  %1094 = getelementptr inbounds nuw i8, ptr %1084, i64 3
  store i8 %1093, ptr %1091, align 1, !tbaa !42
  %1095 = getelementptr inbounds nuw i8, ptr %1085, i64 4
  %1096 = load i8, ptr %1092, align 1, !tbaa !42
  %1097 = getelementptr inbounds nuw i8, ptr %1084, i64 4
  store i8 %1096, ptr %1094, align 1, !tbaa !42
  %1098 = getelementptr inbounds nuw i8, ptr %1085, i64 5
  %1099 = load i8, ptr %1095, align 1, !tbaa !42
  %1100 = getelementptr inbounds nuw i8, ptr %1084, i64 5
  store i8 %1099, ptr %1097, align 1, !tbaa !42
  %1101 = getelementptr inbounds nuw i8, ptr %1085, i64 6
  %1102 = load i8, ptr %1098, align 1, !tbaa !42
  %1103 = getelementptr inbounds nuw i8, ptr %1084, i64 6
  store i8 %1102, ptr %1100, align 1, !tbaa !42
  %1104 = getelementptr inbounds nuw i8, ptr %1085, i64 7
  %1105 = load i8, ptr %1101, align 1, !tbaa !42
  %1106 = getelementptr inbounds nuw i8, ptr %1084, i64 7
  store i8 %1105, ptr %1103, align 1, !tbaa !42
  %1107 = getelementptr inbounds nuw i8, ptr %1085, i64 8
  %1108 = load i8, ptr %1104, align 1, !tbaa !42
  %1109 = getelementptr inbounds nuw i8, ptr %1084, i64 8
  store i8 %1108, ptr %1106, align 1, !tbaa !42
  %1110 = icmp eq ptr %1107, %972
  br i1 %1110, label %.loopexit97, label %.preheader96, !llvm.loop !85

1111:                                             ; preds = %978, %975
  %1112 = load ptr, ptr %86, align 8, !tbaa !76
  %1113 = getelementptr inbounds nuw i8, ptr %1112, i64 %970
  store ptr %1113, ptr %86, align 8, !tbaa !76
  %1114 = load ptr, ptr %89, align 8, !tbaa !86
  br label %1126

.loopexit97:                                      ; preds = %987, %.preheader96, %.loopexit99, %1059, %1042, %.loopexit100
  %1115 = load ptr, ptr %86, align 8, !tbaa !76
  %1116 = getelementptr inbounds nuw i8, ptr %1115, i64 %970
  store ptr %1116, ptr %86, align 8, !tbaa !76
  %1117 = icmp ugt i32 %854, 65535
  %1118 = load ptr, ptr %89, align 8, !tbaa !86
  br i1 %1117, label %1119, label %1126, !prof !87

1119:                                             ; preds = %.loopexit97
  store i32 1, ptr %88, align 8, !tbaa !88
  %1120 = load ptr, ptr %1, align 8, !tbaa !89
  %1121 = ptrtoint ptr %1118 to i64
  %1122 = ptrtoint ptr %1120 to i64
  %1123 = sub i64 %1121, %1122
  %1124 = lshr exact i64 %1123, 3
  %1125 = trunc i64 %1124 to i32
  store i32 %1125, ptr %90, align 4, !tbaa !90
  br label %1126

1126:                                             ; preds = %1119, %.loopexit97, %1111
  %1127 = phi ptr [ %1114, %1111 ], [ %1118, %1119 ], [ %1118, %.loopexit97 ]
  %1128 = trunc i32 %854 to i16
  %1129 = getelementptr inbounds nuw i8, ptr %1127, i64 4
  store i16 %1128, ptr %1129, align 4, !tbaa !91
  store i32 %864, ptr %1127, align 4, !tbaa !94
  %1130 = add nsw i64 %971, -3
  %1131 = icmp ugt i64 %1130, 65535
  br i1 %1131, label %1132, label %1139, !prof !59

1132:                                             ; preds = %1126
  store i32 2, ptr %88, align 8, !tbaa !88
  %1133 = load ptr, ptr %1, align 8, !tbaa !89
  %1134 = ptrtoint ptr %1127 to i64
  %1135 = ptrtoint ptr %1133 to i64
  %1136 = sub i64 %1134, %1135
  %1137 = lshr exact i64 %1136, 3
  %1138 = trunc i64 %1137 to i32
  store i32 %1138, ptr %90, align 4, !tbaa !90
  br label %1139

1139:                                             ; preds = %1132, %1126
  %1140 = trunc i64 %1130 to i16
  %1141 = getelementptr inbounds nuw i8, ptr %1127, i64 6
  store i16 %1140, ptr %1141, align 2, !tbaa !95
  %1142 = getelementptr inbounds nuw i8, ptr %1127, i64 8
  store ptr %1142, ptr %89, align 8, !tbaa !86
  %1143 = zext i32 %862 to i64
  %1144 = getelementptr inbounds nuw i8, ptr %848, i64 %1143
  br label %1145

1145:                                             ; preds = %1139, %858
  %1146 = phi ptr [ %848, %858 ], [ %1144, %1139 ]
  %1147 = phi ptr [ %860, %858 ], [ %1144, %1139 ]
  %1148 = add i32 %849, 1
  %1149 = icmp ugt i32 %1148, %810
  br i1 %1149, label %.loopexit111, label %.preheader110, !llvm.loop !96

.loopexit111:                                     ; preds = %1145, %.loopexit113
  %1150 = phi ptr [ %103, %.loopexit113 ], [ %1146, %1145 ]
  %1151 = phi ptr [ %102, %.loopexit113 ], [ %1147, %1145 ]
  %1152 = load i32, ptr %74, align 8, !tbaa !56
  %1153 = icmp eq i32 %1152, 2
  br i1 %1153, label %1160, label %1154

1154:                                             ; preds = %.loopexit111
  %1155 = load i32, ptr %81, align 8, !tbaa !72
  %1156 = add i32 %1155, 1
  %1157 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1156, i1 true)
  %1158 = shl nuw nsw i32 %1157, 8
  %1159 = xor i32 %1158, 7936
  store i32 %1159, ptr %75, align 8, !tbaa !57
  br label %1160

1160:                                             ; preds = %1154, %.loopexit111
  %1161 = load i32, ptr %82, align 4, !tbaa !73
  %1162 = add i32 %1161, 1
  %1163 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1162, i1 true)
  %1164 = shl nuw nsw i32 %1163, 8
  %1165 = xor i32 %1164, 7936
  %1166 = load i32, ptr %84, align 8, !tbaa !75
  %1167 = add i32 %1166, 1
  %1168 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1167, i1 true)
  %1169 = shl nuw nsw i32 %1168, 8
  %1170 = xor i32 %1169, 7936
  %1171 = load i32, ptr %83, align 4, !tbaa !74
  %1172 = add i32 %1171, 1
  %1173 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1172, i1 true)
  %1174 = shl nuw nsw i32 %1173, 8
  %1175 = xor i32 %1174, 7936
  store i32 %1165, ptr %67, align 4, !tbaa !40
  store i32 %1170, ptr %72, align 8, !tbaa !53
  store i32 %1175, ptr %70, align 4, !tbaa !51
  br label %1176

1176:                                             ; preds = %1160, %750, %118
  %1177 = phi i32 [ %751, %750 ], [ %808, %1160 ], [ %104, %118 ]
  %1178 = phi ptr [ %103, %750 ], [ %1150, %1160 ], [ %103, %118 ]
  %1179 = phi ptr [ %752, %750 ], [ %1151, %1160 ], [ %119, %118 ]
  %1180 = icmp ult ptr %1179, %16
  br i1 %1180, label %101, label %1181

1181:                                             ; preds = %1176
  %1182 = ptrtoint ptr %1178 to i64
  br label %1183

1183:                                             ; preds = %1181, %51
  %1184 = phi i64 [ %1182, %1181 ], [ %55, %51 ]
  %1185 = sub i64 %56, %1184
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret i64 %1185
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btultra(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #2 {
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
  %.split = getelementptr inbounds nuw [32 x i8], ptr @__const.ZSTD_selectBtGetAllMatches.getAllMatchesFns, i64 %33
  %34 = getelementptr inbounds nuw [8 x i8], ptr %.split, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !23
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %37 = load i32, ptr %36, align 4, !tbaa !24
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 4095)
  %39 = icmp eq i32 %25, 3
  %40 = select i1 %39, i32 3, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %42 = load i32, ptr %41, align 4, !tbaa !19
  store i32 %42, ptr %10, align 4, !tbaa !25
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %44 = load ptr, ptr %43, align 8, !tbaa !26
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %46 = load ptr, ptr %45, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
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
  %61 = add nsw i64 %4, -8
  %62 = icmp sgt i64 %61, %60
  br i1 %62, label %63, label %1560

63:                                               ; preds = %52
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 %60
  %65 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %66 = getelementptr inbounds nuw i8, ptr %44, i64 12
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %70 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %75 = getelementptr i8, ptr %0, i64 240
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %77 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %78 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %79 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %80 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %81 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %82 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %88 = getelementptr inbounds i8, ptr %16, i64 -32
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %90 = ptrtoint ptr %88 to i64
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %92 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %94 = and i32 %40, 1
  %.not = icmp eq i32 %94, 0
  %95 = getelementptr inbounds nuw i8, ptr %44, i64 28
  %96 = getelementptr inbounds nuw i8, ptr %44, i64 36
  %97 = getelementptr inbounds nuw i8, ptr %44, i64 40
  %98 = getelementptr inbounds nuw i8, ptr %44, i64 56
  %99 = getelementptr inbounds nuw i8, ptr %44, i64 64
  %100 = getelementptr inbounds nuw i8, ptr %44, i64 68
  %101 = getelementptr inbounds nuw i8, ptr %44, i64 84
  %102 = getelementptr inbounds nuw i8, ptr %44, i64 92
  %103 = getelementptr inbounds nuw i8, ptr %44, i64 96
  br label %104

104:                                              ; preds = %1553, %63
  %105 = phi ptr [ %64, %63 ], [ %1556, %1553 ]
  %106 = phi ptr [ %3, %63 ], [ %1555, %1553 ]
  %107 = phi i32 [ 0, %63 ], [ %1554, %1553 ]
  %108 = ptrtoint ptr %105 to i64
  %109 = ptrtoint ptr %106 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %114 = call i32 %35(ptr noundef %46, ptr noundef %0, ptr noundef nonnull %10, ptr noundef %105, ptr noundef %16, ptr noundef %2, i32 noundef %113, i32 noundef %40) #12
  store i32 %114, ptr %13, align 4, !tbaa !25
  %115 = sub i64 %108, %56
  %116 = trunc i64 %115 to i32
  %117 = sub i64 %57, %108
  %118 = trunc i64 %117 to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %12, ptr noundef %46, ptr noundef %13, i32 noundef %116, i32 noundef %118, i32 noundef %40)
  %119 = load i32, ptr %13, align 4, !tbaa !25
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %104
  %122 = getelementptr inbounds nuw i8, ptr %105, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %1553

123:                                              ; preds = %104
  store i32 0, ptr %65, align 4, !tbaa !36
  store i32 %111, ptr %66, align 4, !tbaa !38
  %124 = load i32, ptr %67, align 8, !tbaa !39
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = add i32 %111, 1
  %128 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %127, i1 true)
  %129 = xor i32 %128, 31
  %130 = shl nuw nsw i32 %129, 8
  %131 = shl i32 %127, 8
  %132 = lshr i32 %131, %129
  %133 = add i32 %130, %132
  br label %178

134:                                              ; preds = %123
  %135 = icmp eq i32 %111, 131072
  br i1 %135, label %136, label %149

136:                                              ; preds = %134
  %137 = load i32, ptr %68, align 4, !tbaa !40
  %138 = load ptr, ptr %69, align 8, !tbaa !41
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 140
  %140 = load i32, ptr %139, align 4, !tbaa !25
  %141 = add i32 %140, 1
  %142 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %141, i1 true)
  %143 = xor i32 %142, 31
  %144 = shl i32 %141, 8
  %145 = lshr i32 %144, %143
  %.neg79 = add i32 %137, 4352
  %146 = shl nuw nsw i32 %143, 8
  %147 = add i32 %145, %146
  %148 = sub i32 %.neg79, %147
  br label %178

149:                                              ; preds = %134
  %150 = icmp ugt i32 %111, 63
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  %152 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %111, i1 true)
  %153 = sub nuw nsw i32 50, %152
  br label %159

154:                                              ; preds = %149
  %155 = and i64 %110, 63
  %156 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !42
  %158 = zext i8 %157 to i32
  br label %159

159:                                              ; preds = %154, %151
  %160 = phi i32 [ %153, %151 ], [ %158, %154 ]
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !42
  %164 = zext i8 %163 to i32
  %165 = load i32, ptr %68, align 4, !tbaa !40
  %166 = load ptr, ptr %69, align 8, !tbaa !41
  %167 = getelementptr inbounds nuw [4 x i8], ptr %166, i64 %161
  %168 = load i32, ptr %167, align 4, !tbaa !25
  %169 = add i32 %168, 1
  %170 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %169, i1 true)
  %171 = xor i32 %170, 31
  %172 = shl i32 %169, 8
  %173 = lshr i32 %172, %171
  %174 = sub nsw i32 %164, %171
  %175 = shl nsw i32 %174, 8
  %176 = sub i32 %165, %173
  %177 = add i32 %176, %175
  br label %178

178:                                              ; preds = %159, %136, %126
  %179 = phi i32 [ %148, %136 ], [ %177, %159 ], [ %133, %126 ]
  store i32 %179, ptr %44, align 4, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %70, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %180 = add i32 %119, -1
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds nuw [8 x i8], ptr %46, i64 %181
  %183 = getelementptr inbounds nuw i8, ptr %182, i64 4
  %184 = load i32, ptr %183, align 4, !tbaa !44
  %185 = icmp ugt i32 %184, %38
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, ptr %182, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %1127

188:                                              ; preds = %178
  store i32 1073741824, ptr %95, align 4, !tbaa !43
  store i32 0, ptr %96, align 4, !tbaa !36
  %189 = add i32 %111, 1
  store i32 %189, ptr %97, align 4, !tbaa !38
  store i32 1073741824, ptr %98, align 4, !tbaa !43
  store i32 0, ptr %99, align 4, !tbaa !36
  %190 = add i32 %111, 2
  store i32 %190, ptr %100, align 4, !tbaa !38
  br i1 %.not, label %191, label %193

191:                                              ; preds = %188
  store i32 1073741824, ptr %101, align 4, !tbaa !43
  store i32 0, ptr %102, align 4, !tbaa !36
  %192 = add i32 %111, 3
  store i32 %192, ptr %103, align 4, !tbaa !38
  br label %193

193:                                              ; preds = %191, %188
  %194 = zext i32 %119 to i64
  br label %195

195:                                              ; preds = %.loopexit160, %193
  %196 = phi i64 [ 0, %193 ], [ %307, %.loopexit160 ]
  %197 = phi i32 [ %40, %193 ], [ %306, %.loopexit160 ]
  %198 = getelementptr inbounds nuw [8 x i8], ptr %46, i64 %196
  %199 = load i32, ptr %198, align 4, !tbaa !46
  %200 = getelementptr inbounds nuw i8, ptr %198, i64 4
  %201 = load i32, ptr %200, align 4, !tbaa !44
  %202 = icmp ugt i32 %197, %201
  br i1 %202, label %.loopexit160, label %203

203:                                              ; preds = %195
  %204 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %199, i1 true)
  %205 = xor i32 %204, 31
  %206 = load i32, ptr %67, align 8, !tbaa !39
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %.preheader158, label %234

.preheader158:                                    ; preds = %203, %230
  %208 = phi i32 [ %232, %230 ], [ %197, %203 ]
  %209 = add i32 %208, -2
  %210 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %209, i1 true)
  %211 = xor i32 %210, 31
  %212 = shl i32 %209, 8
  %213 = lshr i32 %212, %211
  %214 = add nuw nsw i32 %211, %205
  %215 = shl nuw nsw i32 %214, 8
  %216 = add i32 %213, 4096
  %217 = add i32 %216, %215
  %218 = load i32, ptr %44, align 4, !tbaa !43
  %219 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %218, i32 %217), !nosanitize !47
  %220 = extractvalue { i32, i1 } %219, 1, !nosanitize !47
  br i1 %220, label %.loopexit145, label %221, !prof !48, !nosanitize !47

221:                                              ; preds = %.preheader158
  %222 = extractvalue { i32, i1 } %219, 0, !nosanitize !47
  %223 = zext i32 %208 to i64
  %224 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %223
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 8
  store i32 %208, ptr %225, align 4, !tbaa !36
  %226 = getelementptr inbounds nuw i8, ptr %224, i64 4
  store i32 %199, ptr %226, align 4, !tbaa !49
  %227 = getelementptr inbounds nuw i8, ptr %224, i64 12
  store i32 0, ptr %227, align 4, !tbaa !38
  %228 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %222, i32 256), !nosanitize !47
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !47
  br i1 %229, label %.loopexit145, label %230, !prof !48, !nosanitize !47

230:                                              ; preds = %221
  %231 = extractvalue { i32, i1 } %228, 0, !nosanitize !47
  store i32 %231, ptr %224, align 4, !tbaa !43
  %232 = add i32 %208, 1
  %233 = icmp ugt i32 %232, %201
  br i1 %233, label %.loopexit160, label %.preheader158, !llvm.loop !50

234:                                              ; preds = %203
  %235 = zext nneg i32 %205 to i64
  %236 = load i32, ptr %71, align 4, !tbaa !51
  %237 = load ptr, ptr %72, align 8, !tbaa !52
  %238 = getelementptr inbounds nuw [4 x i8], ptr %237, i64 %235
  %239 = load i32, ptr %73, align 8, !tbaa !53
  %240 = load ptr, ptr %74, align 8, !tbaa !54
  %.neg85 = add i32 %236, 51
  %.neg93 = add i32 %.neg85, %239
  br label %241

241:                                              ; preds = %302, %234
  %242 = phi i32 [ %197, %234 ], [ %304, %302 ]
  %243 = add i32 %242, -3
  %244 = load i32, ptr %238, align 4, !tbaa !25
  %245 = add i32 %244, 1
  %246 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %245, i1 true)
  %247 = xor i32 %246, 31
  %248 = shl i32 %245, 8
  %249 = lshr i32 %248, %247
  %250 = icmp ugt i32 %243, 127
  br i1 %250, label %251, label %254

251:                                              ; preds = %241
  %252 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %243, i1 true)
  %253 = sub nuw nsw i32 67, %252
  br label %259

254:                                              ; preds = %241
  %255 = zext nneg i32 %243 to i64
  %256 = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !42
  %258 = zext i8 %257 to i32
  br label %259

259:                                              ; preds = %254, %251
  %260 = phi i32 [ %253, %251 ], [ %258, %254 ]
  %261 = zext nneg i32 %260 to i64
  %262 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !42
  %264 = zext i8 %263 to i32
  %265 = getelementptr inbounds nuw [4 x i8], ptr %240, i64 %261
  %266 = load i32, ptr %265, align 4, !tbaa !25
  %267 = add i32 %266, 1
  %268 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %267, i1 true)
  %269 = xor i32 %268, 31
  %270 = shl i32 %267, 8
  %271 = lshr i32 %270, %269
  %272 = add nuw nsw i32 %205, %264
  %273 = add nuw nsw i32 %247, %269
  %274 = sub nsw i32 %272, %273
  %275 = shl nsw i32 %274, 8
  %276 = add i32 %249, %271
  %277 = sub i32 %.neg93, %276
  %278 = add i32 %277, %275
  %279 = load i32, ptr %44, align 4, !tbaa !43
  %280 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %279, i32 %278), !nosanitize !47
  %281 = extractvalue { i32, i1 } %280, 1, !nosanitize !47
  br i1 %281, label %.loopexit145, label %282, !prof !48, !nosanitize !47

.loopexit145:                                     ; preds = %863, %734, %597, %591, %588, %581, %530, %526, %523, %465, %347, %282, %259, %221, %.preheader158, %1017, %917
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !47
  unreachable, !nosanitize !47

282:                                              ; preds = %259
  %283 = extractvalue { i32, i1 } %280, 0, !nosanitize !47
  %284 = zext i32 %242 to i64
  %285 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %284
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 8
  store i32 %242, ptr %286, align 4, !tbaa !36
  %287 = getelementptr inbounds nuw i8, ptr %285, i64 4
  store i32 %199, ptr %287, align 4, !tbaa !49
  %288 = getelementptr inbounds nuw i8, ptr %285, i64 12
  store i32 0, ptr %288, align 4, !tbaa !38
  %289 = load i32, ptr %68, align 4, !tbaa !40
  %290 = load ptr, ptr %69, align 8, !tbaa !41
  %291 = load i32, ptr %290, align 4, !tbaa !25
  %292 = add i32 %291, 1
  %293 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %292, i1 true)
  %294 = xor i32 %293, 31
  %295 = shl i32 %292, 8
  %296 = lshr i32 %295, %294
  %297 = shl nuw nsw i32 %294, 8
  %298 = add i32 %296, %297
  %299 = sub i32 %289, %298
  %300 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %283, i32 %299), !nosanitize !47
  %301 = extractvalue { i32, i1 } %300, 1, !nosanitize !47
  br i1 %301, label %.loopexit145, label %302, !prof !48, !nosanitize !47

302:                                              ; preds = %282
  %303 = extractvalue { i32, i1 } %300, 0, !nosanitize !47
  store i32 %303, ptr %285, align 4, !tbaa !43
  %304 = add i32 %242, 1
  %305 = icmp ugt i32 %304, %201
  br i1 %305, label %.loopexit160, label %241, !llvm.loop !50

.loopexit160:                                     ; preds = %302, %230, %195
  %306 = phi i32 [ %197, %195 ], [ %232, %230 ], [ %304, %302 ]
  %307 = add nuw nsw i64 %196, 1
  %308 = icmp eq i64 %307, %194
  br i1 %308, label %.preheader167.preheader, label %195, !llvm.loop !55

.preheader167.preheader:                          ; preds = %.loopexit160
  %309 = zext i32 %306 to i64
  %310 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %309
  store i32 1073741824, ptr %310, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %311 = add i32 %306, -1
  br label %.preheader167

.preheader167:                                    ; preds = %1097, %.preheader167.preheader
  %312 = phi i32 [ %1099, %1097 ], [ 1, %.preheader167.preheader ]
  %313 = phi i32 [ %1098, %1097 ], [ %311, %.preheader167.preheader ]
  %314 = zext i32 %312 to i64
  %315 = getelementptr inbounds nuw i8, ptr %105, i64 %314
  %316 = add i32 %312, -1
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %317
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 12
  %320 = load i32, ptr %319, align 4, !tbaa !38
  %321 = add i32 %320, 1
  %322 = load i32, ptr %318, align 4, !tbaa !43
  %323 = getelementptr inbounds i8, ptr %315, i64 -1
  %324 = load i32, ptr %75, align 8, !tbaa !56
  %325 = icmp eq i32 %324, 2
  br i1 %325, label %347, label %326

326:                                              ; preds = %.preheader167
  %327 = load i32, ptr %67, align 8, !tbaa !39
  %328 = icmp eq i32 %327, 1
  br i1 %328, label %347, label %329

329:                                              ; preds = %326
  %330 = load i32, ptr %76, align 8, !tbaa !57
  %331 = add i32 %330, -256
  %332 = load ptr, ptr %15, align 8, !tbaa !58
  %333 = load i8, ptr %323, align 1, !tbaa !42
  %334 = zext i8 %333 to i64
  %335 = getelementptr inbounds nuw [4 x i8], ptr %332, i64 %334
  %336 = load i32, ptr %335, align 4, !tbaa !25
  %337 = add i32 %336, 1
  %338 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %337, i1 true)
  %339 = xor i32 %338, 31
  %340 = shl nuw nsw i32 %339, 8
  %341 = shl i32 %337, 8
  %342 = lshr i32 %341, %339
  %343 = add i32 %340, %342
  %344 = icmp ugt i32 %343, %331
  %345 = sub i32 %330, %343
  %346 = select i1 %344, i32 256, i32 %345, !prof !59
  br label %347

347:                                              ; preds = %329, %326, %.preheader167
  %348 = phi i32 [ 2048, %.preheader167 ], [ 1536, %326 ], [ %346, %329 ]
  %349 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %322, i32 %348), !nosanitize !47
  %350 = extractvalue { i32, i1 } %349, 0, !nosanitize !47
  %351 = extractvalue { i32, i1 } %349, 1, !nosanitize !47
  br i1 %351, label %.loopexit145, label %352, !prof !48, !nosanitize !47

352:                                              ; preds = %347
  %353 = load i32, ptr %67, align 8, !tbaa !39
  %354 = icmp eq i32 %353, 1
  br i1 %354, label %380, label %355

355:                                              ; preds = %352
  %356 = icmp eq i32 %321, 131072
  br i1 %356, label %357, label %370

357:                                              ; preds = %355
  %358 = load i32, ptr %68, align 4, !tbaa !40
  %359 = load ptr, ptr %69, align 8, !tbaa !41
  %360 = getelementptr inbounds nuw i8, ptr %359, i64 140
  %361 = load i32, ptr %360, align 4, !tbaa !25
  %362 = add i32 %361, 1
  %363 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %362, i1 true)
  %364 = xor i32 %363, 31
  %365 = shl i32 %362, 8
  %366 = lshr i32 %365, %364
  %.neg96 = add i32 %358, 4352
  %367 = shl nuw nsw i32 %364, 8
  %368 = add i32 %366, %367
  %369 = sub i32 %.neg96, %368
  br label %428

370:                                              ; preds = %355
  %371 = icmp ugt i32 %321, 63
  br i1 %371, label %372, label %375

372:                                              ; preds = %370
  %373 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %321, i1 true)
  %374 = sub nuw nsw i32 50, %373
  br label %394

375:                                              ; preds = %370
  %376 = zext nneg i32 %321 to i64
  %377 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !42
  %379 = zext i8 %378 to i32
  br label %394

380:                                              ; preds = %352
  %381 = add i32 %320, 2
  %382 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %381, i1 true)
  %383 = xor i32 %382, 31
  %384 = shl nuw nsw i32 %383, 8
  %385 = shl i32 %381, 8
  %386 = lshr i32 %385, %383
  %387 = add i32 %384, %386
  %388 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %321, i1 true)
  %389 = xor i32 %388, 31
  %390 = shl nuw nsw i32 %389, 8
  %391 = shl i32 %321, 8
  %392 = lshr i32 %391, %389
  %393 = add i32 %390, %392
  br label %459

394:                                              ; preds = %375, %372
  %395 = phi i32 [ %374, %372 ], [ %379, %375 ]
  %396 = zext nneg i32 %395 to i64
  %397 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %396
  %398 = load i8, ptr %397, align 1, !tbaa !42
  %399 = zext i8 %398 to i32
  %400 = shl nuw nsw i32 %399, 8
  %401 = load i32, ptr %68, align 4, !tbaa !40
  %402 = add i32 %400, %401
  %403 = load ptr, ptr %69, align 8, !tbaa !41
  %404 = getelementptr inbounds nuw [4 x i8], ptr %403, i64 %396
  %405 = load i32, ptr %404, align 4, !tbaa !25
  %406 = add i32 %405, 1
  %407 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %406, i1 true)
  %408 = xor i32 %407, 31
  %409 = mul nsw i32 %408, -256
  %410 = shl i32 %406, 8
  %411 = lshr i32 %410, %408
  %412 = sub i32 %409, %411
  %413 = add i32 %402, %412
  %414 = icmp eq i32 %320, 131072
  br i1 %414, label %415, label %426

415:                                              ; preds = %394
  %416 = getelementptr inbounds nuw i8, ptr %403, i64 140
  %417 = load i32, ptr %416, align 4, !tbaa !25
  %418 = add i32 %417, 1
  %419 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %418, i1 true)
  %420 = xor i32 %419, 31
  %421 = shl i32 %418, 8
  %422 = lshr i32 %421, %420
  %.neg92 = add i32 %401, 4352
  %423 = shl nuw nsw i32 %420, 8
  %424 = add i32 %422, %423
  %425 = sub i32 %.neg92, %424
  br label %459

426:                                              ; preds = %394
  %427 = icmp ugt i32 %320, 63
  br i1 %427, label %428, label %434

428:                                              ; preds = %426, %357
  %429 = phi ptr [ %359, %357 ], [ %403, %426 ]
  %430 = phi i32 [ %358, %357 ], [ %401, %426 ]
  %431 = phi i32 [ %369, %357 ], [ %413, %426 ]
  %432 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %320, i1 true)
  %433 = sub nuw nsw i32 50, %432
  br label %439

434:                                              ; preds = %426
  %435 = zext nneg i32 %320 to i64
  %436 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %435
  %437 = load i8, ptr %436, align 1, !tbaa !42
  %438 = zext i8 %437 to i32
  br label %439

439:                                              ; preds = %434, %428
  %440 = phi ptr [ %429, %428 ], [ %403, %434 ]
  %441 = phi i32 [ %430, %428 ], [ %401, %434 ]
  %442 = phi i32 [ %431, %428 ], [ %413, %434 ]
  %443 = phi i32 [ %433, %428 ], [ %438, %434 ]
  %444 = zext nneg i32 %443 to i64
  %445 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !42
  %447 = zext i8 %446 to i32
  %448 = getelementptr inbounds nuw [4 x i8], ptr %440, i64 %444
  %449 = load i32, ptr %448, align 4, !tbaa !25
  %450 = add i32 %449, 1
  %451 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %450, i1 true)
  %452 = xor i32 %451, 31
  %453 = shl i32 %450, 8
  %454 = lshr i32 %453, %452
  %455 = sub nsw i32 %447, %452
  %456 = shl nsw i32 %455, 8
  %457 = sub i32 %441, %454
  %458 = add i32 %457, %456
  br label %459

459:                                              ; preds = %439, %415, %380
  %460 = phi i32 [ %413, %415 ], [ %442, %439 ], [ %387, %380 ]
  %461 = phi i32 [ %425, %415 ], [ %458, %439 ], [ %393, %380 ]
  %462 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %460, i32 %461), !nosanitize !47
  %463 = extractvalue { i32, i1 } %462, 1, !nosanitize !47
  br i1 %463, label %464, label %465, !prof !48, !nosanitize !47

464:                                              ; preds = %728, %577, %511, %459
  call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

465:                                              ; preds = %459
  %466 = extractvalue { i32, i1 } %462, 0, !nosanitize !47
  %467 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %350, i32 %466), !nosanitize !47
  %468 = extractvalue { i32, i1 } %467, 0, !nosanitize !47
  %469 = extractvalue { i32, i1 } %467, 1, !nosanitize !47
  br i1 %469, label %.loopexit145, label %470, !prof !48, !nosanitize !47

470:                                              ; preds = %465
  %471 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %314
  %472 = load i32, ptr %471, align 4, !tbaa !43
  %473 = icmp sgt i32 %468, %472
  br i1 %473, label %474, label %477

474:                                              ; preds = %470
  %475 = getelementptr inbounds nuw i8, ptr %471, i64 12
  %476 = load i32, ptr %475, align 4, !tbaa !38
  br label %793

477:                                              ; preds = %470
  %478 = getelementptr inbounds nuw i8, ptr %471, i64 4
  %479 = load i32, ptr %478, align 4, !tbaa !25
  %480 = getelementptr inbounds nuw i8, ptr %471, i64 8
  %481 = load i32, ptr %480, align 4, !tbaa !25
  %482 = getelementptr inbounds nuw i8, ptr %471, i64 12
  %483 = load i32, ptr %482, align 4, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %471, ptr noundef nonnull align 4 dereferenceable(28) %318, i64 28, i1 false), !tbaa.struct !60
  store i32 %321, ptr %482, align 4, !tbaa !38
  store i32 %468, ptr %471, align 4, !tbaa !43
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %793

485:                                              ; preds = %477
  %486 = load i32, ptr %67, align 8, !tbaa !39
  %487 = icmp eq i32 %486, 1
  br i1 %487, label %511, label %488

488:                                              ; preds = %485
  %489 = load i32, ptr %68, align 4, !tbaa !40
  %490 = load ptr, ptr %69, align 8, !tbaa !41
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 4
  %492 = load i32, ptr %491, align 4, !tbaa !25
  %493 = add i32 %492, 1
  %494 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %493, i1 true)
  %495 = xor i32 %494, 31
  %496 = shl i32 %493, 8
  %497 = lshr i32 %496, %495
  %498 = shl nuw nsw i32 %495, 8
  %499 = add i32 %497, %498
  %500 = sub i32 %489, %499
  %501 = load i32, ptr %490, align 4, !tbaa !25
  %502 = add i32 %501, 1
  %503 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %502, i1 true)
  %504 = xor i32 %503, 31
  %505 = shl i32 %502, 8
  %506 = lshr i32 %505, %504
  %507 = shl nuw nsw i32 %504, 8
  %508 = add i32 %506, %507
  %509 = sub i32 %489, %508
  %510 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %500, i32 %509)
  br label %511

511:                                              ; preds = %488, %485
  %512 = phi { i32, i1 } [ %510, %488 ], [ { i32 256, i1 false }, %485 ]
  %513 = extractvalue { i32, i1 } %512, 1, !nosanitize !47
  br i1 %513, label %464, label %514, !prof !48, !nosanitize !47

514:                                              ; preds = %511
  %515 = extractvalue { i32, i1 } %512, 0, !nosanitize !47
  %516 = icmp slt i32 %515, 0
  %517 = icmp ult ptr %315, %16
  %518 = select i1 %516, i1 %517, i1 false
  br i1 %518, label %519, label %793, !prof !97

519:                                              ; preds = %514
  %520 = load i32, ptr %75, align 8, !tbaa !56
  %521 = icmp eq i32 %520, 2
  br i1 %521, label %523, label %522

522:                                              ; preds = %519
  br i1 %487, label %526, label %530

523:                                              ; preds = %519
  %524 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %472, i32 2048), !nosanitize !47
  %525 = extractvalue { i32, i1 } %524, 1, !nosanitize !47
  br i1 %525, label %.loopexit145, label %551, !prof !48, !nosanitize !47

526:                                              ; preds = %522
  %527 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %472, i32 1536), !nosanitize !47
  %528 = extractvalue { i32, i1 } %527, 0, !nosanitize !47
  %529 = extractvalue { i32, i1 } %527, 1, !nosanitize !47
  br i1 %529, label %.loopexit145, label %577, !prof !48, !nosanitize !47

530:                                              ; preds = %522
  %531 = load i32, ptr %76, align 8, !tbaa !57
  %532 = add i32 %531, -256
  %533 = load ptr, ptr %15, align 8, !tbaa !58
  %534 = load i8, ptr %315, align 1, !tbaa !42
  %535 = zext i8 %534 to i64
  %536 = getelementptr inbounds nuw [4 x i8], ptr %533, i64 %535
  %537 = load i32, ptr %536, align 4, !tbaa !25
  %538 = add i32 %537, 1
  %539 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %538, i1 true)
  %540 = xor i32 %539, 31
  %541 = shl nuw nsw i32 %540, 8
  %542 = shl i32 %538, 8
  %543 = lshr i32 %542, %540
  %544 = add i32 %541, %543
  %545 = icmp ugt i32 %544, %532
  %546 = sub i32 %531, %544
  %547 = select i1 %545, i32 256, i32 %546, !prof !59
  %548 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %472, i32 %547), !nosanitize !47
  %549 = extractvalue { i32, i1 } %548, 0, !nosanitize !47
  %550 = extractvalue { i32, i1 } %548, 1, !nosanitize !47
  br i1 %550, label %.loopexit145, label %553, !prof !48, !nosanitize !47

551:                                              ; preds = %523
  %552 = extractvalue { i32, i1 } %524, 0, !nosanitize !47
  br i1 %487, label %577, label %553

553:                                              ; preds = %551, %530
  %554 = phi i32 [ %552, %551 ], [ %549, %530 ]
  %555 = load i32, ptr %68, align 4, !tbaa !40
  %556 = load ptr, ptr %69, align 8, !tbaa !41
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 4
  %558 = load i32, ptr %557, align 4, !tbaa !25
  %559 = add i32 %558, 1
  %560 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %559, i1 true)
  %561 = xor i32 %560, 31
  %562 = shl i32 %559, 8
  %563 = lshr i32 %562, %561
  %564 = shl nuw nsw i32 %561, 8
  %565 = add i32 %563, %564
  %566 = sub i32 %555, %565
  %567 = load i32, ptr %556, align 4, !tbaa !25
  %568 = add i32 %567, 1
  %569 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %568, i1 true)
  %570 = xor i32 %569, 31
  %571 = shl i32 %568, 8
  %572 = lshr i32 %571, %570
  %573 = shl nuw nsw i32 %570, 8
  %574 = add i32 %572, %573
  %575 = sub i32 %555, %574
  %576 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %566, i32 %575)
  br label %577

577:                                              ; preds = %553, %551, %526
  %578 = phi { i32, i1 } [ %576, %553 ], [ { i32 256, i1 false }, %551 ], [ { i32 256, i1 false }, %526 ]
  %579 = phi i32 [ %554, %553 ], [ %552, %551 ], [ %528, %526 ]
  %580 = extractvalue { i32, i1 } %578, 1, !nosanitize !47
  br i1 %580, label %464, label %581, !prof !48, !nosanitize !47

581:                                              ; preds = %577
  %582 = extractvalue { i32, i1 } %578, 0, !nosanitize !47
  %583 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %579, i32 %582), !nosanitize !47
  %584 = extractvalue { i32, i1 } %583, 0, !nosanitize !47
  %585 = extractvalue { i32, i1 } %583, 1, !nosanitize !47
  br i1 %585, label %.loopexit145, label %586, !prof !48, !nosanitize !47

586:                                              ; preds = %581
  br i1 %521, label %588, label %587

587:                                              ; preds = %586
  br i1 %487, label %591, label %597

588:                                              ; preds = %586
  %589 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %468, i32 2048), !nosanitize !47
  %590 = extractvalue { i32, i1 } %589, 1, !nosanitize !47
  br i1 %590, label %.loopexit145, label %620, !prof !48, !nosanitize !47

591:                                              ; preds = %587
  %592 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %468, i32 1536), !nosanitize !47
  %593 = extractvalue { i32, i1 } %592, 1, !nosanitize !47
  br i1 %593, label %.loopexit145, label %594, !prof !48, !nosanitize !47

594:                                              ; preds = %591
  %595 = extractvalue { i32, i1 } %592, 0, !nosanitize !47
  %596 = add i32 %320, 2
  br label %669

597:                                              ; preds = %587
  %598 = load i32, ptr %76, align 8, !tbaa !57
  %599 = add i32 %598, -256
  %600 = load ptr, ptr %15, align 8, !tbaa !58
  %601 = load i8, ptr %315, align 1, !tbaa !42
  %602 = zext i8 %601 to i64
  %603 = getelementptr inbounds nuw [4 x i8], ptr %600, i64 %602
  %604 = load i32, ptr %603, align 4, !tbaa !25
  %605 = add i32 %604, 1
  %606 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %605, i1 true)
  %607 = xor i32 %606, 31
  %608 = shl nuw nsw i32 %607, 8
  %609 = shl i32 %605, 8
  %610 = lshr i32 %609, %607
  %611 = add i32 %608, %610
  %612 = icmp ugt i32 %611, %599
  %613 = sub i32 %598, %611
  %614 = select i1 %612, i32 256, i32 %613, !prof !59
  %615 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %468, i32 %614), !nosanitize !47
  %616 = extractvalue { i32, i1 } %615, 1, !nosanitize !47
  br i1 %616, label %.loopexit145, label %617, !prof !48, !nosanitize !47

617:                                              ; preds = %597
  %618 = extractvalue { i32, i1 } %615, 0, !nosanitize !47
  %619 = add i32 %320, 2
  br label %623

620:                                              ; preds = %588
  %621 = extractvalue { i32, i1 } %589, 0, !nosanitize !47
  %622 = add i32 %320, 2
  br i1 %487, label %669, label %623

623:                                              ; preds = %620, %617
  %624 = phi i32 [ %619, %617 ], [ %622, %620 ]
  %625 = phi i32 [ %618, %617 ], [ %621, %620 ]
  %626 = icmp eq i32 %624, 131072
  br i1 %626, label %627, label %640

627:                                              ; preds = %623
  %628 = load i32, ptr %68, align 4, !tbaa !40
  %629 = load ptr, ptr %69, align 8, !tbaa !41
  %630 = getelementptr inbounds nuw i8, ptr %629, i64 140
  %631 = load i32, ptr %630, align 4, !tbaa !25
  %632 = add i32 %631, 1
  %633 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %632, i1 true)
  %634 = xor i32 %633, 31
  %635 = shl i32 %632, 8
  %636 = lshr i32 %635, %634
  %.neg115 = add i32 %628, 4352
  %637 = shl nuw nsw i32 %634, 8
  %638 = add i32 %636, %637
  %639 = sub i32 %.neg115, %638
  br label %685

640:                                              ; preds = %623
  %641 = icmp ugt i32 %624, 63
  br i1 %641, label %642, label %645

642:                                              ; preds = %640
  %643 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %624, i1 true)
  %644 = sub nuw nsw i32 50, %643
  br label %650

645:                                              ; preds = %640
  %646 = zext nneg i32 %624 to i64
  %647 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %646
  %648 = load i8, ptr %647, align 1, !tbaa !42
  %649 = zext i8 %648 to i32
  br label %650

650:                                              ; preds = %645, %642
  %651 = phi i32 [ %644, %642 ], [ %649, %645 ]
  %652 = zext nneg i32 %651 to i64
  %653 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %652
  %654 = load i8, ptr %653, align 1, !tbaa !42
  %655 = zext i8 %654 to i32
  %656 = load i32, ptr %68, align 4, !tbaa !40
  %657 = load ptr, ptr %69, align 8, !tbaa !41
  %658 = getelementptr inbounds nuw [4 x i8], ptr %657, i64 %652
  %659 = load i32, ptr %658, align 4, !tbaa !25
  %660 = add i32 %659, 1
  %661 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %660, i1 true)
  %662 = xor i32 %661, 31
  %663 = shl i32 %660, 8
  %664 = lshr i32 %663, %662
  %665 = sub nsw i32 %655, %662
  %666 = shl nsw i32 %665, 8
  %667 = sub i32 %656, %664
  %668 = add i32 %667, %666
  br label %685

669:                                              ; preds = %620, %594
  %670 = phi i32 [ %596, %594 ], [ %622, %620 ]
  %671 = phi i32 [ %595, %594 ], [ %621, %620 ]
  %672 = add i32 %670, 1
  %673 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %672, i1 true)
  %674 = xor i32 %673, 31
  %675 = shl nuw nsw i32 %674, 8
  %676 = shl i32 %672, 8
  %677 = lshr i32 %676, %674
  %678 = add i32 %675, %677
  %679 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %670, i1 true)
  %680 = xor i32 %679, 31
  %681 = shl nuw nsw i32 %680, 8
  %682 = shl i32 %670, 8
  %683 = lshr i32 %682, %680
  %684 = add i32 %681, %683
  br label %728

685:                                              ; preds = %650, %627
  %686 = phi ptr [ %657, %650 ], [ %629, %627 ]
  %687 = phi i32 [ %656, %650 ], [ %628, %627 ]
  %688 = phi i32 [ %668, %650 ], [ %639, %627 ]
  %689 = icmp eq i32 %321, 131072
  br i1 %689, label %690, label %701

690:                                              ; preds = %685
  %691 = getelementptr inbounds nuw i8, ptr %686, i64 140
  %692 = load i32, ptr %691, align 4, !tbaa !25
  %693 = add i32 %692, 1
  %694 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %693, i1 true)
  %695 = xor i32 %694, 31
  %696 = shl i32 %693, 8
  %697 = lshr i32 %696, %695
  %.neg120 = add i32 %687, 4352
  %698 = shl nuw nsw i32 %695, 8
  %699 = add i32 %697, %698
  %700 = sub i32 %.neg120, %699
  br label %728

701:                                              ; preds = %685
  %702 = icmp ugt i32 %321, 63
  br i1 %702, label %703, label %706

703:                                              ; preds = %701
  %704 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %321, i1 true)
  %705 = sub nuw nsw i32 50, %704
  br label %711

706:                                              ; preds = %701
  %707 = zext nneg i32 %321 to i64
  %708 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %707
  %709 = load i8, ptr %708, align 1, !tbaa !42
  %710 = zext i8 %709 to i32
  br label %711

711:                                              ; preds = %706, %703
  %712 = phi i32 [ %705, %703 ], [ %710, %706 ]
  %713 = zext nneg i32 %712 to i64
  %714 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %713
  %715 = load i8, ptr %714, align 1, !tbaa !42
  %716 = zext i8 %715 to i32
  %717 = getelementptr inbounds nuw [4 x i8], ptr %686, i64 %713
  %718 = load i32, ptr %717, align 4, !tbaa !25
  %719 = add i32 %718, 1
  %720 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %719, i1 true)
  %721 = xor i32 %720, 31
  %722 = shl i32 %719, 8
  %723 = lshr i32 %722, %721
  %724 = sub nsw i32 %716, %721
  %725 = shl nsw i32 %724, 8
  %726 = sub i32 %687, %723
  %727 = add i32 %726, %725
  br label %728

728:                                              ; preds = %711, %690, %669
  %729 = phi i32 [ %688, %690 ], [ %688, %711 ], [ %678, %669 ]
  %730 = phi i32 [ %625, %690 ], [ %625, %711 ], [ %671, %669 ]
  %731 = phi i32 [ %700, %690 ], [ %727, %711 ], [ %684, %669 ]
  %732 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %729, i32 %731), !nosanitize !47
  %733 = extractvalue { i32, i1 } %732, 1, !nosanitize !47
  br i1 %733, label %464, label %734, !prof !48, !nosanitize !47

734:                                              ; preds = %728
  %735 = extractvalue { i32, i1 } %732, 0, !nosanitize !47
  %736 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %730, i32 %735), !nosanitize !47
  %737 = extractvalue { i32, i1 } %736, 1, !nosanitize !47
  br i1 %737, label %.loopexit145, label %738, !prof !48, !nosanitize !47

738:                                              ; preds = %734
  %739 = extractvalue { i32, i1 } %736, 0, !nosanitize !47
  %740 = icmp slt i32 %584, %739
  br i1 %740, label %741, label %793

741:                                              ; preds = %738
  %742 = add i32 %312, 1
  %743 = zext i32 %742 to i64
  %744 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %743
  %745 = load i32, ptr %744, align 4, !tbaa !43
  %746 = icmp slt i32 %584, %745
  br i1 %746, label %747, label %793

747:                                              ; preds = %741
  %748 = sub i32 %312, %481
  %749 = zext i32 %748 to i64
  %750 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %749
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 16
  %752 = getelementptr inbounds nuw i8, ptr %750, i64 12
  %753 = load i32, ptr %752, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull readonly align 4 dereferenceable(12) %751, i64 12, i1 false)
  %754 = icmp ugt i32 %479, 3
  br i1 %754, label %755, label %759

755:                                              ; preds = %747
  %756 = load i32, ptr %78, align 4, !tbaa !25
  %757 = load i32, ptr %9, align 8, !tbaa !25
  store i32 %757, ptr %78, align 4, !tbaa !25
  %758 = add i32 %479, -3
  br label %781

759:                                              ; preds = %747
  %760 = icmp eq i32 %753, 0
  %761 = zext i1 %760 to i32
  %762 = add nsw i32 %479, -1
  %763 = add nsw i32 %762, %761
  switch i32 %763, label %769 [
    i32 0, label %764
    i32 3, label %766
  ]

764:                                              ; preds = %759
  %765 = load i32, ptr %77, align 8
  br label %784

766:                                              ; preds = %759
  %767 = load i32, ptr %9, align 8, !tbaa !25
  %768 = add i32 %767, -1
  br label %774

769:                                              ; preds = %759
  %770 = zext i32 %763 to i64
  %771 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %770
  %772 = load i32, ptr %771, align 4, !tbaa !25
  %773 = load i32, ptr %9, align 8, !tbaa !25
  br label %774

774:                                              ; preds = %769, %766
  %775 = phi i32 [ %767, %766 ], [ %773, %769 ]
  %776 = phi i32 [ %768, %766 ], [ %772, %769 ]
  %777 = icmp eq i32 %763, 1
  %778 = load i32, ptr %77, align 8
  %779 = load i32, ptr %78, align 4
  %780 = select i1 %777, i32 %778, i32 %779
  store i32 %775, ptr %78, align 4, !tbaa !25
  br label %781

781:                                              ; preds = %774, %755
  %782 = phi i32 [ %780, %774 ], [ %756, %755 ]
  %783 = phi i32 [ %776, %774 ], [ %758, %755 ]
  store i32 %783, ptr %9, align 8, !tbaa !25
  br label %784

784:                                              ; preds = %781, %764
  %785 = phi i32 [ %765, %764 ], [ %782, %781 ]
  %786 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %787 = getelementptr inbounds nuw i8, ptr %744, i64 4
  store i32 %479, ptr %787, align 4, !tbaa !25
  %788 = getelementptr inbounds nuw i8, ptr %744, i64 8
  store i32 %481, ptr %788, align 4, !tbaa !25
  %789 = getelementptr inbounds nuw i8, ptr %744, i64 12
  %790 = getelementptr inbounds nuw i8, ptr %744, i64 16
  store i64 %786, ptr %790, align 4
  %791 = getelementptr inbounds nuw i8, ptr %744, i64 24
  store i32 %785, ptr %791, align 4
  store i32 1, ptr %789, align 4, !tbaa !38
  store i32 %584, ptr %744, align 4, !tbaa !43
  %792 = call i32 @llvm.umax.i32(i32 %313, i32 %742)
  br label %793

793:                                              ; preds = %784, %741, %738, %514, %477, %474
  %794 = phi i32 [ %472, %474 ], [ %468, %784 ], [ %468, %741 ], [ %468, %738 ], [ %468, %514 ], [ %468, %477 ]
  %795 = phi i32 [ %476, %474 ], [ %321, %784 ], [ %321, %741 ], [ %321, %738 ], [ %321, %514 ], [ %321, %477 ]
  %796 = phi i32 [ %313, %474 ], [ %792, %784 ], [ %313, %741 ], [ %313, %738 ], [ %313, %514 ], [ %313, %477 ]
  %797 = icmp eq i32 %795, 0
  br i1 %797, label %798, label %844

798:                                              ; preds = %793
  %799 = getelementptr inbounds nuw i8, ptr %471, i64 8
  %800 = load i32, ptr %799, align 4, !tbaa !36
  %801 = sub i32 %312, %800
  %802 = zext i32 %801 to i64
  %803 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %802
  %804 = getelementptr inbounds nuw i8, ptr %803, i64 16
  %805 = getelementptr inbounds nuw i8, ptr %471, i64 4
  %806 = load i32, ptr %805, align 4, !tbaa !49
  %807 = getelementptr inbounds nuw i8, ptr %803, i64 12
  %808 = load i32, ptr %807, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull readonly align 4 dereferenceable(12) %804, i64 12, i1 false)
  %809 = icmp ugt i32 %806, 3
  br i1 %809, label %810, label %814

810:                                              ; preds = %798
  %811 = load i32, ptr %80, align 4, !tbaa !25
  %812 = load i32, ptr %8, align 8, !tbaa !25
  store i32 %812, ptr %80, align 4, !tbaa !25
  %813 = add i32 %806, -3
  br label %836

814:                                              ; preds = %798
  %815 = icmp eq i32 %808, 0
  %816 = zext i1 %815 to i32
  %817 = add nsw i32 %806, -1
  %818 = add nsw i32 %817, %816
  switch i32 %818, label %824 [
    i32 0, label %819
    i32 3, label %821
  ]

819:                                              ; preds = %814
  %820 = load i32, ptr %79, align 8
  br label %839

821:                                              ; preds = %814
  %822 = load i32, ptr %8, align 8, !tbaa !25
  %823 = add i32 %822, -1
  br label %829

824:                                              ; preds = %814
  %825 = zext i32 %818 to i64
  %826 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %825
  %827 = load i32, ptr %826, align 4, !tbaa !25
  %828 = load i32, ptr %8, align 8, !tbaa !25
  br label %829

829:                                              ; preds = %824, %821
  %830 = phi i32 [ %822, %821 ], [ %828, %824 ]
  %831 = phi i32 [ %823, %821 ], [ %827, %824 ]
  %832 = icmp eq i32 %818, 1
  %833 = load i32, ptr %79, align 8
  %834 = load i32, ptr %80, align 4
  %835 = select i1 %832, i32 %833, i32 %834
  store i32 %830, ptr %80, align 4, !tbaa !25
  br label %836

836:                                              ; preds = %829, %810
  %837 = phi i32 [ %835, %829 ], [ %811, %810 ]
  %838 = phi i32 [ %831, %829 ], [ %813, %810 ]
  store i32 %838, ptr %8, align 8, !tbaa !25
  br label %839

839:                                              ; preds = %836, %819
  %840 = phi i32 [ %820, %819 ], [ %837, %836 ]
  %841 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %842 = getelementptr inbounds nuw i8, ptr %471, i64 16
  store i64 %841, ptr %842, align 4
  %843 = getelementptr inbounds nuw i8, ptr %471, i64 24
  store i32 %840, ptr %843, align 4
  br label %844

844:                                              ; preds = %839, %793
  %845 = icmp ugt ptr %315, %17
  br i1 %845, label %1097, label %846

846:                                              ; preds = %844
  %847 = icmp eq i32 %312, %796
  br i1 %847, label %.loopexit169, label %848

848:                                              ; preds = %846
  %849 = load i32, ptr %67, align 8, !tbaa !39
  %850 = icmp eq i32 %849, 1
  br i1 %850, label %863, label %851

851:                                              ; preds = %848
  %852 = load i32, ptr %68, align 4, !tbaa !40
  %853 = load ptr, ptr %69, align 8, !tbaa !41
  %854 = load i32, ptr %853, align 4, !tbaa !25
  %855 = add i32 %854, 1
  %856 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %855, i1 true)
  %857 = xor i32 %856, 31
  %858 = shl i32 %855, 8
  %859 = lshr i32 %858, %857
  %860 = shl nuw nsw i32 %857, 8
  %861 = add i32 %859, %860
  %862 = sub i32 %852, %861
  br label %863

863:                                              ; preds = %851, %848
  %864 = phi i32 [ %862, %851 ], [ 256, %848 ]
  %865 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %794, i32 %864), !nosanitize !47
  %866 = extractvalue { i32, i1 } %865, 0, !nosanitize !47
  %867 = extractvalue { i32, i1 } %865, 1, !nosanitize !47
  br i1 %867, label %.loopexit145, label %868, !prof !48, !nosanitize !47

868:                                              ; preds = %863
  %869 = zext i1 %797 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %870 = getelementptr inbounds nuw i8, ptr %471, i64 16
  %871 = call i32 %35(ptr noundef %46, ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %315, ptr noundef %16, ptr noundef nonnull %870, i32 noundef %869, i32 noundef %40) #12
  store i32 %871, ptr %14, align 4, !tbaa !25
  %872 = ptrtoint ptr %315 to i64
  %873 = sub i64 %872, %56
  %874 = trunc i64 %873 to i32
  %875 = sub i64 %57, %872
  %876 = trunc i64 %875 to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %12, ptr noundef %46, ptr noundef %14, i32 noundef %874, i32 noundef %876, i32 noundef %40)
  %877 = load i32, ptr %14, align 4, !tbaa !25
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %879, label %880

879:                                              ; preds = %868
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %1097

880:                                              ; preds = %868
  %881 = add i32 %877, -1
  %882 = zext i32 %881 to i64
  %.split78 = getelementptr inbounds nuw [8 x i8], ptr %46, i64 %882
  %883 = getelementptr inbounds nuw i8, ptr %.split78, i64 4
  %884 = load i32, ptr %883, align 4, !tbaa !44
  %885 = icmp ule i32 %884, %38
  %886 = add i32 %884, %312
  %887 = icmp ult i32 %886, 4096
  %888 = and i1 %885, %887
  %889 = zext nneg i32 %884 to i64
  %890 = getelementptr inbounds nuw i8, ptr %315, i64 %889
  %891 = icmp ult ptr %890, %16
  %892 = select i1 %888, i1 %891, i1 false
  br i1 %892, label %893, label %1112

893:                                              ; preds = %880
  %894 = zext i32 %877 to i64
  br label %895

895:                                              ; preds = %.loopexit146, %893
  %896 = phi i64 [ 0, %893 ], [ %1091, %.loopexit146 ]
  %897 = phi i32 [ %796, %893 ], [ %1090, %.loopexit146 ]
  %898 = getelementptr inbounds nuw [8 x i8], ptr %46, i64 %896
  %899 = load i32, ptr %898, align 4, !tbaa !46
  %900 = getelementptr inbounds nuw i8, ptr %898, i64 4
  %901 = load i32, ptr %900, align 4, !tbaa !44
  %902 = icmp eq i64 %896, 0
  br i1 %902, label %907, label %903

903:                                              ; preds = %895
  %904 = getelementptr i8, ptr %898, i64 -4
  %905 = load i32, ptr %904, align 4, !tbaa !44
  %906 = add i32 %905, 1
  br label %907

907:                                              ; preds = %903, %895
  %908 = phi i32 [ %906, %903 ], [ %40, %895 ]
  %909 = icmp ult i32 %901, %908
  br i1 %909, label %.loopexit146, label %910

910:                                              ; preds = %907
  %911 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %899, i1 true)
  %912 = xor i32 %911, 31
  %913 = load i32, ptr %67, align 8, !tbaa !39
  %914 = icmp eq i32 %913, 1
  br i1 %914, label %915, label %986

915:                                              ; preds = %910
  %916 = add i32 %901, %312
  br label %917

917:                                              ; preds = %969, %915
  %918 = phi i32 [ 0, %915 ], [ %973, %969 ]
  %919 = phi i32 [ %897, %915 ], [ %970, %969 ]
  %920 = phi i32 [ %901, %915 ], [ %971, %969 ]
  %921 = sub i32 %916, %918
  %922 = zext i32 %921 to i64
  %923 = add i32 %920, %312
  %924 = add i32 %920, -2
  %925 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %924, i1 true)
  %926 = xor i32 %925, 31
  %927 = shl i32 %924, 8
  %928 = lshr i32 %927, %926
  %929 = add nuw nsw i32 %926, %912
  %930 = shl nuw nsw i32 %929, 8
  %931 = add i32 %928, 4096
  %932 = add i32 %931, %930
  %933 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %866, i32 %932), !nosanitize !47
  %934 = extractvalue { i32, i1 } %933, 0, !nosanitize !47
  %935 = extractvalue { i32, i1 } %933, 1, !nosanitize !47
  br i1 %935, label %.loopexit145, label %936, !prof !48, !nosanitize !47

936:                                              ; preds = %917
  %937 = icmp ugt i32 %923, %919
  br i1 %937, label %943, label %938

938:                                              ; preds = %936
  %939 = zext i32 %923 to i64
  %940 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %939
  %941 = load i32, ptr %940, align 4, !tbaa !43
  %942 = icmp slt i32 %934, %941
  br i1 %942, label %962, label %969

943:                                              ; preds = %936
  %944 = zext i32 %919 to i64
  %945 = zext i32 %923 to i64
  %946 = sub nsw i64 %922, %944
  %947 = and i64 %946, 3
  %948 = icmp eq i64 %947, 0
  br i1 %948, label %.loopexit140, label %.preheader139

.preheader139:                                    ; preds = %943, %.preheader139
  %949 = phi i64 [ %951, %.preheader139 ], [ %944, %943 ]
  %950 = phi i64 [ %954, %.preheader139 ], [ 0, %943 ]
  %951 = add nuw nsw i64 %949, 1
  %952 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %951
  store i32 1073741824, ptr %952, align 4, !tbaa !43
  %953 = getelementptr inbounds nuw i8, ptr %952, i64 12
  store i32 1, ptr %953, align 4, !tbaa !38
  %954 = add nuw nsw i64 %950, 1
  %955 = icmp eq i64 %954, %947
  br i1 %955, label %.loopexit140, label %.preheader139, !llvm.loop !98

.loopexit140:                                     ; preds = %.preheader139, %943
  %956 = phi i64 [ %944, %943 ], [ %951, %.preheader139 ]
  %957 = phi i64 [ poison, %943 ], [ %951, %.preheader139 ]
  %958 = sub nsw i64 %944, %922
  %959 = icmp ugt i64 %958, -4
  br i1 %959, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.loopexit140
  %960 = phi i64 [ %957, %.loopexit140 ], [ %982, %.preheader ]
  %961 = trunc nuw i64 %960 to i32
  br label %962

962:                                              ; preds = %.loopexit, %938
  %963 = phi i64 [ %945, %.loopexit ], [ %939, %938 ]
  %964 = phi i32 [ %961, %.loopexit ], [ %919, %938 ]
  %965 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %963
  %966 = getelementptr inbounds nuw i8, ptr %965, i64 8
  store i32 %920, ptr %966, align 4, !tbaa !36
  %967 = getelementptr inbounds nuw i8, ptr %965, i64 4
  store i32 %899, ptr %967, align 4, !tbaa !49
  %968 = getelementptr inbounds nuw i8, ptr %965, i64 12
  store i32 0, ptr %968, align 4, !tbaa !38
  store i32 %934, ptr %965, align 4, !tbaa !43
  br label %969

969:                                              ; preds = %962, %938
  %970 = phi i32 [ %964, %962 ], [ %919, %938 ]
  %971 = add i32 %920, -1
  %972 = icmp ult i32 %971, %908
  %973 = add i32 %918, 1
  br i1 %972, label %.loopexit146, label %917, !llvm.loop !63

.preheader:                                       ; preds = %.loopexit140, %.preheader
  %974 = phi i64 [ %982, %.preheader ], [ %956, %.loopexit140 ]
  %975 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %974
  %976 = getelementptr inbounds nuw i8, ptr %975, i64 28
  store i32 1073741824, ptr %976, align 4, !tbaa !43
  %977 = getelementptr inbounds nuw i8, ptr %975, i64 40
  store i32 1, ptr %977, align 4, !tbaa !38
  %978 = getelementptr inbounds nuw i8, ptr %975, i64 56
  store i32 1073741824, ptr %978, align 4, !tbaa !43
  %979 = getelementptr inbounds nuw i8, ptr %975, i64 68
  store i32 1, ptr %979, align 4, !tbaa !38
  %980 = getelementptr inbounds nuw i8, ptr %975, i64 84
  store i32 1073741824, ptr %980, align 4, !tbaa !43
  %981 = getelementptr inbounds nuw i8, ptr %975, i64 96
  store i32 1, ptr %981, align 4, !tbaa !38
  %982 = add nuw nsw i64 %974, 4
  %983 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %982
  store i32 1073741824, ptr %983, align 4, !tbaa !43
  %984 = getelementptr inbounds nuw i8, ptr %983, i64 12
  store i32 1, ptr %984, align 4, !tbaa !38
  %985 = icmp samesign ult i64 %982, %945
  br i1 %985, label %.preheader, label %.loopexit, !llvm.loop !64

986:                                              ; preds = %910
  %987 = zext nneg i32 %912 to i64
  %988 = load i32, ptr %71, align 4, !tbaa !51
  %989 = load ptr, ptr %72, align 8, !tbaa !52
  %990 = getelementptr inbounds nuw [4 x i8], ptr %989, i64 %987
  %991 = load i32, ptr %73, align 8, !tbaa !53
  %992 = load ptr, ptr %74, align 8, !tbaa !54
  %993 = add i32 %901, %312
  %.neg131 = add i32 %988, 51
  %.neg133 = add i32 %.neg131, %991
  br label %994

994:                                              ; preds = %1085, %986
  %995 = phi i32 [ 0, %986 ], [ %1089, %1085 ]
  %996 = phi i32 [ %897, %986 ], [ %1086, %1085 ]
  %997 = phi i32 [ %901, %986 ], [ %1087, %1085 ]
  %998 = sub i32 %993, %995
  %999 = zext i32 %998 to i64
  %1000 = add i32 %997, %312
  %1001 = add i32 %997, -3
  %1002 = load i32, ptr %990, align 4, !tbaa !25
  %1003 = add i32 %1002, 1
  %1004 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1003, i1 true)
  %1005 = xor i32 %1004, 31
  %1006 = shl i32 %1003, 8
  %1007 = lshr i32 %1006, %1005
  %1008 = icmp ugt i32 %1001, 127
  br i1 %1008, label %1009, label %1012

1009:                                             ; preds = %994
  %1010 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1001, i1 true)
  %1011 = sub nuw nsw i32 67, %1010
  br label %1017

1012:                                             ; preds = %994
  %1013 = zext nneg i32 %1001 to i64
  %1014 = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %1013
  %1015 = load i8, ptr %1014, align 1, !tbaa !42
  %1016 = zext i8 %1015 to i32
  br label %1017

1017:                                             ; preds = %1012, %1009
  %1018 = phi i32 [ %1011, %1009 ], [ %1016, %1012 ]
  %1019 = zext nneg i32 %1018 to i64
  %1020 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %1019
  %1021 = load i8, ptr %1020, align 1, !tbaa !42
  %1022 = zext i8 %1021 to i32
  %1023 = getelementptr inbounds nuw [4 x i8], ptr %992, i64 %1019
  %1024 = load i32, ptr %1023, align 4, !tbaa !25
  %1025 = add i32 %1024, 1
  %1026 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1025, i1 true)
  %1027 = xor i32 %1026, 31
  %1028 = shl i32 %1025, 8
  %1029 = lshr i32 %1028, %1027
  %1030 = add nuw nsw i32 %912, %1022
  %1031 = add nuw nsw i32 %1005, %1027
  %1032 = sub nsw i32 %1030, %1031
  %1033 = shl nsw i32 %1032, 8
  %1034 = add i32 %1007, %1029
  %1035 = sub i32 %.neg133, %1034
  %1036 = add i32 %1035, %1033
  %1037 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %866, i32 %1036), !nosanitize !47
  %1038 = extractvalue { i32, i1 } %1037, 0, !nosanitize !47
  %1039 = extractvalue { i32, i1 } %1037, 1, !nosanitize !47
  br i1 %1039, label %.loopexit145, label %1040, !prof !48, !nosanitize !47

1040:                                             ; preds = %1017
  %1041 = icmp ugt i32 %1000, %996
  br i1 %1041, label %1047, label %1042

1042:                                             ; preds = %1040
  %1043 = zext i32 %1000 to i64
  %1044 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %1043
  %1045 = load i32, ptr %1044, align 4, !tbaa !43
  %1046 = icmp slt i32 %1038, %1045
  br i1 %1046, label %1078, label %1085

1047:                                             ; preds = %1040
  %1048 = zext i32 %996 to i64
  %1049 = zext i32 %1000 to i64
  %1050 = sub nsw i64 %999, %1048
  %1051 = and i64 %1050, 3
  %1052 = icmp eq i64 %1051, 0
  br i1 %1052, label %.loopexit144, label %.preheader143

.preheader143:                                    ; preds = %1047, %.preheader143
  %1053 = phi i64 [ %1055, %.preheader143 ], [ %1048, %1047 ]
  %1054 = phi i64 [ %1058, %.preheader143 ], [ 0, %1047 ]
  %1055 = add nuw nsw i64 %1053, 1
  %1056 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %1055
  store i32 1073741824, ptr %1056, align 4, !tbaa !43
  %1057 = getelementptr inbounds nuw i8, ptr %1056, i64 12
  store i32 1, ptr %1057, align 4, !tbaa !38
  %1058 = add nuw nsw i64 %1054, 1
  %1059 = icmp eq i64 %1058, %1051
  br i1 %1059, label %.loopexit144, label %.preheader143, !llvm.loop !99

.loopexit144:                                     ; preds = %.preheader143, %1047
  %1060 = phi i64 [ %1048, %1047 ], [ %1055, %.preheader143 ]
  %1061 = phi i64 [ poison, %1047 ], [ %1055, %.preheader143 ]
  %1062 = sub nsw i64 %1048, %999
  %1063 = icmp ugt i64 %1062, -4
  br i1 %1063, label %.loopexit142, label %.preheader141

.preheader141:                                    ; preds = %.loopexit144, %.preheader141
  %1064 = phi i64 [ %1072, %.preheader141 ], [ %1060, %.loopexit144 ]
  %1065 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %1064
  %1066 = getelementptr inbounds nuw i8, ptr %1065, i64 28
  store i32 1073741824, ptr %1066, align 4, !tbaa !43
  %1067 = getelementptr inbounds nuw i8, ptr %1065, i64 40
  store i32 1, ptr %1067, align 4, !tbaa !38
  %1068 = getelementptr inbounds nuw i8, ptr %1065, i64 56
  store i32 1073741824, ptr %1068, align 4, !tbaa !43
  %1069 = getelementptr inbounds nuw i8, ptr %1065, i64 68
  store i32 1, ptr %1069, align 4, !tbaa !38
  %1070 = getelementptr inbounds nuw i8, ptr %1065, i64 84
  store i32 1073741824, ptr %1070, align 4, !tbaa !43
  %1071 = getelementptr inbounds nuw i8, ptr %1065, i64 96
  store i32 1, ptr %1071, align 4, !tbaa !38
  %1072 = add nuw nsw i64 %1064, 4
  %1073 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %1072
  store i32 1073741824, ptr %1073, align 4, !tbaa !43
  %1074 = getelementptr inbounds nuw i8, ptr %1073, i64 12
  store i32 1, ptr %1074, align 4, !tbaa !38
  %1075 = icmp samesign ult i64 %1072, %1049
  br i1 %1075, label %.preheader141, label %.loopexit142, !llvm.loop !64

.loopexit142:                                     ; preds = %.preheader141, %.loopexit144
  %1076 = phi i64 [ %1061, %.loopexit144 ], [ %1072, %.preheader141 ]
  %1077 = trunc nuw i64 %1076 to i32
  br label %1078

1078:                                             ; preds = %.loopexit142, %1042
  %1079 = phi i64 [ %1049, %.loopexit142 ], [ %1043, %1042 ]
  %1080 = phi i32 [ %1077, %.loopexit142 ], [ %996, %1042 ]
  %1081 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %1079
  %1082 = getelementptr inbounds nuw i8, ptr %1081, i64 8
  store i32 %997, ptr %1082, align 4, !tbaa !36
  %1083 = getelementptr inbounds nuw i8, ptr %1081, i64 4
  store i32 %899, ptr %1083, align 4, !tbaa !49
  %1084 = getelementptr inbounds nuw i8, ptr %1081, i64 12
  store i32 0, ptr %1084, align 4, !tbaa !38
  store i32 %1038, ptr %1081, align 4, !tbaa !43
  br label %1085

1085:                                             ; preds = %1078, %1042
  %1086 = phi i32 [ %1080, %1078 ], [ %996, %1042 ]
  %1087 = add i32 %997, -1
  %1088 = icmp ult i32 %1087, %908
  %1089 = add i32 %995, 1
  br i1 %1088, label %.loopexit146, label %994, !llvm.loop !63

.loopexit146:                                     ; preds = %1085, %969, %907
  %1090 = phi i32 [ %897, %907 ], [ %970, %969 ], [ %1086, %1085 ]
  %1091 = add nuw nsw i64 %896, 1
  %1092 = icmp eq i64 %1091, %894
  br i1 %1092, label %1093, label %895, !llvm.loop !66

1093:                                             ; preds = %.loopexit146
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %1094 = add i32 %1090, 1
  %1095 = zext i32 %1094 to i64
  %1096 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %1095
  store i32 1073741824, ptr %1096, align 4, !tbaa !43
  br label %1097

1097:                                             ; preds = %1093, %879, %844
  %1098 = phi i32 [ %796, %879 ], [ %796, %844 ], [ %1090, %1093 ]
  %1099 = add i32 %312, 1
  %1100 = icmp ugt i32 %1099, %1098
  br i1 %1100, label %..loopexit169_crit_edge, label %.preheader167, !llvm.loop !67

..loopexit169_crit_edge:                          ; preds = %1097
  %.phi.trans.insert = zext i32 %1098 to i64
  %.phi.trans.insert223 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %.phi.trans.insert
  %.pre224 = load i32, ptr %.phi.trans.insert223, align 4, !tbaa !25
  br label %.loopexit169, !llvm.loop !67

.loopexit169:                                     ; preds = %846, %..loopexit169_crit_edge
  %.pre-phi225 = phi i64 [ %.phi.trans.insert, %..loopexit169_crit_edge ], [ %314, %846 ]
  %1101 = phi i32 [ %.pre224, %..loopexit169_crit_edge ], [ %794, %846 ]
  %.ph = phi i32 [ %1098, %..loopexit169_crit_edge ], [ %312, %846 ]
  %1102 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %.pre-phi225
  %1103 = getelementptr inbounds nuw i8, ptr %1102, i64 4
  %1104 = load i32, ptr %1103, align 4, !tbaa !25
  %1105 = getelementptr inbounds nuw i8, ptr %1102, i64 8
  %1106 = load i32, ptr %1105, align 4, !tbaa !25
  %1107 = getelementptr inbounds nuw i8, ptr %1102, i64 12
  %1108 = load i32, ptr %1107, align 4, !tbaa !25
  %1109 = getelementptr inbounds nuw i8, ptr %1102, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %1109, i64 12, i1 false), !tbaa.struct !68
  %1110 = sub i32 %.ph, %1106
  %1111 = icmp eq i32 %1106, 0
  br i1 %1111, label %1115, label %1118

1112:                                             ; preds = %880
  %1113 = load i32, ptr %.split78, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %1114 = icmp eq i32 %884, 0
  br i1 %1114, label %._crit_edge238, label %1120

._crit_edge238:                                   ; preds = %1112
  %.pre239 = zext i32 %886 to i64
  br label %1115

1115:                                             ; preds = %._crit_edge238, %.loopexit169
  %.pre-phi240 = phi i64 [ %.pre239, %._crit_edge238 ], [ %.pre-phi225, %.loopexit169 ]
  %1116 = phi i32 [ %107, %._crit_edge238 ], [ %1101, %.loopexit169 ]
  %1117 = getelementptr inbounds nuw i8, ptr %105, i64 %.pre-phi240
  br label %1553, !llvm.loop !69

1118:                                             ; preds = %.loopexit169
  %1119 = icmp eq i32 %1108, 0
  br i1 %1119, label %._crit_edge, label %1167

._crit_edge:                                      ; preds = %1118
  %.pre241 = zext i32 %1110 to i64
  br label %1120

1120:                                             ; preds = %._crit_edge, %1112
  %.pre-phi242 = phi i64 [ %.pre241, %._crit_edge ], [ %314, %1112 ]
  %1121 = phi i32 [ %1110, %._crit_edge ], [ %312, %1112 ]
  %1122 = phi i32 [ %1106, %._crit_edge ], [ %884, %1112 ]
  %1123 = phi i32 [ %1104, %._crit_edge ], [ %1113, %1112 ]
  %1124 = phi i32 [ %1101, %._crit_edge ], [ %107, %1112 ]
  %.split80 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %.pre-phi242
  %1125 = getelementptr inbounds nuw i8, ptr %.split80, i64 12
  %1126 = load i32, ptr %1125, align 4, !tbaa !38
  br label %1127

1127:                                             ; preds = %1120, %186
  %1128 = phi i32 [ %111, %186 ], [ %1126, %1120 ]
  %1129 = phi i32 [ 0, %186 ], [ %1121, %1120 ]
  %1130 = phi i32 [ %184, %186 ], [ %1122, %1120 ]
  %1131 = phi i32 [ %187, %186 ], [ %1123, %1120 ]
  %1132 = phi i32 [ %107, %186 ], [ %1124, %1120 ]
  %1133 = zext i32 %1129 to i64
  %.split81 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %1133
  %1134 = getelementptr inbounds nuw i8, ptr %.split81, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull readonly align 4 dereferenceable(12) %1134, i64 12, i1 false)
  %1135 = icmp ugt i32 %1131, 3
  br i1 %1135, label %1136, label %1140

1136:                                             ; preds = %1127
  %1137 = load i32, ptr %82, align 4, !tbaa !25
  %1138 = load i32, ptr %7, align 8, !tbaa !25
  store i32 %1138, ptr %82, align 4, !tbaa !25
  %1139 = add i32 %1131, -3
  br label %1161

1140:                                             ; preds = %1127
  %1141 = icmp ne i32 %1128, 0
  %1142 = sext i1 %1141 to i32
  %1143 = add nsw i32 %1131, %1142
  switch i32 %1143, label %1149 [
    i32 0, label %1144
    i32 3, label %1146
  ]

1144:                                             ; preds = %1140
  %1145 = load i32, ptr %81, align 8
  br label %1164

1146:                                             ; preds = %1140
  %1147 = load i32, ptr %7, align 8, !tbaa !25
  %1148 = add i32 %1147, -1
  br label %1154

1149:                                             ; preds = %1140
  %1150 = zext i32 %1143 to i64
  %1151 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %1150
  %1152 = load i32, ptr %1151, align 4, !tbaa !25
  %1153 = load i32, ptr %7, align 8, !tbaa !25
  br label %1154

1154:                                             ; preds = %1149, %1146
  %1155 = phi i32 [ %1147, %1146 ], [ %1153, %1149 ]
  %1156 = phi i32 [ %1148, %1146 ], [ %1152, %1149 ]
  %1157 = icmp eq i32 %1143, 1
  %1158 = load i32, ptr %81, align 8
  %1159 = load i32, ptr %82, align 4
  %1160 = select i1 %1157, i32 %1158, i32 %1159
  store i32 %1155, ptr %82, align 4, !tbaa !25
  br label %1161

1161:                                             ; preds = %1154, %1136
  %1162 = phi i32 [ %1160, %1154 ], [ %1137, %1136 ]
  %1163 = phi i32 [ %1156, %1154 ], [ %1139, %1136 ]
  store i32 %1163, ptr %7, align 8, !tbaa !25
  br label %1164

1164:                                             ; preds = %1161, %1144
  %1165 = phi i32 [ %1145, %1144 ], [ %1162, %1161 ]
  %1166 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %1166, ptr %2, align 4
  store i32 %1165, ptr %83, align 4
  br label %1169

1167:                                             ; preds = %1118
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %1109, i64 12, i1 false)
  %1168 = sub i32 %1110, %1108
  %.pre = zext i32 %1168 to i64
  br label %1169

1169:                                             ; preds = %1167, %1164
  %.pre-phi = phi i64 [ %.pre, %1167 ], [ %1133, %1164 ]
  %1170 = phi i32 [ %1108, %1167 ], [ 0, %1164 ]
  %1171 = phi i32 [ %1106, %1167 ], [ %1130, %1164 ]
  %1172 = phi i32 [ %1104, %1167 ], [ %1131, %1164 ]
  %1173 = phi i32 [ %1101, %1167 ], [ %1132, %1164 ]
  %1174 = phi i32 [ %1168, %1167 ], [ %1129, %1164 ]
  %1175 = add i32 %1174, 2
  %1176 = zext i32 %1175 to i64
  %1177 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %1176
  store i32 %1173, ptr %1177, align 4, !tbaa !25
  %1178 = getelementptr inbounds nuw i8, ptr %1177, i64 4
  store i32 %1172, ptr %1178, align 4, !tbaa !25
  %1179 = getelementptr inbounds nuw i8, ptr %1177, i64 8
  store i32 %1171, ptr %1179, align 4, !tbaa !25
  %1180 = getelementptr inbounds nuw i8, ptr %1177, i64 12
  store i32 %1170, ptr %1180, align 4, !tbaa !25
  %1181 = getelementptr inbounds nuw i8, ptr %1177, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1181, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !68
  %1182 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %.pre-phi
  %1183 = load i64, ptr %1182, align 4
  %1184 = getelementptr inbounds nuw i8, ptr %1182, i64 8
  %1185 = load i32, ptr %1184, align 4, !tbaa !25
  %1186 = getelementptr inbounds nuw i8, ptr %1182, i64 12
  %1187 = load i32, ptr %1186, align 4, !tbaa !25
  store i32 %1187, ptr %1180, align 4, !tbaa !38
  %1188 = icmp eq i32 %1185, 0
  br i1 %1188, label %.preheader163.preheader, label %.preheader165

.preheader165:                                    ; preds = %1169, %.preheader165
  %1189 = phi i32 [ %1210, %.preheader165 ], [ %1187, %1169 ]
  %1190 = phi i32 [ %1208, %.preheader165 ], [ %1185, %1169 ]
  %1191 = phi i64 [ %1206, %.preheader165 ], [ %1183, %1169 ]
  %1192 = phi i64 [ %1204, %.preheader165 ], [ %.pre-phi, %1169 ]
  %1193 = phi i32 [ %1203, %.preheader165 ], [ %1174, %1169 ]
  %1194 = phi i32 [ %1196, %.preheader165 ], [ %1175, %1169 ]
  %.split83 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %1192
  %1195 = getelementptr inbounds nuw i8, ptr %.split83, i64 16
  %1196 = add i32 %1194, -1
  %1197 = zext i32 %1196 to i64
  %1198 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %1197
  store i64 %1191, ptr %1198, align 4
  %1199 = getelementptr inbounds nuw i8, ptr %1198, i64 8
  store i32 %1190, ptr %1199, align 4, !tbaa !25
  %1200 = getelementptr inbounds nuw i8, ptr %1198, i64 12
  store i32 %1189, ptr %1200, align 4, !tbaa !25
  %1201 = getelementptr inbounds nuw i8, ptr %1198, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1201, ptr noundef nonnull align 4 dereferenceable(12) %1195, i64 12, i1 false)
  %1202 = add i32 %1190, %1189
  %1203 = sub i32 %1193, %1202
  %1204 = zext i32 %1203 to i64
  %1205 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %1204
  %1206 = load i64, ptr %1205, align 4
  %1207 = getelementptr inbounds nuw i8, ptr %1205, i64 8
  %1208 = load i32, ptr %1207, align 4, !tbaa !25
  %1209 = getelementptr inbounds nuw i8, ptr %1205, i64 12
  %1210 = load i32, ptr %1209, align 4, !tbaa !25
  store i32 %1210, ptr %1200, align 4, !tbaa !38
  %1211 = icmp eq i32 %1208, 0
  br i1 %1211, label %.loopexit166, label %.preheader165

.loopexit166:                                     ; preds = %.preheader165
  %1212 = icmp ugt i32 %1196, %1175
  br i1 %1212, label %.loopexit164, label %.preheader163.preheader

.preheader163.preheader:                          ; preds = %.loopexit166, %1169
  %.ph412 = phi i32 [ %1175, %1169 ], [ %1196, %.loopexit166 ]
  br label %.preheader163

.preheader163:                                    ; preds = %.preheader163.preheader, %1510
  %1213 = phi ptr [ %1511, %1510 ], [ %106, %.preheader163.preheader ]
  %1214 = phi i32 [ %1513, %1510 ], [ %.ph412, %.preheader163.preheader ]
  %1215 = ptrtoint ptr %1213 to i64
  %1216 = zext i32 %1214 to i64
  %1217 = getelementptr inbounds nuw [28 x i8], ptr %44, i64 %1216
  %1218 = getelementptr inbounds nuw i8, ptr %1217, i64 12
  %1219 = load i32, ptr %1218, align 4, !tbaa !38
  %1220 = getelementptr inbounds nuw i8, ptr %1217, i64 8
  %1221 = load i32, ptr %1220, align 4, !tbaa !36
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1223, label %1226

1223:                                             ; preds = %.preheader163
  %1224 = zext i32 %1219 to i64
  %1225 = getelementptr inbounds nuw i8, ptr %1213, i64 %1224
  br label %1510

1226:                                             ; preds = %.preheader163
  %1227 = add i32 %1221, %1219
  %1228 = getelementptr inbounds nuw i8, ptr %1217, i64 4
  %1229 = load i32, ptr %1228, align 4, !tbaa !49
  %1230 = load i32, ptr %75, align 8, !tbaa !56
  %1231 = icmp eq i32 %1230, 2
  br i1 %1231, label %1288, label %1232

1232:                                             ; preds = %1226
  %1233 = icmp eq i32 %1219, 0
  br i1 %1233, label %.loopexit156, label %1234

1234:                                             ; preds = %1232
  %1235 = load ptr, ptr %15, align 8, !tbaa !58
  %1236 = zext i32 %1219 to i64
  %1237 = and i64 %1236, 3
  %1238 = icmp ult i32 %1219, 4
  br i1 %1238, label %.loopexit157, label %1239

1239:                                             ; preds = %1234
  %1240 = and i64 %1236, 4294967292
  %1241 = getelementptr inbounds nuw i8, ptr %1213, i64 1
  %1242 = getelementptr inbounds nuw i8, ptr %1213, i64 2
  %1243 = getelementptr inbounds nuw i8, ptr %1213, i64 3
  br label %1244

1244:                                             ; preds = %1244, %1239
  %1245 = phi i64 [ 0, %1239 ], [ %1270, %1244 ]
  %1246 = getelementptr inbounds nuw i8, ptr %1213, i64 %1245
  %1247 = load i8, ptr %1246, align 1, !tbaa !42
  %1248 = zext i8 %1247 to i64
  %1249 = getelementptr inbounds nuw [4 x i8], ptr %1235, i64 %1248
  %1250 = load i32, ptr %1249, align 4, !tbaa !25
  %1251 = add i32 %1250, 2
  store i32 %1251, ptr %1249, align 4, !tbaa !25
  %1252 = getelementptr inbounds nuw i8, ptr %1241, i64 %1245
  %1253 = load i8, ptr %1252, align 1, !tbaa !42
  %1254 = zext i8 %1253 to i64
  %1255 = getelementptr inbounds nuw [4 x i8], ptr %1235, i64 %1254
  %1256 = load i32, ptr %1255, align 4, !tbaa !25
  %1257 = add i32 %1256, 2
  store i32 %1257, ptr %1255, align 4, !tbaa !25
  %1258 = getelementptr inbounds nuw i8, ptr %1242, i64 %1245
  %1259 = load i8, ptr %1258, align 1, !tbaa !42
  %1260 = zext i8 %1259 to i64
  %1261 = getelementptr inbounds nuw [4 x i8], ptr %1235, i64 %1260
  %1262 = load i32, ptr %1261, align 4, !tbaa !25
  %1263 = add i32 %1262, 2
  store i32 %1263, ptr %1261, align 4, !tbaa !25
  %1264 = getelementptr inbounds nuw i8, ptr %1243, i64 %1245
  %1265 = load i8, ptr %1264, align 1, !tbaa !42
  %1266 = zext i8 %1265 to i64
  %1267 = getelementptr inbounds nuw [4 x i8], ptr %1235, i64 %1266
  %1268 = load i32, ptr %1267, align 4, !tbaa !25
  %1269 = add i32 %1268, 2
  store i32 %1269, ptr %1267, align 4, !tbaa !25
  %1270 = add nuw nsw i64 %1245, 4
  %1271 = icmp eq i64 %1270, %1240
  br i1 %1271, label %.loopexit157, label %1244, !llvm.loop !70

.loopexit157:                                     ; preds = %1244, %1234
  %1272 = phi i64 [ 0, %1234 ], [ %1240, %1244 ]
  %1273 = icmp eq i64 %1237, 0
  br i1 %1273, label %.loopexit156, label %.preheader155

.preheader155:                                    ; preds = %.loopexit157, %.preheader155
  %1274 = phi i64 [ %1282, %.preheader155 ], [ %1272, %.loopexit157 ]
  %1275 = phi i64 [ %1283, %.preheader155 ], [ 0, %.loopexit157 ]
  %1276 = getelementptr inbounds nuw i8, ptr %1213, i64 %1274
  %1277 = load i8, ptr %1276, align 1, !tbaa !42
  %1278 = zext i8 %1277 to i64
  %1279 = getelementptr inbounds nuw [4 x i8], ptr %1235, i64 %1278
  %1280 = load i32, ptr %1279, align 4, !tbaa !25
  %1281 = add i32 %1280, 2
  store i32 %1281, ptr %1279, align 4, !tbaa !25
  %1282 = add nuw nsw i64 %1274, 1
  %1283 = add nuw nsw i64 %1275, 1
  %1284 = icmp eq i64 %1283, %1237
  br i1 %1284, label %.loopexit156, label %.preheader155, !llvm.loop !100

.loopexit156:                                     ; preds = %.preheader155, %.loopexit157, %1232
  %1285 = shl i32 %1219, 1
  %1286 = load i32, ptr %84, align 8, !tbaa !72
  %1287 = add i32 %1286, %1285
  store i32 %1287, ptr %84, align 8, !tbaa !72
  br label %1288

1288:                                             ; preds = %.loopexit156, %1226
  %1289 = icmp ugt i32 %1219, 63
  br i1 %1289, label %1290, label %1293

1290:                                             ; preds = %1288
  %1291 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1219, i1 true)
  %1292 = sub nuw nsw i32 50, %1291
  br label %1298

1293:                                             ; preds = %1288
  %1294 = zext nneg i32 %1219 to i64
  %1295 = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %1294
  %1296 = load i8, ptr %1295, align 1, !tbaa !42
  %1297 = zext i8 %1296 to i32
  br label %1298

1298:                                             ; preds = %1293, %1290
  %1299 = phi i32 [ %1292, %1290 ], [ %1297, %1293 ]
  %1300 = load ptr, ptr %69, align 8, !tbaa !41
  %1301 = zext nneg i32 %1299 to i64
  %1302 = getelementptr inbounds nuw [4 x i8], ptr %1300, i64 %1301
  %1303 = load i32, ptr %1302, align 4, !tbaa !25
  %1304 = add i32 %1303, 1
  store i32 %1304, ptr %1302, align 4, !tbaa !25
  %1305 = load i32, ptr %85, align 4, !tbaa !73
  %1306 = add i32 %1305, 1
  store i32 %1306, ptr %85, align 4, !tbaa !73
  %1307 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1229, i1 true)
  %1308 = xor i32 %1307, 31
  %1309 = load ptr, ptr %72, align 8, !tbaa !52
  %1310 = zext nneg i32 %1308 to i64
  %1311 = getelementptr inbounds nuw [4 x i8], ptr %1309, i64 %1310
  %1312 = load i32, ptr %1311, align 4, !tbaa !25
  %1313 = add i32 %1312, 1
  store i32 %1313, ptr %1311, align 4, !tbaa !25
  %1314 = load i32, ptr %86, align 4, !tbaa !74
  %1315 = add i32 %1314, 1
  store i32 %1315, ptr %86, align 4, !tbaa !74
  %1316 = add i32 %1221, -3
  %1317 = icmp ugt i32 %1316, 127
  br i1 %1317, label %1318, label %1321

1318:                                             ; preds = %1298
  %1319 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1316, i1 true)
  %1320 = sub nuw nsw i32 67, %1319
  br label %1326

1321:                                             ; preds = %1298
  %1322 = zext nneg i32 %1316 to i64
  %1323 = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %1322
  %1324 = load i8, ptr %1323, align 1, !tbaa !42
  %1325 = zext i8 %1324 to i32
  br label %1326

1326:                                             ; preds = %1321, %1318
  %1327 = phi i32 [ %1320, %1318 ], [ %1325, %1321 ]
  %1328 = load ptr, ptr %74, align 8, !tbaa !54
  %1329 = zext nneg i32 %1327 to i64
  %1330 = getelementptr inbounds nuw [4 x i8], ptr %1328, i64 %1329
  %1331 = load i32, ptr %1330, align 4, !tbaa !25
  %1332 = add i32 %1331, 1
  store i32 %1332, ptr %1330, align 4, !tbaa !25
  %1333 = load i32, ptr %87, align 8, !tbaa !75
  %1334 = add i32 %1333, 1
  store i32 %1334, ptr %87, align 8, !tbaa !75
  %1335 = zext i32 %1219 to i64
  %1336 = zext i32 %1221 to i64
  %1337 = getelementptr inbounds nuw i8, ptr %1213, i64 %1335
  %1338 = icmp ugt ptr %1337, %88
  %1339 = load ptr, ptr %89, align 8, !tbaa !76
  br i1 %1338, label %1362, label %1340

1340:                                             ; preds = %1326
  %1341 = load <2 x i64>, ptr %1213, align 1, !tbaa !42
  store <2 x i64> %1341, ptr %1339, align 1, !tbaa !42
  %1342 = icmp ugt i32 %1219, 16
  br i1 %1342, label %1343, label %1476

1343:                                             ; preds = %1340
  %1344 = load ptr, ptr %89, align 8, !tbaa !76
  %1345 = getelementptr inbounds nuw i8, ptr %1344, i64 16
  %1346 = getelementptr inbounds nuw i8, ptr %1213, i64 16
  %1347 = getelementptr i8, ptr %1344, i64 %1335
  %1348 = load <2 x i64>, ptr %1346, align 1, !tbaa !42
  store <2 x i64> %1348, ptr %1345, align 1, !tbaa !42
  %1349 = icmp ult i32 %1219, 33
  br i1 %1349, label %1476, label %1350

1350:                                             ; preds = %1343
  %1351 = getelementptr inbounds nuw i8, ptr %1344, i64 32
  br label %1352

1352:                                             ; preds = %1352, %1350
  %1353 = phi ptr [ %1351, %1350 ], [ %1360, %1352 ]
  %1354 = phi ptr [ %1346, %1350 ], [ %1358, %1352 ]
  %1355 = getelementptr inbounds nuw i8, ptr %1354, i64 16
  %1356 = load <2 x i64>, ptr %1355, align 1, !tbaa !42
  store <2 x i64> %1356, ptr %1353, align 1, !tbaa !42
  %1357 = getelementptr inbounds nuw i8, ptr %1353, i64 16
  %1358 = getelementptr inbounds nuw i8, ptr %1354, i64 32
  %1359 = load <2 x i64>, ptr %1358, align 1, !tbaa !42
  store <2 x i64> %1359, ptr %1357, align 1, !tbaa !42
  %1360 = getelementptr inbounds nuw i8, ptr %1353, i64 32
  %1361 = icmp ult ptr %1360, %1347
  br i1 %1361, label %1352, label %.loopexit150, !llvm.loop !79

1362:                                             ; preds = %1326
  %1363 = icmp ugt ptr %1213, %88
  br i1 %1363, label %.loopexit153, label %1364

1364:                                             ; preds = %1362
  %1365 = sub i64 %90, %1215
  %1366 = getelementptr inbounds i8, ptr %1339, i64 %1365
  %1367 = load <2 x i64>, ptr %1213, align 1, !tbaa !42
  store <2 x i64> %1367, ptr %1339, align 1, !tbaa !42
  %1368 = icmp ult i64 %1365, 17
  br i1 %1368, label %.loopexit153, label %1369

1369:                                             ; preds = %1364
  %1370 = getelementptr inbounds nuw i8, ptr %1339, i64 16
  br label %1371

1371:                                             ; preds = %1371, %1369
  %1372 = phi ptr [ %1370, %1369 ], [ %1379, %1371 ]
  %1373 = phi ptr [ %1213, %1369 ], [ %1377, %1371 ]
  %1374 = getelementptr inbounds nuw i8, ptr %1373, i64 16
  %1375 = load <2 x i64>, ptr %1374, align 1, !tbaa !42
  store <2 x i64> %1375, ptr %1372, align 1, !tbaa !42
  %1376 = getelementptr inbounds nuw i8, ptr %1372, i64 16
  %1377 = getelementptr inbounds nuw i8, ptr %1373, i64 32
  %1378 = load <2 x i64>, ptr %1377, align 1, !tbaa !42
  store <2 x i64> %1378, ptr %1376, align 1, !tbaa !42
  %1379 = getelementptr inbounds nuw i8, ptr %1372, i64 32
  %1380 = icmp ult ptr %1379, %1366
  br i1 %1380, label %1371, label %.loopexit153, !llvm.loop !79

.loopexit153:                                     ; preds = %1371, %1364, %1362
  %1381 = phi ptr [ %88, %1364 ], [ %1213, %1362 ], [ %88, %1371 ]
  %1382 = phi ptr [ %1366, %1364 ], [ %1339, %1362 ], [ %1366, %1371 ]
  %1383 = icmp ult ptr %1381, %1337
  br i1 %1383, label %1384, label %.loopexit150

1384:                                             ; preds = %.loopexit153
  %1385 = ptrtoint ptr %1381 to i64
  %1386 = ptrtoint ptr %1382 to i64
  %1387 = add i64 %1335, %1215
  %1388 = sub i64 %1387, %1385
  %1389 = icmp ult i64 %1388, 4
  %1390 = sub i64 %1386, %1385
  %1391 = icmp ult i64 %1390, 32
  %1392 = select i1 %1389, i1 true, i1 %1391
  br i1 %1392, label %1428, label %1393

1393:                                             ; preds = %1384
  %1394 = icmp ult i64 %1388, 32
  br i1 %1394, label %1414, label %1395

1395:                                             ; preds = %1393
  %1396 = and i64 %1388, -32
  br label %1397

1397:                                             ; preds = %1397, %1395
  %1398 = phi i64 [ 0, %1395 ], [ %1405, %1397 ]
  %1399 = getelementptr i8, ptr %1382, i64 %1398
  %1400 = getelementptr i8, ptr %1381, i64 %1398
  %1401 = getelementptr i8, ptr %1400, i64 16
  %1402 = load <16 x i8>, ptr %1400, align 1, !tbaa !42
  %1403 = load <16 x i8>, ptr %1401, align 1, !tbaa !42
  %1404 = getelementptr i8, ptr %1399, i64 16
  store <16 x i8> %1402, ptr %1399, align 1, !tbaa !42
  store <16 x i8> %1403, ptr %1404, align 1, !tbaa !42
  %1405 = add nuw i64 %1398, 32
  %1406 = icmp eq i64 %1405, %1396
  br i1 %1406, label %1407, label %1397, !llvm.loop !101

1407:                                             ; preds = %1397
  %1408 = icmp eq i64 %1388, %1396
  br i1 %1408, label %.loopexit150, label %1409

1409:                                             ; preds = %1407
  %1410 = getelementptr i8, ptr %1382, i64 %1396
  %1411 = getelementptr i8, ptr %1381, i64 %1396
  %1412 = and i64 %1388, 28
  %1413 = icmp eq i64 %1412, 0
  br i1 %1413, label %1428, label %1414

1414:                                             ; preds = %1409, %1393
  %1415 = phi i64 [ %1396, %1409 ], [ 0, %1393 ]
  %1416 = and i64 %1388, -4
  br label %1417

1417:                                             ; preds = %1417, %1414
  %1418 = phi i64 [ %1415, %1414 ], [ %1422, %1417 ]
  %1419 = getelementptr i8, ptr %1382, i64 %1418
  %1420 = getelementptr i8, ptr %1381, i64 %1418
  %1421 = load <4 x i8>, ptr %1420, align 1, !tbaa !42
  store <4 x i8> %1421, ptr %1419, align 1, !tbaa !42
  %1422 = add nuw i64 %1418, 4
  %1423 = icmp eq i64 %1422, %1416
  br i1 %1423, label %1424, label %1417, !llvm.loop !102

1424:                                             ; preds = %1417
  %1425 = getelementptr i8, ptr %1382, i64 %1416
  %1426 = getelementptr i8, ptr %1381, i64 %1416
  %1427 = icmp eq i64 %1388, %1416
  br i1 %1427, label %.loopexit150, label %1428

1428:                                             ; preds = %1424, %1409, %1384
  %1429 = phi ptr [ %1382, %1384 ], [ %1410, %1409 ], [ %1425, %1424 ]
  %1430 = phi ptr [ %1381, %1384 ], [ %1411, %1409 ], [ %1426, %1424 ]
  %1431 = ptrtoint ptr %1430 to i64
  %1432 = sub i64 %1387, %1431
  %1433 = add i64 %1215, -1
  %1434 = add i64 %1433, %1335
  %1435 = sub i64 %1434, %1431
  %1436 = and i64 %1432, 7
  %1437 = icmp eq i64 %1436, 0
  br i1 %1437, label %.loopexit152, label %.preheader151

.preheader151:                                    ; preds = %1428, %.preheader151
  %1438 = phi ptr [ %1443, %.preheader151 ], [ %1429, %1428 ]
  %1439 = phi ptr [ %1441, %.preheader151 ], [ %1430, %1428 ]
  %1440 = phi i64 [ %1444, %.preheader151 ], [ 0, %1428 ]
  %1441 = getelementptr inbounds nuw i8, ptr %1439, i64 1
  %1442 = load i8, ptr %1439, align 1, !tbaa !42
  %1443 = getelementptr inbounds nuw i8, ptr %1438, i64 1
  store i8 %1442, ptr %1438, align 1, !tbaa !42
  %1444 = add nuw nsw i64 %1440, 1
  %1445 = icmp eq i64 %1444, %1436
  br i1 %1445, label %.loopexit152, label %.preheader151, !llvm.loop !103

.loopexit152:                                     ; preds = %.preheader151, %1428
  %1446 = phi ptr [ %1429, %1428 ], [ %1443, %.preheader151 ]
  %1447 = phi ptr [ %1430, %1428 ], [ %1441, %.preheader151 ]
  %1448 = icmp ult i64 %1435, 7
  br i1 %1448, label %.loopexit150, label %.preheader149

.preheader149:                                    ; preds = %.loopexit152, %.preheader149
  %1449 = phi ptr [ %1474, %.preheader149 ], [ %1446, %.loopexit152 ]
  %1450 = phi ptr [ %1472, %.preheader149 ], [ %1447, %.loopexit152 ]
  %1451 = getelementptr inbounds nuw i8, ptr %1450, i64 1
  %1452 = load i8, ptr %1450, align 1, !tbaa !42
  %1453 = getelementptr inbounds nuw i8, ptr %1449, i64 1
  store i8 %1452, ptr %1449, align 1, !tbaa !42
  %1454 = getelementptr inbounds nuw i8, ptr %1450, i64 2
  %1455 = load i8, ptr %1451, align 1, !tbaa !42
  %1456 = getelementptr inbounds nuw i8, ptr %1449, i64 2
  store i8 %1455, ptr %1453, align 1, !tbaa !42
  %1457 = getelementptr inbounds nuw i8, ptr %1450, i64 3
  %1458 = load i8, ptr %1454, align 1, !tbaa !42
  %1459 = getelementptr inbounds nuw i8, ptr %1449, i64 3
  store i8 %1458, ptr %1456, align 1, !tbaa !42
  %1460 = getelementptr inbounds nuw i8, ptr %1450, i64 4
  %1461 = load i8, ptr %1457, align 1, !tbaa !42
  %1462 = getelementptr inbounds nuw i8, ptr %1449, i64 4
  store i8 %1461, ptr %1459, align 1, !tbaa !42
  %1463 = getelementptr inbounds nuw i8, ptr %1450, i64 5
  %1464 = load i8, ptr %1460, align 1, !tbaa !42
  %1465 = getelementptr inbounds nuw i8, ptr %1449, i64 5
  store i8 %1464, ptr %1462, align 1, !tbaa !42
  %1466 = getelementptr inbounds nuw i8, ptr %1450, i64 6
  %1467 = load i8, ptr %1463, align 1, !tbaa !42
  %1468 = getelementptr inbounds nuw i8, ptr %1449, i64 6
  store i8 %1467, ptr %1465, align 1, !tbaa !42
  %1469 = getelementptr inbounds nuw i8, ptr %1450, i64 7
  %1470 = load i8, ptr %1466, align 1, !tbaa !42
  %1471 = getelementptr inbounds nuw i8, ptr %1449, i64 7
  store i8 %1470, ptr %1468, align 1, !tbaa !42
  %1472 = getelementptr inbounds nuw i8, ptr %1450, i64 8
  %1473 = load i8, ptr %1469, align 1, !tbaa !42
  %1474 = getelementptr inbounds nuw i8, ptr %1449, i64 8
  store i8 %1473, ptr %1471, align 1, !tbaa !42
  %1475 = icmp eq ptr %1472, %1337
  br i1 %1475, label %.loopexit150, label %.preheader149, !llvm.loop !104

1476:                                             ; preds = %1343, %1340
  %1477 = load ptr, ptr %89, align 8, !tbaa !76
  %1478 = getelementptr inbounds nuw i8, ptr %1477, i64 %1335
  store ptr %1478, ptr %89, align 8, !tbaa !76
  %1479 = load ptr, ptr %92, align 8, !tbaa !86
  br label %1491

.loopexit150:                                     ; preds = %1352, %.preheader149, %.loopexit152, %1424, %1407, %.loopexit153
  %1480 = load ptr, ptr %89, align 8, !tbaa !76
  %1481 = getelementptr inbounds nuw i8, ptr %1480, i64 %1335
  store ptr %1481, ptr %89, align 8, !tbaa !76
  %1482 = icmp ugt i32 %1219, 65535
  %1483 = load ptr, ptr %92, align 8, !tbaa !86
  br i1 %1482, label %1484, label %1491, !prof !87

1484:                                             ; preds = %.loopexit150
  store i32 1, ptr %91, align 8, !tbaa !88
  %1485 = load ptr, ptr %1, align 8, !tbaa !89
  %1486 = ptrtoint ptr %1483 to i64
  %1487 = ptrtoint ptr %1485 to i64
  %1488 = sub i64 %1486, %1487
  %1489 = lshr exact i64 %1488, 3
  %1490 = trunc i64 %1489 to i32
  store i32 %1490, ptr %93, align 4, !tbaa !90
  br label %1491

1491:                                             ; preds = %1484, %.loopexit150, %1476
  %1492 = phi ptr [ %1479, %1476 ], [ %1483, %1484 ], [ %1483, %.loopexit150 ]
  %1493 = trunc i32 %1219 to i16
  %1494 = getelementptr inbounds nuw i8, ptr %1492, i64 4
  store i16 %1493, ptr %1494, align 4, !tbaa !91
  store i32 %1229, ptr %1492, align 4, !tbaa !94
  %1495 = add nsw i64 %1336, -3
  %1496 = icmp ugt i64 %1495, 65535
  br i1 %1496, label %1497, label %1504, !prof !59

1497:                                             ; preds = %1491
  store i32 2, ptr %91, align 8, !tbaa !88
  %1498 = load ptr, ptr %1, align 8, !tbaa !89
  %1499 = ptrtoint ptr %1492 to i64
  %1500 = ptrtoint ptr %1498 to i64
  %1501 = sub i64 %1499, %1500
  %1502 = lshr exact i64 %1501, 3
  %1503 = trunc i64 %1502 to i32
  store i32 %1503, ptr %93, align 4, !tbaa !90
  br label %1504

1504:                                             ; preds = %1497, %1491
  %1505 = trunc i64 %1495 to i16
  %1506 = getelementptr inbounds nuw i8, ptr %1492, i64 6
  store i16 %1505, ptr %1506, align 2, !tbaa !95
  %1507 = getelementptr inbounds nuw i8, ptr %1492, i64 8
  store ptr %1507, ptr %92, align 8, !tbaa !86
  %1508 = zext i32 %1227 to i64
  %1509 = getelementptr inbounds nuw i8, ptr %1213, i64 %1508
  br label %1510

1510:                                             ; preds = %1504, %1223
  %1511 = phi ptr [ %1213, %1223 ], [ %1509, %1504 ]
  %1512 = phi ptr [ %1225, %1223 ], [ %1509, %1504 ]
  %1513 = add i32 %1214, 1
  %1514 = icmp ugt i32 %1513, %1175
  br i1 %1514, label %.loopexit164, label %.preheader163, !llvm.loop !96

.loopexit164:                                     ; preds = %1510, %.loopexit166
  %1515 = phi ptr [ %106, %.loopexit166 ], [ %1511, %1510 ]
  %1516 = phi ptr [ %105, %.loopexit166 ], [ %1512, %1510 ]
  %1517 = load i32, ptr %75, align 8, !tbaa !56
  %1518 = icmp eq i32 %1517, 2
  br i1 %1518, label %1528, label %1519

1519:                                             ; preds = %.loopexit164
  %1520 = load i32, ptr %84, align 8, !tbaa !72
  %1521 = add i32 %1520, 1
  %1522 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1521, i1 true)
  %1523 = xor i32 %1522, 31
  %1524 = shl nuw nsw i32 %1523, 8
  %1525 = shl i32 %1521, 8
  %1526 = lshr i32 %1525, %1523
  %1527 = add i32 %1524, %1526
  store i32 %1527, ptr %76, align 8, !tbaa !57
  br label %1528

1528:                                             ; preds = %1519, %.loopexit164
  %1529 = load i32, ptr %85, align 4, !tbaa !73
  %1530 = add i32 %1529, 1
  %1531 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1530, i1 true)
  %1532 = xor i32 %1531, 31
  %1533 = shl nuw nsw i32 %1532, 8
  %1534 = shl i32 %1530, 8
  %1535 = lshr i32 %1534, %1532
  %1536 = add i32 %1533, %1535
  %1537 = load i32, ptr %87, align 8, !tbaa !75
  %1538 = add i32 %1537, 1
  %1539 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1538, i1 true)
  %1540 = xor i32 %1539, 31
  %1541 = shl nuw nsw i32 %1540, 8
  %1542 = shl i32 %1538, 8
  %1543 = lshr i32 %1542, %1540
  %1544 = add i32 %1541, %1543
  %1545 = load i32, ptr %86, align 4, !tbaa !74
  %1546 = add i32 %1545, 1
  %1547 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1546, i1 true)
  %1548 = xor i32 %1547, 31
  %1549 = shl nuw nsw i32 %1548, 8
  %1550 = shl i32 %1546, 8
  %1551 = lshr i32 %1550, %1548
  %1552 = add i32 %1549, %1551
  store i32 %1536, ptr %68, align 4, !tbaa !40
  store i32 %1544, ptr %73, align 8, !tbaa !53
  store i32 %1552, ptr %71, align 4, !tbaa !51
  br label %1553

1553:                                             ; preds = %1528, %1115, %121
  %1554 = phi i32 [ %1116, %1115 ], [ %1173, %1528 ], [ %107, %121 ]
  %1555 = phi ptr [ %106, %1115 ], [ %1515, %1528 ], [ %106, %121 ]
  %1556 = phi ptr [ %1117, %1115 ], [ %1516, %1528 ], [ %122, %121 ]
  %1557 = icmp ult ptr %1556, %17
  br i1 %1557, label %104, label %1558

1558:                                             ; preds = %1553
  %1559 = ptrtoint ptr %1555 to i64
  br label %1560

1560:                                             ; preds = %1558, %52
  %1561 = phi i64 [ %1559, %1558 ], [ %56, %52 ]
  %1562 = sub i64 %57, %1561
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret i64 %1562
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btultra2(ptr noundef initializes((224, 228)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [3 x i32], align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = ptrtoint ptr %3 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %14 = load i32, ptr %13, align 4, !tbaa !105
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %5
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = load ptr, ptr %1, align 8, !tbaa !89
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load i32, ptr %22, align 8, !tbaa !22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %25 = load i32, ptr %24, align 4, !tbaa !106
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = icmp eq i32 %23, %12
  %29 = icmp ugt i64 %4, 8
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
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
  store i32 %38, ptr %24, align 4, !tbaa !106
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %38, ptr %39, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %40

40:                                               ; preds = %31, %27, %21, %16, %5
  %41 = call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %41
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btopt_extDict(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_btultra_extDict(ptr noundef initializes((224, 228)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1)
  ret i64 %6
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc i32 @ZSTD_insertBt1(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readnone captures(address) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %11 = load i32, ptr %10, align 8, !tbaa !108
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

42:                                               ; preds = %36, %30, %24, %18, %12
  %43 = phi i64 [ %17, %12 ], [ %41, %36 ], [ %23, %18 ], [ %29, %24 ], [ %35, %30 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %45 = load ptr, ptr %44, align 8, !tbaa !109
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %47 = load i32, ptr %46, align 4, !tbaa !110
  %48 = add i32 %47, -1
  %49 = shl nuw i32 1, %48
  %50 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %49, i32 -1)
  %51 = extractvalue { i32, i1 } %50, 0, !nosanitize !47
  %52 = extractvalue { i32, i1 } %50, 1, !nosanitize !47
  br i1 %52, label %53, label %54, !prof !48, !nosanitize !47

53:                                               ; preds = %42
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !47
  unreachable, !nosanitize !47

54:                                               ; preds = %42
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %56 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %43
  %57 = load i32, ptr %56, align 4, !tbaa !25
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %59 = load ptr, ptr %58, align 8, !tbaa !18
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %61 = load ptr, ptr %60, align 8, !tbaa !111
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
  %75 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %74
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %77 = load i32, ptr %55, align 8, !tbaa !112
  %78 = getelementptr i8, ptr %0, i64 28
  %79 = load i32, ptr %78, align 4, !tbaa !106
  %80 = getelementptr i8, ptr %0, i64 40
  %81 = load i32, ptr %80, align 8, !tbaa !113
  %82 = shl nuw i32 1, %77
  %83 = sub i32 %3, %79
  %84 = icmp ugt i32 %83, %82
  %85 = sub i32 %3, %82
  %86 = icmp eq i32 %81, 0
  %87 = select i1 %86, i1 %84, i1 false
  %88 = select i1 %87, i32 %85, i32 %79
  %89 = add i32 %70, 9
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %91 = load i32, ptr %90, align 4, !tbaa !114
  store i32 %70, ptr %56, align 4, !tbaa !25
  %92 = icmp ult i32 %57, %88
  br i1 %92, label %.loopexit22, label %93

93:                                               ; preds = %54
  %94 = shl nuw i32 1, %91
  %95 = icmp ne i32 %5, 0
  %96 = getelementptr inbounds i8, ptr %2, i64 -7
  %97 = getelementptr inbounds i8, ptr %2, i64 -3
  %98 = getelementptr inbounds i8, ptr %2, i64 -1
  br label %99

99:                                               ; preds = %222, %93
  %100 = phi i32 [ %57, %93 ], [ %228, %222 ]
  %101 = phi i32 [ %94, %93 ], [ %229, %222 ]
  %102 = phi i64 [ 8, %93 ], [ %209, %222 ]
  %103 = phi i32 [ %89, %93 ], [ %207, %222 ]
  %104 = phi i64 [ 0, %93 ], [ %226, %222 ]
  %105 = phi ptr [ %76, %93 ], [ %225, %222 ]
  %106 = phi ptr [ %75, %93 ], [ %224, %222 ]
  %107 = phi i64 [ 0, %93 ], [ %223, %222 ]
  %108 = and i32 %100, %51
  %109 = shl nuw i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %110
  %112 = tail call i64 @llvm.umin.i64(i64 %104, i64 %107)
  %113 = zext i32 %100 to i64
  %114 = add i64 %112, %113
  %115 = icmp ult i64 %114, %64
  %116 = select i1 %95, i1 %115, i1 false
  %117 = getelementptr inbounds nuw i8, ptr %1, i64 %112
  br i1 %116, label %186, label %118

118:                                              ; preds = %99
  %119 = getelementptr inbounds nuw i8, ptr %59, i64 %113
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 %112
  %121 = icmp ult ptr %117, %96
  br i1 %121, label %122, label %.loopexit

122:                                              ; preds = %118
  %123 = load i64, ptr %120, align 1, !tbaa !30
  %124 = load i64, ptr %117, align 1, !tbaa !30
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %.preheader, label %126

126:                                              ; preds = %122
  %127 = xor i64 %124, %123
  %128 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %127, i1 true)
  %129 = lshr i64 %128, 3
  br label %183

.preheader:                                       ; preds = %122, %135
  %130 = phi ptr [ %133, %135 ], [ %120, %122 ]
  %131 = phi ptr [ %132, %135 ], [ %117, %122 ]
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 8
  %133 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %134 = icmp ult ptr %132, %96
  br i1 %134, label %135, label %.loopexit

135:                                              ; preds = %.preheader
  %136 = load i64, ptr %133, align 1, !tbaa !30
  %137 = load i64, ptr %132, align 1, !tbaa !30
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %.preheader, label %139

139:                                              ; preds = %135
  %140 = xor i64 %137, %136
  %141 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %140, i1 true)
  %142 = lshr i64 %141, 3
  %143 = getelementptr inbounds nuw i8, ptr %132, i64 %142
  %144 = ptrtoint ptr %143 to i64
  %145 = ptrtoint ptr %117 to i64
  %146 = sub i64 %144, %145
  br label %183

.loopexit:                                        ; preds = %.preheader, %118
  %147 = phi ptr [ %120, %118 ], [ %133, %.preheader ]
  %148 = phi ptr [ %117, %118 ], [ %132, %.preheader ]
  %149 = icmp ult ptr %148, %97
  br i1 %149, label %150, label %157

150:                                              ; preds = %.loopexit
  %151 = load i32, ptr %147, align 1, !tbaa !25
  %152 = load i32, ptr %148, align 1, !tbaa !25
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = getelementptr inbounds nuw i8, ptr %148, i64 4
  %156 = getelementptr inbounds nuw i8, ptr %147, i64 4
  br label %157

157:                                              ; preds = %154, %150, %.loopexit
  %158 = phi ptr [ %156, %154 ], [ %147, %150 ], [ %147, %.loopexit ]
  %159 = phi ptr [ %155, %154 ], [ %148, %150 ], [ %148, %.loopexit ]
  %160 = icmp ult ptr %159, %98
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = load i16, ptr %158, align 1, !tbaa !115
  %163 = load i16, ptr %159, align 1, !tbaa !115
  %164 = icmp eq i16 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = getelementptr inbounds nuw i8, ptr %159, i64 2
  %167 = getelementptr inbounds nuw i8, ptr %158, i64 2
  br label %168

168:                                              ; preds = %165, %161, %157
  %169 = phi ptr [ %167, %165 ], [ %158, %161 ], [ %158, %157 ]
  %170 = phi ptr [ %166, %165 ], [ %159, %161 ], [ %159, %157 ]
  %171 = icmp ult ptr %170, %2
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load i8, ptr %169, align 1, !tbaa !42
  %174 = load i8, ptr %170, align 1, !tbaa !42
  %175 = icmp eq i8 %173, %174
  %176 = zext i1 %175 to i64
  %177 = getelementptr inbounds nuw i8, ptr %170, i64 %176
  br label %178

178:                                              ; preds = %172, %168
  %179 = phi ptr [ %170, %168 ], [ %177, %172 ]
  %180 = ptrtoint ptr %179 to i64
  %181 = ptrtoint ptr %117 to i64
  %182 = sub i64 %180, %181
  br label %183

183:                                              ; preds = %178, %139, %126
  %184 = phi i64 [ %182, %178 ], [ %129, %126 ], [ %146, %139 ]
  %185 = add i64 %184, %112
  br label %195

186:                                              ; preds = %99
  %187 = getelementptr inbounds nuw i8, ptr %61, i64 %113
  %188 = getelementptr inbounds nuw i8, ptr %187, i64 %112
  %189 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef %117, ptr noundef %188, ptr noundef %2, ptr noundef nonnull %65, ptr noundef nonnull %66)
  %190 = add i64 %189, %112
  %191 = add i64 %190, %113
  %192 = icmp ult i64 %191, %64
  %193 = getelementptr inbounds nuw i8, ptr %59, i64 %113
  %194 = select i1 %192, ptr %187, ptr %193
  br label %195

195:                                              ; preds = %186, %183
  %196 = phi ptr [ %119, %183 ], [ %194, %186 ]
  %197 = phi i64 [ %185, %183 ], [ %190, %186 ]
  %198 = icmp ugt i64 %197, %102
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = sub i32 %103, %100
  %201 = zext i32 %200 to i64
  %202 = icmp ugt i64 %197, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = trunc i64 %197 to i32
  %205 = add i32 %100, %204
  br label %206

206:                                              ; preds = %203, %199, %195
  %207 = phi i32 [ %205, %203 ], [ %103, %199 ], [ %103, %195 ]
  %208 = phi i64 [ %197, %203 ], [ %197, %199 ], [ %102, %195 ]
  %209 = freeze i64 %208
  %210 = getelementptr inbounds nuw i8, ptr %1, i64 %197
  %211 = icmp eq ptr %210, %2
  br i1 %211, label %.loopexit22, label %212

212:                                              ; preds = %206
  %213 = getelementptr inbounds nuw i8, ptr %196, i64 %197
  %214 = load i8, ptr %213, align 1, !tbaa !42
  %215 = load i8, ptr %210, align 1, !tbaa !42
  %216 = icmp ult i8 %214, %215
  %217 = icmp ugt i32 %100, %71
  br i1 %216, label %218, label %221

218:                                              ; preds = %212
  store i32 %100, ptr %106, align 4, !tbaa !25
  br i1 %217, label %219, label %.loopexit22

219:                                              ; preds = %218
  %220 = getelementptr inbounds nuw i8, ptr %111, i64 4
  br label %222

221:                                              ; preds = %212
  store i32 %100, ptr %105, align 4, !tbaa !25
  br i1 %217, label %222, label %.loopexit22

222:                                              ; preds = %221, %219
  %223 = phi i64 [ %107, %219 ], [ %197, %221 ]
  %224 = phi ptr [ %220, %219 ], [ %106, %221 ]
  %225 = phi ptr [ %105, %219 ], [ %111, %221 ]
  %226 = phi i64 [ %197, %219 ], [ %104, %221 ]
  %227 = phi ptr [ %220, %219 ], [ %111, %221 ]
  %228 = load i32, ptr %227, align 4, !tbaa !25
  %229 = add i32 %101, -1
  %230 = icmp ne i32 %229, 0
  %231 = icmp uge i32 %228, %88
  %232 = select i1 %230, i1 %231, i1 false
  br i1 %232, label %99, label %.loopexit22, !llvm.loop !116

.loopexit22:                                      ; preds = %222, %221, %218, %206, %54
  %233 = phi ptr [ %75, %54 ], [ %106, %221 ], [ %7, %218 ], [ %106, %206 ], [ %224, %222 ]
  %234 = phi ptr [ %76, %54 ], [ %7, %221 ], [ %105, %218 ], [ %105, %206 ], [ %225, %222 ]
  %235 = phi i32 [ %89, %54 ], [ %207, %206 ], [ %207, %218 ], [ %207, %221 ], [ %207, %222 ]
  %236 = phi i64 [ 8, %54 ], [ %209, %206 ], [ %209, %218 ], [ %209, %221 ], [ %209, %222 ]
  store i32 0, ptr %234, align 4, !tbaa !25
  store i32 0, ptr %233, align 4, !tbaa !25
  %237 = icmp ugt i64 %236, 384
  %238 = trunc i64 %236 to i32
  %239 = add i32 %238, -384
  %240 = tail call i32 @llvm.umin.i32(i32 %239, i32 192)
  %241 = sub i32 %235, %70
  %242 = add i32 %241, -8
  %243 = tail call i32 @llvm.umax.i32(i32 %240, i32 %242)
  %spec.select = select i1 %237, i32 %243, i32 %242
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i32 %spec.select
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
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
  br i1 %13, label %14, label %.loopexit30

14:                                               ; preds = %5
  %15 = load i64, ptr %1, align 1, !tbaa !30
  %16 = load i64, ptr %0, align 1, !tbaa !30
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %.preheader29, label %18

18:                                               ; preds = %14
  %19 = xor i64 %16, %15
  %20 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %19, i1 true)
  %21 = lshr i64 %20, 3
  br label %77

.preheader29:                                     ; preds = %14, %27
  %22 = phi ptr [ %25, %27 ], [ %1, %14 ]
  %23 = phi ptr [ %24, %27 ], [ %0, %14 ]
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %26 = icmp ult ptr %24, %12
  br i1 %26, label %27, label %.loopexit30

27:                                               ; preds = %.preheader29
  %28 = load i64, ptr %25, align 1, !tbaa !30
  %29 = load i64, ptr %24, align 1, !tbaa !30
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %.preheader29, label %31

31:                                               ; preds = %27
  %32 = xor i64 %29, %28
  %33 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %32, i1 true)
  %34 = lshr i64 %33, 3
  %35 = getelementptr inbounds nuw i8, ptr %24, i64 %34
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %0 to i64
  %38 = sub i64 %36, %37
  br label %77

.loopexit30:                                      ; preds = %.preheader29, %5
  %39 = phi ptr [ %1, %5 ], [ %25, %.preheader29 ]
  %40 = phi ptr [ %0, %5 ], [ %24, %.preheader29 ]
  %41 = getelementptr inbounds i8, ptr %11, i64 -3
  %42 = icmp ult ptr %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %.loopexit30
  %44 = load i32, ptr %39, align 1, !tbaa !25
  %45 = load i32, ptr %40, align 1, !tbaa !25
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %49 = getelementptr inbounds nuw i8, ptr %39, i64 4
  br label %50

50:                                               ; preds = %47, %43, %.loopexit30
  %51 = phi ptr [ %49, %47 ], [ %39, %43 ], [ %39, %.loopexit30 ]
  %52 = phi ptr [ %48, %47 ], [ %40, %43 ], [ %40, %.loopexit30 ]
  %53 = getelementptr inbounds i8, ptr %11, i64 -1
  %54 = icmp ult ptr %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i16, ptr %51, align 1, !tbaa !115
  %57 = load i16, ptr %52, align 1, !tbaa !115
  %58 = icmp eq i16 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds nuw i8, ptr %52, i64 2
  %61 = getelementptr inbounds nuw i8, ptr %51, i64 2
  br label %62

62:                                               ; preds = %59, %55, %50
  %63 = phi ptr [ %61, %59 ], [ %51, %55 ], [ %51, %50 ]
  %64 = phi ptr [ %60, %59 ], [ %52, %55 ], [ %52, %50 ]
  %65 = icmp ult ptr %64, %11
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i8, ptr %63, align 1, !tbaa !42
  %68 = load i8, ptr %64, align 1, !tbaa !42
  %69 = icmp eq i8 %67, %68
  %70 = zext i1 %69 to i64
  %71 = getelementptr inbounds nuw i8, ptr %64, i64 %70
  br label %72

72:                                               ; preds = %66, %62
  %73 = phi ptr [ %64, %62 ], [ %71, %66 ]
  %74 = ptrtoint ptr %73 to i64
  %75 = ptrtoint ptr %0 to i64
  %76 = sub i64 %74, %75
  br label %77

77:                                               ; preds = %72, %31, %18
  %78 = phi i64 [ %76, %72 ], [ %21, %18 ], [ %38, %31 ]
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 %78
  %80 = icmp eq ptr %79, %3
  br i1 %80, label %81, label %151

81:                                               ; preds = %77
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 %78
  %83 = getelementptr inbounds i8, ptr %2, i64 -7
  %84 = icmp ult ptr %82, %83
  br i1 %84, label %85, label %.loopexit

85:                                               ; preds = %81
  %86 = load i64, ptr %4, align 1, !tbaa !30
  %87 = load i64, ptr %82, align 1, !tbaa !30
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %.preheader, label %89

89:                                               ; preds = %85
  %90 = xor i64 %87, %86
  %91 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %90, i1 true)
  %92 = lshr i64 %91, 3
  br label %148

.preheader:                                       ; preds = %85, %98
  %93 = phi ptr [ %96, %98 ], [ %4, %85 ]
  %94 = phi ptr [ %95, %98 ], [ %82, %85 ]
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 8
  %96 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %97 = icmp ult ptr %95, %83
  br i1 %97, label %98, label %.loopexit

98:                                               ; preds = %.preheader
  %99 = load i64, ptr %96, align 1, !tbaa !30
  %100 = load i64, ptr %95, align 1, !tbaa !30
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %.preheader, label %102

102:                                              ; preds = %98
  %103 = xor i64 %100, %99
  %104 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %103, i1 true)
  %105 = lshr i64 %104, 3
  %106 = getelementptr inbounds nuw i8, ptr %95, i64 %105
  %107 = ptrtoint ptr %106 to i64
  %108 = ptrtoint ptr %82 to i64
  %109 = sub i64 %107, %108
  br label %148

.loopexit:                                        ; preds = %.preheader, %81
  %110 = phi ptr [ %4, %81 ], [ %96, %.preheader ]
  %111 = phi ptr [ %82, %81 ], [ %95, %.preheader ]
  %112 = getelementptr inbounds i8, ptr %2, i64 -3
  %113 = icmp ult ptr %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %.loopexit
  %115 = load i32, ptr %110, align 1, !tbaa !25
  %116 = load i32, ptr %111, align 1, !tbaa !25
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = getelementptr inbounds nuw i8, ptr %111, i64 4
  %120 = getelementptr inbounds nuw i8, ptr %110, i64 4
  br label %121

121:                                              ; preds = %118, %114, %.loopexit
  %122 = phi ptr [ %120, %118 ], [ %110, %114 ], [ %110, %.loopexit ]
  %123 = phi ptr [ %119, %118 ], [ %111, %114 ], [ %111, %.loopexit ]
  %124 = getelementptr inbounds i8, ptr %2, i64 -1
  %125 = icmp ult ptr %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i16, ptr %122, align 1, !tbaa !115
  %128 = load i16, ptr %123, align 1, !tbaa !115
  %129 = icmp eq i16 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = getelementptr inbounds nuw i8, ptr %123, i64 2
  %132 = getelementptr inbounds nuw i8, ptr %122, i64 2
  br label %133

133:                                              ; preds = %130, %126, %121
  %134 = phi ptr [ %132, %130 ], [ %122, %126 ], [ %122, %121 ]
  %135 = phi ptr [ %131, %130 ], [ %123, %126 ], [ %123, %121 ]
  %136 = icmp ult ptr %135, %2
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i8, ptr %134, align 1, !tbaa !42
  %139 = load i8, ptr %135, align 1, !tbaa !42
  %140 = icmp eq i8 %138, %139
  %141 = zext i1 %140 to i64
  %142 = getelementptr inbounds nuw i8, ptr %135, i64 %141
  br label %143

143:                                              ; preds = %137, %133
  %144 = phi ptr [ %135, %133 ], [ %142, %137 ]
  %145 = ptrtoint ptr %144 to i64
  %146 = ptrtoint ptr %82 to i64
  %147 = sub i64 %145, %146
  br label %148

148:                                              ; preds = %143, %102, %89
  %149 = phi i64 [ %147, %143 ], [ %92, %89 ], [ %109, %102 ]
  %150 = add i64 %149, %78
  br label %151

151:                                              ; preds = %148, %77
  %152 = phi i64 [ %150, %148 ], [ %78, %77 ]
  ret i64 %152
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef nonnull captures(none) initializes((40, 48)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i64, ptr %4, align 8, !tbaa !117
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !118
  %10 = icmp ult i64 %9, %5
  br i1 %10, label %14, label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %13, align 4, !tbaa !35
  br label %98

14:                                               ; preds = %7
  %15 = load ptr, ptr %0, align 8, !tbaa !119
  %16 = getelementptr inbounds nuw [12 x i8], ptr %15, i64 %9
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !25
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %20 = load i32, ptr %19, align 4, !tbaa !25
  %21 = add i32 %2, %1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
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
  br i1 %32, label %53, label %33

33:                                               ; preds = %14
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %34, align 8, !tbaa !34
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %35, align 4, !tbaa !35
  %36 = add i32 %2, %26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %.loopexit29, label %.lr.ph

.lr.ph:                                           ; preds = %33, %47
  %38 = phi i32 [ %48, %47 ], [ %36, %33 ]
  %39 = phi i64 [ %49, %47 ], [ %9, %33 ]
  %40 = getelementptr inbounds nuw [12 x i8], ptr %15, i64 %39
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %42 = load i32, ptr %41, align 4, !tbaa !25
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 8
  %44 = load i32, ptr %43, align 4, !tbaa !25
  %45 = add i32 %44, %42
  %46 = icmp ult i32 %38, %45
  br i1 %46, label %.loopexit28, label %47

47:                                               ; preds = %.lr.ph
  %48 = sub nuw i32 %38, %45
  %49 = add i64 %39, 1
  store i64 %49, ptr %8, align 8, !tbaa !121
  %50 = icmp eq i32 %48, 0
  %exitcond.not = icmp eq i64 %49, %5
  %or.cond = or i1 %50, %exitcond.not
  br i1 %or.cond, label %.loopexit29, label %.lr.ph

.loopexit28:                                      ; preds = %.lr.ph
  %51 = zext i32 %38 to i64
  store i64 %51, ptr %22, align 8, !tbaa !122
  %52 = icmp eq i64 %39, %5
  br i1 %52, label %.loopexit29, label %98

.loopexit29:                                      ; preds = %47, %.loopexit28, %33
  store i64 0, ptr %22, align 8, !tbaa !122
  br label %98

53:                                               ; preds = %14
  %54 = load i32, ptr %16, align 4, !tbaa !25
  %55 = add i32 %28, %1
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %55, ptr %56, align 8, !tbaa !34
  %57 = add i32 %31, %55
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %57, ptr %58, align 4, !tbaa !35
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %54, ptr %59, align 8, !tbaa !31
  %60 = icmp ugt i32 %57, %21
  br i1 %60, label %61, label %79

61:                                               ; preds = %53
  store i32 %21, ptr %58, align 4, !tbaa !35
  %62 = add i32 %2, %26
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %.loopexit23, label %.lr.ph120

.lr.ph120:                                        ; preds = %61, %73
  %64 = phi i32 [ %74, %73 ], [ %62, %61 ]
  %65 = phi i64 [ %75, %73 ], [ %9, %61 ]
  %66 = getelementptr inbounds nuw [12 x i8], ptr %15, i64 %65
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 4
  %68 = load i32, ptr %67, align 4, !tbaa !25
  %69 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %70 = load i32, ptr %69, align 4, !tbaa !25
  %71 = add i32 %70, %68
  %72 = icmp ult i32 %64, %71
  br i1 %72, label %.loopexit, label %73

73:                                               ; preds = %.lr.ph120
  %74 = sub nuw i32 %64, %71
  %75 = add i64 %65, 1
  store i64 %75, ptr %8, align 8, !tbaa !121
  %76 = icmp eq i32 %74, 0
  %exitcond63.not = icmp eq i64 %75, %5
  %or.cond90 = or i1 %76, %exitcond63.not
  br i1 %or.cond90, label %.loopexit23, label %.lr.ph120

.loopexit:                                        ; preds = %.lr.ph120
  %77 = zext i32 %64 to i64
  store i64 %77, ptr %22, align 8, !tbaa !122
  %78 = icmp eq i64 %65, %5
  br i1 %78, label %.loopexit23, label %98

.loopexit23:                                      ; preds = %73, %.loopexit, %61
  store i64 0, ptr %22, align 8, !tbaa !122
  br label %98

79:                                               ; preds = %53
  %80 = add i32 %28, %26
  %81 = add i32 %80, %31
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %.loopexit26, label %.lr.ph118

.lr.ph118:                                        ; preds = %79, %92
  %83 = phi i32 [ %93, %92 ], [ %81, %79 ]
  %84 = phi i64 [ %94, %92 ], [ %9, %79 ]
  %85 = getelementptr inbounds nuw [12 x i8], ptr %15, i64 %84
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 4
  %87 = load i32, ptr %86, align 4, !tbaa !25
  %88 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %89 = load i32, ptr %88, align 4, !tbaa !25
  %90 = add i32 %89, %87
  %91 = icmp ult i32 %83, %90
  br i1 %91, label %.loopexit25, label %92

92:                                               ; preds = %.lr.ph118
  %93 = sub nuw i32 %83, %90
  %94 = add i64 %84, 1
  store i64 %94, ptr %8, align 8, !tbaa !121
  %95 = icmp eq i32 %93, 0
  %exitcond61.not = icmp eq i64 %94, %5
  %or.cond91 = or i1 %95, %exitcond61.not
  br i1 %or.cond91, label %.loopexit26, label %.lr.ph118

.loopexit25:                                      ; preds = %.lr.ph118
  %96 = zext i32 %83 to i64
  store i64 %96, ptr %22, align 8, !tbaa !122
  %97 = icmp eq i64 %84, %5
  br i1 %97, label %.loopexit26, label %98

.loopexit26:                                      ; preds = %92, %.loopexit25, %79
  store i64 0, ptr %22, align 8, !tbaa !122
  br label %98

98:                                               ; preds = %.loopexit26, %.loopexit25, %.loopexit23, %.loopexit, %.loopexit29, %.loopexit28, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_rescaleFreqs(ptr noundef captures(none) initializes((80, 84)) %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 0, 3) %3) unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i64 96
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = icmp eq i32 %7, 2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %9, align 8, !tbaa !39
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %11 = load i32, ptr %10, align 4, !tbaa !73
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %225

13:                                               ; preds = %4
  %14 = icmp ult i64 %2, 9
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  store i32 1, ptr %9, align 8, !tbaa !39
  br label %16

16:                                               ; preds = %15, %13
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %18 = load ptr, ptr %17, align 8, !tbaa !123
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 2056
  %20 = load i32, ptr %19, align 8, !tbaa !124
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %175

22:                                               ; preds = %16
  store i32 0, ptr %9, align 8, !tbaa !39
  br i1 %8, label %42, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %24, align 8, !tbaa !72
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %38, %25 ]
  %27 = load ptr, ptr %17, align 8, !tbaa !123
  %28 = trunc nuw nsw i64 %26 to i32
  %29 = tail call i32 @HUF_getNbBitsFromCTable(ptr noundef %27, i32 noundef %28) #12
  %30 = icmp eq i32 %29, 0
  %31 = sub i32 11, %29
  %32 = shl nuw i32 1, %31
  %33 = select i1 %30, i32 1, i32 %32
  %34 = load ptr, ptr %0, align 8, !tbaa !58
  %35 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %26
  store i32 %33, ptr %35, align 4, !tbaa !25
  %36 = load i32, ptr %24, align 8, !tbaa !72
  %37 = add i32 %36, %33
  store i32 %37, ptr %24, align 8, !tbaa !72
  %38 = add nuw nsw i64 %26, 1
  %39 = icmp eq i64 %38, 256
  br i1 %39, label %40, label %25, !llvm.loop !128

40:                                               ; preds = %25
  %41 = load ptr, ptr %17, align 8, !tbaa !123
  br label %42

42:                                               ; preds = %40, %22
  %43 = phi ptr [ %41, %40 ], [ %18, %22 ]
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 4288
  %45 = load i16, ptr %44, align 1, !tbaa !115
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds nuw i8, ptr %43, i64 4292
  %48 = icmp eq i16 %45, 0
  %49 = add nsw i32 %46, -1
  %50 = shl nuw i32 1, %49
  %51 = sext i32 %50 to i64
  %52 = select i1 %48, i64 1, i64 %51
  %53 = getelementptr inbounds [4 x i8], ptr %47, i64 %52
  store i32 0, ptr %10, align 4, !tbaa !73
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %55 = load ptr, ptr %54, align 8, !tbaa !41
  br label %56

56:                                               ; preds = %56, %42
  %57 = phi i64 [ 0, %42 ], [ %81, %56 ]
  %.split = getelementptr inbounds nuw [8 x i8], ptr %53, i64 %57
  %58 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %59 = load i32, ptr %58, align 4, !tbaa !44
  %60 = add i32 %59, 65535
  %61 = lshr i32 %60, 16
  %62 = icmp ult i32 %60, 65536
  %63 = sub nsw i32 10, %61
  %64 = shl nuw nsw i32 1, %63
  %65 = select i1 %62, i32 1, i32 %64
  %66 = getelementptr inbounds nuw [4 x i8], ptr %55, i64 %57
  store i32 %65, ptr %66, align 4, !tbaa !25
  %67 = load i32, ptr %10, align 4, !tbaa !73
  %68 = add i32 %65, %67
  store i32 %68, ptr %10, align 4, !tbaa !73
  %69 = or disjoint i64 %57, 1
  %.split8 = getelementptr inbounds nuw [8 x i8], ptr %53, i64 %69
  %70 = getelementptr inbounds nuw i8, ptr %.split8, i64 4
  %71 = load i32, ptr %70, align 4, !tbaa !44
  %72 = add i32 %71, 65535
  %73 = lshr i32 %72, 16
  %74 = icmp ult i32 %72, 65536
  %75 = sub nsw i32 10, %73
  %76 = shl nuw nsw i32 1, %75
  %77 = select i1 %74, i32 1, i32 %76
  %78 = getelementptr inbounds nuw [4 x i8], ptr %55, i64 %69
  store i32 %77, ptr %78, align 4, !tbaa !25
  %79 = load i32, ptr %10, align 4, !tbaa !73
  %80 = add i32 %77, %79
  store i32 %80, ptr %10, align 4, !tbaa !73
  %81 = add nuw nsw i64 %57, 2
  %82 = icmp eq i64 %81, 36
  br i1 %82, label %83, label %56, !llvm.loop !129

83:                                               ; preds = %56
  %84 = getelementptr inbounds nuw i8, ptr %43, i64 2836
  %85 = load i16, ptr %84, align 1, !tbaa !115
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds nuw i8, ptr %43, i64 2840
  %88 = icmp eq i16 %85, 0
  %89 = add nsw i32 %86, -1
  %90 = shl nuw i32 1, %89
  %91 = sext i32 %90 to i64
  %92 = select i1 %88, i64 1, i64 %91
  %93 = getelementptr inbounds [4 x i8], ptr %87, i64 %92
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %94, align 8, !tbaa !75
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %96 = load ptr, ptr %95, align 8, !tbaa !54
  %97 = getelementptr inbounds nuw i8, ptr %93, i64 4
  %98 = load i32, ptr %97, align 4, !tbaa !44
  %99 = add i32 %98, 65535
  %100 = lshr i32 %99, 16
  %101 = icmp ult i32 %99, 65536
  %102 = sub nsw i32 10, %100
  %103 = shl nuw nsw i32 1, %102
  %104 = select i1 %101, i32 1, i32 %103
  store i32 %104, ptr %96, align 4, !tbaa !25
  %105 = load i32, ptr %94, align 8, !tbaa !75
  %106 = add i32 %104, %105
  store i32 %106, ptr %94, align 8, !tbaa !75
  br label %107

107:                                              ; preds = %107, %83
  %108 = phi i64 [ 0, %83 ], [ %121, %107 ]
  %109 = or disjoint i64 %108, 1
  %.split10 = getelementptr inbounds nuw [8 x i8], ptr %93, i64 %109
  %110 = getelementptr inbounds nuw i8, ptr %.split10, i64 4
  %111 = load i32, ptr %110, align 4, !tbaa !44
  %112 = add i32 %111, 65535
  %113 = lshr i32 %112, 16
  %114 = icmp ult i32 %112, 65536
  %115 = sub nsw i32 10, %113
  %116 = shl nuw nsw i32 1, %115
  %117 = select i1 %114, i32 1, i32 %116
  %118 = getelementptr inbounds nuw [4 x i8], ptr %96, i64 %109
  store i32 %117, ptr %118, align 4, !tbaa !25
  %119 = load i32, ptr %94, align 8, !tbaa !75
  %120 = add i32 %117, %119
  store i32 %120, ptr %94, align 8, !tbaa !75
  %121 = add nuw nsw i64 %108, 2
  %.split9 = getelementptr inbounds nuw [8 x i8], ptr %93, i64 %121
  %122 = getelementptr inbounds nuw i8, ptr %.split9, i64 4
  %123 = load i32, ptr %122, align 4, !tbaa !44
  %124 = add i32 %123, 65535
  %125 = lshr i32 %124, 16
  %126 = icmp ult i32 %124, 65536
  %127 = sub nsw i32 10, %125
  %128 = shl nuw nsw i32 1, %127
  %129 = select i1 %126, i32 1, i32 %128
  %130 = getelementptr inbounds nuw [4 x i8], ptr %96, i64 %121
  store i32 %129, ptr %130, align 4, !tbaa !25
  %131 = load i32, ptr %94, align 8, !tbaa !75
  %132 = add i32 %129, %131
  store i32 %132, ptr %94, align 8, !tbaa !75
  %133 = icmp eq i64 %121, 52
  br i1 %133, label %134, label %107, !llvm.loop !130

134:                                              ; preds = %107
  %135 = getelementptr inbounds nuw i8, ptr %43, i64 2064
  %136 = load i16, ptr %135, align 1, !tbaa !115
  %137 = zext i16 %136 to i32
  %138 = getelementptr inbounds nuw i8, ptr %43, i64 2068
  %139 = icmp eq i16 %136, 0
  %140 = add nsw i32 %137, -1
  %141 = shl nuw i32 1, %140
  %142 = sext i32 %141 to i64
  %143 = select i1 %139, i64 1, i64 %142
  %144 = getelementptr inbounds [4 x i8], ptr %138, i64 %143
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %145, align 4, !tbaa !74
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %147 = load ptr, ptr %146, align 8, !tbaa !52
  br label %148

148:                                              ; preds = %148, %134
  %149 = phi i64 [ 0, %134 ], [ %173, %148 ]
  %.split11 = getelementptr inbounds nuw [8 x i8], ptr %144, i64 %149
  %150 = getelementptr inbounds nuw i8, ptr %.split11, i64 4
  %151 = load i32, ptr %150, align 4, !tbaa !44
  %152 = add i32 %151, 65535
  %153 = lshr i32 %152, 16
  %154 = icmp ult i32 %152, 65536
  %155 = sub nsw i32 10, %153
  %156 = shl nuw nsw i32 1, %155
  %157 = select i1 %154, i32 1, i32 %156
  %158 = getelementptr inbounds nuw [4 x i8], ptr %147, i64 %149
  store i32 %157, ptr %158, align 4, !tbaa !25
  %159 = load i32, ptr %145, align 4, !tbaa !74
  %160 = add i32 %157, %159
  store i32 %160, ptr %145, align 4, !tbaa !74
  %161 = or disjoint i64 %149, 1
  %.split12 = getelementptr inbounds nuw [8 x i8], ptr %144, i64 %161
  %162 = getelementptr inbounds nuw i8, ptr %.split12, i64 4
  %163 = load i32, ptr %162, align 4, !tbaa !44
  %164 = add i32 %163, 65535
  %165 = lshr i32 %164, 16
  %166 = icmp ult i32 %164, 65536
  %167 = sub nsw i32 10, %165
  %168 = shl nuw nsw i32 1, %167
  %169 = select i1 %166, i32 1, i32 %168
  %170 = getelementptr inbounds nuw [4 x i8], ptr %147, i64 %161
  store i32 %169, ptr %170, align 4, !tbaa !25
  %171 = load i32, ptr %145, align 4, !tbaa !74
  %172 = add i32 %169, %171
  store i32 %172, ptr %145, align 4, !tbaa !74
  %173 = add nuw nsw i64 %149, 2
  %174 = icmp eq i64 %173, 32
  br i1 %174, label %.loopexit, label %148, !llvm.loop !131

175:                                              ; preds = %16
  br i1 %8, label %204, label %176

176:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 255, ptr %5, align 4, !tbaa !25
  %177 = load ptr, ptr %0, align 8, !tbaa !58
  %178 = call i32 @HIST_count_simple(ptr noundef %177, ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2) #12
  %179 = load ptr, ptr %0, align 8, !tbaa !58
  br label %180

180:                                              ; preds = %180, %176
  %181 = phi i64 [ 0, %176 ], [ %198, %180 ]
  %182 = phi <4 x i32> [ zeroinitializer, %176 ], [ %196, %180 ]
  %183 = phi <4 x i32> [ zeroinitializer, %176 ], [ %197, %180 ]
  %184 = getelementptr inbounds nuw [4 x i8], ptr %179, i64 %181
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 16
  %186 = load <4 x i32>, ptr %184, align 4, !tbaa !25
  %187 = load <4 x i32>, ptr %185, align 4, !tbaa !25
  %188 = icmp ne <4 x i32> %186, zeroinitializer
  %189 = icmp ne <4 x i32> %187, zeroinitializer
  %190 = zext <4 x i1> %188 to <4 x i32>
  %191 = zext <4 x i1> %189 to <4 x i32>
  %192 = lshr <4 x i32> %186, splat (i32 8)
  %193 = lshr <4 x i32> %187, splat (i32 8)
  %194 = add nuw nsw <4 x i32> %192, %190
  %195 = add nuw nsw <4 x i32> %193, %191
  %196 = add <4 x i32> %194, %182
  %197 = add <4 x i32> %195, %183
  store <4 x i32> %194, ptr %184, align 4, !tbaa !25
  store <4 x i32> %195, ptr %185, align 4, !tbaa !25
  %198 = add nuw nsw i64 %181, 8
  %199 = icmp eq i64 %198, 256
  br i1 %199, label %200, label %180, !llvm.loop !132

200:                                              ; preds = %180
  %201 = add <4 x i32> %197, %196
  %202 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %201)
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %202, ptr %203, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %204

204:                                              ; preds = %200, %175
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %206 = load ptr, ptr %205, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %206, ptr noundef nonnull align 16 dereferenceable(144) @__const.ZSTD_rescaleFreqs.baseLLfreqs, i64 144, i1 false)
  store i32 40, ptr %10, align 4, !tbaa !73
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %208 = load ptr, ptr %207, align 8, !tbaa !54
  store <4 x i32> splat (i32 1), ptr %208, align 4, !tbaa !25
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 16
  store <4 x i32> splat (i32 1), ptr %209, align 4, !tbaa !25
  %210 = getelementptr inbounds nuw i8, ptr %208, i64 32
  store <4 x i32> splat (i32 1), ptr %210, align 4, !tbaa !25
  %211 = getelementptr inbounds nuw i8, ptr %208, i64 48
  store <4 x i32> splat (i32 1), ptr %211, align 4, !tbaa !25
  %212 = getelementptr inbounds nuw i8, ptr %208, i64 64
  store <4 x i32> splat (i32 1), ptr %212, align 4, !tbaa !25
  %213 = getelementptr inbounds nuw i8, ptr %208, i64 80
  store <4 x i32> splat (i32 1), ptr %213, align 4, !tbaa !25
  %214 = getelementptr inbounds nuw i8, ptr %208, i64 96
  store <4 x i32> splat (i32 1), ptr %214, align 4, !tbaa !25
  %215 = getelementptr inbounds nuw i8, ptr %208, i64 112
  store <4 x i32> splat (i32 1), ptr %215, align 4, !tbaa !25
  %216 = getelementptr inbounds nuw i8, ptr %208, i64 128
  store <4 x i32> splat (i32 1), ptr %216, align 4, !tbaa !25
  %217 = getelementptr inbounds nuw i8, ptr %208, i64 144
  store <4 x i32> splat (i32 1), ptr %217, align 4, !tbaa !25
  %218 = getelementptr inbounds nuw i8, ptr %208, i64 160
  store <4 x i32> splat (i32 1), ptr %218, align 4, !tbaa !25
  %219 = getelementptr inbounds nuw i8, ptr %208, i64 176
  store <4 x i32> splat (i32 1), ptr %219, align 4, !tbaa !25
  %220 = getelementptr inbounds nuw i8, ptr %208, i64 192
  store <4 x i32> splat (i32 1), ptr %220, align 4, !tbaa !25
  %221 = getelementptr inbounds nuw i8, ptr %208, i64 208
  store i32 1, ptr %221, align 4, !tbaa !25
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 53, ptr %222, align 8, !tbaa !75
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %224 = load ptr, ptr %223, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %224, ptr noundef nonnull align 16 dereferenceable(128) @__const.ZSTD_rescaleFreqs.baseOFCfreqs, i64 128, i1 false)
  br label %654

225:                                              ; preds = %4
  br i1 %8, label %458, label %226

226:                                              ; preds = %225
  %227 = load ptr, ptr %0, align 8, !tbaa !58
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 16
  %229 = load <4 x i32>, ptr %227, align 4, !tbaa !25
  %230 = load <4 x i32>, ptr %228, align 4, !tbaa !25
  %231 = getelementptr inbounds nuw i8, ptr %227, i64 32
  %232 = getelementptr inbounds nuw i8, ptr %227, i64 48
  %233 = load <4 x i32>, ptr %231, align 4, !tbaa !25
  %234 = load <4 x i32>, ptr %232, align 4, !tbaa !25
  %235 = getelementptr inbounds nuw i8, ptr %227, i64 64
  %236 = getelementptr inbounds nuw i8, ptr %227, i64 80
  %237 = load <4 x i32>, ptr %235, align 4, !tbaa !25
  %238 = load <4 x i32>, ptr %236, align 4, !tbaa !25
  %239 = getelementptr inbounds nuw i8, ptr %227, i64 96
  %240 = getelementptr inbounds nuw i8, ptr %227, i64 112
  %241 = load <4 x i32>, ptr %239, align 4, !tbaa !25
  %242 = load <4 x i32>, ptr %240, align 4, !tbaa !25
  %243 = getelementptr inbounds nuw i8, ptr %227, i64 128
  %244 = getelementptr inbounds nuw i8, ptr %227, i64 144
  %245 = load <4 x i32>, ptr %243, align 4, !tbaa !25
  %246 = load <4 x i32>, ptr %244, align 4, !tbaa !25
  %247 = getelementptr inbounds nuw i8, ptr %227, i64 160
  %248 = getelementptr inbounds nuw i8, ptr %227, i64 176
  %249 = load <4 x i32>, ptr %247, align 4, !tbaa !25
  %250 = load <4 x i32>, ptr %248, align 4, !tbaa !25
  %251 = getelementptr inbounds nuw i8, ptr %227, i64 192
  %252 = getelementptr inbounds nuw i8, ptr %227, i64 208
  %253 = load <4 x i32>, ptr %251, align 4, !tbaa !25
  %254 = load <4 x i32>, ptr %252, align 4, !tbaa !25
  %255 = getelementptr inbounds nuw i8, ptr %227, i64 224
  %256 = getelementptr inbounds nuw i8, ptr %227, i64 240
  %257 = load <4 x i32>, ptr %255, align 4, !tbaa !25
  %258 = load <4 x i32>, ptr %256, align 4, !tbaa !25
  %259 = getelementptr inbounds nuw i8, ptr %227, i64 256
  %260 = getelementptr inbounds nuw i8, ptr %227, i64 272
  %261 = load <4 x i32>, ptr %259, align 4, !tbaa !25
  %262 = load <4 x i32>, ptr %260, align 4, !tbaa !25
  %263 = getelementptr inbounds nuw i8, ptr %227, i64 288
  %264 = getelementptr inbounds nuw i8, ptr %227, i64 304
  %265 = load <4 x i32>, ptr %263, align 4, !tbaa !25
  %266 = load <4 x i32>, ptr %264, align 4, !tbaa !25
  %267 = getelementptr inbounds nuw i8, ptr %227, i64 320
  %268 = getelementptr inbounds nuw i8, ptr %227, i64 336
  %269 = load <4 x i32>, ptr %267, align 4, !tbaa !25
  %270 = load <4 x i32>, ptr %268, align 4, !tbaa !25
  %271 = getelementptr inbounds nuw i8, ptr %227, i64 352
  %272 = getelementptr inbounds nuw i8, ptr %227, i64 368
  %273 = load <4 x i32>, ptr %271, align 4, !tbaa !25
  %274 = load <4 x i32>, ptr %272, align 4, !tbaa !25
  %275 = getelementptr inbounds nuw i8, ptr %227, i64 384
  %276 = getelementptr inbounds nuw i8, ptr %227, i64 400
  %277 = load <4 x i32>, ptr %275, align 4, !tbaa !25
  %278 = load <4 x i32>, ptr %276, align 4, !tbaa !25
  %279 = getelementptr inbounds nuw i8, ptr %227, i64 416
  %280 = getelementptr inbounds nuw i8, ptr %227, i64 432
  %281 = load <4 x i32>, ptr %279, align 4, !tbaa !25
  %282 = load <4 x i32>, ptr %280, align 4, !tbaa !25
  %283 = getelementptr inbounds nuw i8, ptr %227, i64 448
  %284 = getelementptr inbounds nuw i8, ptr %227, i64 464
  %285 = load <4 x i32>, ptr %283, align 4, !tbaa !25
  %286 = load <4 x i32>, ptr %284, align 4, !tbaa !25
  %287 = getelementptr inbounds nuw i8, ptr %227, i64 480
  %288 = getelementptr inbounds nuw i8, ptr %227, i64 496
  %289 = load <4 x i32>, ptr %287, align 4, !tbaa !25
  %290 = load <4 x i32>, ptr %288, align 4, !tbaa !25
  %291 = getelementptr inbounds nuw i8, ptr %227, i64 512
  %292 = getelementptr inbounds nuw i8, ptr %227, i64 528
  %293 = load <4 x i32>, ptr %291, align 4, !tbaa !25
  %294 = load <4 x i32>, ptr %292, align 4, !tbaa !25
  %295 = getelementptr inbounds nuw i8, ptr %227, i64 544
  %296 = getelementptr inbounds nuw i8, ptr %227, i64 560
  %297 = load <4 x i32>, ptr %295, align 4, !tbaa !25
  %298 = load <4 x i32>, ptr %296, align 4, !tbaa !25
  %299 = getelementptr inbounds nuw i8, ptr %227, i64 576
  %300 = getelementptr inbounds nuw i8, ptr %227, i64 592
  %301 = load <4 x i32>, ptr %299, align 4, !tbaa !25
  %302 = load <4 x i32>, ptr %300, align 4, !tbaa !25
  %303 = getelementptr inbounds nuw i8, ptr %227, i64 608
  %304 = getelementptr inbounds nuw i8, ptr %227, i64 624
  %305 = load <4 x i32>, ptr %303, align 4, !tbaa !25
  %306 = load <4 x i32>, ptr %304, align 4, !tbaa !25
  %307 = getelementptr inbounds nuw i8, ptr %227, i64 640
  %308 = getelementptr inbounds nuw i8, ptr %227, i64 656
  %309 = load <4 x i32>, ptr %307, align 4, !tbaa !25
  %310 = load <4 x i32>, ptr %308, align 4, !tbaa !25
  %311 = getelementptr inbounds nuw i8, ptr %227, i64 672
  %312 = getelementptr inbounds nuw i8, ptr %227, i64 688
  %313 = load <4 x i32>, ptr %311, align 4, !tbaa !25
  %314 = load <4 x i32>, ptr %312, align 4, !tbaa !25
  %315 = getelementptr inbounds nuw i8, ptr %227, i64 704
  %316 = getelementptr inbounds nuw i8, ptr %227, i64 720
  %317 = load <4 x i32>, ptr %315, align 4, !tbaa !25
  %318 = load <4 x i32>, ptr %316, align 4, !tbaa !25
  %319 = getelementptr inbounds nuw i8, ptr %227, i64 736
  %320 = getelementptr inbounds nuw i8, ptr %227, i64 752
  %321 = load <4 x i32>, ptr %319, align 4, !tbaa !25
  %322 = load <4 x i32>, ptr %320, align 4, !tbaa !25
  %323 = getelementptr inbounds nuw i8, ptr %227, i64 768
  %324 = getelementptr inbounds nuw i8, ptr %227, i64 784
  %325 = load <4 x i32>, ptr %323, align 4, !tbaa !25
  %326 = load <4 x i32>, ptr %324, align 4, !tbaa !25
  %327 = getelementptr inbounds nuw i8, ptr %227, i64 800
  %328 = getelementptr inbounds nuw i8, ptr %227, i64 816
  %329 = load <4 x i32>, ptr %327, align 4, !tbaa !25
  %330 = load <4 x i32>, ptr %328, align 4, !tbaa !25
  %331 = getelementptr inbounds nuw i8, ptr %227, i64 832
  %332 = getelementptr inbounds nuw i8, ptr %227, i64 848
  %333 = load <4 x i32>, ptr %331, align 4, !tbaa !25
  %334 = load <4 x i32>, ptr %332, align 4, !tbaa !25
  %335 = getelementptr inbounds nuw i8, ptr %227, i64 864
  %336 = getelementptr inbounds nuw i8, ptr %227, i64 880
  %337 = load <4 x i32>, ptr %335, align 4, !tbaa !25
  %338 = load <4 x i32>, ptr %336, align 4, !tbaa !25
  %339 = getelementptr inbounds nuw i8, ptr %227, i64 896
  %340 = getelementptr inbounds nuw i8, ptr %227, i64 912
  %341 = load <4 x i32>, ptr %339, align 4, !tbaa !25
  %342 = load <4 x i32>, ptr %340, align 4, !tbaa !25
  %343 = getelementptr inbounds nuw i8, ptr %227, i64 928
  %344 = getelementptr inbounds nuw i8, ptr %227, i64 944
  %345 = load <4 x i32>, ptr %343, align 4, !tbaa !25
  %346 = load <4 x i32>, ptr %344, align 4, !tbaa !25
  %347 = getelementptr inbounds nuw i8, ptr %227, i64 960
  %348 = getelementptr inbounds nuw i8, ptr %227, i64 976
  %349 = load <4 x i32>, ptr %347, align 4, !tbaa !25
  %350 = load <4 x i32>, ptr %348, align 4, !tbaa !25
  %351 = getelementptr inbounds nuw i8, ptr %227, i64 992
  %352 = getelementptr inbounds nuw i8, ptr %227, i64 1008
  %353 = load <4 x i32>, ptr %351, align 4, !tbaa !25
  %354 = load <4 x i32>, ptr %352, align 4, !tbaa !25
  %355 = add <4 x i32> %230, %229
  %356 = add <4 x i32> %355, %233
  %357 = add <4 x i32> %356, %234
  %358 = add <4 x i32> %357, %237
  %359 = add <4 x i32> %358, %238
  %360 = add <4 x i32> %359, %241
  %361 = add <4 x i32> %360, %242
  %362 = add <4 x i32> %361, %245
  %363 = add <4 x i32> %362, %246
  %364 = add <4 x i32> %363, %249
  %365 = add <4 x i32> %364, %250
  %366 = add <4 x i32> %365, %253
  %367 = add <4 x i32> %366, %254
  %368 = add <4 x i32> %367, %257
  %369 = add <4 x i32> %368, %258
  %370 = add <4 x i32> %369, %261
  %371 = add <4 x i32> %370, %262
  %372 = add <4 x i32> %371, %265
  %373 = add <4 x i32> %372, %266
  %374 = add <4 x i32> %373, %269
  %375 = add <4 x i32> %374, %270
  %376 = add <4 x i32> %375, %273
  %377 = add <4 x i32> %376, %274
  %378 = add <4 x i32> %377, %277
  %379 = add <4 x i32> %378, %278
  %380 = add <4 x i32> %379, %281
  %381 = add <4 x i32> %380, %282
  %382 = add <4 x i32> %381, %285
  %383 = add <4 x i32> %382, %286
  %384 = add <4 x i32> %383, %289
  %385 = add <4 x i32> %384, %290
  %386 = add <4 x i32> %385, %293
  %387 = add <4 x i32> %386, %294
  %388 = add <4 x i32> %387, %297
  %389 = add <4 x i32> %388, %298
  %390 = add <4 x i32> %389, %301
  %391 = add <4 x i32> %390, %302
  %392 = add <4 x i32> %391, %305
  %393 = add <4 x i32> %392, %306
  %394 = add <4 x i32> %393, %309
  %395 = add <4 x i32> %394, %310
  %396 = add <4 x i32> %395, %313
  %397 = add <4 x i32> %396, %314
  %398 = add <4 x i32> %397, %317
  %399 = add <4 x i32> %398, %318
  %400 = add <4 x i32> %399, %321
  %401 = add <4 x i32> %400, %322
  %402 = add <4 x i32> %401, %325
  %403 = add <4 x i32> %402, %326
  %404 = add <4 x i32> %403, %329
  %405 = add <4 x i32> %404, %330
  %406 = add <4 x i32> %405, %333
  %407 = add <4 x i32> %406, %334
  %408 = add <4 x i32> %407, %337
  %409 = add <4 x i32> %408, %338
  %410 = add <4 x i32> %409, %341
  %411 = add <4 x i32> %410, %342
  %412 = add <4 x i32> %411, %345
  %413 = add <4 x i32> %412, %346
  %414 = add <4 x i32> %413, %349
  %415 = add <4 x i32> %414, %350
  %416 = add <4 x i32> %415, %353
  %417 = add <4 x i32> %416, %354
  %418 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %417)
  %419 = icmp ult i32 %418, 8192
  br i1 %419, label %455, label %420

420:                                              ; preds = %226
  %421 = lshr i32 %418, 12
  %422 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %421, i1 true)
  %423 = xor i32 %422, 31
  %424 = insertelement <4 x i32> poison, i32 %423, i64 0
  %425 = shufflevector <4 x i32> %424, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %426

426:                                              ; preds = %426, %420
  %427 = phi i64 [ 0, %420 ], [ %450, %426 ]
  %428 = phi <4 x i32> [ zeroinitializer, %420 ], [ %448, %426 ]
  %429 = phi <4 x i32> [ zeroinitializer, %420 ], [ %449, %426 ]
  %430 = getelementptr inbounds nuw [4 x i8], ptr %227, i64 %427
  %431 = getelementptr inbounds nuw i8, ptr %430, i64 16
  %432 = load <4 x i32>, ptr %430, align 4, !tbaa !25
  %433 = load <4 x i32>, ptr %431, align 4, !tbaa !25
  %434 = lshr <4 x i32> %432, %425
  %435 = lshr <4 x i32> %433, %425
  %436 = add nuw <4 x i32> %434, splat (i32 1)
  %437 = add nuw <4 x i32> %435, splat (i32 1)
  %438 = add <4 x i32> %436, %428
  %439 = add <4 x i32> %437, %429
  store <4 x i32> %436, ptr %430, align 4, !tbaa !25
  store <4 x i32> %437, ptr %431, align 4, !tbaa !25
  %440 = getelementptr inbounds nuw i8, ptr %430, i64 32
  %441 = getelementptr inbounds nuw i8, ptr %430, i64 48
  %442 = load <4 x i32>, ptr %440, align 4, !tbaa !25
  %443 = load <4 x i32>, ptr %441, align 4, !tbaa !25
  %444 = lshr <4 x i32> %442, %425
  %445 = lshr <4 x i32> %443, %425
  %446 = add nuw <4 x i32> %444, splat (i32 1)
  %447 = add nuw <4 x i32> %445, splat (i32 1)
  %448 = add <4 x i32> %438, %446
  %449 = add <4 x i32> %439, %447
  store <4 x i32> %446, ptr %440, align 4, !tbaa !25
  store <4 x i32> %447, ptr %441, align 4, !tbaa !25
  %450 = add nuw nsw i64 %427, 16
  %451 = icmp eq i64 %450, 256
  br i1 %451, label %452, label %426, !llvm.loop !133

452:                                              ; preds = %426
  %453 = add <4 x i32> %449, %448
  %454 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %453)
  br label %455

455:                                              ; preds = %452, %226
  %456 = phi i32 [ %418, %226 ], [ %454, %452 ]
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %456, ptr %457, align 8, !tbaa !72
  br label %458

458:                                              ; preds = %455, %225
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %460 = load ptr, ptr %459, align 8, !tbaa !41
  %461 = load <32 x i32>, ptr %460, align 4
  %462 = getelementptr inbounds nuw i8, ptr %460, i64 128
  %463 = load <4 x i32>, ptr %462, align 4, !tbaa !25
  %464 = shufflevector <32 x i32> %461, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %465 = add <4 x i32> %464, %463
  %466 = shufflevector <4 x i32> %465, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %467 = shufflevector <32 x i32> %466, <32 x i32> %461, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %468 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %467)
  %469 = icmp ult i32 %468, 4096
  br i1 %469, label %510, label %470

470:                                              ; preds = %458
  %bc27 = bitcast <32 x i32> %461 to <4 x i256>
  %471 = extractelement <4 x i256> %bc27, i64 3
  %472 = bitcast i256 %471 to <8 x i32>
  %bc = bitcast <32 x i32> %461 to <8 x i128>
  %473 = extractelement <8 x i128> %bc, i64 1
  %474 = bitcast i128 %473 to <4 x i32>
  %475 = getelementptr inbounds nuw i8, ptr %460, i64 16
  %476 = getelementptr inbounds nuw i8, ptr %460, i64 112
  %477 = getelementptr inbounds nuw i8, ptr %460, i64 96
  %478 = getelementptr inbounds nuw i8, ptr %460, i64 80
  %479 = getelementptr inbounds nuw i8, ptr %460, i64 64
  %480 = getelementptr inbounds nuw i8, ptr %460, i64 48
  %481 = getelementptr inbounds nuw i8, ptr %460, i64 32
  %482 = lshr i32 %468, 11
  %483 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %482, i1 true)
  %484 = xor i32 %483, 31
  %485 = shufflevector <8 x i32> %472, <8 x i32> poison, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %486 = shufflevector <32 x i32> %461, <32 x i32> %485, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %487 = shufflevector <4 x i32> %474, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %488 = shufflevector <32 x i32> %486, <32 x i32> %487, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %489 = shufflevector <32 x i32> %488, <32 x i32> %461, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %490 = insertelement <32 x i32> poison, i32 %484, i64 0
  %491 = shufflevector <32 x i32> %490, <32 x i32> poison, <32 x i32> zeroinitializer
  %492 = lshr <32 x i32> %489, %491
  %493 = add nuw <32 x i32> %492, splat (i32 1)
  %494 = shufflevector <32 x i32> %493, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %494, ptr %460, align 4, !tbaa !25
  %495 = shufflevector <32 x i32> %493, <32 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %495, ptr %475, align 4, !tbaa !25
  %496 = shufflevector <32 x i32> %493, <32 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %496, ptr %481, align 4, !tbaa !25
  %497 = shufflevector <32 x i32> %493, <32 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %497, ptr %480, align 4, !tbaa !25
  %498 = shufflevector <32 x i32> %493, <32 x i32> poison, <4 x i32> <i32 16, i32 17, i32 18, i32 19>
  store <4 x i32> %498, ptr %479, align 4, !tbaa !25
  %499 = shufflevector <32 x i32> %493, <32 x i32> poison, <4 x i32> <i32 20, i32 21, i32 22, i32 23>
  store <4 x i32> %499, ptr %478, align 4, !tbaa !25
  %500 = shufflevector <32 x i32> %493, <32 x i32> poison, <4 x i32> <i32 24, i32 25, i32 26, i32 27>
  store <4 x i32> %500, ptr %477, align 4, !tbaa !25
  %501 = shufflevector <32 x i32> %493, <32 x i32> poison, <4 x i32> <i32 28, i32 29, i32 30, i32 31>
  store <4 x i32> %501, ptr %476, align 4, !tbaa !25
  %502 = insertelement <4 x i32> poison, i32 %484, i64 0
  %503 = shufflevector <4 x i32> %502, <4 x i32> poison, <4 x i32> zeroinitializer
  %504 = lshr <4 x i32> %463, %503
  %505 = add nuw <4 x i32> %504, splat (i32 1)
  %506 = add <4 x i32> %494, %505
  %507 = shufflevector <4 x i32> %506, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %508 = shufflevector <32 x i32> %507, <32 x i32> %493, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %509 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %508)
  store <4 x i32> %505, ptr %462, align 4, !tbaa !25
  br label %510

510:                                              ; preds = %470, %458
  %511 = phi i32 [ %468, %458 ], [ %509, %470 ]
  store i32 %511, ptr %10, align 4, !tbaa !73
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %513 = load ptr, ptr %512, align 8, !tbaa !54
  %514 = load <32 x i32>, ptr %513, align 4
  %515 = getelementptr inbounds nuw i8, ptr %513, i64 128
  %516 = load <20 x i32>, ptr %515, align 4
  %517 = getelementptr inbounds nuw i8, ptr %513, i64 208
  %518 = load i32, ptr %517, align 4, !tbaa !25
  %519 = shufflevector <20 x i32> %516, <20 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %520 = add <32 x i32> %519, %514
  %521 = shufflevector <32 x i32> %520, <32 x i32> %514, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %522 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %521)
  %523 = add i32 %522, %518
  %524 = icmp ult i32 %523, 4096
  br i1 %524, label %606, label %525

525:                                              ; preds = %510
  %bc37 = bitcast <20 x i32> %516 to <5 x i128>
  %526 = extractelement <5 x i128> %bc37, i64 3
  %527 = bitcast i128 %526 to <4 x i32>
  %528 = extractelement <5 x i128> %bc37, i64 2
  %529 = bitcast i128 %528 to <4 x i32>
  %530 = extractelement <5 x i128> %bc37, i64 1
  %531 = bitcast i128 %530 to <4 x i32>
  %532 = shufflevector <20 x i32> %516, <20 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %bc34 = bitcast <32 x i32> %514 to <8 x i128>
  %533 = extractelement <8 x i128> %bc34, i64 7
  %534 = bitcast i128 %533 to <4 x i32>
  %535 = extractelement <8 x i128> %bc34, i64 6
  %536 = bitcast i128 %535 to <4 x i32>
  %537 = extractelement <8 x i128> %bc34, i64 5
  %538 = bitcast i128 %537 to <4 x i32>
  %539 = extractelement <8 x i128> %bc34, i64 4
  %540 = bitcast i128 %539 to <4 x i32>
  %541 = extractelement <8 x i128> %bc34, i64 3
  %542 = bitcast i128 %541 to <4 x i32>
  %543 = extractelement <8 x i128> %bc34, i64 2
  %544 = bitcast i128 %543 to <4 x i32>
  %545 = extractelement <8 x i128> %bc34, i64 1
  %546 = bitcast i128 %545 to <4 x i32>
  %547 = shufflevector <32 x i32> %514, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %548 = lshr i32 %523, 11
  %549 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %548, i1 true)
  %550 = xor i32 %549, 31
  %551 = insertelement <4 x i32> poison, i32 %550, i64 0
  %552 = shufflevector <4 x i32> %551, <4 x i32> poison, <4 x i32> zeroinitializer
  %553 = getelementptr inbounds nuw i8, ptr %513, i64 16
  %554 = lshr <4 x i32> %547, %552
  %555 = lshr <4 x i32> %546, %552
  %556 = add nuw <4 x i32> %554, splat (i32 1)
  %557 = add nuw <4 x i32> %555, splat (i32 1)
  store <4 x i32> %556, ptr %513, align 4, !tbaa !25
  store <4 x i32> %557, ptr %553, align 4, !tbaa !25
  %558 = getelementptr inbounds nuw i8, ptr %513, i64 32
  %559 = getelementptr inbounds nuw i8, ptr %513, i64 48
  %560 = lshr <4 x i32> %544, %552
  %561 = lshr <4 x i32> %542, %552
  %562 = add nuw <4 x i32> %560, splat (i32 1)
  %563 = add nuw <4 x i32> %561, splat (i32 1)
  store <4 x i32> %562, ptr %558, align 4, !tbaa !25
  store <4 x i32> %563, ptr %559, align 4, !tbaa !25
  %564 = getelementptr inbounds nuw i8, ptr %513, i64 64
  %565 = getelementptr inbounds nuw i8, ptr %513, i64 80
  %566 = lshr <4 x i32> %540, %552
  %567 = lshr <4 x i32> %538, %552
  %568 = add nuw <4 x i32> %566, splat (i32 1)
  %569 = add nuw <4 x i32> %567, splat (i32 1)
  store <4 x i32> %568, ptr %564, align 4, !tbaa !25
  store <4 x i32> %569, ptr %565, align 4, !tbaa !25
  %570 = getelementptr inbounds nuw i8, ptr %513, i64 96
  %571 = getelementptr inbounds nuw i8, ptr %513, i64 112
  %572 = lshr <4 x i32> %536, %552
  %573 = lshr <4 x i32> %534, %552
  %574 = add nuw <4 x i32> %572, splat (i32 1)
  %575 = add nuw <4 x i32> %573, splat (i32 1)
  store <4 x i32> %574, ptr %570, align 4, !tbaa !25
  store <4 x i32> %575, ptr %571, align 4, !tbaa !25
  %576 = getelementptr inbounds nuw i8, ptr %513, i64 144
  %577 = lshr <4 x i32> %532, %552
  %578 = lshr <4 x i32> %531, %552
  %579 = add nuw <4 x i32> %577, splat (i32 1)
  %580 = add nuw <4 x i32> %578, splat (i32 1)
  store <4 x i32> %579, ptr %515, align 4, !tbaa !25
  store <4 x i32> %580, ptr %576, align 4, !tbaa !25
  %581 = getelementptr inbounds nuw i8, ptr %513, i64 160
  %582 = getelementptr inbounds nuw i8, ptr %513, i64 176
  %583 = lshr <4 x i32> %529, %552
  %584 = lshr <4 x i32> %527, %552
  %585 = add nuw <4 x i32> %583, splat (i32 1)
  %586 = add nuw <4 x i32> %584, splat (i32 1)
  store <4 x i32> %585, ptr %581, align 4, !tbaa !25
  store <4 x i32> %586, ptr %582, align 4, !tbaa !25
  %587 = add <4 x i32> %557, %556
  %588 = add <4 x i32> %587, %562
  %589 = add <4 x i32> %588, %563
  %590 = add <4 x i32> %589, %568
  %591 = add <4 x i32> %590, %569
  %592 = add <4 x i32> %591, %574
  %593 = add <4 x i32> %592, %575
  %594 = add <4 x i32> %593, %579
  %595 = add <4 x i32> %594, %580
  %596 = add <4 x i32> %595, %585
  %597 = add <4 x i32> %596, %586
  %598 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %597)
  %599 = getelementptr inbounds nuw i8, ptr %513, i64 192
  %600 = shufflevector <20 x i32> %516, <20 x i32> poison, <4 x i32> <i32 16, i32 17, i32 18, i32 19>
  %601 = lshr <4 x i32> %600, %552
  %602 = add nuw <4 x i32> %601, splat (i32 1)
  store <4 x i32> %602, ptr %599, align 4, !tbaa !25
  %603 = lshr i32 %518, %550
  %604 = add nuw i32 %603, 1
  %605 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %602)
  %op.rdx46 = add i32 %605, %604
  %op.rdx47 = add i32 %op.rdx46, %598
  store i32 %604, ptr %517, align 4, !tbaa !25
  br label %606

606:                                              ; preds = %525, %510
  %607 = phi i32 [ %523, %510 ], [ %op.rdx47, %525 ]
  %608 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %607, ptr %608, align 8, !tbaa !75
  %609 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %610 = load ptr, ptr %609, align 8, !tbaa !52
  %611 = load <32 x i32>, ptr %610, align 4
  %612 = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %611)
  %613 = icmp ult i32 %612, 4096
  br i1 %613, label %654, label %614

614:                                              ; preds = %606
  %615 = bitcast <32 x i32> %611 to i1024
  %616 = lshr i1024 %615, 800
  %617 = trunc i1024 %616 to i128
  %618 = bitcast i128 %617 to <4 x i32>
  %619 = getelementptr inbounds nuw i8, ptr %610, i64 112
  %620 = getelementptr inbounds nuw i8, ptr %610, i64 104
  %621 = getelementptr inbounds nuw i8, ptr %610, i64 88
  %622 = getelementptr inbounds nuw i8, ptr %610, i64 72
  %623 = getelementptr inbounds nuw i8, ptr %610, i64 56
  %624 = getelementptr inbounds nuw i8, ptr %610, i64 40
  %625 = getelementptr inbounds nuw i8, ptr %610, i64 24
  %626 = getelementptr inbounds nuw i8, ptr %610, i64 8
  %627 = lshr i32 %612, 11
  %628 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %627, i1 true)
  %629 = xor i32 %628, 31
  %630 = shufflevector <32 x i32> %611, <32 x i32> poison, <28 x i32> <i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 poison, i32 poison, i32 poison, i32 poison>
  %631 = shufflevector <4 x i32> %618, <4 x i32> poison, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %632 = shufflevector <28 x i32> %630, <28 x i32> %631, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %633 = insertelement <28 x i32> poison, i32 %629, i64 0
  %634 = shufflevector <28 x i32> %633, <28 x i32> poison, <28 x i32> zeroinitializer
  %635 = lshr <28 x i32> %632, %634
  %636 = add nuw <28 x i32> %635, splat (i32 1)
  %637 = shufflevector <28 x i32> %636, <28 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  store <4 x i32> %637, ptr %626, align 4, !tbaa !25
  %638 = shufflevector <28 x i32> %636, <28 x i32> poison, <4 x i32> <i32 5, i32 6, i32 7, i32 8>
  store <4 x i32> %638, ptr %625, align 4, !tbaa !25
  %639 = shufflevector <28 x i32> %636, <28 x i32> poison, <4 x i32> <i32 9, i32 10, i32 11, i32 12>
  store <4 x i32> %639, ptr %624, align 4, !tbaa !25
  %640 = shufflevector <28 x i32> %636, <28 x i32> poison, <4 x i32> <i32 13, i32 14, i32 15, i32 16>
  store <4 x i32> %640, ptr %623, align 4, !tbaa !25
  %641 = shufflevector <28 x i32> %636, <28 x i32> poison, <4 x i32> <i32 17, i32 18, i32 19, i32 20>
  store <4 x i32> %641, ptr %622, align 4, !tbaa !25
  %642 = shufflevector <28 x i32> %636, <28 x i32> poison, <4 x i32> <i32 21, i32 22, i32 23, i32 24>
  store <4 x i32> %642, ptr %621, align 4, !tbaa !25
  %643 = shufflevector <28 x i32> %636, <28 x i32> poison, <2 x i32> <i32 25, i32 26>
  store <2 x i32> %643, ptr %620, align 4, !tbaa !25
  %644 = shufflevector <32 x i32> %611, <32 x i32> poison, <4 x i32> <i32 1, i32 29, i32 30, i32 31>
  %645 = insertelement <4 x i32> poison, i32 %629, i64 0
  %646 = shufflevector <4 x i32> %645, <4 x i32> poison, <4 x i32> zeroinitializer
  %647 = lshr <4 x i32> %644, %646
  %648 = add nuw <4 x i32> %647, splat (i32 1)
  %649 = shufflevector <4 x i32> %648, <4 x i32> poison, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %650 = shufflevector <28 x i32> %636, <28 x i32> %649, <2 x i32> <i32 0, i32 28>
  store <2 x i32> %650, ptr %610, align 4, !tbaa !25
  %651 = tail call i32 @llvm.vector.reduce.add.v28i32(<28 x i32> %636)
  %652 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %648)
  %op.rdx = add i32 %652, %651
  %653 = shufflevector <28 x i32> %636, <28 x i32> %649, <4 x i32> <i32 27, i32 29, i32 30, i32 31>
  store <4 x i32> %653, ptr %619, align 4, !tbaa !25
  br label %654

654:                                              ; preds = %614, %606, %204
  %655 = phi i32 [ 53, %204 ], [ %612, %606 ], [ %op.rdx, %614 ]
  %656 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %655, ptr %656, align 4, !tbaa !74
  br label %.loopexit

.loopexit:                                        ; preds = %148, %654
  %657 = phi i32 [ %655, %654 ], [ %172, %148 ]
  %658 = load i32, ptr %6, align 8, !tbaa !56
  %659 = icmp eq i32 %658, 2
  br i1 %659, label %678, label %660

660:                                              ; preds = %.loopexit
  %661 = icmp eq i32 %3, 0
  %662 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %663 = load i32, ptr %662, align 8, !tbaa !72
  %664 = add i32 %663, 1
  %665 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %664, i1 true)
  br i1 %661, label %672, label %666

666:                                              ; preds = %660
  %667 = xor i32 %665, 31
  %668 = shl nuw nsw i32 %667, 8
  %669 = shl i32 %664, 8
  %670 = lshr i32 %669, %667
  %671 = add i32 %668, %670
  br label %675

672:                                              ; preds = %660
  %673 = shl nuw nsw i32 %665, 8
  %674 = xor i32 %673, 7936
  br label %675

675:                                              ; preds = %672, %666
  %676 = phi i32 [ %671, %666 ], [ %674, %672 ]
  %677 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %676, ptr %677, align 8, !tbaa !57
  br label %678

678:                                              ; preds = %675, %.loopexit
  %679 = icmp eq i32 %3, 0
  %680 = load i32, ptr %10, align 4, !tbaa !73
  %681 = add i32 %680, 1
  %682 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %681, i1 true)
  br i1 %679, label %705, label %683

683:                                              ; preds = %678
  %684 = xor i32 %682, 31
  %685 = shl nuw nsw i32 %684, 8
  %686 = shl i32 %681, 8
  %687 = lshr i32 %686, %684
  %688 = add i32 %685, %687
  %689 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %690 = load i32, ptr %689, align 8, !tbaa !75
  %691 = add i32 %690, 1
  %692 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %691, i1 true)
  %693 = xor i32 %692, 31
  %694 = shl nuw nsw i32 %693, 8
  %695 = shl i32 %691, 8
  %696 = lshr i32 %695, %693
  %697 = add i32 %694, %696
  %698 = add i32 %657, 1
  %699 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %698, i1 true)
  %700 = xor i32 %699, 31
  %701 = shl nuw nsw i32 %700, 8
  %702 = shl i32 %698, 8
  %703 = lshr i32 %702, %700
  %704 = add i32 %701, %703
  br label %718

705:                                              ; preds = %678
  %706 = shl nuw nsw i32 %682, 8
  %707 = xor i32 %706, 7936
  %708 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %709 = load i32, ptr %708, align 8, !tbaa !75
  %710 = add i32 %709, 1
  %711 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %710, i1 true)
  %712 = shl nuw nsw i32 %711, 8
  %713 = xor i32 %712, 7936
  %714 = add i32 %657, 1
  %715 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %714, i1 true)
  %716 = shl nuw nsw i32 %715, 8
  %717 = xor i32 %716, 7936
  br label %718

718:                                              ; preds = %705, %683
  %719 = phi i32 [ %707, %705 ], [ %688, %683 ]
  %720 = phi i32 [ %713, %705 ], [ %697, %683 ]
  %721 = phi i32 [ %717, %705 ], [ %704, %683 ]
  %722 = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %719, ptr %722, align 4, !tbaa !40
  %723 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %720, ptr %723, align 8, !tbaa !53
  %724 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %721, ptr %724, align 4, !tbaa !51
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef nonnull captures(none) %0, ptr noundef captures(none) %1, ptr noundef nonnull captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 3, 5) %5) unnamed_addr #9 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = load i64, ptr %7, align 8, !tbaa !117
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %77, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !118
  %13 = icmp ult i64 %12, %8
  br i1 %13, label %14, label %77

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %16 = load i32, ptr %15, align 4, !tbaa !35
  %17 = icmp ult i32 %3, %16
  br i1 %17, label %45, label %18

18:                                               ; preds = %14
  %19 = icmp ugt i32 %3, %16
  br i1 %19, label %20, label %43

20:                                               ; preds = %18
  %21 = sub nuw i32 %3, %16
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = load i64, ptr %22, align 8, !tbaa !122
  %24 = trunc i64 %23 to i32
  %25 = add i32 %21, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %.loopexit13, label %.preheader.preheader

.preheader.preheader:                             ; preds = %20
  %27 = load ptr, ptr %0, align 8, !tbaa !134
  br label %.lr.ph

.lr.ph:                                           ; preds = %37, %.preheader.preheader
  %28 = phi i32 [ %38, %37 ], [ %25, %.preheader.preheader ]
  %29 = phi i64 [ %39, %37 ], [ %12, %.preheader.preheader ]
  %30 = getelementptr inbounds nuw [12 x i8], ptr %27, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 4
  %32 = load i32, ptr %31, align 4, !tbaa !25
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %34 = load i32, ptr %33, align 4, !tbaa !25
  %35 = add i32 %34, %32
  %36 = icmp ult i32 %28, %35
  br i1 %36, label %.loopexit, label %37

37:                                               ; preds = %.lr.ph
  %38 = sub nuw i32 %28, %35
  %39 = add i64 %29, 1
  store i64 %39, ptr %11, align 8, !tbaa !121
  %40 = icmp eq i32 %38, 0
  %exitcond.not = icmp eq i64 %39, %8
  %or.cond = or i1 %40, %exitcond.not
  br i1 %or.cond, label %.loopexit13, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph
  %41 = zext i32 %28 to i64
  store i64 %41, ptr %22, align 8, !tbaa !122
  %42 = icmp eq i64 %29, %8
  br i1 %42, label %.loopexit13, label %43

.loopexit13:                                      ; preds = %37, %.loopexit, %20
  store i64 0, ptr %22, align 8, !tbaa !122
  br label %43

43:                                               ; preds = %.loopexit13, %.loopexit, %18
  tail call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef %0, i32 noundef %3, i32 noundef %4)
  %44 = load i32, ptr %15, align 4, !tbaa !35
  br label %45

45:                                               ; preds = %43, %14
  %46 = phi i32 [ %44, %43 ], [ %16, %14 ]
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %48 = load i32, ptr %47, align 8, !tbaa !34
  %49 = sub i32 %46, %3
  %50 = icmp ult i32 %3, %48
  %51 = icmp uge i32 %3, %46
  %52 = icmp ult i32 %49, %5
  %53 = or i1 %51, %52
  %54 = select i1 %50, i1 true, i1 %53
  br i1 %54, label %77, label %55

55:                                               ; preds = %45
  %56 = load i32, ptr %2, align 4, !tbaa !25
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = add i32 %56, -1
  %60 = zext i32 %59 to i64
  %.split = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %60
  %61 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %62 = load i32, ptr %61, align 4, !tbaa !44
  %63 = icmp ugt i32 %49, %62
  %64 = icmp ult i32 %56, 4096
  %65 = and i1 %64, %63
  br i1 %65, label %66, label %77

66:                                               ; preds = %58, %55
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %68 = load i32, ptr %67, align 8, !tbaa !31
  %69 = add i32 %68, 3
  %70 = zext nneg i32 %56 to i64
  %.split12 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %70
  %71 = getelementptr inbounds nuw i8, ptr %.split12, i64 4
  store i32 %49, ptr %71, align 4, !tbaa !44
  %72 = load i32, ptr %2, align 4, !tbaa !25
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %73
  store i32 %69, ptr %74, align 4, !tbaa !46
  %75 = load i32, ptr %2, align 4, !tbaa !25
  %76 = add i32 %75, 1
  store i32 %76, ptr %2, align 4, !tbaa !25
  br label %77

77:                                               ; preds = %66, %58, %45, %10, %6
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i32 @ZSTD_btGetAllMatches_noDict_3(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %704, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %.preheader107, label %34

.preheader107:                                    ; preds = %17, %.preheader107
  %23 = phi i32 [ %27, %.preheader107 ], [ %13, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 %24
  %26 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %25, ptr noundef %4, i32 noundef %21, i32 noundef 3, i32 noundef 0)
  %27 = add i32 %26, %23
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %.preheader107, label %29, !llvm.loop !20

29:                                               ; preds = %.preheader107
  %30 = load ptr, ptr %10, align 8, !tbaa !18
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %18, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %21, %17 ]
  %36 = phi i64 [ %32, %29 ], [ %20, %17 ]
  %37 = phi ptr [ %30, %29 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %43 = load i32, ptr %42, align 4, !tbaa !108
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !107
  %46 = load i32, ptr %3, align 1, !tbaa !25
  %47 = mul i32 %46, -1640531535
  %48 = sub i32 32, %43
  %49 = lshr i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %54 = load ptr, ptr %53, align 8, !tbaa !109
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %56 = load i32, ptr %55, align 4, !tbaa !110
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %61 = load i32, ptr %60, align 8, !tbaa !22
  %62 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %59)
  %63 = load i32, ptr %38, align 8, !tbaa !112
  %64 = getelementptr i8, ptr %1, i64 28
  %65 = load i32, ptr %64, align 4, !tbaa !106
  %66 = getelementptr i8, ptr %1, i64 40
  %67 = load i32, ptr %66, align 8, !tbaa !113
  %68 = shl nuw i32 1, %63
  %69 = sub i32 %35, %65
  %70 = icmp ugt i32 %69, %68
  %71 = sub i32 %35, %68
  %72 = icmp eq i32 %67, 0
  %73 = select i1 %72, i1 %70, i1 false
  %74 = select i1 %73, i32 %71, i32 %65
  %75 = tail call i32 @llvm.umax.i32(i32 %74, i32 1)
  %76 = and i32 %35, %59
  %77 = shl nuw i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 4
  %81 = add i32 %35, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %83 = load i32, ptr %82, align 4, !tbaa !114
  %84 = shl nuw i32 1, %83
  %85 = add i32 %7, -1
  %86 = zext i32 %85 to i64
  %87 = icmp ult i32 %6, -3
  br i1 %87, label %88, label %402

88:                                               ; preds = %34
  %89 = sub i32 %35, %61
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 3
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
  %102 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %96
  %103 = load i32, ptr %102, align 4, !tbaa !25
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i32 [ %100, %98 ], [ %103, %101 ]
  %106 = add i32 %105, -1
  %107 = icmp ult i32 %106, %89
  br i1 %107, label %108, label %192

108:                                              ; preds = %104
  %109 = sub i32 %35, %105
  %110 = icmp uge i32 %109, %74
  %111 = zext i32 %105 to i64
  %112 = sub nsw i64 0, %111
  %113 = getelementptr inbounds i8, ptr %3, i64 %112
  %114 = load i32, ptr %113, align 1, !tbaa !25
  %115 = xor i32 %114, %46
  %116 = and i32 %115, 16777215
  %117 = icmp eq i32 %116, 0
  %118 = and i1 %110, %117
  br i1 %118, label %119, label %192

119:                                              ; preds = %108
  %120 = getelementptr inbounds i8, ptr %90, i64 %112
  br i1 %92, label %121, label %.loopexit106

121:                                              ; preds = %119
  %122 = load i64, ptr %120, align 1, !tbaa !30
  %123 = load i64, ptr %90, align 1, !tbaa !30
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %.preheader105, label %125

125:                                              ; preds = %121
  %126 = xor i64 %123, %122
  %127 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %126, i1 true)
  %128 = lshr i64 %127, 3
  br label %180

.preheader105:                                    ; preds = %121, %134
  %129 = phi ptr [ %132, %134 ], [ %120, %121 ]
  %130 = phi ptr [ %131, %134 ], [ %90, %121 ]
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %132 = getelementptr inbounds nuw i8, ptr %129, i64 8
  %133 = icmp ult ptr %131, %91
  br i1 %133, label %134, label %.loopexit106

134:                                              ; preds = %.preheader105
  %135 = load i64, ptr %132, align 1, !tbaa !30
  %136 = load i64, ptr %131, align 1, !tbaa !30
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %.preheader105, label %138

138:                                              ; preds = %134
  %139 = xor i64 %136, %135
  %140 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %139, i1 true)
  %141 = lshr i64 %140, 3
  %142 = getelementptr inbounds nuw i8, ptr %131, i64 %141
  %143 = ptrtoint ptr %142 to i64
  %144 = sub i64 %143, %95
  br label %180

.loopexit106:                                     ; preds = %.preheader105, %119
  %145 = phi ptr [ %120, %119 ], [ %132, %.preheader105 ]
  %146 = phi ptr [ %90, %119 ], [ %131, %.preheader105 ]
  %147 = icmp ult ptr %146, %93
  br i1 %147, label %148, label %155

148:                                              ; preds = %.loopexit106
  %149 = load i32, ptr %145, align 1, !tbaa !25
  %150 = load i32, ptr %146, align 1, !tbaa !25
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = getelementptr inbounds nuw i8, ptr %146, i64 4
  %154 = getelementptr inbounds nuw i8, ptr %145, i64 4
  br label %155

155:                                              ; preds = %152, %148, %.loopexit106
  %156 = phi ptr [ %154, %152 ], [ %145, %148 ], [ %145, %.loopexit106 ]
  %157 = phi ptr [ %153, %152 ], [ %146, %148 ], [ %146, %.loopexit106 ]
  %158 = icmp ult ptr %157, %94
  br i1 %158, label %159, label %166

159:                                              ; preds = %155
  %160 = load i16, ptr %156, align 1, !tbaa !115
  %161 = load i16, ptr %157, align 1, !tbaa !115
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

180:                                              ; preds = %176, %138, %125
  %181 = phi i64 [ %179, %176 ], [ %128, %125 ], [ %144, %138 ]
  %182 = trunc i64 %181 to i32
  %183 = add i32 %182, 3
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
  br i1 %191, label %192, label %702

192:                                              ; preds = %185, %180, %108, %104
  %193 = phi i32 [ 1, %185 ], [ 0, %180 ], [ 0, %108 ], [ 0, %104 ]
  %194 = phi i64 [ %186, %185 ], [ %86, %180 ], [ %86, %108 ], [ %86, %104 ]
  %195 = add nuw nsw i64 %96, 1
  %196 = icmp eq i64 %195, 3
  br i1 %196, label %200, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %195
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
  %208 = sub i32 %35, %204
  %209 = icmp uge i32 %208, %74
  %210 = load i32, ptr %3, align 1, !tbaa !25
  %211 = zext i32 %204 to i64
  %212 = sub nsw i64 0, %211
  %213 = getelementptr inbounds i8, ptr %3, i64 %212
  %214 = load i32, ptr %213, align 1, !tbaa !25
  %215 = xor i32 %214, %210
  %216 = and i32 %215, 16777215
  %217 = icmp eq i32 %216, 0
  %218 = and i1 %209, %217
  br i1 %218, label %219, label %284

219:                                              ; preds = %207
  %220 = getelementptr inbounds i8, ptr %90, i64 %212
  br i1 %92, label %221, label %.loopexit104

221:                                              ; preds = %219
  %222 = load i64, ptr %220, align 1, !tbaa !30
  %223 = load i64, ptr %90, align 1, !tbaa !30
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %.preheader103, label %225

225:                                              ; preds = %221
  %226 = xor i64 %223, %222
  %227 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %226, i1 true)
  %228 = lshr i64 %227, 3
  br label %280

.preheader103:                                    ; preds = %221, %269
  %229 = phi ptr [ %232, %269 ], [ %220, %221 ]
  %230 = phi ptr [ %231, %269 ], [ %90, %221 ]
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 8
  %232 = getelementptr inbounds nuw i8, ptr %229, i64 8
  %233 = icmp ult ptr %231, %91
  br i1 %233, label %269, label %.loopexit104

.loopexit104:                                     ; preds = %.preheader103, %219
  %234 = phi ptr [ %220, %219 ], [ %232, %.preheader103 ]
  %235 = phi ptr [ %90, %219 ], [ %231, %.preheader103 ]
  %236 = icmp ult ptr %235, %93
  br i1 %236, label %237, label %244

237:                                              ; preds = %.loopexit104
  %238 = load i32, ptr %234, align 1, !tbaa !25
  %239 = load i32, ptr %235, align 1, !tbaa !25
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = getelementptr inbounds nuw i8, ptr %235, i64 4
  %243 = getelementptr inbounds nuw i8, ptr %234, i64 4
  br label %244

244:                                              ; preds = %241, %237, %.loopexit104
  %245 = phi ptr [ %243, %241 ], [ %234, %237 ], [ %234, %.loopexit104 ]
  %246 = phi ptr [ %242, %241 ], [ %235, %237 ], [ %235, %.loopexit104 ]
  %247 = icmp ult ptr %246, %94
  br i1 %247, label %248, label %255

248:                                              ; preds = %244
  %249 = load i16, ptr %245, align 1, !tbaa !115
  %250 = load i16, ptr %246, align 1, !tbaa !115
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

269:                                              ; preds = %.preheader103
  %270 = load i64, ptr %232, align 1, !tbaa !30
  %271 = load i64, ptr %231, align 1, !tbaa !30
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %.preheader103, label %273

273:                                              ; preds = %269
  %274 = xor i64 %271, %270
  %275 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %274, i1 true)
  %276 = lshr i64 %275, 3
  %277 = getelementptr inbounds nuw i8, ptr %231, i64 %276
  %278 = ptrtoint ptr %277 to i64
  %279 = sub i64 %278, %95
  br label %280

280:                                              ; preds = %273, %265, %225
  %281 = phi i64 [ %268, %265 ], [ %228, %225 ], [ %279, %273 ]
  %282 = trunc i64 %281 to i32
  %283 = add i32 %282, 3
  br label %284

284:                                              ; preds = %280, %207, %203
  %285 = phi i32 [ %283, %280 ], [ 0, %207 ], [ 0, %203 ]
  %286 = zext i32 %285 to i64
  %287 = icmp samesign ult i64 %194, %286
  br i1 %287, label %288, label %297

288:                                              ; preds = %284
  %289 = zext nneg i32 %193 to i64
  %290 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %289
  store i32 2, ptr %290, align 4, !tbaa !46
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 4
  store i32 %285, ptr %291, align 4, !tbaa !44
  %292 = add nuw nsw i32 %193, 1
  %293 = icmp ule i32 %285, %41
  %294 = getelementptr inbounds nuw i8, ptr %3, i64 %286
  %295 = icmp ne ptr %294, %4
  %296 = and i1 %293, %295
  br i1 %296, label %297, label %702

297:                                              ; preds = %288, %284
  %298 = phi i32 [ %292, %288 ], [ %193, %284 ]
  %299 = phi i64 [ %286, %288 ], [ %194, %284 ]
  %300 = add nuw nsw i64 %96, 2
  %301 = icmp eq i64 %300, 3
  br i1 %301, label %305, label %302

302:                                              ; preds = %297
  %303 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %300
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
  %313 = sub i32 %35, %309
  %314 = icmp uge i32 %313, %74
  %315 = load i32, ptr %3, align 1, !tbaa !25
  %316 = zext i32 %309 to i64
  %317 = sub nsw i64 0, %316
  %318 = getelementptr inbounds i8, ptr %3, i64 %317
  %319 = load i32, ptr %318, align 1, !tbaa !25
  %320 = xor i32 %319, %315
  %321 = and i32 %320, 16777215
  %322 = icmp eq i32 %321, 0
  %323 = and i1 %314, %322
  br i1 %323, label %324, label %389

324:                                              ; preds = %312
  %325 = getelementptr inbounds i8, ptr %90, i64 %317
  br i1 %92, label %326, label %.loopexit102

326:                                              ; preds = %324
  %327 = load i64, ptr %325, align 1, !tbaa !30
  %328 = load i64, ptr %90, align 1, !tbaa !30
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %.preheader101, label %330

330:                                              ; preds = %326
  %331 = xor i64 %328, %327
  %332 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %331, i1 true)
  %333 = lshr i64 %332, 3
  br label %385

.preheader101:                                    ; preds = %326, %374
  %334 = phi ptr [ %337, %374 ], [ %325, %326 ]
  %335 = phi ptr [ %336, %374 ], [ %90, %326 ]
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 8
  %337 = getelementptr inbounds nuw i8, ptr %334, i64 8
  %338 = icmp ult ptr %336, %91
  br i1 %338, label %374, label %.loopexit102

.loopexit102:                                     ; preds = %.preheader101, %324
  %339 = phi ptr [ %325, %324 ], [ %337, %.preheader101 ]
  %340 = phi ptr [ %90, %324 ], [ %336, %.preheader101 ]
  %341 = icmp ult ptr %340, %93
  br i1 %341, label %342, label %349

342:                                              ; preds = %.loopexit102
  %343 = load i32, ptr %339, align 1, !tbaa !25
  %344 = load i32, ptr %340, align 1, !tbaa !25
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %342
  %347 = getelementptr inbounds nuw i8, ptr %340, i64 4
  %348 = getelementptr inbounds nuw i8, ptr %339, i64 4
  br label %349

349:                                              ; preds = %346, %342, %.loopexit102
  %350 = phi ptr [ %348, %346 ], [ %339, %342 ], [ %339, %.loopexit102 ]
  %351 = phi ptr [ %347, %346 ], [ %340, %342 ], [ %340, %.loopexit102 ]
  %352 = icmp ult ptr %351, %94
  br i1 %352, label %353, label %360

353:                                              ; preds = %349
  %354 = load i16, ptr %350, align 1, !tbaa !115
  %355 = load i16, ptr %351, align 1, !tbaa !115
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

374:                                              ; preds = %.preheader101
  %375 = load i64, ptr %337, align 1, !tbaa !30
  %376 = load i64, ptr %336, align 1, !tbaa !30
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %.preheader101, label %378

378:                                              ; preds = %374
  %379 = xor i64 %376, %375
  %380 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %379, i1 true)
  %381 = lshr i64 %380, 3
  %382 = getelementptr inbounds nuw i8, ptr %336, i64 %381
  %383 = ptrtoint ptr %382 to i64
  %384 = sub i64 %383, %95
  br label %385

385:                                              ; preds = %378, %370, %330
  %386 = phi i64 [ %373, %370 ], [ %333, %330 ], [ %384, %378 ]
  %387 = trunc i64 %386 to i32
  %388 = add i32 %387, 3
  br label %389

389:                                              ; preds = %385, %312, %308
  %390 = phi i32 [ %388, %385 ], [ 0, %312 ], [ 0, %308 ]
  %391 = zext i32 %390 to i64
  %392 = icmp samesign ult i64 %299, %391
  br i1 %392, label %393, label %402

393:                                              ; preds = %389
  %394 = zext nneg i32 %298 to i64
  %395 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %394
  store i32 3, ptr %395, align 4, !tbaa !46
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 4
  store i32 %390, ptr %396, align 4, !tbaa !44
  %397 = add nuw nsw i32 %298, 1
  %398 = icmp ule i32 %390, %41
  %399 = getelementptr inbounds nuw i8, ptr %3, i64 %391
  %400 = icmp ne ptr %399, %4
  %401 = and i1 %398, %400
  br i1 %401, label %402, label %702

402:                                              ; preds = %393, %389, %34
  %403 = phi i64 [ %86, %34 ], [ %391, %393 ], [ %299, %389 ]
  %404 = phi i32 [ 0, %34 ], [ %397, %393 ], [ %298, %389 ]
  %405 = icmp samesign ult i64 %403, 3
  br i1 %405, label %406, label %559

406:                                              ; preds = %402
  %407 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %408 = load ptr, ptr %407, align 8, !tbaa !135
  %409 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %410 = load i32, ptr %409, align 8, !tbaa !136
  %411 = load i32, ptr %2, align 4, !tbaa !25
  %412 = load i32, ptr %3, align 1, !tbaa !25
  %413 = sub i32 32, %410
  %414 = icmp ult i32 %411, %35
  br i1 %414, label %415, label %.loopexit98

415:                                              ; preds = %406
  %416 = zext i32 %411 to i64
  %417 = and i64 %36, 4294967295
  %418 = sub i64 %36, %416
  %419 = and i64 %418, 3
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %.loopexit100, label %.preheader99

.preheader99:                                     ; preds = %415, %.preheader99
  %421 = phi i64 [ %430, %.preheader99 ], [ %416, %415 ]
  %422 = phi i64 [ %431, %.preheader99 ], [ 0, %415 ]
  %423 = getelementptr inbounds nuw i8, ptr %37, i64 %421
  %424 = load i32, ptr %423, align 1, !tbaa !25
  %425 = mul i32 %424, 900185344
  %426 = lshr i32 %425, %413
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds nuw [4 x i8], ptr %408, i64 %427
  %429 = trunc nuw i64 %421 to i32
  store i32 %429, ptr %428, align 4, !tbaa !25
  %430 = add nuw nsw i64 %421, 1
  %431 = add nuw nsw i64 %422, 1
  %432 = icmp eq i64 %431, %419
  br i1 %432, label %.loopexit100, label %.preheader99, !llvm.loop !137

.loopexit100:                                     ; preds = %.preheader99, %415
  %433 = phi i64 [ %416, %415 ], [ %430, %.preheader99 ]
  %434 = sub nsw i64 %416, %417
  %435 = icmp ugt i64 %434, -4
  br i1 %435, label %.loopexit98, label %.preheader97

.preheader97:                                     ; preds = %.loopexit100, %.preheader97
  %436 = phi i64 [ %468, %.preheader97 ], [ %433, %.loopexit100 ]
  %437 = getelementptr inbounds nuw i8, ptr %37, i64 %436
  %438 = load i32, ptr %437, align 1, !tbaa !25
  %439 = mul i32 %438, 900185344
  %440 = lshr i32 %439, %413
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds nuw [4 x i8], ptr %408, i64 %441
  %443 = trunc nuw i64 %436 to i32
  store i32 %443, ptr %442, align 4, !tbaa !25
  %444 = add nuw nsw i64 %436, 1
  %445 = getelementptr inbounds nuw i8, ptr %37, i64 %444
  %446 = load i32, ptr %445, align 1, !tbaa !25
  %447 = mul i32 %446, 900185344
  %448 = lshr i32 %447, %413
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds nuw [4 x i8], ptr %408, i64 %449
  %451 = trunc nuw i64 %444 to i32
  store i32 %451, ptr %450, align 4, !tbaa !25
  %452 = add nuw nsw i64 %436, 2
  %453 = getelementptr inbounds nuw i8, ptr %37, i64 %452
  %454 = load i32, ptr %453, align 1, !tbaa !25
  %455 = mul i32 %454, 900185344
  %456 = lshr i32 %455, %413
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds nuw [4 x i8], ptr %408, i64 %457
  %459 = trunc nuw i64 %452 to i32
  store i32 %459, ptr %458, align 4, !tbaa !25
  %460 = add nuw nsw i64 %436, 3
  %461 = getelementptr inbounds nuw i8, ptr %37, i64 %460
  %462 = load i32, ptr %461, align 1, !tbaa !25
  %463 = mul i32 %462, 900185344
  %464 = lshr i32 %463, %413
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds nuw [4 x i8], ptr %408, i64 %465
  %467 = trunc nuw i64 %460 to i32
  store i32 %467, ptr %466, align 4, !tbaa !25
  %468 = add nuw nsw i64 %436, 4
  %469 = icmp eq i64 %468, %417
  br i1 %469, label %.loopexit98, label %.preheader97, !llvm.loop !138

.loopexit98:                                      ; preds = %.preheader97, %.loopexit100, %406
  %470 = mul i32 %412, 900185344
  %471 = lshr i32 %470, %413
  %472 = zext i32 %471 to i64
  store i32 %35, ptr %2, align 4, !tbaa !25
  %473 = getelementptr inbounds nuw [4 x i8], ptr %408, i64 %472
  %474 = load i32, ptr %473, align 4, !tbaa !25
  %475 = icmp uge i32 %474, %75
  %476 = sub i32 %35, %474
  %477 = icmp ult i32 %476, 262144
  %478 = and i1 %475, %477
  br i1 %478, label %479, label %559

479:                                              ; preds = %.loopexit98
  %480 = zext i32 %474 to i64
  %481 = getelementptr inbounds nuw i8, ptr %37, i64 %480
  %482 = getelementptr inbounds i8, ptr %4, i64 -7
  %483 = icmp ult ptr %3, %482
  br i1 %483, label %484, label %.loopexit96

484:                                              ; preds = %479
  %485 = load i64, ptr %481, align 1, !tbaa !30
  %486 = load i64, ptr %3, align 1, !tbaa !30
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %.preheader95, label %488

488:                                              ; preds = %484
  %489 = xor i64 %486, %485
  %490 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %489, i1 true)
  %491 = lshr i64 %490, 3
  br label %545

.preheader95:                                     ; preds = %484, %497
  %492 = phi ptr [ %495, %497 ], [ %481, %484 ]
  %493 = phi ptr [ %494, %497 ], [ %3, %484 ]
  %494 = getelementptr inbounds nuw i8, ptr %493, i64 8
  %495 = getelementptr inbounds nuw i8, ptr %492, i64 8
  %496 = icmp ult ptr %494, %482
  br i1 %496, label %497, label %.loopexit96

497:                                              ; preds = %.preheader95
  %498 = load i64, ptr %495, align 1, !tbaa !30
  %499 = load i64, ptr %494, align 1, !tbaa !30
  %500 = icmp eq i64 %498, %499
  br i1 %500, label %.preheader95, label %501

501:                                              ; preds = %497
  %502 = xor i64 %499, %498
  %503 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %502, i1 true)
  %504 = lshr i64 %503, 3
  %505 = getelementptr inbounds nuw i8, ptr %494, i64 %504
  %506 = ptrtoint ptr %505 to i64
  %507 = sub i64 %506, %18
  br label %545

.loopexit96:                                      ; preds = %.preheader95, %479
  %508 = phi ptr [ %481, %479 ], [ %495, %.preheader95 ]
  %509 = phi ptr [ %3, %479 ], [ %494, %.preheader95 ]
  %510 = getelementptr inbounds i8, ptr %4, i64 -3
  %511 = icmp ult ptr %509, %510
  br i1 %511, label %512, label %519

512:                                              ; preds = %.loopexit96
  %513 = load i32, ptr %508, align 1, !tbaa !25
  %514 = load i32, ptr %509, align 1, !tbaa !25
  %515 = icmp eq i32 %513, %514
  br i1 %515, label %516, label %519

516:                                              ; preds = %512
  %517 = getelementptr inbounds nuw i8, ptr %509, i64 4
  %518 = getelementptr inbounds nuw i8, ptr %508, i64 4
  br label %519

519:                                              ; preds = %516, %512, %.loopexit96
  %520 = phi ptr [ %518, %516 ], [ %508, %512 ], [ %508, %.loopexit96 ]
  %521 = phi ptr [ %517, %516 ], [ %509, %512 ], [ %509, %.loopexit96 ]
  %522 = getelementptr inbounds i8, ptr %4, i64 -1
  %523 = icmp ult ptr %521, %522
  br i1 %523, label %524, label %531

524:                                              ; preds = %519
  %525 = load i16, ptr %520, align 1, !tbaa !115
  %526 = load i16, ptr %521, align 1, !tbaa !115
  %527 = icmp eq i16 %525, %526
  br i1 %527, label %528, label %531

528:                                              ; preds = %524
  %529 = getelementptr inbounds nuw i8, ptr %521, i64 2
  %530 = getelementptr inbounds nuw i8, ptr %520, i64 2
  br label %531

531:                                              ; preds = %528, %524, %519
  %532 = phi ptr [ %530, %528 ], [ %520, %524 ], [ %520, %519 ]
  %533 = phi ptr [ %529, %528 ], [ %521, %524 ], [ %521, %519 ]
  %534 = icmp ult ptr %533, %4
  br i1 %534, label %535, label %541

535:                                              ; preds = %531
  %536 = load i8, ptr %532, align 1, !tbaa !42
  %537 = load i8, ptr %533, align 1, !tbaa !42
  %538 = icmp eq i8 %536, %537
  %539 = zext i1 %538 to i64
  %540 = getelementptr inbounds nuw i8, ptr %533, i64 %539
  br label %541

541:                                              ; preds = %535, %531
  %542 = phi ptr [ %533, %531 ], [ %540, %535 ]
  %543 = ptrtoint ptr %542 to i64
  %544 = sub i64 %543, %18
  br label %545

545:                                              ; preds = %541, %501, %488
  %546 = phi i64 [ %544, %541 ], [ %491, %488 ], [ %507, %501 ]
  %547 = icmp ugt i64 %546, 2
  br i1 %547, label %548, label %559

548:                                              ; preds = %545
  %549 = add nuw nsw i32 %476, 3
  store i32 %549, ptr %0, align 4, !tbaa !46
  %550 = trunc i64 %546 to i32
  %551 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %550, ptr %551, align 4, !tbaa !44
  %552 = zext nneg i32 %41 to i64
  %553 = icmp ugt i64 %546, %552
  %554 = getelementptr inbounds nuw i8, ptr %3, i64 %546
  %555 = icmp eq ptr %554, %4
  %556 = or i1 %553, %555
  br i1 %556, label %557, label %559

557:                                              ; preds = %548
  %558 = add i32 %35, 1
  br label %699

559:                                              ; preds = %548, %545, %.loopexit98, %402
  %560 = phi i64 [ %403, %402 ], [ %403, %545 ], [ %546, %548 ], [ %403, %.loopexit98 ]
  %561 = phi i32 [ %404, %402 ], [ %404, %545 ], [ 1, %548 ], [ %404, %.loopexit98 ]
  store i32 %35, ptr %51, align 4, !tbaa !25
  %562 = icmp ult i32 %52, %75
  br i1 %562, label %.loopexit91, label %563

563:                                              ; preds = %559
  %564 = getelementptr inbounds i8, ptr %4, i64 -7
  %565 = getelementptr inbounds i8, ptr %4, i64 -3
  %566 = getelementptr inbounds i8, ptr %4, i64 -1
  %567 = add i32 %35, 3
  br label %568

568:                                              ; preds = %683, %563
  %569 = phi i32 [ %52, %563 ], [ %689, %683 ]
  %570 = phi i64 [ 0, %563 ], [ %687, %683 ]
  %571 = phi i64 [ 0, %563 ], [ %686, %683 ]
  %572 = phi ptr [ %79, %563 ], [ %685, %683 ]
  %573 = phi ptr [ %80, %563 ], [ %684, %683 ]
  %574 = phi i32 [ %81, %563 ], [ %672, %683 ]
  %575 = phi i32 [ %561, %563 ], [ %671, %683 ]
  %576 = phi i32 [ %84, %563 ], [ %690, %683 ]
  %577 = phi i64 [ %560, %563 ], [ %670, %683 ]
  %578 = and i32 %569, %59
  %579 = shl nuw i32 %578, 1
  %580 = zext i32 %579 to i64
  %581 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %580
  %582 = tail call i64 @llvm.umin.i64(i64 %570, i64 %571)
  %583 = zext i32 %569 to i64
  %584 = getelementptr inbounds nuw i8, ptr %37, i64 %583
  %585 = getelementptr inbounds nuw i8, ptr %3, i64 %582
  %586 = getelementptr inbounds nuw i8, ptr %584, i64 %582
  %587 = icmp ult ptr %585, %564
  br i1 %587, label %588, label %.loopexit

588:                                              ; preds = %568
  %589 = load i64, ptr %586, align 1, !tbaa !30
  %590 = load i64, ptr %585, align 1, !tbaa !30
  %591 = icmp eq i64 %589, %590
  br i1 %591, label %.preheader, label %592

592:                                              ; preds = %588
  %593 = xor i64 %590, %589
  %594 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %593, i1 true)
  %595 = lshr i64 %594, 3
  br label %649

.preheader:                                       ; preds = %588, %601
  %596 = phi ptr [ %599, %601 ], [ %586, %588 ]
  %597 = phi ptr [ %598, %601 ], [ %585, %588 ]
  %598 = getelementptr inbounds nuw i8, ptr %597, i64 8
  %599 = getelementptr inbounds nuw i8, ptr %596, i64 8
  %600 = icmp ult ptr %598, %564
  br i1 %600, label %601, label %.loopexit

601:                                              ; preds = %.preheader
  %602 = load i64, ptr %599, align 1, !tbaa !30
  %603 = load i64, ptr %598, align 1, !tbaa !30
  %604 = icmp eq i64 %602, %603
  br i1 %604, label %.preheader, label %605

605:                                              ; preds = %601
  %606 = xor i64 %603, %602
  %607 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %606, i1 true)
  %608 = lshr i64 %607, 3
  %609 = getelementptr inbounds nuw i8, ptr %598, i64 %608
  %610 = ptrtoint ptr %609 to i64
  %611 = ptrtoint ptr %585 to i64
  %612 = sub i64 %610, %611
  br label %649

.loopexit:                                        ; preds = %.preheader, %568
  %613 = phi ptr [ %586, %568 ], [ %599, %.preheader ]
  %614 = phi ptr [ %585, %568 ], [ %598, %.preheader ]
  %615 = icmp ult ptr %614, %565
  br i1 %615, label %616, label %623

616:                                              ; preds = %.loopexit
  %617 = load i32, ptr %613, align 1, !tbaa !25
  %618 = load i32, ptr %614, align 1, !tbaa !25
  %619 = icmp eq i32 %617, %618
  br i1 %619, label %620, label %623

620:                                              ; preds = %616
  %621 = getelementptr inbounds nuw i8, ptr %614, i64 4
  %622 = getelementptr inbounds nuw i8, ptr %613, i64 4
  br label %623

623:                                              ; preds = %620, %616, %.loopexit
  %624 = phi ptr [ %622, %620 ], [ %613, %616 ], [ %613, %.loopexit ]
  %625 = phi ptr [ %621, %620 ], [ %614, %616 ], [ %614, %.loopexit ]
  %626 = icmp ult ptr %625, %566
  br i1 %626, label %627, label %634

627:                                              ; preds = %623
  %628 = load i16, ptr %624, align 1, !tbaa !115
  %629 = load i16, ptr %625, align 1, !tbaa !115
  %630 = icmp eq i16 %628, %629
  br i1 %630, label %631, label %634

631:                                              ; preds = %627
  %632 = getelementptr inbounds nuw i8, ptr %625, i64 2
  %633 = getelementptr inbounds nuw i8, ptr %624, i64 2
  br label %634

634:                                              ; preds = %631, %627, %623
  %635 = phi ptr [ %633, %631 ], [ %624, %627 ], [ %624, %623 ]
  %636 = phi ptr [ %632, %631 ], [ %625, %627 ], [ %625, %623 ]
  %637 = icmp ult ptr %636, %4
  br i1 %637, label %638, label %644

638:                                              ; preds = %634
  %639 = load i8, ptr %635, align 1, !tbaa !42
  %640 = load i8, ptr %636, align 1, !tbaa !42
  %641 = icmp eq i8 %639, %640
  %642 = zext i1 %641 to i64
  %643 = getelementptr inbounds nuw i8, ptr %636, i64 %642
  br label %644

644:                                              ; preds = %638, %634
  %645 = phi ptr [ %636, %634 ], [ %643, %638 ]
  %646 = ptrtoint ptr %645 to i64
  %647 = ptrtoint ptr %585 to i64
  %648 = sub i64 %646, %647
  br label %649

649:                                              ; preds = %644, %605, %592
  %650 = phi i64 [ %648, %644 ], [ %595, %592 ], [ %612, %605 ]
  %651 = add i64 %650, %582
  %652 = icmp ugt i64 %651, %577
  br i1 %652, label %653, label %669

653:                                              ; preds = %649
  %654 = sub i32 %574, %569
  %655 = zext i32 %654 to i64
  %656 = icmp ugt i64 %651, %655
  %657 = trunc i64 %651 to i32
  %658 = add i32 %569, %657
  %659 = select i1 %656, i32 %658, i32 %574
  %660 = sub i32 %567, %569
  %661 = zext i32 %575 to i64
  %662 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %661
  store i32 %660, ptr %662, align 4, !tbaa !46
  %663 = getelementptr inbounds nuw i8, ptr %662, i64 4
  store i32 %657, ptr %663, align 4, !tbaa !44
  %664 = add i32 %575, 1
  %665 = icmp ugt i64 %651, 4096
  %666 = getelementptr inbounds nuw i8, ptr %3, i64 %651
  %667 = icmp eq ptr %666, %4
  %668 = or i1 %665, %667
  br i1 %668, label %.loopexit91, label %669

669:                                              ; preds = %653, %649
  %670 = phi i64 [ %651, %653 ], [ %577, %649 ]
  %671 = phi i32 [ %664, %653 ], [ %575, %649 ]
  %672 = phi i32 [ %659, %653 ], [ %574, %649 ]
  %673 = getelementptr inbounds nuw i8, ptr %584, i64 %651
  %674 = load i8, ptr %673, align 1, !tbaa !42
  %675 = getelementptr inbounds nuw i8, ptr %3, i64 %651
  %676 = load i8, ptr %675, align 1, !tbaa !42
  %677 = icmp ult i8 %674, %676
  %678 = icmp ugt i32 %569, %62
  br i1 %677, label %679, label %682

679:                                              ; preds = %669
  store i32 %569, ptr %572, align 4, !tbaa !25
  br i1 %678, label %680, label %.loopexit91

680:                                              ; preds = %679
  %681 = getelementptr inbounds nuw i8, ptr %581, i64 4
  br label %683

682:                                              ; preds = %669
  store i32 %569, ptr %573, align 4, !tbaa !25
  br i1 %678, label %683, label %.loopexit91

683:                                              ; preds = %682, %680
  %684 = phi ptr [ %573, %680 ], [ %581, %682 ]
  %685 = phi ptr [ %681, %680 ], [ %572, %682 ]
  %686 = phi i64 [ %571, %680 ], [ %651, %682 ]
  %687 = phi i64 [ %651, %680 ], [ %570, %682 ]
  %688 = phi ptr [ %681, %680 ], [ %581, %682 ]
  %689 = load i32, ptr %688, align 4, !tbaa !25
  %690 = add i32 %576, -1
  %691 = icmp ne i32 %690, 0
  %692 = icmp uge i32 %689, %75
  %693 = select i1 %691, i1 %692, i1 false
  br i1 %693, label %568, label %.loopexit91, !llvm.loop !139

.loopexit91:                                      ; preds = %683, %682, %679, %653, %559
  %694 = phi i32 [ %561, %559 ], [ %664, %653 ], [ %671, %682 ], [ %671, %679 ], [ %671, %683 ]
  %695 = phi i32 [ %81, %559 ], [ %659, %653 ], [ %672, %682 ], [ %672, %679 ], [ %672, %683 ]
  %696 = phi ptr [ %80, %559 ], [ %573, %653 ], [ %9, %682 ], [ %573, %679 ], [ %684, %683 ]
  %697 = phi ptr [ %79, %559 ], [ %572, %653 ], [ %572, %682 ], [ %9, %679 ], [ %685, %683 ]
  store i32 0, ptr %696, align 4, !tbaa !25
  store i32 0, ptr %697, align 4, !tbaa !25
  %698 = add i32 %695, -8
  br label %699

699:                                              ; preds = %.loopexit91, %557
  %700 = phi i32 [ %558, %557 ], [ %698, %.loopexit91 ]
  %701 = phi i32 [ 1, %557 ], [ %694, %.loopexit91 ]
  store i32 %700, ptr %12, align 4, !tbaa !19
  br label %702

702:                                              ; preds = %699, %393, %288, %185
  %703 = phi i32 [ 1, %185 ], [ %292, %288 ], [ %397, %393 ], [ %701, %699 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %704

704:                                              ; preds = %702, %8
  %705 = phi i32 [ %703, %702 ], [ 0, %8 ]
  ret i32 %705
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i32 @ZSTD_btGetAllMatches_noDict_4(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %537, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %.preheader82, label %34

.preheader82:                                     ; preds = %17, %.preheader82
  %23 = phi i32 [ %27, %.preheader82 ], [ %13, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 %24
  %26 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %25, ptr noundef %4, i32 noundef %21, i32 noundef 4, i32 noundef 0)
  %27 = add i32 %26, %23
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %.preheader82, label %29, !llvm.loop !20

29:                                               ; preds = %.preheader82
  %30 = load ptr, ptr %10, align 8, !tbaa !18
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %18, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %21, %17 ]
  %36 = phi ptr [ %30, %29 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %39 = load i32, ptr %38, align 4, !tbaa !24
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 4095)
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %42 = load i32, ptr %41, align 4, !tbaa !108
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %44 = load ptr, ptr %43, align 8, !tbaa !107
  %45 = load i32, ptr %3, align 1, !tbaa !25
  %46 = mul i32 %45, -1640531535
  %47 = sub i32 32, %42
  %48 = lshr i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr %44, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !25
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %55 = load i32, ptr %54, align 4, !tbaa !110
  %56 = add i32 %55, -1
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %60 = load i32, ptr %59, align 8, !tbaa !22
  %61 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %58)
  %62 = load i32, ptr %37, align 8, !tbaa !112
  %63 = getelementptr i8, ptr %1, i64 28
  %64 = load i32, ptr %63, align 4, !tbaa !106
  %65 = getelementptr i8, ptr %1, i64 40
  %66 = load i32, ptr %65, align 8, !tbaa !113
  %67 = shl nuw i32 1, %62
  %68 = sub i32 %35, %64
  %69 = icmp ugt i32 %68, %67
  %70 = sub i32 %35, %67
  %71 = icmp eq i32 %66, 0
  %72 = select i1 %71, i1 %69, i1 false
  %73 = select i1 %72, i32 %70, i32 %64
  %74 = tail call i32 @llvm.umax.i32(i32 %73, i32 1)
  %75 = and i32 %35, %58
  %76 = shl nuw i32 %75, 1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %77
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 4
  %80 = add i32 %35, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %82 = load i32, ptr %81, align 4, !tbaa !114
  %83 = shl nuw i32 1, %82
  %84 = add i32 %7, -1
  %85 = zext i32 %84 to i64
  %86 = icmp ult i32 %6, -3
  br i1 %86, label %87, label %395

87:                                               ; preds = %34
  %88 = sub i32 %35, %60
  %89 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %90 = getelementptr inbounds i8, ptr %4, i64 -7
  %91 = icmp ult ptr %89, %90
  %92 = getelementptr inbounds i8, ptr %4, i64 -3
  %93 = getelementptr inbounds i8, ptr %4, i64 -1
  %94 = ptrtoint ptr %89 to i64
  %95 = zext i32 %6 to i64
  %96 = icmp eq i32 %6, 3
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32, ptr %5, align 4, !tbaa !25
  %99 = add i32 %98, -1
  br label %103

100:                                              ; preds = %87
  %101 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %95
  %102 = load i32, ptr %101, align 4, !tbaa !25
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i32 [ %99, %97 ], [ %102, %100 ]
  %105 = add i32 %104, -1
  %106 = icmp ult i32 %105, %88
  br i1 %106, label %107, label %189

107:                                              ; preds = %103
  %108 = sub i32 %35, %104
  %109 = icmp uge i32 %108, %73
  %110 = zext i32 %104 to i64
  %111 = sub nsw i64 0, %110
  %112 = getelementptr inbounds i8, ptr %3, i64 %111
  %113 = load i32, ptr %112, align 1, !tbaa !25
  %114 = icmp eq i32 %45, %113
  %115 = and i1 %109, %114
  br i1 %115, label %116, label %189

116:                                              ; preds = %107
  %117 = getelementptr inbounds i8, ptr %89, i64 %111
  br i1 %91, label %118, label %.loopexit81

118:                                              ; preds = %116
  %119 = load i64, ptr %117, align 1, !tbaa !30
  %120 = load i64, ptr %89, align 1, !tbaa !30
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %.preheader80, label %122

122:                                              ; preds = %118
  %123 = xor i64 %120, %119
  %124 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %123, i1 true)
  %125 = lshr i64 %124, 3
  br label %177

.preheader80:                                     ; preds = %118, %131
  %126 = phi ptr [ %129, %131 ], [ %117, %118 ]
  %127 = phi ptr [ %128, %131 ], [ %89, %118 ]
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 8
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 8
  %130 = icmp ult ptr %128, %90
  br i1 %130, label %131, label %.loopexit81

131:                                              ; preds = %.preheader80
  %132 = load i64, ptr %129, align 1, !tbaa !30
  %133 = load i64, ptr %128, align 1, !tbaa !30
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %.preheader80, label %135

135:                                              ; preds = %131
  %136 = xor i64 %133, %132
  %137 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %136, i1 true)
  %138 = lshr i64 %137, 3
  %139 = getelementptr inbounds nuw i8, ptr %128, i64 %138
  %140 = ptrtoint ptr %139 to i64
  %141 = sub i64 %140, %94
  br label %177

.loopexit81:                                      ; preds = %.preheader80, %116
  %142 = phi ptr [ %117, %116 ], [ %129, %.preheader80 ]
  %143 = phi ptr [ %89, %116 ], [ %128, %.preheader80 ]
  %144 = icmp ult ptr %143, %92
  br i1 %144, label %145, label %152

145:                                              ; preds = %.loopexit81
  %146 = load i32, ptr %142, align 1, !tbaa !25
  %147 = load i32, ptr %143, align 1, !tbaa !25
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = getelementptr inbounds nuw i8, ptr %143, i64 4
  %151 = getelementptr inbounds nuw i8, ptr %142, i64 4
  br label %152

152:                                              ; preds = %149, %145, %.loopexit81
  %153 = phi ptr [ %151, %149 ], [ %142, %145 ], [ %142, %.loopexit81 ]
  %154 = phi ptr [ %150, %149 ], [ %143, %145 ], [ %143, %.loopexit81 ]
  %155 = icmp ult ptr %154, %93
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load i16, ptr %153, align 1, !tbaa !115
  %158 = load i16, ptr %154, align 1, !tbaa !115
  %159 = icmp eq i16 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = getelementptr inbounds nuw i8, ptr %154, i64 2
  %162 = getelementptr inbounds nuw i8, ptr %153, i64 2
  br label %163

163:                                              ; preds = %160, %156, %152
  %164 = phi ptr [ %162, %160 ], [ %153, %156 ], [ %153, %152 ]
  %165 = phi ptr [ %161, %160 ], [ %154, %156 ], [ %154, %152 ]
  %166 = icmp ult ptr %165, %4
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load i8, ptr %164, align 1, !tbaa !42
  %169 = load i8, ptr %165, align 1, !tbaa !42
  %170 = icmp eq i8 %168, %169
  %171 = zext i1 %170 to i64
  %172 = getelementptr inbounds nuw i8, ptr %165, i64 %171
  br label %173

173:                                              ; preds = %167, %163
  %174 = phi ptr [ %165, %163 ], [ %172, %167 ]
  %175 = ptrtoint ptr %174 to i64
  %176 = sub i64 %175, %94
  br label %177

177:                                              ; preds = %173, %135, %122
  %178 = phi i64 [ %176, %173 ], [ %125, %122 ], [ %141, %135 ]
  %179 = trunc i64 %178 to i32
  %180 = add i32 %179, 4
  %181 = icmp ult i32 %84, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = zext i32 %180 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %180, ptr %184, align 4, !tbaa !44
  %185 = icmp ule i32 %180, %40
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 %183
  %187 = icmp ne ptr %186, %4
  %188 = and i1 %185, %187
  br i1 %188, label %189, label %535

189:                                              ; preds = %182, %177, %107, %103
  %190 = phi i32 [ 1, %182 ], [ 0, %177 ], [ 0, %107 ], [ 0, %103 ]
  %191 = phi i64 [ %183, %182 ], [ %85, %177 ], [ %85, %107 ], [ %85, %103 ]
  %192 = add nuw nsw i64 %95, 1
  %193 = icmp eq i64 %192, 3
  br i1 %193, label %197, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %192
  %196 = load i32, ptr %195, align 4, !tbaa !25
  br label %200

197:                                              ; preds = %189
  %198 = load i32, ptr %5, align 4, !tbaa !25
  %199 = add i32 %198, -1
  br label %200

200:                                              ; preds = %197, %194
  %201 = phi i32 [ %199, %197 ], [ %196, %194 ]
  %202 = add i32 %201, -1
  %203 = icmp ult i32 %202, %88
  br i1 %203, label %204, label %279

204:                                              ; preds = %200
  %205 = sub i32 %35, %201
  %206 = icmp uge i32 %205, %73
  %207 = load i32, ptr %3, align 1, !tbaa !25
  %208 = zext i32 %201 to i64
  %209 = sub nsw i64 0, %208
  %210 = getelementptr inbounds i8, ptr %3, i64 %209
  %211 = load i32, ptr %210, align 1, !tbaa !25
  %212 = icmp eq i32 %207, %211
  %213 = and i1 %206, %212
  br i1 %213, label %214, label %279

214:                                              ; preds = %204
  %215 = getelementptr inbounds i8, ptr %89, i64 %209
  br i1 %91, label %216, label %.loopexit79

216:                                              ; preds = %214
  %217 = load i64, ptr %215, align 1, !tbaa !30
  %218 = load i64, ptr %89, align 1, !tbaa !30
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %.preheader78, label %220

220:                                              ; preds = %216
  %221 = xor i64 %218, %217
  %222 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %221, i1 true)
  %223 = lshr i64 %222, 3
  br label %275

.preheader78:                                     ; preds = %216, %264
  %224 = phi ptr [ %227, %264 ], [ %215, %216 ]
  %225 = phi ptr [ %226, %264 ], [ %89, %216 ]
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 8
  %227 = getelementptr inbounds nuw i8, ptr %224, i64 8
  %228 = icmp ult ptr %226, %90
  br i1 %228, label %264, label %.loopexit79

.loopexit79:                                      ; preds = %.preheader78, %214
  %229 = phi ptr [ %215, %214 ], [ %227, %.preheader78 ]
  %230 = phi ptr [ %89, %214 ], [ %226, %.preheader78 ]
  %231 = icmp ult ptr %230, %92
  br i1 %231, label %232, label %239

232:                                              ; preds = %.loopexit79
  %233 = load i32, ptr %229, align 1, !tbaa !25
  %234 = load i32, ptr %230, align 1, !tbaa !25
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = getelementptr inbounds nuw i8, ptr %230, i64 4
  %238 = getelementptr inbounds nuw i8, ptr %229, i64 4
  br label %239

239:                                              ; preds = %236, %232, %.loopexit79
  %240 = phi ptr [ %238, %236 ], [ %229, %232 ], [ %229, %.loopexit79 ]
  %241 = phi ptr [ %237, %236 ], [ %230, %232 ], [ %230, %.loopexit79 ]
  %242 = icmp ult ptr %241, %93
  br i1 %242, label %243, label %250

243:                                              ; preds = %239
  %244 = load i16, ptr %240, align 1, !tbaa !115
  %245 = load i16, ptr %241, align 1, !tbaa !115
  %246 = icmp eq i16 %244, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  %248 = getelementptr inbounds nuw i8, ptr %241, i64 2
  %249 = getelementptr inbounds nuw i8, ptr %240, i64 2
  br label %250

250:                                              ; preds = %247, %243, %239
  %251 = phi ptr [ %249, %247 ], [ %240, %243 ], [ %240, %239 ]
  %252 = phi ptr [ %248, %247 ], [ %241, %243 ], [ %241, %239 ]
  %253 = icmp ult ptr %252, %4
  br i1 %253, label %254, label %260

254:                                              ; preds = %250
  %255 = load i8, ptr %251, align 1, !tbaa !42
  %256 = load i8, ptr %252, align 1, !tbaa !42
  %257 = icmp eq i8 %255, %256
  %258 = zext i1 %257 to i64
  %259 = getelementptr inbounds nuw i8, ptr %252, i64 %258
  br label %260

260:                                              ; preds = %254, %250
  %261 = phi ptr [ %252, %250 ], [ %259, %254 ]
  %262 = ptrtoint ptr %261 to i64
  %263 = sub i64 %262, %94
  br label %275

264:                                              ; preds = %.preheader78
  %265 = load i64, ptr %227, align 1, !tbaa !30
  %266 = load i64, ptr %226, align 1, !tbaa !30
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %.preheader78, label %268

268:                                              ; preds = %264
  %269 = xor i64 %266, %265
  %270 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %269, i1 true)
  %271 = lshr i64 %270, 3
  %272 = getelementptr inbounds nuw i8, ptr %226, i64 %271
  %273 = ptrtoint ptr %272 to i64
  %274 = sub i64 %273, %94
  br label %275

275:                                              ; preds = %268, %260, %220
  %276 = phi i64 [ %263, %260 ], [ %223, %220 ], [ %274, %268 ]
  %277 = trunc i64 %276 to i32
  %278 = add i32 %277, 4
  br label %279

279:                                              ; preds = %275, %204, %200
  %280 = phi i32 [ %278, %275 ], [ 0, %204 ], [ 0, %200 ]
  %281 = zext i32 %280 to i64
  %282 = icmp samesign ult i64 %191, %281
  br i1 %282, label %283, label %292

283:                                              ; preds = %279
  %284 = zext nneg i32 %190 to i64
  %285 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %284
  store i32 2, ptr %285, align 4, !tbaa !46
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 4
  store i32 %280, ptr %286, align 4, !tbaa !44
  %287 = add nuw nsw i32 %190, 1
  %288 = icmp ule i32 %280, %40
  %289 = getelementptr inbounds nuw i8, ptr %3, i64 %281
  %290 = icmp ne ptr %289, %4
  %291 = and i1 %288, %290
  br i1 %291, label %292, label %535

292:                                              ; preds = %283, %279
  %293 = phi i32 [ %287, %283 ], [ %190, %279 ]
  %294 = phi i64 [ %281, %283 ], [ %191, %279 ]
  %295 = add nuw nsw i64 %95, 2
  %296 = icmp eq i64 %295, 3
  br i1 %296, label %300, label %297

297:                                              ; preds = %292
  %298 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %295
  %299 = load i32, ptr %298, align 4, !tbaa !25
  br label %303

300:                                              ; preds = %292
  %301 = load i32, ptr %5, align 4, !tbaa !25
  %302 = add i32 %301, -1
  br label %303

303:                                              ; preds = %300, %297
  %304 = phi i32 [ %302, %300 ], [ %299, %297 ]
  %305 = add i32 %304, -1
  %306 = icmp ult i32 %305, %88
  br i1 %306, label %307, label %382

307:                                              ; preds = %303
  %308 = sub i32 %35, %304
  %309 = icmp uge i32 %308, %73
  %310 = load i32, ptr %3, align 1, !tbaa !25
  %311 = zext i32 %304 to i64
  %312 = sub nsw i64 0, %311
  %313 = getelementptr inbounds i8, ptr %3, i64 %312
  %314 = load i32, ptr %313, align 1, !tbaa !25
  %315 = icmp eq i32 %310, %314
  %316 = and i1 %309, %315
  br i1 %316, label %317, label %382

317:                                              ; preds = %307
  %318 = getelementptr inbounds i8, ptr %89, i64 %312
  br i1 %91, label %319, label %.loopexit77

319:                                              ; preds = %317
  %320 = load i64, ptr %318, align 1, !tbaa !30
  %321 = load i64, ptr %89, align 1, !tbaa !30
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %.preheader76, label %323

323:                                              ; preds = %319
  %324 = xor i64 %321, %320
  %325 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %324, i1 true)
  %326 = lshr i64 %325, 3
  br label %378

.preheader76:                                     ; preds = %319, %367
  %327 = phi ptr [ %330, %367 ], [ %318, %319 ]
  %328 = phi ptr [ %329, %367 ], [ %89, %319 ]
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 8
  %330 = getelementptr inbounds nuw i8, ptr %327, i64 8
  %331 = icmp ult ptr %329, %90
  br i1 %331, label %367, label %.loopexit77

.loopexit77:                                      ; preds = %.preheader76, %317
  %332 = phi ptr [ %318, %317 ], [ %330, %.preheader76 ]
  %333 = phi ptr [ %89, %317 ], [ %329, %.preheader76 ]
  %334 = icmp ult ptr %333, %92
  br i1 %334, label %335, label %342

335:                                              ; preds = %.loopexit77
  %336 = load i32, ptr %332, align 1, !tbaa !25
  %337 = load i32, ptr %333, align 1, !tbaa !25
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %335
  %340 = getelementptr inbounds nuw i8, ptr %333, i64 4
  %341 = getelementptr inbounds nuw i8, ptr %332, i64 4
  br label %342

342:                                              ; preds = %339, %335, %.loopexit77
  %343 = phi ptr [ %341, %339 ], [ %332, %335 ], [ %332, %.loopexit77 ]
  %344 = phi ptr [ %340, %339 ], [ %333, %335 ], [ %333, %.loopexit77 ]
  %345 = icmp ult ptr %344, %93
  br i1 %345, label %346, label %353

346:                                              ; preds = %342
  %347 = load i16, ptr %343, align 1, !tbaa !115
  %348 = load i16, ptr %344, align 1, !tbaa !115
  %349 = icmp eq i16 %347, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %346
  %351 = getelementptr inbounds nuw i8, ptr %344, i64 2
  %352 = getelementptr inbounds nuw i8, ptr %343, i64 2
  br label %353

353:                                              ; preds = %350, %346, %342
  %354 = phi ptr [ %352, %350 ], [ %343, %346 ], [ %343, %342 ]
  %355 = phi ptr [ %351, %350 ], [ %344, %346 ], [ %344, %342 ]
  %356 = icmp ult ptr %355, %4
  br i1 %356, label %357, label %363

357:                                              ; preds = %353
  %358 = load i8, ptr %354, align 1, !tbaa !42
  %359 = load i8, ptr %355, align 1, !tbaa !42
  %360 = icmp eq i8 %358, %359
  %361 = zext i1 %360 to i64
  %362 = getelementptr inbounds nuw i8, ptr %355, i64 %361
  br label %363

363:                                              ; preds = %357, %353
  %364 = phi ptr [ %355, %353 ], [ %362, %357 ]
  %365 = ptrtoint ptr %364 to i64
  %366 = sub i64 %365, %94
  br label %378

367:                                              ; preds = %.preheader76
  %368 = load i64, ptr %330, align 1, !tbaa !30
  %369 = load i64, ptr %329, align 1, !tbaa !30
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %.preheader76, label %371

371:                                              ; preds = %367
  %372 = xor i64 %369, %368
  %373 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %372, i1 true)
  %374 = lshr i64 %373, 3
  %375 = getelementptr inbounds nuw i8, ptr %329, i64 %374
  %376 = ptrtoint ptr %375 to i64
  %377 = sub i64 %376, %94
  br label %378

378:                                              ; preds = %371, %363, %323
  %379 = phi i64 [ %366, %363 ], [ %326, %323 ], [ %377, %371 ]
  %380 = trunc i64 %379 to i32
  %381 = add i32 %380, 4
  br label %382

382:                                              ; preds = %378, %307, %303
  %383 = phi i32 [ %381, %378 ], [ 0, %307 ], [ 0, %303 ]
  %384 = zext i32 %383 to i64
  %385 = icmp samesign ult i64 %294, %384
  br i1 %385, label %386, label %395

386:                                              ; preds = %382
  %387 = zext nneg i32 %293 to i64
  %388 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %387
  store i32 3, ptr %388, align 4, !tbaa !46
  %389 = getelementptr inbounds nuw i8, ptr %388, i64 4
  store i32 %383, ptr %389, align 4, !tbaa !44
  %390 = add nuw nsw i32 %293, 1
  %391 = icmp ule i32 %383, %40
  %392 = getelementptr inbounds nuw i8, ptr %3, i64 %384
  %393 = icmp ne ptr %392, %4
  %394 = and i1 %391, %393
  br i1 %394, label %395, label %535

395:                                              ; preds = %386, %382, %34
  %396 = phi i64 [ %85, %34 ], [ %384, %386 ], [ %294, %382 ]
  %397 = phi i32 [ 0, %34 ], [ %390, %386 ], [ %293, %382 ]
  store i32 %35, ptr %50, align 4, !tbaa !25
  %398 = icmp ult i32 %51, %74
  br i1 %398, label %.loopexit72, label %399

399:                                              ; preds = %395
  %400 = getelementptr inbounds i8, ptr %4, i64 -7
  %401 = getelementptr inbounds i8, ptr %4, i64 -3
  %402 = getelementptr inbounds i8, ptr %4, i64 -1
  %403 = add i32 %35, 3
  br label %404

404:                                              ; preds = %519, %399
  %405 = phi i32 [ %51, %399 ], [ %525, %519 ]
  %406 = phi i64 [ 0, %399 ], [ %523, %519 ]
  %407 = phi i64 [ 0, %399 ], [ %522, %519 ]
  %408 = phi ptr [ %78, %399 ], [ %521, %519 ]
  %409 = phi ptr [ %79, %399 ], [ %520, %519 ]
  %410 = phi i32 [ %80, %399 ], [ %508, %519 ]
  %411 = phi i32 [ %397, %399 ], [ %507, %519 ]
  %412 = phi i32 [ %83, %399 ], [ %526, %519 ]
  %413 = phi i64 [ %396, %399 ], [ %506, %519 ]
  %414 = and i32 %405, %58
  %415 = shl nuw i32 %414, 1
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %416
  %418 = tail call i64 @llvm.umin.i64(i64 %406, i64 %407)
  %419 = zext i32 %405 to i64
  %420 = getelementptr inbounds nuw i8, ptr %36, i64 %419
  %421 = getelementptr inbounds nuw i8, ptr %3, i64 %418
  %422 = getelementptr inbounds nuw i8, ptr %420, i64 %418
  %423 = icmp ult ptr %421, %400
  br i1 %423, label %424, label %.loopexit

424:                                              ; preds = %404
  %425 = load i64, ptr %422, align 1, !tbaa !30
  %426 = load i64, ptr %421, align 1, !tbaa !30
  %427 = icmp eq i64 %425, %426
  br i1 %427, label %.preheader, label %428

428:                                              ; preds = %424
  %429 = xor i64 %426, %425
  %430 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %429, i1 true)
  %431 = lshr i64 %430, 3
  br label %485

.preheader:                                       ; preds = %424, %437
  %432 = phi ptr [ %435, %437 ], [ %422, %424 ]
  %433 = phi ptr [ %434, %437 ], [ %421, %424 ]
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 8
  %435 = getelementptr inbounds nuw i8, ptr %432, i64 8
  %436 = icmp ult ptr %434, %400
  br i1 %436, label %437, label %.loopexit

437:                                              ; preds = %.preheader
  %438 = load i64, ptr %435, align 1, !tbaa !30
  %439 = load i64, ptr %434, align 1, !tbaa !30
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %.preheader, label %441

441:                                              ; preds = %437
  %442 = xor i64 %439, %438
  %443 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %442, i1 true)
  %444 = lshr i64 %443, 3
  %445 = getelementptr inbounds nuw i8, ptr %434, i64 %444
  %446 = ptrtoint ptr %445 to i64
  %447 = ptrtoint ptr %421 to i64
  %448 = sub i64 %446, %447
  br label %485

.loopexit:                                        ; preds = %.preheader, %404
  %449 = phi ptr [ %422, %404 ], [ %435, %.preheader ]
  %450 = phi ptr [ %421, %404 ], [ %434, %.preheader ]
  %451 = icmp ult ptr %450, %401
  br i1 %451, label %452, label %459

452:                                              ; preds = %.loopexit
  %453 = load i32, ptr %449, align 1, !tbaa !25
  %454 = load i32, ptr %450, align 1, !tbaa !25
  %455 = icmp eq i32 %453, %454
  br i1 %455, label %456, label %459

456:                                              ; preds = %452
  %457 = getelementptr inbounds nuw i8, ptr %450, i64 4
  %458 = getelementptr inbounds nuw i8, ptr %449, i64 4
  br label %459

459:                                              ; preds = %456, %452, %.loopexit
  %460 = phi ptr [ %458, %456 ], [ %449, %452 ], [ %449, %.loopexit ]
  %461 = phi ptr [ %457, %456 ], [ %450, %452 ], [ %450, %.loopexit ]
  %462 = icmp ult ptr %461, %402
  br i1 %462, label %463, label %470

463:                                              ; preds = %459
  %464 = load i16, ptr %460, align 1, !tbaa !115
  %465 = load i16, ptr %461, align 1, !tbaa !115
  %466 = icmp eq i16 %464, %465
  br i1 %466, label %467, label %470

467:                                              ; preds = %463
  %468 = getelementptr inbounds nuw i8, ptr %461, i64 2
  %469 = getelementptr inbounds nuw i8, ptr %460, i64 2
  br label %470

470:                                              ; preds = %467, %463, %459
  %471 = phi ptr [ %469, %467 ], [ %460, %463 ], [ %460, %459 ]
  %472 = phi ptr [ %468, %467 ], [ %461, %463 ], [ %461, %459 ]
  %473 = icmp ult ptr %472, %4
  br i1 %473, label %474, label %480

474:                                              ; preds = %470
  %475 = load i8, ptr %471, align 1, !tbaa !42
  %476 = load i8, ptr %472, align 1, !tbaa !42
  %477 = icmp eq i8 %475, %476
  %478 = zext i1 %477 to i64
  %479 = getelementptr inbounds nuw i8, ptr %472, i64 %478
  br label %480

480:                                              ; preds = %474, %470
  %481 = phi ptr [ %472, %470 ], [ %479, %474 ]
  %482 = ptrtoint ptr %481 to i64
  %483 = ptrtoint ptr %421 to i64
  %484 = sub i64 %482, %483
  br label %485

485:                                              ; preds = %480, %441, %428
  %486 = phi i64 [ %484, %480 ], [ %431, %428 ], [ %448, %441 ]
  %487 = add i64 %486, %418
  %488 = icmp ugt i64 %487, %413
  br i1 %488, label %489, label %505

489:                                              ; preds = %485
  %490 = sub i32 %410, %405
  %491 = zext i32 %490 to i64
  %492 = icmp ugt i64 %487, %491
  %493 = trunc i64 %487 to i32
  %494 = add i32 %405, %493
  %495 = select i1 %492, i32 %494, i32 %410
  %496 = sub i32 %403, %405
  %497 = zext i32 %411 to i64
  %498 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %497
  store i32 %496, ptr %498, align 4, !tbaa !46
  %499 = getelementptr inbounds nuw i8, ptr %498, i64 4
  store i32 %493, ptr %499, align 4, !tbaa !44
  %500 = add i32 %411, 1
  %501 = icmp ugt i64 %487, 4096
  %502 = getelementptr inbounds nuw i8, ptr %3, i64 %487
  %503 = icmp eq ptr %502, %4
  %504 = or i1 %501, %503
  br i1 %504, label %.loopexit72, label %505

505:                                              ; preds = %489, %485
  %506 = phi i64 [ %487, %489 ], [ %413, %485 ]
  %507 = phi i32 [ %500, %489 ], [ %411, %485 ]
  %508 = phi i32 [ %495, %489 ], [ %410, %485 ]
  %509 = getelementptr inbounds nuw i8, ptr %420, i64 %487
  %510 = load i8, ptr %509, align 1, !tbaa !42
  %511 = getelementptr inbounds nuw i8, ptr %3, i64 %487
  %512 = load i8, ptr %511, align 1, !tbaa !42
  %513 = icmp ult i8 %510, %512
  %514 = icmp ugt i32 %405, %61
  br i1 %513, label %515, label %518

515:                                              ; preds = %505
  store i32 %405, ptr %408, align 4, !tbaa !25
  br i1 %514, label %516, label %.loopexit72

516:                                              ; preds = %515
  %517 = getelementptr inbounds nuw i8, ptr %417, i64 4
  br label %519

518:                                              ; preds = %505
  store i32 %405, ptr %409, align 4, !tbaa !25
  br i1 %514, label %519, label %.loopexit72

519:                                              ; preds = %518, %516
  %520 = phi ptr [ %409, %516 ], [ %417, %518 ]
  %521 = phi ptr [ %517, %516 ], [ %408, %518 ]
  %522 = phi i64 [ %407, %516 ], [ %487, %518 ]
  %523 = phi i64 [ %487, %516 ], [ %406, %518 ]
  %524 = phi ptr [ %517, %516 ], [ %417, %518 ]
  %525 = load i32, ptr %524, align 4, !tbaa !25
  %526 = add i32 %412, -1
  %527 = icmp ne i32 %526, 0
  %528 = icmp uge i32 %525, %74
  %529 = select i1 %527, i1 %528, i1 false
  br i1 %529, label %404, label %.loopexit72, !llvm.loop !139

.loopexit72:                                      ; preds = %519, %518, %515, %489, %395
  %530 = phi i32 [ %397, %395 ], [ %500, %489 ], [ %507, %518 ], [ %507, %515 ], [ %507, %519 ]
  %531 = phi i32 [ %80, %395 ], [ %495, %489 ], [ %508, %518 ], [ %508, %515 ], [ %508, %519 ]
  %532 = phi ptr [ %79, %395 ], [ %409, %489 ], [ %9, %518 ], [ %409, %515 ], [ %520, %519 ]
  %533 = phi ptr [ %78, %395 ], [ %408, %489 ], [ %408, %518 ], [ %9, %515 ], [ %521, %519 ]
  store i32 0, ptr %532, align 4, !tbaa !25
  store i32 0, ptr %533, align 4, !tbaa !25
  %534 = add i32 %531, -8
  store i32 %534, ptr %12, align 4, !tbaa !19
  br label %535

535:                                              ; preds = %.loopexit72, %386, %283, %182
  %536 = phi i32 [ %530, %.loopexit72 ], [ 1, %182 ], [ %287, %283 ], [ %390, %386 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %537

537:                                              ; preds = %535, %8
  %538 = phi i32 [ %536, %535 ], [ 0, %8 ]
  ret i32 %538
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i32 @ZSTD_btGetAllMatches_noDict_5(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %538, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %.preheader82, label %34

.preheader82:                                     ; preds = %17, %.preheader82
  %23 = phi i32 [ %27, %.preheader82 ], [ %13, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 %24
  %26 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %25, ptr noundef %4, i32 noundef %21, i32 noundef 5, i32 noundef 0)
  %27 = add i32 %26, %23
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %.preheader82, label %29, !llvm.loop !20

29:                                               ; preds = %.preheader82
  %30 = load ptr, ptr %10, align 8, !tbaa !18
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %18, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %21, %17 ]
  %36 = phi ptr [ %30, %29 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %39 = load i32, ptr %38, align 4, !tbaa !24
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 4095)
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %42 = load i32, ptr %41, align 4, !tbaa !108
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %44 = load ptr, ptr %43, align 8, !tbaa !107
  %45 = load i64, ptr %3, align 1
  %46 = mul i64 %45, -3523014627271114752
  %47 = sub i32 64, %42
  %48 = zext nneg i32 %47 to i64
  %49 = lshr i64 %46, %48
  %50 = getelementptr inbounds nuw [4 x i8], ptr %44, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !25
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %55 = load i32, ptr %54, align 4, !tbaa !110
  %56 = add i32 %55, -1
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %60 = load i32, ptr %59, align 8, !tbaa !22
  %61 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %58)
  %62 = load i32, ptr %37, align 8, !tbaa !112
  %63 = getelementptr i8, ptr %1, i64 28
  %64 = load i32, ptr %63, align 4, !tbaa !106
  %65 = getelementptr i8, ptr %1, i64 40
  %66 = load i32, ptr %65, align 8, !tbaa !113
  %67 = shl nuw i32 1, %62
  %68 = sub i32 %35, %64
  %69 = icmp ugt i32 %68, %67
  %70 = sub i32 %35, %67
  %71 = icmp eq i32 %66, 0
  %72 = select i1 %71, i1 %69, i1 false
  %73 = select i1 %72, i32 %70, i32 %64
  %74 = tail call i32 @llvm.umax.i32(i32 %73, i32 1)
  %75 = and i32 %35, %58
  %76 = shl nuw i32 %75, 1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %77
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 4
  %80 = add i32 %35, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %82 = load i32, ptr %81, align 4, !tbaa !114
  %83 = shl nuw i32 1, %82
  %84 = add i32 %7, -1
  %85 = zext i32 %84 to i64
  %86 = icmp ult i32 %6, -3
  %87 = trunc i64 %45 to i32
  br i1 %86, label %88, label %396

88:                                               ; preds = %34
  %89 = sub i32 %35, %60
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
  %102 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %96
  %103 = load i32, ptr %102, align 4, !tbaa !25
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i32 [ %100, %98 ], [ %103, %101 ]
  %106 = add i32 %105, -1
  %107 = icmp ult i32 %106, %89
  br i1 %107, label %108, label %190

108:                                              ; preds = %104
  %109 = sub i32 %35, %105
  %110 = icmp uge i32 %109, %73
  %111 = zext i32 %105 to i64
  %112 = sub nsw i64 0, %111
  %113 = getelementptr inbounds i8, ptr %3, i64 %112
  %114 = load i32, ptr %113, align 1, !tbaa !25
  %115 = icmp eq i32 %114, %87
  %116 = and i1 %110, %115
  br i1 %116, label %117, label %190

117:                                              ; preds = %108
  %118 = getelementptr inbounds i8, ptr %90, i64 %112
  br i1 %92, label %119, label %.loopexit81

119:                                              ; preds = %117
  %120 = load i64, ptr %118, align 1, !tbaa !30
  %121 = load i64, ptr %90, align 1, !tbaa !30
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %.preheader80, label %123

123:                                              ; preds = %119
  %124 = xor i64 %121, %120
  %125 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %124, i1 true)
  %126 = lshr i64 %125, 3
  br label %178

.preheader80:                                     ; preds = %119, %132
  %127 = phi ptr [ %130, %132 ], [ %118, %119 ]
  %128 = phi ptr [ %129, %132 ], [ %90, %119 ]
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %130 = getelementptr inbounds nuw i8, ptr %127, i64 8
  %131 = icmp ult ptr %129, %91
  br i1 %131, label %132, label %.loopexit81

132:                                              ; preds = %.preheader80
  %133 = load i64, ptr %130, align 1, !tbaa !30
  %134 = load i64, ptr %129, align 1, !tbaa !30
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %.preheader80, label %136

136:                                              ; preds = %132
  %137 = xor i64 %134, %133
  %138 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %137, i1 true)
  %139 = lshr i64 %138, 3
  %140 = getelementptr inbounds nuw i8, ptr %129, i64 %139
  %141 = ptrtoint ptr %140 to i64
  %142 = sub i64 %141, %95
  br label %178

.loopexit81:                                      ; preds = %.preheader80, %117
  %143 = phi ptr [ %118, %117 ], [ %130, %.preheader80 ]
  %144 = phi ptr [ %90, %117 ], [ %129, %.preheader80 ]
  %145 = icmp ult ptr %144, %93
  br i1 %145, label %146, label %153

146:                                              ; preds = %.loopexit81
  %147 = load i32, ptr %143, align 1, !tbaa !25
  %148 = load i32, ptr %144, align 1, !tbaa !25
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %152 = getelementptr inbounds nuw i8, ptr %143, i64 4
  br label %153

153:                                              ; preds = %150, %146, %.loopexit81
  %154 = phi ptr [ %152, %150 ], [ %143, %146 ], [ %143, %.loopexit81 ]
  %155 = phi ptr [ %151, %150 ], [ %144, %146 ], [ %144, %.loopexit81 ]
  %156 = icmp ult ptr %155, %94
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i16, ptr %154, align 1, !tbaa !115
  %159 = load i16, ptr %155, align 1, !tbaa !115
  %160 = icmp eq i16 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = getelementptr inbounds nuw i8, ptr %155, i64 2
  %163 = getelementptr inbounds nuw i8, ptr %154, i64 2
  br label %164

164:                                              ; preds = %161, %157, %153
  %165 = phi ptr [ %163, %161 ], [ %154, %157 ], [ %154, %153 ]
  %166 = phi ptr [ %162, %161 ], [ %155, %157 ], [ %155, %153 ]
  %167 = icmp ult ptr %166, %4
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i8, ptr %165, align 1, !tbaa !42
  %170 = load i8, ptr %166, align 1, !tbaa !42
  %171 = icmp eq i8 %169, %170
  %172 = zext i1 %171 to i64
  %173 = getelementptr inbounds nuw i8, ptr %166, i64 %172
  br label %174

174:                                              ; preds = %168, %164
  %175 = phi ptr [ %166, %164 ], [ %173, %168 ]
  %176 = ptrtoint ptr %175 to i64
  %177 = sub i64 %176, %95
  br label %178

178:                                              ; preds = %174, %136, %123
  %179 = phi i64 [ %177, %174 ], [ %126, %123 ], [ %142, %136 ]
  %180 = trunc i64 %179 to i32
  %181 = add i32 %180, 4
  %182 = icmp ult i32 %84, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = zext i32 %181 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %181, ptr %185, align 4, !tbaa !44
  %186 = icmp ule i32 %181, %40
  %187 = getelementptr inbounds nuw i8, ptr %3, i64 %184
  %188 = icmp ne ptr %187, %4
  %189 = and i1 %186, %188
  br i1 %189, label %190, label %536

190:                                              ; preds = %183, %178, %108, %104
  %191 = phi i32 [ 1, %183 ], [ 0, %178 ], [ 0, %108 ], [ 0, %104 ]
  %192 = phi i64 [ %184, %183 ], [ %85, %178 ], [ %85, %108 ], [ %85, %104 ]
  %193 = add nuw nsw i64 %96, 1
  %194 = icmp eq i64 %193, 3
  br i1 %194, label %198, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %193
  %197 = load i32, ptr %196, align 4, !tbaa !25
  br label %201

198:                                              ; preds = %190
  %199 = load i32, ptr %5, align 4, !tbaa !25
  %200 = add i32 %199, -1
  br label %201

201:                                              ; preds = %198, %195
  %202 = phi i32 [ %200, %198 ], [ %197, %195 ]
  %203 = add i32 %202, -1
  %204 = icmp ult i32 %203, %89
  br i1 %204, label %205, label %280

205:                                              ; preds = %201
  %206 = sub i32 %35, %202
  %207 = icmp uge i32 %206, %73
  %208 = load i32, ptr %3, align 1, !tbaa !25
  %209 = zext i32 %202 to i64
  %210 = sub nsw i64 0, %209
  %211 = getelementptr inbounds i8, ptr %3, i64 %210
  %212 = load i32, ptr %211, align 1, !tbaa !25
  %213 = icmp eq i32 %208, %212
  %214 = and i1 %207, %213
  br i1 %214, label %215, label %280

215:                                              ; preds = %205
  %216 = getelementptr inbounds i8, ptr %90, i64 %210
  br i1 %92, label %217, label %.loopexit79

217:                                              ; preds = %215
  %218 = load i64, ptr %216, align 1, !tbaa !30
  %219 = load i64, ptr %90, align 1, !tbaa !30
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %.preheader78, label %221

221:                                              ; preds = %217
  %222 = xor i64 %219, %218
  %223 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %222, i1 true)
  %224 = lshr i64 %223, 3
  br label %276

.preheader78:                                     ; preds = %217, %265
  %225 = phi ptr [ %228, %265 ], [ %216, %217 ]
  %226 = phi ptr [ %227, %265 ], [ %90, %217 ]
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 8
  %228 = getelementptr inbounds nuw i8, ptr %225, i64 8
  %229 = icmp ult ptr %227, %91
  br i1 %229, label %265, label %.loopexit79

.loopexit79:                                      ; preds = %.preheader78, %215
  %230 = phi ptr [ %216, %215 ], [ %228, %.preheader78 ]
  %231 = phi ptr [ %90, %215 ], [ %227, %.preheader78 ]
  %232 = icmp ult ptr %231, %93
  br i1 %232, label %233, label %240

233:                                              ; preds = %.loopexit79
  %234 = load i32, ptr %230, align 1, !tbaa !25
  %235 = load i32, ptr %231, align 1, !tbaa !25
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  %238 = getelementptr inbounds nuw i8, ptr %231, i64 4
  %239 = getelementptr inbounds nuw i8, ptr %230, i64 4
  br label %240

240:                                              ; preds = %237, %233, %.loopexit79
  %241 = phi ptr [ %239, %237 ], [ %230, %233 ], [ %230, %.loopexit79 ]
  %242 = phi ptr [ %238, %237 ], [ %231, %233 ], [ %231, %.loopexit79 ]
  %243 = icmp ult ptr %242, %94
  br i1 %243, label %244, label %251

244:                                              ; preds = %240
  %245 = load i16, ptr %241, align 1, !tbaa !115
  %246 = load i16, ptr %242, align 1, !tbaa !115
  %247 = icmp eq i16 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = getelementptr inbounds nuw i8, ptr %242, i64 2
  %250 = getelementptr inbounds nuw i8, ptr %241, i64 2
  br label %251

251:                                              ; preds = %248, %244, %240
  %252 = phi ptr [ %250, %248 ], [ %241, %244 ], [ %241, %240 ]
  %253 = phi ptr [ %249, %248 ], [ %242, %244 ], [ %242, %240 ]
  %254 = icmp ult ptr %253, %4
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = load i8, ptr %252, align 1, !tbaa !42
  %257 = load i8, ptr %253, align 1, !tbaa !42
  %258 = icmp eq i8 %256, %257
  %259 = zext i1 %258 to i64
  %260 = getelementptr inbounds nuw i8, ptr %253, i64 %259
  br label %261

261:                                              ; preds = %255, %251
  %262 = phi ptr [ %253, %251 ], [ %260, %255 ]
  %263 = ptrtoint ptr %262 to i64
  %264 = sub i64 %263, %95
  br label %276

265:                                              ; preds = %.preheader78
  %266 = load i64, ptr %228, align 1, !tbaa !30
  %267 = load i64, ptr %227, align 1, !tbaa !30
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %.preheader78, label %269

269:                                              ; preds = %265
  %270 = xor i64 %267, %266
  %271 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %270, i1 true)
  %272 = lshr i64 %271, 3
  %273 = getelementptr inbounds nuw i8, ptr %227, i64 %272
  %274 = ptrtoint ptr %273 to i64
  %275 = sub i64 %274, %95
  br label %276

276:                                              ; preds = %269, %261, %221
  %277 = phi i64 [ %264, %261 ], [ %224, %221 ], [ %275, %269 ]
  %278 = trunc i64 %277 to i32
  %279 = add i32 %278, 4
  br label %280

280:                                              ; preds = %276, %205, %201
  %281 = phi i32 [ %279, %276 ], [ 0, %205 ], [ 0, %201 ]
  %282 = zext i32 %281 to i64
  %283 = icmp samesign ult i64 %192, %282
  br i1 %283, label %284, label %293

284:                                              ; preds = %280
  %285 = zext nneg i32 %191 to i64
  %286 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %285
  store i32 2, ptr %286, align 4, !tbaa !46
  %287 = getelementptr inbounds nuw i8, ptr %286, i64 4
  store i32 %281, ptr %287, align 4, !tbaa !44
  %288 = add nuw nsw i32 %191, 1
  %289 = icmp ule i32 %281, %40
  %290 = getelementptr inbounds nuw i8, ptr %3, i64 %282
  %291 = icmp ne ptr %290, %4
  %292 = and i1 %289, %291
  br i1 %292, label %293, label %536

293:                                              ; preds = %284, %280
  %294 = phi i32 [ %288, %284 ], [ %191, %280 ]
  %295 = phi i64 [ %282, %284 ], [ %192, %280 ]
  %296 = add nuw nsw i64 %96, 2
  %297 = icmp eq i64 %296, 3
  br i1 %297, label %301, label %298

298:                                              ; preds = %293
  %299 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %296
  %300 = load i32, ptr %299, align 4, !tbaa !25
  br label %304

301:                                              ; preds = %293
  %302 = load i32, ptr %5, align 4, !tbaa !25
  %303 = add i32 %302, -1
  br label %304

304:                                              ; preds = %301, %298
  %305 = phi i32 [ %303, %301 ], [ %300, %298 ]
  %306 = add i32 %305, -1
  %307 = icmp ult i32 %306, %89
  br i1 %307, label %308, label %383

308:                                              ; preds = %304
  %309 = sub i32 %35, %305
  %310 = icmp uge i32 %309, %73
  %311 = load i32, ptr %3, align 1, !tbaa !25
  %312 = zext i32 %305 to i64
  %313 = sub nsw i64 0, %312
  %314 = getelementptr inbounds i8, ptr %3, i64 %313
  %315 = load i32, ptr %314, align 1, !tbaa !25
  %316 = icmp eq i32 %311, %315
  %317 = and i1 %310, %316
  br i1 %317, label %318, label %383

318:                                              ; preds = %308
  %319 = getelementptr inbounds i8, ptr %90, i64 %313
  br i1 %92, label %320, label %.loopexit77

320:                                              ; preds = %318
  %321 = load i64, ptr %319, align 1, !tbaa !30
  %322 = load i64, ptr %90, align 1, !tbaa !30
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %.preheader76, label %324

324:                                              ; preds = %320
  %325 = xor i64 %322, %321
  %326 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %325, i1 true)
  %327 = lshr i64 %326, 3
  br label %379

.preheader76:                                     ; preds = %320, %368
  %328 = phi ptr [ %331, %368 ], [ %319, %320 ]
  %329 = phi ptr [ %330, %368 ], [ %90, %320 ]
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 8
  %331 = getelementptr inbounds nuw i8, ptr %328, i64 8
  %332 = icmp ult ptr %330, %91
  br i1 %332, label %368, label %.loopexit77

.loopexit77:                                      ; preds = %.preheader76, %318
  %333 = phi ptr [ %319, %318 ], [ %331, %.preheader76 ]
  %334 = phi ptr [ %90, %318 ], [ %330, %.preheader76 ]
  %335 = icmp ult ptr %334, %93
  br i1 %335, label %336, label %343

336:                                              ; preds = %.loopexit77
  %337 = load i32, ptr %333, align 1, !tbaa !25
  %338 = load i32, ptr %334, align 1, !tbaa !25
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %343

340:                                              ; preds = %336
  %341 = getelementptr inbounds nuw i8, ptr %334, i64 4
  %342 = getelementptr inbounds nuw i8, ptr %333, i64 4
  br label %343

343:                                              ; preds = %340, %336, %.loopexit77
  %344 = phi ptr [ %342, %340 ], [ %333, %336 ], [ %333, %.loopexit77 ]
  %345 = phi ptr [ %341, %340 ], [ %334, %336 ], [ %334, %.loopexit77 ]
  %346 = icmp ult ptr %345, %94
  br i1 %346, label %347, label %354

347:                                              ; preds = %343
  %348 = load i16, ptr %344, align 1, !tbaa !115
  %349 = load i16, ptr %345, align 1, !tbaa !115
  %350 = icmp eq i16 %348, %349
  br i1 %350, label %351, label %354

351:                                              ; preds = %347
  %352 = getelementptr inbounds nuw i8, ptr %345, i64 2
  %353 = getelementptr inbounds nuw i8, ptr %344, i64 2
  br label %354

354:                                              ; preds = %351, %347, %343
  %355 = phi ptr [ %353, %351 ], [ %344, %347 ], [ %344, %343 ]
  %356 = phi ptr [ %352, %351 ], [ %345, %347 ], [ %345, %343 ]
  %357 = icmp ult ptr %356, %4
  br i1 %357, label %358, label %364

358:                                              ; preds = %354
  %359 = load i8, ptr %355, align 1, !tbaa !42
  %360 = load i8, ptr %356, align 1, !tbaa !42
  %361 = icmp eq i8 %359, %360
  %362 = zext i1 %361 to i64
  %363 = getelementptr inbounds nuw i8, ptr %356, i64 %362
  br label %364

364:                                              ; preds = %358, %354
  %365 = phi ptr [ %356, %354 ], [ %363, %358 ]
  %366 = ptrtoint ptr %365 to i64
  %367 = sub i64 %366, %95
  br label %379

368:                                              ; preds = %.preheader76
  %369 = load i64, ptr %331, align 1, !tbaa !30
  %370 = load i64, ptr %330, align 1, !tbaa !30
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %.preheader76, label %372

372:                                              ; preds = %368
  %373 = xor i64 %370, %369
  %374 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %373, i1 true)
  %375 = lshr i64 %374, 3
  %376 = getelementptr inbounds nuw i8, ptr %330, i64 %375
  %377 = ptrtoint ptr %376 to i64
  %378 = sub i64 %377, %95
  br label %379

379:                                              ; preds = %372, %364, %324
  %380 = phi i64 [ %367, %364 ], [ %327, %324 ], [ %378, %372 ]
  %381 = trunc i64 %380 to i32
  %382 = add i32 %381, 4
  br label %383

383:                                              ; preds = %379, %308, %304
  %384 = phi i32 [ %382, %379 ], [ 0, %308 ], [ 0, %304 ]
  %385 = zext i32 %384 to i64
  %386 = icmp samesign ult i64 %295, %385
  br i1 %386, label %387, label %396

387:                                              ; preds = %383
  %388 = zext nneg i32 %294 to i64
  %389 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %388
  store i32 3, ptr %389, align 4, !tbaa !46
  %390 = getelementptr inbounds nuw i8, ptr %389, i64 4
  store i32 %384, ptr %390, align 4, !tbaa !44
  %391 = add nuw nsw i32 %294, 1
  %392 = icmp ule i32 %384, %40
  %393 = getelementptr inbounds nuw i8, ptr %3, i64 %385
  %394 = icmp ne ptr %393, %4
  %395 = and i1 %392, %394
  br i1 %395, label %396, label %536

396:                                              ; preds = %387, %383, %34
  %397 = phi i64 [ %85, %34 ], [ %385, %387 ], [ %295, %383 ]
  %398 = phi i32 [ 0, %34 ], [ %391, %387 ], [ %294, %383 ]
  store i32 %35, ptr %50, align 4, !tbaa !25
  %399 = icmp ult i32 %51, %74
  br i1 %399, label %.loopexit72, label %400

400:                                              ; preds = %396
  %401 = getelementptr inbounds i8, ptr %4, i64 -7
  %402 = getelementptr inbounds i8, ptr %4, i64 -3
  %403 = getelementptr inbounds i8, ptr %4, i64 -1
  %404 = add i32 %35, 3
  br label %405

405:                                              ; preds = %520, %400
  %406 = phi i32 [ %51, %400 ], [ %526, %520 ]
  %407 = phi i64 [ 0, %400 ], [ %524, %520 ]
  %408 = phi i64 [ 0, %400 ], [ %523, %520 ]
  %409 = phi ptr [ %78, %400 ], [ %522, %520 ]
  %410 = phi ptr [ %79, %400 ], [ %521, %520 ]
  %411 = phi i32 [ %80, %400 ], [ %509, %520 ]
  %412 = phi i32 [ %398, %400 ], [ %508, %520 ]
  %413 = phi i32 [ %83, %400 ], [ %527, %520 ]
  %414 = phi i64 [ %397, %400 ], [ %507, %520 ]
  %415 = and i32 %406, %58
  %416 = shl nuw i32 %415, 1
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %417
  %419 = tail call i64 @llvm.umin.i64(i64 %407, i64 %408)
  %420 = zext i32 %406 to i64
  %421 = getelementptr inbounds nuw i8, ptr %36, i64 %420
  %422 = getelementptr inbounds nuw i8, ptr %3, i64 %419
  %423 = getelementptr inbounds nuw i8, ptr %421, i64 %419
  %424 = icmp ult ptr %422, %401
  br i1 %424, label %425, label %.loopexit

425:                                              ; preds = %405
  %426 = load i64, ptr %423, align 1, !tbaa !30
  %427 = load i64, ptr %422, align 1, !tbaa !30
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %.preheader, label %429

429:                                              ; preds = %425
  %430 = xor i64 %427, %426
  %431 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %430, i1 true)
  %432 = lshr i64 %431, 3
  br label %486

.preheader:                                       ; preds = %425, %438
  %433 = phi ptr [ %436, %438 ], [ %423, %425 ]
  %434 = phi ptr [ %435, %438 ], [ %422, %425 ]
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 8
  %436 = getelementptr inbounds nuw i8, ptr %433, i64 8
  %437 = icmp ult ptr %435, %401
  br i1 %437, label %438, label %.loopexit

438:                                              ; preds = %.preheader
  %439 = load i64, ptr %436, align 1, !tbaa !30
  %440 = load i64, ptr %435, align 1, !tbaa !30
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %.preheader, label %442

442:                                              ; preds = %438
  %443 = xor i64 %440, %439
  %444 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %443, i1 true)
  %445 = lshr i64 %444, 3
  %446 = getelementptr inbounds nuw i8, ptr %435, i64 %445
  %447 = ptrtoint ptr %446 to i64
  %448 = ptrtoint ptr %422 to i64
  %449 = sub i64 %447, %448
  br label %486

.loopexit:                                        ; preds = %.preheader, %405
  %450 = phi ptr [ %423, %405 ], [ %436, %.preheader ]
  %451 = phi ptr [ %422, %405 ], [ %435, %.preheader ]
  %452 = icmp ult ptr %451, %402
  br i1 %452, label %453, label %460

453:                                              ; preds = %.loopexit
  %454 = load i32, ptr %450, align 1, !tbaa !25
  %455 = load i32, ptr %451, align 1, !tbaa !25
  %456 = icmp eq i32 %454, %455
  br i1 %456, label %457, label %460

457:                                              ; preds = %453
  %458 = getelementptr inbounds nuw i8, ptr %451, i64 4
  %459 = getelementptr inbounds nuw i8, ptr %450, i64 4
  br label %460

460:                                              ; preds = %457, %453, %.loopexit
  %461 = phi ptr [ %459, %457 ], [ %450, %453 ], [ %450, %.loopexit ]
  %462 = phi ptr [ %458, %457 ], [ %451, %453 ], [ %451, %.loopexit ]
  %463 = icmp ult ptr %462, %403
  br i1 %463, label %464, label %471

464:                                              ; preds = %460
  %465 = load i16, ptr %461, align 1, !tbaa !115
  %466 = load i16, ptr %462, align 1, !tbaa !115
  %467 = icmp eq i16 %465, %466
  br i1 %467, label %468, label %471

468:                                              ; preds = %464
  %469 = getelementptr inbounds nuw i8, ptr %462, i64 2
  %470 = getelementptr inbounds nuw i8, ptr %461, i64 2
  br label %471

471:                                              ; preds = %468, %464, %460
  %472 = phi ptr [ %470, %468 ], [ %461, %464 ], [ %461, %460 ]
  %473 = phi ptr [ %469, %468 ], [ %462, %464 ], [ %462, %460 ]
  %474 = icmp ult ptr %473, %4
  br i1 %474, label %475, label %481

475:                                              ; preds = %471
  %476 = load i8, ptr %472, align 1, !tbaa !42
  %477 = load i8, ptr %473, align 1, !tbaa !42
  %478 = icmp eq i8 %476, %477
  %479 = zext i1 %478 to i64
  %480 = getelementptr inbounds nuw i8, ptr %473, i64 %479
  br label %481

481:                                              ; preds = %475, %471
  %482 = phi ptr [ %473, %471 ], [ %480, %475 ]
  %483 = ptrtoint ptr %482 to i64
  %484 = ptrtoint ptr %422 to i64
  %485 = sub i64 %483, %484
  br label %486

486:                                              ; preds = %481, %442, %429
  %487 = phi i64 [ %485, %481 ], [ %432, %429 ], [ %449, %442 ]
  %488 = add i64 %487, %419
  %489 = icmp ugt i64 %488, %414
  br i1 %489, label %490, label %506

490:                                              ; preds = %486
  %491 = sub i32 %411, %406
  %492 = zext i32 %491 to i64
  %493 = icmp ugt i64 %488, %492
  %494 = trunc i64 %488 to i32
  %495 = add i32 %406, %494
  %496 = select i1 %493, i32 %495, i32 %411
  %497 = sub i32 %404, %406
  %498 = zext i32 %412 to i64
  %499 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %498
  store i32 %497, ptr %499, align 4, !tbaa !46
  %500 = getelementptr inbounds nuw i8, ptr %499, i64 4
  store i32 %494, ptr %500, align 4, !tbaa !44
  %501 = add i32 %412, 1
  %502 = icmp ugt i64 %488, 4096
  %503 = getelementptr inbounds nuw i8, ptr %3, i64 %488
  %504 = icmp eq ptr %503, %4
  %505 = or i1 %502, %504
  br i1 %505, label %.loopexit72, label %506

506:                                              ; preds = %490, %486
  %507 = phi i64 [ %488, %490 ], [ %414, %486 ]
  %508 = phi i32 [ %501, %490 ], [ %412, %486 ]
  %509 = phi i32 [ %496, %490 ], [ %411, %486 ]
  %510 = getelementptr inbounds nuw i8, ptr %421, i64 %488
  %511 = load i8, ptr %510, align 1, !tbaa !42
  %512 = getelementptr inbounds nuw i8, ptr %3, i64 %488
  %513 = load i8, ptr %512, align 1, !tbaa !42
  %514 = icmp ult i8 %511, %513
  %515 = icmp ugt i32 %406, %61
  br i1 %514, label %516, label %519

516:                                              ; preds = %506
  store i32 %406, ptr %409, align 4, !tbaa !25
  br i1 %515, label %517, label %.loopexit72

517:                                              ; preds = %516
  %518 = getelementptr inbounds nuw i8, ptr %418, i64 4
  br label %520

519:                                              ; preds = %506
  store i32 %406, ptr %410, align 4, !tbaa !25
  br i1 %515, label %520, label %.loopexit72

520:                                              ; preds = %519, %517
  %521 = phi ptr [ %410, %517 ], [ %418, %519 ]
  %522 = phi ptr [ %518, %517 ], [ %409, %519 ]
  %523 = phi i64 [ %408, %517 ], [ %488, %519 ]
  %524 = phi i64 [ %488, %517 ], [ %407, %519 ]
  %525 = phi ptr [ %518, %517 ], [ %418, %519 ]
  %526 = load i32, ptr %525, align 4, !tbaa !25
  %527 = add i32 %413, -1
  %528 = icmp ne i32 %527, 0
  %529 = icmp uge i32 %526, %74
  %530 = select i1 %528, i1 %529, i1 false
  br i1 %530, label %405, label %.loopexit72, !llvm.loop !139

.loopexit72:                                      ; preds = %520, %519, %516, %490, %396
  %531 = phi i32 [ %398, %396 ], [ %501, %490 ], [ %508, %519 ], [ %508, %516 ], [ %508, %520 ]
  %532 = phi i32 [ %80, %396 ], [ %496, %490 ], [ %509, %519 ], [ %509, %516 ], [ %509, %520 ]
  %533 = phi ptr [ %79, %396 ], [ %410, %490 ], [ %9, %519 ], [ %410, %516 ], [ %521, %520 ]
  %534 = phi ptr [ %78, %396 ], [ %409, %490 ], [ %409, %519 ], [ %9, %516 ], [ %522, %520 ]
  store i32 0, ptr %533, align 4, !tbaa !25
  store i32 0, ptr %534, align 4, !tbaa !25
  %535 = add i32 %532, -8
  store i32 %535, ptr %12, align 4, !tbaa !19
  br label %536

536:                                              ; preds = %.loopexit72, %387, %284, %183
  %537 = phi i32 [ %531, %.loopexit72 ], [ 1, %183 ], [ %288, %284 ], [ %391, %387 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %538

538:                                              ; preds = %536, %8
  %539 = phi i32 [ %537, %536 ], [ 0, %8 ]
  ret i32 %539
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i32 @ZSTD_btGetAllMatches_noDict_6(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %538, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %.preheader82, label %34

.preheader82:                                     ; preds = %17, %.preheader82
  %23 = phi i32 [ %27, %.preheader82 ], [ %13, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 %24
  %26 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %25, ptr noundef %4, i32 noundef %21, i32 noundef 6, i32 noundef 0)
  %27 = add i32 %26, %23
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %.preheader82, label %29, !llvm.loop !20

29:                                               ; preds = %.preheader82
  %30 = load ptr, ptr %10, align 8, !tbaa !18
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %18, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %21, %17 ]
  %36 = phi ptr [ %30, %29 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %39 = load i32, ptr %38, align 4, !tbaa !24
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 4095)
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %42 = load i32, ptr %41, align 4, !tbaa !108
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %44 = load ptr, ptr %43, align 8, !tbaa !107
  %45 = load i64, ptr %3, align 1
  %46 = mul i64 %45, -3523014627193847808
  %47 = sub i32 64, %42
  %48 = zext nneg i32 %47 to i64
  %49 = lshr i64 %46, %48
  %50 = getelementptr inbounds nuw [4 x i8], ptr %44, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !25
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %55 = load i32, ptr %54, align 4, !tbaa !110
  %56 = add i32 %55, -1
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %60 = load i32, ptr %59, align 8, !tbaa !22
  %61 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %58)
  %62 = load i32, ptr %37, align 8, !tbaa !112
  %63 = getelementptr i8, ptr %1, i64 28
  %64 = load i32, ptr %63, align 4, !tbaa !106
  %65 = getelementptr i8, ptr %1, i64 40
  %66 = load i32, ptr %65, align 8, !tbaa !113
  %67 = shl nuw i32 1, %62
  %68 = sub i32 %35, %64
  %69 = icmp ugt i32 %68, %67
  %70 = sub i32 %35, %67
  %71 = icmp eq i32 %66, 0
  %72 = select i1 %71, i1 %69, i1 false
  %73 = select i1 %72, i32 %70, i32 %64
  %74 = tail call i32 @llvm.umax.i32(i32 %73, i32 1)
  %75 = and i32 %35, %58
  %76 = shl nuw i32 %75, 1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %77
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 4
  %80 = add i32 %35, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %82 = load i32, ptr %81, align 4, !tbaa !114
  %83 = shl nuw i32 1, %82
  %84 = add i32 %7, -1
  %85 = zext i32 %84 to i64
  %86 = icmp ult i32 %6, -3
  %87 = trunc i64 %45 to i32
  br i1 %86, label %88, label %396

88:                                               ; preds = %34
  %89 = sub i32 %35, %60
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
  %102 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %96
  %103 = load i32, ptr %102, align 4, !tbaa !25
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i32 [ %100, %98 ], [ %103, %101 ]
  %106 = add i32 %105, -1
  %107 = icmp ult i32 %106, %89
  br i1 %107, label %108, label %190

108:                                              ; preds = %104
  %109 = sub i32 %35, %105
  %110 = icmp uge i32 %109, %73
  %111 = zext i32 %105 to i64
  %112 = sub nsw i64 0, %111
  %113 = getelementptr inbounds i8, ptr %3, i64 %112
  %114 = load i32, ptr %113, align 1, !tbaa !25
  %115 = icmp eq i32 %114, %87
  %116 = and i1 %110, %115
  br i1 %116, label %117, label %190

117:                                              ; preds = %108
  %118 = getelementptr inbounds i8, ptr %90, i64 %112
  br i1 %92, label %119, label %.loopexit81

119:                                              ; preds = %117
  %120 = load i64, ptr %118, align 1, !tbaa !30
  %121 = load i64, ptr %90, align 1, !tbaa !30
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %.preheader80, label %123

123:                                              ; preds = %119
  %124 = xor i64 %121, %120
  %125 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %124, i1 true)
  %126 = lshr i64 %125, 3
  br label %178

.preheader80:                                     ; preds = %119, %132
  %127 = phi ptr [ %130, %132 ], [ %118, %119 ]
  %128 = phi ptr [ %129, %132 ], [ %90, %119 ]
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %130 = getelementptr inbounds nuw i8, ptr %127, i64 8
  %131 = icmp ult ptr %129, %91
  br i1 %131, label %132, label %.loopexit81

132:                                              ; preds = %.preheader80
  %133 = load i64, ptr %130, align 1, !tbaa !30
  %134 = load i64, ptr %129, align 1, !tbaa !30
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %.preheader80, label %136

136:                                              ; preds = %132
  %137 = xor i64 %134, %133
  %138 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %137, i1 true)
  %139 = lshr i64 %138, 3
  %140 = getelementptr inbounds nuw i8, ptr %129, i64 %139
  %141 = ptrtoint ptr %140 to i64
  %142 = sub i64 %141, %95
  br label %178

.loopexit81:                                      ; preds = %.preheader80, %117
  %143 = phi ptr [ %118, %117 ], [ %130, %.preheader80 ]
  %144 = phi ptr [ %90, %117 ], [ %129, %.preheader80 ]
  %145 = icmp ult ptr %144, %93
  br i1 %145, label %146, label %153

146:                                              ; preds = %.loopexit81
  %147 = load i32, ptr %143, align 1, !tbaa !25
  %148 = load i32, ptr %144, align 1, !tbaa !25
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %152 = getelementptr inbounds nuw i8, ptr %143, i64 4
  br label %153

153:                                              ; preds = %150, %146, %.loopexit81
  %154 = phi ptr [ %152, %150 ], [ %143, %146 ], [ %143, %.loopexit81 ]
  %155 = phi ptr [ %151, %150 ], [ %144, %146 ], [ %144, %.loopexit81 ]
  %156 = icmp ult ptr %155, %94
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i16, ptr %154, align 1, !tbaa !115
  %159 = load i16, ptr %155, align 1, !tbaa !115
  %160 = icmp eq i16 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = getelementptr inbounds nuw i8, ptr %155, i64 2
  %163 = getelementptr inbounds nuw i8, ptr %154, i64 2
  br label %164

164:                                              ; preds = %161, %157, %153
  %165 = phi ptr [ %163, %161 ], [ %154, %157 ], [ %154, %153 ]
  %166 = phi ptr [ %162, %161 ], [ %155, %157 ], [ %155, %153 ]
  %167 = icmp ult ptr %166, %4
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i8, ptr %165, align 1, !tbaa !42
  %170 = load i8, ptr %166, align 1, !tbaa !42
  %171 = icmp eq i8 %169, %170
  %172 = zext i1 %171 to i64
  %173 = getelementptr inbounds nuw i8, ptr %166, i64 %172
  br label %174

174:                                              ; preds = %168, %164
  %175 = phi ptr [ %166, %164 ], [ %173, %168 ]
  %176 = ptrtoint ptr %175 to i64
  %177 = sub i64 %176, %95
  br label %178

178:                                              ; preds = %174, %136, %123
  %179 = phi i64 [ %177, %174 ], [ %126, %123 ], [ %142, %136 ]
  %180 = trunc i64 %179 to i32
  %181 = add i32 %180, 4
  %182 = icmp ult i32 %84, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = zext i32 %181 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %181, ptr %185, align 4, !tbaa !44
  %186 = icmp ule i32 %181, %40
  %187 = getelementptr inbounds nuw i8, ptr %3, i64 %184
  %188 = icmp ne ptr %187, %4
  %189 = and i1 %186, %188
  br i1 %189, label %190, label %536

190:                                              ; preds = %183, %178, %108, %104
  %191 = phi i32 [ 1, %183 ], [ 0, %178 ], [ 0, %108 ], [ 0, %104 ]
  %192 = phi i64 [ %184, %183 ], [ %85, %178 ], [ %85, %108 ], [ %85, %104 ]
  %193 = add nuw nsw i64 %96, 1
  %194 = icmp eq i64 %193, 3
  br i1 %194, label %198, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %193
  %197 = load i32, ptr %196, align 4, !tbaa !25
  br label %201

198:                                              ; preds = %190
  %199 = load i32, ptr %5, align 4, !tbaa !25
  %200 = add i32 %199, -1
  br label %201

201:                                              ; preds = %198, %195
  %202 = phi i32 [ %200, %198 ], [ %197, %195 ]
  %203 = add i32 %202, -1
  %204 = icmp ult i32 %203, %89
  br i1 %204, label %205, label %280

205:                                              ; preds = %201
  %206 = sub i32 %35, %202
  %207 = icmp uge i32 %206, %73
  %208 = load i32, ptr %3, align 1, !tbaa !25
  %209 = zext i32 %202 to i64
  %210 = sub nsw i64 0, %209
  %211 = getelementptr inbounds i8, ptr %3, i64 %210
  %212 = load i32, ptr %211, align 1, !tbaa !25
  %213 = icmp eq i32 %208, %212
  %214 = and i1 %207, %213
  br i1 %214, label %215, label %280

215:                                              ; preds = %205
  %216 = getelementptr inbounds i8, ptr %90, i64 %210
  br i1 %92, label %217, label %.loopexit79

217:                                              ; preds = %215
  %218 = load i64, ptr %216, align 1, !tbaa !30
  %219 = load i64, ptr %90, align 1, !tbaa !30
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %.preheader78, label %221

221:                                              ; preds = %217
  %222 = xor i64 %219, %218
  %223 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %222, i1 true)
  %224 = lshr i64 %223, 3
  br label %276

.preheader78:                                     ; preds = %217, %265
  %225 = phi ptr [ %228, %265 ], [ %216, %217 ]
  %226 = phi ptr [ %227, %265 ], [ %90, %217 ]
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 8
  %228 = getelementptr inbounds nuw i8, ptr %225, i64 8
  %229 = icmp ult ptr %227, %91
  br i1 %229, label %265, label %.loopexit79

.loopexit79:                                      ; preds = %.preheader78, %215
  %230 = phi ptr [ %216, %215 ], [ %228, %.preheader78 ]
  %231 = phi ptr [ %90, %215 ], [ %227, %.preheader78 ]
  %232 = icmp ult ptr %231, %93
  br i1 %232, label %233, label %240

233:                                              ; preds = %.loopexit79
  %234 = load i32, ptr %230, align 1, !tbaa !25
  %235 = load i32, ptr %231, align 1, !tbaa !25
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  %238 = getelementptr inbounds nuw i8, ptr %231, i64 4
  %239 = getelementptr inbounds nuw i8, ptr %230, i64 4
  br label %240

240:                                              ; preds = %237, %233, %.loopexit79
  %241 = phi ptr [ %239, %237 ], [ %230, %233 ], [ %230, %.loopexit79 ]
  %242 = phi ptr [ %238, %237 ], [ %231, %233 ], [ %231, %.loopexit79 ]
  %243 = icmp ult ptr %242, %94
  br i1 %243, label %244, label %251

244:                                              ; preds = %240
  %245 = load i16, ptr %241, align 1, !tbaa !115
  %246 = load i16, ptr %242, align 1, !tbaa !115
  %247 = icmp eq i16 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = getelementptr inbounds nuw i8, ptr %242, i64 2
  %250 = getelementptr inbounds nuw i8, ptr %241, i64 2
  br label %251

251:                                              ; preds = %248, %244, %240
  %252 = phi ptr [ %250, %248 ], [ %241, %244 ], [ %241, %240 ]
  %253 = phi ptr [ %249, %248 ], [ %242, %244 ], [ %242, %240 ]
  %254 = icmp ult ptr %253, %4
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = load i8, ptr %252, align 1, !tbaa !42
  %257 = load i8, ptr %253, align 1, !tbaa !42
  %258 = icmp eq i8 %256, %257
  %259 = zext i1 %258 to i64
  %260 = getelementptr inbounds nuw i8, ptr %253, i64 %259
  br label %261

261:                                              ; preds = %255, %251
  %262 = phi ptr [ %253, %251 ], [ %260, %255 ]
  %263 = ptrtoint ptr %262 to i64
  %264 = sub i64 %263, %95
  br label %276

265:                                              ; preds = %.preheader78
  %266 = load i64, ptr %228, align 1, !tbaa !30
  %267 = load i64, ptr %227, align 1, !tbaa !30
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %.preheader78, label %269

269:                                              ; preds = %265
  %270 = xor i64 %267, %266
  %271 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %270, i1 true)
  %272 = lshr i64 %271, 3
  %273 = getelementptr inbounds nuw i8, ptr %227, i64 %272
  %274 = ptrtoint ptr %273 to i64
  %275 = sub i64 %274, %95
  br label %276

276:                                              ; preds = %269, %261, %221
  %277 = phi i64 [ %264, %261 ], [ %224, %221 ], [ %275, %269 ]
  %278 = trunc i64 %277 to i32
  %279 = add i32 %278, 4
  br label %280

280:                                              ; preds = %276, %205, %201
  %281 = phi i32 [ %279, %276 ], [ 0, %205 ], [ 0, %201 ]
  %282 = zext i32 %281 to i64
  %283 = icmp samesign ult i64 %192, %282
  br i1 %283, label %284, label %293

284:                                              ; preds = %280
  %285 = zext nneg i32 %191 to i64
  %286 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %285
  store i32 2, ptr %286, align 4, !tbaa !46
  %287 = getelementptr inbounds nuw i8, ptr %286, i64 4
  store i32 %281, ptr %287, align 4, !tbaa !44
  %288 = add nuw nsw i32 %191, 1
  %289 = icmp ule i32 %281, %40
  %290 = getelementptr inbounds nuw i8, ptr %3, i64 %282
  %291 = icmp ne ptr %290, %4
  %292 = and i1 %289, %291
  br i1 %292, label %293, label %536

293:                                              ; preds = %284, %280
  %294 = phi i32 [ %288, %284 ], [ %191, %280 ]
  %295 = phi i64 [ %282, %284 ], [ %192, %280 ]
  %296 = add nuw nsw i64 %96, 2
  %297 = icmp eq i64 %296, 3
  br i1 %297, label %301, label %298

298:                                              ; preds = %293
  %299 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %296
  %300 = load i32, ptr %299, align 4, !tbaa !25
  br label %304

301:                                              ; preds = %293
  %302 = load i32, ptr %5, align 4, !tbaa !25
  %303 = add i32 %302, -1
  br label %304

304:                                              ; preds = %301, %298
  %305 = phi i32 [ %303, %301 ], [ %300, %298 ]
  %306 = add i32 %305, -1
  %307 = icmp ult i32 %306, %89
  br i1 %307, label %308, label %383

308:                                              ; preds = %304
  %309 = sub i32 %35, %305
  %310 = icmp uge i32 %309, %73
  %311 = load i32, ptr %3, align 1, !tbaa !25
  %312 = zext i32 %305 to i64
  %313 = sub nsw i64 0, %312
  %314 = getelementptr inbounds i8, ptr %3, i64 %313
  %315 = load i32, ptr %314, align 1, !tbaa !25
  %316 = icmp eq i32 %311, %315
  %317 = and i1 %310, %316
  br i1 %317, label %318, label %383

318:                                              ; preds = %308
  %319 = getelementptr inbounds i8, ptr %90, i64 %313
  br i1 %92, label %320, label %.loopexit77

320:                                              ; preds = %318
  %321 = load i64, ptr %319, align 1, !tbaa !30
  %322 = load i64, ptr %90, align 1, !tbaa !30
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %.preheader76, label %324

324:                                              ; preds = %320
  %325 = xor i64 %322, %321
  %326 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %325, i1 true)
  %327 = lshr i64 %326, 3
  br label %379

.preheader76:                                     ; preds = %320, %368
  %328 = phi ptr [ %331, %368 ], [ %319, %320 ]
  %329 = phi ptr [ %330, %368 ], [ %90, %320 ]
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 8
  %331 = getelementptr inbounds nuw i8, ptr %328, i64 8
  %332 = icmp ult ptr %330, %91
  br i1 %332, label %368, label %.loopexit77

.loopexit77:                                      ; preds = %.preheader76, %318
  %333 = phi ptr [ %319, %318 ], [ %331, %.preheader76 ]
  %334 = phi ptr [ %90, %318 ], [ %330, %.preheader76 ]
  %335 = icmp ult ptr %334, %93
  br i1 %335, label %336, label %343

336:                                              ; preds = %.loopexit77
  %337 = load i32, ptr %333, align 1, !tbaa !25
  %338 = load i32, ptr %334, align 1, !tbaa !25
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %343

340:                                              ; preds = %336
  %341 = getelementptr inbounds nuw i8, ptr %334, i64 4
  %342 = getelementptr inbounds nuw i8, ptr %333, i64 4
  br label %343

343:                                              ; preds = %340, %336, %.loopexit77
  %344 = phi ptr [ %342, %340 ], [ %333, %336 ], [ %333, %.loopexit77 ]
  %345 = phi ptr [ %341, %340 ], [ %334, %336 ], [ %334, %.loopexit77 ]
  %346 = icmp ult ptr %345, %94
  br i1 %346, label %347, label %354

347:                                              ; preds = %343
  %348 = load i16, ptr %344, align 1, !tbaa !115
  %349 = load i16, ptr %345, align 1, !tbaa !115
  %350 = icmp eq i16 %348, %349
  br i1 %350, label %351, label %354

351:                                              ; preds = %347
  %352 = getelementptr inbounds nuw i8, ptr %345, i64 2
  %353 = getelementptr inbounds nuw i8, ptr %344, i64 2
  br label %354

354:                                              ; preds = %351, %347, %343
  %355 = phi ptr [ %353, %351 ], [ %344, %347 ], [ %344, %343 ]
  %356 = phi ptr [ %352, %351 ], [ %345, %347 ], [ %345, %343 ]
  %357 = icmp ult ptr %356, %4
  br i1 %357, label %358, label %364

358:                                              ; preds = %354
  %359 = load i8, ptr %355, align 1, !tbaa !42
  %360 = load i8, ptr %356, align 1, !tbaa !42
  %361 = icmp eq i8 %359, %360
  %362 = zext i1 %361 to i64
  %363 = getelementptr inbounds nuw i8, ptr %356, i64 %362
  br label %364

364:                                              ; preds = %358, %354
  %365 = phi ptr [ %356, %354 ], [ %363, %358 ]
  %366 = ptrtoint ptr %365 to i64
  %367 = sub i64 %366, %95
  br label %379

368:                                              ; preds = %.preheader76
  %369 = load i64, ptr %331, align 1, !tbaa !30
  %370 = load i64, ptr %330, align 1, !tbaa !30
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %.preheader76, label %372

372:                                              ; preds = %368
  %373 = xor i64 %370, %369
  %374 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %373, i1 true)
  %375 = lshr i64 %374, 3
  %376 = getelementptr inbounds nuw i8, ptr %330, i64 %375
  %377 = ptrtoint ptr %376 to i64
  %378 = sub i64 %377, %95
  br label %379

379:                                              ; preds = %372, %364, %324
  %380 = phi i64 [ %367, %364 ], [ %327, %324 ], [ %378, %372 ]
  %381 = trunc i64 %380 to i32
  %382 = add i32 %381, 4
  br label %383

383:                                              ; preds = %379, %308, %304
  %384 = phi i32 [ %382, %379 ], [ 0, %308 ], [ 0, %304 ]
  %385 = zext i32 %384 to i64
  %386 = icmp samesign ult i64 %295, %385
  br i1 %386, label %387, label %396

387:                                              ; preds = %383
  %388 = zext nneg i32 %294 to i64
  %389 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %388
  store i32 3, ptr %389, align 4, !tbaa !46
  %390 = getelementptr inbounds nuw i8, ptr %389, i64 4
  store i32 %384, ptr %390, align 4, !tbaa !44
  %391 = add nuw nsw i32 %294, 1
  %392 = icmp ule i32 %384, %40
  %393 = getelementptr inbounds nuw i8, ptr %3, i64 %385
  %394 = icmp ne ptr %393, %4
  %395 = and i1 %392, %394
  br i1 %395, label %396, label %536

396:                                              ; preds = %387, %383, %34
  %397 = phi i64 [ %85, %34 ], [ %385, %387 ], [ %295, %383 ]
  %398 = phi i32 [ 0, %34 ], [ %391, %387 ], [ %294, %383 ]
  store i32 %35, ptr %50, align 4, !tbaa !25
  %399 = icmp ult i32 %51, %74
  br i1 %399, label %.loopexit72, label %400

400:                                              ; preds = %396
  %401 = getelementptr inbounds i8, ptr %4, i64 -7
  %402 = getelementptr inbounds i8, ptr %4, i64 -3
  %403 = getelementptr inbounds i8, ptr %4, i64 -1
  %404 = add i32 %35, 3
  br label %405

405:                                              ; preds = %520, %400
  %406 = phi i32 [ %51, %400 ], [ %526, %520 ]
  %407 = phi i64 [ 0, %400 ], [ %524, %520 ]
  %408 = phi i64 [ 0, %400 ], [ %523, %520 ]
  %409 = phi ptr [ %78, %400 ], [ %522, %520 ]
  %410 = phi ptr [ %79, %400 ], [ %521, %520 ]
  %411 = phi i32 [ %80, %400 ], [ %509, %520 ]
  %412 = phi i32 [ %398, %400 ], [ %508, %520 ]
  %413 = phi i32 [ %83, %400 ], [ %527, %520 ]
  %414 = phi i64 [ %397, %400 ], [ %507, %520 ]
  %415 = and i32 %406, %58
  %416 = shl nuw i32 %415, 1
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %417
  %419 = tail call i64 @llvm.umin.i64(i64 %407, i64 %408)
  %420 = zext i32 %406 to i64
  %421 = getelementptr inbounds nuw i8, ptr %36, i64 %420
  %422 = getelementptr inbounds nuw i8, ptr %3, i64 %419
  %423 = getelementptr inbounds nuw i8, ptr %421, i64 %419
  %424 = icmp ult ptr %422, %401
  br i1 %424, label %425, label %.loopexit

425:                                              ; preds = %405
  %426 = load i64, ptr %423, align 1, !tbaa !30
  %427 = load i64, ptr %422, align 1, !tbaa !30
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %.preheader, label %429

429:                                              ; preds = %425
  %430 = xor i64 %427, %426
  %431 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %430, i1 true)
  %432 = lshr i64 %431, 3
  br label %486

.preheader:                                       ; preds = %425, %438
  %433 = phi ptr [ %436, %438 ], [ %423, %425 ]
  %434 = phi ptr [ %435, %438 ], [ %422, %425 ]
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 8
  %436 = getelementptr inbounds nuw i8, ptr %433, i64 8
  %437 = icmp ult ptr %435, %401
  br i1 %437, label %438, label %.loopexit

438:                                              ; preds = %.preheader
  %439 = load i64, ptr %436, align 1, !tbaa !30
  %440 = load i64, ptr %435, align 1, !tbaa !30
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %.preheader, label %442

442:                                              ; preds = %438
  %443 = xor i64 %440, %439
  %444 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %443, i1 true)
  %445 = lshr i64 %444, 3
  %446 = getelementptr inbounds nuw i8, ptr %435, i64 %445
  %447 = ptrtoint ptr %446 to i64
  %448 = ptrtoint ptr %422 to i64
  %449 = sub i64 %447, %448
  br label %486

.loopexit:                                        ; preds = %.preheader, %405
  %450 = phi ptr [ %423, %405 ], [ %436, %.preheader ]
  %451 = phi ptr [ %422, %405 ], [ %435, %.preheader ]
  %452 = icmp ult ptr %451, %402
  br i1 %452, label %453, label %460

453:                                              ; preds = %.loopexit
  %454 = load i32, ptr %450, align 1, !tbaa !25
  %455 = load i32, ptr %451, align 1, !tbaa !25
  %456 = icmp eq i32 %454, %455
  br i1 %456, label %457, label %460

457:                                              ; preds = %453
  %458 = getelementptr inbounds nuw i8, ptr %451, i64 4
  %459 = getelementptr inbounds nuw i8, ptr %450, i64 4
  br label %460

460:                                              ; preds = %457, %453, %.loopexit
  %461 = phi ptr [ %459, %457 ], [ %450, %453 ], [ %450, %.loopexit ]
  %462 = phi ptr [ %458, %457 ], [ %451, %453 ], [ %451, %.loopexit ]
  %463 = icmp ult ptr %462, %403
  br i1 %463, label %464, label %471

464:                                              ; preds = %460
  %465 = load i16, ptr %461, align 1, !tbaa !115
  %466 = load i16, ptr %462, align 1, !tbaa !115
  %467 = icmp eq i16 %465, %466
  br i1 %467, label %468, label %471

468:                                              ; preds = %464
  %469 = getelementptr inbounds nuw i8, ptr %462, i64 2
  %470 = getelementptr inbounds nuw i8, ptr %461, i64 2
  br label %471

471:                                              ; preds = %468, %464, %460
  %472 = phi ptr [ %470, %468 ], [ %461, %464 ], [ %461, %460 ]
  %473 = phi ptr [ %469, %468 ], [ %462, %464 ], [ %462, %460 ]
  %474 = icmp ult ptr %473, %4
  br i1 %474, label %475, label %481

475:                                              ; preds = %471
  %476 = load i8, ptr %472, align 1, !tbaa !42
  %477 = load i8, ptr %473, align 1, !tbaa !42
  %478 = icmp eq i8 %476, %477
  %479 = zext i1 %478 to i64
  %480 = getelementptr inbounds nuw i8, ptr %473, i64 %479
  br label %481

481:                                              ; preds = %475, %471
  %482 = phi ptr [ %473, %471 ], [ %480, %475 ]
  %483 = ptrtoint ptr %482 to i64
  %484 = ptrtoint ptr %422 to i64
  %485 = sub i64 %483, %484
  br label %486

486:                                              ; preds = %481, %442, %429
  %487 = phi i64 [ %485, %481 ], [ %432, %429 ], [ %449, %442 ]
  %488 = add i64 %487, %419
  %489 = icmp ugt i64 %488, %414
  br i1 %489, label %490, label %506

490:                                              ; preds = %486
  %491 = sub i32 %411, %406
  %492 = zext i32 %491 to i64
  %493 = icmp ugt i64 %488, %492
  %494 = trunc i64 %488 to i32
  %495 = add i32 %406, %494
  %496 = select i1 %493, i32 %495, i32 %411
  %497 = sub i32 %404, %406
  %498 = zext i32 %412 to i64
  %499 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %498
  store i32 %497, ptr %499, align 4, !tbaa !46
  %500 = getelementptr inbounds nuw i8, ptr %499, i64 4
  store i32 %494, ptr %500, align 4, !tbaa !44
  %501 = add i32 %412, 1
  %502 = icmp ugt i64 %488, 4096
  %503 = getelementptr inbounds nuw i8, ptr %3, i64 %488
  %504 = icmp eq ptr %503, %4
  %505 = or i1 %502, %504
  br i1 %505, label %.loopexit72, label %506

506:                                              ; preds = %490, %486
  %507 = phi i64 [ %488, %490 ], [ %414, %486 ]
  %508 = phi i32 [ %501, %490 ], [ %412, %486 ]
  %509 = phi i32 [ %496, %490 ], [ %411, %486 ]
  %510 = getelementptr inbounds nuw i8, ptr %421, i64 %488
  %511 = load i8, ptr %510, align 1, !tbaa !42
  %512 = getelementptr inbounds nuw i8, ptr %3, i64 %488
  %513 = load i8, ptr %512, align 1, !tbaa !42
  %514 = icmp ult i8 %511, %513
  %515 = icmp ugt i32 %406, %61
  br i1 %514, label %516, label %519

516:                                              ; preds = %506
  store i32 %406, ptr %409, align 4, !tbaa !25
  br i1 %515, label %517, label %.loopexit72

517:                                              ; preds = %516
  %518 = getelementptr inbounds nuw i8, ptr %418, i64 4
  br label %520

519:                                              ; preds = %506
  store i32 %406, ptr %410, align 4, !tbaa !25
  br i1 %515, label %520, label %.loopexit72

520:                                              ; preds = %519, %517
  %521 = phi ptr [ %410, %517 ], [ %418, %519 ]
  %522 = phi ptr [ %518, %517 ], [ %409, %519 ]
  %523 = phi i64 [ %408, %517 ], [ %488, %519 ]
  %524 = phi i64 [ %488, %517 ], [ %407, %519 ]
  %525 = phi ptr [ %518, %517 ], [ %418, %519 ]
  %526 = load i32, ptr %525, align 4, !tbaa !25
  %527 = add i32 %413, -1
  %528 = icmp ne i32 %527, 0
  %529 = icmp uge i32 %526, %74
  %530 = select i1 %528, i1 %529, i1 false
  br i1 %530, label %405, label %.loopexit72, !llvm.loop !139

.loopexit72:                                      ; preds = %520, %519, %516, %490, %396
  %531 = phi i32 [ %398, %396 ], [ %501, %490 ], [ %508, %519 ], [ %508, %516 ], [ %508, %520 ]
  %532 = phi i32 [ %80, %396 ], [ %496, %490 ], [ %509, %519 ], [ %509, %516 ], [ %509, %520 ]
  %533 = phi ptr [ %79, %396 ], [ %410, %490 ], [ %9, %519 ], [ %410, %516 ], [ %521, %520 ]
  %534 = phi ptr [ %78, %396 ], [ %409, %490 ], [ %409, %519 ], [ %9, %516 ], [ %522, %520 ]
  store i32 0, ptr %533, align 4, !tbaa !25
  store i32 0, ptr %534, align 4, !tbaa !25
  %535 = add i32 %532, -8
  store i32 %535, ptr %12, align 4, !tbaa !19
  br label %536

536:                                              ; preds = %.loopexit72, %387, %284, %183
  %537 = phi i32 [ %531, %.loopexit72 ], [ 1, %183 ], [ %288, %284 ], [ %391, %387 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %538

538:                                              ; preds = %536, %8
  %539 = phi i32 [ %537, %536 ], [ 0, %8 ]
  ret i32 %539
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i32 @ZSTD_btGetAllMatches_extDict_3(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %554, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %.preheader79, label %34

.preheader79:                                     ; preds = %17, %.preheader79
  %23 = phi i32 [ %27, %.preheader79 ], [ %13, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 %24
  %26 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %25, ptr noundef %4, i32 noundef %21, i32 noundef 3, i32 noundef 1)
  %27 = add i32 %26, %23
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %.preheader79, label %29, !llvm.loop !20

29:                                               ; preds = %.preheader79
  %30 = load ptr, ptr %10, align 8, !tbaa !18
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %18, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %21, %17 ]
  %36 = phi i64 [ %32, %29 ], [ %20, %17 ]
  %37 = phi ptr [ %30, %29 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %43 = load i32, ptr %42, align 4, !tbaa !108
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !107
  %46 = load i32, ptr %3, align 1, !tbaa !25
  %47 = mul i32 %46, -1640531535
  %48 = sub i32 32, %43
  %49 = lshr i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %54 = load ptr, ptr %53, align 8, !tbaa !109
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %56 = load i32, ptr %55, align 4, !tbaa !110
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %61 = load ptr, ptr %60, align 8, !tbaa !111
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %63 = load i32, ptr %62, align 8, !tbaa !22
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %66 = getelementptr inbounds nuw i8, ptr %37, i64 %64
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %59)
  %68 = load i32, ptr %38, align 8, !tbaa !112
  %69 = getelementptr i8, ptr %1, i64 28
  %70 = load i32, ptr %69, align 4, !tbaa !106
  %71 = getelementptr i8, ptr %1, i64 40
  %72 = load i32, ptr %71, align 8, !tbaa !113
  %73 = shl nuw i32 1, %68
  %74 = sub i32 %35, %70
  %75 = icmp ugt i32 %74, %73
  %76 = sub i32 %35, %73
  %77 = icmp eq i32 %72, 0
  %78 = select i1 %77, i1 %75, i1 false
  %79 = select i1 %78, i32 %76, i32 %70
  %80 = tail call i32 @llvm.umax.i32(i32 %79, i32 1)
  %81 = and i32 %35, %59
  %82 = shl nuw i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %83
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 4
  %86 = add i32 %35, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %88 = load i32, ptr %87, align 4, !tbaa !114
  %89 = shl nuw i32 1, %88
  %90 = add i32 %7, -1
  %91 = zext i32 %90 to i64
  %92 = icmp ult i32 %6, -3
  br i1 %92, label %93, label %.loopexit78

93:                                               ; preds = %34
  %94 = add nuw i32 %6, 3
  %95 = sub i32 %35, %63
  %96 = sub i32 %35, %79
  %97 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %98 = getelementptr inbounds i8, ptr %4, i64 -7
  %99 = icmp ult ptr %97, %98
  %100 = getelementptr inbounds i8, ptr %4, i64 -3
  %101 = getelementptr inbounds i8, ptr %4, i64 -1
  %102 = ptrtoint ptr %97 to i64
  %103 = zext i32 %6 to i64
  %104 = zext i32 %94 to i64
  %invariant.op = sub i32 1, %6
  br label %105

105:                                              ; preds = %229, %93
  %106 = phi i64 [ %103, %93 ], [ %232, %229 ]
  %107 = phi i32 [ 0, %93 ], [ %230, %229 ]
  %108 = phi i64 [ %91, %93 ], [ %231, %229 ]
  %109 = icmp eq i64 %106, 3
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, ptr %5, align 4, !tbaa !25
  %112 = add i32 %111, -1
  br label %116

113:                                              ; preds = %105
  %114 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %106
  %115 = load i32, ptr %114, align 4, !tbaa !25
  br label %116

116:                                              ; preds = %113, %110
  %117 = phi i32 [ %112, %110 ], [ %115, %113 ]
  %118 = sub i32 %35, %117
  %119 = add i32 %117, -1
  %120 = icmp ult i32 %119, %95
  br i1 %120, label %121, label %197

121:                                              ; preds = %116
  %122 = icmp uge i32 %118, %79
  %123 = load i32, ptr %3, align 1, !tbaa !25
  %124 = zext i32 %117 to i64
  %125 = sub nsw i64 0, %124
  %126 = getelementptr inbounds i8, ptr %3, i64 %125
  %127 = load i32, ptr %126, align 1, !tbaa !25
  %128 = xor i32 %127, %123
  %129 = and i32 %128, 16777215
  %130 = icmp eq i32 %129, 0
  %131 = and i1 %122, %130
  br i1 %131, label %132, label %215

132:                                              ; preds = %121
  %133 = getelementptr inbounds i8, ptr %97, i64 %125
  br i1 %99, label %134, label %.loopexit76

134:                                              ; preds = %132
  %135 = load i64, ptr %133, align 1, !tbaa !30
  %136 = load i64, ptr %97, align 1, !tbaa !30
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %.preheader75, label %138

138:                                              ; preds = %134
  %139 = xor i64 %136, %135
  %140 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %139, i1 true)
  %141 = lshr i64 %140, 3
  br label %193

.preheader75:                                     ; preds = %134, %147
  %142 = phi ptr [ %145, %147 ], [ %133, %134 ]
  %143 = phi ptr [ %144, %147 ], [ %97, %134 ]
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 8
  %145 = getelementptr inbounds nuw i8, ptr %142, i64 8
  %146 = icmp ult ptr %144, %98
  br i1 %146, label %147, label %.loopexit76

147:                                              ; preds = %.preheader75
  %148 = load i64, ptr %145, align 1, !tbaa !30
  %149 = load i64, ptr %144, align 1, !tbaa !30
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %.preheader75, label %151

151:                                              ; preds = %147
  %152 = xor i64 %149, %148
  %153 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %152, i1 true)
  %154 = lshr i64 %153, 3
  %155 = getelementptr inbounds nuw i8, ptr %144, i64 %154
  %156 = ptrtoint ptr %155 to i64
  %157 = sub i64 %156, %102
  br label %193

.loopexit76:                                      ; preds = %.preheader75, %132
  %158 = phi ptr [ %133, %132 ], [ %145, %.preheader75 ]
  %159 = phi ptr [ %97, %132 ], [ %144, %.preheader75 ]
  %160 = icmp ult ptr %159, %100
  br i1 %160, label %161, label %168

161:                                              ; preds = %.loopexit76
  %162 = load i32, ptr %158, align 1, !tbaa !25
  %163 = load i32, ptr %159, align 1, !tbaa !25
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = getelementptr inbounds nuw i8, ptr %159, i64 4
  %167 = getelementptr inbounds nuw i8, ptr %158, i64 4
  br label %168

168:                                              ; preds = %165, %161, %.loopexit76
  %169 = phi ptr [ %167, %165 ], [ %158, %161 ], [ %158, %.loopexit76 ]
  %170 = phi ptr [ %166, %165 ], [ %159, %161 ], [ %159, %.loopexit76 ]
  %171 = icmp ult ptr %170, %101
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  %173 = load i16, ptr %169, align 1, !tbaa !115
  %174 = load i16, ptr %170, align 1, !tbaa !115
  %175 = icmp eq i16 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = getelementptr inbounds nuw i8, ptr %170, i64 2
  %178 = getelementptr inbounds nuw i8, ptr %169, i64 2
  br label %179

179:                                              ; preds = %176, %172, %168
  %180 = phi ptr [ %178, %176 ], [ %169, %172 ], [ %169, %168 ]
  %181 = phi ptr [ %177, %176 ], [ %170, %172 ], [ %170, %168 ]
  %182 = icmp ult ptr %181, %4
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load i8, ptr %180, align 1, !tbaa !42
  %185 = load i8, ptr %181, align 1, !tbaa !42
  %186 = icmp eq i8 %184, %185
  %187 = zext i1 %186 to i64
  %188 = getelementptr inbounds nuw i8, ptr %181, i64 %187
  br label %189

189:                                              ; preds = %183, %179
  %190 = phi ptr [ %181, %179 ], [ %188, %183 ]
  %191 = ptrtoint ptr %190 to i64
  %192 = sub i64 %191, %102
  br label %193

193:                                              ; preds = %189, %151, %138
  %194 = phi i64 [ %192, %189 ], [ %141, %138 ], [ %157, %151 ]
  %195 = trunc i64 %194 to i32
  %196 = add i32 %195, 3
  br label %215

197:                                              ; preds = %116
  %198 = zext i32 %118 to i64
  %199 = getelementptr inbounds nuw i8, ptr %61, i64 %198
  %200 = icmp uge i32 %119, %96
  %201 = sub i32 %118, %63
  %202 = icmp ugt i32 %201, -4
  %203 = select i1 %200, i1 true, i1 %202
  br i1 %203, label %215, label %204

204:                                              ; preds = %197
  %205 = load i32, ptr %3, align 1, !tbaa !25
  %206 = load i32, ptr %199, align 1, !tbaa !25
  %207 = xor i32 %206, %205
  %208 = and i32 %207, 16777215
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = getelementptr inbounds nuw i8, ptr %199, i64 3
  %212 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %97, ptr noundef nonnull %211, ptr noundef %4, ptr noundef nonnull %65, ptr noundef %66)
  %213 = trunc i64 %212 to i32
  %214 = add i32 %213, 3
  br label %215

215:                                              ; preds = %210, %204, %197, %193, %121
  %216 = phi i32 [ %196, %193 ], [ 0, %121 ], [ %214, %210 ], [ 0, %204 ], [ 0, %197 ]
  %217 = zext i32 %216 to i64
  %218 = icmp samesign ult i64 %108, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %215
  %220 = zext i32 %107 to i64
  %221 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %220
  %222 = trunc i64 %106 to i32
  %.reass.reass.reass.reass = add i32 %222, %invariant.op
  store i32 %.reass.reass.reass.reass, ptr %221, align 4, !tbaa !46
  %223 = getelementptr inbounds nuw i8, ptr %221, i64 4
  store i32 %216, ptr %223, align 4, !tbaa !44
  %224 = add i32 %107, 1
  %225 = icmp ule i32 %216, %41
  %226 = getelementptr inbounds nuw i8, ptr %3, i64 %217
  %227 = icmp ne ptr %226, %4
  %228 = and i1 %225, %227
  br i1 %228, label %229, label %.loopexit77

229:                                              ; preds = %219, %215
  %230 = phi i32 [ %224, %219 ], [ %107, %215 ]
  %231 = phi i64 [ %217, %219 ], [ %108, %215 ]
  %232 = add nuw nsw i64 %106, 1
  %233 = icmp eq i64 %232, %104
  br i1 %233, label %.loopexit78, label %105, !llvm.loop !140

.loopexit78:                                      ; preds = %229, %34
  %234 = phi i64 [ %91, %34 ], [ %231, %229 ]
  %235 = phi i32 [ 0, %34 ], [ %230, %229 ]
  %236 = icmp samesign ult i64 %234, 3
  br i1 %236, label %237, label %395

237:                                              ; preds = %.loopexit78
  %238 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %239 = load ptr, ptr %238, align 8, !tbaa !135
  %240 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %241 = load i32, ptr %240, align 8, !tbaa !136
  %242 = load i32, ptr %2, align 4, !tbaa !25
  %243 = load i32, ptr %3, align 1, !tbaa !25
  %244 = sub i32 32, %241
  %245 = icmp ult i32 %242, %35
  br i1 %245, label %246, label %.loopexit72

246:                                              ; preds = %237
  %247 = zext i32 %242 to i64
  %248 = and i64 %36, 4294967295
  %249 = sub i64 %36, %247
  %250 = and i64 %249, 3
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %.loopexit74, label %.preheader73

.preheader73:                                     ; preds = %246, %.preheader73
  %252 = phi i64 [ %261, %.preheader73 ], [ %247, %246 ]
  %253 = phi i64 [ %262, %.preheader73 ], [ 0, %246 ]
  %254 = getelementptr inbounds nuw i8, ptr %37, i64 %252
  %255 = load i32, ptr %254, align 1, !tbaa !25
  %256 = mul i32 %255, 900185344
  %257 = lshr i32 %256, %244
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds nuw [4 x i8], ptr %239, i64 %258
  %260 = trunc nuw i64 %252 to i32
  store i32 %260, ptr %259, align 4, !tbaa !25
  %261 = add nuw nsw i64 %252, 1
  %262 = add nuw nsw i64 %253, 1
  %263 = icmp eq i64 %262, %250
  br i1 %263, label %.loopexit74, label %.preheader73, !llvm.loop !141

.loopexit74:                                      ; preds = %.preheader73, %246
  %264 = phi i64 [ %247, %246 ], [ %261, %.preheader73 ]
  %265 = sub nsw i64 %247, %248
  %266 = icmp ugt i64 %265, -4
  br i1 %266, label %.loopexit72, label %.preheader71

.preheader71:                                     ; preds = %.loopexit74, %.preheader71
  %267 = phi i64 [ %299, %.preheader71 ], [ %264, %.loopexit74 ]
  %268 = getelementptr inbounds nuw i8, ptr %37, i64 %267
  %269 = load i32, ptr %268, align 1, !tbaa !25
  %270 = mul i32 %269, 900185344
  %271 = lshr i32 %270, %244
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds nuw [4 x i8], ptr %239, i64 %272
  %274 = trunc nuw i64 %267 to i32
  store i32 %274, ptr %273, align 4, !tbaa !25
  %275 = add nuw nsw i64 %267, 1
  %276 = getelementptr inbounds nuw i8, ptr %37, i64 %275
  %277 = load i32, ptr %276, align 1, !tbaa !25
  %278 = mul i32 %277, 900185344
  %279 = lshr i32 %278, %244
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds nuw [4 x i8], ptr %239, i64 %280
  %282 = trunc nuw i64 %275 to i32
  store i32 %282, ptr %281, align 4, !tbaa !25
  %283 = add nuw nsw i64 %267, 2
  %284 = getelementptr inbounds nuw i8, ptr %37, i64 %283
  %285 = load i32, ptr %284, align 1, !tbaa !25
  %286 = mul i32 %285, 900185344
  %287 = lshr i32 %286, %244
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds nuw [4 x i8], ptr %239, i64 %288
  %290 = trunc nuw i64 %283 to i32
  store i32 %290, ptr %289, align 4, !tbaa !25
  %291 = add nuw nsw i64 %267, 3
  %292 = getelementptr inbounds nuw i8, ptr %37, i64 %291
  %293 = load i32, ptr %292, align 1, !tbaa !25
  %294 = mul i32 %293, 900185344
  %295 = lshr i32 %294, %244
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds nuw [4 x i8], ptr %239, i64 %296
  %298 = trunc nuw i64 %291 to i32
  store i32 %298, ptr %297, align 4, !tbaa !25
  %299 = add nuw nsw i64 %267, 4
  %300 = icmp eq i64 %299, %248
  br i1 %300, label %.loopexit72, label %.preheader71, !llvm.loop !138

.loopexit72:                                      ; preds = %.preheader71, %.loopexit74, %237
  %301 = mul i32 %243, 900185344
  %302 = lshr i32 %301, %244
  %303 = zext i32 %302 to i64
  store i32 %35, ptr %2, align 4, !tbaa !25
  %304 = getelementptr inbounds nuw [4 x i8], ptr %239, i64 %303
  %305 = load i32, ptr %304, align 4, !tbaa !25
  %306 = icmp uge i32 %305, %80
  %307 = sub i32 %35, %305
  %308 = icmp ult i32 %307, 262144
  %309 = and i1 %306, %308
  br i1 %309, label %310, label %395

310:                                              ; preds = %.loopexit72
  %311 = icmp ult i32 %305, %63
  %312 = zext i32 %305 to i64
  br i1 %311, label %378, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds nuw i8, ptr %37, i64 %312
  %315 = getelementptr inbounds i8, ptr %4, i64 -7
  %316 = icmp ult ptr %3, %315
  br i1 %316, label %317, label %.loopexit70

317:                                              ; preds = %313
  %318 = load i64, ptr %314, align 1, !tbaa !30
  %319 = load i64, ptr %3, align 1, !tbaa !30
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %.preheader69, label %321

321:                                              ; preds = %317
  %322 = xor i64 %319, %318
  %323 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %322, i1 true)
  %324 = lshr i64 %323, 3
  br label %381

.preheader69:                                     ; preds = %317, %330
  %325 = phi ptr [ %328, %330 ], [ %314, %317 ]
  %326 = phi ptr [ %327, %330 ], [ %3, %317 ]
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 8
  %328 = getelementptr inbounds nuw i8, ptr %325, i64 8
  %329 = icmp ult ptr %327, %315
  br i1 %329, label %330, label %.loopexit70

330:                                              ; preds = %.preheader69
  %331 = load i64, ptr %328, align 1, !tbaa !30
  %332 = load i64, ptr %327, align 1, !tbaa !30
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %.preheader69, label %334

334:                                              ; preds = %330
  %335 = xor i64 %332, %331
  %336 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %335, i1 true)
  %337 = lshr i64 %336, 3
  %338 = getelementptr inbounds nuw i8, ptr %327, i64 %337
  %339 = ptrtoint ptr %338 to i64
  %340 = sub i64 %339, %18
  br label %381

.loopexit70:                                      ; preds = %.preheader69, %313
  %341 = phi ptr [ %314, %313 ], [ %328, %.preheader69 ]
  %342 = phi ptr [ %3, %313 ], [ %327, %.preheader69 ]
  %343 = getelementptr inbounds i8, ptr %4, i64 -3
  %344 = icmp ult ptr %342, %343
  br i1 %344, label %345, label %352

345:                                              ; preds = %.loopexit70
  %346 = load i32, ptr %341, align 1, !tbaa !25
  %347 = load i32, ptr %342, align 1, !tbaa !25
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %345
  %350 = getelementptr inbounds nuw i8, ptr %342, i64 4
  %351 = getelementptr inbounds nuw i8, ptr %341, i64 4
  br label %352

352:                                              ; preds = %349, %345, %.loopexit70
  %353 = phi ptr [ %351, %349 ], [ %341, %345 ], [ %341, %.loopexit70 ]
  %354 = phi ptr [ %350, %349 ], [ %342, %345 ], [ %342, %.loopexit70 ]
  %355 = getelementptr inbounds i8, ptr %4, i64 -1
  %356 = icmp ult ptr %354, %355
  br i1 %356, label %357, label %364

357:                                              ; preds = %352
  %358 = load i16, ptr %353, align 1, !tbaa !115
  %359 = load i16, ptr %354, align 1, !tbaa !115
  %360 = icmp eq i16 %358, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %357
  %362 = getelementptr inbounds nuw i8, ptr %354, i64 2
  %363 = getelementptr inbounds nuw i8, ptr %353, i64 2
  br label %364

364:                                              ; preds = %361, %357, %352
  %365 = phi ptr [ %363, %361 ], [ %353, %357 ], [ %353, %352 ]
  %366 = phi ptr [ %362, %361 ], [ %354, %357 ], [ %354, %352 ]
  %367 = icmp ult ptr %366, %4
  br i1 %367, label %368, label %374

368:                                              ; preds = %364
  %369 = load i8, ptr %365, align 1, !tbaa !42
  %370 = load i8, ptr %366, align 1, !tbaa !42
  %371 = icmp eq i8 %369, %370
  %372 = zext i1 %371 to i64
  %373 = getelementptr inbounds nuw i8, ptr %366, i64 %372
  br label %374

374:                                              ; preds = %368, %364
  %375 = phi ptr [ %366, %364 ], [ %373, %368 ]
  %376 = ptrtoint ptr %375 to i64
  %377 = sub i64 %376, %18
  br label %381

378:                                              ; preds = %310
  %379 = getelementptr inbounds nuw i8, ptr %61, i64 %312
  %380 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3, ptr noundef %379, ptr noundef %4, ptr noundef nonnull %65, ptr noundef nonnull %66)
  br label %381

381:                                              ; preds = %378, %374, %334, %321
  %382 = phi i64 [ %380, %378 ], [ %377, %374 ], [ %324, %321 ], [ %340, %334 ]
  %383 = icmp ugt i64 %382, 2
  br i1 %383, label %384, label %395

384:                                              ; preds = %381
  %385 = add nuw nsw i32 %307, 3
  store i32 %385, ptr %0, align 4, !tbaa !46
  %386 = trunc i64 %382 to i32
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %386, ptr %387, align 4, !tbaa !44
  %388 = zext nneg i32 %41 to i64
  %389 = icmp ugt i64 %382, %388
  %390 = getelementptr inbounds nuw i8, ptr %3, i64 %382
  %391 = icmp eq ptr %390, %4
  %392 = or i1 %389, %391
  br i1 %392, label %393, label %395

393:                                              ; preds = %384
  %394 = add i32 %35, 1
  br label %550

395:                                              ; preds = %384, %381, %.loopexit72, %.loopexit78
  %396 = phi i64 [ %234, %.loopexit78 ], [ %234, %381 ], [ %382, %384 ], [ %234, %.loopexit72 ]
  %397 = phi i32 [ %235, %.loopexit78 ], [ %235, %381 ], [ 1, %384 ], [ %235, %.loopexit72 ]
  store i32 %35, ptr %51, align 4, !tbaa !25
  %398 = icmp ult i32 %52, %80
  br i1 %398, label %.loopexit65, label %399

399:                                              ; preds = %395
  %400 = getelementptr inbounds i8, ptr %4, i64 -7
  %401 = getelementptr inbounds i8, ptr %4, i64 -3
  %402 = getelementptr inbounds i8, ptr %4, i64 -1
  %403 = add i32 %35, 3
  br label %404

404:                                              ; preds = %534, %399
  %405 = phi i32 [ %52, %399 ], [ %540, %534 ]
  %406 = phi i64 [ 0, %399 ], [ %538, %534 ]
  %407 = phi i64 [ 0, %399 ], [ %537, %534 ]
  %408 = phi ptr [ %84, %399 ], [ %536, %534 ]
  %409 = phi ptr [ %85, %399 ], [ %535, %534 ]
  %410 = phi i32 [ %86, %399 ], [ %523, %534 ]
  %411 = phi i32 [ %397, %399 ], [ %522, %534 ]
  %412 = phi i32 [ %89, %399 ], [ %541, %534 ]
  %413 = phi i64 [ %396, %399 ], [ %521, %534 ]
  %414 = and i32 %405, %59
  %415 = shl nuw i32 %414, 1
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %416
  %418 = tail call i64 @llvm.umin.i64(i64 %406, i64 %407)
  %419 = zext i32 %405 to i64
  %420 = add i64 %418, %419
  %421 = icmp ult i64 %420, %64
  %422 = getelementptr inbounds nuw i8, ptr %3, i64 %418
  br i1 %421, label %491, label %423

423:                                              ; preds = %404
  %424 = getelementptr inbounds nuw i8, ptr %37, i64 %419
  %425 = getelementptr inbounds nuw i8, ptr %424, i64 %418
  %426 = icmp ult ptr %422, %400
  br i1 %426, label %427, label %.loopexit

427:                                              ; preds = %423
  %428 = load i64, ptr %425, align 1, !tbaa !30
  %429 = load i64, ptr %422, align 1, !tbaa !30
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %.preheader, label %431

431:                                              ; preds = %427
  %432 = xor i64 %429, %428
  %433 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %432, i1 true)
  %434 = lshr i64 %433, 3
  br label %488

.preheader:                                       ; preds = %427, %440
  %435 = phi ptr [ %438, %440 ], [ %425, %427 ]
  %436 = phi ptr [ %437, %440 ], [ %422, %427 ]
  %437 = getelementptr inbounds nuw i8, ptr %436, i64 8
  %438 = getelementptr inbounds nuw i8, ptr %435, i64 8
  %439 = icmp ult ptr %437, %400
  br i1 %439, label %440, label %.loopexit

440:                                              ; preds = %.preheader
  %441 = load i64, ptr %438, align 1, !tbaa !30
  %442 = load i64, ptr %437, align 1, !tbaa !30
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %.preheader, label %444

444:                                              ; preds = %440
  %445 = xor i64 %442, %441
  %446 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %445, i1 true)
  %447 = lshr i64 %446, 3
  %448 = getelementptr inbounds nuw i8, ptr %437, i64 %447
  %449 = ptrtoint ptr %448 to i64
  %450 = ptrtoint ptr %422 to i64
  %451 = sub i64 %449, %450
  br label %488

.loopexit:                                        ; preds = %.preheader, %423
  %452 = phi ptr [ %425, %423 ], [ %438, %.preheader ]
  %453 = phi ptr [ %422, %423 ], [ %437, %.preheader ]
  %454 = icmp ult ptr %453, %401
  br i1 %454, label %455, label %462

455:                                              ; preds = %.loopexit
  %456 = load i32, ptr %452, align 1, !tbaa !25
  %457 = load i32, ptr %453, align 1, !tbaa !25
  %458 = icmp eq i32 %456, %457
  br i1 %458, label %459, label %462

459:                                              ; preds = %455
  %460 = getelementptr inbounds nuw i8, ptr %453, i64 4
  %461 = getelementptr inbounds nuw i8, ptr %452, i64 4
  br label %462

462:                                              ; preds = %459, %455, %.loopexit
  %463 = phi ptr [ %461, %459 ], [ %452, %455 ], [ %452, %.loopexit ]
  %464 = phi ptr [ %460, %459 ], [ %453, %455 ], [ %453, %.loopexit ]
  %465 = icmp ult ptr %464, %402
  br i1 %465, label %466, label %473

466:                                              ; preds = %462
  %467 = load i16, ptr %463, align 1, !tbaa !115
  %468 = load i16, ptr %464, align 1, !tbaa !115
  %469 = icmp eq i16 %467, %468
  br i1 %469, label %470, label %473

470:                                              ; preds = %466
  %471 = getelementptr inbounds nuw i8, ptr %464, i64 2
  %472 = getelementptr inbounds nuw i8, ptr %463, i64 2
  br label %473

473:                                              ; preds = %470, %466, %462
  %474 = phi ptr [ %472, %470 ], [ %463, %466 ], [ %463, %462 ]
  %475 = phi ptr [ %471, %470 ], [ %464, %466 ], [ %464, %462 ]
  %476 = icmp ult ptr %475, %4
  br i1 %476, label %477, label %483

477:                                              ; preds = %473
  %478 = load i8, ptr %474, align 1, !tbaa !42
  %479 = load i8, ptr %475, align 1, !tbaa !42
  %480 = icmp eq i8 %478, %479
  %481 = zext i1 %480 to i64
  %482 = getelementptr inbounds nuw i8, ptr %475, i64 %481
  br label %483

483:                                              ; preds = %477, %473
  %484 = phi ptr [ %475, %473 ], [ %482, %477 ]
  %485 = ptrtoint ptr %484 to i64
  %486 = ptrtoint ptr %422 to i64
  %487 = sub i64 %485, %486
  br label %488

488:                                              ; preds = %483, %444, %431
  %489 = phi i64 [ %487, %483 ], [ %434, %431 ], [ %451, %444 ]
  %490 = add i64 %489, %418
  br label %500

491:                                              ; preds = %404
  %492 = getelementptr inbounds nuw i8, ptr %61, i64 %419
  %493 = getelementptr inbounds nuw i8, ptr %492, i64 %418
  %494 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %422, ptr noundef %493, ptr noundef %4, ptr noundef nonnull %65, ptr noundef nonnull %66)
  %495 = add i64 %494, %418
  %496 = add i64 %495, %419
  %497 = icmp ult i64 %496, %64
  %498 = getelementptr inbounds nuw i8, ptr %37, i64 %419
  %499 = select i1 %497, ptr %492, ptr %498
  br label %500

500:                                              ; preds = %491, %488
  %501 = phi ptr [ %424, %488 ], [ %499, %491 ]
  %502 = phi i64 [ %490, %488 ], [ %495, %491 ]
  %503 = icmp ugt i64 %502, %413
  br i1 %503, label %504, label %520

504:                                              ; preds = %500
  %505 = sub i32 %410, %405
  %506 = zext i32 %505 to i64
  %507 = icmp ugt i64 %502, %506
  %508 = trunc i64 %502 to i32
  %509 = add i32 %405, %508
  %510 = select i1 %507, i32 %509, i32 %410
  %511 = sub i32 %403, %405
  %512 = zext i32 %411 to i64
  %513 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %512
  store i32 %511, ptr %513, align 4, !tbaa !46
  %514 = getelementptr inbounds nuw i8, ptr %513, i64 4
  store i32 %508, ptr %514, align 4, !tbaa !44
  %515 = add i32 %411, 1
  %516 = icmp ugt i64 %502, 4096
  %517 = getelementptr inbounds nuw i8, ptr %3, i64 %502
  %518 = icmp eq ptr %517, %4
  %519 = or i1 %516, %518
  br i1 %519, label %.loopexit65, label %520

520:                                              ; preds = %504, %500
  %521 = phi i64 [ %502, %504 ], [ %413, %500 ]
  %522 = phi i32 [ %515, %504 ], [ %411, %500 ]
  %523 = phi i32 [ %510, %504 ], [ %410, %500 ]
  %524 = getelementptr inbounds nuw i8, ptr %501, i64 %502
  %525 = load i8, ptr %524, align 1, !tbaa !42
  %526 = getelementptr inbounds nuw i8, ptr %3, i64 %502
  %527 = load i8, ptr %526, align 1, !tbaa !42
  %528 = icmp ult i8 %525, %527
  %529 = icmp ugt i32 %405, %67
  br i1 %528, label %530, label %533

530:                                              ; preds = %520
  store i32 %405, ptr %408, align 4, !tbaa !25
  br i1 %529, label %531, label %.loopexit65

531:                                              ; preds = %530
  %532 = getelementptr inbounds nuw i8, ptr %417, i64 4
  br label %534

533:                                              ; preds = %520
  store i32 %405, ptr %409, align 4, !tbaa !25
  br i1 %529, label %534, label %.loopexit65

534:                                              ; preds = %533, %531
  %535 = phi ptr [ %409, %531 ], [ %417, %533 ]
  %536 = phi ptr [ %532, %531 ], [ %408, %533 ]
  %537 = phi i64 [ %407, %531 ], [ %502, %533 ]
  %538 = phi i64 [ %502, %531 ], [ %406, %533 ]
  %539 = phi ptr [ %532, %531 ], [ %417, %533 ]
  %540 = load i32, ptr %539, align 4, !tbaa !25
  %541 = add i32 %412, -1
  %542 = icmp ne i32 %541, 0
  %543 = icmp uge i32 %540, %80
  %544 = select i1 %542, i1 %543, i1 false
  br i1 %544, label %404, label %.loopexit65, !llvm.loop !139

.loopexit65:                                      ; preds = %534, %533, %530, %504, %395
  %545 = phi i32 [ %397, %395 ], [ %515, %504 ], [ %522, %533 ], [ %522, %530 ], [ %522, %534 ]
  %546 = phi i32 [ %86, %395 ], [ %510, %504 ], [ %523, %533 ], [ %523, %530 ], [ %523, %534 ]
  %547 = phi ptr [ %85, %395 ], [ %409, %504 ], [ %9, %533 ], [ %409, %530 ], [ %535, %534 ]
  %548 = phi ptr [ %84, %395 ], [ %408, %504 ], [ %408, %533 ], [ %9, %530 ], [ %536, %534 ]
  store i32 0, ptr %547, align 4, !tbaa !25
  store i32 0, ptr %548, align 4, !tbaa !25
  %549 = add i32 %546, -8
  br label %550

550:                                              ; preds = %.loopexit65, %393
  %551 = phi i32 [ %394, %393 ], [ %549, %.loopexit65 ]
  %552 = phi i32 [ 1, %393 ], [ %545, %.loopexit65 ]
  store i32 %551, ptr %12, align 4, !tbaa !19
  br label %.loopexit77

.loopexit77:                                      ; preds = %219, %550
  %553 = phi i32 [ %552, %550 ], [ %224, %219 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %554

554:                                              ; preds = %.loopexit77, %8
  %555 = phi i32 [ %553, %.loopexit77 ], [ 0, %8 ]
  ret i32 %555
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i32 @ZSTD_btGetAllMatches_extDict_4(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %603, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %.preheader86, label %34

.preheader86:                                     ; preds = %17, %.preheader86
  %23 = phi i32 [ %27, %.preheader86 ], [ %13, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 %24
  %26 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %25, ptr noundef %4, i32 noundef %21, i32 noundef 4, i32 noundef 1)
  %27 = add i32 %26, %23
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %.preheader86, label %29, !llvm.loop !20

29:                                               ; preds = %.preheader86
  %30 = load ptr, ptr %10, align 8, !tbaa !18
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %18, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %21, %17 ]
  %36 = phi ptr [ %30, %29 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %39 = load i32, ptr %38, align 4, !tbaa !24
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 4095)
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %42 = load i32, ptr %41, align 4, !tbaa !108
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %44 = load ptr, ptr %43, align 8, !tbaa !107
  %45 = load i32, ptr %3, align 1, !tbaa !25
  %46 = mul i32 %45, -1640531535
  %47 = sub i32 32, %42
  %48 = lshr i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr %44, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !25
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %55 = load i32, ptr %54, align 4, !tbaa !110
  %56 = add i32 %55, -1
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %60 = load ptr, ptr %59, align 8, !tbaa !111
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %62 = load i32, ptr %61, align 8, !tbaa !22
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds nuw i8, ptr %60, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %36, i64 %63
  %66 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %58)
  %67 = load i32, ptr %37, align 8, !tbaa !112
  %68 = getelementptr i8, ptr %1, i64 28
  %69 = load i32, ptr %68, align 4, !tbaa !106
  %70 = getelementptr i8, ptr %1, i64 40
  %71 = load i32, ptr %70, align 8, !tbaa !113
  %72 = shl nuw i32 1, %67
  %73 = sub i32 %35, %69
  %74 = icmp ugt i32 %73, %72
  %75 = sub i32 %35, %72
  %76 = icmp eq i32 %71, 0
  %77 = select i1 %76, i1 %74, i1 false
  %78 = select i1 %77, i32 %75, i32 %69
  %79 = tail call i32 @llvm.umax.i32(i32 %78, i32 1)
  %80 = and i32 %35, %58
  %81 = shl nuw i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %82
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 4
  %85 = add i32 %35, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %87 = load i32, ptr %86, align 4, !tbaa !114
  %88 = shl nuw i32 1, %87
  %89 = add i32 %7, -1
  %90 = zext i32 %89 to i64
  %91 = icmp ult i32 %6, -3
  br i1 %91, label %92, label %446

92:                                               ; preds = %34
  %93 = sub i32 %35, %62
  %94 = sub i32 %35, %78
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %96 = getelementptr inbounds i8, ptr %4, i64 -7
  %97 = icmp ult ptr %95, %96
  %98 = getelementptr inbounds i8, ptr %4, i64 -3
  %99 = getelementptr inbounds i8, ptr %4, i64 -1
  %100 = ptrtoint ptr %95 to i64
  %101 = zext i32 %6 to i64
  %102 = icmp eq i32 %6, 3
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load i32, ptr %5, align 4, !tbaa !25
  %105 = add i32 %104, -1
  br label %109

106:                                              ; preds = %92
  %107 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %101
  %108 = load i32, ptr %107, align 4, !tbaa !25
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i32 [ %105, %103 ], [ %108, %106 ]
  %111 = sub i32 %35, %110
  %112 = add i32 %110, -1
  %113 = icmp ult i32 %112, %93
  br i1 %113, label %114, label %183

114:                                              ; preds = %109
  %115 = icmp uge i32 %111, %78
  %116 = zext i32 %110 to i64
  %117 = sub nsw i64 0, %116
  %118 = getelementptr inbounds i8, ptr %3, i64 %117
  %119 = load i32, ptr %118, align 1, !tbaa !25
  %120 = icmp eq i32 %45, %119
  %121 = and i1 %115, %120
  br i1 %121, label %122, label %208

122:                                              ; preds = %114
  %123 = getelementptr inbounds i8, ptr %95, i64 %117
  br i1 %97, label %124, label %.loopexit85

124:                                              ; preds = %122
  %125 = load i64, ptr %123, align 1, !tbaa !30
  %126 = load i64, ptr %95, align 1, !tbaa !30
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %.preheader84, label %128

128:                                              ; preds = %124
  %129 = xor i64 %126, %125
  %130 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %129, i1 true)
  %131 = lshr i64 %130, 3
  br label %196

.preheader84:                                     ; preds = %124, %137
  %132 = phi ptr [ %135, %137 ], [ %123, %124 ]
  %133 = phi ptr [ %134, %137 ], [ %95, %124 ]
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 8
  %135 = getelementptr inbounds nuw i8, ptr %132, i64 8
  %136 = icmp ult ptr %134, %96
  br i1 %136, label %137, label %.loopexit85

137:                                              ; preds = %.preheader84
  %138 = load i64, ptr %135, align 1, !tbaa !30
  %139 = load i64, ptr %134, align 1, !tbaa !30
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %.preheader84, label %141

141:                                              ; preds = %137
  %142 = xor i64 %139, %138
  %143 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %142, i1 true)
  %144 = lshr i64 %143, 3
  %145 = getelementptr inbounds nuw i8, ptr %134, i64 %144
  %146 = ptrtoint ptr %145 to i64
  %147 = sub i64 %146, %100
  br label %196

.loopexit85:                                      ; preds = %.preheader84, %122
  %148 = phi ptr [ %123, %122 ], [ %135, %.preheader84 ]
  %149 = phi ptr [ %95, %122 ], [ %134, %.preheader84 ]
  %150 = icmp ult ptr %149, %98
  br i1 %150, label %151, label %158

151:                                              ; preds = %.loopexit85
  %152 = load i32, ptr %148, align 1, !tbaa !25
  %153 = load i32, ptr %149, align 1, !tbaa !25
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = getelementptr inbounds nuw i8, ptr %149, i64 4
  %157 = getelementptr inbounds nuw i8, ptr %148, i64 4
  br label %158

158:                                              ; preds = %155, %151, %.loopexit85
  %159 = phi ptr [ %157, %155 ], [ %148, %151 ], [ %148, %.loopexit85 ]
  %160 = phi ptr [ %156, %155 ], [ %149, %151 ], [ %149, %.loopexit85 ]
  %161 = icmp ult ptr %160, %99
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i16, ptr %159, align 1, !tbaa !115
  %164 = load i16, ptr %160, align 1, !tbaa !115
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
  %182 = sub i64 %181, %100
  br label %196

183:                                              ; preds = %109
  %184 = zext i32 %111 to i64
  %185 = getelementptr inbounds nuw i8, ptr %60, i64 %184
  %186 = icmp uge i32 %112, %94
  %187 = sub i32 %111, %62
  %188 = icmp ugt i32 %187, -4
  %189 = select i1 %186, i1 true, i1 %188
  br i1 %189, label %208, label %190

190:                                              ; preds = %183
  %191 = load i32, ptr %185, align 1, !tbaa !25
  %192 = icmp eq i32 %45, %191
  br i1 %192, label %193, label %208

193:                                              ; preds = %190
  %194 = getelementptr inbounds nuw i8, ptr %185, i64 4
  %195 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %95, ptr noundef nonnull %194, ptr noundef %4, ptr noundef nonnull %64, ptr noundef %65)
  br label %196

196:                                              ; preds = %193, %179, %141, %128
  %197 = phi i64 [ %195, %193 ], [ %182, %179 ], [ %131, %128 ], [ %147, %141 ]
  %198 = trunc i64 %197 to i32
  %199 = add i32 %198, 4
  %200 = icmp ult i32 %89, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = zext i32 %199 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %199, ptr %203, align 4, !tbaa !44
  %204 = icmp ule i32 %199, %40
  %205 = getelementptr inbounds nuw i8, ptr %3, i64 %202
  %206 = icmp ne ptr %205, %4
  %207 = and i1 %204, %206
  br i1 %207, label %208, label %601

208:                                              ; preds = %201, %196, %190, %183, %114
  %209 = phi i32 [ 1, %201 ], [ 0, %196 ], [ 0, %114 ], [ 0, %190 ], [ 0, %183 ]
  %210 = phi i64 [ %202, %201 ], [ %90, %196 ], [ %90, %114 ], [ %90, %190 ], [ %90, %183 ]
  %211 = add nuw nsw i64 %101, 1
  %212 = icmp eq i64 %211, 3
  br i1 %212, label %216, label %213

213:                                              ; preds = %208
  %214 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %211
  %215 = load i32, ptr %214, align 4, !tbaa !25
  br label %219

216:                                              ; preds = %208
  %217 = load i32, ptr %5, align 4, !tbaa !25
  %218 = add i32 %217, -1
  br label %219

219:                                              ; preds = %216, %213
  %220 = phi i32 [ %218, %216 ], [ %215, %213 ]
  %221 = sub i32 %35, %220
  %222 = add i32 %220, -1
  %223 = icmp ult i32 %222, %93
  br i1 %223, label %240, label %224

224:                                              ; preds = %219
  %225 = zext i32 %221 to i64
  %226 = getelementptr inbounds nuw i8, ptr %60, i64 %225
  %227 = icmp uge i32 %222, %94
  %228 = sub i32 %221, %62
  %229 = icmp ugt i32 %228, -4
  %230 = select i1 %227, i1 true, i1 %229
  br i1 %230, label %314, label %231

231:                                              ; preds = %224
  %232 = load i32, ptr %3, align 1, !tbaa !25
  %233 = load i32, ptr %226, align 1, !tbaa !25
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %314

235:                                              ; preds = %231
  %236 = getelementptr inbounds nuw i8, ptr %226, i64 4
  %237 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %95, ptr noundef nonnull %236, ptr noundef %4, ptr noundef nonnull %64, ptr noundef %65)
  %238 = trunc i64 %237 to i32
  %239 = add i32 %238, 4
  br label %314

240:                                              ; preds = %219
  %241 = icmp uge i32 %221, %78
  %242 = load i32, ptr %3, align 1, !tbaa !25
  %243 = zext i32 %220 to i64
  %244 = sub nsw i64 0, %243
  %245 = getelementptr inbounds i8, ptr %3, i64 %244
  %246 = load i32, ptr %245, align 1, !tbaa !25
  %247 = icmp eq i32 %242, %246
  %248 = and i1 %241, %247
  br i1 %248, label %249, label %314

249:                                              ; preds = %240
  %250 = getelementptr inbounds i8, ptr %95, i64 %244
  br i1 %97, label %251, label %.loopexit83

251:                                              ; preds = %249
  %252 = load i64, ptr %250, align 1, !tbaa !30
  %253 = load i64, ptr %95, align 1, !tbaa !30
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %.preheader82, label %255

255:                                              ; preds = %251
  %256 = xor i64 %253, %252
  %257 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %256, i1 true)
  %258 = lshr i64 %257, 3
  br label %310

.preheader82:                                     ; preds = %251, %299
  %259 = phi ptr [ %262, %299 ], [ %250, %251 ]
  %260 = phi ptr [ %261, %299 ], [ %95, %251 ]
  %261 = getelementptr inbounds nuw i8, ptr %260, i64 8
  %262 = getelementptr inbounds nuw i8, ptr %259, i64 8
  %263 = icmp ult ptr %261, %96
  br i1 %263, label %299, label %.loopexit83

.loopexit83:                                      ; preds = %.preheader82, %249
  %264 = phi ptr [ %250, %249 ], [ %262, %.preheader82 ]
  %265 = phi ptr [ %95, %249 ], [ %261, %.preheader82 ]
  %266 = icmp ult ptr %265, %98
  br i1 %266, label %267, label %274

267:                                              ; preds = %.loopexit83
  %268 = load i32, ptr %264, align 1, !tbaa !25
  %269 = load i32, ptr %265, align 1, !tbaa !25
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %267
  %272 = getelementptr inbounds nuw i8, ptr %265, i64 4
  %273 = getelementptr inbounds nuw i8, ptr %264, i64 4
  br label %274

274:                                              ; preds = %271, %267, %.loopexit83
  %275 = phi ptr [ %273, %271 ], [ %264, %267 ], [ %264, %.loopexit83 ]
  %276 = phi ptr [ %272, %271 ], [ %265, %267 ], [ %265, %.loopexit83 ]
  %277 = icmp ult ptr %276, %99
  br i1 %277, label %278, label %285

278:                                              ; preds = %274
  %279 = load i16, ptr %275, align 1, !tbaa !115
  %280 = load i16, ptr %276, align 1, !tbaa !115
  %281 = icmp eq i16 %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = getelementptr inbounds nuw i8, ptr %276, i64 2
  %284 = getelementptr inbounds nuw i8, ptr %275, i64 2
  br label %285

285:                                              ; preds = %282, %278, %274
  %286 = phi ptr [ %284, %282 ], [ %275, %278 ], [ %275, %274 ]
  %287 = phi ptr [ %283, %282 ], [ %276, %278 ], [ %276, %274 ]
  %288 = icmp ult ptr %287, %4
  br i1 %288, label %289, label %295

289:                                              ; preds = %285
  %290 = load i8, ptr %286, align 1, !tbaa !42
  %291 = load i8, ptr %287, align 1, !tbaa !42
  %292 = icmp eq i8 %290, %291
  %293 = zext i1 %292 to i64
  %294 = getelementptr inbounds nuw i8, ptr %287, i64 %293
  br label %295

295:                                              ; preds = %289, %285
  %296 = phi ptr [ %287, %285 ], [ %294, %289 ]
  %297 = ptrtoint ptr %296 to i64
  %298 = sub i64 %297, %100
  br label %310

299:                                              ; preds = %.preheader82
  %300 = load i64, ptr %262, align 1, !tbaa !30
  %301 = load i64, ptr %261, align 1, !tbaa !30
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %.preheader82, label %303

303:                                              ; preds = %299
  %304 = xor i64 %301, %300
  %305 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %304, i1 true)
  %306 = lshr i64 %305, 3
  %307 = getelementptr inbounds nuw i8, ptr %261, i64 %306
  %308 = ptrtoint ptr %307 to i64
  %309 = sub i64 %308, %100
  br label %310

310:                                              ; preds = %303, %295, %255
  %311 = phi i64 [ %298, %295 ], [ %258, %255 ], [ %309, %303 ]
  %312 = trunc i64 %311 to i32
  %313 = add i32 %312, 4
  br label %314

314:                                              ; preds = %310, %240, %235, %231, %224
  %315 = phi i32 [ %313, %310 ], [ 0, %240 ], [ %239, %235 ], [ 0, %231 ], [ 0, %224 ]
  %316 = zext i32 %315 to i64
  %317 = icmp samesign ult i64 %210, %316
  br i1 %317, label %318, label %327

318:                                              ; preds = %314
  %319 = zext nneg i32 %209 to i64
  %320 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %319
  store i32 2, ptr %320, align 4, !tbaa !46
  %321 = getelementptr inbounds nuw i8, ptr %320, i64 4
  store i32 %315, ptr %321, align 4, !tbaa !44
  %322 = add nuw nsw i32 %209, 1
  %323 = icmp ule i32 %315, %40
  %324 = getelementptr inbounds nuw i8, ptr %3, i64 %316
  %325 = icmp ne ptr %324, %4
  %326 = and i1 %323, %325
  br i1 %326, label %327, label %601

327:                                              ; preds = %318, %314
  %328 = phi i32 [ %322, %318 ], [ %209, %314 ]
  %329 = phi i64 [ %316, %318 ], [ %210, %314 ]
  %330 = add nuw nsw i64 %101, 2
  %331 = icmp eq i64 %330, 3
  br i1 %331, label %335, label %332

332:                                              ; preds = %327
  %333 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %330
  %334 = load i32, ptr %333, align 4, !tbaa !25
  br label %338

335:                                              ; preds = %327
  %336 = load i32, ptr %5, align 4, !tbaa !25
  %337 = add i32 %336, -1
  br label %338

338:                                              ; preds = %335, %332
  %339 = phi i32 [ %337, %335 ], [ %334, %332 ]
  %340 = sub i32 %35, %339
  %341 = add i32 %339, -1
  %342 = icmp ult i32 %341, %93
  br i1 %342, label %359, label %343

343:                                              ; preds = %338
  %344 = zext i32 %340 to i64
  %345 = getelementptr inbounds nuw i8, ptr %60, i64 %344
  %346 = icmp uge i32 %341, %94
  %347 = sub i32 %340, %62
  %348 = icmp ugt i32 %347, -4
  %349 = select i1 %346, i1 true, i1 %348
  br i1 %349, label %433, label %350

350:                                              ; preds = %343
  %351 = load i32, ptr %3, align 1, !tbaa !25
  %352 = load i32, ptr %345, align 1, !tbaa !25
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %433

354:                                              ; preds = %350
  %355 = getelementptr inbounds nuw i8, ptr %345, i64 4
  %356 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %95, ptr noundef nonnull %355, ptr noundef %4, ptr noundef nonnull %64, ptr noundef %65)
  %357 = trunc i64 %356 to i32
  %358 = add i32 %357, 4
  br label %433

359:                                              ; preds = %338
  %360 = icmp uge i32 %340, %78
  %361 = load i32, ptr %3, align 1, !tbaa !25
  %362 = zext i32 %339 to i64
  %363 = sub nsw i64 0, %362
  %364 = getelementptr inbounds i8, ptr %3, i64 %363
  %365 = load i32, ptr %364, align 1, !tbaa !25
  %366 = icmp eq i32 %361, %365
  %367 = and i1 %360, %366
  br i1 %367, label %368, label %433

368:                                              ; preds = %359
  %369 = getelementptr inbounds i8, ptr %95, i64 %363
  br i1 %97, label %370, label %.loopexit81

370:                                              ; preds = %368
  %371 = load i64, ptr %369, align 1, !tbaa !30
  %372 = load i64, ptr %95, align 1, !tbaa !30
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %.preheader80, label %374

374:                                              ; preds = %370
  %375 = xor i64 %372, %371
  %376 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %375, i1 true)
  %377 = lshr i64 %376, 3
  br label %429

.preheader80:                                     ; preds = %370, %418
  %378 = phi ptr [ %381, %418 ], [ %369, %370 ]
  %379 = phi ptr [ %380, %418 ], [ %95, %370 ]
  %380 = getelementptr inbounds nuw i8, ptr %379, i64 8
  %381 = getelementptr inbounds nuw i8, ptr %378, i64 8
  %382 = icmp ult ptr %380, %96
  br i1 %382, label %418, label %.loopexit81

.loopexit81:                                      ; preds = %.preheader80, %368
  %383 = phi ptr [ %369, %368 ], [ %381, %.preheader80 ]
  %384 = phi ptr [ %95, %368 ], [ %380, %.preheader80 ]
  %385 = icmp ult ptr %384, %98
  br i1 %385, label %386, label %393

386:                                              ; preds = %.loopexit81
  %387 = load i32, ptr %383, align 1, !tbaa !25
  %388 = load i32, ptr %384, align 1, !tbaa !25
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %390, label %393

390:                                              ; preds = %386
  %391 = getelementptr inbounds nuw i8, ptr %384, i64 4
  %392 = getelementptr inbounds nuw i8, ptr %383, i64 4
  br label %393

393:                                              ; preds = %390, %386, %.loopexit81
  %394 = phi ptr [ %392, %390 ], [ %383, %386 ], [ %383, %.loopexit81 ]
  %395 = phi ptr [ %391, %390 ], [ %384, %386 ], [ %384, %.loopexit81 ]
  %396 = icmp ult ptr %395, %99
  br i1 %396, label %397, label %404

397:                                              ; preds = %393
  %398 = load i16, ptr %394, align 1, !tbaa !115
  %399 = load i16, ptr %395, align 1, !tbaa !115
  %400 = icmp eq i16 %398, %399
  br i1 %400, label %401, label %404

401:                                              ; preds = %397
  %402 = getelementptr inbounds nuw i8, ptr %395, i64 2
  %403 = getelementptr inbounds nuw i8, ptr %394, i64 2
  br label %404

404:                                              ; preds = %401, %397, %393
  %405 = phi ptr [ %403, %401 ], [ %394, %397 ], [ %394, %393 ]
  %406 = phi ptr [ %402, %401 ], [ %395, %397 ], [ %395, %393 ]
  %407 = icmp ult ptr %406, %4
  br i1 %407, label %408, label %414

408:                                              ; preds = %404
  %409 = load i8, ptr %405, align 1, !tbaa !42
  %410 = load i8, ptr %406, align 1, !tbaa !42
  %411 = icmp eq i8 %409, %410
  %412 = zext i1 %411 to i64
  %413 = getelementptr inbounds nuw i8, ptr %406, i64 %412
  br label %414

414:                                              ; preds = %408, %404
  %415 = phi ptr [ %406, %404 ], [ %413, %408 ]
  %416 = ptrtoint ptr %415 to i64
  %417 = sub i64 %416, %100
  br label %429

418:                                              ; preds = %.preheader80
  %419 = load i64, ptr %381, align 1, !tbaa !30
  %420 = load i64, ptr %380, align 1, !tbaa !30
  %421 = icmp eq i64 %419, %420
  br i1 %421, label %.preheader80, label %422

422:                                              ; preds = %418
  %423 = xor i64 %420, %419
  %424 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %423, i1 true)
  %425 = lshr i64 %424, 3
  %426 = getelementptr inbounds nuw i8, ptr %380, i64 %425
  %427 = ptrtoint ptr %426 to i64
  %428 = sub i64 %427, %100
  br label %429

429:                                              ; preds = %422, %414, %374
  %430 = phi i64 [ %417, %414 ], [ %377, %374 ], [ %428, %422 ]
  %431 = trunc i64 %430 to i32
  %432 = add i32 %431, 4
  br label %433

433:                                              ; preds = %429, %359, %354, %350, %343
  %434 = phi i32 [ %432, %429 ], [ 0, %359 ], [ %358, %354 ], [ 0, %350 ], [ 0, %343 ]
  %435 = zext i32 %434 to i64
  %436 = icmp samesign ult i64 %329, %435
  br i1 %436, label %437, label %446

437:                                              ; preds = %433
  %438 = zext nneg i32 %328 to i64
  %439 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %438
  store i32 3, ptr %439, align 4, !tbaa !46
  %440 = getelementptr inbounds nuw i8, ptr %439, i64 4
  store i32 %434, ptr %440, align 4, !tbaa !44
  %441 = add nuw nsw i32 %328, 1
  %442 = icmp ule i32 %434, %40
  %443 = getelementptr inbounds nuw i8, ptr %3, i64 %435
  %444 = icmp ne ptr %443, %4
  %445 = and i1 %442, %444
  br i1 %445, label %446, label %601

446:                                              ; preds = %437, %433, %34
  %447 = phi i64 [ %90, %34 ], [ %435, %437 ], [ %329, %433 ]
  %448 = phi i32 [ 0, %34 ], [ %441, %437 ], [ %328, %433 ]
  store i32 %35, ptr %50, align 4, !tbaa !25
  %449 = icmp ult i32 %51, %79
  br i1 %449, label %.loopexit76, label %450

450:                                              ; preds = %446
  %451 = getelementptr inbounds i8, ptr %4, i64 -7
  %452 = getelementptr inbounds i8, ptr %4, i64 -3
  %453 = getelementptr inbounds i8, ptr %4, i64 -1
  %454 = add i32 %35, 3
  br label %455

455:                                              ; preds = %585, %450
  %456 = phi i32 [ %51, %450 ], [ %591, %585 ]
  %457 = phi i64 [ 0, %450 ], [ %589, %585 ]
  %458 = phi i64 [ 0, %450 ], [ %588, %585 ]
  %459 = phi ptr [ %83, %450 ], [ %587, %585 ]
  %460 = phi ptr [ %84, %450 ], [ %586, %585 ]
  %461 = phi i32 [ %85, %450 ], [ %574, %585 ]
  %462 = phi i32 [ %448, %450 ], [ %573, %585 ]
  %463 = phi i32 [ %88, %450 ], [ %592, %585 ]
  %464 = phi i64 [ %447, %450 ], [ %572, %585 ]
  %465 = and i32 %456, %58
  %466 = shl nuw i32 %465, 1
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %467
  %469 = tail call i64 @llvm.umin.i64(i64 %457, i64 %458)
  %470 = zext i32 %456 to i64
  %471 = add i64 %469, %470
  %472 = icmp ult i64 %471, %63
  %473 = getelementptr inbounds nuw i8, ptr %3, i64 %469
  br i1 %472, label %542, label %474

474:                                              ; preds = %455
  %475 = getelementptr inbounds nuw i8, ptr %36, i64 %470
  %476 = getelementptr inbounds nuw i8, ptr %475, i64 %469
  %477 = icmp ult ptr %473, %451
  br i1 %477, label %478, label %.loopexit

478:                                              ; preds = %474
  %479 = load i64, ptr %476, align 1, !tbaa !30
  %480 = load i64, ptr %473, align 1, !tbaa !30
  %481 = icmp eq i64 %479, %480
  br i1 %481, label %.preheader, label %482

482:                                              ; preds = %478
  %483 = xor i64 %480, %479
  %484 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %483, i1 true)
  %485 = lshr i64 %484, 3
  br label %539

.preheader:                                       ; preds = %478, %491
  %486 = phi ptr [ %489, %491 ], [ %476, %478 ]
  %487 = phi ptr [ %488, %491 ], [ %473, %478 ]
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 8
  %489 = getelementptr inbounds nuw i8, ptr %486, i64 8
  %490 = icmp ult ptr %488, %451
  br i1 %490, label %491, label %.loopexit

491:                                              ; preds = %.preheader
  %492 = load i64, ptr %489, align 1, !tbaa !30
  %493 = load i64, ptr %488, align 1, !tbaa !30
  %494 = icmp eq i64 %492, %493
  br i1 %494, label %.preheader, label %495

495:                                              ; preds = %491
  %496 = xor i64 %493, %492
  %497 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %496, i1 true)
  %498 = lshr i64 %497, 3
  %499 = getelementptr inbounds nuw i8, ptr %488, i64 %498
  %500 = ptrtoint ptr %499 to i64
  %501 = ptrtoint ptr %473 to i64
  %502 = sub i64 %500, %501
  br label %539

.loopexit:                                        ; preds = %.preheader, %474
  %503 = phi ptr [ %476, %474 ], [ %489, %.preheader ]
  %504 = phi ptr [ %473, %474 ], [ %488, %.preheader ]
  %505 = icmp ult ptr %504, %452
  br i1 %505, label %506, label %513

506:                                              ; preds = %.loopexit
  %507 = load i32, ptr %503, align 1, !tbaa !25
  %508 = load i32, ptr %504, align 1, !tbaa !25
  %509 = icmp eq i32 %507, %508
  br i1 %509, label %510, label %513

510:                                              ; preds = %506
  %511 = getelementptr inbounds nuw i8, ptr %504, i64 4
  %512 = getelementptr inbounds nuw i8, ptr %503, i64 4
  br label %513

513:                                              ; preds = %510, %506, %.loopexit
  %514 = phi ptr [ %512, %510 ], [ %503, %506 ], [ %503, %.loopexit ]
  %515 = phi ptr [ %511, %510 ], [ %504, %506 ], [ %504, %.loopexit ]
  %516 = icmp ult ptr %515, %453
  br i1 %516, label %517, label %524

517:                                              ; preds = %513
  %518 = load i16, ptr %514, align 1, !tbaa !115
  %519 = load i16, ptr %515, align 1, !tbaa !115
  %520 = icmp eq i16 %518, %519
  br i1 %520, label %521, label %524

521:                                              ; preds = %517
  %522 = getelementptr inbounds nuw i8, ptr %515, i64 2
  %523 = getelementptr inbounds nuw i8, ptr %514, i64 2
  br label %524

524:                                              ; preds = %521, %517, %513
  %525 = phi ptr [ %523, %521 ], [ %514, %517 ], [ %514, %513 ]
  %526 = phi ptr [ %522, %521 ], [ %515, %517 ], [ %515, %513 ]
  %527 = icmp ult ptr %526, %4
  br i1 %527, label %528, label %534

528:                                              ; preds = %524
  %529 = load i8, ptr %525, align 1, !tbaa !42
  %530 = load i8, ptr %526, align 1, !tbaa !42
  %531 = icmp eq i8 %529, %530
  %532 = zext i1 %531 to i64
  %533 = getelementptr inbounds nuw i8, ptr %526, i64 %532
  br label %534

534:                                              ; preds = %528, %524
  %535 = phi ptr [ %526, %524 ], [ %533, %528 ]
  %536 = ptrtoint ptr %535 to i64
  %537 = ptrtoint ptr %473 to i64
  %538 = sub i64 %536, %537
  br label %539

539:                                              ; preds = %534, %495, %482
  %540 = phi i64 [ %538, %534 ], [ %485, %482 ], [ %502, %495 ]
  %541 = add i64 %540, %469
  br label %551

542:                                              ; preds = %455
  %543 = getelementptr inbounds nuw i8, ptr %60, i64 %470
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 %469
  %545 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %473, ptr noundef %544, ptr noundef %4, ptr noundef nonnull %64, ptr noundef nonnull %65)
  %546 = add i64 %545, %469
  %547 = add i64 %546, %470
  %548 = icmp ult i64 %547, %63
  %549 = getelementptr inbounds nuw i8, ptr %36, i64 %470
  %550 = select i1 %548, ptr %543, ptr %549
  br label %551

551:                                              ; preds = %542, %539
  %552 = phi ptr [ %475, %539 ], [ %550, %542 ]
  %553 = phi i64 [ %541, %539 ], [ %546, %542 ]
  %554 = icmp ugt i64 %553, %464
  br i1 %554, label %555, label %571

555:                                              ; preds = %551
  %556 = sub i32 %461, %456
  %557 = zext i32 %556 to i64
  %558 = icmp ugt i64 %553, %557
  %559 = trunc i64 %553 to i32
  %560 = add i32 %456, %559
  %561 = select i1 %558, i32 %560, i32 %461
  %562 = sub i32 %454, %456
  %563 = zext i32 %462 to i64
  %564 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %563
  store i32 %562, ptr %564, align 4, !tbaa !46
  %565 = getelementptr inbounds nuw i8, ptr %564, i64 4
  store i32 %559, ptr %565, align 4, !tbaa !44
  %566 = add i32 %462, 1
  %567 = icmp ugt i64 %553, 4096
  %568 = getelementptr inbounds nuw i8, ptr %3, i64 %553
  %569 = icmp eq ptr %568, %4
  %570 = or i1 %567, %569
  br i1 %570, label %.loopexit76, label %571

571:                                              ; preds = %555, %551
  %572 = phi i64 [ %553, %555 ], [ %464, %551 ]
  %573 = phi i32 [ %566, %555 ], [ %462, %551 ]
  %574 = phi i32 [ %561, %555 ], [ %461, %551 ]
  %575 = getelementptr inbounds nuw i8, ptr %552, i64 %553
  %576 = load i8, ptr %575, align 1, !tbaa !42
  %577 = getelementptr inbounds nuw i8, ptr %3, i64 %553
  %578 = load i8, ptr %577, align 1, !tbaa !42
  %579 = icmp ult i8 %576, %578
  %580 = icmp ugt i32 %456, %66
  br i1 %579, label %581, label %584

581:                                              ; preds = %571
  store i32 %456, ptr %459, align 4, !tbaa !25
  br i1 %580, label %582, label %.loopexit76

582:                                              ; preds = %581
  %583 = getelementptr inbounds nuw i8, ptr %468, i64 4
  br label %585

584:                                              ; preds = %571
  store i32 %456, ptr %460, align 4, !tbaa !25
  br i1 %580, label %585, label %.loopexit76

585:                                              ; preds = %584, %582
  %586 = phi ptr [ %460, %582 ], [ %468, %584 ]
  %587 = phi ptr [ %583, %582 ], [ %459, %584 ]
  %588 = phi i64 [ %458, %582 ], [ %553, %584 ]
  %589 = phi i64 [ %553, %582 ], [ %457, %584 ]
  %590 = phi ptr [ %583, %582 ], [ %468, %584 ]
  %591 = load i32, ptr %590, align 4, !tbaa !25
  %592 = add i32 %463, -1
  %593 = icmp ne i32 %592, 0
  %594 = icmp uge i32 %591, %79
  %595 = select i1 %593, i1 %594, i1 false
  br i1 %595, label %455, label %.loopexit76, !llvm.loop !139

.loopexit76:                                      ; preds = %585, %584, %581, %555, %446
  %596 = phi i32 [ %448, %446 ], [ %566, %555 ], [ %573, %584 ], [ %573, %581 ], [ %573, %585 ]
  %597 = phi i32 [ %85, %446 ], [ %561, %555 ], [ %574, %584 ], [ %574, %581 ], [ %574, %585 ]
  %598 = phi ptr [ %84, %446 ], [ %460, %555 ], [ %9, %584 ], [ %460, %581 ], [ %586, %585 ]
  %599 = phi ptr [ %83, %446 ], [ %459, %555 ], [ %459, %584 ], [ %9, %581 ], [ %587, %585 ]
  store i32 0, ptr %598, align 4, !tbaa !25
  store i32 0, ptr %599, align 4, !tbaa !25
  %600 = add i32 %597, -8
  store i32 %600, ptr %12, align 4, !tbaa !19
  br label %601

601:                                              ; preds = %.loopexit76, %437, %318, %201
  %602 = phi i32 [ %596, %.loopexit76 ], [ 1, %201 ], [ %322, %318 ], [ %441, %437 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %603

603:                                              ; preds = %601, %8
  %604 = phi i32 [ %602, %601 ], [ 0, %8 ]
  ret i32 %604
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i32 @ZSTD_btGetAllMatches_extDict_5(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %604, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %.preheader86, label %34

.preheader86:                                     ; preds = %17, %.preheader86
  %23 = phi i32 [ %27, %.preheader86 ], [ %13, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 %24
  %26 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %25, ptr noundef %4, i32 noundef %21, i32 noundef 5, i32 noundef 1)
  %27 = add i32 %26, %23
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %.preheader86, label %29, !llvm.loop !20

29:                                               ; preds = %.preheader86
  %30 = load ptr, ptr %10, align 8, !tbaa !18
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %18, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %21, %17 ]
  %36 = phi ptr [ %30, %29 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %39 = load i32, ptr %38, align 4, !tbaa !24
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 4095)
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %42 = load i32, ptr %41, align 4, !tbaa !108
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %44 = load ptr, ptr %43, align 8, !tbaa !107
  %45 = load i64, ptr %3, align 1
  %46 = mul i64 %45, -3523014627271114752
  %47 = sub i32 64, %42
  %48 = zext nneg i32 %47 to i64
  %49 = lshr i64 %46, %48
  %50 = getelementptr inbounds nuw [4 x i8], ptr %44, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !25
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %55 = load i32, ptr %54, align 4, !tbaa !110
  %56 = add i32 %55, -1
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %60 = load ptr, ptr %59, align 8, !tbaa !111
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %62 = load i32, ptr %61, align 8, !tbaa !22
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds nuw i8, ptr %60, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %36, i64 %63
  %66 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %58)
  %67 = load i32, ptr %37, align 8, !tbaa !112
  %68 = getelementptr i8, ptr %1, i64 28
  %69 = load i32, ptr %68, align 4, !tbaa !106
  %70 = getelementptr i8, ptr %1, i64 40
  %71 = load i32, ptr %70, align 8, !tbaa !113
  %72 = shl nuw i32 1, %67
  %73 = sub i32 %35, %69
  %74 = icmp ugt i32 %73, %72
  %75 = sub i32 %35, %72
  %76 = icmp eq i32 %71, 0
  %77 = select i1 %76, i1 %74, i1 false
  %78 = select i1 %77, i32 %75, i32 %69
  %79 = tail call i32 @llvm.umax.i32(i32 %78, i32 1)
  %80 = and i32 %35, %58
  %81 = shl nuw i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %82
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 4
  %85 = add i32 %35, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %87 = load i32, ptr %86, align 4, !tbaa !114
  %88 = shl nuw i32 1, %87
  %89 = add i32 %7, -1
  %90 = zext i32 %89 to i64
  %91 = icmp ult i32 %6, -3
  %92 = trunc i64 %45 to i32
  br i1 %91, label %93, label %447

93:                                               ; preds = %34
  %94 = sub i32 %35, %62
  %95 = sub i32 %35, %78
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
  %108 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %102
  %109 = load i32, ptr %108, align 4, !tbaa !25
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i32 [ %106, %104 ], [ %109, %107 ]
  %112 = sub i32 %35, %111
  %113 = add i32 %111, -1
  %114 = icmp ult i32 %113, %94
  br i1 %114, label %115, label %184

115:                                              ; preds = %110
  %116 = icmp uge i32 %112, %78
  %117 = zext i32 %111 to i64
  %118 = sub nsw i64 0, %117
  %119 = getelementptr inbounds i8, ptr %3, i64 %118
  %120 = load i32, ptr %119, align 1, !tbaa !25
  %121 = icmp eq i32 %120, %92
  %122 = and i1 %116, %121
  br i1 %122, label %123, label %209

123:                                              ; preds = %115
  %124 = getelementptr inbounds i8, ptr %96, i64 %118
  br i1 %98, label %125, label %.loopexit85

125:                                              ; preds = %123
  %126 = load i64, ptr %124, align 1, !tbaa !30
  %127 = load i64, ptr %96, align 1, !tbaa !30
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %.preheader84, label %129

129:                                              ; preds = %125
  %130 = xor i64 %127, %126
  %131 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %130, i1 true)
  %132 = lshr i64 %131, 3
  br label %197

.preheader84:                                     ; preds = %125, %138
  %133 = phi ptr [ %136, %138 ], [ %124, %125 ]
  %134 = phi ptr [ %135, %138 ], [ %96, %125 ]
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 8
  %136 = getelementptr inbounds nuw i8, ptr %133, i64 8
  %137 = icmp ult ptr %135, %97
  br i1 %137, label %138, label %.loopexit85

138:                                              ; preds = %.preheader84
  %139 = load i64, ptr %136, align 1, !tbaa !30
  %140 = load i64, ptr %135, align 1, !tbaa !30
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %.preheader84, label %142

142:                                              ; preds = %138
  %143 = xor i64 %140, %139
  %144 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %143, i1 true)
  %145 = lshr i64 %144, 3
  %146 = getelementptr inbounds nuw i8, ptr %135, i64 %145
  %147 = ptrtoint ptr %146 to i64
  %148 = sub i64 %147, %101
  br label %197

.loopexit85:                                      ; preds = %.preheader84, %123
  %149 = phi ptr [ %124, %123 ], [ %136, %.preheader84 ]
  %150 = phi ptr [ %96, %123 ], [ %135, %.preheader84 ]
  %151 = icmp ult ptr %150, %99
  br i1 %151, label %152, label %159

152:                                              ; preds = %.loopexit85
  %153 = load i32, ptr %149, align 1, !tbaa !25
  %154 = load i32, ptr %150, align 1, !tbaa !25
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = getelementptr inbounds nuw i8, ptr %150, i64 4
  %158 = getelementptr inbounds nuw i8, ptr %149, i64 4
  br label %159

159:                                              ; preds = %156, %152, %.loopexit85
  %160 = phi ptr [ %158, %156 ], [ %149, %152 ], [ %149, %.loopexit85 ]
  %161 = phi ptr [ %157, %156 ], [ %150, %152 ], [ %150, %.loopexit85 ]
  %162 = icmp ult ptr %161, %100
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i16, ptr %160, align 1, !tbaa !115
  %165 = load i16, ptr %161, align 1, !tbaa !115
  %166 = icmp eq i16 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = getelementptr inbounds nuw i8, ptr %161, i64 2
  %169 = getelementptr inbounds nuw i8, ptr %160, i64 2
  br label %170

170:                                              ; preds = %167, %163, %159
  %171 = phi ptr [ %169, %167 ], [ %160, %163 ], [ %160, %159 ]
  %172 = phi ptr [ %168, %167 ], [ %161, %163 ], [ %161, %159 ]
  %173 = icmp ult ptr %172, %4
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
  %183 = sub i64 %182, %101
  br label %197

184:                                              ; preds = %110
  %185 = zext i32 %112 to i64
  %186 = getelementptr inbounds nuw i8, ptr %60, i64 %185
  %187 = icmp uge i32 %113, %95
  %188 = sub i32 %112, %62
  %189 = icmp ugt i32 %188, -4
  %190 = select i1 %187, i1 true, i1 %189
  br i1 %190, label %209, label %191

191:                                              ; preds = %184
  %192 = load i32, ptr %186, align 1, !tbaa !25
  %193 = icmp eq i32 %192, %92
  br i1 %193, label %194, label %209

194:                                              ; preds = %191
  %195 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %196 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %96, ptr noundef nonnull %195, ptr noundef %4, ptr noundef nonnull %64, ptr noundef %65)
  br label %197

197:                                              ; preds = %194, %180, %142, %129
  %198 = phi i64 [ %196, %194 ], [ %183, %180 ], [ %132, %129 ], [ %148, %142 ]
  %199 = trunc i64 %198 to i32
  %200 = add i32 %199, 4
  %201 = icmp ult i32 %89, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %197
  %203 = zext i32 %200 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %200, ptr %204, align 4, !tbaa !44
  %205 = icmp ule i32 %200, %40
  %206 = getelementptr inbounds nuw i8, ptr %3, i64 %203
  %207 = icmp ne ptr %206, %4
  %208 = and i1 %205, %207
  br i1 %208, label %209, label %602

209:                                              ; preds = %202, %197, %191, %184, %115
  %210 = phi i32 [ 1, %202 ], [ 0, %197 ], [ 0, %115 ], [ 0, %191 ], [ 0, %184 ]
  %211 = phi i64 [ %203, %202 ], [ %90, %197 ], [ %90, %115 ], [ %90, %191 ], [ %90, %184 ]
  %212 = add nuw nsw i64 %102, 1
  %213 = icmp eq i64 %212, 3
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %212
  %216 = load i32, ptr %215, align 4, !tbaa !25
  br label %220

217:                                              ; preds = %209
  %218 = load i32, ptr %5, align 4, !tbaa !25
  %219 = add i32 %218, -1
  br label %220

220:                                              ; preds = %217, %214
  %221 = phi i32 [ %219, %217 ], [ %216, %214 ]
  %222 = sub i32 %35, %221
  %223 = add i32 %221, -1
  %224 = icmp ult i32 %223, %94
  br i1 %224, label %241, label %225

225:                                              ; preds = %220
  %226 = zext i32 %222 to i64
  %227 = getelementptr inbounds nuw i8, ptr %60, i64 %226
  %228 = icmp uge i32 %223, %95
  %229 = sub i32 %222, %62
  %230 = icmp ugt i32 %229, -4
  %231 = select i1 %228, i1 true, i1 %230
  br i1 %231, label %315, label %232

232:                                              ; preds = %225
  %233 = load i32, ptr %3, align 1, !tbaa !25
  %234 = load i32, ptr %227, align 1, !tbaa !25
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %315

236:                                              ; preds = %232
  %237 = getelementptr inbounds nuw i8, ptr %227, i64 4
  %238 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %96, ptr noundef nonnull %237, ptr noundef %4, ptr noundef nonnull %64, ptr noundef %65)
  %239 = trunc i64 %238 to i32
  %240 = add i32 %239, 4
  br label %315

241:                                              ; preds = %220
  %242 = icmp uge i32 %222, %78
  %243 = load i32, ptr %3, align 1, !tbaa !25
  %244 = zext i32 %221 to i64
  %245 = sub nsw i64 0, %244
  %246 = getelementptr inbounds i8, ptr %3, i64 %245
  %247 = load i32, ptr %246, align 1, !tbaa !25
  %248 = icmp eq i32 %243, %247
  %249 = and i1 %242, %248
  br i1 %249, label %250, label %315

250:                                              ; preds = %241
  %251 = getelementptr inbounds i8, ptr %96, i64 %245
  br i1 %98, label %252, label %.loopexit83

252:                                              ; preds = %250
  %253 = load i64, ptr %251, align 1, !tbaa !30
  %254 = load i64, ptr %96, align 1, !tbaa !30
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %.preheader82, label %256

256:                                              ; preds = %252
  %257 = xor i64 %254, %253
  %258 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %257, i1 true)
  %259 = lshr i64 %258, 3
  br label %311

.preheader82:                                     ; preds = %252, %300
  %260 = phi ptr [ %263, %300 ], [ %251, %252 ]
  %261 = phi ptr [ %262, %300 ], [ %96, %252 ]
  %262 = getelementptr inbounds nuw i8, ptr %261, i64 8
  %263 = getelementptr inbounds nuw i8, ptr %260, i64 8
  %264 = icmp ult ptr %262, %97
  br i1 %264, label %300, label %.loopexit83

.loopexit83:                                      ; preds = %.preheader82, %250
  %265 = phi ptr [ %251, %250 ], [ %263, %.preheader82 ]
  %266 = phi ptr [ %96, %250 ], [ %262, %.preheader82 ]
  %267 = icmp ult ptr %266, %99
  br i1 %267, label %268, label %275

268:                                              ; preds = %.loopexit83
  %269 = load i32, ptr %265, align 1, !tbaa !25
  %270 = load i32, ptr %266, align 1, !tbaa !25
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = getelementptr inbounds nuw i8, ptr %266, i64 4
  %274 = getelementptr inbounds nuw i8, ptr %265, i64 4
  br label %275

275:                                              ; preds = %272, %268, %.loopexit83
  %276 = phi ptr [ %274, %272 ], [ %265, %268 ], [ %265, %.loopexit83 ]
  %277 = phi ptr [ %273, %272 ], [ %266, %268 ], [ %266, %.loopexit83 ]
  %278 = icmp ult ptr %277, %100
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = load i16, ptr %276, align 1, !tbaa !115
  %281 = load i16, ptr %277, align 1, !tbaa !115
  %282 = icmp eq i16 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = getelementptr inbounds nuw i8, ptr %277, i64 2
  %285 = getelementptr inbounds nuw i8, ptr %276, i64 2
  br label %286

286:                                              ; preds = %283, %279, %275
  %287 = phi ptr [ %285, %283 ], [ %276, %279 ], [ %276, %275 ]
  %288 = phi ptr [ %284, %283 ], [ %277, %279 ], [ %277, %275 ]
  %289 = icmp ult ptr %288, %4
  br i1 %289, label %290, label %296

290:                                              ; preds = %286
  %291 = load i8, ptr %287, align 1, !tbaa !42
  %292 = load i8, ptr %288, align 1, !tbaa !42
  %293 = icmp eq i8 %291, %292
  %294 = zext i1 %293 to i64
  %295 = getelementptr inbounds nuw i8, ptr %288, i64 %294
  br label %296

296:                                              ; preds = %290, %286
  %297 = phi ptr [ %288, %286 ], [ %295, %290 ]
  %298 = ptrtoint ptr %297 to i64
  %299 = sub i64 %298, %101
  br label %311

300:                                              ; preds = %.preheader82
  %301 = load i64, ptr %263, align 1, !tbaa !30
  %302 = load i64, ptr %262, align 1, !tbaa !30
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %.preheader82, label %304

304:                                              ; preds = %300
  %305 = xor i64 %302, %301
  %306 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %305, i1 true)
  %307 = lshr i64 %306, 3
  %308 = getelementptr inbounds nuw i8, ptr %262, i64 %307
  %309 = ptrtoint ptr %308 to i64
  %310 = sub i64 %309, %101
  br label %311

311:                                              ; preds = %304, %296, %256
  %312 = phi i64 [ %299, %296 ], [ %259, %256 ], [ %310, %304 ]
  %313 = trunc i64 %312 to i32
  %314 = add i32 %313, 4
  br label %315

315:                                              ; preds = %311, %241, %236, %232, %225
  %316 = phi i32 [ %314, %311 ], [ 0, %241 ], [ %240, %236 ], [ 0, %232 ], [ 0, %225 ]
  %317 = zext i32 %316 to i64
  %318 = icmp samesign ult i64 %211, %317
  br i1 %318, label %319, label %328

319:                                              ; preds = %315
  %320 = zext nneg i32 %210 to i64
  %321 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %320
  store i32 2, ptr %321, align 4, !tbaa !46
  %322 = getelementptr inbounds nuw i8, ptr %321, i64 4
  store i32 %316, ptr %322, align 4, !tbaa !44
  %323 = add nuw nsw i32 %210, 1
  %324 = icmp ule i32 %316, %40
  %325 = getelementptr inbounds nuw i8, ptr %3, i64 %317
  %326 = icmp ne ptr %325, %4
  %327 = and i1 %324, %326
  br i1 %327, label %328, label %602

328:                                              ; preds = %319, %315
  %329 = phi i32 [ %323, %319 ], [ %210, %315 ]
  %330 = phi i64 [ %317, %319 ], [ %211, %315 ]
  %331 = add nuw nsw i64 %102, 2
  %332 = icmp eq i64 %331, 3
  br i1 %332, label %336, label %333

333:                                              ; preds = %328
  %334 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %331
  %335 = load i32, ptr %334, align 4, !tbaa !25
  br label %339

336:                                              ; preds = %328
  %337 = load i32, ptr %5, align 4, !tbaa !25
  %338 = add i32 %337, -1
  br label %339

339:                                              ; preds = %336, %333
  %340 = phi i32 [ %338, %336 ], [ %335, %333 ]
  %341 = sub i32 %35, %340
  %342 = add i32 %340, -1
  %343 = icmp ult i32 %342, %94
  br i1 %343, label %360, label %344

344:                                              ; preds = %339
  %345 = zext i32 %341 to i64
  %346 = getelementptr inbounds nuw i8, ptr %60, i64 %345
  %347 = icmp uge i32 %342, %95
  %348 = sub i32 %341, %62
  %349 = icmp ugt i32 %348, -4
  %350 = select i1 %347, i1 true, i1 %349
  br i1 %350, label %434, label %351

351:                                              ; preds = %344
  %352 = load i32, ptr %3, align 1, !tbaa !25
  %353 = load i32, ptr %346, align 1, !tbaa !25
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %434

355:                                              ; preds = %351
  %356 = getelementptr inbounds nuw i8, ptr %346, i64 4
  %357 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %96, ptr noundef nonnull %356, ptr noundef %4, ptr noundef nonnull %64, ptr noundef %65)
  %358 = trunc i64 %357 to i32
  %359 = add i32 %358, 4
  br label %434

360:                                              ; preds = %339
  %361 = icmp uge i32 %341, %78
  %362 = load i32, ptr %3, align 1, !tbaa !25
  %363 = zext i32 %340 to i64
  %364 = sub nsw i64 0, %363
  %365 = getelementptr inbounds i8, ptr %3, i64 %364
  %366 = load i32, ptr %365, align 1, !tbaa !25
  %367 = icmp eq i32 %362, %366
  %368 = and i1 %361, %367
  br i1 %368, label %369, label %434

369:                                              ; preds = %360
  %370 = getelementptr inbounds i8, ptr %96, i64 %364
  br i1 %98, label %371, label %.loopexit81

371:                                              ; preds = %369
  %372 = load i64, ptr %370, align 1, !tbaa !30
  %373 = load i64, ptr %96, align 1, !tbaa !30
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %.preheader80, label %375

375:                                              ; preds = %371
  %376 = xor i64 %373, %372
  %377 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %376, i1 true)
  %378 = lshr i64 %377, 3
  br label %430

.preheader80:                                     ; preds = %371, %419
  %379 = phi ptr [ %382, %419 ], [ %370, %371 ]
  %380 = phi ptr [ %381, %419 ], [ %96, %371 ]
  %381 = getelementptr inbounds nuw i8, ptr %380, i64 8
  %382 = getelementptr inbounds nuw i8, ptr %379, i64 8
  %383 = icmp ult ptr %381, %97
  br i1 %383, label %419, label %.loopexit81

.loopexit81:                                      ; preds = %.preheader80, %369
  %384 = phi ptr [ %370, %369 ], [ %382, %.preheader80 ]
  %385 = phi ptr [ %96, %369 ], [ %381, %.preheader80 ]
  %386 = icmp ult ptr %385, %99
  br i1 %386, label %387, label %394

387:                                              ; preds = %.loopexit81
  %388 = load i32, ptr %384, align 1, !tbaa !25
  %389 = load i32, ptr %385, align 1, !tbaa !25
  %390 = icmp eq i32 %388, %389
  br i1 %390, label %391, label %394

391:                                              ; preds = %387
  %392 = getelementptr inbounds nuw i8, ptr %385, i64 4
  %393 = getelementptr inbounds nuw i8, ptr %384, i64 4
  br label %394

394:                                              ; preds = %391, %387, %.loopexit81
  %395 = phi ptr [ %393, %391 ], [ %384, %387 ], [ %384, %.loopexit81 ]
  %396 = phi ptr [ %392, %391 ], [ %385, %387 ], [ %385, %.loopexit81 ]
  %397 = icmp ult ptr %396, %100
  br i1 %397, label %398, label %405

398:                                              ; preds = %394
  %399 = load i16, ptr %395, align 1, !tbaa !115
  %400 = load i16, ptr %396, align 1, !tbaa !115
  %401 = icmp eq i16 %399, %400
  br i1 %401, label %402, label %405

402:                                              ; preds = %398
  %403 = getelementptr inbounds nuw i8, ptr %396, i64 2
  %404 = getelementptr inbounds nuw i8, ptr %395, i64 2
  br label %405

405:                                              ; preds = %402, %398, %394
  %406 = phi ptr [ %404, %402 ], [ %395, %398 ], [ %395, %394 ]
  %407 = phi ptr [ %403, %402 ], [ %396, %398 ], [ %396, %394 ]
  %408 = icmp ult ptr %407, %4
  br i1 %408, label %409, label %415

409:                                              ; preds = %405
  %410 = load i8, ptr %406, align 1, !tbaa !42
  %411 = load i8, ptr %407, align 1, !tbaa !42
  %412 = icmp eq i8 %410, %411
  %413 = zext i1 %412 to i64
  %414 = getelementptr inbounds nuw i8, ptr %407, i64 %413
  br label %415

415:                                              ; preds = %409, %405
  %416 = phi ptr [ %407, %405 ], [ %414, %409 ]
  %417 = ptrtoint ptr %416 to i64
  %418 = sub i64 %417, %101
  br label %430

419:                                              ; preds = %.preheader80
  %420 = load i64, ptr %382, align 1, !tbaa !30
  %421 = load i64, ptr %381, align 1, !tbaa !30
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %.preheader80, label %423

423:                                              ; preds = %419
  %424 = xor i64 %421, %420
  %425 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %424, i1 true)
  %426 = lshr i64 %425, 3
  %427 = getelementptr inbounds nuw i8, ptr %381, i64 %426
  %428 = ptrtoint ptr %427 to i64
  %429 = sub i64 %428, %101
  br label %430

430:                                              ; preds = %423, %415, %375
  %431 = phi i64 [ %418, %415 ], [ %378, %375 ], [ %429, %423 ]
  %432 = trunc i64 %431 to i32
  %433 = add i32 %432, 4
  br label %434

434:                                              ; preds = %430, %360, %355, %351, %344
  %435 = phi i32 [ %433, %430 ], [ 0, %360 ], [ %359, %355 ], [ 0, %351 ], [ 0, %344 ]
  %436 = zext i32 %435 to i64
  %437 = icmp samesign ult i64 %330, %436
  br i1 %437, label %438, label %447

438:                                              ; preds = %434
  %439 = zext nneg i32 %329 to i64
  %440 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %439
  store i32 3, ptr %440, align 4, !tbaa !46
  %441 = getelementptr inbounds nuw i8, ptr %440, i64 4
  store i32 %435, ptr %441, align 4, !tbaa !44
  %442 = add nuw nsw i32 %329, 1
  %443 = icmp ule i32 %435, %40
  %444 = getelementptr inbounds nuw i8, ptr %3, i64 %436
  %445 = icmp ne ptr %444, %4
  %446 = and i1 %443, %445
  br i1 %446, label %447, label %602

447:                                              ; preds = %438, %434, %34
  %448 = phi i64 [ %90, %34 ], [ %436, %438 ], [ %330, %434 ]
  %449 = phi i32 [ 0, %34 ], [ %442, %438 ], [ %329, %434 ]
  store i32 %35, ptr %50, align 4, !tbaa !25
  %450 = icmp ult i32 %51, %79
  br i1 %450, label %.loopexit76, label %451

451:                                              ; preds = %447
  %452 = getelementptr inbounds i8, ptr %4, i64 -7
  %453 = getelementptr inbounds i8, ptr %4, i64 -3
  %454 = getelementptr inbounds i8, ptr %4, i64 -1
  %455 = add i32 %35, 3
  br label %456

456:                                              ; preds = %586, %451
  %457 = phi i32 [ %51, %451 ], [ %592, %586 ]
  %458 = phi i64 [ 0, %451 ], [ %590, %586 ]
  %459 = phi i64 [ 0, %451 ], [ %589, %586 ]
  %460 = phi ptr [ %83, %451 ], [ %588, %586 ]
  %461 = phi ptr [ %84, %451 ], [ %587, %586 ]
  %462 = phi i32 [ %85, %451 ], [ %575, %586 ]
  %463 = phi i32 [ %449, %451 ], [ %574, %586 ]
  %464 = phi i32 [ %88, %451 ], [ %593, %586 ]
  %465 = phi i64 [ %448, %451 ], [ %573, %586 ]
  %466 = and i32 %457, %58
  %467 = shl nuw i32 %466, 1
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %468
  %470 = tail call i64 @llvm.umin.i64(i64 %458, i64 %459)
  %471 = zext i32 %457 to i64
  %472 = add i64 %470, %471
  %473 = icmp ult i64 %472, %63
  %474 = getelementptr inbounds nuw i8, ptr %3, i64 %470
  br i1 %473, label %543, label %475

475:                                              ; preds = %456
  %476 = getelementptr inbounds nuw i8, ptr %36, i64 %471
  %477 = getelementptr inbounds nuw i8, ptr %476, i64 %470
  %478 = icmp ult ptr %474, %452
  br i1 %478, label %479, label %.loopexit

479:                                              ; preds = %475
  %480 = load i64, ptr %477, align 1, !tbaa !30
  %481 = load i64, ptr %474, align 1, !tbaa !30
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %.preheader, label %483

483:                                              ; preds = %479
  %484 = xor i64 %481, %480
  %485 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %484, i1 true)
  %486 = lshr i64 %485, 3
  br label %540

.preheader:                                       ; preds = %479, %492
  %487 = phi ptr [ %490, %492 ], [ %477, %479 ]
  %488 = phi ptr [ %489, %492 ], [ %474, %479 ]
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 8
  %490 = getelementptr inbounds nuw i8, ptr %487, i64 8
  %491 = icmp ult ptr %489, %452
  br i1 %491, label %492, label %.loopexit

492:                                              ; preds = %.preheader
  %493 = load i64, ptr %490, align 1, !tbaa !30
  %494 = load i64, ptr %489, align 1, !tbaa !30
  %495 = icmp eq i64 %493, %494
  br i1 %495, label %.preheader, label %496

496:                                              ; preds = %492
  %497 = xor i64 %494, %493
  %498 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %497, i1 true)
  %499 = lshr i64 %498, 3
  %500 = getelementptr inbounds nuw i8, ptr %489, i64 %499
  %501 = ptrtoint ptr %500 to i64
  %502 = ptrtoint ptr %474 to i64
  %503 = sub i64 %501, %502
  br label %540

.loopexit:                                        ; preds = %.preheader, %475
  %504 = phi ptr [ %477, %475 ], [ %490, %.preheader ]
  %505 = phi ptr [ %474, %475 ], [ %489, %.preheader ]
  %506 = icmp ult ptr %505, %453
  br i1 %506, label %507, label %514

507:                                              ; preds = %.loopexit
  %508 = load i32, ptr %504, align 1, !tbaa !25
  %509 = load i32, ptr %505, align 1, !tbaa !25
  %510 = icmp eq i32 %508, %509
  br i1 %510, label %511, label %514

511:                                              ; preds = %507
  %512 = getelementptr inbounds nuw i8, ptr %505, i64 4
  %513 = getelementptr inbounds nuw i8, ptr %504, i64 4
  br label %514

514:                                              ; preds = %511, %507, %.loopexit
  %515 = phi ptr [ %513, %511 ], [ %504, %507 ], [ %504, %.loopexit ]
  %516 = phi ptr [ %512, %511 ], [ %505, %507 ], [ %505, %.loopexit ]
  %517 = icmp ult ptr %516, %454
  br i1 %517, label %518, label %525

518:                                              ; preds = %514
  %519 = load i16, ptr %515, align 1, !tbaa !115
  %520 = load i16, ptr %516, align 1, !tbaa !115
  %521 = icmp eq i16 %519, %520
  br i1 %521, label %522, label %525

522:                                              ; preds = %518
  %523 = getelementptr inbounds nuw i8, ptr %516, i64 2
  %524 = getelementptr inbounds nuw i8, ptr %515, i64 2
  br label %525

525:                                              ; preds = %522, %518, %514
  %526 = phi ptr [ %524, %522 ], [ %515, %518 ], [ %515, %514 ]
  %527 = phi ptr [ %523, %522 ], [ %516, %518 ], [ %516, %514 ]
  %528 = icmp ult ptr %527, %4
  br i1 %528, label %529, label %535

529:                                              ; preds = %525
  %530 = load i8, ptr %526, align 1, !tbaa !42
  %531 = load i8, ptr %527, align 1, !tbaa !42
  %532 = icmp eq i8 %530, %531
  %533 = zext i1 %532 to i64
  %534 = getelementptr inbounds nuw i8, ptr %527, i64 %533
  br label %535

535:                                              ; preds = %529, %525
  %536 = phi ptr [ %527, %525 ], [ %534, %529 ]
  %537 = ptrtoint ptr %536 to i64
  %538 = ptrtoint ptr %474 to i64
  %539 = sub i64 %537, %538
  br label %540

540:                                              ; preds = %535, %496, %483
  %541 = phi i64 [ %539, %535 ], [ %486, %483 ], [ %503, %496 ]
  %542 = add i64 %541, %470
  br label %552

543:                                              ; preds = %456
  %544 = getelementptr inbounds nuw i8, ptr %60, i64 %471
  %545 = getelementptr inbounds nuw i8, ptr %544, i64 %470
  %546 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %474, ptr noundef %545, ptr noundef %4, ptr noundef nonnull %64, ptr noundef nonnull %65)
  %547 = add i64 %546, %470
  %548 = add i64 %547, %471
  %549 = icmp ult i64 %548, %63
  %550 = getelementptr inbounds nuw i8, ptr %36, i64 %471
  %551 = select i1 %549, ptr %544, ptr %550
  br label %552

552:                                              ; preds = %543, %540
  %553 = phi ptr [ %476, %540 ], [ %551, %543 ]
  %554 = phi i64 [ %542, %540 ], [ %547, %543 ]
  %555 = icmp ugt i64 %554, %465
  br i1 %555, label %556, label %572

556:                                              ; preds = %552
  %557 = sub i32 %462, %457
  %558 = zext i32 %557 to i64
  %559 = icmp ugt i64 %554, %558
  %560 = trunc i64 %554 to i32
  %561 = add i32 %457, %560
  %562 = select i1 %559, i32 %561, i32 %462
  %563 = sub i32 %455, %457
  %564 = zext i32 %463 to i64
  %565 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %564
  store i32 %563, ptr %565, align 4, !tbaa !46
  %566 = getelementptr inbounds nuw i8, ptr %565, i64 4
  store i32 %560, ptr %566, align 4, !tbaa !44
  %567 = add i32 %463, 1
  %568 = icmp ugt i64 %554, 4096
  %569 = getelementptr inbounds nuw i8, ptr %3, i64 %554
  %570 = icmp eq ptr %569, %4
  %571 = or i1 %568, %570
  br i1 %571, label %.loopexit76, label %572

572:                                              ; preds = %556, %552
  %573 = phi i64 [ %554, %556 ], [ %465, %552 ]
  %574 = phi i32 [ %567, %556 ], [ %463, %552 ]
  %575 = phi i32 [ %562, %556 ], [ %462, %552 ]
  %576 = getelementptr inbounds nuw i8, ptr %553, i64 %554
  %577 = load i8, ptr %576, align 1, !tbaa !42
  %578 = getelementptr inbounds nuw i8, ptr %3, i64 %554
  %579 = load i8, ptr %578, align 1, !tbaa !42
  %580 = icmp ult i8 %577, %579
  %581 = icmp ugt i32 %457, %66
  br i1 %580, label %582, label %585

582:                                              ; preds = %572
  store i32 %457, ptr %460, align 4, !tbaa !25
  br i1 %581, label %583, label %.loopexit76

583:                                              ; preds = %582
  %584 = getelementptr inbounds nuw i8, ptr %469, i64 4
  br label %586

585:                                              ; preds = %572
  store i32 %457, ptr %461, align 4, !tbaa !25
  br i1 %581, label %586, label %.loopexit76

586:                                              ; preds = %585, %583
  %587 = phi ptr [ %461, %583 ], [ %469, %585 ]
  %588 = phi ptr [ %584, %583 ], [ %460, %585 ]
  %589 = phi i64 [ %459, %583 ], [ %554, %585 ]
  %590 = phi i64 [ %554, %583 ], [ %458, %585 ]
  %591 = phi ptr [ %584, %583 ], [ %469, %585 ]
  %592 = load i32, ptr %591, align 4, !tbaa !25
  %593 = add i32 %464, -1
  %594 = icmp ne i32 %593, 0
  %595 = icmp uge i32 %592, %79
  %596 = select i1 %594, i1 %595, i1 false
  br i1 %596, label %456, label %.loopexit76, !llvm.loop !139

.loopexit76:                                      ; preds = %586, %585, %582, %556, %447
  %597 = phi i32 [ %449, %447 ], [ %567, %556 ], [ %574, %585 ], [ %574, %582 ], [ %574, %586 ]
  %598 = phi i32 [ %85, %447 ], [ %562, %556 ], [ %575, %585 ], [ %575, %582 ], [ %575, %586 ]
  %599 = phi ptr [ %84, %447 ], [ %461, %556 ], [ %9, %585 ], [ %461, %582 ], [ %587, %586 ]
  %600 = phi ptr [ %83, %447 ], [ %460, %556 ], [ %460, %585 ], [ %9, %582 ], [ %588, %586 ]
  store i32 0, ptr %599, align 4, !tbaa !25
  store i32 0, ptr %600, align 4, !tbaa !25
  %601 = add i32 %598, -8
  store i32 %601, ptr %12, align 4, !tbaa !19
  br label %602

602:                                              ; preds = %.loopexit76, %438, %319, %202
  %603 = phi i32 [ %597, %.loopexit76 ], [ 1, %202 ], [ %323, %319 ], [ %442, %438 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %604

604:                                              ; preds = %602, %8
  %605 = phi i32 [ %603, %602 ], [ 0, %8 ]
  ret i32 %605
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i32 @ZSTD_btGetAllMatches_extDict_6(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %604, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %.preheader86, label %34

.preheader86:                                     ; preds = %17, %.preheader86
  %23 = phi i32 [ %27, %.preheader86 ], [ %13, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 %24
  %26 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %25, ptr noundef %4, i32 noundef %21, i32 noundef 6, i32 noundef 1)
  %27 = add i32 %26, %23
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %.preheader86, label %29, !llvm.loop !20

29:                                               ; preds = %.preheader86
  %30 = load ptr, ptr %10, align 8, !tbaa !18
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %18, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %21, %17 ]
  %36 = phi ptr [ %30, %29 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %39 = load i32, ptr %38, align 4, !tbaa !24
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 4095)
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %42 = load i32, ptr %41, align 4, !tbaa !108
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %44 = load ptr, ptr %43, align 8, !tbaa !107
  %45 = load i64, ptr %3, align 1
  %46 = mul i64 %45, -3523014627193847808
  %47 = sub i32 64, %42
  %48 = zext nneg i32 %47 to i64
  %49 = lshr i64 %46, %48
  %50 = getelementptr inbounds nuw [4 x i8], ptr %44, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !25
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %55 = load i32, ptr %54, align 4, !tbaa !110
  %56 = add i32 %55, -1
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %60 = load ptr, ptr %59, align 8, !tbaa !111
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %62 = load i32, ptr %61, align 8, !tbaa !22
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds nuw i8, ptr %60, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %36, i64 %63
  %66 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %58)
  %67 = load i32, ptr %37, align 8, !tbaa !112
  %68 = getelementptr i8, ptr %1, i64 28
  %69 = load i32, ptr %68, align 4, !tbaa !106
  %70 = getelementptr i8, ptr %1, i64 40
  %71 = load i32, ptr %70, align 8, !tbaa !113
  %72 = shl nuw i32 1, %67
  %73 = sub i32 %35, %69
  %74 = icmp ugt i32 %73, %72
  %75 = sub i32 %35, %72
  %76 = icmp eq i32 %71, 0
  %77 = select i1 %76, i1 %74, i1 false
  %78 = select i1 %77, i32 %75, i32 %69
  %79 = tail call i32 @llvm.umax.i32(i32 %78, i32 1)
  %80 = and i32 %35, %58
  %81 = shl nuw i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %82
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 4
  %85 = add i32 %35, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %87 = load i32, ptr %86, align 4, !tbaa !114
  %88 = shl nuw i32 1, %87
  %89 = add i32 %7, -1
  %90 = zext i32 %89 to i64
  %91 = icmp ult i32 %6, -3
  %92 = trunc i64 %45 to i32
  br i1 %91, label %93, label %447

93:                                               ; preds = %34
  %94 = sub i32 %35, %62
  %95 = sub i32 %35, %78
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
  %108 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %102
  %109 = load i32, ptr %108, align 4, !tbaa !25
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i32 [ %106, %104 ], [ %109, %107 ]
  %112 = sub i32 %35, %111
  %113 = add i32 %111, -1
  %114 = icmp ult i32 %113, %94
  br i1 %114, label %115, label %184

115:                                              ; preds = %110
  %116 = icmp uge i32 %112, %78
  %117 = zext i32 %111 to i64
  %118 = sub nsw i64 0, %117
  %119 = getelementptr inbounds i8, ptr %3, i64 %118
  %120 = load i32, ptr %119, align 1, !tbaa !25
  %121 = icmp eq i32 %120, %92
  %122 = and i1 %116, %121
  br i1 %122, label %123, label %209

123:                                              ; preds = %115
  %124 = getelementptr inbounds i8, ptr %96, i64 %118
  br i1 %98, label %125, label %.loopexit85

125:                                              ; preds = %123
  %126 = load i64, ptr %124, align 1, !tbaa !30
  %127 = load i64, ptr %96, align 1, !tbaa !30
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %.preheader84, label %129

129:                                              ; preds = %125
  %130 = xor i64 %127, %126
  %131 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %130, i1 true)
  %132 = lshr i64 %131, 3
  br label %197

.preheader84:                                     ; preds = %125, %138
  %133 = phi ptr [ %136, %138 ], [ %124, %125 ]
  %134 = phi ptr [ %135, %138 ], [ %96, %125 ]
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 8
  %136 = getelementptr inbounds nuw i8, ptr %133, i64 8
  %137 = icmp ult ptr %135, %97
  br i1 %137, label %138, label %.loopexit85

138:                                              ; preds = %.preheader84
  %139 = load i64, ptr %136, align 1, !tbaa !30
  %140 = load i64, ptr %135, align 1, !tbaa !30
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %.preheader84, label %142

142:                                              ; preds = %138
  %143 = xor i64 %140, %139
  %144 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %143, i1 true)
  %145 = lshr i64 %144, 3
  %146 = getelementptr inbounds nuw i8, ptr %135, i64 %145
  %147 = ptrtoint ptr %146 to i64
  %148 = sub i64 %147, %101
  br label %197

.loopexit85:                                      ; preds = %.preheader84, %123
  %149 = phi ptr [ %124, %123 ], [ %136, %.preheader84 ]
  %150 = phi ptr [ %96, %123 ], [ %135, %.preheader84 ]
  %151 = icmp ult ptr %150, %99
  br i1 %151, label %152, label %159

152:                                              ; preds = %.loopexit85
  %153 = load i32, ptr %149, align 1, !tbaa !25
  %154 = load i32, ptr %150, align 1, !tbaa !25
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = getelementptr inbounds nuw i8, ptr %150, i64 4
  %158 = getelementptr inbounds nuw i8, ptr %149, i64 4
  br label %159

159:                                              ; preds = %156, %152, %.loopexit85
  %160 = phi ptr [ %158, %156 ], [ %149, %152 ], [ %149, %.loopexit85 ]
  %161 = phi ptr [ %157, %156 ], [ %150, %152 ], [ %150, %.loopexit85 ]
  %162 = icmp ult ptr %161, %100
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i16, ptr %160, align 1, !tbaa !115
  %165 = load i16, ptr %161, align 1, !tbaa !115
  %166 = icmp eq i16 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = getelementptr inbounds nuw i8, ptr %161, i64 2
  %169 = getelementptr inbounds nuw i8, ptr %160, i64 2
  br label %170

170:                                              ; preds = %167, %163, %159
  %171 = phi ptr [ %169, %167 ], [ %160, %163 ], [ %160, %159 ]
  %172 = phi ptr [ %168, %167 ], [ %161, %163 ], [ %161, %159 ]
  %173 = icmp ult ptr %172, %4
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
  %183 = sub i64 %182, %101
  br label %197

184:                                              ; preds = %110
  %185 = zext i32 %112 to i64
  %186 = getelementptr inbounds nuw i8, ptr %60, i64 %185
  %187 = icmp uge i32 %113, %95
  %188 = sub i32 %112, %62
  %189 = icmp ugt i32 %188, -4
  %190 = select i1 %187, i1 true, i1 %189
  br i1 %190, label %209, label %191

191:                                              ; preds = %184
  %192 = load i32, ptr %186, align 1, !tbaa !25
  %193 = icmp eq i32 %192, %92
  br i1 %193, label %194, label %209

194:                                              ; preds = %191
  %195 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %196 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %96, ptr noundef nonnull %195, ptr noundef %4, ptr noundef nonnull %64, ptr noundef %65)
  br label %197

197:                                              ; preds = %194, %180, %142, %129
  %198 = phi i64 [ %196, %194 ], [ %183, %180 ], [ %132, %129 ], [ %148, %142 ]
  %199 = trunc i64 %198 to i32
  %200 = add i32 %199, 4
  %201 = icmp ult i32 %89, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %197
  %203 = zext i32 %200 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %200, ptr %204, align 4, !tbaa !44
  %205 = icmp ule i32 %200, %40
  %206 = getelementptr inbounds nuw i8, ptr %3, i64 %203
  %207 = icmp ne ptr %206, %4
  %208 = and i1 %205, %207
  br i1 %208, label %209, label %602

209:                                              ; preds = %202, %197, %191, %184, %115
  %210 = phi i32 [ 1, %202 ], [ 0, %197 ], [ 0, %115 ], [ 0, %191 ], [ 0, %184 ]
  %211 = phi i64 [ %203, %202 ], [ %90, %197 ], [ %90, %115 ], [ %90, %191 ], [ %90, %184 ]
  %212 = add nuw nsw i64 %102, 1
  %213 = icmp eq i64 %212, 3
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %212
  %216 = load i32, ptr %215, align 4, !tbaa !25
  br label %220

217:                                              ; preds = %209
  %218 = load i32, ptr %5, align 4, !tbaa !25
  %219 = add i32 %218, -1
  br label %220

220:                                              ; preds = %217, %214
  %221 = phi i32 [ %219, %217 ], [ %216, %214 ]
  %222 = sub i32 %35, %221
  %223 = add i32 %221, -1
  %224 = icmp ult i32 %223, %94
  br i1 %224, label %241, label %225

225:                                              ; preds = %220
  %226 = zext i32 %222 to i64
  %227 = getelementptr inbounds nuw i8, ptr %60, i64 %226
  %228 = icmp uge i32 %223, %95
  %229 = sub i32 %222, %62
  %230 = icmp ugt i32 %229, -4
  %231 = select i1 %228, i1 true, i1 %230
  br i1 %231, label %315, label %232

232:                                              ; preds = %225
  %233 = load i32, ptr %3, align 1, !tbaa !25
  %234 = load i32, ptr %227, align 1, !tbaa !25
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %315

236:                                              ; preds = %232
  %237 = getelementptr inbounds nuw i8, ptr %227, i64 4
  %238 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %96, ptr noundef nonnull %237, ptr noundef %4, ptr noundef nonnull %64, ptr noundef %65)
  %239 = trunc i64 %238 to i32
  %240 = add i32 %239, 4
  br label %315

241:                                              ; preds = %220
  %242 = icmp uge i32 %222, %78
  %243 = load i32, ptr %3, align 1, !tbaa !25
  %244 = zext i32 %221 to i64
  %245 = sub nsw i64 0, %244
  %246 = getelementptr inbounds i8, ptr %3, i64 %245
  %247 = load i32, ptr %246, align 1, !tbaa !25
  %248 = icmp eq i32 %243, %247
  %249 = and i1 %242, %248
  br i1 %249, label %250, label %315

250:                                              ; preds = %241
  %251 = getelementptr inbounds i8, ptr %96, i64 %245
  br i1 %98, label %252, label %.loopexit83

252:                                              ; preds = %250
  %253 = load i64, ptr %251, align 1, !tbaa !30
  %254 = load i64, ptr %96, align 1, !tbaa !30
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %.preheader82, label %256

256:                                              ; preds = %252
  %257 = xor i64 %254, %253
  %258 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %257, i1 true)
  %259 = lshr i64 %258, 3
  br label %311

.preheader82:                                     ; preds = %252, %300
  %260 = phi ptr [ %263, %300 ], [ %251, %252 ]
  %261 = phi ptr [ %262, %300 ], [ %96, %252 ]
  %262 = getelementptr inbounds nuw i8, ptr %261, i64 8
  %263 = getelementptr inbounds nuw i8, ptr %260, i64 8
  %264 = icmp ult ptr %262, %97
  br i1 %264, label %300, label %.loopexit83

.loopexit83:                                      ; preds = %.preheader82, %250
  %265 = phi ptr [ %251, %250 ], [ %263, %.preheader82 ]
  %266 = phi ptr [ %96, %250 ], [ %262, %.preheader82 ]
  %267 = icmp ult ptr %266, %99
  br i1 %267, label %268, label %275

268:                                              ; preds = %.loopexit83
  %269 = load i32, ptr %265, align 1, !tbaa !25
  %270 = load i32, ptr %266, align 1, !tbaa !25
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = getelementptr inbounds nuw i8, ptr %266, i64 4
  %274 = getelementptr inbounds nuw i8, ptr %265, i64 4
  br label %275

275:                                              ; preds = %272, %268, %.loopexit83
  %276 = phi ptr [ %274, %272 ], [ %265, %268 ], [ %265, %.loopexit83 ]
  %277 = phi ptr [ %273, %272 ], [ %266, %268 ], [ %266, %.loopexit83 ]
  %278 = icmp ult ptr %277, %100
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = load i16, ptr %276, align 1, !tbaa !115
  %281 = load i16, ptr %277, align 1, !tbaa !115
  %282 = icmp eq i16 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = getelementptr inbounds nuw i8, ptr %277, i64 2
  %285 = getelementptr inbounds nuw i8, ptr %276, i64 2
  br label %286

286:                                              ; preds = %283, %279, %275
  %287 = phi ptr [ %285, %283 ], [ %276, %279 ], [ %276, %275 ]
  %288 = phi ptr [ %284, %283 ], [ %277, %279 ], [ %277, %275 ]
  %289 = icmp ult ptr %288, %4
  br i1 %289, label %290, label %296

290:                                              ; preds = %286
  %291 = load i8, ptr %287, align 1, !tbaa !42
  %292 = load i8, ptr %288, align 1, !tbaa !42
  %293 = icmp eq i8 %291, %292
  %294 = zext i1 %293 to i64
  %295 = getelementptr inbounds nuw i8, ptr %288, i64 %294
  br label %296

296:                                              ; preds = %290, %286
  %297 = phi ptr [ %288, %286 ], [ %295, %290 ]
  %298 = ptrtoint ptr %297 to i64
  %299 = sub i64 %298, %101
  br label %311

300:                                              ; preds = %.preheader82
  %301 = load i64, ptr %263, align 1, !tbaa !30
  %302 = load i64, ptr %262, align 1, !tbaa !30
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %.preheader82, label %304

304:                                              ; preds = %300
  %305 = xor i64 %302, %301
  %306 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %305, i1 true)
  %307 = lshr i64 %306, 3
  %308 = getelementptr inbounds nuw i8, ptr %262, i64 %307
  %309 = ptrtoint ptr %308 to i64
  %310 = sub i64 %309, %101
  br label %311

311:                                              ; preds = %304, %296, %256
  %312 = phi i64 [ %299, %296 ], [ %259, %256 ], [ %310, %304 ]
  %313 = trunc i64 %312 to i32
  %314 = add i32 %313, 4
  br label %315

315:                                              ; preds = %311, %241, %236, %232, %225
  %316 = phi i32 [ %314, %311 ], [ 0, %241 ], [ %240, %236 ], [ 0, %232 ], [ 0, %225 ]
  %317 = zext i32 %316 to i64
  %318 = icmp samesign ult i64 %211, %317
  br i1 %318, label %319, label %328

319:                                              ; preds = %315
  %320 = zext nneg i32 %210 to i64
  %321 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %320
  store i32 2, ptr %321, align 4, !tbaa !46
  %322 = getelementptr inbounds nuw i8, ptr %321, i64 4
  store i32 %316, ptr %322, align 4, !tbaa !44
  %323 = add nuw nsw i32 %210, 1
  %324 = icmp ule i32 %316, %40
  %325 = getelementptr inbounds nuw i8, ptr %3, i64 %317
  %326 = icmp ne ptr %325, %4
  %327 = and i1 %324, %326
  br i1 %327, label %328, label %602

328:                                              ; preds = %319, %315
  %329 = phi i32 [ %323, %319 ], [ %210, %315 ]
  %330 = phi i64 [ %317, %319 ], [ %211, %315 ]
  %331 = add nuw nsw i64 %102, 2
  %332 = icmp eq i64 %331, 3
  br i1 %332, label %336, label %333

333:                                              ; preds = %328
  %334 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %331
  %335 = load i32, ptr %334, align 4, !tbaa !25
  br label %339

336:                                              ; preds = %328
  %337 = load i32, ptr %5, align 4, !tbaa !25
  %338 = add i32 %337, -1
  br label %339

339:                                              ; preds = %336, %333
  %340 = phi i32 [ %338, %336 ], [ %335, %333 ]
  %341 = sub i32 %35, %340
  %342 = add i32 %340, -1
  %343 = icmp ult i32 %342, %94
  br i1 %343, label %360, label %344

344:                                              ; preds = %339
  %345 = zext i32 %341 to i64
  %346 = getelementptr inbounds nuw i8, ptr %60, i64 %345
  %347 = icmp uge i32 %342, %95
  %348 = sub i32 %341, %62
  %349 = icmp ugt i32 %348, -4
  %350 = select i1 %347, i1 true, i1 %349
  br i1 %350, label %434, label %351

351:                                              ; preds = %344
  %352 = load i32, ptr %3, align 1, !tbaa !25
  %353 = load i32, ptr %346, align 1, !tbaa !25
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %434

355:                                              ; preds = %351
  %356 = getelementptr inbounds nuw i8, ptr %346, i64 4
  %357 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %96, ptr noundef nonnull %356, ptr noundef %4, ptr noundef nonnull %64, ptr noundef %65)
  %358 = trunc i64 %357 to i32
  %359 = add i32 %358, 4
  br label %434

360:                                              ; preds = %339
  %361 = icmp uge i32 %341, %78
  %362 = load i32, ptr %3, align 1, !tbaa !25
  %363 = zext i32 %340 to i64
  %364 = sub nsw i64 0, %363
  %365 = getelementptr inbounds i8, ptr %3, i64 %364
  %366 = load i32, ptr %365, align 1, !tbaa !25
  %367 = icmp eq i32 %362, %366
  %368 = and i1 %361, %367
  br i1 %368, label %369, label %434

369:                                              ; preds = %360
  %370 = getelementptr inbounds i8, ptr %96, i64 %364
  br i1 %98, label %371, label %.loopexit81

371:                                              ; preds = %369
  %372 = load i64, ptr %370, align 1, !tbaa !30
  %373 = load i64, ptr %96, align 1, !tbaa !30
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %.preheader80, label %375

375:                                              ; preds = %371
  %376 = xor i64 %373, %372
  %377 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %376, i1 true)
  %378 = lshr i64 %377, 3
  br label %430

.preheader80:                                     ; preds = %371, %419
  %379 = phi ptr [ %382, %419 ], [ %370, %371 ]
  %380 = phi ptr [ %381, %419 ], [ %96, %371 ]
  %381 = getelementptr inbounds nuw i8, ptr %380, i64 8
  %382 = getelementptr inbounds nuw i8, ptr %379, i64 8
  %383 = icmp ult ptr %381, %97
  br i1 %383, label %419, label %.loopexit81

.loopexit81:                                      ; preds = %.preheader80, %369
  %384 = phi ptr [ %370, %369 ], [ %382, %.preheader80 ]
  %385 = phi ptr [ %96, %369 ], [ %381, %.preheader80 ]
  %386 = icmp ult ptr %385, %99
  br i1 %386, label %387, label %394

387:                                              ; preds = %.loopexit81
  %388 = load i32, ptr %384, align 1, !tbaa !25
  %389 = load i32, ptr %385, align 1, !tbaa !25
  %390 = icmp eq i32 %388, %389
  br i1 %390, label %391, label %394

391:                                              ; preds = %387
  %392 = getelementptr inbounds nuw i8, ptr %385, i64 4
  %393 = getelementptr inbounds nuw i8, ptr %384, i64 4
  br label %394

394:                                              ; preds = %391, %387, %.loopexit81
  %395 = phi ptr [ %393, %391 ], [ %384, %387 ], [ %384, %.loopexit81 ]
  %396 = phi ptr [ %392, %391 ], [ %385, %387 ], [ %385, %.loopexit81 ]
  %397 = icmp ult ptr %396, %100
  br i1 %397, label %398, label %405

398:                                              ; preds = %394
  %399 = load i16, ptr %395, align 1, !tbaa !115
  %400 = load i16, ptr %396, align 1, !tbaa !115
  %401 = icmp eq i16 %399, %400
  br i1 %401, label %402, label %405

402:                                              ; preds = %398
  %403 = getelementptr inbounds nuw i8, ptr %396, i64 2
  %404 = getelementptr inbounds nuw i8, ptr %395, i64 2
  br label %405

405:                                              ; preds = %402, %398, %394
  %406 = phi ptr [ %404, %402 ], [ %395, %398 ], [ %395, %394 ]
  %407 = phi ptr [ %403, %402 ], [ %396, %398 ], [ %396, %394 ]
  %408 = icmp ult ptr %407, %4
  br i1 %408, label %409, label %415

409:                                              ; preds = %405
  %410 = load i8, ptr %406, align 1, !tbaa !42
  %411 = load i8, ptr %407, align 1, !tbaa !42
  %412 = icmp eq i8 %410, %411
  %413 = zext i1 %412 to i64
  %414 = getelementptr inbounds nuw i8, ptr %407, i64 %413
  br label %415

415:                                              ; preds = %409, %405
  %416 = phi ptr [ %407, %405 ], [ %414, %409 ]
  %417 = ptrtoint ptr %416 to i64
  %418 = sub i64 %417, %101
  br label %430

419:                                              ; preds = %.preheader80
  %420 = load i64, ptr %382, align 1, !tbaa !30
  %421 = load i64, ptr %381, align 1, !tbaa !30
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %.preheader80, label %423

423:                                              ; preds = %419
  %424 = xor i64 %421, %420
  %425 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %424, i1 true)
  %426 = lshr i64 %425, 3
  %427 = getelementptr inbounds nuw i8, ptr %381, i64 %426
  %428 = ptrtoint ptr %427 to i64
  %429 = sub i64 %428, %101
  br label %430

430:                                              ; preds = %423, %415, %375
  %431 = phi i64 [ %418, %415 ], [ %378, %375 ], [ %429, %423 ]
  %432 = trunc i64 %431 to i32
  %433 = add i32 %432, 4
  br label %434

434:                                              ; preds = %430, %360, %355, %351, %344
  %435 = phi i32 [ %433, %430 ], [ 0, %360 ], [ %359, %355 ], [ 0, %351 ], [ 0, %344 ]
  %436 = zext i32 %435 to i64
  %437 = icmp samesign ult i64 %330, %436
  br i1 %437, label %438, label %447

438:                                              ; preds = %434
  %439 = zext nneg i32 %329 to i64
  %440 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %439
  store i32 3, ptr %440, align 4, !tbaa !46
  %441 = getelementptr inbounds nuw i8, ptr %440, i64 4
  store i32 %435, ptr %441, align 4, !tbaa !44
  %442 = add nuw nsw i32 %329, 1
  %443 = icmp ule i32 %435, %40
  %444 = getelementptr inbounds nuw i8, ptr %3, i64 %436
  %445 = icmp ne ptr %444, %4
  %446 = and i1 %443, %445
  br i1 %446, label %447, label %602

447:                                              ; preds = %438, %434, %34
  %448 = phi i64 [ %90, %34 ], [ %436, %438 ], [ %330, %434 ]
  %449 = phi i32 [ 0, %34 ], [ %442, %438 ], [ %329, %434 ]
  store i32 %35, ptr %50, align 4, !tbaa !25
  %450 = icmp ult i32 %51, %79
  br i1 %450, label %.loopexit76, label %451

451:                                              ; preds = %447
  %452 = getelementptr inbounds i8, ptr %4, i64 -7
  %453 = getelementptr inbounds i8, ptr %4, i64 -3
  %454 = getelementptr inbounds i8, ptr %4, i64 -1
  %455 = add i32 %35, 3
  br label %456

456:                                              ; preds = %586, %451
  %457 = phi i32 [ %51, %451 ], [ %592, %586 ]
  %458 = phi i64 [ 0, %451 ], [ %590, %586 ]
  %459 = phi i64 [ 0, %451 ], [ %589, %586 ]
  %460 = phi ptr [ %83, %451 ], [ %588, %586 ]
  %461 = phi ptr [ %84, %451 ], [ %587, %586 ]
  %462 = phi i32 [ %85, %451 ], [ %575, %586 ]
  %463 = phi i32 [ %449, %451 ], [ %574, %586 ]
  %464 = phi i32 [ %88, %451 ], [ %593, %586 ]
  %465 = phi i64 [ %448, %451 ], [ %573, %586 ]
  %466 = and i32 %457, %58
  %467 = shl nuw i32 %466, 1
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %468
  %470 = tail call i64 @llvm.umin.i64(i64 %458, i64 %459)
  %471 = zext i32 %457 to i64
  %472 = add i64 %470, %471
  %473 = icmp ult i64 %472, %63
  %474 = getelementptr inbounds nuw i8, ptr %3, i64 %470
  br i1 %473, label %543, label %475

475:                                              ; preds = %456
  %476 = getelementptr inbounds nuw i8, ptr %36, i64 %471
  %477 = getelementptr inbounds nuw i8, ptr %476, i64 %470
  %478 = icmp ult ptr %474, %452
  br i1 %478, label %479, label %.loopexit

479:                                              ; preds = %475
  %480 = load i64, ptr %477, align 1, !tbaa !30
  %481 = load i64, ptr %474, align 1, !tbaa !30
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %.preheader, label %483

483:                                              ; preds = %479
  %484 = xor i64 %481, %480
  %485 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %484, i1 true)
  %486 = lshr i64 %485, 3
  br label %540

.preheader:                                       ; preds = %479, %492
  %487 = phi ptr [ %490, %492 ], [ %477, %479 ]
  %488 = phi ptr [ %489, %492 ], [ %474, %479 ]
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 8
  %490 = getelementptr inbounds nuw i8, ptr %487, i64 8
  %491 = icmp ult ptr %489, %452
  br i1 %491, label %492, label %.loopexit

492:                                              ; preds = %.preheader
  %493 = load i64, ptr %490, align 1, !tbaa !30
  %494 = load i64, ptr %489, align 1, !tbaa !30
  %495 = icmp eq i64 %493, %494
  br i1 %495, label %.preheader, label %496

496:                                              ; preds = %492
  %497 = xor i64 %494, %493
  %498 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %497, i1 true)
  %499 = lshr i64 %498, 3
  %500 = getelementptr inbounds nuw i8, ptr %489, i64 %499
  %501 = ptrtoint ptr %500 to i64
  %502 = ptrtoint ptr %474 to i64
  %503 = sub i64 %501, %502
  br label %540

.loopexit:                                        ; preds = %.preheader, %475
  %504 = phi ptr [ %477, %475 ], [ %490, %.preheader ]
  %505 = phi ptr [ %474, %475 ], [ %489, %.preheader ]
  %506 = icmp ult ptr %505, %453
  br i1 %506, label %507, label %514

507:                                              ; preds = %.loopexit
  %508 = load i32, ptr %504, align 1, !tbaa !25
  %509 = load i32, ptr %505, align 1, !tbaa !25
  %510 = icmp eq i32 %508, %509
  br i1 %510, label %511, label %514

511:                                              ; preds = %507
  %512 = getelementptr inbounds nuw i8, ptr %505, i64 4
  %513 = getelementptr inbounds nuw i8, ptr %504, i64 4
  br label %514

514:                                              ; preds = %511, %507, %.loopexit
  %515 = phi ptr [ %513, %511 ], [ %504, %507 ], [ %504, %.loopexit ]
  %516 = phi ptr [ %512, %511 ], [ %505, %507 ], [ %505, %.loopexit ]
  %517 = icmp ult ptr %516, %454
  br i1 %517, label %518, label %525

518:                                              ; preds = %514
  %519 = load i16, ptr %515, align 1, !tbaa !115
  %520 = load i16, ptr %516, align 1, !tbaa !115
  %521 = icmp eq i16 %519, %520
  br i1 %521, label %522, label %525

522:                                              ; preds = %518
  %523 = getelementptr inbounds nuw i8, ptr %516, i64 2
  %524 = getelementptr inbounds nuw i8, ptr %515, i64 2
  br label %525

525:                                              ; preds = %522, %518, %514
  %526 = phi ptr [ %524, %522 ], [ %515, %518 ], [ %515, %514 ]
  %527 = phi ptr [ %523, %522 ], [ %516, %518 ], [ %516, %514 ]
  %528 = icmp ult ptr %527, %4
  br i1 %528, label %529, label %535

529:                                              ; preds = %525
  %530 = load i8, ptr %526, align 1, !tbaa !42
  %531 = load i8, ptr %527, align 1, !tbaa !42
  %532 = icmp eq i8 %530, %531
  %533 = zext i1 %532 to i64
  %534 = getelementptr inbounds nuw i8, ptr %527, i64 %533
  br label %535

535:                                              ; preds = %529, %525
  %536 = phi ptr [ %527, %525 ], [ %534, %529 ]
  %537 = ptrtoint ptr %536 to i64
  %538 = ptrtoint ptr %474 to i64
  %539 = sub i64 %537, %538
  br label %540

540:                                              ; preds = %535, %496, %483
  %541 = phi i64 [ %539, %535 ], [ %486, %483 ], [ %503, %496 ]
  %542 = add i64 %541, %470
  br label %552

543:                                              ; preds = %456
  %544 = getelementptr inbounds nuw i8, ptr %60, i64 %471
  %545 = getelementptr inbounds nuw i8, ptr %544, i64 %470
  %546 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %474, ptr noundef %545, ptr noundef %4, ptr noundef nonnull %64, ptr noundef nonnull %65)
  %547 = add i64 %546, %470
  %548 = add i64 %547, %471
  %549 = icmp ult i64 %548, %63
  %550 = getelementptr inbounds nuw i8, ptr %36, i64 %471
  %551 = select i1 %549, ptr %544, ptr %550
  br label %552

552:                                              ; preds = %543, %540
  %553 = phi ptr [ %476, %540 ], [ %551, %543 ]
  %554 = phi i64 [ %542, %540 ], [ %547, %543 ]
  %555 = icmp ugt i64 %554, %465
  br i1 %555, label %556, label %572

556:                                              ; preds = %552
  %557 = sub i32 %462, %457
  %558 = zext i32 %557 to i64
  %559 = icmp ugt i64 %554, %558
  %560 = trunc i64 %554 to i32
  %561 = add i32 %457, %560
  %562 = select i1 %559, i32 %561, i32 %462
  %563 = sub i32 %455, %457
  %564 = zext i32 %463 to i64
  %565 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %564
  store i32 %563, ptr %565, align 4, !tbaa !46
  %566 = getelementptr inbounds nuw i8, ptr %565, i64 4
  store i32 %560, ptr %566, align 4, !tbaa !44
  %567 = add i32 %463, 1
  %568 = icmp ugt i64 %554, 4096
  %569 = getelementptr inbounds nuw i8, ptr %3, i64 %554
  %570 = icmp eq ptr %569, %4
  %571 = or i1 %568, %570
  br i1 %571, label %.loopexit76, label %572

572:                                              ; preds = %556, %552
  %573 = phi i64 [ %554, %556 ], [ %465, %552 ]
  %574 = phi i32 [ %567, %556 ], [ %463, %552 ]
  %575 = phi i32 [ %562, %556 ], [ %462, %552 ]
  %576 = getelementptr inbounds nuw i8, ptr %553, i64 %554
  %577 = load i8, ptr %576, align 1, !tbaa !42
  %578 = getelementptr inbounds nuw i8, ptr %3, i64 %554
  %579 = load i8, ptr %578, align 1, !tbaa !42
  %580 = icmp ult i8 %577, %579
  %581 = icmp ugt i32 %457, %66
  br i1 %580, label %582, label %585

582:                                              ; preds = %572
  store i32 %457, ptr %460, align 4, !tbaa !25
  br i1 %581, label %583, label %.loopexit76

583:                                              ; preds = %582
  %584 = getelementptr inbounds nuw i8, ptr %469, i64 4
  br label %586

585:                                              ; preds = %572
  store i32 %457, ptr %461, align 4, !tbaa !25
  br i1 %581, label %586, label %.loopexit76

586:                                              ; preds = %585, %583
  %587 = phi ptr [ %461, %583 ], [ %469, %585 ]
  %588 = phi ptr [ %584, %583 ], [ %460, %585 ]
  %589 = phi i64 [ %459, %583 ], [ %554, %585 ]
  %590 = phi i64 [ %554, %583 ], [ %458, %585 ]
  %591 = phi ptr [ %584, %583 ], [ %469, %585 ]
  %592 = load i32, ptr %591, align 4, !tbaa !25
  %593 = add i32 %464, -1
  %594 = icmp ne i32 %593, 0
  %595 = icmp uge i32 %592, %79
  %596 = select i1 %594, i1 %595, i1 false
  br i1 %596, label %456, label %.loopexit76, !llvm.loop !139

.loopexit76:                                      ; preds = %586, %585, %582, %556, %447
  %597 = phi i32 [ %449, %447 ], [ %567, %556 ], [ %574, %585 ], [ %574, %582 ], [ %574, %586 ]
  %598 = phi i32 [ %85, %447 ], [ %562, %556 ], [ %575, %585 ], [ %575, %582 ], [ %575, %586 ]
  %599 = phi ptr [ %84, %447 ], [ %461, %556 ], [ %9, %585 ], [ %461, %582 ], [ %587, %586 ]
  %600 = phi ptr [ %83, %447 ], [ %460, %556 ], [ %460, %585 ], [ %9, %582 ], [ %588, %586 ]
  store i32 0, ptr %599, align 4, !tbaa !25
  store i32 0, ptr %600, align 4, !tbaa !25
  %601 = add i32 %598, -8
  store i32 %601, ptr %12, align 4, !tbaa !19
  br label %602

602:                                              ; preds = %.loopexit76, %438, %319, %202
  %603 = phi i32 [ %597, %.loopexit76 ], [ 1, %202 ], [ %323, %319 ], [ %442, %438 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %604

604:                                              ; preds = %602, %8
  %605 = phi i32 [ %603, %602 ], [ 0, %8 ]
  ret i32 %605
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i32 @ZSTD_btGetAllMatches_dictMatchState_3(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %646, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %.preheader87, label %34

.preheader87:                                     ; preds = %17, %.preheader87
  %23 = phi i32 [ %27, %.preheader87 ], [ %13, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 %24
  %26 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %25, ptr noundef %4, i32 noundef %21, i32 noundef 3, i32 noundef 0)
  %27 = add i32 %26, %23
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %.preheader87, label %29, !llvm.loop !20

29:                                               ; preds = %.preheader87
  %30 = load ptr, ptr %10, align 8, !tbaa !18
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %18, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %21, %17 ]
  %36 = phi i64 [ %32, %29 ], [ %20, %17 ]
  %37 = phi ptr [ %30, %29 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 4095)
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %43 = load i32, ptr %42, align 4, !tbaa !108
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !107
  %46 = load i32, ptr %3, align 1, !tbaa !25
  %47 = mul i32 %46, -1640531535
  %48 = sub i32 32, %43
  %49 = lshr i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %54 = load ptr, ptr %53, align 8, !tbaa !109
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %56 = load i32, ptr %55, align 4, !tbaa !110
  %57 = add i32 %56, -1
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %61 = load i32, ptr %60, align 8, !tbaa !22
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds nuw i8, ptr %37, i64 %62
  %64 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %59)
  %65 = load i32, ptr %38, align 8, !tbaa !112
  %66 = getelementptr i8, ptr %1, i64 28
  %67 = load i32, ptr %66, align 4, !tbaa !106
  %68 = getelementptr i8, ptr %1, i64 40
  %69 = load i32, ptr %68, align 8, !tbaa !113
  %70 = shl nuw i32 1, %65
  %71 = sub i32 %35, %67
  %72 = icmp ugt i32 %71, %70
  %73 = sub i32 %35, %70
  %74 = icmp eq i32 %69, 0
  %75 = select i1 %74, i1 %72, i1 false
  %76 = select i1 %75, i32 %73, i32 %67
  %77 = tail call i32 @llvm.umax.i32(i32 %76, i32 1)
  %78 = and i32 %35, %59
  %79 = shl nuw i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %83 = add i32 %35, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %85 = load i32, ptr %84, align 4, !tbaa !114
  %86 = shl nuw i32 1, %85
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %88 = load ptr, ptr %87, align 8, !tbaa !142
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %90 = load ptr, ptr %89, align 8, !tbaa !18
  %91 = load ptr, ptr %88, align 8, !tbaa !143
  %92 = ptrtoint ptr %91 to i64
  %93 = ptrtoint ptr %90 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds nuw i8, ptr %88, i64 28
  %97 = load i32, ptr %96, align 4, !tbaa !106
  %98 = sub i32 %76, %95
  %99 = getelementptr inbounds nuw i8, ptr %88, i64 264
  %100 = load i32, ptr %99, align 8, !tbaa !108
  %101 = getelementptr inbounds nuw i8, ptr %88, i64 260
  %102 = load i32, ptr %101, align 4, !tbaa !110
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
  br i1 %112, label %113, label %.loopexit86

113:                                              ; preds = %34
  %114 = add nuw i32 %6, 3
  %115 = sub i32 %35, %61
  %116 = zext i32 %98 to i64
  %117 = sub nsw i64 0, %116
  %118 = getelementptr i8, ptr %90, i64 %117
  %119 = add i32 %97, %98
  %120 = sub i32 %35, %119
  %121 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %122 = getelementptr inbounds i8, ptr %4, i64 -7
  %123 = icmp ult ptr %121, %122
  %124 = getelementptr inbounds i8, ptr %4, i64 -3
  %125 = getelementptr inbounds i8, ptr %4, i64 -1
  %126 = ptrtoint ptr %121 to i64
  %127 = zext i32 %6 to i64
  %128 = zext i32 %114 to i64
  %invariant.op = sub i32 1, %6
  br label %129

129:                                              ; preds = %253, %113
  %130 = phi i64 [ %127, %113 ], [ %256, %253 ]
  %131 = phi i32 [ 0, %113 ], [ %254, %253 ]
  %132 = phi i64 [ %111, %113 ], [ %255, %253 ]
  %133 = icmp eq i64 %130, 3
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, ptr %5, align 4, !tbaa !25
  %136 = add i32 %135, -1
  br label %140

137:                                              ; preds = %129
  %138 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %130
  %139 = load i32, ptr %138, align 4, !tbaa !25
  br label %140

140:                                              ; preds = %137, %134
  %141 = phi i32 [ %136, %134 ], [ %139, %137 ]
  %142 = sub i32 %35, %141
  %143 = add i32 %141, -1
  %144 = icmp ult i32 %143, %115
  br i1 %144, label %145, label %221

145:                                              ; preds = %140
  %146 = icmp uge i32 %142, %76
  %147 = load i32, ptr %3, align 1, !tbaa !25
  %148 = zext i32 %141 to i64
  %149 = sub nsw i64 0, %148
  %150 = getelementptr inbounds i8, ptr %3, i64 %149
  %151 = load i32, ptr %150, align 1, !tbaa !25
  %152 = xor i32 %151, %147
  %153 = and i32 %152, 16777215
  %154 = icmp eq i32 %153, 0
  %155 = and i1 %146, %154
  br i1 %155, label %156, label %239

156:                                              ; preds = %145
  %157 = getelementptr inbounds i8, ptr %121, i64 %149
  br i1 %123, label %158, label %.loopexit84

158:                                              ; preds = %156
  %159 = load i64, ptr %157, align 1, !tbaa !30
  %160 = load i64, ptr %121, align 1, !tbaa !30
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %.preheader83, label %162

162:                                              ; preds = %158
  %163 = xor i64 %160, %159
  %164 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %163, i1 true)
  %165 = lshr i64 %164, 3
  br label %217

.preheader83:                                     ; preds = %158, %171
  %166 = phi ptr [ %169, %171 ], [ %157, %158 ]
  %167 = phi ptr [ %168, %171 ], [ %121, %158 ]
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 8
  %169 = getelementptr inbounds nuw i8, ptr %166, i64 8
  %170 = icmp ult ptr %168, %122
  br i1 %170, label %171, label %.loopexit84

171:                                              ; preds = %.preheader83
  %172 = load i64, ptr %169, align 1, !tbaa !30
  %173 = load i64, ptr %168, align 1, !tbaa !30
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %.preheader83, label %175

175:                                              ; preds = %171
  %176 = xor i64 %173, %172
  %177 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %176, i1 true)
  %178 = lshr i64 %177, 3
  %179 = getelementptr inbounds nuw i8, ptr %168, i64 %178
  %180 = ptrtoint ptr %179 to i64
  %181 = sub i64 %180, %126
  br label %217

.loopexit84:                                      ; preds = %.preheader83, %156
  %182 = phi ptr [ %157, %156 ], [ %169, %.preheader83 ]
  %183 = phi ptr [ %121, %156 ], [ %168, %.preheader83 ]
  %184 = icmp ult ptr %183, %124
  br i1 %184, label %185, label %192

185:                                              ; preds = %.loopexit84
  %186 = load i32, ptr %182, align 1, !tbaa !25
  %187 = load i32, ptr %183, align 1, !tbaa !25
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = getelementptr inbounds nuw i8, ptr %183, i64 4
  %191 = getelementptr inbounds nuw i8, ptr %182, i64 4
  br label %192

192:                                              ; preds = %189, %185, %.loopexit84
  %193 = phi ptr [ %191, %189 ], [ %182, %185 ], [ %182, %.loopexit84 ]
  %194 = phi ptr [ %190, %189 ], [ %183, %185 ], [ %183, %.loopexit84 ]
  %195 = icmp ult ptr %194, %125
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  %197 = load i16, ptr %193, align 1, !tbaa !115
  %198 = load i16, ptr %194, align 1, !tbaa !115
  %199 = icmp eq i16 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = getelementptr inbounds nuw i8, ptr %194, i64 2
  %202 = getelementptr inbounds nuw i8, ptr %193, i64 2
  br label %203

203:                                              ; preds = %200, %196, %192
  %204 = phi ptr [ %202, %200 ], [ %193, %196 ], [ %193, %192 ]
  %205 = phi ptr [ %201, %200 ], [ %194, %196 ], [ %194, %192 ]
  %206 = icmp ult ptr %205, %4
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load i8, ptr %204, align 1, !tbaa !42
  %209 = load i8, ptr %205, align 1, !tbaa !42
  %210 = icmp eq i8 %208, %209
  %211 = zext i1 %210 to i64
  %212 = getelementptr inbounds nuw i8, ptr %205, i64 %211
  br label %213

213:                                              ; preds = %207, %203
  %214 = phi ptr [ %205, %203 ], [ %212, %207 ]
  %215 = ptrtoint ptr %214 to i64
  %216 = sub i64 %215, %126
  br label %217

217:                                              ; preds = %213, %175, %162
  %218 = phi i64 [ %216, %213 ], [ %165, %162 ], [ %181, %175 ]
  %219 = trunc i64 %218 to i32
  %220 = add i32 %219, 3
  br label %239

221:                                              ; preds = %140
  %222 = zext i32 %142 to i64
  %223 = getelementptr i8, ptr %118, i64 %222
  %224 = icmp uge i32 %143, %120
  %225 = sub i32 %142, %61
  %226 = icmp ugt i32 %225, -4
  %227 = select i1 %224, i1 true, i1 %226
  br i1 %227, label %239, label %228

228:                                              ; preds = %221
  %229 = load i32, ptr %3, align 1, !tbaa !25
  %230 = load i32, ptr %223, align 1, !tbaa !25
  %231 = xor i32 %230, %229
  %232 = and i32 %231, 16777215
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %228
  %235 = getelementptr inbounds nuw i8, ptr %223, i64 3
  %236 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %121, ptr noundef nonnull %235, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %237 = trunc i64 %236 to i32
  %238 = add i32 %237, 3
  br label %239

239:                                              ; preds = %234, %228, %221, %217, %145
  %240 = phi i32 [ %220, %217 ], [ 0, %145 ], [ %238, %234 ], [ 0, %228 ], [ 0, %221 ]
  %241 = zext i32 %240 to i64
  %242 = icmp samesign ult i64 %132, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %239
  %244 = zext i32 %131 to i64
  %245 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %244
  %246 = trunc i64 %130 to i32
  %.reass.reass.reass.reass = add i32 %246, %invariant.op
  store i32 %.reass.reass.reass.reass, ptr %245, align 4, !tbaa !46
  %247 = getelementptr inbounds nuw i8, ptr %245, i64 4
  store i32 %240, ptr %247, align 4, !tbaa !44
  %248 = add i32 %131, 1
  %249 = icmp ule i32 %240, %41
  %250 = getelementptr inbounds nuw i8, ptr %3, i64 %241
  %251 = icmp ne ptr %250, %4
  %252 = and i1 %249, %251
  br i1 %252, label %253, label %.loopexit85

253:                                              ; preds = %243, %239
  %254 = phi i32 [ %248, %243 ], [ %131, %239 ]
  %255 = phi i64 [ %241, %243 ], [ %132, %239 ]
  %256 = add nuw nsw i64 %130, 1
  %257 = icmp eq i64 %256, %128
  br i1 %257, label %.loopexit86, label %129, !llvm.loop !140

.loopexit86:                                      ; preds = %253, %34
  %258 = phi i64 [ %111, %34 ], [ %255, %253 ]
  %259 = phi i32 [ 0, %34 ], [ %254, %253 ]
  %260 = icmp samesign ult i64 %258, 3
  br i1 %260, label %261, label %414

261:                                              ; preds = %.loopexit86
  %262 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %263 = load ptr, ptr %262, align 8, !tbaa !135
  %264 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %265 = load i32, ptr %264, align 8, !tbaa !136
  %266 = load i32, ptr %2, align 4, !tbaa !25
  %267 = load i32, ptr %3, align 1, !tbaa !25
  %268 = sub i32 32, %265
  %269 = icmp ult i32 %266, %35
  br i1 %269, label %270, label %.loopexit80

270:                                              ; preds = %261
  %271 = zext i32 %266 to i64
  %272 = and i64 %36, 4294967295
  %273 = sub i64 %36, %271
  %274 = and i64 %273, 3
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %.loopexit82, label %.preheader81

.preheader81:                                     ; preds = %270, %.preheader81
  %276 = phi i64 [ %285, %.preheader81 ], [ %271, %270 ]
  %277 = phi i64 [ %286, %.preheader81 ], [ 0, %270 ]
  %278 = getelementptr inbounds nuw i8, ptr %37, i64 %276
  %279 = load i32, ptr %278, align 1, !tbaa !25
  %280 = mul i32 %279, 900185344
  %281 = lshr i32 %280, %268
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds nuw [4 x i8], ptr %263, i64 %282
  %284 = trunc nuw i64 %276 to i32
  store i32 %284, ptr %283, align 4, !tbaa !25
  %285 = add nuw nsw i64 %276, 1
  %286 = add nuw nsw i64 %277, 1
  %287 = icmp eq i64 %286, %274
  br i1 %287, label %.loopexit82, label %.preheader81, !llvm.loop !144

.loopexit82:                                      ; preds = %.preheader81, %270
  %288 = phi i64 [ %271, %270 ], [ %285, %.preheader81 ]
  %289 = sub nsw i64 %271, %272
  %290 = icmp ugt i64 %289, -4
  br i1 %290, label %.loopexit80, label %.preheader79

.preheader79:                                     ; preds = %.loopexit82, %.preheader79
  %291 = phi i64 [ %323, %.preheader79 ], [ %288, %.loopexit82 ]
  %292 = getelementptr inbounds nuw i8, ptr %37, i64 %291
  %293 = load i32, ptr %292, align 1, !tbaa !25
  %294 = mul i32 %293, 900185344
  %295 = lshr i32 %294, %268
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds nuw [4 x i8], ptr %263, i64 %296
  %298 = trunc nuw i64 %291 to i32
  store i32 %298, ptr %297, align 4, !tbaa !25
  %299 = add nuw nsw i64 %291, 1
  %300 = getelementptr inbounds nuw i8, ptr %37, i64 %299
  %301 = load i32, ptr %300, align 1, !tbaa !25
  %302 = mul i32 %301, 900185344
  %303 = lshr i32 %302, %268
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds nuw [4 x i8], ptr %263, i64 %304
  %306 = trunc nuw i64 %299 to i32
  store i32 %306, ptr %305, align 4, !tbaa !25
  %307 = add nuw nsw i64 %291, 2
  %308 = getelementptr inbounds nuw i8, ptr %37, i64 %307
  %309 = load i32, ptr %308, align 1, !tbaa !25
  %310 = mul i32 %309, 900185344
  %311 = lshr i32 %310, %268
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds nuw [4 x i8], ptr %263, i64 %312
  %314 = trunc nuw i64 %307 to i32
  store i32 %314, ptr %313, align 4, !tbaa !25
  %315 = add nuw nsw i64 %291, 3
  %316 = getelementptr inbounds nuw i8, ptr %37, i64 %315
  %317 = load i32, ptr %316, align 1, !tbaa !25
  %318 = mul i32 %317, 900185344
  %319 = lshr i32 %318, %268
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds nuw [4 x i8], ptr %263, i64 %320
  %322 = trunc nuw i64 %315 to i32
  store i32 %322, ptr %321, align 4, !tbaa !25
  %323 = add nuw nsw i64 %291, 4
  %324 = icmp eq i64 %323, %272
  br i1 %324, label %.loopexit80, label %.preheader79, !llvm.loop !138

.loopexit80:                                      ; preds = %.preheader79, %.loopexit82, %261
  %325 = mul i32 %267, 900185344
  %326 = lshr i32 %325, %268
  %327 = zext i32 %326 to i64
  store i32 %35, ptr %2, align 4, !tbaa !25
  %328 = getelementptr inbounds nuw [4 x i8], ptr %263, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !25
  %330 = icmp uge i32 %329, %77
  %331 = sub i32 %35, %329
  %332 = icmp ult i32 %331, 262144
  %333 = and i1 %330, %332
  br i1 %333, label %334, label %414

334:                                              ; preds = %.loopexit80
  %335 = zext i32 %329 to i64
  %336 = getelementptr inbounds nuw i8, ptr %37, i64 %335
  %337 = getelementptr inbounds i8, ptr %4, i64 -7
  %338 = icmp ult ptr %3, %337
  br i1 %338, label %339, label %.loopexit78

339:                                              ; preds = %334
  %340 = load i64, ptr %336, align 1, !tbaa !30
  %341 = load i64, ptr %3, align 1, !tbaa !30
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %.preheader77, label %343

343:                                              ; preds = %339
  %344 = xor i64 %341, %340
  %345 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %344, i1 true)
  %346 = lshr i64 %345, 3
  br label %400

.preheader77:                                     ; preds = %339, %352
  %347 = phi ptr [ %350, %352 ], [ %336, %339 ]
  %348 = phi ptr [ %349, %352 ], [ %3, %339 ]
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 8
  %350 = getelementptr inbounds nuw i8, ptr %347, i64 8
  %351 = icmp ult ptr %349, %337
  br i1 %351, label %352, label %.loopexit78

352:                                              ; preds = %.preheader77
  %353 = load i64, ptr %350, align 1, !tbaa !30
  %354 = load i64, ptr %349, align 1, !tbaa !30
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %.preheader77, label %356

356:                                              ; preds = %352
  %357 = xor i64 %354, %353
  %358 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %357, i1 true)
  %359 = lshr i64 %358, 3
  %360 = getelementptr inbounds nuw i8, ptr %349, i64 %359
  %361 = ptrtoint ptr %360 to i64
  %362 = sub i64 %361, %18
  br label %400

.loopexit78:                                      ; preds = %.preheader77, %334
  %363 = phi ptr [ %336, %334 ], [ %350, %.preheader77 ]
  %364 = phi ptr [ %3, %334 ], [ %349, %.preheader77 ]
  %365 = getelementptr inbounds i8, ptr %4, i64 -3
  %366 = icmp ult ptr %364, %365
  br i1 %366, label %367, label %374

367:                                              ; preds = %.loopexit78
  %368 = load i32, ptr %363, align 1, !tbaa !25
  %369 = load i32, ptr %364, align 1, !tbaa !25
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %371, label %374

371:                                              ; preds = %367
  %372 = getelementptr inbounds nuw i8, ptr %364, i64 4
  %373 = getelementptr inbounds nuw i8, ptr %363, i64 4
  br label %374

374:                                              ; preds = %371, %367, %.loopexit78
  %375 = phi ptr [ %373, %371 ], [ %363, %367 ], [ %363, %.loopexit78 ]
  %376 = phi ptr [ %372, %371 ], [ %364, %367 ], [ %364, %.loopexit78 ]
  %377 = getelementptr inbounds i8, ptr %4, i64 -1
  %378 = icmp ult ptr %376, %377
  br i1 %378, label %379, label %386

379:                                              ; preds = %374
  %380 = load i16, ptr %375, align 1, !tbaa !115
  %381 = load i16, ptr %376, align 1, !tbaa !115
  %382 = icmp eq i16 %380, %381
  br i1 %382, label %383, label %386

383:                                              ; preds = %379
  %384 = getelementptr inbounds nuw i8, ptr %376, i64 2
  %385 = getelementptr inbounds nuw i8, ptr %375, i64 2
  br label %386

386:                                              ; preds = %383, %379, %374
  %387 = phi ptr [ %385, %383 ], [ %375, %379 ], [ %375, %374 ]
  %388 = phi ptr [ %384, %383 ], [ %376, %379 ], [ %376, %374 ]
  %389 = icmp ult ptr %388, %4
  br i1 %389, label %390, label %396

390:                                              ; preds = %386
  %391 = load i8, ptr %387, align 1, !tbaa !42
  %392 = load i8, ptr %388, align 1, !tbaa !42
  %393 = icmp eq i8 %391, %392
  %394 = zext i1 %393 to i64
  %395 = getelementptr inbounds nuw i8, ptr %388, i64 %394
  br label %396

396:                                              ; preds = %390, %386
  %397 = phi ptr [ %388, %386 ], [ %395, %390 ]
  %398 = ptrtoint ptr %397 to i64
  %399 = sub i64 %398, %18
  br label %400

400:                                              ; preds = %396, %356, %343
  %401 = phi i64 [ %399, %396 ], [ %346, %343 ], [ %362, %356 ]
  %402 = icmp ugt i64 %401, 2
  br i1 %402, label %403, label %414

403:                                              ; preds = %400
  %404 = add nuw nsw i32 %331, 3
  store i32 %404, ptr %0, align 4, !tbaa !46
  %405 = trunc i64 %401 to i32
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %405, ptr %406, align 4, !tbaa !44
  %407 = zext nneg i32 %41 to i64
  %408 = icmp ugt i64 %401, %407
  %409 = getelementptr inbounds nuw i8, ptr %3, i64 %401
  %410 = icmp eq ptr %409, %4
  %411 = or i1 %408, %410
  br i1 %411, label %412, label %414

412:                                              ; preds = %403
  %413 = add i32 %35, 1
  br label %642

414:                                              ; preds = %403, %400, %.loopexit80, %.loopexit86
  %415 = phi i64 [ %258, %.loopexit86 ], [ %258, %400 ], [ %401, %403 ], [ %258, %.loopexit80 ]
  %416 = phi i32 [ %259, %.loopexit86 ], [ %259, %400 ], [ 1, %403 ], [ %259, %.loopexit80 ]
  store i32 %35, ptr %51, align 4, !tbaa !25
  %417 = icmp ult i32 %52, %77
  br i1 %417, label %418, label %419

418:                                              ; preds = %414
  store i32 0, ptr %82, align 4, !tbaa !25
  store i32 0, ptr %81, align 4, !tbaa !25
  br label %556

419:                                              ; preds = %414
  %420 = getelementptr inbounds i8, ptr %4, i64 -7
  %421 = getelementptr inbounds i8, ptr %4, i64 -3
  %422 = getelementptr inbounds i8, ptr %4, i64 -1
  %423 = add i32 %35, 3
  br label %424

424:                                              ; preds = %540, %419
  %425 = phi i32 [ %52, %419 ], [ %546, %540 ]
  %426 = phi i64 [ 0, %419 ], [ %544, %540 ]
  %427 = phi i64 [ 0, %419 ], [ %543, %540 ]
  %428 = phi ptr [ %81, %419 ], [ %542, %540 ]
  %429 = phi ptr [ %82, %419 ], [ %541, %540 ]
  %430 = phi i32 [ %83, %419 ], [ %529, %540 ]
  %431 = phi i32 [ %416, %419 ], [ %528, %540 ]
  %432 = phi i32 [ %86, %419 ], [ %547, %540 ]
  %433 = phi i64 [ %415, %419 ], [ %527, %540 ]
  %434 = and i32 %425, %59
  %435 = shl nuw i32 %434, 1
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %436
  %438 = tail call i64 @llvm.umin.i64(i64 %426, i64 %427)
  %439 = zext i32 %425 to i64
  %440 = getelementptr inbounds nuw i8, ptr %37, i64 %439
  %441 = getelementptr inbounds nuw i8, ptr %3, i64 %438
  %442 = getelementptr inbounds nuw i8, ptr %440, i64 %438
  %443 = icmp ult ptr %441, %420
  br i1 %443, label %444, label %.loopexit76

444:                                              ; preds = %424
  %445 = load i64, ptr %442, align 1, !tbaa !30
  %446 = load i64, ptr %441, align 1, !tbaa !30
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %.preheader, label %448

448:                                              ; preds = %444
  %449 = xor i64 %446, %445
  %450 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %449, i1 true)
  %451 = lshr i64 %450, 3
  br label %505

.preheader:                                       ; preds = %444, %457
  %452 = phi ptr [ %455, %457 ], [ %442, %444 ]
  %453 = phi ptr [ %454, %457 ], [ %441, %444 ]
  %454 = getelementptr inbounds nuw i8, ptr %453, i64 8
  %455 = getelementptr inbounds nuw i8, ptr %452, i64 8
  %456 = icmp ult ptr %454, %420
  br i1 %456, label %457, label %.loopexit76

457:                                              ; preds = %.preheader
  %458 = load i64, ptr %455, align 1, !tbaa !30
  %459 = load i64, ptr %454, align 1, !tbaa !30
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %.preheader, label %461

461:                                              ; preds = %457
  %462 = xor i64 %459, %458
  %463 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %462, i1 true)
  %464 = lshr i64 %463, 3
  %465 = getelementptr inbounds nuw i8, ptr %454, i64 %464
  %466 = ptrtoint ptr %465 to i64
  %467 = ptrtoint ptr %441 to i64
  %468 = sub i64 %466, %467
  br label %505

.loopexit76:                                      ; preds = %.preheader, %424
  %469 = phi ptr [ %442, %424 ], [ %455, %.preheader ]
  %470 = phi ptr [ %441, %424 ], [ %454, %.preheader ]
  %471 = icmp ult ptr %470, %421
  br i1 %471, label %472, label %479

472:                                              ; preds = %.loopexit76
  %473 = load i32, ptr %469, align 1, !tbaa !25
  %474 = load i32, ptr %470, align 1, !tbaa !25
  %475 = icmp eq i32 %473, %474
  br i1 %475, label %476, label %479

476:                                              ; preds = %472
  %477 = getelementptr inbounds nuw i8, ptr %470, i64 4
  %478 = getelementptr inbounds nuw i8, ptr %469, i64 4
  br label %479

479:                                              ; preds = %476, %472, %.loopexit76
  %480 = phi ptr [ %478, %476 ], [ %469, %472 ], [ %469, %.loopexit76 ]
  %481 = phi ptr [ %477, %476 ], [ %470, %472 ], [ %470, %.loopexit76 ]
  %482 = icmp ult ptr %481, %422
  br i1 %482, label %483, label %490

483:                                              ; preds = %479
  %484 = load i16, ptr %480, align 1, !tbaa !115
  %485 = load i16, ptr %481, align 1, !tbaa !115
  %486 = icmp eq i16 %484, %485
  br i1 %486, label %487, label %490

487:                                              ; preds = %483
  %488 = getelementptr inbounds nuw i8, ptr %481, i64 2
  %489 = getelementptr inbounds nuw i8, ptr %480, i64 2
  br label %490

490:                                              ; preds = %487, %483, %479
  %491 = phi ptr [ %489, %487 ], [ %480, %483 ], [ %480, %479 ]
  %492 = phi ptr [ %488, %487 ], [ %481, %483 ], [ %481, %479 ]
  %493 = icmp ult ptr %492, %4
  br i1 %493, label %494, label %500

494:                                              ; preds = %490
  %495 = load i8, ptr %491, align 1, !tbaa !42
  %496 = load i8, ptr %492, align 1, !tbaa !42
  %497 = icmp eq i8 %495, %496
  %498 = zext i1 %497 to i64
  %499 = getelementptr inbounds nuw i8, ptr %492, i64 %498
  br label %500

500:                                              ; preds = %494, %490
  %501 = phi ptr [ %492, %490 ], [ %499, %494 ]
  %502 = ptrtoint ptr %501 to i64
  %503 = ptrtoint ptr %441 to i64
  %504 = sub i64 %502, %503
  br label %505

505:                                              ; preds = %500, %461, %448
  %506 = phi i64 [ %504, %500 ], [ %451, %448 ], [ %468, %461 ]
  %507 = add i64 %506, %438
  %508 = icmp ugt i64 %507, %433
  br i1 %508, label %509, label %526

509:                                              ; preds = %505
  %510 = sub i32 %430, %425
  %511 = zext i32 %510 to i64
  %512 = icmp ugt i64 %507, %511
  %513 = trunc i64 %507 to i32
  %514 = add i32 %425, %513
  %515 = select i1 %512, i32 %514, i32 %430
  %516 = sub i32 %423, %425
  %517 = zext i32 %431 to i64
  %518 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %517
  store i32 %516, ptr %518, align 4, !tbaa !46
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 4
  store i32 %513, ptr %519, align 4, !tbaa !44
  %520 = add i32 %431, 1
  %521 = icmp ugt i64 %507, 4096
  %522 = getelementptr inbounds nuw i8, ptr %3, i64 %507
  %523 = icmp eq ptr %522, %4
  %524 = or i1 %521, %523
  br i1 %524, label %525, label %526

525:                                              ; preds = %509
  store i32 0, ptr %429, align 4, !tbaa !25
  store i32 0, ptr %428, align 4, !tbaa !25
  br label %.loopexit

526:                                              ; preds = %509, %505
  %527 = phi i64 [ %507, %509 ], [ %433, %505 ]
  %528 = phi i32 [ %520, %509 ], [ %431, %505 ]
  %529 = phi i32 [ %515, %509 ], [ %430, %505 ]
  %530 = getelementptr inbounds nuw i8, ptr %440, i64 %507
  %531 = load i8, ptr %530, align 1, !tbaa !42
  %532 = getelementptr inbounds nuw i8, ptr %3, i64 %507
  %533 = load i8, ptr %532, align 1, !tbaa !42
  %534 = icmp ult i8 %531, %533
  %535 = icmp ugt i32 %425, %64
  br i1 %534, label %536, label %539

536:                                              ; preds = %526
  store i32 %425, ptr %428, align 4, !tbaa !25
  br i1 %535, label %537, label %551

537:                                              ; preds = %536
  %538 = getelementptr inbounds nuw i8, ptr %437, i64 4
  br label %540

539:                                              ; preds = %526
  store i32 %425, ptr %429, align 4, !tbaa !25
  br i1 %535, label %540, label %551

540:                                              ; preds = %539, %537
  %541 = phi ptr [ %429, %537 ], [ %437, %539 ]
  %542 = phi ptr [ %538, %537 ], [ %428, %539 ]
  %543 = phi i64 [ %427, %537 ], [ %507, %539 ]
  %544 = phi i64 [ %507, %537 ], [ %426, %539 ]
  %545 = phi ptr [ %538, %537 ], [ %437, %539 ]
  %546 = load i32, ptr %545, align 4, !tbaa !25
  %547 = add i32 %432, -1
  %548 = icmp ne i32 %547, 0
  %549 = icmp uge i32 %546, %77
  %550 = select i1 %548, i1 %549, i1 false
  br i1 %550, label %424, label %551, !llvm.loop !139

551:                                              ; preds = %540, %539, %536
  %552 = phi i32 [ %547, %540 ], [ %432, %536 ], [ %432, %539 ]
  %553 = phi ptr [ %541, %540 ], [ %429, %536 ], [ %9, %539 ]
  %554 = phi ptr [ %542, %540 ], [ %9, %536 ], [ %428, %539 ]
  store i32 0, ptr %553, align 4, !tbaa !25
  store i32 0, ptr %554, align 4, !tbaa !25
  %555 = icmp eq i32 %552, 0
  br i1 %555, label %.loopexit, label %556

556:                                              ; preds = %551, %418
  %557 = phi i32 [ %83, %418 ], [ %529, %551 ]
  %558 = phi i32 [ %416, %418 ], [ %528, %551 ]
  %559 = phi i64 [ %415, %418 ], [ %527, %551 ]
  %560 = phi i32 [ %86, %418 ], [ %552, %551 ]
  %561 = load i32, ptr %3, align 1, !tbaa !25
  %562 = mul i32 %561, -1640531535
  %563 = sub i32 32, %100
  %564 = lshr i32 %562, %563
  %565 = zext i32 %564 to i64
  %566 = getelementptr inbounds nuw i8, ptr %88, i64 112
  %567 = load ptr, ptr %566, align 8, !tbaa !107
  %568 = getelementptr inbounds nuw [4 x i8], ptr %567, i64 %565
  %569 = getelementptr inbounds nuw i8, ptr %88, i64 128
  %570 = load ptr, ptr %569, align 8, !tbaa !109
  %571 = load i32, ptr %568, align 4, !tbaa !25
  %572 = icmp ugt i32 %571, %97
  br i1 %572, label %573, label %.loopexit

573:                                              ; preds = %556
  %574 = and i64 %94, 4294967295
  %575 = zext i32 %98 to i64
  %576 = getelementptr inbounds nuw i8, ptr %37, i64 %575
  %577 = add i32 %35, 3
  br label %578

578:                                              ; preds = %624, %573
  %579 = phi i32 [ %571, %573 ], [ %635, %624 ]
  %580 = phi i64 [ 0, %573 ], [ %631, %624 ]
  %581 = phi i64 [ 0, %573 ], [ %630, %624 ]
  %582 = phi i32 [ %557, %573 ], [ %622, %624 ]
  %583 = phi i32 [ %558, %573 ], [ %621, %624 ]
  %584 = phi i32 [ %560, %573 ], [ %634, %624 ]
  %585 = phi i64 [ %559, %573 ], [ %620, %624 ]
  %586 = and i32 %579, %105
  %587 = shl nuw i32 %586, 1
  %588 = zext i32 %587 to i64
  %589 = getelementptr inbounds nuw [4 x i8], ptr %570, i64 %588
  %590 = tail call i64 @llvm.umin.i64(i64 %580, i64 %581)
  %591 = zext i32 %579 to i64
  %592 = getelementptr inbounds nuw i8, ptr %90, i64 %591
  %593 = getelementptr inbounds nuw i8, ptr %3, i64 %590
  %594 = getelementptr inbounds nuw i8, ptr %592, i64 %590
  %595 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %593, ptr noundef nonnull %594, ptr noundef %4, ptr noundef %91, ptr noundef %63)
  %596 = add i64 %595, %590
  %597 = add i64 %596, %591
  %598 = icmp ult i64 %597, %574
  %599 = getelementptr inbounds nuw i8, ptr %576, i64 %591
  %600 = select i1 %598, ptr %592, ptr %599
  %601 = icmp ugt i64 %596, %585
  br i1 %601, label %602, label %619

602:                                              ; preds = %578
  %603 = add i32 %579, %98
  %604 = sub i32 %582, %603
  %605 = zext i32 %604 to i64
  %606 = icmp ugt i64 %596, %605
  %607 = trunc i64 %596 to i32
  %608 = add i32 %603, %607
  %609 = select i1 %606, i32 %608, i32 %582
  %610 = sub i32 %577, %603
  %611 = zext i32 %583 to i64
  %612 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %611
  store i32 %610, ptr %612, align 4, !tbaa !46
  %613 = getelementptr inbounds nuw i8, ptr %612, i64 4
  store i32 %607, ptr %613, align 4, !tbaa !44
  %614 = add i32 %583, 1
  %615 = icmp ugt i64 %596, 4096
  %616 = getelementptr inbounds nuw i8, ptr %3, i64 %596
  %617 = icmp eq ptr %616, %4
  %618 = or i1 %615, %617
  br i1 %618, label %.loopexit, label %619

619:                                              ; preds = %602, %578
  %620 = phi i64 [ %596, %602 ], [ %585, %578 ]
  %621 = phi i32 [ %614, %602 ], [ %583, %578 ]
  %622 = phi i32 [ %609, %602 ], [ %582, %578 ]
  %623 = icmp ugt i32 %579, %109
  br i1 %623, label %624, label %.loopexit

624:                                              ; preds = %619
  %625 = getelementptr inbounds nuw i8, ptr %600, i64 %596
  %626 = load i8, ptr %625, align 1, !tbaa !42
  %627 = getelementptr inbounds nuw i8, ptr %3, i64 %596
  %628 = load i8, ptr %627, align 1, !tbaa !42
  %629 = icmp ult i8 %626, %628
  %630 = select i1 %629, i64 %581, i64 %596
  %631 = select i1 %629, i64 %596, i64 %580
  %632 = select i1 %629, i64 4, i64 0
  %633 = getelementptr inbounds nuw i8, ptr %589, i64 %632
  %634 = add i32 %584, -1
  %635 = load i32, ptr %633, align 4, !tbaa !25
  %636 = icmp ne i32 %634, 0
  %637 = icmp ugt i32 %635, %97
  %638 = select i1 %636, i1 %637, i1 false
  br i1 %638, label %578, label %.loopexit, !llvm.loop !145

.loopexit:                                        ; preds = %624, %619, %602, %556, %551, %525
  %639 = phi i32 [ %528, %551 ], [ %520, %525 ], [ %558, %556 ], [ %621, %624 ], [ %614, %602 ], [ %621, %619 ]
  %640 = phi i32 [ %529, %551 ], [ %515, %525 ], [ %557, %556 ], [ %622, %624 ], [ %609, %602 ], [ %622, %619 ]
  %641 = add i32 %640, -8
  br label %642

642:                                              ; preds = %.loopexit, %412
  %643 = phi i32 [ %413, %412 ], [ %641, %.loopexit ]
  %644 = phi i32 [ 1, %412 ], [ %639, %.loopexit ]
  store i32 %643, ptr %12, align 4, !tbaa !19
  br label %.loopexit85

.loopexit85:                                      ; preds = %243, %642
  %645 = phi i32 [ %644, %642 ], [ %248, %243 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %646

646:                                              ; preds = %.loopexit85, %8
  %647 = phi i32 [ %645, %.loopexit85 ], [ 0, %8 ]
  ret i32 %647
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i32 @ZSTD_btGetAllMatches_dictMatchState_4(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %700, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %.preheader94, label %34

.preheader94:                                     ; preds = %17, %.preheader94
  %23 = phi i32 [ %27, %.preheader94 ], [ %13, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 %24
  %26 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %25, ptr noundef %4, i32 noundef %21, i32 noundef 4, i32 noundef 0)
  %27 = add i32 %26, %23
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %.preheader94, label %29, !llvm.loop !20

29:                                               ; preds = %.preheader94
  %30 = load ptr, ptr %10, align 8, !tbaa !18
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %18, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %21, %17 ]
  %36 = phi ptr [ %30, %29 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %39 = load i32, ptr %38, align 4, !tbaa !24
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 4095)
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %42 = load i32, ptr %41, align 4, !tbaa !108
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %44 = load ptr, ptr %43, align 8, !tbaa !107
  %45 = load i32, ptr %3, align 1, !tbaa !25
  %46 = mul i32 %45, -1640531535
  %47 = sub i32 32, %42
  %48 = lshr i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr %44, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !25
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %55 = load i32, ptr %54, align 4, !tbaa !110
  %56 = add i32 %55, -1
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %60 = load i32, ptr %59, align 8, !tbaa !22
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw i8, ptr %36, i64 %61
  %63 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %58)
  %64 = load i32, ptr %37, align 8, !tbaa !112
  %65 = getelementptr i8, ptr %1, i64 28
  %66 = load i32, ptr %65, align 4, !tbaa !106
  %67 = getelementptr i8, ptr %1, i64 40
  %68 = load i32, ptr %67, align 8, !tbaa !113
  %69 = shl nuw i32 1, %64
  %70 = sub i32 %35, %66
  %71 = icmp ugt i32 %70, %69
  %72 = sub i32 %35, %69
  %73 = icmp eq i32 %68, 0
  %74 = select i1 %73, i1 %71, i1 false
  %75 = select i1 %74, i32 %72, i32 %66
  %76 = tail call i32 @llvm.umax.i32(i32 %75, i32 1)
  %77 = and i32 %35, %58
  %78 = shl nuw i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 4
  %82 = add i32 %35, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %84 = load i32, ptr %83, align 4, !tbaa !114
  %85 = shl nuw i32 1, %84
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %87 = load ptr, ptr %86, align 8, !tbaa !142
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %89 = load ptr, ptr %88, align 8, !tbaa !18
  %90 = load ptr, ptr %87, align 8, !tbaa !143
  %91 = ptrtoint ptr %90 to i64
  %92 = ptrtoint ptr %89 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds nuw i8, ptr %87, i64 28
  %96 = load i32, ptr %95, align 4, !tbaa !106
  %97 = sub i32 %75, %94
  %98 = getelementptr inbounds nuw i8, ptr %87, i64 264
  %99 = load i32, ptr %98, align 8, !tbaa !108
  %100 = getelementptr inbounds nuw i8, ptr %87, i64 260
  %101 = load i32, ptr %100, align 4, !tbaa !110
  %102 = add i32 %101, -1
  %103 = shl nsw i32 -1, %102
  %104 = xor i32 %103, -1
  %105 = sub i32 %94, %96
  %106 = icmp ugt i32 %105, %104
  %107 = sub i32 %94, %104
  %108 = select i1 %106, i32 %107, i32 %96
  %109 = add i32 %7, -1
  %110 = zext i32 %109 to i64
  %111 = icmp ult i32 %6, -3
  br i1 %111, label %112, label %470

112:                                              ; preds = %34
  %113 = sub i32 %35, %60
  %114 = zext i32 %97 to i64
  %115 = sub nsw i64 0, %114
  %116 = getelementptr i8, ptr %89, i64 %115
  %117 = add i32 %96, %97
  %118 = sub i32 %35, %117
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %120 = getelementptr inbounds i8, ptr %4, i64 -7
  %121 = icmp ult ptr %119, %120
  %122 = getelementptr inbounds i8, ptr %4, i64 -3
  %123 = getelementptr inbounds i8, ptr %4, i64 -1
  %124 = ptrtoint ptr %119 to i64
  %125 = zext i32 %6 to i64
  %126 = icmp eq i32 %6, 3
  br i1 %126, label %127, label %130

127:                                              ; preds = %112
  %128 = load i32, ptr %5, align 4, !tbaa !25
  %129 = add i32 %128, -1
  br label %133

130:                                              ; preds = %112
  %131 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %125
  %132 = load i32, ptr %131, align 4, !tbaa !25
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i32 [ %129, %127 ], [ %132, %130 ]
  %135 = sub i32 %35, %134
  %136 = add i32 %134, -1
  %137 = icmp ult i32 %136, %113
  br i1 %137, label %138, label %207

138:                                              ; preds = %133
  %139 = icmp uge i32 %135, %75
  %140 = zext i32 %134 to i64
  %141 = sub nsw i64 0, %140
  %142 = getelementptr inbounds i8, ptr %3, i64 %141
  %143 = load i32, ptr %142, align 1, !tbaa !25
  %144 = icmp eq i32 %45, %143
  %145 = and i1 %139, %144
  br i1 %145, label %146, label %232

146:                                              ; preds = %138
  %147 = getelementptr inbounds i8, ptr %119, i64 %141
  br i1 %121, label %148, label %.loopexit93

148:                                              ; preds = %146
  %149 = load i64, ptr %147, align 1, !tbaa !30
  %150 = load i64, ptr %119, align 1, !tbaa !30
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %.preheader92, label %152

152:                                              ; preds = %148
  %153 = xor i64 %150, %149
  %154 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %153, i1 true)
  %155 = lshr i64 %154, 3
  br label %220

.preheader92:                                     ; preds = %148, %161
  %156 = phi ptr [ %159, %161 ], [ %147, %148 ]
  %157 = phi ptr [ %158, %161 ], [ %119, %148 ]
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 8
  %159 = getelementptr inbounds nuw i8, ptr %156, i64 8
  %160 = icmp ult ptr %158, %120
  br i1 %160, label %161, label %.loopexit93

161:                                              ; preds = %.preheader92
  %162 = load i64, ptr %159, align 1, !tbaa !30
  %163 = load i64, ptr %158, align 1, !tbaa !30
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %.preheader92, label %165

165:                                              ; preds = %161
  %166 = xor i64 %163, %162
  %167 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %166, i1 true)
  %168 = lshr i64 %167, 3
  %169 = getelementptr inbounds nuw i8, ptr %158, i64 %168
  %170 = ptrtoint ptr %169 to i64
  %171 = sub i64 %170, %124
  br label %220

.loopexit93:                                      ; preds = %.preheader92, %146
  %172 = phi ptr [ %147, %146 ], [ %159, %.preheader92 ]
  %173 = phi ptr [ %119, %146 ], [ %158, %.preheader92 ]
  %174 = icmp ult ptr %173, %122
  br i1 %174, label %175, label %182

175:                                              ; preds = %.loopexit93
  %176 = load i32, ptr %172, align 1, !tbaa !25
  %177 = load i32, ptr %173, align 1, !tbaa !25
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = getelementptr inbounds nuw i8, ptr %173, i64 4
  %181 = getelementptr inbounds nuw i8, ptr %172, i64 4
  br label %182

182:                                              ; preds = %179, %175, %.loopexit93
  %183 = phi ptr [ %181, %179 ], [ %172, %175 ], [ %172, %.loopexit93 ]
  %184 = phi ptr [ %180, %179 ], [ %173, %175 ], [ %173, %.loopexit93 ]
  %185 = icmp ult ptr %184, %123
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load i16, ptr %183, align 1, !tbaa !115
  %188 = load i16, ptr %184, align 1, !tbaa !115
  %189 = icmp eq i16 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = getelementptr inbounds nuw i8, ptr %184, i64 2
  %192 = getelementptr inbounds nuw i8, ptr %183, i64 2
  br label %193

193:                                              ; preds = %190, %186, %182
  %194 = phi ptr [ %192, %190 ], [ %183, %186 ], [ %183, %182 ]
  %195 = phi ptr [ %191, %190 ], [ %184, %186 ], [ %184, %182 ]
  %196 = icmp ult ptr %195, %4
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i8, ptr %194, align 1, !tbaa !42
  %199 = load i8, ptr %195, align 1, !tbaa !42
  %200 = icmp eq i8 %198, %199
  %201 = zext i1 %200 to i64
  %202 = getelementptr inbounds nuw i8, ptr %195, i64 %201
  br label %203

203:                                              ; preds = %197, %193
  %204 = phi ptr [ %195, %193 ], [ %202, %197 ]
  %205 = ptrtoint ptr %204 to i64
  %206 = sub i64 %205, %124
  br label %220

207:                                              ; preds = %133
  %208 = zext i32 %135 to i64
  %209 = getelementptr i8, ptr %116, i64 %208
  %210 = icmp uge i32 %136, %118
  %211 = sub i32 %135, %60
  %212 = icmp ugt i32 %211, -4
  %213 = select i1 %210, i1 true, i1 %212
  br i1 %213, label %232, label %214

214:                                              ; preds = %207
  %215 = load i32, ptr %209, align 1, !tbaa !25
  %216 = icmp eq i32 %45, %215
  br i1 %216, label %217, label %232

217:                                              ; preds = %214
  %218 = getelementptr inbounds nuw i8, ptr %209, i64 4
  %219 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %119, ptr noundef nonnull %218, ptr noundef %4, ptr noundef %90, ptr noundef %62)
  br label %220

220:                                              ; preds = %217, %203, %165, %152
  %221 = phi i64 [ %219, %217 ], [ %206, %203 ], [ %155, %152 ], [ %171, %165 ]
  %222 = trunc i64 %221 to i32
  %223 = add i32 %222, 4
  %224 = icmp ult i32 %109, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %220
  %226 = zext i32 %223 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %223, ptr %227, align 4, !tbaa !44
  %228 = icmp ule i32 %223, %40
  %229 = getelementptr inbounds nuw i8, ptr %3, i64 %226
  %230 = icmp ne ptr %229, %4
  %231 = and i1 %228, %230
  br i1 %231, label %232, label %698

232:                                              ; preds = %225, %220, %214, %207, %138
  %233 = phi i32 [ 1, %225 ], [ 0, %220 ], [ 0, %138 ], [ 0, %214 ], [ 0, %207 ]
  %234 = phi i64 [ %226, %225 ], [ %110, %220 ], [ %110, %138 ], [ %110, %214 ], [ %110, %207 ]
  %235 = add nuw nsw i64 %125, 1
  %236 = icmp eq i64 %235, 3
  br i1 %236, label %240, label %237

237:                                              ; preds = %232
  %238 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %235
  %239 = load i32, ptr %238, align 4, !tbaa !25
  br label %243

240:                                              ; preds = %232
  %241 = load i32, ptr %5, align 4, !tbaa !25
  %242 = add i32 %241, -1
  br label %243

243:                                              ; preds = %240, %237
  %244 = phi i32 [ %242, %240 ], [ %239, %237 ]
  %245 = sub i32 %35, %244
  %246 = add i32 %244, -1
  %247 = icmp ult i32 %246, %113
  br i1 %247, label %264, label %248

248:                                              ; preds = %243
  %249 = zext i32 %245 to i64
  %250 = getelementptr i8, ptr %116, i64 %249
  %251 = icmp uge i32 %246, %118
  %252 = sub i32 %245, %60
  %253 = icmp ugt i32 %252, -4
  %254 = select i1 %251, i1 true, i1 %253
  br i1 %254, label %338, label %255

255:                                              ; preds = %248
  %256 = load i32, ptr %3, align 1, !tbaa !25
  %257 = load i32, ptr %250, align 1, !tbaa !25
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %338

259:                                              ; preds = %255
  %260 = getelementptr inbounds nuw i8, ptr %250, i64 4
  %261 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %119, ptr noundef nonnull %260, ptr noundef %4, ptr noundef %90, ptr noundef %62)
  %262 = trunc i64 %261 to i32
  %263 = add i32 %262, 4
  br label %338

264:                                              ; preds = %243
  %265 = icmp uge i32 %245, %75
  %266 = load i32, ptr %3, align 1, !tbaa !25
  %267 = zext i32 %244 to i64
  %268 = sub nsw i64 0, %267
  %269 = getelementptr inbounds i8, ptr %3, i64 %268
  %270 = load i32, ptr %269, align 1, !tbaa !25
  %271 = icmp eq i32 %266, %270
  %272 = and i1 %265, %271
  br i1 %272, label %273, label %338

273:                                              ; preds = %264
  %274 = getelementptr inbounds i8, ptr %119, i64 %268
  br i1 %121, label %275, label %.loopexit91

275:                                              ; preds = %273
  %276 = load i64, ptr %274, align 1, !tbaa !30
  %277 = load i64, ptr %119, align 1, !tbaa !30
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %.preheader90, label %279

279:                                              ; preds = %275
  %280 = xor i64 %277, %276
  %281 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %280, i1 true)
  %282 = lshr i64 %281, 3
  br label %334

.preheader90:                                     ; preds = %275, %323
  %283 = phi ptr [ %286, %323 ], [ %274, %275 ]
  %284 = phi ptr [ %285, %323 ], [ %119, %275 ]
  %285 = getelementptr inbounds nuw i8, ptr %284, i64 8
  %286 = getelementptr inbounds nuw i8, ptr %283, i64 8
  %287 = icmp ult ptr %285, %120
  br i1 %287, label %323, label %.loopexit91

.loopexit91:                                      ; preds = %.preheader90, %273
  %288 = phi ptr [ %274, %273 ], [ %286, %.preheader90 ]
  %289 = phi ptr [ %119, %273 ], [ %285, %.preheader90 ]
  %290 = icmp ult ptr %289, %122
  br i1 %290, label %291, label %298

291:                                              ; preds = %.loopexit91
  %292 = load i32, ptr %288, align 1, !tbaa !25
  %293 = load i32, ptr %289, align 1, !tbaa !25
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %291
  %296 = getelementptr inbounds nuw i8, ptr %289, i64 4
  %297 = getelementptr inbounds nuw i8, ptr %288, i64 4
  br label %298

298:                                              ; preds = %295, %291, %.loopexit91
  %299 = phi ptr [ %297, %295 ], [ %288, %291 ], [ %288, %.loopexit91 ]
  %300 = phi ptr [ %296, %295 ], [ %289, %291 ], [ %289, %.loopexit91 ]
  %301 = icmp ult ptr %300, %123
  br i1 %301, label %302, label %309

302:                                              ; preds = %298
  %303 = load i16, ptr %299, align 1, !tbaa !115
  %304 = load i16, ptr %300, align 1, !tbaa !115
  %305 = icmp eq i16 %303, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %302
  %307 = getelementptr inbounds nuw i8, ptr %300, i64 2
  %308 = getelementptr inbounds nuw i8, ptr %299, i64 2
  br label %309

309:                                              ; preds = %306, %302, %298
  %310 = phi ptr [ %308, %306 ], [ %299, %302 ], [ %299, %298 ]
  %311 = phi ptr [ %307, %306 ], [ %300, %302 ], [ %300, %298 ]
  %312 = icmp ult ptr %311, %4
  br i1 %312, label %313, label %319

313:                                              ; preds = %309
  %314 = load i8, ptr %310, align 1, !tbaa !42
  %315 = load i8, ptr %311, align 1, !tbaa !42
  %316 = icmp eq i8 %314, %315
  %317 = zext i1 %316 to i64
  %318 = getelementptr inbounds nuw i8, ptr %311, i64 %317
  br label %319

319:                                              ; preds = %313, %309
  %320 = phi ptr [ %311, %309 ], [ %318, %313 ]
  %321 = ptrtoint ptr %320 to i64
  %322 = sub i64 %321, %124
  br label %334

323:                                              ; preds = %.preheader90
  %324 = load i64, ptr %286, align 1, !tbaa !30
  %325 = load i64, ptr %285, align 1, !tbaa !30
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %.preheader90, label %327

327:                                              ; preds = %323
  %328 = xor i64 %325, %324
  %329 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %328, i1 true)
  %330 = lshr i64 %329, 3
  %331 = getelementptr inbounds nuw i8, ptr %285, i64 %330
  %332 = ptrtoint ptr %331 to i64
  %333 = sub i64 %332, %124
  br label %334

334:                                              ; preds = %327, %319, %279
  %335 = phi i64 [ %322, %319 ], [ %282, %279 ], [ %333, %327 ]
  %336 = trunc i64 %335 to i32
  %337 = add i32 %336, 4
  br label %338

338:                                              ; preds = %334, %264, %259, %255, %248
  %339 = phi i32 [ %337, %334 ], [ 0, %264 ], [ %263, %259 ], [ 0, %255 ], [ 0, %248 ]
  %340 = zext i32 %339 to i64
  %341 = icmp samesign ult i64 %234, %340
  br i1 %341, label %342, label %351

342:                                              ; preds = %338
  %343 = zext nneg i32 %233 to i64
  %344 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %343
  store i32 2, ptr %344, align 4, !tbaa !46
  %345 = getelementptr inbounds nuw i8, ptr %344, i64 4
  store i32 %339, ptr %345, align 4, !tbaa !44
  %346 = add nuw nsw i32 %233, 1
  %347 = icmp ule i32 %339, %40
  %348 = getelementptr inbounds nuw i8, ptr %3, i64 %340
  %349 = icmp ne ptr %348, %4
  %350 = and i1 %347, %349
  br i1 %350, label %351, label %698

351:                                              ; preds = %342, %338
  %352 = phi i32 [ %346, %342 ], [ %233, %338 ]
  %353 = phi i64 [ %340, %342 ], [ %234, %338 ]
  %354 = add nuw nsw i64 %125, 2
  %355 = icmp eq i64 %354, 3
  br i1 %355, label %359, label %356

356:                                              ; preds = %351
  %357 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %354
  %358 = load i32, ptr %357, align 4, !tbaa !25
  br label %362

359:                                              ; preds = %351
  %360 = load i32, ptr %5, align 4, !tbaa !25
  %361 = add i32 %360, -1
  br label %362

362:                                              ; preds = %359, %356
  %363 = phi i32 [ %361, %359 ], [ %358, %356 ]
  %364 = sub i32 %35, %363
  %365 = add i32 %363, -1
  %366 = icmp ult i32 %365, %113
  br i1 %366, label %383, label %367

367:                                              ; preds = %362
  %368 = zext i32 %364 to i64
  %369 = getelementptr i8, ptr %116, i64 %368
  %370 = icmp uge i32 %365, %118
  %371 = sub i32 %364, %60
  %372 = icmp ugt i32 %371, -4
  %373 = select i1 %370, i1 true, i1 %372
  br i1 %373, label %457, label %374

374:                                              ; preds = %367
  %375 = load i32, ptr %3, align 1, !tbaa !25
  %376 = load i32, ptr %369, align 1, !tbaa !25
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %457

378:                                              ; preds = %374
  %379 = getelementptr inbounds nuw i8, ptr %369, i64 4
  %380 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %119, ptr noundef nonnull %379, ptr noundef %4, ptr noundef %90, ptr noundef %62)
  %381 = trunc i64 %380 to i32
  %382 = add i32 %381, 4
  br label %457

383:                                              ; preds = %362
  %384 = icmp uge i32 %364, %75
  %385 = load i32, ptr %3, align 1, !tbaa !25
  %386 = zext i32 %363 to i64
  %387 = sub nsw i64 0, %386
  %388 = getelementptr inbounds i8, ptr %3, i64 %387
  %389 = load i32, ptr %388, align 1, !tbaa !25
  %390 = icmp eq i32 %385, %389
  %391 = and i1 %384, %390
  br i1 %391, label %392, label %457

392:                                              ; preds = %383
  %393 = getelementptr inbounds i8, ptr %119, i64 %387
  br i1 %121, label %394, label %.loopexit89

394:                                              ; preds = %392
  %395 = load i64, ptr %393, align 1, !tbaa !30
  %396 = load i64, ptr %119, align 1, !tbaa !30
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %.preheader88, label %398

398:                                              ; preds = %394
  %399 = xor i64 %396, %395
  %400 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %399, i1 true)
  %401 = lshr i64 %400, 3
  br label %453

.preheader88:                                     ; preds = %394, %442
  %402 = phi ptr [ %405, %442 ], [ %393, %394 ]
  %403 = phi ptr [ %404, %442 ], [ %119, %394 ]
  %404 = getelementptr inbounds nuw i8, ptr %403, i64 8
  %405 = getelementptr inbounds nuw i8, ptr %402, i64 8
  %406 = icmp ult ptr %404, %120
  br i1 %406, label %442, label %.loopexit89

.loopexit89:                                      ; preds = %.preheader88, %392
  %407 = phi ptr [ %393, %392 ], [ %405, %.preheader88 ]
  %408 = phi ptr [ %119, %392 ], [ %404, %.preheader88 ]
  %409 = icmp ult ptr %408, %122
  br i1 %409, label %410, label %417

410:                                              ; preds = %.loopexit89
  %411 = load i32, ptr %407, align 1, !tbaa !25
  %412 = load i32, ptr %408, align 1, !tbaa !25
  %413 = icmp eq i32 %411, %412
  br i1 %413, label %414, label %417

414:                                              ; preds = %410
  %415 = getelementptr inbounds nuw i8, ptr %408, i64 4
  %416 = getelementptr inbounds nuw i8, ptr %407, i64 4
  br label %417

417:                                              ; preds = %414, %410, %.loopexit89
  %418 = phi ptr [ %416, %414 ], [ %407, %410 ], [ %407, %.loopexit89 ]
  %419 = phi ptr [ %415, %414 ], [ %408, %410 ], [ %408, %.loopexit89 ]
  %420 = icmp ult ptr %419, %123
  br i1 %420, label %421, label %428

421:                                              ; preds = %417
  %422 = load i16, ptr %418, align 1, !tbaa !115
  %423 = load i16, ptr %419, align 1, !tbaa !115
  %424 = icmp eq i16 %422, %423
  br i1 %424, label %425, label %428

425:                                              ; preds = %421
  %426 = getelementptr inbounds nuw i8, ptr %419, i64 2
  %427 = getelementptr inbounds nuw i8, ptr %418, i64 2
  br label %428

428:                                              ; preds = %425, %421, %417
  %429 = phi ptr [ %427, %425 ], [ %418, %421 ], [ %418, %417 ]
  %430 = phi ptr [ %426, %425 ], [ %419, %421 ], [ %419, %417 ]
  %431 = icmp ult ptr %430, %4
  br i1 %431, label %432, label %438

432:                                              ; preds = %428
  %433 = load i8, ptr %429, align 1, !tbaa !42
  %434 = load i8, ptr %430, align 1, !tbaa !42
  %435 = icmp eq i8 %433, %434
  %436 = zext i1 %435 to i64
  %437 = getelementptr inbounds nuw i8, ptr %430, i64 %436
  br label %438

438:                                              ; preds = %432, %428
  %439 = phi ptr [ %430, %428 ], [ %437, %432 ]
  %440 = ptrtoint ptr %439 to i64
  %441 = sub i64 %440, %124
  br label %453

442:                                              ; preds = %.preheader88
  %443 = load i64, ptr %405, align 1, !tbaa !30
  %444 = load i64, ptr %404, align 1, !tbaa !30
  %445 = icmp eq i64 %443, %444
  br i1 %445, label %.preheader88, label %446

446:                                              ; preds = %442
  %447 = xor i64 %444, %443
  %448 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %447, i1 true)
  %449 = lshr i64 %448, 3
  %450 = getelementptr inbounds nuw i8, ptr %404, i64 %449
  %451 = ptrtoint ptr %450 to i64
  %452 = sub i64 %451, %124
  br label %453

453:                                              ; preds = %446, %438, %398
  %454 = phi i64 [ %441, %438 ], [ %401, %398 ], [ %452, %446 ]
  %455 = trunc i64 %454 to i32
  %456 = add i32 %455, 4
  br label %457

457:                                              ; preds = %453, %383, %378, %374, %367
  %458 = phi i32 [ %456, %453 ], [ 0, %383 ], [ %382, %378 ], [ 0, %374 ], [ 0, %367 ]
  %459 = zext i32 %458 to i64
  %460 = icmp samesign ult i64 %353, %459
  br i1 %460, label %461, label %470

461:                                              ; preds = %457
  %462 = zext nneg i32 %352 to i64
  %463 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %462
  store i32 3, ptr %463, align 4, !tbaa !46
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 4
  store i32 %458, ptr %464, align 4, !tbaa !44
  %465 = add nuw nsw i32 %352, 1
  %466 = icmp ule i32 %458, %40
  %467 = getelementptr inbounds nuw i8, ptr %3, i64 %459
  %468 = icmp ne ptr %467, %4
  %469 = and i1 %466, %468
  br i1 %469, label %470, label %698

470:                                              ; preds = %461, %457, %34
  %471 = phi i64 [ %110, %34 ], [ %459, %461 ], [ %353, %457 ]
  %472 = phi i32 [ 0, %34 ], [ %465, %461 ], [ %352, %457 ]
  store i32 %35, ptr %50, align 4, !tbaa !25
  %473 = icmp ult i32 %51, %76
  br i1 %473, label %474, label %475

474:                                              ; preds = %470
  store i32 0, ptr %81, align 4, !tbaa !25
  store i32 0, ptr %80, align 4, !tbaa !25
  br label %612

475:                                              ; preds = %470
  %476 = getelementptr inbounds i8, ptr %4, i64 -7
  %477 = getelementptr inbounds i8, ptr %4, i64 -3
  %478 = getelementptr inbounds i8, ptr %4, i64 -1
  %479 = add i32 %35, 3
  br label %480

480:                                              ; preds = %596, %475
  %481 = phi i32 [ %51, %475 ], [ %602, %596 ]
  %482 = phi i64 [ 0, %475 ], [ %600, %596 ]
  %483 = phi i64 [ 0, %475 ], [ %599, %596 ]
  %484 = phi ptr [ %80, %475 ], [ %598, %596 ]
  %485 = phi ptr [ %81, %475 ], [ %597, %596 ]
  %486 = phi i32 [ %82, %475 ], [ %585, %596 ]
  %487 = phi i32 [ %472, %475 ], [ %584, %596 ]
  %488 = phi i32 [ %85, %475 ], [ %603, %596 ]
  %489 = phi i64 [ %471, %475 ], [ %583, %596 ]
  %490 = and i32 %481, %58
  %491 = shl nuw i32 %490, 1
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %492
  %494 = tail call i64 @llvm.umin.i64(i64 %482, i64 %483)
  %495 = zext i32 %481 to i64
  %496 = getelementptr inbounds nuw i8, ptr %36, i64 %495
  %497 = getelementptr inbounds nuw i8, ptr %3, i64 %494
  %498 = getelementptr inbounds nuw i8, ptr %496, i64 %494
  %499 = icmp ult ptr %497, %476
  br i1 %499, label %500, label %.loopexit87

500:                                              ; preds = %480
  %501 = load i64, ptr %498, align 1, !tbaa !30
  %502 = load i64, ptr %497, align 1, !tbaa !30
  %503 = icmp eq i64 %501, %502
  br i1 %503, label %.preheader, label %504

504:                                              ; preds = %500
  %505 = xor i64 %502, %501
  %506 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %505, i1 true)
  %507 = lshr i64 %506, 3
  br label %561

.preheader:                                       ; preds = %500, %513
  %508 = phi ptr [ %511, %513 ], [ %498, %500 ]
  %509 = phi ptr [ %510, %513 ], [ %497, %500 ]
  %510 = getelementptr inbounds nuw i8, ptr %509, i64 8
  %511 = getelementptr inbounds nuw i8, ptr %508, i64 8
  %512 = icmp ult ptr %510, %476
  br i1 %512, label %513, label %.loopexit87

513:                                              ; preds = %.preheader
  %514 = load i64, ptr %511, align 1, !tbaa !30
  %515 = load i64, ptr %510, align 1, !tbaa !30
  %516 = icmp eq i64 %514, %515
  br i1 %516, label %.preheader, label %517

517:                                              ; preds = %513
  %518 = xor i64 %515, %514
  %519 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %518, i1 true)
  %520 = lshr i64 %519, 3
  %521 = getelementptr inbounds nuw i8, ptr %510, i64 %520
  %522 = ptrtoint ptr %521 to i64
  %523 = ptrtoint ptr %497 to i64
  %524 = sub i64 %522, %523
  br label %561

.loopexit87:                                      ; preds = %.preheader, %480
  %525 = phi ptr [ %498, %480 ], [ %511, %.preheader ]
  %526 = phi ptr [ %497, %480 ], [ %510, %.preheader ]
  %527 = icmp ult ptr %526, %477
  br i1 %527, label %528, label %535

528:                                              ; preds = %.loopexit87
  %529 = load i32, ptr %525, align 1, !tbaa !25
  %530 = load i32, ptr %526, align 1, !tbaa !25
  %531 = icmp eq i32 %529, %530
  br i1 %531, label %532, label %535

532:                                              ; preds = %528
  %533 = getelementptr inbounds nuw i8, ptr %526, i64 4
  %534 = getelementptr inbounds nuw i8, ptr %525, i64 4
  br label %535

535:                                              ; preds = %532, %528, %.loopexit87
  %536 = phi ptr [ %534, %532 ], [ %525, %528 ], [ %525, %.loopexit87 ]
  %537 = phi ptr [ %533, %532 ], [ %526, %528 ], [ %526, %.loopexit87 ]
  %538 = icmp ult ptr %537, %478
  br i1 %538, label %539, label %546

539:                                              ; preds = %535
  %540 = load i16, ptr %536, align 1, !tbaa !115
  %541 = load i16, ptr %537, align 1, !tbaa !115
  %542 = icmp eq i16 %540, %541
  br i1 %542, label %543, label %546

543:                                              ; preds = %539
  %544 = getelementptr inbounds nuw i8, ptr %537, i64 2
  %545 = getelementptr inbounds nuw i8, ptr %536, i64 2
  br label %546

546:                                              ; preds = %543, %539, %535
  %547 = phi ptr [ %545, %543 ], [ %536, %539 ], [ %536, %535 ]
  %548 = phi ptr [ %544, %543 ], [ %537, %539 ], [ %537, %535 ]
  %549 = icmp ult ptr %548, %4
  br i1 %549, label %550, label %556

550:                                              ; preds = %546
  %551 = load i8, ptr %547, align 1, !tbaa !42
  %552 = load i8, ptr %548, align 1, !tbaa !42
  %553 = icmp eq i8 %551, %552
  %554 = zext i1 %553 to i64
  %555 = getelementptr inbounds nuw i8, ptr %548, i64 %554
  br label %556

556:                                              ; preds = %550, %546
  %557 = phi ptr [ %548, %546 ], [ %555, %550 ]
  %558 = ptrtoint ptr %557 to i64
  %559 = ptrtoint ptr %497 to i64
  %560 = sub i64 %558, %559
  br label %561

561:                                              ; preds = %556, %517, %504
  %562 = phi i64 [ %560, %556 ], [ %507, %504 ], [ %524, %517 ]
  %563 = add i64 %562, %494
  %564 = icmp ugt i64 %563, %489
  br i1 %564, label %565, label %582

565:                                              ; preds = %561
  %566 = sub i32 %486, %481
  %567 = zext i32 %566 to i64
  %568 = icmp ugt i64 %563, %567
  %569 = trunc i64 %563 to i32
  %570 = add i32 %481, %569
  %571 = select i1 %568, i32 %570, i32 %486
  %572 = sub i32 %479, %481
  %573 = zext i32 %487 to i64
  %574 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %573
  store i32 %572, ptr %574, align 4, !tbaa !46
  %575 = getelementptr inbounds nuw i8, ptr %574, i64 4
  store i32 %569, ptr %575, align 4, !tbaa !44
  %576 = add i32 %487, 1
  %577 = icmp ugt i64 %563, 4096
  %578 = getelementptr inbounds nuw i8, ptr %3, i64 %563
  %579 = icmp eq ptr %578, %4
  %580 = or i1 %577, %579
  br i1 %580, label %581, label %582

581:                                              ; preds = %565
  store i32 0, ptr %485, align 4, !tbaa !25
  store i32 0, ptr %484, align 4, !tbaa !25
  br label %.loopexit

582:                                              ; preds = %565, %561
  %583 = phi i64 [ %563, %565 ], [ %489, %561 ]
  %584 = phi i32 [ %576, %565 ], [ %487, %561 ]
  %585 = phi i32 [ %571, %565 ], [ %486, %561 ]
  %586 = getelementptr inbounds nuw i8, ptr %496, i64 %563
  %587 = load i8, ptr %586, align 1, !tbaa !42
  %588 = getelementptr inbounds nuw i8, ptr %3, i64 %563
  %589 = load i8, ptr %588, align 1, !tbaa !42
  %590 = icmp ult i8 %587, %589
  %591 = icmp ugt i32 %481, %63
  br i1 %590, label %592, label %595

592:                                              ; preds = %582
  store i32 %481, ptr %484, align 4, !tbaa !25
  br i1 %591, label %593, label %607

593:                                              ; preds = %592
  %594 = getelementptr inbounds nuw i8, ptr %493, i64 4
  br label %596

595:                                              ; preds = %582
  store i32 %481, ptr %485, align 4, !tbaa !25
  br i1 %591, label %596, label %607

596:                                              ; preds = %595, %593
  %597 = phi ptr [ %485, %593 ], [ %493, %595 ]
  %598 = phi ptr [ %594, %593 ], [ %484, %595 ]
  %599 = phi i64 [ %483, %593 ], [ %563, %595 ]
  %600 = phi i64 [ %563, %593 ], [ %482, %595 ]
  %601 = phi ptr [ %594, %593 ], [ %493, %595 ]
  %602 = load i32, ptr %601, align 4, !tbaa !25
  %603 = add i32 %488, -1
  %604 = icmp ne i32 %603, 0
  %605 = icmp uge i32 %602, %76
  %606 = select i1 %604, i1 %605, i1 false
  br i1 %606, label %480, label %607, !llvm.loop !139

607:                                              ; preds = %596, %595, %592
  %608 = phi i32 [ %603, %596 ], [ %488, %592 ], [ %488, %595 ]
  %609 = phi ptr [ %597, %596 ], [ %485, %592 ], [ %9, %595 ]
  %610 = phi ptr [ %598, %596 ], [ %9, %592 ], [ %484, %595 ]
  store i32 0, ptr %609, align 4, !tbaa !25
  store i32 0, ptr %610, align 4, !tbaa !25
  %611 = icmp eq i32 %608, 0
  br i1 %611, label %.loopexit, label %612

612:                                              ; preds = %607, %474
  %613 = phi i32 [ %82, %474 ], [ %585, %607 ]
  %614 = phi i32 [ %472, %474 ], [ %584, %607 ]
  %615 = phi i64 [ %471, %474 ], [ %583, %607 ]
  %616 = phi i32 [ %85, %474 ], [ %608, %607 ]
  %617 = load i32, ptr %3, align 1, !tbaa !25
  %618 = mul i32 %617, -1640531535
  %619 = sub i32 32, %99
  %620 = lshr i32 %618, %619
  %621 = zext i32 %620 to i64
  %622 = getelementptr inbounds nuw i8, ptr %87, i64 112
  %623 = load ptr, ptr %622, align 8, !tbaa !107
  %624 = getelementptr inbounds nuw [4 x i8], ptr %623, i64 %621
  %625 = getelementptr inbounds nuw i8, ptr %87, i64 128
  %626 = load ptr, ptr %625, align 8, !tbaa !109
  %627 = load i32, ptr %624, align 4, !tbaa !25
  %628 = icmp ugt i32 %627, %96
  br i1 %628, label %629, label %.loopexit

629:                                              ; preds = %612
  %630 = and i64 %93, 4294967295
  %631 = zext i32 %97 to i64
  %632 = getelementptr inbounds nuw i8, ptr %36, i64 %631
  %633 = add i32 %35, 3
  br label %634

634:                                              ; preds = %680, %629
  %635 = phi i32 [ %627, %629 ], [ %691, %680 ]
  %636 = phi i64 [ 0, %629 ], [ %687, %680 ]
  %637 = phi i64 [ 0, %629 ], [ %686, %680 ]
  %638 = phi i32 [ %613, %629 ], [ %678, %680 ]
  %639 = phi i32 [ %614, %629 ], [ %677, %680 ]
  %640 = phi i32 [ %616, %629 ], [ %690, %680 ]
  %641 = phi i64 [ %615, %629 ], [ %676, %680 ]
  %642 = and i32 %635, %104
  %643 = shl nuw i32 %642, 1
  %644 = zext i32 %643 to i64
  %645 = getelementptr inbounds nuw [4 x i8], ptr %626, i64 %644
  %646 = tail call i64 @llvm.umin.i64(i64 %636, i64 %637)
  %647 = zext i32 %635 to i64
  %648 = getelementptr inbounds nuw i8, ptr %89, i64 %647
  %649 = getelementptr inbounds nuw i8, ptr %3, i64 %646
  %650 = getelementptr inbounds nuw i8, ptr %648, i64 %646
  %651 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %649, ptr noundef nonnull %650, ptr noundef %4, ptr noundef %90, ptr noundef %62)
  %652 = add i64 %651, %646
  %653 = add i64 %652, %647
  %654 = icmp ult i64 %653, %630
  %655 = getelementptr inbounds nuw i8, ptr %632, i64 %647
  %656 = select i1 %654, ptr %648, ptr %655
  %657 = icmp ugt i64 %652, %641
  br i1 %657, label %658, label %675

658:                                              ; preds = %634
  %659 = add i32 %635, %97
  %660 = sub i32 %638, %659
  %661 = zext i32 %660 to i64
  %662 = icmp ugt i64 %652, %661
  %663 = trunc i64 %652 to i32
  %664 = add i32 %659, %663
  %665 = select i1 %662, i32 %664, i32 %638
  %666 = sub i32 %633, %659
  %667 = zext i32 %639 to i64
  %668 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %667
  store i32 %666, ptr %668, align 4, !tbaa !46
  %669 = getelementptr inbounds nuw i8, ptr %668, i64 4
  store i32 %663, ptr %669, align 4, !tbaa !44
  %670 = add i32 %639, 1
  %671 = icmp ugt i64 %652, 4096
  %672 = getelementptr inbounds nuw i8, ptr %3, i64 %652
  %673 = icmp eq ptr %672, %4
  %674 = or i1 %671, %673
  br i1 %674, label %.loopexit, label %675

675:                                              ; preds = %658, %634
  %676 = phi i64 [ %652, %658 ], [ %641, %634 ]
  %677 = phi i32 [ %670, %658 ], [ %639, %634 ]
  %678 = phi i32 [ %665, %658 ], [ %638, %634 ]
  %679 = icmp ugt i32 %635, %108
  br i1 %679, label %680, label %.loopexit

680:                                              ; preds = %675
  %681 = getelementptr inbounds nuw i8, ptr %656, i64 %652
  %682 = load i8, ptr %681, align 1, !tbaa !42
  %683 = getelementptr inbounds nuw i8, ptr %3, i64 %652
  %684 = load i8, ptr %683, align 1, !tbaa !42
  %685 = icmp ult i8 %682, %684
  %686 = select i1 %685, i64 %637, i64 %652
  %687 = select i1 %685, i64 %652, i64 %636
  %688 = select i1 %685, i64 4, i64 0
  %689 = getelementptr inbounds nuw i8, ptr %645, i64 %688
  %690 = add i32 %640, -1
  %691 = load i32, ptr %689, align 4, !tbaa !25
  %692 = icmp ne i32 %690, 0
  %693 = icmp ugt i32 %691, %96
  %694 = select i1 %692, i1 %693, i1 false
  br i1 %694, label %634, label %.loopexit, !llvm.loop !145

.loopexit:                                        ; preds = %680, %675, %658, %612, %607, %581
  %695 = phi i32 [ %584, %607 ], [ %576, %581 ], [ %614, %612 ], [ %677, %680 ], [ %670, %658 ], [ %677, %675 ]
  %696 = phi i32 [ %585, %607 ], [ %571, %581 ], [ %613, %612 ], [ %678, %680 ], [ %665, %658 ], [ %678, %675 ]
  %697 = add i32 %696, -8
  store i32 %697, ptr %12, align 4, !tbaa !19
  br label %698

698:                                              ; preds = %.loopexit, %461, %342, %225
  %699 = phi i32 [ %695, %.loopexit ], [ 1, %225 ], [ %346, %342 ], [ %465, %461 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %700

700:                                              ; preds = %698, %8
  %701 = phi i32 [ %699, %698 ], [ 0, %8 ]
  ret i32 %701
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i32 @ZSTD_btGetAllMatches_dictMatchState_5(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %699, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %.preheader94, label %34

.preheader94:                                     ; preds = %17, %.preheader94
  %23 = phi i32 [ %27, %.preheader94 ], [ %13, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 %24
  %26 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %25, ptr noundef %4, i32 noundef %21, i32 noundef 5, i32 noundef 0)
  %27 = add i32 %26, %23
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %.preheader94, label %29, !llvm.loop !20

29:                                               ; preds = %.preheader94
  %30 = load ptr, ptr %10, align 8, !tbaa !18
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %18, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %21, %17 ]
  %36 = phi ptr [ %30, %29 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %39 = load i32, ptr %38, align 4, !tbaa !24
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 4095)
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %42 = load i32, ptr %41, align 4, !tbaa !108
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %44 = load ptr, ptr %43, align 8, !tbaa !107
  %45 = load i64, ptr %3, align 1
  %46 = mul i64 %45, -3523014627271114752
  %47 = sub i32 64, %42
  %48 = zext nneg i32 %47 to i64
  %49 = lshr i64 %46, %48
  %50 = getelementptr inbounds nuw [4 x i8], ptr %44, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !25
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %55 = load i32, ptr %54, align 4, !tbaa !110
  %56 = add i32 %55, -1
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %60 = load i32, ptr %59, align 8, !tbaa !22
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw i8, ptr %36, i64 %61
  %63 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %58)
  %64 = load i32, ptr %37, align 8, !tbaa !112
  %65 = getelementptr i8, ptr %1, i64 28
  %66 = load i32, ptr %65, align 4, !tbaa !106
  %67 = getelementptr i8, ptr %1, i64 40
  %68 = load i32, ptr %67, align 8, !tbaa !113
  %69 = shl nuw i32 1, %64
  %70 = sub i32 %35, %66
  %71 = icmp ugt i32 %70, %69
  %72 = sub i32 %35, %69
  %73 = icmp eq i32 %68, 0
  %74 = select i1 %73, i1 %71, i1 false
  %75 = select i1 %74, i32 %72, i32 %66
  %76 = tail call i32 @llvm.umax.i32(i32 %75, i32 1)
  %77 = and i32 %35, %58
  %78 = shl nuw i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 4
  %82 = add i32 %35, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %84 = load i32, ptr %83, align 4, !tbaa !114
  %85 = shl nuw i32 1, %84
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %87 = load ptr, ptr %86, align 8, !tbaa !142
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %89 = load ptr, ptr %88, align 8, !tbaa !18
  %90 = load ptr, ptr %87, align 8, !tbaa !143
  %91 = ptrtoint ptr %90 to i64
  %92 = ptrtoint ptr %89 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds nuw i8, ptr %87, i64 28
  %96 = load i32, ptr %95, align 4, !tbaa !106
  %97 = sub i32 %75, %94
  %98 = getelementptr inbounds nuw i8, ptr %87, i64 264
  %99 = load i32, ptr %98, align 8, !tbaa !108
  %100 = getelementptr inbounds nuw i8, ptr %87, i64 260
  %101 = load i32, ptr %100, align 4, !tbaa !110
  %102 = add i32 %101, -1
  %103 = shl nsw i32 -1, %102
  %104 = xor i32 %103, -1
  %105 = sub i32 %94, %96
  %106 = icmp ugt i32 %105, %104
  %107 = sub i32 %94, %104
  %108 = select i1 %106, i32 %107, i32 %96
  %109 = add i32 %7, -1
  %110 = zext i32 %109 to i64
  %111 = icmp ult i32 %6, -3
  %112 = trunc i64 %45 to i32
  br i1 %111, label %113, label %471

113:                                              ; preds = %34
  %114 = sub i32 %35, %60
  %115 = zext i32 %97 to i64
  %116 = sub nsw i64 0, %115
  %117 = getelementptr i8, ptr %89, i64 %116
  %118 = add i32 %96, %97
  %119 = sub i32 %35, %118
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
  %132 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %126
  %133 = load i32, ptr %132, align 4, !tbaa !25
  br label %134

134:                                              ; preds = %131, %128
  %135 = phi i32 [ %130, %128 ], [ %133, %131 ]
  %136 = sub i32 %35, %135
  %137 = add i32 %135, -1
  %138 = icmp ult i32 %137, %114
  br i1 %138, label %139, label %208

139:                                              ; preds = %134
  %140 = icmp uge i32 %136, %75
  %141 = zext i32 %135 to i64
  %142 = sub nsw i64 0, %141
  %143 = getelementptr inbounds i8, ptr %3, i64 %142
  %144 = load i32, ptr %143, align 1, !tbaa !25
  %145 = icmp eq i32 %144, %112
  %146 = and i1 %140, %145
  br i1 %146, label %147, label %233

147:                                              ; preds = %139
  %148 = getelementptr inbounds i8, ptr %120, i64 %142
  br i1 %122, label %149, label %.loopexit93

149:                                              ; preds = %147
  %150 = load i64, ptr %148, align 1, !tbaa !30
  %151 = load i64, ptr %120, align 1, !tbaa !30
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %.preheader92, label %153

153:                                              ; preds = %149
  %154 = xor i64 %151, %150
  %155 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %154, i1 true)
  %156 = lshr i64 %155, 3
  br label %221

.preheader92:                                     ; preds = %149, %162
  %157 = phi ptr [ %160, %162 ], [ %148, %149 ]
  %158 = phi ptr [ %159, %162 ], [ %120, %149 ]
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 8
  %160 = getelementptr inbounds nuw i8, ptr %157, i64 8
  %161 = icmp ult ptr %159, %121
  br i1 %161, label %162, label %.loopexit93

162:                                              ; preds = %.preheader92
  %163 = load i64, ptr %160, align 1, !tbaa !30
  %164 = load i64, ptr %159, align 1, !tbaa !30
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %.preheader92, label %166

166:                                              ; preds = %162
  %167 = xor i64 %164, %163
  %168 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %167, i1 true)
  %169 = lshr i64 %168, 3
  %170 = getelementptr inbounds nuw i8, ptr %159, i64 %169
  %171 = ptrtoint ptr %170 to i64
  %172 = sub i64 %171, %125
  br label %221

.loopexit93:                                      ; preds = %.preheader92, %147
  %173 = phi ptr [ %148, %147 ], [ %160, %.preheader92 ]
  %174 = phi ptr [ %120, %147 ], [ %159, %.preheader92 ]
  %175 = icmp ult ptr %174, %123
  br i1 %175, label %176, label %183

176:                                              ; preds = %.loopexit93
  %177 = load i32, ptr %173, align 1, !tbaa !25
  %178 = load i32, ptr %174, align 1, !tbaa !25
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = getelementptr inbounds nuw i8, ptr %174, i64 4
  %182 = getelementptr inbounds nuw i8, ptr %173, i64 4
  br label %183

183:                                              ; preds = %180, %176, %.loopexit93
  %184 = phi ptr [ %182, %180 ], [ %173, %176 ], [ %173, %.loopexit93 ]
  %185 = phi ptr [ %181, %180 ], [ %174, %176 ], [ %174, %.loopexit93 ]
  %186 = icmp ult ptr %185, %124
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = load i16, ptr %184, align 1, !tbaa !115
  %189 = load i16, ptr %185, align 1, !tbaa !115
  %190 = icmp eq i16 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = getelementptr inbounds nuw i8, ptr %185, i64 2
  %193 = getelementptr inbounds nuw i8, ptr %184, i64 2
  br label %194

194:                                              ; preds = %191, %187, %183
  %195 = phi ptr [ %193, %191 ], [ %184, %187 ], [ %184, %183 ]
  %196 = phi ptr [ %192, %191 ], [ %185, %187 ], [ %185, %183 ]
  %197 = icmp ult ptr %196, %4
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load i8, ptr %195, align 1, !tbaa !42
  %200 = load i8, ptr %196, align 1, !tbaa !42
  %201 = icmp eq i8 %199, %200
  %202 = zext i1 %201 to i64
  %203 = getelementptr inbounds nuw i8, ptr %196, i64 %202
  br label %204

204:                                              ; preds = %198, %194
  %205 = phi ptr [ %196, %194 ], [ %203, %198 ]
  %206 = ptrtoint ptr %205 to i64
  %207 = sub i64 %206, %125
  br label %221

208:                                              ; preds = %134
  %209 = zext i32 %136 to i64
  %210 = getelementptr i8, ptr %117, i64 %209
  %211 = icmp uge i32 %137, %119
  %212 = sub i32 %136, %60
  %213 = icmp ugt i32 %212, -4
  %214 = select i1 %211, i1 true, i1 %213
  br i1 %214, label %233, label %215

215:                                              ; preds = %208
  %216 = load i32, ptr %210, align 1, !tbaa !25
  %217 = icmp eq i32 %216, %112
  br i1 %217, label %218, label %233

218:                                              ; preds = %215
  %219 = getelementptr inbounds nuw i8, ptr %210, i64 4
  %220 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %120, ptr noundef nonnull %219, ptr noundef %4, ptr noundef %90, ptr noundef %62)
  br label %221

221:                                              ; preds = %218, %204, %166, %153
  %222 = phi i64 [ %220, %218 ], [ %207, %204 ], [ %156, %153 ], [ %172, %166 ]
  %223 = trunc i64 %222 to i32
  %224 = add i32 %223, 4
  %225 = icmp ult i32 %109, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %221
  %227 = zext i32 %224 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %224, ptr %228, align 4, !tbaa !44
  %229 = icmp ule i32 %224, %40
  %230 = getelementptr inbounds nuw i8, ptr %3, i64 %227
  %231 = icmp ne ptr %230, %4
  %232 = and i1 %229, %231
  br i1 %232, label %233, label %697

233:                                              ; preds = %226, %221, %215, %208, %139
  %234 = phi i32 [ 1, %226 ], [ 0, %221 ], [ 0, %139 ], [ 0, %215 ], [ 0, %208 ]
  %235 = phi i64 [ %227, %226 ], [ %110, %221 ], [ %110, %139 ], [ %110, %215 ], [ %110, %208 ]
  %236 = add nuw nsw i64 %126, 1
  %237 = icmp eq i64 %236, 3
  br i1 %237, label %241, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %236
  %240 = load i32, ptr %239, align 4, !tbaa !25
  br label %244

241:                                              ; preds = %233
  %242 = load i32, ptr %5, align 4, !tbaa !25
  %243 = add i32 %242, -1
  br label %244

244:                                              ; preds = %241, %238
  %245 = phi i32 [ %243, %241 ], [ %240, %238 ]
  %246 = sub i32 %35, %245
  %247 = add i32 %245, -1
  %248 = icmp ult i32 %247, %114
  br i1 %248, label %265, label %249

249:                                              ; preds = %244
  %250 = zext i32 %246 to i64
  %251 = getelementptr i8, ptr %117, i64 %250
  %252 = icmp uge i32 %247, %119
  %253 = sub i32 %246, %60
  %254 = icmp ugt i32 %253, -4
  %255 = select i1 %252, i1 true, i1 %254
  br i1 %255, label %339, label %256

256:                                              ; preds = %249
  %257 = load i32, ptr %3, align 1, !tbaa !25
  %258 = load i32, ptr %251, align 1, !tbaa !25
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %339

260:                                              ; preds = %256
  %261 = getelementptr inbounds nuw i8, ptr %251, i64 4
  %262 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %120, ptr noundef nonnull %261, ptr noundef %4, ptr noundef %90, ptr noundef %62)
  %263 = trunc i64 %262 to i32
  %264 = add i32 %263, 4
  br label %339

265:                                              ; preds = %244
  %266 = icmp uge i32 %246, %75
  %267 = load i32, ptr %3, align 1, !tbaa !25
  %268 = zext i32 %245 to i64
  %269 = sub nsw i64 0, %268
  %270 = getelementptr inbounds i8, ptr %3, i64 %269
  %271 = load i32, ptr %270, align 1, !tbaa !25
  %272 = icmp eq i32 %267, %271
  %273 = and i1 %266, %272
  br i1 %273, label %274, label %339

274:                                              ; preds = %265
  %275 = getelementptr inbounds i8, ptr %120, i64 %269
  br i1 %122, label %276, label %.loopexit91

276:                                              ; preds = %274
  %277 = load i64, ptr %275, align 1, !tbaa !30
  %278 = load i64, ptr %120, align 1, !tbaa !30
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %.preheader90, label %280

280:                                              ; preds = %276
  %281 = xor i64 %278, %277
  %282 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %281, i1 true)
  %283 = lshr i64 %282, 3
  br label %335

.preheader90:                                     ; preds = %276, %324
  %284 = phi ptr [ %287, %324 ], [ %275, %276 ]
  %285 = phi ptr [ %286, %324 ], [ %120, %276 ]
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 8
  %287 = getelementptr inbounds nuw i8, ptr %284, i64 8
  %288 = icmp ult ptr %286, %121
  br i1 %288, label %324, label %.loopexit91

.loopexit91:                                      ; preds = %.preheader90, %274
  %289 = phi ptr [ %275, %274 ], [ %287, %.preheader90 ]
  %290 = phi ptr [ %120, %274 ], [ %286, %.preheader90 ]
  %291 = icmp ult ptr %290, %123
  br i1 %291, label %292, label %299

292:                                              ; preds = %.loopexit91
  %293 = load i32, ptr %289, align 1, !tbaa !25
  %294 = load i32, ptr %290, align 1, !tbaa !25
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %292
  %297 = getelementptr inbounds nuw i8, ptr %290, i64 4
  %298 = getelementptr inbounds nuw i8, ptr %289, i64 4
  br label %299

299:                                              ; preds = %296, %292, %.loopexit91
  %300 = phi ptr [ %298, %296 ], [ %289, %292 ], [ %289, %.loopexit91 ]
  %301 = phi ptr [ %297, %296 ], [ %290, %292 ], [ %290, %.loopexit91 ]
  %302 = icmp ult ptr %301, %124
  br i1 %302, label %303, label %310

303:                                              ; preds = %299
  %304 = load i16, ptr %300, align 1, !tbaa !115
  %305 = load i16, ptr %301, align 1, !tbaa !115
  %306 = icmp eq i16 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = getelementptr inbounds nuw i8, ptr %301, i64 2
  %309 = getelementptr inbounds nuw i8, ptr %300, i64 2
  br label %310

310:                                              ; preds = %307, %303, %299
  %311 = phi ptr [ %309, %307 ], [ %300, %303 ], [ %300, %299 ]
  %312 = phi ptr [ %308, %307 ], [ %301, %303 ], [ %301, %299 ]
  %313 = icmp ult ptr %312, %4
  br i1 %313, label %314, label %320

314:                                              ; preds = %310
  %315 = load i8, ptr %311, align 1, !tbaa !42
  %316 = load i8, ptr %312, align 1, !tbaa !42
  %317 = icmp eq i8 %315, %316
  %318 = zext i1 %317 to i64
  %319 = getelementptr inbounds nuw i8, ptr %312, i64 %318
  br label %320

320:                                              ; preds = %314, %310
  %321 = phi ptr [ %312, %310 ], [ %319, %314 ]
  %322 = ptrtoint ptr %321 to i64
  %323 = sub i64 %322, %125
  br label %335

324:                                              ; preds = %.preheader90
  %325 = load i64, ptr %287, align 1, !tbaa !30
  %326 = load i64, ptr %286, align 1, !tbaa !30
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %.preheader90, label %328

328:                                              ; preds = %324
  %329 = xor i64 %326, %325
  %330 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %329, i1 true)
  %331 = lshr i64 %330, 3
  %332 = getelementptr inbounds nuw i8, ptr %286, i64 %331
  %333 = ptrtoint ptr %332 to i64
  %334 = sub i64 %333, %125
  br label %335

335:                                              ; preds = %328, %320, %280
  %336 = phi i64 [ %323, %320 ], [ %283, %280 ], [ %334, %328 ]
  %337 = trunc i64 %336 to i32
  %338 = add i32 %337, 4
  br label %339

339:                                              ; preds = %335, %265, %260, %256, %249
  %340 = phi i32 [ %338, %335 ], [ 0, %265 ], [ %264, %260 ], [ 0, %256 ], [ 0, %249 ]
  %341 = zext i32 %340 to i64
  %342 = icmp samesign ult i64 %235, %341
  br i1 %342, label %343, label %352

343:                                              ; preds = %339
  %344 = zext nneg i32 %234 to i64
  %345 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %344
  store i32 2, ptr %345, align 4, !tbaa !46
  %346 = getelementptr inbounds nuw i8, ptr %345, i64 4
  store i32 %340, ptr %346, align 4, !tbaa !44
  %347 = add nuw nsw i32 %234, 1
  %348 = icmp ule i32 %340, %40
  %349 = getelementptr inbounds nuw i8, ptr %3, i64 %341
  %350 = icmp ne ptr %349, %4
  %351 = and i1 %348, %350
  br i1 %351, label %352, label %697

352:                                              ; preds = %343, %339
  %353 = phi i32 [ %347, %343 ], [ %234, %339 ]
  %354 = phi i64 [ %341, %343 ], [ %235, %339 ]
  %355 = add nuw nsw i64 %126, 2
  %356 = icmp eq i64 %355, 3
  br i1 %356, label %360, label %357

357:                                              ; preds = %352
  %358 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %355
  %359 = load i32, ptr %358, align 4, !tbaa !25
  br label %363

360:                                              ; preds = %352
  %361 = load i32, ptr %5, align 4, !tbaa !25
  %362 = add i32 %361, -1
  br label %363

363:                                              ; preds = %360, %357
  %364 = phi i32 [ %362, %360 ], [ %359, %357 ]
  %365 = sub i32 %35, %364
  %366 = add i32 %364, -1
  %367 = icmp ult i32 %366, %114
  br i1 %367, label %384, label %368

368:                                              ; preds = %363
  %369 = zext i32 %365 to i64
  %370 = getelementptr i8, ptr %117, i64 %369
  %371 = icmp uge i32 %366, %119
  %372 = sub i32 %365, %60
  %373 = icmp ugt i32 %372, -4
  %374 = select i1 %371, i1 true, i1 %373
  br i1 %374, label %458, label %375

375:                                              ; preds = %368
  %376 = load i32, ptr %3, align 1, !tbaa !25
  %377 = load i32, ptr %370, align 1, !tbaa !25
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %379, label %458

379:                                              ; preds = %375
  %380 = getelementptr inbounds nuw i8, ptr %370, i64 4
  %381 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %120, ptr noundef nonnull %380, ptr noundef %4, ptr noundef %90, ptr noundef %62)
  %382 = trunc i64 %381 to i32
  %383 = add i32 %382, 4
  br label %458

384:                                              ; preds = %363
  %385 = icmp uge i32 %365, %75
  %386 = load i32, ptr %3, align 1, !tbaa !25
  %387 = zext i32 %364 to i64
  %388 = sub nsw i64 0, %387
  %389 = getelementptr inbounds i8, ptr %3, i64 %388
  %390 = load i32, ptr %389, align 1, !tbaa !25
  %391 = icmp eq i32 %386, %390
  %392 = and i1 %385, %391
  br i1 %392, label %393, label %458

393:                                              ; preds = %384
  %394 = getelementptr inbounds i8, ptr %120, i64 %388
  br i1 %122, label %395, label %.loopexit89

395:                                              ; preds = %393
  %396 = load i64, ptr %394, align 1, !tbaa !30
  %397 = load i64, ptr %120, align 1, !tbaa !30
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %.preheader88, label %399

399:                                              ; preds = %395
  %400 = xor i64 %397, %396
  %401 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %400, i1 true)
  %402 = lshr i64 %401, 3
  br label %454

.preheader88:                                     ; preds = %395, %443
  %403 = phi ptr [ %406, %443 ], [ %394, %395 ]
  %404 = phi ptr [ %405, %443 ], [ %120, %395 ]
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 8
  %406 = getelementptr inbounds nuw i8, ptr %403, i64 8
  %407 = icmp ult ptr %405, %121
  br i1 %407, label %443, label %.loopexit89

.loopexit89:                                      ; preds = %.preheader88, %393
  %408 = phi ptr [ %394, %393 ], [ %406, %.preheader88 ]
  %409 = phi ptr [ %120, %393 ], [ %405, %.preheader88 ]
  %410 = icmp ult ptr %409, %123
  br i1 %410, label %411, label %418

411:                                              ; preds = %.loopexit89
  %412 = load i32, ptr %408, align 1, !tbaa !25
  %413 = load i32, ptr %409, align 1, !tbaa !25
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %411
  %416 = getelementptr inbounds nuw i8, ptr %409, i64 4
  %417 = getelementptr inbounds nuw i8, ptr %408, i64 4
  br label %418

418:                                              ; preds = %415, %411, %.loopexit89
  %419 = phi ptr [ %417, %415 ], [ %408, %411 ], [ %408, %.loopexit89 ]
  %420 = phi ptr [ %416, %415 ], [ %409, %411 ], [ %409, %.loopexit89 ]
  %421 = icmp ult ptr %420, %124
  br i1 %421, label %422, label %429

422:                                              ; preds = %418
  %423 = load i16, ptr %419, align 1, !tbaa !115
  %424 = load i16, ptr %420, align 1, !tbaa !115
  %425 = icmp eq i16 %423, %424
  br i1 %425, label %426, label %429

426:                                              ; preds = %422
  %427 = getelementptr inbounds nuw i8, ptr %420, i64 2
  %428 = getelementptr inbounds nuw i8, ptr %419, i64 2
  br label %429

429:                                              ; preds = %426, %422, %418
  %430 = phi ptr [ %428, %426 ], [ %419, %422 ], [ %419, %418 ]
  %431 = phi ptr [ %427, %426 ], [ %420, %422 ], [ %420, %418 ]
  %432 = icmp ult ptr %431, %4
  br i1 %432, label %433, label %439

433:                                              ; preds = %429
  %434 = load i8, ptr %430, align 1, !tbaa !42
  %435 = load i8, ptr %431, align 1, !tbaa !42
  %436 = icmp eq i8 %434, %435
  %437 = zext i1 %436 to i64
  %438 = getelementptr inbounds nuw i8, ptr %431, i64 %437
  br label %439

439:                                              ; preds = %433, %429
  %440 = phi ptr [ %431, %429 ], [ %438, %433 ]
  %441 = ptrtoint ptr %440 to i64
  %442 = sub i64 %441, %125
  br label %454

443:                                              ; preds = %.preheader88
  %444 = load i64, ptr %406, align 1, !tbaa !30
  %445 = load i64, ptr %405, align 1, !tbaa !30
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %.preheader88, label %447

447:                                              ; preds = %443
  %448 = xor i64 %445, %444
  %449 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %448, i1 true)
  %450 = lshr i64 %449, 3
  %451 = getelementptr inbounds nuw i8, ptr %405, i64 %450
  %452 = ptrtoint ptr %451 to i64
  %453 = sub i64 %452, %125
  br label %454

454:                                              ; preds = %447, %439, %399
  %455 = phi i64 [ %442, %439 ], [ %402, %399 ], [ %453, %447 ]
  %456 = trunc i64 %455 to i32
  %457 = add i32 %456, 4
  br label %458

458:                                              ; preds = %454, %384, %379, %375, %368
  %459 = phi i32 [ %457, %454 ], [ 0, %384 ], [ %383, %379 ], [ 0, %375 ], [ 0, %368 ]
  %460 = zext i32 %459 to i64
  %461 = icmp samesign ult i64 %354, %460
  br i1 %461, label %462, label %471

462:                                              ; preds = %458
  %463 = zext nneg i32 %353 to i64
  %464 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %463
  store i32 3, ptr %464, align 4, !tbaa !46
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 4
  store i32 %459, ptr %465, align 4, !tbaa !44
  %466 = add nuw nsw i32 %353, 1
  %467 = icmp ule i32 %459, %40
  %468 = getelementptr inbounds nuw i8, ptr %3, i64 %460
  %469 = icmp ne ptr %468, %4
  %470 = and i1 %467, %469
  br i1 %470, label %471, label %697

471:                                              ; preds = %462, %458, %34
  %472 = phi i64 [ %110, %34 ], [ %460, %462 ], [ %354, %458 ]
  %473 = phi i32 [ 0, %34 ], [ %466, %462 ], [ %353, %458 ]
  store i32 %35, ptr %50, align 4, !tbaa !25
  %474 = icmp ult i32 %51, %76
  br i1 %474, label %475, label %476

475:                                              ; preds = %471
  store i32 0, ptr %81, align 4, !tbaa !25
  store i32 0, ptr %80, align 4, !tbaa !25
  br label %613

476:                                              ; preds = %471
  %477 = getelementptr inbounds i8, ptr %4, i64 -7
  %478 = getelementptr inbounds i8, ptr %4, i64 -3
  %479 = getelementptr inbounds i8, ptr %4, i64 -1
  %480 = add i32 %35, 3
  br label %481

481:                                              ; preds = %597, %476
  %482 = phi i32 [ %51, %476 ], [ %603, %597 ]
  %483 = phi i64 [ 0, %476 ], [ %601, %597 ]
  %484 = phi i64 [ 0, %476 ], [ %600, %597 ]
  %485 = phi ptr [ %80, %476 ], [ %599, %597 ]
  %486 = phi ptr [ %81, %476 ], [ %598, %597 ]
  %487 = phi i32 [ %82, %476 ], [ %586, %597 ]
  %488 = phi i32 [ %473, %476 ], [ %585, %597 ]
  %489 = phi i32 [ %85, %476 ], [ %604, %597 ]
  %490 = phi i64 [ %472, %476 ], [ %584, %597 ]
  %491 = and i32 %482, %58
  %492 = shl nuw i32 %491, 1
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %493
  %495 = tail call i64 @llvm.umin.i64(i64 %483, i64 %484)
  %496 = zext i32 %482 to i64
  %497 = getelementptr inbounds nuw i8, ptr %36, i64 %496
  %498 = getelementptr inbounds nuw i8, ptr %3, i64 %495
  %499 = getelementptr inbounds nuw i8, ptr %497, i64 %495
  %500 = icmp ult ptr %498, %477
  br i1 %500, label %501, label %.loopexit87

501:                                              ; preds = %481
  %502 = load i64, ptr %499, align 1, !tbaa !30
  %503 = load i64, ptr %498, align 1, !tbaa !30
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %.preheader, label %505

505:                                              ; preds = %501
  %506 = xor i64 %503, %502
  %507 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %506, i1 true)
  %508 = lshr i64 %507, 3
  br label %562

.preheader:                                       ; preds = %501, %514
  %509 = phi ptr [ %512, %514 ], [ %499, %501 ]
  %510 = phi ptr [ %511, %514 ], [ %498, %501 ]
  %511 = getelementptr inbounds nuw i8, ptr %510, i64 8
  %512 = getelementptr inbounds nuw i8, ptr %509, i64 8
  %513 = icmp ult ptr %511, %477
  br i1 %513, label %514, label %.loopexit87

514:                                              ; preds = %.preheader
  %515 = load i64, ptr %512, align 1, !tbaa !30
  %516 = load i64, ptr %511, align 1, !tbaa !30
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %.preheader, label %518

518:                                              ; preds = %514
  %519 = xor i64 %516, %515
  %520 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %519, i1 true)
  %521 = lshr i64 %520, 3
  %522 = getelementptr inbounds nuw i8, ptr %511, i64 %521
  %523 = ptrtoint ptr %522 to i64
  %524 = ptrtoint ptr %498 to i64
  %525 = sub i64 %523, %524
  br label %562

.loopexit87:                                      ; preds = %.preheader, %481
  %526 = phi ptr [ %499, %481 ], [ %512, %.preheader ]
  %527 = phi ptr [ %498, %481 ], [ %511, %.preheader ]
  %528 = icmp ult ptr %527, %478
  br i1 %528, label %529, label %536

529:                                              ; preds = %.loopexit87
  %530 = load i32, ptr %526, align 1, !tbaa !25
  %531 = load i32, ptr %527, align 1, !tbaa !25
  %532 = icmp eq i32 %530, %531
  br i1 %532, label %533, label %536

533:                                              ; preds = %529
  %534 = getelementptr inbounds nuw i8, ptr %527, i64 4
  %535 = getelementptr inbounds nuw i8, ptr %526, i64 4
  br label %536

536:                                              ; preds = %533, %529, %.loopexit87
  %537 = phi ptr [ %535, %533 ], [ %526, %529 ], [ %526, %.loopexit87 ]
  %538 = phi ptr [ %534, %533 ], [ %527, %529 ], [ %527, %.loopexit87 ]
  %539 = icmp ult ptr %538, %479
  br i1 %539, label %540, label %547

540:                                              ; preds = %536
  %541 = load i16, ptr %537, align 1, !tbaa !115
  %542 = load i16, ptr %538, align 1, !tbaa !115
  %543 = icmp eq i16 %541, %542
  br i1 %543, label %544, label %547

544:                                              ; preds = %540
  %545 = getelementptr inbounds nuw i8, ptr %538, i64 2
  %546 = getelementptr inbounds nuw i8, ptr %537, i64 2
  br label %547

547:                                              ; preds = %544, %540, %536
  %548 = phi ptr [ %546, %544 ], [ %537, %540 ], [ %537, %536 ]
  %549 = phi ptr [ %545, %544 ], [ %538, %540 ], [ %538, %536 ]
  %550 = icmp ult ptr %549, %4
  br i1 %550, label %551, label %557

551:                                              ; preds = %547
  %552 = load i8, ptr %548, align 1, !tbaa !42
  %553 = load i8, ptr %549, align 1, !tbaa !42
  %554 = icmp eq i8 %552, %553
  %555 = zext i1 %554 to i64
  %556 = getelementptr inbounds nuw i8, ptr %549, i64 %555
  br label %557

557:                                              ; preds = %551, %547
  %558 = phi ptr [ %549, %547 ], [ %556, %551 ]
  %559 = ptrtoint ptr %558 to i64
  %560 = ptrtoint ptr %498 to i64
  %561 = sub i64 %559, %560
  br label %562

562:                                              ; preds = %557, %518, %505
  %563 = phi i64 [ %561, %557 ], [ %508, %505 ], [ %525, %518 ]
  %564 = add i64 %563, %495
  %565 = icmp ugt i64 %564, %490
  br i1 %565, label %566, label %583

566:                                              ; preds = %562
  %567 = sub i32 %487, %482
  %568 = zext i32 %567 to i64
  %569 = icmp ugt i64 %564, %568
  %570 = trunc i64 %564 to i32
  %571 = add i32 %482, %570
  %572 = select i1 %569, i32 %571, i32 %487
  %573 = sub i32 %480, %482
  %574 = zext i32 %488 to i64
  %575 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %574
  store i32 %573, ptr %575, align 4, !tbaa !46
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 4
  store i32 %570, ptr %576, align 4, !tbaa !44
  %577 = add i32 %488, 1
  %578 = icmp ugt i64 %564, 4096
  %579 = getelementptr inbounds nuw i8, ptr %3, i64 %564
  %580 = icmp eq ptr %579, %4
  %581 = or i1 %578, %580
  br i1 %581, label %582, label %583

582:                                              ; preds = %566
  store i32 0, ptr %486, align 4, !tbaa !25
  store i32 0, ptr %485, align 4, !tbaa !25
  br label %.loopexit

583:                                              ; preds = %566, %562
  %584 = phi i64 [ %564, %566 ], [ %490, %562 ]
  %585 = phi i32 [ %577, %566 ], [ %488, %562 ]
  %586 = phi i32 [ %572, %566 ], [ %487, %562 ]
  %587 = getelementptr inbounds nuw i8, ptr %497, i64 %564
  %588 = load i8, ptr %587, align 1, !tbaa !42
  %589 = getelementptr inbounds nuw i8, ptr %3, i64 %564
  %590 = load i8, ptr %589, align 1, !tbaa !42
  %591 = icmp ult i8 %588, %590
  %592 = icmp ugt i32 %482, %63
  br i1 %591, label %593, label %596

593:                                              ; preds = %583
  store i32 %482, ptr %485, align 4, !tbaa !25
  br i1 %592, label %594, label %608

594:                                              ; preds = %593
  %595 = getelementptr inbounds nuw i8, ptr %494, i64 4
  br label %597

596:                                              ; preds = %583
  store i32 %482, ptr %486, align 4, !tbaa !25
  br i1 %592, label %597, label %608

597:                                              ; preds = %596, %594
  %598 = phi ptr [ %486, %594 ], [ %494, %596 ]
  %599 = phi ptr [ %595, %594 ], [ %485, %596 ]
  %600 = phi i64 [ %484, %594 ], [ %564, %596 ]
  %601 = phi i64 [ %564, %594 ], [ %483, %596 ]
  %602 = phi ptr [ %595, %594 ], [ %494, %596 ]
  %603 = load i32, ptr %602, align 4, !tbaa !25
  %604 = add i32 %489, -1
  %605 = icmp ne i32 %604, 0
  %606 = icmp uge i32 %603, %76
  %607 = select i1 %605, i1 %606, i1 false
  br i1 %607, label %481, label %608, !llvm.loop !139

608:                                              ; preds = %597, %596, %593
  %609 = phi i32 [ %604, %597 ], [ %489, %593 ], [ %489, %596 ]
  %610 = phi ptr [ %598, %597 ], [ %486, %593 ], [ %9, %596 ]
  %611 = phi ptr [ %599, %597 ], [ %9, %593 ], [ %485, %596 ]
  store i32 0, ptr %610, align 4, !tbaa !25
  store i32 0, ptr %611, align 4, !tbaa !25
  %612 = icmp eq i32 %609, 0
  br i1 %612, label %.loopexit, label %613

613:                                              ; preds = %608, %475
  %614 = phi i32 [ %82, %475 ], [ %586, %608 ]
  %615 = phi i32 [ %473, %475 ], [ %585, %608 ]
  %616 = phi i64 [ %472, %475 ], [ %584, %608 ]
  %617 = phi i32 [ %85, %475 ], [ %609, %608 ]
  %618 = sub i32 64, %99
  %619 = zext nneg i32 %618 to i64
  %620 = lshr i64 %46, %619
  %621 = getelementptr inbounds nuw i8, ptr %87, i64 112
  %622 = load ptr, ptr %621, align 8, !tbaa !107
  %623 = getelementptr inbounds nuw [4 x i8], ptr %622, i64 %620
  %624 = getelementptr inbounds nuw i8, ptr %87, i64 128
  %625 = load ptr, ptr %624, align 8, !tbaa !109
  %626 = load i32, ptr %623, align 4, !tbaa !25
  %627 = icmp ugt i32 %626, %96
  br i1 %627, label %628, label %.loopexit

628:                                              ; preds = %613
  %629 = and i64 %93, 4294967295
  %630 = zext i32 %97 to i64
  %631 = getelementptr inbounds nuw i8, ptr %36, i64 %630
  %632 = add i32 %35, 3
  br label %633

633:                                              ; preds = %679, %628
  %634 = phi i32 [ %626, %628 ], [ %690, %679 ]
  %635 = phi i64 [ 0, %628 ], [ %686, %679 ]
  %636 = phi i64 [ 0, %628 ], [ %685, %679 ]
  %637 = phi i32 [ %614, %628 ], [ %677, %679 ]
  %638 = phi i32 [ %615, %628 ], [ %676, %679 ]
  %639 = phi i32 [ %617, %628 ], [ %689, %679 ]
  %640 = phi i64 [ %616, %628 ], [ %675, %679 ]
  %641 = and i32 %634, %104
  %642 = shl nuw i32 %641, 1
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds nuw [4 x i8], ptr %625, i64 %643
  %645 = tail call i64 @llvm.umin.i64(i64 %635, i64 %636)
  %646 = zext i32 %634 to i64
  %647 = getelementptr inbounds nuw i8, ptr %89, i64 %646
  %648 = getelementptr inbounds nuw i8, ptr %3, i64 %645
  %649 = getelementptr inbounds nuw i8, ptr %647, i64 %645
  %650 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %648, ptr noundef nonnull %649, ptr noundef %4, ptr noundef %90, ptr noundef %62)
  %651 = add i64 %650, %645
  %652 = add i64 %651, %646
  %653 = icmp ult i64 %652, %629
  %654 = getelementptr inbounds nuw i8, ptr %631, i64 %646
  %655 = select i1 %653, ptr %647, ptr %654
  %656 = icmp ugt i64 %651, %640
  br i1 %656, label %657, label %674

657:                                              ; preds = %633
  %658 = add i32 %634, %97
  %659 = sub i32 %637, %658
  %660 = zext i32 %659 to i64
  %661 = icmp ugt i64 %651, %660
  %662 = trunc i64 %651 to i32
  %663 = add i32 %658, %662
  %664 = select i1 %661, i32 %663, i32 %637
  %665 = sub i32 %632, %658
  %666 = zext i32 %638 to i64
  %667 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %666
  store i32 %665, ptr %667, align 4, !tbaa !46
  %668 = getelementptr inbounds nuw i8, ptr %667, i64 4
  store i32 %662, ptr %668, align 4, !tbaa !44
  %669 = add i32 %638, 1
  %670 = icmp ugt i64 %651, 4096
  %671 = getelementptr inbounds nuw i8, ptr %3, i64 %651
  %672 = icmp eq ptr %671, %4
  %673 = or i1 %670, %672
  br i1 %673, label %.loopexit, label %674

674:                                              ; preds = %657, %633
  %675 = phi i64 [ %651, %657 ], [ %640, %633 ]
  %676 = phi i32 [ %669, %657 ], [ %638, %633 ]
  %677 = phi i32 [ %664, %657 ], [ %637, %633 ]
  %678 = icmp ugt i32 %634, %108
  br i1 %678, label %679, label %.loopexit

679:                                              ; preds = %674
  %680 = getelementptr inbounds nuw i8, ptr %655, i64 %651
  %681 = load i8, ptr %680, align 1, !tbaa !42
  %682 = getelementptr inbounds nuw i8, ptr %3, i64 %651
  %683 = load i8, ptr %682, align 1, !tbaa !42
  %684 = icmp ult i8 %681, %683
  %685 = select i1 %684, i64 %636, i64 %651
  %686 = select i1 %684, i64 %651, i64 %635
  %687 = select i1 %684, i64 4, i64 0
  %688 = getelementptr inbounds nuw i8, ptr %644, i64 %687
  %689 = add i32 %639, -1
  %690 = load i32, ptr %688, align 4, !tbaa !25
  %691 = icmp ne i32 %689, 0
  %692 = icmp ugt i32 %690, %96
  %693 = select i1 %691, i1 %692, i1 false
  br i1 %693, label %633, label %.loopexit, !llvm.loop !145

.loopexit:                                        ; preds = %679, %674, %657, %613, %608, %582
  %694 = phi i32 [ %585, %608 ], [ %577, %582 ], [ %615, %613 ], [ %676, %679 ], [ %669, %657 ], [ %676, %674 ]
  %695 = phi i32 [ %586, %608 ], [ %572, %582 ], [ %614, %613 ], [ %677, %679 ], [ %664, %657 ], [ %677, %674 ]
  %696 = add i32 %695, -8
  store i32 %696, ptr %12, align 4, !tbaa !19
  br label %697

697:                                              ; preds = %.loopexit, %462, %343, %226
  %698 = phi i32 [ %694, %.loopexit ], [ 1, %226 ], [ %347, %343 ], [ %466, %462 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %699

699:                                              ; preds = %697, %8
  %700 = phi i32 [ %698, %697 ], [ 0, %8 ]
  ret i32 %700
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal i32 @ZSTD_btGetAllMatches_dictMatchState_6(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef readnone captures(address) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = icmp ult ptr %3, %15
  br i1 %16, label %699, label %17

17:                                               ; preds = %8
  %18 = ptrtoint ptr %3 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %.preheader94, label %34

.preheader94:                                     ; preds = %17, %.preheader94
  %23 = phi i32 [ %27, %.preheader94 ], [ %13, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 %24
  %26 = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %1, ptr noundef %25, ptr noundef %4, i32 noundef %21, i32 noundef 6, i32 noundef 0)
  %27 = add i32 %26, %23
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %.preheader94, label %29, !llvm.loop !20

29:                                               ; preds = %.preheader94
  %30 = load ptr, ptr %10, align 8, !tbaa !18
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %18, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %21, %17 ]
  %36 = phi ptr [ %30, %29 ], [ %11, %17 ]
  store i32 %21, ptr %12, align 4, !tbaa !19
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 276
  %39 = load i32, ptr %38, align 4, !tbaa !24
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 4095)
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %42 = load i32, ptr %41, align 4, !tbaa !108
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %44 = load ptr, ptr %43, align 8, !tbaa !107
  %45 = load i64, ptr %3, align 1
  %46 = mul i64 %45, -3523014627193847808
  %47 = sub i32 64, %42
  %48 = zext nneg i32 %47 to i64
  %49 = lshr i64 %46, %48
  %50 = getelementptr inbounds nuw [4 x i8], ptr %44, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !25
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 260
  %55 = load i32, ptr %54, align 4, !tbaa !110
  %56 = add i32 %55, -1
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %60 = load i32, ptr %59, align 8, !tbaa !22
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw i8, ptr %36, i64 %61
  %63 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %58)
  %64 = load i32, ptr %37, align 8, !tbaa !112
  %65 = getelementptr i8, ptr %1, i64 28
  %66 = load i32, ptr %65, align 4, !tbaa !106
  %67 = getelementptr i8, ptr %1, i64 40
  %68 = load i32, ptr %67, align 8, !tbaa !113
  %69 = shl nuw i32 1, %64
  %70 = sub i32 %35, %66
  %71 = icmp ugt i32 %70, %69
  %72 = sub i32 %35, %69
  %73 = icmp eq i32 %68, 0
  %74 = select i1 %73, i1 %71, i1 false
  %75 = select i1 %74, i32 %72, i32 %66
  %76 = tail call i32 @llvm.umax.i32(i32 %75, i32 1)
  %77 = and i32 %35, %58
  %78 = shl nuw i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 4
  %82 = add i32 %35, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 268
  %84 = load i32, ptr %83, align 4, !tbaa !114
  %85 = shl nuw i32 1, %84
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %87 = load ptr, ptr %86, align 8, !tbaa !142
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %89 = load ptr, ptr %88, align 8, !tbaa !18
  %90 = load ptr, ptr %87, align 8, !tbaa !143
  %91 = ptrtoint ptr %90 to i64
  %92 = ptrtoint ptr %89 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds nuw i8, ptr %87, i64 28
  %96 = load i32, ptr %95, align 4, !tbaa !106
  %97 = sub i32 %75, %94
  %98 = getelementptr inbounds nuw i8, ptr %87, i64 264
  %99 = load i32, ptr %98, align 8, !tbaa !108
  %100 = getelementptr inbounds nuw i8, ptr %87, i64 260
  %101 = load i32, ptr %100, align 4, !tbaa !110
  %102 = add i32 %101, -1
  %103 = shl nsw i32 -1, %102
  %104 = xor i32 %103, -1
  %105 = sub i32 %94, %96
  %106 = icmp ugt i32 %105, %104
  %107 = sub i32 %94, %104
  %108 = select i1 %106, i32 %107, i32 %96
  %109 = add i32 %7, -1
  %110 = zext i32 %109 to i64
  %111 = icmp ult i32 %6, -3
  %112 = trunc i64 %45 to i32
  br i1 %111, label %113, label %471

113:                                              ; preds = %34
  %114 = sub i32 %35, %60
  %115 = zext i32 %97 to i64
  %116 = sub nsw i64 0, %115
  %117 = getelementptr i8, ptr %89, i64 %116
  %118 = add i32 %96, %97
  %119 = sub i32 %35, %118
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
  %132 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %126
  %133 = load i32, ptr %132, align 4, !tbaa !25
  br label %134

134:                                              ; preds = %131, %128
  %135 = phi i32 [ %130, %128 ], [ %133, %131 ]
  %136 = sub i32 %35, %135
  %137 = add i32 %135, -1
  %138 = icmp ult i32 %137, %114
  br i1 %138, label %139, label %208

139:                                              ; preds = %134
  %140 = icmp uge i32 %136, %75
  %141 = zext i32 %135 to i64
  %142 = sub nsw i64 0, %141
  %143 = getelementptr inbounds i8, ptr %3, i64 %142
  %144 = load i32, ptr %143, align 1, !tbaa !25
  %145 = icmp eq i32 %144, %112
  %146 = and i1 %140, %145
  br i1 %146, label %147, label %233

147:                                              ; preds = %139
  %148 = getelementptr inbounds i8, ptr %120, i64 %142
  br i1 %122, label %149, label %.loopexit93

149:                                              ; preds = %147
  %150 = load i64, ptr %148, align 1, !tbaa !30
  %151 = load i64, ptr %120, align 1, !tbaa !30
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %.preheader92, label %153

153:                                              ; preds = %149
  %154 = xor i64 %151, %150
  %155 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %154, i1 true)
  %156 = lshr i64 %155, 3
  br label %221

.preheader92:                                     ; preds = %149, %162
  %157 = phi ptr [ %160, %162 ], [ %148, %149 ]
  %158 = phi ptr [ %159, %162 ], [ %120, %149 ]
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 8
  %160 = getelementptr inbounds nuw i8, ptr %157, i64 8
  %161 = icmp ult ptr %159, %121
  br i1 %161, label %162, label %.loopexit93

162:                                              ; preds = %.preheader92
  %163 = load i64, ptr %160, align 1, !tbaa !30
  %164 = load i64, ptr %159, align 1, !tbaa !30
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %.preheader92, label %166

166:                                              ; preds = %162
  %167 = xor i64 %164, %163
  %168 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %167, i1 true)
  %169 = lshr i64 %168, 3
  %170 = getelementptr inbounds nuw i8, ptr %159, i64 %169
  %171 = ptrtoint ptr %170 to i64
  %172 = sub i64 %171, %125
  br label %221

.loopexit93:                                      ; preds = %.preheader92, %147
  %173 = phi ptr [ %148, %147 ], [ %160, %.preheader92 ]
  %174 = phi ptr [ %120, %147 ], [ %159, %.preheader92 ]
  %175 = icmp ult ptr %174, %123
  br i1 %175, label %176, label %183

176:                                              ; preds = %.loopexit93
  %177 = load i32, ptr %173, align 1, !tbaa !25
  %178 = load i32, ptr %174, align 1, !tbaa !25
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = getelementptr inbounds nuw i8, ptr %174, i64 4
  %182 = getelementptr inbounds nuw i8, ptr %173, i64 4
  br label %183

183:                                              ; preds = %180, %176, %.loopexit93
  %184 = phi ptr [ %182, %180 ], [ %173, %176 ], [ %173, %.loopexit93 ]
  %185 = phi ptr [ %181, %180 ], [ %174, %176 ], [ %174, %.loopexit93 ]
  %186 = icmp ult ptr %185, %124
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = load i16, ptr %184, align 1, !tbaa !115
  %189 = load i16, ptr %185, align 1, !tbaa !115
  %190 = icmp eq i16 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = getelementptr inbounds nuw i8, ptr %185, i64 2
  %193 = getelementptr inbounds nuw i8, ptr %184, i64 2
  br label %194

194:                                              ; preds = %191, %187, %183
  %195 = phi ptr [ %193, %191 ], [ %184, %187 ], [ %184, %183 ]
  %196 = phi ptr [ %192, %191 ], [ %185, %187 ], [ %185, %183 ]
  %197 = icmp ult ptr %196, %4
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load i8, ptr %195, align 1, !tbaa !42
  %200 = load i8, ptr %196, align 1, !tbaa !42
  %201 = icmp eq i8 %199, %200
  %202 = zext i1 %201 to i64
  %203 = getelementptr inbounds nuw i8, ptr %196, i64 %202
  br label %204

204:                                              ; preds = %198, %194
  %205 = phi ptr [ %196, %194 ], [ %203, %198 ]
  %206 = ptrtoint ptr %205 to i64
  %207 = sub i64 %206, %125
  br label %221

208:                                              ; preds = %134
  %209 = zext i32 %136 to i64
  %210 = getelementptr i8, ptr %117, i64 %209
  %211 = icmp uge i32 %137, %119
  %212 = sub i32 %136, %60
  %213 = icmp ugt i32 %212, -4
  %214 = select i1 %211, i1 true, i1 %213
  br i1 %214, label %233, label %215

215:                                              ; preds = %208
  %216 = load i32, ptr %210, align 1, !tbaa !25
  %217 = icmp eq i32 %216, %112
  br i1 %217, label %218, label %233

218:                                              ; preds = %215
  %219 = getelementptr inbounds nuw i8, ptr %210, i64 4
  %220 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %120, ptr noundef nonnull %219, ptr noundef %4, ptr noundef %90, ptr noundef %62)
  br label %221

221:                                              ; preds = %218, %204, %166, %153
  %222 = phi i64 [ %220, %218 ], [ %207, %204 ], [ %156, %153 ], [ %172, %166 ]
  %223 = trunc i64 %222 to i32
  %224 = add i32 %223, 4
  %225 = icmp ult i32 %109, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %221
  %227 = zext i32 %224 to i64
  store i32 1, ptr %0, align 4, !tbaa !46
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %224, ptr %228, align 4, !tbaa !44
  %229 = icmp ule i32 %224, %40
  %230 = getelementptr inbounds nuw i8, ptr %3, i64 %227
  %231 = icmp ne ptr %230, %4
  %232 = and i1 %229, %231
  br i1 %232, label %233, label %697

233:                                              ; preds = %226, %221, %215, %208, %139
  %234 = phi i32 [ 1, %226 ], [ 0, %221 ], [ 0, %139 ], [ 0, %215 ], [ 0, %208 ]
  %235 = phi i64 [ %227, %226 ], [ %110, %221 ], [ %110, %139 ], [ %110, %215 ], [ %110, %208 ]
  %236 = add nuw nsw i64 %126, 1
  %237 = icmp eq i64 %236, 3
  br i1 %237, label %241, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %236
  %240 = load i32, ptr %239, align 4, !tbaa !25
  br label %244

241:                                              ; preds = %233
  %242 = load i32, ptr %5, align 4, !tbaa !25
  %243 = add i32 %242, -1
  br label %244

244:                                              ; preds = %241, %238
  %245 = phi i32 [ %243, %241 ], [ %240, %238 ]
  %246 = sub i32 %35, %245
  %247 = add i32 %245, -1
  %248 = icmp ult i32 %247, %114
  br i1 %248, label %265, label %249

249:                                              ; preds = %244
  %250 = zext i32 %246 to i64
  %251 = getelementptr i8, ptr %117, i64 %250
  %252 = icmp uge i32 %247, %119
  %253 = sub i32 %246, %60
  %254 = icmp ugt i32 %253, -4
  %255 = select i1 %252, i1 true, i1 %254
  br i1 %255, label %339, label %256

256:                                              ; preds = %249
  %257 = load i32, ptr %3, align 1, !tbaa !25
  %258 = load i32, ptr %251, align 1, !tbaa !25
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %339

260:                                              ; preds = %256
  %261 = getelementptr inbounds nuw i8, ptr %251, i64 4
  %262 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %120, ptr noundef nonnull %261, ptr noundef %4, ptr noundef %90, ptr noundef %62)
  %263 = trunc i64 %262 to i32
  %264 = add i32 %263, 4
  br label %339

265:                                              ; preds = %244
  %266 = icmp uge i32 %246, %75
  %267 = load i32, ptr %3, align 1, !tbaa !25
  %268 = zext i32 %245 to i64
  %269 = sub nsw i64 0, %268
  %270 = getelementptr inbounds i8, ptr %3, i64 %269
  %271 = load i32, ptr %270, align 1, !tbaa !25
  %272 = icmp eq i32 %267, %271
  %273 = and i1 %266, %272
  br i1 %273, label %274, label %339

274:                                              ; preds = %265
  %275 = getelementptr inbounds i8, ptr %120, i64 %269
  br i1 %122, label %276, label %.loopexit91

276:                                              ; preds = %274
  %277 = load i64, ptr %275, align 1, !tbaa !30
  %278 = load i64, ptr %120, align 1, !tbaa !30
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %.preheader90, label %280

280:                                              ; preds = %276
  %281 = xor i64 %278, %277
  %282 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %281, i1 true)
  %283 = lshr i64 %282, 3
  br label %335

.preheader90:                                     ; preds = %276, %324
  %284 = phi ptr [ %287, %324 ], [ %275, %276 ]
  %285 = phi ptr [ %286, %324 ], [ %120, %276 ]
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 8
  %287 = getelementptr inbounds nuw i8, ptr %284, i64 8
  %288 = icmp ult ptr %286, %121
  br i1 %288, label %324, label %.loopexit91

.loopexit91:                                      ; preds = %.preheader90, %274
  %289 = phi ptr [ %275, %274 ], [ %287, %.preheader90 ]
  %290 = phi ptr [ %120, %274 ], [ %286, %.preheader90 ]
  %291 = icmp ult ptr %290, %123
  br i1 %291, label %292, label %299

292:                                              ; preds = %.loopexit91
  %293 = load i32, ptr %289, align 1, !tbaa !25
  %294 = load i32, ptr %290, align 1, !tbaa !25
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %292
  %297 = getelementptr inbounds nuw i8, ptr %290, i64 4
  %298 = getelementptr inbounds nuw i8, ptr %289, i64 4
  br label %299

299:                                              ; preds = %296, %292, %.loopexit91
  %300 = phi ptr [ %298, %296 ], [ %289, %292 ], [ %289, %.loopexit91 ]
  %301 = phi ptr [ %297, %296 ], [ %290, %292 ], [ %290, %.loopexit91 ]
  %302 = icmp ult ptr %301, %124
  br i1 %302, label %303, label %310

303:                                              ; preds = %299
  %304 = load i16, ptr %300, align 1, !tbaa !115
  %305 = load i16, ptr %301, align 1, !tbaa !115
  %306 = icmp eq i16 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = getelementptr inbounds nuw i8, ptr %301, i64 2
  %309 = getelementptr inbounds nuw i8, ptr %300, i64 2
  br label %310

310:                                              ; preds = %307, %303, %299
  %311 = phi ptr [ %309, %307 ], [ %300, %303 ], [ %300, %299 ]
  %312 = phi ptr [ %308, %307 ], [ %301, %303 ], [ %301, %299 ]
  %313 = icmp ult ptr %312, %4
  br i1 %313, label %314, label %320

314:                                              ; preds = %310
  %315 = load i8, ptr %311, align 1, !tbaa !42
  %316 = load i8, ptr %312, align 1, !tbaa !42
  %317 = icmp eq i8 %315, %316
  %318 = zext i1 %317 to i64
  %319 = getelementptr inbounds nuw i8, ptr %312, i64 %318
  br label %320

320:                                              ; preds = %314, %310
  %321 = phi ptr [ %312, %310 ], [ %319, %314 ]
  %322 = ptrtoint ptr %321 to i64
  %323 = sub i64 %322, %125
  br label %335

324:                                              ; preds = %.preheader90
  %325 = load i64, ptr %287, align 1, !tbaa !30
  %326 = load i64, ptr %286, align 1, !tbaa !30
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %.preheader90, label %328

328:                                              ; preds = %324
  %329 = xor i64 %326, %325
  %330 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %329, i1 true)
  %331 = lshr i64 %330, 3
  %332 = getelementptr inbounds nuw i8, ptr %286, i64 %331
  %333 = ptrtoint ptr %332 to i64
  %334 = sub i64 %333, %125
  br label %335

335:                                              ; preds = %328, %320, %280
  %336 = phi i64 [ %323, %320 ], [ %283, %280 ], [ %334, %328 ]
  %337 = trunc i64 %336 to i32
  %338 = add i32 %337, 4
  br label %339

339:                                              ; preds = %335, %265, %260, %256, %249
  %340 = phi i32 [ %338, %335 ], [ 0, %265 ], [ %264, %260 ], [ 0, %256 ], [ 0, %249 ]
  %341 = zext i32 %340 to i64
  %342 = icmp samesign ult i64 %235, %341
  br i1 %342, label %343, label %352

343:                                              ; preds = %339
  %344 = zext nneg i32 %234 to i64
  %345 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %344
  store i32 2, ptr %345, align 4, !tbaa !46
  %346 = getelementptr inbounds nuw i8, ptr %345, i64 4
  store i32 %340, ptr %346, align 4, !tbaa !44
  %347 = add nuw nsw i32 %234, 1
  %348 = icmp ule i32 %340, %40
  %349 = getelementptr inbounds nuw i8, ptr %3, i64 %341
  %350 = icmp ne ptr %349, %4
  %351 = and i1 %348, %350
  br i1 %351, label %352, label %697

352:                                              ; preds = %343, %339
  %353 = phi i32 [ %347, %343 ], [ %234, %339 ]
  %354 = phi i64 [ %341, %343 ], [ %235, %339 ]
  %355 = add nuw nsw i64 %126, 2
  %356 = icmp eq i64 %355, 3
  br i1 %356, label %360, label %357

357:                                              ; preds = %352
  %358 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %355
  %359 = load i32, ptr %358, align 4, !tbaa !25
  br label %363

360:                                              ; preds = %352
  %361 = load i32, ptr %5, align 4, !tbaa !25
  %362 = add i32 %361, -1
  br label %363

363:                                              ; preds = %360, %357
  %364 = phi i32 [ %362, %360 ], [ %359, %357 ]
  %365 = sub i32 %35, %364
  %366 = add i32 %364, -1
  %367 = icmp ult i32 %366, %114
  br i1 %367, label %384, label %368

368:                                              ; preds = %363
  %369 = zext i32 %365 to i64
  %370 = getelementptr i8, ptr %117, i64 %369
  %371 = icmp uge i32 %366, %119
  %372 = sub i32 %365, %60
  %373 = icmp ugt i32 %372, -4
  %374 = select i1 %371, i1 true, i1 %373
  br i1 %374, label %458, label %375

375:                                              ; preds = %368
  %376 = load i32, ptr %3, align 1, !tbaa !25
  %377 = load i32, ptr %370, align 1, !tbaa !25
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %379, label %458

379:                                              ; preds = %375
  %380 = getelementptr inbounds nuw i8, ptr %370, i64 4
  %381 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %120, ptr noundef nonnull %380, ptr noundef %4, ptr noundef %90, ptr noundef %62)
  %382 = trunc i64 %381 to i32
  %383 = add i32 %382, 4
  br label %458

384:                                              ; preds = %363
  %385 = icmp uge i32 %365, %75
  %386 = load i32, ptr %3, align 1, !tbaa !25
  %387 = zext i32 %364 to i64
  %388 = sub nsw i64 0, %387
  %389 = getelementptr inbounds i8, ptr %3, i64 %388
  %390 = load i32, ptr %389, align 1, !tbaa !25
  %391 = icmp eq i32 %386, %390
  %392 = and i1 %385, %391
  br i1 %392, label %393, label %458

393:                                              ; preds = %384
  %394 = getelementptr inbounds i8, ptr %120, i64 %388
  br i1 %122, label %395, label %.loopexit89

395:                                              ; preds = %393
  %396 = load i64, ptr %394, align 1, !tbaa !30
  %397 = load i64, ptr %120, align 1, !tbaa !30
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %.preheader88, label %399

399:                                              ; preds = %395
  %400 = xor i64 %397, %396
  %401 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %400, i1 true)
  %402 = lshr i64 %401, 3
  br label %454

.preheader88:                                     ; preds = %395, %443
  %403 = phi ptr [ %406, %443 ], [ %394, %395 ]
  %404 = phi ptr [ %405, %443 ], [ %120, %395 ]
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 8
  %406 = getelementptr inbounds nuw i8, ptr %403, i64 8
  %407 = icmp ult ptr %405, %121
  br i1 %407, label %443, label %.loopexit89

.loopexit89:                                      ; preds = %.preheader88, %393
  %408 = phi ptr [ %394, %393 ], [ %406, %.preheader88 ]
  %409 = phi ptr [ %120, %393 ], [ %405, %.preheader88 ]
  %410 = icmp ult ptr %409, %123
  br i1 %410, label %411, label %418

411:                                              ; preds = %.loopexit89
  %412 = load i32, ptr %408, align 1, !tbaa !25
  %413 = load i32, ptr %409, align 1, !tbaa !25
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %411
  %416 = getelementptr inbounds nuw i8, ptr %409, i64 4
  %417 = getelementptr inbounds nuw i8, ptr %408, i64 4
  br label %418

418:                                              ; preds = %415, %411, %.loopexit89
  %419 = phi ptr [ %417, %415 ], [ %408, %411 ], [ %408, %.loopexit89 ]
  %420 = phi ptr [ %416, %415 ], [ %409, %411 ], [ %409, %.loopexit89 ]
  %421 = icmp ult ptr %420, %124
  br i1 %421, label %422, label %429

422:                                              ; preds = %418
  %423 = load i16, ptr %419, align 1, !tbaa !115
  %424 = load i16, ptr %420, align 1, !tbaa !115
  %425 = icmp eq i16 %423, %424
  br i1 %425, label %426, label %429

426:                                              ; preds = %422
  %427 = getelementptr inbounds nuw i8, ptr %420, i64 2
  %428 = getelementptr inbounds nuw i8, ptr %419, i64 2
  br label %429

429:                                              ; preds = %426, %422, %418
  %430 = phi ptr [ %428, %426 ], [ %419, %422 ], [ %419, %418 ]
  %431 = phi ptr [ %427, %426 ], [ %420, %422 ], [ %420, %418 ]
  %432 = icmp ult ptr %431, %4
  br i1 %432, label %433, label %439

433:                                              ; preds = %429
  %434 = load i8, ptr %430, align 1, !tbaa !42
  %435 = load i8, ptr %431, align 1, !tbaa !42
  %436 = icmp eq i8 %434, %435
  %437 = zext i1 %436 to i64
  %438 = getelementptr inbounds nuw i8, ptr %431, i64 %437
  br label %439

439:                                              ; preds = %433, %429
  %440 = phi ptr [ %431, %429 ], [ %438, %433 ]
  %441 = ptrtoint ptr %440 to i64
  %442 = sub i64 %441, %125
  br label %454

443:                                              ; preds = %.preheader88
  %444 = load i64, ptr %406, align 1, !tbaa !30
  %445 = load i64, ptr %405, align 1, !tbaa !30
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %.preheader88, label %447

447:                                              ; preds = %443
  %448 = xor i64 %445, %444
  %449 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %448, i1 true)
  %450 = lshr i64 %449, 3
  %451 = getelementptr inbounds nuw i8, ptr %405, i64 %450
  %452 = ptrtoint ptr %451 to i64
  %453 = sub i64 %452, %125
  br label %454

454:                                              ; preds = %447, %439, %399
  %455 = phi i64 [ %442, %439 ], [ %402, %399 ], [ %453, %447 ]
  %456 = trunc i64 %455 to i32
  %457 = add i32 %456, 4
  br label %458

458:                                              ; preds = %454, %384, %379, %375, %368
  %459 = phi i32 [ %457, %454 ], [ 0, %384 ], [ %383, %379 ], [ 0, %375 ], [ 0, %368 ]
  %460 = zext i32 %459 to i64
  %461 = icmp samesign ult i64 %354, %460
  br i1 %461, label %462, label %471

462:                                              ; preds = %458
  %463 = zext nneg i32 %353 to i64
  %464 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %463
  store i32 3, ptr %464, align 4, !tbaa !46
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 4
  store i32 %459, ptr %465, align 4, !tbaa !44
  %466 = add nuw nsw i32 %353, 1
  %467 = icmp ule i32 %459, %40
  %468 = getelementptr inbounds nuw i8, ptr %3, i64 %460
  %469 = icmp ne ptr %468, %4
  %470 = and i1 %467, %469
  br i1 %470, label %471, label %697

471:                                              ; preds = %462, %458, %34
  %472 = phi i64 [ %110, %34 ], [ %460, %462 ], [ %354, %458 ]
  %473 = phi i32 [ 0, %34 ], [ %466, %462 ], [ %353, %458 ]
  store i32 %35, ptr %50, align 4, !tbaa !25
  %474 = icmp ult i32 %51, %76
  br i1 %474, label %475, label %476

475:                                              ; preds = %471
  store i32 0, ptr %81, align 4, !tbaa !25
  store i32 0, ptr %80, align 4, !tbaa !25
  br label %613

476:                                              ; preds = %471
  %477 = getelementptr inbounds i8, ptr %4, i64 -7
  %478 = getelementptr inbounds i8, ptr %4, i64 -3
  %479 = getelementptr inbounds i8, ptr %4, i64 -1
  %480 = add i32 %35, 3
  br label %481

481:                                              ; preds = %597, %476
  %482 = phi i32 [ %51, %476 ], [ %603, %597 ]
  %483 = phi i64 [ 0, %476 ], [ %601, %597 ]
  %484 = phi i64 [ 0, %476 ], [ %600, %597 ]
  %485 = phi ptr [ %80, %476 ], [ %599, %597 ]
  %486 = phi ptr [ %81, %476 ], [ %598, %597 ]
  %487 = phi i32 [ %82, %476 ], [ %586, %597 ]
  %488 = phi i32 [ %473, %476 ], [ %585, %597 ]
  %489 = phi i32 [ %85, %476 ], [ %604, %597 ]
  %490 = phi i64 [ %472, %476 ], [ %584, %597 ]
  %491 = and i32 %482, %58
  %492 = shl nuw i32 %491, 1
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %493
  %495 = tail call i64 @llvm.umin.i64(i64 %483, i64 %484)
  %496 = zext i32 %482 to i64
  %497 = getelementptr inbounds nuw i8, ptr %36, i64 %496
  %498 = getelementptr inbounds nuw i8, ptr %3, i64 %495
  %499 = getelementptr inbounds nuw i8, ptr %497, i64 %495
  %500 = icmp ult ptr %498, %477
  br i1 %500, label %501, label %.loopexit87

501:                                              ; preds = %481
  %502 = load i64, ptr %499, align 1, !tbaa !30
  %503 = load i64, ptr %498, align 1, !tbaa !30
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %.preheader, label %505

505:                                              ; preds = %501
  %506 = xor i64 %503, %502
  %507 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %506, i1 true)
  %508 = lshr i64 %507, 3
  br label %562

.preheader:                                       ; preds = %501, %514
  %509 = phi ptr [ %512, %514 ], [ %499, %501 ]
  %510 = phi ptr [ %511, %514 ], [ %498, %501 ]
  %511 = getelementptr inbounds nuw i8, ptr %510, i64 8
  %512 = getelementptr inbounds nuw i8, ptr %509, i64 8
  %513 = icmp ult ptr %511, %477
  br i1 %513, label %514, label %.loopexit87

514:                                              ; preds = %.preheader
  %515 = load i64, ptr %512, align 1, !tbaa !30
  %516 = load i64, ptr %511, align 1, !tbaa !30
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %.preheader, label %518

518:                                              ; preds = %514
  %519 = xor i64 %516, %515
  %520 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %519, i1 true)
  %521 = lshr i64 %520, 3
  %522 = getelementptr inbounds nuw i8, ptr %511, i64 %521
  %523 = ptrtoint ptr %522 to i64
  %524 = ptrtoint ptr %498 to i64
  %525 = sub i64 %523, %524
  br label %562

.loopexit87:                                      ; preds = %.preheader, %481
  %526 = phi ptr [ %499, %481 ], [ %512, %.preheader ]
  %527 = phi ptr [ %498, %481 ], [ %511, %.preheader ]
  %528 = icmp ult ptr %527, %478
  br i1 %528, label %529, label %536

529:                                              ; preds = %.loopexit87
  %530 = load i32, ptr %526, align 1, !tbaa !25
  %531 = load i32, ptr %527, align 1, !tbaa !25
  %532 = icmp eq i32 %530, %531
  br i1 %532, label %533, label %536

533:                                              ; preds = %529
  %534 = getelementptr inbounds nuw i8, ptr %527, i64 4
  %535 = getelementptr inbounds nuw i8, ptr %526, i64 4
  br label %536

536:                                              ; preds = %533, %529, %.loopexit87
  %537 = phi ptr [ %535, %533 ], [ %526, %529 ], [ %526, %.loopexit87 ]
  %538 = phi ptr [ %534, %533 ], [ %527, %529 ], [ %527, %.loopexit87 ]
  %539 = icmp ult ptr %538, %479
  br i1 %539, label %540, label %547

540:                                              ; preds = %536
  %541 = load i16, ptr %537, align 1, !tbaa !115
  %542 = load i16, ptr %538, align 1, !tbaa !115
  %543 = icmp eq i16 %541, %542
  br i1 %543, label %544, label %547

544:                                              ; preds = %540
  %545 = getelementptr inbounds nuw i8, ptr %538, i64 2
  %546 = getelementptr inbounds nuw i8, ptr %537, i64 2
  br label %547

547:                                              ; preds = %544, %540, %536
  %548 = phi ptr [ %546, %544 ], [ %537, %540 ], [ %537, %536 ]
  %549 = phi ptr [ %545, %544 ], [ %538, %540 ], [ %538, %536 ]
  %550 = icmp ult ptr %549, %4
  br i1 %550, label %551, label %557

551:                                              ; preds = %547
  %552 = load i8, ptr %548, align 1, !tbaa !42
  %553 = load i8, ptr %549, align 1, !tbaa !42
  %554 = icmp eq i8 %552, %553
  %555 = zext i1 %554 to i64
  %556 = getelementptr inbounds nuw i8, ptr %549, i64 %555
  br label %557

557:                                              ; preds = %551, %547
  %558 = phi ptr [ %549, %547 ], [ %556, %551 ]
  %559 = ptrtoint ptr %558 to i64
  %560 = ptrtoint ptr %498 to i64
  %561 = sub i64 %559, %560
  br label %562

562:                                              ; preds = %557, %518, %505
  %563 = phi i64 [ %561, %557 ], [ %508, %505 ], [ %525, %518 ]
  %564 = add i64 %563, %495
  %565 = icmp ugt i64 %564, %490
  br i1 %565, label %566, label %583

566:                                              ; preds = %562
  %567 = sub i32 %487, %482
  %568 = zext i32 %567 to i64
  %569 = icmp ugt i64 %564, %568
  %570 = trunc i64 %564 to i32
  %571 = add i32 %482, %570
  %572 = select i1 %569, i32 %571, i32 %487
  %573 = sub i32 %480, %482
  %574 = zext i32 %488 to i64
  %575 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %574
  store i32 %573, ptr %575, align 4, !tbaa !46
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 4
  store i32 %570, ptr %576, align 4, !tbaa !44
  %577 = add i32 %488, 1
  %578 = icmp ugt i64 %564, 4096
  %579 = getelementptr inbounds nuw i8, ptr %3, i64 %564
  %580 = icmp eq ptr %579, %4
  %581 = or i1 %578, %580
  br i1 %581, label %582, label %583

582:                                              ; preds = %566
  store i32 0, ptr %486, align 4, !tbaa !25
  store i32 0, ptr %485, align 4, !tbaa !25
  br label %.loopexit

583:                                              ; preds = %566, %562
  %584 = phi i64 [ %564, %566 ], [ %490, %562 ]
  %585 = phi i32 [ %577, %566 ], [ %488, %562 ]
  %586 = phi i32 [ %572, %566 ], [ %487, %562 ]
  %587 = getelementptr inbounds nuw i8, ptr %497, i64 %564
  %588 = load i8, ptr %587, align 1, !tbaa !42
  %589 = getelementptr inbounds nuw i8, ptr %3, i64 %564
  %590 = load i8, ptr %589, align 1, !tbaa !42
  %591 = icmp ult i8 %588, %590
  %592 = icmp ugt i32 %482, %63
  br i1 %591, label %593, label %596

593:                                              ; preds = %583
  store i32 %482, ptr %485, align 4, !tbaa !25
  br i1 %592, label %594, label %608

594:                                              ; preds = %593
  %595 = getelementptr inbounds nuw i8, ptr %494, i64 4
  br label %597

596:                                              ; preds = %583
  store i32 %482, ptr %486, align 4, !tbaa !25
  br i1 %592, label %597, label %608

597:                                              ; preds = %596, %594
  %598 = phi ptr [ %486, %594 ], [ %494, %596 ]
  %599 = phi ptr [ %595, %594 ], [ %485, %596 ]
  %600 = phi i64 [ %484, %594 ], [ %564, %596 ]
  %601 = phi i64 [ %564, %594 ], [ %483, %596 ]
  %602 = phi ptr [ %595, %594 ], [ %494, %596 ]
  %603 = load i32, ptr %602, align 4, !tbaa !25
  %604 = add i32 %489, -1
  %605 = icmp ne i32 %604, 0
  %606 = icmp uge i32 %603, %76
  %607 = select i1 %605, i1 %606, i1 false
  br i1 %607, label %481, label %608, !llvm.loop !139

608:                                              ; preds = %597, %596, %593
  %609 = phi i32 [ %604, %597 ], [ %489, %593 ], [ %489, %596 ]
  %610 = phi ptr [ %598, %597 ], [ %486, %593 ], [ %9, %596 ]
  %611 = phi ptr [ %599, %597 ], [ %9, %593 ], [ %485, %596 ]
  store i32 0, ptr %610, align 4, !tbaa !25
  store i32 0, ptr %611, align 4, !tbaa !25
  %612 = icmp eq i32 %609, 0
  br i1 %612, label %.loopexit, label %613

613:                                              ; preds = %608, %475
  %614 = phi i32 [ %82, %475 ], [ %586, %608 ]
  %615 = phi i32 [ %473, %475 ], [ %585, %608 ]
  %616 = phi i64 [ %472, %475 ], [ %584, %608 ]
  %617 = phi i32 [ %85, %475 ], [ %609, %608 ]
  %618 = sub i32 64, %99
  %619 = zext nneg i32 %618 to i64
  %620 = lshr i64 %46, %619
  %621 = getelementptr inbounds nuw i8, ptr %87, i64 112
  %622 = load ptr, ptr %621, align 8, !tbaa !107
  %623 = getelementptr inbounds nuw [4 x i8], ptr %622, i64 %620
  %624 = getelementptr inbounds nuw i8, ptr %87, i64 128
  %625 = load ptr, ptr %624, align 8, !tbaa !109
  %626 = load i32, ptr %623, align 4, !tbaa !25
  %627 = icmp ugt i32 %626, %96
  br i1 %627, label %628, label %.loopexit

628:                                              ; preds = %613
  %629 = and i64 %93, 4294967295
  %630 = zext i32 %97 to i64
  %631 = getelementptr inbounds nuw i8, ptr %36, i64 %630
  %632 = add i32 %35, 3
  br label %633

633:                                              ; preds = %679, %628
  %634 = phi i32 [ %626, %628 ], [ %690, %679 ]
  %635 = phi i64 [ 0, %628 ], [ %686, %679 ]
  %636 = phi i64 [ 0, %628 ], [ %685, %679 ]
  %637 = phi i32 [ %614, %628 ], [ %677, %679 ]
  %638 = phi i32 [ %615, %628 ], [ %676, %679 ]
  %639 = phi i32 [ %617, %628 ], [ %689, %679 ]
  %640 = phi i64 [ %616, %628 ], [ %675, %679 ]
  %641 = and i32 %634, %104
  %642 = shl nuw i32 %641, 1
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds nuw [4 x i8], ptr %625, i64 %643
  %645 = tail call i64 @llvm.umin.i64(i64 %635, i64 %636)
  %646 = zext i32 %634 to i64
  %647 = getelementptr inbounds nuw i8, ptr %89, i64 %646
  %648 = getelementptr inbounds nuw i8, ptr %3, i64 %645
  %649 = getelementptr inbounds nuw i8, ptr %647, i64 %645
  %650 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %648, ptr noundef nonnull %649, ptr noundef %4, ptr noundef %90, ptr noundef %62)
  %651 = add i64 %650, %645
  %652 = add i64 %651, %646
  %653 = icmp ult i64 %652, %629
  %654 = getelementptr inbounds nuw i8, ptr %631, i64 %646
  %655 = select i1 %653, ptr %647, ptr %654
  %656 = icmp ugt i64 %651, %640
  br i1 %656, label %657, label %674

657:                                              ; preds = %633
  %658 = add i32 %634, %97
  %659 = sub i32 %637, %658
  %660 = zext i32 %659 to i64
  %661 = icmp ugt i64 %651, %660
  %662 = trunc i64 %651 to i32
  %663 = add i32 %658, %662
  %664 = select i1 %661, i32 %663, i32 %637
  %665 = sub i32 %632, %658
  %666 = zext i32 %638 to i64
  %667 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %666
  store i32 %665, ptr %667, align 4, !tbaa !46
  %668 = getelementptr inbounds nuw i8, ptr %667, i64 4
  store i32 %662, ptr %668, align 4, !tbaa !44
  %669 = add i32 %638, 1
  %670 = icmp ugt i64 %651, 4096
  %671 = getelementptr inbounds nuw i8, ptr %3, i64 %651
  %672 = icmp eq ptr %671, %4
  %673 = or i1 %670, %672
  br i1 %673, label %.loopexit, label %674

674:                                              ; preds = %657, %633
  %675 = phi i64 [ %651, %657 ], [ %640, %633 ]
  %676 = phi i32 [ %669, %657 ], [ %638, %633 ]
  %677 = phi i32 [ %664, %657 ], [ %637, %633 ]
  %678 = icmp ugt i32 %634, %108
  br i1 %678, label %679, label %.loopexit

679:                                              ; preds = %674
  %680 = getelementptr inbounds nuw i8, ptr %655, i64 %651
  %681 = load i8, ptr %680, align 1, !tbaa !42
  %682 = getelementptr inbounds nuw i8, ptr %3, i64 %651
  %683 = load i8, ptr %682, align 1, !tbaa !42
  %684 = icmp ult i8 %681, %683
  %685 = select i1 %684, i64 %636, i64 %651
  %686 = select i1 %684, i64 %651, i64 %635
  %687 = select i1 %684, i64 4, i64 0
  %688 = getelementptr inbounds nuw i8, ptr %644, i64 %687
  %689 = add i32 %639, -1
  %690 = load i32, ptr %688, align 4, !tbaa !25
  %691 = icmp ne i32 %689, 0
  %692 = icmp ugt i32 %690, %96
  %693 = select i1 %691, i1 %692, i1 false
  br i1 %693, label %633, label %.loopexit, !llvm.loop !145

.loopexit:                                        ; preds = %679, %674, %657, %613, %608, %582
  %694 = phi i32 [ %585, %608 ], [ %577, %582 ], [ %615, %613 ], [ %676, %679 ], [ %669, %657 ], [ %676, %674 ]
  %695 = phi i32 [ %586, %608 ], [ %572, %582 ], [ %614, %613 ], [ %677, %679 ], [ %664, %657 ], [ %677, %674 ]
  %696 = add i32 %695, -8
  store i32 %696, ptr %12, align 4, !tbaa !19
  br label %697

697:                                              ; preds = %.loopexit, %462, %343, %226
  %698 = phi i32 [ %694, %.loopexit ], [ 1, %226 ], [ %347, %343 ], [ %466, %462 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %699

699:                                              ; preds = %697, %8
  %700 = phi i32 [ %698, %697 ], [ 0, %8 ]
  ret i32 %700
}

declare i32 @HUF_getNbBitsFromCTable(ptr noundef, i32 noundef) local_unnamed_addr #10

declare i32 @HIST_count_simple(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @ZSTD_resetSeqStore(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v28i32(<28 x i32>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!47 = !{}
!48 = !{!"branch_weights", i32 1, i32 1048575}
!49 = !{!37, !12, i64 4}
!50 = distinct !{!50, !21}
!51 = !{!15, !12, i64 76}
!52 = !{!15, !14, i64 24}
!53 = !{!15, !12, i64 72}
!54 = !{!15, !14, i64 16}
!55 = distinct !{!55, !21}
!56 = !{!15, !12, i64 96}
!57 = !{!15, !12, i64 64}
!58 = !{!15, !14, i64 0}
!59 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!60 = !{i64 0, i64 4, !25, i64 4, i64 4, !25, i64 8, i64 4, !25, i64 12, i64 4, !25, i64 16, i64 12, !42}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !21}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !62}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21}
!68 = !{i64 0, i64 12, !42}
!69 = distinct !{!69, !21}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, !62}
!72 = !{!15, !12, i64 48}
!73 = !{!15, !12, i64 52}
!74 = !{!15, !12, i64 60}
!75 = !{!15, !12, i64 56}
!76 = !{!77, !8, i64 24}
!77 = !{!"", !78, i64 0, !78, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !13, i64 56, !13, i64 64, !12, i64 72, !12, i64 76}
!78 = !{!"p1 _ZTS8SeqDef_s", !9, i64 0}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21, !81, !82}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = distinct !{!83, !21, !81, !82}
!84 = distinct !{!84, !62}
!85 = distinct !{!85, !21, !81}
!86 = !{!77, !78, i64 8}
!87 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!88 = !{!77, !12, i64 72}
!89 = !{!77, !78, i64 0}
!90 = !{!77, !12, i64 76}
!91 = !{!92, !93, i64 4}
!92 = !{!"SeqDef_s", !12, i64 0, !93, i64 4, !93, i64 6}
!93 = !{!"short", !10, i64 0}
!94 = !{!92, !12, i64 0}
!95 = !{!92, !93, i64 6}
!96 = distinct !{!96, !21}
!97 = !{!"branch_weights", i32 2000, i32 2002}
!98 = distinct !{!98, !62}
!99 = distinct !{!99, !62}
!100 = distinct !{!100, !62}
!101 = distinct !{!101, !21, !81, !82}
!102 = distinct !{!102, !21, !81, !82}
!103 = distinct !{!103, !62}
!104 = distinct !{!104, !21, !81}
!105 = !{!6, !12, i64 196}
!106 = !{!6, !12, i64 28}
!107 = !{!6, !14, i64 112}
!108 = !{!17, !12, i64 8}
!109 = !{!6, !14, i64 128}
!110 = !{!17, !12, i64 4}
!111 = !{!6, !8, i64 16}
!112 = !{!17, !12, i64 0}
!113 = !{!6, !12, i64 40}
!114 = !{!17, !12, i64 12}
!115 = !{!93, !93, i64 0}
!116 = distinct !{!116, !21}
!117 = !{!32, !13, i64 24}
!118 = !{!32, !13, i64 8}
!119 = !{!32, !9, i64 0}
!120 = !{!32, !13, i64 16}
!121 = !{!33, !13, i64 8}
!122 = !{!33, !13, i64 16}
!123 = !{!15, !9, i64 88}
!124 = !{!125, !12, i64 2056}
!125 = !{!"", !126, i64 0, !127, i64 2064}
!126 = !{!"", !10, i64 0, !12, i64 2056}
!127 = !{!"", !10, i64 0, !10, i64 772, !10, i64 2224, !12, i64 3540, !12, i64 3544, !12, i64 3548}
!128 = distinct !{!128, !21}
!129 = distinct !{!129, !21}
!130 = distinct !{!130, !21}
!131 = distinct !{!131, !21}
!132 = distinct !{!132, !21, !81, !82}
!133 = distinct !{!133, !21, !81, !82}
!134 = !{!33, !9, i64 0}
!135 = !{!6, !14, i64 120}
!136 = !{!6, !12, i64 48}
!137 = distinct !{!137, !62}
!138 = distinct !{!138, !21}
!139 = distinct !{!139, !21}
!140 = distinct !{!140, !21}
!141 = distinct !{!141, !62}
!142 = !{!6, !16, i64 248}
!143 = !{!6, !8, i64 0}
!144 = distinct !{!144, !62}
!145 = distinct !{!145, !21}
