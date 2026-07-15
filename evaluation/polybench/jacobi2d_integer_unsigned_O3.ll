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
@.str.2.1 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

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
  %12 = uitofp nneg i32 %11 to double
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

141:                                              ; preds = %394, %139
  %142 = phi i64 [ 1, %139 ], [ %395, %394 ]
  %143 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %142
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 240
  %145 = getelementptr i8, ptr %143, i64 -240
  %146 = getelementptr inbounds nuw [240 x i8], ptr %5, i64 %142
  br i1 %135, label %357, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds nuw i8, ptr %143, i64 8
  %149 = getelementptr inbounds nuw i8, ptr %143, i64 24
  %150 = load <2 x double>, ptr %148, align 8, !tbaa !8, !alias.scope !14
  %151 = load <2 x double>, ptr %149, align 8, !tbaa !8, !alias.scope !14
  %152 = getelementptr i8, ptr %143, i64 16
  %153 = load <2 x double>, ptr %143, align 8, !tbaa !8, !alias.scope !14
  %154 = load <2 x double>, ptr %152, align 8, !tbaa !8, !alias.scope !14
  %155 = fadd <2 x double> %150, %153
  %156 = fadd <2 x double> %151, %154
  %157 = getelementptr inbounds nuw i8, ptr %143, i64 32
  %158 = load <2 x double>, ptr %157, align 8, !tbaa !8, !alias.scope !14
  %159 = fadd <2 x double> %155, %154
  %160 = fadd <2 x double> %156, %158
  %161 = getelementptr inbounds nuw i8, ptr %143, i64 248
  %162 = getelementptr inbounds nuw i8, ptr %143, i64 264
  %163 = load <2 x double>, ptr %161, align 8, !tbaa !8, !alias.scope !14
  %164 = load <2 x double>, ptr %162, align 8, !tbaa !8, !alias.scope !14
  %165 = fadd <2 x double> %159, %163
  %166 = fadd <2 x double> %160, %164
  %167 = getelementptr i8, ptr %143, i64 -232
  %168 = getelementptr i8, ptr %143, i64 -216
  %169 = load <2 x double>, ptr %167, align 8, !tbaa !8, !alias.scope !14
  %170 = load <2 x double>, ptr %168, align 8, !tbaa !8, !alias.scope !14
  %171 = fadd <2 x double> %165, %169
  %172 = fadd <2 x double> %166, %170
  %173 = fmul <2 x double> %171, splat (double 2.000000e-01)
  %174 = fmul <2 x double> %172, splat (double 2.000000e-01)
  %175 = getelementptr inbounds nuw i8, ptr %146, i64 8
  %176 = getelementptr inbounds nuw i8, ptr %146, i64 24
  store <2 x double> %173, ptr %175, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %174, ptr %176, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  %177 = getelementptr inbounds nuw i8, ptr %143, i64 40
  %178 = getelementptr inbounds nuw i8, ptr %143, i64 56
  %179 = load <2 x double>, ptr %177, align 8, !tbaa !8, !alias.scope !14
  %180 = load <2 x double>, ptr %178, align 8, !tbaa !8, !alias.scope !14
  %181 = getelementptr i8, ptr %143, i64 32
  %182 = getelementptr i8, ptr %143, i64 48
  %183 = load <2 x double>, ptr %181, align 8, !tbaa !8, !alias.scope !14
  %184 = load <2 x double>, ptr %182, align 8, !tbaa !8, !alias.scope !14
  %185 = fadd <2 x double> %179, %183
  %186 = fadd <2 x double> %180, %184
  %187 = getelementptr inbounds nuw i8, ptr %143, i64 64
  %188 = load <2 x double>, ptr %187, align 8, !tbaa !8, !alias.scope !14
  %189 = fadd <2 x double> %185, %184
  %190 = fadd <2 x double> %186, %188
  %191 = getelementptr inbounds nuw i8, ptr %143, i64 280
  %192 = getelementptr inbounds nuw i8, ptr %143, i64 296
  %193 = load <2 x double>, ptr %191, align 8, !tbaa !8, !alias.scope !14
  %194 = load <2 x double>, ptr %192, align 8, !tbaa !8, !alias.scope !14
  %195 = fadd <2 x double> %189, %193
  %196 = fadd <2 x double> %190, %194
  %197 = getelementptr i8, ptr %143, i64 -200
  %198 = getelementptr i8, ptr %143, i64 -184
  %199 = load <2 x double>, ptr %197, align 8, !tbaa !8, !alias.scope !14
  %200 = load <2 x double>, ptr %198, align 8, !tbaa !8, !alias.scope !14
  %201 = fadd <2 x double> %195, %199
  %202 = fadd <2 x double> %196, %200
  %203 = fmul <2 x double> %201, splat (double 2.000000e-01)
  %204 = fmul <2 x double> %202, splat (double 2.000000e-01)
  %205 = getelementptr inbounds nuw i8, ptr %146, i64 40
  %206 = getelementptr inbounds nuw i8, ptr %146, i64 56
  store <2 x double> %203, ptr %205, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %204, ptr %206, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  %207 = getelementptr inbounds nuw i8, ptr %143, i64 72
  %208 = getelementptr inbounds nuw i8, ptr %143, i64 88
  %209 = load <2 x double>, ptr %207, align 8, !tbaa !8, !alias.scope !14
  %210 = load <2 x double>, ptr %208, align 8, !tbaa !8, !alias.scope !14
  %211 = getelementptr i8, ptr %143, i64 64
  %212 = getelementptr i8, ptr %143, i64 80
  %213 = load <2 x double>, ptr %211, align 8, !tbaa !8, !alias.scope !14
  %214 = load <2 x double>, ptr %212, align 8, !tbaa !8, !alias.scope !14
  %215 = fadd <2 x double> %209, %213
  %216 = fadd <2 x double> %210, %214
  %217 = getelementptr inbounds nuw i8, ptr %143, i64 96
  %218 = load <2 x double>, ptr %217, align 8, !tbaa !8, !alias.scope !14
  %219 = fadd <2 x double> %215, %214
  %220 = fadd <2 x double> %216, %218
  %221 = getelementptr inbounds nuw i8, ptr %143, i64 312
  %222 = getelementptr inbounds nuw i8, ptr %143, i64 328
  %223 = load <2 x double>, ptr %221, align 8, !tbaa !8, !alias.scope !14
  %224 = load <2 x double>, ptr %222, align 8, !tbaa !8, !alias.scope !14
  %225 = fadd <2 x double> %219, %223
  %226 = fadd <2 x double> %220, %224
  %227 = getelementptr i8, ptr %143, i64 -168
  %228 = getelementptr i8, ptr %143, i64 -152
  %229 = load <2 x double>, ptr %227, align 8, !tbaa !8, !alias.scope !14
  %230 = load <2 x double>, ptr %228, align 8, !tbaa !8, !alias.scope !14
  %231 = fadd <2 x double> %225, %229
  %232 = fadd <2 x double> %226, %230
  %233 = fmul <2 x double> %231, splat (double 2.000000e-01)
  %234 = fmul <2 x double> %232, splat (double 2.000000e-01)
  %235 = getelementptr inbounds nuw i8, ptr %146, i64 72
  %236 = getelementptr inbounds nuw i8, ptr %146, i64 88
  store <2 x double> %233, ptr %235, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %234, ptr %236, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  %237 = getelementptr inbounds nuw i8, ptr %143, i64 104
  %238 = getelementptr inbounds nuw i8, ptr %143, i64 120
  %239 = load <2 x double>, ptr %237, align 8, !tbaa !8, !alias.scope !14
  %240 = load <2 x double>, ptr %238, align 8, !tbaa !8, !alias.scope !14
  %241 = getelementptr i8, ptr %143, i64 96
  %242 = getelementptr i8, ptr %143, i64 112
  %243 = load <2 x double>, ptr %241, align 8, !tbaa !8, !alias.scope !14
  %244 = load <2 x double>, ptr %242, align 8, !tbaa !8, !alias.scope !14
  %245 = fadd <2 x double> %239, %243
  %246 = fadd <2 x double> %240, %244
  %247 = getelementptr inbounds nuw i8, ptr %143, i64 128
  %248 = load <2 x double>, ptr %247, align 8, !tbaa !8, !alias.scope !14
  %249 = fadd <2 x double> %245, %244
  %250 = fadd <2 x double> %246, %248
  %251 = getelementptr inbounds nuw i8, ptr %143, i64 344
  %252 = getelementptr inbounds nuw i8, ptr %143, i64 360
  %253 = load <2 x double>, ptr %251, align 8, !tbaa !8, !alias.scope !14
  %254 = load <2 x double>, ptr %252, align 8, !tbaa !8, !alias.scope !14
  %255 = fadd <2 x double> %249, %253
  %256 = fadd <2 x double> %250, %254
  %257 = getelementptr i8, ptr %143, i64 -136
  %258 = getelementptr i8, ptr %143, i64 -120
  %259 = load <2 x double>, ptr %257, align 8, !tbaa !8, !alias.scope !14
  %260 = load <2 x double>, ptr %258, align 8, !tbaa !8, !alias.scope !14
  %261 = fadd <2 x double> %255, %259
  %262 = fadd <2 x double> %256, %260
  %263 = fmul <2 x double> %261, splat (double 2.000000e-01)
  %264 = fmul <2 x double> %262, splat (double 2.000000e-01)
  %265 = getelementptr inbounds nuw i8, ptr %146, i64 104
  %266 = getelementptr inbounds nuw i8, ptr %146, i64 120
  store <2 x double> %263, ptr %265, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %264, ptr %266, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  %267 = getelementptr inbounds nuw i8, ptr %143, i64 136
  %268 = getelementptr inbounds nuw i8, ptr %143, i64 152
  %269 = load <2 x double>, ptr %267, align 8, !tbaa !8, !alias.scope !14
  %270 = load <2 x double>, ptr %268, align 8, !tbaa !8, !alias.scope !14
  %271 = getelementptr i8, ptr %143, i64 128
  %272 = getelementptr i8, ptr %143, i64 144
  %273 = load <2 x double>, ptr %271, align 8, !tbaa !8, !alias.scope !14
  %274 = load <2 x double>, ptr %272, align 8, !tbaa !8, !alias.scope !14
  %275 = fadd <2 x double> %269, %273
  %276 = fadd <2 x double> %270, %274
  %277 = getelementptr inbounds nuw i8, ptr %143, i64 160
  %278 = load <2 x double>, ptr %277, align 8, !tbaa !8, !alias.scope !14
  %279 = fadd <2 x double> %275, %274
  %280 = fadd <2 x double> %276, %278
  %281 = getelementptr inbounds nuw i8, ptr %143, i64 376
  %282 = getelementptr inbounds nuw i8, ptr %143, i64 392
  %283 = load <2 x double>, ptr %281, align 8, !tbaa !8, !alias.scope !14
  %284 = load <2 x double>, ptr %282, align 8, !tbaa !8, !alias.scope !14
  %285 = fadd <2 x double> %279, %283
  %286 = fadd <2 x double> %280, %284
  %287 = getelementptr i8, ptr %143, i64 -104
  %288 = getelementptr i8, ptr %143, i64 -88
  %289 = load <2 x double>, ptr %287, align 8, !tbaa !8, !alias.scope !14
  %290 = load <2 x double>, ptr %288, align 8, !tbaa !8, !alias.scope !14
  %291 = fadd <2 x double> %285, %289
  %292 = fadd <2 x double> %286, %290
  %293 = fmul <2 x double> %291, splat (double 2.000000e-01)
  %294 = fmul <2 x double> %292, splat (double 2.000000e-01)
  %295 = getelementptr inbounds nuw i8, ptr %146, i64 136
  %296 = getelementptr inbounds nuw i8, ptr %146, i64 152
  store <2 x double> %293, ptr %295, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %294, ptr %296, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  %297 = getelementptr inbounds nuw i8, ptr %143, i64 168
  %298 = getelementptr inbounds nuw i8, ptr %143, i64 184
  %299 = load <2 x double>, ptr %297, align 8, !tbaa !8, !alias.scope !14
  %300 = load <2 x double>, ptr %298, align 8, !tbaa !8, !alias.scope !14
  %301 = getelementptr i8, ptr %143, i64 160
  %302 = getelementptr i8, ptr %143, i64 176
  %303 = load <2 x double>, ptr %301, align 8, !tbaa !8, !alias.scope !14
  %304 = load <2 x double>, ptr %302, align 8, !tbaa !8, !alias.scope !14
  %305 = fadd <2 x double> %299, %303
  %306 = fadd <2 x double> %300, %304
  %307 = getelementptr inbounds nuw i8, ptr %143, i64 192
  %308 = load <2 x double>, ptr %307, align 8, !tbaa !8, !alias.scope !14
  %309 = fadd <2 x double> %305, %304
  %310 = fadd <2 x double> %306, %308
  %311 = getelementptr inbounds nuw i8, ptr %143, i64 408
  %312 = getelementptr inbounds nuw i8, ptr %143, i64 424
  %313 = load <2 x double>, ptr %311, align 8, !tbaa !8, !alias.scope !14
  %314 = load <2 x double>, ptr %312, align 8, !tbaa !8, !alias.scope !14
  %315 = fadd <2 x double> %309, %313
  %316 = fadd <2 x double> %310, %314
  %317 = getelementptr i8, ptr %143, i64 -72
  %318 = getelementptr i8, ptr %143, i64 -56
  %319 = load <2 x double>, ptr %317, align 8, !tbaa !8, !alias.scope !14
  %320 = load <2 x double>, ptr %318, align 8, !tbaa !8, !alias.scope !14
  %321 = fadd <2 x double> %315, %319
  %322 = fadd <2 x double> %316, %320
  %323 = fmul <2 x double> %321, splat (double 2.000000e-01)
  %324 = fmul <2 x double> %322, splat (double 2.000000e-01)
  %325 = getelementptr inbounds nuw i8, ptr %146, i64 168
  %326 = getelementptr inbounds nuw i8, ptr %146, i64 184
  store <2 x double> %323, ptr %325, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %324, ptr %326, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  %327 = getelementptr inbounds nuw i8, ptr %143, i64 200
  %328 = getelementptr inbounds nuw i8, ptr %143, i64 216
  %329 = load <2 x double>, ptr %327, align 8, !tbaa !8, !alias.scope !14
  %330 = load <2 x double>, ptr %328, align 8, !tbaa !8, !alias.scope !14
  %331 = getelementptr i8, ptr %143, i64 192
  %332 = getelementptr i8, ptr %143, i64 208
  %333 = load <2 x double>, ptr %331, align 8, !tbaa !8, !alias.scope !14
  %334 = load <2 x double>, ptr %332, align 8, !tbaa !8, !alias.scope !14
  %335 = fadd <2 x double> %329, %333
  %336 = fadd <2 x double> %330, %334
  %337 = getelementptr inbounds nuw i8, ptr %143, i64 224
  %338 = load <2 x double>, ptr %337, align 8, !tbaa !8, !alias.scope !14
  %339 = fadd <2 x double> %335, %334
  %340 = fadd <2 x double> %336, %338
  %341 = getelementptr inbounds nuw i8, ptr %143, i64 440
  %342 = getelementptr inbounds nuw i8, ptr %143, i64 456
  %343 = load <2 x double>, ptr %341, align 8, !tbaa !8, !alias.scope !14
  %344 = load <2 x double>, ptr %342, align 8, !tbaa !8, !alias.scope !14
  %345 = fadd <2 x double> %339, %343
  %346 = fadd <2 x double> %340, %344
  %347 = getelementptr i8, ptr %143, i64 -40
  %348 = getelementptr i8, ptr %143, i64 -24
  %349 = load <2 x double>, ptr %347, align 8, !tbaa !8, !alias.scope !14
  %350 = load <2 x double>, ptr %348, align 8, !tbaa !8, !alias.scope !14
  %351 = fadd <2 x double> %345, %349
  %352 = fadd <2 x double> %346, %350
  %353 = fmul <2 x double> %351, splat (double 2.000000e-01)
  %354 = fmul <2 x double> %352, splat (double 2.000000e-01)
  %355 = getelementptr inbounds nuw i8, ptr %146, i64 200
  %356 = getelementptr inbounds nuw i8, ptr %146, i64 216
  store <2 x double> %353, ptr %355, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  store <2 x double> %354, ptr %356, align 8, !tbaa !8, !alias.scope !17, !noalias !14
  br label %394

