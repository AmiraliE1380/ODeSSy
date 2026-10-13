; ModuleID = 'results/static/pipeline_cost_par/ir/zstd_divsufsort.thorough.mid.ll'
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
  br label %.loopexit313

.loopexit225:                                     ; preds = %36, %18, %64, %96, %93, %.preheader311, %124, %115, %142, %2897, %.loopexit308
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

.loopexit:                                        ; preds = %45, %149, %705, %209, %756, %741, %.loopexit227, %2890, %2831, %2844, %2861, %2870, %177, %.loopexit315
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

.loopexit313:                                     ; preds = %56, %5
  %14 = phi i32 [ %13, %5 ], [ %62, %56 ]
  %15 = phi i32 [ %9, %5 ], [ %58, %56 ]
  %16 = phi i32 [ %4, %5 ], [ %48, %56 ]
  %17 = zext nneg i32 %15 to i64
  br label %18

18:                                               ; preds = %30, %.loopexit313
  %19 = phi i64 [ %17, %.loopexit313 ], [ %31, %30 ]
  %20 = phi i32 [ %14, %.loopexit313 ], [ %34, %30 ]
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
  br i1 %29, label %30, label %.loopexit315

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
  br i1 %53, label %.loopexit315, label %54

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
  br i1 %63, label %.loopexit313, label %64, !llvm.loop !17

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
  br i1 %75, label %56, label %.loopexit315, !llvm.loop !18

.loopexit315:                                     ; preds = %50, %26, %72
  %76 = phi i32 [ %48, %72 ], [ %16, %26 ], [ %48, %50 ]
  %77 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4, i32 %76), !nosanitize !10
  %78 = extractvalue { i32, i1 } %77, 0, !nosanitize !10
  %79 = extractvalue { i32, i1 } %77, 1, !nosanitize !10
  br i1 %79, label %.loopexit, label %.preheader311, !prof !11, !nosanitize !10

.loopexit310:                                     ; preds = %111, %103
  %80 = phi i32 [ %87, %103 ], [ %122, %111 ]
  %81 = phi i32 [ %105, %103 ], [ %113, %111 ]
  %82 = add nuw nsw i64 %85, 1
  %83 = icmp eq i64 %104, 256
  br i1 %83, label %130, label %.preheader311, !llvm.loop !19

.preheader311:                                    ; preds = %.loopexit315, %.loopexit310
  %84 = phi i64 [ %104, %.loopexit310 ], [ 0, %.loopexit315 ]
  %85 = phi i64 [ %82, %.loopexit310 ], [ 1, %.loopexit315 ]
  %86 = phi i32 [ %81, %.loopexit310 ], [ 0, %.loopexit315 ]
  %87 = phi i32 [ %80, %.loopexit310 ], [ 0, %.loopexit315 ]
  %88 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %84
  %89 = load i32, ptr %88, align 4, !tbaa !5
  %90 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 %89), !nosanitize !10
  %91 = extractvalue { i32, i1 } %90, 0, !nosanitize !10
  %92 = extractvalue { i32, i1 } %90, 1, !nosanitize !10
  br i1 %92, label %.loopexit225, label %93, !prof !11, !nosanitize !10

93:                                               ; preds = %.preheader311
  %94 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 %87), !nosanitize !10
  %95 = extractvalue { i32, i1 } %94, 1, !nosanitize !10
  br i1 %95, label %.loopexit225, label %96, !prof !11, !nosanitize !10

96:                                               ; preds = %93
  %97 = extractvalue { i32, i1 } %94, 0, !nosanitize !10
  store i32 %97, ptr %88, align 4, !tbaa !5
  %.idx1265 = shl i64 %84, 10
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 %.idx1265
  %99 = getelementptr inbounds nuw [4 x i8], ptr %98, i64 %84
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %101 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %91, i32 %100), !nosanitize !10
  %102 = extractvalue { i32, i1 } %101, 1, !nosanitize !10
  br i1 %102, label %.loopexit225, label %103, !prof !11, !nosanitize !10

103:                                              ; preds = %96
  %104 = add nuw nsw i64 %84, 1
  %105 = extractvalue { i32, i1 } %101, 0
  %106 = icmp samesign ult i64 %84, 255
  br i1 %106, label %107, label %.loopexit310

107:                                              ; preds = %103
  %108 = shl nuw nsw i64 %84, 10
  %109 = getelementptr inbounds nuw i8, ptr %3, i64 %108
  %110 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %84
  br label %115

111:                                              ; preds = %124
  %112 = add nuw nsw i64 %116, 1
  %113 = extractvalue { i32, i1 } %128, 0
  %114 = icmp eq i64 %112, 256
  br i1 %114, label %.loopexit310, label %115, !llvm.loop !20

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

130:                                              ; preds = %.loopexit310
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
  br i1 %139, label %.loopexit308, label %140

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
  br i1 %170, label %142, label %.loopexit308, !llvm.loop !21

.loopexit308:                                     ; preds = %165, %132
  %171 = add nsw i32 %78, -1
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds nuw [4 x i8], ptr %137, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !5
  %175 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %174, i32 1), !nosanitize !10
  %176 = extractvalue { i32, i1 } %175, 1, !nosanitize !10
  br i1 %176, label %.loopexit225, label %177, !prof !11, !nosanitize !10

177:                                              ; preds = %.loopexit308
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

205:                                              ; preds = %708, %199
  %206 = phi i32 [ 254, %199 ], [ %709, %708 ]
  %207 = phi i32 [ %78, %199 ], [ %215, %708 ]
  %208 = shl i32 %206, 8
  br label %209

209:                                              ; preds = %702, %205
  %210 = phi i32 [ 255, %205 ], [ %703, %702 ]
  %211 = phi i32 [ %207, %205 ], [ %215, %702 ]
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
  br i1 %220, label %221, label %702

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
  br label %344

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
  br i1 %242, label %243, label %344

243:                                              ; preds = %240
  %244 = icmp sgt i64 %236, 1048575
  br i1 %244, label %337, label %245

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

257:                                              ; preds = %304, %267, %258, %249
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
  br i1 %279, label %280, label %302

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
  br i1 %290, label %291, label %296

291:                                              ; preds = %280
  %292 = add i32 %289, 1
  %293 = sdiv i32 %241, %289
  %294 = add i32 %292, %293
  %295 = ashr i32 %294, 1
  br label %296

296:                                              ; preds = %291, %280
  %297 = phi i32 [ %295, %291 ], [ %289, %280 ]
  %298 = add i32 %297, 1
  %299 = sdiv i32 %241, %297
  %300 = add i32 %298, %299
  %301 = ashr i32 %300, 1
  br label %324

302:                                              ; preds = %277
  %303 = icmp sgt i32 %278, 7
  br i1 %303, label %304, label %318

304:                                              ; preds = %302
  %305 = lshr i32 %278, 1
  %306 = sub nuw nsw i32 7, %305
  %307 = and i32 %278, 2147483646
  %308 = add nsw i32 %307, -6
  %309 = ashr i32 %241, %308
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [4 x i8], ptr @sqq_table, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !5
  %313 = ashr i32 %312, %306
  %314 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %313, i32 1), !nosanitize !10
  %315 = extractvalue { i32, i1 } %314, 1, !nosanitize !10
  br i1 %315, label %257, label %316, !prof !11, !nosanitize !10

316:                                              ; preds = %304
  %317 = extractvalue { i32, i1 } %314, 0, !nosanitize !10
  br label %324

318:                                              ; preds = %302
  %319 = shl i64 %235, 30
  %320 = ashr i64 %319, 32
  %321 = getelementptr inbounds [4 x i8], ptr @sqq_table, i64 %320
  %322 = load i32, ptr %321, align 4, !tbaa !5
  %323 = ashr i32 %322, 4
  br label %334

324:                                              ; preds = %316, %296
  %325 = phi i32 [ %301, %296 ], [ %317, %316 ]
  %326 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %325, i32 %325), !nosanitize !10
  %327 = extractvalue { i32, i1 } %326, 1, !nosanitize !10
  br i1 %327, label %328, label %329, !prof !11, !nosanitize !10

328:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

329:                                              ; preds = %324
  %330 = extractvalue { i32, i1 } %326, 0, !nosanitize !10
  %331 = icmp sgt i32 %330, %241
  %332 = sext i1 %331 to i32
  %333 = add nsw i32 %325, %332
  br label %334

334:                                              ; preds = %329, %318
  %335 = phi i32 [ %323, %318 ], [ %333, %329 ]
  %336 = icmp slt i32 %201, %335
  br i1 %336, label %337, label %344

337:                                              ; preds = %334, %243
  %338 = phi i32 [ %335, %334 ], [ 1024, %243 ]
  %339 = tail call i32 @llvm.smin.i32(i32 %338, i32 1024)
  %340 = sext i32 %339 to i64
  %341 = sub nsw i64 0, %340
  %342 = getelementptr inbounds [4 x i8], ptr %226, i64 %341
  %343 = icmp eq i32 %338, 0
  br label %344

344:                                              ; preds = %337, %334, %240, %230
  %345 = phi i64 [ %231, %230 ], [ %234, %240 ], [ %234, %334 ], [ %234, %337 ]
  %346 = phi i32 [ %201, %230 ], [ %201, %240 ], [ %201, %334 ], [ %339, %337 ]
  %347 = phi ptr [ %138, %230 ], [ %138, %240 ], [ %138, %334 ], [ %342, %337 ]
  %348 = phi ptr [ %226, %230 ], [ %226, %240 ], [ %226, %334 ], [ %342, %337 ]
  %349 = phi i1 [ true, %230 ], [ true, %240 ], [ true, %334 ], [ %343, %337 ]
  %350 = ptrtoint ptr %348 to i64
  %351 = sub i64 %350, %345
  %352 = icmp sgt i64 %351, 4096
  br i1 %352, label %354, label %353

353:                                              ; preds = %344
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %229, ptr noundef %348)
  br label %.loopexit303

354:                                              ; preds = %344
  %355 = ptrtoint ptr %226 to i64
  br label %356

356:                                              ; preds = %387, %354
  %357 = phi i32 [ 0, %354 ], [ %388, %387 ]
  %358 = phi ptr [ %229, %354 ], [ %359, %387 ]
  %359 = getelementptr inbounds nuw i8, ptr %358, i64 4096
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %358, ptr noundef %359)
  %360 = ptrtoint ptr %359 to i64
  %361 = sub i64 %355, %360
  %362 = ashr exact i64 %361, 2
  %363 = add nsw i64 %362, 2147483648
  %364 = icmp ult i64 %363, 4294967296
  br i1 %364, label %366, label %365

365:                                              ; preds = %356
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.src, i32 noundef 866, ptr noundef nonnull @__PRETTY_FUNCTION__.sssort) #10
  unreachable

366:                                              ; preds = %356
  %367 = trunc nsw i64 %362 to i32
  %368 = icmp slt i32 %346, %367
  %369 = select i1 %368, ptr %359, ptr %347
  %370 = tail call i32 @llvm.smax.i32(i32 %346, i32 %367)
  %371 = and i32 %357, 1
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %.loopexit294, label %.preheader293

.preheader293:                                    ; preds = %366, %.preheader293
  %373 = phi i32 [ %380, %.preheader293 ], [ 1024, %366 ]
  %374 = phi i32 [ %381, %.preheader293 ], [ %357, %366 ]
  %375 = phi ptr [ %378, %.preheader293 ], [ %358, %366 ]
  %376 = sext i32 %373 to i64
  %377 = sub nsw i64 0, %376
  %378 = getelementptr inbounds [4 x i8], ptr %375, i64 %377
  %379 = getelementptr inbounds [4 x i8], ptr %375, i64 %376
  tail call fastcc void @ss_swapmerge(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %378, ptr noundef %375, ptr noundef %379, ptr noundef %369, i32 noundef %370)
  %380 = shl i32 %373, 1
  %381 = ashr i32 %374, 1
  %382 = and i32 %374, 2
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %.loopexit294, label %.preheader293, !llvm.loop !23

.loopexit294:                                     ; preds = %.preheader293, %366
  %384 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %357, i32 1), !nosanitize !10
  %385 = extractvalue { i32, i1 } %384, 1, !nosanitize !10
  br i1 %385, label %386, label %387, !prof !11, !nosanitize !10

386:                                              ; preds = %.loopexit294
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

387:                                              ; preds = %.loopexit294
  %388 = extractvalue { i32, i1 } %384, 0, !nosanitize !10
  %389 = sub i64 %350, %360
  %390 = icmp sgt i64 %389, 4096
  br i1 %390, label %356, label %391, !llvm.loop !24

391:                                              ; preds = %387
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %359, ptr noundef %348)
  %392 = icmp eq i32 %388, 0
  br i1 %392, label %.loopexit303, label %.preheader302

.preheader302:                                    ; preds = %391, %402
  %393 = phi i32 [ %405, %402 ], [ %388, %391 ]
  %394 = phi i32 [ %404, %402 ], [ 1024, %391 ]
  %395 = phi ptr [ %403, %402 ], [ %359, %391 ]
  %396 = and i32 %393, 1
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %402, label %398

398:                                              ; preds = %.preheader302
  %399 = sext i32 %394 to i64
  %400 = sub nsw i64 0, %399
  %401 = getelementptr inbounds [4 x i8], ptr %395, i64 %400
  tail call fastcc void @ss_swapmerge(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %401, ptr noundef %395, ptr noundef %348, ptr noundef %347, i32 noundef %346)
  br label %402

402:                                              ; preds = %398, %.preheader302
  %403 = phi ptr [ %401, %398 ], [ %395, %.preheader302 ]
  %404 = shl i32 %394, 1
  %405 = ashr i32 %393, 1
  %406 = icmp ult i32 %393, 2
  br i1 %406, label %.loopexit303, label %.preheader302, !llvm.loop !25

.loopexit303:                                     ; preds = %402, %391, %353
  br i1 %349, label %.loopexit301, label %407

407:                                              ; preds = %.loopexit303
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %137, ptr noundef %348, ptr noundef nonnull %226)
  br label %408

408:                                              ; preds = %.loopexit290, %407
  %409 = phi ptr [ %226, %407 ], [ %642, %.loopexit290 ]
  %410 = phi ptr [ %348, %407 ], [ %636, %.loopexit290 ]
  %411 = getelementptr inbounds i8, ptr %409, i64 -4
  %412 = load i32, ptr %411, align 4, !tbaa !5
  %413 = icmp slt i32 %412, 0
  %414 = ashr i32 %412, 31
  %415 = xor i32 %414, %412
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds nuw [4 x i8], ptr %137, i64 %416
  %418 = ptrtoint ptr %410 to i64
  %419 = sub i64 %418, %345
  %420 = ashr exact i64 %419, 2
  %421 = add nsw i64 %420, 2147483648
  %422 = icmp ult i64 %421, 4294967296
  br i1 %422, label %424, label %423

423:                                              ; preds = %408
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 604, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_inplacemerge) #10
  unreachable

424:                                              ; preds = %408
  %425 = icmp sgt i64 %420, 0
  br i1 %425, label %426, label %496

426:                                              ; preds = %424
  %427 = trunc nuw nsw i64 %420 to i32
  %428 = load i32, ptr %417, align 4, !tbaa !5
  %429 = getelementptr i8, ptr %417, i64 4
  %430 = load i32, ptr %429, align 4, !tbaa !5
  %431 = sext i32 %428 to i64
  %432 = getelementptr inbounds i8, ptr %203, i64 %431
  %433 = sext i32 %430 to i64
  %434 = getelementptr i8, ptr %203, i64 %433
  %435 = icmp ult ptr %432, %434
  br label %436

436:                                              ; preds = %483, %426
  %437 = phi i32 [ -1, %426 ], [ %492, %483 ]
  %438 = phi i32 [ %427, %426 ], [ %491, %483 ]
  %439 = phi ptr [ %229, %426 ], [ %489, %483 ]
  %440 = lshr i32 %438, 1
  %441 = zext nneg i32 %440 to i64
  %442 = getelementptr inbounds nuw [4 x i8], ptr %439, i64 %441
  %443 = load i32, ptr %442, align 4, !tbaa !5
  %444 = ashr i32 %443, 31
  %445 = xor i32 %444, %443
  %446 = zext nneg i32 %445 to i64
  %447 = getelementptr inbounds nuw [4 x i8], ptr %137, i64 %446
  %448 = load i32, ptr %447, align 4, !tbaa !5
  %449 = getelementptr i8, ptr %447, i64 4
  %450 = load i32, ptr %449, align 4, !tbaa !5
  %451 = sext i32 %448 to i64
  %452 = getelementptr inbounds i8, ptr %203, i64 %451
  %453 = sext i32 %450 to i64
  %454 = getelementptr i8, ptr %203, i64 %453
  %455 = icmp ult ptr %452, %454
  %456 = select i1 %455, i1 %435, i1 false
  br i1 %456, label %.preheader284, label %.loopexit286

.preheader284:                                    ; preds = %436, %462
  %457 = phi ptr [ %463, %462 ], [ %452, %436 ]
  %458 = phi ptr [ %464, %462 ], [ %432, %436 ]
  %459 = load i8, ptr %457, align 1, !tbaa !9
  %460 = load i8, ptr %458, align 1, !tbaa !9
  %461 = icmp eq i8 %459, %460
  br i1 %461, label %462, label %.loopexit285

462:                                              ; preds = %.preheader284
  %463 = getelementptr inbounds nuw i8, ptr %457, i64 1
  %464 = getelementptr inbounds nuw i8, ptr %458, i64 1
  %465 = icmp ult ptr %463, %454
  %466 = icmp ult ptr %464, %434
  %467 = select i1 %465, i1 %466, i1 false
  br i1 %467, label %.preheader284, label %.loopexit286, !llvm.loop !26

.loopexit286:                                     ; preds = %462, %436
  %468 = phi ptr [ %432, %436 ], [ %464, %462 ]
  %469 = phi ptr [ %452, %436 ], [ %463, %462 ]
  %470 = phi i1 [ %455, %436 ], [ %465, %462 ]
  %471 = phi i1 [ %435, %436 ], [ %466, %462 ]
  br i1 %470, label %472, label %481

472:                                              ; preds = %.loopexit286
  br i1 %471, label %473, label %483

473:                                              ; preds = %472
  %474 = load i8, ptr %469, align 1, !tbaa !9
  %475 = load i8, ptr %468, align 1, !tbaa !9
  br label %.loopexit285

.loopexit285:                                     ; preds = %.preheader284, %473
  %476 = phi i8 [ %475, %473 ], [ %460, %.preheader284 ]
  %477 = phi i8 [ %474, %473 ], [ %459, %.preheader284 ]
  %478 = zext i8 %477 to i32
  %479 = zext i8 %476 to i32
  %480 = sub nsw i32 %478, %479
  br label %483

481:                                              ; preds = %.loopexit286
  %482 = sext i1 %471 to i32
  br label %483

483:                                              ; preds = %481, %.loopexit285, %472
  %484 = phi i32 [ %482, %481 ], [ %480, %.loopexit285 ], [ 1, %472 ]
  %485 = icmp slt i32 %484, 0
  %486 = and i32 %438, 1
  %487 = xor i32 %486, 1
  %488 = getelementptr inbounds nuw i8, ptr %442, i64 4
  %489 = select i1 %485, ptr %488, ptr %439
  %490 = select i1 %485, i32 %487, i32 0
  %491 = sub nsw i32 %440, %490
  %492 = select i1 %485, i32 %437, i32 %484
  %493 = icmp sgt i32 %491, 0
  br i1 %493, label %436, label %494, !llvm.loop !27

494:                                              ; preds = %483
  %495 = icmp ult ptr %489, %410
  br i1 %495, label %498, label %634

496:                                              ; preds = %424
  %497 = icmp ult ptr %229, %410
  br i1 %497, label %503, label %634

498:                                              ; preds = %494
  %499 = icmp eq i32 %492, 0
  br i1 %499, label %500, label %503

500:                                              ; preds = %498
  %501 = load i32, ptr %489, align 4, !tbaa !5
  %502 = xor i32 %501, -1
  store i32 %502, ptr %489, align 4, !tbaa !5
  br label %503

503:                                              ; preds = %500, %498, %496
  %504 = phi ptr [ %489, %500 ], [ %489, %498 ], [ %229, %496 ]
  %505 = ptrtoint ptr %504 to i64
  %506 = sub i64 %418, %505
  %507 = ashr i64 %506, 2
  %508 = add nsw i64 %507, 2147483648
  %509 = icmp ult i64 %508, 4294967296
  br i1 %509, label %511, label %510

510:                                              ; preds = %503
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 553, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_rotate) #10
  unreachable

511:                                              ; preds = %503
  %512 = ptrtoint ptr %409 to i64
  %513 = sub i64 %512, %418
  %514 = ashr i64 %513, 2
  %515 = add nsw i64 %514, 2147483648
  %516 = icmp ult i64 %515, 4294967296
  br i1 %516, label %518, label %517

517:                                              ; preds = %511
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.src, i32 noundef 554, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_rotate) #10
  unreachable

518:                                              ; preds = %511
  %519 = icmp sgt i64 %507, 0
  %520 = icmp sgt i64 %514, 0
  %521 = and i1 %520, %519
  br i1 %521, label %522, label %.loopexit291

522:                                              ; preds = %518
  %523 = trunc nuw nsw i64 %514 to i32
  %524 = trunc nuw nsw i64 %507 to i32
  %525 = getelementptr inbounds i8, ptr %410, i64 -4
  br label %526

526:                                              ; preds = %.loopexit281, %522
  %527 = phi i32 [ %523, %522 ], [ %627, %.loopexit281 ]
  %528 = phi i32 [ %524, %522 ], [ %626, %.loopexit281 ]
  %529 = phi ptr [ %409, %522 ], [ %625, %.loopexit281 ]
  %530 = phi ptr [ %504, %522 ], [ %624, %.loopexit281 ]
  %531 = icmp eq i32 %528, %527
  br i1 %531, label %532, label %578

532:                                              ; preds = %526
  %533 = add nsw i32 %527, -1
  %534 = zext nneg i32 %533 to i64
  %535 = add nuw nsw i64 %534, 1
  %536 = icmp samesign ult i32 %527, 8
  br i1 %536, label %.preheader2315, label %537

537:                                              ; preds = %532
  %538 = getelementptr i8, ptr %530, i64 4
  %539 = shl nuw nsw i64 %534, 2
  %540 = getelementptr i8, ptr %538, i64 %539
  %541 = getelementptr i8, ptr %410, i64 4
  %542 = getelementptr i8, ptr %541, i64 %539
  %543 = icmp ult ptr %530, %542
  %544 = icmp ult ptr %410, %540
  %545 = and i1 %543, %544
  br i1 %545, label %.preheader2315, label %546

546:                                              ; preds = %537
  %547 = and i64 %535, 4294967288
  br label %548

548:                                              ; preds = %548, %546
  %549 = phi i64 [ 0, %546 ], [ %559, %548 ]
  %550 = shl i64 %549, 2
  %551 = getelementptr i8, ptr %530, i64 %550
  %552 = getelementptr i8, ptr %410, i64 %550
  %553 = getelementptr i8, ptr %551, i64 16
  %554 = load <4 x i32>, ptr %551, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  %555 = load <4 x i32>, ptr %553, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  %556 = getelementptr i8, ptr %552, i64 16
  %557 = load <4 x i32>, ptr %552, align 4, !tbaa !5, !alias.scope !31
  %558 = load <4 x i32>, ptr %556, align 4, !tbaa !5, !alias.scope !31
  store <4 x i32> %557, ptr %551, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  store <4 x i32> %558, ptr %553, align 4, !tbaa !5, !alias.scope !28, !noalias !31
  store <4 x i32> %554, ptr %552, align 4, !tbaa !5, !alias.scope !31
  store <4 x i32> %555, ptr %556, align 4, !tbaa !5, !alias.scope !31
  %559 = add nuw nsw i64 %549, 8
  %560 = icmp eq i64 %559, %547
  br i1 %560, label %561, label %548, !llvm.loop !33

561:                                              ; preds = %548
  %562 = shl nuw nsw i64 %547, 2
  %563 = getelementptr i8, ptr %530, i64 %562
  %564 = trunc nuw nsw i64 %547 to i32
  %565 = sub nsw i32 %527, %564
  %566 = getelementptr i8, ptr %410, i64 %562
  %567 = icmp eq i64 %535, %547
  br i1 %567, label %.loopexit291, label %.preheader2315

.preheader2315:                                   ; preds = %561, %537, %532
  %.ph2316 = phi ptr [ %563, %561 ], [ %530, %532 ], [ %530, %537 ]
  %.ph2317 = phi i32 [ %565, %561 ], [ %527, %532 ], [ %527, %537 ]
  %.ph2318 = phi ptr [ %566, %561 ], [ %410, %532 ], [ %410, %537 ]
  br label %568

568:                                              ; preds = %.preheader2315, %568
  %569 = phi ptr [ %575, %568 ], [ %.ph2316, %.preheader2315 ]
  %570 = phi i32 [ %574, %568 ], [ %.ph2317, %.preheader2315 ]
  %571 = phi ptr [ %576, %568 ], [ %.ph2318, %.preheader2315 ]
  %572 = load i32, ptr %569, align 4, !tbaa !5
  %573 = load i32, ptr %571, align 4, !tbaa !5
  store i32 %573, ptr %569, align 4, !tbaa !5
  store i32 %572, ptr %571, align 4, !tbaa !5
  %574 = add nsw i32 %570, -1
  %575 = getelementptr inbounds nuw i8, ptr %569, i64 4
  %576 = getelementptr inbounds nuw i8, ptr %571, i64 4
  %577 = icmp samesign ugt i32 %570, 1
  br i1 %577, label %568, label %.loopexit291, !llvm.loop !36

578:                                              ; preds = %526
  %579 = icmp samesign ult i32 %528, %527
  br i1 %579, label %580, label %599

580:                                              ; preds = %578
  %581 = getelementptr inbounds i8, ptr %529, i64 -4
  %582 = xor i32 %528, -1
  br label %583

583:                                              ; preds = %595, %580
  %584 = phi ptr [ %598, %595 ], [ %581, %580 ]
  %585 = phi i32 [ %596, %595 ], [ %527, %580 ]
  %586 = load i32, ptr %584, align 4, !tbaa !5
  br label %587

587:                                              ; preds = %587, %583
  %588 = phi ptr [ %591, %587 ], [ %584, %583 ]
  %589 = phi ptr [ %593, %587 ], [ %525, %583 ]
  %590 = load i32, ptr %589, align 4, !tbaa !5
  %591 = getelementptr inbounds i8, ptr %588, i64 -4
  store i32 %590, ptr %588, align 4, !tbaa !5
  %592 = load i32, ptr %591, align 4, !tbaa !5
  %593 = getelementptr inbounds i8, ptr %589, i64 -4
  store i32 %592, ptr %589, align 4, !tbaa !5
  %594 = icmp ult ptr %593, %530
  br i1 %594, label %595, label %587

