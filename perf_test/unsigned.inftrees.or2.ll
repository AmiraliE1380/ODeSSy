; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.inftrees.or.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/inftrees.c"
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
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !8
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %.thread, label %11

.thread:                                          ; preds = %6
  %10 = load i32, ptr %4, align 4, !tbaa !4
  br label %68

11:                                               ; preds = %6
  %12 = zext i32 %2 to i64
  %13 = and i64 %12, 3
  %14 = icmp ult i32 %2, 4
  br i1 %14, label %47, label %15

15:                                               ; preds = %11
  %16 = and i64 %12, 4294967292
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %43, %17 ]
  %19 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !8
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !8
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 2, !tbaa !8
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 2
  %26 = load i16, ptr %25, align 2, !tbaa !8
  %27 = zext i16 %26 to i64
  %28 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !8
  %30 = add i16 %29, 1
  store i16 %30, ptr %28, align 2, !tbaa !8
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %32 = load i16, ptr %31, align 2, !tbaa !8
  %33 = zext i16 %32 to i64
  %34 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !8
  %36 = add i16 %35, 1
  store i16 %36, ptr %34, align 2, !tbaa !8
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 6
  %38 = load i16, ptr %37, align 2, !tbaa !8
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !8
  %42 = add i16 %41, 1
  store i16 %42, ptr %40, align 2, !tbaa !8
  %43 = add nuw nsw i64 %18, 4
  %44 = icmp eq i64 %43, %16
  br i1 %44, label %45, label %17, !llvm.loop !10

45:                                               ; preds = %17
  %46 = icmp eq i64 %13, 0
  br i1 %46, label %.loopexit36, label %47

47:                                               ; preds = %45, %11
  %48 = phi i64 [ 0, %11 ], [ %16, %45 ]
  %49 = icmp ne i64 %13, 0
  tail call void @llvm.assume(i1 %49)
  br label %50

50:                                               ; preds = %50, %47
  %51 = phi i64 [ %48, %47 ], [ %59, %50 ]
  %52 = phi i64 [ 0, %47 ], [ %60, %50 ]
  %53 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %51
  %54 = load i16, ptr %53, align 2, !tbaa !8
  %55 = zext i16 %54 to i64
  %56 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !8
  %58 = add i16 %57, 1
  store i16 %58, ptr %56, align 2, !tbaa !8
  %59 = add nuw nsw i64 %51, 1
  %60 = add nuw nsw i64 %52, 1
  %61 = icmp eq i64 %60, %13
  br i1 %61, label %.loopexit36, label %50, !llvm.loop !12

.loopexit36:                                      ; preds = %50, %45
  %62 = getelementptr inbounds nuw i8, ptr %7, i64 30
  %63 = load i16, ptr %62, align 2, !tbaa !8
  %64 = load i32, ptr %4, align 4, !tbaa !4
  %65 = icmp eq i16 %63, 0
  br i1 %65, label %66, label %130

66:                                               ; preds = %.loopexit36
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 28
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !8
  %67 = icmp eq i16 %.pre, 0
  br i1 %67, label %68, label %130

68:                                               ; preds = %.thread, %66
  %69 = phi i32 [ %10, %.thread ], [ %64, %66 ]
  %70 = getelementptr inbounds nuw i8, ptr %7, i64 26
  %71 = load i16, ptr %70, align 2, !tbaa !8
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %130

73:                                               ; preds = %68
  %74 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %75 = load i16, ptr %74, align 8, !tbaa !8
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %130

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw i8, ptr %7, i64 22
  %79 = load i16, ptr %78, align 2, !tbaa !8
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %130

81:                                               ; preds = %77
  %82 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %83 = load i16, ptr %82, align 4, !tbaa !8
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %130

85:                                               ; preds = %81
  %86 = getelementptr inbounds nuw i8, ptr %7, i64 18
  %87 = load i16, ptr %86, align 2, !tbaa !8
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %91 = load i16, ptr %90, align 16, !tbaa !8
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %130

93:                                               ; preds = %89
  %94 = getelementptr inbounds nuw i8, ptr %7, i64 14
  %95 = load i16, ptr %94, align 2, !tbaa !8
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %93
  %98 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %99 = load i16, ptr %98, align 4, !tbaa !8
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %130