357:                                              ; preds = %357, %141
  %358 = phi i64 [ %381, %357 ], [ 1, %141 ]
  %359 = getelementptr inbounds nuw [8 x i8], ptr %143, i64 %358
  %360 = load double, ptr %359, align 8, !tbaa !8
  %361 = getelementptr i8, ptr %359, i64 -8
  %362 = load double, ptr %361, align 8, !tbaa !8
  %363 = fadd double %360, %362
  %364 = add nuw nsw i64 %358, 1
  %365 = getelementptr inbounds nuw [8 x i8], ptr %143, i64 %364
  %366 = load double, ptr %365, align 8, !tbaa !8
  %367 = fadd double %363, %366
  %368 = getelementptr inbounds nuw [8 x i8], ptr %144, i64 %358
  %369 = load double, ptr %368, align 8, !tbaa !8
  %370 = fadd double %367, %369
  %371 = getelementptr inbounds nuw [8 x i8], ptr %145, i64 %358
  %372 = load double, ptr %371, align 8, !tbaa !8
  %373 = fadd double %370, %372
  %374 = fmul double %373, 2.000000e-01
  %375 = getelementptr inbounds nuw [8 x i8], ptr %146, i64 %358
  store double %374, ptr %375, align 8, !tbaa !8
  %376 = getelementptr inbounds nuw [8 x i8], ptr %143, i64 %364
  %377 = load double, ptr %376, align 8, !tbaa !8
  %378 = getelementptr i8, ptr %376, i64 -8
  %379 = load double, ptr %378, align 8, !tbaa !8
  %380 = fadd double %377, %379
  %381 = add nuw nsw i64 %358, 2
  %382 = getelementptr inbounds nuw [8 x i8], ptr %143, i64 %381
  %383 = load double, ptr %382, align 8, !tbaa !8
  %384 = fadd double %380, %383
  %385 = getelementptr inbounds nuw [8 x i8], ptr %144, i64 %364
  %386 = load double, ptr %385, align 8, !tbaa !8
  %387 = fadd double %384, %386
  %388 = getelementptr inbounds nuw [8 x i8], ptr %145, i64 %364
  %389 = load double, ptr %388, align 8, !tbaa !8
  %390 = fadd double %387, %389
  %391 = fmul double %390, 2.000000e-01
  %392 = getelementptr inbounds nuw [8 x i8], ptr %146, i64 %364
  store double %391, ptr %392, align 8, !tbaa !8
  %393 = icmp eq i64 %381, 29
  br i1 %393, label %394, label %357, !llvm.loop !19

