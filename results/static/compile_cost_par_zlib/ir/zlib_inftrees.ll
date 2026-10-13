; ModuleID = '/mydata/zlib/inftrees.c'
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

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @inflate_table(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef captures(none) %3, ptr noundef captures(none) %4, ptr noundef captures(none) %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i16], align 16
  %8 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !5
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, ptr %4, align 4, !tbaa !9
  br label %71

12:                                               ; preds = %6
  %13 = zext i32 %2 to i64
  %14 = and i64 %13, 3
  %15 = icmp ult i32 %2, 4
  br i1 %15, label %51, label %16

16:                                               ; preds = %12
  %17 = and i64 %13, 4294967292
  %18 = getelementptr inbounds i8, ptr %1, i64 2
  %19 = getelementptr inbounds i8, ptr %1, i64 4
  %20 = getelementptr inbounds i8, ptr %1, i64 6
  br label %21

21:                                               ; preds = %21, %16
  %22 = phi i64 [ 0, %16 ], [ %48, %21 ]
  %23 = phi i64 [ 0, %16 ], [ %49, %21 ]
  %24 = getelementptr inbounds nuw i16, ptr %1, i64 %22
  %25 = load i16, ptr %24, align 2, !tbaa !5
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds nuw [16 x i16], ptr %7, i64 0, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !5
  %29 = add i16 %28, 1
  store i16 %29, ptr %27, align 2, !tbaa !5
  %30 = getelementptr inbounds i16, ptr %18, i64 %22
  %31 = load i16, ptr %30, align 2, !tbaa !5
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds nuw [16 x i16], ptr %7, i64 0, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !5
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 2, !tbaa !5
  %36 = getelementptr inbounds i16, ptr %19, i64 %22
  %37 = load i16, ptr %36, align 2, !tbaa !5
  %38 = zext i16 %37 to i64
  %39 = getelementptr inbounds nuw [16 x i16], ptr %7, i64 0, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !5
  %41 = add i16 %40, 1
  store i16 %41, ptr %39, align 2, !tbaa !5
  %42 = getelementptr inbounds i16, ptr %20, i64 %22
  %43 = load i16, ptr %42, align 2, !tbaa !5
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds nuw [16 x i16], ptr %7, i64 0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !5
  %47 = add i16 %46, 1
  store i16 %47, ptr %45, align 2, !tbaa !5
  %48 = add nuw nsw i64 %22, 4
  %49 = add i64 %23, 4
  %50 = icmp eq i64 %49, %17
  br i1 %50, label %51, label %21, !llvm.loop !11

51:                                               ; preds = %21, %12
  %52 = phi i64 [ 0, %12 ], [ %48, %21 ]
  %53 = icmp eq i64 %14, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ %63, %54 ], [ %52, %51 ]
  %56 = phi i64 [ %64, %54 ], [ 0, %51 ]
  %57 = getelementptr inbounds nuw i16, ptr %1, i64 %55
  %58 = load i16, ptr %57, align 2, !tbaa !5
  %59 = zext i16 %58 to i64
  %60 = getelementptr inbounds nuw [16 x i16], ptr %7, i64 0, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !5
  %62 = add i16 %61, 1
  store i16 %62, ptr %60, align 2, !tbaa !5
  %63 = add nuw nsw i64 %55, 1
  %64 = add i64 %56, 1
  %65 = icmp eq i64 %64, %14
  br i1 %65, label %66, label %54, !llvm.loop !13

66:                                               ; preds = %54, %51
  %67 = getelementptr inbounds nuw i8, ptr %7, i64 30
  %68 = load i16, ptr %67, align 2, !tbaa !5
  %69 = load i32, ptr %4, align 4, !tbaa !9
  %70 = icmp eq i16 %68, 0
  br i1 %70, label %71, label %140

