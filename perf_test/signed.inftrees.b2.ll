; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.inftrees.ll'
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
  br i1 %46, label %.loopexit33, label %47

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
  br i1 %61, label %.loopexit33, label %50, !llvm.loop !12

.loopexit33:                                      ; preds = %50, %45
  %62 = getelementptr inbounds nuw i8, ptr %7, i64 30
  %63 = load i16, ptr %62, align 2, !tbaa !8
  %64 = load i32, ptr %4, align 4, !tbaa !4
  %65 = icmp eq i16 %63, 0
  br i1 %65, label %66, label %130

66:                                               ; preds = %.loopexit33
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
  br i1 %120, label %121, label %.loopexit32

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
  br label %495

130:                                              ; preds = %113, %109, %105, %101, %97, %93, %89, %85, %81, %77, %73, %68, %66, %.loopexit33
  %131 = phi i32 [ %69, %113 ], [ %69, %109 ], [ %69, %105 ], [ %69, %101 ], [ %69, %97 ], [ %69, %93 ], [ %69, %89 ], [ %69, %85 ], [ %69, %81 ], [ %69, %77 ], [ %69, %73 ], [ %69, %68 ], [ %64, %66 ], [ %64, %.loopexit33 ]
  %132 = phi i16 [ 0, %113 ], [ 0, %109 ], [ 0, %105 ], [ 0, %101 ], [ 0, %97 ], [ 0, %93 ], [ 0, %89 ], [ 0, %85 ], [ 0, %81 ], [ 0, %77 ], [ 0, %73 ], [ 0, %68 ], [ 0, %66 ], [ %63, %.loopexit33 ]
  %133 = phi i32 [ 2, %113 ], [ 3, %109 ], [ 4, %105 ], [ 5, %101 ], [ 6, %97 ], [ 7, %93 ], [ 8, %89 ], [ 9, %85 ], [ 10, %81 ], [ 11, %77 ], [ 12, %73 ], [ 13, %68 ], [ 14, %66 ], [ 15, %.loopexit33 ]
  %134 = tail call i32 @llvm.umin.i32(i32 %131, i32 %133)
  %135 = zext nneg i32 %133 to i64
  br label %136

136:                                              ; preds = %141, %130
  %137 = phi i64 [ 1, %130 ], [ %142, %141 ]
  %138 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %137
  %139 = load i16, ptr %138, align 2, !tbaa !8
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %247

141:                                              ; preds = %136
  %142 = add nuw nsw i64 %137, 1
  %143 = icmp eq i64 %142, %135
  br i1 %143, label %.loopexit32, label %136, !llvm.loop !17

144:                                              ; preds = %.loopexit32
  %145 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %146 = load i16, ptr %145, align 4, !tbaa !8
  %147 = shl nuw nsw i16 %256, 1
  %148 = sub nuw nsw i16 4, %147
  %149 = zext nneg i16 %148 to i32
  %150 = zext i16 %146 to i32
  %151 = sub nsw i32 %149, %150
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %.loopexit, label %153

153:                                              ; preds = %144
  %154 = getelementptr inbounds nuw i8, ptr %7, i64 6
  %155 = load i16, ptr %154, align 2, !tbaa !8
  %156 = shl nuw nsw i32 %151, 1
  %157 = zext i16 %155 to i32
  %158 = sub nsw i32 %156, %157
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %.loopexit, label %160

160:                                              ; preds = %153
  %161 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %162 = load i16, ptr %161, align 8, !tbaa !8
  %163 = shl nuw nsw i32 %158, 1
  %164 = zext i16 %162 to i32
  %165 = sub nsw i32 %163, %164
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %.loopexit, label %167

167:                                              ; preds = %160
  %168 = getelementptr inbounds nuw i8, ptr %7, i64 10
  %169 = load i16, ptr %168, align 2, !tbaa !8
  %170 = shl nuw nsw i32 %165, 1
  %171 = zext i16 %169 to i32
  %172 = sub nsw i32 %170, %171
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %.loopexit, label %174

174:                                              ; preds = %167
  %175 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %176 = load i16, ptr %175, align 4, !tbaa !8
  %177 = shl nuw nsw i32 %172, 1
  %178 = zext i16 %176 to i32
  %179 = sub nsw i32 %177, %178
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %.loopexit, label %181