595:                                              ; preds = %587
  store i32 %586, ptr %591, align 4, !tbaa !5
  %596 = add i32 %585, %582
  %597 = icmp sgt i32 %596, %528
  %598 = getelementptr inbounds i8, ptr %588, i64 -8
  br i1 %597, label %583, label %.loopexit281

599:                                              ; preds = %578
  %600 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %527, i32 1)
  %601 = extractvalue { i32, i1 } %600, 1
  %602 = extractvalue { i32, i1 } %600, 0
  br i1 %601, label %.preheader280, label %.preheader282, !prof !11, !nosanitize !10

.preheader280:                                    ; preds = %599, %.preheader280
  %603 = phi ptr [ %606, %.preheader280 ], [ %530, %599 ]
  %604 = phi ptr [ %608, %.preheader280 ], [ %410, %599 ]
  %605 = load i32, ptr %604, align 4, !tbaa !5
  %606 = getelementptr inbounds nuw i8, ptr %603, i64 4
  store i32 %605, ptr %603, align 4, !tbaa !5
  %607 = load i32, ptr %606, align 4, !tbaa !5
  %608 = getelementptr inbounds nuw i8, ptr %604, i64 4
  store i32 %607, ptr %604, align 4, !tbaa !5
  br label %.preheader280

609:                                              ; preds = %.preheader282, %609
  %610 = phi ptr [ %613, %609 ], [ %621, %.preheader282 ]
  %611 = phi ptr [ %615, %609 ], [ %410, %.preheader282 ]
  %612 = load i32, ptr %611, align 4, !tbaa !5
  %613 = getelementptr inbounds nuw i8, ptr %610, i64 4
  store i32 %612, ptr %610, align 4, !tbaa !5
  %614 = load i32, ptr %613, align 4, !tbaa !5
  %615 = getelementptr inbounds nuw i8, ptr %611, i64 4
  store i32 %614, ptr %611, align 4, !tbaa !5
  %616 = icmp ugt ptr %529, %615
  br i1 %616, label %609, label %617

617:                                              ; preds = %609
  store i32 %623, ptr %613, align 4, !tbaa !5
  %618 = getelementptr inbounds nuw i8, ptr %610, i64 8
  %619 = sub i32 %622, %602
  %620 = icmp sgt i32 %619, %527
  br i1 %620, label %.preheader282, label %.loopexit281

.preheader282:                                    ; preds = %599, %617
  %621 = phi ptr [ %618, %617 ], [ %530, %599 ]
  %622 = phi i32 [ %619, %617 ], [ %528, %599 ]
  %623 = load i32, ptr %621, align 4, !tbaa !5
  br label %609

.loopexit281:                                     ; preds = %617, %595
  %624 = phi ptr [ %530, %595 ], [ %618, %617 ]
  %625 = phi ptr [ %591, %595 ], [ %529, %617 ]
  %626 = phi i32 [ %528, %595 ], [ %619, %617 ]
  %627 = phi i32 [ %596, %595 ], [ %527, %617 ]
  %628 = icmp sgt i32 %626, 0
  %629 = icmp sgt i32 %627, 0
  %630 = and i1 %628, %629
  br i1 %630, label %526, label %.loopexit291, !llvm.loop !37

.loopexit291:                                     ; preds = %.loopexit281, %568, %561, %518
  %631 = sub nsw i64 0, %507
  %632 = getelementptr inbounds [4 x i8], ptr %409, i64 %631
  %633 = icmp eq ptr %229, %504
  br i1 %633, label %.loopexit301, label %634

634:                                              ; preds = %.loopexit291, %496, %494
  %635 = phi ptr [ %632, %.loopexit291 ], [ %409, %494 ], [ %409, %496 ]
  %636 = phi ptr [ %504, %.loopexit291 ], [ %410, %494 ], [ %410, %496 ]
  %637 = getelementptr inbounds i8, ptr %635, i64 -4
  br i1 %413, label %.preheader289, label %.loopexit290

.preheader289:                                    ; preds = %634, %.preheader289
  %638 = phi ptr [ %639, %.preheader289 ], [ %637, %634 ]
  %639 = getelementptr inbounds i8, ptr %638, i64 -4
  %640 = load i32, ptr %639, align 4, !tbaa !5
  %641 = icmp slt i32 %640, 0
  br i1 %641, label %.preheader289, label %.loopexit290, !llvm.loop !38

.loopexit290:                                     ; preds = %.preheader289, %634
  %642 = phi ptr [ %637, %634 ], [ %639, %.preheader289 ]
  %643 = icmp eq ptr %636, %642
  br i1 %643, label %.loopexit301, label %408

.loopexit301:                                     ; preds = %.loopexit290, %.loopexit291, %.loopexit303
  br i1 %227, label %644, label %702

644:                                              ; preds = %.loopexit301
  %645 = load i32, ptr %223, align 4, !tbaa !5
  %646 = add nsw i64 %.idx, 4
  %647 = icmp slt i64 %646, %.idx219
  br i1 %647, label %648, label %.loopexit296

648:                                              ; preds = %644
  %649 = sext i32 %645 to i64
  %650 = getelementptr inbounds [4 x i8], ptr %137, i64 %649
  %651 = load i32, ptr %650, align 4, !tbaa !5
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i8, ptr %203, i64 %652
  %654 = icmp ult ptr %653, %204
  %655 = freeze i1 %654
  br i1 %655, label %.preheader295, label %.preheader298

.preheader298:                                    ; preds = %648, %659
  %656 = phi ptr [ %661, %659 ], [ %228, %648 ]
  %657 = load i32, ptr %656, align 4, !tbaa !5
  %658 = icmp slt i32 %657, 0
  br i1 %658, label %659, label %.loopexit296

659:                                              ; preds = %.preheader298
  %660 = getelementptr inbounds i8, ptr %656, i64 -4
  store i32 %657, ptr %660, align 4, !tbaa !5
  %661 = getelementptr inbounds nuw i8, ptr %656, i64 4
  %662 = icmp ult ptr %661, %226
  br i1 %662, label %.preheader298, label %.loopexit296, !llvm.loop !39

.preheader295:                                    ; preds = %648, %696
  %663 = phi ptr [ %698, %696 ], [ %228, %648 ]
  %664 = load i32, ptr %663, align 4, !tbaa !5
  %665 = icmp slt i32 %664, 0
  br i1 %665, label %696, label %666

666:                                              ; preds = %.preheader295
  %667 = zext nneg i32 %664 to i64
  %668 = getelementptr inbounds nuw [4 x i8], ptr %137, i64 %667
  %669 = load i32, ptr %668, align 4, !tbaa !5
  %670 = getelementptr i8, ptr %668, i64 4
  %671 = load i32, ptr %670, align 4, !tbaa !5
  %672 = sext i32 %669 to i64
  %673 = getelementptr inbounds i8, ptr %203, i64 %672
  %674 = sext i32 %671 to i64
  %675 = getelementptr i8, ptr %203, i64 %674
  %676 = icmp ult ptr %673, %675
  br i1 %676, label %.preheader287, label %696

.preheader287:                                    ; preds = %666, %682
  %677 = phi ptr [ %683, %682 ], [ %653, %666 ]
  %678 = phi ptr [ %684, %682 ], [ %673, %666 ]
  %679 = load i8, ptr %677, align 1, !tbaa !9
  %680 = load i8, ptr %678, align 1, !tbaa !9
  %681 = icmp eq i8 %679, %680
  br i1 %681, label %682, label %.loopexit288

682:                                              ; preds = %.preheader287
  %683 = getelementptr inbounds nuw i8, ptr %677, i64 1
  %684 = getelementptr inbounds nuw i8, ptr %678, i64 1
  %685 = icmp ult ptr %683, %204
  %686 = icmp ult ptr %684, %675
  %687 = select i1 %685, i1 %686, i1 false
  br i1 %687, label %.preheader287, label %688, !llvm.loop !26

688:                                              ; preds = %682
  br i1 %685, label %689, label %.loopexit296

689:                                              ; preds = %688
  br i1 %686, label %690, label %696

690:                                              ; preds = %689
  %691 = load i8, ptr %683, align 1, !tbaa !9
  %692 = load i8, ptr %684, align 1, !tbaa !9
  br label %.loopexit288

.loopexit288:                                     ; preds = %.preheader287, %690
  %693 = phi i8 [ %692, %690 ], [ %680, %.preheader287 ]
  %694 = phi i8 [ %691, %690 ], [ %679, %.preheader287 ]
  %695 = icmp ugt i8 %694, %693
  br i1 %695, label %696, label %.loopexit296

696:                                              ; preds = %.loopexit288, %689, %666, %.preheader295
  %697 = getelementptr inbounds i8, ptr %663, i64 -4
  store i32 %664, ptr %697, align 4, !tbaa !5
  %698 = getelementptr inbounds nuw i8, ptr %663, i64 4
  %699 = icmp ult ptr %698, %226
  br i1 %699, label %.preheader295, label %.loopexit296, !llvm.loop !39

.loopexit296:                                     ; preds = %659, %.preheader298, %696, %.loopexit288, %688, %644
  %700 = phi ptr [ %228, %644 ], [ %663, %.loopexit288 ], [ %663, %688 ], [ %698, %696 ], [ %656, %.preheader298 ], [ %661, %659 ]
  %701 = getelementptr inbounds i8, ptr %700, i64 -4
  store i32 %645, ptr %701, align 4, !tbaa !5
  br label %702

702:                                              ; preds = %.loopexit296, %.loopexit301, %218
  %703 = add nsw i32 %210, -1
  %704 = icmp slt i32 %206, %703
  br i1 %704, label %209, label %705, !llvm.loop !40

705:                                              ; preds = %702
  %706 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %206, i32 -1)
  %707 = extractvalue { i32, i1 } %706, 1, !nosanitize !10
  br i1 %707, label %.loopexit, label %708, !prof !11, !nosanitize !10

708:                                              ; preds = %705
  %709 = extractvalue { i32, i1 } %706, 0, !nosanitize !10
  %710 = icmp sgt i32 %215, 0
  br i1 %710, label %205, label %.preheader277, !llvm.loop !41

.preheader277:                                    ; preds = %708, %762
  %711 = phi i32 [ %763, %762 ], [ %171, %708 ]
  %712 = zext nneg i32 %711 to i64
  %713 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %712
  %714 = load i32, ptr %713, align 4, !tbaa !5
  %715 = icmp sgt i32 %714, -1
  br i1 %715, label %.preheader276.preheader, label %734

.preheader276.preheader:                          ; preds = %.preheader277
  %716 = zext nneg i32 %714 to i64
  %717 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %716
  store i32 %711, ptr %717, align 4, !tbaa !5
  %718 = icmp eq i32 %711, 0
  br i1 %718, label %.preheader276.preheader._crit_edge, label %.lr.ph

.preheader276:                                    ; preds = %.lr.ph
  %719 = zext nneg i32 %727 to i64
  %720 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %719
  %721 = trunc nuw nsw i64 %725 to i32
  store i32 %721, ptr %720, align 4, !tbaa !5
  %722 = icmp eq i64 %725, 0
  br i1 %722, label %.preheader276.preheader._crit_edge, label %.lr.ph, !llvm.loop !42

.preheader276.preheader._crit_edge:               ; preds = %.preheader276.preheader, %.preheader276
  %723 = xor i32 %711, -1
  store i32 %723, ptr %1, align 4, !tbaa !5
  br label %.loopexit278

.lr.ph:                                           ; preds = %.preheader276.preheader, %.preheader276
  %724 = phi i64 [ %725, %.preheader276 ], [ %712, %.preheader276.preheader ]
  %725 = add nsw i64 %724, -1
  %726 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %725
  %727 = load i32, ptr %726, align 4, !tbaa !5
  %728 = icmp sgt i32 %727, -1
  br i1 %728, label %.preheader276, label %729, !llvm.loop !42

729:                                              ; preds = %.lr.ph
  %730 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %724
  %731 = trunc nuw nsw i64 %725 to i32
  %732 = sub nsw i32 %731, %711
  store i32 %732, ptr %730, align 4, !tbaa !5
  %733 = icmp eq i64 %724, 1
  br i1 %733, label %.loopexit278, label %._crit_edge

._crit_edge:                                      ; preds = %729
  %.pre = and i64 %725, 4294967295
  br label %734

734:                                              ; preds = %._crit_edge, %.preheader277
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %712, %.preheader277 ]
  %735 = phi i32 [ %731, %._crit_edge ], [ %711, %.preheader277 ]
  %736 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pre-phi
  %737 = load i32, ptr %736, align 4, !tbaa !5
  %738 = xor i32 %737, -1
  store i32 %738, ptr %736, align 4, !tbaa !5
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds [4 x i8], ptr %138, i64 %739
  store i32 %735, ptr %740, align 4, !tbaa !5
  br label %748

741:                                              ; preds = %748
  %742 = getelementptr inbounds [4 x i8], ptr %1, i64 %750
  %743 = load i32, ptr %742, align 4, !tbaa !5
  %744 = xor i32 %743, -1
  store i32 %744, ptr %742, align 4, !tbaa !5
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds [4 x i8], ptr %138, i64 %745
  store i32 %735, ptr %746, align 4, !tbaa !5
  %747 = icmp eq i64 %750, -2147483648
  br i1 %747, label %.loopexit, label %748, !prof !43, !llvm.loop !44, !nosanitize !10

748:                                              ; preds = %734, %741
  %749 = phi i64 [ %.pre-phi, %734 ], [ %750, %741 ]
  %750 = add nsw i64 %749, -1
  %751 = shl i64 %750, 32
  %752 = ashr exact i64 %751, 30
  %753 = getelementptr inbounds i8, ptr %1, i64 %752
  %754 = load i32, ptr %753, align 4, !tbaa !5
  %755 = icmp slt i32 %754, 0
  br i1 %755, label %741, label %756, !llvm.loop !44

756:                                              ; preds = %748
  %757 = trunc i64 %750 to i32
  %758 = zext nneg i32 %754 to i64
  %759 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %758
  store i32 %735, ptr %759, align 4, !tbaa !5
  %760 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %757, i32 -1)
  %761 = extractvalue { i32, i1 } %760, 1, !nosanitize !10
  br i1 %761, label %.loopexit, label %762, !prof !11, !nosanitize !10

762:                                              ; preds = %756
  %763 = extractvalue { i32, i1 } %760, 0, !nosanitize !10
  %764 = icmp sgt i32 %763, -1
  br i1 %764, label %.preheader277, label %.loopexit278, !llvm.loop !45

.loopexit278:                                     ; preds = %762, %729, %.preheader276.preheader._crit_edge
  %765 = icmp samesign ult i32 %78, 65536
  br i1 %765, label %785, label %766

766:                                              ; preds = %.loopexit278
  %767 = icmp samesign ult i32 %78, 16777216
  br i1 %767, label %777, label %768

768:                                              ; preds = %766
  %769 = lshr i32 %78, 24
  %770 = zext nneg i32 %769 to i64
  %771 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %770
  %772 = load i32, ptr %771, align 4, !tbaa !5
  %773 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %772, i32 24), !nosanitize !10
  %774 = extractvalue { i32, i1 } %773, 0, !nosanitize !10
  %775 = extractvalue { i32, i1 } %773, 1, !nosanitize !10
  br i1 %775, label %776, label %798, !prof !11, !nosanitize !10

776:                                              ; preds = %787, %777, %768
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

777:                                              ; preds = %766
  %778 = lshr i32 %78, 16
  %779 = zext nneg i32 %778 to i64
  %780 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %779
  %781 = load i32, ptr %780, align 4, !tbaa !5
  %782 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %781, i32 16), !nosanitize !10
  %783 = extractvalue { i32, i1 } %782, 0, !nosanitize !10
  %784 = extractvalue { i32, i1 } %782, 1, !nosanitize !10
  br i1 %784, label %776, label %798, !prof !11, !nosanitize !10

785:                                              ; preds = %.loopexit278
  %786 = icmp samesign ult i32 %78, 256
  br i1 %786, label %795, label %787

787:                                              ; preds = %785
  %788 = lshr i32 %78, 8
  %789 = zext nneg i32 %788 to i64
  %790 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %789
  %791 = load i32, ptr %790, align 4, !tbaa !5
  %792 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %791, i32 8), !nosanitize !10
  %793 = extractvalue { i32, i1 } %792, 0, !nosanitize !10
  %794 = extractvalue { i32, i1 } %792, 1, !nosanitize !10
  br i1 %794, label %776, label %798, !prof !11, !nosanitize !10

795:                                              ; preds = %785
  %796 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %135
  %797 = load i32, ptr %796, align 4, !tbaa !5
  br label %798

798:                                              ; preds = %795, %787, %777, %768
  %799 = phi i32 [ %774, %768 ], [ %783, %777 ], [ %793, %787 ], [ %797, %795 ]
  %800 = add i32 %799, 1073741824
  %801 = icmp sgt i32 %800, -1
  br i1 %801, label %803, label %802, !prof !22, !nosanitize !10

802:                                              ; preds = %798
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

803:                                              ; preds = %798
  %804 = sub nsw i32 0, %78
  %805 = load i32, ptr %1, align 4, !tbaa !5
  %806 = icmp sgt i32 %805, %804
  br i1 %806, label %807, label %.loopexit274

807:                                              ; preds = %803
  %808 = getelementptr i8, ptr %138, i64 4
  %809 = shl nsw i32 %799, 1
  %810 = sdiv i32 %809, 3
  %811 = getelementptr i8, ptr %1, i64 4
  %812 = ptrtoint ptr %138 to i64
  %813 = ptrtoint ptr %1 to i64
  br label %814

814:                                              ; preds = %2773, %807
  %815 = phi i32 [ %805, %807 ], [ %2775, %2773 ]
  %816 = phi ptr [ %808, %807 ], [ %2774, %2773 ]
  %817 = phi i32 [ %810, %807 ], [ %2770, %2773 ]
  %818 = phi i32 [ %78, %807 ], [ %2769, %2773 ]
  %819 = ptrtoint ptr %816 to i64
  %820 = sub i64 %819, %812
  %821 = ashr i64 %820, 2
  %822 = add nsw i64 %821, 2147483648
  %823 = icmp ult i64 %822, 4294967296
  %824 = shl i64 %820, 30
  %825 = ashr i64 %824, 32
  %826 = sub nsw i64 0, %825
  br i1 %823, label %.preheader267, label %.preheader271

.preheader267:                                    ; preds = %814, %2635
  %827 = phi i32 [ %2641, %2635 ], [ %815, %814 ]
  %828 = phi i32 [ %2640, %2635 ], [ %818, %814 ]
  %829 = phi i32 [ %2639, %2635 ], [ %817, %814 ]
  %830 = phi ptr [ %2638, %2635 ], [ %1, %814 ]
  %831 = phi i32 [ %2637, %2635 ], [ 0, %814 ]
  %832 = phi i32 [ %2636, %2635 ], [ 0, %814 ]
  %833 = icmp slt i32 %827, 0
  br i1 %833, label %2621, label %834

834:                                              ; preds = %.preheader267
  %835 = icmp eq i32 %831, 0
  br i1 %835, label %839, label %836

836:                                              ; preds = %834
  %837 = sext i32 %831 to i64
  %838 = getelementptr inbounds [4 x i8], ptr %830, i64 %837
  store i32 %831, ptr %838, align 4, !tbaa !5
  br label %839

839:                                              ; preds = %836, %834
  %840 = zext nneg i32 %827 to i64
  %841 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %840
  %842 = load i32, ptr %841, align 4, !tbaa !5
  %843 = sext i32 %842 to i64
  %844 = getelementptr [4 x i8], ptr %811, i64 %843
  %845 = ptrtoint ptr %844 to i64
  %846 = ptrtoint ptr %830 to i64
  %847 = sub i64 %845, %846
  %848 = icmp sgt i64 %847, 4
  br i1 %848, label %852, label %849

849:                                              ; preds = %839
  %850 = icmp eq i64 %847, 4
  %851 = sext i1 %850 to i32
  br label %2629

852:                                              ; preds = %839
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %853 = icmp samesign ult i64 %847, 8589934592
  br i1 %853, label %854, label %2672

854:                                              ; preds = %852
  %855 = icmp samesign ult i64 %847, 262144
  br i1 %855, label %872, label %856

856:                                              ; preds = %854
  %857 = icmp samesign ult i64 %847, 67108864
  br i1 %857, label %865, label %858

858:                                              ; preds = %856
  %859 = lshr i64 %847, 26
  %860 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %859
  %861 = load i32, ptr %860, align 4, !tbaa !5
  %862 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %861, i32 24), !nosanitize !10
  %863 = extractvalue { i32, i1 } %862, 0, !nosanitize !10
  %864 = extractvalue { i32, i1 } %862, 1, !nosanitize !10
  br i1 %864, label %2673, label %.preheader2053, !prof !11, !nosanitize !10

865:                                              ; preds = %856
  %866 = lshr i64 %847, 18
  %867 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %866
  %868 = load i32, ptr %867, align 4, !tbaa !5
  %869 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %868, i32 16), !nosanitize !10
  %870 = extractvalue { i32, i1 } %869, 0, !nosanitize !10
  %871 = extractvalue { i32, i1 } %869, 1, !nosanitize !10
  br i1 %871, label %2673, label %.preheader2053, !prof !11, !nosanitize !10

872:                                              ; preds = %854
  %873 = icmp samesign ult i64 %847, 1024
  br i1 %873, label %881, label %874

874:                                              ; preds = %872
  %875 = lshr i64 %847, 10
  %876 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %875
  %877 = load i32, ptr %876, align 4, !tbaa !5
  %878 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %877, i32 8), !nosanitize !10
  %879 = extractvalue { i32, i1 } %878, 0, !nosanitize !10
  %880 = extractvalue { i32, i1 } %878, 1, !nosanitize !10
  br i1 %880, label %2673, label %.preheader2053, !prof !11, !nosanitize !10

881:                                              ; preds = %872
  %882 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %847
  %883 = load i32, ptr %882, align 4, !tbaa !5
  br label %.preheader2053

.preheader2053:                                   ; preds = %881, %874, %865, %858
  %.ph2054 = phi i32 [ %863, %858 ], [ %870, %865 ], [ %879, %874 ], [ %883, %881 ]
  br label %884

884:                                              ; preds = %.preheader2053, %2610
  %885 = phi i32 [ %2611, %2610 ], [ 0, %.preheader2053 ]
  %886 = phi i32 [ %2612, %2610 ], [ %828, %.preheader2053 ]
  %887 = phi i32 [ %2613, %2610 ], [ %829, %.preheader2053 ]
  %888 = phi ptr [ %2620, %2610 ], [ undef, %.preheader2053 ]
  %889 = phi ptr [ %2614, %2610 ], [ %844, %.preheader2053 ]
  %890 = phi ptr [ %2615, %2610 ], [ %830, %.preheader2053 ]
  %891 = phi ptr [ %2616, %2610 ], [ %816, %.preheader2053 ]
  %892 = phi i32 [ %2617, %2610 ], [ %.ph2054, %.preheader2053 ]
  %893 = phi i32 [ %2618, %2610 ], [ 0, %.preheader2053 ]
  %894 = phi i32 [ %2619, %2610 ], [ -1, %.preheader2053 ]
  %895 = icmp slt i32 %892, 0
  br i1 %895, label %1820, label %896

896:                                              ; preds = %884
  %897 = ptrtoint ptr %889 to i64
  %898 = ptrtoint ptr %890 to i64
  %899 = sub i64 %897, %898
  %900 = freeze i64 %899
  %901 = ashr i64 %900, 2
  %902 = icmp slt i64 %901, 9
  %903 = trunc nuw nsw i64 %901 to i32
  %904 = and i32 %903, 1
  %905 = icmp eq i32 %904, 0
  %906 = add nsw i32 %903, -1
  %907 = lshr i32 %906, 1
  %908 = zext nneg i32 %907 to i64
  %909 = getelementptr inbounds nuw [4 x i8], ptr %890, i64 %908
  %910 = zext nneg i32 %906 to i64
  %911 = getelementptr inbounds nuw [4 x i8], ptr %890, i64 %910
  %912 = getelementptr inbounds i8, ptr %889, i64 -4
  %913 = icmp ult ptr %890, %912
  br i1 %902, label %1775, label %914

914:                                              ; preds = %896
  %915 = icmp samesign ult i64 %901, 2147483648
  %916 = icmp eq i32 %892, 0
  br i1 %915, label %917, label %2674

917:                                              ; preds = %914
  br i1 %916, label %1600, label %918

918:                                              ; preds = %917
  store ptr %888, ptr %7, align 8
  %919 = add nsw i32 %892, -1
  %920 = lshr i64 %901, 1
  %921 = getelementptr inbounds nuw [4 x i8], ptr %890, i64 %920
  %922 = icmp samesign ult i64 %901, 513
  br i1 %922, label %1051, label %923

923:                                              ; preds = %918
  %924 = lshr i32 %903, 3
  %925 = zext nneg i32 %924 to i64
  %926 = getelementptr inbounds nuw [4 x i8], ptr %890, i64 %925
  %927 = shl nuw nsw i32 %924, 1
  %928 = zext nneg i32 %927 to i64
  %929 = getelementptr inbounds nuw [4 x i8], ptr %890, i64 %928
  %930 = load i32, ptr %890, align 4, !tbaa !5
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds [4 x i8], ptr %891, i64 %931
  %933 = load i32, ptr %932, align 4, !tbaa !5
  %934 = load i32, ptr %926, align 4, !tbaa !5
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds [4 x i8], ptr %891, i64 %935
  %937 = load i32, ptr %936, align 4, !tbaa !5
  %938 = icmp sgt i32 %933, %937
  %939 = select i1 %938, i32 %930, i32 %934
  %940 = select i1 %938, ptr %890, ptr %926
  %941 = sext i32 %939 to i64
  %942 = getelementptr inbounds [4 x i8], ptr %891, i64 %941
  %943 = load i32, ptr %942, align 4, !tbaa !5
  %944 = load i32, ptr %929, align 4, !tbaa !5
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds [4 x i8], ptr %891, i64 %945
  %947 = load i32, ptr %946, align 4, !tbaa !5
  %948 = icmp sgt i32 %943, %947
  br i1 %948, label %949, label %957

949:                                              ; preds = %923
  %950 = select i1 %938, i32 %934, i32 %930
  %951 = select i1 %938, ptr %926, ptr %890
  %952 = sext i32 %950 to i64
  %953 = getelementptr inbounds [4 x i8], ptr %891, i64 %952
  %954 = load i32, ptr %953, align 4, !tbaa !5
  %955 = icmp sgt i32 %954, %947
  %956 = select i1 %955, ptr %951, ptr %929
  br label %957

