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

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @inflate_table(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef captures(none) %3, ptr noundef captures(none) %4, ptr noundef captures(none) %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i16], align 16
  %8 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
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
  br i1 %129, label %130, label %259

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
  br label %512

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
  br i1 %149, label %150, label %256

150:                                              ; preds = %145
  %151 = add nuw nsw i64 %146, 1
  %152 = icmp eq i64 %151, %144
  br i1 %152, label %259, label %145, !llvm.loop !17

153:                                              ; preds = %259
  %154 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %155 = load i16, ptr %154, align 4, !tbaa !8
  %156 = shl nuw nsw i16 %266, 1
  %157 = sub nuw nsw i16 4, %156
  %158 = zext nneg i16 %157 to i32
  %159 = zext i16 %155 to i32
  %160 = sub nsw i32 %158, %159
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %514, label %162

162:                                              ; preds = %153
  %163 = getelementptr inbounds nuw i8, ptr %7, i64 6
  %164 = load i16, ptr %163, align 2, !tbaa !8
  %165 = shl nuw nsw i32 %160, 1
  %166 = zext i16 %164 to i32
  %167 = sub nsw i32 %165, %166
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %514, label %169

169:                                              ; preds = %162
  %170 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %171 = load i16, ptr %170, align 8, !tbaa !8
  %172 = shl nuw nsw i32 %167, 1
  %173 = zext i16 %171 to i32
  %174 = sub nsw i32 %172, %173
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %514, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds nuw i8, ptr %7, i64 10
  %178 = load i16, ptr %177, align 2, !tbaa !8
  %179 = shl nuw nsw i32 %174, 1
  %180 = zext i16 %178 to i32
  %181 = sub nsw i32 %179, %180
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %514, label %183

183:                                              ; preds = %176
  %184 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %185 = load i16, ptr %184, align 4, !tbaa !8
  %186 = shl nuw nsw i32 %181, 1
  %187 = zext i16 %185 to i32
  %188 = sub nsw i32 %186, %187
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %514, label %190

190:                                              ; preds = %183
  %191 = getelementptr inbounds nuw i8, ptr %7, i64 14
  %192 = load i16, ptr %191, align 2, !tbaa !8
  %193 = shl nuw nsw i32 %188, 1
  %194 = zext i16 %192 to i32
  %195 = sub nsw i32 %193, %194
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %514, label %197

197:                                              ; preds = %190
  %198 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %199 = load i16, ptr %198, align 16, !tbaa !8
  %200 = shl nuw nsw i32 %195, 1
  %201 = zext i16 %199 to i32
  %202 = sub nsw i32 %200, %201
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %514, label %204

204:                                              ; preds = %197
  %205 = getelementptr inbounds nuw i8, ptr %7, i64 18
  %206 = load i16, ptr %205, align 2, !tbaa !8
  %207 = shl nuw nsw i32 %202, 1
  %208 = zext i16 %206 to i32
  %209 = sub nsw i32 %207, %208
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %514, label %211

211:                                              ; preds = %204
  %212 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %213 = load i16, ptr %212, align 4, !tbaa !8
  %214 = shl nuw nsw i32 %209, 1
  %215 = zext i16 %213 to i32
  %216 = sub nsw i32 %214, %215
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %514, label %218

218:                                              ; preds = %211
  %219 = getelementptr inbounds nuw i8, ptr %7, i64 22
  %220 = load i16, ptr %219, align 2, !tbaa !8
  %221 = shl nuw nsw i32 %216, 1
  %222 = zext i16 %220 to i32
  %223 = sub nsw i32 %221, %222
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %514, label %225

225:                                              ; preds = %218
  %226 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %227 = load i16, ptr %226, align 8, !tbaa !8
  %228 = shl nuw nsw i32 %223, 1
  %229 = zext i16 %227 to i32
  %230 = sub nsw i32 %228, %229
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %514, label %232

232:                                              ; preds = %225
  %233 = getelementptr inbounds nuw i8, ptr %7, i64 26
  %234 = load i16, ptr %233, align 2, !tbaa !8
  %235 = shl nuw nsw i32 %230, 1
  %236 = zext i16 %234 to i32
  %237 = sub nsw i32 %235, %236
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %514, label %239

239:                                              ; preds = %232
  %240 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %241 = load i16, ptr %240, align 4, !tbaa !8
  %242 = shl nuw nsw i32 %237, 1
  %243 = zext i16 %241 to i32
  %244 = sub nsw i32 %242, %243
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %514, label %246