71:                                               ; preds = %10, %66
  %72 = phi i32 [ %11, %10 ], [ %69, %66 ]
  %73 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %74 = load i16, ptr %73, align 4, !tbaa !5
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %140

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 26
  %78 = load i16, ptr %77, align 2, !tbaa !5
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %140

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %82 = load i16, ptr %81, align 8, !tbaa !5
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %140

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %7, i64 22
  %86 = load i16, ptr %85, align 2, !tbaa !5
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %140

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %90 = load i16, ptr %89, align 4, !tbaa !5
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %140

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %7, i64 18
  %94 = load i16, ptr %93, align 2, !tbaa !5
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %140

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %98 = load i16, ptr %97, align 16, !tbaa !5
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %140

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %7, i64 14
  %102 = load i16, ptr %101, align 2, !tbaa !5
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %106 = load i16, ptr %105, align 4, !tbaa !5
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %7, i64 10
  %110 = load i16, ptr %109, align 2, !tbaa !5
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %140

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %114 = load i16, ptr %113, align 8, !tbaa !5
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %7, i64 6
  %118 = load i16, ptr %117, align 2, !tbaa !5
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %122 = load i16, ptr %121, align 4, !tbaa !5
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %126 = load i16, ptr %125, align 2, !tbaa !5
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load ptr, ptr %3, align 8, !tbaa !15
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 4
  store ptr %130, ptr %3, align 8, !tbaa !15
  store i8 64, ptr %129, align 2, !tbaa !17
  %131 = getelementptr inbounds nuw i8, ptr %129, i64 1
  store i8 1, ptr %131, align 1, !tbaa !17
  %132 = getelementptr inbounds nuw i8, ptr %129, i64 2
  store i16 0, ptr %132, align 2, !tbaa !5
  %133 = load ptr, ptr %3, align 8, !tbaa !15
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 4
  store ptr %134, ptr %3, align 8, !tbaa !15
  store i8 64, ptr %133, align 2, !tbaa !17
  %135 = getelementptr inbounds nuw i8, ptr %133, i64 1
  store i8 1, ptr %135, align 1, !tbaa !17
  %136 = getelementptr inbounds nuw i8, ptr %133, i64 2
  store i16 0, ptr %136, align 2, !tbaa !5
  br label %542

137:                                              ; preds = %124
  %138 = icmp ne i32 %72, 0
  %139 = zext i1 %138 to i32
  br label %258

140:                                              ; preds = %66, %71, %76, %80, %84, %88, %92, %96, %100, %104, %108, %112, %116, %120
  %141 = phi i32 [ %72, %120 ], [ %72, %116 ], [ %72, %112 ], [ %72, %108 ], [ %72, %104 ], [ %72, %100 ], [ %72, %96 ], [ %72, %92 ], [ %72, %88 ], [ %72, %84 ], [ %72, %80 ], [ %72, %76 ], [ %72, %71 ], [ %69, %66 ]
  %142 = phi i16 [ 0, %120 ], [ 0, %116 ], [ 0, %112 ], [ 0, %108 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %71 ], [ %68, %66 ]
  %143 = phi i32 [ 2, %120 ], [ 3, %116 ], [ 4, %112 ], [ 5, %108 ], [ 6, %104 ], [ 7, %100 ], [ 8, %96 ], [ 9, %92 ], [ 10, %88 ], [ 11, %84 ], [ 12, %80 ], [ 13, %76 ], [ 14, %71 ], [ 15, %66 ]
  %144 = tail call i32 @llvm.umin.i32(i32 %141, i32 %143)
  %145 = zext nneg i32 %143 to i64
  br label %146

146:                                              ; preds = %140, %151
  %147 = phi i64 [ 1, %140 ], [ %152, %151 ]
  %148 = getelementptr inbounds nuw [16 x i16], ptr %7, i64 0, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !5
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %256

151:                                              ; preds = %146
  %152 = add nuw nsw i64 %147, 1
  %153 = icmp eq i64 %152, %145
  br i1 %153, label %258, label %146, !llvm.loop !18

154:                                              ; preds = %258
  %155 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %156 = load i16, ptr %155, align 4, !tbaa !5
  %157 = shl nuw nsw i16 %266, 1
  %158 = sub nuw nsw i16 4, %157
  %159 = zext nneg i16 %158 to i32
  %160 = zext i16 %156 to i32
  %161 = sub nsw i32 %159, %160
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %544, label %163

163:                                              ; preds = %154
  %164 = getelementptr inbounds nuw i8, ptr %7, i64 6
  %165 = load i16, ptr %164, align 2, !tbaa !5
  %166 = shl nuw nsw i32 %161, 1
  %167 = zext i16 %165 to i32
  %168 = sub nsw i32 %166, %167
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %544, label %170

