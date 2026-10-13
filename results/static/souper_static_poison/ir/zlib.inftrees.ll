; ModuleID = '/mydata/zlib/inftrees.c'
source_filename = "/mydata/zlib/inftrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.code = type { i8, i8, i16 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }

@inflate_copyright = dso_local local_unnamed_addr constant [49 x i8] c" inflate 1.3.2.1 Copyright 1995-2026 Mark Adler \00", align 16
@inflate_table.lbase = internal unnamed_addr constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 16
@inflate_table.lext = internal unnamed_addr constant [31 x i16] [i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 16, i16 68, i16 193], align 16
@inflate_table.dbase = internal unnamed_addr constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], align 16
@inflate_table.dext = internal unnamed_addr constant [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 64, i16 64], align 16
@lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 16
@distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflate_table(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i16], align 16
  %8 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !5
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, ptr %4, align 4, !tbaa !9
  br label %73

12:                                               ; preds = %6
  %13 = zext i32 %2 to i64
  %14 = and i64 %13, 3
  %15 = icmp ult i32 %2, 4
  br i1 %15, label %52, label %16

16:                                               ; preds = %12
  %17 = and i64 %13, 4294967292
  br label %19

18:                                               ; preds = %497, %434, %427, %467, %404, %492, %489
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

19:                                               ; preds = %19, %16
  %20 = phi i64 [ 0, %16 ], [ %49, %19 ]
  %21 = phi i64 [ 0, %16 ], [ %50, %19 ]
  %22 = getelementptr inbounds i16, ptr %1, i64 %20
  %23 = load i16, ptr %22, align 2, !tbaa !5
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !5
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 2, !tbaa !5
  %28 = or disjoint i64 %20, 1
  %29 = getelementptr inbounds i16, ptr %1, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !5
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !5
  %34 = add i16 %33, 1
  store i16 %34, ptr %32, align 2, !tbaa !5
  %35 = or disjoint i64 %20, 2
  %36 = getelementptr inbounds i16, ptr %1, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !5
  %38 = zext i16 %37 to i64
  %39 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !5
  %41 = add i16 %40, 1
  store i16 %41, ptr %39, align 2, !tbaa !5
  %42 = or disjoint i64 %20, 3
  %43 = getelementptr inbounds i16, ptr %1, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !5
  %45 = zext i16 %44 to i64
  %46 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !5
  %48 = add i16 %47, 1
  store i16 %48, ptr %46, align 2, !tbaa !5
  %49 = add nuw nsw i64 %20, 4
  %50 = add i64 %21, 4
  %51 = icmp eq i64 %50, %17
  br i1 %51, label %52, label %19, !llvm.loop !12

52:                                               ; preds = %19, %12
  %53 = phi i64 [ 0, %12 ], [ %49, %19 ]
  %54 = icmp eq i64 %14, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52, %55
  %56 = phi i64 [ %64, %55 ], [ %53, %52 ]
  %57 = phi i64 [ %65, %55 ], [ 0, %52 ]
  %58 = getelementptr inbounds i16, ptr %1, i64 %56
  %59 = load i16, ptr %58, align 2, !tbaa !5
  %60 = zext i16 %59 to i64
  %61 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !5
  %63 = add i16 %62, 1
  store i16 %63, ptr %61, align 2, !tbaa !5
  %64 = add nuw nsw i64 %56, 1
  %65 = add i64 %57, 1
  %66 = icmp eq i64 %65, %14
  br i1 %66, label %67, label %55, !llvm.loop !14

67:                                               ; preds = %55, %52
  %68 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 15
  %69 = load i16, ptr %68, align 2, !tbaa !5
  %70 = load i32, ptr %4, align 4, !tbaa !9
  %71 = icmp eq i16 %69, 0
  br i1 %71, label %73, label %142

72:                                               ; preds = %520, %414, %460, %399, %479
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !11
  unreachable, !nosanitize !11

73:                                               ; preds = %10, %67
  %74 = phi i32 [ %11, %10 ], [ %70, %67 ]
  %75 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 14
  %76 = load i16, ptr %75, align 4, !tbaa !5
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %142

78:                                               ; preds = %73
  %79 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 13
  %80 = load i16, ptr %79, align 2, !tbaa !5
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %142

82:                                               ; preds = %78
  %83 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 12
  %84 = load i16, ptr %83, align 8, !tbaa !5
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %142

86:                                               ; preds = %82
  %87 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 11
  %88 = load i16, ptr %87, align 2, !tbaa !5
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %142