246:                                              ; preds = %239
  %247 = shl nuw nsw i32 %244, 1
  %248 = zext i16 %263 to i32
  %249 = icmp samesign ult i32 %247, %248
  br i1 %249, label %514, label %250

250:                                              ; preds = %246
  %251 = icmp ne i32 %247, %248
  %252 = icmp eq i32 %0, 0
  %253 = or i1 %252, %262
  %254 = and i1 %251, %253
  br i1 %254, label %514, label %268

255:                                              ; preds = %459
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !18
  unreachable, !nosanitize !18

256:                                              ; preds = %145
  %257 = trunc nuw nsw i64 %146 to i32
  %258 = tail call i32 @llvm.umax.i32(i32 %143, i32 %257)
  br label %259

259:                                              ; preds = %150, %126, %256
  %260 = phi i32 [ 1, %126 ], [ %258, %256 ], [ %142, %150 ]
  %261 = phi i32 [ 1, %126 ], [ %142, %256 ], [ %142, %150 ]
  %262 = phi i1 [ false, %126 ], [ true, %256 ], [ true, %150 ]
  %263 = phi i16 [ 0, %126 ], [ %141, %256 ], [ %141, %150 ]
  %264 = phi i32 [ 1, %126 ], [ %257, %256 ], [ %142, %150 ]
  %265 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %266 = load i16, ptr %265, align 2, !tbaa !8
  %267 = icmp ugt i16 %266, 2
  br i1 %267, label %514, label %153

268:                                              ; preds = %250
  %269 = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 0, ptr %269, align 2, !tbaa !8
  %270 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i16 %266, ptr %270, align 4, !tbaa !8
  %271 = add i16 %155, %266
  %272 = getelementptr inbounds nuw i8, ptr %8, i64 6
  store i16 %271, ptr %272, align 2, !tbaa !8
  %273 = add i16 %164, %271
  %274 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 %273, ptr %274, align 8, !tbaa !8
  %275 = add i16 %171, %273
  %276 = getelementptr inbounds nuw i8, ptr %8, i64 10
  store i16 %275, ptr %276, align 2, !tbaa !8
  %277 = add i16 %178, %275
  %278 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i16 %277, ptr %278, align 4, !tbaa !8
  %279 = add i16 %185, %277
  %280 = getelementptr inbounds nuw i8, ptr %8, i64 14
  store i16 %279, ptr %280, align 2, !tbaa !8
  %281 = add i16 %192, %279
  %282 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i16 %281, ptr %282, align 16, !tbaa !8
  %283 = add i16 %199, %281
  %284 = getelementptr inbounds nuw i8, ptr %8, i64 18
  store i16 %283, ptr %284, align 2, !tbaa !8
  %285 = add i16 %206, %283
  %286 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i16 %285, ptr %286, align 4, !tbaa !8
  %287 = add i16 %213, %285
  %288 = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %287, ptr %288, align 2, !tbaa !8
  %289 = add i16 %220, %287
  %290 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %289, ptr %290, align 8, !tbaa !8
  %291 = add i16 %227, %289
  %292 = getelementptr inbounds nuw i8, ptr %8, i64 26
  store i16 %291, ptr %292, align 2, !tbaa !8
  %293 = add i16 %234, %291
  %294 = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i16 %293, ptr %294, align 4, !tbaa !8
  %295 = add i16 %241, %293
  %296 = getelementptr inbounds nuw i8, ptr %8, i64 30
  store i16 %295, ptr %296, align 2, !tbaa !8
  br i1 %9, label %350, label %297

297:                                              ; preds = %268
  %298 = zext i32 %2 to i64
  %299 = and i64 %298, 1
  %300 = icmp eq i32 %2, 1
  br i1 %300, label %336, label %301

301:                                              ; preds = %297
  %302 = and i64 %298, 4294967294
  br label %303

303:                                              ; preds = %330, %301
  %304 = phi i64 [ 0, %301 ], [ %331, %330 ]
  %305 = phi i64 [ 0, %301 ], [ %332, %330 ]
  %306 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %304
  %307 = load i16, ptr %306, align 2, !tbaa !8
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %317, label %309

309:                                              ; preds = %303
  %310 = trunc i64 %304 to i16
  %311 = zext i16 %307 to i64
  %312 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %311
  %313 = load i16, ptr %312, align 2, !tbaa !8
  %314 = add i16 %313, 1
  store i16 %314, ptr %312, align 2, !tbaa !8
  %315 = zext i16 %313 to i64
  %316 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %315
  store i16 %310, ptr %316, align 2, !tbaa !8
  br label %317