101:                                              ; preds = %97
  %102 = getelementptr inbounds nuw i8, ptr %7, i64 10
  %103 = load i16, ptr %102, align 2, !tbaa !8
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %107 = load i16, ptr %106, align 8, !tbaa !8
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = getelementptr inbounds nuw i8, ptr %7, i64 6
  %111 = load i16, ptr %110, align 2, !tbaa !8
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %115 = load i16, ptr %114, align 4, !tbaa !8
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %113
  %118 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %119 = load i16, ptr %118, align 2, !tbaa !8
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %.loopexit35

121:                                              ; preds = %117
  %122 = load ptr, ptr %3, align 8, !tbaa !14
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 4
  store ptr %123, ptr %3, align 8, !tbaa !14
  store i8 64, ptr %122, align 2, !tbaa !16
  %124 = getelementptr inbounds nuw i8, ptr %122, i64 1
  store i8 1, ptr %124, align 1, !tbaa !16
  %125 = getelementptr inbounds nuw i8, ptr %122, i64 2
  store i16 0, ptr %125, align 2, !tbaa !8
  %126 = load ptr, ptr %3, align 8, !tbaa !14
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 4
  store ptr %127, ptr %3, align 8, !tbaa !14
  store i8 64, ptr %126, align 2, !tbaa !16
  %128 = getelementptr inbounds nuw i8, ptr %126, i64 1
  store i8 1, ptr %128, align 1, !tbaa !16
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 2
  store i16 0, ptr %129, align 2, !tbaa !8
  br label %525

130:                                              ; preds = %113, %109, %105, %101, %97, %93, %89, %85, %81, %77, %73, %68, %66, %.loopexit36
  %131 = phi i32 [ %69, %113 ], [ %69, %109 ], [ %69, %105 ], [ %69, %101 ], [ %69, %97 ], [ %69, %93 ], [ %69, %89 ], [ %69, %85 ], [ %69, %81 ], [ %69, %77 ], [ %69, %73 ], [ %69, %68 ], [ %64, %66 ], [ %64, %.loopexit36 ]
  %132 = phi i16 [ 0, %113 ], [ 0, %109 ], [ 0, %105 ], [ 0, %101 ], [ 0, %97 ], [ 0, %93 ], [ 0, %89 ], [ 0, %85 ], [ 0, %81 ], [ 0, %77 ], [ 0, %73 ], [ 0, %68 ], [ 0, %66 ], [ %63, %.loopexit36 ]
  %133 = phi i32 [ 2, %113 ], [ 3, %109 ], [ 4, %105 ], [ 5, %101 ], [ 6, %97 ], [ 7, %93 ], [ 8, %89 ], [ 9, %85 ], [ 10, %81 ], [ 11, %77 ], [ 12, %73 ], [ 13, %68 ], [ 14, %66 ], [ 15, %.loopexit36 ]
  %134 = tail call i32 @llvm.umin.i32(i32 %131, i32 %133)
  %135 = zext nneg i32 %133 to i64
  br label %136

136:                                              ; preds = %141, %130
  %137 = phi i64 [ 1, %130 ], [ %142, %141 ]
  %138 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %137
  %139 = load i16, ptr %138, align 2, !tbaa !8
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = add nuw nsw i64 %137, 1
  %143 = icmp eq i64 %142, %135
  br i1 %143, label %.loopexit35, label %136, !llvm.loop !17

144:                                              ; preds = %136
  %145 = trunc nuw nsw i64 %137 to i32
  %146 = tail call i32 @llvm.umax.i32(i32 %134, i32 %145)
  br label %.loopexit35

.loopexit35:                                      ; preds = %141, %144, %117
  %147 = phi i32 [ 1, %117 ], [ %146, %144 ], [ %133, %141 ]
  %148 = phi i32 [ 1, %117 ], [ %133, %144 ], [ %133, %141 ]
  %149 = phi i1 [ false, %117 ], [ true, %144 ], [ true, %141 ]
  %150 = phi i16 [ 0, %117 ], [ %132, %144 ], [ %132, %141 ]
  %151 = phi i32 [ 1, %117 ], [ %145, %144 ], [ %133, %141 ]
  %152 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %153 = load i16, ptr %152, align 2, !tbaa !8
  %154 = icmp ugt i16 %153, 2
  br i1 %154, label %.loopexit34, label %155