90:                                               ; preds = %86
  %91 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 10
  %92 = load i16, ptr %91, align 4, !tbaa !5
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %142

94:                                               ; preds = %90
  %95 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 9
  %96 = load i16, ptr %95, align 2, !tbaa !5
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %142

98:                                               ; preds = %94
  %99 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 8
  %100 = load i16, ptr %99, align 16, !tbaa !5
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %142

102:                                              ; preds = %98
  %103 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 7
  %104 = load i16, ptr %103, align 2, !tbaa !5
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %142

106:                                              ; preds = %102
  %107 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 6
  %108 = load i16, ptr %107, align 4, !tbaa !5
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %142

110:                                              ; preds = %106
  %111 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 5
  %112 = load i16, ptr %111, align 2, !tbaa !5
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %110
  %115 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 4
  %116 = load i16, ptr %115, align 8, !tbaa !5
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %142

118:                                              ; preds = %114
  %119 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 3
  %120 = load i16, ptr %119, align 2, !tbaa !5
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 2
  %124 = load i16, ptr %123, align 4, !tbaa !5
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %122
  %127 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 1
  %128 = load i16, ptr %127, align 2, !tbaa !5
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load ptr, ptr %3, align 8, !tbaa !16
  %132 = getelementptr inbounds %struct.code, ptr %131, i64 1
  store ptr %132, ptr %3, align 8, !tbaa !16
  store i8 64, ptr %131, align 2, !tbaa.struct !18
  %133 = getelementptr inbounds i8, ptr %131, i64 1
  store i8 1, ptr %133, align 1, !tbaa.struct !20
  %134 = getelementptr inbounds i8, ptr %131, i64 2
  store i16 0, ptr %134, align 2, !tbaa.struct !21
  %135 = load ptr, ptr %3, align 8, !tbaa !16
  %136 = getelementptr inbounds %struct.code, ptr %135, i64 1
  store ptr %136, ptr %3, align 8, !tbaa !16
  store i8 64, ptr %135, align 2, !tbaa.struct !18
  %137 = getelementptr inbounds i8, ptr %135, i64 1
  store i8 1, ptr %137, align 1, !tbaa.struct !20
  %138 = getelementptr inbounds i8, ptr %135, i64 2
  store i16 0, ptr %138, align 2, !tbaa.struct !21
  br label %540

139:                                              ; preds = %126
  %140 = icmp ne i32 %74, 0
  %141 = zext i1 %140 to i32
  br label %260

142:                                              ; preds = %67, %73, %78, %82, %86, %90, %94, %98, %102, %106, %110, %114, %118, %122
  %143 = phi i32 [ %74, %122 ], [ %74, %118 ], [ %74, %114 ], [ %74, %110 ], [ %74, %106 ], [ %74, %102 ], [ %74, %98 ], [ %74, %94 ], [ %74, %90 ], [ %74, %86 ], [ %74, %82 ], [ %74, %78 ], [ %74, %73 ], [ %70, %67 ]
  %144 = phi i16 [ 0, %122 ], [ 0, %118 ], [ 0, %114 ], [ 0, %110 ], [ 0, %106 ], [ 0, %102 ], [ 0, %98 ], [ 0, %94 ], [ 0, %90 ], [ 0, %86 ], [ 0, %82 ], [ 0, %78 ], [ 0, %73 ], [ %69, %67 ]
  %145 = phi i32 [ 2, %122 ], [ 3, %118 ], [ 4, %114 ], [ 5, %110 ], [ 6, %106 ], [ 7, %102 ], [ 8, %98 ], [ 9, %94 ], [ 10, %90 ], [ 11, %86 ], [ 12, %82 ], [ 13, %78 ], [ 14, %73 ], [ 15, %67 ]
  %146 = tail call i32 @llvm.umin.i32(i32 %143, i32 %145)
  %147 = zext nneg i32 %145 to i64
  br label %148

148:                                              ; preds = %142, %153
  %149 = phi i64 [ 1, %142 ], [ %154, %153 ]
  %150 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !5
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %153, label %258

153:                                              ; preds = %148
  %154 = add nuw nsw i64 %149, 1
  %155 = icmp eq i64 %154, %147
  br i1 %155, label %260, label %148, !llvm.loop !22