317:                                              ; preds = %303, %309
  %318 = or disjoint i64 %304, 1
  %319 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %318
  %320 = load i16, ptr %319, align 2, !tbaa !8
  %321 = icmp eq i16 %320, 0
  br i1 %321, label %330, label %322

322:                                              ; preds = %317
  %323 = trunc i64 %318 to i16
  %324 = zext i16 %320 to i64
  %325 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !8
  %327 = add i16 %326, 1
  store i16 %327, ptr %325, align 2, !tbaa !8
  %328 = zext i16 %326 to i64
  %329 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %328
  store i16 %323, ptr %329, align 2, !tbaa !8
  br label %330

330:                                              ; preds = %322, %317
  %331 = add nuw nsw i64 %304, 2
  %332 = add i64 %305, 2
  %333 = icmp eq i64 %332, %302
  br i1 %333, label %334, label %303, !llvm.loop !19

334:                                              ; preds = %330
  %335 = icmp eq i64 %299, 0
  br i1 %335, label %350, label %336

336:                                              ; preds = %334, %297
  %337 = phi i64 [ 0, %297 ], [ %331, %334 ]
  %338 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %338)
  %339 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %337
  %340 = load i16, ptr %339, align 2, !tbaa !8
  %341 = icmp eq i16 %340, 0
  br i1 %341, label %350, label %342

342:                                              ; preds = %336
  %343 = trunc i64 %337 to i16
  %344 = zext i16 %340 to i64
  %345 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %344
  %346 = load i16, ptr %345, align 2, !tbaa !8
  %347 = add i16 %346, 1
  store i16 %347, ptr %345, align 2, !tbaa !8
  %348 = zext i16 %346 to i64
  %349 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %348
  store i16 %343, ptr %349, align 2, !tbaa !8
  br label %350

350:                                              ; preds = %334, %342, %336, %268
  switch i32 %0, label %356 [
    i32 0, label %351
    i32 1, label %352
    i32 2, label %354
  ]

351:                                              ; preds = %350
  br label %356

352:                                              ; preds = %350
  %353 = icmp ugt i32 %260, 9
  br i1 %353, label %514, label %356

354:                                              ; preds = %350
  %355 = icmp ugt i32 %260, 9
  br i1 %355, label %514, label %356

356:                                              ; preds = %350, %351, %352, %354
  %357 = phi i1 [ false, %352 ], [ true, %354 ], [ false, %351 ], [ false, %350 ]
  %358 = phi ptr [ @inflate_table.lbase, %352 ], [ @inflate_table.dbase, %354 ], [ null, %351 ], [ null, %350 ]
  %359 = phi ptr [ @inflate_table.lext, %352 ], [ @inflate_table.dext, %354 ], [ null, %351 ], [ null, %350 ]
  %360 = phi i32 [ 257, %352 ], [ 0, %354 ], [ 20, %351 ], [ 0, %350 ]
  %361 = phi i1 [ true, %352 ], [ false, %354 ], [ false, %351 ], [ false, %350 ]
  %362 = shl nuw i32 1, %260
  %363 = add i32 %362, -1
  %364 = load ptr, ptr %3, align 8, !tbaa !14
  %365 = trunc i32 %260 to i8
  br label %366

366:                                              ; preds = %489, %356
  %367 = phi i32 [ %443, %489 ], [ %264, %356 ]
  %368 = phi i32 [ %426, %489 ], [ 0, %356 ]
  %369 = phi i32 [ %482, %489 ], [ %260, %356 ]
  %370 = phi i32 [ %451, %489 ], [ 0, %356 ]
  %371 = phi i32 [ %483, %489 ], [ %362, %356 ]
  %372 = phi i32 [ %425, %489 ], [ 0, %356 ]
  %373 = phi i32 [ %446, %489 ], [ -1, %356 ]
  %374 = phi ptr [ %453, %489 ], [ %364, %356 ]
  %375 = shl nuw i32 1, %369
  br label %376

376:                                              ; preds = %448, %366
  %377 = phi i32 [ %367, %366 ], [ %443, %448 ]
  %378 = phi i32 [ %368, %366 ], [ %426, %448 ]
  %379 = phi i32 [ %372, %366 ], [ %425, %448 ]
  %380 = sub i32 %377, %370
  %381 = trunc i32 %380 to i8
  %382 = zext i32 %378 to i64
  %383 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %382
  %384 = load i16, ptr %383, align 2, !tbaa !8
  %385 = zext i16 %384 to i32
  %386 = add nuw nsw i32 %385, 1
  %387 = icmp samesign ult i32 %386, %360
  br i1 %387, label %398, label %388

