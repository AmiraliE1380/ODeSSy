; ModuleID = '/mydata/ODeSSy/perf_zstd_work/obj.oracle/divsufsort.ll.mid'
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

.loopexit225:                                     ; preds = %36, %18, %64, %96, %93, %.preheader311, %124, %115, %142, %2906, %.loopexit308
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

.loopexit:                                        ; preds = %45, %149, %714, %209, %765, %750, %.loopexit227, %2899, %2840, %2853, %2870, %2879, %177, %.loopexit315
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
  %.idx1301 = shl i64 %84, 10
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 %.idx1301
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

205:                                              ; preds = %717, %199
  %206 = phi i32 [ 254, %199 ], [ %718, %717 ]
  %207 = phi i32 [ %78, %199 ], [ %215, %717 ]
  %208 = shl i32 %206, 8
  br label %209

209:                                              ; preds = %711, %205
  %210 = phi i32 [ 255, %205 ], [ %712, %711 ]
  %211 = phi i32 [ %207, %205 ], [ %215, %711 ]
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
  br i1 %220, label %221, label %711

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
  %409 = phi ptr [ %226, %407 ], [ %651, %.loopexit290 ]
  %410 = phi ptr [ %348, %407 ], [ %645, %.loopexit290 ]
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
  br i1 %495, label %498, label %643

496:                                              ; preds = %424
  %497 = icmp ult ptr %229, %410
  br i1 %497, label %503, label %643

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
  %527 = phi i32 [ %523, %522 ], [ %636, %.loopexit281 ]
  %528 = phi i32 [ %524, %522 ], [ %635, %.loopexit281 ]
  %529 = phi ptr [ %409, %522 ], [ %634, %.loopexit281 ]
  %530 = phi ptr [ %504, %522 ], [ %633, %.loopexit281 ]
  %531 = icmp eq i32 %528, %527
  br i1 %531, label %532, label %578

532:                                              ; preds = %526
  %533 = add nsw i32 %527, -1
  %534 = zext nneg i32 %533 to i64
  %535 = add nuw nsw i64 %534, 1
  %536 = icmp samesign ult i32 %527, 8
  br i1 %536, label %.preheader2378, label %537

537:                                              ; preds = %532
  %538 = getelementptr i8, ptr %530, i64 4
  %539 = shl nuw nsw i64 %534, 2
  %540 = getelementptr i8, ptr %538, i64 %539
  %541 = getelementptr i8, ptr %410, i64 4
  %542 = getelementptr i8, ptr %541, i64 %539
  %543 = icmp ult ptr %530, %542
  %544 = icmp ult ptr %410, %540
  %545 = and i1 %543, %544
  br i1 %545, label %.preheader2378, label %546

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
  br i1 %567, label %.loopexit291, label %.preheader2378

.preheader2378:                                   ; preds = %561, %537, %532
  %.ph2379 = phi ptr [ %563, %561 ], [ %530, %532 ], [ %530, %537 ]
  %.ph2380 = phi i32 [ %565, %561 ], [ %527, %532 ], [ %527, %537 ]
  %.ph2381 = phi ptr [ %566, %561 ], [ %410, %532 ], [ %410, %537 ]
  br label %568

568:                                              ; preds = %.preheader2378, %568
  %569 = phi ptr [ %575, %568 ], [ %.ph2379, %.preheader2378 ]
  %570 = phi i32 [ %574, %568 ], [ %.ph2380, %.preheader2378 ]
  %571 = phi ptr [ %576, %568 ], [ %.ph2381, %.preheader2378 ]
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
  br i1 %579, label %580, label %600

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

599:                                              ; preds = %621
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

600:                                              ; preds = %578
  %601 = load i32, ptr %530, align 4, !tbaa !5
  %602 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %527, i32 1)
  %603 = extractvalue { i32, i1 } %602, 1
  %604 = extractvalue { i32, i1 } %602, 0
  br i1 %603, label %.preheader280, label %.preheader282, !prof !11, !nosanitize !10

.preheader280:                                    ; preds = %600, %.preheader280
  %605 = phi ptr [ %608, %.preheader280 ], [ %530, %600 ]
  %606 = phi ptr [ %610, %.preheader280 ], [ %410, %600 ]
  %607 = load i32, ptr %606, align 4, !tbaa !5
  %608 = getelementptr inbounds nuw i8, ptr %605, i64 4
  store i32 %607, ptr %605, align 4, !tbaa !5
  %609 = load i32, ptr %608, align 4, !tbaa !5
  %610 = getelementptr inbounds nuw i8, ptr %606, i64 4
  store i32 %609, ptr %606, align 4, !tbaa !5
  %611 = icmp ugt ptr %529, %610
  br i1 %611, label %.preheader280, label %612

612:                                              ; preds = %.preheader280
  store i32 %601, ptr %608, align 4, !tbaa !5
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

613:                                              ; preds = %.preheader282, %613
  %614 = phi ptr [ %617, %613 ], [ %630, %.preheader282 ]
  %615 = phi ptr [ %619, %613 ], [ %410, %.preheader282 ]
  %616 = load i32, ptr %615, align 4, !tbaa !5
  %617 = getelementptr inbounds nuw i8, ptr %614, i64 4
  store i32 %616, ptr %614, align 4, !tbaa !5
  %618 = load i32, ptr %617, align 4, !tbaa !5
  %619 = getelementptr inbounds nuw i8, ptr %615, i64 4
  store i32 %618, ptr %615, align 4, !tbaa !5
  %620 = icmp ugt ptr %529, %619
  br i1 %620, label %613, label %621

621:                                              ; preds = %613
  store i32 %631, ptr %617, align 4, !tbaa !5
  %622 = getelementptr inbounds nuw i8, ptr %614, i64 8
  %623 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %632, i32 %604), !nosanitize !10
  %624 = extractvalue { i32, i1 } %623, 0, !nosanitize !10
  %625 = extractvalue { i32, i1 } %623, 1, !nosanitize !10
  br i1 %625, label %599, label %626, !prof !11, !nosanitize !10

626:                                              ; preds = %621
  %627 = icmp sgt i32 %624, %527
  br i1 %627, label %628, label %.loopexit281

628:                                              ; preds = %626
  %629 = load i32, ptr %622, align 4, !tbaa !5
  br label %.preheader282

.preheader282:                                    ; preds = %600, %628
  %630 = phi ptr [ %622, %628 ], [ %530, %600 ]
  %631 = phi i32 [ %629, %628 ], [ %601, %600 ]
  %632 = phi i32 [ %624, %628 ], [ %528, %600 ]
  br label %613

.loopexit281:                                     ; preds = %626, %595
  %633 = phi ptr [ %530, %595 ], [ %622, %626 ]
  %634 = phi ptr [ %591, %595 ], [ %529, %626 ]
  %635 = phi i32 [ %528, %595 ], [ %624, %626 ]
  %636 = phi i32 [ %596, %595 ], [ %527, %626 ]
  %637 = icmp sgt i32 %635, 0
  %638 = icmp sgt i32 %636, 0
  %639 = and i1 %637, %638
  br i1 %639, label %526, label %.loopexit291, !llvm.loop !37

.loopexit291:                                     ; preds = %.loopexit281, %568, %561, %518
  %640 = sub nsw i64 0, %507
  %641 = getelementptr inbounds [4 x i8], ptr %409, i64 %640
  %642 = icmp eq ptr %229, %504
  br i1 %642, label %.loopexit301, label %643

643:                                              ; preds = %.loopexit291, %496, %494
  %644 = phi ptr [ %641, %.loopexit291 ], [ %409, %494 ], [ %409, %496 ]
  %645 = phi ptr [ %504, %.loopexit291 ], [ %410, %494 ], [ %410, %496 ]
  %646 = getelementptr inbounds i8, ptr %644, i64 -4
  br i1 %413, label %.preheader289, label %.loopexit290

.preheader289:                                    ; preds = %643, %.preheader289
  %647 = phi ptr [ %648, %.preheader289 ], [ %646, %643 ]
  %648 = getelementptr inbounds i8, ptr %647, i64 -4
  %649 = load i32, ptr %648, align 4, !tbaa !5
  %650 = icmp slt i32 %649, 0
  br i1 %650, label %.preheader289, label %.loopexit290, !llvm.loop !38

.loopexit290:                                     ; preds = %.preheader289, %643
  %651 = phi ptr [ %646, %643 ], [ %648, %.preheader289 ]
  %652 = icmp eq ptr %645, %651
  br i1 %652, label %.loopexit301, label %408

.loopexit301:                                     ; preds = %.loopexit290, %.loopexit291, %.loopexit303
  br i1 %227, label %653, label %711

653:                                              ; preds = %.loopexit301
  %654 = load i32, ptr %223, align 4, !tbaa !5
  %655 = add nsw i64 %.idx, 4
  %656 = icmp slt i64 %655, %.idx219
  br i1 %656, label %657, label %.loopexit296

657:                                              ; preds = %653
  %658 = sext i32 %654 to i64
  %659 = getelementptr inbounds [4 x i8], ptr %137, i64 %658
  %660 = load i32, ptr %659, align 4, !tbaa !5
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i8, ptr %203, i64 %661
  %663 = icmp ult ptr %662, %204
  %664 = freeze i1 %663
  br i1 %664, label %.preheader295, label %.preheader298

.preheader298:                                    ; preds = %657, %668
  %665 = phi ptr [ %670, %668 ], [ %228, %657 ]
  %666 = load i32, ptr %665, align 4, !tbaa !5
  %667 = icmp slt i32 %666, 0
  br i1 %667, label %668, label %.loopexit296

668:                                              ; preds = %.preheader298
  %669 = getelementptr inbounds i8, ptr %665, i64 -4
  store i32 %666, ptr %669, align 4, !tbaa !5
  %670 = getelementptr inbounds nuw i8, ptr %665, i64 4
  %671 = icmp ult ptr %670, %226
  br i1 %671, label %.preheader298, label %.loopexit296, !llvm.loop !39

.preheader295:                                    ; preds = %657, %705
  %672 = phi ptr [ %707, %705 ], [ %228, %657 ]
  %673 = load i32, ptr %672, align 4, !tbaa !5
  %674 = icmp slt i32 %673, 0
  br i1 %674, label %705, label %675

675:                                              ; preds = %.preheader295
  %676 = zext nneg i32 %673 to i64
  %677 = getelementptr inbounds nuw [4 x i8], ptr %137, i64 %676
  %678 = load i32, ptr %677, align 4, !tbaa !5
  %679 = getelementptr i8, ptr %677, i64 4
  %680 = load i32, ptr %679, align 4, !tbaa !5
  %681 = sext i32 %678 to i64
  %682 = getelementptr inbounds i8, ptr %203, i64 %681
  %683 = sext i32 %680 to i64
  %684 = getelementptr i8, ptr %203, i64 %683
  %685 = icmp ult ptr %682, %684
  br i1 %685, label %.preheader287, label %705

.preheader287:                                    ; preds = %675, %691
  %686 = phi ptr [ %692, %691 ], [ %662, %675 ]
  %687 = phi ptr [ %693, %691 ], [ %682, %675 ]
  %688 = load i8, ptr %686, align 1, !tbaa !9
  %689 = load i8, ptr %687, align 1, !tbaa !9
  %690 = icmp eq i8 %688, %689
  br i1 %690, label %691, label %.loopexit288

691:                                              ; preds = %.preheader287
  %692 = getelementptr inbounds nuw i8, ptr %686, i64 1
  %693 = getelementptr inbounds nuw i8, ptr %687, i64 1
  %694 = icmp ult ptr %692, %204
  %695 = icmp ult ptr %693, %684
  %696 = select i1 %694, i1 %695, i1 false
  br i1 %696, label %.preheader287, label %697, !llvm.loop !26

697:                                              ; preds = %691
  br i1 %694, label %698, label %.loopexit296

698:                                              ; preds = %697
  br i1 %695, label %699, label %705

699:                                              ; preds = %698
  %700 = load i8, ptr %692, align 1, !tbaa !9
  %701 = load i8, ptr %693, align 1, !tbaa !9
  br label %.loopexit288

.loopexit288:                                     ; preds = %.preheader287, %699
  %702 = phi i8 [ %701, %699 ], [ %689, %.preheader287 ]
  %703 = phi i8 [ %700, %699 ], [ %688, %.preheader287 ]
  %704 = icmp ugt i8 %703, %702
  br i1 %704, label %705, label %.loopexit296

705:                                              ; preds = %.loopexit288, %698, %675, %.preheader295
  %706 = getelementptr inbounds i8, ptr %672, i64 -4
  store i32 %673, ptr %706, align 4, !tbaa !5
  %707 = getelementptr inbounds nuw i8, ptr %672, i64 4
  %708 = icmp ult ptr %707, %226
  br i1 %708, label %.preheader295, label %.loopexit296, !llvm.loop !39

.loopexit296:                                     ; preds = %668, %.preheader298, %705, %.loopexit288, %697, %653
  %709 = phi ptr [ %228, %653 ], [ %672, %.loopexit288 ], [ %672, %697 ], [ %707, %705 ], [ %665, %.preheader298 ], [ %670, %668 ]
  %710 = getelementptr inbounds i8, ptr %709, i64 -4
  store i32 %654, ptr %710, align 4, !tbaa !5
  br label %711

711:                                              ; preds = %.loopexit296, %.loopexit301, %218
  %712 = add nsw i32 %210, -1
  %713 = icmp slt i32 %206, %712
  br i1 %713, label %209, label %714, !llvm.loop !40

714:                                              ; preds = %711
  %715 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %206, i32 -1)
  %716 = extractvalue { i32, i1 } %715, 1, !nosanitize !10
  br i1 %716, label %.loopexit, label %717, !prof !11, !nosanitize !10

717:                                              ; preds = %714
  %718 = extractvalue { i32, i1 } %715, 0, !nosanitize !10
  %719 = icmp sgt i32 %215, 0
  br i1 %719, label %205, label %.preheader277, !llvm.loop !41

.preheader277:                                    ; preds = %717, %771
  %720 = phi i32 [ %772, %771 ], [ %171, %717 ]
  %721 = zext nneg i32 %720 to i64
  %722 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %721
  %723 = load i32, ptr %722, align 4, !tbaa !5
  %724 = icmp sgt i32 %723, -1
  br i1 %724, label %.preheader276.preheader, label %743

.preheader276.preheader:                          ; preds = %.preheader277
  %725 = zext nneg i32 %723 to i64
  %726 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %725
  store i32 %720, ptr %726, align 4, !tbaa !5
  %727 = icmp eq i32 %720, 0
  br i1 %727, label %.preheader276.preheader._crit_edge, label %.lr.ph

.preheader276:                                    ; preds = %.lr.ph
  %728 = zext nneg i32 %736 to i64
  %729 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %728
  %730 = trunc nuw nsw i64 %734 to i32
  store i32 %730, ptr %729, align 4, !tbaa !5
  %731 = icmp eq i64 %734, 0
  br i1 %731, label %.preheader276.preheader._crit_edge, label %.lr.ph, !llvm.loop !42

.preheader276.preheader._crit_edge:               ; preds = %.preheader276.preheader, %.preheader276
  %732 = xor i32 %720, -1
  store i32 %732, ptr %1, align 4, !tbaa !5
  br label %.loopexit278

.lr.ph:                                           ; preds = %.preheader276.preheader, %.preheader276
  %733 = phi i64 [ %734, %.preheader276 ], [ %721, %.preheader276.preheader ]
  %734 = add nsw i64 %733, -1
  %735 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %734
  %736 = load i32, ptr %735, align 4, !tbaa !5
  %737 = icmp sgt i32 %736, -1
  br i1 %737, label %.preheader276, label %738, !llvm.loop !42

738:                                              ; preds = %.lr.ph
  %739 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %733
  %740 = trunc nuw nsw i64 %734 to i32
  %741 = sub nsw i32 %740, %720
  store i32 %741, ptr %739, align 4, !tbaa !5
  %742 = icmp eq i64 %733, 1
  br i1 %742, label %.loopexit278, label %._crit_edge

._crit_edge:                                      ; preds = %738
  %.pre = and i64 %734, 4294967295
  br label %743

743:                                              ; preds = %._crit_edge, %.preheader277
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %721, %.preheader277 ]
  %744 = phi i32 [ %740, %._crit_edge ], [ %720, %.preheader277 ]
  %745 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pre-phi
  %746 = load i32, ptr %745, align 4, !tbaa !5
  %747 = xor i32 %746, -1
  store i32 %747, ptr %745, align 4, !tbaa !5
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds [4 x i8], ptr %138, i64 %748
  store i32 %744, ptr %749, align 4, !tbaa !5
  br label %757

750:                                              ; preds = %757
  %751 = getelementptr inbounds [4 x i8], ptr %1, i64 %759
  %752 = load i32, ptr %751, align 4, !tbaa !5
  %753 = xor i32 %752, -1
  store i32 %753, ptr %751, align 4, !tbaa !5
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds [4 x i8], ptr %138, i64 %754
  store i32 %744, ptr %755, align 4, !tbaa !5
  %756 = icmp eq i64 %759, -2147483648
  br i1 %756, label %.loopexit, label %757, !prof !43, !llvm.loop !44, !nosanitize !10

757:                                              ; preds = %743, %750
  %758 = phi i64 [ %.pre-phi, %743 ], [ %759, %750 ]
  %759 = add nsw i64 %758, -1
  %760 = shl i64 %759, 32
  %761 = ashr exact i64 %760, 30
  %762 = getelementptr inbounds i8, ptr %1, i64 %761
  %763 = load i32, ptr %762, align 4, !tbaa !5
  %764 = icmp slt i32 %763, 0
  br i1 %764, label %750, label %765, !llvm.loop !44

765:                                              ; preds = %757
  %766 = trunc i64 %759 to i32
  %767 = zext nneg i32 %763 to i64
  %768 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %767
  store i32 %744, ptr %768, align 4, !tbaa !5
  %769 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %766, i32 -1)
  %770 = extractvalue { i32, i1 } %769, 1, !nosanitize !10
  br i1 %770, label %.loopexit, label %771, !prof !11, !nosanitize !10

771:                                              ; preds = %765
  %772 = extractvalue { i32, i1 } %769, 0, !nosanitize !10
  %773 = icmp sgt i32 %772, -1
  br i1 %773, label %.preheader277, label %.loopexit278, !llvm.loop !45

.loopexit278:                                     ; preds = %771, %738, %.preheader276.preheader._crit_edge
  %774 = icmp samesign ult i32 %78, 65536
  br i1 %774, label %794, label %775

775:                                              ; preds = %.loopexit278
  %776 = icmp samesign ult i32 %78, 16777216
  br i1 %776, label %786, label %777

777:                                              ; preds = %775
  %778 = lshr i32 %78, 24
  %779 = zext nneg i32 %778 to i64
  %780 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %779
  %781 = load i32, ptr %780, align 4, !tbaa !5
  %782 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %781, i32 24), !nosanitize !10
  %783 = extractvalue { i32, i1 } %782, 0, !nosanitize !10
  %784 = extractvalue { i32, i1 } %782, 1, !nosanitize !10
  br i1 %784, label %785, label %807, !prof !11, !nosanitize !10

785:                                              ; preds = %796, %786, %777
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

786:                                              ; preds = %775
  %787 = lshr i32 %78, 16
  %788 = zext nneg i32 %787 to i64
  %789 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %788
  %790 = load i32, ptr %789, align 4, !tbaa !5
  %791 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %790, i32 16), !nosanitize !10
  %792 = extractvalue { i32, i1 } %791, 0, !nosanitize !10
  %793 = extractvalue { i32, i1 } %791, 1, !nosanitize !10
  br i1 %793, label %785, label %807, !prof !11, !nosanitize !10

794:                                              ; preds = %.loopexit278
  %795 = icmp samesign ult i32 %78, 256
  br i1 %795, label %804, label %796

796:                                              ; preds = %794
  %797 = lshr i32 %78, 8
  %798 = zext nneg i32 %797 to i64
  %799 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %798
  %800 = load i32, ptr %799, align 4, !tbaa !5
  %801 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %800, i32 8), !nosanitize !10
  %802 = extractvalue { i32, i1 } %801, 0, !nosanitize !10
  %803 = extractvalue { i32, i1 } %801, 1, !nosanitize !10
  br i1 %803, label %785, label %807, !prof !11, !nosanitize !10

804:                                              ; preds = %794
  %805 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %135
  %806 = load i32, ptr %805, align 4, !tbaa !5
  br label %807

807:                                              ; preds = %804, %796, %786, %777
  %808 = phi i32 [ %783, %777 ], [ %792, %786 ], [ %802, %796 ], [ %806, %804 ]
  %809 = add i32 %808, 1073741824
  %810 = icmp sgt i32 %809, -1
  br i1 %810, label %812, label %811, !prof !22, !nosanitize !10

811:                                              ; preds = %807
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

812:                                              ; preds = %807
  %813 = sub nsw i32 0, %78
  %814 = load i32, ptr %1, align 4, !tbaa !5
  %815 = icmp sgt i32 %814, %813
  br i1 %815, label %816, label %.loopexit274

816:                                              ; preds = %812
  %817 = getelementptr i8, ptr %138, i64 4
  %818 = shl nsw i32 %808, 1
  %819 = sdiv i32 %818, 3
  %820 = getelementptr i8, ptr %1, i64 4
  %821 = ptrtoint ptr %138 to i64
  %822 = ptrtoint ptr %1 to i64
  br label %823

823:                                              ; preds = %2782, %816
  %824 = phi i32 [ %814, %816 ], [ %2784, %2782 ]
  %825 = phi ptr [ %817, %816 ], [ %2783, %2782 ]
  %826 = phi i32 [ %819, %816 ], [ %2779, %2782 ]
  %827 = phi i32 [ %78, %816 ], [ %2778, %2782 ]
  %828 = ptrtoint ptr %825 to i64
  %829 = sub i64 %828, %821
  %830 = ashr i64 %829, 2
  %831 = add nsw i64 %830, 2147483648
  %832 = icmp ult i64 %831, 4294967296
  %833 = shl i64 %829, 30
  %834 = ashr i64 %833, 32
  %835 = sub nsw i64 0, %834
  br i1 %832, label %.preheader267, label %.preheader271

.preheader267:                                    ; preds = %823, %2644
  %836 = phi i32 [ %2650, %2644 ], [ %824, %823 ]
  %837 = phi i32 [ %2649, %2644 ], [ %827, %823 ]
  %838 = phi i32 [ %2648, %2644 ], [ %826, %823 ]
  %839 = phi ptr [ %2647, %2644 ], [ %1, %823 ]
  %840 = phi i32 [ %2646, %2644 ], [ 0, %823 ]
  %841 = phi i32 [ %2645, %2644 ], [ 0, %823 ]
  %842 = icmp slt i32 %836, 0
  br i1 %842, label %2630, label %843

843:                                              ; preds = %.preheader267
  %844 = icmp eq i32 %840, 0
  br i1 %844, label %848, label %845

845:                                              ; preds = %843
  %846 = sext i32 %840 to i64
  %847 = getelementptr inbounds [4 x i8], ptr %839, i64 %846
  store i32 %840, ptr %847, align 4, !tbaa !5
  br label %848

848:                                              ; preds = %845, %843
  %849 = zext nneg i32 %836 to i64
  %850 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %849
  %851 = load i32, ptr %850, align 4, !tbaa !5
  %852 = sext i32 %851 to i64
  %853 = getelementptr [4 x i8], ptr %820, i64 %852
  %854 = ptrtoint ptr %853 to i64
  %855 = ptrtoint ptr %839 to i64
  %856 = sub i64 %854, %855
  %857 = icmp sgt i64 %856, 4
  br i1 %857, label %861, label %858

858:                                              ; preds = %848
  %859 = icmp eq i64 %856, 4
  %860 = sext i1 %859 to i32
  br label %2638

861:                                              ; preds = %848
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %862 = icmp samesign ult i64 %856, 8589934592
  br i1 %862, label %863, label %2681

863:                                              ; preds = %861
  %864 = icmp samesign ult i64 %856, 262144
  br i1 %864, label %881, label %865