156:                                              ; preds = %260
  %157 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 2
  %158 = load i16, ptr %157, align 4, !tbaa !5
  %159 = shl nuw nsw i16 %268, 1
  %160 = zext nneg i16 %159 to i32
  %161 = zext i16 %158 to i32
  %162 = add nuw nsw i32 %160, %161
  %163 = icmp ugt i32 %162, 4
  br i1 %163, label %542, label %164

164:                                              ; preds = %156
  %165 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 3
  %166 = load i16, ptr %165, align 2, !tbaa !5
  %167 = shl nuw nsw i32 %162, 1
  %168 = zext i16 %166 to i32
  %169 = add nuw nsw i32 %167, %168
  %170 = icmp ugt i32 %169, 8
  br i1 %170, label %542, label %171

171:                                              ; preds = %164
  %172 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 4
  %173 = load i16, ptr %172, align 8, !tbaa !5
  %174 = shl nuw nsw i32 %169, 1
  %175 = zext i16 %173 to i32
  %176 = add nuw nsw i32 %174, %175
  %177 = icmp ugt i32 %176, 16
  br i1 %177, label %542, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 5
  %180 = load i16, ptr %179, align 2, !tbaa !5
  %181 = shl nuw nsw i32 %176, 1
  %182 = zext i16 %180 to i32
  %183 = add nuw nsw i32 %181, %182
  %184 = icmp ugt i32 %183, 32
  br i1 %184, label %542, label %185

185:                                              ; preds = %178
  %186 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 6
  %187 = load i16, ptr %186, align 4, !tbaa !5
  %188 = shl nuw nsw i32 %183, 1
  %189 = zext i16 %187 to i32
  %190 = add nuw nsw i32 %188, %189
  %191 = icmp ugt i32 %190, 64
  br i1 %191, label %542, label %192

192:                                              ; preds = %185
  %193 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 7
  %194 = load i16, ptr %193, align 2, !tbaa !5
  %195 = shl nuw nsw i32 %190, 1
  %196 = zext i16 %194 to i32
  %197 = add nuw nsw i32 %195, %196
  %198 = icmp ugt i32 %197, 128
  br i1 %198, label %542, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 8
  %201 = load i16, ptr %200, align 16, !tbaa !5
  %202 = shl nuw nsw i32 %197, 1
  %203 = zext i16 %201 to i32
  %204 = add nuw nsw i32 %202, %203
  %205 = icmp ugt i32 %204, 256
  br i1 %205, label %542, label %206

206:                                              ; preds = %199
  %207 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 9
  %208 = load i16, ptr %207, align 2, !tbaa !5
  %209 = shl nuw nsw i32 %204, 1
  %210 = zext i16 %208 to i32
  %211 = add nuw nsw i32 %209, %210
  %212 = icmp ugt i32 %211, 512
  br i1 %212, label %542, label %213

213:                                              ; preds = %206
  %214 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 10
  %215 = load i16, ptr %214, align 4, !tbaa !5
  %216 = shl nuw nsw i32 %211, 1
  %217 = zext i16 %215 to i32
  %218 = add nuw nsw i32 %216, %217
  %219 = icmp ugt i32 %218, 1024
  br i1 %219, label %542, label %220

220:                                              ; preds = %213
  %221 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 11
  %222 = load i16, ptr %221, align 2, !tbaa !5
  %223 = shl nuw nsw i32 %218, 1
  %224 = zext i16 %222 to i32
  %225 = add nuw nsw i32 %223, %224
  %226 = icmp ugt i32 %225, 2048
  br i1 %226, label %542, label %227

227:                                              ; preds = %220
  %228 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 12
  %229 = load i16, ptr %228, align 8, !tbaa !5
  %230 = shl nuw nsw i32 %225, 1
  %231 = zext i16 %229 to i32
  %232 = add nuw nsw i32 %230, %231
  %233 = icmp ugt i32 %232, 4096
  br i1 %233, label %542, label %234

234:                                              ; preds = %227
  %235 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 13
  %236 = load i16, ptr %235, align 2, !tbaa !5
  %237 = shl nuw nsw i32 %232, 1
  %238 = zext i16 %236 to i32
  %239 = add nuw nsw i32 %237, %238
  %240 = icmp ugt i32 %239, 8192
  br i1 %240, label %542, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 14
  %243 = load i16, ptr %242, align 4, !tbaa !5
  %244 = shl nuw nsw i32 %239, 1
  %245 = zext i16 %243 to i32
  %246 = add nuw nsw i32 %244, %245
  %247 = icmp ugt i32 %246, 16384
  br i1 %247, label %542, label %248

