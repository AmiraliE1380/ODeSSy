; ModuleID = '/home/amiralie1380/michigan/pl/zlib/inftrees.c'
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

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @inflate_table(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef captures(none) %3, ptr noundef captures(none) %4, ptr noundef captures(none) %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i16], align 16
  %8 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !8
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, ptr %4, align 4, !tbaa !4
  br label %73

12:                                               ; preds = %6
  %13 = zext i32 %2 to i64
  %14 = and i64 %13, 3
  %15 = icmp ult i32 %2, 4
  br i1 %15, label %53, label %16

16:                                               ; preds = %12
  %17 = and i64 %13, 4294967292
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %48, %18 ]
  %20 = phi i64 [ 0, %16 ], [ %49, %18 ]
  %21 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %19
  %22 = load i16, ptr %21, align 2, !tbaa !8
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !8
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 2, !tbaa !8
  %27 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %19
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 2
  %29 = load i16, ptr %28, align 2, !tbaa !8
  %30 = zext i16 %29 to i64
  %31 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !8
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 2, !tbaa !8
  %34 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %19
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 4
  %36 = load i16, ptr %35, align 2, !tbaa !8
  %37 = zext i16 %36 to i64
  %38 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !8
  %40 = add i16 %39, 1
  store i16 %40, ptr %38, align 2, !tbaa !8
  %41 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %19
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 6
  %43 = load i16, ptr %42, align 2, !tbaa !8
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !8
  %47 = add i16 %46, 1
  store i16 %47, ptr %45, align 2, !tbaa !8
  %48 = add nuw nsw i64 %19, 4
  %49 = add i64 %20, 4
  %50 = icmp eq i64 %49, %17
  br i1 %50, label %51, label %18, !llvm.loop !10

51:                                               ; preds = %18
  %52 = icmp eq i64 %14, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %51, %12
  %54 = phi i64 [ 0, %12 ], [ %48, %51 ]
  %55 = icmp ne i64 %14, 0
  tail call void @llvm.assume(i1 %55)
  br label %56

56:                                               ; preds = %56, %53
  %57 = phi i64 [ %54, %53 ], [ %65, %56 ]
  %58 = phi i64 [ 0, %53 ], [ %66, %56 ]
  %59 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %57
  %60 = load i16, ptr %59, align 2, !tbaa !8
  %61 = zext i16 %60 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !8
  %64 = add i16 %63, 1
  store i16 %64, ptr %62, align 2, !tbaa !8
  %65 = add nuw nsw i64 %57, 1
  %66 = add i64 %58, 1
  %67 = icmp eq i64 %66, %14
  br i1 %67, label %68, label %56, !llvm.loop !12

68:                                               ; preds = %56, %51
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 30
  %70 = load i16, ptr %69, align 2, !tbaa !8
  %71 = load i32, ptr %4, align 4, !tbaa !4
  %72 = icmp eq i16 %70, 0
  br i1 %72, label %73, label %139

73:                                               ; preds = %10, %68
  %74 = phi i32 [ %11, %10 ], [ %71, %68 ]
  %75 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %76 = load i16, ptr %75, align 4, !tbaa !8
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %139

78:                                               ; preds = %73
  %79 = getelementptr inbounds nuw i8, ptr %7, i64 26
  %80 = load i16, ptr %79, align 2, !tbaa !8
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %139

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %84 = load i16, ptr %83, align 8, !tbaa !8
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %139

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %7, i64 22
  %88 = load i16, ptr %87, align 2, !tbaa !8
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %139

90:                                               ; preds = %86
  %91 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %92 = load i16, ptr %91, align 4, !tbaa !8
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %139

94:                                               ; preds = %90
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 18
  %96 = load i16, ptr %95, align 2, !tbaa !8
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %139

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %100 = load i16, ptr %99, align 16, !tbaa !8
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %139

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %7, i64 14
  %104 = load i16, ptr %103, align 2, !tbaa !8
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %139

106:                                              ; preds = %102
  %107 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %108 = load i16, ptr %107, align 4, !tbaa !8
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %139

110:                                              ; preds = %106
  %111 = getelementptr inbounds nuw i8, ptr %7, i64 10
  %112 = load i16, ptr %111, align 2, !tbaa !8
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %139

