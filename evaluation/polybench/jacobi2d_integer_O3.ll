; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str.1.1 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8) #12
  %4 = ptrtoaddr ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 900, i32 noundef 8) #12
  %6 = ptrtoaddr ptr %5 to i64
  %7 = sub i64 %6, %4
  %8 = icmp ult i64 %7, 16
  br label %9

9:                                                ; preds = %121, %2
  %10 = phi i64 [ 0, %2 ], [ %122, %121 ]
  %11 = trunc nuw nsw i64 %10 to i32
  %12 = sitofp i32 %11 to double
  %13 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %10
  %14 = getelementptr inbounds nuw [240 x i8], ptr %5, i64 %10
  br i1 %8, label %106, label %15

15:                                               ; preds = %9
  %16 = insertelement <2 x double> poison, double %12, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 2.000000e+00, double 3.000000e+00>, <2 x double> splat (double 2.000000e+00))
  %19 = fdiv <2 x double> %18, splat (double 3.000000e+01)
  store <2 x double> %19, ptr %13, align 8, !tbaa !8
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 3.000000e+00, double 4.000000e+00>, <2 x double> splat (double 3.000000e+00))
  %21 = fdiv <2 x double> %20, splat (double 3.000000e+01)
  store <2 x double> %21, ptr %14, align 8, !tbaa !8
  %22 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 4.000000e+00, double 5.000000e+00>, <2 x double> splat (double 2.000000e+00))
  %23 = fdiv <2 x double> %22, splat (double 3.000000e+01)
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <2 x double> %23, ptr %24, align 8, !tbaa !8
  %25 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 5.000000e+00, double 6.000000e+00>, <2 x double> splat (double 3.000000e+00))
  %26 = fdiv <2 x double> %25, splat (double 3.000000e+01)
  %27 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <2 x double> %26, ptr %27, align 8, !tbaa !8
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 6.000000e+00, double 7.000000e+00>, <2 x double> splat (double 2.000000e+00))
  %29 = fdiv <2 x double> %28, splat (double 3.000000e+01)
  %30 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store <2 x double> %29, ptr %30, align 8, !tbaa !8
  %31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 7.000000e+00, double 8.000000e+00>, <2 x double> splat (double 3.000000e+00))
  %32 = fdiv <2 x double> %31, splat (double 3.000000e+01)
  %33 = getelementptr inbounds nuw i8, ptr %14, i64 32
  store <2 x double> %32, ptr %33, align 8, !tbaa !8
  %34 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 8.000000e+00, double 9.000000e+00>, <2 x double> splat (double 2.000000e+00))
  %35 = fdiv <2 x double> %34, splat (double 3.000000e+01)
  %36 = getelementptr inbounds nuw i8, ptr %13, i64 48
  store <2 x double> %35, ptr %36, align 8, !tbaa !8
  %37 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 9.000000e+00, double 1.000000e+01>, <2 x double> splat (double 3.000000e+00))
  %38 = fdiv <2 x double> %37, splat (double 3.000000e+01)
  %39 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store <2 x double> %38, ptr %39, align 8, !tbaa !8
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 1.000000e+01, double 1.100000e+01>, <2 x double> splat (double 2.000000e+00))
  %41 = fdiv <2 x double> %40, splat (double 3.000000e+01)
  %42 = getelementptr inbounds nuw i8, ptr %13, i64 64
  store <2 x double> %41, ptr %42, align 8, !tbaa !8
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 1.100000e+01, double 1.200000e+01>, <2 x double> splat (double 3.000000e+00))
  %44 = fdiv <2 x double> %43, splat (double 3.000000e+01)
  %45 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store <2 x double> %44, ptr %45, align 8, !tbaa !8
  %46 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 1.200000e+01, double 1.300000e+01>, <2 x double> splat (double 2.000000e+00))
  %47 = fdiv <2 x double> %46, splat (double 3.000000e+01)
  %48 = getelementptr inbounds nuw i8, ptr %13, i64 80
  store <2 x double> %47, ptr %48, align 8, !tbaa !8
  %49 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 1.300000e+01, double 1.400000e+01>, <2 x double> splat (double 3.000000e+00))
  %50 = fdiv <2 x double> %49, splat (double 3.000000e+01)
  %51 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store <2 x double> %50, ptr %51, align 8, !tbaa !8
  %52 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 1.400000e+01, double 1.500000e+01>, <2 x double> splat (double 2.000000e+00))
  %53 = fdiv <2 x double> %52, splat (double 3.000000e+01)
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 96
  store <2 x double> %53, ptr %54, align 8, !tbaa !8
  %55 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 1.500000e+01, double 1.600000e+01>, <2 x double> splat (double 3.000000e+00))
  %56 = fdiv <2 x double> %55, splat (double 3.000000e+01)
  %57 = getelementptr inbounds nuw i8, ptr %14, i64 96
  store <2 x double> %56, ptr %57, align 8, !tbaa !8
  %58 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 1.600000e+01, double 1.700000e+01>, <2 x double> splat (double 2.000000e+00))
  %59 = fdiv <2 x double> %58, splat (double 3.000000e+01)
  %60 = getelementptr inbounds nuw i8, ptr %13, i64 112
  store <2 x double> %59, ptr %60, align 8, !tbaa !8
  %61 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 1.700000e+01, double 1.800000e+01>, <2 x double> splat (double 3.000000e+00))
  %62 = fdiv <2 x double> %61, splat (double 3.000000e+01)
  %63 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store <2 x double> %62, ptr %63, align 8, !tbaa !8
  %64 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 1.800000e+01, double 1.900000e+01>, <2 x double> splat (double 2.000000e+00))
  %65 = fdiv <2 x double> %64, splat (double 3.000000e+01)
  %66 = getelementptr inbounds nuw i8, ptr %13, i64 128
  store <2 x double> %65, ptr %66, align 8, !tbaa !8
  %67 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 1.900000e+01, double 2.000000e+01>, <2 x double> splat (double 3.000000e+00))
  %68 = fdiv <2 x double> %67, splat (double 3.000000e+01)
  %69 = getelementptr inbounds nuw i8, ptr %14, i64 128
  store <2 x double> %68, ptr %69, align 8, !tbaa !8
  %70 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 2.000000e+01, double 2.100000e+01>, <2 x double> splat (double 2.000000e+00))
  %71 = fdiv <2 x double> %70, splat (double 3.000000e+01)
  %72 = getelementptr inbounds nuw i8, ptr %13, i64 144
  store <2 x double> %71, ptr %72, align 8, !tbaa !8
  %73 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 2.100000e+01, double 2.200000e+01>, <2 x double> splat (double 3.000000e+00))
  %74 = fdiv <2 x double> %73, splat (double 3.000000e+01)
  %75 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store <2 x double> %74, ptr %75, align 8, !tbaa !8
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 2.200000e+01, double 2.300000e+01>, <2 x double> splat (double 2.000000e+00))
  %77 = fdiv <2 x double> %76, splat (double 3.000000e+01)
  %78 = getelementptr inbounds nuw i8, ptr %13, i64 160
  store <2 x double> %77, ptr %78, align 8, !tbaa !8
  %79 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 2.300000e+01, double 2.400000e+01>, <2 x double> splat (double 3.000000e+00))
  %80 = fdiv <2 x double> %79, splat (double 3.000000e+01)
  %81 = getelementptr inbounds nuw i8, ptr %14, i64 160
  store <2 x double> %80, ptr %81, align 8, !tbaa !8
  %82 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 2.400000e+01, double 2.500000e+01>, <2 x double> splat (double 2.000000e+00))
  %83 = fdiv <2 x double> %82, splat (double 3.000000e+01)
  %84 = getelementptr inbounds nuw i8, ptr %13, i64 176
  store <2 x double> %83, ptr %84, align 8, !tbaa !8
  %85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 2.500000e+01, double 2.600000e+01>, <2 x double> splat (double 3.000000e+00))
  %86 = fdiv <2 x double> %85, splat (double 3.000000e+01)
  %87 = getelementptr inbounds nuw i8, ptr %14, i64 176
  store <2 x double> %86, ptr %87, align 8, !tbaa !8
  %88 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 2.600000e+01, double 2.700000e+01>, <2 x double> splat (double 2.000000e+00))
  %89 = fdiv <2 x double> %88, splat (double 3.000000e+01)
  %90 = getelementptr inbounds nuw i8, ptr %13, i64 192
  store <2 x double> %89, ptr %90, align 8, !tbaa !8
  %91 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 2.700000e+01, double 2.800000e+01>, <2 x double> splat (double 3.000000e+00))
  %92 = fdiv <2 x double> %91, splat (double 3.000000e+01)
  %93 = getelementptr inbounds nuw i8, ptr %14, i64 192
  store <2 x double> %92, ptr %93, align 8, !tbaa !8
  %94 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 2.800000e+01, double 2.900000e+01>, <2 x double> splat (double 2.000000e+00))
  %95 = fdiv <2 x double> %94, splat (double 3.000000e+01)
  %96 = getelementptr inbounds nuw i8, ptr %13, i64 208
  store <2 x double> %95, ptr %96, align 8, !tbaa !8
  %97 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 2.900000e+01, double 3.000000e+01>, <2 x double> splat (double 3.000000e+00))
  %98 = fdiv <2 x double> %97, splat (double 3.000000e+01)
  %99 = getelementptr inbounds nuw i8, ptr %14, i64 208
  store <2 x double> %98, ptr %99, align 8, !tbaa !8
  %100 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 3.000000e+01, double 3.100000e+01>, <2 x double> splat (double 2.000000e+00))
  %101 = fdiv <2 x double> %100, splat (double 3.000000e+01)
  %102 = getelementptr inbounds nuw i8, ptr %13, i64 224
  store <2 x double> %101, ptr %102, align 8, !tbaa !8
  %103 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double 3.100000e+01, double 3.200000e+01>, <2 x double> splat (double 3.000000e+00))
  %104 = fdiv <2 x double> %103, splat (double 3.000000e+01)
  %105 = getelementptr inbounds nuw i8, ptr %14, i64 224
  store <2 x double> %104, ptr %105, align 8, !tbaa !8
  br label %121