957:                                              ; preds = %949, %923
  %958 = phi ptr [ %956, %949 ], [ %940, %923 ]
  %959 = sub nsw i64 0, %925
  %960 = getelementptr inbounds [4 x i8], ptr %921, i64 %959
  %961 = getelementptr inbounds nuw [4 x i8], ptr %921, i64 %925
  %962 = load i32, ptr %960, align 4, !tbaa !5
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds [4 x i8], ptr %891, i64 %963
  %965 = load i32, ptr %964, align 4, !tbaa !5
  %966 = load i32, ptr %921, align 4, !tbaa !5
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds [4 x i8], ptr %891, i64 %967
  %969 = load i32, ptr %968, align 4, !tbaa !5
  %970 = icmp sgt i32 %965, %969
  %971 = select i1 %970, i32 %962, i32 %966
  %972 = select i1 %970, ptr %960, ptr %921
  %973 = sext i32 %971 to i64
  %974 = getelementptr inbounds [4 x i8], ptr %891, i64 %973
  %975 = load i32, ptr %974, align 4, !tbaa !5
  %976 = load i32, ptr %961, align 4, !tbaa !5
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds [4 x i8], ptr %891, i64 %977
  %979 = load i32, ptr %978, align 4, !tbaa !5
  %980 = icmp sgt i32 %975, %979
  br i1 %980, label %981, label %989

981:                                              ; preds = %957
  %982 = select i1 %970, i32 %966, i32 %962
  %983 = select i1 %970, ptr %921, ptr %960
  %984 = sext i32 %982 to i64
  %985 = getelementptr inbounds [4 x i8], ptr %891, i64 %984
  %986 = load i32, ptr %985, align 4, !tbaa !5
  %987 = icmp sgt i32 %986, %979
  %988 = select i1 %987, ptr %983, ptr %961
  br label %989

989:                                              ; preds = %981, %957
  %990 = phi ptr [ %988, %981 ], [ %972, %957 ]
  %991 = sub nsw i64 0, %928
  %992 = getelementptr inbounds [4 x i8], ptr %912, i64 %991
  %993 = getelementptr inbounds [4 x i8], ptr %912, i64 %959
  %994 = load i32, ptr %992, align 4, !tbaa !5
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds [4 x i8], ptr %891, i64 %995
  %997 = load i32, ptr %996, align 4, !tbaa !5
  %998 = load i32, ptr %993, align 4, !tbaa !5
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds [4 x i8], ptr %891, i64 %999
  %1001 = load i32, ptr %1000, align 4, !tbaa !5
  %1002 = icmp sgt i32 %997, %1001
  %1003 = select i1 %1002, i32 %994, i32 %998
  %1004 = select i1 %1002, ptr %992, ptr %993
  %1005 = sext i32 %1003 to i64
  %1006 = getelementptr inbounds [4 x i8], ptr %891, i64 %1005
  %1007 = load i32, ptr %1006, align 4, !tbaa !5
  %1008 = load i32, ptr %912, align 4, !tbaa !5
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds [4 x i8], ptr %891, i64 %1009
  %1011 = load i32, ptr %1010, align 4, !tbaa !5
  %1012 = icmp sgt i32 %1007, %1011
  br i1 %1012, label %1013, label %1025

1013:                                             ; preds = %989
  %1014 = select i1 %1002, i32 %998, i32 %994
  %1015 = select i1 %1002, ptr %993, ptr %992
  %1016 = sext i32 %1014 to i64
  %1017 = getelementptr inbounds [4 x i8], ptr %891, i64 %1016
  %1018 = load i32, ptr %1017, align 4, !tbaa !5
  %1019 = icmp sgt i32 %1018, %1011
  %1020 = select i1 %1019, ptr %1015, ptr %912
  %1021 = load i32, ptr %1020, align 4, !tbaa !5
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds [4 x i8], ptr %891, i64 %1022
  %1024 = load i32, ptr %1023, align 4, !tbaa !5
  br label %1025

1025:                                             ; preds = %1013, %989
  %1026 = phi i32 [ %1007, %989 ], [ %1024, %1013 ]
  %1027 = phi ptr [ %1004, %989 ], [ %1020, %1013 ]
  %1028 = load i32, ptr %958, align 4, !tbaa !5
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds [4 x i8], ptr %891, i64 %1029
  %1031 = load i32, ptr %1030, align 4, !tbaa !5
  %1032 = load i32, ptr %990, align 4, !tbaa !5
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds [4 x i8], ptr %891, i64 %1033
  %1035 = load i32, ptr %1034, align 4, !tbaa !5
  %1036 = icmp sgt i32 %1031, %1035
  %1037 = select i1 %1036, i32 %1028, i32 %1032
  %1038 = select i1 %1036, ptr %958, ptr %990
  %1039 = sext i32 %1037 to i64
  %1040 = getelementptr inbounds [4 x i8], ptr %891, i64 %1039
  %1041 = load i32, ptr %1040, align 4, !tbaa !5
  %1042 = icmp sgt i32 %1041, %1026
  br i1 %1042, label %1043, label %1152

1043:                                             ; preds = %1025
  %1044 = select i1 %1036, i32 %1032, i32 %1028
  %1045 = select i1 %1036, ptr %990, ptr %958
  %1046 = sext i32 %1044 to i64
  %1047 = getelementptr inbounds [4 x i8], ptr %891, i64 %1046
  %1048 = load i32, ptr %1047, align 4, !tbaa !5
  %1049 = icmp sgt i32 %1048, %1026
  %1050 = select i1 %1049, ptr %1045, ptr %1027
  br label %1152

1051:                                             ; preds = %918
  %1052 = icmp samesign ult i64 %901, 33
  br i1 %1052, label %1124, label %1053

1053:                                             ; preds = %1051
  %1054 = lshr i64 %901, 2
  %1055 = getelementptr inbounds nuw [4 x i8], ptr %890, i64 %1054
  %1056 = sub nsw i64 0, %1054
  %1057 = getelementptr inbounds [4 x i8], ptr %912, i64 %1056
  %1058 = load i32, ptr %1055, align 4, !tbaa !5
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds [4 x i8], ptr %891, i64 %1059
  %1061 = load i32, ptr %1060, align 4, !tbaa !5
  %1062 = load i32, ptr %921, align 4, !tbaa !5
  %1063 = sext i32 %1062 to i64
  %1064 = getelementptr inbounds [4 x i8], ptr %891, i64 %1063
  %1065 = load i32, ptr %1064, align 4, !tbaa !5
  %1066 = icmp sgt i32 %1061, %1065
  %1067 = select i1 %1066, i32 %1062, i32 %1058
  %1068 = select i1 %1066, ptr %921, ptr %1055
  %1069 = select i1 %1066, ptr %1055, ptr %921
  %1070 = load i32, ptr %1057, align 4, !tbaa !5
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds [4 x i8], ptr %891, i64 %1071
  %1073 = load i32, ptr %1072, align 4, !tbaa !5
  %1074 = load i32, ptr %912, align 4, !tbaa !5
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds [4 x i8], ptr %891, i64 %1075
  %1077 = load i32, ptr %1076, align 4, !tbaa !5
  %1078 = icmp sgt i32 %1073, %1077
  %1079 = select i1 %1078, i32 %1074, i32 %1070
  %1080 = select i1 %1078, ptr %912, ptr %1057
  %1081 = select i1 %1078, ptr %1057, ptr %912
  %1082 = sext i32 %1067 to i64
  %1083 = getelementptr inbounds [4 x i8], ptr %891, i64 %1082
  %1084 = load i32, ptr %1083, align 4, !tbaa !5
  %1085 = sext i32 %1079 to i64
  %1086 = getelementptr inbounds [4 x i8], ptr %891, i64 %1085
  %1087 = load i32, ptr %1086, align 4, !tbaa !5
  %1088 = icmp sgt i32 %1084, %1087
  %1089 = select i1 %1088, ptr %1081, ptr %1069
  %1090 = select i1 %1088, ptr %1068, ptr %1080
  %1091 = select i1 %1088, ptr %1069, ptr %1081
  %1092 = load i32, ptr %890, align 4, !tbaa !5
  %1093 = sext i32 %1092 to i64
  %1094 = getelementptr inbounds [4 x i8], ptr %891, i64 %1093
  %1095 = load i32, ptr %1094, align 4, !tbaa !5
  %1096 = load i32, ptr %1089, align 4, !tbaa !5
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds [4 x i8], ptr %891, i64 %1097
  %1099 = load i32, ptr %1098, align 4, !tbaa !5
  %1100 = icmp sgt i32 %1095, %1099
  %1101 = select i1 %1100, i32 %1096, i32 %1092
  %1102 = select i1 %1100, ptr %1089, ptr %890
  %1103 = select i1 %1100, ptr %890, ptr %1089
  %1104 = sext i32 %1101 to i64
  %1105 = getelementptr inbounds [4 x i8], ptr %891, i64 %1104
  %1106 = load i32, ptr %1105, align 4, !tbaa !5
  %1107 = load i32, ptr %1090, align 4, !tbaa !5
  %1108 = sext i32 %1107 to i64
  %1109 = getelementptr inbounds [4 x i8], ptr %891, i64 %1108
  %1110 = load i32, ptr %1109, align 4, !tbaa !5
  %1111 = icmp sgt i32 %1106, %1110
  %1112 = select i1 %1111, ptr %1091, ptr %1103
  %1113 = select i1 %1111, ptr %1102, ptr %1090
  %1114 = load i32, ptr %1112, align 4, !tbaa !5
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds [4 x i8], ptr %891, i64 %1115
  %1117 = load i32, ptr %1116, align 4, !tbaa !5
  %1118 = load i32, ptr %1113, align 4, !tbaa !5
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds [4 x i8], ptr %891, i64 %1119
  %1121 = load i32, ptr %1120, align 4, !tbaa !5
  %1122 = icmp sgt i32 %1117, %1121
  %1123 = select i1 %1122, ptr %1113, ptr %1112
  br label %1152

1124:                                             ; preds = %1051
  %1125 = load i32, ptr %890, align 4, !tbaa !5
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds [4 x i8], ptr %891, i64 %1126
  %1128 = load i32, ptr %1127, align 4, !tbaa !5
  %1129 = load i32, ptr %921, align 4, !tbaa !5
  %1130 = sext i32 %1129 to i64
  %1131 = getelementptr inbounds [4 x i8], ptr %891, i64 %1130
  %1132 = load i32, ptr %1131, align 4, !tbaa !5
  %1133 = icmp sgt i32 %1128, %1132
  %1134 = select i1 %1133, i32 %1125, i32 %1129
  %1135 = select i1 %1133, ptr %890, ptr %921
  %1136 = sext i32 %1134 to i64
  %1137 = getelementptr inbounds [4 x i8], ptr %891, i64 %1136
  %1138 = load i32, ptr %1137, align 4, !tbaa !5
  %1139 = load i32, ptr %912, align 4, !tbaa !5
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds [4 x i8], ptr %891, i64 %1140
  %1142 = load i32, ptr %1141, align 4, !tbaa !5
  %1143 = icmp sgt i32 %1138, %1142
  br i1 %1143, label %1144, label %1152

1144:                                             ; preds = %1124
  %1145 = select i1 %1133, i32 %1129, i32 %1125
  %1146 = select i1 %1133, ptr %921, ptr %890
  %1147 = sext i32 %1145 to i64
  %1148 = getelementptr inbounds [4 x i8], ptr %891, i64 %1147
  %1149 = load i32, ptr %1148, align 4, !tbaa !5
  %1150 = icmp sgt i32 %1149, %1142
  %1151 = select i1 %1150, ptr %1146, ptr %912
  br label %1152

1152:                                             ; preds = %1144, %1124, %1053, %1043, %1025
  %1153 = phi i32 [ %1092, %1053 ], [ %1125, %1144 ], [ %1125, %1124 ], [ %930, %1043 ], [ %930, %1025 ]
  %1154 = phi ptr [ %1123, %1053 ], [ %1151, %1144 ], [ %1135, %1124 ], [ %1050, %1043 ], [ %1038, %1025 ]
  store ptr %1154, ptr %7, align 8, !tbaa !46
  %1155 = load i32, ptr %1154, align 4, !tbaa !5
  store i32 %1155, ptr %890, align 4, !tbaa !5
  store i32 %1153, ptr %1154, align 4, !tbaa !5
  %1156 = load i32, ptr %890, align 4, !tbaa !5
  %1157 = sext i32 %1156 to i64
  %1158 = getelementptr inbounds [4 x i8], ptr %891, i64 %1157
  %1159 = load i32, ptr %1158, align 4, !tbaa !5
  %1160 = getelementptr inbounds nuw i8, ptr %890, i64 4
  call fastcc void @tr_partition(ptr noundef nonnull %891, ptr noundef nonnull %890, ptr noundef nonnull %1160, ptr noundef nonnull %889, ptr noundef %7, ptr noundef %8, i32 noundef %1159)
  %1161 = load ptr, ptr %8, align 8, !tbaa !46
  %1162 = load ptr, ptr %7, align 8, !tbaa !46
  %1163 = ptrtoint ptr %1161 to i64
  %1164 = ptrtoint ptr %1162 to i64
  %1165 = sub i64 %1163, %1164
  %1166 = ashr exact i64 %1165, 2
  %1167 = icmp eq i64 %901, %1166
  br i1 %1167, label %1523, label %1168

1168:                                             ; preds = %1152
  %1169 = load i32, ptr %1162, align 4, !tbaa !5
  %1170 = sext i32 %1169 to i64
  %1171 = getelementptr inbounds [4 x i8], ptr %138, i64 %1170
  %1172 = load i32, ptr %1171, align 4, !tbaa !5
  %1173 = icmp eq i32 %1172, %1159
  br i1 %1173, label %1208, label %1174

1174:                                             ; preds = %1168
  %1175 = add nsw i64 %1166, 2147483648
  %1176 = icmp ult i64 %1175, 4294967296
  br i1 %1176, label %1177, label %2721

1177:                                             ; preds = %1174
  %1178 = icmp ult i64 %1166, 65536
  br i1 %1178, label %1196, label %1179

1179:                                             ; preds = %1177
  %1180 = icmp ult i64 %1166, 16777216
  br i1 %1180, label %1189, label %1181

1181:                                             ; preds = %1179
  %1182 = lshr i64 %1166, 24
  %1183 = and i64 %1182, 255
  %1184 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1183
  %1185 = load i32, ptr %1184, align 4, !tbaa !5
  %1186 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1185, i32 24), !nosanitize !10
  %1187 = extractvalue { i32, i1 } %1186, 0, !nosanitize !10
  %1188 = extractvalue { i32, i1 } %1186, 1, !nosanitize !10
  br i1 %1188, label %2722, label %1208, !prof !11, !nosanitize !10

1189:                                             ; preds = %1179
  %1190 = lshr i64 %1166, 16
  %1191 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1190
  %1192 = load i32, ptr %1191, align 4, !tbaa !5
  %1193 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1192, i32 16), !nosanitize !10
  %1194 = extractvalue { i32, i1 } %1193, 0, !nosanitize !10
  %1195 = extractvalue { i32, i1 } %1193, 1, !nosanitize !10
  br i1 %1195, label %2722, label %1208, !prof !11, !nosanitize !10

1196:                                             ; preds = %1177
  %1197 = icmp samesign ult i64 %1166, 256
  br i1 %1197, label %1205, label %1198

1198:                                             ; preds = %1196
  %1199 = lshr i64 %1166, 8
  %1200 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1199
  %1201 = load i32, ptr %1200, align 4, !tbaa !5
  %1202 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1201, i32 8), !nosanitize !10
  %1203 = extractvalue { i32, i1 } %1202, 0, !nosanitize !10
  %1204 = extractvalue { i32, i1 } %1202, 1, !nosanitize !10
  br i1 %1204, label %2722, label %1208, !prof !11, !nosanitize !10

1205:                                             ; preds = %1196
  %1206 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %1165
  %1207 = load i32, ptr %1206, align 4, !tbaa !5
  br label %1208

1208:                                             ; preds = %1205, %1198, %1189, %1181, %1168
  %1209 = phi i32 [ -1, %1168 ], [ %1187, %1181 ], [ %1194, %1189 ], [ %1203, %1198 ], [ %1207, %1205 ]
  %1210 = sub i64 %1164, %813
  %1211 = ashr exact i64 %1210, 2
  %1212 = add nsw i64 %1211, 2147483647
  %1213 = icmp ult i64 %1212, 4294967296
  br i1 %1213, label %1214, label %2723

1214:                                             ; preds = %1208
  %1215 = trunc i64 %1211 to i32
  %1216 = add i32 %1215, -1
  %1217 = icmp ult ptr %890, %1162
  br i1 %1217, label %.preheader265, label %.loopexit266

.preheader265:                                    ; preds = %1214, %.preheader265
  %1218 = phi ptr [ %1222, %.preheader265 ], [ %890, %1214 ]
  %1219 = load i32, ptr %1218, align 4, !tbaa !5
  %1220 = sext i32 %1219 to i64
  %1221 = getelementptr inbounds [4 x i8], ptr %138, i64 %1220
  store i32 %1216, ptr %1221, align 4, !tbaa !5
  %1222 = getelementptr inbounds nuw i8, ptr %1218, i64 4
  %1223 = icmp ult ptr %1222, %1162
  br i1 %1223, label %.preheader265, label %.loopexit266, !llvm.loop !49

.loopexit266:                                     ; preds = %.preheader265, %1214
  %1224 = icmp ult ptr %1161, %889
  br i1 %1224, label %1225, label %.loopexit264

1225:                                             ; preds = %.loopexit266
  %1226 = sub i64 %1163, %813
  %1227 = ashr exact i64 %1226, 2
  %1228 = add nsw i64 %1227, 2147483647
  %1229 = icmp ult i64 %1228, 4294967296
  br i1 %1229, label %1230, label %2724

1230:                                             ; preds = %1225
  %1231 = trunc i64 %1227 to i32
  %1232 = add i32 %1231, -1
  %1233 = icmp ult ptr %1162, %1161
  br i1 %1233, label %.preheader263, label %.loopexit264

.preheader263:                                    ; preds = %1230, %.preheader263
  %1234 = phi ptr [ %1238, %.preheader263 ], [ %1162, %1230 ]
  %1235 = load i32, ptr %1234, align 4, !tbaa !5
  %1236 = sext i32 %1235 to i64
  %1237 = getelementptr inbounds [4 x i8], ptr %138, i64 %1236
  store i32 %1232, ptr %1237, align 4, !tbaa !5
  %1238 = getelementptr inbounds nuw i8, ptr %1234, i64 4
  %1239 = icmp ult ptr %1238, %1161
  br i1 %1239, label %.preheader263, label %.loopexit264, !llvm.loop !50

.loopexit264:                                     ; preds = %.preheader263, %1230, %.loopexit266
  %1240 = icmp sgt i64 %1166, 1
  br i1 %1240, label %1241, label %1447

1241:                                             ; preds = %.loopexit264
  %1242 = icmp samesign ult i64 %1166, 2147483648
  br i1 %1242, label %1243, label %2725

1243:                                             ; preds = %1241
  %1244 = trunc nuw nsw i64 %1166 to i32
  %1245 = icmp slt i32 %886, %1244
  br i1 %1245, label %1248, label %1246

1246:                                             ; preds = %1243
  %1247 = sub nsw i32 %886, %1244
  br label %1260

1248:                                             ; preds = %1243
  %1249 = icmp eq i32 %887, 0
  br i1 %1249, label %1442, label %1250

1250:                                             ; preds = %1248
  %1251 = sub nsw i32 %78, %1244
  %1252 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %886, i32 %1251), !nosanitize !10
  %1253 = extractvalue { i32, i1 } %1252, 1, !nosanitize !10
  br i1 %1253, label %2727, label %1254, !prof !11, !nosanitize !10

1254:                                             ; preds = %1250
  %1255 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %887, i32 -1)
  %1256 = extractvalue { i32, i1 } %1255, 1, !nosanitize !10
  br i1 %1256, label %2726, label %1257, !prof !11, !nosanitize !10

1257:                                             ; preds = %1254
  %1258 = extractvalue { i32, i1 } %1252, 0, !nosanitize !10
  %1259 = extractvalue { i32, i1 } %1255, 0, !nosanitize !10
  br label %1260

1260:                                             ; preds = %1257, %1246
  %1261 = phi i32 [ %1258, %1257 ], [ %1247, %1246 ]
  %1262 = phi i32 [ %1259, %1257 ], [ %887, %1246 ]
  %1263 = sub i64 %1164, %898
  %1264 = ashr exact i64 %1263, 2
  %1265 = sub i64 %897, %1163
  %1266 = ashr exact i64 %1265, 2
  %1267 = icmp sgt i64 %1264, %1266
  br i1 %1267, label %1355, label %1268

1268:                                             ; preds = %1260
  %1269 = icmp sgt i64 %1266, %1166
  br i1 %1269, label %1305, label %1270

1270:                                             ; preds = %1268
  %1271 = icmp sgt i64 %1264, 1
  br i1 %1271, label %1287, label %1272

1272:                                             ; preds = %1270
  %1273 = icmp sgt i64 %1266, 1
  br i1 %1273, label %1276, label %1274

1274:                                             ; preds = %1272
  %1275 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  br label %2610

1276:                                             ; preds = %1272
  %1277 = icmp slt i32 %893, 64
  br i1 %1277, label %1278, label %2730

1278:                                             ; preds = %1276
  %1279 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  %1280 = sext i32 %893 to i64
  %1281 = getelementptr inbounds [32 x i8], ptr %6, i64 %1280
  store ptr %1279, ptr %1281, align 16, !tbaa !51
  %1282 = getelementptr inbounds nuw i8, ptr %1281, i64 8
  store ptr %1162, ptr %1282, align 8, !tbaa !53
  %1283 = getelementptr inbounds nuw i8, ptr %1281, i64 16
  store ptr %1161, ptr %1283, align 16, !tbaa !54
  %1284 = getelementptr inbounds nuw i8, ptr %1281, i64 24
  store i32 %1209, ptr %1284, align 8, !tbaa !55
  %1285 = add nsw i32 %893, 1
  %1286 = getelementptr inbounds nuw i8, ptr %1281, i64 28
  store i32 %894, ptr %1286, align 4, !tbaa !56
  br label %2610

1287:                                             ; preds = %1270
  %1288 = icmp slt i32 %893, 64
  br i1 %1288, label %1289, label %2728

1289:                                             ; preds = %1287
  %1290 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  %1291 = sext i32 %893 to i64
  %1292 = getelementptr inbounds [32 x i8], ptr %6, i64 %1291
  store ptr %1290, ptr %1292, align 16, !tbaa !51
  %1293 = getelementptr inbounds nuw i8, ptr %1292, i64 8
  store ptr %1162, ptr %1293, align 8, !tbaa !53
  %1294 = getelementptr inbounds nuw i8, ptr %1292, i64 16
  store ptr %1161, ptr %1294, align 16, !tbaa !54
  %1295 = getelementptr inbounds nuw i8, ptr %1292, i64 24
  store i32 %1209, ptr %1295, align 8, !tbaa !55
  %1296 = getelementptr inbounds nuw i8, ptr %1292, i64 28
  store i32 %894, ptr %1296, align 4, !tbaa !56
  %1297 = icmp eq i32 %893, 63
  br i1 %1297, label %2729, label %1298

1298:                                             ; preds = %1289
  %1299 = getelementptr i8, ptr %1292, i64 32
  store ptr %891, ptr %1299, align 16, !tbaa !51
  %1300 = getelementptr i8, ptr %1292, i64 40
  store ptr %1161, ptr %1300, align 8, !tbaa !53
  %1301 = getelementptr i8, ptr %1292, i64 48
  store ptr %889, ptr %1301, align 16, !tbaa !54
  %1302 = getelementptr i8, ptr %1292, i64 56
  store i32 %919, ptr %1302, align 8, !tbaa !55
  %1303 = add nsw i32 %893, 2
  %1304 = getelementptr i8, ptr %1292, i64 60
  store i32 %894, ptr %1304, align 4, !tbaa !56
  br label %2610

1305:                                             ; preds = %1268
  %1306 = icmp sgt i64 %1264, %1166
  br i1 %1306, label %1337, label %1307

1307:                                             ; preds = %1305
  %1308 = icmp sgt i64 %1264, 1
  %1309 = icmp slt i32 %893, 64
  br i1 %1308, label %1320, label %1310

1310:                                             ; preds = %1307
  br i1 %1309, label %1311, label %2733

1311:                                             ; preds = %1310
  %1312 = sext i32 %893 to i64
  %1313 = getelementptr inbounds [32 x i8], ptr %6, i64 %1312
  store ptr %891, ptr %1313, align 16, !tbaa !51
  %1314 = getelementptr inbounds nuw i8, ptr %1313, i64 8
  store ptr %1161, ptr %1314, align 8, !tbaa !53
  %1315 = getelementptr inbounds nuw i8, ptr %1313, i64 16
  store ptr %889, ptr %1315, align 16, !tbaa !54
  %1316 = getelementptr inbounds nuw i8, ptr %1313, i64 24
  store i32 %919, ptr %1316, align 8, !tbaa !55
  %1317 = add nsw i32 %893, 1
  %1318 = getelementptr inbounds nuw i8, ptr %1313, i64 28
  store i32 %894, ptr %1318, align 4, !tbaa !56
  %1319 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  br label %2610

1320:                                             ; preds = %1307
  br i1 %1309, label %1321, label %2731

1321:                                             ; preds = %1320
  %1322 = sext i32 %893 to i64
  %1323 = getelementptr inbounds [32 x i8], ptr %6, i64 %1322
  store ptr %891, ptr %1323, align 16, !tbaa !51
  %1324 = getelementptr inbounds nuw i8, ptr %1323, i64 8
  store ptr %1161, ptr %1324, align 8, !tbaa !53
  %1325 = getelementptr inbounds nuw i8, ptr %1323, i64 16
  store ptr %889, ptr %1325, align 16, !tbaa !54
  %1326 = getelementptr inbounds nuw i8, ptr %1323, i64 24
  store i32 %919, ptr %1326, align 8, !tbaa !55
  %1327 = getelementptr inbounds nuw i8, ptr %1323, i64 28
  store i32 %894, ptr %1327, align 4, !tbaa !56
  %1328 = icmp eq i32 %893, 63
  br i1 %1328, label %2732, label %1329

1329:                                             ; preds = %1321
  %1330 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  %1331 = getelementptr i8, ptr %1323, i64 32
  store ptr %1330, ptr %1331, align 16, !tbaa !51
  %1332 = getelementptr i8, ptr %1323, i64 40
  store ptr %1162, ptr %1332, align 8, !tbaa !53
  %1333 = getelementptr i8, ptr %1323, i64 48
  store ptr %1161, ptr %1333, align 16, !tbaa !54
  %1334 = getelementptr i8, ptr %1323, i64 56
  store i32 %1209, ptr %1334, align 8, !tbaa !55
  %1335 = add nsw i32 %893, 2
  %1336 = getelementptr i8, ptr %1323, i64 60
  store i32 %894, ptr %1336, align 4, !tbaa !56
  br label %2610