114:                                              ; preds = %110
  %115 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %116 = load i16, ptr %115, align 8, !tbaa !8
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %114
  %119 = getelementptr inbounds nuw i8, ptr %7, i64 6
  %120 = load i16, ptr %119, align 2, !tbaa !8
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %118
  %123 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %124 = load i16, ptr %123, align 4, !tbaa !8
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %128 = load i16, ptr %127, align 2, !tbaa !8
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %156

130:                                              ; preds = %126
  %131 = load ptr, ptr %3, align 8, !tbaa !14
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 4
  store ptr %132, ptr %3, align 8, !tbaa !14
  store i8 64, ptr %131, align 2, !tbaa !16
  %133 = getelementptr inbounds nuw i8, ptr %131, i64 1
  store i8 1, ptr %133, align 1, !tbaa !16
  %134 = getelementptr inbounds nuw i8, ptr %131, i64 2
  store i16 0, ptr %134, align 2, !tbaa !8
  %135 = load ptr, ptr %3, align 8, !tbaa !14
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 4
  store ptr %136, ptr %3, align 8, !tbaa !14
  store i8 64, ptr %135, align 2, !tbaa !16
  %137 = getelementptr inbounds nuw i8, ptr %135, i64 1
  store i8 1, ptr %137, align 1, !tbaa !16
  %138 = getelementptr inbounds nuw i8, ptr %135, i64 2
  store i16 0, ptr %138, align 2, !tbaa !8
  br label %508

139:                                              ; preds = %68, %73, %78, %82, %86, %90, %94, %98, %102, %106, %110, %114, %118, %122
  %140 = phi i32 [ %74, %122 ], [ %74, %118 ], [ %74, %114 ], [ %74, %110 ], [ %74, %106 ], [ %74, %102 ], [ %74, %98 ], [ %74, %94 ], [ %74, %90 ], [ %74, %86 ], [ %74, %82 ], [ %74, %78 ], [ %74, %73 ], [ %71, %68 ]
  %141 = phi i16 [ 0, %122 ], [ 0, %118 ], [ 0, %114 ], [ 0, %110 ], [ 0, %106 ], [ 0, %102 ], [ 0, %98 ], [ 0, %94 ], [ 0, %90 ], [ 0, %86 ], [ 0, %82 ], [ 0, %78 ], [ 0, %73 ], [ %70, %68 ]
  %142 = phi i32 [ 2, %122 ], [ 3, %118 ], [ 4, %114 ], [ 5, %110 ], [ 6, %106 ], [ 7, %102 ], [ 8, %98 ], [ 9, %94 ], [ 10, %90 ], [ 11, %86 ], [ 12, %82 ], [ 13, %78 ], [ 14, %73 ], [ 15, %68 ]
  %143 = tail call i32 @llvm.umin.i32(i32 %140, i32 %142)
  %144 = zext nneg i32 %142 to i64
  br label %145

145:                                              ; preds = %139, %150
  %146 = phi i64 [ 1, %139 ], [ %151, %150 ]
  %147 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %146
  %148 = load i16, ptr %147, align 2, !tbaa !8
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = add nuw nsw i64 %146, 1
  %152 = icmp eq i64 %151, %144
  br i1 %152, label %156, label %145, !llvm.loop !17

153:                                              ; preds = %145
  %154 = trunc nuw nsw i64 %146 to i32
  %155 = tail call i32 @llvm.umax.i32(i32 %143, i32 %154)
  br label %156

156:                                              ; preds = %150, %126, %153
  %157 = phi i32 [ 1, %126 ], [ %155, %153 ], [ %142, %150 ]
  %158 = phi i32 [ 1, %126 ], [ %142, %153 ], [ %142, %150 ]
  %159 = phi i1 [ false, %126 ], [ true, %153 ], [ true, %150 ]
  %160 = phi i16 [ 0, %126 ], [ %141, %153 ], [ %141, %150 ]
  %161 = phi i32 [ 1, %126 ], [ %154, %153 ], [ %142, %150 ]
  %162 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %163 = load i16, ptr %162, align 2, !tbaa !8
  %164 = icmp ugt i16 %163, 2
  br i1 %164, label %510, label %165

165:                                              ; preds = %156
  %166 = shl nuw nsw i16 %163, 1
  %167 = sub nuw nsw i16 4, %166
  %168 = zext nneg i16 %167 to i32
  %169 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %170 = load i16, ptr %169, align 4, !tbaa !8
  %171 = zext i16 %170 to i32
  %172 = sub nsw i32 %168, %171
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %510, label %174