106:                                              ; preds = %106, %9
  %107 = phi i64 [ %119, %106 ], [ 0, %9 ]
  %108 = trunc i64 %107 to i32
  %109 = add i32 %108, 2
  %110 = uitofp nneg i32 %109 to double
  %111 = tail call double @llvm.fmuladd.f64(double %12, double %110, double 2.000000e+00)
  %112 = fdiv double %111, 3.000000e+01
  %113 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %107
  store double %112, ptr %113, align 8, !tbaa !8
  %114 = add i32 %108, 3
  %115 = uitofp nneg i32 %114 to double
  %116 = tail call double @llvm.fmuladd.f64(double %12, double %115, double 3.000000e+00)
  %117 = fdiv double %116, 3.000000e+01
  %118 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %107
  store double %117, ptr %118, align 8, !tbaa !8
  %119 = add nuw nsw i64 %107, 1
  %120 = icmp eq i64 %119, 30
  br i1 %120, label %121, label %106, !llvm.loop !10

121:                                              ; preds = %106, %15
  %122 = add nuw nsw i64 %10, 1
  %123 = icmp eq i64 %122, 30
  br i1 %123, label %124, label %9, !llvm.loop !13

124:                                              ; preds = %121
  %125 = getelementptr i8, ptr %3, i64 248
  %126 = getelementptr i8, ptr %3, i64 6952
  %127 = getelementptr i8, ptr %5, i64 8
  %128 = getelementptr i8, ptr %5, i64 7192
  %129 = getelementptr i8, ptr %5, i64 248
  %130 = getelementptr i8, ptr %5, i64 6952
  %131 = getelementptr i8, ptr %3, i64 8
  %132 = getelementptr i8, ptr %3, i64 7192
  %133 = icmp ult ptr %129, %132
  %134 = icmp ult ptr %131, %130
  %135 = and i1 %133, %134
  %136 = icmp ult ptr %125, %128
  %137 = icmp ult ptr %127, %126
  %138 = and i1 %136, %137
  br label %139

139:                                              ; preds = %653, %124
  %140 = phi i32 [ %654, %653 ], [ 0, %124 ]
  br label %141

141:                                              ; preds = %395, %139
  %142 = phi i64 [ 1, %139 ], [ %144, %395 ]
  %143 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %142
  %144 = add nuw nsw i64 %142, 1
  %145 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %144
  %146 = getelementptr i8, ptr %143, i64 -240
  %147 = getelementptr inbounds nuw [240 x i8], ptr %5, i64 %142
  br i1 %135, label %358, label %148