865:                                              ; preds = %863
  %866 = icmp samesign ult i64 %856, 67108864
  br i1 %866, label %874, label %867

867:                                              ; preds = %865
  %868 = lshr i64 %856, 26
  %869 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %868
  %870 = load i32, ptr %869, align 4, !tbaa !5
  %871 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %870, i32 24), !nosanitize !10
  %872 = extractvalue { i32, i1 } %871, 0, !nosanitize !10
  %873 = extractvalue { i32, i1 } %871, 1, !nosanitize !10
  br i1 %873, label %2682, label %.preheader2115, !prof !11, !nosanitize !10

874:                                              ; preds = %865
  %875 = lshr i64 %856, 18
  %876 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %875
  %877 = load i32, ptr %876, align 4, !tbaa !5
  %878 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %877, i32 16), !nosanitize !10
  %879 = extractvalue { i32, i1 } %878, 0, !nosanitize !10
  %880 = extractvalue { i32, i1 } %878, 1, !nosanitize !10
  br i1 %880, label %2682, label %.preheader2115, !prof !11, !nosanitize !10

881:                                              ; preds = %863
  %882 = icmp samesign ult i64 %856, 1024
  br i1 %882, label %890, label %883

883:                                              ; preds = %881
  %884 = lshr i64 %856, 10
  %885 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %884
  %886 = load i32, ptr %885, align 4, !tbaa !5
  %887 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %886, i32 8), !nosanitize !10
  %888 = extractvalue { i32, i1 } %887, 0, !nosanitize !10
  %889 = extractvalue { i32, i1 } %887, 1, !nosanitize !10
  br i1 %889, label %2682, label %.preheader2115, !prof !11, !nosanitize !10

890:                                              ; preds = %881
  %891 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %856
  %892 = load i32, ptr %891, align 4, !tbaa !5
  br label %.preheader2115

.preheader2115:                                   ; preds = %890, %883, %874, %867
  %.ph2116 = phi i32 [ %872, %867 ], [ %879, %874 ], [ %888, %883 ], [ %892, %890 ]
  br label %893

893:                                              ; preds = %.preheader2115, %2619
  %894 = phi i32 [ %2620, %2619 ], [ 0, %.preheader2115 ]
  %895 = phi i32 [ %2621, %2619 ], [ %837, %.preheader2115 ]
  %896 = phi i32 [ %2622, %2619 ], [ %838, %.preheader2115 ]
  %897 = phi ptr [ %2629, %2619 ], [ undef, %.preheader2115 ]
  %898 = phi ptr [ %2623, %2619 ], [ %853, %.preheader2115 ]
  %899 = phi ptr [ %2624, %2619 ], [ %839, %.preheader2115 ]
  %900 = phi ptr [ %2625, %2619 ], [ %825, %.preheader2115 ]
  %901 = phi i32 [ %2626, %2619 ], [ %.ph2116, %.preheader2115 ]
  %902 = phi i32 [ %2627, %2619 ], [ 0, %.preheader2115 ]
  %903 = phi i32 [ %2628, %2619 ], [ -1, %.preheader2115 ]
  %904 = icmp slt i32 %901, 0
  br i1 %904, label %1829, label %905

905:                                              ; preds = %893
  %906 = ptrtoint ptr %898 to i64
  %907 = ptrtoint ptr %899 to i64
  %908 = sub i64 %906, %907
  %909 = freeze i64 %908
  %910 = ashr i64 %909, 2
  %911 = icmp slt i64 %910, 9
  %912 = trunc nuw nsw i64 %910 to i32
  %913 = and i32 %912, 1
  %914 = icmp eq i32 %913, 0
  %915 = add nsw i32 %912, -1
  %916 = lshr i32 %915, 1
  %917 = zext nneg i32 %916 to i64
  %918 = getelementptr inbounds nuw [4 x i8], ptr %899, i64 %917
  %919 = zext nneg i32 %915 to i64
  %920 = getelementptr inbounds nuw [4 x i8], ptr %899, i64 %919
  %921 = getelementptr inbounds i8, ptr %898, i64 -4
  %922 = icmp ult ptr %899, %921
  br i1 %911, label %1784, label %923

923:                                              ; preds = %905
  %924 = icmp samesign ult i64 %910, 2147483648
  %925 = icmp eq i32 %901, 0
  br i1 %924, label %926, label %2683

926:                                              ; preds = %923
  br i1 %925, label %1609, label %927

927:                                              ; preds = %926
  store ptr %897, ptr %7, align 8
  %928 = add nsw i32 %901, -1
  %929 = lshr i64 %910, 1
  %930 = getelementptr inbounds nuw [4 x i8], ptr %899, i64 %929
  %931 = icmp samesign ult i64 %910, 513
  br i1 %931, label %1060, label %932

932:                                              ; preds = %927
  %933 = lshr i32 %912, 3
  %934 = zext nneg i32 %933 to i64
  %935 = getelementptr inbounds nuw [4 x i8], ptr %899, i64 %934
  %936 = shl nuw nsw i32 %933, 1
  %937 = zext nneg i32 %936 to i64
  %938 = getelementptr inbounds nuw [4 x i8], ptr %899, i64 %937
  %939 = load i32, ptr %899, align 4, !tbaa !5
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds [4 x i8], ptr %900, i64 %940
  %942 = load i32, ptr %941, align 4, !tbaa !5
  %943 = load i32, ptr %935, align 4, !tbaa !5
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds [4 x i8], ptr %900, i64 %944
  %946 = load i32, ptr %945, align 4, !tbaa !5
  %947 = icmp sgt i32 %942, %946
  %948 = select i1 %947, i32 %939, i32 %943
  %949 = select i1 %947, ptr %899, ptr %935
  %950 = sext i32 %948 to i64
  %951 = getelementptr inbounds [4 x i8], ptr %900, i64 %950
  %952 = load i32, ptr %951, align 4, !tbaa !5
  %953 = load i32, ptr %938, align 4, !tbaa !5
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds [4 x i8], ptr %900, i64 %954
  %956 = load i32, ptr %955, align 4, !tbaa !5
  %957 = icmp sgt i32 %952, %956
  br i1 %957, label %958, label %966

958:                                              ; preds = %932
  %959 = select i1 %947, i32 %943, i32 %939
  %960 = select i1 %947, ptr %935, ptr %899
  %961 = sext i32 %959 to i64
  %962 = getelementptr inbounds [4 x i8], ptr %900, i64 %961
  %963 = load i32, ptr %962, align 4, !tbaa !5
  %964 = icmp sgt i32 %963, %956
  %965 = select i1 %964, ptr %960, ptr %938
  br label %966

966:                                              ; preds = %958, %932
  %967 = phi ptr [ %965, %958 ], [ %949, %932 ]
  %968 = sub nsw i64 0, %934
  %969 = getelementptr inbounds [4 x i8], ptr %930, i64 %968
  %970 = getelementptr inbounds nuw [4 x i8], ptr %930, i64 %934
  %971 = load i32, ptr %969, align 4, !tbaa !5
  %972 = sext i32 %971 to i64
  %973 = getelementptr inbounds [4 x i8], ptr %900, i64 %972
  %974 = load i32, ptr %973, align 4, !tbaa !5
  %975 = load i32, ptr %930, align 4, !tbaa !5
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds [4 x i8], ptr %900, i64 %976
  %978 = load i32, ptr %977, align 4, !tbaa !5
  %979 = icmp sgt i32 %974, %978
  %980 = select i1 %979, i32 %971, i32 %975
  %981 = select i1 %979, ptr %969, ptr %930
  %982 = sext i32 %980 to i64
  %983 = getelementptr inbounds [4 x i8], ptr %900, i64 %982
  %984 = load i32, ptr %983, align 4, !tbaa !5
  %985 = load i32, ptr %970, align 4, !tbaa !5
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds [4 x i8], ptr %900, i64 %986
  %988 = load i32, ptr %987, align 4, !tbaa !5
  %989 = icmp sgt i32 %984, %988
  br i1 %989, label %990, label %998

990:                                              ; preds = %966
  %991 = select i1 %979, i32 %975, i32 %971
  %992 = select i1 %979, ptr %930, ptr %969
  %993 = sext i32 %991 to i64
  %994 = getelementptr inbounds [4 x i8], ptr %900, i64 %993
  %995 = load i32, ptr %994, align 4, !tbaa !5
  %996 = icmp sgt i32 %995, %988
  %997 = select i1 %996, ptr %992, ptr %970
  br label %998

998:                                              ; preds = %990, %966
  %999 = phi ptr [ %997, %990 ], [ %981, %966 ]
  %1000 = sub nsw i64 0, %937
  %1001 = getelementptr inbounds [4 x i8], ptr %921, i64 %1000
  %1002 = getelementptr inbounds [4 x i8], ptr %921, i64 %968
  %1003 = load i32, ptr %1001, align 4, !tbaa !5
  %1004 = sext i32 %1003 to i64
  %1005 = getelementptr inbounds [4 x i8], ptr %900, i64 %1004
  %1006 = load i32, ptr %1005, align 4, !tbaa !5
  %1007 = load i32, ptr %1002, align 4, !tbaa !5
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds [4 x i8], ptr %900, i64 %1008
  %1010 = load i32, ptr %1009, align 4, !tbaa !5
  %1011 = icmp sgt i32 %1006, %1010
  %1012 = select i1 %1011, i32 %1003, i32 %1007
  %1013 = select i1 %1011, ptr %1001, ptr %1002
  %1014 = sext i32 %1012 to i64
  %1015 = getelementptr inbounds [4 x i8], ptr %900, i64 %1014
  %1016 = load i32, ptr %1015, align 4, !tbaa !5
  %1017 = load i32, ptr %921, align 4, !tbaa !5
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds [4 x i8], ptr %900, i64 %1018
  %1020 = load i32, ptr %1019, align 4, !tbaa !5
  %1021 = icmp sgt i32 %1016, %1020
  br i1 %1021, label %1022, label %1034

1022:                                             ; preds = %998
  %1023 = select i1 %1011, i32 %1007, i32 %1003
  %1024 = select i1 %1011, ptr %1002, ptr %1001
  %1025 = sext i32 %1023 to i64
  %1026 = getelementptr inbounds [4 x i8], ptr %900, i64 %1025
  %1027 = load i32, ptr %1026, align 4, !tbaa !5
  %1028 = icmp sgt i32 %1027, %1020
  %1029 = select i1 %1028, ptr %1024, ptr %921
  %1030 = load i32, ptr %1029, align 4, !tbaa !5
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds [4 x i8], ptr %900, i64 %1031
  %1033 = load i32, ptr %1032, align 4, !tbaa !5
  br label %1034

1034:                                             ; preds = %1022, %998
  %1035 = phi i32 [ %1016, %998 ], [ %1033, %1022 ]
  %1036 = phi ptr [ %1013, %998 ], [ %1029, %1022 ]
  %1037 = load i32, ptr %967, align 4, !tbaa !5
  %1038 = sext i32 %1037 to i64
  %1039 = getelementptr inbounds [4 x i8], ptr %900, i64 %1038
  %1040 = load i32, ptr %1039, align 4, !tbaa !5
  %1041 = load i32, ptr %999, align 4, !tbaa !5
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds [4 x i8], ptr %900, i64 %1042
  %1044 = load i32, ptr %1043, align 4, !tbaa !5
  %1045 = icmp sgt i32 %1040, %1044
  %1046 = select i1 %1045, i32 %1037, i32 %1041
  %1047 = select i1 %1045, ptr %967, ptr %999
  %1048 = sext i32 %1046 to i64
  %1049 = getelementptr inbounds [4 x i8], ptr %900, i64 %1048
  %1050 = load i32, ptr %1049, align 4, !tbaa !5
  %1051 = icmp sgt i32 %1050, %1035
  br i1 %1051, label %1052, label %1161

1052:                                             ; preds = %1034
  %1053 = select i1 %1045, i32 %1041, i32 %1037
  %1054 = select i1 %1045, ptr %999, ptr %967
  %1055 = sext i32 %1053 to i64
  %1056 = getelementptr inbounds [4 x i8], ptr %900, i64 %1055
  %1057 = load i32, ptr %1056, align 4, !tbaa !5
  %1058 = icmp sgt i32 %1057, %1035
  %1059 = select i1 %1058, ptr %1054, ptr %1036
  br label %1161

1060:                                             ; preds = %927
  %1061 = icmp samesign ult i64 %910, 33
  br i1 %1061, label %1133, label %1062

1062:                                             ; preds = %1060
  %1063 = lshr i64 %910, 2
  %1064 = getelementptr inbounds nuw [4 x i8], ptr %899, i64 %1063
  %1065 = sub nsw i64 0, %1063
  %1066 = getelementptr inbounds [4 x i8], ptr %921, i64 %1065
  %1067 = load i32, ptr %1064, align 4, !tbaa !5
  %1068 = sext i32 %1067 to i64
  %1069 = getelementptr inbounds [4 x i8], ptr %900, i64 %1068
  %1070 = load i32, ptr %1069, align 4, !tbaa !5
  %1071 = load i32, ptr %930, align 4, !tbaa !5
  %1072 = sext i32 %1071 to i64
  %1073 = getelementptr inbounds [4 x i8], ptr %900, i64 %1072
  %1074 = load i32, ptr %1073, align 4, !tbaa !5
  %1075 = icmp sgt i32 %1070, %1074
  %1076 = select i1 %1075, i32 %1071, i32 %1067
  %1077 = select i1 %1075, ptr %930, ptr %1064
  %1078 = select i1 %1075, ptr %1064, ptr %930
  %1079 = load i32, ptr %1066, align 4, !tbaa !5
  %1080 = sext i32 %1079 to i64
  %1081 = getelementptr inbounds [4 x i8], ptr %900, i64 %1080
  %1082 = load i32, ptr %1081, align 4, !tbaa !5
  %1083 = load i32, ptr %921, align 4, !tbaa !5
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds [4 x i8], ptr %900, i64 %1084
  %1086 = load i32, ptr %1085, align 4, !tbaa !5
  %1087 = icmp sgt i32 %1082, %1086
  %1088 = select i1 %1087, i32 %1083, i32 %1079
  %1089 = select i1 %1087, ptr %921, ptr %1066
  %1090 = select i1 %1087, ptr %1066, ptr %921
  %1091 = sext i32 %1076 to i64
  %1092 = getelementptr inbounds [4 x i8], ptr %900, i64 %1091
  %1093 = load i32, ptr %1092, align 4, !tbaa !5
  %1094 = sext i32 %1088 to i64
  %1095 = getelementptr inbounds [4 x i8], ptr %900, i64 %1094
  %1096 = load i32, ptr %1095, align 4, !tbaa !5
  %1097 = icmp sgt i32 %1093, %1096
  %1098 = select i1 %1097, ptr %1090, ptr %1078
  %1099 = select i1 %1097, ptr %1077, ptr %1089
  %1100 = select i1 %1097, ptr %1078, ptr %1090
  %1101 = load i32, ptr %899, align 4, !tbaa !5
  %1102 = sext i32 %1101 to i64
  %1103 = getelementptr inbounds [4 x i8], ptr %900, i64 %1102
  %1104 = load i32, ptr %1103, align 4, !tbaa !5
  %1105 = load i32, ptr %1098, align 4, !tbaa !5
  %1106 = sext i32 %1105 to i64
  %1107 = getelementptr inbounds [4 x i8], ptr %900, i64 %1106
  %1108 = load i32, ptr %1107, align 4, !tbaa !5
  %1109 = icmp sgt i32 %1104, %1108
  %1110 = select i1 %1109, i32 %1105, i32 %1101
  %1111 = select i1 %1109, ptr %1098, ptr %899
  %1112 = select i1 %1109, ptr %899, ptr %1098
  %1113 = sext i32 %1110 to i64
  %1114 = getelementptr inbounds [4 x i8], ptr %900, i64 %1113
  %1115 = load i32, ptr %1114, align 4, !tbaa !5
  %1116 = load i32, ptr %1099, align 4, !tbaa !5
  %1117 = sext i32 %1116 to i64
  %1118 = getelementptr inbounds [4 x i8], ptr %900, i64 %1117
  %1119 = load i32, ptr %1118, align 4, !tbaa !5
  %1120 = icmp sgt i32 %1115, %1119
  %1121 = select i1 %1120, ptr %1100, ptr %1112
  %1122 = select i1 %1120, ptr %1111, ptr %1099
  %1123 = load i32, ptr %1121, align 4, !tbaa !5
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds [4 x i8], ptr %900, i64 %1124
  %1126 = load i32, ptr %1125, align 4, !tbaa !5
  %1127 = load i32, ptr %1122, align 4, !tbaa !5
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds [4 x i8], ptr %900, i64 %1128
  %1130 = load i32, ptr %1129, align 4, !tbaa !5
  %1131 = icmp sgt i32 %1126, %1130
  %1132 = select i1 %1131, ptr %1122, ptr %1121
  br label %1161

1133:                                             ; preds = %1060
  %1134 = load i32, ptr %899, align 4, !tbaa !5
  %1135 = sext i32 %1134 to i64
  %1136 = getelementptr inbounds [4 x i8], ptr %900, i64 %1135
  %1137 = load i32, ptr %1136, align 4, !tbaa !5
  %1138 = load i32, ptr %930, align 4, !tbaa !5
  %1139 = sext i32 %1138 to i64
  %1140 = getelementptr inbounds [4 x i8], ptr %900, i64 %1139
  %1141 = load i32, ptr %1140, align 4, !tbaa !5
  %1142 = icmp sgt i32 %1137, %1141
  %1143 = select i1 %1142, i32 %1134, i32 %1138
  %1144 = select i1 %1142, ptr %899, ptr %930
  %1145 = sext i32 %1143 to i64
  %1146 = getelementptr inbounds [4 x i8], ptr %900, i64 %1145
  %1147 = load i32, ptr %1146, align 4, !tbaa !5
  %1148 = load i32, ptr %921, align 4, !tbaa !5
  %1149 = sext i32 %1148 to i64
  %1150 = getelementptr inbounds [4 x i8], ptr %900, i64 %1149
  %1151 = load i32, ptr %1150, align 4, !tbaa !5
  %1152 = icmp sgt i32 %1147, %1151
  br i1 %1152, label %1153, label %1161

1153:                                             ; preds = %1133
  %1154 = select i1 %1142, i32 %1138, i32 %1134
  %1155 = select i1 %1142, ptr %930, ptr %899
  %1156 = sext i32 %1154 to i64
  %1157 = getelementptr inbounds [4 x i8], ptr %900, i64 %1156
  %1158 = load i32, ptr %1157, align 4, !tbaa !5
  %1159 = icmp sgt i32 %1158, %1151
  %1160 = select i1 %1159, ptr %1155, ptr %921
  br label %1161

1161:                                             ; preds = %1153, %1133, %1062, %1052, %1034
  %1162 = phi i32 [ %1101, %1062 ], [ %1134, %1153 ], [ %1134, %1133 ], [ %939, %1052 ], [ %939, %1034 ]
  %1163 = phi ptr [ %1132, %1062 ], [ %1160, %1153 ], [ %1144, %1133 ], [ %1059, %1052 ], [ %1047, %1034 ]
  store ptr %1163, ptr %7, align 8, !tbaa !46
  %1164 = load i32, ptr %1163, align 4, !tbaa !5
  store i32 %1164, ptr %899, align 4, !tbaa !5
  store i32 %1162, ptr %1163, align 4, !tbaa !5
  %1165 = load i32, ptr %899, align 4, !tbaa !5
  %1166 = sext i32 %1165 to i64
  %1167 = getelementptr inbounds [4 x i8], ptr %900, i64 %1166
  %1168 = load i32, ptr %1167, align 4, !tbaa !5
  %1169 = getelementptr inbounds nuw i8, ptr %899, i64 4
  call fastcc void @tr_partition(ptr noundef nonnull %900, ptr noundef nonnull %899, ptr noundef nonnull %1169, ptr noundef nonnull %898, ptr noundef %7, ptr noundef %8, i32 noundef %1168)
  %1170 = load ptr, ptr %8, align 8, !tbaa !46
  %1171 = load ptr, ptr %7, align 8, !tbaa !46
  %1172 = ptrtoint ptr %1170 to i64
  %1173 = ptrtoint ptr %1171 to i64
  %1174 = sub i64 %1172, %1173
  %1175 = ashr exact i64 %1174, 2
  %1176 = icmp eq i64 %910, %1175
  br i1 %1176, label %1532, label %1177

1177:                                             ; preds = %1161
  %1178 = load i32, ptr %1171, align 4, !tbaa !5
  %1179 = sext i32 %1178 to i64
  %1180 = getelementptr inbounds [4 x i8], ptr %138, i64 %1179
  %1181 = load i32, ptr %1180, align 4, !tbaa !5
  %1182 = icmp eq i32 %1181, %1168
  br i1 %1182, label %1217, label %1183

1183:                                             ; preds = %1177
  %1184 = add nsw i64 %1175, 2147483648
  %1185 = icmp ult i64 %1184, 4294967296
  br i1 %1185, label %1186, label %2730

1186:                                             ; preds = %1183
  %1187 = icmp ult i64 %1175, 65536
  br i1 %1187, label %1205, label %1188

1188:                                             ; preds = %1186
  %1189 = icmp ult i64 %1175, 16777216
  br i1 %1189, label %1198, label %1190

1190:                                             ; preds = %1188
  %1191 = lshr i64 %1175, 24
  %1192 = and i64 %1191, 255
  %1193 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1192
  %1194 = load i32, ptr %1193, align 4, !tbaa !5
  %1195 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1194, i32 24), !nosanitize !10
  %1196 = extractvalue { i32, i1 } %1195, 0, !nosanitize !10
  %1197 = extractvalue { i32, i1 } %1195, 1, !nosanitize !10
  br i1 %1197, label %2731, label %1217, !prof !11, !nosanitize !10

1198:                                             ; preds = %1188
  %1199 = lshr i64 %1175, 16
  %1200 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1199
  %1201 = load i32, ptr %1200, align 4, !tbaa !5
  %1202 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1201, i32 16), !nosanitize !10
  %1203 = extractvalue { i32, i1 } %1202, 0, !nosanitize !10
  %1204 = extractvalue { i32, i1 } %1202, 1, !nosanitize !10
  br i1 %1204, label %2731, label %1217, !prof !11, !nosanitize !10

1205:                                             ; preds = %1186
  %1206 = icmp samesign ult i64 %1175, 256
  br i1 %1206, label %1214, label %1207

1207:                                             ; preds = %1205
  %1208 = lshr i64 %1175, 8
  %1209 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1208
  %1210 = load i32, ptr %1209, align 4, !tbaa !5
  %1211 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1210, i32 8), !nosanitize !10
  %1212 = extractvalue { i32, i1 } %1211, 0, !nosanitize !10
  %1213 = extractvalue { i32, i1 } %1211, 1, !nosanitize !10
  br i1 %1213, label %2731, label %1217, !prof !11, !nosanitize !10

1214:                                             ; preds = %1205
  %1215 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %1174
  %1216 = load i32, ptr %1215, align 4, !tbaa !5
  br label %1217

1217:                                             ; preds = %1214, %1207, %1198, %1190, %1177
  %1218 = phi i32 [ -1, %1177 ], [ %1196, %1190 ], [ %1203, %1198 ], [ %1212, %1207 ], [ %1216, %1214 ]
  %1219 = sub i64 %1173, %822
  %1220 = ashr exact i64 %1219, 2
  %1221 = add nsw i64 %1220, 2147483647
  %1222 = icmp ult i64 %1221, 4294967296
  br i1 %1222, label %1223, label %2732

1223:                                             ; preds = %1217
  %1224 = trunc i64 %1220 to i32
  %1225 = add i32 %1224, -1
  %1226 = icmp ult ptr %899, %1171
  br i1 %1226, label %.preheader265, label %.loopexit266