181:                                              ; preds = %174
  %182 = getelementptr inbounds nuw i8, ptr %7, i64 14
  %183 = load i16, ptr %182, align 2, !tbaa !8
  %184 = shl nuw nsw i32 %179, 1
  %185 = zext i16 %183 to i32
  %186 = sub nsw i32 %184, %185
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %.loopexit, label %188

188:                                              ; preds = %181
  %189 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %190 = load i16, ptr %189, align 16, !tbaa !8
  %191 = shl nuw nsw i32 %186, 1
  %192 = zext i16 %190 to i32
  %193 = sub nsw i32 %191, %192
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %.loopexit, label %195

195:                                              ; preds = %188
  %196 = getelementptr inbounds nuw i8, ptr %7, i64 18
  %197 = load i16, ptr %196, align 2, !tbaa !8
  %198 = shl nuw nsw i32 %193, 1
  %199 = zext i16 %197 to i32
  %200 = sub nsw i32 %198, %199
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %.loopexit, label %202

202:                                              ; preds = %195
  %203 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %204 = load i16, ptr %203, align 4, !tbaa !8
  %205 = shl nuw nsw i32 %200, 1
  %206 = zext i16 %204 to i32
  %207 = sub nsw i32 %205, %206
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %.loopexit, label %209

209:                                              ; preds = %202
  %210 = getelementptr inbounds nuw i8, ptr %7, i64 22
  %211 = load i16, ptr %210, align 2, !tbaa !8
  %212 = shl nuw nsw i32 %207, 1
  %213 = zext i16 %211 to i32
  %214 = sub nsw i32 %212, %213
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %.loopexit, label %216

216:                                              ; preds = %209
  %217 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %218 = load i16, ptr %217, align 8, !tbaa !8
  %219 = shl nuw nsw i32 %214, 1
  %220 = zext i16 %218 to i32
  %221 = sub nsw i32 %219, %220
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %.loopexit, label %223

223:                                              ; preds = %216
  %224 = getelementptr inbounds nuw i8, ptr %7, i64 26
  %225 = load i16, ptr %224, align 2, !tbaa !8
  %226 = shl nuw nsw i32 %221, 1
  %227 = zext i16 %225 to i32
  %228 = sub nsw i32 %226, %227
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %.loopexit, label %230

230:                                              ; preds = %223
  %231 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %232 = load i16, ptr %231, align 4, !tbaa !8
  %233 = shl nuw nsw i32 %228, 1
  %234 = zext i16 %232 to i32
  %235 = sub nsw i32 %233, %234
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %.loopexit, label %237

237:                                              ; preds = %230
  %238 = shl nuw nsw i32 %235, 1
  %239 = zext i16 %253 to i32
  %240 = icmp samesign ult i32 %238, %239
  br i1 %240, label %.loopexit, label %241

241:                                              ; preds = %237
  %242 = icmp ne i32 %238, %239
  %243 = icmp eq i32 %0, 0
  %244 = or i1 %243, %252
  %245 = and i1 %244, %242
  br i1 %245, label %.loopexit, label %258

246:                                              ; preds = %445
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !18
  unreachable, !nosanitize !18

247:                                              ; preds = %136
  %248 = trunc nuw nsw i64 %137 to i32
  %249 = tail call i32 @llvm.umax.i32(i32 %134, i32 %248)
  br label %.loopexit32

.loopexit32:                                      ; preds = %141, %247, %117
  %250 = phi i32 [ 1, %117 ], [ %249, %247 ], [ %133, %141 ]
  %251 = phi i32 [ 1, %117 ], [ %133, %247 ], [ %133, %141 ]
  %252 = phi i1 [ false, %117 ], [ true, %247 ], [ true, %141 ]
  %253 = phi i16 [ 0, %117 ], [ %132, %247 ], [ %132, %141 ]
  %254 = phi i32 [ 1, %117 ], [ %248, %247 ], [ %133, %141 ]
  %255 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %256 = load i16, ptr %255, align 2, !tbaa !8
  %257 = icmp ugt i16 %256, 2
  br i1 %257, label %.loopexit, label %144