174:                                              ; preds = %165
  %175 = shl nuw nsw i32 %172, 1
  %176 = getelementptr inbounds nuw i8, ptr %7, i64 6
  %177 = load i16, ptr %176, align 2, !tbaa !8
  %178 = zext i16 %177 to i32
  %179 = sub nsw i32 %175, %178
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %510, label %181

181:                                              ; preds = %174
  %182 = shl nuw nsw i32 %179, 1
  %183 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %184 = load i16, ptr %183, align 8, !tbaa !8
  %185 = zext i16 %184 to i32
  %186 = sub nsw i32 %182, %185
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %510, label %188

188:                                              ; preds = %181
  %189 = shl nuw nsw i32 %186, 1
  %190 = getelementptr inbounds nuw i8, ptr %7, i64 10
  %191 = load i16, ptr %190, align 2, !tbaa !8
  %192 = zext i16 %191 to i32
  %193 = sub nsw i32 %189, %192
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %510, label %195

195:                                              ; preds = %188
  %196 = shl nuw nsw i32 %193, 1
  %197 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %198 = load i16, ptr %197, align 4, !tbaa !8
  %199 = zext i16 %198 to i32
  %200 = sub nsw i32 %196, %199
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %510, label %202

202:                                              ; preds = %195
  %203 = shl nuw nsw i32 %200, 1
  %204 = getelementptr inbounds nuw i8, ptr %7, i64 14
  %205 = load i16, ptr %204, align 2, !tbaa !8
  %206 = zext i16 %205 to i32
  %207 = sub nsw i32 %203, %206
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %510, label %209

209:                                              ; preds = %202
  %210 = shl nuw nsw i32 %207, 1
  %211 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %212 = load i16, ptr %211, align 16, !tbaa !8
  %213 = zext i16 %212 to i32
  %214 = sub nsw i32 %210, %213
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %510, label %216

216:                                              ; preds = %209
  %217 = shl nuw nsw i32 %214, 1
  %218 = getelementptr inbounds nuw i8, ptr %7, i64 18
  %219 = load i16, ptr %218, align 2, !tbaa !8
  %220 = zext i16 %219 to i32
  %221 = sub nsw i32 %217, %220
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %510, label %223

223:                                              ; preds = %216
  %224 = shl nuw nsw i32 %221, 1
  %225 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %226 = load i16, ptr %225, align 4, !tbaa !8
  %227 = zext i16 %226 to i32
  %228 = sub nsw i32 %224, %227
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %510, label %230

230:                                              ; preds = %223
  %231 = shl nuw nsw i32 %228, 1
  %232 = getelementptr inbounds nuw i8, ptr %7, i64 22
  %233 = load i16, ptr %232, align 2, !tbaa !8
  %234 = zext i16 %233 to i32
  %235 = sub nsw i32 %231, %234
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %510, label %237

237:                                              ; preds = %230
  %238 = shl nuw nsw i32 %235, 1
  %239 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %240 = load i16, ptr %239, align 8, !tbaa !8
  %241 = zext i16 %240 to i32
  %242 = sub nsw i32 %238, %241
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %510, label %244

244:                                              ; preds = %237
  %245 = shl nuw nsw i32 %242, 1
  %246 = getelementptr inbounds nuw i8, ptr %7, i64 26
  %247 = load i16, ptr %246, align 2, !tbaa !8
  %248 = zext i16 %247 to i32
  %249 = sub nsw i32 %245, %248
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %510, label %251

251:                                              ; preds = %244
  %252 = shl nuw nsw i32 %249, 1
  %253 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %254 = load i16, ptr %253, align 4, !tbaa !8
  %255 = zext i16 %254 to i32
  %256 = sub nsw i32 %252, %255
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %510, label %258

258:                                              ; preds = %251
  %259 = shl nuw nsw i32 %256, 1
  %260 = zext i16 %160 to i32
  %261 = icmp samesign ult i32 %259, %260
  br i1 %261, label %510, label %262

262:                                              ; preds = %258
  %263 = icmp ne i32 %259, %260
  %264 = icmp eq i32 %0, 0
  %265 = or i1 %264, %159
  %266 = and i1 %263, %265
  br i1 %266, label %510, label %267

