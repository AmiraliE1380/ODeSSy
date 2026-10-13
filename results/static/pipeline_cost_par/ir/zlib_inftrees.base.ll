; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_inftrees.ll'
source_filename = "/mydata/zlib/inftrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.code = type { i8, i8, i16 }

@inflate_copyright = dso_local local_unnamed_addr constant [49 x i8] c" inflate 1.3.2.1 Copyright 1995-2026 Mark Adler \00", align 16
@inflate_table.lbase = internal unnamed_addr constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 16
@inflate_table.lext = internal unnamed_addr constant [31 x i16] [i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 16, i16 68, i16 193], align 16
@inflate_table.dbase = internal unnamed_addr constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], align 16
@inflate_table.dext = internal unnamed_addr constant [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 64, i16 64], align 16
@lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 16
@distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 16

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @inflate_table(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef captures(none) %3, ptr noundef captures(none) %4, ptr noundef captures(none) %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i16], align 16
  %8 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !5
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %.thread, label %11

.thread:                                          ; preds = %6
  %10 = load i32, ptr %4, align 4, !tbaa !9
  br label %67

11:                                               ; preds = %6
  %12 = zext i32 %2 to i64
  %13 = and i64 %12, 3
  %14 = icmp ult i32 %2, 4
  br i1 %14, label %.loopexit41, label %15

15:                                               ; preds = %11
  %16 = and i64 %12, 4294967292
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 6
  br label %20

20:                                               ; preds = %20, %15
  %21 = phi i64 [ 0, %15 ], [ %46, %20 ]
  %22 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !5
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !5
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 2, !tbaa !5
  %28 = getelementptr inbounds nuw [2 x i8], ptr %17, i64 %21
  %29 = load i16, ptr %28, align 2, !tbaa !5
  %30 = zext i16 %29 to i64
  %31 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !5
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 2, !tbaa !5
  %34 = getelementptr inbounds nuw [2 x i8], ptr %18, i64 %21
  %35 = load i16, ptr %34, align 2, !tbaa !5
  %36 = zext i16 %35 to i64
  %37 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !5
  %39 = add i16 %38, 1
  store i16 %39, ptr %37, align 2, !tbaa !5
  %40 = getelementptr inbounds nuw [2 x i8], ptr %19, i64 %21
  %41 = load i16, ptr %40, align 2, !tbaa !5
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !5
  %45 = add i16 %44, 1
  store i16 %45, ptr %43, align 2, !tbaa !5
  %46 = add nuw nsw i64 %21, 4
  %47 = icmp eq i64 %46, %16
  br i1 %47, label %.loopexit41, label %20, !llvm.loop !11

.loopexit41:                                      ; preds = %20, %11
  %48 = phi i64 [ 0, %11 ], [ %16, %20 ]
  %49 = icmp eq i64 %13, 0
  br i1 %49, label %.loopexit40, label %.preheader

.preheader:                                       ; preds = %.loopexit41, %.preheader
  %50 = phi i64 [ %58, %.preheader ], [ %48, %.loopexit41 ]
  %51 = phi i64 [ %59, %.preheader ], [ 0, %.loopexit41 ]
  %52 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %50
  %53 = load i16, ptr %52, align 2, !tbaa !5
  %54 = zext i16 %53 to i64
  %55 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !5
  %57 = add i16 %56, 1
  store i16 %57, ptr %55, align 2, !tbaa !5
  %58 = add nuw nsw i64 %50, 1
  %59 = add nuw nsw i64 %51, 1
  %60 = icmp eq i64 %59, %13
  br i1 %60, label %.loopexit40, label %.preheader, !llvm.loop !13

.loopexit40:                                      ; preds = %.preheader, %.loopexit41
  %61 = getelementptr inbounds nuw i8, ptr %7, i64 30
  %62 = load i16, ptr %61, align 2, !tbaa !5
  %63 = load i32, ptr %4, align 4, !tbaa !9
  %64 = icmp eq i16 %62, 0
  br i1 %64, label %65, label %129

65:                                               ; preds = %.loopexit40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 28
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !5
  %66 = icmp eq i16 %.pre, 0
  br i1 %66, label %67, label %129

67:                                               ; preds = %.thread, %65
  %68 = phi i32 [ %10, %.thread ], [ %63, %65 ]
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 26
  %70 = load i16, ptr %69, align 2, !tbaa !5
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %129