258:                                              ; preds = %241
  %259 = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 0, ptr %259, align 2, !tbaa !8
  %260 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i16 %256, ptr %260, align 4, !tbaa !8
  %261 = add i16 %146, %256
  %262 = getelementptr inbounds nuw i8, ptr %8, i64 6
  store i16 %261, ptr %262, align 2, !tbaa !8
  %263 = add i16 %155, %261
  %264 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 %263, ptr %264, align 8, !tbaa !8
  %265 = add i16 %162, %263
  %266 = getelementptr inbounds nuw i8, ptr %8, i64 10
  store i16 %265, ptr %266, align 2, !tbaa !8
  %267 = add i16 %169, %265
  %268 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i16 %267, ptr %268, align 4, !tbaa !8
  %269 = add i16 %176, %267
  %270 = getelementptr inbounds nuw i8, ptr %8, i64 14
  store i16 %269, ptr %270, align 2, !tbaa !8
  %271 = add i16 %183, %269
  %272 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i16 %271, ptr %272, align 16, !tbaa !8
  %273 = add i16 %190, %271
  %274 = getelementptr inbounds nuw i8, ptr %8, i64 18
  store i16 %273, ptr %274, align 2, !tbaa !8
  %275 = add i16 %197, %273
  %276 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i16 %275, ptr %276, align 4, !tbaa !8
  %277 = add i16 %204, %275
  %278 = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %277, ptr %278, align 2, !tbaa !8
  %279 = add i16 %211, %277
  %280 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %279, ptr %280, align 8, !tbaa !8
  %281 = add i16 %218, %279
  %282 = getelementptr inbounds nuw i8, ptr %8, i64 26
  store i16 %281, ptr %282, align 2, !tbaa !8
  %283 = add i16 %225, %281
  %284 = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i16 %283, ptr %284, align 4, !tbaa !8
  %285 = add i16 %232, %283
  %286 = getelementptr inbounds nuw i8, ptr %8, i64 30
  store i16 %285, ptr %286, align 2, !tbaa !8
  br i1 %9, label %337, label %287

287:                                              ; preds = %258
  %288 = zext i32 %2 to i64
  %289 = and i64 %288, 1
  %290 = icmp eq i32 %2, 1
  br i1 %290, label %324, label %291

291:                                              ; preds = %287
  %292 = and i64 %288, 4294967294
  br label %293

293:                                              ; preds = %319, %291
  %294 = phi i64 [ 0, %291 ], [ %320, %319 ]
  %295 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %294
  %296 = load i16, ptr %295, align 2, !tbaa !8
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %306, label %298

298:                                              ; preds = %293
  %299 = trunc i64 %294 to i16
  %300 = zext i16 %296 to i64
  %301 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %300
  %302 = load i16, ptr %301, align 2, !tbaa !8
  %303 = add i16 %302, 1
  store i16 %303, ptr %301, align 2, !tbaa !8
  %304 = zext i16 %302 to i64
  %305 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %304
  store i16 %299, ptr %305, align 2, !tbaa !8
  br label %306

306:                                              ; preds = %298, %293
  %307 = or disjoint i64 %294, 1
  %308 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %307
  %309 = load i16, ptr %308, align 2, !tbaa !8
  %310 = icmp eq i16 %309, 0
  br i1 %310, label %319, label %311

311:                                              ; preds = %306
  %312 = trunc i64 %307 to i16
  %313 = zext i16 %309 to i64
  %314 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %313
  %315 = load i16, ptr %314, align 2, !tbaa !8
  %316 = add i16 %315, 1
  store i16 %316, ptr %314, align 2, !tbaa !8
  %317 = zext i16 %315 to i64
  %318 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %317
  store i16 %312, ptr %318, align 2, !tbaa !8
  br label %319

319:                                              ; preds = %311, %306
  %320 = add nuw i64 %294, 2
  %321 = icmp eq i64 %320, %292
  br i1 %321, label %322, label %293, !llvm.loop !19

322:                                              ; preds = %319
  %323 = icmp eq i64 %289, 0
  br i1 %323, label %337, label %324

324:                                              ; preds = %322, %287
  %325 = phi i64 [ 0, %287 ], [ %292, %322 ]
  %326 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %326)
  %327 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %325
  %328 = load i16, ptr %327, align 2, !tbaa !8
  %329 = icmp eq i16 %328, 0
  br i1 %329, label %337, label %330

330:                                              ; preds = %324
  %331 = trunc i64 %325 to i16
  %332 = zext i16 %328 to i64
  %333 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %332
  %334 = load i16, ptr %333, align 2, !tbaa !8
  %335 = zext i16 %334 to i64
  %336 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %335
  store i16 %331, ptr %336, align 2, !tbaa !8
  br label %337