394:                                              ; preds = %357, %147
  %395 = add nuw nsw i64 %142, 1
  %396 = icmp eq i64 %395, 29
  br i1 %396, label %397, label %141, !llvm.loop !20

397:                                              ; preds = %650, %394
  %398 = phi i64 [ %651, %650 ], [ 1, %394 ]
  %399 = getelementptr inbounds nuw [240 x i8], ptr %5, i64 %398
  %400 = getelementptr inbounds nuw i8, ptr %399, i64 240
  %401 = getelementptr i8, ptr %399, i64 -240
  %402 = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %398
  br i1 %138, label %613, label %403

403:                                              ; preds = %397
  %404 = getelementptr inbounds nuw i8, ptr %399, i64 8
  %405 = getelementptr inbounds nuw i8, ptr %399, i64 24
  %406 = load <2 x double>, ptr %404, align 8, !tbaa !8, !alias.scope !21
  %407 = load <2 x double>, ptr %405, align 8, !tbaa !8, !alias.scope !21
  %408 = getelementptr i8, ptr %399, i64 16
  %409 = load <2 x double>, ptr %399, align 8, !tbaa !8, !alias.scope !21
  %410 = load <2 x double>, ptr %408, align 8, !tbaa !8, !alias.scope !21
  %411 = fadd <2 x double> %406, %409
  %412 = fadd <2 x double> %407, %410
  %413 = getelementptr inbounds nuw i8, ptr %399, i64 32
  %414 = load <2 x double>, ptr %413, align 8, !tbaa !8, !alias.scope !21
  %415 = fadd <2 x double> %411, %410
  %416 = fadd <2 x double> %412, %414
  %417 = getelementptr inbounds nuw i8, ptr %399, i64 248
  %418 = getelementptr inbounds nuw i8, ptr %399, i64 264
  %419 = load <2 x double>, ptr %417, align 8, !tbaa !8, !alias.scope !21
  %420 = load <2 x double>, ptr %418, align 8, !tbaa !8, !alias.scope !21
  %421 = fadd <2 x double> %415, %419
  %422 = fadd <2 x double> %416, %420
  %423 = getelementptr i8, ptr %399, i64 -232
  %424 = getelementptr i8, ptr %399, i64 -216
  %425 = load <2 x double>, ptr %423, align 8, !tbaa !8, !alias.scope !21
  %426 = load <2 x double>, ptr %424, align 8, !tbaa !8, !alias.scope !21
  %427 = fadd <2 x double> %421, %425
  %428 = fadd <2 x double> %422, %426
  %429 = fmul <2 x double> %427, splat (double 2.000000e-01)
  %430 = fmul <2 x double> %428, splat (double 2.000000e-01)
  %431 = getelementptr inbounds nuw i8, ptr %402, i64 8
  %432 = getelementptr inbounds nuw i8, ptr %402, i64 24
  store <2 x double> %429, ptr %431, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %430, ptr %432, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %433 = getelementptr inbounds nuw i8, ptr %399, i64 40
  %434 = getelementptr inbounds nuw i8, ptr %399, i64 56
  %435 = load <2 x double>, ptr %433, align 8, !tbaa !8, !alias.scope !21
  %436 = load <2 x double>, ptr %434, align 8, !tbaa !8, !alias.scope !21
  %437 = getelementptr i8, ptr %399, i64 32
  %438 = getelementptr i8, ptr %399, i64 48
  %439 = load <2 x double>, ptr %437, align 8, !tbaa !8, !alias.scope !21
  %440 = load <2 x double>, ptr %438, align 8, !tbaa !8, !alias.scope !21
  %441 = fadd <2 x double> %435, %439
  %442 = fadd <2 x double> %436, %440
  %443 = getelementptr inbounds nuw i8, ptr %399, i64 64
  %444 = load <2 x double>, ptr %443, align 8, !tbaa !8, !alias.scope !21
  %445 = fadd <2 x double> %441, %440
  %446 = fadd <2 x double> %442, %444
  %447 = getelementptr inbounds nuw i8, ptr %399, i64 280
  %448 = getelementptr inbounds nuw i8, ptr %399, i64 296
  %449 = load <2 x double>, ptr %447, align 8, !tbaa !8, !alias.scope !21
  %450 = load <2 x double>, ptr %448, align 8, !tbaa !8, !alias.scope !21
  %451 = fadd <2 x double> %445, %449
  %452 = fadd <2 x double> %446, %450
  %453 = getelementptr i8, ptr %399, i64 -200
  %454 = getelementptr i8, ptr %399, i64 -184
  %455 = load <2 x double>, ptr %453, align 8, !tbaa !8, !alias.scope !21
  %456 = load <2 x double>, ptr %454, align 8, !tbaa !8, !alias.scope !21
  %457 = fadd <2 x double> %451, %455
  %458 = fadd <2 x double> %452, %456
  %459 = fmul <2 x double> %457, splat (double 2.000000e-01)
  %460 = fmul <2 x double> %458, splat (double 2.000000e-01)
  %461 = getelementptr inbounds nuw i8, ptr %402, i64 40
  %462 = getelementptr inbounds nuw i8, ptr %402, i64 56
  store <2 x double> %459, ptr %461, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %460, ptr %462, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %463 = getelementptr inbounds nuw i8, ptr %399, i64 72
  %464 = getelementptr inbounds nuw i8, ptr %399, i64 88
  %465 = load <2 x double>, ptr %463, align 8, !tbaa !8, !alias.scope !21
  %466 = load <2 x double>, ptr %464, align 8, !tbaa !8, !alias.scope !21
  %467 = getelementptr i8, ptr %399, i64 64
  %468 = getelementptr i8, ptr %399, i64 80
  %469 = load <2 x double>, ptr %467, align 8, !tbaa !8, !alias.scope !21
  %470 = load <2 x double>, ptr %468, align 8, !tbaa !8, !alias.scope !21
  %471 = fadd <2 x double> %465, %469
  %472 = fadd <2 x double> %466, %470
  %473 = getelementptr inbounds nuw i8, ptr %399, i64 96
  %474 = load <2 x double>, ptr %473, align 8, !tbaa !8, !alias.scope !21
  %475 = fadd <2 x double> %471, %470
  %476 = fadd <2 x double> %472, %474
  %477 = getelementptr inbounds nuw i8, ptr %399, i64 312
  %478 = getelementptr inbounds nuw i8, ptr %399, i64 328
  %479 = load <2 x double>, ptr %477, align 8, !tbaa !8, !alias.scope !21
  %480 = load <2 x double>, ptr %478, align 8, !tbaa !8, !alias.scope !21
  %481 = fadd <2 x double> %475, %479
  %482 = fadd <2 x double> %476, %480
  %483 = getelementptr i8, ptr %399, i64 -168
  %484 = getelementptr i8, ptr %399, i64 -152
  %485 = load <2 x double>, ptr %483, align 8, !tbaa !8, !alias.scope !21
  %486 = load <2 x double>, ptr %484, align 8, !tbaa !8, !alias.scope !21
  %487 = fadd <2 x double> %481, %485
  %488 = fadd <2 x double> %482, %486
  %489 = fmul <2 x double> %487, splat (double 2.000000e-01)
  %490 = fmul <2 x double> %488, splat (double 2.000000e-01)
  %491 = getelementptr inbounds nuw i8, ptr %402, i64 72
  %492 = getelementptr inbounds nuw i8, ptr %402, i64 88
  store <2 x double> %489, ptr %491, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %490, ptr %492, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %493 = getelementptr inbounds nuw i8, ptr %399, i64 104
  %494 = getelementptr inbounds nuw i8, ptr %399, i64 120
  %495 = load <2 x double>, ptr %493, align 8, !tbaa !8, !alias.scope !21
  %496 = load <2 x double>, ptr %494, align 8, !tbaa !8, !alias.scope !21
  %497 = getelementptr i8, ptr %399, i64 96
  %498 = getelementptr i8, ptr %399, i64 112
  %499 = load <2 x double>, ptr %497, align 8, !tbaa !8, !alias.scope !21
  %500 = load <2 x double>, ptr %498, align 8, !tbaa !8, !alias.scope !21
  %501 = fadd <2 x double> %495, %499
  %502 = fadd <2 x double> %496, %500
  %503 = getelementptr inbounds nuw i8, ptr %399, i64 128
  %504 = load <2 x double>, ptr %503, align 8, !tbaa !8, !alias.scope !21
  %505 = fadd <2 x double> %501, %500
  %506 = fadd <2 x double> %502, %504
  %507 = getelementptr inbounds nuw i8, ptr %399, i64 344
  %508 = getelementptr inbounds nuw i8, ptr %399, i64 360
  %509 = load <2 x double>, ptr %507, align 8, !tbaa !8, !alias.scope !21
  %510 = load <2 x double>, ptr %508, align 8, !tbaa !8, !alias.scope !21
  %511 = fadd <2 x double> %505, %509
  %512 = fadd <2 x double> %506, %510
  %513 = getelementptr i8, ptr %399, i64 -136
  %514 = getelementptr i8, ptr %399, i64 -120
  %515 = load <2 x double>, ptr %513, align 8, !tbaa !8, !alias.scope !21
  %516 = load <2 x double>, ptr %514, align 8, !tbaa !8, !alias.scope !21
  %517 = fadd <2 x double> %511, %515
  %518 = fadd <2 x double> %512, %516
  %519 = fmul <2 x double> %517, splat (double 2.000000e-01)
  %520 = fmul <2 x double> %518, splat (double 2.000000e-01)
  %521 = getelementptr inbounds nuw i8, ptr %402, i64 104
  %522 = getelementptr inbounds nuw i8, ptr %402, i64 120
  store <2 x double> %519, ptr %521, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %520, ptr %522, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %523 = getelementptr inbounds nuw i8, ptr %399, i64 136
  %524 = getelementptr inbounds nuw i8, ptr %399, i64 152
  %525 = load <2 x double>, ptr %523, align 8, !tbaa !8, !alias.scope !21
  %526 = load <2 x double>, ptr %524, align 8, !tbaa !8, !alias.scope !21
  %527 = getelementptr i8, ptr %399, i64 128
  %528 = getelementptr i8, ptr %399, i64 144
  %529 = load <2 x double>, ptr %527, align 8, !tbaa !8, !alias.scope !21
  %530 = load <2 x double>, ptr %528, align 8, !tbaa !8, !alias.scope !21
  %531 = fadd <2 x double> %525, %529
  %532 = fadd <2 x double> %526, %530
  %533 = getelementptr inbounds nuw i8, ptr %399, i64 160
  %534 = load <2 x double>, ptr %533, align 8, !tbaa !8, !alias.scope !21
  %535 = fadd <2 x double> %531, %530
  %536 = fadd <2 x double> %532, %534
  %537 = getelementptr inbounds nuw i8, ptr %399, i64 376
  %538 = getelementptr inbounds nuw i8, ptr %399, i64 392
  %539 = load <2 x double>, ptr %537, align 8, !tbaa !8, !alias.scope !21
  %540 = load <2 x double>, ptr %538, align 8, !tbaa !8, !alias.scope !21
  %541 = fadd <2 x double> %535, %539
  %542 = fadd <2 x double> %536, %540
  %543 = getelementptr i8, ptr %399, i64 -104
  %544 = getelementptr i8, ptr %399, i64 -88
  %545 = load <2 x double>, ptr %543, align 8, !tbaa !8, !alias.scope !21
  %546 = load <2 x double>, ptr %544, align 8, !tbaa !8, !alias.scope !21
  %547 = fadd <2 x double> %541, %545
  %548 = fadd <2 x double> %542, %546
  %549 = fmul <2 x double> %547, splat (double 2.000000e-01)
  %550 = fmul <2 x double> %548, splat (double 2.000000e-01)
  %551 = getelementptr inbounds nuw i8, ptr %402, i64 136
  %552 = getelementptr inbounds nuw i8, ptr %402, i64 152
  store <2 x double> %549, ptr %551, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %550, ptr %552, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %553 = getelementptr inbounds nuw i8, ptr %399, i64 168
  %554 = getelementptr inbounds nuw i8, ptr %399, i64 184
  %555 = load <2 x double>, ptr %553, align 8, !tbaa !8, !alias.scope !21
  %556 = load <2 x double>, ptr %554, align 8, !tbaa !8, !alias.scope !21
  %557 = getelementptr i8, ptr %399, i64 160
  %558 = getelementptr i8, ptr %399, i64 176
  %559 = load <2 x double>, ptr %557, align 8, !tbaa !8, !alias.scope !21
  %560 = load <2 x double>, ptr %558, align 8, !tbaa !8, !alias.scope !21
  %561 = fadd <2 x double> %555, %559
  %562 = fadd <2 x double> %556, %560
  %563 = getelementptr inbounds nuw i8, ptr %399, i64 192
  %564 = load <2 x double>, ptr %563, align 8, !tbaa !8, !alias.scope !21
  %565 = fadd <2 x double> %561, %560
  %566 = fadd <2 x double> %562, %564
  %567 = getelementptr inbounds nuw i8, ptr %399, i64 408
  %568 = getelementptr inbounds nuw i8, ptr %399, i64 424
  %569 = load <2 x double>, ptr %567, align 8, !tbaa !8, !alias.scope !21
  %570 = load <2 x double>, ptr %568, align 8, !tbaa !8, !alias.scope !21
  %571 = fadd <2 x double> %565, %569
  %572 = fadd <2 x double> %566, %570
  %573 = getelementptr i8, ptr %399, i64 -72
  %574 = getelementptr i8, ptr %399, i64 -56
  %575 = load <2 x double>, ptr %573, align 8, !tbaa !8, !alias.scope !21
  %576 = load <2 x double>, ptr %574, align 8, !tbaa !8, !alias.scope !21
  %577 = fadd <2 x double> %571, %575
  %578 = fadd <2 x double> %572, %576
  %579 = fmul <2 x double> %577, splat (double 2.000000e-01)
  %580 = fmul <2 x double> %578, splat (double 2.000000e-01)
  %581 = getelementptr inbounds nuw i8, ptr %402, i64 168
  %582 = getelementptr inbounds nuw i8, ptr %402, i64 184
  store <2 x double> %579, ptr %581, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %580, ptr %582, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  %583 = getelementptr inbounds nuw i8, ptr %399, i64 200
  %584 = getelementptr inbounds nuw i8, ptr %399, i64 216
  %585 = load <2 x double>, ptr %583, align 8, !tbaa !8, !alias.scope !21
  %586 = load <2 x double>, ptr %584, align 8, !tbaa !8, !alias.scope !21
  %587 = getelementptr i8, ptr %399, i64 192
  %588 = getelementptr i8, ptr %399, i64 208
  %589 = load <2 x double>, ptr %587, align 8, !tbaa !8, !alias.scope !21
  %590 = load <2 x double>, ptr %588, align 8, !tbaa !8, !alias.scope !21
  %591 = fadd <2 x double> %585, %589
  %592 = fadd <2 x double> %586, %590
  %593 = getelementptr inbounds nuw i8, ptr %399, i64 224
  %594 = load <2 x double>, ptr %593, align 8, !tbaa !8, !alias.scope !21
  %595 = fadd <2 x double> %591, %590
  %596 = fadd <2 x double> %592, %594
  %597 = getelementptr inbounds nuw i8, ptr %399, i64 440
  %598 = getelementptr inbounds nuw i8, ptr %399, i64 456
  %599 = load <2 x double>, ptr %597, align 8, !tbaa !8, !alias.scope !21
  %600 = load <2 x double>, ptr %598, align 8, !tbaa !8, !alias.scope !21
  %601 = fadd <2 x double> %595, %599
  %602 = fadd <2 x double> %596, %600
  %603 = getelementptr i8, ptr %399, i64 -40
  %604 = getelementptr i8, ptr %399, i64 -24
  %605 = load <2 x double>, ptr %603, align 8, !tbaa !8, !alias.scope !21
  %606 = load <2 x double>, ptr %604, align 8, !tbaa !8, !alias.scope !21
  %607 = fadd <2 x double> %601, %605
  %608 = fadd <2 x double> %602, %606
  %609 = fmul <2 x double> %607, splat (double 2.000000e-01)
  %610 = fmul <2 x double> %608, splat (double 2.000000e-01)
  %611 = getelementptr inbounds nuw i8, ptr %402, i64 200
  %612 = getelementptr inbounds nuw i8, ptr %402, i64 216
  store <2 x double> %609, ptr %611, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  store <2 x double> %610, ptr %612, align 8, !tbaa !8, !alias.scope !24, !noalias !21
  br label %650