1337:                                             ; preds = %1305
  %1338 = icmp slt i32 %893, 64
  br i1 %1338, label %1339, label %2734

1339:                                             ; preds = %1337
  %1340 = sext i32 %893 to i64
  %1341 = getelementptr inbounds [32 x i8], ptr %6, i64 %1340
  store ptr %891, ptr %1341, align 16, !tbaa !51
  %1342 = getelementptr inbounds nuw i8, ptr %1341, i64 8
  store ptr %1161, ptr %1342, align 8, !tbaa !53
  %1343 = getelementptr inbounds nuw i8, ptr %1341, i64 16
  store ptr %889, ptr %1343, align 16, !tbaa !54
  %1344 = getelementptr inbounds nuw i8, ptr %1341, i64 24
  store i32 %919, ptr %1344, align 8, !tbaa !55
  %1345 = getelementptr inbounds nuw i8, ptr %1341, i64 28
  store i32 %894, ptr %1345, align 4, !tbaa !56
  %1346 = icmp eq i32 %893, 63
  br i1 %1346, label %2735, label %1347

1347:                                             ; preds = %1339
  %1348 = getelementptr i8, ptr %1341, i64 32
  store ptr %891, ptr %1348, align 16, !tbaa !51
  %1349 = getelementptr i8, ptr %1341, i64 40
  store ptr %890, ptr %1349, align 8, !tbaa !53
  %1350 = getelementptr i8, ptr %1341, i64 48
  store ptr %1162, ptr %1350, align 16, !tbaa !54
  %1351 = getelementptr i8, ptr %1341, i64 56
  store i32 %919, ptr %1351, align 8, !tbaa !55
  %1352 = add nsw i32 %893, 2
  %1353 = getelementptr i8, ptr %1341, i64 60
  store i32 %894, ptr %1353, align 4, !tbaa !56
  %1354 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  br label %2610

1355:                                             ; preds = %1260
  %1356 = icmp sgt i64 %1264, %1166
  br i1 %1356, label %1392, label %1357

1357:                                             ; preds = %1355
  %1358 = icmp sgt i64 %1266, 1
  br i1 %1358, label %1374, label %1359

1359:                                             ; preds = %1357
  %1360 = icmp sgt i64 %1264, 1
  br i1 %1360, label %1363, label %1361

1361:                                             ; preds = %1359
  %1362 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  br label %2610

1363:                                             ; preds = %1359
  %1364 = icmp slt i32 %893, 64
  br i1 %1364, label %1365, label %2738

1365:                                             ; preds = %1363
  %1366 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  %1367 = sext i32 %893 to i64
  %1368 = getelementptr inbounds [32 x i8], ptr %6, i64 %1367
  store ptr %1366, ptr %1368, align 16, !tbaa !51
  %1369 = getelementptr inbounds nuw i8, ptr %1368, i64 8
  store ptr %1162, ptr %1369, align 8, !tbaa !53
  %1370 = getelementptr inbounds nuw i8, ptr %1368, i64 16
  store ptr %1161, ptr %1370, align 16, !tbaa !54
  %1371 = getelementptr inbounds nuw i8, ptr %1368, i64 24
  store i32 %1209, ptr %1371, align 8, !tbaa !55
  %1372 = add nsw i32 %893, 1
  %1373 = getelementptr inbounds nuw i8, ptr %1368, i64 28
  store i32 %894, ptr %1373, align 4, !tbaa !56
  br label %2610

1374:                                             ; preds = %1357
  %1375 = icmp slt i32 %893, 64
  br i1 %1375, label %1376, label %2736

1376:                                             ; preds = %1374
  %1377 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  %1378 = sext i32 %893 to i64
  %1379 = getelementptr inbounds [32 x i8], ptr %6, i64 %1378
  store ptr %1377, ptr %1379, align 16, !tbaa !51
  %1380 = getelementptr inbounds nuw i8, ptr %1379, i64 8
  store ptr %1162, ptr %1380, align 8, !tbaa !53
  %1381 = getelementptr inbounds nuw i8, ptr %1379, i64 16
  store ptr %1161, ptr %1381, align 16, !tbaa !54
  %1382 = getelementptr inbounds nuw i8, ptr %1379, i64 24
  store i32 %1209, ptr %1382, align 8, !tbaa !55
  %1383 = getelementptr inbounds nuw i8, ptr %1379, i64 28
  store i32 %894, ptr %1383, align 4, !tbaa !56
  %1384 = icmp eq i32 %893, 63
  br i1 %1384, label %2737, label %1385

1385:                                             ; preds = %1376
  %1386 = getelementptr i8, ptr %1379, i64 32
  store ptr %891, ptr %1386, align 16, !tbaa !51
  %1387 = getelementptr i8, ptr %1379, i64 40
  store ptr %890, ptr %1387, align 8, !tbaa !53
  %1388 = getelementptr i8, ptr %1379, i64 48
  store ptr %1162, ptr %1388, align 16, !tbaa !54
  %1389 = getelementptr i8, ptr %1379, i64 56
  store i32 %919, ptr %1389, align 8, !tbaa !55
  %1390 = add nsw i32 %893, 2
  %1391 = getelementptr i8, ptr %1379, i64 60
  store i32 %894, ptr %1391, align 4, !tbaa !56
  br label %2610

1392:                                             ; preds = %1355
  %1393 = icmp sgt i64 %1266, %1166
  br i1 %1393, label %1424, label %1394

1394:                                             ; preds = %1392
  %1395 = icmp sgt i64 %1266, 1
  %1396 = icmp slt i32 %893, 64
  br i1 %1395, label %1407, label %1397

1397:                                             ; preds = %1394
  br i1 %1396, label %1398, label %2741

1398:                                             ; preds = %1397
  %1399 = sext i32 %893 to i64
  %1400 = getelementptr inbounds [32 x i8], ptr %6, i64 %1399
  store ptr %891, ptr %1400, align 16, !tbaa !51
  %1401 = getelementptr inbounds nuw i8, ptr %1400, i64 8
  store ptr %890, ptr %1401, align 8, !tbaa !53
  %1402 = getelementptr inbounds nuw i8, ptr %1400, i64 16
  store ptr %1162, ptr %1402, align 16, !tbaa !54
  %1403 = getelementptr inbounds nuw i8, ptr %1400, i64 24
  store i32 %919, ptr %1403, align 8, !tbaa !55
  %1404 = add nsw i32 %893, 1
  %1405 = getelementptr inbounds nuw i8, ptr %1400, i64 28
  store i32 %894, ptr %1405, align 4, !tbaa !56
  %1406 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  br label %2610

1407:                                             ; preds = %1394
  br i1 %1396, label %1408, label %2739

1408:                                             ; preds = %1407
  %1409 = sext i32 %893 to i64
  %1410 = getelementptr inbounds [32 x i8], ptr %6, i64 %1409
  store ptr %891, ptr %1410, align 16, !tbaa !51
  %1411 = getelementptr inbounds nuw i8, ptr %1410, i64 8
  store ptr %890, ptr %1411, align 8, !tbaa !53
  %1412 = getelementptr inbounds nuw i8, ptr %1410, i64 16
  store ptr %1162, ptr %1412, align 16, !tbaa !54
  %1413 = getelementptr inbounds nuw i8, ptr %1410, i64 24
  store i32 %919, ptr %1413, align 8, !tbaa !55
  %1414 = getelementptr inbounds nuw i8, ptr %1410, i64 28
  store i32 %894, ptr %1414, align 4, !tbaa !56
  %1415 = icmp eq i32 %893, 63
  br i1 %1415, label %2740, label %1416

1416:                                             ; preds = %1408
  %1417 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  %1418 = getelementptr i8, ptr %1410, i64 32
  store ptr %1417, ptr %1418, align 16, !tbaa !51
  %1419 = getelementptr i8, ptr %1410, i64 40
  store ptr %1162, ptr %1419, align 8, !tbaa !53
  %1420 = getelementptr i8, ptr %1410, i64 48
  store ptr %1161, ptr %1420, align 16, !tbaa !54
  %1421 = getelementptr i8, ptr %1410, i64 56
  store i32 %1209, ptr %1421, align 8, !tbaa !55
  %1422 = add nsw i32 %893, 2
  %1423 = getelementptr i8, ptr %1410, i64 60
  store i32 %894, ptr %1423, align 4, !tbaa !56
  br label %2610

1424:                                             ; preds = %1392
  %1425 = icmp slt i32 %893, 64
  br i1 %1425, label %1426, label %2742

1426:                                             ; preds = %1424
  %1427 = sext i32 %893 to i64
  %1428 = getelementptr inbounds [32 x i8], ptr %6, i64 %1427
  store ptr %891, ptr %1428, align 16, !tbaa !51
  %1429 = getelementptr inbounds nuw i8, ptr %1428, i64 8
  store ptr %890, ptr %1429, align 8, !tbaa !53
  %1430 = getelementptr inbounds nuw i8, ptr %1428, i64 16
  store ptr %1162, ptr %1430, align 16, !tbaa !54
  %1431 = getelementptr inbounds nuw i8, ptr %1428, i64 24
  store i32 %919, ptr %1431, align 8, !tbaa !55
  %1432 = getelementptr inbounds nuw i8, ptr %1428, i64 28
  store i32 %894, ptr %1432, align 4, !tbaa !56
  %1433 = icmp eq i32 %893, 63
  br i1 %1433, label %2743, label %1434

1434:                                             ; preds = %1426
  %1435 = getelementptr i8, ptr %1428, i64 32
  store ptr %891, ptr %1435, align 16, !tbaa !51
  %1436 = getelementptr i8, ptr %1428, i64 40
  store ptr %1161, ptr %1436, align 8, !tbaa !53
  %1437 = getelementptr i8, ptr %1428, i64 48
  store ptr %889, ptr %1437, align 16, !tbaa !54
  %1438 = getelementptr i8, ptr %1428, i64 56
  store i32 %919, ptr %1438, align 8, !tbaa !55
  %1439 = add nsw i32 %893, 2
  %1440 = getelementptr i8, ptr %1428, i64 60
  store i32 %894, ptr %1440, align 4, !tbaa !56
  %1441 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  br label %2610

1442:                                             ; preds = %1248
  %1443 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %885, i32 %1244), !nosanitize !10
  %1444 = extractvalue { i32, i1 } %1443, 1, !nosanitize !10
  br i1 %1444, label %2727, label %1445, !prof !11, !nosanitize !10

1445:                                             ; preds = %1442
  %1446 = extractvalue { i32, i1 } %1443, 0, !nosanitize !10
  br label %1447

1447:                                             ; preds = %1445, %.loopexit264
  %1448 = phi i32 [ %1446, %1445 ], [ %885, %.loopexit264 ]
  %1449 = icmp sgt i64 %1165, 4
  %1450 = icmp sgt i32 %894, -1
  %1451 = select i1 %1449, i1 %1450, i1 false
  br i1 %1451, label %1452, label %1455

1452:                                             ; preds = %1447
  %1453 = zext nneg i32 %894 to i64
  %.split = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1453
  %1454 = getelementptr inbounds nuw i8, ptr %.split, i64 24
  store i32 -1, ptr %1454, align 8, !tbaa !55
  br label %1455

1455:                                             ; preds = %1452, %1447
  %1456 = sub i64 %1164, %898
  %1457 = ashr exact i64 %1456, 2
  %1458 = sub i64 %897, %1163
  %1459 = ashr exact i64 %1458, 2
  %1460 = icmp sgt i64 %1457, %1459
  br i1 %1460, label %1492, label %1461

1461:                                             ; preds = %1455
  %1462 = icmp sgt i64 %1457, 1
  br i1 %1462, label %1482, label %1463

1463:                                             ; preds = %1461
  %1464 = icmp sgt i64 %1459, 1
  br i1 %1464, label %2610, label %1465

1465:                                             ; preds = %1463
  %1466 = icmp sgt i32 %893, -1
  br i1 %1466, label %1467, label %2745

1467:                                             ; preds = %1465
  %1468 = icmp eq i32 %893, 0
  br i1 %1468, label %2593, label %1469

1469:                                             ; preds = %1467
  %1470 = add nsw i32 %893, -1
  %1471 = zext nneg i32 %1470 to i64
  %1472 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1471
  %1473 = load ptr, ptr %1472, align 16, !tbaa !51
  %1474 = getelementptr inbounds nuw i8, ptr %1472, i64 8
  %1475 = load ptr, ptr %1474, align 8, !tbaa !53
  %1476 = getelementptr inbounds nuw i8, ptr %1472, i64 16
  %1477 = load ptr, ptr %1476, align 16, !tbaa !54
  %1478 = getelementptr inbounds nuw i8, ptr %1472, i64 24
  %1479 = load i32, ptr %1478, align 8, !tbaa !55
  %1480 = getelementptr inbounds nuw i8, ptr %1472, i64 28
  %1481 = load i32, ptr %1480, align 4, !tbaa !56
  br label %2610

1482:                                             ; preds = %1461
  %1483 = icmp slt i32 %893, 64
  br i1 %1483, label %1484, label %2744

1484:                                             ; preds = %1482
  %1485 = sext i32 %893 to i64
  %1486 = getelementptr inbounds [32 x i8], ptr %6, i64 %1485
  store ptr %891, ptr %1486, align 16, !tbaa !51
  %1487 = getelementptr inbounds nuw i8, ptr %1486, i64 8
  store ptr %1161, ptr %1487, align 8, !tbaa !53
  %1488 = getelementptr inbounds nuw i8, ptr %1486, i64 16
  store ptr %889, ptr %1488, align 16, !tbaa !54
  %1489 = getelementptr inbounds nuw i8, ptr %1486, i64 24
  store i32 %919, ptr %1489, align 8, !tbaa !55
  %1490 = add nsw i32 %893, 1
  %1491 = getelementptr inbounds nuw i8, ptr %1486, i64 28
  store i32 %894, ptr %1491, align 4, !tbaa !56
  br label %2610

1492:                                             ; preds = %1455
  %1493 = icmp sgt i64 %1459, 1
  br i1 %1493, label %1513, label %1494

1494:                                             ; preds = %1492
  %1495 = icmp sgt i64 %1457, 1
  br i1 %1495, label %2610, label %1496

1496:                                             ; preds = %1494
  %1497 = icmp sgt i32 %893, -1
  br i1 %1497, label %1498, label %2747

1498:                                             ; preds = %1496
  %1499 = icmp eq i32 %893, 0
  br i1 %1499, label %2593, label %1500

1500:                                             ; preds = %1498
  %1501 = add nsw i32 %893, -1
  %1502 = zext nneg i32 %1501 to i64
  %1503 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1502
  %1504 = load ptr, ptr %1503, align 16, !tbaa !51
  %1505 = getelementptr inbounds nuw i8, ptr %1503, i64 8
  %1506 = load ptr, ptr %1505, align 8, !tbaa !53
  %1507 = getelementptr inbounds nuw i8, ptr %1503, i64 16
  %1508 = load ptr, ptr %1507, align 16, !tbaa !54
  %1509 = getelementptr inbounds nuw i8, ptr %1503, i64 24
  %1510 = load i32, ptr %1509, align 8, !tbaa !55
  %1511 = getelementptr inbounds nuw i8, ptr %1503, i64 28
  %1512 = load i32, ptr %1511, align 4, !tbaa !56
  br label %2610

1513:                                             ; preds = %1492
  %1514 = icmp slt i32 %893, 64
  br i1 %1514, label %1515, label %2746

1515:                                             ; preds = %1513
  %1516 = sext i32 %893 to i64
  %1517 = getelementptr inbounds [32 x i8], ptr %6, i64 %1516
  store ptr %891, ptr %1517, align 16, !tbaa !51
  %1518 = getelementptr inbounds nuw i8, ptr %1517, i64 8
  store ptr %890, ptr %1518, align 8, !tbaa !53
  %1519 = getelementptr inbounds nuw i8, ptr %1517, i64 16
  store ptr %1162, ptr %1519, align 16, !tbaa !54
  %1520 = getelementptr inbounds nuw i8, ptr %1517, i64 24
  store i32 %919, ptr %1520, align 8, !tbaa !55
  %1521 = add nsw i32 %893, 1
  %1522 = getelementptr inbounds nuw i8, ptr %1517, i64 28
  store i32 %894, ptr %1522, align 4, !tbaa !56
  br label %2610

1523:                                             ; preds = %1152
  %1524 = icmp slt i32 %886, %903
  br i1 %1524, label %1527, label %1525

1525:                                             ; preds = %1523
  %1526 = sub nsw i32 %886, %903
  br label %1539

1527:                                             ; preds = %1523
  %1528 = icmp eq i32 %887, 0
  br i1 %1528, label %1574, label %1529

1529:                                             ; preds = %1527
  %1530 = sub nsw i32 %78, %903
  %1531 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %886, i32 %1530), !nosanitize !10
  %1532 = extractvalue { i32, i1 } %1531, 1, !nosanitize !10
  br i1 %1532, label %2749, label %1533, !prof !11, !nosanitize !10

1533:                                             ; preds = %1529
  %1534 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %887, i32 -1)
  %1535 = extractvalue { i32, i1 } %1534, 1, !nosanitize !10
  br i1 %1535, label %2748, label %1536, !prof !11, !nosanitize !10

1536:                                             ; preds = %1533
  %1537 = extractvalue { i32, i1 } %1531, 0, !nosanitize !10
  %1538 = extractvalue { i32, i1 } %1534, 0, !nosanitize !10
  br label %1539

1539:                                             ; preds = %1536, %1525
  %1540 = phi i32 [ %1537, %1536 ], [ %1526, %1525 ]
  %1541 = phi i32 [ %1538, %1536 ], [ %887, %1525 ]
  %1542 = icmp samesign ult i64 %901, 65536
  br i1 %1542, label %1559, label %1543

1543:                                             ; preds = %1539
  %1544 = icmp samesign ult i64 %901, 16777216
  br i1 %1544, label %1552, label %1545

1545:                                             ; preds = %1543
  %1546 = lshr i64 %901, 24
  %1547 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1546
  %1548 = load i32, ptr %1547, align 4, !tbaa !5
  %1549 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1548, i32 24), !nosanitize !10
  %1550 = extractvalue { i32, i1 } %1549, 0, !nosanitize !10
  %1551 = extractvalue { i32, i1 } %1549, 1, !nosanitize !10
  br i1 %1551, label %2750, label %1571, !prof !11, !nosanitize !10

1552:                                             ; preds = %1543
  %1553 = lshr i64 %901, 16
  %1554 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1553
  %1555 = load i32, ptr %1554, align 4, !tbaa !5
  %1556 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1555, i32 16), !nosanitize !10
  %1557 = extractvalue { i32, i1 } %1556, 0, !nosanitize !10
  %1558 = extractvalue { i32, i1 } %1556, 1, !nosanitize !10
  br i1 %1558, label %2750, label %1571, !prof !11, !nosanitize !10

1559:                                             ; preds = %1539
  %1560 = icmp samesign ult i64 %901, 256
  br i1 %1560, label %1568, label %1561

1561:                                             ; preds = %1559
  %1562 = lshr i64 %901, 8
  %1563 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1562
  %1564 = load i32, ptr %1563, align 4, !tbaa !5
  %1565 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1564, i32 8), !nosanitize !10
  %1566 = extractvalue { i32, i1 } %1565, 0, !nosanitize !10
  %1567 = extractvalue { i32, i1 } %1565, 1, !nosanitize !10
  br i1 %1567, label %2750, label %1571, !prof !11, !nosanitize !10

1568:                                             ; preds = %1559
  %1569 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %901
  %1570 = load i32, ptr %1569, align 4, !tbaa !5
  br label %1571

1571:                                             ; preds = %1568, %1561, %1552, %1545
  %1572 = phi i32 [ %1550, %1545 ], [ %1557, %1552 ], [ %1566, %1561 ], [ %1570, %1568 ]
  %1573 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  br label %2610

1574:                                             ; preds = %1527
  %1575 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %885, i32 %903), !nosanitize !10
  %1576 = extractvalue { i32, i1 } %1575, 1, !nosanitize !10
  br i1 %1576, label %2749, label %1577, !prof !11, !nosanitize !10

1577:                                             ; preds = %1574
  %1578 = extractvalue { i32, i1 } %1575, 0, !nosanitize !10
  %1579 = icmp sgt i32 %894, -1
  br i1 %1579, label %1580, label %1583

1580:                                             ; preds = %1577
  %1581 = zext nneg i32 %894 to i64
  %.split220 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1581
  %1582 = getelementptr inbounds nuw i8, ptr %.split220, i64 24
  store i32 -1, ptr %1582, align 8, !tbaa !55
  br label %1583

1583:                                             ; preds = %1580, %1577
  %1584 = icmp sgt i32 %893, -1
  br i1 %1584, label %1585, label %2751

1585:                                             ; preds = %1583
  %1586 = icmp eq i32 %893, 0
  br i1 %1586, label %2593, label %1587

1587:                                             ; preds = %1585
  %1588 = add nsw i32 %893, -1
  %1589 = zext nneg i32 %1588 to i64
  %1590 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1589
  %1591 = load ptr, ptr %1590, align 16, !tbaa !51
  %1592 = getelementptr inbounds nuw i8, ptr %1590, i64 8
  %1593 = load ptr, ptr %1592, align 8, !tbaa !53
  %1594 = getelementptr inbounds nuw i8, ptr %1590, i64 16
  %1595 = load ptr, ptr %1594, align 16, !tbaa !54
  %1596 = getelementptr inbounds nuw i8, ptr %1590, i64 24
  %1597 = load i32, ptr %1596, align 8, !tbaa !55
  %1598 = getelementptr inbounds nuw i8, ptr %1590, i64 28
  %1599 = load i32, ptr %1598, align 4, !tbaa !56
  br label %2610

1600:                                             ; preds = %917
  br i1 %905, label %1603, label %1601

1601:                                             ; preds = %1600
  %1602 = lshr i64 %901, 1
  br label %1614

1603:                                             ; preds = %1600
  %1604 = load i32, ptr %909, align 4, !tbaa !5
  %1605 = sext i32 %1604 to i64
  %1606 = getelementptr inbounds [4 x i8], ptr %891, i64 %1605
  %1607 = load i32, ptr %1606, align 4, !tbaa !5
  %1608 = load i32, ptr %911, align 4, !tbaa !5
  %1609 = sext i32 %1608 to i64
  %1610 = getelementptr inbounds [4 x i8], ptr %891, i64 %1609
  %1611 = load i32, ptr %1610, align 4, !tbaa !5
  %1612 = icmp slt i32 %1607, %1611
  br i1 %1612, label %1613, label %1614

1613:                                             ; preds = %1603
  store i32 %1604, ptr %911, align 4, !tbaa !5
  store i32 %1608, ptr %909, align 4, !tbaa !5
  br label %1614

1614:                                             ; preds = %1613, %1603, %1601
  %1615 = phi i64 [ %1602, %1601 ], [ %908, %1613 ], [ %908, %1603 ]
  %1616 = phi i32 [ %903, %1601 ], [ %906, %1613 ], [ %906, %1603 ]
  br label %1617

1617:                                             ; preds = %1647, %1614
  %1618 = phi i64 [ %1615, %1614 ], [ %1619, %1647 ]
  %1619 = add nsw i64 %1618, -1
  %1620 = getelementptr inbounds nuw [4 x i8], ptr %890, i64 %1619
  %1621 = load i32, ptr %1620, align 4, !tbaa !5
  %1622 = sext i32 %1621 to i64
  %1623 = getelementptr inbounds [4 x i8], ptr %891, i64 %1622
  %1624 = load i32, ptr %1623, align 4, !tbaa !5
  %1625 = trunc nuw nsw i64 %1619 to i32
  br label %1626

1626:                                             ; preds = %1765, %1617
  %1627 = phi i32 [ %1767, %1765 ], [ %1625, %1617 ]
  %1628 = shl nsw i32 %1627, 1
  %1629 = or disjoint i32 %1628, 1
  %1630 = icmp slt i32 %1629, %1616
  br i1 %1630, label %1631, label %1647

1631:                                             ; preds = %1626
  %1632 = add nsw i32 %1628, 2
  %1633 = sext i32 %1629 to i64
  %1634 = getelementptr inbounds [4 x i8], ptr %890, i64 %1633
  %1635 = load i32, ptr %1634, align 4, !tbaa !5
  %1636 = sext i32 %1635 to i64
  %1637 = getelementptr inbounds [4 x i8], ptr %891, i64 %1636
  %1638 = load i32, ptr %1637, align 4, !tbaa !5
  %1639 = sext i32 %1632 to i64
  %1640 = getelementptr inbounds [4 x i8], ptr %890, i64 %1639
  %1641 = load i32, ptr %1640, align 4, !tbaa !5
  %1642 = sext i32 %1641 to i64
  %1643 = getelementptr inbounds [4 x i8], ptr %891, i64 %1642
  %1644 = load i32, ptr %1643, align 4, !tbaa !5
  %1645 = tail call i32 @llvm.smax.i32(i32 %1638, i32 %1644)
  %1646 = icmp sgt i32 %1645, %1624
  br i1 %1646, label %1765, label %1647

1647:                                             ; preds = %1631, %1626
  %1648 = sext i32 %1627 to i64
  %1649 = getelementptr inbounds [4 x i8], ptr %890, i64 %1648
  store i32 %1621, ptr %1649, align 4, !tbaa !5
  %1650 = icmp sgt i64 %1618, 1
  br i1 %1650, label %1617, label %1651, !llvm.loop !57

1651:                                             ; preds = %1647
  br i1 %905, label %1652, label %1685

1652:                                             ; preds = %1651
  %1653 = load i32, ptr %890, align 4, !tbaa !5
  %1654 = zext nneg i32 %1616 to i64
  %1655 = getelementptr inbounds nuw [4 x i8], ptr %890, i64 %1654
  %1656 = load i32, ptr %1655, align 4, !tbaa !5
  store i32 %1656, ptr %890, align 4, !tbaa !5
  store i32 %1653, ptr %1655, align 4, !tbaa !5
  %1657 = load i32, ptr %890, align 4, !tbaa !5
  %1658 = sext i32 %1657 to i64
  %1659 = getelementptr inbounds [4 x i8], ptr %891, i64 %1658
  %1660 = load i32, ptr %1659, align 4, !tbaa !5
  br label %1661

1661:                                             ; preds = %1755, %1652
  %1662 = phi i32 [ %1757, %1755 ], [ 0, %1652 ]
  %1663 = shl nsw i32 %1662, 1
  %1664 = or disjoint i32 %1663, 1
  %1665 = icmp slt i32 %1664, %1616
  br i1 %1665, label %1666, label %1682

