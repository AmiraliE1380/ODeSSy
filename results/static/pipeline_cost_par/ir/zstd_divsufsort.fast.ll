; ModuleID = 'results/static/pipeline_cost_par/ir/zstd_divsufsort.fast.mid.ll'
source_filename = "/mydata/zstd/lib/dictBuilder/divsufsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { ptr, ptr, ptr, i32, i32 }
%struct.anon = type { ptr, ptr, i32, i32 }
%struct.anon.0 = type { ptr, ptr, ptr, i32 }

@.src = private unnamed_addr constant [42 x i8] c"/mydata/zstd/lib/dictBuilder/divsufsort.c\00", align 1
@.str = private unnamed_addr constant [55 x i8] c"(last - first) <= INT_MAX && (last - first) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.sssort = private unnamed_addr constant [89 x i8] c"void sssort(const unsigned char *, const int *, int *, int *, int *, int, int, int, int)\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"(last - (a + (1024))) <= INT_MAX && (last - (a + (1024))) >= INT_MIN\00", align 1
@lg_table = internal unnamed_addr constant [256 x i32] [i32 -1, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], align 16
@sqq_table = internal unnamed_addr constant [256 x i32] [i32 0, i32 16, i32 22, i32 27, i32 32, i32 35, i32 39, i32 42, i32 45, i32 48, i32 50, i32 53, i32 55, i32 57, i32 59, i32 61, i32 64, i32 65, i32 67, i32 69, i32 71, i32 73, i32 75, i32 76, i32 78, i32 80, i32 81, i32 83, i32 84, i32 86, i32 87, i32 89, i32 90, i32 91, i32 93, i32 94, i32 96, i32 97, i32 98, i32 99, i32 101, i32 102, i32 103, i32 104, i32 106, i32 107, i32 108, i32 109, i32 110, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 128, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 155, i32 156, i32 157, i32 158, i32 159, i32 160, i32 160, i32 161, i32 162, i32 163, i32 163, i32 164, i32 165, i32 166, i32 167, i32 167, i32 168, i32 169, i32 170, i32 170, i32 171, i32 172, i32 173, i32 173, i32 174, i32 175, i32 176, i32 176, i32 177, i32 178, i32 178, i32 179, i32 180, i32 181, i32 181, i32 182, i32 183, i32 183, i32 184, i32 185, i32 185, i32 186, i32 187, i32 187, i32 188, i32 189, i32 189, i32 190, i32 191, i32 192, i32 192, i32 193, i32 193, i32 194, i32 195, i32 195, i32 196, i32 197, i32 197, i32 198, i32 199, i32 199, i32 200, i32 201, i32 201, i32 202, i32 203, i32 203, i32 204, i32 204, i32 205, i32 206, i32 206, i32 207, i32 208, i32 208, i32 209, i32 209, i32 210, i32 211, i32 211, i32 212, i32 212, i32 213, i32 214, i32 214, i32 215, i32 215, i32 216, i32 217, i32 217, i32 218, i32 218, i32 219, i32 219, i32 220, i32 221, i32 221, i32 222, i32 222, i32 223, i32 224, i32 224, i32 225, i32 225, i32 226, i32 226, i32 227, i32 227, i32 228, i32 229, i32 229, i32 230, i32 230, i32 231, i32 231, i32 232, i32 232, i32 233, i32 234, i32 234, i32 235, i32 235, i32 236, i32 236, i32 237, i32 237, i32 238, i32 238, i32 239, i32 240, i32 240, i32 241, i32 241, i32 242, i32 242, i32 243, i32 243, i32 244, i32 244, i32 245, i32 245, i32 246, i32 246, i32 247, i32 247, i32 248, i32 248, i32 249, i32 249, i32 250, i32 250, i32 251, i32 251, i32 252, i32 252, i32 253, i32 253, i32 254, i32 254, i32 255], align 16
@__PRETTY_FUNCTION__.ss_mintrosort = private unnamed_addr constant [74 x i8] c"void ss_mintrosort(const unsigned char *, const int *, int *, int *, int)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"0 <= ssize\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ssize < STACK_SIZE\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"(a - first) <= INT_MAX && (a - first) >= INT_MIN\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"(b - a) <= INT_MAX && (b - a) >= INT_MIN\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"(d - c) <= INT_MAX && (d - c) >= INT_MIN\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"(last - d - 1) <= INT_MAX && (last - d - 1) >= INT_MIN\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"(c - b) <= INT_MAX && (c - b) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.ss_pivot = private unnamed_addr constant [64 x i8] c"int *ss_pivot(const unsigned char *, const int *, int *, int *)\00", align 1
@__PRETTY_FUNCTION__.ss_swapmerge = private unnamed_addr constant [92 x i8] c"void ss_swapmerge(const unsigned char *, const int *, int *, int *, int *, int *, int, int)\00", align 1
@.str.9 = private unnamed_addr constant [181 x i8] c"((((middle - first) < (last - middle)) ? (middle - first) : (last - middle))) <= INT_MAX && ((((middle - first) < (last - middle)) ? (middle - first) : (last - middle))) >= INT_MIN\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"(last - middle) <= INT_MAX && (last - middle) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.ss_mergebackward = private unnamed_addr constant [91 x i8] c"void ss_mergebackward(const unsigned char *, const int *, int *, int *, int *, int *, int)\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"(middle - first) <= INT_MAX && (middle - first) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.ss_mergeforward = private unnamed_addr constant [90 x i8] c"void ss_mergeforward(const unsigned char *, const int *, int *, int *, int *, int *, int)\00", align 1
@__PRETTY_FUNCTION__.ss_inplacemerge = private unnamed_addr constant [83 x i8] c"void ss_inplacemerge(const unsigned char *, const int *, int *, int *, int *, int)\00", align 1
@__PRETTY_FUNCTION__.ss_rotate = private unnamed_addr constant [36 x i8] c"void ss_rotate(int *, int *, int *)\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"(first - last) <= INT_MAX && (first - last) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.trsort = private unnamed_addr constant [36 x i8] c"void trsort(int *, int *, int, int)\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"(ISAd - ISA) <= INT_MAX && (ISAd - ISA) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.tr_introsort = private unnamed_addr constant [73 x i8] c"void tr_introsort(int *, const int *, int *, int *, int *, trbudget_t *)\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"(last - SA - 1) <= INT_MAX && (last - SA - 1) >= INT_MIN\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"(a - SA - 1) <= INT_MAX && (a - SA - 1) >= INT_MIN\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"(b - SA - 1) <= INT_MAX && (b - SA - 1) >= INT_MIN\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"(last - b) <= INT_MAX && (last - b) >= INT_MIN\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"(a - SA) <= INT_MAX && (a - SA) >= INT_MIN\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"(a - first + 1) <= INT_MAX && (a - first + 1) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.tr_partition = private unnamed_addr constant [73 x i8] c"void tr_partition(const int *, int *, int *, int *, int **, int **, int)\00", align 1
@__PRETTY_FUNCTION__.tr_copy = private unnamed_addr constant [66 x i8] c"void tr_copy(int *, const int *, int *, int *, int *, int *, int)\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"(d - SA) <= INT_MAX && (d - SA) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.tr_partialcopy = private unnamed_addr constant [73 x i8] c"void tr_partialcopy(int *, const int *, int *, int *, int *, int *, int)\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"(e - SA) <= INT_MAX && (e - SA) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.tr_pivot = private unnamed_addr constant [41 x i8] c"int *tr_pivot(const int *, int *, int *)\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"T[s] == c1\00", align 1
@__PRETTY_FUNCTION__.construct_SA = private unnamed_addr constant [72 x i8] c"void construct_SA(const unsigned char *, int *, int *, int *, int, int)\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"((s + 1) < n) && (T[s] <= T[s + 1])\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"T[s - 1] <= T[s]\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"(k - SA) <= INT_MAX && (k - SA) >= INT_MIN\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"k < j\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"k != NULL\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"((s == 0) && (T[s] == c1)) || (s < 0)\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"T[s - 1] >= T[s]\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"i < k\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"s < 0\00", align 1
@__PRETTY_FUNCTION__.construct_BWT = private unnamed_addr constant [72 x i8] c"int construct_BWT(const unsigned char *, int *, int *, int *, int, int)\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"(orig - SA) <= INT_MAX && (orig - SA) >= INT_MIN\00", align 1
@__PRETTY_FUNCTION__.construct_BWT_indexes = private unnamed_addr constant [104 x i8] c"int construct_BWT_indexes(const unsigned char *, int *, int *, int *, int, int, unsigned char *, int *)\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"(j - SA) <= INT_MAX && (j - SA) >= INT_MIN\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"(i - SA) <= INT_MAX && (i - SA) >= INT_MIN\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @divsufsort(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  %8 = icmp slt i32 %2, 0
  %9 = or i1 %7, %8
  br i1 %9, label %229, label %10

10:                                               ; preds = %4
  switch i32 %2, label %22 [
    i32 0, label %229
    i32 1, label %11
    i32 2, label %12
  ]

11:                                               ; preds = %10
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %229

12:                                               ; preds = %10
  %13 = load i8, ptr %0, align 1, !tbaa !9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = icmp ult i8 %13, %15
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %18
  store i32 0, ptr %19, align 4, !tbaa !5
  %20 = zext i1 %16 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %20
  store i32 1, ptr %21, align 4, !tbaa !5
  br label %229

22:                                               ; preds = %10
  %23 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #9
  %24 = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #9
  %25 = icmp ne ptr %23, null
  %26 = icmp ne ptr %24, null
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %.loopexit

28:                                               ; preds = %22
  %29 = tail call fastcc i32 @sort_typeBstar(ptr noundef %0, ptr noundef %1, ptr noundef %23, ptr noundef %24, i32 noundef %2)
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = ptrtoint ptr %1 to i64
  br label %.loopexit23

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %1, i64 -4
  %35 = ptrtoint ptr %1 to i64
  br label %36

36:                                               ; preds = %.loopexit22, %33
  %37 = phi i64 [ 254, %33 ], [ %144, %.loopexit22 ]
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 8
  %40 = add nuw nsw i64 %37, 1
  %41 = trunc nuw nsw i64 %40 to i32
  %42 = or i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8], ptr %24, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !5
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i8], ptr %1, i64 %46
  %48 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %40
  %49 = load i32, ptr %48, align 4, !tbaa !5
  %50 = sext i32 %49 to i64
  %51 = getelementptr [4 x i8], ptr %34, i64 %50
  %52 = icmp ugt ptr %47, %51
  br i1 %52, label %.loopexit22, label %.preheader

53:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader:                                       ; preds = %36, %139
  %54 = phi ptr [ %142, %139 ], [ %51, %36 ]
  %55 = phi i32 [ %141, %139 ], [ -1, %36 ]
  %56 = phi ptr [ %140, %139 ], [ null, %36 ]
  %57 = load i32, ptr %54, align 4, !tbaa !5
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %130

59:                                               ; preds = %.preheader
  %60 = zext nneg i32 %57 to i64
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = zext i8 %62 to i64
  %64 = icmp eq i64 %37, %63
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1630, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

66:                                               ; preds = %59
  %67 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %57, i32 1), !nosanitize !10
  %68 = extractvalue { i32, i1 } %67, 0, !nosanitize !10
  %69 = extractvalue { i32, i1 } %67, 1, !nosanitize !10
  br i1 %69, label %53, label %70, !prof !11, !nosanitize !10

70:                                               ; preds = %66
  %71 = icmp slt i32 %68, %2
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = sext i32 %68 to i64
  %74 = getelementptr inbounds i8, ptr %0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !9
  %76 = icmp ugt i8 %62, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %70
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.src, i32 noundef 1631, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

78:                                               ; preds = %72
  %79 = add nsw i32 %57, -1
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = icmp ugt i8 %82, %62
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.src, i32 noundef 1632, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

85:                                               ; preds = %78
  %86 = xor i32 %57, -1
  store i32 %86, ptr %54, align 4, !tbaa !5
  %87 = load i8, ptr %81, align 1, !tbaa !9
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %57, 1
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = getelementptr i8, ptr %61, i64 -2
  %92 = load i8, ptr %91, align 1, !tbaa !9
  %93 = icmp ugt i8 %92, %87
  %94 = sub nsw i32 0, %57
  %95 = select i1 %93, i32 %94, i32 %79
  br label %96

96:                                               ; preds = %90, %85
  %97 = phi i32 [ 0, %85 ], [ %95, %90 ]
  %98 = icmp eq i32 %55, %88
  br i1 %98, label %120, label %99

99:                                               ; preds = %96
  %100 = icmp sgt i32 %55, -1
  br i1 %100, label %101, label %113

101:                                              ; preds = %99
  %102 = ptrtoint ptr %56 to i64
  %103 = sub i64 %102, %35
  %104 = ashr exact i64 %103, 2
  %105 = add nsw i64 %104, 2147483648
  %106 = icmp ult i64 %105, 4294967296
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1637, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

108:                                              ; preds = %101
  %109 = trunc nsw i64 %104 to i32
  %110 = or i32 %55, %39
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i8], ptr %24, i64 %111
  store i32 %109, ptr %112, align 4, !tbaa !5
  br label %113

113:                                              ; preds = %108, %99
  %114 = or disjoint i32 %39, %88
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i8], ptr %24, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !5
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i8], ptr %1, i64 %118
  br label %120

120:                                              ; preds = %113, %96
  %121 = phi ptr [ %119, %113 ], [ %56, %96 ]
  %122 = phi i32 [ %88, %113 ], [ %55, %96 ]
  %123 = icmp ult ptr %121, %54
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.src, i32 noundef 1640, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

125:                                              ; preds = %120
  %126 = icmp eq ptr %121, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.src, i32 noundef 1640, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

128:                                              ; preds = %125
  %129 = getelementptr inbounds i8, ptr %121, i64 -4
  store i32 %97, ptr %121, align 4, !tbaa !5
  br label %139

130:                                              ; preds = %.preheader
  %131 = icmp eq i32 %57, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %130
  %133 = load i8, ptr %0, align 1, !tbaa !9
  %134 = zext i8 %133 to i64
  %135 = icmp eq i64 %37, %134
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  tail call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.src, i32 noundef 1643, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

137:                                              ; preds = %132, %130
  %138 = xor i32 %57, -1
  store i32 %138, ptr %54, align 4, !tbaa !5
  br label %139

139:                                              ; preds = %137, %128
  %140 = phi ptr [ %129, %128 ], [ %56, %137 ]
  %141 = phi i32 [ %122, %128 ], [ %55, %137 ]
  %142 = getelementptr inbounds i8, ptr %54, i64 -4
  %143 = icmp ugt ptr %47, %142
  br i1 %143, label %.loopexit22, label %.preheader, !llvm.loop !12

.loopexit22:                                      ; preds = %139, %36
  %144 = add nsw i64 %37, -1
  %145 = icmp eq i64 %37, 0
  br i1 %145, label %.loopexit23, label %36, !llvm.loop !14

.loopexit23:                                      ; preds = %.loopexit22, %31
  %146 = phi i64 [ %32, %31 ], [ %35, %.loopexit22 ]
  %147 = add nsw i32 %2, -1
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !9
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !5
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x i8], ptr %1, i64 %154
  %156 = zext nneg i32 %2 to i64
  %157 = getelementptr i8, ptr %0, i64 %156
  %158 = getelementptr i8, ptr %157, i64 -2
  %159 = load i8, ptr %158, align 1, !tbaa !9
  %160 = icmp ult i8 %159, %150
  %161 = sub nsw i32 0, %2
  %162 = select i1 %160, i32 %161, i32 %147
  store i32 %162, ptr %155, align 4, !tbaa !5
  %163 = shl nuw nsw i64 %156, 2
  %164 = getelementptr inbounds nuw i8, ptr %1, i64 %163
  %165 = getelementptr inbounds nuw i8, ptr %155, i64 4
  %166 = zext i8 %150 to i32
  br label %167

167:                                              ; preds = %223, %.loopexit23
  %168 = phi i32 [ %166, %.loopexit23 ], [ %225, %223 ]
  %169 = phi ptr [ %165, %.loopexit23 ], [ %224, %223 ]
  %170 = phi ptr [ %1, %.loopexit23 ], [ %226, %223 ]
  %171 = load i32, ptr %170, align 4, !tbaa !5
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %218

173:                                              ; preds = %167
  %174 = add nsw i32 %171, -1
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !9
  %178 = zext i8 %177 to i32
  %179 = zext nneg i32 %171 to i64
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !9
  %182 = icmp ult i8 %177, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.src, i32 noundef 1657, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

184:                                              ; preds = %173
  %185 = icmp eq i32 %174, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %184
  %187 = getelementptr i8, ptr %180, i64 -2
  %188 = load i8, ptr %187, align 1, !tbaa !9
  %189 = icmp ult i8 %188, %177
  br i1 %189, label %190, label %192

190:                                              ; preds = %186, %184
  %191 = sub nsw i32 0, %171
  br label %192

192:                                              ; preds = %190, %186
  %193 = phi i32 [ %191, %190 ], [ %174, %186 ]
  %194 = icmp eq i32 %168, %178
  br i1 %194, label %211, label %195

195:                                              ; preds = %192
  %196 = ptrtoint ptr %169 to i64
  %197 = sub i64 %196, %146
  %198 = ashr exact i64 %197, 2
  %199 = add nsw i64 %198, 2147483648
  %200 = icmp ult i64 %199, 4294967296
  br i1 %200, label %202, label %201

201:                                              ; preds = %195
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1661, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

202:                                              ; preds = %195
  %203 = trunc nsw i64 %198 to i32
  %204 = zext nneg i32 %168 to i64
  %205 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %204
  store i32 %203, ptr %205, align 4, !tbaa !5
  %206 = zext i8 %177 to i64
  %207 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !5
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x i8], ptr %1, i64 %209
  br label %211

211:                                              ; preds = %202, %192
  %212 = phi ptr [ %210, %202 ], [ %169, %192 ]
  %213 = phi i32 [ %178, %202 ], [ %168, %192 ]
  %214 = icmp ult ptr %170, %212
  br i1 %214, label %216, label %215

215:                                              ; preds = %211
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.src, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

216:                                              ; preds = %211
  %217 = getelementptr inbounds nuw i8, ptr %212, i64 4
  store i32 %193, ptr %212, align 4, !tbaa !5
  br label %223

218:                                              ; preds = %167
  %219 = icmp slt i32 %171, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %218
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.src, i32 noundef 1667, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #10
  unreachable

221:                                              ; preds = %218
  %222 = xor i32 %171, -1
  store i32 %222, ptr %170, align 4, !tbaa !5
  br label %223

223:                                              ; preds = %221, %216
  %224 = phi ptr [ %217, %216 ], [ %169, %221 ]
  %225 = phi i32 [ %213, %216 ], [ %168, %221 ]
  %226 = getelementptr inbounds nuw i8, ptr %170, i64 4
  %227 = icmp ult ptr %226, %164
  br i1 %227, label %167, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %223, %22
  %228 = phi i32 [ -2, %22 ], [ 0, %223 ]
  tail call void @free(ptr noundef %24) #11
  tail call void @free(ptr noundef %23) #11
  br label %229

229:                                              ; preds = %.loopexit, %12, %11, %10, %4
  %230 = phi i32 [ 0, %11 ], [ 0, %12 ], [ %228, %.loopexit ], [ -1, %4 ], [ %2, %10 ]
  ret i32 %230
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sort_typeBstar(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull captures(none) initializes((0, 1024)) %2, ptr noundef nonnull captures(none) initializes((0, 262144)) %3, i32 noundef range(i32 2, -2147483648) %4) unnamed_addr #0 {
  %6 = alloca [64 x %struct.anon.1], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %2, i8 0, i64 1024, i1 false), !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262144) %3, i8 0, i64 262144, i1 false), !tbaa !5
  %9 = add nsw i32 %4, -1
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  br label %.loopexit315

.loopexit225:                                     ; preds = %36, %18, %64, %96, %93, %.preheader313, %124, %115, %142, %2916, %.loopexit310
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

.loopexit:                                        ; preds = %45, %149, %718, %209, %769, %754, %.loopexit227, %2909, %2850, %2863, %2880, %2889, %177, %.loopexit317
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

.loopexit315:                                     ; preds = %56, %5
  %14 = phi i32 [ %13, %5 ], [ %62, %56 ]
  %15 = phi i32 [ %9, %5 ], [ %58, %56 ]
  %16 = phi i32 [ %4, %5 ], [ %48, %56 ]
  %17 = zext nneg i32 %15 to i64
  br label %18

18:                                               ; preds = %30, %.loopexit315
  %19 = phi i64 [ %17, %.loopexit315 ], [ %31, %30 ]
  %20 = phi i32 [ %14, %.loopexit315 ], [ %34, %30 ]
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %23, i32 1), !nosanitize !10
  %25 = extractvalue { i32, i1 } %24, 1, !nosanitize !10
  br i1 %25, label %.loopexit225, label %26, !prof !11, !nosanitize !10

26:                                               ; preds = %18
  %27 = extractvalue { i32, i1 } %24, 0, !nosanitize !10
  store i32 %27, ptr %22, align 4, !tbaa !5
  %28 = trunc nuw i64 %19 to i32
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %.loopexit317

30:                                               ; preds = %26
  %31 = add nsw i64 %19, -1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = zext i8 %33 to i32
  %35 = icmp sgt i32 %20, %34
  br i1 %35, label %36, label %18, !llvm.loop !16

36:                                               ; preds = %30
  %37 = trunc i64 %31 to i32
  %38 = shl nuw nsw i32 %34, 8
  %39 = or i32 %38, %20
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %42, i32 1), !nosanitize !10
  %44 = extractvalue { i32, i1 } %43, 1, !nosanitize !10
  br i1 %44, label %.loopexit225, label %45, !prof !11, !nosanitize !10

45:                                               ; preds = %36
  %46 = extractvalue { i32, i1 } %43, 0, !nosanitize !10
  store i32 %46, ptr %41, align 4, !tbaa !5
  %47 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 -1)
  %48 = extractvalue { i32, i1 } %47, 0, !nosanitize !10
  %49 = extractvalue { i32, i1 } %47, 1, !nosanitize !10
  br i1 %49, label %.loopexit, label %50, !prof !11, !nosanitize !10

50:                                               ; preds = %45
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds [4 x i8], ptr %1, i64 %51
  store i32 %37, ptr %52, align 4, !tbaa !5
  %53 = icmp eq i64 %19, 1
  br i1 %53, label %.loopexit317, label %54

54:                                               ; preds = %50
  %55 = add nsw i32 %28, -2
  br label %56

56:                                               ; preds = %72, %54
  %57 = phi i32 [ %62, %72 ], [ %34, %54 ]
  %58 = phi i32 [ %74, %72 ], [ %55, %54 ]
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !9
  %62 = zext i8 %61 to i32
  %63 = icmp samesign ult i32 %57, %62
  br i1 %63, label %.loopexit315, label %64, !llvm.loop !17

64:                                               ; preds = %56
  %65 = shl nuw nsw i32 %57, 8
  %66 = or disjoint i32 %65, %62
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !5
  %70 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %69, i32 1), !nosanitize !10
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !10
  br i1 %71, label %.loopexit225, label %72, !prof !11, !nosanitize !10

72:                                               ; preds = %64
  %73 = extractvalue { i32, i1 } %70, 0, !nosanitize !10
  store i32 %73, ptr %68, align 4, !tbaa !5
  %74 = add nsw i32 %58, -1
  %75 = icmp sgt i32 %58, 0
  br i1 %75, label %56, label %.loopexit317, !llvm.loop !18

.loopexit317:                                     ; preds = %50, %26, %72
  %76 = phi i32 [ %48, %72 ], [ %16, %26 ], [ %48, %50 ]
  %77 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4, i32 %76), !nosanitize !10
  %78 = extractvalue { i32, i1 } %77, 0, !nosanitize !10
  %79 = extractvalue { i32, i1 } %77, 1, !nosanitize !10
  br i1 %79, label %.loopexit, label %.preheader313, !prof !11, !nosanitize !10

.loopexit312:                                     ; preds = %111, %103
  %80 = phi i32 [ %87, %103 ], [ %122, %111 ]
  %81 = phi i32 [ %105, %103 ], [ %113, %111 ]
  %82 = add nuw nsw i64 %85, 1
  %83 = icmp eq i64 %104, 256
  br i1 %83, label %130, label %.preheader313, !llvm.loop !19

.preheader313:                                    ; preds = %.loopexit317, %.loopexit312
  %84 = phi i64 [ %104, %.loopexit312 ], [ 0, %.loopexit317 ]
  %85 = phi i64 [ %82, %.loopexit312 ], [ 1, %.loopexit317 ]
  %86 = phi i32 [ %81, %.loopexit312 ], [ 0, %.loopexit317 ]
  %87 = phi i32 [ %80, %.loopexit312 ], [ 0, %.loopexit317 ]
  %88 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %84
  %89 = load i32, ptr %88, align 4, !tbaa !5
  %90 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 %89), !nosanitize !10
  %91 = extractvalue { i32, i1 } %90, 0, !nosanitize !10
  %92 = extractvalue { i32, i1 } %90, 1, !nosanitize !10
  br i1 %92, label %.loopexit225, label %93, !prof !11, !nosanitize !10

93:                                               ; preds = %.preheader313
  %94 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 %87), !nosanitize !10
  %95 = extractvalue { i32, i1 } %94, 1, !nosanitize !10
  br i1 %95, label %.loopexit225, label %96, !prof !11, !nosanitize !10

96:                                               ; preds = %93
  %97 = extractvalue { i32, i1 } %94, 0, !nosanitize !10
  store i32 %97, ptr %88, align 4, !tbaa !5
  %.idx1284 = shl i64 %84, 10
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 %.idx1284
  %99 = getelementptr inbounds nuw [4 x i8], ptr %98, i64 %84
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %101 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %91, i32 %100), !nosanitize !10
  %102 = extractvalue { i32, i1 } %101, 1, !nosanitize !10
  br i1 %102, label %.loopexit225, label %103, !prof !11, !nosanitize !10

103:                                              ; preds = %96
  %104 = add nuw nsw i64 %84, 1
  %105 = extractvalue { i32, i1 } %101, 0
  %106 = icmp samesign ult i64 %84, 255
  br i1 %106, label %107, label %.loopexit312

107:                                              ; preds = %103
  %108 = shl nuw nsw i64 %84, 10
  %109 = getelementptr inbounds nuw i8, ptr %3, i64 %108
  %110 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %84
  br label %115

111:                                              ; preds = %124
  %112 = add nuw nsw i64 %116, 1
  %113 = extractvalue { i32, i1 } %128, 0
  %114 = icmp eq i64 %112, 256
  br i1 %114, label %.loopexit312, label %115, !llvm.loop !20

115:                                              ; preds = %111, %107
  %116 = phi i64 [ %85, %107 ], [ %112, %111 ]
  %117 = phi i32 [ %105, %107 ], [ %113, %111 ]
  %118 = phi i32 [ %87, %107 ], [ %122, %111 ]
  %119 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %116
  %120 = load i32, ptr %119, align 4, !tbaa !5
  %121 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %118, i32 %120), !nosanitize !10
  %122 = extractvalue { i32, i1 } %121, 0, !nosanitize !10
  %123 = extractvalue { i32, i1 } %121, 1, !nosanitize !10
  br i1 %123, label %.loopexit225, label %124, !prof !11, !nosanitize !10

124:                                              ; preds = %115
  store i32 %122, ptr %119, align 4, !tbaa !5
  %125 = shl nuw nsw i64 %116, 10
  %126 = getelementptr inbounds nuw i8, ptr %110, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !5
  %128 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %117, i32 %127), !nosanitize !10
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !10
  br i1 %129, label %.loopexit225, label %111, !prof !11, !nosanitize !10

130:                                              ; preds = %.loopexit312
  %131 = icmp sgt i32 %78, 0
  br i1 %131, label %132, label %.loopexit226

132:                                              ; preds = %130
  %133 = zext nneg i32 %4 to i64
  %134 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %133
  %135 = zext nneg i32 %78 to i64
  %136 = sub nsw i64 0, %135
  %137 = getelementptr inbounds [4 x i8], ptr %134, i64 %136
  %138 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %135
  %139 = icmp eq i32 %78, 1
  br i1 %139, label %.loopexit310, label %140

140:                                              ; preds = %132
  %141 = add nsw i32 %78, -2
  br label %142

142:                                              ; preds = %165, %140
  %143 = phi i32 [ %169, %165 ], [ %141, %140 ]
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds nuw [4 x i8], ptr %137, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !5
  %147 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %146, i32 1), !nosanitize !10
  %148 = extractvalue { i32, i1 } %147, 1, !nosanitize !10
  br i1 %148, label %.loopexit225, label %149, !prof !11, !nosanitize !10

149:                                              ; preds = %142
  %150 = extractvalue { i32, i1 } %147, 0, !nosanitize !10
  %151 = sext i32 %146 to i64
  %152 = getelementptr inbounds i8, ptr %0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !9
  %154 = zext i8 %153 to i64
  %155 = sext i32 %150 to i64
  %156 = getelementptr inbounds i8, ptr %0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !9
  %158 = zext i8 %157 to i64
  %159 = shl nuw nsw i64 %154, 10
  %160 = getelementptr inbounds nuw i8, ptr %3, i64 %159
  %161 = getelementptr inbounds nuw [4 x i8], ptr %160, i64 %158
  %162 = load i32, ptr %161, align 4, !tbaa !5
  %163 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %162, i32 -1)
  %164 = extractvalue { i32, i1 } %163, 1, !nosanitize !10
  br i1 %164, label %.loopexit, label %165, !prof !11, !nosanitize !10

165:                                              ; preds = %149
  %166 = extractvalue { i32, i1 } %163, 0, !nosanitize !10
  store i32 %166, ptr %161, align 4, !tbaa !5
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x i8], ptr %1, i64 %167
  store i32 %143, ptr %168, align 4, !tbaa !5
  %169 = add nsw i32 %143, -1
  %170 = icmp sgt i32 %143, 0
  br i1 %170, label %142, label %.loopexit310, !llvm.loop !21

.loopexit310:                                     ; preds = %165, %132
  %171 = add nsw i32 %78, -1
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds nuw [4 x i8], ptr %137, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !5
  %175 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %174, i32 1), !nosanitize !10
  %176 = extractvalue { i32, i1 } %175, 1, !nosanitize !10
  br i1 %176, label %.loopexit225, label %177, !prof !11, !nosanitize !10

177:                                              ; preds = %.loopexit310
  %178 = sext i32 %174 to i64
  %179 = getelementptr inbounds i8, ptr %0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !9
  %181 = zext i8 %180 to i64
  %182 = extractvalue { i32, i1 } %175, 0, !nosanitize !10
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, ptr %0, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !9
  %186 = zext i8 %185 to i64
  %187 = shl nuw nsw i64 %181, 10
  %188 = getelementptr inbounds nuw i8, ptr %3, i64 %187
  %189 = getelementptr inbounds nuw [4 x i8], ptr %188, i64 %186
  %190 = load i32, ptr %189, align 4, !tbaa !5
  %191 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %190, i32 -1)
  %192 = extractvalue { i32, i1 } %191, 1, !nosanitize !10
  br i1 %192, label %.loopexit, label %193, !prof !11, !nosanitize !10

193:                                              ; preds = %177
  %194 = extractvalue { i32, i1 } %191, 0, !nosanitize !10
  store i32 %194, ptr %189, align 4, !tbaa !5
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [4 x i8], ptr %1, i64 %195
  store i32 %171, ptr %196, align 4, !tbaa !5
  %197 = icmp slt i32 %78, 1073741824
  br i1 %197, label %199, label %198, !prof !22, !nosanitize !10

198:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

199:                                              ; preds = %193
  %200 = shl nuw nsw i32 %78, 1
  %201 = sub nsw i32 %4, %200
  %202 = icmp slt i32 %201, 1024
  %203 = getelementptr i8, ptr %0, i64 2
  %204 = getelementptr i8, ptr %0, i64 %133
  br label %205

205:                                              ; preds = %721, %199
  %206 = phi i32 [ 254, %199 ], [ %722, %721 ]
  %207 = phi i32 [ %78, %199 ], [ %215, %721 ]
  %208 = shl i32 %206, 8
  br label %209

209:                                              ; preds = %715, %205
  %210 = phi i32 [ 255, %205 ], [ %716, %715 ]
  %211 = phi i32 [ %207, %205 ], [ %215, %715 ]
  %212 = or i32 %210, %208
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [4 x i8], ptr %3, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !5
  %216 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %211, i32 %215), !nosanitize !10
  %217 = extractvalue { i32, i1 } %216, 1, !nosanitize !10
  br i1 %217, label %.loopexit, label %218, !prof !11, !nosanitize !10

218:                                              ; preds = %209
  %219 = extractvalue { i32, i1 } %216, 0, !nosanitize !10
  %220 = icmp sgt i32 %219, 1
  br i1 %220, label %221, label %715

221:                                              ; preds = %218
  %222 = sext i32 %215 to i64
  %.idx = shl nsw i64 %222, 2
  %223 = getelementptr inbounds i8, ptr %1, i64 %.idx
  %224 = load i32, ptr %223, align 4, !tbaa !5
  %225 = sext i32 %211 to i64
  %.idx219 = shl nsw i64 %225, 2
  %226 = getelementptr inbounds i8, ptr %1, i64 %.idx219
  %227 = icmp eq i32 %224, %171
  %228 = getelementptr inbounds nuw i8, ptr %223, i64 4
  %229 = select i1 %227, ptr %228, ptr %223
  br i1 %202, label %232, label %230

230:                                              ; preds = %221
  %231 = ptrtoint ptr %229 to i64
  br label %353

232:                                              ; preds = %221
  %233 = ptrtoint ptr %226 to i64
  %234 = ptrtoint ptr %229 to i64
  %235 = sub i64 %233, %234
  %236 = ashr exact i64 %235, 2
  %237 = add nsw i64 %236, 2147483648
  %238 = icmp ult i64 %237, 4294967296
  br i1 %238, label %240, label %239

239:                                              ; preds = %232
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 853, ptr noundef nonnull @__PRETTY_FUNCTION__.sssort) #10
  unreachable

240:                                              ; preds = %232
  %241 = trunc nsw i64 %236 to i32
  %242 = icmp slt i32 %201, %241
  br i1 %242, label %243, label %353

243:                                              ; preds = %240
  %244 = icmp sgt i64 %236, 1048575
  br i1 %244, label %346, label %245

245:                                              ; preds = %243
  %246 = icmp ult i64 %236, 65536
  br i1 %246, label %265, label %247

247:                                              ; preds = %245
  %248 = icmp ult i64 %236, 16777216
  br i1 %248, label %258, label %249

249:                                              ; preds = %247
  %250 = lshr i64 %236, 24
  %251 = and i64 %250, 255
  %252 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !5
  %254 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %253, i32 24), !nosanitize !10
  %255 = extractvalue { i32, i1 } %254, 0, !nosanitize !10
  %256 = extractvalue { i32, i1 } %254, 1, !nosanitize !10
  br i1 %256, label %257, label %277, !prof !11, !nosanitize !10

257:                                              ; preds = %313, %303, %299, %291, %267, %258, %249
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

258:                                              ; preds = %247
  %259 = lshr i64 %236, 16
  %260 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !5
  %262 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %261, i32 16), !nosanitize !10
  %263 = extractvalue { i32, i1 } %262, 0, !nosanitize !10
  %264 = extractvalue { i32, i1 } %262, 1, !nosanitize !10
  br i1 %264, label %257, label %277, !prof !11, !nosanitize !10

265:                                              ; preds = %245
  %266 = icmp samesign ult i64 %236, 256
  br i1 %266, label %274, label %267

267:                                              ; preds = %265
  %268 = lshr i64 %236, 8
  %269 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !5
  %271 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %270, i32 8), !nosanitize !10
  %272 = extractvalue { i32, i1 } %271, 0, !nosanitize !10
  %273 = extractvalue { i32, i1 } %271, 1, !nosanitize !10
  br i1 %273, label %257, label %277, !prof !11, !nosanitize !10

274:                                              ; preds = %265
  %275 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %235
  %276 = load i32, ptr %275, align 4, !tbaa !5
  br label %277

277:                                              ; preds = %274, %267, %258, %249
  %278 = phi i32 [ %255, %249 ], [ %263, %258 ], [ %272, %267 ], [ %276, %274 ]
  %279 = icmp sgt i32 %278, 15
  br i1 %279, label %280, label %311

280:                                              ; preds = %277
  %281 = lshr i32 %278, 1
  %282 = add nsw i32 %281, -7
  %283 = and i32 %278, 2147483646
  %284 = add nsw i32 %283, -6
  %285 = ashr i32 %241, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [4 x i8], ptr @sqq_table, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !5
  %289 = shl i32 %288, %282
  %290 = icmp samesign ugt i32 %278, 23
  br i1 %290, label %291, label %299

291:                                              ; preds = %280
  %292 = add i32 %289, 1
  %293 = sdiv i32 %241, %289
  %294 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %292, i32 %293), !nosanitize !10
  %295 = extractvalue { i32, i1 } %294, 1, !nosanitize !10
  br i1 %295, label %257, label %296, !prof !11, !nosanitize !10

296:                                              ; preds = %291
  %297 = extractvalue { i32, i1 } %294, 0, !nosanitize !10
  %298 = ashr i32 %297, 1
  br label %299

299:                                              ; preds = %296, %280
  %300 = phi i32 [ %298, %296 ], [ %289, %280 ]
  %301 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %300, i32 1), !nosanitize !10
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !10
  br i1 %302, label %257, label %303, !prof !11, !nosanitize !10

303:                                              ; preds = %299
  %304 = extractvalue { i32, i1 } %301, 0, !nosanitize !10
  %305 = sdiv i32 %241, %300
  %306 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %304, i32 %305), !nosanitize !10
  %307 = extractvalue { i32, i1 } %306, 1, !nosanitize !10
  br i1 %307, label %257, label %308, !prof !11, !nosanitize !10

308:                                              ; preds = %303
  %309 = extractvalue { i32, i1 } %306, 0, !nosanitize !10
  %310 = ashr i32 %309, 1
  br label %333

311:                                              ; preds = %277
  %312 = icmp sgt i32 %278, 7
  br i1 %312, label %313, label %327

313:                                              ; preds = %311
  %314 = lshr i32 %278, 1
  %315 = sub nuw nsw i32 7, %314
  %316 = and i32 %278, 2147483646
  %317 = add nsw i32 %316, -6
  %318 = ashr i32 %241, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [4 x i8], ptr @sqq_table, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !5
  %322 = ashr i32 %321, %315
  %323 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %322, i32 1), !nosanitize !10
  %324 = extractvalue { i32, i1 } %323, 1, !nosanitize !10
  br i1 %324, label %257, label %325, !prof !11, !nosanitize !10

325:                                              ; preds = %313
  %326 = extractvalue { i32, i1 } %323, 0, !nosanitize !10
  br label %333

327:                                              ; preds = %311
  %328 = shl i64 %235, 30
  %329 = ashr i64 %328, 32
  %330 = getelementptr inbounds [4 x i8], ptr @sqq_table, i64 %329
  %331 = load i32, ptr %330, align 4, !tbaa !5
  %332 = ashr i32 %331, 4
  br label %343

333:                                              ; preds = %325, %308
  %334 = phi i32 [ %310, %308 ], [ %326, %325 ]
  %335 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %334, i32 %334), !nosanitize !10
  %336 = extractvalue { i32, i1 } %335, 1, !nosanitize !10
  br i1 %336, label %337, label %338, !prof !11, !nosanitize !10

337:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

338:                                              ; preds = %333
  %339 = extractvalue { i32, i1 } %335, 0, !nosanitize !10
  %340 = icmp sgt i32 %339, %241
  %341 = sext i1 %340 to i32
  %342 = add nsw i32 %334, %341
  br label %343

343:                                              ; preds = %338, %327
  %344 = phi i32 [ %332, %327 ], [ %342, %338 ]
  %345 = icmp slt i32 %201, %344
  br i1 %345, label %346, label %353

346:                                              ; preds = %343, %243
  %347 = phi i32 [ %344, %343 ], [ 1024, %243 ]
  %348 = tail call i32 @llvm.smin.i32(i32 %347, i32 1024)
  %349 = sext i32 %348 to i64
  %350 = sub nsw i64 0, %349
  %351 = getelementptr inbounds [4 x i8], ptr %226, i64 %350
  %352 = icmp eq i32 %347, 0
  br label %353

353:                                              ; preds = %346, %343, %240, %230
  %354 = phi i64 [ %231, %230 ], [ %234, %240 ], [ %234, %343 ], [ %234, %346 ]
  %355 = phi i32 [ %201, %230 ], [ %201, %240 ], [ %201, %343 ], [ %348, %346 ]
  %356 = phi ptr [ %138, %230 ], [ %138, %240 ], [ %138, %343 ], [ %351, %346 ]
  %357 = phi ptr [ %226, %230 ], [ %226, %240 ], [ %226, %343 ], [ %351, %346 ]
  %358 = phi i1 [ true, %230 ], [ true, %240 ], [ true, %343 ], [ %352, %346 ]
  %359 = ptrtoint ptr %357 to i64
  %360 = sub i64 %359, %354
  %361 = icmp sgt i64 %360, 4096
  br i1 %361, label %363, label %362

362:                                              ; preds = %353
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %229, ptr noundef %357)
  br label %.loopexit305

363:                                              ; preds = %353
  %364 = ptrtoint ptr %226 to i64
  br label %365

365:                                              ; preds = %396, %363
  %366 = phi i32 [ 0, %363 ], [ %397, %396 ]
  %367 = phi ptr [ %229, %363 ], [ %368, %396 ]
  %368 = getelementptr inbounds nuw i8, ptr %367, i64 4096
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %367, ptr noundef %368)
  %369 = ptrtoint ptr %368 to i64
  %370 = sub i64 %364, %369
  %371 = ashr exact i64 %370, 2
  %372 = add nsw i64 %371, 2147483648
  %373 = icmp ult i64 %372, 4294967296
  br i1 %373, label %375, label %374

374:                                              ; preds = %365
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.src, i32 noundef 866, ptr noundef nonnull @__PRETTY_FUNCTION__.sssort) #10
  unreachable

375:                                              ; preds = %365
  %376 = trunc nsw i64 %371 to i32
  %377 = icmp slt i32 %355, %376
  %378 = select i1 %377, ptr %368, ptr %356
  %379 = tail call i32 @llvm.smax.i32(i32 %355, i32 %376)
  %380 = and i32 %366, 1
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %.loopexit296, label %.preheader295

.preheader295:                                    ; preds = %375, %.preheader295
  %382 = phi i32 [ %389, %.preheader295 ], [ 1024, %375 ]
  %383 = phi i32 [ %390, %.preheader295 ], [ %366, %375 ]
  %384 = phi ptr [ %387, %.preheader295 ], [ %367, %375 ]
  %385 = sext i32 %382 to i64
  %386 = sub nsw i64 0, %385
  %387 = getelementptr inbounds [4 x i8], ptr %384, i64 %386
  %388 = getelementptr inbounds [4 x i8], ptr %384, i64 %385
  tail call fastcc void @ss_swapmerge(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %387, ptr noundef %384, ptr noundef %388, ptr noundef %378, i32 noundef %379)
  %389 = shl i32 %382, 1
  %390 = ashr i32 %383, 1
  %391 = and i32 %383, 2
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %.loopexit296, label %.preheader295, !llvm.loop !23

.loopexit296:                                     ; preds = %.preheader295, %375
  %393 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %366, i32 1), !nosanitize !10
  %394 = extractvalue { i32, i1 } %393, 1, !nosanitize !10
  br i1 %394, label %395, label %396, !prof !11, !nosanitize !10

395:                                              ; preds = %.loopexit296
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

396:                                              ; preds = %.loopexit296
  %397 = extractvalue { i32, i1 } %393, 0, !nosanitize !10
  %398 = sub i64 %359, %369
  %399 = icmp sgt i64 %398, 4096
  br i1 %399, label %365, label %400, !llvm.loop !24

400:                                              ; preds = %396
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %368, ptr noundef %357)
  %401 = icmp eq i32 %397, 0
  br i1 %401, label %.loopexit305, label %.preheader304

.preheader304:                                    ; preds = %400, %411
  %402 = phi i32 [ %414, %411 ], [ %397, %400 ]
  %403 = phi i32 [ %413, %411 ], [ 1024, %400 ]
  %404 = phi ptr [ %412, %411 ], [ %368, %400 ]
  %405 = and i32 %402, 1
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %411, label %407

407:                                              ; preds = %.preheader304
  %408 = sext i32 %403 to i64
  %409 = sub nsw i64 0, %408
  %410 = getelementptr inbounds [4 x i8], ptr %404, i64 %409
  tail call fastcc void @ss_swapmerge(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %410, ptr noundef %404, ptr noundef %357, ptr noundef %356, i32 noundef %355)
  br label %411

411:                                              ; preds = %407, %.preheader304
  %412 = phi ptr [ %410, %407 ], [ %404, %.preheader304 ]
  %413 = shl i32 %403, 1
  %414 = ashr i32 %402, 1
  %415 = icmp ult i32 %402, 2
  br i1 %415, label %.loopexit305, label %.preheader304, !llvm.loop !25

.loopexit305:                                     ; preds = %411, %400, %362
  br i1 %358, label %.loopexit303, label %416

416:                                              ; preds = %.loopexit305
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %357, ptr noundef nonnull %226)
  br label %417

417:                                              ; preds = %.loopexit292, %416
  %418 = phi ptr [ %226, %416 ], [ %655, %.loopexit292 ]
  %419 = phi ptr [ %357, %416 ], [ %649, %.loopexit292 ]
  %420 = getelementptr inbounds i8, ptr %418, i64 -4
  %421 = load i32, ptr %420, align 4, !tbaa !5
  %422 = icmp slt i32 %421, 0
  %423 = ashr i32 %421, 31
  %424 = xor i32 %423, %421
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds nuw [4 x i8], ptr %137, i64 %425
  %427 = ptrtoint ptr %419 to i64
  %428 = sub i64 %427, %354
  %429 = ashr exact i64 %428, 2
  %430 = add nsw i64 %429, 2147483648
  %431 = icmp ult i64 %430, 4294967296
  br i1 %431, label %433, label %432

432:                                              ; preds = %417
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 604, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_inplacemerge) #10
  unreachable

433:                                              ; preds = %417
  %434 = icmp sgt i64 %429, 0
  br i1 %434, label %435, label %505

435:                                              ; preds = %433
  %436 = trunc nuw nsw i64 %429 to i32
  %437 = load i32, ptr %426, align 4, !tbaa !5
  %438 = getelementptr i8, ptr %426, i64 4
  %439 = load i32, ptr %438, align 4, !tbaa !5
  %440 = sext i32 %437 to i64
  %441 = getelementptr inbounds i8, ptr %203, i64 %440
  %442 = sext i32 %439 to i64
  %443 = getelementptr i8, ptr %203, i64 %442
  %444 = icmp ult ptr %441, %443
  br label %445

445:                                              ; preds = %492, %435
  %446 = phi i32 [ -1, %435 ], [ %501, %492 ]
  %447 = phi i32 [ %436, %435 ], [ %500, %492 ]
  %448 = phi ptr [ %229, %435 ], [ %498, %492 ]
  %449 = lshr i32 %447, 1
  %450 = zext nneg i32 %449 to i64
  %451 = getelementptr inbounds nuw [4 x i8], ptr %448, i64 %450
  %452 = load i32, ptr %451, align 4, !tbaa !5
  %453 = ashr i32 %452, 31
  %454 = xor i32 %453, %452
  %455 = zext nneg i32 %454 to i64
  %456 = getelementptr inbounds nuw [4 x i8], ptr %137, i64 %455
  %457 = load i32, ptr %456, align 4, !tbaa !5
  %458 = getelementptr i8, ptr %456, i64 4
  %459 = load i32, ptr %458, align 4, !tbaa !5
  %460 = sext i32 %457 to i64
  %461 = getelementptr inbounds i8, ptr %203, i64 %460
  %462 = sext i32 %459 to i64
  %463 = getelementptr i8, ptr %203, i64 %462
  %464 = icmp ult ptr %461, %463
  %465 = select i1 %464, i1 %444, i1 false
  br i1 %465, label %.preheader286, label %.loopexit288

.preheader286:                                    ; preds = %445, %471
  %466 = phi ptr [ %472, %471 ], [ %461, %445 ]
  %467 = phi ptr [ %473, %471 ], [ %441, %445 ]
  %468 = load i8, ptr %466, align 1, !tbaa !9
  %469 = load i8, ptr %467, align 1, !tbaa !9
  %470 = icmp eq i8 %468, %469
  br i1 %470, label %471, label %.loopexit287

471:                                              ; preds = %.preheader286
  %472 = getelementptr inbounds nuw i8, ptr %466, i64 1
  %473 = getelementptr inbounds nuw i8, ptr %467, i64 1
  %474 = icmp ult ptr %472, %463
  %475 = icmp ult ptr %473, %443
  %476 = select i1 %474, i1 %475, i1 false
  br i1 %476, label %.preheader286, label %.loopexit288, !llvm.loop !26

.loopexit288:                                     ; preds = %471, %445
  %477 = phi ptr [ %441, %445 ], [ %473, %471 ]
  %478 = phi ptr [ %461, %445 ], [ %472, %471 ]
  %479 = phi i1 [ %464, %445 ], [ %474, %471 ]
  %480 = phi i1 [ %444, %445 ], [ %475, %471 ]
  br i1 %479, label %481, label %490

481:                                              ; preds = %.loopexit288
  br i1 %480, label %482, label %492

482:                                              ; preds = %481
  %483 = load i8, ptr %478, align 1, !tbaa !9
  %484 = load i8, ptr %477, align 1, !tbaa !9
  br label %.loopexit287

.loopexit287:                                     ; preds = %.preheader286, %482
  %485 = phi i8 [ %484, %482 ], [ %469, %.preheader286 ]
  %486 = phi i8 [ %483, %482 ], [ %468, %.preheader286 ]
  %487 = zext i8 %486 to i32
  %488 = zext i8 %485 to i32
  %489 = sub nsw i32 %487, %488
  br label %492

490:                                              ; preds = %.loopexit288
  %491 = sext i1 %480 to i32
  br label %492

492:                                              ; preds = %490, %.loopexit287, %481
  %493 = phi i32 [ %491, %490 ], [ %489, %.loopexit287 ], [ 1, %481 ]
  %494 = icmp slt i32 %493, 0
  %495 = and i32 %447, 1
  %496 = xor i32 %495, 1
  %497 = getelementptr inbounds nuw i8, ptr %451, i64 4
  %498 = select i1 %494, ptr %497, ptr %448
  %499 = select i1 %494, i32 %496, i32 0
  %500 = sub nsw i32 %449, %499
  %501 = select i1 %494, i32 %446, i32 %493
  %502 = icmp sgt i32 %500, 0
  br i1 %502, label %445, label %503, !llvm.loop !27

503:                                              ; preds = %492
  %504 = icmp ult ptr %498, %419
  br i1 %504, label %507, label %647

505:                                              ; preds = %433
  %506 = icmp ult ptr %229, %419
  br i1 %506, label %512, label %647

507:                                              ; preds = %503
  %508 = icmp eq i32 %501, 0
  br i1 %508, label %509, label %512

509:                                              ; preds = %507
  %510 = load i32, ptr %498, align 4, !tbaa !5
  %511 = xor i32 %510, -1
  store i32 %511, ptr %498, align 4, !tbaa !5
  br label %512

512:                                              ; preds = %509, %507, %505
  %513 = phi ptr [ %498, %509 ], [ %498, %507 ], [ %229, %505 ]
  %514 = ptrtoint ptr %513 to i64
  %515 = sub i64 %427, %514
  %516 = ashr i64 %515, 2
  %517 = add nsw i64 %516, 2147483648
  %518 = icmp ult i64 %517, 4294967296
  br i1 %518, label %520, label %519

519:                                              ; preds = %512
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 553, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_rotate) #10
  unreachable

520:                                              ; preds = %512
  %521 = ptrtoint ptr %418 to i64
  %522 = sub i64 %521, %427
  %523 = ashr i64 %522, 2
  %524 = add nsw i64 %523, 2147483648
  %525 = icmp ult i64 %524, 4294967296
  br i1 %525, label %527, label %526

526:                                              ; preds = %520
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.src, i32 noundef 554, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_rotate) #10
  unreachable

527:                                              ; preds = %520
  %528 = icmp sgt i64 %516, 0
  %529 = icmp sgt i64 %523, 0
  %530 = and i1 %529, %528
  br i1 %530, label %531, label %.loopexit293

531:                                              ; preds = %527
  %532 = trunc nuw nsw i64 %523 to i32
  %533 = trunc nuw nsw i64 %516 to i32
  %534 = getelementptr inbounds i8, ptr %419, i64 -4
  br label %535

535:                                              ; preds = %.loopexit283, %531
  %536 = phi i32 [ %532, %531 ], [ %640, %.loopexit283 ]
  %537 = phi i32 [ %533, %531 ], [ %639, %.loopexit283 ]
  %538 = phi ptr [ %418, %531 ], [ %638, %.loopexit283 ]
  %539 = phi ptr [ %513, %531 ], [ %637, %.loopexit283 ]
  %540 = icmp eq i32 %537, %536
  br i1 %540, label %541, label %587

541:                                              ; preds = %535
  %542 = add nsw i32 %536, -1
  %543 = zext nneg i32 %542 to i64
  %544 = add nuw nsw i64 %543, 1
  %545 = icmp samesign ult i32 %536, 8
  br i1 %545, label %.preheader2357, label %546

546:                                              ; preds = %541
  %547 = getelementptr i8, ptr %539, i64 4
  %548 = shl nuw nsw i64 %543, 2
  %549 = getelementptr i8, ptr %547, i64 %548
  %550 = getelementptr i8, ptr %419, i64 4
  %551 = getelementptr i8, ptr %550, i64 %548
  %552 = icmp ult ptr %539, %551
  %553 = icmp ult ptr %419, %549
  %554 = and i1 %552, %553
  br i1 %554, label %.preheader2357, label %555

555:                                              ; preds = %546
  %556 = and i64 %544, 4294967288
  br label %557

557:                                              ; preds = %557, %555
  %558 = phi i64 [ 0, %555 ], [ %568, %557 ]
  %559 = shl i64 %558, 2
  %560 = getelementptr i8, ptr %539, i64 %559
  %561 = getelementptr i8, ptr %419, i64 %559
  %562 = getelementptr i8, ptr %560, i64 16
  %563 = load <4 x i32>, ptr %560, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  %564 = load <4 x i32>, ptr %562, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  %565 = getelementptr i8, ptr %561, i64 16
  %566 = load <4 x i32>, ptr %561, align 4, !tbaa !5, !alias.scope !31
  %567 = load <4 x i32>, ptr %565, align 4, !tbaa !5, !alias.scope !31
  store <4 x i32> %566, ptr %560, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  store <4 x i32> %567, ptr %562, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  store <4 x i32> %563, ptr %561, align 4, !tbaa !5, !alias.scope !31
  store <4 x i32> %564, ptr %565, align 4, !tbaa !5, !alias.scope !31
  %568 = add nuw nsw i64 %558, 8
  %569 = icmp eq i64 %568, %556
  br i1 %569, label %570, label %557, !llvm.loop !33

570:                                              ; preds = %557
  %571 = shl nuw nsw i64 %556, 2
  %572 = getelementptr i8, ptr %539, i64 %571
  %573 = trunc nuw nsw i64 %556 to i32
  %574 = sub nsw i32 %536, %573
  %575 = getelementptr i8, ptr %419, i64 %571
  %576 = icmp eq i64 %544, %556
  br i1 %576, label %.loopexit293, label %.preheader2357

.preheader2357:                                   ; preds = %570, %546, %541
  %.ph2358 = phi ptr [ %572, %570 ], [ %539, %541 ], [ %539, %546 ]
  %.ph2359 = phi i32 [ %574, %570 ], [ %536, %541 ], [ %536, %546 ]
  %.ph2360 = phi ptr [ %575, %570 ], [ %419, %541 ], [ %419, %546 ]
  br label %577

577:                                              ; preds = %.preheader2357, %577
  %578 = phi ptr [ %584, %577 ], [ %.ph2358, %.preheader2357 ]
  %579 = phi i32 [ %583, %577 ], [ %.ph2359, %.preheader2357 ]
  %580 = phi ptr [ %585, %577 ], [ %.ph2360, %.preheader2357 ]
  %581 = load i32, ptr %578, align 4, !tbaa !5
  %582 = load i32, ptr %580, align 4, !tbaa !5
  store i32 %582, ptr %578, align 4, !tbaa !5
  store i32 %581, ptr %580, align 4, !tbaa !5
  %583 = add nsw i32 %579, -1
  %584 = getelementptr inbounds nuw i8, ptr %578, i64 4
  %585 = getelementptr inbounds nuw i8, ptr %580, i64 4
  %586 = icmp samesign ugt i32 %579, 1
  br i1 %586, label %577, label %.loopexit293, !llvm.loop !36

587:                                              ; preds = %535
  %588 = icmp samesign ult i32 %537, %536
  br i1 %588, label %589, label %609

589:                                              ; preds = %587
  %590 = getelementptr inbounds i8, ptr %538, i64 -4
  %591 = xor i32 %537, -1
  br label %592

592:                                              ; preds = %604, %589
  %593 = phi ptr [ %607, %604 ], [ %590, %589 ]
  %594 = phi i32 [ %605, %604 ], [ %536, %589 ]
  %595 = load i32, ptr %593, align 4, !tbaa !5
  br label %596

596:                                              ; preds = %596, %592
  %597 = phi ptr [ %600, %596 ], [ %593, %592 ]
  %598 = phi ptr [ %602, %596 ], [ %534, %592 ]
  %599 = load i32, ptr %598, align 4, !tbaa !5
  %600 = getelementptr inbounds i8, ptr %597, i64 -4
  store i32 %599, ptr %597, align 4, !tbaa !5
  %601 = load i32, ptr %600, align 4, !tbaa !5
  %602 = getelementptr inbounds i8, ptr %598, i64 -4
  store i32 %601, ptr %598, align 4, !tbaa !5
  %603 = icmp ult ptr %602, %539
  br i1 %603, label %604, label %596

604:                                              ; preds = %596
  store i32 %595, ptr %600, align 4, !tbaa !5
  %605 = add i32 %594, %591
  %606 = icmp sgt i32 %605, %537
  %607 = getelementptr inbounds i8, ptr %597, i64 -8
  br i1 %606, label %592, label %.loopexit283

608:                                              ; preds = %627
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

609:                                              ; preds = %587
  %610 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %536, i32 1)
  %611 = extractvalue { i32, i1 } %610, 1
  %612 = extractvalue { i32, i1 } %610, 0
  br i1 %611, label %.preheader282, label %.preheader284, !prof !11, !nosanitize !10

.preheader282:                                    ; preds = %609, %.preheader282
  %613 = phi ptr [ %616, %.preheader282 ], [ %539, %609 ]
  %614 = phi ptr [ %618, %.preheader282 ], [ %419, %609 ]
  %615 = load i32, ptr %614, align 4, !tbaa !5
  %616 = getelementptr inbounds nuw i8, ptr %613, i64 4
  store i32 %615, ptr %613, align 4, !tbaa !5
  %617 = load i32, ptr %616, align 4, !tbaa !5
  %618 = getelementptr inbounds nuw i8, ptr %614, i64 4
  store i32 %617, ptr %614, align 4, !tbaa !5
  br label %.preheader282

619:                                              ; preds = %.preheader284, %619
  %620 = phi ptr [ %623, %619 ], [ %634, %.preheader284 ]
  %621 = phi ptr [ %625, %619 ], [ %419, %.preheader284 ]
  %622 = load i32, ptr %621, align 4, !tbaa !5
  %623 = getelementptr inbounds nuw i8, ptr %620, i64 4
  store i32 %622, ptr %620, align 4, !tbaa !5
  %624 = load i32, ptr %623, align 4, !tbaa !5
  %625 = getelementptr inbounds nuw i8, ptr %621, i64 4
  store i32 %624, ptr %621, align 4, !tbaa !5
  %626 = icmp ugt ptr %538, %625
  br i1 %626, label %619, label %627

627:                                              ; preds = %619
  store i32 %636, ptr %623, align 4, !tbaa !5
  %628 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %635, i32 %612), !nosanitize !10
  %629 = extractvalue { i32, i1 } %628, 1, !nosanitize !10
  br i1 %629, label %608, label %630, !prof !11, !nosanitize !10

630:                                              ; preds = %627
  %631 = extractvalue { i32, i1 } %628, 0, !nosanitize !10
  %632 = getelementptr inbounds nuw i8, ptr %620, i64 8
  %633 = icmp sgt i32 %631, %536
  br i1 %633, label %.preheader284, label %.loopexit283

.preheader284:                                    ; preds = %609, %630
  %634 = phi ptr [ %632, %630 ], [ %539, %609 ]
  %635 = phi i32 [ %631, %630 ], [ %537, %609 ]
  %636 = load i32, ptr %634, align 4, !tbaa !5
  br label %619

.loopexit283:                                     ; preds = %630, %604
  %637 = phi ptr [ %539, %604 ], [ %632, %630 ]
  %638 = phi ptr [ %600, %604 ], [ %538, %630 ]
  %639 = phi i32 [ %537, %604 ], [ %631, %630 ]
  %640 = phi i32 [ %605, %604 ], [ %536, %630 ]
  %641 = icmp sgt i32 %639, 0
  %642 = icmp sgt i32 %640, 0
  %643 = and i1 %641, %642
  br i1 %643, label %535, label %.loopexit293, !llvm.loop !37

.loopexit293:                                     ; preds = %.loopexit283, %577, %570, %527
  %644 = sub nsw i64 0, %516
  %645 = getelementptr inbounds [4 x i8], ptr %418, i64 %644
  %646 = icmp eq ptr %229, %513
  br i1 %646, label %.loopexit303, label %647

647:                                              ; preds = %.loopexit293, %505, %503
  %648 = phi ptr [ %645, %.loopexit293 ], [ %418, %503 ], [ %418, %505 ]
  %649 = phi ptr [ %513, %.loopexit293 ], [ %419, %503 ], [ %419, %505 ]
  %650 = getelementptr inbounds i8, ptr %648, i64 -4
  br i1 %422, label %.preheader291, label %.loopexit292

.preheader291:                                    ; preds = %647, %.preheader291
  %651 = phi ptr [ %652, %.preheader291 ], [ %650, %647 ]
  %652 = getelementptr inbounds i8, ptr %651, i64 -4
  %653 = load i32, ptr %652, align 4, !tbaa !5
  %654 = icmp slt i32 %653, 0
  br i1 %654, label %.preheader291, label %.loopexit292, !llvm.loop !38

.loopexit292:                                     ; preds = %.preheader291, %647
  %655 = phi ptr [ %650, %647 ], [ %652, %.preheader291 ]
  %656 = icmp eq ptr %649, %655
  br i1 %656, label %.loopexit303, label %417

.loopexit303:                                     ; preds = %.loopexit292, %.loopexit293, %.loopexit305
  br i1 %227, label %657, label %715

657:                                              ; preds = %.loopexit303
  %658 = load i32, ptr %223, align 4, !tbaa !5
  %659 = add nsw i64 %.idx, 4
  %660 = icmp slt i64 %659, %.idx219
  br i1 %660, label %661, label %.loopexit298

661:                                              ; preds = %657
  %662 = sext i32 %658 to i64
  %663 = getelementptr inbounds [4 x i8], ptr %137, i64 %662
  %664 = load i32, ptr %663, align 4, !tbaa !5
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i8, ptr %203, i64 %665
  %667 = icmp ult ptr %666, %204
  %668 = freeze i1 %667
  br i1 %668, label %.preheader297, label %.preheader300

.preheader300:                                    ; preds = %661, %672
  %669 = phi ptr [ %674, %672 ], [ %228, %661 ]
  %670 = load i32, ptr %669, align 4, !tbaa !5
  %671 = icmp slt i32 %670, 0
  br i1 %671, label %672, label %.loopexit298

672:                                              ; preds = %.preheader300
  %673 = getelementptr inbounds i8, ptr %669, i64 -4
  store i32 %670, ptr %673, align 4, !tbaa !5
  %674 = getelementptr inbounds nuw i8, ptr %669, i64 4
  %675 = icmp ult ptr %674, %226
  br i1 %675, label %.preheader300, label %.loopexit298, !llvm.loop !39

.preheader297:                                    ; preds = %661, %709
  %676 = phi ptr [ %711, %709 ], [ %228, %661 ]
  %677 = load i32, ptr %676, align 4, !tbaa !5
  %678 = icmp slt i32 %677, 0
  br i1 %678, label %709, label %679

679:                                              ; preds = %.preheader297
  %680 = zext nneg i32 %677 to i64
  %681 = getelementptr inbounds nuw [4 x i8], ptr %137, i64 %680
  %682 = load i32, ptr %681, align 4, !tbaa !5
  %683 = getelementptr i8, ptr %681, i64 4
  %684 = load i32, ptr %683, align 4, !tbaa !5
  %685 = sext i32 %682 to i64
  %686 = getelementptr inbounds i8, ptr %203, i64 %685
  %687 = sext i32 %684 to i64
  %688 = getelementptr i8, ptr %203, i64 %687
  %689 = icmp ult ptr %686, %688
  br i1 %689, label %.preheader289, label %709

.preheader289:                                    ; preds = %679, %695
  %690 = phi ptr [ %696, %695 ], [ %666, %679 ]
  %691 = phi ptr [ %697, %695 ], [ %686, %679 ]
  %692 = load i8, ptr %690, align 1, !tbaa !9
  %693 = load i8, ptr %691, align 1, !tbaa !9
  %694 = icmp eq i8 %692, %693
  br i1 %694, label %695, label %.loopexit290

695:                                              ; preds = %.preheader289
  %696 = getelementptr inbounds nuw i8, ptr %690, i64 1
  %697 = getelementptr inbounds nuw i8, ptr %691, i64 1
  %698 = icmp ult ptr %696, %204
  %699 = icmp ult ptr %697, %688
  %700 = select i1 %698, i1 %699, i1 false
  br i1 %700, label %.preheader289, label %701, !llvm.loop !26

701:                                              ; preds = %695
  br i1 %698, label %702, label %.loopexit298

702:                                              ; preds = %701
  br i1 %699, label %703, label %709

703:                                              ; preds = %702
  %704 = load i8, ptr %696, align 1, !tbaa !9
  %705 = load i8, ptr %697, align 1, !tbaa !9
  br label %.loopexit290

.loopexit290:                                     ; preds = %.preheader289, %703
  %706 = phi i8 [ %705, %703 ], [ %693, %.preheader289 ]
  %707 = phi i8 [ %704, %703 ], [ %692, %.preheader289 ]
  %708 = icmp ugt i8 %707, %706
  br i1 %708, label %709, label %.loopexit298

709:                                              ; preds = %.loopexit290, %702, %679, %.preheader297
  %710 = getelementptr inbounds i8, ptr %676, i64 -4
  store i32 %677, ptr %710, align 4, !tbaa !5
  %711 = getelementptr inbounds nuw i8, ptr %676, i64 4
  %712 = icmp ult ptr %711, %226
  br i1 %712, label %.preheader297, label %.loopexit298, !llvm.loop !39

.loopexit298:                                     ; preds = %672, %.preheader300, %709, %.loopexit290, %701, %657
  %713 = phi ptr [ %228, %657 ], [ %676, %.loopexit290 ], [ %676, %701 ], [ %711, %709 ], [ %669, %.preheader300 ], [ %674, %672 ]
  %714 = getelementptr inbounds i8, ptr %713, i64 -4
  store i32 %658, ptr %714, align 4, !tbaa !5
  br label %715

715:                                              ; preds = %.loopexit298, %.loopexit303, %218
  %716 = add nsw i32 %210, -1
  %717 = icmp slt i32 %206, %716
  br i1 %717, label %209, label %718, !llvm.loop !40

718:                                              ; preds = %715
  %719 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %206, i32 -1)
  %720 = extractvalue { i32, i1 } %719, 1, !nosanitize !10
  br i1 %720, label %.loopexit, label %721, !prof !11, !nosanitize !10

721:                                              ; preds = %718
  %722 = extractvalue { i32, i1 } %719, 0, !nosanitize !10
  %723 = icmp sgt i32 %215, 0
  br i1 %723, label %205, label %.preheader279, !llvm.loop !41

.preheader279:                                    ; preds = %721, %775
  %724 = phi i32 [ %776, %775 ], [ %171, %721 ]
  %725 = zext nneg i32 %724 to i64
  %726 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %725
  %727 = load i32, ptr %726, align 4, !tbaa !5
  %728 = icmp sgt i32 %727, -1
  br i1 %728, label %.preheader278.preheader, label %747

.preheader278.preheader:                          ; preds = %.preheader279
  %729 = zext nneg i32 %727 to i64
  %730 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %729
  store i32 %724, ptr %730, align 4, !tbaa !5
  %731 = icmp eq i32 %724, 0
  br i1 %731, label %.preheader278.preheader._crit_edge, label %.lr.ph

.preheader278:                                    ; preds = %.lr.ph
  %732 = zext nneg i32 %740 to i64
  %733 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %732
  %734 = trunc nuw nsw i64 %738 to i32
  store i32 %734, ptr %733, align 4, !tbaa !5
  %735 = icmp eq i64 %738, 0
  br i1 %735, label %.preheader278.preheader._crit_edge, label %.lr.ph, !llvm.loop !42

.preheader278.preheader._crit_edge:               ; preds = %.preheader278.preheader, %.preheader278
  %736 = xor i32 %724, -1
  store i32 %736, ptr %1, align 4, !tbaa !5
  br label %.loopexit280

.lr.ph:                                           ; preds = %.preheader278.preheader, %.preheader278
  %737 = phi i64 [ %738, %.preheader278 ], [ %725, %.preheader278.preheader ]
  %738 = add nsw i64 %737, -1
  %739 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %738
  %740 = load i32, ptr %739, align 4, !tbaa !5
  %741 = icmp sgt i32 %740, -1
  br i1 %741, label %.preheader278, label %742, !llvm.loop !42

742:                                              ; preds = %.lr.ph
  %743 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %737
  %744 = trunc nuw nsw i64 %738 to i32
  %745 = sub nsw i32 %744, %724
  store i32 %745, ptr %743, align 4, !tbaa !5
  %746 = icmp eq i64 %737, 1
  br i1 %746, label %.loopexit280, label %._crit_edge

._crit_edge:                                      ; preds = %742
  %.pre = and i64 %738, 4294967295
  br label %747

747:                                              ; preds = %._crit_edge, %.preheader279
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %725, %.preheader279 ]
  %748 = phi i32 [ %744, %._crit_edge ], [ %724, %.preheader279 ]
  %749 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pre-phi
  %750 = load i32, ptr %749, align 4, !tbaa !5
  %751 = xor i32 %750, -1
  store i32 %751, ptr %749, align 4, !tbaa !5
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds [4 x i8], ptr %138, i64 %752
  store i32 %748, ptr %753, align 4, !tbaa !5
  br label %761

754:                                              ; preds = %761
  %755 = getelementptr inbounds [4 x i8], ptr %1, i64 %763
  %756 = load i32, ptr %755, align 4, !tbaa !5
  %757 = xor i32 %756, -1
  store i32 %757, ptr %755, align 4, !tbaa !5
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds [4 x i8], ptr %138, i64 %758
  store i32 %748, ptr %759, align 4, !tbaa !5
  %760 = icmp eq i64 %763, -2147483648
  br i1 %760, label %.loopexit, label %761, !prof !43, !llvm.loop !44, !nosanitize !10

761:                                              ; preds = %747, %754
  %762 = phi i64 [ %.pre-phi, %747 ], [ %763, %754 ]
  %763 = add nsw i64 %762, -1
  %764 = shl i64 %763, 32
  %765 = ashr exact i64 %764, 30
  %766 = getelementptr inbounds i8, ptr %1, i64 %765
  %767 = load i32, ptr %766, align 4, !tbaa !5
  %768 = icmp slt i32 %767, 0
  br i1 %768, label %754, label %769, !llvm.loop !44

769:                                              ; preds = %761
  %770 = trunc i64 %763 to i32
  %771 = zext nneg i32 %767 to i64
  %772 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %771
  store i32 %748, ptr %772, align 4, !tbaa !5
  %773 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %770, i32 -1)
  %774 = extractvalue { i32, i1 } %773, 1, !nosanitize !10
  br i1 %774, label %.loopexit, label %775, !prof !11, !nosanitize !10

775:                                              ; preds = %769
  %776 = extractvalue { i32, i1 } %773, 0, !nosanitize !10
  %777 = icmp sgt i32 %776, -1
  br i1 %777, label %.preheader279, label %.loopexit280, !llvm.loop !45

.loopexit280:                                     ; preds = %775, %742, %.preheader278.preheader._crit_edge
  %778 = icmp samesign ult i32 %78, 65536
  br i1 %778, label %798, label %779

779:                                              ; preds = %.loopexit280
  %780 = icmp samesign ult i32 %78, 16777216
  br i1 %780, label %790, label %781

781:                                              ; preds = %779
  %782 = lshr i32 %78, 24
  %783 = zext nneg i32 %782 to i64
  %784 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %783
  %785 = load i32, ptr %784, align 4, !tbaa !5
  %786 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %785, i32 24), !nosanitize !10
  %787 = extractvalue { i32, i1 } %786, 0, !nosanitize !10
  %788 = extractvalue { i32, i1 } %786, 1, !nosanitize !10
  br i1 %788, label %789, label %811, !prof !11, !nosanitize !10

789:                                              ; preds = %800, %790, %781
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

790:                                              ; preds = %779
  %791 = lshr i32 %78, 16
  %792 = zext nneg i32 %791 to i64
  %793 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %792
  %794 = load i32, ptr %793, align 4, !tbaa !5
  %795 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %794, i32 16), !nosanitize !10
  %796 = extractvalue { i32, i1 } %795, 0, !nosanitize !10
  %797 = extractvalue { i32, i1 } %795, 1, !nosanitize !10
  br i1 %797, label %789, label %811, !prof !11, !nosanitize !10

798:                                              ; preds = %.loopexit280
  %799 = icmp samesign ult i32 %78, 256
  br i1 %799, label %808, label %800

800:                                              ; preds = %798
  %801 = lshr i32 %78, 8
  %802 = zext nneg i32 %801 to i64
  %803 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %802
  %804 = load i32, ptr %803, align 4, !tbaa !5
  %805 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %804, i32 8), !nosanitize !10
  %806 = extractvalue { i32, i1 } %805, 0, !nosanitize !10
  %807 = extractvalue { i32, i1 } %805, 1, !nosanitize !10
  br i1 %807, label %789, label %811, !prof !11, !nosanitize !10

808:                                              ; preds = %798
  %809 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %135
  %810 = load i32, ptr %809, align 4, !tbaa !5
  br label %811

811:                                              ; preds = %808, %800, %790, %781
  %812 = phi i32 [ %787, %781 ], [ %796, %790 ], [ %806, %800 ], [ %810, %808 ]
  %813 = add i32 %812, 1073741824
  %814 = icmp sgt i32 %813, -1
  br i1 %814, label %816, label %815, !prof !22, !nosanitize !10

815:                                              ; preds = %811
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

816:                                              ; preds = %811
  %817 = sub nsw i32 0, %78
  %818 = load i32, ptr %1, align 4, !tbaa !5
  %819 = icmp sgt i32 %818, %817
  br i1 %819, label %820, label %.loopexit276

820:                                              ; preds = %816
  %821 = getelementptr i8, ptr %138, i64 4
  %822 = shl nsw i32 %812, 1
  %823 = sdiv i32 %822, 3
  %824 = getelementptr i8, ptr %1, i64 4
  %825 = ptrtoint ptr %138 to i64
  %826 = ptrtoint ptr %1 to i64
  br label %827

827:                                              ; preds = %2792, %820
  %828 = phi i32 [ %818, %820 ], [ %2794, %2792 ]
  %829 = phi ptr [ %821, %820 ], [ %2793, %2792 ]
  %830 = phi i32 [ %823, %820 ], [ %2789, %2792 ]
  %831 = phi i32 [ %78, %820 ], [ %2788, %2792 ]
  %832 = ptrtoint ptr %829 to i64
  %833 = sub i64 %832, %825
  %834 = ashr i64 %833, 2
  %835 = add nsw i64 %834, 2147483648
  %836 = icmp ult i64 %835, 4294967296
  %837 = shl i64 %833, 30
  %838 = ashr i64 %837, 32
  %839 = sub nsw i64 0, %838
  br i1 %836, label %.preheader269, label %.preheader273

.preheader269:                                    ; preds = %827, %2654
  %840 = phi i32 [ %2660, %2654 ], [ %828, %827 ]
  %841 = phi i32 [ %2659, %2654 ], [ %831, %827 ]
  %842 = phi i32 [ %2658, %2654 ], [ %830, %827 ]
  %843 = phi ptr [ %2657, %2654 ], [ %1, %827 ]
  %844 = phi i32 [ %2656, %2654 ], [ 0, %827 ]
  %845 = phi i32 [ %2655, %2654 ], [ 0, %827 ]
  %846 = icmp slt i32 %840, 0
  br i1 %846, label %2640, label %847

847:                                              ; preds = %.preheader269
  %848 = icmp eq i32 %844, 0
  br i1 %848, label %852, label %849

849:                                              ; preds = %847
  %850 = sext i32 %844 to i64
  %851 = getelementptr inbounds [4 x i8], ptr %843, i64 %850
  store i32 %844, ptr %851, align 4, !tbaa !5
  br label %852

852:                                              ; preds = %849, %847
  %853 = zext nneg i32 %840 to i64
  %854 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %853
  %855 = load i32, ptr %854, align 4, !tbaa !5
  %856 = sext i32 %855 to i64
  %857 = getelementptr [4 x i8], ptr %824, i64 %856
  %858 = ptrtoint ptr %857 to i64
  %859 = ptrtoint ptr %843 to i64
  %860 = sub i64 %858, %859
  %861 = icmp sgt i64 %860, 4
  br i1 %861, label %865, label %862

862:                                              ; preds = %852
  %863 = icmp eq i64 %860, 4
  %864 = sext i1 %863 to i32
  br label %2648

865:                                              ; preds = %852
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %866 = icmp samesign ult i64 %860, 8589934592
  br i1 %866, label %867, label %2691

867:                                              ; preds = %865
  %868 = icmp samesign ult i64 %860, 262144
  br i1 %868, label %885, label %869

869:                                              ; preds = %867
  %870 = icmp samesign ult i64 %860, 67108864
  br i1 %870, label %878, label %871

871:                                              ; preds = %869
  %872 = lshr i64 %860, 26
  %873 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %872
  %874 = load i32, ptr %873, align 4, !tbaa !5
  %875 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %874, i32 24), !nosanitize !10
  %876 = extractvalue { i32, i1 } %875, 0, !nosanitize !10
  %877 = extractvalue { i32, i1 } %875, 1, !nosanitize !10
  br i1 %877, label %2692, label %.preheader2091, !prof !11, !nosanitize !10

878:                                              ; preds = %869
  %879 = lshr i64 %860, 18
  %880 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %879
  %881 = load i32, ptr %880, align 4, !tbaa !5
  %882 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %881, i32 16), !nosanitize !10
  %883 = extractvalue { i32, i1 } %882, 0, !nosanitize !10
  %884 = extractvalue { i32, i1 } %882, 1, !nosanitize !10
  br i1 %884, label %2692, label %.preheader2091, !prof !11, !nosanitize !10

885:                                              ; preds = %867
  %886 = icmp samesign ult i64 %860, 1024
  br i1 %886, label %894, label %887

887:                                              ; preds = %885
  %888 = lshr i64 %860, 10
  %889 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %888
  %890 = load i32, ptr %889, align 4, !tbaa !5
  %891 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %890, i32 8), !nosanitize !10
  %892 = extractvalue { i32, i1 } %891, 0, !nosanitize !10
  %893 = extractvalue { i32, i1 } %891, 1, !nosanitize !10
  br i1 %893, label %2692, label %.preheader2091, !prof !11, !nosanitize !10

894:                                              ; preds = %885
  %895 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %860
  %896 = load i32, ptr %895, align 4, !tbaa !5
  br label %.preheader2091

.preheader2091:                                   ; preds = %894, %887, %878, %871
  %.ph2092 = phi i32 [ %876, %871 ], [ %883, %878 ], [ %892, %887 ], [ %896, %894 ]
  br label %897

897:                                              ; preds = %.preheader2091, %2629
  %898 = phi i32 [ %2630, %2629 ], [ 0, %.preheader2091 ]
  %899 = phi i32 [ %2631, %2629 ], [ %841, %.preheader2091 ]
  %900 = phi i32 [ %2632, %2629 ], [ %842, %.preheader2091 ]
  %901 = phi ptr [ %2639, %2629 ], [ undef, %.preheader2091 ]
  %902 = phi ptr [ %2633, %2629 ], [ %857, %.preheader2091 ]
  %903 = phi ptr [ %2634, %2629 ], [ %843, %.preheader2091 ]
  %904 = phi ptr [ %2635, %2629 ], [ %829, %.preheader2091 ]
  %905 = phi i32 [ %2636, %2629 ], [ %.ph2092, %.preheader2091 ]
  %906 = phi i32 [ %2637, %2629 ], [ 0, %.preheader2091 ]
  %907 = phi i32 [ %2638, %2629 ], [ -1, %.preheader2091 ]
  %908 = icmp slt i32 %905, 0
  br i1 %908, label %1833, label %909

909:                                              ; preds = %897
  %910 = ptrtoint ptr %902 to i64
  %911 = ptrtoint ptr %903 to i64
  %912 = sub i64 %910, %911
  %913 = freeze i64 %912
  %914 = ashr i64 %913, 2
  %915 = icmp slt i64 %914, 9
  %916 = trunc nuw nsw i64 %914 to i32
  %917 = and i32 %916, 1
  %918 = icmp eq i32 %917, 0
  %919 = add nsw i32 %916, -1
  %920 = lshr i32 %919, 1
  %921 = zext nneg i32 %920 to i64
  %922 = getelementptr inbounds nuw [4 x i8], ptr %903, i64 %921
  %923 = zext nneg i32 %919 to i64
  %924 = getelementptr inbounds nuw [4 x i8], ptr %903, i64 %923
  %925 = getelementptr inbounds i8, ptr %902, i64 -4
  %926 = icmp ult ptr %903, %925
  br i1 %915, label %1788, label %927

927:                                              ; preds = %909
  %928 = icmp samesign ult i64 %914, 2147483648
  %929 = icmp eq i32 %905, 0
  br i1 %928, label %930, label %2693

930:                                              ; preds = %927
  br i1 %929, label %1613, label %931

931:                                              ; preds = %930
  store ptr %901, ptr %7, align 8
  %932 = add nsw i32 %905, -1
  %933 = lshr i64 %914, 1
  %934 = getelementptr inbounds nuw [4 x i8], ptr %903, i64 %933
  %935 = icmp samesign ult i64 %914, 513
  br i1 %935, label %1064, label %936

936:                                              ; preds = %931
  %937 = lshr i32 %916, 3
  %938 = zext nneg i32 %937 to i64
  %939 = getelementptr inbounds nuw [4 x i8], ptr %903, i64 %938
  %940 = shl nuw nsw i32 %937, 1
  %941 = zext nneg i32 %940 to i64
  %942 = getelementptr inbounds nuw [4 x i8], ptr %903, i64 %941
  %943 = load i32, ptr %903, align 4, !tbaa !5
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds [4 x i8], ptr %904, i64 %944
  %946 = load i32, ptr %945, align 4, !tbaa !5
  %947 = load i32, ptr %939, align 4, !tbaa !5
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds [4 x i8], ptr %904, i64 %948
  %950 = load i32, ptr %949, align 4, !tbaa !5
  %951 = icmp sgt i32 %946, %950
  %952 = select i1 %951, i32 %943, i32 %947
  %953 = select i1 %951, ptr %903, ptr %939
  %954 = sext i32 %952 to i64
  %955 = getelementptr inbounds [4 x i8], ptr %904, i64 %954
  %956 = load i32, ptr %955, align 4, !tbaa !5
  %957 = load i32, ptr %942, align 4, !tbaa !5
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds [4 x i8], ptr %904, i64 %958
  %960 = load i32, ptr %959, align 4, !tbaa !5
  %961 = icmp sgt i32 %956, %960
  br i1 %961, label %962, label %970

962:                                              ; preds = %936
  %963 = select i1 %951, i32 %947, i32 %943
  %964 = select i1 %951, ptr %939, ptr %903
  %965 = sext i32 %963 to i64
  %966 = getelementptr inbounds [4 x i8], ptr %904, i64 %965
  %967 = load i32, ptr %966, align 4, !tbaa !5
  %968 = icmp sgt i32 %967, %960
  %969 = select i1 %968, ptr %964, ptr %942
  br label %970

970:                                              ; preds = %962, %936
  %971 = phi ptr [ %969, %962 ], [ %953, %936 ]
  %972 = sub nsw i64 0, %938
  %973 = getelementptr inbounds [4 x i8], ptr %934, i64 %972
  %974 = getelementptr inbounds nuw [4 x i8], ptr %934, i64 %938
  %975 = load i32, ptr %973, align 4, !tbaa !5
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds [4 x i8], ptr %904, i64 %976
  %978 = load i32, ptr %977, align 4, !tbaa !5
  %979 = load i32, ptr %934, align 4, !tbaa !5
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds [4 x i8], ptr %904, i64 %980
  %982 = load i32, ptr %981, align 4, !tbaa !5
  %983 = icmp sgt i32 %978, %982
  %984 = select i1 %983, i32 %975, i32 %979
  %985 = select i1 %983, ptr %973, ptr %934
  %986 = sext i32 %984 to i64
  %987 = getelementptr inbounds [4 x i8], ptr %904, i64 %986
  %988 = load i32, ptr %987, align 4, !tbaa !5
  %989 = load i32, ptr %974, align 4, !tbaa !5
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds [4 x i8], ptr %904, i64 %990
  %992 = load i32, ptr %991, align 4, !tbaa !5
  %993 = icmp sgt i32 %988, %992
  br i1 %993, label %994, label %1002

994:                                              ; preds = %970
  %995 = select i1 %983, i32 %979, i32 %975
  %996 = select i1 %983, ptr %934, ptr %973
  %997 = sext i32 %995 to i64
  %998 = getelementptr inbounds [4 x i8], ptr %904, i64 %997
  %999 = load i32, ptr %998, align 4, !tbaa !5
  %1000 = icmp sgt i32 %999, %992
  %1001 = select i1 %1000, ptr %996, ptr %974
  br label %1002

1002:                                             ; preds = %994, %970
  %1003 = phi ptr [ %1001, %994 ], [ %985, %970 ]
  %1004 = sub nsw i64 0, %941
  %1005 = getelementptr inbounds [4 x i8], ptr %925, i64 %1004
  %1006 = getelementptr inbounds [4 x i8], ptr %925, i64 %972
  %1007 = load i32, ptr %1005, align 4, !tbaa !5
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds [4 x i8], ptr %904, i64 %1008
  %1010 = load i32, ptr %1009, align 4, !tbaa !5
  %1011 = load i32, ptr %1006, align 4, !tbaa !5
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds [4 x i8], ptr %904, i64 %1012
  %1014 = load i32, ptr %1013, align 4, !tbaa !5
  %1015 = icmp sgt i32 %1010, %1014
  %1016 = select i1 %1015, i32 %1007, i32 %1011
  %1017 = select i1 %1015, ptr %1005, ptr %1006
  %1018 = sext i32 %1016 to i64
  %1019 = getelementptr inbounds [4 x i8], ptr %904, i64 %1018
  %1020 = load i32, ptr %1019, align 4, !tbaa !5
  %1021 = load i32, ptr %925, align 4, !tbaa !5
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds [4 x i8], ptr %904, i64 %1022
  %1024 = load i32, ptr %1023, align 4, !tbaa !5
  %1025 = icmp sgt i32 %1020, %1024
  br i1 %1025, label %1026, label %1038

1026:                                             ; preds = %1002
  %1027 = select i1 %1015, i32 %1011, i32 %1007
  %1028 = select i1 %1015, ptr %1006, ptr %1005
  %1029 = sext i32 %1027 to i64
  %1030 = getelementptr inbounds [4 x i8], ptr %904, i64 %1029
  %1031 = load i32, ptr %1030, align 4, !tbaa !5
  %1032 = icmp sgt i32 %1031, %1024
  %1033 = select i1 %1032, ptr %1028, ptr %925
  %1034 = load i32, ptr %1033, align 4, !tbaa !5
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds [4 x i8], ptr %904, i64 %1035
  %1037 = load i32, ptr %1036, align 4, !tbaa !5
  br label %1038

1038:                                             ; preds = %1026, %1002
  %1039 = phi i32 [ %1020, %1002 ], [ %1037, %1026 ]
  %1040 = phi ptr [ %1017, %1002 ], [ %1033, %1026 ]
  %1041 = load i32, ptr %971, align 4, !tbaa !5
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds [4 x i8], ptr %904, i64 %1042
  %1044 = load i32, ptr %1043, align 4, !tbaa !5
  %1045 = load i32, ptr %1003, align 4, !tbaa !5
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds [4 x i8], ptr %904, i64 %1046
  %1048 = load i32, ptr %1047, align 4, !tbaa !5
  %1049 = icmp sgt i32 %1044, %1048
  %1050 = select i1 %1049, i32 %1041, i32 %1045
  %1051 = select i1 %1049, ptr %971, ptr %1003
  %1052 = sext i32 %1050 to i64
  %1053 = getelementptr inbounds [4 x i8], ptr %904, i64 %1052
  %1054 = load i32, ptr %1053, align 4, !tbaa !5
  %1055 = icmp sgt i32 %1054, %1039
  br i1 %1055, label %1056, label %1165

1056:                                             ; preds = %1038
  %1057 = select i1 %1049, i32 %1045, i32 %1041
  %1058 = select i1 %1049, ptr %1003, ptr %971
  %1059 = sext i32 %1057 to i64
  %1060 = getelementptr inbounds [4 x i8], ptr %904, i64 %1059
  %1061 = load i32, ptr %1060, align 4, !tbaa !5
  %1062 = icmp sgt i32 %1061, %1039
  %1063 = select i1 %1062, ptr %1058, ptr %1040
  br label %1165

1064:                                             ; preds = %931
  %1065 = icmp samesign ult i64 %914, 33
  br i1 %1065, label %1137, label %1066

1066:                                             ; preds = %1064
  %1067 = lshr i64 %914, 2
  %1068 = getelementptr inbounds nuw [4 x i8], ptr %903, i64 %1067
  %1069 = sub nsw i64 0, %1067
  %1070 = getelementptr inbounds [4 x i8], ptr %925, i64 %1069
  %1071 = load i32, ptr %1068, align 4, !tbaa !5
  %1072 = sext i32 %1071 to i64
  %1073 = getelementptr inbounds [4 x i8], ptr %904, i64 %1072
  %1074 = load i32, ptr %1073, align 4, !tbaa !5
  %1075 = load i32, ptr %934, align 4, !tbaa !5
  %1076 = sext i32 %1075 to i64
  %1077 = getelementptr inbounds [4 x i8], ptr %904, i64 %1076
  %1078 = load i32, ptr %1077, align 4, !tbaa !5
  %1079 = icmp sgt i32 %1074, %1078
  %1080 = select i1 %1079, i32 %1075, i32 %1071
  %1081 = select i1 %1079, ptr %934, ptr %1068
  %1082 = select i1 %1079, ptr %1068, ptr %934
  %1083 = load i32, ptr %1070, align 4, !tbaa !5
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds [4 x i8], ptr %904, i64 %1084
  %1086 = load i32, ptr %1085, align 4, !tbaa !5
  %1087 = load i32, ptr %925, align 4, !tbaa !5
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds [4 x i8], ptr %904, i64 %1088
  %1090 = load i32, ptr %1089, align 4, !tbaa !5
  %1091 = icmp sgt i32 %1086, %1090
  %1092 = select i1 %1091, i32 %1087, i32 %1083
  %1093 = select i1 %1091, ptr %925, ptr %1070
  %1094 = select i1 %1091, ptr %1070, ptr %925
  %1095 = sext i32 %1080 to i64
  %1096 = getelementptr inbounds [4 x i8], ptr %904, i64 %1095
  %1097 = load i32, ptr %1096, align 4, !tbaa !5
  %1098 = sext i32 %1092 to i64
  %1099 = getelementptr inbounds [4 x i8], ptr %904, i64 %1098
  %1100 = load i32, ptr %1099, align 4, !tbaa !5
  %1101 = icmp sgt i32 %1097, %1100
  %1102 = select i1 %1101, ptr %1094, ptr %1082
  %1103 = select i1 %1101, ptr %1081, ptr %1093
  %1104 = select i1 %1101, ptr %1082, ptr %1094
  %1105 = load i32, ptr %903, align 4, !tbaa !5
  %1106 = sext i32 %1105 to i64
  %1107 = getelementptr inbounds [4 x i8], ptr %904, i64 %1106
  %1108 = load i32, ptr %1107, align 4, !tbaa !5
  %1109 = load i32, ptr %1102, align 4, !tbaa !5
  %1110 = sext i32 %1109 to i64
  %1111 = getelementptr inbounds [4 x i8], ptr %904, i64 %1110
  %1112 = load i32, ptr %1111, align 4, !tbaa !5
  %1113 = icmp sgt i32 %1108, %1112
  %1114 = select i1 %1113, i32 %1109, i32 %1105
  %1115 = select i1 %1113, ptr %1102, ptr %903
  %1116 = select i1 %1113, ptr %903, ptr %1102
  %1117 = sext i32 %1114 to i64
  %1118 = getelementptr inbounds [4 x i8], ptr %904, i64 %1117
  %1119 = load i32, ptr %1118, align 4, !tbaa !5
  %1120 = load i32, ptr %1103, align 4, !tbaa !5
  %1121 = sext i32 %1120 to i64
  %1122 = getelementptr inbounds [4 x i8], ptr %904, i64 %1121
  %1123 = load i32, ptr %1122, align 4, !tbaa !5
  %1124 = icmp sgt i32 %1119, %1123
  %1125 = select i1 %1124, ptr %1104, ptr %1116
  %1126 = select i1 %1124, ptr %1115, ptr %1103
  %1127 = load i32, ptr %1125, align 4, !tbaa !5
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds [4 x i8], ptr %904, i64 %1128
  %1130 = load i32, ptr %1129, align 4, !tbaa !5
  %1131 = load i32, ptr %1126, align 4, !tbaa !5
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds [4 x i8], ptr %904, i64 %1132
  %1134 = load i32, ptr %1133, align 4, !tbaa !5
  %1135 = icmp sgt i32 %1130, %1134
  %1136 = select i1 %1135, ptr %1126, ptr %1125
  br label %1165

1137:                                             ; preds = %1064
  %1138 = load i32, ptr %903, align 4, !tbaa !5
  %1139 = sext i32 %1138 to i64
  %1140 = getelementptr inbounds [4 x i8], ptr %904, i64 %1139
  %1141 = load i32, ptr %1140, align 4, !tbaa !5
  %1142 = load i32, ptr %934, align 4, !tbaa !5
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds [4 x i8], ptr %904, i64 %1143
  %1145 = load i32, ptr %1144, align 4, !tbaa !5
  %1146 = icmp sgt i32 %1141, %1145
  %1147 = select i1 %1146, i32 %1138, i32 %1142
  %1148 = select i1 %1146, ptr %903, ptr %934
  %1149 = sext i32 %1147 to i64
  %1150 = getelementptr inbounds [4 x i8], ptr %904, i64 %1149
  %1151 = load i32, ptr %1150, align 4, !tbaa !5
  %1152 = load i32, ptr %925, align 4, !tbaa !5
  %1153 = sext i32 %1152 to i64
  %1154 = getelementptr inbounds [4 x i8], ptr %904, i64 %1153
  %1155 = load i32, ptr %1154, align 4, !tbaa !5
  %1156 = icmp sgt i32 %1151, %1155
  br i1 %1156, label %1157, label %1165

1157:                                             ; preds = %1137
  %1158 = select i1 %1146, i32 %1142, i32 %1138
  %1159 = select i1 %1146, ptr %934, ptr %903
  %1160 = sext i32 %1158 to i64
  %1161 = getelementptr inbounds [4 x i8], ptr %904, i64 %1160
  %1162 = load i32, ptr %1161, align 4, !tbaa !5
  %1163 = icmp sgt i32 %1162, %1155
  %1164 = select i1 %1163, ptr %1159, ptr %925
  br label %1165

1165:                                             ; preds = %1157, %1137, %1066, %1056, %1038
  %1166 = phi i32 [ %1105, %1066 ], [ %1138, %1157 ], [ %1138, %1137 ], [ %943, %1056 ], [ %943, %1038 ]
  %1167 = phi ptr [ %1136, %1066 ], [ %1164, %1157 ], [ %1148, %1137 ], [ %1063, %1056 ], [ %1051, %1038 ]
  store ptr %1167, ptr %7, align 8, !tbaa !46
  %1168 = load i32, ptr %1167, align 4, !tbaa !5
  store i32 %1168, ptr %903, align 4, !tbaa !5
  store i32 %1166, ptr %1167, align 4, !tbaa !5
  %1169 = load i32, ptr %903, align 4, !tbaa !5
  %1170 = sext i32 %1169 to i64
  %1171 = getelementptr inbounds [4 x i8], ptr %904, i64 %1170
  %1172 = load i32, ptr %1171, align 4, !tbaa !5
  %1173 = getelementptr inbounds nuw i8, ptr %903, i64 4
  call fastcc void @tr_partition(ptr noundef nonnull %904, ptr noundef nonnull %903, ptr noundef nonnull %1173, ptr noundef nonnull %902, ptr noundef %7, ptr noundef %8, i32 noundef %1172)
  %1174 = load ptr, ptr %8, align 8, !tbaa !46
  %1175 = load ptr, ptr %7, align 8, !tbaa !46
  %1176 = ptrtoint ptr %1174 to i64
  %1177 = ptrtoint ptr %1175 to i64
  %1178 = sub i64 %1176, %1177
  %1179 = ashr exact i64 %1178, 2
  %1180 = icmp eq i64 %914, %1179
  br i1 %1180, label %1536, label %1181

1181:                                             ; preds = %1165
  %1182 = load i32, ptr %1175, align 4, !tbaa !5
  %1183 = sext i32 %1182 to i64
  %1184 = getelementptr inbounds [4 x i8], ptr %138, i64 %1183
  %1185 = load i32, ptr %1184, align 4, !tbaa !5
  %1186 = icmp eq i32 %1185, %1172
  br i1 %1186, label %1221, label %1187

1187:                                             ; preds = %1181
  %1188 = add nsw i64 %1179, 2147483648
  %1189 = icmp ult i64 %1188, 4294967296
  br i1 %1189, label %1190, label %2740

1190:                                             ; preds = %1187
  %1191 = icmp ult i64 %1179, 65536
  br i1 %1191, label %1209, label %1192

1192:                                             ; preds = %1190
  %1193 = icmp ult i64 %1179, 16777216
  br i1 %1193, label %1202, label %1194

1194:                                             ; preds = %1192
  %1195 = lshr i64 %1179, 24
  %1196 = and i64 %1195, 255
  %1197 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1196
  %1198 = load i32, ptr %1197, align 4, !tbaa !5
  %1199 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1198, i32 24), !nosanitize !10
  %1200 = extractvalue { i32, i1 } %1199, 0, !nosanitize !10
  %1201 = extractvalue { i32, i1 } %1199, 1, !nosanitize !10
  br i1 %1201, label %2741, label %1221, !prof !11, !nosanitize !10

1202:                                             ; preds = %1192
  %1203 = lshr i64 %1179, 16
  %1204 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1203
  %1205 = load i32, ptr %1204, align 4, !tbaa !5
  %1206 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1205, i32 16), !nosanitize !10
  %1207 = extractvalue { i32, i1 } %1206, 0, !nosanitize !10
  %1208 = extractvalue { i32, i1 } %1206, 1, !nosanitize !10
  br i1 %1208, label %2741, label %1221, !prof !11, !nosanitize !10

1209:                                             ; preds = %1190
  %1210 = icmp samesign ult i64 %1179, 256
  br i1 %1210, label %1218, label %1211

1211:                                             ; preds = %1209
  %1212 = lshr i64 %1179, 8
  %1213 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1212
  %1214 = load i32, ptr %1213, align 4, !tbaa !5
  %1215 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1214, i32 8), !nosanitize !10
  %1216 = extractvalue { i32, i1 } %1215, 0, !nosanitize !10
  %1217 = extractvalue { i32, i1 } %1215, 1, !nosanitize !10
  br i1 %1217, label %2741, label %1221, !prof !11, !nosanitize !10

1218:                                             ; preds = %1209
  %1219 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %1178
  %1220 = load i32, ptr %1219, align 4, !tbaa !5
  br label %1221

1221:                                             ; preds = %1218, %1211, %1202, %1194, %1181
  %1222 = phi i32 [ -1, %1181 ], [ %1200, %1194 ], [ %1207, %1202 ], [ %1216, %1211 ], [ %1220, %1218 ]
  %1223 = sub i64 %1177, %826
  %1224 = ashr exact i64 %1223, 2
  %1225 = add nsw i64 %1224, 2147483647
  %1226 = icmp ult i64 %1225, 4294967296
  br i1 %1226, label %1227, label %2742

1227:                                             ; preds = %1221
  %1228 = trunc i64 %1224 to i32
  %1229 = add i32 %1228, -1
  %1230 = icmp ult ptr %903, %1175
  br i1 %1230, label %.preheader267, label %.loopexit268

.preheader267:                                    ; preds = %1227, %.preheader267
  %1231 = phi ptr [ %1235, %.preheader267 ], [ %903, %1227 ]
  %1232 = load i32, ptr %1231, align 4, !tbaa !5
  %1233 = sext i32 %1232 to i64
  %1234 = getelementptr inbounds [4 x i8], ptr %138, i64 %1233
  store i32 %1229, ptr %1234, align 4, !tbaa !5
  %1235 = getelementptr inbounds nuw i8, ptr %1231, i64 4
  %1236 = icmp ult ptr %1235, %1175
  br i1 %1236, label %.preheader267, label %.loopexit268, !llvm.loop !49

.loopexit268:                                     ; preds = %.preheader267, %1227
  %1237 = icmp ult ptr %1174, %902
  br i1 %1237, label %1238, label %.loopexit266

1238:                                             ; preds = %.loopexit268
  %1239 = sub i64 %1176, %826
  %1240 = ashr exact i64 %1239, 2
  %1241 = add nsw i64 %1240, 2147483647
  %1242 = icmp ult i64 %1241, 4294967296
  br i1 %1242, label %1243, label %2743

1243:                                             ; preds = %1238
  %1244 = trunc i64 %1240 to i32
  %1245 = add i32 %1244, -1
  %1246 = icmp ult ptr %1175, %1174
  br i1 %1246, label %.preheader265, label %.loopexit266

.preheader265:                                    ; preds = %1243, %.preheader265
  %1247 = phi ptr [ %1251, %.preheader265 ], [ %1175, %1243 ]
  %1248 = load i32, ptr %1247, align 4, !tbaa !5
  %1249 = sext i32 %1248 to i64
  %1250 = getelementptr inbounds [4 x i8], ptr %138, i64 %1249
  store i32 %1245, ptr %1250, align 4, !tbaa !5
  %1251 = getelementptr inbounds nuw i8, ptr %1247, i64 4
  %1252 = icmp ult ptr %1251, %1174
  br i1 %1252, label %.preheader265, label %.loopexit266, !llvm.loop !50

.loopexit266:                                     ; preds = %.preheader265, %1243, %.loopexit268
  %1253 = icmp sgt i64 %1179, 1
  br i1 %1253, label %1254, label %1460

1254:                                             ; preds = %.loopexit266
  %1255 = icmp samesign ult i64 %1179, 2147483648
  br i1 %1255, label %1256, label %2744

1256:                                             ; preds = %1254
  %1257 = trunc nuw nsw i64 %1179 to i32
  %1258 = icmp slt i32 %899, %1257
  br i1 %1258, label %1261, label %1259

1259:                                             ; preds = %1256
  %1260 = sub nsw i32 %899, %1257
  br label %1273

1261:                                             ; preds = %1256
  %1262 = icmp eq i32 %900, 0
  br i1 %1262, label %1455, label %1263

1263:                                             ; preds = %1261
  %1264 = sub nsw i32 %78, %1257
  %1265 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %899, i32 %1264), !nosanitize !10
  %1266 = extractvalue { i32, i1 } %1265, 1, !nosanitize !10
  br i1 %1266, label %2746, label %1267, !prof !11, !nosanitize !10

1267:                                             ; preds = %1263
  %1268 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %900, i32 -1)
  %1269 = extractvalue { i32, i1 } %1268, 1, !nosanitize !10
  br i1 %1269, label %2745, label %1270, !prof !11, !nosanitize !10

1270:                                             ; preds = %1267
  %1271 = extractvalue { i32, i1 } %1265, 0, !nosanitize !10
  %1272 = extractvalue { i32, i1 } %1268, 0, !nosanitize !10
  br label %1273

1273:                                             ; preds = %1270, %1259
  %1274 = phi i32 [ %1271, %1270 ], [ %1260, %1259 ]
  %1275 = phi i32 [ %1272, %1270 ], [ %900, %1259 ]
  %1276 = sub i64 %1177, %911
  %1277 = ashr exact i64 %1276, 2
  %1278 = sub i64 %910, %1176
  %1279 = ashr exact i64 %1278, 2
  %1280 = icmp sgt i64 %1277, %1279
  br i1 %1280, label %1368, label %1281

1281:                                             ; preds = %1273
  %1282 = icmp sgt i64 %1279, %1179
  br i1 %1282, label %1318, label %1283

1283:                                             ; preds = %1281
  %1284 = icmp sgt i64 %1277, 1
  br i1 %1284, label %1300, label %1285

1285:                                             ; preds = %1283
  %1286 = icmp sgt i64 %1279, 1
  br i1 %1286, label %1289, label %1287

1287:                                             ; preds = %1285
  %1288 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  br label %2629

1289:                                             ; preds = %1285
  %1290 = icmp slt i32 %906, 64
  br i1 %1290, label %1291, label %2749

1291:                                             ; preds = %1289
  %1292 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  %1293 = sext i32 %906 to i64
  %1294 = getelementptr inbounds [32 x i8], ptr %6, i64 %1293
  store ptr %1292, ptr %1294, align 16, !tbaa !51
  %1295 = getelementptr inbounds nuw i8, ptr %1294, i64 8
  store ptr %1175, ptr %1295, align 8, !tbaa !53
  %1296 = getelementptr inbounds nuw i8, ptr %1294, i64 16
  store ptr %1174, ptr %1296, align 16, !tbaa !54
  %1297 = getelementptr inbounds nuw i8, ptr %1294, i64 24
  store i32 %1222, ptr %1297, align 8, !tbaa !55
  %1298 = add nsw i32 %906, 1
  %1299 = getelementptr inbounds nuw i8, ptr %1294, i64 28
  store i32 %907, ptr %1299, align 4, !tbaa !56
  br label %2629

1300:                                             ; preds = %1283
  %1301 = icmp slt i32 %906, 64
  br i1 %1301, label %1302, label %2747

1302:                                             ; preds = %1300
  %1303 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  %1304 = sext i32 %906 to i64
  %1305 = getelementptr inbounds [32 x i8], ptr %6, i64 %1304
  store ptr %1303, ptr %1305, align 16, !tbaa !51
  %1306 = getelementptr inbounds nuw i8, ptr %1305, i64 8
  store ptr %1175, ptr %1306, align 8, !tbaa !53
  %1307 = getelementptr inbounds nuw i8, ptr %1305, i64 16
  store ptr %1174, ptr %1307, align 16, !tbaa !54
  %1308 = getelementptr inbounds nuw i8, ptr %1305, i64 24
  store i32 %1222, ptr %1308, align 8, !tbaa !55
  %1309 = getelementptr inbounds nuw i8, ptr %1305, i64 28
  store i32 %907, ptr %1309, align 4, !tbaa !56
  %1310 = icmp eq i32 %906, 63
  br i1 %1310, label %2748, label %1311

1311:                                             ; preds = %1302
  %1312 = getelementptr i8, ptr %1305, i64 32
  store ptr %904, ptr %1312, align 16, !tbaa !51
  %1313 = getelementptr i8, ptr %1305, i64 40
  store ptr %1174, ptr %1313, align 8, !tbaa !53
  %1314 = getelementptr i8, ptr %1305, i64 48
  store ptr %902, ptr %1314, align 16, !tbaa !54
  %1315 = getelementptr i8, ptr %1305, i64 56
  store i32 %932, ptr %1315, align 8, !tbaa !55
  %1316 = add nsw i32 %906, 2
  %1317 = getelementptr i8, ptr %1305, i64 60
  store i32 %907, ptr %1317, align 4, !tbaa !56
  br label %2629

1318:                                             ; preds = %1281
  %1319 = icmp sgt i64 %1277, %1179
  br i1 %1319, label %1350, label %1320

1320:                                             ; preds = %1318
  %1321 = icmp sgt i64 %1277, 1
  %1322 = icmp slt i32 %906, 64
  br i1 %1321, label %1333, label %1323

1323:                                             ; preds = %1320
  br i1 %1322, label %1324, label %2752

1324:                                             ; preds = %1323
  %1325 = sext i32 %906 to i64
  %1326 = getelementptr inbounds [32 x i8], ptr %6, i64 %1325
  store ptr %904, ptr %1326, align 16, !tbaa !51
  %1327 = getelementptr inbounds nuw i8, ptr %1326, i64 8
  store ptr %1174, ptr %1327, align 8, !tbaa !53
  %1328 = getelementptr inbounds nuw i8, ptr %1326, i64 16
  store ptr %902, ptr %1328, align 16, !tbaa !54
  %1329 = getelementptr inbounds nuw i8, ptr %1326, i64 24
  store i32 %932, ptr %1329, align 8, !tbaa !55
  %1330 = add nsw i32 %906, 1
  %1331 = getelementptr inbounds nuw i8, ptr %1326, i64 28
  store i32 %907, ptr %1331, align 4, !tbaa !56
  %1332 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  br label %2629

1333:                                             ; preds = %1320
  br i1 %1322, label %1334, label %2750

1334:                                             ; preds = %1333
  %1335 = sext i32 %906 to i64
  %1336 = getelementptr inbounds [32 x i8], ptr %6, i64 %1335
  store ptr %904, ptr %1336, align 16, !tbaa !51
  %1337 = getelementptr inbounds nuw i8, ptr %1336, i64 8
  store ptr %1174, ptr %1337, align 8, !tbaa !53
  %1338 = getelementptr inbounds nuw i8, ptr %1336, i64 16
  store ptr %902, ptr %1338, align 16, !tbaa !54
  %1339 = getelementptr inbounds nuw i8, ptr %1336, i64 24
  store i32 %932, ptr %1339, align 8, !tbaa !55
  %1340 = getelementptr inbounds nuw i8, ptr %1336, i64 28
  store i32 %907, ptr %1340, align 4, !tbaa !56
  %1341 = icmp eq i32 %906, 63
  br i1 %1341, label %2751, label %1342

1342:                                             ; preds = %1334
  %1343 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  %1344 = getelementptr i8, ptr %1336, i64 32
  store ptr %1343, ptr %1344, align 16, !tbaa !51
  %1345 = getelementptr i8, ptr %1336, i64 40
  store ptr %1175, ptr %1345, align 8, !tbaa !53
  %1346 = getelementptr i8, ptr %1336, i64 48
  store ptr %1174, ptr %1346, align 16, !tbaa !54
  %1347 = getelementptr i8, ptr %1336, i64 56
  store i32 %1222, ptr %1347, align 8, !tbaa !55
  %1348 = add nsw i32 %906, 2
  %1349 = getelementptr i8, ptr %1336, i64 60
  store i32 %907, ptr %1349, align 4, !tbaa !56
  br label %2629

1350:                                             ; preds = %1318
  %1351 = icmp slt i32 %906, 64
  br i1 %1351, label %1352, label %2753

1352:                                             ; preds = %1350
  %1353 = sext i32 %906 to i64
  %1354 = getelementptr inbounds [32 x i8], ptr %6, i64 %1353
  store ptr %904, ptr %1354, align 16, !tbaa !51
  %1355 = getelementptr inbounds nuw i8, ptr %1354, i64 8
  store ptr %1174, ptr %1355, align 8, !tbaa !53
  %1356 = getelementptr inbounds nuw i8, ptr %1354, i64 16
  store ptr %902, ptr %1356, align 16, !tbaa !54
  %1357 = getelementptr inbounds nuw i8, ptr %1354, i64 24
  store i32 %932, ptr %1357, align 8, !tbaa !55
  %1358 = getelementptr inbounds nuw i8, ptr %1354, i64 28
  store i32 %907, ptr %1358, align 4, !tbaa !56
  %1359 = icmp eq i32 %906, 63
  br i1 %1359, label %2754, label %1360

1360:                                             ; preds = %1352
  %1361 = getelementptr i8, ptr %1354, i64 32
  store ptr %904, ptr %1361, align 16, !tbaa !51
  %1362 = getelementptr i8, ptr %1354, i64 40
  store ptr %903, ptr %1362, align 8, !tbaa !53
  %1363 = getelementptr i8, ptr %1354, i64 48
  store ptr %1175, ptr %1363, align 16, !tbaa !54
  %1364 = getelementptr i8, ptr %1354, i64 56
  store i32 %932, ptr %1364, align 8, !tbaa !55
  %1365 = add nsw i32 %906, 2
  %1366 = getelementptr i8, ptr %1354, i64 60
  store i32 %907, ptr %1366, align 4, !tbaa !56
  %1367 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  br label %2629

1368:                                             ; preds = %1273
  %1369 = icmp sgt i64 %1277, %1179
  br i1 %1369, label %1405, label %1370

1370:                                             ; preds = %1368
  %1371 = icmp sgt i64 %1279, 1
  br i1 %1371, label %1387, label %1372

1372:                                             ; preds = %1370
  %1373 = icmp sgt i64 %1277, 1
  br i1 %1373, label %1376, label %1374

1374:                                             ; preds = %1372
  %1375 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  br label %2629

1376:                                             ; preds = %1372
  %1377 = icmp slt i32 %906, 64
  br i1 %1377, label %1378, label %2757

1378:                                             ; preds = %1376
  %1379 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  %1380 = sext i32 %906 to i64
  %1381 = getelementptr inbounds [32 x i8], ptr %6, i64 %1380
  store ptr %1379, ptr %1381, align 16, !tbaa !51
  %1382 = getelementptr inbounds nuw i8, ptr %1381, i64 8
  store ptr %1175, ptr %1382, align 8, !tbaa !53
  %1383 = getelementptr inbounds nuw i8, ptr %1381, i64 16
  store ptr %1174, ptr %1383, align 16, !tbaa !54
  %1384 = getelementptr inbounds nuw i8, ptr %1381, i64 24
  store i32 %1222, ptr %1384, align 8, !tbaa !55
  %1385 = add nsw i32 %906, 1
  %1386 = getelementptr inbounds nuw i8, ptr %1381, i64 28
  store i32 %907, ptr %1386, align 4, !tbaa !56
  br label %2629

1387:                                             ; preds = %1370
  %1388 = icmp slt i32 %906, 64
  br i1 %1388, label %1389, label %2755

1389:                                             ; preds = %1387
  %1390 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  %1391 = sext i32 %906 to i64
  %1392 = getelementptr inbounds [32 x i8], ptr %6, i64 %1391
  store ptr %1390, ptr %1392, align 16, !tbaa !51
  %1393 = getelementptr inbounds nuw i8, ptr %1392, i64 8
  store ptr %1175, ptr %1393, align 8, !tbaa !53
  %1394 = getelementptr inbounds nuw i8, ptr %1392, i64 16
  store ptr %1174, ptr %1394, align 16, !tbaa !54
  %1395 = getelementptr inbounds nuw i8, ptr %1392, i64 24
  store i32 %1222, ptr %1395, align 8, !tbaa !55
  %1396 = getelementptr inbounds nuw i8, ptr %1392, i64 28
  store i32 %907, ptr %1396, align 4, !tbaa !56
  %1397 = icmp eq i32 %906, 63
  br i1 %1397, label %2756, label %1398

1398:                                             ; preds = %1389
  %1399 = getelementptr i8, ptr %1392, i64 32
  store ptr %904, ptr %1399, align 16, !tbaa !51
  %1400 = getelementptr i8, ptr %1392, i64 40
  store ptr %903, ptr %1400, align 8, !tbaa !53
  %1401 = getelementptr i8, ptr %1392, i64 48
  store ptr %1175, ptr %1401, align 16, !tbaa !54
  %1402 = getelementptr i8, ptr %1392, i64 56
  store i32 %932, ptr %1402, align 8, !tbaa !55
  %1403 = add nsw i32 %906, 2
  %1404 = getelementptr i8, ptr %1392, i64 60
  store i32 %907, ptr %1404, align 4, !tbaa !56
  br label %2629

1405:                                             ; preds = %1368
  %1406 = icmp sgt i64 %1279, %1179
  br i1 %1406, label %1437, label %1407

1407:                                             ; preds = %1405
  %1408 = icmp sgt i64 %1279, 1
  %1409 = icmp slt i32 %906, 64
  br i1 %1408, label %1420, label %1410

1410:                                             ; preds = %1407
  br i1 %1409, label %1411, label %2760

1411:                                             ; preds = %1410
  %1412 = sext i32 %906 to i64
  %1413 = getelementptr inbounds [32 x i8], ptr %6, i64 %1412
  store ptr %904, ptr %1413, align 16, !tbaa !51
  %1414 = getelementptr inbounds nuw i8, ptr %1413, i64 8
  store ptr %903, ptr %1414, align 8, !tbaa !53
  %1415 = getelementptr inbounds nuw i8, ptr %1413, i64 16
  store ptr %1175, ptr %1415, align 16, !tbaa !54
  %1416 = getelementptr inbounds nuw i8, ptr %1413, i64 24
  store i32 %932, ptr %1416, align 8, !tbaa !55
  %1417 = add nsw i32 %906, 1
  %1418 = getelementptr inbounds nuw i8, ptr %1413, i64 28
  store i32 %907, ptr %1418, align 4, !tbaa !56
  %1419 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  br label %2629

1420:                                             ; preds = %1407
  br i1 %1409, label %1421, label %2758

1421:                                             ; preds = %1420
  %1422 = sext i32 %906 to i64
  %1423 = getelementptr inbounds [32 x i8], ptr %6, i64 %1422
  store ptr %904, ptr %1423, align 16, !tbaa !51
  %1424 = getelementptr inbounds nuw i8, ptr %1423, i64 8
  store ptr %903, ptr %1424, align 8, !tbaa !53
  %1425 = getelementptr inbounds nuw i8, ptr %1423, i64 16
  store ptr %1175, ptr %1425, align 16, !tbaa !54
  %1426 = getelementptr inbounds nuw i8, ptr %1423, i64 24
  store i32 %932, ptr %1426, align 8, !tbaa !55
  %1427 = getelementptr inbounds nuw i8, ptr %1423, i64 28
  store i32 %907, ptr %1427, align 4, !tbaa !56
  %1428 = icmp eq i32 %906, 63
  br i1 %1428, label %2759, label %1429

1429:                                             ; preds = %1421
  %1430 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  %1431 = getelementptr i8, ptr %1423, i64 32
  store ptr %1430, ptr %1431, align 16, !tbaa !51
  %1432 = getelementptr i8, ptr %1423, i64 40
  store ptr %1175, ptr %1432, align 8, !tbaa !53
  %1433 = getelementptr i8, ptr %1423, i64 48
  store ptr %1174, ptr %1433, align 16, !tbaa !54
  %1434 = getelementptr i8, ptr %1423, i64 56
  store i32 %1222, ptr %1434, align 8, !tbaa !55
  %1435 = add nsw i32 %906, 2
  %1436 = getelementptr i8, ptr %1423, i64 60
  store i32 %907, ptr %1436, align 4, !tbaa !56
  br label %2629

1437:                                             ; preds = %1405
  %1438 = icmp slt i32 %906, 64
  br i1 %1438, label %1439, label %2761

1439:                                             ; preds = %1437
  %1440 = sext i32 %906 to i64
  %1441 = getelementptr inbounds [32 x i8], ptr %6, i64 %1440
  store ptr %904, ptr %1441, align 16, !tbaa !51
  %1442 = getelementptr inbounds nuw i8, ptr %1441, i64 8
  store ptr %903, ptr %1442, align 8, !tbaa !53
  %1443 = getelementptr inbounds nuw i8, ptr %1441, i64 16
  store ptr %1175, ptr %1443, align 16, !tbaa !54
  %1444 = getelementptr inbounds nuw i8, ptr %1441, i64 24
  store i32 %932, ptr %1444, align 8, !tbaa !55
  %1445 = getelementptr inbounds nuw i8, ptr %1441, i64 28
  store i32 %907, ptr %1445, align 4, !tbaa !56
  %1446 = icmp eq i32 %906, 63
  br i1 %1446, label %2762, label %1447

1447:                                             ; preds = %1439
  %1448 = getelementptr i8, ptr %1441, i64 32
  store ptr %904, ptr %1448, align 16, !tbaa !51
  %1449 = getelementptr i8, ptr %1441, i64 40
  store ptr %1174, ptr %1449, align 8, !tbaa !53
  %1450 = getelementptr i8, ptr %1441, i64 48
  store ptr %902, ptr %1450, align 16, !tbaa !54
  %1451 = getelementptr i8, ptr %1441, i64 56
  store i32 %932, ptr %1451, align 8, !tbaa !55
  %1452 = add nsw i32 %906, 2
  %1453 = getelementptr i8, ptr %1441, i64 60
  store i32 %907, ptr %1453, align 4, !tbaa !56
  %1454 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  br label %2629

1455:                                             ; preds = %1261
  %1456 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %898, i32 %1257), !nosanitize !10
  %1457 = extractvalue { i32, i1 } %1456, 1, !nosanitize !10
  br i1 %1457, label %2746, label %1458, !prof !11, !nosanitize !10

1458:                                             ; preds = %1455
  %1459 = extractvalue { i32, i1 } %1456, 0, !nosanitize !10
  br label %1460

1460:                                             ; preds = %1458, %.loopexit266
  %1461 = phi i32 [ %1459, %1458 ], [ %898, %.loopexit266 ]
  %1462 = icmp sgt i64 %1178, 4
  %1463 = icmp sgt i32 %907, -1
  %1464 = select i1 %1462, i1 %1463, i1 false
  br i1 %1464, label %1465, label %1468

1465:                                             ; preds = %1460
  %1466 = zext nneg i32 %907 to i64
  %.split = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1466
  %1467 = getelementptr inbounds nuw i8, ptr %.split, i64 24
  store i32 -1, ptr %1467, align 8, !tbaa !55
  br label %1468

1468:                                             ; preds = %1465, %1460
  %1469 = sub i64 %1177, %911
  %1470 = ashr exact i64 %1469, 2
  %1471 = sub i64 %910, %1176
  %1472 = ashr exact i64 %1471, 2
  %1473 = icmp sgt i64 %1470, %1472
  br i1 %1473, label %1505, label %1474

1474:                                             ; preds = %1468
  %1475 = icmp sgt i64 %1470, 1
  br i1 %1475, label %1495, label %1476

1476:                                             ; preds = %1474
  %1477 = icmp sgt i64 %1472, 1
  br i1 %1477, label %2629, label %1478

1478:                                             ; preds = %1476
  %1479 = icmp sgt i32 %906, -1
  br i1 %1479, label %1480, label %2764

1480:                                             ; preds = %1478
  %1481 = icmp eq i32 %906, 0
  br i1 %1481, label %2612, label %1482

1482:                                             ; preds = %1480
  %1483 = add nsw i32 %906, -1
  %1484 = zext nneg i32 %1483 to i64
  %1485 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1484
  %1486 = load ptr, ptr %1485, align 16, !tbaa !51
  %1487 = getelementptr inbounds nuw i8, ptr %1485, i64 8
  %1488 = load ptr, ptr %1487, align 8, !tbaa !53
  %1489 = getelementptr inbounds nuw i8, ptr %1485, i64 16
  %1490 = load ptr, ptr %1489, align 16, !tbaa !54
  %1491 = getelementptr inbounds nuw i8, ptr %1485, i64 24
  %1492 = load i32, ptr %1491, align 8, !tbaa !55
  %1493 = getelementptr inbounds nuw i8, ptr %1485, i64 28
  %1494 = load i32, ptr %1493, align 4, !tbaa !56
  br label %2629

1495:                                             ; preds = %1474
  %1496 = icmp slt i32 %906, 64
  br i1 %1496, label %1497, label %2763

1497:                                             ; preds = %1495
  %1498 = sext i32 %906 to i64
  %1499 = getelementptr inbounds [32 x i8], ptr %6, i64 %1498
  store ptr %904, ptr %1499, align 16, !tbaa !51
  %1500 = getelementptr inbounds nuw i8, ptr %1499, i64 8
  store ptr %1174, ptr %1500, align 8, !tbaa !53
  %1501 = getelementptr inbounds nuw i8, ptr %1499, i64 16
  store ptr %902, ptr %1501, align 16, !tbaa !54
  %1502 = getelementptr inbounds nuw i8, ptr %1499, i64 24
  store i32 %932, ptr %1502, align 8, !tbaa !55
  %1503 = add nsw i32 %906, 1
  %1504 = getelementptr inbounds nuw i8, ptr %1499, i64 28
  store i32 %907, ptr %1504, align 4, !tbaa !56
  br label %2629

1505:                                             ; preds = %1468
  %1506 = icmp sgt i64 %1472, 1
  br i1 %1506, label %1526, label %1507

1507:                                             ; preds = %1505
  %1508 = icmp sgt i64 %1470, 1
  br i1 %1508, label %2629, label %1509

1509:                                             ; preds = %1507
  %1510 = icmp sgt i32 %906, -1
  br i1 %1510, label %1511, label %2766

1511:                                             ; preds = %1509
  %1512 = icmp eq i32 %906, 0
  br i1 %1512, label %2612, label %1513

1513:                                             ; preds = %1511
  %1514 = add nsw i32 %906, -1
  %1515 = zext nneg i32 %1514 to i64
  %1516 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1515
  %1517 = load ptr, ptr %1516, align 16, !tbaa !51
  %1518 = getelementptr inbounds nuw i8, ptr %1516, i64 8
  %1519 = load ptr, ptr %1518, align 8, !tbaa !53
  %1520 = getelementptr inbounds nuw i8, ptr %1516, i64 16
  %1521 = load ptr, ptr %1520, align 16, !tbaa !54
  %1522 = getelementptr inbounds nuw i8, ptr %1516, i64 24
  %1523 = load i32, ptr %1522, align 8, !tbaa !55
  %1524 = getelementptr inbounds nuw i8, ptr %1516, i64 28
  %1525 = load i32, ptr %1524, align 4, !tbaa !56
  br label %2629

1526:                                             ; preds = %1505
  %1527 = icmp slt i32 %906, 64
  br i1 %1527, label %1528, label %2765

1528:                                             ; preds = %1526
  %1529 = sext i32 %906 to i64
  %1530 = getelementptr inbounds [32 x i8], ptr %6, i64 %1529
  store ptr %904, ptr %1530, align 16, !tbaa !51
  %1531 = getelementptr inbounds nuw i8, ptr %1530, i64 8
  store ptr %903, ptr %1531, align 8, !tbaa !53
  %1532 = getelementptr inbounds nuw i8, ptr %1530, i64 16
  store ptr %1175, ptr %1532, align 16, !tbaa !54
  %1533 = getelementptr inbounds nuw i8, ptr %1530, i64 24
  store i32 %932, ptr %1533, align 8, !tbaa !55
  %1534 = add nsw i32 %906, 1
  %1535 = getelementptr inbounds nuw i8, ptr %1530, i64 28
  store i32 %907, ptr %1535, align 4, !tbaa !56
  br label %2629

1536:                                             ; preds = %1165
  %1537 = icmp slt i32 %899, %916
  br i1 %1537, label %1540, label %1538

1538:                                             ; preds = %1536
  %1539 = sub nsw i32 %899, %916
  br label %1552

1540:                                             ; preds = %1536
  %1541 = icmp eq i32 %900, 0
  br i1 %1541, label %1587, label %1542

1542:                                             ; preds = %1540
  %1543 = sub nsw i32 %78, %916
  %1544 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %899, i32 %1543), !nosanitize !10
  %1545 = extractvalue { i32, i1 } %1544, 1, !nosanitize !10
  br i1 %1545, label %2768, label %1546, !prof !11, !nosanitize !10

1546:                                             ; preds = %1542
  %1547 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %900, i32 -1)
  %1548 = extractvalue { i32, i1 } %1547, 1, !nosanitize !10
  br i1 %1548, label %2767, label %1549, !prof !11, !nosanitize !10

1549:                                             ; preds = %1546
  %1550 = extractvalue { i32, i1 } %1544, 0, !nosanitize !10
  %1551 = extractvalue { i32, i1 } %1547, 0, !nosanitize !10
  br label %1552

1552:                                             ; preds = %1549, %1538
  %1553 = phi i32 [ %1550, %1549 ], [ %1539, %1538 ]
  %1554 = phi i32 [ %1551, %1549 ], [ %900, %1538 ]
  %1555 = icmp samesign ult i64 %914, 65536
  br i1 %1555, label %1572, label %1556

1556:                                             ; preds = %1552
  %1557 = icmp samesign ult i64 %914, 16777216
  br i1 %1557, label %1565, label %1558

1558:                                             ; preds = %1556
  %1559 = lshr i64 %914, 24
  %1560 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1559
  %1561 = load i32, ptr %1560, align 4, !tbaa !5
  %1562 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1561, i32 24), !nosanitize !10
  %1563 = extractvalue { i32, i1 } %1562, 0, !nosanitize !10
  %1564 = extractvalue { i32, i1 } %1562, 1, !nosanitize !10
  br i1 %1564, label %2769, label %1584, !prof !11, !nosanitize !10

1565:                                             ; preds = %1556
  %1566 = lshr i64 %914, 16
  %1567 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1566
  %1568 = load i32, ptr %1567, align 4, !tbaa !5
  %1569 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1568, i32 16), !nosanitize !10
  %1570 = extractvalue { i32, i1 } %1569, 0, !nosanitize !10
  %1571 = extractvalue { i32, i1 } %1569, 1, !nosanitize !10
  br i1 %1571, label %2769, label %1584, !prof !11, !nosanitize !10

1572:                                             ; preds = %1552
  %1573 = icmp samesign ult i64 %914, 256
  br i1 %1573, label %1581, label %1574

1574:                                             ; preds = %1572
  %1575 = lshr i64 %914, 8
  %1576 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1575
  %1577 = load i32, ptr %1576, align 4, !tbaa !5
  %1578 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1577, i32 8), !nosanitize !10
  %1579 = extractvalue { i32, i1 } %1578, 0, !nosanitize !10
  %1580 = extractvalue { i32, i1 } %1578, 1, !nosanitize !10
  br i1 %1580, label %2769, label %1584, !prof !11, !nosanitize !10

1581:                                             ; preds = %1572
  %1582 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %914
  %1583 = load i32, ptr %1582, align 4, !tbaa !5
  br label %1584

1584:                                             ; preds = %1581, %1574, %1565, %1558
  %1585 = phi i32 [ %1563, %1558 ], [ %1570, %1565 ], [ %1579, %1574 ], [ %1583, %1581 ]
  %1586 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  br label %2629

1587:                                             ; preds = %1540
  %1588 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %898, i32 %916), !nosanitize !10
  %1589 = extractvalue { i32, i1 } %1588, 1, !nosanitize !10
  br i1 %1589, label %2768, label %1590, !prof !11, !nosanitize !10

1590:                                             ; preds = %1587
  %1591 = extractvalue { i32, i1 } %1588, 0, !nosanitize !10
  %1592 = icmp sgt i32 %907, -1
  br i1 %1592, label %1593, label %1596

1593:                                             ; preds = %1590
  %1594 = zext nneg i32 %907 to i64
  %.split220 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1594
  %1595 = getelementptr inbounds nuw i8, ptr %.split220, i64 24
  store i32 -1, ptr %1595, align 8, !tbaa !55
  br label %1596

1596:                                             ; preds = %1593, %1590
  %1597 = icmp sgt i32 %906, -1
  br i1 %1597, label %1598, label %2770

1598:                                             ; preds = %1596
  %1599 = icmp eq i32 %906, 0
  br i1 %1599, label %2612, label %1600

1600:                                             ; preds = %1598
  %1601 = add nsw i32 %906, -1
  %1602 = zext nneg i32 %1601 to i64
  %1603 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1602
  %1604 = load ptr, ptr %1603, align 16, !tbaa !51
  %1605 = getelementptr inbounds nuw i8, ptr %1603, i64 8
  %1606 = load ptr, ptr %1605, align 8, !tbaa !53
  %1607 = getelementptr inbounds nuw i8, ptr %1603, i64 16
  %1608 = load ptr, ptr %1607, align 16, !tbaa !54
  %1609 = getelementptr inbounds nuw i8, ptr %1603, i64 24
  %1610 = load i32, ptr %1609, align 8, !tbaa !55
  %1611 = getelementptr inbounds nuw i8, ptr %1603, i64 28
  %1612 = load i32, ptr %1611, align 4, !tbaa !56
  br label %2629

1613:                                             ; preds = %930
  br i1 %918, label %1616, label %1614

1614:                                             ; preds = %1613
  %1615 = lshr i64 %914, 1
  br label %1627

1616:                                             ; preds = %1613
  %1617 = load i32, ptr %922, align 4, !tbaa !5
  %1618 = sext i32 %1617 to i64
  %1619 = getelementptr inbounds [4 x i8], ptr %904, i64 %1618
  %1620 = load i32, ptr %1619, align 4, !tbaa !5
  %1621 = load i32, ptr %924, align 4, !tbaa !5
  %1622 = sext i32 %1621 to i64
  %1623 = getelementptr inbounds [4 x i8], ptr %904, i64 %1622
  %1624 = load i32, ptr %1623, align 4, !tbaa !5
  %1625 = icmp slt i32 %1620, %1624
  br i1 %1625, label %1626, label %1627

1626:                                             ; preds = %1616
  store i32 %1617, ptr %924, align 4, !tbaa !5
  store i32 %1621, ptr %922, align 4, !tbaa !5
  br label %1627

1627:                                             ; preds = %1626, %1616, %1614
  %1628 = phi i64 [ %1615, %1614 ], [ %921, %1626 ], [ %921, %1616 ]
  %1629 = phi i32 [ %916, %1614 ], [ %919, %1626 ], [ %919, %1616 ]
  br label %1630

1630:                                             ; preds = %1660, %1627
  %1631 = phi i64 [ %1628, %1627 ], [ %1632, %1660 ]
  %1632 = add nsw i64 %1631, -1
  %1633 = getelementptr inbounds nuw [4 x i8], ptr %903, i64 %1632
  %1634 = load i32, ptr %1633, align 4, !tbaa !5
  %1635 = sext i32 %1634 to i64
  %1636 = getelementptr inbounds [4 x i8], ptr %904, i64 %1635
  %1637 = load i32, ptr %1636, align 4, !tbaa !5
  %1638 = trunc nuw nsw i64 %1632 to i32
  br label %1639

1639:                                             ; preds = %1778, %1630
  %1640 = phi i32 [ %1780, %1778 ], [ %1638, %1630 ]
  %1641 = shl nsw i32 %1640, 1
  %1642 = or disjoint i32 %1641, 1
  %1643 = icmp slt i32 %1642, %1629
  br i1 %1643, label %1644, label %1660

1644:                                             ; preds = %1639
  %1645 = add nsw i32 %1641, 2
  %1646 = sext i32 %1642 to i64
  %1647 = getelementptr inbounds [4 x i8], ptr %903, i64 %1646
  %1648 = load i32, ptr %1647, align 4, !tbaa !5
  %1649 = sext i32 %1648 to i64
  %1650 = getelementptr inbounds [4 x i8], ptr %904, i64 %1649
  %1651 = load i32, ptr %1650, align 4, !tbaa !5
  %1652 = sext i32 %1645 to i64
  %1653 = getelementptr inbounds [4 x i8], ptr %903, i64 %1652
  %1654 = load i32, ptr %1653, align 4, !tbaa !5
  %1655 = sext i32 %1654 to i64
  %1656 = getelementptr inbounds [4 x i8], ptr %904, i64 %1655
  %1657 = load i32, ptr %1656, align 4, !tbaa !5
  %1658 = tail call i32 @llvm.smax.i32(i32 %1651, i32 %1657)
  %1659 = icmp sgt i32 %1658, %1637
  br i1 %1659, label %1778, label %1660

1660:                                             ; preds = %1644, %1639
  %1661 = sext i32 %1640 to i64
  %1662 = getelementptr inbounds [4 x i8], ptr %903, i64 %1661
  store i32 %1634, ptr %1662, align 4, !tbaa !5
  %1663 = icmp sgt i64 %1631, 1
  br i1 %1663, label %1630, label %1664, !llvm.loop !57

1664:                                             ; preds = %1660
  br i1 %918, label %1665, label %1698

1665:                                             ; preds = %1664
  %1666 = load i32, ptr %903, align 4, !tbaa !5
  %1667 = zext nneg i32 %1629 to i64
  %1668 = getelementptr inbounds nuw [4 x i8], ptr %903, i64 %1667
  %1669 = load i32, ptr %1668, align 4, !tbaa !5
  store i32 %1669, ptr %903, align 4, !tbaa !5
  store i32 %1666, ptr %1668, align 4, !tbaa !5
  %1670 = load i32, ptr %903, align 4, !tbaa !5
  %1671 = sext i32 %1670 to i64
  %1672 = getelementptr inbounds [4 x i8], ptr %904, i64 %1671
  %1673 = load i32, ptr %1672, align 4, !tbaa !5
  br label %1674

1674:                                             ; preds = %1768, %1665
  %1675 = phi i32 [ %1770, %1768 ], [ 0, %1665 ]
  %1676 = shl nsw i32 %1675, 1
  %1677 = or disjoint i32 %1676, 1
  %1678 = icmp slt i32 %1677, %1629
  br i1 %1678, label %1679, label %1695

1679:                                             ; preds = %1674
  %1680 = add nsw i32 %1676, 2
  %1681 = sext i32 %1677 to i64
  %1682 = getelementptr inbounds [4 x i8], ptr %903, i64 %1681
  %1683 = load i32, ptr %1682, align 4, !tbaa !5
  %1684 = sext i32 %1683 to i64
  %1685 = getelementptr inbounds [4 x i8], ptr %904, i64 %1684
  %1686 = load i32, ptr %1685, align 4, !tbaa !5
  %1687 = sext i32 %1680 to i64
  %1688 = getelementptr inbounds [4 x i8], ptr %903, i64 %1687
  %1689 = load i32, ptr %1688, align 4, !tbaa !5
  %1690 = sext i32 %1689 to i64
  %1691 = getelementptr inbounds [4 x i8], ptr %904, i64 %1690
  %1692 = load i32, ptr %1691, align 4, !tbaa !5
  %1693 = tail call i32 @llvm.smax.i32(i32 %1686, i32 %1692)
  %1694 = icmp sgt i32 %1693, %1673
  br i1 %1694, label %1768, label %1695

1695:                                             ; preds = %1679, %1674
  %1696 = sext i32 %1675 to i64
  %1697 = getelementptr inbounds [4 x i8], ptr %903, i64 %1696
  store i32 %1670, ptr %1697, align 4, !tbaa !5
  br label %1698

1698:                                             ; preds = %1695, %1664
  %1699 = add nsw i32 %1629, -1
  %1700 = zext nneg i32 %1699 to i64
  br label %1701

1701:                                             ; preds = %1730, %1698
  %1702 = phi i64 [ %1700, %1698 ], [ %1733, %1730 ]
  %1703 = load i32, ptr %903, align 4, !tbaa !5
  %1704 = getelementptr inbounds nuw [4 x i8], ptr %903, i64 %1702
  %1705 = load i32, ptr %1704, align 4, !tbaa !5
  store i32 %1705, ptr %903, align 4, !tbaa !5
  %1706 = sext i32 %1705 to i64
  %1707 = getelementptr inbounds [4 x i8], ptr %904, i64 %1706
  %1708 = load i32, ptr %1707, align 4, !tbaa !5
  br label %1709

1709:                                             ; preds = %1758, %1701
  %1710 = phi i32 [ %1760, %1758 ], [ 0, %1701 ]
  %1711 = shl nsw i32 %1710, 1
  %1712 = or disjoint i32 %1711, 1
  %1713 = sext i32 %1712 to i64
  %1714 = icmp sgt i64 %1702, %1713
  br i1 %1714, label %1715, label %1730

1715:                                             ; preds = %1709
  %1716 = add nsw i32 %1711, 2
  %1717 = getelementptr inbounds [4 x i8], ptr %903, i64 %1713
  %1718 = load i32, ptr %1717, align 4, !tbaa !5
  %1719 = sext i32 %1718 to i64
  %1720 = getelementptr inbounds [4 x i8], ptr %904, i64 %1719
  %1721 = load i32, ptr %1720, align 4, !tbaa !5
  %1722 = sext i32 %1716 to i64
  %1723 = getelementptr inbounds [4 x i8], ptr %903, i64 %1722
  %1724 = load i32, ptr %1723, align 4, !tbaa !5
  %1725 = sext i32 %1724 to i64
  %1726 = getelementptr inbounds [4 x i8], ptr %904, i64 %1725
  %1727 = load i32, ptr %1726, align 4, !tbaa !5
  %1728 = tail call i32 @llvm.smax.i32(i32 %1721, i32 %1727)
  %1729 = icmp sgt i32 %1728, %1708
  br i1 %1729, label %1758, label %1730

1730:                                             ; preds = %1715, %1709
  %1731 = sext i32 %1710 to i64
  %1732 = getelementptr inbounds [4 x i8], ptr %903, i64 %1731
  store i32 %1705, ptr %1732, align 4, !tbaa !5
  store i32 %1703, ptr %1704, align 4, !tbaa !5
  %1733 = add nsw i64 %1702, -1
  %1734 = icmp sgt i64 %1702, 1
  br i1 %1734, label %1701, label %1735, !llvm.loop !58

1735:                                             ; preds = %1730
  %1736 = load ptr, ptr %8, align 8
  br i1 %926, label %.preheader263, label %.loopexit264

.preheader263:                                    ; preds = %1735, %.loopexit236
  %1737 = phi ptr [ %1754, %.loopexit236 ], [ %925, %1735 ]
  %1738 = load i32, ptr %1737, align 4, !tbaa !5
  %1739 = sext i32 %1738 to i64
  %1740 = getelementptr inbounds [4 x i8], ptr %904, i64 %1739
  %1741 = load i32, ptr %1740, align 4, !tbaa !5
  %1742 = getelementptr inbounds i8, ptr %1737, i64 -4
  %1743 = icmp ugt ptr %903, %1742
  br i1 %1743, label %.loopexit236, label %.preheader235

.preheader235:                                    ; preds = %.preheader263, %1750
  %1744 = phi ptr [ %1752, %1750 ], [ %1742, %.preheader263 ]
  %1745 = load i32, ptr %1744, align 4, !tbaa !5
  %1746 = sext i32 %1745 to i64
  %1747 = getelementptr inbounds [4 x i8], ptr %904, i64 %1746
  %1748 = load i32, ptr %1747, align 4, !tbaa !5
  %1749 = icmp eq i32 %1748, %1741
  br i1 %1749, label %1750, label %.loopexit236

1750:                                             ; preds = %.preheader235
  %1751 = xor i32 %1745, -1
  store i32 %1751, ptr %1744, align 4, !tbaa !5
  %1752 = getelementptr inbounds i8, ptr %1744, i64 -4
  %1753 = icmp ugt ptr %903, %1752
  br i1 %1753, label %.loopexit236, label %.preheader235, !llvm.loop !59

.loopexit236:                                     ; preds = %1750, %.preheader235, %.preheader263
  %1754 = phi ptr [ %1742, %.preheader263 ], [ %1752, %1750 ], [ %1744, %.preheader235 ]
  %1755 = icmp ult ptr %903, %1754
  br i1 %1755, label %.preheader263, label %.loopexit264, !llvm.loop !60

.loopexit264:                                     ; preds = %.loopexit236, %1735
  %1756 = phi ptr [ %1736, %1735 ], [ %1754, %.loopexit236 ]
  %1757 = phi ptr [ %925, %1735 ], [ %1754, %.loopexit236 ]
  store ptr %1756, ptr %8, align 8
  br label %.loopexit262

1758:                                             ; preds = %1715
  %1759 = icmp slt i32 %1721, %1727
  %1760 = select i1 %1759, i32 %1716, i32 %1712
  %1761 = sext i32 %1760 to i64
  %1762 = getelementptr inbounds [4 x i8], ptr %903, i64 %1761
  %1763 = load i32, ptr %1762, align 4, !tbaa !5
  %1764 = sext i32 %1710 to i64
  %1765 = getelementptr inbounds [4 x i8], ptr %903, i64 %1764
  store i32 %1763, ptr %1765, align 4, !tbaa !5
  %1766 = add i32 %1760, 1073741824
  %1767 = icmp sgt i32 %1766, -1
  br i1 %1767, label %1709, label %2738, !prof !61, !llvm.loop !62, !nosanitize !10

1768:                                             ; preds = %1679
  %1769 = icmp slt i32 %1686, %1692
  %1770 = select i1 %1769, i32 %1680, i32 %1677
  %1771 = sext i32 %1770 to i64
  %1772 = getelementptr inbounds [4 x i8], ptr %903, i64 %1771
  %1773 = load i32, ptr %1772, align 4, !tbaa !5
  %1774 = sext i32 %1675 to i64
  %1775 = getelementptr inbounds [4 x i8], ptr %903, i64 %1774
  store i32 %1773, ptr %1775, align 4, !tbaa !5
  %1776 = add i32 %1770, 1073741824
  %1777 = icmp sgt i32 %1776, -1
  br i1 %1777, label %1674, label %2737, !prof !61, !llvm.loop !62, !nosanitize !10

1778:                                             ; preds = %1644
  %1779 = icmp slt i32 %1651, %1657
  %1780 = select i1 %1779, i32 %1645, i32 %1642
  %1781 = sext i32 %1780 to i64
  %1782 = getelementptr inbounds [4 x i8], ptr %903, i64 %1781
  %1783 = load i32, ptr %1782, align 4, !tbaa !5
  %1784 = sext i32 %1640 to i64
  %1785 = getelementptr inbounds [4 x i8], ptr %903, i64 %1784
  store i32 %1783, ptr %1785, align 4, !tbaa !5
  %1786 = add i32 %1780, 1073741824
  %1787 = icmp sgt i32 %1786, -1
  br i1 %1787, label %1639, label %2736, !prof !61, !llvm.loop !62, !nosanitize !10

1788:                                             ; preds = %909
  %1789 = getelementptr inbounds nuw i8, ptr %903, i64 4
  %1790 = icmp ult ptr %1789, %902
  br i1 %1790, label %.preheader260, label %.loopexit262

.preheader260:                                    ; preds = %1788, %1828
  %1791 = phi ptr [ %1830, %1828 ], [ %1789, %1788 ]
  %1792 = phi ptr [ %1791, %1828 ], [ %903, %1788 ]
  %1793 = load i32, ptr %1791, align 4, !tbaa !5
  %1794 = sext i32 %1793 to i64
  %1795 = getelementptr inbounds [4 x i8], ptr %904, i64 %1794
  %1796 = load i32, ptr %1795, align 4, !tbaa !5
  %1797 = load i32, ptr %1792, align 4, !tbaa !5
  %1798 = sext i32 %1797 to i64
  %1799 = getelementptr inbounds [4 x i8], ptr %904, i64 %1798
  %1800 = load i32, ptr %1799, align 4, !tbaa !5
  %1801 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1796, i32 %1800), !nosanitize !10
  %1802 = extractvalue { i32, i1 } %1801, 1, !nosanitize !10
  br i1 %1802, label %.loopexit234, label %.preheader232, !prof !63, !nosanitize !10

.preheader232:                                    ; preds = %.preheader260, %1816
  %1803 = phi i32 [ %1814, %1816 ], [ %1797, %.preheader260 ]
  %1804 = phi { i32, i1 } [ %1821, %1816 ], [ %1801, %.preheader260 ]
  %1805 = phi ptr [ %1811, %1816 ], [ %1792, %.preheader260 ]
  %1806 = extractvalue { i32, i1 } %1804, 0
  %1807 = icmp slt i32 %1806, 0
  br i1 %1807, label %.preheader, label %.loopexit231

.preheader:                                       ; preds = %.preheader232, %1813
  %1808 = phi i32 [ %1814, %1813 ], [ %1803, %.preheader232 ]
  %1809 = phi ptr [ %1811, %1813 ], [ %1805, %.preheader232 ]
  %1810 = getelementptr inbounds nuw i8, ptr %1809, i64 4
  store i32 %1808, ptr %1810, align 4, !tbaa !5
  %1811 = getelementptr inbounds i8, ptr %1809, i64 -4
  %1812 = icmp ugt ptr %903, %1811
  br i1 %1812, label %.loopexit231, label %1813

1813:                                             ; preds = %.preheader
  %1814 = load i32, ptr %1811, align 4, !tbaa !5
  %1815 = icmp slt i32 %1814, 0
  br i1 %1815, label %.preheader, label %1816, !llvm.loop !64

1816:                                             ; preds = %1813
  %1817 = load i32, ptr %1795, align 4, !tbaa !5
  %1818 = zext nneg i32 %1814 to i64
  %1819 = getelementptr inbounds nuw [4 x i8], ptr %904, i64 %1818
  %1820 = load i32, ptr %1819, align 4, !tbaa !5
  %1821 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1817, i32 %1820), !nosanitize !10
  %1822 = extractvalue { i32, i1 } %1821, 1, !nosanitize !10
  br i1 %1822, label %.loopexit234, label %.preheader232, !prof !65, !llvm.loop !64, !nosanitize !10

.loopexit231:                                     ; preds = %.preheader232, %.preheader
  %1823 = phi ptr [ %1811, %.preheader ], [ %1805, %.preheader232 ]
  %1824 = icmp eq i32 %1806, 0
  br i1 %1824, label %1825, label %1828

1825:                                             ; preds = %.loopexit231
  %1826 = load i32, ptr %1823, align 4, !tbaa !5
  %1827 = xor i32 %1826, -1
  store i32 %1827, ptr %1823, align 4, !tbaa !5
  br label %1828

1828:                                             ; preds = %1825, %.loopexit231
  %1829 = getelementptr inbounds nuw i8, ptr %1823, i64 4
  store i32 %1793, ptr %1829, align 4, !tbaa !5
  %1830 = getelementptr inbounds nuw i8, ptr %1791, i64 4
  %1831 = icmp ult ptr %1830, %902
  br i1 %1831, label %.preheader260, label %.loopexit262, !llvm.loop !66

.loopexit262:                                     ; preds = %1828, %1788, %.loopexit264
  %1832 = phi ptr [ %901, %1788 ], [ %1757, %.loopexit264 ], [ %901, %1828 ]
  store ptr %1832, ptr %7, align 8
  br label %2403

1833:                                             ; preds = %897
  store ptr %901, ptr %7, align 8
  switch i32 %905, label %2403 [
    i32 -1, label %2074
    i32 -2, label %1834
  ]

1834:                                             ; preds = %1833
  %1835 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %906, i32 -1)
  %1836 = extractvalue { i32, i1 } %1835, 0, !nosanitize !10
  %1837 = extractvalue { i32, i1 } %1835, 1, !nosanitize !10
  br i1 %1837, label %2694, label %1838, !prof !11, !nosanitize !10

1838:                                             ; preds = %1834
  %1839 = sext i32 %1836 to i64
  %1840 = getelementptr inbounds [32 x i8], ptr %6, i64 %1839
  %1841 = getelementptr inbounds nuw i8, ptr %1840, i64 8
  %1842 = load ptr, ptr %1841, align 8, !tbaa !53
  store ptr %1842, ptr %7, align 8, !tbaa !46
  %1843 = getelementptr inbounds nuw i8, ptr %1840, i64 16
  %1844 = load ptr, ptr %1843, align 16, !tbaa !54
  store ptr %1844, ptr %8, align 8, !tbaa !46
  %1845 = getelementptr inbounds nuw i8, ptr %1840, i64 24
  %1846 = load i32, ptr %1845, align 8, !tbaa !55
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1985, label %1848

1848:                                             ; preds = %1838
  %1849 = icmp sgt i32 %907, -1
  br i1 %1849, label %1850, label %1853

1850:                                             ; preds = %1848
  %1851 = zext nneg i32 %907 to i64
  %.split221 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1851
  %1852 = getelementptr inbounds nuw i8, ptr %.split221, i64 24
  store i32 -1, ptr %1852, align 8, !tbaa !55
  br label %1853

1853:                                             ; preds = %1850, %1848
  %1854 = ptrtoint ptr %904 to i64
  %1855 = sub i64 %1854, %825
  %1856 = ashr exact i64 %1855, 2
  %1857 = add nsw i64 %1856, 2147483648
  %1858 = icmp ult i64 %1857, 4294967296
  br i1 %1858, label %1859, label %2718

1859:                                             ; preds = %1853
  %1860 = trunc nsw i64 %1856 to i32
  %1861 = ptrtoint ptr %1844 to i64
  %1862 = sub i64 %1861, %826
  %1863 = ashr exact i64 %1862, 2
  %1864 = add nsw i64 %1863, 2147483647
  %1865 = icmp ult i64 %1864, 4294967296
  br i1 %1865, label %1866, label %2719

1866:                                             ; preds = %1859
  %1867 = trunc i64 %1863 to i32
  %1868 = add i32 %1867, -1
  %1869 = getelementptr inbounds i8, ptr %1842, i64 -4
  %1870 = icmp ugt ptr %903, %1869
  br i1 %1870, label %.loopexit259, label %.preheader256

.preheader256:                                    ; preds = %1866, %1907
  %1871 = phi i32 [ %1910, %1907 ], [ -1, %1866 ]
  %1872 = phi i32 [ %1909, %1907 ], [ -1, %1866 ]
  %1873 = phi ptr [ %1911, %1907 ], [ %903, %1866 ]
  %1874 = phi ptr [ %1908, %1907 ], [ %1869, %1866 ]
  %1875 = load i32, ptr %1873, align 4, !tbaa !5
  %1876 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1875, i32 %1860), !nosanitize !10
  %1877 = extractvalue { i32, i1 } %1876, 0, !nosanitize !10
  %1878 = extractvalue { i32, i1 } %1876, 1, !nosanitize !10
  br i1 %1878, label %.loopexit251, label %1879, !prof !11, !nosanitize !10

1879:                                             ; preds = %.preheader256
  %1880 = icmp sgt i32 %1877, -1
  br i1 %1880, label %1881, label %1907

1881:                                             ; preds = %1879
  %1882 = zext nneg i32 %1877 to i64
  %1883 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %1882
  %1884 = load i32, ptr %1883, align 4, !tbaa !5
  %1885 = icmp eq i32 %1884, %1868
  br i1 %1885, label %1886, label %1907

1886:                                             ; preds = %1881
  %1887 = getelementptr inbounds nuw i8, ptr %1874, i64 4
  store i32 %1877, ptr %1887, align 4, !tbaa !5
  %1888 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1877, i32 %1860), !nosanitize !10
  %1889 = extractvalue { i32, i1 } %1888, 1, !nosanitize !10
  br i1 %1889, label %.loopexit252, label %1890, !prof !11, !nosanitize !10

1890:                                             ; preds = %1886
  %1891 = extractvalue { i32, i1 } %1888, 0, !nosanitize !10
  %1892 = sext i32 %1891 to i64
  %1893 = getelementptr inbounds [4 x i8], ptr %138, i64 %1892
  %1894 = load i32, ptr %1893, align 4, !tbaa !5
  %1895 = icmp eq i32 %1872, %1894
  br i1 %1895, label %1904, label %1896

1896:                                             ; preds = %1890
  %1897 = ptrtoint ptr %1887 to i64
  %1898 = sub i64 %1897, %826
  %1899 = ashr exact i64 %1898, 2
  %1900 = add nsw i64 %1899, 2147483648
  %1901 = icmp ult i64 %1900, 4294967296
  br i1 %1901, label %1902, label %2720

1902:                                             ; preds = %1896
  %1903 = trunc nsw i64 %1899 to i32
  br label %1904

1904:                                             ; preds = %1902, %1890
  %1905 = phi i32 [ %1894, %1902 ], [ %1872, %1890 ]
  %1906 = phi i32 [ %1903, %1902 ], [ %1871, %1890 ]
  store i32 %1906, ptr %1883, align 4, !tbaa !5
  br label %1907

1907:                                             ; preds = %1904, %1881, %1879
  %1908 = phi ptr [ %1887, %1904 ], [ %1874, %1881 ], [ %1874, %1879 ]
  %1909 = phi i32 [ %1905, %1904 ], [ %1872, %1881 ], [ %1872, %1879 ]
  %1910 = phi i32 [ %1906, %1904 ], [ %1871, %1881 ], [ %1871, %1879 ]
  %1911 = getelementptr inbounds nuw i8, ptr %1873, i64 4
  %1912 = icmp ugt ptr %1911, %1908
  br i1 %1912, label %.loopexit259, label %.preheader256, !llvm.loop !67

.loopexit259:                                     ; preds = %1907, %1866
  %1913 = phi ptr [ %1869, %1866 ], [ %1908, %1907 ]
  %1914 = phi i32 [ -1, %1866 ], [ %1910, %1907 ]
  %1915 = icmp ugt ptr %903, %1913
  br i1 %1915, label %.loopexit255, label %.preheader254

.preheader254:                                    ; preds = %.loopexit259, %1937
  %1916 = phi i32 [ %1934, %1937 ], [ %1914, %.loopexit259 ]
  %1917 = phi i32 [ %1933, %1937 ], [ -1, %.loopexit259 ]
  %1918 = phi ptr [ %1938, %1937 ], [ %1913, %.loopexit259 ]
  %1919 = load i32, ptr %1918, align 4, !tbaa !5
  %1920 = sext i32 %1919 to i64
  %1921 = getelementptr inbounds [4 x i8], ptr %138, i64 %1920
  %1922 = load i32, ptr %1921, align 4, !tbaa !5
  %1923 = icmp eq i32 %1917, %1922
  br i1 %1923, label %1932, label %1924

1924:                                             ; preds = %.preheader254
  %1925 = ptrtoint ptr %1918 to i64
  %1926 = sub i64 %1925, %826
  %1927 = ashr exact i64 %1926, 2
  %1928 = add nsw i64 %1927, 2147483648
  %1929 = icmp ult i64 %1928, 4294967296
  br i1 %1929, label %1930, label %2721

1930:                                             ; preds = %1924
  %1931 = trunc nsw i64 %1927 to i32
  br label %1932

1932:                                             ; preds = %1930, %.preheader254
  %1933 = phi i32 [ %1922, %1930 ], [ %1917, %.preheader254 ]
  %1934 = phi i32 [ %1931, %1930 ], [ %1916, %.preheader254 ]
  %1935 = icmp eq i32 %1934, %1922
  br i1 %1935, label %1937, label %1936

1936:                                             ; preds = %1932
  store i32 %1934, ptr %1921, align 4, !tbaa !5
  br label %1937

1937:                                             ; preds = %1936, %1932
  %1938 = getelementptr inbounds i8, ptr %1918, i64 -4
  %1939 = icmp ugt ptr %903, %1938
  br i1 %1939, label %.loopexit255, label %.preheader254, !llvm.loop !68

.loopexit255:                                     ; preds = %1937, %.loopexit259
  %1940 = phi i32 [ %1914, %.loopexit259 ], [ %1934, %1937 ]
  %1941 = getelementptr inbounds nuw i8, ptr %1913, i64 4
  %1942 = icmp ult ptr %1941, %1844
  br i1 %1942, label %.preheader250, label %.loopexit246

.preheader250:                                    ; preds = %.loopexit255, %1980
  %1943 = phi ptr [ %1947, %1980 ], [ %902, %.loopexit255 ]
  %1944 = phi i32 [ %1983, %1980 ], [ %1940, %.loopexit255 ]
  %1945 = phi i32 [ %1982, %1980 ], [ -1, %.loopexit255 ]
  %1946 = phi ptr [ %1981, %1980 ], [ %1844, %.loopexit255 ]
  %1947 = getelementptr inbounds i8, ptr %1943, i64 -4
  %1948 = load i32, ptr %1947, align 4, !tbaa !5
  %1949 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1948, i32 %1860), !nosanitize !10
  %1950 = extractvalue { i32, i1 } %1949, 0, !nosanitize !10
  %1951 = extractvalue { i32, i1 } %1949, 1, !nosanitize !10
  br i1 %1951, label %.loopexit251, label %1952, !prof !11, !nosanitize !10

1952:                                             ; preds = %.preheader250
  %1953 = icmp sgt i32 %1950, -1
  br i1 %1953, label %1954, label %1980

1954:                                             ; preds = %1952
  %1955 = zext nneg i32 %1950 to i64
  %1956 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %1955
  %1957 = load i32, ptr %1956, align 4, !tbaa !5
  %1958 = icmp eq i32 %1957, %1868
  br i1 %1958, label %1959, label %1980

1959:                                             ; preds = %1954
  %1960 = getelementptr inbounds i8, ptr %1946, i64 -4
  store i32 %1950, ptr %1960, align 4, !tbaa !5
  %1961 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1950, i32 %1860), !nosanitize !10
  %1962 = extractvalue { i32, i1 } %1961, 1, !nosanitize !10
  br i1 %1962, label %.loopexit252, label %1963, !prof !11, !nosanitize !10

1963:                                             ; preds = %1959
  %1964 = extractvalue { i32, i1 } %1961, 0, !nosanitize !10
  %1965 = sext i32 %1964 to i64
  %1966 = getelementptr inbounds [4 x i8], ptr %138, i64 %1965
  %1967 = load i32, ptr %1966, align 4, !tbaa !5
  %1968 = icmp eq i32 %1945, %1967
  br i1 %1968, label %1977, label %1969

1969:                                             ; preds = %1963
  %1970 = ptrtoint ptr %1960 to i64
  %1971 = sub i64 %1970, %826
  %1972 = ashr exact i64 %1971, 2
  %1973 = add nsw i64 %1972, 2147483648
  %1974 = icmp ult i64 %1973, 4294967296
  br i1 %1974, label %1975, label %2722

1975:                                             ; preds = %1969
  %1976 = trunc nsw i64 %1972 to i32
  br label %1977

1977:                                             ; preds = %1975, %1963
  %1978 = phi i32 [ %1967, %1975 ], [ %1945, %1963 ]
  %1979 = phi i32 [ %1976, %1975 ], [ %1944, %1963 ]
  store i32 %1979, ptr %1956, align 4, !tbaa !5
  br label %1980

1980:                                             ; preds = %1977, %1954, %1952
  %1981 = phi ptr [ %1960, %1977 ], [ %1946, %1954 ], [ %1946, %1952 ]
  %1982 = phi i32 [ %1978, %1977 ], [ %1945, %1954 ], [ %1945, %1952 ]
  %1983 = phi i32 [ %1979, %1977 ], [ %1944, %1954 ], [ %1944, %1952 ]
  %1984 = icmp ult ptr %1941, %1981
  br i1 %1984, label %.preheader250, label %.loopexit246, !llvm.loop !69

1985:                                             ; preds = %1838
  %1986 = ptrtoint ptr %904 to i64
  %1987 = sub i64 %1986, %825
  %1988 = ashr exact i64 %1987, 2
  %1989 = add nsw i64 %1988, 2147483648
  %1990 = icmp ult i64 %1989, 4294967296
  br i1 %1990, label %1991, label %2714

1991:                                             ; preds = %1985
  %1992 = trunc nsw i64 %1988 to i32
  %1993 = ptrtoint ptr %1844 to i64
  %1994 = sub i64 %1993, %826
  %1995 = ashr exact i64 %1994, 2
  %1996 = add nsw i64 %1995, 2147483647
  %1997 = icmp ult i64 %1996, 4294967296
  br i1 %1997, label %1998, label %2715

1998:                                             ; preds = %1991
  %1999 = trunc i64 %1995 to i32
  %2000 = add i32 %1999, -1
  %2001 = getelementptr inbounds i8, ptr %1842, i64 -4
  %2002 = icmp ugt ptr %903, %2001
  br i1 %2002, label %.loopexit249, label %.preheader247

.preheader247:                                    ; preds = %1998, %2025
  %2003 = phi ptr [ %2027, %2025 ], [ %903, %1998 ]
  %2004 = phi ptr [ %2026, %2025 ], [ %2001, %1998 ]
  %2005 = load i32, ptr %2003, align 4, !tbaa !5
  %2006 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2005, i32 %1992), !nosanitize !10
  %2007 = extractvalue { i32, i1 } %2006, 0, !nosanitize !10
  %2008 = extractvalue { i32, i1 } %2006, 1, !nosanitize !10
  br i1 %2008, label %.loopexit245, label %2009, !prof !11, !nosanitize !10

2009:                                             ; preds = %.preheader247
  %2010 = icmp sgt i32 %2007, -1
  br i1 %2010, label %2011, label %2025

2011:                                             ; preds = %2009
  %2012 = zext nneg i32 %2007 to i64
  %2013 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2012
  %2014 = load i32, ptr %2013, align 4, !tbaa !5
  %2015 = icmp eq i32 %2014, %2000
  br i1 %2015, label %2016, label %2025

2016:                                             ; preds = %2011
  %2017 = getelementptr inbounds nuw i8, ptr %2004, i64 4
  store i32 %2007, ptr %2017, align 4, !tbaa !5
  %2018 = ptrtoint ptr %2017 to i64
  %2019 = sub i64 %2018, %826
  %2020 = ashr exact i64 %2019, 2
  %2021 = add nsw i64 %2020, 2147483648
  %2022 = icmp ult i64 %2021, 4294967296
  br i1 %2022, label %2023, label %2716

2023:                                             ; preds = %2016
  %2024 = trunc nsw i64 %2020 to i32
  store i32 %2024, ptr %2013, align 4, !tbaa !5
  br label %2025

2025:                                             ; preds = %2023, %2011, %2009
  %2026 = phi ptr [ %2017, %2023 ], [ %2004, %2011 ], [ %2004, %2009 ]
  %2027 = getelementptr inbounds nuw i8, ptr %2003, i64 4
  %2028 = icmp ugt ptr %2027, %2026
  br i1 %2028, label %.loopexit249, label %.preheader247, !llvm.loop !70

.loopexit249:                                     ; preds = %2025, %1998
  %2029 = phi ptr [ %2001, %1998 ], [ %2026, %2025 ]
  %2030 = getelementptr inbounds nuw i8, ptr %2029, i64 4
  %2031 = icmp ult ptr %2030, %1844
  br i1 %2031, label %.preheader244, label %.loopexit246

.preheader244:                                    ; preds = %.loopexit249, %2055
  %2032 = phi ptr [ %2034, %2055 ], [ %902, %.loopexit249 ]
  %2033 = phi ptr [ %2056, %2055 ], [ %1844, %.loopexit249 ]
  %2034 = getelementptr inbounds i8, ptr %2032, i64 -4
  %2035 = load i32, ptr %2034, align 4, !tbaa !5
  %2036 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2035, i32 %1992), !nosanitize !10
  %2037 = extractvalue { i32, i1 } %2036, 0, !nosanitize !10
  %2038 = extractvalue { i32, i1 } %2036, 1, !nosanitize !10
  br i1 %2038, label %.loopexit245, label %2039, !prof !11, !nosanitize !10

2039:                                             ; preds = %.preheader244
  %2040 = icmp sgt i32 %2037, -1
  br i1 %2040, label %2041, label %2055

2041:                                             ; preds = %2039
  %2042 = zext nneg i32 %2037 to i64
  %2043 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2042
  %2044 = load i32, ptr %2043, align 4, !tbaa !5
  %2045 = icmp eq i32 %2044, %2000
  br i1 %2045, label %2046, label %2055

2046:                                             ; preds = %2041
  %2047 = getelementptr inbounds i8, ptr %2033, i64 -4
  store i32 %2037, ptr %2047, align 4, !tbaa !5
  %2048 = ptrtoint ptr %2047 to i64
  %2049 = sub i64 %2048, %826
  %2050 = ashr exact i64 %2049, 2
  %2051 = add nsw i64 %2050, 2147483648
  %2052 = icmp ult i64 %2051, 4294967296
  br i1 %2052, label %2053, label %2717

2053:                                             ; preds = %2046
  %2054 = trunc nsw i64 %2050 to i32
  store i32 %2054, ptr %2043, align 4, !tbaa !5
  br label %2055

2055:                                             ; preds = %2053, %2041, %2039
  %2056 = phi ptr [ %2047, %2053 ], [ %2033, %2041 ], [ %2033, %2039 ]
  %2057 = icmp ult ptr %2030, %2056
  br i1 %2057, label %.preheader244, label %.loopexit246, !llvm.loop !71

.loopexit246:                                     ; preds = %1980, %2055, %.loopexit249, %.loopexit255
  %2058 = icmp sgt i32 %1836, -1
  br i1 %2058, label %2059, label %2723

2059:                                             ; preds = %.loopexit246
  %2060 = icmp eq i32 %1836, 0
  br i1 %2060, label %2612, label %2061

2061:                                             ; preds = %2059
  %2062 = add nsw i32 %1836, -1
  %2063 = zext nneg i32 %2062 to i64
  %2064 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2063
  %2065 = load ptr, ptr %2064, align 16, !tbaa !51
  %2066 = getelementptr inbounds nuw i8, ptr %2064, i64 8
  %2067 = load ptr, ptr %2066, align 8, !tbaa !53
  %2068 = getelementptr inbounds nuw i8, ptr %2064, i64 16
  %2069 = load ptr, ptr %2068, align 16, !tbaa !54
  %2070 = getelementptr inbounds nuw i8, ptr %2064, i64 24
  %2071 = load i32, ptr %2070, align 8, !tbaa !55
  %2072 = getelementptr inbounds nuw i8, ptr %2064, i64 28
  %2073 = load i32, ptr %2072, align 4, !tbaa !56
  br label %2629

2074:                                             ; preds = %1833
  %2075 = getelementptr inbounds [4 x i8], ptr %904, i64 %839
  %2076 = ptrtoint ptr %902 to i64
  %2077 = sub i64 %2076, %826
  %2078 = ashr exact i64 %2077, 2
  %2079 = add nsw i64 %2078, 2147483647
  %2080 = icmp ult i64 %2079, 4294967296
  br i1 %2080, label %2081, label %2695

2081:                                             ; preds = %2074
  %2082 = trunc i64 %2078 to i32
  %2083 = add i32 %2082, -1
  call fastcc void @tr_partition(ptr noundef %2075, ptr noundef %903, ptr noundef %903, ptr noundef %902, ptr noundef %7, ptr noundef %8, i32 noundef %2083)
  %2084 = load ptr, ptr %7, align 8, !tbaa !46
  %2085 = icmp ult ptr %2084, %902
  br i1 %2085, label %2086, label %.loopexit243

2086:                                             ; preds = %2081
  %2087 = ptrtoint ptr %2084 to i64
  %2088 = sub i64 %2087, %826
  %2089 = ashr exact i64 %2088, 2
  %2090 = add nsw i64 %2089, 2147483647
  %2091 = icmp ult i64 %2090, 4294967296
  br i1 %2091, label %2092, label %2696

2092:                                             ; preds = %2086
  %2093 = trunc i64 %2089 to i32
  %2094 = add i32 %2093, -1
  %2095 = icmp ult ptr %903, %2084
  br i1 %2095, label %.preheader242, label %.loopexit243

.preheader242:                                    ; preds = %2092, %.preheader242
  %2096 = phi ptr [ %2100, %.preheader242 ], [ %903, %2092 ]
  %2097 = load i32, ptr %2096, align 4, !tbaa !5
  %2098 = sext i32 %2097 to i64
  %2099 = getelementptr inbounds [4 x i8], ptr %138, i64 %2098
  store i32 %2094, ptr %2099, align 4, !tbaa !5
  %2100 = getelementptr inbounds nuw i8, ptr %2096, i64 4
  %2101 = icmp ult ptr %2100, %2084
  br i1 %2101, label %.preheader242, label %.loopexit243, !llvm.loop !72

.loopexit243:                                     ; preds = %.preheader242, %2092, %2081
  %2102 = load ptr, ptr %8, align 8, !tbaa !46
  %2103 = icmp ult ptr %2102, %902
  %2104 = ptrtoint ptr %2102 to i64
  br i1 %2103, label %2105, label %.loopexit241

2105:                                             ; preds = %.loopexit243
  %2106 = sub i64 %2104, %826
  %2107 = ashr exact i64 %2106, 2
  %2108 = add nsw i64 %2107, 2147483647
  %2109 = icmp ult i64 %2108, 4294967296
  br i1 %2109, label %2110, label %2697

2110:                                             ; preds = %2105
  %2111 = trunc i64 %2107 to i32
  %2112 = add i32 %2111, -1
  %2113 = icmp ult ptr %2084, %2102
  br i1 %2113, label %.preheader240, label %.loopexit241

.preheader240:                                    ; preds = %2110, %.preheader240
  %2114 = phi ptr [ %2118, %.preheader240 ], [ %2084, %2110 ]
  %2115 = load i32, ptr %2114, align 4, !tbaa !5
  %2116 = sext i32 %2115 to i64
  %2117 = getelementptr inbounds [4 x i8], ptr %138, i64 %2116
  store i32 %2112, ptr %2117, align 4, !tbaa !5
  %2118 = getelementptr inbounds nuw i8, ptr %2114, i64 4
  %2119 = icmp ult ptr %2118, %2102
  br i1 %2119, label %.preheader240, label %.loopexit241, !llvm.loop !73

.loopexit241:                                     ; preds = %.preheader240, %2110, %.loopexit243
  %2120 = ptrtoint ptr %2084 to i64
  %2121 = sub i64 %2104, %2120
  %2122 = icmp sgt i64 %2121, 4
  br i1 %2122, label %2123, label %2140

2123:                                             ; preds = %.loopexit241
  %2124 = icmp slt i32 %906, 64
  br i1 %2124, label %2125, label %2698

2125:                                             ; preds = %2123
  %2126 = sext i32 %906 to i64
  %2127 = getelementptr inbounds [32 x i8], ptr %6, i64 %2126
  store ptr null, ptr %2127, align 16, !tbaa !51
  %2128 = getelementptr inbounds nuw i8, ptr %2127, i64 8
  store ptr %2084, ptr %2128, align 8, !tbaa !53
  %2129 = getelementptr inbounds nuw i8, ptr %2127, i64 16
  store ptr %2102, ptr %2129, align 16, !tbaa !54
  %2130 = getelementptr inbounds nuw i8, ptr %2127, i64 24
  store i32 0, ptr %2130, align 8, !tbaa !55
  %2131 = getelementptr inbounds nuw i8, ptr %2127, i64 28
  store i32 0, ptr %2131, align 4, !tbaa !56
  %2132 = icmp eq i32 %906, 63
  br i1 %2132, label %2699, label %2133

2133:                                             ; preds = %2125
  %2134 = getelementptr i8, ptr %2127, i64 32
  store ptr %2075, ptr %2134, align 16, !tbaa !51
  %2135 = getelementptr i8, ptr %2127, i64 40
  store ptr %903, ptr %2135, align 8, !tbaa !53
  %2136 = getelementptr i8, ptr %2127, i64 48
  store ptr %902, ptr %2136, align 16, !tbaa !54
  %2137 = getelementptr i8, ptr %2127, i64 56
  store i32 -2, ptr %2137, align 8, !tbaa !55
  %2138 = add nsw i32 %906, 2
  %2139 = getelementptr i8, ptr %2127, i64 60
  store i32 %907, ptr %2139, align 4, !tbaa !56
  br label %2140

2140:                                             ; preds = %2133, %.loopexit241
  %2141 = phi i32 [ %2138, %2133 ], [ %906, %.loopexit241 ]
  %2142 = phi i32 [ %906, %2133 ], [ %907, %.loopexit241 ]
  %2143 = ptrtoint ptr %903 to i64
  %2144 = sub i64 %2120, %2143
  %2145 = ashr exact i64 %2144, 2
  %2146 = sub i64 %2076, %2104
  %2147 = ashr exact i64 %2146, 2
  %2148 = icmp sgt i64 %2145, %2147
  br i1 %2148, label %2276, label %2149

2149:                                             ; preds = %2140
  %2150 = icmp sgt i64 %2145, 1
  br i1 %2150, label %2202, label %2151

2151:                                             ; preds = %2149
  %2152 = icmp sgt i64 %2147, 1
  br i1 %2152, label %2170, label %2153

2153:                                             ; preds = %2151
  %2154 = icmp sgt i32 %2141, -1
  br i1 %2154, label %2155, label %2706

2155:                                             ; preds = %2153
  %2156 = icmp eq i32 %2141, 0
  br i1 %2156, label %2612, label %2157

2157:                                             ; preds = %2155
  %2158 = add nsw i32 %2141, -1
  %2159 = zext nneg i32 %2158 to i64
  %2160 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2159
  %2161 = load ptr, ptr %2160, align 16, !tbaa !51
  %2162 = getelementptr inbounds nuw i8, ptr %2160, i64 8
  %2163 = load ptr, ptr %2162, align 8, !tbaa !53
  %2164 = getelementptr inbounds nuw i8, ptr %2160, i64 16
  %2165 = load ptr, ptr %2164, align 16, !tbaa !54
  %2166 = getelementptr inbounds nuw i8, ptr %2160, i64 24
  %2167 = load i32, ptr %2166, align 8, !tbaa !55
  %2168 = getelementptr inbounds nuw i8, ptr %2160, i64 28
  %2169 = load i32, ptr %2168, align 4, !tbaa !56
  br label %2629

2170:                                             ; preds = %2151
  %2171 = icmp samesign ult i64 %2147, 2147483648
  br i1 %2171, label %2172, label %2704

2172:                                             ; preds = %2170
  %2173 = icmp samesign ult i64 %2147, 65536
  br i1 %2173, label %2190, label %2174

2174:                                             ; preds = %2172
  %2175 = icmp samesign ult i64 %2147, 16777216
  br i1 %2175, label %2183, label %2176

2176:                                             ; preds = %2174
  %2177 = lshr i64 %2147, 24
  %2178 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2177
  %2179 = load i32, ptr %2178, align 4, !tbaa !5
  %2180 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2179, i32 24), !nosanitize !10
  %2181 = extractvalue { i32, i1 } %2180, 0, !nosanitize !10
  %2182 = extractvalue { i32, i1 } %2180, 1, !nosanitize !10
  br i1 %2182, label %2705, label %2629, !prof !11, !nosanitize !10

2183:                                             ; preds = %2174
  %2184 = lshr i64 %2147, 16
  %2185 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2184
  %2186 = load i32, ptr %2185, align 4, !tbaa !5
  %2187 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2186, i32 16), !nosanitize !10
  %2188 = extractvalue { i32, i1 } %2187, 0, !nosanitize !10
  %2189 = extractvalue { i32, i1 } %2187, 1, !nosanitize !10
  br i1 %2189, label %2705, label %2629, !prof !11, !nosanitize !10

2190:                                             ; preds = %2172
  %2191 = icmp samesign ult i64 %2147, 256
  br i1 %2191, label %2199, label %2192

2192:                                             ; preds = %2190
  %2193 = lshr i64 %2147, 8
  %2194 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2193
  %2195 = load i32, ptr %2194, align 4, !tbaa !5
  %2196 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2195, i32 8), !nosanitize !10
  %2197 = extractvalue { i32, i1 } %2196, 0, !nosanitize !10
  %2198 = extractvalue { i32, i1 } %2196, 1, !nosanitize !10
  br i1 %2198, label %2705, label %2629, !prof !11, !nosanitize !10

2199:                                             ; preds = %2190
  %2200 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2146
  %2201 = load i32, ptr %2200, align 4, !tbaa !5
  br label %2629

2202:                                             ; preds = %2149
  %2203 = icmp slt i32 %2141, 64
  br i1 %2203, label %2204, label %2700

2204:                                             ; preds = %2202
  %2205 = sext i32 %2141 to i64
  %2206 = getelementptr inbounds [32 x i8], ptr %6, i64 %2205
  store ptr %904, ptr %2206, align 16, !tbaa !51
  %2207 = getelementptr inbounds nuw i8, ptr %2206, i64 8
  store ptr %2102, ptr %2207, align 8, !tbaa !53
  %2208 = getelementptr inbounds nuw i8, ptr %2206, i64 16
  store ptr %902, ptr %2208, align 16, !tbaa !54
  %2209 = add nsw i64 %2147, 2147483648
  %2210 = icmp ult i64 %2209, 4294967296
  br i1 %2210, label %2211, label %2701

2211:                                             ; preds = %2204
  %2212 = icmp ult i64 %2147, 65536
  br i1 %2212, label %2230, label %2213

2213:                                             ; preds = %2211
  %2214 = icmp ult i64 %2147, 16777216
  br i1 %2214, label %2223, label %2215

2215:                                             ; preds = %2213
  %2216 = lshr i64 %2147, 24
  %2217 = and i64 %2216, 255
  %2218 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2217
  %2219 = load i32, ptr %2218, align 4, !tbaa !5
  %2220 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2219, i32 24), !nosanitize !10
  %2221 = extractvalue { i32, i1 } %2220, 0, !nosanitize !10
  %2222 = extractvalue { i32, i1 } %2220, 1, !nosanitize !10
  br i1 %2222, label %2702, label %2242, !prof !11, !nosanitize !10

2223:                                             ; preds = %2213
  %2224 = lshr i64 %2147, 16
  %2225 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2224
  %2226 = load i32, ptr %2225, align 4, !tbaa !5
  %2227 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2226, i32 16), !nosanitize !10
  %2228 = extractvalue { i32, i1 } %2227, 0, !nosanitize !10
  %2229 = extractvalue { i32, i1 } %2227, 1, !nosanitize !10
  br i1 %2229, label %2702, label %2242, !prof !11, !nosanitize !10

2230:                                             ; preds = %2211
  %2231 = icmp samesign ult i64 %2147, 256
  br i1 %2231, label %2239, label %2232

2232:                                             ; preds = %2230
  %2233 = lshr i64 %2147, 8
  %2234 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2233
  %2235 = load i32, ptr %2234, align 4, !tbaa !5
  %2236 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2235, i32 8), !nosanitize !10
  %2237 = extractvalue { i32, i1 } %2236, 0, !nosanitize !10
  %2238 = extractvalue { i32, i1 } %2236, 1, !nosanitize !10
  br i1 %2238, label %2702, label %2242, !prof !11, !nosanitize !10

2239:                                             ; preds = %2230
  %2240 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2146
  %2241 = load i32, ptr %2240, align 4, !tbaa !5
  br label %2242

2242:                                             ; preds = %2239, %2232, %2223, %2215
  %2243 = phi i32 [ %2221, %2215 ], [ %2228, %2223 ], [ %2237, %2232 ], [ %2241, %2239 ]
  %2244 = getelementptr inbounds nuw i8, ptr %2206, i64 24
  store i32 %2243, ptr %2244, align 8, !tbaa !55
  %2245 = add nsw i32 %2141, 1
  %2246 = getelementptr inbounds nuw i8, ptr %2206, i64 28
  store i32 %2142, ptr %2246, align 4, !tbaa !56
  %2247 = icmp samesign ult i64 %2145, 65536
  br i1 %2247, label %2264, label %2248

2248:                                             ; preds = %2242
  %2249 = icmp samesign ult i64 %2145, 16777216
  br i1 %2249, label %2257, label %2250

2250:                                             ; preds = %2248
  %2251 = lshr i64 %2145, 24
  %2252 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2251
  %2253 = load i32, ptr %2252, align 4, !tbaa !5
  %2254 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2253, i32 24), !nosanitize !10
  %2255 = extractvalue { i32, i1 } %2254, 0, !nosanitize !10
  %2256 = extractvalue { i32, i1 } %2254, 1, !nosanitize !10
  br i1 %2256, label %2703, label %2629, !prof !11, !nosanitize !10

2257:                                             ; preds = %2248
  %2258 = lshr i64 %2145, 16
  %2259 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2258
  %2260 = load i32, ptr %2259, align 4, !tbaa !5
  %2261 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2260, i32 16), !nosanitize !10
  %2262 = extractvalue { i32, i1 } %2261, 0, !nosanitize !10
  %2263 = extractvalue { i32, i1 } %2261, 1, !nosanitize !10
  br i1 %2263, label %2703, label %2629, !prof !11, !nosanitize !10

2264:                                             ; preds = %2242
  %2265 = icmp samesign ult i64 %2145, 256
  br i1 %2265, label %2273, label %2266

2266:                                             ; preds = %2264
  %2267 = lshr i64 %2145, 8
  %2268 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2267
  %2269 = load i32, ptr %2268, align 4, !tbaa !5
  %2270 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2269, i32 8), !nosanitize !10
  %2271 = extractvalue { i32, i1 } %2270, 0, !nosanitize !10
  %2272 = extractvalue { i32, i1 } %2270, 1, !nosanitize !10
  br i1 %2272, label %2703, label %2629, !prof !11, !nosanitize !10

2273:                                             ; preds = %2264
  %2274 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2144
  %2275 = load i32, ptr %2274, align 4, !tbaa !5
  br label %2629

2276:                                             ; preds = %2140
  %2277 = icmp sgt i64 %2147, 1
  br i1 %2277, label %2329, label %2278

2278:                                             ; preds = %2276
  %2279 = icmp sgt i64 %2145, 1
  br i1 %2279, label %2297, label %2280

2280:                                             ; preds = %2278
  %2281 = icmp sgt i32 %2141, -1
  br i1 %2281, label %2282, label %2713

2282:                                             ; preds = %2280
  %2283 = icmp eq i32 %2141, 0
  br i1 %2283, label %2612, label %2284

2284:                                             ; preds = %2282
  %2285 = add nsw i32 %2141, -1
  %2286 = zext nneg i32 %2285 to i64
  %2287 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2286
  %2288 = load ptr, ptr %2287, align 16, !tbaa !51
  %2289 = getelementptr inbounds nuw i8, ptr %2287, i64 8
  %2290 = load ptr, ptr %2289, align 8, !tbaa !53
  %2291 = getelementptr inbounds nuw i8, ptr %2287, i64 16
  %2292 = load ptr, ptr %2291, align 16, !tbaa !54
  %2293 = getelementptr inbounds nuw i8, ptr %2287, i64 24
  %2294 = load i32, ptr %2293, align 8, !tbaa !55
  %2295 = getelementptr inbounds nuw i8, ptr %2287, i64 28
  %2296 = load i32, ptr %2295, align 4, !tbaa !56
  br label %2629

2297:                                             ; preds = %2278
  %2298 = icmp samesign ult i64 %2145, 2147483648
  br i1 %2298, label %2299, label %2711

2299:                                             ; preds = %2297
  %2300 = icmp samesign ult i64 %2145, 65536
  br i1 %2300, label %2317, label %2301

2301:                                             ; preds = %2299
  %2302 = icmp samesign ult i64 %2145, 16777216
  br i1 %2302, label %2310, label %2303

2303:                                             ; preds = %2301
  %2304 = lshr i64 %2145, 24
  %2305 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2304
  %2306 = load i32, ptr %2305, align 4, !tbaa !5
  %2307 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2306, i32 24), !nosanitize !10
  %2308 = extractvalue { i32, i1 } %2307, 0, !nosanitize !10
  %2309 = extractvalue { i32, i1 } %2307, 1, !nosanitize !10
  br i1 %2309, label %2712, label %2629, !prof !11, !nosanitize !10

2310:                                             ; preds = %2301
  %2311 = lshr i64 %2145, 16
  %2312 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2311
  %2313 = load i32, ptr %2312, align 4, !tbaa !5
  %2314 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2313, i32 16), !nosanitize !10
  %2315 = extractvalue { i32, i1 } %2314, 0, !nosanitize !10
  %2316 = extractvalue { i32, i1 } %2314, 1, !nosanitize !10
  br i1 %2316, label %2712, label %2629, !prof !11, !nosanitize !10

2317:                                             ; preds = %2299
  %2318 = icmp samesign ult i64 %2145, 256
  br i1 %2318, label %2326, label %2319

2319:                                             ; preds = %2317
  %2320 = lshr i64 %2145, 8
  %2321 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2320
  %2322 = load i32, ptr %2321, align 4, !tbaa !5
  %2323 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2322, i32 8), !nosanitize !10
  %2324 = extractvalue { i32, i1 } %2323, 0, !nosanitize !10
  %2325 = extractvalue { i32, i1 } %2323, 1, !nosanitize !10
  br i1 %2325, label %2712, label %2629, !prof !11, !nosanitize !10

2326:                                             ; preds = %2317
  %2327 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2144
  %2328 = load i32, ptr %2327, align 4, !tbaa !5
  br label %2629

2329:                                             ; preds = %2276
  %2330 = icmp slt i32 %2141, 64
  br i1 %2330, label %2331, label %2707

2331:                                             ; preds = %2329
  %2332 = sext i32 %2141 to i64
  %2333 = getelementptr inbounds [32 x i8], ptr %6, i64 %2332
  store ptr %904, ptr %2333, align 16, !tbaa !51
  %2334 = getelementptr inbounds nuw i8, ptr %2333, i64 8
  store ptr %903, ptr %2334, align 8, !tbaa !53
  %2335 = getelementptr inbounds nuw i8, ptr %2333, i64 16
  store ptr %2084, ptr %2335, align 16, !tbaa !54
  %2336 = add nsw i64 %2145, 2147483648
  %2337 = icmp ult i64 %2336, 4294967296
  br i1 %2337, label %2338, label %2708

2338:                                             ; preds = %2331
  %2339 = icmp ult i64 %2145, 65536
  br i1 %2339, label %2357, label %2340

2340:                                             ; preds = %2338
  %2341 = icmp ult i64 %2145, 16777216
  br i1 %2341, label %2350, label %2342

2342:                                             ; preds = %2340
  %2343 = lshr i64 %2145, 24
  %2344 = and i64 %2343, 255
  %2345 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2344
  %2346 = load i32, ptr %2345, align 4, !tbaa !5
  %2347 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2346, i32 24), !nosanitize !10
  %2348 = extractvalue { i32, i1 } %2347, 0, !nosanitize !10
  %2349 = extractvalue { i32, i1 } %2347, 1, !nosanitize !10
  br i1 %2349, label %2709, label %2369, !prof !11, !nosanitize !10

2350:                                             ; preds = %2340
  %2351 = lshr i64 %2145, 16
  %2352 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2351
  %2353 = load i32, ptr %2352, align 4, !tbaa !5
  %2354 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2353, i32 16), !nosanitize !10
  %2355 = extractvalue { i32, i1 } %2354, 0, !nosanitize !10
  %2356 = extractvalue { i32, i1 } %2354, 1, !nosanitize !10
  br i1 %2356, label %2709, label %2369, !prof !11, !nosanitize !10

2357:                                             ; preds = %2338
  %2358 = icmp samesign ult i64 %2145, 256
  br i1 %2358, label %2366, label %2359

2359:                                             ; preds = %2357
  %2360 = lshr i64 %2145, 8
  %2361 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2360
  %2362 = load i32, ptr %2361, align 4, !tbaa !5
  %2363 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2362, i32 8), !nosanitize !10
  %2364 = extractvalue { i32, i1 } %2363, 0, !nosanitize !10
  %2365 = extractvalue { i32, i1 } %2363, 1, !nosanitize !10
  br i1 %2365, label %2709, label %2369, !prof !11, !nosanitize !10

2366:                                             ; preds = %2357
  %2367 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2144
  %2368 = load i32, ptr %2367, align 4, !tbaa !5
  br label %2369

2369:                                             ; preds = %2366, %2359, %2350, %2342
  %2370 = phi i32 [ %2348, %2342 ], [ %2355, %2350 ], [ %2364, %2359 ], [ %2368, %2366 ]
  %2371 = getelementptr inbounds nuw i8, ptr %2333, i64 24
  store i32 %2370, ptr %2371, align 8, !tbaa !55
  %2372 = add nsw i32 %2141, 1
  %2373 = getelementptr inbounds nuw i8, ptr %2333, i64 28
  store i32 %2142, ptr %2373, align 4, !tbaa !56
  %2374 = icmp samesign ult i64 %2147, 65536
  br i1 %2374, label %2391, label %2375

2375:                                             ; preds = %2369
  %2376 = icmp samesign ult i64 %2147, 16777216
  br i1 %2376, label %2384, label %2377

2377:                                             ; preds = %2375
  %2378 = lshr i64 %2147, 24
  %2379 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2378
  %2380 = load i32, ptr %2379, align 4, !tbaa !5
  %2381 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2380, i32 24), !nosanitize !10
  %2382 = extractvalue { i32, i1 } %2381, 0, !nosanitize !10
  %2383 = extractvalue { i32, i1 } %2381, 1, !nosanitize !10
  br i1 %2383, label %2710, label %2629, !prof !11, !nosanitize !10

2384:                                             ; preds = %2375
  %2385 = lshr i64 %2147, 16
  %2386 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2385
  %2387 = load i32, ptr %2386, align 4, !tbaa !5
  %2388 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2387, i32 16), !nosanitize !10
  %2389 = extractvalue { i32, i1 } %2388, 0, !nosanitize !10
  %2390 = extractvalue { i32, i1 } %2388, 1, !nosanitize !10
  br i1 %2390, label %2710, label %2629, !prof !11, !nosanitize !10

2391:                                             ; preds = %2369
  %2392 = icmp samesign ult i64 %2147, 256
  br i1 %2392, label %2400, label %2393

2393:                                             ; preds = %2391
  %2394 = lshr i64 %2147, 8
  %2395 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2394
  %2396 = load i32, ptr %2395, align 4, !tbaa !5
  %2397 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2396, i32 8), !nosanitize !10
  %2398 = extractvalue { i32, i1 } %2397, 0, !nosanitize !10
  %2399 = extractvalue { i32, i1 } %2397, 1, !nosanitize !10
  br i1 %2399, label %2710, label %2629, !prof !11, !nosanitize !10

2400:                                             ; preds = %2391
  %2401 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2146
  %2402 = load i32, ptr %2401, align 4, !tbaa !5
  br label %2629

2403:                                             ; preds = %1833, %.loopexit262
  %2404 = load i32, ptr %903, align 4, !tbaa !5
  %2405 = icmp sgt i32 %2404, -1
  br i1 %2405, label %.preheader239, label %2423

.preheader239:                                    ; preds = %2403, %2419
  %2406 = phi i32 [ %2420, %2419 ], [ %2404, %2403 ]
  %2407 = phi ptr [ %2417, %2419 ], [ %903, %2403 ]
  %2408 = ptrtoint ptr %2407 to i64
  %2409 = sub i64 %2408, %826
  %2410 = ashr exact i64 %2409, 2
  %2411 = add nsw i64 %2410, 2147483648
  %2412 = icmp ult i64 %2411, 4294967296
  br i1 %2412, label %2413, label %2724

2413:                                             ; preds = %.preheader239
  %2414 = trunc nsw i64 %2410 to i32
  %2415 = zext nneg i32 %2406 to i64
  %2416 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2415
  store i32 %2414, ptr %2416, align 4, !tbaa !5
  %2417 = getelementptr inbounds nuw i8, ptr %2407, i64 4
  %2418 = icmp ult ptr %2417, %902
  br i1 %2418, label %2419, label %2422

2419:                                             ; preds = %2413
  %2420 = load i32, ptr %2417, align 4, !tbaa !5
  %2421 = icmp sgt i32 %2420, -1
  br i1 %2421, label %.preheader239, label %2422, !llvm.loop !74

2422:                                             ; preds = %2419, %2413
  store ptr %2417, ptr %7, align 8
  br label %2423

2423:                                             ; preds = %2422, %2403
  %2424 = phi ptr [ %903, %2403 ], [ %2417, %2422 ]
  %2425 = icmp ult ptr %2424, %902
  br i1 %2425, label %2443, label %2426

2426:                                             ; preds = %2423
  %2427 = icmp sgt i32 %906, -1
  br i1 %2427, label %2428, label %2734

2428:                                             ; preds = %2426
  %2429 = icmp eq i32 %906, 0
  br i1 %2429, label %2612, label %2430

2430:                                             ; preds = %2428
  %2431 = add nsw i32 %906, -1
  %2432 = zext nneg i32 %2431 to i64
  %2433 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2432
  %2434 = load ptr, ptr %2433, align 16, !tbaa !51
  %2435 = getelementptr inbounds nuw i8, ptr %2433, i64 8
  %2436 = load ptr, ptr %2435, align 8, !tbaa !53
  %2437 = getelementptr inbounds nuw i8, ptr %2433, i64 16
  %2438 = load ptr, ptr %2437, align 16, !tbaa !54
  %2439 = getelementptr inbounds nuw i8, ptr %2433, i64 24
  %2440 = load i32, ptr %2439, align 8, !tbaa !55
  %2441 = getelementptr inbounds nuw i8, ptr %2433, i64 28
  %2442 = load i32, ptr %2441, align 4, !tbaa !56
  br label %2629

2443:                                             ; preds = %2423
  %2444 = load i32, ptr %2424, align 4, !tbaa !5
  br label %2445

2445:                                             ; preds = %2445, %2443
  %2446 = phi i32 [ %2450, %2445 ], [ %2444, %2443 ]
  %2447 = phi ptr [ %2449, %2445 ], [ %2424, %2443 ]
  %2448 = xor i32 %2446, -1
  store i32 %2448, ptr %2447, align 4, !tbaa !5
  %2449 = getelementptr inbounds nuw i8, ptr %2447, i64 4
  %2450 = load i32, ptr %2449, align 4, !tbaa !5
  %2451 = icmp slt i32 %2450, 0
  br i1 %2451, label %2445, label %2452, !llvm.loop !75

2452:                                             ; preds = %2445
  %2453 = zext nneg i32 %2450 to i64
  %2454 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2453
  %2455 = load i32, ptr %2454, align 4, !tbaa !5
  %2456 = getelementptr inbounds nuw [4 x i8], ptr %904, i64 %2453
  %2457 = load i32, ptr %2456, align 4, !tbaa !5
  %2458 = icmp eq i32 %2455, %2457
  br i1 %2458, label %2502, label %2459

2459:                                             ; preds = %2452
  %2460 = ptrtoint ptr %2449 to i64
  %2461 = ptrtoint ptr %2424 to i64
  %2462 = sub i64 %2460, %2461
  %2463 = ashr exact i64 %2462, 2
  %2464 = add nsw i64 %2463, 2147483649
  %2465 = icmp ult i64 %2464, 4294967296
  br i1 %2465, label %2466, label %2725

2466:                                             ; preds = %2459
  %2467 = trunc i64 %2463 to i32
  %2468 = add i32 %2467, 1
  %2469 = icmp ult i32 %2468, 65536
  br i1 %2469, label %2488, label %2470

2470:                                             ; preds = %2466
  %2471 = icmp ult i32 %2468, 16777216
  br i1 %2471, label %2480, label %2472

2472:                                             ; preds = %2470
  %2473 = lshr i32 %2468, 24
  %2474 = zext nneg i32 %2473 to i64
  %2475 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2474
  %2476 = load i32, ptr %2475, align 4, !tbaa !5
  %2477 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2476, i32 24), !nosanitize !10
  %2478 = extractvalue { i32, i1 } %2477, 0, !nosanitize !10
  %2479 = extractvalue { i32, i1 } %2477, 1, !nosanitize !10
  br i1 %2479, label %2726, label %2502, !prof !11, !nosanitize !10

2480:                                             ; preds = %2470
  %2481 = lshr i32 %2468, 16
  %2482 = zext nneg i32 %2481 to i64
  %2483 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2482
  %2484 = load i32, ptr %2483, align 4, !tbaa !5
  %2485 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2484, i32 16), !nosanitize !10
  %2486 = extractvalue { i32, i1 } %2485, 0, !nosanitize !10
  %2487 = extractvalue { i32, i1 } %2485, 1, !nosanitize !10
  br i1 %2487, label %2726, label %2502, !prof !11, !nosanitize !10

2488:                                             ; preds = %2466
  %2489 = icmp samesign ult i32 %2468, 256
  br i1 %2489, label %2498, label %2490

2490:                                             ; preds = %2488
  %2491 = lshr i32 %2468, 8
  %2492 = zext nneg i32 %2491 to i64
  %2493 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2492
  %2494 = load i32, ptr %2493, align 4, !tbaa !5
  %2495 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2494, i32 8), !nosanitize !10
  %2496 = extractvalue { i32, i1 } %2495, 0, !nosanitize !10
  %2497 = extractvalue { i32, i1 } %2495, 1, !nosanitize !10
  br i1 %2497, label %2726, label %2502, !prof !11, !nosanitize !10

2498:                                             ; preds = %2488
  %2499 = zext nneg i32 %2468 to i64
  %2500 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2499
  %2501 = load i32, ptr %2500, align 4, !tbaa !5
  br label %2502

2502:                                             ; preds = %2498, %2490, %2480, %2472, %2452
  %2503 = phi i32 [ -1, %2452 ], [ %2478, %2472 ], [ %2486, %2480 ], [ %2496, %2490 ], [ %2501, %2498 ]
  %2504 = getelementptr inbounds nuw i8, ptr %2447, i64 8
  store ptr %2504, ptr %7, align 8, !tbaa !46
  %2505 = icmp ult ptr %2504, %902
  %2506 = ptrtoint ptr %2504 to i64
  br i1 %2505, label %2507, label %2523

2507:                                             ; preds = %2502
  %2508 = sub i64 %2506, %826
  %2509 = ashr exact i64 %2508, 2
  %2510 = add nsw i64 %2509, 2147483647
  %2511 = icmp ult i64 %2510, 4294967296
  br i1 %2511, label %2512, label %2727

2512:                                             ; preds = %2507
  %2513 = trunc i64 %2509 to i32
  %2514 = add i32 %2513, -1
  %2515 = icmp ult ptr %2424, %2504
  br i1 %2515, label %.preheader237, label %.loopexit238

.preheader237:                                    ; preds = %2512, %.preheader237
  %2516 = phi ptr [ %2520, %.preheader237 ], [ %2424, %2512 ]
  %2517 = load i32, ptr %2516, align 4, !tbaa !5
  %2518 = sext i32 %2517 to i64
  %2519 = getelementptr inbounds [4 x i8], ptr %138, i64 %2518
  store i32 %2514, ptr %2519, align 4, !tbaa !5
  %2520 = getelementptr inbounds nuw i8, ptr %2516, i64 4
  %2521 = icmp ult ptr %2520, %2504
  br i1 %2521, label %.preheader237, label %.loopexit238, !llvm.loop !76

.loopexit238:                                     ; preds = %.preheader237, %2512
  %2522 = phi ptr [ %2424, %2512 ], [ %2520, %.preheader237 ]
  store ptr %2522, ptr %8, align 8
  br label %2523

2523:                                             ; preds = %.loopexit238, %2502
  %2524 = ptrtoint ptr %2424 to i64
  %2525 = sub i64 %2506, %2524
  %2526 = ashr exact i64 %2525, 2
  %2527 = add nsw i64 %2526, 2147483648
  %2528 = icmp ult i64 %2527, 4294967296
  br i1 %2528, label %2529, label %2728

2529:                                             ; preds = %2523
  %2530 = trunc nsw i64 %2526 to i32
  %2531 = icmp slt i32 %899, %2530
  br i1 %2531, label %2535, label %2532

2532:                                             ; preds = %2529
  %2533 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %899, i32 %2530), !nosanitize !10
  %2534 = extractvalue { i32, i1 } %2533, 1, !nosanitize !10
  br i1 %2534, label %2729, label %2549, !prof !11, !nosanitize !10

2535:                                             ; preds = %2529
  %2536 = icmp eq i32 %900, 0
  br i1 %2536, label %2582, label %2537

2537:                                             ; preds = %2535
  %2538 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 range(i32 1, -2147483648) %78, i32 %2530), !nosanitize !10
  %2539 = extractvalue { i32, i1 } %2538, 1, !nosanitize !10
  br i1 %2539, label %2729, label %2540, !prof !11, !nosanitize !10

2540:                                             ; preds = %2537
  %2541 = extractvalue { i32, i1 } %2538, 0, !nosanitize !10
  %2542 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %899, i32 %2541), !nosanitize !10
  %2543 = extractvalue { i32, i1 } %2542, 1, !nosanitize !10
  br i1 %2543, label %2730, label %2544, !prof !11, !nosanitize !10

2544:                                             ; preds = %2540
  %2545 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %900, i32 -1)
  %2546 = extractvalue { i32, i1 } %2545, 1, !nosanitize !10
  br i1 %2546, label %2729, label %2547, !prof !11, !nosanitize !10

2547:                                             ; preds = %2544
  %2548 = extractvalue { i32, i1 } %2545, 0, !nosanitize !10
  br label %2549

2549:                                             ; preds = %2547, %2532
  %2550 = phi { i32, i1 } [ %2542, %2547 ], [ %2533, %2532 ]
  %2551 = phi i32 [ %2548, %2547 ], [ %900, %2532 ]
  %2552 = extractvalue { i32, i1 } %2550, 0
  %2553 = ptrtoint ptr %902 to i64
  %2554 = sub i64 %2553, %2506
  %2555 = icmp sgt i64 %2525, %2554
  br i1 %2555, label %2567, label %2556

2556:                                             ; preds = %2549
  %2557 = icmp slt i32 %906, 64
  br i1 %2557, label %2558, label %2731

2558:                                             ; preds = %2556
  %2559 = sext i32 %906 to i64
  %2560 = getelementptr inbounds [32 x i8], ptr %6, i64 %2559
  store ptr %904, ptr %2560, align 16, !tbaa !51
  %2561 = getelementptr inbounds nuw i8, ptr %2560, i64 8
  store ptr %2504, ptr %2561, align 8, !tbaa !53
  %2562 = getelementptr inbounds nuw i8, ptr %2560, i64 16
  store ptr %902, ptr %2562, align 16, !tbaa !54
  %2563 = getelementptr inbounds nuw i8, ptr %2560, i64 24
  store i32 -3, ptr %2563, align 8, !tbaa !55
  %2564 = add nsw i32 %906, 1
  %2565 = getelementptr inbounds nuw i8, ptr %2560, i64 28
  store i32 %907, ptr %2565, align 4, !tbaa !56
  %2566 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  br label %2629

2567:                                             ; preds = %2549
  %2568 = icmp sgt i64 %2554, 4
  br i1 %2568, label %2571, label %2569

2569:                                             ; preds = %2567
  %2570 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  br label %2629

2571:                                             ; preds = %2567
  %2572 = icmp slt i32 %906, 64
  br i1 %2572, label %2573, label %2732

2573:                                             ; preds = %2571
  %2574 = getelementptr inbounds [4 x i8], ptr %904, i64 %838
  %2575 = sext i32 %906 to i64
  %2576 = getelementptr inbounds [32 x i8], ptr %6, i64 %2575
  store ptr %2574, ptr %2576, align 16, !tbaa !51
  %2577 = getelementptr inbounds nuw i8, ptr %2576, i64 8
  store ptr %2424, ptr %2577, align 8, !tbaa !53
  %2578 = getelementptr inbounds nuw i8, ptr %2576, i64 16
  store ptr %2504, ptr %2578, align 16, !tbaa !54
  %2579 = getelementptr inbounds nuw i8, ptr %2576, i64 24
  store i32 %2503, ptr %2579, align 8, !tbaa !55
  %2580 = add nsw i32 %906, 1
  %2581 = getelementptr inbounds nuw i8, ptr %2576, i64 28
  store i32 %907, ptr %2581, align 4, !tbaa !56
  br label %2629

2582:                                             ; preds = %2535
  %2583 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %898, i32 %2530), !nosanitize !10
  %2584 = extractvalue { i32, i1 } %2583, 1, !nosanitize !10
  br i1 %2584, label %2730, label %2585, !prof !11, !nosanitize !10

2585:                                             ; preds = %2582
  %2586 = extractvalue { i32, i1 } %2583, 0, !nosanitize !10
  %2587 = icmp sgt i32 %907, -1
  br i1 %2587, label %2588, label %2591

2588:                                             ; preds = %2585
  %2589 = zext nneg i32 %907 to i64
  %.split222 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2589
  %2590 = getelementptr inbounds nuw i8, ptr %.split222, i64 24
  store i32 -1, ptr %2590, align 8, !tbaa !55
  br label %2591

2591:                                             ; preds = %2588, %2585
  %2592 = ptrtoint ptr %902 to i64
  %2593 = sub i64 %2592, %2506
  %2594 = icmp sgt i64 %2593, 4
  br i1 %2594, label %2629, label %2595

2595:                                             ; preds = %2591
  %2596 = icmp sgt i32 %906, -1
  br i1 %2596, label %2597, label %2733

2597:                                             ; preds = %2595
  %2598 = icmp eq i32 %906, 0
  br i1 %2598, label %2612, label %2599

2599:                                             ; preds = %2597
  %2600 = add nsw i32 %906, -1
  %2601 = zext nneg i32 %2600 to i64
  %2602 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2601
  %2603 = load ptr, ptr %2602, align 16, !tbaa !51
  %2604 = getelementptr inbounds nuw i8, ptr %2602, i64 8
  %2605 = load ptr, ptr %2604, align 8, !tbaa !53
  %2606 = getelementptr inbounds nuw i8, ptr %2602, i64 16
  %2607 = load ptr, ptr %2606, align 16, !tbaa !54
  %2608 = getelementptr inbounds nuw i8, ptr %2602, i64 24
  %2609 = load i32, ptr %2608, align 8, !tbaa !55
  %2610 = getelementptr inbounds nuw i8, ptr %2602, i64 28
  %2611 = load i32, ptr %2610, align 4, !tbaa !56
  br label %2629

2612:                                             ; preds = %2597, %2428, %2282, %2155, %2059, %1598, %1511, %1480
  %2613 = phi i32 [ 0, %2597 ], [ %900, %2428 ], [ %900, %2282 ], [ %900, %2155 ], [ %900, %2059 ], [ 0, %1598 ], [ %900, %1511 ], [ %900, %1480 ]
  %2614 = phi i32 [ %2586, %2597 ], [ %898, %2428 ], [ %898, %2282 ], [ %898, %2155 ], [ %898, %2059 ], [ %1591, %1598 ], [ %1461, %1511 ], [ %1461, %1480 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %2615 = icmp eq i32 %2614, 0
  br i1 %2615, label %2622, label %2616

2616:                                             ; preds = %2612
  %2617 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %845, i32 %2614), !nosanitize !10
  %2618 = extractvalue { i32, i1 } %2617, 1, !nosanitize !10
  br i1 %2618, label %.loopexit270, label %2619, !prof !11, !nosanitize !10

2619:                                             ; preds = %2616
  %2620 = extractvalue { i32, i1 } %2617, 0, !nosanitize !10
  %2621 = icmp ult ptr %857, %138
  br i1 %2621, label %2654, label %.loopexit271, !llvm.loop !77

2622:                                             ; preds = %2612
  %2623 = sub i64 %859, %858
  %2624 = ashr exact i64 %2623, 2
  %2625 = add nsw i64 %2624, 2147483648
  %2626 = icmp ult i64 %2625, 4294967296
  br i1 %2626, label %2627, label %2771

2627:                                             ; preds = %2622
  %2628 = trunc nsw i64 %2624 to i32
  br label %2648

2629:                                             ; preds = %2599, %2591, %2573, %2569, %2558, %2430, %2400, %2393, %2384, %2377, %2326, %2319, %2310, %2303, %2284, %2273, %2266, %2257, %2250, %2199, %2192, %2183, %2176, %2157, %2061, %1600, %1584, %1528, %1513, %1507, %1497, %1482, %1476, %1447, %1429, %1411, %1398, %1378, %1374, %1360, %1342, %1324, %1311, %1291, %1287
  %2630 = phi i32 [ %2586, %2591 ], [ %2586, %2599 ], [ %898, %2573 ], [ %898, %2569 ], [ %898, %2558 ], [ %898, %2430 ], [ %898, %2400 ], [ %898, %2393 ], [ %898, %2384 ], [ %898, %2377 ], [ %898, %2326 ], [ %898, %2319 ], [ %898, %2310 ], [ %898, %2303 ], [ %898, %2284 ], [ %898, %2273 ], [ %898, %2266 ], [ %898, %2257 ], [ %898, %2250 ], [ %898, %2199 ], [ %898, %2192 ], [ %898, %2183 ], [ %898, %2176 ], [ %898, %2157 ], [ %898, %2061 ], [ %1591, %1600 ], [ %898, %1584 ], [ %1461, %1528 ], [ %1461, %1507 ], [ %1461, %1513 ], [ %1461, %1497 ], [ %1461, %1476 ], [ %1461, %1482 ], [ %898, %1447 ], [ %898, %1429 ], [ %898, %1411 ], [ %898, %1398 ], [ %898, %1378 ], [ %898, %1374 ], [ %898, %1360 ], [ %898, %1342 ], [ %898, %1324 ], [ %898, %1311 ], [ %898, %1291 ], [ %898, %1287 ]
  %2631 = phi i32 [ %899, %2591 ], [ %899, %2599 ], [ %2552, %2573 ], [ %2552, %2569 ], [ %2552, %2558 ], [ %899, %2430 ], [ %899, %2400 ], [ %899, %2393 ], [ %899, %2384 ], [ %899, %2377 ], [ %899, %2326 ], [ %899, %2319 ], [ %899, %2310 ], [ %899, %2303 ], [ %899, %2284 ], [ %899, %2273 ], [ %899, %2266 ], [ %899, %2257 ], [ %899, %2250 ], [ %899, %2199 ], [ %899, %2192 ], [ %899, %2183 ], [ %899, %2176 ], [ %899, %2157 ], [ %899, %2061 ], [ %899, %1600 ], [ %1553, %1584 ], [ %899, %1528 ], [ %899, %1507 ], [ %899, %1513 ], [ %899, %1497 ], [ %899, %1476 ], [ %899, %1482 ], [ %1274, %1447 ], [ %1274, %1429 ], [ %1274, %1411 ], [ %1274, %1398 ], [ %1274, %1378 ], [ %1274, %1374 ], [ %1274, %1360 ], [ %1274, %1342 ], [ %1274, %1324 ], [ %1274, %1311 ], [ %1274, %1291 ], [ %1274, %1287 ]
  %2632 = phi i32 [ 0, %2591 ], [ 0, %2599 ], [ %2551, %2573 ], [ %2551, %2569 ], [ %2551, %2558 ], [ %900, %2430 ], [ %900, %2400 ], [ %900, %2393 ], [ %900, %2384 ], [ %900, %2377 ], [ %900, %2326 ], [ %900, %2319 ], [ %900, %2310 ], [ %900, %2303 ], [ %900, %2284 ], [ %900, %2273 ], [ %900, %2266 ], [ %900, %2257 ], [ %900, %2250 ], [ %900, %2199 ], [ %900, %2192 ], [ %900, %2183 ], [ %900, %2176 ], [ %900, %2157 ], [ %900, %2061 ], [ 0, %1600 ], [ %1554, %1584 ], [ %900, %1528 ], [ %900, %1507 ], [ %900, %1513 ], [ %900, %1497 ], [ %900, %1476 ], [ %900, %1482 ], [ %1275, %1447 ], [ %1275, %1429 ], [ %1275, %1411 ], [ %1275, %1398 ], [ %1275, %1378 ], [ %1275, %1374 ], [ %1275, %1360 ], [ %1275, %1342 ], [ %1275, %1324 ], [ %1275, %1311 ], [ %1275, %1291 ], [ %1275, %1287 ]
  %2633 = phi ptr [ %902, %2591 ], [ %2607, %2599 ], [ %902, %2573 ], [ %2504, %2569 ], [ %2504, %2558 ], [ %2438, %2430 ], [ %902, %2400 ], [ %902, %2393 ], [ %902, %2384 ], [ %902, %2377 ], [ %2084, %2326 ], [ %2084, %2319 ], [ %2084, %2310 ], [ %2084, %2303 ], [ %2292, %2284 ], [ %2084, %2273 ], [ %2084, %2266 ], [ %2084, %2257 ], [ %2084, %2250 ], [ %902, %2199 ], [ %902, %2192 ], [ %902, %2183 ], [ %902, %2176 ], [ %2165, %2157 ], [ %2069, %2061 ], [ %1608, %1600 ], [ %902, %1584 ], [ %902, %1528 ], [ %1175, %1507 ], [ %1521, %1513 ], [ %1175, %1497 ], [ %902, %1476 ], [ %1490, %1482 ], [ %1174, %1447 ], [ %902, %1429 ], [ %1174, %1411 ], [ %902, %1398 ], [ %1175, %1378 ], [ %1174, %1374 ], [ %1174, %1360 ], [ %1175, %1342 ], [ %1174, %1324 ], [ %1175, %1311 ], [ %902, %1291 ], [ %1174, %1287 ]
  %2634 = phi ptr [ %2504, %2591 ], [ %2605, %2599 ], [ %2504, %2573 ], [ %2424, %2569 ], [ %2424, %2558 ], [ %2436, %2430 ], [ %2102, %2400 ], [ %2102, %2393 ], [ %2102, %2384 ], [ %2102, %2377 ], [ %903, %2326 ], [ %903, %2319 ], [ %903, %2310 ], [ %903, %2303 ], [ %2290, %2284 ], [ %903, %2273 ], [ %903, %2266 ], [ %903, %2257 ], [ %903, %2250 ], [ %2102, %2199 ], [ %2102, %2192 ], [ %2102, %2183 ], [ %2102, %2176 ], [ %2163, %2157 ], [ %2067, %2061 ], [ %1606, %1600 ], [ %903, %1584 ], [ %1174, %1528 ], [ %903, %1507 ], [ %1519, %1513 ], [ %903, %1497 ], [ %1174, %1476 ], [ %1488, %1482 ], [ %1175, %1447 ], [ %1174, %1429 ], [ %1175, %1411 ], [ %1174, %1398 ], [ %903, %1378 ], [ %1175, %1374 ], [ %1175, %1360 ], [ %903, %1342 ], [ %1175, %1324 ], [ %903, %1311 ], [ %1174, %1291 ], [ %1175, %1287 ]
  %2635 = phi ptr [ %904, %2591 ], [ %2603, %2599 ], [ %904, %2573 ], [ %2570, %2569 ], [ %2566, %2558 ], [ %2434, %2430 ], [ %904, %2400 ], [ %904, %2393 ], [ %904, %2384 ], [ %904, %2377 ], [ %904, %2326 ], [ %904, %2319 ], [ %904, %2310 ], [ %904, %2303 ], [ %2288, %2284 ], [ %904, %2273 ], [ %904, %2266 ], [ %904, %2257 ], [ %904, %2250 ], [ %904, %2199 ], [ %904, %2192 ], [ %904, %2183 ], [ %904, %2176 ], [ %2161, %2157 ], [ %2065, %2061 ], [ %1604, %1600 ], [ %1586, %1584 ], [ %904, %1528 ], [ %904, %1507 ], [ %1517, %1513 ], [ %904, %1497 ], [ %904, %1476 ], [ %1486, %1482 ], [ %1454, %1447 ], [ %904, %1429 ], [ %1419, %1411 ], [ %904, %1398 ], [ %904, %1378 ], [ %1375, %1374 ], [ %1367, %1360 ], [ %904, %1342 ], [ %1332, %1324 ], [ %904, %1311 ], [ %904, %1291 ], [ %1288, %1287 ]
  %2636 = phi i32 [ -3, %2591 ], [ %2609, %2599 ], [ -3, %2573 ], [ %2503, %2569 ], [ %2503, %2558 ], [ %2440, %2430 ], [ %2402, %2400 ], [ %2398, %2393 ], [ %2389, %2384 ], [ %2382, %2377 ], [ %2328, %2326 ], [ %2324, %2319 ], [ %2315, %2310 ], [ %2308, %2303 ], [ %2294, %2284 ], [ %2275, %2273 ], [ %2271, %2266 ], [ %2262, %2257 ], [ %2255, %2250 ], [ %2201, %2199 ], [ %2197, %2192 ], [ %2188, %2183 ], [ %2181, %2176 ], [ %2167, %2157 ], [ %2071, %2061 ], [ %1610, %1600 ], [ %1585, %1584 ], [ %932, %1528 ], [ %932, %1507 ], [ %1523, %1513 ], [ %932, %1497 ], [ %932, %1476 ], [ %1492, %1482 ], [ %1222, %1447 ], [ %932, %1429 ], [ %1222, %1411 ], [ %932, %1398 ], [ %932, %1378 ], [ %1222, %1374 ], [ %1222, %1360 ], [ %932, %1342 ], [ %1222, %1324 ], [ %932, %1311 ], [ %932, %1291 ], [ %1222, %1287 ]
  %2637 = phi i32 [ %906, %2591 ], [ %2600, %2599 ], [ %2580, %2573 ], [ %906, %2569 ], [ %2564, %2558 ], [ %2431, %2430 ], [ %2372, %2400 ], [ %2372, %2393 ], [ %2372, %2384 ], [ %2372, %2377 ], [ %2141, %2326 ], [ %2141, %2319 ], [ %2141, %2310 ], [ %2141, %2303 ], [ %2285, %2284 ], [ %2245, %2273 ], [ %2245, %2266 ], [ %2245, %2257 ], [ %2245, %2250 ], [ %2141, %2199 ], [ %2141, %2192 ], [ %2141, %2183 ], [ %2141, %2176 ], [ %2158, %2157 ], [ %2062, %2061 ], [ %1601, %1600 ], [ %906, %1584 ], [ %1534, %1528 ], [ %906, %1507 ], [ %1514, %1513 ], [ %1503, %1497 ], [ %906, %1476 ], [ %1483, %1482 ], [ %1452, %1447 ], [ %1435, %1429 ], [ %1417, %1411 ], [ %1403, %1398 ], [ %1385, %1378 ], [ %906, %1374 ], [ %1365, %1360 ], [ %1348, %1342 ], [ %1330, %1324 ], [ %1316, %1311 ], [ %1298, %1291 ], [ %906, %1287 ]
  %2638 = phi i32 [ %907, %2591 ], [ %2611, %2599 ], [ %907, %2573 ], [ %907, %2569 ], [ %907, %2558 ], [ %2442, %2430 ], [ %2142, %2400 ], [ %2142, %2393 ], [ %2142, %2384 ], [ %2142, %2377 ], [ %2142, %2326 ], [ %2142, %2319 ], [ %2142, %2310 ], [ %2142, %2303 ], [ %2296, %2284 ], [ %2142, %2273 ], [ %2142, %2266 ], [ %2142, %2257 ], [ %2142, %2250 ], [ %2142, %2199 ], [ %2142, %2192 ], [ %2142, %2183 ], [ %2142, %2176 ], [ %2169, %2157 ], [ %2073, %2061 ], [ %1612, %1600 ], [ %907, %1584 ], [ %907, %1528 ], [ %907, %1507 ], [ %1525, %1513 ], [ %907, %1497 ], [ %907, %1476 ], [ %1494, %1482 ], [ %907, %1447 ], [ %907, %1429 ], [ %907, %1411 ], [ %907, %1398 ], [ %907, %1378 ], [ %907, %1374 ], [ %907, %1360 ], [ %907, %1342 ], [ %907, %1324 ], [ %907, %1311 ], [ %907, %1291 ], [ %907, %1287 ]
  %2639 = load ptr, ptr %7, align 8
  br label %897

2640:                                             ; preds = %.preheader269
  %2641 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %844, i32 %840), !nosanitize !10
  %2642 = extractvalue { i32, i1 } %2641, 1, !nosanitize !10
  br i1 %2642, label %.loopexit270, label %2643, !prof !11, !nosanitize !10

2643:                                             ; preds = %2640
  %2644 = extractvalue { i32, i1 } %2641, 0, !nosanitize !10
  %2645 = sext i32 %840 to i64
  %2646 = sub nsw i64 0, %2645
  %2647 = getelementptr inbounds nuw [4 x i8], ptr %843, i64 %2646
  br label %2648

2648:                                             ; preds = %2643, %2627, %862
  %2649 = phi i32 [ %841, %2643 ], [ %899, %2627 ], [ %841, %862 ]
  %2650 = phi i32 [ %842, %2643 ], [ %2613, %2627 ], [ %842, %862 ]
  %2651 = phi ptr [ %2647, %2643 ], [ %857, %2627 ], [ %857, %862 ]
  %2652 = phi i32 [ %2644, %2643 ], [ %2628, %2627 ], [ %864, %862 ]
  %2653 = icmp ult ptr %2651, %138
  br i1 %2653, label %2654, label %.loopexit272, !llvm.loop !77

2654:                                             ; preds = %2648, %2619
  %2655 = phi i32 [ %2620, %2619 ], [ %845, %2648 ]
  %2656 = phi i32 [ 0, %2619 ], [ %2652, %2648 ]
  %2657 = phi ptr [ %857, %2619 ], [ %2651, %2648 ]
  %2658 = phi i32 [ %2613, %2619 ], [ %2650, %2648 ]
  %2659 = phi i32 [ %899, %2619 ], [ %2649, %2648 ]
  %2660 = load i32, ptr %2657, align 4, !tbaa !5
  br label %.preheader269

2661:                                             ; preds = %2775
  %2662 = load i32, ptr %2776, align 4, !tbaa !5
  br label %.preheader273

.preheader273:                                    ; preds = %827, %2661
  %2663 = phi i32 [ %2662, %2661 ], [ %828, %827 ]
  %2664 = phi ptr [ %2776, %2661 ], [ %1, %827 ]
  %2665 = phi i32 [ %2777, %2661 ], [ 0, %827 ]
  %2666 = icmp slt i32 %2663, 0
  br i1 %2666, label %2667, label %2675

2667:                                             ; preds = %.preheader273
  %2668 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2665, i32 %2663), !nosanitize !10
  %2669 = extractvalue { i32, i1 } %2668, 1, !nosanitize !10
  br i1 %2669, label %.loopexit270, label %2670, !prof !11, !nosanitize !10

.loopexit270:                                     ; preds = %2667, %2640, %2616
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2670:                                             ; preds = %2667
  %2671 = extractvalue { i32, i1 } %2668, 0, !nosanitize !10
  %2672 = sext i32 %2663 to i64
  %2673 = sub nsw i64 0, %2672
  %2674 = getelementptr inbounds nuw [4 x i8], ptr %2664, i64 %2673
  br label %2775

2675:                                             ; preds = %.preheader273
  %2676 = icmp eq i32 %2665, 0
  br i1 %2676, label %2680, label %2677

2677:                                             ; preds = %2675
  %2678 = sext i32 %2665 to i64
  %2679 = getelementptr inbounds [4 x i8], ptr %2664, i64 %2678
  store i32 %2665, ptr %2679, align 4, !tbaa !5
  br label %2680

2680:                                             ; preds = %2677, %2675
  %2681 = zext nneg i32 %2663 to i64
  %2682 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2681
  %2683 = load i32, ptr %2682, align 4, !tbaa !5
  %2684 = sext i32 %2683 to i64
  %2685 = getelementptr [4 x i8], ptr %824, i64 %2684
  %2686 = ptrtoint ptr %2685 to i64
  %2687 = ptrtoint ptr %2664 to i64
  %2688 = sub i64 %2686, %2687
  %2689 = icmp sgt i64 %2688, 4
  br i1 %2689, label %2690, label %2772

2690:                                             ; preds = %2680
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1183, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2691:                                             ; preds = %865
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1187, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2692:                                             ; preds = %887, %878, %871
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2693:                                             ; preds = %927
  br i1 %929, label %2735, label %2739

2694:                                             ; preds = %1834
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2695:                                             ; preds = %2074
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.src, i32 noundef 1192, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2696:                                             ; preds = %2086
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1196, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2697:                                             ; preds = %2105
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1199, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2698:                                             ; preds = %2123
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1204, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2699:                                             ; preds = %2125
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1205, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2700:                                             ; preds = %2202
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1210, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2701:                                             ; preds = %2204
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1210, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2702:                                             ; preds = %2232, %2223, %2215
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2703:                                             ; preds = %2266, %2257, %2250
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2704:                                             ; preds = %2170
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1213, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2705:                                             ; preds = %2192, %2183, %2176
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2706:                                             ; preds = %2153
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1215, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2707:                                             ; preds = %2329
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2708:                                             ; preds = %2331
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2709:                                             ; preds = %2359, %2350, %2342
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2710:                                             ; preds = %2393, %2384, %2377
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2711:                                             ; preds = %2297
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1222, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2712:                                             ; preds = %2319, %2310, %2303
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2713:                                             ; preds = %2280
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1224, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2714:                                             ; preds = %1985
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1231, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

.loopexit245:                                     ; preds = %.preheader247, %.preheader244
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2715:                                             ; preds = %1991
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1120, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #10
  unreachable

2716:                                             ; preds = %2016
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1124, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #10
  unreachable

2717:                                             ; preds = %2046
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1130, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #10
  unreachable

2718:                                             ; preds = %1853
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1234, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

.loopexit251:                                     ; preds = %.preheader256, %.preheader250
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2719:                                             ; preds = %1859
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1144, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

.loopexit252:                                     ; preds = %1886, %1959
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2720:                                             ; preds = %1896
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1150, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2721:                                             ; preds = %1924
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.src, i32 noundef 1158, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2722:                                             ; preds = %1969
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1167, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2723:                                             ; preds = %.loopexit246
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1236, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2724:                                             ; preds = %.preheader239
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.src, i32 noundef 1241, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2725:                                             ; preds = %2459
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.src, i32 noundef 1246, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2726:                                             ; preds = %2490, %2480, %2472
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2727:                                             ; preds = %2507
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1247, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2728:                                             ; preds = %2523
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1250, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2729:                                             ; preds = %2544, %2537, %2532
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2730:                                             ; preds = %2582, %2540
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2731:                                             ; preds = %2556
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1252, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2732:                                             ; preds = %2571
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1256, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2733:                                             ; preds = %2595
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1267, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2734:                                             ; preds = %2426
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1271, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

.loopexit234:                                     ; preds = %.preheader260, %1816
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2735:                                             ; preds = %2693
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1284, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2736:                                             ; preds = %1778
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

2737:                                             ; preds = %1768
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

2738:                                             ; preds = %1758
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

2739:                                             ; preds = %2693
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1019, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_pivot) #10
  unreachable

2740:                                             ; preds = %1187
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1300, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2741:                                             ; preds = %1211, %1202, %1194
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2742:                                             ; preds = %1221
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1303, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2743:                                             ; preds = %1238
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1304, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2744:                                             ; preds = %1254
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1307, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2745:                                             ; preds = %1267
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2746:                                             ; preds = %1455, %1263
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2747:                                             ; preds = %1300
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1311, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2748:                                             ; preds = %1302
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1312, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2749:                                             ; preds = %1289
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1315, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2750:                                             ; preds = %1333
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1322, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2751:                                             ; preds = %1334
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1323, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2752:                                             ; preds = %1323
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1326, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2753:                                             ; preds = %1350
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1330, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2754:                                             ; preds = %1352
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1331, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2755:                                             ; preds = %1387
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1337, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2756:                                             ; preds = %1389
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1338, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2757:                                             ; preds = %1376
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1341, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2758:                                             ; preds = %1420
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1348, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2759:                                             ; preds = %1421
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1349, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2760:                                             ; preds = %1410
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1352, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2761:                                             ; preds = %1437
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1356, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2762:                                             ; preds = %1439
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1357, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2763:                                             ; preds = %1495
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1365, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2764:                                             ; preds = %1478
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1370, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2765:                                             ; preds = %1526
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1374, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2766:                                             ; preds = %1509
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1379, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2767:                                             ; preds = %1546
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2768:                                             ; preds = %1587, %1542
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2769:                                             ; preds = %1574, %1565, %1558
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2770:                                             ; preds = %1596
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1388, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2771:                                             ; preds = %2622
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.src, i32 noundef 1423, ptr noundef nonnull @__PRETTY_FUNCTION__.trsort) #10
  unreachable

2772:                                             ; preds = %2680
  %2773 = icmp eq i64 %2688, 4
  %2774 = sext i1 %2773 to i32
  br label %2775

2775:                                             ; preds = %2772, %2670
  %2776 = phi ptr [ %2674, %2670 ], [ %2685, %2772 ]
  %2777 = phi i32 [ %2671, %2670 ], [ %2774, %2772 ]
  %2778 = icmp ult ptr %2776, %138
  br i1 %2778, label %2661, label %.loopexit272, !llvm.loop !77

.loopexit272:                                     ; preds = %2775, %2648
  %2779 = phi i32 [ %2649, %2648 ], [ %831, %2775 ]
  %2780 = phi i32 [ %2650, %2648 ], [ %830, %2775 ]
  %2781 = phi ptr [ %2651, %2648 ], [ %2776, %2775 ]
  %2782 = phi i32 [ %2652, %2648 ], [ %2777, %2775 ]
  %2783 = phi i32 [ %845, %2648 ], [ 0, %2775 ]
  %2784 = icmp eq i32 %2782, 0
  br i1 %2784, label %.loopexit271, label %2785

2785:                                             ; preds = %.loopexit272
  %2786 = sext i32 %2782 to i64
  %2787 = getelementptr inbounds [4 x i8], ptr %2781, i64 %2786
  store i32 %2782, ptr %2787, align 4, !tbaa !5
  br label %.loopexit271

.loopexit271:                                     ; preds = %2619, %2785, %.loopexit272
  %2788 = phi i32 [ %2779, %2785 ], [ %2779, %.loopexit272 ], [ %899, %2619 ]
  %2789 = phi i32 [ %2780, %2785 ], [ %2780, %.loopexit272 ], [ %2613, %2619 ]
  %2790 = phi i32 [ %2783, %2785 ], [ %2783, %.loopexit272 ], [ %2620, %2619 ]
  %2791 = icmp eq i32 %2790, 0
  br i1 %2791, label %.loopexit276, label %2792

2792:                                             ; preds = %.loopexit271
  %2793 = getelementptr i8, ptr %829, i64 %833
  %2794 = load i32, ptr %1, align 4, !tbaa !5
  %2795 = icmp sgt i32 %2794, %817
  br i1 %2795, label %827, label %.loopexit276, !llvm.loop !78

.loopexit276:                                     ; preds = %2792, %.loopexit271, %816
  %2796 = load i8, ptr %11, align 1, !tbaa !9
  %2797 = zext i8 %2796 to i32
  br label %2798

2798:                                             ; preds = %2835, %.loopexit276
  %2799 = phi i32 [ %2797, %.loopexit276 ], [ %2832, %2835 ]
  %2800 = phi i32 [ %9, %.loopexit276 ], [ %2831, %2835 ]
  %2801 = phi i32 [ %78, %.loopexit276 ], [ %2842, %2835 ]
  %2802 = icmp eq i32 %2800, 0
  br i1 %2802, label %.loopexit228, label %.lr.ph2056

.lr.ph2056:                                       ; preds = %2798
  %2803 = zext nneg i32 %2800 to i64
  br label %2806

2804:                                             ; preds = %2806
  %2805 = icmp eq i64 %2809, 0
  br i1 %2805, label %.loopexit228, label %2806, !llvm.loop !79

2806:                                             ; preds = %.lr.ph2056, %2804
  %2807 = phi i32 [ %2799, %.lr.ph2056 ], [ %2812, %2804 ]
  %2808 = phi i64 [ %2803, %.lr.ph2056 ], [ %2809, %2804 ]
  %2809 = add nsw i64 %2808, -1
  %2810 = getelementptr inbounds nuw i8, ptr %0, i64 %2809
  %2811 = load i8, ptr %2810, align 1, !tbaa !9
  %2812 = zext i8 %2811 to i32
  %2813 = icmp sgt i32 %2807, %2812
  br i1 %2813, label %2814, label %2804, !llvm.loop !79

2814:                                             ; preds = %2806
  %indvars.le = trunc nuw nsw i64 %2809 to i32
  %2815 = trunc nuw nsw i64 %2808 to i32
  %2816 = and i64 %2809, 4294967295
  %2817 = icmp eq i64 %2816, 0
  br i1 %2817, label %.loopexit227, label %.lr.ph2059

2818:                                             ; preds = %.lr.ph2059
  %2819 = icmp eq i64 %2822, 0
  br i1 %2819, label %.loopexit227, label %.lr.ph2059, !llvm.loop !80

.lr.ph2059:                                       ; preds = %2814, %2818
  %2820 = phi i32 [ %2825, %2818 ], [ %2812, %2814 ]
  %2821 = phi i64 [ %2822, %2818 ], [ %2816, %2814 ]
  %2822 = add nsw i64 %2821, -1
  %2823 = getelementptr inbounds nuw i8, ptr %0, i64 %2822
  %2824 = load i8, ptr %2823, align 1, !tbaa !9
  %2825 = zext i8 %2824 to i32
  %2826 = icmp samesign ult i32 %2820, %2825
  br i1 %2826, label %2827, label %2818, !llvm.loop !80

2827:                                             ; preds = %.lr.ph2059
  %2828 = trunc nuw nsw i64 %2821 to i32
  %2829 = trunc nuw nsw i64 %2822 to i32
  br label %.loopexit227

.loopexit227:                                     ; preds = %2818, %2814, %2827
  %2830 = phi i32 [ %2828, %2827 ], [ 0, %2814 ], [ 0, %2818 ]
  %2831 = phi i32 [ %2829, %2827 ], [ -1, %2814 ], [ -1, %2818 ]
  %2832 = phi i32 [ %2825, %2827 ], [ %2812, %2814 ], [ %2825, %2818 ]
  %2833 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2801, i32 -1)
  %2834 = extractvalue { i32, i1 } %2833, 1, !nosanitize !10
  br i1 %2834, label %.loopexit, label %2835, !prof !11, !nosanitize !10

2835:                                             ; preds = %.loopexit227
  %2836 = icmp eq i64 %2809, 0
  %2837 = sub nsw i32 %2815, %2830
  %2838 = icmp sgt i32 %2837, 1
  %2839 = or i1 %2836, %2838
  %2840 = sub nsw i32 0, %2815
  %2841 = select i1 %2839, i32 %indvars.le, i32 %2840
  %2842 = extractvalue { i32, i1 } %2833, 0, !nosanitize !10
  %2843 = sext i32 %2842 to i64
  %2844 = getelementptr inbounds [4 x i8], ptr %138, i64 %2843
  %2845 = load i32, ptr %2844, align 4, !tbaa !5
  %2846 = sext i32 %2845 to i64
  %2847 = getelementptr inbounds [4 x i8], ptr %1, i64 %2846
  store i32 %2841, ptr %2847, align 4, !tbaa !5
  %2848 = icmp sgt i32 %2831, -1
  br i1 %2848, label %2798, label %.loopexit228, !llvm.loop !81

.loopexit228:                                     ; preds = %2835, %2798, %2804
  %2849 = getelementptr inbounds nuw i8, ptr %3, i64 262140
  store i32 %4, ptr %2849, align 4, !tbaa !5
  br label %2850

2850:                                             ; preds = %2920, %.loopexit228
  %2851 = phi i64 [ 254, %.loopexit228 ], [ %2926, %2920 ]
  %2852 = phi i32 [ %171, %.loopexit228 ], [ %2905, %2920 ]
  %2853 = trunc i64 %2851 to i32
  %2854 = add nuw nsw i64 %2851, 1
  %2855 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %2854
  %2856 = load i32, ptr %2855, align 4, !tbaa !5
  %2857 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2856, i32 -1)
  %2858 = extractvalue { i32, i1 } %2857, 1, !nosanitize !10
  br i1 %2858, label %.loopexit, label %2859, !prof !11, !nosanitize !10

2859:                                             ; preds = %2850
  %2860 = extractvalue { i32, i1 } %2857, 0, !nosanitize !10
  %2861 = getelementptr [4 x i8], ptr %3, i64 %2851
  %2862 = shl i32 %2853, 8
  br label %2863

2863:                                             ; preds = %2904, %2859
  %2864 = phi i64 [ 255, %2859 ], [ %2907, %2904 ]
  %2865 = phi i32 [ %2860, %2859 ], [ %2906, %2904 ]
  %2866 = phi i32 [ %2852, %2859 ], [ %2905, %2904 ]
  %2867 = shl i64 %2864, 10
  %2868 = getelementptr i8, ptr %2861, i64 %2867
  %2869 = load i32, ptr %2868, align 4, !tbaa !5
  %2870 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2865, i32 %2869), !nosanitize !10
  %2871 = extractvalue { i32, i1 } %2870, 1, !nosanitize !10
  br i1 %2871, label %.loopexit, label %2872, !prof !11, !nosanitize !10

2872:                                             ; preds = %2863
  store i32 %2865, ptr %2868, align 4, !tbaa !5
  %2873 = trunc nuw nsw i64 %2864 to i32
  %2874 = or i32 %2862, %2873
  %2875 = sext i32 %2874 to i64
  %2876 = getelementptr inbounds [4 x i8], ptr %3, i64 %2875
  %2877 = load i32, ptr %2876, align 4, !tbaa !5
  %2878 = extractvalue { i32, i1 } %2870, 0
  %2879 = icmp sgt i32 %2877, %2866
  br i1 %2879, label %2904, label %2880

2880:                                             ; preds = %2872
  %2881 = sext i32 %2878 to i64
  %2882 = sext i32 %2866 to i64
  %2883 = getelementptr inbounds [4 x i8], ptr %1, i64 %2882
  %2884 = load i32, ptr %2883, align 4, !tbaa !5
  %2885 = getelementptr inbounds [4 x i8], ptr %1, i64 %2881
  store i32 %2884, ptr %2885, align 4, !tbaa !5
  %2886 = icmp eq i32 %2878, -2147483648
  %2887 = icmp eq i32 %2866, -2147483648
  %2888 = or i1 %2887, %2886
  br i1 %2888, label %.loopexit, label %.lr.ph2062, !prof !82, !nosanitize !10

2889:                                             ; preds = %.lr.ph2062
  %2890 = getelementptr inbounds [4 x i8], ptr %1, i64 %2898
  %2891 = load i32, ptr %2890, align 4, !tbaa !5
  %2892 = getelementptr inbounds [4 x i8], ptr %1, i64 %2900
  store i32 %2891, ptr %2892, align 4, !tbaa !5
  %2893 = icmp eq i64 %2900, -2147483648
  %2894 = icmp eq i64 %2898, -2147483648
  %2895 = or i1 %2894, %2893
  br i1 %2895, label %.loopexit, label %.lr.ph2062, !prof !83, !llvm.loop !84, !nosanitize !10

.lr.ph2062:                                       ; preds = %2880, %2889
  %2896 = phi i64 [ %2900, %2889 ], [ %2881, %2880 ]
  %2897 = phi i64 [ %2898, %2889 ], [ %2882, %2880 ]
  %2898 = add nsw i64 %2897, -1
  %2899 = trunc i64 %2898 to i32
  %2900 = add nsw i64 %2896, -1
  %2901 = icmp sgt i32 %2877, %2899
  br i1 %2901, label %2902, label %2889, !llvm.loop !84

2902:                                             ; preds = %.lr.ph2062
  %2903 = trunc nsw i64 %2900 to i32
  br label %2904

2904:                                             ; preds = %2902, %2872
  %2905 = phi i32 [ %2866, %2872 ], [ %2899, %2902 ]
  %2906 = phi i32 [ %2878, %2872 ], [ %2903, %2902 ]
  %2907 = add nsw i64 %2864, -1
  %2908 = icmp samesign ult i64 %2851, %2907
  br i1 %2908, label %2863, label %2909, !llvm.loop !85

2909:                                             ; preds = %2904
  %2910 = or i32 %2862, %2853
  %2911 = sext i32 %2910 to i64
  %2912 = getelementptr inbounds [4 x i8], ptr %3, i64 %2911
  %2913 = load i32, ptr %2912, align 4, !tbaa !5
  %2914 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2906, i32 %2913), !nosanitize !10
  %2915 = extractvalue { i32, i1 } %2914, 1, !nosanitize !10
  br i1 %2915, label %.loopexit, label %2916, !prof !11, !nosanitize !10

2916:                                             ; preds = %2909
  %2917 = extractvalue { i32, i1 } %2914, 0, !nosanitize !10
  %2918 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2917, i32 1), !nosanitize !10
  %2919 = extractvalue { i32, i1 } %2918, 1, !nosanitize !10
  br i1 %2919, label %.loopexit225, label %2920, !prof !11, !nosanitize !10

2920:                                             ; preds = %2916
  %2921 = extractvalue { i32, i1 } %2918, 0, !nosanitize !10
  %2922 = trunc nuw nsw i64 %2854 to i32
  %2923 = or i32 %2862, %2922
  %2924 = sext i32 %2923 to i64
  %2925 = getelementptr inbounds [4 x i8], ptr %3, i64 %2924
  store i32 %2921, ptr %2925, align 4, !tbaa !5
  store i32 %2906, ptr %2912, align 4, !tbaa !5
  %2926 = add nsw i64 %2851, -1
  %2927 = icmp eq i64 %2851, 0
  br i1 %2927, label %.loopexit226, label %2850, !llvm.loop !86

.loopexit226:                                     ; preds = %2920, %130
  ret i32 %78
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @divbwt(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly captures(address_is_null) %4, ptr noundef writeonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %8, %9
  %11 = icmp slt i32 %3, 0
  %12 = or i1 %10, %11
  br i1 %12, label %704, label %13

13:                                               ; preds = %7
  %14 = icmp samesign ult i32 %3, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = icmp eq i32 %3, 1
  br i1 %16, label %17, label %704

17:                                               ; preds = %15
  %18 = load i8, ptr %0, align 1, !tbaa !9
  store i8 %18, ptr %1, align 1, !tbaa !9
  br label %704

19:                                               ; preds = %13
  %20 = icmp eq ptr %2, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1), !nosanitize !10
  %23 = extractvalue { i32, i1 } %22, 1, !nosanitize !10
  br i1 %23, label %24, label %25, !prof !11, !nosanitize !10

24:                                               ; preds = %.loopexit, %.loopexit56, %21
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

25:                                               ; preds = %21
  %26 = extractvalue { i32, i1 } %22, 0, !nosanitize !10
  %27 = zext nneg i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 2
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #9
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi ptr [ %29, %25 ], [ %2, %19 ]
  %32 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #9
  %33 = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #9
  %34 = icmp ne ptr %31, null
  %35 = icmp ne ptr %32, null
  %36 = and i1 %34, %35
  %37 = icmp ne ptr %33, null
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %701

39:                                               ; preds = %30
  %40 = tail call fastcc i32 @sort_typeBstar(ptr noundef %0, ptr noundef %31, ptr noundef %32, ptr noundef %33, i32 noundef %3)
  %41 = icmp eq ptr %4, null
  %42 = icmp eq ptr %5, null
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %252

44:                                               ; preds = %39
  %45 = icmp sgt i32 %40, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = ptrtoint ptr %31 to i64
  br label %.loopexit61

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %31, i64 -4
  %50 = ptrtoint ptr %31 to i64
  br label %51

51:                                               ; preds = %.loopexit60, %48
  %52 = phi i64 [ 254, %48 ], [ %158, %.loopexit60 ]
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 8
  %55 = add nuw nsw i64 %52, 1
  %56 = trunc nuw nsw i64 %55 to i32
  %57 = or i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i8], ptr %33, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i8], ptr %31, i64 %61
  %63 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %55
  %64 = load i32, ptr %63, align 4, !tbaa !5
  %65 = sext i32 %64 to i64
  %66 = getelementptr [4 x i8], ptr %49, i64 %65
  %67 = icmp ugt ptr %62, %66
  br i1 %67, label %.loopexit60, label %.preheader59

68:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader59:                                     ; preds = %51, %153
  %69 = phi ptr [ %156, %153 ], [ %66, %51 ]
  %70 = phi i32 [ %155, %153 ], [ -1, %51 ]
  %71 = phi ptr [ %154, %153 ], [ null, %51 ]
  %72 = load i32, ptr %69, align 4, !tbaa !5
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %144

74:                                               ; preds = %.preheader59
  %75 = zext nneg i32 %72 to i64
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !9
  %78 = zext i8 %77 to i64
  %79 = icmp eq i64 %52, %78
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1694, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

81:                                               ; preds = %74
  %82 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %72, i32 1), !nosanitize !10
  %83 = extractvalue { i32, i1 } %82, 0, !nosanitize !10
  %84 = extractvalue { i32, i1 } %82, 1, !nosanitize !10
  br i1 %84, label %68, label %85, !prof !11, !nosanitize !10

85:                                               ; preds = %81
  %86 = icmp slt i32 %83, %3
  br i1 %86, label %87, label %92

87:                                               ; preds = %85
  %88 = sext i32 %83 to i64
  %89 = getelementptr inbounds i8, ptr %0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !9
  %91 = icmp ugt i8 %77, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %85
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.src, i32 noundef 1695, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

93:                                               ; preds = %87
  %94 = add nsw i32 %72, -1
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = zext i8 %97 to i32
  %99 = icmp ugt i8 %97, %77
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.src, i32 noundef 1696, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

101:                                              ; preds = %93
  %102 = xor i32 %98, -1
  store i32 %102, ptr %69, align 4, !tbaa !5
  %103 = icmp eq i32 %72, 1
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = getelementptr i8, ptr %76, i64 -2
  %106 = load i8, ptr %105, align 1, !tbaa !9
  %107 = icmp ugt i8 %106, %97
  %108 = sub nsw i32 0, %72
  %109 = select i1 %107, i32 %108, i32 %94
  br label %110

110:                                              ; preds = %104, %101
  %111 = phi i32 [ 0, %101 ], [ %109, %104 ]
  %112 = icmp eq i32 %70, %98
  br i1 %112, label %134, label %113

113:                                              ; preds = %110
  %114 = icmp sgt i32 %70, -1
  br i1 %114, label %115, label %127

115:                                              ; preds = %113
  %116 = ptrtoint ptr %71 to i64
  %117 = sub i64 %116, %50
  %118 = ashr exact i64 %117, 2
  %119 = add nsw i64 %118, 2147483648
  %120 = icmp ult i64 %119, 4294967296
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1701, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

122:                                              ; preds = %115
  %123 = trunc nsw i64 %118 to i32
  %124 = or i32 %70, %54
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x i8], ptr %33, i64 %125
  store i32 %123, ptr %126, align 4, !tbaa !5
  br label %127

127:                                              ; preds = %122, %113
  %128 = or disjoint i32 %54, %98
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x i8], ptr %33, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !5
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [4 x i8], ptr %31, i64 %132
  br label %134

134:                                              ; preds = %127, %110
  %135 = phi ptr [ %133, %127 ], [ %71, %110 ]
  %136 = phi i32 [ %98, %127 ], [ %70, %110 ]
  %137 = icmp ult ptr %135, %69
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.src, i32 noundef 1704, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

139:                                              ; preds = %134
  %140 = icmp eq ptr %135, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %139
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.src, i32 noundef 1704, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

142:                                              ; preds = %139
  %143 = getelementptr inbounds i8, ptr %135, i64 -4
  store i32 %111, ptr %135, align 4, !tbaa !5
  br label %153

144:                                              ; preds = %.preheader59
  %145 = icmp eq i32 %72, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %144
  %147 = xor i32 %72, -1
  store i32 %147, ptr %69, align 4, !tbaa !5
  br label %153

148:                                              ; preds = %144
  %149 = load i8, ptr %0, align 1, !tbaa !9
  %150 = zext i8 %149 to i64
  %151 = icmp eq i64 %52, %150
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1710, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

153:                                              ; preds = %148, %146, %142
  %154 = phi ptr [ %143, %142 ], [ %71, %146 ], [ %71, %148 ]
  %155 = phi i32 [ %136, %142 ], [ %70, %146 ], [ %70, %148 ]
  %156 = getelementptr inbounds i8, ptr %69, i64 -4
  %157 = icmp ugt ptr %62, %156
  br i1 %157, label %.loopexit60, label %.preheader59, !llvm.loop !87

.loopexit60:                                      ; preds = %153, %51
  %158 = add nsw i64 %52, -1
  %159 = icmp eq i64 %52, 0
  br i1 %159, label %.loopexit61, label %51, !llvm.loop !88

.loopexit61:                                      ; preds = %.loopexit60, %46
  %160 = phi i64 [ %47, %46 ], [ %50, %.loopexit60 ]
  %161 = add nsw i32 %3, -1
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !9
  %165 = zext i8 %164 to i64
  %166 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !5
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [4 x i8], ptr %31, i64 %168
  %170 = zext nneg i32 %3 to i64
  %171 = getelementptr i8, ptr %0, i64 %170
  %172 = getelementptr i8, ptr %171, i64 -2
  %173 = load i8, ptr %172, align 1, !tbaa !9
  %174 = zext i8 %173 to i32
  %175 = icmp ult i8 %173, %164
  %176 = xor i32 %174, -1
  %177 = select i1 %175, i32 %176, i32 %161
  store i32 %177, ptr %169, align 4, !tbaa !5
  %178 = shl nuw nsw i64 %170, 2
  %179 = getelementptr inbounds nuw i8, ptr %31, i64 %178
  %180 = getelementptr inbounds nuw i8, ptr %169, i64 4
  %181 = zext i8 %164 to i32
  br label %182

182:                                              ; preds = %239, %.loopexit61
  %183 = phi i32 [ %181, %.loopexit61 ], [ %242, %239 ]
  %184 = phi ptr [ %31, %.loopexit61 ], [ %241, %239 ]
  %185 = phi ptr [ %180, %.loopexit61 ], [ %240, %239 ]
  %186 = phi ptr [ %31, %.loopexit61 ], [ %243, %239 ]
  %187 = load i32, ptr %186, align 4, !tbaa !5
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %235

189:                                              ; preds = %182
  %190 = add nsw i32 %187, -1
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !9
  %194 = zext i8 %193 to i32
  %195 = zext nneg i32 %187 to i64
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !9
  %198 = icmp ult i8 %193, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %189
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.src, i32 noundef 1724, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

200:                                              ; preds = %189
  store i32 %194, ptr %186, align 4, !tbaa !5
  %201 = icmp eq i32 %187, 1
  br i1 %201, label %209, label %202

202:                                              ; preds = %200
  %203 = getelementptr i8, ptr %196, i64 -2
  %204 = load i8, ptr %203, align 1, !tbaa !9
  %205 = icmp ult i8 %204, %193
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = zext i8 %204 to i32
  %208 = xor i32 %207, -1
  br label %209

209:                                              ; preds = %206, %202, %200
  %210 = phi i32 [ %208, %206 ], [ %190, %202 ], [ 0, %200 ]
  %211 = icmp eq i32 %183, %194
  br i1 %211, label %228, label %212

212:                                              ; preds = %209
  %213 = ptrtoint ptr %185 to i64
  %214 = sub i64 %213, %160
  %215 = ashr exact i64 %214, 2
  %216 = add nsw i64 %215, 2147483648
  %217 = icmp ult i64 %216, 4294967296
  br i1 %217, label %219, label %218

218:                                              ; preds = %212
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1729, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

219:                                              ; preds = %212
  %220 = trunc nsw i64 %215 to i32
  %221 = zext nneg i32 %183 to i64
  %222 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %221
  store i32 %220, ptr %222, align 4, !tbaa !5
  %223 = zext i8 %193 to i64
  %224 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !5
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [4 x i8], ptr %31, i64 %226
  br label %228

228:                                              ; preds = %219, %209
  %229 = phi ptr [ %227, %219 ], [ %185, %209 ]
  %230 = phi i32 [ %194, %219 ], [ %183, %209 ]
  %231 = icmp ult ptr %186, %229
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.src, i32 noundef 1732, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

233:                                              ; preds = %228
  %234 = getelementptr inbounds nuw i8, ptr %229, i64 4
  store i32 %210, ptr %229, align 4, !tbaa !5
  br label %239

235:                                              ; preds = %182
  %236 = icmp eq i32 %187, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %235
  %238 = xor i32 %187, -1
  store i32 %238, ptr %186, align 4, !tbaa !5
  br label %239

239:                                              ; preds = %237, %235, %233
  %240 = phi ptr [ %234, %233 ], [ %185, %237 ], [ %185, %235 ]
  %241 = phi ptr [ %184, %233 ], [ %184, %237 ], [ %186, %235 ]
  %242 = phi i32 [ %230, %233 ], [ %183, %237 ], [ %183, %235 ]
  %243 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %244 = icmp ult ptr %243, %179
  br i1 %244, label %182, label %245, !llvm.loop !89

245:                                              ; preds = %239
  %246 = ptrtoint ptr %241 to i64
  %247 = sub i64 %246, %160
  %248 = ashr exact i64 %247, 2
  %249 = add nsw i64 %248, 2147483648
  %250 = icmp ult i64 %249, 4294967296
  br i1 %250, label %537, label %251

251:                                              ; preds = %245
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.src, i32 noundef 1741, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #10
  unreachable

252:                                              ; preds = %39
  %253 = lshr i32 %3, 3
  %254 = lshr i32 %3, 4
  %255 = or i32 %253, %254
  %256 = lshr i32 %255, 2
  %257 = or i32 %256, %255
  %258 = lshr i32 %257, 4
  %259 = or i32 %258, %257
  %260 = lshr i32 %259, 8
  %261 = or i32 %260, %259
  %262 = lshr i32 %261, 17
  %263 = lshr i32 %261, 1
  %264 = or i32 %262, %263
  %265 = add nsw i32 %3, -1
  %266 = add nuw nsw i32 %264, 1
  %267 = udiv i32 %265, %266
  %268 = trunc i32 %267 to i8
  store i8 %268, ptr %4, align 1, !tbaa !9
  %269 = icmp sgt i32 %40, 0
  br i1 %269, label %270, label %.loopexit64

270:                                              ; preds = %252
  %271 = getelementptr i8, ptr %5, i64 -4
  %272 = getelementptr i8, ptr %31, i64 -4
  %273 = ptrtoint ptr %31 to i64
  br label %275

274:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

275:                                              ; preds = %.loopexit63, %270
  %276 = phi i64 [ 254, %270 ], [ %398, %.loopexit63 ]
  %277 = trunc i64 %276 to i32
  %278 = shl i32 %277, 8
  %279 = add nuw nsw i64 %276, 1
  %280 = trunc nuw nsw i64 %279 to i32
  %281 = or i32 %278, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [4 x i8], ptr %33, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !5
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4 x i8], ptr %31, i64 %285
  %287 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %279
  %288 = load i32, ptr %287, align 4, !tbaa !5
  %289 = sext i32 %288 to i64
  %290 = getelementptr [4 x i8], ptr %272, i64 %289
  %291 = icmp ugt ptr %286, %290
  br i1 %291, label %.loopexit63, label %.preheader62

.preheader62:                                     ; preds = %275, %393
  %292 = phi ptr [ %396, %393 ], [ %290, %275 ]
  %293 = phi i32 [ %395, %393 ], [ -1, %275 ]
  %294 = phi ptr [ %394, %393 ], [ null, %275 ]
  %295 = load i32, ptr %292, align 4, !tbaa !5
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %384

297:                                              ; preds = %.preheader62
  %298 = zext nneg i32 %295 to i64
  %299 = getelementptr inbounds nuw i8, ptr %0, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !9
  %301 = zext i8 %300 to i64
  %302 = icmp eq i64 %276, %301
  br i1 %302, label %304, label %303

303:                                              ; preds = %297
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1775, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

304:                                              ; preds = %297
  %305 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %295, i32 1), !nosanitize !10
  %306 = extractvalue { i32, i1 } %305, 0, !nosanitize !10
  %307 = extractvalue { i32, i1 } %305, 1, !nosanitize !10
  br i1 %307, label %274, label %308, !prof !11, !nosanitize !10

308:                                              ; preds = %304
  %309 = icmp slt i32 %306, %3
  br i1 %309, label %310, label %315

310:                                              ; preds = %308
  %311 = sext i32 %306 to i64
  %312 = getelementptr inbounds i8, ptr %0, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !9
  %314 = icmp ugt i8 %300, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %310, %308
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.src, i32 noundef 1776, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

316:                                              ; preds = %310
  %317 = add nsw i32 %295, -1
  %318 = zext nneg i32 %317 to i64
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !9
  %321 = icmp ugt i8 %320, %300
  br i1 %321, label %322, label %323

322:                                              ; preds = %316
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.src, i32 noundef 1777, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

323:                                              ; preds = %316
  %324 = and i32 %295, %264
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %339

326:                                              ; preds = %323
  %327 = ptrtoint ptr %292 to i64
  %328 = sub i64 %327, %273
  %329 = ashr exact i64 %328, 2
  %330 = add nsw i64 %329, 2147483648
  %331 = icmp ult i64 %330, 4294967296
  br i1 %331, label %333, label %332

332:                                              ; preds = %326
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.src, i32 noundef 1779, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

333:                                              ; preds = %326
  %334 = trunc nsw i64 %329 to i32
  %335 = udiv i32 %295, %266
  %336 = zext nneg i32 %335 to i64
  %337 = getelementptr [4 x i8], ptr %271, i64 %336
  store i32 %334, ptr %337, align 4, !tbaa !5
  %338 = load i8, ptr %319, align 1, !tbaa !9
  br label %339

339:                                              ; preds = %333, %323
  %340 = phi i8 [ %320, %323 ], [ %338, %333 ]
  %341 = zext i8 %340 to i32
  %342 = xor i32 %341, -1
  store i32 %342, ptr %292, align 4, !tbaa !5
  %343 = icmp eq i32 %295, 1
  br i1 %343, label %350, label %344

344:                                              ; preds = %339
  %345 = getelementptr i8, ptr %299, i64 -2
  %346 = load i8, ptr %345, align 1, !tbaa !9
  %347 = icmp ugt i8 %346, %340
  %348 = sub nsw i32 0, %295
  %349 = select i1 %347, i32 %348, i32 %317
  br label %350

350:                                              ; preds = %344, %339
  %351 = phi i32 [ 0, %339 ], [ %349, %344 ]
  %352 = icmp eq i32 %293, %341
  br i1 %352, label %374, label %353

353:                                              ; preds = %350
  %354 = icmp sgt i32 %293, -1
  br i1 %354, label %355, label %367

355:                                              ; preds = %353
  %356 = ptrtoint ptr %294 to i64
  %357 = sub i64 %356, %273
  %358 = ashr exact i64 %357, 2
  %359 = add nsw i64 %358, 2147483648
  %360 = icmp ult i64 %359, 4294967296
  br i1 %360, label %362, label %361

361:                                              ; preds = %355
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1785, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

362:                                              ; preds = %355
  %363 = trunc nsw i64 %358 to i32
  %364 = or i32 %293, %278
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [4 x i8], ptr %33, i64 %365
  store i32 %363, ptr %366, align 4, !tbaa !5
  br label %367

367:                                              ; preds = %362, %353
  %368 = or disjoint i32 %278, %341
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [4 x i8], ptr %33, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !5
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [4 x i8], ptr %31, i64 %372
  br label %374

374:                                              ; preds = %367, %350
  %375 = phi ptr [ %373, %367 ], [ %294, %350 ]
  %376 = phi i32 [ %341, %367 ], [ %293, %350 ]
  %377 = icmp ult ptr %375, %292
  br i1 %377, label %379, label %378

378:                                              ; preds = %374
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.src, i32 noundef 1788, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

379:                                              ; preds = %374
  %380 = icmp eq ptr %375, null
  br i1 %380, label %381, label %382

381:                                              ; preds = %379
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.src, i32 noundef 1788, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

382:                                              ; preds = %379
  %383 = getelementptr inbounds i8, ptr %375, i64 -4
  store i32 %351, ptr %375, align 4, !tbaa !5
  br label %393

384:                                              ; preds = %.preheader62
  %385 = icmp eq i32 %295, 0
  br i1 %385, label %388, label %386

386:                                              ; preds = %384
  %387 = xor i32 %295, -1
  store i32 %387, ptr %292, align 4, !tbaa !5
  br label %393

388:                                              ; preds = %384
  %389 = load i8, ptr %0, align 1, !tbaa !9
  %390 = zext i8 %389 to i64
  %391 = icmp eq i64 %276, %390
  br i1 %391, label %393, label %392

392:                                              ; preds = %388
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1794, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

393:                                              ; preds = %388, %386, %382
  %394 = phi ptr [ %383, %382 ], [ %294, %386 ], [ %294, %388 ]
  %395 = phi i32 [ %376, %382 ], [ %293, %386 ], [ %293, %388 ]
  %396 = getelementptr inbounds i8, ptr %292, i64 -4
  %397 = icmp ugt ptr %286, %396
  br i1 %397, label %.loopexit63, label %.preheader62, !llvm.loop !90

.loopexit63:                                      ; preds = %393, %275
  %398 = add nsw i64 %276, -1
  %399 = icmp eq i64 %276, 0
  br i1 %399, label %.loopexit64, label %275, !llvm.loop !91

.loopexit64:                                      ; preds = %.loopexit63, %252
  %400 = zext nneg i32 %265 to i64
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 %400
  %402 = load i8, ptr %401, align 1, !tbaa !9
  %403 = zext i8 %402 to i32
  %404 = zext i8 %402 to i64
  %405 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %404
  %406 = load i32, ptr %405, align 4, !tbaa !5
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [4 x i8], ptr %31, i64 %407
  %409 = zext nneg i32 %3 to i64
  %410 = getelementptr i8, ptr %0, i64 %409
  %411 = getelementptr i8, ptr %410, i64 -2
  %412 = load i8, ptr %411, align 1, !tbaa !9
  %413 = icmp ult i8 %412, %402
  br i1 %413, label %414, label %426

414:                                              ; preds = %.loopexit64
  %415 = and i32 %264, %265
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %414
  %418 = zext nneg i32 %267 to i64
  %419 = getelementptr [4 x i8], ptr %5, i64 %418
  %420 = getelementptr i8, ptr %419, i64 -4
  store i32 %406, ptr %420, align 4, !tbaa !5
  %421 = load i8, ptr %411, align 1, !tbaa !9
  br label %422

422:                                              ; preds = %417, %414
  %423 = phi i8 [ %412, %414 ], [ %421, %417 ]
  %424 = zext i8 %423 to i32
  %425 = xor i32 %424, -1
  br label %426

426:                                              ; preds = %422, %.loopexit64
  %427 = phi i32 [ %425, %422 ], [ %265, %.loopexit64 ]
  store i32 %427, ptr %408, align 4, !tbaa !5
  %428 = shl nuw nsw i64 %409, 2
  %429 = getelementptr inbounds nuw i8, ptr %31, i64 %428
  %430 = getelementptr i8, ptr %5, i64 -4
  %431 = getelementptr inbounds nuw i8, ptr %408, i64 4
  %432 = ptrtoint ptr %31 to i64
  br label %433

433:                                              ; preds = %524, %426
  %434 = phi i32 [ %403, %426 ], [ %527, %524 ]
  %435 = phi ptr [ %31, %426 ], [ %526, %524 ]
  %436 = phi ptr [ %431, %426 ], [ %525, %524 ]
  %437 = phi ptr [ %31, %426 ], [ %528, %524 ]
  %438 = load i32, ptr %437, align 4, !tbaa !5
  %439 = icmp sgt i32 %438, 0
  br i1 %439, label %440, label %520

440:                                              ; preds = %433
  %441 = add nsw i32 %438, -1
  %442 = zext nneg i32 %441 to i64
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 %442
  %444 = load i8, ptr %443, align 1, !tbaa !9
  %445 = zext nneg i32 %438 to i64
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 %445
  %447 = load i8, ptr %446, align 1, !tbaa !9
  %448 = icmp ult i8 %444, %447
  br i1 %448, label %449, label %450

449:                                              ; preds = %440
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.src, i32 noundef 1815, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

450:                                              ; preds = %440
  %451 = and i32 %438, %264
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %466

453:                                              ; preds = %450
  %454 = ptrtoint ptr %437 to i64
  %455 = sub i64 %454, %432
  %456 = ashr exact i64 %455, 2
  %457 = add nsw i64 %456, 2147483648
  %458 = icmp ult i64 %457, 4294967296
  br i1 %458, label %460, label %459

459:                                              ; preds = %453
  tail call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.src, i32 noundef 1817, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

460:                                              ; preds = %453
  %461 = trunc nsw i64 %456 to i32
  %462 = udiv i32 %438, %266
  %463 = zext nneg i32 %462 to i64
  %464 = getelementptr [4 x i8], ptr %430, i64 %463
  store i32 %461, ptr %464, align 4, !tbaa !5
  %465 = load i8, ptr %443, align 1, !tbaa !9
  br label %466

466:                                              ; preds = %460, %450
  %467 = phi i8 [ %444, %450 ], [ %465, %460 ]
  %468 = zext i8 %467 to i32
  store i32 %468, ptr %437, align 4, !tbaa !5
  %469 = icmp eq i32 %434, %468
  br i1 %469, label %486, label %470

470:                                              ; preds = %466
  %471 = ptrtoint ptr %436 to i64
  %472 = sub i64 %471, %432
  %473 = ashr exact i64 %472, 2
  %474 = add nsw i64 %473, 2147483648
  %475 = icmp ult i64 %474, 4294967296
  br i1 %475, label %477, label %476

476:                                              ; preds = %470
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1822, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

477:                                              ; preds = %470
  %478 = trunc nsw i64 %473 to i32
  %479 = zext nneg i32 %434 to i64
  %480 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %479
  store i32 %478, ptr %480, align 4, !tbaa !5
  %481 = zext i8 %467 to i64
  %482 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %481
  %483 = load i32, ptr %482, align 4, !tbaa !5
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [4 x i8], ptr %31, i64 %484
  br label %486

486:                                              ; preds = %477, %466
  %487 = phi ptr [ %485, %477 ], [ %436, %466 ]
  %488 = phi i32 [ %468, %477 ], [ %434, %466 ]
  %489 = icmp ult ptr %437, %487
  br i1 %489, label %491, label %490

490:                                              ; preds = %486
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.src, i32 noundef 1825, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

491:                                              ; preds = %486
  %492 = icmp eq i32 %438, 1
  br i1 %492, label %518, label %493

493:                                              ; preds = %491
  %494 = getelementptr i8, ptr %446, i64 -2
  %495 = load i8, ptr %494, align 1, !tbaa !9
  %496 = icmp ult i8 %495, %467
  br i1 %496, label %497, label %518

497:                                              ; preds = %493
  %498 = and i32 %441, %264
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %513

500:                                              ; preds = %497
  %501 = ptrtoint ptr %487 to i64
  %502 = sub i64 %501, %432
  %503 = ashr exact i64 %502, 2
  %504 = add nsw i64 %503, 2147483648
  %505 = icmp ult i64 %504, 4294967296
  br i1 %505, label %507, label %506

506:                                              ; preds = %500
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1827, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

507:                                              ; preds = %500
  %508 = trunc nsw i64 %503 to i32
  %509 = udiv i32 %441, %266
  %510 = zext nneg i32 %509 to i64
  %511 = getelementptr [4 x i8], ptr %430, i64 %510
  store i32 %508, ptr %511, align 4, !tbaa !5
  %512 = load i8, ptr %494, align 1, !tbaa !9
  br label %513

513:                                              ; preds = %507, %497
  %514 = phi i8 [ %495, %497 ], [ %512, %507 ]
  %515 = zext i8 %514 to i32
  %516 = xor i32 %515, -1
  %517 = getelementptr inbounds nuw i8, ptr %487, i64 4
  store i32 %516, ptr %487, align 4, !tbaa !5
  br label %524

518:                                              ; preds = %493, %491
  %519 = getelementptr inbounds nuw i8, ptr %487, i64 4
  store i32 %441, ptr %487, align 4, !tbaa !5
  br label %524

520:                                              ; preds = %433
  %521 = icmp eq i32 %438, 0
  br i1 %521, label %524, label %522

522:                                              ; preds = %520
  %523 = xor i32 %438, -1
  store i32 %523, ptr %437, align 4, !tbaa !5
  br label %524

524:                                              ; preds = %522, %520, %518, %513
  %525 = phi ptr [ %517, %513 ], [ %519, %518 ], [ %436, %522 ], [ %436, %520 ]
  %526 = phi ptr [ %435, %513 ], [ %435, %518 ], [ %435, %522 ], [ %437, %520 ]
  %527 = phi i32 [ %488, %513 ], [ %488, %518 ], [ %434, %522 ], [ %434, %520 ]
  %528 = getelementptr inbounds nuw i8, ptr %437, i64 4
  %529 = icmp ult ptr %528, %429
  br i1 %529, label %433, label %530, !llvm.loop !92

530:                                              ; preds = %524
  %531 = ptrtoint ptr %526 to i64
  %532 = sub i64 %531, %432
  %533 = ashr exact i64 %532, 2
  %534 = add nsw i64 %533, 2147483648
  %535 = icmp ult i64 %534, 4294967296
  br i1 %535, label %537, label %536

536:                                              ; preds = %530
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.src, i32 noundef 1838, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #10
  unreachable

537:                                              ; preds = %530, %245
  %538 = phi i64 [ %409, %530 ], [ %170, %245 ]
  %539 = phi i64 [ %533, %530 ], [ %248, %245 ]
  %540 = trunc nsw i64 %539 to i32
  %541 = getelementptr i8, ptr %0, i64 %538
  %542 = getelementptr i8, ptr %541, i64 -1
  %543 = load i8, ptr %542, align 1, !tbaa !9
  store i8 %543, ptr %1, align 1, !tbaa !9
  %544 = icmp sgt i64 %539, 0
  br i1 %544, label %545, label %.loopexit56

545:                                              ; preds = %537
  %546 = icmp samesign ult i64 %539, 16
  br i1 %546, label %573, label %547

547:                                              ; preds = %545
  %548 = getelementptr i8, ptr %1, i64 1
  %549 = getelementptr i8, ptr %1, i64 %539
  %550 = getelementptr i8, ptr %549, i64 1
  %551 = shl nuw nsw i64 %539, 2
  %552 = getelementptr i8, ptr %31, i64 %551
  %553 = icmp ult ptr %548, %552
  %554 = icmp ult ptr %31, %550
  %555 = and i1 %553, %554
  br i1 %555, label %573, label %556

556:                                              ; preds = %547
  %557 = and i64 %539, 2147483640
  br label %558

558:                                              ; preds = %558, %556
  %559 = phi i64 [ 0, %556 ], [ %569, %558 ]
  %560 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %559
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 16
  %562 = load <4 x i32>, ptr %560, align 4, !tbaa !5, !alias.scope !93
  %563 = load <4 x i32>, ptr %561, align 4, !tbaa !5, !alias.scope !93
  %564 = trunc <4 x i32> %562 to <4 x i8>
  %565 = trunc <4 x i32> %563 to <4 x i8>
  %566 = getelementptr inbounds nuw i8, ptr %1, i64 %559
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 1
  %568 = getelementptr inbounds nuw i8, ptr %566, i64 5
  store <4 x i8> %564, ptr %567, align 1, !tbaa !9, !alias.scope !96, !noalias !93
  store <4 x i8> %565, ptr %568, align 1, !tbaa !9, !alias.scope !96, !noalias !93
  %569 = add nuw i64 %559, 8
  %570 = icmp eq i64 %569, %557
  br i1 %570, label %571, label %558, !llvm.loop !98

571:                                              ; preds = %558
  %572 = icmp eq i64 %539, %557
  br i1 %572, label %.loopexit56, label %573

573:                                              ; preds = %571, %547, %545
  %574 = phi i64 [ 0, %547 ], [ 0, %545 ], [ %557, %571 ]
  %575 = and i64 %539, 3
  %576 = icmp eq i64 %575, 0
  br i1 %576, label %.loopexit58, label %.preheader57

.preheader57:                                     ; preds = %573, %.preheader57
  %577 = phi i64 [ %579, %.preheader57 ], [ %574, %573 ]
  %578 = phi i64 [ %584, %.preheader57 ], [ 0, %573 ]
  %579 = add nuw nsw i64 %577, 1
  %580 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %577
  %581 = load i32, ptr %580, align 4, !tbaa !5
  %582 = trunc i32 %581 to i8
  %583 = getelementptr inbounds nuw i8, ptr %1, i64 %579
  store i8 %582, ptr %583, align 1, !tbaa !9
  %584 = add nuw nsw i64 %578, 1
  %585 = icmp eq i64 %584, %575
  br i1 %585, label %.loopexit58, label %.preheader57, !llvm.loop !99

.loopexit58:                                      ; preds = %.preheader57, %573
  %586 = phi i64 [ %574, %573 ], [ %579, %.preheader57 ]
  %587 = sub nsw i64 %574, %539
  %588 = icmp ugt i64 %587, -4
  br i1 %588, label %.loopexit56, label %.preheader55

.preheader55:                                     ; preds = %.loopexit58, %.preheader55
  %589 = phi i64 [ %605, %.preheader55 ], [ %586, %.loopexit58 ]
  %590 = add nuw nsw i64 %589, 1
  %591 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %589
  %592 = load i32, ptr %591, align 4, !tbaa !5
  %593 = trunc i32 %592 to i8
  %594 = getelementptr inbounds nuw i8, ptr %1, i64 %590
  store i8 %593, ptr %594, align 1, !tbaa !9
  %595 = add nuw nsw i64 %589, 2
  %596 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %590
  %597 = load i32, ptr %596, align 4, !tbaa !5
  %598 = trunc i32 %597 to i8
  %599 = getelementptr inbounds nuw i8, ptr %1, i64 %595
  store i8 %598, ptr %599, align 1, !tbaa !9
  %600 = add nuw nsw i64 %589, 3
  %601 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %595
  %602 = load i32, ptr %601, align 4, !tbaa !5
  %603 = trunc i32 %602 to i8
  %604 = getelementptr inbounds nuw i8, ptr %1, i64 %600
  store i8 %603, ptr %604, align 1, !tbaa !9
  %605 = add nuw nsw i64 %589, 4
  %606 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %600
  %607 = load i32, ptr %606, align 4, !tbaa !5
  %608 = trunc i32 %607 to i8
  %609 = getelementptr inbounds nuw i8, ptr %1, i64 %605
  store i8 %608, ptr %609, align 1, !tbaa !9
  %610 = icmp eq i64 %605, %539
  br i1 %610, label %.loopexit56, label %.preheader55, !llvm.loop !101

.loopexit56:                                      ; preds = %.preheader55, %.loopexit58, %571, %537
  %611 = phi i32 [ 0, %537 ], [ %540, %571 ], [ %540, %.loopexit58 ], [ %540, %.preheader55 ]
  %612 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %611, i32 1), !nosanitize !10
  %613 = extractvalue { i32, i1 } %612, 1, !nosanitize !10
  br i1 %613, label %24, label %614, !prof !11, !nosanitize !10

614:                                              ; preds = %.loopexit56
  %615 = extractvalue { i32, i1 } %612, 0
  %616 = icmp slt i32 %615, %3
  br i1 %616, label %617, label %.loopexit

617:                                              ; preds = %614
  %618 = zext i32 %615 to i64
  %619 = add nsw i32 %3, -2
  %620 = sub i32 %619, %611
  %621 = zext i32 %620 to i64
  %622 = add nuw nsw i64 %621, 1
  %623 = icmp ult i32 %620, 27
  br i1 %623, label %656, label %624

624:                                              ; preds = %617
  %625 = getelementptr i8, ptr %1, i64 %618
  %626 = getelementptr i8, ptr %1, i64 %621
  %627 = getelementptr i8, ptr %626, i64 %618
  %628 = getelementptr i8, ptr %627, i64 1
  %629 = shl nuw nsw i64 %618, 2
  %630 = getelementptr i8, ptr %31, i64 %629
  %631 = add nuw nsw i64 %618, %621
  %632 = shl nuw nsw i64 %631, 2
  %633 = getelementptr i8, ptr %31, i64 %632
  %634 = getelementptr i8, ptr %633, i64 4
  %635 = icmp ult ptr %625, %634
  %636 = icmp ult ptr %630, %628
  %637 = and i1 %636, %635
  br i1 %637, label %656, label %638

638:                                              ; preds = %624
  %639 = and i64 %622, 8589934584
  br label %640

640:                                              ; preds = %640, %638
  %641 = phi i64 [ 0, %638 ], [ %651, %640 ]
  %642 = add i64 %641, %618
  %643 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %642
  %644 = getelementptr inbounds nuw i8, ptr %643, i64 16
  %645 = load <4 x i32>, ptr %643, align 4, !tbaa !5, !alias.scope !102
  %646 = load <4 x i32>, ptr %644, align 4, !tbaa !5, !alias.scope !102
  %647 = trunc <4 x i32> %645 to <4 x i8>
  %648 = trunc <4 x i32> %646 to <4 x i8>
  %649 = getelementptr inbounds nuw i8, ptr %1, i64 %642
  %650 = getelementptr inbounds nuw i8, ptr %649, i64 4
  store <4 x i8> %647, ptr %649, align 1, !tbaa !9, !alias.scope !105, !noalias !102
  store <4 x i8> %648, ptr %650, align 1, !tbaa !9, !alias.scope !105, !noalias !102
  %651 = add nuw i64 %641, 8
  %652 = icmp eq i64 %651, %639
  br i1 %652, label %653, label %640, !llvm.loop !107

653:                                              ; preds = %640
  %654 = add nuw nsw i64 %639, %618
  %655 = icmp eq i64 %622, %639
  br i1 %655, label %.loopexit, label %656

656:                                              ; preds = %653, %624, %617
  %657 = phi i64 [ %618, %624 ], [ %618, %617 ], [ %654, %653 ]
  %658 = trunc i64 %657 to i32
  %659 = sub i32 %3, %658
  %660 = and i32 %659, 3
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %.loopexit54, label %.preheader53

.preheader53:                                     ; preds = %656, %.preheader53
  %662 = phi i64 [ %668, %.preheader53 ], [ %657, %656 ]
  %663 = phi i32 [ %669, %.preheader53 ], [ 0, %656 ]
  %664 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %662
  %665 = load i32, ptr %664, align 4, !tbaa !5
  %666 = trunc i32 %665 to i8
  %667 = getelementptr inbounds nuw i8, ptr %1, i64 %662
  store i8 %666, ptr %667, align 1, !tbaa !9
  %668 = add nuw nsw i64 %662, 1
  %669 = add nuw nsw i32 %663, 1
  %670 = icmp eq i32 %669, %660
  br i1 %670, label %.loopexit54, label %.preheader53, !llvm.loop !108

.loopexit54:                                      ; preds = %.preheader53, %656
  %671 = phi i64 [ %657, %656 ], [ %668, %.preheader53 ]
  %672 = sub i32 %658, %3
  %673 = icmp ugt i32 %672, -4
  br i1 %673, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit54, %.preheader
  %674 = phi i64 [ %694, %.preheader ], [ %671, %.loopexit54 ]
  %675 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %674
  %676 = load i32, ptr %675, align 4, !tbaa !5
  %677 = trunc i32 %676 to i8
  %678 = getelementptr inbounds nuw i8, ptr %1, i64 %674
  store i8 %677, ptr %678, align 1, !tbaa !9
  %679 = add nuw nsw i64 %674, 1
  %680 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %679
  %681 = load i32, ptr %680, align 4, !tbaa !5
  %682 = trunc i32 %681 to i8
  %683 = getelementptr inbounds nuw i8, ptr %1, i64 %679
  store i8 %682, ptr %683, align 1, !tbaa !9
  %684 = add nuw nsw i64 %674, 2
  %685 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %684
  %686 = load i32, ptr %685, align 4, !tbaa !5
  %687 = trunc i32 %686 to i8
  %688 = getelementptr inbounds nuw i8, ptr %1, i64 %684
  store i8 %687, ptr %688, align 1, !tbaa !9
  %689 = add nuw nsw i64 %674, 3
  %690 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %689
  %691 = load i32, ptr %690, align 4, !tbaa !5
  %692 = trunc i32 %691 to i8
  %693 = getelementptr inbounds nuw i8, ptr %1, i64 %689
  store i8 %692, ptr %693, align 1, !tbaa !9
  %694 = add nuw nsw i64 %674, 4
  %695 = trunc i64 %694 to i32
  %696 = icmp eq i32 %3, %695
  br i1 %696, label %.loopexit, label %.preheader, !llvm.loop !109

.loopexit:                                        ; preds = %.preheader, %.loopexit54, %653, %614
  %697 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %540, i32 1), !nosanitize !10
  %698 = extractvalue { i32, i1 } %697, 1, !nosanitize !10
  br i1 %698, label %24, label %699, !prof !11, !nosanitize !10

699:                                              ; preds = %.loopexit
  %700 = extractvalue { i32, i1 } %697, 0, !nosanitize !10
  br label %701

701:                                              ; preds = %699, %30
  %702 = phi i32 [ %700, %699 ], [ -2, %30 ]
  tail call void @free(ptr noundef %33) #11
  tail call void @free(ptr noundef %32) #11
  br i1 %20, label %703, label %704

703:                                              ; preds = %701
  tail call void @free(ptr noundef %31) #11
  br label %704

704:                                              ; preds = %703, %701, %17, %15, %7
  %705 = phi i32 [ -1, %7 ], [ 1, %17 ], [ 0, %15 ], [ %702, %703 ], [ %702, %701 ]
  ret i32 %705
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @ss_mintrosort(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
  %5 = alloca [16 x %struct.anon], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = add nsw i64 %9, 2147483648
  %11 = icmp ult i64 %10, 4294967296
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 411, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

13:                                               ; preds = %4
  %14 = and i64 %8, 261120
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = lshr i64 %9, 8
  %18 = and i64 %17, 255
  %19 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 8), !nosanitize !10
  %22 = extractvalue { i32, i1 } %21, 0, !nosanitize !10
  %23 = extractvalue { i32, i1 } %21, 1, !nosanitize !10
  br i1 %23, label %24, label %29, !prof !11, !nosanitize !10

24:                                               ; preds = %16
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

25:                                               ; preds = %13
  %26 = and i64 %9, 255
  %27 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %25, %16
  %30 = phi i32 [ %22, %16 ], [ %28, %25 ]
  %31 = getelementptr i8, ptr %0, i64 2
  br label %32

32:                                               ; preds = %.backedge, %29
  %33 = phi ptr [ %3, %29 ], [ %.be, %.backedge ]
  %34 = phi i32 [ 2, %29 ], [ %.be581, %.backedge ]
  %35 = phi ptr [ %2, %29 ], [ %.be582, %.backedge ]
  %36 = phi i32 [ 0, %29 ], [ %.be583, %.backedge ]
  %37 = phi i32 [ %30, %29 ], [ %.be584, %.backedge ]
  %38 = ptrtoint ptr %33 to i64
  %39 = ptrtoint ptr %35 to i64
  %40 = sub i64 %38, %39
  %41 = ashr exact i64 %40, 2
  %42 = icmp slt i64 %41, 9
  br i1 %42, label %43, label %142

43:                                               ; preds = %32
  %44 = icmp sgt i64 %41, 1
  br i1 %44, label %45, label %.loopexit141

45:                                               ; preds = %43
  %46 = getelementptr inbounds i8, ptr %33, i64 -8
  %47 = icmp ugt ptr %35, %46
  br i1 %47, label %.loopexit141, label %48

48:                                               ; preds = %45
  %49 = sext i32 %34 to i64
  %50 = getelementptr inbounds i8, ptr %0, i64 %49
  br label %51

51:                                               ; preds = %.loopexit, %48
  %52 = phi ptr [ %46, %48 ], [ %123, %.loopexit ]
  %53 = load i32, ptr %52, align 4, !tbaa !5
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds [4 x i8], ptr %1, i64 %55
  %57 = getelementptr i8, ptr %56, i64 4
  %58 = load i32, ptr %54, align 4, !tbaa !5
  br label %60

59:                                               ; preds = %114
  br label %60, !llvm.loop !110

60:                                               ; preds = %59, %51
  %61 = phi i32 [ %58, %51 ], [ %115, %59 ]
  %62 = phi ptr [ %54, %51 ], [ %112, %59 ]
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds [4 x i8], ptr %1, i64 %63
  %65 = load i32, ptr %56, align 4, !tbaa !5
  %66 = load i32, ptr %57, align 4, !tbaa !5
  %67 = load i32, ptr %64, align 4, !tbaa !5
  %68 = getelementptr i8, ptr %64, i64 4
  %69 = load i32, ptr %68, align 4, !tbaa !5
  %70 = sext i32 %65 to i64
  %71 = getelementptr inbounds i8, ptr %50, i64 %70
  %72 = sext i32 %67 to i64
  %73 = getelementptr inbounds i8, ptr %50, i64 %72
  %74 = sext i32 %66 to i64
  %75 = getelementptr i8, ptr %31, i64 %74
  %76 = sext i32 %69 to i64
  %77 = getelementptr i8, ptr %31, i64 %76
  %78 = icmp ult ptr %71, %75
  %79 = icmp ult ptr %73, %77
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %.preheader, label %.loopexit117

.preheader:                                       ; preds = %60, %86
  %81 = phi ptr [ %87, %86 ], [ %71, %60 ]
  %82 = phi ptr [ %88, %86 ], [ %73, %60 ]
  %83 = load i8, ptr %81, align 1, !tbaa !9
  %84 = load i8, ptr %82, align 1, !tbaa !9
  %85 = icmp eq i8 %83, %84
  br i1 %85, label %86, label %.loopexit116

86:                                               ; preds = %.preheader
  %87 = getelementptr inbounds nuw i8, ptr %81, i64 1
  %88 = getelementptr inbounds nuw i8, ptr %82, i64 1
  %89 = icmp ult ptr %87, %75
  %90 = icmp ult ptr %88, %77
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %.preheader, label %.loopexit117, !llvm.loop !26

.loopexit117:                                     ; preds = %86, %60
  %92 = phi ptr [ %73, %60 ], [ %88, %86 ]
  %93 = phi ptr [ %71, %60 ], [ %87, %86 ]
  %94 = phi i1 [ %78, %60 ], [ %89, %86 ]
  %95 = phi i1 [ %79, %60 ], [ %90, %86 ]
  br i1 %94, label %96, label %100

96:                                               ; preds = %.loopexit117
  br i1 %95, label %97, label %.preheader557

97:                                               ; preds = %96
  %98 = load i8, ptr %93, align 1, !tbaa !9
  %99 = load i8, ptr %92, align 1, !tbaa !9
  br label %.loopexit116

100:                                              ; preds = %.loopexit117
  %101 = sext i1 %95 to i32
  br label %.loopexit118

.loopexit116:                                     ; preds = %.preheader, %97
  %102 = phi i8 [ %99, %97 ], [ %84, %.preheader ]
  %103 = phi i8 [ %98, %97 ], [ %83, %.preheader ]
  %104 = zext i8 %103 to i32
  %105 = zext i8 %102 to i32
  %106 = sub nsw i32 %104, %105
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %.preheader557, label %.loopexit118

.preheader557:                                    ; preds = %.loopexit116, %96
  br label %108

108:                                              ; preds = %.preheader557, %114
  %109 = phi i32 [ %115, %114 ], [ %61, %.preheader557 ]
  %110 = phi ptr [ %112, %114 ], [ %62, %.preheader557 ]
  %111 = getelementptr inbounds i8, ptr %110, i64 -4
  store i32 %109, ptr %111, align 4, !tbaa !5
  %112 = getelementptr inbounds nuw i8, ptr %110, i64 4
  %113 = icmp ult ptr %112, %33
  br i1 %113, label %114, label %.loopexit

114:                                              ; preds = %108
  %115 = load i32, ptr %112, align 4, !tbaa !5
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %108, label %59, !llvm.loop !110

.loopexit118:                                     ; preds = %.loopexit116, %100
  %117 = phi i32 [ %101, %100 ], [ %106, %.loopexit116 ]
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %.loopexit

119:                                              ; preds = %.loopexit118
  %120 = xor i32 %61, -1
  store i32 %120, ptr %62, align 4, !tbaa !5
  br label %.loopexit

.loopexit:                                        ; preds = %108, %119, %.loopexit118
  %121 = phi ptr [ %62, %119 ], [ %62, %.loopexit118 ], [ %112, %108 ]
  %122 = getelementptr inbounds i8, ptr %121, i64 -4
  store i32 %53, ptr %122, align 4, !tbaa !5
  %123 = getelementptr inbounds i8, ptr %52, i64 -4
  %124 = icmp ugt ptr %35, %123
  br i1 %124, label %.loopexit141, label %51, !llvm.loop !111

.loopexit141:                                     ; preds = %.loopexit, %45, %43
  %125 = icmp sgt i32 %36, -1
  br i1 %125, label %127, label %126

126:                                              ; preds = %.loopexit141
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 417, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

127:                                              ; preds = %.loopexit141
  %128 = icmp eq i32 %36, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void

130:                                              ; preds = %1548, %.loopexit143, %392, %142
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

131:                                              ; preds = %127
  %132 = add nsw i32 %36, -1
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !112
  %136 = getelementptr inbounds nuw i8, ptr %134, i64 8
  %137 = load ptr, ptr %136, align 8, !tbaa !114
  %138 = getelementptr inbounds nuw i8, ptr %134, i64 16
  %139 = load i32, ptr %138, align 8, !tbaa !115
  %140 = getelementptr inbounds nuw i8, ptr %134, i64 20
  %141 = load i32, ptr %140, align 4, !tbaa !116
  br label %.backedge

142:                                              ; preds = %32
  %143 = sext i32 %34 to i64
  %144 = getelementptr inbounds i8, ptr %0, i64 %143
  %145 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %37, i32 -1)
  %146 = extractvalue { i32, i1 } %145, 0, !nosanitize !10
  %147 = extractvalue { i32, i1 } %145, 1, !nosanitize !10
  br i1 %147, label %130, label %148, !prof !11, !nosanitize !10

148:                                              ; preds = %142
  %149 = icmp eq i32 %37, 0
  br i1 %149, label %150, label %.loopexit157

150:                                              ; preds = %148
  %151 = icmp samesign ult i64 %41, 2147483648
  br i1 %151, label %153, label %152

152:                                              ; preds = %150
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 422, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

153:                                              ; preds = %150
  %154 = trunc nuw nsw i64 %41 to i32
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = lshr i64 %41, 1
  br label %182

159:                                              ; preds = %153
  %160 = add nsw i32 %154, -1
  %161 = lshr i32 %160, 1
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !5
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [4 x i8], ptr %1, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !5
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, ptr %144, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !9
  %171 = zext nneg i32 %160 to i64
  %172 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !5
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [4 x i8], ptr %1, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !5
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, ptr %144, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = icmp ult i8 %170, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %159
  store i32 %164, ptr %172, align 4, !tbaa !5
  store i32 %173, ptr %163, align 4, !tbaa !5
  br label %182

182:                                              ; preds = %181, %159, %157
  %183 = phi i64 [ %158, %157 ], [ %162, %181 ], [ %162, %159 ]
  %184 = phi i32 [ %154, %157 ], [ %160, %181 ], [ %160, %159 ]
  br label %185

185:                                              ; preds = %235, %182
  %186 = phi i64 [ %183, %182 ], [ %187, %235 ]
  %187 = add nsw i64 %186, -1
  %188 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !5
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [4 x i8], ptr %1, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !5
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %144, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !9
  %196 = trunc nuw nsw i64 %187 to i32
  br label %198

197:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

198:                                              ; preds = %225, %185
  %199 = phi i32 [ %227, %225 ], [ %196, %185 ]
  %200 = shl nsw i32 %199, 1
  %201 = or disjoint i32 %200, 1
  %202 = icmp slt i32 %201, %184
  br i1 %202, label %203, label %235

203:                                              ; preds = %198
  %204 = add nsw i32 %200, 2
  %205 = sext i32 %201 to i64
  %206 = getelementptr inbounds [4 x i8], ptr %35, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !5
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [4 x i8], ptr %1, i64 %208
  %210 = load i32, ptr %209, align 4, !tbaa !5
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, ptr %144, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !9
  %214 = sext i32 %204 to i64
  %215 = getelementptr inbounds [4 x i8], ptr %35, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !5
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [4 x i8], ptr %1, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !5
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, ptr %144, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !9
  %223 = tail call i8 @llvm.umax.i8(i8 %213, i8 %222)
  %224 = icmp ugt i8 %223, %195
  br i1 %224, label %225, label %235

225:                                              ; preds = %203
  %226 = icmp ult i8 %213, %222
  %227 = select i1 %226, i32 %204, i32 %201
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [4 x i8], ptr %35, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !5
  %231 = sext i32 %199 to i64
  %232 = getelementptr inbounds [4 x i8], ptr %35, i64 %231
  store i32 %230, ptr %232, align 4, !tbaa !5
  %233 = add i32 %227, 1073741824
  %234 = icmp sgt i32 %233, -1
  br i1 %234, label %198, label %197, !prof !61, !llvm.loop !117, !nosanitize !10

235:                                              ; preds = %203, %198
  %236 = sext i32 %199 to i64
  %237 = getelementptr inbounds [4 x i8], ptr %35, i64 %236
  store i32 %189, ptr %237, align 4, !tbaa !5
  %238 = icmp sgt i64 %186, 1
  br i1 %238, label %185, label %239, !llvm.loop !118

239:                                              ; preds = %235
  br i1 %156, label %240, label %293

240:                                              ; preds = %239
  %241 = load i32, ptr %35, align 4, !tbaa !5
  %242 = zext nneg i32 %184 to i64
  %243 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !5
  store i32 %244, ptr %35, align 4, !tbaa !5
  store i32 %241, ptr %243, align 4, !tbaa !5
  %245 = load i32, ptr %35, align 4, !tbaa !5
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x i8], ptr %1, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !5
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, ptr %144, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !9
  br label %253

252:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

253:                                              ; preds = %280, %240
  %254 = phi i32 [ %282, %280 ], [ 0, %240 ]
  %255 = shl nsw i32 %254, 1
  %256 = or disjoint i32 %255, 1
  %257 = icmp slt i32 %256, %184
  br i1 %257, label %258, label %290

258:                                              ; preds = %253
  %259 = add nsw i32 %255, 2
  %260 = sext i32 %256 to i64
  %261 = getelementptr inbounds [4 x i8], ptr %35, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !5
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [4 x i8], ptr %1, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !5
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, ptr %144, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !9
  %269 = sext i32 %259 to i64
  %270 = getelementptr inbounds [4 x i8], ptr %35, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !5
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [4 x i8], ptr %1, i64 %272
  %274 = load i32, ptr %273, align 4, !tbaa !5
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, ptr %144, i64 %275
  %277 = load i8, ptr %276, align 1, !tbaa !9
  %278 = tail call i8 @llvm.umax.i8(i8 %268, i8 %277)
  %279 = icmp ugt i8 %278, %251
  br i1 %279, label %280, label %290

280:                                              ; preds = %258
  %281 = icmp ult i8 %268, %277
  %282 = select i1 %281, i32 %259, i32 %256
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [4 x i8], ptr %35, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !5
  %286 = sext i32 %254 to i64
  %287 = getelementptr inbounds [4 x i8], ptr %35, i64 %286
  store i32 %285, ptr %287, align 4, !tbaa !5
  %288 = add i32 %282, 1073741824
  %289 = icmp sgt i32 %288, -1
  br i1 %289, label %253, label %252, !prof !61, !llvm.loop !117, !nosanitize !10

290:                                              ; preds = %258, %253
  %291 = sext i32 %254 to i64
  %292 = getelementptr inbounds [4 x i8], ptr %35, i64 %291
  store i32 %245, ptr %292, align 4, !tbaa !5
  br label %293

293:                                              ; preds = %290, %239
  %294 = add nsw i32 %184, -1
  %295 = zext nneg i32 %294 to i64
  br label %296

296:                                              ; preds = %345, %293
  %297 = phi i64 [ %295, %293 ], [ %348, %345 ]
  %298 = load i32, ptr %35, align 4, !tbaa !5
  %299 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %297
  %300 = load i32, ptr %299, align 4, !tbaa !5
  store i32 %300, ptr %35, align 4, !tbaa !5
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [4 x i8], ptr %1, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !5
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, ptr %144, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !9
  br label %308

307:                                              ; preds = %335
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

308:                                              ; preds = %335, %296
  %309 = phi i32 [ %337, %335 ], [ 0, %296 ]
  %310 = shl nsw i32 %309, 1
  %311 = or disjoint i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = icmp sgt i64 %297, %312
  br i1 %313, label %314, label %345

314:                                              ; preds = %308
  %315 = add nsw i32 %310, 2
  %316 = getelementptr inbounds [4 x i8], ptr %35, i64 %312
  %317 = load i32, ptr %316, align 4, !tbaa !5
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [4 x i8], ptr %1, i64 %318
  %320 = load i32, ptr %319, align 4, !tbaa !5
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, ptr %144, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !9
  %324 = sext i32 %315 to i64
  %325 = getelementptr inbounds [4 x i8], ptr %35, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !5
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [4 x i8], ptr %1, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !5
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, ptr %144, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !9
  %333 = tail call i8 @llvm.umax.i8(i8 %323, i8 %332)
  %334 = icmp ugt i8 %333, %306
  br i1 %334, label %335, label %345

335:                                              ; preds = %314
  %336 = icmp ult i8 %323, %332
  %337 = select i1 %336, i32 %315, i32 %311
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [4 x i8], ptr %35, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !5
  %341 = sext i32 %309 to i64
  %342 = getelementptr inbounds [4 x i8], ptr %35, i64 %341
  store i32 %340, ptr %342, align 4, !tbaa !5
  %343 = add i32 %337, 1073741824
  %344 = icmp sgt i32 %343, -1
  br i1 %344, label %308, label %307, !prof !61, !llvm.loop !117, !nosanitize !10

345:                                              ; preds = %314, %308
  %346 = sext i32 %309 to i64
  %347 = getelementptr inbounds [4 x i8], ptr %35, i64 %346
  store i32 %300, ptr %347, align 4, !tbaa !5
  store i32 %298, ptr %299, align 4, !tbaa !5
  %348 = add nsw i64 %297, -1
  %349 = icmp sgt i64 %297, 1
  br i1 %349, label %296, label %.loopexit157, !llvm.loop !119

.loopexit157:                                     ; preds = %345, %148
  %350 = icmp slt i32 %146, 0
  br i1 %350, label %351, label %577

351:                                              ; preds = %.loopexit157
  %352 = load i32, ptr %35, align 4, !tbaa !5
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [4 x i8], ptr %1, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !5
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, ptr %144, i64 %356
  %358 = load i8, ptr %357, align 1, !tbaa !9
  %359 = zext i8 %358 to i32
  %360 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %361 = icmp ult ptr %360, %33
  br i1 %361, label %.preheader142, label %392

.preheader142:                                    ; preds = %351, %379
  %362 = phi ptr [ %382, %379 ], [ %360, %351 ]
  %363 = phi i32 [ %381, %379 ], [ %359, %351 ]
  %364 = phi ptr [ %380, %379 ], [ %35, %351 ]
  %365 = load i32, ptr %362, align 4, !tbaa !5
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [4 x i8], ptr %1, i64 %366
  %368 = load i32, ptr %367, align 4, !tbaa !5
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8, ptr %144, i64 %369
  %371 = load i8, ptr %370, align 1, !tbaa !9
  %372 = zext i8 %371 to i32
  %373 = icmp eq i32 %363, %372
  br i1 %373, label %379, label %374

374:                                              ; preds = %.preheader142
  %375 = ptrtoint ptr %362 to i64
  %376 = ptrtoint ptr %364 to i64
  %377 = sub i64 %375, %376
  %378 = icmp sgt i64 %377, 4
  br i1 %378, label %384, label %379

379:                                              ; preds = %374, %.preheader142
  %380 = phi ptr [ %364, %.preheader142 ], [ %362, %374 ]
  %381 = phi i32 [ %363, %.preheader142 ], [ %372, %374 ]
  %382 = getelementptr inbounds nuw i8, ptr %362, i64 4
  %383 = icmp ult ptr %382, %33
  br i1 %383, label %.preheader142, label %384, !llvm.loop !120

384:                                              ; preds = %379, %374
  %385 = phi ptr [ %380, %379 ], [ %364, %374 ]
  %386 = phi i32 [ %381, %379 ], [ %363, %374 ]
  %387 = phi ptr [ %382, %379 ], [ %362, %374 ]
  %388 = load i32, ptr %385, align 4, !tbaa !5
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [4 x i8], ptr %1, i64 %389
  %391 = load i32, ptr %390, align 4, !tbaa !5
  br label %392

392:                                              ; preds = %384, %351
  %393 = phi i32 [ %355, %351 ], [ %391, %384 ]
  %394 = phi ptr [ %35, %351 ], [ %385, %384 ]
  %395 = phi i32 [ %359, %351 ], [ %386, %384 ]
  %396 = phi ptr [ %360, %351 ], [ %387, %384 ]
  %397 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %393, i32 -1)
  %398 = extractvalue { i32, i1 } %397, 1, !nosanitize !10
  br i1 %398, label %130, label %399, !prof !11, !nosanitize !10

399:                                              ; preds = %392
  %400 = extractvalue { i32, i1 } %397, 0, !nosanitize !10
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8, ptr %144, i64 %401
  %403 = load i8, ptr %402, align 1, !tbaa !9
  %404 = zext i8 %403 to i32
  %405 = icmp samesign ugt i32 %395, %404
  br i1 %405, label %406, label %472

406:                                              ; preds = %399
  %407 = getelementptr inbounds i8, ptr %394, i64 -4
  br label %408

408:                                              ; preds = %464, %406
  %409 = phi ptr [ %396, %406 ], [ %441, %464 ]
  %410 = phi ptr [ %407, %406 ], [ %438, %464 ]
  %411 = getelementptr inbounds nuw i8, ptr %410, i64 4
  %412 = icmp ult ptr %411, %409
  br i1 %412, label %.preheader120, label %.loopexit122

.preheader120:                                    ; preds = %408, %434
  %413 = phi ptr [ %436, %434 ], [ %411, %408 ]
  %414 = load i32, ptr %413, align 4, !tbaa !5
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [4 x i8], ptr %1, i64 %415
  %417 = load i32, ptr %416, align 4, !tbaa !5
  %418 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %417, i32 %34), !nosanitize !10
  %419 = extractvalue { i32, i1 } %418, 0, !nosanitize !10
  %420 = extractvalue { i32, i1 } %418, 1, !nosanitize !10
  br i1 %420, label %.loopexit119, label %421, !prof !11, !nosanitize !10

.loopexit119:                                     ; preds = %424, %421, %.preheader120, %454, %451, %443
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

421:                                              ; preds = %.preheader120
  %422 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %414, i32 1), !nosanitize !10
  %423 = extractvalue { i32, i1 } %422, 1, !nosanitize !10
  br i1 %423, label %.loopexit119, label %424, !prof !11, !nosanitize !10

424:                                              ; preds = %421
  %425 = extractvalue { i32, i1 } %422, 0, !nosanitize !10
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [4 x i8], ptr %1, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !5
  %429 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %428, i32 1), !nosanitize !10
  %430 = extractvalue { i32, i1 } %429, 1, !nosanitize !10
  br i1 %430, label %.loopexit119, label %431, !prof !11, !nosanitize !10

431:                                              ; preds = %424
  %432 = extractvalue { i32, i1 } %429, 0, !nosanitize !10
  %433 = icmp slt i32 %419, %432
  br i1 %433, label %.loopexit122, label %434

434:                                              ; preds = %431
  %435 = xor i32 %414, -1
  store i32 %435, ptr %413, align 4, !tbaa !5
  %436 = getelementptr inbounds nuw i8, ptr %413, i64 4
  %437 = icmp ult ptr %436, %409
  br i1 %437, label %.preheader120, label %.loopexit122, !llvm.loop !121

.loopexit122:                                     ; preds = %434, %431, %408
  %438 = phi ptr [ %411, %408 ], [ %436, %434 ], [ %413, %431 ]
  br label %439

439:                                              ; preds = %461, %.loopexit122
  %440 = phi ptr [ %409, %.loopexit122 ], [ %441, %461 ]
  %441 = getelementptr inbounds i8, ptr %440, i64 -4
  %442 = icmp ult ptr %438, %441
  br i1 %442, label %443, label %467

443:                                              ; preds = %439
  %444 = load i32, ptr %441, align 4, !tbaa !5
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [4 x i8], ptr %1, i64 %445
  %447 = load i32, ptr %446, align 4, !tbaa !5
  %448 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %447, i32 %34), !nosanitize !10
  %449 = extractvalue { i32, i1 } %448, 0, !nosanitize !10
  %450 = extractvalue { i32, i1 } %448, 1, !nosanitize !10
  br i1 %450, label %.loopexit119, label %451, !prof !11, !nosanitize !10

451:                                              ; preds = %443
  %452 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %444, i32 1), !nosanitize !10
  %453 = extractvalue { i32, i1 } %452, 1, !nosanitize !10
  br i1 %453, label %.loopexit119, label %454, !prof !11, !nosanitize !10

454:                                              ; preds = %451
  %455 = extractvalue { i32, i1 } %452, 0, !nosanitize !10
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [4 x i8], ptr %1, i64 %456
  %458 = load i32, ptr %457, align 4, !tbaa !5
  %459 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %458, i32 1), !nosanitize !10
  %460 = extractvalue { i32, i1 } %459, 1, !nosanitize !10
  br i1 %460, label %.loopexit119, label %461, !prof !11, !nosanitize !10

461:                                              ; preds = %454
  %462 = extractvalue { i32, i1 } %459, 0, !nosanitize !10
  %463 = icmp slt i32 %449, %462
  br i1 %463, label %439, label %464, !llvm.loop !122

464:                                              ; preds = %461
  %465 = xor i32 %444, -1
  %466 = load i32, ptr %438, align 4, !tbaa !5
  store i32 %466, ptr %441, align 4, !tbaa !5
  store i32 %465, ptr %438, align 4, !tbaa !5
  br label %408

467:                                              ; preds = %439
  %468 = icmp ult ptr %394, %438
  br i1 %468, label %469, label %472

469:                                              ; preds = %467
  %470 = load i32, ptr %394, align 4, !tbaa !5
  %471 = xor i32 %470, -1
  store i32 %471, ptr %394, align 4, !tbaa !5
  br label %472

472:                                              ; preds = %469, %467, %399
  %473 = phi ptr [ %394, %399 ], [ %438, %467 ], [ %438, %469 ]
  %474 = ptrtoint ptr %396 to i64
  %475 = ptrtoint ptr %473 to i64
  %476 = sub i64 %474, %475
  %477 = ashr exact i64 %476, 2
  %478 = sub i64 %38, %474
  %479 = ashr exact i64 %478, 2
  %480 = icmp sgt i64 %477, %479
  br i1 %480, label %516, label %481

481:                                              ; preds = %472
  %482 = icmp sgt i64 %477, 1
  br i1 %482, label %483, label %.backedge

483:                                              ; preds = %481
  %484 = icmp slt i32 %36, 16
  br i1 %484, label %486, label %485

485:                                              ; preds = %483
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

486:                                              ; preds = %483
  %487 = sext i32 %36 to i64
  %488 = getelementptr inbounds [24 x i8], ptr %5, i64 %487
  store ptr %396, ptr %488, align 8, !tbaa !112
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 8
  store ptr %33, ptr %489, align 8, !tbaa !114
  %490 = getelementptr inbounds nuw i8, ptr %488, i64 16
  store i32 %34, ptr %490, align 8, !tbaa !115
  %491 = add nsw i32 %36, 1
  %492 = getelementptr inbounds nuw i8, ptr %488, i64 20
  store i32 -1, ptr %492, align 4, !tbaa !116
  %493 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %494 = extractvalue { i32, i1 } %493, 0, !nosanitize !10
  %495 = extractvalue { i32, i1 } %493, 1, !nosanitize !10
  br i1 %495, label %496, label %497, !prof !11, !nosanitize !10

496:                                              ; preds = %1651, %1519, %1478, %1426, %1392, %1351, %1299, %553, %521, %486
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

497:                                              ; preds = %486
  %498 = icmp samesign ult i64 %477, 2147483648
  br i1 %498, label %500, label %499

499:                                              ; preds = %497
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 437, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

500:                                              ; preds = %497
  %501 = and i64 %476, 261120
  %502 = icmp eq i64 %501, 0
  br i1 %502, label %512, label %503

503:                                              ; preds = %500
  %504 = lshr i64 %477, 8
  %505 = and i64 %504, 255
  %506 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %505
  %507 = load i32, ptr %506, align 4, !tbaa !5
  %508 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %507, i32 8), !nosanitize !10
  %509 = extractvalue { i32, i1 } %508, 0, !nosanitize !10
  %510 = extractvalue { i32, i1 } %508, 1, !nosanitize !10
  br i1 %510, label %511, label %.backedge, !prof !11, !nosanitize !10

511:                                              ; preds = %503
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

512:                                              ; preds = %500
  %513 = and i64 %477, 255
  %514 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %513
  %515 = load i32, ptr %514, align 4, !tbaa !5
  br label %.backedge

516:                                              ; preds = %472
  %517 = icmp sgt i64 %479, 1
  br i1 %517, label %518, label %553

518:                                              ; preds = %516
  %519 = icmp slt i32 %36, 16
  br i1 %519, label %521, label %520

520:                                              ; preds = %518
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 443, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

521:                                              ; preds = %518
  %522 = sext i32 %36 to i64
  %523 = getelementptr inbounds [24 x i8], ptr %5, i64 %522
  store ptr %473, ptr %523, align 8, !tbaa !112
  %524 = getelementptr inbounds nuw i8, ptr %523, i64 8
  store ptr %396, ptr %524, align 8, !tbaa !114
  %525 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %526 = extractvalue { i32, i1 } %525, 1, !nosanitize !10
  br i1 %526, label %496, label %527, !prof !11, !nosanitize !10

527:                                              ; preds = %521
  %528 = extractvalue { i32, i1 } %525, 0, !nosanitize !10
  %529 = getelementptr inbounds nuw i8, ptr %523, i64 16
  store i32 %528, ptr %529, align 8, !tbaa !115
  %530 = add nsw i64 %477, 2147483648
  %531 = icmp ult i64 %530, 4294967296
  br i1 %531, label %533, label %532

532:                                              ; preds = %527
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 443, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

533:                                              ; preds = %527
  %534 = and i64 %476, 261120
  %535 = icmp eq i64 %534, 0
  br i1 %535, label %545, label %536

536:                                              ; preds = %533
  %537 = lshr i64 %477, 8
  %538 = and i64 %537, 255
  %539 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %538
  %540 = load i32, ptr %539, align 4, !tbaa !5
  %541 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %540, i32 8), !nosanitize !10
  %542 = extractvalue { i32, i1 } %541, 0, !nosanitize !10
  %543 = extractvalue { i32, i1 } %541, 1, !nosanitize !10
  br i1 %543, label %544, label %549, !prof !11, !nosanitize !10

544:                                              ; preds = %536
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

545:                                              ; preds = %533
  %546 = and i64 %477, 255
  %547 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %546
  %548 = load i32, ptr %547, align 4, !tbaa !5
  br label %549

549:                                              ; preds = %545, %536
  %550 = phi i32 [ %542, %536 ], [ %548, %545 ]
  %551 = add nsw i32 %36, 1
  %552 = getelementptr inbounds nuw i8, ptr %523, i64 20
  store i32 %550, ptr %552, align 4, !tbaa !116
  br label %.backedge

553:                                              ; preds = %516
  %554 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %555 = extractvalue { i32, i1 } %554, 0, !nosanitize !10
  %556 = extractvalue { i32, i1 } %554, 1, !nosanitize !10
  br i1 %556, label %496, label %557, !prof !11, !nosanitize !10

557:                                              ; preds = %553
  %558 = add nsw i64 %477, 2147483648
  %559 = icmp ult i64 %558, 4294967296
  br i1 %559, label %561, label %560

560:                                              ; preds = %557
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

561:                                              ; preds = %557
  %562 = and i64 %476, 261120
  %563 = icmp eq i64 %562, 0
  br i1 %563, label %573, label %564

564:                                              ; preds = %561
  %565 = lshr i64 %477, 8
  %566 = and i64 %565, 255
  %567 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %566
  %568 = load i32, ptr %567, align 4, !tbaa !5
  %569 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %568, i32 8), !nosanitize !10
  %570 = extractvalue { i32, i1 } %569, 0, !nosanitize !10
  %571 = extractvalue { i32, i1 } %569, 1, !nosanitize !10
  br i1 %571, label %572, label %.backedge, !prof !11, !nosanitize !10

572:                                              ; preds = %564
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

573:                                              ; preds = %561
  %574 = and i64 %477, 255
  %575 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %574
  %576 = load i32, ptr %575, align 4, !tbaa !5
  br label %.backedge

577:                                              ; preds = %.loopexit157
  %578 = icmp ult i64 %41, 2147483648
  br i1 %578, label %580, label %579

579:                                              ; preds = %577
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 356, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_pivot) #10
  unreachable

580:                                              ; preds = %577
  %581 = lshr i64 %41, 1
  %582 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %581
  %583 = icmp samesign ult i64 %41, 513
  br i1 %583, label %584, label %738

584:                                              ; preds = %580
  %585 = icmp samesign ult i64 %41, 33
  br i1 %585, label %586, label %630

586:                                              ; preds = %584
  %587 = getelementptr inbounds i8, ptr %33, i64 -4
  %588 = load i32, ptr %35, align 4, !tbaa !5
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [4 x i8], ptr %1, i64 %589
  %591 = load i32, ptr %590, align 4, !tbaa !5
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i8, ptr %144, i64 %592
  %594 = load i8, ptr %593, align 1, !tbaa !9
  %595 = load i32, ptr %582, align 4, !tbaa !5
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds [4 x i8], ptr %1, i64 %596
  %598 = load i32, ptr %597, align 4, !tbaa !5
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i8, ptr %144, i64 %599
  %601 = load i8, ptr %600, align 1, !tbaa !9
  %602 = icmp ugt i8 %594, %601
  %603 = select i1 %602, i32 %588, i32 %595
  %604 = select i1 %602, ptr %35, ptr %582
  %605 = sext i32 %603 to i64
  %606 = getelementptr inbounds [4 x i8], ptr %1, i64 %605
  %607 = load i32, ptr %606, align 4, !tbaa !5
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i8, ptr %144, i64 %608
  %610 = load i8, ptr %609, align 1, !tbaa !9
  %611 = load i32, ptr %587, align 4, !tbaa !5
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [4 x i8], ptr %1, i64 %612
  %614 = load i32, ptr %613, align 4, !tbaa !5
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i8, ptr %144, i64 %615
  %617 = load i8, ptr %616, align 1, !tbaa !9
  %618 = icmp ugt i8 %610, %617
  br i1 %618, label %619, label %928

619:                                              ; preds = %586
  %620 = select i1 %602, i32 %595, i32 %588
  %621 = select i1 %602, ptr %582, ptr %35
  %622 = sext i32 %620 to i64
  %623 = getelementptr inbounds [4 x i8], ptr %1, i64 %622
  %624 = load i32, ptr %623, align 4, !tbaa !5
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i8, ptr %144, i64 %625
  %627 = load i8, ptr %626, align 1, !tbaa !9
  %628 = icmp ugt i8 %627, %617
  %629 = select i1 %628, ptr %621, ptr %587
  br label %928

630:                                              ; preds = %584
  %631 = lshr i64 %41, 2
  %632 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %631
  %633 = getelementptr inbounds i8, ptr %33, i64 -4
  %634 = sub nsw i64 0, %631
  %635 = getelementptr inbounds [4 x i8], ptr %633, i64 %634
  %636 = load i32, ptr %632, align 4, !tbaa !5
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds [4 x i8], ptr %1, i64 %637
  %639 = load i32, ptr %638, align 4, !tbaa !5
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i8, ptr %144, i64 %640
  %642 = load i8, ptr %641, align 1, !tbaa !9
  %643 = load i32, ptr %582, align 4, !tbaa !5
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds [4 x i8], ptr %1, i64 %644
  %646 = load i32, ptr %645, align 4, !tbaa !5
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds i8, ptr %144, i64 %647
  %649 = load i8, ptr %648, align 1, !tbaa !9
  %650 = icmp ugt i8 %642, %649
  %651 = select i1 %650, i32 %643, i32 %636
  %652 = select i1 %650, ptr %582, ptr %632
  %653 = select i1 %650, ptr %632, ptr %582
  %654 = load i32, ptr %635, align 4, !tbaa !5
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [4 x i8], ptr %1, i64 %655
  %657 = load i32, ptr %656, align 4, !tbaa !5
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i8, ptr %144, i64 %658
  %660 = load i8, ptr %659, align 1, !tbaa !9
  %661 = load i32, ptr %633, align 4, !tbaa !5
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds [4 x i8], ptr %1, i64 %662
  %664 = load i32, ptr %663, align 4, !tbaa !5
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i8, ptr %144, i64 %665
  %667 = load i8, ptr %666, align 1, !tbaa !9
  %668 = icmp ugt i8 %660, %667
  %669 = select i1 %668, i32 %661, i32 %654
  %670 = select i1 %668, ptr %633, ptr %635
  %671 = select i1 %668, ptr %635, ptr %633
  %672 = sext i32 %651 to i64
  %673 = getelementptr inbounds [4 x i8], ptr %1, i64 %672
  %674 = load i32, ptr %673, align 4, !tbaa !5
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i8, ptr %144, i64 %675
  %677 = load i8, ptr %676, align 1, !tbaa !9
  %678 = sext i32 %669 to i64
  %679 = getelementptr inbounds [4 x i8], ptr %1, i64 %678
  %680 = load i32, ptr %679, align 4, !tbaa !5
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i8, ptr %144, i64 %681
  %683 = load i8, ptr %682, align 1, !tbaa !9
  %684 = icmp ugt i8 %677, %683
  %685 = select i1 %684, ptr %671, ptr %653
  %686 = select i1 %684, ptr %652, ptr %670
  %687 = select i1 %684, ptr %653, ptr %671
  %688 = load i32, ptr %35, align 4, !tbaa !5
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [4 x i8], ptr %1, i64 %689
  %691 = load i32, ptr %690, align 4, !tbaa !5
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i8, ptr %144, i64 %692
  %694 = load i8, ptr %693, align 1, !tbaa !9
  %695 = load i32, ptr %685, align 4, !tbaa !5
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds [4 x i8], ptr %1, i64 %696
  %698 = load i32, ptr %697, align 4, !tbaa !5
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i8, ptr %144, i64 %699
  %701 = load i8, ptr %700, align 1, !tbaa !9
  %702 = icmp ugt i8 %694, %701
  %703 = select i1 %702, i32 %695, i32 %688
  %704 = select i1 %702, ptr %685, ptr %35
  %705 = select i1 %702, ptr %35, ptr %685
  %706 = sext i32 %703 to i64
  %707 = getelementptr inbounds [4 x i8], ptr %1, i64 %706
  %708 = load i32, ptr %707, align 4, !tbaa !5
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i8, ptr %144, i64 %709
  %711 = load i8, ptr %710, align 1, !tbaa !9
  %712 = load i32, ptr %686, align 4, !tbaa !5
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [4 x i8], ptr %1, i64 %713
  %715 = load i32, ptr %714, align 4, !tbaa !5
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds i8, ptr %144, i64 %716
  %718 = load i8, ptr %717, align 1, !tbaa !9
  %719 = icmp ugt i8 %711, %718
  %720 = select i1 %719, ptr %687, ptr %705
  %721 = select i1 %719, ptr %704, ptr %686
  %722 = load i32, ptr %720, align 4, !tbaa !5
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds [4 x i8], ptr %1, i64 %723
  %725 = load i32, ptr %724, align 4, !tbaa !5
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds i8, ptr %144, i64 %726
  %728 = load i8, ptr %727, align 1, !tbaa !9
  %729 = load i32, ptr %721, align 4, !tbaa !5
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [4 x i8], ptr %1, i64 %730
  %732 = load i32, ptr %731, align 4, !tbaa !5
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds i8, ptr %144, i64 %733
  %735 = load i8, ptr %734, align 1, !tbaa !9
  %736 = icmp ugt i8 %728, %735
  %737 = select i1 %736, ptr %721, ptr %720
  br label %928

738:                                              ; preds = %580
  %739 = trunc nuw nsw i64 %41 to i32
  %740 = lshr i32 %739, 3
  %741 = zext nneg i32 %740 to i64
  %742 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %741
  %743 = shl nuw nsw i32 %740, 1
  %744 = zext nneg i32 %743 to i64
  %745 = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %744
  %746 = load i32, ptr %35, align 4, !tbaa !5
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds [4 x i8], ptr %1, i64 %747
  %749 = load i32, ptr %748, align 4, !tbaa !5
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds i8, ptr %144, i64 %750
  %752 = load i8, ptr %751, align 1, !tbaa !9
  %753 = load i32, ptr %742, align 4, !tbaa !5
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds [4 x i8], ptr %1, i64 %754
  %756 = load i32, ptr %755, align 4, !tbaa !5
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds i8, ptr %144, i64 %757
  %759 = load i8, ptr %758, align 1, !tbaa !9
  %760 = icmp ugt i8 %752, %759
  %761 = select i1 %760, i32 %746, i32 %753
  %762 = select i1 %760, ptr %35, ptr %742
  %763 = sext i32 %761 to i64
  %764 = getelementptr inbounds [4 x i8], ptr %1, i64 %763
  %765 = load i32, ptr %764, align 4, !tbaa !5
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i8, ptr %144, i64 %766
  %768 = load i8, ptr %767, align 1, !tbaa !9
  %769 = load i32, ptr %745, align 4, !tbaa !5
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds [4 x i8], ptr %1, i64 %770
  %772 = load i32, ptr %771, align 4, !tbaa !5
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i8, ptr %144, i64 %773
  %775 = load i8, ptr %774, align 1, !tbaa !9
  %776 = icmp ugt i8 %768, %775
  br i1 %776, label %777, label %788

777:                                              ; preds = %738
  %778 = select i1 %760, i32 %753, i32 %746
  %779 = select i1 %760, ptr %742, ptr %35
  %780 = sext i32 %778 to i64
  %781 = getelementptr inbounds [4 x i8], ptr %1, i64 %780
  %782 = load i32, ptr %781, align 4, !tbaa !5
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds i8, ptr %144, i64 %783
  %785 = load i8, ptr %784, align 1, !tbaa !9
  %786 = icmp ugt i8 %785, %775
  %787 = select i1 %786, ptr %779, ptr %745
  br label %788

788:                                              ; preds = %777, %738
  %789 = phi ptr [ %787, %777 ], [ %762, %738 ]
  %790 = sub nsw i64 0, %741
  %791 = getelementptr inbounds [4 x i8], ptr %582, i64 %790
  %792 = getelementptr inbounds nuw [4 x i8], ptr %582, i64 %741
  %793 = load i32, ptr %791, align 4, !tbaa !5
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds [4 x i8], ptr %1, i64 %794
  %796 = load i32, ptr %795, align 4, !tbaa !5
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds i8, ptr %144, i64 %797
  %799 = load i8, ptr %798, align 1, !tbaa !9
  %800 = load i32, ptr %582, align 4, !tbaa !5
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds [4 x i8], ptr %1, i64 %801
  %803 = load i32, ptr %802, align 4, !tbaa !5
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i8, ptr %144, i64 %804
  %806 = load i8, ptr %805, align 1, !tbaa !9
  %807 = icmp ugt i8 %799, %806
  %808 = select i1 %807, i32 %793, i32 %800
  %809 = select i1 %807, ptr %791, ptr %582
  %810 = sext i32 %808 to i64
  %811 = getelementptr inbounds [4 x i8], ptr %1, i64 %810
  %812 = load i32, ptr %811, align 4, !tbaa !5
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds i8, ptr %144, i64 %813
  %815 = load i8, ptr %814, align 1, !tbaa !9
  %816 = load i32, ptr %792, align 4, !tbaa !5
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds [4 x i8], ptr %1, i64 %817
  %819 = load i32, ptr %818, align 4, !tbaa !5
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds i8, ptr %144, i64 %820
  %822 = load i8, ptr %821, align 1, !tbaa !9
  %823 = icmp ugt i8 %815, %822
  br i1 %823, label %824, label %835

824:                                              ; preds = %788
  %825 = select i1 %807, i32 %800, i32 %793
  %826 = select i1 %807, ptr %582, ptr %791
  %827 = sext i32 %825 to i64
  %828 = getelementptr inbounds [4 x i8], ptr %1, i64 %827
  %829 = load i32, ptr %828, align 4, !tbaa !5
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds i8, ptr %144, i64 %830
  %832 = load i8, ptr %831, align 1, !tbaa !9
  %833 = icmp ugt i8 %832, %822
  %834 = select i1 %833, ptr %826, ptr %792
  br label %835

835:                                              ; preds = %824, %788
  %836 = phi ptr [ %834, %824 ], [ %809, %788 ]
  %837 = getelementptr inbounds i8, ptr %33, i64 -4
  %838 = sub nsw i64 0, %744
  %839 = getelementptr inbounds [4 x i8], ptr %837, i64 %838
  %840 = getelementptr inbounds [4 x i8], ptr %837, i64 %790
  %841 = load i32, ptr %839, align 4, !tbaa !5
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds [4 x i8], ptr %1, i64 %842
  %844 = load i32, ptr %843, align 4, !tbaa !5
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds i8, ptr %144, i64 %845
  %847 = load i8, ptr %846, align 1, !tbaa !9
  %848 = load i32, ptr %840, align 4, !tbaa !5
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds [4 x i8], ptr %1, i64 %849
  %851 = load i32, ptr %850, align 4, !tbaa !5
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds i8, ptr %144, i64 %852
  %854 = load i8, ptr %853, align 1, !tbaa !9
  %855 = icmp ugt i8 %847, %854
  %856 = select i1 %855, i32 %841, i32 %848
  %857 = select i1 %855, ptr %839, ptr %840
  %858 = sext i32 %856 to i64
  %859 = getelementptr inbounds [4 x i8], ptr %1, i64 %858
  %860 = load i32, ptr %859, align 4, !tbaa !5
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds i8, ptr %144, i64 %861
  %863 = load i8, ptr %862, align 1, !tbaa !9
  %864 = load i32, ptr %837, align 4, !tbaa !5
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds [4 x i8], ptr %1, i64 %865
  %867 = load i32, ptr %866, align 4, !tbaa !5
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds i8, ptr %144, i64 %868
  %870 = load i8, ptr %869, align 1, !tbaa !9
  %871 = icmp ugt i8 %863, %870
  br i1 %871, label %872, label %890

872:                                              ; preds = %835
  %873 = select i1 %855, i32 %848, i32 %841
  %874 = select i1 %855, ptr %840, ptr %839
  %875 = sext i32 %873 to i64
  %876 = getelementptr inbounds [4 x i8], ptr %1, i64 %875
  %877 = load i32, ptr %876, align 4, !tbaa !5
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds i8, ptr %144, i64 %878
  %880 = load i8, ptr %879, align 1, !tbaa !9
  %881 = icmp ugt i8 %880, %870
  %882 = select i1 %881, ptr %874, ptr %837
  %883 = load i32, ptr %882, align 4, !tbaa !5
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds [4 x i8], ptr %1, i64 %884
  %886 = load i32, ptr %885, align 4, !tbaa !5
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds i8, ptr %144, i64 %887
  %889 = load i8, ptr %888, align 1, !tbaa !9
  br label %890

890:                                              ; preds = %872, %835
  %891 = phi i8 [ %863, %835 ], [ %889, %872 ]
  %892 = phi ptr [ %857, %835 ], [ %882, %872 ]
  %893 = load i32, ptr %789, align 4, !tbaa !5
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds [4 x i8], ptr %1, i64 %894
  %896 = load i32, ptr %895, align 4, !tbaa !5
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds i8, ptr %144, i64 %897
  %899 = load i8, ptr %898, align 1, !tbaa !9
  %900 = load i32, ptr %836, align 4, !tbaa !5
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds [4 x i8], ptr %1, i64 %901
  %903 = load i32, ptr %902, align 4, !tbaa !5
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds i8, ptr %144, i64 %904
  %906 = load i8, ptr %905, align 1, !tbaa !9
  %907 = icmp ugt i8 %899, %906
  %908 = select i1 %907, i32 %893, i32 %900
  %909 = select i1 %907, ptr %789, ptr %836
  %910 = sext i32 %908 to i64
  %911 = getelementptr inbounds [4 x i8], ptr %1, i64 %910
  %912 = load i32, ptr %911, align 4, !tbaa !5
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds i8, ptr %144, i64 %913
  %915 = load i8, ptr %914, align 1, !tbaa !9
  %916 = icmp ugt i8 %915, %891
  br i1 %916, label %917, label %928

917:                                              ; preds = %890
  %918 = select i1 %907, i32 %900, i32 %893
  %919 = select i1 %907, ptr %836, ptr %789
  %920 = sext i32 %918 to i64
  %921 = getelementptr inbounds [4 x i8], ptr %1, i64 %920
  %922 = load i32, ptr %921, align 4, !tbaa !5
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds i8, ptr %144, i64 %923
  %925 = load i8, ptr %924, align 1, !tbaa !9
  %926 = icmp ugt i8 %925, %891
  %927 = select i1 %926, ptr %919, ptr %892
  br label %928

928:                                              ; preds = %917, %890, %630, %619, %586
  %929 = phi i32 [ %688, %630 ], [ %588, %619 ], [ %588, %586 ], [ %746, %917 ], [ %746, %890 ]
  %930 = phi ptr [ %737, %630 ], [ %629, %619 ], [ %604, %586 ], [ %927, %917 ], [ %909, %890 ]
  %931 = load i32, ptr %930, align 4, !tbaa !5
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds [4 x i8], ptr %1, i64 %932
  %934 = load i32, ptr %933, align 4, !tbaa !5
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds i8, ptr %144, i64 %935
  %937 = load i8, ptr %936, align 1, !tbaa !9
  store i32 %931, ptr %35, align 4, !tbaa !5
  store i32 %929, ptr %930, align 4, !tbaa !5
  br label %938

938:                                              ; preds = %942, %928
  %939 = phi ptr [ %35, %928 ], [ %940, %942 ]
  %940 = getelementptr inbounds nuw i8, ptr %939, i64 4
  %941 = icmp ult ptr %940, %33
  br i1 %941, label %942, label %.loopexit153

942:                                              ; preds = %938
  %943 = load i32, ptr %940, align 4, !tbaa !5
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds [4 x i8], ptr %1, i64 %944
  %946 = load i32, ptr %945, align 4, !tbaa !5
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds i8, ptr %144, i64 %947
  %949 = load i8, ptr %948, align 1, !tbaa !9
  %950 = icmp eq i8 %949, %937
  br i1 %950, label %938, label %951, !llvm.loop !123

951:                                              ; preds = %942
  %952 = icmp ult i8 %949, %937
  br i1 %952, label %953, label %.loopexit153

953:                                              ; preds = %951
  %954 = getelementptr inbounds nuw i8, ptr %939, i64 8
  %955 = icmp ult ptr %954, %33
  br i1 %955, label %.preheader152, label %.loopexit153

.preheader152:                                    ; preds = %953, %971
  %956 = phi ptr [ %973, %971 ], [ %954, %953 ]
  %957 = phi ptr [ %972, %971 ], [ %940, %953 ]
  %958 = load i32, ptr %956, align 4, !tbaa !5
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [4 x i8], ptr %1, i64 %959
  %961 = load i32, ptr %960, align 4, !tbaa !5
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds i8, ptr %144, i64 %962
  %964 = load i8, ptr %963, align 1, !tbaa !9
  %965 = icmp ugt i8 %964, %937
  br i1 %965, label %.loopexit153, label %966

966:                                              ; preds = %.preheader152
  %967 = icmp eq i8 %964, %937
  br i1 %967, label %968, label %971

968:                                              ; preds = %966
  %969 = load i32, ptr %957, align 4, !tbaa !5
  store i32 %969, ptr %956, align 4, !tbaa !5
  store i32 %958, ptr %957, align 4, !tbaa !5
  %970 = getelementptr inbounds nuw i8, ptr %957, i64 4
  br label %971

971:                                              ; preds = %968, %966
  %972 = phi ptr [ %970, %968 ], [ %957, %966 ]
  %973 = getelementptr inbounds nuw i8, ptr %956, i64 4
  %974 = icmp ult ptr %973, %33
  br i1 %974, label %.preheader152, label %.loopexit153, !llvm.loop !124

.loopexit153:                                     ; preds = %938, %971, %.preheader152, %953, %951
  %975 = phi ptr [ %940, %951 ], [ %940, %953 ], [ %972, %971 ], [ %957, %.preheader152 ], [ %940, %938 ]
  %976 = phi ptr [ %940, %951 ], [ %954, %953 ], [ %973, %971 ], [ %956, %.preheader152 ], [ %940, %938 ]
  br label %977

977:                                              ; preds = %981, %.loopexit153
  %978 = phi ptr [ %33, %.loopexit153 ], [ %979, %981 ]
  %979 = getelementptr inbounds i8, ptr %978, i64 -4
  %980 = icmp ult ptr %976, %979
  br i1 %980, label %981, label %.loopexit148

981:                                              ; preds = %977
  %982 = load i32, ptr %979, align 4, !tbaa !5
  %983 = sext i32 %982 to i64
  %984 = getelementptr inbounds [4 x i8], ptr %1, i64 %983
  %985 = load i32, ptr %984, align 4, !tbaa !5
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds i8, ptr %144, i64 %986
  %988 = load i8, ptr %987, align 1, !tbaa !9
  %989 = icmp eq i8 %988, %937
  br i1 %989, label %977, label %990, !llvm.loop !125

990:                                              ; preds = %981
  %991 = icmp ugt i8 %988, %937
  br i1 %991, label %992, label %.loopexit148

992:                                              ; preds = %990
  %993 = getelementptr inbounds i8, ptr %978, i64 -8
  %994 = icmp ult ptr %976, %993
  br i1 %994, label %.preheader147, label %.loopexit148

.preheader147:                                    ; preds = %992, %1010
  %995 = phi ptr [ %1012, %1010 ], [ %993, %992 ]
  %996 = phi ptr [ %1011, %1010 ], [ %979, %992 ]
  %997 = load i32, ptr %995, align 4, !tbaa !5
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds [4 x i8], ptr %1, i64 %998
  %1000 = load i32, ptr %999, align 4, !tbaa !5
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds i8, ptr %144, i64 %1001
  %1003 = load i8, ptr %1002, align 1, !tbaa !9
  %1004 = icmp ult i8 %1003, %937
  br i1 %1004, label %.loopexit148, label %1005

1005:                                             ; preds = %.preheader147
  %1006 = icmp eq i8 %1003, %937
  br i1 %1006, label %1007, label %1010

1007:                                             ; preds = %1005
  %1008 = load i32, ptr %996, align 4, !tbaa !5
  store i32 %1008, ptr %995, align 4, !tbaa !5
  store i32 %997, ptr %996, align 4, !tbaa !5
  %1009 = getelementptr inbounds i8, ptr %996, i64 -4
  br label %1010

1010:                                             ; preds = %1007, %1005
  %1011 = phi ptr [ %1009, %1007 ], [ %996, %1005 ]
  %1012 = getelementptr inbounds i8, ptr %995, i64 -4
  %1013 = icmp ult ptr %976, %1012
  br i1 %1013, label %.preheader147, label %.loopexit148, !llvm.loop !126

.loopexit148:                                     ; preds = %977, %1010, %.preheader147, %992, %990
  %1014 = phi ptr [ %979, %990 ], [ %993, %992 ], [ %1012, %1010 ], [ %995, %.preheader147 ], [ %979, %977 ]
  %1015 = phi ptr [ %979, %990 ], [ %979, %992 ], [ %1011, %1010 ], [ %996, %.preheader147 ], [ %979, %977 ]
  %1016 = icmp ult ptr %976, %1014
  br i1 %1016, label %.preheader145, label %.loopexit146

.preheader145:                                    ; preds = %.loopexit148, %.loopexit134
  %1017 = phi ptr [ %1067, %.loopexit134 ], [ %1015, %.loopexit148 ]
  %1018 = phi ptr [ %1068, %.loopexit134 ], [ %1014, %.loopexit148 ]
  %1019 = phi ptr [ %1045, %.loopexit134 ], [ %976, %.loopexit148 ]
  %1020 = phi ptr [ %1044, %.loopexit134 ], [ %975, %.loopexit148 ]
  %1021 = load i32, ptr %1019, align 4, !tbaa !5
  %1022 = load i32, ptr %1018, align 4, !tbaa !5
  store i32 %1022, ptr %1019, align 4, !tbaa !5
  store i32 %1021, ptr %1018, align 4, !tbaa !5
  %1023 = getelementptr inbounds nuw i8, ptr %1019, i64 4
  %1024 = icmp ult ptr %1023, %1018
  br i1 %1024, label %.preheader137, label %.loopexit138

.preheader137:                                    ; preds = %.preheader145, %1040
  %1025 = phi ptr [ %1042, %1040 ], [ %1023, %.preheader145 ]
  %1026 = phi ptr [ %1041, %1040 ], [ %1020, %.preheader145 ]
  %1027 = load i32, ptr %1025, align 4, !tbaa !5
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds [4 x i8], ptr %1, i64 %1028
  %1030 = load i32, ptr %1029, align 4, !tbaa !5
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds i8, ptr %144, i64 %1031
  %1033 = load i8, ptr %1032, align 1, !tbaa !9
  %1034 = icmp ugt i8 %1033, %937
  br i1 %1034, label %.loopexit138, label %1035

1035:                                             ; preds = %.preheader137
  %1036 = icmp eq i8 %1033, %937
  br i1 %1036, label %1037, label %1040

1037:                                             ; preds = %1035
  %1038 = load i32, ptr %1026, align 4, !tbaa !5
  store i32 %1038, ptr %1025, align 4, !tbaa !5
  store i32 %1027, ptr %1026, align 4, !tbaa !5
  %1039 = getelementptr inbounds nuw i8, ptr %1026, i64 4
  br label %1040

1040:                                             ; preds = %1037, %1035
  %1041 = phi ptr [ %1039, %1037 ], [ %1026, %1035 ]
  %1042 = getelementptr inbounds nuw i8, ptr %1025, i64 4
  %1043 = icmp ult ptr %1042, %1018
  br i1 %1043, label %.preheader137, label %.loopexit138, !llvm.loop !127

.loopexit138:                                     ; preds = %1040, %.preheader137, %.preheader145
  %1044 = phi ptr [ %1020, %.preheader145 ], [ %1026, %.preheader137 ], [ %1041, %1040 ]
  %1045 = phi ptr [ %1023, %.preheader145 ], [ %1025, %.preheader137 ], [ %1042, %1040 ]
  %1046 = getelementptr inbounds i8, ptr %1018, i64 -4
  %1047 = icmp ult ptr %1045, %1046
  br i1 %1047, label %.preheader133, label %.loopexit134

.preheader133:                                    ; preds = %.loopexit138, %1063
  %1048 = phi ptr [ %1065, %1063 ], [ %1046, %.loopexit138 ]
  %1049 = phi ptr [ %1064, %1063 ], [ %1017, %.loopexit138 ]
  %1050 = load i32, ptr %1048, align 4, !tbaa !5
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds [4 x i8], ptr %1, i64 %1051
  %1053 = load i32, ptr %1052, align 4, !tbaa !5
  %1054 = sext i32 %1053 to i64
  %1055 = getelementptr inbounds i8, ptr %144, i64 %1054
  %1056 = load i8, ptr %1055, align 1, !tbaa !9
  %1057 = icmp ult i8 %1056, %937
  br i1 %1057, label %.loopexit134, label %1058

1058:                                             ; preds = %.preheader133
  %1059 = icmp eq i8 %1056, %937
  br i1 %1059, label %1060, label %1063

1060:                                             ; preds = %1058
  %1061 = load i32, ptr %1049, align 4, !tbaa !5
  store i32 %1061, ptr %1048, align 4, !tbaa !5
  store i32 %1050, ptr %1049, align 4, !tbaa !5
  %1062 = getelementptr inbounds i8, ptr %1049, i64 -4
  br label %1063

1063:                                             ; preds = %1060, %1058
  %1064 = phi ptr [ %1062, %1060 ], [ %1049, %1058 ]
  %1065 = getelementptr inbounds i8, ptr %1048, i64 -4
  %1066 = icmp ult ptr %1045, %1065
  br i1 %1066, label %.preheader133, label %.loopexit134, !llvm.loop !128

.loopexit134:                                     ; preds = %1063, %.preheader133, %.loopexit138
  %1067 = phi ptr [ %1017, %.loopexit138 ], [ %1049, %.preheader133 ], [ %1064, %1063 ]
  %1068 = phi ptr [ %1046, %.loopexit138 ], [ %1048, %.preheader133 ], [ %1065, %1063 ]
  %1069 = icmp ult ptr %1045, %1068
  br i1 %1069, label %.preheader145, label %.loopexit146, !llvm.loop !129

.loopexit146:                                     ; preds = %.loopexit134, %.loopexit148
  %1070 = phi ptr [ %975, %.loopexit148 ], [ %1044, %.loopexit134 ]
  %1071 = phi ptr [ %976, %.loopexit148 ], [ %1045, %.loopexit134 ]
  %1072 = phi ptr [ %1015, %.loopexit148 ], [ %1067, %.loopexit134 ]
  %1073 = icmp ugt ptr %1070, %1072
  br i1 %1073, label %1548, label %1074

1074:                                             ; preds = %.loopexit146
  %1075 = getelementptr inbounds i8, ptr %1071, i64 -4
  %1076 = ptrtoint ptr %1070 to i64
  %1077 = sub i64 %1076, %39
  %1078 = ashr exact i64 %1077, 2
  %1079 = add nsw i64 %1078, 2147483648
  %1080 = icmp ult i64 %1079, 4294967296
  br i1 %1080, label %1082, label %1081

1081:                                             ; preds = %1074
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 483, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1082:                                             ; preds = %1074
  %1083 = ptrtoint ptr %1071 to i64
  %1084 = sub i64 %1083, %1076
  %1085 = ashr exact i64 %1084, 2
  %1086 = add nsw i64 %1085, 2147483648
  %1087 = icmp ult i64 %1086, 4294967296
  br i1 %1087, label %1089, label %1088

1088:                                             ; preds = %1082
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 483, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1089:                                             ; preds = %1082
  %1090 = tail call i64 @llvm.smin.i64(i64 %1078, i64 %1085)
  %1091 = icmp sgt i64 %1090, 0
  br i1 %1091, label %1092, label %.loopexit144

1092:                                             ; preds = %1089
  %1093 = sub nsw i64 0, %1090
  %1094 = getelementptr [4 x i8], ptr %1071, i64 %1093
  %1095 = trunc nuw nsw i64 %1090 to i32
  %1096 = icmp samesign ult i64 %1090, 8
  br i1 %1096, label %.preheader571, label %1097

1097:                                             ; preds = %1092
  %1098 = getelementptr i8, ptr %35, i64 4
  %1099 = shl nuw nsw i64 %1090, 2
  %1100 = add nuw nsw i64 %1099, 17179869180
  %1101 = and i64 %1100, 17179869180
  %1102 = getelementptr i8, ptr %1098, i64 %1101
  %1103 = getelementptr i8, ptr %1071, i64 4
  %1104 = sub nsw i64 %1101, %1099
  %1105 = getelementptr i8, ptr %1103, i64 %1104
  %1106 = icmp ult ptr %35, %1105
  %1107 = icmp ult ptr %1094, %1102
  %1108 = and i1 %1107, %1106
  br i1 %1108, label %.preheader571, label %1109

1109:                                             ; preds = %1097
  %1110 = and i64 %1090, 8589934584
  br label %1111

1111:                                             ; preds = %1111, %1109
  %1112 = phi i64 [ 0, %1109 ], [ %1122, %1111 ]
  %1113 = shl i64 %1112, 2
  %1114 = getelementptr i8, ptr %1094, i64 %1113
  %1115 = getelementptr i8, ptr %35, i64 %1113
  %1116 = getelementptr i8, ptr %1115, i64 16
  %1117 = load <4 x i32>, ptr %1115, align 4, !tbaa !5, !alias.scope !130, !noalias !133
  %1118 = load <4 x i32>, ptr %1116, align 4, !tbaa !5, !alias.scope !130, !noalias !133
  %1119 = getelementptr i8, ptr %1114, i64 16
  %1120 = load <4 x i32>, ptr %1114, align 4, !tbaa !5, !alias.scope !133
  %1121 = load <4 x i32>, ptr %1119, align 4, !tbaa !5, !alias.scope !133
  store <4 x i32> %1120, ptr %1115, align 4, !tbaa !5, !alias.scope !130, !noalias !133
  store <4 x i32> %1121, ptr %1116, align 4, !tbaa !5, !alias.scope !130, !noalias !133
  store <4 x i32> %1117, ptr %1114, align 4, !tbaa !5, !alias.scope !133
  store <4 x i32> %1118, ptr %1119, align 4, !tbaa !5, !alias.scope !133
  %1122 = add nuw i64 %1112, 8
  %1123 = icmp eq i64 %1122, %1110
  br i1 %1123, label %1124, label %1111, !llvm.loop !135

1124:                                             ; preds = %1111
  %1125 = trunc nuw nsw i64 %1110 to i32
  %1126 = sub nsw i32 %1095, %1125
  %1127 = shl nuw nsw i64 %1110, 2
  %1128 = getelementptr i8, ptr %1094, i64 %1127
  %1129 = getelementptr i8, ptr %35, i64 %1127
  %1130 = icmp eq i64 %1090, %1110
  br i1 %1130, label %.loopexit144, label %.preheader571

.preheader571:                                    ; preds = %1124, %1097, %1092
  %.ph572 = phi i32 [ %1126, %1124 ], [ %1095, %1092 ], [ %1095, %1097 ]
  %.ph573 = phi ptr [ %1128, %1124 ], [ %1094, %1092 ], [ %1094, %1097 ]
  %.ph574 = phi ptr [ %1129, %1124 ], [ %35, %1092 ], [ %35, %1097 ]
  br label %1131

1131:                                             ; preds = %.preheader571, %1131
  %1132 = phi i32 [ %1137, %1131 ], [ %.ph572, %.preheader571 ]
  %1133 = phi ptr [ %1139, %1131 ], [ %.ph573, %.preheader571 ]
  %1134 = phi ptr [ %1138, %1131 ], [ %.ph574, %.preheader571 ]
  %1135 = load i32, ptr %1134, align 4, !tbaa !5
  %1136 = load i32, ptr %1133, align 4, !tbaa !5
  store i32 %1136, ptr %1134, align 4, !tbaa !5
  store i32 %1135, ptr %1133, align 4, !tbaa !5
  %1137 = add nsw i32 %1132, -1
  %1138 = getelementptr inbounds nuw i8, ptr %1134, i64 4
  %1139 = getelementptr inbounds nuw i8, ptr %1133, i64 4
  %1140 = icmp samesign ugt i32 %1132, 1
  br i1 %1140, label %1131, label %.loopexit144, !llvm.loop !136

.loopexit144:                                     ; preds = %1131, %1124, %1089
  %1141 = ptrtoint ptr %1072 to i64
  %1142 = ptrtoint ptr %1075 to i64
  %1143 = sub i64 %1141, %1142
  %1144 = ashr exact i64 %1143, 2
  %1145 = add nsw i64 %1144, 2147483648
  %1146 = icmp ult i64 %1145, 4294967296
  br i1 %1146, label %1148, label %1147

1147:                                             ; preds = %.loopexit144
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.src, i32 noundef 485, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1148:                                             ; preds = %.loopexit144
  %1149 = sub i64 %38, %1141
  %1150 = ashr exact i64 %1149, 2
  %1151 = add nsw i64 %1150, 2147483647
  %1152 = icmp ult i64 %1151, 4294967296
  br i1 %1152, label %1154, label %1153

1153:                                             ; preds = %1148
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.src, i32 noundef 485, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1154:                                             ; preds = %1148
  %1155 = trunc nsw i64 %1144 to i32
  %1156 = trunc i64 %1150 to i32
  %1157 = add i32 %1156, -1
  %1158 = tail call i32 @llvm.smin.i32(i32 %1157, i32 %1155)
  %1159 = icmp sgt i32 %1158, 0
  br i1 %1159, label %1160, label %.loopexit143

1160:                                             ; preds = %1154
  %1161 = zext nneg i32 %1158 to i64
  %1162 = sub nsw i64 0, %1161
  %1163 = getelementptr [4 x i8], ptr %33, i64 %1162
  %1164 = icmp samesign ult i32 %1158, 8
  br i1 %1164, label %.preheader567, label %1165

1165:                                             ; preds = %1160
  %1166 = getelementptr i8, ptr %1071, i64 4
  %1167 = add nsw i32 %1158, -1
  %1168 = zext nneg i32 %1167 to i64
  %1169 = shl nuw nsw i64 %1168, 2
  %1170 = getelementptr i8, ptr %1166, i64 %1169
  %1171 = icmp ult ptr %1071, %33
  %1172 = icmp ult ptr %1163, %1170
  %1173 = and i1 %1171, %1172
  br i1 %1173, label %.preheader567, label %1174

1174:                                             ; preds = %1165
  %1175 = and i64 %1161, 2147483640
  br label %1176

1176:                                             ; preds = %1176, %1174
  %1177 = phi i64 [ 0, %1174 ], [ %1187, %1176 ]
  %1178 = shl i64 %1177, 2
  %1179 = getelementptr i8, ptr %1163, i64 %1178
  %1180 = getelementptr i8, ptr %1071, i64 %1178
  %1181 = getelementptr i8, ptr %1180, i64 16
  %1182 = load <4 x i32>, ptr %1180, align 4, !tbaa !5, !alias.scope !137, !noalias !140
  %1183 = load <4 x i32>, ptr %1181, align 4, !tbaa !5, !alias.scope !137, !noalias !140
  %1184 = getelementptr i8, ptr %1179, i64 16
  %1185 = load <4 x i32>, ptr %1179, align 4, !tbaa !5, !alias.scope !140
  %1186 = load <4 x i32>, ptr %1184, align 4, !tbaa !5, !alias.scope !140
  store <4 x i32> %1185, ptr %1180, align 4, !tbaa !5, !alias.scope !137, !noalias !140
  store <4 x i32> %1186, ptr %1181, align 4, !tbaa !5, !alias.scope !137, !noalias !140
  store <4 x i32> %1182, ptr %1179, align 4, !tbaa !5, !alias.scope !140
  store <4 x i32> %1183, ptr %1184, align 4, !tbaa !5, !alias.scope !140
  %1187 = add nuw nsw i64 %1177, 8
  %1188 = icmp eq i64 %1187, %1175
  br i1 %1188, label %1189, label %1176, !llvm.loop !142

1189:                                             ; preds = %1176
  %1190 = trunc nuw nsw i64 %1175 to i32
  %1191 = sub nsw i32 %1158, %1190
  %1192 = shl nuw nsw i64 %1175, 2
  %1193 = getelementptr i8, ptr %1163, i64 %1192
  %1194 = getelementptr i8, ptr %1071, i64 %1192
  %1195 = icmp eq i64 %1175, %1161
  br i1 %1195, label %.loopexit143, label %.preheader567

.preheader567:                                    ; preds = %1189, %1165, %1160
  %.ph568 = phi i32 [ %1191, %1189 ], [ %1158, %1160 ], [ %1158, %1165 ]
  %.ph569 = phi ptr [ %1193, %1189 ], [ %1163, %1160 ], [ %1163, %1165 ]
  %.ph570 = phi ptr [ %1194, %1189 ], [ %1071, %1160 ], [ %1071, %1165 ]
  br label %1196

1196:                                             ; preds = %.preheader567, %1196
  %1197 = phi i32 [ %1202, %1196 ], [ %.ph568, %.preheader567 ]
  %1198 = phi ptr [ %1204, %1196 ], [ %.ph569, %.preheader567 ]
  %1199 = phi ptr [ %1203, %1196 ], [ %.ph570, %.preheader567 ]
  %1200 = load i32, ptr %1199, align 4, !tbaa !5
  %1201 = load i32, ptr %1198, align 4, !tbaa !5
  store i32 %1201, ptr %1199, align 4, !tbaa !5
  store i32 %1200, ptr %1198, align 4, !tbaa !5
  %1202 = add nsw i32 %1197, -1
  %1203 = getelementptr inbounds nuw i8, ptr %1199, i64 4
  %1204 = getelementptr inbounds nuw i8, ptr %1198, i64 4
  %1205 = icmp samesign ugt i32 %1197, 1
  br i1 %1205, label %1196, label %.loopexit143, !llvm.loop !143

.loopexit143:                                     ; preds = %1196, %1189, %1154
  %1206 = getelementptr inbounds i8, ptr %35, i64 %1084
  %1207 = sub nsw i64 0, %1144
  %1208 = getelementptr inbounds [4 x i8], ptr %33, i64 %1207
  %1209 = load i32, ptr %1206, align 4, !tbaa !5
  %1210 = sext i32 %1209 to i64
  %1211 = getelementptr inbounds [4 x i8], ptr %1, i64 %1210
  %1212 = load i32, ptr %1211, align 4, !tbaa !5
  %1213 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1212, i32 -1)
  %1214 = extractvalue { i32, i1 } %1213, 1, !nosanitize !10
  br i1 %1214, label %130, label %1215, !prof !11, !nosanitize !10

1215:                                             ; preds = %.loopexit143
  %1216 = extractvalue { i32, i1 } %1213, 0, !nosanitize !10
  %1217 = sext i32 %1216 to i64
  %1218 = getelementptr inbounds i8, ptr %144, i64 %1217
  %1219 = load i8, ptr %1218, align 1, !tbaa !9
  %1220 = icmp ugt i8 %937, %1219
  br i1 %1220, label %1221, label %1287

1221:                                             ; preds = %1215
  %1222 = getelementptr inbounds i8, ptr %1206, i64 -4
  br label %1223

1223:                                             ; preds = %1279, %1221
  %1224 = phi ptr [ %1208, %1221 ], [ %1256, %1279 ]
  %1225 = phi ptr [ %1222, %1221 ], [ %1253, %1279 ]
  %1226 = getelementptr inbounds nuw i8, ptr %1225, i64 4
  %1227 = icmp ult ptr %1226, %1224
  br i1 %1227, label %.preheader129, label %.loopexit131

.preheader129:                                    ; preds = %1223, %1249
  %1228 = phi ptr [ %1251, %1249 ], [ %1226, %1223 ]
  %1229 = load i32, ptr %1228, align 4, !tbaa !5
  %1230 = sext i32 %1229 to i64
  %1231 = getelementptr inbounds [4 x i8], ptr %1, i64 %1230
  %1232 = load i32, ptr %1231, align 4, !tbaa !5
  %1233 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1232, i32 %34), !nosanitize !10
  %1234 = extractvalue { i32, i1 } %1233, 0, !nosanitize !10
  %1235 = extractvalue { i32, i1 } %1233, 1, !nosanitize !10
  br i1 %1235, label %.loopexit128, label %1236, !prof !11, !nosanitize !10

.loopexit128:                                     ; preds = %1239, %1236, %.preheader129, %1269, %1266, %1258
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1236:                                             ; preds = %.preheader129
  %1237 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1229, i32 1), !nosanitize !10
  %1238 = extractvalue { i32, i1 } %1237, 1, !nosanitize !10
  br i1 %1238, label %.loopexit128, label %1239, !prof !11, !nosanitize !10

1239:                                             ; preds = %1236
  %1240 = extractvalue { i32, i1 } %1237, 0, !nosanitize !10
  %1241 = sext i32 %1240 to i64
  %1242 = getelementptr inbounds [4 x i8], ptr %1, i64 %1241
  %1243 = load i32, ptr %1242, align 4, !tbaa !5
  %1244 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1243, i32 1), !nosanitize !10
  %1245 = extractvalue { i32, i1 } %1244, 1, !nosanitize !10
  br i1 %1245, label %.loopexit128, label %1246, !prof !11, !nosanitize !10

1246:                                             ; preds = %1239
  %1247 = extractvalue { i32, i1 } %1244, 0, !nosanitize !10
  %1248 = icmp slt i32 %1234, %1247
  br i1 %1248, label %.loopexit131, label %1249

1249:                                             ; preds = %1246
  %1250 = xor i32 %1229, -1
  store i32 %1250, ptr %1228, align 4, !tbaa !5
  %1251 = getelementptr inbounds nuw i8, ptr %1228, i64 4
  %1252 = icmp ult ptr %1251, %1224
  br i1 %1252, label %.preheader129, label %.loopexit131, !llvm.loop !121

.loopexit131:                                     ; preds = %1249, %1246, %1223
  %1253 = phi ptr [ %1226, %1223 ], [ %1251, %1249 ], [ %1228, %1246 ]
  br label %1254

1254:                                             ; preds = %1276, %.loopexit131
  %1255 = phi ptr [ %1224, %.loopexit131 ], [ %1256, %1276 ]
  %1256 = getelementptr inbounds i8, ptr %1255, i64 -4
  %1257 = icmp ult ptr %1253, %1256
  br i1 %1257, label %1258, label %1282

1258:                                             ; preds = %1254
  %1259 = load i32, ptr %1256, align 4, !tbaa !5
  %1260 = sext i32 %1259 to i64
  %1261 = getelementptr inbounds [4 x i8], ptr %1, i64 %1260
  %1262 = load i32, ptr %1261, align 4, !tbaa !5
  %1263 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1262, i32 %34), !nosanitize !10
  %1264 = extractvalue { i32, i1 } %1263, 0, !nosanitize !10
  %1265 = extractvalue { i32, i1 } %1263, 1, !nosanitize !10
  br i1 %1265, label %.loopexit128, label %1266, !prof !11, !nosanitize !10

1266:                                             ; preds = %1258
  %1267 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1259, i32 1), !nosanitize !10
  %1268 = extractvalue { i32, i1 } %1267, 1, !nosanitize !10
  br i1 %1268, label %.loopexit128, label %1269, !prof !11, !nosanitize !10

1269:                                             ; preds = %1266
  %1270 = extractvalue { i32, i1 } %1267, 0, !nosanitize !10
  %1271 = sext i32 %1270 to i64
  %1272 = getelementptr inbounds [4 x i8], ptr %1, i64 %1271
  %1273 = load i32, ptr %1272, align 4, !tbaa !5
  %1274 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1273, i32 1), !nosanitize !10
  %1275 = extractvalue { i32, i1 } %1274, 1, !nosanitize !10
  br i1 %1275, label %.loopexit128, label %1276, !prof !11, !nosanitize !10

1276:                                             ; preds = %1269
  %1277 = extractvalue { i32, i1 } %1274, 0, !nosanitize !10
  %1278 = icmp slt i32 %1264, %1277
  br i1 %1278, label %1254, label %1279, !llvm.loop !122

1279:                                             ; preds = %1276
  %1280 = xor i32 %1259, -1
  %1281 = load i32, ptr %1253, align 4, !tbaa !5
  store i32 %1281, ptr %1256, align 4, !tbaa !5
  store i32 %1280, ptr %1253, align 4, !tbaa !5
  br label %1223

1282:                                             ; preds = %1254
  %1283 = icmp ult ptr %1206, %1253
  br i1 %1283, label %1284, label %1287

1284:                                             ; preds = %1282
  %1285 = load i32, ptr %1206, align 4, !tbaa !5
  %1286 = xor i32 %1285, -1
  store i32 %1286, ptr %1206, align 4, !tbaa !5
  br label %1287

1287:                                             ; preds = %1284, %1282, %1215
  %1288 = phi ptr [ %1206, %1215 ], [ %1253, %1282 ], [ %1253, %1284 ]
  %1289 = ptrtoint ptr %1208 to i64
  %1290 = icmp sgt i64 %1085, %1144
  %1291 = ptrtoint ptr %1288 to i64
  %1292 = sub i64 %1289, %1291
  %1293 = ashr exact i64 %1292, 2
  br i1 %1290, label %1421, label %1294

1294:                                             ; preds = %1287
  %1295 = icmp sgt i64 %1144, %1293
  br i1 %1295, label %1338, label %1296

1296:                                             ; preds = %1294
  %1297 = icmp slt i32 %36, 16
  br i1 %1297, label %1299, label %1298

1298:                                             ; preds = %1296
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 493, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1299:                                             ; preds = %1296
  %1300 = sext i32 %36 to i64
  %1301 = getelementptr inbounds [24 x i8], ptr %5, i64 %1300
  store ptr %1288, ptr %1301, align 8, !tbaa !112
  %1302 = getelementptr inbounds nuw i8, ptr %1301, i64 8
  store ptr %1208, ptr %1302, align 8, !tbaa !114
  %1303 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1304 = extractvalue { i32, i1 } %1303, 1, !nosanitize !10
  br i1 %1304, label %496, label %1305, !prof !11, !nosanitize !10

1305:                                             ; preds = %1299
  %1306 = extractvalue { i32, i1 } %1303, 0, !nosanitize !10
  %1307 = getelementptr inbounds nuw i8, ptr %1301, i64 16
  store i32 %1306, ptr %1307, align 8, !tbaa !115
  %1308 = add nsw i64 %1293, 2147483648
  %1309 = icmp ult i64 %1308, 4294967296
  br i1 %1309, label %1311, label %1310

1310:                                             ; preds = %1305
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 493, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1311:                                             ; preds = %1305
  %1312 = and i64 %1292, 261120
  %1313 = icmp eq i64 %1312, 0
  br i1 %1313, label %1323, label %1314

1314:                                             ; preds = %1311
  %1315 = lshr i64 %1293, 8
  %1316 = and i64 %1315, 255
  %1317 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1316
  %1318 = load i32, ptr %1317, align 4, !tbaa !5
  %1319 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1318, i32 8), !nosanitize !10
  %1320 = extractvalue { i32, i1 } %1319, 0, !nosanitize !10
  %1321 = extractvalue { i32, i1 } %1319, 1, !nosanitize !10
  br i1 %1321, label %1322, label %1327, !prof !11, !nosanitize !10

1322:                                             ; preds = %1314
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1323:                                             ; preds = %1311
  %1324 = and i64 %1293, 255
  %1325 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1324
  %1326 = load i32, ptr %1325, align 4, !tbaa !5
  br label %1327

1327:                                             ; preds = %1323, %1314
  %1328 = phi i32 [ %1320, %1314 ], [ %1326, %1323 ]
  %1329 = getelementptr inbounds nuw i8, ptr %1301, i64 20
  store i32 %1328, ptr %1329, align 4, !tbaa !116
  %1330 = icmp eq i32 %36, 15
  br i1 %1330, label %1331, label %1332

1331:                                             ; preds = %1327
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 494, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1332:                                             ; preds = %1327
  %1333 = getelementptr i8, ptr %1301, i64 24
  store ptr %1208, ptr %1333, align 8, !tbaa !112
  %1334 = getelementptr i8, ptr %1301, i64 32
  store ptr %33, ptr %1334, align 8, !tbaa !114
  %1335 = getelementptr i8, ptr %1301, i64 40
  store i32 %34, ptr %1335, align 8, !tbaa !115
  %1336 = add nsw i32 %36, 2
  %1337 = getelementptr i8, ptr %1301, i64 44
  store i32 %146, ptr %1337, align 4, !tbaa !116
  br label %.backedge

1338:                                             ; preds = %1294
  %1339 = icmp sgt i64 %1085, %1293
  %1340 = icmp slt i32 %36, 16
  br i1 %1339, label %1382, label %1341

1341:                                             ; preds = %1338
  br i1 %1340, label %1343, label %1342

1342:                                             ; preds = %1341
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1343:                                             ; preds = %1341
  %1344 = sext i32 %36 to i64
  %1345 = getelementptr inbounds [24 x i8], ptr %5, i64 %1344
  store ptr %1208, ptr %1345, align 8, !tbaa !112
  %1346 = getelementptr inbounds nuw i8, ptr %1345, i64 8
  store ptr %33, ptr %1346, align 8, !tbaa !114
  %1347 = getelementptr inbounds nuw i8, ptr %1345, i64 16
  store i32 %34, ptr %1347, align 8, !tbaa !115
  %1348 = getelementptr inbounds nuw i8, ptr %1345, i64 20
  store i32 %146, ptr %1348, align 4, !tbaa !116
  %1349 = icmp eq i32 %36, 15
  br i1 %1349, label %1350, label %1351

1350:                                             ; preds = %1343
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1351:                                             ; preds = %1343
  %1352 = getelementptr i8, ptr %1345, i64 24
  store ptr %1288, ptr %1352, align 8, !tbaa !112
  %1353 = getelementptr i8, ptr %1345, i64 32
  store ptr %1208, ptr %1353, align 8, !tbaa !114
  %1354 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1355 = extractvalue { i32, i1 } %1354, 1, !nosanitize !10
  br i1 %1355, label %496, label %1356, !prof !11, !nosanitize !10

1356:                                             ; preds = %1351
  %1357 = extractvalue { i32, i1 } %1354, 0, !nosanitize !10
  %1358 = getelementptr i8, ptr %1345, i64 40
  store i32 %1357, ptr %1358, align 8, !tbaa !115
  %1359 = add nsw i64 %1293, 2147483648
  %1360 = icmp ult i64 %1359, 4294967296
  br i1 %1360, label %1362, label %1361

1361:                                             ; preds = %1356
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1362:                                             ; preds = %1356
  %1363 = and i64 %1292, 261120
  %1364 = icmp eq i64 %1363, 0
  br i1 %1364, label %1374, label %1365

1365:                                             ; preds = %1362
  %1366 = lshr i64 %1293, 8
  %1367 = and i64 %1366, 255
  %1368 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1367
  %1369 = load i32, ptr %1368, align 4, !tbaa !5
  %1370 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1369, i32 8), !nosanitize !10
  %1371 = extractvalue { i32, i1 } %1370, 0, !nosanitize !10
  %1372 = extractvalue { i32, i1 } %1370, 1, !nosanitize !10
  br i1 %1372, label %1373, label %1378, !prof !11, !nosanitize !10

1373:                                             ; preds = %1365
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1374:                                             ; preds = %1362
  %1375 = and i64 %1293, 255
  %1376 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1375
  %1377 = load i32, ptr %1376, align 4, !tbaa !5
  br label %1378

1378:                                             ; preds = %1374, %1365
  %1379 = phi i32 [ %1371, %1365 ], [ %1377, %1374 ]
  %1380 = add nsw i32 %36, 2
  %1381 = getelementptr i8, ptr %1345, i64 44
  store i32 %1379, ptr %1381, align 4, !tbaa !116
  br label %.backedge

1382:                                             ; preds = %1338
  br i1 %1340, label %1384, label %1383

1383:                                             ; preds = %1382
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 501, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1384:                                             ; preds = %1382
  %1385 = sext i32 %36 to i64
  %1386 = getelementptr inbounds [24 x i8], ptr %5, i64 %1385
  store ptr %1208, ptr %1386, align 8, !tbaa !112
  %1387 = getelementptr inbounds nuw i8, ptr %1386, i64 8
  store ptr %33, ptr %1387, align 8, !tbaa !114
  %1388 = getelementptr inbounds nuw i8, ptr %1386, i64 16
  store i32 %34, ptr %1388, align 8, !tbaa !115
  %1389 = getelementptr inbounds nuw i8, ptr %1386, i64 20
  store i32 %146, ptr %1389, align 4, !tbaa !116
  %1390 = icmp eq i32 %36, 15
  br i1 %1390, label %1391, label %1392

1391:                                             ; preds = %1384
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 502, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1392:                                             ; preds = %1384
  %1393 = getelementptr i8, ptr %1386, i64 24
  store ptr %35, ptr %1393, align 8, !tbaa !112
  %1394 = getelementptr i8, ptr %1386, i64 32
  store ptr %1206, ptr %1394, align 8, !tbaa !114
  %1395 = getelementptr i8, ptr %1386, i64 40
  store i32 %34, ptr %1395, align 8, !tbaa !115
  %1396 = add nsw i32 %36, 2
  %1397 = getelementptr i8, ptr %1386, i64 44
  store i32 %146, ptr %1397, align 4, !tbaa !116
  %1398 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1399 = extractvalue { i32, i1 } %1398, 0, !nosanitize !10
  %1400 = extractvalue { i32, i1 } %1398, 1, !nosanitize !10
  br i1 %1400, label %496, label %1401, !prof !11, !nosanitize !10

1401:                                             ; preds = %1392
  %1402 = add nsw i64 %1293, 2147483648
  %1403 = icmp ult i64 %1402, 4294967296
  br i1 %1403, label %1405, label %1404

1404:                                             ; preds = %1401
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 503, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1405:                                             ; preds = %1401
  %1406 = and i64 %1292, 261120
  %1407 = icmp eq i64 %1406, 0
  br i1 %1407, label %1417, label %1408

1408:                                             ; preds = %1405
  %1409 = lshr i64 %1293, 8
  %1410 = and i64 %1409, 255
  %1411 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1410
  %1412 = load i32, ptr %1411, align 4, !tbaa !5
  %1413 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1412, i32 8), !nosanitize !10
  %1414 = extractvalue { i32, i1 } %1413, 0, !nosanitize !10
  %1415 = extractvalue { i32, i1 } %1413, 1, !nosanitize !10
  br i1 %1415, label %1416, label %.backedge, !prof !11, !nosanitize !10

1416:                                             ; preds = %1408
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1417:                                             ; preds = %1405
  %1418 = and i64 %1293, 255
  %1419 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1418
  %1420 = load i32, ptr %1419, align 4, !tbaa !5
  br label %.backedge

1421:                                             ; preds = %1287
  %1422 = icmp sgt i64 %1085, %1293
  br i1 %1422, label %1465, label %1423

1423:                                             ; preds = %1421
  %1424 = icmp slt i32 %36, 16
  br i1 %1424, label %1426, label %1425

1425:                                             ; preds = %1423
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1426:                                             ; preds = %1423
  %1427 = sext i32 %36 to i64
  %1428 = getelementptr inbounds [24 x i8], ptr %5, i64 %1427
  store ptr %1288, ptr %1428, align 8, !tbaa !112
  %1429 = getelementptr inbounds nuw i8, ptr %1428, i64 8
  store ptr %1208, ptr %1429, align 8, !tbaa !114
  %1430 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1431 = extractvalue { i32, i1 } %1430, 1, !nosanitize !10
  br i1 %1431, label %496, label %1432, !prof !11, !nosanitize !10

1432:                                             ; preds = %1426
  %1433 = extractvalue { i32, i1 } %1430, 0, !nosanitize !10
  %1434 = getelementptr inbounds nuw i8, ptr %1428, i64 16
  store i32 %1433, ptr %1434, align 8, !tbaa !115
  %1435 = add nsw i64 %1293, 2147483648
  %1436 = icmp ult i64 %1435, 4294967296
  br i1 %1436, label %1438, label %1437

1437:                                             ; preds = %1432
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1438:                                             ; preds = %1432
  %1439 = and i64 %1292, 261120
  %1440 = icmp eq i64 %1439, 0
  br i1 %1440, label %1450, label %1441

1441:                                             ; preds = %1438
  %1442 = lshr i64 %1293, 8
  %1443 = and i64 %1442, 255
  %1444 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1443
  %1445 = load i32, ptr %1444, align 4, !tbaa !5
  %1446 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1445, i32 8), !nosanitize !10
  %1447 = extractvalue { i32, i1 } %1446, 0, !nosanitize !10
  %1448 = extractvalue { i32, i1 } %1446, 1, !nosanitize !10
  br i1 %1448, label %1449, label %1454, !prof !11, !nosanitize !10

1449:                                             ; preds = %1441
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1450:                                             ; preds = %1438
  %1451 = and i64 %1293, 255
  %1452 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1451
  %1453 = load i32, ptr %1452, align 4, !tbaa !5
  br label %1454

1454:                                             ; preds = %1450, %1441
  %1455 = phi i32 [ %1447, %1441 ], [ %1453, %1450 ]
  %1456 = getelementptr inbounds nuw i8, ptr %1428, i64 20
  store i32 %1455, ptr %1456, align 4, !tbaa !116
  %1457 = icmp eq i32 %36, 15
  br i1 %1457, label %1458, label %1459

1458:                                             ; preds = %1454
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 508, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1459:                                             ; preds = %1454
  %1460 = getelementptr i8, ptr %1428, i64 24
  store ptr %35, ptr %1460, align 8, !tbaa !112
  %1461 = getelementptr i8, ptr %1428, i64 32
  store ptr %1206, ptr %1461, align 8, !tbaa !114
  %1462 = getelementptr i8, ptr %1428, i64 40
  store i32 %34, ptr %1462, align 8, !tbaa !115
  %1463 = add nsw i32 %36, 2
  %1464 = getelementptr i8, ptr %1428, i64 44
  store i32 %146, ptr %1464, align 4, !tbaa !116
  br label %.backedge

1465:                                             ; preds = %1421
  %1466 = icmp sgt i64 %1144, %1293
  %1467 = icmp slt i32 %36, 16
  br i1 %1466, label %1509, label %1468

1468:                                             ; preds = %1465
  br i1 %1467, label %1470, label %1469

1469:                                             ; preds = %1468
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 511, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1470:                                             ; preds = %1468
  %1471 = sext i32 %36 to i64
  %1472 = getelementptr inbounds [24 x i8], ptr %5, i64 %1471
  store ptr %35, ptr %1472, align 8, !tbaa !112
  %1473 = getelementptr inbounds nuw i8, ptr %1472, i64 8
  store ptr %1206, ptr %1473, align 8, !tbaa !114
  %1474 = getelementptr inbounds nuw i8, ptr %1472, i64 16
  store i32 %34, ptr %1474, align 8, !tbaa !115
  %1475 = getelementptr inbounds nuw i8, ptr %1472, i64 20
  store i32 %146, ptr %1475, align 4, !tbaa !116
  %1476 = icmp eq i32 %36, 15
  br i1 %1476, label %1477, label %1478

1477:                                             ; preds = %1470
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 512, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1478:                                             ; preds = %1470
  %1479 = getelementptr i8, ptr %1472, i64 24
  store ptr %1288, ptr %1479, align 8, !tbaa !112
  %1480 = getelementptr i8, ptr %1472, i64 32
  store ptr %1208, ptr %1480, align 8, !tbaa !114
  %1481 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1482 = extractvalue { i32, i1 } %1481, 1, !nosanitize !10
  br i1 %1482, label %496, label %1483, !prof !11, !nosanitize !10

1483:                                             ; preds = %1478
  %1484 = extractvalue { i32, i1 } %1481, 0, !nosanitize !10
  %1485 = getelementptr i8, ptr %1472, i64 40
  store i32 %1484, ptr %1485, align 8, !tbaa !115
  %1486 = add nsw i64 %1293, 2147483648
  %1487 = icmp ult i64 %1486, 4294967296
  br i1 %1487, label %1489, label %1488

1488:                                             ; preds = %1483
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 512, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1489:                                             ; preds = %1483
  %1490 = and i64 %1292, 261120
  %1491 = icmp eq i64 %1490, 0
  br i1 %1491, label %1501, label %1492

1492:                                             ; preds = %1489
  %1493 = lshr i64 %1293, 8
  %1494 = and i64 %1493, 255
  %1495 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1494
  %1496 = load i32, ptr %1495, align 4, !tbaa !5
  %1497 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1496, i32 8), !nosanitize !10
  %1498 = extractvalue { i32, i1 } %1497, 0, !nosanitize !10
  %1499 = extractvalue { i32, i1 } %1497, 1, !nosanitize !10
  br i1 %1499, label %1500, label %1505, !prof !11, !nosanitize !10

1500:                                             ; preds = %1492
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1501:                                             ; preds = %1489
  %1502 = and i64 %1293, 255
  %1503 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1502
  %1504 = load i32, ptr %1503, align 4, !tbaa !5
  br label %1505

1505:                                             ; preds = %1501, %1492
  %1506 = phi i32 [ %1498, %1492 ], [ %1504, %1501 ]
  %1507 = add nsw i32 %36, 2
  %1508 = getelementptr i8, ptr %1472, i64 44
  store i32 %1506, ptr %1508, align 4, !tbaa !116
  br label %.backedge

1509:                                             ; preds = %1465
  br i1 %1467, label %1511, label %1510

1510:                                             ; preds = %1509
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 515, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1511:                                             ; preds = %1509
  %1512 = sext i32 %36 to i64
  %1513 = getelementptr inbounds [24 x i8], ptr %5, i64 %1512
  store ptr %35, ptr %1513, align 8, !tbaa !112
  %1514 = getelementptr inbounds nuw i8, ptr %1513, i64 8
  store ptr %1206, ptr %1514, align 8, !tbaa !114
  %1515 = getelementptr inbounds nuw i8, ptr %1513, i64 16
  store i32 %34, ptr %1515, align 8, !tbaa !115
  %1516 = getelementptr inbounds nuw i8, ptr %1513, i64 20
  store i32 %146, ptr %1516, align 4, !tbaa !116
  %1517 = icmp eq i32 %36, 15
  br i1 %1517, label %1518, label %1519

1518:                                             ; preds = %1511
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1519:                                             ; preds = %1511
  %1520 = getelementptr i8, ptr %1513, i64 24
  store ptr %1208, ptr %1520, align 8, !tbaa !112
  %1521 = getelementptr i8, ptr %1513, i64 32
  store ptr %33, ptr %1521, align 8, !tbaa !114
  %1522 = getelementptr i8, ptr %1513, i64 40
  store i32 %34, ptr %1522, align 8, !tbaa !115
  %1523 = add nsw i32 %36, 2
  %1524 = getelementptr i8, ptr %1513, i64 44
  store i32 %146, ptr %1524, align 4, !tbaa !116
  %1525 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1526 = extractvalue { i32, i1 } %1525, 0, !nosanitize !10
  %1527 = extractvalue { i32, i1 } %1525, 1, !nosanitize !10
  br i1 %1527, label %496, label %1528, !prof !11, !nosanitize !10

1528:                                             ; preds = %1519
  %1529 = add nsw i64 %1293, 2147483648
  %1530 = icmp ult i64 %1529, 4294967296
  br i1 %1530, label %1532, label %1531

1531:                                             ; preds = %1528
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 517, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1532:                                             ; preds = %1528
  %1533 = and i64 %1292, 261120
  %1534 = icmp eq i64 %1533, 0
  br i1 %1534, label %1544, label %1535

1535:                                             ; preds = %1532
  %1536 = lshr i64 %1293, 8
  %1537 = and i64 %1536, 255
  %1538 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1537
  %1539 = load i32, ptr %1538, align 4, !tbaa !5
  %1540 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1539, i32 8), !nosanitize !10
  %1541 = extractvalue { i32, i1 } %1540, 0, !nosanitize !10
  %1542 = extractvalue { i32, i1 } %1540, 1, !nosanitize !10
  br i1 %1542, label %1543, label %.backedge, !prof !11, !nosanitize !10

1543:                                             ; preds = %1535
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1544:                                             ; preds = %1532
  %1545 = and i64 %1293, 255
  %1546 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1545
  %1547 = load i32, ptr %1546, align 4, !tbaa !5
  br label %.backedge

1548:                                             ; preds = %.loopexit146
  %1549 = load i32, ptr %35, align 4, !tbaa !5
  %1550 = sext i32 %1549 to i64
  %1551 = getelementptr inbounds [4 x i8], ptr %1, i64 %1550
  %1552 = load i32, ptr %1551, align 4, !tbaa !5
  %1553 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1552, i32 -1)
  %1554 = extractvalue { i32, i1 } %1553, 1, !nosanitize !10
  br i1 %1554, label %130, label %1555, !prof !11, !nosanitize !10

1555:                                             ; preds = %1548
  %1556 = add nuw i32 %146, 1
  %1557 = extractvalue { i32, i1 } %1553, 0, !nosanitize !10
  %1558 = sext i32 %1557 to i64
  %1559 = getelementptr inbounds i8, ptr %144, i64 %1558
  %1560 = load i8, ptr %1559, align 1, !tbaa !9
  %1561 = icmp ult i8 %1560, %937
  br i1 %1561, label %1562, label %1651

1562:                                             ; preds = %1555
  %1563 = getelementptr inbounds i8, ptr %35, i64 -4
  br label %1564

1564:                                             ; preds = %1620, %1562
  %1565 = phi ptr [ %33, %1562 ], [ %1597, %1620 ]
  %1566 = phi ptr [ %1563, %1562 ], [ %1594, %1620 ]
  %1567 = getelementptr inbounds nuw i8, ptr %1566, i64 4
  %1568 = icmp ult ptr %1567, %1565
  br i1 %1568, label %.preheader124, label %.loopexit126

.preheader124:                                    ; preds = %1564, %1590
  %1569 = phi ptr [ %1592, %1590 ], [ %1567, %1564 ]
  %1570 = load i32, ptr %1569, align 4, !tbaa !5
  %1571 = sext i32 %1570 to i64
  %1572 = getelementptr inbounds [4 x i8], ptr %1, i64 %1571
  %1573 = load i32, ptr %1572, align 4, !tbaa !5
  %1574 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1573, i32 %34), !nosanitize !10
  %1575 = extractvalue { i32, i1 } %1574, 0, !nosanitize !10
  %1576 = extractvalue { i32, i1 } %1574, 1, !nosanitize !10
  br i1 %1576, label %.loopexit123, label %1577, !prof !11, !nosanitize !10

.loopexit123:                                     ; preds = %1580, %1577, %.preheader124, %1610, %1607, %1599
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1577:                                             ; preds = %.preheader124
  %1578 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1570, i32 1), !nosanitize !10
  %1579 = extractvalue { i32, i1 } %1578, 1, !nosanitize !10
  br i1 %1579, label %.loopexit123, label %1580, !prof !11, !nosanitize !10

1580:                                             ; preds = %1577
  %1581 = extractvalue { i32, i1 } %1578, 0, !nosanitize !10
  %1582 = sext i32 %1581 to i64
  %1583 = getelementptr inbounds [4 x i8], ptr %1, i64 %1582
  %1584 = load i32, ptr %1583, align 4, !tbaa !5
  %1585 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1584, i32 1), !nosanitize !10
  %1586 = extractvalue { i32, i1 } %1585, 1, !nosanitize !10
  br i1 %1586, label %.loopexit123, label %1587, !prof !11, !nosanitize !10

1587:                                             ; preds = %1580
  %1588 = extractvalue { i32, i1 } %1585, 0, !nosanitize !10
  %1589 = icmp slt i32 %1575, %1588
  br i1 %1589, label %.loopexit126, label %1590

1590:                                             ; preds = %1587
  %1591 = xor i32 %1570, -1
  store i32 %1591, ptr %1569, align 4, !tbaa !5
  %1592 = getelementptr inbounds nuw i8, ptr %1569, i64 4
  %1593 = icmp ult ptr %1592, %1565
  br i1 %1593, label %.preheader124, label %.loopexit126, !llvm.loop !121

.loopexit126:                                     ; preds = %1590, %1587, %1564
  %1594 = phi ptr [ %1567, %1564 ], [ %1592, %1590 ], [ %1569, %1587 ]
  br label %1595

1595:                                             ; preds = %1617, %.loopexit126
  %1596 = phi ptr [ %1565, %.loopexit126 ], [ %1597, %1617 ]
  %1597 = getelementptr inbounds i8, ptr %1596, i64 -4
  %1598 = icmp ult ptr %1594, %1597
  br i1 %1598, label %1599, label %1623

1599:                                             ; preds = %1595
  %1600 = load i32, ptr %1597, align 4, !tbaa !5
  %1601 = sext i32 %1600 to i64
  %1602 = getelementptr inbounds [4 x i8], ptr %1, i64 %1601
  %1603 = load i32, ptr %1602, align 4, !tbaa !5
  %1604 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1603, i32 %34), !nosanitize !10
  %1605 = extractvalue { i32, i1 } %1604, 0, !nosanitize !10
  %1606 = extractvalue { i32, i1 } %1604, 1, !nosanitize !10
  br i1 %1606, label %.loopexit123, label %1607, !prof !11, !nosanitize !10

1607:                                             ; preds = %1599
  %1608 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1600, i32 1), !nosanitize !10
  %1609 = extractvalue { i32, i1 } %1608, 1, !nosanitize !10
  br i1 %1609, label %.loopexit123, label %1610, !prof !11, !nosanitize !10

1610:                                             ; preds = %1607
  %1611 = extractvalue { i32, i1 } %1608, 0, !nosanitize !10
  %1612 = sext i32 %1611 to i64
  %1613 = getelementptr inbounds [4 x i8], ptr %1, i64 %1612
  %1614 = load i32, ptr %1613, align 4, !tbaa !5
  %1615 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1614, i32 1), !nosanitize !10
  %1616 = extractvalue { i32, i1 } %1615, 1, !nosanitize !10
  br i1 %1616, label %.loopexit123, label %1617, !prof !11, !nosanitize !10

1617:                                             ; preds = %1610
  %1618 = extractvalue { i32, i1 } %1615, 0, !nosanitize !10
  %1619 = icmp slt i32 %1605, %1618
  br i1 %1619, label %1595, label %1620, !llvm.loop !122

1620:                                             ; preds = %1617
  %1621 = xor i32 %1600, -1
  %1622 = load i32, ptr %1594, align 4, !tbaa !5
  store i32 %1622, ptr %1597, align 4, !tbaa !5
  store i32 %1621, ptr %1594, align 4, !tbaa !5
  br label %1564

1623:                                             ; preds = %1595
  %1624 = icmp ult ptr %35, %1594
  br i1 %1624, label %1625, label %1628

1625:                                             ; preds = %1623
  %1626 = load i32, ptr %35, align 4, !tbaa !5
  %1627 = xor i32 %1626, -1
  store i32 %1627, ptr %35, align 4, !tbaa !5
  br label %1628

1628:                                             ; preds = %1625, %1623
  %1629 = ptrtoint ptr %1594 to i64
  %1630 = sub i64 %38, %1629
  %1631 = ashr exact i64 %1630, 2
  %1632 = add nsw i64 %1631, 2147483648
  %1633 = icmp ult i64 %1632, 4294967296
  br i1 %1633, label %1635, label %1634

1634:                                             ; preds = %1628
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 524, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #10
  unreachable

1635:                                             ; preds = %1628
  %1636 = and i64 %1630, 261120
  %1637 = icmp eq i64 %1636, 0
  br i1 %1637, label %1647, label %1638

1638:                                             ; preds = %1635
  %1639 = lshr i64 %1631, 8
  %1640 = and i64 %1639, 255
  %1641 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1640
  %1642 = load i32, ptr %1641, align 4, !tbaa !5
  %1643 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1642, i32 8), !nosanitize !10
  %1644 = extractvalue { i32, i1 } %1643, 0, !nosanitize !10
  %1645 = extractvalue { i32, i1 } %1643, 1, !nosanitize !10
  br i1 %1645, label %1646, label %1651, !prof !11, !nosanitize !10

1646:                                             ; preds = %1638
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

1647:                                             ; preds = %1635
  %1648 = and i64 %1631, 255
  %1649 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1648
  %1650 = load i32, ptr %1649, align 4, !tbaa !5
  br label %1651

1651:                                             ; preds = %1647, %1638, %1555
  %1652 = phi ptr [ %35, %1555 ], [ %1594, %1638 ], [ %1594, %1647 ]
  %1653 = phi i32 [ %1556, %1555 ], [ %1644, %1638 ], [ %1650, %1647 ]
  %1654 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 1), !nosanitize !10
  %1655 = extractvalue { i32, i1 } %1654, 1, !nosanitize !10
  br i1 %1655, label %496, label %1656, !prof !11, !nosanitize !10

1656:                                             ; preds = %1651
  %1657 = extractvalue { i32, i1 } %1654, 0, !nosanitize !10
  br label %.backedge

.backedge:                                        ; preds = %1656, %1544, %1535, %1505, %1459, %1417, %1408, %1378, %1332, %573, %564, %549, %512, %503, %481, %131
  %.be = phi ptr [ %137, %131 ], [ %33, %549 ], [ %33, %481 ], [ %396, %503 ], [ %396, %512 ], [ %396, %564 ], [ %396, %573 ], [ %1206, %1332 ], [ %1206, %1378 ], [ %33, %1459 ], [ %33, %1505 ], [ %33, %1656 ], [ %1208, %1408 ], [ %1208, %1417 ], [ %1208, %1535 ], [ %1208, %1544 ]
  %.be581 = phi i32 [ %139, %131 ], [ %34, %549 ], [ %34, %481 ], [ %494, %503 ], [ %494, %512 ], [ %555, %564 ], [ %555, %573 ], [ %34, %1332 ], [ %34, %1378 ], [ %34, %1459 ], [ %34, %1505 ], [ %1657, %1656 ], [ %1399, %1408 ], [ %1399, %1417 ], [ %1526, %1535 ], [ %1526, %1544 ]
  %.be582 = phi ptr [ %135, %131 ], [ %396, %549 ], [ %396, %481 ], [ %473, %503 ], [ %473, %512 ], [ %473, %564 ], [ %473, %573 ], [ %35, %1332 ], [ %35, %1378 ], [ %1208, %1459 ], [ %1208, %1505 ], [ %1652, %1656 ], [ %1288, %1408 ], [ %1288, %1417 ], [ %1288, %1535 ], [ %1288, %1544 ]
  %.be583 = phi i32 [ %132, %131 ], [ %551, %549 ], [ %36, %481 ], [ %491, %503 ], [ %491, %512 ], [ %36, %564 ], [ %36, %573 ], [ %1336, %1332 ], [ %1380, %1378 ], [ %1463, %1459 ], [ %1507, %1505 ], [ %36, %1656 ], [ %1396, %1408 ], [ %1396, %1417 ], [ %1523, %1535 ], [ %1523, %1544 ]
  %.be584 = phi i32 [ %141, %131 ], [ -1, %549 ], [ -1, %481 ], [ %509, %503 ], [ %515, %512 ], [ %570, %564 ], [ %576, %573 ], [ %146, %1332 ], [ %146, %1378 ], [ %146, %1459 ], [ %146, %1505 ], [ %1653, %1656 ], [ %1414, %1408 ], [ %1420, %1417 ], [ %1541, %1535 ], [ %1547, %1544 ]
  br label %32
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ss_swapmerge(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef range(i32 -2147483644, -2147483648) %6) unnamed_addr #0 {
  %8 = alloca [32 x %struct.anon.0], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %9 = sext i32 %6 to i64
  %10 = getelementptr i8, ptr %5, i64 -4
  %11 = getelementptr i8, ptr %0, i64 2
  %12 = getelementptr i8, ptr %5, i64 4
  br label %13

13:                                               ; preds = %.backedge1179, %7
  %14 = phi ptr [ %4, %7 ], [ %.be1180, %.backedge1179 ]
  %15 = phi ptr [ %3, %7 ], [ %.be1181, %.backedge1179 ]
  %16 = phi ptr [ %2, %7 ], [ %.be1182, %.backedge1179 ]
  %17 = phi i32 [ 0, %7 ], [ %.be1183, %.backedge1179 ]
  %18 = phi i32 [ 0, %7 ], [ %.be1184, %.backedge1179 ]
  %19 = ptrtoint ptr %14 to i64
  %20 = ptrtoint ptr %15 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  %23 = icmp sgt i64 %22, %9
  br i1 %23, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %13
  %24 = sext i32 %17 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %17, i32 32)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %960
  %25 = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %13
  %.lcssa211 = phi ptr [ %15, %13 ], [ %910, %._crit_edge.loopexit ]
  %.lcssa204 = phi ptr [ %16, %13 ], [ %938, %._crit_edge.loopexit ]
  %.lcssa197 = phi i32 [ %17, %13 ], [ %25, %._crit_edge.loopexit ]
  %.lcssa190 = phi i32 [ %18, %13 ], [ %976, %._crit_edge.loopexit ]
  %.lcssa183 = phi i64 [ %21, %13 ], [ %978, %._crit_edge.loopexit ]
  %.lcssa176 = phi i64 [ %22, %13 ], [ %979, %._crit_edge.loopexit ]
  %26 = icmp ult ptr %.lcssa204, %.lcssa211
  %27 = icmp ult ptr %.lcssa211, %14
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %305

29:                                               ; preds = %._crit_edge
  %30 = getelementptr i8, ptr %10, i64 %.lcssa183
  %31 = add nsw i64 %.lcssa176, 2147483648
  %32 = icmp ult i64 %31, 4294967296
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.src, i32 noundef 695, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mergebackward) #10
  unreachable

34:                                               ; preds = %29
  %35 = icmp sgt i64 %.lcssa176, 0
  br i1 %35, label %36, label %.loopexit165

36:                                               ; preds = %34
  %37 = trunc nuw nsw i64 %.lcssa176 to i32
  %38 = icmp samesign ult i64 %.lcssa176, 8
  br i1 %38, label %.preheader1168, label %39

39:                                               ; preds = %36
  %40 = add nuw i64 %.lcssa183, 17179869180
  %41 = and i64 %40, 17179869180
  %42 = getelementptr i8, ptr %12, i64 %41
  %43 = getelementptr i8, ptr %.lcssa211, i64 4
  %44 = getelementptr i8, ptr %43, i64 %41
  %45 = icmp ult ptr %5, %44
  %46 = icmp ult ptr %.lcssa211, %42
  %47 = and i1 %45, %46
  br i1 %47, label %.preheader1168, label %48

48:                                               ; preds = %39
  %49 = and i64 %.lcssa176, 8589934584
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi i64 [ 0, %48 ], [ %61, %50 ]
  %52 = shl i64 %51, 2
  %53 = getelementptr i8, ptr %5, i64 %52
  %54 = getelementptr i8, ptr %.lcssa211, i64 %52
  %55 = getelementptr i8, ptr %53, i64 16
  %56 = load <4 x i32>, ptr %53, align 4, !tbaa !5, !alias.scope !144, !noalias !147
  %57 = load <4 x i32>, ptr %55, align 4, !tbaa !5, !alias.scope !144, !noalias !147
  %58 = getelementptr i8, ptr %54, i64 16
  %59 = load <4 x i32>, ptr %54, align 4, !tbaa !5, !alias.scope !147
  %60 = load <4 x i32>, ptr %58, align 4, !tbaa !5, !alias.scope !147
  store <4 x i32> %59, ptr %53, align 4, !tbaa !5, !alias.scope !144, !noalias !147
  store <4 x i32> %60, ptr %55, align 4, !tbaa !5, !alias.scope !144, !noalias !147
  store <4 x i32> %56, ptr %54, align 4, !tbaa !5, !alias.scope !147
  store <4 x i32> %57, ptr %58, align 4, !tbaa !5, !alias.scope !147
  %61 = add nuw i64 %51, 8
  %62 = icmp eq i64 %61, %49
  br i1 %62, label %63, label %50, !llvm.loop !149

63:                                               ; preds = %50
  %64 = shl nuw nsw i64 %49, 2
  %65 = getelementptr i8, ptr %5, i64 %64
  %66 = trunc nuw nsw i64 %49 to i32
  %67 = sub nsw i32 %37, %66
  %68 = getelementptr i8, ptr %.lcssa211, i64 %64
  %69 = icmp eq i64 %.lcssa176, %49
  br i1 %69, label %.loopexit165, label %.preheader1168

.preheader1168:                                   ; preds = %63, %39, %36
  %.ph1169 = phi ptr [ %65, %63 ], [ %5, %36 ], [ %5, %39 ]
  %.ph1170 = phi i32 [ %67, %63 ], [ %37, %36 ], [ %37, %39 ]
  %.ph1171 = phi ptr [ %68, %63 ], [ %.lcssa211, %36 ], [ %.lcssa211, %39 ]
  br label %70

70:                                               ; preds = %.preheader1168, %70
  %71 = phi ptr [ %77, %70 ], [ %.ph1169, %.preheader1168 ]
  %72 = phi i32 [ %76, %70 ], [ %.ph1170, %.preheader1168 ]
  %73 = phi ptr [ %78, %70 ], [ %.ph1171, %.preheader1168 ]
  %74 = load i32, ptr %71, align 4, !tbaa !5
  %75 = load i32, ptr %73, align 4, !tbaa !5
  store i32 %75, ptr %71, align 4, !tbaa !5
  store i32 %74, ptr %73, align 4, !tbaa !5
  %76 = add nsw i32 %72, -1
  %77 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %78 = getelementptr inbounds nuw i8, ptr %73, i64 4
  %79 = icmp samesign ugt i32 %72, 1
  br i1 %79, label %70, label %.loopexit165, !llvm.loop !150

.loopexit165:                                     ; preds = %70, %63, %34
  %80 = load i32, ptr %30, align 4, !tbaa !5
  %81 = ashr i32 %80, 31
  %82 = xor i32 %81, %80
  %83 = lshr i32 %80, 31
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %84
  %86 = getelementptr inbounds i8, ptr %.lcssa211, i64 -4
  %87 = load i32, ptr %86, align 4, !tbaa !5
  %88 = ashr i32 %87, 31
  %89 = xor i32 %88, %87
  %90 = lshr i32 %87, 30
  %91 = and i32 %90, 2
  %92 = or disjoint i32 %91, %83
  %93 = zext i32 %89 to i64
  %94 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %93
  %95 = getelementptr inbounds i8, ptr %14, i64 -4
  %96 = load i32, ptr %95, align 4, !tbaa !5
  br label %97

97:                                               ; preds = %.backedge, %.loopexit165
  %98 = phi ptr [ %30, %.loopexit165 ], [ %.be, %.backedge ]
  %99 = phi ptr [ %86, %.loopexit165 ], [ %.be1163, %.backedge ]
  %100 = phi ptr [ %95, %.loopexit165 ], [ %.be1164, %.backedge ]
  %101 = phi ptr [ %94, %.loopexit165 ], [ %.be1165, %.backedge ]
  %102 = phi ptr [ %85, %.loopexit165 ], [ %.be1166, %.backedge ]
  %103 = phi i32 [ %92, %.loopexit165 ], [ %.be1167, %.backedge ]
  %104 = getelementptr i8, ptr %102, i64 4
  br label %105

105:                                              ; preds = %222, %97
  %106 = phi ptr [ %99, %97 ], [ %211, %222 ]
  %107 = phi ptr [ %100, %97 ], [ %209, %222 ]
  %108 = phi ptr [ %101, %97 ], [ %229, %222 ]
  %109 = phi i32 [ %103, %97 ], [ %227, %222 ]
  %110 = load i32, ptr %102, align 4, !tbaa !5
  %111 = load i32, ptr %104, align 4, !tbaa !5
  %112 = load i32, ptr %108, align 4, !tbaa !5
  %113 = getelementptr i8, ptr %108, i64 4
  %114 = load i32, ptr %113, align 4, !tbaa !5
  %115 = sext i32 %110 to i64
  %116 = getelementptr inbounds i8, ptr %11, i64 %115
  %117 = sext i32 %112 to i64
  %118 = getelementptr inbounds i8, ptr %11, i64 %117
  %119 = sext i32 %111 to i64
  %120 = getelementptr i8, ptr %11, i64 %119
  %121 = sext i32 %114 to i64
  %122 = getelementptr i8, ptr %11, i64 %121
  %123 = icmp ult ptr %116, %120
  %124 = icmp ult ptr %118, %122
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %.preheader118, label %.loopexit120

.preheader118:                                    ; preds = %105, %131
  %126 = phi ptr [ %132, %131 ], [ %116, %105 ]
  %127 = phi ptr [ %133, %131 ], [ %118, %105 ]
  %128 = load i8, ptr %126, align 1, !tbaa !9
  %129 = load i8, ptr %127, align 1, !tbaa !9
  %130 = icmp eq i8 %128, %129
  br i1 %130, label %131, label %.loopexit119

131:                                              ; preds = %.preheader118
  %132 = getelementptr inbounds nuw i8, ptr %126, i64 1
  %133 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %134 = icmp ult ptr %132, %120
  %135 = icmp ult ptr %133, %122
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %.preheader118, label %.loopexit120, !llvm.loop !26

.loopexit120:                                     ; preds = %131, %105
  %137 = phi ptr [ %118, %105 ], [ %133, %131 ]
  %138 = phi ptr [ %116, %105 ], [ %132, %131 ]
  %139 = phi i1 [ %123, %105 ], [ %134, %131 ]
  %140 = phi i1 [ %124, %105 ], [ %135, %131 ]
  br i1 %139, label %141, label %145

141:                                              ; preds = %.loopexit120
  br i1 %140, label %142, label %153

142:                                              ; preds = %141
  %143 = load i8, ptr %138, align 1, !tbaa !9
  %144 = load i8, ptr %137, align 1, !tbaa !9
  br label %.loopexit119

145:                                              ; preds = %.loopexit120
  %146 = sext i1 %140 to i32
  br label %187

.loopexit119:                                     ; preds = %.preheader118, %142
  %147 = phi i8 [ %144, %142 ], [ %129, %.preheader118 ]
  %148 = phi i8 [ %143, %142 ], [ %128, %.preheader118 ]
  %149 = zext i8 %148 to i32
  %150 = zext i8 %147 to i32
  %151 = sub nsw i32 %149, %150
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %187

153:                                              ; preds = %.loopexit119, %141
  %154 = and i32 %109, 1
  %155 = icmp eq i32 %154, 0
  %156 = load i32, ptr %98, align 4, !tbaa !5
  br i1 %155, label %167, label %.preheader127

.preheader127:                                    ; preds = %153, %.preheader127
  %157 = phi i32 [ %163, %.preheader127 ], [ %156, %153 ]
  %158 = phi ptr [ %162, %.preheader127 ], [ %98, %153 ]
  %159 = phi ptr [ %160, %.preheader127 ], [ %107, %153 ]
  %160 = getelementptr inbounds i8, ptr %159, i64 -4
  store i32 %157, ptr %159, align 4, !tbaa !5
  %161 = load i32, ptr %160, align 4, !tbaa !5
  %162 = getelementptr inbounds i8, ptr %158, i64 -4
  store i32 %161, ptr %158, align 4, !tbaa !5
  %163 = load i32, ptr %162, align 4, !tbaa !5
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %.preheader127, label %165, !llvm.loop !151

165:                                              ; preds = %.preheader127
  %166 = and i32 %109, -2
  br label %167

167:                                              ; preds = %165, %153
  %168 = phi i32 [ %163, %165 ], [ %156, %153 ]
  %169 = phi ptr [ %162, %165 ], [ %98, %153 ]
  %170 = phi ptr [ %160, %165 ], [ %107, %153 ]
  %171 = phi i32 [ %166, %165 ], [ %109, %153 ]
  %172 = getelementptr inbounds i8, ptr %170, i64 -4
  store i32 %168, ptr %170, align 4, !tbaa !5
  %173 = icmp ugt ptr %169, %5
  br i1 %173, label %174, label %.loopexit164

174:                                              ; preds = %167
  %175 = load i32, ptr %172, align 4, !tbaa !5
  %176 = getelementptr inbounds i8, ptr %169, i64 -4
  store i32 %175, ptr %169, align 4, !tbaa !5
  %177 = load i32, ptr %176, align 4, !tbaa !5
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = xor i32 %177, -1
  %181 = zext nneg i32 %180 to i64
  %182 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %181
  %183 = or disjoint i32 %171, 1
  br label %.backedge

184:                                              ; preds = %174
  %185 = zext nneg i32 %177 to i64
  %186 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %185
  br label %.backedge

187:                                              ; preds = %.loopexit119, %145
  %188 = phi i32 [ %146, %145 ], [ %151, %.loopexit119 ]
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %230

190:                                              ; preds = %187
  %191 = and i32 %109, 2
  %192 = icmp eq i32 %191, 0
  %193 = load i32, ptr %106, align 4, !tbaa !5
  br i1 %192, label %204, label %.preheader117

.preheader117:                                    ; preds = %190, %.preheader117
  %194 = phi i32 [ %200, %.preheader117 ], [ %193, %190 ]
  %195 = phi ptr [ %199, %.preheader117 ], [ %106, %190 ]
  %196 = phi ptr [ %197, %.preheader117 ], [ %107, %190 ]
  %197 = getelementptr inbounds i8, ptr %196, i64 -4
  store i32 %194, ptr %196, align 4, !tbaa !5
  %198 = load i32, ptr %197, align 4, !tbaa !5
  %199 = getelementptr inbounds i8, ptr %195, i64 -4
  store i32 %198, ptr %195, align 4, !tbaa !5
  %200 = load i32, ptr %199, align 4, !tbaa !5
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %.preheader117, label %202, !llvm.loop !152

202:                                              ; preds = %.preheader117
  %203 = and i32 %109, -3
  br label %204

204:                                              ; preds = %202, %190
  %205 = phi i32 [ %200, %202 ], [ %193, %190 ]
  %206 = phi ptr [ %199, %202 ], [ %106, %190 ]
  %207 = phi ptr [ %197, %202 ], [ %107, %190 ]
  %208 = phi i32 [ %203, %202 ], [ %109, %190 ]
  %209 = getelementptr inbounds i8, ptr %207, i64 -4
  store i32 %205, ptr %207, align 4, !tbaa !5
  %210 = load i32, ptr %209, align 4, !tbaa !5
  %211 = getelementptr inbounds i8, ptr %206, i64 -4
  store i32 %210, ptr %206, align 4, !tbaa !5
  %212 = icmp ult ptr %211, %.lcssa204
  br i1 %212, label %213, label %222

213:                                              ; preds = %204
  %214 = icmp ult ptr %5, %98
  br i1 %214, label %.preheader160, label %.loopexit161

.preheader160:                                    ; preds = %213, %.preheader160
  %215 = phi ptr [ %218, %.preheader160 ], [ %209, %213 ]
  %216 = phi ptr [ %220, %.preheader160 ], [ %98, %213 ]
  %217 = load i32, ptr %216, align 4, !tbaa !5
  %218 = getelementptr inbounds i8, ptr %215, i64 -4
  store i32 %217, ptr %215, align 4, !tbaa !5
  %219 = load i32, ptr %218, align 4, !tbaa !5
  %220 = getelementptr inbounds i8, ptr %216, i64 -4
  store i32 %219, ptr %216, align 4, !tbaa !5
  %221 = icmp ult ptr %5, %220
  br i1 %221, label %.preheader160, label %.loopexit161, !llvm.loop !153

222:                                              ; preds = %204
  %223 = load i32, ptr %211, align 4, !tbaa !5
  %.lobit = ashr i32 %223, 31
  %224 = xor i32 %.lobit, %223
  %225 = lshr i32 %223, 30
  %226 = and i32 %225, 2
  %227 = or disjoint i32 %226, %208
  %228 = zext i32 %224 to i64
  %229 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %228
  br label %105

230:                                              ; preds = %187
  %231 = and i32 %109, 1
  %232 = icmp eq i32 %231, 0
  %233 = load i32, ptr %98, align 4, !tbaa !5
  br i1 %232, label %244, label %.preheader130

.preheader130:                                    ; preds = %230, %.preheader130
  %234 = phi i32 [ %240, %.preheader130 ], [ %233, %230 ]
  %235 = phi ptr [ %239, %.preheader130 ], [ %98, %230 ]
  %236 = phi ptr [ %237, %.preheader130 ], [ %107, %230 ]
  %237 = getelementptr inbounds i8, ptr %236, i64 -4
  store i32 %234, ptr %236, align 4, !tbaa !5
  %238 = load i32, ptr %237, align 4, !tbaa !5
  %239 = getelementptr inbounds i8, ptr %235, i64 -4
  store i32 %238, ptr %235, align 4, !tbaa !5
  %240 = load i32, ptr %239, align 4, !tbaa !5
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %.preheader130, label %242, !llvm.loop !154

242:                                              ; preds = %.preheader130
  %243 = and i32 %109, -2
  br label %244

244:                                              ; preds = %242, %230
  %245 = phi i32 [ %240, %242 ], [ %233, %230 ]
  %246 = phi ptr [ %239, %242 ], [ %98, %230 ]
  %247 = phi ptr [ %237, %242 ], [ %107, %230 ]
  %248 = phi i32 [ %243, %242 ], [ %109, %230 ]
  %249 = xor i32 %245, -1
  store i32 %249, ptr %247, align 4, !tbaa !5
  %250 = icmp ugt ptr %246, %5
  br i1 %250, label %251, label %.loopexit164

251:                                              ; preds = %244
  %252 = getelementptr inbounds i8, ptr %247, i64 -4
  %253 = load i32, ptr %252, align 4, !tbaa !5
  %254 = getelementptr inbounds i8, ptr %246, i64 -4
  store i32 %253, ptr %246, align 4, !tbaa !5
  %255 = and i32 %248, 2
  %256 = icmp eq i32 %255, 0
  %257 = load i32, ptr %106, align 4, !tbaa !5
  br i1 %256, label %.loopexit129, label %.preheader128

.preheader128:                                    ; preds = %251, %.preheader128
  %258 = phi i32 [ %264, %.preheader128 ], [ %257, %251 ]
  %259 = phi ptr [ %263, %.preheader128 ], [ %106, %251 ]
  %260 = phi ptr [ %261, %.preheader128 ], [ %252, %251 ]
  %261 = getelementptr inbounds i8, ptr %260, i64 -4
  store i32 %258, ptr %260, align 4, !tbaa !5
  %262 = load i32, ptr %261, align 4, !tbaa !5
  %263 = getelementptr inbounds i8, ptr %259, i64 -4
  store i32 %262, ptr %259, align 4, !tbaa !5
  %264 = load i32, ptr %263, align 4, !tbaa !5
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %.preheader128, label %.loopexit129, !llvm.loop !155

.loopexit129:                                     ; preds = %.preheader128, %251
  %266 = phi i32 [ %257, %251 ], [ %264, %.preheader128 ]
  %267 = phi ptr [ %106, %251 ], [ %263, %.preheader128 ]
  %268 = phi ptr [ %252, %251 ], [ %261, %.preheader128 ]
  %269 = phi i32 [ %248, %251 ], [ 0, %.preheader128 ]
  %270 = getelementptr inbounds i8, ptr %268, i64 -4
  store i32 %266, ptr %268, align 4, !tbaa !5
  %271 = load i32, ptr %270, align 4, !tbaa !5
  %272 = getelementptr inbounds i8, ptr %267, i64 -4
  store i32 %271, ptr %267, align 4, !tbaa !5
  %273 = icmp ult ptr %272, %.lcssa204
  br i1 %273, label %274, label %283

274:                                              ; preds = %.loopexit129
  %275 = icmp ult ptr %5, %254
  br i1 %275, label %.preheader162, label %.loopexit161

.preheader162:                                    ; preds = %274, %.preheader162
  %276 = phi ptr [ %279, %.preheader162 ], [ %270, %274 ]
  %277 = phi ptr [ %281, %.preheader162 ], [ %254, %274 ]
  %278 = load i32, ptr %277, align 4, !tbaa !5
  %279 = getelementptr inbounds i8, ptr %276, i64 -4
  store i32 %278, ptr %276, align 4, !tbaa !5
  %280 = load i32, ptr %279, align 4, !tbaa !5
  %281 = getelementptr inbounds i8, ptr %277, i64 -4
  store i32 %280, ptr %277, align 4, !tbaa !5
  %282 = icmp ult ptr %5, %281
  br i1 %282, label %.preheader162, label %.loopexit161, !llvm.loop !156

283:                                              ; preds = %.loopexit129
  %284 = load i32, ptr %254, align 4, !tbaa !5
  %285 = ashr i32 %284, 31
  %286 = xor i32 %285, %284
  %287 = lshr i32 %284, 31
  %288 = or i32 %287, %269
  %289 = zext i32 %286 to i64
  %290 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %289
  %291 = load i32, ptr %272, align 4, !tbaa !5
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %283
  %294 = xor i32 %291, -1
  %295 = zext nneg i32 %294 to i64
  %296 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %295
  %297 = or disjoint i32 %288, 2
  br label %.backedge

298:                                              ; preds = %283
  %299 = zext nneg i32 %291 to i64
  %300 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %299
  br label %.backedge

.backedge:                                        ; preds = %298, %293, %184, %179
  %.be = phi ptr [ %254, %298 ], [ %254, %293 ], [ %176, %184 ], [ %176, %179 ]
  %.be1163 = phi ptr [ %272, %298 ], [ %272, %293 ], [ %106, %184 ], [ %106, %179 ]
  %.be1164 = phi ptr [ %270, %298 ], [ %270, %293 ], [ %172, %184 ], [ %172, %179 ]
  %.be1165 = phi ptr [ %300, %298 ], [ %296, %293 ], [ %108, %184 ], [ %108, %179 ]
  %.be1166 = phi ptr [ %290, %298 ], [ %290, %293 ], [ %186, %184 ], [ %182, %179 ]
  %.be1167 = phi i32 [ %288, %298 ], [ %297, %293 ], [ %171, %184 ], [ %183, %179 ]
  br label %97

.loopexit161:                                     ; preds = %.preheader162, %.preheader160, %274, %213
  %301 = phi ptr [ %98, %213 ], [ %254, %274 ], [ %220, %.preheader160 ], [ %281, %.preheader162 ]
  %302 = phi ptr [ %209, %213 ], [ %270, %274 ], [ %218, %.preheader160 ], [ %279, %.preheader162 ]
  %303 = load i32, ptr %301, align 4, !tbaa !5
  store i32 %303, ptr %302, align 4, !tbaa !5
  br label %.loopexit164

.loopexit164:                                     ; preds = %244, %167, %.loopexit161
  %304 = phi ptr [ %301, %.loopexit161 ], [ %5, %167 ], [ %5, %244 ]
  store i32 %96, ptr %304, align 4, !tbaa !5
  br label %305

305:                                              ; preds = %.loopexit164, %._crit_edge
  %306 = and i32 %.lcssa190, 1
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %305
  %309 = load i32, ptr %.lcssa204, align 4, !tbaa !5
  br label %368

310:                                              ; preds = %305
  %311 = and i32 %.lcssa190, 2
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %371, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds i8, ptr %.lcssa204, i64 -4
  %315 = load i32, ptr %314, align 4, !tbaa !5
  %316 = ashr i32 %315, 31
  %317 = xor i32 %316, %315
  %318 = zext nneg i32 %317 to i64
  %319 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %318
  %320 = load i32, ptr %.lcssa204, align 4, !tbaa !5
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [4 x i8], ptr %1, i64 %321
  %323 = load i32, ptr %319, align 4, !tbaa !5
  %324 = getelementptr i8, ptr %319, i64 4
  %325 = load i32, ptr %324, align 4, !tbaa !5
  %326 = load i32, ptr %322, align 4, !tbaa !5
  %327 = getelementptr i8, ptr %322, i64 4
  %328 = load i32, ptr %327, align 4, !tbaa !5
  %329 = sext i32 %323 to i64
  %330 = getelementptr inbounds i8, ptr %11, i64 %329
  %331 = sext i32 %326 to i64
  %332 = getelementptr inbounds i8, ptr %11, i64 %331
  %333 = sext i32 %325 to i64
  %334 = getelementptr i8, ptr %11, i64 %333
  %335 = sext i32 %328 to i64
  %336 = getelementptr i8, ptr %11, i64 %335
  %337 = icmp ult ptr %330, %334
  %338 = icmp ult ptr %332, %336
  %339 = select i1 %337, i1 %338, i1 false
  br i1 %339, label %.preheader157, label %.loopexit159

.preheader157:                                    ; preds = %313, %345
  %340 = phi ptr [ %346, %345 ], [ %330, %313 ]
  %341 = phi ptr [ %347, %345 ], [ %332, %313 ]
  %342 = load i8, ptr %340, align 1, !tbaa !9
  %343 = load i8, ptr %341, align 1, !tbaa !9
  %344 = icmp eq i8 %342, %343
  br i1 %344, label %345, label %.loopexit158

345:                                              ; preds = %.preheader157
  %346 = getelementptr inbounds nuw i8, ptr %340, i64 1
  %347 = getelementptr inbounds nuw i8, ptr %341, i64 1
  %348 = icmp ult ptr %346, %334
  %349 = icmp ult ptr %347, %336
  %350 = select i1 %348, i1 %349, i1 false
  br i1 %350, label %.preheader157, label %.loopexit159, !llvm.loop !26

.loopexit159:                                     ; preds = %345, %313
  %351 = phi ptr [ %332, %313 ], [ %347, %345 ]
  %352 = phi ptr [ %330, %313 ], [ %346, %345 ]
  %353 = phi i1 [ %337, %313 ], [ %348, %345 ]
  %354 = phi i1 [ %338, %313 ], [ %349, %345 ]
  br i1 %353, label %355, label %363

355:                                              ; preds = %.loopexit159
  br i1 %354, label %356, label %371

356:                                              ; preds = %355
  %357 = load i8, ptr %352, align 1, !tbaa !9
  %.pre599 = load i8, ptr %351, align 1, !tbaa !9
  br label %.loopexit158

.loopexit158:                                     ; preds = %.preheader157, %356
  %358 = phi i8 [ %.pre599, %356 ], [ %343, %.preheader157 ]
  %359 = phi i8 [ %357, %356 ], [ %342, %.preheader157 ]
  %360 = zext i8 %359 to i32
  %361 = zext i8 %358 to i32
  %362 = sub nsw i32 %360, %361
  br label %365

363:                                              ; preds = %.loopexit159
  %364 = sext i1 %354 to i32
  br label %365

365:                                              ; preds = %363, %.loopexit158
  %366 = phi i32 [ %364, %363 ], [ %362, %.loopexit158 ]
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %365, %308
  %369 = phi i32 [ %309, %308 ], [ %320, %365 ]
  %370 = xor i32 %369, -1
  store i32 %370, ptr %.lcssa204, align 4, !tbaa !5
  br label %371

371:                                              ; preds = %368, %365, %355, %310
  %372 = and i32 %.lcssa190, 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %431, label %374

374:                                              ; preds = %371
  %375 = getelementptr inbounds i8, ptr %14, i64 -4
  %376 = load i32, ptr %375, align 4, !tbaa !5
  %377 = ashr i32 %376, 31
  %378 = xor i32 %377, %376
  %379 = zext nneg i32 %378 to i64
  %380 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %379
  %381 = load i32, ptr %14, align 4, !tbaa !5
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [4 x i8], ptr %1, i64 %382
  %384 = load i32, ptr %380, align 4, !tbaa !5
  %385 = getelementptr i8, ptr %380, i64 4
  %386 = load i32, ptr %385, align 4, !tbaa !5
  %387 = load i32, ptr %383, align 4, !tbaa !5
  %388 = getelementptr i8, ptr %383, i64 4
  %389 = load i32, ptr %388, align 4, !tbaa !5
  %390 = sext i32 %384 to i64
  %391 = getelementptr inbounds i8, ptr %11, i64 %390
  %392 = sext i32 %387 to i64
  %393 = getelementptr inbounds i8, ptr %11, i64 %392
  %394 = sext i32 %386 to i64
  %395 = getelementptr i8, ptr %11, i64 %394
  %396 = sext i32 %389 to i64
  %397 = getelementptr i8, ptr %11, i64 %396
  %398 = icmp ult ptr %391, %395
  %399 = icmp ult ptr %393, %397
  %400 = select i1 %398, i1 %399, i1 false
  br i1 %400, label %.preheader154, label %.loopexit156

.preheader154:                                    ; preds = %374, %406
  %401 = phi ptr [ %407, %406 ], [ %391, %374 ]
  %402 = phi ptr [ %408, %406 ], [ %393, %374 ]
  %403 = load i8, ptr %401, align 1, !tbaa !9
  %404 = load i8, ptr %402, align 1, !tbaa !9
  %405 = icmp eq i8 %403, %404
  br i1 %405, label %406, label %.loopexit155

406:                                              ; preds = %.preheader154
  %407 = getelementptr inbounds nuw i8, ptr %401, i64 1
  %408 = getelementptr inbounds nuw i8, ptr %402, i64 1
  %409 = icmp ult ptr %407, %395
  %410 = icmp ult ptr %408, %397
  %411 = select i1 %409, i1 %410, i1 false
  br i1 %411, label %.preheader154, label %.loopexit156, !llvm.loop !26

.loopexit156:                                     ; preds = %406, %374
  %412 = phi ptr [ %393, %374 ], [ %408, %406 ]
  %413 = phi ptr [ %391, %374 ], [ %407, %406 ]
  %414 = phi i1 [ %398, %374 ], [ %409, %406 ]
  %415 = phi i1 [ %399, %374 ], [ %410, %406 ]
  br i1 %414, label %416, label %424

416:                                              ; preds = %.loopexit156
  br i1 %415, label %417, label %431

417:                                              ; preds = %416
  %418 = load i8, ptr %413, align 1, !tbaa !9
  %.pre600 = load i8, ptr %412, align 1, !tbaa !9
  br label %.loopexit155

.loopexit155:                                     ; preds = %.preheader154, %417
  %419 = phi i8 [ %.pre600, %417 ], [ %404, %.preheader154 ]
  %420 = phi i8 [ %418, %417 ], [ %403, %.preheader154 ]
  %421 = zext i8 %420 to i32
  %422 = zext i8 %419 to i32
  %423 = sub nsw i32 %421, %422
  br label %426

424:                                              ; preds = %.loopexit156
  %425 = sext i1 %415 to i32
  br label %426

426:                                              ; preds = %424, %.loopexit155
  %427 = phi i32 [ %425, %424 ], [ %423, %.loopexit155 ]
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %431

429:                                              ; preds = %426
  %430 = xor i32 %381, -1
  store i32 %430, ptr %14, align 4, !tbaa !5
  br label %431

431:                                              ; preds = %429, %426, %416, %371
  %432 = icmp sgt i32 %.lcssa197, -1
  br i1 %432, label %434, label %433

433:                                              ; preds = %431
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 771, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #10
  unreachable

434:                                              ; preds = %431
  %435 = icmp eq i32 %.lcssa197, 0
  br i1 %435, label %1181, label %436

436:                                              ; preds = %434
  %437 = add nsw i32 %.lcssa197, -1
  %438 = zext nneg i32 %437 to i64
  %439 = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %438
  %440 = load ptr, ptr %439, align 16, !tbaa !157
  %441 = getelementptr inbounds nuw i8, ptr %439, i64 8
  %442 = load ptr, ptr %441, align 8, !tbaa !159
  %443 = getelementptr inbounds nuw i8, ptr %439, i64 16
  %444 = load ptr, ptr %443, align 16, !tbaa !160
  %445 = getelementptr inbounds nuw i8, ptr %439, i64 24
  %446 = load i32, ptr %445, align 8, !tbaa !161
  br label %.backedge1179

.lr.ph:                                           ; preds = %.lr.ph.preheader, %960
  %indvars.iv = phi i64 [ %24, %.lr.ph.preheader ], [ %indvars.iv.next, %960 ]
  %447 = phi i64 [ %22, %.lr.ph.preheader ], [ %979, %960 ]
  %448 = phi i64 [ %21, %.lr.ph.preheader ], [ %978, %960 ]
  %449 = phi i64 [ %20, %.lr.ph.preheader ], [ %977, %960 ]
  %450 = phi i32 [ %18, %.lr.ph.preheader ], [ %976, %960 ]
  %451 = phi ptr [ %16, %.lr.ph.preheader ], [ %938, %960 ]
  %452 = phi ptr [ %15, %.lr.ph.preheader ], [ %910, %960 ]
  %453 = ptrtoint ptr %451 to i64
  %454 = sub i64 %449, %453
  %455 = ashr exact i64 %454, 2
  %456 = icmp sgt i64 %455, %9
  br i1 %456, label %787, label %457

457:                                              ; preds = %.lr.ph
  %458 = trunc nsw i64 %indvars.iv to i32
  %459 = icmp ult ptr %451, %452
  br i1 %459, label %460, label %645

460:                                              ; preds = %457
  %461 = getelementptr i8, ptr %10, i64 %454
  %462 = add nsw i64 %455, 2147483648
  %463 = icmp ult i64 %462, 4294967296
  br i1 %463, label %465, label %464

464:                                              ; preds = %460
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 643, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mergeforward) #10
  unreachable

465:                                              ; preds = %460
  %466 = icmp sgt i64 %455, 0
  br i1 %466, label %467, label %.loopexit153

467:                                              ; preds = %465
  %468 = trunc nuw nsw i64 %455 to i32
  %469 = icmp samesign ult i64 %455, 8
  br i1 %469, label %.preheader1175, label %470

470:                                              ; preds = %467
  %471 = add nuw i64 %454, 17179869180
  %472 = and i64 %471, 17179869180
  %473 = getelementptr i8, ptr %12, i64 %472
  %474 = getelementptr i8, ptr %451, i64 4
  %475 = getelementptr i8, ptr %474, i64 %472
  %476 = icmp ult ptr %5, %475
  %477 = icmp ult ptr %451, %473
  %478 = and i1 %476, %477
  br i1 %478, label %.preheader1175, label %479

479:                                              ; preds = %470
  %480 = and i64 %455, 8589934584
  br label %481

481:                                              ; preds = %481, %479
  %482 = phi i64 [ 0, %479 ], [ %492, %481 ]
  %483 = shl i64 %482, 2
  %484 = getelementptr i8, ptr %5, i64 %483
  %485 = getelementptr i8, ptr %451, i64 %483
  %486 = getelementptr i8, ptr %484, i64 16
  %487 = load <4 x i32>, ptr %484, align 4, !tbaa !5, !alias.scope !162, !noalias !165
  %488 = load <4 x i32>, ptr %486, align 4, !tbaa !5, !alias.scope !162, !noalias !165
  %489 = getelementptr i8, ptr %485, i64 16
  %490 = load <4 x i32>, ptr %485, align 4, !tbaa !5, !alias.scope !165
  %491 = load <4 x i32>, ptr %489, align 4, !tbaa !5, !alias.scope !165
  store <4 x i32> %490, ptr %484, align 4, !tbaa !5, !alias.scope !162, !noalias !165
  store <4 x i32> %491, ptr %486, align 4, !tbaa !5, !alias.scope !162, !noalias !165
  store <4 x i32> %487, ptr %485, align 4, !tbaa !5, !alias.scope !165
  store <4 x i32> %488, ptr %489, align 4, !tbaa !5, !alias.scope !165
  %492 = add nuw nsw i64 %482, 8
  %493 = icmp eq i64 %492, %480
  br i1 %493, label %494, label %481, !llvm.loop !167

494:                                              ; preds = %481
  %495 = shl nuw nsw i64 %480, 2
  %496 = getelementptr i8, ptr %5, i64 %495
  %497 = trunc nuw nsw i64 %480 to i32
  %498 = sub nsw i32 %468, %497
  %499 = getelementptr i8, ptr %451, i64 %495
  %500 = icmp eq i64 %455, %480
  br i1 %500, label %.loopexit153, label %.preheader1175

.preheader1175:                                   ; preds = %494, %470, %467
  %.ph1176 = phi ptr [ %496, %494 ], [ %5, %467 ], [ %5, %470 ]
  %.ph1177 = phi i32 [ %498, %494 ], [ %468, %467 ], [ %468, %470 ]
  %.ph1178 = phi ptr [ %499, %494 ], [ %451, %467 ], [ %451, %470 ]
  br label %501

501:                                              ; preds = %.preheader1175, %501
  %502 = phi ptr [ %508, %501 ], [ %.ph1176, %.preheader1175 ]
  %503 = phi i32 [ %507, %501 ], [ %.ph1177, %.preheader1175 ]
  %504 = phi ptr [ %509, %501 ], [ %.ph1178, %.preheader1175 ]
  %505 = load i32, ptr %502, align 4, !tbaa !5
  %506 = load i32, ptr %504, align 4, !tbaa !5
  store i32 %506, ptr %502, align 4, !tbaa !5
  store i32 %505, ptr %504, align 4, !tbaa !5
  %507 = add nsw i32 %503, -1
  %508 = getelementptr inbounds nuw i8, ptr %502, i64 4
  %509 = getelementptr inbounds nuw i8, ptr %504, i64 4
  %510 = icmp samesign ugt i32 %503, 1
  br i1 %510, label %501, label %.loopexit153, !llvm.loop !168

.loopexit153:                                     ; preds = %501, %494, %465
  %511 = load i32, ptr %451, align 4, !tbaa !5
  br label %.loopexit124

.loopexit124.backedge:                            ; preds = %602, %642
  %.be1172 = phi ptr [ %628, %642 ], [ %588, %602 ]
  %.be1173 = phi ptr [ %617, %642 ], [ %517, %602 ]
  %.be1174 = phi ptr [ %626, %642 ], [ %586, %602 ]
  br label %.loopexit124

.loopexit124:                                     ; preds = %.loopexit124.backedge, %.loopexit153
  %512 = phi ptr [ %452, %.loopexit153 ], [ %.be1172, %.loopexit124.backedge ]
  %513 = phi ptr [ %5, %.loopexit153 ], [ %.be1173, %.loopexit124.backedge ]
  %514 = phi ptr [ %451, %.loopexit153 ], [ %.be1174, %.loopexit124.backedge ]
  %.pre = load i32, ptr %513, align 4, !tbaa !5
  br label %515

.loopexit:                                        ; preds = %575
  br label %515, !llvm.loop !169

515:                                              ; preds = %.loopexit, %.loopexit124
  %516 = phi i32 [ %.pre, %.loopexit124 ], [ %579, %.loopexit ]
  %517 = phi ptr [ %513, %.loopexit124 ], [ %578, %.loopexit ]
  %518 = phi ptr [ %514, %.loopexit124 ], [ %576, %.loopexit ]
  %519 = sext i32 %516 to i64
  %520 = getelementptr inbounds [4 x i8], ptr %1, i64 %519
  %521 = load i32, ptr %512, align 4, !tbaa !5
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds [4 x i8], ptr %1, i64 %522
  %524 = load i32, ptr %520, align 4, !tbaa !5
  %525 = getelementptr i8, ptr %520, i64 4
  %526 = load i32, ptr %525, align 4, !tbaa !5
  %527 = load i32, ptr %523, align 4, !tbaa !5
  %528 = getelementptr i8, ptr %523, i64 4
  %529 = load i32, ptr %528, align 4, !tbaa !5
  %530 = sext i32 %524 to i64
  %531 = getelementptr inbounds i8, ptr %11, i64 %530
  %532 = sext i32 %527 to i64
  %533 = getelementptr inbounds i8, ptr %11, i64 %532
  %534 = sext i32 %526 to i64
  %535 = getelementptr i8, ptr %11, i64 %534
  %536 = sext i32 %529 to i64
  %537 = getelementptr i8, ptr %11, i64 %536
  %538 = icmp ult ptr %531, %535
  %539 = icmp ult ptr %533, %537
  %540 = select i1 %538, i1 %539, i1 false
  br i1 %540, label %.preheader114, label %.loopexit116

.preheader114:                                    ; preds = %515, %546
  %541 = phi ptr [ %547, %546 ], [ %531, %515 ]
  %542 = phi ptr [ %548, %546 ], [ %533, %515 ]
  %543 = load i8, ptr %541, align 1, !tbaa !9
  %544 = load i8, ptr %542, align 1, !tbaa !9
  %545 = icmp eq i8 %543, %544
  br i1 %545, label %546, label %.loopexit115

546:                                              ; preds = %.preheader114
  %547 = getelementptr inbounds nuw i8, ptr %541, i64 1
  %548 = getelementptr inbounds nuw i8, ptr %542, i64 1
  %549 = icmp ult ptr %547, %535
  %550 = icmp ult ptr %548, %537
  %551 = select i1 %549, i1 %550, i1 false
  br i1 %551, label %.preheader114, label %.loopexit116, !llvm.loop !26

.loopexit116:                                     ; preds = %546, %515
  %552 = phi ptr [ %533, %515 ], [ %548, %546 ]
  %553 = phi ptr [ %531, %515 ], [ %547, %546 ]
  %554 = phi i1 [ %538, %515 ], [ %549, %546 ]
  %555 = phi i1 [ %539, %515 ], [ %550, %546 ]
  br i1 %554, label %556, label %565

556:                                              ; preds = %.loopexit116
  br i1 %555, label %557, label %.loopexit126.preheader

557:                                              ; preds = %556
  %558 = load i8, ptr %553, align 1, !tbaa !9
  %559 = load i8, ptr %552, align 1, !tbaa !9
  br label %.loopexit115

.loopexit115:                                     ; preds = %.preheader114, %557
  %560 = phi i8 [ %559, %557 ], [ %544, %.preheader114 ]
  %561 = phi i8 [ %558, %557 ], [ %543, %.preheader114 ]
  %562 = zext i8 %561 to i32
  %563 = zext i8 %560 to i32
  %564 = sub nsw i32 %562, %563
  br label %567

565:                                              ; preds = %.loopexit116
  %566 = sext i1 %555 to i32
  br label %567

567:                                              ; preds = %565, %.loopexit115
  %568 = phi i32 [ %566, %565 ], [ %564, %.loopexit115 ]
  %569 = icmp slt i32 %568, 0
  br i1 %569, label %.preheader, label %581

.preheader:                                       ; preds = %567, %575
  %570 = phi i32 [ %579, %575 ], [ %516, %567 ]
  %571 = phi ptr [ %578, %575 ], [ %517, %567 ]
  %572 = phi ptr [ %576, %575 ], [ %518, %567 ]
  store i32 %570, ptr %572, align 4, !tbaa !5
  %573 = icmp ugt ptr %461, %571
  br i1 %573, label %575, label %574

574:                                              ; preds = %.preheader
  store i32 %511, ptr %461, align 4, !tbaa !5
  br label %645

575:                                              ; preds = %.preheader
  %576 = getelementptr inbounds nuw i8, ptr %572, i64 4
  %577 = load i32, ptr %576, align 4, !tbaa !5
  %578 = getelementptr inbounds nuw i8, ptr %571, i64 4
  store i32 %577, ptr %571, align 4, !tbaa !5
  %579 = load i32, ptr %578, align 4, !tbaa !5
  %580 = icmp slt i32 %579, 0
  br i1 %580, label %.preheader, label %.loopexit, !llvm.loop !169

581:                                              ; preds = %567
  %582 = icmp eq i32 %568, 0
  br i1 %582, label %605, label %.loopexit126.preheader

.loopexit126.preheader:                           ; preds = %556, %581
  br label %.loopexit126

.loopexit126:                                     ; preds = %.loopexit126.preheader, %602
  %583 = phi i32 [ %603, %602 ], [ %521, %.loopexit126.preheader ]
  %584 = phi ptr [ %588, %602 ], [ %512, %.loopexit126.preheader ]
  %585 = phi ptr [ %586, %602 ], [ %518, %.loopexit126.preheader ]
  %586 = getelementptr inbounds nuw i8, ptr %585, i64 4
  store i32 %583, ptr %585, align 4, !tbaa !5
  %587 = load i32, ptr %586, align 4, !tbaa !5
  %588 = getelementptr inbounds nuw i8, ptr %584, i64 4
  store i32 %587, ptr %584, align 4, !tbaa !5
  %589 = icmp ugt ptr %14, %588
  br i1 %589, label %602, label %590

590:                                              ; preds = %.loopexit126
  %591 = icmp ult ptr %517, %461
  br i1 %591, label %.preheader151, label %.loopexit152

.preheader151:                                    ; preds = %590, %.preheader151
  %592 = phi ptr [ %595, %.preheader151 ], [ %586, %590 ]
  %593 = phi ptr [ %597, %.preheader151 ], [ %517, %590 ]
  %594 = load i32, ptr %593, align 4, !tbaa !5
  %595 = getelementptr inbounds nuw i8, ptr %592, i64 4
  store i32 %594, ptr %592, align 4, !tbaa !5
  %596 = load i32, ptr %595, align 4, !tbaa !5
  %597 = getelementptr inbounds nuw i8, ptr %593, i64 4
  store i32 %596, ptr %593, align 4, !tbaa !5
  %598 = icmp ult ptr %597, %461
  br i1 %598, label %.preheader151, label %.loopexit152, !llvm.loop !170

.loopexit152:                                     ; preds = %.preheader151, %590
  %599 = phi ptr [ %517, %590 ], [ %597, %.preheader151 ]
  %600 = phi ptr [ %586, %590 ], [ %595, %.preheader151 ]
  %601 = load i32, ptr %599, align 4, !tbaa !5
  store i32 %601, ptr %600, align 4, !tbaa !5
  store i32 %511, ptr %599, align 4, !tbaa !5
  br label %645

602:                                              ; preds = %.loopexit126
  %603 = load i32, ptr %588, align 4, !tbaa !5
  %604 = icmp slt i32 %603, 0
  br i1 %604, label %.loopexit126, label %.loopexit124.backedge, !llvm.loop !171

605:                                              ; preds = %581
  %606 = xor i32 %521, -1
  store i32 %606, ptr %512, align 4, !tbaa !5
  %607 = load i32, ptr %517, align 4, !tbaa !5
  br label %608

608:                                              ; preds = %614, %605
  %609 = phi i32 [ %607, %605 ], [ %618, %614 ]
  %610 = phi ptr [ %517, %605 ], [ %617, %614 ]
  %611 = phi ptr [ %518, %605 ], [ %615, %614 ]
  store i32 %609, ptr %611, align 4, !tbaa !5
  %612 = icmp ugt ptr %461, %610
  br i1 %612, label %614, label %613

613:                                              ; preds = %608
  store i32 %511, ptr %461, align 4, !tbaa !5
  br label %645

614:                                              ; preds = %608
  %615 = getelementptr inbounds nuw i8, ptr %611, i64 4
  %616 = load i32, ptr %615, align 4, !tbaa !5
  %617 = getelementptr inbounds nuw i8, ptr %610, i64 4
  store i32 %616, ptr %610, align 4, !tbaa !5
  %618 = load i32, ptr %617, align 4, !tbaa !5
  %619 = icmp slt i32 %618, 0
  br i1 %619, label %608, label %620, !llvm.loop !172

620:                                              ; preds = %614
  %621 = load i32, ptr %512, align 4, !tbaa !5
  br label %622

622:                                              ; preds = %642, %620
  %623 = phi i32 [ %643, %642 ], [ %621, %620 ]
  %624 = phi ptr [ %628, %642 ], [ %512, %620 ]
  %625 = phi ptr [ %626, %642 ], [ %615, %620 ]
  %626 = getelementptr inbounds nuw i8, ptr %625, i64 4
  store i32 %623, ptr %625, align 4, !tbaa !5
  %627 = load i32, ptr %626, align 4, !tbaa !5
  %628 = getelementptr inbounds nuw i8, ptr %624, i64 4
  store i32 %627, ptr %624, align 4, !tbaa !5
  %629 = icmp ugt ptr %14, %628
  br i1 %629, label %642, label %630

630:                                              ; preds = %622
  %631 = icmp ult ptr %617, %461
  br i1 %631, label %.preheader149, label %.loopexit150

.preheader149:                                    ; preds = %630, %.preheader149
  %632 = phi ptr [ %635, %.preheader149 ], [ %626, %630 ]
  %633 = phi ptr [ %637, %.preheader149 ], [ %617, %630 ]
  %634 = load i32, ptr %633, align 4, !tbaa !5
  %635 = getelementptr inbounds nuw i8, ptr %632, i64 4
  store i32 %634, ptr %632, align 4, !tbaa !5
  %636 = load i32, ptr %635, align 4, !tbaa !5
  %637 = getelementptr inbounds nuw i8, ptr %633, i64 4
  store i32 %636, ptr %633, align 4, !tbaa !5
  %638 = icmp ult ptr %637, %461
  br i1 %638, label %.preheader149, label %.loopexit150, !llvm.loop !173

.loopexit150:                                     ; preds = %.preheader149, %630
  %639 = phi ptr [ %617, %630 ], [ %637, %.preheader149 ]
  %640 = phi ptr [ %626, %630 ], [ %635, %.preheader149 ]
  %641 = load i32, ptr %639, align 4, !tbaa !5
  store i32 %641, ptr %640, align 4, !tbaa !5
  store i32 %511, ptr %639, align 4, !tbaa !5
  br label %645

642:                                              ; preds = %622
  %643 = load i32, ptr %628, align 4, !tbaa !5
  %644 = icmp slt i32 %643, 0
  br i1 %644, label %622, label %.loopexit124.backedge, !llvm.loop !174

645:                                              ; preds = %.loopexit150, %613, %.loopexit152, %574, %457
  %646 = and i32 %450, 1
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %650, label %648

648:                                              ; preds = %645
  %649 = load i32, ptr %451, align 4, !tbaa !5
  br label %708

650:                                              ; preds = %645
  %651 = and i32 %450, 2
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %711, label %653

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %451, i64 -4
  %655 = load i32, ptr %654, align 4, !tbaa !5
  %656 = ashr i32 %655, 31
  %657 = xor i32 %656, %655
  %658 = zext nneg i32 %657 to i64
  %659 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %658
  %660 = load i32, ptr %451, align 4, !tbaa !5
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [4 x i8], ptr %1, i64 %661
  %663 = load i32, ptr %659, align 4, !tbaa !5
  %664 = getelementptr i8, ptr %659, i64 4
  %665 = load i32, ptr %664, align 4, !tbaa !5
  %666 = load i32, ptr %662, align 4, !tbaa !5
  %667 = getelementptr i8, ptr %662, i64 4
  %668 = load i32, ptr %667, align 4, !tbaa !5
  %669 = sext i32 %663 to i64
  %670 = getelementptr inbounds i8, ptr %11, i64 %669
  %671 = sext i32 %666 to i64
  %672 = getelementptr inbounds i8, ptr %11, i64 %671
  %673 = sext i32 %665 to i64
  %674 = getelementptr i8, ptr %11, i64 %673
  %675 = sext i32 %668 to i64
  %676 = getelementptr i8, ptr %11, i64 %675
  %677 = icmp ult ptr %670, %674
  %678 = icmp ult ptr %672, %676
  %679 = select i1 %677, i1 %678, i1 false
  br i1 %679, label %.preheader146, label %.loopexit148

.preheader146:                                    ; preds = %653, %685
  %680 = phi ptr [ %686, %685 ], [ %670, %653 ]
  %681 = phi ptr [ %687, %685 ], [ %672, %653 ]
  %682 = load i8, ptr %680, align 1, !tbaa !9
  %683 = load i8, ptr %681, align 1, !tbaa !9
  %684 = icmp eq i8 %682, %683
  br i1 %684, label %685, label %.loopexit147

685:                                              ; preds = %.preheader146
  %686 = getelementptr inbounds nuw i8, ptr %680, i64 1
  %687 = getelementptr inbounds nuw i8, ptr %681, i64 1
  %688 = icmp ult ptr %686, %674
  %689 = icmp ult ptr %687, %676
  %690 = select i1 %688, i1 %689, i1 false
  br i1 %690, label %.preheader146, label %.loopexit148, !llvm.loop !26

.loopexit148:                                     ; preds = %685, %653
  %691 = phi ptr [ %672, %653 ], [ %687, %685 ]
  %692 = phi ptr [ %670, %653 ], [ %686, %685 ]
  %693 = phi i1 [ %677, %653 ], [ %688, %685 ]
  %694 = phi i1 [ %678, %653 ], [ %689, %685 ]
  br i1 %693, label %695, label %703

695:                                              ; preds = %.loopexit148
  br i1 %694, label %696, label %711

696:                                              ; preds = %695
  %697 = load i8, ptr %692, align 1, !tbaa !9
  %.pre593 = load i8, ptr %691, align 1, !tbaa !9
  br label %.loopexit147

.loopexit147:                                     ; preds = %.preheader146, %696
  %698 = phi i8 [ %.pre593, %696 ], [ %683, %.preheader146 ]
  %699 = phi i8 [ %697, %696 ], [ %682, %.preheader146 ]
  %700 = zext i8 %699 to i32
  %701 = zext i8 %698 to i32
  %702 = sub nsw i32 %700, %701
  br label %705

703:                                              ; preds = %.loopexit148
  %704 = sext i1 %694 to i32
  br label %705

705:                                              ; preds = %703, %.loopexit147
  %706 = phi i32 [ %704, %703 ], [ %702, %.loopexit147 ]
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %708, label %711

708:                                              ; preds = %705, %648
  %709 = phi i32 [ %649, %648 ], [ %660, %705 ]
  %710 = xor i32 %709, -1
  store i32 %710, ptr %451, align 4, !tbaa !5
  br label %711

711:                                              ; preds = %708, %705, %695, %650
  %712 = and i32 %450, 4
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %771, label %714

714:                                              ; preds = %711
  %715 = getelementptr inbounds i8, ptr %14, i64 -4
  %716 = load i32, ptr %715, align 4, !tbaa !5
  %717 = ashr i32 %716, 31
  %718 = xor i32 %717, %716
  %719 = zext nneg i32 %718 to i64
  %720 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %719
  %721 = load i32, ptr %14, align 4, !tbaa !5
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds [4 x i8], ptr %1, i64 %722
  %724 = load i32, ptr %720, align 4, !tbaa !5
  %725 = getelementptr i8, ptr %720, i64 4
  %726 = load i32, ptr %725, align 4, !tbaa !5
  %727 = load i32, ptr %723, align 4, !tbaa !5
  %728 = getelementptr i8, ptr %723, i64 4
  %729 = load i32, ptr %728, align 4, !tbaa !5
  %730 = sext i32 %724 to i64
  %731 = getelementptr inbounds i8, ptr %11, i64 %730
  %732 = sext i32 %727 to i64
  %733 = getelementptr inbounds i8, ptr %11, i64 %732
  %734 = sext i32 %726 to i64
  %735 = getelementptr i8, ptr %11, i64 %734
  %736 = sext i32 %729 to i64
  %737 = getelementptr i8, ptr %11, i64 %736
  %738 = icmp ult ptr %731, %735
  %739 = icmp ult ptr %733, %737
  %740 = select i1 %738, i1 %739, i1 false
  br i1 %740, label %.preheader143, label %.loopexit145

.preheader143:                                    ; preds = %714, %746
  %741 = phi ptr [ %747, %746 ], [ %731, %714 ]
  %742 = phi ptr [ %748, %746 ], [ %733, %714 ]
  %743 = load i8, ptr %741, align 1, !tbaa !9
  %744 = load i8, ptr %742, align 1, !tbaa !9
  %745 = icmp eq i8 %743, %744
  br i1 %745, label %746, label %.loopexit144

746:                                              ; preds = %.preheader143
  %747 = getelementptr inbounds nuw i8, ptr %741, i64 1
  %748 = getelementptr inbounds nuw i8, ptr %742, i64 1
  %749 = icmp ult ptr %747, %735
  %750 = icmp ult ptr %748, %737
  %751 = select i1 %749, i1 %750, i1 false
  br i1 %751, label %.preheader143, label %.loopexit145, !llvm.loop !26

.loopexit145:                                     ; preds = %746, %714
  %752 = phi ptr [ %733, %714 ], [ %748, %746 ]
  %753 = phi ptr [ %731, %714 ], [ %747, %746 ]
  %754 = phi i1 [ %738, %714 ], [ %749, %746 ]
  %755 = phi i1 [ %739, %714 ], [ %750, %746 ]
  br i1 %754, label %756, label %764

756:                                              ; preds = %.loopexit145
  br i1 %755, label %757, label %771

757:                                              ; preds = %756
  %758 = load i8, ptr %753, align 1, !tbaa !9
  %.pre594 = load i8, ptr %752, align 1, !tbaa !9
  br label %.loopexit144

.loopexit144:                                     ; preds = %.preheader143, %757
  %759 = phi i8 [ %.pre594, %757 ], [ %744, %.preheader143 ]
  %760 = phi i8 [ %758, %757 ], [ %743, %.preheader143 ]
  %761 = zext i8 %760 to i32
  %762 = zext i8 %759 to i32
  %763 = sub nsw i32 %761, %762
  br label %766

764:                                              ; preds = %.loopexit145
  %765 = sext i1 %755 to i32
  br label %766

766:                                              ; preds = %764, %.loopexit144
  %767 = phi i32 [ %765, %764 ], [ %763, %.loopexit144 ]
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %769, label %771

769:                                              ; preds = %766
  %770 = xor i32 %721, -1
  store i32 %770, ptr %14, align 4, !tbaa !5
  br label %771

771:                                              ; preds = %769, %766, %756, %711
  %772 = icmp sgt i64 %indvars.iv, -1
  br i1 %772, label %774, label %773

773:                                              ; preds = %771
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 780, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #10
  unreachable

774:                                              ; preds = %771
  %775 = icmp eq i64 %indvars.iv, 0
  br i1 %775, label %1181, label %776

776:                                              ; preds = %774
  %777 = add nsw i32 %458, -1
  %778 = zext nneg i32 %777 to i64
  %779 = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %778
  %780 = load ptr, ptr %779, align 16, !tbaa !157
  %781 = getelementptr inbounds nuw i8, ptr %779, i64 8
  %782 = load ptr, ptr %781, align 8, !tbaa !159
  %783 = getelementptr inbounds nuw i8, ptr %779, i64 16
  %784 = load ptr, ptr %783, align 16, !tbaa !160
  %785 = getelementptr inbounds nuw i8, ptr %779, i64 24
  %786 = load i32, ptr %785, align 8, !tbaa !161
  br label %.backedge1179

787:                                              ; preds = %.lr.ph
  %788 = tail call i64 @llvm.smin.i64(i64 %455, i64 %447)
  %789 = icmp slt i64 %788, 2147483648
  br i1 %789, label %791, label %790

790:                                              ; preds = %787
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.src, i32 noundef 784, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #10
  unreachable

791:                                              ; preds = %787
  %792 = icmp sgt i64 %788, 0
  br i1 %792, label %793, label %981

793:                                              ; preds = %791
  %794 = trunc nuw nsw i64 %788 to i32
  br label %795

795:                                              ; preds = %867, %793
  %796 = phi i32 [ %869, %867 ], [ %794, %793 ]
  %797 = phi i32 [ %868, %867 ], [ 0, %793 ]
  %798 = lshr i32 %796, 1
  %799 = sext i32 %797 to i64
  %800 = getelementptr inbounds [4 x i8], ptr %452, i64 %799
  %801 = zext nneg i32 %798 to i64
  %802 = getelementptr inbounds nuw [4 x i8], ptr %800, i64 %801
  %803 = load i32, ptr %802, align 4, !tbaa !5
  %804 = ashr i32 %803, 31
  %805 = xor i32 %804, %803
  %806 = zext nneg i32 %805 to i64
  %807 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %806
  %808 = sub nsw i64 0, %799
  %809 = getelementptr inbounds [4 x i8], ptr %452, i64 %808
  %810 = sub nsw i64 0, %801
  %811 = getelementptr inbounds [4 x i8], ptr %809, i64 %810
  %812 = getelementptr inbounds i8, ptr %811, i64 -4
  %813 = load i32, ptr %812, align 4, !tbaa !5
  %814 = ashr i32 %813, 31
  %815 = xor i32 %814, %813
  %816 = zext nneg i32 %815 to i64
  %817 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %816
  %818 = load i32, ptr %807, align 4, !tbaa !5
  %819 = getelementptr i8, ptr %807, i64 4
  %820 = load i32, ptr %819, align 4, !tbaa !5
  %821 = load i32, ptr %817, align 4, !tbaa !5
  %822 = getelementptr i8, ptr %817, i64 4
  %823 = load i32, ptr %822, align 4, !tbaa !5
  %824 = sext i32 %818 to i64
  %825 = getelementptr inbounds i8, ptr %11, i64 %824
  %826 = sext i32 %821 to i64
  %827 = getelementptr inbounds i8, ptr %11, i64 %826
  %828 = sext i32 %820 to i64
  %829 = getelementptr i8, ptr %11, i64 %828
  %830 = sext i32 %823 to i64
  %831 = getelementptr i8, ptr %11, i64 %830
  %832 = icmp ult ptr %825, %829
  %833 = icmp ult ptr %827, %831
  %834 = select i1 %832, i1 %833, i1 false
  br i1 %834, label %.preheader121, label %.loopexit123

.preheader121:                                    ; preds = %795, %840
  %835 = phi ptr [ %841, %840 ], [ %825, %795 ]
  %836 = phi ptr [ %842, %840 ], [ %827, %795 ]
  %837 = load i8, ptr %835, align 1, !tbaa !9
  %838 = load i8, ptr %836, align 1, !tbaa !9
  %839 = icmp eq i8 %837, %838
  br i1 %839, label %840, label %.loopexit122

840:                                              ; preds = %.preheader121
  %841 = getelementptr inbounds nuw i8, ptr %835, i64 1
  %842 = getelementptr inbounds nuw i8, ptr %836, i64 1
  %843 = icmp ult ptr %841, %829
  %844 = icmp ult ptr %842, %831
  %845 = select i1 %843, i1 %844, i1 false
  br i1 %845, label %.preheader121, label %.loopexit123, !llvm.loop !26

.loopexit123:                                     ; preds = %840, %795
  %846 = phi ptr [ %827, %795 ], [ %842, %840 ]
  %847 = phi ptr [ %825, %795 ], [ %841, %840 ]
  %848 = phi i1 [ %832, %795 ], [ %843, %840 ]
  %849 = phi i1 [ %833, %795 ], [ %844, %840 ]
  br i1 %848, label %850, label %856

850:                                              ; preds = %.loopexit123
  br i1 %849, label %851, label %867

851:                                              ; preds = %850
  %852 = load i8, ptr %847, align 1, !tbaa !9
  %.pre595 = load i8, ptr %846, align 1, !tbaa !9
  br label %.loopexit122

.loopexit122:                                     ; preds = %.preheader121, %851
  %853 = phi i8 [ %.pre595, %851 ], [ %838, %.preheader121 ]
  %854 = phi i8 [ %852, %851 ], [ %837, %.preheader121 ]
  %855 = icmp ult i8 %854, %853
  br i1 %855, label %858, label %867

856:                                              ; preds = %.loopexit123
  br i1 %849, label %858, label %867

857:                                              ; preds = %858
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

858:                                              ; preds = %856, %.loopexit122
  %859 = add nuw nsw i32 %798, 1
  %860 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %797, i32 %859), !nosanitize !10
  %861 = extractvalue { i32, i1 } %860, 1, !nosanitize !10
  br i1 %861, label %857, label %862, !prof !11, !nosanitize !10

862:                                              ; preds = %858
  %863 = extractvalue { i32, i1 } %860, 0, !nosanitize !10
  %864 = and i32 %796, 1
  %865 = xor i32 %864, 1
  %866 = sub nsw i32 %798, %865
  br label %867

867:                                              ; preds = %862, %856, %.loopexit122, %850
  %868 = phi i32 [ %863, %862 ], [ %797, %856 ], [ %797, %850 ], [ %797, %.loopexit122 ]
  %869 = phi i32 [ %866, %862 ], [ %798, %856 ], [ %798, %850 ], [ %798, %.loopexit122 ]
  %870 = icmp sgt i32 %869, 0
  br i1 %870, label %795, label %871, !llvm.loop !175

871:                                              ; preds = %867
  %872 = icmp sgt i32 %868, 0
  br i1 %872, label %873, label %981

873:                                              ; preds = %871
  %874 = zext nneg i32 %868 to i64
  %875 = sub nsw i64 0, %874
  %876 = getelementptr [4 x i8], ptr %452, i64 %875
  %877 = icmp samesign ult i32 %868, 8
  br i1 %877, label %.preheader1159, label %878

878:                                              ; preds = %873
  %879 = and i64 %874, 2147483640
  br label %880

880:                                              ; preds = %880, %878
  %881 = phi i64 [ 0, %878 ], [ %891, %880 ]
  %882 = shl i64 %881, 2
  %883 = getelementptr i8, ptr %876, i64 %882
  %884 = getelementptr i8, ptr %452, i64 %882
  %885 = getelementptr i8, ptr %883, i64 16
  %886 = load <4 x i32>, ptr %883, align 4, !tbaa !5, !alias.scope !176, !noalias !179
  %887 = load <4 x i32>, ptr %885, align 4, !tbaa !5, !alias.scope !176, !noalias !179
  %888 = getelementptr i8, ptr %884, i64 16
  %889 = load <4 x i32>, ptr %884, align 4, !tbaa !5, !alias.scope !179
  %890 = load <4 x i32>, ptr %888, align 4, !tbaa !5, !alias.scope !179
  store <4 x i32> %889, ptr %883, align 4, !tbaa !5, !alias.scope !176, !noalias !179
  store <4 x i32> %890, ptr %885, align 4, !tbaa !5, !alias.scope !176, !noalias !179
  store <4 x i32> %886, ptr %884, align 4, !tbaa !5, !alias.scope !179
  store <4 x i32> %887, ptr %888, align 4, !tbaa !5, !alias.scope !179
  %891 = add nuw nsw i64 %881, 8
  %892 = icmp eq i64 %891, %879
  br i1 %892, label %893, label %880, !llvm.loop !181

893:                                              ; preds = %880
  %894 = shl nuw nsw i64 %879, 2
  %895 = getelementptr i8, ptr %876, i64 %894
  %896 = trunc nuw nsw i64 %879 to i32
  %897 = sub nsw i32 %868, %896
  %898 = getelementptr i8, ptr %452, i64 %894
  %899 = icmp eq i64 %879, %874
  br i1 %899, label %.loopexit133, label %.preheader1159

.preheader1159:                                   ; preds = %893, %873
  %.ph = phi ptr [ %876, %873 ], [ %895, %893 ]
  %.ph1160 = phi i32 [ %868, %873 ], [ %897, %893 ]
  %.ph1161 = phi ptr [ %452, %873 ], [ %898, %893 ]
  br label %900

900:                                              ; preds = %.preheader1159, %900
  %901 = phi ptr [ %907, %900 ], [ %.ph, %.preheader1159 ]
  %902 = phi i32 [ %906, %900 ], [ %.ph1160, %.preheader1159 ]
  %903 = phi ptr [ %908, %900 ], [ %.ph1161, %.preheader1159 ]
  %904 = load i32, ptr %901, align 4, !tbaa !5
  %905 = load i32, ptr %903, align 4, !tbaa !5
  store i32 %905, ptr %901, align 4, !tbaa !5
  store i32 %904, ptr %903, align 4, !tbaa !5
  %906 = add nsw i32 %902, -1
  %907 = getelementptr inbounds nuw i8, ptr %901, i64 4
  %908 = getelementptr inbounds nuw i8, ptr %903, i64 4
  %909 = icmp samesign ugt i32 %902, 1
  br i1 %909, label %900, label %.loopexit133, !llvm.loop !182

.loopexit133:                                     ; preds = %900, %893
  %910 = getelementptr inbounds nuw [4 x i8], ptr %452, i64 %874
  %911 = icmp ult ptr %910, %14
  br i1 %911, label %912, label %934

912:                                              ; preds = %.loopexit133
  %913 = load i32, ptr %910, align 4, !tbaa !5
  %914 = icmp slt i32 %913, 0
  br i1 %914, label %915, label %922

915:                                              ; preds = %912
  %916 = xor i32 %913, -1
  store i32 %916, ptr %910, align 4, !tbaa !5
  %917 = icmp ult ptr %451, %876
  br i1 %917, label %.preheader131, label %934

.preheader131:                                    ; preds = %915, %.preheader131
  %918 = phi ptr [ %919, %.preheader131 ], [ %452, %915 ]
  %919 = getelementptr inbounds i8, ptr %918, i64 -4
  %920 = load i32, ptr %919, align 4, !tbaa !5
  %921 = icmp slt i32 %920, 0
  br i1 %921, label %.preheader131, label %928, !llvm.loop !183

922:                                              ; preds = %912
  %923 = icmp ult ptr %451, %876
  br i1 %923, label %.preheader132, label %934

.preheader132:                                    ; preds = %922, %.preheader132
  %924 = phi ptr [ %927, %.preheader132 ], [ %452, %922 ]
  %925 = load i32, ptr %924, align 4, !tbaa !5
  %926 = icmp slt i32 %925, 0
  %927 = getelementptr inbounds nuw i8, ptr %924, i64 4
  br i1 %926, label %.preheader132, label %931, !llvm.loop !184

928:                                              ; preds = %.preheader131
  %929 = ptrtoint ptr %919 to i64
  %930 = sub i64 %929, %453
  br label %934

931:                                              ; preds = %.preheader132
  %932 = ptrtoint ptr %924 to i64
  %933 = sub i64 %19, %932
  br label %934

934:                                              ; preds = %931, %928, %922, %915, %.loopexit133
  %935 = phi i64 [ %933, %931 ], [ %448, %928 ], [ %448, %915 ], [ %448, %922 ], [ %448, %.loopexit133 ]
  %936 = phi i64 [ %454, %931 ], [ %930, %928 ], [ %454, %915 ], [ %454, %922 ], [ %454, %.loopexit133 ]
  %937 = phi ptr [ %452, %931 ], [ %919, %928 ], [ %452, %915 ], [ %452, %922 ], [ %452, %.loopexit133 ]
  %938 = phi ptr [ %924, %931 ], [ %452, %928 ], [ %452, %915 ], [ %452, %922 ], [ %452, %.loopexit133 ]
  %939 = phi i32 [ 2, %931 ], [ 5, %928 ], [ 1, %915 ], [ 0, %922 ], [ 0, %.loopexit133 ]
  %940 = icmp sgt i64 %936, %935
  br i1 %940, label %958, label %941

941:                                              ; preds = %934
  %942 = icmp slt i64 %indvars.iv, 32
  br i1 %942, label %944, label %943

943:                                              ; preds = %941
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 810, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #10
  unreachable

944:                                              ; preds = %941
  %945 = trunc nsw i64 %indvars.iv to i32
  %sext = shl i64 %indvars.iv, 32
  %946 = ashr exact i64 %sext, 27
  %947 = getelementptr inbounds i8, ptr %8, i64 %946
  store ptr %938, ptr %947, align 16, !tbaa !157
  %948 = getelementptr inbounds nuw i8, ptr %947, i64 8
  store ptr %910, ptr %948, align 8, !tbaa !159
  %949 = getelementptr inbounds nuw i8, ptr %947, i64 16
  store ptr %14, ptr %949, align 16, !tbaa !160
  %950 = add nsw i32 %945, 1
  %951 = and i32 %939, 3
  %952 = and i32 %450, 4
  %953 = or disjoint i32 %951, %952
  %954 = getelementptr inbounds nuw i8, ptr %947, i64 24
  store i32 %953, ptr %954, align 8, !tbaa !161
  %955 = and i32 %450, 3
  %956 = and i32 %939, 4
  %957 = or disjoint i32 %956, %955
  br label %.backedge1179

958:                                              ; preds = %934
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %959, label %960

959:                                              ; preds = %958
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 814, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #10
  unreachable

960:                                              ; preds = %958
  %961 = and i32 %939, 2
  %962 = icmp ne i32 %961, 0
  %963 = icmp eq ptr %938, %452
  %964 = and i1 %963, %962
  %965 = xor i32 %939, 6
  %966 = select i1 %964, i32 %965, i32 %939
  %967 = getelementptr inbounds [32 x i8], ptr %8, i64 %indvars.iv
  store ptr %451, ptr %967, align 16, !tbaa !157
  %968 = getelementptr inbounds nuw i8, ptr %967, i64 8
  store ptr %876, ptr %968, align 8, !tbaa !159
  %969 = getelementptr inbounds nuw i8, ptr %967, i64 16
  store ptr %937, ptr %969, align 16, !tbaa !160
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %970 = and i32 %450, 3
  %971 = and i32 %966, 4
  %972 = or disjoint i32 %971, %970
  %973 = getelementptr inbounds nuw i8, ptr %967, i64 24
  store i32 %972, ptr %973, align 8, !tbaa !161
  %974 = and i32 %966, 3
  %975 = and i32 %450, 4
  %976 = or disjoint i32 %974, %975
  %977 = ptrtoint ptr %910 to i64
  %978 = sub i64 %19, %977
  %979 = ashr exact i64 %978, 2
  %980 = icmp sgt i64 %979, %9
  br i1 %980, label %.lr.ph, label %._crit_edge.loopexit

981:                                              ; preds = %871, %791
  %982 = trunc nsw i64 %indvars.iv to i32
  %983 = getelementptr inbounds i8, ptr %452, i64 -4
  %984 = load i32, ptr %983, align 4, !tbaa !5
  %985 = ashr i32 %984, 31
  %986 = xor i32 %985, %984
  %987 = zext nneg i32 %986 to i64
  %988 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %987
  %989 = load i32, ptr %452, align 4, !tbaa !5
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds [4 x i8], ptr %1, i64 %990
  %992 = load i32, ptr %988, align 4, !tbaa !5
  %993 = getelementptr i8, ptr %988, i64 4
  %994 = load i32, ptr %993, align 4, !tbaa !5
  %995 = load i32, ptr %991, align 4, !tbaa !5
  %996 = getelementptr i8, ptr %991, i64 4
  %997 = load i32, ptr %996, align 4, !tbaa !5
  %998 = sext i32 %992 to i64
  %999 = getelementptr inbounds i8, ptr %11, i64 %998
  %1000 = sext i32 %995 to i64
  %1001 = getelementptr inbounds i8, ptr %11, i64 %1000
  %1002 = sext i32 %994 to i64
  %1003 = getelementptr i8, ptr %11, i64 %1002
  %1004 = sext i32 %997 to i64
  %1005 = getelementptr i8, ptr %11, i64 %1004
  %1006 = icmp ult ptr %999, %1003
  %1007 = icmp ult ptr %1001, %1005
  %1008 = select i1 %1006, i1 %1007, i1 false
  br i1 %1008, label %.preheader140, label %.loopexit142

.preheader140:                                    ; preds = %981, %1014
  %1009 = phi ptr [ %1015, %1014 ], [ %999, %981 ]
  %1010 = phi ptr [ %1016, %1014 ], [ %1001, %981 ]
  %1011 = load i8, ptr %1009, align 1, !tbaa !9
  %1012 = load i8, ptr %1010, align 1, !tbaa !9
  %1013 = icmp eq i8 %1011, %1012
  br i1 %1013, label %1014, label %.loopexit141

1014:                                             ; preds = %.preheader140
  %1015 = getelementptr inbounds nuw i8, ptr %1009, i64 1
  %1016 = getelementptr inbounds nuw i8, ptr %1010, i64 1
  %1017 = icmp ult ptr %1015, %1003
  %1018 = icmp ult ptr %1016, %1005
  %1019 = select i1 %1017, i1 %1018, i1 false
  br i1 %1019, label %.preheader140, label %.loopexit142, !llvm.loop !26

.loopexit142:                                     ; preds = %1014, %981
  %1020 = phi ptr [ %1001, %981 ], [ %1016, %1014 ]
  %1021 = phi ptr [ %999, %981 ], [ %1015, %1014 ]
  %1022 = phi i1 [ %1006, %981 ], [ %1017, %1014 ]
  %1023 = phi i1 [ %1007, %981 ], [ %1018, %1014 ]
  br i1 %1022, label %1024, label %1032

1024:                                             ; preds = %.loopexit142
  br i1 %1023, label %1025, label %1039

1025:                                             ; preds = %1024
  %1026 = load i8, ptr %1021, align 1, !tbaa !9
  %.pre596 = load i8, ptr %1020, align 1, !tbaa !9
  br label %.loopexit141

.loopexit141:                                     ; preds = %.preheader140, %1025
  %1027 = phi i8 [ %.pre596, %1025 ], [ %1012, %.preheader140 ]
  %1028 = phi i8 [ %1026, %1025 ], [ %1011, %.preheader140 ]
  %1029 = zext i8 %1028 to i32
  %1030 = zext i8 %1027 to i32
  %1031 = sub nsw i32 %1029, %1030
  br label %1034

1032:                                             ; preds = %.loopexit142
  %1033 = sext i1 %1023 to i32
  br label %1034

1034:                                             ; preds = %1032, %.loopexit141
  %1035 = phi i32 [ %1033, %1032 ], [ %1031, %.loopexit141 ]
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1037, label %1039

1037:                                             ; preds = %1034
  %1038 = xor i32 %989, -1
  store i32 %1038, ptr %452, align 4, !tbaa !5
  br label %1039

1039:                                             ; preds = %1037, %1034, %1024
  %1040 = and i32 %450, 1
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1044, label %1042

1042:                                             ; preds = %1039
  %1043 = load i32, ptr %451, align 4, !tbaa !5
  br label %1102

1044:                                             ; preds = %1039
  %1045 = and i32 %450, 2
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1105, label %1047

1047:                                             ; preds = %1044
  %1048 = getelementptr inbounds i8, ptr %451, i64 -4
  %1049 = load i32, ptr %1048, align 4, !tbaa !5
  %1050 = ashr i32 %1049, 31
  %1051 = xor i32 %1050, %1049
  %1052 = zext nneg i32 %1051 to i64
  %1053 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %1052
  %1054 = load i32, ptr %451, align 4, !tbaa !5
  %1055 = sext i32 %1054 to i64
  %1056 = getelementptr inbounds [4 x i8], ptr %1, i64 %1055
  %1057 = load i32, ptr %1053, align 4, !tbaa !5
  %1058 = getelementptr i8, ptr %1053, i64 4
  %1059 = load i32, ptr %1058, align 4, !tbaa !5
  %1060 = load i32, ptr %1056, align 4, !tbaa !5
  %1061 = getelementptr i8, ptr %1056, i64 4
  %1062 = load i32, ptr %1061, align 4, !tbaa !5
  %1063 = sext i32 %1057 to i64
  %1064 = getelementptr inbounds i8, ptr %11, i64 %1063
  %1065 = sext i32 %1060 to i64
  %1066 = getelementptr inbounds i8, ptr %11, i64 %1065
  %1067 = sext i32 %1059 to i64
  %1068 = getelementptr i8, ptr %11, i64 %1067
  %1069 = sext i32 %1062 to i64
  %1070 = getelementptr i8, ptr %11, i64 %1069
  %1071 = icmp ult ptr %1064, %1068
  %1072 = icmp ult ptr %1066, %1070
  %1073 = select i1 %1071, i1 %1072, i1 false
  br i1 %1073, label %.preheader137, label %.loopexit139

.preheader137:                                    ; preds = %1047, %1079
  %1074 = phi ptr [ %1080, %1079 ], [ %1064, %1047 ]
  %1075 = phi ptr [ %1081, %1079 ], [ %1066, %1047 ]
  %1076 = load i8, ptr %1074, align 1, !tbaa !9
  %1077 = load i8, ptr %1075, align 1, !tbaa !9
  %1078 = icmp eq i8 %1076, %1077
  br i1 %1078, label %1079, label %.loopexit138

1079:                                             ; preds = %.preheader137
  %1080 = getelementptr inbounds nuw i8, ptr %1074, i64 1
  %1081 = getelementptr inbounds nuw i8, ptr %1075, i64 1
  %1082 = icmp ult ptr %1080, %1068
  %1083 = icmp ult ptr %1081, %1070
  %1084 = select i1 %1082, i1 %1083, i1 false
  br i1 %1084, label %.preheader137, label %.loopexit139, !llvm.loop !26

.loopexit139:                                     ; preds = %1079, %1047
  %1085 = phi ptr [ %1066, %1047 ], [ %1081, %1079 ]
  %1086 = phi ptr [ %1064, %1047 ], [ %1080, %1079 ]
  %1087 = phi i1 [ %1071, %1047 ], [ %1082, %1079 ]
  %1088 = phi i1 [ %1072, %1047 ], [ %1083, %1079 ]
  br i1 %1087, label %1089, label %1097

1089:                                             ; preds = %.loopexit139
  br i1 %1088, label %1090, label %1105

1090:                                             ; preds = %1089
  %1091 = load i8, ptr %1086, align 1, !tbaa !9
  %.pre597 = load i8, ptr %1085, align 1, !tbaa !9
  br label %.loopexit138

.loopexit138:                                     ; preds = %.preheader137, %1090
  %1092 = phi i8 [ %.pre597, %1090 ], [ %1077, %.preheader137 ]
  %1093 = phi i8 [ %1091, %1090 ], [ %1076, %.preheader137 ]
  %1094 = zext i8 %1093 to i32
  %1095 = zext i8 %1092 to i32
  %1096 = sub nsw i32 %1094, %1095
  br label %1099

1097:                                             ; preds = %.loopexit139
  %1098 = sext i1 %1088 to i32
  br label %1099

1099:                                             ; preds = %1097, %.loopexit138
  %1100 = phi i32 [ %1098, %1097 ], [ %1096, %.loopexit138 ]
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1102, label %1105

1102:                                             ; preds = %1099, %1042
  %1103 = phi i32 [ %1043, %1042 ], [ %1054, %1099 ]
  %1104 = xor i32 %1103, -1
  store i32 %1104, ptr %451, align 4, !tbaa !5
  br label %1105

1105:                                             ; preds = %1102, %1099, %1089, %1044
  %1106 = and i32 %450, 4
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1165, label %1108

1108:                                             ; preds = %1105
  %1109 = getelementptr inbounds i8, ptr %14, i64 -4
  %1110 = load i32, ptr %1109, align 4, !tbaa !5
  %1111 = ashr i32 %1110, 31
  %1112 = xor i32 %1111, %1110
  %1113 = zext nneg i32 %1112 to i64
  %1114 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %1113
  %1115 = load i32, ptr %14, align 4, !tbaa !5
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds [4 x i8], ptr %1, i64 %1116
  %1118 = load i32, ptr %1114, align 4, !tbaa !5
  %1119 = getelementptr i8, ptr %1114, i64 4
  %1120 = load i32, ptr %1119, align 4, !tbaa !5
  %1121 = load i32, ptr %1117, align 4, !tbaa !5
  %1122 = getelementptr i8, ptr %1117, i64 4
  %1123 = load i32, ptr %1122, align 4, !tbaa !5
  %1124 = sext i32 %1118 to i64
  %1125 = getelementptr inbounds i8, ptr %11, i64 %1124
  %1126 = sext i32 %1121 to i64
  %1127 = getelementptr inbounds i8, ptr %11, i64 %1126
  %1128 = sext i32 %1120 to i64
  %1129 = getelementptr i8, ptr %11, i64 %1128
  %1130 = sext i32 %1123 to i64
  %1131 = getelementptr i8, ptr %11, i64 %1130
  %1132 = icmp ult ptr %1125, %1129
  %1133 = icmp ult ptr %1127, %1131
  %1134 = select i1 %1132, i1 %1133, i1 false
  br i1 %1134, label %.preheader134, label %.loopexit136

.preheader134:                                    ; preds = %1108, %1140
  %1135 = phi ptr [ %1141, %1140 ], [ %1125, %1108 ]
  %1136 = phi ptr [ %1142, %1140 ], [ %1127, %1108 ]
  %1137 = load i8, ptr %1135, align 1, !tbaa !9
  %1138 = load i8, ptr %1136, align 1, !tbaa !9
  %1139 = icmp eq i8 %1137, %1138
  br i1 %1139, label %1140, label %.loopexit135

1140:                                             ; preds = %.preheader134
  %1141 = getelementptr inbounds nuw i8, ptr %1135, i64 1
  %1142 = getelementptr inbounds nuw i8, ptr %1136, i64 1
  %1143 = icmp ult ptr %1141, %1129
  %1144 = icmp ult ptr %1142, %1131
  %1145 = select i1 %1143, i1 %1144, i1 false
  br i1 %1145, label %.preheader134, label %.loopexit136, !llvm.loop !26

.loopexit136:                                     ; preds = %1140, %1108
  %1146 = phi ptr [ %1127, %1108 ], [ %1142, %1140 ]
  %1147 = phi ptr [ %1125, %1108 ], [ %1141, %1140 ]
  %1148 = phi i1 [ %1132, %1108 ], [ %1143, %1140 ]
  %1149 = phi i1 [ %1133, %1108 ], [ %1144, %1140 ]
  br i1 %1148, label %1150, label %1158

1150:                                             ; preds = %.loopexit136
  br i1 %1149, label %1151, label %1165

1151:                                             ; preds = %1150
  %1152 = load i8, ptr %1147, align 1, !tbaa !9
  %.pre598 = load i8, ptr %1146, align 1, !tbaa !9
  br label %.loopexit135

.loopexit135:                                     ; preds = %.preheader134, %1151
  %1153 = phi i8 [ %.pre598, %1151 ], [ %1138, %.preheader134 ]
  %1154 = phi i8 [ %1152, %1151 ], [ %1137, %.preheader134 ]
  %1155 = zext i8 %1154 to i32
  %1156 = zext i8 %1153 to i32
  %1157 = sub nsw i32 %1155, %1156
  br label %1160

1158:                                             ; preds = %.loopexit136
  %1159 = sext i1 %1149 to i32
  br label %1160

1160:                                             ; preds = %1158, %.loopexit135
  %1161 = phi i32 [ %1159, %1158 ], [ %1157, %.loopexit135 ]
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1163, label %1165

1163:                                             ; preds = %1160
  %1164 = xor i32 %1115, -1
  store i32 %1164, ptr %14, align 4, !tbaa !5
  br label %1165

1165:                                             ; preds = %1163, %1160, %1150, %1105
  %1166 = icmp sgt i64 %indvars.iv, -1
  br i1 %1166, label %1168, label %1167

1167:                                             ; preds = %1165
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 822, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #10
  unreachable

1168:                                             ; preds = %1165
  %1169 = icmp eq i64 %indvars.iv, 0
  br i1 %1169, label %1181, label %1170

1170:                                             ; preds = %1168
  %1171 = add nsw i32 %982, -1
  %1172 = zext nneg i32 %1171 to i64
  %1173 = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %1172
  %1174 = load ptr, ptr %1173, align 16, !tbaa !157
  %1175 = getelementptr inbounds nuw i8, ptr %1173, i64 8
  %1176 = load ptr, ptr %1175, align 8, !tbaa !159
  %1177 = getelementptr inbounds nuw i8, ptr %1173, i64 16
  %1178 = load ptr, ptr %1177, align 16, !tbaa !160
  %1179 = getelementptr inbounds nuw i8, ptr %1173, i64 24
  %1180 = load i32, ptr %1179, align 8, !tbaa !161
  br label %.backedge1179

.backedge1179:                                    ; preds = %1170, %944, %776, %436
  %.be1180 = phi ptr [ %1178, %1170 ], [ %937, %944 ], [ %784, %776 ], [ %444, %436 ]
  %.be1181 = phi ptr [ %1176, %1170 ], [ %876, %944 ], [ %782, %776 ], [ %442, %436 ]
  %.be1182 = phi ptr [ %1174, %1170 ], [ %451, %944 ], [ %780, %776 ], [ %440, %436 ]
  %.be1183 = phi i32 [ %1171, %1170 ], [ %950, %944 ], [ %777, %776 ], [ %437, %436 ]
  %.be1184 = phi i32 [ %1180, %1170 ], [ %957, %944 ], [ %786, %776 ], [ %446, %436 ]
  br label %13

1181:                                             ; preds = %1168, %774, %434
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @tr_partition(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull writeonly captures(none) %4, ptr noundef nonnull writeonly captures(none) %5, i32 noundef %6) unnamed_addr #6 {
  %8 = getelementptr inbounds i8, ptr %2, i64 -4
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %12 = icmp ult ptr %11, %3
  br i1 %12, label %13, label %.loopexit59

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 4, !tbaa !5
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %9, label %19, !llvm.loop !185

19:                                               ; preds = %13
  %20 = icmp slt i32 %17, %6
  br i1 %20, label %21, label %.loopexit59

21:                                               ; preds = %19
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %23 = icmp ult ptr %22, %3
  br i1 %23, label %.preheader58, label %.loopexit59

.preheader58:                                     ; preds = %21, %36
  %24 = phi ptr [ %38, %36 ], [ %22, %21 ]
  %25 = phi ptr [ %37, %36 ], [ %11, %21 ]
  %26 = load i32, ptr %24, align 4, !tbaa !5
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = icmp sgt i32 %29, %6
  br i1 %30, label %.loopexit59, label %31

31:                                               ; preds = %.preheader58
  %32 = icmp eq i32 %29, %6
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i32, ptr %25, align 4, !tbaa !5
  store i32 %34, ptr %24, align 4, !tbaa !5
  store i32 %26, ptr %25, align 4, !tbaa !5
  %35 = getelementptr inbounds nuw i8, ptr %25, i64 4
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi ptr [ %35, %33 ], [ %25, %31 ]
  %38 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %39 = icmp ult ptr %38, %3
  br i1 %39, label %.preheader58, label %.loopexit59, !llvm.loop !186

.loopexit59:                                      ; preds = %9, %36, %.preheader58, %21, %19
  %40 = phi ptr [ %11, %19 ], [ %11, %21 ], [ %37, %36 ], [ %25, %.preheader58 ], [ %11, %9 ]
  %41 = phi ptr [ %11, %19 ], [ %22, %21 ], [ %38, %36 ], [ %24, %.preheader58 ], [ %11, %9 ]
  br label %42

42:                                               ; preds = %46, %.loopexit59
  %43 = phi ptr [ %3, %.loopexit59 ], [ %44, %46 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 -4
  %45 = icmp ult ptr %41, %44
  br i1 %45, label %46, label %.loopexit54

46:                                               ; preds = %42
  %47 = load i32, ptr %44, align 4, !tbaa !5
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i8], ptr %0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !5
  %51 = icmp eq i32 %50, %6
  br i1 %51, label %42, label %52, !llvm.loop !187

52:                                               ; preds = %46
  %53 = icmp sgt i32 %50, %6
  br i1 %53, label %54, label %.loopexit54

54:                                               ; preds = %52
  %55 = getelementptr inbounds i8, ptr %43, i64 -8
  %56 = icmp ult ptr %41, %55
  br i1 %56, label %.preheader53, label %.loopexit54

.preheader53:                                     ; preds = %54, %69
  %57 = phi ptr [ %71, %69 ], [ %55, %54 ]
  %58 = phi ptr [ %70, %69 ], [ %44, %54 ]
  %59 = load i32, ptr %57, align 4, !tbaa !5
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8], ptr %0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !5
  %63 = icmp slt i32 %62, %6
  br i1 %63, label %.loopexit54, label %64

64:                                               ; preds = %.preheader53
  %65 = icmp eq i32 %62, %6
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i32, ptr %58, align 4, !tbaa !5
  store i32 %67, ptr %57, align 4, !tbaa !5
  store i32 %59, ptr %58, align 4, !tbaa !5
  %68 = getelementptr inbounds i8, ptr %58, i64 -4
  br label %69

69:                                               ; preds = %66, %64
  %70 = phi ptr [ %68, %66 ], [ %58, %64 ]
  %71 = getelementptr inbounds i8, ptr %57, i64 -4
  %72 = icmp ult ptr %41, %71
  br i1 %72, label %.preheader53, label %.loopexit54, !llvm.loop !188

.loopexit54:                                      ; preds = %42, %69, %.preheader53, %54, %52
  %73 = phi ptr [ %44, %52 ], [ %55, %54 ], [ %71, %69 ], [ %57, %.preheader53 ], [ %44, %42 ]
  %74 = phi ptr [ %44, %52 ], [ %44, %54 ], [ %70, %69 ], [ %58, %.preheader53 ], [ %44, %42 ]
  %75 = icmp ult ptr %41, %73
  br i1 %75, label %.preheader51, label %.loopexit52

.preheader51:                                     ; preds = %.loopexit54, %.loopexit45
  %76 = phi ptr [ %120, %.loopexit45 ], [ %74, %.loopexit54 ]
  %77 = phi ptr [ %121, %.loopexit45 ], [ %73, %.loopexit54 ]
  %78 = phi ptr [ %101, %.loopexit45 ], [ %41, %.loopexit54 ]
  %79 = phi ptr [ %100, %.loopexit45 ], [ %40, %.loopexit54 ]
  %80 = load i32, ptr %78, align 4, !tbaa !5
  %81 = load i32, ptr %77, align 4, !tbaa !5
  store i32 %81, ptr %78, align 4, !tbaa !5
  store i32 %80, ptr %77, align 4, !tbaa !5
  %82 = getelementptr inbounds nuw i8, ptr %78, i64 4
  %83 = icmp ult ptr %82, %77
  br i1 %83, label %.preheader47, label %.loopexit48

.preheader47:                                     ; preds = %.preheader51, %96
  %84 = phi ptr [ %98, %96 ], [ %82, %.preheader51 ]
  %85 = phi ptr [ %97, %96 ], [ %79, %.preheader51 ]
  %86 = load i32, ptr %84, align 4, !tbaa !5
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], ptr %0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !5
  %90 = icmp sgt i32 %89, %6
  br i1 %90, label %.loopexit48, label %91

91:                                               ; preds = %.preheader47
  %92 = icmp eq i32 %89, %6
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = load i32, ptr %85, align 4, !tbaa !5
  store i32 %94, ptr %84, align 4, !tbaa !5
  store i32 %86, ptr %85, align 4, !tbaa !5
  %95 = getelementptr inbounds nuw i8, ptr %85, i64 4
  br label %96

96:                                               ; preds = %93, %91
  %97 = phi ptr [ %95, %93 ], [ %85, %91 ]
  %98 = getelementptr inbounds nuw i8, ptr %84, i64 4
  %99 = icmp ult ptr %98, %77
  br i1 %99, label %.preheader47, label %.loopexit48, !llvm.loop !189

.loopexit48:                                      ; preds = %96, %.preheader47, %.preheader51
  %100 = phi ptr [ %79, %.preheader51 ], [ %85, %.preheader47 ], [ %97, %96 ]
  %101 = phi ptr [ %82, %.preheader51 ], [ %84, %.preheader47 ], [ %98, %96 ]
  %102 = getelementptr inbounds i8, ptr %77, i64 -4
  %103 = icmp ult ptr %101, %102
  br i1 %103, label %.preheader, label %.loopexit45

.preheader:                                       ; preds = %.loopexit48, %116
  %104 = phi ptr [ %118, %116 ], [ %102, %.loopexit48 ]
  %105 = phi ptr [ %117, %116 ], [ %76, %.loopexit48 ]
  %106 = load i32, ptr %104, align 4, !tbaa !5
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8], ptr %0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !5
  %110 = icmp slt i32 %109, %6
  br i1 %110, label %.loopexit45, label %111

111:                                              ; preds = %.preheader
  %112 = icmp eq i32 %109, %6
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i32, ptr %105, align 4, !tbaa !5
  store i32 %114, ptr %104, align 4, !tbaa !5
  store i32 %106, ptr %105, align 4, !tbaa !5
  %115 = getelementptr inbounds i8, ptr %105, i64 -4
  br label %116

116:                                              ; preds = %113, %111
  %117 = phi ptr [ %115, %113 ], [ %105, %111 ]
  %118 = getelementptr inbounds i8, ptr %104, i64 -4
  %119 = icmp ult ptr %101, %118
  br i1 %119, label %.preheader, label %.loopexit45, !llvm.loop !190

.loopexit45:                                      ; preds = %116, %.preheader, %.loopexit48
  %120 = phi ptr [ %76, %.loopexit48 ], [ %105, %.preheader ], [ %117, %116 ]
  %121 = phi ptr [ %102, %.loopexit48 ], [ %104, %.preheader ], [ %118, %116 ]
  %122 = icmp ult ptr %101, %121
  br i1 %122, label %.preheader51, label %.loopexit52, !llvm.loop !191

.loopexit52:                                      ; preds = %.loopexit45, %.loopexit54
  %123 = phi ptr [ %40, %.loopexit54 ], [ %100, %.loopexit45 ]
  %124 = phi ptr [ %41, %.loopexit54 ], [ %101, %.loopexit45 ]
  %125 = phi ptr [ %74, %.loopexit54 ], [ %120, %.loopexit45 ]
  %126 = icmp ugt ptr %123, %125
  br i1 %126, label %263, label %127

127:                                              ; preds = %.loopexit52
  %128 = getelementptr inbounds i8, ptr %124, i64 -4
  %129 = ptrtoint ptr %123 to i64
  %130 = ptrtoint ptr %1 to i64
  %131 = sub i64 %129, %130
  %132 = ashr exact i64 %131, 2
  %133 = add nsw i64 %132, 2147483648
  %134 = icmp ult i64 %133, 4294967296
  br i1 %134, label %136, label %135

135:                                              ; preds = %127
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1101, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #10
  unreachable

136:                                              ; preds = %127
  %137 = ptrtoint ptr %124 to i64
  %138 = sub i64 %137, %129
  %139 = ashr exact i64 %138, 2
  %140 = add nsw i64 %139, 2147483648
  %141 = icmp ult i64 %140, 4294967296
  br i1 %141, label %143, label %142

142:                                              ; preds = %136
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1101, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #10
  unreachable

143:                                              ; preds = %136
  %144 = tail call i64 @llvm.smin.i64(i64 %132, i64 %139)
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %.loopexit44

146:                                              ; preds = %143
  %147 = sub nsw i64 0, %144
  %148 = getelementptr [4 x i8], ptr %124, i64 %147
  %149 = trunc nuw nsw i64 %144 to i32
  %150 = icmp samesign ult i64 %144, 20
  br i1 %150, label %.preheader187, label %151

151:                                              ; preds = %146
  %152 = shl nuw nsw i64 %144, 2
  %153 = add nuw nsw i64 %152, 17179869180
  %154 = and i64 %153, 17179869180
  %155 = getelementptr i8, ptr %1, i64 %154
  %156 = getelementptr i8, ptr %155, i64 4
  %reass.sub = sub nsw i64 %154, %152
  %157 = getelementptr i8, ptr %124, i64 %reass.sub
  %158 = getelementptr i8, ptr %157, i64 4
  %159 = icmp ult ptr %1, %158
  %160 = icmp ult ptr %148, %156
  %161 = and i1 %159, %160
  br i1 %161, label %.preheader187, label %162

162:                                              ; preds = %151
  %163 = and i64 %144, 8589934584
  br label %164

164:                                              ; preds = %164, %162
  %165 = phi i64 [ 0, %162 ], [ %175, %164 ]
  %166 = shl i64 %165, 2
  %167 = getelementptr i8, ptr %148, i64 %166
  %168 = getelementptr i8, ptr %1, i64 %166
  %169 = getelementptr i8, ptr %168, i64 16
  %170 = load <4 x i32>, ptr %168, align 4, !tbaa !5, !alias.scope !192, !noalias !195
  %171 = load <4 x i32>, ptr %169, align 4, !tbaa !5, !alias.scope !192, !noalias !195
  %172 = getelementptr i8, ptr %167, i64 16
  %173 = load <4 x i32>, ptr %167, align 4, !tbaa !5, !alias.scope !195
  %174 = load <4 x i32>, ptr %172, align 4, !tbaa !5, !alias.scope !195
  store <4 x i32> %173, ptr %168, align 4, !tbaa !5, !alias.scope !192, !noalias !195
  store <4 x i32> %174, ptr %169, align 4, !tbaa !5, !alias.scope !192, !noalias !195
  store <4 x i32> %170, ptr %167, align 4, !tbaa !5, !alias.scope !195
  store <4 x i32> %171, ptr %172, align 4, !tbaa !5, !alias.scope !195
  %175 = add nuw i64 %165, 8
  %176 = icmp eq i64 %175, %163
  br i1 %176, label %177, label %164, !llvm.loop !197

177:                                              ; preds = %164
  %178 = trunc nuw nsw i64 %163 to i32
  %179 = sub nsw i32 %149, %178
  %180 = shl nuw nsw i64 %163, 2
  %181 = getelementptr i8, ptr %148, i64 %180
  %182 = getelementptr i8, ptr %1, i64 %180
  %183 = icmp eq i64 %144, %163
  br i1 %183, label %.loopexit44, label %.preheader187

.preheader187:                                    ; preds = %177, %151, %146
  %.ph188 = phi i32 [ %179, %177 ], [ %149, %146 ], [ %149, %151 ]
  %.ph189 = phi ptr [ %181, %177 ], [ %148, %146 ], [ %148, %151 ]
  %.ph190 = phi ptr [ %182, %177 ], [ %1, %146 ], [ %1, %151 ]
  br label %184

184:                                              ; preds = %.preheader187, %184
  %185 = phi i32 [ %190, %184 ], [ %.ph188, %.preheader187 ]
  %186 = phi ptr [ %192, %184 ], [ %.ph189, %.preheader187 ]
  %187 = phi ptr [ %191, %184 ], [ %.ph190, %.preheader187 ]
  %188 = load i32, ptr %187, align 4, !tbaa !5
  %189 = load i32, ptr %186, align 4, !tbaa !5
  store i32 %189, ptr %187, align 4, !tbaa !5
  store i32 %188, ptr %186, align 4, !tbaa !5
  %190 = add nsw i32 %185, -1
  %191 = getelementptr inbounds nuw i8, ptr %187, i64 4
  %192 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %193 = icmp samesign ugt i32 %185, 1
  br i1 %193, label %184, label %.loopexit44, !llvm.loop !198

.loopexit44:                                      ; preds = %184, %177, %143
  %194 = ptrtoint ptr %125 to i64
  %195 = ptrtoint ptr %128 to i64
  %196 = sub i64 %194, %195
  %197 = ashr exact i64 %196, 2
  %198 = add nsw i64 %197, 2147483648
  %199 = icmp ult i64 %198, 4294967296
  br i1 %199, label %201, label %200

200:                                              ; preds = %.loopexit44
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.src, i32 noundef 1103, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #10
  unreachable

201:                                              ; preds = %.loopexit44
  %202 = ptrtoint ptr %3 to i64
  %203 = sub i64 %202, %194
  %204 = ashr exact i64 %203, 2
  %205 = add nsw i64 %204, 2147483647
  %206 = icmp ult i64 %205, 4294967296
  br i1 %206, label %208, label %207

207:                                              ; preds = %201
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.src, i32 noundef 1103, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #10
  unreachable

208:                                              ; preds = %201
  %209 = trunc nsw i64 %197 to i32
  %210 = trunc i64 %204 to i32
  %211 = add i32 %210, -1
  %212 = tail call i32 @llvm.smin.i32(i32 %211, i32 %209)
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %.loopexit

214:                                              ; preds = %208
  %215 = zext nneg i32 %212 to i64
  %216 = sub nsw i64 0, %215
  %217 = getelementptr [4 x i8], ptr %3, i64 %216
  %218 = icmp samesign ult i32 %212, 16
  br i1 %218, label %.preheader184, label %219

219:                                              ; preds = %214
  %220 = add nsw i32 %212, -1
  %221 = zext nneg i32 %220 to i64
  %222 = shl nuw nsw i64 %221, 2
  %223 = getelementptr i8, ptr %124, i64 %222
  %224 = getelementptr i8, ptr %223, i64 4
  %225 = icmp ult ptr %124, %3
  %226 = icmp ult ptr %217, %224
  %227 = and i1 %225, %226
  br i1 %227, label %.preheader184, label %228

228:                                              ; preds = %219
  %229 = and i64 %215, 2147483640
  br label %230

230:                                              ; preds = %230, %228
  %231 = phi i64 [ 0, %228 ], [ %241, %230 ]
  %232 = shl i64 %231, 2
  %233 = getelementptr i8, ptr %217, i64 %232
  %234 = getelementptr i8, ptr %124, i64 %232
  %235 = getelementptr i8, ptr %234, i64 16
  %236 = load <4 x i32>, ptr %234, align 4, !tbaa !5, !alias.scope !199, !noalias !202
  %237 = load <4 x i32>, ptr %235, align 4, !tbaa !5, !alias.scope !199, !noalias !202
  %238 = getelementptr i8, ptr %233, i64 16
  %239 = load <4 x i32>, ptr %233, align 4, !tbaa !5, !alias.scope !202
  %240 = load <4 x i32>, ptr %238, align 4, !tbaa !5, !alias.scope !202
  store <4 x i32> %239, ptr %234, align 4, !tbaa !5, !alias.scope !199, !noalias !202
  store <4 x i32> %240, ptr %235, align 4, !tbaa !5, !alias.scope !199, !noalias !202
  store <4 x i32> %236, ptr %233, align 4, !tbaa !5, !alias.scope !202
  store <4 x i32> %237, ptr %238, align 4, !tbaa !5, !alias.scope !202
  %241 = add nuw nsw i64 %231, 8
  %242 = icmp eq i64 %241, %229
  br i1 %242, label %243, label %230, !llvm.loop !204

243:                                              ; preds = %230
  %244 = trunc nuw nsw i64 %229 to i32
  %245 = sub nsw i32 %212, %244
  %246 = shl nuw nsw i64 %229, 2
  %247 = getelementptr i8, ptr %217, i64 %246
  %248 = getelementptr i8, ptr %124, i64 %246
  %249 = icmp eq i64 %229, %215
  br i1 %249, label %.loopexit, label %.preheader184

.preheader184:                                    ; preds = %243, %219, %214
  %.ph = phi i32 [ %245, %243 ], [ %212, %214 ], [ %212, %219 ]
  %.ph185 = phi ptr [ %247, %243 ], [ %217, %214 ], [ %217, %219 ]
  %.ph186 = phi ptr [ %248, %243 ], [ %124, %214 ], [ %124, %219 ]
  br label %250

250:                                              ; preds = %.preheader184, %250
  %251 = phi i32 [ %256, %250 ], [ %.ph, %.preheader184 ]
  %252 = phi ptr [ %258, %250 ], [ %.ph185, %.preheader184 ]
  %253 = phi ptr [ %257, %250 ], [ %.ph186, %.preheader184 ]
  %254 = load i32, ptr %253, align 4, !tbaa !5
  %255 = load i32, ptr %252, align 4, !tbaa !5
  store i32 %255, ptr %253, align 4, !tbaa !5
  store i32 %254, ptr %252, align 4, !tbaa !5
  %256 = add nsw i32 %251, -1
  %257 = getelementptr inbounds nuw i8, ptr %253, i64 4
  %258 = getelementptr inbounds nuw i8, ptr %252, i64 4
  %259 = icmp samesign ugt i32 %251, 1
  br i1 %259, label %250, label %.loopexit, !llvm.loop !205

.loopexit:                                        ; preds = %250, %243, %208
  %260 = getelementptr inbounds i8, ptr %1, i64 %138
  %261 = sub nsw i64 0, %197
  %262 = getelementptr inbounds [4 x i8], ptr %3, i64 %261
  br label %263

263:                                              ; preds = %.loopexit, %.loopexit52
  %264 = phi ptr [ %262, %.loopexit ], [ %3, %.loopexit52 ]
  %265 = phi ptr [ %260, %.loopexit ], [ %1, %.loopexit52 ]
  store ptr %265, ptr %4, align 8, !tbaa !46
  store ptr %264, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = !{!"branch_weights", i32 1, i32 1048575}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = !{!"branch_weights", i32 1048575, i32 1}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !13, !34, !35}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !13, !34}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = !{!"branch_weights", i32 1, i32 1048574}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 int", !48, i64 0}
!48 = !{!"any pointer", !7, i64 0}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = !{!52, !47, i64 0}
!52 = !{!"", !47, i64 0, !47, i64 8, !47, i64 16, !6, i64 24, !6, i64 28}
!53 = !{!52, !47, i64 8}
!54 = !{!52, !47, i64 16}
!55 = !{!52, !6, i64 24}
!56 = !{!52, !6, i64 28}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = !{!"branch_weights", i32 134217473, i32 127}
!62 = distinct !{!62, !13}
!63 = !{!"branch_weights", i32 1, i32 127}
!64 = distinct !{!64, !13}
!65 = !{!"branch_weights", i32 127, i32 134217473}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = !{!"branch_weights", i32 1, i32 8190}
!83 = !{!"branch_weights", i32 8190, i32 -16382}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = !{!94}
!94 = distinct !{!94, !95}
!95 = distinct !{!95, !"LVerDomain"}
!96 = !{!97}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !13, !34, !35}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = distinct !{!101, !13, !34}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!106}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !13, !34, !35}
!108 = distinct !{!108, !100}
!109 = distinct !{!109, !13, !34}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = !{!113, !47, i64 0}
!113 = !{!"", !47, i64 0, !47, i64 8, !6, i64 16, !6, i64 20}
!114 = !{!113, !47, i64 8}
!115 = !{!113, !6, i64 16}
!116 = !{!113, !6, i64 20}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = !{!131}
!131 = distinct !{!131, !132}
!132 = distinct !{!132, !"LVerDomain"}
!133 = !{!134}
!134 = distinct !{!134, !132}
!135 = distinct !{!135, !13, !34, !35}
!136 = distinct !{!136, !13, !34}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!141}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !13, !34, !35}
!143 = distinct !{!143, !13, !34}
!144 = !{!145}
!145 = distinct !{!145, !146}
!146 = distinct !{!146, !"LVerDomain"}
!147 = !{!148}
!148 = distinct !{!148, !146}
!149 = distinct !{!149, !13, !34, !35}
!150 = distinct !{!150, !13, !34}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !13}
!154 = distinct !{!154, !13}
!155 = distinct !{!155, !13}
!156 = distinct !{!156, !13}
!157 = !{!158, !47, i64 0}
!158 = !{!"", !47, i64 0, !47, i64 8, !47, i64 16, !6, i64 24}
!159 = !{!158, !47, i64 8}
!160 = !{!158, !47, i64 16}
!161 = !{!158, !6, i64 24}
!162 = !{!163}
!163 = distinct !{!163, !164}
!164 = distinct !{!164, !"LVerDomain"}
!165 = !{!166}
!166 = distinct !{!166, !164}
!167 = distinct !{!167, !13, !34, !35}
!168 = distinct !{!168, !13, !34}
!169 = distinct !{!169, !13}
!170 = distinct !{!170, !13}
!171 = distinct !{!171, !13}
!172 = distinct !{!172, !13}
!173 = distinct !{!173, !13}
!174 = distinct !{!174, !13}
!175 = distinct !{!175, !13}
!176 = !{!177}
!177 = distinct !{!177, !178}
!178 = distinct !{!178, !"LVerDomain"}
!179 = !{!180}
!180 = distinct !{!180, !178}
!181 = distinct !{!181, !13, !34, !35}
!182 = distinct !{!182, !13, !34}
!183 = distinct !{!183, !13}
!184 = distinct !{!184, !13}
!185 = distinct !{!185, !13}
!186 = distinct !{!186, !13}
!187 = distinct !{!187, !13}
!188 = distinct !{!188, !13}
!189 = distinct !{!189, !13}
!190 = distinct !{!190, !13}
!191 = distinct !{!191, !13}
!192 = !{!193}
!193 = distinct !{!193, !194}
!194 = distinct !{!194, !"LVerDomain"}
!195 = !{!196}
!196 = distinct !{!196, !194}
!197 = distinct !{!197, !13, !34, !35}
!198 = distinct !{!198, !13, !34}
!199 = !{!200}
!200 = distinct !{!200, !201}
!201 = distinct !{!201, !"LVerDomain"}
!202 = !{!203}
!203 = distinct !{!203, !201}
!204 = distinct !{!204, !13, !34, !35}
!205 = distinct !{!205, !13, !34}