148:                                              ; preds = %141
  %149 = getelementptr i8, ptr %143, i64 8
  %150 = getelementptr i8, ptr %143, i64 24
  %151 = load <2 x double>, ptr %149, align 8, !tbaa !8, !alias.scope !14
  %152 = load <2 x double>, ptr %150, align 8, !tbaa !8, !alias.scope !14
  %153 = getelementptr i8, ptr %143, i64 16
  %154 = load <2 x double>, ptr %143, align 8, !tbaa !8, !alias.scope !14
  %155 = load <2 x double>, ptr %153, align 8, !tbaa !8, !alias.scope !14
  %156 = fadd <2 x double> %151, %154
  %157 = fadd <2 x double> %152, %155
  %158 = getelementptr inbounds nuw i8, ptr %143, i64 32
  %159 = load <2 x double>, ptr %158, align 8, !tbaa !8, !alias.scope !14
  %160 = fadd <2 x double> %156, %155
  %161 = fadd <2 x double> %157, %159
  %162 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %163 = getelementptr inbounds nuw i8, ptr %145, i64 24
  %164 = load <2 x double>, ptr %162, align 8, !tbaa !8, !alias.scope !14
  %165 = load <2 x double>, ptr %163, align 8, !tbaa !8, !alias.scope !14
  %166 = fadd <2 x double> %160, %164
  %167 = fadd <2 x double> %161, %165
  %168 = getelementptr i8, ptr %143, i64 -232
  %169 = getelementptr i8, ptr %143, i64 -216
  %170 = load <2 x double>, ptr %168, align 8, !tbaa !8, !alias.scope !14
  %171 = load <2 x double>, ptr %169, align 8, !tbaa !8, !alias.scope !14
  %172 = fadd <2 x double> %166, %170
  %173 = fadd <2 x double> %167, %171
  %174 = fmul <2 x double> %172, splat (double 2.000000e-01)
  %175 = fmul <2 x double> %173, splat (double 2.000000e-01)
  %176 = getelementptr inbounds nuw i8, ptr %147, i64 8
  %177 = getelementptr inbounds nuw i8, ptr %147, i64 24
  store <2 x double> %174, ptr %176, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %175, ptr %177, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  %178 = getelementptr i8, ptr %143, i64 40
  %179 = getelementptr i8, ptr %143, i64 56
  %180 = load <2 x double>, ptr %178, align 8, !tbaa !8, !alias.scope !14
  %181 = load <2 x double>, ptr %179, align 8, !tbaa !8, !alias.scope !14
  %182 = getelementptr i8, ptr %143, i64 32
  %183 = getelementptr i8, ptr %143, i64 48
  %184 = load <2 x double>, ptr %182, align 8, !tbaa !8, !alias.scope !14
  %185 = load <2 x double>, ptr %183, align 8, !tbaa !8, !alias.scope !14
  %186 = fadd <2 x double> %180, %184
  %187 = fadd <2 x double> %181, %185
  %188 = getelementptr inbounds nuw i8, ptr %143, i64 64
  %189 = load <2 x double>, ptr %188, align 8, !tbaa !8, !alias.scope !14
  %190 = fadd <2 x double> %186, %185
  %191 = fadd <2 x double> %187, %189
  %192 = getelementptr inbounds nuw i8, ptr %145, i64 40
  %193 = getelementptr inbounds nuw i8, ptr %145, i64 56
  %194 = load <2 x double>, ptr %192, align 8, !tbaa !8, !alias.scope !14
  %195 = load <2 x double>, ptr %193, align 8, !tbaa !8, !alias.scope !14
  %196 = fadd <2 x double> %190, %194
  %197 = fadd <2 x double> %191, %195
  %198 = getelementptr i8, ptr %143, i64 -200
  %199 = getelementptr i8, ptr %143, i64 -184
  %200 = load <2 x double>, ptr %198, align 8, !tbaa !8, !alias.scope !14
  %201 = load <2 x double>, ptr %199, align 8, !tbaa !8, !alias.scope !14
  %202 = fadd <2 x double> %196, %200
  %203 = fadd <2 x double> %197, %201
  %204 = fmul <2 x double> %202, splat (double 2.000000e-01)
  %205 = fmul <2 x double> %203, splat (double 2.000000e-01)
  %206 = getelementptr inbounds nuw i8, ptr %147, i64 40
  %207 = getelementptr inbounds nuw i8, ptr %147, i64 56
  store <2 x double> %204, ptr %206, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %205, ptr %207, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  %208 = getelementptr i8, ptr %143, i64 72
  %209 = getelementptr i8, ptr %143, i64 88
  %210 = load <2 x double>, ptr %208, align 8, !tbaa !8, !alias.scope !14
  %211 = load <2 x double>, ptr %209, align 8, !tbaa !8, !alias.scope !14
  %212 = getelementptr i8, ptr %143, i64 64
  %213 = getelementptr i8, ptr %143, i64 80
  %214 = load <2 x double>, ptr %212, align 8, !tbaa !8, !alias.scope !14
  %215 = load <2 x double>, ptr %213, align 8, !tbaa !8, !alias.scope !14
  %216 = fadd <2 x double> %210, %214
  %217 = fadd <2 x double> %211, %215
  %218 = getelementptr inbounds nuw i8, ptr %143, i64 96
  %219 = load <2 x double>, ptr %218, align 8, !tbaa !8, !alias.scope !14
  %220 = fadd <2 x double> %216, %215
  %221 = fadd <2 x double> %217, %219
  %222 = getelementptr inbounds nuw i8, ptr %145, i64 72
  %223 = getelementptr inbounds nuw i8, ptr %145, i64 88
  %224 = load <2 x double>, ptr %222, align 8, !tbaa !8, !alias.scope !14
  %225 = load <2 x double>, ptr %223, align 8, !tbaa !8, !alias.scope !14
  %226 = fadd <2 x double> %220, %224
  %227 = fadd <2 x double> %221, %225
  %228 = getelementptr i8, ptr %143, i64 -168
  %229 = getelementptr i8, ptr %143, i64 -152
  %230 = load <2 x double>, ptr %228, align 8, !tbaa !8, !alias.scope !14
  %231 = load <2 x double>, ptr %229, align 8, !tbaa !8, !alias.scope !14
  %232 = fadd <2 x double> %226, %230
  %233 = fadd <2 x double> %227, %231
  %234 = fmul <2 x double> %232, splat (double 2.000000e-01)
  %235 = fmul <2 x double> %233, splat (double 2.000000e-01)
  %236 = getelementptr inbounds nuw i8, ptr %147, i64 72
  %237 = getelementptr inbounds nuw i8, ptr %147, i64 88
  store <2 x double> %234, ptr %236, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %235, ptr %237, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  %238 = getelementptr i8, ptr %143, i64 104
  %239 = getelementptr i8, ptr %143, i64 120
  %240 = load <2 x double>, ptr %238, align 8, !tbaa !8, !alias.scope !14
  %241 = load <2 x double>, ptr %239, align 8, !tbaa !8, !alias.scope !14
  %242 = getelementptr i8, ptr %143, i64 96
  %243 = getelementptr i8, ptr %143, i64 112
  %244 = load <2 x double>, ptr %242, align 8, !tbaa !8, !alias.scope !14
  %245 = load <2 x double>, ptr %243, align 8, !tbaa !8, !alias.scope !14
  %246 = fadd <2 x double> %240, %244
  %247 = fadd <2 x double> %241, %245
  %248 = getelementptr inbounds nuw i8, ptr %143, i64 128
  %249 = load <2 x double>, ptr %248, align 8, !tbaa !8, !alias.scope !14
  %250 = fadd <2 x double> %246, %245
  %251 = fadd <2 x double> %247, %249
  %252 = getelementptr inbounds nuw i8, ptr %145, i64 104
  %253 = getelementptr inbounds nuw i8, ptr %145, i64 120
  %254 = load <2 x double>, ptr %252, align 8, !tbaa !8, !alias.scope !14
  %255 = load <2 x double>, ptr %253, align 8, !tbaa !8, !alias.scope !14
  %256 = fadd <2 x double> %250, %254
  %257 = fadd <2 x double> %251, %255
  %258 = getelementptr i8, ptr %143, i64 -136
  %259 = getelementptr i8, ptr %143, i64 -120
  %260 = load <2 x double>, ptr %258, align 8, !tbaa !8, !alias.scope !14
  %261 = load <2 x double>, ptr %259, align 8, !tbaa !8, !alias.scope !14
  %262 = fadd <2 x double> %256, %260
  %263 = fadd <2 x double> %257, %261
  %264 = fmul <2 x double> %262, splat (double 2.000000e-01)
  %265 = fmul <2 x double> %263, splat (double 2.000000e-01)
  %266 = getelementptr inbounds nuw i8, ptr %147, i64 104
  %267 = getelementptr inbounds nuw i8, ptr %147, i64 120
  store <2 x double> %264, ptr %266, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %265, ptr %267, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  %268 = getelementptr i8, ptr %143, i64 136
  %269 = getelementptr i8, ptr %143, i64 152
  %270 = load <2 x double>, ptr %268, align 8, !tbaa !8, !alias.scope !14
  %271 = load <2 x double>, ptr %269, align 8, !tbaa !8, !alias.scope !14
  %272 = getelementptr i8, ptr %143, i64 128
  %273 = getelementptr i8, ptr %143, i64 144
  %274 = load <2 x double>, ptr %272, align 8, !tbaa !8, !alias.scope !14
  %275 = load <2 x double>, ptr %273, align 8, !tbaa !8, !alias.scope !14
  %276 = fadd <2 x double> %270, %274
  %277 = fadd <2 x double> %271, %275
  %278 = getelementptr inbounds nuw i8, ptr %143, i64 160
  %279 = load <2 x double>, ptr %278, align 8, !tbaa !8, !alias.scope !14
  %280 = fadd <2 x double> %276, %275
  %281 = fadd <2 x double> %277, %279
  %282 = getelementptr inbounds nuw i8, ptr %145, i64 136
  %283 = getelementptr inbounds nuw i8, ptr %145, i64 152
  %284 = load <2 x double>, ptr %282, align 8, !tbaa !8, !alias.scope !14
  %285 = load <2 x double>, ptr %283, align 8, !tbaa !8, !alias.scope !14
  %286 = fadd <2 x double> %280, %284
  %287 = fadd <2 x double> %281, %285
  %288 = getelementptr i8, ptr %143, i64 -104
  %289 = getelementptr i8, ptr %143, i64 -88
  %290 = load <2 x double>, ptr %288, align 8, !tbaa !8, !alias.scope !14
  %291 = load <2 x double>, ptr %289, align 8, !tbaa !8, !alias.scope !14
  %292 = fadd <2 x double> %286, %290
  %293 = fadd <2 x double> %287, %291
  %294 = fmul <2 x double> %292, splat (double 2.000000e-01)
  %295 = fmul <2 x double> %293, splat (double 2.000000e-01)
  %296 = getelementptr inbounds nuw i8, ptr %147, i64 136
  %297 = getelementptr inbounds nuw i8, ptr %147, i64 152
  store <2 x double> %294, ptr %296, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %295, ptr %297, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  %298 = getelementptr i8, ptr %143, i64 168
  %299 = getelementptr i8, ptr %143, i64 184
  %300 = load <2 x double>, ptr %298, align 8, !tbaa !8, !alias.scope !14
  %301 = load <2 x double>, ptr %299, align 8, !tbaa !8, !alias.scope !14
  %302 = getelementptr i8, ptr %143, i64 160
  %303 = getelementptr i8, ptr %143, i64 176
  %304 = load <2 x double>, ptr %302, align 8, !tbaa !8, !alias.scope !14
  %305 = load <2 x double>, ptr %303, align 8, !tbaa !8, !alias.scope !14
  %306 = fadd <2 x double> %300, %304
  %307 = fadd <2 x double> %301, %305
  %308 = getelementptr inbounds nuw i8, ptr %143, i64 192
  %309 = load <2 x double>, ptr %308, align 8, !tbaa !8, !alias.scope !14
  %310 = fadd <2 x double> %306, %305
  %311 = fadd <2 x double> %307, %309
  %312 = getelementptr inbounds nuw i8, ptr %145, i64 168
  %313 = getelementptr inbounds nuw i8, ptr %145, i64 184
  %314 = load <2 x double>, ptr %312, align 8, !tbaa !8, !alias.scope !14
  %315 = load <2 x double>, ptr %313, align 8, !tbaa !8, !alias.scope !14
  %316 = fadd <2 x double> %310, %314
  %317 = fadd <2 x double> %311, %315
  %318 = getelementptr i8, ptr %143, i64 -72
  %319 = getelementptr i8, ptr %143, i64 -56
  %320 = load <2 x double>, ptr %318, align 8, !tbaa !8, !alias.scope !14
  %321 = load <2 x double>, ptr %319, align 8, !tbaa !8, !alias.scope !14
  %322 = fadd <2 x double> %316, %320
  %323 = fadd <2 x double> %317, %321
  %324 = fmul <2 x double> %322, splat (double 2.000000e-01)
  %325 = fmul <2 x double> %323, splat (double 2.000000e-01)
  %326 = getelementptr inbounds nuw i8, ptr %147, i64 168
  %327 = getelementptr inbounds nuw i8, ptr %147, i64 184
  store <2 x double> %324, ptr %326, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %325, ptr %327, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  %328 = getelementptr i8, ptr %143, i64 200
  %329 = getelementptr i8, ptr %143, i64 216
  %330 = load <2 x double>, ptr %328, align 8, !tbaa !8, !alias.scope !14
  %331 = load <2 x double>, ptr %329, align 8, !tbaa !8, !alias.scope !14
  %332 = getelementptr i8, ptr %143, i64 192
  %333 = getelementptr i8, ptr %143, i64 208
  %334 = load <2 x double>, ptr %332, align 8, !tbaa !8, !alias.scope !14
  %335 = load <2 x double>, ptr %333, align 8, !tbaa !8, !alias.scope !14
  %336 = fadd <2 x double> %330, %334
  %337 = fadd <2 x double> %331, %335
  %338 = getelementptr inbounds nuw i8, ptr %143, i64 224
  %339 = load <2 x double>, ptr %338, align 8, !tbaa !8, !alias.scope !14
  %340 = fadd <2 x double> %336, %335
  %341 = fadd <2 x double> %337, %339
  %342 = getelementptr inbounds nuw i8, ptr %145, i64 200
  %343 = getelementptr inbounds nuw i8, ptr %145, i64 216
  %344 = load <2 x double>, ptr %342, align 8, !tbaa !8, !alias.scope !14
  %345 = load <2 x double>, ptr %343, align 8, !tbaa !8, !alias.scope !14
  %346 = fadd <2 x double> %340, %344
  %347 = fadd <2 x double> %341, %345
  %348 = getelementptr i8, ptr %143, i64 -40
  %349 = getelementptr i8, ptr %143, i64 -24
  %350 = load <2 x double>, ptr %348, align 8, !tbaa !8, !alias.scope !14
  %351 = load <2 x double>, ptr %349, align 8, !tbaa !8, !alias.scope !14
  %352 = fadd <2 x double> %346, %350
  %353 = fadd <2 x double> %347, %351
  %354 = fmul <2 x double> %352, splat (double 2.000000e-01)
  %355 = fmul <2 x double> %353, splat (double 2.000000e-01)
  %356 = getelementptr inbounds nuw i8, ptr %147, i64 200
  %357 = getelementptr inbounds nuw i8, ptr %147, i64 216
  store <2 x double> %354, ptr %356, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %355, ptr %357, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  br label %395