.preheader265:                                    ; preds = %1223, %.preheader265
  %1227 = phi ptr [ %1231, %.preheader265 ], [ %899, %1223 ]
  %1228 = load i32, ptr %1227, align 4, !tbaa !5
  %1229 = sext i32 %1228 to i64
  %1230 = getelementptr inbounds [4 x i8], ptr %138, i64 %1229
  store i32 %1225, ptr %1230, align 4, !tbaa !5
  %1231 = getelementptr inbounds nuw i8, ptr %1227, i64 4
  %1232 = icmp ult ptr %1231, %1171
  br i1 %1232, label %.preheader265, label %.loopexit266, !llvm.loop !49

.loopexit266:                                     ; preds = %.preheader265, %1223
  %1233 = icmp ult ptr %1170, %898
  br i1 %1233, label %1234, label %.loopexit264

1234:                                             ; preds = %.loopexit266
  %1235 = sub i64 %1172, %822
  %1236 = ashr exact i64 %1235, 2
  %1237 = add nsw i64 %1236, 2147483647
  %1238 = icmp ult i64 %1237, 4294967296
  br i1 %1238, label %1239, label %2733

1239:                                             ; preds = %1234
  %1240 = trunc i64 %1236 to i32
  %1241 = add i32 %1240, -1
  %1242 = icmp ult ptr %1171, %1170
  br i1 %1242, label %.preheader263, label %.loopexit264

.preheader263:                                    ; preds = %1239, %.preheader263
  %1243 = phi ptr [ %1247, %.preheader263 ], [ %1171, %1239 ]
  %1244 = load i32, ptr %1243, align 4, !tbaa !5
  %1245 = sext i32 %1244 to i64
  %1246 = getelementptr inbounds [4 x i8], ptr %138, i64 %1245
  store i32 %1241, ptr %1246, align 4, !tbaa !5
  %1247 = getelementptr inbounds nuw i8, ptr %1243, i64 4
  %1248 = icmp ult ptr %1247, %1170
  br i1 %1248, label %.preheader263, label %.loopexit264, !llvm.loop !50

.loopexit264:                                     ; preds = %.preheader263, %1239, %.loopexit266
  %1249 = icmp sgt i64 %1175, 1
  br i1 %1249, label %1250, label %1456

1250:                                             ; preds = %.loopexit264
  %1251 = icmp samesign ult i64 %1175, 2147483648
  br i1 %1251, label %1252, label %2734

1252:                                             ; preds = %1250
  %1253 = trunc nuw nsw i64 %1175 to i32
  %1254 = icmp slt i32 %895, %1253
  br i1 %1254, label %1257, label %1255

1255:                                             ; preds = %1252
  %1256 = sub nsw i32 %895, %1253
  br label %1269

1257:                                             ; preds = %1252
  %1258 = icmp eq i32 %896, 0
  br i1 %1258, label %1451, label %1259

1259:                                             ; preds = %1257
  %1260 = sub nsw i32 %78, %1253
  %1261 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %895, i32 %1260), !nosanitize !10
  %1262 = extractvalue { i32, i1 } %1261, 1, !nosanitize !10
  br i1 %1262, label %2736, label %1263, !prof !11, !nosanitize !10

1263:                                             ; preds = %1259
  %1264 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %896, i32 -1)
  %1265 = extractvalue { i32, i1 } %1264, 1, !nosanitize !10
  br i1 %1265, label %2735, label %1266, !prof !11, !nosanitize !10

1266:                                             ; preds = %1263
  %1267 = extractvalue { i32, i1 } %1261, 0, !nosanitize !10
  %1268 = extractvalue { i32, i1 } %1264, 0, !nosanitize !10
  br label %1269

1269:                                             ; preds = %1266, %1255
  %1270 = phi i32 [ %1267, %1266 ], [ %1256, %1255 ]
  %1271 = phi i32 [ %1268, %1266 ], [ %896, %1255 ]
  %1272 = sub i64 %1173, %907
  %1273 = ashr exact i64 %1272, 2
  %1274 = sub i64 %906, %1172
  %1275 = ashr exact i64 %1274, 2
  %1276 = icmp sgt i64 %1273, %1275
  br i1 %1276, label %1364, label %1277

1277:                                             ; preds = %1269
  %1278 = icmp sgt i64 %1275, %1175
  br i1 %1278, label %1314, label %1279

1279:                                             ; preds = %1277
  %1280 = icmp sgt i64 %1273, 1
  br i1 %1280, label %1296, label %1281

1281:                                             ; preds = %1279
  %1282 = icmp sgt i64 %1275, 1
  br i1 %1282, label %1285, label %1283

1283:                                             ; preds = %1281
  %1284 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  br label %2619

1285:                                             ; preds = %1281
  %1286 = icmp slt i32 %902, 64
  br i1 %1286, label %1287, label %2739

1287:                                             ; preds = %1285
  %1288 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  %1289 = sext i32 %902 to i64
  %1290 = getelementptr inbounds [32 x i8], ptr %6, i64 %1289
  store ptr %1288, ptr %1290, align 16, !tbaa !51
  %1291 = getelementptr inbounds nuw i8, ptr %1290, i64 8
  store ptr %1171, ptr %1291, align 8, !tbaa !53
  %1292 = getelementptr inbounds nuw i8, ptr %1290, i64 16
  store ptr %1170, ptr %1292, align 16, !tbaa !54
  %1293 = getelementptr inbounds nuw i8, ptr %1290, i64 24
  store i32 %1218, ptr %1293, align 8, !tbaa !55
  %1294 = add nsw i32 %902, 1
  %1295 = getelementptr inbounds nuw i8, ptr %1290, i64 28
  store i32 %903, ptr %1295, align 4, !tbaa !56
  br label %2619

1296:                                             ; preds = %1279
  %1297 = icmp slt i32 %902, 64
  br i1 %1297, label %1298, label %2737

1298:                                             ; preds = %1296
  %1299 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  %1300 = sext i32 %902 to i64
  %1301 = getelementptr inbounds [32 x i8], ptr %6, i64 %1300
  store ptr %1299, ptr %1301, align 16, !tbaa !51
  %1302 = getelementptr inbounds nuw i8, ptr %1301, i64 8
  store ptr %1171, ptr %1302, align 8, !tbaa !53
  %1303 = getelementptr inbounds nuw i8, ptr %1301, i64 16
  store ptr %1170, ptr %1303, align 16, !tbaa !54
  %1304 = getelementptr inbounds nuw i8, ptr %1301, i64 24
  store i32 %1218, ptr %1304, align 8, !tbaa !55
  %1305 = getelementptr inbounds nuw i8, ptr %1301, i64 28
  store i32 %903, ptr %1305, align 4, !tbaa !56
  %1306 = icmp eq i32 %902, 63
  br i1 %1306, label %2738, label %1307

1307:                                             ; preds = %1298
  %1308 = getelementptr i8, ptr %1301, i64 32
  store ptr %900, ptr %1308, align 16, !tbaa !51
  %1309 = getelementptr i8, ptr %1301, i64 40
  store ptr %1170, ptr %1309, align 8, !tbaa !53
  %1310 = getelementptr i8, ptr %1301, i64 48
  store ptr %898, ptr %1310, align 16, !tbaa !54
  %1311 = getelementptr i8, ptr %1301, i64 56
  store i32 %928, ptr %1311, align 8, !tbaa !55
  %1312 = add nsw i32 %902, 2
  %1313 = getelementptr i8, ptr %1301, i64 60
  store i32 %903, ptr %1313, align 4, !tbaa !56
  br label %2619

1314:                                             ; preds = %1277
  %1315 = icmp sgt i64 %1273, %1175
  br i1 %1315, label %1346, label %1316

1316:                                             ; preds = %1314
  %1317 = icmp sgt i64 %1273, 1
  %1318 = icmp slt i32 %902, 64
  br i1 %1317, label %1329, label %1319

1319:                                             ; preds = %1316
  br i1 %1318, label %1320, label %2742

1320:                                             ; preds = %1319
  %1321 = sext i32 %902 to i64
  %1322 = getelementptr inbounds [32 x i8], ptr %6, i64 %1321
  store ptr %900, ptr %1322, align 16, !tbaa !51
  %1323 = getelementptr inbounds nuw i8, ptr %1322, i64 8
  store ptr %1170, ptr %1323, align 8, !tbaa !53
  %1324 = getelementptr inbounds nuw i8, ptr %1322, i64 16
  store ptr %898, ptr %1324, align 16, !tbaa !54
  %1325 = getelementptr inbounds nuw i8, ptr %1322, i64 24
  store i32 %928, ptr %1325, align 8, !tbaa !55
  %1326 = add nsw i32 %902, 1
  %1327 = getelementptr inbounds nuw i8, ptr %1322, i64 28
  store i32 %903, ptr %1327, align 4, !tbaa !56
  %1328 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  br label %2619

1329:                                             ; preds = %1316
  br i1 %1318, label %1330, label %2740

1330:                                             ; preds = %1329
  %1331 = sext i32 %902 to i64
  %1332 = getelementptr inbounds [32 x i8], ptr %6, i64 %1331
  store ptr %900, ptr %1332, align 16, !tbaa !51
  %1333 = getelementptr inbounds nuw i8, ptr %1332, i64 8
  store ptr %1170, ptr %1333, align 8, !tbaa !53
  %1334 = getelementptr inbounds nuw i8, ptr %1332, i64 16
  store ptr %898, ptr %1334, align 16, !tbaa !54
  %1335 = getelementptr inbounds nuw i8, ptr %1332, i64 24
  store i32 %928, ptr %1335, align 8, !tbaa !55
  %1336 = getelementptr inbounds nuw i8, ptr %1332, i64 28
  store i32 %903, ptr %1336, align 4, !tbaa !56
  %1337 = icmp eq i32 %902, 63
  br i1 %1337, label %2741, label %1338

1338:                                             ; preds = %1330
  %1339 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  %1340 = getelementptr i8, ptr %1332, i64 32
  store ptr %1339, ptr %1340, align 16, !tbaa !51
  %1341 = getelementptr i8, ptr %1332, i64 40
  store ptr %1171, ptr %1341, align 8, !tbaa !53
  %1342 = getelementptr i8, ptr %1332, i64 48
  store ptr %1170, ptr %1342, align 16, !tbaa !54
  %1343 = getelementptr i8, ptr %1332, i64 56
  store i32 %1218, ptr %1343, align 8, !tbaa !55
  %1344 = add nsw i32 %902, 2
  %1345 = getelementptr i8, ptr %1332, i64 60
  store i32 %903, ptr %1345, align 4, !tbaa !56
  br label %2619

1346:                                             ; preds = %1314
  %1347 = icmp slt i32 %902, 64
  br i1 %1347, label %1348, label %2743

1348:                                             ; preds = %1346
  %1349 = sext i32 %902 to i64
  %1350 = getelementptr inbounds [32 x i8], ptr %6, i64 %1349
  store ptr %900, ptr %1350, align 16, !tbaa !51
  %1351 = getelementptr inbounds nuw i8, ptr %1350, i64 8
  store ptr %1170, ptr %1351, align 8, !tbaa !53
  %1352 = getelementptr inbounds nuw i8, ptr %1350, i64 16
  store ptr %898, ptr %1352, align 16, !tbaa !54
  %1353 = getelementptr inbounds nuw i8, ptr %1350, i64 24
  store i32 %928, ptr %1353, align 8, !tbaa !55
  %1354 = getelementptr inbounds nuw i8, ptr %1350, i64 28
  store i32 %903, ptr %1354, align 4, !tbaa !56
  %1355 = icmp eq i32 %902, 63
  br i1 %1355, label %2744, label %1356

1356:                                             ; preds = %1348
  %1357 = getelementptr i8, ptr %1350, i64 32
  store ptr %900, ptr %1357, align 16, !tbaa !51
  %1358 = getelementptr i8, ptr %1350, i64 40
  store ptr %899, ptr %1358, align 8, !tbaa !53
  %1359 = getelementptr i8, ptr %1350, i64 48
  store ptr %1171, ptr %1359, align 16, !tbaa !54
  %1360 = getelementptr i8, ptr %1350, i64 56
  store i32 %928, ptr %1360, align 8, !tbaa !55
  %1361 = add nsw i32 %902, 2
  %1362 = getelementptr i8, ptr %1350, i64 60
  store i32 %903, ptr %1362, align 4, !tbaa !56
  %1363 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  br label %2619

1364:                                             ; preds = %1269
  %1365 = icmp sgt i64 %1273, %1175
  br i1 %1365, label %1401, label %1366

1366:                                             ; preds = %1364
  %1367 = icmp sgt i64 %1275, 1
  br i1 %1367, label %1383, label %1368

1368:                                             ; preds = %1366
  %1369 = icmp sgt i64 %1273, 1
  br i1 %1369, label %1372, label %1370

1370:                                             ; preds = %1368
  %1371 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  br label %2619

1372:                                             ; preds = %1368
  %1373 = icmp slt i32 %902, 64
  br i1 %1373, label %1374, label %2747

1374:                                             ; preds = %1372
  %1375 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  %1376 = sext i32 %902 to i64
  %1377 = getelementptr inbounds [32 x i8], ptr %6, i64 %1376
  store ptr %1375, ptr %1377, align 16, !tbaa !51
  %1378 = getelementptr inbounds nuw i8, ptr %1377, i64 8
  store ptr %1171, ptr %1378, align 8, !tbaa !53
  %1379 = getelementptr inbounds nuw i8, ptr %1377, i64 16
  store ptr %1170, ptr %1379, align 16, !tbaa !54
  %1380 = getelementptr inbounds nuw i8, ptr %1377, i64 24
  store i32 %1218, ptr %1380, align 8, !tbaa !55
  %1381 = add nsw i32 %902, 1
  %1382 = getelementptr inbounds nuw i8, ptr %1377, i64 28
  store i32 %903, ptr %1382, align 4, !tbaa !56
  br label %2619

1383:                                             ; preds = %1366
  %1384 = icmp slt i32 %902, 64
  br i1 %1384, label %1385, label %2745

1385:                                             ; preds = %1383
  %1386 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  %1387 = sext i32 %902 to i64
  %1388 = getelementptr inbounds [32 x i8], ptr %6, i64 %1387
  store ptr %1386, ptr %1388, align 16, !tbaa !51
  %1389 = getelementptr inbounds nuw i8, ptr %1388, i64 8
  store ptr %1171, ptr %1389, align 8, !tbaa !53
  %1390 = getelementptr inbounds nuw i8, ptr %1388, i64 16
  store ptr %1170, ptr %1390, align 16, !tbaa !54
  %1391 = getelementptr inbounds nuw i8, ptr %1388, i64 24
  store i32 %1218, ptr %1391, align 8, !tbaa !55
  %1392 = getelementptr inbounds nuw i8, ptr %1388, i64 28
  store i32 %903, ptr %1392, align 4, !tbaa !56
  %1393 = icmp eq i32 %902, 63
  br i1 %1393, label %2746, label %1394

1394:                                             ; preds = %1385
  %1395 = getelementptr i8, ptr %1388, i64 32
  store ptr %900, ptr %1395, align 16, !tbaa !51
  %1396 = getelementptr i8, ptr %1388, i64 40
  store ptr %899, ptr %1396, align 8, !tbaa !53
  %1397 = getelementptr i8, ptr %1388, i64 48
  store ptr %1171, ptr %1397, align 16, !tbaa !54
  %1398 = getelementptr i8, ptr %1388, i64 56
  store i32 %928, ptr %1398, align 8, !tbaa !55
  %1399 = add nsw i32 %902, 2
  %1400 = getelementptr i8, ptr %1388, i64 60
  store i32 %903, ptr %1400, align 4, !tbaa !56
  br label %2619

1401:                                             ; preds = %1364
  %1402 = icmp sgt i64 %1275, %1175
  br i1 %1402, label %1433, label %1403

1403:                                             ; preds = %1401
  %1404 = icmp sgt i64 %1275, 1
  %1405 = icmp slt i32 %902, 64
  br i1 %1404, label %1416, label %1406

1406:                                             ; preds = %1403
  br i1 %1405, label %1407, label %2750

1407:                                             ; preds = %1406
  %1408 = sext i32 %902 to i64
  %1409 = getelementptr inbounds [32 x i8], ptr %6, i64 %1408
  store ptr %900, ptr %1409, align 16, !tbaa !51
  %1410 = getelementptr inbounds nuw i8, ptr %1409, i64 8
  store ptr %899, ptr %1410, align 8, !tbaa !53
  %1411 = getelementptr inbounds nuw i8, ptr %1409, i64 16
  store ptr %1171, ptr %1411, align 16, !tbaa !54
  %1412 = getelementptr inbounds nuw i8, ptr %1409, i64 24
  store i32 %928, ptr %1412, align 8, !tbaa !55
  %1413 = add nsw i32 %902, 1
  %1414 = getelementptr inbounds nuw i8, ptr %1409, i64 28
  store i32 %903, ptr %1414, align 4, !tbaa !56
  %1415 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  br label %2619

1416:                                             ; preds = %1403
  br i1 %1405, label %1417, label %2748

1417:                                             ; preds = %1416
  %1418 = sext i32 %902 to i64
  %1419 = getelementptr inbounds [32 x i8], ptr %6, i64 %1418
  store ptr %900, ptr %1419, align 16, !tbaa !51
  %1420 = getelementptr inbounds nuw i8, ptr %1419, i64 8
  store ptr %899, ptr %1420, align 8, !tbaa !53
  %1421 = getelementptr inbounds nuw i8, ptr %1419, i64 16
  store ptr %1171, ptr %1421, align 16, !tbaa !54
  %1422 = getelementptr inbounds nuw i8, ptr %1419, i64 24
  store i32 %928, ptr %1422, align 8, !tbaa !55
  %1423 = getelementptr inbounds nuw i8, ptr %1419, i64 28
  store i32 %903, ptr %1423, align 4, !tbaa !56
  %1424 = icmp eq i32 %902, 63
  br i1 %1424, label %2749, label %1425

1425:                                             ; preds = %1417
  %1426 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  %1427 = getelementptr i8, ptr %1419, i64 32
  store ptr %1426, ptr %1427, align 16, !tbaa !51
  %1428 = getelementptr i8, ptr %1419, i64 40
  store ptr %1171, ptr %1428, align 8, !tbaa !53
  %1429 = getelementptr i8, ptr %1419, i64 48
  store ptr %1170, ptr %1429, align 16, !tbaa !54
  %1430 = getelementptr i8, ptr %1419, i64 56
  store i32 %1218, ptr %1430, align 8, !tbaa !55
  %1431 = add nsw i32 %902, 2
  %1432 = getelementptr i8, ptr %1419, i64 60
  store i32 %903, ptr %1432, align 4, !tbaa !56
  br label %2619

1433:                                             ; preds = %1401
  %1434 = icmp slt i32 %902, 64
  br i1 %1434, label %1435, label %2751

1435:                                             ; preds = %1433
  %1436 = sext i32 %902 to i64
  %1437 = getelementptr inbounds [32 x i8], ptr %6, i64 %1436
  store ptr %900, ptr %1437, align 16, !tbaa !51
  %1438 = getelementptr inbounds nuw i8, ptr %1437, i64 8
  store ptr %899, ptr %1438, align 8, !tbaa !53
  %1439 = getelementptr inbounds nuw i8, ptr %1437, i64 16
  store ptr %1171, ptr %1439, align 16, !tbaa !54
  %1440 = getelementptr inbounds nuw i8, ptr %1437, i64 24
  store i32 %928, ptr %1440, align 8, !tbaa !55
  %1441 = getelementptr inbounds nuw i8, ptr %1437, i64 28
  store i32 %903, ptr %1441, align 4, !tbaa !56
  %1442 = icmp eq i32 %902, 63
  br i1 %1442, label %2752, label %1443

1443:                                             ; preds = %1435
  %1444 = getelementptr i8, ptr %1437, i64 32
  store ptr %900, ptr %1444, align 16, !tbaa !51
  %1445 = getelementptr i8, ptr %1437, i64 40
  store ptr %1170, ptr %1445, align 8, !tbaa !53
  %1446 = getelementptr i8, ptr %1437, i64 48
  store ptr %898, ptr %1446, align 16, !tbaa !54
  %1447 = getelementptr i8, ptr %1437, i64 56
  store i32 %928, ptr %1447, align 8, !tbaa !55
  %1448 = add nsw i32 %902, 2
  %1449 = getelementptr i8, ptr %1437, i64 60
  store i32 %903, ptr %1449, align 4, !tbaa !56
  %1450 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  br label %2619

1451:                                             ; preds = %1257
  %1452 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %894, i32 %1253), !nosanitize !10
  %1453 = extractvalue { i32, i1 } %1452, 1, !nosanitize !10
  br i1 %1453, label %2736, label %1454, !prof !11, !nosanitize !10

1454:                                             ; preds = %1451
  %1455 = extractvalue { i32, i1 } %1452, 0, !nosanitize !10
  br label %1456

1456:                                             ; preds = %1454, %.loopexit264
  %1457 = phi i32 [ %1455, %1454 ], [ %894, %.loopexit264 ]
  %1458 = icmp sgt i64 %1174, 4
  %1459 = icmp sgt i32 %903, -1
  %1460 = select i1 %1458, i1 %1459, i1 false
  br i1 %1460, label %1461, label %1464

1461:                                             ; preds = %1456
  %1462 = zext nneg i32 %903 to i64
  %.split = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1462
  %1463 = getelementptr inbounds nuw i8, ptr %.split, i64 24
  store i32 -1, ptr %1463, align 8, !tbaa !55
  br label %1464

1464:                                             ; preds = %1461, %1456
  %1465 = sub i64 %1173, %907
  %1466 = ashr exact i64 %1465, 2
  %1467 = sub i64 %906, %1172
  %1468 = ashr exact i64 %1467, 2
  %1469 = icmp sgt i64 %1466, %1468
  br i1 %1469, label %1501, label %1470

1470:                                             ; preds = %1464
  %1471 = icmp sgt i64 %1466, 1
  br i1 %1471, label %1491, label %1472

1472:                                             ; preds = %1470
  %1473 = icmp sgt i64 %1468, 1
  br i1 %1473, label %2619, label %1474

1474:                                             ; preds = %1472
  %1475 = icmp sgt i32 %902, -1
  br i1 %1475, label %1476, label %2754

1476:                                             ; preds = %1474
  %1477 = icmp eq i32 %902, 0
  br i1 %1477, label %2602, label %1478

1478:                                             ; preds = %1476
  %1479 = add nsw i32 %902, -1
  %1480 = zext nneg i32 %1479 to i64
  %1481 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1480
  %1482 = load ptr, ptr %1481, align 16, !tbaa !51
  %1483 = getelementptr inbounds nuw i8, ptr %1481, i64 8
  %1484 = load ptr, ptr %1483, align 8, !tbaa !53
  %1485 = getelementptr inbounds nuw i8, ptr %1481, i64 16
  %1486 = load ptr, ptr %1485, align 16, !tbaa !54
  %1487 = getelementptr inbounds nuw i8, ptr %1481, i64 24
  %1488 = load i32, ptr %1487, align 8, !tbaa !55
  %1489 = getelementptr inbounds nuw i8, ptr %1481, i64 28
  %1490 = load i32, ptr %1489, align 4, !tbaa !56
  br label %2619

1491:                                             ; preds = %1470
  %1492 = icmp slt i32 %902, 64
  br i1 %1492, label %1493, label %2753

1493:                                             ; preds = %1491
  %1494 = sext i32 %902 to i64
  %1495 = getelementptr inbounds [32 x i8], ptr %6, i64 %1494
  store ptr %900, ptr %1495, align 16, !tbaa !51
  %1496 = getelementptr inbounds nuw i8, ptr %1495, i64 8
  store ptr %1170, ptr %1496, align 8, !tbaa !53
  %1497 = getelementptr inbounds nuw i8, ptr %1495, i64 16
  store ptr %898, ptr %1497, align 16, !tbaa !54
  %1498 = getelementptr inbounds nuw i8, ptr %1495, i64 24
  store i32 %928, ptr %1498, align 8, !tbaa !55
  %1499 = add nsw i32 %902, 1
  %1500 = getelementptr inbounds nuw i8, ptr %1495, i64 28
  store i32 %903, ptr %1500, align 4, !tbaa !56
  br label %2619

1501:                                             ; preds = %1464
  %1502 = icmp sgt i64 %1468, 1
  br i1 %1502, label %1522, label %1503

