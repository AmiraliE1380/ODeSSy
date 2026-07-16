; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.trees.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }

@_dist_code = dso_local local_unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\10\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@_length_code = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C", align 16
@static_ltree = internal constant [288 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 140 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 76 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 204 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 44 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 172 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 108 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 236 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 156 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 92 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 220 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 60 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 188 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 124 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 252 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 130 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 66 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 194 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 34 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 162 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 98 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 226 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 146 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 82 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 210 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 50 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 178 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 114 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 242 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 138 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 74 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 202 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 42 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 170 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 106 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 234 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 154 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 90 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 218 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 58 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 186 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 122 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 250 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 134 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 70 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 198 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 38 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 166 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 102 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 230 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 150 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 86 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 214 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 54 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 182 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 118 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 246 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 142 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 78 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 206 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 46 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 174 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 110 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 238 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 158 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 94 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 222 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 62 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 190 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 126 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 254 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 129 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 65 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 193 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 33 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 161 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 97 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 225 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 145 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 81 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 209 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 49 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 177 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 113 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 241 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 137 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 73 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 201 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 41 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 169 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 105 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 233 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 153 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 89 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 217 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 57 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 185 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 121 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 249 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 133 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 69 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 197 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 37 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 165 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 101 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 229 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 149 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 85 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 213 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 53 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 181 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 117 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 245 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 141 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 77 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 205 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 45 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 173 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 109 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 237 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 157 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 93 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 221 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 61 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 189 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 125 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 253 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 275 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 147 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 403 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 83 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 339 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 211 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 467 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 51 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 307 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 179 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 435 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 115 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 371 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 243 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 499 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 267 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 139 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 395 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 75 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 331 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 203 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 459 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 43 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 299 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 171 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 427 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 107 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 363 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 235 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 491 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 283 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 155 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 411 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 91 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 347 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 219 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 475 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 59 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 315 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 187 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 443 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 123 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 379 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 251 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 507 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 263 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 135 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 391 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 71 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 327 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 199 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 455 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 39 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 295 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 167 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 423 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 103 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 359 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 231 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 487 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 279 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 151 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 407 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 87 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 343 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 215 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 471 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 55 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 311 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 183 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 439 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 119 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 375 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 247 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 503 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 15 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 271 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 143 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 399 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 79 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 335 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 207 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 463 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 47 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 303 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 175 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 431 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 111 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 367 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 239 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 495 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 31 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 287 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 159 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 415 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 95 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 351 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 223 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 479 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 63 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 319 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 191 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 447 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 127 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 383 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 255 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 511 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 64 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 32 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 96 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 80 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 48 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 112 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 72 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 40 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 104 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 88 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 56 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 120 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 68 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 36 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 100 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 84 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 52 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 116 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 131 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 67 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 195 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 35 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 163 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 99 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 227 }, %union.anon.0 { i16 8 } }], align 16
@static_dtree = internal constant [30 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 5 } }], align 16
@extra_lbits = internal constant [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 16
@static_l_desc = internal constant { ptr, ptr, i32, i32, i32, [4 x i8] } { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15, [4 x i8] zeroinitializer }, align 8
@extra_dbits = internal constant [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 16
@static_d_desc = internal constant { ptr, ptr, i32, i32, i32, [4 x i8] } { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15, [4 x i8] zeroinitializer }, align 8
@extra_blbits = internal constant [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 16
@static_bl_desc = internal constant { ptr, ptr, i32, i32, i32, [4 x i8] } { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7, [4 x i8] zeroinitializer }, align 8
@bl_order = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@base_length = internal unnamed_addr constant [29 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 12, i32 14, i32 16, i32 20, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 0], align 16
@base_dist = internal unnamed_addr constant [30 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @_tr_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2904
  store ptr %2, ptr %3, align 8, !tbaa !8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 2920
  store ptr @static_l_desc, ptr %4, align 8, !tbaa !20
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  store ptr %5, ptr %6, align 8, !tbaa !21
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  store ptr @static_d_desc, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  store ptr %8, ptr %9, align 8, !tbaa !23
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  store ptr @static_bl_desc, ptr %10, align 8, !tbaa !24
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %11, align 8, !tbaa !25
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  store i32 0, ptr %12, align 4, !tbaa !26
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 0, ptr %13, align 8, !tbaa !27
  br label %14

14:                                               ; preds = %25, %1
  %15 = phi i64 [ 0, %1 ], [ %29, %25 ]
  %16 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  store i16 0, ptr %16, align 4, !tbaa !28
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i16 0, ptr %17, align 4, !tbaa !28
  %18 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i16 0, ptr %19, align 4, !tbaa !28
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i16 0, ptr %20, align 4, !tbaa !28
  %21 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i16 0, ptr %22, align 4, !tbaa !28
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i16 0, ptr %23, align 4, !tbaa !28
  %24 = icmp eq i64 %15, 280
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i16 0, ptr %27, align 4, !tbaa !28
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 28
  store i16 0, ptr %28, align 4, !tbaa !28
  %29 = add nuw nsw i64 %15, 8
  br label %14

30:                                               ; preds = %14
  store i16 0, ptr %5, align 4, !tbaa !28
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %31, align 4, !tbaa !28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %32, align 4, !tbaa !28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %33, align 4, !tbaa !28
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %34, align 4, !tbaa !28
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %35, align 4, !tbaa !28
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %36, align 4, !tbaa !28
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %37, align 4, !tbaa !28
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %38, align 4, !tbaa !28
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %39, align 4, !tbaa !28
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %40, align 4, !tbaa !28
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %41, align 4, !tbaa !28
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %42, align 4, !tbaa !28
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %43, align 4, !tbaa !28
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %44, align 4, !tbaa !28
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %45, align 4, !tbaa !28
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %46, align 4, !tbaa !28
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %47, align 4, !tbaa !28
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %48, align 4, !tbaa !28
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %49, align 4, !tbaa !28
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %50, align 4, !tbaa !28
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %51, align 4, !tbaa !28
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %52, align 4, !tbaa !28
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %53, align 4, !tbaa !28
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %54, align 4, !tbaa !28
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %55, align 4, !tbaa !28
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %56, align 4, !tbaa !28
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %57, align 4, !tbaa !28
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %58, align 4, !tbaa !28
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %59, align 4, !tbaa !28
  store i16 0, ptr %8, align 4, !tbaa !28
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %60, align 4, !tbaa !28
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %61, align 4, !tbaa !28
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %62, align 4, !tbaa !28
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %63, align 4, !tbaa !28
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %64, align 4, !tbaa !28
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %65, align 4, !tbaa !28
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %66, align 4, !tbaa !28
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %67, align 4, !tbaa !28
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %68, align 4, !tbaa !28
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %69, align 4, !tbaa !28
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %70, align 4, !tbaa !28
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %71, align 4, !tbaa !28
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %72, align 4, !tbaa !28
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %73, align 4, !tbaa !28
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %74, align 4, !tbaa !28
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %75, align 4, !tbaa !28
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %76, align 4, !tbaa !28
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %77, align 4, !tbaa !28
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %78, align 4, !tbaa !28
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %80, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %79, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @_tr_stored_block(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %6 = load i32, ptr %5, align 4, !tbaa !26
  %7 = icmp sgt i32 %6, 13
  br i1 %7, label %8, label %42

8:                                                ; preds = %4
  %9 = and i32 %3, 65535
  %10 = shl i32 %3, %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %12 = load i16, ptr %11, align 8, !tbaa !25
  %13 = trunc i32 %10 to i16
  %14 = or i16 %12, %13
  store i16 %14, ptr %11, align 8, !tbaa !25
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = load i64, ptr %15, align 8, !tbaa !30
  %17 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %16, i64 1), !nosanitize !31
  %18 = extractvalue { i64, i1 } %17, 1, !nosanitize !31
  br i1 %18, label %19, label %20, !prof !32, !nosanitize !31

19:                                               ; preds = %8
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

20:                                               ; preds = %8
  %21 = extractvalue { i64, i1 } %17, 0, !nosanitize !31
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = load ptr, ptr %22, align 8, !tbaa !33
  %24 = trunc i16 %14 to i8
  store i64 %21, ptr %15, align 8, !tbaa !30
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %16
  store i8 %24, ptr %25, align 1, !tbaa !28
  %26 = load i64, ptr %15, align 8, !tbaa !30
  %27 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %26, i64 1), !nosanitize !31
  %28 = extractvalue { i64, i1 } %27, 1, !nosanitize !31
  br i1 %28, label %29, label %30, !prof !32, !nosanitize !31

29:                                               ; preds = %20
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

30:                                               ; preds = %20
  %31 = extractvalue { i64, i1 } %27, 0, !nosanitize !31
  %32 = load ptr, ptr %22, align 8, !tbaa !33
  %33 = load i16, ptr %11, align 8, !tbaa !25
  %34 = lshr i16 %33, 8
  %35 = trunc nuw i16 %34 to i8
  store i64 %31, ptr %15, align 8, !tbaa !30
  %36 = getelementptr inbounds nuw i8, ptr %32, i64 %26
  store i8 %35, ptr %36, align 1, !tbaa !28
  %37 = load i32, ptr %5, align 4, !tbaa !26
  %38 = sub nsw i32 16, %37
  %39 = lshr i32 %9, %38
  %40 = trunc nuw i32 %39 to i16
  store i16 %40, ptr %11, align 8, !tbaa !25
  %41 = add nsw i32 %37, -13
  br label %49

42:                                               ; preds = %4
  %43 = shl i32 %3, %6
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %45 = load i16, ptr %44, align 8, !tbaa !25
  %46 = trunc i32 %43 to i16
  %47 = or i16 %45, %46
  store i16 %47, ptr %44, align 8, !tbaa !25
  %48 = add nsw i32 %6, 3
  br label %49

49:                                               ; preds = %42, %30
  %50 = phi i16 [ %47, %42 ], [ %40, %30 ]
  %51 = phi i32 [ %48, %42 ], [ %41, %30 ]
  store i32 %51, ptr %5, align 4, !tbaa !26
  %52 = icmp sgt i32 %51, 8
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %55 = load i64, ptr %54, align 8, !tbaa !30
  %56 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %55, i64 1), !nosanitize !31
  %57 = extractvalue { i64, i1 } %56, 1, !nosanitize !31
  br i1 %57, label %58, label %59, !prof !32, !nosanitize !31

58:                                               ; preds = %53
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

59:                                               ; preds = %53
  %60 = extractvalue { i64, i1 } %56, 0, !nosanitize !31
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %62 = load ptr, ptr %61, align 8, !tbaa !33
  %63 = trunc i16 %50 to i8
  store i64 %60, ptr %54, align 8, !tbaa !30
  %64 = getelementptr inbounds nuw i8, ptr %62, i64 %55
  store i8 %63, ptr %64, align 1, !tbaa !28
  %65 = load i64, ptr %54, align 8, !tbaa !30
  %66 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 1), !nosanitize !31
  %67 = extractvalue { i64, i1 } %66, 1, !nosanitize !31
  br i1 %67, label %68, label %69, !prof !32, !nosanitize !31

68:                                               ; preds = %59
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

69:                                               ; preds = %59
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %71 = extractvalue { i64, i1 } %66, 0, !nosanitize !31
  %72 = load ptr, ptr %61, align 8, !tbaa !33
  %73 = load i16, ptr %70, align 8, !tbaa !25
  %74 = lshr i16 %73, 8
  %75 = trunc nuw i16 %74 to i8
  store i64 %71, ptr %54, align 8, !tbaa !30
  %76 = getelementptr inbounds nuw i8, ptr %72, i64 %65
  store i8 %75, ptr %76, align 1, !tbaa !28
  br label %91

77:                                               ; preds = %49
  %78 = icmp sgt i32 %51, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %77
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %81 = load i64, ptr %80, align 8, !tbaa !30
  %82 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %81, i64 1), !nosanitize !31
  %83 = extractvalue { i64, i1 } %82, 1, !nosanitize !31
  br i1 %83, label %84, label %85, !prof !32, !nosanitize !31

84:                                               ; preds = %79
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

85:                                               ; preds = %79
  %86 = extractvalue { i64, i1 } %82, 0, !nosanitize !31
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %88 = load ptr, ptr %87, align 8, !tbaa !33
  %89 = trunc i16 %50 to i8
  store i64 %86, ptr %80, align 8, !tbaa !30
  %90 = getelementptr inbounds nuw i8, ptr %88, i64 %81
  store i8 %89, ptr %90, align 1, !tbaa !28
  br label %91

91:                                               ; preds = %85, %77, %69
  %92 = load i32, ptr %5, align 4, !tbaa !26
  %93 = add i32 %92, 7
  %94 = and i32 %93, 7
  %95 = add nuw nsw i32 %94, 1
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %95, ptr %96, align 8, !tbaa !27
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %97, align 8, !tbaa !25
  store i32 0, ptr %5, align 4, !tbaa !26
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %100 = load i64, ptr %99, align 8, !tbaa !30
  %101 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %100, i64 1), !nosanitize !31
  %102 = extractvalue { i64, i1 } %101, 1, !nosanitize !31
  br i1 %102, label %103, label %104, !prof !32, !nosanitize !31

103:                                              ; preds = %91
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

104:                                              ; preds = %91
  %105 = extractvalue { i64, i1 } %101, 0, !nosanitize !31
  %106 = load ptr, ptr %98, align 8, !tbaa !33
  %107 = trunc i64 %2 to i8
  store i64 %105, ptr %99, align 8, !tbaa !30
  %108 = getelementptr inbounds nuw i8, ptr %106, i64 %100
  store i8 %107, ptr %108, align 1, !tbaa !28
  %109 = load i64, ptr %99, align 8, !tbaa !30
  %110 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 1), !nosanitize !31
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !31
  br i1 %111, label %112, label %113, !prof !32, !nosanitize !31

112:                                              ; preds = %104
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

113:                                              ; preds = %104
  %114 = extractvalue { i64, i1 } %110, 0, !nosanitize !31
  %115 = load ptr, ptr %98, align 8, !tbaa !33
  %116 = lshr i64 %2, 8
  %117 = trunc i64 %116 to i8
  store i64 %114, ptr %99, align 8, !tbaa !30
  %118 = getelementptr inbounds nuw i8, ptr %115, i64 %109
  store i8 %117, ptr %118, align 1, !tbaa !28
  %119 = load i64, ptr %99, align 8, !tbaa !30
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %119, i64 1), !nosanitize !31
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !31
  br i1 %121, label %122, label %123, !prof !32, !nosanitize !31

122:                                              ; preds = %113
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

123:                                              ; preds = %113
  %124 = extractvalue { i64, i1 } %120, 0, !nosanitize !31
  %125 = load ptr, ptr %98, align 8, !tbaa !33
  %126 = trunc i64 %2 to i32
  %127 = xor i32 %126, 65535
  %128 = trunc i32 %127 to i8
  store i64 %124, ptr %99, align 8, !tbaa !30
  %129 = getelementptr inbounds nuw i8, ptr %125, i64 %119
  store i8 %128, ptr %129, align 1, !tbaa !28
  %130 = load i64, ptr %99, align 8, !tbaa !30
  %131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 1), !nosanitize !31
  %132 = extractvalue { i64, i1 } %131, 1, !nosanitize !31
  br i1 %132, label %133, label %134, !prof !32, !nosanitize !31

133:                                              ; preds = %123
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

134:                                              ; preds = %123
  %135 = extractvalue { i64, i1 } %131, 0, !nosanitize !31
  %136 = load ptr, ptr %98, align 8, !tbaa !33
  %137 = lshr i32 %127, 8
  %138 = trunc i32 %137 to i8
  store i64 %135, ptr %99, align 8, !tbaa !30
  %139 = getelementptr inbounds nuw i8, ptr %136, i64 %130
  store i8 %138, ptr %139, align 1, !tbaa !28
  %140 = icmp eq i64 %2, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %134
  %142 = load ptr, ptr %98, align 8, !tbaa !33
  %143 = load i64, ptr %99, align 8, !tbaa !30
  %144 = getelementptr inbounds nuw i8, ptr %142, i64 %143
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %144, ptr align 1 %1, i64 %2, i1 false)
  br label %145

145:                                              ; preds = %141, %134
  %146 = load i64, ptr %99, align 8, !tbaa !30
  %147 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %146, i64 %2), !nosanitize !31
  %148 = extractvalue { i64, i1 } %147, 1, !nosanitize !31
  br i1 %148, label %149, label %150, !prof !32, !nosanitize !31

149:                                              ; preds = %145
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

150:                                              ; preds = %145
  %151 = extractvalue { i64, i1 } %147, 0, !nosanitize !31
  store i64 %151, ptr %99, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local void @_tr_flush_bits(ptr noundef captures(none) %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !30
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 1), !nosanitize !31
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !31
  br i1 %10, label %11, label %12, !prof !32, !nosanitize !31

11:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

12:                                               ; preds = %5
  %13 = extractvalue { i64, i1 } %9, 0, !nosanitize !31
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = load i16, ptr %6, align 8, !tbaa !25
  %17 = trunc i16 %16 to i8
  store i64 %13, ptr %7, align 8, !tbaa !30
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 %8
  store i8 %17, ptr %18, align 1, !tbaa !28
  %19 = load i64, ptr %7, align 8, !tbaa !30
  %20 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 1), !nosanitize !31
  %21 = extractvalue { i64, i1 } %20, 1, !nosanitize !31
  br i1 %21, label %22, label %23, !prof !32, !nosanitize !31

22:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

23:                                               ; preds = %12
  %24 = extractvalue { i64, i1 } %20, 0, !nosanitize !31
  %25 = load ptr, ptr %14, align 8, !tbaa !33
  %26 = load i16, ptr %6, align 8, !tbaa !25
  %27 = lshr i16 %26, 8
  %28 = trunc nuw i16 %27 to i8
  store i64 %24, ptr %7, align 8, !tbaa !30
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 %19
  store i8 %28, ptr %29, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %50

30:                                               ; preds = %1
  %31 = icmp sgt i32 %3, 7
  br i1 %31, label %32, label %52

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %34 = load i64, ptr %33, align 8, !tbaa !30
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %34, i64 1), !nosanitize !31
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !31
  br i1 %36, label %37, label %38, !prof !32, !nosanitize !31

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !31
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %41 = load ptr, ptr %40, align 8, !tbaa !33
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %43 = load i16, ptr %42, align 8, !tbaa !25
  %44 = trunc i16 %43 to i8
  store i64 %39, ptr %33, align 8, !tbaa !30
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 %34
  store i8 %44, ptr %45, align 1, !tbaa !28
  %46 = load i16, ptr %42, align 8, !tbaa !25
  %47 = lshr i16 %46, 8
  store i16 %47, ptr %42, align 8, !tbaa !25
  %48 = load i32, ptr %2, align 4, !tbaa !26
  %49 = add nsw i32 %48, -8
  br label %50

50:                                               ; preds = %38, %23
  %51 = phi i32 [ %49, %38 ], [ 0, %23 ]
  store i32 %51, ptr %2, align 4, !tbaa !26
  br label %52

52:                                               ; preds = %50, %30
  ret void
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local void @_tr_align(ptr noundef captures(none) %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = icmp sgt i32 %3, 13
  %5 = shl i32 2, %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %7 = load i16, ptr %6, align 8, !tbaa !25
  %8 = trunc i32 %5 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %6, align 8, !tbaa !25
  br i1 %4, label %10, label %38

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %12 = load i64, ptr %11, align 8, !tbaa !30
  %13 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %12, i64 1), !nosanitize !31
  %14 = extractvalue { i64, i1 } %13, 1, !nosanitize !31
  br i1 %14, label %15, label %16, !prof !32, !nosanitize !31

15:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

16:                                               ; preds = %10
  %17 = extractvalue { i64, i1 } %13, 0, !nosanitize !31
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  %20 = trunc i16 %9 to i8
  store i64 %17, ptr %11, align 8, !tbaa !30
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 %12
  store i8 %20, ptr %21, align 1, !tbaa !28
  %22 = load i64, ptr %11, align 8, !tbaa !30
  %23 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 1), !nosanitize !31
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !31
  br i1 %24, label %25, label %26, !prof !32, !nosanitize !31

25:                                               ; preds = %16
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

26:                                               ; preds = %16
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !31
  %28 = load ptr, ptr %18, align 8, !tbaa !33
  %29 = load i16, ptr %6, align 8, !tbaa !25
  %30 = lshr i16 %29, 8
  %31 = trunc nuw i16 %30 to i8
  store i64 %27, ptr %11, align 8, !tbaa !30
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 %22
  store i8 %31, ptr %32, align 1, !tbaa !28
  %33 = load i32, ptr %2, align 4, !tbaa !26
  %34 = sub nsw i32 16, %33
  %35 = lshr i32 2, %34
  %36 = trunc nuw nsw i32 %35 to i16
  store i16 %36, ptr %6, align 8, !tbaa !25
  %37 = add nsw i32 %33, -13
  br label %40

38:                                               ; preds = %1
  %39 = add nsw i32 %3, 3
  br label %40

40:                                               ; preds = %38, %26
  %41 = phi i16 [ %9, %38 ], [ %36, %26 ]
  %42 = phi i32 [ %39, %38 ], [ %37, %26 ]
  store i32 %42, ptr %2, align 4, !tbaa !26
  %43 = icmp sgt i32 %42, 9
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %46 = load i64, ptr %45, align 8, !tbaa !30
  %47 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %46, i64 1), !nosanitize !31
  %48 = extractvalue { i64, i1 } %47, 1, !nosanitize !31
  br i1 %48, label %49, label %50, !prof !32, !nosanitize !31

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

50:                                               ; preds = %44
  %51 = extractvalue { i64, i1 } %47, 0, !nosanitize !31
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = load ptr, ptr %52, align 8, !tbaa !33
  %54 = trunc i16 %41 to i8
  store i64 %51, ptr %45, align 8, !tbaa !30
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 %46
  store i8 %54, ptr %55, align 1, !tbaa !28
  %56 = load i64, ptr %45, align 8, !tbaa !30
  %57 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %56, i64 1), !nosanitize !31
  %58 = extractvalue { i64, i1 } %57, 1, !nosanitize !31
  br i1 %58, label %59, label %60, !prof !32, !nosanitize !31

59:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

60:                                               ; preds = %50
  %61 = extractvalue { i64, i1 } %57, 0, !nosanitize !31
  %62 = load ptr, ptr %52, align 8, !tbaa !33
  %63 = load i16, ptr %6, align 8, !tbaa !25
  %64 = lshr i16 %63, 8
  %65 = trunc nuw i16 %64 to i8
  store i64 %61, ptr %45, align 8, !tbaa !30
  %66 = getelementptr inbounds nuw i8, ptr %62, i64 %56
  store i8 %65, ptr %66, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  %67 = load i32, ptr %2, align 4, !tbaa !26
  %68 = add nsw i32 %67, -9
  br label %72

69:                                               ; preds = %40
  %70 = add nsw i32 %42, 7
  %71 = trunc i16 %41 to i8
  br label %72

72:                                               ; preds = %69, %60
  %73 = phi i8 [ %71, %69 ], [ 0, %60 ]
  %74 = phi i32 [ %70, %69 ], [ %68, %60 ]
  store i32 %74, ptr %2, align 4, !tbaa !26
  %75 = icmp eq i32 %74, 16
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %78 = load i64, ptr %77, align 8, !tbaa !30
  %79 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %78, i64 1), !nosanitize !31
  %80 = extractvalue { i64, i1 } %79, 1, !nosanitize !31
  br i1 %80, label %81, label %82, !prof !32, !nosanitize !31

81:                                               ; preds = %76
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

82:                                               ; preds = %76
  %83 = extractvalue { i64, i1 } %79, 0, !nosanitize !31
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %85 = load ptr, ptr %84, align 8, !tbaa !33
  store i64 %83, ptr %77, align 8, !tbaa !30
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 %78
  store i8 %73, ptr %86, align 1, !tbaa !28
  %87 = load i64, ptr %77, align 8, !tbaa !30
  %88 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %87, i64 1), !nosanitize !31
  %89 = extractvalue { i64, i1 } %88, 1, !nosanitize !31
  br i1 %89, label %90, label %91, !prof !32, !nosanitize !31

90:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

91:                                               ; preds = %82
  %92 = extractvalue { i64, i1 } %88, 0, !nosanitize !31
  %93 = load ptr, ptr %84, align 8, !tbaa !33
  %94 = load i16, ptr %6, align 8, !tbaa !25
  %95 = lshr i16 %94, 8
  %96 = trunc nuw i16 %95 to i8
  store i64 %92, ptr %77, align 8, !tbaa !30
  %97 = getelementptr inbounds nuw i8, ptr %93, i64 %87
  store i8 %96, ptr %97, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %115

98:                                               ; preds = %72
  %99 = icmp sgt i32 %74, 7
  br i1 %99, label %100, label %117

100:                                              ; preds = %98
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %102 = load i64, ptr %101, align 8, !tbaa !30
  %103 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %102, i64 1), !nosanitize !31
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !31
  br i1 %104, label %105, label %106, !prof !32, !nosanitize !31

105:                                              ; preds = %100
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

106:                                              ; preds = %100
  %107 = extractvalue { i64, i1 } %103, 0, !nosanitize !31
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %109 = load ptr, ptr %108, align 8, !tbaa !33
  store i64 %107, ptr %101, align 8, !tbaa !30
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 %102
  store i8 %73, ptr %110, align 1, !tbaa !28
  %111 = load i16, ptr %6, align 8, !tbaa !25
  %112 = lshr i16 %111, 8
  store i16 %112, ptr %6, align 8, !tbaa !25
  %113 = load i32, ptr %2, align 4, !tbaa !26
  %114 = add nsw i32 %113, -8
  br label %115

115:                                              ; preds = %106, %91
  %116 = phi i32 [ %114, %106 ], [ 0, %91 ]
  store i32 %116, ptr %2, align 4, !tbaa !26
  br label %117

117:                                              ; preds = %115, %98
  ret void
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @_tr_flush_block(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [16 x i16], align 16
  %6 = alloca [16 x i16], align 16
  %7 = alloca [16 x i16], align 16
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %2285

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %14 = load i32, ptr %13, align 8, !tbaa !36
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %156

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %18 = load i16, ptr %17, align 4, !tbaa !28
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %.loopexit275

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %22 = load i16, ptr %21, align 4, !tbaa !28
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %.loopexit275

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %26 = load i16, ptr %25, align 4, !tbaa !28
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %.loopexit275

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %30 = load i16, ptr %29, align 4, !tbaa !28
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %.loopexit275

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 228
  %34 = load i16, ptr %33, align 4, !tbaa !28
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %.loopexit275

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %38 = load i16, ptr %37, align 4, !tbaa !28
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %.loopexit275

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %.loopexit275

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %46 = load i16, ptr %45, align 4, !tbaa !28
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %.loopexit275

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %50 = load i16, ptr %49, align 4, !tbaa !28
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %.loopexit275

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %54 = load i16, ptr %53, align 4, !tbaa !28
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %.loopexit275

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %58 = load i16, ptr %57, align 4, !tbaa !28
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %.loopexit275

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %62 = load i16, ptr %61, align 4, !tbaa !28
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %.loopexit275

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %66 = load i16, ptr %65, align 4, !tbaa !28
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %.loopexit275

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 292
  %70 = load i16, ptr %69, align 4, !tbaa !28
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %.loopexit275

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %74 = load i16, ptr %73, align 4, !tbaa !28
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %.loopexit275

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %78 = load i16, ptr %77, align 4, !tbaa !28
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %.loopexit275

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %82 = load i16, ptr %81, align 4, !tbaa !28
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %.loopexit275

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 308
  %86 = load i16, ptr %85, align 4, !tbaa !28
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %.loopexit275

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %90 = load i16, ptr %89, align 4, !tbaa !28
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %.loopexit275

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 324
  %94 = load i16, ptr %93, align 4, !tbaa !28
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %.loopexit275

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %98 = load i16, ptr %97, align 4, !tbaa !28
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %.loopexit275

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 332
  %102 = load i16, ptr %101, align 4, !tbaa !28
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %.loopexit275

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %106 = load i16, ptr %105, align 4, !tbaa !28
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %.loopexit275

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %110 = load i16, ptr %109, align 4, !tbaa !28
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %.loopexit275

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 252
  %114 = load i16, ptr %113, align 4, !tbaa !28
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %.loopexit275

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %118 = load i16, ptr %117, align 4, !tbaa !28
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %.preheader274, label %.loopexit275

120:                                              ; preds = %.preheader274
  %121 = getelementptr inbounds nuw i8, ptr %152, i64 4
  %122 = load i16, ptr %121, align 4, !tbaa !28
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %.loopexit275

124:                                              ; preds = %120
  %125 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %126 = load i16, ptr %125, align 4, !tbaa !28
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %.loopexit275

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %152, i64 12
  %130 = load i16, ptr %129, align 4, !tbaa !28
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %.preheader274.1, label %.loopexit275

.preheader274.1:                                  ; preds = %128
  %132 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %134 = load i16, ptr %133, align 4, !tbaa !28
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %.loopexit275

136:                                              ; preds = %.preheader274.1
  %137 = getelementptr inbounds nuw i8, ptr %132, i64 20
  %138 = load i16, ptr %137, align 4, !tbaa !28
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %.loopexit275

140:                                              ; preds = %136
  %141 = getelementptr inbounds nuw i8, ptr %132, i64 24
  %142 = load i16, ptr %141, align 4, !tbaa !28
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %.loopexit275

144:                                              ; preds = %140
  %145 = getelementptr inbounds nuw i8, ptr %132, i64 28
  %146 = load i16, ptr %145, align 4, !tbaa !28
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %.loopexit275

148:                                              ; preds = %144
  %149 = add nuw nsw i64 %151, 8
  %150 = icmp eq i64 %149, 256
  br i1 %150, label %.loopexit275, label %.preheader274, !llvm.loop !39

.preheader274:                                    ; preds = %116, %148
  %151 = phi i64 [ %149, %148 ], [ 32, %116 ]
  %152 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %153 = load i16, ptr %152, align 4, !tbaa !28
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %120, label %.loopexit275

.loopexit275:                                     ; preds = %.preheader274, %128, %124, %120, %.preheader274.1, %136, %140, %144, %148, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  %155 = phi i32 [ 1, %112 ], [ 0, %20 ], [ 1, %108 ], [ 1, %116 ], [ 0, %16 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 1, %124 ], [ 1, %128 ], [ 1, %120 ], [ 0, %148 ], [ 1, %.preheader274 ], [ 1, %.preheader274.1 ], [ 1, %136 ], [ 1, %140 ], [ 1, %144 ]
  store i32 %155, ptr %13, align 8, !tbaa !36
  br label %156

156:                                              ; preds = %.loopexit275, %11
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %158 = load ptr, ptr %157, align 8, !tbaa !41
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 2920
  %160 = load ptr, ptr %159, align 8, !tbaa !42
  %161 = load ptr, ptr %160, align 8, !tbaa !43
  %162 = getelementptr inbounds nuw i8, ptr %160, i64 20
  %163 = load i32, ptr %162, align 4, !tbaa !46
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 5300
  store i32 0, ptr %164, align 4, !tbaa !47
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 5304
  store i32 573, ptr %165, align 8, !tbaa !48
  %166 = icmp sgt i32 %163, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %156
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %170 = zext nneg i32 %163 to i64
  br label %182

171:                                              ; preds = %197
  %172 = load i32, ptr %164, align 4, !tbaa !47
  %173 = icmp slt i32 %172, 2
  br i1 %173, label %174, label %.loopexit273

174:                                              ; preds = %171, %156
  %175 = phi i32 [ %198, %171 ], [ -1, %156 ]
  %176 = phi i32 [ %172, %171 ], [ 0, %156 ]
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %180 = icmp eq ptr %161, null
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %201

182:                                              ; preds = %197, %167
  %183 = phi i64 [ 0, %167 ], [ %199, %197 ]
  %184 = phi i32 [ -1, %167 ], [ %198, %197 ]
  %185 = getelementptr inbounds nuw [4 x i8], ptr %158, i64 %183
  %186 = load i16, ptr %185, align 2, !tbaa !28
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %182
  %189 = load i32, ptr %164, align 4, !tbaa !47
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %164, align 4, !tbaa !47
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [4 x i8], ptr %168, i64 %191
  %193 = trunc nuw nsw i64 %183 to i32
  store i32 %193, ptr %192, align 4, !tbaa !4
  %194 = getelementptr inbounds nuw i8, ptr %169, i64 %183
  store i8 0, ptr %194, align 1, !tbaa !28
  br label %197

195:                                              ; preds = %182
  %196 = getelementptr inbounds nuw i8, ptr %185, i64 2
  store i16 0, ptr %196, align 2, !tbaa !28
  br label %197

197:                                              ; preds = %195, %188
  %198 = phi i32 [ %193, %188 ], [ %184, %195 ]
  %199 = add nuw nsw i64 %183, 1
  %200 = icmp eq i64 %199, %170
  br i1 %200, label %171, label %182, !llvm.loop !49

201:                                              ; preds = %231, %174
  %202 = phi i32 [ %176, %174 ], [ %232, %231 ]
  %203 = phi i32 [ %175, %174 ], [ %206, %231 ]
  %204 = icmp slt i32 %203, 2
  %205 = add nsw i32 %203, 1
  %206 = select i1 %204, i32 %205, i32 %203
  %207 = select i1 %204, i32 %205, i32 0
  %208 = add nsw i32 %202, 1
  store i32 %208, ptr %164, align 4, !tbaa !47
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x i8], ptr %177, i64 %209
  store i32 %207, ptr %210, align 4, !tbaa !4
  %211 = sext i32 %207 to i64
  %212 = getelementptr inbounds [4 x i8], ptr %158, i64 %211
  store i16 1, ptr %212, align 2, !tbaa !28
  %213 = getelementptr inbounds i8, ptr %178, i64 %211
  store i8 0, ptr %213, align 1, !tbaa !28
  %214 = load i64, ptr %179, align 8, !tbaa !50
  %215 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %214, i64 1), !nosanitize !31
  %216 = extractvalue { i64, i1 } %215, 1, !nosanitize !31
  br i1 %216, label %217, label %218, !prof !32, !nosanitize !31

217:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !31
  unreachable, !nosanitize !31

218:                                              ; preds = %201
  %219 = extractvalue { i64, i1 } %215, 0, !nosanitize !31
  store i64 %219, ptr %179, align 8, !tbaa !50
  br i1 %180, label %231, label %220

220:                                              ; preds = %218
  %221 = getelementptr inbounds [4 x i8], ptr %161, i64 %211
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 2
  %223 = load i16, ptr %222, align 2, !tbaa !28
  %224 = zext i16 %223 to i64
  %225 = load i64, ptr %181, align 8, !tbaa !51
  %226 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %225, i64 %224), !nosanitize !31
  %227 = extractvalue { i64, i1 } %226, 1, !nosanitize !31
  br i1 %227, label %228, label %229, !prof !32, !nosanitize !31

228:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !31
  unreachable, !nosanitize !31

229:                                              ; preds = %220
  %230 = extractvalue { i64, i1 } %226, 0, !nosanitize !31
  store i64 %230, ptr %181, align 8, !tbaa !51
  br label %231

231:                                              ; preds = %229, %218
  %232 = load i32, ptr %164, align 4, !tbaa !47
  %233 = icmp slt i32 %232, 2
  br i1 %233, label %201, label %.loopexit273, !llvm.loop !52

.loopexit273:                                     ; preds = %231, %171
  %234 = phi i32 [ %198, %171 ], [ %206, %231 ]
  %235 = phi i32 [ %172, %171 ], [ %232, %231 ]
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %234, ptr %236, align 8, !tbaa !53
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %239 = lshr i32 %235, 1
  %240 = zext nneg i32 %239 to i64
  br label %245

241:                                              ; preds = %.loopexit271
  %242 = load i32, ptr %164, align 4, !tbaa !47
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %244 = sext i32 %163 to i64
  br label %316

245:                                              ; preds = %.loopexit271, %.loopexit273
  %246 = phi i64 [ %240, %.loopexit273 ], [ %314, %.loopexit271 ]
  %247 = getelementptr inbounds nuw [4 x i8], ptr %237, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, ptr %238, i64 %249
  %251 = load i32, ptr %164, align 4, !tbaa !47
  %252 = trunc i64 %246 to i32
  %253 = shl i32 %252, 1
  %254 = icmp sgt i32 %253, %251
  br i1 %254, label %.loopexit271, label %255

255:                                              ; preds = %245
  %256 = getelementptr inbounds [4 x i8], ptr %158, i64 %249
  br label %257

257:                                              ; preds = %305, %255
  %258 = phi i32 [ %251, %255 ], [ %309, %305 ]
  %259 = phi i32 [ %253, %255 ], [ %308, %305 ]
  %260 = phi i32 [ %252, %255 ], [ %290, %305 ]
  %261 = icmp slt i32 %259, %258
  br i1 %261, label %264, label %262

262:                                              ; preds = %257
  %263 = sext i32 %259 to i64
  br label %288

264:                                              ; preds = %257
  %265 = or disjoint i32 %259, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [4 x i8], ptr %237, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [4 x i8], ptr %158, i64 %269
  %271 = load i16, ptr %270, align 2, !tbaa !28
  %272 = sext i32 %259 to i64
  %273 = getelementptr inbounds [4 x i8], ptr %237, i64 %272
  %274 = load i32, ptr %273, align 4, !tbaa !4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [4 x i8], ptr %158, i64 %275
  %277 = load i16, ptr %276, align 2, !tbaa !28
  %278 = icmp ult i16 %271, %277
  br i1 %278, label %287, label %279

279:                                              ; preds = %264
  %280 = icmp eq i16 %271, %277
  br i1 %280, label %281, label %288

281:                                              ; preds = %279
  %282 = getelementptr inbounds i8, ptr %238, i64 %269
  %283 = load i8, ptr %282, align 1, !tbaa !28
  %284 = getelementptr inbounds i8, ptr %238, i64 %275
  %285 = load i8, ptr %284, align 1, !tbaa !28
  %286 = icmp ugt i8 %283, %285
  br i1 %286, label %288, label %287

287:                                              ; preds = %281, %264
  br label %288

288:                                              ; preds = %287, %281, %279, %262
  %289 = phi i64 [ %263, %262 ], [ %266, %287 ], [ %272, %281 ], [ %272, %279 ]
  %290 = phi i32 [ %259, %262 ], [ %265, %287 ], [ %259, %281 ], [ %259, %279 ]
  %291 = load i16, ptr %256, align 2, !tbaa !28
  %292 = getelementptr inbounds [4 x i8], ptr %237, i64 %289
  %293 = load i32, ptr %292, align 4, !tbaa !4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [4 x i8], ptr %158, i64 %294
  %296 = load i16, ptr %295, align 2, !tbaa !28
  %297 = icmp ult i16 %291, %296
  br i1 %297, label %.loopexit271, label %298

298:                                              ; preds = %288
  %299 = icmp eq i16 %291, %296
  br i1 %299, label %300, label %305

300:                                              ; preds = %298
  %301 = load i8, ptr %250, align 1, !tbaa !28
  %302 = getelementptr inbounds i8, ptr %238, i64 %294
  %303 = load i8, ptr %302, align 1, !tbaa !28
  %304 = icmp ugt i8 %301, %303
  br i1 %304, label %305, label %.loopexit271

305:                                              ; preds = %300, %298
  %306 = sext i32 %260 to i64
  %307 = getelementptr inbounds [4 x i8], ptr %237, i64 %306
  store i32 %293, ptr %307, align 4, !tbaa !4
  %308 = shl i32 %290, 1
  %309 = load i32, ptr %164, align 4, !tbaa !47
  %310 = icmp sgt i32 %308, %309
  br i1 %310, label %.loopexit271, label %257, !llvm.loop !54

.loopexit271:                                     ; preds = %305, %300, %288, %245
  %311 = phi i32 [ %252, %245 ], [ %290, %305 ], [ %260, %300 ], [ %260, %288 ]
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [4 x i8], ptr %237, i64 %312
  store i32 %248, ptr %313, align 4, !tbaa !4
  %314 = add nsw i64 %246, -1
  %315 = icmp sgt i64 %246, 1
  br i1 %315, label %245, label %241, !llvm.loop !55

316:                                              ; preds = %476, %241
  %317 = phi i32 [ %242, %241 ], [ %479, %476 ]
  %318 = phi i64 [ %244, %241 ], [ %417, %476 ]
  %319 = load i32, ptr %243, align 4, !tbaa !4
  %320 = add nsw i32 %317, -1
  store i32 %320, ptr %164, align 4, !tbaa !47
  %321 = sext i32 %317 to i64
  %322 = getelementptr inbounds [4 x i8], ptr %237, i64 %321
  %323 = load i32, ptr %322, align 4, !tbaa !4
  store i32 %323, ptr %243, align 4, !tbaa !4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, ptr %238, i64 %324
  %326 = icmp slt i32 %317, 3
  br i1 %326, label %386, label %327

327:                                              ; preds = %316
  %328 = getelementptr inbounds [4 x i8], ptr %158, i64 %324
  br label %329

329:                                              ; preds = %377, %327
  %330 = phi i32 [ %320, %327 ], [ %381, %377 ]
  %331 = phi i32 [ 2, %327 ], [ %380, %377 ]
  %332 = phi i32 [ 1, %327 ], [ %362, %377 ]
  %333 = icmp slt i32 %331, %330
  br i1 %333, label %336, label %334

334:                                              ; preds = %329
  %335 = sext i32 %331 to i64
  br label %360

336:                                              ; preds = %329
  %337 = or disjoint i32 %331, 1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [4 x i8], ptr %237, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [4 x i8], ptr %158, i64 %341
  %343 = load i16, ptr %342, align 2, !tbaa !28
  %344 = sext i32 %331 to i64
  %345 = getelementptr inbounds [4 x i8], ptr %237, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [4 x i8], ptr %158, i64 %347
  %349 = load i16, ptr %348, align 2, !tbaa !28
  %350 = icmp ult i16 %343, %349
  br i1 %350, label %359, label %351

351:                                              ; preds = %336
  %352 = icmp eq i16 %343, %349
  br i1 %352, label %353, label %360

353:                                              ; preds = %351
  %354 = getelementptr inbounds i8, ptr %238, i64 %341
  %355 = load i8, ptr %354, align 1, !tbaa !28
  %356 = getelementptr inbounds i8, ptr %238, i64 %347
  %357 = load i8, ptr %356, align 1, !tbaa !28
  %358 = icmp ugt i8 %355, %357
  br i1 %358, label %360, label %359

359:                                              ; preds = %353, %336
  br label %360

360:                                              ; preds = %359, %353, %351, %334
  %361 = phi i64 [ %335, %334 ], [ %338, %359 ], [ %344, %353 ], [ %344, %351 ]
  %362 = phi i32 [ %331, %334 ], [ %337, %359 ], [ %331, %353 ], [ %331, %351 ]
  %363 = load i16, ptr %328, align 2, !tbaa !28
  %364 = getelementptr inbounds [4 x i8], ptr %237, i64 %361
  %365 = load i32, ptr %364, align 4, !tbaa !4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [4 x i8], ptr %158, i64 %366
  %368 = load i16, ptr %367, align 2, !tbaa !28
  %369 = icmp ult i16 %363, %368
  br i1 %369, label %383, label %370

370:                                              ; preds = %360
  %371 = icmp eq i16 %363, %368
  br i1 %371, label %372, label %377

372:                                              ; preds = %370
  %373 = load i8, ptr %325, align 1, !tbaa !28
  %374 = getelementptr inbounds i8, ptr %238, i64 %366
  %375 = load i8, ptr %374, align 1, !tbaa !28
  %376 = icmp ugt i8 %373, %375
  br i1 %376, label %377, label %383

377:                                              ; preds = %372, %370
  %378 = sext i32 %332 to i64
  %379 = getelementptr inbounds [4 x i8], ptr %237, i64 %378
  store i32 %365, ptr %379, align 4, !tbaa !4
  %380 = shl i32 %362, 1
  %381 = load i32, ptr %164, align 4, !tbaa !47
  %382 = icmp sgt i32 %380, %381
  br i1 %382, label %383, label %329, !llvm.loop !54

383:                                              ; preds = %377, %372, %360
  %384 = phi i32 [ %332, %360 ], [ %332, %372 ], [ %362, %377 ]
  %385 = sext i32 %384 to i64
  br label %386

386:                                              ; preds = %383, %316
  %387 = phi i64 [ 1, %316 ], [ %385, %383 ]
  %388 = getelementptr inbounds [4 x i8], ptr %237, i64 %387
  store i32 %323, ptr %388, align 4, !tbaa !4
  %389 = load i32, ptr %243, align 4, !tbaa !4
  %390 = load i32, ptr %165, align 8, !tbaa !48
  %391 = add nsw i32 %390, -1
  store i32 %391, ptr %165, align 8, !tbaa !48
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [4 x i8], ptr %237, i64 %392
  store i32 %319, ptr %393, align 4, !tbaa !4
  %394 = load i32, ptr %165, align 8, !tbaa !48
  %395 = add nsw i32 %394, -1
  store i32 %395, ptr %165, align 8, !tbaa !48
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [4 x i8], ptr %237, i64 %396
  store i32 %389, ptr %397, align 4, !tbaa !4
  %398 = sext i32 %319 to i64
  %399 = getelementptr inbounds [4 x i8], ptr %158, i64 %398
  %400 = load i16, ptr %399, align 2, !tbaa !28
  %401 = sext i32 %389 to i64
  %402 = getelementptr inbounds [4 x i8], ptr %158, i64 %401
  %403 = load i16, ptr %402, align 2, !tbaa !28
  %404 = add i16 %403, %400
  %405 = getelementptr inbounds [4 x i8], ptr %158, i64 %318
  store i16 %404, ptr %405, align 2, !tbaa !28
  %406 = getelementptr inbounds i8, ptr %238, i64 %398
  %407 = load i8, ptr %406, align 1, !tbaa !28
  %408 = getelementptr inbounds i8, ptr %238, i64 %401
  %409 = load i8, ptr %408, align 1, !tbaa !28
  %410 = tail call i8 @llvm.umax.i8(i8 %407, i8 %409)
  %411 = add i8 %410, 1
  %412 = getelementptr inbounds i8, ptr %238, i64 %318
  store i8 %411, ptr %412, align 1, !tbaa !28
  %413 = trunc nsw i64 %318 to i32
  %414 = trunc i64 %318 to i16
  %415 = getelementptr inbounds nuw i8, ptr %402, i64 2
  store i16 %414, ptr %415, align 2, !tbaa !28
  %416 = getelementptr inbounds nuw i8, ptr %399, i64 2
  store i16 %414, ptr %416, align 2, !tbaa !28
  %417 = add nsw i64 %318, 1
  store i32 %413, ptr %243, align 4, !tbaa !4
  %418 = load i32, ptr %164, align 4, !tbaa !47
  %419 = icmp slt i32 %418, 2
  br i1 %419, label %476, label %.preheader270

.preheader270:                                    ; preds = %386, %467
  %420 = phi i32 [ %471, %467 ], [ %418, %386 ]
  %421 = phi i32 [ %470, %467 ], [ 2, %386 ]
  %422 = phi i32 [ %452, %467 ], [ 1, %386 ]
  %423 = icmp slt i32 %421, %420
  br i1 %423, label %426, label %424

424:                                              ; preds = %.preheader270
  %425 = sext i32 %421 to i64
  br label %450

426:                                              ; preds = %.preheader270
  %427 = or disjoint i32 %421, 1
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [4 x i8], ptr %237, i64 %428
  %430 = load i32, ptr %429, align 4, !tbaa !4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [4 x i8], ptr %158, i64 %431
  %433 = load i16, ptr %432, align 2, !tbaa !28
  %434 = sext i32 %421 to i64
  %435 = getelementptr inbounds [4 x i8], ptr %237, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [4 x i8], ptr %158, i64 %437
  %439 = load i16, ptr %438, align 2, !tbaa !28
  %440 = icmp ult i16 %433, %439
  br i1 %440, label %449, label %441

441:                                              ; preds = %426
  %442 = icmp eq i16 %433, %439
  br i1 %442, label %443, label %450

443:                                              ; preds = %441
  %444 = getelementptr inbounds i8, ptr %238, i64 %431
  %445 = load i8, ptr %444, align 1, !tbaa !28
  %446 = getelementptr inbounds i8, ptr %238, i64 %437
  %447 = load i8, ptr %446, align 1, !tbaa !28
  %448 = icmp ugt i8 %445, %447
  br i1 %448, label %450, label %449

449:                                              ; preds = %443, %426
  br label %450

450:                                              ; preds = %449, %443, %441, %424
  %451 = phi i64 [ %425, %424 ], [ %428, %449 ], [ %434, %443 ], [ %434, %441 ]
  %452 = phi i32 [ %421, %424 ], [ %427, %449 ], [ %421, %443 ], [ %421, %441 ]
  %453 = load i16, ptr %405, align 2, !tbaa !28
  %454 = getelementptr inbounds [4 x i8], ptr %237, i64 %451
  %455 = load i32, ptr %454, align 4, !tbaa !4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [4 x i8], ptr %158, i64 %456
  %458 = load i16, ptr %457, align 2, !tbaa !28
  %459 = icmp ult i16 %453, %458
  br i1 %459, label %473, label %460

460:                                              ; preds = %450
  %461 = icmp eq i16 %453, %458
  br i1 %461, label %462, label %467

462:                                              ; preds = %460
  %463 = load i8, ptr %412, align 1, !tbaa !28
  %464 = getelementptr inbounds i8, ptr %238, i64 %456
  %465 = load i8, ptr %464, align 1, !tbaa !28
  %466 = icmp ugt i8 %463, %465
  br i1 %466, label %467, label %473

467:                                              ; preds = %462, %460
  %468 = sext i32 %422 to i64
  %469 = getelementptr inbounds [4 x i8], ptr %237, i64 %468
  store i32 %455, ptr %469, align 4, !tbaa !4
  %470 = shl i32 %452, 1
  %471 = load i32, ptr %164, align 4, !tbaa !47
  %472 = icmp sgt i32 %470, %471
  br i1 %472, label %473, label %.preheader270, !llvm.loop !54

473:                                              ; preds = %467, %462, %450
  %474 = phi i32 [ %422, %450 ], [ %422, %462 ], [ %452, %467 ]
  %475 = sext i32 %474 to i64
  br label %476

476:                                              ; preds = %473, %386
  %477 = phi i64 [ 1, %386 ], [ %475, %473 ]
  %478 = getelementptr inbounds [4 x i8], ptr %237, i64 %477
  store i32 %413, ptr %478, align 4, !tbaa !4
  %479 = load i32, ptr %164, align 4, !tbaa !47
  %480 = icmp sgt i32 %479, 1
  br i1 %480, label %316, label %481, !llvm.loop !56

481:                                              ; preds = %476
  %482 = load i32, ptr %243, align 4, !tbaa !4
  %483 = load i32, ptr %165, align 8, !tbaa !48
  %484 = add nsw i32 %483, -1
  store i32 %484, ptr %165, align 8, !tbaa !48
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [4 x i8], ptr %237, i64 %485
  store i32 %482, ptr %486, align 4, !tbaa !4
  %487 = load ptr, ptr %157, align 8, !tbaa !41
  %488 = load i32, ptr %236, align 8, !tbaa !53
  %489 = load ptr, ptr %159, align 8, !tbaa !42
  %490 = load ptr, ptr %489, align 8, !tbaa !43
  %491 = getelementptr inbounds nuw i8, ptr %489, i64 8
  %492 = load ptr, ptr %491, align 8, !tbaa !57
  %493 = getelementptr inbounds nuw i8, ptr %489, i64 16
  %494 = load i32, ptr %493, align 8, !tbaa !58
  %495 = getelementptr inbounds nuw i8, ptr %489, i64 24
  %496 = load i32, ptr %495, align 8, !tbaa !59
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %497, i8 0, i64 32, i1 false), !tbaa !60
  %498 = load i32, ptr %165, align 8, !tbaa !48
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [4 x i8], ptr %237, i64 %499
  %501 = load i32, ptr %500, align 4, !tbaa !4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [4 x i8], ptr %487, i64 %502
  %504 = getelementptr inbounds nuw i8, ptr %503, i64 2
  store i16 0, ptr %504, align 2, !tbaa !28
  %505 = load i32, ptr %165, align 8, !tbaa !48
  %506 = icmp slt i32 %505, 572
  br i1 %506, label %507, label %.loopexit269

507:                                              ; preds = %481
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %509 = icmp eq ptr %490, null
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %511 = sext i32 %505 to i64
  %512 = add nsw i64 %511, 1
  br label %513

513:                                              ; preds = %572, %507
  %514 = phi i64 [ %512, %507 ], [ %573, %572 ]
  %515 = phi i32 [ 0, %507 ], [ %531, %572 ]
  %516 = getelementptr inbounds [4 x i8], ptr %237, i64 %514
  %517 = load i32, ptr %516, align 4, !tbaa !4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds [4 x i8], ptr %487, i64 %518
  %520 = getelementptr inbounds nuw i8, ptr %519, i64 2
  %521 = load i16, ptr %520, align 2, !tbaa !28
  %522 = zext i16 %521 to i64
  %523 = getelementptr inbounds nuw [4 x i8], ptr %487, i64 %522
  %524 = getelementptr inbounds nuw i8, ptr %523, i64 2
  %525 = load i16, ptr %524, align 2, !tbaa !28
  %526 = zext i16 %525 to i32
  %527 = add nuw nsw i32 %526, 1
  %528 = icmp sle i32 %496, %526
  %529 = select i1 %528, i32 %496, i32 %527
  %530 = zext i1 %528 to i32
  %531 = add nuw nsw i32 %515, %530
  %532 = trunc i32 %529 to i16
  store i16 %532, ptr %520, align 2, !tbaa !28
  %533 = icmp sgt i32 %517, %488
  br i1 %533, label %572, label %534

534:                                              ; preds = %513
  %535 = sext i32 %529 to i64
  %536 = getelementptr inbounds [2 x i8], ptr %497, i64 %535
  %537 = load i16, ptr %536, align 2, !tbaa !60
  %538 = add i16 %537, 1
  store i16 %538, ptr %536, align 2, !tbaa !60
  %539 = icmp slt i32 %517, %494
  br i1 %539, label %545, label %540

540:                                              ; preds = %534
  %541 = sub nsw i32 %517, %494
  %542 = zext nneg i32 %541 to i64
  %543 = getelementptr inbounds nuw [4 x i8], ptr %492, i64 %542
  %544 = load i32, ptr %543, align 4, !tbaa !4
  br label %545

545:                                              ; preds = %540, %534
  %546 = phi i32 [ %544, %540 ], [ 0, %534 ]
  %547 = load i16, ptr %519, align 2, !tbaa !28
  %548 = zext i16 %547 to i64
  %549 = add nsw i32 %546, %529
  %550 = zext i32 %549 to i64
  %551 = mul nuw nsw i64 %548, %550
  %552 = load i64, ptr %508, align 8, !tbaa !50
  %553 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %552, i64 %551), !nosanitize !31
  %554 = extractvalue { i64, i1 } %553, 1, !nosanitize !31
  br i1 %554, label %555, label %556, !prof !32, !nosanitize !31

555:                                              ; preds = %545
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

556:                                              ; preds = %545
  %557 = extractvalue { i64, i1 } %553, 0, !nosanitize !31
  store i64 %557, ptr %508, align 8, !tbaa !50
  br i1 %509, label %572, label %558

558:                                              ; preds = %556
  %559 = getelementptr inbounds [4 x i8], ptr %490, i64 %518
  %560 = getelementptr inbounds nuw i8, ptr %559, i64 2
  %561 = load i16, ptr %560, align 2, !tbaa !28
  %562 = zext i16 %561 to i32
  %563 = add nsw i32 %546, %562
  %564 = zext i32 %563 to i64
  %565 = mul nuw nsw i64 %564, %548
  %566 = load i64, ptr %510, align 8, !tbaa !51
  %567 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %566, i64 %565), !nosanitize !31
  %568 = extractvalue { i64, i1 } %567, 1, !nosanitize !31
  br i1 %568, label %569, label %570, !prof !32, !nosanitize !31

569:                                              ; preds = %558
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

570:                                              ; preds = %558
  %571 = extractvalue { i64, i1 } %567, 0, !nosanitize !31
  store i64 %571, ptr %510, align 8, !tbaa !51
  br label %572

572:                                              ; preds = %570, %556, %513
  %573 = add nsw i64 %514, 1
  %574 = and i64 %573, 4294967295
  %575 = icmp eq i64 %574, 573
  br i1 %575, label %576, label %513, !llvm.loop !61

576:                                              ; preds = %572
  %577 = icmp eq i32 %531, 0
  br i1 %577, label %.loopexit269, label %578

578:                                              ; preds = %576
  %579 = sext i32 %496 to i64
  %580 = getelementptr inbounds [2 x i8], ptr %497, i64 %579
  br label %581

581:                                              ; preds = %589, %578
  %582 = phi i32 [ %599, %589 ], [ %531, %578 ]
  br label %583

583:                                              ; preds = %583, %581
  %584 = phi i64 [ %585, %583 ], [ %579, %581 ]
  %585 = add nsw i64 %584, -1
  %586 = getelementptr inbounds [2 x i8], ptr %497, i64 %585
  %587 = load i16, ptr %586, align 2, !tbaa !60
  %588 = icmp eq i16 %587, 0
  br i1 %588, label %583, label %589, !llvm.loop !62

589:                                              ; preds = %583
  %590 = getelementptr inbounds [2 x i8], ptr %497, i64 %585
  %591 = add i16 %587, -1
  store i16 %591, ptr %590, align 2, !tbaa !60
  %592 = shl i64 %584, 32
  %593 = ashr exact i64 %592, 31
  %594 = getelementptr inbounds i8, ptr %497, i64 %593
  %595 = load i16, ptr %594, align 2, !tbaa !60
  %596 = add i16 %595, 2
  store i16 %596, ptr %594, align 2, !tbaa !60
  %597 = load i16, ptr %580, align 2, !tbaa !60
  %598 = add i16 %597, -1
  store i16 %598, ptr %580, align 2, !tbaa !60
  %599 = add nsw i32 %582, -2
  %600 = icmp sgt i32 %582, 2
  br i1 %600, label %581, label %601, !llvm.loop !63

601:                                              ; preds = %589
  %602 = icmp eq i32 %496, 0
  br i1 %602, label %.loopexit269, label %.preheader268

.preheader268:                                    ; preds = %601, %.loopexit267
  %603 = phi i64 [ %612, %.loopexit267 ], [ %579, %601 ]
  %604 = phi i32 [ %611, %.loopexit267 ], [ 573, %601 ]
  %605 = getelementptr inbounds [2 x i8], ptr %497, i64 %603
  %606 = load i16, ptr %605, align 2, !tbaa !60
  %607 = icmp eq i16 %606, 0
  br i1 %607, label %.loopexit267, label %608

608:                                              ; preds = %.preheader268
  %609 = zext i16 %606 to i32
  %610 = trunc i64 %603 to i16
  br label %614

.loopexit267:                                     ; preds = %651, %.preheader268
  %611 = phi i32 [ %604, %.preheader268 ], [ %625, %651 ]
  %612 = add nsw i64 %603, -1
  %613 = icmp eq i64 %612, 0
  br i1 %613, label %.loopexit269, label %.preheader268, !llvm.loop !64

614:                                              ; preds = %651, %608
  %615 = phi i32 [ %604, %608 ], [ %625, %651 ]
  %616 = phi i32 [ %609, %608 ], [ %652, %651 ]
  %617 = sext i32 %615 to i64
  br label %618

618:                                              ; preds = %618, %614
  %619 = phi i64 [ %617, %614 ], [ %620, %618 ]
  %620 = add nsw i64 %619, -1
  %621 = getelementptr inbounds [4 x i8], ptr %237, i64 %620
  %622 = load i32, ptr %621, align 4, !tbaa !4
  %623 = icmp sgt i32 %622, %488
  br i1 %623, label %618, label %624, !llvm.loop !65

624:                                              ; preds = %618
  %625 = trunc nsw i64 %620 to i32
  %626 = sext i32 %622 to i64
  %627 = getelementptr inbounds [4 x i8], ptr %487, i64 %626
  %628 = getelementptr inbounds nuw i8, ptr %627, i64 2
  %629 = load i16, ptr %628, align 2, !tbaa !28
  %630 = zext i16 %629 to i64
  %631 = icmp eq i64 %603, %630
  br i1 %631, label %651, label %632

632:                                              ; preds = %624
  %633 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %603, i64 %630), !nosanitize !31
  %634 = extractvalue { i64, i1 } %633, 1, !nosanitize !31
  br i1 %634, label %635, label %636, !prof !32, !nosanitize !31

635:                                              ; preds = %632
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !31
  unreachable, !nosanitize !31

636:                                              ; preds = %632
  %637 = extractvalue { i64, i1 } %633, 0, !nosanitize !31
  %638 = load i16, ptr %627, align 2, !tbaa !28
  %639 = zext i16 %638 to i64
  %640 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %637, i64 %639), !nosanitize !31
  %641 = extractvalue { i64, i1 } %640, 1, !nosanitize !31
  br i1 %641, label %642, label %643, !prof !32, !nosanitize !31

642:                                              ; preds = %636
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !31
  unreachable, !nosanitize !31

643:                                              ; preds = %636
  %644 = extractvalue { i64, i1 } %640, 0, !nosanitize !31
  %645 = load i64, ptr %508, align 8, !tbaa !50
  %646 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %645, i64 %644), !nosanitize !31
  %647 = extractvalue { i64, i1 } %646, 1, !nosanitize !31
  br i1 %647, label %648, label %649, !prof !32, !nosanitize !31

648:                                              ; preds = %643
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

649:                                              ; preds = %643
  %650 = extractvalue { i64, i1 } %646, 0, !nosanitize !31
  store i64 %650, ptr %508, align 8, !tbaa !50
  store i16 %610, ptr %628, align 2, !tbaa !28
  br label %651

651:                                              ; preds = %649, %624
  %652 = add nsw i32 %616, -1
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %.loopexit267, label %614, !llvm.loop !65

.loopexit269:                                     ; preds = %.loopexit267, %601, %576, %481
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %654 = load i16, ptr %497, align 2, !tbaa !60
  %655 = zext i16 %654 to i32
  %656 = shl nuw nsw i32 %655, 1
  %657 = trunc i32 %656 to i16
  %658 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %657, ptr %658, align 2, !tbaa !60
  %659 = getelementptr i8, ptr %0, i64 2978
  %660 = load i16, ptr %659, align 2, !tbaa !60
  %661 = zext i16 %660 to i32
  %662 = add nuw nsw i32 %656, %661
  %663 = shl nuw nsw i32 %662, 1
  %664 = trunc i32 %663 to i16
  %665 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %664, ptr %665, align 4, !tbaa !60
  %666 = getelementptr i8, ptr %0, i64 2980
  %667 = load i16, ptr %666, align 2, !tbaa !60
  %668 = zext i16 %667 to i32
  %669 = add nuw nsw i32 %663, %668
  %670 = shl nuw nsw i32 %669, 1
  %671 = trunc i32 %670 to i16
  %672 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %671, ptr %672, align 2, !tbaa !60
  %673 = getelementptr i8, ptr %0, i64 2982
  %674 = load i16, ptr %673, align 2, !tbaa !60
  %675 = zext i16 %674 to i32
  %676 = add nuw nsw i32 %670, %675
  %677 = shl nuw nsw i32 %676, 1
  %678 = trunc i32 %677 to i16
  %679 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %678, ptr %679, align 8, !tbaa !60
  %680 = getelementptr i8, ptr %0, i64 2984
  %681 = load i16, ptr %680, align 2, !tbaa !60
  %682 = zext i16 %681 to i32
  %683 = add nuw nsw i32 %677, %682
  %684 = shl nuw nsw i32 %683, 1
  %685 = trunc i32 %684 to i16
  %686 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %685, ptr %686, align 2, !tbaa !60
  %687 = getelementptr i8, ptr %0, i64 2986
  %688 = load i16, ptr %687, align 2, !tbaa !60
  %689 = zext i16 %688 to i32
  %690 = add nuw nsw i32 %684, %689
  %691 = shl nuw nsw i32 %690, 1
  %692 = trunc i32 %691 to i16
  %693 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %692, ptr %693, align 4, !tbaa !60
  %694 = getelementptr i8, ptr %0, i64 2988
  %695 = load i16, ptr %694, align 2, !tbaa !60
  %696 = zext i16 %695 to i32
  %697 = add nuw nsw i32 %691, %696
  %698 = shl nuw nsw i32 %697, 1
  %699 = trunc i32 %698 to i16
  %700 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %699, ptr %700, align 2, !tbaa !60
  %701 = getelementptr i8, ptr %0, i64 2990
  %702 = load i16, ptr %701, align 2, !tbaa !60
  %703 = trunc i32 %698 to i16
  %.tr671 = add i16 %702, %703
  %704 = shl i16 %.tr671, 1
  %705 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %704, ptr %705, align 16, !tbaa !60
  %706 = getelementptr i8, ptr %0, i64 2992
  %707 = load i16, ptr %706, align 2, !tbaa !60
  %.tr239 = add i16 %707, %704
  %708 = shl i16 %.tr239, 1
  %709 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %708, ptr %709, align 2, !tbaa !60
  %710 = getelementptr i8, ptr %0, i64 2994
  %711 = load i16, ptr %710, align 2, !tbaa !60
  %.tr = add i16 %708, %711
  %712 = shl i16 %.tr, 1
  %713 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %712, ptr %713, align 4, !tbaa !60
  %714 = getelementptr i8, ptr %0, i64 2996
  %715 = load i16, ptr %714, align 2, !tbaa !60
  %716 = add i16 %712, %715
  %717 = shl i16 %716, 1
  %718 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %717, ptr %718, align 2, !tbaa !60
  %719 = getelementptr i8, ptr %0, i64 2998
  %720 = load i16, ptr %719, align 2, !tbaa !60
  %721 = add i16 %717, %720
  %722 = shl i16 %721, 1
  %723 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %722, ptr %723, align 8, !tbaa !60
  %724 = getelementptr i8, ptr %0, i64 3000
  %725 = load i16, ptr %724, align 2, !tbaa !60
  %726 = add i16 %722, %725
  %727 = shl i16 %726, 1
  %728 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %727, ptr %728, align 2, !tbaa !60
  %729 = getelementptr i8, ptr %0, i64 3002
  %730 = load i16, ptr %729, align 2, !tbaa !60
  %731 = add i16 %727, %730
  %732 = shl i16 %731, 1
  %733 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %732, ptr %733, align 4, !tbaa !60
  %734 = getelementptr i8, ptr %0, i64 3004
  %735 = load i16, ptr %734, align 2, !tbaa !60
  %736 = add i16 %732, %735
  %737 = shl i16 %736, 1
  %738 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %737, ptr %738, align 2, !tbaa !60
  %739 = icmp slt i32 %234, 0
  br i1 %739, label %.loopexit266, label %740

740:                                              ; preds = %.loopexit269
  %741 = add nuw i32 %234, 1
  %742 = zext i32 %741 to i64
  br label %743

743:                                              ; preds = %796, %740
  %744 = phi i64 [ 0, %740 ], [ %797, %796 ]
  %745 = getelementptr inbounds nuw [4 x i8], ptr %158, i64 %744
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 2
  %747 = load i16, ptr %746, align 2, !tbaa !28
  %748 = icmp eq i16 %747, 0
  br i1 %748, label %796, label %749

749:                                              ; preds = %743
  %750 = zext i16 %747 to i32
  %751 = zext i16 %747 to i64
  %752 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %751
  %753 = load i16, ptr %752, align 2, !tbaa !60
  %754 = add i16 %753, 1
  store i16 %754, ptr %752, align 2, !tbaa !60
  %755 = and i32 %750, 3
  %756 = icmp ult i16 %747, 4
  br i1 %756, label %781, label %757

757:                                              ; preds = %749
  %758 = and i32 %750, 65532
  br label %759

759:                                              ; preds = %759, %757
  %760 = phi i16 [ %753, %757 ], [ %775, %759 ]
  %761 = phi i16 [ 0, %757 ], [ %776, %759 ]
  %762 = phi i32 [ 0, %757 ], [ %777, %759 ]
  %763 = and i16 %760, 1
  %764 = or disjoint i16 %761, %763
  %765 = shl i16 %764, 2
  %766 = and i16 %760, 2
  %767 = or disjoint i16 %765, %766
  %768 = lshr i16 %760, 2
  %769 = and i16 %768, 1
  %770 = or disjoint i16 %767, %769
  %771 = lshr i16 %760, 3
  %772 = shl i16 %770, 1
  %773 = and i16 %771, 1
  %774 = or disjoint i16 %772, %773
  %775 = lshr i16 %760, 4
  %776 = shl i16 %774, 1
  %777 = add nuw nsw i32 %762, 4
  %778 = icmp eq i32 %777, %758
  br i1 %778, label %779, label %759, !llvm.loop !66

779:                                              ; preds = %759
  %780 = icmp eq i32 %755, 0
  br i1 %780, label %.loopexit265, label %781

781:                                              ; preds = %779, %749
  %782 = phi i16 [ %753, %749 ], [ %775, %779 ]
  %783 = phi i16 [ 0, %749 ], [ %776, %779 ]
  %784 = icmp ne i32 %755, 0
  tail call void @llvm.assume(i1 %784)
  br label %785

785:                                              ; preds = %785, %781
  %786 = phi i16 [ %782, %781 ], [ %791, %785 ]
  %787 = phi i16 [ %783, %781 ], [ %792, %785 ]
  %788 = phi i32 [ 0, %781 ], [ %793, %785 ]
  %789 = and i16 %786, 1
  %790 = or disjoint i16 %787, %789
  %791 = lshr i16 %786, 1
  %792 = shl i16 %790, 1
  %793 = add nuw nsw i32 %788, 1
  %794 = icmp eq i32 %793, %755
  br i1 %794, label %.loopexit265, label %785, !llvm.loop !67

.loopexit265:                                     ; preds = %785, %779
  %795 = phi i16 [ %774, %779 ], [ %790, %785 ]
  store i16 %795, ptr %745, align 2, !tbaa !28
  br label %796

796:                                              ; preds = %.loopexit265, %743
  %797 = add nuw nsw i64 %744, 1
  %798 = icmp eq i64 %797, %742
  br i1 %798, label %.loopexit266, label %743, !llvm.loop !69

.loopexit266:                                     ; preds = %796, %.loopexit269
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %799 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %800 = load ptr, ptr %799, align 8, !tbaa !41
  %801 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %802 = load ptr, ptr %801, align 8, !tbaa !42
  %803 = load ptr, ptr %802, align 8, !tbaa !43
  %804 = getelementptr inbounds nuw i8, ptr %802, i64 20
  %805 = load i32, ptr %804, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %806 = icmp sgt i32 %805, 0
  br i1 %806, label %807, label %812

807:                                              ; preds = %.loopexit266
  %808 = zext nneg i32 %805 to i64
  br label %818

809:                                              ; preds = %833
  %810 = load i32, ptr %164, align 4, !tbaa !47
  %811 = icmp slt i32 %810, 2
  br i1 %811, label %812, label %.loopexit264

812:                                              ; preds = %809, %.loopexit266
  %813 = phi i32 [ %834, %809 ], [ -1, %.loopexit266 ]
  %814 = phi i32 [ %810, %809 ], [ 0, %.loopexit266 ]
  %815 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %816 = icmp eq ptr %803, null
  %817 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %837

818:                                              ; preds = %833, %807
  %819 = phi i64 [ 0, %807 ], [ %835, %833 ]
  %820 = phi i32 [ -1, %807 ], [ %834, %833 ]
  %821 = getelementptr inbounds nuw [4 x i8], ptr %800, i64 %819
  %822 = load i16, ptr %821, align 2, !tbaa !28
  %823 = icmp eq i16 %822, 0
  br i1 %823, label %831, label %824

824:                                              ; preds = %818
  %825 = load i32, ptr %164, align 4, !tbaa !47
  %826 = add nsw i32 %825, 1
  store i32 %826, ptr %164, align 4, !tbaa !47
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds [4 x i8], ptr %237, i64 %827
  %829 = trunc nuw nsw i64 %819 to i32
  store i32 %829, ptr %828, align 4, !tbaa !4
  %830 = getelementptr inbounds nuw i8, ptr %238, i64 %819
  store i8 0, ptr %830, align 1, !tbaa !28
  br label %833

831:                                              ; preds = %818
  %832 = getelementptr inbounds nuw i8, ptr %821, i64 2
  store i16 0, ptr %832, align 2, !tbaa !28
  br label %833

833:                                              ; preds = %831, %824
  %834 = phi i32 [ %829, %824 ], [ %820, %831 ]
  %835 = add nuw nsw i64 %819, 1
  %836 = icmp eq i64 %835, %808
  br i1 %836, label %809, label %818, !llvm.loop !49

837:                                              ; preds = %867, %812
  %838 = phi i32 [ %814, %812 ], [ %868, %867 ]
  %839 = phi i32 [ %813, %812 ], [ %842, %867 ]
  %840 = icmp slt i32 %839, 2
  %841 = add nsw i32 %839, 1
  %842 = select i1 %840, i32 %841, i32 %839
  %843 = select i1 %840, i32 %841, i32 0
  %844 = add nsw i32 %838, 1
  store i32 %844, ptr %164, align 4, !tbaa !47
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds [4 x i8], ptr %237, i64 %845
  store i32 %843, ptr %846, align 4, !tbaa !4
  %847 = sext i32 %843 to i64
  %848 = getelementptr inbounds [4 x i8], ptr %800, i64 %847
  store i16 1, ptr %848, align 2, !tbaa !28
  %849 = getelementptr inbounds i8, ptr %238, i64 %847
  store i8 0, ptr %849, align 1, !tbaa !28
  %850 = load i64, ptr %815, align 8, !tbaa !50
  %851 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %850, i64 1), !nosanitize !31
  %852 = extractvalue { i64, i1 } %851, 1, !nosanitize !31
  br i1 %852, label %853, label %854, !prof !32, !nosanitize !31

853:                                              ; preds = %837
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !31
  unreachable, !nosanitize !31

854:                                              ; preds = %837
  %855 = extractvalue { i64, i1 } %851, 0, !nosanitize !31
  store i64 %855, ptr %815, align 8, !tbaa !50
  br i1 %816, label %867, label %856

856:                                              ; preds = %854
  %857 = getelementptr inbounds [4 x i8], ptr %803, i64 %847
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 2
  %859 = load i16, ptr %858, align 2, !tbaa !28
  %860 = zext i16 %859 to i64
  %861 = load i64, ptr %817, align 8, !tbaa !51
  %862 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %861, i64 %860), !nosanitize !31
  %863 = extractvalue { i64, i1 } %862, 1, !nosanitize !31
  br i1 %863, label %864, label %865, !prof !32, !nosanitize !31

864:                                              ; preds = %856
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !31
  unreachable, !nosanitize !31

865:                                              ; preds = %856
  %866 = extractvalue { i64, i1 } %862, 0, !nosanitize !31
  store i64 %866, ptr %817, align 8, !tbaa !51
  br label %867

867:                                              ; preds = %865, %854
  %868 = load i32, ptr %164, align 4, !tbaa !47
  %869 = icmp slt i32 %868, 2
  br i1 %869, label %837, label %.loopexit264, !llvm.loop !52

.loopexit264:                                     ; preds = %867, %809
  %870 = phi i32 [ %834, %809 ], [ %842, %867 ]
  %871 = phi i32 [ %810, %809 ], [ %868, %867 ]
  %872 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %870, ptr %872, align 8, !tbaa !53
  %873 = lshr i32 %871, 1
  %874 = zext nneg i32 %873 to i64
  br label %878

875:                                              ; preds = %.loopexit262
  %876 = load i32, ptr %164, align 4, !tbaa !47
  %877 = sext i32 %805 to i64
  br label %949

878:                                              ; preds = %.loopexit262, %.loopexit264
  %879 = phi i64 [ %874, %.loopexit264 ], [ %947, %.loopexit262 ]
  %880 = getelementptr inbounds nuw [4 x i8], ptr %237, i64 %879
  %881 = load i32, ptr %880, align 4, !tbaa !4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds i8, ptr %238, i64 %882
  %884 = load i32, ptr %164, align 4, !tbaa !47
  %885 = trunc i64 %879 to i32
  %886 = shl i32 %885, 1
  %887 = icmp sgt i32 %886, %884
  br i1 %887, label %.loopexit262, label %888

888:                                              ; preds = %878
  %889 = getelementptr inbounds [4 x i8], ptr %800, i64 %882
  br label %890

890:                                              ; preds = %938, %888
  %891 = phi i32 [ %884, %888 ], [ %942, %938 ]
  %892 = phi i32 [ %886, %888 ], [ %941, %938 ]
  %893 = phi i32 [ %885, %888 ], [ %923, %938 ]
  %894 = icmp slt i32 %892, %891
  br i1 %894, label %897, label %895

895:                                              ; preds = %890
  %896 = sext i32 %892 to i64
  br label %921

897:                                              ; preds = %890
  %898 = or disjoint i32 %892, 1
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds [4 x i8], ptr %237, i64 %899
  %901 = load i32, ptr %900, align 4, !tbaa !4
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds [4 x i8], ptr %800, i64 %902
  %904 = load i16, ptr %903, align 2, !tbaa !28
  %905 = sext i32 %892 to i64
  %906 = getelementptr inbounds [4 x i8], ptr %237, i64 %905
  %907 = load i32, ptr %906, align 4, !tbaa !4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds [4 x i8], ptr %800, i64 %908
  %910 = load i16, ptr %909, align 2, !tbaa !28
  %911 = icmp ult i16 %904, %910
  br i1 %911, label %920, label %912

912:                                              ; preds = %897
  %913 = icmp eq i16 %904, %910
  br i1 %913, label %914, label %921

914:                                              ; preds = %912
  %915 = getelementptr inbounds i8, ptr %238, i64 %902
  %916 = load i8, ptr %915, align 1, !tbaa !28
  %917 = getelementptr inbounds i8, ptr %238, i64 %908
  %918 = load i8, ptr %917, align 1, !tbaa !28
  %919 = icmp ugt i8 %916, %918
  br i1 %919, label %921, label %920

920:                                              ; preds = %914, %897
  br label %921

921:                                              ; preds = %920, %914, %912, %895
  %922 = phi i64 [ %896, %895 ], [ %899, %920 ], [ %905, %914 ], [ %905, %912 ]
  %923 = phi i32 [ %892, %895 ], [ %898, %920 ], [ %892, %914 ], [ %892, %912 ]
  %924 = load i16, ptr %889, align 2, !tbaa !28
  %925 = getelementptr inbounds [4 x i8], ptr %237, i64 %922
  %926 = load i32, ptr %925, align 4, !tbaa !4
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds [4 x i8], ptr %800, i64 %927
  %929 = load i16, ptr %928, align 2, !tbaa !28
  %930 = icmp ult i16 %924, %929
  br i1 %930, label %.loopexit262, label %931

931:                                              ; preds = %921
  %932 = icmp eq i16 %924, %929
  br i1 %932, label %933, label %938

933:                                              ; preds = %931
  %934 = load i8, ptr %883, align 1, !tbaa !28
  %935 = getelementptr inbounds i8, ptr %238, i64 %927
  %936 = load i8, ptr %935, align 1, !tbaa !28
  %937 = icmp ugt i8 %934, %936
  br i1 %937, label %938, label %.loopexit262

938:                                              ; preds = %933, %931
  %939 = sext i32 %893 to i64
  %940 = getelementptr inbounds [4 x i8], ptr %237, i64 %939
  store i32 %926, ptr %940, align 4, !tbaa !4
  %941 = shl i32 %923, 1
  %942 = load i32, ptr %164, align 4, !tbaa !47
  %943 = icmp sgt i32 %941, %942
  br i1 %943, label %.loopexit262, label %890, !llvm.loop !54

.loopexit262:                                     ; preds = %938, %933, %921, %878
  %944 = phi i32 [ %885, %878 ], [ %923, %938 ], [ %893, %933 ], [ %893, %921 ]
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds [4 x i8], ptr %237, i64 %945
  store i32 %881, ptr %946, align 4, !tbaa !4
  %947 = add nsw i64 %879, -1
  %948 = icmp sgt i64 %879, 1
  br i1 %948, label %878, label %875, !llvm.loop !55

949:                                              ; preds = %1109, %875
  %950 = phi i32 [ %876, %875 ], [ %1112, %1109 ]
  %951 = phi i64 [ %877, %875 ], [ %1050, %1109 ]
  %952 = load i32, ptr %243, align 4, !tbaa !4
  %953 = add nsw i32 %950, -1
  store i32 %953, ptr %164, align 4, !tbaa !47
  %954 = sext i32 %950 to i64
  %955 = getelementptr inbounds [4 x i8], ptr %237, i64 %954
  %956 = load i32, ptr %955, align 4, !tbaa !4
  store i32 %956, ptr %243, align 4, !tbaa !4
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds i8, ptr %238, i64 %957
  %959 = icmp slt i32 %950, 3
  br i1 %959, label %1019, label %960

960:                                              ; preds = %949
  %961 = getelementptr inbounds [4 x i8], ptr %800, i64 %957
  br label %962

962:                                              ; preds = %1010, %960
  %963 = phi i32 [ %953, %960 ], [ %1014, %1010 ]
  %964 = phi i32 [ 2, %960 ], [ %1013, %1010 ]
  %965 = phi i32 [ 1, %960 ], [ %995, %1010 ]
  %966 = icmp slt i32 %964, %963
  br i1 %966, label %969, label %967

967:                                              ; preds = %962
  %968 = sext i32 %964 to i64
  br label %993

969:                                              ; preds = %962
  %970 = or disjoint i32 %964, 1
  %971 = sext i32 %970 to i64
  %972 = getelementptr inbounds [4 x i8], ptr %237, i64 %971
  %973 = load i32, ptr %972, align 4, !tbaa !4
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds [4 x i8], ptr %800, i64 %974
  %976 = load i16, ptr %975, align 2, !tbaa !28
  %977 = sext i32 %964 to i64
  %978 = getelementptr inbounds [4 x i8], ptr %237, i64 %977
  %979 = load i32, ptr %978, align 4, !tbaa !4
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds [4 x i8], ptr %800, i64 %980
  %982 = load i16, ptr %981, align 2, !tbaa !28
  %983 = icmp ult i16 %976, %982
  br i1 %983, label %992, label %984

984:                                              ; preds = %969
  %985 = icmp eq i16 %976, %982
  br i1 %985, label %986, label %993

986:                                              ; preds = %984
  %987 = getelementptr inbounds i8, ptr %238, i64 %974
  %988 = load i8, ptr %987, align 1, !tbaa !28
  %989 = getelementptr inbounds i8, ptr %238, i64 %980
  %990 = load i8, ptr %989, align 1, !tbaa !28
  %991 = icmp ugt i8 %988, %990
  br i1 %991, label %993, label %992

992:                                              ; preds = %986, %969
  br label %993

993:                                              ; preds = %992, %986, %984, %967
  %994 = phi i64 [ %968, %967 ], [ %971, %992 ], [ %977, %986 ], [ %977, %984 ]
  %995 = phi i32 [ %964, %967 ], [ %970, %992 ], [ %964, %986 ], [ %964, %984 ]
  %996 = load i16, ptr %961, align 2, !tbaa !28
  %997 = getelementptr inbounds [4 x i8], ptr %237, i64 %994
  %998 = load i32, ptr %997, align 4, !tbaa !4
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds [4 x i8], ptr %800, i64 %999
  %1001 = load i16, ptr %1000, align 2, !tbaa !28
  %1002 = icmp ult i16 %996, %1001
  br i1 %1002, label %1016, label %1003

1003:                                             ; preds = %993
  %1004 = icmp eq i16 %996, %1001
  br i1 %1004, label %1005, label %1010

1005:                                             ; preds = %1003
  %1006 = load i8, ptr %958, align 1, !tbaa !28
  %1007 = getelementptr inbounds i8, ptr %238, i64 %999
  %1008 = load i8, ptr %1007, align 1, !tbaa !28
  %1009 = icmp ugt i8 %1006, %1008
  br i1 %1009, label %1010, label %1016

1010:                                             ; preds = %1005, %1003
  %1011 = sext i32 %965 to i64
  %1012 = getelementptr inbounds [4 x i8], ptr %237, i64 %1011
  store i32 %998, ptr %1012, align 4, !tbaa !4
  %1013 = shl i32 %995, 1
  %1014 = load i32, ptr %164, align 4, !tbaa !47
  %1015 = icmp sgt i32 %1013, %1014
  br i1 %1015, label %1016, label %962, !llvm.loop !54

1016:                                             ; preds = %1010, %1005, %993
  %1017 = phi i32 [ %965, %993 ], [ %965, %1005 ], [ %995, %1010 ]
  %1018 = sext i32 %1017 to i64
  br label %1019

1019:                                             ; preds = %1016, %949
  %1020 = phi i64 [ 1, %949 ], [ %1018, %1016 ]
  %1021 = getelementptr inbounds [4 x i8], ptr %237, i64 %1020
  store i32 %956, ptr %1021, align 4, !tbaa !4
  %1022 = load i32, ptr %243, align 4, !tbaa !4
  %1023 = load i32, ptr %165, align 8, !tbaa !48
  %1024 = add nsw i32 %1023, -1
  store i32 %1024, ptr %165, align 8, !tbaa !48
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds [4 x i8], ptr %237, i64 %1025
  store i32 %952, ptr %1026, align 4, !tbaa !4
  %1027 = load i32, ptr %165, align 8, !tbaa !48
  %1028 = add nsw i32 %1027, -1
  store i32 %1028, ptr %165, align 8, !tbaa !48
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds [4 x i8], ptr %237, i64 %1029
  store i32 %1022, ptr %1030, align 4, !tbaa !4
  %1031 = sext i32 %952 to i64
  %1032 = getelementptr inbounds [4 x i8], ptr %800, i64 %1031
  %1033 = load i16, ptr %1032, align 2, !tbaa !28
  %1034 = sext i32 %1022 to i64
  %1035 = getelementptr inbounds [4 x i8], ptr %800, i64 %1034
  %1036 = load i16, ptr %1035, align 2, !tbaa !28
  %1037 = add i16 %1036, %1033
  %1038 = getelementptr inbounds [4 x i8], ptr %800, i64 %951
  store i16 %1037, ptr %1038, align 2, !tbaa !28
  %1039 = getelementptr inbounds i8, ptr %238, i64 %1031
  %1040 = load i8, ptr %1039, align 1, !tbaa !28
  %1041 = getelementptr inbounds i8, ptr %238, i64 %1034
  %1042 = load i8, ptr %1041, align 1, !tbaa !28
  %1043 = tail call i8 @llvm.umax.i8(i8 %1040, i8 %1042)
  %1044 = add i8 %1043, 1
  %1045 = getelementptr inbounds i8, ptr %238, i64 %951
  store i8 %1044, ptr %1045, align 1, !tbaa !28
  %1046 = trunc nsw i64 %951 to i32
  %1047 = trunc i64 %951 to i16
  %1048 = getelementptr inbounds nuw i8, ptr %1035, i64 2
  store i16 %1047, ptr %1048, align 2, !tbaa !28
  %1049 = getelementptr inbounds nuw i8, ptr %1032, i64 2
  store i16 %1047, ptr %1049, align 2, !tbaa !28
  %1050 = add nsw i64 %951, 1
  store i32 %1046, ptr %243, align 4, !tbaa !4
  %1051 = load i32, ptr %164, align 4, !tbaa !47
  %1052 = icmp slt i32 %1051, 2
  br i1 %1052, label %1109, label %.preheader261

.preheader261:                                    ; preds = %1019, %1100
  %1053 = phi i32 [ %1104, %1100 ], [ %1051, %1019 ]
  %1054 = phi i32 [ %1103, %1100 ], [ 2, %1019 ]
  %1055 = phi i32 [ %1085, %1100 ], [ 1, %1019 ]
  %1056 = icmp slt i32 %1054, %1053
  br i1 %1056, label %1059, label %1057

1057:                                             ; preds = %.preheader261
  %1058 = sext i32 %1054 to i64
  br label %1083

1059:                                             ; preds = %.preheader261
  %1060 = or disjoint i32 %1054, 1
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds [4 x i8], ptr %237, i64 %1061
  %1063 = load i32, ptr %1062, align 4, !tbaa !4
  %1064 = sext i32 %1063 to i64
  %1065 = getelementptr inbounds [4 x i8], ptr %800, i64 %1064
  %1066 = load i16, ptr %1065, align 2, !tbaa !28
  %1067 = sext i32 %1054 to i64
  %1068 = getelementptr inbounds [4 x i8], ptr %237, i64 %1067
  %1069 = load i32, ptr %1068, align 4, !tbaa !4
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds [4 x i8], ptr %800, i64 %1070
  %1072 = load i16, ptr %1071, align 2, !tbaa !28
  %1073 = icmp ult i16 %1066, %1072
  br i1 %1073, label %1082, label %1074

1074:                                             ; preds = %1059
  %1075 = icmp eq i16 %1066, %1072
  br i1 %1075, label %1076, label %1083

1076:                                             ; preds = %1074
  %1077 = getelementptr inbounds i8, ptr %238, i64 %1064
  %1078 = load i8, ptr %1077, align 1, !tbaa !28
  %1079 = getelementptr inbounds i8, ptr %238, i64 %1070
  %1080 = load i8, ptr %1079, align 1, !tbaa !28
  %1081 = icmp ugt i8 %1078, %1080
  br i1 %1081, label %1083, label %1082

1082:                                             ; preds = %1076, %1059
  br label %1083

1083:                                             ; preds = %1082, %1076, %1074, %1057
  %1084 = phi i64 [ %1058, %1057 ], [ %1061, %1082 ], [ %1067, %1076 ], [ %1067, %1074 ]
  %1085 = phi i32 [ %1054, %1057 ], [ %1060, %1082 ], [ %1054, %1076 ], [ %1054, %1074 ]
  %1086 = load i16, ptr %1038, align 2, !tbaa !28
  %1087 = getelementptr inbounds [4 x i8], ptr %237, i64 %1084
  %1088 = load i32, ptr %1087, align 4, !tbaa !4
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds [4 x i8], ptr %800, i64 %1089
  %1091 = load i16, ptr %1090, align 2, !tbaa !28
  %1092 = icmp ult i16 %1086, %1091
  br i1 %1092, label %1106, label %1093

1093:                                             ; preds = %1083
  %1094 = icmp eq i16 %1086, %1091
  br i1 %1094, label %1095, label %1100

1095:                                             ; preds = %1093
  %1096 = load i8, ptr %1045, align 1, !tbaa !28
  %1097 = getelementptr inbounds i8, ptr %238, i64 %1089
  %1098 = load i8, ptr %1097, align 1, !tbaa !28
  %1099 = icmp ugt i8 %1096, %1098
  br i1 %1099, label %1100, label %1106

1100:                                             ; preds = %1095, %1093
  %1101 = sext i32 %1055 to i64
  %1102 = getelementptr inbounds [4 x i8], ptr %237, i64 %1101
  store i32 %1088, ptr %1102, align 4, !tbaa !4
  %1103 = shl i32 %1085, 1
  %1104 = load i32, ptr %164, align 4, !tbaa !47
  %1105 = icmp sgt i32 %1103, %1104
  br i1 %1105, label %1106, label %.preheader261, !llvm.loop !54

1106:                                             ; preds = %1100, %1095, %1083
  %1107 = phi i32 [ %1055, %1083 ], [ %1055, %1095 ], [ %1085, %1100 ]
  %1108 = sext i32 %1107 to i64
  br label %1109

1109:                                             ; preds = %1106, %1019
  %1110 = phi i64 [ 1, %1019 ], [ %1108, %1106 ]
  %1111 = getelementptr inbounds [4 x i8], ptr %237, i64 %1110
  store i32 %1046, ptr %1111, align 4, !tbaa !4
  %1112 = load i32, ptr %164, align 4, !tbaa !47
  %1113 = icmp sgt i32 %1112, 1
  br i1 %1113, label %949, label %1114, !llvm.loop !56

1114:                                             ; preds = %1109
  %1115 = load i32, ptr %243, align 4, !tbaa !4
  %1116 = load i32, ptr %165, align 8, !tbaa !48
  %1117 = add nsw i32 %1116, -1
  store i32 %1117, ptr %165, align 8, !tbaa !48
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds [4 x i8], ptr %237, i64 %1118
  store i32 %1115, ptr %1119, align 4, !tbaa !4
  %1120 = load ptr, ptr %799, align 8, !tbaa !41
  %1121 = load i32, ptr %872, align 8, !tbaa !53
  %1122 = load ptr, ptr %801, align 8, !tbaa !42
  %1123 = load ptr, ptr %1122, align 8, !tbaa !43
  %1124 = getelementptr inbounds nuw i8, ptr %1122, i64 8
  %1125 = load ptr, ptr %1124, align 8, !tbaa !57
  %1126 = getelementptr inbounds nuw i8, ptr %1122, i64 16
  %1127 = load i32, ptr %1126, align 8, !tbaa !58
  %1128 = getelementptr inbounds nuw i8, ptr %1122, i64 24
  %1129 = load i32, ptr %1128, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %497, i8 0, i64 32, i1 false), !tbaa !60
  %1130 = load i32, ptr %165, align 8, !tbaa !48
  %1131 = sext i32 %1130 to i64
  %1132 = getelementptr inbounds [4 x i8], ptr %237, i64 %1131
  %1133 = load i32, ptr %1132, align 4, !tbaa !4
  %1134 = sext i32 %1133 to i64
  %1135 = getelementptr inbounds [4 x i8], ptr %1120, i64 %1134
  %1136 = getelementptr inbounds nuw i8, ptr %1135, i64 2
  store i16 0, ptr %1136, align 2, !tbaa !28
  %1137 = load i32, ptr %165, align 8, !tbaa !48
  %1138 = icmp slt i32 %1137, 572
  br i1 %1138, label %1139, label %.loopexit260

1139:                                             ; preds = %1114
  %1140 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1141 = icmp eq ptr %1123, null
  %1142 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1143 = sext i32 %1137 to i64
  %1144 = add nsw i64 %1143, 1
  br label %1145

1145:                                             ; preds = %1204, %1139
  %1146 = phi i64 [ %1144, %1139 ], [ %1205, %1204 ]
  %1147 = phi i32 [ 0, %1139 ], [ %1163, %1204 ]
  %1148 = getelementptr inbounds [4 x i8], ptr %237, i64 %1146
  %1149 = load i32, ptr %1148, align 4, !tbaa !4
  %1150 = sext i32 %1149 to i64
  %1151 = getelementptr inbounds [4 x i8], ptr %1120, i64 %1150
  %1152 = getelementptr inbounds nuw i8, ptr %1151, i64 2
  %1153 = load i16, ptr %1152, align 2, !tbaa !28
  %1154 = zext i16 %1153 to i64
  %1155 = getelementptr inbounds nuw [4 x i8], ptr %1120, i64 %1154
  %1156 = getelementptr inbounds nuw i8, ptr %1155, i64 2
  %1157 = load i16, ptr %1156, align 2, !tbaa !28
  %1158 = zext i16 %1157 to i32
  %1159 = add nuw nsw i32 %1158, 1
  %1160 = icmp sle i32 %1129, %1158
  %1161 = select i1 %1160, i32 %1129, i32 %1159
  %1162 = zext i1 %1160 to i32
  %1163 = add nuw nsw i32 %1147, %1162
  %1164 = trunc i32 %1161 to i16
  store i16 %1164, ptr %1152, align 2, !tbaa !28
  %1165 = icmp sgt i32 %1149, %1121
  br i1 %1165, label %1204, label %1166

1166:                                             ; preds = %1145
  %1167 = sext i32 %1161 to i64
  %1168 = getelementptr inbounds [2 x i8], ptr %497, i64 %1167
  %1169 = load i16, ptr %1168, align 2, !tbaa !60
  %1170 = add i16 %1169, 1
  store i16 %1170, ptr %1168, align 2, !tbaa !60
  %1171 = icmp slt i32 %1149, %1127
  br i1 %1171, label %1177, label %1172

1172:                                             ; preds = %1166
  %1173 = sub nsw i32 %1149, %1127
  %1174 = zext nneg i32 %1173 to i64
  %1175 = getelementptr inbounds nuw [4 x i8], ptr %1125, i64 %1174
  %1176 = load i32, ptr %1175, align 4, !tbaa !4
  br label %1177

1177:                                             ; preds = %1172, %1166
  %1178 = phi i32 [ %1176, %1172 ], [ 0, %1166 ]
  %1179 = load i16, ptr %1151, align 2, !tbaa !28
  %1180 = zext i16 %1179 to i64
  %1181 = add nsw i32 %1178, %1161
  %1182 = zext i32 %1181 to i64
  %1183 = mul nuw nsw i64 %1180, %1182
  %1184 = load i64, ptr %1140, align 8, !tbaa !50
  %1185 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1184, i64 %1183), !nosanitize !31
  %1186 = extractvalue { i64, i1 } %1185, 1, !nosanitize !31
  br i1 %1186, label %1187, label %1188, !prof !32, !nosanitize !31

1187:                                             ; preds = %1177
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

1188:                                             ; preds = %1177
  %1189 = extractvalue { i64, i1 } %1185, 0, !nosanitize !31
  store i64 %1189, ptr %1140, align 8, !tbaa !50
  br i1 %1141, label %1204, label %1190

1190:                                             ; preds = %1188
  %1191 = getelementptr inbounds [4 x i8], ptr %1123, i64 %1150
  %1192 = getelementptr inbounds nuw i8, ptr %1191, i64 2
  %1193 = load i16, ptr %1192, align 2, !tbaa !28
  %1194 = zext i16 %1193 to i32
  %1195 = add nsw i32 %1178, %1194
  %1196 = zext i32 %1195 to i64
  %1197 = mul nuw nsw i64 %1196, %1180
  %1198 = load i64, ptr %1142, align 8, !tbaa !51
  %1199 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1198, i64 %1197), !nosanitize !31
  %1200 = extractvalue { i64, i1 } %1199, 1, !nosanitize !31
  br i1 %1200, label %1201, label %1202, !prof !32, !nosanitize !31

1201:                                             ; preds = %1190
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

1202:                                             ; preds = %1190
  %1203 = extractvalue { i64, i1 } %1199, 0, !nosanitize !31
  store i64 %1203, ptr %1142, align 8, !tbaa !51
  br label %1204

1204:                                             ; preds = %1202, %1188, %1145
  %1205 = add nsw i64 %1146, 1
  %1206 = and i64 %1205, 4294967295
  %1207 = icmp eq i64 %1206, 573
  br i1 %1207, label %1208, label %1145, !llvm.loop !61

1208:                                             ; preds = %1204
  %1209 = icmp eq i32 %1163, 0
  br i1 %1209, label %.loopexit260, label %1210

1210:                                             ; preds = %1208
  %1211 = sext i32 %1129 to i64
  %1212 = getelementptr inbounds [2 x i8], ptr %497, i64 %1211
  br label %1213

1213:                                             ; preds = %1221, %1210
  %1214 = phi i32 [ %1231, %1221 ], [ %1163, %1210 ]
  br label %1215

1215:                                             ; preds = %1215, %1213
  %1216 = phi i64 [ %1217, %1215 ], [ %1211, %1213 ]
  %1217 = add nsw i64 %1216, -1
  %1218 = getelementptr inbounds [2 x i8], ptr %497, i64 %1217
  %1219 = load i16, ptr %1218, align 2, !tbaa !60
  %1220 = icmp eq i16 %1219, 0
  br i1 %1220, label %1215, label %1221, !llvm.loop !62

1221:                                             ; preds = %1215
  %1222 = getelementptr inbounds [2 x i8], ptr %497, i64 %1217
  %1223 = add i16 %1219, -1
  store i16 %1223, ptr %1222, align 2, !tbaa !60
  %1224 = shl i64 %1216, 32
  %1225 = ashr exact i64 %1224, 31
  %1226 = getelementptr inbounds i8, ptr %497, i64 %1225
  %1227 = load i16, ptr %1226, align 2, !tbaa !60
  %1228 = add i16 %1227, 2
  store i16 %1228, ptr %1226, align 2, !tbaa !60
  %1229 = load i16, ptr %1212, align 2, !tbaa !60
  %1230 = add i16 %1229, -1
  store i16 %1230, ptr %1212, align 2, !tbaa !60
  %1231 = add nsw i32 %1214, -2
  %1232 = icmp sgt i32 %1214, 2
  br i1 %1232, label %1213, label %1233, !llvm.loop !63

1233:                                             ; preds = %1221
  %1234 = icmp eq i32 %1129, 0
  br i1 %1234, label %.loopexit260, label %.preheader259

.preheader259:                                    ; preds = %1233, %.loopexit258
  %1235 = phi i64 [ %1244, %.loopexit258 ], [ %1211, %1233 ]
  %1236 = phi i32 [ %1243, %.loopexit258 ], [ 573, %1233 ]
  %1237 = getelementptr inbounds [2 x i8], ptr %497, i64 %1235
  %1238 = load i16, ptr %1237, align 2, !tbaa !60
  %1239 = icmp eq i16 %1238, 0
  br i1 %1239, label %.loopexit258, label %1240

1240:                                             ; preds = %.preheader259
  %1241 = zext i16 %1238 to i32
  %1242 = trunc i64 %1235 to i16
  br label %1246

.loopexit258:                                     ; preds = %1283, %.preheader259
  %1243 = phi i32 [ %1236, %.preheader259 ], [ %1257, %1283 ]
  %1244 = add nsw i64 %1235, -1
  %1245 = icmp eq i64 %1244, 0
  br i1 %1245, label %.loopexit260, label %.preheader259, !llvm.loop !64

1246:                                             ; preds = %1283, %1240
  %1247 = phi i32 [ %1236, %1240 ], [ %1257, %1283 ]
  %1248 = phi i32 [ %1241, %1240 ], [ %1284, %1283 ]
  %1249 = sext i32 %1247 to i64
  br label %1250

1250:                                             ; preds = %1250, %1246
  %1251 = phi i64 [ %1249, %1246 ], [ %1252, %1250 ]
  %1252 = add nsw i64 %1251, -1
  %1253 = getelementptr inbounds [4 x i8], ptr %237, i64 %1252
  %1254 = load i32, ptr %1253, align 4, !tbaa !4
  %1255 = icmp sgt i32 %1254, %1121
  br i1 %1255, label %1250, label %1256, !llvm.loop !65

1256:                                             ; preds = %1250
  %1257 = trunc nsw i64 %1252 to i32
  %1258 = sext i32 %1254 to i64
  %1259 = getelementptr inbounds [4 x i8], ptr %1120, i64 %1258
  %1260 = getelementptr inbounds nuw i8, ptr %1259, i64 2
  %1261 = load i16, ptr %1260, align 2, !tbaa !28
  %1262 = zext i16 %1261 to i64
  %1263 = icmp eq i64 %1235, %1262
  br i1 %1263, label %1283, label %1264

1264:                                             ; preds = %1256
  %1265 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1235, i64 %1262), !nosanitize !31
  %1266 = extractvalue { i64, i1 } %1265, 1, !nosanitize !31
  br i1 %1266, label %1267, label %1268, !prof !32, !nosanitize !31

1267:                                             ; preds = %1264
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !31
  unreachable, !nosanitize !31

1268:                                             ; preds = %1264
  %1269 = extractvalue { i64, i1 } %1265, 0, !nosanitize !31
  %1270 = load i16, ptr %1259, align 2, !tbaa !28
  %1271 = zext i16 %1270 to i64
  %1272 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1269, i64 %1271), !nosanitize !31
  %1273 = extractvalue { i64, i1 } %1272, 1, !nosanitize !31
  br i1 %1273, label %1274, label %1275, !prof !32, !nosanitize !31

1274:                                             ; preds = %1268
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !31
  unreachable, !nosanitize !31

1275:                                             ; preds = %1268
  %1276 = extractvalue { i64, i1 } %1272, 0, !nosanitize !31
  %1277 = load i64, ptr %1140, align 8, !tbaa !50
  %1278 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1277, i64 %1276), !nosanitize !31
  %1279 = extractvalue { i64, i1 } %1278, 1, !nosanitize !31
  br i1 %1279, label %1280, label %1281, !prof !32, !nosanitize !31

1280:                                             ; preds = %1275
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

1281:                                             ; preds = %1275
  %1282 = extractvalue { i64, i1 } %1278, 0, !nosanitize !31
  store i64 %1282, ptr %1140, align 8, !tbaa !50
  store i16 %1242, ptr %1260, align 2, !tbaa !28
  br label %1283

1283:                                             ; preds = %1281, %1256
  %1284 = add nsw i32 %1248, -1
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %.loopexit258, label %1246, !llvm.loop !65

.loopexit260:                                     ; preds = %.loopexit258, %1233, %1208, %1114
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %1286 = load i16, ptr %497, align 2, !tbaa !60
  %1287 = zext i16 %1286 to i32
  %1288 = shl nuw nsw i32 %1287, 1
  %1289 = trunc i32 %1288 to i16
  %1290 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1289, ptr %1290, align 2, !tbaa !60
  %1291 = load i16, ptr %659, align 2, !tbaa !60
  %1292 = zext i16 %1291 to i32
  %1293 = add nuw nsw i32 %1288, %1292
  %1294 = shl nuw nsw i32 %1293, 1
  %1295 = trunc i32 %1294 to i16
  %1296 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1295, ptr %1296, align 4, !tbaa !60
  %1297 = load i16, ptr %666, align 2, !tbaa !60
  %1298 = zext i16 %1297 to i32
  %1299 = add nuw nsw i32 %1294, %1298
  %1300 = shl nuw nsw i32 %1299, 1
  %1301 = trunc i32 %1300 to i16
  %1302 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1301, ptr %1302, align 2, !tbaa !60
  %1303 = load i16, ptr %673, align 2, !tbaa !60
  %1304 = zext i16 %1303 to i32
  %1305 = add nuw nsw i32 %1300, %1304
  %1306 = shl nuw nsw i32 %1305, 1
  %1307 = trunc i32 %1306 to i16
  %1308 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1307, ptr %1308, align 8, !tbaa !60
  %1309 = load i16, ptr %680, align 2, !tbaa !60
  %1310 = zext i16 %1309 to i32
  %1311 = add nuw nsw i32 %1306, %1310
  %1312 = shl nuw nsw i32 %1311, 1
  %1313 = trunc i32 %1312 to i16
  %1314 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1313, ptr %1314, align 2, !tbaa !60
  %1315 = load i16, ptr %687, align 2, !tbaa !60
  %1316 = zext i16 %1315 to i32
  %1317 = add nuw nsw i32 %1312, %1316
  %1318 = shl nuw nsw i32 %1317, 1
  %1319 = trunc i32 %1318 to i16
  %1320 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1319, ptr %1320, align 4, !tbaa !60
  %1321 = load i16, ptr %694, align 2, !tbaa !60
  %1322 = zext i16 %1321 to i32
  %1323 = add nuw nsw i32 %1318, %1322
  %1324 = shl nuw nsw i32 %1323, 1
  %1325 = trunc i32 %1324 to i16
  %1326 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1325, ptr %1326, align 2, !tbaa !60
  %1327 = load i16, ptr %701, align 2, !tbaa !60
  %1328 = trunc i32 %1324 to i16
  %.tr672 = add i16 %1327, %1328
  %1329 = shl i16 %.tr672, 1
  %1330 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1329, ptr %1330, align 16, !tbaa !60
  %1331 = load i16, ptr %706, align 2, !tbaa !60
  %.tr240 = add i16 %1331, %1329
  %1332 = shl i16 %.tr240, 1
  %1333 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1332, ptr %1333, align 2, !tbaa !60
  %1334 = load i16, ptr %710, align 2, !tbaa !60
  %.tr237 = add i16 %1332, %1334
  %1335 = shl i16 %.tr237, 1
  %1336 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1335, ptr %1336, align 4, !tbaa !60
  %1337 = load i16, ptr %714, align 2, !tbaa !60
  %1338 = add i16 %1335, %1337
  %1339 = shl i16 %1338, 1
  %1340 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1339, ptr %1340, align 2, !tbaa !60
  %1341 = load i16, ptr %719, align 2, !tbaa !60
  %1342 = add i16 %1339, %1341
  %1343 = shl i16 %1342, 1
  %1344 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1343, ptr %1344, align 8, !tbaa !60
  %1345 = load i16, ptr %724, align 2, !tbaa !60
  %1346 = add i16 %1343, %1345
  %1347 = shl i16 %1346, 1
  %1348 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1347, ptr %1348, align 2, !tbaa !60
  %1349 = load i16, ptr %729, align 2, !tbaa !60
  %1350 = add i16 %1347, %1349
  %1351 = shl i16 %1350, 1
  %1352 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1351, ptr %1352, align 4, !tbaa !60
  %1353 = load i16, ptr %734, align 2, !tbaa !60
  %1354 = add i16 %1351, %1353
  %1355 = shl i16 %1354, 1
  %1356 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1355, ptr %1356, align 2, !tbaa !60
  %1357 = icmp slt i32 %870, 0
  br i1 %1357, label %.loopexit257, label %1358

1358:                                             ; preds = %.loopexit260
  %1359 = add nuw i32 %870, 1
  %1360 = zext i32 %1359 to i64
  br label %1361

1361:                                             ; preds = %1414, %1358
  %1362 = phi i64 [ 0, %1358 ], [ %1415, %1414 ]
  %1363 = getelementptr inbounds nuw [4 x i8], ptr %800, i64 %1362
  %1364 = getelementptr inbounds nuw i8, ptr %1363, i64 2
  %1365 = load i16, ptr %1364, align 2, !tbaa !28
  %1366 = icmp eq i16 %1365, 0
  br i1 %1366, label %1414, label %1367

1367:                                             ; preds = %1361
  %1368 = zext i16 %1365 to i32
  %1369 = zext i16 %1365 to i64
  %1370 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %1369
  %1371 = load i16, ptr %1370, align 2, !tbaa !60
  %1372 = add i16 %1371, 1
  store i16 %1372, ptr %1370, align 2, !tbaa !60
  %1373 = and i32 %1368, 3
  %1374 = icmp ult i16 %1365, 4
  br i1 %1374, label %1399, label %1375

1375:                                             ; preds = %1367
  %1376 = and i32 %1368, 65532
  br label %1377

1377:                                             ; preds = %1377, %1375
  %1378 = phi i16 [ %1371, %1375 ], [ %1393, %1377 ]
  %1379 = phi i16 [ 0, %1375 ], [ %1394, %1377 ]
  %1380 = phi i32 [ 0, %1375 ], [ %1395, %1377 ]
  %1381 = and i16 %1378, 1
  %1382 = or disjoint i16 %1379, %1381
  %1383 = shl i16 %1382, 2
  %1384 = and i16 %1378, 2
  %1385 = or disjoint i16 %1383, %1384
  %1386 = lshr i16 %1378, 2
  %1387 = and i16 %1386, 1
  %1388 = or disjoint i16 %1385, %1387
  %1389 = lshr i16 %1378, 3
  %1390 = shl i16 %1388, 1
  %1391 = and i16 %1389, 1
  %1392 = or disjoint i16 %1390, %1391
  %1393 = lshr i16 %1378, 4
  %1394 = shl i16 %1392, 1
  %1395 = add nuw nsw i32 %1380, 4
  %1396 = icmp eq i32 %1395, %1376
  br i1 %1396, label %1397, label %1377, !llvm.loop !66

1397:                                             ; preds = %1377
  %1398 = icmp eq i32 %1373, 0
  br i1 %1398, label %.loopexit256, label %1399

1399:                                             ; preds = %1397, %1367
  %1400 = phi i16 [ %1371, %1367 ], [ %1393, %1397 ]
  %1401 = phi i16 [ 0, %1367 ], [ %1394, %1397 ]
  %1402 = icmp ne i32 %1373, 0
  tail call void @llvm.assume(i1 %1402)
  br label %1403

1403:                                             ; preds = %1403, %1399
  %1404 = phi i16 [ %1400, %1399 ], [ %1409, %1403 ]
  %1405 = phi i16 [ %1401, %1399 ], [ %1410, %1403 ]
  %1406 = phi i32 [ 0, %1399 ], [ %1411, %1403 ]
  %1407 = and i16 %1404, 1
  %1408 = or disjoint i16 %1405, %1407
  %1409 = lshr i16 %1404, 1
  %1410 = shl i16 %1408, 1
  %1411 = add nuw nsw i32 %1406, 1
  %1412 = icmp eq i32 %1411, %1373
  br i1 %1412, label %.loopexit256, label %1403, !llvm.loop !70

.loopexit256:                                     ; preds = %1403, %1397
  %1413 = phi i16 [ %1392, %1397 ], [ %1408, %1403 ]
  store i16 %1413, ptr %1363, align 2, !tbaa !28
  br label %1414

1414:                                             ; preds = %.loopexit256, %1361
  %1415 = add nuw nsw i64 %1362, 1
  %1416 = icmp eq i64 %1415, %1360
  br i1 %1416, label %.loopexit257, label %1361, !llvm.loop !69

.loopexit257:                                     ; preds = %1414, %.loopexit260
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %1417 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1418 = load i32, ptr %236, align 8, !tbaa !71
  %1419 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %1420 = load i16, ptr %1419, align 2, !tbaa !28
  %1421 = sext i32 %1418 to i64
  %1422 = getelementptr [4 x i8], ptr %1417, i64 %1421
  %1423 = getelementptr i8, ptr %1422, i64 6
  store i16 -1, ptr %1423, align 2, !tbaa !28
  %1424 = icmp slt i32 %1418, 0
  br i1 %1424, label %.loopexit255, label %1425

1425:                                             ; preds = %.loopexit257
  %1426 = icmp eq i16 %1420, 0
  %1427 = select i1 %1426, i32 3, i32 4
  %1428 = select i1 %1426, i32 138, i32 7
  %1429 = zext i16 %1420 to i32
  %1430 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1431 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1432 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1433 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1434 = add nuw i32 %1418, 1
  %1435 = zext i32 %1434 to i64
  br label %1436

1436:                                             ; preds = %1485, %1425
  %1437 = phi i64 [ 0, %1425 ], [ %1443, %1485 ]
  %1438 = phi i32 [ %1427, %1425 ], [ %1489, %1485 ]
  %1439 = phi i32 [ %1428, %1425 ], [ %1488, %1485 ]
  %1440 = phi i32 [ 0, %1425 ], [ %1487, %1485 ]
  %1441 = phi i32 [ %1429, %1425 ], [ %1447, %1485 ]
  %1442 = phi i32 [ -1, %1425 ], [ %1486, %1485 ]
  %1443 = add nuw nsw i64 %1437, 1
  %1444 = getelementptr inbounds nuw [4 x i8], ptr %1417, i64 %1443
  %1445 = getelementptr inbounds nuw i8, ptr %1444, i64 2
  %1446 = load i16, ptr %1445, align 2, !tbaa !28
  %1447 = zext i16 %1446 to i32
  %1448 = add nsw i32 %1440, 1
  %1449 = icmp slt i32 %1448, %1439
  %1450 = icmp eq i32 %1441, %1447
  %1451 = select i1 %1449, i1 %1450, i1 false
  br i1 %1451, label %1485, label %1452

1452:                                             ; preds = %1436
  %1453 = icmp slt i32 %1448, %1438
  br i1 %1453, label %1454, label %1460

1454:                                             ; preds = %1452
  %1455 = zext nneg i32 %1441 to i64
  %1456 = getelementptr inbounds nuw [4 x i8], ptr %1430, i64 %1455
  %1457 = load i16, ptr %1456, align 4, !tbaa !28
  %1458 = trunc i32 %1448 to i16
  %1459 = add i16 %1457, %1458
  store i16 %1459, ptr %1456, align 4, !tbaa !28
  br label %1480

1460:                                             ; preds = %1452
  %1461 = icmp eq i32 %1441, 0
  br i1 %1461, label %1472, label %1462

1462:                                             ; preds = %1460
  %1463 = icmp eq i32 %1441, %1442
  br i1 %1463, label %1469, label %1464

1464:                                             ; preds = %1462
  %1465 = zext nneg i32 %1441 to i64
  %1466 = getelementptr inbounds nuw [4 x i8], ptr %1430, i64 %1465
  %1467 = load i16, ptr %1466, align 4, !tbaa !28
  %1468 = add i16 %1467, 1
  store i16 %1468, ptr %1466, align 4, !tbaa !28
  br label %1469

1469:                                             ; preds = %1464, %1462
  %1470 = load i16, ptr %1431, align 4, !tbaa !28
  %1471 = add i16 %1470, 1
  store i16 %1471, ptr %1431, align 4, !tbaa !28
  br label %1480

1472:                                             ; preds = %1460
  %1473 = icmp slt i32 %1440, 10
  br i1 %1473, label %1474, label %1477

1474:                                             ; preds = %1472
  %1475 = load i16, ptr %1433, align 4, !tbaa !28
  %1476 = add i16 %1475, 1
  store i16 %1476, ptr %1433, align 4, !tbaa !28
  br label %1480

1477:                                             ; preds = %1472
  %1478 = load i16, ptr %1432, align 4, !tbaa !28
  %1479 = add i16 %1478, 1
  store i16 %1479, ptr %1432, align 4, !tbaa !28
  br label %1480

1480:                                             ; preds = %1477, %1474, %1469, %1454
  %1481 = icmp eq i16 %1446, 0
  br i1 %1481, label %1485, label %1482

1482:                                             ; preds = %1480
  %1483 = select i1 %1450, i32 6, i32 7
  %1484 = select i1 %1450, i32 3, i32 4
  br label %1485

1485:                                             ; preds = %1482, %1480, %1436
  %1486 = phi i32 [ %1442, %1436 ], [ %1441, %1480 ], [ %1441, %1482 ]
  %1487 = phi i32 [ %1448, %1436 ], [ 0, %1480 ], [ 0, %1482 ]
  %1488 = phi i32 [ %1439, %1436 ], [ 138, %1480 ], [ %1483, %1482 ]
  %1489 = phi i32 [ %1438, %1436 ], [ 3, %1480 ], [ %1484, %1482 ]
  %1490 = icmp eq i64 %1443, %1435
  br i1 %1490, label %.loopexit255, label %1436, !llvm.loop !72

.loopexit255:                                     ; preds = %1485, %.loopexit257
  %1491 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %1492 = load i32, ptr %872, align 8, !tbaa !73
  %1493 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %1494 = load i16, ptr %1493, align 2, !tbaa !28
  %1495 = sext i32 %1492 to i64
  %1496 = getelementptr [4 x i8], ptr %1491, i64 %1495
  %1497 = getelementptr i8, ptr %1496, i64 6
  store i16 -1, ptr %1497, align 2, !tbaa !28
  %1498 = icmp slt i32 %1492, 0
  br i1 %1498, label %.loopexit254, label %1499

1499:                                             ; preds = %.loopexit255
  %1500 = icmp eq i16 %1494, 0
  %1501 = select i1 %1500, i32 3, i32 4
  %1502 = select i1 %1500, i32 138, i32 7
  %1503 = zext i16 %1494 to i32
  %1504 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1505 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1506 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1507 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1508 = add nuw i32 %1492, 1
  %1509 = zext i32 %1508 to i64
  br label %1510

1510:                                             ; preds = %1559, %1499
  %1511 = phi i64 [ 0, %1499 ], [ %1517, %1559 ]
  %1512 = phi i32 [ %1501, %1499 ], [ %1563, %1559 ]
  %1513 = phi i32 [ %1502, %1499 ], [ %1562, %1559 ]
  %1514 = phi i32 [ 0, %1499 ], [ %1561, %1559 ]
  %1515 = phi i32 [ %1503, %1499 ], [ %1521, %1559 ]
  %1516 = phi i32 [ -1, %1499 ], [ %1560, %1559 ]
  %1517 = add nuw nsw i64 %1511, 1
  %1518 = getelementptr inbounds nuw [4 x i8], ptr %1491, i64 %1517
  %1519 = getelementptr inbounds nuw i8, ptr %1518, i64 2
  %1520 = load i16, ptr %1519, align 2, !tbaa !28
  %1521 = zext i16 %1520 to i32
  %1522 = add nsw i32 %1514, 1
  %1523 = icmp slt i32 %1522, %1513
  %1524 = icmp eq i32 %1515, %1521
  %1525 = select i1 %1523, i1 %1524, i1 false
  br i1 %1525, label %1559, label %1526

1526:                                             ; preds = %1510
  %1527 = icmp slt i32 %1522, %1512
  br i1 %1527, label %1528, label %1534

1528:                                             ; preds = %1526
  %1529 = zext nneg i32 %1515 to i64
  %1530 = getelementptr inbounds nuw [4 x i8], ptr %1504, i64 %1529
  %1531 = load i16, ptr %1530, align 4, !tbaa !28
  %1532 = trunc i32 %1522 to i16
  %1533 = add i16 %1531, %1532
  store i16 %1533, ptr %1530, align 4, !tbaa !28
  br label %1554

1534:                                             ; preds = %1526
  %1535 = icmp eq i32 %1515, 0
  br i1 %1535, label %1546, label %1536

1536:                                             ; preds = %1534
  %1537 = icmp eq i32 %1515, %1516
  br i1 %1537, label %1543, label %1538

1538:                                             ; preds = %1536
  %1539 = zext nneg i32 %1515 to i64
  %1540 = getelementptr inbounds nuw [4 x i8], ptr %1504, i64 %1539
  %1541 = load i16, ptr %1540, align 4, !tbaa !28
  %1542 = add i16 %1541, 1
  store i16 %1542, ptr %1540, align 4, !tbaa !28
  br label %1543

1543:                                             ; preds = %1538, %1536
  %1544 = load i16, ptr %1505, align 4, !tbaa !28
  %1545 = add i16 %1544, 1
  store i16 %1545, ptr %1505, align 4, !tbaa !28
  br label %1554

1546:                                             ; preds = %1534
  %1547 = icmp slt i32 %1514, 10
  br i1 %1547, label %1548, label %1551

1548:                                             ; preds = %1546
  %1549 = load i16, ptr %1507, align 4, !tbaa !28
  %1550 = add i16 %1549, 1
  store i16 %1550, ptr %1507, align 4, !tbaa !28
  br label %1554

1551:                                             ; preds = %1546
  %1552 = load i16, ptr %1506, align 4, !tbaa !28
  %1553 = add i16 %1552, 1
  store i16 %1553, ptr %1506, align 4, !tbaa !28
  br label %1554

1554:                                             ; preds = %1551, %1548, %1543, %1528
  %1555 = icmp eq i16 %1520, 0
  br i1 %1555, label %1559, label %1556

1556:                                             ; preds = %1554
  %1557 = select i1 %1524, i32 6, i32 7
  %1558 = select i1 %1524, i32 3, i32 4
  br label %1559

1559:                                             ; preds = %1556, %1554, %1510
  %1560 = phi i32 [ %1516, %1510 ], [ %1515, %1554 ], [ %1515, %1556 ]
  %1561 = phi i32 [ %1522, %1510 ], [ 0, %1554 ], [ 0, %1556 ]
  %1562 = phi i32 [ %1513, %1510 ], [ 138, %1554 ], [ %1557, %1556 ]
  %1563 = phi i32 [ %1512, %1510 ], [ 3, %1554 ], [ %1558, %1556 ]
  %1564 = icmp eq i64 %1517, %1509
  br i1 %1564, label %.loopexit254, label %1510, !llvm.loop !72

.loopexit254:                                     ; preds = %1559, %.loopexit255
  %1565 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1566 = load ptr, ptr %1565, align 8, !tbaa !41
  %1567 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1568 = load ptr, ptr %1567, align 8, !tbaa !42
  %1569 = load ptr, ptr %1568, align 8, !tbaa !43
  %1570 = getelementptr inbounds nuw i8, ptr %1568, i64 20
  %1571 = load i32, ptr %1570, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %1572 = icmp sgt i32 %1571, 0
  br i1 %1572, label %1573, label %1578

1573:                                             ; preds = %.loopexit254
  %1574 = zext nneg i32 %1571 to i64
  br label %1584

1575:                                             ; preds = %1599
  %1576 = load i32, ptr %164, align 4, !tbaa !47
  %1577 = icmp slt i32 %1576, 2
  br i1 %1577, label %1578, label %.loopexit253

1578:                                             ; preds = %1575, %.loopexit254
  %1579 = phi i32 [ %1600, %1575 ], [ -1, %.loopexit254 ]
  %1580 = phi i32 [ %1576, %1575 ], [ 0, %.loopexit254 ]
  %1581 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1582 = icmp eq ptr %1569, null
  %1583 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1603

1584:                                             ; preds = %1599, %1573
  %1585 = phi i64 [ 0, %1573 ], [ %1601, %1599 ]
  %1586 = phi i32 [ -1, %1573 ], [ %1600, %1599 ]
  %1587 = getelementptr inbounds nuw [4 x i8], ptr %1566, i64 %1585
  %1588 = load i16, ptr %1587, align 2, !tbaa !28
  %1589 = icmp eq i16 %1588, 0
  br i1 %1589, label %1597, label %1590

1590:                                             ; preds = %1584
  %1591 = load i32, ptr %164, align 4, !tbaa !47
  %1592 = add nsw i32 %1591, 1
  store i32 %1592, ptr %164, align 4, !tbaa !47
  %1593 = sext i32 %1592 to i64
  %1594 = getelementptr inbounds [4 x i8], ptr %237, i64 %1593
  %1595 = trunc nuw nsw i64 %1585 to i32
  store i32 %1595, ptr %1594, align 4, !tbaa !4
  %1596 = getelementptr inbounds nuw i8, ptr %238, i64 %1585
  store i8 0, ptr %1596, align 1, !tbaa !28
  br label %1599

1597:                                             ; preds = %1584
  %1598 = getelementptr inbounds nuw i8, ptr %1587, i64 2
  store i16 0, ptr %1598, align 2, !tbaa !28
  br label %1599

1599:                                             ; preds = %1597, %1590
  %1600 = phi i32 [ %1595, %1590 ], [ %1586, %1597 ]
  %1601 = add nuw nsw i64 %1585, 1
  %1602 = icmp eq i64 %1601, %1574
  br i1 %1602, label %1575, label %1584, !llvm.loop !49

1603:                                             ; preds = %1633, %1578
  %1604 = phi i32 [ %1580, %1578 ], [ %1634, %1633 ]
  %1605 = phi i32 [ %1579, %1578 ], [ %1608, %1633 ]
  %1606 = icmp slt i32 %1605, 2
  %1607 = add nsw i32 %1605, 1
  %1608 = select i1 %1606, i32 %1607, i32 %1605
  %1609 = select i1 %1606, i32 %1607, i32 0
  %1610 = add nsw i32 %1604, 1
  store i32 %1610, ptr %164, align 4, !tbaa !47
  %1611 = sext i32 %1610 to i64
  %1612 = getelementptr inbounds [4 x i8], ptr %237, i64 %1611
  store i32 %1609, ptr %1612, align 4, !tbaa !4
  %1613 = sext i32 %1609 to i64
  %1614 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1613
  store i16 1, ptr %1614, align 2, !tbaa !28
  %1615 = getelementptr inbounds i8, ptr %238, i64 %1613
  store i8 0, ptr %1615, align 1, !tbaa !28
  %1616 = load i64, ptr %1581, align 8, !tbaa !50
  %1617 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1616, i64 1), !nosanitize !31
  %1618 = extractvalue { i64, i1 } %1617, 1, !nosanitize !31
  br i1 %1618, label %1619, label %1620, !prof !32, !nosanitize !31

1619:                                             ; preds = %1603
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !31
  unreachable, !nosanitize !31

1620:                                             ; preds = %1603
  %1621 = extractvalue { i64, i1 } %1617, 0, !nosanitize !31
  store i64 %1621, ptr %1581, align 8, !tbaa !50
  br i1 %1582, label %1633, label %1622

1622:                                             ; preds = %1620
  %1623 = getelementptr inbounds [4 x i8], ptr %1569, i64 %1613
  %1624 = getelementptr inbounds nuw i8, ptr %1623, i64 2
  %1625 = load i16, ptr %1624, align 2, !tbaa !28
  %1626 = zext i16 %1625 to i64
  %1627 = load i64, ptr %1583, align 8, !tbaa !51
  %1628 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1627, i64 %1626), !nosanitize !31
  %1629 = extractvalue { i64, i1 } %1628, 1, !nosanitize !31
  br i1 %1629, label %1630, label %1631, !prof !32, !nosanitize !31

1630:                                             ; preds = %1622
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !31
  unreachable, !nosanitize !31

1631:                                             ; preds = %1622
  %1632 = extractvalue { i64, i1 } %1628, 0, !nosanitize !31
  store i64 %1632, ptr %1583, align 8, !tbaa !51
  br label %1633

1633:                                             ; preds = %1631, %1620
  %1634 = load i32, ptr %164, align 4, !tbaa !47
  %1635 = icmp slt i32 %1634, 2
  br i1 %1635, label %1603, label %.loopexit253, !llvm.loop !52

.loopexit253:                                     ; preds = %1633, %1575
  %1636 = phi i32 [ %1600, %1575 ], [ %1608, %1633 ]
  %1637 = phi i32 [ %1576, %1575 ], [ %1634, %1633 ]
  %1638 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1636, ptr %1638, align 8, !tbaa !53
  %1639 = lshr i32 %1637, 1
  %1640 = zext nneg i32 %1639 to i64
  br label %1644

1641:                                             ; preds = %.loopexit252
  %1642 = load i32, ptr %164, align 4, !tbaa !47
  %1643 = sext i32 %1571 to i64
  br label %1715

1644:                                             ; preds = %.loopexit252, %.loopexit253
  %1645 = phi i64 [ %1640, %.loopexit253 ], [ %1713, %.loopexit252 ]
  %1646 = getelementptr inbounds nuw [4 x i8], ptr %237, i64 %1645
  %1647 = load i32, ptr %1646, align 4, !tbaa !4
  %1648 = sext i32 %1647 to i64
  %1649 = getelementptr inbounds i8, ptr %238, i64 %1648
  %1650 = load i32, ptr %164, align 4, !tbaa !47
  %1651 = trunc i64 %1645 to i32
  %1652 = shl i32 %1651, 1
  %1653 = icmp sgt i32 %1652, %1650
  br i1 %1653, label %.loopexit252, label %1654

1654:                                             ; preds = %1644
  %1655 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1648
  br label %1656

1656:                                             ; preds = %1704, %1654
  %1657 = phi i32 [ %1650, %1654 ], [ %1708, %1704 ]
  %1658 = phi i32 [ %1652, %1654 ], [ %1707, %1704 ]
  %1659 = phi i32 [ %1651, %1654 ], [ %1689, %1704 ]
  %1660 = icmp slt i32 %1658, %1657
  br i1 %1660, label %1663, label %1661

1661:                                             ; preds = %1656
  %1662 = sext i32 %1658 to i64
  br label %1687

1663:                                             ; preds = %1656
  %1664 = or disjoint i32 %1658, 1
  %1665 = sext i32 %1664 to i64
  %1666 = getelementptr inbounds [4 x i8], ptr %237, i64 %1665
  %1667 = load i32, ptr %1666, align 4, !tbaa !4
  %1668 = sext i32 %1667 to i64
  %1669 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1668
  %1670 = load i16, ptr %1669, align 2, !tbaa !28
  %1671 = sext i32 %1658 to i64
  %1672 = getelementptr inbounds [4 x i8], ptr %237, i64 %1671
  %1673 = load i32, ptr %1672, align 4, !tbaa !4
  %1674 = sext i32 %1673 to i64
  %1675 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1674
  %1676 = load i16, ptr %1675, align 2, !tbaa !28
  %1677 = icmp ult i16 %1670, %1676
  br i1 %1677, label %1686, label %1678

1678:                                             ; preds = %1663
  %1679 = icmp eq i16 %1670, %1676
  br i1 %1679, label %1680, label %1687

1680:                                             ; preds = %1678
  %1681 = getelementptr inbounds i8, ptr %238, i64 %1668
  %1682 = load i8, ptr %1681, align 1, !tbaa !28
  %1683 = getelementptr inbounds i8, ptr %238, i64 %1674
  %1684 = load i8, ptr %1683, align 1, !tbaa !28
  %1685 = icmp ugt i8 %1682, %1684
  br i1 %1685, label %1687, label %1686

1686:                                             ; preds = %1680, %1663
  br label %1687

1687:                                             ; preds = %1686, %1680, %1678, %1661
  %1688 = phi i64 [ %1662, %1661 ], [ %1665, %1686 ], [ %1671, %1680 ], [ %1671, %1678 ]
  %1689 = phi i32 [ %1658, %1661 ], [ %1664, %1686 ], [ %1658, %1680 ], [ %1658, %1678 ]
  %1690 = load i16, ptr %1655, align 2, !tbaa !28
  %1691 = getelementptr inbounds [4 x i8], ptr %237, i64 %1688
  %1692 = load i32, ptr %1691, align 4, !tbaa !4
  %1693 = sext i32 %1692 to i64
  %1694 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1693
  %1695 = load i16, ptr %1694, align 2, !tbaa !28
  %1696 = icmp ult i16 %1690, %1695
  br i1 %1696, label %.loopexit252, label %1697

1697:                                             ; preds = %1687
  %1698 = icmp eq i16 %1690, %1695
  br i1 %1698, label %1699, label %1704

1699:                                             ; preds = %1697
  %1700 = load i8, ptr %1649, align 1, !tbaa !28
  %1701 = getelementptr inbounds i8, ptr %238, i64 %1693
  %1702 = load i8, ptr %1701, align 1, !tbaa !28
  %1703 = icmp ugt i8 %1700, %1702
  br i1 %1703, label %1704, label %.loopexit252

1704:                                             ; preds = %1699, %1697
  %1705 = sext i32 %1659 to i64
  %1706 = getelementptr inbounds [4 x i8], ptr %237, i64 %1705
  store i32 %1692, ptr %1706, align 4, !tbaa !4
  %1707 = shl i32 %1689, 1
  %1708 = load i32, ptr %164, align 4, !tbaa !47
  %1709 = icmp sgt i32 %1707, %1708
  br i1 %1709, label %.loopexit252, label %1656, !llvm.loop !54

.loopexit252:                                     ; preds = %1704, %1699, %1687, %1644
  %1710 = phi i32 [ %1651, %1644 ], [ %1659, %1687 ], [ %1659, %1699 ], [ %1689, %1704 ]
  %1711 = sext i32 %1710 to i64
  %1712 = getelementptr inbounds [4 x i8], ptr %237, i64 %1711
  store i32 %1647, ptr %1712, align 4, !tbaa !4
  %1713 = add nsw i64 %1645, -1
  %1714 = icmp sgt i64 %1645, 1
  br i1 %1714, label %1644, label %1641, !llvm.loop !55

1715:                                             ; preds = %1875, %1641
  %1716 = phi i32 [ %1642, %1641 ], [ %1878, %1875 ]
  %1717 = phi i64 [ %1643, %1641 ], [ %1816, %1875 ]
  %1718 = load i32, ptr %243, align 4, !tbaa !4
  %1719 = add nsw i32 %1716, -1
  store i32 %1719, ptr %164, align 4, !tbaa !47
  %1720 = sext i32 %1716 to i64
  %1721 = getelementptr inbounds [4 x i8], ptr %237, i64 %1720
  %1722 = load i32, ptr %1721, align 4, !tbaa !4
  store i32 %1722, ptr %243, align 4, !tbaa !4
  %1723 = sext i32 %1722 to i64
  %1724 = getelementptr inbounds i8, ptr %238, i64 %1723
  %1725 = icmp slt i32 %1716, 3
  br i1 %1725, label %1785, label %1726

1726:                                             ; preds = %1715
  %1727 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1723
  br label %1728

1728:                                             ; preds = %1776, %1726
  %1729 = phi i32 [ %1719, %1726 ], [ %1780, %1776 ]
  %1730 = phi i32 [ 2, %1726 ], [ %1779, %1776 ]
  %1731 = phi i32 [ 1, %1726 ], [ %1761, %1776 ]
  %1732 = icmp slt i32 %1730, %1729
  br i1 %1732, label %1735, label %1733

1733:                                             ; preds = %1728
  %1734 = sext i32 %1730 to i64
  br label %1759

1735:                                             ; preds = %1728
  %1736 = or disjoint i32 %1730, 1
  %1737 = sext i32 %1736 to i64
  %1738 = getelementptr inbounds [4 x i8], ptr %237, i64 %1737
  %1739 = load i32, ptr %1738, align 4, !tbaa !4
  %1740 = sext i32 %1739 to i64
  %1741 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1740
  %1742 = load i16, ptr %1741, align 2, !tbaa !28
  %1743 = sext i32 %1730 to i64
  %1744 = getelementptr inbounds [4 x i8], ptr %237, i64 %1743
  %1745 = load i32, ptr %1744, align 4, !tbaa !4
  %1746 = sext i32 %1745 to i64
  %1747 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1746
  %1748 = load i16, ptr %1747, align 2, !tbaa !28
  %1749 = icmp ult i16 %1742, %1748
  br i1 %1749, label %1758, label %1750

1750:                                             ; preds = %1735
  %1751 = icmp eq i16 %1742, %1748
  br i1 %1751, label %1752, label %1759

1752:                                             ; preds = %1750
  %1753 = getelementptr inbounds i8, ptr %238, i64 %1740
  %1754 = load i8, ptr %1753, align 1, !tbaa !28
  %1755 = getelementptr inbounds i8, ptr %238, i64 %1746
  %1756 = load i8, ptr %1755, align 1, !tbaa !28
  %1757 = icmp ugt i8 %1754, %1756
  br i1 %1757, label %1759, label %1758

1758:                                             ; preds = %1752, %1735
  br label %1759

1759:                                             ; preds = %1758, %1752, %1750, %1733
  %1760 = phi i64 [ %1734, %1733 ], [ %1737, %1758 ], [ %1743, %1752 ], [ %1743, %1750 ]
  %1761 = phi i32 [ %1730, %1733 ], [ %1736, %1758 ], [ %1730, %1752 ], [ %1730, %1750 ]
  %1762 = load i16, ptr %1727, align 2, !tbaa !28
  %1763 = getelementptr inbounds [4 x i8], ptr %237, i64 %1760
  %1764 = load i32, ptr %1763, align 4, !tbaa !4
  %1765 = sext i32 %1764 to i64
  %1766 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1765
  %1767 = load i16, ptr %1766, align 2, !tbaa !28
  %1768 = icmp ult i16 %1762, %1767
  br i1 %1768, label %1782, label %1769

1769:                                             ; preds = %1759
  %1770 = icmp eq i16 %1762, %1767
  br i1 %1770, label %1771, label %1776

1771:                                             ; preds = %1769
  %1772 = load i8, ptr %1724, align 1, !tbaa !28
  %1773 = getelementptr inbounds i8, ptr %238, i64 %1765
  %1774 = load i8, ptr %1773, align 1, !tbaa !28
  %1775 = icmp ugt i8 %1772, %1774
  br i1 %1775, label %1776, label %1782

1776:                                             ; preds = %1771, %1769
  %1777 = sext i32 %1731 to i64
  %1778 = getelementptr inbounds [4 x i8], ptr %237, i64 %1777
  store i32 %1764, ptr %1778, align 4, !tbaa !4
  %1779 = shl i32 %1761, 1
  %1780 = load i32, ptr %164, align 4, !tbaa !47
  %1781 = icmp sgt i32 %1779, %1780
  br i1 %1781, label %1782, label %1728, !llvm.loop !54

1782:                                             ; preds = %1776, %1771, %1759
  %1783 = phi i32 [ %1731, %1759 ], [ %1731, %1771 ], [ %1761, %1776 ]
  %1784 = sext i32 %1783 to i64
  br label %1785

1785:                                             ; preds = %1782, %1715
  %1786 = phi i64 [ 1, %1715 ], [ %1784, %1782 ]
  %1787 = getelementptr inbounds [4 x i8], ptr %237, i64 %1786
  store i32 %1722, ptr %1787, align 4, !tbaa !4
  %1788 = load i32, ptr %243, align 4, !tbaa !4
  %1789 = load i32, ptr %165, align 8, !tbaa !48
  %1790 = add nsw i32 %1789, -1
  store i32 %1790, ptr %165, align 8, !tbaa !48
  %1791 = sext i32 %1790 to i64
  %1792 = getelementptr inbounds [4 x i8], ptr %237, i64 %1791
  store i32 %1718, ptr %1792, align 4, !tbaa !4
  %1793 = load i32, ptr %165, align 8, !tbaa !48
  %1794 = add nsw i32 %1793, -1
  store i32 %1794, ptr %165, align 8, !tbaa !48
  %1795 = sext i32 %1794 to i64
  %1796 = getelementptr inbounds [4 x i8], ptr %237, i64 %1795
  store i32 %1788, ptr %1796, align 4, !tbaa !4
  %1797 = sext i32 %1718 to i64
  %1798 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1797
  %1799 = load i16, ptr %1798, align 2, !tbaa !28
  %1800 = sext i32 %1788 to i64
  %1801 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1800
  %1802 = load i16, ptr %1801, align 2, !tbaa !28
  %1803 = add i16 %1802, %1799
  %1804 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1717
  store i16 %1803, ptr %1804, align 2, !tbaa !28
  %1805 = getelementptr inbounds i8, ptr %238, i64 %1797
  %1806 = load i8, ptr %1805, align 1, !tbaa !28
  %1807 = getelementptr inbounds i8, ptr %238, i64 %1800
  %1808 = load i8, ptr %1807, align 1, !tbaa !28
  %1809 = tail call i8 @llvm.umax.i8(i8 %1806, i8 %1808)
  %1810 = add i8 %1809, 1
  %1811 = getelementptr inbounds i8, ptr %238, i64 %1717
  store i8 %1810, ptr %1811, align 1, !tbaa !28
  %1812 = trunc nsw i64 %1717 to i32
  %1813 = trunc i64 %1717 to i16
  %1814 = getelementptr inbounds nuw i8, ptr %1801, i64 2
  store i16 %1813, ptr %1814, align 2, !tbaa !28
  %1815 = getelementptr inbounds nuw i8, ptr %1798, i64 2
  store i16 %1813, ptr %1815, align 2, !tbaa !28
  %1816 = add nsw i64 %1717, 1
  store i32 %1812, ptr %243, align 4, !tbaa !4
  %1817 = load i32, ptr %164, align 4, !tbaa !47
  %1818 = icmp slt i32 %1817, 2
  br i1 %1818, label %1875, label %.preheader251

.preheader251:                                    ; preds = %1785, %1866
  %1819 = phi i32 [ %1870, %1866 ], [ %1817, %1785 ]
  %1820 = phi i32 [ %1869, %1866 ], [ 2, %1785 ]
  %1821 = phi i32 [ %1851, %1866 ], [ 1, %1785 ]
  %1822 = icmp slt i32 %1820, %1819
  br i1 %1822, label %1825, label %1823

1823:                                             ; preds = %.preheader251
  %1824 = sext i32 %1820 to i64
  br label %1849

1825:                                             ; preds = %.preheader251
  %1826 = or disjoint i32 %1820, 1
  %1827 = sext i32 %1826 to i64
  %1828 = getelementptr inbounds [4 x i8], ptr %237, i64 %1827
  %1829 = load i32, ptr %1828, align 4, !tbaa !4
  %1830 = sext i32 %1829 to i64
  %1831 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1830
  %1832 = load i16, ptr %1831, align 2, !tbaa !28
  %1833 = sext i32 %1820 to i64
  %1834 = getelementptr inbounds [4 x i8], ptr %237, i64 %1833
  %1835 = load i32, ptr %1834, align 4, !tbaa !4
  %1836 = sext i32 %1835 to i64
  %1837 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1836
  %1838 = load i16, ptr %1837, align 2, !tbaa !28
  %1839 = icmp ult i16 %1832, %1838
  br i1 %1839, label %1848, label %1840

1840:                                             ; preds = %1825
  %1841 = icmp eq i16 %1832, %1838
  br i1 %1841, label %1842, label %1849

1842:                                             ; preds = %1840
  %1843 = getelementptr inbounds i8, ptr %238, i64 %1830
  %1844 = load i8, ptr %1843, align 1, !tbaa !28
  %1845 = getelementptr inbounds i8, ptr %238, i64 %1836
  %1846 = load i8, ptr %1845, align 1, !tbaa !28
  %1847 = icmp ugt i8 %1844, %1846
  br i1 %1847, label %1849, label %1848

1848:                                             ; preds = %1842, %1825
  br label %1849

1849:                                             ; preds = %1848, %1842, %1840, %1823
  %1850 = phi i64 [ %1824, %1823 ], [ %1827, %1848 ], [ %1833, %1842 ], [ %1833, %1840 ]
  %1851 = phi i32 [ %1820, %1823 ], [ %1826, %1848 ], [ %1820, %1842 ], [ %1820, %1840 ]
  %1852 = load i16, ptr %1804, align 2, !tbaa !28
  %1853 = getelementptr inbounds [4 x i8], ptr %237, i64 %1850
  %1854 = load i32, ptr %1853, align 4, !tbaa !4
  %1855 = sext i32 %1854 to i64
  %1856 = getelementptr inbounds [4 x i8], ptr %1566, i64 %1855
  %1857 = load i16, ptr %1856, align 2, !tbaa !28
  %1858 = icmp ult i16 %1852, %1857
  br i1 %1858, label %1872, label %1859

1859:                                             ; preds = %1849
  %1860 = icmp eq i16 %1852, %1857
  br i1 %1860, label %1861, label %1866

1861:                                             ; preds = %1859
  %1862 = load i8, ptr %1811, align 1, !tbaa !28
  %1863 = getelementptr inbounds i8, ptr %238, i64 %1855
  %1864 = load i8, ptr %1863, align 1, !tbaa !28
  %1865 = icmp ugt i8 %1862, %1864
  br i1 %1865, label %1866, label %1872

1866:                                             ; preds = %1861, %1859
  %1867 = sext i32 %1821 to i64
  %1868 = getelementptr inbounds [4 x i8], ptr %237, i64 %1867
  store i32 %1854, ptr %1868, align 4, !tbaa !4
  %1869 = shl i32 %1851, 1
  %1870 = load i32, ptr %164, align 4, !tbaa !47
  %1871 = icmp sgt i32 %1869, %1870
  br i1 %1871, label %1872, label %.preheader251, !llvm.loop !54

1872:                                             ; preds = %1866, %1861, %1849
  %1873 = phi i32 [ %1821, %1849 ], [ %1821, %1861 ], [ %1851, %1866 ]
  %1874 = sext i32 %1873 to i64
  br label %1875

1875:                                             ; preds = %1872, %1785
  %1876 = phi i64 [ 1, %1785 ], [ %1874, %1872 ]
  %1877 = getelementptr inbounds [4 x i8], ptr %237, i64 %1876
  store i32 %1812, ptr %1877, align 4, !tbaa !4
  %1878 = load i32, ptr %164, align 4, !tbaa !47
  %1879 = icmp sgt i32 %1878, 1
  br i1 %1879, label %1715, label %1880, !llvm.loop !56

1880:                                             ; preds = %1875
  %1881 = load i32, ptr %243, align 4, !tbaa !4
  %1882 = load i32, ptr %165, align 8, !tbaa !48
  %1883 = add nsw i32 %1882, -1
  store i32 %1883, ptr %165, align 8, !tbaa !48
  %1884 = sext i32 %1883 to i64
  %1885 = getelementptr inbounds [4 x i8], ptr %237, i64 %1884
  store i32 %1881, ptr %1885, align 4, !tbaa !4
  %1886 = load ptr, ptr %1565, align 8, !tbaa !41
  %1887 = load i32, ptr %1638, align 8, !tbaa !53
  %1888 = load ptr, ptr %1567, align 8, !tbaa !42
  %1889 = load ptr, ptr %1888, align 8, !tbaa !43
  %1890 = getelementptr inbounds nuw i8, ptr %1888, i64 8
  %1891 = load ptr, ptr %1890, align 8, !tbaa !57
  %1892 = getelementptr inbounds nuw i8, ptr %1888, i64 16
  %1893 = load i32, ptr %1892, align 8, !tbaa !58
  %1894 = getelementptr inbounds nuw i8, ptr %1888, i64 24
  %1895 = load i32, ptr %1894, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %497, i8 0, i64 32, i1 false), !tbaa !60
  %1896 = load i32, ptr %165, align 8, !tbaa !48
  %1897 = sext i32 %1896 to i64
  %1898 = getelementptr inbounds [4 x i8], ptr %237, i64 %1897
  %1899 = load i32, ptr %1898, align 4, !tbaa !4
  %1900 = sext i32 %1899 to i64
  %1901 = getelementptr inbounds [4 x i8], ptr %1886, i64 %1900
  %1902 = getelementptr inbounds nuw i8, ptr %1901, i64 2
  store i16 0, ptr %1902, align 2, !tbaa !28
  %1903 = load i32, ptr %165, align 8, !tbaa !48
  %1904 = icmp slt i32 %1903, 572
  br i1 %1904, label %1905, label %.loopexit250

1905:                                             ; preds = %1880
  %1906 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1907 = icmp eq ptr %1889, null
  %1908 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1909 = sext i32 %1903 to i64
  %1910 = add nsw i64 %1909, 1
  br label %1911

1911:                                             ; preds = %1970, %1905
  %1912 = phi i64 [ %1910, %1905 ], [ %1971, %1970 ]
  %1913 = phi i32 [ 0, %1905 ], [ %1929, %1970 ]
  %1914 = getelementptr inbounds [4 x i8], ptr %237, i64 %1912
  %1915 = load i32, ptr %1914, align 4, !tbaa !4
  %1916 = sext i32 %1915 to i64
  %1917 = getelementptr inbounds [4 x i8], ptr %1886, i64 %1916
  %1918 = getelementptr inbounds nuw i8, ptr %1917, i64 2
  %1919 = load i16, ptr %1918, align 2, !tbaa !28
  %1920 = zext i16 %1919 to i64
  %1921 = getelementptr inbounds nuw [4 x i8], ptr %1886, i64 %1920
  %1922 = getelementptr inbounds nuw i8, ptr %1921, i64 2
  %1923 = load i16, ptr %1922, align 2, !tbaa !28
  %1924 = zext i16 %1923 to i32
  %1925 = add nuw nsw i32 %1924, 1
  %1926 = icmp sle i32 %1895, %1924
  %1927 = select i1 %1926, i32 %1895, i32 %1925
  %1928 = zext i1 %1926 to i32
  %1929 = add nuw nsw i32 %1913, %1928
  %1930 = trunc i32 %1927 to i16
  store i16 %1930, ptr %1918, align 2, !tbaa !28
  %1931 = icmp sgt i32 %1915, %1887
  br i1 %1931, label %1970, label %1932

1932:                                             ; preds = %1911
  %1933 = sext i32 %1927 to i64
  %1934 = getelementptr inbounds [2 x i8], ptr %497, i64 %1933
  %1935 = load i16, ptr %1934, align 2, !tbaa !60
  %1936 = add i16 %1935, 1
  store i16 %1936, ptr %1934, align 2, !tbaa !60
  %1937 = icmp slt i32 %1915, %1893
  br i1 %1937, label %1943, label %1938

1938:                                             ; preds = %1932
  %1939 = sub nsw i32 %1915, %1893
  %1940 = zext nneg i32 %1939 to i64
  %1941 = getelementptr inbounds nuw [4 x i8], ptr %1891, i64 %1940
  %1942 = load i32, ptr %1941, align 4, !tbaa !4
  br label %1943

1943:                                             ; preds = %1938, %1932
  %1944 = phi i32 [ %1942, %1938 ], [ 0, %1932 ]
  %1945 = load i16, ptr %1917, align 2, !tbaa !28
  %1946 = zext i16 %1945 to i64
  %1947 = add nsw i32 %1944, %1927
  %1948 = zext i32 %1947 to i64
  %1949 = mul nuw nsw i64 %1946, %1948
  %1950 = load i64, ptr %1906, align 8, !tbaa !50
  %1951 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1950, i64 %1949), !nosanitize !31
  %1952 = extractvalue { i64, i1 } %1951, 1, !nosanitize !31
  br i1 %1952, label %1953, label %1954, !prof !32, !nosanitize !31

1953:                                             ; preds = %1943
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

1954:                                             ; preds = %1943
  %1955 = extractvalue { i64, i1 } %1951, 0, !nosanitize !31
  store i64 %1955, ptr %1906, align 8, !tbaa !50
  br i1 %1907, label %1970, label %1956

1956:                                             ; preds = %1954
  %1957 = getelementptr inbounds [4 x i8], ptr %1889, i64 %1916
  %1958 = getelementptr inbounds nuw i8, ptr %1957, i64 2
  %1959 = load i16, ptr %1958, align 2, !tbaa !28
  %1960 = zext i16 %1959 to i32
  %1961 = add nsw i32 %1944, %1960
  %1962 = zext i32 %1961 to i64
  %1963 = mul nuw nsw i64 %1962, %1946
  %1964 = load i64, ptr %1908, align 8, !tbaa !51
  %1965 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1964, i64 %1963), !nosanitize !31
  %1966 = extractvalue { i64, i1 } %1965, 1, !nosanitize !31
  br i1 %1966, label %1967, label %1968, !prof !32, !nosanitize !31

1967:                                             ; preds = %1956
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

1968:                                             ; preds = %1956
  %1969 = extractvalue { i64, i1 } %1965, 0, !nosanitize !31
  store i64 %1969, ptr %1908, align 8, !tbaa !51
  br label %1970

1970:                                             ; preds = %1968, %1954, %1911
  %1971 = add nsw i64 %1912, 1
  %1972 = and i64 %1971, 4294967295
  %1973 = icmp eq i64 %1972, 573
  br i1 %1973, label %1974, label %1911, !llvm.loop !61

1974:                                             ; preds = %1970
  %1975 = icmp eq i32 %1929, 0
  br i1 %1975, label %.loopexit250, label %1976

1976:                                             ; preds = %1974
  %1977 = sext i32 %1895 to i64
  %1978 = getelementptr inbounds [2 x i8], ptr %497, i64 %1977
  br label %1979

1979:                                             ; preds = %1987, %1976
  %1980 = phi i32 [ %1997, %1987 ], [ %1929, %1976 ]
  br label %1981

1981:                                             ; preds = %1981, %1979
  %1982 = phi i64 [ %1983, %1981 ], [ %1977, %1979 ]
  %1983 = add nsw i64 %1982, -1
  %1984 = getelementptr inbounds [2 x i8], ptr %497, i64 %1983
  %1985 = load i16, ptr %1984, align 2, !tbaa !60
  %1986 = icmp eq i16 %1985, 0
  br i1 %1986, label %1981, label %1987, !llvm.loop !62

1987:                                             ; preds = %1981
  %1988 = getelementptr inbounds [2 x i8], ptr %497, i64 %1983
  %1989 = add i16 %1985, -1
  store i16 %1989, ptr %1988, align 2, !tbaa !60
  %1990 = shl i64 %1982, 32
  %1991 = ashr exact i64 %1990, 31
  %1992 = getelementptr inbounds i8, ptr %497, i64 %1991
  %1993 = load i16, ptr %1992, align 2, !tbaa !60
  %1994 = add i16 %1993, 2
  store i16 %1994, ptr %1992, align 2, !tbaa !60
  %1995 = load i16, ptr %1978, align 2, !tbaa !60
  %1996 = add i16 %1995, -1
  store i16 %1996, ptr %1978, align 2, !tbaa !60
  %1997 = add nsw i32 %1980, -2
  %1998 = icmp sgt i32 %1980, 2
  br i1 %1998, label %1979, label %1999, !llvm.loop !63

1999:                                             ; preds = %1987
  %2000 = icmp eq i32 %1895, 0
  br i1 %2000, label %.loopexit250, label %.preheader

.preheader:                                       ; preds = %1999, %.loopexit249
  %2001 = phi i64 [ %2010, %.loopexit249 ], [ %1977, %1999 ]
  %2002 = phi i32 [ %2009, %.loopexit249 ], [ 573, %1999 ]
  %2003 = getelementptr inbounds [2 x i8], ptr %497, i64 %2001
  %2004 = load i16, ptr %2003, align 2, !tbaa !60
  %2005 = icmp eq i16 %2004, 0
  br i1 %2005, label %.loopexit249, label %2006

2006:                                             ; preds = %.preheader
  %2007 = zext i16 %2004 to i32
  %2008 = trunc i64 %2001 to i16
  br label %2012

.loopexit249:                                     ; preds = %2049, %.preheader
  %2009 = phi i32 [ %2002, %.preheader ], [ %2023, %2049 ]
  %2010 = add nsw i64 %2001, -1
  %2011 = icmp eq i64 %2010, 0
  br i1 %2011, label %.loopexit250, label %.preheader, !llvm.loop !64

2012:                                             ; preds = %2049, %2006
  %2013 = phi i32 [ %2002, %2006 ], [ %2023, %2049 ]
  %2014 = phi i32 [ %2007, %2006 ], [ %2050, %2049 ]
  %2015 = sext i32 %2013 to i64
  br label %2016

2016:                                             ; preds = %2016, %2012
  %2017 = phi i64 [ %2015, %2012 ], [ %2018, %2016 ]
  %2018 = add nsw i64 %2017, -1
  %2019 = getelementptr inbounds [4 x i8], ptr %237, i64 %2018
  %2020 = load i32, ptr %2019, align 4, !tbaa !4
  %2021 = icmp sgt i32 %2020, %1887
  br i1 %2021, label %2016, label %2022, !llvm.loop !65

2022:                                             ; preds = %2016
  %2023 = trunc nsw i64 %2018 to i32
  %2024 = sext i32 %2020 to i64
  %2025 = getelementptr inbounds [4 x i8], ptr %1886, i64 %2024
  %2026 = getelementptr inbounds nuw i8, ptr %2025, i64 2
  %2027 = load i16, ptr %2026, align 2, !tbaa !28
  %2028 = zext i16 %2027 to i64
  %2029 = icmp eq i64 %2001, %2028
  br i1 %2029, label %2049, label %2030

2030:                                             ; preds = %2022
  %2031 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2001, i64 %2028), !nosanitize !31
  %2032 = extractvalue { i64, i1 } %2031, 1, !nosanitize !31
  br i1 %2032, label %2033, label %2034, !prof !32, !nosanitize !31

2033:                                             ; preds = %2030
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !31
  unreachable, !nosanitize !31

2034:                                             ; preds = %2030
  %2035 = extractvalue { i64, i1 } %2031, 0, !nosanitize !31
  %2036 = load i16, ptr %2025, align 2, !tbaa !28
  %2037 = zext i16 %2036 to i64
  %2038 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2035, i64 %2037), !nosanitize !31
  %2039 = extractvalue { i64, i1 } %2038, 1, !nosanitize !31
  br i1 %2039, label %2040, label %2041, !prof !32, !nosanitize !31

2040:                                             ; preds = %2034
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !31
  unreachable, !nosanitize !31

2041:                                             ; preds = %2034
  %2042 = extractvalue { i64, i1 } %2038, 0, !nosanitize !31
  %2043 = load i64, ptr %1906, align 8, !tbaa !50
  %2044 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2043, i64 %2042), !nosanitize !31
  %2045 = extractvalue { i64, i1 } %2044, 1, !nosanitize !31
  br i1 %2045, label %2046, label %2047, !prof !32, !nosanitize !31

2046:                                             ; preds = %2041
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2047:                                             ; preds = %2041
  %2048 = extractvalue { i64, i1 } %2044, 0, !nosanitize !31
  store i64 %2048, ptr %1906, align 8, !tbaa !50
  store i16 %2008, ptr %2026, align 2, !tbaa !28
  br label %2049

2049:                                             ; preds = %2047, %2022
  %2050 = add nsw i32 %2014, -1
  %2051 = icmp eq i32 %2050, 0
  br i1 %2051, label %.loopexit249, label %2012, !llvm.loop !65

.loopexit250:                                     ; preds = %.loopexit249, %1999, %1974, %1880
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %2052 = load i16, ptr %497, align 2, !tbaa !60
  %2053 = zext i16 %2052 to i32
  %2054 = shl nuw nsw i32 %2053, 1
  %2055 = trunc i32 %2054 to i16
  %2056 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2055, ptr %2056, align 2, !tbaa !60
  %2057 = load i16, ptr %659, align 2, !tbaa !60
  %2058 = zext i16 %2057 to i32
  %2059 = add nuw nsw i32 %2054, %2058
  %2060 = shl nuw nsw i32 %2059, 1
  %2061 = trunc i32 %2060 to i16
  %2062 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2061, ptr %2062, align 4, !tbaa !60
  %2063 = load i16, ptr %666, align 2, !tbaa !60
  %2064 = zext i16 %2063 to i32
  %2065 = add nuw nsw i32 %2060, %2064
  %2066 = shl nuw nsw i32 %2065, 1
  %2067 = trunc i32 %2066 to i16
  %2068 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2067, ptr %2068, align 2, !tbaa !60
  %2069 = load i16, ptr %673, align 2, !tbaa !60
  %2070 = zext i16 %2069 to i32
  %2071 = add nuw nsw i32 %2066, %2070
  %2072 = shl nuw nsw i32 %2071, 1
  %2073 = trunc i32 %2072 to i16
  %2074 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2073, ptr %2074, align 8, !tbaa !60
  %2075 = load i16, ptr %680, align 2, !tbaa !60
  %2076 = zext i16 %2075 to i32
  %2077 = add nuw nsw i32 %2072, %2076
  %2078 = shl nuw nsw i32 %2077, 1
  %2079 = trunc i32 %2078 to i16
  %2080 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2079, ptr %2080, align 2, !tbaa !60
  %2081 = load i16, ptr %687, align 2, !tbaa !60
  %2082 = trunc i32 %2078 to i16
  %.tr673 = add i16 %2081, %2082
  %2083 = shl i16 %.tr673, 1
  %2084 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2083, ptr %2084, align 4, !tbaa !60
  %2085 = load i16, ptr %694, align 2, !tbaa !60
  %.tr241 = add i16 %2085, %2083
  %2086 = shl i16 %.tr241, 1
  %2087 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2086, ptr %2087, align 2, !tbaa !60
  %2088 = load i16, ptr %701, align 2, !tbaa !60
  %.tr238 = add i16 %2086, %2088
  %2089 = shl i16 %.tr238, 1
  %2090 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2089, ptr %2090, align 16, !tbaa !60
  %2091 = load i16, ptr %706, align 2, !tbaa !60
  %2092 = add i16 %2089, %2091
  %2093 = shl i16 %2092, 1
  %2094 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2093, ptr %2094, align 2, !tbaa !60
  %2095 = load i16, ptr %710, align 2, !tbaa !60
  %2096 = add i16 %2093, %2095
  %2097 = shl i16 %2096, 1
  %2098 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2097, ptr %2098, align 4, !tbaa !60
  %2099 = load i16, ptr %714, align 2, !tbaa !60
  %2100 = add i16 %2097, %2099
  %2101 = shl i16 %2100, 1
  %2102 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2101, ptr %2102, align 2, !tbaa !60
  %2103 = load i16, ptr %719, align 2, !tbaa !60
  %2104 = add i16 %2101, %2103
  %2105 = shl i16 %2104, 1
  %2106 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2105, ptr %2106, align 8, !tbaa !60
  %2107 = load i16, ptr %724, align 2, !tbaa !60
  %2108 = add i16 %2105, %2107
  %2109 = shl i16 %2108, 1
  %2110 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2109, ptr %2110, align 2, !tbaa !60
  %2111 = load i16, ptr %729, align 2, !tbaa !60
  %2112 = add i16 %2109, %2111
  %2113 = shl i16 %2112, 1
  %2114 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2113, ptr %2114, align 4, !tbaa !60
  %2115 = load i16, ptr %734, align 2, !tbaa !60
  %2116 = add i16 %2113, %2115
  %2117 = shl i16 %2116, 1
  %2118 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2117, ptr %2118, align 2, !tbaa !60
  %2119 = icmp slt i32 %1636, 0
  br i1 %2119, label %.loopexit248, label %2120

2120:                                             ; preds = %.loopexit250
  %2121 = add nuw i32 %1636, 1
  %2122 = zext i32 %2121 to i64
  br label %2123

2123:                                             ; preds = %2176, %2120
  %2124 = phi i64 [ 0, %2120 ], [ %2177, %2176 ]
  %2125 = getelementptr inbounds nuw [4 x i8], ptr %1566, i64 %2124
  %2126 = getelementptr inbounds nuw i8, ptr %2125, i64 2
  %2127 = load i16, ptr %2126, align 2, !tbaa !28
  %2128 = icmp eq i16 %2127, 0
  br i1 %2128, label %2176, label %2129

2129:                                             ; preds = %2123
  %2130 = zext i16 %2127 to i32
  %2131 = zext i16 %2127 to i64
  %2132 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %2131
  %2133 = load i16, ptr %2132, align 2, !tbaa !60
  %2134 = add i16 %2133, 1
  store i16 %2134, ptr %2132, align 2, !tbaa !60
  %2135 = and i32 %2130, 3
  %2136 = icmp ult i16 %2127, 4
  br i1 %2136, label %2161, label %2137

2137:                                             ; preds = %2129
  %2138 = and i32 %2130, 65532
  br label %2139

2139:                                             ; preds = %2139, %2137
  %2140 = phi i16 [ %2133, %2137 ], [ %2155, %2139 ]
  %2141 = phi i16 [ 0, %2137 ], [ %2156, %2139 ]
  %2142 = phi i32 [ 0, %2137 ], [ %2157, %2139 ]
  %2143 = and i16 %2140, 1
  %2144 = or disjoint i16 %2141, %2143
  %2145 = shl i16 %2144, 2
  %2146 = and i16 %2140, 2
  %2147 = or disjoint i16 %2145, %2146
  %2148 = lshr i16 %2140, 2
  %2149 = and i16 %2148, 1
  %2150 = or disjoint i16 %2147, %2149
  %2151 = lshr i16 %2140, 3
  %2152 = shl i16 %2150, 1
  %2153 = and i16 %2151, 1
  %2154 = or disjoint i16 %2152, %2153
  %2155 = lshr i16 %2140, 4
  %2156 = shl i16 %2154, 1
  %2157 = add nuw nsw i32 %2142, 4
  %2158 = icmp eq i32 %2157, %2138
  br i1 %2158, label %2159, label %2139, !llvm.loop !66

2159:                                             ; preds = %2139
  %2160 = icmp eq i32 %2135, 0
  br i1 %2160, label %.loopexit247, label %2161

2161:                                             ; preds = %2159, %2129
  %2162 = phi i16 [ %2133, %2129 ], [ %2155, %2159 ]
  %2163 = phi i16 [ 0, %2129 ], [ %2156, %2159 ]
  %2164 = icmp ne i32 %2135, 0
  tail call void @llvm.assume(i1 %2164)
  br label %2165

2165:                                             ; preds = %2165, %2161
  %2166 = phi i16 [ %2162, %2161 ], [ %2171, %2165 ]
  %2167 = phi i16 [ %2163, %2161 ], [ %2172, %2165 ]
  %2168 = phi i32 [ 0, %2161 ], [ %2173, %2165 ]
  %2169 = and i16 %2166, 1
  %2170 = or disjoint i16 %2167, %2169
  %2171 = lshr i16 %2166, 1
  %2172 = shl i16 %2170, 1
  %2173 = add nuw nsw i32 %2168, 1
  %2174 = icmp eq i32 %2173, %2135
  br i1 %2174, label %.loopexit247, label %2165, !llvm.loop !74

.loopexit247:                                     ; preds = %2165, %2159
  %2175 = phi i16 [ %2154, %2159 ], [ %2170, %2165 ]
  store i16 %2175, ptr %2125, align 2, !tbaa !28
  br label %2176

2176:                                             ; preds = %.loopexit247, %2123
  %2177 = add nuw nsw i64 %2124, 1
  %2178 = icmp eq i64 %2177, %2122
  br i1 %2178, label %.loopexit248, label %2123, !llvm.loop !69

.loopexit248:                                     ; preds = %2176, %.loopexit250
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %2179 = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %2180 = load i16, ptr %2179, align 2, !tbaa !28
  %2181 = icmp eq i16 %2180, 0
  br i1 %2181, label %2182, label %2243

2182:                                             ; preds = %.loopexit248
  %2183 = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %2184 = load i16, ptr %2183, align 2, !tbaa !28
  %2185 = icmp eq i16 %2184, 0
  br i1 %2185, label %2186, label %2243

2186:                                             ; preds = %2182
  %2187 = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %2188 = load i16, ptr %2187, align 2, !tbaa !28
  %2189 = icmp eq i16 %2188, 0
  br i1 %2189, label %2190, label %2243

2190:                                             ; preds = %2186
  %2191 = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %2192 = load i16, ptr %2191, align 2, !tbaa !28
  %2193 = icmp eq i16 %2192, 0
  br i1 %2193, label %2194, label %2243

2194:                                             ; preds = %2190
  %2195 = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %2196 = load i16, ptr %2195, align 2, !tbaa !28
  %2197 = icmp eq i16 %2196, 0
  br i1 %2197, label %2198, label %2243

2198:                                             ; preds = %2194
  %2199 = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %2200 = load i16, ptr %2199, align 2, !tbaa !28
  %2201 = icmp eq i16 %2200, 0
  br i1 %2201, label %2202, label %2243

2202:                                             ; preds = %2198
  %2203 = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %2204 = load i16, ptr %2203, align 2, !tbaa !28
  %2205 = icmp eq i16 %2204, 0
  br i1 %2205, label %2206, label %2243

2206:                                             ; preds = %2202
  %2207 = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %2208 = load i16, ptr %2207, align 2, !tbaa !28
  %2209 = icmp eq i16 %2208, 0
  br i1 %2209, label %2210, label %2243

2210:                                             ; preds = %2206
  %2211 = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %2212 = load i16, ptr %2211, align 2, !tbaa !28
  %2213 = icmp eq i16 %2212, 0
  br i1 %2213, label %2214, label %2243

2214:                                             ; preds = %2210
  %2215 = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %2216 = load i16, ptr %2215, align 2, !tbaa !28
  %2217 = icmp eq i16 %2216, 0
  br i1 %2217, label %2218, label %2243

2218:                                             ; preds = %2214
  %2219 = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %2220 = load i16, ptr %2219, align 2, !tbaa !28
  %2221 = icmp eq i16 %2220, 0
  br i1 %2221, label %2222, label %2243

2222:                                             ; preds = %2218
  %2223 = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %2224 = load i16, ptr %2223, align 2, !tbaa !28
  %2225 = icmp eq i16 %2224, 0
  br i1 %2225, label %2226, label %2243

2226:                                             ; preds = %2222
  %2227 = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %2228 = load i16, ptr %2227, align 2, !tbaa !28
  %2229 = icmp eq i16 %2228, 0
  br i1 %2229, label %2230, label %2243

2230:                                             ; preds = %2226
  %2231 = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %2232 = load i16, ptr %2231, align 2, !tbaa !28
  %2233 = icmp eq i16 %2232, 0
  br i1 %2233, label %2234, label %2243

2234:                                             ; preds = %2230
  %2235 = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %2236 = load i16, ptr %2235, align 2, !tbaa !28
  %2237 = icmp eq i16 %2236, 0
  br i1 %2237, label %2238, label %2243

2238:                                             ; preds = %2234
  %2239 = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %2240 = load i16, ptr %2239, align 2, !tbaa !28
  %2241 = icmp eq i16 %2240, 0
  %2242 = select i1 %2241, i32 2, i32 3
  br label %2243

2243:                                             ; preds = %2238, %2234, %2230, %2226, %2222, %2218, %2214, %2210, %2206, %2202, %2198, %2194, %2190, %2186, %2182, %.loopexit248
  %2244 = phi i32 [ 18, %.loopexit248 ], [ 10, %2210 ], [ 17, %2182 ], [ %2242, %2238 ], [ 16, %2186 ], [ 8, %2218 ], [ 15, %2190 ], [ 4, %2234 ], [ 14, %2194 ], [ 9, %2214 ], [ 13, %2198 ], [ 5, %2230 ], [ 12, %2202 ], [ 7, %2222 ], [ 11, %2206 ], [ 6, %2226 ]
  %2245 = mul nuw nsw i32 %2244, 3
  %2246 = add nuw nsw i32 %2245, 17
  %2247 = zext nneg i32 %2246 to i64
  %2248 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2249 = load i64, ptr %2248, align 8, !tbaa !50
  %2250 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2249, i64 %2247), !nosanitize !31
  %2251 = extractvalue { i64, i1 } %2250, 1, !nosanitize !31
  br i1 %2251, label %2252, label %2253, !prof !32, !nosanitize !31

2252:                                             ; preds = %2243
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2253:                                             ; preds = %2243
  %2254 = extractvalue { i64, i1 } %2250, 0, !nosanitize !31
  store i64 %2254, ptr %2248, align 8, !tbaa !50
  %2255 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2254, i64 3), !nosanitize !31
  %2256 = extractvalue { i64, i1 } %2255, 1, !nosanitize !31
  br i1 %2256, label %2257, label %2258, !prof !32, !nosanitize !31

2257:                                             ; preds = %2253
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2258:                                             ; preds = %2253
  %2259 = extractvalue { i64, i1 } %2255, 0, !nosanitize !31
  %2260 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2259, i64 7), !nosanitize !31
  %2261 = extractvalue { i64, i1 } %2260, 1, !nosanitize !31
  br i1 %2261, label %2262, label %2263, !prof !32, !nosanitize !31

2262:                                             ; preds = %2258
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2263:                                             ; preds = %2258
  %2264 = extractvalue { i64, i1 } %2260, 0, !nosanitize !31
  %2265 = lshr i64 %2264, 3
  %2266 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2267 = load i64, ptr %2266, align 8, !tbaa !51
  %2268 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2267, i64 3), !nosanitize !31
  %2269 = extractvalue { i64, i1 } %2268, 1, !nosanitize !31
  br i1 %2269, label %2270, label %2271, !prof !32, !nosanitize !31

2270:                                             ; preds = %2263
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2271:                                             ; preds = %2263
  %2272 = extractvalue { i64, i1 } %2268, 0, !nosanitize !31
  %2273 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2272, i64 7), !nosanitize !31
  %2274 = extractvalue { i64, i1 } %2273, 1, !nosanitize !31
  br i1 %2274, label %2275, label %2276, !prof !32, !nosanitize !31

2275:                                             ; preds = %2271
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2276:                                             ; preds = %2271
  %2277 = extractvalue { i64, i1 } %2273, 0, !nosanitize !31
  %2278 = lshr i64 %2277, 3
  %2279 = icmp samesign ugt i64 %2278, %2265
  br i1 %2279, label %2280, label %2284

2280:                                             ; preds = %2276
  %2281 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2282 = load i32, ptr %2281, align 8, !tbaa !75
  %2283 = icmp eq i32 %2282, 4
  br i1 %2283, label %2284, label %2291

2284:                                             ; preds = %2280, %2276
  br label %2291

2285:                                             ; preds = %4
  %2286 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 5), !nosanitize !31
  %2287 = extractvalue { i64, i1 } %2286, 1, !nosanitize !31
  br i1 %2287, label %2288, label %2289, !prof !32, !nosanitize !31

2288:                                             ; preds = %2285
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2289:                                             ; preds = %2285
  %2290 = extractvalue { i64, i1 } %2286, 0, !nosanitize !31
  br label %2291

2291:                                             ; preds = %2289, %2284, %2280
  %2292 = phi i32 [ %2244, %2284 ], [ %2244, %2280 ], [ 0, %2289 ]
  %2293 = phi i1 [ true, %2284 ], [ false, %2280 ], [ true, %2289 ]
  %2294 = phi i64 [ %2278, %2284 ], [ %2265, %2280 ], [ %2290, %2289 ]
  %2295 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 4), !nosanitize !31
  %2296 = extractvalue { i64, i1 } %2295, 1, !nosanitize !31
  br i1 %2296, label %2297, label %2298, !prof !32, !nosanitize !31

2297:                                             ; preds = %2291
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2298:                                             ; preds = %2291
  %2299 = extractvalue { i64, i1 } %2295, 0, !nosanitize !31
  %2300 = icmp ule i64 %2299, %2294
  %2301 = icmp ne ptr %1, null
  %2302 = and i1 %2301, %2300
  %2303 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2304 = load i32, ptr %2303, align 4, !tbaa !26
  %2305 = icmp sgt i32 %2304, 13
  br i1 %2302, label %2306, label %2451

2306:                                             ; preds = %2298
  br i1 %2305, label %2307, label %2341

2307:                                             ; preds = %2306
  %2308 = and i32 %3, 65535
  %2309 = shl i32 %3, %2304
  %2310 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2311 = load i16, ptr %2310, align 8, !tbaa !25
  %2312 = trunc i32 %2309 to i16
  %2313 = or i16 %2311, %2312
  store i16 %2313, ptr %2310, align 8, !tbaa !25
  %2314 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2315 = load i64, ptr %2314, align 8, !tbaa !30
  %2316 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2315, i64 1), !nosanitize !31
  %2317 = extractvalue { i64, i1 } %2316, 1, !nosanitize !31
  br i1 %2317, label %2318, label %2319, !prof !32, !nosanitize !31

2318:                                             ; preds = %2307
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2319:                                             ; preds = %2307
  %2320 = extractvalue { i64, i1 } %2316, 0, !nosanitize !31
  %2321 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2322 = load ptr, ptr %2321, align 8, !tbaa !33
  %2323 = trunc i16 %2313 to i8
  store i64 %2320, ptr %2314, align 8, !tbaa !30
  %2324 = getelementptr inbounds nuw i8, ptr %2322, i64 %2315
  store i8 %2323, ptr %2324, align 1, !tbaa !28
  %2325 = load i64, ptr %2314, align 8, !tbaa !30
  %2326 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2325, i64 1), !nosanitize !31
  %2327 = extractvalue { i64, i1 } %2326, 1, !nosanitize !31
  br i1 %2327, label %2328, label %2329, !prof !32, !nosanitize !31

2328:                                             ; preds = %2319
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2329:                                             ; preds = %2319
  %2330 = extractvalue { i64, i1 } %2326, 0, !nosanitize !31
  %2331 = load ptr, ptr %2321, align 8, !tbaa !33
  %2332 = load i16, ptr %2310, align 8, !tbaa !25
  %2333 = lshr i16 %2332, 8
  %2334 = trunc nuw i16 %2333 to i8
  store i64 %2330, ptr %2314, align 8, !tbaa !30
  %2335 = getelementptr inbounds nuw i8, ptr %2331, i64 %2325
  store i8 %2334, ptr %2335, align 1, !tbaa !28
  %2336 = load i32, ptr %2303, align 4, !tbaa !26
  %2337 = sub nsw i32 16, %2336
  %2338 = lshr i32 %2308, %2337
  %2339 = trunc nuw i32 %2338 to i16
  store i16 %2339, ptr %2310, align 8, !tbaa !25
  %2340 = add nsw i32 %2336, -13
  br label %2348

2341:                                             ; preds = %2306
  %2342 = shl i32 %3, %2304
  %2343 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2344 = load i16, ptr %2343, align 8, !tbaa !25
  %2345 = trunc i32 %2342 to i16
  %2346 = or i16 %2344, %2345
  store i16 %2346, ptr %2343, align 8, !tbaa !25
  %2347 = add nsw i32 %2304, 3
  br label %2348

2348:                                             ; preds = %2341, %2329
  %2349 = phi i16 [ %2346, %2341 ], [ %2339, %2329 ]
  %2350 = phi i32 [ %2347, %2341 ], [ %2340, %2329 ]
  store i32 %2350, ptr %2303, align 4, !tbaa !26
  %2351 = icmp sgt i32 %2350, 8
  br i1 %2351, label %2352, label %2376

2352:                                             ; preds = %2348
  %2353 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2354 = load i64, ptr %2353, align 8, !tbaa !30
  %2355 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2354, i64 1), !nosanitize !31
  %2356 = extractvalue { i64, i1 } %2355, 1, !nosanitize !31
  br i1 %2356, label %2357, label %2358, !prof !32, !nosanitize !31

2357:                                             ; preds = %2352
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2358:                                             ; preds = %2352
  %2359 = extractvalue { i64, i1 } %2355, 0, !nosanitize !31
  %2360 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2361 = load ptr, ptr %2360, align 8, !tbaa !33
  %2362 = trunc i16 %2349 to i8
  store i64 %2359, ptr %2353, align 8, !tbaa !30
  %2363 = getelementptr inbounds nuw i8, ptr %2361, i64 %2354
  store i8 %2362, ptr %2363, align 1, !tbaa !28
  %2364 = load i64, ptr %2353, align 8, !tbaa !30
  %2365 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2364, i64 1), !nosanitize !31
  %2366 = extractvalue { i64, i1 } %2365, 1, !nosanitize !31
  br i1 %2366, label %2367, label %2368, !prof !32, !nosanitize !31

2367:                                             ; preds = %2358
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2368:                                             ; preds = %2358
  %2369 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2370 = extractvalue { i64, i1 } %2365, 0, !nosanitize !31
  %2371 = load ptr, ptr %2360, align 8, !tbaa !33
  %2372 = load i16, ptr %2369, align 8, !tbaa !25
  %2373 = lshr i16 %2372, 8
  %2374 = trunc nuw i16 %2373 to i8
  store i64 %2370, ptr %2353, align 8, !tbaa !30
  %2375 = getelementptr inbounds nuw i8, ptr %2371, i64 %2364
  store i8 %2374, ptr %2375, align 1, !tbaa !28
  br label %2390

2376:                                             ; preds = %2348
  %2377 = icmp sgt i32 %2350, 0
  br i1 %2377, label %2378, label %2390

2378:                                             ; preds = %2376
  %2379 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2380 = load i64, ptr %2379, align 8, !tbaa !30
  %2381 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2380, i64 1), !nosanitize !31
  %2382 = extractvalue { i64, i1 } %2381, 1, !nosanitize !31
  br i1 %2382, label %2383, label %2384, !prof !32, !nosanitize !31

2383:                                             ; preds = %2378
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2384:                                             ; preds = %2378
  %2385 = extractvalue { i64, i1 } %2381, 0, !nosanitize !31
  %2386 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2387 = load ptr, ptr %2386, align 8, !tbaa !33
  %2388 = trunc i16 %2349 to i8
  store i64 %2385, ptr %2379, align 8, !tbaa !30
  %2389 = getelementptr inbounds nuw i8, ptr %2387, i64 %2380
  store i8 %2388, ptr %2389, align 1, !tbaa !28
  br label %2390

2390:                                             ; preds = %2384, %2376, %2368
  %2391 = load i32, ptr %2303, align 4, !tbaa !26
  %2392 = add i32 %2391, 7
  %2393 = and i32 %2392, 7
  %2394 = add nuw nsw i32 %2393, 1
  %2395 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2394, ptr %2395, align 8, !tbaa !27
  %2396 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %2396, align 8, !tbaa !25
  store i32 0, ptr %2303, align 4, !tbaa !26
  %2397 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2398 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2399 = load i64, ptr %2398, align 8, !tbaa !30
  %2400 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2399, i64 1), !nosanitize !31
  %2401 = extractvalue { i64, i1 } %2400, 1, !nosanitize !31
  br i1 %2401, label %2402, label %2403, !prof !32, !nosanitize !31

2402:                                             ; preds = %2390
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2403:                                             ; preds = %2390
  %2404 = extractvalue { i64, i1 } %2400, 0, !nosanitize !31
  %2405 = load ptr, ptr %2397, align 8, !tbaa !33
  %2406 = trunc i64 %2 to i8
  store i64 %2404, ptr %2398, align 8, !tbaa !30
  %2407 = getelementptr inbounds nuw i8, ptr %2405, i64 %2399
  store i8 %2406, ptr %2407, align 1, !tbaa !28
  %2408 = load i64, ptr %2398, align 8, !tbaa !30
  %2409 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2408, i64 1), !nosanitize !31
  %2410 = extractvalue { i64, i1 } %2409, 1, !nosanitize !31
  br i1 %2410, label %2411, label %2412, !prof !32, !nosanitize !31

2411:                                             ; preds = %2403
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2412:                                             ; preds = %2403
  %2413 = extractvalue { i64, i1 } %2409, 0, !nosanitize !31
  %2414 = load ptr, ptr %2397, align 8, !tbaa !33
  %2415 = lshr i64 %2, 8
  %2416 = trunc i64 %2415 to i8
  store i64 %2413, ptr %2398, align 8, !tbaa !30
  %2417 = getelementptr inbounds nuw i8, ptr %2414, i64 %2408
  store i8 %2416, ptr %2417, align 1, !tbaa !28
  %2418 = load i64, ptr %2398, align 8, !tbaa !30
  %2419 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2418, i64 1), !nosanitize !31
  %2420 = extractvalue { i64, i1 } %2419, 1, !nosanitize !31
  br i1 %2420, label %2421, label %2422, !prof !32, !nosanitize !31

2421:                                             ; preds = %2412
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2422:                                             ; preds = %2412
  %2423 = extractvalue { i64, i1 } %2419, 0, !nosanitize !31
  %2424 = load ptr, ptr %2397, align 8, !tbaa !33
  %2425 = trunc i64 %2 to i32
  %2426 = xor i32 %2425, 65535
  %2427 = trunc i32 %2426 to i8
  store i64 %2423, ptr %2398, align 8, !tbaa !30
  %2428 = getelementptr inbounds nuw i8, ptr %2424, i64 %2418
  store i8 %2427, ptr %2428, align 1, !tbaa !28
  %2429 = load i64, ptr %2398, align 8, !tbaa !30
  %2430 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2429, i64 1), !nosanitize !31
  %2431 = extractvalue { i64, i1 } %2430, 1, !nosanitize !31
  br i1 %2431, label %2432, label %2433, !prof !32, !nosanitize !31

2432:                                             ; preds = %2422
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2433:                                             ; preds = %2422
  %2434 = extractvalue { i64, i1 } %2430, 0, !nosanitize !31
  %2435 = load ptr, ptr %2397, align 8, !tbaa !33
  %2436 = lshr i32 %2426, 8
  %2437 = trunc i32 %2436 to i8
  store i64 %2434, ptr %2398, align 8, !tbaa !30
  %2438 = getelementptr inbounds nuw i8, ptr %2435, i64 %2429
  store i8 %2437, ptr %2438, align 1, !tbaa !28
  %2439 = icmp eq i64 %2, 0
  br i1 %2439, label %2444, label %2440

2440:                                             ; preds = %2433
  %2441 = load ptr, ptr %2397, align 8, !tbaa !33
  %2442 = load i64, ptr %2398, align 8, !tbaa !30
  %2443 = getelementptr inbounds nuw i8, ptr %2441, i64 %2442
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2443, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2444

2444:                                             ; preds = %2440, %2433
  %2445 = load i64, ptr %2398, align 8, !tbaa !30
  %2446 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2445, i64 %2), !nosanitize !31
  %2447 = extractvalue { i64, i1 } %2446, 1, !nosanitize !31
  br i1 %2447, label %2448, label %2449, !prof !32, !nosanitize !31

2448:                                             ; preds = %2444
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2449:                                             ; preds = %2444
  %2450 = extractvalue { i64, i1 } %2446, 0, !nosanitize !31
  store i64 %2450, ptr %2398, align 8, !tbaa !30
  br label %4183

2451:                                             ; preds = %2298
  br i1 %2293, label %2452, label %2818

2452:                                             ; preds = %2451
  %2453 = add i32 %3, 2
  br i1 %2305, label %2454, label %2488

2454:                                             ; preds = %2452
  %2455 = and i32 %2453, 65535
  %2456 = shl i32 %2453, %2304
  %2457 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2458 = load i16, ptr %2457, align 8, !tbaa !25
  %2459 = trunc i32 %2456 to i16
  %2460 = or i16 %2458, %2459
  store i16 %2460, ptr %2457, align 8, !tbaa !25
  %2461 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2462 = load i64, ptr %2461, align 8, !tbaa !30
  %2463 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2462, i64 1), !nosanitize !31
  %2464 = extractvalue { i64, i1 } %2463, 1, !nosanitize !31
  br i1 %2464, label %2465, label %2466, !prof !32, !nosanitize !31

2465:                                             ; preds = %2454
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2466:                                             ; preds = %2454
  %2467 = extractvalue { i64, i1 } %2463, 0, !nosanitize !31
  %2468 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2469 = load ptr, ptr %2468, align 8, !tbaa !33
  %2470 = trunc i16 %2460 to i8
  store i64 %2467, ptr %2461, align 8, !tbaa !30
  %2471 = getelementptr inbounds nuw i8, ptr %2469, i64 %2462
  store i8 %2470, ptr %2471, align 1, !tbaa !28
  %2472 = load i64, ptr %2461, align 8, !tbaa !30
  %2473 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2472, i64 1), !nosanitize !31
  %2474 = extractvalue { i64, i1 } %2473, 1, !nosanitize !31
  br i1 %2474, label %2475, label %2476, !prof !32, !nosanitize !31

2475:                                             ; preds = %2466
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2476:                                             ; preds = %2466
  %2477 = extractvalue { i64, i1 } %2473, 0, !nosanitize !31
  %2478 = load ptr, ptr %2468, align 8, !tbaa !33
  %2479 = load i16, ptr %2457, align 8, !tbaa !25
  %2480 = lshr i16 %2479, 8
  %2481 = trunc nuw i16 %2480 to i8
  store i64 %2477, ptr %2461, align 8, !tbaa !30
  %2482 = getelementptr inbounds nuw i8, ptr %2478, i64 %2472
  store i8 %2481, ptr %2482, align 1, !tbaa !28
  %2483 = load i32, ptr %2303, align 4, !tbaa !26
  %2484 = sub nsw i32 16, %2483
  %2485 = lshr i32 %2455, %2484
  %2486 = trunc nuw i32 %2485 to i16
  store i16 %2486, ptr %2457, align 8, !tbaa !25
  %2487 = add nsw i32 %2483, -13
  br label %2495

2488:                                             ; preds = %2452
  %2489 = shl i32 %2453, %2304
  %2490 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2491 = load i16, ptr %2490, align 8, !tbaa !25
  %2492 = trunc i32 %2489 to i16
  %2493 = or i16 %2491, %2492
  store i16 %2493, ptr %2490, align 8, !tbaa !25
  %2494 = add nsw i32 %2304, 3
  br label %2495

2495:                                             ; preds = %2488, %2476
  %2496 = phi i16 [ %2493, %2488 ], [ %2486, %2476 ]
  %2497 = phi i32 [ %2494, %2488 ], [ %2487, %2476 ]
  store i32 %2497, ptr %2303, align 4, !tbaa !26
  %2498 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2499 = load i32, ptr %2498, align 4, !tbaa !29
  %2500 = icmp eq i32 %2499, 0
  br i1 %2500, label %.loopexit, label %2501

2501:                                             ; preds = %2495
  %2502 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2503 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2504 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2505 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %2506

2506:                                             ; preds = %2780, %2501
  %2507 = phi i16 [ %2781, %2780 ], [ %2496, %2501 ]
  %2508 = phi i32 [ %2782, %2780 ], [ %2497, %2501 ]
  %2509 = phi i32 [ %2528, %2780 ], [ 0, %2501 ]
  %2510 = load ptr, ptr %2502, align 8, !tbaa !76
  %2511 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2509, i32 2)
  %2512 = extractvalue { i32, i1 } %2511, 0, !nosanitize !31
  %2513 = extractvalue { i32, i1 } %2511, 1, !nosanitize !31
  br i1 %2513, label %2514, label %2515, !prof !32, !nosanitize !31

2514:                                             ; preds = %2506
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2515:                                             ; preds = %2506
  %2516 = add nuw i32 %2509, 1
  %2517 = zext i32 %2509 to i64
  %2518 = getelementptr inbounds nuw i8, ptr %2510, i64 %2517
  %2519 = load i8, ptr %2518, align 1, !tbaa !28
  %2520 = zext i8 %2519 to i32
  %2521 = zext i32 %2516 to i64
  %2522 = getelementptr inbounds nuw i8, ptr %2510, i64 %2521
  %2523 = load i8, ptr %2522, align 1, !tbaa !28
  %2524 = zext i8 %2523 to i32
  %2525 = shl nuw nsw i32 %2524, 8
  %2526 = or disjoint i32 %2525, %2520
  %2527 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2512, i32 1), !nosanitize !31
  %2528 = extractvalue { i32, i1 } %2527, 0, !nosanitize !31
  %2529 = extractvalue { i32, i1 } %2527, 1, !nosanitize !31
  br i1 %2529, label %2530, label %2531, !prof !32, !nosanitize !31

2530:                                             ; preds = %2515
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2531:                                             ; preds = %2515
  %2532 = zext i32 %2512 to i64
  %2533 = getelementptr inbounds nuw i8, ptr %2510, i64 %2532
  %2534 = load i8, ptr %2533, align 1, !tbaa !28
  %2535 = zext i8 %2534 to i32
  %2536 = icmp eq i32 %2526, 0
  %2537 = zext i8 %2534 to i64
  br i1 %2536, label %2538, label %2579

2538:                                             ; preds = %2531
  %2539 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2537
  %2540 = getelementptr inbounds nuw i8, ptr %2539, i64 2
  %2541 = load i16, ptr %2540, align 2, !tbaa !28
  %2542 = zext i16 %2541 to i32
  %2543 = sub nsw i32 16, %2542
  %2544 = icmp sgt i32 %2508, %2543
  %2545 = load i16, ptr %2539, align 4, !tbaa !28
  %2546 = zext i16 %2545 to i32
  %2547 = shl i32 %2546, %2508
  %2548 = trunc i32 %2547 to i16
  %2549 = or i16 %2507, %2548
  store i16 %2549, ptr %2503, align 8, !tbaa !25
  br i1 %2544, label %2550, label %2577

2550:                                             ; preds = %2538
  %2551 = load i64, ptr %2504, align 8, !tbaa !30
  %2552 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2551, i64 1), !nosanitize !31
  %2553 = extractvalue { i64, i1 } %2552, 1, !nosanitize !31
  br i1 %2553, label %2554, label %2555, !prof !32, !nosanitize !31

2554:                                             ; preds = %2550
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2555:                                             ; preds = %2550
  %2556 = extractvalue { i64, i1 } %2552, 0, !nosanitize !31
  %2557 = load ptr, ptr %2505, align 8, !tbaa !33
  %2558 = trunc i16 %2549 to i8
  store i64 %2556, ptr %2504, align 8, !tbaa !30
  %2559 = getelementptr inbounds nuw i8, ptr %2557, i64 %2551
  store i8 %2558, ptr %2559, align 1, !tbaa !28
  %2560 = load i64, ptr %2504, align 8, !tbaa !30
  %2561 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2560, i64 1), !nosanitize !31
  %2562 = extractvalue { i64, i1 } %2561, 1, !nosanitize !31
  br i1 %2562, label %2563, label %2564, !prof !32, !nosanitize !31

2563:                                             ; preds = %2555
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2564:                                             ; preds = %2555
  %2565 = extractvalue { i64, i1 } %2561, 0, !nosanitize !31
  %2566 = load ptr, ptr %2505, align 8, !tbaa !33
  %2567 = load i16, ptr %2503, align 8, !tbaa !25
  %2568 = lshr i16 %2567, 8
  %2569 = trunc nuw i16 %2568 to i8
  store i64 %2565, ptr %2504, align 8, !tbaa !30
  %2570 = getelementptr inbounds nuw i8, ptr %2566, i64 %2560
  store i8 %2569, ptr %2570, align 1, !tbaa !28
  %2571 = load i32, ptr %2303, align 4, !tbaa !26
  %2572 = sub nsw i32 16, %2571
  %2573 = lshr i32 %2546, %2572
  %2574 = trunc nuw i32 %2573 to i16
  store i16 %2574, ptr %2503, align 8, !tbaa !25
  %2575 = add nsw i32 %2542, -16
  %2576 = add nsw i32 %2575, %2571
  br label %2777

2577:                                             ; preds = %2538
  %2578 = add nsw i32 %2508, %2542
  br label %2777

2579:                                             ; preds = %2531
  %2580 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %2537
  %2581 = load i8, ptr %2580, align 1, !tbaa !28
  %2582 = zext i8 %2581 to i64
  %2583 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2582
  %2584 = getelementptr inbounds nuw i8, ptr %2583, i64 1028
  %2585 = getelementptr inbounds nuw i8, ptr %2583, i64 1030
  %2586 = load i16, ptr %2585, align 2, !tbaa !28
  %2587 = zext i16 %2586 to i32
  %2588 = sub nsw i32 16, %2587
  %2589 = icmp sgt i32 %2508, %2588
  %2590 = load i16, ptr %2584, align 4, !tbaa !28
  %2591 = zext i16 %2590 to i32
  %2592 = shl i32 %2591, %2508
  %2593 = trunc i32 %2592 to i16
  %2594 = or i16 %2507, %2593
  store i16 %2594, ptr %2503, align 8, !tbaa !25
  br i1 %2589, label %2595, label %2622

2595:                                             ; preds = %2579
  %2596 = load i64, ptr %2504, align 8, !tbaa !30
  %2597 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2596, i64 1), !nosanitize !31
  %2598 = extractvalue { i64, i1 } %2597, 1, !nosanitize !31
  br i1 %2598, label %2599, label %2600, !prof !32, !nosanitize !31

2599:                                             ; preds = %2595
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2600:                                             ; preds = %2595
  %2601 = extractvalue { i64, i1 } %2597, 0, !nosanitize !31
  %2602 = load ptr, ptr %2505, align 8, !tbaa !33
  %2603 = trunc i16 %2594 to i8
  store i64 %2601, ptr %2504, align 8, !tbaa !30
  %2604 = getelementptr inbounds nuw i8, ptr %2602, i64 %2596
  store i8 %2603, ptr %2604, align 1, !tbaa !28
  %2605 = load i64, ptr %2504, align 8, !tbaa !30
  %2606 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2605, i64 1), !nosanitize !31
  %2607 = extractvalue { i64, i1 } %2606, 1, !nosanitize !31
  br i1 %2607, label %2608, label %2609, !prof !32, !nosanitize !31

2608:                                             ; preds = %2600
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2609:                                             ; preds = %2600
  %2610 = extractvalue { i64, i1 } %2606, 0, !nosanitize !31
  %2611 = load ptr, ptr %2505, align 8, !tbaa !33
  %2612 = load i16, ptr %2503, align 8, !tbaa !25
  %2613 = lshr i16 %2612, 8
  %2614 = trunc nuw i16 %2613 to i8
  store i64 %2610, ptr %2504, align 8, !tbaa !30
  %2615 = getelementptr inbounds nuw i8, ptr %2611, i64 %2605
  store i8 %2614, ptr %2615, align 1, !tbaa !28
  %2616 = load i32, ptr %2303, align 4, !tbaa !26
  %2617 = sub nsw i32 16, %2616
  %2618 = lshr i32 %2591, %2617
  %2619 = trunc nuw i32 %2618 to i16
  store i16 %2619, ptr %2503, align 8, !tbaa !25
  %2620 = add nsw i32 %2587, -16
  %2621 = add nsw i32 %2620, %2616
  br label %2624

2622:                                             ; preds = %2579
  %2623 = add nsw i32 %2508, %2587
  br label %2624

2624:                                             ; preds = %2622, %2609
  %2625 = phi i16 [ %2594, %2622 ], [ %2619, %2609 ]
  %2626 = phi i32 [ %2623, %2622 ], [ %2621, %2609 ]
  store i32 %2626, ptr %2303, align 4, !tbaa !26
  %2627 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %2582
  %2628 = load i32, ptr %2627, align 4, !tbaa !4
  %2629 = add i8 %2581, -28
  %2630 = icmp ult i8 %2629, -20
  br i1 %2630, label %2676, label %2631

2631:                                             ; preds = %2624
  %2632 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %2582
  %2633 = load i32, ptr %2632, align 4, !tbaa !4
  %2634 = sub nsw i32 %2535, %2633
  %2635 = sub nsw i32 16, %2628
  %2636 = icmp sgt i32 %2626, %2635
  br i1 %2636, label %2637, label %2668

2637:                                             ; preds = %2631
  %2638 = and i32 %2634, 65535
  %2639 = shl i32 %2634, %2626
  %2640 = trunc i32 %2639 to i16
  %2641 = or i16 %2625, %2640
  store i16 %2641, ptr %2503, align 8, !tbaa !25
  %2642 = load i64, ptr %2504, align 8, !tbaa !30
  %2643 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2642, i64 1), !nosanitize !31
  %2644 = extractvalue { i64, i1 } %2643, 1, !nosanitize !31
  br i1 %2644, label %2645, label %2646, !prof !32, !nosanitize !31

2645:                                             ; preds = %2637
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2646:                                             ; preds = %2637
  %2647 = extractvalue { i64, i1 } %2643, 0, !nosanitize !31
  %2648 = load ptr, ptr %2505, align 8, !tbaa !33
  %2649 = trunc i16 %2641 to i8
  store i64 %2647, ptr %2504, align 8, !tbaa !30
  %2650 = getelementptr inbounds nuw i8, ptr %2648, i64 %2642
  store i8 %2649, ptr %2650, align 1, !tbaa !28
  %2651 = load i64, ptr %2504, align 8, !tbaa !30
  %2652 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2651, i64 1), !nosanitize !31
  %2653 = extractvalue { i64, i1 } %2652, 1, !nosanitize !31
  br i1 %2653, label %2654, label %2655, !prof !32, !nosanitize !31

2654:                                             ; preds = %2646
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2655:                                             ; preds = %2646
  %2656 = extractvalue { i64, i1 } %2652, 0, !nosanitize !31
  %2657 = load ptr, ptr %2505, align 8, !tbaa !33
  %2658 = load i16, ptr %2503, align 8, !tbaa !25
  %2659 = lshr i16 %2658, 8
  %2660 = trunc nuw i16 %2659 to i8
  store i64 %2656, ptr %2504, align 8, !tbaa !30
  %2661 = getelementptr inbounds nuw i8, ptr %2657, i64 %2651
  store i8 %2660, ptr %2661, align 1, !tbaa !28
  %2662 = load i32, ptr %2303, align 4, !tbaa !26
  %2663 = sub nsw i32 16, %2662
  %2664 = lshr i32 %2638, %2663
  %2665 = trunc nuw i32 %2664 to i16
  %2666 = add nsw i32 %2628, -16
  %2667 = add nsw i32 %2666, %2662
  br label %2673

2668:                                             ; preds = %2631
  %2669 = shl i32 %2634, %2626
  %2670 = trunc i32 %2669 to i16
  %2671 = or i16 %2625, %2670
  %2672 = add nsw i32 %2628, %2626
  br label %2673

2673:                                             ; preds = %2668, %2655
  %2674 = phi i16 [ %2671, %2668 ], [ %2665, %2655 ]
  %2675 = phi i32 [ %2672, %2668 ], [ %2667, %2655 ]
  store i32 %2675, ptr %2303, align 4, !tbaa !26
  br label %2676

2676:                                             ; preds = %2673, %2624
  %2677 = phi i16 [ %2674, %2673 ], [ %2625, %2624 ]
  %2678 = phi i32 [ %2675, %2673 ], [ %2626, %2624 ]
  %2679 = add nsw i32 %2526, -1
  %2680 = icmp samesign ult i32 %2526, 257
  %2681 = zext nneg i32 %2679 to i64
  %2682 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2681
  %2683 = lshr i32 %2679, 7
  %2684 = zext nneg i32 %2683 to i64
  %2685 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2684
  %2686 = getelementptr inbounds nuw i8, ptr %2685, i64 256
  %2687 = select i1 %2680, ptr %2682, ptr %2686
  %2688 = load i8, ptr %2687, align 1, !tbaa !28
  %2689 = zext i8 %2688 to i64
  %2690 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %2689
  %2691 = icmp sgt i32 %2678, 11
  %2692 = load i16, ptr %2690, align 4, !tbaa !28
  %2693 = zext i16 %2692 to i32
  %2694 = shl i32 %2693, %2678
  %2695 = trunc i32 %2694 to i16
  %2696 = or i16 %2677, %2695
  store i16 %2696, ptr %2503, align 8, !tbaa !25
  br i1 %2691, label %2697, label %2723

2697:                                             ; preds = %2676
  %2698 = load i64, ptr %2504, align 8, !tbaa !30
  %2699 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2698, i64 1), !nosanitize !31
  %2700 = extractvalue { i64, i1 } %2699, 1, !nosanitize !31
  br i1 %2700, label %2701, label %2702, !prof !32, !nosanitize !31

2701:                                             ; preds = %2697
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2702:                                             ; preds = %2697
  %2703 = extractvalue { i64, i1 } %2699, 0, !nosanitize !31
  %2704 = load ptr, ptr %2505, align 8, !tbaa !33
  %2705 = trunc i16 %2696 to i8
  store i64 %2703, ptr %2504, align 8, !tbaa !30
  %2706 = getelementptr inbounds nuw i8, ptr %2704, i64 %2698
  store i8 %2705, ptr %2706, align 1, !tbaa !28
  %2707 = load i64, ptr %2504, align 8, !tbaa !30
  %2708 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2707, i64 1), !nosanitize !31
  %2709 = extractvalue { i64, i1 } %2708, 1, !nosanitize !31
  br i1 %2709, label %2710, label %2711, !prof !32, !nosanitize !31

2710:                                             ; preds = %2702
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2711:                                             ; preds = %2702
  %2712 = extractvalue { i64, i1 } %2708, 0, !nosanitize !31
  %2713 = load ptr, ptr %2505, align 8, !tbaa !33
  %2714 = load i16, ptr %2503, align 8, !tbaa !25
  %2715 = lshr i16 %2714, 8
  %2716 = trunc nuw i16 %2715 to i8
  store i64 %2712, ptr %2504, align 8, !tbaa !30
  %2717 = getelementptr inbounds nuw i8, ptr %2713, i64 %2707
  store i8 %2716, ptr %2717, align 1, !tbaa !28
  %2718 = load i32, ptr %2303, align 4, !tbaa !26
  %2719 = sub nsw i32 16, %2718
  %2720 = lshr i32 %2693, %2719
  %2721 = trunc nuw i32 %2720 to i16
  store i16 %2721, ptr %2503, align 8, !tbaa !25
  %2722 = add nsw i32 %2718, -11
  br label %2725

2723:                                             ; preds = %2676
  %2724 = add nsw i32 %2678, 5
  br label %2725

2725:                                             ; preds = %2723, %2711
  %2726 = phi i16 [ %2696, %2723 ], [ %2721, %2711 ]
  %2727 = phi i32 [ %2724, %2723 ], [ %2722, %2711 ]
  store i32 %2727, ptr %2303, align 4, !tbaa !26
  %2728 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %2689
  %2729 = load i32, ptr %2728, align 4, !tbaa !4
  %2730 = icmp ult i8 %2688, 4
  br i1 %2730, label %2780, label %2731

2731:                                             ; preds = %2725
  %2732 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %2689
  %2733 = load i32, ptr %2732, align 4, !tbaa !4
  %2734 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2679, i32 %2733), !nosanitize !31
  %2735 = extractvalue { i32, i1 } %2734, 0, !nosanitize !31
  %2736 = extractvalue { i32, i1 } %2734, 1, !nosanitize !31
  br i1 %2736, label %2737, label %2738, !prof !32, !nosanitize !31

2737:                                             ; preds = %2731
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !31
  unreachable, !nosanitize !31

2738:                                             ; preds = %2731
  %2739 = sub nsw i32 16, %2729
  %2740 = icmp sgt i32 %2727, %2739
  br i1 %2740, label %2741, label %2772

2741:                                             ; preds = %2738
  %2742 = and i32 %2735, 65535
  %2743 = shl i32 %2735, %2727
  %2744 = trunc i32 %2743 to i16
  %2745 = or i16 %2726, %2744
  store i16 %2745, ptr %2503, align 8, !tbaa !25
  %2746 = load i64, ptr %2504, align 8, !tbaa !30
  %2747 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2746, i64 1), !nosanitize !31
  %2748 = extractvalue { i64, i1 } %2747, 1, !nosanitize !31
  br i1 %2748, label %2749, label %2750, !prof !32, !nosanitize !31

2749:                                             ; preds = %2741
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2750:                                             ; preds = %2741
  %2751 = extractvalue { i64, i1 } %2747, 0, !nosanitize !31
  %2752 = load ptr, ptr %2505, align 8, !tbaa !33
  %2753 = trunc i16 %2745 to i8
  store i64 %2751, ptr %2504, align 8, !tbaa !30
  %2754 = getelementptr inbounds nuw i8, ptr %2752, i64 %2746
  store i8 %2753, ptr %2754, align 1, !tbaa !28
  %2755 = load i64, ptr %2504, align 8, !tbaa !30
  %2756 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2755, i64 1), !nosanitize !31
  %2757 = extractvalue { i64, i1 } %2756, 1, !nosanitize !31
  br i1 %2757, label %2758, label %2759, !prof !32, !nosanitize !31

2758:                                             ; preds = %2750
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2759:                                             ; preds = %2750
  %2760 = extractvalue { i64, i1 } %2756, 0, !nosanitize !31
  %2761 = load ptr, ptr %2505, align 8, !tbaa !33
  %2762 = load i16, ptr %2503, align 8, !tbaa !25
  %2763 = lshr i16 %2762, 8
  %2764 = trunc nuw i16 %2763 to i8
  store i64 %2760, ptr %2504, align 8, !tbaa !30
  %2765 = getelementptr inbounds nuw i8, ptr %2761, i64 %2755
  store i8 %2764, ptr %2765, align 1, !tbaa !28
  %2766 = load i32, ptr %2303, align 4, !tbaa !26
  %2767 = sub nsw i32 16, %2766
  %2768 = lshr i32 %2742, %2767
  %2769 = trunc nuw i32 %2768 to i16
  store i16 %2769, ptr %2503, align 8, !tbaa !25
  %2770 = add nsw i32 %2729, -16
  %2771 = add nsw i32 %2770, %2766
  br label %2777

2772:                                             ; preds = %2738
  %2773 = shl i32 %2735, %2727
  %2774 = trunc i32 %2773 to i16
  %2775 = or i16 %2726, %2774
  store i16 %2775, ptr %2503, align 8, !tbaa !25
  %2776 = add nsw i32 %2729, %2727
  br label %2777

2777:                                             ; preds = %2772, %2759, %2577, %2564
  %2778 = phi i16 [ %2574, %2564 ], [ %2549, %2577 ], [ %2775, %2772 ], [ %2769, %2759 ]
  %2779 = phi i32 [ %2576, %2564 ], [ %2578, %2577 ], [ %2776, %2772 ], [ %2771, %2759 ]
  store i32 %2779, ptr %2303, align 4, !tbaa !26
  br label %2780

2780:                                             ; preds = %2777, %2725
  %2781 = phi i16 [ %2726, %2725 ], [ %2778, %2777 ]
  %2782 = phi i32 [ %2727, %2725 ], [ %2779, %2777 ]
  %2783 = load i32, ptr %2498, align 4, !tbaa !29
  %2784 = icmp ult i32 %2528, %2783
  br i1 %2784, label %2506, label %.loopexit, !llvm.loop !77

.loopexit:                                        ; preds = %2780, %2495
  %2785 = phi i16 [ %2496, %2495 ], [ %2781, %2780 ]
  %2786 = phi i32 [ %2497, %2495 ], [ %2782, %2780 ]
  %2787 = icmp sgt i32 %2786, 9
  %2788 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %2787, label %2789, label %2814

2789:                                             ; preds = %.loopexit
  %2790 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2791 = load i64, ptr %2790, align 8, !tbaa !30
  %2792 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2791, i64 1), !nosanitize !31
  %2793 = extractvalue { i64, i1 } %2792, 1, !nosanitize !31
  br i1 %2793, label %2794, label %2795, !prof !32, !nosanitize !31

2794:                                             ; preds = %2789
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2795:                                             ; preds = %2789
  %2796 = extractvalue { i64, i1 } %2792, 0, !nosanitize !31
  %2797 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2798 = load ptr, ptr %2797, align 8, !tbaa !33
  %2799 = trunc i16 %2785 to i8
  store i64 %2796, ptr %2790, align 8, !tbaa !30
  %2800 = getelementptr inbounds nuw i8, ptr %2798, i64 %2791
  store i8 %2799, ptr %2800, align 1, !tbaa !28
  %2801 = load i64, ptr %2790, align 8, !tbaa !30
  %2802 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2801, i64 1), !nosanitize !31
  %2803 = extractvalue { i64, i1 } %2802, 1, !nosanitize !31
  br i1 %2803, label %2804, label %2805, !prof !32, !nosanitize !31

2804:                                             ; preds = %2795
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2805:                                             ; preds = %2795
  %2806 = extractvalue { i64, i1 } %2802, 0, !nosanitize !31
  %2807 = load ptr, ptr %2797, align 8, !tbaa !33
  %2808 = load i16, ptr %2788, align 8, !tbaa !25
  %2809 = lshr i16 %2808, 8
  %2810 = trunc nuw i16 %2809 to i8
  store i64 %2806, ptr %2790, align 8, !tbaa !30
  %2811 = getelementptr inbounds nuw i8, ptr %2807, i64 %2801
  store i8 %2810, ptr %2811, align 1, !tbaa !28
  %2812 = load i32, ptr %2303, align 4, !tbaa !26
  store i16 0, ptr %2788, align 8, !tbaa !25
  %2813 = add nsw i32 %2812, -9
  br label %2816

2814:                                             ; preds = %.loopexit
  %2815 = add nsw i32 %2786, 7
  br label %2816

2816:                                             ; preds = %2814, %2805
  %2817 = phi i32 [ %2815, %2814 ], [ %2813, %2805 ]
  store i32 %2817, ptr %2303, align 4, !tbaa !26
  br label %4183

2818:                                             ; preds = %2451
  %2819 = add i32 %3, 4
  br i1 %2305, label %2820, label %2854

2820:                                             ; preds = %2818
  %2821 = and i32 %2819, 65535
  %2822 = shl i32 %2819, %2304
  %2823 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2824 = load i16, ptr %2823, align 8, !tbaa !25
  %2825 = trunc i32 %2822 to i16
  %2826 = or i16 %2824, %2825
  store i16 %2826, ptr %2823, align 8, !tbaa !25
  %2827 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2828 = load i64, ptr %2827, align 8, !tbaa !30
  %2829 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2828, i64 1), !nosanitize !31
  %2830 = extractvalue { i64, i1 } %2829, 1, !nosanitize !31
  br i1 %2830, label %2831, label %2832, !prof !32, !nosanitize !31

2831:                                             ; preds = %2820
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2832:                                             ; preds = %2820
  %2833 = extractvalue { i64, i1 } %2829, 0, !nosanitize !31
  %2834 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2835 = load ptr, ptr %2834, align 8, !tbaa !33
  %2836 = trunc i16 %2826 to i8
  store i64 %2833, ptr %2827, align 8, !tbaa !30
  %2837 = getelementptr inbounds nuw i8, ptr %2835, i64 %2828
  store i8 %2836, ptr %2837, align 1, !tbaa !28
  %2838 = load i64, ptr %2827, align 8, !tbaa !30
  %2839 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2838, i64 1), !nosanitize !31
  %2840 = extractvalue { i64, i1 } %2839, 1, !nosanitize !31
  br i1 %2840, label %2841, label %2842, !prof !32, !nosanitize !31

2841:                                             ; preds = %2832
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2842:                                             ; preds = %2832
  %2843 = extractvalue { i64, i1 } %2839, 0, !nosanitize !31
  %2844 = load ptr, ptr %2834, align 8, !tbaa !33
  %2845 = load i16, ptr %2823, align 8, !tbaa !25
  %2846 = lshr i16 %2845, 8
  %2847 = trunc nuw i16 %2846 to i8
  store i64 %2843, ptr %2827, align 8, !tbaa !30
  %2848 = getelementptr inbounds nuw i8, ptr %2844, i64 %2838
  store i8 %2847, ptr %2848, align 1, !tbaa !28
  %2849 = load i32, ptr %2303, align 4, !tbaa !26
  %2850 = sub nsw i32 16, %2849
  %2851 = lshr i32 %2821, %2850
  %2852 = trunc nuw i32 %2851 to i16
  store i16 %2852, ptr %2823, align 8, !tbaa !25
  %2853 = add nsw i32 %2849, -13
  br label %2861

2854:                                             ; preds = %2818
  %2855 = shl i32 %2819, %2304
  %2856 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2857 = load i16, ptr %2856, align 8, !tbaa !25
  %2858 = trunc i32 %2855 to i16
  %2859 = or i16 %2857, %2858
  store i16 %2859, ptr %2856, align 8, !tbaa !25
  %2860 = add nsw i32 %2304, 3
  br label %2861

2861:                                             ; preds = %2854, %2842
  %2862 = phi i16 [ %2859, %2854 ], [ %2852, %2842 ]
  %2863 = phi i32 [ %2860, %2854 ], [ %2853, %2842 ]
  store i32 %2863, ptr %2303, align 4, !tbaa !26
  %2864 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %2865 = load i32, ptr %2864, align 8, !tbaa !71
  %2866 = add nsw i32 %2865, 1
  %2867 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %2868 = load i32, ptr %2867, align 8, !tbaa !73
  %2869 = add nsw i32 %2868, 1
  %2870 = add nuw nsw i32 %2292, 1
  %2871 = icmp sgt i32 %2863, 11
  %2872 = add i32 %2865, 65280
  br i1 %2871, label %2873, label %2906

2873:                                             ; preds = %2861
  %2874 = and i32 %2872, 65535
  %2875 = shl i32 %2872, %2863
  %2876 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2877 = trunc i32 %2875 to i16
  %2878 = or i16 %2862, %2877
  store i16 %2878, ptr %2876, align 8, !tbaa !25
  %2879 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2880 = load i64, ptr %2879, align 8, !tbaa !30
  %2881 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2880, i64 1), !nosanitize !31
  %2882 = extractvalue { i64, i1 } %2881, 1, !nosanitize !31
  br i1 %2882, label %2883, label %2884, !prof !32, !nosanitize !31

2883:                                             ; preds = %2873
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2884:                                             ; preds = %2873
  %2885 = extractvalue { i64, i1 } %2881, 0, !nosanitize !31
  %2886 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2887 = load ptr, ptr %2886, align 8, !tbaa !33
  %2888 = trunc i16 %2878 to i8
  store i64 %2885, ptr %2879, align 8, !tbaa !30
  %2889 = getelementptr inbounds nuw i8, ptr %2887, i64 %2880
  store i8 %2888, ptr %2889, align 1, !tbaa !28
  %2890 = load i64, ptr %2879, align 8, !tbaa !30
  %2891 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2890, i64 1), !nosanitize !31
  %2892 = extractvalue { i64, i1 } %2891, 1, !nosanitize !31
  br i1 %2892, label %2893, label %2894, !prof !32, !nosanitize !31

2893:                                             ; preds = %2884
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2894:                                             ; preds = %2884
  %2895 = extractvalue { i64, i1 } %2891, 0, !nosanitize !31
  %2896 = load ptr, ptr %2886, align 8, !tbaa !33
  %2897 = load i16, ptr %2876, align 8, !tbaa !25
  %2898 = lshr i16 %2897, 8
  %2899 = trunc nuw i16 %2898 to i8
  store i64 %2895, ptr %2879, align 8, !tbaa !30
  %2900 = getelementptr inbounds nuw i8, ptr %2896, i64 %2890
  store i8 %2899, ptr %2900, align 1, !tbaa !28
  %2901 = load i32, ptr %2303, align 4, !tbaa !26
  %2902 = sub nsw i32 16, %2901
  %2903 = lshr i32 %2874, %2902
  %2904 = trunc nuw i32 %2903 to i16
  store i16 %2904, ptr %2876, align 8, !tbaa !25
  %2905 = add nsw i32 %2901, -11
  br label %2912

2906:                                             ; preds = %2861
  %2907 = shl i32 %2872, %2863
  %2908 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2909 = trunc i32 %2907 to i16
  %2910 = or i16 %2862, %2909
  store i16 %2910, ptr %2908, align 8, !tbaa !25
  %2911 = add nsw i32 %2863, 5
  br label %2912

2912:                                             ; preds = %2906, %2894
  %2913 = phi i16 [ %2910, %2906 ], [ %2904, %2894 ]
  %2914 = phi i32 [ %2911, %2906 ], [ %2905, %2894 ]
  store i32 %2914, ptr %2303, align 4, !tbaa !26
  %2915 = icmp sgt i32 %2914, 11
  br i1 %2915, label %2916, label %2949

2916:                                             ; preds = %2912
  %2917 = and i32 %2868, 65535
  %2918 = shl i32 %2868, %2914
  %2919 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2920 = trunc i32 %2918 to i16
  %2921 = or i16 %2913, %2920
  store i16 %2921, ptr %2919, align 8, !tbaa !25
  %2922 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2923 = load i64, ptr %2922, align 8, !tbaa !30
  %2924 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2923, i64 1), !nosanitize !31
  %2925 = extractvalue { i64, i1 } %2924, 1, !nosanitize !31
  br i1 %2925, label %2926, label %2927, !prof !32, !nosanitize !31

2926:                                             ; preds = %2916
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2927:                                             ; preds = %2916
  %2928 = extractvalue { i64, i1 } %2924, 0, !nosanitize !31
  %2929 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2930 = load ptr, ptr %2929, align 8, !tbaa !33
  %2931 = trunc i16 %2921 to i8
  store i64 %2928, ptr %2922, align 8, !tbaa !30
  %2932 = getelementptr inbounds nuw i8, ptr %2930, i64 %2923
  store i8 %2931, ptr %2932, align 1, !tbaa !28
  %2933 = load i64, ptr %2922, align 8, !tbaa !30
  %2934 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2933, i64 1), !nosanitize !31
  %2935 = extractvalue { i64, i1 } %2934, 1, !nosanitize !31
  br i1 %2935, label %2936, label %2937, !prof !32, !nosanitize !31

2936:                                             ; preds = %2927
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2937:                                             ; preds = %2927
  %2938 = extractvalue { i64, i1 } %2934, 0, !nosanitize !31
  %2939 = load ptr, ptr %2929, align 8, !tbaa !33
  %2940 = load i16, ptr %2919, align 8, !tbaa !25
  %2941 = lshr i16 %2940, 8
  %2942 = trunc nuw i16 %2941 to i8
  store i64 %2938, ptr %2922, align 8, !tbaa !30
  %2943 = getelementptr inbounds nuw i8, ptr %2939, i64 %2933
  store i8 %2942, ptr %2943, align 1, !tbaa !28
  %2944 = load i32, ptr %2303, align 4, !tbaa !26
  %2945 = sub nsw i32 16, %2944
  %2946 = lshr i32 %2917, %2945
  %2947 = trunc nuw i32 %2946 to i16
  store i16 %2947, ptr %2919, align 8, !tbaa !25
  %2948 = add nsw i32 %2944, -11
  br label %2955

2949:                                             ; preds = %2912
  %2950 = shl i32 %2868, %2914
  %2951 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2952 = trunc i32 %2950 to i16
  %2953 = or i16 %2913, %2952
  store i16 %2953, ptr %2951, align 8, !tbaa !25
  %2954 = add nsw i32 %2914, 5
  br label %2955

2955:                                             ; preds = %2949, %2937
  %2956 = phi i16 [ %2953, %2949 ], [ %2947, %2937 ]
  %2957 = phi i32 [ %2954, %2949 ], [ %2948, %2937 ]
  store i32 %2957, ptr %2303, align 4, !tbaa !26
  %2958 = icmp sgt i32 %2957, 12
  %2959 = add nuw nsw i32 %2292, 65533
  br i1 %2958, label %2960, label %2993

2960:                                             ; preds = %2955
  %2961 = and i32 %2959, 65535
  %2962 = shl i32 %2959, %2957
  %2963 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2964 = trunc i32 %2962 to i16
  %2965 = or i16 %2956, %2964
  store i16 %2965, ptr %2963, align 8, !tbaa !25
  %2966 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2967 = load i64, ptr %2966, align 8, !tbaa !30
  %2968 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2967, i64 1), !nosanitize !31
  %2969 = extractvalue { i64, i1 } %2968, 1, !nosanitize !31
  br i1 %2969, label %2970, label %2971, !prof !32, !nosanitize !31

2970:                                             ; preds = %2960
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2971:                                             ; preds = %2960
  %2972 = extractvalue { i64, i1 } %2968, 0, !nosanitize !31
  %2973 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2974 = load ptr, ptr %2973, align 8, !tbaa !33
  %2975 = trunc i16 %2965 to i8
  store i64 %2972, ptr %2966, align 8, !tbaa !30
  %2976 = getelementptr inbounds nuw i8, ptr %2974, i64 %2967
  store i8 %2975, ptr %2976, align 1, !tbaa !28
  %2977 = load i64, ptr %2966, align 8, !tbaa !30
  %2978 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2977, i64 1), !nosanitize !31
  %2979 = extractvalue { i64, i1 } %2978, 1, !nosanitize !31
  br i1 %2979, label %2980, label %2981, !prof !32, !nosanitize !31

2980:                                             ; preds = %2971
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

2981:                                             ; preds = %2971
  %2982 = extractvalue { i64, i1 } %2978, 0, !nosanitize !31
  %2983 = load ptr, ptr %2973, align 8, !tbaa !33
  %2984 = load i16, ptr %2963, align 8, !tbaa !25
  %2985 = lshr i16 %2984, 8
  %2986 = trunc nuw i16 %2985 to i8
  store i64 %2982, ptr %2966, align 8, !tbaa !30
  %2987 = getelementptr inbounds nuw i8, ptr %2983, i64 %2977
  store i8 %2986, ptr %2987, align 1, !tbaa !28
  %2988 = load i32, ptr %2303, align 4, !tbaa !26
  %2989 = sub nsw i32 16, %2988
  %2990 = lshr i32 %2961, %2989
  %2991 = trunc nuw i32 %2990 to i16
  %2992 = add nsw i32 %2988, -12
  br label %2998

2993:                                             ; preds = %2955
  %2994 = shl nuw nsw i32 %2959, %2957
  %2995 = trunc i32 %2994 to i16
  %2996 = or i16 %2956, %2995
  %2997 = add nsw i32 %2957, 4
  br label %2998

2998:                                             ; preds = %2993, %2981
  %2999 = phi i16 [ %2996, %2993 ], [ %2991, %2981 ]
  %3000 = phi i32 [ %2997, %2993 ], [ %2992, %2981 ]
  store i32 %3000, ptr %2303, align 4, !tbaa !26
  %3001 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3002 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3003 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3004 = zext nneg i32 %2870 to i64
  br label %3005

3005:                                             ; preds = %3048, %2998
  %3006 = phi i16 [ %2999, %2998 ], [ %3049, %3048 ]
  %3007 = phi i32 [ %3000, %2998 ], [ %3050, %3048 ]
  %3008 = phi i64 [ 0, %2998 ], [ %3051, %3048 ]
  %3009 = icmp sgt i32 %3007, 13
  %3010 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %3008
  %3011 = load i8, ptr %3010, align 1, !tbaa !28
  %3012 = zext i8 %3011 to i64
  %3013 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3012
  %3014 = getelementptr inbounds nuw i8, ptr %3013, i64 2750
  %3015 = load i16, ptr %3014, align 2, !tbaa !28
  %3016 = zext i16 %3015 to i32
  %3017 = shl i32 %3016, %3007
  %3018 = trunc i32 %3017 to i16
  %3019 = or i16 %3006, %3018
  store i16 %3019, ptr %3001, align 8, !tbaa !25
  br i1 %3009, label %3020, label %3046

3020:                                             ; preds = %3005
  %3021 = load i64, ptr %3002, align 8, !tbaa !30
  %3022 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3021, i64 1), !nosanitize !31
  %3023 = extractvalue { i64, i1 } %3022, 1, !nosanitize !31
  br i1 %3023, label %3024, label %3025, !prof !32, !nosanitize !31

3024:                                             ; preds = %3020
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3025:                                             ; preds = %3020
  %3026 = extractvalue { i64, i1 } %3022, 0, !nosanitize !31
  %3027 = load ptr, ptr %3003, align 8, !tbaa !33
  %3028 = trunc i16 %3019 to i8
  store i64 %3026, ptr %3002, align 8, !tbaa !30
  %3029 = getelementptr inbounds nuw i8, ptr %3027, i64 %3021
  store i8 %3028, ptr %3029, align 1, !tbaa !28
  %3030 = load i64, ptr %3002, align 8, !tbaa !30
  %3031 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3030, i64 1), !nosanitize !31
  %3032 = extractvalue { i64, i1 } %3031, 1, !nosanitize !31
  br i1 %3032, label %3033, label %3034, !prof !32, !nosanitize !31

3033:                                             ; preds = %3025
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3034:                                             ; preds = %3025
  %3035 = extractvalue { i64, i1 } %3031, 0, !nosanitize !31
  %3036 = load ptr, ptr %3003, align 8, !tbaa !33
  %3037 = load i16, ptr %3001, align 8, !tbaa !25
  %3038 = lshr i16 %3037, 8
  %3039 = trunc nuw i16 %3038 to i8
  store i64 %3035, ptr %3002, align 8, !tbaa !30
  %3040 = getelementptr inbounds nuw i8, ptr %3036, i64 %3030
  store i8 %3039, ptr %3040, align 1, !tbaa !28
  %3041 = load i32, ptr %2303, align 4, !tbaa !26
  %3042 = sub nsw i32 16, %3041
  %3043 = lshr i32 %3016, %3042
  %3044 = trunc nuw i32 %3043 to i16
  store i16 %3044, ptr %3001, align 8, !tbaa !25
  %3045 = add nsw i32 %3041, -13
  br label %3048

3046:                                             ; preds = %3005
  %3047 = add nsw i32 %3007, 3
  br label %3048

3048:                                             ; preds = %3046, %3034
  %3049 = phi i16 [ %3019, %3046 ], [ %3044, %3034 ]
  %3050 = phi i32 [ %3047, %3046 ], [ %3045, %3034 ]
  store i32 %3050, ptr %2303, align 4, !tbaa !26
  %3051 = add nuw nsw i64 %3008, 1
  %3052 = icmp eq i64 %3051, %3004
  br i1 %3052, label %3053, label %3005, !llvm.loop !78

3053:                                             ; preds = %3048
  %3054 = icmp slt i32 %2865, 0
  br i1 %3054, label %.loopexit246, label %3055

3055:                                             ; preds = %3053
  %3056 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %3057 = load i16, ptr %3056, align 2, !tbaa !28
  %3058 = icmp eq i16 %3057, 0
  %3059 = select i1 %3058, i32 138, i32 7
  %3060 = select i1 %3058, i32 3, i32 4
  %3061 = zext i16 %3057 to i32
  %3062 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3063 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3064 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3065 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3066 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3067 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3068 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %3069 = zext nneg i32 %2866 to i64
  br label %3070

3070:                                             ; preds = %3441, %3055
  %3071 = phi i16 [ %3049, %3055 ], [ %3442, %3441 ]
  %3072 = phi i32 [ %3050, %3055 ], [ %3443, %3441 ]
  %3073 = phi i64 [ 0, %3055 ], [ %3079, %3441 ]
  %3074 = phi i32 [ -1, %3055 ], [ %3447, %3441 ]
  %3075 = phi i32 [ %3061, %3055 ], [ %3083, %3441 ]
  %3076 = phi i32 [ 0, %3055 ], [ %3446, %3441 ]
  %3077 = phi i32 [ %3059, %3055 ], [ %3445, %3441 ]
  %3078 = phi i32 [ %3060, %3055 ], [ %3444, %3441 ]
  %3079 = add nuw nsw i64 %3073, 1
  %3080 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3079
  %3081 = getelementptr inbounds nuw i8, ptr %3080, i64 214
  %3082 = load i16, ptr %3081, align 2, !tbaa !28
  %3083 = zext i16 %3082 to i32
  %3084 = add nsw i32 %3076, 1
  %3085 = icmp slt i32 %3084, %3077
  %3086 = icmp eq i32 %3075, %3083
  %3087 = select i1 %3085, i1 %3086, i1 false
  br i1 %3087, label %3441, label %3088

3088:                                             ; preds = %3070
  %3089 = icmp slt i32 %3084, %3078
  br i1 %3089, label %3090, label %3141

3090:                                             ; preds = %3088
  %3091 = zext nneg i32 %3075 to i64
  %3092 = getelementptr inbounds nuw [4 x i8], ptr %3062, i64 %3091
  %3093 = getelementptr inbounds nuw i8, ptr %3092, i64 2
  br label %3094

3094:                                             ; preds = %3136, %3090
  %3095 = phi i16 [ %3137, %3136 ], [ %3071, %3090 ]
  %3096 = phi i32 [ %3138, %3136 ], [ %3072, %3090 ]
  %3097 = phi i32 [ %3139, %3136 ], [ %3084, %3090 ]
  %3098 = load i16, ptr %3093, align 2, !tbaa !28
  %3099 = zext i16 %3098 to i32
  %3100 = sub nsw i32 16, %3099
  %3101 = icmp sgt i32 %3096, %3100
  %3102 = load i16, ptr %3092, align 4, !tbaa !28
  %3103 = zext i16 %3102 to i32
  %3104 = shl i32 %3103, %3096
  %3105 = trunc i32 %3104 to i16
  %3106 = or i16 %3095, %3105
  store i16 %3106, ptr %3001, align 8, !tbaa !25
  br i1 %3101, label %3107, label %3134

3107:                                             ; preds = %3094
  %3108 = load i64, ptr %3002, align 8, !tbaa !30
  %3109 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3108, i64 1), !nosanitize !31
  %3110 = extractvalue { i64, i1 } %3109, 1, !nosanitize !31
  br i1 %3110, label %3111, label %3112, !prof !32, !nosanitize !31

3111:                                             ; preds = %3107
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3112:                                             ; preds = %3107
  %3113 = extractvalue { i64, i1 } %3109, 0, !nosanitize !31
  %3114 = load ptr, ptr %3003, align 8, !tbaa !33
  %3115 = trunc i16 %3106 to i8
  store i64 %3113, ptr %3002, align 8, !tbaa !30
  %3116 = getelementptr inbounds nuw i8, ptr %3114, i64 %3108
  store i8 %3115, ptr %3116, align 1, !tbaa !28
  %3117 = load i64, ptr %3002, align 8, !tbaa !30
  %3118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3117, i64 1), !nosanitize !31
  %3119 = extractvalue { i64, i1 } %3118, 1, !nosanitize !31
  br i1 %3119, label %3120, label %3121, !prof !32, !nosanitize !31

3120:                                             ; preds = %3112
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3121:                                             ; preds = %3112
  %3122 = extractvalue { i64, i1 } %3118, 0, !nosanitize !31
  %3123 = load ptr, ptr %3003, align 8, !tbaa !33
  %3124 = load i16, ptr %3001, align 8, !tbaa !25
  %3125 = lshr i16 %3124, 8
  %3126 = trunc nuw i16 %3125 to i8
  store i64 %3122, ptr %3002, align 8, !tbaa !30
  %3127 = getelementptr inbounds nuw i8, ptr %3123, i64 %3117
  store i8 %3126, ptr %3127, align 1, !tbaa !28
  %3128 = load i32, ptr %2303, align 4, !tbaa !26
  %3129 = sub nsw i32 16, %3128
  %3130 = lshr i32 %3103, %3129
  %3131 = trunc nuw i32 %3130 to i16
  store i16 %3131, ptr %3001, align 8, !tbaa !25
  %3132 = add nsw i32 %3099, -16
  %3133 = add nsw i32 %3132, %3128
  br label %3136

3134:                                             ; preds = %3094
  %3135 = add nsw i32 %3096, %3099
  br label %3136

3136:                                             ; preds = %3134, %3121
  %3137 = phi i16 [ %3106, %3134 ], [ %3131, %3121 ]
  %3138 = phi i32 [ %3135, %3134 ], [ %3133, %3121 ]
  store i32 %3138, ptr %2303, align 4, !tbaa !26
  %3139 = add nsw i32 %3097, -1
  %3140 = icmp eq i32 %3139, 0
  br i1 %3140, label %.loopexit245, label %3094, !llvm.loop !79

3141:                                             ; preds = %3088
  %3142 = icmp eq i32 %3075, 0
  br i1 %3142, label %3272, label %3143

3143:                                             ; preds = %3141
  %3144 = icmp eq i32 %3075, %3074
  br i1 %3144, label %3190, label %3145

3145:                                             ; preds = %3143
  %3146 = zext nneg i32 %3075 to i64
  %3147 = getelementptr inbounds nuw [4 x i8], ptr %3062, i64 %3146
  %3148 = getelementptr inbounds nuw i8, ptr %3147, i64 2
  %3149 = load i16, ptr %3148, align 2, !tbaa !28
  %3150 = zext i16 %3149 to i32
  %3151 = sub nsw i32 16, %3150
  %3152 = icmp sgt i32 %3072, %3151
  %3153 = load i16, ptr %3147, align 4, !tbaa !28
  %3154 = zext i16 %3153 to i32
  %3155 = shl i32 %3154, %3072
  %3156 = trunc i32 %3155 to i16
  %3157 = or i16 %3071, %3156
  store i16 %3157, ptr %3001, align 8, !tbaa !25
  br i1 %3152, label %3158, label %3185

3158:                                             ; preds = %3145
  %3159 = load i64, ptr %3002, align 8, !tbaa !30
  %3160 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3159, i64 1), !nosanitize !31
  %3161 = extractvalue { i64, i1 } %3160, 1, !nosanitize !31
  br i1 %3161, label %3162, label %3163, !prof !32, !nosanitize !31

3162:                                             ; preds = %3158
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3163:                                             ; preds = %3158
  %3164 = extractvalue { i64, i1 } %3160, 0, !nosanitize !31
  %3165 = load ptr, ptr %3003, align 8, !tbaa !33
  %3166 = trunc i16 %3157 to i8
  store i64 %3164, ptr %3002, align 8, !tbaa !30
  %3167 = getelementptr inbounds nuw i8, ptr %3165, i64 %3159
  store i8 %3166, ptr %3167, align 1, !tbaa !28
  %3168 = load i64, ptr %3002, align 8, !tbaa !30
  %3169 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3168, i64 1), !nosanitize !31
  %3170 = extractvalue { i64, i1 } %3169, 1, !nosanitize !31
  br i1 %3170, label %3171, label %3172, !prof !32, !nosanitize !31

3171:                                             ; preds = %3163
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3172:                                             ; preds = %3163
  %3173 = extractvalue { i64, i1 } %3169, 0, !nosanitize !31
  %3174 = load ptr, ptr %3003, align 8, !tbaa !33
  %3175 = load i16, ptr %3001, align 8, !tbaa !25
  %3176 = lshr i16 %3175, 8
  %3177 = trunc nuw i16 %3176 to i8
  store i64 %3173, ptr %3002, align 8, !tbaa !30
  %3178 = getelementptr inbounds nuw i8, ptr %3174, i64 %3168
  store i8 %3177, ptr %3178, align 1, !tbaa !28
  %3179 = load i32, ptr %2303, align 4, !tbaa !26
  %3180 = sub nsw i32 16, %3179
  %3181 = lshr i32 %3154, %3180
  %3182 = trunc nuw i32 %3181 to i16
  store i16 %3182, ptr %3001, align 8, !tbaa !25
  %3183 = add nsw i32 %3150, -16
  %3184 = add nsw i32 %3183, %3179
  br label %3187

3185:                                             ; preds = %3145
  %3186 = add nsw i32 %3072, %3150
  br label %3187

3187:                                             ; preds = %3185, %3172
  %3188 = phi i16 [ %3157, %3185 ], [ %3182, %3172 ]
  %3189 = phi i32 [ %3186, %3185 ], [ %3184, %3172 ]
  store i32 %3189, ptr %2303, align 4, !tbaa !26
  br label %3190

3190:                                             ; preds = %3187, %3143
  %3191 = phi i16 [ %3188, %3187 ], [ %3071, %3143 ]
  %3192 = phi i32 [ %3189, %3187 ], [ %3072, %3143 ]
  %3193 = phi i32 [ %3076, %3187 ], [ %3084, %3143 ]
  %3194 = load i16, ptr %3064, align 2, !tbaa !28
  %3195 = zext i16 %3194 to i32
  %3196 = sub nsw i32 16, %3195
  %3197 = icmp sgt i32 %3192, %3196
  %3198 = load i16, ptr %3063, align 4, !tbaa !28
  %3199 = zext i16 %3198 to i32
  %3200 = shl i32 %3199, %3192
  %3201 = trunc i32 %3200 to i16
  %3202 = or i16 %3191, %3201
  br i1 %3197, label %3203, label %3230

3203:                                             ; preds = %3190
  store i16 %3202, ptr %3001, align 8, !tbaa !25
  %3204 = load i64, ptr %3002, align 8, !tbaa !30
  %3205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3204, i64 1), !nosanitize !31
  %3206 = extractvalue { i64, i1 } %3205, 1, !nosanitize !31
  br i1 %3206, label %3207, label %3208, !prof !32, !nosanitize !31

3207:                                             ; preds = %3203
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3208:                                             ; preds = %3203
  %3209 = extractvalue { i64, i1 } %3205, 0, !nosanitize !31
  %3210 = load ptr, ptr %3003, align 8, !tbaa !33
  %3211 = trunc i16 %3202 to i8
  store i64 %3209, ptr %3002, align 8, !tbaa !30
  %3212 = getelementptr inbounds nuw i8, ptr %3210, i64 %3204
  store i8 %3211, ptr %3212, align 1, !tbaa !28
  %3213 = load i64, ptr %3002, align 8, !tbaa !30
  %3214 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3213, i64 1), !nosanitize !31
  %3215 = extractvalue { i64, i1 } %3214, 1, !nosanitize !31
  br i1 %3215, label %3216, label %3217, !prof !32, !nosanitize !31

3216:                                             ; preds = %3208
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3217:                                             ; preds = %3208
  %3218 = extractvalue { i64, i1 } %3214, 0, !nosanitize !31
  %3219 = load ptr, ptr %3003, align 8, !tbaa !33
  %3220 = load i16, ptr %3001, align 8, !tbaa !25
  %3221 = lshr i16 %3220, 8
  %3222 = trunc nuw i16 %3221 to i8
  store i64 %3218, ptr %3002, align 8, !tbaa !30
  %3223 = getelementptr inbounds nuw i8, ptr %3219, i64 %3213
  store i8 %3222, ptr %3223, align 1, !tbaa !28
  %3224 = load i32, ptr %2303, align 4, !tbaa !26
  %3225 = sub nsw i32 16, %3224
  %3226 = lshr i32 %3199, %3225
  %3227 = trunc nuw i32 %3226 to i16
  %3228 = add nsw i32 %3195, -16
  %3229 = add nsw i32 %3228, %3224
  br label %3232

3230:                                             ; preds = %3190
  %3231 = add nsw i32 %3192, %3195
  br label %3232

3232:                                             ; preds = %3230, %3217
  %3233 = phi i16 [ %3202, %3230 ], [ %3227, %3217 ]
  %3234 = phi i32 [ %3231, %3230 ], [ %3229, %3217 ]
  store i32 %3234, ptr %2303, align 4, !tbaa !26
  %3235 = icmp sgt i32 %3234, 14
  %3236 = add i32 %3193, 65533
  br i1 %3235, label %3237, label %3267

3237:                                             ; preds = %3232
  %3238 = and i32 %3236, 65535
  %3239 = shl i32 %3236, %3234
  %3240 = trunc i32 %3239 to i16
  %3241 = or i16 %3233, %3240
  store i16 %3241, ptr %3001, align 8, !tbaa !25
  %3242 = load i64, ptr %3002, align 8, !tbaa !30
  %3243 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3242, i64 1), !nosanitize !31
  %3244 = extractvalue { i64, i1 } %3243, 1, !nosanitize !31
  br i1 %3244, label %3245, label %3246, !prof !32, !nosanitize !31

3245:                                             ; preds = %3237
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3246:                                             ; preds = %3237
  %3247 = extractvalue { i64, i1 } %3243, 0, !nosanitize !31
  %3248 = load ptr, ptr %3003, align 8, !tbaa !33
  %3249 = trunc i16 %3241 to i8
  store i64 %3247, ptr %3002, align 8, !tbaa !30
  %3250 = getelementptr inbounds nuw i8, ptr %3248, i64 %3242
  store i8 %3249, ptr %3250, align 1, !tbaa !28
  %3251 = load i64, ptr %3002, align 8, !tbaa !30
  %3252 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3251, i64 1), !nosanitize !31
  %3253 = extractvalue { i64, i1 } %3252, 1, !nosanitize !31
  br i1 %3253, label %3254, label %3255, !prof !32, !nosanitize !31

3254:                                             ; preds = %3246
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3255:                                             ; preds = %3246
  %3256 = extractvalue { i64, i1 } %3252, 0, !nosanitize !31
  %3257 = load ptr, ptr %3003, align 8, !tbaa !33
  %3258 = load i16, ptr %3001, align 8, !tbaa !25
  %3259 = lshr i16 %3258, 8
  %3260 = trunc nuw i16 %3259 to i8
  store i64 %3256, ptr %3002, align 8, !tbaa !30
  %3261 = getelementptr inbounds nuw i8, ptr %3257, i64 %3251
  store i8 %3260, ptr %3261, align 1, !tbaa !28
  %3262 = load i32, ptr %2303, align 4, !tbaa !26
  %3263 = sub nsw i32 16, %3262
  %3264 = lshr i32 %3238, %3263
  %3265 = trunc nuw i32 %3264 to i16
  store i16 %3265, ptr %3001, align 8, !tbaa !25
  %3266 = add nsw i32 %3262, -14
  br label %3432

3267:                                             ; preds = %3232
  %3268 = shl i32 %3236, %3234
  %3269 = trunc i32 %3268 to i16
  %3270 = or i16 %3233, %3269
  store i16 %3270, ptr %3001, align 8, !tbaa !25
  %3271 = add nsw i32 %3234, 2
  br label %3432

3272:                                             ; preds = %3141
  %3273 = icmp slt i32 %3076, 10
  br i1 %3273, label %3274, label %3353

3274:                                             ; preds = %3272
  %3275 = load i16, ptr %3068, align 2, !tbaa !28
  %3276 = zext i16 %3275 to i32
  %3277 = sub nsw i32 16, %3276
  %3278 = icmp sgt i32 %3072, %3277
  %3279 = load i16, ptr %3067, align 4, !tbaa !28
  %3280 = zext i16 %3279 to i32
  %3281 = shl i32 %3280, %3072
  %3282 = trunc i32 %3281 to i16
  %3283 = or i16 %3071, %3282
  store i16 %3283, ptr %3001, align 8, !tbaa !25
  br i1 %3278, label %3284, label %3311

3284:                                             ; preds = %3274
  %3285 = load i64, ptr %3002, align 8, !tbaa !30
  %3286 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3285, i64 1), !nosanitize !31
  %3287 = extractvalue { i64, i1 } %3286, 1, !nosanitize !31
  br i1 %3287, label %3288, label %3289, !prof !32, !nosanitize !31

3288:                                             ; preds = %3284
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3289:                                             ; preds = %3284
  %3290 = extractvalue { i64, i1 } %3286, 0, !nosanitize !31
  %3291 = load ptr, ptr %3003, align 8, !tbaa !33
  %3292 = trunc i16 %3283 to i8
  store i64 %3290, ptr %3002, align 8, !tbaa !30
  %3293 = getelementptr inbounds nuw i8, ptr %3291, i64 %3285
  store i8 %3292, ptr %3293, align 1, !tbaa !28
  %3294 = load i64, ptr %3002, align 8, !tbaa !30
  %3295 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3294, i64 1), !nosanitize !31
  %3296 = extractvalue { i64, i1 } %3295, 1, !nosanitize !31
  br i1 %3296, label %3297, label %3298, !prof !32, !nosanitize !31

3297:                                             ; preds = %3289
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3298:                                             ; preds = %3289
  %3299 = extractvalue { i64, i1 } %3295, 0, !nosanitize !31
  %3300 = load ptr, ptr %3003, align 8, !tbaa !33
  %3301 = load i16, ptr %3001, align 8, !tbaa !25
  %3302 = lshr i16 %3301, 8
  %3303 = trunc nuw i16 %3302 to i8
  store i64 %3299, ptr %3002, align 8, !tbaa !30
  %3304 = getelementptr inbounds nuw i8, ptr %3300, i64 %3294
  store i8 %3303, ptr %3304, align 1, !tbaa !28
  %3305 = load i32, ptr %2303, align 4, !tbaa !26
  %3306 = sub nsw i32 16, %3305
  %3307 = lshr i32 %3280, %3306
  %3308 = trunc nuw i32 %3307 to i16
  store i16 %3308, ptr %3001, align 8, !tbaa !25
  %3309 = add nsw i32 %3276, -16
  %3310 = add nsw i32 %3309, %3305
  br label %3313

3311:                                             ; preds = %3274
  %3312 = add nsw i32 %3072, %3276
  br label %3313

3313:                                             ; preds = %3311, %3298
  %3314 = phi i16 [ %3283, %3311 ], [ %3308, %3298 ]
  %3315 = phi i32 [ %3312, %3311 ], [ %3310, %3298 ]
  store i32 %3315, ptr %2303, align 4, !tbaa !26
  %3316 = icmp sgt i32 %3315, 13
  %3317 = add nsw i32 %3076, 65534
  br i1 %3316, label %3318, label %3348

3318:                                             ; preds = %3313
  %3319 = and i32 %3317, 65535
  %3320 = shl i32 %3317, %3315
  %3321 = trunc i32 %3320 to i16
  %3322 = or i16 %3314, %3321
  store i16 %3322, ptr %3001, align 8, !tbaa !25
  %3323 = load i64, ptr %3002, align 8, !tbaa !30
  %3324 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3323, i64 1), !nosanitize !31
  %3325 = extractvalue { i64, i1 } %3324, 1, !nosanitize !31
  br i1 %3325, label %3326, label %3327, !prof !32, !nosanitize !31

3326:                                             ; preds = %3318
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3327:                                             ; preds = %3318
  %3328 = extractvalue { i64, i1 } %3324, 0, !nosanitize !31
  %3329 = load ptr, ptr %3003, align 8, !tbaa !33
  %3330 = trunc i16 %3322 to i8
  store i64 %3328, ptr %3002, align 8, !tbaa !30
  %3331 = getelementptr inbounds nuw i8, ptr %3329, i64 %3323
  store i8 %3330, ptr %3331, align 1, !tbaa !28
  %3332 = load i64, ptr %3002, align 8, !tbaa !30
  %3333 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3332, i64 1), !nosanitize !31
  %3334 = extractvalue { i64, i1 } %3333, 1, !nosanitize !31
  br i1 %3334, label %3335, label %3336, !prof !32, !nosanitize !31

3335:                                             ; preds = %3327
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3336:                                             ; preds = %3327
  %3337 = extractvalue { i64, i1 } %3333, 0, !nosanitize !31
  %3338 = load ptr, ptr %3003, align 8, !tbaa !33
  %3339 = load i16, ptr %3001, align 8, !tbaa !25
  %3340 = lshr i16 %3339, 8
  %3341 = trunc nuw i16 %3340 to i8
  store i64 %3337, ptr %3002, align 8, !tbaa !30
  %3342 = getelementptr inbounds nuw i8, ptr %3338, i64 %3332
  store i8 %3341, ptr %3342, align 1, !tbaa !28
  %3343 = load i32, ptr %2303, align 4, !tbaa !26
  %3344 = sub nsw i32 16, %3343
  %3345 = lshr i32 %3319, %3344
  %3346 = trunc nuw i32 %3345 to i16
  store i16 %3346, ptr %3001, align 8, !tbaa !25
  %3347 = add nsw i32 %3343, -13
  br label %3432

3348:                                             ; preds = %3313
  %3349 = shl i32 %3317, %3315
  %3350 = trunc i32 %3349 to i16
  %3351 = or i16 %3314, %3350
  store i16 %3351, ptr %3001, align 8, !tbaa !25
  %3352 = add nsw i32 %3315, 3
  br label %3432

3353:                                             ; preds = %3272
  %3354 = load i16, ptr %3066, align 2, !tbaa !28
  %3355 = zext i16 %3354 to i32
  %3356 = sub nsw i32 16, %3355
  %3357 = icmp sgt i32 %3072, %3356
  %3358 = load i16, ptr %3065, align 4, !tbaa !28
  %3359 = zext i16 %3358 to i32
  %3360 = shl i32 %3359, %3072
  %3361 = trunc i32 %3360 to i16
  %3362 = or i16 %3071, %3361
  store i16 %3362, ptr %3001, align 8, !tbaa !25
  br i1 %3357, label %3363, label %3390

3363:                                             ; preds = %3353
  %3364 = load i64, ptr %3002, align 8, !tbaa !30
  %3365 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3364, i64 1), !nosanitize !31
  %3366 = extractvalue { i64, i1 } %3365, 1, !nosanitize !31
  br i1 %3366, label %3367, label %3368, !prof !32, !nosanitize !31

3367:                                             ; preds = %3363
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3368:                                             ; preds = %3363
  %3369 = extractvalue { i64, i1 } %3365, 0, !nosanitize !31
  %3370 = load ptr, ptr %3003, align 8, !tbaa !33
  %3371 = trunc i16 %3362 to i8
  store i64 %3369, ptr %3002, align 8, !tbaa !30
  %3372 = getelementptr inbounds nuw i8, ptr %3370, i64 %3364
  store i8 %3371, ptr %3372, align 1, !tbaa !28
  %3373 = load i64, ptr %3002, align 8, !tbaa !30
  %3374 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3373, i64 1), !nosanitize !31
  %3375 = extractvalue { i64, i1 } %3374, 1, !nosanitize !31
  br i1 %3375, label %3376, label %3377, !prof !32, !nosanitize !31

3376:                                             ; preds = %3368
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3377:                                             ; preds = %3368
  %3378 = extractvalue { i64, i1 } %3374, 0, !nosanitize !31
  %3379 = load ptr, ptr %3003, align 8, !tbaa !33
  %3380 = load i16, ptr %3001, align 8, !tbaa !25
  %3381 = lshr i16 %3380, 8
  %3382 = trunc nuw i16 %3381 to i8
  store i64 %3378, ptr %3002, align 8, !tbaa !30
  %3383 = getelementptr inbounds nuw i8, ptr %3379, i64 %3373
  store i8 %3382, ptr %3383, align 1, !tbaa !28
  %3384 = load i32, ptr %2303, align 4, !tbaa !26
  %3385 = sub nsw i32 16, %3384
  %3386 = lshr i32 %3359, %3385
  %3387 = trunc nuw i32 %3386 to i16
  store i16 %3387, ptr %3001, align 8, !tbaa !25
  %3388 = add nsw i32 %3355, -16
  %3389 = add nsw i32 %3388, %3384
  br label %3392

3390:                                             ; preds = %3353
  %3391 = add nsw i32 %3072, %3355
  br label %3392

3392:                                             ; preds = %3390, %3377
  %3393 = phi i16 [ %3362, %3390 ], [ %3387, %3377 ]
  %3394 = phi i32 [ %3391, %3390 ], [ %3389, %3377 ]
  store i32 %3394, ptr %2303, align 4, !tbaa !26
  %3395 = icmp sgt i32 %3394, 9
  %3396 = add nuw i32 %3076, 65526
  br i1 %3395, label %3397, label %3427

3397:                                             ; preds = %3392
  %3398 = and i32 %3396, 65535
  %3399 = shl i32 %3396, %3394
  %3400 = trunc i32 %3399 to i16
  %3401 = or i16 %3393, %3400
  store i16 %3401, ptr %3001, align 8, !tbaa !25
  %3402 = load i64, ptr %3002, align 8, !tbaa !30
  %3403 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3402, i64 1), !nosanitize !31
  %3404 = extractvalue { i64, i1 } %3403, 1, !nosanitize !31
  br i1 %3404, label %3405, label %3406, !prof !32, !nosanitize !31

3405:                                             ; preds = %3397
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3406:                                             ; preds = %3397
  %3407 = extractvalue { i64, i1 } %3403, 0, !nosanitize !31
  %3408 = load ptr, ptr %3003, align 8, !tbaa !33
  %3409 = trunc i16 %3401 to i8
  store i64 %3407, ptr %3002, align 8, !tbaa !30
  %3410 = getelementptr inbounds nuw i8, ptr %3408, i64 %3402
  store i8 %3409, ptr %3410, align 1, !tbaa !28
  %3411 = load i64, ptr %3002, align 8, !tbaa !30
  %3412 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3411, i64 1), !nosanitize !31
  %3413 = extractvalue { i64, i1 } %3412, 1, !nosanitize !31
  br i1 %3413, label %3414, label %3415, !prof !32, !nosanitize !31

3414:                                             ; preds = %3406
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3415:                                             ; preds = %3406
  %3416 = extractvalue { i64, i1 } %3412, 0, !nosanitize !31
  %3417 = load ptr, ptr %3003, align 8, !tbaa !33
  %3418 = load i16, ptr %3001, align 8, !tbaa !25
  %3419 = lshr i16 %3418, 8
  %3420 = trunc nuw i16 %3419 to i8
  store i64 %3416, ptr %3002, align 8, !tbaa !30
  %3421 = getelementptr inbounds nuw i8, ptr %3417, i64 %3411
  store i8 %3420, ptr %3421, align 1, !tbaa !28
  %3422 = load i32, ptr %2303, align 4, !tbaa !26
  %3423 = sub nsw i32 16, %3422
  %3424 = lshr i32 %3398, %3423
  %3425 = trunc nuw i32 %3424 to i16
  store i16 %3425, ptr %3001, align 8, !tbaa !25
  %3426 = add nsw i32 %3422, -9
  br label %3432

3427:                                             ; preds = %3392
  %3428 = shl i32 %3396, %3394
  %3429 = trunc i32 %3428 to i16
  %3430 = or i16 %3393, %3429
  store i16 %3430, ptr %3001, align 8, !tbaa !25
  %3431 = add nsw i32 %3394, 7
  br label %3432

3432:                                             ; preds = %3427, %3415, %3348, %3336, %3267, %3255
  %3433 = phi i16 [ %3265, %3255 ], [ %3346, %3336 ], [ %3270, %3267 ], [ %3351, %3348 ], [ %3430, %3427 ], [ %3425, %3415 ]
  %3434 = phi i32 [ %3266, %3255 ], [ %3347, %3336 ], [ %3271, %3267 ], [ %3352, %3348 ], [ %3431, %3427 ], [ %3426, %3415 ]
  store i32 %3434, ptr %2303, align 4, !tbaa !26
  br label %.loopexit245

.loopexit245:                                     ; preds = %3136, %3432
  %3435 = phi i16 [ %3433, %3432 ], [ %3137, %3136 ]
  %3436 = phi i32 [ %3434, %3432 ], [ %3138, %3136 ]
  %3437 = icmp eq i16 %3082, 0
  br i1 %3437, label %3441, label %3438

3438:                                             ; preds = %.loopexit245
  %3439 = select i1 %3086, i32 3, i32 4
  %3440 = select i1 %3086, i32 6, i32 7
  br label %3441

3441:                                             ; preds = %3438, %.loopexit245, %3070
  %3442 = phi i16 [ %3071, %3070 ], [ %3435, %.loopexit245 ], [ %3435, %3438 ]
  %3443 = phi i32 [ %3072, %3070 ], [ %3436, %.loopexit245 ], [ %3436, %3438 ]
  %3444 = phi i32 [ %3078, %3070 ], [ 3, %.loopexit245 ], [ %3439, %3438 ]
  %3445 = phi i32 [ %3077, %3070 ], [ 138, %.loopexit245 ], [ %3440, %3438 ]
  %3446 = phi i32 [ %3084, %3070 ], [ 0, %.loopexit245 ], [ 0, %3438 ]
  %3447 = phi i32 [ %3074, %3070 ], [ %3075, %.loopexit245 ], [ %3075, %3438 ]
  %3448 = icmp eq i64 %3079, %3069
  br i1 %3448, label %.loopexit246, label %3070, !llvm.loop !80

.loopexit246:                                     ; preds = %3441, %3053
  %3449 = phi i16 [ %3049, %3053 ], [ %3442, %3441 ]
  %3450 = phi i32 [ %3050, %3053 ], [ %3443, %3441 ]
  %3451 = icmp slt i32 %2868, 0
  br i1 %3451, label %.loopexit244, label %3452

3452:                                             ; preds = %.loopexit246
  %3453 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %3454 = load i16, ptr %3453, align 2, !tbaa !28
  %3455 = icmp eq i16 %3454, 0
  %3456 = select i1 %3455, i32 138, i32 7
  %3457 = select i1 %3455, i32 3, i32 4
  %3458 = zext i16 %3454 to i32
  %3459 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3460 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3461 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3462 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3463 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3464 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3465 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %3466 = zext nneg i32 %2869 to i64
  br label %3467

3467:                                             ; preds = %3838, %3452
  %3468 = phi i16 [ %3449, %3452 ], [ %3839, %3838 ]
  %3469 = phi i32 [ %3450, %3452 ], [ %3840, %3838 ]
  %3470 = phi i64 [ 0, %3452 ], [ %3476, %3838 ]
  %3471 = phi i32 [ -1, %3452 ], [ %3844, %3838 ]
  %3472 = phi i32 [ %3458, %3452 ], [ %3480, %3838 ]
  %3473 = phi i32 [ 0, %3452 ], [ %3843, %3838 ]
  %3474 = phi i32 [ %3456, %3452 ], [ %3842, %3838 ]
  %3475 = phi i32 [ %3457, %3452 ], [ %3841, %3838 ]
  %3476 = add nuw nsw i64 %3470, 1
  %3477 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3476
  %3478 = getelementptr inbounds nuw i8, ptr %3477, i64 2506
  %3479 = load i16, ptr %3478, align 2, !tbaa !28
  %3480 = zext i16 %3479 to i32
  %3481 = add nsw i32 %3473, 1
  %3482 = icmp slt i32 %3481, %3474
  %3483 = icmp eq i32 %3472, %3480
  %3484 = select i1 %3482, i1 %3483, i1 false
  br i1 %3484, label %3838, label %3485

3485:                                             ; preds = %3467
  %3486 = icmp slt i32 %3481, %3475
  br i1 %3486, label %3487, label %3538

3487:                                             ; preds = %3485
  %3488 = zext nneg i32 %3472 to i64
  %3489 = getelementptr inbounds nuw [4 x i8], ptr %3459, i64 %3488
  %3490 = getelementptr inbounds nuw i8, ptr %3489, i64 2
  br label %3491

3491:                                             ; preds = %3533, %3487
  %3492 = phi i16 [ %3534, %3533 ], [ %3468, %3487 ]
  %3493 = phi i32 [ %3535, %3533 ], [ %3469, %3487 ]
  %3494 = phi i32 [ %3536, %3533 ], [ %3481, %3487 ]
  %3495 = load i16, ptr %3490, align 2, !tbaa !28
  %3496 = zext i16 %3495 to i32
  %3497 = sub nsw i32 16, %3496
  %3498 = icmp sgt i32 %3493, %3497
  %3499 = load i16, ptr %3489, align 4, !tbaa !28
  %3500 = zext i16 %3499 to i32
  %3501 = shl i32 %3500, %3493
  %3502 = trunc i32 %3501 to i16
  %3503 = or i16 %3492, %3502
  store i16 %3503, ptr %3001, align 8, !tbaa !25
  br i1 %3498, label %3504, label %3531

3504:                                             ; preds = %3491
  %3505 = load i64, ptr %3002, align 8, !tbaa !30
  %3506 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3505, i64 1), !nosanitize !31
  %3507 = extractvalue { i64, i1 } %3506, 1, !nosanitize !31
  br i1 %3507, label %3508, label %3509, !prof !32, !nosanitize !31

3508:                                             ; preds = %3504
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3509:                                             ; preds = %3504
  %3510 = extractvalue { i64, i1 } %3506, 0, !nosanitize !31
  %3511 = load ptr, ptr %3003, align 8, !tbaa !33
  %3512 = trunc i16 %3503 to i8
  store i64 %3510, ptr %3002, align 8, !tbaa !30
  %3513 = getelementptr inbounds nuw i8, ptr %3511, i64 %3505
  store i8 %3512, ptr %3513, align 1, !tbaa !28
  %3514 = load i64, ptr %3002, align 8, !tbaa !30
  %3515 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3514, i64 1), !nosanitize !31
  %3516 = extractvalue { i64, i1 } %3515, 1, !nosanitize !31
  br i1 %3516, label %3517, label %3518, !prof !32, !nosanitize !31

3517:                                             ; preds = %3509
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3518:                                             ; preds = %3509
  %3519 = extractvalue { i64, i1 } %3515, 0, !nosanitize !31
  %3520 = load ptr, ptr %3003, align 8, !tbaa !33
  %3521 = load i16, ptr %3001, align 8, !tbaa !25
  %3522 = lshr i16 %3521, 8
  %3523 = trunc nuw i16 %3522 to i8
  store i64 %3519, ptr %3002, align 8, !tbaa !30
  %3524 = getelementptr inbounds nuw i8, ptr %3520, i64 %3514
  store i8 %3523, ptr %3524, align 1, !tbaa !28
  %3525 = load i32, ptr %2303, align 4, !tbaa !26
  %3526 = sub nsw i32 16, %3525
  %3527 = lshr i32 %3500, %3526
  %3528 = trunc nuw i32 %3527 to i16
  store i16 %3528, ptr %3001, align 8, !tbaa !25
  %3529 = add nsw i32 %3496, -16
  %3530 = add nsw i32 %3529, %3525
  br label %3533

3531:                                             ; preds = %3491
  %3532 = add nsw i32 %3493, %3496
  br label %3533

3533:                                             ; preds = %3531, %3518
  %3534 = phi i16 [ %3503, %3531 ], [ %3528, %3518 ]
  %3535 = phi i32 [ %3532, %3531 ], [ %3530, %3518 ]
  store i32 %3535, ptr %2303, align 4, !tbaa !26
  %3536 = add nsw i32 %3494, -1
  %3537 = icmp eq i32 %3536, 0
  br i1 %3537, label %.loopexit243, label %3491, !llvm.loop !79

3538:                                             ; preds = %3485
  %3539 = icmp eq i32 %3472, 0
  br i1 %3539, label %3669, label %3540

3540:                                             ; preds = %3538
  %3541 = icmp eq i32 %3472, %3471
  br i1 %3541, label %3587, label %3542

3542:                                             ; preds = %3540
  %3543 = zext nneg i32 %3472 to i64
  %3544 = getelementptr inbounds nuw [4 x i8], ptr %3459, i64 %3543
  %3545 = getelementptr inbounds nuw i8, ptr %3544, i64 2
  %3546 = load i16, ptr %3545, align 2, !tbaa !28
  %3547 = zext i16 %3546 to i32
  %3548 = sub nsw i32 16, %3547
  %3549 = icmp sgt i32 %3469, %3548
  %3550 = load i16, ptr %3544, align 4, !tbaa !28
  %3551 = zext i16 %3550 to i32
  %3552 = shl i32 %3551, %3469
  %3553 = trunc i32 %3552 to i16
  %3554 = or i16 %3468, %3553
  store i16 %3554, ptr %3001, align 8, !tbaa !25
  br i1 %3549, label %3555, label %3582

3555:                                             ; preds = %3542
  %3556 = load i64, ptr %3002, align 8, !tbaa !30
  %3557 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3556, i64 1), !nosanitize !31
  %3558 = extractvalue { i64, i1 } %3557, 1, !nosanitize !31
  br i1 %3558, label %3559, label %3560, !prof !32, !nosanitize !31

3559:                                             ; preds = %3555
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3560:                                             ; preds = %3555
  %3561 = extractvalue { i64, i1 } %3557, 0, !nosanitize !31
  %3562 = load ptr, ptr %3003, align 8, !tbaa !33
  %3563 = trunc i16 %3554 to i8
  store i64 %3561, ptr %3002, align 8, !tbaa !30
  %3564 = getelementptr inbounds nuw i8, ptr %3562, i64 %3556
  store i8 %3563, ptr %3564, align 1, !tbaa !28
  %3565 = load i64, ptr %3002, align 8, !tbaa !30
  %3566 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3565, i64 1), !nosanitize !31
  %3567 = extractvalue { i64, i1 } %3566, 1, !nosanitize !31
  br i1 %3567, label %3568, label %3569, !prof !32, !nosanitize !31

3568:                                             ; preds = %3560
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3569:                                             ; preds = %3560
  %3570 = extractvalue { i64, i1 } %3566, 0, !nosanitize !31
  %3571 = load ptr, ptr %3003, align 8, !tbaa !33
  %3572 = load i16, ptr %3001, align 8, !tbaa !25
  %3573 = lshr i16 %3572, 8
  %3574 = trunc nuw i16 %3573 to i8
  store i64 %3570, ptr %3002, align 8, !tbaa !30
  %3575 = getelementptr inbounds nuw i8, ptr %3571, i64 %3565
  store i8 %3574, ptr %3575, align 1, !tbaa !28
  %3576 = load i32, ptr %2303, align 4, !tbaa !26
  %3577 = sub nsw i32 16, %3576
  %3578 = lshr i32 %3551, %3577
  %3579 = trunc nuw i32 %3578 to i16
  store i16 %3579, ptr %3001, align 8, !tbaa !25
  %3580 = add nsw i32 %3547, -16
  %3581 = add nsw i32 %3580, %3576
  br label %3584

3582:                                             ; preds = %3542
  %3583 = add nsw i32 %3469, %3547
  br label %3584

3584:                                             ; preds = %3582, %3569
  %3585 = phi i16 [ %3554, %3582 ], [ %3579, %3569 ]
  %3586 = phi i32 [ %3583, %3582 ], [ %3581, %3569 ]
  store i32 %3586, ptr %2303, align 4, !tbaa !26
  br label %3587

3587:                                             ; preds = %3584, %3540
  %3588 = phi i16 [ %3585, %3584 ], [ %3468, %3540 ]
  %3589 = phi i32 [ %3586, %3584 ], [ %3469, %3540 ]
  %3590 = phi i32 [ %3473, %3584 ], [ %3481, %3540 ]
  %3591 = load i16, ptr %3461, align 2, !tbaa !28
  %3592 = zext i16 %3591 to i32
  %3593 = sub nsw i32 16, %3592
  %3594 = icmp sgt i32 %3589, %3593
  %3595 = load i16, ptr %3460, align 4, !tbaa !28
  %3596 = zext i16 %3595 to i32
  %3597 = shl i32 %3596, %3589
  %3598 = trunc i32 %3597 to i16
  %3599 = or i16 %3588, %3598
  br i1 %3594, label %3600, label %3627

3600:                                             ; preds = %3587
  store i16 %3599, ptr %3001, align 8, !tbaa !25
  %3601 = load i64, ptr %3002, align 8, !tbaa !30
  %3602 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3601, i64 1), !nosanitize !31
  %3603 = extractvalue { i64, i1 } %3602, 1, !nosanitize !31
  br i1 %3603, label %3604, label %3605, !prof !32, !nosanitize !31

3604:                                             ; preds = %3600
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3605:                                             ; preds = %3600
  %3606 = extractvalue { i64, i1 } %3602, 0, !nosanitize !31
  %3607 = load ptr, ptr %3003, align 8, !tbaa !33
  %3608 = trunc i16 %3599 to i8
  store i64 %3606, ptr %3002, align 8, !tbaa !30
  %3609 = getelementptr inbounds nuw i8, ptr %3607, i64 %3601
  store i8 %3608, ptr %3609, align 1, !tbaa !28
  %3610 = load i64, ptr %3002, align 8, !tbaa !30
  %3611 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3610, i64 1), !nosanitize !31
  %3612 = extractvalue { i64, i1 } %3611, 1, !nosanitize !31
  br i1 %3612, label %3613, label %3614, !prof !32, !nosanitize !31

3613:                                             ; preds = %3605
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3614:                                             ; preds = %3605
  %3615 = extractvalue { i64, i1 } %3611, 0, !nosanitize !31
  %3616 = load ptr, ptr %3003, align 8, !tbaa !33
  %3617 = load i16, ptr %3001, align 8, !tbaa !25
  %3618 = lshr i16 %3617, 8
  %3619 = trunc nuw i16 %3618 to i8
  store i64 %3615, ptr %3002, align 8, !tbaa !30
  %3620 = getelementptr inbounds nuw i8, ptr %3616, i64 %3610
  store i8 %3619, ptr %3620, align 1, !tbaa !28
  %3621 = load i32, ptr %2303, align 4, !tbaa !26
  %3622 = sub nsw i32 16, %3621
  %3623 = lshr i32 %3596, %3622
  %3624 = trunc nuw i32 %3623 to i16
  %3625 = add nsw i32 %3592, -16
  %3626 = add nsw i32 %3625, %3621
  br label %3629

3627:                                             ; preds = %3587
  %3628 = add nsw i32 %3589, %3592
  br label %3629

3629:                                             ; preds = %3627, %3614
  %3630 = phi i16 [ %3599, %3627 ], [ %3624, %3614 ]
  %3631 = phi i32 [ %3628, %3627 ], [ %3626, %3614 ]
  store i32 %3631, ptr %2303, align 4, !tbaa !26
  %3632 = icmp sgt i32 %3631, 14
  %3633 = add i32 %3590, 65533
  br i1 %3632, label %3634, label %3664

3634:                                             ; preds = %3629
  %3635 = and i32 %3633, 65535
  %3636 = shl i32 %3633, %3631
  %3637 = trunc i32 %3636 to i16
  %3638 = or i16 %3630, %3637
  store i16 %3638, ptr %3001, align 8, !tbaa !25
  %3639 = load i64, ptr %3002, align 8, !tbaa !30
  %3640 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3639, i64 1), !nosanitize !31
  %3641 = extractvalue { i64, i1 } %3640, 1, !nosanitize !31
  br i1 %3641, label %3642, label %3643, !prof !32, !nosanitize !31

3642:                                             ; preds = %3634
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3643:                                             ; preds = %3634
  %3644 = extractvalue { i64, i1 } %3640, 0, !nosanitize !31
  %3645 = load ptr, ptr %3003, align 8, !tbaa !33
  %3646 = trunc i16 %3638 to i8
  store i64 %3644, ptr %3002, align 8, !tbaa !30
  %3647 = getelementptr inbounds nuw i8, ptr %3645, i64 %3639
  store i8 %3646, ptr %3647, align 1, !tbaa !28
  %3648 = load i64, ptr %3002, align 8, !tbaa !30
  %3649 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3648, i64 1), !nosanitize !31
  %3650 = extractvalue { i64, i1 } %3649, 1, !nosanitize !31
  br i1 %3650, label %3651, label %3652, !prof !32, !nosanitize !31

3651:                                             ; preds = %3643
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3652:                                             ; preds = %3643
  %3653 = extractvalue { i64, i1 } %3649, 0, !nosanitize !31
  %3654 = load ptr, ptr %3003, align 8, !tbaa !33
  %3655 = load i16, ptr %3001, align 8, !tbaa !25
  %3656 = lshr i16 %3655, 8
  %3657 = trunc nuw i16 %3656 to i8
  store i64 %3653, ptr %3002, align 8, !tbaa !30
  %3658 = getelementptr inbounds nuw i8, ptr %3654, i64 %3648
  store i8 %3657, ptr %3658, align 1, !tbaa !28
  %3659 = load i32, ptr %2303, align 4, !tbaa !26
  %3660 = sub nsw i32 16, %3659
  %3661 = lshr i32 %3635, %3660
  %3662 = trunc nuw i32 %3661 to i16
  store i16 %3662, ptr %3001, align 8, !tbaa !25
  %3663 = add nsw i32 %3659, -14
  br label %3829

3664:                                             ; preds = %3629
  %3665 = shl i32 %3633, %3631
  %3666 = trunc i32 %3665 to i16
  %3667 = or i16 %3630, %3666
  store i16 %3667, ptr %3001, align 8, !tbaa !25
  %3668 = add nsw i32 %3631, 2
  br label %3829

3669:                                             ; preds = %3538
  %3670 = icmp slt i32 %3473, 10
  br i1 %3670, label %3671, label %3750

3671:                                             ; preds = %3669
  %3672 = load i16, ptr %3465, align 2, !tbaa !28
  %3673 = zext i16 %3672 to i32
  %3674 = sub nsw i32 16, %3673
  %3675 = icmp sgt i32 %3469, %3674
  %3676 = load i16, ptr %3464, align 4, !tbaa !28
  %3677 = zext i16 %3676 to i32
  %3678 = shl i32 %3677, %3469
  %3679 = trunc i32 %3678 to i16
  %3680 = or i16 %3468, %3679
  store i16 %3680, ptr %3001, align 8, !tbaa !25
  br i1 %3675, label %3681, label %3708

3681:                                             ; preds = %3671
  %3682 = load i64, ptr %3002, align 8, !tbaa !30
  %3683 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3682, i64 1), !nosanitize !31
  %3684 = extractvalue { i64, i1 } %3683, 1, !nosanitize !31
  br i1 %3684, label %3685, label %3686, !prof !32, !nosanitize !31

3685:                                             ; preds = %3681
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3686:                                             ; preds = %3681
  %3687 = extractvalue { i64, i1 } %3683, 0, !nosanitize !31
  %3688 = load ptr, ptr %3003, align 8, !tbaa !33
  %3689 = trunc i16 %3680 to i8
  store i64 %3687, ptr %3002, align 8, !tbaa !30
  %3690 = getelementptr inbounds nuw i8, ptr %3688, i64 %3682
  store i8 %3689, ptr %3690, align 1, !tbaa !28
  %3691 = load i64, ptr %3002, align 8, !tbaa !30
  %3692 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3691, i64 1), !nosanitize !31
  %3693 = extractvalue { i64, i1 } %3692, 1, !nosanitize !31
  br i1 %3693, label %3694, label %3695, !prof !32, !nosanitize !31

3694:                                             ; preds = %3686
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3695:                                             ; preds = %3686
  %3696 = extractvalue { i64, i1 } %3692, 0, !nosanitize !31
  %3697 = load ptr, ptr %3003, align 8, !tbaa !33
  %3698 = load i16, ptr %3001, align 8, !tbaa !25
  %3699 = lshr i16 %3698, 8
  %3700 = trunc nuw i16 %3699 to i8
  store i64 %3696, ptr %3002, align 8, !tbaa !30
  %3701 = getelementptr inbounds nuw i8, ptr %3697, i64 %3691
  store i8 %3700, ptr %3701, align 1, !tbaa !28
  %3702 = load i32, ptr %2303, align 4, !tbaa !26
  %3703 = sub nsw i32 16, %3702
  %3704 = lshr i32 %3677, %3703
  %3705 = trunc nuw i32 %3704 to i16
  store i16 %3705, ptr %3001, align 8, !tbaa !25
  %3706 = add nsw i32 %3673, -16
  %3707 = add nsw i32 %3706, %3702
  br label %3710

3708:                                             ; preds = %3671
  %3709 = add nsw i32 %3469, %3673
  br label %3710

3710:                                             ; preds = %3708, %3695
  %3711 = phi i16 [ %3680, %3708 ], [ %3705, %3695 ]
  %3712 = phi i32 [ %3709, %3708 ], [ %3707, %3695 ]
  store i32 %3712, ptr %2303, align 4, !tbaa !26
  %3713 = icmp sgt i32 %3712, 13
  %3714 = add nsw i32 %3473, 65534
  br i1 %3713, label %3715, label %3745

3715:                                             ; preds = %3710
  %3716 = and i32 %3714, 65535
  %3717 = shl i32 %3714, %3712
  %3718 = trunc i32 %3717 to i16
  %3719 = or i16 %3711, %3718
  store i16 %3719, ptr %3001, align 8, !tbaa !25
  %3720 = load i64, ptr %3002, align 8, !tbaa !30
  %3721 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3720, i64 1), !nosanitize !31
  %3722 = extractvalue { i64, i1 } %3721, 1, !nosanitize !31
  br i1 %3722, label %3723, label %3724, !prof !32, !nosanitize !31

3723:                                             ; preds = %3715
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3724:                                             ; preds = %3715
  %3725 = extractvalue { i64, i1 } %3721, 0, !nosanitize !31
  %3726 = load ptr, ptr %3003, align 8, !tbaa !33
  %3727 = trunc i16 %3719 to i8
  store i64 %3725, ptr %3002, align 8, !tbaa !30
  %3728 = getelementptr inbounds nuw i8, ptr %3726, i64 %3720
  store i8 %3727, ptr %3728, align 1, !tbaa !28
  %3729 = load i64, ptr %3002, align 8, !tbaa !30
  %3730 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3729, i64 1), !nosanitize !31
  %3731 = extractvalue { i64, i1 } %3730, 1, !nosanitize !31
  br i1 %3731, label %3732, label %3733, !prof !32, !nosanitize !31

3732:                                             ; preds = %3724
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3733:                                             ; preds = %3724
  %3734 = extractvalue { i64, i1 } %3730, 0, !nosanitize !31
  %3735 = load ptr, ptr %3003, align 8, !tbaa !33
  %3736 = load i16, ptr %3001, align 8, !tbaa !25
  %3737 = lshr i16 %3736, 8
  %3738 = trunc nuw i16 %3737 to i8
  store i64 %3734, ptr %3002, align 8, !tbaa !30
  %3739 = getelementptr inbounds nuw i8, ptr %3735, i64 %3729
  store i8 %3738, ptr %3739, align 1, !tbaa !28
  %3740 = load i32, ptr %2303, align 4, !tbaa !26
  %3741 = sub nsw i32 16, %3740
  %3742 = lshr i32 %3716, %3741
  %3743 = trunc nuw i32 %3742 to i16
  store i16 %3743, ptr %3001, align 8, !tbaa !25
  %3744 = add nsw i32 %3740, -13
  br label %3829

3745:                                             ; preds = %3710
  %3746 = shl i32 %3714, %3712
  %3747 = trunc i32 %3746 to i16
  %3748 = or i16 %3711, %3747
  store i16 %3748, ptr %3001, align 8, !tbaa !25
  %3749 = add nsw i32 %3712, 3
  br label %3829

3750:                                             ; preds = %3669
  %3751 = load i16, ptr %3463, align 2, !tbaa !28
  %3752 = zext i16 %3751 to i32
  %3753 = sub nsw i32 16, %3752
  %3754 = icmp sgt i32 %3469, %3753
  %3755 = load i16, ptr %3462, align 4, !tbaa !28
  %3756 = zext i16 %3755 to i32
  %3757 = shl i32 %3756, %3469
  %3758 = trunc i32 %3757 to i16
  %3759 = or i16 %3468, %3758
  store i16 %3759, ptr %3001, align 8, !tbaa !25
  br i1 %3754, label %3760, label %3787

3760:                                             ; preds = %3750
  %3761 = load i64, ptr %3002, align 8, !tbaa !30
  %3762 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3761, i64 1), !nosanitize !31
  %3763 = extractvalue { i64, i1 } %3762, 1, !nosanitize !31
  br i1 %3763, label %3764, label %3765, !prof !32, !nosanitize !31

3764:                                             ; preds = %3760
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3765:                                             ; preds = %3760
  %3766 = extractvalue { i64, i1 } %3762, 0, !nosanitize !31
  %3767 = load ptr, ptr %3003, align 8, !tbaa !33
  %3768 = trunc i16 %3759 to i8
  store i64 %3766, ptr %3002, align 8, !tbaa !30
  %3769 = getelementptr inbounds nuw i8, ptr %3767, i64 %3761
  store i8 %3768, ptr %3769, align 1, !tbaa !28
  %3770 = load i64, ptr %3002, align 8, !tbaa !30
  %3771 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3770, i64 1), !nosanitize !31
  %3772 = extractvalue { i64, i1 } %3771, 1, !nosanitize !31
  br i1 %3772, label %3773, label %3774, !prof !32, !nosanitize !31

3773:                                             ; preds = %3765
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3774:                                             ; preds = %3765
  %3775 = extractvalue { i64, i1 } %3771, 0, !nosanitize !31
  %3776 = load ptr, ptr %3003, align 8, !tbaa !33
  %3777 = load i16, ptr %3001, align 8, !tbaa !25
  %3778 = lshr i16 %3777, 8
  %3779 = trunc nuw i16 %3778 to i8
  store i64 %3775, ptr %3002, align 8, !tbaa !30
  %3780 = getelementptr inbounds nuw i8, ptr %3776, i64 %3770
  store i8 %3779, ptr %3780, align 1, !tbaa !28
  %3781 = load i32, ptr %2303, align 4, !tbaa !26
  %3782 = sub nsw i32 16, %3781
  %3783 = lshr i32 %3756, %3782
  %3784 = trunc nuw i32 %3783 to i16
  store i16 %3784, ptr %3001, align 8, !tbaa !25
  %3785 = add nsw i32 %3752, -16
  %3786 = add nsw i32 %3785, %3781
  br label %3789

3787:                                             ; preds = %3750
  %3788 = add nsw i32 %3469, %3752
  br label %3789

3789:                                             ; preds = %3787, %3774
  %3790 = phi i16 [ %3759, %3787 ], [ %3784, %3774 ]
  %3791 = phi i32 [ %3788, %3787 ], [ %3786, %3774 ]
  store i32 %3791, ptr %2303, align 4, !tbaa !26
  %3792 = icmp sgt i32 %3791, 9
  %3793 = add nuw i32 %3473, 65526
  br i1 %3792, label %3794, label %3824

3794:                                             ; preds = %3789
  %3795 = and i32 %3793, 65535
  %3796 = shl i32 %3793, %3791
  %3797 = trunc i32 %3796 to i16
  %3798 = or i16 %3790, %3797
  store i16 %3798, ptr %3001, align 8, !tbaa !25
  %3799 = load i64, ptr %3002, align 8, !tbaa !30
  %3800 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3799, i64 1), !nosanitize !31
  %3801 = extractvalue { i64, i1 } %3800, 1, !nosanitize !31
  br i1 %3801, label %3802, label %3803, !prof !32, !nosanitize !31

3802:                                             ; preds = %3794
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3803:                                             ; preds = %3794
  %3804 = extractvalue { i64, i1 } %3800, 0, !nosanitize !31
  %3805 = load ptr, ptr %3003, align 8, !tbaa !33
  %3806 = trunc i16 %3798 to i8
  store i64 %3804, ptr %3002, align 8, !tbaa !30
  %3807 = getelementptr inbounds nuw i8, ptr %3805, i64 %3799
  store i8 %3806, ptr %3807, align 1, !tbaa !28
  %3808 = load i64, ptr %3002, align 8, !tbaa !30
  %3809 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3808, i64 1), !nosanitize !31
  %3810 = extractvalue { i64, i1 } %3809, 1, !nosanitize !31
  br i1 %3810, label %3811, label %3812, !prof !32, !nosanitize !31

3811:                                             ; preds = %3803
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3812:                                             ; preds = %3803
  %3813 = extractvalue { i64, i1 } %3809, 0, !nosanitize !31
  %3814 = load ptr, ptr %3003, align 8, !tbaa !33
  %3815 = load i16, ptr %3001, align 8, !tbaa !25
  %3816 = lshr i16 %3815, 8
  %3817 = trunc nuw i16 %3816 to i8
  store i64 %3813, ptr %3002, align 8, !tbaa !30
  %3818 = getelementptr inbounds nuw i8, ptr %3814, i64 %3808
  store i8 %3817, ptr %3818, align 1, !tbaa !28
  %3819 = load i32, ptr %2303, align 4, !tbaa !26
  %3820 = sub nsw i32 16, %3819
  %3821 = lshr i32 %3795, %3820
  %3822 = trunc nuw i32 %3821 to i16
  store i16 %3822, ptr %3001, align 8, !tbaa !25
  %3823 = add nsw i32 %3819, -9
  br label %3829

3824:                                             ; preds = %3789
  %3825 = shl i32 %3793, %3791
  %3826 = trunc i32 %3825 to i16
  %3827 = or i16 %3790, %3826
  store i16 %3827, ptr %3001, align 8, !tbaa !25
  %3828 = add nsw i32 %3791, 7
  br label %3829

3829:                                             ; preds = %3824, %3812, %3745, %3733, %3664, %3652
  %3830 = phi i16 [ %3662, %3652 ], [ %3743, %3733 ], [ %3667, %3664 ], [ %3748, %3745 ], [ %3827, %3824 ], [ %3822, %3812 ]
  %3831 = phi i32 [ %3663, %3652 ], [ %3744, %3733 ], [ %3668, %3664 ], [ %3749, %3745 ], [ %3828, %3824 ], [ %3823, %3812 ]
  store i32 %3831, ptr %2303, align 4, !tbaa !26
  br label %.loopexit243

.loopexit243:                                     ; preds = %3533, %3829
  %3832 = phi i16 [ %3830, %3829 ], [ %3534, %3533 ]
  %3833 = phi i32 [ %3831, %3829 ], [ %3535, %3533 ]
  %3834 = icmp eq i16 %3479, 0
  br i1 %3834, label %3838, label %3835

3835:                                             ; preds = %.loopexit243
  %3836 = select i1 %3483, i32 3, i32 4
  %3837 = select i1 %3483, i32 6, i32 7
  br label %3838

3838:                                             ; preds = %3835, %.loopexit243, %3467
  %3839 = phi i16 [ %3468, %3467 ], [ %3832, %.loopexit243 ], [ %3832, %3835 ]
  %3840 = phi i32 [ %3469, %3467 ], [ %3833, %.loopexit243 ], [ %3833, %3835 ]
  %3841 = phi i32 [ %3475, %3467 ], [ 3, %.loopexit243 ], [ %3836, %3835 ]
  %3842 = phi i32 [ %3474, %3467 ], [ 138, %.loopexit243 ], [ %3837, %3835 ]
  %3843 = phi i32 [ %3481, %3467 ], [ 0, %.loopexit243 ], [ 0, %3835 ]
  %3844 = phi i32 [ %3471, %3467 ], [ %3472, %.loopexit243 ], [ %3472, %3835 ]
  %3845 = icmp eq i64 %3476, %3466
  br i1 %3845, label %.loopexit244, label %3467, !llvm.loop !80

.loopexit244:                                     ; preds = %3838, %.loopexit246
  %3846 = phi i16 [ %3449, %.loopexit246 ], [ %3839, %3838 ]
  %3847 = phi i32 [ %3450, %.loopexit246 ], [ %3840, %3838 ]
  %3848 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %3849 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %3850 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %3851 = load i32, ptr %3850, align 4, !tbaa !29
  %3852 = icmp eq i32 %3851, 0
  br i1 %3852, label %.loopexit242, label %3853

3853:                                             ; preds = %.loopexit244
  %3854 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %3855

3855:                                             ; preds = %4134, %3853
  %3856 = phi i16 [ %4135, %4134 ], [ %3846, %3853 ]
  %3857 = phi i32 [ %4136, %4134 ], [ %3847, %3853 ]
  %3858 = phi i32 [ %3877, %4134 ], [ 0, %3853 ]
  %3859 = load ptr, ptr %3854, align 8, !tbaa !76
  %3860 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3858, i32 2)
  %3861 = extractvalue { i32, i1 } %3860, 0, !nosanitize !31
  %3862 = extractvalue { i32, i1 } %3860, 1, !nosanitize !31
  br i1 %3862, label %3863, label %3864, !prof !32, !nosanitize !31

3863:                                             ; preds = %3855
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3864:                                             ; preds = %3855
  %3865 = add nuw i32 %3858, 1
  %3866 = zext i32 %3858 to i64
  %3867 = getelementptr inbounds nuw i8, ptr %3859, i64 %3866
  %3868 = load i8, ptr %3867, align 1, !tbaa !28
  %3869 = zext i8 %3868 to i32
  %3870 = zext i32 %3865 to i64
  %3871 = getelementptr inbounds nuw i8, ptr %3859, i64 %3870
  %3872 = load i8, ptr %3871, align 1, !tbaa !28
  %3873 = zext i8 %3872 to i32
  %3874 = shl nuw nsw i32 %3873, 8
  %3875 = or disjoint i32 %3874, %3869
  %3876 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3861, i32 1), !nosanitize !31
  %3877 = extractvalue { i32, i1 } %3876, 0, !nosanitize !31
  %3878 = extractvalue { i32, i1 } %3876, 1, !nosanitize !31
  br i1 %3878, label %3879, label %3880, !prof !32, !nosanitize !31

3879:                                             ; preds = %3864
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3880:                                             ; preds = %3864
  %3881 = zext i32 %3861 to i64
  %3882 = getelementptr inbounds nuw i8, ptr %3859, i64 %3881
  %3883 = load i8, ptr %3882, align 1, !tbaa !28
  %3884 = zext i8 %3883 to i32
  %3885 = icmp eq i32 %3875, 0
  %3886 = zext i8 %3883 to i64
  br i1 %3885, label %3887, label %3928

3887:                                             ; preds = %3880
  %3888 = getelementptr inbounds nuw [4 x i8], ptr %3848, i64 %3886
  %3889 = getelementptr inbounds nuw i8, ptr %3888, i64 2
  %3890 = load i16, ptr %3889, align 2, !tbaa !28
  %3891 = zext i16 %3890 to i32
  %3892 = sub nsw i32 16, %3891
  %3893 = icmp sgt i32 %3857, %3892
  %3894 = load i16, ptr %3888, align 2, !tbaa !28
  %3895 = zext i16 %3894 to i32
  %3896 = shl i32 %3895, %3857
  %3897 = trunc i32 %3896 to i16
  %3898 = or i16 %3856, %3897
  store i16 %3898, ptr %3001, align 8, !tbaa !25
  br i1 %3893, label %3899, label %3926

3899:                                             ; preds = %3887
  %3900 = load i64, ptr %3002, align 8, !tbaa !30
  %3901 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3900, i64 1), !nosanitize !31
  %3902 = extractvalue { i64, i1 } %3901, 1, !nosanitize !31
  br i1 %3902, label %3903, label %3904, !prof !32, !nosanitize !31

3903:                                             ; preds = %3899
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3904:                                             ; preds = %3899
  %3905 = extractvalue { i64, i1 } %3901, 0, !nosanitize !31
  %3906 = load ptr, ptr %3003, align 8, !tbaa !33
  %3907 = trunc i16 %3898 to i8
  store i64 %3905, ptr %3002, align 8, !tbaa !30
  %3908 = getelementptr inbounds nuw i8, ptr %3906, i64 %3900
  store i8 %3907, ptr %3908, align 1, !tbaa !28
  %3909 = load i64, ptr %3002, align 8, !tbaa !30
  %3910 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3909, i64 1), !nosanitize !31
  %3911 = extractvalue { i64, i1 } %3910, 1, !nosanitize !31
  br i1 %3911, label %3912, label %3913, !prof !32, !nosanitize !31

3912:                                             ; preds = %3904
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3913:                                             ; preds = %3904
  %3914 = extractvalue { i64, i1 } %3910, 0, !nosanitize !31
  %3915 = load ptr, ptr %3003, align 8, !tbaa !33
  %3916 = load i16, ptr %3001, align 8, !tbaa !25
  %3917 = lshr i16 %3916, 8
  %3918 = trunc nuw i16 %3917 to i8
  store i64 %3914, ptr %3002, align 8, !tbaa !30
  %3919 = getelementptr inbounds nuw i8, ptr %3915, i64 %3909
  store i8 %3918, ptr %3919, align 1, !tbaa !28
  %3920 = load i32, ptr %2303, align 4, !tbaa !26
  %3921 = sub nsw i32 16, %3920
  %3922 = lshr i32 %3895, %3921
  %3923 = trunc nuw i32 %3922 to i16
  store i16 %3923, ptr %3001, align 8, !tbaa !25
  %3924 = add nsw i32 %3891, -16
  %3925 = add nsw i32 %3924, %3920
  br label %4131

3926:                                             ; preds = %3887
  %3927 = add nsw i32 %3857, %3891
  br label %4131

3928:                                             ; preds = %3880
  %3929 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %3886
  %3930 = load i8, ptr %3929, align 1, !tbaa !28
  %3931 = zext i8 %3930 to i64
  %3932 = getelementptr inbounds nuw [4 x i8], ptr %3848, i64 %3931
  %3933 = getelementptr inbounds nuw i8, ptr %3932, i64 1028
  %3934 = getelementptr inbounds nuw i8, ptr %3932, i64 1030
  %3935 = load i16, ptr %3934, align 2, !tbaa !28
  %3936 = zext i16 %3935 to i32
  %3937 = sub nsw i32 16, %3936
  %3938 = icmp sgt i32 %3857, %3937
  %3939 = load i16, ptr %3933, align 2, !tbaa !28
  %3940 = zext i16 %3939 to i32
  %3941 = shl i32 %3940, %3857
  %3942 = trunc i32 %3941 to i16
  %3943 = or i16 %3856, %3942
  store i16 %3943, ptr %3001, align 8, !tbaa !25
  br i1 %3938, label %3944, label %3971

3944:                                             ; preds = %3928
  %3945 = load i64, ptr %3002, align 8, !tbaa !30
  %3946 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3945, i64 1), !nosanitize !31
  %3947 = extractvalue { i64, i1 } %3946, 1, !nosanitize !31
  br i1 %3947, label %3948, label %3949, !prof !32, !nosanitize !31

3948:                                             ; preds = %3944
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3949:                                             ; preds = %3944
  %3950 = extractvalue { i64, i1 } %3946, 0, !nosanitize !31
  %3951 = load ptr, ptr %3003, align 8, !tbaa !33
  %3952 = trunc i16 %3943 to i8
  store i64 %3950, ptr %3002, align 8, !tbaa !30
  %3953 = getelementptr inbounds nuw i8, ptr %3951, i64 %3945
  store i8 %3952, ptr %3953, align 1, !tbaa !28
  %3954 = load i64, ptr %3002, align 8, !tbaa !30
  %3955 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3954, i64 1), !nosanitize !31
  %3956 = extractvalue { i64, i1 } %3955, 1, !nosanitize !31
  br i1 %3956, label %3957, label %3958, !prof !32, !nosanitize !31

3957:                                             ; preds = %3949
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3958:                                             ; preds = %3949
  %3959 = extractvalue { i64, i1 } %3955, 0, !nosanitize !31
  %3960 = load ptr, ptr %3003, align 8, !tbaa !33
  %3961 = load i16, ptr %3001, align 8, !tbaa !25
  %3962 = lshr i16 %3961, 8
  %3963 = trunc nuw i16 %3962 to i8
  store i64 %3959, ptr %3002, align 8, !tbaa !30
  %3964 = getelementptr inbounds nuw i8, ptr %3960, i64 %3954
  store i8 %3963, ptr %3964, align 1, !tbaa !28
  %3965 = load i32, ptr %2303, align 4, !tbaa !26
  %3966 = sub nsw i32 16, %3965
  %3967 = lshr i32 %3940, %3966
  %3968 = trunc nuw i32 %3967 to i16
  store i16 %3968, ptr %3001, align 8, !tbaa !25
  %3969 = add nsw i32 %3936, -16
  %3970 = add nsw i32 %3969, %3965
  br label %3973

3971:                                             ; preds = %3928
  %3972 = add nsw i32 %3857, %3936
  br label %3973

3973:                                             ; preds = %3971, %3958
  %3974 = phi i16 [ %3943, %3971 ], [ %3968, %3958 ]
  %3975 = phi i32 [ %3972, %3971 ], [ %3970, %3958 ]
  store i32 %3975, ptr %2303, align 4, !tbaa !26
  %3976 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %3931
  %3977 = load i32, ptr %3976, align 4, !tbaa !4
  %3978 = add i8 %3930, -28
  %3979 = icmp ult i8 %3978, -20
  br i1 %3979, label %4025, label %3980

3980:                                             ; preds = %3973
  %3981 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %3931
  %3982 = load i32, ptr %3981, align 4, !tbaa !4
  %3983 = sub nsw i32 %3884, %3982
  %3984 = sub nsw i32 16, %3977
  %3985 = icmp sgt i32 %3975, %3984
  br i1 %3985, label %3986, label %4017

3986:                                             ; preds = %3980
  %3987 = and i32 %3983, 65535
  %3988 = shl i32 %3983, %3975
  %3989 = trunc i32 %3988 to i16
  %3990 = or i16 %3974, %3989
  store i16 %3990, ptr %3001, align 8, !tbaa !25
  %3991 = load i64, ptr %3002, align 8, !tbaa !30
  %3992 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3991, i64 1), !nosanitize !31
  %3993 = extractvalue { i64, i1 } %3992, 1, !nosanitize !31
  br i1 %3993, label %3994, label %3995, !prof !32, !nosanitize !31

3994:                                             ; preds = %3986
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

3995:                                             ; preds = %3986
  %3996 = extractvalue { i64, i1 } %3992, 0, !nosanitize !31
  %3997 = load ptr, ptr %3003, align 8, !tbaa !33
  %3998 = trunc i16 %3990 to i8
  store i64 %3996, ptr %3002, align 8, !tbaa !30
  %3999 = getelementptr inbounds nuw i8, ptr %3997, i64 %3991
  store i8 %3998, ptr %3999, align 1, !tbaa !28
  %4000 = load i64, ptr %3002, align 8, !tbaa !30
  %4001 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4000, i64 1), !nosanitize !31
  %4002 = extractvalue { i64, i1 } %4001, 1, !nosanitize !31
  br i1 %4002, label %4003, label %4004, !prof !32, !nosanitize !31

4003:                                             ; preds = %3995
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

4004:                                             ; preds = %3995
  %4005 = extractvalue { i64, i1 } %4001, 0, !nosanitize !31
  %4006 = load ptr, ptr %3003, align 8, !tbaa !33
  %4007 = load i16, ptr %3001, align 8, !tbaa !25
  %4008 = lshr i16 %4007, 8
  %4009 = trunc nuw i16 %4008 to i8
  store i64 %4005, ptr %3002, align 8, !tbaa !30
  %4010 = getelementptr inbounds nuw i8, ptr %4006, i64 %4000
  store i8 %4009, ptr %4010, align 1, !tbaa !28
  %4011 = load i32, ptr %2303, align 4, !tbaa !26
  %4012 = sub nsw i32 16, %4011
  %4013 = lshr i32 %3987, %4012
  %4014 = trunc nuw i32 %4013 to i16
  %4015 = add nsw i32 %3977, -16
  %4016 = add nsw i32 %4015, %4011
  br label %4022

4017:                                             ; preds = %3980
  %4018 = shl i32 %3983, %3975
  %4019 = trunc i32 %4018 to i16
  %4020 = or i16 %3974, %4019
  %4021 = add nsw i32 %3977, %3975
  br label %4022

4022:                                             ; preds = %4017, %4004
  %4023 = phi i16 [ %4020, %4017 ], [ %4014, %4004 ]
  %4024 = phi i32 [ %4021, %4017 ], [ %4016, %4004 ]
  store i32 %4024, ptr %2303, align 4, !tbaa !26
  br label %4025

4025:                                             ; preds = %4022, %3973
  %4026 = phi i16 [ %4023, %4022 ], [ %3974, %3973 ]
  %4027 = phi i32 [ %4024, %4022 ], [ %3975, %3973 ]
  %4028 = add nsw i32 %3875, -1
  %4029 = icmp samesign ult i32 %3875, 257
  %4030 = zext nneg i32 %4028 to i64
  %4031 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4030
  %4032 = lshr i32 %4028, 7
  %4033 = zext nneg i32 %4032 to i64
  %4034 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4033
  %4035 = getelementptr inbounds nuw i8, ptr %4034, i64 256
  %4036 = select i1 %4029, ptr %4031, ptr %4035
  %4037 = load i8, ptr %4036, align 1, !tbaa !28
  %4038 = zext i8 %4037 to i64
  %4039 = getelementptr inbounds nuw [4 x i8], ptr %3849, i64 %4038
  %4040 = getelementptr inbounds nuw i8, ptr %4039, i64 2
  %4041 = load i16, ptr %4040, align 2, !tbaa !28
  %4042 = zext i16 %4041 to i32
  %4043 = sub nsw i32 16, %4042
  %4044 = icmp sgt i32 %4027, %4043
  %4045 = load i16, ptr %4039, align 2, !tbaa !28
  %4046 = zext i16 %4045 to i32
  %4047 = shl i32 %4046, %4027
  %4048 = trunc i32 %4047 to i16
  %4049 = or i16 %4026, %4048
  store i16 %4049, ptr %3001, align 8, !tbaa !25
  br i1 %4044, label %4050, label %4077

4050:                                             ; preds = %4025
  %4051 = load i64, ptr %3002, align 8, !tbaa !30
  %4052 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4051, i64 1), !nosanitize !31
  %4053 = extractvalue { i64, i1 } %4052, 1, !nosanitize !31
  br i1 %4053, label %4054, label %4055, !prof !32, !nosanitize !31

4054:                                             ; preds = %4050
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

4055:                                             ; preds = %4050
  %4056 = extractvalue { i64, i1 } %4052, 0, !nosanitize !31
  %4057 = load ptr, ptr %3003, align 8, !tbaa !33
  %4058 = trunc i16 %4049 to i8
  store i64 %4056, ptr %3002, align 8, !tbaa !30
  %4059 = getelementptr inbounds nuw i8, ptr %4057, i64 %4051
  store i8 %4058, ptr %4059, align 1, !tbaa !28
  %4060 = load i64, ptr %3002, align 8, !tbaa !30
  %4061 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4060, i64 1), !nosanitize !31
  %4062 = extractvalue { i64, i1 } %4061, 1, !nosanitize !31
  br i1 %4062, label %4063, label %4064, !prof !32, !nosanitize !31

4063:                                             ; preds = %4055
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

4064:                                             ; preds = %4055
  %4065 = extractvalue { i64, i1 } %4061, 0, !nosanitize !31
  %4066 = load ptr, ptr %3003, align 8, !tbaa !33
  %4067 = load i16, ptr %3001, align 8, !tbaa !25
  %4068 = lshr i16 %4067, 8
  %4069 = trunc nuw i16 %4068 to i8
  store i64 %4065, ptr %3002, align 8, !tbaa !30
  %4070 = getelementptr inbounds nuw i8, ptr %4066, i64 %4060
  store i8 %4069, ptr %4070, align 1, !tbaa !28
  %4071 = load i32, ptr %2303, align 4, !tbaa !26
  %4072 = sub nsw i32 16, %4071
  %4073 = lshr i32 %4046, %4072
  %4074 = trunc nuw i32 %4073 to i16
  store i16 %4074, ptr %3001, align 8, !tbaa !25
  %4075 = add nsw i32 %4042, -16
  %4076 = add nsw i32 %4075, %4071
  br label %4079

4077:                                             ; preds = %4025
  %4078 = add nsw i32 %4027, %4042
  br label %4079

4079:                                             ; preds = %4077, %4064
  %4080 = phi i16 [ %4049, %4077 ], [ %4074, %4064 ]
  %4081 = phi i32 [ %4078, %4077 ], [ %4076, %4064 ]
  store i32 %4081, ptr %2303, align 4, !tbaa !26
  %4082 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %4038
  %4083 = load i32, ptr %4082, align 4, !tbaa !4
  %4084 = icmp ult i8 %4037, 4
  br i1 %4084, label %4134, label %4085

4085:                                             ; preds = %4079
  %4086 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %4038
  %4087 = load i32, ptr %4086, align 4, !tbaa !4
  %4088 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %4028, i32 %4087), !nosanitize !31
  %4089 = extractvalue { i32, i1 } %4088, 0, !nosanitize !31
  %4090 = extractvalue { i32, i1 } %4088, 1, !nosanitize !31
  br i1 %4090, label %4091, label %4092, !prof !32, !nosanitize !31

4091:                                             ; preds = %4085
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !31
  unreachable, !nosanitize !31

4092:                                             ; preds = %4085
  %4093 = sub nsw i32 16, %4083
  %4094 = icmp sgt i32 %4081, %4093
  br i1 %4094, label %4095, label %4126

4095:                                             ; preds = %4092
  %4096 = and i32 %4089, 65535
  %4097 = shl i32 %4089, %4081
  %4098 = trunc i32 %4097 to i16
  %4099 = or i16 %4080, %4098
  store i16 %4099, ptr %3001, align 8, !tbaa !25
  %4100 = load i64, ptr %3002, align 8, !tbaa !30
  %4101 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4100, i64 1), !nosanitize !31
  %4102 = extractvalue { i64, i1 } %4101, 1, !nosanitize !31
  br i1 %4102, label %4103, label %4104, !prof !32, !nosanitize !31

4103:                                             ; preds = %4095
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

4104:                                             ; preds = %4095
  %4105 = extractvalue { i64, i1 } %4101, 0, !nosanitize !31
  %4106 = load ptr, ptr %3003, align 8, !tbaa !33
  %4107 = trunc i16 %4099 to i8
  store i64 %4105, ptr %3002, align 8, !tbaa !30
  %4108 = getelementptr inbounds nuw i8, ptr %4106, i64 %4100
  store i8 %4107, ptr %4108, align 1, !tbaa !28
  %4109 = load i64, ptr %3002, align 8, !tbaa !30
  %4110 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4109, i64 1), !nosanitize !31
  %4111 = extractvalue { i64, i1 } %4110, 1, !nosanitize !31
  br i1 %4111, label %4112, label %4113, !prof !32, !nosanitize !31

4112:                                             ; preds = %4104
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

4113:                                             ; preds = %4104
  %4114 = extractvalue { i64, i1 } %4110, 0, !nosanitize !31
  %4115 = load ptr, ptr %3003, align 8, !tbaa !33
  %4116 = load i16, ptr %3001, align 8, !tbaa !25
  %4117 = lshr i16 %4116, 8
  %4118 = trunc nuw i16 %4117 to i8
  store i64 %4114, ptr %3002, align 8, !tbaa !30
  %4119 = getelementptr inbounds nuw i8, ptr %4115, i64 %4109
  store i8 %4118, ptr %4119, align 1, !tbaa !28
  %4120 = load i32, ptr %2303, align 4, !tbaa !26
  %4121 = sub nsw i32 16, %4120
  %4122 = lshr i32 %4096, %4121
  %4123 = trunc nuw i32 %4122 to i16
  store i16 %4123, ptr %3001, align 8, !tbaa !25
  %4124 = add nsw i32 %4083, -16
  %4125 = add nsw i32 %4124, %4120
  br label %4131

4126:                                             ; preds = %4092
  %4127 = shl i32 %4089, %4081
  %4128 = trunc i32 %4127 to i16
  %4129 = or i16 %4080, %4128
  store i16 %4129, ptr %3001, align 8, !tbaa !25
  %4130 = add nsw i32 %4083, %4081
  br label %4131

4131:                                             ; preds = %4126, %4113, %3926, %3913
  %4132 = phi i16 [ %3923, %3913 ], [ %3898, %3926 ], [ %4129, %4126 ], [ %4123, %4113 ]
  %4133 = phi i32 [ %3925, %3913 ], [ %3927, %3926 ], [ %4130, %4126 ], [ %4125, %4113 ]
  store i32 %4133, ptr %2303, align 4, !tbaa !26
  br label %4134

4134:                                             ; preds = %4131, %4079
  %4135 = phi i16 [ %4080, %4079 ], [ %4132, %4131 ]
  %4136 = phi i32 [ %4081, %4079 ], [ %4133, %4131 ]
  %4137 = load i32, ptr %3850, align 4, !tbaa !29
  %4138 = icmp ult i32 %3877, %4137
  br i1 %4138, label %3855, label %.loopexit242, !llvm.loop !77

.loopexit242:                                     ; preds = %4134, %.loopexit244
  %4139 = phi i16 [ %3846, %.loopexit244 ], [ %4135, %4134 ]
  %4140 = phi i32 [ %3847, %.loopexit244 ], [ %4136, %4134 ]
  %4141 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4142 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4143 = load i16, ptr %4142, align 2, !tbaa !28
  %4144 = zext i16 %4143 to i32
  %4145 = sub nsw i32 16, %4144
  %4146 = icmp sgt i32 %4140, %4145
  %4147 = load i16, ptr %4141, align 2, !tbaa !28
  %4148 = zext i16 %4147 to i32
  %4149 = shl i32 %4148, %4140
  %4150 = trunc i32 %4149 to i16
  %4151 = or i16 %4139, %4150
  store i16 %4151, ptr %3001, align 8, !tbaa !25
  br i1 %4146, label %4152, label %4179

4152:                                             ; preds = %.loopexit242
  %4153 = load i64, ptr %3002, align 8, !tbaa !30
  %4154 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4153, i64 1), !nosanitize !31
  %4155 = extractvalue { i64, i1 } %4154, 1, !nosanitize !31
  br i1 %4155, label %4156, label %4157, !prof !32, !nosanitize !31

4156:                                             ; preds = %4152
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

4157:                                             ; preds = %4152
  %4158 = extractvalue { i64, i1 } %4154, 0, !nosanitize !31
  %4159 = load ptr, ptr %3003, align 8, !tbaa !33
  %4160 = trunc i16 %4151 to i8
  store i64 %4158, ptr %3002, align 8, !tbaa !30
  %4161 = getelementptr inbounds nuw i8, ptr %4159, i64 %4153
  store i8 %4160, ptr %4161, align 1, !tbaa !28
  %4162 = load i64, ptr %3002, align 8, !tbaa !30
  %4163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4162, i64 1), !nosanitize !31
  %4164 = extractvalue { i64, i1 } %4163, 1, !nosanitize !31
  br i1 %4164, label %4165, label %4166, !prof !32, !nosanitize !31

4165:                                             ; preds = %4157
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

4166:                                             ; preds = %4157
  %4167 = extractvalue { i64, i1 } %4163, 0, !nosanitize !31
  %4168 = load ptr, ptr %3003, align 8, !tbaa !33
  %4169 = load i16, ptr %3001, align 8, !tbaa !25
  %4170 = lshr i16 %4169, 8
  %4171 = trunc nuw i16 %4170 to i8
  store i64 %4167, ptr %3002, align 8, !tbaa !30
  %4172 = getelementptr inbounds nuw i8, ptr %4168, i64 %4162
  store i8 %4171, ptr %4172, align 1, !tbaa !28
  %4173 = load i32, ptr %2303, align 4, !tbaa !26
  %4174 = sub nsw i32 16, %4173
  %4175 = lshr i32 %4148, %4174
  %4176 = trunc nuw i32 %4175 to i16
  store i16 %4176, ptr %3001, align 8, !tbaa !25
  %4177 = add nsw i32 %4144, -16
  %4178 = add nsw i32 %4177, %4173
  br label %4181

4179:                                             ; preds = %.loopexit242
  %4180 = add nsw i32 %4140, %4144
  br label %4181

4181:                                             ; preds = %4179, %4166
  %4182 = phi i32 [ %4180, %4179 ], [ %4178, %4166 ]
  store i32 %4182, ptr %2303, align 4, !tbaa !26
  br label %4183

4183:                                             ; preds = %4181, %2816, %2449
  %4184 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4185

4185:                                             ; preds = %4196, %4183
  %4186 = phi i64 [ 0, %4183 ], [ %4200, %4196 ]
  %4187 = getelementptr inbounds nuw [4 x i8], ptr %4184, i64 %4186
  store i16 0, ptr %4187, align 4, !tbaa !28
  %4188 = getelementptr inbounds nuw i8, ptr %4187, i64 4
  store i16 0, ptr %4188, align 4, !tbaa !28
  %4189 = getelementptr inbounds nuw [4 x i8], ptr %4184, i64 %4186
  %4190 = getelementptr inbounds nuw i8, ptr %4189, i64 8
  store i16 0, ptr %4190, align 4, !tbaa !28
  %4191 = getelementptr inbounds nuw i8, ptr %4189, i64 12
  store i16 0, ptr %4191, align 4, !tbaa !28
  %4192 = getelementptr inbounds nuw [4 x i8], ptr %4184, i64 %4186
  %4193 = getelementptr inbounds nuw i8, ptr %4192, i64 16
  store i16 0, ptr %4193, align 4, !tbaa !28
  %4194 = getelementptr inbounds nuw i8, ptr %4192, i64 20
  store i16 0, ptr %4194, align 4, !tbaa !28
  %4195 = icmp eq i64 %4186, 280
  br i1 %4195, label %4201, label %4196

4196:                                             ; preds = %4185
  %4197 = getelementptr inbounds nuw [4 x i8], ptr %4184, i64 %4186
  %4198 = getelementptr inbounds nuw i8, ptr %4197, i64 24
  store i16 0, ptr %4198, align 4, !tbaa !28
  %4199 = getelementptr inbounds nuw i8, ptr %4197, i64 28
  store i16 0, ptr %4199, align 4, !tbaa !28
  %4200 = add nuw nsw i64 %4186, 8
  br label %4185

4201:                                             ; preds = %4185
  %4202 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4202, align 4, !tbaa !28
  %4203 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %4203, align 4, !tbaa !28
  %4204 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %4204, align 4, !tbaa !28
  %4205 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %4205, align 4, !tbaa !28
  %4206 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %4206, align 4, !tbaa !28
  %4207 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %4207, align 4, !tbaa !28
  %4208 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %4208, align 4, !tbaa !28
  %4209 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %4209, align 4, !tbaa !28
  %4210 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %4210, align 4, !tbaa !28
  %4211 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %4211, align 4, !tbaa !28
  %4212 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %4212, align 4, !tbaa !28
  %4213 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %4213, align 4, !tbaa !28
  %4214 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %4214, align 4, !tbaa !28
  %4215 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %4215, align 4, !tbaa !28
  %4216 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %4216, align 4, !tbaa !28
  %4217 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %4217, align 4, !tbaa !28
  %4218 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %4218, align 4, !tbaa !28
  %4219 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %4219, align 4, !tbaa !28
  %4220 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %4220, align 4, !tbaa !28
  %4221 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %4221, align 4, !tbaa !28
  %4222 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %4222, align 4, !tbaa !28
  %4223 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %4223, align 4, !tbaa !28
  %4224 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %4224, align 4, !tbaa !28
  %4225 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %4225, align 4, !tbaa !28
  %4226 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %4226, align 4, !tbaa !28
  %4227 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %4227, align 4, !tbaa !28
  %4228 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %4228, align 4, !tbaa !28
  %4229 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %4229, align 4, !tbaa !28
  %4230 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %4230, align 4, !tbaa !28
  %4231 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %4231, align 4, !tbaa !28
  %4232 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %4232, align 4, !tbaa !28
  %4233 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %4233, align 4, !tbaa !28
  %4234 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %4234, align 4, !tbaa !28
  %4235 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %4235, align 4, !tbaa !28
  %4236 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %4236, align 4, !tbaa !28
  %4237 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %4237, align 4, !tbaa !28
  %4238 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %4238, align 4, !tbaa !28
  %4239 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %4239, align 4, !tbaa !28
  %4240 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %4240, align 4, !tbaa !28
  %4241 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %4241, align 4, !tbaa !28
  %4242 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %4242, align 4, !tbaa !28
  %4243 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %4243, align 4, !tbaa !28
  %4244 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %4244, align 4, !tbaa !28
  %4245 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %4245, align 4, !tbaa !28
  %4246 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %4246, align 4, !tbaa !28
  %4247 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %4247, align 4, !tbaa !28
  %4248 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %4248, align 4, !tbaa !28
  %4249 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %4249, align 4, !tbaa !28
  %4250 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %4250, align 4, !tbaa !28
  %4251 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %4251, align 4, !tbaa !28
  %4252 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %4253 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %4253, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4252, i8 0, i64 20, i1 false)
  %4254 = icmp eq i32 %3, 0
  br i1 %4254, label %4306, label %4255

4255:                                             ; preds = %4201
  %4256 = load i32, ptr %2303, align 4, !tbaa !26
  %4257 = icmp sgt i32 %4256, 8
  br i1 %4257, label %4258, label %4283

4258:                                             ; preds = %4255
  %4259 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4260 = load i64, ptr %4259, align 8, !tbaa !30
  %4261 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4260, i64 1), !nosanitize !31
  %4262 = extractvalue { i64, i1 } %4261, 1, !nosanitize !31
  br i1 %4262, label %4263, label %4264, !prof !32, !nosanitize !31

4263:                                             ; preds = %4258
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

4264:                                             ; preds = %4258
  %4265 = extractvalue { i64, i1 } %4261, 0, !nosanitize !31
  %4266 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4267 = load ptr, ptr %4266, align 8, !tbaa !33
  %4268 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4269 = load i16, ptr %4268, align 8, !tbaa !25
  %4270 = trunc i16 %4269 to i8
  store i64 %4265, ptr %4259, align 8, !tbaa !30
  %4271 = getelementptr inbounds nuw i8, ptr %4267, i64 %4260
  store i8 %4270, ptr %4271, align 1, !tbaa !28
  %4272 = load i64, ptr %4259, align 8, !tbaa !30
  %4273 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4272, i64 1), !nosanitize !31
  %4274 = extractvalue { i64, i1 } %4273, 1, !nosanitize !31
  br i1 %4274, label %4275, label %4276, !prof !32, !nosanitize !31

4275:                                             ; preds = %4264
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

4276:                                             ; preds = %4264
  %4277 = extractvalue { i64, i1 } %4273, 0, !nosanitize !31
  %4278 = load ptr, ptr %4266, align 8, !tbaa !33
  %4279 = load i16, ptr %4268, align 8, !tbaa !25
  %4280 = lshr i16 %4279, 8
  %4281 = trunc nuw i16 %4280 to i8
  store i64 %4277, ptr %4259, align 8, !tbaa !30
  %4282 = getelementptr inbounds nuw i8, ptr %4278, i64 %4272
  store i8 %4281, ptr %4282, align 1, !tbaa !28
  br label %4299

4283:                                             ; preds = %4255
  %4284 = icmp sgt i32 %4256, 0
  br i1 %4284, label %4285, label %4299

4285:                                             ; preds = %4283
  %4286 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4287 = load i64, ptr %4286, align 8, !tbaa !30
  %4288 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4287, i64 1), !nosanitize !31
  %4289 = extractvalue { i64, i1 } %4288, 1, !nosanitize !31
  br i1 %4289, label %4290, label %4291, !prof !32, !nosanitize !31

4290:                                             ; preds = %4285
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

4291:                                             ; preds = %4285
  %4292 = extractvalue { i64, i1 } %4288, 0, !nosanitize !31
  %4293 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4294 = load ptr, ptr %4293, align 8, !tbaa !33
  %4295 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4296 = load i16, ptr %4295, align 8, !tbaa !25
  %4297 = trunc i16 %4296 to i8
  store i64 %4292, ptr %4286, align 8, !tbaa !30
  %4298 = getelementptr inbounds nuw i8, ptr %4294, i64 %4287
  store i8 %4297, ptr %4298, align 1, !tbaa !28
  br label %4299

4299:                                             ; preds = %4291, %4283, %4276
  %4300 = load i32, ptr %2303, align 4, !tbaa !26
  %4301 = add i32 %4300, 7
  %4302 = and i32 %4301, 7
  %4303 = add nuw nsw i32 %4302, 1
  %4304 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %4303, ptr %4304, align 8, !tbaa !27
  %4305 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %4305, align 8, !tbaa !25
  store i32 0, ptr %2303, align 4, !tbaa !26
  br label %4306

4306:                                             ; preds = %4299, %4201
  ret void
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %6 = load i32, ptr %5, align 4, !tbaa !29
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 1), !nosanitize !31
  %8 = extractvalue { i32, i1 } %7, 1, !nosanitize !31
  br i1 %8, label %9, label %10, !prof !32, !nosanitize !31

9:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

10:                                               ; preds = %3
  %11 = extractvalue { i32, i1 } %7, 0, !nosanitize !31
  %12 = load ptr, ptr %4, align 8, !tbaa !76
  %13 = trunc i32 %1 to i8
  store i32 %11, ptr %5, align 4, !tbaa !29
  %14 = zext i32 %6 to i64
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 %14
  store i8 %13, ptr %15, align 1, !tbaa !28
  %16 = load i32, ptr %5, align 4, !tbaa !29
  %17 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %16, i32 1), !nosanitize !31
  %18 = extractvalue { i32, i1 } %17, 1, !nosanitize !31
  br i1 %18, label %19, label %20, !prof !32, !nosanitize !31

19:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

20:                                               ; preds = %10
  %21 = extractvalue { i32, i1 } %17, 0, !nosanitize !31
  %22 = load ptr, ptr %4, align 8, !tbaa !76
  %23 = lshr i32 %1, 8
  %24 = trunc i32 %23 to i8
  store i32 %21, ptr %5, align 4, !tbaa !29
  %25 = zext i32 %16 to i64
  %26 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  store i8 %24, ptr %26, align 1, !tbaa !28
  %27 = load i32, ptr %5, align 4, !tbaa !29
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %27, i32 1), !nosanitize !31
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !31
  br i1 %29, label %30, label %31, !prof !32, !nosanitize !31

30:                                               ; preds = %20
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

31:                                               ; preds = %20
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !31
  %33 = load ptr, ptr %4, align 8, !tbaa !76
  %34 = trunc i32 %2 to i8
  store i32 %32, ptr %5, align 4, !tbaa !29
  %35 = zext i32 %27 to i64
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 %35
  store i8 %34, ptr %36, align 1, !tbaa !28
  %37 = icmp eq i32 %1, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %40 = zext i32 %2 to i64
  %41 = getelementptr inbounds nuw [4 x i8], ptr %39, i64 %40
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = add i16 %42, 1
  store i16 %43, ptr %41, align 4, !tbaa !28
  br label %75

44:                                               ; preds = %31
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %46 = load i32, ptr %45, align 8, !tbaa !81
  %47 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 1), !nosanitize !31
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !31
  br i1 %48, label %49, label %50, !prof !32, !nosanitize !31

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !31
  unreachable, !nosanitize !31

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !31
  store i32 %51, ptr %45, align 8, !tbaa !81
  %52 = add i32 %1, -1
  %53 = zext i32 %2 to i64
  %54 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !28
  %56 = zext i8 %55 to i64
  %57 = getelementptr i8, ptr %0, i64 1240
  %58 = getelementptr [4 x i8], ptr %57, i64 %56
  %59 = load i16, ptr %58, align 4, !tbaa !28
  %60 = add i16 %59, 1
  store i16 %60, ptr %58, align 4, !tbaa !28
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %62 = icmp ult i32 %1, 257
  %63 = zext nneg i32 %52 to i64
  %64 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %63
  %65 = lshr i32 %52, 7
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %66
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 256
  %69 = select i1 %62, ptr %64, ptr %68
  %70 = load i8, ptr %69, align 1, !tbaa !28
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %71
  %73 = load i16, ptr %72, align 4, !tbaa !28
  %74 = add i16 %73, 1
  store i16 %74, ptr %72, align 4, !tbaa !28
  br label %75

75:                                               ; preds = %50, %38
  %76 = load i32, ptr %5, align 4, !tbaa !29
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %78 = load i32, ptr %77, align 8, !tbaa !82
  %79 = icmp eq i32 %76, %78
  %80 = zext i1 %79 to i32
  ret i32 %80
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nomerge noreturn nounwind }
attributes #10 = { nounwind }

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
!8 = !{!9, !17, i64 2904}
!9 = !{!"internal_state", !10, i64 0, !5, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !13, i64 40, !5, i64 48, !14, i64 56, !13, i64 64, !6, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !12, i64 96, !13, i64 104, !15, i64 112, !15, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !13, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !6, i64 212, !6, i64 2504, !6, i64 2748, !16, i64 2904, !16, i64 2928, !16, i64 2952, !6, i64 2976, !6, i64 3008, !5, i64 5300, !5, i64 5304, !6, i64 5308, !12, i64 5888, !5, i64 5896, !5, i64 5900, !5, i64 5904, !13, i64 5912, !13, i64 5920, !5, i64 5928, !5, i64 5932, !19, i64 5936, !5, i64 5940, !5, i64 5944, !13, i64 5952, !5, i64 5960}
!10 = !{!"p1 _ZTS10z_stream_s", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS11gz_header_s", !11, i64 0}
!15 = !{!"p1 short", !11, i64 0}
!16 = !{!"tree_desc_s", !17, i64 0, !5, i64 8, !18, i64 16}
!17 = !{!"p1 _ZTS9ct_data_s", !11, i64 0}
!18 = !{!"p1 _ZTS18static_tree_desc_s", !11, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!9, !18, i64 2920}
!21 = !{!9, !17, i64 2928}
!22 = !{!9, !18, i64 2944}
!23 = !{!9, !17, i64 2952}
!24 = !{!9, !18, i64 2968}
!25 = !{!9, !19, i64 5936}
!26 = !{!9, !5, i64 5940}
!27 = !{!9, !5, i64 5944}
!28 = !{!6, !6, i64 0}
!29 = !{!9, !5, i64 5900}
!30 = !{!9, !13, i64 40}
!31 = !{}
!32 = !{!"branch_weights", i32 1, i32 1048575}
!33 = !{!9, !12, i64 16}
!34 = !{!9, !5, i64 196}
!35 = !{!9, !10, i64 0}
!36 = !{!37, !5, i64 88}
!37 = !{!"z_stream_s", !12, i64 0, !5, i64 8, !13, i64 16, !12, i64 24, !5, i64 32, !13, i64 40, !12, i64 48, !38, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!38 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!16, !17, i64 0}
!42 = !{!16, !18, i64 16}
!43 = !{!44, !17, i64 0}
!44 = !{!"static_tree_desc_s", !17, i64 0, !45, i64 8, !5, i64 16, !5, i64 20, !5, i64 24}
!45 = !{!"p1 int", !11, i64 0}
!46 = !{!44, !5, i64 20}
!47 = !{!9, !5, i64 5300}
!48 = !{!9, !5, i64 5304}
!49 = distinct !{!49, !40}
!50 = !{!9, !13, i64 5912}
!51 = !{!9, !13, i64 5920}
!52 = distinct !{!52, !40}
!53 = !{!16, !5, i64 8}
!54 = distinct !{!54, !40}
!55 = distinct !{!55, !40}
!56 = distinct !{!56, !40}
!57 = !{!44, !45, i64 8}
!58 = !{!44, !5, i64 16}
!59 = !{!44, !5, i64 24}
!60 = !{!19, !19, i64 0}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !40}
!64 = distinct !{!64, !40}
!65 = distinct !{!65, !40}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, !68}
!71 = !{!9, !5, i64 2912}
!72 = distinct !{!72, !40}
!73 = !{!9, !5, i64 2936}
!74 = distinct !{!74, !68}
!75 = !{!9, !5, i64 200}
!76 = !{!9, !12, i64 5888}
!77 = distinct !{!77, !40}
!78 = distinct !{!78, !40}
!79 = distinct !{!79, !40}
!80 = distinct !{!80, !40}
!81 = !{!9, !5, i64 5928}
!82 = !{!9, !5, i64 5904}