1666:                                             ; preds = %1661
  %1667 = add nsw i32 %1663, 2
  %1668 = sext i32 %1664 to i64
  %1669 = getelementptr inbounds [4 x i8], ptr %890, i64 %1668
  %1670 = load i32, ptr %1669, align 4, !tbaa !5
  %1671 = sext i32 %1670 to i64
  %1672 = getelementptr inbounds [4 x i8], ptr %891, i64 %1671
  %1673 = load i32, ptr %1672, align 4, !tbaa !5
  %1674 = sext i32 %1667 to i64
  %1675 = getelementptr inbounds [4 x i8], ptr %890, i64 %1674
  %1676 = load i32, ptr %1675, align 4, !tbaa !5
  %1677 = sext i32 %1676 to i64
  %1678 = getelementptr inbounds [4 x i8], ptr %891, i64 %1677
  %1679 = load i32, ptr %1678, align 4, !tbaa !5
  %1680 = tail call i32 @llvm.smax.i32(i32 %1673, i32 %1679)
  %1681 = icmp sgt i32 %1680, %1660
  br i1 %1681, label %1755, label %1682

1682:                                             ; preds = %1666, %1661
  %1683 = sext i32 %1662 to i64
  %1684 = getelementptr inbounds [4 x i8], ptr %890, i64 %1683
  store i32 %1657, ptr %1684, align 4, !tbaa !5
  br label %1685

1685:                                             ; preds = %1682, %1651
  %1686 = add nsw i32 %1616, -1
  %1687 = zext nneg i32 %1686 to i64
  br label %1688

1688:                                             ; preds = %1717, %1685
  %1689 = phi i64 [ %1687, %1685 ], [ %1720, %1717 ]
  %1690 = load i32, ptr %890, align 4, !tbaa !5
  %1691 = getelementptr inbounds nuw [4 x i8], ptr %890, i64 %1689
  %1692 = load i32, ptr %1691, align 4, !tbaa !5
  store i32 %1692, ptr %890, align 4, !tbaa !5
  %1693 = sext i32 %1692 to i64
  %1694 = getelementptr inbounds [4 x i8], ptr %891, i64 %1693
  %1695 = load i32, ptr %1694, align 4, !tbaa !5
  br label %1696

1696:                                             ; preds = %1745, %1688
  %1697 = phi i32 [ %1747, %1745 ], [ 0, %1688 ]
  %1698 = shl nsw i32 %1697, 1
  %1699 = or disjoint i32 %1698, 1
  %1700 = sext i32 %1699 to i64
  %1701 = icmp sgt i64 %1689, %1700
  br i1 %1701, label %1702, label %1717

1702:                                             ; preds = %1696
  %1703 = add nsw i32 %1698, 2
  %1704 = getelementptr inbounds [4 x i8], ptr %890, i64 %1700
  %1705 = load i32, ptr %1704, align 4, !tbaa !5
  %1706 = sext i32 %1705 to i64
  %1707 = getelementptr inbounds [4 x i8], ptr %891, i64 %1706
  %1708 = load i32, ptr %1707, align 4, !tbaa !5
  %1709 = sext i32 %1703 to i64
  %1710 = getelementptr inbounds [4 x i8], ptr %890, i64 %1709
  %1711 = load i32, ptr %1710, align 4, !tbaa !5
  %1712 = sext i32 %1711 to i64
  %1713 = getelementptr inbounds [4 x i8], ptr %891, i64 %1712
  %1714 = load i32, ptr %1713, align 4, !tbaa !5
  %1715 = tail call i32 @llvm.smax.i32(i32 %1708, i32 %1714)
  %1716 = icmp sgt i32 %1715, %1695
  br i1 %1716, label %1745, label %1717

1717:                                             ; preds = %1702, %1696
  %1718 = sext i32 %1697 to i64
  %1719 = getelementptr inbounds [4 x i8], ptr %890, i64 %1718
  store i32 %1692, ptr %1719, align 4, !tbaa !5
  store i32 %1690, ptr %1691, align 4, !tbaa !5
  %1720 = add nsw i64 %1689, -1
  %1721 = icmp sgt i64 %1689, 1
  br i1 %1721, label %1688, label %1722, !llvm.loop !58

1722:                                             ; preds = %1717
  %1723 = load ptr, ptr %8, align 8
  br i1 %913, label %.preheader261, label %.loopexit262

.preheader261:                                    ; preds = %1722, %.loopexit236
  %1724 = phi ptr [ %1741, %.loopexit236 ], [ %912, %1722 ]
  %1725 = load i32, ptr %1724, align 4, !tbaa !5
  %1726 = sext i32 %1725 to i64
  %1727 = getelementptr inbounds [4 x i8], ptr %891, i64 %1726
  %1728 = load i32, ptr %1727, align 4, !tbaa !5
  %1729 = getelementptr inbounds i8, ptr %1724, i64 -4
  %1730 = icmp ugt ptr %890, %1729
  br i1 %1730, label %.loopexit236, label %.preheader235

.preheader235:                                    ; preds = %.preheader261, %1737
  %1731 = phi ptr [ %1739, %1737 ], [ %1729, %.preheader261 ]
  %1732 = load i32, ptr %1731, align 4, !tbaa !5
  %1733 = sext i32 %1732 to i64
  %1734 = getelementptr inbounds [4 x i8], ptr %891, i64 %1733
  %1735 = load i32, ptr %1734, align 4, !tbaa !5
  %1736 = icmp eq i32 %1735, %1728
  br i1 %1736, label %1737, label %.loopexit236

1737:                                             ; preds = %.preheader235
  %1738 = xor i32 %1732, -1
  store i32 %1738, ptr %1731, align 4, !tbaa !5
  %1739 = getelementptr inbounds i8, ptr %1731, i64 -4
  %1740 = icmp ugt ptr %890, %1739
  br i1 %1740, label %.loopexit236, label %.preheader235, !llvm.loop !59

.loopexit236:                                     ; preds = %1737, %.preheader235, %.preheader261
  %1741 = phi ptr [ %1729, %.preheader261 ], [ %1739, %1737 ], [ %1731, %.preheader235 ]
  %1742 = icmp ult ptr %890, %1741
  br i1 %1742, label %.preheader261, label %.loopexit262, !llvm.loop !60

.loopexit262:                                     ; preds = %.loopexit236, %1722
  %1743 = phi ptr [ %1723, %1722 ], [ %1741, %.loopexit236 ]
  %1744 = phi ptr [ %912, %1722 ], [ %1741, %.loopexit236 ]
  store ptr %1743, ptr %8, align 8
  br label %.loopexit260

1745:                                             ; preds = %1702
  %1746 = icmp slt i32 %1708, %1714
  %1747 = select i1 %1746, i32 %1703, i32 %1699
  %1748 = sext i32 %1747 to i64
  %1749 = getelementptr inbounds [4 x i8], ptr %890, i64 %1748
  %1750 = load i32, ptr %1749, align 4, !tbaa !5
  %1751 = sext i32 %1697 to i64
  %1752 = getelementptr inbounds [4 x i8], ptr %890, i64 %1751
  store i32 %1750, ptr %1752, align 4, !tbaa !5
  %1753 = add i32 %1747, 1073741824
  %1754 = icmp sgt i32 %1753, -1
  br i1 %1754, label %1696, label %2719, !prof !61, !llvm.loop !62, !nosanitize !10

1755:                                             ; preds = %1666
  %1756 = icmp slt i32 %1673, %1679
  %1757 = select i1 %1756, i32 %1667, i32 %1664
  %1758 = sext i32 %1757 to i64
  %1759 = getelementptr inbounds [4 x i8], ptr %890, i64 %1758
  %1760 = load i32, ptr %1759, align 4, !tbaa !5
  %1761 = sext i32 %1662 to i64
  %1762 = getelementptr inbounds [4 x i8], ptr %890, i64 %1761
  store i32 %1760, ptr %1762, align 4, !tbaa !5
  %1763 = add i32 %1757, 1073741824
  %1764 = icmp sgt i32 %1763, -1
  br i1 %1764, label %1661, label %2718, !prof !61, !llvm.loop !62, !nosanitize !10

1765:                                             ; preds = %1631
  %1766 = icmp slt i32 %1638, %1644
  %1767 = select i1 %1766, i32 %1632, i32 %1629
  %1768 = sext i32 %1767 to i64
  %1769 = getelementptr inbounds [4 x i8], ptr %890, i64 %1768
  %1770 = load i32, ptr %1769, align 4, !tbaa !5
  %1771 = sext i32 %1627 to i64
  %1772 = getelementptr inbounds [4 x i8], ptr %890, i64 %1771
  store i32 %1770, ptr %1772, align 4, !tbaa !5
  %1773 = add i32 %1767, 1073741824
  %1774 = icmp sgt i32 %1773, -1
  br i1 %1774, label %1626, label %2717, !prof !61, !llvm.loop !62, !nosanitize !10

1775:                                             ; preds = %896
  %1776 = getelementptr inbounds nuw i8, ptr %890, i64 4
  %1777 = icmp ult ptr %1776, %889
  br i1 %1777, label %.preheader258, label %.loopexit260

.preheader258:                                    ; preds = %1775, %1815
  %1778 = phi ptr [ %1817, %1815 ], [ %1776, %1775 ]
  %1779 = phi ptr [ %1778, %1815 ], [ %890, %1775 ]
  %1780 = load i32, ptr %1778, align 4, !tbaa !5
  %1781 = sext i32 %1780 to i64
  %1782 = getelementptr inbounds [4 x i8], ptr %891, i64 %1781
  %1783 = load i32, ptr %1782, align 4, !tbaa !5
  %1784 = load i32, ptr %1779, align 4, !tbaa !5
  %1785 = sext i32 %1784 to i64
  %1786 = getelementptr inbounds [4 x i8], ptr %891, i64 %1785
  %1787 = load i32, ptr %1786, align 4, !tbaa !5
  %1788 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1783, i32 %1787), !nosanitize !10
  %1789 = extractvalue { i32, i1 } %1788, 1, !nosanitize !10
  br i1 %1789, label %.loopexit234, label %.preheader232, !prof !63, !nosanitize !10

.preheader232:                                    ; preds = %.preheader258, %1803
  %1790 = phi i32 [ %1801, %1803 ], [ %1784, %.preheader258 ]
  %1791 = phi { i32, i1 } [ %1808, %1803 ], [ %1788, %.preheader258 ]
  %1792 = phi ptr [ %1798, %1803 ], [ %1779, %.preheader258 ]
  %1793 = extractvalue { i32, i1 } %1791, 0
  %1794 = icmp slt i32 %1793, 0
  br i1 %1794, label %.preheader, label %.loopexit231

.preheader:                                       ; preds = %.preheader232, %1800
  %1795 = phi i32 [ %1801, %1800 ], [ %1790, %.preheader232 ]
  %1796 = phi ptr [ %1798, %1800 ], [ %1792, %.preheader232 ]
  %1797 = getelementptr inbounds nuw i8, ptr %1796, i64 4
  store i32 %1795, ptr %1797, align 4, !tbaa !5
  %1798 = getelementptr inbounds i8, ptr %1796, i64 -4
  %1799 = icmp ugt ptr %890, %1798
  br i1 %1799, label %.loopexit231, label %1800

1800:                                             ; preds = %.preheader
  %1801 = load i32, ptr %1798, align 4, !tbaa !5
  %1802 = icmp slt i32 %1801, 0
  br i1 %1802, label %.preheader, label %1803, !llvm.loop !64

1803:                                             ; preds = %1800
  %1804 = load i32, ptr %1782, align 4, !tbaa !5
  %1805 = zext nneg i32 %1801 to i64
  %1806 = getelementptr inbounds nuw [4 x i8], ptr %891, i64 %1805
  %1807 = load i32, ptr %1806, align 4, !tbaa !5
  %1808 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1804, i32 %1807), !nosanitize !10
  %1809 = extractvalue { i32, i1 } %1808, 1, !nosanitize !10
  br i1 %1809, label %.loopexit234, label %.preheader232, !prof !65, !llvm.loop !64, !nosanitize !10

.loopexit231:                                     ; preds = %.preheader232, %.preheader
  %1810 = phi ptr [ %1798, %.preheader ], [ %1792, %.preheader232 ]
  %1811 = icmp eq i32 %1793, 0
  br i1 %1811, label %1812, label %1815

1812:                                             ; preds = %.loopexit231
  %1813 = load i32, ptr %1810, align 4, !tbaa !5
  %1814 = xor i32 %1813, -1
  store i32 %1814, ptr %1810, align 4, !tbaa !5
  br label %1815

1815:                                             ; preds = %1812, %.loopexit231
  %1816 = getelementptr inbounds nuw i8, ptr %1810, i64 4
  store i32 %1780, ptr %1816, align 4, !tbaa !5
  %1817 = getelementptr inbounds nuw i8, ptr %1778, i64 4
  %1818 = icmp ult ptr %1817, %889
  br i1 %1818, label %.preheader258, label %.loopexit260, !llvm.loop !66

.loopexit260:                                     ; preds = %1815, %1775, %.loopexit262
  %1819 = phi ptr [ %888, %1775 ], [ %1744, %.loopexit262 ], [ %888, %1815 ]
  store ptr %1819, ptr %7, align 8
  br label %2384

1820:                                             ; preds = %884
  store ptr %888, ptr %7, align 8
  switch i32 %892, label %2384 [
    i32 -1, label %2055
    i32 -2, label %1821
  ]

1821:                                             ; preds = %1820
  %1822 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %893, i32 -1)
  %1823 = extractvalue { i32, i1 } %1822, 0, !nosanitize !10
  %1824 = extractvalue { i32, i1 } %1822, 1, !nosanitize !10
  br i1 %1824, label %2675, label %1825, !prof !11, !nosanitize !10

1825:                                             ; preds = %1821
  %1826 = sext i32 %1823 to i64
  %1827 = getelementptr inbounds [32 x i8], ptr %6, i64 %1826
  %1828 = getelementptr inbounds nuw i8, ptr %1827, i64 8
  %1829 = load ptr, ptr %1828, align 8, !tbaa !53
  store ptr %1829, ptr %7, align 8, !tbaa !46
  %1830 = getelementptr inbounds nuw i8, ptr %1827, i64 16
  %1831 = load ptr, ptr %1830, align 16, !tbaa !54
  store ptr %1831, ptr %8, align 8, !tbaa !46
  %1832 = getelementptr inbounds nuw i8, ptr %1827, i64 24
  %1833 = load i32, ptr %1832, align 8, !tbaa !55
  %1834 = icmp eq i32 %1833, 0
  br i1 %1834, label %1966, label %1835

1835:                                             ; preds = %1825
  %1836 = icmp sgt i32 %894, -1
  br i1 %1836, label %1837, label %1840

1837:                                             ; preds = %1835
  %1838 = zext nneg i32 %894 to i64
  %.split221 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1838
  %1839 = getelementptr inbounds nuw i8, ptr %.split221, i64 24
  store i32 -1, ptr %1839, align 8, !tbaa !55
  br label %1840

1840:                                             ; preds = %1837, %1835
  %1841 = ptrtoint ptr %891 to i64
  %1842 = sub i64 %1841, %812
  %1843 = ashr exact i64 %1842, 2
  %1844 = add nsw i64 %1843, 2147483648
  %1845 = icmp ult i64 %1844, 4294967296
  br i1 %1845, label %1846, label %2699

1846:                                             ; preds = %1840
  %1847 = trunc nsw i64 %1843 to i32
  %1848 = ptrtoint ptr %1831 to i64
  %1849 = sub i64 %1848, %813
  %1850 = ashr exact i64 %1849, 2
  %1851 = add nsw i64 %1850, 2147483647
  %1852 = icmp ult i64 %1851, 4294967296
  br i1 %1852, label %1853, label %2700

1853:                                             ; preds = %1846
  %1854 = trunc i64 %1850 to i32
  %1855 = add i32 %1854, -1
  %1856 = getelementptr inbounds i8, ptr %1829, i64 -4
  %1857 = icmp ugt ptr %890, %1856
  br i1 %1857, label %.loopexit257, label %.preheader255

.preheader255:                                    ; preds = %1853, %1891
  %1858 = phi i32 [ %1894, %1891 ], [ -1, %1853 ]
  %1859 = phi i32 [ %1893, %1891 ], [ -1, %1853 ]
  %1860 = phi ptr [ %1895, %1891 ], [ %890, %1853 ]
  %1861 = phi ptr [ %1892, %1891 ], [ %1856, %1853 ]
  %1862 = load i32, ptr %1860, align 4, !tbaa !5
  %1863 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1862, i32 %1847), !nosanitize !10
  %1864 = extractvalue { i32, i1 } %1863, 0, !nosanitize !10
  %1865 = extractvalue { i32, i1 } %1863, 1, !nosanitize !10
  br i1 %1865, label %.loopexit251, label %1866, !prof !11, !nosanitize !10

1866:                                             ; preds = %.preheader255
  %1867 = icmp sgt i32 %1864, -1
  br i1 %1867, label %1868, label %1891

1868:                                             ; preds = %1866
  %1869 = zext nneg i32 %1864 to i64
  %1870 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %1869
  %1871 = load i32, ptr %1870, align 4, !tbaa !5
  %1872 = icmp eq i32 %1871, %1855
  br i1 %1872, label %1873, label %1891

1873:                                             ; preds = %1868
  %1874 = getelementptr inbounds nuw i8, ptr %1861, i64 4
  store i32 %1864, ptr %1874, align 4, !tbaa !5
  %1875 = add i32 %1864, %1847
  %1876 = sext i32 %1875 to i64
  %1877 = getelementptr inbounds [4 x i8], ptr %138, i64 %1876
  %1878 = load i32, ptr %1877, align 4, !tbaa !5
  %1879 = icmp eq i32 %1859, %1878
  br i1 %1879, label %1888, label %1880

1880:                                             ; preds = %1873
  %1881 = ptrtoint ptr %1874 to i64
  %1882 = sub i64 %1881, %813
  %1883 = ashr exact i64 %1882, 2
  %1884 = add nsw i64 %1883, 2147483648
  %1885 = icmp ult i64 %1884, 4294967296
  br i1 %1885, label %1886, label %2701

1886:                                             ; preds = %1880
  %1887 = trunc nsw i64 %1883 to i32
  br label %1888

1888:                                             ; preds = %1886, %1873
  %1889 = phi i32 [ %1878, %1886 ], [ %1859, %1873 ]
  %1890 = phi i32 [ %1887, %1886 ], [ %1858, %1873 ]
  store i32 %1890, ptr %1870, align 4, !tbaa !5
  br label %1891

1891:                                             ; preds = %1888, %1868, %1866
  %1892 = phi ptr [ %1874, %1888 ], [ %1861, %1868 ], [ %1861, %1866 ]
  %1893 = phi i32 [ %1889, %1888 ], [ %1859, %1868 ], [ %1859, %1866 ]
  %1894 = phi i32 [ %1890, %1888 ], [ %1858, %1868 ], [ %1858, %1866 ]
  %1895 = getelementptr inbounds nuw i8, ptr %1860, i64 4
  %1896 = icmp ugt ptr %1895, %1892
  br i1 %1896, label %.loopexit257, label %.preheader255, !llvm.loop !67

.loopexit257:                                     ; preds = %1891, %1853
  %1897 = phi ptr [ %1856, %1853 ], [ %1892, %1891 ]
  %1898 = phi i32 [ -1, %1853 ], [ %1894, %1891 ]
  %1899 = icmp ugt ptr %890, %1897
  br i1 %1899, label %.loopexit254, label %.preheader253

.preheader253:                                    ; preds = %.loopexit257, %1921
  %1900 = phi i32 [ %1918, %1921 ], [ %1898, %.loopexit257 ]
  %1901 = phi i32 [ %1917, %1921 ], [ -1, %.loopexit257 ]
  %1902 = phi ptr [ %1922, %1921 ], [ %1897, %.loopexit257 ]
  %1903 = load i32, ptr %1902, align 4, !tbaa !5
  %1904 = sext i32 %1903 to i64
  %1905 = getelementptr inbounds [4 x i8], ptr %138, i64 %1904
  %1906 = load i32, ptr %1905, align 4, !tbaa !5
  %1907 = icmp eq i32 %1901, %1906
  br i1 %1907, label %1916, label %1908

1908:                                             ; preds = %.preheader253
  %1909 = ptrtoint ptr %1902 to i64
  %1910 = sub i64 %1909, %813
  %1911 = ashr exact i64 %1910, 2
  %1912 = add nsw i64 %1911, 2147483648
  %1913 = icmp ult i64 %1912, 4294967296
  br i1 %1913, label %1914, label %2702

1914:                                             ; preds = %1908
  %1915 = trunc nsw i64 %1911 to i32
  br label %1916

1916:                                             ; preds = %1914, %.preheader253
  %1917 = phi i32 [ %1906, %1914 ], [ %1901, %.preheader253 ]
  %1918 = phi i32 [ %1915, %1914 ], [ %1900, %.preheader253 ]
  %1919 = icmp eq i32 %1918, %1906
  br i1 %1919, label %1921, label %1920

1920:                                             ; preds = %1916
  store i32 %1918, ptr %1905, align 4, !tbaa !5
  br label %1921

1921:                                             ; preds = %1920, %1916
  %1922 = getelementptr inbounds i8, ptr %1902, i64 -4
  %1923 = icmp ugt ptr %890, %1922
  br i1 %1923, label %.loopexit254, label %.preheader253, !llvm.loop !68

.loopexit254:                                     ; preds = %1921, %.loopexit257
  %1924 = phi i32 [ %1898, %.loopexit257 ], [ %1918, %1921 ]
  %1925 = getelementptr inbounds nuw i8, ptr %1897, i64 4
  %1926 = icmp ult ptr %1925, %1831
  br i1 %1926, label %.preheader250, label %.loopexit246

.preheader250:                                    ; preds = %.loopexit254, %1961
  %1927 = phi ptr [ %1931, %1961 ], [ %889, %.loopexit254 ]
  %1928 = phi i32 [ %1964, %1961 ], [ %1924, %.loopexit254 ]
  %1929 = phi i32 [ %1963, %1961 ], [ -1, %.loopexit254 ]
  %1930 = phi ptr [ %1962, %1961 ], [ %1831, %.loopexit254 ]
  %1931 = getelementptr inbounds i8, ptr %1927, i64 -4
  %1932 = load i32, ptr %1931, align 4, !tbaa !5
  %1933 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1932, i32 %1847), !nosanitize !10
  %1934 = extractvalue { i32, i1 } %1933, 0, !nosanitize !10
  %1935 = extractvalue { i32, i1 } %1933, 1, !nosanitize !10
  br i1 %1935, label %.loopexit251, label %1936, !prof !11, !nosanitize !10

1936:                                             ; preds = %.preheader250
  %1937 = icmp sgt i32 %1934, -1
  br i1 %1937, label %1938, label %1961

1938:                                             ; preds = %1936
  %1939 = zext nneg i32 %1934 to i64
  %1940 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %1939
  %1941 = load i32, ptr %1940, align 4, !tbaa !5
  %1942 = icmp eq i32 %1941, %1855
  br i1 %1942, label %1943, label %1961

1943:                                             ; preds = %1938
  %1944 = getelementptr inbounds i8, ptr %1930, i64 -4
  store i32 %1934, ptr %1944, align 4, !tbaa !5
  %1945 = add i32 %1934, %1847
  %1946 = sext i32 %1945 to i64
  %1947 = getelementptr inbounds [4 x i8], ptr %138, i64 %1946
  %1948 = load i32, ptr %1947, align 4, !tbaa !5
  %1949 = icmp eq i32 %1929, %1948
  br i1 %1949, label %1958, label %1950

1950:                                             ; preds = %1943
  %1951 = ptrtoint ptr %1944 to i64
  %1952 = sub i64 %1951, %813
  %1953 = ashr exact i64 %1952, 2
  %1954 = add nsw i64 %1953, 2147483648
  %1955 = icmp ult i64 %1954, 4294967296
  br i1 %1955, label %1956, label %2703

1956:                                             ; preds = %1950
  %1957 = trunc nsw i64 %1953 to i32
  br label %1958

1958:                                             ; preds = %1956, %1943
  %1959 = phi i32 [ %1948, %1956 ], [ %1929, %1943 ]
  %1960 = phi i32 [ %1957, %1956 ], [ %1928, %1943 ]
  store i32 %1960, ptr %1940, align 4, !tbaa !5
  br label %1961

1961:                                             ; preds = %1958, %1938, %1936
  %1962 = phi ptr [ %1944, %1958 ], [ %1930, %1938 ], [ %1930, %1936 ]
  %1963 = phi i32 [ %1959, %1958 ], [ %1929, %1938 ], [ %1929, %1936 ]
  %1964 = phi i32 [ %1960, %1958 ], [ %1928, %1938 ], [ %1928, %1936 ]
  %1965 = icmp ult ptr %1925, %1962
  br i1 %1965, label %.preheader250, label %.loopexit246, !llvm.loop !69

1966:                                             ; preds = %1825
  %1967 = ptrtoint ptr %891 to i64
  %1968 = sub i64 %1967, %812
  %1969 = ashr exact i64 %1968, 2
  %1970 = add nsw i64 %1969, 2147483648
  %1971 = icmp ult i64 %1970, 4294967296
  br i1 %1971, label %1972, label %2695

1972:                                             ; preds = %1966
  %1973 = trunc nsw i64 %1969 to i32
  %1974 = ptrtoint ptr %1831 to i64
  %1975 = sub i64 %1974, %813
  %1976 = ashr exact i64 %1975, 2
  %1977 = add nsw i64 %1976, 2147483647
  %1978 = icmp ult i64 %1977, 4294967296
  br i1 %1978, label %1979, label %2696

1979:                                             ; preds = %1972
  %1980 = trunc i64 %1976 to i32
  %1981 = add i32 %1980, -1
  %1982 = getelementptr inbounds i8, ptr %1829, i64 -4
  %1983 = icmp ugt ptr %890, %1982
  br i1 %1983, label %.loopexit249, label %.preheader247

.preheader247:                                    ; preds = %1979, %2006
  %1984 = phi ptr [ %2008, %2006 ], [ %890, %1979 ]
  %1985 = phi ptr [ %2007, %2006 ], [ %1982, %1979 ]
  %1986 = load i32, ptr %1984, align 4, !tbaa !5
  %1987 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1986, i32 %1973), !nosanitize !10
  %1988 = extractvalue { i32, i1 } %1987, 0, !nosanitize !10
  %1989 = extractvalue { i32, i1 } %1987, 1, !nosanitize !10
  br i1 %1989, label %.loopexit245, label %1990, !prof !11, !nosanitize !10

1990:                                             ; preds = %.preheader247
  %1991 = icmp sgt i32 %1988, -1
  br i1 %1991, label %1992, label %2006