155:                                              ; preds = %.loopexit35
  %156 = shl nuw nsw i16 %153, 1
  %157 = sub nuw nsw i16 4, %156
  %158 = zext nneg i16 %157 to i32
  %159 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %160 = load i16, ptr %159, align 4, !tbaa !8
  %161 = zext i16 %160 to i32
  %162 = sub nsw i32 %158, %161
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %.loopexit34, label %164

164:                                              ; preds = %155
  %165 = shl nuw nsw i32 %162, 1
  %166 = getelementptr inbounds nuw i8, ptr %7, i64 6
  %167 = load i16, ptr %166, align 2, !tbaa !8
  %168 = zext i16 %167 to i32
  %169 = sub nsw i32 %165, %168
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %.loopexit34, label %171

171:                                              ; preds = %164
  %172 = shl nuw nsw i32 %169, 1
  %173 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %174 = load i16, ptr %173, align 8, !tbaa !8
  %175 = zext i16 %174 to i32
  %176 = sub nsw i32 %172, %175
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %.loopexit34, label %178

178:                                              ; preds = %171
  %179 = shl nuw nsw i32 %176, 1
  %180 = getelementptr inbounds nuw i8, ptr %7, i64 10
  %181 = load i16, ptr %180, align 2, !tbaa !8
  %182 = zext i16 %181 to i32
  %183 = sub nsw i32 %179, %182
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %.loopexit34, label %185

185:                                              ; preds = %178
  %186 = shl nuw nsw i32 %183, 1
  %187 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %188 = load i16, ptr %187, align 4, !tbaa !8
  %189 = zext i16 %188 to i32
  %190 = sub nsw i32 %186, %189
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %.loopexit34, label %192

192:                                              ; preds = %185
  %193 = shl nuw nsw i32 %190, 1
  %194 = getelementptr inbounds nuw i8, ptr %7, i64 14
  %195 = load i16, ptr %194, align 2, !tbaa !8
  %196 = zext i16 %195 to i32
  %197 = sub nsw i32 %193, %196
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %.loopexit34, label %199

199:                                              ; preds = %192
  %200 = shl nuw nsw i32 %197, 1
  %201 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %202 = load i16, ptr %201, align 16, !tbaa !8
  %203 = zext i16 %202 to i32
  %204 = sub nsw i32 %200, %203
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %.loopexit34, label %206

206:                                              ; preds = %199
  %207 = shl nuw nsw i32 %204, 1
  %208 = getelementptr inbounds nuw i8, ptr %7, i64 18
  %209 = load i16, ptr %208, align 2, !tbaa !8
  %210 = zext i16 %209 to i32
  %211 = sub nsw i32 %207, %210
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %.loopexit34, label %213

213:                                              ; preds = %206
  %214 = shl nuw nsw i32 %211, 1
  %215 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %216 = load i16, ptr %215, align 4, !tbaa !8
  %217 = zext i16 %216 to i32
  %218 = sub nsw i32 %214, %217
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %.loopexit34, label %220

220:                                              ; preds = %213
  %221 = shl nuw nsw i32 %218, 1
  %222 = getelementptr inbounds nuw i8, ptr %7, i64 22
  %223 = load i16, ptr %222, align 2, !tbaa !8
  %224 = zext i16 %223 to i32
  %225 = sub nsw i32 %221, %224
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %.loopexit34, label %227

227:                                              ; preds = %220
  %228 = shl nuw nsw i32 %225, 1
  %229 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %230 = load i16, ptr %229, align 8, !tbaa !8
  %231 = zext i16 %230 to i32
  %232 = sub nsw i32 %228, %231
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %.loopexit34, label %234

234:                                              ; preds = %227
  %235 = shl nuw nsw i32 %232, 1
  %236 = getelementptr inbounds nuw i8, ptr %7, i64 26
  %237 = load i16, ptr %236, align 2, !tbaa !8
  %238 = zext i16 %237 to i32
  %239 = sub nsw i32 %235, %238
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %.loopexit34, label %241

241:                                              ; preds = %234
  %242 = shl nuw nsw i32 %239, 1
  %243 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %244 = load i16, ptr %243, align 4, !tbaa !8
  %245 = zext i16 %244 to i32
  %246 = sub nsw i32 %242, %245
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %.loopexit34, label %248