72:                                               ; preds = %67
  %73 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %74 = load i16, ptr %73, align 8, !tbaa !5
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %129

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 22
  %78 = load i16, ptr %77, align 2, !tbaa !5
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %129

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %82 = load i16, ptr %81, align 4, !tbaa !5
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %129

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %7, i64 18
  %86 = load i16, ptr %85, align 2, !tbaa !5
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %129

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %90 = load i16, ptr %89, align 16, !tbaa !5
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %129

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %7, i64 14
  %94 = load i16, ptr %93, align 2, !tbaa !5
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %129

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %98 = load i16, ptr %97, align 4, !tbaa !5
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %7, i64 10
  %102 = load i16, ptr %101, align 2, !tbaa !5
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %106 = load i16, ptr %105, align 8, !tbaa !5
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %7, i64 6
  %110 = load i16, ptr %109, align 2, !tbaa !5
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %114 = load i16, ptr %113, align 4, !tbaa !5
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %118 = load i16, ptr %117, align 2, !tbaa !5
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %.loopexit39

120:                                              ; preds = %116
  %121 = load ptr, ptr %3, align 8, !tbaa !15
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 4
  store ptr %122, ptr %3, align 8, !tbaa !15
  store i8 64, ptr %121, align 2, !tbaa !17
  %123 = getelementptr inbounds nuw i8, ptr %121, i64 1
  store i8 1, ptr %123, align 1, !tbaa !17
  %124 = getelementptr inbounds nuw i8, ptr %121, i64 2
  store i16 0, ptr %124, align 2, !tbaa !5
  %125 = load ptr, ptr %3, align 8, !tbaa !15
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 4
  store ptr %126, ptr %3, align 8, !tbaa !15
  store i8 64, ptr %125, align 2, !tbaa !17
  %127 = getelementptr inbounds nuw i8, ptr %125, i64 1
  store i8 1, ptr %127, align 1, !tbaa !17
  %128 = getelementptr inbounds nuw i8, ptr %125, i64 2
  store i16 0, ptr %128, align 2, !tbaa !5
  br label %524

129:                                              ; preds = %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %67, %65, %.loopexit40
  %130 = phi i32 [ %68, %112 ], [ %68, %108 ], [ %68, %104 ], [ %68, %100 ], [ %68, %96 ], [ %68, %92 ], [ %68, %88 ], [ %68, %84 ], [ %68, %80 ], [ %68, %76 ], [ %68, %72 ], [ %68, %67 ], [ %63, %65 ], [ %63, %.loopexit40 ]
  %131 = phi i16 [ 0, %112 ], [ 0, %108 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %67 ], [ 0, %65 ], [ %62, %.loopexit40 ]
  %132 = phi i32 [ 2, %112 ], [ 3, %108 ], [ 4, %104 ], [ 5, %100 ], [ 6, %96 ], [ 7, %92 ], [ 8, %88 ], [ 9, %84 ], [ 10, %80 ], [ 11, %76 ], [ 12, %72 ], [ 13, %67 ], [ 14, %65 ], [ 15, %.loopexit40 ]
  %133 = tail call i32 @llvm.umin.i32(i32 %130, i32 %132)
  %134 = zext nneg i32 %132 to i64
  br label %135

135:                                              ; preds = %140, %129
  %136 = phi i64 [ 1, %129 ], [ %141, %140 ]
  %137 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %136
  %138 = load i16, ptr %137, align 2, !tbaa !5
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %245

140:                                              ; preds = %135
  %141 = add nuw nsw i64 %136, 1
  %142 = icmp eq i64 %141, %134
  br i1 %142, label %.loopexit39, label %135, !llvm.loop !18

143:                                              ; preds = %.loopexit39
  %144 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %145 = load i16, ptr %144, align 4, !tbaa !5
  %146 = shl nuw nsw i16 %254, 1
  %147 = sub nuw nsw i16 4, %146
  %148 = zext nneg i16 %147 to i32
  %149 = zext i16 %145 to i32
  %150 = sub nsw i32 %148, %149
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %.loopexit37, label %152

152:                                              ; preds = %143
  %153 = getelementptr inbounds nuw i8, ptr %7, i64 6
  %154 = load i16, ptr %153, align 2, !tbaa !5
  %155 = shl nuw nsw i32 %150, 1
  %156 = zext i16 %154 to i32
  %157 = sub nsw i32 %155, %156
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %.loopexit37, label %159