170:                                              ; preds = %163
  %171 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %172 = load i16, ptr %171, align 8, !tbaa !5
  %173 = shl nuw nsw i32 %168, 1
  %174 = zext i16 %172 to i32
  %175 = sub nsw i32 %173, %174
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %544, label %177

177:                                              ; preds = %170
  %178 = getelementptr inbounds nuw i8, ptr %7, i64 10
  %179 = load i16, ptr %178, align 2, !tbaa !5
  %180 = shl nuw nsw i32 %175, 1
  %181 = zext i16 %179 to i32
  %182 = sub nsw i32 %180, %181
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %544, label %184

184:                                              ; preds = %177
  %185 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %186 = load i16, ptr %185, align 4, !tbaa !5
  %187 = shl nuw nsw i32 %182, 1
  %188 = zext i16 %186 to i32
  %189 = sub nsw i32 %187, %188
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %544, label %191

191:                                              ; preds = %184
  %192 = getelementptr inbounds nuw i8, ptr %7, i64 14
  %193 = load i16, ptr %192, align 2, !tbaa !5
  %194 = shl nuw nsw i32 %189, 1
  %195 = zext i16 %193 to i32
  %196 = sub nsw i32 %194, %195
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %544, label %198

198:                                              ; preds = %191
  %199 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %200 = load i16, ptr %199, align 16, !tbaa !5
  %201 = shl nuw nsw i32 %196, 1
  %202 = zext i16 %200 to i32
  %203 = sub nsw i32 %201, %202
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %544, label %205

205:                                              ; preds = %198
  %206 = getelementptr inbounds nuw i8, ptr %7, i64 18
  %207 = load i16, ptr %206, align 2, !tbaa !5
  %208 = shl nuw nsw i32 %203, 1
  %209 = zext i16 %207 to i32
  %210 = sub nsw i32 %208, %209
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %544, label %212

212:                                              ; preds = %205
  %213 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %214 = load i16, ptr %213, align 4, !tbaa !5
  %215 = shl nuw nsw i32 %210, 1
  %216 = zext i16 %214 to i32
  %217 = sub nsw i32 %215, %216
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %544, label %219

219:                                              ; preds = %212
  %220 = getelementptr inbounds nuw i8, ptr %7, i64 22
  %221 = load i16, ptr %220, align 2, !tbaa !5
  %222 = shl nuw nsw i32 %217, 1
  %223 = zext i16 %221 to i32
  %224 = sub nsw i32 %222, %223
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %544, label %226

226:                                              ; preds = %219
  %227 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %228 = load i16, ptr %227, align 8, !tbaa !5
  %229 = shl nuw nsw i32 %224, 1
  %230 = zext i16 %228 to i32
  %231 = sub nsw i32 %229, %230
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %544, label %233

233:                                              ; preds = %226
  %234 = getelementptr inbounds nuw i8, ptr %7, i64 26
  %235 = load i16, ptr %234, align 2, !tbaa !5
  %236 = shl nuw nsw i32 %231, 1
  %237 = zext i16 %235 to i32
  %238 = sub nsw i32 %236, %237
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %544, label %240

240:                                              ; preds = %233
  %241 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %242 = load i16, ptr %241, align 4, !tbaa !5
  %243 = shl nuw nsw i32 %238, 1
  %244 = zext i16 %242 to i32
  %245 = sub nsw i32 %243, %244
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %544, label %247

247:                                              ; preds = %240
  %248 = shl nuw nsw i32 %245, 1
  %249 = zext i16 %262 to i32
  %250 = icmp samesign ult i32 %248, %249
  br i1 %250, label %544, label %251

251:                                              ; preds = %247
  %252 = icmp ne i32 %248, %249
  %253 = icmp eq i32 %0, 0
  %254 = or i1 %253, %261
  %255 = and i1 %252, %254
  br i1 %255, label %544, label %268

256:                                              ; preds = %146
  %257 = trunc nuw nsw i64 %147 to i32
  br label %258