1992:                                             ; preds = %1990
  %1993 = zext nneg i32 %1988 to i64
  %1994 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %1993
  %1995 = load i32, ptr %1994, align 4, !tbaa !5
  %1996 = icmp eq i32 %1995, %1981
  br i1 %1996, label %1997, label %2006

1997:                                             ; preds = %1992
  %1998 = getelementptr inbounds nuw i8, ptr %1985, i64 4
  store i32 %1988, ptr %1998, align 4, !tbaa !5
  %1999 = ptrtoint ptr %1998 to i64
  %2000 = sub i64 %1999, %813
  %2001 = ashr exact i64 %2000, 2
  %2002 = add nsw i64 %2001, 2147483648
  %2003 = icmp ult i64 %2002, 4294967296
  br i1 %2003, label %2004, label %2697

2004:                                             ; preds = %1997
  %2005 = trunc nsw i64 %2001 to i32
  store i32 %2005, ptr %1994, align 4, !tbaa !5
  br label %2006

2006:                                             ; preds = %2004, %1992, %1990
  %2007 = phi ptr [ %1998, %2004 ], [ %1985, %1992 ], [ %1985, %1990 ]
  %2008 = getelementptr inbounds nuw i8, ptr %1984, i64 4
  %2009 = icmp ugt ptr %2008, %2007
  br i1 %2009, label %.loopexit249, label %.preheader247, !llvm.loop !70

.loopexit249:                                     ; preds = %2006, %1979
  %2010 = phi ptr [ %1982, %1979 ], [ %2007, %2006 ]
  %2011 = getelementptr inbounds nuw i8, ptr %2010, i64 4
  %2012 = icmp ult ptr %2011, %1831
  br i1 %2012, label %.preheader244, label %.loopexit246

.preheader244:                                    ; preds = %.loopexit249, %2036
  %2013 = phi ptr [ %2015, %2036 ], [ %889, %.loopexit249 ]
  %2014 = phi ptr [ %2037, %2036 ], [ %1831, %.loopexit249 ]
  %2015 = getelementptr inbounds i8, ptr %2013, i64 -4
  %2016 = load i32, ptr %2015, align 4, !tbaa !5
  %2017 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2016, i32 %1973), !nosanitize !10
  %2018 = extractvalue { i32, i1 } %2017, 0, !nosanitize !10
  %2019 = extractvalue { i32, i1 } %2017, 1, !nosanitize !10
  br i1 %2019, label %.loopexit245, label %2020, !prof !11, !nosanitize !10

2020:                                             ; preds = %.preheader244
  %2021 = icmp sgt i32 %2018, -1
  br i1 %2021, label %2022, label %2036

2022:                                             ; preds = %2020
  %2023 = zext nneg i32 %2018 to i64
  %2024 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2023
  %2025 = load i32, ptr %2024, align 4, !tbaa !5
  %2026 = icmp eq i32 %2025, %1981
  br i1 %2026, label %2027, label %2036

2027:                                             ; preds = %2022
  %2028 = getelementptr inbounds i8, ptr %2014, i64 -4
  store i32 %2018, ptr %2028, align 4, !tbaa !5
  %2029 = ptrtoint ptr %2028 to i64
  %2030 = sub i64 %2029, %813
  %2031 = ashr exact i64 %2030, 2
  %2032 = add nsw i64 %2031, 2147483648
  %2033 = icmp ult i64 %2032, 4294967296
  br i1 %2033, label %2034, label %2698

2034:                                             ; preds = %2027
  %2035 = trunc nsw i64 %2031 to i32
  store i32 %2035, ptr %2024, align 4, !tbaa !5
  br label %2036

2036:                                             ; preds = %2034, %2022, %2020
  %2037 = phi ptr [ %2028, %2034 ], [ %2014, %2022 ], [ %2014, %2020 ]
  %2038 = icmp ult ptr %2011, %2037
  br i1 %2038, label %.preheader244, label %.loopexit246, !llvm.loop !71

.loopexit246:                                     ; preds = %1961, %2036, %.loopexit249, %.loopexit254
  %2039 = icmp sgt i32 %1823, -1
  br i1 %2039, label %2040, label %2704

2040:                                             ; preds = %.loopexit246
  %2041 = icmp eq i32 %1823, 0
  br i1 %2041, label %2593, label %2042

2042:                                             ; preds = %2040
  %2043 = add nsw i32 %1823, -1
  %2044 = zext nneg i32 %2043 to i64
  %2045 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2044
  %2046 = load ptr, ptr %2045, align 16, !tbaa !51
  %2047 = getelementptr inbounds nuw i8, ptr %2045, i64 8
  %2048 = load ptr, ptr %2047, align 8, !tbaa !53
  %2049 = getelementptr inbounds nuw i8, ptr %2045, i64 16
  %2050 = load ptr, ptr %2049, align 16, !tbaa !54
  %2051 = getelementptr inbounds nuw i8, ptr %2045, i64 24
  %2052 = load i32, ptr %2051, align 8, !tbaa !55
  %2053 = getelementptr inbounds nuw i8, ptr %2045, i64 28
  %2054 = load i32, ptr %2053, align 4, !tbaa !56
  br label %2610

2055:                                             ; preds = %1820
  %2056 = getelementptr inbounds [4 x i8], ptr %891, i64 %826
  %2057 = ptrtoint ptr %889 to i64
  %2058 = sub i64 %2057, %813
  %2059 = ashr exact i64 %2058, 2
  %2060 = add nsw i64 %2059, 2147483647
  %2061 = icmp ult i64 %2060, 4294967296
  br i1 %2061, label %2062, label %2676

2062:                                             ; preds = %2055
  %2063 = trunc i64 %2059 to i32
  %2064 = add i32 %2063, -1
  call fastcc void @tr_partition(ptr noundef %2056, ptr noundef %890, ptr noundef %890, ptr noundef %889, ptr noundef %7, ptr noundef %8, i32 noundef %2064)
  %2065 = load ptr, ptr %7, align 8, !tbaa !46
  %2066 = icmp ult ptr %2065, %889
  br i1 %2066, label %2067, label %.loopexit243

2067:                                             ; preds = %2062
  %2068 = ptrtoint ptr %2065 to i64
  %2069 = sub i64 %2068, %813
  %2070 = ashr exact i64 %2069, 2
  %2071 = add nsw i64 %2070, 2147483647
  %2072 = icmp ult i64 %2071, 4294967296
  br i1 %2072, label %2073, label %2677

2073:                                             ; preds = %2067
  %2074 = trunc i64 %2070 to i32
  %2075 = add i32 %2074, -1
  %2076 = icmp ult ptr %890, %2065
  br i1 %2076, label %.preheader242, label %.loopexit243

.preheader242:                                    ; preds = %2073, %.preheader242
  %2077 = phi ptr [ %2081, %.preheader242 ], [ %890, %2073 ]
  %2078 = load i32, ptr %2077, align 4, !tbaa !5
  %2079 = sext i32 %2078 to i64
  %2080 = getelementptr inbounds [4 x i8], ptr %138, i64 %2079
  store i32 %2075, ptr %2080, align 4, !tbaa !5
  %2081 = getelementptr inbounds nuw i8, ptr %2077, i64 4
  %2082 = icmp ult ptr %2081, %2065
  br i1 %2082, label %.preheader242, label %.loopexit243, !llvm.loop !72

.loopexit243:                                     ; preds = %.preheader242, %2073, %2062
  %2083 = load ptr, ptr %8, align 8, !tbaa !46
  %2084 = icmp ult ptr %2083, %889
  %2085 = ptrtoint ptr %2083 to i64
  br i1 %2084, label %2086, label %.loopexit241

2086:                                             ; preds = %.loopexit243
  %2087 = sub i64 %2085, %813
  %2088 = ashr exact i64 %2087, 2
  %2089 = add nsw i64 %2088, 2147483647
  %2090 = icmp ult i64 %2089, 4294967296
  br i1 %2090, label %2091, label %2678

2091:                                             ; preds = %2086
  %2092 = trunc i64 %2088 to i32
  %2093 = add i32 %2092, -1
  %2094 = icmp ult ptr %2065, %2083
  br i1 %2094, label %.preheader240, label %.loopexit241

.preheader240:                                    ; preds = %2091, %.preheader240
  %2095 = phi ptr [ %2099, %.preheader240 ], [ %2065, %2091 ]
  %2096 = load i32, ptr %2095, align 4, !tbaa !5
  %2097 = sext i32 %2096 to i64
  %2098 = getelementptr inbounds [4 x i8], ptr %138, i64 %2097
  store i32 %2093, ptr %2098, align 4, !tbaa !5
  %2099 = getelementptr inbounds nuw i8, ptr %2095, i64 4
  %2100 = icmp ult ptr %2099, %2083
  br i1 %2100, label %.preheader240, label %.loopexit241, !llvm.loop !73

.loopexit241:                                     ; preds = %.preheader240, %2091, %.loopexit243
  %2101 = ptrtoint ptr %2065 to i64
  %2102 = sub i64 %2085, %2101
  %2103 = icmp sgt i64 %2102, 4
  br i1 %2103, label %2104, label %2121

2104:                                             ; preds = %.loopexit241
  %2105 = icmp slt i32 %893, 64
  br i1 %2105, label %2106, label %2679

2106:                                             ; preds = %2104
  %2107 = sext i32 %893 to i64
  %2108 = getelementptr inbounds [32 x i8], ptr %6, i64 %2107
  store ptr null, ptr %2108, align 16, !tbaa !51
  %2109 = getelementptr inbounds nuw i8, ptr %2108, i64 8
  store ptr %2065, ptr %2109, align 8, !tbaa !53
  %2110 = getelementptr inbounds nuw i8, ptr %2108, i64 16
  store ptr %2083, ptr %2110, align 16, !tbaa !54
  %2111 = getelementptr inbounds nuw i8, ptr %2108, i64 24
  store i32 0, ptr %2111, align 8, !tbaa !55
  %2112 = getelementptr inbounds nuw i8, ptr %2108, i64 28
  store i32 0, ptr %2112, align 4, !tbaa !56
  %2113 = icmp eq i32 %893, 63
  br i1 %2113, label %2680, label %2114

2114:                                             ; preds = %2106
  %2115 = getelementptr i8, ptr %2108, i64 32
  store ptr %2056, ptr %2115, align 16, !tbaa !51
  %2116 = getelementptr i8, ptr %2108, i64 40
  store ptr %890, ptr %2116, align 8, !tbaa !53
  %2117 = getelementptr i8, ptr %2108, i64 48
  store ptr %889, ptr %2117, align 16, !tbaa !54
  %2118 = getelementptr i8, ptr %2108, i64 56
  store i32 -2, ptr %2118, align 8, !tbaa !55
  %2119 = add nsw i32 %893, 2
  %2120 = getelementptr i8, ptr %2108, i64 60
  store i32 %894, ptr %2120, align 4, !tbaa !56
  br label %2121

2121:                                             ; preds = %2114, %.loopexit241
  %2122 = phi i32 [ %2119, %2114 ], [ %893, %.loopexit241 ]
  %2123 = phi i32 [ %893, %2114 ], [ %894, %.loopexit241 ]
  %2124 = ptrtoint ptr %890 to i64
  %2125 = sub i64 %2101, %2124
  %2126 = ashr exact i64 %2125, 2
  %2127 = sub i64 %2057, %2085
  %2128 = ashr exact i64 %2127, 2
  %2129 = icmp sgt i64 %2126, %2128
  br i1 %2129, label %2257, label %2130

2130:                                             ; preds = %2121
  %2131 = icmp sgt i64 %2126, 1
  br i1 %2131, label %2183, label %2132

2132:                                             ; preds = %2130
  %2133 = icmp sgt i64 %2128, 1
  br i1 %2133, label %2151, label %2134

2134:                                             ; preds = %2132
  %2135 = icmp sgt i32 %2122, -1
  br i1 %2135, label %2136, label %2687

2136:                                             ; preds = %2134
  %2137 = icmp eq i32 %2122, 0
  br i1 %2137, label %2593, label %2138

2138:                                             ; preds = %2136
  %2139 = add nsw i32 %2122, -1
  %2140 = zext nneg i32 %2139 to i64
  %2141 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2140
  %2142 = load ptr, ptr %2141, align 16, !tbaa !51
  %2143 = getelementptr inbounds nuw i8, ptr %2141, i64 8
  %2144 = load ptr, ptr %2143, align 8, !tbaa !53
  %2145 = getelementptr inbounds nuw i8, ptr %2141, i64 16
  %2146 = load ptr, ptr %2145, align 16, !tbaa !54
  %2147 = getelementptr inbounds nuw i8, ptr %2141, i64 24
  %2148 = load i32, ptr %2147, align 8, !tbaa !55
  %2149 = getelementptr inbounds nuw i8, ptr %2141, i64 28
  %2150 = load i32, ptr %2149, align 4, !tbaa !56
  br label %2610

2151:                                             ; preds = %2132
  %2152 = icmp samesign ult i64 %2128, 2147483648
  br i1 %2152, label %2153, label %2685

2153:                                             ; preds = %2151
  %2154 = icmp samesign ult i64 %2128, 65536
  br i1 %2154, label %2171, label %2155

2155:                                             ; preds = %2153
  %2156 = icmp samesign ult i64 %2128, 16777216
  br i1 %2156, label %2164, label %2157

2157:                                             ; preds = %2155
  %2158 = lshr i64 %2128, 24
  %2159 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2158
  %2160 = load i32, ptr %2159, align 4, !tbaa !5
  %2161 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2160, i32 24), !nosanitize !10
  %2162 = extractvalue { i32, i1 } %2161, 0, !nosanitize !10
  %2163 = extractvalue { i32, i1 } %2161, 1, !nosanitize !10
  br i1 %2163, label %2686, label %2610, !prof !11, !nosanitize !10

2164:                                             ; preds = %2155
  %2165 = lshr i64 %2128, 16
  %2166 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2165
  %2167 = load i32, ptr %2166, align 4, !tbaa !5
  %2168 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2167, i32 16), !nosanitize !10
  %2169 = extractvalue { i32, i1 } %2168, 0, !nosanitize !10
  %2170 = extractvalue { i32, i1 } %2168, 1, !nosanitize !10
  br i1 %2170, label %2686, label %2610, !prof !11, !nosanitize !10

2171:                                             ; preds = %2153
  %2172 = icmp samesign ult i64 %2128, 256
  br i1 %2172, label %2180, label %2173

2173:                                             ; preds = %2171
  %2174 = lshr i64 %2128, 8
  %2175 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2174
  %2176 = load i32, ptr %2175, align 4, !tbaa !5
  %2177 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2176, i32 8), !nosanitize !10
  %2178 = extractvalue { i32, i1 } %2177, 0, !nosanitize !10
  %2179 = extractvalue { i32, i1 } %2177, 1, !nosanitize !10
  br i1 %2179, label %2686, label %2610, !prof !11, !nosanitize !10

2180:                                             ; preds = %2171
  %2181 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2127
  %2182 = load i32, ptr %2181, align 4, !tbaa !5
  br label %2610

2183:                                             ; preds = %2130
  %2184 = icmp slt i32 %2122, 64
  br i1 %2184, label %2185, label %2681

2185:                                             ; preds = %2183
  %2186 = sext i32 %2122 to i64
  %2187 = getelementptr inbounds [32 x i8], ptr %6, i64 %2186
  store ptr %891, ptr %2187, align 16, !tbaa !51
  %2188 = getelementptr inbounds nuw i8, ptr %2187, i64 8
  store ptr %2083, ptr %2188, align 8, !tbaa !53
  %2189 = getelementptr inbounds nuw i8, ptr %2187, i64 16
  store ptr %889, ptr %2189, align 16, !tbaa !54
  %2190 = add nsw i64 %2128, 2147483648
  %2191 = icmp ult i64 %2190, 4294967296
  br i1 %2191, label %2192, label %2682

2192:                                             ; preds = %2185
  %2193 = icmp ult i64 %2128, 65536
  br i1 %2193, label %2211, label %2194

2194:                                             ; preds = %2192
  %2195 = icmp ult i64 %2128, 16777216
  br i1 %2195, label %2204, label %2196

2196:                                             ; preds = %2194
  %2197 = lshr i64 %2128, 24
  %2198 = and i64 %2197, 255
  %2199 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2198
  %2200 = load i32, ptr %2199, align 4, !tbaa !5
  %2201 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2200, i32 24), !nosanitize !10
  %2202 = extractvalue { i32, i1 } %2201, 0, !nosanitize !10
  %2203 = extractvalue { i32, i1 } %2201, 1, !nosanitize !10
  br i1 %2203, label %2683, label %2223, !prof !11, !nosanitize !10

2204:                                             ; preds = %2194
  %2205 = lshr i64 %2128, 16
  %2206 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2205
  %2207 = load i32, ptr %2206, align 4, !tbaa !5
  %2208 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2207, i32 16), !nosanitize !10
  %2209 = extractvalue { i32, i1 } %2208, 0, !nosanitize !10
  %2210 = extractvalue { i32, i1 } %2208, 1, !nosanitize !10
  br i1 %2210, label %2683, label %2223, !prof !11, !nosanitize !10

2211:                                             ; preds = %2192
  %2212 = icmp samesign ult i64 %2128, 256
  br i1 %2212, label %2220, label %2213

2213:                                             ; preds = %2211
  %2214 = lshr i64 %2128, 8
  %2215 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2214
  %2216 = load i32, ptr %2215, align 4, !tbaa !5
  %2217 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2216, i32 8), !nosanitize !10
  %2218 = extractvalue { i32, i1 } %2217, 0, !nosanitize !10
  %2219 = extractvalue { i32, i1 } %2217, 1, !nosanitize !10
  br i1 %2219, label %2683, label %2223, !prof !11, !nosanitize !10

2220:                                             ; preds = %2211
  %2221 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2127
  %2222 = load i32, ptr %2221, align 4, !tbaa !5
  br label %2223

2223:                                             ; preds = %2220, %2213, %2204, %2196
  %2224 = phi i32 [ %2202, %2196 ], [ %2209, %2204 ], [ %2218, %2213 ], [ %2222, %2220 ]
  %2225 = getelementptr inbounds nuw i8, ptr %2187, i64 24
  store i32 %2224, ptr %2225, align 8, !tbaa !55
  %2226 = add nsw i32 %2122, 1
  %2227 = getelementptr inbounds nuw i8, ptr %2187, i64 28
  store i32 %2123, ptr %2227, align 4, !tbaa !56
  %2228 = icmp samesign ult i64 %2126, 65536
  br i1 %2228, label %2245, label %2229

2229:                                             ; preds = %2223
  %2230 = icmp samesign ult i64 %2126, 16777216
  br i1 %2230, label %2238, label %2231

2231:                                             ; preds = %2229
  %2232 = lshr i64 %2126, 24
  %2233 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2232
  %2234 = load i32, ptr %2233, align 4, !tbaa !5
  %2235 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2234, i32 24), !nosanitize !10
  %2236 = extractvalue { i32, i1 } %2235, 0, !nosanitize !10
  %2237 = extractvalue { i32, i1 } %2235, 1, !nosanitize !10
  br i1 %2237, label %2684, label %2610, !prof !11, !nosanitize !10

2238:                                             ; preds = %2229
  %2239 = lshr i64 %2126, 16
  %2240 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2239
  %2241 = load i32, ptr %2240, align 4, !tbaa !5
  %2242 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2241, i32 16), !nosanitize !10
  %2243 = extractvalue { i32, i1 } %2242, 0, !nosanitize !10
  %2244 = extractvalue { i32, i1 } %2242, 1, !nosanitize !10
  br i1 %2244, label %2684, label %2610, !prof !11, !nosanitize !10

2245:                                             ; preds = %2223
  %2246 = icmp samesign ult i64 %2126, 256
  br i1 %2246, label %2254, label %2247

2247:                                             ; preds = %2245
  %2248 = lshr i64 %2126, 8
  %2249 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2248
  %2250 = load i32, ptr %2249, align 4, !tbaa !5
  %2251 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2250, i32 8), !nosanitize !10
  %2252 = extractvalue { i32, i1 } %2251, 0, !nosanitize !10
  %2253 = extractvalue { i32, i1 } %2251, 1, !nosanitize !10
  br i1 %2253, label %2684, label %2610, !prof !11, !nosanitize !10

2254:                                             ; preds = %2245
  %2255 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2125
  %2256 = load i32, ptr %2255, align 4, !tbaa !5
  br label %2610

2257:                                             ; preds = %2121
  %2258 = icmp sgt i64 %2128, 1
  br i1 %2258, label %2310, label %2259

2259:                                             ; preds = %2257
  %2260 = icmp sgt i64 %2126, 1
  br i1 %2260, label %2278, label %2261

2261:                                             ; preds = %2259
  %2262 = icmp sgt i32 %2122, -1
  br i1 %2262, label %2263, label %2694

2263:                                             ; preds = %2261
  %2264 = icmp eq i32 %2122, 0
  br i1 %2264, label %2593, label %2265

2265:                                             ; preds = %2263
  %2266 = add nsw i32 %2122, -1
  %2267 = zext nneg i32 %2266 to i64
  %2268 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2267
  %2269 = load ptr, ptr %2268, align 16, !tbaa !51
  %2270 = getelementptr inbounds nuw i8, ptr %2268, i64 8
  %2271 = load ptr, ptr %2270, align 8, !tbaa !53
  %2272 = getelementptr inbounds nuw i8, ptr %2268, i64 16
  %2273 = load ptr, ptr %2272, align 16, !tbaa !54
  %2274 = getelementptr inbounds nuw i8, ptr %2268, i64 24
  %2275 = load i32, ptr %2274, align 8, !tbaa !55
  %2276 = getelementptr inbounds nuw i8, ptr %2268, i64 28
  %2277 = load i32, ptr %2276, align 4, !tbaa !56
  br label %2610

2278:                                             ; preds = %2259
  %2279 = icmp samesign ult i64 %2126, 2147483648
  br i1 %2279, label %2280, label %2692

2280:                                             ; preds = %2278
  %2281 = icmp samesign ult i64 %2126, 65536
  br i1 %2281, label %2298, label %2282

2282:                                             ; preds = %2280
  %2283 = icmp samesign ult i64 %2126, 16777216
  br i1 %2283, label %2291, label %2284

2284:                                             ; preds = %2282
  %2285 = lshr i64 %2126, 24
  %2286 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2285
  %2287 = load i32, ptr %2286, align 4, !tbaa !5
  %2288 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2287, i32 24), !nosanitize !10
  %2289 = extractvalue { i32, i1 } %2288, 0, !nosanitize !10
  %2290 = extractvalue { i32, i1 } %2288, 1, !nosanitize !10
  br i1 %2290, label %2693, label %2610, !prof !11, !nosanitize !10

2291:                                             ; preds = %2282
  %2292 = lshr i64 %2126, 16
  %2293 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2292
  %2294 = load i32, ptr %2293, align 4, !tbaa !5
  %2295 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2294, i32 16), !nosanitize !10
  %2296 = extractvalue { i32, i1 } %2295, 0, !nosanitize !10
  %2297 = extractvalue { i32, i1 } %2295, 1, !nosanitize !10
  br i1 %2297, label %2693, label %2610, !prof !11, !nosanitize !10

2298:                                             ; preds = %2280
  %2299 = icmp samesign ult i64 %2126, 256
  br i1 %2299, label %2307, label %2300

2300:                                             ; preds = %2298
  %2301 = lshr i64 %2126, 8
  %2302 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2301
  %2303 = load i32, ptr %2302, align 4, !tbaa !5
  %2304 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2303, i32 8), !nosanitize !10
  %2305 = extractvalue { i32, i1 } %2304, 0, !nosanitize !10
  %2306 = extractvalue { i32, i1 } %2304, 1, !nosanitize !10
  br i1 %2306, label %2693, label %2610, !prof !11, !nosanitize !10

2307:                                             ; preds = %2298
  %2308 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2125
  %2309 = load i32, ptr %2308, align 4, !tbaa !5
  br label %2610

2310:                                             ; preds = %2257
  %2311 = icmp slt i32 %2122, 64
  br i1 %2311, label %2312, label %2688

2312:                                             ; preds = %2310
  %2313 = sext i32 %2122 to i64
  %2314 = getelementptr inbounds [32 x i8], ptr %6, i64 %2313
  store ptr %891, ptr %2314, align 16, !tbaa !51
  %2315 = getelementptr inbounds nuw i8, ptr %2314, i64 8
  store ptr %890, ptr %2315, align 8, !tbaa !53
  %2316 = getelementptr inbounds nuw i8, ptr %2314, i64 16
  store ptr %2065, ptr %2316, align 16, !tbaa !54
  %2317 = add nsw i64 %2126, 2147483648
  %2318 = icmp ult i64 %2317, 4294967296
  br i1 %2318, label %2319, label %2689

2319:                                             ; preds = %2312
  %2320 = icmp ult i64 %2126, 65536
  br i1 %2320, label %2338, label %2321

2321:                                             ; preds = %2319
  %2322 = icmp ult i64 %2126, 16777216
  br i1 %2322, label %2331, label %2323

2323:                                             ; preds = %2321
  %2324 = lshr i64 %2126, 24
  %2325 = and i64 %2324, 255
  %2326 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2325
  %2327 = load i32, ptr %2326, align 4, !tbaa !5
  %2328 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2327, i32 24), !nosanitize !10
  %2329 = extractvalue { i32, i1 } %2328, 0, !nosanitize !10
  %2330 = extractvalue { i32, i1 } %2328, 1, !nosanitize !10
  br i1 %2330, label %2690, label %2350, !prof !11, !nosanitize !10

2331:                                             ; preds = %2321
  %2332 = lshr i64 %2126, 16
  %2333 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2332
  %2334 = load i32, ptr %2333, align 4, !tbaa !5
  %2335 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2334, i32 16), !nosanitize !10
  %2336 = extractvalue { i32, i1 } %2335, 0, !nosanitize !10
  %2337 = extractvalue { i32, i1 } %2335, 1, !nosanitize !10
  br i1 %2337, label %2690, label %2350, !prof !11, !nosanitize !10

2338:                                             ; preds = %2319
  %2339 = icmp samesign ult i64 %2126, 256
  br i1 %2339, label %2347, label %2340

2340:                                             ; preds = %2338
  %2341 = lshr i64 %2126, 8
  %2342 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2341
  %2343 = load i32, ptr %2342, align 4, !tbaa !5
  %2344 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2343, i32 8), !nosanitize !10
  %2345 = extractvalue { i32, i1 } %2344, 0, !nosanitize !10
  %2346 = extractvalue { i32, i1 } %2344, 1, !nosanitize !10
  br i1 %2346, label %2690, label %2350, !prof !11, !nosanitize !10

2347:                                             ; preds = %2338
  %2348 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2125
  %2349 = load i32, ptr %2348, align 4, !tbaa !5
  br label %2350