159:                                              ; preds = %152
  %160 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %161 = load i16, ptr %160, align 8, !tbaa !5
  %162 = shl nuw nsw i32 %157, 1
  %163 = zext i16 %161 to i32
  %164 = sub nsw i32 %162, %163
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %.loopexit37, label %166

166:                                              ; preds = %159
  %167 = getelementptr inbounds nuw i8, ptr %7, i64 10
  %168 = load i16, ptr %167, align 2, !tbaa !5
  %169 = shl nuw nsw i32 %164, 1
  %170 = zext i16 %168 to i32
  %171 = sub nsw i32 %169, %170
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %.loopexit37, label %173

173:                                              ; preds = %166
  %174 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %175 = load i16, ptr %174, align 4, !tbaa !5
  %176 = shl nuw nsw i32 %171, 1
  %177 = zext i16 %175 to i32
  %178 = sub nsw i32 %176, %177
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %.loopexit37, label %180

180:                                              ; preds = %173
  %181 = getelementptr inbounds nuw i8, ptr %7, i64 14
  %182 = load i16, ptr %181, align 2, !tbaa !5
  %183 = shl nuw nsw i32 %178, 1
  %184 = zext i16 %182 to i32
  %185 = sub nsw i32 %183, %184
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %.loopexit37, label %187

187:                                              ; preds = %180
  %188 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %189 = load i16, ptr %188, align 16, !tbaa !5
  %190 = shl nuw nsw i32 %185, 1
  %191 = zext i16 %189 to i32
  %192 = sub nsw i32 %190, %191
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %.loopexit37, label %194

194:                                              ; preds = %187
  %195 = getelementptr inbounds nuw i8, ptr %7, i64 18
  %196 = load i16, ptr %195, align 2, !tbaa !5
  %197 = shl nuw nsw i32 %192, 1
  %198 = zext i16 %196 to i32
  %199 = sub nsw i32 %197, %198
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %.loopexit37, label %201

201:                                              ; preds = %194
  %202 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %203 = load i16, ptr %202, align 4, !tbaa !5
  %204 = shl nuw nsw i32 %199, 1
  %205 = zext i16 %203 to i32
  %206 = sub nsw i32 %204, %205
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %.loopexit37, label %208

208:                                              ; preds = %201
  %209 = getelementptr inbounds nuw i8, ptr %7, i64 22
  %210 = load i16, ptr %209, align 2, !tbaa !5
  %211 = shl nuw nsw i32 %206, 1
  %212 = zext i16 %210 to i32
  %213 = sub nsw i32 %211, %212
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %.loopexit37, label %215

215:                                              ; preds = %208
  %216 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %217 = load i16, ptr %216, align 8, !tbaa !5
  %218 = shl nuw nsw i32 %213, 1
  %219 = zext i16 %217 to i32
  %220 = sub nsw i32 %218, %219
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %.loopexit37, label %222

222:                                              ; preds = %215
  %223 = getelementptr inbounds nuw i8, ptr %7, i64 26
  %224 = load i16, ptr %223, align 2, !tbaa !5
  %225 = shl nuw nsw i32 %220, 1
  %226 = zext i16 %224 to i32
  %227 = sub nsw i32 %225, %226
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %.loopexit37, label %229

229:                                              ; preds = %222
  %230 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %231 = load i16, ptr %230, align 4, !tbaa !5
  %232 = shl nuw nsw i32 %227, 1
  %233 = zext i16 %231 to i32
  %234 = sub nsw i32 %232, %233
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %.loopexit37, label %236

236:                                              ; preds = %229
  %237 = shl nuw nsw i32 %234, 1
  %238 = zext i16 %251 to i32
  %239 = icmp samesign ult i32 %237, %238
  br i1 %239, label %.loopexit37, label %240

240:                                              ; preds = %236
  %241 = icmp ne i32 %237, %238
  %242 = icmp eq i32 %0, 0
  %243 = or i1 %242, %250
  %244 = and i1 %243, %241
  br i1 %244, label %.loopexit37, label %256

245:                                              ; preds = %135
  %246 = trunc nuw nsw i64 %136 to i32
  %247 = tail call i32 @llvm.umax.i32(i32 %133, i32 %246)
  br label %.loopexit39