1503:                                             ; preds = %1501
  %1504 = icmp sgt i64 %1466, 1
  br i1 %1504, label %2619, label %1505

1505:                                             ; preds = %1503
  %1506 = icmp sgt i32 %902, -1
  br i1 %1506, label %1507, label %2756

1507:                                             ; preds = %1505
  %1508 = icmp eq i32 %902, 0
  br i1 %1508, label %2602, label %1509

1509:                                             ; preds = %1507
  %1510 = add nsw i32 %902, -1
  %1511 = zext nneg i32 %1510 to i64
  %1512 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1511
  %1513 = load ptr, ptr %1512, align 16, !tbaa !51
  %1514 = getelementptr inbounds nuw i8, ptr %1512, i64 8
  %1515 = load ptr, ptr %1514, align 8, !tbaa !53
  %1516 = getelementptr inbounds nuw i8, ptr %1512, i64 16
  %1517 = load ptr, ptr %1516, align 16, !tbaa !54
  %1518 = getelementptr inbounds nuw i8, ptr %1512, i64 24
  %1519 = load i32, ptr %1518, align 8, !tbaa !55
  %1520 = getelementptr inbounds nuw i8, ptr %1512, i64 28
  %1521 = load i32, ptr %1520, align 4, !tbaa !56
  br label %2619

1522:                                             ; preds = %1501
  %1523 = icmp slt i32 %902, 64
  br i1 %1523, label %1524, label %2755

1524:                                             ; preds = %1522
  %1525 = sext i32 %902 to i64
  %1526 = getelementptr inbounds [32 x i8], ptr %6, i64 %1525
  store ptr %900, ptr %1526, align 16, !tbaa !51
  %1527 = getelementptr inbounds nuw i8, ptr %1526, i64 8
  store ptr %899, ptr %1527, align 8, !tbaa !53
  %1528 = getelementptr inbounds nuw i8, ptr %1526, i64 16
  store ptr %1171, ptr %1528, align 16, !tbaa !54
  %1529 = getelementptr inbounds nuw i8, ptr %1526, i64 24
  store i32 %928, ptr %1529, align 8, !tbaa !55
  %1530 = add nsw i32 %902, 1
  %1531 = getelementptr inbounds nuw i8, ptr %1526, i64 28
  store i32 %903, ptr %1531, align 4, !tbaa !56
  br label %2619

1532:                                             ; preds = %1161
  %1533 = icmp slt i32 %895, %912
  br i1 %1533, label %1536, label %1534

1534:                                             ; preds = %1532
  %1535 = sub nsw i32 %895, %912
  br label %1548

1536:                                             ; preds = %1532
  %1537 = icmp eq i32 %896, 0
  br i1 %1537, label %1583, label %1538

1538:                                             ; preds = %1536
  %1539 = sub nsw i32 %78, %912
  %1540 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %895, i32 %1539), !nosanitize !10
  %1541 = extractvalue { i32, i1 } %1540, 1, !nosanitize !10
  br i1 %1541, label %2758, label %1542, !prof !11, !nosanitize !10

1542:                                             ; preds = %1538
  %1543 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %896, i32 -1)
  %1544 = extractvalue { i32, i1 } %1543, 1, !nosanitize !10
  br i1 %1544, label %2757, label %1545, !prof !11, !nosanitize !10

1545:                                             ; preds = %1542
  %1546 = extractvalue { i32, i1 } %1540, 0, !nosanitize !10
  %1547 = extractvalue { i32, i1 } %1543, 0, !nosanitize !10
  br label %1548

1548:                                             ; preds = %1545, %1534
  %1549 = phi i32 [ %1546, %1545 ], [ %1535, %1534 ]
  %1550 = phi i32 [ %1547, %1545 ], [ %896, %1534 ]
  %1551 = icmp samesign ult i64 %910, 65536
  br i1 %1551, label %1568, label %1552

1552:                                             ; preds = %1548
  %1553 = icmp samesign ult i64 %910, 16777216
  br i1 %1553, label %1561, label %1554

1554:                                             ; preds = %1552
  %1555 = lshr i64 %910, 24
  %1556 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1555
  %1557 = load i32, ptr %1556, align 4, !tbaa !5
  %1558 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1557, i32 24), !nosanitize !10
  %1559 = extractvalue { i32, i1 } %1558, 0, !nosanitize !10
  %1560 = extractvalue { i32, i1 } %1558, 1, !nosanitize !10
  br i1 %1560, label %2759, label %1580, !prof !11, !nosanitize !10

1561:                                             ; preds = %1552
  %1562 = lshr i64 %910, 16
  %1563 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1562
  %1564 = load i32, ptr %1563, align 4, !tbaa !5
  %1565 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1564, i32 16), !nosanitize !10
  %1566 = extractvalue { i32, i1 } %1565, 0, !nosanitize !10
  %1567 = extractvalue { i32, i1 } %1565, 1, !nosanitize !10
  br i1 %1567, label %2759, label %1580, !prof !11, !nosanitize !10

1568:                                             ; preds = %1548
  %1569 = icmp samesign ult i64 %910, 256
  br i1 %1569, label %1577, label %1570

1570:                                             ; preds = %1568
  %1571 = lshr i64 %910, 8
  %1572 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %1571
  %1573 = load i32, ptr %1572, align 4, !tbaa !5
  %1574 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1573, i32 8), !nosanitize !10
  %1575 = extractvalue { i32, i1 } %1574, 0, !nosanitize !10
  %1576 = extractvalue { i32, i1 } %1574, 1, !nosanitize !10
  br i1 %1576, label %2759, label %1580, !prof !11, !nosanitize !10

1577:                                             ; preds = %1568
  %1578 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %910
  %1579 = load i32, ptr %1578, align 4, !tbaa !5
  br label %1580

1580:                                             ; preds = %1577, %1570, %1561, %1554
  %1581 = phi i32 [ %1559, %1554 ], [ %1566, %1561 ], [ %1575, %1570 ], [ %1579, %1577 ]
  %1582 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  br label %2619

1583:                                             ; preds = %1536
  %1584 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %894, i32 %912), !nosanitize !10
  %1585 = extractvalue { i32, i1 } %1584, 1, !nosanitize !10
  br i1 %1585, label %2758, label %1586, !prof !11, !nosanitize !10

1586:                                             ; preds = %1583
  %1587 = extractvalue { i32, i1 } %1584, 0, !nosanitize !10
  %1588 = icmp sgt i32 %903, -1
  br i1 %1588, label %1589, label %1592

1589:                                             ; preds = %1586
  %1590 = zext nneg i32 %903 to i64
  %.split220 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1590
  %1591 = getelementptr inbounds nuw i8, ptr %.split220, i64 24
  store i32 -1, ptr %1591, align 8, !tbaa !55
  br label %1592

1592:                                             ; preds = %1589, %1586
  %1593 = icmp sgt i32 %902, -1
  br i1 %1593, label %1594, label %2760

1594:                                             ; preds = %1592
  %1595 = icmp eq i32 %902, 0
  br i1 %1595, label %2602, label %1596

1596:                                             ; preds = %1594
  %1597 = add nsw i32 %902, -1
  %1598 = zext nneg i32 %1597 to i64
  %1599 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1598
  %1600 = load ptr, ptr %1599, align 16, !tbaa !51
  %1601 = getelementptr inbounds nuw i8, ptr %1599, i64 8
  %1602 = load ptr, ptr %1601, align 8, !tbaa !53
  %1603 = getelementptr inbounds nuw i8, ptr %1599, i64 16
  %1604 = load ptr, ptr %1603, align 16, !tbaa !54
  %1605 = getelementptr inbounds nuw i8, ptr %1599, i64 24
  %1606 = load i32, ptr %1605, align 8, !tbaa !55
  %1607 = getelementptr inbounds nuw i8, ptr %1599, i64 28
  %1608 = load i32, ptr %1607, align 4, !tbaa !56
  br label %2619

1609:                                             ; preds = %926
  br i1 %914, label %1612, label %1610

1610:                                             ; preds = %1609
  %1611 = lshr i64 %910, 1
  br label %1623

1612:                                             ; preds = %1609
  %1613 = load i32, ptr %918, align 4, !tbaa !5
  %1614 = sext i32 %1613 to i64
  %1615 = getelementptr inbounds [4 x i8], ptr %900, i64 %1614
  %1616 = load i32, ptr %1615, align 4, !tbaa !5
  %1617 = load i32, ptr %920, align 4, !tbaa !5
  %1618 = sext i32 %1617 to i64
  %1619 = getelementptr inbounds [4 x i8], ptr %900, i64 %1618
  %1620 = load i32, ptr %1619, align 4, !tbaa !5
  %1621 = icmp slt i32 %1616, %1620
  br i1 %1621, label %1622, label %1623

1622:                                             ; preds = %1612
  store i32 %1613, ptr %920, align 4, !tbaa !5
  store i32 %1617, ptr %918, align 4, !tbaa !5
  br label %1623

1623:                                             ; preds = %1622, %1612, %1610
  %1624 = phi i64 [ %1611, %1610 ], [ %917, %1622 ], [ %917, %1612 ]
  %1625 = phi i32 [ %912, %1610 ], [ %915, %1622 ], [ %915, %1612 ]
  br label %1626

1626:                                             ; preds = %1656, %1623
  %1627 = phi i64 [ %1624, %1623 ], [ %1628, %1656 ]
  %1628 = add nsw i64 %1627, -1
  %1629 = getelementptr inbounds nuw [4 x i8], ptr %899, i64 %1628
  %1630 = load i32, ptr %1629, align 4, !tbaa !5
  %1631 = sext i32 %1630 to i64
  %1632 = getelementptr inbounds [4 x i8], ptr %900, i64 %1631
  %1633 = load i32, ptr %1632, align 4, !tbaa !5
  %1634 = trunc nuw nsw i64 %1628 to i32
  br label %1635

1635:                                             ; preds = %1774, %1626
  %1636 = phi i32 [ %1776, %1774 ], [ %1634, %1626 ]
  %1637 = shl nsw i32 %1636, 1
  %1638 = or disjoint i32 %1637, 1
  %1639 = icmp slt i32 %1638, %1625
  br i1 %1639, label %1640, label %1656

1640:                                             ; preds = %1635
  %1641 = add nsw i32 %1637, 2
  %1642 = sext i32 %1638 to i64
  %1643 = getelementptr inbounds [4 x i8], ptr %899, i64 %1642
  %1644 = load i32, ptr %1643, align 4, !tbaa !5
  %1645 = sext i32 %1644 to i64
  %1646 = getelementptr inbounds [4 x i8], ptr %900, i64 %1645
  %1647 = load i32, ptr %1646, align 4, !tbaa !5
  %1648 = sext i32 %1641 to i64
  %1649 = getelementptr inbounds [4 x i8], ptr %899, i64 %1648
  %1650 = load i32, ptr %1649, align 4, !tbaa !5
  %1651 = sext i32 %1650 to i64
  %1652 = getelementptr inbounds [4 x i8], ptr %900, i64 %1651
  %1653 = load i32, ptr %1652, align 4, !tbaa !5
  %1654 = tail call i32 @llvm.smax.i32(i32 %1647, i32 %1653)
  %1655 = icmp sgt i32 %1654, %1633
  br i1 %1655, label %1774, label %1656

1656:                                             ; preds = %1640, %1635
  %1657 = sext i32 %1636 to i64
  %1658 = getelementptr inbounds [4 x i8], ptr %899, i64 %1657
  store i32 %1630, ptr %1658, align 4, !tbaa !5
  %1659 = icmp sgt i64 %1627, 1
  br i1 %1659, label %1626, label %1660, !llvm.loop !57

1660:                                             ; preds = %1656
  br i1 %914, label %1661, label %1694

1661:                                             ; preds = %1660
  %1662 = load i32, ptr %899, align 4, !tbaa !5
  %1663 = zext nneg i32 %1625 to i64
  %1664 = getelementptr inbounds nuw [4 x i8], ptr %899, i64 %1663
  %1665 = load i32, ptr %1664, align 4, !tbaa !5
  store i32 %1665, ptr %899, align 4, !tbaa !5
  store i32 %1662, ptr %1664, align 4, !tbaa !5
  %1666 = load i32, ptr %899, align 4, !tbaa !5
  %1667 = sext i32 %1666 to i64
  %1668 = getelementptr inbounds [4 x i8], ptr %900, i64 %1667
  %1669 = load i32, ptr %1668, align 4, !tbaa !5
  br label %1670

1670:                                             ; preds = %1764, %1661
  %1671 = phi i32 [ %1766, %1764 ], [ 0, %1661 ]
  %1672 = shl nsw i32 %1671, 1
  %1673 = or disjoint i32 %1672, 1
  %1674 = icmp slt i32 %1673, %1625
  br i1 %1674, label %1675, label %1691

1675:                                             ; preds = %1670
  %1676 = add nsw i32 %1672, 2
  %1677 = sext i32 %1673 to i64
  %1678 = getelementptr inbounds [4 x i8], ptr %899, i64 %1677
  %1679 = load i32, ptr %1678, align 4, !tbaa !5
  %1680 = sext i32 %1679 to i64
  %1681 = getelementptr inbounds [4 x i8], ptr %900, i64 %1680
  %1682 = load i32, ptr %1681, align 4, !tbaa !5
  %1683 = sext i32 %1676 to i64
  %1684 = getelementptr inbounds [4 x i8], ptr %899, i64 %1683
  %1685 = load i32, ptr %1684, align 4, !tbaa !5
  %1686 = sext i32 %1685 to i64
  %1687 = getelementptr inbounds [4 x i8], ptr %900, i64 %1686
  %1688 = load i32, ptr %1687, align 4, !tbaa !5
  %1689 = tail call i32 @llvm.smax.i32(i32 %1682, i32 %1688)
  %1690 = icmp sgt i32 %1689, %1669
  br i1 %1690, label %1764, label %1691

1691:                                             ; preds = %1675, %1670
  %1692 = sext i32 %1671 to i64
  %1693 = getelementptr inbounds [4 x i8], ptr %899, i64 %1692
  store i32 %1666, ptr %1693, align 4, !tbaa !5
  br label %1694

1694:                                             ; preds = %1691, %1660
  %1695 = add nsw i32 %1625, -1
  %1696 = zext nneg i32 %1695 to i64
  br label %1697

1697:                                             ; preds = %1726, %1694
  %1698 = phi i64 [ %1696, %1694 ], [ %1729, %1726 ]
  %1699 = load i32, ptr %899, align 4, !tbaa !5
  %1700 = getelementptr inbounds nuw [4 x i8], ptr %899, i64 %1698
  %1701 = load i32, ptr %1700, align 4, !tbaa !5
  store i32 %1701, ptr %899, align 4, !tbaa !5
  %1702 = sext i32 %1701 to i64
  %1703 = getelementptr inbounds [4 x i8], ptr %900, i64 %1702
  %1704 = load i32, ptr %1703, align 4, !tbaa !5
  br label %1705

1705:                                             ; preds = %1754, %1697
  %1706 = phi i32 [ %1756, %1754 ], [ 0, %1697 ]
  %1707 = shl nsw i32 %1706, 1
  %1708 = or disjoint i32 %1707, 1
  %1709 = sext i32 %1708 to i64
  %1710 = icmp sgt i64 %1698, %1709
  br i1 %1710, label %1711, label %1726

1711:                                             ; preds = %1705
  %1712 = add nsw i32 %1707, 2
  %1713 = getelementptr inbounds [4 x i8], ptr %899, i64 %1709
  %1714 = load i32, ptr %1713, align 4, !tbaa !5
  %1715 = sext i32 %1714 to i64
  %1716 = getelementptr inbounds [4 x i8], ptr %900, i64 %1715
  %1717 = load i32, ptr %1716, align 4, !tbaa !5
  %1718 = sext i32 %1712 to i64
  %1719 = getelementptr inbounds [4 x i8], ptr %899, i64 %1718
  %1720 = load i32, ptr %1719, align 4, !tbaa !5
  %1721 = sext i32 %1720 to i64
  %1722 = getelementptr inbounds [4 x i8], ptr %900, i64 %1721
  %1723 = load i32, ptr %1722, align 4, !tbaa !5
  %1724 = tail call i32 @llvm.smax.i32(i32 %1717, i32 %1723)
  %1725 = icmp sgt i32 %1724, %1704
  br i1 %1725, label %1754, label %1726

1726:                                             ; preds = %1711, %1705
  %1727 = sext i32 %1706 to i64
  %1728 = getelementptr inbounds [4 x i8], ptr %899, i64 %1727
  store i32 %1701, ptr %1728, align 4, !tbaa !5
  store i32 %1699, ptr %1700, align 4, !tbaa !5
  %1729 = add nsw i64 %1698, -1
  %1730 = icmp sgt i64 %1698, 1
  br i1 %1730, label %1697, label %1731, !llvm.loop !58

1731:                                             ; preds = %1726
  %1732 = load ptr, ptr %8, align 8
  br i1 %922, label %.preheader261, label %.loopexit262

.preheader261:                                    ; preds = %1731, %.loopexit236
  %1733 = phi ptr [ %1750, %.loopexit236 ], [ %921, %1731 ]
  %1734 = load i32, ptr %1733, align 4, !tbaa !5
  %1735 = sext i32 %1734 to i64
  %1736 = getelementptr inbounds [4 x i8], ptr %900, i64 %1735
  %1737 = load i32, ptr %1736, align 4, !tbaa !5
  %1738 = getelementptr inbounds i8, ptr %1733, i64 -4
  %1739 = icmp ugt ptr %899, %1738
  br i1 %1739, label %.loopexit236, label %.preheader235

.preheader235:                                    ; preds = %.preheader261, %1746
  %1740 = phi ptr [ %1748, %1746 ], [ %1738, %.preheader261 ]
  %1741 = load i32, ptr %1740, align 4, !tbaa !5
  %1742 = sext i32 %1741 to i64
  %1743 = getelementptr inbounds [4 x i8], ptr %900, i64 %1742
  %1744 = load i32, ptr %1743, align 4, !tbaa !5
  %1745 = icmp eq i32 %1744, %1737
  br i1 %1745, label %1746, label %.loopexit236

1746:                                             ; preds = %.preheader235
  %1747 = xor i32 %1741, -1
  store i32 %1747, ptr %1740, align 4, !tbaa !5
  %1748 = getelementptr inbounds i8, ptr %1740, i64 -4
  %1749 = icmp ugt ptr %899, %1748
  br i1 %1749, label %.loopexit236, label %.preheader235, !llvm.loop !59

.loopexit236:                                     ; preds = %1746, %.preheader235, %.preheader261
  %1750 = phi ptr [ %1738, %.preheader261 ], [ %1748, %1746 ], [ %1740, %.preheader235 ]
  %1751 = icmp ult ptr %899, %1750
  br i1 %1751, label %.preheader261, label %.loopexit262, !llvm.loop !60

.loopexit262:                                     ; preds = %.loopexit236, %1731
  %1752 = phi ptr [ %1732, %1731 ], [ %1750, %.loopexit236 ]
  %1753 = phi ptr [ %921, %1731 ], [ %1750, %.loopexit236 ]
  store ptr %1752, ptr %8, align 8
  br label %.loopexit260

1754:                                             ; preds = %1711
  %1755 = icmp slt i32 %1717, %1723
  %1756 = select i1 %1755, i32 %1712, i32 %1708
  %1757 = sext i32 %1756 to i64
  %1758 = getelementptr inbounds [4 x i8], ptr %899, i64 %1757
  %1759 = load i32, ptr %1758, align 4, !tbaa !5
  %1760 = sext i32 %1706 to i64
  %1761 = getelementptr inbounds [4 x i8], ptr %899, i64 %1760
  store i32 %1759, ptr %1761, align 4, !tbaa !5
  %1762 = add i32 %1756, 1073741824
  %1763 = icmp sgt i32 %1762, -1
  br i1 %1763, label %1705, label %2728, !prof !61, !llvm.loop !62, !nosanitize !10

1764:                                             ; preds = %1675
  %1765 = icmp slt i32 %1682, %1688
  %1766 = select i1 %1765, i32 %1676, i32 %1673
  %1767 = sext i32 %1766 to i64
  %1768 = getelementptr inbounds [4 x i8], ptr %899, i64 %1767
  %1769 = load i32, ptr %1768, align 4, !tbaa !5
  %1770 = sext i32 %1671 to i64
  %1771 = getelementptr inbounds [4 x i8], ptr %899, i64 %1770
  store i32 %1769, ptr %1771, align 4, !tbaa !5
  %1772 = add i32 %1766, 1073741824
  %1773 = icmp sgt i32 %1772, -1
  br i1 %1773, label %1670, label %2727, !prof !61, !llvm.loop !62, !nosanitize !10

1774:                                             ; preds = %1640
  %1775 = icmp slt i32 %1647, %1653
  %1776 = select i1 %1775, i32 %1641, i32 %1638
  %1777 = sext i32 %1776 to i64
  %1778 = getelementptr inbounds [4 x i8], ptr %899, i64 %1777
  %1779 = load i32, ptr %1778, align 4, !tbaa !5
  %1780 = sext i32 %1636 to i64
  %1781 = getelementptr inbounds [4 x i8], ptr %899, i64 %1780
  store i32 %1779, ptr %1781, align 4, !tbaa !5
  %1782 = add i32 %1776, 1073741824
  %1783 = icmp sgt i32 %1782, -1
  br i1 %1783, label %1635, label %2726, !prof !61, !llvm.loop !62, !nosanitize !10

1784:                                             ; preds = %905
  %1785 = getelementptr inbounds nuw i8, ptr %899, i64 4
  %1786 = icmp ult ptr %1785, %898
  br i1 %1786, label %.preheader258, label %.loopexit260

.preheader258:                                    ; preds = %1784, %1824
  %1787 = phi ptr [ %1826, %1824 ], [ %1785, %1784 ]
  %1788 = phi ptr [ %1787, %1824 ], [ %899, %1784 ]
  %1789 = load i32, ptr %1787, align 4, !tbaa !5
  %1790 = sext i32 %1789 to i64
  %1791 = getelementptr inbounds [4 x i8], ptr %900, i64 %1790
  %1792 = load i32, ptr %1791, align 4, !tbaa !5
  %1793 = load i32, ptr %1788, align 4, !tbaa !5
  %1794 = sext i32 %1793 to i64
  %1795 = getelementptr inbounds [4 x i8], ptr %900, i64 %1794
  %1796 = load i32, ptr %1795, align 4, !tbaa !5
  %1797 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1792, i32 %1796), !nosanitize !10
  %1798 = extractvalue { i32, i1 } %1797, 1, !nosanitize !10
  br i1 %1798, label %.loopexit234, label %.preheader232, !prof !63, !nosanitize !10

.preheader232:                                    ; preds = %.preheader258, %1812
  %1799 = phi i32 [ %1810, %1812 ], [ %1793, %.preheader258 ]
  %1800 = phi { i32, i1 } [ %1817, %1812 ], [ %1797, %.preheader258 ]
  %1801 = phi ptr [ %1807, %1812 ], [ %1788, %.preheader258 ]
  %1802 = extractvalue { i32, i1 } %1800, 0
  %1803 = icmp slt i32 %1802, 0
  br i1 %1803, label %.preheader, label %.loopexit231

.preheader:                                       ; preds = %.preheader232, %1809
  %1804 = phi i32 [ %1810, %1809 ], [ %1799, %.preheader232 ]
  %1805 = phi ptr [ %1807, %1809 ], [ %1801, %.preheader232 ]
  %1806 = getelementptr inbounds nuw i8, ptr %1805, i64 4
  store i32 %1804, ptr %1806, align 4, !tbaa !5
  %1807 = getelementptr inbounds i8, ptr %1805, i64 -4
  %1808 = icmp ugt ptr %899, %1807
  br i1 %1808, label %.loopexit231, label %1809

1809:                                             ; preds = %.preheader
  %1810 = load i32, ptr %1807, align 4, !tbaa !5
  %1811 = icmp slt i32 %1810, 0
  br i1 %1811, label %.preheader, label %1812, !llvm.loop !64