258:                                              ; preds = %151, %256, %137
  %259 = phi i32 [ %139, %137 ], [ %144, %256 ], [ %144, %151 ]
  %260 = phi i32 [ 1, %137 ], [ %143, %256 ], [ %143, %151 ]
  %261 = phi i1 [ false, %137 ], [ true, %256 ], [ true, %151 ]
  %262 = phi i16 [ 0, %137 ], [ %142, %256 ], [ %142, %151 ]
  %263 = phi i32 [ 1, %137 ], [ %257, %256 ], [ %143, %151 ]
  %264 = tail call i32 @llvm.umax.i32(i32 %259, i32 %263)
  %265 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %266 = load i16, ptr %265, align 2, !tbaa !5
  %267 = icmp ugt i16 %266, 2
  br i1 %267, label %544, label %154

268:                                              ; preds = %251
  %269 = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 0, ptr %269, align 2, !tbaa !5
  %270 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i16 %266, ptr %270, align 4, !tbaa !5
  %271 = add i16 %266, %156
  %272 = getelementptr inbounds nuw i8, ptr %8, i64 6
  store i16 %271, ptr %272, align 2, !tbaa !5
  %273 = add i16 %271, %165
  %274 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 %273, ptr %274, align 8, !tbaa !5
  %275 = add i16 %273, %172
  %276 = getelementptr inbounds nuw i8, ptr %8, i64 10
  store i16 %275, ptr %276, align 2, !tbaa !5
  %277 = add i16 %275, %179
  %278 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i16 %277, ptr %278, align 4, !tbaa !5
  %279 = add i16 %277, %186
  %280 = getelementptr inbounds nuw i8, ptr %8, i64 14
  store i16 %279, ptr %280, align 2, !tbaa !5
  %281 = add i16 %279, %193
  %282 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i16 %281, ptr %282, align 16, !tbaa !5
  %283 = add i16 %281, %200
  %284 = getelementptr inbounds nuw i8, ptr %8, i64 18
  store i16 %283, ptr %284, align 2, !tbaa !5
  %285 = add i16 %283, %207
  %286 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i16 %285, ptr %286, align 4, !tbaa !5
  %287 = add i16 %285, %214
  %288 = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %287, ptr %288, align 2, !tbaa !5
  %289 = add i16 %287, %221
  %290 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %289, ptr %290, align 8, !tbaa !5
  %291 = add i16 %289, %228
  %292 = getelementptr inbounds nuw i8, ptr %8, i64 26
  store i16 %291, ptr %292, align 2, !tbaa !5
  %293 = add i16 %291, %235
  %294 = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i16 %293, ptr %294, align 4, !tbaa !5
  %295 = add i16 %293, %242
  %296 = getelementptr inbounds nuw i8, ptr %8, i64 30
  store i16 %295, ptr %296, align 2, !tbaa !5
  br i1 %9, label %349, label %297

297:                                              ; preds = %268
  %298 = zext i32 %2 to i64
  %299 = and i64 %298, 1
  %300 = icmp eq i32 %2, 1
  br i1 %300, label %334, label %301

301:                                              ; preds = %297
  %302 = and i64 %298, 4294967294
  br label %303

303:                                              ; preds = %330, %301
  %304 = phi i64 [ 0, %301 ], [ %331, %330 ]
  %305 = phi i64 [ 0, %301 ], [ %332, %330 ]
  %306 = getelementptr inbounds nuw i16, ptr %1, i64 %304
  %307 = load i16, ptr %306, align 2, !tbaa !5
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %317, label %309

309:                                              ; preds = %303
  %310 = trunc i64 %304 to i16
  %311 = zext i16 %307 to i64
  %312 = getelementptr inbounds nuw [16 x i16], ptr %8, i64 0, i64 %311
  %313 = load i16, ptr %312, align 2, !tbaa !5
  %314 = add i16 %313, 1
  store i16 %314, ptr %312, align 2, !tbaa !5
  %315 = zext i16 %313 to i64
  %316 = getelementptr inbounds nuw i16, ptr %5, i64 %315
  store i16 %310, ptr %316, align 2, !tbaa !5
  br label %317

317:                                              ; preds = %309, %303
  %318 = or disjoint i64 %304, 1
  %319 = getelementptr inbounds nuw i16, ptr %1, i64 %318
  %320 = load i16, ptr %319, align 2, !tbaa !5
  %321 = icmp eq i16 %320, 0
  br i1 %321, label %330, label %322