.loopexit39:                                      ; preds = %140, %116, %245
  %248 = phi i32 [ 1, %116 ], [ %247, %245 ], [ %132, %140 ]
  %249 = phi i32 [ 1, %116 ], [ %132, %245 ], [ %132, %140 ]
  %250 = phi i1 [ false, %116 ], [ true, %245 ], [ true, %140 ]
  %251 = phi i16 [ 0, %116 ], [ %131, %245 ], [ %131, %140 ]
  %252 = phi i32 [ 1, %116 ], [ %246, %245 ], [ %132, %140 ]
  %253 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %254 = load i16, ptr %253, align 2, !tbaa !5
  %255 = icmp ugt i16 %254, 2
  br i1 %255, label %.loopexit37, label %143

256:                                              ; preds = %240
  %257 = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 0, ptr %257, align 2, !tbaa !5
  %258 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i16 %254, ptr %258, align 4, !tbaa !5
  %259 = add i16 %145, %254
  %260 = getelementptr inbounds nuw i8, ptr %8, i64 6
  store i16 %259, ptr %260, align 2, !tbaa !5
  %261 = add i16 %154, %259
  %262 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 %261, ptr %262, align 8, !tbaa !5
  %263 = add i16 %161, %261
  %264 = getelementptr inbounds nuw i8, ptr %8, i64 10
  store i16 %263, ptr %264, align 2, !tbaa !5
  %265 = add i16 %168, %263
  %266 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i16 %265, ptr %266, align 4, !tbaa !5
  %267 = add i16 %175, %265
  %268 = getelementptr inbounds nuw i8, ptr %8, i64 14
  store i16 %267, ptr %268, align 2, !tbaa !5
  %269 = add i16 %182, %267
  %270 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i16 %269, ptr %270, align 16, !tbaa !5
  %271 = add i16 %189, %269
  %272 = getelementptr inbounds nuw i8, ptr %8, i64 18
  store i16 %271, ptr %272, align 2, !tbaa !5
  %273 = add i16 %196, %271
  %274 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i16 %273, ptr %274, align 4, !tbaa !5
  %275 = add i16 %203, %273
  %276 = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %275, ptr %276, align 2, !tbaa !5
  %277 = add i16 %210, %275
  %278 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %277, ptr %278, align 8, !tbaa !5
  %279 = add i16 %217, %277
  %280 = getelementptr inbounds nuw i8, ptr %8, i64 26
  store i16 %279, ptr %280, align 2, !tbaa !5
  %281 = add i16 %224, %279
  %282 = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i16 %281, ptr %282, align 4, !tbaa !5
  %283 = add i16 %231, %281
  %284 = getelementptr inbounds nuw i8, ptr %8, i64 30
  store i16 %283, ptr %284, align 2, !tbaa !5
  br i1 %9, label %333, label %285

285:                                              ; preds = %256
  %286 = zext i32 %2 to i64
  %287 = and i64 %286, 1
  %288 = icmp eq i32 %2, 1
  br i1 %288, label %.loopexit38, label %289

289:                                              ; preds = %285
  %290 = and i64 %286, 4294967294
  br label %291

291:                                              ; preds = %317, %289
  %292 = phi i64 [ 0, %289 ], [ %318, %317 ]
  %293 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %292
  %294 = load i16, ptr %293, align 2, !tbaa !5
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %304, label %296

296:                                              ; preds = %291
  %297 = trunc i64 %292 to i16
  %298 = zext i16 %294 to i64
  %299 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %298
  %300 = load i16, ptr %299, align 2, !tbaa !5
  %301 = add i16 %300, 1
  store i16 %301, ptr %299, align 2, !tbaa !5
  %302 = zext i16 %300 to i64
  %303 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %302
  store i16 %297, ptr %303, align 2, !tbaa !5
  br label %304

304:                                              ; preds = %296, %291
  %305 = or disjoint i64 %292, 1
  %306 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %305
  %307 = load i16, ptr %306, align 2, !tbaa !5
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %317, label %309

309:                                              ; preds = %304
  %310 = trunc i64 %305 to i16
  %311 = zext i16 %307 to i64
  %312 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %311
  %313 = load i16, ptr %312, align 2, !tbaa !5
  %314 = add i16 %313, 1
  store i16 %314, ptr %312, align 2, !tbaa !5
  %315 = zext i16 %313 to i64
  %316 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %315
  store i16 %310, ptr %316, align 2, !tbaa !5
  br label %317

317:                                              ; preds = %309, %304
  %318 = add nuw i64 %292, 2
  %319 = icmp eq i64 %318, %290
  br i1 %319, label %.loopexit38, label %291, !llvm.loop !19