248:                                              ; preds = %241
  %249 = shl nuw nsw i32 %246, 1
  %250 = zext i16 %264 to i32
  %251 = add nuw nsw i32 %249, %250
  %252 = icmp ugt i32 %251, 32768
  br i1 %252, label %542, label %253

253:                                              ; preds = %248
  %254 = icmp ne i32 %251, 32768
  %255 = icmp eq i32 %0, 0
  %256 = or i1 %255, %263
  %257 = and i1 %254, %256
  br i1 %257, label %542, label %270

258:                                              ; preds = %148
  %259 = trunc i64 %149 to i32
  br label %260

260:                                              ; preds = %153, %258, %139
  %261 = phi i32 [ %141, %139 ], [ %146, %258 ], [ %146, %153 ]
  %262 = phi i32 [ 1, %139 ], [ %145, %258 ], [ %145, %153 ]
  %263 = phi i1 [ false, %139 ], [ true, %258 ], [ true, %153 ]
  %264 = phi i16 [ 0, %139 ], [ %144, %258 ], [ %144, %153 ]
  %265 = phi i32 [ 1, %139 ], [ %259, %258 ], [ %145, %153 ]
  %266 = tail call i32 @llvm.umax.i32(i32 %261, i32 %265)
  %267 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 1
  %268 = load i16, ptr %267, align 2, !tbaa !5
  %269 = icmp ugt i16 %268, 2
  br i1 %269, label %542, label %156

270:                                              ; preds = %253
  %271 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 1
  store i16 0, ptr %271, align 2, !tbaa !5
  %272 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 2
  store i16 %268, ptr %272, align 4, !tbaa !5
  %273 = add i16 %268, %158
  %274 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 3
  store i16 %273, ptr %274, align 2, !tbaa !5
  %275 = add i16 %273, %166
  %276 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 4
  store i16 %275, ptr %276, align 8, !tbaa !5
  %277 = add i16 %275, %173
  %278 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 5
  store i16 %277, ptr %278, align 2, !tbaa !5
  %279 = add i16 %277, %180
  %280 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 6
  store i16 %279, ptr %280, align 4, !tbaa !5
  %281 = add i16 %279, %187
  %282 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 7
  store i16 %281, ptr %282, align 2, !tbaa !5
  %283 = add i16 %281, %194
  %284 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 8
  store i16 %283, ptr %284, align 16, !tbaa !5
  %285 = add i16 %283, %201
  %286 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 9
  store i16 %285, ptr %286, align 2, !tbaa !5
  %287 = add i16 %285, %208
  %288 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 10
  store i16 %287, ptr %288, align 4, !tbaa !5
  %289 = add i16 %287, %215
  %290 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 11
  store i16 %289, ptr %290, align 2, !tbaa !5
  %291 = add i16 %289, %222
  %292 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 12
  store i16 %291, ptr %292, align 8, !tbaa !5
  %293 = add i16 %291, %229
  %294 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 13
  store i16 %293, ptr %294, align 2, !tbaa !5
  %295 = add i16 %293, %236
  %296 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 14
  store i16 %295, ptr %296, align 4, !tbaa !5
  %297 = add i16 %295, %243
  %298 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 15
  store i16 %297, ptr %298, align 2, !tbaa !5
  br i1 %9, label %351, label %299

299:                                              ; preds = %270
  %300 = zext i32 %2 to i64
  %301 = and i64 %300, 1
  %302 = icmp eq i32 %2, 1
  br i1 %302, label %336, label %303

303:                                              ; preds = %299
  %304 = and i64 %300, 4294967294
  br label %305

305:                                              ; preds = %332, %303
  %306 = phi i64 [ 0, %303 ], [ %333, %332 ]
  %307 = phi i64 [ 0, %303 ], [ %334, %332 ]
  %308 = getelementptr inbounds i16, ptr %1, i64 %306
  %309 = load i16, ptr %308, align 2, !tbaa !5
  %310 = icmp eq i16 %309, 0
  br i1 %310, label %319, label %311

311:                                              ; preds = %305
  %312 = trunc i64 %306 to i16
  %313 = zext i16 %309 to i64
  %314 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %313
  %315 = load i16, ptr %314, align 2, !tbaa !5
  %316 = add i16 %315, 1
  store i16 %316, ptr %314, align 2, !tbaa !5
  %317 = zext i16 %315 to i64
  %318 = getelementptr inbounds i16, ptr %5, i64 %317
  store i16 %312, ptr %318, align 2, !tbaa !5
  br label %319