322:                                              ; preds = %317
  %323 = trunc i64 %318 to i16
  %324 = zext i16 %320 to i64
  %325 = getelementptr inbounds nuw [16 x i16], ptr %8, i64 0, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !5
  %327 = add i16 %326, 1
  store i16 %327, ptr %325, align 2, !tbaa !5
  %328 = zext i16 %326 to i64
  %329 = getelementptr inbounds nuw i16, ptr %5, i64 %328
  store i16 %323, ptr %329, align 2, !tbaa !5
  br label %330

330:                                              ; preds = %322, %317
  %331 = add nuw nsw i64 %304, 2
  %332 = add i64 %305, 2
  %333 = icmp eq i64 %332, %302
  br i1 %333, label %334, label %303, !llvm.loop !19

334:                                              ; preds = %330, %297
  %335 = phi i64 [ 0, %297 ], [ %331, %330 ]
  %336 = icmp eq i64 %299, 0
  br i1 %336, label %349, label %337

337:                                              ; preds = %334
  %338 = getelementptr inbounds nuw i16, ptr %1, i64 %335
  %339 = load i16, ptr %338, align 2, !tbaa !5
  %340 = icmp eq i16 %339, 0
  br i1 %340, label %349, label %341

341:                                              ; preds = %337
  %342 = trunc i64 %335 to i16
  %343 = zext i16 %339 to i64
  %344 = getelementptr inbounds nuw [16 x i16], ptr %8, i64 0, i64 %343
  %345 = load i16, ptr %344, align 2, !tbaa !5
  %346 = add i16 %345, 1
  store i16 %346, ptr %344, align 2, !tbaa !5
  %347 = zext i16 %345 to i64
  %348 = getelementptr inbounds nuw i16, ptr %5, i64 %347
  store i16 %342, ptr %348, align 2, !tbaa !5
  br label %349

349:                                              ; preds = %334, %341, %337, %268
  switch i32 %0, label %355 [
    i32 0, label %350
    i32 1, label %351
    i32 2, label %353
  ]

350:                                              ; preds = %349
  br label %355

351:                                              ; preds = %349
  %352 = icmp ugt i32 %264, 9
  br i1 %352, label %544, label %355

353:                                              ; preds = %349
  %354 = icmp ugt i32 %264, 9
  br i1 %354, label %544, label %355

355:                                              ; preds = %351, %350, %349, %353
  %356 = phi i1 [ true, %353 ], [ false, %349 ], [ false, %350 ], [ false, %351 ]
  %357 = phi ptr [ @inflate_table.dbase, %353 ], [ null, %349 ], [ null, %350 ], [ @inflate_table.lbase, %351 ]
  %358 = phi ptr [ @inflate_table.dext, %353 ], [ null, %349 ], [ null, %350 ], [ @inflate_table.lext, %351 ]
  %359 = phi i32 [ 0, %353 ], [ 0, %349 ], [ 20, %350 ], [ 257, %351 ]
  %360 = phi i1 [ false, %353 ], [ false, %349 ], [ false, %350 ], [ true, %351 ]
  %361 = load ptr, ptr %3, align 8, !tbaa !15
  %362 = shl nuw i32 1, %264
  %363 = add i32 %362, -1
  %364 = trunc i32 %264 to i8
  br label %366

365:                                              ; preds = %522
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

366:                                              ; preds = %355, %522
  %367 = phi i64 [ 0, %355 ], [ %433, %522 ]
  %368 = phi i32 [ %263, %355 ], [ %529, %522 ]
  %369 = phi ptr [ %361, %355 ], [ %527, %522 ]
  %370 = phi i32 [ -1, %355 ], [ %526, %522 ]
  %371 = phi i32 [ 0, %355 ], [ %432, %522 ]
  %372 = phi i32 [ %362, %355 ], [ %525, %522 ]
  %373 = phi i32 [ 0, %355 ], [ %524, %522 ]
  %374 = phi i32 [ %264, %355 ], [ %523, %522 ]
  %375 = phi i32 [ %263, %355 ], [ %453, %522 ]
  %376 = trunc i32 %368 to i8
  %377 = getelementptr inbounds nuw i16, ptr %5, i64 %367
  %378 = load i16, ptr %377, align 2, !tbaa !5
  %379 = zext i16 %378 to i32
  %380 = add nuw nsw i32 %379, 1
  %381 = icmp samesign ult i32 %380, %359
  br i1 %381, label %392, label %382