388:                                              ; preds = %376
  %389 = icmp samesign ugt i32 %360, %385
  br i1 %389, label %398, label %390

390:                                              ; preds = %388
  %391 = sub nuw nsw i32 %385, %360
  %392 = zext nneg i32 %391 to i64
  %393 = getelementptr inbounds nuw [2 x i8], ptr %359, i64 %392
  %394 = load i16, ptr %393, align 2, !tbaa !8
  %395 = trunc i16 %394 to i8
  %396 = getelementptr inbounds nuw [2 x i8], ptr %358, i64 %392
  %397 = load i16, ptr %396, align 2, !tbaa !8
  br label %398

398:                                              ; preds = %388, %376, %390
  %399 = phi i16 [ %384, %376 ], [ %397, %390 ], [ 0, %388 ]
  %400 = phi i8 [ 0, %376 ], [ %395, %390 ], [ 96, %388 ]
  %401 = shl nsw i32 -1, %380
  %402 = lshr i32 %379, %370
  br label %403

403:                                              ; preds = %403, %398
  %404 = phi i32 [ %375, %398 ], [ %405, %403 ]
  %405 = add i32 %404, %401
  %406 = add i32 %405, %402
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds nuw [4 x i8], ptr %374, i64 %407
  store i8 %400, ptr %408, align 2, !tbaa !16
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 1
  store i8 %381, ptr %409, align 1, !tbaa !16
  %410 = getelementptr inbounds nuw i8, ptr %408, i64 2
  store i16 %399, ptr %410, align 2, !tbaa !8
  %411 = icmp eq i32 %405, 0
  br i1 %411, label %412, label %403, !llvm.loop !20

412:                                              ; preds = %403
  %413 = add i32 %377, -1
  %414 = shl nuw i32 1, %413
  br label %415

415:                                              ; preds = %415, %412
  %416 = phi i32 [ %414, %412 ], [ %419, %415 ]
  %417 = and i32 %416, %379
  %418 = icmp eq i32 %417, 0
  %419 = lshr i32 %416, 1
  br i1 %418, label %420, label %415, !llvm.loop !21

420:                                              ; preds = %415
  %421 = icmp eq i32 %416, 0
  %422 = add i32 %416, -1
  %423 = and i32 %422, %379
  %424 = add i32 %423, %416
  %425 = select i1 %421, i32 0, i32 %424
  %426 = add i32 %378, 1
  %427 = zext i32 %377 to i64
  %428 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %427
  %429 = load i16, ptr %428, align 2, !tbaa !8
  %430 = add i16 %429, -1
  store i16 %430, ptr %428, align 2, !tbaa !8
  %431 = icmp eq i16 %430, 0
  br i1 %431, label %432, label %442

432:                                              ; preds = %420
  %433 = icmp eq i32 %377, %261
  br i1 %433, label %501, label %434

434:                                              ; preds = %432
  %435 = zext i32 %426 to i64
  %436 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %435
  %437 = load i16, ptr %436, align 2, !tbaa !8
  %438 = zext i16 %437 to i64
  %439 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %438
  %440 = load i16, ptr %439, align 2, !tbaa !8
  %441 = zext i16 %440 to i32
  br label %442

442:                                              ; preds = %434, %420
  %443 = phi i32 [ %441, %434 ], [ %377, %420 ]
  %444 = icmp ugt i32 %443, %260
  br i1 %444, label %445, label %448

445:                                              ; preds = %442
  %446 = and i32 %425, %363
  %447 = icmp eq i32 %446, %373
  br i1 %447, label %448, label %449

448:                                              ; preds = %445, %442
  br label %376

449:                                              ; preds = %445
  %450 = icmp eq i32 %370, 0
  %451 = select i1 %450, i32 %260, i32 %370
  %452 = zext i32 %375 to i64
  %453 = getelementptr inbounds nuw [4 x i8], ptr %374, i64 %452
  %454 = sub i32 %443, %451
  %455 = shl nuw i32 1, %454
  %456 = icmp ult i32 %443, %261
  br i1 %456, label %457, label %480

457:                                              ; preds = %449
  %458 = sub i32 %261, %451
  br label %459