1812:                                             ; preds = %1809
  %1813 = load i32, ptr %1791, align 4, !tbaa !5
  %1814 = zext nneg i32 %1810 to i64
  %1815 = getelementptr inbounds nuw [4 x i8], ptr %900, i64 %1814
  %1816 = load i32, ptr %1815, align 4, !tbaa !5
  %1817 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1813, i32 %1816), !nosanitize !10
  %1818 = extractvalue { i32, i1 } %1817, 1, !nosanitize !10
  br i1 %1818, label %.loopexit234, label %.preheader232, !prof !65, !llvm.loop !64, !nosanitize !10

.loopexit231:                                     ; preds = %.preheader232, %.preheader
  %1819 = phi ptr [ %1807, %.preheader ], [ %1801, %.preheader232 ]
  %1820 = icmp eq i32 %1802, 0
  br i1 %1820, label %1821, label %1824

1821:                                             ; preds = %.loopexit231
  %1822 = load i32, ptr %1819, align 4, !tbaa !5
  %1823 = xor i32 %1822, -1
  store i32 %1823, ptr %1819, align 4, !tbaa !5
  br label %1824

1824:                                             ; preds = %1821, %.loopexit231
  %1825 = getelementptr inbounds nuw i8, ptr %1819, i64 4
  store i32 %1789, ptr %1825, align 4, !tbaa !5
  %1826 = getelementptr inbounds nuw i8, ptr %1787, i64 4
  %1827 = icmp ult ptr %1826, %898
  br i1 %1827, label %.preheader258, label %.loopexit260, !llvm.loop !66

.loopexit260:                                     ; preds = %1824, %1784, %.loopexit262
  %1828 = phi ptr [ %897, %1784 ], [ %1753, %.loopexit262 ], [ %897, %1824 ]
  store ptr %1828, ptr %7, align 8
  br label %2393

1829:                                             ; preds = %893
  store ptr %897, ptr %7, align 8
  switch i32 %901, label %2393 [
    i32 -1, label %2064
    i32 -2, label %1830
  ]

1830:                                             ; preds = %1829
  %1831 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %902, i32 -1)
  %1832 = extractvalue { i32, i1 } %1831, 0, !nosanitize !10
  %1833 = extractvalue { i32, i1 } %1831, 1, !nosanitize !10
  br i1 %1833, label %2684, label %1834, !prof !11, !nosanitize !10

1834:                                             ; preds = %1830
  %1835 = sext i32 %1832 to i64
  %1836 = getelementptr inbounds [32 x i8], ptr %6, i64 %1835
  %1837 = getelementptr inbounds nuw i8, ptr %1836, i64 8
  %1838 = load ptr, ptr %1837, align 8, !tbaa !53
  store ptr %1838, ptr %7, align 8, !tbaa !46
  %1839 = getelementptr inbounds nuw i8, ptr %1836, i64 16
  %1840 = load ptr, ptr %1839, align 16, !tbaa !54
  store ptr %1840, ptr %8, align 8, !tbaa !46
  %1841 = getelementptr inbounds nuw i8, ptr %1836, i64 24
  %1842 = load i32, ptr %1841, align 8, !tbaa !55
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %1975, label %1844

1844:                                             ; preds = %1834
  %1845 = icmp sgt i32 %903, -1
  br i1 %1845, label %1846, label %1849

1846:                                             ; preds = %1844
  %1847 = zext nneg i32 %903 to i64
  %.split221 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %1847
  %1848 = getelementptr inbounds nuw i8, ptr %.split221, i64 24
  store i32 -1, ptr %1848, align 8, !tbaa !55
  br label %1849

1849:                                             ; preds = %1846, %1844
  %1850 = ptrtoint ptr %900 to i64
  %1851 = sub i64 %1850, %821
  %1852 = ashr exact i64 %1851, 2
  %1853 = add nsw i64 %1852, 2147483648
  %1854 = icmp ult i64 %1853, 4294967296
  br i1 %1854, label %1855, label %2708

1855:                                             ; preds = %1849
  %1856 = trunc nsw i64 %1852 to i32
  %1857 = ptrtoint ptr %1840 to i64
  %1858 = sub i64 %1857, %822
  %1859 = ashr exact i64 %1858, 2
  %1860 = add nsw i64 %1859, 2147483647
  %1861 = icmp ult i64 %1860, 4294967296
  br i1 %1861, label %1862, label %2709

1862:                                             ; preds = %1855
  %1863 = trunc i64 %1859 to i32
  %1864 = add i32 %1863, -1
  %1865 = getelementptr inbounds i8, ptr %1838, i64 -4
  %1866 = icmp ugt ptr %899, %1865
  br i1 %1866, label %.loopexit257, label %.preheader255

.preheader255:                                    ; preds = %1862, %1900
  %1867 = phi i32 [ %1903, %1900 ], [ -1, %1862 ]
  %1868 = phi i32 [ %1902, %1900 ], [ -1, %1862 ]
  %1869 = phi ptr [ %1904, %1900 ], [ %899, %1862 ]
  %1870 = phi ptr [ %1901, %1900 ], [ %1865, %1862 ]
  %1871 = load i32, ptr %1869, align 4, !tbaa !5
  %1872 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1871, i32 %1856), !nosanitize !10
  %1873 = extractvalue { i32, i1 } %1872, 0, !nosanitize !10
  %1874 = extractvalue { i32, i1 } %1872, 1, !nosanitize !10
  br i1 %1874, label %.loopexit251, label %1875, !prof !11, !nosanitize !10

1875:                                             ; preds = %.preheader255
  %1876 = icmp sgt i32 %1873, -1
  br i1 %1876, label %1877, label %1900

1877:                                             ; preds = %1875
  %1878 = zext nneg i32 %1873 to i64
  %1879 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %1878
  %1880 = load i32, ptr %1879, align 4, !tbaa !5
  %1881 = icmp eq i32 %1880, %1864
  br i1 %1881, label %1882, label %1900

1882:                                             ; preds = %1877
  %1883 = getelementptr inbounds nuw i8, ptr %1870, i64 4
  store i32 %1873, ptr %1883, align 4, !tbaa !5
  %1884 = add i32 %1873, %1856
  %1885 = sext i32 %1884 to i64
  %1886 = getelementptr inbounds [4 x i8], ptr %138, i64 %1885
  %1887 = load i32, ptr %1886, align 4, !tbaa !5
  %1888 = icmp eq i32 %1868, %1887
  br i1 %1888, label %1897, label %1889

1889:                                             ; preds = %1882
  %1890 = ptrtoint ptr %1883 to i64
  %1891 = sub i64 %1890, %822
  %1892 = ashr exact i64 %1891, 2
  %1893 = add nsw i64 %1892, 2147483648
  %1894 = icmp ult i64 %1893, 4294967296
  br i1 %1894, label %1895, label %2710

1895:                                             ; preds = %1889
  %1896 = trunc nsw i64 %1892 to i32
  br label %1897

1897:                                             ; preds = %1895, %1882
  %1898 = phi i32 [ %1887, %1895 ], [ %1868, %1882 ]
  %1899 = phi i32 [ %1896, %1895 ], [ %1867, %1882 ]
  store i32 %1899, ptr %1879, align 4, !tbaa !5
  br label %1900

1900:                                             ; preds = %1897, %1877, %1875
  %1901 = phi ptr [ %1883, %1897 ], [ %1870, %1877 ], [ %1870, %1875 ]
  %1902 = phi i32 [ %1898, %1897 ], [ %1868, %1877 ], [ %1868, %1875 ]
  %1903 = phi i32 [ %1899, %1897 ], [ %1867, %1877 ], [ %1867, %1875 ]
  %1904 = getelementptr inbounds nuw i8, ptr %1869, i64 4
  %1905 = icmp ugt ptr %1904, %1901
  br i1 %1905, label %.loopexit257, label %.preheader255, !llvm.loop !67

.loopexit257:                                     ; preds = %1900, %1862
  %1906 = phi ptr [ %1865, %1862 ], [ %1901, %1900 ]
  %1907 = phi i32 [ -1, %1862 ], [ %1903, %1900 ]
  %1908 = icmp ugt ptr %899, %1906
  br i1 %1908, label %.loopexit254, label %.preheader253

.preheader253:                                    ; preds = %.loopexit257, %1930
  %1909 = phi i32 [ %1927, %1930 ], [ %1907, %.loopexit257 ]
  %1910 = phi i32 [ %1926, %1930 ], [ -1, %.loopexit257 ]
  %1911 = phi ptr [ %1931, %1930 ], [ %1906, %.loopexit257 ]
  %1912 = load i32, ptr %1911, align 4, !tbaa !5
  %1913 = sext i32 %1912 to i64
  %1914 = getelementptr inbounds [4 x i8], ptr %138, i64 %1913
  %1915 = load i32, ptr %1914, align 4, !tbaa !5
  %1916 = icmp eq i32 %1910, %1915
  br i1 %1916, label %1925, label %1917

1917:                                             ; preds = %.preheader253
  %1918 = ptrtoint ptr %1911 to i64
  %1919 = sub i64 %1918, %822
  %1920 = ashr exact i64 %1919, 2
  %1921 = add nsw i64 %1920, 2147483648
  %1922 = icmp ult i64 %1921, 4294967296
  br i1 %1922, label %1923, label %2711

1923:                                             ; preds = %1917
  %1924 = trunc nsw i64 %1920 to i32
  br label %1925

1925:                                             ; preds = %1923, %.preheader253
  %1926 = phi i32 [ %1915, %1923 ], [ %1910, %.preheader253 ]
  %1927 = phi i32 [ %1924, %1923 ], [ %1909, %.preheader253 ]
  %1928 = icmp eq i32 %1927, %1915
  br i1 %1928, label %1930, label %1929

1929:                                             ; preds = %1925
  store i32 %1927, ptr %1914, align 4, !tbaa !5
  br label %1930

1930:                                             ; preds = %1929, %1925
  %1931 = getelementptr inbounds i8, ptr %1911, i64 -4
  %1932 = icmp ugt ptr %899, %1931
  br i1 %1932, label %.loopexit254, label %.preheader253, !llvm.loop !68

.loopexit254:                                     ; preds = %1930, %.loopexit257
  %1933 = phi i32 [ %1907, %.loopexit257 ], [ %1927, %1930 ]
  %1934 = getelementptr inbounds nuw i8, ptr %1906, i64 4
  %1935 = icmp ult ptr %1934, %1840
  br i1 %1935, label %.preheader250, label %.loopexit246

.preheader250:                                    ; preds = %.loopexit254, %1970
  %1936 = phi ptr [ %1940, %1970 ], [ %898, %.loopexit254 ]
  %1937 = phi i32 [ %1973, %1970 ], [ %1933, %.loopexit254 ]
  %1938 = phi i32 [ %1972, %1970 ], [ -1, %.loopexit254 ]
  %1939 = phi ptr [ %1971, %1970 ], [ %1840, %.loopexit254 ]
  %1940 = getelementptr inbounds i8, ptr %1936, i64 -4
  %1941 = load i32, ptr %1940, align 4, !tbaa !5
  %1942 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1941, i32 %1856), !nosanitize !10
  %1943 = extractvalue { i32, i1 } %1942, 0, !nosanitize !10
  %1944 = extractvalue { i32, i1 } %1942, 1, !nosanitize !10
  br i1 %1944, label %.loopexit251, label %1945, !prof !11, !nosanitize !10

1945:                                             ; preds = %.preheader250
  %1946 = icmp sgt i32 %1943, -1
  br i1 %1946, label %1947, label %1970

1947:                                             ; preds = %1945
  %1948 = zext nneg i32 %1943 to i64
  %1949 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %1948
  %1950 = load i32, ptr %1949, align 4, !tbaa !5
  %1951 = icmp eq i32 %1950, %1864
  br i1 %1951, label %1952, label %1970

1952:                                             ; preds = %1947
  %1953 = getelementptr inbounds i8, ptr %1939, i64 -4
  store i32 %1943, ptr %1953, align 4, !tbaa !5
  %1954 = add i32 %1943, %1856
  %1955 = sext i32 %1954 to i64
  %1956 = getelementptr inbounds [4 x i8], ptr %138, i64 %1955
  %1957 = load i32, ptr %1956, align 4, !tbaa !5
  %1958 = icmp eq i32 %1938, %1957
  br i1 %1958, label %1967, label %1959

1959:                                             ; preds = %1952
  %1960 = ptrtoint ptr %1953 to i64
  %1961 = sub i64 %1960, %822
  %1962 = ashr exact i64 %1961, 2
  %1963 = add nsw i64 %1962, 2147483648
  %1964 = icmp ult i64 %1963, 4294967296
  br i1 %1964, label %1965, label %2712

1965:                                             ; preds = %1959
  %1966 = trunc nsw i64 %1962 to i32
  br label %1967

1967:                                             ; preds = %1965, %1952
  %1968 = phi i32 [ %1957, %1965 ], [ %1938, %1952 ]
  %1969 = phi i32 [ %1966, %1965 ], [ %1937, %1952 ]
  store i32 %1969, ptr %1949, align 4, !tbaa !5
  br label %1970

1970:                                             ; preds = %1967, %1947, %1945
  %1971 = phi ptr [ %1953, %1967 ], [ %1939, %1947 ], [ %1939, %1945 ]
  %1972 = phi i32 [ %1968, %1967 ], [ %1938, %1947 ], [ %1938, %1945 ]
  %1973 = phi i32 [ %1969, %1967 ], [ %1937, %1947 ], [ %1937, %1945 ]
  %1974 = icmp ult ptr %1934, %1971
  br i1 %1974, label %.preheader250, label %.loopexit246, !llvm.loop !69

1975:                                             ; preds = %1834
  %1976 = ptrtoint ptr %900 to i64
  %1977 = sub i64 %1976, %821
  %1978 = ashr exact i64 %1977, 2
  %1979 = add nsw i64 %1978, 2147483648
  %1980 = icmp ult i64 %1979, 4294967296
  br i1 %1980, label %1981, label %2704

1981:                                             ; preds = %1975
  %1982 = trunc nsw i64 %1978 to i32
  %1983 = ptrtoint ptr %1840 to i64
  %1984 = sub i64 %1983, %822
  %1985 = ashr exact i64 %1984, 2
  %1986 = add nsw i64 %1985, 2147483647
  %1987 = icmp ult i64 %1986, 4294967296
  br i1 %1987, label %1988, label %2705

1988:                                             ; preds = %1981
  %1989 = trunc i64 %1985 to i32
  %1990 = add i32 %1989, -1
  %1991 = getelementptr inbounds i8, ptr %1838, i64 -4
  %1992 = icmp ugt ptr %899, %1991
  br i1 %1992, label %.loopexit249, label %.preheader247

.preheader247:                                    ; preds = %1988, %2015
  %1993 = phi ptr [ %2017, %2015 ], [ %899, %1988 ]
  %1994 = phi ptr [ %2016, %2015 ], [ %1991, %1988 ]
  %1995 = load i32, ptr %1993, align 4, !tbaa !5
  %1996 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1995, i32 %1982), !nosanitize !10
  %1997 = extractvalue { i32, i1 } %1996, 0, !nosanitize !10
  %1998 = extractvalue { i32, i1 } %1996, 1, !nosanitize !10
  br i1 %1998, label %.loopexit245, label %1999, !prof !11, !nosanitize !10

1999:                                             ; preds = %.preheader247
  %2000 = icmp sgt i32 %1997, -1
  br i1 %2000, label %2001, label %2015

2001:                                             ; preds = %1999
  %2002 = zext nneg i32 %1997 to i64
  %2003 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2002
  %2004 = load i32, ptr %2003, align 4, !tbaa !5
  %2005 = icmp eq i32 %2004, %1990
  br i1 %2005, label %2006, label %2015

2006:                                             ; preds = %2001
  %2007 = getelementptr inbounds nuw i8, ptr %1994, i64 4
  store i32 %1997, ptr %2007, align 4, !tbaa !5
  %2008 = ptrtoint ptr %2007 to i64
  %2009 = sub i64 %2008, %822
  %2010 = ashr exact i64 %2009, 2
  %2011 = add nsw i64 %2010, 2147483648
  %2012 = icmp ult i64 %2011, 4294967296
  br i1 %2012, label %2013, label %2706

2013:                                             ; preds = %2006
  %2014 = trunc nsw i64 %2010 to i32
  store i32 %2014, ptr %2003, align 4, !tbaa !5
  br label %2015

2015:                                             ; preds = %2013, %2001, %1999
  %2016 = phi ptr [ %2007, %2013 ], [ %1994, %2001 ], [ %1994, %1999 ]
  %2017 = getelementptr inbounds nuw i8, ptr %1993, i64 4
  %2018 = icmp ugt ptr %2017, %2016
  br i1 %2018, label %.loopexit249, label %.preheader247, !llvm.loop !70

.loopexit249:                                     ; preds = %2015, %1988
  %2019 = phi ptr [ %1991, %1988 ], [ %2016, %2015 ]
  %2020 = getelementptr inbounds nuw i8, ptr %2019, i64 4
  %2021 = icmp ult ptr %2020, %1840
  br i1 %2021, label %.preheader244, label %.loopexit246

.preheader244:                                    ; preds = %.loopexit249, %2045
  %2022 = phi ptr [ %2024, %2045 ], [ %898, %.loopexit249 ]
  %2023 = phi ptr [ %2046, %2045 ], [ %1840, %.loopexit249 ]
  %2024 = getelementptr inbounds i8, ptr %2022, i64 -4
  %2025 = load i32, ptr %2024, align 4, !tbaa !5
  %2026 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2025, i32 %1982), !nosanitize !10
  %2027 = extractvalue { i32, i1 } %2026, 0, !nosanitize !10
  %2028 = extractvalue { i32, i1 } %2026, 1, !nosanitize !10
  br i1 %2028, label %.loopexit245, label %2029, !prof !11, !nosanitize !10

2029:                                             ; preds = %.preheader244
  %2030 = icmp sgt i32 %2027, -1
  br i1 %2030, label %2031, label %2045

2031:                                             ; preds = %2029
  %2032 = zext nneg i32 %2027 to i64
  %2033 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2032
  %2034 = load i32, ptr %2033, align 4, !tbaa !5
  %2035 = icmp eq i32 %2034, %1990
  br i1 %2035, label %2036, label %2045

2036:                                             ; preds = %2031
  %2037 = getelementptr inbounds i8, ptr %2023, i64 -4
  store i32 %2027, ptr %2037, align 4, !tbaa !5
  %2038 = ptrtoint ptr %2037 to i64
  %2039 = sub i64 %2038, %822
  %2040 = ashr exact i64 %2039, 2
  %2041 = add nsw i64 %2040, 2147483648
  %2042 = icmp ult i64 %2041, 4294967296
  br i1 %2042, label %2043, label %2707

2043:                                             ; preds = %2036
  %2044 = trunc nsw i64 %2040 to i32
  store i32 %2044, ptr %2033, align 4, !tbaa !5
  br label %2045

2045:                                             ; preds = %2043, %2031, %2029
  %2046 = phi ptr [ %2037, %2043 ], [ %2023, %2031 ], [ %2023, %2029 ]
  %2047 = icmp ult ptr %2020, %2046
  br i1 %2047, label %.preheader244, label %.loopexit246, !llvm.loop !71

.loopexit246:                                     ; preds = %1970, %2045, %.loopexit249, %.loopexit254
  %2048 = icmp sgt i32 %1832, -1
  br i1 %2048, label %2049, label %2713

2049:                                             ; preds = %.loopexit246
  %2050 = icmp eq i32 %1832, 0
  br i1 %2050, label %2602, label %2051

2051:                                             ; preds = %2049
  %2052 = add nsw i32 %1832, -1
  %2053 = zext nneg i32 %2052 to i64
  %2054 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2053
  %2055 = load ptr, ptr %2054, align 16, !tbaa !51
  %2056 = getelementptr inbounds nuw i8, ptr %2054, i64 8
  %2057 = load ptr, ptr %2056, align 8, !tbaa !53
  %2058 = getelementptr inbounds nuw i8, ptr %2054, i64 16
  %2059 = load ptr, ptr %2058, align 16, !tbaa !54
  %2060 = getelementptr inbounds nuw i8, ptr %2054, i64 24
  %2061 = load i32, ptr %2060, align 8, !tbaa !55
  %2062 = getelementptr inbounds nuw i8, ptr %2054, i64 28
  %2063 = load i32, ptr %2062, align 4, !tbaa !56
  br label %2619

2064:                                             ; preds = %1829
  %2065 = getelementptr inbounds [4 x i8], ptr %900, i64 %835
  %2066 = ptrtoint ptr %898 to i64
  %2067 = sub i64 %2066, %822
  %2068 = ashr exact i64 %2067, 2
  %2069 = add nsw i64 %2068, 2147483647
  %2070 = icmp ult i64 %2069, 4294967296
  br i1 %2070, label %2071, label %2685

2071:                                             ; preds = %2064
  %2072 = trunc i64 %2068 to i32
  %2073 = add i32 %2072, -1
  call fastcc void @tr_partition(ptr noundef %2065, ptr noundef %899, ptr noundef %899, ptr noundef %898, ptr noundef %7, ptr noundef %8, i32 noundef %2073)
  %2074 = load ptr, ptr %7, align 8, !tbaa !46
  %2075 = icmp ult ptr %2074, %898
  br i1 %2075, label %2076, label %.loopexit243

2076:                                             ; preds = %2071
  %2077 = ptrtoint ptr %2074 to i64
  %2078 = sub i64 %2077, %822
  %2079 = ashr exact i64 %2078, 2
  %2080 = add nsw i64 %2079, 2147483647
  %2081 = icmp ult i64 %2080, 4294967296
  br i1 %2081, label %2082, label %2686

2082:                                             ; preds = %2076
  %2083 = trunc i64 %2079 to i32
  %2084 = add i32 %2083, -1
  %2085 = icmp ult ptr %899, %2074
  br i1 %2085, label %.preheader242, label %.loopexit243

.preheader242:                                    ; preds = %2082, %.preheader242
  %2086 = phi ptr [ %2090, %.preheader242 ], [ %899, %2082 ]
  %2087 = load i32, ptr %2086, align 4, !tbaa !5
  %2088 = sext i32 %2087 to i64
  %2089 = getelementptr inbounds [4 x i8], ptr %138, i64 %2088
  store i32 %2084, ptr %2089, align 4, !tbaa !5
  %2090 = getelementptr inbounds nuw i8, ptr %2086, i64 4
  %2091 = icmp ult ptr %2090, %2074
  br i1 %2091, label %.preheader242, label %.loopexit243, !llvm.loop !72

.loopexit243:                                     ; preds = %.preheader242, %2082, %2071
  %2092 = load ptr, ptr %8, align 8, !tbaa !46
  %2093 = icmp ult ptr %2092, %898
  %2094 = ptrtoint ptr %2092 to i64
  br i1 %2093, label %2095, label %.loopexit241

2095:                                             ; preds = %.loopexit243
  %2096 = sub i64 %2094, %822
  %2097 = ashr exact i64 %2096, 2
  %2098 = add nsw i64 %2097, 2147483647
  %2099 = icmp ult i64 %2098, 4294967296
  br i1 %2099, label %2100, label %2687

2100:                                             ; preds = %2095
  %2101 = trunc i64 %2097 to i32
  %2102 = add i32 %2101, -1
  %2103 = icmp ult ptr %2074, %2092
  br i1 %2103, label %.preheader240, label %.loopexit241

.preheader240:                                    ; preds = %2100, %.preheader240
  %2104 = phi ptr [ %2108, %.preheader240 ], [ %2074, %2100 ]
  %2105 = load i32, ptr %2104, align 4, !tbaa !5
  %2106 = sext i32 %2105 to i64
  %2107 = getelementptr inbounds [4 x i8], ptr %138, i64 %2106
  store i32 %2102, ptr %2107, align 4, !tbaa !5
  %2108 = getelementptr inbounds nuw i8, ptr %2104, i64 4
  %2109 = icmp ult ptr %2108, %2092
  br i1 %2109, label %.preheader240, label %.loopexit241, !llvm.loop !73