248:                                              ; preds = %241
  %249 = shl nuw nsw i32 %246, 1
  %250 = zext i16 %150 to i32
  %251 = icmp samesign ult i32 %249, %250
  br i1 %251, label %.loopexit34, label %252

252:                                              ; preds = %248
  %253 = icmp ne i32 %249, %250
  %254 = icmp eq i32 %0, 0
  %255 = or i1 %254, %149
  %256 = and i1 %255, %253
  br i1 %256, label %.loopexit34, label %257

257:                                              ; preds = %252
  %258 = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 0, ptr %258, align 2, !tbaa !8
  %259 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i16 %153, ptr %259, align 4, !tbaa !8
  %260 = add i16 %160, %153
  %261 = getelementptr inbounds nuw i8, ptr %8, i64 6
  store i16 %260, ptr %261, align 2, !tbaa !8
  %262 = add i16 %167, %260
  %263 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 %262, ptr %263, align 8, !tbaa !8
  %264 = add i16 %174, %262
  %265 = getelementptr inbounds nuw i8, ptr %8, i64 10
  store i16 %264, ptr %265, align 2, !tbaa !8
  %266 = add i16 %181, %264
  %267 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i16 %266, ptr %267, align 4, !tbaa !8
  %268 = add i16 %188, %266
  %269 = getelementptr inbounds nuw i8, ptr %8, i64 14
  store i16 %268, ptr %269, align 2, !tbaa !8
  %270 = add i16 %195, %268
  %271 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i16 %270, ptr %271, align 16, !tbaa !8
  %272 = add i16 %202, %270
  %273 = getelementptr inbounds nuw i8, ptr %8, i64 18
  store i16 %272, ptr %273, align 2, !tbaa !8
  %274 = add i16 %209, %272
  %275 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i16 %274, ptr %275, align 4, !tbaa !8
  %276 = add i16 %216, %274
  %277 = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %276, ptr %277, align 2, !tbaa !8
  %278 = add i16 %223, %276
  %279 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %278, ptr %279, align 8, !tbaa !8
  %280 = add i16 %230, %278
  %281 = getelementptr inbounds nuw i8, ptr %8, i64 26
  store i16 %280, ptr %281, align 2, !tbaa !8
  %282 = add i16 %237, %280
  %283 = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i16 %282, ptr %283, align 4, !tbaa !8
  %284 = add i16 %244, %282
  %285 = getelementptr inbounds nuw i8, ptr %8, i64 30
  store i16 %284, ptr %285, align 2, !tbaa !8
  br i1 %9, label %336, label %286

286:                                              ; preds = %257
  %287 = zext i32 %2 to i64
  %288 = and i64 %287, 1
  %289 = icmp eq i32 %2, 1
  br i1 %289, label %323, label %290

290:                                              ; preds = %286
  %291 = and i64 %287, 4294967294
  br label %292

292:                                              ; preds = %318, %290
  %293 = phi i64 [ 0, %290 ], [ %319, %318 ]
  %294 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %293
  %295 = load i16, ptr %294, align 2, !tbaa !8
  %296 = icmp eq i16 %295, 0
  br i1 %296, label %305, label %297

297:                                              ; preds = %292
  %298 = trunc i64 %293 to i16
  %299 = zext i16 %295 to i64
  %300 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %299
  %301 = load i16, ptr %300, align 2, !tbaa !8
  %302 = add i16 %301, 1
  store i16 %302, ptr %300, align 2, !tbaa !8
  %303 = zext i16 %301 to i64
  %304 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %303
  store i16 %298, ptr %304, align 2, !tbaa !8
  br label %305

305:                                              ; preds = %297, %292
  %306 = or disjoint i64 %293, 1
  %307 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %306
  %308 = load i16, ptr %307, align 2, !tbaa !8
  %309 = icmp eq i16 %308, 0
  br i1 %309, label %318, label %310

310:                                              ; preds = %305
  %311 = trunc i64 %306 to i16
  %312 = zext i16 %308 to i64
  %313 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %312
  %314 = load i16, ptr %313, align 2, !tbaa !8
  %315 = add i16 %314, 1
  store i16 %315, ptr %313, align 2, !tbaa !8
  %316 = zext i16 %314 to i64
  %317 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %316
  store i16 %311, ptr %317, align 2, !tbaa !8
  br label %318

318:                                              ; preds = %310, %305
  %319 = add nuw i64 %293, 2
  %320 = icmp eq i64 %319, %291
  br i1 %320, label %321, label %292, !llvm.loop !18