358:                                              ; preds = %358, %141
  %359 = phi i64 [ %377, %358 ], [ 1, %141 ]
  %360 = add nuw nsw i64 %359, 1
  %361 = getelementptr [8 x i8], ptr %143, i64 %359
  %362 = load double, ptr %361, align 8, !tbaa !8
  %363 = getelementptr i8, ptr %361, i64 -8
  %364 = load double, ptr %363, align 8, !tbaa !8
  %365 = fadd double %362, %364
  %366 = getelementptr inbounds nuw [8 x i8], ptr %143, i64 %360
  %367 = load double, ptr %366, align 8, !tbaa !8
  %368 = fadd double %365, %367
  %369 = getelementptr inbounds nuw [8 x i8], ptr %145, i64 %359
  %370 = load double, ptr %369, align 8, !tbaa !8
  %371 = fadd double %368, %370
  %372 = getelementptr inbounds nuw [8 x i8], ptr %146, i64 %359
  %373 = load double, ptr %372, align 8, !tbaa !8
  %374 = fadd double %371, %373
  %375 = fmul double %374, 2.000000e-01
  %376 = getelementptr inbounds nuw [8 x i8], ptr %147, i64 %359
  store double %375, ptr %376, align 8, !tbaa !8
  %377 = add nuw nsw i64 %359, 2
  %378 = getelementptr [8 x i8], ptr %143, i64 %360
  %379 = load double, ptr %378, align 8, !tbaa !8
  %380 = getelementptr i8, ptr %378, i64 -8
  %381 = load double, ptr %380, align 8, !tbaa !8
  %382 = fadd double %379, %381
  %383 = getelementptr inbounds nuw [8 x i8], ptr %143, i64 %377
  %384 = load double, ptr %383, align 8, !tbaa !8
  %385 = fadd double %382, %384
  %386 = getelementptr inbounds nuw [8 x i8], ptr %145, i64 %360
  %387 = load double, ptr %386, align 8, !tbaa !8
  %388 = fadd double %385, %387
  %389 = getelementptr inbounds nuw [8 x i8], ptr %146, i64 %360
  %390 = load double, ptr %389, align 8, !tbaa !8
  %391 = fadd double %388, %390
  %392 = fmul double %391, 2.000000e-01
  %393 = getelementptr inbounds nuw [8 x i8], ptr %147, i64 %360
  store double %392, ptr %393, align 8, !tbaa !8
  %394 = icmp eq i64 %377, 29
  br i1 %394, label %395, label %358, !llvm.loop !19