.loopexit241:                                     ; preds = %.preheader240, %2100, %.loopexit243
  %2110 = ptrtoint ptr %2074 to i64
  %2111 = sub i64 %2094, %2110
  %2112 = icmp sgt i64 %2111, 4
  br i1 %2112, label %2113, label %2130

2113:                                             ; preds = %.loopexit241
  %2114 = icmp slt i32 %902, 64
  br i1 %2114, label %2115, label %2688

2115:                                             ; preds = %2113
  %2116 = sext i32 %902 to i64
  %2117 = getelementptr inbounds [32 x i8], ptr %6, i64 %2116
  store ptr null, ptr %2117, align 16, !tbaa !51
  %2118 = getelementptr inbounds nuw i8, ptr %2117, i64 8
  store ptr %2074, ptr %2118, align 8, !tbaa !53
  %2119 = getelementptr inbounds nuw i8, ptr %2117, i64 16
  store ptr %2092, ptr %2119, align 16, !tbaa !54
  %2120 = getelementptr inbounds nuw i8, ptr %2117, i64 24
  store i32 0, ptr %2120, align 8, !tbaa !55
  %2121 = getelementptr inbounds nuw i8, ptr %2117, i64 28
  store i32 0, ptr %2121, align 4, !tbaa !56
  %2122 = icmp eq i32 %902, 63
  br i1 %2122, label %2689, label %2123

2123:                                             ; preds = %2115
  %2124 = getelementptr i8, ptr %2117, i64 32
  store ptr %2065, ptr %2124, align 16, !tbaa !51
  %2125 = getelementptr i8, ptr %2117, i64 40
  store ptr %899, ptr %2125, align 8, !tbaa !53
  %2126 = getelementptr i8, ptr %2117, i64 48
  store ptr %898, ptr %2126, align 16, !tbaa !54
  %2127 = getelementptr i8, ptr %2117, i64 56
  store i32 -2, ptr %2127, align 8, !tbaa !55
  %2128 = add nsw i32 %902, 2
  %2129 = getelementptr i8, ptr %2117, i64 60
  store i32 %903, ptr %2129, align 4, !tbaa !56
  br label %2130

2130:                                             ; preds = %2123, %.loopexit241
  %2131 = phi i32 [ %2128, %2123 ], [ %902, %.loopexit241 ]
  %2132 = phi i32 [ %902, %2123 ], [ %903, %.loopexit241 ]
  %2133 = ptrtoint ptr %899 to i64
  %2134 = sub i64 %2110, %2133
  %2135 = ashr exact i64 %2134, 2
  %2136 = sub i64 %2066, %2094
  %2137 = ashr exact i64 %2136, 2
  %2138 = icmp sgt i64 %2135, %2137
  br i1 %2138, label %2266, label %2139

2139:                                             ; preds = %2130
  %2140 = icmp sgt i64 %2135, 1
  br i1 %2140, label %2192, label %2141

2141:                                             ; preds = %2139
  %2142 = icmp sgt i64 %2137, 1
  br i1 %2142, label %2160, label %2143

2143:                                             ; preds = %2141
  %2144 = icmp sgt i32 %2131, -1
  br i1 %2144, label %2145, label %2696

2145:                                             ; preds = %2143
  %2146 = icmp eq i32 %2131, 0
  br i1 %2146, label %2602, label %2147

2147:                                             ; preds = %2145
  %2148 = add nsw i32 %2131, -1
  %2149 = zext nneg i32 %2148 to i64
  %2150 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2149
  %2151 = load ptr, ptr %2150, align 16, !tbaa !51
  %2152 = getelementptr inbounds nuw i8, ptr %2150, i64 8
  %2153 = load ptr, ptr %2152, align 8, !tbaa !53
  %2154 = getelementptr inbounds nuw i8, ptr %2150, i64 16
  %2155 = load ptr, ptr %2154, align 16, !tbaa !54
  %2156 = getelementptr inbounds nuw i8, ptr %2150, i64 24
  %2157 = load i32, ptr %2156, align 8, !tbaa !55
  %2158 = getelementptr inbounds nuw i8, ptr %2150, i64 28
  %2159 = load i32, ptr %2158, align 4, !tbaa !56
  br label %2619

2160:                                             ; preds = %2141
  %2161 = icmp samesign ult i64 %2137, 2147483648
  br i1 %2161, label %2162, label %2694

2162:                                             ; preds = %2160
  %2163 = icmp samesign ult i64 %2137, 65536
  br i1 %2163, label %2180, label %2164

2164:                                             ; preds = %2162
  %2165 = icmp samesign ult i64 %2137, 16777216
  br i1 %2165, label %2173, label %2166

2166:                                             ; preds = %2164
  %2167 = lshr i64 %2137, 24
  %2168 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2167
  %2169 = load i32, ptr %2168, align 4, !tbaa !5
  %2170 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2169, i32 24), !nosanitize !10
  %2171 = extractvalue { i32, i1 } %2170, 0, !nosanitize !10
  %2172 = extractvalue { i32, i1 } %2170, 1, !nosanitize !10
  br i1 %2172, label %2695, label %2619, !prof !11, !nosanitize !10

2173:                                             ; preds = %2164
  %2174 = lshr i64 %2137, 16
  %2175 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2174
  %2176 = load i32, ptr %2175, align 4, !tbaa !5
  %2177 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2176, i32 16), !nosanitize !10
  %2178 = extractvalue { i32, i1 } %2177, 0, !nosanitize !10
  %2179 = extractvalue { i32, i1 } %2177, 1, !nosanitize !10
  br i1 %2179, label %2695, label %2619, !prof !11, !nosanitize !10

2180:                                             ; preds = %2162
  %2181 = icmp samesign ult i64 %2137, 256
  br i1 %2181, label %2189, label %2182

2182:                                             ; preds = %2180
  %2183 = lshr i64 %2137, 8
  %2184 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2183
  %2185 = load i32, ptr %2184, align 4, !tbaa !5
  %2186 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2185, i32 8), !nosanitize !10
  %2187 = extractvalue { i32, i1 } %2186, 0, !nosanitize !10
  %2188 = extractvalue { i32, i1 } %2186, 1, !nosanitize !10
  br i1 %2188, label %2695, label %2619, !prof !11, !nosanitize !10

2189:                                             ; preds = %2180
  %2190 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2136
  %2191 = load i32, ptr %2190, align 4, !tbaa !5
  br label %2619

2192:                                             ; preds = %2139
  %2193 = icmp slt i32 %2131, 64
  br i1 %2193, label %2194, label %2690

2194:                                             ; preds = %2192
  %2195 = sext i32 %2131 to i64
  %2196 = getelementptr inbounds [32 x i8], ptr %6, i64 %2195
  store ptr %900, ptr %2196, align 16, !tbaa !51
  %2197 = getelementptr inbounds nuw i8, ptr %2196, i64 8
  store ptr %2092, ptr %2197, align 8, !tbaa !53
  %2198 = getelementptr inbounds nuw i8, ptr %2196, i64 16
  store ptr %898, ptr %2198, align 16, !tbaa !54
  %2199 = add nsw i64 %2137, 2147483648
  %2200 = icmp ult i64 %2199, 4294967296
  br i1 %2200, label %2201, label %2691

2201:                                             ; preds = %2194
  %2202 = icmp ult i64 %2137, 65536
  br i1 %2202, label %2220, label %2203

2203:                                             ; preds = %2201
  %2204 = icmp ult i64 %2137, 16777216
  br i1 %2204, label %2213, label %2205

2205:                                             ; preds = %2203
  %2206 = lshr i64 %2137, 24
  %2207 = and i64 %2206, 255
  %2208 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2207
  %2209 = load i32, ptr %2208, align 4, !tbaa !5
  %2210 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2209, i32 24), !nosanitize !10
  %2211 = extractvalue { i32, i1 } %2210, 0, !nosanitize !10
  %2212 = extractvalue { i32, i1 } %2210, 1, !nosanitize !10
  br i1 %2212, label %2692, label %2232, !prof !11, !nosanitize !10

2213:                                             ; preds = %2203
  %2214 = lshr i64 %2137, 16
  %2215 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2214
  %2216 = load i32, ptr %2215, align 4, !tbaa !5
  %2217 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2216, i32 16), !nosanitize !10
  %2218 = extractvalue { i32, i1 } %2217, 0, !nosanitize !10
  %2219 = extractvalue { i32, i1 } %2217, 1, !nosanitize !10
  br i1 %2219, label %2692, label %2232, !prof !11, !nosanitize !10

2220:                                             ; preds = %2201
  %2221 = icmp samesign ult i64 %2137, 256
  br i1 %2221, label %2229, label %2222

2222:                                             ; preds = %2220
  %2223 = lshr i64 %2137, 8
  %2224 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2223
  %2225 = load i32, ptr %2224, align 4, !tbaa !5
  %2226 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2225, i32 8), !nosanitize !10
  %2227 = extractvalue { i32, i1 } %2226, 0, !nosanitize !10
  %2228 = extractvalue { i32, i1 } %2226, 1, !nosanitize !10
  br i1 %2228, label %2692, label %2232, !prof !11, !nosanitize !10

2229:                                             ; preds = %2220
  %2230 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2136
  %2231 = load i32, ptr %2230, align 4, !tbaa !5
  br label %2232

2232:                                             ; preds = %2229, %2222, %2213, %2205
  %2233 = phi i32 [ %2211, %2205 ], [ %2218, %2213 ], [ %2227, %2222 ], [ %2231, %2229 ]
  %2234 = getelementptr inbounds nuw i8, ptr %2196, i64 24
  store i32 %2233, ptr %2234, align 8, !tbaa !55
  %2235 = add nsw i32 %2131, 1
  %2236 = getelementptr inbounds nuw i8, ptr %2196, i64 28
  store i32 %2132, ptr %2236, align 4, !tbaa !56
  %2237 = icmp samesign ult i64 %2135, 65536
  br i1 %2237, label %2254, label %2238

2238:                                             ; preds = %2232
  %2239 = icmp samesign ult i64 %2135, 16777216
  br i1 %2239, label %2247, label %2240

2240:                                             ; preds = %2238
  %2241 = lshr i64 %2135, 24
  %2242 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2241
  %2243 = load i32, ptr %2242, align 4, !tbaa !5
  %2244 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2243, i32 24), !nosanitize !10
  %2245 = extractvalue { i32, i1 } %2244, 0, !nosanitize !10
  %2246 = extractvalue { i32, i1 } %2244, 1, !nosanitize !10
  br i1 %2246, label %2693, label %2619, !prof !11, !nosanitize !10

2247:                                             ; preds = %2238
  %2248 = lshr i64 %2135, 16
  %2249 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2248
  %2250 = load i32, ptr %2249, align 4, !tbaa !5
  %2251 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2250, i32 16), !nosanitize !10
  %2252 = extractvalue { i32, i1 } %2251, 0, !nosanitize !10
  %2253 = extractvalue { i32, i1 } %2251, 1, !nosanitize !10
  br i1 %2253, label %2693, label %2619, !prof !11, !nosanitize !10

2254:                                             ; preds = %2232
  %2255 = icmp samesign ult i64 %2135, 256
  br i1 %2255, label %2263, label %2256

2256:                                             ; preds = %2254
  %2257 = lshr i64 %2135, 8
  %2258 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2257
  %2259 = load i32, ptr %2258, align 4, !tbaa !5
  %2260 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2259, i32 8), !nosanitize !10
  %2261 = extractvalue { i32, i1 } %2260, 0, !nosanitize !10
  %2262 = extractvalue { i32, i1 } %2260, 1, !nosanitize !10
  br i1 %2262, label %2693, label %2619, !prof !11, !nosanitize !10

2263:                                             ; preds = %2254
  %2264 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2134
  %2265 = load i32, ptr %2264, align 4, !tbaa !5
  br label %2619

2266:                                             ; preds = %2130
  %2267 = icmp sgt i64 %2137, 1
  br i1 %2267, label %2319, label %2268

2268:                                             ; preds = %2266
  %2269 = icmp sgt i64 %2135, 1
  br i1 %2269, label %2287, label %2270

2270:                                             ; preds = %2268
  %2271 = icmp sgt i32 %2131, -1
  br i1 %2271, label %2272, label %2703

2272:                                             ; preds = %2270
  %2273 = icmp eq i32 %2131, 0
  br i1 %2273, label %2602, label %2274

2274:                                             ; preds = %2272
  %2275 = add nsw i32 %2131, -1
  %2276 = zext nneg i32 %2275 to i64
  %2277 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2276
  %2278 = load ptr, ptr %2277, align 16, !tbaa !51
  %2279 = getelementptr inbounds nuw i8, ptr %2277, i64 8
  %2280 = load ptr, ptr %2279, align 8, !tbaa !53
  %2281 = getelementptr inbounds nuw i8, ptr %2277, i64 16
  %2282 = load ptr, ptr %2281, align 16, !tbaa !54
  %2283 = getelementptr inbounds nuw i8, ptr %2277, i64 24
  %2284 = load i32, ptr %2283, align 8, !tbaa !55
  %2285 = getelementptr inbounds nuw i8, ptr %2277, i64 28
  %2286 = load i32, ptr %2285, align 4, !tbaa !56
  br label %2619

2287:                                             ; preds = %2268
  %2288 = icmp samesign ult i64 %2135, 2147483648
  br i1 %2288, label %2289, label %2701

2289:                                             ; preds = %2287
  %2290 = icmp samesign ult i64 %2135, 65536
  br i1 %2290, label %2307, label %2291

2291:                                             ; preds = %2289
  %2292 = icmp samesign ult i64 %2135, 16777216
  br i1 %2292, label %2300, label %2293

2293:                                             ; preds = %2291
  %2294 = lshr i64 %2135, 24
  %2295 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2294
  %2296 = load i32, ptr %2295, align 4, !tbaa !5
  %2297 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2296, i32 24), !nosanitize !10
  %2298 = extractvalue { i32, i1 } %2297, 0, !nosanitize !10
  %2299 = extractvalue { i32, i1 } %2297, 1, !nosanitize !10
  br i1 %2299, label %2702, label %2619, !prof !11, !nosanitize !10

2300:                                             ; preds = %2291
  %2301 = lshr i64 %2135, 16
  %2302 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2301
  %2303 = load i32, ptr %2302, align 4, !tbaa !5
  %2304 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2303, i32 16), !nosanitize !10
  %2305 = extractvalue { i32, i1 } %2304, 0, !nosanitize !10
  %2306 = extractvalue { i32, i1 } %2304, 1, !nosanitize !10
  br i1 %2306, label %2702, label %2619, !prof !11, !nosanitize !10

2307:                                             ; preds = %2289
  %2308 = icmp samesign ult i64 %2135, 256
  br i1 %2308, label %2316, label %2309

2309:                                             ; preds = %2307
  %2310 = lshr i64 %2135, 8
  %2311 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2310
  %2312 = load i32, ptr %2311, align 4, !tbaa !5
  %2313 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2312, i32 8), !nosanitize !10
  %2314 = extractvalue { i32, i1 } %2313, 0, !nosanitize !10
  %2315 = extractvalue { i32, i1 } %2313, 1, !nosanitize !10
  br i1 %2315, label %2702, label %2619, !prof !11, !nosanitize !10

2316:                                             ; preds = %2307
  %2317 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2134
  %2318 = load i32, ptr %2317, align 4, !tbaa !5
  br label %2619

2319:                                             ; preds = %2266
  %2320 = icmp slt i32 %2131, 64
  br i1 %2320, label %2321, label %2697

2321:                                             ; preds = %2319
  %2322 = sext i32 %2131 to i64
  %2323 = getelementptr inbounds [32 x i8], ptr %6, i64 %2322
  store ptr %900, ptr %2323, align 16, !tbaa !51
  %2324 = getelementptr inbounds nuw i8, ptr %2323, i64 8
  store ptr %899, ptr %2324, align 8, !tbaa !53
  %2325 = getelementptr inbounds nuw i8, ptr %2323, i64 16
  store ptr %2074, ptr %2325, align 16, !tbaa !54
  %2326 = add nsw i64 %2135, 2147483648
  %2327 = icmp ult i64 %2326, 4294967296
  br i1 %2327, label %2328, label %2698

2328:                                             ; preds = %2321
  %2329 = icmp ult i64 %2135, 65536
  br i1 %2329, label %2347, label %2330

2330:                                             ; preds = %2328
  %2331 = icmp ult i64 %2135, 16777216
  br i1 %2331, label %2340, label %2332

2332:                                             ; preds = %2330
  %2333 = lshr i64 %2135, 24
  %2334 = and i64 %2333, 255
  %2335 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2334
  %2336 = load i32, ptr %2335, align 4, !tbaa !5
  %2337 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2336, i32 24), !nosanitize !10
  %2338 = extractvalue { i32, i1 } %2337, 0, !nosanitize !10
  %2339 = extractvalue { i32, i1 } %2337, 1, !nosanitize !10
  br i1 %2339, label %2699, label %2359, !prof !11, !nosanitize !10

2340:                                             ; preds = %2330
  %2341 = lshr i64 %2135, 16
  %2342 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2341
  %2343 = load i32, ptr %2342, align 4, !tbaa !5
  %2344 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2343, i32 16), !nosanitize !10
  %2345 = extractvalue { i32, i1 } %2344, 0, !nosanitize !10
  %2346 = extractvalue { i32, i1 } %2344, 1, !nosanitize !10
  br i1 %2346, label %2699, label %2359, !prof !11, !nosanitize !10

2347:                                             ; preds = %2328
  %2348 = icmp samesign ult i64 %2135, 256
  br i1 %2348, label %2356, label %2349

2349:                                             ; preds = %2347
  %2350 = lshr i64 %2135, 8
  %2351 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2350
  %2352 = load i32, ptr %2351, align 4, !tbaa !5
  %2353 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2352, i32 8), !nosanitize !10
  %2354 = extractvalue { i32, i1 } %2353, 0, !nosanitize !10
  %2355 = extractvalue { i32, i1 } %2353, 1, !nosanitize !10
  br i1 %2355, label %2699, label %2359, !prof !11, !nosanitize !10

2356:                                             ; preds = %2347
  %2357 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2134
  %2358 = load i32, ptr %2357, align 4, !tbaa !5
  br label %2359

2359:                                             ; preds = %2356, %2349, %2340, %2332
  %2360 = phi i32 [ %2338, %2332 ], [ %2345, %2340 ], [ %2354, %2349 ], [ %2358, %2356 ]
  %2361 = getelementptr inbounds nuw i8, ptr %2323, i64 24
  store i32 %2360, ptr %2361, align 8, !tbaa !55
  %2362 = add nsw i32 %2131, 1
  %2363 = getelementptr inbounds nuw i8, ptr %2323, i64 28
  store i32 %2132, ptr %2363, align 4, !tbaa !56
  %2364 = icmp samesign ult i64 %2137, 65536
  br i1 %2364, label %2381, label %2365

2365:                                             ; preds = %2359
  %2366 = icmp samesign ult i64 %2137, 16777216
  br i1 %2366, label %2374, label %2367

2367:                                             ; preds = %2365
  %2368 = lshr i64 %2137, 24
  %2369 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2368
  %2370 = load i32, ptr %2369, align 4, !tbaa !5
  %2371 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2370, i32 24), !nosanitize !10
  %2372 = extractvalue { i32, i1 } %2371, 0, !nosanitize !10
  %2373 = extractvalue { i32, i1 } %2371, 1, !nosanitize !10
  br i1 %2373, label %2700, label %2619, !prof !11, !nosanitize !10

2374:                                             ; preds = %2365
  %2375 = lshr i64 %2137, 16
  %2376 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2375
  %2377 = load i32, ptr %2376, align 4, !tbaa !5
  %2378 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2377, i32 16), !nosanitize !10
  %2379 = extractvalue { i32, i1 } %2378, 0, !nosanitize !10
  %2380 = extractvalue { i32, i1 } %2378, 1, !nosanitize !10
  br i1 %2380, label %2700, label %2619, !prof !11, !nosanitize !10

2381:                                             ; preds = %2359
  %2382 = icmp samesign ult i64 %2137, 256
  br i1 %2382, label %2390, label %2383

2383:                                             ; preds = %2381
  %2384 = lshr i64 %2137, 8
  %2385 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2384
  %2386 = load i32, ptr %2385, align 4, !tbaa !5
  %2387 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2386, i32 8), !nosanitize !10
  %2388 = extractvalue { i32, i1 } %2387, 0, !nosanitize !10
  %2389 = extractvalue { i32, i1 } %2387, 1, !nosanitize !10
  br i1 %2389, label %2700, label %2619, !prof !11, !nosanitize !10

2390:                                             ; preds = %2381
  %2391 = getelementptr inbounds nuw i8, ptr @lg_table, i64 %2136
  %2392 = load i32, ptr %2391, align 4, !tbaa !5
  br label %2619

2393:                                             ; preds = %1829, %.loopexit260
  %2394 = load i32, ptr %899, align 4, !tbaa !5
  %2395 = icmp sgt i32 %2394, -1
  br i1 %2395, label %.preheader239, label %2413

.preheader239:                                    ; preds = %2393, %2409
  %2396 = phi i32 [ %2410, %2409 ], [ %2394, %2393 ]
  %2397 = phi ptr [ %2407, %2409 ], [ %899, %2393 ]
  %2398 = ptrtoint ptr %2397 to i64
  %2399 = sub i64 %2398, %822
  %2400 = ashr exact i64 %2399, 2
  %2401 = add nsw i64 %2400, 2147483648
  %2402 = icmp ult i64 %2401, 4294967296
  br i1 %2402, label %2403, label %2714

2403:                                             ; preds = %.preheader239
  %2404 = trunc nsw i64 %2400 to i32
  %2405 = zext nneg i32 %2396 to i64
  %2406 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2405
  store i32 %2404, ptr %2406, align 4, !tbaa !5
  %2407 = getelementptr inbounds nuw i8, ptr %2397, i64 4
  %2408 = icmp ult ptr %2407, %898
  br i1 %2408, label %2409, label %2412

2409:                                             ; preds = %2403
  %2410 = load i32, ptr %2407, align 4, !tbaa !5
  %2411 = icmp sgt i32 %2410, -1
  br i1 %2411, label %.preheader239, label %2412, !llvm.loop !74

2412:                                             ; preds = %2409, %2403
  store ptr %2407, ptr %7, align 8
  br label %2413

2413:                                             ; preds = %2412, %2393
  %2414 = phi ptr [ %899, %2393 ], [ %2407, %2412 ]
  %2415 = icmp ult ptr %2414, %898
  br i1 %2415, label %2433, label %2416

2416:                                             ; preds = %2413
  %2417 = icmp sgt i32 %902, -1
  br i1 %2417, label %2418, label %2724

2418:                                             ; preds = %2416
  %2419 = icmp eq i32 %902, 0
  br i1 %2419, label %2602, label %2420

2420:                                             ; preds = %2418
  %2421 = add nsw i32 %902, -1
  %2422 = zext nneg i32 %2421 to i64
  %2423 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2422
  %2424 = load ptr, ptr %2423, align 16, !tbaa !51
  %2425 = getelementptr inbounds nuw i8, ptr %2423, i64 8
  %2426 = load ptr, ptr %2425, align 8, !tbaa !53
  %2427 = getelementptr inbounds nuw i8, ptr %2423, i64 16
  %2428 = load ptr, ptr %2427, align 16, !tbaa !54
  %2429 = getelementptr inbounds nuw i8, ptr %2423, i64 24
  %2430 = load i32, ptr %2429, align 8, !tbaa !55
  %2431 = getelementptr inbounds nuw i8, ptr %2423, i64 28
  %2432 = load i32, ptr %2431, align 4, !tbaa !56
  br label %2619

2433:                                             ; preds = %2413
  %2434 = load i32, ptr %2414, align 4, !tbaa !5
  br label %2435

2435:                                             ; preds = %2435, %2433
  %2436 = phi i32 [ %2440, %2435 ], [ %2434, %2433 ]
  %2437 = phi ptr [ %2439, %2435 ], [ %2414, %2433 ]
  %2438 = xor i32 %2436, -1
  store i32 %2438, ptr %2437, align 4, !tbaa !5
  %2439 = getelementptr inbounds nuw i8, ptr %2437, i64 4
  %2440 = load i32, ptr %2439, align 4, !tbaa !5
  %2441 = icmp slt i32 %2440, 0
  br i1 %2441, label %2435, label %2442, !llvm.loop !75