319:                                              ; preds = %311, %305
  %320 = or disjoint i64 %306, 1
  %321 = getelementptr inbounds i16, ptr %1, i64 %320
  %322 = load i16, ptr %321, align 2, !tbaa !5
  %323 = icmp eq i16 %322, 0
  br i1 %323, label %332, label %324

324:                                              ; preds = %319
  %325 = trunc i64 %320 to i16
  %326 = zext i16 %322 to i64
  %327 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %326
  %328 = load i16, ptr %327, align 2, !tbaa !5
  %329 = add i16 %328, 1
  store i16 %329, ptr %327, align 2, !tbaa !5
  %330 = zext i16 %328 to i64
  %331 = getelementptr inbounds i16, ptr %5, i64 %330
  store i16 %325, ptr %331, align 2, !tbaa !5
  br label %332

332:                                              ; preds = %324, %319
  %333 = add nuw nsw i64 %306, 2
  %334 = add i64 %307, 2
  %335 = icmp eq i64 %334, %304
  br i1 %335, label %336, label %305, !llvm.loop !23

336:                                              ; preds = %332, %299
  %337 = phi i64 [ 0, %299 ], [ %333, %332 ]
  %338 = icmp eq i64 %301, 0
  br i1 %338, label %351, label %339

339:                                              ; preds = %336
  %340 = getelementptr inbounds i16, ptr %1, i64 %337
  %341 = load i16, ptr %340, align 2, !tbaa !5
  %342 = icmp eq i16 %341, 0
  br i1 %342, label %351, label %343

343:                                              ; preds = %339
  %344 = trunc i64 %337 to i16
  %345 = zext i16 %341 to i64
  %346 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %345
  %347 = load i16, ptr %346, align 2, !tbaa !5
  %348 = add i16 %347, 1
  store i16 %348, ptr %346, align 2, !tbaa !5
  %349 = zext i16 %347 to i64
  %350 = getelementptr inbounds i16, ptr %5, i64 %349
  store i16 %344, ptr %350, align 2, !tbaa !5
  br label %351

351:                                              ; preds = %336, %343, %339, %270
  switch i32 %0, label %357 [
    i32 0, label %352
    i32 1, label %353
    i32 2, label %355
  ]

352:                                              ; preds = %351
  br label %357

353:                                              ; preds = %351
  %354 = icmp ugt i32 %266, 9
  br i1 %354, label %542, label %357

355:                                              ; preds = %351
  %356 = icmp ugt i32 %266, 9
  br i1 %356, label %542, label %357

357:                                              ; preds = %351, %352, %353, %355
  %358 = phi i1 [ true, %355 ], [ false, %353 ], [ false, %352 ], [ false, %351 ]
  %359 = phi ptr [ @inflate_table.dbase, %355 ], [ @inflate_table.lbase, %353 ], [ null, %352 ], [ null, %351 ]
  %360 = phi ptr [ @inflate_table.dext, %355 ], [ @inflate_table.lext, %353 ], [ null, %352 ], [ null, %351 ]
  %361 = phi i32 [ 0, %355 ], [ 257, %353 ], [ 20, %352 ], [ 0, %351 ]
  %362 = phi i1 [ false, %355 ], [ true, %353 ], [ false, %352 ], [ false, %351 ]
  %363 = load ptr, ptr %3, align 8, !tbaa !16
  %364 = shl nuw i32 1, %266
  %365 = add i32 %364, -1
  %366 = trunc i32 %266 to i8
  br label %367

367:                                              ; preds = %357, %520
  %368 = phi i64 [ 0, %357 ], [ %436, %520 ]
  %369 = phi i32 [ %265, %357 ], [ %527, %520 ]
  %370 = phi ptr [ %363, %357 ], [ %525, %520 ]
  %371 = phi i32 [ -1, %357 ], [ %524, %520 ]
  %372 = phi i32 [ 0, %357 ], [ %435, %520 ]
  %373 = phi i32 [ %364, %357 ], [ %523, %520 ]
  %374 = phi i32 [ 0, %357 ], [ %522, %520 ]
  %375 = phi i32 [ %266, %357 ], [ %521, %520 ]
  %376 = phi i32 [ %265, %357 ], [ %455, %520 ]
  %377 = trunc i32 %369 to i8
  %378 = getelementptr inbounds i16, ptr %5, i64 %368
  %379 = load i16, ptr %378, align 2, !tbaa !5
  %380 = zext i16 %379 to i32
  %381 = add nuw nsw i32 %380, 1
  %382 = icmp ult i32 %381, %361
  br i1 %382, label %393, label %383