321:                                              ; preds = %318
  %322 = icmp eq i64 %288, 0
  br i1 %322, label %336, label %323

323:                                              ; preds = %321, %286
  %324 = phi i64 [ 0, %286 ], [ %291, %321 ]
  %325 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %325)
  %326 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %324
  %327 = load i16, ptr %326, align 2, !tbaa !8
  %328 = icmp eq i16 %327, 0
  br i1 %328, label %336, label %329

329:                                              ; preds = %323
  %330 = trunc i64 %324 to i16
  %331 = zext i16 %327 to i64
  %332 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %331
  %333 = load i16, ptr %332, align 2, !tbaa !8
  %334 = zext i16 %333 to i64
  %335 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %334
  store i16 %330, ptr %335, align 2, !tbaa !8
  br label %336

336:                                              ; preds = %329, %323, %321, %257
  switch i32 %0, label %342 [
    i32 0, label %337
    i32 1, label %338
    i32 2, label %340
  ]

337:                                              ; preds = %336
  br label %342

338:                                              ; preds = %336
  %339 = icmp ugt i32 %147, 9
  br i1 %339, label %.loopexit34, label %342

340:                                              ; preds = %336
  %341 = icmp ugt i32 %147, 9
  br i1 %341, label %.loopexit34, label %342

342:                                              ; preds = %340, %338, %337, %336
  %343 = phi i1 [ true, %340 ], [ false, %336 ], [ false, %337 ], [ false, %338 ]
  %344 = phi ptr [ @inflate_table.dbase, %340 ], [ null, %336 ], [ null, %337 ], [ @inflate_table.lbase, %338 ]
  %345 = phi ptr [ @inflate_table.dext, %340 ], [ null, %336 ], [ null, %337 ], [ @inflate_table.lext, %338 ]
  %346 = phi i32 [ 0, %340 ], [ 0, %336 ], [ 20, %337 ], [ 257, %338 ]
  %347 = phi i1 [ false, %340 ], [ false, %336 ], [ false, %337 ], [ true, %338 ]
  %348 = load ptr, ptr %3, align 8, !tbaa !14
  %349 = shl nuw i32 1, %147
  %350 = add i32 %349, -1
  %351 = trunc i32 %147 to i8
  br label %353

352:                                              ; preds = %505
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !19
  unreachable, !nosanitize !19

353:                                              ; preds = %505, %342
  %354 = phi i64 [ 0, %342 ], [ %420, %505 ]
  %355 = phi i32 [ %151, %342 ], [ %512, %505 ]
  %356 = phi ptr [ %348, %342 ], [ %510, %505 ]
  %357 = phi i32 [ -1, %342 ], [ %509, %505 ]
  %358 = phi i32 [ 0, %342 ], [ %419, %505 ]
  %359 = phi i32 [ %349, %342 ], [ %508, %505 ]
  %360 = phi i32 [ 0, %342 ], [ %507, %505 ]
  %361 = phi i32 [ %147, %342 ], [ %506, %505 ]
  %362 = phi i32 [ %151, %342 ], [ %440, %505 ]
  %363 = trunc i32 %355 to i8
  %364 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %354
  %365 = load i16, ptr %364, align 2, !tbaa !8
  %366 = zext i16 %365 to i32
  %367 = add nuw nsw i32 %366, 1
  %368 = icmp samesign ult i32 %367, %346
  br i1 %368, label %379, label %369

369:                                              ; preds = %353
  %370 = icmp samesign ugt i32 %346, %366
  br i1 %370, label %379, label %371

371:                                              ; preds = %369
  %372 = sub nuw nsw i32 %366, %346
  %373 = zext nneg i32 %372 to i64
  %374 = getelementptr inbounds nuw [2 x i8], ptr %345, i64 %373
  %375 = load i16, ptr %374, align 2, !tbaa !8
  %376 = trunc i16 %375 to i8
  %377 = getelementptr inbounds nuw [2 x i8], ptr %344, i64 %373
  %378 = load i16, ptr %377, align 2, !tbaa !8
  br label %379