.loopexit38:                                      ; preds = %317, %285
  %320 = phi i64 [ 0, %285 ], [ %290, %317 ]
  %321 = icmp eq i64 %287, 0
  br i1 %321, label %333, label %322

322:                                              ; preds = %.loopexit38
  %323 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %320
  %324 = load i16, ptr %323, align 2, !tbaa !5
  %325 = icmp eq i16 %324, 0
  br i1 %325, label %333, label %326

326:                                              ; preds = %322
  %327 = trunc i64 %320 to i16
  %328 = zext i16 %324 to i64
  %329 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %328
  %330 = load i16, ptr %329, align 2, !tbaa !5
  %331 = zext i16 %330 to i64
  %332 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %331
  store i16 %327, ptr %332, align 2, !tbaa !5
  br label %333

333:                                              ; preds = %326, %322, %.loopexit38, %256
  switch i32 %0, label %339 [
    i32 0, label %334
    i32 1, label %335
    i32 2, label %337
  ]

334:                                              ; preds = %333
  br label %339

335:                                              ; preds = %333
  %336 = icmp ugt i32 %248, 9
  br i1 %336, label %.loopexit37, label %339

337:                                              ; preds = %333
  %338 = icmp ugt i32 %248, 9
  br i1 %338, label %.loopexit37, label %339

339:                                              ; preds = %337, %335, %334, %333
  %340 = phi i1 [ true, %337 ], [ false, %333 ], [ false, %334 ], [ false, %335 ]
  %341 = phi ptr [ @inflate_table.dbase, %337 ], [ null, %333 ], [ null, %334 ], [ @inflate_table.lbase, %335 ]
  %342 = phi ptr [ @inflate_table.dext, %337 ], [ null, %333 ], [ null, %334 ], [ @inflate_table.lext, %335 ]
  %343 = phi i32 [ 0, %337 ], [ 0, %333 ], [ 20, %334 ], [ 257, %335 ]
  %344 = phi i1 [ false, %337 ], [ false, %333 ], [ false, %334 ], [ true, %335 ]
  %345 = load ptr, ptr %3, align 8, !tbaa !15
  %346 = shl nuw i32 1, %248
  %347 = add i32 %346, -1
  %348 = trunc i32 %248 to i8
  br label %350

349:                                              ; preds = %504
  tail call void @llvm.ubsantrap(i8 21) #6, !nosanitize !20
  unreachable, !nosanitize !20

350:                                              ; preds = %504, %339
  %351 = phi i64 [ 0, %339 ], [ %417, %504 ]
  %352 = phi i32 [ %252, %339 ], [ %511, %504 ]
  %353 = phi ptr [ %345, %339 ], [ %509, %504 ]
  %354 = phi i32 [ -1, %339 ], [ %508, %504 ]
  %355 = phi i32 [ 0, %339 ], [ %416, %504 ]
  %356 = phi i32 [ %346, %339 ], [ %507, %504 ]
  %357 = phi i32 [ 0, %339 ], [ %506, %504 ]
  %358 = phi i32 [ %248, %339 ], [ %505, %504 ]
  %359 = phi i32 [ %252, %339 ], [ %437, %504 ]
  %360 = trunc i32 %352 to i8
  %361 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %351
  %362 = load i16, ptr %361, align 2, !tbaa !5
  %363 = zext i16 %362 to i32
  %364 = add nuw nsw i32 %363, 1
  %365 = icmp samesign ult i32 %364, %343
  br i1 %365, label %376, label %366

366:                                              ; preds = %350
  %367 = icmp samesign ugt i32 %343, %363
  br i1 %367, label %376, label %368

368:                                              ; preds = %366
  %369 = sub nuw nsw i32 %363, %343
  %370 = zext nneg i32 %369 to i64
  %371 = getelementptr inbounds nuw [2 x i8], ptr %342, i64 %370
  %372 = load i16, ptr %371, align 2, !tbaa !5
  %373 = trunc i16 %372 to i8
  %374 = getelementptr inbounds nuw [2 x i8], ptr %341, i64 %370
  %375 = load i16, ptr %374, align 2, !tbaa !5
  br label %376

376:                                              ; preds = %368, %366, %350
  %377 = phi i16 [ %375, %368 ], [ %362, %350 ], [ 0, %366 ]
  %378 = phi i8 [ %373, %368 ], [ 0, %350 ], [ 96, %366 ]
  %379 = shl nuw i32 1, %352
  %380 = shl nuw i32 1, %358
  %381 = lshr i32 %355, %357
  br label %382