383:                                              ; preds = %367
  %384 = icmp ugt i32 %361, %380
  br i1 %384, label %393, label %385

385:                                              ; preds = %383
  %386 = sub nuw nsw i32 %380, %361
  %387 = zext nneg i32 %386 to i64
  %388 = getelementptr inbounds i16, ptr %360, i64 %387
  %389 = load i16, ptr %388, align 2, !tbaa !5
  %390 = trunc i16 %389 to i8
  %391 = getelementptr inbounds i16, ptr %359, i64 %387
  %392 = load i16, ptr %391, align 2, !tbaa !5
  br label %393

393:                                              ; preds = %385, %367, %383
  %394 = phi i16 [ %392, %385 ], [ %379, %367 ], [ 0, %383 ]
  %395 = phi i8 [ %390, %385 ], [ 0, %367 ], [ 96, %383 ]
  %396 = shl nuw i32 1, %369
  %397 = shl nuw i32 1, %375
  %398 = lshr i32 %372, %374
  br label %399

399:                                              ; preds = %407, %393
  %400 = phi i32 [ %397, %393 ], [ %402, %407 ]
  %401 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %400, i32 %396), !nosanitize !11
  %402 = extractvalue { i32, i1 } %401, 0, !nosanitize !11
  %403 = extractvalue { i32, i1 } %401, 1, !nosanitize !11
  br i1 %403, label %72, label %404, !nosanitize !11

404:                                              ; preds = %399
  %405 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %398, i32 %402), !nosanitize !11
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !11
  br i1 %406, label %18, label %407, !nosanitize !11

407:                                              ; preds = %404
  %408 = extractvalue { i32, i1 } %405, 0, !nosanitize !11
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds %struct.code, ptr %370, i64 %409
  store i8 %395, ptr %410, align 2, !tbaa.struct !18
  %411 = getelementptr inbounds i8, ptr %410, i64 1
  store i8 %377, ptr %411, align 1, !tbaa.struct !20
  %412 = getelementptr inbounds i8, ptr %410, i64 2
  store i16 %394, ptr %412, align 2, !tbaa.struct !21
  %413 = icmp eq i32 %402, 0
  br i1 %413, label %414, label %399, !llvm.loop !24

414:                                              ; preds = %407
  %415 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %376, i32 1), !nosanitize !11
  %416 = extractvalue { i32, i1 } %415, 1, !nosanitize !11
  br i1 %416, label %72, label %417, !nosanitize !11

417:                                              ; preds = %414
  %418 = extractvalue { i32, i1 } %415, 0, !nosanitize !11
  %419 = shl nuw i32 1, %418
  br label %420

420:                                              ; preds = %420, %417
  %421 = phi i32 [ %419, %417 ], [ %424, %420 ]
  %422 = and i32 %421, %372
  %423 = icmp eq i32 %422, 0
  %424 = lshr i32 %421, 1
  br i1 %423, label %425, label %420, !llvm.loop !25

425:                                              ; preds = %420
  %426 = icmp eq i32 %421, 0
  br i1 %426, label %434, label %427

427:                                              ; preds = %425
  %428 = add i32 %421, -1
  %429 = and i32 %428, %372
  %430 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %429, i32 %421), !nosanitize !11
  %431 = extractvalue { i32, i1 } %430, 1, !nosanitize !11
  br i1 %431, label %18, label %432, !nosanitize !11

432:                                              ; preds = %427
  %433 = extractvalue { i32, i1 } %430, 0, !nosanitize !11
  br label %434

434:                                              ; preds = %425, %432
  %435 = phi i32 [ %433, %432 ], [ 0, %425 ]
  %436 = add nuw nsw i64 %368, 1
  %437 = icmp eq i64 %368, 4294967295
  br i1 %437, label %18, label %438, !nosanitize !11

438:                                              ; preds = %434
  %439 = zext i32 %376 to i64
  %440 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %439
  %441 = load i16, ptr %440, align 2, !tbaa !5
  %442 = add i16 %441, -1
  store i16 %442, ptr %440, align 2, !tbaa !5
  %443 = icmp eq i16 %442, 0
  br i1 %443, label %444, label %454

444:                                              ; preds = %438
  %445 = icmp eq i32 %376, %262
  br i1 %445, label %529, label %446