337:                                              ; preds = %330, %324, %322, %258
  switch i32 %0, label %343 [
    i32 0, label %338
    i32 1, label %339
    i32 2, label %341
  ]

338:                                              ; preds = %337
  br label %343

339:                                              ; preds = %337
  %340 = icmp ugt i32 %250, 9
  br i1 %340, label %.loopexit, label %343

341:                                              ; preds = %337
  %342 = icmp ugt i32 %250, 9
  br i1 %342, label %.loopexit, label %343

343:                                              ; preds = %341, %339, %338, %337
  %344 = phi i1 [ false, %339 ], [ true, %341 ], [ false, %338 ], [ false, %337 ]
  %345 = phi ptr [ @inflate_table.lbase, %339 ], [ @inflate_table.dbase, %341 ], [ null, %338 ], [ null, %337 ]
  %346 = phi ptr [ @inflate_table.lext, %339 ], [ @inflate_table.dext, %341 ], [ null, %338 ], [ null, %337 ]
  %347 = phi i32 [ 257, %339 ], [ 0, %341 ], [ 20, %338 ], [ 0, %337 ]
  %348 = phi i1 [ true, %339 ], [ false, %341 ], [ false, %338 ], [ false, %337 ]
  %349 = shl nuw i32 1, %250
  %350 = add i32 %349, -1
  %351 = load ptr, ptr %3, align 8, !tbaa !14
  %352 = trunc i32 %250 to i8
  br label %353

353:                                              ; preds = %472, %343
  %354 = phi i32 [ %430, %472 ], [ %254, %343 ]
  %355 = phi i32 [ %413, %472 ], [ 0, %343 ]
  %356 = phi i32 [ %465, %472 ], [ %250, %343 ]
  %357 = phi i32 [ %436, %472 ], [ 0, %343 ]
  %358 = phi i32 [ %466, %472 ], [ %349, %343 ]
  %359 = phi i32 [ %412, %472 ], [ 0, %343 ]
  %360 = phi i32 [ %432, %472 ], [ -1, %343 ]
  %361 = phi ptr [ %438, %472 ], [ %351, %343 ]
  %362 = shl nuw i32 1, %356
  br label %363

363:                                              ; preds = %429, %353
  %364 = phi i32 [ %354, %353 ], [ %430, %429 ]
  %365 = phi i32 [ %355, %353 ], [ %413, %429 ]
  %366 = phi i32 [ %359, %353 ], [ %412, %429 ]
  %367 = sub i32 %364, %357
  %368 = trunc i32 %367 to i8
  %369 = zext i32 %365 to i64
  %370 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %369
  %371 = load i16, ptr %370, align 2, !tbaa !8
  %372 = zext i16 %371 to i32
  %373 = add nuw nsw i32 %372, 1
  %374 = icmp samesign ult i32 %373, %347
  br i1 %374, label %385, label %375

375:                                              ; preds = %363
  %376 = icmp samesign ugt i32 %347, %372
  br i1 %376, label %385, label %377

377:                                              ; preds = %375
  %378 = sub nuw nsw i32 %372, %347
  %379 = zext nneg i32 %378 to i64
  %380 = getelementptr inbounds nuw [2 x i8], ptr %346, i64 %379
  %381 = load i16, ptr %380, align 2, !tbaa !8
  %382 = trunc i16 %381 to i8
  %383 = getelementptr inbounds nuw [2 x i8], ptr %345, i64 %379
  %384 = load i16, ptr %383, align 2, !tbaa !8
  br label %385

385:                                              ; preds = %377, %375, %363
  %386 = phi i16 [ %371, %363 ], [ %384, %377 ], [ 0, %375 ]
  %387 = phi i8 [ 0, %363 ], [ %382, %377 ], [ 96, %375 ]
  %388 = shl nsw i32 -1, %367
  %389 = lshr i32 %366, %357
  br label %390

390:                                              ; preds = %390, %385
  %391 = phi i32 [ %362, %385 ], [ %392, %390 ]
  %392 = add i32 %391, %388
  %393 = add i32 %392, %389
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds nuw [4 x i8], ptr %361, i64 %394
  store i8 %387, ptr %395, align 2, !tbaa !16
  %396 = getelementptr inbounds nuw i8, ptr %395, i64 1
  store i8 %368, ptr %396, align 1, !tbaa !16
  %397 = getelementptr inbounds nuw i8, ptr %395, i64 2
  store i16 %386, ptr %397, align 2, !tbaa !8
  %398 = icmp eq i32 %392, 0
  br i1 %398, label %399, label %390, !llvm.loop !20