382:                                              ; preds = %392, %376
  %383 = phi i32 [ %380, %376 ], [ %385, %392 ]
  %384 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %383, i32 %379), !nosanitize !20
  %385 = extractvalue { i32, i1 } %384, 0, !nosanitize !20
  %386 = extractvalue { i32, i1 } %384, 1, !nosanitize !20
  br i1 %386, label %387, label %388, !prof !21, !nosanitize !20

387:                                              ; preds = %382
  tail call void @llvm.ubsantrap(i8 21) #6, !nosanitize !20
  unreachable, !nosanitize !20

388:                                              ; preds = %382
  %389 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %381, i32 %385), !nosanitize !20
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !20
  br i1 %390, label %391, label %392, !prof !21, !nosanitize !20

391:                                              ; preds = %388
  tail call void @llvm.ubsantrap(i8 0) #6, !nosanitize !20
  unreachable, !nosanitize !20

392:                                              ; preds = %388
  %393 = extractvalue { i32, i1 } %389, 0, !nosanitize !20
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds nuw [4 x i8], ptr %353, i64 %394
  store i8 %378, ptr %395, align 2, !tbaa !17
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 1
  store i8 %360, ptr %396, align 1, !tbaa !17
  %397 = getelementptr inbounds nuw i8, ptr %395, i64 2
  store i16 %377, ptr %397, align 2, !tbaa !5
  %398 = icmp eq i32 %385, 0
  br i1 %398, label %399, label %382, !llvm.loop !22

399:                                              ; preds = %392
  %400 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %359, i32 1), !nosanitize !20
  %401 = extractvalue { i32, i1 } %400, 1, !nosanitize !20
  br i1 %401, label %402, label %403, !prof !21, !nosanitize !20

402:                                              ; preds = %399
  tail call void @llvm.ubsantrap(i8 21) #6, !nosanitize !20
  unreachable, !nosanitize !20

403:                                              ; preds = %399
  %404 = extractvalue { i32, i1 } %400, 0, !nosanitize !20
  %405 = shl nuw i32 1, %404
  br label %406

406:                                              ; preds = %406, %403
  %407 = phi i32 [ %405, %403 ], [ %410, %406 ]
  %408 = and i32 %407, %355
  %409 = icmp eq i32 %408, 0
  %410 = lshr i32 %407, 1
  br i1 %409, label %411, label %406, !llvm.loop !23

411:                                              ; preds = %406
  %412 = icmp eq i32 %407, 0
  %413 = add i32 %407, -1
  %414 = and i32 %413, %355
  %415 = add nuw i32 %414, %407
  %416 = select i1 %412, i32 0, i32 %415
  %417 = add nuw nsw i64 %351, 1
  %418 = icmp eq i64 %351, 4294967295
  br i1 %418, label %419, label %420, !prof !21, !nosanitize !20

419:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 0) #6, !nosanitize !20
  unreachable, !nosanitize !20

420:                                              ; preds = %411
  %421 = zext i32 %359 to i64
  %422 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %421
  %423 = load i16, ptr %422, align 2, !tbaa !5
  %424 = add i16 %423, -1
  store i16 %424, ptr %422, align 2, !tbaa !5
  %425 = icmp eq i16 %424, 0
  br i1 %425, label %426, label %436

426:                                              ; preds = %420
  %427 = icmp eq i32 %359, %249
  br i1 %427, label %513, label %428

428:                                              ; preds = %426
  %429 = and i64 %417, 4294967295
  %430 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %429
  %431 = load i16, ptr %430, align 2, !tbaa !5
  %432 = zext i16 %431 to i64
  %433 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %432
  %434 = load i16, ptr %433, align 2, !tbaa !5
  %435 = zext i16 %434 to i32
  br label %436

436:                                              ; preds = %428, %420
  %437 = phi i32 [ %435, %428 ], [ %359, %420 ]
  %438 = icmp ugt i32 %437, %248
  br i1 %438, label %439, label %504

439:                                              ; preds = %436
  %440 = and i32 %416, %347
  %441 = icmp eq i32 %440, %354
  br i1 %441, label %504, label %442