446:                                              ; preds = %444
  %447 = and i64 %436, 4294967295
  %448 = getelementptr inbounds i16, ptr %5, i64 %447
  %449 = load i16, ptr %448, align 2, !tbaa !5
  %450 = zext i16 %449 to i64
  %451 = getelementptr inbounds i16, ptr %1, i64 %450
  %452 = load i16, ptr %451, align 2, !tbaa !5
  %453 = zext i16 %452 to i32
  br label %454

454:                                              ; preds = %446, %438
  %455 = phi i32 [ %453, %446 ], [ %376, %438 ]
  %456 = icmp ugt i32 %455, %266
  br i1 %456, label %457, label %520

457:                                              ; preds = %454
  %458 = and i32 %435, %365
  %459 = icmp eq i32 %458, %371
  br i1 %459, label %520, label %460

460:                                              ; preds = %457
  %461 = icmp eq i32 %374, 0
  %462 = select i1 %461, i32 %266, i32 %374
  %463 = zext i32 %397 to i64
  %464 = getelementptr inbounds %struct.code, ptr %370, i64 %463
  %465 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %455, i32 %462), !nosanitize !11
  %466 = extractvalue { i32, i1 } %465, 1, !nosanitize !11
  br i1 %466, label %72, label %467, !nosanitize !11

467:                                              ; preds = %460
  %468 = extractvalue { i32, i1 } %465, 0, !nosanitize !11
  %469 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %468, i32 %462), !nosanitize !11
  %470 = extractvalue { i32, i1 } %469, 1, !nosanitize !11
  br i1 %470, label %18, label %471, !nosanitize !11

471:                                              ; preds = %467
  %472 = shl nuw i32 1, %468
  br label %473

473:                                              ; preds = %471, %492
  %474 = phi { i32, i1 } [ %495, %492 ], [ %469, %471 ]
  %475 = phi i32 [ %494, %492 ], [ %472, %471 ]
  %476 = phi i32 [ %493, %492 ], [ %468, %471 ]
  %477 = extractvalue { i32, i1 } %474, 0
  %478 = icmp ult i32 %477, %262
  br i1 %478, label %479, label %497

479:                                              ; preds = %473
  %480 = zext i32 %477 to i64
  %481 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %480
  %482 = load i16, ptr %481, align 2, !tbaa !5
  %483 = zext i16 %482 to i32
  %484 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %475, i32 %483), !nosanitize !11
  %485 = extractvalue { i32, i1 } %484, 0, !nosanitize !11
  %486 = extractvalue { i32, i1 } %484, 1, !nosanitize !11
  br i1 %486, label %72, label %487, !nosanitize !11

487:                                              ; preds = %479
  %488 = icmp slt i32 %485, 1
  br i1 %488, label %497, label %489

489:                                              ; preds = %487
  %490 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %476, i32 1), !nosanitize !11
  %491 = extractvalue { i32, i1 } %490, 1, !nosanitize !11
  br i1 %491, label %18, label %492, !nosanitize !11

492:                                              ; preds = %489
  %493 = extractvalue { i32, i1 } %490, 0, !nosanitize !11
  %494 = shl nuw i32 %485, 1
  %495 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %493, i32 %462), !nosanitize !11
  %496 = extractvalue { i32, i1 } %495, 1, !nosanitize !11
  br i1 %496, label %18, label %473, !llvm.loop !26, !nosanitize !11

497:                                              ; preds = %487, %473
  %498 = shl nuw i32 1, %476
  %499 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %373, i32 %498), !nosanitize !11
  %500 = extractvalue { i32, i1 } %499, 0, !nosanitize !11
  %501 = extractvalue { i32, i1 } %499, 1, !nosanitize !11
  br i1 %501, label %18, label %502, !nosanitize !11

502:                                              ; preds = %497
  %503 = icmp ugt i32 %500, 852
  %504 = select i1 %362, i1 %503, i1 false
  %505 = icmp ugt i32 %500, 592
  %506 = select i1 %358, i1 %505, i1 false
  %507 = select i1 %504, i1 true, i1 %506
  br i1 %507, label %542, label %508