267:                                              ; preds = %262
  %268 = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 0, ptr %268, align 2, !tbaa !8
  %269 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i16 %163, ptr %269, align 4, !tbaa !8
  %270 = add i16 %170, %163
  %271 = getelementptr inbounds nuw i8, ptr %8, i64 6
  store i16 %270, ptr %271, align 2, !tbaa !8
  %272 = add i16 %177, %270
  %273 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 %272, ptr %273, align 8, !tbaa !8
  %274 = add i16 %184, %272
  %275 = getelementptr inbounds nuw i8, ptr %8, i64 10
  store i16 %274, ptr %275, align 2, !tbaa !8
  %276 = add i16 %191, %274
  %277 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i16 %276, ptr %277, align 4, !tbaa !8
  %278 = add i16 %198, %276
  %279 = getelementptr inbounds nuw i8, ptr %8, i64 14
  store i16 %278, ptr %279, align 2, !tbaa !8
  %280 = add i16 %205, %278
  %281 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i16 %280, ptr %281, align 16, !tbaa !8
  %282 = add i16 %212, %280
  %283 = getelementptr inbounds nuw i8, ptr %8, i64 18
  store i16 %282, ptr %283, align 2, !tbaa !8
  %284 = add i16 %219, %282
  %285 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i16 %284, ptr %285, align 4, !tbaa !8
  %286 = add i16 %226, %284
  %287 = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %286, ptr %287, align 2, !tbaa !8
  %288 = add i16 %233, %286
  %289 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %288, ptr %289, align 8, !tbaa !8
  %290 = add i16 %240, %288
  %291 = getelementptr inbounds nuw i8, ptr %8, i64 26
  store i16 %290, ptr %291, align 2, !tbaa !8
  %292 = add i16 %247, %290
  %293 = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i16 %292, ptr %293, align 4, !tbaa !8
  %294 = add i16 %254, %292
  %295 = getelementptr inbounds nuw i8, ptr %8, i64 30
  store i16 %294, ptr %295, align 2, !tbaa !8
  br i1 %9, label %349, label %296

296:                                              ; preds = %267
  %297 = zext i32 %2 to i64
  %298 = and i64 %297, 1
  %299 = icmp eq i32 %2, 1
  br i1 %299, label %335, label %300

300:                                              ; preds = %296
  %301 = and i64 %297, 4294967294
  br label %302

302:                                              ; preds = %329, %300
  %303 = phi i64 [ 0, %300 ], [ %330, %329 ]
  %304 = phi i64 [ 0, %300 ], [ %331, %329 ]
  %305 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %303
  %306 = load i16, ptr %305, align 2, !tbaa !8
  %307 = icmp eq i16 %306, 0
  br i1 %307, label %316, label %308

308:                                              ; preds = %302
  %309 = trunc i64 %303 to i16
  %310 = zext i16 %306 to i64
  %311 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %310
  %312 = load i16, ptr %311, align 2, !tbaa !8
  %313 = add i16 %312, 1
  store i16 %313, ptr %311, align 2, !tbaa !8
  %314 = zext i16 %312 to i64
  %315 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %314
  store i16 %309, ptr %315, align 2, !tbaa !8
  br label %316

316:                                              ; preds = %302, %308
  %317 = or disjoint i64 %303, 1
  %318 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %317
  %319 = load i16, ptr %318, align 2, !tbaa !8
  %320 = icmp eq i16 %319, 0
  br i1 %320, label %329, label %321

321:                                              ; preds = %316
  %322 = trunc i64 %317 to i16
  %323 = zext i16 %319 to i64
  %324 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %323
  %325 = load i16, ptr %324, align 2, !tbaa !8
  %326 = add i16 %325, 1
  store i16 %326, ptr %324, align 2, !tbaa !8
  %327 = zext i16 %325 to i64
  %328 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %327
  store i16 %322, ptr %328, align 2, !tbaa !8
  br label %329

329:                                              ; preds = %321, %316
  %330 = add nuw nsw i64 %303, 2
  %331 = add i64 %304, 2
  %332 = icmp eq i64 %331, %301
  br i1 %332, label %333, label %302, !llvm.loop !18

333:                                              ; preds = %329
  %334 = icmp eq i64 %298, 0
  br i1 %334, label %349, label %335

335:                                              ; preds = %333, %296
  %336 = phi i64 [ 0, %296 ], [ %330, %333 ]
  %337 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %337)
  %338 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %336
  %339 = load i16, ptr %338, align 2, !tbaa !8
  %340 = icmp eq i16 %339, 0
  br i1 %340, label %349, label %341