395:                                              ; preds = %358, %148
  %396 = icmp eq i64 %144, 29
  br i1 %396, label %397, label %141, !llvm.loop !20

397:                                              ; preds = %651, %395
  %398 = phi i64 [ %400, %651 ], [ 1, %395 ]
  %399 = getelementptr inbounds nuw [240 x i8], ptr %5, i64 %398
  %400 = add nuw nsw i64 %398, 1
  %401 = getelementptr inbounds nuw [240 x i8], ptr %5, i64 %400
  %402 = getelementptr i8, ptr %399, i64 -240
  %403 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %398
  br i1 %138, label %614, label %404

404:                                              ; preds = %397
  %405 = getelementptr i8, ptr %399, i64 8
  %406 = getelementptr i8, ptr %399, i64 24
  %407 = load <2 x double>, ptr %405, align 8, !tbaa !8, !alias.scope !21
  %408 = load <2 x double>, ptr %406, align 8, !tbaa !8, !alias.scope !21
  %409 = getelementptr i8, ptr %399, i64 16
  %410 = load <2 x double>, ptr %399, align 8, !tbaa !8, !alias.scope !21
  %411 = load <2 x double>, ptr %409, align 8, !tbaa !8, !alias.scope !21
  %412 = fadd <2 x double> %407, %410
  %413 = fadd <2 x double> %408, %411
  %414 = getelementptr inbounds nuw i8, ptr %399, i64 32
  %415 = load <2 x double>, ptr %414, align 8, !tbaa !8, !alias.scope !21
  %416 = fadd <2 x double> %412, %411
  %417 = fadd <2 x double> %413, %415
  %418 = getelementptr inbounds nuw i8, ptr %401, i64 8
  %419 = getelementptr inbounds nuw i8, ptr %401, i64 24
  %420 = load <2 x double>, ptr %418, align 8, !tbaa !8, !alias.scope !21
  %421 = load <2 x double>, ptr %419, align 8, !tbaa !8, !alias.scope !21
  %422 = fadd <2 x double> %416, %420
  %423 = fadd <2 x double> %417, %421
  %424 = getelementptr i8, ptr %399, i64 -232
  %425 = getelementptr i8, ptr %399, i64 -216
  %426 = load <2 x double>, ptr %424, align 8, !tbaa !8, !alias.scope !21
  %427 = load <2 x double>, ptr %425, align 8, !tbaa !8, !alias.scope !21
  %428 = fadd <2 x double> %422, %426
  %429 = fadd <2 x double> %423, %427
  %430 = fmul <2 x double> %428, splat (double 2.000000e-01)
  %431 = fmul <2 x double> %429, splat (double 2.000000e-01)
  %432 = getelementptr inbounds nuw i8, ptr %403, i64 8
  %433 = getelementptr inbounds nuw i8, ptr %403, i64 24
  store <2 x double> %430, ptr %432, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %431, ptr %433, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %434 = getelementptr i8, ptr %399, i64 40
  %435 = getelementptr i8, ptr %399, i64 56
  %436 = load <2 x double>, ptr %434, align 8, !tbaa !8, !alias.scope !21
  %437 = load <2 x double>, ptr %435, align 8, !tbaa !8, !alias.scope !21
  %438 = getelementptr i8, ptr %399, i64 32
  %439 = getelementptr i8, ptr %399, i64 48
  %440 = load <2 x double>, ptr %438, align 8, !tbaa !8, !alias.scope !21
  %441 = load <2 x double>, ptr %439, align 8, !tbaa !8, !alias.scope !21
  %442 = fadd <2 x double> %436, %440
  %443 = fadd <2 x double> %437, %441
  %444 = getelementptr inbounds nuw i8, ptr %399, i64 64
  %445 = load <2 x double>, ptr %444, align 8, !tbaa !8, !alias.scope !21
  %446 = fadd <2 x double> %442, %441
  %447 = fadd <2 x double> %443, %445
  %448 = getelementptr inbounds nuw i8, ptr %401, i64 40
  %449 = getelementptr inbounds nuw i8, ptr %401, i64 56
  %450 = load <2 x double>, ptr %448, align 8, !tbaa !8, !alias.scope !21
  %451 = load <2 x double>, ptr %449, align 8, !tbaa !8, !alias.scope !21
  %452 = fadd <2 x double> %446, %450
  %453 = fadd <2 x double> %447, %451
  %454 = getelementptr i8, ptr %399, i64 -200
  %455 = getelementptr i8, ptr %399, i64 -184
  %456 = load <2 x double>, ptr %454, align 8, !tbaa !8, !alias.scope !21
  %457 = load <2 x double>, ptr %455, align 8, !tbaa !8, !alias.scope !21
  %458 = fadd <2 x double> %452, %456
  %459 = fadd <2 x double> %453, %457
  %460 = fmul <2 x double> %458, splat (double 2.000000e-01)
  %461 = fmul <2 x double> %459, splat (double 2.000000e-01)
  %462 = getelementptr inbounds nuw i8, ptr %403, i64 40
  %463 = getelementptr inbounds nuw i8, ptr %403, i64 56
  store <2 x double> %460, ptr %462, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %461, ptr %463, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %464 = getelementptr i8, ptr %399, i64 72
  %465 = getelementptr i8, ptr %399, i64 88
  %466 = load <2 x double>, ptr %464, align 8, !tbaa !8, !alias.scope !21
  %467 = load <2 x double>, ptr %465, align 8, !tbaa !8, !alias.scope !21
  %468 = getelementptr i8, ptr %399, i64 64
  %469 = getelementptr i8, ptr %399, i64 80
  %470 = load <2 x double>, ptr %468, align 8, !tbaa !8, !alias.scope !21
  %471 = load <2 x double>, ptr %469, align 8, !tbaa !8, !alias.scope !21
  %472 = fadd <2 x double> %466, %470
  %473 = fadd <2 x double> %467, %471
  %474 = getelementptr inbounds nuw i8, ptr %399, i64 96
  %475 = load <2 x double>, ptr %474, align 8, !tbaa !8, !alias.scope !21
  %476 = fadd <2 x double> %472, %471
  %477 = fadd <2 x double> %473, %475
  %478 = getelementptr inbounds nuw i8, ptr %401, i64 72
  %479 = getelementptr inbounds nuw i8, ptr %401, i64 88
  %480 = load <2 x double>, ptr %478, align 8, !tbaa !8, !alias.scope !21
  %481 = load <2 x double>, ptr %479, align 8, !tbaa !8, !alias.scope !21
  %482 = fadd <2 x double> %476, %480
  %483 = fadd <2 x double> %477, %481
  %484 = getelementptr i8, ptr %399, i64 -168
  %485 = getelementptr i8, ptr %399, i64 -152
  %486 = load <2 x double>, ptr %484, align 8, !tbaa !8, !alias.scope !21
  %487 = load <2 x double>, ptr %485, align 8, !tbaa !8, !alias.scope !21
  %488 = fadd <2 x double> %482, %486
  %489 = fadd <2 x double> %483, %487
  %490 = fmul <2 x double> %488, splat (double 2.000000e-01)
  %491 = fmul <2 x double> %489, splat (double 2.000000e-01)
  %492 = getelementptr inbounds nuw i8, ptr %403, i64 72
  %493 = getelementptr inbounds nuw i8, ptr %403, i64 88
  store <2 x double> %490, ptr %492, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %491, ptr %493, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %494 = getelementptr i8, ptr %399, i64 104
  %495 = getelementptr i8, ptr %399, i64 120
  %496 = load <2 x double>, ptr %494, align 8, !tbaa !8, !alias.scope !21
  %497 = load <2 x double>, ptr %495, align 8, !tbaa !8, !alias.scope !21
  %498 = getelementptr i8, ptr %399, i64 96
  %499 = getelementptr i8, ptr %399, i64 112
  %500 = load <2 x double>, ptr %498, align 8, !tbaa !8, !alias.scope !21
  %501 = load <2 x double>, ptr %499, align 8, !tbaa !8, !alias.scope !21
  %502 = fadd <2 x double> %496, %500
  %503 = fadd <2 x double> %497, %501
  %504 = getelementptr inbounds nuw i8, ptr %399, i64 128
  %505 = load <2 x double>, ptr %504, align 8, !tbaa !8, !alias.scope !21
  %506 = fadd <2 x double> %502, %501
  %507 = fadd <2 x double> %503, %505
  %508 = getelementptr inbounds nuw i8, ptr %401, i64 104
  %509 = getelementptr inbounds nuw i8, ptr %401, i64 120
  %510 = load <2 x double>, ptr %508, align 8, !tbaa !8, !alias.scope !21
  %511 = load <2 x double>, ptr %509, align 8, !tbaa !8, !alias.scope !21
  %512 = fadd <2 x double> %506, %510
  %513 = fadd <2 x double> %507, %511
  %514 = getelementptr i8, ptr %399, i64 -136
  %515 = getelementptr i8, ptr %399, i64 -120
  %516 = load <2 x double>, ptr %514, align 8, !tbaa !8, !alias.scope !21
  %517 = load <2 x double>, ptr %515, align 8, !tbaa !8, !alias.scope !21
  %518 = fadd <2 x double> %512, %516
  %519 = fadd <2 x double> %513, %517
  %520 = fmul <2 x double> %518, splat (double 2.000000e-01)
  %521 = fmul <2 x double> %519, splat (double 2.000000e-01)
  %522 = getelementptr inbounds nuw i8, ptr %403, i64 104
  %523 = getelementptr inbounds nuw i8, ptr %403, i64 120
  store <2 x double> %520, ptr %522, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %521, ptr %523, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %524 = getelementptr i8, ptr %399, i64 136
  %525 = getelementptr i8, ptr %399, i64 152
  %526 = load <2 x double>, ptr %524, align 8, !tbaa !8, !alias.scope !21
  %527 = load <2 x double>, ptr %525, align 8, !tbaa !8, !alias.scope !21
  %528 = getelementptr i8, ptr %399, i64 128
  %529 = getelementptr i8, ptr %399, i64 144
  %530 = load <2 x double>, ptr %528, align 8, !tbaa !8, !alias.scope !21
  %531 = load <2 x double>, ptr %529, align 8, !tbaa !8, !alias.scope !21
  %532 = fadd <2 x double> %526, %530
  %533 = fadd <2 x double> %527, %531
  %534 = getelementptr inbounds nuw i8, ptr %399, i64 160
  %535 = load <2 x double>, ptr %534, align 8, !tbaa !8, !alias.scope !21
  %536 = fadd <2 x double> %532, %531
  %537 = fadd <2 x double> %533, %535
  %538 = getelementptr inbounds nuw i8, ptr %401, i64 136
  %539 = getelementptr inbounds nuw i8, ptr %401, i64 152
  %540 = load <2 x double>, ptr %538, align 8, !tbaa !8, !alias.scope !21
  %541 = load <2 x double>, ptr %539, align 8, !tbaa !8, !alias.scope !21
  %542 = fadd <2 x double> %536, %540
  %543 = fadd <2 x double> %537, %541
  %544 = getelementptr i8, ptr %399, i64 -104
  %545 = getelementptr i8, ptr %399, i64 -88
  %546 = load <2 x double>, ptr %544, align 8, !tbaa !8, !alias.scope !21
  %547 = load <2 x double>, ptr %545, align 8, !tbaa !8, !alias.scope !21
  %548 = fadd <2 x double> %542, %546
  %549 = fadd <2 x double> %543, %547
  %550 = fmul <2 x double> %548, splat (double 2.000000e-01)
  %551 = fmul <2 x double> %549, splat (double 2.000000e-01)
  %552 = getelementptr inbounds nuw i8, ptr %403, i64 136
  %553 = getelementptr inbounds nuw i8, ptr %403, i64 152
  store <2 x double> %550, ptr %552, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %551, ptr %553, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %554 = getelementptr i8, ptr %399, i64 168
  %555 = getelementptr i8, ptr %399, i64 184
  %556 = load <2 x double>, ptr %554, align 8, !tbaa !8, !alias.scope !21
  %557 = load <2 x double>, ptr %555, align 8, !tbaa !8, !alias.scope !21
  %558 = getelementptr i8, ptr %399, i64 160
  %559 = getelementptr i8, ptr %399, i64 176
  %560 = load <2 x double>, ptr %558, align 8, !tbaa !8, !alias.scope !21
  %561 = load <2 x double>, ptr %559, align 8, !tbaa !8, !alias.scope !21
  %562 = fadd <2 x double> %556, %560
  %563 = fadd <2 x double> %557, %561
  %564 = getelementptr inbounds nuw i8, ptr %399, i64 192
  %565 = load <2 x double>, ptr %564, align 8, !tbaa !8, !alias.scope !21
  %566 = fadd <2 x double> %562, %561
  %567 = fadd <2 x double> %563, %565
  %568 = getelementptr inbounds nuw i8, ptr %401, i64 168
  %569 = getelementptr inbounds nuw i8, ptr %401, i64 184
  %570 = load <2 x double>, ptr %568, align 8, !tbaa !8, !alias.scope !21
  %571 = load <2 x double>, ptr %569, align 8, !tbaa !8, !alias.scope !21
  %572 = fadd <2 x double> %566, %570
  %573 = fadd <2 x double> %567, %571
  %574 = getelementptr i8, ptr %399, i64 -72
  %575 = getelementptr i8, ptr %399, i64 -56
  %576 = load <2 x double>, ptr %574, align 8, !tbaa !8, !alias.scope !21
  %577 = load <2 x double>, ptr %575, align 8, !tbaa !8, !alias.scope !21
  %578 = fadd <2 x double> %572, %576
  %579 = fadd <2 x double> %573, %577
  %580 = fmul <2 x double> %578, splat (double 2.000000e-01)
  %581 = fmul <2 x double> %579, splat (double 2.000000e-01)
  %582 = getelementptr inbounds nuw i8, ptr %403, i64 168
  %583 = getelementptr inbounds nuw i8, ptr %403, i64 184
  store <2 x double> %580, ptr %582, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %581, ptr %583, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %584 = getelementptr i8, ptr %399, i64 200
  %585 = getelementptr i8, ptr %399, i64 216
  %586 = load <2 x double>, ptr %584, align 8, !tbaa !8, !alias.scope !21
  %587 = load <2 x double>, ptr %585, align 8, !tbaa !8, !alias.scope !21
  %588 = getelementptr i8, ptr %399, i64 192
  %589 = getelementptr i8, ptr %399, i64 208
  %590 = load <2 x double>, ptr %588, align 8, !tbaa !8, !alias.scope !21
  %591 = load <2 x double>, ptr %589, align 8, !tbaa !8, !alias.scope !21
  %592 = fadd <2 x double> %586, %590
  %593 = fadd <2 x double> %587, %591
  %594 = getelementptr inbounds nuw i8, ptr %399, i64 224
  %595 = load <2 x double>, ptr %594, align 8, !tbaa !8, !alias.scope !21
  %596 = fadd <2 x double> %592, %591
  %597 = fadd <2 x double> %593, %595
  %598 = getelementptr inbounds nuw i8, ptr %401, i64 200
  %599 = getelementptr inbounds nuw i8, ptr %401, i64 216
  %600 = load <2 x double>, ptr %598, align 8, !tbaa !8, !alias.scope !21
  %601 = load <2 x double>, ptr %599, align 8, !tbaa !8, !alias.scope !21
  %602 = fadd <2 x double> %596, %600
  %603 = fadd <2 x double> %597, %601
  %604 = getelementptr i8, ptr %399, i64 -40
  %605 = getelementptr i8, ptr %399, i64 -24
  %606 = load <2 x double>, ptr %604, align 8, !tbaa !8, !alias.scope !21
  %607 = load <2 x double>, ptr %605, align 8, !tbaa !8, !alias.scope !21
  %608 = fadd <2 x double> %602, %606
  %609 = fadd <2 x double> %603, %607
  %610 = fmul <2 x double> %608, splat (double 2.000000e-01)
  %611 = fmul <2 x double> %609, splat (double 2.000000e-01)
  %612 = getelementptr inbounds nuw i8, ptr %403, i64 200
  %613 = getelementptr inbounds nuw i8, ptr %403, i64 216
  store <2 x double> %610, ptr %612, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %611, ptr %613, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  br label %651