2350:                                             ; preds = %2347, %2340, %2331, %2323
  %2351 = phi i32 [ %2329, %2323 ], [ %2336, %2331 ], [ %2345, %2340 ], [ %2349, %2347 ]
  %2352 = getelementptr inbounds nuw i8, ptr %2314, i64 24
  store i32 %2351, ptr %2352, align 8, !tbaa !55
  %2353 = add nsw i32 %2122, 1
  %2354 = getelementptr inbounds nuw i8, ptr %2314, i64 28
  store i32 %2123, ptr %2354, align 4, !tbaa !56
  %2355 = icmp samesign ult i64 %2128, 65536
  br i1 %2355, label %2372, label %2356

2356:                                             ; preds = %2350
  %2357 = icmp samesign ult i64 %2128, 16777216
  br i1 %2357, label %2365, label %2358

2358:                                             ; preds = %2356
  %2359 = lshr i64 %2128, 24
  %2360 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2359
  %2361 = load i32, ptr %2360, align 4, !tbaa !5
  %2362 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2361, i32 24), !nosanitize !10
  %2363 = extractvalue { i32, i1 } %2362, 0, !nosanitize !10
  %2364 = extractvalue { i32, i1 } %2362, 1, !nosanitize !10
  br i1 %2364, label %2691, label %2610, !prof !11, !nosanitize !10

2365:                                             ; preds = %2356
  %2366 = lshr i64 %2128, 16
  %2367 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2366
  %2368 = load i32, ptr %2367, align 4, !tbaa !5
  %2369 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2368, i32 16), !nosanitize !10
  %2370 = extractvalue { i32, i1 } %2369, 0, !nosanitize !10
  %2371 = extractvalue { i32, i1 } %2369, 1, !nosanitize !10
  br i1 %2371, label %2691, label %2610, !prof !11, !nosanitize !10

2372:                                             ; preds = %2350
  %2373 = icmp samesign ult i64 %2128, 256
  br i1 %2373, label %2381, label %2374

2374:                                             ; preds = %2372
  %2375 = lshr i64 %2128, 8
  %2376 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2375
  %2377 = load i32, ptr %2376, align 4, !tbaa !5
  %2378 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2377, i32 8), !nosanitize !10
  %2379 = extractvalue { i32, i1 } %2378, 0, !nosanitize !10
  %2380 = extractvalue { i32, i1 } %2378, 1, !nosanitize !10
  br i1 %2380, label %2691, label %2610, !prof !11, !nosanitize !10

2381:                                             ; preds = %2372
  %2382 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2127
  %2383 = load i32, ptr %2382, align 4, !tbaa !5
  br label %2610

2384:                                             ; preds = %1820, %.loopexit260
  %2385 = load i32, ptr %890, align 4, !tbaa !5
  %2386 = icmp sgt i32 %2385, -1
  br i1 %2386, label %.preheader239, label %2404

.preheader239:                                    ; preds = %2384, %2400
  %2387 = phi i32 [ %2401, %2400 ], [ %2385, %2384 ]
  %2388 = phi ptr [ %2398, %2400 ], [ %890, %2384 ]
  %2389 = ptrtoint ptr %2388 to i64
  %2390 = sub i64 %2389, %813
  %2391 = ashr exact i64 %2390, 2
  %2392 = add nsw i64 %2391, 2147483648
  %2393 = icmp ult i64 %2392, 4294967296
  br i1 %2393, label %2394, label %2705

2394:                                             ; preds = %.preheader239
  %2395 = trunc nsw i64 %2391 to i32
  %2396 = zext nneg i32 %2387 to i64
  %2397 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2396
  store i32 %2395, ptr %2397, align 4, !tbaa !5
  %2398 = getelementptr inbounds nuw i8, ptr %2388, i64 4
  %2399 = icmp ult ptr %2398, %889
  br i1 %2399, label %2400, label %2403

2400:                                             ; preds = %2394
  %2401 = load i32, ptr %2398, align 4, !tbaa !5
  %2402 = icmp sgt i32 %2401, -1
  br i1 %2402, label %.preheader239, label %2403, !llvm.loop !74

2403:                                             ; preds = %2400, %2394
  store ptr %2398, ptr %7, align 8
  br label %2404

2404:                                             ; preds = %2403, %2384
  %2405 = phi ptr [ %890, %2384 ], [ %2398, %2403 ]
  %2406 = icmp ult ptr %2405, %889
  br i1 %2406, label %2424, label %2407

2407:                                             ; preds = %2404
  %2408 = icmp sgt i32 %893, -1
  br i1 %2408, label %2409, label %2715

2409:                                             ; preds = %2407
  %2410 = icmp eq i32 %893, 0
  br i1 %2410, label %2593, label %2411

2411:                                             ; preds = %2409
  %2412 = add nsw i32 %893, -1
  %2413 = zext nneg i32 %2412 to i64
  %2414 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2413
  %2415 = load ptr, ptr %2414, align 16, !tbaa !51
  %2416 = getelementptr inbounds nuw i8, ptr %2414, i64 8
  %2417 = load ptr, ptr %2416, align 8, !tbaa !53
  %2418 = getelementptr inbounds nuw i8, ptr %2414, i64 16
  %2419 = load ptr, ptr %2418, align 16, !tbaa !54
  %2420 = getelementptr inbounds nuw i8, ptr %2414, i64 24
  %2421 = load i32, ptr %2420, align 8, !tbaa !55
  %2422 = getelementptr inbounds nuw i8, ptr %2414, i64 28
  %2423 = load i32, ptr %2422, align 4, !tbaa !56
  br label %2610

2424:                                             ; preds = %2404
  %2425 = load i32, ptr %2405, align 4, !tbaa !5
  br label %2426

2426:                                             ; preds = %2426, %2424
  %2427 = phi i32 [ %2431, %2426 ], [ %2425, %2424 ]
  %2428 = phi ptr [ %2430, %2426 ], [ %2405, %2424 ]
  %2429 = xor i32 %2427, -1
  store i32 %2429, ptr %2428, align 4, !tbaa !5
  %2430 = getelementptr inbounds nuw i8, ptr %2428, i64 4
  %2431 = load i32, ptr %2430, align 4, !tbaa !5
  %2432 = icmp slt i32 %2431, 0
  br i1 %2432, label %2426, label %2433, !llvm.loop !75

2433:                                             ; preds = %2426
  %2434 = zext nneg i32 %2431 to i64
  %2435 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2434
  %2436 = load i32, ptr %2435, align 4, !tbaa !5
  %2437 = getelementptr inbounds nuw [4 x i8], ptr %891, i64 %2434
  %2438 = load i32, ptr %2437, align 4, !tbaa !5
  %2439 = icmp eq i32 %2436, %2438
  br i1 %2439, label %2483, label %2440

2440:                                             ; preds = %2433
  %2441 = ptrtoint ptr %2430 to i64
  %2442 = ptrtoint ptr %2405 to i64
  %2443 = sub i64 %2441, %2442
  %2444 = ashr exact i64 %2443, 2
  %2445 = add nsw i64 %2444, 2147483649
  %2446 = icmp ult i64 %2445, 4294967296
  br i1 %2446, label %2447, label %2706

2447:                                             ; preds = %2440
  %2448 = trunc i64 %2444 to i32
  %2449 = add i32 %2448, 1
  %2450 = icmp ult i32 %2449, 65536
  br i1 %2450, label %2469, label %2451

2451:                                             ; preds = %2447
  %2452 = icmp ult i32 %2449, 16777216
  br i1 %2452, label %2461, label %2453

2453:                                             ; preds = %2451
  %2454 = lshr i32 %2449, 24
  %2455 = zext nneg i32 %2454 to i64
  %2456 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2455
  %2457 = load i32, ptr %2456, align 4, !tbaa !5
  %2458 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2457, i32 24), !nosanitize !10
  %2459 = extractvalue { i32, i1 } %2458, 0, !nosanitize !10
  %2460 = extractvalue { i32, i1 } %2458, 1, !nosanitize !10
  br i1 %2460, label %2707, label %2483, !prof !11, !nosanitize !10

2461:                                             ; preds = %2451
  %2462 = lshr i32 %2449, 16
  %2463 = zext nneg i32 %2462 to i64
  %2464 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2463
  %2465 = load i32, ptr %2464, align 4, !tbaa !5
  %2466 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2465, i32 16), !nosanitize !10
  %2467 = extractvalue { i32, i1 } %2466, 0, !nosanitize !10
  %2468 = extractvalue { i32, i1 } %2466, 1, !nosanitize !10
  br i1 %2468, label %2707, label %2483, !prof !11, !nosanitize !10

2469:                                             ; preds = %2447
  %2470 = icmp samesign ult i32 %2449, 256
  br i1 %2470, label %2479, label %2471

2471:                                             ; preds = %2469
  %2472 = lshr i32 %2449, 8
  %2473 = zext nneg i32 %2472 to i64
  %2474 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2473
  %2475 = load i32, ptr %2474, align 4, !tbaa !5
  %2476 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2475, i32 8), !nosanitize !10
  %2477 = extractvalue { i32, i1 } %2476, 0, !nosanitize !10
  %2478 = extractvalue { i32, i1 } %2476, 1, !nosanitize !10
  br i1 %2478, label %2707, label %2483, !prof !11, !nosanitize !10

2479:                                             ; preds = %2469
  %2480 = zext nneg i32 %2449 to i64
  %2481 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2480
  %2482 = load i32, ptr %2481, align 4, !tbaa !5
  br label %2483

2483:                                             ; preds = %2479, %2471, %2461, %2453, %2433
  %2484 = phi i32 [ -1, %2433 ], [ %2459, %2453 ], [ %2467, %2461 ], [ %2477, %2471 ], [ %2482, %2479 ]
  %2485 = getelementptr inbounds nuw i8, ptr %2428, i64 8
  store ptr %2485, ptr %7, align 8, !tbaa !46
  %2486 = icmp ult ptr %2485, %889
  %2487 = ptrtoint ptr %2485 to i64
  br i1 %2486, label %2488, label %2504

2488:                                             ; preds = %2483
  %2489 = sub i64 %2487, %813
  %2490 = ashr exact i64 %2489, 2
  %2491 = add nsw i64 %2490, 2147483647
  %2492 = icmp ult i64 %2491, 4294967296
  br i1 %2492, label %2493, label %2708

2493:                                             ; preds = %2488
  %2494 = trunc i64 %2490 to i32
  %2495 = add i32 %2494, -1
  %2496 = icmp ult ptr %2405, %2485
  br i1 %2496, label %.preheader237, label %.loopexit238

.preheader237:                                    ; preds = %2493, %.preheader237
  %2497 = phi ptr [ %2501, %.preheader237 ], [ %2405, %2493 ]
  %2498 = load i32, ptr %2497, align 4, !tbaa !5
  %2499 = sext i32 %2498 to i64
  %2500 = getelementptr inbounds [4 x i8], ptr %138, i64 %2499
  store i32 %2495, ptr %2500, align 4, !tbaa !5
  %2501 = getelementptr inbounds nuw i8, ptr %2497, i64 4
  %2502 = icmp ult ptr %2501, %2485
  br i1 %2502, label %.preheader237, label %.loopexit238, !llvm.loop !76

.loopexit238:                                     ; preds = %.preheader237, %2493
  %2503 = phi ptr [ %2405, %2493 ], [ %2501, %.preheader237 ]
  store ptr %2503, ptr %8, align 8
  br label %2504

2504:                                             ; preds = %.loopexit238, %2483
  %2505 = ptrtoint ptr %2405 to i64
  %2506 = sub i64 %2487, %2505
  %2507 = ashr exact i64 %2506, 2
  %2508 = add nsw i64 %2507, 2147483648
  %2509 = icmp ult i64 %2508, 4294967296
  br i1 %2509, label %2510, label %2709

2510:                                             ; preds = %2504
  %2511 = trunc nsw i64 %2507 to i32
  %2512 = icmp slt i32 %886, %2511
  br i1 %2512, label %2516, label %2513

2513:                                             ; preds = %2510
  %2514 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %886, i32 %2511), !nosanitize !10
  %2515 = extractvalue { i32, i1 } %2514, 1, !nosanitize !10
  br i1 %2515, label %2710, label %2530, !prof !11, !nosanitize !10

2516:                                             ; preds = %2510
  %2517 = icmp eq i32 %887, 0
  br i1 %2517, label %2563, label %2518

2518:                                             ; preds = %2516
  %2519 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 range(i32 1, -2147483648) %78, i32 %2511), !nosanitize !10
  %2520 = extractvalue { i32, i1 } %2519, 1, !nosanitize !10
  br i1 %2520, label %2710, label %2521, !prof !11, !nosanitize !10

2521:                                             ; preds = %2518
  %2522 = extractvalue { i32, i1 } %2519, 0, !nosanitize !10
  %2523 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %886, i32 %2522), !nosanitize !10
  %2524 = extractvalue { i32, i1 } %2523, 1, !nosanitize !10
  br i1 %2524, label %2711, label %2525, !prof !11, !nosanitize !10

2525:                                             ; preds = %2521
  %2526 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %887, i32 -1)
  %2527 = extractvalue { i32, i1 } %2526, 1, !nosanitize !10
  br i1 %2527, label %2710, label %2528, !prof !11, !nosanitize !10

2528:                                             ; preds = %2525
  %2529 = extractvalue { i32, i1 } %2526, 0, !nosanitize !10
  br label %2530

2530:                                             ; preds = %2528, %2513
  %2531 = phi { i32, i1 } [ %2523, %2528 ], [ %2514, %2513 ]
  %2532 = phi i32 [ %2529, %2528 ], [ %887, %2513 ]
  %2533 = extractvalue { i32, i1 } %2531, 0
  %2534 = ptrtoint ptr %889 to i64
  %2535 = sub i64 %2534, %2487
  %2536 = icmp sgt i64 %2506, %2535
  br i1 %2536, label %2548, label %2537

2537:                                             ; preds = %2530
  %2538 = icmp slt i32 %893, 64
  br i1 %2538, label %2539, label %2712

2539:                                             ; preds = %2537
  %2540 = sext i32 %893 to i64
  %2541 = getelementptr inbounds [32 x i8], ptr %6, i64 %2540
  store ptr %891, ptr %2541, align 16, !tbaa !51
  %2542 = getelementptr inbounds nuw i8, ptr %2541, i64 8
  store ptr %2485, ptr %2542, align 8, !tbaa !53
  %2543 = getelementptr inbounds nuw i8, ptr %2541, i64 16
  store ptr %889, ptr %2543, align 16, !tbaa !54
  %2544 = getelementptr inbounds nuw i8, ptr %2541, i64 24
  store i32 -3, ptr %2544, align 8, !tbaa !55
  %2545 = add nsw i32 %893, 1
  %2546 = getelementptr inbounds nuw i8, ptr %2541, i64 28
  store i32 %894, ptr %2546, align 4, !tbaa !56
  %2547 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  br label %2610

2548:                                             ; preds = %2530
  %2549 = icmp sgt i64 %2535, 4
  br i1 %2549, label %2552, label %2550

2550:                                             ; preds = %2548
  %2551 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  br label %2610

2552:                                             ; preds = %2548
  %2553 = icmp slt i32 %893, 64
  br i1 %2553, label %2554, label %2713

2554:                                             ; preds = %2552
  %2555 = getelementptr inbounds [4 x i8], ptr %891, i64 %825
  %2556 = sext i32 %893 to i64
  %2557 = getelementptr inbounds [32 x i8], ptr %6, i64 %2556
  store ptr %2555, ptr %2557, align 16, !tbaa !51
  %2558 = getelementptr inbounds nuw i8, ptr %2557, i64 8
  store ptr %2405, ptr %2558, align 8, !tbaa !53
  %2559 = getelementptr inbounds nuw i8, ptr %2557, i64 16
  store ptr %2485, ptr %2559, align 16, !tbaa !54
  %2560 = getelementptr inbounds nuw i8, ptr %2557, i64 24
  store i32 %2484, ptr %2560, align 8, !tbaa !55
  %2561 = add nsw i32 %893, 1
  %2562 = getelementptr inbounds nuw i8, ptr %2557, i64 28
  store i32 %894, ptr %2562, align 4, !tbaa !56
  br label %2610

2563:                                             ; preds = %2516
  %2564 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %885, i32 %2511), !nosanitize !10
  %2565 = extractvalue { i32, i1 } %2564, 1, !nosanitize !10
  br i1 %2565, label %2711, label %2566, !prof !11, !nosanitize !10

2566:                                             ; preds = %2563
  %2567 = extractvalue { i32, i1 } %2564, 0, !nosanitize !10
  %2568 = icmp sgt i32 %894, -1
  br i1 %2568, label %2569, label %2572

2569:                                             ; preds = %2566
  %2570 = zext nneg i32 %894 to i64
  %.split222 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2570
  %2571 = getelementptr inbounds nuw i8, ptr %.split222, i64 24
  store i32 -1, ptr %2571, align 8, !tbaa !55
  br label %2572

2572:                                             ; preds = %2569, %2566
  %2573 = ptrtoint ptr %889 to i64
  %2574 = sub i64 %2573, %2487
  %2575 = icmp sgt i64 %2574, 4
  br i1 %2575, label %2610, label %2576

2576:                                             ; preds = %2572
  %2577 = icmp sgt i32 %893, -1
  br i1 %2577, label %2578, label %2714

2578:                                             ; preds = %2576
  %2579 = icmp eq i32 %893, 0
  br i1 %2579, label %2593, label %2580

2580:                                             ; preds = %2578
  %2581 = add nsw i32 %893, -1
  %2582 = zext nneg i32 %2581 to i64
  %2583 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2582
  %2584 = load ptr, ptr %2583, align 16, !tbaa !51
  %2585 = getelementptr inbounds nuw i8, ptr %2583, i64 8
  %2586 = load ptr, ptr %2585, align 8, !tbaa !53
  %2587 = getelementptr inbounds nuw i8, ptr %2583, i64 16
  %2588 = load ptr, ptr %2587, align 16, !tbaa !54
  %2589 = getelementptr inbounds nuw i8, ptr %2583, i64 24
  %2590 = load i32, ptr %2589, align 8, !tbaa !55
  %2591 = getelementptr inbounds nuw i8, ptr %2583, i64 28
  %2592 = load i32, ptr %2591, align 4, !tbaa !56
  br label %2610

2593:                                             ; preds = %2578, %2409, %2263, %2136, %2040, %1585, %1498, %1467
  %2594 = phi i32 [ 0, %2578 ], [ %887, %2409 ], [ %887, %2263 ], [ %887, %2136 ], [ %887, %2040 ], [ 0, %1585 ], [ %887, %1498 ], [ %887, %1467 ]
  %2595 = phi i32 [ %2567, %2578 ], [ %885, %2409 ], [ %885, %2263 ], [ %885, %2136 ], [ %885, %2040 ], [ %1578, %1585 ], [ %1448, %1498 ], [ %1448, %1467 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %2596 = icmp eq i32 %2595, 0
  br i1 %2596, label %2603, label %2597

2597:                                             ; preds = %2593
  %2598 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %832, i32 %2595), !nosanitize !10
  %2599 = extractvalue { i32, i1 } %2598, 1, !nosanitize !10
  br i1 %2599, label %.loopexit268, label %2600, !prof !11, !nosanitize !10

2600:                                             ; preds = %2597
  %2601 = extractvalue { i32, i1 } %2598, 0, !nosanitize !10
  %2602 = icmp ult ptr %844, %138
  br i1 %2602, label %2635, label %.loopexit269, !llvm.loop !77

2603:                                             ; preds = %2593
  %2604 = sub i64 %846, %845
  %2605 = ashr exact i64 %2604, 2
  %2606 = add nsw i64 %2605, 2147483648
  %2607 = icmp ult i64 %2606, 4294967296
  br i1 %2607, label %2608, label %2752

2608:                                             ; preds = %2603
  %2609 = trunc nsw i64 %2605 to i32
  br label %2629

2610:                                             ; preds = %2580, %2572, %2554, %2550, %2539, %2411, %2381, %2374, %2365, %2358, %2307, %2300, %2291, %2284, %2265, %2254, %2247, %2238, %2231, %2180, %2173, %2164, %2157, %2138, %2042, %1587, %1571, %1515, %1500, %1494, %1484, %1469, %1463, %1434, %1416, %1398, %1385, %1365, %1361, %1347, %1329, %1311, %1298, %1278, %1274
  %2611 = phi i32 [ %2567, %2572 ], [ %2567, %2580 ], [ %885, %2554 ], [ %885, %2550 ], [ %885, %2539 ], [ %885, %2411 ], [ %885, %2381 ], [ %885, %2374 ], [ %885, %2365 ], [ %885, %2358 ], [ %885, %2307 ], [ %885, %2300 ], [ %885, %2291 ], [ %885, %2284 ], [ %885, %2265 ], [ %885, %2254 ], [ %885, %2247 ], [ %885, %2238 ], [ %885, %2231 ], [ %885, %2180 ], [ %885, %2173 ], [ %885, %2164 ], [ %885, %2157 ], [ %885, %2138 ], [ %885, %2042 ], [ %1578, %1587 ], [ %885, %1571 ], [ %1448, %1515 ], [ %1448, %1494 ], [ %1448, %1500 ], [ %1448, %1484 ], [ %1448, %1463 ], [ %1448, %1469 ], [ %885, %1434 ], [ %885, %1416 ], [ %885, %1398 ], [ %885, %1385 ], [ %885, %1365 ], [ %885, %1361 ], [ %885, %1347 ], [ %885, %1329 ], [ %885, %1311 ], [ %885, %1298 ], [ %885, %1278 ], [ %885, %1274 ]
  %2612 = phi i32 [ %886, %2572 ], [ %886, %2580 ], [ %2533, %2554 ], [ %2533, %2550 ], [ %2533, %2539 ], [ %886, %2411 ], [ %886, %2381 ], [ %886, %2374 ], [ %886, %2365 ], [ %886, %2358 ], [ %886, %2307 ], [ %886, %2300 ], [ %886, %2291 ], [ %886, %2284 ], [ %886, %2265 ], [ %886, %2254 ], [ %886, %2247 ], [ %886, %2238 ], [ %886, %2231 ], [ %886, %2180 ], [ %886, %2173 ], [ %886, %2164 ], [ %886, %2157 ], [ %886, %2138 ], [ %886, %2042 ], [ %886, %1587 ], [ %1540, %1571 ], [ %886, %1515 ], [ %886, %1494 ], [ %886, %1500 ], [ %886, %1484 ], [ %886, %1463 ], [ %886, %1469 ], [ %1261, %1434 ], [ %1261, %1416 ], [ %1261, %1398 ], [ %1261, %1385 ], [ %1261, %1365 ], [ %1261, %1361 ], [ %1261, %1347 ], [ %1261, %1329 ], [ %1261, %1311 ], [ %1261, %1298 ], [ %1261, %1278 ], [ %1261, %1274 ]
  %2613 = phi i32 [ 0, %2572 ], [ 0, %2580 ], [ %2532, %2554 ], [ %2532, %2550 ], [ %2532, %2539 ], [ %887, %2411 ], [ %887, %2381 ], [ %887, %2374 ], [ %887, %2365 ], [ %887, %2358 ], [ %887, %2307 ], [ %887, %2300 ], [ %887, %2291 ], [ %887, %2284 ], [ %887, %2265 ], [ %887, %2254 ], [ %887, %2247 ], [ %887, %2238 ], [ %887, %2231 ], [ %887, %2180 ], [ %887, %2173 ], [ %887, %2164 ], [ %887, %2157 ], [ %887, %2138 ], [ %887, %2042 ], [ 0, %1587 ], [ %1541, %1571 ], [ %887, %1515 ], [ %887, %1494 ], [ %887, %1500 ], [ %887, %1484 ], [ %887, %1463 ], [ %887, %1469 ], [ %1262, %1434 ], [ %1262, %1416 ], [ %1262, %1398 ], [ %1262, %1385 ], [ %1262, %1365 ], [ %1262, %1361 ], [ %1262, %1347 ], [ %1262, %1329 ], [ %1262, %1311 ], [ %1262, %1298 ], [ %1262, %1278 ], [ %1262, %1274 ]
  %2614 = phi ptr [ %889, %2572 ], [ %2588, %2580 ], [ %889, %2554 ], [ %2485, %2550 ], [ %2485, %2539 ], [ %2419, %2411 ], [ %889, %2381 ], [ %889, %2374 ], [ %889, %2365 ], [ %889, %2358 ], [ %2065, %2307 ], [ %2065, %2300 ], [ %2065, %2291 ], [ %2065, %2284 ], [ %2273, %2265 ], [ %2065, %2254 ], [ %2065, %2247 ], [ %2065, %2238 ], [ %2065, %2231 ], [ %889, %2180 ], [ %889, %2173 ], [ %889, %2164 ], [ %889, %2157 ], [ %2146, %2138 ], [ %2050, %2042 ], [ %1595, %1587 ], [ %889, %1571 ], [ %889, %1515 ], [ %1162, %1494 ], [ %1508, %1500 ], [ %1162, %1484 ], [ %889, %1463 ], [ %1477, %1469 ], [ %1161, %1434 ], [ %889, %1416 ], [ %1161, %1398 ], [ %889, %1385 ], [ %1162, %1365 ], [ %1161, %1361 ], [ %1161, %1347 ], [ %1162, %1329 ], [ %1161, %1311 ], [ %1162, %1298 ], [ %889, %1278 ], [ %1161, %1274 ]
  %2615 = phi ptr [ %2485, %2572 ], [ %2586, %2580 ], [ %2485, %2554 ], [ %2405, %2550 ], [ %2405, %2539 ], [ %2417, %2411 ], [ %2083, %2381 ], [ %2083, %2374 ], [ %2083, %2365 ], [ %2083, %2358 ], [ %890, %2307 ], [ %890, %2300 ], [ %890, %2291 ], [ %890, %2284 ], [ %2271, %2265 ], [ %890, %2254 ], [ %890, %2247 ], [ %890, %2238 ], [ %890, %2231 ], [ %2083, %2180 ], [ %2083, %2173 ], [ %2083, %2164 ], [ %2083, %2157 ], [ %2144, %2138 ], [ %2048, %2042 ], [ %1593, %1587 ], [ %890, %1571 ], [ %1161, %1515 ], [ %890, %1494 ], [ %1506, %1500 ], [ %890, %1484 ], [ %1161, %1463 ], [ %1475, %1469 ], [ %1162, %1434 ], [ %1161, %1416 ], [ %1162, %1398 ], [ %1161, %1385 ], [ %890, %1365 ], [ %1162, %1361 ], [ %1162, %1347 ], [ %890, %1329 ], [ %1162, %1311 ], [ %890, %1298 ], [ %1161, %1278 ], [ %1162, %1274 ]
  %2616 = phi ptr [ %891, %2572 ], [ %2584, %2580 ], [ %891, %2554 ], [ %2551, %2550 ], [ %2547, %2539 ], [ %2415, %2411 ], [ %891, %2381 ], [ %891, %2374 ], [ %891, %2365 ], [ %891, %2358 ], [ %891, %2307 ], [ %891, %2300 ], [ %891, %2291 ], [ %891, %2284 ], [ %2269, %2265 ], [ %891, %2254 ], [ %891, %2247 ], [ %891, %2238 ], [ %891, %2231 ], [ %891, %2180 ], [ %891, %2173 ], [ %891, %2164 ], [ %891, %2157 ], [ %2142, %2138 ], [ %2046, %2042 ], [ %1591, %1587 ], [ %1573, %1571 ], [ %891, %1515 ], [ %891, %1494 ], [ %1504, %1500 ], [ %891, %1484 ], [ %891, %1463 ], [ %1473, %1469 ], [ %1441, %1434 ], [ %891, %1416 ], [ %1406, %1398 ], [ %891, %1385 ], [ %891, %1365 ], [ %1362, %1361 ], [ %1354, %1347 ], [ %891, %1329 ], [ %1319, %1311 ], [ %891, %1298 ], [ %891, %1278 ], [ %1275, %1274 ]
  %2617 = phi i32 [ -3, %2572 ], [ %2590, %2580 ], [ -3, %2554 ], [ %2484, %2550 ], [ %2484, %2539 ], [ %2421, %2411 ], [ %2383, %2381 ], [ %2379, %2374 ], [ %2370, %2365 ], [ %2363, %2358 ], [ %2309, %2307 ], [ %2305, %2300 ], [ %2296, %2291 ], [ %2289, %2284 ], [ %2275, %2265 ], [ %2256, %2254 ], [ %2252, %2247 ], [ %2243, %2238 ], [ %2236, %2231 ], [ %2182, %2180 ], [ %2178, %2173 ], [ %2169, %2164 ], [ %2162, %2157 ], [ %2148, %2138 ], [ %2052, %2042 ], [ %1597, %1587 ], [ %1572, %1571 ], [ %919, %1515 ], [ %919, %1494 ], [ %1510, %1500 ], [ %919, %1484 ], [ %919, %1463 ], [ %1479, %1469 ], [ %1209, %1434 ], [ %919, %1416 ], [ %1209, %1398 ], [ %919, %1385 ], [ %919, %1365 ], [ %1209, %1361 ], [ %1209, %1347 ], [ %919, %1329 ], [ %1209, %1311 ], [ %919, %1298 ], [ %919, %1278 ], [ %1209, %1274 ]
  %2618 = phi i32 [ %893, %2572 ], [ %2581, %2580 ], [ %2561, %2554 ], [ %893, %2550 ], [ %2545, %2539 ], [ %2412, %2411 ], [ %2353, %2381 ], [ %2353, %2374 ], [ %2353, %2365 ], [ %2353, %2358 ], [ %2122, %2307 ], [ %2122, %2300 ], [ %2122, %2291 ], [ %2122, %2284 ], [ %2266, %2265 ], [ %2226, %2254 ], [ %2226, %2247 ], [ %2226, %2238 ], [ %2226, %2231 ], [ %2122, %2180 ], [ %2122, %2173 ], [ %2122, %2164 ], [ %2122, %2157 ], [ %2139, %2138 ], [ %2043, %2042 ], [ %1588, %1587 ], [ %893, %1571 ], [ %1521, %1515 ], [ %893, %1494 ], [ %1501, %1500 ], [ %1490, %1484 ], [ %893, %1463 ], [ %1470, %1469 ], [ %1439, %1434 ], [ %1422, %1416 ], [ %1404, %1398 ], [ %1390, %1385 ], [ %1372, %1365 ], [ %893, %1361 ], [ %1352, %1347 ], [ %1335, %1329 ], [ %1317, %1311 ], [ %1303, %1298 ], [ %1285, %1278 ], [ %893, %1274 ]
  %2619 = phi i32 [ %894, %2572 ], [ %2592, %2580 ], [ %894, %2554 ], [ %894, %2550 ], [ %894, %2539 ], [ %2423, %2411 ], [ %2123, %2381 ], [ %2123, %2374 ], [ %2123, %2365 ], [ %2123, %2358 ], [ %2123, %2307 ], [ %2123, %2300 ], [ %2123, %2291 ], [ %2123, %2284 ], [ %2277, %2265 ], [ %2123, %2254 ], [ %2123, %2247 ], [ %2123, %2238 ], [ %2123, %2231 ], [ %2123, %2180 ], [ %2123, %2173 ], [ %2123, %2164 ], [ %2123, %2157 ], [ %2150, %2138 ], [ %2054, %2042 ], [ %1599, %1587 ], [ %894, %1571 ], [ %894, %1515 ], [ %894, %1494 ], [ %1512, %1500 ], [ %894, %1484 ], [ %894, %1463 ], [ %1481, %1469 ], [ %894, %1434 ], [ %894, %1416 ], [ %894, %1398 ], [ %894, %1385 ], [ %894, %1365 ], [ %894, %1361 ], [ %894, %1347 ], [ %894, %1329 ], [ %894, %1311 ], [ %894, %1298 ], [ %894, %1278 ], [ %894, %1274 ]
  %2620 = load ptr, ptr %7, align 8
  br label %884