442:                                              ; preds = %439
  %443 = icmp eq i32 %357, 0
  %444 = select i1 %443, i32 %248, i32 %357
  %445 = zext i32 %380 to i64
  %446 = getelementptr inbounds nuw [4 x i8], ptr %353, i64 %445
  %447 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %437, i32 %444), !nosanitize !20
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !20
  br i1 %448, label %.loopexit, label %449, !prof !21, !nosanitize !20

.loopexit:                                        ; preds = %442, %461
  tail call void @llvm.ubsantrap(i8 21) #6, !nosanitize !20
  unreachable, !nosanitize !20

449:                                              ; preds = %442
  %450 = extractvalue { i32, i1 } %447, 0, !nosanitize !20
  %451 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %450, i32 %444), !nosanitize !20
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !20
  br i1 %452, label %.loopexit34, label %453, !prof !24, !nosanitize !20

453:                                              ; preds = %449
  %454 = shl nuw i32 1, %450
  br label %455

.loopexit34:                                      ; preds = %449, %475
  tail call void @llvm.ubsantrap(i8 0) #6, !nosanitize !20
  unreachable, !nosanitize !20

455:                                              ; preds = %475, %453
  %456 = phi { i32, i1 } [ %478, %475 ], [ %451, %453 ]
  %457 = phi i32 [ %477, %475 ], [ %454, %453 ]
  %458 = phi i32 [ %476, %475 ], [ %450, %453 ]
  %459 = extractvalue { i32, i1 } %456, 0
  %460 = icmp ult i32 %459, %249
  br i1 %460, label %461, label %480

461:                                              ; preds = %455
  %462 = zext nneg i32 %459 to i64
  %463 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %462
  %464 = load i16, ptr %463, align 2, !tbaa !5
  %465 = zext i16 %464 to i32
  %466 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %457, i32 %465), !nosanitize !20
  %467 = extractvalue { i32, i1 } %466, 0, !nosanitize !20
  %468 = extractvalue { i32, i1 } %466, 1, !nosanitize !20
  br i1 %468, label %.loopexit, label %469, !prof !21, !nosanitize !20

469:                                              ; preds = %461
  %470 = icmp slt i32 %467, 1
  br i1 %470, label %480, label %471

471:                                              ; preds = %469
  %472 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %458, i32 1), !nosanitize !20
  %473 = extractvalue { i32, i1 } %472, 1, !nosanitize !20
  br i1 %473, label %474, label %475, !prof !21, !nosanitize !20

474:                                              ; preds = %471
  tail call void @llvm.ubsantrap(i8 0) #6, !nosanitize !20
  unreachable, !nosanitize !20

475:                                              ; preds = %471
  %476 = extractvalue { i32, i1 } %472, 0, !nosanitize !20
  %477 = shl nuw i32 %467, 1
  %478 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %476, i32 %444), !nosanitize !20
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !20
  br i1 %479, label %.loopexit34, label %455, !prof !25, !llvm.loop !26, !nosanitize !20

480:                                              ; preds = %469, %455
  %481 = shl nuw i32 1, %458
  %482 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %356, i32 %481), !nosanitize !20
  %483 = extractvalue { i32, i1 } %482, 0, !nosanitize !20
  %484 = extractvalue { i32, i1 } %482, 1, !nosanitize !20
  br i1 %484, label %485, label %486, !prof !21, !nosanitize !20

485:                                              ; preds = %480
  tail call void @llvm.ubsantrap(i8 0) #6, !nosanitize !20
  unreachable, !nosanitize !20

486:                                              ; preds = %480
  %487 = icmp ugt i32 %483, 852
  %488 = select i1 %344, i1 %487, i1 false
  %489 = icmp ugt i32 %483, 592
  %490 = select i1 %340, i1 %489, i1 false
  %491 = select i1 %488, i1 true, i1 %490
  br i1 %491, label %.loopexit37, label %492

492:                                              ; preds = %486
  %493 = trunc i32 %458 to i8
  %494 = load ptr, ptr %3, align 8, !tbaa !15
  %495 = zext nneg i32 %440 to i64
  %496 = getelementptr inbounds nuw [4 x i8], ptr %494, i64 %495
  store i8 %493, ptr %496, align 2, !tbaa !27
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 1
  store i8 %348, ptr %497, align 1, !tbaa !29
  %498 = ptrtoint ptr %446 to i64
  %499 = ptrtoint ptr %494 to i64
  %500 = sub i64 %498, %499
  %501 = lshr exact i64 %500, 2
  %502 = trunc i64 %501 to i16
  %503 = getelementptr inbounds nuw i8, ptr %496, i64 2
  store i16 %502, ptr %503, align 2, !tbaa !30
  br label %504