613:                                              ; preds = %613, %397
  %614 = phi i64 [ %637, %613 ], [ 1, %397 ]
  %615 = getelementptr inbounds nuw [8 x i8], ptr %399, i64 %614
  %616 = load double, ptr %615, align 8, !tbaa !8
  %617 = getelementptr i8, ptr %615, i64 -8
  %618 = load double, ptr %617, align 8, !tbaa !8
  %619 = fadd double %616, %618
  %620 = add nuw nsw i64 %614, 1
  %621 = getelementptr inbounds nuw [8 x i8], ptr %399, i64 %620
  %622 = load double, ptr %621, align 8, !tbaa !8
  %623 = fadd double %619, %622
  %624 = getelementptr inbounds nuw [8 x i8], ptr %400, i64 %614
  %625 = load double, ptr %624, align 8, !tbaa !8
  %626 = fadd double %623, %625
  %627 = getelementptr inbounds nuw [8 x i8], ptr %401, i64 %614
  %628 = load double, ptr %627, align 8, !tbaa !8
  %629 = fadd double %626, %628
  %630 = fmul double %629, 2.000000e-01
  %631 = getelementptr inbounds nuw [8 x i8], ptr %402, i64 %614
  store double %630, ptr %631, align 8, !tbaa !8
  %632 = getelementptr inbounds nuw [8 x i8], ptr %399, i64 %620
  %633 = load double, ptr %632, align 8, !tbaa !8
  %634 = getelementptr i8, ptr %632, i64 -8
  %635 = load double, ptr %634, align 8, !tbaa !8
  %636 = fadd double %633, %635
  %637 = add nuw nsw i64 %614, 2
  %638 = getelementptr inbounds nuw [8 x i8], ptr %399, i64 %637
  %639 = load double, ptr %638, align 8, !tbaa !8
  %640 = fadd double %636, %639
  %641 = getelementptr inbounds nuw [8 x i8], ptr %400, i64 %620
  %642 = load double, ptr %641, align 8, !tbaa !8
  %643 = fadd double %640, %642
  %644 = getelementptr inbounds nuw [8 x i8], ptr %401, i64 %620
  %645 = load double, ptr %644, align 8, !tbaa !8
  %646 = fadd double %643, %645
  %647 = fmul double %646, 2.000000e-01
  %648 = getelementptr inbounds nuw [8 x i8], ptr %402, i64 %620
  store double %647, ptr %648, align 8, !tbaa !8
  %649 = icmp eq i64 %637, 29
  br i1 %649, label %650, label %613, !llvm.loop !26

650:                                              ; preds = %613, %403
  %651 = add nuw nsw i64 %398, 1
  %652 = icmp eq i64 %651, 29
  br i1 %652, label %653, label %397, !llvm.loop !27

653:                                              ; preds = %650
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
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.1, double noundef %3)
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
  %17 = call i64 @fwrite(ptr nonnull @.str.3.4, i64 50, i64 1, ptr %16) #13
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