2621:                                             ; preds = %.preheader267
  %2622 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %831, i32 %827), !nosanitize !10
  %2623 = extractvalue { i32, i1 } %2622, 1, !nosanitize !10
  br i1 %2623, label %.loopexit268, label %2624, !prof !11, !nosanitize !10

2624:                                             ; preds = %2621
  %2625 = extractvalue { i32, i1 } %2622, 0, !nosanitize !10
  %2626 = sext i32 %827 to i64
  %2627 = sub nsw i64 0, %2626
  %2628 = getelementptr inbounds nuw [4 x i8], ptr %830, i64 %2627
  br label %2629

2629:                                             ; preds = %2624, %2608, %849
  %2630 = phi i32 [ %828, %2624 ], [ %886, %2608 ], [ %828, %849 ]
  %2631 = phi i32 [ %829, %2624 ], [ %2594, %2608 ], [ %829, %849 ]
  %2632 = phi ptr [ %2628, %2624 ], [ %844, %2608 ], [ %844, %849 ]
  %2633 = phi i32 [ %2625, %2624 ], [ %2609, %2608 ], [ %851, %849 ]
  %2634 = icmp ult ptr %2632, %138
  br i1 %2634, label %2635, label %.loopexit270, !llvm.loop !77

2635:                                             ; preds = %2629, %2600
  %2636 = phi i32 [ %2601, %2600 ], [ %832, %2629 ]
  %2637 = phi i32 [ 0, %2600 ], [ %2633, %2629 ]
  %2638 = phi ptr [ %844, %2600 ], [ %2632, %2629 ]
  %2639 = phi i32 [ %2594, %2600 ], [ %2631, %2629 ]
  %2640 = phi i32 [ %886, %2600 ], [ %2630, %2629 ]
  %2641 = load i32, ptr %2638, align 4, !tbaa !5
  br label %.preheader267

2642:                                             ; preds = %2756
  %2643 = load i32, ptr %2757, align 4, !tbaa !5
  br label %.preheader271

.preheader271:                                    ; preds = %814, %2642
  %2644 = phi i32 [ %2643, %2642 ], [ %815, %814 ]
  %2645 = phi ptr [ %2757, %2642 ], [ %1, %814 ]
  %2646 = phi i32 [ %2758, %2642 ], [ 0, %814 ]
  %2647 = icmp slt i32 %2644, 0
  br i1 %2647, label %2648, label %2656

2648:                                             ; preds = %.preheader271
  %2649 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2646, i32 %2644), !nosanitize !10
  %2650 = extractvalue { i32, i1 } %2649, 1, !nosanitize !10
  br i1 %2650, label %.loopexit268, label %2651, !prof !11, !nosanitize !10

.loopexit268:                                     ; preds = %2648, %2621, %2597
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2651:                                             ; preds = %2648
  %2652 = extractvalue { i32, i1 } %2649, 0, !nosanitize !10
  %2653 = sext i32 %2644 to i64
  %2654 = sub nsw i64 0, %2653
  %2655 = getelementptr inbounds nuw [4 x i8], ptr %2645, i64 %2654
  br label %2756

2656:                                             ; preds = %.preheader271
  %2657 = icmp eq i32 %2646, 0
  br i1 %2657, label %2661, label %2658

2658:                                             ; preds = %2656
  %2659 = sext i32 %2646 to i64
  %2660 = getelementptr inbounds [4 x i8], ptr %2645, i64 %2659
  store i32 %2646, ptr %2660, align 4, !tbaa !5
  br label %2661

2661:                                             ; preds = %2658, %2656
  %2662 = zext nneg i32 %2644 to i64
  %2663 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2662
  %2664 = load i32, ptr %2663, align 4, !tbaa !5
  %2665 = sext i32 %2664 to i64
  %2666 = getelementptr [4 x i8], ptr %811, i64 %2665
  %2667 = ptrtoint ptr %2666 to i64
  %2668 = ptrtoint ptr %2645 to i64
  %2669 = sub i64 %2667, %2668
  %2670 = icmp sgt i64 %2669, 4
  br i1 %2670, label %2671, label %2753

2671:                                             ; preds = %2661
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1183, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2672:                                             ; preds = %852
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1187, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2673:                                             ; preds = %874, %865, %858
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2674:                                             ; preds = %914
  br i1 %916, label %2716, label %2720

2675:                                             ; preds = %1821
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2676:                                             ; preds = %2055
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.src, i32 noundef 1192, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2677:                                             ; preds = %2067
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1196, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2678:                                             ; preds = %2086
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1199, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2679:                                             ; preds = %2104
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1204, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2680:                                             ; preds = %2106
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1205, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2681:                                             ; preds = %2183
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1210, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2682:                                             ; preds = %2185
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1210, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2683:                                             ; preds = %2213, %2204, %2196
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2684:                                             ; preds = %2247, %2238, %2231
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2685:                                             ; preds = %2151
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1213, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2686:                                             ; preds = %2173, %2164, %2157
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2687:                                             ; preds = %2134
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1215, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2688:                                             ; preds = %2310
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2689:                                             ; preds = %2312
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2690:                                             ; preds = %2340, %2331, %2323
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2691:                                             ; preds = %2374, %2365, %2358
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2692:                                             ; preds = %2278
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1222, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2693:                                             ; preds = %2300, %2291, %2284
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2694:                                             ; preds = %2261
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1224, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2695:                                             ; preds = %1966
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1231, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

.loopexit245:                                     ; preds = %.preheader247, %.preheader244
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2696:                                             ; preds = %1972
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1120, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #10
  unreachable

2697:                                             ; preds = %1997
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1124, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #10
  unreachable

2698:                                             ; preds = %2027
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1130, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #10
  unreachable

2699:                                             ; preds = %1840
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1234, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

.loopexit251:                                     ; preds = %.preheader255, %.preheader250
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2700:                                             ; preds = %1846
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1144, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2701:                                             ; preds = %1880
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1150, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2702:                                             ; preds = %1908
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.src, i32 noundef 1158, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2703:                                             ; preds = %1950
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1167, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2704:                                             ; preds = %.loopexit246
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1236, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2705:                                             ; preds = %.preheader239
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.src, i32 noundef 1241, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2706:                                             ; preds = %2440
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.src, i32 noundef 1246, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2707:                                             ; preds = %2471, %2461, %2453
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2708:                                             ; preds = %2488
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1247, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2709:                                             ; preds = %2504
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1250, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2710:                                             ; preds = %2525, %2518, %2513
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2711:                                             ; preds = %2563, %2521
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2712:                                             ; preds = %2537
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1252, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2713:                                             ; preds = %2552
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1256, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2714:                                             ; preds = %2576
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1267, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2715:                                             ; preds = %2407
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1271, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

.loopexit234:                                     ; preds = %.preheader258, %1803
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2716:                                             ; preds = %2674
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1284, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2717:                                             ; preds = %1765
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

2718:                                             ; preds = %1755
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

2719:                                             ; preds = %1745
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

2720:                                             ; preds = %2674
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1019, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_pivot) #10
  unreachable

2721:                                             ; preds = %1174
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1300, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2722:                                             ; preds = %1198, %1189, %1181
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2723:                                             ; preds = %1208
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1303, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2724:                                             ; preds = %1225
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1304, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2725:                                             ; preds = %1241
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1307, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2726:                                             ; preds = %1254
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2727:                                             ; preds = %1442, %1250
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2728:                                             ; preds = %1287
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1311, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2729:                                             ; preds = %1289
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1312, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2730:                                             ; preds = %1276
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1315, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2731:                                             ; preds = %1320
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1322, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2732:                                             ; preds = %1321
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1323, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2733:                                             ; preds = %1310
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1326, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2734:                                             ; preds = %1337
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1330, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2735:                                             ; preds = %1339
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1331, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2736:                                             ; preds = %1374
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1337, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2737:                                             ; preds = %1376
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1338, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2738:                                             ; preds = %1363
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1341, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2739:                                             ; preds = %1407
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1348, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2740:                                             ; preds = %1408
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1349, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2741:                                             ; preds = %1397
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1352, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2742:                                             ; preds = %1424
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1356, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2743:                                             ; preds = %1426
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1357, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2744:                                             ; preds = %1482
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1365, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2745:                                             ; preds = %1465
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1370, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2746:                                             ; preds = %1513
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1374, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2747:                                             ; preds = %1496
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1379, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2748:                                             ; preds = %1533
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2749:                                             ; preds = %1574, %1529
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2750:                                             ; preds = %1561, %1552, %1545
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2751:                                             ; preds = %1583
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1388, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2752:                                             ; preds = %2603
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.src, i32 noundef 1423, ptr noundef nonnull @__PRETTY_FUNCTION__.trsort) #10
  unreachable

2753:                                             ; preds = %2661
  %2754 = icmp eq i64 %2669, 4
  %2755 = sext i1 %2754 to i32
  br label %2756

2756:                                             ; preds = %2753, %2651
  %2757 = phi ptr [ %2655, %2651 ], [ %2666, %2753 ]
  %2758 = phi i32 [ %2652, %2651 ], [ %2755, %2753 ]
  %2759 = icmp ult ptr %2757, %138
  br i1 %2759, label %2642, label %.loopexit270, !llvm.loop !77

.loopexit270:                                     ; preds = %2756, %2629
  %2760 = phi i32 [ %2630, %2629 ], [ %818, %2756 ]
  %2761 = phi i32 [ %2631, %2629 ], [ %817, %2756 ]
  %2762 = phi ptr [ %2632, %2629 ], [ %2757, %2756 ]
  %2763 = phi i32 [ %2633, %2629 ], [ %2758, %2756 ]
  %2764 = phi i32 [ %832, %2629 ], [ 0, %2756 ]
  %2765 = icmp eq i32 %2763, 0
  br i1 %2765, label %.loopexit269, label %2766

2766:                                             ; preds = %.loopexit270
  %2767 = sext i32 %2763 to i64
  %2768 = getelementptr inbounds [4 x i8], ptr %2762, i64 %2767
  store i32 %2763, ptr %2768, align 4, !tbaa !5
  br label %.loopexit269

.loopexit269:                                     ; preds = %2600, %2766, %.loopexit270
  %2769 = phi i32 [ %2760, %2766 ], [ %2760, %.loopexit270 ], [ %886, %2600 ]
  %2770 = phi i32 [ %2761, %2766 ], [ %2761, %.loopexit270 ], [ %2594, %2600 ]
  %2771 = phi i32 [ %2764, %2766 ], [ %2764, %.loopexit270 ], [ %2601, %2600 ]
  %2772 = icmp eq i32 %2771, 0
  br i1 %2772, label %.loopexit274, label %2773

2773:                                             ; preds = %.loopexit269
  %2774 = getelementptr i8, ptr %816, i64 %820
  %2775 = load i32, ptr %1, align 4, !tbaa !5
  %2776 = icmp sgt i32 %2775, %804
  br i1 %2776, label %814, label %.loopexit274, !llvm.loop !78

.loopexit274:                                     ; preds = %2773, %.loopexit269, %803
  %2777 = load i8, ptr %11, align 1, !tbaa !9
  %2778 = zext i8 %2777 to i32
  br label %2779

2779:                                             ; preds = %2816, %.loopexit274
  %2780 = phi i32 [ %2778, %.loopexit274 ], [ %2813, %2816 ]
  %2781 = phi i32 [ %9, %.loopexit274 ], [ %2812, %2816 ]
  %2782 = phi i32 [ %78, %.loopexit274 ], [ %2823, %2816 ]
  %2783 = icmp eq i32 %2781, 0
  br i1 %2783, label %.loopexit228, label %.lr.ph2019

.lr.ph2019:                                       ; preds = %2779
  %2784 = zext nneg i32 %2781 to i64
  br label %2787

2785:                                             ; preds = %2787
  %2786 = icmp eq i64 %2790, 0
  br i1 %2786, label %.loopexit228, label %2787, !llvm.loop !79

2787:                                             ; preds = %.lr.ph2019, %2785
  %2788 = phi i32 [ %2780, %.lr.ph2019 ], [ %2793, %2785 ]
  %2789 = phi i64 [ %2784, %.lr.ph2019 ], [ %2790, %2785 ]
  %2790 = add nsw i64 %2789, -1
  %2791 = getelementptr inbounds nuw i8, ptr %0, i64 %2790
  %2792 = load i8, ptr %2791, align 1, !tbaa !9
  %2793 = zext i8 %2792 to i32
  %2794 = icmp sgt i32 %2788, %2793
  br i1 %2794, label %2795, label %2785, !llvm.loop !79

2795:                                             ; preds = %2787
  %indvars.le = trunc nuw nsw i64 %2790 to i32
  %2796 = trunc nuw nsw i64 %2789 to i32
  %2797 = and i64 %2790, 4294967295
  %2798 = icmp eq i64 %2797, 0
  br i1 %2798, label %.loopexit227, label %.lr.ph2022

2799:                                             ; preds = %.lr.ph2022
  %2800 = icmp eq i64 %2803, 0
  br i1 %2800, label %.loopexit227, label %.lr.ph2022, !llvm.loop !80

.lr.ph2022:                                       ; preds = %2795, %2799
  %2801 = phi i32 [ %2806, %2799 ], [ %2793, %2795 ]
  %2802 = phi i64 [ %2803, %2799 ], [ %2797, %2795 ]
  %2803 = add nsw i64 %2802, -1
  %2804 = getelementptr inbounds nuw i8, ptr %0, i64 %2803
  %2805 = load i8, ptr %2804, align 1, !tbaa !9
  %2806 = zext i8 %2805 to i32
  %2807 = icmp samesign ult i32 %2801, %2806
  br i1 %2807, label %2808, label %2799, !llvm.loop !80

2808:                                             ; preds = %.lr.ph2022
  %2809 = trunc nuw nsw i64 %2802 to i32
  %2810 = trunc nuw nsw i64 %2803 to i32
  br label %.loopexit227

.loopexit227:                                     ; preds = %2799, %2795, %2808
  %2811 = phi i32 [ %2809, %2808 ], [ 0, %2795 ], [ 0, %2799 ]
  %2812 = phi i32 [ %2810, %2808 ], [ -1, %2795 ], [ -1, %2799 ]
  %2813 = phi i32 [ %2806, %2808 ], [ %2793, %2795 ], [ %2806, %2799 ]
  %2814 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2782, i32 -1)
  %2815 = extractvalue { i32, i1 } %2814, 1, !nosanitize !10
  br i1 %2815, label %.loopexit, label %2816, !prof !11, !nosanitize !10

2816:                                             ; preds = %.loopexit227
  %2817 = icmp eq i64 %2790, 0
  %2818 = sub nsw i32 %2796, %2811
  %2819 = icmp sgt i32 %2818, 1
  %2820 = or i1 %2817, %2819
  %2821 = sub nsw i32 0, %2796
  %2822 = select i1 %2820, i32 %indvars.le, i32 %2821
  %2823 = extractvalue { i32, i1 } %2814, 0, !nosanitize !10
  %2824 = sext i32 %2823 to i64
  %2825 = getelementptr inbounds [4 x i8], ptr %138, i64 %2824
  %2826 = load i32, ptr %2825, align 4, !tbaa !5
  %2827 = sext i32 %2826 to i64
  %2828 = getelementptr inbounds [4 x i8], ptr %1, i64 %2827
  store i32 %2822, ptr %2828, align 4, !tbaa !5
  %2829 = icmp sgt i32 %2812, -1
  br i1 %2829, label %2779, label %.loopexit228, !llvm.loop !81

.loopexit228:                                     ; preds = %2816, %2779, %2785
  %2830 = getelementptr inbounds nuw i8, ptr %3, i64 262140
  store i32 %4, ptr %2830, align 4, !tbaa !5
  br label %2831

2831:                                             ; preds = %2901, %.loopexit228
  %2832 = phi i64 [ 254, %.loopexit228 ], [ %2907, %2901 ]
  %2833 = phi i32 [ %171, %.loopexit228 ], [ %2886, %2901 ]
  %2834 = trunc i64 %2832 to i32
  %2835 = add nuw nsw i64 %2832, 1
  %2836 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %2835
  %2837 = load i32, ptr %2836, align 4, !tbaa !5
  %2838 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2837, i32 -1)
  %2839 = extractvalue { i32, i1 } %2838, 1, !nosanitize !10
  br i1 %2839, label %.loopexit, label %2840, !prof !11, !nosanitize !10

2840:                                             ; preds = %2831
  %2841 = extractvalue { i32, i1 } %2838, 0, !nosanitize !10
  %2842 = getelementptr [4 x i8], ptr %3, i64 %2832
  %2843 = shl i32 %2834, 8
  br label %2844

2844:                                             ; preds = %2885, %2840
  %2845 = phi i64 [ 255, %2840 ], [ %2888, %2885 ]
  %2846 = phi i32 [ %2841, %2840 ], [ %2887, %2885 ]
  %2847 = phi i32 [ %2833, %2840 ], [ %2886, %2885 ]
  %2848 = shl i64 %2845, 10
  %2849 = getelementptr i8, ptr %2842, i64 %2848
  %2850 = load i32, ptr %2849, align 4, !tbaa !5
  %2851 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2846, i32 %2850), !nosanitize !10
  %2852 = extractvalue { i32, i1 } %2851, 1, !nosanitize !10
  br i1 %2852, label %.loopexit, label %2853, !prof !11, !nosanitize !10

2853:                                             ; preds = %2844
  store i32 %2846, ptr %2849, align 4, !tbaa !5
  %2854 = trunc nuw nsw i64 %2845 to i32
  %2855 = or i32 %2843, %2854
  %2856 = sext i32 %2855 to i64
  %2857 = getelementptr inbounds [4 x i8], ptr %3, i64 %2856
  %2858 = load i32, ptr %2857, align 4, !tbaa !5
  %2859 = extractvalue { i32, i1 } %2851, 0
  %2860 = icmp sgt i32 %2858, %2847
  br i1 %2860, label %2885, label %2861

2861:                                             ; preds = %2853
  %2862 = sext i32 %2859 to i64
  %2863 = sext i32 %2847 to i64
  %2864 = getelementptr inbounds [4 x i8], ptr %1, i64 %2863
  %2865 = load i32, ptr %2864, align 4, !tbaa !5
  %2866 = getelementptr inbounds [4 x i8], ptr %1, i64 %2862
  store i32 %2865, ptr %2866, align 4, !tbaa !5
  %2867 = icmp eq i32 %2859, -2147483648
  %2868 = icmp eq i32 %2847, -2147483648
  %2869 = or i1 %2868, %2867
  br i1 %2869, label %.loopexit, label %.lr.ph2025, !prof !82, !nosanitize !10

2870:                                             ; preds = %.lr.ph2025
  %2871 = getelementptr inbounds [4 x i8], ptr %1, i64 %2879
  %2872 = load i32, ptr %2871, align 4, !tbaa !5
  %2873 = getelementptr inbounds [4 x i8], ptr %1, i64 %2881
  store i32 %2872, ptr %2873, align 4, !tbaa !5
  %2874 = icmp eq i64 %2881, -2147483648
  %2875 = icmp eq i64 %2879, -2147483648
  %2876 = or i1 %2875, %2874
  br i1 %2876, label %.loopexit, label %.lr.ph2025, !prof !83, !llvm.loop !84, !nosanitize !10

.lr.ph2025:                                       ; preds = %2861, %2870
  %2877 = phi i64 [ %2881, %2870 ], [ %2862, %2861 ]
  %2878 = phi i64 [ %2879, %2870 ], [ %2863, %2861 ]
  %2879 = add nsw i64 %2878, -1
  %2880 = trunc i64 %2879 to i32
  %2881 = add nsw i64 %2877, -1
  %2882 = icmp sgt i32 %2858, %2880
  br i1 %2882, label %2883, label %2870, !llvm.loop !84

2883:                                             ; preds = %.lr.ph2025
  %2884 = trunc nsw i64 %2881 to i32
  br label %2885

2885:                                             ; preds = %2883, %2853
  %2886 = phi i32 [ %2847, %2853 ], [ %2880, %2883 ]
  %2887 = phi i32 [ %2859, %2853 ], [ %2884, %2883 ]
  %2888 = add nsw i64 %2845, -1
  %2889 = icmp samesign ult i64 %2832, %2888
  br i1 %2889, label %2844, label %2890, !llvm.loop !85

2890:                                             ; preds = %2885
  %2891 = or i32 %2843, %2834
  %2892 = sext i32 %2891 to i64
  %2893 = getelementptr inbounds [4 x i8], ptr %3, i64 %2892
  %2894 = load i32, ptr %2893, align 4, !tbaa !5
  %2895 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2887, i32 %2894), !nosanitize !10
  %2896 = extractvalue { i32, i1 } %2895, 1, !nosanitize !10
  br i1 %2896, label %.loopexit, label %2897, !prof !11, !nosanitize !10

2897:                                             ; preds = %2890
  %2898 = extractvalue { i32, i1 } %2895, 0, !nosanitize !10
  %2899 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2898, i32 1), !nosanitize !10
  %2900 = extractvalue { i32, i1 } %2899, 1, !nosanitize !10
  br i1 %2900, label %.loopexit225, label %2901, !prof !11, !nosanitize !10

2901:                                             ; preds = %2897
  %2902 = extractvalue { i32, i1 } %2899, 0, !nosanitize !10
  %2903 = trunc nuw nsw i64 %2835 to i32
  %2904 = or i32 %2843, %2903
  %2905 = sext i32 %2904 to i64
  %2906 = getelementptr inbounds [4 x i8], ptr %3, i64 %2905
  store i32 %2902, ptr %2906, align 4, !tbaa !5
  store i32 %2887, ptr %2893, align 4, !tbaa !5
  %2907 = add nsw i64 %2832, -1
  %2908 = icmp eq i64 %2832, 0
  br i1 %2908, label %.loopexit226, label %2831, !llvm.loop !86

.loopexit226:                                     ; preds = %2901, %130
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