504:                                              ; preds = %492, %439, %436
  %505 = phi i32 [ %458, %492 ], [ %358, %439 ], [ %358, %436 ]
  %506 = phi i32 [ %444, %492 ], [ %357, %439 ], [ %357, %436 ]
  %507 = phi i32 [ %483, %492 ], [ %356, %439 ], [ %356, %436 ]
  %508 = phi i32 [ %440, %492 ], [ %354, %439 ], [ %354, %436 ]
  %509 = phi ptr [ %446, %492 ], [ %353, %439 ], [ %353, %436 ]
  %510 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %437, i32 %506), !nosanitize !20
  %511 = extractvalue { i32, i1 } %510, 0, !nosanitize !20
  %512 = extractvalue { i32, i1 } %510, 1, !nosanitize !20
  br i1 %512, label %349, label %350, !prof !25, !nosanitize !20

513:                                              ; preds = %426
  %514 = icmp eq i32 %416, 0
  br i1 %514, label %520, label %515

515:                                              ; preds = %513
  %516 = zext i32 %416 to i64
  %517 = getelementptr inbounds nuw [4 x i8], ptr %353, i64 %516
  store i8 64, ptr %517, align 2, !tbaa !17
  %518 = getelementptr inbounds nuw i8, ptr %517, i64 1
  store i8 %360, ptr %518, align 1, !tbaa !17
  %519 = getelementptr inbounds nuw i8, ptr %517, i64 2
  store i16 0, ptr %519, align 2, !tbaa !5
  br label %520

520:                                              ; preds = %515, %513
  %521 = load ptr, ptr %3, align 8, !tbaa !15
  %522 = zext i32 %356 to i64
  %523 = getelementptr inbounds nuw [4 x i8], ptr %521, i64 %522
  store ptr %523, ptr %3, align 8, !tbaa !15
  br label %524

524:                                              ; preds = %520, %120
  %525 = phi i32 [ %248, %520 ], [ 1, %120 ]
  store i32 %525, ptr %4, align 4, !tbaa !9
  br label %.loopexit37

.loopexit37:                                      ; preds = %486, %524, %337, %335, %.loopexit39, %240, %236, %229, %222, %215, %208, %201, %194, %187, %180, %173, %166, %159, %152, %143
  %526 = phi i32 [ 1, %337 ], [ 1, %335 ], [ -1, %236 ], [ -1, %229 ], [ -1, %222 ], [ -1, %215 ], [ -1, %208 ], [ -1, %201 ], [ -1, %194 ], [ -1, %187 ], [ -1, %180 ], [ -1, %173 ], [ -1, %166 ], [ -1, %159 ], [ -1, %152 ], [ -1, %143 ], [ -1, %.loopexit39 ], [ -1, %240 ], [ 0, %524 ], [ 1, %486 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i32 %526
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @inflate_fixed(ptr noundef writeonly captures(none) initializes((104, 128)) %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @lenfix, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 9, ptr %3, align 8, !tbaa !37
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @distfix, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 5, ptr %5, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nomerge noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = !{}
!21 = !{!"branch_weights", i32 1, i32 1048575}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = !{!"branch_weights", i32 1, i32 127}
!25 = !{!"branch_weights", i32 127, i32 134217473}
!26 = distinct !{!26, !12}
!27 = !{!28, !7, i64 0}
!28 = !{!"", !7, i64 0, !7, i64 1, !6, i64 2}
!29 = !{!28, !7, i64 1}
!30 = !{!28, !6, i64 2}
!31 = !{!32, !16, i64 104}
!32 = !{!"inflate_state", !33, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !34, i64 32, !34, i64 40, !35, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !36, i64 72, !34, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !16, i64 104, !16, i64 112, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !16, i64 144, !7, i64 152, !7, i64 792, !7, i64 1368, !10, i64 7144, !10, i64 7148, !10, i64 7152}
!33 = !{!"p1 _ZTS10z_stream_s", !16, i64 0}
!34 = !{!"long", !7, i64 0}
!35 = !{!"p1 _ZTS11gz_header_s", !16, i64 0}
!36 = !{!"p1 omnipotent char", !16, i64 0}
!37 = !{!32, !10, i64 120}
!38 = !{!32, !16, i64 112}
!39 = !{!32, !10, i64 124}