341:                                              ; preds = %335
  %342 = trunc i64 %336 to i16
  %343 = zext i16 %339 to i64
  %344 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %343
  %345 = load i16, ptr %344, align 2, !tbaa !8
  %346 = add i16 %345, 1
  store i16 %346, ptr %344, align 2, !tbaa !8
  %347 = zext i16 %345 to i64
  %348 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %347
  store i16 %342, ptr %348, align 2, !tbaa !8
  br label %349

349:                                              ; preds = %333, %341, %335, %267
  switch i32 %0, label %355 [
    i32 0, label %350
    i32 1, label %351
    i32 2, label %353
  ]

350:                                              ; preds = %349
  br label %355

351:                                              ; preds = %349
  %352 = icmp ugt i32 %157, 9
  br i1 %352, label %510, label %355

353:                                              ; preds = %349
  %354 = icmp ugt i32 %157, 9
  br i1 %354, label %510, label %355

355:                                              ; preds = %349, %350, %351, %353
  %356 = phi i1 [ false, %351 ], [ true, %353 ], [ false, %350 ], [ false, %349 ]
  %357 = phi ptr [ @inflate_table.lbase, %351 ], [ @inflate_table.dbase, %353 ], [ null, %350 ], [ null, %349 ]
  %358 = phi ptr [ @inflate_table.lext, %351 ], [ @inflate_table.dext, %353 ], [ null, %350 ], [ null, %349 ]
  %359 = phi i32 [ 257, %351 ], [ 0, %353 ], [ 20, %350 ], [ 0, %349 ]
  %360 = phi i1 [ true, %351 ], [ false, %353 ], [ false, %350 ], [ false, %349 ]
  %361 = shl nuw i32 1, %157
  %362 = add i32 %361, -1
  %363 = load ptr, ptr %3, align 8, !tbaa !14
  %364 = trunc i32 %157 to i8
  br label %365

365:                                              ; preds = %485, %355
  %366 = phi i32 [ %442, %485 ], [ %161, %355 ]
  %367 = phi i32 [ %425, %485 ], [ 0, %355 ]
  %368 = phi i32 [ %478, %485 ], [ %157, %355 ]
  %369 = phi i32 [ %450, %485 ], [ 0, %355 ]
  %370 = phi i32 [ %479, %485 ], [ %361, %355 ]
  %371 = phi i32 [ %424, %485 ], [ 0, %355 ]
  %372 = phi i32 [ %445, %485 ], [ -1, %355 ]
  %373 = phi ptr [ %452, %485 ], [ %363, %355 ]
  %374 = shl nuw i32 1, %368
  br label %375

375:                                              ; preds = %447, %365
  %376 = phi i32 [ %366, %365 ], [ %442, %447 ]
  %377 = phi i32 [ %367, %365 ], [ %425, %447 ]
  %378 = phi i32 [ %371, %365 ], [ %424, %447 ]
  %379 = sub i32 %376, %369
  %380 = trunc i32 %379 to i8
  %381 = zext i32 %377 to i64
  %382 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %381
  %383 = load i16, ptr %382, align 2, !tbaa !8
  %384 = zext i16 %383 to i32
  %385 = add nuw nsw i32 %384, 1
  %386 = icmp samesign ult i32 %385, %359
  br i1 %386, label %397, label %387

387:                                              ; preds = %375
  %388 = icmp samesign ugt i32 %359, %384
  br i1 %388, label %397, label %389

389:                                              ; preds = %387
  %390 = sub nuw nsw i32 %384, %359
  %391 = zext nneg i32 %390 to i64
  %392 = getelementptr inbounds nuw [2 x i8], ptr %358, i64 %391
  %393 = load i16, ptr %392, align 2, !tbaa !8
  %394 = trunc i16 %393 to i8
  %395 = getelementptr inbounds nuw [2 x i8], ptr %357, i64 %391
  %396 = load i16, ptr %395, align 2, !tbaa !8
  br label %397

397:                                              ; preds = %387, %375, %389
  %398 = phi i16 [ %383, %375 ], [ %396, %389 ], [ 0, %387 ]
  %399 = phi i8 [ 0, %375 ], [ %394, %389 ], [ 96, %387 ]
  %400 = shl nsw i32 -1, %379
  %401 = lshr i32 %378, %369
  br label %402