382:                                              ; preds = %366
  %383 = icmp samesign ugt i32 %359, %379
  br i1 %383, label %392, label %384

384:                                              ; preds = %382
  %385 = sub nuw nsw i32 %379, %359
  %386 = zext nneg i32 %385 to i64
  %387 = getelementptr inbounds nuw i16, ptr %358, i64 %386
  %388 = load i16, ptr %387, align 2, !tbaa !5
  %389 = trunc i16 %388 to i8
  %390 = getelementptr inbounds nuw i16, ptr %357, i64 %386
  %391 = load i16, ptr %390, align 2, !tbaa !5
  br label %392

392:                                              ; preds = %384, %366, %382
  %393 = phi i16 [ %391, %384 ], [ %378, %366 ], [ 0, %382 ]
  %394 = phi i8 [ %389, %384 ], [ 0, %366 ], [ 96, %382 ]
  %395 = shl nuw i32 1, %368
  %396 = shl nuw i32 1, %374
  %397 = lshr i32 %371, %373
  br label %398

398:                                              ; preds = %408, %392
  %399 = phi i32 [ %396, %392 ], [ %401, %408 ]
  %400 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %399, i32 %395), !nosanitize !20
  %401 = extractvalue { i32, i1 } %400, 0, !nosanitize !20
  %402 = extractvalue { i32, i1 } %400, 1, !nosanitize !20
  br i1 %402, label %403, label %404, !prof !21, !nosanitize !20

403:                                              ; preds = %398
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

404:                                              ; preds = %398
  %405 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %397, i32 %401), !nosanitize !20
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !20
  br i1 %406, label %407, label %408, !prof !21, !nosanitize !20

407:                                              ; preds = %404
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !20
  unreachable, !nosanitize !20

408:                                              ; preds = %404
  %409 = extractvalue { i32, i1 } %405, 0, !nosanitize !20
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds nuw %struct.code, ptr %369, i64 %410
  store i8 %394, ptr %411, align 2, !tbaa !17
  %412 = getelementptr inbounds nuw i8, ptr %411, i64 1
  store i8 %376, ptr %412, align 1, !tbaa !17
  %413 = getelementptr inbounds nuw i8, ptr %411, i64 2
  store i16 %393, ptr %413, align 2, !tbaa !5
  %414 = icmp eq i32 %401, 0
  br i1 %414, label %415, label %398, !llvm.loop !22

415:                                              ; preds = %408
  %416 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %375, i32 1), !nosanitize !20
  %417 = extractvalue { i32, i1 } %416, 1, !nosanitize !20
  br i1 %417, label %418, label %419, !prof !21, !nosanitize !20

418:                                              ; preds = %415
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

419:                                              ; preds = %415
  %420 = extractvalue { i32, i1 } %416, 0, !nosanitize !20
  %421 = shl nuw i32 1, %420
  br label %422

422:                                              ; preds = %422, %419
  %423 = phi i32 [ %421, %419 ], [ %426, %422 ]
  %424 = and i32 %423, %371
  %425 = icmp eq i32 %424, 0
  %426 = lshr i32 %423, 1
  br i1 %425, label %427, label %422, !llvm.loop !23

427:                                              ; preds = %422
  %428 = icmp eq i32 %423, 0
  %429 = add i32 %423, -1
  %430 = and i32 %429, %371
  %431 = add nuw i32 %430, %423
  %432 = select i1 %428, i32 0, i32 %431
  %433 = add nuw nsw i64 %367, 1
  %434 = icmp eq i64 %367, 4294967295
  br i1 %434, label %435, label %436, !prof !21, !nosanitize !20

435:                                              ; preds = %427
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !20
  unreachable, !nosanitize !20

436:                                              ; preds = %427
  %437 = zext i32 %375 to i64
  %438 = getelementptr inbounds nuw [16 x i16], ptr %7, i64 0, i64 %437
  %439 = load i16, ptr %438, align 2, !tbaa !5
  %440 = add i16 %439, -1
  store i16 %440, ptr %438, align 2, !tbaa !5
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %442, label %452