379:                                              ; preds = %371, %369, %353
  %380 = phi i16 [ %365, %353 ], [ %378, %371 ], [ 0, %369 ]
  %381 = phi i8 [ 0, %353 ], [ %376, %371 ], [ 96, %369 ]
  %382 = shl nuw i32 1, %355
  %383 = shl nuw i32 1, %361
  %384 = lshr i32 %358, %360
  br label %385

385:                                              ; preds = %395, %379
  %386 = phi i32 [ %383, %379 ], [ %388, %395 ]
  %387 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %386, i32 %382), !nosanitize !19
  %388 = extractvalue { i32, i1 } %387, 0, !nosanitize !19
  %389 = extractvalue { i32, i1 } %387, 1, !nosanitize !19
  br i1 %389, label %390, label %391, !prof !20, !nosanitize !19

390:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !19
  unreachable, !nosanitize !19

391:                                              ; preds = %385
  %392 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %384, i32 %388), !nosanitize !19
  %393 = extractvalue { i32, i1 } %392, 1, !nosanitize !19
  br i1 %393, label %394, label %395, !prof !20, !nosanitize !19

394:                                              ; preds = %391
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !19
  unreachable, !nosanitize !19

395:                                              ; preds = %391
  %396 = extractvalue { i32, i1 } %392, 0, !nosanitize !19
  %397 = zext i32 %396 to i64
  %398 = getelementptr inbounds nuw [4 x i8], ptr %356, i64 %397
  store i8 %381, ptr %398, align 2, !tbaa !16
  %399 = getelementptr inbounds nuw i8, ptr %398, i64 1
  store i8 %363, ptr %399, align 1, !tbaa !16
  %400 = getelementptr inbounds nuw i8, ptr %398, i64 2
  store i16 %380, ptr %400, align 2, !tbaa !8
  %401 = icmp eq i32 %388, 0
  br i1 %401, label %402, label %385, !llvm.loop !21

402:                                              ; preds = %395
  %403 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %362, i32 1), !nosanitize !19
  %404 = extractvalue { i32, i1 } %403, 1, !nosanitize !19
  br i1 %404, label %405, label %406, !prof !20, !nosanitize !19

405:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !19
  unreachable, !nosanitize !19

406:                                              ; preds = %402
  %407 = extractvalue { i32, i1 } %403, 0, !nosanitize !19
  %408 = shl nuw i32 1, %407
  br label %409

409:                                              ; preds = %409, %406
  %410 = phi i32 [ %408, %406 ], [ %413, %409 ]
  %411 = and i32 %410, %358
  %412 = icmp eq i32 %411, 0
  %413 = lshr i32 %410, 1
  br i1 %412, label %414, label %409, !llvm.loop !22

414:                                              ; preds = %409
  %415 = icmp eq i32 %410, 0
  %416 = add i32 %410, -1
  %417 = and i32 %416, %358
  %418 = add nuw i32 %417, %410
  %419 = select i1 %415, i32 0, i32 %418
  %420 = add nuw nsw i64 %354, 1
  %421 = icmp eq i64 %354, 4294967295
  br i1 %421, label %422, label %423, !prof !20, !nosanitize !19

422:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !19
  unreachable, !nosanitize !19

423:                                              ; preds = %414
  %424 = zext i32 %362 to i64
  %425 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %424
  %426 = load i16, ptr %425, align 2, !tbaa !8
  %427 = add i16 %426, -1
  store i16 %427, ptr %425, align 2, !tbaa !8
  %428 = icmp eq i16 %427, 0
  br i1 %428, label %429, label %439

429:                                              ; preds = %423
  %430 = icmp eq i32 %362, %148
  br i1 %430, label %514, label %431

431:                                              ; preds = %429
  %432 = and i64 %420, 4294967295
  %433 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %432
  %434 = load i16, ptr %433, align 2, !tbaa !8
  %435 = zext i16 %434 to i64
  %436 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %435
  %437 = load i16, ptr %436, align 2, !tbaa !8
  %438 = zext i16 %437 to i32
  br label %439

439:                                              ; preds = %431, %423
  %440 = phi i32 [ %438, %431 ], [ %362, %423 ]
  %441 = icmp ugt i32 %440, %147
  br i1 %441, label %442, label %505

442:                                              ; preds = %439
  %443 = and i32 %419, %350
  %444 = icmp eq i32 %443, %357
  br i1 %444, label %505, label %445