402:                                              ; preds = %402, %397
  %403 = phi i32 [ %374, %397 ], [ %404, %402 ]
  %404 = add i32 %403, %400
  %405 = add i32 %404, %401
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds nuw [4 x i8], ptr %373, i64 %406
  store i8 %399, ptr %407, align 2, !tbaa !16
  %408 = getelementptr inbounds nuw i8, ptr %407, i64 1
  store i8 %380, ptr %408, align 1, !tbaa !16
  %409 = getelementptr inbounds nuw i8, ptr %407, i64 2
  store i16 %398, ptr %409, align 2, !tbaa !8
  %410 = icmp eq i32 %404, 0
  br i1 %410, label %411, label %402, !llvm.loop !19

411:                                              ; preds = %402
  %412 = add i32 %376, -1
  %413 = shl nuw i32 1, %412
  br label %414

414:                                              ; preds = %414, %411
  %415 = phi i32 [ %413, %411 ], [ %418, %414 ]
  %416 = and i32 %415, %378
  %417 = icmp eq i32 %416, 0
  %418 = lshr i32 %415, 1
  br i1 %417, label %419, label %414, !llvm.loop !20

419:                                              ; preds = %414
  %420 = icmp eq i32 %415, 0
  %421 = add i32 %415, -1
  %422 = and i32 %421, %378
  %423 = add i32 %422, %415
  %424 = select i1 %420, i32 0, i32 %423
  %425 = add i32 %377, 1
  %426 = zext i32 %376 to i64
  %427 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %426
  %428 = load i16, ptr %427, align 2, !tbaa !8
  %429 = add i16 %428, -1
  store i16 %429, ptr %427, align 2, !tbaa !8
  %430 = icmp eq i16 %429, 0
  br i1 %430, label %431, label %441

431:                                              ; preds = %419
  %432 = icmp eq i32 %376, %158
  br i1 %432, label %497, label %433

433:                                              ; preds = %431
  %434 = zext i32 %425 to i64
  %435 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %434
  %436 = load i16, ptr %435, align 2, !tbaa !8
  %437 = zext i16 %436 to i64
  %438 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %437
  %439 = load i16, ptr %438, align 2, !tbaa !8
  %440 = zext i16 %439 to i32
  br label %441

441:                                              ; preds = %433, %419
  %442 = phi i32 [ %440, %433 ], [ %376, %419 ]
  %443 = icmp ugt i32 %442, %157
  br i1 %443, label %444, label %447

444:                                              ; preds = %441
  %445 = and i32 %424, %362
  %446 = icmp eq i32 %445, %372
  br i1 %446, label %447, label %448

447:                                              ; preds = %444, %441
  br label %375

448:                                              ; preds = %444
  %449 = icmp eq i32 %369, 0
  %450 = select i1 %449, i32 %157, i32 %369
  %451 = zext i32 %374 to i64
  %452 = getelementptr inbounds nuw [4 x i8], ptr %373, i64 %451
  %453 = sub i32 %442, %450
  %454 = shl nuw i32 1, %453
  %455 = icmp ult i32 %442, %158
  br i1 %455, label %456, label %476

456:                                              ; preds = %448
  %457 = sub i32 %158, %450
  br label %458

458:                                              ; preds = %456, %468
  %459 = phi i32 [ %471, %468 ], [ %442, %456 ]
  %460 = phi i32 [ %470, %468 ], [ %454, %456 ]
  %461 = phi i32 [ %469, %468 ], [ %453, %456 ]
  %462 = zext nneg i32 %459 to i64
  %463 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %462
  %464 = load i16, ptr %463, align 2, !tbaa !8
  %465 = zext i16 %464 to i32
  %466 = sub nsw i32 %460, %465
  %467 = icmp slt i32 %466, 1
  br i1 %467, label %473, label %468

468:                                              ; preds = %458
  %469 = add i32 %461, 1
  %470 = shl nuw i32 %466, 1
  %471 = add i32 %469, %450
  %472 = icmp ult i32 %471, %158
  br i1 %472, label %458, label %473, !llvm.loop !21

473:                                              ; preds = %458, %468
  %474 = phi i32 [ %457, %468 ], [ %461, %458 ]
  %475 = shl nuw i32 1, %474
  br label %476