2442:                                             ; preds = %2435
  %2443 = zext nneg i32 %2440 to i64
  %2444 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2443
  %2445 = load i32, ptr %2444, align 4, !tbaa !5
  %2446 = getelementptr inbounds nuw [4 x i8], ptr %900, i64 %2443
  %2447 = load i32, ptr %2446, align 4, !tbaa !5
  %2448 = icmp eq i32 %2445, %2447
  br i1 %2448, label %2492, label %2449

2449:                                             ; preds = %2442
  %2450 = ptrtoint ptr %2439 to i64
  %2451 = ptrtoint ptr %2414 to i64
  %2452 = sub i64 %2450, %2451
  %2453 = ashr exact i64 %2452, 2
  %2454 = add nsw i64 %2453, 2147483649
  %2455 = icmp ult i64 %2454, 4294967296
  br i1 %2455, label %2456, label %2715

2456:                                             ; preds = %2449
  %2457 = trunc i64 %2453 to i32
  %2458 = add i32 %2457, 1
  %2459 = icmp ult i32 %2458, 65536
  br i1 %2459, label %2478, label %2460

2460:                                             ; preds = %2456
  %2461 = icmp ult i32 %2458, 16777216
  br i1 %2461, label %2470, label %2462

2462:                                             ; preds = %2460
  %2463 = lshr i32 %2458, 24
  %2464 = zext nneg i32 %2463 to i64
  %2465 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2464
  %2466 = load i32, ptr %2465, align 4, !tbaa !5
  %2467 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2466, i32 24), !nosanitize !10
  %2468 = extractvalue { i32, i1 } %2467, 0, !nosanitize !10
  %2469 = extractvalue { i32, i1 } %2467, 1, !nosanitize !10
  br i1 %2469, label %2716, label %2492, !prof !11, !nosanitize !10

2470:                                             ; preds = %2460
  %2471 = lshr i32 %2458, 16
  %2472 = zext nneg i32 %2471 to i64
  %2473 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2472
  %2474 = load i32, ptr %2473, align 4, !tbaa !5
  %2475 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2474, i32 16), !nosanitize !10
  %2476 = extractvalue { i32, i1 } %2475, 0, !nosanitize !10
  %2477 = extractvalue { i32, i1 } %2475, 1, !nosanitize !10
  br i1 %2477, label %2716, label %2492, !prof !11, !nosanitize !10

2478:                                             ; preds = %2456
  %2479 = icmp samesign ult i32 %2458, 256
  br i1 %2479, label %2488, label %2480

2480:                                             ; preds = %2478
  %2481 = lshr i32 %2458, 8
  %2482 = zext nneg i32 %2481 to i64
  %2483 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2482
  %2484 = load i32, ptr %2483, align 4, !tbaa !5
  %2485 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2484, i32 8), !nosanitize !10
  %2486 = extractvalue { i32, i1 } %2485, 0, !nosanitize !10
  %2487 = extractvalue { i32, i1 } %2485, 1, !nosanitize !10
  br i1 %2487, label %2716, label %2492, !prof !11, !nosanitize !10

2488:                                             ; preds = %2478
  %2489 = zext nneg i32 %2458 to i64
  %2490 = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %2489
  %2491 = load i32, ptr %2490, align 4, !tbaa !5
  br label %2492

2492:                                             ; preds = %2488, %2480, %2470, %2462, %2442
  %2493 = phi i32 [ -1, %2442 ], [ %2468, %2462 ], [ %2476, %2470 ], [ %2486, %2480 ], [ %2491, %2488 ]
  %2494 = getelementptr inbounds nuw i8, ptr %2437, i64 8
  store ptr %2494, ptr %7, align 8, !tbaa !46
  %2495 = icmp ult ptr %2494, %898
  %2496 = ptrtoint ptr %2494 to i64
  br i1 %2495, label %2497, label %2513

2497:                                             ; preds = %2492
  %2498 = sub i64 %2496, %822
  %2499 = ashr exact i64 %2498, 2
  %2500 = add nsw i64 %2499, 2147483647
  %2501 = icmp ult i64 %2500, 4294967296
  br i1 %2501, label %2502, label %2717

2502:                                             ; preds = %2497
  %2503 = trunc i64 %2499 to i32
  %2504 = add i32 %2503, -1
  %2505 = icmp ult ptr %2414, %2494
  br i1 %2505, label %.preheader237, label %.loopexit238

.preheader237:                                    ; preds = %2502, %.preheader237
  %2506 = phi ptr [ %2510, %.preheader237 ], [ %2414, %2502 ]
  %2507 = load i32, ptr %2506, align 4, !tbaa !5
  %2508 = sext i32 %2507 to i64
  %2509 = getelementptr inbounds [4 x i8], ptr %138, i64 %2508
  store i32 %2504, ptr %2509, align 4, !tbaa !5
  %2510 = getelementptr inbounds nuw i8, ptr %2506, i64 4
  %2511 = icmp ult ptr %2510, %2494
  br i1 %2511, label %.preheader237, label %.loopexit238, !llvm.loop !76

.loopexit238:                                     ; preds = %.preheader237, %2502
  %2512 = phi ptr [ %2414, %2502 ], [ %2510, %.preheader237 ]
  store ptr %2512, ptr %8, align 8
  br label %2513

2513:                                             ; preds = %.loopexit238, %2492
  %2514 = ptrtoint ptr %2414 to i64
  %2515 = sub i64 %2496, %2514
  %2516 = ashr exact i64 %2515, 2
  %2517 = add nsw i64 %2516, 2147483648
  %2518 = icmp ult i64 %2517, 4294967296
  br i1 %2518, label %2519, label %2718

2519:                                             ; preds = %2513
  %2520 = trunc nsw i64 %2516 to i32
  %2521 = icmp slt i32 %895, %2520
  br i1 %2521, label %2525, label %2522

2522:                                             ; preds = %2519
  %2523 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %895, i32 %2520), !nosanitize !10
  %2524 = extractvalue { i32, i1 } %2523, 1, !nosanitize !10
  br i1 %2524, label %2719, label %2539, !prof !11, !nosanitize !10

2525:                                             ; preds = %2519
  %2526 = icmp eq i32 %896, 0
  br i1 %2526, label %2572, label %2527

2527:                                             ; preds = %2525
  %2528 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 range(i32 1, -2147483648) %78, i32 %2520), !nosanitize !10
  %2529 = extractvalue { i32, i1 } %2528, 1, !nosanitize !10
  br i1 %2529, label %2719, label %2530, !prof !11, !nosanitize !10

2530:                                             ; preds = %2527
  %2531 = extractvalue { i32, i1 } %2528, 0, !nosanitize !10
  %2532 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %895, i32 %2531), !nosanitize !10
  %2533 = extractvalue { i32, i1 } %2532, 1, !nosanitize !10
  br i1 %2533, label %2720, label %2534, !prof !11, !nosanitize !10

2534:                                             ; preds = %2530
  %2535 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %896, i32 -1)
  %2536 = extractvalue { i32, i1 } %2535, 1, !nosanitize !10
  br i1 %2536, label %2719, label %2537, !prof !11, !nosanitize !10

2537:                                             ; preds = %2534
  %2538 = extractvalue { i32, i1 } %2535, 0, !nosanitize !10
  br label %2539

2539:                                             ; preds = %2537, %2522
  %2540 = phi { i32, i1 } [ %2532, %2537 ], [ %2523, %2522 ]
  %2541 = phi i32 [ %2538, %2537 ], [ %896, %2522 ]
  %2542 = extractvalue { i32, i1 } %2540, 0
  %2543 = ptrtoint ptr %898 to i64
  %2544 = sub i64 %2543, %2496
  %2545 = icmp sgt i64 %2515, %2544
  br i1 %2545, label %2557, label %2546

2546:                                             ; preds = %2539
  %2547 = icmp slt i32 %902, 64
  br i1 %2547, label %2548, label %2721

2548:                                             ; preds = %2546
  %2549 = sext i32 %902 to i64
  %2550 = getelementptr inbounds [32 x i8], ptr %6, i64 %2549
  store ptr %900, ptr %2550, align 16, !tbaa !51
  %2551 = getelementptr inbounds nuw i8, ptr %2550, i64 8
  store ptr %2494, ptr %2551, align 8, !tbaa !53
  %2552 = getelementptr inbounds nuw i8, ptr %2550, i64 16
  store ptr %898, ptr %2552, align 16, !tbaa !54
  %2553 = getelementptr inbounds nuw i8, ptr %2550, i64 24
  store i32 -3, ptr %2553, align 8, !tbaa !55
  %2554 = add nsw i32 %902, 1
  %2555 = getelementptr inbounds nuw i8, ptr %2550, i64 28
  store i32 %903, ptr %2555, align 4, !tbaa !56
  %2556 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  br label %2619

2557:                                             ; preds = %2539
  %2558 = icmp sgt i64 %2544, 4
  br i1 %2558, label %2561, label %2559

2559:                                             ; preds = %2557
  %2560 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  br label %2619

2561:                                             ; preds = %2557
  %2562 = icmp slt i32 %902, 64
  br i1 %2562, label %2563, label %2722

2563:                                             ; preds = %2561
  %2564 = getelementptr inbounds [4 x i8], ptr %900, i64 %834
  %2565 = sext i32 %902 to i64
  %2566 = getelementptr inbounds [32 x i8], ptr %6, i64 %2565
  store ptr %2564, ptr %2566, align 16, !tbaa !51
  %2567 = getelementptr inbounds nuw i8, ptr %2566, i64 8
  store ptr %2414, ptr %2567, align 8, !tbaa !53
  %2568 = getelementptr inbounds nuw i8, ptr %2566, i64 16
  store ptr %2494, ptr %2568, align 16, !tbaa !54
  %2569 = getelementptr inbounds nuw i8, ptr %2566, i64 24
  store i32 %2493, ptr %2569, align 8, !tbaa !55
  %2570 = add nsw i32 %902, 1
  %2571 = getelementptr inbounds nuw i8, ptr %2566, i64 28
  store i32 %903, ptr %2571, align 4, !tbaa !56
  br label %2619

2572:                                             ; preds = %2525
  %2573 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %894, i32 %2520), !nosanitize !10
  %2574 = extractvalue { i32, i1 } %2573, 1, !nosanitize !10
  br i1 %2574, label %2720, label %2575, !prof !11, !nosanitize !10

2575:                                             ; preds = %2572
  %2576 = extractvalue { i32, i1 } %2573, 0, !nosanitize !10
  %2577 = icmp sgt i32 %903, -1
  br i1 %2577, label %2578, label %2581

2578:                                             ; preds = %2575
  %2579 = zext nneg i32 %903 to i64
  %.split222 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2579
  %2580 = getelementptr inbounds nuw i8, ptr %.split222, i64 24
  store i32 -1, ptr %2580, align 8, !tbaa !55
  br label %2581

2581:                                             ; preds = %2578, %2575
  %2582 = ptrtoint ptr %898 to i64
  %2583 = sub i64 %2582, %2496
  %2584 = icmp sgt i64 %2583, 4
  br i1 %2584, label %2619, label %2585

2585:                                             ; preds = %2581
  %2586 = icmp sgt i32 %902, -1
  br i1 %2586, label %2587, label %2723

2587:                                             ; preds = %2585
  %2588 = icmp eq i32 %902, 0
  br i1 %2588, label %2602, label %2589

2589:                                             ; preds = %2587
  %2590 = add nsw i32 %902, -1
  %2591 = zext nneg i32 %2590 to i64
  %2592 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %2591
  %2593 = load ptr, ptr %2592, align 16, !tbaa !51
  %2594 = getelementptr inbounds nuw i8, ptr %2592, i64 8
  %2595 = load ptr, ptr %2594, align 8, !tbaa !53
  %2596 = getelementptr inbounds nuw i8, ptr %2592, i64 16
  %2597 = load ptr, ptr %2596, align 16, !tbaa !54
  %2598 = getelementptr inbounds nuw i8, ptr %2592, i64 24
  %2599 = load i32, ptr %2598, align 8, !tbaa !55
  %2600 = getelementptr inbounds nuw i8, ptr %2592, i64 28
  %2601 = load i32, ptr %2600, align 4, !tbaa !56
  br label %2619

2602:                                             ; preds = %2587, %2418, %2272, %2145, %2049, %1594, %1507, %1476
  %2603 = phi i32 [ 0, %2587 ], [ %896, %2418 ], [ %896, %2272 ], [ %896, %2145 ], [ %896, %2049 ], [ 0, %1594 ], [ %896, %1507 ], [ %896, %1476 ]
  %2604 = phi i32 [ %2576, %2587 ], [ %894, %2418 ], [ %894, %2272 ], [ %894, %2145 ], [ %894, %2049 ], [ %1587, %1594 ], [ %1457, %1507 ], [ %1457, %1476 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %2605 = icmp eq i32 %2604, 0
  br i1 %2605, label %2612, label %2606

2606:                                             ; preds = %2602
  %2607 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %841, i32 %2604), !nosanitize !10
  %2608 = extractvalue { i32, i1 } %2607, 1, !nosanitize !10
  br i1 %2608, label %.loopexit268, label %2609, !prof !11, !nosanitize !10

2609:                                             ; preds = %2606
  %2610 = extractvalue { i32, i1 } %2607, 0, !nosanitize !10
  %2611 = icmp ult ptr %853, %138
  br i1 %2611, label %2644, label %.loopexit269, !llvm.loop !77

2612:                                             ; preds = %2602
  %2613 = sub i64 %855, %854
  %2614 = ashr exact i64 %2613, 2
  %2615 = add nsw i64 %2614, 2147483648
  %2616 = icmp ult i64 %2615, 4294967296
  br i1 %2616, label %2617, label %2761

2617:                                             ; preds = %2612
  %2618 = trunc nsw i64 %2614 to i32
  br label %2638

2619:                                             ; preds = %2589, %2581, %2563, %2559, %2548, %2420, %2390, %2383, %2374, %2367, %2316, %2309, %2300, %2293, %2274, %2263, %2256, %2247, %2240, %2189, %2182, %2173, %2166, %2147, %2051, %1596, %1580, %1524, %1509, %1503, %1493, %1478, %1472, %1443, %1425, %1407, %1394, %1374, %1370, %1356, %1338, %1320, %1307, %1287, %1283
  %2620 = phi i32 [ %2576, %2581 ], [ %2576, %2589 ], [ %894, %2563 ], [ %894, %2559 ], [ %894, %2548 ], [ %894, %2420 ], [ %894, %2390 ], [ %894, %2383 ], [ %894, %2374 ], [ %894, %2367 ], [ %894, %2316 ], [ %894, %2309 ], [ %894, %2300 ], [ %894, %2293 ], [ %894, %2274 ], [ %894, %2263 ], [ %894, %2256 ], [ %894, %2247 ], [ %894, %2240 ], [ %894, %2189 ], [ %894, %2182 ], [ %894, %2173 ], [ %894, %2166 ], [ %894, %2147 ], [ %894, %2051 ], [ %1587, %1596 ], [ %894, %1580 ], [ %1457, %1524 ], [ %1457, %1503 ], [ %1457, %1509 ], [ %1457, %1493 ], [ %1457, %1472 ], [ %1457, %1478 ], [ %894, %1443 ], [ %894, %1425 ], [ %894, %1407 ], [ %894, %1394 ], [ %894, %1374 ], [ %894, %1370 ], [ %894, %1356 ], [ %894, %1338 ], [ %894, %1320 ], [ %894, %1307 ], [ %894, %1287 ], [ %894, %1283 ]
  %2621 = phi i32 [ %895, %2581 ], [ %895, %2589 ], [ %2542, %2563 ], [ %2542, %2559 ], [ %2542, %2548 ], [ %895, %2420 ], [ %895, %2390 ], [ %895, %2383 ], [ %895, %2374 ], [ %895, %2367 ], [ %895, %2316 ], [ %895, %2309 ], [ %895, %2300 ], [ %895, %2293 ], [ %895, %2274 ], [ %895, %2263 ], [ %895, %2256 ], [ %895, %2247 ], [ %895, %2240 ], [ %895, %2189 ], [ %895, %2182 ], [ %895, %2173 ], [ %895, %2166 ], [ %895, %2147 ], [ %895, %2051 ], [ %895, %1596 ], [ %1549, %1580 ], [ %895, %1524 ], [ %895, %1503 ], [ %895, %1509 ], [ %895, %1493 ], [ %895, %1472 ], [ %895, %1478 ], [ %1270, %1443 ], [ %1270, %1425 ], [ %1270, %1407 ], [ %1270, %1394 ], [ %1270, %1374 ], [ %1270, %1370 ], [ %1270, %1356 ], [ %1270, %1338 ], [ %1270, %1320 ], [ %1270, %1307 ], [ %1270, %1287 ], [ %1270, %1283 ]
  %2622 = phi i32 [ 0, %2581 ], [ 0, %2589 ], [ %2541, %2563 ], [ %2541, %2559 ], [ %2541, %2548 ], [ %896, %2420 ], [ %896, %2390 ], [ %896, %2383 ], [ %896, %2374 ], [ %896, %2367 ], [ %896, %2316 ], [ %896, %2309 ], [ %896, %2300 ], [ %896, %2293 ], [ %896, %2274 ], [ %896, %2263 ], [ %896, %2256 ], [ %896, %2247 ], [ %896, %2240 ], [ %896, %2189 ], [ %896, %2182 ], [ %896, %2173 ], [ %896, %2166 ], [ %896, %2147 ], [ %896, %2051 ], [ 0, %1596 ], [ %1550, %1580 ], [ %896, %1524 ], [ %896, %1503 ], [ %896, %1509 ], [ %896, %1493 ], [ %896, %1472 ], [ %896, %1478 ], [ %1271, %1443 ], [ %1271, %1425 ], [ %1271, %1407 ], [ %1271, %1394 ], [ %1271, %1374 ], [ %1271, %1370 ], [ %1271, %1356 ], [ %1271, %1338 ], [ %1271, %1320 ], [ %1271, %1307 ], [ %1271, %1287 ], [ %1271, %1283 ]
  %2623 = phi ptr [ %898, %2581 ], [ %2597, %2589 ], [ %898, %2563 ], [ %2494, %2559 ], [ %2494, %2548 ], [ %2428, %2420 ], [ %898, %2390 ], [ %898, %2383 ], [ %898, %2374 ], [ %898, %2367 ], [ %2074, %2316 ], [ %2074, %2309 ], [ %2074, %2300 ], [ %2074, %2293 ], [ %2282, %2274 ], [ %2074, %2263 ], [ %2074, %2256 ], [ %2074, %2247 ], [ %2074, %2240 ], [ %898, %2189 ], [ %898, %2182 ], [ %898, %2173 ], [ %898, %2166 ], [ %2155, %2147 ], [ %2059, %2051 ], [ %1604, %1596 ], [ %898, %1580 ], [ %898, %1524 ], [ %1171, %1503 ], [ %1517, %1509 ], [ %1171, %1493 ], [ %898, %1472 ], [ %1486, %1478 ], [ %1170, %1443 ], [ %898, %1425 ], [ %1170, %1407 ], [ %898, %1394 ], [ %1171, %1374 ], [ %1170, %1370 ], [ %1170, %1356 ], [ %1171, %1338 ], [ %1170, %1320 ], [ %1171, %1307 ], [ %898, %1287 ], [ %1170, %1283 ]
  %2624 = phi ptr [ %2494, %2581 ], [ %2595, %2589 ], [ %2494, %2563 ], [ %2414, %2559 ], [ %2414, %2548 ], [ %2426, %2420 ], [ %2092, %2390 ], [ %2092, %2383 ], [ %2092, %2374 ], [ %2092, %2367 ], [ %899, %2316 ], [ %899, %2309 ], [ %899, %2300 ], [ %899, %2293 ], [ %2280, %2274 ], [ %899, %2263 ], [ %899, %2256 ], [ %899, %2247 ], [ %899, %2240 ], [ %2092, %2189 ], [ %2092, %2182 ], [ %2092, %2173 ], [ %2092, %2166 ], [ %2153, %2147 ], [ %2057, %2051 ], [ %1602, %1596 ], [ %899, %1580 ], [ %1170, %1524 ], [ %899, %1503 ], [ %1515, %1509 ], [ %899, %1493 ], [ %1170, %1472 ], [ %1484, %1478 ], [ %1171, %1443 ], [ %1170, %1425 ], [ %1171, %1407 ], [ %1170, %1394 ], [ %899, %1374 ], [ %1171, %1370 ], [ %1171, %1356 ], [ %899, %1338 ], [ %1171, %1320 ], [ %899, %1307 ], [ %1170, %1287 ], [ %1171, %1283 ]
  %2625 = phi ptr [ %900, %2581 ], [ %2593, %2589 ], [ %900, %2563 ], [ %2560, %2559 ], [ %2556, %2548 ], [ %2424, %2420 ], [ %900, %2390 ], [ %900, %2383 ], [ %900, %2374 ], [ %900, %2367 ], [ %900, %2316 ], [ %900, %2309 ], [ %900, %2300 ], [ %900, %2293 ], [ %2278, %2274 ], [ %900, %2263 ], [ %900, %2256 ], [ %900, %2247 ], [ %900, %2240 ], [ %900, %2189 ], [ %900, %2182 ], [ %900, %2173 ], [ %900, %2166 ], [ %2151, %2147 ], [ %2055, %2051 ], [ %1600, %1596 ], [ %1582, %1580 ], [ %900, %1524 ], [ %900, %1503 ], [ %1513, %1509 ], [ %900, %1493 ], [ %900, %1472 ], [ %1482, %1478 ], [ %1450, %1443 ], [ %900, %1425 ], [ %1415, %1407 ], [ %900, %1394 ], [ %900, %1374 ], [ %1371, %1370 ], [ %1363, %1356 ], [ %900, %1338 ], [ %1328, %1320 ], [ %900, %1307 ], [ %900, %1287 ], [ %1284, %1283 ]
  %2626 = phi i32 [ -3, %2581 ], [ %2599, %2589 ], [ -3, %2563 ], [ %2493, %2559 ], [ %2493, %2548 ], [ %2430, %2420 ], [ %2392, %2390 ], [ %2388, %2383 ], [ %2379, %2374 ], [ %2372, %2367 ], [ %2318, %2316 ], [ %2314, %2309 ], [ %2305, %2300 ], [ %2298, %2293 ], [ %2284, %2274 ], [ %2265, %2263 ], [ %2261, %2256 ], [ %2252, %2247 ], [ %2245, %2240 ], [ %2191, %2189 ], [ %2187, %2182 ], [ %2178, %2173 ], [ %2171, %2166 ], [ %2157, %2147 ], [ %2061, %2051 ], [ %1606, %1596 ], [ %1581, %1580 ], [ %928, %1524 ], [ %928, %1503 ], [ %1519, %1509 ], [ %928, %1493 ], [ %928, %1472 ], [ %1488, %1478 ], [ %1218, %1443 ], [ %928, %1425 ], [ %1218, %1407 ], [ %928, %1394 ], [ %928, %1374 ], [ %1218, %1370 ], [ %1218, %1356 ], [ %928, %1338 ], [ %1218, %1320 ], [ %928, %1307 ], [ %928, %1287 ], [ %1218, %1283 ]
  %2627 = phi i32 [ %902, %2581 ], [ %2590, %2589 ], [ %2570, %2563 ], [ %902, %2559 ], [ %2554, %2548 ], [ %2421, %2420 ], [ %2362, %2390 ], [ %2362, %2383 ], [ %2362, %2374 ], [ %2362, %2367 ], [ %2131, %2316 ], [ %2131, %2309 ], [ %2131, %2300 ], [ %2131, %2293 ], [ %2275, %2274 ], [ %2235, %2263 ], [ %2235, %2256 ], [ %2235, %2247 ], [ %2235, %2240 ], [ %2131, %2189 ], [ %2131, %2182 ], [ %2131, %2173 ], [ %2131, %2166 ], [ %2148, %2147 ], [ %2052, %2051 ], [ %1597, %1596 ], [ %902, %1580 ], [ %1530, %1524 ], [ %902, %1503 ], [ %1510, %1509 ], [ %1499, %1493 ], [ %902, %1472 ], [ %1479, %1478 ], [ %1448, %1443 ], [ %1431, %1425 ], [ %1413, %1407 ], [ %1399, %1394 ], [ %1381, %1374 ], [ %902, %1370 ], [ %1361, %1356 ], [ %1344, %1338 ], [ %1326, %1320 ], [ %1312, %1307 ], [ %1294, %1287 ], [ %902, %1283 ]
  %2628 = phi i32 [ %903, %2581 ], [ %2601, %2589 ], [ %903, %2563 ], [ %903, %2559 ], [ %903, %2548 ], [ %2432, %2420 ], [ %2132, %2390 ], [ %2132, %2383 ], [ %2132, %2374 ], [ %2132, %2367 ], [ %2132, %2316 ], [ %2132, %2309 ], [ %2132, %2300 ], [ %2132, %2293 ], [ %2286, %2274 ], [ %2132, %2263 ], [ %2132, %2256 ], [ %2132, %2247 ], [ %2132, %2240 ], [ %2132, %2189 ], [ %2132, %2182 ], [ %2132, %2173 ], [ %2132, %2166 ], [ %2159, %2147 ], [ %2063, %2051 ], [ %1608, %1596 ], [ %903, %1580 ], [ %903, %1524 ], [ %903, %1503 ], [ %1521, %1509 ], [ %903, %1493 ], [ %903, %1472 ], [ %1490, %1478 ], [ %903, %1443 ], [ %903, %1425 ], [ %903, %1407 ], [ %903, %1394 ], [ %903, %1374 ], [ %903, %1370 ], [ %903, %1356 ], [ %903, %1338 ], [ %903, %1320 ], [ %903, %1307 ], [ %903, %1287 ], [ %903, %1283 ]
  %2629 = load ptr, ptr %7, align 8
  br label %893