442:                                              ; preds = %436
  %443 = icmp eq i32 %375, %260
  br i1 %443, label %531, label %444

444:                                              ; preds = %442
  %445 = and i64 %433, 4294967295
  %446 = getelementptr inbounds nuw i16, ptr %5, i64 %445
  %447 = load i16, ptr %446, align 2, !tbaa !5
  %448 = zext i16 %447 to i64
  %449 = getelementptr inbounds nuw i16, ptr %1, i64 %448
  %450 = load i16, ptr %449, align 2, !tbaa !5
  %451 = zext i16 %450 to i32
  br label %452

452:                                              ; preds = %444, %436
  %453 = phi i32 [ %451, %444 ], [ %375, %436 ]
  %454 = icmp ugt i32 %453, %264
  br i1 %454, label %455, label %522

455:                                              ; preds = %452
  %456 = and i32 %432, %363
  %457 = icmp eq i32 %456, %370
  br i1 %457, label %522, label %458

458:                                              ; preds = %455
  %459 = icmp eq i32 %373, 0
  %460 = select i1 %459, i32 %264, i32 %373
  %461 = zext i32 %396 to i64
  %462 = getelementptr inbounds nuw %struct.code, ptr %369, i64 %461
  %463 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %453, i32 %460), !nosanitize !20
  %464 = extractvalue { i32, i1 } %463, 1, !nosanitize !20
  br i1 %464, label %465, label %466, !prof !21, !nosanitize !20

465:                                              ; preds = %458, %479
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

466:                                              ; preds = %458
  %467 = extractvalue { i32, i1 } %463, 0, !nosanitize !20
  %468 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %467, i32 %460), !nosanitize !20
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !20
  br i1 %469, label %472, label %470, !prof !24, !nosanitize !20

470:                                              ; preds = %466
  %471 = shl nuw i32 1, %467
  br label %473

472:                                              ; preds = %466, %493
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !20
  unreachable, !nosanitize !20

473:                                              ; preds = %470, %493
  %474 = phi { i32, i1 } [ %496, %493 ], [ %468, %470 ]
  %475 = phi i32 [ %495, %493 ], [ %471, %470 ]
  %476 = phi i32 [ %494, %493 ], [ %467, %470 ]
  %477 = extractvalue { i32, i1 } %474, 0
  %478 = icmp ult i32 %477, %260
  br i1 %478, label %479, label %498

479:                                              ; preds = %473
  %480 = zext i32 %477 to i64
  %481 = getelementptr inbounds nuw [16 x i16], ptr %7, i64 0, i64 %480
  %482 = load i16, ptr %481, align 2, !tbaa !5
  %483 = zext i16 %482 to i32
  %484 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %475, i32 %483), !nosanitize !20
  %485 = extractvalue { i32, i1 } %484, 0, !nosanitize !20
  %486 = extractvalue { i32, i1 } %484, 1, !nosanitize !20
  br i1 %486, label %465, label %487, !prof !21, !nosanitize !20

487:                                              ; preds = %479
  %488 = icmp slt i32 %485, 1
  br i1 %488, label %498, label %489

489:                                              ; preds = %487
  %490 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %476, i32 1), !nosanitize !20
  %491 = extractvalue { i32, i1 } %490, 1, !nosanitize !20
  br i1 %491, label %492, label %493, !prof !21, !nosanitize !20

492:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !20
  unreachable, !nosanitize !20

493:                                              ; preds = %489
  %494 = extractvalue { i32, i1 } %490, 0, !nosanitize !20
  %495 = shl nuw i32 %485, 1
  %496 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %494, i32 %460), !nosanitize !20
  %497 = extractvalue { i32, i1 } %496, 1, !nosanitize !20
  br i1 %497, label %472, label %473, !prof !25, !llvm.loop !26, !nosanitize !20

498:                                              ; preds = %487, %473
  %499 = shl nuw i32 1, %476
  %500 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %372, i32 %499), !nosanitize !20
  %501 = extractvalue { i32, i1 } %500, 0, !nosanitize !20
  %502 = extractvalue { i32, i1 } %500, 1, !nosanitize !20
  br i1 %502, label %503, label %504, !prof !21, !nosanitize !20