476:                                              ; preds = %473, %448
  %477 = phi i32 [ %475, %473 ], [ %454, %448 ]
  %478 = phi i32 [ %474, %473 ], [ %453, %448 ]
  %479 = add i32 %477, %370
  %480 = icmp ugt i32 %479, 852
  %481 = select i1 %360, i1 %480, i1 false
  %482 = icmp ugt i32 %479, 592
  %483 = select i1 %356, i1 %482, i1 false
  %484 = select i1 %481, i1 true, i1 %483
  br i1 %484, label %510, label %485

485:                                              ; preds = %476
  %486 = trunc i32 %478 to i8
  %487 = load ptr, ptr %3, align 8, !tbaa !14
  %488 = zext nneg i32 %445 to i64
  %489 = getelementptr inbounds nuw [4 x i8], ptr %487, i64 %488
  store i8 %486, ptr %489, align 2, !tbaa !22
  %490 = getelementptr inbounds nuw i8, ptr %489, i64 1
  store i8 %364, ptr %490, align 1, !tbaa !24
  %491 = ptrtoint ptr %452 to i64
  %492 = ptrtoint ptr %487 to i64
  %493 = sub i64 %491, %492
  %494 = lshr exact i64 %493, 2
  %495 = trunc i64 %494 to i16
  %496 = getelementptr inbounds nuw i8, ptr %489, i64 2
  store i16 %495, ptr %496, align 2, !tbaa !25
  br label %365

497:                                              ; preds = %431
  %498 = icmp eq i32 %424, 0
  br i1 %498, label %504, label %499

499:                                              ; preds = %497
  %500 = zext i32 %424 to i64
  %501 = getelementptr inbounds nuw [4 x i8], ptr %373, i64 %500
  store i8 64, ptr %501, align 2, !tbaa !16
  %502 = getelementptr inbounds nuw i8, ptr %501, i64 1
  store i8 %380, ptr %502, align 1, !tbaa !16
  %503 = getelementptr inbounds nuw i8, ptr %501, i64 2
  store i16 0, ptr %503, align 2, !tbaa !8
  br label %504

504:                                              ; preds = %499, %497
  %505 = load ptr, ptr %3, align 8, !tbaa !14
  %506 = zext i32 %370 to i64
  %507 = getelementptr inbounds nuw [4 x i8], ptr %505, i64 %506
  store ptr %507, ptr %3, align 8, !tbaa !14
  br label %508

508:                                              ; preds = %130, %504
  %509 = phi i32 [ %157, %504 ], [ 1, %130 ]
  store i32 %509, ptr %4, align 4, !tbaa !4
  br label %510

510:                                              ; preds = %476, %508, %262, %156, %165, %174, %181, %188, %195, %202, %209, %216, %223, %230, %237, %244, %251, %258, %351, %353
  %511 = phi i32 [ -1, %165 ], [ 1, %351 ], [ -1, %156 ], [ -1, %262 ], [ 0, %508 ], [ 1, %353 ], [ -1, %258 ], [ -1, %251 ], [ -1, %244 ], [ -1, %237 ], [ -1, %230 ], [ -1, %223 ], [ -1, %216 ], [ -1, %209 ], [ -1, %202 ], [ -1, %195 ], [ -1, %188 ], [ -1, %181 ], [ -1, %174 ], [ 1, %476 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  ret i32 %511
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @inflate_fixed(ptr noundef writeonly captures(none) initializes((104, 128)) %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @lenfix, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 9, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @distfix, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 5, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = !{!23, !6, i64 0}
!23 = !{!"", !6, i64 0, !6, i64 1, !9, i64 2}
!24 = !{!23, !6, i64 1}
!25 = !{!23, !9, i64 2}
!26 = !{!27, !15, i64 104}
!27 = !{!"inflate_state", !28, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !29, i64 32, !29, i64 40, !30, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !31, i64 72, !29, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !15, i64 104, !15, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !15, i64 144, !6, i64 152, !6, i64 792, !6, i64 1368, !5, i64 7144, !5, i64 7148, !5, i64 7152}
!28 = !{!"p1 _ZTS10z_stream_s", !15, i64 0}
!29 = !{!"long", !6, i64 0}
!30 = !{!"p1 _ZTS11gz_header_s", !15, i64 0}
!31 = !{!"p1 omnipotent char", !15, i64 0}
!32 = !{!27, !5, i64 120}
!33 = !{!27, !15, i64 112}
!34 = !{!27, !5, i64 124}