399:                                              ; preds = %390
  %400 = add i32 %364, -1
  %401 = shl nuw i32 1, %400
  br label %402

402:                                              ; preds = %402, %399
  %403 = phi i32 [ %401, %399 ], [ %406, %402 ]
  %404 = and i32 %403, %366
  %405 = icmp eq i32 %404, 0
  %406 = lshr i32 %403, 1
  br i1 %405, label %407, label %402, !llvm.loop !21

407:                                              ; preds = %402
  %408 = icmp eq i32 %403, 0
  %409 = add i32 %403, -1
  %410 = and i32 %409, %366
  %411 = add i32 %410, %403
  %412 = select i1 %408, i32 0, i32 %411
  %413 = add i32 %365, 1
  %414 = zext i32 %364 to i64
  %415 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %414
  %416 = load i16, ptr %415, align 2, !tbaa !8
  %417 = add i16 %416, -1
  store i16 %417, ptr %415, align 2, !tbaa !8
  %418 = icmp eq i16 %417, 0
  br i1 %418, label %419, label %429

419:                                              ; preds = %407
  %420 = icmp eq i32 %364, %251
  br i1 %420, label %484, label %421

421:                                              ; preds = %419
  %422 = zext i32 %413 to i64
  %423 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %422
  %424 = load i16, ptr %423, align 2, !tbaa !8
  %425 = zext i16 %424 to i64
  %426 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %425
  %427 = load i16, ptr %426, align 2, !tbaa !8
  %428 = zext i16 %427 to i32
  br label %429

429:                                              ; preds = %421, %407
  %430 = phi i32 [ %428, %421 ], [ %364, %407 ]
  %431 = icmp ule i32 %430, %250
  %432 = and i32 %412, %350
  %433 = icmp eq i32 %432, %360
  %or.cond = select i1 %431, i1 true, i1 %433
  br i1 %or.cond, label %363, label %434

434:                                              ; preds = %429
  %435 = icmp eq i32 %357, 0
  %436 = select i1 %435, i32 %250, i32 %357
  %437 = zext i32 %362 to i64
  %438 = getelementptr inbounds nuw [4 x i8], ptr %361, i64 %437
  %439 = sub i32 %430, %436
  %440 = shl nuw i32 1, %439
  %441 = icmp ult i32 %430, %251
  br i1 %441, label %442, label %463

442:                                              ; preds = %434
  %443 = sub i32 %251, %436
  %444 = zext nneg i32 %430 to i64
  br label %445

445:                                              ; preds = %456, %442
  %indvars.iv = phi i64 [ %indvars.iv.next, %456 ], [ %444, %442 ]
  %446 = phi i32 [ %458, %456 ], [ %440, %442 ]
  %447 = phi i32 [ %457, %456 ], [ %439, %442 ]
  %448 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv
  %449 = load i16, ptr %448, align 2, !tbaa !8
  %450 = zext i16 %449 to i32
  %451 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %446, i32 %450), !nosanitize !18
  %452 = extractvalue { i32, i1 } %451, 0, !nosanitize !18
  %453 = extractvalue { i32, i1 } %451, 1, !nosanitize !18
  br i1 %453, label %246, label %454, !prof !22, !nosanitize !18

454:                                              ; preds = %445
  %455 = icmp slt i32 %452, 1
  br i1 %455, label %460, label %456

456:                                              ; preds = %454
  %457 = add i32 %447, 1
  %458 = shl nuw i32 %452, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars = trunc i64 %indvars.iv.next to i32
  %459 = icmp ugt i32 %251, %indvars
  br i1 %459, label %445, label %460, !llvm.loop !23

460:                                              ; preds = %456, %454
  %461 = phi i32 [ %443, %456 ], [ %447, %454 ]
  %462 = shl nuw i32 1, %461
  br label %463

463:                                              ; preds = %460, %434
  %464 = phi i32 [ %462, %460 ], [ %440, %434 ]
  %465 = phi i32 [ %461, %460 ], [ %439, %434 ]
  %466 = add i32 %464, %358
  %467 = icmp ugt i32 %466, 852
  %468 = select i1 %348, i1 %467, i1 false
  %469 = icmp ugt i32 %466, 592
  %470 = select i1 %344, i1 %469, i1 false
  %471 = select i1 %468, i1 true, i1 %470
  br i1 %471, label %.loopexit, label %472