614:                                              ; preds = %614, %397
  %615 = phi i64 [ %633, %614 ], [ 1, %397 ]
  %616 = add nuw nsw i64 %615, 1
  %617 = getelementptr [8 x i8], ptr %399, i64 %615
  %618 = load double, ptr %617, align 8, !tbaa !8
  %619 = getelementptr i8, ptr %617, i64 -8
  %620 = load double, ptr %619, align 8, !tbaa !8
  %621 = fadd double %618, %620
  %622 = getelementptr inbounds nuw [8 x i8], ptr %399, i64 %616
  %623 = load double, ptr %622, align 8, !tbaa !8
  %624 = fadd double %621, %623
  %625 = getelementptr inbounds nuw [8 x i8], ptr %401, i64 %615
  %626 = load double, ptr %625, align 8, !tbaa !8
  %627 = fadd double %624, %626
  %628 = getelementptr inbounds nuw [8 x i8], ptr %402, i64 %615
  %629 = load double, ptr %628, align 8, !tbaa !8
  %630 = fadd double %627, %629
  %631 = fmul double %630, 2.000000e-01
  %632 = getelementptr inbounds nuw [8 x i8], ptr %403, i64 %615
  store double %631, ptr %632, align 8, !tbaa !8
  %633 = add nuw nsw i64 %615, 2
  %634 = getelementptr [8 x i8], ptr %399, i64 %616
  %635 = load double, ptr %634, align 8, !tbaa !8
  %636 = getelementptr i8, ptr %634, i64 -8
  %637 = load double, ptr %636, align 8, !tbaa !8
  %638 = fadd double %635, %637
  %639 = getelementptr inbounds nuw [8 x i8], ptr %399, i64 %633
  %640 = load double, ptr %639, align 8, !tbaa !8
  %641 = fadd double %638, %640
  %642 = getelementptr inbounds nuw [8 x i8], ptr %401, i64 %616
  %643 = load double, ptr %642, align 8, !tbaa !8
  %644 = fadd double %641, %643
  %645 = getelementptr inbounds nuw [8 x i8], ptr %402, i64 %616
  %646 = load double, ptr %645, align 8, !tbaa !8
  %647 = fadd double %644, %646
  %648 = fmul double %647, 2.000000e-01
  %649 = getelementptr inbounds nuw [8 x i8], ptr %403, i64 %616
  store double %648, ptr %649, align 8, !tbaa !8
  %650 = icmp eq i64 %633, 29
  br i1 %650, label %651, label %614, !llvm.loop !26