459:                                              ; preds = %457, %472
  %460 = phi i32 [ %475, %472 ], [ %443, %457 ]
  %461 = phi i32 [ %474, %472 ], [ %455, %457 ]
  %462 = phi i32 [ %473, %472 ], [ %454, %457 ]
  %463 = zext nneg i32 %460 to i64
  %464 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %463
  %465 = load i16, ptr %464, align 2, !tbaa !8
  %466 = zext i16 %465 to i32
  %467 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %461, i32 %466), !nosanitize !18
  %468 = extractvalue { i32, i1 } %467, 0, !nosanitize !18
  %469 = extractvalue { i32, i1 } %467, 1, !nosanitize !18
  br i1 %469, label %255, label %470, !prof !22, !nosanitize !18

470:                                              ; preds = %459
  %471 = icmp slt i32 %468, 1
  br i1 %471, label %477, label %472

472:                                              ; preds = %470
  %473 = add i32 %462, 1
  %474 = shl nuw i32 %468, 1
  %475 = add i32 %473, %451
  %476 = icmp ult i32 %475, %261
  br i1 %476, label %459, label %477, !llvm.loop !23

477:                                              ; preds = %470, %472
  %478 = phi i32 [ %458, %472 ], [ %462, %470 ]
  %479 = shl nuw i32 1, %478
  br label %480

480:                                              ; preds = %477, %449
  %481 = phi i32 [ %479, %477 ], [ %455, %449 ]
  %482 = phi i32 [ %478, %477 ], [ %454, %449 ]
  %483 = add i32 %481, %371
  %484 = icmp ugt i32 %483, 852
  %485 = select i1 %361, i1 %484, i1 false
  %486 = icmp ugt i32 %483, 592
  %487 = select i1 %357, i1 %486, i1 false
  %488 = select i1 %485, i1 true, i1 %487
  br i1 %488, label %514, label %489

489:                                              ; preds = %480
  %490 = trunc i32 %482 to i8
  %491 = load ptr, ptr %3, align 8, !tbaa !14
  %492 = zext nneg i32 %446 to i64
  %493 = getelementptr inbounds nuw [4 x i8], ptr %491, i64 %492
  store i8 %490, ptr %493, align 2, !tbaa !24
  %494 = getelementptr inbounds nuw i8, ptr %493, i64 1
  store i8 %365, ptr %494, align 1, !tbaa !26
  %495 = ptrtoint ptr %453 to i64
  %496 = ptrtoint ptr %491 to i64
  %497 = sub i64 %495, %496
  %498 = lshr exact i64 %497, 2
  %499 = trunc i64 %498 to i16
  %500 = getelementptr inbounds nuw i8, ptr %493, i64 2
  store i16 %499, ptr %500, align 2, !tbaa !27
  br label %366

501:                                              ; preds = %432
  %502 = icmp eq i32 %425, 0
  br i1 %502, label %508, label %503

503:                                              ; preds = %501
  %504 = zext i32 %425 to i64
  %505 = getelementptr inbounds nuw [4 x i8], ptr %374, i64 %504
  store i8 64, ptr %505, align 2, !tbaa !16
  %506 = getelementptr inbounds nuw i8, ptr %505, i64 1
  store i8 %381, ptr %506, align 1, !tbaa !16
  %507 = getelementptr inbounds nuw i8, ptr %505, i64 2
  store i16 0, ptr %507, align 2, !tbaa !8
  br label %508

508:                                              ; preds = %503, %501
  %509 = load ptr, ptr %3, align 8, !tbaa !14
  %510 = zext i32 %371 to i64
  %511 = getelementptr inbounds nuw [4 x i8], ptr %509, i64 %510
  store ptr %511, ptr %3, align 8, !tbaa !14
  br label %512

512:                                              ; preds = %130, %508
  %513 = phi i32 [ %260, %508 ], [ 1, %130 ]
  store i32 %513, ptr %4, align 4, !tbaa !4
  br label %514

514:                                              ; preds = %480, %512, %250, %259, %153, %162, %169, %176, %183, %190, %197, %204, %211, %218, %225, %232, %239, %246, %352, %354
  %515 = phi i32 [ -1, %153 ], [ 1, %352 ], [ -1, %259 ], [ -1, %250 ], [ 0, %512 ], [ 1, %354 ], [ -1, %246 ], [ -1, %239 ], [ -1, %232 ], [ -1, %225 ], [ -1, %218 ], [ -1, %211 ], [ -1, %204 ], [ -1, %197 ], [ -1, %190 ], [ -1, %183 ], [ -1, %176 ], [ -1, %169 ], [ -1, %162 ], [ 1, %480 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  ret i32 %515
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