472:                                              ; preds = %463
  %473 = trunc i32 %465 to i8
  %474 = load ptr, ptr %3, align 8, !tbaa !14
  %475 = zext nneg i32 %432 to i64
  %476 = getelementptr inbounds nuw [4 x i8], ptr %474, i64 %475
  store i8 %473, ptr %476, align 2, !tbaa !24
  %477 = getelementptr inbounds nuw i8, ptr %476, i64 1
  store i8 %352, ptr %477, align 1, !tbaa !26
  %478 = ptrtoint ptr %438 to i64
  %479 = ptrtoint ptr %474 to i64
  %480 = sub i64 %478, %479
  %481 = lshr exact i64 %480, 2
  %482 = trunc i64 %481 to i16
  %483 = getelementptr inbounds nuw i8, ptr %476, i64 2
  store i16 %482, ptr %483, align 2, !tbaa !27
  br label %353

484:                                              ; preds = %419
  %485 = icmp eq i32 %412, 0
  br i1 %485, label %491, label %486

486:                                              ; preds = %484
  %487 = zext i32 %412 to i64
  %488 = getelementptr inbounds nuw [4 x i8], ptr %361, i64 %487
  store i8 64, ptr %488, align 2, !tbaa !16
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 1
  store i8 %368, ptr %489, align 1, !tbaa !16
  %490 = getelementptr inbounds nuw i8, ptr %488, i64 2
  store i16 0, ptr %490, align 2, !tbaa !8
  br label %491

491:                                              ; preds = %486, %484
  %492 = load ptr, ptr %3, align 8, !tbaa !14
  %493 = zext i32 %358 to i64
  %494 = getelementptr inbounds nuw [4 x i8], ptr %492, i64 %493
  store ptr %494, ptr %3, align 8, !tbaa !14
  br label %495

495:                                              ; preds = %491, %121
  %496 = phi i32 [ %250, %491 ], [ 1, %121 ]
  store i32 %496, ptr %4, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %463, %495, %341, %339, %.loopexit32, %241, %237, %230, %223, %216, %209, %202, %195, %188, %181, %174, %167, %160, %153, %144
  %497 = phi i32 [ -1, %144 ], [ 1, %339 ], [ -1, %.loopexit32 ], [ -1, %241 ], [ 0, %495 ], [ 1, %341 ], [ -1, %237 ], [ -1, %230 ], [ -1, %223 ], [ -1, %216 ], [ -1, %209 ], [ -1, %202 ], [ -1, %195 ], [ -1, %188 ], [ -1, %181 ], [ -1, %174 ], [ -1, %167 ], [ -1, %160 ], [ -1, %153 ], [ 1, %463 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  ret i32 %497
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @inflate_fixed(ptr noundef writeonly captures(none) initializes((104, 128)) %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @lenfix, ptr %2, align 8, !tbaa !28
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 9, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @distfix, ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 5, ptr %5, align 4, !tbaa !36
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
attributes #8 = { noreturn nounwind }

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
!18 = !{}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = !{!"branch_weights", i32 1, i32 1048575}
!23 = distinct !{!23, !11}
!24 = !{!25, !6, i64 0}
!25 = !{!"", !6, i64 0, !6, i64 1, !9, i64 2}
!26 = !{!25, !6, i64 1}
!27 = !{!25, !9, i64 2}
!28 = !{!29, !15, i64 104}
!29 = !{!"inflate_state", !30, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !31, i64 32, !31, i64 40, !32, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !33, i64 72, !31, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !15, i64 104, !15, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !15, i64 144, !6, i64 152, !6, i64 792, !6, i64 1368, !5, i64 7144, !5, i64 7148, !5, i64 7152}
!30 = !{!"p1 _ZTS10z_stream_s", !15, i64 0}
!31 = !{!"long", !6, i64 0}
!32 = !{!"p1 _ZTS11gz_header_s", !15, i64 0}
!33 = !{!"p1 omnipotent char", !15, i64 0}
!34 = !{!29, !5, i64 120}
!35 = !{!29, !15, i64 112}
!36 = !{!29, !5, i64 124}
