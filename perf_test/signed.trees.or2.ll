; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.trees.or.ll'
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
  %8 = shl i32 %3, %6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %10 = load i16, ptr %9, align 8, !tbaa !25
  %11 = trunc i32 %8 to i16
  %12 = or i16 %10, %11
  store i16 %12, ptr %9, align 8, !tbaa !25
  br i1 %7, label %14, label %38

13:                                               ; preds = %14
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

14:                                               ; preds = %4
  %15 = trunc i16 %12 to i8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %19 = load i64, ptr %18, align 8, !tbaa !32
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8, !tbaa !32
  %21 = getelementptr inbounds nuw i8, ptr %17, i64 %19
  store i8 %15, ptr %21, align 1, !tbaa !28
  %22 = load i16, ptr %9, align 8, !tbaa !25
  %23 = lshr i16 %22, 8
  %24 = trunc nuw i16 %23 to i8
  %25 = load ptr, ptr %16, align 8, !tbaa !31
  %26 = load i64, ptr %18, align 8, !tbaa !32
  %27 = add i64 %26, 1
  store i64 %27, ptr %18, align 8, !tbaa !32
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 %26
  store i8 %24, ptr %28, align 1, !tbaa !28
  %29 = load i32, ptr %5, align 4, !tbaa !26
  %30 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %29), !nosanitize !30
  %31 = extractvalue { i32, i1 } %30, 1, !nosanitize !30
  br i1 %31, label %13, label %32, !prof !33, !nosanitize !30

32:                                               ; preds = %14
  %33 = extractvalue { i32, i1 } %30, 0, !nosanitize !30
  %34 = and i32 %3, 65535
  %35 = lshr i32 %34, %33
  %36 = trunc nuw i32 %35 to i16
  store i16 %36, ptr %9, align 8, !tbaa !25
  %37 = add i32 %29, -13
  br label %40

38:                                               ; preds = %4
  %39 = add nsw i32 %6, 3
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i16 [ %36, %32 ], [ %12, %38 ]
  %42 = phi i32 [ %37, %32 ], [ %39, %38 ]
  store i32 %42, ptr %5, align 4, !tbaa !26
  %43 = icmp sgt i32 %42, 8
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = trunc i16 %41 to i8
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %47 = load ptr, ptr %46, align 8, !tbaa !31
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %49 = load i64, ptr %48, align 8, !tbaa !32
  %50 = add i64 %49, 1
  store i64 %50, ptr %48, align 8, !tbaa !32
  %51 = getelementptr inbounds nuw i8, ptr %47, i64 %49
  store i8 %45, ptr %51, align 1, !tbaa !28
  %52 = load i16, ptr %9, align 8, !tbaa !25
  %53 = lshr i16 %52, 8
  %54 = trunc nuw i16 %53 to i8
  %55 = load ptr, ptr %46, align 8, !tbaa !31
  %56 = load i64, ptr %48, align 8, !tbaa !32
  %57 = add i64 %56, 1
  store i64 %57, ptr %48, align 8, !tbaa !32
  %58 = getelementptr inbounds nuw i8, ptr %55, i64 %56
  store i8 %54, ptr %58, align 1, !tbaa !28
  br label %69

59:                                               ; preds = %40
  %60 = icmp sgt i32 %42, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %59
  %62 = trunc i16 %41 to i8
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %64 = load ptr, ptr %63, align 8, !tbaa !31
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %66 = load i64, ptr %65, align 8, !tbaa !32
  %67 = add i64 %66, 1
  store i64 %67, ptr %65, align 8, !tbaa !32
  %68 = getelementptr inbounds nuw i8, ptr %64, i64 %66
  store i8 %62, ptr %68, align 1, !tbaa !28
  br label %69

69:                                               ; preds = %61, %59, %44
  %70 = load i32, ptr %5, align 4, !tbaa !26
  %71 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %70, i32 -1)
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !30
  br i1 %72, label %73, label %74, !prof !33, !nosanitize !30

73:                                               ; preds = %69
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

74:                                               ; preds = %69
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !30
  %76 = and i32 %75, 7
  %77 = add nuw nsw i32 %76, 1
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %77, ptr %78, align 8, !tbaa !27
  store i16 0, ptr %9, align 8, !tbaa !25
  store i32 0, ptr %5, align 4, !tbaa !26
  %79 = trunc i64 %2 to i8
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %81 = load ptr, ptr %80, align 8, !tbaa !31
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %83 = load i64, ptr %82, align 8, !tbaa !32
  %84 = add i64 %83, 1
  store i64 %84, ptr %82, align 8, !tbaa !32
  %85 = getelementptr inbounds nuw i8, ptr %81, i64 %83
  store i8 %79, ptr %85, align 1, !tbaa !28
  %86 = lshr i64 %2, 8
  %87 = trunc i64 %86 to i8
  %88 = load ptr, ptr %80, align 8, !tbaa !31
  %89 = load i64, ptr %82, align 8, !tbaa !32
  %90 = add i64 %89, 1
  store i64 %90, ptr %82, align 8, !tbaa !32
  %91 = getelementptr inbounds nuw i8, ptr %88, i64 %89
  store i8 %87, ptr %91, align 1, !tbaa !28
  %92 = trunc i64 %2 to i32
  %93 = xor i32 %92, 65535
  %94 = trunc i32 %93 to i8
  %95 = load ptr, ptr %80, align 8, !tbaa !31
  %96 = load i64, ptr %82, align 8, !tbaa !32
  %97 = add i64 %96, 1
  store i64 %97, ptr %82, align 8, !tbaa !32
  %98 = getelementptr inbounds nuw i8, ptr %95, i64 %96
  store i8 %94, ptr %98, align 1, !tbaa !28
  %99 = lshr i32 %93, 8
  %100 = trunc i32 %99 to i8
  %101 = load ptr, ptr %80, align 8, !tbaa !31
  %102 = load i64, ptr %82, align 8, !tbaa !32
  %103 = add i64 %102, 1
  store i64 %103, ptr %82, align 8, !tbaa !32
  %104 = getelementptr inbounds nuw i8, ptr %101, i64 %102
  store i8 %100, ptr %104, align 1, !tbaa !28
  %105 = icmp eq i64 %2, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %74
  %107 = load ptr, ptr %80, align 8, !tbaa !31
  %108 = load i64, ptr %82, align 8, !tbaa !32
  %109 = getelementptr inbounds nuw i8, ptr %107, i64 %108
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %109, ptr align 1 %1, i64 %2, i1 false)
  br label %110

110:                                              ; preds = %106, %74
  %111 = load i64, ptr %82, align 8, !tbaa !32
  %112 = add i64 %111, %2
  store i64 %112, ptr %82, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local void @_tr_flush_bits(ptr noundef captures(none) %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %7 = load i16, ptr %6, align 8, !tbaa !25
  %8 = trunc i16 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !31
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %12 = load i64, ptr %11, align 8, !tbaa !32
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !32
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 %12
  store i8 %8, ptr %14, align 1, !tbaa !28
  %15 = load i16, ptr %6, align 8, !tbaa !25
  %16 = lshr i16 %15, 8
  %17 = trunc nuw i16 %16 to i8
  %18 = load ptr, ptr %9, align 8, !tbaa !31
  %19 = load i64, ptr %11, align 8, !tbaa !32
  %20 = add i64 %19, 1
  store i64 %20, ptr %11, align 8, !tbaa !32
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %19
  store i8 %17, ptr %21, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %42

22:                                               ; preds = %1
  %23 = icmp sgt i32 %3, 7
  br i1 %23, label %24, label %44

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %26 = load i16, ptr %25, align 8, !tbaa !25
  %27 = trunc i16 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i64, ptr %30, align 8, !tbaa !32
  %32 = add i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !32
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 %31
  store i8 %27, ptr %33, align 1, !tbaa !28
  %34 = load i16, ptr %25, align 8, !tbaa !25
  %35 = lshr i16 %34, 8
  store i16 %35, ptr %25, align 8, !tbaa !25
  %36 = load i32, ptr %2, align 4, !tbaa !26
  %37 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %36, i32 -8)
  %38 = extractvalue { i32, i1 } %37, 1, !nosanitize !30
  br i1 %38, label %39, label %40, !prof !33, !nosanitize !30

39:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

40:                                               ; preds = %24
  %41 = extractvalue { i32, i1 } %37, 0, !nosanitize !30
  br label %42

42:                                               ; preds = %40, %5
  %43 = phi i32 [ %41, %40 ], [ 0, %5 ]
  store i32 %43, ptr %2, align 4, !tbaa !26
  br label %44

44:                                               ; preds = %42, %22
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
  br i1 %4, label %11, label %36

10:                                               ; preds = %45, %11
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

11:                                               ; preds = %1
  %12 = trunc i16 %9 to i8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !31
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = load i64, ptr %15, align 8, !tbaa !32
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8, !tbaa !32
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 %16
  store i8 %12, ptr %18, align 1, !tbaa !28
  %19 = load i16, ptr %6, align 8, !tbaa !25
  %20 = lshr i16 %19, 8
  %21 = trunc nuw i16 %20 to i8
  %22 = load ptr, ptr %13, align 8, !tbaa !31
  %23 = load i64, ptr %15, align 8, !tbaa !32
  %24 = add i64 %23, 1
  store i64 %24, ptr %15, align 8, !tbaa !32
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  store i8 %21, ptr %25, align 1, !tbaa !28
  %26 = load i32, ptr %2, align 4, !tbaa !26
  %27 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %26), !nosanitize !30
  %28 = extractvalue { i32, i1 } %27, 1, !nosanitize !30
  br i1 %28, label %10, label %29, !prof !33, !nosanitize !30

29:                                               ; preds = %11
  %30 = extractvalue { i32, i1 } %27, 0, !nosanitize !30
  %31 = lshr i32 2, %30
  %32 = trunc nuw nsw i32 %31 to i16
  store i16 %32, ptr %6, align 8, !tbaa !25
  %33 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 -13), !nosanitize !30
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !30
  br i1 %34, label %35, label %39, !prof !33, !nosanitize !30

35:                                               ; preds = %62, %29
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

36:                                               ; preds = %1
  %37 = add nsw i32 %3, 3
  %38 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %37, 0
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi i16 [ %32, %29 ], [ %9, %36 ]
  %41 = phi { i32, i1 } [ %33, %29 ], [ %38, %36 ]
  %42 = extractvalue { i32, i1 } %41, 0
  store i32 %42, ptr %2, align 4, !tbaa !26
  %43 = icmp sgt i32 %42, 9
  %44 = trunc i16 %40 to i8
  br i1 %43, label %45, label %67

45:                                               ; preds = %39
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %47 = load ptr, ptr %46, align 8, !tbaa !31
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %49 = load i64, ptr %48, align 8, !tbaa !32
  %50 = add i64 %49, 1
  store i64 %50, ptr %48, align 8, !tbaa !32
  %51 = getelementptr inbounds nuw i8, ptr %47, i64 %49
  store i8 %44, ptr %51, align 1, !tbaa !28
  %52 = load i16, ptr %6, align 8, !tbaa !25
  %53 = lshr i16 %52, 8
  %54 = trunc nuw i16 %53 to i8
  %55 = load ptr, ptr %46, align 8, !tbaa !31
  %56 = load i64, ptr %48, align 8, !tbaa !32
  %57 = add i64 %56, 1
  store i64 %57, ptr %48, align 8, !tbaa !32
  %58 = getelementptr inbounds nuw i8, ptr %55, i64 %56
  store i8 %54, ptr %58, align 1, !tbaa !28
  %59 = load i32, ptr %2, align 4, !tbaa !26
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %59), !nosanitize !30
  %61 = extractvalue { i32, i1 } %60, 1, !nosanitize !30
  br i1 %61, label %10, label %62, !prof !33, !nosanitize !30

62:                                               ; preds = %45
  store i16 0, ptr %6, align 8, !tbaa !25
  %63 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %59, i32 -9), !nosanitize !30
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !30
  br i1 %64, label %35, label %65, !prof !33, !nosanitize !30

65:                                               ; preds = %62
  %66 = extractvalue { i32, i1 } %63, 0, !nosanitize !30
  br label %69

67:                                               ; preds = %39
  %68 = add nsw i32 %42, 7
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i8 [ %44, %67 ], [ 0, %65 ]
  %71 = phi i32 [ %68, %67 ], [ %66, %65 ]
  store i32 %71, ptr %2, align 4, !tbaa !26
  %72 = icmp eq i32 %71, 16
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %75 = load ptr, ptr %74, align 8, !tbaa !31
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %77 = load i64, ptr %76, align 8, !tbaa !32
  %78 = add i64 %77, 1
  store i64 %78, ptr %76, align 8, !tbaa !32
  %79 = getelementptr inbounds nuw i8, ptr %75, i64 %77
  store i8 %70, ptr %79, align 1, !tbaa !28
  %80 = load i16, ptr %6, align 8, !tbaa !25
  %81 = lshr i16 %80, 8
  %82 = trunc nuw i16 %81 to i8
  %83 = load ptr, ptr %74, align 8, !tbaa !31
  %84 = load i64, ptr %76, align 8, !tbaa !32
  %85 = add i64 %84, 1
  store i64 %85, ptr %76, align 8, !tbaa !32
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 %84
  store i8 %82, ptr %86, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %104

87:                                               ; preds = %69
  %88 = icmp sgt i32 %71, 7
  br i1 %88, label %89, label %106

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %91 = load ptr, ptr %90, align 8, !tbaa !31
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %93 = load i64, ptr %92, align 8, !tbaa !32
  %94 = add i64 %93, 1
  store i64 %94, ptr %92, align 8, !tbaa !32
  %95 = getelementptr inbounds nuw i8, ptr %91, i64 %93
  store i8 %70, ptr %95, align 1, !tbaa !28
  %96 = load i16, ptr %6, align 8, !tbaa !25
  %97 = lshr i16 %96, 8
  store i16 %97, ptr %6, align 8, !tbaa !25
  %98 = load i32, ptr %2, align 4, !tbaa !26
  %99 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %98, i32 -8)
  %100 = extractvalue { i32, i1 } %99, 1, !nosanitize !30
  br i1 %100, label %101, label %102, !prof !33, !nosanitize !30

101:                                              ; preds = %89
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

102:                                              ; preds = %89
  %103 = extractvalue { i32, i1 } %99, 0, !nosanitize !30
  br label %104

104:                                              ; preds = %102, %73
  %105 = phi i32 [ %103, %102 ], [ 0, %73 ]
  store i32 %105, ptr %2, align 4, !tbaa !26
  br label %106

106:                                              ; preds = %104, %87
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
  br i1 %10, label %11, label %2304

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
  br i1 %19, label %20, label %.loopexit328

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %22 = load i16, ptr %21, align 4, !tbaa !28
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %.loopexit328

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %26 = load i16, ptr %25, align 4, !tbaa !28
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %.loopexit328

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %30 = load i16, ptr %29, align 4, !tbaa !28
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %.loopexit328

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 228
  %34 = load i16, ptr %33, align 4, !tbaa !28
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %.loopexit328

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %38 = load i16, ptr %37, align 4, !tbaa !28
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %.loopexit328

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %.loopexit328

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %46 = load i16, ptr %45, align 4, !tbaa !28
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %.loopexit328

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %50 = load i16, ptr %49, align 4, !tbaa !28
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %.loopexit328

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %54 = load i16, ptr %53, align 4, !tbaa !28
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %.loopexit328

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %58 = load i16, ptr %57, align 4, !tbaa !28
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %.loopexit328

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %62 = load i16, ptr %61, align 4, !tbaa !28
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %.loopexit328

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %66 = load i16, ptr %65, align 4, !tbaa !28
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %.loopexit328

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 292
  %70 = load i16, ptr %69, align 4, !tbaa !28
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %.loopexit328

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %74 = load i16, ptr %73, align 4, !tbaa !28
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %.loopexit328

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %78 = load i16, ptr %77, align 4, !tbaa !28
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %.loopexit328

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %82 = load i16, ptr %81, align 4, !tbaa !28
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %.loopexit328

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 308
  %86 = load i16, ptr %85, align 4, !tbaa !28
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %.loopexit328

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %90 = load i16, ptr %89, align 4, !tbaa !28
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %.loopexit328

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 324
  %94 = load i16, ptr %93, align 4, !tbaa !28
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %.loopexit328

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %98 = load i16, ptr %97, align 4, !tbaa !28
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %.loopexit328

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 332
  %102 = load i16, ptr %101, align 4, !tbaa !28
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %.loopexit328

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %106 = load i16, ptr %105, align 4, !tbaa !28
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %.loopexit328

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %110 = load i16, ptr %109, align 4, !tbaa !28
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %.loopexit328

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 252
  %114 = load i16, ptr %113, align 4, !tbaa !28
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %.loopexit328

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %118 = load i16, ptr %117, align 4, !tbaa !28
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %.preheader327, label %.loopexit328

120:                                              ; preds = %.preheader327
  %121 = getelementptr inbounds nuw i8, ptr %152, i64 4
  %122 = load i16, ptr %121, align 4, !tbaa !28
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %.loopexit328

124:                                              ; preds = %120
  %125 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %126 = load i16, ptr %125, align 4, !tbaa !28
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %.loopexit328

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %152, i64 12
  %130 = load i16, ptr %129, align 4, !tbaa !28
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %.preheader327.1, label %.loopexit328

.preheader327.1:                                  ; preds = %128
  %132 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %134 = load i16, ptr %133, align 4, !tbaa !28
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %.loopexit328

136:                                              ; preds = %.preheader327.1
  %137 = getelementptr inbounds nuw i8, ptr %132, i64 20
  %138 = load i16, ptr %137, align 4, !tbaa !28
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %.loopexit328

140:                                              ; preds = %136
  %141 = getelementptr inbounds nuw i8, ptr %132, i64 24
  %142 = load i16, ptr %141, align 4, !tbaa !28
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %.loopexit328

144:                                              ; preds = %140
  %145 = getelementptr inbounds nuw i8, ptr %132, i64 28
  %146 = load i16, ptr %145, align 4, !tbaa !28
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %.loopexit328

148:                                              ; preds = %144
  %149 = add nuw nsw i64 %151, 8
  %150 = icmp eq i64 %149, 256
  br i1 %150, label %.loopexit328, label %.preheader327, !llvm.loop !39

.preheader327:                                    ; preds = %116, %148
  %151 = phi i64 [ %149, %148 ], [ 32, %116 ]
  %152 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %151
  %153 = load i16, ptr %152, align 4, !tbaa !28
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %120, label %.loopexit328

.loopexit328:                                     ; preds = %.preheader327, %128, %124, %120, %.preheader327.1, %136, %140, %144, %148, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  %155 = phi i32 [ 1, %112 ], [ 0, %20 ], [ 1, %108 ], [ 1, %116 ], [ 0, %16 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 1, %124 ], [ 1, %128 ], [ 1, %120 ], [ 0, %148 ], [ 1, %.preheader327 ], [ 1, %.preheader327.1 ], [ 1, %136 ], [ 1, %140 ], [ 1, %144 ]
  store i32 %155, ptr %13, align 8, !tbaa !36
  br label %156

156:                                              ; preds = %.loopexit328, %11
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

171:                                              ; preds = %200
  %172 = load i32, ptr %164, align 4, !tbaa !47
  %173 = icmp slt i32 %172, 2
  br i1 %173, label %174, label %.loopexit325

174:                                              ; preds = %171, %156
  %175 = phi i32 [ %201, %171 ], [ -1, %156 ]
  %176 = phi i32 [ %172, %171 ], [ 0, %156 ]
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %180 = icmp eq ptr %161, null
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %204

182:                                              ; preds = %200, %167
  %183 = phi i64 [ 0, %167 ], [ %202, %200 ]
  %184 = phi i32 [ -1, %167 ], [ %201, %200 ]
  %185 = getelementptr inbounds nuw [4 x i8], ptr %158, i64 %183
  %186 = load i16, ptr %185, align 2, !tbaa !28
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %198, label %188

188:                                              ; preds = %182
  %189 = load i32, ptr %164, align 4, !tbaa !47
  %190 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %189, i32 1), !nosanitize !30
  %191 = extractvalue { i32, i1 } %190, 1, !nosanitize !30
  br i1 %191, label %.loopexit322, label %192, !prof !33, !nosanitize !30

.loopexit322:                                     ; preds = %188, %398
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

192:                                              ; preds = %188
  %193 = extractvalue { i32, i1 } %190, 0, !nosanitize !30
  store i32 %193, ptr %164, align 4, !tbaa !47
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i8], ptr %168, i64 %194
  %196 = trunc nuw nsw i64 %183 to i32
  store i32 %196, ptr %195, align 4, !tbaa !4
  %197 = getelementptr inbounds nuw i8, ptr %169, i64 %183
  store i8 0, ptr %197, align 1, !tbaa !28
  br label %200

198:                                              ; preds = %182
  %199 = getelementptr inbounds nuw i8, ptr %185, i64 2
  store i16 0, ptr %199, align 2, !tbaa !28
  br label %200

200:                                              ; preds = %198, %192
  %201 = phi i32 [ %196, %192 ], [ %184, %198 ]
  %202 = add nuw nsw i64 %183, 1
  %203 = icmp eq i64 %202, %170
  br i1 %203, label %171, label %182, !llvm.loop !49

204:                                              ; preds = %226, %174
  %205 = phi i32 [ %176, %174 ], [ %227, %226 ]
  %206 = phi i32 [ %175, %174 ], [ %209, %226 ]
  %207 = icmp slt i32 %206, 2
  %208 = add i32 %206, 1
  %209 = select i1 %207, i32 %208, i32 %206
  %210 = add nsw i32 %205, 1
  %211 = select i1 %207, i32 %208, i32 0
  store i32 %210, ptr %164, align 4, !tbaa !47
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds [4 x i8], ptr %177, i64 %212
  store i32 %211, ptr %213, align 4, !tbaa !4
  %214 = sext i32 %211 to i64
  %215 = getelementptr inbounds [4 x i8], ptr %158, i64 %214
  store i16 1, ptr %215, align 2, !tbaa !28
  %216 = getelementptr inbounds i8, ptr %178, i64 %214
  store i8 0, ptr %216, align 1, !tbaa !28
  %217 = load i64, ptr %179, align 8, !tbaa !50
  %218 = add i64 %217, -1
  store i64 %218, ptr %179, align 8, !tbaa !50
  br i1 %180, label %226, label %219

219:                                              ; preds = %204
  %220 = getelementptr inbounds [4 x i8], ptr %161, i64 %214
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 2
  %222 = load i16, ptr %221, align 2, !tbaa !28
  %223 = zext i16 %222 to i64
  %224 = load i64, ptr %181, align 8, !tbaa !51
  %225 = sub i64 %224, %223
  store i64 %225, ptr %181, align 8, !tbaa !51
  br label %226

226:                                              ; preds = %219, %204
  %227 = load i32, ptr %164, align 4, !tbaa !47
  %228 = icmp slt i32 %227, 2
  br i1 %228, label %204, label %.loopexit325, !llvm.loop !52

.loopexit325:                                     ; preds = %226, %171
  %229 = phi i32 [ %201, %171 ], [ %209, %226 ]
  %230 = phi i32 [ %172, %171 ], [ %227, %226 ]
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %229, ptr %231, align 8, !tbaa !53
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %234 = lshr i32 %230, 1
  %235 = zext nneg i32 %234 to i64
  br label %240

236:                                              ; preds = %.loopexit323
  %237 = load i32, ptr %164, align 4, !tbaa !47
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %239 = sext i32 %163 to i64
  br label %311

240:                                              ; preds = %.loopexit323, %.loopexit325
  %241 = phi i64 [ %235, %.loopexit325 ], [ %309, %.loopexit323 ]
  %242 = getelementptr inbounds nuw [4 x i8], ptr %232, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, ptr %233, i64 %244
  %246 = load i32, ptr %164, align 4, !tbaa !47
  %247 = trunc i64 %241 to i32
  %248 = shl i32 %247, 1
  %249 = icmp sgt i32 %248, %246
  br i1 %249, label %.loopexit323, label %250

250:                                              ; preds = %240
  %251 = getelementptr inbounds [4 x i8], ptr %158, i64 %244
  br label %252

252:                                              ; preds = %300, %250
  %253 = phi i32 [ %246, %250 ], [ %304, %300 ]
  %254 = phi i32 [ %248, %250 ], [ %303, %300 ]
  %255 = phi i32 [ %247, %250 ], [ %285, %300 ]
  %256 = icmp slt i32 %254, %253
  br i1 %256, label %259, label %257

257:                                              ; preds = %252
  %258 = sext i32 %254 to i64
  br label %283

259:                                              ; preds = %252
  %260 = or disjoint i32 %254, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i8], ptr %232, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [4 x i8], ptr %158, i64 %264
  %266 = load i16, ptr %265, align 2, !tbaa !28
  %267 = sext i32 %254 to i64
  %268 = getelementptr inbounds [4 x i8], ptr %232, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [4 x i8], ptr %158, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !28
  %273 = icmp ult i16 %266, %272
  br i1 %273, label %282, label %274

274:                                              ; preds = %259
  %275 = icmp eq i16 %266, %272
  br i1 %275, label %276, label %283

276:                                              ; preds = %274
  %277 = getelementptr inbounds i8, ptr %233, i64 %264
  %278 = load i8, ptr %277, align 1, !tbaa !28
  %279 = getelementptr inbounds i8, ptr %233, i64 %270
  %280 = load i8, ptr %279, align 1, !tbaa !28
  %281 = icmp ugt i8 %278, %280
  br i1 %281, label %283, label %282

282:                                              ; preds = %276, %259
  br label %283

283:                                              ; preds = %282, %276, %274, %257
  %284 = phi i64 [ %258, %257 ], [ %261, %282 ], [ %267, %276 ], [ %267, %274 ]
  %285 = phi i32 [ %254, %257 ], [ %260, %282 ], [ %254, %276 ], [ %254, %274 ]
  %286 = load i16, ptr %251, align 2, !tbaa !28
  %287 = getelementptr inbounds [4 x i8], ptr %232, i64 %284
  %288 = load i32, ptr %287, align 4, !tbaa !4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [4 x i8], ptr %158, i64 %289
  %291 = load i16, ptr %290, align 2, !tbaa !28
  %292 = icmp ult i16 %286, %291
  br i1 %292, label %.loopexit323, label %293

293:                                              ; preds = %283
  %294 = icmp eq i16 %286, %291
  br i1 %294, label %295, label %300

295:                                              ; preds = %293
  %296 = load i8, ptr %245, align 1, !tbaa !28
  %297 = getelementptr inbounds i8, ptr %233, i64 %289
  %298 = load i8, ptr %297, align 1, !tbaa !28
  %299 = icmp ugt i8 %296, %298
  br i1 %299, label %300, label %.loopexit323

300:                                              ; preds = %295, %293
  %301 = sext i32 %255 to i64
  %302 = getelementptr inbounds [4 x i8], ptr %232, i64 %301
  store i32 %288, ptr %302, align 4, !tbaa !4
  %303 = shl i32 %285, 1
  %304 = load i32, ptr %164, align 4, !tbaa !47
  %305 = icmp sgt i32 %303, %304
  br i1 %305, label %.loopexit323, label %252, !llvm.loop !54

.loopexit323:                                     ; preds = %300, %295, %283, %240
  %306 = phi i32 [ %247, %240 ], [ %285, %300 ], [ %255, %295 ], [ %255, %283 ]
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [4 x i8], ptr %232, i64 %307
  store i32 %243, ptr %308, align 4, !tbaa !4
  %309 = add nsw i64 %241, -1
  %310 = icmp sgt i64 %241, 1
  br i1 %310, label %240, label %236, !llvm.loop !55

.loopexit321:                                     ; preds = %391, %384, %311, %487
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

311:                                              ; preds = %482, %236
  %312 = phi i32 [ %237, %236 ], [ %485, %482 ]
  %313 = phi i64 [ %239, %236 ], [ %423, %482 ]
  %314 = load i32, ptr %238, align 4, !tbaa !4
  %315 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %312, i32 -1)
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !30
  br i1 %316, label %.loopexit321, label %317, !prof !33, !nosanitize !30

317:                                              ; preds = %311
  %318 = extractvalue { i32, i1 } %315, 0, !nosanitize !30
  store i32 %318, ptr %164, align 4, !tbaa !47
  %319 = sext i32 %312 to i64
  %320 = getelementptr inbounds [4 x i8], ptr %232, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !4
  store i32 %321, ptr %238, align 4, !tbaa !4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, ptr %233, i64 %322
  %324 = icmp slt i32 %318, 2
  br i1 %324, label %384, label %325

325:                                              ; preds = %317
  %326 = getelementptr inbounds [4 x i8], ptr %158, i64 %322
  br label %327

327:                                              ; preds = %375, %325
  %328 = phi i32 [ %318, %325 ], [ %379, %375 ]
  %329 = phi i32 [ 2, %325 ], [ %378, %375 ]
  %330 = phi i32 [ 1, %325 ], [ %360, %375 ]
  %331 = icmp slt i32 %329, %328
  br i1 %331, label %334, label %332

332:                                              ; preds = %327
  %333 = sext i32 %329 to i64
  br label %358

334:                                              ; preds = %327
  %335 = or disjoint i32 %329, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [4 x i8], ptr %232, i64 %336
  %338 = load i32, ptr %337, align 4, !tbaa !4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [4 x i8], ptr %158, i64 %339
  %341 = load i16, ptr %340, align 2, !tbaa !28
  %342 = sext i32 %329 to i64
  %343 = getelementptr inbounds [4 x i8], ptr %232, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [4 x i8], ptr %158, i64 %345
  %347 = load i16, ptr %346, align 2, !tbaa !28
  %348 = icmp ult i16 %341, %347
  br i1 %348, label %357, label %349

349:                                              ; preds = %334
  %350 = icmp eq i16 %341, %347
  br i1 %350, label %351, label %358

351:                                              ; preds = %349
  %352 = getelementptr inbounds i8, ptr %233, i64 %339
  %353 = load i8, ptr %352, align 1, !tbaa !28
  %354 = getelementptr inbounds i8, ptr %233, i64 %345
  %355 = load i8, ptr %354, align 1, !tbaa !28
  %356 = icmp ugt i8 %353, %355
  br i1 %356, label %358, label %357

357:                                              ; preds = %351, %334
  br label %358

358:                                              ; preds = %357, %351, %349, %332
  %359 = phi i64 [ %333, %332 ], [ %336, %357 ], [ %342, %351 ], [ %342, %349 ]
  %360 = phi i32 [ %329, %332 ], [ %335, %357 ], [ %329, %351 ], [ %329, %349 ]
  %361 = load i16, ptr %326, align 2, !tbaa !28
  %362 = getelementptr inbounds [4 x i8], ptr %232, i64 %359
  %363 = load i32, ptr %362, align 4, !tbaa !4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [4 x i8], ptr %158, i64 %364
  %366 = load i16, ptr %365, align 2, !tbaa !28
  %367 = icmp ult i16 %361, %366
  br i1 %367, label %381, label %368

368:                                              ; preds = %358
  %369 = icmp eq i16 %361, %366
  br i1 %369, label %370, label %375

370:                                              ; preds = %368
  %371 = load i8, ptr %323, align 1, !tbaa !28
  %372 = getelementptr inbounds i8, ptr %233, i64 %364
  %373 = load i8, ptr %372, align 1, !tbaa !28
  %374 = icmp ugt i8 %371, %373
  br i1 %374, label %375, label %381

375:                                              ; preds = %370, %368
  %376 = sext i32 %330 to i64
  %377 = getelementptr inbounds [4 x i8], ptr %232, i64 %376
  store i32 %363, ptr %377, align 4, !tbaa !4
  %378 = shl i32 %360, 1
  %379 = load i32, ptr %164, align 4, !tbaa !47
  %380 = icmp sgt i32 %378, %379
  br i1 %380, label %381, label %327, !llvm.loop !54

381:                                              ; preds = %375, %370, %358
  %382 = phi i32 [ %330, %358 ], [ %330, %370 ], [ %360, %375 ]
  %383 = sext i32 %382 to i64
  br label %384

384:                                              ; preds = %381, %317
  %385 = phi i64 [ 1, %317 ], [ %383, %381 ]
  %386 = getelementptr inbounds [4 x i8], ptr %232, i64 %385
  store i32 %321, ptr %386, align 4, !tbaa !4
  %387 = load i32, ptr %238, align 4, !tbaa !4
  %388 = load i32, ptr %165, align 8, !tbaa !48
  %389 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %388, i32 -1)
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !30
  br i1 %390, label %.loopexit321, label %391, !prof !33, !nosanitize !30

391:                                              ; preds = %384
  %392 = extractvalue { i32, i1 } %389, 0, !nosanitize !30
  store i32 %392, ptr %165, align 8, !tbaa !48
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [4 x i8], ptr %232, i64 %393
  store i32 %314, ptr %394, align 4, !tbaa !4
  %395 = load i32, ptr %165, align 8, !tbaa !48
  %396 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %395, i32 -1)
  %397 = extractvalue { i32, i1 } %396, 1, !nosanitize !30
  br i1 %397, label %.loopexit321, label %398, !prof !33, !nosanitize !30

398:                                              ; preds = %391
  %399 = extractvalue { i32, i1 } %396, 0, !nosanitize !30
  store i32 %399, ptr %165, align 8, !tbaa !48
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [4 x i8], ptr %232, i64 %400
  store i32 %387, ptr %401, align 4, !tbaa !4
  %402 = sext i32 %314 to i64
  %403 = getelementptr inbounds [4 x i8], ptr %158, i64 %402
  %404 = load i16, ptr %403, align 2, !tbaa !28
  %405 = sext i32 %387 to i64
  %406 = getelementptr inbounds [4 x i8], ptr %158, i64 %405
  %407 = load i16, ptr %406, align 2, !tbaa !28
  %408 = add i16 %407, %404
  %409 = getelementptr inbounds [4 x i8], ptr %158, i64 %313
  store i16 %408, ptr %409, align 2, !tbaa !28
  %410 = getelementptr inbounds i8, ptr %233, i64 %402
  %411 = load i8, ptr %410, align 1, !tbaa !28
  %412 = getelementptr inbounds i8, ptr %233, i64 %405
  %413 = load i8, ptr %412, align 1, !tbaa !28
  %414 = tail call i8 @llvm.umax.i8(i8 %411, i8 %413)
  %415 = add i8 %414, 1
  %416 = getelementptr inbounds i8, ptr %233, i64 %313
  store i8 %415, ptr %416, align 1, !tbaa !28
  %417 = trunc nsw i64 %313 to i32
  %418 = trunc i64 %313 to i16
  %419 = getelementptr inbounds nuw i8, ptr %406, i64 2
  store i16 %418, ptr %419, align 2, !tbaa !28
  %420 = getelementptr inbounds nuw i8, ptr %403, i64 2
  store i16 %418, ptr %420, align 2, !tbaa !28
  %421 = icmp eq i64 %313, 2147483647
  br i1 %421, label %.loopexit322, label %422, !prof !33, !nosanitize !30

422:                                              ; preds = %398
  %423 = add nsw i64 %313, 1
  store i32 %417, ptr %238, align 4, !tbaa !4
  %424 = load i32, ptr %164, align 4, !tbaa !47
  %425 = icmp slt i32 %424, 2
  br i1 %425, label %482, label %.preheader320

.preheader320:                                    ; preds = %422, %473
  %426 = phi i32 [ %477, %473 ], [ %424, %422 ]
  %427 = phi i32 [ %476, %473 ], [ 2, %422 ]
  %428 = phi i32 [ %458, %473 ], [ 1, %422 ]
  %429 = icmp slt i32 %427, %426
  br i1 %429, label %432, label %430

430:                                              ; preds = %.preheader320
  %431 = sext i32 %427 to i64
  br label %456

432:                                              ; preds = %.preheader320
  %433 = or disjoint i32 %427, 1
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [4 x i8], ptr %232, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [4 x i8], ptr %158, i64 %437
  %439 = load i16, ptr %438, align 2, !tbaa !28
  %440 = sext i32 %427 to i64
  %441 = getelementptr inbounds [4 x i8], ptr %232, i64 %440
  %442 = load i32, ptr %441, align 4, !tbaa !4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [4 x i8], ptr %158, i64 %443
  %445 = load i16, ptr %444, align 2, !tbaa !28
  %446 = icmp ult i16 %439, %445
  br i1 %446, label %455, label %447

447:                                              ; preds = %432
  %448 = icmp eq i16 %439, %445
  br i1 %448, label %449, label %456

449:                                              ; preds = %447
  %450 = getelementptr inbounds i8, ptr %233, i64 %437
  %451 = load i8, ptr %450, align 1, !tbaa !28
  %452 = getelementptr inbounds i8, ptr %233, i64 %443
  %453 = load i8, ptr %452, align 1, !tbaa !28
  %454 = icmp ugt i8 %451, %453
  br i1 %454, label %456, label %455

455:                                              ; preds = %449, %432
  br label %456

456:                                              ; preds = %455, %449, %447, %430
  %457 = phi i64 [ %431, %430 ], [ %434, %455 ], [ %440, %449 ], [ %440, %447 ]
  %458 = phi i32 [ %427, %430 ], [ %433, %455 ], [ %427, %449 ], [ %427, %447 ]
  %459 = load i16, ptr %409, align 2, !tbaa !28
  %460 = getelementptr inbounds [4 x i8], ptr %232, i64 %457
  %461 = load i32, ptr %460, align 4, !tbaa !4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [4 x i8], ptr %158, i64 %462
  %464 = load i16, ptr %463, align 2, !tbaa !28
  %465 = icmp ult i16 %459, %464
  br i1 %465, label %479, label %466

466:                                              ; preds = %456
  %467 = icmp eq i16 %459, %464
  br i1 %467, label %468, label %473

468:                                              ; preds = %466
  %469 = load i8, ptr %416, align 1, !tbaa !28
  %470 = getelementptr inbounds i8, ptr %233, i64 %462
  %471 = load i8, ptr %470, align 1, !tbaa !28
  %472 = icmp ugt i8 %469, %471
  br i1 %472, label %473, label %479

473:                                              ; preds = %468, %466
  %474 = sext i32 %428 to i64
  %475 = getelementptr inbounds [4 x i8], ptr %232, i64 %474
  store i32 %461, ptr %475, align 4, !tbaa !4
  %476 = shl i32 %458, 1
  %477 = load i32, ptr %164, align 4, !tbaa !47
  %478 = icmp sgt i32 %476, %477
  br i1 %478, label %479, label %.preheader320, !llvm.loop !54

479:                                              ; preds = %473, %468, %456
  %480 = phi i32 [ %428, %456 ], [ %428, %468 ], [ %458, %473 ]
  %481 = sext i32 %480 to i64
  br label %482

482:                                              ; preds = %479, %422
  %483 = phi i64 [ 1, %422 ], [ %481, %479 ]
  %484 = getelementptr inbounds [4 x i8], ptr %232, i64 %483
  store i32 %417, ptr %484, align 4, !tbaa !4
  %485 = load i32, ptr %164, align 4, !tbaa !47
  %486 = icmp sgt i32 %485, 1
  br i1 %486, label %311, label %487, !llvm.loop !56

487:                                              ; preds = %482
  %488 = load i32, ptr %165, align 8, !tbaa !48
  %489 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %488, i32 -1)
  %490 = extractvalue { i32, i1 } %489, 1, !nosanitize !30
  br i1 %490, label %.loopexit321, label %491, !prof !33, !nosanitize !30

491:                                              ; preds = %487
  %492 = extractvalue { i32, i1 } %489, 0, !nosanitize !30
  %493 = load i32, ptr %238, align 4, !tbaa !4
  store i32 %492, ptr %165, align 8, !tbaa !48
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds [4 x i8], ptr %232, i64 %494
  store i32 %493, ptr %495, align 4, !tbaa !4
  %496 = load ptr, ptr %157, align 8, !tbaa !41
  %497 = load i32, ptr %231, align 8, !tbaa !53
  %498 = load ptr, ptr %159, align 8, !tbaa !42
  %499 = load ptr, ptr %498, align 8, !tbaa !43
  %500 = getelementptr inbounds nuw i8, ptr %498, i64 8
  %501 = load ptr, ptr %500, align 8, !tbaa !57
  %502 = getelementptr inbounds nuw i8, ptr %498, i64 16
  %503 = load i32, ptr %502, align 8, !tbaa !58
  %504 = getelementptr inbounds nuw i8, ptr %498, i64 24
  %505 = load i32, ptr %504, align 8, !tbaa !59
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %506, i8 0, i64 32, i1 false), !tbaa !60
  %507 = load i32, ptr %165, align 8, !tbaa !48
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [4 x i8], ptr %232, i64 %508
  %510 = load i32, ptr %509, align 4, !tbaa !4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [4 x i8], ptr %496, i64 %511
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 2
  store i16 0, ptr %513, align 2, !tbaa !28
  %514 = load i32, ptr %165, align 8, !tbaa !48
  %515 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %514, i32 1), !nosanitize !30
  %516 = extractvalue { i32, i1 } %515, 1, !nosanitize !30
  br i1 %516, label %.loopexit316, label %517, !prof !33, !nosanitize !30

.loopexit316:                                     ; preds = %577, %565, %541, %612, %491
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

517:                                              ; preds = %491
  %518 = extractvalue { i32, i1 } %515, 0
  %519 = icmp slt i32 %518, 573
  br i1 %519, label %520, label %.loopexit313

520:                                              ; preds = %517
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %522 = icmp eq ptr %499, null
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %524 = sext i32 %518 to i64
  br label %525

525:                                              ; preds = %590, %520
  %526 = phi i64 [ %524, %520 ], [ %591, %590 ]
  %527 = phi i32 [ 0, %520 ], [ %548, %590 ]
  %528 = getelementptr inbounds [4 x i8], ptr %232, i64 %526
  %529 = load i32, ptr %528, align 4, !tbaa !4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds [4 x i8], ptr %496, i64 %530
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 2
  %533 = load i16, ptr %532, align 2, !tbaa !28
  %534 = zext i16 %533 to i64
  %535 = getelementptr inbounds nuw [4 x i8], ptr %496, i64 %534
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 2
  %537 = load i16, ptr %536, align 2, !tbaa !28
  %538 = zext i16 %537 to i32
  %539 = add nuw nsw i32 %538, 1
  %540 = icmp sgt i32 %505, %538
  br i1 %540, label %546, label %541

541:                                              ; preds = %525
  %542 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %527, i32 1), !nosanitize !30
  %543 = extractvalue { i32, i1 } %542, 1, !nosanitize !30
  br i1 %543, label %.loopexit316, label %544, !prof !33, !nosanitize !30

544:                                              ; preds = %541
  %545 = extractvalue { i32, i1 } %542, 0, !nosanitize !30
  br label %546

546:                                              ; preds = %544, %525
  %547 = phi i32 [ %505, %544 ], [ %539, %525 ]
  %548 = phi i32 [ %545, %544 ], [ %527, %525 ]
  %549 = trunc i32 %547 to i16
  store i16 %549, ptr %532, align 2, !tbaa !28
  %550 = icmp sgt i32 %529, %497
  br i1 %550, label %590, label %551

551:                                              ; preds = %546
  %552 = sext i32 %547 to i64
  %553 = getelementptr inbounds [2 x i8], ptr %506, i64 %552
  %554 = load i16, ptr %553, align 2, !tbaa !60
  %555 = add i16 %554, 1
  store i16 %555, ptr %553, align 2, !tbaa !60
  %556 = icmp slt i32 %529, %503
  br i1 %556, label %565, label %557

557:                                              ; preds = %551
  %558 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %529, i32 %503), !nosanitize !30
  %559 = extractvalue { i32, i1 } %558, 1, !nosanitize !30
  br i1 %559, label %.loopexit308, label %560, !prof !33, !nosanitize !30

.loopexit308:                                     ; preds = %557, %617, %609, %.loopexit310, %643, %648, %596
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

560:                                              ; preds = %557
  %561 = extractvalue { i32, i1 } %558, 0, !nosanitize !30
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [4 x i8], ptr %501, i64 %562
  %564 = load i32, ptr %563, align 4, !tbaa !4
  br label %565

565:                                              ; preds = %560, %551
  %566 = phi i32 [ %564, %560 ], [ 0, %551 ]
  %567 = load i16, ptr %531, align 2, !tbaa !28
  %568 = zext i16 %567 to i64
  %569 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %547, i32 %566), !nosanitize !30
  %570 = extractvalue { i32, i1 } %569, 1, !nosanitize !30
  br i1 %570, label %.loopexit316, label %571, !prof !33, !nosanitize !30

571:                                              ; preds = %565
  %572 = extractvalue { i32, i1 } %569, 0, !nosanitize !30
  %573 = zext i32 %572 to i64
  %574 = mul nuw nsw i64 %573, %568
  %575 = load i64, ptr %521, align 8, !tbaa !50
  %576 = add i64 %575, %574
  store i64 %576, ptr %521, align 8, !tbaa !50
  br i1 %522, label %590, label %577

577:                                              ; preds = %571
  %578 = getelementptr inbounds [4 x i8], ptr %499, i64 %530
  %579 = getelementptr inbounds nuw i8, ptr %578, i64 2
  %580 = load i16, ptr %579, align 2, !tbaa !28
  %581 = zext i16 %580 to i32
  %582 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %581, i32 %566), !nosanitize !30
  %583 = extractvalue { i32, i1 } %582, 1, !nosanitize !30
  br i1 %583, label %.loopexit316, label %584, !prof !33, !nosanitize !30

584:                                              ; preds = %577
  %585 = extractvalue { i32, i1 } %582, 0, !nosanitize !30
  %586 = zext i32 %585 to i64
  %587 = mul nuw nsw i64 %586, %568
  %588 = load i64, ptr %523, align 8, !tbaa !51
  %589 = add i64 %588, %587
  store i64 %589, ptr %523, align 8, !tbaa !51
  br label %590

590:                                              ; preds = %584, %571, %546
  %591 = add nsw i64 %526, 1
  %592 = and i64 %591, 4294967295
  %593 = icmp eq i64 %592, 573
  br i1 %593, label %594, label %525, !llvm.loop !61

594:                                              ; preds = %590
  %595 = icmp eq i32 %548, 0
  br i1 %595, label %.loopexit313, label %596

596:                                              ; preds = %594
  %597 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %505, i32 -1)
  %598 = extractvalue { i32, i1 } %597, 1, !nosanitize !30
  %599 = sext i32 %505 to i64
  %600 = getelementptr inbounds [2 x i8], ptr %506, i64 %599
  br i1 %598, label %.loopexit308, label %.preheader315, !prof !33, !nosanitize !30

.preheader315:                                    ; preds = %596, %627
  %601 = phi i32 [ %628, %627 ], [ %548, %596 ]
  br label %602

602:                                              ; preds = %609, %.preheader315
  %603 = phi { i32, i1 } [ %610, %609 ], [ %597, %.preheader315 ]
  %604 = extractvalue { i32, i1 } %603, 0
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [2 x i8], ptr %506, i64 %605
  %607 = load i16, ptr %606, align 2, !tbaa !60
  %608 = icmp eq i16 %607, 0
  br i1 %608, label %609, label %612

609:                                              ; preds = %602
  %610 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %604, i32 -1)
  %611 = extractvalue { i32, i1 } %610, 1, !nosanitize !30
  br i1 %611, label %.loopexit308, label %602, !prof !33, !llvm.loop !62, !nosanitize !30

612:                                              ; preds = %602
  %613 = getelementptr inbounds [2 x i8], ptr %506, i64 %605
  %614 = add i16 %607, -1
  store i16 %614, ptr %613, align 2, !tbaa !60
  %615 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %604, i32 1), !nosanitize !30
  %616 = extractvalue { i32, i1 } %615, 1, !nosanitize !30
  br i1 %616, label %.loopexit316, label %617, !prof !33, !nosanitize !30

617:                                              ; preds = %612
  %618 = extractvalue { i32, i1 } %615, 0, !nosanitize !30
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [2 x i8], ptr %506, i64 %619
  %621 = load i16, ptr %620, align 2, !tbaa !60
  %622 = add i16 %621, 2
  store i16 %622, ptr %620, align 2, !tbaa !60
  %623 = load i16, ptr %600, align 2, !tbaa !60
  %624 = add i16 %623, -1
  store i16 %624, ptr %600, align 2, !tbaa !60
  %625 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %601, i32 -2)
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !30
  br i1 %626, label %.loopexit308, label %627, !prof !33, !nosanitize !30

627:                                              ; preds = %617
  %628 = extractvalue { i32, i1 } %625, 0, !nosanitize !30
  %629 = icmp sgt i32 %628, 0
  br i1 %629, label %.preheader315, label %630, !llvm.loop !63

630:                                              ; preds = %627
  %631 = icmp eq i32 %505, 0
  br i1 %631, label %.loopexit313, label %.preheader311

.preheader311:                                    ; preds = %630, %674
  %632 = phi i64 [ %675, %674 ], [ %599, %630 ]
  %633 = phi i32 [ %640, %674 ], [ 573, %630 ]
  %634 = getelementptr inbounds [2 x i8], ptr %506, i64 %632
  %635 = load i16, ptr %634, align 2, !tbaa !60
  %636 = icmp eq i16 %635, 0
  br i1 %636, label %.loopexit310, label %637

637:                                              ; preds = %.preheader311
  %638 = zext i16 %635 to i32
  %639 = trunc i64 %632 to i16
  br label %643

.loopexit310:                                     ; preds = %671, %.preheader311
  %640 = phi i32 [ %633, %.preheader311 ], [ %652, %671 ]
  %641 = and i64 %632, 4294967295
  %642 = icmp eq i64 %641, 2147483648
  br i1 %642, label %.loopexit308, label %674, !prof !33, !nosanitize !30

643:                                              ; preds = %671, %637
  %644 = phi i32 [ %633, %637 ], [ %652, %671 ]
  %645 = phi i32 [ %638, %637 ], [ %672, %671 ]
  %646 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %644, i32 -1)
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !30
  br i1 %647, label %.loopexit308, label %.preheader307, !prof !64, !nosanitize !30

648:                                              ; preds = %.preheader307
  %649 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %652, i32 -1)
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !30
  br i1 %650, label %.loopexit308, label %.preheader307, !prof !65, !llvm.loop !66, !nosanitize !30

.preheader307:                                    ; preds = %643, %648
  %651 = phi { i32, i1 } [ %649, %648 ], [ %646, %643 ]
  %652 = extractvalue { i32, i1 } %651, 0, !nosanitize !30
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [4 x i8], ptr %232, i64 %653
  %655 = load i32, ptr %654, align 4, !tbaa !4
  %656 = icmp sgt i32 %655, %497
  br i1 %656, label %648, label %657, !llvm.loop !66

657:                                              ; preds = %.preheader307
  %658 = sext i32 %655 to i64
  %659 = getelementptr inbounds [4 x i8], ptr %496, i64 %658
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 2
  %661 = load i16, ptr %660, align 2, !tbaa !28
  %662 = zext i16 %661 to i64
  %663 = icmp eq i64 %632, %662
  br i1 %663, label %671, label %664

664:                                              ; preds = %657
  %665 = sub nsw i64 %632, %662
  %666 = load i16, ptr %659, align 2, !tbaa !28
  %667 = zext i16 %666 to i64
  %668 = mul nsw i64 %665, %667
  %669 = load i64, ptr %521, align 8, !tbaa !50
  %670 = add i64 %668, %669
  store i64 %670, ptr %521, align 8, !tbaa !50
  store i16 %639, ptr %660, align 2, !tbaa !28
  br label %671

671:                                              ; preds = %664, %657
  %672 = add nsw i32 %645, -1
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %.loopexit310, label %643, !llvm.loop !66

674:                                              ; preds = %.loopexit310
  %675 = add nsw i64 %632, -1
  %676 = and i64 %675, 4294967295
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %.loopexit313, label %.preheader311, !llvm.loop !67

.loopexit313:                                     ; preds = %674, %630, %594, %517
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %678 = load i16, ptr %506, align 2, !tbaa !60
  %679 = shl i16 %678, 1
  %680 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %679, ptr %680, align 2, !tbaa !60
  %681 = getelementptr i8, ptr %0, i64 2978
  %682 = load i16, ptr %681, align 2, !tbaa !60
  %683 = add i16 %682, %679
  %684 = shl i16 %683, 1
  %685 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %684, ptr %685, align 4, !tbaa !60
  %686 = getelementptr i8, ptr %0, i64 2980
  %687 = load i16, ptr %686, align 2, !tbaa !60
  %688 = add i16 %687, %684
  %689 = shl i16 %688, 1
  %690 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %689, ptr %690, align 2, !tbaa !60
  %691 = getelementptr i8, ptr %0, i64 2982
  %692 = load i16, ptr %691, align 2, !tbaa !60
  %693 = add i16 %692, %689
  %694 = shl i16 %693, 1
  %695 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %694, ptr %695, align 8, !tbaa !60
  %696 = getelementptr i8, ptr %0, i64 2984
  %697 = load i16, ptr %696, align 2, !tbaa !60
  %698 = add i16 %697, %694
  %699 = shl i16 %698, 1
  %700 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %699, ptr %700, align 2, !tbaa !60
  %701 = getelementptr i8, ptr %0, i64 2986
  %702 = load i16, ptr %701, align 2, !tbaa !60
  %703 = add i16 %702, %699
  %704 = shl i16 %703, 1
  %705 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %704, ptr %705, align 4, !tbaa !60
  %706 = getelementptr i8, ptr %0, i64 2988
  %707 = load i16, ptr %706, align 2, !tbaa !60
  %708 = add i16 %707, %704
  %709 = shl i16 %708, 1
  %710 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %709, ptr %710, align 2, !tbaa !60
  %711 = getelementptr i8, ptr %0, i64 2990
  %712 = load i16, ptr %711, align 2, !tbaa !60
  %713 = add i16 %712, %709
  %714 = shl i16 %713, 1
  %715 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %714, ptr %715, align 16, !tbaa !60
  %716 = getelementptr i8, ptr %0, i64 2992
  %717 = load i16, ptr %716, align 2, !tbaa !60
  %718 = add i16 %717, %714
  %719 = shl i16 %718, 1
  %720 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %719, ptr %720, align 2, !tbaa !60
  %721 = getelementptr i8, ptr %0, i64 2994
  %722 = load i16, ptr %721, align 2, !tbaa !60
  %723 = add i16 %722, %719
  %724 = shl i16 %723, 1
  %725 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %724, ptr %725, align 4, !tbaa !60
  %726 = getelementptr i8, ptr %0, i64 2996
  %727 = load i16, ptr %726, align 2, !tbaa !60
  %728 = add i16 %727, %724
  %729 = shl i16 %728, 1
  %730 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %729, ptr %730, align 2, !tbaa !60
  %731 = getelementptr i8, ptr %0, i64 2998
  %732 = load i16, ptr %731, align 2, !tbaa !60
  %733 = add i16 %732, %729
  %734 = shl i16 %733, 1
  %735 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %734, ptr %735, align 8, !tbaa !60
  %736 = getelementptr i8, ptr %0, i64 3000
  %737 = load i16, ptr %736, align 2, !tbaa !60
  %738 = add i16 %737, %734
  %739 = shl i16 %738, 1
  %740 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %739, ptr %740, align 2, !tbaa !60
  %741 = getelementptr i8, ptr %0, i64 3002
  %742 = load i16, ptr %741, align 2, !tbaa !60
  %743 = add i16 %742, %739
  %744 = shl i16 %743, 1
  %745 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %744, ptr %745, align 4, !tbaa !60
  %746 = getelementptr i8, ptr %0, i64 3004
  %747 = load i16, ptr %746, align 2, !tbaa !60
  %748 = add i16 %747, %744
  %749 = shl i16 %748, 1
  %750 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %749, ptr %750, align 2, !tbaa !60
  %751 = icmp slt i32 %229, 0
  br i1 %751, label %.loopexit306, label %.preheader305

752:                                              ; preds = %805
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

.preheader305:                                    ; preds = %.loopexit313, %807
  %753 = phi i64 [ %808, %807 ], [ 0, %.loopexit313 ]
  %754 = getelementptr inbounds nuw [4 x i8], ptr %158, i64 %753
  %755 = getelementptr inbounds nuw i8, ptr %754, i64 2
  %756 = load i16, ptr %755, align 2, !tbaa !28
  %757 = icmp eq i16 %756, 0
  br i1 %757, label %805, label %758

758:                                              ; preds = %.preheader305
  %759 = zext i16 %756 to i32
  %760 = zext i16 %756 to i64
  %761 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %760
  %762 = load i16, ptr %761, align 2, !tbaa !60
  %763 = add i16 %762, 1
  store i16 %763, ptr %761, align 2, !tbaa !60
  %764 = and i32 %759, 3
  %765 = icmp ult i16 %756, 4
  br i1 %765, label %790, label %766

766:                                              ; preds = %758
  %767 = and i32 %759, 65532
  br label %768

768:                                              ; preds = %768, %766
  %769 = phi i16 [ %762, %766 ], [ %785, %768 ]
  %770 = phi i16 [ 0, %766 ], [ %784, %768 ]
  %771 = phi i32 [ 0, %766 ], [ %786, %768 ]
  %772 = and i16 %769, 1
  %773 = or disjoint i16 %770, %772
  %774 = shl i16 %773, 2
  %775 = and i16 %769, 2
  %776 = or disjoint i16 %774, %775
  %777 = lshr i16 %769, 2
  %778 = and i16 %777, 1
  %779 = or disjoint i16 %776, %778
  %780 = shl i16 %779, 1
  %781 = lshr i16 %769, 3
  %782 = and i16 %781, 1
  %783 = or disjoint i16 %780, %782
  %784 = shl i16 %783, 1
  %785 = lshr i16 %769, 4
  %786 = add nuw nsw i32 %771, 4
  %787 = icmp eq i32 %786, %767
  br i1 %787, label %788, label %768, !llvm.loop !68

788:                                              ; preds = %768
  %789 = icmp eq i32 %764, 0
  br i1 %789, label %.loopexit304, label %790

790:                                              ; preds = %788, %758
  %791 = phi i16 [ %762, %758 ], [ %785, %788 ]
  %792 = phi i16 [ 0, %758 ], [ %784, %788 ]
  %793 = icmp ne i32 %764, 0
  tail call void @llvm.assume(i1 %793)
  br label %794

794:                                              ; preds = %794, %790
  %795 = phi i16 [ %791, %790 ], [ %801, %794 ]
  %796 = phi i16 [ %792, %790 ], [ %800, %794 ]
  %797 = phi i32 [ 0, %790 ], [ %802, %794 ]
  %798 = and i16 %795, 1
  %799 = or disjoint i16 %796, %798
  %800 = shl i16 %799, 1
  %801 = lshr i16 %795, 1
  %802 = add nuw nsw i32 %797, 1
  %803 = icmp eq i32 %802, %764
  br i1 %803, label %.loopexit304, label %794, !llvm.loop !69

.loopexit304:                                     ; preds = %794, %788
  %804 = phi i16 [ %783, %788 ], [ %799, %794 ]
  store i16 %804, ptr %754, align 2, !tbaa !28
  br label %805

805:                                              ; preds = %.loopexit304, %.preheader305
  %806 = icmp eq i64 %753, 2147483647
  br i1 %806, label %752, label %807, !prof !33, !nosanitize !30

807:                                              ; preds = %805
  %808 = add nuw nsw i64 %753, 1
  %809 = trunc i64 %808 to i32
  %810 = icmp slt i32 %229, %809
  br i1 %810, label %.loopexit306, label %.preheader305, !llvm.loop !71

.loopexit306:                                     ; preds = %807, %.loopexit313
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %811 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %812 = load ptr, ptr %811, align 8, !tbaa !41
  %813 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %814 = load ptr, ptr %813, align 8, !tbaa !42
  %815 = load ptr, ptr %814, align 8, !tbaa !43
  %816 = getelementptr inbounds nuw i8, ptr %814, i64 20
  %817 = load i32, ptr %816, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %818 = icmp sgt i32 %817, 0
  br i1 %818, label %819, label %824

819:                                              ; preds = %.loopexit306
  %820 = zext nneg i32 %817 to i64
  br label %830

821:                                              ; preds = %848
  %822 = load i32, ptr %164, align 4, !tbaa !47
  %823 = icmp slt i32 %822, 2
  br i1 %823, label %824, label %.loopexit302

824:                                              ; preds = %821, %.loopexit306
  %825 = phi i32 [ %849, %821 ], [ -1, %.loopexit306 ]
  %826 = phi i32 [ %822, %821 ], [ 0, %.loopexit306 ]
  %827 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %828 = icmp eq ptr %815, null
  %829 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %852

830:                                              ; preds = %848, %819
  %831 = phi i64 [ 0, %819 ], [ %850, %848 ]
  %832 = phi i32 [ -1, %819 ], [ %849, %848 ]
  %833 = getelementptr inbounds nuw [4 x i8], ptr %812, i64 %831
  %834 = load i16, ptr %833, align 2, !tbaa !28
  %835 = icmp eq i16 %834, 0
  br i1 %835, label %846, label %836

836:                                              ; preds = %830
  %837 = load i32, ptr %164, align 4, !tbaa !47
  %838 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %837, i32 1), !nosanitize !30
  %839 = extractvalue { i32, i1 } %838, 1, !nosanitize !30
  br i1 %839, label %.loopexit299, label %840, !prof !33, !nosanitize !30

.loopexit299:                                     ; preds = %836, %1043
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

840:                                              ; preds = %836
  %841 = extractvalue { i32, i1 } %838, 0, !nosanitize !30
  store i32 %841, ptr %164, align 4, !tbaa !47
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds [4 x i8], ptr %232, i64 %842
  %844 = trunc nuw nsw i64 %831 to i32
  store i32 %844, ptr %843, align 4, !tbaa !4
  %845 = getelementptr inbounds nuw i8, ptr %233, i64 %831
  store i8 0, ptr %845, align 1, !tbaa !28
  br label %848

846:                                              ; preds = %830
  %847 = getelementptr inbounds nuw i8, ptr %833, i64 2
  store i16 0, ptr %847, align 2, !tbaa !28
  br label %848

848:                                              ; preds = %846, %840
  %849 = phi i32 [ %844, %840 ], [ %832, %846 ]
  %850 = add nuw nsw i64 %831, 1
  %851 = icmp eq i64 %850, %820
  br i1 %851, label %821, label %830, !llvm.loop !49

852:                                              ; preds = %874, %824
  %853 = phi i32 [ %826, %824 ], [ %875, %874 ]
  %854 = phi i32 [ %825, %824 ], [ %857, %874 ]
  %855 = icmp slt i32 %854, 2
  %856 = add i32 %854, 1
  %857 = select i1 %855, i32 %856, i32 %854
  %858 = add nsw i32 %853, 1
  %859 = select i1 %855, i32 %856, i32 0
  store i32 %858, ptr %164, align 4, !tbaa !47
  %860 = sext i32 %858 to i64
  %861 = getelementptr inbounds [4 x i8], ptr %232, i64 %860
  store i32 %859, ptr %861, align 4, !tbaa !4
  %862 = sext i32 %859 to i64
  %863 = getelementptr inbounds [4 x i8], ptr %812, i64 %862
  store i16 1, ptr %863, align 2, !tbaa !28
  %864 = getelementptr inbounds i8, ptr %233, i64 %862
  store i8 0, ptr %864, align 1, !tbaa !28
  %865 = load i64, ptr %827, align 8, !tbaa !50
  %866 = add i64 %865, -1
  store i64 %866, ptr %827, align 8, !tbaa !50
  br i1 %828, label %874, label %867

867:                                              ; preds = %852
  %868 = getelementptr inbounds [4 x i8], ptr %815, i64 %862
  %869 = getelementptr inbounds nuw i8, ptr %868, i64 2
  %870 = load i16, ptr %869, align 2, !tbaa !28
  %871 = zext i16 %870 to i64
  %872 = load i64, ptr %829, align 8, !tbaa !51
  %873 = sub i64 %872, %871
  store i64 %873, ptr %829, align 8, !tbaa !51
  br label %874

874:                                              ; preds = %867, %852
  %875 = load i32, ptr %164, align 4, !tbaa !47
  %876 = icmp slt i32 %875, 2
  br i1 %876, label %852, label %.loopexit302, !llvm.loop !52

.loopexit302:                                     ; preds = %874, %821
  %877 = phi i32 [ %849, %821 ], [ %857, %874 ]
  %878 = phi i32 [ %822, %821 ], [ %875, %874 ]
  %879 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %877, ptr %879, align 8, !tbaa !53
  %880 = lshr i32 %878, 1
  %881 = zext nneg i32 %880 to i64
  br label %885

882:                                              ; preds = %.loopexit300
  %883 = load i32, ptr %164, align 4, !tbaa !47
  %884 = sext i32 %817 to i64
  br label %956

885:                                              ; preds = %.loopexit300, %.loopexit302
  %886 = phi i64 [ %881, %.loopexit302 ], [ %954, %.loopexit300 ]
  %887 = getelementptr inbounds nuw [4 x i8], ptr %232, i64 %886
  %888 = load i32, ptr %887, align 4, !tbaa !4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds i8, ptr %233, i64 %889
  %891 = load i32, ptr %164, align 4, !tbaa !47
  %892 = trunc i64 %886 to i32
  %893 = shl i32 %892, 1
  %894 = icmp sgt i32 %893, %891
  br i1 %894, label %.loopexit300, label %895

895:                                              ; preds = %885
  %896 = getelementptr inbounds [4 x i8], ptr %812, i64 %889
  br label %897

897:                                              ; preds = %945, %895
  %898 = phi i32 [ %891, %895 ], [ %949, %945 ]
  %899 = phi i32 [ %893, %895 ], [ %948, %945 ]
  %900 = phi i32 [ %892, %895 ], [ %930, %945 ]
  %901 = icmp slt i32 %899, %898
  br i1 %901, label %904, label %902

902:                                              ; preds = %897
  %903 = sext i32 %899 to i64
  br label %928

904:                                              ; preds = %897
  %905 = or disjoint i32 %899, 1
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds [4 x i8], ptr %232, i64 %906
  %908 = load i32, ptr %907, align 4, !tbaa !4
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds [4 x i8], ptr %812, i64 %909
  %911 = load i16, ptr %910, align 2, !tbaa !28
  %912 = sext i32 %899 to i64
  %913 = getelementptr inbounds [4 x i8], ptr %232, i64 %912
  %914 = load i32, ptr %913, align 4, !tbaa !4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds [4 x i8], ptr %812, i64 %915
  %917 = load i16, ptr %916, align 2, !tbaa !28
  %918 = icmp ult i16 %911, %917
  br i1 %918, label %927, label %919

919:                                              ; preds = %904
  %920 = icmp eq i16 %911, %917
  br i1 %920, label %921, label %928

921:                                              ; preds = %919
  %922 = getelementptr inbounds i8, ptr %233, i64 %909
  %923 = load i8, ptr %922, align 1, !tbaa !28
  %924 = getelementptr inbounds i8, ptr %233, i64 %915
  %925 = load i8, ptr %924, align 1, !tbaa !28
  %926 = icmp ugt i8 %923, %925
  br i1 %926, label %928, label %927

927:                                              ; preds = %921, %904
  br label %928

928:                                              ; preds = %927, %921, %919, %902
  %929 = phi i64 [ %903, %902 ], [ %906, %927 ], [ %912, %921 ], [ %912, %919 ]
  %930 = phi i32 [ %899, %902 ], [ %905, %927 ], [ %899, %921 ], [ %899, %919 ]
  %931 = load i16, ptr %896, align 2, !tbaa !28
  %932 = getelementptr inbounds [4 x i8], ptr %232, i64 %929
  %933 = load i32, ptr %932, align 4, !tbaa !4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds [4 x i8], ptr %812, i64 %934
  %936 = load i16, ptr %935, align 2, !tbaa !28
  %937 = icmp ult i16 %931, %936
  br i1 %937, label %.loopexit300, label %938

938:                                              ; preds = %928
  %939 = icmp eq i16 %931, %936
  br i1 %939, label %940, label %945

940:                                              ; preds = %938
  %941 = load i8, ptr %890, align 1, !tbaa !28
  %942 = getelementptr inbounds i8, ptr %233, i64 %934
  %943 = load i8, ptr %942, align 1, !tbaa !28
  %944 = icmp ugt i8 %941, %943
  br i1 %944, label %945, label %.loopexit300

945:                                              ; preds = %940, %938
  %946 = sext i32 %900 to i64
  %947 = getelementptr inbounds [4 x i8], ptr %232, i64 %946
  store i32 %933, ptr %947, align 4, !tbaa !4
  %948 = shl i32 %930, 1
  %949 = load i32, ptr %164, align 4, !tbaa !47
  %950 = icmp sgt i32 %948, %949
  br i1 %950, label %.loopexit300, label %897, !llvm.loop !54

.loopexit300:                                     ; preds = %945, %940, %928, %885
  %951 = phi i32 [ %892, %885 ], [ %930, %945 ], [ %900, %940 ], [ %900, %928 ]
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds [4 x i8], ptr %232, i64 %952
  store i32 %888, ptr %953, align 4, !tbaa !4
  %954 = add nsw i64 %886, -1
  %955 = icmp sgt i64 %886, 1
  br i1 %955, label %885, label %882, !llvm.loop !55

.loopexit298:                                     ; preds = %1036, %1029, %956, %1132
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

956:                                              ; preds = %1127, %882
  %957 = phi i32 [ %883, %882 ], [ %1130, %1127 ]
  %958 = phi i64 [ %884, %882 ], [ %1068, %1127 ]
  %959 = load i32, ptr %238, align 4, !tbaa !4
  %960 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %957, i32 -1)
  %961 = extractvalue { i32, i1 } %960, 1, !nosanitize !30
  br i1 %961, label %.loopexit298, label %962, !prof !33, !nosanitize !30

962:                                              ; preds = %956
  %963 = extractvalue { i32, i1 } %960, 0, !nosanitize !30
  store i32 %963, ptr %164, align 4, !tbaa !47
  %964 = sext i32 %957 to i64
  %965 = getelementptr inbounds [4 x i8], ptr %232, i64 %964
  %966 = load i32, ptr %965, align 4, !tbaa !4
  store i32 %966, ptr %238, align 4, !tbaa !4
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds i8, ptr %233, i64 %967
  %969 = icmp slt i32 %963, 2
  br i1 %969, label %1029, label %970

970:                                              ; preds = %962
  %971 = getelementptr inbounds [4 x i8], ptr %812, i64 %967
  br label %972

972:                                              ; preds = %1020, %970
  %973 = phi i32 [ %963, %970 ], [ %1024, %1020 ]
  %974 = phi i32 [ 2, %970 ], [ %1023, %1020 ]
  %975 = phi i32 [ 1, %970 ], [ %1005, %1020 ]
  %976 = icmp slt i32 %974, %973
  br i1 %976, label %979, label %977

977:                                              ; preds = %972
  %978 = sext i32 %974 to i64
  br label %1003

979:                                              ; preds = %972
  %980 = or disjoint i32 %974, 1
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds [4 x i8], ptr %232, i64 %981
  %983 = load i32, ptr %982, align 4, !tbaa !4
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds [4 x i8], ptr %812, i64 %984
  %986 = load i16, ptr %985, align 2, !tbaa !28
  %987 = sext i32 %974 to i64
  %988 = getelementptr inbounds [4 x i8], ptr %232, i64 %987
  %989 = load i32, ptr %988, align 4, !tbaa !4
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds [4 x i8], ptr %812, i64 %990
  %992 = load i16, ptr %991, align 2, !tbaa !28
  %993 = icmp ult i16 %986, %992
  br i1 %993, label %1002, label %994

994:                                              ; preds = %979
  %995 = icmp eq i16 %986, %992
  br i1 %995, label %996, label %1003

996:                                              ; preds = %994
  %997 = getelementptr inbounds i8, ptr %233, i64 %984
  %998 = load i8, ptr %997, align 1, !tbaa !28
  %999 = getelementptr inbounds i8, ptr %233, i64 %990
  %1000 = load i8, ptr %999, align 1, !tbaa !28
  %1001 = icmp ugt i8 %998, %1000
  br i1 %1001, label %1003, label %1002

1002:                                             ; preds = %996, %979
  br label %1003

1003:                                             ; preds = %1002, %996, %994, %977
  %1004 = phi i64 [ %978, %977 ], [ %981, %1002 ], [ %987, %996 ], [ %987, %994 ]
  %1005 = phi i32 [ %974, %977 ], [ %980, %1002 ], [ %974, %996 ], [ %974, %994 ]
  %1006 = load i16, ptr %971, align 2, !tbaa !28
  %1007 = getelementptr inbounds [4 x i8], ptr %232, i64 %1004
  %1008 = load i32, ptr %1007, align 4, !tbaa !4
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds [4 x i8], ptr %812, i64 %1009
  %1011 = load i16, ptr %1010, align 2, !tbaa !28
  %1012 = icmp ult i16 %1006, %1011
  br i1 %1012, label %1026, label %1013

1013:                                             ; preds = %1003
  %1014 = icmp eq i16 %1006, %1011
  br i1 %1014, label %1015, label %1020

1015:                                             ; preds = %1013
  %1016 = load i8, ptr %968, align 1, !tbaa !28
  %1017 = getelementptr inbounds i8, ptr %233, i64 %1009
  %1018 = load i8, ptr %1017, align 1, !tbaa !28
  %1019 = icmp ugt i8 %1016, %1018
  br i1 %1019, label %1020, label %1026

1020:                                             ; preds = %1015, %1013
  %1021 = sext i32 %975 to i64
  %1022 = getelementptr inbounds [4 x i8], ptr %232, i64 %1021
  store i32 %1008, ptr %1022, align 4, !tbaa !4
  %1023 = shl i32 %1005, 1
  %1024 = load i32, ptr %164, align 4, !tbaa !47
  %1025 = icmp sgt i32 %1023, %1024
  br i1 %1025, label %1026, label %972, !llvm.loop !54

1026:                                             ; preds = %1020, %1015, %1003
  %1027 = phi i32 [ %975, %1003 ], [ %975, %1015 ], [ %1005, %1020 ]
  %1028 = sext i32 %1027 to i64
  br label %1029

1029:                                             ; preds = %1026, %962
  %1030 = phi i64 [ 1, %962 ], [ %1028, %1026 ]
  %1031 = getelementptr inbounds [4 x i8], ptr %232, i64 %1030
  store i32 %966, ptr %1031, align 4, !tbaa !4
  %1032 = load i32, ptr %238, align 4, !tbaa !4
  %1033 = load i32, ptr %165, align 8, !tbaa !48
  %1034 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1033, i32 -1)
  %1035 = extractvalue { i32, i1 } %1034, 1, !nosanitize !30
  br i1 %1035, label %.loopexit298, label %1036, !prof !33, !nosanitize !30

1036:                                             ; preds = %1029
  %1037 = extractvalue { i32, i1 } %1034, 0, !nosanitize !30
  store i32 %1037, ptr %165, align 8, !tbaa !48
  %1038 = sext i32 %1037 to i64
  %1039 = getelementptr inbounds [4 x i8], ptr %232, i64 %1038
  store i32 %959, ptr %1039, align 4, !tbaa !4
  %1040 = load i32, ptr %165, align 8, !tbaa !48
  %1041 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1040, i32 -1)
  %1042 = extractvalue { i32, i1 } %1041, 1, !nosanitize !30
  br i1 %1042, label %.loopexit298, label %1043, !prof !33, !nosanitize !30

1043:                                             ; preds = %1036
  %1044 = extractvalue { i32, i1 } %1041, 0, !nosanitize !30
  store i32 %1044, ptr %165, align 8, !tbaa !48
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds [4 x i8], ptr %232, i64 %1045
  store i32 %1032, ptr %1046, align 4, !tbaa !4
  %1047 = sext i32 %959 to i64
  %1048 = getelementptr inbounds [4 x i8], ptr %812, i64 %1047
  %1049 = load i16, ptr %1048, align 2, !tbaa !28
  %1050 = sext i32 %1032 to i64
  %1051 = getelementptr inbounds [4 x i8], ptr %812, i64 %1050
  %1052 = load i16, ptr %1051, align 2, !tbaa !28
  %1053 = add i16 %1052, %1049
  %1054 = getelementptr inbounds [4 x i8], ptr %812, i64 %958
  store i16 %1053, ptr %1054, align 2, !tbaa !28
  %1055 = getelementptr inbounds i8, ptr %233, i64 %1047
  %1056 = load i8, ptr %1055, align 1, !tbaa !28
  %1057 = getelementptr inbounds i8, ptr %233, i64 %1050
  %1058 = load i8, ptr %1057, align 1, !tbaa !28
  %1059 = tail call i8 @llvm.umax.i8(i8 %1056, i8 %1058)
  %1060 = add i8 %1059, 1
  %1061 = getelementptr inbounds i8, ptr %233, i64 %958
  store i8 %1060, ptr %1061, align 1, !tbaa !28
  %1062 = trunc nsw i64 %958 to i32
  %1063 = trunc i64 %958 to i16
  %1064 = getelementptr inbounds nuw i8, ptr %1051, i64 2
  store i16 %1063, ptr %1064, align 2, !tbaa !28
  %1065 = getelementptr inbounds nuw i8, ptr %1048, i64 2
  store i16 %1063, ptr %1065, align 2, !tbaa !28
  %1066 = icmp eq i64 %958, 2147483647
  br i1 %1066, label %.loopexit299, label %1067, !prof !33, !nosanitize !30

1067:                                             ; preds = %1043
  %1068 = add nsw i64 %958, 1
  store i32 %1062, ptr %238, align 4, !tbaa !4
  %1069 = load i32, ptr %164, align 4, !tbaa !47
  %1070 = icmp slt i32 %1069, 2
  br i1 %1070, label %1127, label %.preheader297

.preheader297:                                    ; preds = %1067, %1118
  %1071 = phi i32 [ %1122, %1118 ], [ %1069, %1067 ]
  %1072 = phi i32 [ %1121, %1118 ], [ 2, %1067 ]
  %1073 = phi i32 [ %1103, %1118 ], [ 1, %1067 ]
  %1074 = icmp slt i32 %1072, %1071
  br i1 %1074, label %1077, label %1075

1075:                                             ; preds = %.preheader297
  %1076 = sext i32 %1072 to i64
  br label %1101

1077:                                             ; preds = %.preheader297
  %1078 = or disjoint i32 %1072, 1
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds [4 x i8], ptr %232, i64 %1079
  %1081 = load i32, ptr %1080, align 4, !tbaa !4
  %1082 = sext i32 %1081 to i64
  %1083 = getelementptr inbounds [4 x i8], ptr %812, i64 %1082
  %1084 = load i16, ptr %1083, align 2, !tbaa !28
  %1085 = sext i32 %1072 to i64
  %1086 = getelementptr inbounds [4 x i8], ptr %232, i64 %1085
  %1087 = load i32, ptr %1086, align 4, !tbaa !4
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds [4 x i8], ptr %812, i64 %1088
  %1090 = load i16, ptr %1089, align 2, !tbaa !28
  %1091 = icmp ult i16 %1084, %1090
  br i1 %1091, label %1100, label %1092

1092:                                             ; preds = %1077
  %1093 = icmp eq i16 %1084, %1090
  br i1 %1093, label %1094, label %1101

1094:                                             ; preds = %1092
  %1095 = getelementptr inbounds i8, ptr %233, i64 %1082
  %1096 = load i8, ptr %1095, align 1, !tbaa !28
  %1097 = getelementptr inbounds i8, ptr %233, i64 %1088
  %1098 = load i8, ptr %1097, align 1, !tbaa !28
  %1099 = icmp ugt i8 %1096, %1098
  br i1 %1099, label %1101, label %1100

1100:                                             ; preds = %1094, %1077
  br label %1101

1101:                                             ; preds = %1100, %1094, %1092, %1075
  %1102 = phi i64 [ %1076, %1075 ], [ %1079, %1100 ], [ %1085, %1094 ], [ %1085, %1092 ]
  %1103 = phi i32 [ %1072, %1075 ], [ %1078, %1100 ], [ %1072, %1094 ], [ %1072, %1092 ]
  %1104 = load i16, ptr %1054, align 2, !tbaa !28
  %1105 = getelementptr inbounds [4 x i8], ptr %232, i64 %1102
  %1106 = load i32, ptr %1105, align 4, !tbaa !4
  %1107 = sext i32 %1106 to i64
  %1108 = getelementptr inbounds [4 x i8], ptr %812, i64 %1107
  %1109 = load i16, ptr %1108, align 2, !tbaa !28
  %1110 = icmp ult i16 %1104, %1109
  br i1 %1110, label %1124, label %1111

1111:                                             ; preds = %1101
  %1112 = icmp eq i16 %1104, %1109
  br i1 %1112, label %1113, label %1118

1113:                                             ; preds = %1111
  %1114 = load i8, ptr %1061, align 1, !tbaa !28
  %1115 = getelementptr inbounds i8, ptr %233, i64 %1107
  %1116 = load i8, ptr %1115, align 1, !tbaa !28
  %1117 = icmp ugt i8 %1114, %1116
  br i1 %1117, label %1118, label %1124

1118:                                             ; preds = %1113, %1111
  %1119 = sext i32 %1073 to i64
  %1120 = getelementptr inbounds [4 x i8], ptr %232, i64 %1119
  store i32 %1106, ptr %1120, align 4, !tbaa !4
  %1121 = shl i32 %1103, 1
  %1122 = load i32, ptr %164, align 4, !tbaa !47
  %1123 = icmp sgt i32 %1121, %1122
  br i1 %1123, label %1124, label %.preheader297, !llvm.loop !54

1124:                                             ; preds = %1118, %1113, %1101
  %1125 = phi i32 [ %1073, %1101 ], [ %1073, %1113 ], [ %1103, %1118 ]
  %1126 = sext i32 %1125 to i64
  br label %1127

1127:                                             ; preds = %1124, %1067
  %1128 = phi i64 [ 1, %1067 ], [ %1126, %1124 ]
  %1129 = getelementptr inbounds [4 x i8], ptr %232, i64 %1128
  store i32 %1062, ptr %1129, align 4, !tbaa !4
  %1130 = load i32, ptr %164, align 4, !tbaa !47
  %1131 = icmp sgt i32 %1130, 1
  br i1 %1131, label %956, label %1132, !llvm.loop !56

1132:                                             ; preds = %1127
  %1133 = load i32, ptr %165, align 8, !tbaa !48
  %1134 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1133, i32 -1)
  %1135 = extractvalue { i32, i1 } %1134, 1, !nosanitize !30
  br i1 %1135, label %.loopexit298, label %1136, !prof !33, !nosanitize !30

1136:                                             ; preds = %1132
  %1137 = extractvalue { i32, i1 } %1134, 0, !nosanitize !30
  %1138 = load i32, ptr %238, align 4, !tbaa !4
  store i32 %1137, ptr %165, align 8, !tbaa !48
  %1139 = sext i32 %1137 to i64
  %1140 = getelementptr inbounds [4 x i8], ptr %232, i64 %1139
  store i32 %1138, ptr %1140, align 4, !tbaa !4
  %1141 = load ptr, ptr %811, align 8, !tbaa !41
  %1142 = load i32, ptr %879, align 8, !tbaa !53
  %1143 = load ptr, ptr %813, align 8, !tbaa !42
  %1144 = load ptr, ptr %1143, align 8, !tbaa !43
  %1145 = getelementptr inbounds nuw i8, ptr %1143, i64 8
  %1146 = load ptr, ptr %1145, align 8, !tbaa !57
  %1147 = getelementptr inbounds nuw i8, ptr %1143, i64 16
  %1148 = load i32, ptr %1147, align 8, !tbaa !58
  %1149 = getelementptr inbounds nuw i8, ptr %1143, i64 24
  %1150 = load i32, ptr %1149, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %506, i8 0, i64 32, i1 false), !tbaa !60
  %1151 = load i32, ptr %165, align 8, !tbaa !48
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds [4 x i8], ptr %232, i64 %1152
  %1154 = load i32, ptr %1153, align 4, !tbaa !4
  %1155 = sext i32 %1154 to i64
  %1156 = getelementptr inbounds [4 x i8], ptr %1141, i64 %1155
  %1157 = getelementptr inbounds nuw i8, ptr %1156, i64 2
  store i16 0, ptr %1157, align 2, !tbaa !28
  %1158 = load i32, ptr %165, align 8, !tbaa !48
  %1159 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1158, i32 1), !nosanitize !30
  %1160 = extractvalue { i32, i1 } %1159, 1, !nosanitize !30
  br i1 %1160, label %.loopexit293, label %1161, !prof !33, !nosanitize !30

.loopexit293:                                     ; preds = %1221, %1209, %1185, %1256, %1136
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1161:                                             ; preds = %1136
  %1162 = extractvalue { i32, i1 } %1159, 0
  %1163 = icmp slt i32 %1162, 573
  br i1 %1163, label %1164, label %.loopexit290

1164:                                             ; preds = %1161
  %1165 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1166 = icmp eq ptr %1144, null
  %1167 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1168 = sext i32 %1162 to i64
  br label %1169

1169:                                             ; preds = %1234, %1164
  %1170 = phi i64 [ %1168, %1164 ], [ %1235, %1234 ]
  %1171 = phi i32 [ 0, %1164 ], [ %1192, %1234 ]
  %1172 = getelementptr inbounds [4 x i8], ptr %232, i64 %1170
  %1173 = load i32, ptr %1172, align 4, !tbaa !4
  %1174 = sext i32 %1173 to i64
  %1175 = getelementptr inbounds [4 x i8], ptr %1141, i64 %1174
  %1176 = getelementptr inbounds nuw i8, ptr %1175, i64 2
  %1177 = load i16, ptr %1176, align 2, !tbaa !28
  %1178 = zext i16 %1177 to i64
  %1179 = getelementptr inbounds nuw [4 x i8], ptr %1141, i64 %1178
  %1180 = getelementptr inbounds nuw i8, ptr %1179, i64 2
  %1181 = load i16, ptr %1180, align 2, !tbaa !28
  %1182 = zext i16 %1181 to i32
  %1183 = add nuw nsw i32 %1182, 1
  %1184 = icmp sgt i32 %1150, %1182
  br i1 %1184, label %1190, label %1185

1185:                                             ; preds = %1169
  %1186 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1171, i32 1), !nosanitize !30
  %1187 = extractvalue { i32, i1 } %1186, 1, !nosanitize !30
  br i1 %1187, label %.loopexit293, label %1188, !prof !33, !nosanitize !30

1188:                                             ; preds = %1185
  %1189 = extractvalue { i32, i1 } %1186, 0, !nosanitize !30
  br label %1190

1190:                                             ; preds = %1188, %1169
  %1191 = phi i32 [ %1150, %1188 ], [ %1183, %1169 ]
  %1192 = phi i32 [ %1189, %1188 ], [ %1171, %1169 ]
  %1193 = trunc i32 %1191 to i16
  store i16 %1193, ptr %1176, align 2, !tbaa !28
  %1194 = icmp sgt i32 %1173, %1142
  br i1 %1194, label %1234, label %1195

1195:                                             ; preds = %1190
  %1196 = sext i32 %1191 to i64
  %1197 = getelementptr inbounds [2 x i8], ptr %506, i64 %1196
  %1198 = load i16, ptr %1197, align 2, !tbaa !60
  %1199 = add i16 %1198, 1
  store i16 %1199, ptr %1197, align 2, !tbaa !60
  %1200 = icmp slt i32 %1173, %1148
  br i1 %1200, label %1209, label %1201

1201:                                             ; preds = %1195
  %1202 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1173, i32 %1148), !nosanitize !30
  %1203 = extractvalue { i32, i1 } %1202, 1, !nosanitize !30
  br i1 %1203, label %.loopexit285, label %1204, !prof !33, !nosanitize !30

.loopexit285:                                     ; preds = %1201, %1261, %1253, %.loopexit287, %1287, %1292, %1240
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

1204:                                             ; preds = %1201
  %1205 = extractvalue { i32, i1 } %1202, 0, !nosanitize !30
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds [4 x i8], ptr %1146, i64 %1206
  %1208 = load i32, ptr %1207, align 4, !tbaa !4
  br label %1209

1209:                                             ; preds = %1204, %1195
  %1210 = phi i32 [ %1208, %1204 ], [ 0, %1195 ]
  %1211 = load i16, ptr %1175, align 2, !tbaa !28
  %1212 = zext i16 %1211 to i64
  %1213 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1191, i32 %1210), !nosanitize !30
  %1214 = extractvalue { i32, i1 } %1213, 1, !nosanitize !30
  br i1 %1214, label %.loopexit293, label %1215, !prof !33, !nosanitize !30

1215:                                             ; preds = %1209
  %1216 = extractvalue { i32, i1 } %1213, 0, !nosanitize !30
  %1217 = zext i32 %1216 to i64
  %1218 = mul nuw nsw i64 %1217, %1212
  %1219 = load i64, ptr %1165, align 8, !tbaa !50
  %1220 = add i64 %1219, %1218
  store i64 %1220, ptr %1165, align 8, !tbaa !50
  br i1 %1166, label %1234, label %1221

1221:                                             ; preds = %1215
  %1222 = getelementptr inbounds [4 x i8], ptr %1144, i64 %1174
  %1223 = getelementptr inbounds nuw i8, ptr %1222, i64 2
  %1224 = load i16, ptr %1223, align 2, !tbaa !28
  %1225 = zext i16 %1224 to i32
  %1226 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1225, i32 %1210), !nosanitize !30
  %1227 = extractvalue { i32, i1 } %1226, 1, !nosanitize !30
  br i1 %1227, label %.loopexit293, label %1228, !prof !33, !nosanitize !30

1228:                                             ; preds = %1221
  %1229 = extractvalue { i32, i1 } %1226, 0, !nosanitize !30
  %1230 = zext i32 %1229 to i64
  %1231 = mul nuw nsw i64 %1230, %1212
  %1232 = load i64, ptr %1167, align 8, !tbaa !51
  %1233 = add i64 %1232, %1231
  store i64 %1233, ptr %1167, align 8, !tbaa !51
  br label %1234

1234:                                             ; preds = %1228, %1215, %1190
  %1235 = add nsw i64 %1170, 1
  %1236 = and i64 %1235, 4294967295
  %1237 = icmp eq i64 %1236, 573
  br i1 %1237, label %1238, label %1169, !llvm.loop !61

1238:                                             ; preds = %1234
  %1239 = icmp eq i32 %1192, 0
  br i1 %1239, label %.loopexit290, label %1240

1240:                                             ; preds = %1238
  %1241 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1150, i32 -1)
  %1242 = extractvalue { i32, i1 } %1241, 1, !nosanitize !30
  %1243 = sext i32 %1150 to i64
  %1244 = getelementptr inbounds [2 x i8], ptr %506, i64 %1243
  br i1 %1242, label %.loopexit285, label %.preheader292, !prof !33, !nosanitize !30

.preheader292:                                    ; preds = %1240, %1271
  %1245 = phi i32 [ %1272, %1271 ], [ %1192, %1240 ]
  br label %1246

1246:                                             ; preds = %1253, %.preheader292
  %1247 = phi { i32, i1 } [ %1254, %1253 ], [ %1241, %.preheader292 ]
  %1248 = extractvalue { i32, i1 } %1247, 0
  %1249 = sext i32 %1248 to i64
  %1250 = getelementptr inbounds [2 x i8], ptr %506, i64 %1249
  %1251 = load i16, ptr %1250, align 2, !tbaa !60
  %1252 = icmp eq i16 %1251, 0
  br i1 %1252, label %1253, label %1256

1253:                                             ; preds = %1246
  %1254 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1248, i32 -1)
  %1255 = extractvalue { i32, i1 } %1254, 1, !nosanitize !30
  br i1 %1255, label %.loopexit285, label %1246, !prof !33, !llvm.loop !62, !nosanitize !30

1256:                                             ; preds = %1246
  %1257 = getelementptr inbounds [2 x i8], ptr %506, i64 %1249
  %1258 = add i16 %1251, -1
  store i16 %1258, ptr %1257, align 2, !tbaa !60
  %1259 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1248, i32 1), !nosanitize !30
  %1260 = extractvalue { i32, i1 } %1259, 1, !nosanitize !30
  br i1 %1260, label %.loopexit293, label %1261, !prof !33, !nosanitize !30

1261:                                             ; preds = %1256
  %1262 = extractvalue { i32, i1 } %1259, 0, !nosanitize !30
  %1263 = sext i32 %1262 to i64
  %1264 = getelementptr inbounds [2 x i8], ptr %506, i64 %1263
  %1265 = load i16, ptr %1264, align 2, !tbaa !60
  %1266 = add i16 %1265, 2
  store i16 %1266, ptr %1264, align 2, !tbaa !60
  %1267 = load i16, ptr %1244, align 2, !tbaa !60
  %1268 = add i16 %1267, -1
  store i16 %1268, ptr %1244, align 2, !tbaa !60
  %1269 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1245, i32 -2)
  %1270 = extractvalue { i32, i1 } %1269, 1, !nosanitize !30
  br i1 %1270, label %.loopexit285, label %1271, !prof !33, !nosanitize !30

1271:                                             ; preds = %1261
  %1272 = extractvalue { i32, i1 } %1269, 0, !nosanitize !30
  %1273 = icmp sgt i32 %1272, 0
  br i1 %1273, label %.preheader292, label %1274, !llvm.loop !63

1274:                                             ; preds = %1271
  %1275 = icmp eq i32 %1150, 0
  br i1 %1275, label %.loopexit290, label %.preheader288

.preheader288:                                    ; preds = %1274, %1318
  %1276 = phi i64 [ %1319, %1318 ], [ %1243, %1274 ]
  %1277 = phi i32 [ %1284, %1318 ], [ 573, %1274 ]
  %1278 = getelementptr inbounds [2 x i8], ptr %506, i64 %1276
  %1279 = load i16, ptr %1278, align 2, !tbaa !60
  %1280 = icmp eq i16 %1279, 0
  br i1 %1280, label %.loopexit287, label %1281

1281:                                             ; preds = %.preheader288
  %1282 = zext i16 %1279 to i32
  %1283 = trunc i64 %1276 to i16
  br label %1287

.loopexit287:                                     ; preds = %1315, %.preheader288
  %1284 = phi i32 [ %1277, %.preheader288 ], [ %1296, %1315 ]
  %1285 = and i64 %1276, 4294967295
  %1286 = icmp eq i64 %1285, 2147483648
  br i1 %1286, label %.loopexit285, label %1318, !prof !33, !nosanitize !30

1287:                                             ; preds = %1315, %1281
  %1288 = phi i32 [ %1277, %1281 ], [ %1296, %1315 ]
  %1289 = phi i32 [ %1282, %1281 ], [ %1316, %1315 ]
  %1290 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1288, i32 -1)
  %1291 = extractvalue { i32, i1 } %1290, 1, !nosanitize !30
  br i1 %1291, label %.loopexit285, label %.preheader284, !prof !64, !nosanitize !30

1292:                                             ; preds = %.preheader284
  %1293 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1296, i32 -1)
  %1294 = extractvalue { i32, i1 } %1293, 1, !nosanitize !30
  br i1 %1294, label %.loopexit285, label %.preheader284, !prof !65, !llvm.loop !66, !nosanitize !30

.preheader284:                                    ; preds = %1287, %1292
  %1295 = phi { i32, i1 } [ %1293, %1292 ], [ %1290, %1287 ]
  %1296 = extractvalue { i32, i1 } %1295, 0, !nosanitize !30
  %1297 = sext i32 %1296 to i64
  %1298 = getelementptr inbounds [4 x i8], ptr %232, i64 %1297
  %1299 = load i32, ptr %1298, align 4, !tbaa !4
  %1300 = icmp sgt i32 %1299, %1142
  br i1 %1300, label %1292, label %1301, !llvm.loop !66

1301:                                             ; preds = %.preheader284
  %1302 = sext i32 %1299 to i64
  %1303 = getelementptr inbounds [4 x i8], ptr %1141, i64 %1302
  %1304 = getelementptr inbounds nuw i8, ptr %1303, i64 2
  %1305 = load i16, ptr %1304, align 2, !tbaa !28
  %1306 = zext i16 %1305 to i64
  %1307 = icmp eq i64 %1276, %1306
  br i1 %1307, label %1315, label %1308

1308:                                             ; preds = %1301
  %1309 = sub nsw i64 %1276, %1306
  %1310 = load i16, ptr %1303, align 2, !tbaa !28
  %1311 = zext i16 %1310 to i64
  %1312 = mul nsw i64 %1309, %1311
  %1313 = load i64, ptr %1165, align 8, !tbaa !50
  %1314 = add i64 %1312, %1313
  store i64 %1314, ptr %1165, align 8, !tbaa !50
  store i16 %1283, ptr %1304, align 2, !tbaa !28
  br label %1315

1315:                                             ; preds = %1308, %1301
  %1316 = add nsw i32 %1289, -1
  %1317 = icmp eq i32 %1316, 0
  br i1 %1317, label %.loopexit287, label %1287, !llvm.loop !66

1318:                                             ; preds = %.loopexit287
  %1319 = add nsw i64 %1276, -1
  %1320 = and i64 %1319, 4294967295
  %1321 = icmp eq i64 %1320, 0
  br i1 %1321, label %.loopexit290, label %.preheader288, !llvm.loop !67

.loopexit290:                                     ; preds = %1318, %1274, %1238, %1161
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %1322 = load i16, ptr %506, align 2, !tbaa !60
  %1323 = shl i16 %1322, 1
  %1324 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1323, ptr %1324, align 2, !tbaa !60
  %1325 = load i16, ptr %681, align 2, !tbaa !60
  %1326 = add i16 %1325, %1323
  %1327 = shl i16 %1326, 1
  %1328 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1327, ptr %1328, align 4, !tbaa !60
  %1329 = load i16, ptr %686, align 2, !tbaa !60
  %1330 = add i16 %1329, %1327
  %1331 = shl i16 %1330, 1
  %1332 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1331, ptr %1332, align 2, !tbaa !60
  %1333 = load i16, ptr %691, align 2, !tbaa !60
  %1334 = add i16 %1333, %1331
  %1335 = shl i16 %1334, 1
  %1336 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1335, ptr %1336, align 8, !tbaa !60
  %1337 = load i16, ptr %696, align 2, !tbaa !60
  %1338 = add i16 %1337, %1335
  %1339 = shl i16 %1338, 1
  %1340 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1339, ptr %1340, align 2, !tbaa !60
  %1341 = load i16, ptr %701, align 2, !tbaa !60
  %1342 = add i16 %1341, %1339
  %1343 = shl i16 %1342, 1
  %1344 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1343, ptr %1344, align 4, !tbaa !60
  %1345 = load i16, ptr %706, align 2, !tbaa !60
  %1346 = add i16 %1345, %1343
  %1347 = shl i16 %1346, 1
  %1348 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1347, ptr %1348, align 2, !tbaa !60
  %1349 = load i16, ptr %711, align 2, !tbaa !60
  %1350 = add i16 %1349, %1347
  %1351 = shl i16 %1350, 1
  %1352 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1351, ptr %1352, align 16, !tbaa !60
  %1353 = load i16, ptr %716, align 2, !tbaa !60
  %1354 = add i16 %1353, %1351
  %1355 = shl i16 %1354, 1
  %1356 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1355, ptr %1356, align 2, !tbaa !60
  %1357 = load i16, ptr %721, align 2, !tbaa !60
  %1358 = add i16 %1357, %1355
  %1359 = shl i16 %1358, 1
  %1360 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1359, ptr %1360, align 4, !tbaa !60
  %1361 = load i16, ptr %726, align 2, !tbaa !60
  %1362 = add i16 %1361, %1359
  %1363 = shl i16 %1362, 1
  %1364 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1363, ptr %1364, align 2, !tbaa !60
  %1365 = load i16, ptr %731, align 2, !tbaa !60
  %1366 = add i16 %1365, %1363
  %1367 = shl i16 %1366, 1
  %1368 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1367, ptr %1368, align 8, !tbaa !60
  %1369 = load i16, ptr %736, align 2, !tbaa !60
  %1370 = add i16 %1369, %1367
  %1371 = shl i16 %1370, 1
  %1372 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1371, ptr %1372, align 2, !tbaa !60
  %1373 = load i16, ptr %741, align 2, !tbaa !60
  %1374 = add i16 %1373, %1371
  %1375 = shl i16 %1374, 1
  %1376 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1375, ptr %1376, align 4, !tbaa !60
  %1377 = load i16, ptr %746, align 2, !tbaa !60
  %1378 = add i16 %1377, %1375
  %1379 = shl i16 %1378, 1
  %1380 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1379, ptr %1380, align 2, !tbaa !60
  %1381 = icmp slt i32 %877, 0
  br i1 %1381, label %.loopexit283, label %.preheader282

1382:                                             ; preds = %1435
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

.preheader282:                                    ; preds = %.loopexit290, %1437
  %1383 = phi i64 [ %1438, %1437 ], [ 0, %.loopexit290 ]
  %1384 = getelementptr inbounds nuw [4 x i8], ptr %812, i64 %1383
  %1385 = getelementptr inbounds nuw i8, ptr %1384, i64 2
  %1386 = load i16, ptr %1385, align 2, !tbaa !28
  %1387 = icmp eq i16 %1386, 0
  br i1 %1387, label %1435, label %1388

1388:                                             ; preds = %.preheader282
  %1389 = zext i16 %1386 to i32
  %1390 = zext i16 %1386 to i64
  %1391 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %1390
  %1392 = load i16, ptr %1391, align 2, !tbaa !60
  %1393 = add i16 %1392, 1
  store i16 %1393, ptr %1391, align 2, !tbaa !60
  %1394 = and i32 %1389, 3
  %1395 = icmp ult i16 %1386, 4
  br i1 %1395, label %1420, label %1396

1396:                                             ; preds = %1388
  %1397 = and i32 %1389, 65532
  br label %1398

1398:                                             ; preds = %1398, %1396
  %1399 = phi i16 [ %1392, %1396 ], [ %1415, %1398 ]
  %1400 = phi i16 [ 0, %1396 ], [ %1414, %1398 ]
  %1401 = phi i32 [ 0, %1396 ], [ %1416, %1398 ]
  %1402 = and i16 %1399, 1
  %1403 = or disjoint i16 %1400, %1402
  %1404 = shl i16 %1403, 2
  %1405 = and i16 %1399, 2
  %1406 = or disjoint i16 %1404, %1405
  %1407 = lshr i16 %1399, 2
  %1408 = and i16 %1407, 1
  %1409 = or disjoint i16 %1406, %1408
  %1410 = shl i16 %1409, 1
  %1411 = lshr i16 %1399, 3
  %1412 = and i16 %1411, 1
  %1413 = or disjoint i16 %1410, %1412
  %1414 = shl i16 %1413, 1
  %1415 = lshr i16 %1399, 4
  %1416 = add nuw nsw i32 %1401, 4
  %1417 = icmp eq i32 %1416, %1397
  br i1 %1417, label %1418, label %1398, !llvm.loop !68

1418:                                             ; preds = %1398
  %1419 = icmp eq i32 %1394, 0
  br i1 %1419, label %.loopexit281, label %1420

1420:                                             ; preds = %1418, %1388
  %1421 = phi i16 [ %1392, %1388 ], [ %1415, %1418 ]
  %1422 = phi i16 [ 0, %1388 ], [ %1414, %1418 ]
  %1423 = icmp ne i32 %1394, 0
  tail call void @llvm.assume(i1 %1423)
  br label %1424

1424:                                             ; preds = %1424, %1420
  %1425 = phi i16 [ %1421, %1420 ], [ %1431, %1424 ]
  %1426 = phi i16 [ %1422, %1420 ], [ %1430, %1424 ]
  %1427 = phi i32 [ 0, %1420 ], [ %1432, %1424 ]
  %1428 = and i16 %1425, 1
  %1429 = or disjoint i16 %1426, %1428
  %1430 = shl i16 %1429, 1
  %1431 = lshr i16 %1425, 1
  %1432 = add nuw nsw i32 %1427, 1
  %1433 = icmp eq i32 %1432, %1394
  br i1 %1433, label %.loopexit281, label %1424, !llvm.loop !72

.loopexit281:                                     ; preds = %1424, %1418
  %1434 = phi i16 [ %1413, %1418 ], [ %1429, %1424 ]
  store i16 %1434, ptr %1384, align 2, !tbaa !28
  br label %1435

1435:                                             ; preds = %.loopexit281, %.preheader282
  %1436 = icmp eq i64 %1383, 2147483647
  br i1 %1436, label %1382, label %1437, !prof !33, !nosanitize !30

1437:                                             ; preds = %1435
  %1438 = add nuw nsw i64 %1383, 1
  %1439 = trunc i64 %1438 to i32
  %1440 = icmp slt i32 %877, %1439
  br i1 %1440, label %.loopexit283, label %.preheader282, !llvm.loop !71

.loopexit283:                                     ; preds = %1437, %.loopexit290
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %1441 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1442 = load i32, ptr %231, align 8, !tbaa !73
  %1443 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1442, i32 1), !nosanitize !30
  %1444 = extractvalue { i32, i1 } %1443, 1, !nosanitize !30
  br i1 %1444, label %.loopexit280, label %1445, !prof !33, !nosanitize !30

.loopexit280:                                     ; preds = %1463, %.loopexit283
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1445:                                             ; preds = %.loopexit283
  %1446 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %1447 = load i16, ptr %1446, align 2, !tbaa !28
  %1448 = extractvalue { i32, i1 } %1443, 0, !nosanitize !30
  %1449 = sext i32 %1448 to i64
  %1450 = getelementptr inbounds [4 x i8], ptr %1441, i64 %1449
  %1451 = getelementptr inbounds nuw i8, ptr %1450, i64 2
  store i16 -1, ptr %1451, align 2, !tbaa !28
  %1452 = icmp slt i32 %1442, 0
  br i1 %1452, label %.loopexit279, label %1453

1453:                                             ; preds = %1445
  %1454 = zext i16 %1447 to i32
  %1455 = icmp eq i16 %1447, 0
  %1456 = select i1 %1455, i32 138, i32 7
  %1457 = select i1 %1455, i32 3, i32 4
  %1458 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1459 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1460 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1461 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1462 = add nuw nsw i32 %1442, 1
  %wide.trip.count = zext nneg i32 %1462 to i64
  br label %1464

1463:                                             ; preds = %1511
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond502 = icmp eq i64 %indvars.iv.next, 2147483648
  br i1 %exitcond502, label %.loopexit280, label %1464, !prof !74, !llvm.loop !75, !nosanitize !30

1464:                                             ; preds = %1463, %1453
  %indvars.iv = phi i64 [ %indvars.iv.next, %1463 ], [ 1, %1453 ]
  %1465 = phi i32 [ %1512, %1463 ], [ -1, %1453 ]
  %1466 = phi i32 [ %1473, %1463 ], [ %1454, %1453 ]
  %1467 = phi i32 [ %1513, %1463 ], [ 0, %1453 ]
  %1468 = phi i32 [ %1514, %1463 ], [ %1456, %1453 ]
  %1469 = phi i32 [ %1515, %1463 ], [ %1457, %1453 ]
  %1470 = getelementptr inbounds nuw [4 x i8], ptr %1441, i64 %indvars.iv
  %1471 = getelementptr inbounds nuw i8, ptr %1470, i64 2
  %1472 = load i16, ptr %1471, align 2, !tbaa !28
  %1473 = zext i16 %1472 to i32
  %1474 = add nsw i32 %1467, 1
  %1475 = icmp slt i32 %1474, %1468
  %1476 = icmp eq i32 %1466, %1473
  %1477 = select i1 %1475, i1 %1476, i1 false
  br i1 %1477, label %1511, label %1478

1478:                                             ; preds = %1464
  %1479 = icmp slt i32 %1474, %1469
  br i1 %1479, label %1480, label %1486

1480:                                             ; preds = %1478
  %1481 = zext nneg i32 %1466 to i64
  %1482 = getelementptr inbounds nuw [4 x i8], ptr %1458, i64 %1481
  %1483 = load i16, ptr %1482, align 4, !tbaa !28
  %1484 = trunc i32 %1474 to i16
  %1485 = add i16 %1483, %1484
  store i16 %1485, ptr %1482, align 4, !tbaa !28
  br label %1506

1486:                                             ; preds = %1478
  %1487 = icmp eq i32 %1466, 0
  br i1 %1487, label %1498, label %1488

1488:                                             ; preds = %1486
  %1489 = icmp eq i32 %1466, %1465
  br i1 %1489, label %1495, label %1490

1490:                                             ; preds = %1488
  %1491 = zext nneg i32 %1466 to i64
  %1492 = getelementptr inbounds nuw [4 x i8], ptr %1458, i64 %1491
  %1493 = load i16, ptr %1492, align 4, !tbaa !28
  %1494 = add i16 %1493, 1
  store i16 %1494, ptr %1492, align 4, !tbaa !28
  br label %1495

1495:                                             ; preds = %1490, %1488
  %1496 = load i16, ptr %1459, align 4, !tbaa !28
  %1497 = add i16 %1496, 1
  store i16 %1497, ptr %1459, align 4, !tbaa !28
  br label %1506

1498:                                             ; preds = %1486
  %1499 = icmp slt i32 %1467, 10
  br i1 %1499, label %1500, label %1503

1500:                                             ; preds = %1498
  %1501 = load i16, ptr %1461, align 4, !tbaa !28
  %1502 = add i16 %1501, 1
  store i16 %1502, ptr %1461, align 4, !tbaa !28
  br label %1506

1503:                                             ; preds = %1498
  %1504 = load i16, ptr %1460, align 4, !tbaa !28
  %1505 = add i16 %1504, 1
  store i16 %1505, ptr %1460, align 4, !tbaa !28
  br label %1506

1506:                                             ; preds = %1503, %1500, %1495, %1480
  %1507 = icmp eq i16 %1472, 0
  br i1 %1507, label %1511, label %1508

1508:                                             ; preds = %1506
  %1509 = select i1 %1476, i32 6, i32 7
  %1510 = select i1 %1476, i32 3, i32 4
  br label %1511

1511:                                             ; preds = %1508, %1506, %1464
  %1512 = phi i32 [ %1465, %1464 ], [ %1466, %1506 ], [ %1466, %1508 ]
  %1513 = phi i32 [ %1474, %1464 ], [ 0, %1506 ], [ 0, %1508 ]
  %1514 = phi i32 [ %1468, %1464 ], [ 138, %1506 ], [ %1509, %1508 ]
  %1515 = phi i32 [ %1469, %1464 ], [ 3, %1506 ], [ %1510, %1508 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %.loopexit279, label %1463, !llvm.loop !75

.loopexit279:                                     ; preds = %1511, %1445
  %1516 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %1517 = load i32, ptr %879, align 8, !tbaa !76
  %1518 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1517, i32 1), !nosanitize !30
  %1519 = extractvalue { i32, i1 } %1518, 1, !nosanitize !30
  br i1 %1519, label %.loopexit278, label %1520, !prof !33, !nosanitize !30

.loopexit278:                                     ; preds = %1538, %.loopexit279
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1520:                                             ; preds = %.loopexit279
  %1521 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %1522 = load i16, ptr %1521, align 2, !tbaa !28
  %1523 = extractvalue { i32, i1 } %1518, 0, !nosanitize !30
  %1524 = sext i32 %1523 to i64
  %1525 = getelementptr inbounds [4 x i8], ptr %1516, i64 %1524
  %1526 = getelementptr inbounds nuw i8, ptr %1525, i64 2
  store i16 -1, ptr %1526, align 2, !tbaa !28
  %1527 = icmp slt i32 %1517, 0
  br i1 %1527, label %.loopexit277, label %1528

1528:                                             ; preds = %1520
  %1529 = zext i16 %1522 to i32
  %1530 = icmp eq i16 %1522, 0
  %1531 = select i1 %1530, i32 138, i32 7
  %1532 = select i1 %1530, i32 3, i32 4
  %1533 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1534 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1535 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1536 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1537 = add nuw nsw i32 %1517, 1
  %wide.trip.count506 = zext nneg i32 %1537 to i64
  br label %1539

1538:                                             ; preds = %1586
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1
  %exitcond508 = icmp eq i64 %indvars.iv.next504, 2147483648
  br i1 %exitcond508, label %.loopexit278, label %1539, !prof !74, !llvm.loop !75, !nosanitize !30

1539:                                             ; preds = %1538, %1528
  %indvars.iv503 = phi i64 [ %indvars.iv.next504, %1538 ], [ 1, %1528 ]
  %1540 = phi i32 [ %1587, %1538 ], [ -1, %1528 ]
  %1541 = phi i32 [ %1548, %1538 ], [ %1529, %1528 ]
  %1542 = phi i32 [ %1588, %1538 ], [ 0, %1528 ]
  %1543 = phi i32 [ %1589, %1538 ], [ %1531, %1528 ]
  %1544 = phi i32 [ %1590, %1538 ], [ %1532, %1528 ]
  %1545 = getelementptr inbounds nuw [4 x i8], ptr %1516, i64 %indvars.iv503
  %1546 = getelementptr inbounds nuw i8, ptr %1545, i64 2
  %1547 = load i16, ptr %1546, align 2, !tbaa !28
  %1548 = zext i16 %1547 to i32
  %1549 = add nsw i32 %1542, 1
  %1550 = icmp slt i32 %1549, %1543
  %1551 = icmp eq i32 %1541, %1548
  %1552 = select i1 %1550, i1 %1551, i1 false
  br i1 %1552, label %1586, label %1553

1553:                                             ; preds = %1539
  %1554 = icmp slt i32 %1549, %1544
  br i1 %1554, label %1555, label %1561

1555:                                             ; preds = %1553
  %1556 = zext nneg i32 %1541 to i64
  %1557 = getelementptr inbounds nuw [4 x i8], ptr %1533, i64 %1556
  %1558 = load i16, ptr %1557, align 4, !tbaa !28
  %1559 = trunc i32 %1549 to i16
  %1560 = add i16 %1558, %1559
  store i16 %1560, ptr %1557, align 4, !tbaa !28
  br label %1581

1561:                                             ; preds = %1553
  %1562 = icmp eq i32 %1541, 0
  br i1 %1562, label %1573, label %1563

1563:                                             ; preds = %1561
  %1564 = icmp eq i32 %1541, %1540
  br i1 %1564, label %1570, label %1565

1565:                                             ; preds = %1563
  %1566 = zext nneg i32 %1541 to i64
  %1567 = getelementptr inbounds nuw [4 x i8], ptr %1533, i64 %1566
  %1568 = load i16, ptr %1567, align 4, !tbaa !28
  %1569 = add i16 %1568, 1
  store i16 %1569, ptr %1567, align 4, !tbaa !28
  br label %1570

1570:                                             ; preds = %1565, %1563
  %1571 = load i16, ptr %1534, align 4, !tbaa !28
  %1572 = add i16 %1571, 1
  store i16 %1572, ptr %1534, align 4, !tbaa !28
  br label %1581

1573:                                             ; preds = %1561
  %1574 = icmp slt i32 %1542, 10
  br i1 %1574, label %1575, label %1578

1575:                                             ; preds = %1573
  %1576 = load i16, ptr %1536, align 4, !tbaa !28
  %1577 = add i16 %1576, 1
  store i16 %1577, ptr %1536, align 4, !tbaa !28
  br label %1581

1578:                                             ; preds = %1573
  %1579 = load i16, ptr %1535, align 4, !tbaa !28
  %1580 = add i16 %1579, 1
  store i16 %1580, ptr %1535, align 4, !tbaa !28
  br label %1581

1581:                                             ; preds = %1578, %1575, %1570, %1555
  %1582 = icmp eq i16 %1547, 0
  br i1 %1582, label %1586, label %1583

1583:                                             ; preds = %1581
  %1584 = select i1 %1551, i32 6, i32 7
  %1585 = select i1 %1551, i32 3, i32 4
  br label %1586

1586:                                             ; preds = %1583, %1581, %1539
  %1587 = phi i32 [ %1540, %1539 ], [ %1541, %1581 ], [ %1541, %1583 ]
  %1588 = phi i32 [ %1549, %1539 ], [ 0, %1581 ], [ 0, %1583 ]
  %1589 = phi i32 [ %1543, %1539 ], [ 138, %1581 ], [ %1584, %1583 ]
  %1590 = phi i32 [ %1544, %1539 ], [ 3, %1581 ], [ %1585, %1583 ]
  %exitcond507 = icmp eq i64 %indvars.iv503, %wide.trip.count506
  br i1 %exitcond507, label %.loopexit277, label %1538, !llvm.loop !75

.loopexit277:                                     ; preds = %1586, %1520
  %1591 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1592 = load ptr, ptr %1591, align 8, !tbaa !41
  %1593 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1594 = load ptr, ptr %1593, align 8, !tbaa !42
  %1595 = load ptr, ptr %1594, align 8, !tbaa !43
  %1596 = getelementptr inbounds nuw i8, ptr %1594, i64 20
  %1597 = load i32, ptr %1596, align 4, !tbaa !46
  store i32 0, ptr %164, align 4, !tbaa !47
  store i32 573, ptr %165, align 8, !tbaa !48
  %1598 = icmp sgt i32 %1597, 0
  br i1 %1598, label %1599, label %1604

1599:                                             ; preds = %.loopexit277
  %1600 = zext nneg i32 %1597 to i64
  br label %1610

1601:                                             ; preds = %1628
  %1602 = load i32, ptr %164, align 4, !tbaa !47
  %1603 = icmp slt i32 %1602, 2
  br i1 %1603, label %1604, label %.loopexit275

1604:                                             ; preds = %1601, %.loopexit277
  %1605 = phi i32 [ %1629, %1601 ], [ -1, %.loopexit277 ]
  %1606 = phi i32 [ %1602, %1601 ], [ 0, %.loopexit277 ]
  %1607 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1608 = icmp eq ptr %1595, null
  %1609 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1632

1610:                                             ; preds = %1628, %1599
  %1611 = phi i64 [ 0, %1599 ], [ %1630, %1628 ]
  %1612 = phi i32 [ -1, %1599 ], [ %1629, %1628 ]
  %1613 = getelementptr inbounds nuw [4 x i8], ptr %1592, i64 %1611
  %1614 = load i16, ptr %1613, align 2, !tbaa !28
  %1615 = icmp eq i16 %1614, 0
  br i1 %1615, label %1626, label %1616

1616:                                             ; preds = %1610
  %1617 = load i32, ptr %164, align 4, !tbaa !47
  %1618 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1617, i32 1), !nosanitize !30
  %1619 = extractvalue { i32, i1 } %1618, 1, !nosanitize !30
  br i1 %1619, label %.loopexit273, label %1620, !prof !33, !nosanitize !30

.loopexit273:                                     ; preds = %1616, %1823
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1620:                                             ; preds = %1616
  %1621 = extractvalue { i32, i1 } %1618, 0, !nosanitize !30
  store i32 %1621, ptr %164, align 4, !tbaa !47
  %1622 = sext i32 %1621 to i64
  %1623 = getelementptr inbounds [4 x i8], ptr %232, i64 %1622
  %1624 = trunc nuw nsw i64 %1611 to i32
  store i32 %1624, ptr %1623, align 4, !tbaa !4
  %1625 = getelementptr inbounds nuw i8, ptr %233, i64 %1611
  store i8 0, ptr %1625, align 1, !tbaa !28
  br label %1628

1626:                                             ; preds = %1610
  %1627 = getelementptr inbounds nuw i8, ptr %1613, i64 2
  store i16 0, ptr %1627, align 2, !tbaa !28
  br label %1628

1628:                                             ; preds = %1626, %1620
  %1629 = phi i32 [ %1624, %1620 ], [ %1612, %1626 ]
  %1630 = add nuw nsw i64 %1611, 1
  %1631 = icmp eq i64 %1630, %1600
  br i1 %1631, label %1601, label %1610, !llvm.loop !49

1632:                                             ; preds = %1654, %1604
  %1633 = phi i32 [ %1606, %1604 ], [ %1655, %1654 ]
  %1634 = phi i32 [ %1605, %1604 ], [ %1637, %1654 ]
  %1635 = icmp slt i32 %1634, 2
  %1636 = add i32 %1634, 1
  %1637 = select i1 %1635, i32 %1636, i32 %1634
  %1638 = add nsw i32 %1633, 1
  %1639 = select i1 %1635, i32 %1636, i32 0
  store i32 %1638, ptr %164, align 4, !tbaa !47
  %1640 = sext i32 %1638 to i64
  %1641 = getelementptr inbounds [4 x i8], ptr %232, i64 %1640
  store i32 %1639, ptr %1641, align 4, !tbaa !4
  %1642 = sext i32 %1639 to i64
  %1643 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1642
  store i16 1, ptr %1643, align 2, !tbaa !28
  %1644 = getelementptr inbounds i8, ptr %233, i64 %1642
  store i8 0, ptr %1644, align 1, !tbaa !28
  %1645 = load i64, ptr %1607, align 8, !tbaa !50
  %1646 = add i64 %1645, -1
  store i64 %1646, ptr %1607, align 8, !tbaa !50
  br i1 %1608, label %1654, label %1647

1647:                                             ; preds = %1632
  %1648 = getelementptr inbounds [4 x i8], ptr %1595, i64 %1642
  %1649 = getelementptr inbounds nuw i8, ptr %1648, i64 2
  %1650 = load i16, ptr %1649, align 2, !tbaa !28
  %1651 = zext i16 %1650 to i64
  %1652 = load i64, ptr %1609, align 8, !tbaa !51
  %1653 = sub i64 %1652, %1651
  store i64 %1653, ptr %1609, align 8, !tbaa !51
  br label %1654

1654:                                             ; preds = %1647, %1632
  %1655 = load i32, ptr %164, align 4, !tbaa !47
  %1656 = icmp slt i32 %1655, 2
  br i1 %1656, label %1632, label %.loopexit275, !llvm.loop !52

.loopexit275:                                     ; preds = %1654, %1601
  %1657 = phi i32 [ %1629, %1601 ], [ %1637, %1654 ]
  %1658 = phi i32 [ %1602, %1601 ], [ %1655, %1654 ]
  %1659 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1657, ptr %1659, align 8, !tbaa !53
  %1660 = lshr i32 %1658, 1
  %1661 = zext nneg i32 %1660 to i64
  br label %1665

1662:                                             ; preds = %.loopexit274
  %1663 = load i32, ptr %164, align 4, !tbaa !47
  %1664 = sext i32 %1597 to i64
  br label %1736

1665:                                             ; preds = %.loopexit274, %.loopexit275
  %1666 = phi i64 [ %1661, %.loopexit275 ], [ %1734, %.loopexit274 ]
  %1667 = getelementptr inbounds nuw [4 x i8], ptr %232, i64 %1666
  %1668 = load i32, ptr %1667, align 4, !tbaa !4
  %1669 = sext i32 %1668 to i64
  %1670 = getelementptr inbounds i8, ptr %233, i64 %1669
  %1671 = load i32, ptr %164, align 4, !tbaa !47
  %1672 = trunc i64 %1666 to i32
  %1673 = shl i32 %1672, 1
  %1674 = icmp sgt i32 %1673, %1671
  br i1 %1674, label %.loopexit274, label %1675

1675:                                             ; preds = %1665
  %1676 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1669
  br label %1677

1677:                                             ; preds = %1725, %1675
  %1678 = phi i32 [ %1671, %1675 ], [ %1729, %1725 ]
  %1679 = phi i32 [ %1673, %1675 ], [ %1728, %1725 ]
  %1680 = phi i32 [ %1672, %1675 ], [ %1710, %1725 ]
  %1681 = icmp slt i32 %1679, %1678
  br i1 %1681, label %1684, label %1682

1682:                                             ; preds = %1677
  %1683 = sext i32 %1679 to i64
  br label %1708

1684:                                             ; preds = %1677
  %1685 = or disjoint i32 %1679, 1
  %1686 = sext i32 %1685 to i64
  %1687 = getelementptr inbounds [4 x i8], ptr %232, i64 %1686
  %1688 = load i32, ptr %1687, align 4, !tbaa !4
  %1689 = sext i32 %1688 to i64
  %1690 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1689
  %1691 = load i16, ptr %1690, align 2, !tbaa !28
  %1692 = sext i32 %1679 to i64
  %1693 = getelementptr inbounds [4 x i8], ptr %232, i64 %1692
  %1694 = load i32, ptr %1693, align 4, !tbaa !4
  %1695 = sext i32 %1694 to i64
  %1696 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1695
  %1697 = load i16, ptr %1696, align 2, !tbaa !28
  %1698 = icmp ult i16 %1691, %1697
  br i1 %1698, label %1707, label %1699

1699:                                             ; preds = %1684
  %1700 = icmp eq i16 %1691, %1697
  br i1 %1700, label %1701, label %1708

1701:                                             ; preds = %1699
  %1702 = getelementptr inbounds i8, ptr %233, i64 %1689
  %1703 = load i8, ptr %1702, align 1, !tbaa !28
  %1704 = getelementptr inbounds i8, ptr %233, i64 %1695
  %1705 = load i8, ptr %1704, align 1, !tbaa !28
  %1706 = icmp ugt i8 %1703, %1705
  br i1 %1706, label %1708, label %1707

1707:                                             ; preds = %1701, %1684
  br label %1708

1708:                                             ; preds = %1707, %1701, %1699, %1682
  %1709 = phi i64 [ %1683, %1682 ], [ %1686, %1707 ], [ %1692, %1701 ], [ %1692, %1699 ]
  %1710 = phi i32 [ %1679, %1682 ], [ %1685, %1707 ], [ %1679, %1701 ], [ %1679, %1699 ]
  %1711 = load i16, ptr %1676, align 2, !tbaa !28
  %1712 = getelementptr inbounds [4 x i8], ptr %232, i64 %1709
  %1713 = load i32, ptr %1712, align 4, !tbaa !4
  %1714 = sext i32 %1713 to i64
  %1715 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1714
  %1716 = load i16, ptr %1715, align 2, !tbaa !28
  %1717 = icmp ult i16 %1711, %1716
  br i1 %1717, label %.loopexit274, label %1718

1718:                                             ; preds = %1708
  %1719 = icmp eq i16 %1711, %1716
  br i1 %1719, label %1720, label %1725

1720:                                             ; preds = %1718
  %1721 = load i8, ptr %1670, align 1, !tbaa !28
  %1722 = getelementptr inbounds i8, ptr %233, i64 %1714
  %1723 = load i8, ptr %1722, align 1, !tbaa !28
  %1724 = icmp ugt i8 %1721, %1723
  br i1 %1724, label %1725, label %.loopexit274

1725:                                             ; preds = %1720, %1718
  %1726 = sext i32 %1680 to i64
  %1727 = getelementptr inbounds [4 x i8], ptr %232, i64 %1726
  store i32 %1713, ptr %1727, align 4, !tbaa !4
  %1728 = shl i32 %1710, 1
  %1729 = load i32, ptr %164, align 4, !tbaa !47
  %1730 = icmp sgt i32 %1728, %1729
  br i1 %1730, label %.loopexit274, label %1677, !llvm.loop !54

.loopexit274:                                     ; preds = %1725, %1720, %1708, %1665
  %1731 = phi i32 [ %1672, %1665 ], [ %1680, %1708 ], [ %1680, %1720 ], [ %1710, %1725 ]
  %1732 = sext i32 %1731 to i64
  %1733 = getelementptr inbounds [4 x i8], ptr %232, i64 %1732
  store i32 %1668, ptr %1733, align 4, !tbaa !4
  %1734 = add nsw i64 %1666, -1
  %1735 = icmp sgt i64 %1666, 1
  br i1 %1735, label %1665, label %1662, !llvm.loop !55

.loopexit272:                                     ; preds = %1816, %1809, %1736, %1912
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

1736:                                             ; preds = %1907, %1662
  %1737 = phi i32 [ %1663, %1662 ], [ %1910, %1907 ]
  %1738 = phi i64 [ %1664, %1662 ], [ %1848, %1907 ]
  %1739 = load i32, ptr %238, align 4, !tbaa !4
  %1740 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1737, i32 -1)
  %1741 = extractvalue { i32, i1 } %1740, 1, !nosanitize !30
  br i1 %1741, label %.loopexit272, label %1742, !prof !33, !nosanitize !30

1742:                                             ; preds = %1736
  %1743 = extractvalue { i32, i1 } %1740, 0, !nosanitize !30
  store i32 %1743, ptr %164, align 4, !tbaa !47
  %1744 = sext i32 %1737 to i64
  %1745 = getelementptr inbounds [4 x i8], ptr %232, i64 %1744
  %1746 = load i32, ptr %1745, align 4, !tbaa !4
  store i32 %1746, ptr %238, align 4, !tbaa !4
  %1747 = sext i32 %1746 to i64
  %1748 = getelementptr inbounds i8, ptr %233, i64 %1747
  %1749 = icmp slt i32 %1743, 2
  br i1 %1749, label %1809, label %1750

1750:                                             ; preds = %1742
  %1751 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1747
  br label %1752

1752:                                             ; preds = %1800, %1750
  %1753 = phi i32 [ %1743, %1750 ], [ %1804, %1800 ]
  %1754 = phi i32 [ 2, %1750 ], [ %1803, %1800 ]
  %1755 = phi i32 [ 1, %1750 ], [ %1785, %1800 ]
  %1756 = icmp slt i32 %1754, %1753
  br i1 %1756, label %1759, label %1757

1757:                                             ; preds = %1752
  %1758 = sext i32 %1754 to i64
  br label %1783

1759:                                             ; preds = %1752
  %1760 = or disjoint i32 %1754, 1
  %1761 = sext i32 %1760 to i64
  %1762 = getelementptr inbounds [4 x i8], ptr %232, i64 %1761
  %1763 = load i32, ptr %1762, align 4, !tbaa !4
  %1764 = sext i32 %1763 to i64
  %1765 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1764
  %1766 = load i16, ptr %1765, align 2, !tbaa !28
  %1767 = sext i32 %1754 to i64
  %1768 = getelementptr inbounds [4 x i8], ptr %232, i64 %1767
  %1769 = load i32, ptr %1768, align 4, !tbaa !4
  %1770 = sext i32 %1769 to i64
  %1771 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1770
  %1772 = load i16, ptr %1771, align 2, !tbaa !28
  %1773 = icmp ult i16 %1766, %1772
  br i1 %1773, label %1782, label %1774

1774:                                             ; preds = %1759
  %1775 = icmp eq i16 %1766, %1772
  br i1 %1775, label %1776, label %1783

1776:                                             ; preds = %1774
  %1777 = getelementptr inbounds i8, ptr %233, i64 %1764
  %1778 = load i8, ptr %1777, align 1, !tbaa !28
  %1779 = getelementptr inbounds i8, ptr %233, i64 %1770
  %1780 = load i8, ptr %1779, align 1, !tbaa !28
  %1781 = icmp ugt i8 %1778, %1780
  br i1 %1781, label %1783, label %1782

1782:                                             ; preds = %1776, %1759
  br label %1783

1783:                                             ; preds = %1782, %1776, %1774, %1757
  %1784 = phi i64 [ %1758, %1757 ], [ %1761, %1782 ], [ %1767, %1776 ], [ %1767, %1774 ]
  %1785 = phi i32 [ %1754, %1757 ], [ %1760, %1782 ], [ %1754, %1776 ], [ %1754, %1774 ]
  %1786 = load i16, ptr %1751, align 2, !tbaa !28
  %1787 = getelementptr inbounds [4 x i8], ptr %232, i64 %1784
  %1788 = load i32, ptr %1787, align 4, !tbaa !4
  %1789 = sext i32 %1788 to i64
  %1790 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1789
  %1791 = load i16, ptr %1790, align 2, !tbaa !28
  %1792 = icmp ult i16 %1786, %1791
  br i1 %1792, label %1806, label %1793

1793:                                             ; preds = %1783
  %1794 = icmp eq i16 %1786, %1791
  br i1 %1794, label %1795, label %1800

1795:                                             ; preds = %1793
  %1796 = load i8, ptr %1748, align 1, !tbaa !28
  %1797 = getelementptr inbounds i8, ptr %233, i64 %1789
  %1798 = load i8, ptr %1797, align 1, !tbaa !28
  %1799 = icmp ugt i8 %1796, %1798
  br i1 %1799, label %1800, label %1806

1800:                                             ; preds = %1795, %1793
  %1801 = sext i32 %1755 to i64
  %1802 = getelementptr inbounds [4 x i8], ptr %232, i64 %1801
  store i32 %1788, ptr %1802, align 4, !tbaa !4
  %1803 = shl i32 %1785, 1
  %1804 = load i32, ptr %164, align 4, !tbaa !47
  %1805 = icmp sgt i32 %1803, %1804
  br i1 %1805, label %1806, label %1752, !llvm.loop !54

1806:                                             ; preds = %1800, %1795, %1783
  %1807 = phi i32 [ %1755, %1783 ], [ %1755, %1795 ], [ %1785, %1800 ]
  %1808 = sext i32 %1807 to i64
  br label %1809

1809:                                             ; preds = %1806, %1742
  %1810 = phi i64 [ 1, %1742 ], [ %1808, %1806 ]
  %1811 = getelementptr inbounds [4 x i8], ptr %232, i64 %1810
  store i32 %1746, ptr %1811, align 4, !tbaa !4
  %1812 = load i32, ptr %238, align 4, !tbaa !4
  %1813 = load i32, ptr %165, align 8, !tbaa !48
  %1814 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1813, i32 -1)
  %1815 = extractvalue { i32, i1 } %1814, 1, !nosanitize !30
  br i1 %1815, label %.loopexit272, label %1816, !prof !33, !nosanitize !30

1816:                                             ; preds = %1809
  %1817 = extractvalue { i32, i1 } %1814, 0, !nosanitize !30
  store i32 %1817, ptr %165, align 8, !tbaa !48
  %1818 = sext i32 %1817 to i64
  %1819 = getelementptr inbounds [4 x i8], ptr %232, i64 %1818
  store i32 %1739, ptr %1819, align 4, !tbaa !4
  %1820 = load i32, ptr %165, align 8, !tbaa !48
  %1821 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1820, i32 -1)
  %1822 = extractvalue { i32, i1 } %1821, 1, !nosanitize !30
  br i1 %1822, label %.loopexit272, label %1823, !prof !33, !nosanitize !30

1823:                                             ; preds = %1816
  %1824 = extractvalue { i32, i1 } %1821, 0, !nosanitize !30
  store i32 %1824, ptr %165, align 8, !tbaa !48
  %1825 = sext i32 %1824 to i64
  %1826 = getelementptr inbounds [4 x i8], ptr %232, i64 %1825
  store i32 %1812, ptr %1826, align 4, !tbaa !4
  %1827 = sext i32 %1739 to i64
  %1828 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1827
  %1829 = load i16, ptr %1828, align 2, !tbaa !28
  %1830 = sext i32 %1812 to i64
  %1831 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1830
  %1832 = load i16, ptr %1831, align 2, !tbaa !28
  %1833 = add i16 %1832, %1829
  %1834 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1738
  store i16 %1833, ptr %1834, align 2, !tbaa !28
  %1835 = getelementptr inbounds i8, ptr %233, i64 %1827
  %1836 = load i8, ptr %1835, align 1, !tbaa !28
  %1837 = getelementptr inbounds i8, ptr %233, i64 %1830
  %1838 = load i8, ptr %1837, align 1, !tbaa !28
  %1839 = tail call i8 @llvm.umax.i8(i8 %1836, i8 %1838)
  %1840 = add i8 %1839, 1
  %1841 = getelementptr inbounds i8, ptr %233, i64 %1738
  store i8 %1840, ptr %1841, align 1, !tbaa !28
  %1842 = trunc nsw i64 %1738 to i32
  %1843 = trunc i64 %1738 to i16
  %1844 = getelementptr inbounds nuw i8, ptr %1831, i64 2
  store i16 %1843, ptr %1844, align 2, !tbaa !28
  %1845 = getelementptr inbounds nuw i8, ptr %1828, i64 2
  store i16 %1843, ptr %1845, align 2, !tbaa !28
  %1846 = icmp eq i64 %1738, 2147483647
  br i1 %1846, label %.loopexit273, label %1847, !prof !33, !nosanitize !30

1847:                                             ; preds = %1823
  %1848 = add nsw i64 %1738, 1
  store i32 %1842, ptr %238, align 4, !tbaa !4
  %1849 = load i32, ptr %164, align 4, !tbaa !47
  %1850 = icmp slt i32 %1849, 2
  br i1 %1850, label %1907, label %.preheader271

.preheader271:                                    ; preds = %1847, %1898
  %1851 = phi i32 [ %1902, %1898 ], [ %1849, %1847 ]
  %1852 = phi i32 [ %1901, %1898 ], [ 2, %1847 ]
  %1853 = phi i32 [ %1883, %1898 ], [ 1, %1847 ]
  %1854 = icmp slt i32 %1852, %1851
  br i1 %1854, label %1857, label %1855

1855:                                             ; preds = %.preheader271
  %1856 = sext i32 %1852 to i64
  br label %1881

1857:                                             ; preds = %.preheader271
  %1858 = or disjoint i32 %1852, 1
  %1859 = sext i32 %1858 to i64
  %1860 = getelementptr inbounds [4 x i8], ptr %232, i64 %1859
  %1861 = load i32, ptr %1860, align 4, !tbaa !4
  %1862 = sext i32 %1861 to i64
  %1863 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1862
  %1864 = load i16, ptr %1863, align 2, !tbaa !28
  %1865 = sext i32 %1852 to i64
  %1866 = getelementptr inbounds [4 x i8], ptr %232, i64 %1865
  %1867 = load i32, ptr %1866, align 4, !tbaa !4
  %1868 = sext i32 %1867 to i64
  %1869 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1868
  %1870 = load i16, ptr %1869, align 2, !tbaa !28
  %1871 = icmp ult i16 %1864, %1870
  br i1 %1871, label %1880, label %1872

1872:                                             ; preds = %1857
  %1873 = icmp eq i16 %1864, %1870
  br i1 %1873, label %1874, label %1881

1874:                                             ; preds = %1872
  %1875 = getelementptr inbounds i8, ptr %233, i64 %1862
  %1876 = load i8, ptr %1875, align 1, !tbaa !28
  %1877 = getelementptr inbounds i8, ptr %233, i64 %1868
  %1878 = load i8, ptr %1877, align 1, !tbaa !28
  %1879 = icmp ugt i8 %1876, %1878
  br i1 %1879, label %1881, label %1880

1880:                                             ; preds = %1874, %1857
  br label %1881

1881:                                             ; preds = %1880, %1874, %1872, %1855
  %1882 = phi i64 [ %1856, %1855 ], [ %1859, %1880 ], [ %1865, %1874 ], [ %1865, %1872 ]
  %1883 = phi i32 [ %1852, %1855 ], [ %1858, %1880 ], [ %1852, %1874 ], [ %1852, %1872 ]
  %1884 = load i16, ptr %1834, align 2, !tbaa !28
  %1885 = getelementptr inbounds [4 x i8], ptr %232, i64 %1882
  %1886 = load i32, ptr %1885, align 4, !tbaa !4
  %1887 = sext i32 %1886 to i64
  %1888 = getelementptr inbounds [4 x i8], ptr %1592, i64 %1887
  %1889 = load i16, ptr %1888, align 2, !tbaa !28
  %1890 = icmp ult i16 %1884, %1889
  br i1 %1890, label %1904, label %1891

1891:                                             ; preds = %1881
  %1892 = icmp eq i16 %1884, %1889
  br i1 %1892, label %1893, label %1898

1893:                                             ; preds = %1891
  %1894 = load i8, ptr %1841, align 1, !tbaa !28
  %1895 = getelementptr inbounds i8, ptr %233, i64 %1887
  %1896 = load i8, ptr %1895, align 1, !tbaa !28
  %1897 = icmp ugt i8 %1894, %1896
  br i1 %1897, label %1898, label %1904

1898:                                             ; preds = %1893, %1891
  %1899 = sext i32 %1853 to i64
  %1900 = getelementptr inbounds [4 x i8], ptr %232, i64 %1899
  store i32 %1886, ptr %1900, align 4, !tbaa !4
  %1901 = shl i32 %1883, 1
  %1902 = load i32, ptr %164, align 4, !tbaa !47
  %1903 = icmp sgt i32 %1901, %1902
  br i1 %1903, label %1904, label %.preheader271, !llvm.loop !54

1904:                                             ; preds = %1898, %1893, %1881
  %1905 = phi i32 [ %1853, %1881 ], [ %1853, %1893 ], [ %1883, %1898 ]
  %1906 = sext i32 %1905 to i64
  br label %1907

1907:                                             ; preds = %1904, %1847
  %1908 = phi i64 [ 1, %1847 ], [ %1906, %1904 ]
  %1909 = getelementptr inbounds [4 x i8], ptr %232, i64 %1908
  store i32 %1842, ptr %1909, align 4, !tbaa !4
  %1910 = load i32, ptr %164, align 4, !tbaa !47
  %1911 = icmp sgt i32 %1910, 1
  br i1 %1911, label %1736, label %1912, !llvm.loop !56

1912:                                             ; preds = %1907
  %1913 = load i32, ptr %165, align 8, !tbaa !48
  %1914 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1913, i32 -1)
  %1915 = extractvalue { i32, i1 } %1914, 1, !nosanitize !30
  br i1 %1915, label %.loopexit272, label %1916, !prof !33, !nosanitize !30

1916:                                             ; preds = %1912
  %1917 = extractvalue { i32, i1 } %1914, 0, !nosanitize !30
  %1918 = load i32, ptr %238, align 4, !tbaa !4
  store i32 %1917, ptr %165, align 8, !tbaa !48
  %1919 = sext i32 %1917 to i64
  %1920 = getelementptr inbounds [4 x i8], ptr %232, i64 %1919
  store i32 %1918, ptr %1920, align 4, !tbaa !4
  %1921 = load ptr, ptr %1591, align 8, !tbaa !41
  %1922 = load i32, ptr %1659, align 8, !tbaa !53
  %1923 = load ptr, ptr %1593, align 8, !tbaa !42
  %1924 = load ptr, ptr %1923, align 8, !tbaa !43
  %1925 = getelementptr inbounds nuw i8, ptr %1923, i64 8
  %1926 = load ptr, ptr %1925, align 8, !tbaa !57
  %1927 = getelementptr inbounds nuw i8, ptr %1923, i64 16
  %1928 = load i32, ptr %1927, align 8, !tbaa !58
  %1929 = getelementptr inbounds nuw i8, ptr %1923, i64 24
  %1930 = load i32, ptr %1929, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %506, i8 0, i64 32, i1 false), !tbaa !60
  %1931 = load i32, ptr %165, align 8, !tbaa !48
  %1932 = sext i32 %1931 to i64
  %1933 = getelementptr inbounds [4 x i8], ptr %232, i64 %1932
  %1934 = load i32, ptr %1933, align 4, !tbaa !4
  %1935 = sext i32 %1934 to i64
  %1936 = getelementptr inbounds [4 x i8], ptr %1921, i64 %1935
  %1937 = getelementptr inbounds nuw i8, ptr %1936, i64 2
  store i16 0, ptr %1937, align 2, !tbaa !28
  %1938 = load i32, ptr %165, align 8, !tbaa !48
  %1939 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1938, i32 1), !nosanitize !30
  %1940 = extractvalue { i32, i1 } %1939, 1, !nosanitize !30
  br i1 %1940, label %.loopexit267, label %1941, !prof !33, !nosanitize !30

.loopexit267:                                     ; preds = %2001, %1989, %1965, %2036, %1916
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

1941:                                             ; preds = %1916
  %1942 = extractvalue { i32, i1 } %1939, 0
  %1943 = icmp slt i32 %1942, 573
  br i1 %1943, label %1944, label %.loopexit264

1944:                                             ; preds = %1941
  %1945 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1946 = icmp eq ptr %1924, null
  %1947 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1948 = sext i32 %1942 to i64
  br label %1949

1949:                                             ; preds = %2014, %1944
  %1950 = phi i64 [ %1948, %1944 ], [ %2015, %2014 ]
  %1951 = phi i32 [ 0, %1944 ], [ %1972, %2014 ]
  %1952 = getelementptr inbounds [4 x i8], ptr %232, i64 %1950
  %1953 = load i32, ptr %1952, align 4, !tbaa !4
  %1954 = sext i32 %1953 to i64
  %1955 = getelementptr inbounds [4 x i8], ptr %1921, i64 %1954
  %1956 = getelementptr inbounds nuw i8, ptr %1955, i64 2
  %1957 = load i16, ptr %1956, align 2, !tbaa !28
  %1958 = zext i16 %1957 to i64
  %1959 = getelementptr inbounds nuw [4 x i8], ptr %1921, i64 %1958
  %1960 = getelementptr inbounds nuw i8, ptr %1959, i64 2
  %1961 = load i16, ptr %1960, align 2, !tbaa !28
  %1962 = zext i16 %1961 to i32
  %1963 = add nuw nsw i32 %1962, 1
  %1964 = icmp sgt i32 %1930, %1962
  br i1 %1964, label %1970, label %1965

1965:                                             ; preds = %1949
  %1966 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1951, i32 1), !nosanitize !30
  %1967 = extractvalue { i32, i1 } %1966, 1, !nosanitize !30
  br i1 %1967, label %.loopexit267, label %1968, !prof !33, !nosanitize !30

1968:                                             ; preds = %1965
  %1969 = extractvalue { i32, i1 } %1966, 0, !nosanitize !30
  br label %1970

1970:                                             ; preds = %1968, %1949
  %1971 = phi i32 [ %1930, %1968 ], [ %1963, %1949 ]
  %1972 = phi i32 [ %1969, %1968 ], [ %1951, %1949 ]
  %1973 = trunc i32 %1971 to i16
  store i16 %1973, ptr %1956, align 2, !tbaa !28
  %1974 = icmp sgt i32 %1953, %1922
  br i1 %1974, label %2014, label %1975

1975:                                             ; preds = %1970
  %1976 = sext i32 %1971 to i64
  %1977 = getelementptr inbounds [2 x i8], ptr %506, i64 %1976
  %1978 = load i16, ptr %1977, align 2, !tbaa !60
  %1979 = add i16 %1978, 1
  store i16 %1979, ptr %1977, align 2, !tbaa !60
  %1980 = icmp slt i32 %1953, %1928
  br i1 %1980, label %1989, label %1981

1981:                                             ; preds = %1975
  %1982 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1953, i32 %1928), !nosanitize !30
  %1983 = extractvalue { i32, i1 } %1982, 1, !nosanitize !30
  br i1 %1983, label %.loopexit259, label %1984, !prof !33, !nosanitize !30

.loopexit259:                                     ; preds = %1981, %2041, %2033, %.loopexit261, %2067, %2072, %2020
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

1984:                                             ; preds = %1981
  %1985 = extractvalue { i32, i1 } %1982, 0, !nosanitize !30
  %1986 = sext i32 %1985 to i64
  %1987 = getelementptr inbounds [4 x i8], ptr %1926, i64 %1986
  %1988 = load i32, ptr %1987, align 4, !tbaa !4
  br label %1989

1989:                                             ; preds = %1984, %1975
  %1990 = phi i32 [ %1988, %1984 ], [ 0, %1975 ]
  %1991 = load i16, ptr %1955, align 2, !tbaa !28
  %1992 = zext i16 %1991 to i64
  %1993 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1971, i32 %1990), !nosanitize !30
  %1994 = extractvalue { i32, i1 } %1993, 1, !nosanitize !30
  br i1 %1994, label %.loopexit267, label %1995, !prof !33, !nosanitize !30

1995:                                             ; preds = %1989
  %1996 = extractvalue { i32, i1 } %1993, 0, !nosanitize !30
  %1997 = zext i32 %1996 to i64
  %1998 = mul nuw nsw i64 %1997, %1992
  %1999 = load i64, ptr %1945, align 8, !tbaa !50
  %2000 = add i64 %1999, %1998
  store i64 %2000, ptr %1945, align 8, !tbaa !50
  br i1 %1946, label %2014, label %2001

2001:                                             ; preds = %1995
  %2002 = getelementptr inbounds [4 x i8], ptr %1924, i64 %1954
  %2003 = getelementptr inbounds nuw i8, ptr %2002, i64 2
  %2004 = load i16, ptr %2003, align 2, !tbaa !28
  %2005 = zext i16 %2004 to i32
  %2006 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2005, i32 %1990), !nosanitize !30
  %2007 = extractvalue { i32, i1 } %2006, 1, !nosanitize !30
  br i1 %2007, label %.loopexit267, label %2008, !prof !33, !nosanitize !30

2008:                                             ; preds = %2001
  %2009 = extractvalue { i32, i1 } %2006, 0, !nosanitize !30
  %2010 = zext i32 %2009 to i64
  %2011 = mul nuw nsw i64 %2010, %1992
  %2012 = load i64, ptr %1947, align 8, !tbaa !51
  %2013 = add i64 %2012, %2011
  store i64 %2013, ptr %1947, align 8, !tbaa !51
  br label %2014

2014:                                             ; preds = %2008, %1995, %1970
  %2015 = add nsw i64 %1950, 1
  %2016 = and i64 %2015, 4294967295
  %2017 = icmp eq i64 %2016, 573
  br i1 %2017, label %2018, label %1949, !llvm.loop !61

2018:                                             ; preds = %2014
  %2019 = icmp eq i32 %1972, 0
  br i1 %2019, label %.loopexit264, label %2020

2020:                                             ; preds = %2018
  %2021 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1930, i32 -1)
  %2022 = extractvalue { i32, i1 } %2021, 1, !nosanitize !30
  %2023 = sext i32 %1930 to i64
  %2024 = getelementptr inbounds [2 x i8], ptr %506, i64 %2023
  br i1 %2022, label %.loopexit259, label %.preheader266, !prof !33, !nosanitize !30

.preheader266:                                    ; preds = %2020, %2051
  %2025 = phi i32 [ %2052, %2051 ], [ %1972, %2020 ]
  br label %2026

2026:                                             ; preds = %2033, %.preheader266
  %2027 = phi { i32, i1 } [ %2034, %2033 ], [ %2021, %.preheader266 ]
  %2028 = extractvalue { i32, i1 } %2027, 0
  %2029 = sext i32 %2028 to i64
  %2030 = getelementptr inbounds [2 x i8], ptr %506, i64 %2029
  %2031 = load i16, ptr %2030, align 2, !tbaa !60
  %2032 = icmp eq i16 %2031, 0
  br i1 %2032, label %2033, label %2036

2033:                                             ; preds = %2026
  %2034 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2028, i32 -1)
  %2035 = extractvalue { i32, i1 } %2034, 1, !nosanitize !30
  br i1 %2035, label %.loopexit259, label %2026, !prof !33, !llvm.loop !62, !nosanitize !30

2036:                                             ; preds = %2026
  %2037 = getelementptr inbounds [2 x i8], ptr %506, i64 %2029
  %2038 = add i16 %2031, -1
  store i16 %2038, ptr %2037, align 2, !tbaa !60
  %2039 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2028, i32 1), !nosanitize !30
  %2040 = extractvalue { i32, i1 } %2039, 1, !nosanitize !30
  br i1 %2040, label %.loopexit267, label %2041, !prof !33, !nosanitize !30

2041:                                             ; preds = %2036
  %2042 = extractvalue { i32, i1 } %2039, 0, !nosanitize !30
  %2043 = sext i32 %2042 to i64
  %2044 = getelementptr inbounds [2 x i8], ptr %506, i64 %2043
  %2045 = load i16, ptr %2044, align 2, !tbaa !60
  %2046 = add i16 %2045, 2
  store i16 %2046, ptr %2044, align 2, !tbaa !60
  %2047 = load i16, ptr %2024, align 2, !tbaa !60
  %2048 = add i16 %2047, -1
  store i16 %2048, ptr %2024, align 2, !tbaa !60
  %2049 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2025, i32 -2)
  %2050 = extractvalue { i32, i1 } %2049, 1, !nosanitize !30
  br i1 %2050, label %.loopexit259, label %2051, !prof !33, !nosanitize !30

2051:                                             ; preds = %2041
  %2052 = extractvalue { i32, i1 } %2049, 0, !nosanitize !30
  %2053 = icmp sgt i32 %2052, 0
  br i1 %2053, label %.preheader266, label %2054, !llvm.loop !63

2054:                                             ; preds = %2051
  %2055 = icmp eq i32 %1930, 0
  br i1 %2055, label %.loopexit264, label %.preheader262

.preheader262:                                    ; preds = %2054, %2098
  %2056 = phi i64 [ %2099, %2098 ], [ %2023, %2054 ]
  %2057 = phi i32 [ %2064, %2098 ], [ 573, %2054 ]
  %2058 = getelementptr inbounds [2 x i8], ptr %506, i64 %2056
  %2059 = load i16, ptr %2058, align 2, !tbaa !60
  %2060 = icmp eq i16 %2059, 0
  br i1 %2060, label %.loopexit261, label %2061

2061:                                             ; preds = %.preheader262
  %2062 = zext i16 %2059 to i32
  %2063 = trunc i64 %2056 to i16
  br label %2067

.loopexit261:                                     ; preds = %2095, %.preheader262
  %2064 = phi i32 [ %2057, %.preheader262 ], [ %2076, %2095 ]
  %2065 = and i64 %2056, 4294967295
  %2066 = icmp eq i64 %2065, 2147483648
  br i1 %2066, label %.loopexit259, label %2098, !prof !33, !nosanitize !30

2067:                                             ; preds = %2095, %2061
  %2068 = phi i32 [ %2057, %2061 ], [ %2076, %2095 ]
  %2069 = phi i32 [ %2062, %2061 ], [ %2096, %2095 ]
  %2070 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2068, i32 -1)
  %2071 = extractvalue { i32, i1 } %2070, 1, !nosanitize !30
  br i1 %2071, label %.loopexit259, label %.preheader258, !prof !64, !nosanitize !30

2072:                                             ; preds = %.preheader258
  %2073 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2076, i32 -1)
  %2074 = extractvalue { i32, i1 } %2073, 1, !nosanitize !30
  br i1 %2074, label %.loopexit259, label %.preheader258, !prof !65, !llvm.loop !66, !nosanitize !30

.preheader258:                                    ; preds = %2067, %2072
  %2075 = phi { i32, i1 } [ %2073, %2072 ], [ %2070, %2067 ]
  %2076 = extractvalue { i32, i1 } %2075, 0, !nosanitize !30
  %2077 = sext i32 %2076 to i64
  %2078 = getelementptr inbounds [4 x i8], ptr %232, i64 %2077
  %2079 = load i32, ptr %2078, align 4, !tbaa !4
  %2080 = icmp sgt i32 %2079, %1922
  br i1 %2080, label %2072, label %2081, !llvm.loop !66

2081:                                             ; preds = %.preheader258
  %2082 = sext i32 %2079 to i64
  %2083 = getelementptr inbounds [4 x i8], ptr %1921, i64 %2082
  %2084 = getelementptr inbounds nuw i8, ptr %2083, i64 2
  %2085 = load i16, ptr %2084, align 2, !tbaa !28
  %2086 = zext i16 %2085 to i64
  %2087 = icmp eq i64 %2056, %2086
  br i1 %2087, label %2095, label %2088

2088:                                             ; preds = %2081
  %2089 = sub nsw i64 %2056, %2086
  %2090 = load i16, ptr %2083, align 2, !tbaa !28
  %2091 = zext i16 %2090 to i64
  %2092 = mul nsw i64 %2089, %2091
  %2093 = load i64, ptr %1945, align 8, !tbaa !50
  %2094 = add i64 %2092, %2093
  store i64 %2094, ptr %1945, align 8, !tbaa !50
  store i16 %2063, ptr %2084, align 2, !tbaa !28
  br label %2095

2095:                                             ; preds = %2088, %2081
  %2096 = add nsw i32 %2069, -1
  %2097 = icmp eq i32 %2096, 0
  br i1 %2097, label %.loopexit261, label %2067, !llvm.loop !66

2098:                                             ; preds = %.loopexit261
  %2099 = add nsw i64 %2056, -1
  %2100 = and i64 %2099, 4294967295
  %2101 = icmp eq i64 %2100, 0
  br i1 %2101, label %.loopexit264, label %.preheader262, !llvm.loop !67

.loopexit264:                                     ; preds = %2098, %2054, %2018, %1941
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %2102 = load i16, ptr %506, align 2, !tbaa !60
  %2103 = shl i16 %2102, 1
  %2104 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2103, ptr %2104, align 2, !tbaa !60
  %2105 = load i16, ptr %681, align 2, !tbaa !60
  %2106 = add i16 %2105, %2103
  %2107 = shl i16 %2106, 1
  %2108 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2107, ptr %2108, align 4, !tbaa !60
  %2109 = load i16, ptr %686, align 2, !tbaa !60
  %2110 = add i16 %2109, %2107
  %2111 = shl i16 %2110, 1
  %2112 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2111, ptr %2112, align 2, !tbaa !60
  %2113 = load i16, ptr %691, align 2, !tbaa !60
  %2114 = add i16 %2113, %2111
  %2115 = shl i16 %2114, 1
  %2116 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2115, ptr %2116, align 8, !tbaa !60
  %2117 = load i16, ptr %696, align 2, !tbaa !60
  %2118 = add i16 %2117, %2115
  %2119 = shl i16 %2118, 1
  %2120 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2119, ptr %2120, align 2, !tbaa !60
  %2121 = load i16, ptr %701, align 2, !tbaa !60
  %2122 = add i16 %2121, %2119
  %2123 = shl i16 %2122, 1
  %2124 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2123, ptr %2124, align 4, !tbaa !60
  %2125 = load i16, ptr %706, align 2, !tbaa !60
  %2126 = add i16 %2125, %2123
  %2127 = shl i16 %2126, 1
  %2128 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2127, ptr %2128, align 2, !tbaa !60
  %2129 = load i16, ptr %711, align 2, !tbaa !60
  %2130 = add i16 %2129, %2127
  %2131 = shl i16 %2130, 1
  %2132 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2131, ptr %2132, align 16, !tbaa !60
  %2133 = load i16, ptr %716, align 2, !tbaa !60
  %2134 = add i16 %2133, %2131
  %2135 = shl i16 %2134, 1
  %2136 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2135, ptr %2136, align 2, !tbaa !60
  %2137 = load i16, ptr %721, align 2, !tbaa !60
  %2138 = add i16 %2137, %2135
  %2139 = shl i16 %2138, 1
  %2140 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2139, ptr %2140, align 4, !tbaa !60
  %2141 = load i16, ptr %726, align 2, !tbaa !60
  %2142 = add i16 %2141, %2139
  %2143 = shl i16 %2142, 1
  %2144 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2143, ptr %2144, align 2, !tbaa !60
  %2145 = load i16, ptr %731, align 2, !tbaa !60
  %2146 = add i16 %2145, %2143
  %2147 = shl i16 %2146, 1
  %2148 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2147, ptr %2148, align 8, !tbaa !60
  %2149 = load i16, ptr %736, align 2, !tbaa !60
  %2150 = add i16 %2149, %2147
  %2151 = shl i16 %2150, 1
  %2152 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2151, ptr %2152, align 2, !tbaa !60
  %2153 = load i16, ptr %741, align 2, !tbaa !60
  %2154 = add i16 %2153, %2151
  %2155 = shl i16 %2154, 1
  %2156 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2155, ptr %2156, align 4, !tbaa !60
  %2157 = load i16, ptr %746, align 2, !tbaa !60
  %2158 = add i16 %2157, %2155
  %2159 = shl i16 %2158, 1
  %2160 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2159, ptr %2160, align 2, !tbaa !60
  %2161 = icmp slt i32 %1657, 0
  br i1 %2161, label %.loopexit257, label %.preheader

2162:                                             ; preds = %2215
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

.preheader:                                       ; preds = %.loopexit264, %2217
  %2163 = phi i64 [ %2218, %2217 ], [ 0, %.loopexit264 ]
  %2164 = getelementptr inbounds nuw [4 x i8], ptr %1592, i64 %2163
  %2165 = getelementptr inbounds nuw i8, ptr %2164, i64 2
  %2166 = load i16, ptr %2165, align 2, !tbaa !28
  %2167 = icmp eq i16 %2166, 0
  br i1 %2167, label %2215, label %2168

2168:                                             ; preds = %.preheader
  %2169 = zext i16 %2166 to i32
  %2170 = zext i16 %2166 to i64
  %2171 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %2170
  %2172 = load i16, ptr %2171, align 2, !tbaa !60
  %2173 = add i16 %2172, 1
  store i16 %2173, ptr %2171, align 2, !tbaa !60
  %2174 = and i32 %2169, 3
  %2175 = icmp ult i16 %2166, 4
  br i1 %2175, label %2200, label %2176

2176:                                             ; preds = %2168
  %2177 = and i32 %2169, 65532
  br label %2178

2178:                                             ; preds = %2178, %2176
  %2179 = phi i16 [ %2172, %2176 ], [ %2195, %2178 ]
  %2180 = phi i16 [ 0, %2176 ], [ %2194, %2178 ]
  %2181 = phi i32 [ 0, %2176 ], [ %2196, %2178 ]
  %2182 = and i16 %2179, 1
  %2183 = or disjoint i16 %2180, %2182
  %2184 = shl i16 %2183, 2
  %2185 = and i16 %2179, 2
  %2186 = or disjoint i16 %2184, %2185
  %2187 = lshr i16 %2179, 2
  %2188 = and i16 %2187, 1
  %2189 = or disjoint i16 %2186, %2188
  %2190 = shl i16 %2189, 1
  %2191 = lshr i16 %2179, 3
  %2192 = and i16 %2191, 1
  %2193 = or disjoint i16 %2190, %2192
  %2194 = shl i16 %2193, 1
  %2195 = lshr i16 %2179, 4
  %2196 = add nuw nsw i32 %2181, 4
  %2197 = icmp eq i32 %2196, %2177
  br i1 %2197, label %2198, label %2178, !llvm.loop !68

2198:                                             ; preds = %2178
  %2199 = icmp eq i32 %2174, 0
  br i1 %2199, label %.loopexit256, label %2200

2200:                                             ; preds = %2198, %2168
  %2201 = phi i16 [ %2172, %2168 ], [ %2195, %2198 ]
  %2202 = phi i16 [ 0, %2168 ], [ %2194, %2198 ]
  %2203 = icmp ne i32 %2174, 0
  tail call void @llvm.assume(i1 %2203)
  br label %2204

2204:                                             ; preds = %2204, %2200
  %2205 = phi i16 [ %2201, %2200 ], [ %2211, %2204 ]
  %2206 = phi i16 [ %2202, %2200 ], [ %2210, %2204 ]
  %2207 = phi i32 [ 0, %2200 ], [ %2212, %2204 ]
  %2208 = and i16 %2205, 1
  %2209 = or disjoint i16 %2206, %2208
  %2210 = shl i16 %2209, 1
  %2211 = lshr i16 %2205, 1
  %2212 = add nuw nsw i32 %2207, 1
  %2213 = icmp eq i32 %2212, %2174
  br i1 %2213, label %.loopexit256, label %2204, !llvm.loop !77

.loopexit256:                                     ; preds = %2204, %2198
  %2214 = phi i16 [ %2193, %2198 ], [ %2209, %2204 ]
  store i16 %2214, ptr %2164, align 2, !tbaa !28
  br label %2215

2215:                                             ; preds = %.loopexit256, %.preheader
  %2216 = icmp eq i64 %2163, 2147483647
  br i1 %2216, label %2162, label %2217, !prof !33, !nosanitize !30

2217:                                             ; preds = %2215
  %2218 = add nuw nsw i64 %2163, 1
  %2219 = trunc i64 %2218 to i32
  %2220 = icmp slt i32 %1657, %2219
  br i1 %2220, label %.loopexit257, label %.preheader, !llvm.loop !71

.loopexit257:                                     ; preds = %2217, %.loopexit264
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %2221 = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %2222 = load i16, ptr %2221, align 2, !tbaa !28
  %2223 = icmp eq i16 %2222, 0
  br i1 %2223, label %2224, label %2285

2224:                                             ; preds = %.loopexit257
  %2225 = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %2226 = load i16, ptr %2225, align 2, !tbaa !28
  %2227 = icmp eq i16 %2226, 0
  br i1 %2227, label %2228, label %2285

2228:                                             ; preds = %2224
  %2229 = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %2230 = load i16, ptr %2229, align 2, !tbaa !28
  %2231 = icmp eq i16 %2230, 0
  br i1 %2231, label %2232, label %2285

2232:                                             ; preds = %2228
  %2233 = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %2234 = load i16, ptr %2233, align 2, !tbaa !28
  %2235 = icmp eq i16 %2234, 0
  br i1 %2235, label %2236, label %2285

2236:                                             ; preds = %2232
  %2237 = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %2238 = load i16, ptr %2237, align 2, !tbaa !28
  %2239 = icmp eq i16 %2238, 0
  br i1 %2239, label %2240, label %2285

2240:                                             ; preds = %2236
  %2241 = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %2242 = load i16, ptr %2241, align 2, !tbaa !28
  %2243 = icmp eq i16 %2242, 0
  br i1 %2243, label %2244, label %2285

2244:                                             ; preds = %2240
  %2245 = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %2246 = load i16, ptr %2245, align 2, !tbaa !28
  %2247 = icmp eq i16 %2246, 0
  br i1 %2247, label %2248, label %2285

2248:                                             ; preds = %2244
  %2249 = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %2250 = load i16, ptr %2249, align 2, !tbaa !28
  %2251 = icmp eq i16 %2250, 0
  br i1 %2251, label %2252, label %2285

2252:                                             ; preds = %2248
  %2253 = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %2254 = load i16, ptr %2253, align 2, !tbaa !28
  %2255 = icmp eq i16 %2254, 0
  br i1 %2255, label %2256, label %2285

2256:                                             ; preds = %2252
  %2257 = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %2258 = load i16, ptr %2257, align 2, !tbaa !28
  %2259 = icmp eq i16 %2258, 0
  br i1 %2259, label %2260, label %2285

2260:                                             ; preds = %2256
  %2261 = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %2262 = load i16, ptr %2261, align 2, !tbaa !28
  %2263 = icmp eq i16 %2262, 0
  br i1 %2263, label %2264, label %2285

2264:                                             ; preds = %2260
  %2265 = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %2266 = load i16, ptr %2265, align 2, !tbaa !28
  %2267 = icmp eq i16 %2266, 0
  br i1 %2267, label %2268, label %2285

2268:                                             ; preds = %2264
  %2269 = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %2270 = load i16, ptr %2269, align 2, !tbaa !28
  %2271 = icmp eq i16 %2270, 0
  br i1 %2271, label %2272, label %2285

2272:                                             ; preds = %2268
  %2273 = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %2274 = load i16, ptr %2273, align 2, !tbaa !28
  %2275 = icmp eq i16 %2274, 0
  br i1 %2275, label %2276, label %2285

2276:                                             ; preds = %2272
  %2277 = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %2278 = load i16, ptr %2277, align 2, !tbaa !28
  %2279 = icmp eq i16 %2278, 0
  br i1 %2279, label %2280, label %2285

2280:                                             ; preds = %2276
  %2281 = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %2282 = load i16, ptr %2281, align 2, !tbaa !28
  %2283 = icmp eq i16 %2282, 0
  %2284 = select i1 %2283, i32 2, i32 3
  br label %2285

2285:                                             ; preds = %2280, %2276, %2272, %2268, %2264, %2260, %2256, %2252, %2248, %2244, %2240, %2236, %2232, %2228, %2224, %.loopexit257
  %2286 = phi i32 [ 18, %.loopexit257 ], [ 10, %2252 ], [ 17, %2224 ], [ %2284, %2280 ], [ 16, %2228 ], [ 8, %2260 ], [ 15, %2232 ], [ 4, %2276 ], [ 14, %2236 ], [ 9, %2256 ], [ 13, %2240 ], [ 5, %2272 ], [ 12, %2244 ], [ 7, %2264 ], [ 11, %2248 ], [ 6, %2268 ]
  %2287 = mul nuw nsw i32 %2286, 3
  %2288 = add nuw nsw i32 %2287, 17
  %2289 = zext nneg i32 %2288 to i64
  %2290 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2291 = load i64, ptr %2290, align 8, !tbaa !50
  %2292 = add i64 %2291, %2289
  store i64 %2292, ptr %2290, align 8, !tbaa !50
  %2293 = add i64 %2292, 10
  %2294 = lshr i64 %2293, 3
  %2295 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2296 = load i64, ptr %2295, align 8, !tbaa !51
  %2297 = add i64 %2296, 10
  %2298 = lshr i64 %2297, 3
  %2299 = icmp samesign ugt i64 %2298, %2294
  br i1 %2299, label %2300, label %2306

2300:                                             ; preds = %2285
  %2301 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2302 = load i32, ptr %2301, align 8, !tbaa !78
  %2303 = icmp eq i32 %2302, 4
  br i1 %2303, label %2306, label %2312

2304:                                             ; preds = %4
  %2305 = add i64 %2, 5
  br label %2306

2306:                                             ; preds = %2304, %2300, %2285
  %2307 = phi i64 [ %2305, %2304 ], [ %2298, %2300 ], [ %2298, %2285 ]
  %2308 = add i64 %2, 4
  %2309 = icmp ule i64 %2308, %2307
  %2310 = icmp ne ptr %1, null
  %2311 = and i1 %2310, %2309
  br i1 %2311, label %2317, label %2426

2312:                                             ; preds = %2300
  %2313 = add i64 %2, 4
  %2314 = icmp ule i64 %2313, %2294
  %2315 = icmp ne ptr %1, null
  %2316 = and i1 %2315, %2314
  br i1 %2316, label %2317, label %2784

2317:                                             ; preds = %2312, %2306
  %2318 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2319 = load i32, ptr %2318, align 4, !tbaa !26
  %2320 = icmp sgt i32 %2319, 13
  %2321 = shl i32 %3, %2319
  %2322 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2323 = load i16, ptr %2322, align 8, !tbaa !25
  %2324 = trunc i32 %2321 to i16
  %2325 = or i16 %2323, %2324
  store i16 %2325, ptr %2322, align 8, !tbaa !25
  br i1 %2320, label %2327, label %2351

2326:                                             ; preds = %2327
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2327:                                             ; preds = %2317
  %2328 = trunc i16 %2325 to i8
  %2329 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2330 = load ptr, ptr %2329, align 8, !tbaa !31
  %2331 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2332 = load i64, ptr %2331, align 8, !tbaa !32
  %2333 = add i64 %2332, 1
  store i64 %2333, ptr %2331, align 8, !tbaa !32
  %2334 = getelementptr inbounds nuw i8, ptr %2330, i64 %2332
  store i8 %2328, ptr %2334, align 1, !tbaa !28
  %2335 = load i16, ptr %2322, align 8, !tbaa !25
  %2336 = lshr i16 %2335, 8
  %2337 = trunc nuw i16 %2336 to i8
  %2338 = load ptr, ptr %2329, align 8, !tbaa !31
  %2339 = load i64, ptr %2331, align 8, !tbaa !32
  %2340 = add i64 %2339, 1
  store i64 %2340, ptr %2331, align 8, !tbaa !32
  %2341 = getelementptr inbounds nuw i8, ptr %2338, i64 %2339
  store i8 %2337, ptr %2341, align 1, !tbaa !28
  %2342 = load i32, ptr %2318, align 4, !tbaa !26
  %2343 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2342), !nosanitize !30
  %2344 = extractvalue { i32, i1 } %2343, 1, !nosanitize !30
  br i1 %2344, label %2326, label %2345, !prof !33, !nosanitize !30

2345:                                             ; preds = %2327
  %2346 = extractvalue { i32, i1 } %2343, 0, !nosanitize !30
  %2347 = and i32 %3, 65535
  %2348 = lshr i32 %2347, %2346
  %2349 = trunc nuw i32 %2348 to i16
  store i16 %2349, ptr %2322, align 8, !tbaa !25
  %2350 = add i32 %2342, -13
  br label %2353

2351:                                             ; preds = %2317
  %2352 = add nsw i32 %2319, 3
  br label %2353

2353:                                             ; preds = %2351, %2345
  %2354 = phi i16 [ %2349, %2345 ], [ %2325, %2351 ]
  %2355 = phi i32 [ %2350, %2345 ], [ %2352, %2351 ]
  store i32 %2355, ptr %2318, align 4, !tbaa !26
  %2356 = icmp sgt i32 %2355, 8
  br i1 %2356, label %2357, label %2372

2357:                                             ; preds = %2353
  %2358 = trunc i16 %2354 to i8
  %2359 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2360 = load ptr, ptr %2359, align 8, !tbaa !31
  %2361 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2362 = load i64, ptr %2361, align 8, !tbaa !32
  %2363 = add i64 %2362, 1
  store i64 %2363, ptr %2361, align 8, !tbaa !32
  %2364 = getelementptr inbounds nuw i8, ptr %2360, i64 %2362
  store i8 %2358, ptr %2364, align 1, !tbaa !28
  %2365 = load i16, ptr %2322, align 8, !tbaa !25
  %2366 = lshr i16 %2365, 8
  %2367 = trunc nuw i16 %2366 to i8
  %2368 = load ptr, ptr %2359, align 8, !tbaa !31
  %2369 = load i64, ptr %2361, align 8, !tbaa !32
  %2370 = add i64 %2369, 1
  store i64 %2370, ptr %2361, align 8, !tbaa !32
  %2371 = getelementptr inbounds nuw i8, ptr %2368, i64 %2369
  store i8 %2367, ptr %2371, align 1, !tbaa !28
  br label %2382

2372:                                             ; preds = %2353
  %2373 = icmp sgt i32 %2355, 0
  br i1 %2373, label %2374, label %2382

2374:                                             ; preds = %2372
  %2375 = trunc i16 %2354 to i8
  %2376 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2377 = load ptr, ptr %2376, align 8, !tbaa !31
  %2378 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2379 = load i64, ptr %2378, align 8, !tbaa !32
  %2380 = add i64 %2379, 1
  store i64 %2380, ptr %2378, align 8, !tbaa !32
  %2381 = getelementptr inbounds nuw i8, ptr %2377, i64 %2379
  store i8 %2375, ptr %2381, align 1, !tbaa !28
  br label %2382

2382:                                             ; preds = %2374, %2372, %2357
  %2383 = load i32, ptr %2318, align 4, !tbaa !26
  %2384 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2383, i32 -1)
  %2385 = extractvalue { i32, i1 } %2384, 1, !nosanitize !30
  br i1 %2385, label %2386, label %2387, !prof !33, !nosanitize !30

2386:                                             ; preds = %2382
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2387:                                             ; preds = %2382
  %2388 = extractvalue { i32, i1 } %2384, 0, !nosanitize !30
  %2389 = and i32 %2388, 7
  %2390 = add nuw nsw i32 %2389, 1
  %2391 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2390, ptr %2391, align 8, !tbaa !27
  store i16 0, ptr %2322, align 8, !tbaa !25
  store i32 0, ptr %2318, align 4, !tbaa !26
  %2392 = trunc i64 %2 to i8
  %2393 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2394 = load ptr, ptr %2393, align 8, !tbaa !31
  %2395 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2396 = load i64, ptr %2395, align 8, !tbaa !32
  %2397 = add i64 %2396, 1
  store i64 %2397, ptr %2395, align 8, !tbaa !32
  %2398 = getelementptr inbounds nuw i8, ptr %2394, i64 %2396
  store i8 %2392, ptr %2398, align 1, !tbaa !28
  %2399 = lshr i64 %2, 8
  %2400 = trunc i64 %2399 to i8
  %2401 = load ptr, ptr %2393, align 8, !tbaa !31
  %2402 = load i64, ptr %2395, align 8, !tbaa !32
  %2403 = add i64 %2402, 1
  store i64 %2403, ptr %2395, align 8, !tbaa !32
  %2404 = getelementptr inbounds nuw i8, ptr %2401, i64 %2402
  store i8 %2400, ptr %2404, align 1, !tbaa !28
  %2405 = trunc i64 %2 to i32
  %2406 = xor i32 %2405, 65535
  %2407 = trunc i32 %2406 to i8
  %2408 = load ptr, ptr %2393, align 8, !tbaa !31
  %2409 = load i64, ptr %2395, align 8, !tbaa !32
  %2410 = add i64 %2409, 1
  store i64 %2410, ptr %2395, align 8, !tbaa !32
  %2411 = getelementptr inbounds nuw i8, ptr %2408, i64 %2409
  store i8 %2407, ptr %2411, align 1, !tbaa !28
  %2412 = lshr i32 %2406, 8
  %2413 = trunc i32 %2412 to i8
  %2414 = load ptr, ptr %2393, align 8, !tbaa !31
  %2415 = load i64, ptr %2395, align 8, !tbaa !32
  %2416 = add i64 %2415, 1
  store i64 %2416, ptr %2395, align 8, !tbaa !32
  %2417 = getelementptr inbounds nuw i8, ptr %2414, i64 %2415
  store i8 %2413, ptr %2417, align 1, !tbaa !28
  %2418 = icmp eq i64 %2, 0
  br i1 %2418, label %2423, label %2419

2419:                                             ; preds = %2387
  %2420 = load ptr, ptr %2393, align 8, !tbaa !31
  %2421 = load i64, ptr %2395, align 8, !tbaa !32
  %2422 = getelementptr inbounds nuw i8, ptr %2420, i64 %2421
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2422, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2423

2423:                                             ; preds = %2419, %2387
  %2424 = load i64, ptr %2395, align 8, !tbaa !32
  %2425 = add i64 %2424, %2
  store i64 %2425, ptr %2395, align 8, !tbaa !32
  br label %4095

2426:                                             ; preds = %2306
  %2427 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2428 = load i32, ptr %2427, align 4, !tbaa !26
  %2429 = icmp sgt i32 %2428, 13
  %2430 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !30
  %2431 = extractvalue { i32, i1 } %2430, 1, !nosanitize !30
  br i1 %2429, label %2433, label %2466

2432:                                             ; preds = %2791, %2435
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2433:                                             ; preds = %2426
  br i1 %2431, label %2434, label %2435, !prof !33, !nosanitize !30

2434:                                             ; preds = %2840, %2832, %2822, %2815, %2790, %2466, %2459, %2433
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2435:                                             ; preds = %2433
  %2436 = extractvalue { i32, i1 } %2430, 0, !nosanitize !30
  %2437 = shl i32 %2436, %2428
  %2438 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2439 = load i16, ptr %2438, align 8, !tbaa !25
  %2440 = trunc i32 %2437 to i16
  %2441 = or i16 %2439, %2440
  store i16 %2441, ptr %2438, align 8, !tbaa !25
  %2442 = trunc i16 %2441 to i8
  %2443 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2444 = load ptr, ptr %2443, align 8, !tbaa !31
  %2445 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2446 = load i64, ptr %2445, align 8, !tbaa !32
  %2447 = add i64 %2446, 1
  store i64 %2447, ptr %2445, align 8, !tbaa !32
  %2448 = getelementptr inbounds nuw i8, ptr %2444, i64 %2446
  store i8 %2442, ptr %2448, align 1, !tbaa !28
  %2449 = load i16, ptr %2438, align 8, !tbaa !25
  %2450 = lshr i16 %2449, 8
  %2451 = trunc nuw i16 %2450 to i8
  %2452 = load ptr, ptr %2443, align 8, !tbaa !31
  %2453 = load i64, ptr %2445, align 8, !tbaa !32
  %2454 = add i64 %2453, 1
  store i64 %2454, ptr %2445, align 8, !tbaa !32
  %2455 = getelementptr inbounds nuw i8, ptr %2452, i64 %2453
  store i8 %2451, ptr %2455, align 1, !tbaa !28
  %2456 = load i32, ptr %2427, align 4, !tbaa !26
  %2457 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2456), !nosanitize !30
  %2458 = extractvalue { i32, i1 } %2457, 1, !nosanitize !30
  br i1 %2458, label %2432, label %2459, !prof !33, !nosanitize !30

2459:                                             ; preds = %2435
  %2460 = extractvalue { i32, i1 } %2457, 0, !nosanitize !30
  %2461 = and i32 %2436, 65535
  %2462 = lshr i32 %2461, %2460
  %2463 = trunc nuw i32 %2462 to i16
  store i16 %2463, ptr %2438, align 8, !tbaa !25
  %2464 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2456, i32 -13), !nosanitize !30
  %2465 = extractvalue { i32, i1 } %2464, 1, !nosanitize !30
  br i1 %2465, label %2434, label %2476, !prof !33, !nosanitize !30

2466:                                             ; preds = %2426
  br i1 %2431, label %2434, label %2467, !prof !33, !nosanitize !30

2467:                                             ; preds = %2466
  %2468 = extractvalue { i32, i1 } %2430, 0, !nosanitize !30
  %2469 = shl i32 %2468, %2428
  %2470 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2471 = load i16, ptr %2470, align 8, !tbaa !25
  %2472 = trunc i32 %2469 to i16
  %2473 = or i16 %2471, %2472
  store i16 %2473, ptr %2470, align 8, !tbaa !25
  %2474 = add nsw i32 %2428, 3
  %2475 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2474, 0
  br label %2476

2476:                                             ; preds = %2467, %2459
  %2477 = phi i16 [ %2463, %2459 ], [ %2473, %2467 ]
  %2478 = phi { i32, i1 } [ %2464, %2459 ], [ %2475, %2467 ]
  %2479 = extractvalue { i32, i1 } %2478, 0
  store i32 %2479, ptr %2427, align 4, !tbaa !26
  %2480 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2481 = load i32, ptr %2480, align 4, !tbaa !29
  %2482 = icmp eq i32 %2481, 0
  br i1 %2482, label %.loopexit238, label %2483

2483:                                             ; preds = %2476
  %2484 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2485 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2486 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2487 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %2488

2488:                                             ; preds = %2748, %2483
  %2489 = phi i16 [ %2749, %2748 ], [ %2477, %2483 ]
  %2490 = phi i32 [ %2750, %2748 ], [ %2479, %2483 ]
  %2491 = phi i32 [ %2505, %2748 ], [ 0, %2483 ]
  %2492 = load ptr, ptr %2484, align 8, !tbaa !79
  %2493 = add nuw i32 %2491, 1
  %2494 = zext i32 %2491 to i64
  %2495 = getelementptr inbounds nuw i8, ptr %2492, i64 %2494
  %2496 = load i8, ptr %2495, align 1, !tbaa !28
  %2497 = zext i8 %2496 to i32
  %2498 = add i32 %2491, 2
  %2499 = zext i32 %2493 to i64
  %2500 = getelementptr inbounds nuw i8, ptr %2492, i64 %2499
  %2501 = load i8, ptr %2500, align 1, !tbaa !28
  %2502 = zext i8 %2501 to i32
  %2503 = shl nuw nsw i32 %2502, 8
  %2504 = or disjoint i32 %2503, %2497
  %2505 = add i32 %2491, 3
  %2506 = zext i32 %2498 to i64
  %2507 = getelementptr inbounds nuw i8, ptr %2492, i64 %2506
  %2508 = load i8, ptr %2507, align 1, !tbaa !28
  %2509 = zext i8 %2508 to i32
  %2510 = icmp eq i32 %2504, 0
  %2511 = zext i8 %2508 to i64
  br i1 %2510, label %2512, label %2550

2512:                                             ; preds = %2488
  %2513 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2511
  %2514 = getelementptr inbounds nuw i8, ptr %2513, i64 2
  %2515 = load i16, ptr %2514, align 2, !tbaa !28
  %2516 = zext i16 %2515 to i32
  %2517 = sub nsw i32 16, %2516
  %2518 = icmp sgt i32 %2490, %2517
  %2519 = load i16, ptr %2513, align 4, !tbaa !28
  %2520 = zext i16 %2519 to i32
  %2521 = shl i32 %2520, %2490
  %2522 = trunc i32 %2521 to i16
  %2523 = or i16 %2489, %2522
  store i16 %2523, ptr %2485, align 8, !tbaa !25
  br i1 %2518, label %2524, label %2547

.loopexit:                                        ; preds = %2730, %2714, %2702, %2670, %2631, %2615, %2606, %2600, %2566, %2524, %2757
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2524:                                             ; preds = %2512
  %2525 = trunc i16 %2523 to i8
  %2526 = load ptr, ptr %2486, align 8, !tbaa !31
  %2527 = load i64, ptr %2487, align 8, !tbaa !32
  %2528 = add i64 %2527, 1
  store i64 %2528, ptr %2487, align 8, !tbaa !32
  %2529 = getelementptr inbounds nuw i8, ptr %2526, i64 %2527
  store i8 %2525, ptr %2529, align 1, !tbaa !28
  %2530 = load i16, ptr %2485, align 8, !tbaa !25
  %2531 = lshr i16 %2530, 8
  %2532 = trunc nuw i16 %2531 to i8
  %2533 = load ptr, ptr %2486, align 8, !tbaa !31
  %2534 = load i64, ptr %2487, align 8, !tbaa !32
  %2535 = add i64 %2534, 1
  store i64 %2535, ptr %2487, align 8, !tbaa !32
  %2536 = getelementptr inbounds nuw i8, ptr %2533, i64 %2534
  store i8 %2532, ptr %2536, align 1, !tbaa !28
  %2537 = load i32, ptr %2427, align 4, !tbaa !26
  %2538 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2537), !nosanitize !30
  %2539 = extractvalue { i32, i1 } %2538, 1, !nosanitize !30
  br i1 %2539, label %.loopexit, label %2540, !prof !33, !nosanitize !30

2540:                                             ; preds = %2524
  %2541 = extractvalue { i32, i1 } %2538, 0, !nosanitize !30
  %2542 = lshr i32 %2520, %2541
  %2543 = trunc nuw i32 %2542 to i16
  store i16 %2543, ptr %2485, align 8, !tbaa !25
  %2544 = add nsw i32 %2516, -16
  %2545 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2537, i32 %2544), !nosanitize !30
  %2546 = extractvalue { i32, i1 } %2545, 1, !nosanitize !30
  br i1 %2546, label %.loopexit237, label %2744, !prof !33, !nosanitize !30

.loopexit237:                                     ; preds = %2741, %2737, %2686, %2642, %2638, %2582, %2540, %2775
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2547:                                             ; preds = %2512
  %2548 = add nsw i32 %2490, %2516
  %2549 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2548, 0
  br label %2744

2550:                                             ; preds = %2488
  %2551 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %2511
  %2552 = load i8, ptr %2551, align 1, !tbaa !28
  %2553 = zext i8 %2552 to i64
  %2554 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2553
  %2555 = getelementptr inbounds nuw i8, ptr %2554, i64 1028
  %2556 = getelementptr inbounds nuw i8, ptr %2554, i64 1030
  %2557 = load i16, ptr %2556, align 2, !tbaa !28
  %2558 = zext i16 %2557 to i32
  %2559 = sub nsw i32 16, %2558
  %2560 = icmp sgt i32 %2490, %2559
  %2561 = load i16, ptr %2555, align 4, !tbaa !28
  %2562 = zext i16 %2561 to i32
  %2563 = shl i32 %2562, %2490
  %2564 = trunc i32 %2563 to i16
  %2565 = or i16 %2489, %2564
  store i16 %2565, ptr %2485, align 8, !tbaa !25
  br i1 %2560, label %2566, label %2589

2566:                                             ; preds = %2550
  %2567 = trunc i16 %2565 to i8
  %2568 = load ptr, ptr %2486, align 8, !tbaa !31
  %2569 = load i64, ptr %2487, align 8, !tbaa !32
  %2570 = add i64 %2569, 1
  store i64 %2570, ptr %2487, align 8, !tbaa !32
  %2571 = getelementptr inbounds nuw i8, ptr %2568, i64 %2569
  store i8 %2567, ptr %2571, align 1, !tbaa !28
  %2572 = load i16, ptr %2485, align 8, !tbaa !25
  %2573 = lshr i16 %2572, 8
  %2574 = trunc nuw i16 %2573 to i8
  %2575 = load ptr, ptr %2486, align 8, !tbaa !31
  %2576 = load i64, ptr %2487, align 8, !tbaa !32
  %2577 = add i64 %2576, 1
  store i64 %2577, ptr %2487, align 8, !tbaa !32
  %2578 = getelementptr inbounds nuw i8, ptr %2575, i64 %2576
  store i8 %2574, ptr %2578, align 1, !tbaa !28
  %2579 = load i32, ptr %2427, align 4, !tbaa !26
  %2580 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2579), !nosanitize !30
  %2581 = extractvalue { i32, i1 } %2580, 1, !nosanitize !30
  br i1 %2581, label %.loopexit, label %2582, !prof !33, !nosanitize !30

2582:                                             ; preds = %2566
  %2583 = extractvalue { i32, i1 } %2580, 0, !nosanitize !30
  %2584 = lshr i32 %2562, %2583
  %2585 = trunc nuw i32 %2584 to i16
  store i16 %2585, ptr %2485, align 8, !tbaa !25
  %2586 = add nsw i32 %2558, -16
  %2587 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2579, i32 %2586), !nosanitize !30
  %2588 = extractvalue { i32, i1 } %2587, 1, !nosanitize !30
  br i1 %2588, label %.loopexit237, label %2592, !prof !33, !nosanitize !30

2589:                                             ; preds = %2550
  %2590 = add nsw i32 %2490, %2558
  %2591 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2590, 0
  br label %2592

2592:                                             ; preds = %2589, %2582
  %2593 = phi i16 [ %2585, %2582 ], [ %2565, %2589 ]
  %2594 = phi { i32, i1 } [ %2587, %2582 ], [ %2591, %2589 ]
  %2595 = extractvalue { i32, i1 } %2594, 0
  store i32 %2595, ptr %2427, align 4, !tbaa !26
  %2596 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %2553
  %2597 = load i32, ptr %2596, align 4, !tbaa !4
  %2598 = add i8 %2552, -28
  %2599 = icmp ult i8 %2598, -20
  br i1 %2599, label %2649, label %2600

2600:                                             ; preds = %2592
  %2601 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %2553
  %2602 = load i32, ptr %2601, align 4, !tbaa !4
  %2603 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2509, i32 %2602), !nosanitize !30
  %2604 = extractvalue { i32, i1 } %2603, 0, !nosanitize !30
  %2605 = extractvalue { i32, i1 } %2603, 1, !nosanitize !30
  br i1 %2605, label %.loopexit, label %2606, !prof !33, !nosanitize !30

2606:                                             ; preds = %2600
  %2607 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2597), !nosanitize !30
  %2608 = extractvalue { i32, i1 } %2607, 1, !nosanitize !30
  br i1 %2608, label %.loopexit, label %2609, !prof !33, !nosanitize !30

2609:                                             ; preds = %2606
  %2610 = extractvalue { i32, i1 } %2607, 0, !nosanitize !30
  %2611 = icmp sgt i32 %2595, %2610
  %2612 = shl i32 %2604, %2595
  %2613 = trunc i32 %2612 to i16
  %2614 = or i16 %2593, %2613
  store i16 %2614, ptr %2485, align 8, !tbaa !25
  br i1 %2611, label %2615, label %2642

2615:                                             ; preds = %2609
  %2616 = trunc i16 %2614 to i8
  %2617 = load ptr, ptr %2486, align 8, !tbaa !31
  %2618 = load i64, ptr %2487, align 8, !tbaa !32
  %2619 = add i64 %2618, 1
  store i64 %2619, ptr %2487, align 8, !tbaa !32
  %2620 = getelementptr inbounds nuw i8, ptr %2617, i64 %2618
  store i8 %2616, ptr %2620, align 1, !tbaa !28
  %2621 = load i16, ptr %2485, align 8, !tbaa !25
  %2622 = lshr i16 %2621, 8
  %2623 = trunc nuw i16 %2622 to i8
  %2624 = load ptr, ptr %2486, align 8, !tbaa !31
  %2625 = load i64, ptr %2487, align 8, !tbaa !32
  %2626 = add i64 %2625, 1
  store i64 %2626, ptr %2487, align 8, !tbaa !32
  %2627 = getelementptr inbounds nuw i8, ptr %2624, i64 %2625
  store i8 %2623, ptr %2627, align 1, !tbaa !28
  %2628 = load i32, ptr %2427, align 4, !tbaa !26
  %2629 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2628), !nosanitize !30
  %2630 = extractvalue { i32, i1 } %2629, 1, !nosanitize !30
  br i1 %2630, label %.loopexit, label %2631, !prof !33, !nosanitize !30

2631:                                             ; preds = %2615
  %2632 = extractvalue { i32, i1 } %2629, 0, !nosanitize !30
  %2633 = and i32 %2604, 65535
  %2634 = lshr i32 %2633, %2632
  %2635 = trunc nuw i32 %2634 to i16
  store i16 %2635, ptr %2485, align 8, !tbaa !25
  %2636 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2597, i32 -16)
  %2637 = extractvalue { i32, i1 } %2636, 1, !nosanitize !30
  br i1 %2637, label %.loopexit, label %2638, !prof !33, !nosanitize !30

2638:                                             ; preds = %2631
  %2639 = extractvalue { i32, i1 } %2636, 0, !nosanitize !30
  %2640 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2628, i32 %2639), !nosanitize !30
  %2641 = extractvalue { i32, i1 } %2640, 1, !nosanitize !30
  br i1 %2641, label %.loopexit237, label %2645, !prof !33, !nosanitize !30

2642:                                             ; preds = %2609
  %2643 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2595, i32 %2597), !nosanitize !30
  %2644 = extractvalue { i32, i1 } %2643, 1, !nosanitize !30
  br i1 %2644, label %.loopexit237, label %2645, !prof !33, !nosanitize !30

2645:                                             ; preds = %2642, %2638
  %2646 = phi i16 [ %2635, %2638 ], [ %2614, %2642 ]
  %2647 = phi { i32, i1 } [ %2640, %2638 ], [ %2643, %2642 ]
  %2648 = extractvalue { i32, i1 } %2647, 0
  store i32 %2648, ptr %2427, align 4, !tbaa !26
  br label %2649

2649:                                             ; preds = %2645, %2592
  %2650 = phi i16 [ %2646, %2645 ], [ %2593, %2592 ]
  %2651 = phi i32 [ %2648, %2645 ], [ %2595, %2592 ]
  %2652 = add nsw i32 %2504, -1
  %2653 = icmp samesign ult i32 %2504, 257
  %2654 = zext nneg i32 %2652 to i64
  %2655 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2654
  %2656 = lshr i32 %2652, 7
  %2657 = zext nneg i32 %2656 to i64
  %2658 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2657
  %2659 = getelementptr inbounds nuw i8, ptr %2658, i64 256
  %2660 = select i1 %2653, ptr %2655, ptr %2659
  %2661 = load i8, ptr %2660, align 1, !tbaa !28
  %2662 = zext i8 %2661 to i64
  %2663 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %2662
  %2664 = icmp sgt i32 %2651, 11
  %2665 = load i16, ptr %2663, align 4, !tbaa !28
  %2666 = zext i16 %2665 to i32
  %2667 = shl i32 %2666, %2651
  %2668 = trunc i32 %2667 to i16
  %2669 = or i16 %2650, %2668
  store i16 %2669, ptr %2485, align 8, !tbaa !25
  br i1 %2664, label %2670, label %2692

2670:                                             ; preds = %2649
  %2671 = trunc i16 %2669 to i8
  %2672 = load ptr, ptr %2486, align 8, !tbaa !31
  %2673 = load i64, ptr %2487, align 8, !tbaa !32
  %2674 = add i64 %2673, 1
  store i64 %2674, ptr %2487, align 8, !tbaa !32
  %2675 = getelementptr inbounds nuw i8, ptr %2672, i64 %2673
  store i8 %2671, ptr %2675, align 1, !tbaa !28
  %2676 = load i16, ptr %2485, align 8, !tbaa !25
  %2677 = lshr i16 %2676, 8
  %2678 = trunc nuw i16 %2677 to i8
  %2679 = load ptr, ptr %2486, align 8, !tbaa !31
  %2680 = load i64, ptr %2487, align 8, !tbaa !32
  %2681 = add i64 %2680, 1
  store i64 %2681, ptr %2487, align 8, !tbaa !32
  %2682 = getelementptr inbounds nuw i8, ptr %2679, i64 %2680
  store i8 %2678, ptr %2682, align 1, !tbaa !28
  %2683 = load i32, ptr %2427, align 4, !tbaa !26
  %2684 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2683), !nosanitize !30
  %2685 = extractvalue { i32, i1 } %2684, 1, !nosanitize !30
  br i1 %2685, label %.loopexit, label %2686, !prof !33, !nosanitize !30

2686:                                             ; preds = %2670
  %2687 = extractvalue { i32, i1 } %2684, 0, !nosanitize !30
  %2688 = lshr i32 %2666, %2687
  %2689 = trunc nuw i32 %2688 to i16
  store i16 %2689, ptr %2485, align 8, !tbaa !25
  %2690 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2683, i32 -11), !nosanitize !30
  %2691 = extractvalue { i32, i1 } %2690, 1, !nosanitize !30
  br i1 %2691, label %.loopexit237, label %2695, !prof !33, !nosanitize !30

2692:                                             ; preds = %2649
  %2693 = add nsw i32 %2651, 5
  %2694 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2693, 0
  br label %2695

2695:                                             ; preds = %2692, %2686
  %2696 = phi i16 [ %2689, %2686 ], [ %2669, %2692 ]
  %2697 = phi { i32, i1 } [ %2690, %2686 ], [ %2694, %2692 ]
  %2698 = extractvalue { i32, i1 } %2697, 0
  store i32 %2698, ptr %2427, align 4, !tbaa !26
  %2699 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %2662
  %2700 = load i32, ptr %2699, align 4, !tbaa !4
  %2701 = icmp ult i8 %2661, 4
  br i1 %2701, label %2748, label %2702

2702:                                             ; preds = %2695
  %2703 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %2662
  %2704 = load i32, ptr %2703, align 4, !tbaa !4
  %2705 = sub i32 %2652, %2704
  %2706 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2700), !nosanitize !30
  %2707 = extractvalue { i32, i1 } %2706, 1, !nosanitize !30
  br i1 %2707, label %.loopexit, label %2708, !prof !33, !nosanitize !30

2708:                                             ; preds = %2702
  %2709 = extractvalue { i32, i1 } %2706, 0, !nosanitize !30
  %2710 = icmp sgt i32 %2698, %2709
  %2711 = shl i32 %2705, %2698
  %2712 = trunc i32 %2711 to i16
  %2713 = or i16 %2696, %2712
  store i16 %2713, ptr %2485, align 8, !tbaa !25
  br i1 %2710, label %2714, label %2741

2714:                                             ; preds = %2708
  %2715 = trunc i16 %2713 to i8
  %2716 = load ptr, ptr %2486, align 8, !tbaa !31
  %2717 = load i64, ptr %2487, align 8, !tbaa !32
  %2718 = add i64 %2717, 1
  store i64 %2718, ptr %2487, align 8, !tbaa !32
  %2719 = getelementptr inbounds nuw i8, ptr %2716, i64 %2717
  store i8 %2715, ptr %2719, align 1, !tbaa !28
  %2720 = load i16, ptr %2485, align 8, !tbaa !25
  %2721 = lshr i16 %2720, 8
  %2722 = trunc nuw i16 %2721 to i8
  %2723 = load ptr, ptr %2486, align 8, !tbaa !31
  %2724 = load i64, ptr %2487, align 8, !tbaa !32
  %2725 = add i64 %2724, 1
  store i64 %2725, ptr %2487, align 8, !tbaa !32
  %2726 = getelementptr inbounds nuw i8, ptr %2723, i64 %2724
  store i8 %2722, ptr %2726, align 1, !tbaa !28
  %2727 = load i32, ptr %2427, align 4, !tbaa !26
  %2728 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2727), !nosanitize !30
  %2729 = extractvalue { i32, i1 } %2728, 1, !nosanitize !30
  br i1 %2729, label %.loopexit, label %2730, !prof !33, !nosanitize !30

2730:                                             ; preds = %2714
  %2731 = extractvalue { i32, i1 } %2728, 0, !nosanitize !30
  %2732 = and i32 %2705, 65535
  %2733 = lshr i32 %2732, %2731
  %2734 = trunc nuw i32 %2733 to i16
  store i16 %2734, ptr %2485, align 8, !tbaa !25
  %2735 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2700, i32 -16)
  %2736 = extractvalue { i32, i1 } %2735, 1, !nosanitize !30
  br i1 %2736, label %.loopexit, label %2737, !prof !33, !nosanitize !30

2737:                                             ; preds = %2730
  %2738 = extractvalue { i32, i1 } %2735, 0, !nosanitize !30
  %2739 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2727, i32 %2738), !nosanitize !30
  %2740 = extractvalue { i32, i1 } %2739, 1, !nosanitize !30
  br i1 %2740, label %.loopexit237, label %2744, !prof !33, !nosanitize !30

2741:                                             ; preds = %2708
  %2742 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2698, i32 %2700), !nosanitize !30
  %2743 = extractvalue { i32, i1 } %2742, 1, !nosanitize !30
  br i1 %2743, label %.loopexit237, label %2744, !prof !33, !nosanitize !30

2744:                                             ; preds = %2741, %2737, %2547, %2540
  %2745 = phi i16 [ %2523, %2547 ], [ %2543, %2540 ], [ %2734, %2737 ], [ %2713, %2741 ]
  %2746 = phi { i32, i1 } [ %2549, %2547 ], [ %2545, %2540 ], [ %2739, %2737 ], [ %2742, %2741 ]
  %2747 = extractvalue { i32, i1 } %2746, 0
  store i32 %2747, ptr %2427, align 4, !tbaa !26
  br label %2748

2748:                                             ; preds = %2744, %2695
  %2749 = phi i16 [ %2696, %2695 ], [ %2745, %2744 ]
  %2750 = phi i32 [ %2698, %2695 ], [ %2747, %2744 ]
  %2751 = load i32, ptr %2480, align 4, !tbaa !29
  %2752 = icmp ult i32 %2505, %2751
  br i1 %2752, label %2488, label %.loopexit238, !llvm.loop !80

.loopexit238:                                     ; preds = %2748, %2476
  %2753 = phi i16 [ %2477, %2476 ], [ %2749, %2748 ]
  %2754 = phi i32 [ %2479, %2476 ], [ %2750, %2748 ]
  %2755 = icmp sgt i32 %2754, 9
  %2756 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %2755, label %2757, label %2778

2757:                                             ; preds = %.loopexit238
  %2758 = trunc i16 %2753 to i8
  %2759 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2760 = load ptr, ptr %2759, align 8, !tbaa !31
  %2761 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2762 = load i64, ptr %2761, align 8, !tbaa !32
  %2763 = add i64 %2762, 1
  store i64 %2763, ptr %2761, align 8, !tbaa !32
  %2764 = getelementptr inbounds nuw i8, ptr %2760, i64 %2762
  store i8 %2758, ptr %2764, align 1, !tbaa !28
  %2765 = load i16, ptr %2756, align 8, !tbaa !25
  %2766 = lshr i16 %2765, 8
  %2767 = trunc nuw i16 %2766 to i8
  %2768 = load ptr, ptr %2759, align 8, !tbaa !31
  %2769 = load i64, ptr %2761, align 8, !tbaa !32
  %2770 = add i64 %2769, 1
  store i64 %2770, ptr %2761, align 8, !tbaa !32
  %2771 = getelementptr inbounds nuw i8, ptr %2768, i64 %2769
  store i8 %2767, ptr %2771, align 1, !tbaa !28
  %2772 = load i32, ptr %2427, align 4, !tbaa !26
  %2773 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2772), !nosanitize !30
  %2774 = extractvalue { i32, i1 } %2773, 1, !nosanitize !30
  br i1 %2774, label %.loopexit, label %2775, !prof !33, !nosanitize !30

2775:                                             ; preds = %2757
  store i16 0, ptr %2756, align 8, !tbaa !25
  %2776 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2772, i32 -9), !nosanitize !30
  %2777 = extractvalue { i32, i1 } %2776, 1, !nosanitize !30
  br i1 %2777, label %.loopexit237, label %2781, !prof !33, !nosanitize !30

2778:                                             ; preds = %.loopexit238
  %2779 = add nsw i32 %2754, 7
  %2780 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2779, 0
  br label %2781

2781:                                             ; preds = %2778, %2775
  %2782 = phi { i32, i1 } [ %2776, %2775 ], [ %2780, %2778 ]
  %2783 = extractvalue { i32, i1 } %2782, 0
  store i32 %2783, ptr %2427, align 4, !tbaa !26
  br label %4095

2784:                                             ; preds = %2312
  %2785 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2786 = load i32, ptr %2785, align 4, !tbaa !26
  %2787 = icmp sgt i32 %2786, 13
  %2788 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !30
  %2789 = extractvalue { i32, i1 } %2788, 1, !nosanitize !30
  br i1 %2787, label %2790, label %2822

2790:                                             ; preds = %2784
  br i1 %2789, label %2434, label %2791, !prof !33, !nosanitize !30

2791:                                             ; preds = %2790
  %2792 = extractvalue { i32, i1 } %2788, 0, !nosanitize !30
  %2793 = shl i32 %2792, %2786
  %2794 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2795 = load i16, ptr %2794, align 8, !tbaa !25
  %2796 = trunc i32 %2793 to i16
  %2797 = or i16 %2795, %2796
  store i16 %2797, ptr %2794, align 8, !tbaa !25
  %2798 = trunc i16 %2797 to i8
  %2799 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2800 = load ptr, ptr %2799, align 8, !tbaa !31
  %2801 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2802 = load i64, ptr %2801, align 8, !tbaa !32
  %2803 = add i64 %2802, 1
  store i64 %2803, ptr %2801, align 8, !tbaa !32
  %2804 = getelementptr inbounds nuw i8, ptr %2800, i64 %2802
  store i8 %2798, ptr %2804, align 1, !tbaa !28
  %2805 = load i16, ptr %2794, align 8, !tbaa !25
  %2806 = lshr i16 %2805, 8
  %2807 = trunc nuw i16 %2806 to i8
  %2808 = load ptr, ptr %2799, align 8, !tbaa !31
  %2809 = load i64, ptr %2801, align 8, !tbaa !32
  %2810 = add i64 %2809, 1
  store i64 %2810, ptr %2801, align 8, !tbaa !32
  %2811 = getelementptr inbounds nuw i8, ptr %2808, i64 %2809
  store i8 %2807, ptr %2811, align 1, !tbaa !28
  %2812 = load i32, ptr %2785, align 4, !tbaa !26
  %2813 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2812), !nosanitize !30
  %2814 = extractvalue { i32, i1 } %2813, 1, !nosanitize !30
  br i1 %2814, label %2432, label %2815, !prof !33, !nosanitize !30

2815:                                             ; preds = %2791
  %2816 = extractvalue { i32, i1 } %2813, 0, !nosanitize !30
  %2817 = and i32 %2792, 65535
  %2818 = lshr i32 %2817, %2816
  %2819 = trunc nuw i32 %2818 to i16
  store i16 %2819, ptr %2794, align 8, !tbaa !25
  %2820 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2812, i32 -13), !nosanitize !30
  %2821 = extractvalue { i32, i1 } %2820, 1, !nosanitize !30
  br i1 %2821, label %2434, label %2832, !prof !33, !nosanitize !30

2822:                                             ; preds = %2784
  br i1 %2789, label %2434, label %2823, !prof !33, !nosanitize !30

2823:                                             ; preds = %2822
  %2824 = extractvalue { i32, i1 } %2788, 0, !nosanitize !30
  %2825 = shl i32 %2824, %2786
  %2826 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2827 = load i16, ptr %2826, align 8, !tbaa !25
  %2828 = trunc i32 %2825 to i16
  %2829 = or i16 %2827, %2828
  store i16 %2829, ptr %2826, align 8, !tbaa !25
  %2830 = add nsw i32 %2786, 3
  %2831 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2830, 0
  br label %2832

2832:                                             ; preds = %2823, %2815
  %2833 = phi i16 [ %2819, %2815 ], [ %2829, %2823 ]
  %2834 = phi { i32, i1 } [ %2820, %2815 ], [ %2831, %2823 ]
  %2835 = extractvalue { i32, i1 } %2834, 0
  store i32 %2835, ptr %2785, align 4, !tbaa !26
  %2836 = load i32, ptr %231, align 8, !tbaa !73
  %2837 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2836, i32 1), !nosanitize !30
  %2838 = extractvalue { i32, i1 } %2837, 0, !nosanitize !30
  %2839 = extractvalue { i32, i1 } %2837, 1, !nosanitize !30
  br i1 %2839, label %2434, label %2840, !prof !33, !nosanitize !30

2840:                                             ; preds = %2832
  %2841 = load i32, ptr %879, align 8, !tbaa !76
  %2842 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2841, i32 1), !nosanitize !30
  %2843 = extractvalue { i32, i1 } %2842, 0, !nosanitize !30
  %2844 = extractvalue { i32, i1 } %2842, 1, !nosanitize !30
  br i1 %2844, label %2434, label %2845, !prof !33, !nosanitize !30

2845:                                             ; preds = %2840
  %2846 = add nuw nsw i32 %2286, 1
  %2847 = icmp sgt i32 %2835, 11
  %2848 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2838, i32 -257)
  %2849 = extractvalue { i32, i1 } %2848, 1, !nosanitize !30
  br i1 %2847, label %2850, label %2881

.loopexit254:                                     ; preds = %3000, %.loopexit253, %3031, %2944, %2928, %2898, %2897, %2881, %2851, %2850
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

2850:                                             ; preds = %2845
  br i1 %2849, label %.loopexit254, label %2851, !prof !33, !nosanitize !30

2851:                                             ; preds = %2850
  %2852 = extractvalue { i32, i1 } %2848, 0, !nosanitize !30
  %2853 = shl i32 %2852, %2835
  %2854 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2855 = trunc i32 %2853 to i16
  %2856 = or i16 %2833, %2855
  store i16 %2856, ptr %2854, align 8, !tbaa !25
  %2857 = trunc i16 %2856 to i8
  %2858 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2859 = load ptr, ptr %2858, align 8, !tbaa !31
  %2860 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2861 = load i64, ptr %2860, align 8, !tbaa !32
  %2862 = add i64 %2861, 1
  store i64 %2862, ptr %2860, align 8, !tbaa !32
  %2863 = getelementptr inbounds nuw i8, ptr %2859, i64 %2861
  store i8 %2857, ptr %2863, align 1, !tbaa !28
  %2864 = load i16, ptr %2854, align 8, !tbaa !25
  %2865 = lshr i16 %2864, 8
  %2866 = trunc nuw i16 %2865 to i8
  %2867 = load ptr, ptr %2858, align 8, !tbaa !31
  %2868 = load i64, ptr %2860, align 8, !tbaa !32
  %2869 = add i64 %2868, 1
  store i64 %2869, ptr %2860, align 8, !tbaa !32
  %2870 = getelementptr inbounds nuw i8, ptr %2867, i64 %2868
  store i8 %2866, ptr %2870, align 1, !tbaa !28
  %2871 = load i32, ptr %2785, align 4, !tbaa !26
  %2872 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2871), !nosanitize !30
  %2873 = extractvalue { i32, i1 } %2872, 1, !nosanitize !30
  br i1 %2873, label %.loopexit254, label %2874, !prof !33, !nosanitize !30

2874:                                             ; preds = %2851
  %2875 = extractvalue { i32, i1 } %2872, 0, !nosanitize !30
  %2876 = and i32 %2852, 65535
  %2877 = lshr i32 %2876, %2875
  %2878 = trunc nuw i32 %2877 to i16
  store i16 %2878, ptr %2854, align 8, !tbaa !25
  %2879 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2871, i32 -11), !nosanitize !30
  %2880 = extractvalue { i32, i1 } %2879, 1, !nosanitize !30
  br i1 %2880, label %.loopexit255, label %2890, !prof !33, !nosanitize !30

.loopexit255:                                     ; preds = %3016, %2965, %2921, %2874
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

2881:                                             ; preds = %2845
  br i1 %2849, label %.loopexit254, label %2882, !prof !33, !nosanitize !30

2882:                                             ; preds = %2881
  %2883 = extractvalue { i32, i1 } %2848, 0, !nosanitize !30
  %2884 = shl i32 %2883, %2835
  %2885 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2886 = trunc i32 %2884 to i16
  %2887 = or i16 %2833, %2886
  store i16 %2887, ptr %2885, align 8, !tbaa !25
  %2888 = add nsw i32 %2835, 5
  %2889 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2888, 0
  br label %2890

2890:                                             ; preds = %2882, %2874
  %2891 = phi i16 [ %2878, %2874 ], [ %2887, %2882 ]
  %2892 = phi { i32, i1 } [ %2879, %2874 ], [ %2889, %2882 ]
  %2893 = extractvalue { i32, i1 } %2892, 0
  store i32 %2893, ptr %2785, align 4, !tbaa !26
  %2894 = icmp sgt i32 %2893, 11
  %2895 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2843, i32 -1)
  %2896 = extractvalue { i32, i1 } %2895, 1, !nosanitize !30
  br i1 %2894, label %2897, label %2928

2897:                                             ; preds = %2890
  br i1 %2896, label %.loopexit254, label %2898, !prof !33, !nosanitize !30

2898:                                             ; preds = %2897
  %2899 = extractvalue { i32, i1 } %2895, 0, !nosanitize !30
  %2900 = shl i32 %2899, %2893
  %2901 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2902 = trunc i32 %2900 to i16
  %2903 = or i16 %2891, %2902
  store i16 %2903, ptr %2901, align 8, !tbaa !25
  %2904 = trunc i16 %2903 to i8
  %2905 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2906 = load ptr, ptr %2905, align 8, !tbaa !31
  %2907 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2908 = load i64, ptr %2907, align 8, !tbaa !32
  %2909 = add i64 %2908, 1
  store i64 %2909, ptr %2907, align 8, !tbaa !32
  %2910 = getelementptr inbounds nuw i8, ptr %2906, i64 %2908
  store i8 %2904, ptr %2910, align 1, !tbaa !28
  %2911 = load i16, ptr %2901, align 8, !tbaa !25
  %2912 = lshr i16 %2911, 8
  %2913 = trunc nuw i16 %2912 to i8
  %2914 = load ptr, ptr %2905, align 8, !tbaa !31
  %2915 = load i64, ptr %2907, align 8, !tbaa !32
  %2916 = add i64 %2915, 1
  store i64 %2916, ptr %2907, align 8, !tbaa !32
  %2917 = getelementptr inbounds nuw i8, ptr %2914, i64 %2915
  store i8 %2913, ptr %2917, align 1, !tbaa !28
  %2918 = load i32, ptr %2785, align 4, !tbaa !26
  %2919 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2918), !nosanitize !30
  %2920 = extractvalue { i32, i1 } %2919, 1, !nosanitize !30
  br i1 %2920, label %.loopexit254, label %2921, !prof !33, !nosanitize !30

2921:                                             ; preds = %2898
  %2922 = extractvalue { i32, i1 } %2919, 0, !nosanitize !30
  %2923 = and i32 %2899, 65535
  %2924 = lshr i32 %2923, %2922
  %2925 = trunc nuw i32 %2924 to i16
  store i16 %2925, ptr %2901, align 8, !tbaa !25
  %2926 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2918, i32 -11), !nosanitize !30
  %2927 = extractvalue { i32, i1 } %2926, 1, !nosanitize !30
  br i1 %2927, label %.loopexit255, label %2937, !prof !33, !nosanitize !30

2928:                                             ; preds = %2890
  br i1 %2896, label %.loopexit254, label %2929, !prof !33, !nosanitize !30

2929:                                             ; preds = %2928
  %2930 = extractvalue { i32, i1 } %2895, 0, !nosanitize !30
  %2931 = shl i32 %2930, %2893
  %2932 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2933 = trunc i32 %2931 to i16
  %2934 = or i16 %2891, %2933
  store i16 %2934, ptr %2932, align 8, !tbaa !25
  %2935 = add nsw i32 %2893, 5
  %2936 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2935, 0
  br label %2937

2937:                                             ; preds = %2929, %2921
  %2938 = phi i16 [ %2925, %2921 ], [ %2934, %2929 ]
  %2939 = phi { i32, i1 } [ %2926, %2921 ], [ %2936, %2929 ]
  %2940 = extractvalue { i32, i1 } %2939, 0
  store i32 %2940, ptr %2785, align 4, !tbaa !26
  %2941 = icmp sgt i32 %2940, 12
  %2942 = add nsw i32 %2286, -3
  %2943 = shl i32 %2942, %2940
  br i1 %2941, label %2944, label %2972

2944:                                             ; preds = %2937
  %2945 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2946 = trunc i32 %2943 to i16
  %2947 = or i16 %2938, %2946
  store i16 %2947, ptr %2945, align 8, !tbaa !25
  %2948 = trunc i16 %2947 to i8
  %2949 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2950 = load ptr, ptr %2949, align 8, !tbaa !31
  %2951 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2952 = load i64, ptr %2951, align 8, !tbaa !32
  %2953 = add i64 %2952, 1
  store i64 %2953, ptr %2951, align 8, !tbaa !32
  %2954 = getelementptr inbounds nuw i8, ptr %2950, i64 %2952
  store i8 %2948, ptr %2954, align 1, !tbaa !28
  %2955 = load i16, ptr %2945, align 8, !tbaa !25
  %2956 = lshr i16 %2955, 8
  %2957 = trunc nuw i16 %2956 to i8
  %2958 = load ptr, ptr %2949, align 8, !tbaa !31
  %2959 = load i64, ptr %2951, align 8, !tbaa !32
  %2960 = add i64 %2959, 1
  store i64 %2960, ptr %2951, align 8, !tbaa !32
  %2961 = getelementptr inbounds nuw i8, ptr %2958, i64 %2959
  store i8 %2957, ptr %2961, align 1, !tbaa !28
  %2962 = load i32, ptr %2785, align 4, !tbaa !26
  %2963 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2962), !nosanitize !30
  %2964 = extractvalue { i32, i1 } %2963, 1, !nosanitize !30
  br i1 %2964, label %.loopexit254, label %2965, !prof !33, !nosanitize !30

2965:                                             ; preds = %2944
  %2966 = extractvalue { i32, i1 } %2963, 0, !nosanitize !30
  %2967 = and i32 %2942, 65535
  %2968 = lshr i32 %2967, %2966
  %2969 = trunc nuw i32 %2968 to i16
  store i16 %2969, ptr %2945, align 8, !tbaa !25
  %2970 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2962, i32 -12), !nosanitize !30
  %2971 = extractvalue { i32, i1 } %2970, 1, !nosanitize !30
  br i1 %2971, label %.loopexit255, label %2977, !prof !33, !nosanitize !30

2972:                                             ; preds = %2937
  %2973 = trunc i32 %2943 to i16
  %2974 = or i16 %2938, %2973
  %2975 = add nsw i32 %2940, 4
  %2976 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2975, 0
  br label %2977

2977:                                             ; preds = %2972, %2965
  %2978 = phi i16 [ %2969, %2965 ], [ %2974, %2972 ]
  %2979 = phi { i32, i1 } [ %2970, %2965 ], [ %2976, %2972 ]
  %2980 = extractvalue { i32, i1 } %2979, 0
  store i32 %2980, ptr %2785, align 4, !tbaa !26
  %2981 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2982 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2983 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2984 = zext nneg i32 %2846 to i64
  br label %2985

2985:                                             ; preds = %3025, %2977
  %2986 = phi i16 [ %2978, %2977 ], [ %3026, %3025 ]
  %2987 = phi i32 [ %2980, %2977 ], [ %3028, %3025 ]
  %2988 = phi i64 [ 0, %2977 ], [ %3029, %3025 ]
  %2989 = icmp sgt i32 %2987, 13
  %2990 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %2988
  %2991 = load i8, ptr %2990, align 1, !tbaa !28
  %2992 = zext i8 %2991 to i64
  %2993 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2992
  %2994 = getelementptr inbounds nuw i8, ptr %2993, i64 2750
  %2995 = load i16, ptr %2994, align 2, !tbaa !28
  %2996 = zext i16 %2995 to i32
  %2997 = shl i32 %2996, %2987
  %2998 = trunc i32 %2997 to i16
  %2999 = or i16 %2986, %2998
  store i16 %2999, ptr %2981, align 8, !tbaa !25
  br i1 %2989, label %3000, label %3022

3000:                                             ; preds = %2985
  %3001 = trunc i16 %2999 to i8
  %3002 = load ptr, ptr %2982, align 8, !tbaa !31
  %3003 = load i64, ptr %2983, align 8, !tbaa !32
  %3004 = add i64 %3003, 1
  store i64 %3004, ptr %2983, align 8, !tbaa !32
  %3005 = getelementptr inbounds nuw i8, ptr %3002, i64 %3003
  store i8 %3001, ptr %3005, align 1, !tbaa !28
  %3006 = load i16, ptr %2981, align 8, !tbaa !25
  %3007 = lshr i16 %3006, 8
  %3008 = trunc nuw i16 %3007 to i8
  %3009 = load ptr, ptr %2982, align 8, !tbaa !31
  %3010 = load i64, ptr %2983, align 8, !tbaa !32
  %3011 = add i64 %3010, 1
  store i64 %3011, ptr %2983, align 8, !tbaa !32
  %3012 = getelementptr inbounds nuw i8, ptr %3009, i64 %3010
  store i8 %3008, ptr %3012, align 1, !tbaa !28
  %3013 = load i32, ptr %2785, align 4, !tbaa !26
  %3014 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3013), !nosanitize !30
  %3015 = extractvalue { i32, i1 } %3014, 1, !nosanitize !30
  br i1 %3015, label %.loopexit254, label %3016, !prof !33, !nosanitize !30

3016:                                             ; preds = %3000
  %3017 = extractvalue { i32, i1 } %3014, 0, !nosanitize !30
  %3018 = lshr i32 %2996, %3017
  %3019 = trunc nuw i32 %3018 to i16
  store i16 %3019, ptr %2981, align 8, !tbaa !25
  %3020 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3013, i32 -13), !nosanitize !30
  %3021 = extractvalue { i32, i1 } %3020, 1, !nosanitize !30
  br i1 %3021, label %.loopexit255, label %3025, !prof !33, !nosanitize !30

3022:                                             ; preds = %2985
  %3023 = add nsw i32 %2987, 3
  %3024 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3023, 0
  br label %3025

3025:                                             ; preds = %3022, %3016
  %3026 = phi i16 [ %3019, %3016 ], [ %2999, %3022 ]
  %3027 = phi { i32, i1 } [ %3020, %3016 ], [ %3024, %3022 ]
  %3028 = extractvalue { i32, i1 } %3027, 0
  store i32 %3028, ptr %2785, align 4, !tbaa !26
  %3029 = add nuw nsw i64 %2988, 1
  %3030 = icmp eq i64 %3029, %2984
  br i1 %3030, label %3031, label %2985, !llvm.loop !81

3031:                                             ; preds = %3025
  %3032 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2838, i32 -1)
  %3033 = extractvalue { i32, i1 } %3032, 1, !nosanitize !30
  br i1 %3033, label %.loopexit254, label %3034, !prof !33, !nosanitize !30

3034:                                             ; preds = %3031
  %3035 = extractvalue { i32, i1 } %3032, 0, !nosanitize !30
  %3036 = icmp slt i32 %3035, 0
  br i1 %3036, label %.loopexit253, label %3037

3037:                                             ; preds = %3034
  %3038 = load i16, ptr %1446, align 2, !tbaa !28
  %3039 = icmp eq i16 %3038, 0
  %3040 = select i1 %3039, i32 138, i32 7
  %3041 = select i1 %3039, i32 3, i32 4
  %3042 = zext i16 %3038 to i32
  %3043 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3044 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3045 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3046 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3047 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3048 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3049 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %3050 = add i32 %2836, 1
  %wide.trip.count511 = zext i32 %3050 to i64
  br label %3052

3051:                                             ; preds = %3397
  %indvars.iv.next510 = add nuw nsw i64 %indvars.iv509, 1
  %exitcond513 = icmp eq i64 %indvars.iv.next510, 2147483648
  br i1 %exitcond513, label %.loopexit249, label %3052, !prof !74, !llvm.loop !82, !nosanitize !30

.loopexit249:                                     ; preds = %3377, %3342, %3306, %3271, %3233, %3198, %3155, %3051, %3103
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3052:                                             ; preds = %3051, %3037
  %indvars.iv509 = phi i64 [ %indvars.iv.next510, %3051 ], [ 1, %3037 ]
  %3053 = phi i32 [ %3400, %3051 ], [ %3041, %3037 ]
  %3054 = phi i32 [ %3401, %3051 ], [ %3040, %3037 ]
  %3055 = phi i32 [ %3402, %3051 ], [ 0, %3037 ]
  %3056 = phi i32 [ %3063, %3051 ], [ %3042, %3037 ]
  %3057 = phi i32 [ %3403, %3051 ], [ -1, %3037 ]
  %3058 = phi i32 [ %3399, %3051 ], [ %3028, %3037 ]
  %3059 = phi i16 [ %3398, %3051 ], [ %3026, %3037 ]
  %3060 = getelementptr [4 x i8], ptr %0, i64 %indvars.iv509
  %3061 = getelementptr i8, ptr %3060, i64 214
  %3062 = load i16, ptr %3061, align 2, !tbaa !28
  %3063 = zext i16 %3062 to i32
  %3064 = add nsw i32 %3055, 1
  %3065 = icmp slt i32 %3064, %3054
  %3066 = icmp eq i32 %3056, %3063
  %3067 = select i1 %3065, i1 %3066, i1 false
  br i1 %3067, label %3397, label %3068

3068:                                             ; preds = %3052
  %3069 = icmp slt i32 %3064, %3053
  br i1 %3069, label %3070, label %3122

3070:                                             ; preds = %3068
  %3071 = zext nneg i32 %3056 to i64
  %3072 = getelementptr inbounds nuw [4 x i8], ptr %3043, i64 %3071
  %3073 = getelementptr inbounds nuw i8, ptr %3072, i64 2
  br label %3074

3074:                                             ; preds = %3119, %3070
  %3075 = phi i16 [ %3114, %3119 ], [ %3059, %3070 ]
  %3076 = phi i32 [ %3116, %3119 ], [ %3058, %3070 ]
  %3077 = phi i32 [ %3120, %3119 ], [ %3064, %3070 ]
  %3078 = load i16, ptr %3073, align 2, !tbaa !28
  %3079 = zext i16 %3078 to i32
  %3080 = sub nsw i32 16, %3079
  %3081 = icmp sgt i32 %3076, %3080
  %3082 = load i16, ptr %3072, align 4, !tbaa !28
  %3083 = zext i16 %3082 to i32
  %3084 = shl i32 %3083, %3076
  %3085 = trunc i32 %3084 to i16
  %3086 = or i16 %3075, %3085
  store i16 %3086, ptr %2981, align 8, !tbaa !25
  br i1 %3081, label %3087, label %3110

.loopexit248:                                     ; preds = %3361, %3326, %3290, %3255, %3217, %3182, %3139, %3113, %3087
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

3087:                                             ; preds = %3074
  %3088 = trunc i16 %3086 to i8
  %3089 = load ptr, ptr %2982, align 8, !tbaa !31
  %3090 = load i64, ptr %2983, align 8, !tbaa !32
  %3091 = add i64 %3090, 1
  store i64 %3091, ptr %2983, align 8, !tbaa !32
  %3092 = getelementptr inbounds nuw i8, ptr %3089, i64 %3090
  store i8 %3088, ptr %3092, align 1, !tbaa !28
  %3093 = load i16, ptr %2981, align 8, !tbaa !25
  %3094 = lshr i16 %3093, 8
  %3095 = trunc nuw i16 %3094 to i8
  %3096 = load ptr, ptr %2982, align 8, !tbaa !31
  %3097 = load i64, ptr %2983, align 8, !tbaa !32
  %3098 = add i64 %3097, 1
  store i64 %3098, ptr %2983, align 8, !tbaa !32
  %3099 = getelementptr inbounds nuw i8, ptr %3096, i64 %3097
  store i8 %3095, ptr %3099, align 1, !tbaa !28
  %3100 = load i32, ptr %2785, align 4, !tbaa !26
  %3101 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3100), !nosanitize !30
  %3102 = extractvalue { i32, i1 } %3101, 1, !nosanitize !30
  br i1 %3102, label %.loopexit248, label %3103, !prof !33, !nosanitize !30

3103:                                             ; preds = %3087
  %3104 = extractvalue { i32, i1 } %3101, 0, !nosanitize !30
  %3105 = lshr i32 %3083, %3104
  %3106 = trunc nuw i32 %3105 to i16
  store i16 %3106, ptr %2981, align 8, !tbaa !25
  %3107 = add nsw i32 %3079, -16
  %3108 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3100, i32 %3107), !nosanitize !30
  %3109 = extractvalue { i32, i1 } %3108, 1, !nosanitize !30
  br i1 %3109, label %.loopexit249, label %3113, !prof !33, !nosanitize !30

3110:                                             ; preds = %3074
  %3111 = add nsw i32 %3076, %3079
  %3112 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3111, 0
  br label %3113

3113:                                             ; preds = %3110, %3103
  %3114 = phi i16 [ %3106, %3103 ], [ %3086, %3110 ]
  %3115 = phi { i32, i1 } [ %3108, %3103 ], [ %3112, %3110 ]
  %3116 = extractvalue { i32, i1 } %3115, 0
  store i32 %3116, ptr %2785, align 4, !tbaa !26
  %3117 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3077, i32 -1)
  %3118 = extractvalue { i32, i1 } %3117, 1, !nosanitize !30
  br i1 %3118, label %.loopexit248, label %3119, !prof !33, !nosanitize !30

3119:                                             ; preds = %3113
  %3120 = extractvalue { i32, i1 } %3117, 0, !nosanitize !30
  %3121 = icmp eq i32 %3120, 0
  br i1 %3121, label %.loopexit250, label %3074, !llvm.loop !83

3122:                                             ; preds = %3068
  %3123 = icmp eq i32 %3056, 0
  br i1 %3123, label %3243, label %3124

3124:                                             ; preds = %3122
  %3125 = icmp eq i32 %3056, %3057
  br i1 %3125, label %3169, label %3126

3126:                                             ; preds = %3124
  %3127 = zext nneg i32 %3056 to i64
  %3128 = getelementptr inbounds nuw [4 x i8], ptr %3043, i64 %3127
  %3129 = getelementptr inbounds nuw i8, ptr %3128, i64 2
  %3130 = load i16, ptr %3129, align 2, !tbaa !28
  %3131 = zext i16 %3130 to i32
  %3132 = sub nsw i32 16, %3131
  %3133 = icmp sgt i32 %3058, %3132
  %3134 = load i16, ptr %3128, align 4, !tbaa !28
  %3135 = zext i16 %3134 to i32
  %3136 = shl i32 %3135, %3058
  %3137 = trunc i32 %3136 to i16
  %3138 = or i16 %3059, %3137
  store i16 %3138, ptr %2981, align 8, !tbaa !25
  br i1 %3133, label %3139, label %3162

3139:                                             ; preds = %3126
  %3140 = trunc i16 %3138 to i8
  %3141 = load ptr, ptr %2982, align 8, !tbaa !31
  %3142 = load i64, ptr %2983, align 8, !tbaa !32
  %3143 = add i64 %3142, 1
  store i64 %3143, ptr %2983, align 8, !tbaa !32
  %3144 = getelementptr inbounds nuw i8, ptr %3141, i64 %3142
  store i8 %3140, ptr %3144, align 1, !tbaa !28
  %3145 = load i16, ptr %2981, align 8, !tbaa !25
  %3146 = lshr i16 %3145, 8
  %3147 = trunc nuw i16 %3146 to i8
  %3148 = load ptr, ptr %2982, align 8, !tbaa !31
  %3149 = load i64, ptr %2983, align 8, !tbaa !32
  %3150 = add i64 %3149, 1
  store i64 %3150, ptr %2983, align 8, !tbaa !32
  %3151 = getelementptr inbounds nuw i8, ptr %3148, i64 %3149
  store i8 %3147, ptr %3151, align 1, !tbaa !28
  %3152 = load i32, ptr %2785, align 4, !tbaa !26
  %3153 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3152), !nosanitize !30
  %3154 = extractvalue { i32, i1 } %3153, 1, !nosanitize !30
  br i1 %3154, label %.loopexit248, label %3155, !prof !33, !nosanitize !30

3155:                                             ; preds = %3139
  %3156 = extractvalue { i32, i1 } %3153, 0, !nosanitize !30
  %3157 = lshr i32 %3135, %3156
  %3158 = trunc nuw i32 %3157 to i16
  store i16 %3158, ptr %2981, align 8, !tbaa !25
  %3159 = add nsw i32 %3131, -16
  %3160 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3152, i32 %3159), !nosanitize !30
  %3161 = extractvalue { i32, i1 } %3160, 1, !nosanitize !30
  br i1 %3161, label %.loopexit249, label %3165, !prof !33, !nosanitize !30

3162:                                             ; preds = %3126
  %3163 = add nsw i32 %3058, %3131
  %3164 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3163, 0
  br label %3165

3165:                                             ; preds = %3162, %3155
  %3166 = phi i16 [ %3158, %3155 ], [ %3138, %3162 ]
  %3167 = phi { i32, i1 } [ %3160, %3155 ], [ %3164, %3162 ]
  %3168 = extractvalue { i32, i1 } %3167, 0
  store i32 %3168, ptr %2785, align 4, !tbaa !26
  br label %3169

3169:                                             ; preds = %3165, %3124
  %3170 = phi i16 [ %3166, %3165 ], [ %3059, %3124 ]
  %3171 = phi i32 [ %3168, %3165 ], [ %3058, %3124 ]
  %3172 = phi i32 [ %3055, %3165 ], [ %3064, %3124 ]
  %3173 = load i16, ptr %3045, align 2, !tbaa !28
  %3174 = zext i16 %3173 to i32
  %3175 = sub nsw i32 16, %3174
  %3176 = icmp sgt i32 %3171, %3175
  %3177 = load i16, ptr %3044, align 4, !tbaa !28
  %3178 = zext i16 %3177 to i32
  %3179 = shl i32 %3178, %3171
  %3180 = trunc i32 %3179 to i16
  %3181 = or i16 %3170, %3180
  br i1 %3176, label %3182, label %3205

3182:                                             ; preds = %3169
  store i16 %3181, ptr %2981, align 8, !tbaa !25
  %3183 = trunc i16 %3181 to i8
  %3184 = load ptr, ptr %2982, align 8, !tbaa !31
  %3185 = load i64, ptr %2983, align 8, !tbaa !32
  %3186 = add i64 %3185, 1
  store i64 %3186, ptr %2983, align 8, !tbaa !32
  %3187 = getelementptr inbounds nuw i8, ptr %3184, i64 %3185
  store i8 %3183, ptr %3187, align 1, !tbaa !28
  %3188 = load i16, ptr %2981, align 8, !tbaa !25
  %3189 = lshr i16 %3188, 8
  %3190 = trunc nuw i16 %3189 to i8
  %3191 = load ptr, ptr %2982, align 8, !tbaa !31
  %3192 = load i64, ptr %2983, align 8, !tbaa !32
  %3193 = add i64 %3192, 1
  store i64 %3193, ptr %2983, align 8, !tbaa !32
  %3194 = getelementptr inbounds nuw i8, ptr %3191, i64 %3192
  store i8 %3190, ptr %3194, align 1, !tbaa !28
  %3195 = load i32, ptr %2785, align 4, !tbaa !26
  %3196 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3195), !nosanitize !30
  %3197 = extractvalue { i32, i1 } %3196, 1, !nosanitize !30
  br i1 %3197, label %.loopexit248, label %3198, !prof !33, !nosanitize !30

3198:                                             ; preds = %3182
  %3199 = extractvalue { i32, i1 } %3196, 0, !nosanitize !30
  %3200 = lshr i32 %3178, %3199
  %3201 = trunc nuw i32 %3200 to i16
  %3202 = add nsw i32 %3174, -16
  %3203 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3195, i32 %3202), !nosanitize !30
  %3204 = extractvalue { i32, i1 } %3203, 1, !nosanitize !30
  br i1 %3204, label %.loopexit249, label %3208, !prof !33, !nosanitize !30

3205:                                             ; preds = %3169
  %3206 = add nsw i32 %3171, %3174
  %3207 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3206, 0
  br label %3208

3208:                                             ; preds = %3205, %3198
  %3209 = phi i16 [ %3201, %3198 ], [ %3181, %3205 ]
  %3210 = phi { i32, i1 } [ %3203, %3198 ], [ %3207, %3205 ]
  %3211 = extractvalue { i32, i1 } %3210, 0
  store i32 %3211, ptr %2785, align 4, !tbaa !26
  %3212 = icmp sgt i32 %3211, 14
  %3213 = add i32 %3172, 65533
  %3214 = shl i32 %3213, %3211
  %3215 = trunc i32 %3214 to i16
  %3216 = or i16 %3209, %3215
  store i16 %3216, ptr %2981, align 8, !tbaa !25
  br i1 %3212, label %3217, label %3240

3217:                                             ; preds = %3208
  %3218 = trunc i16 %3216 to i8
  %3219 = load ptr, ptr %2982, align 8, !tbaa !31
  %3220 = load i64, ptr %2983, align 8, !tbaa !32
  %3221 = add i64 %3220, 1
  store i64 %3221, ptr %2983, align 8, !tbaa !32
  %3222 = getelementptr inbounds nuw i8, ptr %3219, i64 %3220
  store i8 %3218, ptr %3222, align 1, !tbaa !28
  %3223 = load i16, ptr %2981, align 8, !tbaa !25
  %3224 = lshr i16 %3223, 8
  %3225 = trunc nuw i16 %3224 to i8
  %3226 = load ptr, ptr %2982, align 8, !tbaa !31
  %3227 = load i64, ptr %2983, align 8, !tbaa !32
  %3228 = add i64 %3227, 1
  store i64 %3228, ptr %2983, align 8, !tbaa !32
  %3229 = getelementptr inbounds nuw i8, ptr %3226, i64 %3227
  store i8 %3225, ptr %3229, align 1, !tbaa !28
  %3230 = load i32, ptr %2785, align 4, !tbaa !26
  %3231 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3230), !nosanitize !30
  %3232 = extractvalue { i32, i1 } %3231, 1, !nosanitize !30
  br i1 %3232, label %.loopexit248, label %3233, !prof !33, !nosanitize !30

3233:                                             ; preds = %3217
  %3234 = extractvalue { i32, i1 } %3231, 0, !nosanitize !30
  %3235 = and i32 %3213, 65535
  %3236 = lshr i32 %3235, %3234
  %3237 = trunc nuw i32 %3236 to i16
  store i16 %3237, ptr %2981, align 8, !tbaa !25
  %3238 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3230, i32 -14), !nosanitize !30
  %3239 = extractvalue { i32, i1 } %3238, 1, !nosanitize !30
  br i1 %3239, label %.loopexit249, label %3387, !prof !33, !nosanitize !30

3240:                                             ; preds = %3208
  %3241 = add nsw i32 %3211, 2
  %3242 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3241, 0
  br label %3387

3243:                                             ; preds = %3122
  %3244 = icmp slt i32 %3055, 10
  br i1 %3244, label %3245, label %3316

3245:                                             ; preds = %3243
  %3246 = load i16, ptr %3049, align 2, !tbaa !28
  %3247 = zext i16 %3246 to i32
  %3248 = sub nsw i32 16, %3247
  %3249 = icmp sgt i32 %3058, %3248
  %3250 = load i16, ptr %3048, align 4, !tbaa !28
  %3251 = zext i16 %3250 to i32
  %3252 = shl i32 %3251, %3058
  %3253 = trunc i32 %3252 to i16
  %3254 = or i16 %3059, %3253
  br i1 %3249, label %3255, label %3278

3255:                                             ; preds = %3245
  store i16 %3254, ptr %2981, align 8, !tbaa !25
  %3256 = trunc i16 %3254 to i8
  %3257 = load ptr, ptr %2982, align 8, !tbaa !31
  %3258 = load i64, ptr %2983, align 8, !tbaa !32
  %3259 = add i64 %3258, 1
  store i64 %3259, ptr %2983, align 8, !tbaa !32
  %3260 = getelementptr inbounds nuw i8, ptr %3257, i64 %3258
  store i8 %3256, ptr %3260, align 1, !tbaa !28
  %3261 = load i16, ptr %2981, align 8, !tbaa !25
  %3262 = lshr i16 %3261, 8
  %3263 = trunc nuw i16 %3262 to i8
  %3264 = load ptr, ptr %2982, align 8, !tbaa !31
  %3265 = load i64, ptr %2983, align 8, !tbaa !32
  %3266 = add i64 %3265, 1
  store i64 %3266, ptr %2983, align 8, !tbaa !32
  %3267 = getelementptr inbounds nuw i8, ptr %3264, i64 %3265
  store i8 %3263, ptr %3267, align 1, !tbaa !28
  %3268 = load i32, ptr %2785, align 4, !tbaa !26
  %3269 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3268), !nosanitize !30
  %3270 = extractvalue { i32, i1 } %3269, 1, !nosanitize !30
  br i1 %3270, label %.loopexit248, label %3271, !prof !33, !nosanitize !30

3271:                                             ; preds = %3255
  %3272 = extractvalue { i32, i1 } %3269, 0, !nosanitize !30
  %3273 = lshr i32 %3251, %3272
  %3274 = trunc nuw i32 %3273 to i16
  %3275 = add nsw i32 %3247, -16
  %3276 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3268, i32 %3275), !nosanitize !30
  %3277 = extractvalue { i32, i1 } %3276, 1, !nosanitize !30
  br i1 %3277, label %.loopexit249, label %3281, !prof !33, !nosanitize !30

3278:                                             ; preds = %3245
  %3279 = add nsw i32 %3058, %3247
  %3280 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3279, 0
  br label %3281

3281:                                             ; preds = %3278, %3271
  %3282 = phi i16 [ %3274, %3271 ], [ %3254, %3278 ]
  %3283 = phi { i32, i1 } [ %3276, %3271 ], [ %3280, %3278 ]
  %3284 = extractvalue { i32, i1 } %3283, 0
  store i32 %3284, ptr %2785, align 4, !tbaa !26
  %3285 = icmp sgt i32 %3284, 13
  %3286 = add nsw i32 %3055, 65534
  %3287 = shl i32 %3286, %3284
  %3288 = trunc i32 %3287 to i16
  %3289 = or i16 %3282, %3288
  store i16 %3289, ptr %2981, align 8, !tbaa !25
  br i1 %3285, label %3290, label %3313

3290:                                             ; preds = %3281
  %3291 = trunc i16 %3289 to i8
  %3292 = load ptr, ptr %2982, align 8, !tbaa !31
  %3293 = load i64, ptr %2983, align 8, !tbaa !32
  %3294 = add i64 %3293, 1
  store i64 %3294, ptr %2983, align 8, !tbaa !32
  %3295 = getelementptr inbounds nuw i8, ptr %3292, i64 %3293
  store i8 %3291, ptr %3295, align 1, !tbaa !28
  %3296 = load i16, ptr %2981, align 8, !tbaa !25
  %3297 = lshr i16 %3296, 8
  %3298 = trunc nuw i16 %3297 to i8
  %3299 = load ptr, ptr %2982, align 8, !tbaa !31
  %3300 = load i64, ptr %2983, align 8, !tbaa !32
  %3301 = add i64 %3300, 1
  store i64 %3301, ptr %2983, align 8, !tbaa !32
  %3302 = getelementptr inbounds nuw i8, ptr %3299, i64 %3300
  store i8 %3298, ptr %3302, align 1, !tbaa !28
  %3303 = load i32, ptr %2785, align 4, !tbaa !26
  %3304 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3303), !nosanitize !30
  %3305 = extractvalue { i32, i1 } %3304, 1, !nosanitize !30
  br i1 %3305, label %.loopexit248, label %3306, !prof !33, !nosanitize !30

3306:                                             ; preds = %3290
  %3307 = extractvalue { i32, i1 } %3304, 0, !nosanitize !30
  %3308 = and i32 %3286, 65535
  %3309 = lshr i32 %3308, %3307
  %3310 = trunc nuw i32 %3309 to i16
  store i16 %3310, ptr %2981, align 8, !tbaa !25
  %3311 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3303, i32 -13), !nosanitize !30
  %3312 = extractvalue { i32, i1 } %3311, 1, !nosanitize !30
  br i1 %3312, label %.loopexit249, label %3387, !prof !33, !nosanitize !30

3313:                                             ; preds = %3281
  %3314 = add nsw i32 %3284, 3
  %3315 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3314, 0
  br label %3387

3316:                                             ; preds = %3243
  %3317 = load i16, ptr %3047, align 2, !tbaa !28
  %3318 = zext i16 %3317 to i32
  %3319 = sub nsw i32 16, %3318
  %3320 = icmp sgt i32 %3058, %3319
  %3321 = load i16, ptr %3046, align 4, !tbaa !28
  %3322 = zext i16 %3321 to i32
  %3323 = shl i32 %3322, %3058
  %3324 = trunc i32 %3323 to i16
  %3325 = or i16 %3059, %3324
  br i1 %3320, label %3326, label %3349

3326:                                             ; preds = %3316
  store i16 %3325, ptr %2981, align 8, !tbaa !25
  %3327 = trunc i16 %3325 to i8
  %3328 = load ptr, ptr %2982, align 8, !tbaa !31
  %3329 = load i64, ptr %2983, align 8, !tbaa !32
  %3330 = add i64 %3329, 1
  store i64 %3330, ptr %2983, align 8, !tbaa !32
  %3331 = getelementptr inbounds nuw i8, ptr %3328, i64 %3329
  store i8 %3327, ptr %3331, align 1, !tbaa !28
  %3332 = load i16, ptr %2981, align 8, !tbaa !25
  %3333 = lshr i16 %3332, 8
  %3334 = trunc nuw i16 %3333 to i8
  %3335 = load ptr, ptr %2982, align 8, !tbaa !31
  %3336 = load i64, ptr %2983, align 8, !tbaa !32
  %3337 = add i64 %3336, 1
  store i64 %3337, ptr %2983, align 8, !tbaa !32
  %3338 = getelementptr inbounds nuw i8, ptr %3335, i64 %3336
  store i8 %3334, ptr %3338, align 1, !tbaa !28
  %3339 = load i32, ptr %2785, align 4, !tbaa !26
  %3340 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3339), !nosanitize !30
  %3341 = extractvalue { i32, i1 } %3340, 1, !nosanitize !30
  br i1 %3341, label %.loopexit248, label %3342, !prof !33, !nosanitize !30

3342:                                             ; preds = %3326
  %3343 = extractvalue { i32, i1 } %3340, 0, !nosanitize !30
  %3344 = lshr i32 %3322, %3343
  %3345 = trunc nuw i32 %3344 to i16
  %3346 = add nsw i32 %3318, -16
  %3347 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3339, i32 %3346), !nosanitize !30
  %3348 = extractvalue { i32, i1 } %3347, 1, !nosanitize !30
  br i1 %3348, label %.loopexit249, label %3352, !prof !33, !nosanitize !30

3349:                                             ; preds = %3316
  %3350 = add nsw i32 %3058, %3318
  %3351 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3350, 0
  br label %3352

3352:                                             ; preds = %3349, %3342
  %3353 = phi i16 [ %3345, %3342 ], [ %3325, %3349 ]
  %3354 = phi { i32, i1 } [ %3347, %3342 ], [ %3351, %3349 ]
  %3355 = extractvalue { i32, i1 } %3354, 0
  store i32 %3355, ptr %2785, align 4, !tbaa !26
  %3356 = icmp sgt i32 %3355, 9
  %3357 = add nuw i32 %3055, 65526
  %3358 = shl i32 %3357, %3355
  %3359 = trunc i32 %3358 to i16
  %3360 = or i16 %3353, %3359
  store i16 %3360, ptr %2981, align 8, !tbaa !25
  br i1 %3356, label %3361, label %3384

3361:                                             ; preds = %3352
  %3362 = trunc i16 %3360 to i8
  %3363 = load ptr, ptr %2982, align 8, !tbaa !31
  %3364 = load i64, ptr %2983, align 8, !tbaa !32
  %3365 = add i64 %3364, 1
  store i64 %3365, ptr %2983, align 8, !tbaa !32
  %3366 = getelementptr inbounds nuw i8, ptr %3363, i64 %3364
  store i8 %3362, ptr %3366, align 1, !tbaa !28
  %3367 = load i16, ptr %2981, align 8, !tbaa !25
  %3368 = lshr i16 %3367, 8
  %3369 = trunc nuw i16 %3368 to i8
  %3370 = load ptr, ptr %2982, align 8, !tbaa !31
  %3371 = load i64, ptr %2983, align 8, !tbaa !32
  %3372 = add i64 %3371, 1
  store i64 %3372, ptr %2983, align 8, !tbaa !32
  %3373 = getelementptr inbounds nuw i8, ptr %3370, i64 %3371
  store i8 %3369, ptr %3373, align 1, !tbaa !28
  %3374 = load i32, ptr %2785, align 4, !tbaa !26
  %3375 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3374), !nosanitize !30
  %3376 = extractvalue { i32, i1 } %3375, 1, !nosanitize !30
  br i1 %3376, label %.loopexit248, label %3377, !prof !33, !nosanitize !30

3377:                                             ; preds = %3361
  %3378 = extractvalue { i32, i1 } %3375, 0, !nosanitize !30
  %3379 = and i32 %3357, 65535
  %3380 = lshr i32 %3379, %3378
  %3381 = trunc nuw i32 %3380 to i16
  store i16 %3381, ptr %2981, align 8, !tbaa !25
  %3382 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3374, i32 -9), !nosanitize !30
  %3383 = extractvalue { i32, i1 } %3382, 1, !nosanitize !30
  br i1 %3383, label %.loopexit249, label %3387, !prof !33, !nosanitize !30

3384:                                             ; preds = %3352
  %3385 = add nsw i32 %3355, 7
  %3386 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3385, 0
  br label %3387

3387:                                             ; preds = %3384, %3377, %3313, %3306, %3240, %3233
  %3388 = phi i16 [ %3216, %3240 ], [ %3289, %3313 ], [ %3237, %3233 ], [ %3310, %3306 ], [ %3381, %3377 ], [ %3360, %3384 ]
  %3389 = phi { i32, i1 } [ %3242, %3240 ], [ %3315, %3313 ], [ %3238, %3233 ], [ %3311, %3306 ], [ %3382, %3377 ], [ %3386, %3384 ]
  %3390 = extractvalue { i32, i1 } %3389, 0
  store i32 %3390, ptr %2785, align 4, !tbaa !26
  br label %.loopexit250

.loopexit250:                                     ; preds = %3119, %3387
  %3391 = phi i16 [ %3388, %3387 ], [ %3114, %3119 ]
  %3392 = phi i32 [ %3390, %3387 ], [ %3116, %3119 ]
  %3393 = icmp eq i16 %3062, 0
  br i1 %3393, label %3397, label %3394

3394:                                             ; preds = %.loopexit250
  %3395 = select i1 %3066, i32 3, i32 4
  %3396 = select i1 %3066, i32 6, i32 7
  br label %3397

3397:                                             ; preds = %3394, %.loopexit250, %3052
  %3398 = phi i16 [ %3059, %3052 ], [ %3391, %.loopexit250 ], [ %3391, %3394 ]
  %3399 = phi i32 [ %3058, %3052 ], [ %3392, %.loopexit250 ], [ %3392, %3394 ]
  %3400 = phi i32 [ %3053, %3052 ], [ 3, %.loopexit250 ], [ %3395, %3394 ]
  %3401 = phi i32 [ %3054, %3052 ], [ 138, %.loopexit250 ], [ %3396, %3394 ]
  %3402 = phi i32 [ %3064, %3052 ], [ 0, %.loopexit250 ], [ 0, %3394 ]
  %3403 = phi i32 [ %3057, %3052 ], [ %3056, %.loopexit250 ], [ %3056, %3394 ]
  %exitcond512 = icmp eq i64 %indvars.iv509, %wide.trip.count511
  br i1 %exitcond512, label %.loopexit253, label %3051, !llvm.loop !82

.loopexit253:                                     ; preds = %3397, %3034
  %3404 = phi i16 [ %3026, %3034 ], [ %3398, %3397 ]
  %3405 = phi i32 [ %3028, %3034 ], [ %3399, %3397 ]
  br i1 %2896, label %.loopexit254, label %3406, !prof !33, !nosanitize !30

3406:                                             ; preds = %.loopexit253
  %3407 = extractvalue { i32, i1 } %2895, 0, !nosanitize !30
  %3408 = icmp slt i32 %3407, 0
  br i1 %3408, label %.loopexit247, label %3409

3409:                                             ; preds = %3406
  %3410 = load i16, ptr %1521, align 2, !tbaa !28
  %3411 = icmp eq i16 %3410, 0
  %3412 = select i1 %3411, i32 138, i32 7
  %3413 = select i1 %3411, i32 3, i32 4
  %3414 = zext i16 %3410 to i32
  %3415 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3416 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3417 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3418 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3419 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3420 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3421 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %3422 = add i32 %2841, 1
  %wide.trip.count516 = zext i32 %3422 to i64
  br label %3424

3423:                                             ; preds = %3769
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1
  %exitcond518 = icmp eq i64 %indvars.iv.next515, 2147483648
  br i1 %exitcond518, label %.loopexit243, label %3424, !prof !74, !llvm.loop !82, !nosanitize !30

.loopexit243:                                     ; preds = %3749, %3714, %3678, %3643, %3605, %3570, %3527, %3423, %3475
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3424:                                             ; preds = %3423, %3409
  %indvars.iv514 = phi i64 [ %indvars.iv.next515, %3423 ], [ 1, %3409 ]
  %3425 = phi i32 [ %3772, %3423 ], [ %3413, %3409 ]
  %3426 = phi i32 [ %3773, %3423 ], [ %3412, %3409 ]
  %3427 = phi i32 [ %3774, %3423 ], [ 0, %3409 ]
  %3428 = phi i32 [ %3435, %3423 ], [ %3414, %3409 ]
  %3429 = phi i32 [ %3775, %3423 ], [ -1, %3409 ]
  %3430 = phi i32 [ %3771, %3423 ], [ %3405, %3409 ]
  %3431 = phi i16 [ %3770, %3423 ], [ %3404, %3409 ]
  %3432 = getelementptr [4 x i8], ptr %0, i64 %indvars.iv514
  %3433 = getelementptr i8, ptr %3432, i64 2506
  %3434 = load i16, ptr %3433, align 2, !tbaa !28
  %3435 = zext i16 %3434 to i32
  %3436 = add nsw i32 %3427, 1
  %3437 = icmp slt i32 %3436, %3426
  %3438 = icmp eq i32 %3428, %3435
  %3439 = select i1 %3437, i1 %3438, i1 false
  br i1 %3439, label %3769, label %3440

3440:                                             ; preds = %3424
  %3441 = icmp slt i32 %3436, %3425
  br i1 %3441, label %3442, label %3494

3442:                                             ; preds = %3440
  %3443 = zext nneg i32 %3428 to i64
  %3444 = getelementptr inbounds nuw [4 x i8], ptr %3415, i64 %3443
  %3445 = getelementptr inbounds nuw i8, ptr %3444, i64 2
  br label %3446

3446:                                             ; preds = %3491, %3442
  %3447 = phi i16 [ %3486, %3491 ], [ %3431, %3442 ]
  %3448 = phi i32 [ %3488, %3491 ], [ %3430, %3442 ]
  %3449 = phi i32 [ %3492, %3491 ], [ %3436, %3442 ]
  %3450 = load i16, ptr %3445, align 2, !tbaa !28
  %3451 = zext i16 %3450 to i32
  %3452 = sub nsw i32 16, %3451
  %3453 = icmp sgt i32 %3448, %3452
  %3454 = load i16, ptr %3444, align 4, !tbaa !28
  %3455 = zext i16 %3454 to i32
  %3456 = shl i32 %3455, %3448
  %3457 = trunc i32 %3456 to i16
  %3458 = or i16 %3447, %3457
  store i16 %3458, ptr %2981, align 8, !tbaa !25
  br i1 %3453, label %3459, label %3482

.loopexit242:                                     ; preds = %3733, %3698, %3662, %3627, %3589, %3554, %3511, %3485, %3459
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

3459:                                             ; preds = %3446
  %3460 = trunc i16 %3458 to i8
  %3461 = load ptr, ptr %2982, align 8, !tbaa !31
  %3462 = load i64, ptr %2983, align 8, !tbaa !32
  %3463 = add i64 %3462, 1
  store i64 %3463, ptr %2983, align 8, !tbaa !32
  %3464 = getelementptr inbounds nuw i8, ptr %3461, i64 %3462
  store i8 %3460, ptr %3464, align 1, !tbaa !28
  %3465 = load i16, ptr %2981, align 8, !tbaa !25
  %3466 = lshr i16 %3465, 8
  %3467 = trunc nuw i16 %3466 to i8
  %3468 = load ptr, ptr %2982, align 8, !tbaa !31
  %3469 = load i64, ptr %2983, align 8, !tbaa !32
  %3470 = add i64 %3469, 1
  store i64 %3470, ptr %2983, align 8, !tbaa !32
  %3471 = getelementptr inbounds nuw i8, ptr %3468, i64 %3469
  store i8 %3467, ptr %3471, align 1, !tbaa !28
  %3472 = load i32, ptr %2785, align 4, !tbaa !26
  %3473 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3472), !nosanitize !30
  %3474 = extractvalue { i32, i1 } %3473, 1, !nosanitize !30
  br i1 %3474, label %.loopexit242, label %3475, !prof !33, !nosanitize !30

3475:                                             ; preds = %3459
  %3476 = extractvalue { i32, i1 } %3473, 0, !nosanitize !30
  %3477 = lshr i32 %3455, %3476
  %3478 = trunc nuw i32 %3477 to i16
  store i16 %3478, ptr %2981, align 8, !tbaa !25
  %3479 = add nsw i32 %3451, -16
  %3480 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3472, i32 %3479), !nosanitize !30
  %3481 = extractvalue { i32, i1 } %3480, 1, !nosanitize !30
  br i1 %3481, label %.loopexit243, label %3485, !prof !33, !nosanitize !30

3482:                                             ; preds = %3446
  %3483 = add nsw i32 %3448, %3451
  %3484 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3483, 0
  br label %3485

3485:                                             ; preds = %3482, %3475
  %3486 = phi i16 [ %3478, %3475 ], [ %3458, %3482 ]
  %3487 = phi { i32, i1 } [ %3480, %3475 ], [ %3484, %3482 ]
  %3488 = extractvalue { i32, i1 } %3487, 0
  store i32 %3488, ptr %2785, align 4, !tbaa !26
  %3489 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3449, i32 -1)
  %3490 = extractvalue { i32, i1 } %3489, 1, !nosanitize !30
  br i1 %3490, label %.loopexit242, label %3491, !prof !33, !nosanitize !30

3491:                                             ; preds = %3485
  %3492 = extractvalue { i32, i1 } %3489, 0, !nosanitize !30
  %3493 = icmp eq i32 %3492, 0
  br i1 %3493, label %.loopexit244, label %3446, !llvm.loop !83

3494:                                             ; preds = %3440
  %3495 = icmp eq i32 %3428, 0
  br i1 %3495, label %3615, label %3496

3496:                                             ; preds = %3494
  %3497 = icmp eq i32 %3428, %3429
  br i1 %3497, label %3541, label %3498

3498:                                             ; preds = %3496
  %3499 = zext nneg i32 %3428 to i64
  %3500 = getelementptr inbounds nuw [4 x i8], ptr %3415, i64 %3499
  %3501 = getelementptr inbounds nuw i8, ptr %3500, i64 2
  %3502 = load i16, ptr %3501, align 2, !tbaa !28
  %3503 = zext i16 %3502 to i32
  %3504 = sub nsw i32 16, %3503
  %3505 = icmp sgt i32 %3430, %3504
  %3506 = load i16, ptr %3500, align 4, !tbaa !28
  %3507 = zext i16 %3506 to i32
  %3508 = shl i32 %3507, %3430
  %3509 = trunc i32 %3508 to i16
  %3510 = or i16 %3431, %3509
  store i16 %3510, ptr %2981, align 8, !tbaa !25
  br i1 %3505, label %3511, label %3534

3511:                                             ; preds = %3498
  %3512 = trunc i16 %3510 to i8
  %3513 = load ptr, ptr %2982, align 8, !tbaa !31
  %3514 = load i64, ptr %2983, align 8, !tbaa !32
  %3515 = add i64 %3514, 1
  store i64 %3515, ptr %2983, align 8, !tbaa !32
  %3516 = getelementptr inbounds nuw i8, ptr %3513, i64 %3514
  store i8 %3512, ptr %3516, align 1, !tbaa !28
  %3517 = load i16, ptr %2981, align 8, !tbaa !25
  %3518 = lshr i16 %3517, 8
  %3519 = trunc nuw i16 %3518 to i8
  %3520 = load ptr, ptr %2982, align 8, !tbaa !31
  %3521 = load i64, ptr %2983, align 8, !tbaa !32
  %3522 = add i64 %3521, 1
  store i64 %3522, ptr %2983, align 8, !tbaa !32
  %3523 = getelementptr inbounds nuw i8, ptr %3520, i64 %3521
  store i8 %3519, ptr %3523, align 1, !tbaa !28
  %3524 = load i32, ptr %2785, align 4, !tbaa !26
  %3525 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3524), !nosanitize !30
  %3526 = extractvalue { i32, i1 } %3525, 1, !nosanitize !30
  br i1 %3526, label %.loopexit242, label %3527, !prof !33, !nosanitize !30

3527:                                             ; preds = %3511
  %3528 = extractvalue { i32, i1 } %3525, 0, !nosanitize !30
  %3529 = lshr i32 %3507, %3528
  %3530 = trunc nuw i32 %3529 to i16
  store i16 %3530, ptr %2981, align 8, !tbaa !25
  %3531 = add nsw i32 %3503, -16
  %3532 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3524, i32 %3531), !nosanitize !30
  %3533 = extractvalue { i32, i1 } %3532, 1, !nosanitize !30
  br i1 %3533, label %.loopexit243, label %3537, !prof !33, !nosanitize !30

3534:                                             ; preds = %3498
  %3535 = add nsw i32 %3430, %3503
  %3536 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3535, 0
  br label %3537

3537:                                             ; preds = %3534, %3527
  %3538 = phi i16 [ %3530, %3527 ], [ %3510, %3534 ]
  %3539 = phi { i32, i1 } [ %3532, %3527 ], [ %3536, %3534 ]
  %3540 = extractvalue { i32, i1 } %3539, 0
  store i32 %3540, ptr %2785, align 4, !tbaa !26
  br label %3541

3541:                                             ; preds = %3537, %3496
  %3542 = phi i16 [ %3538, %3537 ], [ %3431, %3496 ]
  %3543 = phi i32 [ %3540, %3537 ], [ %3430, %3496 ]
  %3544 = phi i32 [ %3427, %3537 ], [ %3436, %3496 ]
  %3545 = load i16, ptr %3417, align 2, !tbaa !28
  %3546 = zext i16 %3545 to i32
  %3547 = sub nsw i32 16, %3546
  %3548 = icmp sgt i32 %3543, %3547
  %3549 = load i16, ptr %3416, align 4, !tbaa !28
  %3550 = zext i16 %3549 to i32
  %3551 = shl i32 %3550, %3543
  %3552 = trunc i32 %3551 to i16
  %3553 = or i16 %3542, %3552
  br i1 %3548, label %3554, label %3577

3554:                                             ; preds = %3541
  store i16 %3553, ptr %2981, align 8, !tbaa !25
  %3555 = trunc i16 %3553 to i8
  %3556 = load ptr, ptr %2982, align 8, !tbaa !31
  %3557 = load i64, ptr %2983, align 8, !tbaa !32
  %3558 = add i64 %3557, 1
  store i64 %3558, ptr %2983, align 8, !tbaa !32
  %3559 = getelementptr inbounds nuw i8, ptr %3556, i64 %3557
  store i8 %3555, ptr %3559, align 1, !tbaa !28
  %3560 = load i16, ptr %2981, align 8, !tbaa !25
  %3561 = lshr i16 %3560, 8
  %3562 = trunc nuw i16 %3561 to i8
  %3563 = load ptr, ptr %2982, align 8, !tbaa !31
  %3564 = load i64, ptr %2983, align 8, !tbaa !32
  %3565 = add i64 %3564, 1
  store i64 %3565, ptr %2983, align 8, !tbaa !32
  %3566 = getelementptr inbounds nuw i8, ptr %3563, i64 %3564
  store i8 %3562, ptr %3566, align 1, !tbaa !28
  %3567 = load i32, ptr %2785, align 4, !tbaa !26
  %3568 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3567), !nosanitize !30
  %3569 = extractvalue { i32, i1 } %3568, 1, !nosanitize !30
  br i1 %3569, label %.loopexit242, label %3570, !prof !33, !nosanitize !30

3570:                                             ; preds = %3554
  %3571 = extractvalue { i32, i1 } %3568, 0, !nosanitize !30
  %3572 = lshr i32 %3550, %3571
  %3573 = trunc nuw i32 %3572 to i16
  %3574 = add nsw i32 %3546, -16
  %3575 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3567, i32 %3574), !nosanitize !30
  %3576 = extractvalue { i32, i1 } %3575, 1, !nosanitize !30
  br i1 %3576, label %.loopexit243, label %3580, !prof !33, !nosanitize !30

3577:                                             ; preds = %3541
  %3578 = add nsw i32 %3543, %3546
  %3579 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3578, 0
  br label %3580

3580:                                             ; preds = %3577, %3570
  %3581 = phi i16 [ %3573, %3570 ], [ %3553, %3577 ]
  %3582 = phi { i32, i1 } [ %3575, %3570 ], [ %3579, %3577 ]
  %3583 = extractvalue { i32, i1 } %3582, 0
  store i32 %3583, ptr %2785, align 4, !tbaa !26
  %3584 = icmp sgt i32 %3583, 14
  %3585 = add i32 %3544, 65533
  %3586 = shl i32 %3585, %3583
  %3587 = trunc i32 %3586 to i16
  %3588 = or i16 %3581, %3587
  store i16 %3588, ptr %2981, align 8, !tbaa !25
  br i1 %3584, label %3589, label %3612

3589:                                             ; preds = %3580
  %3590 = trunc i16 %3588 to i8
  %3591 = load ptr, ptr %2982, align 8, !tbaa !31
  %3592 = load i64, ptr %2983, align 8, !tbaa !32
  %3593 = add i64 %3592, 1
  store i64 %3593, ptr %2983, align 8, !tbaa !32
  %3594 = getelementptr inbounds nuw i8, ptr %3591, i64 %3592
  store i8 %3590, ptr %3594, align 1, !tbaa !28
  %3595 = load i16, ptr %2981, align 8, !tbaa !25
  %3596 = lshr i16 %3595, 8
  %3597 = trunc nuw i16 %3596 to i8
  %3598 = load ptr, ptr %2982, align 8, !tbaa !31
  %3599 = load i64, ptr %2983, align 8, !tbaa !32
  %3600 = add i64 %3599, 1
  store i64 %3600, ptr %2983, align 8, !tbaa !32
  %3601 = getelementptr inbounds nuw i8, ptr %3598, i64 %3599
  store i8 %3597, ptr %3601, align 1, !tbaa !28
  %3602 = load i32, ptr %2785, align 4, !tbaa !26
  %3603 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3602), !nosanitize !30
  %3604 = extractvalue { i32, i1 } %3603, 1, !nosanitize !30
  br i1 %3604, label %.loopexit242, label %3605, !prof !33, !nosanitize !30

3605:                                             ; preds = %3589
  %3606 = extractvalue { i32, i1 } %3603, 0, !nosanitize !30
  %3607 = and i32 %3585, 65535
  %3608 = lshr i32 %3607, %3606
  %3609 = trunc nuw i32 %3608 to i16
  store i16 %3609, ptr %2981, align 8, !tbaa !25
  %3610 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3602, i32 -14), !nosanitize !30
  %3611 = extractvalue { i32, i1 } %3610, 1, !nosanitize !30
  br i1 %3611, label %.loopexit243, label %3759, !prof !33, !nosanitize !30

3612:                                             ; preds = %3580
  %3613 = add nsw i32 %3583, 2
  %3614 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3613, 0
  br label %3759

3615:                                             ; preds = %3494
  %3616 = icmp slt i32 %3427, 10
  br i1 %3616, label %3617, label %3688

3617:                                             ; preds = %3615
  %3618 = load i16, ptr %3421, align 2, !tbaa !28
  %3619 = zext i16 %3618 to i32
  %3620 = sub nsw i32 16, %3619
  %3621 = icmp sgt i32 %3430, %3620
  %3622 = load i16, ptr %3420, align 4, !tbaa !28
  %3623 = zext i16 %3622 to i32
  %3624 = shl i32 %3623, %3430
  %3625 = trunc i32 %3624 to i16
  %3626 = or i16 %3431, %3625
  br i1 %3621, label %3627, label %3650

3627:                                             ; preds = %3617
  store i16 %3626, ptr %2981, align 8, !tbaa !25
  %3628 = trunc i16 %3626 to i8
  %3629 = load ptr, ptr %2982, align 8, !tbaa !31
  %3630 = load i64, ptr %2983, align 8, !tbaa !32
  %3631 = add i64 %3630, 1
  store i64 %3631, ptr %2983, align 8, !tbaa !32
  %3632 = getelementptr inbounds nuw i8, ptr %3629, i64 %3630
  store i8 %3628, ptr %3632, align 1, !tbaa !28
  %3633 = load i16, ptr %2981, align 8, !tbaa !25
  %3634 = lshr i16 %3633, 8
  %3635 = trunc nuw i16 %3634 to i8
  %3636 = load ptr, ptr %2982, align 8, !tbaa !31
  %3637 = load i64, ptr %2983, align 8, !tbaa !32
  %3638 = add i64 %3637, 1
  store i64 %3638, ptr %2983, align 8, !tbaa !32
  %3639 = getelementptr inbounds nuw i8, ptr %3636, i64 %3637
  store i8 %3635, ptr %3639, align 1, !tbaa !28
  %3640 = load i32, ptr %2785, align 4, !tbaa !26
  %3641 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3640), !nosanitize !30
  %3642 = extractvalue { i32, i1 } %3641, 1, !nosanitize !30
  br i1 %3642, label %.loopexit242, label %3643, !prof !33, !nosanitize !30

3643:                                             ; preds = %3627
  %3644 = extractvalue { i32, i1 } %3641, 0, !nosanitize !30
  %3645 = lshr i32 %3623, %3644
  %3646 = trunc nuw i32 %3645 to i16
  %3647 = add nsw i32 %3619, -16
  %3648 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3640, i32 %3647), !nosanitize !30
  %3649 = extractvalue { i32, i1 } %3648, 1, !nosanitize !30
  br i1 %3649, label %.loopexit243, label %3653, !prof !33, !nosanitize !30

3650:                                             ; preds = %3617
  %3651 = add nsw i32 %3430, %3619
  %3652 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3651, 0
  br label %3653

3653:                                             ; preds = %3650, %3643
  %3654 = phi i16 [ %3646, %3643 ], [ %3626, %3650 ]
  %3655 = phi { i32, i1 } [ %3648, %3643 ], [ %3652, %3650 ]
  %3656 = extractvalue { i32, i1 } %3655, 0
  store i32 %3656, ptr %2785, align 4, !tbaa !26
  %3657 = icmp sgt i32 %3656, 13
  %3658 = add nsw i32 %3427, 65534
  %3659 = shl i32 %3658, %3656
  %3660 = trunc i32 %3659 to i16
  %3661 = or i16 %3654, %3660
  store i16 %3661, ptr %2981, align 8, !tbaa !25
  br i1 %3657, label %3662, label %3685

3662:                                             ; preds = %3653
  %3663 = trunc i16 %3661 to i8
  %3664 = load ptr, ptr %2982, align 8, !tbaa !31
  %3665 = load i64, ptr %2983, align 8, !tbaa !32
  %3666 = add i64 %3665, 1
  store i64 %3666, ptr %2983, align 8, !tbaa !32
  %3667 = getelementptr inbounds nuw i8, ptr %3664, i64 %3665
  store i8 %3663, ptr %3667, align 1, !tbaa !28
  %3668 = load i16, ptr %2981, align 8, !tbaa !25
  %3669 = lshr i16 %3668, 8
  %3670 = trunc nuw i16 %3669 to i8
  %3671 = load ptr, ptr %2982, align 8, !tbaa !31
  %3672 = load i64, ptr %2983, align 8, !tbaa !32
  %3673 = add i64 %3672, 1
  store i64 %3673, ptr %2983, align 8, !tbaa !32
  %3674 = getelementptr inbounds nuw i8, ptr %3671, i64 %3672
  store i8 %3670, ptr %3674, align 1, !tbaa !28
  %3675 = load i32, ptr %2785, align 4, !tbaa !26
  %3676 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3675), !nosanitize !30
  %3677 = extractvalue { i32, i1 } %3676, 1, !nosanitize !30
  br i1 %3677, label %.loopexit242, label %3678, !prof !33, !nosanitize !30

3678:                                             ; preds = %3662
  %3679 = extractvalue { i32, i1 } %3676, 0, !nosanitize !30
  %3680 = and i32 %3658, 65535
  %3681 = lshr i32 %3680, %3679
  %3682 = trunc nuw i32 %3681 to i16
  store i16 %3682, ptr %2981, align 8, !tbaa !25
  %3683 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3675, i32 -13), !nosanitize !30
  %3684 = extractvalue { i32, i1 } %3683, 1, !nosanitize !30
  br i1 %3684, label %.loopexit243, label %3759, !prof !33, !nosanitize !30

3685:                                             ; preds = %3653
  %3686 = add nsw i32 %3656, 3
  %3687 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3686, 0
  br label %3759

3688:                                             ; preds = %3615
  %3689 = load i16, ptr %3419, align 2, !tbaa !28
  %3690 = zext i16 %3689 to i32
  %3691 = sub nsw i32 16, %3690
  %3692 = icmp sgt i32 %3430, %3691
  %3693 = load i16, ptr %3418, align 4, !tbaa !28
  %3694 = zext i16 %3693 to i32
  %3695 = shl i32 %3694, %3430
  %3696 = trunc i32 %3695 to i16
  %3697 = or i16 %3431, %3696
  br i1 %3692, label %3698, label %3721

3698:                                             ; preds = %3688
  store i16 %3697, ptr %2981, align 8, !tbaa !25
  %3699 = trunc i16 %3697 to i8
  %3700 = load ptr, ptr %2982, align 8, !tbaa !31
  %3701 = load i64, ptr %2983, align 8, !tbaa !32
  %3702 = add i64 %3701, 1
  store i64 %3702, ptr %2983, align 8, !tbaa !32
  %3703 = getelementptr inbounds nuw i8, ptr %3700, i64 %3701
  store i8 %3699, ptr %3703, align 1, !tbaa !28
  %3704 = load i16, ptr %2981, align 8, !tbaa !25
  %3705 = lshr i16 %3704, 8
  %3706 = trunc nuw i16 %3705 to i8
  %3707 = load ptr, ptr %2982, align 8, !tbaa !31
  %3708 = load i64, ptr %2983, align 8, !tbaa !32
  %3709 = add i64 %3708, 1
  store i64 %3709, ptr %2983, align 8, !tbaa !32
  %3710 = getelementptr inbounds nuw i8, ptr %3707, i64 %3708
  store i8 %3706, ptr %3710, align 1, !tbaa !28
  %3711 = load i32, ptr %2785, align 4, !tbaa !26
  %3712 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3711), !nosanitize !30
  %3713 = extractvalue { i32, i1 } %3712, 1, !nosanitize !30
  br i1 %3713, label %.loopexit242, label %3714, !prof !33, !nosanitize !30

3714:                                             ; preds = %3698
  %3715 = extractvalue { i32, i1 } %3712, 0, !nosanitize !30
  %3716 = lshr i32 %3694, %3715
  %3717 = trunc nuw i32 %3716 to i16
  %3718 = add nsw i32 %3690, -16
  %3719 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3711, i32 %3718), !nosanitize !30
  %3720 = extractvalue { i32, i1 } %3719, 1, !nosanitize !30
  br i1 %3720, label %.loopexit243, label %3724, !prof !33, !nosanitize !30

3721:                                             ; preds = %3688
  %3722 = add nsw i32 %3430, %3690
  %3723 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3722, 0
  br label %3724

3724:                                             ; preds = %3721, %3714
  %3725 = phi i16 [ %3717, %3714 ], [ %3697, %3721 ]
  %3726 = phi { i32, i1 } [ %3719, %3714 ], [ %3723, %3721 ]
  %3727 = extractvalue { i32, i1 } %3726, 0
  store i32 %3727, ptr %2785, align 4, !tbaa !26
  %3728 = icmp sgt i32 %3727, 9
  %3729 = add nuw i32 %3427, 65526
  %3730 = shl i32 %3729, %3727
  %3731 = trunc i32 %3730 to i16
  %3732 = or i16 %3725, %3731
  store i16 %3732, ptr %2981, align 8, !tbaa !25
  br i1 %3728, label %3733, label %3756

3733:                                             ; preds = %3724
  %3734 = trunc i16 %3732 to i8
  %3735 = load ptr, ptr %2982, align 8, !tbaa !31
  %3736 = load i64, ptr %2983, align 8, !tbaa !32
  %3737 = add i64 %3736, 1
  store i64 %3737, ptr %2983, align 8, !tbaa !32
  %3738 = getelementptr inbounds nuw i8, ptr %3735, i64 %3736
  store i8 %3734, ptr %3738, align 1, !tbaa !28
  %3739 = load i16, ptr %2981, align 8, !tbaa !25
  %3740 = lshr i16 %3739, 8
  %3741 = trunc nuw i16 %3740 to i8
  %3742 = load ptr, ptr %2982, align 8, !tbaa !31
  %3743 = load i64, ptr %2983, align 8, !tbaa !32
  %3744 = add i64 %3743, 1
  store i64 %3744, ptr %2983, align 8, !tbaa !32
  %3745 = getelementptr inbounds nuw i8, ptr %3742, i64 %3743
  store i8 %3741, ptr %3745, align 1, !tbaa !28
  %3746 = load i32, ptr %2785, align 4, !tbaa !26
  %3747 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3746), !nosanitize !30
  %3748 = extractvalue { i32, i1 } %3747, 1, !nosanitize !30
  br i1 %3748, label %.loopexit242, label %3749, !prof !33, !nosanitize !30

3749:                                             ; preds = %3733
  %3750 = extractvalue { i32, i1 } %3747, 0, !nosanitize !30
  %3751 = and i32 %3729, 65535
  %3752 = lshr i32 %3751, %3750
  %3753 = trunc nuw i32 %3752 to i16
  store i16 %3753, ptr %2981, align 8, !tbaa !25
  %3754 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3746, i32 -9), !nosanitize !30
  %3755 = extractvalue { i32, i1 } %3754, 1, !nosanitize !30
  br i1 %3755, label %.loopexit243, label %3759, !prof !33, !nosanitize !30

3756:                                             ; preds = %3724
  %3757 = add nsw i32 %3727, 7
  %3758 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3757, 0
  br label %3759

3759:                                             ; preds = %3756, %3749, %3685, %3678, %3612, %3605
  %3760 = phi i16 [ %3588, %3612 ], [ %3661, %3685 ], [ %3609, %3605 ], [ %3682, %3678 ], [ %3753, %3749 ], [ %3732, %3756 ]
  %3761 = phi { i32, i1 } [ %3614, %3612 ], [ %3687, %3685 ], [ %3610, %3605 ], [ %3683, %3678 ], [ %3754, %3749 ], [ %3758, %3756 ]
  %3762 = extractvalue { i32, i1 } %3761, 0
  store i32 %3762, ptr %2785, align 4, !tbaa !26
  br label %.loopexit244

.loopexit244:                                     ; preds = %3491, %3759
  %3763 = phi i16 [ %3760, %3759 ], [ %3486, %3491 ]
  %3764 = phi i32 [ %3762, %3759 ], [ %3488, %3491 ]
  %3765 = icmp eq i16 %3434, 0
  br i1 %3765, label %3769, label %3766

3766:                                             ; preds = %.loopexit244
  %3767 = select i1 %3438, i32 3, i32 4
  %3768 = select i1 %3438, i32 6, i32 7
  br label %3769

3769:                                             ; preds = %3766, %.loopexit244, %3424
  %3770 = phi i16 [ %3431, %3424 ], [ %3763, %.loopexit244 ], [ %3763, %3766 ]
  %3771 = phi i32 [ %3430, %3424 ], [ %3764, %.loopexit244 ], [ %3764, %3766 ]
  %3772 = phi i32 [ %3425, %3424 ], [ 3, %.loopexit244 ], [ %3767, %3766 ]
  %3773 = phi i32 [ %3426, %3424 ], [ 138, %.loopexit244 ], [ %3768, %3766 ]
  %3774 = phi i32 [ %3436, %3424 ], [ 0, %.loopexit244 ], [ 0, %3766 ]
  %3775 = phi i32 [ %3429, %3424 ], [ %3428, %.loopexit244 ], [ %3428, %3766 ]
  %exitcond517 = icmp eq i64 %indvars.iv514, %wide.trip.count516
  br i1 %exitcond517, label %.loopexit247, label %3423, !llvm.loop !82

.loopexit247:                                     ; preds = %3769, %3406
  %3776 = phi i16 [ %3404, %3406 ], [ %3770, %3769 ]
  %3777 = phi i32 [ %3405, %3406 ], [ %3771, %3769 ]
  %3778 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %3779 = load i32, ptr %3778, align 4, !tbaa !29
  %3780 = icmp eq i32 %3779, 0
  br i1 %3780, label %.loopexit241, label %3781

3781:                                             ; preds = %.loopexit247
  %3782 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %3783

3783:                                             ; preds = %4048, %3781
  %3784 = phi i16 [ %4049, %4048 ], [ %3776, %3781 ]
  %3785 = phi i32 [ %4050, %4048 ], [ %3777, %3781 ]
  %3786 = phi i32 [ %3800, %4048 ], [ 0, %3781 ]
  %3787 = load ptr, ptr %3782, align 8, !tbaa !79
  %3788 = add nuw i32 %3786, 1
  %3789 = zext i32 %3786 to i64
  %3790 = getelementptr inbounds nuw i8, ptr %3787, i64 %3789
  %3791 = load i8, ptr %3790, align 1, !tbaa !28
  %3792 = zext i8 %3791 to i32
  %3793 = add i32 %3786, 2
  %3794 = zext i32 %3788 to i64
  %3795 = getelementptr inbounds nuw i8, ptr %3787, i64 %3794
  %3796 = load i8, ptr %3795, align 1, !tbaa !28
  %3797 = zext i8 %3796 to i32
  %3798 = shl nuw nsw i32 %3797, 8
  %3799 = or disjoint i32 %3798, %3792
  %3800 = add i32 %3786, 3
  %3801 = zext i32 %3793 to i64
  %3802 = getelementptr inbounds nuw i8, ptr %3787, i64 %3801
  %3803 = load i8, ptr %3802, align 1, !tbaa !28
  %3804 = zext i8 %3803 to i32
  %3805 = icmp eq i32 %3799, 0
  %3806 = zext i8 %3803 to i64
  br i1 %3805, label %3807, label %3845

3807:                                             ; preds = %3783
  %3808 = getelementptr inbounds nuw [4 x i8], ptr %1441, i64 %3806
  %3809 = getelementptr inbounds nuw i8, ptr %3808, i64 2
  %3810 = load i16, ptr %3809, align 2, !tbaa !28
  %3811 = zext i16 %3810 to i32
  %3812 = sub nsw i32 16, %3811
  %3813 = icmp sgt i32 %3785, %3812
  %3814 = load i16, ptr %3808, align 2, !tbaa !28
  %3815 = zext i16 %3814 to i32
  %3816 = shl i32 %3815, %3785
  %3817 = trunc i32 %3816 to i16
  %3818 = or i16 %3784, %3817
  store i16 %3818, ptr %2981, align 8, !tbaa !25
  br i1 %3813, label %3819, label %3842

.loopexit239:                                     ; preds = %4030, %4014, %4002, %3969, %3926, %3910, %3901, %3895, %3861, %3819, %4066
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

3819:                                             ; preds = %3807
  %3820 = trunc i16 %3818 to i8
  %3821 = load ptr, ptr %2982, align 8, !tbaa !31
  %3822 = load i64, ptr %2983, align 8, !tbaa !32
  %3823 = add i64 %3822, 1
  store i64 %3823, ptr %2983, align 8, !tbaa !32
  %3824 = getelementptr inbounds nuw i8, ptr %3821, i64 %3822
  store i8 %3820, ptr %3824, align 1, !tbaa !28
  %3825 = load i16, ptr %2981, align 8, !tbaa !25
  %3826 = lshr i16 %3825, 8
  %3827 = trunc nuw i16 %3826 to i8
  %3828 = load ptr, ptr %2982, align 8, !tbaa !31
  %3829 = load i64, ptr %2983, align 8, !tbaa !32
  %3830 = add i64 %3829, 1
  store i64 %3830, ptr %2983, align 8, !tbaa !32
  %3831 = getelementptr inbounds nuw i8, ptr %3828, i64 %3829
  store i8 %3827, ptr %3831, align 1, !tbaa !28
  %3832 = load i32, ptr %2785, align 4, !tbaa !26
  %3833 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3832), !nosanitize !30
  %3834 = extractvalue { i32, i1 } %3833, 1, !nosanitize !30
  br i1 %3834, label %.loopexit239, label %3835, !prof !33, !nosanitize !30

3835:                                             ; preds = %3819
  %3836 = extractvalue { i32, i1 } %3833, 0, !nosanitize !30
  %3837 = lshr i32 %3815, %3836
  %3838 = trunc nuw i32 %3837 to i16
  store i16 %3838, ptr %2981, align 8, !tbaa !25
  %3839 = add nsw i32 %3811, -16
  %3840 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3832, i32 %3839), !nosanitize !30
  %3841 = extractvalue { i32, i1 } %3840, 1, !nosanitize !30
  br i1 %3841, label %.loopexit240, label %4044, !prof !33, !nosanitize !30

.loopexit240:                                     ; preds = %4041, %4037, %3985, %3937, %3933, %3877, %3835, %4082
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !30
  unreachable, !nosanitize !30

3842:                                             ; preds = %3807
  %3843 = add nsw i32 %3785, %3811
  %3844 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3843, 0
  br label %4044

3845:                                             ; preds = %3783
  %3846 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %3806
  %3847 = load i8, ptr %3846, align 1, !tbaa !28
  %3848 = zext i8 %3847 to i64
  %3849 = getelementptr inbounds nuw [4 x i8], ptr %1441, i64 %3848
  %3850 = getelementptr inbounds nuw i8, ptr %3849, i64 1028
  %3851 = getelementptr inbounds nuw i8, ptr %3849, i64 1030
  %3852 = load i16, ptr %3851, align 2, !tbaa !28
  %3853 = zext i16 %3852 to i32
  %3854 = sub nsw i32 16, %3853
  %3855 = icmp sgt i32 %3785, %3854
  %3856 = load i16, ptr %3850, align 2, !tbaa !28
  %3857 = zext i16 %3856 to i32
  %3858 = shl i32 %3857, %3785
  %3859 = trunc i32 %3858 to i16
  %3860 = or i16 %3784, %3859
  store i16 %3860, ptr %2981, align 8, !tbaa !25
  br i1 %3855, label %3861, label %3884

3861:                                             ; preds = %3845
  %3862 = trunc i16 %3860 to i8
  %3863 = load ptr, ptr %2982, align 8, !tbaa !31
  %3864 = load i64, ptr %2983, align 8, !tbaa !32
  %3865 = add i64 %3864, 1
  store i64 %3865, ptr %2983, align 8, !tbaa !32
  %3866 = getelementptr inbounds nuw i8, ptr %3863, i64 %3864
  store i8 %3862, ptr %3866, align 1, !tbaa !28
  %3867 = load i16, ptr %2981, align 8, !tbaa !25
  %3868 = lshr i16 %3867, 8
  %3869 = trunc nuw i16 %3868 to i8
  %3870 = load ptr, ptr %2982, align 8, !tbaa !31
  %3871 = load i64, ptr %2983, align 8, !tbaa !32
  %3872 = add i64 %3871, 1
  store i64 %3872, ptr %2983, align 8, !tbaa !32
  %3873 = getelementptr inbounds nuw i8, ptr %3870, i64 %3871
  store i8 %3869, ptr %3873, align 1, !tbaa !28
  %3874 = load i32, ptr %2785, align 4, !tbaa !26
  %3875 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3874), !nosanitize !30
  %3876 = extractvalue { i32, i1 } %3875, 1, !nosanitize !30
  br i1 %3876, label %.loopexit239, label %3877, !prof !33, !nosanitize !30

3877:                                             ; preds = %3861
  %3878 = extractvalue { i32, i1 } %3875, 0, !nosanitize !30
  %3879 = lshr i32 %3857, %3878
  %3880 = trunc nuw i32 %3879 to i16
  store i16 %3880, ptr %2981, align 8, !tbaa !25
  %3881 = add nsw i32 %3853, -16
  %3882 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3874, i32 %3881), !nosanitize !30
  %3883 = extractvalue { i32, i1 } %3882, 1, !nosanitize !30
  br i1 %3883, label %.loopexit240, label %3887, !prof !33, !nosanitize !30

3884:                                             ; preds = %3845
  %3885 = add nsw i32 %3785, %3853
  %3886 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3885, 0
  br label %3887

3887:                                             ; preds = %3884, %3877
  %3888 = phi i16 [ %3880, %3877 ], [ %3860, %3884 ]
  %3889 = phi { i32, i1 } [ %3882, %3877 ], [ %3886, %3884 ]
  %3890 = extractvalue { i32, i1 } %3889, 0
  store i32 %3890, ptr %2785, align 4, !tbaa !26
  %3891 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %3848
  %3892 = load i32, ptr %3891, align 4, !tbaa !4
  %3893 = add i8 %3847, -28
  %3894 = icmp ult i8 %3893, -20
  br i1 %3894, label %3944, label %3895

3895:                                             ; preds = %3887
  %3896 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %3848
  %3897 = load i32, ptr %3896, align 4, !tbaa !4
  %3898 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3804, i32 %3897), !nosanitize !30
  %3899 = extractvalue { i32, i1 } %3898, 0, !nosanitize !30
  %3900 = extractvalue { i32, i1 } %3898, 1, !nosanitize !30
  br i1 %3900, label %.loopexit239, label %3901, !prof !33, !nosanitize !30

3901:                                             ; preds = %3895
  %3902 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3892), !nosanitize !30
  %3903 = extractvalue { i32, i1 } %3902, 1, !nosanitize !30
  br i1 %3903, label %.loopexit239, label %3904, !prof !33, !nosanitize !30

3904:                                             ; preds = %3901
  %3905 = extractvalue { i32, i1 } %3902, 0, !nosanitize !30
  %3906 = icmp sgt i32 %3890, %3905
  %3907 = shl i32 %3899, %3890
  %3908 = trunc i32 %3907 to i16
  %3909 = or i16 %3888, %3908
  store i16 %3909, ptr %2981, align 8, !tbaa !25
  br i1 %3906, label %3910, label %3937

3910:                                             ; preds = %3904
  %3911 = trunc i16 %3909 to i8
  %3912 = load ptr, ptr %2982, align 8, !tbaa !31
  %3913 = load i64, ptr %2983, align 8, !tbaa !32
  %3914 = add i64 %3913, 1
  store i64 %3914, ptr %2983, align 8, !tbaa !32
  %3915 = getelementptr inbounds nuw i8, ptr %3912, i64 %3913
  store i8 %3911, ptr %3915, align 1, !tbaa !28
  %3916 = load i16, ptr %2981, align 8, !tbaa !25
  %3917 = lshr i16 %3916, 8
  %3918 = trunc nuw i16 %3917 to i8
  %3919 = load ptr, ptr %2982, align 8, !tbaa !31
  %3920 = load i64, ptr %2983, align 8, !tbaa !32
  %3921 = add i64 %3920, 1
  store i64 %3921, ptr %2983, align 8, !tbaa !32
  %3922 = getelementptr inbounds nuw i8, ptr %3919, i64 %3920
  store i8 %3918, ptr %3922, align 1, !tbaa !28
  %3923 = load i32, ptr %2785, align 4, !tbaa !26
  %3924 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3923), !nosanitize !30
  %3925 = extractvalue { i32, i1 } %3924, 1, !nosanitize !30
  br i1 %3925, label %.loopexit239, label %3926, !prof !33, !nosanitize !30

3926:                                             ; preds = %3910
  %3927 = extractvalue { i32, i1 } %3924, 0, !nosanitize !30
  %3928 = and i32 %3899, 65535
  %3929 = lshr i32 %3928, %3927
  %3930 = trunc nuw i32 %3929 to i16
  store i16 %3930, ptr %2981, align 8, !tbaa !25
  %3931 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3892, i32 -16)
  %3932 = extractvalue { i32, i1 } %3931, 1, !nosanitize !30
  br i1 %3932, label %.loopexit239, label %3933, !prof !33, !nosanitize !30

3933:                                             ; preds = %3926
  %3934 = extractvalue { i32, i1 } %3931, 0, !nosanitize !30
  %3935 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3923, i32 %3934), !nosanitize !30
  %3936 = extractvalue { i32, i1 } %3935, 1, !nosanitize !30
  br i1 %3936, label %.loopexit240, label %3940, !prof !33, !nosanitize !30

3937:                                             ; preds = %3904
  %3938 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3890, i32 %3892), !nosanitize !30
  %3939 = extractvalue { i32, i1 } %3938, 1, !nosanitize !30
  br i1 %3939, label %.loopexit240, label %3940, !prof !33, !nosanitize !30

3940:                                             ; preds = %3937, %3933
  %3941 = phi i16 [ %3930, %3933 ], [ %3909, %3937 ]
  %3942 = phi { i32, i1 } [ %3935, %3933 ], [ %3938, %3937 ]
  %3943 = extractvalue { i32, i1 } %3942, 0
  store i32 %3943, ptr %2785, align 4, !tbaa !26
  br label %3944

3944:                                             ; preds = %3940, %3887
  %3945 = phi i16 [ %3941, %3940 ], [ %3888, %3887 ]
  %3946 = phi i32 [ %3943, %3940 ], [ %3890, %3887 ]
  %3947 = add nsw i32 %3799, -1
  %3948 = icmp samesign ult i32 %3799, 257
  %3949 = zext nneg i32 %3947 to i64
  %3950 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %3949
  %3951 = lshr i32 %3947, 7
  %3952 = zext nneg i32 %3951 to i64
  %3953 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %3952
  %3954 = getelementptr inbounds nuw i8, ptr %3953, i64 256
  %3955 = select i1 %3948, ptr %3950, ptr %3954
  %3956 = load i8, ptr %3955, align 1, !tbaa !28
  %3957 = zext i8 %3956 to i64
  %3958 = getelementptr inbounds nuw [4 x i8], ptr %1516, i64 %3957
  %3959 = getelementptr inbounds nuw i8, ptr %3958, i64 2
  %3960 = load i16, ptr %3959, align 2, !tbaa !28
  %3961 = zext i16 %3960 to i32
  %3962 = sub nsw i32 16, %3961
  %3963 = icmp sgt i32 %3946, %3962
  %3964 = load i16, ptr %3958, align 2, !tbaa !28
  %3965 = zext i16 %3964 to i32
  %3966 = shl i32 %3965, %3946
  %3967 = trunc i32 %3966 to i16
  %3968 = or i16 %3945, %3967
  store i16 %3968, ptr %2981, align 8, !tbaa !25
  br i1 %3963, label %3969, label %3992

3969:                                             ; preds = %3944
  %3970 = trunc i16 %3968 to i8
  %3971 = load ptr, ptr %2982, align 8, !tbaa !31
  %3972 = load i64, ptr %2983, align 8, !tbaa !32
  %3973 = add i64 %3972, 1
  store i64 %3973, ptr %2983, align 8, !tbaa !32
  %3974 = getelementptr inbounds nuw i8, ptr %3971, i64 %3972
  store i8 %3970, ptr %3974, align 1, !tbaa !28
  %3975 = load i16, ptr %2981, align 8, !tbaa !25
  %3976 = lshr i16 %3975, 8
  %3977 = trunc nuw i16 %3976 to i8
  %3978 = load ptr, ptr %2982, align 8, !tbaa !31
  %3979 = load i64, ptr %2983, align 8, !tbaa !32
  %3980 = add i64 %3979, 1
  store i64 %3980, ptr %2983, align 8, !tbaa !32
  %3981 = getelementptr inbounds nuw i8, ptr %3978, i64 %3979
  store i8 %3977, ptr %3981, align 1, !tbaa !28
  %3982 = load i32, ptr %2785, align 4, !tbaa !26
  %3983 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3982), !nosanitize !30
  %3984 = extractvalue { i32, i1 } %3983, 1, !nosanitize !30
  br i1 %3984, label %.loopexit239, label %3985, !prof !33, !nosanitize !30

3985:                                             ; preds = %3969
  %3986 = extractvalue { i32, i1 } %3983, 0, !nosanitize !30
  %3987 = lshr i32 %3965, %3986
  %3988 = trunc nuw i32 %3987 to i16
  store i16 %3988, ptr %2981, align 8, !tbaa !25
  %3989 = add nsw i32 %3961, -16
  %3990 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3982, i32 %3989), !nosanitize !30
  %3991 = extractvalue { i32, i1 } %3990, 1, !nosanitize !30
  br i1 %3991, label %.loopexit240, label %3995, !prof !33, !nosanitize !30

3992:                                             ; preds = %3944
  %3993 = add nsw i32 %3946, %3961
  %3994 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3993, 0
  br label %3995

3995:                                             ; preds = %3992, %3985
  %3996 = phi i16 [ %3988, %3985 ], [ %3968, %3992 ]
  %3997 = phi { i32, i1 } [ %3990, %3985 ], [ %3994, %3992 ]
  %3998 = extractvalue { i32, i1 } %3997, 0
  store i32 %3998, ptr %2785, align 4, !tbaa !26
  %3999 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %3957
  %4000 = load i32, ptr %3999, align 4, !tbaa !4
  %4001 = icmp ult i8 %3956, 4
  br i1 %4001, label %4048, label %4002

4002:                                             ; preds = %3995
  %4003 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %3957
  %4004 = load i32, ptr %4003, align 4, !tbaa !4
  %4005 = sub i32 %3947, %4004
  %4006 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4000), !nosanitize !30
  %4007 = extractvalue { i32, i1 } %4006, 1, !nosanitize !30
  br i1 %4007, label %.loopexit239, label %4008, !prof !33, !nosanitize !30

4008:                                             ; preds = %4002
  %4009 = extractvalue { i32, i1 } %4006, 0, !nosanitize !30
  %4010 = icmp sgt i32 %3998, %4009
  %4011 = shl i32 %4005, %3998
  %4012 = trunc i32 %4011 to i16
  %4013 = or i16 %3996, %4012
  store i16 %4013, ptr %2981, align 8, !tbaa !25
  br i1 %4010, label %4014, label %4041

4014:                                             ; preds = %4008
  %4015 = trunc i16 %4013 to i8
  %4016 = load ptr, ptr %2982, align 8, !tbaa !31
  %4017 = load i64, ptr %2983, align 8, !tbaa !32
  %4018 = add i64 %4017, 1
  store i64 %4018, ptr %2983, align 8, !tbaa !32
  %4019 = getelementptr inbounds nuw i8, ptr %4016, i64 %4017
  store i8 %4015, ptr %4019, align 1, !tbaa !28
  %4020 = load i16, ptr %2981, align 8, !tbaa !25
  %4021 = lshr i16 %4020, 8
  %4022 = trunc nuw i16 %4021 to i8
  %4023 = load ptr, ptr %2982, align 8, !tbaa !31
  %4024 = load i64, ptr %2983, align 8, !tbaa !32
  %4025 = add i64 %4024, 1
  store i64 %4025, ptr %2983, align 8, !tbaa !32
  %4026 = getelementptr inbounds nuw i8, ptr %4023, i64 %4024
  store i8 %4022, ptr %4026, align 1, !tbaa !28
  %4027 = load i32, ptr %2785, align 4, !tbaa !26
  %4028 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4027), !nosanitize !30
  %4029 = extractvalue { i32, i1 } %4028, 1, !nosanitize !30
  br i1 %4029, label %.loopexit239, label %4030, !prof !33, !nosanitize !30

4030:                                             ; preds = %4014
  %4031 = extractvalue { i32, i1 } %4028, 0, !nosanitize !30
  %4032 = and i32 %4005, 65535
  %4033 = lshr i32 %4032, %4031
  %4034 = trunc nuw i32 %4033 to i16
  store i16 %4034, ptr %2981, align 8, !tbaa !25
  %4035 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4000, i32 -16)
  %4036 = extractvalue { i32, i1 } %4035, 1, !nosanitize !30
  br i1 %4036, label %.loopexit239, label %4037, !prof !33, !nosanitize !30

4037:                                             ; preds = %4030
  %4038 = extractvalue { i32, i1 } %4035, 0, !nosanitize !30
  %4039 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4027, i32 %4038), !nosanitize !30
  %4040 = extractvalue { i32, i1 } %4039, 1, !nosanitize !30
  br i1 %4040, label %.loopexit240, label %4044, !prof !33, !nosanitize !30

4041:                                             ; preds = %4008
  %4042 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3998, i32 %4000), !nosanitize !30
  %4043 = extractvalue { i32, i1 } %4042, 1, !nosanitize !30
  br i1 %4043, label %.loopexit240, label %4044, !prof !33, !nosanitize !30

4044:                                             ; preds = %4041, %4037, %3842, %3835
  %4045 = phi i16 [ %3818, %3842 ], [ %3838, %3835 ], [ %4034, %4037 ], [ %4013, %4041 ]
  %4046 = phi { i32, i1 } [ %3844, %3842 ], [ %3840, %3835 ], [ %4039, %4037 ], [ %4042, %4041 ]
  %4047 = extractvalue { i32, i1 } %4046, 0
  store i32 %4047, ptr %2785, align 4, !tbaa !26
  br label %4048

4048:                                             ; preds = %4044, %3995
  %4049 = phi i16 [ %3996, %3995 ], [ %4045, %4044 ]
  %4050 = phi i32 [ %3998, %3995 ], [ %4047, %4044 ]
  %4051 = load i32, ptr %3778, align 4, !tbaa !29
  %4052 = icmp ult i32 %3800, %4051
  br i1 %4052, label %3783, label %.loopexit241, !llvm.loop !80

.loopexit241:                                     ; preds = %4048, %.loopexit247
  %4053 = phi i16 [ %3776, %.loopexit247 ], [ %4049, %4048 ]
  %4054 = phi i32 [ %3777, %.loopexit247 ], [ %4050, %4048 ]
  %4055 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4056 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4057 = load i16, ptr %4056, align 2, !tbaa !28
  %4058 = zext i16 %4057 to i32
  %4059 = sub nsw i32 16, %4058
  %4060 = icmp sgt i32 %4054, %4059
  %4061 = load i16, ptr %4055, align 2, !tbaa !28
  %4062 = zext i16 %4061 to i32
  %4063 = shl i32 %4062, %4054
  %4064 = trunc i32 %4063 to i16
  %4065 = or i16 %4053, %4064
  store i16 %4065, ptr %2981, align 8, !tbaa !25
  br i1 %4060, label %4066, label %4089

4066:                                             ; preds = %.loopexit241
  %4067 = trunc i16 %4065 to i8
  %4068 = load ptr, ptr %2982, align 8, !tbaa !31
  %4069 = load i64, ptr %2983, align 8, !tbaa !32
  %4070 = add i64 %4069, 1
  store i64 %4070, ptr %2983, align 8, !tbaa !32
  %4071 = getelementptr inbounds nuw i8, ptr %4068, i64 %4069
  store i8 %4067, ptr %4071, align 1, !tbaa !28
  %4072 = load i16, ptr %2981, align 8, !tbaa !25
  %4073 = lshr i16 %4072, 8
  %4074 = trunc nuw i16 %4073 to i8
  %4075 = load ptr, ptr %2982, align 8, !tbaa !31
  %4076 = load i64, ptr %2983, align 8, !tbaa !32
  %4077 = add i64 %4076, 1
  store i64 %4077, ptr %2983, align 8, !tbaa !32
  %4078 = getelementptr inbounds nuw i8, ptr %4075, i64 %4076
  store i8 %4074, ptr %4078, align 1, !tbaa !28
  %4079 = load i32, ptr %2785, align 4, !tbaa !26
  %4080 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4079), !nosanitize !30
  %4081 = extractvalue { i32, i1 } %4080, 1, !nosanitize !30
  br i1 %4081, label %.loopexit239, label %4082, !prof !33, !nosanitize !30

4082:                                             ; preds = %4066
  %4083 = extractvalue { i32, i1 } %4080, 0, !nosanitize !30
  %4084 = lshr i32 %4062, %4083
  %4085 = trunc nuw i32 %4084 to i16
  store i16 %4085, ptr %2981, align 8, !tbaa !25
  %4086 = add nsw i32 %4058, -16
  %4087 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4079, i32 %4086), !nosanitize !30
  %4088 = extractvalue { i32, i1 } %4087, 1, !nosanitize !30
  br i1 %4088, label %.loopexit240, label %4092, !prof !33, !nosanitize !30

4089:                                             ; preds = %.loopexit241
  %4090 = add nsw i32 %4054, %4058
  %4091 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4090, 0
  br label %4092

4092:                                             ; preds = %4089, %4082
  %4093 = phi { i32, i1 } [ %4087, %4082 ], [ %4091, %4089 ]
  %4094 = extractvalue { i32, i1 } %4093, 0
  store i32 %4094, ptr %2785, align 4, !tbaa !26
  br label %4095

4095:                                             ; preds = %4092, %2781, %2423
  %4096 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4097

4097:                                             ; preds = %4108, %4095
  %4098 = phi i64 [ 0, %4095 ], [ %4112, %4108 ]
  %4099 = getelementptr inbounds nuw [4 x i8], ptr %4096, i64 %4098
  store i16 0, ptr %4099, align 4, !tbaa !28
  %4100 = getelementptr inbounds nuw i8, ptr %4099, i64 4
  store i16 0, ptr %4100, align 4, !tbaa !28
  %4101 = getelementptr inbounds nuw [4 x i8], ptr %4096, i64 %4098
  %4102 = getelementptr inbounds nuw i8, ptr %4101, i64 8
  store i16 0, ptr %4102, align 4, !tbaa !28
  %4103 = getelementptr inbounds nuw i8, ptr %4101, i64 12
  store i16 0, ptr %4103, align 4, !tbaa !28
  %4104 = getelementptr inbounds nuw [4 x i8], ptr %4096, i64 %4098
  %4105 = getelementptr inbounds nuw i8, ptr %4104, i64 16
  store i16 0, ptr %4105, align 4, !tbaa !28
  %4106 = getelementptr inbounds nuw i8, ptr %4104, i64 20
  store i16 0, ptr %4106, align 4, !tbaa !28
  %4107 = icmp eq i64 %4098, 280
  br i1 %4107, label %4113, label %4108

4108:                                             ; preds = %4097
  %4109 = getelementptr inbounds nuw [4 x i8], ptr %4096, i64 %4098
  %4110 = getelementptr inbounds nuw i8, ptr %4109, i64 24
  store i16 0, ptr %4110, align 4, !tbaa !28
  %4111 = getelementptr inbounds nuw i8, ptr %4109, i64 28
  store i16 0, ptr %4111, align 4, !tbaa !28
  %4112 = add nuw nsw i64 %4098, 8
  br label %4097

4113:                                             ; preds = %4097
  %4114 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4114, align 4, !tbaa !28
  %4115 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %4115, align 4, !tbaa !28
  %4116 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %4116, align 4, !tbaa !28
  %4117 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %4117, align 4, !tbaa !28
  %4118 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %4118, align 4, !tbaa !28
  %4119 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %4119, align 4, !tbaa !28
  %4120 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %4120, align 4, !tbaa !28
  %4121 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %4121, align 4, !tbaa !28
  %4122 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %4122, align 4, !tbaa !28
  %4123 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %4123, align 4, !tbaa !28
  %4124 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %4124, align 4, !tbaa !28
  %4125 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %4125, align 4, !tbaa !28
  %4126 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %4126, align 4, !tbaa !28
  %4127 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %4127, align 4, !tbaa !28
  %4128 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %4128, align 4, !tbaa !28
  %4129 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %4129, align 4, !tbaa !28
  %4130 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %4130, align 4, !tbaa !28
  %4131 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %4131, align 4, !tbaa !28
  %4132 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %4132, align 4, !tbaa !28
  %4133 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %4133, align 4, !tbaa !28
  %4134 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %4134, align 4, !tbaa !28
  %4135 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %4135, align 4, !tbaa !28
  %4136 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %4136, align 4, !tbaa !28
  %4137 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %4137, align 4, !tbaa !28
  %4138 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %4138, align 4, !tbaa !28
  %4139 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %4139, align 4, !tbaa !28
  %4140 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %4140, align 4, !tbaa !28
  %4141 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %4141, align 4, !tbaa !28
  %4142 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %4142, align 4, !tbaa !28
  %4143 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %4143, align 4, !tbaa !28
  %4144 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %4144, align 4, !tbaa !28
  %4145 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %4145, align 4, !tbaa !28
  %4146 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %4146, align 4, !tbaa !28
  %4147 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %4147, align 4, !tbaa !28
  %4148 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %4148, align 4, !tbaa !28
  %4149 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %4149, align 4, !tbaa !28
  %4150 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %4150, align 4, !tbaa !28
  %4151 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %4151, align 4, !tbaa !28
  %4152 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %4152, align 4, !tbaa !28
  %4153 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %4153, align 4, !tbaa !28
  %4154 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %4154, align 4, !tbaa !28
  %4155 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %4155, align 4, !tbaa !28
  %4156 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %4156, align 4, !tbaa !28
  %4157 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %4157, align 4, !tbaa !28
  %4158 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %4158, align 4, !tbaa !28
  %4159 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %4159, align 4, !tbaa !28
  %4160 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %4160, align 4, !tbaa !28
  %4161 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %4161, align 4, !tbaa !28
  %4162 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %4162, align 4, !tbaa !28
  %4163 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %4163, align 4, !tbaa !28
  %4164 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %4165 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %4165, align 4, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4164, i8 0, i64 20, i1 false)
  %4166 = icmp eq i32 %3, 0
  br i1 %4166, label %4211, label %4167

4167:                                             ; preds = %4113
  %4168 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %4169 = load i32, ptr %4168, align 4, !tbaa !26
  %4170 = icmp sgt i32 %4169, 8
  br i1 %4170, label %4171, label %4188

4171:                                             ; preds = %4167
  %4172 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4173 = load i16, ptr %4172, align 8, !tbaa !25
  %4174 = trunc i16 %4173 to i8
  %4175 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4176 = load ptr, ptr %4175, align 8, !tbaa !31
  %4177 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4178 = load i64, ptr %4177, align 8, !tbaa !32
  %4179 = add i64 %4178, 1
  store i64 %4179, ptr %4177, align 8, !tbaa !32
  %4180 = getelementptr inbounds nuw i8, ptr %4176, i64 %4178
  store i8 %4174, ptr %4180, align 1, !tbaa !28
  %4181 = load i16, ptr %4172, align 8, !tbaa !25
  %4182 = lshr i16 %4181, 8
  %4183 = trunc nuw i16 %4182 to i8
  %4184 = load ptr, ptr %4175, align 8, !tbaa !31
  %4185 = load i64, ptr %4177, align 8, !tbaa !32
  %4186 = add i64 %4185, 1
  store i64 %4186, ptr %4177, align 8, !tbaa !32
  %4187 = getelementptr inbounds nuw i8, ptr %4184, i64 %4185
  store i8 %4183, ptr %4187, align 1, !tbaa !28
  br label %4200

4188:                                             ; preds = %4167
  %4189 = icmp sgt i32 %4169, 0
  br i1 %4189, label %4190, label %4200

4190:                                             ; preds = %4188
  %4191 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4192 = load i16, ptr %4191, align 8, !tbaa !25
  %4193 = trunc i16 %4192 to i8
  %4194 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4195 = load ptr, ptr %4194, align 8, !tbaa !31
  %4196 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4197 = load i64, ptr %4196, align 8, !tbaa !32
  %4198 = add i64 %4197, 1
  store i64 %4198, ptr %4196, align 8, !tbaa !32
  %4199 = getelementptr inbounds nuw i8, ptr %4195, i64 %4197
  store i8 %4193, ptr %4199, align 1, !tbaa !28
  br label %4200

4200:                                             ; preds = %4190, %4188, %4171
  %4201 = load i32, ptr %4168, align 4, !tbaa !26
  %4202 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4201, i32 -1)
  %4203 = extractvalue { i32, i1 } %4202, 1, !nosanitize !30
  br i1 %4203, label %4204, label %4205, !prof !33, !nosanitize !30

4204:                                             ; preds = %4200
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !30
  unreachable, !nosanitize !30

4205:                                             ; preds = %4200
  %4206 = extractvalue { i32, i1 } %4202, 0, !nosanitize !30
  %4207 = and i32 %4206, 7
  %4208 = add nuw nsw i32 %4207, 1
  %4209 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %4208, ptr %4209, align 8, !tbaa !27
  %4210 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %4210, align 8, !tbaa !25
  store i32 0, ptr %4168, align 4, !tbaa !26
  br label %4211

4211:                                             ; preds = %4205, %4113
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = trunc i32 %1 to i8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %8 = load i32, ptr %7, align 4, !tbaa !29
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !29
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 %10
  store i8 %4, ptr %11, align 1, !tbaa !28
  %12 = lshr i32 %1, 8
  %13 = trunc i32 %12 to i8
  %14 = load ptr, ptr %5, align 8, !tbaa !79
  %15 = load i32, ptr %7, align 4, !tbaa !29
  %16 = add i32 %15, 1
  store i32 %16, ptr %7, align 4, !tbaa !29
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 %17
  store i8 %13, ptr %18, align 1, !tbaa !28
  %19 = trunc i32 %2 to i8
  %20 = load ptr, ptr %5, align 8, !tbaa !79
  %21 = load i32, ptr %7, align 4, !tbaa !29
  %22 = add i32 %21, 1
  store i32 %22, ptr %7, align 4, !tbaa !29
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 %23
  store i8 %19, ptr %24, align 1, !tbaa !28
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %28 = zext i32 %2 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %28
  %30 = load i16, ptr %29, align 4, !tbaa !28
  %31 = add i16 %30, 1
  store i16 %31, ptr %29, align 4, !tbaa !28
  br label %59

32:                                               ; preds = %3
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %34 = load i32, ptr %33, align 8, !tbaa !84
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !84
  %36 = add i32 %1, -1
  %37 = zext i32 %2 to i64
  %38 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !28
  %40 = zext i8 %39 to i64
  %41 = getelementptr i8, ptr %0, i64 1240
  %42 = getelementptr [4 x i8], ptr %41, i64 %40
  %43 = load i16, ptr %42, align 4, !tbaa !28
  %44 = add i16 %43, 1
  store i16 %44, ptr %42, align 4, !tbaa !28
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %46 = icmp ult i32 %1, 257
  %47 = zext nneg i32 %36 to i64
  %48 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %47
  %49 = lshr i32 %36, 7
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %50
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 256
  %53 = select i1 %46, ptr %48, ptr %52
  %54 = load i8, ptr %53, align 1, !tbaa !28
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %55
  %57 = load i16, ptr %56, align 4, !tbaa !28
  %58 = add i16 %57, 1
  store i16 %58, ptr %56, align 4, !tbaa !28
  br label %59

59:                                               ; preds = %32, %26
  %60 = load i32, ptr %7, align 4, !tbaa !29
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %62 = load i32, ptr %61, align 8, !tbaa !85
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i32
  ret i32 %64
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

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
!30 = !{}
!31 = !{!9, !12, i64 16}
!32 = !{!9, !13, i64 40}
!33 = !{!"branch_weights", i32 1, i32 1048575}
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
!64 = !{!"branch_weights", i32 1, i32 127}
!65 = !{!"branch_weights", i32 127, i32 134217473}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = distinct !{!71, !40}
!72 = distinct !{!72, !70}
!73 = !{!9, !5, i64 2912}
!74 = !{!"branch_weights", i32 1, i32 1048574}
!75 = distinct !{!75, !40}
!76 = !{!9, !5, i64 2936}
!77 = distinct !{!77, !70}
!78 = !{!9, !5, i64 200}
!79 = !{!9, !12, i64 5888}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = distinct !{!82, !40}
!83 = distinct !{!83, !40}
!84 = !{!9, !5, i64 5928}
!85 = !{!9, !5, i64 5904}