503:                                              ; preds = %498
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !20
  unreachable, !nosanitize !20

504:                                              ; preds = %498
  %505 = icmp ugt i32 %501, 852
  %506 = select i1 %360, i1 %505, i1 false
  %507 = icmp ugt i32 %501, 592
  %508 = select i1 %356, i1 %507, i1 false
  %509 = select i1 %506, i1 true, i1 %508
  br i1 %509, label %544, label %510

510:                                              ; preds = %504
  %511 = trunc i32 %476 to i8
  %512 = load ptr, ptr %3, align 8, !tbaa !15
  %513 = zext nneg i32 %456 to i64
  %514 = getelementptr inbounds nuw %struct.code, ptr %512, i64 %513
  store i8 %511, ptr %514, align 2, !tbaa !27
  %515 = getelementptr inbounds nuw %struct.code, ptr %512, i64 %513, i32 1
  store i8 %364, ptr %515, align 1, !tbaa !29
  %516 = ptrtoint ptr %462 to i64
  %517 = ptrtoint ptr %512 to i64
  %518 = sub i64 %516, %517
  %519 = lshr exact i64 %518, 2
  %520 = trunc i64 %519 to i16
  %521 = getelementptr inbounds nuw %struct.code, ptr %512, i64 %513, i32 2
  store i16 %520, ptr %521, align 2, !tbaa !30
  br label %522

522:                                              ; preds = %510, %455, %452
  %523 = phi i32 [ %476, %510 ], [ %374, %455 ], [ %374, %452 ]
  %524 = phi i32 [ %460, %510 ], [ %373, %455 ], [ %373, %452 ]
  %525 = phi i32 [ %501, %510 ], [ %372, %455 ], [ %372, %452 ]
  %526 = phi i32 [ %456, %510 ], [ %370, %455 ], [ %370, %452 ]
  %527 = phi ptr [ %462, %510 ], [ %369, %455 ], [ %369, %452 ]
  %528 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %453, i32 %524), !nosanitize !20
  %529 = extractvalue { i32, i1 } %528, 0, !nosanitize !20
  %530 = extractvalue { i32, i1 } %528, 1, !nosanitize !20
  br i1 %530, label %365, label %366, !prof !25, !nosanitize !20

531:                                              ; preds = %442
  %532 = icmp eq i32 %432, 0
  br i1 %532, label %538, label %533

533:                                              ; preds = %531
  %534 = zext i32 %432 to i64
  %535 = getelementptr inbounds nuw %struct.code, ptr %369, i64 %534
  store i8 64, ptr %535, align 2, !tbaa !17
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 1
  store i8 %376, ptr %536, align 1, !tbaa !17
  %537 = getelementptr inbounds nuw i8, ptr %535, i64 2
  store i16 0, ptr %537, align 2, !tbaa !5
  br label %538

538:                                              ; preds = %533, %531
  %539 = load ptr, ptr %3, align 8, !tbaa !15
  %540 = zext i32 %372 to i64
  %541 = getelementptr inbounds nuw %struct.code, ptr %539, i64 %540
  store ptr %541, ptr %3, align 8, !tbaa !15
  br label %542

542:                                              ; preds = %128, %538
  %543 = phi i32 [ %264, %538 ], [ 1, %128 ]
  store i32 %543, ptr %4, align 4, !tbaa !9
  br label %544

544:                                              ; preds = %504, %542, %251, %258, %154, %163, %170, %177, %184, %191, %198, %205, %212, %219, %226, %233, %240, %247, %351, %353
  %545 = phi i32 [ 1, %353 ], [ 1, %351 ], [ -1, %247 ], [ -1, %240 ], [ -1, %233 ], [ -1, %226 ], [ -1, %219 ], [ -1, %212 ], [ -1, %205 ], [ -1, %198 ], [ -1, %191 ], [ -1, %184 ], [ -1, %177 ], [ -1, %170 ], [ -1, %163 ], [ -1, %154 ], [ -1, %258 ], [ -1, %251 ], [ 0, %542 ], [ 1, %504 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  ret i32 %545
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @inflate_fixed(ptr noundef writeonly captures(none) initializes((104, 128)) %0) local_unnamed_addr #4 {
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nomerge noreturn nounwind }

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