445:                                              ; preds = %442
  %446 = icmp eq i32 %360, 0
  %447 = select i1 %446, i32 %147, i32 %360
  %448 = zext i32 %383 to i64
  %449 = getelementptr inbounds nuw [4 x i8], ptr %356, i64 %448
  %450 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %440, i32 %447), !nosanitize !19
  %451 = extractvalue { i32, i1 } %450, 1, !nosanitize !19
  br i1 %451, label %452, label %453, !prof !20, !nosanitize !19

452:                                              ; preds = %445
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !19
  unreachable, !nosanitize !19

453:                                              ; preds = %445
  %454 = extractvalue { i32, i1 } %450, 0, !nosanitize !19
  %455 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %454, i32 %447), !nosanitize !19
  %456 = extractvalue { i32, i1 } %455, 1, !nosanitize !19
  br i1 %456, label %.loopexit, label %457, !prof !23, !nosanitize !19

457:                                              ; preds = %453
  %458 = shl nuw i32 1, %454
  br label %459

.loopexit:                                        ; preds = %453, %476
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !19
  unreachable, !nosanitize !19

459:                                              ; preds = %476, %457
  %460 = phi { i32, i1 } [ %479, %476 ], [ %455, %457 ]
  %461 = phi i32 [ %478, %476 ], [ %458, %457 ]
  %462 = phi i32 [ %477, %476 ], [ %454, %457 ]
  %463 = extractvalue { i32, i1 } %460, 0
  %464 = icmp ult i32 %463, %148
  br i1 %464, label %465, label %481

465:                                              ; preds = %459
  %466 = zext nneg i32 %463 to i64
  %467 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %466
  %468 = load i16, ptr %467, align 2, !tbaa !8
  %469 = zext i16 %468 to i32
  %470 = sub nsw i32 %461, %469
  %471 = icmp slt i32 %470, 1
  br i1 %471, label %481, label %472

472:                                              ; preds = %465
  %473 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %462, i32 1), !nosanitize !19
  %474 = extractvalue { i32, i1 } %473, 1, !nosanitize !19
  br i1 %474, label %475, label %476, !prof !20, !nosanitize !19

475:                                              ; preds = %472
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !19
  unreachable, !nosanitize !19

476:                                              ; preds = %472
  %477 = extractvalue { i32, i1 } %473, 0, !nosanitize !19
  %478 = shl nuw i32 %470, 1
  %479 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %477, i32 %447), !nosanitize !19
  %480 = extractvalue { i32, i1 } %479, 1, !nosanitize !19
  br i1 %480, label %.loopexit, label %459, !prof !24, !llvm.loop !25, !nosanitize !19

481:                                              ; preds = %465, %459
  %482 = shl nuw i32 1, %462
  %483 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %359, i32 %482), !nosanitize !19
  %484 = extractvalue { i32, i1 } %483, 0, !nosanitize !19
  %485 = extractvalue { i32, i1 } %483, 1, !nosanitize !19
  br i1 %485, label %486, label %487, !prof !20, !nosanitize !19

486:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !19
  unreachable, !nosanitize !19

487:                                              ; preds = %481
  %488 = icmp ugt i32 %484, 852
  %489 = select i1 %347, i1 %488, i1 false
  %490 = icmp ugt i32 %484, 592
  %491 = select i1 %343, i1 %490, i1 false
  %492 = select i1 %489, i1 true, i1 %491
  br i1 %492, label %.loopexit34, label %493

493:                                              ; preds = %487
  %494 = trunc i32 %462 to i8
  %495 = load ptr, ptr %3, align 8, !tbaa !14
  %496 = zext nneg i32 %443 to i64
  %497 = getelementptr inbounds nuw [4 x i8], ptr %495, i64 %496
  store i8 %494, ptr %497, align 2, !tbaa !26
  %498 = getelementptr inbounds nuw i8, ptr %497, i64 1
  store i8 %351, ptr %498, align 1, !tbaa !28
  %499 = ptrtoint ptr %449 to i64
  %500 = ptrtoint ptr %495 to i64
  %501 = sub i64 %499, %500
  %502 = lshr exact i64 %501, 2
  %503 = trunc i64 %502 to i16
  %504 = getelementptr inbounds nuw i8, ptr %497, i64 2
  store i16 %503, ptr %504, align 2, !tbaa !29
  br label %505