2630:                                             ; preds = %.preheader267
  %2631 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %840, i32 %836), !nosanitize !10
  %2632 = extractvalue { i32, i1 } %2631, 1, !nosanitize !10
  br i1 %2632, label %.loopexit268, label %2633, !prof !11, !nosanitize !10

2633:                                             ; preds = %2630
  %2634 = extractvalue { i32, i1 } %2631, 0, !nosanitize !10
  %2635 = sext i32 %836 to i64
  %2636 = sub nsw i64 0, %2635
  %2637 = getelementptr inbounds nuw [4 x i8], ptr %839, i64 %2636
  br label %2638

2638:                                             ; preds = %2633, %2617, %858
  %2639 = phi i32 [ %837, %2633 ], [ %895, %2617 ], [ %837, %858 ]
  %2640 = phi i32 [ %838, %2633 ], [ %2603, %2617 ], [ %838, %858 ]
  %2641 = phi ptr [ %2637, %2633 ], [ %853, %2617 ], [ %853, %858 ]
  %2642 = phi i32 [ %2634, %2633 ], [ %2618, %2617 ], [ %860, %858 ]
  %2643 = icmp ult ptr %2641, %138
  br i1 %2643, label %2644, label %.loopexit270, !llvm.loop !77

2644:                                             ; preds = %2638, %2609
  %2645 = phi i32 [ %2610, %2609 ], [ %841, %2638 ]
  %2646 = phi i32 [ 0, %2609 ], [ %2642, %2638 ]
  %2647 = phi ptr [ %853, %2609 ], [ %2641, %2638 ]
  %2648 = phi i32 [ %2603, %2609 ], [ %2640, %2638 ]
  %2649 = phi i32 [ %895, %2609 ], [ %2639, %2638 ]
  %2650 = load i32, ptr %2647, align 4, !tbaa !5
  br label %.preheader267

2651:                                             ; preds = %2765
  %2652 = load i32, ptr %2766, align 4, !tbaa !5
  br label %.preheader271

.preheader271:                                    ; preds = %823, %2651
  %2653 = phi i32 [ %2652, %2651 ], [ %824, %823 ]
  %2654 = phi ptr [ %2766, %2651 ], [ %1, %823 ]
  %2655 = phi i32 [ %2767, %2651 ], [ 0, %823 ]
  %2656 = icmp slt i32 %2653, 0
  br i1 %2656, label %2657, label %2665

2657:                                             ; preds = %.preheader271
  %2658 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2655, i32 %2653), !nosanitize !10
  %2659 = extractvalue { i32, i1 } %2658, 1, !nosanitize !10
  br i1 %2659, label %.loopexit268, label %2660, !prof !11, !nosanitize !10

.loopexit268:                                     ; preds = %2657, %2630, %2606
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2660:                                             ; preds = %2657
  %2661 = extractvalue { i32, i1 } %2658, 0, !nosanitize !10
  %2662 = sext i32 %2653 to i64
  %2663 = sub nsw i64 0, %2662
  %2664 = getelementptr inbounds nuw [4 x i8], ptr %2654, i64 %2663
  br label %2765

2665:                                             ; preds = %.preheader271
  %2666 = icmp eq i32 %2655, 0
  br i1 %2666, label %2670, label %2667

2667:                                             ; preds = %2665
  %2668 = sext i32 %2655 to i64
  %2669 = getelementptr inbounds [4 x i8], ptr %2654, i64 %2668
  store i32 %2655, ptr %2669, align 4, !tbaa !5
  br label %2670

2670:                                             ; preds = %2667, %2665
  %2671 = zext nneg i32 %2653 to i64
  %2672 = getelementptr inbounds nuw [4 x i8], ptr %138, i64 %2671
  %2673 = load i32, ptr %2672, align 4, !tbaa !5
  %2674 = sext i32 %2673 to i64
  %2675 = getelementptr [4 x i8], ptr %820, i64 %2674
  %2676 = ptrtoint ptr %2675 to i64
  %2677 = ptrtoint ptr %2654 to i64
  %2678 = sub i64 %2676, %2677
  %2679 = icmp sgt i64 %2678, 4
  br i1 %2679, label %2680, label %2762

2680:                                             ; preds = %2670
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1183, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2681:                                             ; preds = %861
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1187, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2682:                                             ; preds = %883, %874, %867
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2683:                                             ; preds = %923
  br i1 %925, label %2725, label %2729

2684:                                             ; preds = %1830
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2685:                                             ; preds = %2064
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.src, i32 noundef 1192, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2686:                                             ; preds = %2076
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1196, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2687:                                             ; preds = %2095
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1199, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2688:                                             ; preds = %2113
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1204, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2689:                                             ; preds = %2115
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1205, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2690:                                             ; preds = %2192
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1210, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2691:                                             ; preds = %2194
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1210, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2692:                                             ; preds = %2222, %2213, %2205
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2693:                                             ; preds = %2256, %2247, %2240
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2694:                                             ; preds = %2160
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1213, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2695:                                             ; preds = %2182, %2173, %2166
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2696:                                             ; preds = %2143
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1215, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2697:                                             ; preds = %2319
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2698:                                             ; preds = %2321
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2699:                                             ; preds = %2349, %2340, %2332
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2700:                                             ; preds = %2383, %2374, %2367
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2701:                                             ; preds = %2287
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1222, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2702:                                             ; preds = %2309, %2300, %2293
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2703:                                             ; preds = %2270
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1224, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2704:                                             ; preds = %1975
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1231, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

.loopexit245:                                     ; preds = %.preheader247, %.preheader244
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2705:                                             ; preds = %1981
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1120, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #10
  unreachable

2706:                                             ; preds = %2006
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1124, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #10
  unreachable

2707:                                             ; preds = %2036
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1130, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #10
  unreachable

2708:                                             ; preds = %1849
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1234, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

.loopexit251:                                     ; preds = %.preheader255, %.preheader250
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2709:                                             ; preds = %1855
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1144, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2710:                                             ; preds = %1889
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1150, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2711:                                             ; preds = %1917
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.src, i32 noundef 1158, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2712:                                             ; preds = %1959
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1167, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #10
  unreachable

2713:                                             ; preds = %.loopexit246
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1236, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2714:                                             ; preds = %.preheader239
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.src, i32 noundef 1241, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2715:                                             ; preds = %2449
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.src, i32 noundef 1246, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2716:                                             ; preds = %2480, %2470, %2462
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2717:                                             ; preds = %2497
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1247, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2718:                                             ; preds = %2513
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1250, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2719:                                             ; preds = %2534, %2527, %2522
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2720:                                             ; preds = %2572, %2530
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2721:                                             ; preds = %2546
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1252, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2722:                                             ; preds = %2561
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1256, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2723:                                             ; preds = %2585
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1267, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2724:                                             ; preds = %2416
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1271, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

.loopexit234:                                     ; preds = %.preheader258, %1812
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2725:                                             ; preds = %2683
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1284, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2726:                                             ; preds = %1774
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

2727:                                             ; preds = %1764
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

2728:                                             ; preds = %1754
  tail call void @llvm.ubsantrap(i8 12) #10, !nosanitize !10
  unreachable, !nosanitize !10

2729:                                             ; preds = %2683
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1019, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_pivot) #10
  unreachable

2730:                                             ; preds = %1183
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1300, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2731:                                             ; preds = %1207, %1198, %1190
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2732:                                             ; preds = %1217
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1303, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2733:                                             ; preds = %1234
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1304, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2734:                                             ; preds = %1250
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1307, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2735:                                             ; preds = %1263
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2736:                                             ; preds = %1451, %1259
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2737:                                             ; preds = %1296
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1311, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2738:                                             ; preds = %1298
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1312, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2739:                                             ; preds = %1285
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1315, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2740:                                             ; preds = %1329
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1322, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2741:                                             ; preds = %1330
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1323, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2742:                                             ; preds = %1319
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1326, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2743:                                             ; preds = %1346
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1330, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2744:                                             ; preds = %1348
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1331, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2745:                                             ; preds = %1383
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1337, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2746:                                             ; preds = %1385
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1338, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2747:                                             ; preds = %1372
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1341, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2748:                                             ; preds = %1416
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1348, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2749:                                             ; preds = %1417
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1349, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2750:                                             ; preds = %1406
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1352, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2751:                                             ; preds = %1433
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1356, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2752:                                             ; preds = %1435
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1357, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2753:                                             ; preds = %1491
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1365, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2754:                                             ; preds = %1474
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1370, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2755:                                             ; preds = %1522
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1374, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2756:                                             ; preds = %1505
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1379, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2757:                                             ; preds = %1542
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !10
  unreachable, !nosanitize !10

2758:                                             ; preds = %1583, %1538
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2759:                                             ; preds = %1570, %1561, %1554
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

2760:                                             ; preds = %1592
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1388, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #10
  unreachable

2761:                                             ; preds = %2612
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.src, i32 noundef 1423, ptr noundef nonnull @__PRETTY_FUNCTION__.trsort) #10
  unreachable

2762:                                             ; preds = %2670
  %2763 = icmp eq i64 %2678, 4
  %2764 = sext i1 %2763 to i32
  br label %2765

2765:                                             ; preds = %2762, %2660
  %2766 = phi ptr [ %2664, %2660 ], [ %2675, %2762 ]
  %2767 = phi i32 [ %2661, %2660 ], [ %2764, %2762 ]
  %2768 = icmp ult ptr %2766, %138
  br i1 %2768, label %2651, label %.loopexit270, !llvm.loop !77

.loopexit270:                                     ; preds = %2765, %2638
  %2769 = phi i32 [ %2639, %2638 ], [ %827, %2765 ]
  %2770 = phi i32 [ %2640, %2638 ], [ %826, %2765 ]
  %2771 = phi ptr [ %2641, %2638 ], [ %2766, %2765 ]
  %2772 = phi i32 [ %2642, %2638 ], [ %2767, %2765 ]
  %2773 = phi i32 [ %841, %2638 ], [ 0, %2765 ]
  %2774 = icmp eq i32 %2772, 0
  br i1 %2774, label %.loopexit269, label %2775

2775:                                             ; preds = %.loopexit270
  %2776 = sext i32 %2772 to i64
  %2777 = getelementptr inbounds [4 x i8], ptr %2771, i64 %2776
  store i32 %2772, ptr %2777, align 4, !tbaa !5
  br label %.loopexit269

.loopexit269:                                     ; preds = %2609, %2775, %.loopexit270
  %2778 = phi i32 [ %2769, %2775 ], [ %2769, %.loopexit270 ], [ %895, %2609 ]
  %2779 = phi i32 [ %2770, %2775 ], [ %2770, %.loopexit270 ], [ %2603, %2609 ]
  %2780 = phi i32 [ %2773, %2775 ], [ %2773, %.loopexit270 ], [ %2610, %2609 ]
  %2781 = icmp eq i32 %2780, 0
  br i1 %2781, label %.loopexit274, label %2782

2782:                                             ; preds = %.loopexit269
  %2783 = getelementptr i8, ptr %825, i64 %829
  %2784 = load i32, ptr %1, align 4, !tbaa !5
  %2785 = icmp sgt i32 %2784, %813
  br i1 %2785, label %823, label %.loopexit274, !llvm.loop !78

.loopexit274:                                     ; preds = %2782, %.loopexit269, %812
  %2786 = load i8, ptr %11, align 1, !tbaa !9
  %2787 = zext i8 %2786 to i32
  br label %2788

2788:                                             ; preds = %2825, %.loopexit274
  %2789 = phi i32 [ %2787, %.loopexit274 ], [ %2822, %2825 ]
  %2790 = phi i32 [ %9, %.loopexit274 ], [ %2821, %2825 ]
  %2791 = phi i32 [ %78, %.loopexit274 ], [ %2832, %2825 ]
  %2792 = icmp eq i32 %2790, 0
  br i1 %2792, label %.loopexit228, label %.lr.ph2081

.lr.ph2081:                                       ; preds = %2788
  %2793 = zext nneg i32 %2790 to i64
  br label %2796

2794:                                             ; preds = %2796
  %2795 = icmp eq i64 %2799, 0
  br i1 %2795, label %.loopexit228, label %2796, !llvm.loop !79

2796:                                             ; preds = %.lr.ph2081, %2794
  %2797 = phi i32 [ %2789, %.lr.ph2081 ], [ %2802, %2794 ]
  %2798 = phi i64 [ %2793, %.lr.ph2081 ], [ %2799, %2794 ]
  %2799 = add nsw i64 %2798, -1
  %2800 = getelementptr inbounds nuw i8, ptr %0, i64 %2799
  %2801 = load i8, ptr %2800, align 1, !tbaa !9
  %2802 = zext i8 %2801 to i32
  %2803 = icmp sgt i32 %2797, %2802
  br i1 %2803, label %2804, label %2794, !llvm.loop !79

2804:                                             ; preds = %2796
  %indvars.le = trunc nuw nsw i64 %2799 to i32
  %2805 = trunc nuw nsw i64 %2798 to i32
  %2806 = and i64 %2799, 4294967295
  %2807 = icmp eq i64 %2806, 0
  br i1 %2807, label %.loopexit227, label %.lr.ph2084

2808:                                             ; preds = %.lr.ph2084
  %2809 = icmp eq i64 %2812, 0
  br i1 %2809, label %.loopexit227, label %.lr.ph2084, !llvm.loop !80

.lr.ph2084:                                       ; preds = %2804, %2808
  %2810 = phi i32 [ %2815, %2808 ], [ %2802, %2804 ]
  %2811 = phi i64 [ %2812, %2808 ], [ %2806, %2804 ]
  %2812 = add nsw i64 %2811, -1
  %2813 = getelementptr inbounds nuw i8, ptr %0, i64 %2812
  %2814 = load i8, ptr %2813, align 1, !tbaa !9
  %2815 = zext i8 %2814 to i32
  %2816 = icmp samesign ult i32 %2810, %2815
  br i1 %2816, label %2817, label %2808, !llvm.loop !80

2817:                                             ; preds = %.lr.ph2084
  %2818 = trunc nuw nsw i64 %2811 to i32
  %2819 = trunc nuw nsw i64 %2812 to i32
  br label %.loopexit227

.loopexit227:                                     ; preds = %2808, %2804, %2817
  %2820 = phi i32 [ %2818, %2817 ], [ 0, %2804 ], [ 0, %2808 ]
  %2821 = phi i32 [ %2819, %2817 ], [ -1, %2804 ], [ -1, %2808 ]
  %2822 = phi i32 [ %2815, %2817 ], [ %2802, %2804 ], [ %2815, %2808 ]
  %2823 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2791, i32 -1)
  %2824 = extractvalue { i32, i1 } %2823, 1, !nosanitize !10
  br i1 %2824, label %.loopexit, label %2825, !prof !11, !nosanitize !10

2825:                                             ; preds = %.loopexit227
  %2826 = icmp eq i64 %2799, 0
  %2827 = sub nsw i32 %2805, %2820
  %2828 = icmp sgt i32 %2827, 1
  %2829 = or i1 %2826, %2828
  %2830 = sub nsw i32 0, %2805
  %2831 = select i1 %2829, i32 %indvars.le, i32 %2830
  %2832 = extractvalue { i32, i1 } %2823, 0, !nosanitize !10
  %2833 = sext i32 %2832 to i64
  %2834 = getelementptr inbounds [4 x i8], ptr %138, i64 %2833
  %2835 = load i32, ptr %2834, align 4, !tbaa !5
  %2836 = sext i32 %2835 to i64
  %2837 = getelementptr inbounds [4 x i8], ptr %1, i64 %2836
  store i32 %2831, ptr %2837, align 4, !tbaa !5
  %2838 = icmp sgt i32 %2821, -1
  br i1 %2838, label %2788, label %.loopexit228, !llvm.loop !81

.loopexit228:                                     ; preds = %2825, %2788, %2794
  %2839 = getelementptr inbounds nuw i8, ptr %3, i64 262140
  store i32 %4, ptr %2839, align 4, !tbaa !5
  br label %2840

2840:                                             ; preds = %2910, %.loopexit228
  %2841 = phi i64 [ 254, %.loopexit228 ], [ %2916, %2910 ]
  %2842 = phi i32 [ %171, %.loopexit228 ], [ %2895, %2910 ]
  %2843 = trunc i64 %2841 to i32
  %2844 = add nuw nsw i64 %2841, 1
  %2845 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %2844
  %2846 = load i32, ptr %2845, align 4, !tbaa !5
  %2847 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2846, i32 -1)
  %2848 = extractvalue { i32, i1 } %2847, 1, !nosanitize !10
  br i1 %2848, label %.loopexit, label %2849, !prof !11, !nosanitize !10

2849:                                             ; preds = %2840
  %2850 = extractvalue { i32, i1 } %2847, 0, !nosanitize !10
  %2851 = getelementptr [4 x i8], ptr %3, i64 %2841
  %2852 = shl i32 %2843, 8
  br label %2853

2853:                                             ; preds = %2894, %2849
  %2854 = phi i64 [ 255, %2849 ], [ %2897, %2894 ]
  %2855 = phi i32 [ %2850, %2849 ], [ %2896, %2894 ]
  %2856 = phi i32 [ %2842, %2849 ], [ %2895, %2894 ]
  %2857 = shl i64 %2854, 10
  %2858 = getelementptr i8, ptr %2851, i64 %2857
  %2859 = load i32, ptr %2858, align 4, !tbaa !5
  %2860 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2855, i32 %2859), !nosanitize !10
  %2861 = extractvalue { i32, i1 } %2860, 1, !nosanitize !10
  br i1 %2861, label %.loopexit, label %2862, !prof !11, !nosanitize !10

2862:                                             ; preds = %2853
  store i32 %2855, ptr %2858, align 4, !tbaa !5
  %2863 = trunc nuw nsw i64 %2854 to i32
  %2864 = or i32 %2852, %2863
  %2865 = sext i32 %2864 to i64
  %2866 = getelementptr inbounds [4 x i8], ptr %3, i64 %2865
  %2867 = load i32, ptr %2866, align 4, !tbaa !5
  %2868 = extractvalue { i32, i1 } %2860, 0
  %2869 = icmp sgt i32 %2867, %2856
  br i1 %2869, label %2894, label %2870

2870:                                             ; preds = %2862
  %2871 = sext i32 %2868 to i64
  %2872 = sext i32 %2856 to i64
  %2873 = getelementptr inbounds [4 x i8], ptr %1, i64 %2872
  %2874 = load i32, ptr %2873, align 4, !tbaa !5
  %2875 = getelementptr inbounds [4 x i8], ptr %1, i64 %2871
  store i32 %2874, ptr %2875, align 4, !tbaa !5
  %2876 = icmp eq i32 %2868, -2147483648
  %2877 = icmp eq i32 %2856, -2147483648
  %2878 = or i1 %2877, %2876
  br i1 %2878, label %.loopexit, label %.lr.ph2087, !prof !82, !nosanitize !10

2879:                                             ; preds = %.lr.ph2087
  %2880 = getelementptr inbounds [4 x i8], ptr %1, i64 %2888
  %2881 = load i32, ptr %2880, align 4, !tbaa !5
  %2882 = getelementptr inbounds [4 x i8], ptr %1, i64 %2890
  store i32 %2881, ptr %2882, align 4, !tbaa !5
  %2883 = icmp eq i64 %2890, -2147483648
  %2884 = icmp eq i64 %2888, -2147483648
  %2885 = or i1 %2884, %2883
  br i1 %2885, label %.loopexit, label %.lr.ph2087, !prof !83, !llvm.loop !84, !nosanitize !10

.lr.ph2087:                                       ; preds = %2870, %2879
  %2886 = phi i64 [ %2890, %2879 ], [ %2871, %2870 ]
  %2887 = phi i64 [ %2888, %2879 ], [ %2872, %2870 ]
  %2888 = add nsw i64 %2887, -1
  %2889 = trunc i64 %2888 to i32
  %2890 = add nsw i64 %2886, -1
  %2891 = icmp sgt i32 %2867, %2889
  br i1 %2891, label %2892, label %2879, !llvm.loop !84

2892:                                             ; preds = %.lr.ph2087
  %2893 = trunc nsw i64 %2890 to i32
  br label %2894

2894:                                             ; preds = %2892, %2862
  %2895 = phi i32 [ %2856, %2862 ], [ %2889, %2892 ]
  %2896 = phi i32 [ %2868, %2862 ], [ %2893, %2892 ]
  %2897 = add nsw i64 %2854, -1
  %2898 = icmp samesign ult i64 %2841, %2897
  br i1 %2898, label %2853, label %2899, !llvm.loop !85

2899:                                             ; preds = %2894
  %2900 = or i32 %2852, %2843
  %2901 = sext i32 %2900 to i64
  %2902 = getelementptr inbounds [4 x i8], ptr %3, i64 %2901
  %2903 = load i32, ptr %2902, align 4, !tbaa !5
  %2904 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2896, i32 %2903), !nosanitize !10
  %2905 = extractvalue { i32, i1 } %2904, 1, !nosanitize !10
  br i1 %2905, label %.loopexit, label %2906, !prof !11, !nosanitize !10

2906:                                             ; preds = %2899
  %2907 = extractvalue { i32, i1 } %2904, 0, !nosanitize !10
  %2908 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2907, i32 1), !nosanitize !10
  %2909 = extractvalue { i32, i1 } %2908, 1, !nosanitize !10
  br i1 %2909, label %.loopexit225, label %2910, !prof !11, !nosanitize !10

2910:                                             ; preds = %2906
  %2911 = extractvalue { i32, i1 } %2908, 0, !nosanitize !10
  %2912 = trunc nuw nsw i64 %2844 to i32
  %2913 = or i32 %2852, %2912
  %2914 = sext i32 %2913 to i64
  %2915 = getelementptr inbounds [4 x i8], ptr %3, i64 %2914
  store i32 %2911, ptr %2915, align 4, !tbaa !5
  store i32 %2896, ptr %2902, align 4, !tbaa !5
  %2916 = add nsw i64 %2841, -1
  %2917 = icmp eq i64 %2841, 0
  br i1 %2917, label %.loopexit226, label %2840, !llvm.loop !86

.loopexit226:                                     ; preds = %2910, %130
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
