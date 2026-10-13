; ModuleID = '/mydata/zstd/lib/dictBuilder/divsufsort.c'
source_filename = "/mydata/zstd/lib/dictBuilder/divsufsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
define dso_local noundef i32 @divsufsort(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  %8 = icmp slt i32 %2, 0
  %9 = or i1 %7, %8
  br i1 %9, label %233, label %10

10:                                               ; preds = %4
  switch i32 %2, label %22 [
    i32 0, label %233
    i32 1, label %11
    i32 2, label %12
  ]

11:                                               ; preds = %10
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %233

12:                                               ; preds = %10
  %13 = load i8, ptr %0, align 1, !tbaa !9
  %14 = getelementptr inbounds i8, ptr %0, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = icmp ult i8 %13, %15
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds i32, ptr %1, i64 %18
  store i32 0, ptr %19, align 4, !tbaa !5
  %20 = zext i1 %16 to i64
  %21 = getelementptr inbounds i32, ptr %1, i64 %20
  store i32 1, ptr %21, align 4, !tbaa !5
  br label %233

22:                                               ; preds = %10
  %23 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #10
  %24 = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #10
  %25 = icmp ne ptr %23, null
  %26 = icmp ne ptr %24, null
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %231

28:                                               ; preds = %22
  %29 = tail call fastcc i32 @sort_typeBstar(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef nonnull %24, i32 noundef %2)
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %146

31:                                               ; preds = %28
  %32 = getelementptr i32, ptr %1, i64 -1
  %33 = ptrtoint ptr %1 to i64
  br label %34

34:                                               ; preds = %143, %31
  %35 = phi i64 [ 254, %31 ], [ %144, %143 ]
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 8
  %38 = add nuw nsw i64 %35, 1
  %39 = trunc i64 %38 to i32
  %40 = or i32 %37, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %24, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !5
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %1, i64 %44
  %46 = getelementptr inbounds i32, ptr %23, i64 %38
  %47 = load i32, ptr %46, align 4, !tbaa !5
  %48 = sext i32 %47 to i64
  %49 = getelementptr i32, ptr %32, i64 %48
  %50 = icmp ugt ptr %45, %49
  br i1 %50, label %143, label %52

51:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

52:                                               ; preds = %34, %138
  %53 = phi ptr [ %141, %138 ], [ %49, %34 ]
  %54 = phi i32 [ %140, %138 ], [ -1, %34 ]
  %55 = phi ptr [ %139, %138 ], [ null, %34 ]
  %56 = load i32, ptr %53, align 4, !tbaa !5
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %129

58:                                               ; preds = %52
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds i8, ptr %0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !9
  %62 = zext i8 %61 to i64
  %63 = icmp eq i64 %35, %62
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1630, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

65:                                               ; preds = %58
  %66 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %56, i32 1), !nosanitize !10
  %67 = extractvalue { i32, i1 } %66, 0, !nosanitize !10
  %68 = extractvalue { i32, i1 } %66, 1, !nosanitize !10
  br i1 %68, label %51, label %69, !nosanitize !10

69:                                               ; preds = %65
  %70 = icmp slt i32 %67, %2
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  %72 = sext i32 %67 to i64
  %73 = getelementptr inbounds i8, ptr %0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = icmp ugt i8 %61, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %69
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.src, i32 noundef 1631, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

77:                                               ; preds = %71
  %78 = add nsw i32 %56, -1
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !9
  %82 = icmp ugt i8 %81, %61
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.src, i32 noundef 1632, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

84:                                               ; preds = %77
  %85 = xor i32 %56, -1
  store i32 %85, ptr %53, align 4, !tbaa !5
  %86 = load i8, ptr %80, align 1, !tbaa !9
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %56, 1
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = getelementptr i8, ptr %60, i64 -2
  %91 = load i8, ptr %90, align 1, !tbaa !9
  %92 = icmp ugt i8 %91, %86
  %93 = sub nsw i32 0, %56
  %94 = select i1 %92, i32 %93, i32 %78
  br label %95

95:                                               ; preds = %89, %84
  %96 = phi i32 [ 0, %84 ], [ %94, %89 ]
  %97 = icmp eq i32 %54, %87
  br i1 %97, label %119, label %98

98:                                               ; preds = %95
  %99 = icmp sgt i32 %54, -1
  br i1 %99, label %100, label %112

100:                                              ; preds = %98
  %101 = ptrtoint ptr %55 to i64
  %102 = sub i64 %101, %33
  %103 = ashr exact i64 %102, 2
  %104 = add nsw i64 %103, 2147483648
  %105 = icmp ult i64 %104, 4294967296
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1637, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

107:                                              ; preds = %100
  %108 = trunc i64 %103 to i32
  %109 = or i32 %54, %37
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %24, i64 %110
  store i32 %108, ptr %111, align 4, !tbaa !5
  br label %112

112:                                              ; preds = %107, %98
  %113 = or disjoint i32 %37, %87
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, ptr %24, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !5
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, ptr %1, i64 %117
  br label %119

119:                                              ; preds = %112, %95
  %120 = phi ptr [ %118, %112 ], [ %55, %95 ]
  %121 = phi i32 [ %87, %112 ], [ %54, %95 ]
  %122 = icmp ult ptr %120, %53
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.src, i32 noundef 1640, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

124:                                              ; preds = %119
  %125 = icmp eq ptr %120, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %124
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.src, i32 noundef 1640, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

127:                                              ; preds = %124
  %128 = getelementptr inbounds i32, ptr %120, i64 -1
  store i32 %96, ptr %120, align 4, !tbaa !5
  br label %138

129:                                              ; preds = %52
  %130 = icmp eq i32 %56, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %129
  %132 = load i8, ptr %0, align 1, !tbaa !9
  %133 = zext i8 %132 to i64
  %134 = icmp eq i64 %35, %133
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  tail call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.src, i32 noundef 1643, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

136:                                              ; preds = %131, %129
  %137 = xor i32 %56, -1
  store i32 %137, ptr %53, align 4, !tbaa !5
  br label %138

138:                                              ; preds = %136, %127
  %139 = phi ptr [ %128, %127 ], [ %55, %136 ]
  %140 = phi i32 [ %121, %127 ], [ %54, %136 ]
  %141 = getelementptr inbounds i32, ptr %53, i64 -1
  %142 = icmp ugt ptr %45, %141
  br i1 %142, label %143, label %52, !llvm.loop !11

143:                                              ; preds = %138, %34
  %144 = add nsw i64 %35, -1
  %145 = icmp eq i64 %35, 0
  br i1 %145, label %146, label %34, !llvm.loop !13

146:                                              ; preds = %143, %28
  %147 = add i32 %2, -1
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds i8, ptr %0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !9
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds i32, ptr %23, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !5
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, ptr %1, i64 %154
  %156 = add i32 %2, -2
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !9
  %160 = icmp ult i8 %159, %150
  %161 = sub i32 0, %2
  %162 = select i1 %160, i32 %161, i32 %147
  store i32 %162, ptr %155, align 4, !tbaa !5
  %163 = zext nneg i32 %2 to i64
  %164 = getelementptr inbounds i32, ptr %1, i64 %163
  %165 = icmp eq i32 %2, 0
  br i1 %165, label %231, label %166

166:                                              ; preds = %146
  %167 = getelementptr inbounds i32, ptr %155, i64 1
  %168 = zext i8 %150 to i32
  %169 = ptrtoint ptr %1 to i64
  br label %170

170:                                              ; preds = %226, %166
  %171 = phi i32 [ %168, %166 ], [ %228, %226 ]
  %172 = phi ptr [ %167, %166 ], [ %227, %226 ]
  %173 = phi ptr [ %1, %166 ], [ %229, %226 ]
  %174 = load i32, ptr %173, align 4, !tbaa !5
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %221

176:                                              ; preds = %170
  %177 = add nsw i32 %174, -1
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds i8, ptr %0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !9
  %181 = zext i8 %180 to i32
  %182 = zext nneg i32 %174 to i64
  %183 = getelementptr inbounds i8, ptr %0, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !9
  %185 = icmp ult i8 %180, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.src, i32 noundef 1657, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

187:                                              ; preds = %176
  %188 = icmp eq i32 %177, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %187
  %190 = getelementptr i8, ptr %183, i64 -2
  %191 = load i8, ptr %190, align 1, !tbaa !9
  %192 = icmp ult i8 %191, %180
  br i1 %192, label %193, label %195

193:                                              ; preds = %189, %187
  %194 = sub nsw i32 0, %174
  br label %195

195:                                              ; preds = %193, %189
  %196 = phi i32 [ %194, %193 ], [ %177, %189 ]
  %197 = icmp eq i32 %171, %181
  br i1 %197, label %214, label %198

198:                                              ; preds = %195
  %199 = ptrtoint ptr %172 to i64
  %200 = sub i64 %199, %169
  %201 = ashr exact i64 %200, 2
  %202 = add nsw i64 %201, 2147483648
  %203 = icmp ult i64 %202, 4294967296
  br i1 %203, label %205, label %204

204:                                              ; preds = %198
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1661, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

205:                                              ; preds = %198
  %206 = trunc i64 %201 to i32
  %207 = zext nneg i32 %171 to i64
  %208 = getelementptr inbounds i32, ptr %23, i64 %207
  store i32 %206, ptr %208, align 4, !tbaa !5
  %209 = zext i8 %180 to i64
  %210 = getelementptr inbounds i32, ptr %23, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !5
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, ptr %1, i64 %212
  br label %214

214:                                              ; preds = %205, %195
  %215 = phi ptr [ %213, %205 ], [ %172, %195 ]
  %216 = phi i32 [ %181, %205 ], [ %171, %195 ]
  %217 = icmp ult ptr %173, %215
  br i1 %217, label %219, label %218

218:                                              ; preds = %214
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.src, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

219:                                              ; preds = %214
  %220 = getelementptr inbounds i32, ptr %215, i64 1
  store i32 %196, ptr %215, align 4, !tbaa !5
  br label %226

221:                                              ; preds = %170
  %222 = icmp slt i32 %174, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %221
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.src, i32 noundef 1667, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_SA) #11
  unreachable

224:                                              ; preds = %221
  %225 = xor i32 %174, -1
  store i32 %225, ptr %173, align 4, !tbaa !5
  br label %226

226:                                              ; preds = %224, %219
  %227 = phi ptr [ %220, %219 ], [ %172, %224 ]
  %228 = phi i32 [ %216, %219 ], [ %171, %224 ]
  %229 = getelementptr inbounds i32, ptr %173, i64 1
  %230 = icmp ult ptr %229, %164
  br i1 %230, label %170, label %231, !llvm.loop !14

231:                                              ; preds = %226, %146, %22
  %232 = phi i32 [ -2, %22 ], [ 0, %146 ], [ 0, %226 ]
  tail call void @free(ptr noundef %24) #12
  tail call void @free(ptr noundef %23) #12
  br label %233

233:                                              ; preds = %10, %4, %231, %12, %11
  %234 = phi i32 [ 0, %11 ], [ 0, %12 ], [ %232, %231 ], [ -1, %4 ], [ %2, %10 ]
  ret i32 %234
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sort_typeBstar(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [64 x %struct.anon.1], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %2, i8 0, i64 1024, i1 false), !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262144) %3, i8 0, i64 262144, i1 false), !tbaa !5
  %11 = add i32 %4, -1
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = icmp sgt i32 %11, -1
  br i1 %14, label %16, label %83

15:                                               ; preds = %44, %25, %71, %106, %103, %93, %134, %124, %153, %3058, %182
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

16:                                               ; preds = %5
  %17 = load i8, ptr %13, align 1, !tbaa !9
  %18 = zext i8 %17 to i32
  br label %20

19:                                               ; preds = %53, %160, %777, %227, %829, %813, %2970, %3050, %2992, %3005, %3026, %212, %189, %83
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

20:                                               ; preds = %63, %16
  %21 = phi i32 [ %18, %16 ], [ %69, %63 ]
  %22 = phi i32 [ %11, %16 ], [ %65, %63 ]
  %23 = phi i32 [ %4, %16 ], [ %56, %63 ]
  %24 = zext nneg i32 %22 to i64
  br label %25

25:                                               ; preds = %20, %38
  %26 = phi i64 [ %24, %20 ], [ %35, %38 ]
  %27 = phi i32 [ %21, %20 ], [ %42, %38 ]
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %2, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %30, i32 1), !nosanitize !10
  %32 = extractvalue { i32, i1 } %31, 1, !nosanitize !10
  br i1 %32, label %15, label %33, !nosanitize !10

33:                                               ; preds = %25
  %34 = extractvalue { i32, i1 } %31, 0, !nosanitize !10
  store i32 %34, ptr %29, align 4, !tbaa !5
  %35 = add nsw i64 %26, -1
  %36 = trunc i64 %35 to i32
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %83

38:                                               ; preds = %33
  %39 = and i64 %35, 4294967295
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !9
  %42 = zext i8 %41 to i32
  %43 = icmp sgt i32 %27, %42
  br i1 %43, label %44, label %25, !llvm.loop !15

44:                                               ; preds = %38
  %45 = trunc i64 %26 to i32
  %46 = shl nuw nsw i32 %42, 8
  %47 = or i32 %46, %27
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %3, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !5
  %51 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %50, i32 1), !nosanitize !10
  %52 = extractvalue { i32, i1 } %51, 1, !nosanitize !10
  br i1 %52, label %15, label %53, !nosanitize !10

53:                                               ; preds = %44
  %54 = extractvalue { i32, i1 } %51, 0, !nosanitize !10
  store i32 %54, ptr %49, align 4, !tbaa !5
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %23, i32 -1)
  %56 = extractvalue { i32, i1 } %55, 0, !nosanitize !10
  %57 = extractvalue { i32, i1 } %55, 1, !nosanitize !10
  br i1 %57, label %19, label %58, !nosanitize !10

58:                                               ; preds = %53
  %59 = sext i32 %56 to i64
  %60 = getelementptr inbounds i32, ptr %1, i64 %59
  store i32 %36, ptr %60, align 4, !tbaa !5
  %61 = add i32 %45, -2
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %83

63:                                               ; preds = %58, %79
  %64 = phi i32 [ %69, %79 ], [ %42, %58 ]
  %65 = phi i32 [ %81, %79 ], [ %61, %58 ]
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !9
  %69 = zext i8 %68 to i32
  %70 = icmp ult i32 %64, %69
  br i1 %70, label %20, label %71, !llvm.loop !16

71:                                               ; preds = %63
  %72 = shl nuw nsw i32 %64, 8
  %73 = or disjoint i32 %72, %69
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %3, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !5
  %77 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %76, i32 1), !nosanitize !10
  %78 = extractvalue { i32, i1 } %77, 1, !nosanitize !10
  br i1 %78, label %15, label %79, !nosanitize !10

79:                                               ; preds = %71
  %80 = extractvalue { i32, i1 } %77, 0, !nosanitize !10
  store i32 %80, ptr %75, align 4, !tbaa !5
  %81 = add nsw i32 %65, -1
  %82 = icmp sgt i32 %65, 0
  br i1 %82, label %63, label %83, !llvm.loop !17

83:                                               ; preds = %58, %33, %79, %5
  %84 = phi i32 [ %4, %5 ], [ %56, %79 ], [ %23, %33 ], [ %56, %58 ]
  %85 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4, i32 %84), !nosanitize !10
  %86 = extractvalue { i32, i1 } %85, 0, !nosanitize !10
  %87 = extractvalue { i32, i1 } %85, 1, !nosanitize !10
  br i1 %87, label %19, label %93, !nosanitize !10

88:                                               ; preds = %120, %116
  %89 = phi i32 [ %97, %116 ], [ %132, %120 ]
  %90 = phi i32 [ %118, %116 ], [ %122, %120 ]
  %91 = add nuw nsw i64 %95, 1
  %92 = icmp eq i64 %117, 256
  br i1 %92, label %141, label %93, !llvm.loop !18

93:                                               ; preds = %83, %88
  %94 = phi i64 [ %117, %88 ], [ 0, %83 ]
  %95 = phi i64 [ %91, %88 ], [ 1, %83 ]
  %96 = phi i32 [ %90, %88 ], [ 0, %83 ]
  %97 = phi i32 [ %89, %88 ], [ 0, %83 ]
  %98 = getelementptr inbounds i32, ptr %2, i64 %94
  %99 = load i32, ptr %98, align 4, !tbaa !5
  %100 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %96, i32 %99), !nosanitize !10
  %101 = extractvalue { i32, i1 } %100, 0, !nosanitize !10
  %102 = extractvalue { i32, i1 } %100, 1, !nosanitize !10
  br i1 %102, label %15, label %103, !nosanitize !10

103:                                              ; preds = %93
  %104 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %96, i32 %97), !nosanitize !10
  %105 = extractvalue { i32, i1 } %104, 1, !nosanitize !10
  br i1 %105, label %15, label %106, !nosanitize !10

106:                                              ; preds = %103
  %107 = extractvalue { i32, i1 } %104, 0, !nosanitize !10
  store i32 %107, ptr %98, align 4, !tbaa !5
  %108 = shl nuw nsw i64 %94, 8
  %109 = shl i64 %94, 8
  %110 = and i64 %109, 4294967040
  %111 = or disjoint i64 %110, %94
  %112 = getelementptr inbounds i32, ptr %3, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !5
  %114 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %101, i32 %113), !nosanitize !10
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !10
  br i1 %115, label %15, label %116, !nosanitize !10

116:                                              ; preds = %106
  %117 = add nuw nsw i64 %94, 1
  %118 = extractvalue { i32, i1 } %114, 0
  %119 = icmp ult i64 %94, 255
  br i1 %119, label %124, label %88

120:                                              ; preds = %134
  %121 = add nuw nsw i64 %125, 1
  %122 = extractvalue { i32, i1 } %139, 0
  %123 = icmp eq i64 %121, 256
  br i1 %123, label %88, label %124, !llvm.loop !19

124:                                              ; preds = %116, %120
  %125 = phi i64 [ %121, %120 ], [ %95, %116 ]
  %126 = phi i32 [ %122, %120 ], [ %118, %116 ]
  %127 = phi i32 [ %132, %120 ], [ %97, %116 ]
  %128 = or disjoint i64 %125, %108
  %129 = getelementptr inbounds i32, ptr %3, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !5
  %131 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %127, i32 %130), !nosanitize !10
  %132 = extractvalue { i32, i1 } %131, 0, !nosanitize !10
  %133 = extractvalue { i32, i1 } %131, 1, !nosanitize !10
  br i1 %133, label %15, label %134, !nosanitize !10

134:                                              ; preds = %124
  store i32 %132, ptr %129, align 4, !tbaa !5
  %135 = shl nuw nsw i64 %125, 8
  %136 = or disjoint i64 %135, %94
  %137 = getelementptr inbounds i32, ptr %3, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !5
  %139 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %126, i32 %138), !nosanitize !10
  %140 = extractvalue { i32, i1 } %139, 1, !nosanitize !10
  br i1 %140, label %15, label %120, !nosanitize !10

141:                                              ; preds = %88
  %142 = icmp sgt i32 %86, 0
  br i1 %142, label %143, label %3070

143:                                              ; preds = %141
  %144 = zext nneg i32 %4 to i64
  %145 = getelementptr inbounds i32, ptr %1, i64 %144
  %146 = zext nneg i32 %86 to i64
  %147 = sub nsw i64 0, %146
  %148 = getelementptr inbounds i32, ptr %145, i64 %147
  %149 = getelementptr inbounds i32, ptr %1, i64 %146
  %150 = icmp eq i32 %86, 1
  br i1 %150, label %182, label %151

151:                                              ; preds = %143
  %152 = add nsw i32 %86, -2
  br label %153

153:                                              ; preds = %151, %176
  %154 = phi i32 [ %180, %176 ], [ %152, %151 ]
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %148, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !5
  %158 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %157, i32 1), !nosanitize !10
  %159 = extractvalue { i32, i1 } %158, 1, !nosanitize !10
  br i1 %159, label %15, label %160, !nosanitize !10

160:                                              ; preds = %153
  %161 = extractvalue { i32, i1 } %158, 0, !nosanitize !10
  %162 = sext i32 %157 to i64
  %163 = getelementptr inbounds i8, ptr %0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !9
  %165 = zext i8 %164 to i64
  %166 = sext i32 %161 to i64
  %167 = getelementptr inbounds i8, ptr %0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !9
  %169 = zext i8 %168 to i64
  %170 = shl nuw nsw i64 %165, 8
  %171 = or disjoint i64 %170, %169
  %172 = getelementptr inbounds i32, ptr %3, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !5
  %174 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %173, i32 -1)
  %175 = extractvalue { i32, i1 } %174, 1, !nosanitize !10
  br i1 %175, label %19, label %176, !nosanitize !10

176:                                              ; preds = %160
  %177 = extractvalue { i32, i1 } %174, 0, !nosanitize !10
  store i32 %177, ptr %172, align 4, !tbaa !5
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, ptr %1, i64 %178
  store i32 %154, ptr %179, align 4, !tbaa !5
  %180 = add nsw i32 %154, -1
  %181 = icmp sgt i32 %154, 0
  br i1 %181, label %153, label %182, !llvm.loop !20

182:                                              ; preds = %176, %143
  %183 = add nsw i32 %86, -1
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds i32, ptr %148, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !5
  %187 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %186, i32 1), !nosanitize !10
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !10
  br i1 %188, label %15, label %189, !nosanitize !10

189:                                              ; preds = %182
  %190 = sext i32 %186 to i64
  %191 = getelementptr inbounds i8, ptr %0, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !9
  %193 = zext i8 %192 to i64
  %194 = extractvalue { i32, i1 } %187, 0, !nosanitize !10
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, ptr %0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !9
  %198 = zext i8 %197 to i64
  %199 = shl nuw nsw i64 %193, 8
  %200 = or disjoint i64 %199, %198
  %201 = getelementptr inbounds i32, ptr %3, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !5
  %203 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %202, i32 -1)
  %204 = extractvalue { i32, i1 } %203, 1, !nosanitize !10
  br i1 %204, label %19, label %205, !nosanitize !10

205:                                              ; preds = %189
  %206 = extractvalue { i32, i1 } %203, 0, !nosanitize !10
  store i32 %206, ptr %201, align 4, !tbaa !5
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, ptr %1, i64 %207
  store i32 %183, ptr %208, align 4, !tbaa !5
  %209 = add nuw i32 %86, 1073741824
  %210 = icmp sgt i32 %209, -1
  br i1 %210, label %212, label %211, !nosanitize !10

211:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

212:                                              ; preds = %205
  %213 = shl nuw nsw i32 %86, 1
  %214 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4, i32 %213), !nosanitize !10
  %215 = extractvalue { i32, i1 } %214, 0, !nosanitize !10
  %216 = extractvalue { i32, i1 } %214, 1, !nosanitize !10
  br i1 %216, label %19, label %217, !nosanitize !10

217:                                              ; preds = %212
  %218 = icmp slt i32 %215, 1024
  %219 = getelementptr i8, ptr %0, i64 2
  %220 = add i32 %4, -2
  %221 = sext i32 %220 to i64
  %222 = getelementptr i8, ptr %219, i64 %221
  br label %223

223:                                              ; preds = %780, %217
  %224 = phi i32 [ 254, %217 ], [ %781, %780 ]
  %225 = phi i32 [ %86, %217 ], [ %233, %780 ]
  %226 = shl i32 %224, 8
  br label %227

227:                                              ; preds = %223, %774
  %228 = phi i32 [ 255, %223 ], [ %775, %774 ]
  %229 = phi i32 [ %225, %223 ], [ %233, %774 ]
  %230 = or i32 %228, %226
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, ptr %3, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !5
  %234 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %229, i32 %233), !nosanitize !10
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !10
  br i1 %235, label %19, label %236, !nosanitize !10

236:                                              ; preds = %227
  %237 = extractvalue { i32, i1 } %234, 0, !nosanitize !10
  %238 = icmp sgt i32 %237, 1
  br i1 %238, label %239, label %774

239:                                              ; preds = %236
  %240 = sext i32 %233 to i64
  %241 = getelementptr inbounds i32, ptr %1, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !5
  %243 = sext i32 %229 to i64
  %244 = getelementptr inbounds i32, ptr %1, i64 %243
  %245 = icmp eq i32 %242, %183
  %246 = getelementptr inbounds i32, ptr %241, i64 1
  %247 = select i1 %245, ptr %246, ptr %241
  br i1 %218, label %250, label %248

248:                                              ; preds = %239
  %249 = ptrtoint ptr %247 to i64
  br label %376

250:                                              ; preds = %239
  %251 = ptrtoint ptr %244 to i64
  %252 = ptrtoint ptr %247 to i64
  %253 = sub i64 %251, %252
  %254 = ashr exact i64 %253, 2
  %255 = add nsw i64 %254, 2147483648
  %256 = icmp ult i64 %255, 4294967296
  br i1 %256, label %258, label %257

257:                                              ; preds = %250
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 853, ptr noundef nonnull @__PRETTY_FUNCTION__.sssort) #11
  unreachable

258:                                              ; preds = %250
  %259 = trunc i64 %254 to i32
  %260 = icmp slt i32 %215, %259
  br i1 %260, label %261, label %376

261:                                              ; preds = %258
  %262 = icmp sgt i32 %259, 1048575
  br i1 %262, label %367, label %263

263:                                              ; preds = %261
  %264 = icmp ult i32 %259, 65536
  br i1 %264, label %284, label %265

265:                                              ; preds = %263
  %266 = icmp ult i32 %259, 16777216
  br i1 %266, label %276, label %267

267:                                              ; preds = %265
  %268 = lshr i64 %254, 24
  %269 = and i64 %268, 255
  %270 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !5
  %272 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %271, i32 24), !nosanitize !10
  %273 = extractvalue { i32, i1 } %272, 0, !nosanitize !10
  %274 = extractvalue { i32, i1 } %272, 1, !nosanitize !10
  br i1 %274, label %275, label %298, !nosanitize !10

275:                                              ; preds = %337, %327, %323, %315, %312, %286, %276, %267
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

276:                                              ; preds = %265
  %277 = lshr i64 %254, 16
  %278 = and i64 %277, 65535
  %279 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %278
  %280 = load i32, ptr %279, align 4, !tbaa !5
  %281 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %280, i32 16), !nosanitize !10
  %282 = extractvalue { i32, i1 } %281, 0, !nosanitize !10
  %283 = extractvalue { i32, i1 } %281, 1, !nosanitize !10
  br i1 %283, label %275, label %298, !nosanitize !10

284:                                              ; preds = %263
  %285 = icmp ult i32 %259, 256
  br i1 %285, label %294, label %286

286:                                              ; preds = %284
  %287 = lshr i64 %254, 8
  %288 = and i64 %287, 16777215
  %289 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !5
  %291 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %290, i32 8), !nosanitize !10
  %292 = extractvalue { i32, i1 } %291, 0, !nosanitize !10
  %293 = extractvalue { i32, i1 } %291, 1, !nosanitize !10
  br i1 %293, label %275, label %298, !nosanitize !10

294:                                              ; preds = %284
  %295 = and i64 %254, 4294967295
  %296 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %295
  %297 = load i32, ptr %296, align 4, !tbaa !5
  br label %298

298:                                              ; preds = %294, %286, %276, %267
  %299 = phi i32 [ %273, %267 ], [ %282, %276 ], [ %292, %286 ], [ %297, %294 ]
  %300 = icmp sgt i32 %299, 15
  br i1 %300, label %301, label %335

301:                                              ; preds = %298
  %302 = lshr i32 %299, 1
  %303 = add nsw i32 %302, -7
  %304 = and i32 %299, 2147483646
  %305 = add nsw i32 %304, -6
  %306 = ashr i32 %259, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [256 x i32], ptr @sqq_table, i64 0, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !5
  %310 = shl i32 %309, %303
  %311 = icmp ugt i32 %299, 23
  br i1 %311, label %312, label %323

312:                                              ; preds = %301
  %313 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %310, i32 1), !nosanitize !10
  %314 = extractvalue { i32, i1 } %313, 1, !nosanitize !10
  br i1 %314, label %275, label %315, !nosanitize !10

315:                                              ; preds = %312
  %316 = extractvalue { i32, i1 } %313, 0, !nosanitize !10
  %317 = sdiv i32 %259, %310
  %318 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %316, i32 %317), !nosanitize !10
  %319 = extractvalue { i32, i1 } %318, 1, !nosanitize !10
  br i1 %319, label %275, label %320, !nosanitize !10

320:                                              ; preds = %315
  %321 = extractvalue { i32, i1 } %318, 0, !nosanitize !10
  %322 = ashr i32 %321, 1
  br label %323

323:                                              ; preds = %320, %301
  %324 = phi i32 [ %322, %320 ], [ %310, %301 ]
  %325 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %324, i32 1), !nosanitize !10
  %326 = extractvalue { i32, i1 } %325, 1, !nosanitize !10
  br i1 %326, label %275, label %327, !nosanitize !10

327:                                              ; preds = %323
  %328 = extractvalue { i32, i1 } %325, 0, !nosanitize !10
  %329 = sdiv i32 %259, %324
  %330 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %328, i32 %329), !nosanitize !10
  %331 = extractvalue { i32, i1 } %330, 1, !nosanitize !10
  br i1 %331, label %275, label %332, !nosanitize !10

332:                                              ; preds = %327
  %333 = extractvalue { i32, i1 } %330, 0, !nosanitize !10
  %334 = ashr i32 %333, 1
  br label %357

335:                                              ; preds = %298
  %336 = icmp sgt i32 %299, 7
  br i1 %336, label %337, label %351

337:                                              ; preds = %335
  %338 = lshr i32 %299, 1
  %339 = sub nuw nsw i32 7, %338
  %340 = and i32 %299, 2147483646
  %341 = add nsw i32 %340, -6
  %342 = ashr i32 %259, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [256 x i32], ptr @sqq_table, i64 0, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !5
  %346 = ashr i32 %345, %339
  %347 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %346, i32 1), !nosanitize !10
  %348 = extractvalue { i32, i1 } %347, 1, !nosanitize !10
  br i1 %348, label %275, label %349, !nosanitize !10

349:                                              ; preds = %337
  %350 = extractvalue { i32, i1 } %347, 0, !nosanitize !10
  br label %357

351:                                              ; preds = %335
  %352 = shl i64 %253, 30
  %353 = ashr i64 %352, 32
  %354 = getelementptr inbounds [256 x i32], ptr @sqq_table, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !5
  %356 = ashr i32 %355, 4
  br label %367

357:                                              ; preds = %349, %332
  %358 = phi i32 [ %334, %332 ], [ %350, %349 ]
  %359 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %358, i32 %358), !nosanitize !10
  %360 = extractvalue { i32, i1 } %359, 1, !nosanitize !10
  br i1 %360, label %361, label %362, !nosanitize !10

361:                                              ; preds = %357
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

362:                                              ; preds = %357
  %363 = extractvalue { i32, i1 } %359, 0, !nosanitize !10
  %364 = icmp sgt i32 %363, %259
  %365 = sext i1 %364 to i32
  %366 = add nsw i32 %358, %365
  br label %367

367:                                              ; preds = %362, %351, %261
  %368 = phi i32 [ %356, %351 ], [ 1024, %261 ], [ %366, %362 ]
  %369 = icmp sgt i32 %368, %215
  br i1 %369, label %370, label %376

370:                                              ; preds = %367
  %371 = tail call i32 @llvm.smin.i32(i32 %368, i32 1024)
  %372 = sext i32 %371 to i64
  %373 = sub nsw i64 0, %372
  %374 = getelementptr inbounds i32, ptr %244, i64 %373
  %375 = icmp eq i32 %368, 0
  br label %376

376:                                              ; preds = %370, %367, %258, %248
  %377 = phi i64 [ %249, %248 ], [ %252, %258 ], [ %252, %367 ], [ %252, %370 ]
  %378 = phi i32 [ %215, %248 ], [ %215, %258 ], [ %215, %367 ], [ %371, %370 ]
  %379 = phi ptr [ %149, %248 ], [ %149, %258 ], [ %149, %367 ], [ %374, %370 ]
  %380 = phi ptr [ %244, %248 ], [ %244, %258 ], [ %244, %367 ], [ %374, %370 ]
  %381 = phi i1 [ true, %248 ], [ true, %258 ], [ true, %367 ], [ %375, %370 ]
  %382 = ptrtoint ptr %380 to i64
  %383 = sub i64 %382, %377
  %384 = icmp sgt i64 %383, 4096
  br i1 %384, label %386, label %385

385:                                              ; preds = %376
  tail call fastcc void @ss_mintrosort(ptr noundef %0, ptr noundef nonnull %148, ptr noundef nonnull %247, ptr noundef %380)
  br label %442

386:                                              ; preds = %376
  %387 = ptrtoint ptr %244 to i64
  br label %388

388:                                              ; preds = %421, %386
  %389 = phi i32 [ 0, %386 ], [ %422, %421 ]
  %390 = phi ptr [ %247, %386 ], [ %391, %421 ]
  %391 = getelementptr inbounds i32, ptr %390, i64 1024
  tail call fastcc void @ss_mintrosort(ptr noundef %0, ptr noundef nonnull %148, ptr noundef %390, ptr noundef nonnull %391)
  %392 = ptrtoint ptr %391 to i64
  %393 = sub i64 %387, %392
  %394 = ashr exact i64 %393, 2
  %395 = add nsw i64 %394, 2147483648
  %396 = icmp ult i64 %395, 4294967296
  br i1 %396, label %398, label %397

397:                                              ; preds = %388
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.src, i32 noundef 866, ptr noundef nonnull @__PRETTY_FUNCTION__.sssort) #11
  unreachable

398:                                              ; preds = %388
  %399 = trunc i64 %394 to i32
  %400 = icmp slt i32 %378, %399
  %401 = select i1 %400, ptr %391, ptr %379
  %402 = tail call i32 @llvm.smax.i32(i32 %378, i32 %399)
  %403 = and i32 %389, 1
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %417, label %405

405:                                              ; preds = %398, %405
  %406 = phi i32 [ %413, %405 ], [ 1024, %398 ]
  %407 = phi i32 [ %414, %405 ], [ %389, %398 ]
  %408 = phi ptr [ %411, %405 ], [ %390, %398 ]
  %409 = sext i32 %406 to i64
  %410 = sub nsw i64 0, %409
  %411 = getelementptr inbounds i32, ptr %408, i64 %410
  %412 = getelementptr inbounds i32, ptr %408, i64 %409
  tail call fastcc void @ss_swapmerge(ptr noundef %0, ptr noundef nonnull %148, ptr noundef %411, ptr noundef %408, ptr noundef %412, ptr noundef %401, i32 noundef %402)
  %413 = shl i32 %406, 1
  %414 = ashr i32 %407, 1
  %415 = and i32 %407, 2
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %405, !llvm.loop !21

417:                                              ; preds = %405, %398
  %418 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %389, i32 1), !nosanitize !10
  %419 = extractvalue { i32, i1 } %418, 1, !nosanitize !10
  br i1 %419, label %420, label %421, !nosanitize !10

420:                                              ; preds = %417
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

421:                                              ; preds = %417
  %422 = extractvalue { i32, i1 } %418, 0, !nosanitize !10
  %423 = sub i64 %382, %392
  %424 = icmp sgt i64 %423, 4096
  br i1 %424, label %388, label %425, !llvm.loop !22

425:                                              ; preds = %421
  tail call fastcc void @ss_mintrosort(ptr noundef %0, ptr noundef nonnull %148, ptr noundef nonnull %391, ptr noundef %380)
  %426 = icmp eq i32 %422, 0
  br i1 %426, label %442, label %427

427:                                              ; preds = %425, %437
  %428 = phi i32 [ %440, %437 ], [ %422, %425 ]
  %429 = phi i32 [ %439, %437 ], [ 1024, %425 ]
  %430 = phi ptr [ %438, %437 ], [ %391, %425 ]
  %431 = and i32 %428, 1
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %437, label %433

433:                                              ; preds = %427
  %434 = sext i32 %429 to i64
  %435 = sub nsw i64 0, %434
  %436 = getelementptr inbounds i32, ptr %430, i64 %435
  tail call fastcc void @ss_swapmerge(ptr noundef %0, ptr noundef nonnull %148, ptr noundef %436, ptr noundef %430, ptr noundef %380, ptr noundef %379, i32 noundef %378)
  br label %437

437:                                              ; preds = %433, %427
  %438 = phi ptr [ %436, %433 ], [ %430, %427 ]
  %439 = shl i32 %429, 1
  %440 = ashr i32 %428, 1
  %441 = icmp ult i32 %428, 2
  br i1 %441, label %442, label %427, !llvm.loop !23

442:                                              ; preds = %437, %425, %385
  br i1 %381, label %711, label %443

443:                                              ; preds = %442
  tail call fastcc void @ss_mintrosort(ptr noundef %0, ptr noundef nonnull %148, ptr noundef %380, ptr noundef %244)
  br label %444

444:                                              ; preds = %708, %443
  %445 = phi ptr [ %244, %443 ], [ %709, %708 ]
  %446 = phi ptr [ %380, %443 ], [ %701, %708 ]
  %447 = getelementptr inbounds i32, ptr %445, i64 -1
  %448 = load i32, ptr %447, align 4, !tbaa !5
  %449 = icmp slt i32 %448, 0
  %450 = ashr i32 %448, 31
  %451 = xor i32 %450, %448
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds i32, ptr %148, i64 %452
  %454 = ptrtoint ptr %446 to i64
  %455 = sub i64 %454, %377
  %456 = ashr exact i64 %455, 2
  %457 = add nsw i64 %456, 2147483648
  %458 = icmp ult i64 %457, 4294967296
  br i1 %458, label %460, label %459

459:                                              ; preds = %444
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 604, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_inplacemerge) #11
  unreachable

460:                                              ; preds = %444
  %461 = trunc i64 %456 to i32
  %462 = icmp sgt i32 %461, 0
  br i1 %462, label %463, label %535

463:                                              ; preds = %460
  %464 = load i32, ptr %453, align 4, !tbaa !5
  %465 = getelementptr i8, ptr %453, i64 4
  %466 = load i32, ptr %465, align 4, !tbaa !5
  %467 = sext i32 %464 to i64
  %468 = getelementptr inbounds i8, ptr %219, i64 %467
  %469 = sext i32 %466 to i64
  %470 = getelementptr i8, ptr %219, i64 %469
  %471 = icmp ult ptr %468, %470
  br label %472

472:                                              ; preds = %522, %463
  %473 = phi i32 [ -1, %463 ], [ %531, %522 ]
  %474 = phi i32 [ %461, %463 ], [ %530, %522 ]
  %475 = phi ptr [ %247, %463 ], [ %528, %522 ]
  %476 = lshr i32 %474, 1
  %477 = zext nneg i32 %476 to i64
  %478 = getelementptr inbounds i32, ptr %475, i64 %477
  %479 = load i32, ptr %478, align 4, !tbaa !5
  %480 = ashr i32 %479, 31
  %481 = xor i32 %480, %479
  %482 = zext nneg i32 %481 to i64
  %483 = getelementptr inbounds i32, ptr %148, i64 %482
  %484 = load i32, ptr %483, align 4, !tbaa !5
  %485 = getelementptr i8, ptr %483, i64 4
  %486 = load i32, ptr %485, align 4, !tbaa !5
  %487 = sext i32 %484 to i64
  %488 = getelementptr inbounds i8, ptr %219, i64 %487
  %489 = sext i32 %486 to i64
  %490 = getelementptr i8, ptr %219, i64 %489
  %491 = icmp ult ptr %488, %490
  %492 = select i1 %491, i1 %471, i1 false
  br i1 %492, label %493, label %505

493:                                              ; preds = %472, %499
  %494 = phi ptr [ %500, %499 ], [ %488, %472 ]
  %495 = phi ptr [ %501, %499 ], [ %468, %472 ]
  %496 = load i8, ptr %494, align 1, !tbaa !9
  %497 = load i8, ptr %495, align 1, !tbaa !9
  %498 = icmp eq i8 %496, %497
  br i1 %498, label %499, label %514

499:                                              ; preds = %493
  %500 = getelementptr inbounds i8, ptr %494, i64 1
  %501 = getelementptr inbounds i8, ptr %495, i64 1
  %502 = icmp ult ptr %500, %490
  %503 = icmp ult ptr %501, %470
  %504 = select i1 %502, i1 %503, i1 false
  br i1 %504, label %493, label %505, !llvm.loop !24

505:                                              ; preds = %499, %472
  %506 = phi ptr [ %468, %472 ], [ %501, %499 ]
  %507 = phi ptr [ %488, %472 ], [ %500, %499 ]
  %508 = phi i1 [ %491, %472 ], [ %502, %499 ]
  %509 = phi i1 [ %471, %472 ], [ %503, %499 ]
  br i1 %508, label %510, label %520

510:                                              ; preds = %505
  br i1 %509, label %511, label %522

511:                                              ; preds = %510
  %512 = load i8, ptr %507, align 1, !tbaa !9
  %513 = load i8, ptr %506, align 1, !tbaa !9
  br label %514

514:                                              ; preds = %493, %511
  %515 = phi i8 [ %513, %511 ], [ %497, %493 ]
  %516 = phi i8 [ %512, %511 ], [ %496, %493 ]
  %517 = zext i8 %516 to i32
  %518 = zext i8 %515 to i32
  %519 = sub nsw i32 %517, %518
  br label %522

520:                                              ; preds = %505
  %521 = sext i1 %509 to i32
  br label %522

522:                                              ; preds = %520, %514, %510
  %523 = phi i32 [ %521, %520 ], [ %519, %514 ], [ 1, %510 ]
  %524 = icmp slt i32 %523, 0
  %525 = and i32 %474, 1
  %526 = xor i32 %525, 1
  %527 = getelementptr inbounds i32, ptr %478, i64 1
  %528 = select i1 %524, ptr %527, ptr %475
  %529 = select i1 %524, i32 %526, i32 0
  %530 = sub nsw i32 %476, %529
  %531 = select i1 %524, i32 %473, i32 %523
  %532 = icmp sgt i32 %530, 0
  br i1 %532, label %472, label %533, !llvm.loop !25

533:                                              ; preds = %522
  %534 = icmp ult ptr %528, %446
  br i1 %534, label %537, label %699

535:                                              ; preds = %460
  %536 = icmp ugt ptr %446, %247
  br i1 %536, label %542, label %699

537:                                              ; preds = %533
  %538 = icmp eq i32 %531, 0
  br i1 %538, label %539, label %542

539:                                              ; preds = %537
  %540 = load i32, ptr %528, align 4, !tbaa !5
  %541 = xor i32 %540, -1
  store i32 %541, ptr %528, align 4, !tbaa !5
  br label %542

542:                                              ; preds = %539, %537, %535
  %543 = phi ptr [ %528, %539 ], [ %528, %537 ], [ %247, %535 ]
  %544 = ptrtoint ptr %543 to i64
  %545 = sub i64 %454, %544
  %546 = ashr i64 %545, 2
  %547 = add nsw i64 %546, 2147483648
  %548 = icmp ult i64 %547, 4294967296
  br i1 %548, label %550, label %549

549:                                              ; preds = %542
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 553, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_rotate) #11
  unreachable

550:                                              ; preds = %542
  %551 = ptrtoint ptr %445 to i64
  %552 = sub i64 %551, %454
  %553 = ashr i64 %552, 2
  %554 = add nsw i64 %553, 2147483648
  %555 = icmp ult i64 %554, 4294967296
  br i1 %555, label %557, label %556

556:                                              ; preds = %550
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.src, i32 noundef 554, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_rotate) #11
  unreachable

557:                                              ; preds = %550
  %558 = trunc i64 %546 to i32
  %559 = trunc i64 %553 to i32
  %560 = icmp sgt i32 %558, 0
  %561 = icmp sgt i32 %559, 0
  %562 = and i1 %561, %560
  br i1 %562, label %563, label %695

563:                                              ; preds = %557
  %564 = getelementptr inbounds i32, ptr %446, i64 -1
  br label %565

565:                                              ; preds = %687, %563
  %566 = phi i32 [ %559, %563 ], [ %691, %687 ]
  %567 = phi i32 [ %558, %563 ], [ %690, %687 ]
  %568 = phi ptr [ %445, %563 ], [ %689, %687 ]
  %569 = phi ptr [ %543, %563 ], [ %688, %687 ]
  %570 = icmp eq i32 %567, %566
  br i1 %570, label %571, label %629

571:                                              ; preds = %565
  %572 = icmp ne i32 %566, 0
  %573 = sext i1 %572 to i32
  %574 = add i32 %566, %573
  %575 = zext i32 %574 to i64
  %576 = add nuw nsw i64 %575, 1
  %577 = icmp ult i32 %574, 7
  br i1 %577, label %615, label %578

578:                                              ; preds = %571
  %579 = getelementptr i8, ptr %569, i64 4
  %580 = icmp ne i32 %566, 0
  %581 = sext i1 %580 to i32
  %582 = add i32 %566, %581
  %583 = zext i32 %582 to i64
  %584 = shl nuw nsw i64 %583, 2
  %585 = getelementptr i8, ptr %579, i64 %584
  %586 = getelementptr i8, ptr %446, i64 4
  %587 = getelementptr i8, ptr %586, i64 %584
  %588 = icmp ult ptr %569, %587
  %589 = icmp ult ptr %446, %585
  %590 = and i1 %588, %589
  br i1 %590, label %615, label %591

591:                                              ; preds = %578
  %592 = and i64 %576, 8589934584
  %593 = shl nuw nsw i64 %592, 2
  %594 = getelementptr i8, ptr %569, i64 %593
  %595 = trunc i64 %592 to i32
  %596 = sub i32 %566, %595
  %597 = shl nuw nsw i64 %592, 2
  %598 = getelementptr i8, ptr %446, i64 %597
  br label %599

599:                                              ; preds = %599, %591
  %600 = phi i64 [ 0, %591 ], [ %611, %599 ]
  %601 = shl i64 %600, 2
  %602 = getelementptr i8, ptr %569, i64 %601
  %603 = shl i64 %600, 2
  %604 = getelementptr i8, ptr %446, i64 %603
  %605 = getelementptr i32, ptr %602, i64 4
  %606 = load <4 x i32>, ptr %602, align 4, !tbaa !5, !alias.scope !26, !noalias !29
  %607 = load <4 x i32>, ptr %605, align 4, !tbaa !5, !alias.scope !26, !noalias !29
  %608 = getelementptr i32, ptr %604, i64 4
  %609 = load <4 x i32>, ptr %604, align 4, !tbaa !5, !alias.scope !29
  %610 = load <4 x i32>, ptr %608, align 4, !tbaa !5, !alias.scope !29
  store <4 x i32> %609, ptr %602, align 4, !tbaa !5, !alias.scope !26, !noalias !29
  store <4 x i32> %610, ptr %605, align 4, !tbaa !5, !alias.scope !26, !noalias !29
  store <4 x i32> %606, ptr %604, align 4, !tbaa !5, !alias.scope !29
  store <4 x i32> %607, ptr %608, align 4, !tbaa !5, !alias.scope !29
  %611 = add nuw i64 %600, 8
  %612 = icmp eq i64 %611, %592
  br i1 %612, label %613, label %599, !llvm.loop !31

613:                                              ; preds = %599
  %614 = icmp eq i64 %576, %592
  br i1 %614, label %695, label %615

615:                                              ; preds = %578, %571, %613
  %616 = phi ptr [ %569, %578 ], [ %569, %571 ], [ %594, %613 ]
  %617 = phi i32 [ %566, %578 ], [ %566, %571 ], [ %596, %613 ]
  %618 = phi ptr [ %446, %578 ], [ %446, %571 ], [ %598, %613 ]
  br label %619

619:                                              ; preds = %615, %619
  %620 = phi ptr [ %626, %619 ], [ %616, %615 ]
  %621 = phi i32 [ %625, %619 ], [ %617, %615 ]
  %622 = phi ptr [ %627, %619 ], [ %618, %615 ]
  %623 = load i32, ptr %620, align 4, !tbaa !5
  %624 = load i32, ptr %622, align 4, !tbaa !5
  store i32 %624, ptr %620, align 4, !tbaa !5
  store i32 %623, ptr %622, align 4, !tbaa !5
  %625 = add nsw i32 %621, -1
  %626 = getelementptr inbounds i32, ptr %620, i64 1
  %627 = getelementptr inbounds i32, ptr %622, i64 1
  %628 = icmp ugt i32 %621, 1
  br i1 %628, label %619, label %695, !llvm.loop !34

629:                                              ; preds = %565
  %630 = icmp ult i32 %567, %566
  br i1 %630, label %631, label %652

631:                                              ; preds = %629
  %632 = getelementptr inbounds i32, ptr %568, i64 -1
  %633 = xor i32 %567, -1
  br label %634

634:                                              ; preds = %650, %631
  %635 = phi ptr [ %651, %650 ], [ %632, %631 ]
  %636 = phi i32 [ %647, %650 ], [ %566, %631 ]
  %637 = load i32, ptr %635, align 4, !tbaa !5
  br label %638

638:                                              ; preds = %634, %638
  %639 = phi ptr [ %642, %638 ], [ %635, %634 ]
  %640 = phi ptr [ %644, %638 ], [ %564, %634 ]
  %641 = load i32, ptr %640, align 4, !tbaa !5
  %642 = getelementptr inbounds i32, ptr %639, i64 -1
  store i32 %641, ptr %639, align 4, !tbaa !5
  %643 = load i32, ptr %642, align 4, !tbaa !5
  %644 = getelementptr inbounds i32, ptr %640, i64 -1
  store i32 %643, ptr %640, align 4, !tbaa !5
  %645 = icmp ult ptr %644, %569
  br i1 %645, label %646, label %638

646:                                              ; preds = %638
  store i32 %637, ptr %642, align 4, !tbaa !5
  %647 = add i32 %636, %633
  %648 = icmp sgt i32 %647, %567
  br i1 %648, label %650, label %687

649:                                              ; preds = %674
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

650:                                              ; preds = %646
  %651 = getelementptr inbounds i32, ptr %639, i64 -2
  br label %634

652:                                              ; preds = %629
  %653 = load i32, ptr %569, align 4, !tbaa !5
  %654 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %566, i32 1)
  %655 = extractvalue { i32, i1 } %654, 1
  %656 = extractvalue { i32, i1 } %654, 0
  br i1 %655, label %657, label %683, !nosanitize !10

657:                                              ; preds = %652, %657
  %658 = phi ptr [ %661, %657 ], [ %569, %652 ]
  %659 = phi ptr [ %663, %657 ], [ %446, %652 ]
  %660 = load i32, ptr %659, align 4, !tbaa !5
  %661 = getelementptr inbounds i32, ptr %658, i64 1
  store i32 %660, ptr %658, align 4, !tbaa !5
  %662 = load i32, ptr %661, align 4, !tbaa !5
  %663 = getelementptr inbounds i32, ptr %659, i64 1
  store i32 %662, ptr %659, align 4, !tbaa !5
  %664 = icmp ugt ptr %568, %663
  br i1 %664, label %657, label %665

665:                                              ; preds = %657
  store i32 %653, ptr %661, align 4, !tbaa !5
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

666:                                              ; preds = %683, %666
  %667 = phi ptr [ %670, %666 ], [ %684, %683 ]
  %668 = phi ptr [ %672, %666 ], [ %446, %683 ]
  %669 = load i32, ptr %668, align 4, !tbaa !5
  %670 = getelementptr inbounds i32, ptr %667, i64 1
  store i32 %669, ptr %667, align 4, !tbaa !5
  %671 = load i32, ptr %670, align 4, !tbaa !5
  %672 = getelementptr inbounds i32, ptr %668, i64 1
  store i32 %671, ptr %668, align 4, !tbaa !5
  %673 = icmp ugt ptr %568, %672
  br i1 %673, label %666, label %674

674:                                              ; preds = %666
  store i32 %685, ptr %670, align 4, !tbaa !5
  %675 = getelementptr inbounds i32, ptr %667, i64 2
  %676 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %686, i32 %656), !nosanitize !10
  %677 = extractvalue { i32, i1 } %676, 0, !nosanitize !10
  %678 = extractvalue { i32, i1 } %676, 1, !nosanitize !10
  br i1 %678, label %649, label %679, !nosanitize !10

679:                                              ; preds = %674
  %680 = icmp sgt i32 %677, %566
  br i1 %680, label %681, label %687

681:                                              ; preds = %679
  %682 = load i32, ptr %675, align 4, !tbaa !5
  br label %683

683:                                              ; preds = %652, %681
  %684 = phi ptr [ %675, %681 ], [ %569, %652 ]
  %685 = phi i32 [ %682, %681 ], [ %653, %652 ]
  %686 = phi i32 [ %677, %681 ], [ %567, %652 ]
  br label %666

687:                                              ; preds = %679, %646
  %688 = phi ptr [ %569, %646 ], [ %675, %679 ]
  %689 = phi ptr [ %642, %646 ], [ %568, %679 ]
  %690 = phi i32 [ %567, %646 ], [ %677, %679 ]
  %691 = phi i32 [ %647, %646 ], [ %566, %679 ]
  %692 = icmp sgt i32 %690, 0
  %693 = icmp sgt i32 %691, 0
  %694 = and i1 %692, %693
  br i1 %694, label %565, label %695, !llvm.loop !35

695:                                              ; preds = %687, %619, %613, %557
  %696 = sub nsw i64 0, %546
  %697 = getelementptr inbounds i32, ptr %445, i64 %696
  %698 = icmp eq ptr %543, %247
  br i1 %698, label %711, label %699

699:                                              ; preds = %695, %535, %533
  %700 = phi ptr [ %697, %695 ], [ %445, %533 ], [ %445, %535 ]
  %701 = phi ptr [ %543, %695 ], [ %446, %533 ], [ %446, %535 ]
  %702 = getelementptr inbounds i32, ptr %700, i64 -1
  br i1 %449, label %703, label %708

703:                                              ; preds = %699, %703
  %704 = phi ptr [ %705, %703 ], [ %702, %699 ]
  %705 = getelementptr inbounds i32, ptr %704, i64 -1
  %706 = load i32, ptr %705, align 4, !tbaa !5
  %707 = icmp slt i32 %706, 0
  br i1 %707, label %703, label %708, !llvm.loop !36

708:                                              ; preds = %703, %699
  %709 = phi ptr [ %702, %699 ], [ %705, %703 ]
  %710 = icmp eq ptr %701, %709
  br i1 %710, label %711, label %444

711:                                              ; preds = %708, %695, %442
  br i1 %245, label %712, label %774

712:                                              ; preds = %711
  %713 = load i32, ptr %241, align 4, !tbaa !5
  %714 = icmp ult ptr %246, %244
  br i1 %714, label %715, label %771

715:                                              ; preds = %712
  %716 = sext i32 %713 to i64
  %717 = getelementptr inbounds i32, ptr %148, i64 %716
  %718 = load i32, ptr %717, align 4, !tbaa !5
  %719 = freeze i32 %718
  %720 = sext i32 %719 to i64
  %721 = getelementptr i8, ptr %219, i64 %720
  %722 = icmp ult ptr %721, %222
  br i1 %722, label %731, label %723

723:                                              ; preds = %715, %727
  %724 = phi ptr [ %729, %727 ], [ %246, %715 ]
  %725 = load i32, ptr %724, align 4, !tbaa !5
  %726 = icmp slt i32 %725, 0
  br i1 %726, label %727, label %771

727:                                              ; preds = %723
  %728 = getelementptr inbounds i32, ptr %724, i64 -1
  store i32 %725, ptr %728, align 4, !tbaa !5
  %729 = getelementptr inbounds i32, ptr %724, i64 1
  %730 = icmp ult ptr %729, %244
  br i1 %730, label %723, label %771, !llvm.loop !37

731:                                              ; preds = %715, %767
  %732 = phi ptr [ %769, %767 ], [ %246, %715 ]
  %733 = load i32, ptr %732, align 4, !tbaa !5
  %734 = icmp slt i32 %733, 0
  br i1 %734, label %767, label %735

735:                                              ; preds = %731
  %736 = zext nneg i32 %733 to i64
  %737 = getelementptr inbounds i32, ptr %148, i64 %736
  %738 = load i32, ptr %737, align 4, !tbaa !5
  %739 = getelementptr i8, ptr %737, i64 4
  %740 = load i32, ptr %739, align 4, !tbaa !5
  %741 = sext i32 %738 to i64
  %742 = getelementptr inbounds i8, ptr %219, i64 %741
  %743 = sext i32 %740 to i64
  %744 = getelementptr i8, ptr %219, i64 %743
  %745 = icmp ult ptr %742, %744
  br i1 %745, label %746, label %767

746:                                              ; preds = %735, %752
  %747 = phi ptr [ %753, %752 ], [ %721, %735 ]
  %748 = phi ptr [ %754, %752 ], [ %742, %735 ]
  %749 = load i8, ptr %747, align 1, !tbaa !9
  %750 = load i8, ptr %748, align 1, !tbaa !9
  %751 = icmp eq i8 %749, %750
  br i1 %751, label %752, label %763

752:                                              ; preds = %746
  %753 = getelementptr inbounds i8, ptr %747, i64 1
  %754 = getelementptr inbounds i8, ptr %748, i64 1
  %755 = icmp ult ptr %753, %222
  %756 = icmp ult ptr %754, %744
  %757 = select i1 %755, i1 %756, i1 false
  br i1 %757, label %746, label %758, !llvm.loop !24

758:                                              ; preds = %752
  br i1 %755, label %759, label %771

759:                                              ; preds = %758
  br i1 %756, label %760, label %767

760:                                              ; preds = %759
  %761 = load i8, ptr %753, align 1, !tbaa !9
  %762 = load i8, ptr %754, align 1, !tbaa !9
  br label %763

763:                                              ; preds = %746, %760
  %764 = phi i8 [ %762, %760 ], [ %750, %746 ]
  %765 = phi i8 [ %761, %760 ], [ %749, %746 ]
  %766 = icmp ugt i8 %765, %764
  br i1 %766, label %767, label %771

767:                                              ; preds = %763, %759, %735, %731
  %768 = getelementptr inbounds i32, ptr %732, i64 -1
  store i32 %733, ptr %768, align 4, !tbaa !5
  %769 = getelementptr inbounds i32, ptr %732, i64 1
  %770 = icmp ult ptr %769, %244
  br i1 %770, label %731, label %771, !llvm.loop !37

771:                                              ; preds = %727, %723, %767, %763, %758, %712
  %772 = phi ptr [ %246, %712 ], [ %732, %763 ], [ %769, %767 ], [ %732, %758 ], [ %724, %723 ], [ %729, %727 ]
  %773 = getelementptr inbounds i32, ptr %772, i64 -1
  store i32 %713, ptr %773, align 4, !tbaa !5
  br label %774

774:                                              ; preds = %236, %711, %771
  %775 = add nsw i32 %228, -1
  %776 = icmp slt i32 %224, %775
  br i1 %776, label %227, label %777, !llvm.loop !38

777:                                              ; preds = %774
  %778 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %224, i32 -1)
  %779 = extractvalue { i32, i1 } %778, 1, !nosanitize !10
  br i1 %779, label %19, label %780, !nosanitize !10

780:                                              ; preds = %777
  %781 = extractvalue { i32, i1 } %778, 0, !nosanitize !10
  %782 = icmp sgt i32 %233, 0
  br i1 %782, label %223, label %783, !llvm.loop !39

783:                                              ; preds = %780, %835
  %784 = phi i32 [ %836, %835 ], [ %183, %780 ]
  %785 = zext i32 %784 to i64
  %786 = getelementptr inbounds i32, ptr %1, i64 %785
  %787 = load i32, ptr %786, align 4, !tbaa !5
  %788 = icmp sgt i32 %787, -1
  br i1 %788, label %789, label %810

789:                                              ; preds = %783, %801
  %790 = phi i32 [ %803, %801 ], [ %787, %783 ]
  %791 = phi i64 [ %795, %801 ], [ %785, %783 ]
  %792 = zext nneg i32 %790 to i64
  %793 = getelementptr inbounds i32, ptr %149, i64 %792
  %794 = trunc i64 %791 to i32
  store i32 %794, ptr %793, align 4, !tbaa !5
  %795 = add nsw i64 %791, -1
  %796 = icmp sgt i32 %794, 0
  br i1 %796, label %801, label %797

797:                                              ; preds = %789
  %798 = getelementptr inbounds i32, ptr %1, i64 %791
  %799 = trunc i64 %795 to i32
  %800 = sub nuw nsw i32 %799, %784
  store i32 %800, ptr %798, align 4, !tbaa !5
  br label %838

801:                                              ; preds = %789
  %802 = getelementptr inbounds i32, ptr %1, i64 %795
  %803 = load i32, ptr %802, align 4, !tbaa !5
  %804 = icmp sgt i32 %803, -1
  br i1 %804, label %789, label %805, !llvm.loop !40

805:                                              ; preds = %801
  %806 = getelementptr inbounds i32, ptr %1, i64 %791
  %807 = trunc i64 %795 to i32
  %808 = sub i32 %807, %784
  store i32 %808, ptr %806, align 4, !tbaa !5
  %809 = icmp eq i32 %794, 1
  br i1 %809, label %838, label %810

810:                                              ; preds = %805, %783
  %811 = phi i32 [ %807, %805 ], [ %784, %783 ]
  %812 = sext i32 %811 to i64
  br label %813

813:                                              ; preds = %822, %810
  %814 = phi i64 [ %823, %822 ], [ %812, %810 ]
  %815 = getelementptr inbounds i32, ptr %1, i64 %814
  %816 = load i32, ptr %815, align 4, !tbaa !5
  %817 = xor i32 %816, -1
  store i32 %817, ptr %815, align 4, !tbaa !5
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds i32, ptr %149, i64 %818
  store i32 %811, ptr %819, align 4, !tbaa !5
  %820 = and i64 %814, 4294967295
  %821 = icmp eq i64 %820, 2147483648
  br i1 %821, label %19, label %822, !nosanitize !10

822:                                              ; preds = %813
  %823 = add nsw i64 %814, -1
  %824 = shl i64 %823, 32
  %825 = ashr exact i64 %824, 32
  %826 = getelementptr inbounds i32, ptr %1, i64 %825
  %827 = load i32, ptr %826, align 4, !tbaa !5
  %828 = icmp slt i32 %827, 0
  br i1 %828, label %813, label %829, !llvm.loop !41

829:                                              ; preds = %822
  %830 = trunc i64 %823 to i32
  %831 = zext nneg i32 %827 to i64
  %832 = getelementptr inbounds i32, ptr %149, i64 %831
  store i32 %811, ptr %832, align 4, !tbaa !5
  %833 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %830, i32 -1)
  %834 = extractvalue { i32, i1 } %833, 1, !nosanitize !10
  br i1 %834, label %19, label %835, !nosanitize !10

835:                                              ; preds = %829
  %836 = extractvalue { i32, i1 } %833, 0, !nosanitize !10
  %837 = icmp sgt i32 %836, -1
  br i1 %837, label %783, label %838, !llvm.loop !42

838:                                              ; preds = %835, %805, %797
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10)
  %839 = icmp ult i32 %86, 65536
  br i1 %839, label %859, label %840

840:                                              ; preds = %838
  %841 = icmp ult i32 %86, 16777216
  br i1 %841, label %851, label %842

842:                                              ; preds = %840
  %843 = lshr i32 %86, 24
  %844 = zext nneg i32 %843 to i64
  %845 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %844
  %846 = load i32, ptr %845, align 4, !tbaa !5
  %847 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %846, i32 24), !nosanitize !10
  %848 = extractvalue { i32, i1 } %847, 0, !nosanitize !10
  %849 = extractvalue { i32, i1 } %847, 1, !nosanitize !10
  br i1 %849, label %850, label %872, !nosanitize !10

850:                                              ; preds = %861, %851, %842
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

851:                                              ; preds = %840
  %852 = lshr i32 %86, 16
  %853 = zext nneg i32 %852 to i64
  %854 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %853
  %855 = load i32, ptr %854, align 4, !tbaa !5
  %856 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %855, i32 16), !nosanitize !10
  %857 = extractvalue { i32, i1 } %856, 0, !nosanitize !10
  %858 = extractvalue { i32, i1 } %856, 1, !nosanitize !10
  br i1 %858, label %850, label %872, !nosanitize !10

859:                                              ; preds = %838
  %860 = icmp ult i32 %86, 256
  br i1 %860, label %869, label %861

861:                                              ; preds = %859
  %862 = lshr i32 %86, 8
  %863 = zext nneg i32 %862 to i64
  %864 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %863
  %865 = load i32, ptr %864, align 4, !tbaa !5
  %866 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %865, i32 8), !nosanitize !10
  %867 = extractvalue { i32, i1 } %866, 0, !nosanitize !10
  %868 = extractvalue { i32, i1 } %866, 1, !nosanitize !10
  br i1 %868, label %850, label %872, !nosanitize !10

869:                                              ; preds = %859
  %870 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %146
  %871 = load i32, ptr %870, align 4, !tbaa !5
  br label %872

872:                                              ; preds = %869, %861, %851, %842
  %873 = phi i32 [ %848, %842 ], [ %857, %851 ], [ %867, %861 ], [ %871, %869 ]
  %874 = add i32 %873, 1073741824
  %875 = icmp sgt i32 %874, -1
  br i1 %875, label %877, label %876, !nosanitize !10

876:                                              ; preds = %872
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

877:                                              ; preds = %872
  %878 = shl nsw i32 %873, 1
  %879 = sdiv i32 %878, 3
  store i32 %879, ptr %9, align 4, !tbaa !43
  store i32 %86, ptr %10, align 4, !tbaa !45
  %880 = sub nsw i32 0, %86
  %881 = load i32, ptr %1, align 4, !tbaa !5
  %882 = icmp sgt i32 %881, %880
  br i1 %882, label %883, label %2931

883:                                              ; preds = %877
  %884 = getelementptr i32, ptr %149, i64 1
  %885 = getelementptr i32, ptr %1, i64 1
  %886 = ptrtoint ptr %149 to i64
  %887 = ptrtoint ptr %1 to i64
  br label %888

888:                                              ; preds = %2927, %883
  %889 = phi i32 [ %881, %883 ], [ %2929, %2927 ]
  %890 = phi ptr [ %884, %883 ], [ %2928, %2927 ]
  %891 = ptrtoint ptr %890 to i64
  %892 = sub i64 %891, %886
  %893 = ashr i64 %892, 2
  %894 = add nsw i64 %893, 2147483648
  %895 = icmp ult i64 %894, 4294967296
  %896 = shl i64 %892, 30
  %897 = ashr i64 %896, 32
  %898 = sub nsw i64 0, %897
  br i1 %895, label %899, label %2791

899:                                              ; preds = %888, %2784
  %900 = phi i32 [ %2788, %2784 ], [ %889, %888 ]
  %901 = phi ptr [ %2787, %2784 ], [ %1, %888 ]
  %902 = phi i32 [ %2786, %2784 ], [ 0, %888 ]
  %903 = phi i32 [ %2785, %2784 ], [ 0, %888 ]
  %904 = icmp slt i32 %900, 0
  br i1 %904, label %2772, label %905

905:                                              ; preds = %899
  %906 = icmp eq i32 %902, 0
  br i1 %906, label %910, label %907

907:                                              ; preds = %905
  %908 = sext i32 %902 to i64
  %909 = getelementptr inbounds i32, ptr %901, i64 %908
  store i32 %902, ptr %909, align 4, !tbaa !5
  br label %910

910:                                              ; preds = %907, %905
  %911 = zext nneg i32 %900 to i64
  %912 = getelementptr inbounds i32, ptr %149, i64 %911
  %913 = load i32, ptr %912, align 4, !tbaa !5
  %914 = sext i32 %913 to i64
  %915 = getelementptr i32, ptr %885, i64 %914
  %916 = ptrtoint ptr %915 to i64
  %917 = ptrtoint ptr %901 to i64
  %918 = sub i64 %916, %917
  %919 = icmp sgt i64 %918, 4
  br i1 %919, label %923, label %920

920:                                              ; preds = %910
  %921 = icmp eq i64 %918, 4
  %922 = sext i1 %921 to i32
  br label %2780

923:                                              ; preds = %910
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  %924 = lshr exact i64 %918, 2
  %925 = icmp ult i64 %918, 8589934592
  br i1 %925, label %926, label %2821

926:                                              ; preds = %923
  %927 = trunc i64 %924 to i32
  %928 = icmp ult i32 %927, 65536
  br i1 %928, label %945, label %929

929:                                              ; preds = %926
  %930 = icmp ult i32 %927, 16777216
  br i1 %930, label %938, label %931

931:                                              ; preds = %929
  %932 = lshr i64 %918, 26
  %933 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %932
  %934 = load i32, ptr %933, align 4, !tbaa !5
  %935 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %934, i32 24), !nosanitize !10
  %936 = extractvalue { i32, i1 } %935, 0, !nosanitize !10
  %937 = extractvalue { i32, i1 } %935, 1, !nosanitize !10
  br i1 %937, label %2822, label %957, !nosanitize !10

938:                                              ; preds = %929
  %939 = lshr i64 %918, 18
  %940 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %939
  %941 = load i32, ptr %940, align 4, !tbaa !5
  %942 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %941, i32 16), !nosanitize !10
  %943 = extractvalue { i32, i1 } %942, 0, !nosanitize !10
  %944 = extractvalue { i32, i1 } %942, 1, !nosanitize !10
  br i1 %944, label %2822, label %957, !nosanitize !10

945:                                              ; preds = %926
  %946 = icmp ult i32 %927, 256
  br i1 %946, label %954, label %947

947:                                              ; preds = %945
  %948 = lshr i64 %918, 10
  %949 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %948
  %950 = load i32, ptr %949, align 4, !tbaa !5
  %951 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %950, i32 8), !nosanitize !10
  %952 = extractvalue { i32, i1 } %951, 0, !nosanitize !10
  %953 = extractvalue { i32, i1 } %951, 1, !nosanitize !10
  br i1 %953, label %2822, label %957, !nosanitize !10

954:                                              ; preds = %945
  %955 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %924
  %956 = load i32, ptr %955, align 4, !tbaa !5
  br label %957

957:                                              ; preds = %954, %947, %938, %931
  %958 = phi i32 [ %936, %931 ], [ %943, %938 ], [ %952, %947 ], [ %956, %954 ]
  br label %959

959:                                              ; preds = %957, %2762
  %960 = phi i32 [ %2763, %2762 ], [ 0, %957 ]
  %961 = phi ptr [ %2771, %2762 ], [ undef, %957 ]
  %962 = phi ptr [ %2770, %2762 ], [ undef, %957 ]
  %963 = phi ptr [ %2764, %2762 ], [ %915, %957 ]
  %964 = phi ptr [ %2765, %2762 ], [ %901, %957 ]
  %965 = phi ptr [ %2766, %2762 ], [ %890, %957 ]
  %966 = phi i32 [ %2767, %2762 ], [ %958, %957 ]
  %967 = phi i32 [ %2768, %2762 ], [ 0, %957 ]
  %968 = phi i32 [ %2769, %2762 ], [ -1, %957 ]
  %969 = icmp slt i32 %966, 0
  br i1 %969, label %1933, label %970

970:                                              ; preds = %959
  %971 = ptrtoint ptr %963 to i64
  %972 = ptrtoint ptr %964 to i64
  %973 = sub i64 %971, %972
  %974 = freeze i64 %973
  %975 = ashr i64 %974, 2
  %976 = icmp slt i64 %975, 9
  %977 = trunc i64 %975 to i32
  %978 = and i32 %977, 1
  %979 = icmp eq i32 %978, 0
  %980 = add nsw i32 %977, -1
  %981 = lshr i32 %980, 1
  %982 = zext nneg i32 %981 to i64
  %983 = getelementptr inbounds i32, ptr %964, i64 %982
  %984 = zext nneg i32 %980 to i64
  %985 = getelementptr inbounds i32, ptr %964, i64 %984
  %986 = getelementptr inbounds i32, ptr %963, i64 -1
  %987 = icmp ult ptr %964, %986
  br i1 %976, label %1882, label %988

988:                                              ; preds = %970
  %989 = icmp ult i64 %975, 2147483648
  %990 = icmp eq i32 %966, 0
  br i1 %989, label %991, label %2823

991:                                              ; preds = %988
  br i1 %990, label %1698, label %992

992:                                              ; preds = %991
  store ptr %962, ptr %8, align 8, !tbaa !46
  %993 = add nsw i32 %966, -1
  %994 = lshr i64 %975, 1
  %995 = getelementptr inbounds i32, ptr %964, i64 %994
  %996 = icmp ult i32 %977, 513
  br i1 %996, label %1125, label %997

997:                                              ; preds = %992
  %998 = lshr i32 %977, 3
  %999 = zext nneg i32 %998 to i64
  %1000 = getelementptr inbounds i32, ptr %964, i64 %999
  %1001 = shl nuw nsw i32 %998, 1
  %1002 = zext nneg i32 %1001 to i64
  %1003 = getelementptr inbounds i32, ptr %964, i64 %1002
  %1004 = load i32, ptr %964, align 4, !tbaa !5
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds i32, ptr %965, i64 %1005
  %1007 = load i32, ptr %1006, align 4, !tbaa !5
  %1008 = load i32, ptr %1000, align 4, !tbaa !5
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds i32, ptr %965, i64 %1009
  %1011 = load i32, ptr %1010, align 4, !tbaa !5
  %1012 = icmp sgt i32 %1007, %1011
  %1013 = select i1 %1012, i32 %1004, i32 %1008
  %1014 = select i1 %1012, ptr %964, ptr %1000
  %1015 = sext i32 %1013 to i64
  %1016 = getelementptr inbounds i32, ptr %965, i64 %1015
  %1017 = load i32, ptr %1016, align 4, !tbaa !5
  %1018 = load i32, ptr %1003, align 4, !tbaa !5
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr inbounds i32, ptr %965, i64 %1019
  %1021 = load i32, ptr %1020, align 4, !tbaa !5
  %1022 = icmp sgt i32 %1017, %1021
  br i1 %1022, label %1023, label %1031

1023:                                             ; preds = %997
  %1024 = select i1 %1012, i32 %1008, i32 %1004
  %1025 = select i1 %1012, ptr %1000, ptr %964
  %1026 = sext i32 %1024 to i64
  %1027 = getelementptr inbounds i32, ptr %965, i64 %1026
  %1028 = load i32, ptr %1027, align 4, !tbaa !5
  %1029 = icmp sgt i32 %1028, %1021
  %1030 = select i1 %1029, ptr %1025, ptr %1003
  br label %1031

1031:                                             ; preds = %1023, %997
  %1032 = phi ptr [ %1030, %1023 ], [ %1014, %997 ]
  %1033 = sub nsw i64 0, %999
  %1034 = getelementptr inbounds i32, ptr %995, i64 %1033
  %1035 = getelementptr inbounds i32, ptr %995, i64 %999
  %1036 = load i32, ptr %1034, align 4, !tbaa !5
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds i32, ptr %965, i64 %1037
  %1039 = load i32, ptr %1038, align 4, !tbaa !5
  %1040 = load i32, ptr %995, align 4, !tbaa !5
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds i32, ptr %965, i64 %1041
  %1043 = load i32, ptr %1042, align 4, !tbaa !5
  %1044 = icmp sgt i32 %1039, %1043
  %1045 = select i1 %1044, i32 %1036, i32 %1040
  %1046 = select i1 %1044, ptr %1034, ptr %995
  %1047 = sext i32 %1045 to i64
  %1048 = getelementptr inbounds i32, ptr %965, i64 %1047
  %1049 = load i32, ptr %1048, align 4, !tbaa !5
  %1050 = load i32, ptr %1035, align 4, !tbaa !5
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds i32, ptr %965, i64 %1051
  %1053 = load i32, ptr %1052, align 4, !tbaa !5
  %1054 = icmp sgt i32 %1049, %1053
  br i1 %1054, label %1055, label %1063

1055:                                             ; preds = %1031
  %1056 = select i1 %1044, i32 %1040, i32 %1036
  %1057 = select i1 %1044, ptr %995, ptr %1034
  %1058 = sext i32 %1056 to i64
  %1059 = getelementptr inbounds i32, ptr %965, i64 %1058
  %1060 = load i32, ptr %1059, align 4, !tbaa !5
  %1061 = icmp sgt i32 %1060, %1053
  %1062 = select i1 %1061, ptr %1057, ptr %1035
  br label %1063

1063:                                             ; preds = %1055, %1031
  %1064 = phi ptr [ %1062, %1055 ], [ %1046, %1031 ]
  %1065 = sub nsw i64 0, %1002
  %1066 = getelementptr inbounds i32, ptr %986, i64 %1065
  %1067 = getelementptr inbounds i32, ptr %986, i64 %1033
  %1068 = load i32, ptr %1066, align 4, !tbaa !5
  %1069 = sext i32 %1068 to i64
  %1070 = getelementptr inbounds i32, ptr %965, i64 %1069
  %1071 = load i32, ptr %1070, align 4, !tbaa !5
  %1072 = load i32, ptr %1067, align 4, !tbaa !5
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds i32, ptr %965, i64 %1073
  %1075 = load i32, ptr %1074, align 4, !tbaa !5
  %1076 = icmp sgt i32 %1071, %1075
  %1077 = select i1 %1076, i32 %1068, i32 %1072
  %1078 = select i1 %1076, ptr %1066, ptr %1067
  %1079 = sext i32 %1077 to i64
  %1080 = getelementptr inbounds i32, ptr %965, i64 %1079
  %1081 = load i32, ptr %1080, align 4, !tbaa !5
  %1082 = load i32, ptr %986, align 4, !tbaa !5
  %1083 = sext i32 %1082 to i64
  %1084 = getelementptr inbounds i32, ptr %965, i64 %1083
  %1085 = load i32, ptr %1084, align 4, !tbaa !5
  %1086 = icmp sgt i32 %1081, %1085
  br i1 %1086, label %1087, label %1099

1087:                                             ; preds = %1063
  %1088 = select i1 %1076, i32 %1072, i32 %1068
  %1089 = select i1 %1076, ptr %1067, ptr %1066
  %1090 = sext i32 %1088 to i64
  %1091 = getelementptr inbounds i32, ptr %965, i64 %1090
  %1092 = load i32, ptr %1091, align 4, !tbaa !5
  %1093 = icmp sgt i32 %1092, %1085
  %1094 = select i1 %1093, ptr %1089, ptr %986
  %1095 = load i32, ptr %1094, align 4, !tbaa !5
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds i32, ptr %965, i64 %1096
  %1098 = load i32, ptr %1097, align 4, !tbaa !5
  br label %1099

1099:                                             ; preds = %1087, %1063
  %1100 = phi i32 [ %1081, %1063 ], [ %1098, %1087 ]
  %1101 = phi ptr [ %1078, %1063 ], [ %1094, %1087 ]
  %1102 = load i32, ptr %1032, align 4, !tbaa !5
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds i32, ptr %965, i64 %1103
  %1105 = load i32, ptr %1104, align 4, !tbaa !5
  %1106 = load i32, ptr %1064, align 4, !tbaa !5
  %1107 = sext i32 %1106 to i64
  %1108 = getelementptr inbounds i32, ptr %965, i64 %1107
  %1109 = load i32, ptr %1108, align 4, !tbaa !5
  %1110 = icmp sgt i32 %1105, %1109
  %1111 = select i1 %1110, i32 %1102, i32 %1106
  %1112 = select i1 %1110, ptr %1032, ptr %1064
  %1113 = sext i32 %1111 to i64
  %1114 = getelementptr inbounds i32, ptr %965, i64 %1113
  %1115 = load i32, ptr %1114, align 4, !tbaa !5
  %1116 = icmp sgt i32 %1115, %1100
  br i1 %1116, label %1117, label %1226

1117:                                             ; preds = %1099
  %1118 = select i1 %1110, i32 %1106, i32 %1102
  %1119 = select i1 %1110, ptr %1064, ptr %1032
  %1120 = sext i32 %1118 to i64
  %1121 = getelementptr inbounds i32, ptr %965, i64 %1120
  %1122 = load i32, ptr %1121, align 4, !tbaa !5
  %1123 = icmp sgt i32 %1122, %1100
  %1124 = select i1 %1123, ptr %1119, ptr %1101
  br label %1226

1125:                                             ; preds = %992
  %1126 = icmp ult i32 %977, 33
  br i1 %1126, label %1198, label %1127

1127:                                             ; preds = %1125
  %1128 = lshr i64 %975, 2
  %1129 = getelementptr inbounds i32, ptr %964, i64 %1128
  %1130 = sub nsw i64 0, %1128
  %1131 = getelementptr inbounds i32, ptr %986, i64 %1130
  %1132 = load i32, ptr %1129, align 4, !tbaa !5
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds i32, ptr %965, i64 %1133
  %1135 = load i32, ptr %1134, align 4, !tbaa !5
  %1136 = load i32, ptr %995, align 4, !tbaa !5
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds i32, ptr %965, i64 %1137
  %1139 = load i32, ptr %1138, align 4, !tbaa !5
  %1140 = icmp sgt i32 %1135, %1139
  %1141 = select i1 %1140, i32 %1136, i32 %1132
  %1142 = select i1 %1140, ptr %995, ptr %1129
  %1143 = select i1 %1140, ptr %1129, ptr %995
  %1144 = load i32, ptr %1131, align 4, !tbaa !5
  %1145 = sext i32 %1144 to i64
  %1146 = getelementptr inbounds i32, ptr %965, i64 %1145
  %1147 = load i32, ptr %1146, align 4, !tbaa !5
  %1148 = load i32, ptr %986, align 4, !tbaa !5
  %1149 = sext i32 %1148 to i64
  %1150 = getelementptr inbounds i32, ptr %965, i64 %1149
  %1151 = load i32, ptr %1150, align 4, !tbaa !5
  %1152 = icmp sgt i32 %1147, %1151
  %1153 = select i1 %1152, i32 %1148, i32 %1144
  %1154 = select i1 %1152, ptr %986, ptr %1131
  %1155 = select i1 %1152, ptr %1131, ptr %986
  %1156 = sext i32 %1141 to i64
  %1157 = getelementptr inbounds i32, ptr %965, i64 %1156
  %1158 = load i32, ptr %1157, align 4, !tbaa !5
  %1159 = sext i32 %1153 to i64
  %1160 = getelementptr inbounds i32, ptr %965, i64 %1159
  %1161 = load i32, ptr %1160, align 4, !tbaa !5
  %1162 = icmp sgt i32 %1158, %1161
  %1163 = select i1 %1162, ptr %1155, ptr %1143
  %1164 = select i1 %1162, ptr %1142, ptr %1154
  %1165 = select i1 %1162, ptr %1143, ptr %1155
  %1166 = load i32, ptr %964, align 4, !tbaa !5
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds i32, ptr %965, i64 %1167
  %1169 = load i32, ptr %1168, align 4, !tbaa !5
  %1170 = load i32, ptr %1163, align 4, !tbaa !5
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr inbounds i32, ptr %965, i64 %1171
  %1173 = load i32, ptr %1172, align 4, !tbaa !5
  %1174 = icmp sgt i32 %1169, %1173
  %1175 = select i1 %1174, i32 %1170, i32 %1166
  %1176 = select i1 %1174, ptr %1163, ptr %964
  %1177 = select i1 %1174, ptr %964, ptr %1163
  %1178 = sext i32 %1175 to i64
  %1179 = getelementptr inbounds i32, ptr %965, i64 %1178
  %1180 = load i32, ptr %1179, align 4, !tbaa !5
  %1181 = load i32, ptr %1164, align 4, !tbaa !5
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds i32, ptr %965, i64 %1182
  %1184 = load i32, ptr %1183, align 4, !tbaa !5
  %1185 = icmp sgt i32 %1180, %1184
  %1186 = select i1 %1185, ptr %1165, ptr %1177
  %1187 = select i1 %1185, ptr %1176, ptr %1164
  %1188 = load i32, ptr %1186, align 4, !tbaa !5
  %1189 = sext i32 %1188 to i64
  %1190 = getelementptr inbounds i32, ptr %965, i64 %1189
  %1191 = load i32, ptr %1190, align 4, !tbaa !5
  %1192 = load i32, ptr %1187, align 4, !tbaa !5
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds i32, ptr %965, i64 %1193
  %1195 = load i32, ptr %1194, align 4, !tbaa !5
  %1196 = icmp sgt i32 %1191, %1195
  %1197 = select i1 %1196, ptr %1187, ptr %1186
  br label %1226

1198:                                             ; preds = %1125
  %1199 = load i32, ptr %964, align 4, !tbaa !5
  %1200 = sext i32 %1199 to i64
  %1201 = getelementptr inbounds i32, ptr %965, i64 %1200
  %1202 = load i32, ptr %1201, align 4, !tbaa !5
  %1203 = load i32, ptr %995, align 4, !tbaa !5
  %1204 = sext i32 %1203 to i64
  %1205 = getelementptr inbounds i32, ptr %965, i64 %1204
  %1206 = load i32, ptr %1205, align 4, !tbaa !5
  %1207 = icmp sgt i32 %1202, %1206
  %1208 = select i1 %1207, i32 %1199, i32 %1203
  %1209 = select i1 %1207, ptr %964, ptr %995
  %1210 = sext i32 %1208 to i64
  %1211 = getelementptr inbounds i32, ptr %965, i64 %1210
  %1212 = load i32, ptr %1211, align 4, !tbaa !5
  %1213 = load i32, ptr %986, align 4, !tbaa !5
  %1214 = sext i32 %1213 to i64
  %1215 = getelementptr inbounds i32, ptr %965, i64 %1214
  %1216 = load i32, ptr %1215, align 4, !tbaa !5
  %1217 = icmp sgt i32 %1212, %1216
  br i1 %1217, label %1218, label %1226

1218:                                             ; preds = %1198
  %1219 = select i1 %1207, i32 %1203, i32 %1199
  %1220 = select i1 %1207, ptr %995, ptr %964
  %1221 = sext i32 %1219 to i64
  %1222 = getelementptr inbounds i32, ptr %965, i64 %1221
  %1223 = load i32, ptr %1222, align 4, !tbaa !5
  %1224 = icmp sgt i32 %1223, %1216
  %1225 = select i1 %1224, ptr %1220, ptr %986
  br label %1226

1226:                                             ; preds = %1218, %1198, %1127, %1117, %1099
  %1227 = phi i32 [ %1166, %1127 ], [ %1199, %1218 ], [ %1199, %1198 ], [ %1004, %1117 ], [ %1004, %1099 ]
  %1228 = phi ptr [ %1197, %1127 ], [ %1225, %1218 ], [ %1209, %1198 ], [ %1124, %1117 ], [ %1112, %1099 ]
  store ptr %1228, ptr %7, align 8, !tbaa !46
  %1229 = load i32, ptr %1228, align 4, !tbaa !5
  store i32 %1229, ptr %964, align 4, !tbaa !5
  store i32 %1227, ptr %1228, align 4, !tbaa !5
  %1230 = load i32, ptr %964, align 4, !tbaa !5
  %1231 = sext i32 %1230 to i64
  %1232 = getelementptr inbounds i32, ptr %965, i64 %1231
  %1233 = load i32, ptr %1232, align 4, !tbaa !5
  %1234 = getelementptr inbounds i32, ptr %964, i64 1
  call fastcc void @tr_partition(ptr noundef nonnull %965, ptr noundef nonnull %964, ptr noundef nonnull %1234, ptr noundef nonnull %963, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %1233)
  %1235 = load ptr, ptr %8, align 8, !tbaa !46
  %1236 = load ptr, ptr %7, align 8, !tbaa !46
  %1237 = ptrtoint ptr %1235 to i64
  %1238 = ptrtoint ptr %1236 to i64
  %1239 = sub i64 %1237, %1238
  %1240 = ashr exact i64 %1239, 2
  %1241 = icmp eq i64 %975, %1240
  br i1 %1241, label %1619, label %1242

1242:                                             ; preds = %1226
  %1243 = load i32, ptr %1236, align 4, !tbaa !5
  %1244 = sext i32 %1243 to i64
  %1245 = getelementptr inbounds i32, ptr %149, i64 %1244
  %1246 = load i32, ptr %1245, align 4, !tbaa !5
  %1247 = icmp eq i32 %1246, %1233
  br i1 %1247, label %1286, label %1248

1248:                                             ; preds = %1242
  %1249 = add nsw i64 %1240, 2147483648
  %1250 = icmp ult i64 %1249, 4294967296
  br i1 %1250, label %1251, label %2877

1251:                                             ; preds = %1248
  %1252 = trunc i64 %1240 to i32
  %1253 = icmp ult i32 %1252, 65536
  br i1 %1253, label %1272, label %1254

1254:                                             ; preds = %1251
  %1255 = icmp ult i32 %1252, 16777216
  br i1 %1255, label %1264, label %1256

1256:                                             ; preds = %1254
  %1257 = lshr i64 %1240, 24
  %1258 = and i64 %1257, 255
  %1259 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1258
  %1260 = load i32, ptr %1259, align 4, !tbaa !5
  %1261 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1260, i32 24), !nosanitize !10
  %1262 = extractvalue { i32, i1 } %1261, 0, !nosanitize !10
  %1263 = extractvalue { i32, i1 } %1261, 1, !nosanitize !10
  br i1 %1263, label %2878, label %1286, !nosanitize !10

1264:                                             ; preds = %1254
  %1265 = lshr i64 %1240, 16
  %1266 = and i64 %1265, 65535
  %1267 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1266
  %1268 = load i32, ptr %1267, align 4, !tbaa !5
  %1269 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1268, i32 16), !nosanitize !10
  %1270 = extractvalue { i32, i1 } %1269, 0, !nosanitize !10
  %1271 = extractvalue { i32, i1 } %1269, 1, !nosanitize !10
  br i1 %1271, label %2878, label %1286, !nosanitize !10

1272:                                             ; preds = %1251
  %1273 = icmp ult i32 %1252, 256
  br i1 %1273, label %1282, label %1274

1274:                                             ; preds = %1272
  %1275 = lshr i64 %1240, 8
  %1276 = and i64 %1275, 16777215
  %1277 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1276
  %1278 = load i32, ptr %1277, align 4, !tbaa !5
  %1279 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1278, i32 8), !nosanitize !10
  %1280 = extractvalue { i32, i1 } %1279, 0, !nosanitize !10
  %1281 = extractvalue { i32, i1 } %1279, 1, !nosanitize !10
  br i1 %1281, label %2878, label %1286, !nosanitize !10

1282:                                             ; preds = %1272
  %1283 = and i64 %1240, 4294967295
  %1284 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1283
  %1285 = load i32, ptr %1284, align 4, !tbaa !5
  br label %1286

1286:                                             ; preds = %1282, %1274, %1264, %1256, %1242
  %1287 = phi i32 [ -1, %1242 ], [ %1262, %1256 ], [ %1270, %1264 ], [ %1280, %1274 ], [ %1285, %1282 ]
  %1288 = sub i64 %1238, %887
  %1289 = ashr exact i64 %1288, 2
  %1290 = add nsw i64 %1289, 2147483647
  %1291 = icmp ult i64 %1290, 4294967296
  br i1 %1291, label %1292, label %2879

1292:                                             ; preds = %1286
  %1293 = trunc i64 %1289 to i32
  %1294 = add i32 %1293, -1
  %1295 = icmp ult ptr %964, %1236
  br i1 %1295, label %1296, label %1303

1296:                                             ; preds = %1292, %1296
  %1297 = phi ptr [ %1301, %1296 ], [ %964, %1292 ]
  %1298 = load i32, ptr %1297, align 4, !tbaa !5
  %1299 = sext i32 %1298 to i64
  %1300 = getelementptr inbounds i32, ptr %149, i64 %1299
  store i32 %1294, ptr %1300, align 4, !tbaa !5
  %1301 = getelementptr inbounds i32, ptr %1297, i64 1
  %1302 = icmp ult ptr %1301, %1236
  br i1 %1302, label %1296, label %1303, !llvm.loop !48

1303:                                             ; preds = %1296, %1292
  %1304 = icmp ult ptr %1235, %963
  br i1 %1304, label %1305, label %1321

1305:                                             ; preds = %1303
  %1306 = sub i64 %1237, %887
  %1307 = ashr exact i64 %1306, 2
  %1308 = add nsw i64 %1307, 2147483647
  %1309 = icmp ult i64 %1308, 4294967296
  br i1 %1309, label %1310, label %2880

1310:                                             ; preds = %1305
  %1311 = trunc i64 %1307 to i32
  %1312 = add i32 %1311, -1
  %1313 = icmp ult ptr %1236, %1235
  br i1 %1313, label %1314, label %1321

1314:                                             ; preds = %1310, %1314
  %1315 = phi ptr [ %1319, %1314 ], [ %1236, %1310 ]
  %1316 = load i32, ptr %1315, align 4, !tbaa !5
  %1317 = sext i32 %1316 to i64
  %1318 = getelementptr inbounds i32, ptr %149, i64 %1317
  store i32 %1312, ptr %1318, align 4, !tbaa !5
  %1319 = getelementptr inbounds i32, ptr %1315, i64 1
  %1320 = icmp ult ptr %1319, %1235
  br i1 %1320, label %1314, label %1321, !llvm.loop !49

1321:                                             ; preds = %1314, %1310, %1303
  %1322 = icmp sgt i64 %1240, 1
  br i1 %1322, label %1323, label %1543

1323:                                             ; preds = %1321
  %1324 = icmp ult i64 %1240, 2147483648
  br i1 %1324, label %1325, label %2881

1325:                                             ; preds = %1323
  %1326 = trunc i64 %1240 to i32
  %1327 = load i32, ptr %10, align 4, !tbaa !45
  %1328 = icmp slt i32 %1327, %1326
  br i1 %1328, label %1332, label %1329

1329:                                             ; preds = %1325
  %1330 = sub nsw i32 %1327, %1326
  %1331 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %1330, 0
  br label %1343

1332:                                             ; preds = %1325
  %1333 = load i32, ptr %9, align 4, !tbaa !43
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1538, label %1335

1335:                                             ; preds = %1332
  %1336 = sub nsw i32 %86, %1326
  %1337 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1327, i32 %1336), !nosanitize !10
  %1338 = extractvalue { i32, i1 } %1337, 1, !nosanitize !10
  br i1 %1338, label %2883, label %1339, !nosanitize !10

1339:                                             ; preds = %1335
  %1340 = extractvalue { i32, i1 } %1337, 0, !nosanitize !10
  store i32 %1340, ptr %10, align 4, !tbaa !45
  %1341 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1333, i32 -1)
  %1342 = extractvalue { i32, i1 } %1341, 1, !nosanitize !10
  br i1 %1342, label %2882, label %1343, !nosanitize !10

1343:                                             ; preds = %1339, %1329
  %1344 = phi { i32, i1 } [ %1341, %1339 ], [ %1331, %1329 ]
  %1345 = phi ptr [ %9, %1339 ], [ %10, %1329 ]
  %1346 = extractvalue { i32, i1 } %1344, 0
  store i32 %1346, ptr %1345, align 4, !tbaa !5
  %1347 = sub i64 %1238, %972
  %1348 = ashr exact i64 %1347, 2
  %1349 = sub i64 %971, %1237
  %1350 = ashr exact i64 %1349, 2
  %1351 = icmp sgt i64 %1348, %1350
  br i1 %1351, label %1445, label %1352

1352:                                             ; preds = %1343
  %1353 = icmp sgt i64 %1350, %1240
  br i1 %1353, label %1391, label %1354

1354:                                             ; preds = %1352
  %1355 = icmp sgt i64 %1348, 1
  br i1 %1355, label %1371, label %1356

1356:                                             ; preds = %1354
  %1357 = icmp sgt i64 %1350, 1
  br i1 %1357, label %1360, label %1358

1358:                                             ; preds = %1356
  %1359 = getelementptr inbounds i32, ptr %965, i64 %897
  br label %2762

1360:                                             ; preds = %1356
  %1361 = icmp slt i32 %967, 64
  br i1 %1361, label %1362, label %2886

1362:                                             ; preds = %1360
  %1363 = getelementptr inbounds i32, ptr %965, i64 %897
  %1364 = sext i32 %967 to i64
  %1365 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1364
  store ptr %1363, ptr %1365, align 16, !tbaa !50
  %1366 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1364, i32 1
  store ptr %1236, ptr %1366, align 8, !tbaa !52
  %1367 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1364, i32 2
  store ptr %1235, ptr %1367, align 16, !tbaa !53
  %1368 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1364, i32 3
  store i32 %1287, ptr %1368, align 8, !tbaa !54
  %1369 = add nsw i32 %967, 1
  %1370 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1364, i32 4
  store i32 %968, ptr %1370, align 4, !tbaa !55
  br label %2762

1371:                                             ; preds = %1354
  %1372 = icmp slt i32 %967, 64
  br i1 %1372, label %1373, label %2884

1373:                                             ; preds = %1371
  %1374 = getelementptr inbounds i32, ptr %965, i64 %897
  %1375 = sext i32 %967 to i64
  %1376 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1375
  store ptr %1374, ptr %1376, align 16, !tbaa !50
  %1377 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1375, i32 1
  store ptr %1236, ptr %1377, align 8, !tbaa !52
  %1378 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1375, i32 2
  store ptr %1235, ptr %1378, align 16, !tbaa !53
  %1379 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1375, i32 3
  store i32 %1287, ptr %1379, align 8, !tbaa !54
  %1380 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1375, i32 4
  store i32 %968, ptr %1380, align 4, !tbaa !55
  %1381 = icmp eq i32 %967, 63
  br i1 %1381, label %2885, label %1382

1382:                                             ; preds = %1373
  %1383 = add nsw i32 %967, 1
  %1384 = sext i32 %1383 to i64
  %1385 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1384
  store ptr %965, ptr %1385, align 16, !tbaa !50
  %1386 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1384, i32 1
  store ptr %1235, ptr %1386, align 8, !tbaa !52
  %1387 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1384, i32 2
  store ptr %963, ptr %1387, align 16, !tbaa !53
  %1388 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1384, i32 3
  store i32 %993, ptr %1388, align 8, !tbaa !54
  %1389 = add nsw i32 %967, 2
  %1390 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1384, i32 4
  store i32 %968, ptr %1390, align 4, !tbaa !55
  br label %2762

1391:                                             ; preds = %1352
  %1392 = icmp sgt i64 %1348, %1240
  br i1 %1392, label %1425, label %1393

1393:                                             ; preds = %1391
  %1394 = icmp sgt i64 %1348, 1
  %1395 = icmp slt i32 %967, 64
  br i1 %1394, label %1406, label %1396

1396:                                             ; preds = %1393
  br i1 %1395, label %1397, label %2889

1397:                                             ; preds = %1396
  %1398 = sext i32 %967 to i64
  %1399 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1398
  store ptr %965, ptr %1399, align 16, !tbaa !50
  %1400 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1398, i32 1
  store ptr %1235, ptr %1400, align 8, !tbaa !52
  %1401 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1398, i32 2
  store ptr %963, ptr %1401, align 16, !tbaa !53
  %1402 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1398, i32 3
  store i32 %993, ptr %1402, align 8, !tbaa !54
  %1403 = add nsw i32 %967, 1
  %1404 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1398, i32 4
  store i32 %968, ptr %1404, align 4, !tbaa !55
  %1405 = getelementptr inbounds i32, ptr %965, i64 %897
  br label %2762

1406:                                             ; preds = %1393
  br i1 %1395, label %1407, label %2887

1407:                                             ; preds = %1406
  %1408 = sext i32 %967 to i64
  %1409 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1408
  store ptr %965, ptr %1409, align 16, !tbaa !50
  %1410 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1408, i32 1
  store ptr %1235, ptr %1410, align 8, !tbaa !52
  %1411 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1408, i32 2
  store ptr %963, ptr %1411, align 16, !tbaa !53
  %1412 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1408, i32 3
  store i32 %993, ptr %1412, align 8, !tbaa !54
  %1413 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1408, i32 4
  store i32 %968, ptr %1413, align 4, !tbaa !55
  %1414 = icmp eq i32 %967, 63
  br i1 %1414, label %2888, label %1415

1415:                                             ; preds = %1407
  %1416 = add nsw i32 %967, 1
  %1417 = getelementptr inbounds i32, ptr %965, i64 %897
  %1418 = sext i32 %1416 to i64
  %1419 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1418
  store ptr %1417, ptr %1419, align 16, !tbaa !50
  %1420 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1418, i32 1
  store ptr %1236, ptr %1420, align 8, !tbaa !52
  %1421 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1418, i32 2
  store ptr %1235, ptr %1421, align 16, !tbaa !53
  %1422 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1418, i32 3
  store i32 %1287, ptr %1422, align 8, !tbaa !54
  %1423 = add nsw i32 %967, 2
  %1424 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1418, i32 4
  store i32 %968, ptr %1424, align 4, !tbaa !55
  br label %2762

1425:                                             ; preds = %1391
  %1426 = icmp slt i32 %967, 64
  br i1 %1426, label %1427, label %2890

1427:                                             ; preds = %1425
  %1428 = sext i32 %967 to i64
  %1429 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1428
  store ptr %965, ptr %1429, align 16, !tbaa !50
  %1430 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1428, i32 1
  store ptr %1235, ptr %1430, align 8, !tbaa !52
  %1431 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1428, i32 2
  store ptr %963, ptr %1431, align 16, !tbaa !53
  %1432 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1428, i32 3
  store i32 %993, ptr %1432, align 8, !tbaa !54
  %1433 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1428, i32 4
  store i32 %968, ptr %1433, align 4, !tbaa !55
  %1434 = icmp eq i32 %967, 63
  br i1 %1434, label %2891, label %1435

1435:                                             ; preds = %1427
  %1436 = add nsw i32 %967, 1
  %1437 = sext i32 %1436 to i64
  %1438 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1437
  store ptr %965, ptr %1438, align 16, !tbaa !50
  %1439 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1437, i32 1
  store ptr %964, ptr %1439, align 8, !tbaa !52
  %1440 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1437, i32 2
  store ptr %1236, ptr %1440, align 16, !tbaa !53
  %1441 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1437, i32 3
  store i32 %993, ptr %1441, align 8, !tbaa !54
  %1442 = add nsw i32 %967, 2
  %1443 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1437, i32 4
  store i32 %968, ptr %1443, align 4, !tbaa !55
  %1444 = getelementptr inbounds i32, ptr %965, i64 %897
  br label %2762

1445:                                             ; preds = %1343
  %1446 = icmp sgt i64 %1348, %1240
  br i1 %1446, label %1484, label %1447

1447:                                             ; preds = %1445
  %1448 = icmp sgt i64 %1350, 1
  br i1 %1448, label %1464, label %1449

1449:                                             ; preds = %1447
  %1450 = icmp sgt i64 %1348, 1
  br i1 %1450, label %1453, label %1451

1451:                                             ; preds = %1449
  %1452 = getelementptr inbounds i32, ptr %965, i64 %897
  br label %2762

1453:                                             ; preds = %1449
  %1454 = icmp slt i32 %967, 64
  br i1 %1454, label %1455, label %2894

1455:                                             ; preds = %1453
  %1456 = getelementptr inbounds i32, ptr %965, i64 %897
  %1457 = sext i32 %967 to i64
  %1458 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1457
  store ptr %1456, ptr %1458, align 16, !tbaa !50
  %1459 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1457, i32 1
  store ptr %1236, ptr %1459, align 8, !tbaa !52
  %1460 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1457, i32 2
  store ptr %1235, ptr %1460, align 16, !tbaa !53
  %1461 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1457, i32 3
  store i32 %1287, ptr %1461, align 8, !tbaa !54
  %1462 = add nsw i32 %967, 1
  %1463 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1457, i32 4
  store i32 %968, ptr %1463, align 4, !tbaa !55
  br label %2762

1464:                                             ; preds = %1447
  %1465 = icmp slt i32 %967, 64
  br i1 %1465, label %1466, label %2892

1466:                                             ; preds = %1464
  %1467 = getelementptr inbounds i32, ptr %965, i64 %897
  %1468 = sext i32 %967 to i64
  %1469 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1468
  store ptr %1467, ptr %1469, align 16, !tbaa !50
  %1470 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1468, i32 1
  store ptr %1236, ptr %1470, align 8, !tbaa !52
  %1471 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1468, i32 2
  store ptr %1235, ptr %1471, align 16, !tbaa !53
  %1472 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1468, i32 3
  store i32 %1287, ptr %1472, align 8, !tbaa !54
  %1473 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1468, i32 4
  store i32 %968, ptr %1473, align 4, !tbaa !55
  %1474 = icmp eq i32 %967, 63
  br i1 %1474, label %2893, label %1475

1475:                                             ; preds = %1466
  %1476 = add nsw i32 %967, 1
  %1477 = sext i32 %1476 to i64
  %1478 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1477
  store ptr %965, ptr %1478, align 16, !tbaa !50
  %1479 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1477, i32 1
  store ptr %964, ptr %1479, align 8, !tbaa !52
  %1480 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1477, i32 2
  store ptr %1236, ptr %1480, align 16, !tbaa !53
  %1481 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1477, i32 3
  store i32 %993, ptr %1481, align 8, !tbaa !54
  %1482 = add nsw i32 %967, 2
  %1483 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1477, i32 4
  store i32 %968, ptr %1483, align 4, !tbaa !55
  br label %2762

1484:                                             ; preds = %1445
  %1485 = icmp sgt i64 %1350, %1240
  br i1 %1485, label %1518, label %1486

1486:                                             ; preds = %1484
  %1487 = icmp sgt i64 %1350, 1
  %1488 = icmp slt i32 %967, 64
  br i1 %1487, label %1499, label %1489

1489:                                             ; preds = %1486
  br i1 %1488, label %1490, label %2897

1490:                                             ; preds = %1489
  %1491 = sext i32 %967 to i64
  %1492 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1491
  store ptr %965, ptr %1492, align 16, !tbaa !50
  %1493 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1491, i32 1
  store ptr %964, ptr %1493, align 8, !tbaa !52
  %1494 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1491, i32 2
  store ptr %1236, ptr %1494, align 16, !tbaa !53
  %1495 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1491, i32 3
  store i32 %993, ptr %1495, align 8, !tbaa !54
  %1496 = add nsw i32 %967, 1
  %1497 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1491, i32 4
  store i32 %968, ptr %1497, align 4, !tbaa !55
  %1498 = getelementptr inbounds i32, ptr %965, i64 %897
  br label %2762

1499:                                             ; preds = %1486
  br i1 %1488, label %1500, label %2895

1500:                                             ; preds = %1499
  %1501 = sext i32 %967 to i64
  %1502 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1501
  store ptr %965, ptr %1502, align 16, !tbaa !50
  %1503 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1501, i32 1
  store ptr %964, ptr %1503, align 8, !tbaa !52
  %1504 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1501, i32 2
  store ptr %1236, ptr %1504, align 16, !tbaa !53
  %1505 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1501, i32 3
  store i32 %993, ptr %1505, align 8, !tbaa !54
  %1506 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1501, i32 4
  store i32 %968, ptr %1506, align 4, !tbaa !55
  %1507 = icmp eq i32 %967, 63
  br i1 %1507, label %2896, label %1508

1508:                                             ; preds = %1500
  %1509 = add nsw i32 %967, 1
  %1510 = getelementptr inbounds i32, ptr %965, i64 %897
  %1511 = sext i32 %1509 to i64
  %1512 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1511
  store ptr %1510, ptr %1512, align 16, !tbaa !50
  %1513 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1511, i32 1
  store ptr %1236, ptr %1513, align 8, !tbaa !52
  %1514 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1511, i32 2
  store ptr %1235, ptr %1514, align 16, !tbaa !53
  %1515 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1511, i32 3
  store i32 %1287, ptr %1515, align 8, !tbaa !54
  %1516 = add nsw i32 %967, 2
  %1517 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1511, i32 4
  store i32 %968, ptr %1517, align 4, !tbaa !55
  br label %2762

1518:                                             ; preds = %1484
  %1519 = icmp slt i32 %967, 64
  br i1 %1519, label %1520, label %2898

1520:                                             ; preds = %1518
  %1521 = sext i32 %967 to i64
  %1522 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1521
  store ptr %965, ptr %1522, align 16, !tbaa !50
  %1523 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1521, i32 1
  store ptr %964, ptr %1523, align 8, !tbaa !52
  %1524 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1521, i32 2
  store ptr %1236, ptr %1524, align 16, !tbaa !53
  %1525 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1521, i32 3
  store i32 %993, ptr %1525, align 8, !tbaa !54
  %1526 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1521, i32 4
  store i32 %968, ptr %1526, align 4, !tbaa !55
  %1527 = icmp eq i32 %967, 63
  br i1 %1527, label %2899, label %1528

1528:                                             ; preds = %1520
  %1529 = add nsw i32 %967, 1
  %1530 = sext i32 %1529 to i64
  %1531 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1530
  store ptr %965, ptr %1531, align 16, !tbaa !50
  %1532 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1530, i32 1
  store ptr %1235, ptr %1532, align 8, !tbaa !52
  %1533 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1530, i32 2
  store ptr %963, ptr %1533, align 16, !tbaa !53
  %1534 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1530, i32 3
  store i32 %993, ptr %1534, align 8, !tbaa !54
  %1535 = add nsw i32 %967, 2
  %1536 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1530, i32 4
  store i32 %968, ptr %1536, align 4, !tbaa !55
  %1537 = getelementptr inbounds i32, ptr %965, i64 %897
  br label %2762

1538:                                             ; preds = %1332
  %1539 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %960, i32 %1326), !nosanitize !10
  %1540 = extractvalue { i32, i1 } %1539, 1, !nosanitize !10
  br i1 %1540, label %2883, label %1541, !nosanitize !10

1541:                                             ; preds = %1538
  %1542 = extractvalue { i32, i1 } %1539, 0
  br label %1543

1543:                                             ; preds = %1541, %1321
  %1544 = phi i32 [ %1542, %1541 ], [ %960, %1321 ]
  %1545 = icmp sgt i64 %1239, 4
  %1546 = icmp sgt i32 %968, -1
  %1547 = select i1 %1545, i1 %1546, i1 false
  br i1 %1547, label %1548, label %1551

1548:                                             ; preds = %1543
  %1549 = zext nneg i32 %968 to i64
  %1550 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1549, i32 3
  store i32 -1, ptr %1550, align 8, !tbaa !54
  br label %1551

1551:                                             ; preds = %1548, %1543
  %1552 = sub i64 %1238, %972
  %1553 = ashr exact i64 %1552, 2
  %1554 = sub i64 %971, %1237
  %1555 = ashr exact i64 %1554, 2
  %1556 = icmp sgt i64 %1553, %1555
  br i1 %1556, label %1588, label %1557

1557:                                             ; preds = %1551
  %1558 = icmp sgt i64 %1553, 1
  br i1 %1558, label %1578, label %1559

1559:                                             ; preds = %1557
  %1560 = icmp sgt i64 %1555, 1
  br i1 %1560, label %2762, label %1561

1561:                                             ; preds = %1559
  %1562 = icmp sgt i32 %967, -1
  br i1 %1562, label %1563, label %2901

1563:                                             ; preds = %1561
  %1564 = icmp eq i32 %967, 0
  br i1 %1564, label %2746, label %1565

1565:                                             ; preds = %1563
  %1566 = add nsw i32 %967, -1
  %1567 = zext nneg i32 %1566 to i64
  %1568 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1567
  %1569 = load ptr, ptr %1568, align 16, !tbaa !50
  %1570 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1567, i32 1
  %1571 = load ptr, ptr %1570, align 8, !tbaa !52
  %1572 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1567, i32 2
  %1573 = load ptr, ptr %1572, align 16, !tbaa !53
  %1574 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1567, i32 3
  %1575 = load i32, ptr %1574, align 8, !tbaa !54
  %1576 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1567, i32 4
  %1577 = load i32, ptr %1576, align 4, !tbaa !55
  br label %2762

1578:                                             ; preds = %1557
  %1579 = icmp slt i32 %967, 64
  br i1 %1579, label %1580, label %2900

1580:                                             ; preds = %1578
  %1581 = sext i32 %967 to i64
  %1582 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1581
  store ptr %965, ptr %1582, align 16, !tbaa !50
  %1583 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1581, i32 1
  store ptr %1235, ptr %1583, align 8, !tbaa !52
  %1584 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1581, i32 2
  store ptr %963, ptr %1584, align 16, !tbaa !53
  %1585 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1581, i32 3
  store i32 %993, ptr %1585, align 8, !tbaa !54
  %1586 = add nsw i32 %967, 1
  %1587 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1581, i32 4
  store i32 %968, ptr %1587, align 4, !tbaa !55
  br label %2762

1588:                                             ; preds = %1551
  %1589 = icmp sgt i64 %1555, 1
  br i1 %1589, label %1609, label %1590

1590:                                             ; preds = %1588
  %1591 = icmp sgt i64 %1553, 1
  br i1 %1591, label %2762, label %1592

1592:                                             ; preds = %1590
  %1593 = icmp sgt i32 %967, -1
  br i1 %1593, label %1594, label %2903

1594:                                             ; preds = %1592
  %1595 = icmp eq i32 %967, 0
  br i1 %1595, label %2746, label %1596

1596:                                             ; preds = %1594
  %1597 = add nsw i32 %967, -1
  %1598 = zext nneg i32 %1597 to i64
  %1599 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1598
  %1600 = load ptr, ptr %1599, align 16, !tbaa !50
  %1601 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1598, i32 1
  %1602 = load ptr, ptr %1601, align 8, !tbaa !52
  %1603 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1598, i32 2
  %1604 = load ptr, ptr %1603, align 16, !tbaa !53
  %1605 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1598, i32 3
  %1606 = load i32, ptr %1605, align 8, !tbaa !54
  %1607 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1598, i32 4
  %1608 = load i32, ptr %1607, align 4, !tbaa !55
  br label %2762

1609:                                             ; preds = %1588
  %1610 = icmp slt i32 %967, 64
  br i1 %1610, label %1611, label %2902

1611:                                             ; preds = %1609
  %1612 = sext i32 %967 to i64
  %1613 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1612
  store ptr %965, ptr %1613, align 16, !tbaa !50
  %1614 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1612, i32 1
  store ptr %964, ptr %1614, align 8, !tbaa !52
  %1615 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1612, i32 2
  store ptr %1236, ptr %1615, align 16, !tbaa !53
  %1616 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1612, i32 3
  store i32 %993, ptr %1616, align 8, !tbaa !54
  %1617 = add nsw i32 %967, 1
  %1618 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1612, i32 4
  store i32 %968, ptr %1618, align 4, !tbaa !55
  br label %2762

1619:                                             ; preds = %1226
  %1620 = load i32, ptr %10, align 4, !tbaa !45
  %1621 = icmp slt i32 %1620, %977
  br i1 %1621, label %1625, label %1622

1622:                                             ; preds = %1619
  %1623 = sub nsw i32 %1620, %977
  %1624 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %1623, 0
  br label %1636

1625:                                             ; preds = %1619
  %1626 = load i32, ptr %9, align 4, !tbaa !43
  %1627 = icmp eq i32 %1626, 0
  br i1 %1627, label %1672, label %1628

1628:                                             ; preds = %1625
  %1629 = sub nsw i32 %86, %977
  %1630 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1620, i32 %1629), !nosanitize !10
  %1631 = extractvalue { i32, i1 } %1630, 1, !nosanitize !10
  br i1 %1631, label %2905, label %1632, !nosanitize !10

1632:                                             ; preds = %1628
  %1633 = extractvalue { i32, i1 } %1630, 0, !nosanitize !10
  store i32 %1633, ptr %10, align 4, !tbaa !45
  %1634 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1626, i32 -1)
  %1635 = extractvalue { i32, i1 } %1634, 1, !nosanitize !10
  br i1 %1635, label %2904, label %1636, !nosanitize !10

1636:                                             ; preds = %1632, %1622
  %1637 = phi { i32, i1 } [ %1634, %1632 ], [ %1624, %1622 ]
  %1638 = phi ptr [ %9, %1632 ], [ %10, %1622 ]
  %1639 = extractvalue { i32, i1 } %1637, 0
  store i32 %1639, ptr %1638, align 4, !tbaa !5
  %1640 = icmp ult i32 %977, 65536
  br i1 %1640, label %1657, label %1641

1641:                                             ; preds = %1636
  %1642 = icmp ult i32 %977, 16777216
  br i1 %1642, label %1650, label %1643

1643:                                             ; preds = %1641
  %1644 = lshr i64 %975, 24
  %1645 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1644
  %1646 = load i32, ptr %1645, align 4, !tbaa !5
  %1647 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1646, i32 24), !nosanitize !10
  %1648 = extractvalue { i32, i1 } %1647, 0, !nosanitize !10
  %1649 = extractvalue { i32, i1 } %1647, 1, !nosanitize !10
  br i1 %1649, label %2906, label %1669, !nosanitize !10

1650:                                             ; preds = %1641
  %1651 = lshr i64 %975, 16
  %1652 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1651
  %1653 = load i32, ptr %1652, align 4, !tbaa !5
  %1654 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1653, i32 16), !nosanitize !10
  %1655 = extractvalue { i32, i1 } %1654, 0, !nosanitize !10
  %1656 = extractvalue { i32, i1 } %1654, 1, !nosanitize !10
  br i1 %1656, label %2906, label %1669, !nosanitize !10

1657:                                             ; preds = %1636
  %1658 = icmp ult i32 %977, 256
  br i1 %1658, label %1666, label %1659

1659:                                             ; preds = %1657
  %1660 = lshr i64 %975, 8
  %1661 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1660
  %1662 = load i32, ptr %1661, align 4, !tbaa !5
  %1663 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1662, i32 8), !nosanitize !10
  %1664 = extractvalue { i32, i1 } %1663, 0, !nosanitize !10
  %1665 = extractvalue { i32, i1 } %1663, 1, !nosanitize !10
  br i1 %1665, label %2906, label %1669, !nosanitize !10

1666:                                             ; preds = %1657
  %1667 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %975
  %1668 = load i32, ptr %1667, align 4, !tbaa !5
  br label %1669

1669:                                             ; preds = %1666, %1659, %1650, %1643
  %1670 = phi i32 [ %1648, %1643 ], [ %1655, %1650 ], [ %1664, %1659 ], [ %1668, %1666 ]
  %1671 = getelementptr inbounds i32, ptr %965, i64 %897
  br label %2762

1672:                                             ; preds = %1625
  %1673 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %960, i32 %977), !nosanitize !10
  %1674 = extractvalue { i32, i1 } %1673, 1, !nosanitize !10
  br i1 %1674, label %2905, label %1675, !nosanitize !10

1675:                                             ; preds = %1672
  %1676 = extractvalue { i32, i1 } %1673, 0
  %1677 = icmp sgt i32 %968, -1
  br i1 %1677, label %1678, label %1681

1678:                                             ; preds = %1675
  %1679 = zext nneg i32 %968 to i64
  %1680 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1679, i32 3
  store i32 -1, ptr %1680, align 8, !tbaa !54
  br label %1681

1681:                                             ; preds = %1678, %1675
  %1682 = icmp sgt i32 %967, -1
  br i1 %1682, label %1683, label %2907

1683:                                             ; preds = %1681
  %1684 = icmp eq i32 %967, 0
  br i1 %1684, label %2746, label %1685

1685:                                             ; preds = %1683
  %1686 = add nsw i32 %967, -1
  %1687 = zext nneg i32 %1686 to i64
  %1688 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1687
  %1689 = load ptr, ptr %1688, align 16, !tbaa !50
  %1690 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1687, i32 1
  %1691 = load ptr, ptr %1690, align 8, !tbaa !52
  %1692 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1687, i32 2
  %1693 = load ptr, ptr %1692, align 16, !tbaa !53
  %1694 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1687, i32 3
  %1695 = load i32, ptr %1694, align 8, !tbaa !54
  %1696 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1687, i32 4
  %1697 = load i32, ptr %1696, align 4, !tbaa !55
  br label %2762

1698:                                             ; preds = %991
  br i1 %979, label %1701, label %1699

1699:                                             ; preds = %1698
  %1700 = lshr i64 %975, 1
  br label %1712

1701:                                             ; preds = %1698
  %1702 = load i32, ptr %983, align 4, !tbaa !5
  %1703 = sext i32 %1702 to i64
  %1704 = getelementptr inbounds i32, ptr %965, i64 %1703
  %1705 = load i32, ptr %1704, align 4, !tbaa !5
  %1706 = load i32, ptr %985, align 4, !tbaa !5
  %1707 = sext i32 %1706 to i64
  %1708 = getelementptr inbounds i32, ptr %965, i64 %1707
  %1709 = load i32, ptr %1708, align 4, !tbaa !5
  %1710 = icmp slt i32 %1705, %1709
  br i1 %1710, label %1711, label %1712

1711:                                             ; preds = %1701
  store i32 %1702, ptr %985, align 4, !tbaa !5
  store i32 %1706, ptr %983, align 4, !tbaa !5
  br label %1712

1712:                                             ; preds = %1711, %1701, %1699
  %1713 = phi i64 [ %1700, %1699 ], [ %982, %1711 ], [ %982, %1701 ]
  %1714 = phi i32 [ %977, %1699 ], [ %980, %1711 ], [ %980, %1701 ]
  br label %1715

1715:                                             ; preds = %1749, %1712
  %1716 = phi i64 [ %1713, %1712 ], [ %1717, %1749 ]
  %1717 = add nsw i64 %1716, -1
  %1718 = getelementptr inbounds i32, ptr %964, i64 %1717
  %1719 = load i32, ptr %1718, align 4, !tbaa !5
  %1720 = sext i32 %1719 to i64
  %1721 = getelementptr inbounds i32, ptr %965, i64 %1720
  %1722 = load i32, ptr %1721, align 4, !tbaa !5
  %1723 = trunc i64 %1716 to i32
  %1724 = add i32 %1723, 1073741823
  %1725 = icmp sgt i32 %1724, -1
  br i1 %1725, label %1726, label %2872, !nosanitize !10

1726:                                             ; preds = %1715
  %1727 = trunc i64 %1717 to i32
  br label %1728

1728:                                             ; preds = %1872, %1726
  %1729 = phi i32 [ %1874, %1872 ], [ %1727, %1726 ]
  %1730 = shl nsw i32 %1729, 1
  %1731 = or disjoint i32 %1730, 1
  %1732 = icmp slt i32 %1731, %1714
  br i1 %1732, label %1733, label %1749

1733:                                             ; preds = %1728
  %1734 = add i32 %1730, 2
  %1735 = sext i32 %1731 to i64
  %1736 = getelementptr inbounds i32, ptr %964, i64 %1735
  %1737 = load i32, ptr %1736, align 4, !tbaa !5
  %1738 = sext i32 %1737 to i64
  %1739 = getelementptr inbounds i32, ptr %965, i64 %1738
  %1740 = load i32, ptr %1739, align 4, !tbaa !5
  %1741 = sext i32 %1734 to i64
  %1742 = getelementptr inbounds i32, ptr %964, i64 %1741
  %1743 = load i32, ptr %1742, align 4, !tbaa !5
  %1744 = sext i32 %1743 to i64
  %1745 = getelementptr inbounds i32, ptr %965, i64 %1744
  %1746 = load i32, ptr %1745, align 4, !tbaa !5
  %1747 = tail call i32 @llvm.smax.i32(i32 %1740, i32 %1746)
  %1748 = icmp sgt i32 %1747, %1722
  br i1 %1748, label %1872, label %1749

1749:                                             ; preds = %1733, %1728
  %1750 = sext i32 %1729 to i64
  %1751 = getelementptr inbounds i32, ptr %964, i64 %1750
  store i32 %1719, ptr %1751, align 4, !tbaa !5
  %1752 = icmp sgt i64 %1716, 1
  br i1 %1752, label %1715, label %1753, !llvm.loop !56

1753:                                             ; preds = %1749
  br i1 %979, label %1754, label %1787

1754:                                             ; preds = %1753
  %1755 = load i32, ptr %964, align 4, !tbaa !5
  %1756 = zext nneg i32 %1714 to i64
  %1757 = getelementptr inbounds i32, ptr %964, i64 %1756
  %1758 = load i32, ptr %1757, align 4, !tbaa !5
  store i32 %1758, ptr %964, align 4, !tbaa !5
  store i32 %1755, ptr %1757, align 4, !tbaa !5
  %1759 = load i32, ptr %964, align 4, !tbaa !5
  %1760 = sext i32 %1759 to i64
  %1761 = getelementptr inbounds i32, ptr %965, i64 %1760
  %1762 = load i32, ptr %1761, align 4, !tbaa !5
  br label %1763

1763:                                             ; preds = %1862, %1754
  %1764 = phi i32 [ %1864, %1862 ], [ 0, %1754 ]
  %1765 = shl nsw i32 %1764, 1
  %1766 = or disjoint i32 %1765, 1
  %1767 = icmp slt i32 %1766, %1714
  br i1 %1767, label %1768, label %1784

1768:                                             ; preds = %1763
  %1769 = add i32 %1765, 2
  %1770 = sext i32 %1766 to i64
  %1771 = getelementptr inbounds i32, ptr %964, i64 %1770
  %1772 = load i32, ptr %1771, align 4, !tbaa !5
  %1773 = sext i32 %1772 to i64
  %1774 = getelementptr inbounds i32, ptr %965, i64 %1773
  %1775 = load i32, ptr %1774, align 4, !tbaa !5
  %1776 = sext i32 %1769 to i64
  %1777 = getelementptr inbounds i32, ptr %964, i64 %1776
  %1778 = load i32, ptr %1777, align 4, !tbaa !5
  %1779 = sext i32 %1778 to i64
  %1780 = getelementptr inbounds i32, ptr %965, i64 %1779
  %1781 = load i32, ptr %1780, align 4, !tbaa !5
  %1782 = tail call i32 @llvm.smax.i32(i32 %1775, i32 %1781)
  %1783 = icmp sgt i32 %1782, %1762
  br i1 %1783, label %1862, label %1784

1784:                                             ; preds = %1768, %1763
  %1785 = sext i32 %1764 to i64
  %1786 = getelementptr inbounds i32, ptr %964, i64 %1785
  store i32 %1759, ptr %1786, align 4, !tbaa !5
  br label %1787

1787:                                             ; preds = %1784, %1753
  %1788 = add i32 %1714, -1
  %1789 = icmp sgt i32 %1788, 0
  br i1 %1789, label %1790, label %1829

1790:                                             ; preds = %1787
  %1791 = zext nneg i32 %1788 to i64
  br label %1792

1792:                                             ; preds = %1824, %1790
  %1793 = phi i64 [ %1791, %1790 ], [ %1827, %1824 ]
  %1794 = load i32, ptr %964, align 4, !tbaa !5
  %1795 = getelementptr inbounds i32, ptr %964, i64 %1793
  %1796 = load i32, ptr %1795, align 4, !tbaa !5
  store i32 %1796, ptr %964, align 4, !tbaa !5
  %1797 = sext i32 %1796 to i64
  %1798 = getelementptr inbounds i32, ptr %965, i64 %1797
  %1799 = load i32, ptr %1798, align 4, !tbaa !5
  br label %1800

1800:                                             ; preds = %1852, %1792
  %1801 = phi i32 [ %1854, %1852 ], [ 0, %1792 ]
  %1802 = shl nsw i32 %1801, 1
  %1803 = or disjoint i32 %1802, 1
  %1804 = sext i32 %1803 to i64
  %1805 = icmp sgt i64 %1793, %1804
  br i1 %1805, label %1806, label %1824

1806:                                             ; preds = %1800
  %1807 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1803, i32 1), !nosanitize !10
  %1808 = extractvalue { i32, i1 } %1807, 1, !nosanitize !10
  br i1 %1808, label %2875, label %1809, !nosanitize !10

1809:                                             ; preds = %1806
  %1810 = extractvalue { i32, i1 } %1807, 0, !nosanitize !10
  %1811 = getelementptr inbounds i32, ptr %964, i64 %1804
  %1812 = load i32, ptr %1811, align 4, !tbaa !5
  %1813 = sext i32 %1812 to i64
  %1814 = getelementptr inbounds i32, ptr %965, i64 %1813
  %1815 = load i32, ptr %1814, align 4, !tbaa !5
  %1816 = sext i32 %1810 to i64
  %1817 = getelementptr inbounds i32, ptr %964, i64 %1816
  %1818 = load i32, ptr %1817, align 4, !tbaa !5
  %1819 = sext i32 %1818 to i64
  %1820 = getelementptr inbounds i32, ptr %965, i64 %1819
  %1821 = load i32, ptr %1820, align 4, !tbaa !5
  %1822 = tail call i32 @llvm.smax.i32(i32 %1815, i32 %1821)
  %1823 = icmp sgt i32 %1822, %1799
  br i1 %1823, label %1852, label %1824

1824:                                             ; preds = %1809, %1800
  %1825 = sext i32 %1801 to i64
  %1826 = getelementptr inbounds i32, ptr %964, i64 %1825
  store i32 %1796, ptr %1826, align 4, !tbaa !5
  store i32 %1794, ptr %1795, align 4, !tbaa !5
  %1827 = add nsw i64 %1793, -1
  %1828 = icmp sgt i64 %1793, 1
  br i1 %1828, label %1792, label %1829, !llvm.loop !57

1829:                                             ; preds = %1824, %1787
  br i1 %987, label %1830, label %1930

1830:                                             ; preds = %1829, %1849
  %1831 = phi ptr [ %1850, %1849 ], [ %986, %1829 ]
  %1832 = load i32, ptr %1831, align 4, !tbaa !5
  %1833 = sext i32 %1832 to i64
  %1834 = getelementptr inbounds i32, ptr %965, i64 %1833
  %1835 = load i32, ptr %1834, align 4, !tbaa !5
  %1836 = getelementptr inbounds i32, ptr %1831, i64 -1
  %1837 = icmp ugt ptr %964, %1836
  br i1 %1837, label %1849, label %1838

1838:                                             ; preds = %1830, %1845
  %1839 = phi ptr [ %1847, %1845 ], [ %1836, %1830 ]
  %1840 = load i32, ptr %1839, align 4, !tbaa !5
  %1841 = sext i32 %1840 to i64
  %1842 = getelementptr inbounds i32, ptr %965, i64 %1841
  %1843 = load i32, ptr %1842, align 4, !tbaa !5
  %1844 = icmp eq i32 %1843, %1835
  br i1 %1844, label %1845, label %1849

1845:                                             ; preds = %1838
  %1846 = xor i32 %1840, -1
  store i32 %1846, ptr %1839, align 4, !tbaa !5
  %1847 = getelementptr inbounds i32, ptr %1839, i64 -1
  %1848 = icmp ugt ptr %964, %1847
  br i1 %1848, label %1849, label %1838, !llvm.loop !58

1849:                                             ; preds = %1845, %1838, %1830
  %1850 = phi ptr [ %1836, %1830 ], [ %1839, %1838 ], [ %1847, %1845 ]
  %1851 = icmp ult ptr %964, %1850
  br i1 %1851, label %1830, label %1930, !llvm.loop !59

1852:                                             ; preds = %1809
  %1853 = icmp slt i32 %1815, %1821
  %1854 = select i1 %1853, i32 %1810, i32 %1803
  %1855 = sext i32 %1854 to i64
  %1856 = getelementptr inbounds i32, ptr %964, i64 %1855
  %1857 = load i32, ptr %1856, align 4, !tbaa !5
  %1858 = sext i32 %1801 to i64
  %1859 = getelementptr inbounds i32, ptr %964, i64 %1858
  store i32 %1857, ptr %1859, align 4, !tbaa !5
  %1860 = add i32 %1854, 1073741824
  %1861 = icmp sgt i32 %1860, -1
  br i1 %1861, label %1800, label %2874, !llvm.loop !60, !nosanitize !10

1862:                                             ; preds = %1768
  %1863 = icmp slt i32 %1775, %1781
  %1864 = select i1 %1863, i32 %1769, i32 %1766
  %1865 = sext i32 %1864 to i64
  %1866 = getelementptr inbounds i32, ptr %964, i64 %1865
  %1867 = load i32, ptr %1866, align 4, !tbaa !5
  %1868 = sext i32 %1764 to i64
  %1869 = getelementptr inbounds i32, ptr %964, i64 %1868
  store i32 %1867, ptr %1869, align 4, !tbaa !5
  %1870 = add i32 %1864, 1073741824
  %1871 = icmp sgt i32 %1870, -1
  br i1 %1871, label %1763, label %2873, !llvm.loop !60, !nosanitize !10

1872:                                             ; preds = %1733
  %1873 = icmp slt i32 %1740, %1746
  %1874 = select i1 %1873, i32 %1734, i32 %1731
  %1875 = sext i32 %1874 to i64
  %1876 = getelementptr inbounds i32, ptr %964, i64 %1875
  %1877 = load i32, ptr %1876, align 4, !tbaa !5
  %1878 = sext i32 %1729 to i64
  %1879 = getelementptr inbounds i32, ptr %964, i64 %1878
  store i32 %1877, ptr %1879, align 4, !tbaa !5
  %1880 = add i32 %1874, 1073741824
  %1881 = icmp sgt i32 %1880, -1
  br i1 %1881, label %1728, label %2872, !llvm.loop !60, !nosanitize !10

1882:                                             ; preds = %970
  %1883 = getelementptr inbounds i32, ptr %964, i64 1
  %1884 = icmp ult ptr %1883, %963
  br i1 %1884, label %1885, label %1930

1885:                                             ; preds = %1882, %1926
  %1886 = phi ptr [ %1928, %1926 ], [ %1883, %1882 ]
  %1887 = phi ptr [ %1886, %1926 ], [ %964, %1882 ]
  %1888 = load i32, ptr %1886, align 4, !tbaa !5
  %1889 = sext i32 %1888 to i64
  %1890 = getelementptr inbounds i32, ptr %965, i64 %1889
  %1891 = load i32, ptr %1890, align 4, !tbaa !5
  %1892 = load i32, ptr %1887, align 4, !tbaa !5
  %1893 = sext i32 %1892 to i64
  %1894 = getelementptr inbounds i32, ptr %965, i64 %1893
  %1895 = load i32, ptr %1894, align 4, !tbaa !5
  %1896 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1891, i32 %1895), !nosanitize !10
  %1897 = extractvalue { i32, i1 } %1896, 1, !nosanitize !10
  br i1 %1897, label %2870, label %1898, !nosanitize !10

1898:                                             ; preds = %1885, %1913
  %1899 = phi i32 [ %1911, %1913 ], [ %1892, %1885 ]
  %1900 = phi { i32, i1 } [ %1918, %1913 ], [ %1896, %1885 ]
  %1901 = phi ptr [ %1908, %1913 ], [ %1887, %1885 ]
  %1902 = extractvalue { i32, i1 } %1900, 0
  %1903 = icmp slt i32 %1902, 0
  br i1 %1903, label %1904, label %1920

1904:                                             ; preds = %1898, %1910
  %1905 = phi i32 [ %1911, %1910 ], [ %1899, %1898 ]
  %1906 = phi ptr [ %1908, %1910 ], [ %1901, %1898 ]
  %1907 = getelementptr inbounds i32, ptr %1906, i64 1
  store i32 %1905, ptr %1907, align 4, !tbaa !5
  %1908 = getelementptr inbounds i32, ptr %1906, i64 -1
  %1909 = icmp ult ptr %1908, %964
  br i1 %1909, label %1920, label %1910

1910:                                             ; preds = %1904
  %1911 = load i32, ptr %1908, align 4, !tbaa !5
  %1912 = icmp slt i32 %1911, 0
  br i1 %1912, label %1904, label %1913, !llvm.loop !61

1913:                                             ; preds = %1910
  %1914 = load i32, ptr %1890, align 4, !tbaa !5
  %1915 = zext nneg i32 %1911 to i64
  %1916 = getelementptr inbounds i32, ptr %965, i64 %1915
  %1917 = load i32, ptr %1916, align 4, !tbaa !5
  %1918 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1914, i32 %1917), !nosanitize !10
  %1919 = extractvalue { i32, i1 } %1918, 1, !nosanitize !10
  br i1 %1919, label %2870, label %1898, !llvm.loop !61, !nosanitize !10

1920:                                             ; preds = %1898, %1904
  %1921 = phi ptr [ %1908, %1904 ], [ %1901, %1898 ]
  %1922 = icmp eq i32 %1902, 0
  br i1 %1922, label %1923, label %1926

1923:                                             ; preds = %1920
  %1924 = load i32, ptr %1921, align 4, !tbaa !5
  %1925 = xor i32 %1924, -1
  store i32 %1925, ptr %1921, align 4, !tbaa !5
  br label %1926

1926:                                             ; preds = %1923, %1920
  %1927 = getelementptr inbounds i32, ptr %1921, i64 1
  store i32 %1888, ptr %1927, align 4, !tbaa !5
  %1928 = getelementptr inbounds i32, ptr %1886, i64 1
  %1929 = icmp ult ptr %1928, %963
  br i1 %1929, label %1885, label %1930, !llvm.loop !62

1930:                                             ; preds = %1849, %1926, %1882, %1829
  %1931 = phi ptr [ %986, %1829 ], [ %961, %1882 ], [ %961, %1926 ], [ %1850, %1849 ]
  %1932 = phi ptr [ %962, %1829 ], [ %962, %1882 ], [ %962, %1926 ], [ %1850, %1849 ]
  store ptr %1932, ptr %8, align 8, !tbaa !46
  store ptr %1931, ptr %7, align 8, !tbaa !46
  br label %2533

1933:                                             ; preds = %959
  store ptr %962, ptr %8, align 8, !tbaa !46
  store ptr %961, ptr %7, align 8, !tbaa !46
  switch i32 %966, label %2533 [
    i32 -1, label %2182
    i32 -2, label %1934
  ]

1934:                                             ; preds = %1933
  %1935 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %967, i32 -1)
  %1936 = extractvalue { i32, i1 } %1935, 0, !nosanitize !10
  %1937 = extractvalue { i32, i1 } %1935, 1, !nosanitize !10
  br i1 %1937, label %2824, label %1938, !nosanitize !10

1938:                                             ; preds = %1934
  %1939 = sext i32 %1936 to i64
  %1940 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1939, i32 1
  %1941 = load ptr, ptr %1940, align 8, !tbaa !52
  store ptr %1941, ptr %7, align 8, !tbaa !46
  %1942 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1939, i32 2
  %1943 = load ptr, ptr %1942, align 16, !tbaa !53
  store ptr %1943, ptr %8, align 8, !tbaa !46
  %1944 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1939, i32 3
  %1945 = load i32, ptr %1944, align 8, !tbaa !54
  %1946 = icmp eq i32 %1945, 0
  br i1 %1946, label %2089, label %1947

1947:                                             ; preds = %1938
  %1948 = icmp sgt i32 %968, -1
  br i1 %1948, label %1949, label %1952

1949:                                             ; preds = %1947
  %1950 = zext nneg i32 %968 to i64
  %1951 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %1950, i32 3
  store i32 -1, ptr %1951, align 8, !tbaa !54
  br label %1952

1952:                                             ; preds = %1949, %1947
  %1953 = ptrtoint ptr %965 to i64
  %1954 = sub i64 %1953, %886
  %1955 = ashr exact i64 %1954, 2
  %1956 = add nsw i64 %1955, 2147483648
  %1957 = icmp ult i64 %1956, 4294967296
  br i1 %1957, label %1958, label %2851

1958:                                             ; preds = %1952
  %1959 = trunc i64 %1955 to i32
  %1960 = ptrtoint ptr %1943 to i64
  %1961 = sub i64 %1960, %887
  %1962 = ashr exact i64 %1961, 2
  %1963 = add nsw i64 %1962, 2147483647
  %1964 = icmp ult i64 %1963, 4294967296
  br i1 %1964, label %1965, label %2853

1965:                                             ; preds = %1958
  %1966 = trunc i64 %1962 to i32
  %1967 = add i32 %1966, -1
  %1968 = getelementptr inbounds i32, ptr %1941, i64 -1
  %1969 = icmp ult ptr %1968, %964
  br i1 %1969, label %2013, label %1970

1970:                                             ; preds = %1965, %2007
  %1971 = phi i32 [ %2010, %2007 ], [ -1, %1965 ]
  %1972 = phi i32 [ %2009, %2007 ], [ -1, %1965 ]
  %1973 = phi ptr [ %2011, %2007 ], [ %964, %1965 ]
  %1974 = phi ptr [ %2008, %2007 ], [ %1968, %1965 ]
  %1975 = load i32, ptr %1973, align 4, !tbaa !5
  %1976 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1975, i32 %1959), !nosanitize !10
  %1977 = extractvalue { i32, i1 } %1976, 0, !nosanitize !10
  %1978 = extractvalue { i32, i1 } %1976, 1, !nosanitize !10
  br i1 %1978, label %2852, label %1979, !nosanitize !10

1979:                                             ; preds = %1970
  %1980 = icmp sgt i32 %1977, -1
  br i1 %1980, label %1981, label %2007

1981:                                             ; preds = %1979
  %1982 = zext nneg i32 %1977 to i64
  %1983 = getelementptr inbounds i32, ptr %149, i64 %1982
  %1984 = load i32, ptr %1983, align 4, !tbaa !5
  %1985 = icmp eq i32 %1984, %1967
  br i1 %1985, label %1986, label %2007

1986:                                             ; preds = %1981
  %1987 = getelementptr inbounds i32, ptr %1974, i64 1
  store i32 %1977, ptr %1987, align 4, !tbaa !5
  %1988 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1977, i32 %1959), !nosanitize !10
  %1989 = extractvalue { i32, i1 } %1988, 1, !nosanitize !10
  br i1 %1989, label %2854, label %1990, !nosanitize !10

1990:                                             ; preds = %1986
  %1991 = extractvalue { i32, i1 } %1988, 0, !nosanitize !10
  %1992 = sext i32 %1991 to i64
  %1993 = getelementptr inbounds i32, ptr %149, i64 %1992
  %1994 = load i32, ptr %1993, align 4, !tbaa !5
  %1995 = icmp eq i32 %1972, %1994
  br i1 %1995, label %2004, label %1996

1996:                                             ; preds = %1990
  %1997 = ptrtoint ptr %1987 to i64
  %1998 = sub i64 %1997, %887
  %1999 = ashr exact i64 %1998, 2
  %2000 = add nsw i64 %1999, 2147483648
  %2001 = icmp ult i64 %2000, 4294967296
  br i1 %2001, label %2002, label %2855

2002:                                             ; preds = %1996
  %2003 = trunc i64 %1999 to i32
  br label %2004

2004:                                             ; preds = %2002, %1990
  %2005 = phi i32 [ %1994, %2002 ], [ %1972, %1990 ]
  %2006 = phi i32 [ %2003, %2002 ], [ %1971, %1990 ]
  store i32 %2006, ptr %1983, align 4, !tbaa !5
  br label %2007

2007:                                             ; preds = %2004, %1981, %1979
  %2008 = phi ptr [ %1987, %2004 ], [ %1974, %1981 ], [ %1974, %1979 ]
  %2009 = phi i32 [ %2005, %2004 ], [ %1972, %1981 ], [ %1972, %1979 ]
  %2010 = phi i32 [ %2006, %2004 ], [ %1971, %1981 ], [ %1971, %1979 ]
  %2011 = getelementptr inbounds i32, ptr %1973, i64 1
  %2012 = icmp ugt ptr %2011, %2008
  br i1 %2012, label %2013, label %1970, !llvm.loop !63

2013:                                             ; preds = %2007, %1965
  %2014 = phi ptr [ %1968, %1965 ], [ %2008, %2007 ]
  %2015 = phi i32 [ -1, %1965 ], [ %2010, %2007 ]
  %2016 = icmp ult ptr %2014, %964
  br i1 %2016, label %2042, label %2017

2017:                                             ; preds = %2013, %2039
  %2018 = phi i32 [ %2036, %2039 ], [ %2015, %2013 ]
  %2019 = phi i32 [ %2035, %2039 ], [ -1, %2013 ]
  %2020 = phi ptr [ %2040, %2039 ], [ %2014, %2013 ]
  %2021 = load i32, ptr %2020, align 4, !tbaa !5
  %2022 = sext i32 %2021 to i64
  %2023 = getelementptr inbounds i32, ptr %149, i64 %2022
  %2024 = load i32, ptr %2023, align 4, !tbaa !5
  %2025 = icmp eq i32 %2019, %2024
  br i1 %2025, label %2034, label %2026

2026:                                             ; preds = %2017
  %2027 = ptrtoint ptr %2020 to i64
  %2028 = sub i64 %2027, %887
  %2029 = ashr exact i64 %2028, 2
  %2030 = add nsw i64 %2029, 2147483648
  %2031 = icmp ult i64 %2030, 4294967296
  br i1 %2031, label %2032, label %2856

2032:                                             ; preds = %2026
  %2033 = trunc i64 %2029 to i32
  br label %2034

2034:                                             ; preds = %2032, %2017
  %2035 = phi i32 [ %2024, %2032 ], [ %2019, %2017 ]
  %2036 = phi i32 [ %2033, %2032 ], [ %2018, %2017 ]
  %2037 = icmp eq i32 %2036, %2024
  br i1 %2037, label %2039, label %2038

2038:                                             ; preds = %2034
  store i32 %2036, ptr %2023, align 4, !tbaa !5
  br label %2039

2039:                                             ; preds = %2038, %2034
  %2040 = getelementptr inbounds i32, ptr %2020, i64 -1
  %2041 = icmp ult ptr %2040, %964
  br i1 %2041, label %2042, label %2017, !llvm.loop !64

2042:                                             ; preds = %2039, %2013
  %2043 = phi i32 [ %2015, %2013 ], [ %2036, %2039 ]
  %2044 = getelementptr inbounds i32, ptr %2014, i64 1
  %2045 = icmp ult ptr %2044, %1943
  br i1 %2045, label %2046, label %2165

2046:                                             ; preds = %2042, %2084
  %2047 = phi ptr [ %2051, %2084 ], [ %963, %2042 ]
  %2048 = phi i32 [ %2087, %2084 ], [ %2043, %2042 ]
  %2049 = phi i32 [ %2086, %2084 ], [ -1, %2042 ]
  %2050 = phi ptr [ %2085, %2084 ], [ %1943, %2042 ]
  %2051 = getelementptr inbounds i32, ptr %2047, i64 -1
  %2052 = load i32, ptr %2051, align 4, !tbaa !5
  %2053 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2052, i32 %1959), !nosanitize !10
  %2054 = extractvalue { i32, i1 } %2053, 0, !nosanitize !10
  %2055 = extractvalue { i32, i1 } %2053, 1, !nosanitize !10
  br i1 %2055, label %2852, label %2056, !nosanitize !10

2056:                                             ; preds = %2046
  %2057 = icmp sgt i32 %2054, -1
  br i1 %2057, label %2058, label %2084

2058:                                             ; preds = %2056
  %2059 = zext nneg i32 %2054 to i64
  %2060 = getelementptr inbounds i32, ptr %149, i64 %2059
  %2061 = load i32, ptr %2060, align 4, !tbaa !5
  %2062 = icmp eq i32 %2061, %1967
  br i1 %2062, label %2063, label %2084

2063:                                             ; preds = %2058
  %2064 = getelementptr inbounds i32, ptr %2050, i64 -1
  store i32 %2054, ptr %2064, align 4, !tbaa !5
  %2065 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2054, i32 %1959), !nosanitize !10
  %2066 = extractvalue { i32, i1 } %2065, 1, !nosanitize !10
  br i1 %2066, label %2854, label %2067, !nosanitize !10

2067:                                             ; preds = %2063
  %2068 = extractvalue { i32, i1 } %2065, 0, !nosanitize !10
  %2069 = sext i32 %2068 to i64
  %2070 = getelementptr inbounds i32, ptr %149, i64 %2069
  %2071 = load i32, ptr %2070, align 4, !tbaa !5
  %2072 = icmp eq i32 %2049, %2071
  br i1 %2072, label %2081, label %2073

2073:                                             ; preds = %2067
  %2074 = ptrtoint ptr %2064 to i64
  %2075 = sub i64 %2074, %887
  %2076 = ashr exact i64 %2075, 2
  %2077 = add nsw i64 %2076, 2147483648
  %2078 = icmp ult i64 %2077, 4294967296
  br i1 %2078, label %2079, label %2857

2079:                                             ; preds = %2073
  %2080 = trunc i64 %2076 to i32
  br label %2081

2081:                                             ; preds = %2079, %2067
  %2082 = phi i32 [ %2071, %2079 ], [ %2049, %2067 ]
  %2083 = phi i32 [ %2080, %2079 ], [ %2048, %2067 ]
  store i32 %2083, ptr %2060, align 4, !tbaa !5
  br label %2084

2084:                                             ; preds = %2081, %2058, %2056
  %2085 = phi ptr [ %2064, %2081 ], [ %2050, %2058 ], [ %2050, %2056 ]
  %2086 = phi i32 [ %2082, %2081 ], [ %2049, %2058 ], [ %2049, %2056 ]
  %2087 = phi i32 [ %2083, %2081 ], [ %2048, %2058 ], [ %2048, %2056 ]
  %2088 = icmp ult ptr %2044, %2085
  br i1 %2088, label %2046, label %2165, !llvm.loop !65

2089:                                             ; preds = %1938
  %2090 = ptrtoint ptr %965 to i64
  %2091 = sub i64 %2090, %886
  %2092 = ashr exact i64 %2091, 2
  %2093 = add nsw i64 %2092, 2147483648
  %2094 = icmp ult i64 %2093, 4294967296
  br i1 %2094, label %2095, label %2846

2095:                                             ; preds = %2089
  %2096 = trunc i64 %2092 to i32
  %2097 = ptrtoint ptr %1943 to i64
  %2098 = sub i64 %2097, %887
  %2099 = ashr exact i64 %2098, 2
  %2100 = add nsw i64 %2099, 2147483647
  %2101 = icmp ult i64 %2100, 4294967296
  br i1 %2101, label %2102, label %2848

2102:                                             ; preds = %2095
  %2103 = trunc i64 %2099 to i32
  %2104 = add i32 %2103, -1
  %2105 = getelementptr inbounds i32, ptr %1941, i64 -1
  %2106 = icmp ult ptr %2105, %964
  br i1 %2106, label %2134, label %2107

2107:                                             ; preds = %2102, %2130
  %2108 = phi ptr [ %2132, %2130 ], [ %964, %2102 ]
  %2109 = phi ptr [ %2131, %2130 ], [ %2105, %2102 ]
  %2110 = load i32, ptr %2108, align 4, !tbaa !5
  %2111 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2110, i32 %2096), !nosanitize !10
  %2112 = extractvalue { i32, i1 } %2111, 0, !nosanitize !10
  %2113 = extractvalue { i32, i1 } %2111, 1, !nosanitize !10
  br i1 %2113, label %2847, label %2114, !nosanitize !10

2114:                                             ; preds = %2107
  %2115 = icmp sgt i32 %2112, -1
  br i1 %2115, label %2116, label %2130

2116:                                             ; preds = %2114
  %2117 = zext nneg i32 %2112 to i64
  %2118 = getelementptr inbounds i32, ptr %149, i64 %2117
  %2119 = load i32, ptr %2118, align 4, !tbaa !5
  %2120 = icmp eq i32 %2119, %2104
  br i1 %2120, label %2121, label %2130

2121:                                             ; preds = %2116
  %2122 = getelementptr inbounds i32, ptr %2109, i64 1
  store i32 %2112, ptr %2122, align 4, !tbaa !5
  %2123 = ptrtoint ptr %2122 to i64
  %2124 = sub i64 %2123, %887
  %2125 = ashr exact i64 %2124, 2
  %2126 = add nsw i64 %2125, 2147483648
  %2127 = icmp ult i64 %2126, 4294967296
  br i1 %2127, label %2128, label %2849

2128:                                             ; preds = %2121
  %2129 = trunc i64 %2125 to i32
  store i32 %2129, ptr %2118, align 4, !tbaa !5
  br label %2130

2130:                                             ; preds = %2128, %2116, %2114
  %2131 = phi ptr [ %2122, %2128 ], [ %2109, %2116 ], [ %2109, %2114 ]
  %2132 = getelementptr inbounds i32, ptr %2108, i64 1
  %2133 = icmp ugt ptr %2132, %2131
  br i1 %2133, label %2134, label %2107, !llvm.loop !66

2134:                                             ; preds = %2130, %2102
  %2135 = phi ptr [ %2105, %2102 ], [ %2131, %2130 ]
  %2136 = getelementptr inbounds i32, ptr %2135, i64 1
  %2137 = icmp ult ptr %2136, %1943
  br i1 %2137, label %2138, label %2165

2138:                                             ; preds = %2134, %2162
  %2139 = phi ptr [ %2141, %2162 ], [ %963, %2134 ]
  %2140 = phi ptr [ %2163, %2162 ], [ %1943, %2134 ]
  %2141 = getelementptr inbounds i32, ptr %2139, i64 -1
  %2142 = load i32, ptr %2141, align 4, !tbaa !5
  %2143 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2142, i32 %2096), !nosanitize !10
  %2144 = extractvalue { i32, i1 } %2143, 0, !nosanitize !10
  %2145 = extractvalue { i32, i1 } %2143, 1, !nosanitize !10
  br i1 %2145, label %2847, label %2146, !nosanitize !10

2146:                                             ; preds = %2138
  %2147 = icmp sgt i32 %2144, -1
  br i1 %2147, label %2148, label %2162

2148:                                             ; preds = %2146
  %2149 = zext nneg i32 %2144 to i64
  %2150 = getelementptr inbounds i32, ptr %149, i64 %2149
  %2151 = load i32, ptr %2150, align 4, !tbaa !5
  %2152 = icmp eq i32 %2151, %2104
  br i1 %2152, label %2153, label %2162

2153:                                             ; preds = %2148
  %2154 = getelementptr inbounds i32, ptr %2140, i64 -1
  store i32 %2144, ptr %2154, align 4, !tbaa !5
  %2155 = ptrtoint ptr %2154 to i64
  %2156 = sub i64 %2155, %887
  %2157 = ashr exact i64 %2156, 2
  %2158 = add nsw i64 %2157, 2147483648
  %2159 = icmp ult i64 %2158, 4294967296
  br i1 %2159, label %2160, label %2850

2160:                                             ; preds = %2153
  %2161 = trunc i64 %2157 to i32
  store i32 %2161, ptr %2150, align 4, !tbaa !5
  br label %2162

2162:                                             ; preds = %2160, %2148, %2146
  %2163 = phi ptr [ %2154, %2160 ], [ %2140, %2148 ], [ %2140, %2146 ]
  %2164 = icmp ult ptr %2136, %2163
  br i1 %2164, label %2138, label %2165, !llvm.loop !67

2165:                                             ; preds = %2084, %2162, %2134, %2042
  %2166 = icmp sgt i32 %1936, -1
  br i1 %2166, label %2167, label %2858

2167:                                             ; preds = %2165
  %2168 = icmp eq i32 %1936, 0
  br i1 %2168, label %2746, label %2169

2169:                                             ; preds = %2167
  %2170 = add nsw i32 %1936, -1
  %2171 = zext nneg i32 %2170 to i64
  %2172 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2171
  %2173 = load ptr, ptr %2172, align 16, !tbaa !50
  %2174 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2171, i32 1
  %2175 = load ptr, ptr %2174, align 8, !tbaa !52
  %2176 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2171, i32 2
  %2177 = load ptr, ptr %2176, align 16, !tbaa !53
  %2178 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2171, i32 3
  %2179 = load i32, ptr %2178, align 8, !tbaa !54
  %2180 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2171, i32 4
  %2181 = load i32, ptr %2180, align 4, !tbaa !55
  br label %2762

2182:                                             ; preds = %1933
  %2183 = getelementptr inbounds i32, ptr %965, i64 %898
  %2184 = ptrtoint ptr %963 to i64
  %2185 = sub i64 %2184, %887
  %2186 = ashr exact i64 %2185, 2
  %2187 = add nsw i64 %2186, 2147483647
  %2188 = icmp ult i64 %2187, 4294967296
  br i1 %2188, label %2189, label %2825

2189:                                             ; preds = %2182
  %2190 = trunc i64 %2186 to i32
  %2191 = add i32 %2190, -1
  call fastcc void @tr_partition(ptr noundef %2183, ptr noundef %964, ptr noundef %964, ptr noundef %963, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %2191)
  %2192 = load ptr, ptr %7, align 8, !tbaa !46
  %2193 = icmp ult ptr %2192, %963
  br i1 %2193, label %2194, label %2211

2194:                                             ; preds = %2189
  %2195 = ptrtoint ptr %2192 to i64
  %2196 = sub i64 %2195, %887
  %2197 = ashr exact i64 %2196, 2
  %2198 = add nsw i64 %2197, 2147483647
  %2199 = icmp ult i64 %2198, 4294967296
  br i1 %2199, label %2200, label %2826

2200:                                             ; preds = %2194
  %2201 = trunc i64 %2197 to i32
  %2202 = add i32 %2201, -1
  %2203 = icmp ult ptr %964, %2192
  br i1 %2203, label %2204, label %2211

2204:                                             ; preds = %2200, %2204
  %2205 = phi ptr [ %2209, %2204 ], [ %964, %2200 ]
  %2206 = load i32, ptr %2205, align 4, !tbaa !5
  %2207 = sext i32 %2206 to i64
  %2208 = getelementptr inbounds i32, ptr %149, i64 %2207
  store i32 %2202, ptr %2208, align 4, !tbaa !5
  %2209 = getelementptr inbounds i32, ptr %2205, i64 1
  %2210 = icmp ult ptr %2209, %2192
  br i1 %2210, label %2204, label %2211, !llvm.loop !68

2211:                                             ; preds = %2204, %2200, %2189
  %2212 = load ptr, ptr %8, align 8, !tbaa !46
  %2213 = icmp ult ptr %2212, %963
  %2214 = ptrtoint ptr %2212 to i64
  br i1 %2213, label %2215, label %2231

2215:                                             ; preds = %2211
  %2216 = sub i64 %2214, %887
  %2217 = ashr exact i64 %2216, 2
  %2218 = add nsw i64 %2217, 2147483647
  %2219 = icmp ult i64 %2218, 4294967296
  br i1 %2219, label %2220, label %2827

2220:                                             ; preds = %2215
  %2221 = trunc i64 %2217 to i32
  %2222 = add i32 %2221, -1
  %2223 = icmp ult ptr %2192, %2212
  br i1 %2223, label %2224, label %2231

2224:                                             ; preds = %2220, %2224
  %2225 = phi ptr [ %2229, %2224 ], [ %2192, %2220 ]
  %2226 = load i32, ptr %2225, align 4, !tbaa !5
  %2227 = sext i32 %2226 to i64
  %2228 = getelementptr inbounds i32, ptr %149, i64 %2227
  store i32 %2222, ptr %2228, align 4, !tbaa !5
  %2229 = getelementptr inbounds i32, ptr %2225, i64 1
  %2230 = icmp ult ptr %2229, %2212
  br i1 %2230, label %2224, label %2231, !llvm.loop !69

2231:                                             ; preds = %2224, %2220, %2211
  %2232 = ptrtoint ptr %2192 to i64
  %2233 = sub i64 %2214, %2232
  %2234 = icmp sgt i64 %2233, 4
  br i1 %2234, label %2235, label %2254

2235:                                             ; preds = %2231
  %2236 = icmp slt i32 %967, 64
  br i1 %2236, label %2237, label %2828

2237:                                             ; preds = %2235
  %2238 = sext i32 %967 to i64
  %2239 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2238
  store ptr null, ptr %2239, align 16, !tbaa !50
  %2240 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2238, i32 1
  store ptr %2192, ptr %2240, align 8, !tbaa !52
  %2241 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2238, i32 2
  store ptr %2212, ptr %2241, align 16, !tbaa !53
  %2242 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2238, i32 3
  store i32 0, ptr %2242, align 8, !tbaa !54
  %2243 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2238, i32 4
  store i32 0, ptr %2243, align 4, !tbaa !55
  %2244 = icmp eq i32 %967, 63
  br i1 %2244, label %2829, label %2245

2245:                                             ; preds = %2237
  %2246 = add nsw i32 %967, 1
  %2247 = sext i32 %2246 to i64
  %2248 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2247
  store ptr %2183, ptr %2248, align 16, !tbaa !50
  %2249 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2247, i32 1
  store ptr %964, ptr %2249, align 8, !tbaa !52
  %2250 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2247, i32 2
  store ptr %963, ptr %2250, align 16, !tbaa !53
  %2251 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2247, i32 3
  store i32 -2, ptr %2251, align 8, !tbaa !54
  %2252 = add nsw i32 %967, 2
  %2253 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2247, i32 4
  store i32 %968, ptr %2253, align 4, !tbaa !55
  br label %2254

2254:                                             ; preds = %2245, %2231
  %2255 = phi i32 [ %2252, %2245 ], [ %967, %2231 ]
  %2256 = phi i32 [ %967, %2245 ], [ %968, %2231 ]
  %2257 = ptrtoint ptr %964 to i64
  %2258 = sub i64 %2232, %2257
  %2259 = ashr exact i64 %2258, 2
  %2260 = sub i64 %2184, %2214
  %2261 = ashr exact i64 %2260, 2
  %2262 = icmp sgt i64 %2259, %2261
  br i1 %2262, label %2398, label %2263

2263:                                             ; preds = %2254
  %2264 = icmp sgt i64 %2259, 1
  br i1 %2264, label %2317, label %2265

2265:                                             ; preds = %2263
  %2266 = icmp sgt i64 %2261, 1
  br i1 %2266, label %2284, label %2267

2267:                                             ; preds = %2265
  %2268 = icmp sgt i32 %2255, -1
  br i1 %2268, label %2269, label %2837

2269:                                             ; preds = %2267
  %2270 = icmp eq i32 %2255, 0
  br i1 %2270, label %2746, label %2271

2271:                                             ; preds = %2269
  %2272 = add nsw i32 %2255, -1
  %2273 = zext nneg i32 %2272 to i64
  %2274 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2273
  %2275 = load ptr, ptr %2274, align 16, !tbaa !50
  %2276 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2273, i32 1
  %2277 = load ptr, ptr %2276, align 8, !tbaa !52
  %2278 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2273, i32 2
  %2279 = load ptr, ptr %2278, align 16, !tbaa !53
  %2280 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2273, i32 3
  %2281 = load i32, ptr %2280, align 8, !tbaa !54
  %2282 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2273, i32 4
  %2283 = load i32, ptr %2282, align 4, !tbaa !55
  br label %2762

2284:                                             ; preds = %2265
  %2285 = icmp ult i64 %2261, 2147483648
  br i1 %2285, label %2286, label %2835

2286:                                             ; preds = %2284
  %2287 = trunc i64 %2261 to i32
  %2288 = icmp ult i32 %2287, 65536
  br i1 %2288, label %2305, label %2289

2289:                                             ; preds = %2286
  %2290 = icmp ult i32 %2287, 16777216
  br i1 %2290, label %2298, label %2291

2291:                                             ; preds = %2289
  %2292 = lshr i64 %2261, 24
  %2293 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2292
  %2294 = load i32, ptr %2293, align 4, !tbaa !5
  %2295 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2294, i32 24), !nosanitize !10
  %2296 = extractvalue { i32, i1 } %2295, 0, !nosanitize !10
  %2297 = extractvalue { i32, i1 } %2295, 1, !nosanitize !10
  br i1 %2297, label %2836, label %2762, !nosanitize !10

2298:                                             ; preds = %2289
  %2299 = lshr i64 %2261, 16
  %2300 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2299
  %2301 = load i32, ptr %2300, align 4, !tbaa !5
  %2302 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2301, i32 16), !nosanitize !10
  %2303 = extractvalue { i32, i1 } %2302, 0, !nosanitize !10
  %2304 = extractvalue { i32, i1 } %2302, 1, !nosanitize !10
  br i1 %2304, label %2836, label %2762, !nosanitize !10

2305:                                             ; preds = %2286
  %2306 = icmp ult i32 %2287, 256
  br i1 %2306, label %2314, label %2307

2307:                                             ; preds = %2305
  %2308 = lshr i64 %2261, 8
  %2309 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2308
  %2310 = load i32, ptr %2309, align 4, !tbaa !5
  %2311 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2310, i32 8), !nosanitize !10
  %2312 = extractvalue { i32, i1 } %2311, 0, !nosanitize !10
  %2313 = extractvalue { i32, i1 } %2311, 1, !nosanitize !10
  br i1 %2313, label %2836, label %2762, !nosanitize !10

2314:                                             ; preds = %2305
  %2315 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2261
  %2316 = load i32, ptr %2315, align 4, !tbaa !5
  br label %2762

2317:                                             ; preds = %2263
  %2318 = icmp slt i32 %2255, 64
  br i1 %2318, label %2319, label %2830

2319:                                             ; preds = %2317
  %2320 = sext i32 %2255 to i64
  %2321 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2320
  store ptr %965, ptr %2321, align 16, !tbaa !50
  %2322 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2320, i32 1
  store ptr %2212, ptr %2322, align 8, !tbaa !52
  %2323 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2320, i32 2
  store ptr %963, ptr %2323, align 16, !tbaa !53
  %2324 = add nsw i64 %2261, 2147483648
  %2325 = icmp ult i64 %2324, 4294967296
  br i1 %2325, label %2326, label %2831

2326:                                             ; preds = %2319
  %2327 = trunc i64 %2261 to i32
  %2328 = icmp ult i32 %2327, 65536
  br i1 %2328, label %2347, label %2329

2329:                                             ; preds = %2326
  %2330 = icmp ult i32 %2327, 16777216
  br i1 %2330, label %2339, label %2331

2331:                                             ; preds = %2329
  %2332 = lshr i64 %2261, 24
  %2333 = and i64 %2332, 255
  %2334 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2333
  %2335 = load i32, ptr %2334, align 4, !tbaa !5
  %2336 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2335, i32 24), !nosanitize !10
  %2337 = extractvalue { i32, i1 } %2336, 0, !nosanitize !10
  %2338 = extractvalue { i32, i1 } %2336, 1, !nosanitize !10
  br i1 %2338, label %2832, label %2361, !nosanitize !10

2339:                                             ; preds = %2329
  %2340 = lshr i64 %2261, 16
  %2341 = and i64 %2340, 65535
  %2342 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2341
  %2343 = load i32, ptr %2342, align 4, !tbaa !5
  %2344 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2343, i32 16), !nosanitize !10
  %2345 = extractvalue { i32, i1 } %2344, 0, !nosanitize !10
  %2346 = extractvalue { i32, i1 } %2344, 1, !nosanitize !10
  br i1 %2346, label %2832, label %2361, !nosanitize !10

2347:                                             ; preds = %2326
  %2348 = icmp ult i32 %2327, 256
  br i1 %2348, label %2357, label %2349

2349:                                             ; preds = %2347
  %2350 = lshr i64 %2261, 8
  %2351 = and i64 %2350, 16777215
  %2352 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2351
  %2353 = load i32, ptr %2352, align 4, !tbaa !5
  %2354 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2353, i32 8), !nosanitize !10
  %2355 = extractvalue { i32, i1 } %2354, 0, !nosanitize !10
  %2356 = extractvalue { i32, i1 } %2354, 1, !nosanitize !10
  br i1 %2356, label %2832, label %2361, !nosanitize !10

2357:                                             ; preds = %2347
  %2358 = and i64 %2261, 4294967295
  %2359 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2358
  %2360 = load i32, ptr %2359, align 4, !tbaa !5
  br label %2361

2361:                                             ; preds = %2357, %2349, %2339, %2331
  %2362 = phi i32 [ %2337, %2331 ], [ %2345, %2339 ], [ %2355, %2349 ], [ %2360, %2357 ]
  %2363 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2320, i32 3
  store i32 %2362, ptr %2363, align 8, !tbaa !54
  %2364 = add nsw i32 %2255, 1
  %2365 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2320, i32 4
  store i32 %2256, ptr %2365, align 4, !tbaa !55
  %2366 = icmp ult i64 %2259, 2147483648
  br i1 %2366, label %2367, label %2833

2367:                                             ; preds = %2361
  %2368 = trunc i64 %2259 to i32
  %2369 = icmp ult i32 %2368, 65536
  br i1 %2369, label %2386, label %2370

2370:                                             ; preds = %2367
  %2371 = icmp ult i32 %2368, 16777216
  br i1 %2371, label %2379, label %2372

2372:                                             ; preds = %2370
  %2373 = lshr i64 %2259, 24
  %2374 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2373
  %2375 = load i32, ptr %2374, align 4, !tbaa !5
  %2376 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2375, i32 24), !nosanitize !10
  %2377 = extractvalue { i32, i1 } %2376, 0, !nosanitize !10
  %2378 = extractvalue { i32, i1 } %2376, 1, !nosanitize !10
  br i1 %2378, label %2834, label %2762, !nosanitize !10

2379:                                             ; preds = %2370
  %2380 = lshr i64 %2259, 16
  %2381 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2380
  %2382 = load i32, ptr %2381, align 4, !tbaa !5
  %2383 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2382, i32 16), !nosanitize !10
  %2384 = extractvalue { i32, i1 } %2383, 0, !nosanitize !10
  %2385 = extractvalue { i32, i1 } %2383, 1, !nosanitize !10
  br i1 %2385, label %2834, label %2762, !nosanitize !10

2386:                                             ; preds = %2367
  %2387 = icmp ult i32 %2368, 256
  br i1 %2387, label %2395, label %2388

2388:                                             ; preds = %2386
  %2389 = lshr i64 %2259, 8
  %2390 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2389
  %2391 = load i32, ptr %2390, align 4, !tbaa !5
  %2392 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2391, i32 8), !nosanitize !10
  %2393 = extractvalue { i32, i1 } %2392, 0, !nosanitize !10
  %2394 = extractvalue { i32, i1 } %2392, 1, !nosanitize !10
  br i1 %2394, label %2834, label %2762, !nosanitize !10

2395:                                             ; preds = %2386
  %2396 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2259
  %2397 = load i32, ptr %2396, align 4, !tbaa !5
  br label %2762

2398:                                             ; preds = %2254
  %2399 = icmp sgt i64 %2261, 1
  br i1 %2399, label %2452, label %2400

2400:                                             ; preds = %2398
  %2401 = icmp sgt i64 %2259, 1
  br i1 %2401, label %2419, label %2402

2402:                                             ; preds = %2400
  %2403 = icmp sgt i32 %2255, -1
  br i1 %2403, label %2404, label %2845

2404:                                             ; preds = %2402
  %2405 = icmp eq i32 %2255, 0
  br i1 %2405, label %2746, label %2406

2406:                                             ; preds = %2404
  %2407 = add nsw i32 %2255, -1
  %2408 = zext nneg i32 %2407 to i64
  %2409 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2408
  %2410 = load ptr, ptr %2409, align 16, !tbaa !50
  %2411 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2408, i32 1
  %2412 = load ptr, ptr %2411, align 8, !tbaa !52
  %2413 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2408, i32 2
  %2414 = load ptr, ptr %2413, align 16, !tbaa !53
  %2415 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2408, i32 3
  %2416 = load i32, ptr %2415, align 8, !tbaa !54
  %2417 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2408, i32 4
  %2418 = load i32, ptr %2417, align 4, !tbaa !55
  br label %2762

2419:                                             ; preds = %2400
  %2420 = icmp ult i64 %2259, 2147483648
  br i1 %2420, label %2421, label %2843

2421:                                             ; preds = %2419
  %2422 = trunc i64 %2259 to i32
  %2423 = icmp ult i32 %2422, 65536
  br i1 %2423, label %2440, label %2424

2424:                                             ; preds = %2421
  %2425 = icmp ult i32 %2422, 16777216
  br i1 %2425, label %2433, label %2426

2426:                                             ; preds = %2424
  %2427 = lshr i64 %2259, 24
  %2428 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2427
  %2429 = load i32, ptr %2428, align 4, !tbaa !5
  %2430 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2429, i32 24), !nosanitize !10
  %2431 = extractvalue { i32, i1 } %2430, 0, !nosanitize !10
  %2432 = extractvalue { i32, i1 } %2430, 1, !nosanitize !10
  br i1 %2432, label %2844, label %2762, !nosanitize !10

2433:                                             ; preds = %2424
  %2434 = lshr i64 %2259, 16
  %2435 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2434
  %2436 = load i32, ptr %2435, align 4, !tbaa !5
  %2437 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2436, i32 16), !nosanitize !10
  %2438 = extractvalue { i32, i1 } %2437, 0, !nosanitize !10
  %2439 = extractvalue { i32, i1 } %2437, 1, !nosanitize !10
  br i1 %2439, label %2844, label %2762, !nosanitize !10

2440:                                             ; preds = %2421
  %2441 = icmp ult i32 %2422, 256
  br i1 %2441, label %2449, label %2442

2442:                                             ; preds = %2440
  %2443 = lshr i64 %2259, 8
  %2444 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2443
  %2445 = load i32, ptr %2444, align 4, !tbaa !5
  %2446 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2445, i32 8), !nosanitize !10
  %2447 = extractvalue { i32, i1 } %2446, 0, !nosanitize !10
  %2448 = extractvalue { i32, i1 } %2446, 1, !nosanitize !10
  br i1 %2448, label %2844, label %2762, !nosanitize !10

2449:                                             ; preds = %2440
  %2450 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2259
  %2451 = load i32, ptr %2450, align 4, !tbaa !5
  br label %2762

2452:                                             ; preds = %2398
  %2453 = icmp slt i32 %2255, 64
  br i1 %2453, label %2454, label %2838

2454:                                             ; preds = %2452
  %2455 = sext i32 %2255 to i64
  %2456 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2455
  store ptr %965, ptr %2456, align 16, !tbaa !50
  %2457 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2455, i32 1
  store ptr %964, ptr %2457, align 8, !tbaa !52
  %2458 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2455, i32 2
  store ptr %2192, ptr %2458, align 16, !tbaa !53
  %2459 = add nsw i64 %2259, 2147483648
  %2460 = icmp ult i64 %2459, 4294967296
  br i1 %2460, label %2461, label %2839

2461:                                             ; preds = %2454
  %2462 = trunc i64 %2259 to i32
  %2463 = icmp ult i32 %2462, 65536
  br i1 %2463, label %2482, label %2464

2464:                                             ; preds = %2461
  %2465 = icmp ult i32 %2462, 16777216
  br i1 %2465, label %2474, label %2466

2466:                                             ; preds = %2464
  %2467 = lshr i64 %2259, 24
  %2468 = and i64 %2467, 255
  %2469 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2468
  %2470 = load i32, ptr %2469, align 4, !tbaa !5
  %2471 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2470, i32 24), !nosanitize !10
  %2472 = extractvalue { i32, i1 } %2471, 0, !nosanitize !10
  %2473 = extractvalue { i32, i1 } %2471, 1, !nosanitize !10
  br i1 %2473, label %2840, label %2496, !nosanitize !10

2474:                                             ; preds = %2464
  %2475 = lshr i64 %2259, 16
  %2476 = and i64 %2475, 65535
  %2477 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2476
  %2478 = load i32, ptr %2477, align 4, !tbaa !5
  %2479 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2478, i32 16), !nosanitize !10
  %2480 = extractvalue { i32, i1 } %2479, 0, !nosanitize !10
  %2481 = extractvalue { i32, i1 } %2479, 1, !nosanitize !10
  br i1 %2481, label %2840, label %2496, !nosanitize !10

2482:                                             ; preds = %2461
  %2483 = icmp ult i32 %2462, 256
  br i1 %2483, label %2492, label %2484

2484:                                             ; preds = %2482
  %2485 = lshr i64 %2259, 8
  %2486 = and i64 %2485, 16777215
  %2487 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2486
  %2488 = load i32, ptr %2487, align 4, !tbaa !5
  %2489 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2488, i32 8), !nosanitize !10
  %2490 = extractvalue { i32, i1 } %2489, 0, !nosanitize !10
  %2491 = extractvalue { i32, i1 } %2489, 1, !nosanitize !10
  br i1 %2491, label %2840, label %2496, !nosanitize !10

2492:                                             ; preds = %2482
  %2493 = and i64 %2259, 4294967295
  %2494 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2493
  %2495 = load i32, ptr %2494, align 4, !tbaa !5
  br label %2496

2496:                                             ; preds = %2492, %2484, %2474, %2466
  %2497 = phi i32 [ %2472, %2466 ], [ %2480, %2474 ], [ %2490, %2484 ], [ %2495, %2492 ]
  %2498 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2455, i32 3
  store i32 %2497, ptr %2498, align 8, !tbaa !54
  %2499 = add nsw i32 %2255, 1
  %2500 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2455, i32 4
  store i32 %2256, ptr %2500, align 4, !tbaa !55
  %2501 = icmp ult i64 %2261, 2147483648
  br i1 %2501, label %2502, label %2841

2502:                                             ; preds = %2496
  %2503 = trunc i64 %2261 to i32
  %2504 = icmp ult i32 %2503, 65536
  br i1 %2504, label %2521, label %2505

2505:                                             ; preds = %2502
  %2506 = icmp ult i32 %2503, 16777216
  br i1 %2506, label %2514, label %2507

2507:                                             ; preds = %2505
  %2508 = lshr i64 %2261, 24
  %2509 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2508
  %2510 = load i32, ptr %2509, align 4, !tbaa !5
  %2511 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2510, i32 24), !nosanitize !10
  %2512 = extractvalue { i32, i1 } %2511, 0, !nosanitize !10
  %2513 = extractvalue { i32, i1 } %2511, 1, !nosanitize !10
  br i1 %2513, label %2842, label %2762, !nosanitize !10

2514:                                             ; preds = %2505
  %2515 = lshr i64 %2261, 16
  %2516 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2515
  %2517 = load i32, ptr %2516, align 4, !tbaa !5
  %2518 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2517, i32 16), !nosanitize !10
  %2519 = extractvalue { i32, i1 } %2518, 0, !nosanitize !10
  %2520 = extractvalue { i32, i1 } %2518, 1, !nosanitize !10
  br i1 %2520, label %2842, label %2762, !nosanitize !10

2521:                                             ; preds = %2502
  %2522 = icmp ult i32 %2503, 256
  br i1 %2522, label %2530, label %2523

2523:                                             ; preds = %2521
  %2524 = lshr i64 %2261, 8
  %2525 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2524
  %2526 = load i32, ptr %2525, align 4, !tbaa !5
  %2527 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2526, i32 8), !nosanitize !10
  %2528 = extractvalue { i32, i1 } %2527, 0, !nosanitize !10
  %2529 = extractvalue { i32, i1 } %2527, 1, !nosanitize !10
  br i1 %2529, label %2842, label %2762, !nosanitize !10

2530:                                             ; preds = %2521
  %2531 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2261
  %2532 = load i32, ptr %2531, align 4, !tbaa !5
  br label %2762

2533:                                             ; preds = %1933, %1930
  %2534 = load i32, ptr %964, align 4, !tbaa !5
  %2535 = icmp sgt i32 %2534, -1
  br i1 %2535, label %2536, label %2554

2536:                                             ; preds = %2533, %2550
  %2537 = phi i32 [ %2551, %2550 ], [ %2534, %2533 ]
  %2538 = phi ptr [ %2548, %2550 ], [ %964, %2533 ]
  %2539 = ptrtoint ptr %2538 to i64
  %2540 = sub i64 %2539, %887
  %2541 = ashr exact i64 %2540, 2
  %2542 = add nsw i64 %2541, 2147483648
  %2543 = icmp ult i64 %2542, 4294967296
  br i1 %2543, label %2544, label %2859

2544:                                             ; preds = %2536
  %2545 = trunc i64 %2541 to i32
  %2546 = zext nneg i32 %2537 to i64
  %2547 = getelementptr inbounds i32, ptr %149, i64 %2546
  store i32 %2545, ptr %2547, align 4, !tbaa !5
  %2548 = getelementptr inbounds i32, ptr %2538, i64 1
  %2549 = icmp ult ptr %2548, %963
  br i1 %2549, label %2550, label %2553

2550:                                             ; preds = %2544
  %2551 = load i32, ptr %2548, align 4, !tbaa !5
  %2552 = icmp sgt i32 %2551, -1
  br i1 %2552, label %2536, label %2553, !llvm.loop !70

2553:                                             ; preds = %2550, %2544
  store ptr %2548, ptr %7, align 8, !tbaa !46
  br label %2554

2554:                                             ; preds = %2553, %2533
  %2555 = phi ptr [ %964, %2533 ], [ %2548, %2553 ]
  %2556 = icmp ult ptr %2555, %963
  br i1 %2556, label %2574, label %2557

2557:                                             ; preds = %2554
  %2558 = icmp sgt i32 %967, -1
  br i1 %2558, label %2559, label %2869

2559:                                             ; preds = %2557
  %2560 = icmp eq i32 %967, 0
  br i1 %2560, label %2746, label %2561

2561:                                             ; preds = %2559
  %2562 = add nsw i32 %967, -1
  %2563 = zext nneg i32 %2562 to i64
  %2564 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2563
  %2565 = load ptr, ptr %2564, align 16, !tbaa !50
  %2566 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2563, i32 1
  %2567 = load ptr, ptr %2566, align 8, !tbaa !52
  %2568 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2563, i32 2
  %2569 = load ptr, ptr %2568, align 16, !tbaa !53
  %2570 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2563, i32 3
  %2571 = load i32, ptr %2570, align 8, !tbaa !54
  %2572 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2563, i32 4
  %2573 = load i32, ptr %2572, align 4, !tbaa !55
  br label %2762

2574:                                             ; preds = %2554
  %2575 = load i32, ptr %2555, align 4, !tbaa !5
  br label %2576

2576:                                             ; preds = %2576, %2574
  %2577 = phi i32 [ %2581, %2576 ], [ %2575, %2574 ]
  %2578 = phi ptr [ %2580, %2576 ], [ %2555, %2574 ]
  %2579 = xor i32 %2577, -1
  store i32 %2579, ptr %2578, align 4, !tbaa !5
  %2580 = getelementptr inbounds i32, ptr %2578, i64 1
  %2581 = load i32, ptr %2580, align 4, !tbaa !5
  %2582 = icmp slt i32 %2581, 0
  br i1 %2582, label %2576, label %2583, !llvm.loop !71

2583:                                             ; preds = %2576
  %2584 = zext nneg i32 %2581 to i64
  %2585 = getelementptr inbounds i32, ptr %149, i64 %2584
  %2586 = load i32, ptr %2585, align 4, !tbaa !5
  %2587 = getelementptr inbounds i32, ptr %965, i64 %2584
  %2588 = load i32, ptr %2587, align 4, !tbaa !5
  %2589 = icmp eq i32 %2586, %2588
  br i1 %2589, label %2633, label %2590

2590:                                             ; preds = %2583
  %2591 = ptrtoint ptr %2580 to i64
  %2592 = ptrtoint ptr %2555 to i64
  %2593 = sub i64 %2591, %2592
  %2594 = ashr exact i64 %2593, 2
  %2595 = add nsw i64 %2594, 2147483649
  %2596 = icmp ult i64 %2595, 4294967296
  br i1 %2596, label %2597, label %2860

2597:                                             ; preds = %2590
  %2598 = trunc i64 %2594 to i32
  %2599 = add i32 %2598, 1
  %2600 = icmp ult i32 %2599, 65536
  br i1 %2600, label %2619, label %2601

2601:                                             ; preds = %2597
  %2602 = icmp ult i32 %2599, 16777216
  br i1 %2602, label %2611, label %2603

2603:                                             ; preds = %2601
  %2604 = lshr i32 %2599, 24
  %2605 = zext nneg i32 %2604 to i64
  %2606 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2605
  %2607 = load i32, ptr %2606, align 4, !tbaa !5
  %2608 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2607, i32 24), !nosanitize !10
  %2609 = extractvalue { i32, i1 } %2608, 0, !nosanitize !10
  %2610 = extractvalue { i32, i1 } %2608, 1, !nosanitize !10
  br i1 %2610, label %2861, label %2633, !nosanitize !10

2611:                                             ; preds = %2601
  %2612 = lshr i32 %2599, 16
  %2613 = zext nneg i32 %2612 to i64
  %2614 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2613
  %2615 = load i32, ptr %2614, align 4, !tbaa !5
  %2616 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2615, i32 16), !nosanitize !10
  %2617 = extractvalue { i32, i1 } %2616, 0, !nosanitize !10
  %2618 = extractvalue { i32, i1 } %2616, 1, !nosanitize !10
  br i1 %2618, label %2861, label %2633, !nosanitize !10

2619:                                             ; preds = %2597
  %2620 = icmp ult i32 %2599, 256
  br i1 %2620, label %2629, label %2621

2621:                                             ; preds = %2619
  %2622 = lshr i32 %2599, 8
  %2623 = zext nneg i32 %2622 to i64
  %2624 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2623
  %2625 = load i32, ptr %2624, align 4, !tbaa !5
  %2626 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2625, i32 8), !nosanitize !10
  %2627 = extractvalue { i32, i1 } %2626, 0, !nosanitize !10
  %2628 = extractvalue { i32, i1 } %2626, 1, !nosanitize !10
  br i1 %2628, label %2861, label %2633, !nosanitize !10

2629:                                             ; preds = %2619
  %2630 = zext nneg i32 %2599 to i64
  %2631 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %2630
  %2632 = load i32, ptr %2631, align 4, !tbaa !5
  br label %2633

2633:                                             ; preds = %2629, %2621, %2611, %2603, %2583
  %2634 = phi i32 [ -1, %2583 ], [ %2609, %2603 ], [ %2617, %2611 ], [ %2627, %2621 ], [ %2632, %2629 ]
  %2635 = getelementptr inbounds i32, ptr %2578, i64 2
  store ptr %2635, ptr %7, align 8, !tbaa !46
  %2636 = icmp ult ptr %2635, %963
  %2637 = ptrtoint ptr %2635 to i64
  br i1 %2636, label %2638, label %2656

2638:                                             ; preds = %2633
  %2639 = sub i64 %2637, %887
  %2640 = ashr exact i64 %2639, 2
  %2641 = add nsw i64 %2640, 2147483647
  %2642 = icmp ult i64 %2641, 4294967296
  br i1 %2642, label %2643, label %2862

2643:                                             ; preds = %2638
  %2644 = trunc i64 %2640 to i32
  %2645 = add i32 %2644, -1
  %2646 = icmp ult ptr %2555, %2635
  br i1 %2646, label %2647, label %2654

2647:                                             ; preds = %2643, %2647
  %2648 = phi ptr [ %2652, %2647 ], [ %2555, %2643 ]
  %2649 = load i32, ptr %2648, align 4, !tbaa !5
  %2650 = sext i32 %2649 to i64
  %2651 = getelementptr inbounds i32, ptr %149, i64 %2650
  store i32 %2645, ptr %2651, align 4, !tbaa !5
  %2652 = getelementptr inbounds i32, ptr %2648, i64 1
  %2653 = icmp ult ptr %2652, %2635
  br i1 %2653, label %2647, label %2654, !llvm.loop !72

2654:                                             ; preds = %2647, %2643
  %2655 = phi ptr [ %2555, %2643 ], [ %2652, %2647 ]
  store ptr %2655, ptr %8, align 8, !tbaa !46
  br label %2656

2656:                                             ; preds = %2654, %2633
  %2657 = ptrtoint ptr %2555 to i64
  %2658 = sub i64 %2637, %2657
  %2659 = ashr exact i64 %2658, 2
  %2660 = add nsw i64 %2659, 2147483648
  %2661 = icmp ult i64 %2660, 4294967296
  br i1 %2661, label %2662, label %2863

2662:                                             ; preds = %2656
  %2663 = trunc i64 %2659 to i32
  %2664 = load i32, ptr %10, align 4, !tbaa !45
  %2665 = icmp slt i32 %2664, %2663
  br i1 %2665, label %2669, label %2666

2666:                                             ; preds = %2662
  %2667 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2664, i32 %2663), !nosanitize !10
  %2668 = extractvalue { i32, i1 } %2667, 1, !nosanitize !10
  br i1 %2668, label %2864, label %2683, !nosanitize !10

2669:                                             ; preds = %2662
  %2670 = load i32, ptr %9, align 4, !tbaa !43
  %2671 = icmp eq i32 %2670, 0
  br i1 %2671, label %2716, label %2672

2672:                                             ; preds = %2669
  %2673 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %86, i32 %2663), !nosanitize !10
  %2674 = extractvalue { i32, i1 } %2673, 1, !nosanitize !10
  br i1 %2674, label %2864, label %2675, !nosanitize !10

2675:                                             ; preds = %2672
  %2676 = extractvalue { i32, i1 } %2673, 0, !nosanitize !10
  %2677 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2664, i32 %2676), !nosanitize !10
  %2678 = extractvalue { i32, i1 } %2677, 1, !nosanitize !10
  br i1 %2678, label %2865, label %2679, !nosanitize !10

2679:                                             ; preds = %2675
  %2680 = extractvalue { i32, i1 } %2677, 0, !nosanitize !10
  store i32 %2680, ptr %10, align 4, !tbaa !45
  %2681 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2670, i32 -1)
  %2682 = extractvalue { i32, i1 } %2681, 1, !nosanitize !10
  br i1 %2682, label %2864, label %2683, !nosanitize !10

2683:                                             ; preds = %2679, %2666
  %2684 = phi { i32, i1 } [ %2681, %2679 ], [ %2667, %2666 ]
  %2685 = phi ptr [ %9, %2679 ], [ %10, %2666 ]
  %2686 = extractvalue { i32, i1 } %2684, 0
  store i32 %2686, ptr %2685, align 4, !tbaa !5
  %2687 = ptrtoint ptr %963 to i64
  %2688 = sub i64 %2687, %2637
  %2689 = icmp sgt i64 %2658, %2688
  br i1 %2689, label %2701, label %2690

2690:                                             ; preds = %2683
  %2691 = icmp slt i32 %967, 64
  br i1 %2691, label %2692, label %2866

2692:                                             ; preds = %2690
  %2693 = sext i32 %967 to i64
  %2694 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2693
  store ptr %965, ptr %2694, align 16, !tbaa !50
  %2695 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2693, i32 1
  store ptr %2635, ptr %2695, align 8, !tbaa !52
  %2696 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2693, i32 2
  store ptr %963, ptr %2696, align 16, !tbaa !53
  %2697 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2693, i32 3
  store i32 -3, ptr %2697, align 8, !tbaa !54
  %2698 = add nsw i32 %967, 1
  %2699 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2693, i32 4
  store i32 %968, ptr %2699, align 4, !tbaa !55
  %2700 = getelementptr inbounds i32, ptr %965, i64 %897
  br label %2762

2701:                                             ; preds = %2683
  %2702 = icmp sgt i64 %2688, 4
  br i1 %2702, label %2705, label %2703

2703:                                             ; preds = %2701
  %2704 = getelementptr inbounds i32, ptr %965, i64 %897
  br label %2762

2705:                                             ; preds = %2701
  %2706 = icmp slt i32 %967, 64
  br i1 %2706, label %2707, label %2867

2707:                                             ; preds = %2705
  %2708 = getelementptr inbounds i32, ptr %965, i64 %897
  %2709 = sext i32 %967 to i64
  %2710 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2709
  store ptr %2708, ptr %2710, align 16, !tbaa !50
  %2711 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2709, i32 1
  store ptr %2555, ptr %2711, align 8, !tbaa !52
  %2712 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2709, i32 2
  store ptr %2635, ptr %2712, align 16, !tbaa !53
  %2713 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2709, i32 3
  store i32 %2634, ptr %2713, align 8, !tbaa !54
  %2714 = add nsw i32 %967, 1
  %2715 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2709, i32 4
  store i32 %968, ptr %2715, align 4, !tbaa !55
  br label %2762

2716:                                             ; preds = %2669
  %2717 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %960, i32 %2663), !nosanitize !10
  %2718 = extractvalue { i32, i1 } %2717, 1, !nosanitize !10
  br i1 %2718, label %2865, label %2719, !nosanitize !10

2719:                                             ; preds = %2716
  %2720 = extractvalue { i32, i1 } %2717, 0
  %2721 = icmp sgt i32 %968, -1
  br i1 %2721, label %2722, label %2725

2722:                                             ; preds = %2719
  %2723 = zext nneg i32 %968 to i64
  %2724 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2723, i32 3
  store i32 -1, ptr %2724, align 8, !tbaa !54
  br label %2725

2725:                                             ; preds = %2722, %2719
  %2726 = ptrtoint ptr %963 to i64
  %2727 = sub i64 %2726, %2637
  %2728 = icmp sgt i64 %2727, 4
  br i1 %2728, label %2762, label %2729

2729:                                             ; preds = %2725
  %2730 = icmp sgt i32 %967, -1
  br i1 %2730, label %2731, label %2868

2731:                                             ; preds = %2729
  %2732 = icmp eq i32 %967, 0
  br i1 %2732, label %2746, label %2733

2733:                                             ; preds = %2731
  %2734 = add nsw i32 %967, -1
  %2735 = zext nneg i32 %2734 to i64
  %2736 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2735
  %2737 = load ptr, ptr %2736, align 16, !tbaa !50
  %2738 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2735, i32 1
  %2739 = load ptr, ptr %2738, align 8, !tbaa !52
  %2740 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2735, i32 2
  %2741 = load ptr, ptr %2740, align 16, !tbaa !53
  %2742 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2735, i32 3
  %2743 = load i32, ptr %2742, align 8, !tbaa !54
  %2744 = getelementptr inbounds [64 x %struct.anon.1], ptr %6, i64 0, i64 %2735, i32 4
  %2745 = load i32, ptr %2744, align 4, !tbaa !55
  br label %2762

2746:                                             ; preds = %2731, %2559, %2404, %2269, %2167, %1683, %1594, %1563
  %2747 = phi i32 [ %2720, %2731 ], [ %960, %2559 ], [ %960, %2167 ], [ %960, %2404 ], [ %960, %2269 ], [ %1676, %1683 ], [ %1544, %1594 ], [ %1544, %1563 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #12
  %2748 = icmp eq i32 %2747, 0
  br i1 %2748, label %2755, label %2749

2749:                                             ; preds = %2746
  %2750 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %903, i32 %2747), !nosanitize !10
  %2751 = extractvalue { i32, i1 } %2750, 1, !nosanitize !10
  br i1 %2751, label %2799, label %2752, !nosanitize !10

2752:                                             ; preds = %2749
  %2753 = extractvalue { i32, i1 } %2750, 0, !nosanitize !10
  %2754 = icmp ult ptr %915, %149
  br i1 %2754, label %2784, label %2924, !llvm.loop !73

2755:                                             ; preds = %2746
  %2756 = sub i64 %917, %916
  %2757 = ashr exact i64 %2756, 2
  %2758 = add nsw i64 %2757, 2147483648
  %2759 = icmp ult i64 %2758, 4294967296
  br i1 %2759, label %2760, label %2908

2760:                                             ; preds = %2755
  %2761 = trunc i64 %2757 to i32
  br label %2780

2762:                                             ; preds = %2733, %2725, %2707, %2703, %2692, %2561, %2530, %2523, %2514, %2507, %2449, %2442, %2433, %2426, %2406, %2395, %2388, %2379, %2372, %2314, %2307, %2298, %2291, %2271, %2169, %1685, %1669, %1611, %1596, %1590, %1580, %1565, %1559, %1528, %1508, %1490, %1475, %1455, %1451, %1435, %1415, %1397, %1382, %1362, %1358
  %2763 = phi i32 [ %2720, %2725 ], [ %2720, %2733 ], [ %960, %2707 ], [ %960, %2703 ], [ %960, %2692 ], [ %960, %2561 ], [ %960, %2169 ], [ %960, %2530 ], [ %960, %2523 ], [ %960, %2514 ], [ %960, %2507 ], [ %960, %2449 ], [ %960, %2442 ], [ %960, %2433 ], [ %960, %2426 ], [ %960, %2406 ], [ %960, %2395 ], [ %960, %2388 ], [ %960, %2379 ], [ %960, %2372 ], [ %960, %2314 ], [ %960, %2307 ], [ %960, %2298 ], [ %960, %2291 ], [ %960, %2271 ], [ %1676, %1685 ], [ %960, %1669 ], [ %1544, %1611 ], [ %1544, %1590 ], [ %1544, %1596 ], [ %1544, %1580 ], [ %1544, %1559 ], [ %1544, %1565 ], [ %960, %1528 ], [ %960, %1508 ], [ %960, %1490 ], [ %960, %1475 ], [ %960, %1455 ], [ %960, %1451 ], [ %960, %1435 ], [ %960, %1415 ], [ %960, %1397 ], [ %960, %1382 ], [ %960, %1362 ], [ %960, %1358 ]
  %2764 = phi ptr [ %963, %2725 ], [ %2741, %2733 ], [ %963, %2707 ], [ %2635, %2703 ], [ %2635, %2692 ], [ %2569, %2561 ], [ %2177, %2169 ], [ %963, %2530 ], [ %963, %2523 ], [ %963, %2514 ], [ %963, %2507 ], [ %2192, %2449 ], [ %2192, %2442 ], [ %2192, %2433 ], [ %2192, %2426 ], [ %2414, %2406 ], [ %2192, %2395 ], [ %2192, %2388 ], [ %2192, %2379 ], [ %2192, %2372 ], [ %963, %2314 ], [ %963, %2307 ], [ %963, %2298 ], [ %963, %2291 ], [ %2279, %2271 ], [ %1693, %1685 ], [ %963, %1669 ], [ %963, %1611 ], [ %1236, %1590 ], [ %1604, %1596 ], [ %1236, %1580 ], [ %963, %1559 ], [ %1573, %1565 ], [ %1235, %1528 ], [ %963, %1508 ], [ %1235, %1490 ], [ %963, %1475 ], [ %1236, %1455 ], [ %1235, %1451 ], [ %1235, %1435 ], [ %1236, %1415 ], [ %1235, %1397 ], [ %1236, %1382 ], [ %963, %1362 ], [ %1235, %1358 ]
  %2765 = phi ptr [ %2635, %2725 ], [ %2739, %2733 ], [ %2635, %2707 ], [ %2555, %2703 ], [ %2555, %2692 ], [ %2567, %2561 ], [ %2175, %2169 ], [ %2212, %2530 ], [ %2212, %2523 ], [ %2212, %2514 ], [ %2212, %2507 ], [ %964, %2449 ], [ %964, %2442 ], [ %964, %2433 ], [ %964, %2426 ], [ %2412, %2406 ], [ %964, %2395 ], [ %964, %2388 ], [ %964, %2379 ], [ %964, %2372 ], [ %2212, %2314 ], [ %2212, %2307 ], [ %2212, %2298 ], [ %2212, %2291 ], [ %2277, %2271 ], [ %1691, %1685 ], [ %964, %1669 ], [ %1235, %1611 ], [ %964, %1590 ], [ %1602, %1596 ], [ %964, %1580 ], [ %1235, %1559 ], [ %1571, %1565 ], [ %1236, %1528 ], [ %1235, %1508 ], [ %1236, %1490 ], [ %1235, %1475 ], [ %964, %1455 ], [ %1236, %1451 ], [ %1236, %1435 ], [ %964, %1415 ], [ %1236, %1397 ], [ %964, %1382 ], [ %1235, %1362 ], [ %1236, %1358 ]
  %2766 = phi ptr [ %965, %2725 ], [ %2737, %2733 ], [ %965, %2707 ], [ %2704, %2703 ], [ %2700, %2692 ], [ %2565, %2561 ], [ %2173, %2169 ], [ %965, %2530 ], [ %965, %2523 ], [ %965, %2514 ], [ %965, %2507 ], [ %965, %2449 ], [ %965, %2442 ], [ %965, %2433 ], [ %965, %2426 ], [ %2410, %2406 ], [ %965, %2395 ], [ %965, %2388 ], [ %965, %2379 ], [ %965, %2372 ], [ %965, %2314 ], [ %965, %2307 ], [ %965, %2298 ], [ %965, %2291 ], [ %2275, %2271 ], [ %1689, %1685 ], [ %1671, %1669 ], [ %965, %1611 ], [ %965, %1590 ], [ %1600, %1596 ], [ %965, %1580 ], [ %965, %1559 ], [ %1569, %1565 ], [ %1537, %1528 ], [ %965, %1508 ], [ %1498, %1490 ], [ %965, %1475 ], [ %965, %1455 ], [ %1452, %1451 ], [ %1444, %1435 ], [ %965, %1415 ], [ %1405, %1397 ], [ %965, %1382 ], [ %965, %1362 ], [ %1359, %1358 ]
  %2767 = phi i32 [ -3, %2725 ], [ %2743, %2733 ], [ -3, %2707 ], [ %2634, %2703 ], [ %2634, %2692 ], [ %2571, %2561 ], [ %2179, %2169 ], [ %2532, %2530 ], [ %2528, %2523 ], [ %2519, %2514 ], [ %2512, %2507 ], [ %2451, %2449 ], [ %2447, %2442 ], [ %2438, %2433 ], [ %2431, %2426 ], [ %2416, %2406 ], [ %2397, %2395 ], [ %2393, %2388 ], [ %2384, %2379 ], [ %2377, %2372 ], [ %2316, %2314 ], [ %2312, %2307 ], [ %2303, %2298 ], [ %2296, %2291 ], [ %2281, %2271 ], [ %1695, %1685 ], [ %1670, %1669 ], [ %993, %1611 ], [ %993, %1590 ], [ %1606, %1596 ], [ %993, %1580 ], [ %993, %1559 ], [ %1575, %1565 ], [ %1287, %1528 ], [ %993, %1508 ], [ %1287, %1490 ], [ %993, %1475 ], [ %993, %1455 ], [ %1287, %1451 ], [ %1287, %1435 ], [ %993, %1415 ], [ %1287, %1397 ], [ %993, %1382 ], [ %993, %1362 ], [ %1287, %1358 ]
  %2768 = phi i32 [ %967, %2725 ], [ %2734, %2733 ], [ %2714, %2707 ], [ %967, %2703 ], [ %2698, %2692 ], [ %2562, %2561 ], [ %2170, %2169 ], [ %2499, %2530 ], [ %2499, %2523 ], [ %2499, %2514 ], [ %2499, %2507 ], [ %2255, %2449 ], [ %2255, %2442 ], [ %2255, %2433 ], [ %2255, %2426 ], [ %2407, %2406 ], [ %2364, %2395 ], [ %2364, %2388 ], [ %2364, %2379 ], [ %2364, %2372 ], [ %2255, %2314 ], [ %2255, %2307 ], [ %2255, %2298 ], [ %2255, %2291 ], [ %2272, %2271 ], [ %1686, %1685 ], [ %967, %1669 ], [ %1617, %1611 ], [ %967, %1590 ], [ %1597, %1596 ], [ %1586, %1580 ], [ %967, %1559 ], [ %1566, %1565 ], [ %1535, %1528 ], [ %1516, %1508 ], [ %1496, %1490 ], [ %1482, %1475 ], [ %1462, %1455 ], [ %967, %1451 ], [ %1442, %1435 ], [ %1423, %1415 ], [ %1403, %1397 ], [ %1389, %1382 ], [ %1369, %1362 ], [ %967, %1358 ]
  %2769 = phi i32 [ %968, %2725 ], [ %2745, %2733 ], [ %968, %2707 ], [ %968, %2703 ], [ %968, %2692 ], [ %2573, %2561 ], [ %2181, %2169 ], [ %2256, %2530 ], [ %2256, %2523 ], [ %2256, %2514 ], [ %2256, %2507 ], [ %2256, %2449 ], [ %2256, %2442 ], [ %2256, %2433 ], [ %2256, %2426 ], [ %2418, %2406 ], [ %2256, %2395 ], [ %2256, %2388 ], [ %2256, %2379 ], [ %2256, %2372 ], [ %2256, %2314 ], [ %2256, %2307 ], [ %2256, %2298 ], [ %2256, %2291 ], [ %2283, %2271 ], [ %1697, %1685 ], [ %968, %1669 ], [ %968, %1611 ], [ %968, %1590 ], [ %1608, %1596 ], [ %968, %1580 ], [ %968, %1559 ], [ %1577, %1565 ], [ %968, %1528 ], [ %968, %1508 ], [ %968, %1490 ], [ %968, %1475 ], [ %968, %1455 ], [ %968, %1451 ], [ %968, %1435 ], [ %968, %1415 ], [ %968, %1397 ], [ %968, %1382 ], [ %968, %1362 ], [ %968, %1358 ]
  %2770 = load ptr, ptr %8, align 8, !tbaa !46
  %2771 = load ptr, ptr %7, align 8, !tbaa !46
  br label %959

2772:                                             ; preds = %899
  %2773 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %902, i32 %900), !nosanitize !10
  %2774 = extractvalue { i32, i1 } %2773, 1, !nosanitize !10
  br i1 %2774, label %2799, label %2775, !nosanitize !10

2775:                                             ; preds = %2772
  %2776 = extractvalue { i32, i1 } %2773, 0, !nosanitize !10
  %2777 = sext i32 %900 to i64
  %2778 = sub nsw i64 0, %2777
  %2779 = getelementptr inbounds i32, ptr %901, i64 %2778
  br label %2780

2780:                                             ; preds = %2775, %2760, %920
  %2781 = phi ptr [ %2779, %2775 ], [ %915, %920 ], [ %915, %2760 ]
  %2782 = phi i32 [ %2776, %2775 ], [ %922, %920 ], [ %2761, %2760 ]
  %2783 = icmp ult ptr %2781, %149
  br i1 %2783, label %2784, label %2916, !llvm.loop !73

2784:                                             ; preds = %2780, %2752
  %2785 = phi i32 [ %2753, %2752 ], [ %903, %2780 ]
  %2786 = phi i32 [ 0, %2752 ], [ %2782, %2780 ]
  %2787 = phi ptr [ %915, %2752 ], [ %2781, %2780 ]
  %2788 = load i32, ptr %2787, align 4, !tbaa !5
  br label %899

2789:                                             ; preds = %2912
  %2790 = load i32, ptr %2913, align 4, !tbaa !5
  br label %2791

2791:                                             ; preds = %888, %2789
  %2792 = phi i32 [ %2790, %2789 ], [ %889, %888 ]
  %2793 = phi ptr [ %2913, %2789 ], [ %1, %888 ]
  %2794 = phi i32 [ %2914, %2789 ], [ 0, %888 ]
  %2795 = icmp slt i32 %2792, 0
  br i1 %2795, label %2796, label %2805

2796:                                             ; preds = %2791
  %2797 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2794, i32 %2792), !nosanitize !10
  %2798 = extractvalue { i32, i1 } %2797, 1, !nosanitize !10
  br i1 %2798, label %2799, label %2800, !nosanitize !10

2799:                                             ; preds = %2796, %2772, %2749
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2800:                                             ; preds = %2796
  %2801 = extractvalue { i32, i1 } %2797, 0, !nosanitize !10
  %2802 = sext i32 %2792 to i64
  %2803 = sub nsw i64 0, %2802
  %2804 = getelementptr inbounds i32, ptr %2793, i64 %2803
  br label %2912

2805:                                             ; preds = %2791
  %2806 = icmp eq i32 %2794, 0
  br i1 %2806, label %2810, label %2807

2807:                                             ; preds = %2805
  %2808 = sext i32 %2794 to i64
  %2809 = getelementptr inbounds i32, ptr %2793, i64 %2808
  store i32 %2794, ptr %2809, align 4, !tbaa !5
  br label %2810

2810:                                             ; preds = %2807, %2805
  %2811 = zext nneg i32 %2792 to i64
  %2812 = getelementptr inbounds i32, ptr %149, i64 %2811
  %2813 = load i32, ptr %2812, align 4, !tbaa !5
  %2814 = sext i32 %2813 to i64
  %2815 = getelementptr i32, ptr %885, i64 %2814
  %2816 = ptrtoint ptr %2815 to i64
  %2817 = ptrtoint ptr %2793 to i64
  %2818 = sub i64 %2816, %2817
  %2819 = icmp sgt i64 %2818, 4
  br i1 %2819, label %2820, label %2909

2820:                                             ; preds = %2810
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1183, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2821:                                             ; preds = %923
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1187, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2822:                                             ; preds = %947, %938, %931
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2823:                                             ; preds = %988
  br i1 %990, label %2871, label %2876

2824:                                             ; preds = %1934
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2825:                                             ; preds = %2182
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.src, i32 noundef 1192, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2826:                                             ; preds = %2194
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1196, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2827:                                             ; preds = %2215
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1199, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2828:                                             ; preds = %2235
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1204, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2829:                                             ; preds = %2237
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1205, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2830:                                             ; preds = %2317
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1210, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2831:                                             ; preds = %2319
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1210, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2832:                                             ; preds = %2349, %2339, %2331
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2833:                                             ; preds = %2361
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1211, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2834:                                             ; preds = %2388, %2379, %2372
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2835:                                             ; preds = %2284
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1213, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2836:                                             ; preds = %2307, %2298, %2291
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2837:                                             ; preds = %2267
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1215, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2838:                                             ; preds = %2452
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2839:                                             ; preds = %2454
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2840:                                             ; preds = %2484, %2474, %2466
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2841:                                             ; preds = %2496
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.src, i32 noundef 1220, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2842:                                             ; preds = %2523, %2514, %2507
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2843:                                             ; preds = %2419
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1222, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2844:                                             ; preds = %2442, %2433, %2426
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2845:                                             ; preds = %2402
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1224, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2846:                                             ; preds = %2089
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1231, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2847:                                             ; preds = %2107, %2138
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2848:                                             ; preds = %2095
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1120, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #11
  unreachable

2849:                                             ; preds = %2121
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1124, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #11
  unreachable

2850:                                             ; preds = %2153
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1130, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_copy) #11
  unreachable

2851:                                             ; preds = %1952
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.src, i32 noundef 1234, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2852:                                             ; preds = %1970, %2046
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2853:                                             ; preds = %1958
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1144, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #11
  unreachable

2854:                                             ; preds = %1986, %2063
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2855:                                             ; preds = %1996
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1150, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #11
  unreachable

2856:                                             ; preds = %2026
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.src, i32 noundef 1158, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #11
  unreachable

2857:                                             ; preds = %2073
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.src, i32 noundef 1167, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partialcopy) #11
  unreachable

2858:                                             ; preds = %2165
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1236, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2859:                                             ; preds = %2536
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.src, i32 noundef 1241, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2860:                                             ; preds = %2590
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.src, i32 noundef 1246, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2861:                                             ; preds = %2621, %2611, %2603
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2862:                                             ; preds = %2638
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1247, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2863:                                             ; preds = %2656
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1250, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2864:                                             ; preds = %2679, %2672, %2666
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2865:                                             ; preds = %2716, %2675
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2866:                                             ; preds = %2690
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1252, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2867:                                             ; preds = %2705
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1256, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2868:                                             ; preds = %2729
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1267, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2869:                                             ; preds = %2557
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1271, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2870:                                             ; preds = %1885, %1913
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2871:                                             ; preds = %2823
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1284, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2872:                                             ; preds = %1715, %1872
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

2873:                                             ; preds = %1862
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

2874:                                             ; preds = %1852
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

2875:                                             ; preds = %1806
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2876:                                             ; preds = %2823
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 1019, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_pivot) #11
  unreachable

2877:                                             ; preds = %1248
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1300, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2878:                                             ; preds = %1274, %1264, %1256
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2879:                                             ; preds = %1286
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.src, i32 noundef 1303, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2880:                                             ; preds = %1305
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.src, i32 noundef 1304, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2881:                                             ; preds = %1323
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1307, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2882:                                             ; preds = %1339
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2883:                                             ; preds = %1538, %1335
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2884:                                             ; preds = %1371
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1311, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2885:                                             ; preds = %1373
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1312, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2886:                                             ; preds = %1360
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1315, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2887:                                             ; preds = %1406
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1322, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2888:                                             ; preds = %1407
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1323, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2889:                                             ; preds = %1396
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1326, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2890:                                             ; preds = %1425
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1330, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2891:                                             ; preds = %1427
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1331, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2892:                                             ; preds = %1464
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1337, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2893:                                             ; preds = %1466
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1338, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2894:                                             ; preds = %1453
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1341, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2895:                                             ; preds = %1499
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1348, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2896:                                             ; preds = %1500
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1349, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2897:                                             ; preds = %1489
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1352, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2898:                                             ; preds = %1518
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1356, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2899:                                             ; preds = %1520
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1357, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2900:                                             ; preds = %1578
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1365, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2901:                                             ; preds = %1561
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1370, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2902:                                             ; preds = %1609
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 1374, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2903:                                             ; preds = %1592
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1379, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2904:                                             ; preds = %1632
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

2905:                                             ; preds = %1672, %1628
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2906:                                             ; preds = %1659, %1650, %1643
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

2907:                                             ; preds = %1681
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 1388, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_introsort) #11
  unreachable

2908:                                             ; preds = %2755
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.src, i32 noundef 1423, ptr noundef nonnull @__PRETTY_FUNCTION__.trsort) #11
  unreachable

2909:                                             ; preds = %2810
  %2910 = icmp eq i64 %2818, 4
  %2911 = sext i1 %2910 to i32
  br label %2912

2912:                                             ; preds = %2909, %2800
  %2913 = phi ptr [ %2804, %2800 ], [ %2815, %2909 ]
  %2914 = phi i32 [ %2801, %2800 ], [ %2911, %2909 ]
  %2915 = icmp ult ptr %2913, %149
  br i1 %2915, label %2789, label %2916, !llvm.loop !73

2916:                                             ; preds = %2912, %2780
  %2917 = phi ptr [ %2781, %2780 ], [ %2913, %2912 ]
  %2918 = phi i32 [ %2782, %2780 ], [ %2914, %2912 ]
  %2919 = phi i32 [ %903, %2780 ], [ 0, %2912 ]
  %2920 = icmp eq i32 %2918, 0
  br i1 %2920, label %2924, label %2921

2921:                                             ; preds = %2916
  %2922 = sext i32 %2918 to i64
  %2923 = getelementptr inbounds i32, ptr %2917, i64 %2922
  store i32 %2918, ptr %2923, align 4, !tbaa !5
  br label %2924

2924:                                             ; preds = %2752, %2921, %2916
  %2925 = phi i32 [ %2919, %2921 ], [ %2919, %2916 ], [ %2753, %2752 ]
  %2926 = icmp eq i32 %2925, 0
  br i1 %2926, label %2931, label %2927

2927:                                             ; preds = %2924
  %2928 = getelementptr i32, ptr %890, i64 %893
  %2929 = load i32, ptr %1, align 4, !tbaa !5
  %2930 = icmp sgt i32 %2929, %880
  br i1 %2930, label %888, label %2931, !llvm.loop !74

2931:                                             ; preds = %2924, %2927, %877
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  br i1 %14, label %2932, label %2990

2932:                                             ; preds = %2931
  %2933 = load i8, ptr %13, align 1, !tbaa !9
  %2934 = zext i8 %2933 to i32
  br label %2935

2935:                                             ; preds = %2932, %2976
  %2936 = phi i32 [ %2973, %2976 ], [ %2934, %2932 ]
  %2937 = phi i32 [ %2972, %2976 ], [ %11, %2932 ]
  %2938 = phi i32 [ %2983, %2976 ], [ %86, %2932 ]
  %2939 = zext nneg i32 %2937 to i64
  br label %2940

2940:                                             ; preds = %2935, %2945
  %2941 = phi i32 [ %2937, %2935 ], [ %2946, %2945 ]
  %2942 = phi i64 [ %2939, %2935 ], [ %2947, %2945 ]
  %2943 = phi i32 [ %2936, %2935 ], [ %2950, %2945 ]
  %2944 = icmp eq i64 %2942, 0
  br i1 %2944, label %2990, label %2945

2945:                                             ; preds = %2940
  %2946 = add i32 %2941, -1
  %2947 = add nsw i64 %2942, -1
  %2948 = getelementptr inbounds i8, ptr %0, i64 %2947
  %2949 = load i8, ptr %2948, align 1, !tbaa !9
  %2950 = zext i8 %2949 to i32
  %2951 = icmp sgt i32 %2943, %2950
  br i1 %2951, label %2952, label %2940, !llvm.loop !75

2952:                                             ; preds = %2945
  %2953 = trunc i64 %2942 to i32
  %2954 = trunc i64 %2947 to i32
  %2955 = zext i32 %2946 to i64
  br label %2956

2956:                                             ; preds = %2952, %2960
  %2957 = phi i64 [ %2955, %2952 ], [ %2961, %2960 ]
  %2958 = phi i32 [ %2950, %2952 ], [ %2965, %2960 ]
  %2959 = icmp eq i64 %2957, 0
  br i1 %2959, label %2970, label %2960

2960:                                             ; preds = %2956
  %2961 = add nsw i64 %2957, -1
  %2962 = and i64 %2961, 4294967295
  %2963 = getelementptr inbounds i8, ptr %0, i64 %2962
  %2964 = load i8, ptr %2963, align 1, !tbaa !9
  %2965 = zext i8 %2964 to i32
  %2966 = icmp ult i32 %2958, %2965
  br i1 %2966, label %2967, label %2956, !llvm.loop !76

2967:                                             ; preds = %2960
  %2968 = trunc i64 %2957 to i32
  %2969 = trunc i64 %2961 to i32
  br label %2970

2970:                                             ; preds = %2956, %2967
  %2971 = phi i32 [ %2968, %2967 ], [ 0, %2956 ]
  %2972 = phi i32 [ %2969, %2967 ], [ -1, %2956 ]
  %2973 = phi i32 [ %2965, %2967 ], [ %2958, %2956 ]
  %2974 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2938, i32 -1)
  %2975 = extractvalue { i32, i1 } %2974, 1, !nosanitize !10
  br i1 %2975, label %19, label %2976, !nosanitize !10

2976:                                             ; preds = %2970
  %2977 = icmp eq i32 %2954, 0
  %2978 = sub i32 %2953, %2971
  %2979 = icmp sgt i32 %2978, 1
  %2980 = or i1 %2977, %2979
  %2981 = sub nsw i32 0, %2953
  %2982 = select i1 %2980, i32 %2954, i32 %2981
  %2983 = extractvalue { i32, i1 } %2974, 0, !nosanitize !10
  %2984 = sext i32 %2983 to i64
  %2985 = getelementptr inbounds i32, ptr %149, i64 %2984
  %2986 = load i32, ptr %2985, align 4, !tbaa !5
  %2987 = sext i32 %2986 to i64
  %2988 = getelementptr inbounds i32, ptr %1, i64 %2987
  store i32 %2982, ptr %2988, align 4, !tbaa !5
  %2989 = icmp sgt i32 %2972, -1
  br i1 %2989, label %2935, label %2990, !llvm.loop !77

2990:                                             ; preds = %2976, %2940, %2931
  %2991 = getelementptr inbounds i32, ptr %3, i64 65535
  store i32 %4, ptr %2991, align 4, !tbaa !5
  br label %2992

2992:                                             ; preds = %2990, %3062
  %2993 = phi i64 [ 254, %2990 ], [ %3068, %3062 ]
  %2994 = phi i32 [ %183, %2990 ], [ %3045, %3062 ]
  %2995 = trunc i64 %2993 to i32
  %2996 = add nuw nsw i64 %2993, 1
  %2997 = getelementptr inbounds i32, ptr %2, i64 %2996
  %2998 = load i32, ptr %2997, align 4, !tbaa !5
  %2999 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2998, i32 -1)
  %3000 = extractvalue { i32, i1 } %2999, 1, !nosanitize !10
  br i1 %3000, label %19, label %3001, !nosanitize !10

3001:                                             ; preds = %2992
  %3002 = extractvalue { i32, i1 } %2999, 0, !nosanitize !10
  %3003 = trunc i64 %2993 to i32
  %3004 = shl i32 %3003, 8
  br label %3005

3005:                                             ; preds = %3001, %3044
  %3006 = phi i32 [ 255, %3001 ], [ %3047, %3044 ]
  %3007 = phi i32 [ %3002, %3001 ], [ %3046, %3044 ]
  %3008 = phi i32 [ %2994, %3001 ], [ %3045, %3044 ]
  %3009 = shl i32 %3006, 8
  %3010 = or i32 %3009, %2995
  %3011 = sext i32 %3010 to i64
  %3012 = getelementptr inbounds i32, ptr %3, i64 %3011
  %3013 = load i32, ptr %3012, align 4, !tbaa !5
  %3014 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3007, i32 %3013), !nosanitize !10
  %3015 = extractvalue { i32, i1 } %3014, 1, !nosanitize !10
  br i1 %3015, label %19, label %3016, !nosanitize !10

3016:                                             ; preds = %3005
  store i32 %3007, ptr %3012, align 4, !tbaa !5
  %3017 = or i32 %3006, %3004
  %3018 = sext i32 %3017 to i64
  %3019 = getelementptr inbounds i32, ptr %3, i64 %3018
  %3020 = load i32, ptr %3019, align 4, !tbaa !5
  %3021 = extractvalue { i32, i1 } %3014, 0
  %3022 = icmp sgt i32 %3020, %3008
  br i1 %3022, label %3044, label %3023

3023:                                             ; preds = %3016
  %3024 = sext i32 %3021 to i64
  %3025 = sext i32 %3008 to i64
  br label %3026

3026:                                             ; preds = %3023, %3037
  %3027 = phi i64 [ %3025, %3023 ], [ %3038, %3037 ]
  %3028 = phi i64 [ %3024, %3023 ], [ %3040, %3037 ]
  %3029 = getelementptr inbounds i32, ptr %1, i64 %3027
  %3030 = load i32, ptr %3029, align 4, !tbaa !5
  %3031 = getelementptr inbounds i32, ptr %1, i64 %3028
  store i32 %3030, ptr %3031, align 4, !tbaa !5
  %3032 = and i64 %3028, 4294967295
  %3033 = icmp eq i64 %3032, 2147483648
  %3034 = and i64 %3027, 4294967295
  %3035 = icmp eq i64 %3034, 2147483648
  %3036 = or i1 %3033, %3035
  br i1 %3036, label %19, label %3037, !nosanitize !10

3037:                                             ; preds = %3026
  %3038 = add nsw i64 %3027, -1
  %3039 = trunc i64 %3038 to i32
  %3040 = add nsw i64 %3028, -1
  %3041 = icmp sgt i32 %3020, %3039
  br i1 %3041, label %3042, label %3026, !llvm.loop !78

3042:                                             ; preds = %3037
  %3043 = trunc i64 %3040 to i32
  br label %3044

3044:                                             ; preds = %3042, %3016
  %3045 = phi i32 [ %3008, %3016 ], [ %3039, %3042 ]
  %3046 = phi i32 [ %3021, %3016 ], [ %3043, %3042 ]
  %3047 = add nsw i32 %3006, -1
  %3048 = zext i32 %3047 to i64
  %3049 = icmp ult i64 %2993, %3048
  br i1 %3049, label %3005, label %3050, !llvm.loop !79

3050:                                             ; preds = %3044
  %3051 = shl i32 %2995, 8
  %3052 = or i32 %3051, %2995
  %3053 = sext i32 %3052 to i64
  %3054 = getelementptr inbounds i32, ptr %3, i64 %3053
  %3055 = load i32, ptr %3054, align 4, !tbaa !5
  %3056 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3046, i32 %3055), !nosanitize !10
  %3057 = extractvalue { i32, i1 } %3056, 1, !nosanitize !10
  br i1 %3057, label %19, label %3058, !nosanitize !10

3058:                                             ; preds = %3050
  %3059 = extractvalue { i32, i1 } %3056, 0, !nosanitize !10
  %3060 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3059, i32 1), !nosanitize !10
  %3061 = extractvalue { i32, i1 } %3060, 1, !nosanitize !10
  br i1 %3061, label %15, label %3062, !nosanitize !10

3062:                                             ; preds = %3058
  %3063 = extractvalue { i32, i1 } %3060, 0, !nosanitize !10
  %3064 = trunc i64 %2996 to i32
  %3065 = or i32 %3051, %3064
  %3066 = sext i32 %3065 to i64
  %3067 = getelementptr inbounds i32, ptr %3, i64 %3066
  store i32 %3063, ptr %3067, align 4, !tbaa !5
  store i32 %3046, ptr %3054, align 4, !tbaa !5
  %3068 = add nsw i64 %2993, -1
  %3069 = icmp eq i64 %2993, 0
  br i1 %3069, label %3070, label %2992, !llvm.loop !80

3070:                                             ; preds = %3062, %141
  ret i32 %86
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @divbwt(ptr noundef %0, ptr noundef writeonly %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %8, %9
  %11 = icmp slt i32 %3, 0
  %12 = or i1 %10, %11
  br i1 %12, label %724, label %13

13:                                               ; preds = %7
  %14 = icmp ult i32 %3, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = icmp eq i32 %3, 1
  br i1 %16, label %17, label %724

17:                                               ; preds = %15
  %18 = load i8, ptr %0, align 1, !tbaa !9
  store i8 %18, ptr %1, align 1, !tbaa !9
  br label %724

19:                                               ; preds = %13
  %20 = icmp eq ptr %2, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1), !nosanitize !10
  %23 = extractvalue { i32, i1 } %22, 1, !nosanitize !10
  br i1 %23, label %24, label %25, !nosanitize !10

24:                                               ; preds = %716, %623, %21
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

25:                                               ; preds = %21
  %26 = extractvalue { i32, i1 } %22, 0, !nosanitize !10
  %27 = zext nneg i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 2
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #10
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi ptr [ %29, %25 ], [ %2, %19 ]
  %32 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #10
  %33 = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #10
  %34 = icmp ne ptr %31, null
  %35 = icmp ne ptr %32, null
  %36 = and i1 %34, %35
  %37 = icmp ne ptr %33, null
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %721

39:                                               ; preds = %30
  %40 = tail call fastcc i32 @sort_typeBstar(ptr noundef nonnull %0, ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %33, i32 noundef %3)
  %41 = icmp eq ptr %4, null
  %42 = icmp eq ptr %5, null
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %255

44:                                               ; preds = %39
  %45 = icmp sgt i32 %40, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = ptrtoint ptr %31 to i64
  br label %162

48:                                               ; preds = %44
  %49 = getelementptr i32, ptr %31, i64 -1
  %50 = ptrtoint ptr %31 to i64
  br label %51

51:                                               ; preds = %159, %48
  %52 = phi i64 [ 254, %48 ], [ %160, %159 ]
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 8
  %55 = add nuw nsw i64 %52, 1
  %56 = trunc i64 %55 to i32
  %57 = or i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %33, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %31, i64 %61
  %63 = getelementptr inbounds i32, ptr %32, i64 %55
  %64 = load i32, ptr %63, align 4, !tbaa !5
  %65 = sext i32 %64 to i64
  %66 = getelementptr i32, ptr %49, i64 %65
  %67 = icmp ugt ptr %62, %66
  br i1 %67, label %159, label %69

68:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

69:                                               ; preds = %51, %154
  %70 = phi ptr [ %157, %154 ], [ %66, %51 ]
  %71 = phi i32 [ %156, %154 ], [ -1, %51 ]
  %72 = phi ptr [ %155, %154 ], [ null, %51 ]
  %73 = load i32, ptr %70, align 4, !tbaa !5
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %145

75:                                               ; preds = %69
  %76 = zext nneg i32 %73 to i64
  %77 = getelementptr inbounds i8, ptr %0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = zext i8 %78 to i64
  %80 = icmp eq i64 %52, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1694, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

82:                                               ; preds = %75
  %83 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %73, i32 1), !nosanitize !10
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !10
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !10
  br i1 %85, label %68, label %86, !nosanitize !10

86:                                               ; preds = %82
  %87 = icmp slt i32 %84, %3
  br i1 %87, label %88, label %93

88:                                               ; preds = %86
  %89 = sext i32 %84 to i64
  %90 = getelementptr inbounds i8, ptr %0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !9
  %92 = icmp ugt i8 %78, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %86
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.src, i32 noundef 1695, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

94:                                               ; preds = %88
  %95 = add nsw i32 %73, -1
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = zext i8 %98 to i32
  %100 = icmp ugt i8 %98, %78
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.src, i32 noundef 1696, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

102:                                              ; preds = %94
  %103 = xor i32 %99, -1
  store i32 %103, ptr %70, align 4, !tbaa !5
  %104 = icmp eq i32 %73, 1
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = getelementptr i8, ptr %77, i64 -2
  %107 = load i8, ptr %106, align 1, !tbaa !9
  %108 = icmp ugt i8 %107, %98
  %109 = sub nsw i32 0, %73
  %110 = select i1 %108, i32 %109, i32 %95
  br label %111

111:                                              ; preds = %105, %102
  %112 = phi i32 [ 0, %102 ], [ %110, %105 ]
  %113 = icmp eq i32 %71, %99
  br i1 %113, label %135, label %114

114:                                              ; preds = %111
  %115 = icmp sgt i32 %71, -1
  br i1 %115, label %116, label %128

116:                                              ; preds = %114
  %117 = ptrtoint ptr %72 to i64
  %118 = sub i64 %117, %50
  %119 = ashr exact i64 %118, 2
  %120 = add nsw i64 %119, 2147483648
  %121 = icmp ult i64 %120, 4294967296
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1701, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

123:                                              ; preds = %116
  %124 = trunc i64 %119 to i32
  %125 = or i32 %71, %54
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %33, i64 %126
  store i32 %124, ptr %127, align 4, !tbaa !5
  br label %128

128:                                              ; preds = %123, %114
  %129 = or disjoint i32 %54, %99
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, ptr %33, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !5
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, ptr %31, i64 %133
  br label %135

135:                                              ; preds = %128, %111
  %136 = phi ptr [ %134, %128 ], [ %72, %111 ]
  %137 = phi i32 [ %99, %128 ], [ %71, %111 ]
  %138 = icmp ult ptr %136, %70
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.src, i32 noundef 1704, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

140:                                              ; preds = %135
  %141 = icmp eq ptr %136, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %140
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.src, i32 noundef 1704, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

143:                                              ; preds = %140
  %144 = getelementptr inbounds i32, ptr %136, i64 -1
  store i32 %112, ptr %136, align 4, !tbaa !5
  br label %154

145:                                              ; preds = %69
  %146 = icmp eq i32 %73, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %145
  %148 = xor i32 %73, -1
  store i32 %148, ptr %70, align 4, !tbaa !5
  br label %154

149:                                              ; preds = %145
  %150 = load i8, ptr %0, align 1, !tbaa !9
  %151 = zext i8 %150 to i64
  %152 = icmp eq i64 %52, %151
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1710, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

154:                                              ; preds = %149, %147, %143
  %155 = phi ptr [ %144, %143 ], [ %72, %147 ], [ %72, %149 ]
  %156 = phi i32 [ %137, %143 ], [ %71, %147 ], [ %71, %149 ]
  %157 = getelementptr inbounds i32, ptr %70, i64 -1
  %158 = icmp ugt ptr %62, %157
  br i1 %158, label %159, label %69, !llvm.loop !81

159:                                              ; preds = %154, %51
  %160 = add nsw i64 %52, -1
  %161 = icmp eq i64 %52, 0
  br i1 %161, label %162, label %51, !llvm.loop !82

162:                                              ; preds = %159, %46
  %163 = phi i64 [ %47, %46 ], [ %50, %159 ]
  %164 = add i32 %3, -1
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !9
  %168 = zext i8 %167 to i64
  %169 = getelementptr inbounds i32, ptr %32, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !5
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, ptr %31, i64 %171
  %173 = add i32 %3, -2
  %174 = zext nneg i32 %173 to i64
  %175 = getelementptr inbounds i8, ptr %0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !9
  %177 = zext i8 %176 to i32
  %178 = icmp ult i8 %176, %167
  %179 = xor i32 %177, -1
  %180 = select i1 %178, i32 %179, i32 %164
  store i32 %180, ptr %172, align 4, !tbaa !5
  %181 = zext nneg i32 %3 to i64
  %182 = getelementptr inbounds i32, ptr %31, i64 %181
  %183 = getelementptr inbounds i32, ptr %172, i64 1
  %184 = zext i8 %167 to i32
  br label %185

185:                                              ; preds = %242, %162
  %186 = phi i32 [ %184, %162 ], [ %245, %242 ]
  %187 = phi ptr [ %31, %162 ], [ %244, %242 ]
  %188 = phi ptr [ %183, %162 ], [ %243, %242 ]
  %189 = phi ptr [ %31, %162 ], [ %246, %242 ]
  %190 = load i32, ptr %189, align 4, !tbaa !5
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %238

192:                                              ; preds = %185
  %193 = add nsw i32 %190, -1
  %194 = zext nneg i32 %193 to i64
  %195 = getelementptr inbounds i8, ptr %0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !9
  %197 = zext i8 %196 to i32
  %198 = zext nneg i32 %190 to i64
  %199 = getelementptr inbounds i8, ptr %0, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !9
  %201 = icmp ult i8 %196, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.src, i32 noundef 1724, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

203:                                              ; preds = %192
  store i32 %197, ptr %189, align 4, !tbaa !5
  %204 = icmp eq i32 %190, 1
  br i1 %204, label %212, label %205

205:                                              ; preds = %203
  %206 = getelementptr i8, ptr %199, i64 -2
  %207 = load i8, ptr %206, align 1, !tbaa !9
  %208 = icmp ult i8 %207, %196
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = zext i8 %207 to i32
  %211 = xor i32 %210, -1
  br label %212

212:                                              ; preds = %209, %205, %203
  %213 = phi i32 [ %211, %209 ], [ %193, %205 ], [ 0, %203 ]
  %214 = icmp eq i32 %186, %197
  br i1 %214, label %231, label %215

215:                                              ; preds = %212
  %216 = ptrtoint ptr %188 to i64
  %217 = sub i64 %216, %163
  %218 = ashr exact i64 %217, 2
  %219 = add nsw i64 %218, 2147483648
  %220 = icmp ult i64 %219, 4294967296
  br i1 %220, label %222, label %221

221:                                              ; preds = %215
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1729, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

222:                                              ; preds = %215
  %223 = trunc i64 %218 to i32
  %224 = zext nneg i32 %186 to i64
  %225 = getelementptr inbounds i32, ptr %32, i64 %224
  store i32 %223, ptr %225, align 4, !tbaa !5
  %226 = zext i8 %196 to i64
  %227 = getelementptr inbounds i32, ptr %32, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !5
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, ptr %31, i64 %229
  br label %231

231:                                              ; preds = %222, %212
  %232 = phi ptr [ %230, %222 ], [ %188, %212 ]
  %233 = phi i32 [ %197, %222 ], [ %186, %212 ]
  %234 = icmp ult ptr %189, %232
  br i1 %234, label %236, label %235

235:                                              ; preds = %231
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.src, i32 noundef 1732, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

236:                                              ; preds = %231
  %237 = getelementptr inbounds i32, ptr %232, i64 1
  store i32 %213, ptr %232, align 4, !tbaa !5
  br label %242

238:                                              ; preds = %185
  %239 = icmp eq i32 %190, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %238
  %241 = xor i32 %190, -1
  store i32 %241, ptr %189, align 4, !tbaa !5
  br label %242

242:                                              ; preds = %240, %238, %236
  %243 = phi ptr [ %237, %236 ], [ %188, %240 ], [ %188, %238 ]
  %244 = phi ptr [ %187, %236 ], [ %187, %240 ], [ %189, %238 ]
  %245 = phi i32 [ %233, %236 ], [ %186, %240 ], [ %186, %238 ]
  %246 = getelementptr inbounds i32, ptr %189, i64 1
  %247 = icmp ult ptr %246, %182
  br i1 %247, label %185, label %248, !llvm.loop !83

248:                                              ; preds = %242
  %249 = ptrtoint ptr %244 to i64
  %250 = sub i64 %249, %163
  %251 = ashr exact i64 %250, 2
  %252 = add nsw i64 %251, 2147483648
  %253 = icmp ult i64 %252, 4294967296
  br i1 %253, label %543, label %254

254:                                              ; preds = %248
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.src, i32 noundef 1741, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT) #11
  unreachable

255:                                              ; preds = %39
  %256 = lshr i32 %3, 3
  %257 = lshr i32 %3, 4
  %258 = or i32 %256, %257
  %259 = lshr i32 %258, 2
  %260 = or i32 %259, %258
  %261 = lshr i32 %260, 4
  %262 = or i32 %261, %260
  %263 = lshr i32 %262, 8
  %264 = or i32 %263, %262
  %265 = lshr i32 %264, 17
  %266 = lshr i32 %264, 1
  %267 = or i32 %265, %266
  %268 = add nsw i32 %3, -1
  %269 = add nuw nsw i32 %267, 1
  %270 = udiv i32 %268, %269
  %271 = trunc i32 %270 to i8
  store i8 %271, ptr %4, align 1, !tbaa !9
  %272 = icmp sgt i32 %40, 0
  br i1 %272, label %273, label %405

273:                                              ; preds = %255
  %274 = getelementptr i32, ptr %5, i64 -1
  %275 = getelementptr i32, ptr %31, i64 -1
  %276 = ptrtoint ptr %31 to i64
  br label %278

277:                                              ; preds = %308
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

278:                                              ; preds = %402, %273
  %279 = phi i64 [ 254, %273 ], [ %403, %402 ]
  %280 = trunc i64 %279 to i32
  %281 = shl i32 %280, 8
  %282 = add nuw nsw i64 %279, 1
  %283 = trunc i64 %282 to i32
  %284 = or i32 %281, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, ptr %33, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !5
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, ptr %31, i64 %288
  %290 = getelementptr inbounds i32, ptr %32, i64 %282
  %291 = load i32, ptr %290, align 4, !tbaa !5
  %292 = sext i32 %291 to i64
  %293 = getelementptr i32, ptr %275, i64 %292
  %294 = icmp ugt ptr %289, %293
  br i1 %294, label %402, label %295

295:                                              ; preds = %278, %397
  %296 = phi ptr [ %400, %397 ], [ %293, %278 ]
  %297 = phi i32 [ %399, %397 ], [ -1, %278 ]
  %298 = phi ptr [ %398, %397 ], [ null, %278 ]
  %299 = load i32, ptr %296, align 4, !tbaa !5
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %388

301:                                              ; preds = %295
  %302 = zext nneg i32 %299 to i64
  %303 = getelementptr inbounds i8, ptr %0, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !9
  %305 = zext i8 %304 to i64
  %306 = icmp eq i64 %279, %305
  br i1 %306, label %308, label %307

307:                                              ; preds = %301
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1775, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

308:                                              ; preds = %301
  %309 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %299, i32 1), !nosanitize !10
  %310 = extractvalue { i32, i1 } %309, 0, !nosanitize !10
  %311 = extractvalue { i32, i1 } %309, 1, !nosanitize !10
  br i1 %311, label %277, label %312, !nosanitize !10

312:                                              ; preds = %308
  %313 = icmp slt i32 %310, %3
  br i1 %313, label %314, label %319

314:                                              ; preds = %312
  %315 = sext i32 %310 to i64
  %316 = getelementptr inbounds i8, ptr %0, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !9
  %318 = icmp ugt i8 %304, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %314, %312
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.src, i32 noundef 1776, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

320:                                              ; preds = %314
  %321 = add nsw i32 %299, -1
  %322 = zext nneg i32 %321 to i64
  %323 = getelementptr inbounds i8, ptr %0, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !9
  %325 = icmp ugt i8 %324, %304
  br i1 %325, label %326, label %327

326:                                              ; preds = %320
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.src, i32 noundef 1777, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

327:                                              ; preds = %320
  %328 = and i32 %299, %267
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %343

330:                                              ; preds = %327
  %331 = ptrtoint ptr %296 to i64
  %332 = sub i64 %331, %276
  %333 = ashr exact i64 %332, 2
  %334 = add nsw i64 %333, 2147483648
  %335 = icmp ult i64 %334, 4294967296
  br i1 %335, label %337, label %336

336:                                              ; preds = %330
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.src, i32 noundef 1779, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

337:                                              ; preds = %330
  %338 = trunc i64 %333 to i32
  %339 = udiv i32 %299, %269
  %340 = zext nneg i32 %339 to i64
  %341 = getelementptr i32, ptr %274, i64 %340
  store i32 %338, ptr %341, align 4, !tbaa !5
  %342 = load i8, ptr %323, align 1, !tbaa !9
  br label %343

343:                                              ; preds = %337, %327
  %344 = phi i8 [ %324, %327 ], [ %342, %337 ]
  %345 = zext i8 %344 to i32
  %346 = xor i32 %345, -1
  store i32 %346, ptr %296, align 4, !tbaa !5
  %347 = icmp eq i32 %299, 1
  br i1 %347, label %354, label %348

348:                                              ; preds = %343
  %349 = getelementptr i8, ptr %303, i64 -2
  %350 = load i8, ptr %349, align 1, !tbaa !9
  %351 = icmp ugt i8 %350, %344
  %352 = sub nsw i32 0, %299
  %353 = select i1 %351, i32 %352, i32 %321
  br label %354

354:                                              ; preds = %348, %343
  %355 = phi i32 [ 0, %343 ], [ %353, %348 ]
  %356 = icmp eq i32 %297, %345
  br i1 %356, label %378, label %357

357:                                              ; preds = %354
  %358 = icmp sgt i32 %297, -1
  br i1 %358, label %359, label %371

359:                                              ; preds = %357
  %360 = ptrtoint ptr %298 to i64
  %361 = sub i64 %360, %276
  %362 = ashr exact i64 %361, 2
  %363 = add nsw i64 %362, 2147483648
  %364 = icmp ult i64 %363, 4294967296
  br i1 %364, label %366, label %365

365:                                              ; preds = %359
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1785, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

366:                                              ; preds = %359
  %367 = trunc i64 %362 to i32
  %368 = or i32 %297, %281
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, ptr %33, i64 %369
  store i32 %367, ptr %370, align 4, !tbaa !5
  br label %371

371:                                              ; preds = %366, %357
  %372 = or disjoint i32 %281, %345
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, ptr %33, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !5
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, ptr %31, i64 %376
  br label %378

378:                                              ; preds = %371, %354
  %379 = phi ptr [ %377, %371 ], [ %298, %354 ]
  %380 = phi i32 [ %345, %371 ], [ %297, %354 ]
  %381 = icmp ult ptr %379, %296
  br i1 %381, label %383, label %382

382:                                              ; preds = %378
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.src, i32 noundef 1788, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

383:                                              ; preds = %378
  %384 = icmp eq ptr %379, null
  br i1 %384, label %385, label %386

385:                                              ; preds = %383
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.src, i32 noundef 1788, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

386:                                              ; preds = %383
  %387 = getelementptr inbounds i32, ptr %379, i64 -1
  store i32 %355, ptr %379, align 4, !tbaa !5
  br label %397

388:                                              ; preds = %295
  %389 = icmp eq i32 %299, 0
  br i1 %389, label %392, label %390

390:                                              ; preds = %388
  %391 = xor i32 %299, -1
  store i32 %391, ptr %296, align 4, !tbaa !5
  br label %397

392:                                              ; preds = %388
  %393 = load i8, ptr %0, align 1, !tbaa !9
  %394 = zext i8 %393 to i64
  %395 = icmp eq i64 %279, %394
  br i1 %395, label %397, label %396

396:                                              ; preds = %392
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.src, i32 noundef 1794, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

397:                                              ; preds = %392, %390, %386
  %398 = phi ptr [ %387, %386 ], [ %298, %390 ], [ %298, %392 ]
  %399 = phi i32 [ %380, %386 ], [ %297, %390 ], [ %297, %392 ]
  %400 = getelementptr inbounds i32, ptr %296, i64 -1
  %401 = icmp ugt ptr %289, %400
  br i1 %401, label %402, label %295, !llvm.loop !84

402:                                              ; preds = %397, %278
  %403 = add nsw i64 %279, -1
  %404 = icmp eq i64 %279, 0
  br i1 %404, label %405, label %278, !llvm.loop !85

405:                                              ; preds = %402, %255
  %406 = zext nneg i32 %268 to i64
  %407 = getelementptr inbounds i8, ptr %0, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !9
  %409 = zext i8 %408 to i32
  %410 = zext i8 %408 to i64
  %411 = getelementptr inbounds i32, ptr %32, i64 %410
  %412 = load i32, ptr %411, align 4, !tbaa !5
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, ptr %31, i64 %413
  %415 = add i32 %3, -2
  %416 = zext nneg i32 %415 to i64
  %417 = getelementptr inbounds i8, ptr %0, i64 %416
  %418 = load i8, ptr %417, align 1, !tbaa !9
  %419 = icmp ult i8 %418, %408
  br i1 %419, label %420, label %432

420:                                              ; preds = %405
  %421 = and i32 %267, %268
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %420
  %424 = add i32 %270, -1
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, ptr %5, i64 %425
  store i32 %412, ptr %426, align 4, !tbaa !5
  %427 = load i8, ptr %417, align 1, !tbaa !9
  br label %428

428:                                              ; preds = %423, %420
  %429 = phi i8 [ %418, %420 ], [ %427, %423 ]
  %430 = zext i8 %429 to i32
  %431 = xor i32 %430, -1
  br label %432

432:                                              ; preds = %405, %428
  %433 = phi i32 [ %431, %428 ], [ %268, %405 ]
  store i32 %433, ptr %414, align 4, !tbaa !5
  %434 = zext nneg i32 %3 to i64
  %435 = getelementptr inbounds i32, ptr %31, i64 %434
  %436 = getelementptr i32, ptr %5, i64 -1
  %437 = getelementptr inbounds i32, ptr %414, i64 1
  %438 = ptrtoint ptr %31 to i64
  br label %439

439:                                              ; preds = %530, %432
  %440 = phi i32 [ %409, %432 ], [ %533, %530 ]
  %441 = phi ptr [ %31, %432 ], [ %532, %530 ]
  %442 = phi ptr [ %437, %432 ], [ %531, %530 ]
  %443 = phi ptr [ %31, %432 ], [ %534, %530 ]
  %444 = load i32, ptr %443, align 4, !tbaa !5
  %445 = icmp sgt i32 %444, 0
  br i1 %445, label %446, label %526

446:                                              ; preds = %439
  %447 = add nsw i32 %444, -1
  %448 = zext nneg i32 %447 to i64
  %449 = getelementptr inbounds i8, ptr %0, i64 %448
  %450 = load i8, ptr %449, align 1, !tbaa !9
  %451 = zext nneg i32 %444 to i64
  %452 = getelementptr inbounds i8, ptr %0, i64 %451
  %453 = load i8, ptr %452, align 1, !tbaa !9
  %454 = icmp ult i8 %450, %453
  br i1 %454, label %455, label %456

455:                                              ; preds = %446
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.src, i32 noundef 1815, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

456:                                              ; preds = %446
  %457 = and i32 %444, %267
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %472

459:                                              ; preds = %456
  %460 = ptrtoint ptr %443 to i64
  %461 = sub i64 %460, %438
  %462 = ashr exact i64 %461, 2
  %463 = add nsw i64 %462, 2147483648
  %464 = icmp ult i64 %463, 4294967296
  br i1 %464, label %466, label %465

465:                                              ; preds = %459
  tail call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.src, i32 noundef 1817, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

466:                                              ; preds = %459
  %467 = trunc i64 %462 to i32
  %468 = udiv i32 %444, %269
  %469 = zext nneg i32 %468 to i64
  %470 = getelementptr i32, ptr %436, i64 %469
  store i32 %467, ptr %470, align 4, !tbaa !5
  %471 = load i8, ptr %449, align 1, !tbaa !9
  br label %472

472:                                              ; preds = %466, %456
  %473 = phi i8 [ %450, %456 ], [ %471, %466 ]
  %474 = zext i8 %473 to i32
  store i32 %474, ptr %443, align 4, !tbaa !5
  %475 = icmp eq i32 %440, %474
  br i1 %475, label %492, label %476

476:                                              ; preds = %472
  %477 = ptrtoint ptr %442 to i64
  %478 = sub i64 %477, %438
  %479 = ashr exact i64 %478, 2
  %480 = add nsw i64 %479, 2147483648
  %481 = icmp ult i64 %480, 4294967296
  br i1 %481, label %483, label %482

482:                                              ; preds = %476
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1822, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

483:                                              ; preds = %476
  %484 = trunc i64 %479 to i32
  %485 = zext nneg i32 %440 to i64
  %486 = getelementptr inbounds i32, ptr %32, i64 %485
  store i32 %484, ptr %486, align 4, !tbaa !5
  %487 = zext i8 %473 to i64
  %488 = getelementptr inbounds i32, ptr %32, i64 %487
  %489 = load i32, ptr %488, align 4, !tbaa !5
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, ptr %31, i64 %490
  br label %492

492:                                              ; preds = %483, %472
  %493 = phi ptr [ %491, %483 ], [ %442, %472 ]
  %494 = phi i32 [ %474, %483 ], [ %440, %472 ]
  %495 = icmp ult ptr %443, %493
  br i1 %495, label %497, label %496

496:                                              ; preds = %492
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.src, i32 noundef 1825, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

497:                                              ; preds = %492
  %498 = icmp eq i32 %444, 1
  br i1 %498, label %524, label %499

499:                                              ; preds = %497
  %500 = getelementptr i8, ptr %452, i64 -2
  %501 = load i8, ptr %500, align 1, !tbaa !9
  %502 = icmp ult i8 %501, %473
  br i1 %502, label %503, label %524

503:                                              ; preds = %499
  %504 = and i32 %447, %267
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %519

506:                                              ; preds = %503
  %507 = ptrtoint ptr %493 to i64
  %508 = sub i64 %507, %438
  %509 = ashr exact i64 %508, 2
  %510 = add nsw i64 %509, 2147483648
  %511 = icmp ult i64 %510, 4294967296
  br i1 %511, label %513, label %512

512:                                              ; preds = %506
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.src, i32 noundef 1827, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

513:                                              ; preds = %506
  %514 = trunc i64 %509 to i32
  %515 = udiv i32 %447, %269
  %516 = zext nneg i32 %515 to i64
  %517 = getelementptr i32, ptr %436, i64 %516
  store i32 %514, ptr %517, align 4, !tbaa !5
  %518 = load i8, ptr %500, align 1, !tbaa !9
  br label %519

519:                                              ; preds = %513, %503
  %520 = phi i8 [ %501, %503 ], [ %518, %513 ]
  %521 = zext i8 %520 to i32
  %522 = xor i32 %521, -1
  %523 = getelementptr inbounds i32, ptr %493, i64 1
  store i32 %522, ptr %493, align 4, !tbaa !5
  br label %530

524:                                              ; preds = %499, %497
  %525 = getelementptr inbounds i32, ptr %493, i64 1
  store i32 %447, ptr %493, align 4, !tbaa !5
  br label %530

526:                                              ; preds = %439
  %527 = icmp eq i32 %444, 0
  br i1 %527, label %530, label %528

528:                                              ; preds = %526
  %529 = xor i32 %444, -1
  store i32 %529, ptr %443, align 4, !tbaa !5
  br label %530

530:                                              ; preds = %528, %526, %524, %519
  %531 = phi ptr [ %523, %519 ], [ %525, %524 ], [ %442, %528 ], [ %442, %526 ]
  %532 = phi ptr [ %441, %519 ], [ %441, %524 ], [ %441, %528 ], [ %443, %526 ]
  %533 = phi i32 [ %494, %519 ], [ %494, %524 ], [ %440, %528 ], [ %440, %526 ]
  %534 = getelementptr inbounds i32, ptr %443, i64 1
  %535 = icmp ult ptr %534, %435
  br i1 %535, label %439, label %536, !llvm.loop !86

536:                                              ; preds = %530
  %537 = ptrtoint ptr %532 to i64
  %538 = sub i64 %537, %438
  %539 = ashr exact i64 %538, 2
  %540 = add nsw i64 %539, 2147483648
  %541 = icmp ult i64 %540, 4294967296
  br i1 %541, label %543, label %542

542:                                              ; preds = %536
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.src, i32 noundef 1838, ptr noundef nonnull @__PRETTY_FUNCTION__.construct_BWT_indexes) #11
  unreachable

543:                                              ; preds = %536, %248
  %544 = phi i64 [ %434, %536 ], [ %181, %248 ]
  %545 = phi i64 [ %539, %536 ], [ %251, %248 ]
  %546 = trunc i64 %545 to i32
  %547 = getelementptr i8, ptr %0, i64 %544
  %548 = getelementptr i8, ptr %547, i64 -1
  %549 = load i8, ptr %548, align 1, !tbaa !9
  store i8 %549, ptr %1, align 1, !tbaa !9
  %550 = icmp sgt i32 %546, 0
  br i1 %550, label %551, label %623

551:                                              ; preds = %543
  %552 = and i64 %545, 4294967295
  %553 = icmp ult i64 %552, 16
  br i1 %553, label %581, label %554

554:                                              ; preds = %551
  %555 = getelementptr i8, ptr %1, i64 1
  %556 = getelementptr i8, ptr %1, i64 %552
  %557 = getelementptr i8, ptr %556, i64 1
  %558 = shl nuw nsw i64 %552, 2
  %559 = getelementptr i8, ptr %31, i64 %558
  %560 = icmp ult ptr %555, %559
  %561 = icmp ult ptr %31, %557
  %562 = and i1 %560, %561
  br i1 %562, label %581, label %563

563:                                              ; preds = %554
  %564 = and i64 %545, 7
  %565 = sub nsw i64 %552, %564
  br label %566

566:                                              ; preds = %566, %563
  %567 = phi i64 [ 0, %563 ], [ %577, %566 ]
  %568 = or disjoint i64 %567, 1
  %569 = getelementptr inbounds i32, ptr %31, i64 %567
  %570 = getelementptr inbounds i32, ptr %569, i64 4
  %571 = load <4 x i32>, ptr %569, align 4, !tbaa !5, !alias.scope !87
  %572 = load <4 x i32>, ptr %570, align 4, !tbaa !5, !alias.scope !87
  %573 = trunc <4 x i32> %571 to <4 x i8>
  %574 = trunc <4 x i32> %572 to <4 x i8>
  %575 = getelementptr inbounds i8, ptr %1, i64 %568
  %576 = getelementptr inbounds i8, ptr %575, i64 4
  store <4 x i8> %573, ptr %575, align 1, !tbaa !9, !alias.scope !90, !noalias !87
  store <4 x i8> %574, ptr %576, align 1, !tbaa !9, !alias.scope !90, !noalias !87
  %577 = add nuw i64 %567, 8
  %578 = icmp eq i64 %577, %565
  br i1 %578, label %579, label %566, !llvm.loop !92

579:                                              ; preds = %566
  %580 = icmp eq i64 %564, 0
  br i1 %580, label %623, label %581

581:                                              ; preds = %554, %551, %579
  %582 = phi i64 [ 0, %554 ], [ 0, %551 ], [ %565, %579 ]
  %583 = sub nsw i64 %545, %582
  %584 = and i64 %583, 3
  %585 = icmp eq i64 %584, 0
  br i1 %585, label %596, label %586

586:                                              ; preds = %581, %586
  %587 = phi i64 [ %589, %586 ], [ %582, %581 ]
  %588 = phi i64 [ %594, %586 ], [ 0, %581 ]
  %589 = add nuw nsw i64 %587, 1
  %590 = getelementptr inbounds i32, ptr %31, i64 %587
  %591 = load i32, ptr %590, align 4, !tbaa !5
  %592 = trunc i32 %591 to i8
  %593 = getelementptr inbounds i8, ptr %1, i64 %589
  store i8 %592, ptr %593, align 1, !tbaa !9
  %594 = add i64 %588, 1
  %595 = icmp eq i64 %594, %584
  br i1 %595, label %596, label %586, !llvm.loop !93

596:                                              ; preds = %586, %581
  %597 = phi i64 [ %582, %581 ], [ %589, %586 ]
  %598 = sub nsw i64 %582, %552
  %599 = icmp ugt i64 %598, -4
  br i1 %599, label %623, label %600

600:                                              ; preds = %596, %600
  %601 = phi i64 [ %617, %600 ], [ %597, %596 ]
  %602 = add nuw nsw i64 %601, 1
  %603 = getelementptr inbounds i32, ptr %31, i64 %601
  %604 = load i32, ptr %603, align 4, !tbaa !5
  %605 = trunc i32 %604 to i8
  %606 = getelementptr inbounds i8, ptr %1, i64 %602
  store i8 %605, ptr %606, align 1, !tbaa !9
  %607 = add nuw nsw i64 %601, 2
  %608 = getelementptr inbounds i32, ptr %31, i64 %602
  %609 = load i32, ptr %608, align 4, !tbaa !5
  %610 = trunc i32 %609 to i8
  %611 = getelementptr inbounds i8, ptr %1, i64 %607
  store i8 %610, ptr %611, align 1, !tbaa !9
  %612 = add nuw nsw i64 %601, 3
  %613 = getelementptr inbounds i32, ptr %31, i64 %607
  %614 = load i32, ptr %613, align 4, !tbaa !5
  %615 = trunc i32 %614 to i8
  %616 = getelementptr inbounds i8, ptr %1, i64 %612
  store i8 %615, ptr %616, align 1, !tbaa !9
  %617 = add nuw nsw i64 %601, 4
  %618 = getelementptr inbounds i32, ptr %31, i64 %612
  %619 = load i32, ptr %618, align 4, !tbaa !5
  %620 = trunc i32 %619 to i8
  %621 = getelementptr inbounds i8, ptr %1, i64 %617
  store i8 %620, ptr %621, align 1, !tbaa !9
  %622 = icmp eq i64 %617, %552
  br i1 %622, label %623, label %600, !llvm.loop !95

623:                                              ; preds = %596, %600, %579, %543
  %624 = phi i32 [ 0, %543 ], [ %546, %579 ], [ %546, %600 ], [ %546, %596 ]
  %625 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %624, i32 1), !nosanitize !10
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !10
  br i1 %626, label %24, label %627, !nosanitize !10

627:                                              ; preds = %623
  %628 = extractvalue { i32, i1 } %625, 0
  %629 = icmp slt i32 %628, %3
  br i1 %629, label %630, label %716

630:                                              ; preds = %627
  %631 = sext i32 %628 to i64
  %632 = add i32 %3, -2
  %633 = sub i32 %632, %624
  %634 = zext i32 %633 to i64
  %635 = add nuw nsw i64 %634, 1
  %636 = icmp ult i32 %633, 27
  br i1 %636, label %672, label %637

637:                                              ; preds = %630
  %638 = getelementptr i8, ptr %1, i64 %631
  %639 = add i32 %3, -2
  %640 = sub i32 %639, %624
  %641 = zext i32 %640 to i64
  %642 = getelementptr i8, ptr %1, i64 %631
  %643 = getelementptr i8, ptr %642, i64 %641
  %644 = getelementptr i8, ptr %643, i64 1
  %645 = shl nsw i64 %631, 2
  %646 = getelementptr i8, ptr %31, i64 %645
  %647 = add nsw i64 %631, %641
  %648 = shl nsw i64 %647, 2
  %649 = add nsw i64 %648, 4
  %650 = getelementptr i8, ptr %31, i64 %649
  %651 = icmp ult ptr %638, %650
  %652 = icmp ult ptr %646, %644
  %653 = and i1 %651, %652
  br i1 %653, label %672, label %654

654:                                              ; preds = %637
  %655 = and i64 %635, 8589934584
  %656 = add nsw i64 %655, %631
  br label %657

657:                                              ; preds = %657, %654
  %658 = phi i64 [ 0, %654 ], [ %668, %657 ]
  %659 = add i64 %658, %631
  %660 = getelementptr inbounds i32, ptr %31, i64 %659
  %661 = getelementptr inbounds i32, ptr %660, i64 4
  %662 = load <4 x i32>, ptr %660, align 4, !tbaa !5, !alias.scope !96
  %663 = load <4 x i32>, ptr %661, align 4, !tbaa !5, !alias.scope !96
  %664 = trunc <4 x i32> %662 to <4 x i8>
  %665 = trunc <4 x i32> %663 to <4 x i8>
  %666 = getelementptr inbounds i8, ptr %1, i64 %659
  %667 = getelementptr inbounds i8, ptr %666, i64 4
  store <4 x i8> %664, ptr %666, align 1, !tbaa !9, !alias.scope !99, !noalias !96
  store <4 x i8> %665, ptr %667, align 1, !tbaa !9, !alias.scope !99, !noalias !96
  %668 = add nuw i64 %658, 8
  %669 = icmp eq i64 %668, %655
  br i1 %669, label %670, label %657, !llvm.loop !101

670:                                              ; preds = %657
  %671 = icmp eq i64 %635, %655
  br i1 %671, label %716, label %672

672:                                              ; preds = %637, %630, %670
  %673 = phi i64 [ %631, %637 ], [ %631, %630 ], [ %656, %670 ]
  %674 = trunc i64 %673 to i32
  %675 = sub i32 %3, %674
  %676 = and i32 %675, 3
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %688, label %678

678:                                              ; preds = %672, %678
  %679 = phi i64 [ %685, %678 ], [ %673, %672 ]
  %680 = phi i32 [ %686, %678 ], [ 0, %672 ]
  %681 = getelementptr inbounds i32, ptr %31, i64 %679
  %682 = load i32, ptr %681, align 4, !tbaa !5
  %683 = trunc i32 %682 to i8
  %684 = getelementptr inbounds i8, ptr %1, i64 %679
  store i8 %683, ptr %684, align 1, !tbaa !9
  %685 = add nsw i64 %679, 1
  %686 = add i32 %680, 1
  %687 = icmp eq i32 %686, %676
  br i1 %687, label %688, label %678, !llvm.loop !102

688:                                              ; preds = %678, %672
  %689 = phi i64 [ %673, %672 ], [ %685, %678 ]
  %690 = sub i32 %674, %3
  %691 = icmp ugt i32 %690, -4
  br i1 %691, label %716, label %692

692:                                              ; preds = %688, %692
  %693 = phi i64 [ %713, %692 ], [ %689, %688 ]
  %694 = getelementptr inbounds i32, ptr %31, i64 %693
  %695 = load i32, ptr %694, align 4, !tbaa !5
  %696 = trunc i32 %695 to i8
  %697 = getelementptr inbounds i8, ptr %1, i64 %693
  store i8 %696, ptr %697, align 1, !tbaa !9
  %698 = add nsw i64 %693, 1
  %699 = getelementptr inbounds i32, ptr %31, i64 %698
  %700 = load i32, ptr %699, align 4, !tbaa !5
  %701 = trunc i32 %700 to i8
  %702 = getelementptr inbounds i8, ptr %1, i64 %698
  store i8 %701, ptr %702, align 1, !tbaa !9
  %703 = add nsw i64 %693, 2
  %704 = getelementptr inbounds i32, ptr %31, i64 %703
  %705 = load i32, ptr %704, align 4, !tbaa !5
  %706 = trunc i32 %705 to i8
  %707 = getelementptr inbounds i8, ptr %1, i64 %703
  store i8 %706, ptr %707, align 1, !tbaa !9
  %708 = add nsw i64 %693, 3
  %709 = getelementptr inbounds i32, ptr %31, i64 %708
  %710 = load i32, ptr %709, align 4, !tbaa !5
  %711 = trunc i32 %710 to i8
  %712 = getelementptr inbounds i8, ptr %1, i64 %708
  store i8 %711, ptr %712, align 1, !tbaa !9
  %713 = add nsw i64 %693, 4
  %714 = trunc i64 %713 to i32
  %715 = icmp eq i32 %714, %3
  br i1 %715, label %716, label %692, !llvm.loop !103

716:                                              ; preds = %688, %692, %670, %627
  %717 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %546, i32 1), !nosanitize !10
  %718 = extractvalue { i32, i1 } %717, 1, !nosanitize !10
  br i1 %718, label %24, label %719, !nosanitize !10

719:                                              ; preds = %716
  %720 = extractvalue { i32, i1 } %717, 0, !nosanitize !10
  br label %721

721:                                              ; preds = %30, %719
  %722 = phi i32 [ %720, %719 ], [ -2, %30 ]
  tail call void @free(ptr noundef %33) #12
  tail call void @free(ptr noundef %32) #12
  br i1 %20, label %723, label %724

723:                                              ; preds = %721
  tail call void @free(ptr noundef %31) #12
  br label %724

724:                                              ; preds = %721, %723, %15, %17, %7
  %725 = phi i32 [ -1, %7 ], [ 1, %17 ], [ 0, %15 ], [ %722, %723 ], [ %722, %721 ]
  ret i32 %725
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @ss_mintrosort(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [16 x %struct.anon], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %5) #12
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = add nsw i64 %9, 2147483648
  %11 = icmp ult i64 %10, 4294967296
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 411, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

13:                                               ; preds = %4
  %14 = and i64 %8, 261120
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = lshr i64 %9, 8
  %18 = and i64 %17, 255
  %19 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 8), !nosanitize !10
  %22 = extractvalue { i32, i1 } %21, 0, !nosanitize !10
  %23 = extractvalue { i32, i1 } %21, 1, !nosanitize !10
  br i1 %23, label %24, label %29, !nosanitize !10

24:                                               ; preds = %16
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

25:                                               ; preds = %13
  %26 = and i64 %9, 255
  %27 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %16, %25
  %30 = phi i32 [ %22, %16 ], [ %28, %25 ]
  %31 = getelementptr i8, ptr %0, i64 2
  br label %32

32:                                               ; preds = %1766, %29
  %33 = phi ptr [ %3, %29 ], [ %1767, %1766 ]
  %34 = phi i32 [ 2, %29 ], [ %1768, %1766 ]
  %35 = phi ptr [ %2, %29 ], [ %1769, %1766 ]
  %36 = phi i32 [ 0, %29 ], [ %1770, %1766 ]
  %37 = phi i32 [ %30, %29 ], [ %1771, %1766 ]
  %38 = ptrtoint ptr %33 to i64
  %39 = ptrtoint ptr %35 to i64
  %40 = sub i64 %38, %39
  %41 = ashr exact i64 %40, 2
  %42 = icmp slt i64 %41, 9
  br i1 %42, label %43, label %163

43:                                               ; preds = %32
  %44 = zext i32 %36 to i64
  br label %45

45:                                               ; preds = %43, %146
  %46 = phi i64 [ %44, %43 ], [ %147, %146 ]
  %47 = phi i64 [ %41, %43 ], [ %157, %146 ]
  %48 = phi ptr [ %35, %43 ], [ %149, %146 ]
  %49 = phi i32 [ %34, %43 ], [ %153, %146 ]
  %50 = phi ptr [ %33, %43 ], [ %151, %146 ]
  %51 = icmp sgt i64 %47, 1
  br i1 %51, label %52, label %138

52:                                               ; preds = %45
  %53 = getelementptr inbounds i32, ptr %50, i64 -2
  %54 = icmp ult ptr %53, %48
  br i1 %54, label %138, label %55

55:                                               ; preds = %52
  %56 = sext i32 %49 to i64
  %57 = getelementptr inbounds i8, ptr %0, i64 %56
  br label %58

58:                                               ; preds = %133, %55
  %59 = phi ptr [ %53, %55 ], [ %136, %133 ]
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = getelementptr inbounds i32, ptr %59, i64 1
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, ptr %1, i64 %62
  %64 = getelementptr i8, ptr %63, i64 4
  %65 = load i32, ptr %61, align 4, !tbaa !5
  br label %67

66:                                               ; preds = %125
  br label %67, !llvm.loop !104

67:                                               ; preds = %66, %58
  %68 = phi i32 [ %65, %58 ], [ %126, %66 ]
  %69 = phi ptr [ %61, %58 ], [ %123, %66 ]
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, ptr %1, i64 %70
  %72 = load i32, ptr %63, align 4, !tbaa !5
  %73 = load i32, ptr %64, align 4, !tbaa !5
  %74 = load i32, ptr %71, align 4, !tbaa !5
  %75 = getelementptr i8, ptr %71, i64 4
  %76 = load i32, ptr %75, align 4, !tbaa !5
  %77 = sext i32 %72 to i64
  %78 = getelementptr inbounds i8, ptr %57, i64 %77
  %79 = sext i32 %74 to i64
  %80 = getelementptr inbounds i8, ptr %57, i64 %79
  %81 = sext i32 %73 to i64
  %82 = getelementptr i8, ptr %31, i64 %81
  %83 = sext i32 %76 to i64
  %84 = getelementptr i8, ptr %31, i64 %83
  %85 = icmp ult ptr %78, %82
  %86 = icmp ult ptr %80, %84
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %100

88:                                               ; preds = %67, %94
  %89 = phi ptr [ %95, %94 ], [ %78, %67 ]
  %90 = phi ptr [ %96, %94 ], [ %80, %67 ]
  %91 = load i8, ptr %89, align 1, !tbaa !9
  %92 = load i8, ptr %90, align 1, !tbaa !9
  %93 = icmp eq i8 %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = getelementptr inbounds i8, ptr %89, i64 1
  %96 = getelementptr inbounds i8, ptr %90, i64 1
  %97 = icmp ult ptr %95, %82
  %98 = icmp ult ptr %96, %84
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %88, label %100, !llvm.loop !24

100:                                              ; preds = %94, %67
  %101 = phi ptr [ %80, %67 ], [ %96, %94 ]
  %102 = phi ptr [ %78, %67 ], [ %95, %94 ]
  %103 = phi i1 [ %85, %67 ], [ %97, %94 ]
  %104 = phi i1 [ %86, %67 ], [ %98, %94 ]
  br i1 %103, label %105, label %109

105:                                              ; preds = %100
  br i1 %104, label %106, label %118

106:                                              ; preds = %105
  %107 = load i8, ptr %102, align 1, !tbaa !9
  %108 = load i8, ptr %101, align 1, !tbaa !9
  br label %111

109:                                              ; preds = %100
  %110 = sext i1 %104 to i32
  br label %128

111:                                              ; preds = %88, %106
  %112 = phi i8 [ %108, %106 ], [ %92, %88 ]
  %113 = phi i8 [ %107, %106 ], [ %91, %88 ]
  %114 = zext i8 %113 to i32
  %115 = zext i8 %112 to i32
  %116 = sub nsw i32 %114, %115
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %111, %105
  br label %119

119:                                              ; preds = %118, %125
  %120 = phi i32 [ %126, %125 ], [ %68, %118 ]
  %121 = phi ptr [ %123, %125 ], [ %69, %118 ]
  %122 = getelementptr inbounds i32, ptr %121, i64 -1
  store i32 %120, ptr %122, align 4, !tbaa !5
  %123 = getelementptr inbounds i32, ptr %121, i64 1
  %124 = icmp ult ptr %123, %50
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load i32, ptr %123, align 4, !tbaa !5
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %119, label %66, !llvm.loop !104

128:                                              ; preds = %111, %109
  %129 = phi i32 [ %110, %109 ], [ %116, %111 ]
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = xor i32 %68, -1
  store i32 %132, ptr %69, align 4, !tbaa !5
  br label %133

133:                                              ; preds = %119, %131, %128
  %134 = phi ptr [ %69, %131 ], [ %69, %128 ], [ %123, %119 ]
  %135 = getelementptr inbounds i32, ptr %134, i64 -1
  store i32 %60, ptr %135, align 4, !tbaa !5
  %136 = getelementptr inbounds i32, ptr %59, i64 -1
  %137 = icmp ult ptr %136, %48
  br i1 %137, label %138, label %58, !llvm.loop !105

138:                                              ; preds = %133, %52, %45
  %139 = and i64 %46, 2147483648
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 417, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

142:                                              ; preds = %138
  %143 = icmp eq i64 %46, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %142
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %5) #12
  ret void

145:                                              ; preds = %1654, %1292, %441, %163
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !10
  unreachable, !nosanitize !10

146:                                              ; preds = %142
  %147 = add nsw i64 %46, -1
  %148 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !106
  %150 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %147, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !108
  %152 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %147, i32 2
  %153 = load i32, ptr %152, align 8, !tbaa !109
  %154 = ptrtoint ptr %151 to i64
  %155 = ptrtoint ptr %149 to i64
  %156 = sub i64 %154, %155
  %157 = ashr exact i64 %156, 2
  %158 = icmp slt i64 %157, 9
  br i1 %158, label %45, label %159

159:                                              ; preds = %146
  %160 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %147, i32 3
  %161 = load i32, ptr %160, align 4, !tbaa !110
  %162 = trunc i64 %147 to i32
  br label %163

163:                                              ; preds = %159, %32
  %164 = phi ptr [ %33, %32 ], [ %151, %159 ]
  %165 = phi i32 [ %34, %32 ], [ %153, %159 ]
  %166 = phi ptr [ %35, %32 ], [ %149, %159 ]
  %167 = phi i32 [ %36, %32 ], [ %162, %159 ]
  %168 = phi i32 [ %37, %32 ], [ %161, %159 ]
  %169 = phi i64 [ %38, %32 ], [ %154, %159 ]
  %170 = phi i64 [ %39, %32 ], [ %155, %159 ]
  %171 = phi i64 [ %41, %32 ], [ %157, %159 ]
  %172 = sext i32 %165 to i64
  %173 = getelementptr inbounds i8, ptr %0, i64 %172
  %174 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %168, i32 -1)
  %175 = extractvalue { i32, i1 } %174, 0, !nosanitize !10
  %176 = extractvalue { i32, i1 } %174, 1, !nosanitize !10
  br i1 %176, label %145, label %177, !nosanitize !10

177:                                              ; preds = %163
  %178 = icmp eq i32 %168, 0
  br i1 %178, label %179, label %397

179:                                              ; preds = %177
  %180 = icmp ult i64 %171, 2147483648
  br i1 %180, label %182, label %181

181:                                              ; preds = %179
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 422, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

182:                                              ; preds = %179
  %183 = trunc i64 %171 to i32
  %184 = and i32 %183, 1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %182
  %187 = lshr i64 %171, 1
  br label %211

188:                                              ; preds = %182
  %189 = add nsw i32 %183, -1
  %190 = lshr i32 %189, 1
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds i32, ptr %166, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !5
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, ptr %1, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !5
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, ptr %173, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !9
  %200 = zext nneg i32 %189 to i64
  %201 = getelementptr inbounds i32, ptr %166, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !5
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, ptr %1, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !5
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, ptr %173, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !9
  %209 = icmp ult i8 %199, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %188
  store i32 %193, ptr %201, align 4, !tbaa !5
  store i32 %202, ptr %192, align 4, !tbaa !5
  br label %211

211:                                              ; preds = %186, %188, %210
  %212 = phi i64 [ %187, %186 ], [ %191, %188 ], [ %191, %210 ]
  %213 = phi i32 [ %183, %186 ], [ %189, %188 ], [ %189, %210 ]
  br label %214

214:                                              ; preds = %272, %211
  %215 = phi i64 [ %212, %211 ], [ %216, %272 ]
  %216 = add nsw i64 %215, -1
  %217 = getelementptr inbounds i32, ptr %166, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !5
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, ptr %1, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !5
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, ptr %173, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !9
  %225 = trunc i64 %215 to i32
  %226 = add i32 %225, 1073741823
  %227 = icmp sgt i32 %226, -1
  br i1 %227, label %228, label %230, !nosanitize !10

228:                                              ; preds = %214
  %229 = trunc i64 %216 to i32
  br label %231

230:                                              ; preds = %214, %262
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

231:                                              ; preds = %262, %228
  %232 = phi i32 [ %264, %262 ], [ %229, %228 ]
  %233 = shl nsw i32 %232, 1
  %234 = or disjoint i32 %233, 1
  %235 = icmp slt i32 %234, %213
  br i1 %235, label %237, label %272

236:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

237:                                              ; preds = %231
  %238 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %234, i32 1), !nosanitize !10
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !10
  br i1 %239, label %236, label %240, !nosanitize !10

240:                                              ; preds = %237
  %241 = extractvalue { i32, i1 } %238, 0, !nosanitize !10
  %242 = sext i32 %234 to i64
  %243 = getelementptr inbounds i32, ptr %166, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !5
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, ptr %1, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !5
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, ptr %173, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !9
  %251 = sext i32 %241 to i64
  %252 = getelementptr inbounds i32, ptr %166, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !5
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, ptr %1, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !5
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, ptr %173, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !9
  %260 = tail call i8 @llvm.umax.i8(i8 %250, i8 %259)
  %261 = icmp ugt i8 %260, %224
  br i1 %261, label %262, label %272

262:                                              ; preds = %240
  %263 = icmp ult i8 %250, %259
  %264 = select i1 %263, i32 %241, i32 %234
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, ptr %166, i64 %265
  %267 = load i32, ptr %266, align 4, !tbaa !5
  %268 = sext i32 %232 to i64
  %269 = getelementptr inbounds i32, ptr %166, i64 %268
  store i32 %267, ptr %269, align 4, !tbaa !5
  %270 = add i32 %264, 1073741824
  %271 = icmp sgt i32 %270, -1
  br i1 %271, label %231, label %230, !llvm.loop !111, !nosanitize !10

272:                                              ; preds = %240, %231
  %273 = sext i32 %232 to i64
  %274 = getelementptr inbounds i32, ptr %166, i64 %273
  store i32 %218, ptr %274, align 4, !tbaa !5
  %275 = icmp sgt i64 %215, 1
  br i1 %275, label %214, label %276, !llvm.loop !112

276:                                              ; preds = %272
  br i1 %185, label %277, label %334

277:                                              ; preds = %276
  %278 = load i32, ptr %166, align 4, !tbaa !5
  %279 = zext nneg i32 %213 to i64
  %280 = getelementptr inbounds i32, ptr %166, i64 %279
  %281 = load i32, ptr %280, align 4, !tbaa !5
  store i32 %281, ptr %166, align 4, !tbaa !5
  store i32 %278, ptr %280, align 4, !tbaa !5
  %282 = load i32, ptr %166, align 4, !tbaa !5
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, ptr %1, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !5
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, ptr %173, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !9
  br label %290

289:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

290:                                              ; preds = %321, %277
  %291 = phi i32 [ %323, %321 ], [ 0, %277 ]
  %292 = shl nsw i32 %291, 1
  %293 = or disjoint i32 %292, 1
  %294 = icmp slt i32 %293, %213
  br i1 %294, label %296, label %331

295:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

296:                                              ; preds = %290
  %297 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %293, i32 1), !nosanitize !10
  %298 = extractvalue { i32, i1 } %297, 1, !nosanitize !10
  br i1 %298, label %295, label %299, !nosanitize !10

299:                                              ; preds = %296
  %300 = extractvalue { i32, i1 } %297, 0, !nosanitize !10
  %301 = sext i32 %293 to i64
  %302 = getelementptr inbounds i32, ptr %166, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !5
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, ptr %1, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !5
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, ptr %173, i64 %307
  %309 = load i8, ptr %308, align 1, !tbaa !9
  %310 = sext i32 %300 to i64
  %311 = getelementptr inbounds i32, ptr %166, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !5
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, ptr %1, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !5
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, ptr %173, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !9
  %319 = tail call i8 @llvm.umax.i8(i8 %309, i8 %318)
  %320 = icmp ugt i8 %319, %288
  br i1 %320, label %321, label %331

321:                                              ; preds = %299
  %322 = icmp ult i8 %309, %318
  %323 = select i1 %322, i32 %300, i32 %293
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, ptr %166, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !5
  %327 = sext i32 %291 to i64
  %328 = getelementptr inbounds i32, ptr %166, i64 %327
  store i32 %326, ptr %328, align 4, !tbaa !5
  %329 = add i32 %323, 1073741824
  %330 = icmp sgt i32 %329, -1
  br i1 %330, label %290, label %289, !llvm.loop !111, !nosanitize !10

331:                                              ; preds = %299, %290
  %332 = sext i32 %291 to i64
  %333 = getelementptr inbounds i32, ptr %166, i64 %332
  store i32 %282, ptr %333, align 4, !tbaa !5
  br label %334

334:                                              ; preds = %331, %276
  %335 = add i32 %213, -1
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %397

337:                                              ; preds = %334
  %338 = zext nneg i32 %335 to i64
  br label %339

339:                                              ; preds = %392, %337
  %340 = phi i64 [ %338, %337 ], [ %395, %392 ]
  %341 = load i32, ptr %166, align 4, !tbaa !5
  %342 = getelementptr inbounds i32, ptr %166, i64 %340
  %343 = load i32, ptr %342, align 4, !tbaa !5
  store i32 %343, ptr %166, align 4, !tbaa !5
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, ptr %1, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !5
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, ptr %173, i64 %347
  %349 = load i8, ptr %348, align 1, !tbaa !9
  br label %351

350:                                              ; preds = %382
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !10
  unreachable, !nosanitize !10

351:                                              ; preds = %382, %339
  %352 = phi i32 [ %384, %382 ], [ 0, %339 ]
  %353 = shl nsw i32 %352, 1
  %354 = or disjoint i32 %353, 1
  %355 = sext i32 %354 to i64
  %356 = icmp sgt i64 %340, %355
  br i1 %356, label %358, label %392

357:                                              ; preds = %358
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

358:                                              ; preds = %351
  %359 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %354, i32 1), !nosanitize !10
  %360 = extractvalue { i32, i1 } %359, 1, !nosanitize !10
  br i1 %360, label %357, label %361, !nosanitize !10

361:                                              ; preds = %358
  %362 = extractvalue { i32, i1 } %359, 0, !nosanitize !10
  %363 = getelementptr inbounds i32, ptr %166, i64 %355
  %364 = load i32, ptr %363, align 4, !tbaa !5
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, ptr %1, i64 %365
  %367 = load i32, ptr %366, align 4, !tbaa !5
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, ptr %173, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !9
  %371 = sext i32 %362 to i64
  %372 = getelementptr inbounds i32, ptr %166, i64 %371
  %373 = load i32, ptr %372, align 4, !tbaa !5
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, ptr %1, i64 %374
  %376 = load i32, ptr %375, align 4, !tbaa !5
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, ptr %173, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !9
  %380 = tail call i8 @llvm.umax.i8(i8 %370, i8 %379)
  %381 = icmp ugt i8 %380, %349
  br i1 %381, label %382, label %392

382:                                              ; preds = %361
  %383 = icmp ult i8 %370, %379
  %384 = select i1 %383, i32 %362, i32 %354
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, ptr %166, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !5
  %388 = sext i32 %352 to i64
  %389 = getelementptr inbounds i32, ptr %166, i64 %388
  store i32 %387, ptr %389, align 4, !tbaa !5
  %390 = add i32 %384, 1073741824
  %391 = icmp sgt i32 %390, -1
  br i1 %391, label %351, label %350, !llvm.loop !111, !nosanitize !10

392:                                              ; preds = %361, %351
  %393 = sext i32 %352 to i64
  %394 = getelementptr inbounds i32, ptr %166, i64 %393
  store i32 %343, ptr %394, align 4, !tbaa !5
  store i32 %341, ptr %342, align 4, !tbaa !5
  %395 = add nsw i64 %340, -1
  %396 = icmp sgt i64 %340, 1
  br i1 %396, label %339, label %397, !llvm.loop !113

397:                                              ; preds = %392, %334, %177
  %398 = icmp slt i32 %175, 0
  br i1 %398, label %399, label %629

399:                                              ; preds = %397
  %400 = load i32, ptr %166, align 4, !tbaa !5
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, ptr %1, i64 %401
  %403 = load i32, ptr %402, align 4, !tbaa !5
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, ptr %173, i64 %404
  %406 = load i8, ptr %405, align 1, !tbaa !9
  %407 = zext i8 %406 to i32
  %408 = getelementptr inbounds i32, ptr %166, i64 1
  %409 = icmp ult ptr %408, %164
  br i1 %409, label %410, label %441

410:                                              ; preds = %399, %428
  %411 = phi ptr [ %431, %428 ], [ %408, %399 ]
  %412 = phi i32 [ %430, %428 ], [ %407, %399 ]
  %413 = phi ptr [ %429, %428 ], [ %166, %399 ]
  %414 = load i32, ptr %411, align 4, !tbaa !5
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, ptr %1, i64 %415
  %417 = load i32, ptr %416, align 4, !tbaa !5
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i8, ptr %173, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !9
  %421 = zext i8 %420 to i32
  %422 = icmp eq i32 %412, %421
  br i1 %422, label %428, label %423

423:                                              ; preds = %410
  %424 = ptrtoint ptr %411 to i64
  %425 = ptrtoint ptr %413 to i64
  %426 = sub i64 %424, %425
  %427 = icmp sgt i64 %426, 4
  br i1 %427, label %433, label %428

428:                                              ; preds = %423, %410
  %429 = phi ptr [ %413, %410 ], [ %411, %423 ]
  %430 = phi i32 [ %412, %410 ], [ %421, %423 ]
  %431 = getelementptr inbounds i32, ptr %411, i64 1
  %432 = icmp ult ptr %431, %164
  br i1 %432, label %410, label %433, !llvm.loop !114

433:                                              ; preds = %423, %428
  %434 = phi ptr [ %429, %428 ], [ %413, %423 ]
  %435 = phi i32 [ %430, %428 ], [ %412, %423 ]
  %436 = phi ptr [ %431, %428 ], [ %411, %423 ]
  %437 = load i32, ptr %434, align 4, !tbaa !5
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, ptr %1, i64 %438
  %440 = load i32, ptr %439, align 4, !tbaa !5
  br label %441

441:                                              ; preds = %433, %399
  %442 = phi i32 [ %403, %399 ], [ %440, %433 ]
  %443 = phi ptr [ %166, %399 ], [ %434, %433 ]
  %444 = phi i32 [ %407, %399 ], [ %435, %433 ]
  %445 = phi ptr [ %408, %399 ], [ %436, %433 ]
  %446 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %442, i32 -1)
  %447 = extractvalue { i32, i1 } %446, 1, !nosanitize !10
  br i1 %447, label %145, label %448, !nosanitize !10

448:                                              ; preds = %441
  %449 = extractvalue { i32, i1 } %446, 0, !nosanitize !10
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8, ptr %173, i64 %450
  %452 = load i8, ptr %451, align 1, !tbaa !9
  %453 = zext i8 %452 to i32
  %454 = icmp ugt i32 %444, %453
  br i1 %454, label %455, label %524

455:                                              ; preds = %448
  %456 = getelementptr inbounds i32, ptr %443, i64 -1
  br label %457

457:                                              ; preds = %516, %455
  %458 = phi ptr [ %445, %455 ], [ %493, %516 ]
  %459 = phi ptr [ %456, %455 ], [ %490, %516 ]
  %460 = getelementptr inbounds i32, ptr %459, i64 1
  %461 = icmp ult ptr %460, %458
  br i1 %461, label %462, label %489

462:                                              ; preds = %457, %485
  %463 = phi ptr [ %487, %485 ], [ %460, %457 ]
  %464 = load i32, ptr %463, align 4, !tbaa !5
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, ptr %1, i64 %465
  %467 = load i32, ptr %466, align 4, !tbaa !5
  %468 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %467, i32 %165), !nosanitize !10
  %469 = extractvalue { i32, i1 } %468, 0, !nosanitize !10
  %470 = extractvalue { i32, i1 } %468, 1, !nosanitize !10
  br i1 %470, label %471, label %472, !nosanitize !10

471:                                              ; preds = %475, %472, %462, %506, %503, %495
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

472:                                              ; preds = %462
  %473 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %464, i32 1), !nosanitize !10
  %474 = extractvalue { i32, i1 } %473, 1, !nosanitize !10
  br i1 %474, label %471, label %475, !nosanitize !10

475:                                              ; preds = %472
  %476 = extractvalue { i32, i1 } %473, 0, !nosanitize !10
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, ptr %1, i64 %477
  %479 = load i32, ptr %478, align 4, !tbaa !5
  %480 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %479, i32 1), !nosanitize !10
  %481 = extractvalue { i32, i1 } %480, 1, !nosanitize !10
  br i1 %481, label %471, label %482, !nosanitize !10

482:                                              ; preds = %475
  %483 = extractvalue { i32, i1 } %480, 0, !nosanitize !10
  %484 = icmp slt i32 %469, %483
  br i1 %484, label %489, label %485

485:                                              ; preds = %482
  %486 = xor i32 %464, -1
  store i32 %486, ptr %463, align 4, !tbaa !5
  %487 = getelementptr inbounds i32, ptr %463, i64 1
  %488 = icmp ult ptr %487, %458
  br i1 %488, label %462, label %489, !llvm.loop !115

489:                                              ; preds = %485, %482, %457
  %490 = phi ptr [ %460, %457 ], [ %463, %482 ], [ %487, %485 ]
  br label %491

491:                                              ; preds = %513, %489
  %492 = phi ptr [ %458, %489 ], [ %493, %513 ]
  %493 = getelementptr inbounds i32, ptr %492, i64 -1
  %494 = icmp ult ptr %490, %493
  br i1 %494, label %495, label %519

495:                                              ; preds = %491
  %496 = load i32, ptr %493, align 4, !tbaa !5
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, ptr %1, i64 %497
  %499 = load i32, ptr %498, align 4, !tbaa !5
  %500 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %499, i32 %165), !nosanitize !10
  %501 = extractvalue { i32, i1 } %500, 0, !nosanitize !10
  %502 = extractvalue { i32, i1 } %500, 1, !nosanitize !10
  br i1 %502, label %471, label %503, !nosanitize !10

503:                                              ; preds = %495
  %504 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %496, i32 1), !nosanitize !10
  %505 = extractvalue { i32, i1 } %504, 1, !nosanitize !10
  br i1 %505, label %471, label %506, !nosanitize !10

506:                                              ; preds = %503
  %507 = extractvalue { i32, i1 } %504, 0, !nosanitize !10
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, ptr %1, i64 %508
  %510 = load i32, ptr %509, align 4, !tbaa !5
  %511 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %510, i32 1), !nosanitize !10
  %512 = extractvalue { i32, i1 } %511, 1, !nosanitize !10
  br i1 %512, label %471, label %513, !nosanitize !10

513:                                              ; preds = %506
  %514 = extractvalue { i32, i1 } %511, 0, !nosanitize !10
  %515 = icmp slt i32 %501, %514
  br i1 %515, label %491, label %516, !llvm.loop !116

516:                                              ; preds = %513
  %517 = xor i32 %496, -1
  %518 = load i32, ptr %490, align 4, !tbaa !5
  store i32 %518, ptr %493, align 4, !tbaa !5
  store i32 %517, ptr %490, align 4, !tbaa !5
  br label %457

519:                                              ; preds = %491
  %520 = icmp ugt ptr %490, %443
  br i1 %520, label %521, label %524

521:                                              ; preds = %519
  %522 = load i32, ptr %443, align 4, !tbaa !5
  %523 = xor i32 %522, -1
  store i32 %523, ptr %443, align 4, !tbaa !5
  br label %524

524:                                              ; preds = %521, %519, %448
  %525 = phi ptr [ %443, %448 ], [ %490, %519 ], [ %490, %521 ]
  %526 = ptrtoint ptr %445 to i64
  %527 = ptrtoint ptr %525 to i64
  %528 = sub i64 %526, %527
  %529 = ashr exact i64 %528, 2
  %530 = sub i64 %169, %526
  %531 = ashr exact i64 %530, 2
  %532 = icmp sgt i64 %529, %531
  br i1 %532, label %568, label %533

533:                                              ; preds = %524
  %534 = icmp sgt i64 %529, 1
  br i1 %534, label %535, label %1766

535:                                              ; preds = %533
  %536 = icmp slt i32 %167, 16
  br i1 %536, label %538, label %537

537:                                              ; preds = %535
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

538:                                              ; preds = %535
  %539 = sext i32 %167 to i64
  %540 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %539
  store ptr %445, ptr %540, align 8, !tbaa !106
  %541 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %539, i32 1
  store ptr %164, ptr %541, align 8, !tbaa !108
  %542 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %539, i32 2
  store i32 %165, ptr %542, align 8, !tbaa !109
  %543 = add nsw i32 %167, 1
  %544 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %539, i32 3
  store i32 -1, ptr %544, align 4, !tbaa !110
  %545 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %165, i32 1), !nosanitize !10
  %546 = extractvalue { i32, i1 } %545, 0, !nosanitize !10
  %547 = extractvalue { i32, i1 } %545, 1, !nosanitize !10
  br i1 %547, label %548, label %549, !nosanitize !10

548:                                              ; preds = %1759, %1650, %1619, %1576, %1522, %1486, %1443, %1389, %605, %573, %538
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

549:                                              ; preds = %538
  %550 = icmp ult i64 %529, 2147483648
  br i1 %550, label %552, label %551

551:                                              ; preds = %549
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 437, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

552:                                              ; preds = %549
  %553 = and i64 %528, 261120
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %564, label %555

555:                                              ; preds = %552
  %556 = lshr i64 %529, 8
  %557 = and i64 %556, 255
  %558 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %557
  %559 = load i32, ptr %558, align 4, !tbaa !5
  %560 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %559, i32 8), !nosanitize !10
  %561 = extractvalue { i32, i1 } %560, 0, !nosanitize !10
  %562 = extractvalue { i32, i1 } %560, 1, !nosanitize !10
  br i1 %562, label %563, label %1766, !nosanitize !10

563:                                              ; preds = %555
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

564:                                              ; preds = %552
  %565 = and i64 %529, 255
  %566 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %565
  %567 = load i32, ptr %566, align 4, !tbaa !5
  br label %1766

568:                                              ; preds = %524
  %569 = icmp sgt i64 %531, 1
  br i1 %569, label %570, label %605

570:                                              ; preds = %568
  %571 = icmp slt i32 %167, 16
  br i1 %571, label %573, label %572

572:                                              ; preds = %570
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 443, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

573:                                              ; preds = %570
  %574 = sext i32 %167 to i64
  %575 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %574
  store ptr %525, ptr %575, align 8, !tbaa !106
  %576 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %574, i32 1
  store ptr %445, ptr %576, align 8, !tbaa !108
  %577 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %165, i32 1), !nosanitize !10
  %578 = extractvalue { i32, i1 } %577, 1, !nosanitize !10
  br i1 %578, label %548, label %579, !nosanitize !10

579:                                              ; preds = %573
  %580 = extractvalue { i32, i1 } %577, 0, !nosanitize !10
  %581 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %574, i32 2
  store i32 %580, ptr %581, align 8, !tbaa !109
  %582 = add nsw i64 %529, 2147483648
  %583 = icmp ult i64 %582, 4294967296
  br i1 %583, label %585, label %584

584:                                              ; preds = %579
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 443, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

585:                                              ; preds = %579
  %586 = and i64 %528, 261120
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %597, label %588

588:                                              ; preds = %585
  %589 = lshr i64 %529, 8
  %590 = and i64 %589, 255
  %591 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %590
  %592 = load i32, ptr %591, align 4, !tbaa !5
  %593 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %592, i32 8), !nosanitize !10
  %594 = extractvalue { i32, i1 } %593, 0, !nosanitize !10
  %595 = extractvalue { i32, i1 } %593, 1, !nosanitize !10
  br i1 %595, label %596, label %601, !nosanitize !10

596:                                              ; preds = %588
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

597:                                              ; preds = %585
  %598 = and i64 %529, 255
  %599 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %598
  %600 = load i32, ptr %599, align 4, !tbaa !5
  br label %601

601:                                              ; preds = %588, %597
  %602 = phi i32 [ %594, %588 ], [ %600, %597 ]
  %603 = add nsw i32 %167, 1
  %604 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %574, i32 3
  store i32 %602, ptr %604, align 4, !tbaa !110
  br label %1766

605:                                              ; preds = %568
  %606 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %165, i32 1), !nosanitize !10
  %607 = extractvalue { i32, i1 } %606, 0, !nosanitize !10
  %608 = extractvalue { i32, i1 } %606, 1, !nosanitize !10
  br i1 %608, label %548, label %609, !nosanitize !10

609:                                              ; preds = %605
  %610 = add nsw i64 %529, 2147483648
  %611 = icmp ult i64 %610, 4294967296
  br i1 %611, label %613, label %612

612:                                              ; preds = %609
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

613:                                              ; preds = %609
  %614 = and i64 %528, 261120
  %615 = icmp eq i64 %614, 0
  br i1 %615, label %625, label %616

616:                                              ; preds = %613
  %617 = lshr i64 %529, 8
  %618 = and i64 %617, 255
  %619 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %618
  %620 = load i32, ptr %619, align 4, !tbaa !5
  %621 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %620, i32 8), !nosanitize !10
  %622 = extractvalue { i32, i1 } %621, 0, !nosanitize !10
  %623 = extractvalue { i32, i1 } %621, 1, !nosanitize !10
  br i1 %623, label %624, label %1766, !nosanitize !10

624:                                              ; preds = %616
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

625:                                              ; preds = %613
  %626 = and i64 %529, 255
  %627 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %626
  %628 = load i32, ptr %627, align 4, !tbaa !5
  br label %1766

629:                                              ; preds = %397
  %630 = icmp ult i64 %171, 2147483648
  br i1 %630, label %632, label %631

631:                                              ; preds = %629
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 356, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_pivot) #11
  unreachable

632:                                              ; preds = %629
  %633 = trunc i64 %171 to i32
  %634 = lshr i64 %171, 1
  %635 = getelementptr inbounds i32, ptr %166, i64 %634
  %636 = icmp ult i32 %633, 513
  br i1 %636, label %637, label %791

637:                                              ; preds = %632
  %638 = icmp ult i32 %633, 33
  br i1 %638, label %639, label %683

639:                                              ; preds = %637
  %640 = getelementptr inbounds i32, ptr %164, i64 -1
  %641 = load i32, ptr %166, align 4, !tbaa !5
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i32, ptr %1, i64 %642
  %644 = load i32, ptr %643, align 4, !tbaa !5
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i8, ptr %173, i64 %645
  %647 = load i8, ptr %646, align 1, !tbaa !9
  %648 = load i32, ptr %635, align 4, !tbaa !5
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i32, ptr %1, i64 %649
  %651 = load i32, ptr %650, align 4, !tbaa !5
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i8, ptr %173, i64 %652
  %654 = load i8, ptr %653, align 1, !tbaa !9
  %655 = icmp ugt i8 %647, %654
  %656 = select i1 %655, i32 %641, i32 %648
  %657 = select i1 %655, ptr %166, ptr %635
  %658 = sext i32 %656 to i64
  %659 = getelementptr inbounds i32, ptr %1, i64 %658
  %660 = load i32, ptr %659, align 4, !tbaa !5
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i8, ptr %173, i64 %661
  %663 = load i8, ptr %662, align 1, !tbaa !9
  %664 = load i32, ptr %640, align 4, !tbaa !5
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i32, ptr %1, i64 %665
  %667 = load i32, ptr %666, align 4, !tbaa !5
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i8, ptr %173, i64 %668
  %670 = load i8, ptr %669, align 1, !tbaa !9
  %671 = icmp ugt i8 %663, %670
  br i1 %671, label %672, label %980

672:                                              ; preds = %639
  %673 = select i1 %655, i32 %648, i32 %641
  %674 = select i1 %655, ptr %635, ptr %166
  %675 = sext i32 %673 to i64
  %676 = getelementptr inbounds i32, ptr %1, i64 %675
  %677 = load i32, ptr %676, align 4, !tbaa !5
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds i8, ptr %173, i64 %678
  %680 = load i8, ptr %679, align 1, !tbaa !9
  %681 = icmp ugt i8 %680, %670
  %682 = select i1 %681, ptr %674, ptr %640
  br label %980

683:                                              ; preds = %637
  %684 = lshr i64 %171, 2
  %685 = getelementptr inbounds i32, ptr %166, i64 %684
  %686 = getelementptr inbounds i32, ptr %164, i64 -1
  %687 = sub nsw i64 0, %684
  %688 = getelementptr inbounds i32, ptr %686, i64 %687
  %689 = load i32, ptr %685, align 4, !tbaa !5
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i32, ptr %1, i64 %690
  %692 = load i32, ptr %691, align 4, !tbaa !5
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds i8, ptr %173, i64 %693
  %695 = load i8, ptr %694, align 1, !tbaa !9
  %696 = load i32, ptr %635, align 4, !tbaa !5
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds i32, ptr %1, i64 %697
  %699 = load i32, ptr %698, align 4, !tbaa !5
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i8, ptr %173, i64 %700
  %702 = load i8, ptr %701, align 1, !tbaa !9
  %703 = icmp ugt i8 %695, %702
  %704 = select i1 %703, i32 %696, i32 %689
  %705 = select i1 %703, ptr %635, ptr %685
  %706 = select i1 %703, ptr %685, ptr %635
  %707 = load i32, ptr %688, align 4, !tbaa !5
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i32, ptr %1, i64 %708
  %710 = load i32, ptr %709, align 4, !tbaa !5
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i8, ptr %173, i64 %711
  %713 = load i8, ptr %712, align 1, !tbaa !9
  %714 = load i32, ptr %686, align 4, !tbaa !5
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i32, ptr %1, i64 %715
  %717 = load i32, ptr %716, align 4, !tbaa !5
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds i8, ptr %173, i64 %718
  %720 = load i8, ptr %719, align 1, !tbaa !9
  %721 = icmp ugt i8 %713, %720
  %722 = select i1 %721, i32 %714, i32 %707
  %723 = select i1 %721, ptr %686, ptr %688
  %724 = select i1 %721, ptr %688, ptr %686
  %725 = sext i32 %704 to i64
  %726 = getelementptr inbounds i32, ptr %1, i64 %725
  %727 = load i32, ptr %726, align 4, !tbaa !5
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds i8, ptr %173, i64 %728
  %730 = load i8, ptr %729, align 1, !tbaa !9
  %731 = sext i32 %722 to i64
  %732 = getelementptr inbounds i32, ptr %1, i64 %731
  %733 = load i32, ptr %732, align 4, !tbaa !5
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds i8, ptr %173, i64 %734
  %736 = load i8, ptr %735, align 1, !tbaa !9
  %737 = icmp ugt i8 %730, %736
  %738 = select i1 %737, ptr %724, ptr %706
  %739 = select i1 %737, ptr %705, ptr %723
  %740 = select i1 %737, ptr %706, ptr %724
  %741 = load i32, ptr %166, align 4, !tbaa !5
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds i32, ptr %1, i64 %742
  %744 = load i32, ptr %743, align 4, !tbaa !5
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds i8, ptr %173, i64 %745
  %747 = load i8, ptr %746, align 1, !tbaa !9
  %748 = load i32, ptr %738, align 4, !tbaa !5
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i32, ptr %1, i64 %749
  %751 = load i32, ptr %750, align 4, !tbaa !5
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds i8, ptr %173, i64 %752
  %754 = load i8, ptr %753, align 1, !tbaa !9
  %755 = icmp ugt i8 %747, %754
  %756 = select i1 %755, i32 %748, i32 %741
  %757 = select i1 %755, ptr %738, ptr %166
  %758 = select i1 %755, ptr %166, ptr %738
  %759 = sext i32 %756 to i64
  %760 = getelementptr inbounds i32, ptr %1, i64 %759
  %761 = load i32, ptr %760, align 4, !tbaa !5
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i8, ptr %173, i64 %762
  %764 = load i8, ptr %763, align 1, !tbaa !9
  %765 = load i32, ptr %739, align 4, !tbaa !5
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i32, ptr %1, i64 %766
  %768 = load i32, ptr %767, align 4, !tbaa !5
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds i8, ptr %173, i64 %769
  %771 = load i8, ptr %770, align 1, !tbaa !9
  %772 = icmp ugt i8 %764, %771
  %773 = select i1 %772, ptr %740, ptr %758
  %774 = select i1 %772, ptr %757, ptr %739
  %775 = load i32, ptr %773, align 4, !tbaa !5
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds i32, ptr %1, i64 %776
  %778 = load i32, ptr %777, align 4, !tbaa !5
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i8, ptr %173, i64 %779
  %781 = load i8, ptr %780, align 1, !tbaa !9
  %782 = load i32, ptr %774, align 4, !tbaa !5
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds i32, ptr %1, i64 %783
  %785 = load i32, ptr %784, align 4, !tbaa !5
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds i8, ptr %173, i64 %786
  %788 = load i8, ptr %787, align 1, !tbaa !9
  %789 = icmp ugt i8 %781, %788
  %790 = select i1 %789, ptr %774, ptr %773
  br label %980

791:                                              ; preds = %632
  %792 = lshr i32 %633, 3
  %793 = zext nneg i32 %792 to i64
  %794 = getelementptr inbounds i32, ptr %166, i64 %793
  %795 = shl nuw nsw i32 %792, 1
  %796 = zext nneg i32 %795 to i64
  %797 = getelementptr inbounds i32, ptr %166, i64 %796
  %798 = load i32, ptr %166, align 4, !tbaa !5
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds i32, ptr %1, i64 %799
  %801 = load i32, ptr %800, align 4, !tbaa !5
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds i8, ptr %173, i64 %802
  %804 = load i8, ptr %803, align 1, !tbaa !9
  %805 = load i32, ptr %794, align 4, !tbaa !5
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds i32, ptr %1, i64 %806
  %808 = load i32, ptr %807, align 4, !tbaa !5
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds i8, ptr %173, i64 %809
  %811 = load i8, ptr %810, align 1, !tbaa !9
  %812 = icmp ugt i8 %804, %811
  %813 = select i1 %812, i32 %798, i32 %805
  %814 = select i1 %812, ptr %166, ptr %794
  %815 = sext i32 %813 to i64
  %816 = getelementptr inbounds i32, ptr %1, i64 %815
  %817 = load i32, ptr %816, align 4, !tbaa !5
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds i8, ptr %173, i64 %818
  %820 = load i8, ptr %819, align 1, !tbaa !9
  %821 = load i32, ptr %797, align 4, !tbaa !5
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds i32, ptr %1, i64 %822
  %824 = load i32, ptr %823, align 4, !tbaa !5
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds i8, ptr %173, i64 %825
  %827 = load i8, ptr %826, align 1, !tbaa !9
  %828 = icmp ugt i8 %820, %827
  br i1 %828, label %829, label %840

829:                                              ; preds = %791
  %830 = select i1 %812, i32 %805, i32 %798
  %831 = select i1 %812, ptr %794, ptr %166
  %832 = sext i32 %830 to i64
  %833 = getelementptr inbounds i32, ptr %1, i64 %832
  %834 = load i32, ptr %833, align 4, !tbaa !5
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds i8, ptr %173, i64 %835
  %837 = load i8, ptr %836, align 1, !tbaa !9
  %838 = icmp ugt i8 %837, %827
  %839 = select i1 %838, ptr %831, ptr %797
  br label %840

840:                                              ; preds = %829, %791
  %841 = phi ptr [ %839, %829 ], [ %814, %791 ]
  %842 = sub nsw i64 0, %793
  %843 = getelementptr inbounds i32, ptr %635, i64 %842
  %844 = getelementptr inbounds i32, ptr %635, i64 %793
  %845 = load i32, ptr %843, align 4, !tbaa !5
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds i32, ptr %1, i64 %846
  %848 = load i32, ptr %847, align 4, !tbaa !5
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds i8, ptr %173, i64 %849
  %851 = load i8, ptr %850, align 1, !tbaa !9
  %852 = load i32, ptr %635, align 4, !tbaa !5
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds i32, ptr %1, i64 %853
  %855 = load i32, ptr %854, align 4, !tbaa !5
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds i8, ptr %173, i64 %856
  %858 = load i8, ptr %857, align 1, !tbaa !9
  %859 = icmp ugt i8 %851, %858
  %860 = select i1 %859, i32 %845, i32 %852
  %861 = select i1 %859, ptr %843, ptr %635
  %862 = sext i32 %860 to i64
  %863 = getelementptr inbounds i32, ptr %1, i64 %862
  %864 = load i32, ptr %863, align 4, !tbaa !5
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds i8, ptr %173, i64 %865
  %867 = load i8, ptr %866, align 1, !tbaa !9
  %868 = load i32, ptr %844, align 4, !tbaa !5
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds i32, ptr %1, i64 %869
  %871 = load i32, ptr %870, align 4, !tbaa !5
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds i8, ptr %173, i64 %872
  %874 = load i8, ptr %873, align 1, !tbaa !9
  %875 = icmp ugt i8 %867, %874
  br i1 %875, label %876, label %887

876:                                              ; preds = %840
  %877 = select i1 %859, i32 %852, i32 %845
  %878 = select i1 %859, ptr %635, ptr %843
  %879 = sext i32 %877 to i64
  %880 = getelementptr inbounds i32, ptr %1, i64 %879
  %881 = load i32, ptr %880, align 4, !tbaa !5
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds i8, ptr %173, i64 %882
  %884 = load i8, ptr %883, align 1, !tbaa !9
  %885 = icmp ugt i8 %884, %874
  %886 = select i1 %885, ptr %878, ptr %844
  br label %887

887:                                              ; preds = %876, %840
  %888 = phi ptr [ %886, %876 ], [ %861, %840 ]
  %889 = getelementptr inbounds i32, ptr %164, i64 -1
  %890 = sub nsw i64 0, %796
  %891 = getelementptr inbounds i32, ptr %889, i64 %890
  %892 = getelementptr inbounds i32, ptr %889, i64 %842
  %893 = load i32, ptr %891, align 4, !tbaa !5
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds i32, ptr %1, i64 %894
  %896 = load i32, ptr %895, align 4, !tbaa !5
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds i8, ptr %173, i64 %897
  %899 = load i8, ptr %898, align 1, !tbaa !9
  %900 = load i32, ptr %892, align 4, !tbaa !5
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds i32, ptr %1, i64 %901
  %903 = load i32, ptr %902, align 4, !tbaa !5
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds i8, ptr %173, i64 %904
  %906 = load i8, ptr %905, align 1, !tbaa !9
  %907 = icmp ugt i8 %899, %906
  %908 = select i1 %907, i32 %893, i32 %900
  %909 = select i1 %907, ptr %891, ptr %892
  %910 = sext i32 %908 to i64
  %911 = getelementptr inbounds i32, ptr %1, i64 %910
  %912 = load i32, ptr %911, align 4, !tbaa !5
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds i8, ptr %173, i64 %913
  %915 = load i8, ptr %914, align 1, !tbaa !9
  %916 = load i32, ptr %889, align 4, !tbaa !5
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds i32, ptr %1, i64 %917
  %919 = load i32, ptr %918, align 4, !tbaa !5
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds i8, ptr %173, i64 %920
  %922 = load i8, ptr %921, align 1, !tbaa !9
  %923 = icmp ugt i8 %915, %922
  br i1 %923, label %924, label %942

924:                                              ; preds = %887
  %925 = select i1 %907, i32 %900, i32 %893
  %926 = select i1 %907, ptr %892, ptr %891
  %927 = sext i32 %925 to i64
  %928 = getelementptr inbounds i32, ptr %1, i64 %927
  %929 = load i32, ptr %928, align 4, !tbaa !5
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds i8, ptr %173, i64 %930
  %932 = load i8, ptr %931, align 1, !tbaa !9
  %933 = icmp ugt i8 %932, %922
  %934 = select i1 %933, ptr %926, ptr %889
  %935 = load i32, ptr %934, align 4, !tbaa !5
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds i32, ptr %1, i64 %936
  %938 = load i32, ptr %937, align 4, !tbaa !5
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds i8, ptr %173, i64 %939
  %941 = load i8, ptr %940, align 1, !tbaa !9
  br label %942

942:                                              ; preds = %924, %887
  %943 = phi i8 [ %915, %887 ], [ %941, %924 ]
  %944 = phi ptr [ %909, %887 ], [ %934, %924 ]
  %945 = load i32, ptr %841, align 4, !tbaa !5
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds i32, ptr %1, i64 %946
  %948 = load i32, ptr %947, align 4, !tbaa !5
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds i8, ptr %173, i64 %949
  %951 = load i8, ptr %950, align 1, !tbaa !9
  %952 = load i32, ptr %888, align 4, !tbaa !5
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds i32, ptr %1, i64 %953
  %955 = load i32, ptr %954, align 4, !tbaa !5
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds i8, ptr %173, i64 %956
  %958 = load i8, ptr %957, align 1, !tbaa !9
  %959 = icmp ugt i8 %951, %958
  %960 = select i1 %959, i32 %945, i32 %952
  %961 = select i1 %959, ptr %841, ptr %888
  %962 = sext i32 %960 to i64
  %963 = getelementptr inbounds i32, ptr %1, i64 %962
  %964 = load i32, ptr %963, align 4, !tbaa !5
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds i8, ptr %173, i64 %965
  %967 = load i8, ptr %966, align 1, !tbaa !9
  %968 = icmp ugt i8 %967, %943
  br i1 %968, label %969, label %980

969:                                              ; preds = %942
  %970 = select i1 %959, i32 %952, i32 %945
  %971 = select i1 %959, ptr %888, ptr %841
  %972 = sext i32 %970 to i64
  %973 = getelementptr inbounds i32, ptr %1, i64 %972
  %974 = load i32, ptr %973, align 4, !tbaa !5
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds i8, ptr %173, i64 %975
  %977 = load i8, ptr %976, align 1, !tbaa !9
  %978 = icmp ugt i8 %977, %943
  %979 = select i1 %978, ptr %971, ptr %944
  br label %980

980:                                              ; preds = %639, %672, %683, %942, %969
  %981 = phi i32 [ %741, %683 ], [ %641, %672 ], [ %641, %639 ], [ %798, %969 ], [ %798, %942 ]
  %982 = phi ptr [ %790, %683 ], [ %682, %672 ], [ %657, %639 ], [ %979, %969 ], [ %961, %942 ]
  %983 = load i32, ptr %982, align 4, !tbaa !5
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds i32, ptr %1, i64 %984
  %986 = load i32, ptr %985, align 4, !tbaa !5
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds i8, ptr %173, i64 %987
  %989 = load i8, ptr %988, align 1, !tbaa !9
  store i32 %983, ptr %166, align 4, !tbaa !5
  store i32 %981, ptr %982, align 4, !tbaa !5
  %990 = getelementptr inbounds i32, ptr %166, i64 1
  %991 = icmp ult ptr %990, %164
  br i1 %991, label %995, label %1030

992:                                              ; preds = %995
  %993 = getelementptr inbounds i32, ptr %996, i64 1
  %994 = icmp ult ptr %993, %164
  br i1 %994, label %995, label %1030, !llvm.loop !117

995:                                              ; preds = %980, %992
  %996 = phi ptr [ %993, %992 ], [ %990, %980 ]
  %997 = load i32, ptr %996, align 4, !tbaa !5
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds i32, ptr %1, i64 %998
  %1000 = load i32, ptr %999, align 4, !tbaa !5
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds i8, ptr %173, i64 %1001
  %1003 = load i8, ptr %1002, align 1, !tbaa !9
  %1004 = icmp eq i8 %1003, %989
  br i1 %1004, label %992, label %1005, !llvm.loop !117

1005:                                             ; preds = %995
  %1006 = icmp ult i8 %1003, %989
  br i1 %1006, label %1007, label %1030

1007:                                             ; preds = %1005
  %1008 = getelementptr inbounds i32, ptr %996, i64 1
  %1009 = icmp ult ptr %1008, %164
  br i1 %1009, label %1010, label %1030

1010:                                             ; preds = %1007, %1026
  %1011 = phi ptr [ %1028, %1026 ], [ %1008, %1007 ]
  %1012 = phi ptr [ %1027, %1026 ], [ %996, %1007 ]
  %1013 = load i32, ptr %1011, align 4, !tbaa !5
  %1014 = sext i32 %1013 to i64
  %1015 = getelementptr inbounds i32, ptr %1, i64 %1014
  %1016 = load i32, ptr %1015, align 4, !tbaa !5
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds i8, ptr %173, i64 %1017
  %1019 = load i8, ptr %1018, align 1, !tbaa !9
  %1020 = icmp ugt i8 %1019, %989
  br i1 %1020, label %1030, label %1021

1021:                                             ; preds = %1010
  %1022 = icmp eq i8 %1019, %989
  br i1 %1022, label %1023, label %1026

1023:                                             ; preds = %1021
  %1024 = load i32, ptr %1012, align 4, !tbaa !5
  store i32 %1024, ptr %1011, align 4, !tbaa !5
  store i32 %1013, ptr %1012, align 4, !tbaa !5
  %1025 = getelementptr inbounds i32, ptr %1012, i64 1
  br label %1026

1026:                                             ; preds = %1023, %1021
  %1027 = phi ptr [ %1025, %1023 ], [ %1012, %1021 ]
  %1028 = getelementptr inbounds i32, ptr %1011, i64 1
  %1029 = icmp ult ptr %1028, %164
  br i1 %1029, label %1010, label %1030, !llvm.loop !118

1030:                                             ; preds = %992, %1010, %1026, %980, %1007, %1005
  %1031 = phi ptr [ %996, %1005 ], [ %996, %1007 ], [ %990, %980 ], [ %1012, %1010 ], [ %1027, %1026 ], [ %993, %992 ]
  %1032 = phi ptr [ %996, %1005 ], [ %1008, %1007 ], [ %990, %980 ], [ %1011, %1010 ], [ %1028, %1026 ], [ %993, %992 ]
  %1033 = getelementptr inbounds i32, ptr %164, i64 -1
  %1034 = icmp ult ptr %1032, %1033
  br i1 %1034, label %1038, label %1073

1035:                                             ; preds = %1038
  %1036 = getelementptr inbounds i32, ptr %1039, i64 -1
  %1037 = icmp ult ptr %1032, %1036
  br i1 %1037, label %1038, label %1073, !llvm.loop !119

1038:                                             ; preds = %1030, %1035
  %1039 = phi ptr [ %1036, %1035 ], [ %1033, %1030 ]
  %1040 = load i32, ptr %1039, align 4, !tbaa !5
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds i32, ptr %1, i64 %1041
  %1043 = load i32, ptr %1042, align 4, !tbaa !5
  %1044 = sext i32 %1043 to i64
  %1045 = getelementptr inbounds i8, ptr %173, i64 %1044
  %1046 = load i8, ptr %1045, align 1, !tbaa !9
  %1047 = icmp eq i8 %1046, %989
  br i1 %1047, label %1035, label %1048, !llvm.loop !119

1048:                                             ; preds = %1038
  %1049 = icmp ugt i8 %1046, %989
  br i1 %1049, label %1050, label %1073

1050:                                             ; preds = %1048
  %1051 = getelementptr inbounds i32, ptr %1039, i64 -1
  %1052 = icmp ult ptr %1032, %1051
  br i1 %1052, label %1053, label %1073

1053:                                             ; preds = %1050, %1069
  %1054 = phi ptr [ %1071, %1069 ], [ %1051, %1050 ]
  %1055 = phi ptr [ %1070, %1069 ], [ %1039, %1050 ]
  %1056 = load i32, ptr %1054, align 4, !tbaa !5
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds i32, ptr %1, i64 %1057
  %1059 = load i32, ptr %1058, align 4, !tbaa !5
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds i8, ptr %173, i64 %1060
  %1062 = load i8, ptr %1061, align 1, !tbaa !9
  %1063 = icmp ult i8 %1062, %989
  br i1 %1063, label %1073, label %1064

1064:                                             ; preds = %1053
  %1065 = icmp eq i8 %1062, %989
  br i1 %1065, label %1066, label %1069

1066:                                             ; preds = %1064
  %1067 = load i32, ptr %1055, align 4, !tbaa !5
  store i32 %1067, ptr %1054, align 4, !tbaa !5
  store i32 %1056, ptr %1055, align 4, !tbaa !5
  %1068 = getelementptr inbounds i32, ptr %1055, i64 -1
  br label %1069

1069:                                             ; preds = %1066, %1064
  %1070 = phi ptr [ %1068, %1066 ], [ %1055, %1064 ]
  %1071 = getelementptr inbounds i32, ptr %1054, i64 -1
  %1072 = icmp ult ptr %1032, %1071
  br i1 %1072, label %1053, label %1073, !llvm.loop !120

1073:                                             ; preds = %1035, %1053, %1069, %1030, %1050, %1048
  %1074 = phi ptr [ %1039, %1048 ], [ %1051, %1050 ], [ %1033, %1030 ], [ %1054, %1053 ], [ %1071, %1069 ], [ %1036, %1035 ]
  %1075 = phi ptr [ %1039, %1048 ], [ %1039, %1050 ], [ %1033, %1030 ], [ %1055, %1053 ], [ %1070, %1069 ], [ %1036, %1035 ]
  %1076 = icmp ult ptr %1032, %1074
  br i1 %1076, label %1077, label %1135

1077:                                             ; preds = %1073, %1131
  %1078 = phi ptr [ %1132, %1131 ], [ %1075, %1073 ]
  %1079 = phi ptr [ %1133, %1131 ], [ %1074, %1073 ]
  %1080 = phi ptr [ %1108, %1131 ], [ %1032, %1073 ]
  %1081 = phi ptr [ %1107, %1131 ], [ %1031, %1073 ]
  %1082 = load i32, ptr %1080, align 4, !tbaa !5
  %1083 = load i32, ptr %1079, align 4, !tbaa !5
  store i32 %1083, ptr %1080, align 4, !tbaa !5
  store i32 %1082, ptr %1079, align 4, !tbaa !5
  %1084 = getelementptr inbounds i32, ptr %1080, i64 1
  %1085 = icmp ult ptr %1084, %1079
  br i1 %1085, label %1086, label %1106

1086:                                             ; preds = %1077, %1102
  %1087 = phi ptr [ %1104, %1102 ], [ %1084, %1077 ]
  %1088 = phi ptr [ %1103, %1102 ], [ %1081, %1077 ]
  %1089 = load i32, ptr %1087, align 4, !tbaa !5
  %1090 = sext i32 %1089 to i64
  %1091 = getelementptr inbounds i32, ptr %1, i64 %1090
  %1092 = load i32, ptr %1091, align 4, !tbaa !5
  %1093 = sext i32 %1092 to i64
  %1094 = getelementptr inbounds i8, ptr %173, i64 %1093
  %1095 = load i8, ptr %1094, align 1, !tbaa !9
  %1096 = icmp ugt i8 %1095, %989
  br i1 %1096, label %1106, label %1097

1097:                                             ; preds = %1086
  %1098 = icmp eq i8 %1095, %989
  br i1 %1098, label %1099, label %1102

1099:                                             ; preds = %1097
  %1100 = load i32, ptr %1088, align 4, !tbaa !5
  store i32 %1100, ptr %1087, align 4, !tbaa !5
  store i32 %1089, ptr %1088, align 4, !tbaa !5
  %1101 = getelementptr inbounds i32, ptr %1088, i64 1
  br label %1102

1102:                                             ; preds = %1099, %1097
  %1103 = phi ptr [ %1101, %1099 ], [ %1088, %1097 ]
  %1104 = getelementptr inbounds i32, ptr %1087, i64 1
  %1105 = icmp ult ptr %1104, %1079
  br i1 %1105, label %1086, label %1106, !llvm.loop !121

1106:                                             ; preds = %1086, %1102, %1077
  %1107 = phi ptr [ %1081, %1077 ], [ %1088, %1086 ], [ %1103, %1102 ]
  %1108 = phi ptr [ %1084, %1077 ], [ %1087, %1086 ], [ %1104, %1102 ]
  %1109 = getelementptr inbounds i32, ptr %1079, i64 -1
  %1110 = icmp ult ptr %1108, %1109
  br i1 %1110, label %1111, label %1131

1111:                                             ; preds = %1106, %1127
  %1112 = phi ptr [ %1129, %1127 ], [ %1109, %1106 ]
  %1113 = phi ptr [ %1128, %1127 ], [ %1078, %1106 ]
  %1114 = load i32, ptr %1112, align 4, !tbaa !5
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds i32, ptr %1, i64 %1115
  %1117 = load i32, ptr %1116, align 4, !tbaa !5
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds i8, ptr %173, i64 %1118
  %1120 = load i8, ptr %1119, align 1, !tbaa !9
  %1121 = icmp ult i8 %1120, %989
  br i1 %1121, label %1131, label %1122

1122:                                             ; preds = %1111
  %1123 = icmp eq i8 %1120, %989
  br i1 %1123, label %1124, label %1127

1124:                                             ; preds = %1122
  %1125 = load i32, ptr %1113, align 4, !tbaa !5
  store i32 %1125, ptr %1112, align 4, !tbaa !5
  store i32 %1114, ptr %1113, align 4, !tbaa !5
  %1126 = getelementptr inbounds i32, ptr %1113, i64 -1
  br label %1127

1127:                                             ; preds = %1124, %1122
  %1128 = phi ptr [ %1126, %1124 ], [ %1113, %1122 ]
  %1129 = getelementptr inbounds i32, ptr %1112, i64 -1
  %1130 = icmp ult ptr %1108, %1129
  br i1 %1130, label %1111, label %1131, !llvm.loop !122

1131:                                             ; preds = %1111, %1127, %1106
  %1132 = phi ptr [ %1078, %1106 ], [ %1113, %1111 ], [ %1128, %1127 ]
  %1133 = phi ptr [ %1109, %1106 ], [ %1112, %1111 ], [ %1129, %1127 ]
  %1134 = icmp ult ptr %1108, %1133
  br i1 %1134, label %1077, label %1135, !llvm.loop !123

1135:                                             ; preds = %1131, %1073
  %1136 = phi ptr [ %1031, %1073 ], [ %1107, %1131 ]
  %1137 = phi ptr [ %1032, %1073 ], [ %1108, %1131 ]
  %1138 = phi ptr [ %1075, %1073 ], [ %1132, %1131 ]
  %1139 = icmp ugt ptr %1136, %1138
  br i1 %1139, label %1650, label %1140

1140:                                             ; preds = %1135
  %1141 = getelementptr inbounds i32, ptr %1137, i64 -1
  %1142 = ptrtoint ptr %1136 to i64
  %1143 = sub i64 %1142, %170
  %1144 = ashr exact i64 %1143, 2
  %1145 = add nsw i64 %1144, 2147483648
  %1146 = icmp ult i64 %1145, 4294967296
  br i1 %1146, label %1148, label %1147

1147:                                             ; preds = %1140
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 483, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1148:                                             ; preds = %1140
  %1149 = ptrtoint ptr %1137 to i64
  %1150 = sub i64 %1149, %1142
  %1151 = ashr exact i64 %1150, 2
  %1152 = add nsw i64 %1151, 2147483648
  %1153 = icmp ult i64 %1152, 4294967296
  br i1 %1153, label %1155, label %1154

1154:                                             ; preds = %1148
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 483, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1155:                                             ; preds = %1148
  %1156 = trunc i64 %1144 to i32
  %1157 = trunc i64 %1151 to i32
  %1158 = tail call i32 @llvm.smin.i32(i32 %1156, i32 %1157)
  %1159 = icmp sgt i32 %1158, 0
  br i1 %1159, label %1160, label %1216

1160:                                             ; preds = %1155
  %1161 = zext nneg i32 %1158 to i64
  %1162 = sub nsw i64 0, %1161
  %1163 = getelementptr i32, ptr %1137, i64 %1162
  %1164 = icmp ult i32 %1158, 8
  br i1 %1164, label %1202, label %1165

1165:                                             ; preds = %1160
  %1166 = getelementptr i8, ptr %166, i64 4
  %1167 = add nsw i32 %1158, -1
  %1168 = zext i32 %1167 to i64
  %1169 = shl nuw nsw i64 %1168, 2
  %1170 = getelementptr i8, ptr %1166, i64 %1169
  %1171 = getelementptr i8, ptr %1137, i64 4
  %1172 = sub nsw i64 %1168, %1161
  %1173 = shl nsw i64 %1172, 2
  %1174 = getelementptr i8, ptr %1171, i64 %1173
  %1175 = icmp ult ptr %166, %1174
  %1176 = icmp ult ptr %1163, %1170
  %1177 = and i1 %1175, %1176
  br i1 %1177, label %1202, label %1178

1178:                                             ; preds = %1165
  %1179 = and i64 %1161, 2147483640
  %1180 = trunc i64 %1179 to i32
  %1181 = sub nsw i32 %1158, %1180
  %1182 = shl nuw nsw i64 %1179, 2
  %1183 = getelementptr i8, ptr %1163, i64 %1182
  %1184 = shl nuw nsw i64 %1179, 2
  %1185 = getelementptr i8, ptr %166, i64 %1184
  br label %1186

1186:                                             ; preds = %1186, %1178
  %1187 = phi i64 [ 0, %1178 ], [ %1198, %1186 ]
  %1188 = shl i64 %1187, 2
  %1189 = getelementptr i8, ptr %1163, i64 %1188
  %1190 = shl i64 %1187, 2
  %1191 = getelementptr i8, ptr %166, i64 %1190
  %1192 = getelementptr i32, ptr %1191, i64 4
  %1193 = load <4 x i32>, ptr %1191, align 4, !tbaa !5, !alias.scope !124, !noalias !127
  %1194 = load <4 x i32>, ptr %1192, align 4, !tbaa !5, !alias.scope !124, !noalias !127
  %1195 = getelementptr i32, ptr %1189, i64 4
  %1196 = load <4 x i32>, ptr %1189, align 4, !tbaa !5, !alias.scope !127
  %1197 = load <4 x i32>, ptr %1195, align 4, !tbaa !5, !alias.scope !127
  store <4 x i32> %1196, ptr %1191, align 4, !tbaa !5, !alias.scope !124, !noalias !127
  store <4 x i32> %1197, ptr %1192, align 4, !tbaa !5, !alias.scope !124, !noalias !127
  store <4 x i32> %1193, ptr %1189, align 4, !tbaa !5, !alias.scope !127
  store <4 x i32> %1194, ptr %1195, align 4, !tbaa !5, !alias.scope !127
  %1198 = add nuw i64 %1187, 8
  %1199 = icmp eq i64 %1198, %1179
  br i1 %1199, label %1200, label %1186, !llvm.loop !129

1200:                                             ; preds = %1186
  %1201 = icmp eq i64 %1179, %1161
  br i1 %1201, label %1216, label %1202

1202:                                             ; preds = %1165, %1160, %1200
  %1203 = phi i32 [ %1158, %1165 ], [ %1158, %1160 ], [ %1181, %1200 ]
  %1204 = phi ptr [ %1163, %1165 ], [ %1163, %1160 ], [ %1183, %1200 ]
  %1205 = phi ptr [ %166, %1165 ], [ %166, %1160 ], [ %1185, %1200 ]
  br label %1206

1206:                                             ; preds = %1202, %1206
  %1207 = phi i32 [ %1212, %1206 ], [ %1203, %1202 ]
  %1208 = phi ptr [ %1214, %1206 ], [ %1204, %1202 ]
  %1209 = phi ptr [ %1213, %1206 ], [ %1205, %1202 ]
  %1210 = load i32, ptr %1209, align 4, !tbaa !5
  %1211 = load i32, ptr %1208, align 4, !tbaa !5
  store i32 %1211, ptr %1209, align 4, !tbaa !5
  store i32 %1210, ptr %1208, align 4, !tbaa !5
  %1212 = add nsw i32 %1207, -1
  %1213 = getelementptr inbounds i32, ptr %1209, i64 1
  %1214 = getelementptr inbounds i32, ptr %1208, i64 1
  %1215 = icmp ugt i32 %1207, 1
  br i1 %1215, label %1206, label %1216, !llvm.loop !130

1216:                                             ; preds = %1206, %1200, %1155
  %1217 = ptrtoint ptr %1138 to i64
  %1218 = ptrtoint ptr %1141 to i64
  %1219 = sub i64 %1217, %1218
  %1220 = ashr exact i64 %1219, 2
  %1221 = add nsw i64 %1220, 2147483648
  %1222 = icmp ult i64 %1221, 4294967296
  br i1 %1222, label %1224, label %1223

1223:                                             ; preds = %1216
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.src, i32 noundef 485, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1224:                                             ; preds = %1216
  %1225 = sub i64 %169, %1217
  %1226 = ashr exact i64 %1225, 2
  %1227 = add nsw i64 %1226, 2147483647
  %1228 = icmp ult i64 %1227, 4294967296
  br i1 %1228, label %1230, label %1229

1229:                                             ; preds = %1224
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.src, i32 noundef 485, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1230:                                             ; preds = %1224
  %1231 = trunc i64 %1220 to i32
  %1232 = trunc i64 %1226 to i32
  %1233 = add i32 %1232, -1
  %1234 = tail call i32 @llvm.smin.i32(i32 %1233, i32 %1231)
  %1235 = icmp sgt i32 %1234, 0
  br i1 %1235, label %1236, label %1292

1236:                                             ; preds = %1230
  %1237 = zext nneg i32 %1234 to i64
  %1238 = sub nsw i64 0, %1237
  %1239 = getelementptr i32, ptr %164, i64 %1238
  %1240 = icmp ult i32 %1234, 8
  br i1 %1240, label %1278, label %1241

1241:                                             ; preds = %1236
  %1242 = getelementptr i8, ptr %1137, i64 4
  %1243 = add nsw i32 %1234, -1
  %1244 = zext i32 %1243 to i64
  %1245 = shl nuw nsw i64 %1244, 2
  %1246 = getelementptr i8, ptr %1242, i64 %1245
  %1247 = getelementptr i8, ptr %164, i64 4
  %1248 = sub nsw i64 %1244, %1237
  %1249 = shl nsw i64 %1248, 2
  %1250 = getelementptr i8, ptr %1247, i64 %1249
  %1251 = icmp ult ptr %1137, %1250
  %1252 = icmp ult ptr %1239, %1246
  %1253 = and i1 %1251, %1252
  br i1 %1253, label %1278, label %1254

1254:                                             ; preds = %1241
  %1255 = and i64 %1237, 2147483640
  %1256 = trunc i64 %1255 to i32
  %1257 = sub nsw i32 %1234, %1256
  %1258 = shl nuw nsw i64 %1255, 2
  %1259 = getelementptr i8, ptr %1239, i64 %1258
  %1260 = shl nuw nsw i64 %1255, 2
  %1261 = getelementptr i8, ptr %1137, i64 %1260
  br label %1262

1262:                                             ; preds = %1262, %1254
  %1263 = phi i64 [ 0, %1254 ], [ %1274, %1262 ]
  %1264 = shl i64 %1263, 2
  %1265 = getelementptr i8, ptr %1239, i64 %1264
  %1266 = shl i64 %1263, 2
  %1267 = getelementptr i8, ptr %1137, i64 %1266
  %1268 = getelementptr i32, ptr %1267, i64 4
  %1269 = load <4 x i32>, ptr %1267, align 4, !tbaa !5, !alias.scope !131, !noalias !134
  %1270 = load <4 x i32>, ptr %1268, align 4, !tbaa !5, !alias.scope !131, !noalias !134
  %1271 = getelementptr i32, ptr %1265, i64 4
  %1272 = load <4 x i32>, ptr %1265, align 4, !tbaa !5, !alias.scope !134
  %1273 = load <4 x i32>, ptr %1271, align 4, !tbaa !5, !alias.scope !134
  store <4 x i32> %1272, ptr %1267, align 4, !tbaa !5, !alias.scope !131, !noalias !134
  store <4 x i32> %1273, ptr %1268, align 4, !tbaa !5, !alias.scope !131, !noalias !134
  store <4 x i32> %1269, ptr %1265, align 4, !tbaa !5, !alias.scope !134
  store <4 x i32> %1270, ptr %1271, align 4, !tbaa !5, !alias.scope !134
  %1274 = add nuw i64 %1263, 8
  %1275 = icmp eq i64 %1274, %1255
  br i1 %1275, label %1276, label %1262, !llvm.loop !136

1276:                                             ; preds = %1262
  %1277 = icmp eq i64 %1255, %1237
  br i1 %1277, label %1292, label %1278

1278:                                             ; preds = %1241, %1236, %1276
  %1279 = phi i32 [ %1234, %1241 ], [ %1234, %1236 ], [ %1257, %1276 ]
  %1280 = phi ptr [ %1239, %1241 ], [ %1239, %1236 ], [ %1259, %1276 ]
  %1281 = phi ptr [ %1137, %1241 ], [ %1137, %1236 ], [ %1261, %1276 ]
  br label %1282

1282:                                             ; preds = %1278, %1282
  %1283 = phi i32 [ %1288, %1282 ], [ %1279, %1278 ]
  %1284 = phi ptr [ %1290, %1282 ], [ %1280, %1278 ]
  %1285 = phi ptr [ %1289, %1282 ], [ %1281, %1278 ]
  %1286 = load i32, ptr %1285, align 4, !tbaa !5
  %1287 = load i32, ptr %1284, align 4, !tbaa !5
  store i32 %1287, ptr %1285, align 4, !tbaa !5
  store i32 %1286, ptr %1284, align 4, !tbaa !5
  %1288 = add nsw i32 %1283, -1
  %1289 = getelementptr inbounds i32, ptr %1285, i64 1
  %1290 = getelementptr inbounds i32, ptr %1284, i64 1
  %1291 = icmp ugt i32 %1283, 1
  br i1 %1291, label %1282, label %1292, !llvm.loop !137

1292:                                             ; preds = %1282, %1276, %1230
  %1293 = getelementptr inbounds i32, ptr %166, i64 %1151
  %1294 = sub nsw i64 0, %1220
  %1295 = getelementptr inbounds i32, ptr %164, i64 %1294
  %1296 = load i32, ptr %1293, align 4, !tbaa !5
  %1297 = sext i32 %1296 to i64
  %1298 = getelementptr inbounds i32, ptr %1, i64 %1297
  %1299 = load i32, ptr %1298, align 4, !tbaa !5
  %1300 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1299, i32 -1)
  %1301 = extractvalue { i32, i1 } %1300, 1, !nosanitize !10
  br i1 %1301, label %145, label %1302, !nosanitize !10

1302:                                             ; preds = %1292
  %1303 = extractvalue { i32, i1 } %1300, 0, !nosanitize !10
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds i8, ptr %173, i64 %1304
  %1306 = load i8, ptr %1305, align 1, !tbaa !9
  %1307 = icmp ugt i8 %989, %1306
  br i1 %1307, label %1308, label %1377

1308:                                             ; preds = %1302
  %1309 = getelementptr inbounds i32, ptr %1293, i64 -1
  br label %1310

1310:                                             ; preds = %1369, %1308
  %1311 = phi ptr [ %1295, %1308 ], [ %1346, %1369 ]
  %1312 = phi ptr [ %1309, %1308 ], [ %1343, %1369 ]
  %1313 = getelementptr inbounds i32, ptr %1312, i64 1
  %1314 = icmp ult ptr %1313, %1311
  br i1 %1314, label %1315, label %1342

1315:                                             ; preds = %1310, %1338
  %1316 = phi ptr [ %1340, %1338 ], [ %1313, %1310 ]
  %1317 = load i32, ptr %1316, align 4, !tbaa !5
  %1318 = sext i32 %1317 to i64
  %1319 = getelementptr inbounds i32, ptr %1, i64 %1318
  %1320 = load i32, ptr %1319, align 4, !tbaa !5
  %1321 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1320, i32 %165), !nosanitize !10
  %1322 = extractvalue { i32, i1 } %1321, 0, !nosanitize !10
  %1323 = extractvalue { i32, i1 } %1321, 1, !nosanitize !10
  br i1 %1323, label %1324, label %1325, !nosanitize !10

1324:                                             ; preds = %1328, %1325, %1315, %1359, %1356, %1348
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1325:                                             ; preds = %1315
  %1326 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1317, i32 1), !nosanitize !10
  %1327 = extractvalue { i32, i1 } %1326, 1, !nosanitize !10
  br i1 %1327, label %1324, label %1328, !nosanitize !10

1328:                                             ; preds = %1325
  %1329 = extractvalue { i32, i1 } %1326, 0, !nosanitize !10
  %1330 = sext i32 %1329 to i64
  %1331 = getelementptr inbounds i32, ptr %1, i64 %1330
  %1332 = load i32, ptr %1331, align 4, !tbaa !5
  %1333 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1332, i32 1), !nosanitize !10
  %1334 = extractvalue { i32, i1 } %1333, 1, !nosanitize !10
  br i1 %1334, label %1324, label %1335, !nosanitize !10

1335:                                             ; preds = %1328
  %1336 = extractvalue { i32, i1 } %1333, 0, !nosanitize !10
  %1337 = icmp slt i32 %1322, %1336
  br i1 %1337, label %1342, label %1338

1338:                                             ; preds = %1335
  %1339 = xor i32 %1317, -1
  store i32 %1339, ptr %1316, align 4, !tbaa !5
  %1340 = getelementptr inbounds i32, ptr %1316, i64 1
  %1341 = icmp ult ptr %1340, %1311
  br i1 %1341, label %1315, label %1342, !llvm.loop !115

1342:                                             ; preds = %1338, %1335, %1310
  %1343 = phi ptr [ %1313, %1310 ], [ %1316, %1335 ], [ %1340, %1338 ]
  br label %1344

1344:                                             ; preds = %1366, %1342
  %1345 = phi ptr [ %1311, %1342 ], [ %1346, %1366 ]
  %1346 = getelementptr inbounds i32, ptr %1345, i64 -1
  %1347 = icmp ult ptr %1343, %1346
  br i1 %1347, label %1348, label %1372

1348:                                             ; preds = %1344
  %1349 = load i32, ptr %1346, align 4, !tbaa !5
  %1350 = sext i32 %1349 to i64
  %1351 = getelementptr inbounds i32, ptr %1, i64 %1350
  %1352 = load i32, ptr %1351, align 4, !tbaa !5
  %1353 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1352, i32 %165), !nosanitize !10
  %1354 = extractvalue { i32, i1 } %1353, 0, !nosanitize !10
  %1355 = extractvalue { i32, i1 } %1353, 1, !nosanitize !10
  br i1 %1355, label %1324, label %1356, !nosanitize !10

1356:                                             ; preds = %1348
  %1357 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1349, i32 1), !nosanitize !10
  %1358 = extractvalue { i32, i1 } %1357, 1, !nosanitize !10
  br i1 %1358, label %1324, label %1359, !nosanitize !10

1359:                                             ; preds = %1356
  %1360 = extractvalue { i32, i1 } %1357, 0, !nosanitize !10
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds i32, ptr %1, i64 %1361
  %1363 = load i32, ptr %1362, align 4, !tbaa !5
  %1364 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1363, i32 1), !nosanitize !10
  %1365 = extractvalue { i32, i1 } %1364, 1, !nosanitize !10
  br i1 %1365, label %1324, label %1366, !nosanitize !10

1366:                                             ; preds = %1359
  %1367 = extractvalue { i32, i1 } %1364, 0, !nosanitize !10
  %1368 = icmp slt i32 %1354, %1367
  br i1 %1368, label %1344, label %1369, !llvm.loop !116

1369:                                             ; preds = %1366
  %1370 = xor i32 %1349, -1
  %1371 = load i32, ptr %1343, align 4, !tbaa !5
  store i32 %1371, ptr %1346, align 4, !tbaa !5
  store i32 %1370, ptr %1343, align 4, !tbaa !5
  br label %1310

1372:                                             ; preds = %1344
  %1373 = icmp ugt ptr %1343, %1293
  br i1 %1373, label %1374, label %1377

1374:                                             ; preds = %1372
  %1375 = load i32, ptr %1293, align 4, !tbaa !5
  %1376 = xor i32 %1375, -1
  store i32 %1376, ptr %1293, align 4, !tbaa !5
  br label %1377

1377:                                             ; preds = %1374, %1372, %1302
  %1378 = phi ptr [ %1293, %1302 ], [ %1343, %1372 ], [ %1343, %1374 ]
  %1379 = ptrtoint ptr %1295 to i64
  %1380 = icmp sgt i64 %1151, %1220
  %1381 = ptrtoint ptr %1378 to i64
  %1382 = sub i64 %1379, %1381
  %1383 = ashr exact i64 %1382, 2
  br i1 %1380, label %1517, label %1384

1384:                                             ; preds = %1377
  %1385 = icmp sgt i64 %1220, %1383
  br i1 %1385, label %1430, label %1386

1386:                                             ; preds = %1384
  %1387 = icmp slt i32 %167, 16
  br i1 %1387, label %1389, label %1388

1388:                                             ; preds = %1386
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 493, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1389:                                             ; preds = %1386
  %1390 = sext i32 %167 to i64
  %1391 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1390
  store ptr %1378, ptr %1391, align 8, !tbaa !106
  %1392 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1390, i32 1
  store ptr %1295, ptr %1392, align 8, !tbaa !108
  %1393 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %165, i32 1), !nosanitize !10
  %1394 = extractvalue { i32, i1 } %1393, 1, !nosanitize !10
  br i1 %1394, label %548, label %1395, !nosanitize !10

1395:                                             ; preds = %1389
  %1396 = extractvalue { i32, i1 } %1393, 0, !nosanitize !10
  %1397 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1390, i32 2
  store i32 %1396, ptr %1397, align 8, !tbaa !109
  %1398 = add nsw i64 %1383, 2147483648
  %1399 = icmp ult i64 %1398, 4294967296
  br i1 %1399, label %1401, label %1400

1400:                                             ; preds = %1395
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 493, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1401:                                             ; preds = %1395
  %1402 = and i64 %1382, 261120
  %1403 = icmp eq i64 %1402, 0
  br i1 %1403, label %1413, label %1404

1404:                                             ; preds = %1401
  %1405 = lshr i64 %1383, 8
  %1406 = and i64 %1405, 255
  %1407 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1406
  %1408 = load i32, ptr %1407, align 4, !tbaa !5
  %1409 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1408, i32 8), !nosanitize !10
  %1410 = extractvalue { i32, i1 } %1409, 0, !nosanitize !10
  %1411 = extractvalue { i32, i1 } %1409, 1, !nosanitize !10
  br i1 %1411, label %1412, label %1417, !nosanitize !10

1412:                                             ; preds = %1404
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1413:                                             ; preds = %1401
  %1414 = and i64 %1383, 255
  %1415 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1414
  %1416 = load i32, ptr %1415, align 4, !tbaa !5
  br label %1417

1417:                                             ; preds = %1404, %1413
  %1418 = phi i32 [ %1410, %1404 ], [ %1416, %1413 ]
  %1419 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1390, i32 3
  store i32 %1418, ptr %1419, align 4, !tbaa !110
  %1420 = icmp eq i32 %167, 15
  br i1 %1420, label %1421, label %1422

1421:                                             ; preds = %1417
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 494, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1422:                                             ; preds = %1417
  %1423 = add nsw i32 %167, 1
  %1424 = sext i32 %1423 to i64
  %1425 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1424
  store ptr %1295, ptr %1425, align 8, !tbaa !106
  %1426 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1424, i32 1
  store ptr %164, ptr %1426, align 8, !tbaa !108
  %1427 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1424, i32 2
  store i32 %165, ptr %1427, align 8, !tbaa !109
  %1428 = add nsw i32 %167, 2
  %1429 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1424, i32 3
  store i32 %175, ptr %1429, align 4, !tbaa !110
  br label %1766

1430:                                             ; preds = %1384
  %1431 = icmp sgt i64 %1151, %1383
  %1432 = icmp slt i32 %167, 16
  br i1 %1431, label %1476, label %1433

1433:                                             ; preds = %1430
  br i1 %1432, label %1435, label %1434

1434:                                             ; preds = %1433
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1435:                                             ; preds = %1433
  %1436 = sext i32 %167 to i64
  %1437 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1436
  store ptr %1295, ptr %1437, align 8, !tbaa !106
  %1438 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1436, i32 1
  store ptr %164, ptr %1438, align 8, !tbaa !108
  %1439 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1436, i32 2
  store i32 %165, ptr %1439, align 8, !tbaa !109
  %1440 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1436, i32 3
  store i32 %175, ptr %1440, align 4, !tbaa !110
  %1441 = icmp eq i32 %167, 15
  br i1 %1441, label %1442, label %1443

1442:                                             ; preds = %1435
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1443:                                             ; preds = %1435
  %1444 = add nsw i32 %167, 1
  %1445 = sext i32 %1444 to i64
  %1446 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1445
  store ptr %1378, ptr %1446, align 8, !tbaa !106
  %1447 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1445, i32 1
  store ptr %1295, ptr %1447, align 8, !tbaa !108
  %1448 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %165, i32 1), !nosanitize !10
  %1449 = extractvalue { i32, i1 } %1448, 1, !nosanitize !10
  br i1 %1449, label %548, label %1450, !nosanitize !10

1450:                                             ; preds = %1443
  %1451 = extractvalue { i32, i1 } %1448, 0, !nosanitize !10
  %1452 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1445, i32 2
  store i32 %1451, ptr %1452, align 8, !tbaa !109
  %1453 = add nsw i64 %1383, 2147483648
  %1454 = icmp ult i64 %1453, 4294967296
  br i1 %1454, label %1456, label %1455

1455:                                             ; preds = %1450
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1456:                                             ; preds = %1450
  %1457 = and i64 %1382, 261120
  %1458 = icmp eq i64 %1457, 0
  br i1 %1458, label %1468, label %1459

1459:                                             ; preds = %1456
  %1460 = lshr i64 %1383, 8
  %1461 = and i64 %1460, 255
  %1462 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1461
  %1463 = load i32, ptr %1462, align 4, !tbaa !5
  %1464 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1463, i32 8), !nosanitize !10
  %1465 = extractvalue { i32, i1 } %1464, 0, !nosanitize !10
  %1466 = extractvalue { i32, i1 } %1464, 1, !nosanitize !10
  br i1 %1466, label %1467, label %1472, !nosanitize !10

1467:                                             ; preds = %1459
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1468:                                             ; preds = %1456
  %1469 = and i64 %1383, 255
  %1470 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1469
  %1471 = load i32, ptr %1470, align 4, !tbaa !5
  br label %1472

1472:                                             ; preds = %1459, %1468
  %1473 = phi i32 [ %1465, %1459 ], [ %1471, %1468 ]
  %1474 = add nsw i32 %167, 2
  %1475 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1445, i32 3
  store i32 %1473, ptr %1475, align 4, !tbaa !110
  br label %1766

1476:                                             ; preds = %1430
  br i1 %1432, label %1478, label %1477

1477:                                             ; preds = %1476
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 501, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1478:                                             ; preds = %1476
  %1479 = sext i32 %167 to i64
  %1480 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1479
  store ptr %1295, ptr %1480, align 8, !tbaa !106
  %1481 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1479, i32 1
  store ptr %164, ptr %1481, align 8, !tbaa !108
  %1482 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1479, i32 2
  store i32 %165, ptr %1482, align 8, !tbaa !109
  %1483 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1479, i32 3
  store i32 %175, ptr %1483, align 4, !tbaa !110
  %1484 = icmp eq i32 %167, 15
  br i1 %1484, label %1485, label %1486

1485:                                             ; preds = %1478
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 502, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1486:                                             ; preds = %1478
  %1487 = add nsw i32 %167, 1
  %1488 = sext i32 %1487 to i64
  %1489 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1488
  store ptr %166, ptr %1489, align 8, !tbaa !106
  %1490 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1488, i32 1
  store ptr %1293, ptr %1490, align 8, !tbaa !108
  %1491 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1488, i32 2
  store i32 %165, ptr %1491, align 8, !tbaa !109
  %1492 = add nsw i32 %167, 2
  %1493 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1488, i32 3
  store i32 %175, ptr %1493, align 4, !tbaa !110
  %1494 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %165, i32 1), !nosanitize !10
  %1495 = extractvalue { i32, i1 } %1494, 0, !nosanitize !10
  %1496 = extractvalue { i32, i1 } %1494, 1, !nosanitize !10
  br i1 %1496, label %548, label %1497, !nosanitize !10

1497:                                             ; preds = %1486
  %1498 = add nsw i64 %1383, 2147483648
  %1499 = icmp ult i64 %1498, 4294967296
  br i1 %1499, label %1501, label %1500

1500:                                             ; preds = %1497
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 503, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1501:                                             ; preds = %1497
  %1502 = and i64 %1382, 261120
  %1503 = icmp eq i64 %1502, 0
  br i1 %1503, label %1513, label %1504

1504:                                             ; preds = %1501
  %1505 = lshr i64 %1383, 8
  %1506 = and i64 %1505, 255
  %1507 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1506
  %1508 = load i32, ptr %1507, align 4, !tbaa !5
  %1509 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1508, i32 8), !nosanitize !10
  %1510 = extractvalue { i32, i1 } %1509, 0, !nosanitize !10
  %1511 = extractvalue { i32, i1 } %1509, 1, !nosanitize !10
  br i1 %1511, label %1512, label %1766, !nosanitize !10

1512:                                             ; preds = %1504
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1513:                                             ; preds = %1501
  %1514 = and i64 %1383, 255
  %1515 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1514
  %1516 = load i32, ptr %1515, align 4, !tbaa !5
  br label %1766

1517:                                             ; preds = %1377
  %1518 = icmp sgt i64 %1151, %1383
  br i1 %1518, label %1563, label %1519

1519:                                             ; preds = %1517
  %1520 = icmp slt i32 %167, 16
  br i1 %1520, label %1522, label %1521

1521:                                             ; preds = %1519
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1522:                                             ; preds = %1519
  %1523 = sext i32 %167 to i64
  %1524 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1523
  store ptr %1378, ptr %1524, align 8, !tbaa !106
  %1525 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1523, i32 1
  store ptr %1295, ptr %1525, align 8, !tbaa !108
  %1526 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %165, i32 1), !nosanitize !10
  %1527 = extractvalue { i32, i1 } %1526, 1, !nosanitize !10
  br i1 %1527, label %548, label %1528, !nosanitize !10

1528:                                             ; preds = %1522
  %1529 = extractvalue { i32, i1 } %1526, 0, !nosanitize !10
  %1530 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1523, i32 2
  store i32 %1529, ptr %1530, align 8, !tbaa !109
  %1531 = add nsw i64 %1383, 2147483648
  %1532 = icmp ult i64 %1531, 4294967296
  br i1 %1532, label %1534, label %1533

1533:                                             ; preds = %1528
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1534:                                             ; preds = %1528
  %1535 = and i64 %1382, 261120
  %1536 = icmp eq i64 %1535, 0
  br i1 %1536, label %1546, label %1537

1537:                                             ; preds = %1534
  %1538 = lshr i64 %1383, 8
  %1539 = and i64 %1538, 255
  %1540 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1539
  %1541 = load i32, ptr %1540, align 4, !tbaa !5
  %1542 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1541, i32 8), !nosanitize !10
  %1543 = extractvalue { i32, i1 } %1542, 0, !nosanitize !10
  %1544 = extractvalue { i32, i1 } %1542, 1, !nosanitize !10
  br i1 %1544, label %1545, label %1550, !nosanitize !10

1545:                                             ; preds = %1537
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1546:                                             ; preds = %1534
  %1547 = and i64 %1383, 255
  %1548 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1547
  %1549 = load i32, ptr %1548, align 4, !tbaa !5
  br label %1550

1550:                                             ; preds = %1537, %1546
  %1551 = phi i32 [ %1543, %1537 ], [ %1549, %1546 ]
  %1552 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1523, i32 3
  store i32 %1551, ptr %1552, align 4, !tbaa !110
  %1553 = icmp eq i32 %167, 15
  br i1 %1553, label %1554, label %1555

1554:                                             ; preds = %1550
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 508, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1555:                                             ; preds = %1550
  %1556 = add nsw i32 %167, 1
  %1557 = sext i32 %1556 to i64
  %1558 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1557
  store ptr %166, ptr %1558, align 8, !tbaa !106
  %1559 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1557, i32 1
  store ptr %1293, ptr %1559, align 8, !tbaa !108
  %1560 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1557, i32 2
  store i32 %165, ptr %1560, align 8, !tbaa !109
  %1561 = add nsw i32 %167, 2
  %1562 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1557, i32 3
  store i32 %175, ptr %1562, align 4, !tbaa !110
  br label %1766

1563:                                             ; preds = %1517
  %1564 = icmp sgt i64 %1220, %1383
  %1565 = icmp slt i32 %167, 16
  br i1 %1564, label %1609, label %1566

1566:                                             ; preds = %1563
  br i1 %1565, label %1568, label %1567

1567:                                             ; preds = %1566
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 511, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1568:                                             ; preds = %1566
  %1569 = sext i32 %167 to i64
  %1570 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1569
  store ptr %166, ptr %1570, align 8, !tbaa !106
  %1571 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1569, i32 1
  store ptr %1293, ptr %1571, align 8, !tbaa !108
  %1572 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1569, i32 2
  store i32 %165, ptr %1572, align 8, !tbaa !109
  %1573 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1569, i32 3
  store i32 %175, ptr %1573, align 4, !tbaa !110
  %1574 = icmp eq i32 %167, 15
  br i1 %1574, label %1575, label %1576

1575:                                             ; preds = %1568
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 512, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1576:                                             ; preds = %1568
  %1577 = add nsw i32 %167, 1
  %1578 = sext i32 %1577 to i64
  %1579 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1578
  store ptr %1378, ptr %1579, align 8, !tbaa !106
  %1580 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1578, i32 1
  store ptr %1295, ptr %1580, align 8, !tbaa !108
  %1581 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %165, i32 1), !nosanitize !10
  %1582 = extractvalue { i32, i1 } %1581, 1, !nosanitize !10
  br i1 %1582, label %548, label %1583, !nosanitize !10

1583:                                             ; preds = %1576
  %1584 = extractvalue { i32, i1 } %1581, 0, !nosanitize !10
  %1585 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1578, i32 2
  store i32 %1584, ptr %1585, align 8, !tbaa !109
  %1586 = add nsw i64 %1383, 2147483648
  %1587 = icmp ult i64 %1586, 4294967296
  br i1 %1587, label %1589, label %1588

1588:                                             ; preds = %1583
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 512, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1589:                                             ; preds = %1583
  %1590 = and i64 %1382, 261120
  %1591 = icmp eq i64 %1590, 0
  br i1 %1591, label %1601, label %1592

1592:                                             ; preds = %1589
  %1593 = lshr i64 %1383, 8
  %1594 = and i64 %1593, 255
  %1595 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1594
  %1596 = load i32, ptr %1595, align 4, !tbaa !5
  %1597 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1596, i32 8), !nosanitize !10
  %1598 = extractvalue { i32, i1 } %1597, 0, !nosanitize !10
  %1599 = extractvalue { i32, i1 } %1597, 1, !nosanitize !10
  br i1 %1599, label %1600, label %1605, !nosanitize !10

1600:                                             ; preds = %1592
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1601:                                             ; preds = %1589
  %1602 = and i64 %1383, 255
  %1603 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1602
  %1604 = load i32, ptr %1603, align 4, !tbaa !5
  br label %1605

1605:                                             ; preds = %1592, %1601
  %1606 = phi i32 [ %1598, %1592 ], [ %1604, %1601 ]
  %1607 = add nsw i32 %167, 2
  %1608 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1578, i32 3
  store i32 %1606, ptr %1608, align 4, !tbaa !110
  br label %1766

1609:                                             ; preds = %1563
  br i1 %1565, label %1611, label %1610

1610:                                             ; preds = %1609
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 515, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1611:                                             ; preds = %1609
  %1612 = sext i32 %167 to i64
  %1613 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1612
  store ptr %166, ptr %1613, align 8, !tbaa !106
  %1614 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1612, i32 1
  store ptr %1293, ptr %1614, align 8, !tbaa !108
  %1615 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1612, i32 2
  store i32 %165, ptr %1615, align 8, !tbaa !109
  %1616 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1612, i32 3
  store i32 %175, ptr %1616, align 4, !tbaa !110
  %1617 = icmp eq i32 %167, 15
  br i1 %1617, label %1618, label %1619

1618:                                             ; preds = %1611
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1619:                                             ; preds = %1611
  %1620 = add nsw i32 %167, 1
  %1621 = sext i32 %1620 to i64
  %1622 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1621
  store ptr %1295, ptr %1622, align 8, !tbaa !106
  %1623 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1621, i32 1
  store ptr %164, ptr %1623, align 8, !tbaa !108
  %1624 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1621, i32 2
  store i32 %165, ptr %1624, align 8, !tbaa !109
  %1625 = add nsw i32 %167, 2
  %1626 = getelementptr inbounds [16 x %struct.anon], ptr %5, i64 0, i64 %1621, i32 3
  store i32 %175, ptr %1626, align 4, !tbaa !110
  %1627 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %165, i32 1), !nosanitize !10
  %1628 = extractvalue { i32, i1 } %1627, 0, !nosanitize !10
  %1629 = extractvalue { i32, i1 } %1627, 1, !nosanitize !10
  br i1 %1629, label %548, label %1630, !nosanitize !10

1630:                                             ; preds = %1619
  %1631 = add nsw i64 %1383, 2147483648
  %1632 = icmp ult i64 %1631, 4294967296
  br i1 %1632, label %1634, label %1633

1633:                                             ; preds = %1630
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.src, i32 noundef 517, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1634:                                             ; preds = %1630
  %1635 = and i64 %1382, 261120
  %1636 = icmp eq i64 %1635, 0
  br i1 %1636, label %1646, label %1637

1637:                                             ; preds = %1634
  %1638 = lshr i64 %1383, 8
  %1639 = and i64 %1638, 255
  %1640 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1639
  %1641 = load i32, ptr %1640, align 4, !tbaa !5
  %1642 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1641, i32 8), !nosanitize !10
  %1643 = extractvalue { i32, i1 } %1642, 0, !nosanitize !10
  %1644 = extractvalue { i32, i1 } %1642, 1, !nosanitize !10
  br i1 %1644, label %1645, label %1766, !nosanitize !10

1645:                                             ; preds = %1637
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1646:                                             ; preds = %1634
  %1647 = and i64 %1383, 255
  %1648 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1647
  %1649 = load i32, ptr %1648, align 4, !tbaa !5
  br label %1766

1650:                                             ; preds = %1135
  %1651 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %175, i32 1), !nosanitize !10
  %1652 = extractvalue { i32, i1 } %1651, 0, !nosanitize !10
  %1653 = extractvalue { i32, i1 } %1651, 1, !nosanitize !10
  br i1 %1653, label %548, label %1654, !nosanitize !10

1654:                                             ; preds = %1650
  %1655 = load i32, ptr %166, align 4, !tbaa !5
  %1656 = sext i32 %1655 to i64
  %1657 = getelementptr inbounds i32, ptr %1, i64 %1656
  %1658 = load i32, ptr %1657, align 4, !tbaa !5
  %1659 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1658, i32 -1)
  %1660 = extractvalue { i32, i1 } %1659, 1, !nosanitize !10
  br i1 %1660, label %145, label %1661, !nosanitize !10

1661:                                             ; preds = %1654
  %1662 = extractvalue { i32, i1 } %1659, 0, !nosanitize !10
  %1663 = sext i32 %1662 to i64
  %1664 = getelementptr inbounds i8, ptr %173, i64 %1663
  %1665 = load i8, ptr %1664, align 1, !tbaa !9
  %1666 = icmp ult i8 %1665, %989
  br i1 %1666, label %1667, label %1759

1667:                                             ; preds = %1661
  %1668 = getelementptr inbounds i32, ptr %166, i64 -1
  br label %1669

1669:                                             ; preds = %1728, %1667
  %1670 = phi ptr [ %164, %1667 ], [ %1705, %1728 ]
  %1671 = phi ptr [ %1668, %1667 ], [ %1702, %1728 ]
  %1672 = getelementptr inbounds i32, ptr %1671, i64 1
  %1673 = icmp ult ptr %1672, %1670
  br i1 %1673, label %1674, label %1701

1674:                                             ; preds = %1669, %1697
  %1675 = phi ptr [ %1699, %1697 ], [ %1672, %1669 ]
  %1676 = load i32, ptr %1675, align 4, !tbaa !5
  %1677 = sext i32 %1676 to i64
  %1678 = getelementptr inbounds i32, ptr %1, i64 %1677
  %1679 = load i32, ptr %1678, align 4, !tbaa !5
  %1680 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1679, i32 %165), !nosanitize !10
  %1681 = extractvalue { i32, i1 } %1680, 0, !nosanitize !10
  %1682 = extractvalue { i32, i1 } %1680, 1, !nosanitize !10
  br i1 %1682, label %1683, label %1684, !nosanitize !10

1683:                                             ; preds = %1687, %1684, %1674, %1718, %1715, %1707
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1684:                                             ; preds = %1674
  %1685 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1676, i32 1), !nosanitize !10
  %1686 = extractvalue { i32, i1 } %1685, 1, !nosanitize !10
  br i1 %1686, label %1683, label %1687, !nosanitize !10

1687:                                             ; preds = %1684
  %1688 = extractvalue { i32, i1 } %1685, 0, !nosanitize !10
  %1689 = sext i32 %1688 to i64
  %1690 = getelementptr inbounds i32, ptr %1, i64 %1689
  %1691 = load i32, ptr %1690, align 4, !tbaa !5
  %1692 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1691, i32 1), !nosanitize !10
  %1693 = extractvalue { i32, i1 } %1692, 1, !nosanitize !10
  br i1 %1693, label %1683, label %1694, !nosanitize !10

1694:                                             ; preds = %1687
  %1695 = extractvalue { i32, i1 } %1692, 0, !nosanitize !10
  %1696 = icmp slt i32 %1681, %1695
  br i1 %1696, label %1701, label %1697

1697:                                             ; preds = %1694
  %1698 = xor i32 %1676, -1
  store i32 %1698, ptr %1675, align 4, !tbaa !5
  %1699 = getelementptr inbounds i32, ptr %1675, i64 1
  %1700 = icmp ult ptr %1699, %1670
  br i1 %1700, label %1674, label %1701, !llvm.loop !115

1701:                                             ; preds = %1697, %1694, %1669
  %1702 = phi ptr [ %1672, %1669 ], [ %1675, %1694 ], [ %1699, %1697 ]
  br label %1703

1703:                                             ; preds = %1725, %1701
  %1704 = phi ptr [ %1670, %1701 ], [ %1705, %1725 ]
  %1705 = getelementptr inbounds i32, ptr %1704, i64 -1
  %1706 = icmp ult ptr %1702, %1705
  br i1 %1706, label %1707, label %1731

1707:                                             ; preds = %1703
  %1708 = load i32, ptr %1705, align 4, !tbaa !5
  %1709 = sext i32 %1708 to i64
  %1710 = getelementptr inbounds i32, ptr %1, i64 %1709
  %1711 = load i32, ptr %1710, align 4, !tbaa !5
  %1712 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1711, i32 %165), !nosanitize !10
  %1713 = extractvalue { i32, i1 } %1712, 0, !nosanitize !10
  %1714 = extractvalue { i32, i1 } %1712, 1, !nosanitize !10
  br i1 %1714, label %1683, label %1715, !nosanitize !10

1715:                                             ; preds = %1707
  %1716 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1708, i32 1), !nosanitize !10
  %1717 = extractvalue { i32, i1 } %1716, 1, !nosanitize !10
  br i1 %1717, label %1683, label %1718, !nosanitize !10

1718:                                             ; preds = %1715
  %1719 = extractvalue { i32, i1 } %1716, 0, !nosanitize !10
  %1720 = sext i32 %1719 to i64
  %1721 = getelementptr inbounds i32, ptr %1, i64 %1720
  %1722 = load i32, ptr %1721, align 4, !tbaa !5
  %1723 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1722, i32 1), !nosanitize !10
  %1724 = extractvalue { i32, i1 } %1723, 1, !nosanitize !10
  br i1 %1724, label %1683, label %1725, !nosanitize !10

1725:                                             ; preds = %1718
  %1726 = extractvalue { i32, i1 } %1723, 0, !nosanitize !10
  %1727 = icmp slt i32 %1713, %1726
  br i1 %1727, label %1703, label %1728, !llvm.loop !116

1728:                                             ; preds = %1725
  %1729 = xor i32 %1708, -1
  %1730 = load i32, ptr %1702, align 4, !tbaa !5
  store i32 %1730, ptr %1705, align 4, !tbaa !5
  store i32 %1729, ptr %1702, align 4, !tbaa !5
  br label %1669

1731:                                             ; preds = %1703
  %1732 = icmp ugt ptr %1702, %166
  br i1 %1732, label %1733, label %1736

1733:                                             ; preds = %1731
  %1734 = load i32, ptr %166, align 4, !tbaa !5
  %1735 = xor i32 %1734, -1
  store i32 %1735, ptr %166, align 4, !tbaa !5
  br label %1736

1736:                                             ; preds = %1731, %1733
  %1737 = ptrtoint ptr %1702 to i64
  %1738 = sub i64 %169, %1737
  %1739 = ashr exact i64 %1738, 2
  %1740 = add nsw i64 %1739, 2147483648
  %1741 = icmp ult i64 %1740, 4294967296
  br i1 %1741, label %1743, label %1742

1742:                                             ; preds = %1736
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.src, i32 noundef 524, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mintrosort) #11
  unreachable

1743:                                             ; preds = %1736
  %1744 = and i64 %1738, 261120
  %1745 = icmp eq i64 %1744, 0
  br i1 %1745, label %1755, label %1746

1746:                                             ; preds = %1743
  %1747 = lshr i64 %1739, 8
  %1748 = and i64 %1747, 255
  %1749 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1748
  %1750 = load i32, ptr %1749, align 4, !tbaa !5
  %1751 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1750, i32 8), !nosanitize !10
  %1752 = extractvalue { i32, i1 } %1751, 0, !nosanitize !10
  %1753 = extractvalue { i32, i1 } %1751, 1, !nosanitize !10
  br i1 %1753, label %1754, label %1759, !nosanitize !10

1754:                                             ; preds = %1746
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

1755:                                             ; preds = %1743
  %1756 = and i64 %1739, 255
  %1757 = getelementptr inbounds [256 x i32], ptr @lg_table, i64 0, i64 %1756
  %1758 = load i32, ptr %1757, align 4, !tbaa !5
  br label %1759

1759:                                             ; preds = %1755, %1746, %1661
  %1760 = phi ptr [ %166, %1661 ], [ %1702, %1746 ], [ %1702, %1755 ]
  %1761 = phi i32 [ %1652, %1661 ], [ %1752, %1746 ], [ %1758, %1755 ]
  %1762 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %165, i32 1), !nosanitize !10
  %1763 = extractvalue { i32, i1 } %1762, 1, !nosanitize !10
  br i1 %1763, label %548, label %1764, !nosanitize !10

1764:                                             ; preds = %1759
  %1765 = extractvalue { i32, i1 } %1762, 0, !nosanitize !10
  br label %1766

1766:                                             ; preds = %1764, %1555, %1605, %1422, %1472, %1504, %1513, %1637, %1646, %601, %533, %555, %564, %616, %625
  %1767 = phi ptr [ %164, %601 ], [ %164, %533 ], [ %445, %555 ], [ %445, %564 ], [ %445, %616 ], [ %445, %625 ], [ %1293, %1422 ], [ %1293, %1472 ], [ %164, %1555 ], [ %164, %1605 ], [ %164, %1764 ], [ %1295, %1504 ], [ %1295, %1513 ], [ %1295, %1637 ], [ %1295, %1646 ]
  %1768 = phi i32 [ %165, %601 ], [ %165, %533 ], [ %546, %555 ], [ %546, %564 ], [ %607, %616 ], [ %607, %625 ], [ %165, %1422 ], [ %165, %1472 ], [ %165, %1555 ], [ %165, %1605 ], [ %1765, %1764 ], [ %1495, %1504 ], [ %1495, %1513 ], [ %1628, %1637 ], [ %1628, %1646 ]
  %1769 = phi ptr [ %445, %601 ], [ %445, %533 ], [ %525, %555 ], [ %525, %564 ], [ %525, %616 ], [ %525, %625 ], [ %166, %1422 ], [ %166, %1472 ], [ %1295, %1555 ], [ %1295, %1605 ], [ %1760, %1764 ], [ %1378, %1504 ], [ %1378, %1513 ], [ %1378, %1637 ], [ %1378, %1646 ]
  %1770 = phi i32 [ %603, %601 ], [ %167, %533 ], [ %543, %555 ], [ %543, %564 ], [ %167, %616 ], [ %167, %625 ], [ %1428, %1422 ], [ %1474, %1472 ], [ %1561, %1555 ], [ %1607, %1605 ], [ %167, %1764 ], [ %1492, %1504 ], [ %1492, %1513 ], [ %1625, %1637 ], [ %1625, %1646 ]
  %1771 = phi i32 [ -1, %601 ], [ -1, %533 ], [ %561, %555 ], [ %567, %564 ], [ %622, %616 ], [ %628, %625 ], [ %175, %1422 ], [ %175, %1472 ], [ %175, %1555 ], [ %175, %1605 ], [ %1761, %1764 ], [ %1510, %1504 ], [ %1516, %1513 ], [ %1643, %1637 ], [ %1649, %1646 ]
  br label %32
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ss_swapmerge(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca [32 x %struct.anon.0], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #12
  %9 = sext i32 %6 to i64
  %10 = getelementptr i32, ptr %5, i64 -1
  %11 = getelementptr i8, ptr %0, i64 2
  %12 = getelementptr i8, ptr %5, i64 4
  %13 = getelementptr i8, ptr %5, i64 4
  br label %14

14:                                               ; preds = %489, %7
  %15 = phi ptr [ %4, %7 ], [ %490, %489 ]
  %16 = phi ptr [ %3, %7 ], [ %491, %489 ]
  %17 = phi ptr [ %2, %7 ], [ %492, %489 ]
  %18 = phi i32 [ 0, %7 ], [ %493, %489 ]
  %19 = phi i32 [ 0, %7 ], [ %494, %489 ]
  %20 = ptrtoint ptr %15 to i64
  br label %21

21:                                               ; preds = %14, %1060
  %22 = phi ptr [ %1009, %1060 ], [ %16, %14 ]
  %23 = phi ptr [ %1039, %1060 ], [ %17, %14 ]
  %24 = phi i32 [ %1071, %1060 ], [ %18, %14 ]
  %25 = phi i32 [ %1078, %1060 ], [ %19, %14 ]
  %26 = ptrtoint ptr %22 to i64
  %27 = sub i64 %20, %26
  %28 = ashr exact i64 %27, 2
  %29 = icmp sgt i64 %28, %9
  br i1 %29, label %495, label %30

30:                                               ; preds = %21
  %31 = icmp ult ptr %23, %22
  %32 = icmp ult ptr %22, %15
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %339

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %10, i64 %27
  %36 = add nsw i64 %28, 2147483648
  %37 = icmp ult i64 %36, 4294967296
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.src, i32 noundef 695, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mergebackward) #11
  unreachable

39:                                               ; preds = %34
  %40 = trunc i64 %28 to i32
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %39
  %43 = and i64 %28, 4294967295
  %44 = icmp ult i64 %43, 8
  br i1 %44, label %79, label %45

45:                                               ; preds = %42
  %46 = add i64 %27, 17179869180
  %47 = and i64 %46, 17179869180
  %48 = getelementptr i8, ptr %13, i64 %47
  %49 = getelementptr i8, ptr %22, i64 4
  %50 = getelementptr i8, ptr %49, i64 %47
  %51 = icmp ugt ptr %50, %5
  %52 = icmp ult ptr %22, %48
  %53 = and i1 %51, %52
  br i1 %53, label %79, label %54

54:                                               ; preds = %45
  %55 = and i64 %28, 7
  %56 = sub nsw i64 %43, %55
  %57 = shl nsw i64 %56, 2
  %58 = getelementptr i8, ptr %5, i64 %57
  %59 = trunc i64 %56 to i32
  %60 = sub i32 %40, %59
  %61 = shl nsw i64 %56, 2
  %62 = getelementptr i8, ptr %22, i64 %61
  br label %63

63:                                               ; preds = %63, %54
  %64 = phi i64 [ 0, %54 ], [ %75, %63 ]
  %65 = shl i64 %64, 2
  %66 = getelementptr i8, ptr %5, i64 %65
  %67 = shl i64 %64, 2
  %68 = getelementptr i8, ptr %22, i64 %67
  %69 = getelementptr i32, ptr %66, i64 4
  %70 = load <4 x i32>, ptr %66, align 4, !tbaa !5, !alias.scope !138, !noalias !141
  %71 = load <4 x i32>, ptr %69, align 4, !tbaa !5, !alias.scope !138, !noalias !141
  %72 = getelementptr i32, ptr %68, i64 4
  %73 = load <4 x i32>, ptr %68, align 4, !tbaa !5, !alias.scope !141
  %74 = load <4 x i32>, ptr %72, align 4, !tbaa !5, !alias.scope !141
  store <4 x i32> %73, ptr %66, align 4, !tbaa !5, !alias.scope !138, !noalias !141
  store <4 x i32> %74, ptr %69, align 4, !tbaa !5, !alias.scope !138, !noalias !141
  store <4 x i32> %70, ptr %68, align 4, !tbaa !5, !alias.scope !141
  store <4 x i32> %71, ptr %72, align 4, !tbaa !5, !alias.scope !141
  %75 = add nuw i64 %64, 8
  %76 = icmp eq i64 %75, %56
  br i1 %76, label %77, label %63, !llvm.loop !143

77:                                               ; preds = %63
  %78 = icmp eq i64 %55, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %45, %42, %77
  %80 = phi ptr [ %5, %45 ], [ %5, %42 ], [ %58, %77 ]
  %81 = phi i32 [ %40, %45 ], [ %40, %42 ], [ %60, %77 ]
  %82 = phi ptr [ %22, %45 ], [ %22, %42 ], [ %62, %77 ]
  br label %83

83:                                               ; preds = %79, %83
  %84 = phi ptr [ %90, %83 ], [ %80, %79 ]
  %85 = phi i32 [ %89, %83 ], [ %81, %79 ]
  %86 = phi ptr [ %91, %83 ], [ %82, %79 ]
  %87 = load i32, ptr %84, align 4, !tbaa !5
  %88 = load i32, ptr %86, align 4, !tbaa !5
  store i32 %88, ptr %84, align 4, !tbaa !5
  store i32 %87, ptr %86, align 4, !tbaa !5
  %89 = add nsw i32 %85, -1
  %90 = getelementptr inbounds i32, ptr %84, i64 1
  %91 = getelementptr inbounds i32, ptr %86, i64 1
  %92 = icmp ugt i32 %85, 1
  br i1 %92, label %83, label %93, !llvm.loop !144

93:                                               ; preds = %83, %77, %39
  %94 = load i32, ptr %35, align 4, !tbaa !5
  %95 = ashr i32 %94, 31
  %96 = xor i32 %95, %94
  %97 = lshr i32 %94, 31
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds i32, ptr %1, i64 %98
  %100 = getelementptr inbounds i32, ptr %22, i64 -1
  %101 = load i32, ptr %100, align 4, !tbaa !5
  %102 = ashr i32 %101, 31
  %103 = xor i32 %102, %101
  %104 = lshr i32 %101, 30
  %105 = and i32 %104, 2
  %106 = or disjoint i32 %105, %97
  %107 = zext i32 %103 to i64
  %108 = getelementptr inbounds i32, ptr %1, i64 %107
  %109 = getelementptr inbounds i32, ptr %15, i64 -1
  %110 = load i32, ptr %109, align 4, !tbaa !5
  br label %111

111:                                              ; preds = %202, %93
  %112 = phi ptr [ %35, %93 ], [ %203, %202 ]
  %113 = phi ptr [ %100, %93 ], [ %204, %202 ]
  %114 = phi ptr [ %109, %93 ], [ %205, %202 ]
  %115 = phi ptr [ %108, %93 ], [ %206, %202 ]
  %116 = phi ptr [ %99, %93 ], [ %207, %202 ]
  %117 = phi i32 [ %106, %93 ], [ %208, %202 ]
  %118 = getelementptr i8, ptr %116, i64 4
  br label %119

119:                                              ; preds = %249, %111
  %120 = phi ptr [ %113, %111 ], [ %237, %249 ]
  %121 = phi ptr [ %114, %111 ], [ %235, %249 ]
  %122 = phi ptr [ %115, %111 ], [ %257, %249 ]
  %123 = phi i32 [ %117, %111 ], [ %255, %249 ]
  %124 = load i32, ptr %116, align 4, !tbaa !5
  %125 = load i32, ptr %118, align 4, !tbaa !5
  %126 = load i32, ptr %122, align 4, !tbaa !5
  %127 = getelementptr i8, ptr %122, i64 4
  %128 = load i32, ptr %127, align 4, !tbaa !5
  %129 = sext i32 %124 to i64
  %130 = getelementptr inbounds i8, ptr %11, i64 %129
  %131 = sext i32 %126 to i64
  %132 = getelementptr inbounds i8, ptr %11, i64 %131
  %133 = sext i32 %125 to i64
  %134 = getelementptr i8, ptr %11, i64 %133
  %135 = sext i32 %128 to i64
  %136 = getelementptr i8, ptr %11, i64 %135
  %137 = icmp ult ptr %130, %134
  %138 = icmp ult ptr %132, %136
  %139 = select i1 %137, i1 %138, i1 false
  br i1 %139, label %140, label %152

140:                                              ; preds = %119, %146
  %141 = phi ptr [ %147, %146 ], [ %130, %119 ]
  %142 = phi ptr [ %148, %146 ], [ %132, %119 ]
  %143 = load i8, ptr %141, align 1, !tbaa !9
  %144 = load i8, ptr %142, align 1, !tbaa !9
  %145 = icmp eq i8 %143, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %140
  %147 = getelementptr inbounds i8, ptr %141, i64 1
  %148 = getelementptr inbounds i8, ptr %142, i64 1
  %149 = icmp ult ptr %147, %134
  %150 = icmp ult ptr %148, %136
  %151 = select i1 %149, i1 %150, i1 false
  br i1 %151, label %140, label %152, !llvm.loop !24

152:                                              ; preds = %146, %119
  %153 = phi ptr [ %132, %119 ], [ %148, %146 ]
  %154 = phi ptr [ %130, %119 ], [ %147, %146 ]
  %155 = phi i1 [ %137, %119 ], [ %149, %146 ]
  %156 = phi i1 [ %138, %119 ], [ %150, %146 ]
  br i1 %155, label %157, label %161

157:                                              ; preds = %152
  br i1 %156, label %158, label %170

158:                                              ; preds = %157
  %159 = load i8, ptr %154, align 1, !tbaa !9
  %160 = load i8, ptr %153, align 1, !tbaa !9
  br label %163

161:                                              ; preds = %152
  %162 = sext i1 %156 to i32
  br label %212

163:                                              ; preds = %140, %158
  %164 = phi i8 [ %160, %158 ], [ %144, %140 ]
  %165 = phi i8 [ %159, %158 ], [ %143, %140 ]
  %166 = zext i8 %165 to i32
  %167 = zext i8 %164 to i32
  %168 = sub nsw i32 %166, %167
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %212

170:                                              ; preds = %163, %157
  %171 = and i32 %123, 1
  %172 = icmp eq i32 %171, 0
  %173 = load i32, ptr %112, align 4, !tbaa !5
  br i1 %172, label %185, label %174

174:                                              ; preds = %170, %174
  %175 = phi i32 [ %181, %174 ], [ %173, %170 ]
  %176 = phi ptr [ %180, %174 ], [ %112, %170 ]
  %177 = phi ptr [ %178, %174 ], [ %121, %170 ]
  %178 = getelementptr inbounds i32, ptr %177, i64 -1
  store i32 %175, ptr %177, align 4, !tbaa !5
  %179 = load i32, ptr %178, align 4, !tbaa !5
  %180 = getelementptr inbounds i32, ptr %176, i64 -1
  store i32 %179, ptr %176, align 4, !tbaa !5
  %181 = load i32, ptr %180, align 4, !tbaa !5
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %174, label %183, !llvm.loop !145

183:                                              ; preds = %174
  %184 = and i32 %123, -2
  br label %185

185:                                              ; preds = %183, %170
  %186 = phi i32 [ %181, %183 ], [ %173, %170 ]
  %187 = phi ptr [ %180, %183 ], [ %112, %170 ]
  %188 = phi ptr [ %178, %183 ], [ %121, %170 ]
  %189 = phi i32 [ %184, %183 ], [ %123, %170 ]
  %190 = getelementptr inbounds i32, ptr %188, i64 -1
  store i32 %186, ptr %188, align 4, !tbaa !5
  %191 = icmp ugt ptr %187, %5
  br i1 %191, label %192, label %337

192:                                              ; preds = %185
  %193 = load i32, ptr %190, align 4, !tbaa !5
  %194 = getelementptr inbounds i32, ptr %187, i64 -1
  store i32 %193, ptr %187, align 4, !tbaa !5
  %195 = load i32, ptr %194, align 4, !tbaa !5
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %209

197:                                              ; preds = %192
  %198 = xor i32 %195, -1
  %199 = zext nneg i32 %198 to i64
  %200 = getelementptr inbounds i32, ptr %1, i64 %199
  %201 = or disjoint i32 %189, 1
  br label %202

202:                                              ; preds = %197, %209, %325, %330
  %203 = phi ptr [ %283, %330 ], [ %283, %325 ], [ %194, %209 ], [ %194, %197 ]
  %204 = phi ptr [ %303, %330 ], [ %303, %325 ], [ %120, %209 ], [ %120, %197 ]
  %205 = phi ptr [ %301, %330 ], [ %301, %325 ], [ %190, %209 ], [ %190, %197 ]
  %206 = phi ptr [ %332, %330 ], [ %328, %325 ], [ %122, %209 ], [ %122, %197 ]
  %207 = phi ptr [ %322, %330 ], [ %322, %325 ], [ %211, %209 ], [ %200, %197 ]
  %208 = phi i32 [ %320, %330 ], [ %329, %325 ], [ %189, %209 ], [ %201, %197 ]
  br label %111

209:                                              ; preds = %192
  %210 = zext nneg i32 %195 to i64
  %211 = getelementptr inbounds i32, ptr %1, i64 %210
  br label %202

212:                                              ; preds = %163, %161
  %213 = phi i32 [ %162, %161 ], [ %168, %163 ]
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %258

215:                                              ; preds = %212
  %216 = and i32 %123, 2
  %217 = icmp eq i32 %216, 0
  %218 = load i32, ptr %120, align 4, !tbaa !5
  br i1 %217, label %230, label %219

219:                                              ; preds = %215, %219
  %220 = phi i32 [ %226, %219 ], [ %218, %215 ]
  %221 = phi ptr [ %225, %219 ], [ %120, %215 ]
  %222 = phi ptr [ %223, %219 ], [ %121, %215 ]
  %223 = getelementptr inbounds i32, ptr %222, i64 -1
  store i32 %220, ptr %222, align 4, !tbaa !5
  %224 = load i32, ptr %223, align 4, !tbaa !5
  %225 = getelementptr inbounds i32, ptr %221, i64 -1
  store i32 %224, ptr %221, align 4, !tbaa !5
  %226 = load i32, ptr %225, align 4, !tbaa !5
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %219, label %228, !llvm.loop !146

228:                                              ; preds = %219
  %229 = and i32 %123, -3
  br label %230

230:                                              ; preds = %228, %215
  %231 = phi i32 [ %226, %228 ], [ %218, %215 ]
  %232 = phi ptr [ %225, %228 ], [ %120, %215 ]
  %233 = phi ptr [ %223, %228 ], [ %121, %215 ]
  %234 = phi i32 [ %229, %228 ], [ %123, %215 ]
  %235 = getelementptr inbounds i32, ptr %233, i64 -1
  store i32 %231, ptr %233, align 4, !tbaa !5
  %236 = load i32, ptr %235, align 4, !tbaa !5
  %237 = getelementptr inbounds i32, ptr %232, i64 -1
  store i32 %236, ptr %232, align 4, !tbaa !5
  %238 = icmp ult ptr %237, %23
  br i1 %238, label %239, label %249

239:                                              ; preds = %230
  %240 = icmp ugt ptr %112, %5
  br i1 %240, label %241, label %333

241:                                              ; preds = %239, %241
  %242 = phi ptr [ %245, %241 ], [ %235, %239 ]
  %243 = phi ptr [ %247, %241 ], [ %112, %239 ]
  %244 = load i32, ptr %243, align 4, !tbaa !5
  %245 = getelementptr inbounds i32, ptr %242, i64 -1
  store i32 %244, ptr %242, align 4, !tbaa !5
  %246 = load i32, ptr %245, align 4, !tbaa !5
  %247 = getelementptr inbounds i32, ptr %243, i64 -1
  store i32 %246, ptr %243, align 4, !tbaa !5
  %248 = icmp ugt ptr %247, %5
  br i1 %248, label %241, label %333, !llvm.loop !147

249:                                              ; preds = %230
  %250 = load i32, ptr %237, align 4, !tbaa !5
  %251 = icmp slt i32 %250, 0
  %252 = xor i32 %250, -1
  %253 = or disjoint i32 %234, 2
  %254 = select i1 %251, i32 %252, i32 %250
  %255 = select i1 %251, i32 %253, i32 %234
  %256 = zext i32 %254 to i64
  %257 = getelementptr inbounds i32, ptr %1, i64 %256
  br label %119

258:                                              ; preds = %212
  %259 = and i32 %123, 1
  %260 = icmp eq i32 %259, 0
  %261 = load i32, ptr %112, align 4, !tbaa !5
  br i1 %260, label %273, label %262

262:                                              ; preds = %258, %262
  %263 = phi i32 [ %269, %262 ], [ %261, %258 ]
  %264 = phi ptr [ %268, %262 ], [ %112, %258 ]
  %265 = phi ptr [ %266, %262 ], [ %121, %258 ]
  %266 = getelementptr inbounds i32, ptr %265, i64 -1
  store i32 %263, ptr %265, align 4, !tbaa !5
  %267 = load i32, ptr %266, align 4, !tbaa !5
  %268 = getelementptr inbounds i32, ptr %264, i64 -1
  store i32 %267, ptr %264, align 4, !tbaa !5
  %269 = load i32, ptr %268, align 4, !tbaa !5
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %262, label %271, !llvm.loop !148

271:                                              ; preds = %262
  %272 = and i32 %123, -2
  br label %273

273:                                              ; preds = %271, %258
  %274 = phi i32 [ %269, %271 ], [ %261, %258 ]
  %275 = phi ptr [ %268, %271 ], [ %112, %258 ]
  %276 = phi ptr [ %266, %271 ], [ %121, %258 ]
  %277 = phi i32 [ %272, %271 ], [ %123, %258 ]
  %278 = xor i32 %274, -1
  store i32 %278, ptr %276, align 4, !tbaa !5
  %279 = icmp ugt ptr %275, %5
  br i1 %279, label %280, label %337

280:                                              ; preds = %273
  %281 = getelementptr inbounds i32, ptr %276, i64 -1
  %282 = load i32, ptr %281, align 4, !tbaa !5
  %283 = getelementptr inbounds i32, ptr %275, i64 -1
  store i32 %282, ptr %275, align 4, !tbaa !5
  %284 = and i32 %277, 2
  %285 = icmp eq i32 %284, 0
  %286 = load i32, ptr %120, align 4, !tbaa !5
  br i1 %285, label %296, label %287

287:                                              ; preds = %280, %287
  %288 = phi i32 [ %294, %287 ], [ %286, %280 ]
  %289 = phi ptr [ %293, %287 ], [ %120, %280 ]
  %290 = phi ptr [ %291, %287 ], [ %281, %280 ]
  %291 = getelementptr inbounds i32, ptr %290, i64 -1
  store i32 %288, ptr %290, align 4, !tbaa !5
  %292 = load i32, ptr %291, align 4, !tbaa !5
  %293 = getelementptr inbounds i32, ptr %289, i64 -1
  store i32 %292, ptr %289, align 4, !tbaa !5
  %294 = load i32, ptr %293, align 4, !tbaa !5
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %287, label %296, !llvm.loop !149

296:                                              ; preds = %287, %280
  %297 = phi i32 [ %286, %280 ], [ %294, %287 ]
  %298 = phi ptr [ %120, %280 ], [ %293, %287 ]
  %299 = phi ptr [ %281, %280 ], [ %291, %287 ]
  %300 = phi i32 [ %277, %280 ], [ 0, %287 ]
  %301 = getelementptr inbounds i32, ptr %299, i64 -1
  store i32 %297, ptr %299, align 4, !tbaa !5
  %302 = load i32, ptr %301, align 4, !tbaa !5
  %303 = getelementptr inbounds i32, ptr %298, i64 -1
  store i32 %302, ptr %298, align 4, !tbaa !5
  %304 = icmp ult ptr %303, %23
  br i1 %304, label %305, label %315

305:                                              ; preds = %296
  %306 = icmp ugt ptr %283, %5
  br i1 %306, label %307, label %333

307:                                              ; preds = %305, %307
  %308 = phi ptr [ %311, %307 ], [ %301, %305 ]
  %309 = phi ptr [ %313, %307 ], [ %283, %305 ]
  %310 = load i32, ptr %309, align 4, !tbaa !5
  %311 = getelementptr inbounds i32, ptr %308, i64 -1
  store i32 %310, ptr %308, align 4, !tbaa !5
  %312 = load i32, ptr %311, align 4, !tbaa !5
  %313 = getelementptr inbounds i32, ptr %309, i64 -1
  store i32 %312, ptr %309, align 4, !tbaa !5
  %314 = icmp ugt ptr %313, %5
  br i1 %314, label %307, label %333, !llvm.loop !150

315:                                              ; preds = %296
  %316 = load i32, ptr %283, align 4, !tbaa !5
  %317 = ashr i32 %316, 31
  %318 = xor i32 %317, %316
  %319 = lshr i32 %316, 31
  %320 = or i32 %319, %300
  %321 = zext i32 %318 to i64
  %322 = getelementptr inbounds i32, ptr %1, i64 %321
  %323 = load i32, ptr %303, align 4, !tbaa !5
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %315
  %326 = xor i32 %323, -1
  %327 = zext nneg i32 %326 to i64
  %328 = getelementptr inbounds i32, ptr %1, i64 %327
  %329 = or disjoint i32 %320, 2
  br label %202

330:                                              ; preds = %315
  %331 = zext nneg i32 %323 to i64
  %332 = getelementptr inbounds i32, ptr %1, i64 %331
  br label %202

333:                                              ; preds = %307, %241, %305, %239
  %334 = phi ptr [ %112, %239 ], [ %283, %305 ], [ %247, %241 ], [ %313, %307 ]
  %335 = phi ptr [ %235, %239 ], [ %301, %305 ], [ %245, %241 ], [ %311, %307 ]
  %336 = load i32, ptr %334, align 4, !tbaa !5
  store i32 %336, ptr %335, align 4, !tbaa !5
  br label %337

337:                                              ; preds = %185, %273, %333
  %338 = phi ptr [ %334, %333 ], [ %5, %273 ], [ %5, %185 ]
  store i32 %110, ptr %338, align 4, !tbaa !5
  br label %339

339:                                              ; preds = %30, %337
  %340 = and i32 %25, 1
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %344, label %342

342:                                              ; preds = %339
  %343 = load i32, ptr %23, align 4, !tbaa !5
  br label %406

344:                                              ; preds = %339
  %345 = and i32 %25, 2
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %409, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds i32, ptr %23, i64 -1
  %349 = load i32, ptr %348, align 4, !tbaa !5
  %350 = ashr i32 %349, 31
  %351 = xor i32 %350, %349
  %352 = zext nneg i32 %351 to i64
  %353 = getelementptr inbounds i32, ptr %1, i64 %352
  %354 = load i32, ptr %23, align 4, !tbaa !5
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, ptr %1, i64 %355
  %357 = load i32, ptr %353, align 4, !tbaa !5
  %358 = getelementptr i8, ptr %353, i64 4
  %359 = load i32, ptr %358, align 4, !tbaa !5
  %360 = load i32, ptr %356, align 4, !tbaa !5
  %361 = getelementptr i8, ptr %356, i64 4
  %362 = load i32, ptr %361, align 4, !tbaa !5
  %363 = sext i32 %357 to i64
  %364 = getelementptr inbounds i8, ptr %11, i64 %363
  %365 = sext i32 %360 to i64
  %366 = getelementptr inbounds i8, ptr %11, i64 %365
  %367 = sext i32 %359 to i64
  %368 = getelementptr i8, ptr %11, i64 %367
  %369 = sext i32 %362 to i64
  %370 = getelementptr i8, ptr %11, i64 %369
  %371 = icmp ult ptr %364, %368
  %372 = icmp ult ptr %366, %370
  %373 = select i1 %371, i1 %372, i1 false
  br i1 %373, label %374, label %386

374:                                              ; preds = %347, %380
  %375 = phi ptr [ %381, %380 ], [ %364, %347 ]
  %376 = phi ptr [ %382, %380 ], [ %366, %347 ]
  %377 = load i8, ptr %375, align 1, !tbaa !9
  %378 = load i8, ptr %376, align 1, !tbaa !9
  %379 = icmp eq i8 %377, %378
  br i1 %379, label %380, label %394

380:                                              ; preds = %374
  %381 = getelementptr inbounds i8, ptr %375, i64 1
  %382 = getelementptr inbounds i8, ptr %376, i64 1
  %383 = icmp ult ptr %381, %368
  %384 = icmp ult ptr %382, %370
  %385 = select i1 %383, i1 %384, i1 false
  br i1 %385, label %374, label %386, !llvm.loop !24

386:                                              ; preds = %380, %347
  %387 = phi ptr [ %366, %347 ], [ %382, %380 ]
  %388 = phi ptr [ %364, %347 ], [ %381, %380 ]
  %389 = phi i1 [ %371, %347 ], [ %383, %380 ]
  %390 = phi i1 [ %372, %347 ], [ %384, %380 ]
  br i1 %389, label %391, label %401

391:                                              ; preds = %386
  br i1 %390, label %392, label %409

392:                                              ; preds = %391
  %393 = load i8, ptr %388, align 1, !tbaa !9
  br label %394

394:                                              ; preds = %374, %392
  %395 = phi i8 [ %393, %392 ], [ %377, %374 ]
  %396 = phi ptr [ %387, %392 ], [ %376, %374 ]
  %397 = zext i8 %395 to i32
  %398 = load i8, ptr %396, align 1, !tbaa !9
  %399 = zext i8 %398 to i32
  %400 = sub nsw i32 %397, %399
  br label %403

401:                                              ; preds = %386
  %402 = sext i1 %390 to i32
  br label %403

403:                                              ; preds = %394, %401
  %404 = phi i32 [ %402, %401 ], [ %400, %394 ]
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %342, %403
  %407 = phi i32 [ %343, %342 ], [ %354, %403 ]
  %408 = xor i32 %407, -1
  store i32 %408, ptr %23, align 4, !tbaa !5
  br label %409

409:                                              ; preds = %391, %406, %403, %344
  %410 = and i32 %25, 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %473, label %412

412:                                              ; preds = %409
  %413 = getelementptr inbounds i32, ptr %15, i64 -1
  %414 = load i32, ptr %413, align 4, !tbaa !5
  %415 = ashr i32 %414, 31
  %416 = xor i32 %415, %414
  %417 = zext nneg i32 %416 to i64
  %418 = getelementptr inbounds i32, ptr %1, i64 %417
  %419 = load i32, ptr %15, align 4, !tbaa !5
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, ptr %1, i64 %420
  %422 = load i32, ptr %418, align 4, !tbaa !5
  %423 = getelementptr i8, ptr %418, i64 4
  %424 = load i32, ptr %423, align 4, !tbaa !5
  %425 = load i32, ptr %421, align 4, !tbaa !5
  %426 = getelementptr i8, ptr %421, i64 4
  %427 = load i32, ptr %426, align 4, !tbaa !5
  %428 = sext i32 %422 to i64
  %429 = getelementptr inbounds i8, ptr %11, i64 %428
  %430 = sext i32 %425 to i64
  %431 = getelementptr inbounds i8, ptr %11, i64 %430
  %432 = sext i32 %424 to i64
  %433 = getelementptr i8, ptr %11, i64 %432
  %434 = sext i32 %427 to i64
  %435 = getelementptr i8, ptr %11, i64 %434
  %436 = icmp ult ptr %429, %433
  %437 = icmp ult ptr %431, %435
  %438 = select i1 %436, i1 %437, i1 false
  br i1 %438, label %439, label %451

439:                                              ; preds = %412, %445
  %440 = phi ptr [ %446, %445 ], [ %429, %412 ]
  %441 = phi ptr [ %447, %445 ], [ %431, %412 ]
  %442 = load i8, ptr %440, align 1, !tbaa !9
  %443 = load i8, ptr %441, align 1, !tbaa !9
  %444 = icmp eq i8 %442, %443
  br i1 %444, label %445, label %459

445:                                              ; preds = %439
  %446 = getelementptr inbounds i8, ptr %440, i64 1
  %447 = getelementptr inbounds i8, ptr %441, i64 1
  %448 = icmp ult ptr %446, %433
  %449 = icmp ult ptr %447, %435
  %450 = select i1 %448, i1 %449, i1 false
  br i1 %450, label %439, label %451, !llvm.loop !24

451:                                              ; preds = %445, %412
  %452 = phi ptr [ %431, %412 ], [ %447, %445 ]
  %453 = phi ptr [ %429, %412 ], [ %446, %445 ]
  %454 = phi i1 [ %436, %412 ], [ %448, %445 ]
  %455 = phi i1 [ %437, %412 ], [ %449, %445 ]
  br i1 %454, label %456, label %466

456:                                              ; preds = %451
  br i1 %455, label %457, label %473

457:                                              ; preds = %456
  %458 = load i8, ptr %453, align 1, !tbaa !9
  br label %459

459:                                              ; preds = %439, %457
  %460 = phi i8 [ %458, %457 ], [ %442, %439 ]
  %461 = phi ptr [ %452, %457 ], [ %441, %439 ]
  %462 = zext i8 %460 to i32
  %463 = load i8, ptr %461, align 1, !tbaa !9
  %464 = zext i8 %463 to i32
  %465 = sub nsw i32 %462, %464
  br label %468

466:                                              ; preds = %451
  %467 = sext i1 %455 to i32
  br label %468

468:                                              ; preds = %459, %466
  %469 = phi i32 [ %467, %466 ], [ %465, %459 ]
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %473

471:                                              ; preds = %468
  %472 = xor i32 %419, -1
  store i32 %472, ptr %15, align 4, !tbaa !5
  br label %473

473:                                              ; preds = %456, %409, %468, %471
  %474 = icmp sgt i32 %24, -1
  br i1 %474, label %476, label %475

475:                                              ; preds = %473
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 771, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #11
  unreachable

476:                                              ; preds = %473
  %477 = icmp eq i32 %24, 0
  br i1 %477, label %1290, label %478

478:                                              ; preds = %476
  %479 = add nsw i32 %24, -1
  %480 = zext nneg i32 %479 to i64
  %481 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %480
  %482 = load ptr, ptr %481, align 16, !tbaa !151
  %483 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %480, i32 1
  %484 = load ptr, ptr %483, align 8, !tbaa !153
  %485 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %480, i32 2
  %486 = load ptr, ptr %485, align 16, !tbaa !154
  %487 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %480, i32 3
  %488 = load i32, ptr %487, align 8, !tbaa !155
  br label %489

489:                                              ; preds = %478, %846, %1045, %1279
  %490 = phi ptr [ %1287, %1279 ], [ %1038, %1045 ], [ %854, %846 ], [ %486, %478 ]
  %491 = phi ptr [ %1285, %1279 ], [ %955, %1045 ], [ %852, %846 ], [ %484, %478 ]
  %492 = phi ptr [ %1283, %1279 ], [ %23, %1045 ], [ %850, %846 ], [ %482, %478 ]
  %493 = phi i32 [ %1280, %1279 ], [ %1050, %1045 ], [ %847, %846 ], [ %479, %478 ]
  %494 = phi i32 [ %1289, %1279 ], [ %1057, %1045 ], [ %856, %846 ], [ %488, %478 ]
  br label %14

495:                                              ; preds = %21
  %496 = ptrtoint ptr %23 to i64
  %497 = sub i64 %26, %496
  %498 = ashr exact i64 %497, 2
  %499 = icmp sgt i64 %498, %9
  br i1 %499, label %857, label %500

500:                                              ; preds = %495
  %501 = icmp ult ptr %23, %22
  br i1 %501, label %502, label %707

502:                                              ; preds = %500
  %503 = getelementptr i8, ptr %10, i64 %497
  %504 = add nsw i64 %498, 2147483648
  %505 = icmp ult i64 %504, 4294967296
  br i1 %505, label %507, label %506

506:                                              ; preds = %502
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.src, i32 noundef 643, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_mergeforward) #11
  unreachable

507:                                              ; preds = %502
  %508 = trunc i64 %498 to i32
  %509 = icmp sgt i32 %508, 0
  br i1 %509, label %510, label %561

510:                                              ; preds = %507
  %511 = and i64 %498, 4294967295
  %512 = icmp ult i64 %511, 8
  br i1 %512, label %547, label %513

513:                                              ; preds = %510
  %514 = add i64 %497, 17179869180
  %515 = and i64 %514, 17179869180
  %516 = getelementptr i8, ptr %12, i64 %515
  %517 = getelementptr i8, ptr %23, i64 4
  %518 = getelementptr i8, ptr %517, i64 %515
  %519 = icmp ugt ptr %518, %5
  %520 = icmp ult ptr %23, %516
  %521 = and i1 %519, %520
  br i1 %521, label %547, label %522

522:                                              ; preds = %513
  %523 = and i64 %498, 7
  %524 = sub nsw i64 %511, %523
  %525 = shl nsw i64 %524, 2
  %526 = getelementptr i8, ptr %5, i64 %525
  %527 = trunc i64 %524 to i32
  %528 = sub i32 %508, %527
  %529 = shl nsw i64 %524, 2
  %530 = getelementptr i8, ptr %23, i64 %529
  br label %531

531:                                              ; preds = %531, %522
  %532 = phi i64 [ 0, %522 ], [ %543, %531 ]
  %533 = shl i64 %532, 2
  %534 = getelementptr i8, ptr %5, i64 %533
  %535 = shl i64 %532, 2
  %536 = getelementptr i8, ptr %23, i64 %535
  %537 = getelementptr i32, ptr %534, i64 4
  %538 = load <4 x i32>, ptr %534, align 4, !tbaa !5, !alias.scope !156, !noalias !159
  %539 = load <4 x i32>, ptr %537, align 4, !tbaa !5, !alias.scope !156, !noalias !159
  %540 = getelementptr i32, ptr %536, i64 4
  %541 = load <4 x i32>, ptr %536, align 4, !tbaa !5, !alias.scope !159
  %542 = load <4 x i32>, ptr %540, align 4, !tbaa !5, !alias.scope !159
  store <4 x i32> %541, ptr %534, align 4, !tbaa !5, !alias.scope !156, !noalias !159
  store <4 x i32> %542, ptr %537, align 4, !tbaa !5, !alias.scope !156, !noalias !159
  store <4 x i32> %538, ptr %536, align 4, !tbaa !5, !alias.scope !159
  store <4 x i32> %539, ptr %540, align 4, !tbaa !5, !alias.scope !159
  %543 = add nuw i64 %532, 8
  %544 = icmp eq i64 %543, %524
  br i1 %544, label %545, label %531, !llvm.loop !161

545:                                              ; preds = %531
  %546 = icmp eq i64 %523, 0
  br i1 %546, label %561, label %547

547:                                              ; preds = %513, %510, %545
  %548 = phi ptr [ %5, %513 ], [ %5, %510 ], [ %526, %545 ]
  %549 = phi i32 [ %508, %513 ], [ %508, %510 ], [ %528, %545 ]
  %550 = phi ptr [ %23, %513 ], [ %23, %510 ], [ %530, %545 ]
  br label %551

551:                                              ; preds = %547, %551
  %552 = phi ptr [ %558, %551 ], [ %548, %547 ]
  %553 = phi i32 [ %557, %551 ], [ %549, %547 ]
  %554 = phi ptr [ %559, %551 ], [ %550, %547 ]
  %555 = load i32, ptr %552, align 4, !tbaa !5
  %556 = load i32, ptr %554, align 4, !tbaa !5
  store i32 %556, ptr %552, align 4, !tbaa !5
  store i32 %555, ptr %554, align 4, !tbaa !5
  %557 = add nsw i32 %553, -1
  %558 = getelementptr inbounds i32, ptr %552, i64 1
  %559 = getelementptr inbounds i32, ptr %554, i64 1
  %560 = icmp ugt i32 %553, 1
  br i1 %560, label %551, label %561, !llvm.loop !162

561:                                              ; preds = %551, %545, %507
  %562 = load i32, ptr %23, align 4, !tbaa !5
  br label %567

563:                                              ; preds = %661, %698
  %564 = phi ptr [ %686, %698 ], [ %649, %661 ]
  %565 = phi ptr [ %675, %698 ], [ %572, %661 ]
  %566 = phi ptr [ %684, %698 ], [ %647, %661 ]
  br label %567

567:                                              ; preds = %563, %561
  %568 = phi ptr [ %22, %561 ], [ %564, %563 ]
  %569 = phi ptr [ %5, %561 ], [ %565, %563 ]
  %570 = phi ptr [ %23, %561 ], [ %566, %563 ]
  br label %571

571:                                              ; preds = %634, %567
  %572 = phi ptr [ %569, %567 ], [ %637, %634 ]
  %573 = phi ptr [ %570, %567 ], [ %635, %634 ]
  %574 = load i32, ptr %572, align 4, !tbaa !5
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i32, ptr %1, i64 %575
  %577 = load i32, ptr %568, align 4, !tbaa !5
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, ptr %1, i64 %578
  %580 = load i32, ptr %576, align 4, !tbaa !5
  %581 = getelementptr i8, ptr %576, i64 4
  %582 = load i32, ptr %581, align 4, !tbaa !5
  %583 = load i32, ptr %579, align 4, !tbaa !5
  %584 = getelementptr i8, ptr %579, i64 4
  %585 = load i32, ptr %584, align 4, !tbaa !5
  %586 = sext i32 %580 to i64
  %587 = getelementptr inbounds i8, ptr %11, i64 %586
  %588 = sext i32 %583 to i64
  %589 = getelementptr inbounds i8, ptr %11, i64 %588
  %590 = sext i32 %582 to i64
  %591 = getelementptr i8, ptr %11, i64 %590
  %592 = sext i32 %585 to i64
  %593 = getelementptr i8, ptr %11, i64 %592
  %594 = icmp ult ptr %587, %591
  %595 = icmp ult ptr %589, %593
  %596 = select i1 %594, i1 %595, i1 false
  br i1 %596, label %597, label %609

597:                                              ; preds = %571, %603
  %598 = phi ptr [ %604, %603 ], [ %587, %571 ]
  %599 = phi ptr [ %605, %603 ], [ %589, %571 ]
  %600 = load i8, ptr %598, align 1, !tbaa !9
  %601 = load i8, ptr %599, align 1, !tbaa !9
  %602 = icmp eq i8 %600, %601
  br i1 %602, label %603, label %618

603:                                              ; preds = %597
  %604 = getelementptr inbounds i8, ptr %598, i64 1
  %605 = getelementptr inbounds i8, ptr %599, i64 1
  %606 = icmp ult ptr %604, %591
  %607 = icmp ult ptr %605, %593
  %608 = select i1 %606, i1 %607, i1 false
  br i1 %608, label %597, label %609, !llvm.loop !24

609:                                              ; preds = %603, %571
  %610 = phi ptr [ %589, %571 ], [ %605, %603 ]
  %611 = phi ptr [ %587, %571 ], [ %604, %603 ]
  %612 = phi i1 [ %594, %571 ], [ %606, %603 ]
  %613 = phi i1 [ %595, %571 ], [ %607, %603 ]
  br i1 %612, label %614, label %624

614:                                              ; preds = %609
  br i1 %613, label %615, label %642

615:                                              ; preds = %614
  %616 = load i8, ptr %611, align 1, !tbaa !9
  %617 = load i8, ptr %610, align 1, !tbaa !9
  br label %618

618:                                              ; preds = %597, %615
  %619 = phi i8 [ %617, %615 ], [ %601, %597 ]
  %620 = phi i8 [ %616, %615 ], [ %600, %597 ]
  %621 = zext i8 %620 to i32
  %622 = zext i8 %619 to i32
  %623 = sub nsw i32 %621, %622
  br label %626

624:                                              ; preds = %609
  %625 = sext i1 %613 to i32
  br label %626

626:                                              ; preds = %624, %618
  %627 = phi i32 [ %625, %624 ], [ %623, %618 ]
  %628 = icmp slt i32 %627, 0
  br i1 %628, label %629, label %640

629:                                              ; preds = %626, %634
  %630 = phi i32 [ %638, %634 ], [ %574, %626 ]
  %631 = phi ptr [ %637, %634 ], [ %572, %626 ]
  %632 = phi ptr [ %635, %634 ], [ %573, %626 ]
  store i32 %630, ptr %632, align 4, !tbaa !5
  %633 = icmp ugt ptr %503, %631
  br i1 %633, label %634, label %705

634:                                              ; preds = %629
  %635 = getelementptr inbounds i32, ptr %632, i64 1
  %636 = load i32, ptr %635, align 4, !tbaa !5
  %637 = getelementptr inbounds i32, ptr %631, i64 1
  store i32 %636, ptr %631, align 4, !tbaa !5
  %638 = load i32, ptr %637, align 4, !tbaa !5
  %639 = icmp slt i32 %638, 0
  br i1 %639, label %629, label %571, !llvm.loop !163

640:                                              ; preds = %626
  %641 = icmp eq i32 %627, 0
  br i1 %641, label %664, label %642

642:                                              ; preds = %614, %640
  br label %643

643:                                              ; preds = %642, %661
  %644 = phi i32 [ %662, %661 ], [ %577, %642 ]
  %645 = phi ptr [ %649, %661 ], [ %568, %642 ]
  %646 = phi ptr [ %647, %661 ], [ %573, %642 ]
  %647 = getelementptr inbounds i32, ptr %646, i64 1
  store i32 %644, ptr %646, align 4, !tbaa !5
  %648 = load i32, ptr %647, align 4, !tbaa !5
  %649 = getelementptr inbounds i32, ptr %645, i64 1
  store i32 %648, ptr %645, align 4, !tbaa !5
  %650 = icmp ult ptr %649, %15
  br i1 %650, label %661, label %651

651:                                              ; preds = %643
  %652 = icmp ult ptr %572, %503
  br i1 %652, label %653, label %701

653:                                              ; preds = %651, %653
  %654 = phi ptr [ %657, %653 ], [ %647, %651 ]
  %655 = phi ptr [ %659, %653 ], [ %572, %651 ]
  %656 = load i32, ptr %655, align 4, !tbaa !5
  %657 = getelementptr inbounds i32, ptr %654, i64 1
  store i32 %656, ptr %654, align 4, !tbaa !5
  %658 = load i32, ptr %657, align 4, !tbaa !5
  %659 = getelementptr inbounds i32, ptr %655, i64 1
  store i32 %658, ptr %655, align 4, !tbaa !5
  %660 = icmp ult ptr %659, %503
  br i1 %660, label %653, label %701, !llvm.loop !164

661:                                              ; preds = %643
  %662 = load i32, ptr %649, align 4, !tbaa !5
  %663 = icmp slt i32 %662, 0
  br i1 %663, label %643, label %563, !llvm.loop !165

664:                                              ; preds = %640
  %665 = xor i32 %577, -1
  store i32 %665, ptr %568, align 4, !tbaa !5
  %666 = load i32, ptr %572, align 4, !tbaa !5
  br label %667

667:                                              ; preds = %672, %664
  %668 = phi i32 [ %666, %664 ], [ %676, %672 ]
  %669 = phi ptr [ %572, %664 ], [ %675, %672 ]
  %670 = phi ptr [ %573, %664 ], [ %673, %672 ]
  store i32 %668, ptr %670, align 4, !tbaa !5
  %671 = icmp ugt ptr %503, %669
  br i1 %671, label %672, label %705

672:                                              ; preds = %667
  %673 = getelementptr inbounds i32, ptr %670, i64 1
  %674 = load i32, ptr %673, align 4, !tbaa !5
  %675 = getelementptr inbounds i32, ptr %669, i64 1
  store i32 %674, ptr %669, align 4, !tbaa !5
  %676 = load i32, ptr %675, align 4, !tbaa !5
  %677 = icmp slt i32 %676, 0
  br i1 %677, label %667, label %678, !llvm.loop !166

678:                                              ; preds = %672
  %679 = load i32, ptr %568, align 4, !tbaa !5
  br label %680

680:                                              ; preds = %698, %678
  %681 = phi i32 [ %699, %698 ], [ %679, %678 ]
  %682 = phi ptr [ %686, %698 ], [ %568, %678 ]
  %683 = phi ptr [ %684, %698 ], [ %673, %678 ]
  %684 = getelementptr inbounds i32, ptr %683, i64 1
  store i32 %681, ptr %683, align 4, !tbaa !5
  %685 = load i32, ptr %684, align 4, !tbaa !5
  %686 = getelementptr inbounds i32, ptr %682, i64 1
  store i32 %685, ptr %682, align 4, !tbaa !5
  %687 = icmp ult ptr %686, %15
  br i1 %687, label %698, label %688

688:                                              ; preds = %680
  %689 = icmp ult ptr %675, %503
  br i1 %689, label %690, label %701

690:                                              ; preds = %688, %690
  %691 = phi ptr [ %694, %690 ], [ %684, %688 ]
  %692 = phi ptr [ %696, %690 ], [ %675, %688 ]
  %693 = load i32, ptr %692, align 4, !tbaa !5
  %694 = getelementptr inbounds i32, ptr %691, i64 1
  store i32 %693, ptr %691, align 4, !tbaa !5
  %695 = load i32, ptr %694, align 4, !tbaa !5
  %696 = getelementptr inbounds i32, ptr %692, i64 1
  store i32 %695, ptr %692, align 4, !tbaa !5
  %697 = icmp ult ptr %696, %503
  br i1 %697, label %690, label %701, !llvm.loop !167

698:                                              ; preds = %680
  %699 = load i32, ptr %686, align 4, !tbaa !5
  %700 = icmp slt i32 %699, 0
  br i1 %700, label %680, label %563, !llvm.loop !168

701:                                              ; preds = %653, %690, %688, %651
  %702 = phi ptr [ %572, %651 ], [ %675, %688 ], [ %696, %690 ], [ %659, %653 ]
  %703 = phi ptr [ %647, %651 ], [ %684, %688 ], [ %694, %690 ], [ %657, %653 ]
  %704 = load i32, ptr %702, align 4, !tbaa !5
  store i32 %704, ptr %703, align 4, !tbaa !5
  br label %705

705:                                              ; preds = %667, %629, %701
  %706 = phi ptr [ %702, %701 ], [ %503, %629 ], [ %503, %667 ]
  store i32 %562, ptr %706, align 4, !tbaa !5
  br label %707

707:                                              ; preds = %500, %705
  %708 = and i32 %25, 1
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %712, label %710

710:                                              ; preds = %707
  %711 = load i32, ptr %23, align 4, !tbaa !5
  br label %774

712:                                              ; preds = %707
  %713 = and i32 %25, 2
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %777, label %715

715:                                              ; preds = %712
  %716 = getelementptr inbounds i32, ptr %23, i64 -1
  %717 = load i32, ptr %716, align 4, !tbaa !5
  %718 = ashr i32 %717, 31
  %719 = xor i32 %718, %717
  %720 = zext nneg i32 %719 to i64
  %721 = getelementptr inbounds i32, ptr %1, i64 %720
  %722 = load i32, ptr %23, align 4, !tbaa !5
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i32, ptr %1, i64 %723
  %725 = load i32, ptr %721, align 4, !tbaa !5
  %726 = getelementptr i8, ptr %721, i64 4
  %727 = load i32, ptr %726, align 4, !tbaa !5
  %728 = load i32, ptr %724, align 4, !tbaa !5
  %729 = getelementptr i8, ptr %724, i64 4
  %730 = load i32, ptr %729, align 4, !tbaa !5
  %731 = sext i32 %725 to i64
  %732 = getelementptr inbounds i8, ptr %11, i64 %731
  %733 = sext i32 %728 to i64
  %734 = getelementptr inbounds i8, ptr %11, i64 %733
  %735 = sext i32 %727 to i64
  %736 = getelementptr i8, ptr %11, i64 %735
  %737 = sext i32 %730 to i64
  %738 = getelementptr i8, ptr %11, i64 %737
  %739 = icmp ult ptr %732, %736
  %740 = icmp ult ptr %734, %738
  %741 = select i1 %739, i1 %740, i1 false
  br i1 %741, label %742, label %754

742:                                              ; preds = %715, %748
  %743 = phi ptr [ %749, %748 ], [ %732, %715 ]
  %744 = phi ptr [ %750, %748 ], [ %734, %715 ]
  %745 = load i8, ptr %743, align 1, !tbaa !9
  %746 = load i8, ptr %744, align 1, !tbaa !9
  %747 = icmp eq i8 %745, %746
  br i1 %747, label %748, label %762

748:                                              ; preds = %742
  %749 = getelementptr inbounds i8, ptr %743, i64 1
  %750 = getelementptr inbounds i8, ptr %744, i64 1
  %751 = icmp ult ptr %749, %736
  %752 = icmp ult ptr %750, %738
  %753 = select i1 %751, i1 %752, i1 false
  br i1 %753, label %742, label %754, !llvm.loop !24

754:                                              ; preds = %748, %715
  %755 = phi ptr [ %734, %715 ], [ %750, %748 ]
  %756 = phi ptr [ %732, %715 ], [ %749, %748 ]
  %757 = phi i1 [ %739, %715 ], [ %751, %748 ]
  %758 = phi i1 [ %740, %715 ], [ %752, %748 ]
  br i1 %757, label %759, label %769

759:                                              ; preds = %754
  br i1 %758, label %760, label %777

760:                                              ; preds = %759
  %761 = load i8, ptr %756, align 1, !tbaa !9
  br label %762

762:                                              ; preds = %742, %760
  %763 = phi i8 [ %761, %760 ], [ %745, %742 ]
  %764 = phi ptr [ %755, %760 ], [ %744, %742 ]
  %765 = zext i8 %763 to i32
  %766 = load i8, ptr %764, align 1, !tbaa !9
  %767 = zext i8 %766 to i32
  %768 = sub nsw i32 %765, %767
  br label %771

769:                                              ; preds = %754
  %770 = sext i1 %758 to i32
  br label %771

771:                                              ; preds = %762, %769
  %772 = phi i32 [ %770, %769 ], [ %768, %762 ]
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %774, label %777

774:                                              ; preds = %710, %771
  %775 = phi i32 [ %711, %710 ], [ %722, %771 ]
  %776 = xor i32 %775, -1
  store i32 %776, ptr %23, align 4, !tbaa !5
  br label %777

777:                                              ; preds = %759, %774, %771, %712
  %778 = and i32 %25, 4
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %841, label %780

780:                                              ; preds = %777
  %781 = getelementptr inbounds i32, ptr %15, i64 -1
  %782 = load i32, ptr %781, align 4, !tbaa !5
  %783 = ashr i32 %782, 31
  %784 = xor i32 %783, %782
  %785 = zext nneg i32 %784 to i64
  %786 = getelementptr inbounds i32, ptr %1, i64 %785
  %787 = load i32, ptr %15, align 4, !tbaa !5
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds i32, ptr %1, i64 %788
  %790 = load i32, ptr %786, align 4, !tbaa !5
  %791 = getelementptr i8, ptr %786, i64 4
  %792 = load i32, ptr %791, align 4, !tbaa !5
  %793 = load i32, ptr %789, align 4, !tbaa !5
  %794 = getelementptr i8, ptr %789, i64 4
  %795 = load i32, ptr %794, align 4, !tbaa !5
  %796 = sext i32 %790 to i64
  %797 = getelementptr inbounds i8, ptr %11, i64 %796
  %798 = sext i32 %793 to i64
  %799 = getelementptr inbounds i8, ptr %11, i64 %798
  %800 = sext i32 %792 to i64
  %801 = getelementptr i8, ptr %11, i64 %800
  %802 = sext i32 %795 to i64
  %803 = getelementptr i8, ptr %11, i64 %802
  %804 = icmp ult ptr %797, %801
  %805 = icmp ult ptr %799, %803
  %806 = select i1 %804, i1 %805, i1 false
  br i1 %806, label %807, label %819

807:                                              ; preds = %780, %813
  %808 = phi ptr [ %814, %813 ], [ %797, %780 ]
  %809 = phi ptr [ %815, %813 ], [ %799, %780 ]
  %810 = load i8, ptr %808, align 1, !tbaa !9
  %811 = load i8, ptr %809, align 1, !tbaa !9
  %812 = icmp eq i8 %810, %811
  br i1 %812, label %813, label %827

813:                                              ; preds = %807
  %814 = getelementptr inbounds i8, ptr %808, i64 1
  %815 = getelementptr inbounds i8, ptr %809, i64 1
  %816 = icmp ult ptr %814, %801
  %817 = icmp ult ptr %815, %803
  %818 = select i1 %816, i1 %817, i1 false
  br i1 %818, label %807, label %819, !llvm.loop !24

819:                                              ; preds = %813, %780
  %820 = phi ptr [ %799, %780 ], [ %815, %813 ]
  %821 = phi ptr [ %797, %780 ], [ %814, %813 ]
  %822 = phi i1 [ %804, %780 ], [ %816, %813 ]
  %823 = phi i1 [ %805, %780 ], [ %817, %813 ]
  br i1 %822, label %824, label %834

824:                                              ; preds = %819
  br i1 %823, label %825, label %841

825:                                              ; preds = %824
  %826 = load i8, ptr %821, align 1, !tbaa !9
  br label %827

827:                                              ; preds = %807, %825
  %828 = phi i8 [ %826, %825 ], [ %810, %807 ]
  %829 = phi ptr [ %820, %825 ], [ %809, %807 ]
  %830 = zext i8 %828 to i32
  %831 = load i8, ptr %829, align 1, !tbaa !9
  %832 = zext i8 %831 to i32
  %833 = sub nsw i32 %830, %832
  br label %836

834:                                              ; preds = %819
  %835 = sext i1 %823 to i32
  br label %836

836:                                              ; preds = %827, %834
  %837 = phi i32 [ %835, %834 ], [ %833, %827 ]
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %839, label %841

839:                                              ; preds = %836
  %840 = xor i32 %787, -1
  store i32 %840, ptr %15, align 4, !tbaa !5
  br label %841

841:                                              ; preds = %824, %777, %836, %839
  %842 = icmp sgt i32 %24, -1
  br i1 %842, label %844, label %843

843:                                              ; preds = %841
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 780, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #11
  unreachable

844:                                              ; preds = %841
  %845 = icmp eq i32 %24, 0
  br i1 %845, label %1290, label %846

846:                                              ; preds = %844
  %847 = add nsw i32 %24, -1
  %848 = zext nneg i32 %847 to i64
  %849 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %848
  %850 = load ptr, ptr %849, align 16, !tbaa !151
  %851 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %848, i32 1
  %852 = load ptr, ptr %851, align 8, !tbaa !153
  %853 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %848, i32 2
  %854 = load ptr, ptr %853, align 16, !tbaa !154
  %855 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %848, i32 3
  %856 = load i32, ptr %855, align 8, !tbaa !155
  br label %489

857:                                              ; preds = %495
  %858 = tail call i64 @llvm.smin.i64(i64 %498, i64 %28)
  %859 = icmp slt i64 %858, 2147483648
  br i1 %859, label %861, label %860

860:                                              ; preds = %857
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.src, i32 noundef 784, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #11
  unreachable

861:                                              ; preds = %857
  %862 = trunc i64 %858 to i32
  %863 = icmp sgt i32 %862, 0
  br i1 %863, label %864, label %1079

864:                                              ; preds = %861, %946
  %865 = phi i32 [ %948, %946 ], [ %862, %861 ]
  %866 = phi i32 [ %947, %946 ], [ 0, %861 ]
  %867 = lshr i32 %865, 1
  %868 = sext i32 %866 to i64
  %869 = getelementptr inbounds i32, ptr %22, i64 %868
  %870 = zext nneg i32 %867 to i64
  %871 = getelementptr inbounds i32, ptr %869, i64 %870
  %872 = load i32, ptr %871, align 4, !tbaa !5
  %873 = ashr i32 %872, 31
  %874 = xor i32 %873, %872
  %875 = zext nneg i32 %874 to i64
  %876 = getelementptr inbounds i32, ptr %1, i64 %875
  %877 = sub nsw i64 0, %868
  %878 = getelementptr inbounds i32, ptr %22, i64 %877
  %879 = sub nsw i64 0, %870
  %880 = getelementptr inbounds i32, ptr %878, i64 %879
  %881 = getelementptr inbounds i32, ptr %880, i64 -1
  %882 = load i32, ptr %881, align 4, !tbaa !5
  %883 = ashr i32 %882, 31
  %884 = xor i32 %883, %882
  %885 = zext nneg i32 %884 to i64
  %886 = getelementptr inbounds i32, ptr %1, i64 %885
  %887 = load i32, ptr %876, align 4, !tbaa !5
  %888 = getelementptr i8, ptr %876, i64 4
  %889 = load i32, ptr %888, align 4, !tbaa !5
  %890 = load i32, ptr %886, align 4, !tbaa !5
  %891 = getelementptr i8, ptr %886, i64 4
  %892 = load i32, ptr %891, align 4, !tbaa !5
  %893 = sext i32 %887 to i64
  %894 = getelementptr inbounds i8, ptr %11, i64 %893
  %895 = sext i32 %890 to i64
  %896 = getelementptr inbounds i8, ptr %11, i64 %895
  %897 = sext i32 %889 to i64
  %898 = getelementptr i8, ptr %11, i64 %897
  %899 = sext i32 %892 to i64
  %900 = getelementptr i8, ptr %11, i64 %899
  %901 = icmp ult ptr %894, %898
  %902 = icmp ult ptr %896, %900
  %903 = select i1 %901, i1 %902, i1 false
  br i1 %903, label %904, label %916

904:                                              ; preds = %864, %910
  %905 = phi ptr [ %911, %910 ], [ %894, %864 ]
  %906 = phi ptr [ %912, %910 ], [ %896, %864 ]
  %907 = load i8, ptr %905, align 1, !tbaa !9
  %908 = load i8, ptr %906, align 1, !tbaa !9
  %909 = icmp eq i8 %907, %908
  br i1 %909, label %910, label %924

910:                                              ; preds = %904
  %911 = getelementptr inbounds i8, ptr %905, i64 1
  %912 = getelementptr inbounds i8, ptr %906, i64 1
  %913 = icmp ult ptr %911, %898
  %914 = icmp ult ptr %912, %900
  %915 = select i1 %913, i1 %914, i1 false
  br i1 %915, label %904, label %916, !llvm.loop !24

916:                                              ; preds = %910, %864
  %917 = phi ptr [ %896, %864 ], [ %912, %910 ]
  %918 = phi ptr [ %894, %864 ], [ %911, %910 ]
  %919 = phi i1 [ %901, %864 ], [ %913, %910 ]
  %920 = phi i1 [ %902, %864 ], [ %914, %910 ]
  br i1 %919, label %921, label %931

921:                                              ; preds = %916
  br i1 %920, label %922, label %946

922:                                              ; preds = %921
  %923 = load i8, ptr %918, align 1, !tbaa !9
  br label %924

924:                                              ; preds = %904, %922
  %925 = phi i8 [ %923, %922 ], [ %907, %904 ]
  %926 = phi ptr [ %917, %922 ], [ %906, %904 ]
  %927 = zext i8 %925 to i32
  %928 = load i8, ptr %926, align 1, !tbaa !9
  %929 = zext i8 %928 to i32
  %930 = sub nsw i32 %927, %929
  br label %933

931:                                              ; preds = %916
  %932 = sext i1 %920 to i32
  br label %933

933:                                              ; preds = %924, %931
  %934 = phi i32 [ %932, %931 ], [ %930, %924 ]
  %935 = icmp slt i32 %934, 0
  br i1 %935, label %937, label %946

936:                                              ; preds = %937
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !10
  unreachable, !nosanitize !10

937:                                              ; preds = %933
  %938 = add nuw nsw i32 %867, 1
  %939 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %866, i32 %938), !nosanitize !10
  %940 = extractvalue { i32, i1 } %939, 1, !nosanitize !10
  br i1 %940, label %936, label %941, !nosanitize !10

941:                                              ; preds = %937
  %942 = extractvalue { i32, i1 } %939, 0, !nosanitize !10
  %943 = and i32 %865, 1
  %944 = xor i32 %943, 1
  %945 = sub nsw i32 %867, %944
  br label %946

946:                                              ; preds = %921, %933, %941
  %947 = phi i32 [ %942, %941 ], [ %866, %933 ], [ %866, %921 ]
  %948 = phi i32 [ %945, %941 ], [ %867, %933 ], [ %867, %921 ]
  %949 = icmp sgt i32 %948, 0
  br i1 %949, label %864, label %950, !llvm.loop !169

950:                                              ; preds = %946
  %951 = icmp sgt i32 %947, 0
  br i1 %951, label %952, label %1079

952:                                              ; preds = %950
  %953 = zext nneg i32 %947 to i64
  %954 = sub nsw i64 0, %953
  %955 = getelementptr i32, ptr %22, i64 %954
  %956 = icmp ult i32 %947, 8
  br i1 %956, label %994, label %957

957:                                              ; preds = %952
  %958 = getelementptr i8, ptr %22, i64 4
  %959 = add nsw i32 %947, -1
  %960 = zext i32 %959 to i64
  %961 = shl nuw nsw i64 %960, 2
  %962 = sub nsw i64 %960, %953
  %963 = shl nsw i64 %962, 2
  %964 = getelementptr i8, ptr %958, i64 %963
  %965 = getelementptr i8, ptr %22, i64 4
  %966 = getelementptr i8, ptr %965, i64 %961
  %967 = icmp ult ptr %955, %966
  %968 = icmp ult ptr %22, %964
  %969 = and i1 %967, %968
  br i1 %969, label %994, label %970

970:                                              ; preds = %957
  %971 = and i64 %953, 2147483640
  %972 = shl nuw nsw i64 %971, 2
  %973 = getelementptr i8, ptr %955, i64 %972
  %974 = trunc i64 %971 to i32
  %975 = sub nsw i32 %947, %974
  %976 = shl nuw nsw i64 %971, 2
  %977 = getelementptr i8, ptr %22, i64 %976
  br label %978

978:                                              ; preds = %978, %970
  %979 = phi i64 [ 0, %970 ], [ %990, %978 ]
  %980 = shl i64 %979, 2
  %981 = getelementptr i8, ptr %955, i64 %980
  %982 = shl i64 %979, 2
  %983 = getelementptr i8, ptr %22, i64 %982
  %984 = getelementptr i32, ptr %981, i64 4
  %985 = load <4 x i32>, ptr %981, align 4, !tbaa !5, !alias.scope !170, !noalias !173
  %986 = load <4 x i32>, ptr %984, align 4, !tbaa !5, !alias.scope !170, !noalias !173
  %987 = getelementptr i32, ptr %983, i64 4
  %988 = load <4 x i32>, ptr %983, align 4, !tbaa !5, !alias.scope !173
  %989 = load <4 x i32>, ptr %987, align 4, !tbaa !5, !alias.scope !173
  store <4 x i32> %988, ptr %981, align 4, !tbaa !5, !alias.scope !170, !noalias !173
  store <4 x i32> %989, ptr %984, align 4, !tbaa !5, !alias.scope !170, !noalias !173
  store <4 x i32> %985, ptr %983, align 4, !tbaa !5, !alias.scope !173
  store <4 x i32> %986, ptr %987, align 4, !tbaa !5, !alias.scope !173
  %990 = add nuw i64 %979, 8
  %991 = icmp eq i64 %990, %971
  br i1 %991, label %992, label %978, !llvm.loop !175

992:                                              ; preds = %978
  %993 = icmp eq i64 %971, %953
  br i1 %993, label %1008, label %994

994:                                              ; preds = %957, %952, %992
  %995 = phi ptr [ %955, %957 ], [ %955, %952 ], [ %973, %992 ]
  %996 = phi i32 [ %947, %957 ], [ %947, %952 ], [ %975, %992 ]
  %997 = phi ptr [ %22, %957 ], [ %22, %952 ], [ %977, %992 ]
  br label %998

998:                                              ; preds = %994, %998
  %999 = phi ptr [ %1005, %998 ], [ %995, %994 ]
  %1000 = phi i32 [ %1004, %998 ], [ %996, %994 ]
  %1001 = phi ptr [ %1006, %998 ], [ %997, %994 ]
  %1002 = load i32, ptr %999, align 4, !tbaa !5
  %1003 = load i32, ptr %1001, align 4, !tbaa !5
  store i32 %1003, ptr %999, align 4, !tbaa !5
  store i32 %1002, ptr %1001, align 4, !tbaa !5
  %1004 = add nsw i32 %1000, -1
  %1005 = getelementptr inbounds i32, ptr %999, i64 1
  %1006 = getelementptr inbounds i32, ptr %1001, i64 1
  %1007 = icmp ugt i32 %1000, 1
  br i1 %1007, label %998, label %1008, !llvm.loop !176

1008:                                             ; preds = %998, %992
  %1009 = getelementptr inbounds i32, ptr %22, i64 %953
  %1010 = icmp ult ptr %1009, %15
  br i1 %1010, label %1011, label %1035

1011:                                             ; preds = %1008
  %1012 = load i32, ptr %1009, align 4, !tbaa !5
  %1013 = icmp slt i32 %1012, 0
  br i1 %1013, label %1014, label %1022

1014:                                             ; preds = %1011
  %1015 = xor i32 %1012, -1
  store i32 %1015, ptr %1009, align 4, !tbaa !5
  %1016 = icmp ult ptr %23, %955
  br i1 %1016, label %1017, label %1035

1017:                                             ; preds = %1014, %1017
  %1018 = phi ptr [ %1019, %1017 ], [ %22, %1014 ]
  %1019 = getelementptr inbounds i32, ptr %1018, i64 -1
  %1020 = load i32, ptr %1019, align 4, !tbaa !5
  %1021 = icmp slt i32 %1020, 0
  br i1 %1021, label %1017, label %1029, !llvm.loop !177

1022:                                             ; preds = %1011
  %1023 = icmp ult ptr %23, %955
  br i1 %1023, label %1024, label %1035

1024:                                             ; preds = %1022, %1024
  %1025 = phi ptr [ %1028, %1024 ], [ %22, %1022 ]
  %1026 = load i32, ptr %1025, align 4, !tbaa !5
  %1027 = icmp slt i32 %1026, 0
  %1028 = getelementptr inbounds i32, ptr %1025, i64 1
  br i1 %1027, label %1024, label %1032, !llvm.loop !178

1029:                                             ; preds = %1017
  %1030 = ptrtoint ptr %1019 to i64
  %1031 = sub i64 %1030, %496
  br label %1035

1032:                                             ; preds = %1024
  %1033 = ptrtoint ptr %1025 to i64
  %1034 = sub i64 %20, %1033
  br label %1035

1035:                                             ; preds = %1032, %1029, %1014, %1022, %1008
  %1036 = phi i64 [ %1034, %1032 ], [ %27, %1029 ], [ %27, %1014 ], [ %27, %1022 ], [ %27, %1008 ]
  %1037 = phi i64 [ %497, %1032 ], [ %1031, %1029 ], [ %497, %1014 ], [ %497, %1022 ], [ %497, %1008 ]
  %1038 = phi ptr [ %22, %1032 ], [ %1019, %1029 ], [ %22, %1014 ], [ %22, %1022 ], [ %22, %1008 ]
  %1039 = phi ptr [ %1025, %1032 ], [ %22, %1029 ], [ %22, %1014 ], [ %22, %1022 ], [ %22, %1008 ]
  %1040 = phi i32 [ 2, %1032 ], [ 5, %1029 ], [ 1, %1014 ], [ 0, %1022 ], [ 0, %1008 ]
  %1041 = icmp sgt i64 %1037, %1036
  %1042 = icmp slt i32 %24, 32
  br i1 %1041, label %1058, label %1043

1043:                                             ; preds = %1035
  br i1 %1042, label %1045, label %1044

1044:                                             ; preds = %1043
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 810, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #11
  unreachable

1045:                                             ; preds = %1043
  %1046 = sext i32 %24 to i64
  %1047 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1046
  store ptr %1039, ptr %1047, align 16, !tbaa !151
  %1048 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1046, i32 1
  store ptr %1009, ptr %1048, align 8, !tbaa !153
  %1049 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1046, i32 2
  store ptr %15, ptr %1049, align 16, !tbaa !154
  %1050 = add nsw i32 %24, 1
  %1051 = and i32 %1040, 3
  %1052 = and i32 %25, 4
  %1053 = or disjoint i32 %1051, %1052
  %1054 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1046, i32 3
  store i32 %1053, ptr %1054, align 8, !tbaa !155
  %1055 = and i32 %25, 3
  %1056 = and i32 %1040, 4
  %1057 = or disjoint i32 %1056, %1055
  br label %489

1058:                                             ; preds = %1035
  br i1 %1042, label %1060, label %1059

1059:                                             ; preds = %1058
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.src, i32 noundef 814, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #11
  unreachable

1060:                                             ; preds = %1058
  %1061 = and i32 %1040, 2
  %1062 = icmp ne i32 %1061, 0
  %1063 = icmp eq ptr %1039, %22
  %1064 = and i1 %1063, %1062
  %1065 = xor i32 %1040, 6
  %1066 = select i1 %1064, i32 %1065, i32 %1040
  %1067 = sext i32 %24 to i64
  %1068 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1067
  store ptr %23, ptr %1068, align 16, !tbaa !151
  %1069 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1067, i32 1
  store ptr %955, ptr %1069, align 8, !tbaa !153
  %1070 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1067, i32 2
  store ptr %1038, ptr %1070, align 16, !tbaa !154
  %1071 = add nsw i32 %24, 1
  %1072 = and i32 %25, 3
  %1073 = and i32 %1066, 4
  %1074 = or disjoint i32 %1073, %1072
  %1075 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1067, i32 3
  store i32 %1074, ptr %1075, align 8, !tbaa !155
  %1076 = and i32 %1066, 3
  %1077 = and i32 %25, 4
  %1078 = or disjoint i32 %1076, %1077
  br label %21

1079:                                             ; preds = %861, %950
  %1080 = getelementptr inbounds i32, ptr %22, i64 -1
  %1081 = load i32, ptr %1080, align 4, !tbaa !5
  %1082 = ashr i32 %1081, 31
  %1083 = xor i32 %1082, %1081
  %1084 = zext nneg i32 %1083 to i64
  %1085 = getelementptr inbounds i32, ptr %1, i64 %1084
  %1086 = load i32, ptr %22, align 4, !tbaa !5
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds i32, ptr %1, i64 %1087
  %1089 = load i32, ptr %1085, align 4, !tbaa !5
  %1090 = getelementptr i8, ptr %1085, i64 4
  %1091 = load i32, ptr %1090, align 4, !tbaa !5
  %1092 = load i32, ptr %1088, align 4, !tbaa !5
  %1093 = getelementptr i8, ptr %1088, i64 4
  %1094 = load i32, ptr %1093, align 4, !tbaa !5
  %1095 = sext i32 %1089 to i64
  %1096 = getelementptr inbounds i8, ptr %11, i64 %1095
  %1097 = sext i32 %1092 to i64
  %1098 = getelementptr inbounds i8, ptr %11, i64 %1097
  %1099 = sext i32 %1091 to i64
  %1100 = getelementptr i8, ptr %11, i64 %1099
  %1101 = sext i32 %1094 to i64
  %1102 = getelementptr i8, ptr %11, i64 %1101
  %1103 = icmp ult ptr %1096, %1100
  %1104 = icmp ult ptr %1098, %1102
  %1105 = select i1 %1103, i1 %1104, i1 false
  br i1 %1105, label %1106, label %1118

1106:                                             ; preds = %1079, %1112
  %1107 = phi ptr [ %1113, %1112 ], [ %1096, %1079 ]
  %1108 = phi ptr [ %1114, %1112 ], [ %1098, %1079 ]
  %1109 = load i8, ptr %1107, align 1, !tbaa !9
  %1110 = load i8, ptr %1108, align 1, !tbaa !9
  %1111 = icmp eq i8 %1109, %1110
  br i1 %1111, label %1112, label %1126

1112:                                             ; preds = %1106
  %1113 = getelementptr inbounds i8, ptr %1107, i64 1
  %1114 = getelementptr inbounds i8, ptr %1108, i64 1
  %1115 = icmp ult ptr %1113, %1100
  %1116 = icmp ult ptr %1114, %1102
  %1117 = select i1 %1115, i1 %1116, i1 false
  br i1 %1117, label %1106, label %1118, !llvm.loop !24

1118:                                             ; preds = %1112, %1079
  %1119 = phi ptr [ %1098, %1079 ], [ %1114, %1112 ]
  %1120 = phi ptr [ %1096, %1079 ], [ %1113, %1112 ]
  %1121 = phi i1 [ %1103, %1079 ], [ %1115, %1112 ]
  %1122 = phi i1 [ %1104, %1079 ], [ %1116, %1112 ]
  br i1 %1121, label %1123, label %1133

1123:                                             ; preds = %1118
  br i1 %1122, label %1124, label %1140

1124:                                             ; preds = %1123
  %1125 = load i8, ptr %1120, align 1, !tbaa !9
  br label %1126

1126:                                             ; preds = %1106, %1124
  %1127 = phi i8 [ %1125, %1124 ], [ %1109, %1106 ]
  %1128 = phi ptr [ %1119, %1124 ], [ %1108, %1106 ]
  %1129 = zext i8 %1127 to i32
  %1130 = load i8, ptr %1128, align 1, !tbaa !9
  %1131 = zext i8 %1130 to i32
  %1132 = sub nsw i32 %1129, %1131
  br label %1135

1133:                                             ; preds = %1118
  %1134 = sext i1 %1122 to i32
  br label %1135

1135:                                             ; preds = %1126, %1133
  %1136 = phi i32 [ %1134, %1133 ], [ %1132, %1126 ]
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1138, label %1140

1138:                                             ; preds = %1135
  %1139 = xor i32 %1086, -1
  store i32 %1139, ptr %22, align 4, !tbaa !5
  br label %1140

1140:                                             ; preds = %1123, %1135, %1138
  %1141 = and i32 %25, 1
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1145, label %1143

1143:                                             ; preds = %1140
  %1144 = load i32, ptr %23, align 4, !tbaa !5
  br label %1207

1145:                                             ; preds = %1140
  %1146 = and i32 %25, 2
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1210, label %1148

1148:                                             ; preds = %1145
  %1149 = getelementptr inbounds i32, ptr %23, i64 -1
  %1150 = load i32, ptr %1149, align 4, !tbaa !5
  %1151 = ashr i32 %1150, 31
  %1152 = xor i32 %1151, %1150
  %1153 = zext nneg i32 %1152 to i64
  %1154 = getelementptr inbounds i32, ptr %1, i64 %1153
  %1155 = load i32, ptr %23, align 4, !tbaa !5
  %1156 = sext i32 %1155 to i64
  %1157 = getelementptr inbounds i32, ptr %1, i64 %1156
  %1158 = load i32, ptr %1154, align 4, !tbaa !5
  %1159 = getelementptr i8, ptr %1154, i64 4
  %1160 = load i32, ptr %1159, align 4, !tbaa !5
  %1161 = load i32, ptr %1157, align 4, !tbaa !5
  %1162 = getelementptr i8, ptr %1157, i64 4
  %1163 = load i32, ptr %1162, align 4, !tbaa !5
  %1164 = sext i32 %1158 to i64
  %1165 = getelementptr inbounds i8, ptr %11, i64 %1164
  %1166 = sext i32 %1161 to i64
  %1167 = getelementptr inbounds i8, ptr %11, i64 %1166
  %1168 = sext i32 %1160 to i64
  %1169 = getelementptr i8, ptr %11, i64 %1168
  %1170 = sext i32 %1163 to i64
  %1171 = getelementptr i8, ptr %11, i64 %1170
  %1172 = icmp ult ptr %1165, %1169
  %1173 = icmp ult ptr %1167, %1171
  %1174 = select i1 %1172, i1 %1173, i1 false
  br i1 %1174, label %1175, label %1187

1175:                                             ; preds = %1148, %1181
  %1176 = phi ptr [ %1182, %1181 ], [ %1165, %1148 ]
  %1177 = phi ptr [ %1183, %1181 ], [ %1167, %1148 ]
  %1178 = load i8, ptr %1176, align 1, !tbaa !9
  %1179 = load i8, ptr %1177, align 1, !tbaa !9
  %1180 = icmp eq i8 %1178, %1179
  br i1 %1180, label %1181, label %1195

1181:                                             ; preds = %1175
  %1182 = getelementptr inbounds i8, ptr %1176, i64 1
  %1183 = getelementptr inbounds i8, ptr %1177, i64 1
  %1184 = icmp ult ptr %1182, %1169
  %1185 = icmp ult ptr %1183, %1171
  %1186 = select i1 %1184, i1 %1185, i1 false
  br i1 %1186, label %1175, label %1187, !llvm.loop !24

1187:                                             ; preds = %1181, %1148
  %1188 = phi ptr [ %1167, %1148 ], [ %1183, %1181 ]
  %1189 = phi ptr [ %1165, %1148 ], [ %1182, %1181 ]
  %1190 = phi i1 [ %1172, %1148 ], [ %1184, %1181 ]
  %1191 = phi i1 [ %1173, %1148 ], [ %1185, %1181 ]
  br i1 %1190, label %1192, label %1202

1192:                                             ; preds = %1187
  br i1 %1191, label %1193, label %1210

1193:                                             ; preds = %1192
  %1194 = load i8, ptr %1189, align 1, !tbaa !9
  br label %1195

1195:                                             ; preds = %1175, %1193
  %1196 = phi i8 [ %1194, %1193 ], [ %1178, %1175 ]
  %1197 = phi ptr [ %1188, %1193 ], [ %1177, %1175 ]
  %1198 = zext i8 %1196 to i32
  %1199 = load i8, ptr %1197, align 1, !tbaa !9
  %1200 = zext i8 %1199 to i32
  %1201 = sub nsw i32 %1198, %1200
  br label %1204

1202:                                             ; preds = %1187
  %1203 = sext i1 %1191 to i32
  br label %1204

1204:                                             ; preds = %1195, %1202
  %1205 = phi i32 [ %1203, %1202 ], [ %1201, %1195 ]
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %1207, label %1210

1207:                                             ; preds = %1143, %1204
  %1208 = phi i32 [ %1144, %1143 ], [ %1155, %1204 ]
  %1209 = xor i32 %1208, -1
  store i32 %1209, ptr %23, align 4, !tbaa !5
  br label %1210

1210:                                             ; preds = %1192, %1207, %1204, %1145
  %1211 = and i32 %25, 4
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1274, label %1213

1213:                                             ; preds = %1210
  %1214 = getelementptr inbounds i32, ptr %15, i64 -1
  %1215 = load i32, ptr %1214, align 4, !tbaa !5
  %1216 = ashr i32 %1215, 31
  %1217 = xor i32 %1216, %1215
  %1218 = zext nneg i32 %1217 to i64
  %1219 = getelementptr inbounds i32, ptr %1, i64 %1218
  %1220 = load i32, ptr %15, align 4, !tbaa !5
  %1221 = sext i32 %1220 to i64
  %1222 = getelementptr inbounds i32, ptr %1, i64 %1221
  %1223 = load i32, ptr %1219, align 4, !tbaa !5
  %1224 = getelementptr i8, ptr %1219, i64 4
  %1225 = load i32, ptr %1224, align 4, !tbaa !5
  %1226 = load i32, ptr %1222, align 4, !tbaa !5
  %1227 = getelementptr i8, ptr %1222, i64 4
  %1228 = load i32, ptr %1227, align 4, !tbaa !5
  %1229 = sext i32 %1223 to i64
  %1230 = getelementptr inbounds i8, ptr %11, i64 %1229
  %1231 = sext i32 %1226 to i64
  %1232 = getelementptr inbounds i8, ptr %11, i64 %1231
  %1233 = sext i32 %1225 to i64
  %1234 = getelementptr i8, ptr %11, i64 %1233
  %1235 = sext i32 %1228 to i64
  %1236 = getelementptr i8, ptr %11, i64 %1235
  %1237 = icmp ult ptr %1230, %1234
  %1238 = icmp ult ptr %1232, %1236
  %1239 = select i1 %1237, i1 %1238, i1 false
  br i1 %1239, label %1240, label %1252

1240:                                             ; preds = %1213, %1246
  %1241 = phi ptr [ %1247, %1246 ], [ %1230, %1213 ]
  %1242 = phi ptr [ %1248, %1246 ], [ %1232, %1213 ]
  %1243 = load i8, ptr %1241, align 1, !tbaa !9
  %1244 = load i8, ptr %1242, align 1, !tbaa !9
  %1245 = icmp eq i8 %1243, %1244
  br i1 %1245, label %1246, label %1260

1246:                                             ; preds = %1240
  %1247 = getelementptr inbounds i8, ptr %1241, i64 1
  %1248 = getelementptr inbounds i8, ptr %1242, i64 1
  %1249 = icmp ult ptr %1247, %1234
  %1250 = icmp ult ptr %1248, %1236
  %1251 = select i1 %1249, i1 %1250, i1 false
  br i1 %1251, label %1240, label %1252, !llvm.loop !24

1252:                                             ; preds = %1246, %1213
  %1253 = phi ptr [ %1232, %1213 ], [ %1248, %1246 ]
  %1254 = phi ptr [ %1230, %1213 ], [ %1247, %1246 ]
  %1255 = phi i1 [ %1237, %1213 ], [ %1249, %1246 ]
  %1256 = phi i1 [ %1238, %1213 ], [ %1250, %1246 ]
  br i1 %1255, label %1257, label %1267

1257:                                             ; preds = %1252
  br i1 %1256, label %1258, label %1274

1258:                                             ; preds = %1257
  %1259 = load i8, ptr %1254, align 1, !tbaa !9
  br label %1260

1260:                                             ; preds = %1240, %1258
  %1261 = phi i8 [ %1259, %1258 ], [ %1243, %1240 ]
  %1262 = phi ptr [ %1253, %1258 ], [ %1242, %1240 ]
  %1263 = zext i8 %1261 to i32
  %1264 = load i8, ptr %1262, align 1, !tbaa !9
  %1265 = zext i8 %1264 to i32
  %1266 = sub nsw i32 %1263, %1265
  br label %1269

1267:                                             ; preds = %1252
  %1268 = sext i1 %1256 to i32
  br label %1269

1269:                                             ; preds = %1260, %1267
  %1270 = phi i32 [ %1268, %1267 ], [ %1266, %1260 ]
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1272, label %1274

1272:                                             ; preds = %1269
  %1273 = xor i32 %1220, -1
  store i32 %1273, ptr %15, align 4, !tbaa !5
  br label %1274

1274:                                             ; preds = %1257, %1210, %1269, %1272
  %1275 = icmp sgt i32 %24, -1
  br i1 %1275, label %1277, label %1276

1276:                                             ; preds = %1274
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.src, i32 noundef 822, ptr noundef nonnull @__PRETTY_FUNCTION__.ss_swapmerge) #11
  unreachable

1277:                                             ; preds = %1274
  %1278 = icmp eq i32 %24, 0
  br i1 %1278, label %1290, label %1279

1279:                                             ; preds = %1277
  %1280 = add nsw i32 %24, -1
  %1281 = zext nneg i32 %1280 to i64
  %1282 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1281
  %1283 = load ptr, ptr %1282, align 16, !tbaa !151
  %1284 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1281, i32 1
  %1285 = load ptr, ptr %1284, align 8, !tbaa !153
  %1286 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1281, i32 2
  %1287 = load ptr, ptr %1286, align 16, !tbaa !154
  %1288 = getelementptr inbounds [32 x %struct.anon.0], ptr %8, i64 0, i64 %1281, i32 3
  %1289 = load i32, ptr %1288, align 8, !tbaa !155
  br label %489

1290:                                             ; preds = %1277, %844, %476
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @tr_partition(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6) unnamed_addr #7 {
  %8 = getelementptr inbounds i32, ptr %2, i64 -1
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = icmp ult ptr %11, %3
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 4, !tbaa !5
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %9, label %19, !llvm.loop !179

19:                                               ; preds = %13
  %20 = icmp slt i32 %17, %6
  br i1 %20, label %21, label %41

21:                                               ; preds = %19
  %22 = getelementptr inbounds i32, ptr %10, i64 2
  %23 = icmp ult ptr %22, %3
  br i1 %23, label %24, label %41

24:                                               ; preds = %21, %37
  %25 = phi ptr [ %39, %37 ], [ %22, %21 ]
  %26 = phi ptr [ %38, %37 ], [ %11, %21 ]
  %27 = load i32, ptr %25, align 4, !tbaa !5
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = icmp sgt i32 %30, %6
  br i1 %31, label %41, label %32

32:                                               ; preds = %24
  %33 = icmp eq i32 %30, %6
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, ptr %26, align 4, !tbaa !5
  store i32 %35, ptr %25, align 4, !tbaa !5
  store i32 %27, ptr %26, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, ptr %26, i64 1
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi ptr [ %36, %34 ], [ %26, %32 ]
  %39 = getelementptr inbounds i32, ptr %25, i64 1
  %40 = icmp ult ptr %39, %3
  br i1 %40, label %24, label %41, !llvm.loop !180

41:                                               ; preds = %9, %37, %24, %21, %19
  %42 = phi ptr [ %11, %19 ], [ %11, %21 ], [ %38, %37 ], [ %26, %24 ], [ %11, %9 ]
  %43 = phi ptr [ %11, %19 ], [ %22, %21 ], [ %39, %37 ], [ %25, %24 ], [ %11, %9 ]
  br label %44

44:                                               ; preds = %48, %41
  %45 = phi ptr [ %3, %41 ], [ %46, %48 ]
  %46 = getelementptr inbounds i32, ptr %45, i64 -1
  %47 = icmp ult ptr %43, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = load i32, ptr %46, align 4, !tbaa !5
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !5
  %53 = icmp eq i32 %52, %6
  br i1 %53, label %44, label %54, !llvm.loop !181

54:                                               ; preds = %48
  %55 = icmp sgt i32 %52, %6
  br i1 %55, label %56, label %76

56:                                               ; preds = %54
  %57 = getelementptr inbounds i32, ptr %45, i64 -2
  %58 = icmp ult ptr %43, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %56, %72
  %60 = phi ptr [ %74, %72 ], [ %57, %56 ]
  %61 = phi ptr [ %73, %72 ], [ %46, %56 ]
  %62 = load i32, ptr %60, align 4, !tbaa !5
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !5
  %66 = icmp slt i32 %65, %6
  br i1 %66, label %76, label %67

67:                                               ; preds = %59
  %68 = icmp eq i32 %65, %6
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i32, ptr %61, align 4, !tbaa !5
  store i32 %70, ptr %60, align 4, !tbaa !5
  store i32 %62, ptr %61, align 4, !tbaa !5
  %71 = getelementptr inbounds i32, ptr %61, i64 -1
  br label %72

72:                                               ; preds = %69, %67
  %73 = phi ptr [ %71, %69 ], [ %61, %67 ]
  %74 = getelementptr inbounds i32, ptr %60, i64 -1
  %75 = icmp ult ptr %43, %74
  br i1 %75, label %59, label %76, !llvm.loop !182

76:                                               ; preds = %44, %72, %59, %56, %54
  %77 = phi ptr [ %46, %54 ], [ %57, %56 ], [ %74, %72 ], [ %60, %59 ], [ %46, %44 ]
  %78 = phi ptr [ %46, %54 ], [ %46, %56 ], [ %73, %72 ], [ %61, %59 ], [ %46, %44 ]
  %79 = icmp ult ptr %43, %77
  br i1 %79, label %80, label %132

80:                                               ; preds = %76, %128
  %81 = phi ptr [ %129, %128 ], [ %78, %76 ]
  %82 = phi ptr [ %130, %128 ], [ %77, %76 ]
  %83 = phi ptr [ %108, %128 ], [ %43, %76 ]
  %84 = phi ptr [ %107, %128 ], [ %42, %76 ]
  %85 = load i32, ptr %83, align 4, !tbaa !5
  %86 = load i32, ptr %82, align 4, !tbaa !5
  store i32 %86, ptr %83, align 4, !tbaa !5
  store i32 %85, ptr %82, align 4, !tbaa !5
  %87 = getelementptr inbounds i32, ptr %83, i64 1
  %88 = icmp ult ptr %87, %82
  br i1 %88, label %89, label %106

89:                                               ; preds = %80, %102
  %90 = phi ptr [ %104, %102 ], [ %87, %80 ]
  %91 = phi ptr [ %103, %102 ], [ %84, %80 ]
  %92 = load i32, ptr %90, align 4, !tbaa !5
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !5
  %96 = icmp sgt i32 %95, %6
  br i1 %96, label %106, label %97

97:                                               ; preds = %89
  %98 = icmp eq i32 %95, %6
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i32, ptr %91, align 4, !tbaa !5
  store i32 %100, ptr %90, align 4, !tbaa !5
  store i32 %92, ptr %91, align 4, !tbaa !5
  %101 = getelementptr inbounds i32, ptr %91, i64 1
  br label %102

102:                                              ; preds = %99, %97
  %103 = phi ptr [ %101, %99 ], [ %91, %97 ]
  %104 = getelementptr inbounds i32, ptr %90, i64 1
  %105 = icmp ult ptr %104, %82
  br i1 %105, label %89, label %106, !llvm.loop !183

106:                                              ; preds = %89, %102, %80
  %107 = phi ptr [ %84, %80 ], [ %103, %102 ], [ %91, %89 ]
  %108 = phi ptr [ %87, %80 ], [ %104, %102 ], [ %90, %89 ]
  %109 = getelementptr inbounds i32, ptr %82, i64 -1
  %110 = icmp ult ptr %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %106, %124
  %112 = phi ptr [ %126, %124 ], [ %109, %106 ]
  %113 = phi ptr [ %125, %124 ], [ %81, %106 ]
  %114 = load i32, ptr %112, align 4, !tbaa !5
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !5
  %118 = icmp slt i32 %117, %6
  br i1 %118, label %128, label %119

119:                                              ; preds = %111
  %120 = icmp eq i32 %117, %6
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i32, ptr %113, align 4, !tbaa !5
  store i32 %122, ptr %112, align 4, !tbaa !5
  store i32 %114, ptr %113, align 4, !tbaa !5
  %123 = getelementptr inbounds i32, ptr %113, i64 -1
  br label %124

124:                                              ; preds = %121, %119
  %125 = phi ptr [ %123, %121 ], [ %113, %119 ]
  %126 = getelementptr inbounds i32, ptr %112, i64 -1
  %127 = icmp ult ptr %108, %126
  br i1 %127, label %111, label %128, !llvm.loop !184

128:                                              ; preds = %111, %124, %106
  %129 = phi ptr [ %81, %106 ], [ %125, %124 ], [ %113, %111 ]
  %130 = phi ptr [ %109, %106 ], [ %126, %124 ], [ %112, %111 ]
  %131 = icmp ult ptr %108, %130
  br i1 %131, label %80, label %132, !llvm.loop !185

132:                                              ; preds = %128, %76
  %133 = phi ptr [ %42, %76 ], [ %107, %128 ]
  %134 = phi ptr [ %43, %76 ], [ %108, %128 ]
  %135 = phi ptr [ %78, %76 ], [ %129, %128 ]
  %136 = icmp ugt ptr %133, %135
  br i1 %136, label %295, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds i32, ptr %134, i64 -1
  %139 = ptrtoint ptr %133 to i64
  %140 = ptrtoint ptr %1 to i64
  %141 = sub i64 %139, %140
  %142 = ashr exact i64 %141, 2
  %143 = add nsw i64 %142, 2147483648
  %144 = icmp ult i64 %143, 4294967296
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.src, i32 noundef 1101, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #11
  unreachable

146:                                              ; preds = %137
  %147 = ptrtoint ptr %134 to i64
  %148 = sub i64 %147, %139
  %149 = ashr exact i64 %148, 2
  %150 = add nsw i64 %149, 2147483648
  %151 = icmp ult i64 %150, 4294967296
  br i1 %151, label %153, label %152

152:                                              ; preds = %146
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.src, i32 noundef 1101, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #11
  unreachable

153:                                              ; preds = %146
  %154 = trunc i64 %142 to i32
  %155 = trunc i64 %149 to i32
  %156 = tail call i32 @llvm.smin.i32(i32 %154, i32 %155)
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %214

158:                                              ; preds = %153
  %159 = zext nneg i32 %156 to i64
  %160 = sub nsw i64 0, %159
  %161 = getelementptr i32, ptr %134, i64 %160
  %162 = icmp ult i32 %156, 16
  br i1 %162, label %200, label %163

163:                                              ; preds = %158
  %164 = add nsw i32 %156, -1
  %165 = zext i32 %164 to i64
  %166 = shl nuw nsw i64 %165, 2
  %167 = getelementptr i8, ptr %1, i64 %166
  %168 = getelementptr i8, ptr %167, i64 4
  %169 = add nuw nsw i64 %166, 4
  %170 = shl nuw nsw i64 %159, 2
  %171 = sub nsw i64 %169, %170
  %172 = getelementptr i8, ptr %134, i64 %171
  %173 = icmp ugt ptr %172, %1
  %174 = icmp ult ptr %161, %168
  %175 = and i1 %173, %174
  br i1 %175, label %200, label %176

176:                                              ; preds = %163
  %177 = and i64 %159, 2147483640
  %178 = trunc i64 %177 to i32
  %179 = sub nsw i32 %156, %178
  %180 = shl nuw nsw i64 %177, 2
  %181 = getelementptr i8, ptr %161, i64 %180
  %182 = shl nuw nsw i64 %177, 2
  %183 = getelementptr i8, ptr %1, i64 %182
  br label %184

184:                                              ; preds = %184, %176
  %185 = phi i64 [ 0, %176 ], [ %196, %184 ]
  %186 = shl i64 %185, 2
  %187 = getelementptr i8, ptr %161, i64 %186
  %188 = shl i64 %185, 2
  %189 = getelementptr i8, ptr %1, i64 %188
  %190 = getelementptr i32, ptr %189, i64 4
  %191 = load <4 x i32>, ptr %189, align 4, !tbaa !5, !alias.scope !186, !noalias !189
  %192 = load <4 x i32>, ptr %190, align 4, !tbaa !5, !alias.scope !186, !noalias !189
  %193 = getelementptr i32, ptr %187, i64 4
  %194 = load <4 x i32>, ptr %187, align 4, !tbaa !5, !alias.scope !189
  %195 = load <4 x i32>, ptr %193, align 4, !tbaa !5, !alias.scope !189
  store <4 x i32> %194, ptr %189, align 4, !tbaa !5, !alias.scope !186, !noalias !189
  store <4 x i32> %195, ptr %190, align 4, !tbaa !5, !alias.scope !186, !noalias !189
  store <4 x i32> %191, ptr %187, align 4, !tbaa !5, !alias.scope !189
  store <4 x i32> %192, ptr %193, align 4, !tbaa !5, !alias.scope !189
  %196 = add nuw i64 %185, 8
  %197 = icmp eq i64 %196, %177
  br i1 %197, label %198, label %184, !llvm.loop !191

198:                                              ; preds = %184
  %199 = icmp eq i64 %177, %159
  br i1 %199, label %214, label %200

200:                                              ; preds = %163, %158, %198
  %201 = phi i32 [ %156, %163 ], [ %156, %158 ], [ %179, %198 ]
  %202 = phi ptr [ %161, %163 ], [ %161, %158 ], [ %181, %198 ]
  %203 = phi ptr [ %1, %163 ], [ %1, %158 ], [ %183, %198 ]
  br label %204

204:                                              ; preds = %200, %204
  %205 = phi i32 [ %210, %204 ], [ %201, %200 ]
  %206 = phi ptr [ %212, %204 ], [ %202, %200 ]
  %207 = phi ptr [ %211, %204 ], [ %203, %200 ]
  %208 = load i32, ptr %207, align 4, !tbaa !5
  %209 = load i32, ptr %206, align 4, !tbaa !5
  store i32 %209, ptr %207, align 4, !tbaa !5
  store i32 %208, ptr %206, align 4, !tbaa !5
  %210 = add nsw i32 %205, -1
  %211 = getelementptr inbounds i32, ptr %207, i64 1
  %212 = getelementptr inbounds i32, ptr %206, i64 1
  %213 = icmp ugt i32 %205, 1
  br i1 %213, label %204, label %214, !llvm.loop !192

214:                                              ; preds = %204, %198, %153
  %215 = ptrtoint ptr %135 to i64
  %216 = ptrtoint ptr %138 to i64
  %217 = sub i64 %215, %216
  %218 = ashr exact i64 %217, 2
  %219 = add nsw i64 %218, 2147483648
  %220 = icmp ult i64 %219, 4294967296
  br i1 %220, label %222, label %221

221:                                              ; preds = %214
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.src, i32 noundef 1103, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #11
  unreachable

222:                                              ; preds = %214
  %223 = ptrtoint ptr %3 to i64
  %224 = sub i64 %223, %215
  %225 = ashr exact i64 %224, 2
  %226 = add nsw i64 %225, 2147483647
  %227 = icmp ult i64 %226, 4294967296
  br i1 %227, label %229, label %228

228:                                              ; preds = %222
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.src, i32 noundef 1103, ptr noundef nonnull @__PRETTY_FUNCTION__.tr_partition) #11
  unreachable

229:                                              ; preds = %222
  %230 = trunc i64 %218 to i32
  %231 = trunc i64 %225 to i32
  %232 = add i32 %231, -1
  %233 = tail call i32 @llvm.smin.i32(i32 %232, i32 %230)
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %291

235:                                              ; preds = %229
  %236 = zext nneg i32 %233 to i64
  %237 = sub nsw i64 0, %236
  %238 = getelementptr i32, ptr %3, i64 %237
  %239 = icmp ult i32 %233, 16
  br i1 %239, label %277, label %240

240:                                              ; preds = %235
  %241 = add nsw i32 %233, -1
  %242 = zext i32 %241 to i64
  %243 = shl nuw nsw i64 %242, 2
  %244 = add nuw nsw i64 %243, 4
  %245 = getelementptr i8, ptr %134, i64 %244
  %246 = add nuw nsw i64 %243, 4
  %247 = shl nuw nsw i64 %236, 2
  %248 = sub nsw i64 %246, %247
  %249 = getelementptr i8, ptr %3, i64 %248
  %250 = icmp ult ptr %134, %249
  %251 = icmp ult ptr %238, %245
  %252 = and i1 %250, %251
  br i1 %252, label %277, label %253

253:                                              ; preds = %240
  %254 = and i64 %236, 2147483640
  %255 = trunc i64 %254 to i32
  %256 = sub nsw i32 %233, %255
  %257 = shl nuw nsw i64 %254, 2
  %258 = getelementptr i8, ptr %238, i64 %257
  %259 = shl nuw nsw i64 %254, 2
  %260 = getelementptr i8, ptr %134, i64 %259
  br label %261

261:                                              ; preds = %261, %253
  %262 = phi i64 [ 0, %253 ], [ %273, %261 ]
  %263 = shl i64 %262, 2
  %264 = getelementptr i8, ptr %238, i64 %263
  %265 = shl i64 %262, 2
  %266 = getelementptr i8, ptr %134, i64 %265
  %267 = getelementptr i32, ptr %266, i64 4
  %268 = load <4 x i32>, ptr %266, align 4, !tbaa !5, !alias.scope !193, !noalias !196
  %269 = load <4 x i32>, ptr %267, align 4, !tbaa !5, !alias.scope !193, !noalias !196
  %270 = getelementptr i32, ptr %264, i64 4
  %271 = load <4 x i32>, ptr %264, align 4, !tbaa !5, !alias.scope !196
  %272 = load <4 x i32>, ptr %270, align 4, !tbaa !5, !alias.scope !196
  store <4 x i32> %271, ptr %266, align 4, !tbaa !5, !alias.scope !193, !noalias !196
  store <4 x i32> %272, ptr %267, align 4, !tbaa !5, !alias.scope !193, !noalias !196
  store <4 x i32> %268, ptr %264, align 4, !tbaa !5, !alias.scope !196
  store <4 x i32> %269, ptr %270, align 4, !tbaa !5, !alias.scope !196
  %273 = add nuw i64 %262, 8
  %274 = icmp eq i64 %273, %254
  br i1 %274, label %275, label %261, !llvm.loop !198

275:                                              ; preds = %261
  %276 = icmp eq i64 %254, %236
  br i1 %276, label %291, label %277

277:                                              ; preds = %240, %235, %275
  %278 = phi i32 [ %233, %240 ], [ %233, %235 ], [ %256, %275 ]
  %279 = phi ptr [ %238, %240 ], [ %238, %235 ], [ %258, %275 ]
  %280 = phi ptr [ %134, %240 ], [ %134, %235 ], [ %260, %275 ]
  br label %281

281:                                              ; preds = %277, %281
  %282 = phi i32 [ %287, %281 ], [ %278, %277 ]
  %283 = phi ptr [ %289, %281 ], [ %279, %277 ]
  %284 = phi ptr [ %288, %281 ], [ %280, %277 ]
  %285 = load i32, ptr %284, align 4, !tbaa !5
  %286 = load i32, ptr %283, align 4, !tbaa !5
  store i32 %286, ptr %284, align 4, !tbaa !5
  store i32 %285, ptr %283, align 4, !tbaa !5
  %287 = add nsw i32 %282, -1
  %288 = getelementptr inbounds i32, ptr %284, i64 1
  %289 = getelementptr inbounds i32, ptr %283, i64 1
  %290 = icmp ugt i32 %282, 1
  br i1 %290, label %281, label %291, !llvm.loop !199

291:                                              ; preds = %281, %275, %229
  %292 = getelementptr inbounds i8, ptr %1, i64 %148
  %293 = sub nsw i64 0, %218
  %294 = getelementptr inbounds i32, ptr %3, i64 %293
  br label %295

295:                                              ; preds = %291, %132
  %296 = phi ptr [ %294, %291 ], [ %3, %132 ]
  %297 = phi ptr [ %292, %291 ], [ %1, %132 ]
  store ptr %297, ptr %4, align 8, !tbaa !46
  store ptr %296, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn nounwind }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !{!30}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !12, !32, !33}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = distinct !{!34, !12, !32}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = !{!44, !6, i64 0}
!44 = !{!"_trbudget_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!45 = !{!44, !6, i64 4}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !7, i64 0}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = !{!51, !47, i64 0}
!51 = !{!"", !47, i64 0, !47, i64 8, !47, i64 16, !6, i64 24, !6, i64 28}
!52 = !{!51, !47, i64 8}
!53 = !{!51, !47, i64 16}
!54 = !{!51, !6, i64 24}
!55 = !{!51, !6, i64 28}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = !{!88}
!88 = distinct !{!88, !89}
!89 = distinct !{!89, !"LVerDomain"}
!90 = !{!91}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !12, !32, !33}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = distinct !{!95, !12, !32}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!100}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !12, !32, !33}
!102 = distinct !{!102, !94}
!103 = distinct !{!103, !12, !32}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = !{!107, !47, i64 0}
!107 = !{!"", !47, i64 0, !47, i64 8, !6, i64 16, !6, i64 20}
!108 = !{!107, !47, i64 8}
!109 = !{!107, !6, i64 16}
!110 = !{!107, !6, i64 20}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = distinct !{!115, !12}
!116 = distinct !{!116, !12}
!117 = distinct !{!117, !12}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = distinct !{!121, !12}
!122 = distinct !{!122, !12}
!123 = distinct !{!123, !12}
!124 = !{!125}
!125 = distinct !{!125, !126}
!126 = distinct !{!126, !"LVerDomain"}
!127 = !{!128}
!128 = distinct !{!128, !126}
!129 = distinct !{!129, !12, !32, !33}
!130 = distinct !{!130, !12, !32}
!131 = !{!132}
!132 = distinct !{!132, !133}
!133 = distinct !{!133, !"LVerDomain"}
!134 = !{!135}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !12, !32, !33}
!137 = distinct !{!137, !12, !32}
!138 = !{!139}
!139 = distinct !{!139, !140}
!140 = distinct !{!140, !"LVerDomain"}
!141 = !{!142}
!142 = distinct !{!142, !140}
!143 = distinct !{!143, !12, !32, !33}
!144 = distinct !{!144, !12, !32}
!145 = distinct !{!145, !12}
!146 = distinct !{!146, !12}
!147 = distinct !{!147, !12}
!148 = distinct !{!148, !12}
!149 = distinct !{!149, !12}
!150 = distinct !{!150, !12}
!151 = !{!152, !47, i64 0}
!152 = !{!"", !47, i64 0, !47, i64 8, !47, i64 16, !6, i64 24}
!153 = !{!152, !47, i64 8}
!154 = !{!152, !47, i64 16}
!155 = !{!152, !6, i64 24}
!156 = !{!157}
!157 = distinct !{!157, !158}
!158 = distinct !{!158, !"LVerDomain"}
!159 = !{!160}
!160 = distinct !{!160, !158}
!161 = distinct !{!161, !12, !32, !33}
!162 = distinct !{!162, !12, !32}
!163 = distinct !{!163, !12}
!164 = distinct !{!164, !12}
!165 = distinct !{!165, !12}
!166 = distinct !{!166, !12}
!167 = distinct !{!167, !12}
!168 = distinct !{!168, !12}
!169 = distinct !{!169, !12}
!170 = !{!171}
!171 = distinct !{!171, !172}
!172 = distinct !{!172, !"LVerDomain"}
!173 = !{!174}
!174 = distinct !{!174, !172}
!175 = distinct !{!175, !12, !32, !33}
!176 = distinct !{!176, !12, !32}
!177 = distinct !{!177, !12}
!178 = distinct !{!178, !12}
!179 = distinct !{!179, !12}
!180 = distinct !{!180, !12}
!181 = distinct !{!181, !12}
!182 = distinct !{!182, !12}
!183 = distinct !{!183, !12}
!184 = distinct !{!184, !12}
!185 = distinct !{!185, !12}
!186 = !{!187}
!187 = distinct !{!187, !188}
!188 = distinct !{!188, !"LVerDomain"}
!189 = !{!190}
!190 = distinct !{!190, !188}
!191 = distinct !{!191, !12, !32, !33}
!192 = distinct !{!192, !12, !32}
!193 = !{!194}
!194 = distinct !{!194, !195}
!195 = distinct !{!195, !"LVerDomain"}
!196 = !{!197}
!197 = distinct !{!197, !195}
!198 = distinct !{!198, !12, !32, !33}
!199 = distinct !{!199, !12, !32}