508:                                              ; preds = %502
  %509 = trunc i32 %476 to i8
  %510 = load ptr, ptr %3, align 8, !tbaa !16
  %511 = zext i32 %458 to i64
  %512 = getelementptr inbounds %struct.code, ptr %510, i64 %511
  store i8 %509, ptr %512, align 2, !tbaa !27
  %513 = getelementptr inbounds %struct.code, ptr %510, i64 %511, i32 1
  store i8 %366, ptr %513, align 1, !tbaa !29
  %514 = ptrtoint ptr %464 to i64
  %515 = ptrtoint ptr %510 to i64
  %516 = sub i64 %514, %515
  %517 = lshr exact i64 %516, 2
  %518 = trunc i64 %517 to i16
  %519 = getelementptr inbounds %struct.code, ptr %510, i64 %511, i32 2
  store i16 %518, ptr %519, align 2, !tbaa !30
  br label %520

520:                                              ; preds = %508, %457, %454
  %521 = phi i32 [ %476, %508 ], [ %375, %457 ], [ %375, %454 ]
  %522 = phi i32 [ %462, %508 ], [ %374, %457 ], [ %374, %454 ]
  %523 = phi i32 [ %500, %508 ], [ %373, %457 ], [ %373, %454 ]
  %524 = phi i32 [ %458, %508 ], [ %371, %457 ], [ %371, %454 ]
  %525 = phi ptr [ %464, %508 ], [ %370, %457 ], [ %370, %454 ]
  %526 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %455, i32 %522), !nosanitize !11
  %527 = extractvalue { i32, i1 } %526, 0, !nosanitize !11
  %528 = extractvalue { i32, i1 } %526, 1, !nosanitize !11
  br i1 %528, label %72, label %367, !nosanitize !11

529:                                              ; preds = %444
  %530 = icmp eq i32 %435, 0
  br i1 %530, label %536, label %531

531:                                              ; preds = %529
  %532 = zext i32 %435 to i64
  %533 = getelementptr inbounds %struct.code, ptr %370, i64 %532
  store i8 64, ptr %533, align 2, !tbaa.struct !18
  %534 = getelementptr inbounds i8, ptr %533, i64 1
  store i8 %377, ptr %534, align 1, !tbaa.struct !20
  %535 = getelementptr inbounds i8, ptr %533, i64 2
  store i16 0, ptr %535, align 2, !tbaa.struct !21
  br label %536

536:                                              ; preds = %531, %529
  %537 = load ptr, ptr %3, align 8, !tbaa !16
  %538 = zext i32 %373 to i64
  %539 = getelementptr inbounds %struct.code, ptr %537, i64 %538
  store ptr %539, ptr %3, align 8, !tbaa !16
  br label %540

540:                                              ; preds = %130, %536
  %541 = phi i32 [ %266, %536 ], [ 1, %130 ]
  store i32 %541, ptr %4, align 4, !tbaa !9
  br label %542

542:                                              ; preds = %502, %540, %253, %260, %156, %164, %171, %178, %185, %192, %199, %206, %213, %220, %227, %234, %241, %248, %353, %355
  %543 = phi i32 [ 1, %355 ], [ 1, %353 ], [ -1, %248 ], [ -1, %241 ], [ -1, %234 ], [ -1, %227 ], [ -1, %220 ], [ -1, %213 ], [ -1, %206 ], [ -1, %199 ], [ -1, %192 ], [ -1, %185 ], [ -1, %178 ], [ -1, %171 ], [ -1, %164 ], [ -1, %156 ], [ -1, %260 ], [ -1, %253 ], [ 0, %540 ], [ 1, %502 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  ret i32 %543
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @inflate_fixed(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 20
  store ptr @lenfix, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 22
  store i32 9, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 21
  store ptr @distfix, ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 23
  store i32 5, ptr %5, align 4, !tbaa !36
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{i64 0, i64 1, !19, i64 1, i64 1, !19, i64 2, i64 2, !5}
!19 = !{!7, !7, i64 0}
!20 = !{i64 0, i64 1, !19, i64 1, i64 2, !5}
!21 = !{i64 0, i64 2, !5}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = !{!28, !7, i64 0}
!28 = !{!"", !7, i64 0, !7, i64 1, !6, i64 2}
!29 = !{!28, !7, i64 1}
!30 = !{!28, !6, i64 2}
!31 = !{!32, !17, i64 104}
!32 = !{!"inflate_state", !17, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !33, i64 32, !33, i64 40, !17, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !17, i64 72, !33, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !17, i64 104, !17, i64 112, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !17, i64 144, !7, i64 152, !7, i64 792, !7, i64 1368, !10, i64 7144, !10, i64 7148, !10, i64 7152}
!33 = !{!"long", !7, i64 0}
!34 = !{!32, !10, i64 120}
!35 = !{!32, !17, i64 112}
!36 = !{!32, !10, i64 124}