651:                                              ; preds = %614, %404
  %652 = icmp eq i64 %400, 29
  br i1 %652, label %653, label %397, !llvm.loop !27

653:                                              ; preds = %651
  %654 = add nuw nsw i32 %140, 1
  %655 = icmp eq i32 %654, 20
  br i1 %655, label %656, label %139, !llvm.loop !28

656:                                              ; preds = %653
  %657 = icmp sgt i32 %0, 42
  br i1 %657, label %658, label %695

658:                                              ; preds = %656
  %659 = load ptr, ptr %1, align 8, !tbaa !29
  %660 = load i8, ptr %659, align 1
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %662, label %695

662:                                              ; preds = %658
  %663 = load ptr, ptr @stderr, align 8, !tbaa !32
  %664 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 22, i64 1, ptr %663) #13
  %665 = load ptr, ptr @stderr, align 8, !tbaa !32
  %666 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %665, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #14
  br label %667

667:                                              ; preds = %687, %662
  %668 = phi i64 [ 0, %662 ], [ %688, %687 ]
  %669 = mul nuw nsw i64 %668, 30
  %670 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %668
  br label %671

671:                                              ; preds = %680, %667
  %672 = phi i64 [ 0, %667 ], [ %685, %680 ]
  %673 = add nuw nsw i64 %672, %669
  %674 = trunc nuw nsw i64 %673 to i32
  %675 = urem i32 %674, 20
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %680