505:                                              ; preds = %493, %442, %439
  %506 = phi i32 [ %462, %493 ], [ %361, %442 ], [ %361, %439 ]
  %507 = phi i32 [ %447, %493 ], [ %360, %442 ], [ %360, %439 ]
  %508 = phi i32 [ %484, %493 ], [ %359, %442 ], [ %359, %439 ]
  %509 = phi i32 [ %443, %493 ], [ %357, %442 ], [ %357, %439 ]
  %510 = phi ptr [ %449, %493 ], [ %356, %442 ], [ %356, %439 ]
  %511 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %440, i32 %507), !nosanitize !19
  %512 = extractvalue { i32, i1 } %511, 0, !nosanitize !19
  %513 = extractvalue { i32, i1 } %511, 1, !nosanitize !19
  br i1 %513, label %352, label %353, !prof !24, !nosanitize !19

514:                                              ; preds = %429
  %515 = icmp eq i32 %419, 0
  br i1 %515, label %521, label %516

516:                                              ; preds = %514
  %517 = zext i32 %419 to i64
  %518 = getelementptr inbounds nuw [4 x i8], ptr %356, i64 %517
  store i8 64, ptr %518, align 2, !tbaa !16
  %519 = getelementptr inbounds nuw i8, ptr %518, i64 1
  store i8 %363, ptr %519, align 1, !tbaa !16
  %520 = getelementptr inbounds nuw i8, ptr %518, i64 2
  store i16 0, ptr %520, align 2, !tbaa !8
  br label %521

521:                                              ; preds = %516, %514
  %522 = load ptr, ptr %3, align 8, !tbaa !14
  %523 = zext i32 %359 to i64
  %524 = getelementptr inbounds nuw [4 x i8], ptr %522, i64 %523
  store ptr %524, ptr %3, align 8, !tbaa !14
  br label %525

525:                                              ; preds = %521, %121
  %526 = phi i32 [ %147, %521 ], [ 1, %121 ]
  store i32 %526, ptr %4, align 4, !tbaa !4
  br label %.loopexit34

.loopexit34:                                      ; preds = %487, %525, %340, %338, %252, %248, %241, %234, %227, %220, %213, %206, %199, %192, %185, %178, %171, %164, %155, %.loopexit35
  %527 = phi i32 [ -1, %155 ], [ 1, %338 ], [ -1, %.loopexit35 ], [ -1, %252 ], [ 0, %525 ], [ 1, %340 ], [ -1, %248 ], [ -1, %241 ], [ -1, %234 ], [ -1, %227 ], [ -1, %220 ], [ -1, %213 ], [ -1, %206 ], [ -1, %199 ], [ -1, %192 ], [ -1, %185 ], [ -1, %178 ], [ -1, %171 ], [ -1, %164 ], [ 1, %487 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  ret i32 %527
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @inflate_fixed(ptr noundef writeonly captures(none) initializes((104, 128)) %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @lenfix, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 9, ptr %3, align 8, !tbaa !36
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @distfix, ptr %4, align 8, !tbaa !37
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 5, ptr %5, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nomerge noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 3cab3bc6384b5f58cab7140d00d7a527eade010e)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!6, !6, i64 0}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = !{}
!20 = !{!"branch_weights", i32 1, i32 1048575}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = !{!"branch_weights", i32 1, i32 127}
!24 = !{!"branch_weights", i32 127, i32 134217473}
!25 = distinct !{!25, !11}
!26 = !{!27, !6, i64 0}
!27 = !{!"", !6, i64 0, !6, i64 1, !9, i64 2}
!28 = !{!27, !6, i64 1}
!29 = !{!27, !9, i64 2}
!30 = !{!31, !15, i64 104}
!31 = !{!"inflate_state", !32, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !33, i64 32, !33, i64 40, !34, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !35, i64 72, !33, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !15, i64 104, !15, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !15, i64 144, !6, i64 152, !6, i64 792, !6, i64 1368, !5, i64 7144, !5, i64 7148, !5, i64 7152}
!32 = !{!"p1 _ZTS10z_stream_s", !15, i64 0}
!33 = !{!"long", !6, i64 0}
!34 = !{!"p1 _ZTS11gz_header_s", !15, i64 0}
!35 = !{!"p1 omnipotent char", !15, i64 0}
!36 = !{!31, !5, i64 120}
!37 = !{!31, !15, i64 112}
!38 = !{!31, !5, i64 124}