677:                                              ; preds = %671
  %678 = load ptr, ptr @stderr, align 8, !tbaa !32
  %679 = tail call i32 @fputc(i32 10, ptr %678)
  br label %680

680:                                              ; preds = %677, %671
  %681 = load ptr, ptr @stderr, align 8, !tbaa !32
  %682 = getelementptr inbounds nuw [8 x i8], ptr %670, i64 %672
  %683 = load double, ptr %682, align 8, !tbaa !8
  %684 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %681, ptr noundef nonnull @.str.5, double noundef %683) #14
  %685 = add nuw nsw i64 %672, 1
  %686 = icmp eq i64 %685, 30
  br i1 %686, label %687, label %671, !llvm.loop !34

687:                                              ; preds = %680
  %688 = add nuw nsw i64 %668, 1
  %689 = icmp eq i64 %688, 30
  br i1 %689, label %690, label %667, !llvm.loop !35

690:                                              ; preds = %687
  %691 = load ptr, ptr @stderr, align 8, !tbaa !32
  %692 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %691, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #14
  %693 = load ptr, ptr @stderr, align 8, !tbaa !32
  %694 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %693) #13
  br label %695

695:                                              ; preds = %690, %658, %656
  tail call void @free(ptr noundef nonnull %3) #12
  tail call void @free(ptr noundef %5) #12
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #6 {
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #6 {
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #7 {
  %1 = load double, ptr @polybench_t_end, align 8, !tbaa !8
  %2 = load double, ptr @polybench_t_start, align 8, !tbaa !8
  %3 = fsub double %1, %2
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.1, double noundef %3)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #8 {
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = sext i32 %1 to i64
  %5 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %4), !nosanitize !36
  %6 = extractvalue { i64, i1 } %5, 1, !nosanitize !36
  br i1 %6, label %7, label %8, !prof !37, !nosanitize !36

7:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 12) #15, !nosanitize !36
  unreachable, !nosanitize !36

8:                                                ; preds = %2
  %9 = extractvalue { i64, i1 } %5, 0, !nosanitize !36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr null, ptr %3, align 8, !tbaa !38
  %10 = call i32 @posix_memalign(ptr noundef nonnull %3, i64 noundef 4096, i64 noundef %9) #12
  %11 = load ptr, ptr %3, align 8, !tbaa !38
  %12 = icmp eq ptr %11, null
  %13 = icmp ne i32 %10, 0
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load ptr, ptr @stderr, align 8, !tbaa !32
  %17 = call i64 @fwrite(ptr nonnull @.str.2.4, i64 50, i64 1, ptr %16) #13
  call void @exit(i32 noundef 1) #16
  unreachable

18:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret ptr %11
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nomerge noreturn nounwind }
attributes #16 = { cold noreturn nounwind }

!llvm.ident = !{!0}
!llvm.errno.tbaa = !{!1}
!llvm.module.flags = !{!5, !6, !7}

!0 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 3cab3bc6384b5f58cab7140d00d7a527eade010e)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !11}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !11, !12}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 omnipotent char", !31, i64 0}
!31 = !{!"any pointer", !3, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTS8_IO_FILE", !31, i64 0}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = !{}
!37 = !{!"branch_weights", i32 1, i32 1048575}
!38 = !{!31, !31, i64 0}
