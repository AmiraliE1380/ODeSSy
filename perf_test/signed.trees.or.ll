; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.trees.ll'
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

14:                                               ; preds = %14, %1
  %15 = phi i64 [ 0, %1 ], [ %19, %14 ]
  %16 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  store i16 0, ptr %16, align 4, !tbaa !28
  %17 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i16 0, ptr %18, align 4, !tbaa !28
  %19 = add nuw nsw i64 %15, 2
  %20 = icmp eq i64 %19, 286
  br i1 %20, label %21, label %14, !llvm.loop !29

21:                                               ; preds = %14
  store i16 0, ptr %5, align 4, !tbaa !28
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %22, align 4, !tbaa !28
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %23, align 4, !tbaa !28
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %24, align 4, !tbaa !28
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %25, align 4, !tbaa !28
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %26, align 4, !tbaa !28
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %27, align 4, !tbaa !28
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %28, align 4, !tbaa !28
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %29, align 4, !tbaa !28
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %30, align 4, !tbaa !28
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %31, align 4, !tbaa !28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %32, align 4, !tbaa !28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %33, align 4, !tbaa !28
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %34, align 4, !tbaa !28
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %35, align 4, !tbaa !28
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %36, align 4, !tbaa !28
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %37, align 4, !tbaa !28
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %38, align 4, !tbaa !28
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %39, align 4, !tbaa !28
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %40, align 4, !tbaa !28
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %41, align 4, !tbaa !28
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %42, align 4, !tbaa !28
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %43, align 4, !tbaa !28
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %44, align 4, !tbaa !28
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %45, align 4, !tbaa !28
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %46, align 4, !tbaa !28
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %47, align 4, !tbaa !28
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %48, align 4, !tbaa !28
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %49, align 4, !tbaa !28
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %50, align 4, !tbaa !28
  store i16 0, ptr %8, align 4, !tbaa !28
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %51, align 4, !tbaa !28
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %52, align 4, !tbaa !28
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %53, align 4, !tbaa !28
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %54, align 4, !tbaa !28
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %55, align 4, !tbaa !28
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %56, align 4, !tbaa !28
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %57, align 4, !tbaa !28
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %58, align 4, !tbaa !28
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %59, align 4, !tbaa !28
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %60, align 4, !tbaa !28
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %61, align 4, !tbaa !28
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %62, align 4, !tbaa !28
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %63, align 4, !tbaa !28
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %64, align 4, !tbaa !28
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %65, align 4, !tbaa !28
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %66, align 4, !tbaa !28
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %67, align 4, !tbaa !28
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %68, align 4, !tbaa !28
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %69, align 4, !tbaa !28
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %71, align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %70, i8 0, i64 20, i1 false)
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
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

14:                                               ; preds = %4
  %15 = trunc i16 %12 to i8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %19 = load i64, ptr %18, align 8, !tbaa !34
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8, !tbaa !34
  %21 = getelementptr inbounds nuw i8, ptr %17, i64 %19
  store i8 %15, ptr %21, align 1, !tbaa !28
  %22 = load i16, ptr %9, align 8, !tbaa !25
  %23 = lshr i16 %22, 8
  %24 = trunc nuw i16 %23 to i8
  %25 = load ptr, ptr %16, align 8, !tbaa !33
  %26 = load i64, ptr %18, align 8, !tbaa !34
  %27 = add i64 %26, 1
  store i64 %27, ptr %18, align 8, !tbaa !34
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 %26
  store i8 %24, ptr %28, align 1, !tbaa !28
  %29 = load i32, ptr %5, align 4, !tbaa !26
  %30 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %29), !nosanitize !32
  %31 = extractvalue { i32, i1 } %30, 1, !nosanitize !32
  br i1 %31, label %13, label %32, !prof !35, !nosanitize !32

32:                                               ; preds = %14
  %33 = extractvalue { i32, i1 } %30, 0, !nosanitize !32
  %34 = and i32 %3, 65535
  %35 = lshr i32 %34, %33
  %36 = trunc nuw i32 %35 to i16
  store i16 %36, ptr %9, align 8, !tbaa !25
  %37 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 -13), !nosanitize !32
  br label %41

38:                                               ; preds = %4
  %39 = add nsw i32 %6, 3
  %40 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %39, 0
  br label %41

41:                                               ; preds = %32, %38
  %42 = phi i16 [ %36, %32 ], [ %12, %38 ]
  %43 = phi { i32, i1 } [ %37, %32 ], [ %40, %38 ]
  %44 = extractvalue { i32, i1 } %43, 0
  store i32 %44, ptr %5, align 4, !tbaa !26
  %45 = icmp sgt i32 %44, 8
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %48 = trunc i16 %42 to i8
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %50 = load ptr, ptr %49, align 8, !tbaa !33
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = load i64, ptr %51, align 8, !tbaa !34
  %53 = add i64 %52, 1
  store i64 %53, ptr %51, align 8, !tbaa !34
  %54 = getelementptr inbounds nuw i8, ptr %50, i64 %52
  store i8 %48, ptr %54, align 1, !tbaa !28
  %55 = load i16, ptr %47, align 8, !tbaa !25
  %56 = lshr i16 %55, 8
  %57 = trunc nuw i16 %56 to i8
  %58 = load ptr, ptr %49, align 8, !tbaa !33
  %59 = load i64, ptr %51, align 8, !tbaa !34
  %60 = add i64 %59, 1
  store i64 %60, ptr %51, align 8, !tbaa !34
  %61 = getelementptr inbounds nuw i8, ptr %58, i64 %59
  store i8 %57, ptr %61, align 1, !tbaa !28
  br label %72

62:                                               ; preds = %41
  %63 = icmp sgt i32 %44, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %62
  %65 = trunc i16 %42 to i8
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %67 = load ptr, ptr %66, align 8, !tbaa !33
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %69 = load i64, ptr %68, align 8, !tbaa !34
  %70 = add i64 %69, 1
  store i64 %70, ptr %68, align 8, !tbaa !34
  %71 = getelementptr inbounds nuw i8, ptr %67, i64 %69
  store i8 %65, ptr %71, align 1, !tbaa !28
  br label %72

72:                                               ; preds = %64, %62, %46
  %73 = load i32, ptr %5, align 4, !tbaa !26
  %74 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %73, i32 -1)
  %75 = extractvalue { i32, i1 } %74, 1, !nosanitize !32
  br i1 %75, label %76, label %77, !prof !35, !nosanitize !32

76:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

77:                                               ; preds = %72
  %78 = extractvalue { i32, i1 } %74, 0, !nosanitize !32
  %79 = and i32 %78, 7
  %80 = add nuw nsw i32 %79, 1
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %80, ptr %81, align 8, !tbaa !27
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %82, align 8, !tbaa !25
  store i32 0, ptr %5, align 4, !tbaa !26
  %83 = trunc i64 %2 to i8
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %85 = load ptr, ptr %84, align 8, !tbaa !33
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %87 = load i64, ptr %86, align 8, !tbaa !34
  %88 = add i64 %87, 1
  store i64 %88, ptr %86, align 8, !tbaa !34
  %89 = getelementptr inbounds nuw i8, ptr %85, i64 %87
  store i8 %83, ptr %89, align 1, !tbaa !28
  %90 = lshr i64 %2, 8
  %91 = trunc i64 %90 to i8
  %92 = load ptr, ptr %84, align 8, !tbaa !33
  %93 = load i64, ptr %86, align 8, !tbaa !34
  %94 = add i64 %93, 1
  store i64 %94, ptr %86, align 8, !tbaa !34
  %95 = getelementptr inbounds nuw i8, ptr %92, i64 %93
  store i8 %91, ptr %95, align 1, !tbaa !28
  %96 = trunc i64 %2 to i32
  %97 = xor i32 %96, 65535
  %98 = trunc i32 %97 to i8
  %99 = load ptr, ptr %84, align 8, !tbaa !33
  %100 = load i64, ptr %86, align 8, !tbaa !34
  %101 = add i64 %100, 1
  store i64 %101, ptr %86, align 8, !tbaa !34
  %102 = getelementptr inbounds nuw i8, ptr %99, i64 %100
  store i8 %98, ptr %102, align 1, !tbaa !28
  %103 = lshr i32 %97, 8
  %104 = trunc i32 %103 to i8
  %105 = load ptr, ptr %84, align 8, !tbaa !33
  %106 = load i64, ptr %86, align 8, !tbaa !34
  %107 = add i64 %106, 1
  store i64 %107, ptr %86, align 8, !tbaa !34
  %108 = getelementptr inbounds nuw i8, ptr %105, i64 %106
  store i8 %104, ptr %108, align 1, !tbaa !28
  %109 = icmp eq i64 %2, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %77
  %111 = load ptr, ptr %84, align 8, !tbaa !33
  %112 = load i64, ptr %86, align 8, !tbaa !34
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 %112
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %113, ptr align 1 %1, i64 %2, i1 false)
  br label %114

114:                                              ; preds = %110, %77
  %115 = load i64, ptr %86, align 8, !tbaa !34
  %116 = add i64 %115, %2
  store i64 %116, ptr %86, align 8, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
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
  %10 = load ptr, ptr %9, align 8, !tbaa !33
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %12 = load i64, ptr %11, align 8, !tbaa !34
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !34
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 %12
  store i8 %8, ptr %14, align 1, !tbaa !28
  %15 = load i16, ptr %6, align 8, !tbaa !25
  %16 = lshr i16 %15, 8
  %17 = trunc nuw i16 %16 to i8
  %18 = load ptr, ptr %9, align 8, !tbaa !33
  %19 = load i64, ptr %11, align 8, !tbaa !34
  %20 = add i64 %19, 1
  store i64 %20, ptr %11, align 8, !tbaa !34
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
  %29 = load ptr, ptr %28, align 8, !tbaa !33
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i64, ptr %30, align 8, !tbaa !34
  %32 = add i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !34
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 %31
  store i8 %27, ptr %33, align 1, !tbaa !28
  %34 = load i16, ptr %25, align 8, !tbaa !25
  %35 = lshr i16 %34, 8
  store i16 %35, ptr %25, align 8, !tbaa !25
  %36 = load i32, ptr %2, align 4, !tbaa !26
  %37 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %36, i32 -8)
  %38 = extractvalue { i32, i1 } %37, 1, !nosanitize !32
  br i1 %38, label %39, label %40, !prof !35, !nosanitize !32

39:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

40:                                               ; preds = %24
  %41 = extractvalue { i32, i1 } %37, 0, !nosanitize !32
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
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

11:                                               ; preds = %1
  %12 = trunc i16 %9 to i8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = load i64, ptr %15, align 8, !tbaa !34
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8, !tbaa !34
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 %16
  store i8 %12, ptr %18, align 1, !tbaa !28
  %19 = load i16, ptr %6, align 8, !tbaa !25
  %20 = lshr i16 %19, 8
  %21 = trunc nuw i16 %20 to i8
  %22 = load ptr, ptr %13, align 8, !tbaa !33
  %23 = load i64, ptr %15, align 8, !tbaa !34
  %24 = add i64 %23, 1
  store i64 %24, ptr %15, align 8, !tbaa !34
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  store i8 %21, ptr %25, align 1, !tbaa !28
  %26 = load i32, ptr %2, align 4, !tbaa !26
  %27 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %26), !nosanitize !32
  %28 = extractvalue { i32, i1 } %27, 1, !nosanitize !32
  br i1 %28, label %10, label %29, !prof !35, !nosanitize !32

29:                                               ; preds = %11
  %30 = extractvalue { i32, i1 } %27, 0, !nosanitize !32
  %31 = lshr i32 2, %30
  %32 = trunc nuw nsw i32 %31 to i16
  store i16 %32, ptr %6, align 8, !tbaa !25
  %33 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 -13), !nosanitize !32
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !32
  br i1 %34, label %35, label %39, !prof !35, !nosanitize !32

35:                                               ; preds = %63, %29
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

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
  br i1 %43, label %45, label %68

45:                                               ; preds = %39
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %48 = load ptr, ptr %47, align 8, !tbaa !33
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %50 = load i64, ptr %49, align 8, !tbaa !34
  %51 = add i64 %50, 1
  store i64 %51, ptr %49, align 8, !tbaa !34
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 %50
  store i8 %44, ptr %52, align 1, !tbaa !28
  %53 = load i16, ptr %46, align 8, !tbaa !25
  %54 = lshr i16 %53, 8
  %55 = trunc nuw i16 %54 to i8
  %56 = load ptr, ptr %47, align 8, !tbaa !33
  %57 = load i64, ptr %49, align 8, !tbaa !34
  %58 = add i64 %57, 1
  store i64 %58, ptr %49, align 8, !tbaa !34
  %59 = getelementptr inbounds nuw i8, ptr %56, i64 %57
  store i8 %55, ptr %59, align 1, !tbaa !28
  %60 = load i32, ptr %2, align 4, !tbaa !26
  %61 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %60), !nosanitize !32
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !32
  br i1 %62, label %10, label %63, !prof !35, !nosanitize !32

63:                                               ; preds = %45
  store i16 0, ptr %46, align 8, !tbaa !25
  %64 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %60, i32 -9), !nosanitize !32
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !32
  br i1 %65, label %35, label %66, !prof !35, !nosanitize !32

66:                                               ; preds = %63
  %67 = extractvalue { i32, i1 } %64, 0, !nosanitize !32
  br label %70

68:                                               ; preds = %39
  %69 = add nsw i32 %42, 7
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i8 [ %44, %68 ], [ 0, %66 ]
  %72 = phi i32 [ %69, %68 ], [ %67, %66 ]
  store i32 %72, ptr %2, align 4, !tbaa !26
  %73 = icmp eq i32 %72, 16
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %77 = load ptr, ptr %76, align 8, !tbaa !33
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %79 = load i64, ptr %78, align 8, !tbaa !34
  %80 = add i64 %79, 1
  store i64 %80, ptr %78, align 8, !tbaa !34
  %81 = getelementptr inbounds nuw i8, ptr %77, i64 %79
  store i8 %71, ptr %81, align 1, !tbaa !28
  %82 = load i16, ptr %75, align 8, !tbaa !25
  %83 = lshr i16 %82, 8
  %84 = trunc nuw i16 %83 to i8
  %85 = load ptr, ptr %76, align 8, !tbaa !33
  %86 = load i64, ptr %78, align 8, !tbaa !34
  %87 = add i64 %86, 1
  store i64 %87, ptr %78, align 8, !tbaa !34
  %88 = getelementptr inbounds nuw i8, ptr %85, i64 %86
  store i8 %84, ptr %88, align 1, !tbaa !28
  store i16 0, ptr %75, align 8, !tbaa !25
  br label %107

89:                                               ; preds = %70
  %90 = icmp sgt i32 %72, 7
  br i1 %90, label %91, label %109

91:                                               ; preds = %89
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %94 = load ptr, ptr %93, align 8, !tbaa !33
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %96 = load i64, ptr %95, align 8, !tbaa !34
  %97 = add i64 %96, 1
  store i64 %97, ptr %95, align 8, !tbaa !34
  %98 = getelementptr inbounds nuw i8, ptr %94, i64 %96
  store i8 %71, ptr %98, align 1, !tbaa !28
  %99 = load i16, ptr %92, align 8, !tbaa !25
  %100 = lshr i16 %99, 8
  store i16 %100, ptr %92, align 8, !tbaa !25
  %101 = load i32, ptr %2, align 4, !tbaa !26
  %102 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %101, i32 -8)
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !32
  br i1 %103, label %104, label %105, !prof !35, !nosanitize !32

104:                                              ; preds = %91
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

105:                                              ; preds = %91
  %106 = extractvalue { i32, i1 } %102, 0, !nosanitize !32
  br label %107

107:                                              ; preds = %105, %74
  %108 = phi i32 [ %106, %105 ], [ 0, %74 ]
  store i32 %108, ptr %2, align 4, !tbaa !26
  br label %109

109:                                              ; preds = %107, %89
  ret void
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @_tr_flush_block(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [16 x i16], align 16
  %6 = alloca [16 x i16], align 16
  %7 = alloca [16 x i16], align 16
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %9 = load i32, ptr %8, align 4, !tbaa !36
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %2352

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !37
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %14 = load i32, ptr %13, align 8, !tbaa !38
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %145

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %18 = load i16, ptr %17, align 4, !tbaa !28
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %143

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %22 = load i16, ptr %21, align 4, !tbaa !28
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %143

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %26 = load i16, ptr %25, align 4, !tbaa !28
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %143

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %30 = load i16, ptr %29, align 4, !tbaa !28
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %143

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 228
  %34 = load i16, ptr %33, align 4, !tbaa !28
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %143

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %38 = load i16, ptr %37, align 4, !tbaa !28
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %143

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %143

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %46 = load i16, ptr %45, align 4, !tbaa !28
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %143

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %50 = load i16, ptr %49, align 4, !tbaa !28
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %143

52:                                               ; preds = %48
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %54 = load i16, ptr %53, align 4, !tbaa !28
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %143

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %58 = load i16, ptr %57, align 4, !tbaa !28
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %143

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %62 = load i16, ptr %61, align 4, !tbaa !28
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %143

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %66 = load i16, ptr %65, align 4, !tbaa !28
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %143

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 292
  %70 = load i16, ptr %69, align 4, !tbaa !28
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %143

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %74 = load i16, ptr %73, align 4, !tbaa !28
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %143

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %78 = load i16, ptr %77, align 4, !tbaa !28
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %143

80:                                               ; preds = %76
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %82 = load i16, ptr %81, align 4, !tbaa !28
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %143

84:                                               ; preds = %80
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 308
  %86 = load i16, ptr %85, align 4, !tbaa !28
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %143

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %90 = load i16, ptr %89, align 4, !tbaa !28
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %143

92:                                               ; preds = %88
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 324
  %94 = load i16, ptr %93, align 4, !tbaa !28
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %143

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %98 = load i16, ptr %97, align 4, !tbaa !28
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %143

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 332
  %102 = load i16, ptr %101, align 4, !tbaa !28
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %143

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %106 = load i16, ptr %105, align 4, !tbaa !28
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %143

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %110 = load i16, ptr %109, align 4, !tbaa !28
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %143

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 252
  %114 = load i16, ptr %113, align 4, !tbaa !28
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %143

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %118 = load i16, ptr %117, align 4, !tbaa !28
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %138, label %143

120:                                              ; preds = %138
  %121 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %139
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 4
  %123 = load i16, ptr %122, align 4, !tbaa !28
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %139
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 8
  %128 = load i16, ptr %127, align 4, !tbaa !28
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %139
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 12
  %133 = load i16, ptr %132, align 4, !tbaa !28
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = add nuw nsw i64 %139, 4
  %137 = icmp eq i64 %136, 256
  br i1 %137, label %143, label %138, !llvm.loop !41

138:                                              ; preds = %135, %116
  %139 = phi i64 [ %136, %135 ], [ 32, %116 ]
  %140 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %139
  %141 = load i16, ptr %140, align 4, !tbaa !28
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %120, label %143

143:                                              ; preds = %138, %135, %130, %125, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  %144 = phi i32 [ 1, %112 ], [ 0, %20 ], [ 1, %108 ], [ 1, %116 ], [ 0, %16 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 1, %138 ], [ 0, %135 ], [ 1, %120 ], [ 1, %130 ], [ 1, %125 ]
  store i32 %144, ptr %13, align 8, !tbaa !38
  br label %145

145:                                              ; preds = %143, %11
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %147 = load ptr, ptr %146, align 8, !tbaa !42
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 2920
  %149 = load ptr, ptr %148, align 8, !tbaa !43
  %150 = load ptr, ptr %149, align 8, !tbaa !44
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 20
  %152 = load i32, ptr %151, align 4, !tbaa !47
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 5300
  store i32 0, ptr %153, align 4, !tbaa !48
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 5304
  store i32 573, ptr %154, align 8, !tbaa !49
  %155 = icmp sgt i32 %152, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %145
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %159 = zext nneg i32 %152 to i64
  br label %171

160:                                              ; preds = %190
  %161 = load i32, ptr %153, align 4, !tbaa !48
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %219

163:                                              ; preds = %160, %145
  %164 = phi i32 [ %191, %160 ], [ -1, %145 ]
  %165 = phi i32 [ %161, %160 ], [ 0, %145 ]
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %169 = icmp eq ptr %150, null
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %194

171:                                              ; preds = %190, %156
  %172 = phi i64 [ 0, %156 ], [ %192, %190 ]
  %173 = phi i32 [ -1, %156 ], [ %191, %190 ]
  %174 = getelementptr inbounds nuw [4 x i8], ptr %147, i64 %172
  %175 = load i16, ptr %174, align 2, !tbaa !28
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %171
  %178 = load i32, ptr %153, align 4, !tbaa !48
  %179 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %178, i32 1), !nosanitize !32
  %180 = extractvalue { i32, i1 } %179, 1, !nosanitize !32
  br i1 %180, label %181, label %182, !prof !35, !nosanitize !32

181:                                              ; preds = %391, %177
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

182:                                              ; preds = %177
  %183 = extractvalue { i32, i1 } %179, 0, !nosanitize !32
  store i32 %183, ptr %153, align 4, !tbaa !48
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x i8], ptr %157, i64 %184
  %186 = trunc nuw nsw i64 %172 to i32
  store i32 %186, ptr %185, align 4, !tbaa !4
  %187 = getelementptr inbounds nuw i8, ptr %158, i64 %172
  store i8 0, ptr %187, align 1, !tbaa !28
  br label %190

188:                                              ; preds = %171
  %189 = getelementptr inbounds nuw i8, ptr %174, i64 2
  store i16 0, ptr %189, align 2, !tbaa !28
  br label %190

190:                                              ; preds = %188, %182
  %191 = phi i32 [ %186, %182 ], [ %173, %188 ]
  %192 = add nuw nsw i64 %172, 1
  %193 = icmp eq i64 %192, %159
  br i1 %193, label %160, label %171, !llvm.loop !50

194:                                              ; preds = %216, %163
  %195 = phi i32 [ %165, %163 ], [ %217, %216 ]
  %196 = phi i32 [ %164, %163 ], [ %199, %216 ]
  %197 = icmp slt i32 %196, 2
  %198 = add i32 %196, 1
  %199 = select i1 %197, i32 %198, i32 %196
  %200 = add nsw i32 %195, 1
  %201 = select i1 %197, i32 %198, i32 0
  store i32 %200, ptr %153, align 4, !tbaa !48
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds [4 x i8], ptr %166, i64 %202
  store i32 %201, ptr %203, align 4, !tbaa !4
  %204 = sext i32 %201 to i64
  %205 = getelementptr inbounds [4 x i8], ptr %147, i64 %204
  store i16 1, ptr %205, align 2, !tbaa !28
  %206 = getelementptr inbounds i8, ptr %167, i64 %204
  store i8 0, ptr %206, align 1, !tbaa !28
  %207 = load i64, ptr %168, align 8, !tbaa !51
  %208 = add i64 %207, -1
  store i64 %208, ptr %168, align 8, !tbaa !51
  br i1 %169, label %216, label %209

209:                                              ; preds = %194
  %210 = getelementptr inbounds [4 x i8], ptr %150, i64 %204
  %211 = getelementptr inbounds nuw i8, ptr %210, i64 2
  %212 = load i16, ptr %211, align 2, !tbaa !28
  %213 = zext i16 %212 to i64
  %214 = load i64, ptr %170, align 8, !tbaa !52
  %215 = sub i64 %214, %213
  store i64 %215, ptr %170, align 8, !tbaa !52
  br label %216

216:                                              ; preds = %209, %194
  %217 = load i32, ptr %153, align 4, !tbaa !48
  %218 = icmp slt i32 %217, 2
  br i1 %218, label %194, label %219, !llvm.loop !53

219:                                              ; preds = %216, %160
  %220 = phi i32 [ %191, %160 ], [ %199, %216 ]
  %221 = phi i32 [ %161, %160 ], [ %217, %216 ]
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %220, ptr %222, align 8, !tbaa !54
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %225 = lshr i32 %221, 1
  %226 = zext nneg i32 %225 to i64
  br label %231

227:                                              ; preds = %297
  %228 = load i32, ptr %153, align 4, !tbaa !48
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %230 = sext i32 %152 to i64
  br label %304

231:                                              ; preds = %297, %219
  %232 = phi i64 [ %226, %219 ], [ %301, %297 ]
  %233 = getelementptr inbounds nuw [4 x i8], ptr %223, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, ptr %224, i64 %235
  %237 = load i32, ptr %153, align 4, !tbaa !48
  %238 = trunc i64 %232 to i32
  %239 = shl i32 %238, 1
  %240 = icmp sgt i32 %239, %237
  br i1 %240, label %297, label %241

241:                                              ; preds = %231
  %242 = getelementptr inbounds [4 x i8], ptr %147, i64 %235
  br label %243

243:                                              ; preds = %291, %241
  %244 = phi i32 [ %237, %241 ], [ %295, %291 ]
  %245 = phi i32 [ %239, %241 ], [ %294, %291 ]
  %246 = phi i32 [ %238, %241 ], [ %276, %291 ]
  %247 = icmp slt i32 %245, %244
  br i1 %247, label %250, label %248

248:                                              ; preds = %243
  %249 = sext i32 %245 to i64
  br label %274

250:                                              ; preds = %243
  %251 = or disjoint i32 %245, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [4 x i8], ptr %223, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i8], ptr %147, i64 %255
  %257 = load i16, ptr %256, align 2, !tbaa !28
  %258 = sext i32 %245 to i64
  %259 = getelementptr inbounds [4 x i8], ptr %223, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i8], ptr %147, i64 %261
  %263 = load i16, ptr %262, align 2, !tbaa !28
  %264 = icmp ult i16 %257, %263
  br i1 %264, label %273, label %265

265:                                              ; preds = %250
  %266 = icmp eq i16 %257, %263
  br i1 %266, label %267, label %274

267:                                              ; preds = %265
  %268 = getelementptr inbounds i8, ptr %224, i64 %255
  %269 = load i8, ptr %268, align 1, !tbaa !28
  %270 = getelementptr inbounds i8, ptr %224, i64 %261
  %271 = load i8, ptr %270, align 1, !tbaa !28
  %272 = icmp ugt i8 %269, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %267, %250
  br label %274

274:                                              ; preds = %273, %267, %265, %248
  %275 = phi i64 [ %249, %248 ], [ %252, %273 ], [ %258, %267 ], [ %258, %265 ]
  %276 = phi i32 [ %245, %248 ], [ %251, %273 ], [ %245, %267 ], [ %245, %265 ]
  %277 = load i16, ptr %242, align 2, !tbaa !28
  %278 = getelementptr inbounds [4 x i8], ptr %223, i64 %275
  %279 = load i32, ptr %278, align 4, !tbaa !4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [4 x i8], ptr %147, i64 %280
  %282 = load i16, ptr %281, align 2, !tbaa !28
  %283 = icmp ult i16 %277, %282
  br i1 %283, label %297, label %284

284:                                              ; preds = %274
  %285 = icmp eq i16 %277, %282
  br i1 %285, label %286, label %291

286:                                              ; preds = %284
  %287 = load i8, ptr %236, align 1, !tbaa !28
  %288 = getelementptr inbounds i8, ptr %224, i64 %280
  %289 = load i8, ptr %288, align 1, !tbaa !28
  %290 = icmp ugt i8 %287, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %286, %284
  %292 = sext i32 %246 to i64
  %293 = getelementptr inbounds [4 x i8], ptr %223, i64 %292
  store i32 %279, ptr %293, align 4, !tbaa !4
  %294 = shl i32 %276, 1
  %295 = load i32, ptr %153, align 4, !tbaa !48
  %296 = icmp sgt i32 %294, %295
  br i1 %296, label %297, label %243, !llvm.loop !55

297:                                              ; preds = %291, %286, %274, %231
  %298 = phi i32 [ %238, %231 ], [ %246, %274 ], [ %246, %286 ], [ %276, %291 ]
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x i8], ptr %223, i64 %299
  store i32 %234, ptr %300, align 4, !tbaa !4
  %301 = add nsw i64 %232, -1
  %302 = icmp sgt i64 %232, 1
  br i1 %302, label %231, label %227, !llvm.loop !56

303:                                              ; preds = %481, %384, %377, %304
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

304:                                              ; preds = %476, %227
  %305 = phi i32 [ %228, %227 ], [ %479, %476 ]
  %306 = phi i64 [ %230, %227 ], [ %416, %476 ]
  %307 = load i32, ptr %229, align 4, !tbaa !4
  %308 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %305, i32 -1)
  %309 = extractvalue { i32, i1 } %308, 1, !nosanitize !32
  br i1 %309, label %303, label %310, !prof !35, !nosanitize !32

310:                                              ; preds = %304
  %311 = extractvalue { i32, i1 } %308, 0, !nosanitize !32
  store i32 %311, ptr %153, align 4, !tbaa !48
  %312 = sext i32 %305 to i64
  %313 = getelementptr inbounds [4 x i8], ptr %223, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !4
  store i32 %314, ptr %229, align 4, !tbaa !4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, ptr %224, i64 %315
  %317 = icmp slt i32 %311, 2
  br i1 %317, label %377, label %318

318:                                              ; preds = %310
  %319 = getelementptr inbounds [4 x i8], ptr %147, i64 %315
  br label %320

320:                                              ; preds = %368, %318
  %321 = phi i32 [ %311, %318 ], [ %372, %368 ]
  %322 = phi i32 [ 2, %318 ], [ %371, %368 ]
  %323 = phi i32 [ 1, %318 ], [ %353, %368 ]
  %324 = icmp slt i32 %322, %321
  br i1 %324, label %327, label %325

325:                                              ; preds = %320
  %326 = sext i32 %322 to i64
  br label %351

327:                                              ; preds = %320
  %328 = or disjoint i32 %322, 1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [4 x i8], ptr %223, i64 %329
  %331 = load i32, ptr %330, align 4, !tbaa !4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [4 x i8], ptr %147, i64 %332
  %334 = load i16, ptr %333, align 2, !tbaa !28
  %335 = sext i32 %322 to i64
  %336 = getelementptr inbounds [4 x i8], ptr %223, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [4 x i8], ptr %147, i64 %338
  %340 = load i16, ptr %339, align 2, !tbaa !28
  %341 = icmp ult i16 %334, %340
  br i1 %341, label %350, label %342

342:                                              ; preds = %327
  %343 = icmp eq i16 %334, %340
  br i1 %343, label %344, label %351

344:                                              ; preds = %342
  %345 = getelementptr inbounds i8, ptr %224, i64 %332
  %346 = load i8, ptr %345, align 1, !tbaa !28
  %347 = getelementptr inbounds i8, ptr %224, i64 %338
  %348 = load i8, ptr %347, align 1, !tbaa !28
  %349 = icmp ugt i8 %346, %348
  br i1 %349, label %351, label %350

350:                                              ; preds = %344, %327
  br label %351

351:                                              ; preds = %350, %344, %342, %325
  %352 = phi i64 [ %326, %325 ], [ %329, %350 ], [ %335, %344 ], [ %335, %342 ]
  %353 = phi i32 [ %322, %325 ], [ %328, %350 ], [ %322, %344 ], [ %322, %342 ]
  %354 = load i16, ptr %319, align 2, !tbaa !28
  %355 = getelementptr inbounds [4 x i8], ptr %223, i64 %352
  %356 = load i32, ptr %355, align 4, !tbaa !4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [4 x i8], ptr %147, i64 %357
  %359 = load i16, ptr %358, align 2, !tbaa !28
  %360 = icmp ult i16 %354, %359
  br i1 %360, label %374, label %361

361:                                              ; preds = %351
  %362 = icmp eq i16 %354, %359
  br i1 %362, label %363, label %368

363:                                              ; preds = %361
  %364 = load i8, ptr %316, align 1, !tbaa !28
  %365 = getelementptr inbounds i8, ptr %224, i64 %357
  %366 = load i8, ptr %365, align 1, !tbaa !28
  %367 = icmp ugt i8 %364, %366
  br i1 %367, label %368, label %374

368:                                              ; preds = %363, %361
  %369 = sext i32 %323 to i64
  %370 = getelementptr inbounds [4 x i8], ptr %223, i64 %369
  store i32 %356, ptr %370, align 4, !tbaa !4
  %371 = shl i32 %353, 1
  %372 = load i32, ptr %153, align 4, !tbaa !48
  %373 = icmp sgt i32 %371, %372
  br i1 %373, label %374, label %320, !llvm.loop !55

374:                                              ; preds = %368, %363, %351
  %375 = phi i32 [ %323, %351 ], [ %323, %363 ], [ %353, %368 ]
  %376 = sext i32 %375 to i64
  br label %377

377:                                              ; preds = %374, %310
  %378 = phi i64 [ 1, %310 ], [ %376, %374 ]
  %379 = getelementptr inbounds [4 x i8], ptr %223, i64 %378
  store i32 %314, ptr %379, align 4, !tbaa !4
  %380 = load i32, ptr %229, align 4, !tbaa !4
  %381 = load i32, ptr %154, align 8, !tbaa !49
  %382 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %381, i32 -1)
  %383 = extractvalue { i32, i1 } %382, 1, !nosanitize !32
  br i1 %383, label %303, label %384, !prof !35, !nosanitize !32

384:                                              ; preds = %377
  %385 = extractvalue { i32, i1 } %382, 0, !nosanitize !32
  store i32 %385, ptr %154, align 8, !tbaa !49
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [4 x i8], ptr %223, i64 %386
  store i32 %307, ptr %387, align 4, !tbaa !4
  %388 = load i32, ptr %154, align 8, !tbaa !49
  %389 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %388, i32 -1)
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !32
  br i1 %390, label %303, label %391, !prof !35, !nosanitize !32

391:                                              ; preds = %384
  %392 = extractvalue { i32, i1 } %389, 0, !nosanitize !32
  store i32 %392, ptr %154, align 8, !tbaa !49
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [4 x i8], ptr %223, i64 %393
  store i32 %380, ptr %394, align 4, !tbaa !4
  %395 = sext i32 %307 to i64
  %396 = getelementptr inbounds [4 x i8], ptr %147, i64 %395
  %397 = load i16, ptr %396, align 2, !tbaa !28
  %398 = sext i32 %380 to i64
  %399 = getelementptr inbounds [4 x i8], ptr %147, i64 %398
  %400 = load i16, ptr %399, align 2, !tbaa !28
  %401 = add i16 %400, %397
  %402 = getelementptr inbounds [4 x i8], ptr %147, i64 %306
  store i16 %401, ptr %402, align 2, !tbaa !28
  %403 = getelementptr inbounds i8, ptr %224, i64 %395
  %404 = load i8, ptr %403, align 1, !tbaa !28
  %405 = getelementptr inbounds i8, ptr %224, i64 %398
  %406 = load i8, ptr %405, align 1, !tbaa !28
  %407 = tail call i8 @llvm.umax.i8(i8 %404, i8 %406)
  %408 = add i8 %407, 1
  %409 = getelementptr inbounds i8, ptr %224, i64 %306
  store i8 %408, ptr %409, align 1, !tbaa !28
  %410 = trunc nsw i64 %306 to i32
  %411 = trunc i64 %306 to i16
  %412 = getelementptr inbounds nuw i8, ptr %399, i64 2
  store i16 %411, ptr %412, align 2, !tbaa !28
  %413 = getelementptr inbounds nuw i8, ptr %396, i64 2
  store i16 %411, ptr %413, align 2, !tbaa !28
  %414 = icmp eq i64 %306, 2147483647
  br i1 %414, label %181, label %415, !prof !35, !nosanitize !32

415:                                              ; preds = %391
  %416 = add nsw i64 %306, 1
  store i32 %410, ptr %229, align 4, !tbaa !4
  %417 = load i32, ptr %153, align 4, !tbaa !48
  %418 = icmp slt i32 %417, 2
  br i1 %418, label %476, label %419

419:                                              ; preds = %467, %415
  %420 = phi i32 [ %471, %467 ], [ %417, %415 ]
  %421 = phi i32 [ %470, %467 ], [ 2, %415 ]
  %422 = phi i32 [ %452, %467 ], [ 1, %415 ]
  %423 = icmp slt i32 %421, %420
  br i1 %423, label %426, label %424

424:                                              ; preds = %419
  %425 = sext i32 %421 to i64
  br label %450

426:                                              ; preds = %419
  %427 = or disjoint i32 %421, 1
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [4 x i8], ptr %223, i64 %428
  %430 = load i32, ptr %429, align 4, !tbaa !4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [4 x i8], ptr %147, i64 %431
  %433 = load i16, ptr %432, align 2, !tbaa !28
  %434 = sext i32 %421 to i64
  %435 = getelementptr inbounds [4 x i8], ptr %223, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [4 x i8], ptr %147, i64 %437
  %439 = load i16, ptr %438, align 2, !tbaa !28
  %440 = icmp ult i16 %433, %439
  br i1 %440, label %449, label %441

441:                                              ; preds = %426
  %442 = icmp eq i16 %433, %439
  br i1 %442, label %443, label %450

443:                                              ; preds = %441
  %444 = getelementptr inbounds i8, ptr %224, i64 %431
  %445 = load i8, ptr %444, align 1, !tbaa !28
  %446 = getelementptr inbounds i8, ptr %224, i64 %437
  %447 = load i8, ptr %446, align 1, !tbaa !28
  %448 = icmp ugt i8 %445, %447
  br i1 %448, label %450, label %449

449:                                              ; preds = %443, %426
  br label %450

450:                                              ; preds = %449, %443, %441, %424
  %451 = phi i64 [ %425, %424 ], [ %428, %449 ], [ %434, %443 ], [ %434, %441 ]
  %452 = phi i32 [ %421, %424 ], [ %427, %449 ], [ %421, %443 ], [ %421, %441 ]
  %453 = load i16, ptr %402, align 2, !tbaa !28
  %454 = getelementptr inbounds [4 x i8], ptr %223, i64 %451
  %455 = load i32, ptr %454, align 4, !tbaa !4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [4 x i8], ptr %147, i64 %456
  %458 = load i16, ptr %457, align 2, !tbaa !28
  %459 = icmp ult i16 %453, %458
  br i1 %459, label %473, label %460

460:                                              ; preds = %450
  %461 = icmp eq i16 %453, %458
  br i1 %461, label %462, label %467

462:                                              ; preds = %460
  %463 = load i8, ptr %409, align 1, !tbaa !28
  %464 = getelementptr inbounds i8, ptr %224, i64 %456
  %465 = load i8, ptr %464, align 1, !tbaa !28
  %466 = icmp ugt i8 %463, %465
  br i1 %466, label %467, label %473

467:                                              ; preds = %462, %460
  %468 = sext i32 %422 to i64
  %469 = getelementptr inbounds [4 x i8], ptr %223, i64 %468
  store i32 %455, ptr %469, align 4, !tbaa !4
  %470 = shl i32 %452, 1
  %471 = load i32, ptr %153, align 4, !tbaa !48
  %472 = icmp sgt i32 %470, %471
  br i1 %472, label %473, label %419, !llvm.loop !55

473:                                              ; preds = %467, %462, %450
  %474 = phi i32 [ %422, %450 ], [ %422, %462 ], [ %452, %467 ]
  %475 = sext i32 %474 to i64
  br label %476

476:                                              ; preds = %473, %415
  %477 = phi i64 [ 1, %415 ], [ %475, %473 ]
  %478 = getelementptr inbounds [4 x i8], ptr %223, i64 %477
  store i32 %410, ptr %478, align 4, !tbaa !4
  %479 = load i32, ptr %153, align 4, !tbaa !48
  %480 = icmp sgt i32 %479, 1
  br i1 %480, label %304, label %481, !llvm.loop !57

481:                                              ; preds = %476
  %482 = load i32, ptr %154, align 8, !tbaa !49
  %483 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %482, i32 -1)
  %484 = extractvalue { i32, i1 } %483, 1, !nosanitize !32
  br i1 %484, label %303, label %485, !prof !35, !nosanitize !32

485:                                              ; preds = %481
  %486 = extractvalue { i32, i1 } %483, 0, !nosanitize !32
  %487 = load i32, ptr %229, align 4, !tbaa !4
  store i32 %486, ptr %154, align 8, !tbaa !49
  %488 = sext i32 %486 to i64
  %489 = getelementptr inbounds [4 x i8], ptr %223, i64 %488
  store i32 %487, ptr %489, align 4, !tbaa !4
  %490 = load ptr, ptr %146, align 8, !tbaa !42
  %491 = load i32, ptr %222, align 8, !tbaa !54
  %492 = load ptr, ptr %148, align 8, !tbaa !43
  %493 = load ptr, ptr %492, align 8, !tbaa !44
  %494 = getelementptr inbounds nuw i8, ptr %492, i64 8
  %495 = load ptr, ptr %494, align 8, !tbaa !58
  %496 = getelementptr inbounds nuw i8, ptr %492, i64 16
  %497 = load i32, ptr %496, align 8, !tbaa !59
  %498 = getelementptr inbounds nuw i8, ptr %492, i64 24
  %499 = load i32, ptr %498, align 8, !tbaa !60
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %500, i8 0, i64 32, i1 false), !tbaa !61
  %501 = load i32, ptr %154, align 8, !tbaa !49
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [4 x i8], ptr %223, i64 %502
  %504 = load i32, ptr %503, align 4, !tbaa !4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [4 x i8], ptr %490, i64 %505
  %507 = getelementptr inbounds nuw i8, ptr %506, i64 2
  store i16 0, ptr %507, align 2, !tbaa !28
  %508 = load i32, ptr %154, align 8, !tbaa !49
  %509 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %508, i32 1), !nosanitize !32
  %510 = extractvalue { i32, i1 } %509, 1, !nosanitize !32
  br i1 %510, label %511, label %512, !prof !35, !nosanitize !32

511:                                              ; preds = %609, %573, %561, %536, %485
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

512:                                              ; preds = %485
  %513 = extractvalue { i32, i1 } %509, 0
  %514 = icmp slt i32 %513, 573
  br i1 %514, label %515, label %678

515:                                              ; preds = %512
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %517 = icmp eq ptr %493, null
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %519 = sext i32 %513 to i64
  br label %520

520:                                              ; preds = %586, %515
  %521 = phi i64 [ %519, %515 ], [ %587, %586 ]
  %522 = phi i32 [ 0, %515 ], [ %543, %586 ]
  %523 = getelementptr inbounds [4 x i8], ptr %223, i64 %521
  %524 = load i32, ptr %523, align 4, !tbaa !4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [4 x i8], ptr %490, i64 %525
  %527 = getelementptr inbounds nuw i8, ptr %526, i64 2
  %528 = load i16, ptr %527, align 2, !tbaa !28
  %529 = zext i16 %528 to i64
  %530 = getelementptr inbounds nuw [4 x i8], ptr %490, i64 %529
  %531 = getelementptr inbounds nuw i8, ptr %530, i64 2
  %532 = load i16, ptr %531, align 2, !tbaa !28
  %533 = zext i16 %532 to i32
  %534 = add nuw nsw i32 %533, 1
  %535 = icmp sgt i32 %499, %533
  br i1 %535, label %541, label %536

536:                                              ; preds = %520
  %537 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %522, i32 1), !nosanitize !32
  %538 = extractvalue { i32, i1 } %537, 1, !nosanitize !32
  br i1 %538, label %511, label %539, !prof !35, !nosanitize !32

539:                                              ; preds = %536
  %540 = extractvalue { i32, i1 } %537, 0, !nosanitize !32
  br label %541

541:                                              ; preds = %539, %520
  %542 = phi i32 [ %499, %539 ], [ %534, %520 ]
  %543 = phi i32 [ %540, %539 ], [ %522, %520 ]
  %544 = trunc i32 %542 to i16
  store i16 %544, ptr %527, align 2, !tbaa !28
  %545 = icmp sgt i32 %524, %491
  br i1 %545, label %586, label %546

546:                                              ; preds = %541
  %547 = sext i32 %542 to i64
  %548 = getelementptr inbounds [2 x i8], ptr %500, i64 %547
  %549 = load i16, ptr %548, align 2, !tbaa !61
  %550 = add i16 %549, 1
  store i16 %550, ptr %548, align 2, !tbaa !61
  %551 = icmp slt i32 %524, %497
  br i1 %551, label %561, label %552

552:                                              ; preds = %546
  %553 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %524, i32 %497), !nosanitize !32
  %554 = extractvalue { i32, i1 } %553, 1, !nosanitize !32
  br i1 %554, label %555, label %556, !prof !35, !nosanitize !32

555:                                              ; preds = %647, %642, %638, %614, %606, %592, %552
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

556:                                              ; preds = %552
  %557 = extractvalue { i32, i1 } %553, 0, !nosanitize !32
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [4 x i8], ptr %495, i64 %558
  %560 = load i32, ptr %559, align 4, !tbaa !4
  br label %561

561:                                              ; preds = %556, %546
  %562 = phi i32 [ %560, %556 ], [ 0, %546 ]
  %563 = load i16, ptr %526, align 2, !tbaa !28
  %564 = zext i16 %563 to i64
  %565 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %542, i32 %562), !nosanitize !32
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !32
  br i1 %566, label %511, label %567, !prof !35, !nosanitize !32

567:                                              ; preds = %561
  %568 = extractvalue { i32, i1 } %565, 0, !nosanitize !32
  %569 = zext i32 %568 to i64
  %570 = mul nuw nsw i64 %569, %564
  %571 = load i64, ptr %516, align 8, !tbaa !51
  %572 = add i64 %571, %570
  store i64 %572, ptr %516, align 8, !tbaa !51
  br i1 %517, label %586, label %573

573:                                              ; preds = %567
  %574 = getelementptr inbounds [4 x i8], ptr %493, i64 %525
  %575 = getelementptr inbounds nuw i8, ptr %574, i64 2
  %576 = load i16, ptr %575, align 2, !tbaa !28
  %577 = zext i16 %576 to i32
  %578 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %577, i32 %562), !nosanitize !32
  %579 = extractvalue { i32, i1 } %578, 1, !nosanitize !32
  br i1 %579, label %511, label %580, !prof !35, !nosanitize !32

580:                                              ; preds = %573
  %581 = extractvalue { i32, i1 } %578, 0, !nosanitize !32
  %582 = zext i32 %581 to i64
  %583 = mul nuw nsw i64 %582, %564
  %584 = load i64, ptr %518, align 8, !tbaa !52
  %585 = add i64 %584, %583
  store i64 %585, ptr %518, align 8, !tbaa !52
  br label %586

586:                                              ; preds = %580, %567, %541
  %587 = add nsw i64 %521, 1
  %588 = and i64 %587, 4294967295
  %589 = icmp eq i64 %588, 573
  br i1 %589, label %590, label %520, !llvm.loop !62

590:                                              ; preds = %586
  %591 = icmp eq i32 %543, 0
  br i1 %591, label %678, label %592

592:                                              ; preds = %590
  %593 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %499, i32 -1)
  %594 = extractvalue { i32, i1 } %593, 1, !nosanitize !32
  %595 = sext i32 %499 to i64
  %596 = getelementptr inbounds [2 x i8], ptr %500, i64 %595
  br i1 %594, label %555, label %597, !prof !35, !nosanitize !32

597:                                              ; preds = %624, %592
  %598 = phi i32 [ %625, %624 ], [ %543, %592 ]
  br label %599

599:                                              ; preds = %606, %597
  %600 = phi { i32, i1 } [ %607, %606 ], [ %593, %597 ]
  %601 = extractvalue { i32, i1 } %600, 0
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds [2 x i8], ptr %500, i64 %602
  %604 = load i16, ptr %603, align 2, !tbaa !61
  %605 = icmp eq i16 %604, 0
  br i1 %605, label %606, label %609

606:                                              ; preds = %599
  %607 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %601, i32 -1)
  %608 = extractvalue { i32, i1 } %607, 1, !nosanitize !32
  br i1 %608, label %555, label %599, !prof !35, !llvm.loop !63, !nosanitize !32

609:                                              ; preds = %599
  %610 = getelementptr inbounds [2 x i8], ptr %500, i64 %602
  %611 = add i16 %604, -1
  store i16 %611, ptr %610, align 2, !tbaa !61
  %612 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %601, i32 1), !nosanitize !32
  %613 = extractvalue { i32, i1 } %612, 1, !nosanitize !32
  br i1 %613, label %511, label %614, !prof !35, !nosanitize !32

614:                                              ; preds = %609
  %615 = extractvalue { i32, i1 } %612, 0, !nosanitize !32
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds [2 x i8], ptr %500, i64 %616
  %618 = load i16, ptr %617, align 2, !tbaa !61
  %619 = add i16 %618, 2
  store i16 %619, ptr %617, align 2, !tbaa !61
  %620 = load i16, ptr %596, align 2, !tbaa !61
  %621 = add i16 %620, -1
  store i16 %621, ptr %596, align 2, !tbaa !61
  %622 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %598, i32 -2)
  %623 = extractvalue { i32, i1 } %622, 1, !nosanitize !32
  br i1 %623, label %555, label %624, !prof !35, !nosanitize !32

624:                                              ; preds = %614
  %625 = extractvalue { i32, i1 } %622, 0, !nosanitize !32
  %626 = icmp sgt i32 %625, 0
  br i1 %626, label %597, label %627, !llvm.loop !64

627:                                              ; preds = %624
  %628 = icmp eq i32 %499, 0
  br i1 %628, label %678, label %629

629:                                              ; preds = %674, %627
  %630 = phi i64 [ %675, %674 ], [ %595, %627 ]
  %631 = phi i32 [ %639, %674 ], [ 573, %627 ]
  %632 = getelementptr inbounds [2 x i8], ptr %500, i64 %630
  %633 = load i16, ptr %632, align 2, !tbaa !61
  %634 = icmp eq i16 %633, 0
  br i1 %634, label %638, label %635

635:                                              ; preds = %629
  %636 = zext i16 %633 to i32
  %637 = trunc i64 %630 to i16
  br label %642

638:                                              ; preds = %671, %629
  %639 = phi i32 [ %631, %629 ], [ %652, %671 ]
  %640 = and i64 %630, 4294967295
  %641 = icmp eq i64 %640, 2147483648
  br i1 %641, label %555, label %674, !prof !35, !nosanitize !32

642:                                              ; preds = %671, %635
  %643 = phi i32 [ %631, %635 ], [ %652, %671 ]
  %644 = phi i32 [ %636, %635 ], [ %672, %671 ]
  %645 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %643, i32 -1)
  %646 = extractvalue { i32, i1 } %645, 1, !nosanitize !32
  br i1 %646, label %555, label %650, !prof !65, !nosanitize !32

647:                                              ; preds = %650
  %648 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %652, i32 -1)
  %649 = extractvalue { i32, i1 } %648, 1, !nosanitize !32
  br i1 %649, label %555, label %650, !prof !66, !llvm.loop !67, !nosanitize !32

650:                                              ; preds = %647, %642
  %651 = phi { i32, i1 } [ %648, %647 ], [ %645, %642 ]
  %652 = extractvalue { i32, i1 } %651, 0, !nosanitize !32
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [4 x i8], ptr %223, i64 %653
  %655 = load i32, ptr %654, align 4, !tbaa !4
  %656 = icmp sgt i32 %655, %491
  br i1 %656, label %647, label %657, !llvm.loop !67

657:                                              ; preds = %650
  %658 = sext i32 %655 to i64
  %659 = getelementptr inbounds [4 x i8], ptr %490, i64 %658
  %660 = getelementptr inbounds nuw i8, ptr %659, i64 2
  %661 = load i16, ptr %660, align 2, !tbaa !28
  %662 = zext i16 %661 to i64
  %663 = icmp eq i64 %630, %662
  br i1 %663, label %671, label %664

664:                                              ; preds = %657
  %665 = sub nsw i64 %630, %662
  %666 = load i16, ptr %659, align 2, !tbaa !28
  %667 = zext i16 %666 to i64
  %668 = mul nsw i64 %665, %667
  %669 = load i64, ptr %516, align 8, !tbaa !51
  %670 = add i64 %668, %669
  store i64 %670, ptr %516, align 8, !tbaa !51
  store i16 %637, ptr %660, align 2, !tbaa !28
  br label %671

671:                                              ; preds = %664, %657
  %672 = add nsw i32 %644, -1
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %638, label %642, !llvm.loop !67

674:                                              ; preds = %638
  %675 = add nsw i64 %630, -1
  %676 = and i64 %675, 4294967295
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %678, label %629, !llvm.loop !68

678:                                              ; preds = %674, %627, %590, %512
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %679 = load i16, ptr %500, align 2, !tbaa !61
  %680 = shl i16 %679, 1
  %681 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %680, ptr %681, align 2, !tbaa !61
  %682 = getelementptr i8, ptr %0, i64 2978
  %683 = load i16, ptr %682, align 2, !tbaa !61
  %684 = add i16 %683, %680
  %685 = shl i16 %684, 1
  %686 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %685, ptr %686, align 4, !tbaa !61
  %687 = getelementptr i8, ptr %0, i64 2980
  %688 = load i16, ptr %687, align 2, !tbaa !61
  %689 = add i16 %688, %685
  %690 = shl i16 %689, 1
  %691 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %690, ptr %691, align 2, !tbaa !61
  %692 = getelementptr i8, ptr %0, i64 2982
  %693 = load i16, ptr %692, align 2, !tbaa !61
  %694 = add i16 %693, %690
  %695 = shl i16 %694, 1
  %696 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %695, ptr %696, align 8, !tbaa !61
  %697 = getelementptr i8, ptr %0, i64 2984
  %698 = load i16, ptr %697, align 2, !tbaa !61
  %699 = add i16 %698, %695
  %700 = shl i16 %699, 1
  %701 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %700, ptr %701, align 2, !tbaa !61
  %702 = getelementptr i8, ptr %0, i64 2986
  %703 = load i16, ptr %702, align 2, !tbaa !61
  %704 = add i16 %703, %700
  %705 = shl i16 %704, 1
  %706 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %705, ptr %706, align 4, !tbaa !61
  %707 = getelementptr i8, ptr %0, i64 2988
  %708 = load i16, ptr %707, align 2, !tbaa !61
  %709 = add i16 %708, %705
  %710 = shl i16 %709, 1
  %711 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %710, ptr %711, align 2, !tbaa !61
  %712 = getelementptr i8, ptr %0, i64 2990
  %713 = load i16, ptr %712, align 2, !tbaa !61
  %714 = add i16 %713, %710
  %715 = shl i16 %714, 1
  %716 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %715, ptr %716, align 16, !tbaa !61
  %717 = getelementptr i8, ptr %0, i64 2992
  %718 = load i16, ptr %717, align 2, !tbaa !61
  %719 = add i16 %718, %715
  %720 = shl i16 %719, 1
  %721 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %720, ptr %721, align 2, !tbaa !61
  %722 = getelementptr i8, ptr %0, i64 2994
  %723 = load i16, ptr %722, align 2, !tbaa !61
  %724 = add i16 %723, %720
  %725 = shl i16 %724, 1
  %726 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %725, ptr %726, align 4, !tbaa !61
  %727 = getelementptr i8, ptr %0, i64 2996
  %728 = load i16, ptr %727, align 2, !tbaa !61
  %729 = add i16 %728, %725
  %730 = shl i16 %729, 1
  %731 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %730, ptr %731, align 2, !tbaa !61
  %732 = getelementptr i8, ptr %0, i64 2998
  %733 = load i16, ptr %732, align 2, !tbaa !61
  %734 = add i16 %733, %730
  %735 = shl i16 %734, 1
  %736 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %735, ptr %736, align 8, !tbaa !61
  %737 = getelementptr i8, ptr %0, i64 3000
  %738 = load i16, ptr %737, align 2, !tbaa !61
  %739 = add i16 %738, %735
  %740 = shl i16 %739, 1
  %741 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %740, ptr %741, align 2, !tbaa !61
  %742 = getelementptr i8, ptr %0, i64 3002
  %743 = load i16, ptr %742, align 2, !tbaa !61
  %744 = add i16 %743, %740
  %745 = shl i16 %744, 1
  %746 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %745, ptr %746, align 4, !tbaa !61
  %747 = getelementptr i8, ptr %0, i64 3004
  %748 = load i16, ptr %747, align 2, !tbaa !61
  %749 = add i16 %748, %745
  %750 = shl i16 %749, 1
  %751 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %750, ptr %751, align 2, !tbaa !61
  %752 = icmp slt i32 %220, 0
  br i1 %752, label %814, label %754

753:                                              ; preds = %808
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

754:                                              ; preds = %810, %678
  %755 = phi i64 [ %811, %810 ], [ 0, %678 ]
  %756 = getelementptr inbounds nuw [4 x i8], ptr %147, i64 %755
  %757 = getelementptr inbounds nuw i8, ptr %756, i64 2
  %758 = load i16, ptr %757, align 2, !tbaa !28
  %759 = icmp eq i16 %758, 0
  br i1 %759, label %808, label %760

760:                                              ; preds = %754
  %761 = zext i16 %758 to i32
  %762 = zext i16 %758 to i64
  %763 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %762
  %764 = load i16, ptr %763, align 2, !tbaa !61
  %765 = add i16 %764, 1
  store i16 %765, ptr %763, align 2, !tbaa !61
  %766 = and i32 %761, 3
  %767 = icmp ult i16 %758, 4
  br i1 %767, label %792, label %768

768:                                              ; preds = %760
  %769 = and i32 %761, 65532
  br label %770

770:                                              ; preds = %770, %768
  %771 = phi i16 [ %764, %768 ], [ %787, %770 ]
  %772 = phi i16 [ 0, %768 ], [ %786, %770 ]
  %773 = phi i32 [ 0, %768 ], [ %788, %770 ]
  %774 = and i16 %771, 1
  %775 = or disjoint i16 %772, %774
  %776 = shl i16 %775, 2
  %777 = and i16 %771, 2
  %778 = or disjoint i16 %776, %777
  %779 = lshr i16 %771, 2
  %780 = and i16 %779, 1
  %781 = or disjoint i16 %778, %780
  %782 = shl i16 %781, 1
  %783 = lshr i16 %771, 3
  %784 = and i16 %783, 1
  %785 = or disjoint i16 %782, %784
  %786 = shl i16 %785, 1
  %787 = lshr i16 %771, 4
  %788 = add i32 %773, 4
  %789 = icmp eq i32 %788, %769
  br i1 %789, label %790, label %770, !llvm.loop !69

790:                                              ; preds = %770
  %791 = icmp eq i32 %766, 0
  br i1 %791, label %806, label %792

792:                                              ; preds = %790, %760
  %793 = phi i16 [ %764, %760 ], [ %787, %790 ]
  %794 = phi i16 [ 0, %760 ], [ %786, %790 ]
  %795 = icmp ne i32 %766, 0
  tail call void @llvm.assume(i1 %795)
  br label %796

796:                                              ; preds = %796, %792
  %797 = phi i16 [ %793, %792 ], [ %803, %796 ]
  %798 = phi i16 [ %794, %792 ], [ %802, %796 ]
  %799 = phi i32 [ 0, %792 ], [ %804, %796 ]
  %800 = and i16 %797, 1
  %801 = or disjoint i16 %798, %800
  %802 = shl i16 %801, 1
  %803 = lshr i16 %797, 1
  %804 = add i32 %799, 1
  %805 = icmp eq i32 %804, %766
  br i1 %805, label %806, label %796, !llvm.loop !70

806:                                              ; preds = %796, %790
  %807 = phi i16 [ %785, %790 ], [ %801, %796 ]
  store i16 %807, ptr %756, align 2, !tbaa !28
  br label %808

808:                                              ; preds = %806, %754
  %809 = icmp eq i64 %755, 2147483647
  br i1 %809, label %753, label %810, !prof !35, !nosanitize !32

810:                                              ; preds = %808
  %811 = add nuw nsw i64 %755, 1
  %812 = trunc i64 %811 to i32
  %813 = icmp slt i32 %220, %812
  br i1 %813, label %814, label %754, !llvm.loop !72

814:                                              ; preds = %810, %678
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %815 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %816 = load ptr, ptr %815, align 8, !tbaa !42
  %817 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %818 = load ptr, ptr %817, align 8, !tbaa !43
  %819 = load ptr, ptr %818, align 8, !tbaa !44
  %820 = getelementptr inbounds nuw i8, ptr %818, i64 20
  %821 = load i32, ptr %820, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %822 = icmp sgt i32 %821, 0
  br i1 %822, label %823, label %828

823:                                              ; preds = %814
  %824 = zext nneg i32 %821 to i64
  br label %834

825:                                              ; preds = %853
  %826 = load i32, ptr %153, align 4, !tbaa !48
  %827 = icmp slt i32 %826, 2
  br i1 %827, label %828, label %882

828:                                              ; preds = %825, %814
  %829 = phi i32 [ %854, %825 ], [ -1, %814 ]
  %830 = phi i32 [ %826, %825 ], [ 0, %814 ]
  %831 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %832 = icmp eq ptr %819, null
  %833 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %857

834:                                              ; preds = %853, %823
  %835 = phi i64 [ 0, %823 ], [ %855, %853 ]
  %836 = phi i32 [ -1, %823 ], [ %854, %853 ]
  %837 = getelementptr inbounds nuw [4 x i8], ptr %816, i64 %835
  %838 = load i16, ptr %837, align 2, !tbaa !28
  %839 = icmp eq i16 %838, 0
  br i1 %839, label %851, label %840

840:                                              ; preds = %834
  %841 = load i32, ptr %153, align 4, !tbaa !48
  %842 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %841, i32 1), !nosanitize !32
  %843 = extractvalue { i32, i1 } %842, 1, !nosanitize !32
  br i1 %843, label %844, label %845, !prof !35, !nosanitize !32

844:                                              ; preds = %1051, %840
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

845:                                              ; preds = %840
  %846 = extractvalue { i32, i1 } %842, 0, !nosanitize !32
  store i32 %846, ptr %153, align 4, !tbaa !48
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds [4 x i8], ptr %223, i64 %847
  %849 = trunc nuw nsw i64 %835 to i32
  store i32 %849, ptr %848, align 4, !tbaa !4
  %850 = getelementptr inbounds nuw i8, ptr %224, i64 %835
  store i8 0, ptr %850, align 1, !tbaa !28
  br label %853

851:                                              ; preds = %834
  %852 = getelementptr inbounds nuw i8, ptr %837, i64 2
  store i16 0, ptr %852, align 2, !tbaa !28
  br label %853

853:                                              ; preds = %851, %845
  %854 = phi i32 [ %849, %845 ], [ %836, %851 ]
  %855 = add nuw nsw i64 %835, 1
  %856 = icmp eq i64 %855, %824
  br i1 %856, label %825, label %834, !llvm.loop !50

857:                                              ; preds = %879, %828
  %858 = phi i32 [ %830, %828 ], [ %880, %879 ]
  %859 = phi i32 [ %829, %828 ], [ %862, %879 ]
  %860 = icmp slt i32 %859, 2
  %861 = add i32 %859, 1
  %862 = select i1 %860, i32 %861, i32 %859
  %863 = add nsw i32 %858, 1
  %864 = select i1 %860, i32 %861, i32 0
  store i32 %863, ptr %153, align 4, !tbaa !48
  %865 = sext i32 %863 to i64
  %866 = getelementptr inbounds [4 x i8], ptr %223, i64 %865
  store i32 %864, ptr %866, align 4, !tbaa !4
  %867 = sext i32 %864 to i64
  %868 = getelementptr inbounds [4 x i8], ptr %816, i64 %867
  store i16 1, ptr %868, align 2, !tbaa !28
  %869 = getelementptr inbounds i8, ptr %224, i64 %867
  store i8 0, ptr %869, align 1, !tbaa !28
  %870 = load i64, ptr %831, align 8, !tbaa !51
  %871 = add i64 %870, -1
  store i64 %871, ptr %831, align 8, !tbaa !51
  br i1 %832, label %879, label %872

872:                                              ; preds = %857
  %873 = getelementptr inbounds [4 x i8], ptr %819, i64 %867
  %874 = getelementptr inbounds nuw i8, ptr %873, i64 2
  %875 = load i16, ptr %874, align 2, !tbaa !28
  %876 = zext i16 %875 to i64
  %877 = load i64, ptr %833, align 8, !tbaa !52
  %878 = sub i64 %877, %876
  store i64 %878, ptr %833, align 8, !tbaa !52
  br label %879

879:                                              ; preds = %872, %857
  %880 = load i32, ptr %153, align 4, !tbaa !48
  %881 = icmp slt i32 %880, 2
  br i1 %881, label %857, label %882, !llvm.loop !53

882:                                              ; preds = %879, %825
  %883 = phi i32 [ %854, %825 ], [ %862, %879 ]
  %884 = phi i32 [ %826, %825 ], [ %880, %879 ]
  %885 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %883, ptr %885, align 8, !tbaa !54
  %886 = lshr i32 %884, 1
  %887 = zext nneg i32 %886 to i64
  br label %891

888:                                              ; preds = %957
  %889 = load i32, ptr %153, align 4, !tbaa !48
  %890 = sext i32 %821 to i64
  br label %964

891:                                              ; preds = %957, %882
  %892 = phi i64 [ %887, %882 ], [ %961, %957 ]
  %893 = getelementptr inbounds nuw [4 x i8], ptr %223, i64 %892
  %894 = load i32, ptr %893, align 4, !tbaa !4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds i8, ptr %224, i64 %895
  %897 = load i32, ptr %153, align 4, !tbaa !48
  %898 = trunc i64 %892 to i32
  %899 = shl i32 %898, 1
  %900 = icmp sgt i32 %899, %897
  br i1 %900, label %957, label %901

901:                                              ; preds = %891
  %902 = getelementptr inbounds [4 x i8], ptr %816, i64 %895
  br label %903

903:                                              ; preds = %951, %901
  %904 = phi i32 [ %897, %901 ], [ %955, %951 ]
  %905 = phi i32 [ %899, %901 ], [ %954, %951 ]
  %906 = phi i32 [ %898, %901 ], [ %936, %951 ]
  %907 = icmp slt i32 %905, %904
  br i1 %907, label %910, label %908

908:                                              ; preds = %903
  %909 = sext i32 %905 to i64
  br label %934

910:                                              ; preds = %903
  %911 = or disjoint i32 %905, 1
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds [4 x i8], ptr %223, i64 %912
  %914 = load i32, ptr %913, align 4, !tbaa !4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds [4 x i8], ptr %816, i64 %915
  %917 = load i16, ptr %916, align 2, !tbaa !28
  %918 = sext i32 %905 to i64
  %919 = getelementptr inbounds [4 x i8], ptr %223, i64 %918
  %920 = load i32, ptr %919, align 4, !tbaa !4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds [4 x i8], ptr %816, i64 %921
  %923 = load i16, ptr %922, align 2, !tbaa !28
  %924 = icmp ult i16 %917, %923
  br i1 %924, label %933, label %925

925:                                              ; preds = %910
  %926 = icmp eq i16 %917, %923
  br i1 %926, label %927, label %934

927:                                              ; preds = %925
  %928 = getelementptr inbounds i8, ptr %224, i64 %915
  %929 = load i8, ptr %928, align 1, !tbaa !28
  %930 = getelementptr inbounds i8, ptr %224, i64 %921
  %931 = load i8, ptr %930, align 1, !tbaa !28
  %932 = icmp ugt i8 %929, %931
  br i1 %932, label %934, label %933

933:                                              ; preds = %927, %910
  br label %934

934:                                              ; preds = %933, %927, %925, %908
  %935 = phi i64 [ %909, %908 ], [ %912, %933 ], [ %918, %927 ], [ %918, %925 ]
  %936 = phi i32 [ %905, %908 ], [ %911, %933 ], [ %905, %927 ], [ %905, %925 ]
  %937 = load i16, ptr %902, align 2, !tbaa !28
  %938 = getelementptr inbounds [4 x i8], ptr %223, i64 %935
  %939 = load i32, ptr %938, align 4, !tbaa !4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds [4 x i8], ptr %816, i64 %940
  %942 = load i16, ptr %941, align 2, !tbaa !28
  %943 = icmp ult i16 %937, %942
  br i1 %943, label %957, label %944

944:                                              ; preds = %934
  %945 = icmp eq i16 %937, %942
  br i1 %945, label %946, label %951

946:                                              ; preds = %944
  %947 = load i8, ptr %896, align 1, !tbaa !28
  %948 = getelementptr inbounds i8, ptr %224, i64 %940
  %949 = load i8, ptr %948, align 1, !tbaa !28
  %950 = icmp ugt i8 %947, %949
  br i1 %950, label %951, label %957

951:                                              ; preds = %946, %944
  %952 = sext i32 %906 to i64
  %953 = getelementptr inbounds [4 x i8], ptr %223, i64 %952
  store i32 %939, ptr %953, align 4, !tbaa !4
  %954 = shl i32 %936, 1
  %955 = load i32, ptr %153, align 4, !tbaa !48
  %956 = icmp sgt i32 %954, %955
  br i1 %956, label %957, label %903, !llvm.loop !55

957:                                              ; preds = %951, %946, %934, %891
  %958 = phi i32 [ %898, %891 ], [ %906, %934 ], [ %906, %946 ], [ %936, %951 ]
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [4 x i8], ptr %223, i64 %959
  store i32 %894, ptr %960, align 4, !tbaa !4
  %961 = add nsw i64 %892, -1
  %962 = icmp sgt i64 %892, 1
  br i1 %962, label %891, label %888, !llvm.loop !56

963:                                              ; preds = %1141, %1044, %1037, %964
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

964:                                              ; preds = %1136, %888
  %965 = phi i32 [ %889, %888 ], [ %1139, %1136 ]
  %966 = phi i64 [ %890, %888 ], [ %1076, %1136 ]
  %967 = load i32, ptr %229, align 4, !tbaa !4
  %968 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %965, i32 -1)
  %969 = extractvalue { i32, i1 } %968, 1, !nosanitize !32
  br i1 %969, label %963, label %970, !prof !35, !nosanitize !32

970:                                              ; preds = %964
  %971 = extractvalue { i32, i1 } %968, 0, !nosanitize !32
  store i32 %971, ptr %153, align 4, !tbaa !48
  %972 = sext i32 %965 to i64
  %973 = getelementptr inbounds [4 x i8], ptr %223, i64 %972
  %974 = load i32, ptr %973, align 4, !tbaa !4
  store i32 %974, ptr %229, align 4, !tbaa !4
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds i8, ptr %224, i64 %975
  %977 = icmp slt i32 %971, 2
  br i1 %977, label %1037, label %978

978:                                              ; preds = %970
  %979 = getelementptr inbounds [4 x i8], ptr %816, i64 %975
  br label %980

980:                                              ; preds = %1028, %978
  %981 = phi i32 [ %971, %978 ], [ %1032, %1028 ]
  %982 = phi i32 [ 2, %978 ], [ %1031, %1028 ]
  %983 = phi i32 [ 1, %978 ], [ %1013, %1028 ]
  %984 = icmp slt i32 %982, %981
  br i1 %984, label %987, label %985

985:                                              ; preds = %980
  %986 = sext i32 %982 to i64
  br label %1011

987:                                              ; preds = %980
  %988 = or disjoint i32 %982, 1
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds [4 x i8], ptr %223, i64 %989
  %991 = load i32, ptr %990, align 4, !tbaa !4
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds [4 x i8], ptr %816, i64 %992
  %994 = load i16, ptr %993, align 2, !tbaa !28
  %995 = sext i32 %982 to i64
  %996 = getelementptr inbounds [4 x i8], ptr %223, i64 %995
  %997 = load i32, ptr %996, align 4, !tbaa !4
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds [4 x i8], ptr %816, i64 %998
  %1000 = load i16, ptr %999, align 2, !tbaa !28
  %1001 = icmp ult i16 %994, %1000
  br i1 %1001, label %1010, label %1002

1002:                                             ; preds = %987
  %1003 = icmp eq i16 %994, %1000
  br i1 %1003, label %1004, label %1011

1004:                                             ; preds = %1002
  %1005 = getelementptr inbounds i8, ptr %224, i64 %992
  %1006 = load i8, ptr %1005, align 1, !tbaa !28
  %1007 = getelementptr inbounds i8, ptr %224, i64 %998
  %1008 = load i8, ptr %1007, align 1, !tbaa !28
  %1009 = icmp ugt i8 %1006, %1008
  br i1 %1009, label %1011, label %1010

1010:                                             ; preds = %1004, %987
  br label %1011

1011:                                             ; preds = %1010, %1004, %1002, %985
  %1012 = phi i64 [ %986, %985 ], [ %989, %1010 ], [ %995, %1004 ], [ %995, %1002 ]
  %1013 = phi i32 [ %982, %985 ], [ %988, %1010 ], [ %982, %1004 ], [ %982, %1002 ]
  %1014 = load i16, ptr %979, align 2, !tbaa !28
  %1015 = getelementptr inbounds [4 x i8], ptr %223, i64 %1012
  %1016 = load i32, ptr %1015, align 4, !tbaa !4
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds [4 x i8], ptr %816, i64 %1017
  %1019 = load i16, ptr %1018, align 2, !tbaa !28
  %1020 = icmp ult i16 %1014, %1019
  br i1 %1020, label %1034, label %1021

1021:                                             ; preds = %1011
  %1022 = icmp eq i16 %1014, %1019
  br i1 %1022, label %1023, label %1028

1023:                                             ; preds = %1021
  %1024 = load i8, ptr %976, align 1, !tbaa !28
  %1025 = getelementptr inbounds i8, ptr %224, i64 %1017
  %1026 = load i8, ptr %1025, align 1, !tbaa !28
  %1027 = icmp ugt i8 %1024, %1026
  br i1 %1027, label %1028, label %1034

1028:                                             ; preds = %1023, %1021
  %1029 = sext i32 %983 to i64
  %1030 = getelementptr inbounds [4 x i8], ptr %223, i64 %1029
  store i32 %1016, ptr %1030, align 4, !tbaa !4
  %1031 = shl i32 %1013, 1
  %1032 = load i32, ptr %153, align 4, !tbaa !48
  %1033 = icmp sgt i32 %1031, %1032
  br i1 %1033, label %1034, label %980, !llvm.loop !55

1034:                                             ; preds = %1028, %1023, %1011
  %1035 = phi i32 [ %983, %1011 ], [ %983, %1023 ], [ %1013, %1028 ]
  %1036 = sext i32 %1035 to i64
  br label %1037

1037:                                             ; preds = %1034, %970
  %1038 = phi i64 [ 1, %970 ], [ %1036, %1034 ]
  %1039 = getelementptr inbounds [4 x i8], ptr %223, i64 %1038
  store i32 %974, ptr %1039, align 4, !tbaa !4
  %1040 = load i32, ptr %229, align 4, !tbaa !4
  %1041 = load i32, ptr %154, align 8, !tbaa !49
  %1042 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1041, i32 -1)
  %1043 = extractvalue { i32, i1 } %1042, 1, !nosanitize !32
  br i1 %1043, label %963, label %1044, !prof !35, !nosanitize !32

1044:                                             ; preds = %1037
  %1045 = extractvalue { i32, i1 } %1042, 0, !nosanitize !32
  store i32 %1045, ptr %154, align 8, !tbaa !49
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds [4 x i8], ptr %223, i64 %1046
  store i32 %967, ptr %1047, align 4, !tbaa !4
  %1048 = load i32, ptr %154, align 8, !tbaa !49
  %1049 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1048, i32 -1)
  %1050 = extractvalue { i32, i1 } %1049, 1, !nosanitize !32
  br i1 %1050, label %963, label %1051, !prof !35, !nosanitize !32

1051:                                             ; preds = %1044
  %1052 = extractvalue { i32, i1 } %1049, 0, !nosanitize !32
  store i32 %1052, ptr %154, align 8, !tbaa !49
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds [4 x i8], ptr %223, i64 %1053
  store i32 %1040, ptr %1054, align 4, !tbaa !4
  %1055 = sext i32 %967 to i64
  %1056 = getelementptr inbounds [4 x i8], ptr %816, i64 %1055
  %1057 = load i16, ptr %1056, align 2, !tbaa !28
  %1058 = sext i32 %1040 to i64
  %1059 = getelementptr inbounds [4 x i8], ptr %816, i64 %1058
  %1060 = load i16, ptr %1059, align 2, !tbaa !28
  %1061 = add i16 %1060, %1057
  %1062 = getelementptr inbounds [4 x i8], ptr %816, i64 %966
  store i16 %1061, ptr %1062, align 2, !tbaa !28
  %1063 = getelementptr inbounds i8, ptr %224, i64 %1055
  %1064 = load i8, ptr %1063, align 1, !tbaa !28
  %1065 = getelementptr inbounds i8, ptr %224, i64 %1058
  %1066 = load i8, ptr %1065, align 1, !tbaa !28
  %1067 = tail call i8 @llvm.umax.i8(i8 %1064, i8 %1066)
  %1068 = add i8 %1067, 1
  %1069 = getelementptr inbounds i8, ptr %224, i64 %966
  store i8 %1068, ptr %1069, align 1, !tbaa !28
  %1070 = trunc nsw i64 %966 to i32
  %1071 = trunc i64 %966 to i16
  %1072 = getelementptr inbounds nuw i8, ptr %1059, i64 2
  store i16 %1071, ptr %1072, align 2, !tbaa !28
  %1073 = getelementptr inbounds nuw i8, ptr %1056, i64 2
  store i16 %1071, ptr %1073, align 2, !tbaa !28
  %1074 = icmp eq i64 %966, 2147483647
  br i1 %1074, label %844, label %1075, !prof !35, !nosanitize !32

1075:                                             ; preds = %1051
  %1076 = add nsw i64 %966, 1
  store i32 %1070, ptr %229, align 4, !tbaa !4
  %1077 = load i32, ptr %153, align 4, !tbaa !48
  %1078 = icmp slt i32 %1077, 2
  br i1 %1078, label %1136, label %1079

1079:                                             ; preds = %1127, %1075
  %1080 = phi i32 [ %1131, %1127 ], [ %1077, %1075 ]
  %1081 = phi i32 [ %1130, %1127 ], [ 2, %1075 ]
  %1082 = phi i32 [ %1112, %1127 ], [ 1, %1075 ]
  %1083 = icmp slt i32 %1081, %1080
  br i1 %1083, label %1086, label %1084

1084:                                             ; preds = %1079
  %1085 = sext i32 %1081 to i64
  br label %1110

1086:                                             ; preds = %1079
  %1087 = or disjoint i32 %1081, 1
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds [4 x i8], ptr %223, i64 %1088
  %1090 = load i32, ptr %1089, align 4, !tbaa !4
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds [4 x i8], ptr %816, i64 %1091
  %1093 = load i16, ptr %1092, align 2, !tbaa !28
  %1094 = sext i32 %1081 to i64
  %1095 = getelementptr inbounds [4 x i8], ptr %223, i64 %1094
  %1096 = load i32, ptr %1095, align 4, !tbaa !4
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds [4 x i8], ptr %816, i64 %1097
  %1099 = load i16, ptr %1098, align 2, !tbaa !28
  %1100 = icmp ult i16 %1093, %1099
  br i1 %1100, label %1109, label %1101

1101:                                             ; preds = %1086
  %1102 = icmp eq i16 %1093, %1099
  br i1 %1102, label %1103, label %1110

1103:                                             ; preds = %1101
  %1104 = getelementptr inbounds i8, ptr %224, i64 %1091
  %1105 = load i8, ptr %1104, align 1, !tbaa !28
  %1106 = getelementptr inbounds i8, ptr %224, i64 %1097
  %1107 = load i8, ptr %1106, align 1, !tbaa !28
  %1108 = icmp ugt i8 %1105, %1107
  br i1 %1108, label %1110, label %1109

1109:                                             ; preds = %1103, %1086
  br label %1110

1110:                                             ; preds = %1109, %1103, %1101, %1084
  %1111 = phi i64 [ %1085, %1084 ], [ %1088, %1109 ], [ %1094, %1103 ], [ %1094, %1101 ]
  %1112 = phi i32 [ %1081, %1084 ], [ %1087, %1109 ], [ %1081, %1103 ], [ %1081, %1101 ]
  %1113 = load i16, ptr %1062, align 2, !tbaa !28
  %1114 = getelementptr inbounds [4 x i8], ptr %223, i64 %1111
  %1115 = load i32, ptr %1114, align 4, !tbaa !4
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds [4 x i8], ptr %816, i64 %1116
  %1118 = load i16, ptr %1117, align 2, !tbaa !28
  %1119 = icmp ult i16 %1113, %1118
  br i1 %1119, label %1133, label %1120

1120:                                             ; preds = %1110
  %1121 = icmp eq i16 %1113, %1118
  br i1 %1121, label %1122, label %1127

1122:                                             ; preds = %1120
  %1123 = load i8, ptr %1069, align 1, !tbaa !28
  %1124 = getelementptr inbounds i8, ptr %224, i64 %1116
  %1125 = load i8, ptr %1124, align 1, !tbaa !28
  %1126 = icmp ugt i8 %1123, %1125
  br i1 %1126, label %1127, label %1133

1127:                                             ; preds = %1122, %1120
  %1128 = sext i32 %1082 to i64
  %1129 = getelementptr inbounds [4 x i8], ptr %223, i64 %1128
  store i32 %1115, ptr %1129, align 4, !tbaa !4
  %1130 = shl i32 %1112, 1
  %1131 = load i32, ptr %153, align 4, !tbaa !48
  %1132 = icmp sgt i32 %1130, %1131
  br i1 %1132, label %1133, label %1079, !llvm.loop !55

1133:                                             ; preds = %1127, %1122, %1110
  %1134 = phi i32 [ %1082, %1110 ], [ %1082, %1122 ], [ %1112, %1127 ]
  %1135 = sext i32 %1134 to i64
  br label %1136

1136:                                             ; preds = %1133, %1075
  %1137 = phi i64 [ 1, %1075 ], [ %1135, %1133 ]
  %1138 = getelementptr inbounds [4 x i8], ptr %223, i64 %1137
  store i32 %1070, ptr %1138, align 4, !tbaa !4
  %1139 = load i32, ptr %153, align 4, !tbaa !48
  %1140 = icmp sgt i32 %1139, 1
  br i1 %1140, label %964, label %1141, !llvm.loop !57

1141:                                             ; preds = %1136
  %1142 = load i32, ptr %154, align 8, !tbaa !49
  %1143 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1142, i32 -1)
  %1144 = extractvalue { i32, i1 } %1143, 1, !nosanitize !32
  br i1 %1144, label %963, label %1145, !prof !35, !nosanitize !32

1145:                                             ; preds = %1141
  %1146 = extractvalue { i32, i1 } %1143, 0, !nosanitize !32
  %1147 = load i32, ptr %229, align 4, !tbaa !4
  store i32 %1146, ptr %154, align 8, !tbaa !49
  %1148 = sext i32 %1146 to i64
  %1149 = getelementptr inbounds [4 x i8], ptr %223, i64 %1148
  store i32 %1147, ptr %1149, align 4, !tbaa !4
  %1150 = load ptr, ptr %815, align 8, !tbaa !42
  %1151 = load i32, ptr %885, align 8, !tbaa !54
  %1152 = load ptr, ptr %817, align 8, !tbaa !43
  %1153 = load ptr, ptr %1152, align 8, !tbaa !44
  %1154 = getelementptr inbounds nuw i8, ptr %1152, i64 8
  %1155 = load ptr, ptr %1154, align 8, !tbaa !58
  %1156 = getelementptr inbounds nuw i8, ptr %1152, i64 16
  %1157 = load i32, ptr %1156, align 8, !tbaa !59
  %1158 = getelementptr inbounds nuw i8, ptr %1152, i64 24
  %1159 = load i32, ptr %1158, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %500, i8 0, i64 32, i1 false), !tbaa !61
  %1160 = load i32, ptr %154, align 8, !tbaa !49
  %1161 = sext i32 %1160 to i64
  %1162 = getelementptr inbounds [4 x i8], ptr %223, i64 %1161
  %1163 = load i32, ptr %1162, align 4, !tbaa !4
  %1164 = sext i32 %1163 to i64
  %1165 = getelementptr inbounds [4 x i8], ptr %1150, i64 %1164
  %1166 = getelementptr inbounds nuw i8, ptr %1165, i64 2
  store i16 0, ptr %1166, align 2, !tbaa !28
  %1167 = load i32, ptr %154, align 8, !tbaa !49
  %1168 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1167, i32 1), !nosanitize !32
  %1169 = extractvalue { i32, i1 } %1168, 1, !nosanitize !32
  br i1 %1169, label %1170, label %1171, !prof !35, !nosanitize !32

1170:                                             ; preds = %1268, %1232, %1220, %1195, %1145
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

1171:                                             ; preds = %1145
  %1172 = extractvalue { i32, i1 } %1168, 0
  %1173 = icmp slt i32 %1172, 573
  br i1 %1173, label %1174, label %1337

1174:                                             ; preds = %1171
  %1175 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1176 = icmp eq ptr %1153, null
  %1177 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1178 = sext i32 %1172 to i64
  br label %1179

1179:                                             ; preds = %1245, %1174
  %1180 = phi i64 [ %1178, %1174 ], [ %1246, %1245 ]
  %1181 = phi i32 [ 0, %1174 ], [ %1202, %1245 ]
  %1182 = getelementptr inbounds [4 x i8], ptr %223, i64 %1180
  %1183 = load i32, ptr %1182, align 4, !tbaa !4
  %1184 = sext i32 %1183 to i64
  %1185 = getelementptr inbounds [4 x i8], ptr %1150, i64 %1184
  %1186 = getelementptr inbounds nuw i8, ptr %1185, i64 2
  %1187 = load i16, ptr %1186, align 2, !tbaa !28
  %1188 = zext i16 %1187 to i64
  %1189 = getelementptr inbounds nuw [4 x i8], ptr %1150, i64 %1188
  %1190 = getelementptr inbounds nuw i8, ptr %1189, i64 2
  %1191 = load i16, ptr %1190, align 2, !tbaa !28
  %1192 = zext i16 %1191 to i32
  %1193 = add nuw nsw i32 %1192, 1
  %1194 = icmp sgt i32 %1159, %1192
  br i1 %1194, label %1200, label %1195

1195:                                             ; preds = %1179
  %1196 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1181, i32 1), !nosanitize !32
  %1197 = extractvalue { i32, i1 } %1196, 1, !nosanitize !32
  br i1 %1197, label %1170, label %1198, !prof !35, !nosanitize !32

1198:                                             ; preds = %1195
  %1199 = extractvalue { i32, i1 } %1196, 0, !nosanitize !32
  br label %1200

1200:                                             ; preds = %1198, %1179
  %1201 = phi i32 [ %1159, %1198 ], [ %1193, %1179 ]
  %1202 = phi i32 [ %1199, %1198 ], [ %1181, %1179 ]
  %1203 = trunc i32 %1201 to i16
  store i16 %1203, ptr %1186, align 2, !tbaa !28
  %1204 = icmp sgt i32 %1183, %1151
  br i1 %1204, label %1245, label %1205

1205:                                             ; preds = %1200
  %1206 = sext i32 %1201 to i64
  %1207 = getelementptr inbounds [2 x i8], ptr %500, i64 %1206
  %1208 = load i16, ptr %1207, align 2, !tbaa !61
  %1209 = add i16 %1208, 1
  store i16 %1209, ptr %1207, align 2, !tbaa !61
  %1210 = icmp slt i32 %1183, %1157
  br i1 %1210, label %1220, label %1211

1211:                                             ; preds = %1205
  %1212 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1183, i32 %1157), !nosanitize !32
  %1213 = extractvalue { i32, i1 } %1212, 1, !nosanitize !32
  br i1 %1213, label %1214, label %1215, !prof !35, !nosanitize !32

1214:                                             ; preds = %1306, %1301, %1297, %1273, %1265, %1251, %1211
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

1215:                                             ; preds = %1211
  %1216 = extractvalue { i32, i1 } %1212, 0, !nosanitize !32
  %1217 = sext i32 %1216 to i64
  %1218 = getelementptr inbounds [4 x i8], ptr %1155, i64 %1217
  %1219 = load i32, ptr %1218, align 4, !tbaa !4
  br label %1220

1220:                                             ; preds = %1215, %1205
  %1221 = phi i32 [ %1219, %1215 ], [ 0, %1205 ]
  %1222 = load i16, ptr %1185, align 2, !tbaa !28
  %1223 = zext i16 %1222 to i64
  %1224 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1201, i32 %1221), !nosanitize !32
  %1225 = extractvalue { i32, i1 } %1224, 1, !nosanitize !32
  br i1 %1225, label %1170, label %1226, !prof !35, !nosanitize !32

1226:                                             ; preds = %1220
  %1227 = extractvalue { i32, i1 } %1224, 0, !nosanitize !32
  %1228 = zext i32 %1227 to i64
  %1229 = mul nuw nsw i64 %1228, %1223
  %1230 = load i64, ptr %1175, align 8, !tbaa !51
  %1231 = add i64 %1230, %1229
  store i64 %1231, ptr %1175, align 8, !tbaa !51
  br i1 %1176, label %1245, label %1232

1232:                                             ; preds = %1226
  %1233 = getelementptr inbounds [4 x i8], ptr %1153, i64 %1184
  %1234 = getelementptr inbounds nuw i8, ptr %1233, i64 2
  %1235 = load i16, ptr %1234, align 2, !tbaa !28
  %1236 = zext i16 %1235 to i32
  %1237 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1236, i32 %1221), !nosanitize !32
  %1238 = extractvalue { i32, i1 } %1237, 1, !nosanitize !32
  br i1 %1238, label %1170, label %1239, !prof !35, !nosanitize !32

1239:                                             ; preds = %1232
  %1240 = extractvalue { i32, i1 } %1237, 0, !nosanitize !32
  %1241 = zext i32 %1240 to i64
  %1242 = mul nuw nsw i64 %1241, %1223
  %1243 = load i64, ptr %1177, align 8, !tbaa !52
  %1244 = add i64 %1243, %1242
  store i64 %1244, ptr %1177, align 8, !tbaa !52
  br label %1245

1245:                                             ; preds = %1239, %1226, %1200
  %1246 = add nsw i64 %1180, 1
  %1247 = and i64 %1246, 4294967295
  %1248 = icmp eq i64 %1247, 573
  br i1 %1248, label %1249, label %1179, !llvm.loop !62

1249:                                             ; preds = %1245
  %1250 = icmp eq i32 %1202, 0
  br i1 %1250, label %1337, label %1251

1251:                                             ; preds = %1249
  %1252 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1159, i32 -1)
  %1253 = extractvalue { i32, i1 } %1252, 1, !nosanitize !32
  %1254 = sext i32 %1159 to i64
  %1255 = getelementptr inbounds [2 x i8], ptr %500, i64 %1254
  br i1 %1253, label %1214, label %1256, !prof !35, !nosanitize !32

1256:                                             ; preds = %1283, %1251
  %1257 = phi i32 [ %1284, %1283 ], [ %1202, %1251 ]
  br label %1258

1258:                                             ; preds = %1265, %1256
  %1259 = phi { i32, i1 } [ %1266, %1265 ], [ %1252, %1256 ]
  %1260 = extractvalue { i32, i1 } %1259, 0
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds [2 x i8], ptr %500, i64 %1261
  %1263 = load i16, ptr %1262, align 2, !tbaa !61
  %1264 = icmp eq i16 %1263, 0
  br i1 %1264, label %1265, label %1268

1265:                                             ; preds = %1258
  %1266 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1260, i32 -1)
  %1267 = extractvalue { i32, i1 } %1266, 1, !nosanitize !32
  br i1 %1267, label %1214, label %1258, !prof !35, !llvm.loop !63, !nosanitize !32

1268:                                             ; preds = %1258
  %1269 = getelementptr inbounds [2 x i8], ptr %500, i64 %1261
  %1270 = add i16 %1263, -1
  store i16 %1270, ptr %1269, align 2, !tbaa !61
  %1271 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1260, i32 1), !nosanitize !32
  %1272 = extractvalue { i32, i1 } %1271, 1, !nosanitize !32
  br i1 %1272, label %1170, label %1273, !prof !35, !nosanitize !32

1273:                                             ; preds = %1268
  %1274 = extractvalue { i32, i1 } %1271, 0, !nosanitize !32
  %1275 = sext i32 %1274 to i64
  %1276 = getelementptr inbounds [2 x i8], ptr %500, i64 %1275
  %1277 = load i16, ptr %1276, align 2, !tbaa !61
  %1278 = add i16 %1277, 2
  store i16 %1278, ptr %1276, align 2, !tbaa !61
  %1279 = load i16, ptr %1255, align 2, !tbaa !61
  %1280 = add i16 %1279, -1
  store i16 %1280, ptr %1255, align 2, !tbaa !61
  %1281 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1257, i32 -2)
  %1282 = extractvalue { i32, i1 } %1281, 1, !nosanitize !32
  br i1 %1282, label %1214, label %1283, !prof !35, !nosanitize !32

1283:                                             ; preds = %1273
  %1284 = extractvalue { i32, i1 } %1281, 0, !nosanitize !32
  %1285 = icmp sgt i32 %1284, 0
  br i1 %1285, label %1256, label %1286, !llvm.loop !64

1286:                                             ; preds = %1283
  %1287 = icmp eq i32 %1159, 0
  br i1 %1287, label %1337, label %1288

1288:                                             ; preds = %1333, %1286
  %1289 = phi i64 [ %1334, %1333 ], [ %1254, %1286 ]
  %1290 = phi i32 [ %1298, %1333 ], [ 573, %1286 ]
  %1291 = getelementptr inbounds [2 x i8], ptr %500, i64 %1289
  %1292 = load i16, ptr %1291, align 2, !tbaa !61
  %1293 = icmp eq i16 %1292, 0
  br i1 %1293, label %1297, label %1294

1294:                                             ; preds = %1288
  %1295 = zext i16 %1292 to i32
  %1296 = trunc i64 %1289 to i16
  br label %1301

1297:                                             ; preds = %1330, %1288
  %1298 = phi i32 [ %1290, %1288 ], [ %1311, %1330 ]
  %1299 = and i64 %1289, 4294967295
  %1300 = icmp eq i64 %1299, 2147483648
  br i1 %1300, label %1214, label %1333, !prof !35, !nosanitize !32

1301:                                             ; preds = %1330, %1294
  %1302 = phi i32 [ %1290, %1294 ], [ %1311, %1330 ]
  %1303 = phi i32 [ %1295, %1294 ], [ %1331, %1330 ]
  %1304 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1302, i32 -1)
  %1305 = extractvalue { i32, i1 } %1304, 1, !nosanitize !32
  br i1 %1305, label %1214, label %1309, !prof !65, !nosanitize !32

1306:                                             ; preds = %1309
  %1307 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1311, i32 -1)
  %1308 = extractvalue { i32, i1 } %1307, 1, !nosanitize !32
  br i1 %1308, label %1214, label %1309, !prof !66, !llvm.loop !67, !nosanitize !32

1309:                                             ; preds = %1306, %1301
  %1310 = phi { i32, i1 } [ %1307, %1306 ], [ %1304, %1301 ]
  %1311 = extractvalue { i32, i1 } %1310, 0, !nosanitize !32
  %1312 = sext i32 %1311 to i64
  %1313 = getelementptr inbounds [4 x i8], ptr %223, i64 %1312
  %1314 = load i32, ptr %1313, align 4, !tbaa !4
  %1315 = icmp sgt i32 %1314, %1151
  br i1 %1315, label %1306, label %1316, !llvm.loop !67

1316:                                             ; preds = %1309
  %1317 = sext i32 %1314 to i64
  %1318 = getelementptr inbounds [4 x i8], ptr %1150, i64 %1317
  %1319 = getelementptr inbounds nuw i8, ptr %1318, i64 2
  %1320 = load i16, ptr %1319, align 2, !tbaa !28
  %1321 = zext i16 %1320 to i64
  %1322 = icmp eq i64 %1289, %1321
  br i1 %1322, label %1330, label %1323

1323:                                             ; preds = %1316
  %1324 = sub nsw i64 %1289, %1321
  %1325 = load i16, ptr %1318, align 2, !tbaa !28
  %1326 = zext i16 %1325 to i64
  %1327 = mul nsw i64 %1324, %1326
  %1328 = load i64, ptr %1175, align 8, !tbaa !51
  %1329 = add i64 %1327, %1328
  store i64 %1329, ptr %1175, align 8, !tbaa !51
  store i16 %1296, ptr %1319, align 2, !tbaa !28
  br label %1330

1330:                                             ; preds = %1323, %1316
  %1331 = add nsw i32 %1303, -1
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1297, label %1301, !llvm.loop !67

1333:                                             ; preds = %1297
  %1334 = add nsw i64 %1289, -1
  %1335 = and i64 %1334, 4294967295
  %1336 = icmp eq i64 %1335, 0
  br i1 %1336, label %1337, label %1288, !llvm.loop !68

1337:                                             ; preds = %1333, %1286, %1249, %1171
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %1338 = load i16, ptr %500, align 2, !tbaa !61
  %1339 = shl i16 %1338, 1
  %1340 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1339, ptr %1340, align 2, !tbaa !61
  %1341 = load i16, ptr %682, align 2, !tbaa !61
  %1342 = add i16 %1341, %1339
  %1343 = shl i16 %1342, 1
  %1344 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1343, ptr %1344, align 4, !tbaa !61
  %1345 = load i16, ptr %687, align 2, !tbaa !61
  %1346 = add i16 %1345, %1343
  %1347 = shl i16 %1346, 1
  %1348 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1347, ptr %1348, align 2, !tbaa !61
  %1349 = load i16, ptr %692, align 2, !tbaa !61
  %1350 = add i16 %1349, %1347
  %1351 = shl i16 %1350, 1
  %1352 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1351, ptr %1352, align 8, !tbaa !61
  %1353 = load i16, ptr %697, align 2, !tbaa !61
  %1354 = add i16 %1353, %1351
  %1355 = shl i16 %1354, 1
  %1356 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1355, ptr %1356, align 2, !tbaa !61
  %1357 = load i16, ptr %702, align 2, !tbaa !61
  %1358 = add i16 %1357, %1355
  %1359 = shl i16 %1358, 1
  %1360 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1359, ptr %1360, align 4, !tbaa !61
  %1361 = load i16, ptr %707, align 2, !tbaa !61
  %1362 = add i16 %1361, %1359
  %1363 = shl i16 %1362, 1
  %1364 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1363, ptr %1364, align 2, !tbaa !61
  %1365 = load i16, ptr %712, align 2, !tbaa !61
  %1366 = add i16 %1365, %1363
  %1367 = shl i16 %1366, 1
  %1368 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1367, ptr %1368, align 16, !tbaa !61
  %1369 = load i16, ptr %717, align 2, !tbaa !61
  %1370 = add i16 %1369, %1367
  %1371 = shl i16 %1370, 1
  %1372 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1371, ptr %1372, align 2, !tbaa !61
  %1373 = load i16, ptr %722, align 2, !tbaa !61
  %1374 = add i16 %1373, %1371
  %1375 = shl i16 %1374, 1
  %1376 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1375, ptr %1376, align 4, !tbaa !61
  %1377 = load i16, ptr %727, align 2, !tbaa !61
  %1378 = add i16 %1377, %1375
  %1379 = shl i16 %1378, 1
  %1380 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1379, ptr %1380, align 2, !tbaa !61
  %1381 = load i16, ptr %732, align 2, !tbaa !61
  %1382 = add i16 %1381, %1379
  %1383 = shl i16 %1382, 1
  %1384 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1383, ptr %1384, align 8, !tbaa !61
  %1385 = load i16, ptr %737, align 2, !tbaa !61
  %1386 = add i16 %1385, %1383
  %1387 = shl i16 %1386, 1
  %1388 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1387, ptr %1388, align 2, !tbaa !61
  %1389 = load i16, ptr %742, align 2, !tbaa !61
  %1390 = add i16 %1389, %1387
  %1391 = shl i16 %1390, 1
  %1392 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1391, ptr %1392, align 4, !tbaa !61
  %1393 = load i16, ptr %747, align 2, !tbaa !61
  %1394 = add i16 %1393, %1391
  %1395 = shl i16 %1394, 1
  %1396 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1395, ptr %1396, align 2, !tbaa !61
  %1397 = icmp slt i32 %883, 0
  br i1 %1397, label %1459, label %1399

1398:                                             ; preds = %1453
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

1399:                                             ; preds = %1455, %1337
  %1400 = phi i64 [ %1456, %1455 ], [ 0, %1337 ]
  %1401 = getelementptr inbounds nuw [4 x i8], ptr %816, i64 %1400
  %1402 = getelementptr inbounds nuw i8, ptr %1401, i64 2
  %1403 = load i16, ptr %1402, align 2, !tbaa !28
  %1404 = icmp eq i16 %1403, 0
  br i1 %1404, label %1453, label %1405

1405:                                             ; preds = %1399
  %1406 = zext i16 %1403 to i32
  %1407 = zext i16 %1403 to i64
  %1408 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %1407
  %1409 = load i16, ptr %1408, align 2, !tbaa !61
  %1410 = add i16 %1409, 1
  store i16 %1410, ptr %1408, align 2, !tbaa !61
  %1411 = and i32 %1406, 3
  %1412 = icmp ult i16 %1403, 4
  br i1 %1412, label %1437, label %1413

1413:                                             ; preds = %1405
  %1414 = and i32 %1406, 65532
  br label %1415

1415:                                             ; preds = %1415, %1413
  %1416 = phi i16 [ %1409, %1413 ], [ %1432, %1415 ]
  %1417 = phi i16 [ 0, %1413 ], [ %1431, %1415 ]
  %1418 = phi i32 [ 0, %1413 ], [ %1433, %1415 ]
  %1419 = and i16 %1416, 1
  %1420 = or disjoint i16 %1417, %1419
  %1421 = shl i16 %1420, 2
  %1422 = and i16 %1416, 2
  %1423 = or disjoint i16 %1421, %1422
  %1424 = lshr i16 %1416, 2
  %1425 = and i16 %1424, 1
  %1426 = or disjoint i16 %1423, %1425
  %1427 = shl i16 %1426, 1
  %1428 = lshr i16 %1416, 3
  %1429 = and i16 %1428, 1
  %1430 = or disjoint i16 %1427, %1429
  %1431 = shl i16 %1430, 1
  %1432 = lshr i16 %1416, 4
  %1433 = add i32 %1418, 4
  %1434 = icmp eq i32 %1433, %1414
  br i1 %1434, label %1435, label %1415, !llvm.loop !69

1435:                                             ; preds = %1415
  %1436 = icmp eq i32 %1411, 0
  br i1 %1436, label %1451, label %1437

1437:                                             ; preds = %1435, %1405
  %1438 = phi i16 [ %1409, %1405 ], [ %1432, %1435 ]
  %1439 = phi i16 [ 0, %1405 ], [ %1431, %1435 ]
  %1440 = icmp ne i32 %1411, 0
  tail call void @llvm.assume(i1 %1440)
  br label %1441

1441:                                             ; preds = %1441, %1437
  %1442 = phi i16 [ %1438, %1437 ], [ %1448, %1441 ]
  %1443 = phi i16 [ %1439, %1437 ], [ %1447, %1441 ]
  %1444 = phi i32 [ 0, %1437 ], [ %1449, %1441 ]
  %1445 = and i16 %1442, 1
  %1446 = or disjoint i16 %1443, %1445
  %1447 = shl i16 %1446, 1
  %1448 = lshr i16 %1442, 1
  %1449 = add i32 %1444, 1
  %1450 = icmp eq i32 %1449, %1411
  br i1 %1450, label %1451, label %1441, !llvm.loop !73

1451:                                             ; preds = %1441, %1435
  %1452 = phi i16 [ %1430, %1435 ], [ %1446, %1441 ]
  store i16 %1452, ptr %1401, align 2, !tbaa !28
  br label %1453

1453:                                             ; preds = %1451, %1399
  %1454 = icmp eq i64 %1400, 2147483647
  br i1 %1454, label %1398, label %1455, !prof !35, !nosanitize !32

1455:                                             ; preds = %1453
  %1456 = add nuw nsw i64 %1400, 1
  %1457 = trunc i64 %1456 to i32
  %1458 = icmp slt i32 %883, %1457
  br i1 %1458, label %1459, label %1399, !llvm.loop !72

1459:                                             ; preds = %1455, %1337
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %1460 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1461 = load i32, ptr %222, align 8, !tbaa !74
  %1462 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1461, i32 1), !nosanitize !32
  %1463 = extractvalue { i32, i1 } %1462, 1, !nosanitize !32
  br i1 %1463, label %1464, label %1465, !prof !35, !nosanitize !32

1464:                                             ; preds = %1482, %1459
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

1465:                                             ; preds = %1459
  %1466 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %1467 = load i16, ptr %1466, align 2, !tbaa !28
  %1468 = extractvalue { i32, i1 } %1462, 0, !nosanitize !32
  %1469 = sext i32 %1468 to i64
  %1470 = getelementptr inbounds [4 x i8], ptr %1460, i64 %1469
  %1471 = getelementptr inbounds nuw i8, ptr %1470, i64 2
  store i16 -1, ptr %1471, align 2, !tbaa !28
  %1472 = icmp slt i32 %1461, 0
  br i1 %1472, label %1541, label %1473

1473:                                             ; preds = %1465
  %1474 = zext i16 %1467 to i32
  %1475 = icmp eq i16 %1467, 0
  %1476 = select i1 %1475, i32 138, i32 7
  %1477 = select i1 %1475, i32 3, i32 4
  %1478 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1479 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1480 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1481 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1486

1482:                                             ; preds = %1535
  %1483 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1487, i32 1), !nosanitize !32
  %1484 = extractvalue { i32, i1 } %1483, 0, !nosanitize !32
  %1485 = extractvalue { i32, i1 } %1483, 1, !nosanitize !32
  br i1 %1485, label %1464, label %1486, !prof !75, !llvm.loop !76, !nosanitize !32

1486:                                             ; preds = %1482, %1473
  %1487 = phi i32 [ 1, %1473 ], [ %1484, %1482 ]
  %1488 = phi i32 [ -1, %1473 ], [ %1536, %1482 ]
  %1489 = phi i32 [ %1474, %1473 ], [ %1497, %1482 ]
  %1490 = phi i32 [ 0, %1473 ], [ %1537, %1482 ]
  %1491 = phi i32 [ %1476, %1473 ], [ %1538, %1482 ]
  %1492 = phi i32 [ %1477, %1473 ], [ %1539, %1482 ]
  %1493 = sext i32 %1487 to i64
  %1494 = getelementptr inbounds [4 x i8], ptr %1460, i64 %1493
  %1495 = getelementptr inbounds nuw i8, ptr %1494, i64 2
  %1496 = load i16, ptr %1495, align 2, !tbaa !28
  %1497 = zext i16 %1496 to i32
  %1498 = add nsw i32 %1490, 1
  %1499 = icmp slt i32 %1498, %1491
  %1500 = icmp eq i32 %1489, %1497
  %1501 = select i1 %1499, i1 %1500, i1 false
  br i1 %1501, label %1535, label %1502

1502:                                             ; preds = %1486
  %1503 = icmp slt i32 %1498, %1492
  br i1 %1503, label %1504, label %1510

1504:                                             ; preds = %1502
  %1505 = zext nneg i32 %1489 to i64
  %1506 = getelementptr inbounds nuw [4 x i8], ptr %1478, i64 %1505
  %1507 = load i16, ptr %1506, align 4, !tbaa !28
  %1508 = trunc i32 %1498 to i16
  %1509 = add i16 %1507, %1508
  store i16 %1509, ptr %1506, align 4, !tbaa !28
  br label %1530

1510:                                             ; preds = %1502
  %1511 = icmp eq i32 %1489, 0
  br i1 %1511, label %1522, label %1512

1512:                                             ; preds = %1510
  %1513 = icmp eq i32 %1489, %1488
  br i1 %1513, label %1519, label %1514

1514:                                             ; preds = %1512
  %1515 = zext nneg i32 %1489 to i64
  %1516 = getelementptr inbounds nuw [4 x i8], ptr %1478, i64 %1515
  %1517 = load i16, ptr %1516, align 4, !tbaa !28
  %1518 = add i16 %1517, 1
  store i16 %1518, ptr %1516, align 4, !tbaa !28
  br label %1519

1519:                                             ; preds = %1514, %1512
  %1520 = load i16, ptr %1479, align 4, !tbaa !28
  %1521 = add i16 %1520, 1
  store i16 %1521, ptr %1479, align 4, !tbaa !28
  br label %1530

1522:                                             ; preds = %1510
  %1523 = icmp slt i32 %1490, 10
  br i1 %1523, label %1524, label %1527

1524:                                             ; preds = %1522
  %1525 = load i16, ptr %1481, align 4, !tbaa !28
  %1526 = add i16 %1525, 1
  store i16 %1526, ptr %1481, align 4, !tbaa !28
  br label %1530

1527:                                             ; preds = %1522
  %1528 = load i16, ptr %1480, align 4, !tbaa !28
  %1529 = add i16 %1528, 1
  store i16 %1529, ptr %1480, align 4, !tbaa !28
  br label %1530

1530:                                             ; preds = %1527, %1524, %1519, %1504
  %1531 = icmp eq i16 %1496, 0
  br i1 %1531, label %1535, label %1532

1532:                                             ; preds = %1530
  %1533 = select i1 %1500, i32 6, i32 7
  %1534 = select i1 %1500, i32 3, i32 4
  br label %1535

1535:                                             ; preds = %1532, %1530, %1486
  %1536 = phi i32 [ %1488, %1486 ], [ %1489, %1530 ], [ %1489, %1532 ]
  %1537 = phi i32 [ %1498, %1486 ], [ 0, %1530 ], [ 0, %1532 ]
  %1538 = phi i32 [ %1491, %1486 ], [ 138, %1530 ], [ %1533, %1532 ]
  %1539 = phi i32 [ %1492, %1486 ], [ 3, %1530 ], [ %1534, %1532 ]
  %1540 = icmp sgt i32 %1487, %1461
  br i1 %1540, label %1541, label %1482, !llvm.loop !76

1541:                                             ; preds = %1535, %1465
  %1542 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %1543 = load i32, ptr %885, align 8, !tbaa !77
  %1544 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1543, i32 1), !nosanitize !32
  %1545 = extractvalue { i32, i1 } %1544, 1, !nosanitize !32
  br i1 %1545, label %1546, label %1547, !prof !35, !nosanitize !32

1546:                                             ; preds = %1564, %1541
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

1547:                                             ; preds = %1541
  %1548 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %1549 = load i16, ptr %1548, align 2, !tbaa !28
  %1550 = extractvalue { i32, i1 } %1544, 0, !nosanitize !32
  %1551 = sext i32 %1550 to i64
  %1552 = getelementptr inbounds [4 x i8], ptr %1542, i64 %1551
  %1553 = getelementptr inbounds nuw i8, ptr %1552, i64 2
  store i16 -1, ptr %1553, align 2, !tbaa !28
  %1554 = icmp slt i32 %1543, 0
  br i1 %1554, label %1623, label %1555

1555:                                             ; preds = %1547
  %1556 = zext i16 %1549 to i32
  %1557 = icmp eq i16 %1549, 0
  %1558 = select i1 %1557, i32 138, i32 7
  %1559 = select i1 %1557, i32 3, i32 4
  %1560 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1561 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1562 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1563 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1568

1564:                                             ; preds = %1617
  %1565 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1569, i32 1), !nosanitize !32
  %1566 = extractvalue { i32, i1 } %1565, 0, !nosanitize !32
  %1567 = extractvalue { i32, i1 } %1565, 1, !nosanitize !32
  br i1 %1567, label %1546, label %1568, !prof !75, !llvm.loop !76, !nosanitize !32

1568:                                             ; preds = %1564, %1555
  %1569 = phi i32 [ 1, %1555 ], [ %1566, %1564 ]
  %1570 = phi i32 [ -1, %1555 ], [ %1618, %1564 ]
  %1571 = phi i32 [ %1556, %1555 ], [ %1579, %1564 ]
  %1572 = phi i32 [ 0, %1555 ], [ %1619, %1564 ]
  %1573 = phi i32 [ %1558, %1555 ], [ %1620, %1564 ]
  %1574 = phi i32 [ %1559, %1555 ], [ %1621, %1564 ]
  %1575 = sext i32 %1569 to i64
  %1576 = getelementptr inbounds [4 x i8], ptr %1542, i64 %1575
  %1577 = getelementptr inbounds nuw i8, ptr %1576, i64 2
  %1578 = load i16, ptr %1577, align 2, !tbaa !28
  %1579 = zext i16 %1578 to i32
  %1580 = add nsw i32 %1572, 1
  %1581 = icmp slt i32 %1580, %1573
  %1582 = icmp eq i32 %1571, %1579
  %1583 = select i1 %1581, i1 %1582, i1 false
  br i1 %1583, label %1617, label %1584

1584:                                             ; preds = %1568
  %1585 = icmp slt i32 %1580, %1574
  br i1 %1585, label %1586, label %1592

1586:                                             ; preds = %1584
  %1587 = zext nneg i32 %1571 to i64
  %1588 = getelementptr inbounds nuw [4 x i8], ptr %1560, i64 %1587
  %1589 = load i16, ptr %1588, align 4, !tbaa !28
  %1590 = trunc i32 %1580 to i16
  %1591 = add i16 %1589, %1590
  store i16 %1591, ptr %1588, align 4, !tbaa !28
  br label %1612

1592:                                             ; preds = %1584
  %1593 = icmp eq i32 %1571, 0
  br i1 %1593, label %1604, label %1594

1594:                                             ; preds = %1592
  %1595 = icmp eq i32 %1571, %1570
  br i1 %1595, label %1601, label %1596

1596:                                             ; preds = %1594
  %1597 = zext nneg i32 %1571 to i64
  %1598 = getelementptr inbounds nuw [4 x i8], ptr %1560, i64 %1597
  %1599 = load i16, ptr %1598, align 4, !tbaa !28
  %1600 = add i16 %1599, 1
  store i16 %1600, ptr %1598, align 4, !tbaa !28
  br label %1601

1601:                                             ; preds = %1596, %1594
  %1602 = load i16, ptr %1561, align 4, !tbaa !28
  %1603 = add i16 %1602, 1
  store i16 %1603, ptr %1561, align 4, !tbaa !28
  br label %1612

1604:                                             ; preds = %1592
  %1605 = icmp slt i32 %1572, 10
  br i1 %1605, label %1606, label %1609

1606:                                             ; preds = %1604
  %1607 = load i16, ptr %1563, align 4, !tbaa !28
  %1608 = add i16 %1607, 1
  store i16 %1608, ptr %1563, align 4, !tbaa !28
  br label %1612

1609:                                             ; preds = %1604
  %1610 = load i16, ptr %1562, align 4, !tbaa !28
  %1611 = add i16 %1610, 1
  store i16 %1611, ptr %1562, align 4, !tbaa !28
  br label %1612

1612:                                             ; preds = %1609, %1606, %1601, %1586
  %1613 = icmp eq i16 %1578, 0
  br i1 %1613, label %1617, label %1614

1614:                                             ; preds = %1612
  %1615 = select i1 %1582, i32 6, i32 7
  %1616 = select i1 %1582, i32 3, i32 4
  br label %1617

1617:                                             ; preds = %1614, %1612, %1568
  %1618 = phi i32 [ %1570, %1568 ], [ %1571, %1612 ], [ %1571, %1614 ]
  %1619 = phi i32 [ %1580, %1568 ], [ 0, %1612 ], [ 0, %1614 ]
  %1620 = phi i32 [ %1573, %1568 ], [ 138, %1612 ], [ %1615, %1614 ]
  %1621 = phi i32 [ %1574, %1568 ], [ 3, %1612 ], [ %1616, %1614 ]
  %1622 = icmp sgt i32 %1569, %1543
  br i1 %1622, label %1623, label %1564, !llvm.loop !76

1623:                                             ; preds = %1617, %1547
  %1624 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1625 = load ptr, ptr %1624, align 8, !tbaa !42
  %1626 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1627 = load ptr, ptr %1626, align 8, !tbaa !43
  %1628 = load ptr, ptr %1627, align 8, !tbaa !44
  %1629 = getelementptr inbounds nuw i8, ptr %1627, i64 20
  %1630 = load i32, ptr %1629, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %1631 = icmp sgt i32 %1630, 0
  br i1 %1631, label %1632, label %1637

1632:                                             ; preds = %1623
  %1633 = zext nneg i32 %1630 to i64
  br label %1643

1634:                                             ; preds = %1662
  %1635 = load i32, ptr %153, align 4, !tbaa !48
  %1636 = icmp slt i32 %1635, 2
  br i1 %1636, label %1637, label %1691

1637:                                             ; preds = %1634, %1623
  %1638 = phi i32 [ %1663, %1634 ], [ -1, %1623 ]
  %1639 = phi i32 [ %1635, %1634 ], [ 0, %1623 ]
  %1640 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1641 = icmp eq ptr %1628, null
  %1642 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1666

1643:                                             ; preds = %1662, %1632
  %1644 = phi i64 [ 0, %1632 ], [ %1664, %1662 ]
  %1645 = phi i32 [ -1, %1632 ], [ %1663, %1662 ]
  %1646 = getelementptr inbounds nuw [4 x i8], ptr %1625, i64 %1644
  %1647 = load i16, ptr %1646, align 2, !tbaa !28
  %1648 = icmp eq i16 %1647, 0
  br i1 %1648, label %1660, label %1649

1649:                                             ; preds = %1643
  %1650 = load i32, ptr %153, align 4, !tbaa !48
  %1651 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1650, i32 1), !nosanitize !32
  %1652 = extractvalue { i32, i1 } %1651, 1, !nosanitize !32
  br i1 %1652, label %1653, label %1654, !prof !35, !nosanitize !32

1653:                                             ; preds = %1860, %1649
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

1654:                                             ; preds = %1649
  %1655 = extractvalue { i32, i1 } %1651, 0, !nosanitize !32
  store i32 %1655, ptr %153, align 4, !tbaa !48
  %1656 = sext i32 %1655 to i64
  %1657 = getelementptr inbounds [4 x i8], ptr %223, i64 %1656
  %1658 = trunc nuw nsw i64 %1644 to i32
  store i32 %1658, ptr %1657, align 4, !tbaa !4
  %1659 = getelementptr inbounds nuw i8, ptr %224, i64 %1644
  store i8 0, ptr %1659, align 1, !tbaa !28
  br label %1662

1660:                                             ; preds = %1643
  %1661 = getelementptr inbounds nuw i8, ptr %1646, i64 2
  store i16 0, ptr %1661, align 2, !tbaa !28
  br label %1662

1662:                                             ; preds = %1660, %1654
  %1663 = phi i32 [ %1658, %1654 ], [ %1645, %1660 ]
  %1664 = add nuw nsw i64 %1644, 1
  %1665 = icmp eq i64 %1664, %1633
  br i1 %1665, label %1634, label %1643, !llvm.loop !50

1666:                                             ; preds = %1688, %1637
  %1667 = phi i32 [ %1639, %1637 ], [ %1689, %1688 ]
  %1668 = phi i32 [ %1638, %1637 ], [ %1671, %1688 ]
  %1669 = icmp slt i32 %1668, 2
  %1670 = add i32 %1668, 1
  %1671 = select i1 %1669, i32 %1670, i32 %1668
  %1672 = add nsw i32 %1667, 1
  %1673 = select i1 %1669, i32 %1670, i32 0
  store i32 %1672, ptr %153, align 4, !tbaa !48
  %1674 = sext i32 %1672 to i64
  %1675 = getelementptr inbounds [4 x i8], ptr %223, i64 %1674
  store i32 %1673, ptr %1675, align 4, !tbaa !4
  %1676 = sext i32 %1673 to i64
  %1677 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1676
  store i16 1, ptr %1677, align 2, !tbaa !28
  %1678 = getelementptr inbounds i8, ptr %224, i64 %1676
  store i8 0, ptr %1678, align 1, !tbaa !28
  %1679 = load i64, ptr %1640, align 8, !tbaa !51
  %1680 = add i64 %1679, -1
  store i64 %1680, ptr %1640, align 8, !tbaa !51
  br i1 %1641, label %1688, label %1681

1681:                                             ; preds = %1666
  %1682 = getelementptr inbounds [4 x i8], ptr %1628, i64 %1676
  %1683 = getelementptr inbounds nuw i8, ptr %1682, i64 2
  %1684 = load i16, ptr %1683, align 2, !tbaa !28
  %1685 = zext i16 %1684 to i64
  %1686 = load i64, ptr %1642, align 8, !tbaa !52
  %1687 = sub i64 %1686, %1685
  store i64 %1687, ptr %1642, align 8, !tbaa !52
  br label %1688

1688:                                             ; preds = %1681, %1666
  %1689 = load i32, ptr %153, align 4, !tbaa !48
  %1690 = icmp slt i32 %1689, 2
  br i1 %1690, label %1666, label %1691, !llvm.loop !53

1691:                                             ; preds = %1688, %1634
  %1692 = phi i32 [ %1663, %1634 ], [ %1671, %1688 ]
  %1693 = phi i32 [ %1635, %1634 ], [ %1689, %1688 ]
  %1694 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1692, ptr %1694, align 8, !tbaa !54
  %1695 = lshr i32 %1693, 1
  %1696 = zext nneg i32 %1695 to i64
  br label %1700

1697:                                             ; preds = %1766
  %1698 = load i32, ptr %153, align 4, !tbaa !48
  %1699 = sext i32 %1630 to i64
  br label %1773

1700:                                             ; preds = %1766, %1691
  %1701 = phi i64 [ %1696, %1691 ], [ %1770, %1766 ]
  %1702 = getelementptr inbounds nuw [4 x i8], ptr %223, i64 %1701
  %1703 = load i32, ptr %1702, align 4, !tbaa !4
  %1704 = sext i32 %1703 to i64
  %1705 = getelementptr inbounds i8, ptr %224, i64 %1704
  %1706 = load i32, ptr %153, align 4, !tbaa !48
  %1707 = trunc i64 %1701 to i32
  %1708 = shl i32 %1707, 1
  %1709 = icmp sgt i32 %1708, %1706
  br i1 %1709, label %1766, label %1710

1710:                                             ; preds = %1700
  %1711 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1704
  br label %1712

1712:                                             ; preds = %1760, %1710
  %1713 = phi i32 [ %1706, %1710 ], [ %1764, %1760 ]
  %1714 = phi i32 [ %1708, %1710 ], [ %1763, %1760 ]
  %1715 = phi i32 [ %1707, %1710 ], [ %1745, %1760 ]
  %1716 = icmp slt i32 %1714, %1713
  br i1 %1716, label %1719, label %1717

1717:                                             ; preds = %1712
  %1718 = sext i32 %1714 to i64
  br label %1743

1719:                                             ; preds = %1712
  %1720 = or disjoint i32 %1714, 1
  %1721 = sext i32 %1720 to i64
  %1722 = getelementptr inbounds [4 x i8], ptr %223, i64 %1721
  %1723 = load i32, ptr %1722, align 4, !tbaa !4
  %1724 = sext i32 %1723 to i64
  %1725 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1724
  %1726 = load i16, ptr %1725, align 2, !tbaa !28
  %1727 = sext i32 %1714 to i64
  %1728 = getelementptr inbounds [4 x i8], ptr %223, i64 %1727
  %1729 = load i32, ptr %1728, align 4, !tbaa !4
  %1730 = sext i32 %1729 to i64
  %1731 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1730
  %1732 = load i16, ptr %1731, align 2, !tbaa !28
  %1733 = icmp ult i16 %1726, %1732
  br i1 %1733, label %1742, label %1734

1734:                                             ; preds = %1719
  %1735 = icmp eq i16 %1726, %1732
  br i1 %1735, label %1736, label %1743

1736:                                             ; preds = %1734
  %1737 = getelementptr inbounds i8, ptr %224, i64 %1724
  %1738 = load i8, ptr %1737, align 1, !tbaa !28
  %1739 = getelementptr inbounds i8, ptr %224, i64 %1730
  %1740 = load i8, ptr %1739, align 1, !tbaa !28
  %1741 = icmp ugt i8 %1738, %1740
  br i1 %1741, label %1743, label %1742

1742:                                             ; preds = %1736, %1719
  br label %1743

1743:                                             ; preds = %1742, %1736, %1734, %1717
  %1744 = phi i64 [ %1718, %1717 ], [ %1721, %1742 ], [ %1727, %1736 ], [ %1727, %1734 ]
  %1745 = phi i32 [ %1714, %1717 ], [ %1720, %1742 ], [ %1714, %1736 ], [ %1714, %1734 ]
  %1746 = load i16, ptr %1711, align 2, !tbaa !28
  %1747 = getelementptr inbounds [4 x i8], ptr %223, i64 %1744
  %1748 = load i32, ptr %1747, align 4, !tbaa !4
  %1749 = sext i32 %1748 to i64
  %1750 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1749
  %1751 = load i16, ptr %1750, align 2, !tbaa !28
  %1752 = icmp ult i16 %1746, %1751
  br i1 %1752, label %1766, label %1753

1753:                                             ; preds = %1743
  %1754 = icmp eq i16 %1746, %1751
  br i1 %1754, label %1755, label %1760

1755:                                             ; preds = %1753
  %1756 = load i8, ptr %1705, align 1, !tbaa !28
  %1757 = getelementptr inbounds i8, ptr %224, i64 %1749
  %1758 = load i8, ptr %1757, align 1, !tbaa !28
  %1759 = icmp ugt i8 %1756, %1758
  br i1 %1759, label %1760, label %1766

1760:                                             ; preds = %1755, %1753
  %1761 = sext i32 %1715 to i64
  %1762 = getelementptr inbounds [4 x i8], ptr %223, i64 %1761
  store i32 %1748, ptr %1762, align 4, !tbaa !4
  %1763 = shl i32 %1745, 1
  %1764 = load i32, ptr %153, align 4, !tbaa !48
  %1765 = icmp sgt i32 %1763, %1764
  br i1 %1765, label %1766, label %1712, !llvm.loop !55

1766:                                             ; preds = %1760, %1755, %1743, %1700
  %1767 = phi i32 [ %1707, %1700 ], [ %1745, %1760 ], [ %1715, %1755 ], [ %1715, %1743 ]
  %1768 = sext i32 %1767 to i64
  %1769 = getelementptr inbounds [4 x i8], ptr %223, i64 %1768
  store i32 %1703, ptr %1769, align 4, !tbaa !4
  %1770 = add nsw i64 %1701, -1
  %1771 = icmp sgt i64 %1701, 1
  br i1 %1771, label %1700, label %1697, !llvm.loop !56

1772:                                             ; preds = %1950, %1853, %1846, %1773
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

1773:                                             ; preds = %1945, %1697
  %1774 = phi i32 [ %1698, %1697 ], [ %1948, %1945 ]
  %1775 = phi i64 [ %1699, %1697 ], [ %1885, %1945 ]
  %1776 = load i32, ptr %229, align 4, !tbaa !4
  %1777 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1774, i32 -1)
  %1778 = extractvalue { i32, i1 } %1777, 1, !nosanitize !32
  br i1 %1778, label %1772, label %1779, !prof !35, !nosanitize !32

1779:                                             ; preds = %1773
  %1780 = extractvalue { i32, i1 } %1777, 0, !nosanitize !32
  store i32 %1780, ptr %153, align 4, !tbaa !48
  %1781 = sext i32 %1774 to i64
  %1782 = getelementptr inbounds [4 x i8], ptr %223, i64 %1781
  %1783 = load i32, ptr %1782, align 4, !tbaa !4
  store i32 %1783, ptr %229, align 4, !tbaa !4
  %1784 = sext i32 %1783 to i64
  %1785 = getelementptr inbounds i8, ptr %224, i64 %1784
  %1786 = icmp slt i32 %1780, 2
  br i1 %1786, label %1846, label %1787

1787:                                             ; preds = %1779
  %1788 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1784
  br label %1789

1789:                                             ; preds = %1837, %1787
  %1790 = phi i32 [ %1780, %1787 ], [ %1841, %1837 ]
  %1791 = phi i32 [ 2, %1787 ], [ %1840, %1837 ]
  %1792 = phi i32 [ 1, %1787 ], [ %1822, %1837 ]
  %1793 = icmp slt i32 %1791, %1790
  br i1 %1793, label %1796, label %1794

1794:                                             ; preds = %1789
  %1795 = sext i32 %1791 to i64
  br label %1820

1796:                                             ; preds = %1789
  %1797 = or disjoint i32 %1791, 1
  %1798 = sext i32 %1797 to i64
  %1799 = getelementptr inbounds [4 x i8], ptr %223, i64 %1798
  %1800 = load i32, ptr %1799, align 4, !tbaa !4
  %1801 = sext i32 %1800 to i64
  %1802 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1801
  %1803 = load i16, ptr %1802, align 2, !tbaa !28
  %1804 = sext i32 %1791 to i64
  %1805 = getelementptr inbounds [4 x i8], ptr %223, i64 %1804
  %1806 = load i32, ptr %1805, align 4, !tbaa !4
  %1807 = sext i32 %1806 to i64
  %1808 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1807
  %1809 = load i16, ptr %1808, align 2, !tbaa !28
  %1810 = icmp ult i16 %1803, %1809
  br i1 %1810, label %1819, label %1811

1811:                                             ; preds = %1796
  %1812 = icmp eq i16 %1803, %1809
  br i1 %1812, label %1813, label %1820

1813:                                             ; preds = %1811
  %1814 = getelementptr inbounds i8, ptr %224, i64 %1801
  %1815 = load i8, ptr %1814, align 1, !tbaa !28
  %1816 = getelementptr inbounds i8, ptr %224, i64 %1807
  %1817 = load i8, ptr %1816, align 1, !tbaa !28
  %1818 = icmp ugt i8 %1815, %1817
  br i1 %1818, label %1820, label %1819

1819:                                             ; preds = %1813, %1796
  br label %1820

1820:                                             ; preds = %1819, %1813, %1811, %1794
  %1821 = phi i64 [ %1795, %1794 ], [ %1798, %1819 ], [ %1804, %1813 ], [ %1804, %1811 ]
  %1822 = phi i32 [ %1791, %1794 ], [ %1797, %1819 ], [ %1791, %1813 ], [ %1791, %1811 ]
  %1823 = load i16, ptr %1788, align 2, !tbaa !28
  %1824 = getelementptr inbounds [4 x i8], ptr %223, i64 %1821
  %1825 = load i32, ptr %1824, align 4, !tbaa !4
  %1826 = sext i32 %1825 to i64
  %1827 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1826
  %1828 = load i16, ptr %1827, align 2, !tbaa !28
  %1829 = icmp ult i16 %1823, %1828
  br i1 %1829, label %1843, label %1830

1830:                                             ; preds = %1820
  %1831 = icmp eq i16 %1823, %1828
  br i1 %1831, label %1832, label %1837

1832:                                             ; preds = %1830
  %1833 = load i8, ptr %1785, align 1, !tbaa !28
  %1834 = getelementptr inbounds i8, ptr %224, i64 %1826
  %1835 = load i8, ptr %1834, align 1, !tbaa !28
  %1836 = icmp ugt i8 %1833, %1835
  br i1 %1836, label %1837, label %1843

1837:                                             ; preds = %1832, %1830
  %1838 = sext i32 %1792 to i64
  %1839 = getelementptr inbounds [4 x i8], ptr %223, i64 %1838
  store i32 %1825, ptr %1839, align 4, !tbaa !4
  %1840 = shl i32 %1822, 1
  %1841 = load i32, ptr %153, align 4, !tbaa !48
  %1842 = icmp sgt i32 %1840, %1841
  br i1 %1842, label %1843, label %1789, !llvm.loop !55

1843:                                             ; preds = %1837, %1832, %1820
  %1844 = phi i32 [ %1792, %1820 ], [ %1792, %1832 ], [ %1822, %1837 ]
  %1845 = sext i32 %1844 to i64
  br label %1846

1846:                                             ; preds = %1843, %1779
  %1847 = phi i64 [ 1, %1779 ], [ %1845, %1843 ]
  %1848 = getelementptr inbounds [4 x i8], ptr %223, i64 %1847
  store i32 %1783, ptr %1848, align 4, !tbaa !4
  %1849 = load i32, ptr %229, align 4, !tbaa !4
  %1850 = load i32, ptr %154, align 8, !tbaa !49
  %1851 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1850, i32 -1)
  %1852 = extractvalue { i32, i1 } %1851, 1, !nosanitize !32
  br i1 %1852, label %1772, label %1853, !prof !35, !nosanitize !32

1853:                                             ; preds = %1846
  %1854 = extractvalue { i32, i1 } %1851, 0, !nosanitize !32
  store i32 %1854, ptr %154, align 8, !tbaa !49
  %1855 = sext i32 %1854 to i64
  %1856 = getelementptr inbounds [4 x i8], ptr %223, i64 %1855
  store i32 %1776, ptr %1856, align 4, !tbaa !4
  %1857 = load i32, ptr %154, align 8, !tbaa !49
  %1858 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1857, i32 -1)
  %1859 = extractvalue { i32, i1 } %1858, 1, !nosanitize !32
  br i1 %1859, label %1772, label %1860, !prof !35, !nosanitize !32

1860:                                             ; preds = %1853
  %1861 = extractvalue { i32, i1 } %1858, 0, !nosanitize !32
  store i32 %1861, ptr %154, align 8, !tbaa !49
  %1862 = sext i32 %1861 to i64
  %1863 = getelementptr inbounds [4 x i8], ptr %223, i64 %1862
  store i32 %1849, ptr %1863, align 4, !tbaa !4
  %1864 = sext i32 %1776 to i64
  %1865 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1864
  %1866 = load i16, ptr %1865, align 2, !tbaa !28
  %1867 = sext i32 %1849 to i64
  %1868 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1867
  %1869 = load i16, ptr %1868, align 2, !tbaa !28
  %1870 = add i16 %1869, %1866
  %1871 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1775
  store i16 %1870, ptr %1871, align 2, !tbaa !28
  %1872 = getelementptr inbounds i8, ptr %224, i64 %1864
  %1873 = load i8, ptr %1872, align 1, !tbaa !28
  %1874 = getelementptr inbounds i8, ptr %224, i64 %1867
  %1875 = load i8, ptr %1874, align 1, !tbaa !28
  %1876 = tail call i8 @llvm.umax.i8(i8 %1873, i8 %1875)
  %1877 = add i8 %1876, 1
  %1878 = getelementptr inbounds i8, ptr %224, i64 %1775
  store i8 %1877, ptr %1878, align 1, !tbaa !28
  %1879 = trunc nsw i64 %1775 to i32
  %1880 = trunc i64 %1775 to i16
  %1881 = getelementptr inbounds nuw i8, ptr %1868, i64 2
  store i16 %1880, ptr %1881, align 2, !tbaa !28
  %1882 = getelementptr inbounds nuw i8, ptr %1865, i64 2
  store i16 %1880, ptr %1882, align 2, !tbaa !28
  %1883 = icmp eq i64 %1775, 2147483647
  br i1 %1883, label %1653, label %1884, !prof !35, !nosanitize !32

1884:                                             ; preds = %1860
  %1885 = add nsw i64 %1775, 1
  store i32 %1879, ptr %229, align 4, !tbaa !4
  %1886 = load i32, ptr %153, align 4, !tbaa !48
  %1887 = icmp slt i32 %1886, 2
  br i1 %1887, label %1945, label %1888

1888:                                             ; preds = %1936, %1884
  %1889 = phi i32 [ %1940, %1936 ], [ %1886, %1884 ]
  %1890 = phi i32 [ %1939, %1936 ], [ 2, %1884 ]
  %1891 = phi i32 [ %1921, %1936 ], [ 1, %1884 ]
  %1892 = icmp slt i32 %1890, %1889
  br i1 %1892, label %1895, label %1893

1893:                                             ; preds = %1888
  %1894 = sext i32 %1890 to i64
  br label %1919

1895:                                             ; preds = %1888
  %1896 = or disjoint i32 %1890, 1
  %1897 = sext i32 %1896 to i64
  %1898 = getelementptr inbounds [4 x i8], ptr %223, i64 %1897
  %1899 = load i32, ptr %1898, align 4, !tbaa !4
  %1900 = sext i32 %1899 to i64
  %1901 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1900
  %1902 = load i16, ptr %1901, align 2, !tbaa !28
  %1903 = sext i32 %1890 to i64
  %1904 = getelementptr inbounds [4 x i8], ptr %223, i64 %1903
  %1905 = load i32, ptr %1904, align 4, !tbaa !4
  %1906 = sext i32 %1905 to i64
  %1907 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1906
  %1908 = load i16, ptr %1907, align 2, !tbaa !28
  %1909 = icmp ult i16 %1902, %1908
  br i1 %1909, label %1918, label %1910

1910:                                             ; preds = %1895
  %1911 = icmp eq i16 %1902, %1908
  br i1 %1911, label %1912, label %1919

1912:                                             ; preds = %1910
  %1913 = getelementptr inbounds i8, ptr %224, i64 %1900
  %1914 = load i8, ptr %1913, align 1, !tbaa !28
  %1915 = getelementptr inbounds i8, ptr %224, i64 %1906
  %1916 = load i8, ptr %1915, align 1, !tbaa !28
  %1917 = icmp ugt i8 %1914, %1916
  br i1 %1917, label %1919, label %1918

1918:                                             ; preds = %1912, %1895
  br label %1919

1919:                                             ; preds = %1918, %1912, %1910, %1893
  %1920 = phi i64 [ %1894, %1893 ], [ %1897, %1918 ], [ %1903, %1912 ], [ %1903, %1910 ]
  %1921 = phi i32 [ %1890, %1893 ], [ %1896, %1918 ], [ %1890, %1912 ], [ %1890, %1910 ]
  %1922 = load i16, ptr %1871, align 2, !tbaa !28
  %1923 = getelementptr inbounds [4 x i8], ptr %223, i64 %1920
  %1924 = load i32, ptr %1923, align 4, !tbaa !4
  %1925 = sext i32 %1924 to i64
  %1926 = getelementptr inbounds [4 x i8], ptr %1625, i64 %1925
  %1927 = load i16, ptr %1926, align 2, !tbaa !28
  %1928 = icmp ult i16 %1922, %1927
  br i1 %1928, label %1942, label %1929

1929:                                             ; preds = %1919
  %1930 = icmp eq i16 %1922, %1927
  br i1 %1930, label %1931, label %1936

1931:                                             ; preds = %1929
  %1932 = load i8, ptr %1878, align 1, !tbaa !28
  %1933 = getelementptr inbounds i8, ptr %224, i64 %1925
  %1934 = load i8, ptr %1933, align 1, !tbaa !28
  %1935 = icmp ugt i8 %1932, %1934
  br i1 %1935, label %1936, label %1942

1936:                                             ; preds = %1931, %1929
  %1937 = sext i32 %1891 to i64
  %1938 = getelementptr inbounds [4 x i8], ptr %223, i64 %1937
  store i32 %1924, ptr %1938, align 4, !tbaa !4
  %1939 = shl i32 %1921, 1
  %1940 = load i32, ptr %153, align 4, !tbaa !48
  %1941 = icmp sgt i32 %1939, %1940
  br i1 %1941, label %1942, label %1888, !llvm.loop !55

1942:                                             ; preds = %1936, %1931, %1919
  %1943 = phi i32 [ %1891, %1919 ], [ %1891, %1931 ], [ %1921, %1936 ]
  %1944 = sext i32 %1943 to i64
  br label %1945

1945:                                             ; preds = %1942, %1884
  %1946 = phi i64 [ 1, %1884 ], [ %1944, %1942 ]
  %1947 = getelementptr inbounds [4 x i8], ptr %223, i64 %1946
  store i32 %1879, ptr %1947, align 4, !tbaa !4
  %1948 = load i32, ptr %153, align 4, !tbaa !48
  %1949 = icmp sgt i32 %1948, 1
  br i1 %1949, label %1773, label %1950, !llvm.loop !57

1950:                                             ; preds = %1945
  %1951 = load i32, ptr %154, align 8, !tbaa !49
  %1952 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1951, i32 -1)
  %1953 = extractvalue { i32, i1 } %1952, 1, !nosanitize !32
  br i1 %1953, label %1772, label %1954, !prof !35, !nosanitize !32

1954:                                             ; preds = %1950
  %1955 = extractvalue { i32, i1 } %1952, 0, !nosanitize !32
  %1956 = load i32, ptr %229, align 4, !tbaa !4
  store i32 %1955, ptr %154, align 8, !tbaa !49
  %1957 = sext i32 %1955 to i64
  %1958 = getelementptr inbounds [4 x i8], ptr %223, i64 %1957
  store i32 %1956, ptr %1958, align 4, !tbaa !4
  %1959 = load ptr, ptr %1624, align 8, !tbaa !42
  %1960 = load i32, ptr %1694, align 8, !tbaa !54
  %1961 = load ptr, ptr %1626, align 8, !tbaa !43
  %1962 = load ptr, ptr %1961, align 8, !tbaa !44
  %1963 = getelementptr inbounds nuw i8, ptr %1961, i64 8
  %1964 = load ptr, ptr %1963, align 8, !tbaa !58
  %1965 = getelementptr inbounds nuw i8, ptr %1961, i64 16
  %1966 = load i32, ptr %1965, align 8, !tbaa !59
  %1967 = getelementptr inbounds nuw i8, ptr %1961, i64 24
  %1968 = load i32, ptr %1967, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %500, i8 0, i64 32, i1 false), !tbaa !61
  %1969 = load i32, ptr %154, align 8, !tbaa !49
  %1970 = sext i32 %1969 to i64
  %1971 = getelementptr inbounds [4 x i8], ptr %223, i64 %1970
  %1972 = load i32, ptr %1971, align 4, !tbaa !4
  %1973 = sext i32 %1972 to i64
  %1974 = getelementptr inbounds [4 x i8], ptr %1959, i64 %1973
  %1975 = getelementptr inbounds nuw i8, ptr %1974, i64 2
  store i16 0, ptr %1975, align 2, !tbaa !28
  %1976 = load i32, ptr %154, align 8, !tbaa !49
  %1977 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1976, i32 1), !nosanitize !32
  %1978 = extractvalue { i32, i1 } %1977, 1, !nosanitize !32
  br i1 %1978, label %1979, label %1980, !prof !35, !nosanitize !32

1979:                                             ; preds = %2077, %2041, %2029, %2004, %1954
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

1980:                                             ; preds = %1954
  %1981 = extractvalue { i32, i1 } %1977, 0
  %1982 = icmp slt i32 %1981, 573
  br i1 %1982, label %1983, label %2146

1983:                                             ; preds = %1980
  %1984 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1985 = icmp eq ptr %1962, null
  %1986 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1987 = sext i32 %1981 to i64
  br label %1988

1988:                                             ; preds = %2054, %1983
  %1989 = phi i64 [ %1987, %1983 ], [ %2055, %2054 ]
  %1990 = phi i32 [ 0, %1983 ], [ %2011, %2054 ]
  %1991 = getelementptr inbounds [4 x i8], ptr %223, i64 %1989
  %1992 = load i32, ptr %1991, align 4, !tbaa !4
  %1993 = sext i32 %1992 to i64
  %1994 = getelementptr inbounds [4 x i8], ptr %1959, i64 %1993
  %1995 = getelementptr inbounds nuw i8, ptr %1994, i64 2
  %1996 = load i16, ptr %1995, align 2, !tbaa !28
  %1997 = zext i16 %1996 to i64
  %1998 = getelementptr inbounds nuw [4 x i8], ptr %1959, i64 %1997
  %1999 = getelementptr inbounds nuw i8, ptr %1998, i64 2
  %2000 = load i16, ptr %1999, align 2, !tbaa !28
  %2001 = zext i16 %2000 to i32
  %2002 = add nuw nsw i32 %2001, 1
  %2003 = icmp sgt i32 %1968, %2001
  br i1 %2003, label %2009, label %2004

2004:                                             ; preds = %1988
  %2005 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1990, i32 1), !nosanitize !32
  %2006 = extractvalue { i32, i1 } %2005, 1, !nosanitize !32
  br i1 %2006, label %1979, label %2007, !prof !35, !nosanitize !32

2007:                                             ; preds = %2004
  %2008 = extractvalue { i32, i1 } %2005, 0, !nosanitize !32
  br label %2009

2009:                                             ; preds = %2007, %1988
  %2010 = phi i32 [ %1968, %2007 ], [ %2002, %1988 ]
  %2011 = phi i32 [ %2008, %2007 ], [ %1990, %1988 ]
  %2012 = trunc i32 %2010 to i16
  store i16 %2012, ptr %1995, align 2, !tbaa !28
  %2013 = icmp sgt i32 %1992, %1960
  br i1 %2013, label %2054, label %2014

2014:                                             ; preds = %2009
  %2015 = sext i32 %2010 to i64
  %2016 = getelementptr inbounds [2 x i8], ptr %500, i64 %2015
  %2017 = load i16, ptr %2016, align 2, !tbaa !61
  %2018 = add i16 %2017, 1
  store i16 %2018, ptr %2016, align 2, !tbaa !61
  %2019 = icmp slt i32 %1992, %1966
  br i1 %2019, label %2029, label %2020

2020:                                             ; preds = %2014
  %2021 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1992, i32 %1966), !nosanitize !32
  %2022 = extractvalue { i32, i1 } %2021, 1, !nosanitize !32
  br i1 %2022, label %2023, label %2024, !prof !35, !nosanitize !32

2023:                                             ; preds = %2115, %2110, %2106, %2082, %2074, %2060, %2020
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

2024:                                             ; preds = %2020
  %2025 = extractvalue { i32, i1 } %2021, 0, !nosanitize !32
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds [4 x i8], ptr %1964, i64 %2026
  %2028 = load i32, ptr %2027, align 4, !tbaa !4
  br label %2029

2029:                                             ; preds = %2024, %2014
  %2030 = phi i32 [ %2028, %2024 ], [ 0, %2014 ]
  %2031 = load i16, ptr %1994, align 2, !tbaa !28
  %2032 = zext i16 %2031 to i64
  %2033 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2010, i32 %2030), !nosanitize !32
  %2034 = extractvalue { i32, i1 } %2033, 1, !nosanitize !32
  br i1 %2034, label %1979, label %2035, !prof !35, !nosanitize !32

2035:                                             ; preds = %2029
  %2036 = extractvalue { i32, i1 } %2033, 0, !nosanitize !32
  %2037 = zext i32 %2036 to i64
  %2038 = mul nuw nsw i64 %2037, %2032
  %2039 = load i64, ptr %1984, align 8, !tbaa !51
  %2040 = add i64 %2039, %2038
  store i64 %2040, ptr %1984, align 8, !tbaa !51
  br i1 %1985, label %2054, label %2041

2041:                                             ; preds = %2035
  %2042 = getelementptr inbounds [4 x i8], ptr %1962, i64 %1993
  %2043 = getelementptr inbounds nuw i8, ptr %2042, i64 2
  %2044 = load i16, ptr %2043, align 2, !tbaa !28
  %2045 = zext i16 %2044 to i32
  %2046 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2045, i32 %2030), !nosanitize !32
  %2047 = extractvalue { i32, i1 } %2046, 1, !nosanitize !32
  br i1 %2047, label %1979, label %2048, !prof !35, !nosanitize !32

2048:                                             ; preds = %2041
  %2049 = extractvalue { i32, i1 } %2046, 0, !nosanitize !32
  %2050 = zext i32 %2049 to i64
  %2051 = mul nuw nsw i64 %2050, %2032
  %2052 = load i64, ptr %1986, align 8, !tbaa !52
  %2053 = add i64 %2052, %2051
  store i64 %2053, ptr %1986, align 8, !tbaa !52
  br label %2054

2054:                                             ; preds = %2048, %2035, %2009
  %2055 = add nsw i64 %1989, 1
  %2056 = and i64 %2055, 4294967295
  %2057 = icmp eq i64 %2056, 573
  br i1 %2057, label %2058, label %1988, !llvm.loop !62

2058:                                             ; preds = %2054
  %2059 = icmp eq i32 %2011, 0
  br i1 %2059, label %2146, label %2060

2060:                                             ; preds = %2058
  %2061 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1968, i32 -1)
  %2062 = extractvalue { i32, i1 } %2061, 1, !nosanitize !32
  %2063 = sext i32 %1968 to i64
  %2064 = getelementptr inbounds [2 x i8], ptr %500, i64 %2063
  br i1 %2062, label %2023, label %2065, !prof !35, !nosanitize !32

2065:                                             ; preds = %2092, %2060
  %2066 = phi i32 [ %2093, %2092 ], [ %2011, %2060 ]
  br label %2067

2067:                                             ; preds = %2074, %2065
  %2068 = phi { i32, i1 } [ %2075, %2074 ], [ %2061, %2065 ]
  %2069 = extractvalue { i32, i1 } %2068, 0
  %2070 = sext i32 %2069 to i64
  %2071 = getelementptr inbounds [2 x i8], ptr %500, i64 %2070
  %2072 = load i16, ptr %2071, align 2, !tbaa !61
  %2073 = icmp eq i16 %2072, 0
  br i1 %2073, label %2074, label %2077

2074:                                             ; preds = %2067
  %2075 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 -1)
  %2076 = extractvalue { i32, i1 } %2075, 1, !nosanitize !32
  br i1 %2076, label %2023, label %2067, !prof !35, !llvm.loop !63, !nosanitize !32

2077:                                             ; preds = %2067
  %2078 = getelementptr inbounds [2 x i8], ptr %500, i64 %2070
  %2079 = add i16 %2072, -1
  store i16 %2079, ptr %2078, align 2, !tbaa !61
  %2080 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 1), !nosanitize !32
  %2081 = extractvalue { i32, i1 } %2080, 1, !nosanitize !32
  br i1 %2081, label %1979, label %2082, !prof !35, !nosanitize !32

2082:                                             ; preds = %2077
  %2083 = extractvalue { i32, i1 } %2080, 0, !nosanitize !32
  %2084 = sext i32 %2083 to i64
  %2085 = getelementptr inbounds [2 x i8], ptr %500, i64 %2084
  %2086 = load i16, ptr %2085, align 2, !tbaa !61
  %2087 = add i16 %2086, 2
  store i16 %2087, ptr %2085, align 2, !tbaa !61
  %2088 = load i16, ptr %2064, align 2, !tbaa !61
  %2089 = add i16 %2088, -1
  store i16 %2089, ptr %2064, align 2, !tbaa !61
  %2090 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2066, i32 -2)
  %2091 = extractvalue { i32, i1 } %2090, 1, !nosanitize !32
  br i1 %2091, label %2023, label %2092, !prof !35, !nosanitize !32

2092:                                             ; preds = %2082
  %2093 = extractvalue { i32, i1 } %2090, 0, !nosanitize !32
  %2094 = icmp sgt i32 %2093, 0
  br i1 %2094, label %2065, label %2095, !llvm.loop !64

2095:                                             ; preds = %2092
  %2096 = icmp eq i32 %1968, 0
  br i1 %2096, label %2146, label %2097

2097:                                             ; preds = %2142, %2095
  %2098 = phi i64 [ %2143, %2142 ], [ %2063, %2095 ]
  %2099 = phi i32 [ %2107, %2142 ], [ 573, %2095 ]
  %2100 = getelementptr inbounds [2 x i8], ptr %500, i64 %2098
  %2101 = load i16, ptr %2100, align 2, !tbaa !61
  %2102 = icmp eq i16 %2101, 0
  br i1 %2102, label %2106, label %2103

2103:                                             ; preds = %2097
  %2104 = zext i16 %2101 to i32
  %2105 = trunc i64 %2098 to i16
  br label %2110

2106:                                             ; preds = %2139, %2097
  %2107 = phi i32 [ %2099, %2097 ], [ %2120, %2139 ]
  %2108 = and i64 %2098, 4294967295
  %2109 = icmp eq i64 %2108, 2147483648
  br i1 %2109, label %2023, label %2142, !prof !35, !nosanitize !32

2110:                                             ; preds = %2139, %2103
  %2111 = phi i32 [ %2099, %2103 ], [ %2120, %2139 ]
  %2112 = phi i32 [ %2104, %2103 ], [ %2140, %2139 ]
  %2113 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2111, i32 -1)
  %2114 = extractvalue { i32, i1 } %2113, 1, !nosanitize !32
  br i1 %2114, label %2023, label %2118, !prof !65, !nosanitize !32

2115:                                             ; preds = %2118
  %2116 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2120, i32 -1)
  %2117 = extractvalue { i32, i1 } %2116, 1, !nosanitize !32
  br i1 %2117, label %2023, label %2118, !prof !66, !llvm.loop !67, !nosanitize !32

2118:                                             ; preds = %2115, %2110
  %2119 = phi { i32, i1 } [ %2116, %2115 ], [ %2113, %2110 ]
  %2120 = extractvalue { i32, i1 } %2119, 0, !nosanitize !32
  %2121 = sext i32 %2120 to i64
  %2122 = getelementptr inbounds [4 x i8], ptr %223, i64 %2121
  %2123 = load i32, ptr %2122, align 4, !tbaa !4
  %2124 = icmp sgt i32 %2123, %1960
  br i1 %2124, label %2115, label %2125, !llvm.loop !67

2125:                                             ; preds = %2118
  %2126 = sext i32 %2123 to i64
  %2127 = getelementptr inbounds [4 x i8], ptr %1959, i64 %2126
  %2128 = getelementptr inbounds nuw i8, ptr %2127, i64 2
  %2129 = load i16, ptr %2128, align 2, !tbaa !28
  %2130 = zext i16 %2129 to i64
  %2131 = icmp eq i64 %2098, %2130
  br i1 %2131, label %2139, label %2132

2132:                                             ; preds = %2125
  %2133 = sub nsw i64 %2098, %2130
  %2134 = load i16, ptr %2127, align 2, !tbaa !28
  %2135 = zext i16 %2134 to i64
  %2136 = mul nsw i64 %2133, %2135
  %2137 = load i64, ptr %1984, align 8, !tbaa !51
  %2138 = add i64 %2136, %2137
  store i64 %2138, ptr %1984, align 8, !tbaa !51
  store i16 %2105, ptr %2128, align 2, !tbaa !28
  br label %2139

2139:                                             ; preds = %2132, %2125
  %2140 = add nsw i32 %2112, -1
  %2141 = icmp eq i32 %2140, 0
  br i1 %2141, label %2106, label %2110, !llvm.loop !67

2142:                                             ; preds = %2106
  %2143 = add nsw i64 %2098, -1
  %2144 = and i64 %2143, 4294967295
  %2145 = icmp eq i64 %2144, 0
  br i1 %2145, label %2146, label %2097, !llvm.loop !68

2146:                                             ; preds = %2142, %2095, %2058, %1980
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %2147 = load i16, ptr %500, align 2, !tbaa !61
  %2148 = shl i16 %2147, 1
  %2149 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2148, ptr %2149, align 2, !tbaa !61
  %2150 = load i16, ptr %682, align 2, !tbaa !61
  %2151 = add i16 %2150, %2148
  %2152 = shl i16 %2151, 1
  %2153 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2152, ptr %2153, align 4, !tbaa !61
  %2154 = load i16, ptr %687, align 2, !tbaa !61
  %2155 = add i16 %2154, %2152
  %2156 = shl i16 %2155, 1
  %2157 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2156, ptr %2157, align 2, !tbaa !61
  %2158 = load i16, ptr %692, align 2, !tbaa !61
  %2159 = add i16 %2158, %2156
  %2160 = shl i16 %2159, 1
  %2161 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2160, ptr %2161, align 8, !tbaa !61
  %2162 = load i16, ptr %697, align 2, !tbaa !61
  %2163 = add i16 %2162, %2160
  %2164 = shl i16 %2163, 1
  %2165 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2164, ptr %2165, align 2, !tbaa !61
  %2166 = load i16, ptr %702, align 2, !tbaa !61
  %2167 = add i16 %2166, %2164
  %2168 = shl i16 %2167, 1
  %2169 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2168, ptr %2169, align 4, !tbaa !61
  %2170 = load i16, ptr %707, align 2, !tbaa !61
  %2171 = add i16 %2170, %2168
  %2172 = shl i16 %2171, 1
  %2173 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2172, ptr %2173, align 2, !tbaa !61
  %2174 = load i16, ptr %712, align 2, !tbaa !61
  %2175 = add i16 %2174, %2172
  %2176 = shl i16 %2175, 1
  %2177 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2176, ptr %2177, align 16, !tbaa !61
  %2178 = load i16, ptr %717, align 2, !tbaa !61
  %2179 = add i16 %2178, %2176
  %2180 = shl i16 %2179, 1
  %2181 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2180, ptr %2181, align 2, !tbaa !61
  %2182 = load i16, ptr %722, align 2, !tbaa !61
  %2183 = add i16 %2182, %2180
  %2184 = shl i16 %2183, 1
  %2185 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2184, ptr %2185, align 4, !tbaa !61
  %2186 = load i16, ptr %727, align 2, !tbaa !61
  %2187 = add i16 %2186, %2184
  %2188 = shl i16 %2187, 1
  %2189 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2188, ptr %2189, align 2, !tbaa !61
  %2190 = load i16, ptr %732, align 2, !tbaa !61
  %2191 = add i16 %2190, %2188
  %2192 = shl i16 %2191, 1
  %2193 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2192, ptr %2193, align 8, !tbaa !61
  %2194 = load i16, ptr %737, align 2, !tbaa !61
  %2195 = add i16 %2194, %2192
  %2196 = shl i16 %2195, 1
  %2197 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2196, ptr %2197, align 2, !tbaa !61
  %2198 = load i16, ptr %742, align 2, !tbaa !61
  %2199 = add i16 %2198, %2196
  %2200 = shl i16 %2199, 1
  %2201 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2200, ptr %2201, align 4, !tbaa !61
  %2202 = load i16, ptr %747, align 2, !tbaa !61
  %2203 = add i16 %2202, %2200
  %2204 = shl i16 %2203, 1
  %2205 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2204, ptr %2205, align 2, !tbaa !61
  %2206 = icmp slt i32 %1692, 0
  br i1 %2206, label %2268, label %2208

2207:                                             ; preds = %2262
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

2208:                                             ; preds = %2264, %2146
  %2209 = phi i64 [ %2265, %2264 ], [ 0, %2146 ]
  %2210 = getelementptr inbounds nuw [4 x i8], ptr %1625, i64 %2209
  %2211 = getelementptr inbounds nuw i8, ptr %2210, i64 2
  %2212 = load i16, ptr %2211, align 2, !tbaa !28
  %2213 = icmp eq i16 %2212, 0
  br i1 %2213, label %2262, label %2214

2214:                                             ; preds = %2208
  %2215 = zext i16 %2212 to i32
  %2216 = zext i16 %2212 to i64
  %2217 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %2216
  %2218 = load i16, ptr %2217, align 2, !tbaa !61
  %2219 = add i16 %2218, 1
  store i16 %2219, ptr %2217, align 2, !tbaa !61
  %2220 = and i32 %2215, 3
  %2221 = icmp ult i16 %2212, 4
  br i1 %2221, label %2246, label %2222

2222:                                             ; preds = %2214
  %2223 = and i32 %2215, 65532
  br label %2224

2224:                                             ; preds = %2224, %2222
  %2225 = phi i16 [ %2218, %2222 ], [ %2241, %2224 ]
  %2226 = phi i16 [ 0, %2222 ], [ %2240, %2224 ]
  %2227 = phi i32 [ 0, %2222 ], [ %2242, %2224 ]
  %2228 = and i16 %2225, 1
  %2229 = or disjoint i16 %2226, %2228
  %2230 = shl i16 %2229, 2
  %2231 = and i16 %2225, 2
  %2232 = or disjoint i16 %2230, %2231
  %2233 = lshr i16 %2225, 2
  %2234 = and i16 %2233, 1
  %2235 = or disjoint i16 %2232, %2234
  %2236 = shl i16 %2235, 1
  %2237 = lshr i16 %2225, 3
  %2238 = and i16 %2237, 1
  %2239 = or disjoint i16 %2236, %2238
  %2240 = shl i16 %2239, 1
  %2241 = lshr i16 %2225, 4
  %2242 = add i32 %2227, 4
  %2243 = icmp eq i32 %2242, %2223
  br i1 %2243, label %2244, label %2224, !llvm.loop !69

2244:                                             ; preds = %2224
  %2245 = icmp eq i32 %2220, 0
  br i1 %2245, label %2260, label %2246

2246:                                             ; preds = %2244, %2214
  %2247 = phi i16 [ %2218, %2214 ], [ %2241, %2244 ]
  %2248 = phi i16 [ 0, %2214 ], [ %2240, %2244 ]
  %2249 = icmp ne i32 %2220, 0
  tail call void @llvm.assume(i1 %2249)
  br label %2250

2250:                                             ; preds = %2250, %2246
  %2251 = phi i16 [ %2247, %2246 ], [ %2257, %2250 ]
  %2252 = phi i16 [ %2248, %2246 ], [ %2256, %2250 ]
  %2253 = phi i32 [ 0, %2246 ], [ %2258, %2250 ]
  %2254 = and i16 %2251, 1
  %2255 = or disjoint i16 %2252, %2254
  %2256 = shl i16 %2255, 1
  %2257 = lshr i16 %2251, 1
  %2258 = add i32 %2253, 1
  %2259 = icmp eq i32 %2258, %2220
  br i1 %2259, label %2260, label %2250, !llvm.loop !78

2260:                                             ; preds = %2250, %2244
  %2261 = phi i16 [ %2239, %2244 ], [ %2255, %2250 ]
  store i16 %2261, ptr %2210, align 2, !tbaa !28
  br label %2262

2262:                                             ; preds = %2260, %2208
  %2263 = icmp eq i64 %2209, 2147483647
  br i1 %2263, label %2207, label %2264, !prof !35, !nosanitize !32

2264:                                             ; preds = %2262
  %2265 = add nuw nsw i64 %2209, 1
  %2266 = trunc i64 %2265 to i32
  %2267 = icmp slt i32 %1692, %2266
  br i1 %2267, label %2268, label %2208, !llvm.loop !72

2268:                                             ; preds = %2264, %2146
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %2269 = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %2270 = load i16, ptr %2269, align 2, !tbaa !28
  %2271 = icmp eq i16 %2270, 0
  br i1 %2271, label %2272, label %2333

2272:                                             ; preds = %2268
  %2273 = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %2274 = load i16, ptr %2273, align 2, !tbaa !28
  %2275 = icmp eq i16 %2274, 0
  br i1 %2275, label %2276, label %2333

2276:                                             ; preds = %2272
  %2277 = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %2278 = load i16, ptr %2277, align 2, !tbaa !28
  %2279 = icmp eq i16 %2278, 0
  br i1 %2279, label %2280, label %2333

2280:                                             ; preds = %2276
  %2281 = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %2282 = load i16, ptr %2281, align 2, !tbaa !28
  %2283 = icmp eq i16 %2282, 0
  br i1 %2283, label %2284, label %2333

2284:                                             ; preds = %2280
  %2285 = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %2286 = load i16, ptr %2285, align 2, !tbaa !28
  %2287 = icmp eq i16 %2286, 0
  br i1 %2287, label %2288, label %2333

2288:                                             ; preds = %2284
  %2289 = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %2290 = load i16, ptr %2289, align 2, !tbaa !28
  %2291 = icmp eq i16 %2290, 0
  br i1 %2291, label %2292, label %2333

2292:                                             ; preds = %2288
  %2293 = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %2294 = load i16, ptr %2293, align 2, !tbaa !28
  %2295 = icmp eq i16 %2294, 0
  br i1 %2295, label %2296, label %2333

2296:                                             ; preds = %2292
  %2297 = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %2298 = load i16, ptr %2297, align 2, !tbaa !28
  %2299 = icmp eq i16 %2298, 0
  br i1 %2299, label %2300, label %2333

2300:                                             ; preds = %2296
  %2301 = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %2302 = load i16, ptr %2301, align 2, !tbaa !28
  %2303 = icmp eq i16 %2302, 0
  br i1 %2303, label %2304, label %2333

2304:                                             ; preds = %2300
  %2305 = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %2306 = load i16, ptr %2305, align 2, !tbaa !28
  %2307 = icmp eq i16 %2306, 0
  br i1 %2307, label %2308, label %2333

2308:                                             ; preds = %2304
  %2309 = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %2310 = load i16, ptr %2309, align 2, !tbaa !28
  %2311 = icmp eq i16 %2310, 0
  br i1 %2311, label %2312, label %2333

2312:                                             ; preds = %2308
  %2313 = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %2314 = load i16, ptr %2313, align 2, !tbaa !28
  %2315 = icmp eq i16 %2314, 0
  br i1 %2315, label %2316, label %2333

2316:                                             ; preds = %2312
  %2317 = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %2318 = load i16, ptr %2317, align 2, !tbaa !28
  %2319 = icmp eq i16 %2318, 0
  br i1 %2319, label %2320, label %2333

2320:                                             ; preds = %2316
  %2321 = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %2322 = load i16, ptr %2321, align 2, !tbaa !28
  %2323 = icmp eq i16 %2322, 0
  br i1 %2323, label %2324, label %2333

2324:                                             ; preds = %2320
  %2325 = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %2326 = load i16, ptr %2325, align 2, !tbaa !28
  %2327 = icmp eq i16 %2326, 0
  br i1 %2327, label %2328, label %2333

2328:                                             ; preds = %2324
  %2329 = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %2330 = load i16, ptr %2329, align 2, !tbaa !28
  %2331 = icmp eq i16 %2330, 0
  %2332 = select i1 %2331, i32 2, i32 3
  br label %2333

2333:                                             ; preds = %2328, %2324, %2320, %2316, %2312, %2308, %2304, %2300, %2296, %2292, %2288, %2284, %2280, %2276, %2272, %2268
  %2334 = phi i32 [ 18, %2268 ], [ 10, %2300 ], [ 17, %2272 ], [ %2332, %2328 ], [ 16, %2276 ], [ 8, %2308 ], [ 15, %2280 ], [ 4, %2324 ], [ 14, %2284 ], [ 9, %2304 ], [ 13, %2288 ], [ 5, %2320 ], [ 12, %2292 ], [ 7, %2312 ], [ 11, %2296 ], [ 6, %2316 ]
  %2335 = mul nuw nsw i32 %2334, 3
  %2336 = add nuw nsw i32 %2335, 17
  %2337 = zext nneg i32 %2336 to i64
  %2338 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2339 = load i64, ptr %2338, align 8, !tbaa !51
  %2340 = add i64 %2339, %2337
  store i64 %2340, ptr %2338, align 8, !tbaa !51
  %2341 = add i64 %2340, 10
  %2342 = lshr i64 %2341, 3
  %2343 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2344 = load i64, ptr %2343, align 8, !tbaa !52
  %2345 = add i64 %2344, 10
  %2346 = lshr i64 %2345, 3
  %2347 = icmp samesign ugt i64 %2346, %2342
  br i1 %2347, label %2348, label %2354

2348:                                             ; preds = %2333
  %2349 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2350 = load i32, ptr %2349, align 8, !tbaa !79
  %2351 = icmp eq i32 %2350, 4
  br i1 %2351, label %2354, label %2360

2352:                                             ; preds = %4
  %2353 = add i64 %2, 5
  br label %2354

2354:                                             ; preds = %2352, %2348, %2333
  %2355 = phi i64 [ %2353, %2352 ], [ %2346, %2348 ], [ %2346, %2333 ]
  %2356 = add i64 %2, 4
  %2357 = icmp ule i64 %2356, %2355
  %2358 = icmp ne ptr %1, null
  %2359 = and i1 %2358, %2357
  br i1 %2359, label %2365, label %2476

2360:                                             ; preds = %2348
  %2361 = add i64 %2, 4
  %2362 = icmp ule i64 %2361, %2342
  %2363 = icmp ne ptr %1, null
  %2364 = and i1 %2363, %2362
  br i1 %2364, label %2365, label %2837

2365:                                             ; preds = %2360, %2354
  %2366 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2367 = load i32, ptr %2366, align 4, !tbaa !26
  %2368 = icmp sgt i32 %2367, 13
  %2369 = shl i32 %3, %2367
  %2370 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2371 = load i16, ptr %2370, align 8, !tbaa !25
  %2372 = trunc i32 %2369 to i16
  %2373 = or i16 %2371, %2372
  store i16 %2373, ptr %2370, align 8, !tbaa !25
  br i1 %2368, label %2375, label %2399

2374:                                             ; preds = %2375
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

2375:                                             ; preds = %2365
  %2376 = trunc i16 %2373 to i8
  %2377 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2378 = load ptr, ptr %2377, align 8, !tbaa !33
  %2379 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2380 = load i64, ptr %2379, align 8, !tbaa !34
  %2381 = add i64 %2380, 1
  store i64 %2381, ptr %2379, align 8, !tbaa !34
  %2382 = getelementptr inbounds nuw i8, ptr %2378, i64 %2380
  store i8 %2376, ptr %2382, align 1, !tbaa !28
  %2383 = load i16, ptr %2370, align 8, !tbaa !25
  %2384 = lshr i16 %2383, 8
  %2385 = trunc nuw i16 %2384 to i8
  %2386 = load ptr, ptr %2377, align 8, !tbaa !33
  %2387 = load i64, ptr %2379, align 8, !tbaa !34
  %2388 = add i64 %2387, 1
  store i64 %2388, ptr %2379, align 8, !tbaa !34
  %2389 = getelementptr inbounds nuw i8, ptr %2386, i64 %2387
  store i8 %2385, ptr %2389, align 1, !tbaa !28
  %2390 = load i32, ptr %2366, align 4, !tbaa !26
  %2391 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2390), !nosanitize !32
  %2392 = extractvalue { i32, i1 } %2391, 1, !nosanitize !32
  br i1 %2392, label %2374, label %2393, !prof !35, !nosanitize !32

2393:                                             ; preds = %2375
  %2394 = extractvalue { i32, i1 } %2391, 0, !nosanitize !32
  %2395 = and i32 %3, 65535
  %2396 = lshr i32 %2395, %2394
  %2397 = trunc nuw i32 %2396 to i16
  store i16 %2397, ptr %2370, align 8, !tbaa !25
  %2398 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2390, i32 -13), !nosanitize !32
  br label %2402

2399:                                             ; preds = %2365
  %2400 = add nsw i32 %2367, 3
  %2401 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2400, 0
  br label %2402

2402:                                             ; preds = %2393, %2399
  %2403 = phi i16 [ %2397, %2393 ], [ %2373, %2399 ]
  %2404 = phi { i32, i1 } [ %2398, %2393 ], [ %2401, %2399 ]
  %2405 = extractvalue { i32, i1 } %2404, 0
  store i32 %2405, ptr %2366, align 4, !tbaa !26
  %2406 = icmp sgt i32 %2405, 8
  br i1 %2406, label %2407, label %2422

2407:                                             ; preds = %2402
  %2408 = trunc i16 %2403 to i8
  %2409 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2410 = load ptr, ptr %2409, align 8, !tbaa !33
  %2411 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2412 = load i64, ptr %2411, align 8, !tbaa !34
  %2413 = add i64 %2412, 1
  store i64 %2413, ptr %2411, align 8, !tbaa !34
  %2414 = getelementptr inbounds nuw i8, ptr %2410, i64 %2412
  store i8 %2408, ptr %2414, align 1, !tbaa !28
  %2415 = load i16, ptr %2370, align 8, !tbaa !25
  %2416 = lshr i16 %2415, 8
  %2417 = trunc nuw i16 %2416 to i8
  %2418 = load ptr, ptr %2409, align 8, !tbaa !33
  %2419 = load i64, ptr %2411, align 8, !tbaa !34
  %2420 = add i64 %2419, 1
  store i64 %2420, ptr %2411, align 8, !tbaa !34
  %2421 = getelementptr inbounds nuw i8, ptr %2418, i64 %2419
  store i8 %2417, ptr %2421, align 1, !tbaa !28
  br label %2432

2422:                                             ; preds = %2402
  %2423 = icmp sgt i32 %2405, 0
  br i1 %2423, label %2424, label %2432

2424:                                             ; preds = %2422
  %2425 = trunc i16 %2403 to i8
  %2426 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2427 = load ptr, ptr %2426, align 8, !tbaa !33
  %2428 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2429 = load i64, ptr %2428, align 8, !tbaa !34
  %2430 = add i64 %2429, 1
  store i64 %2430, ptr %2428, align 8, !tbaa !34
  %2431 = getelementptr inbounds nuw i8, ptr %2427, i64 %2429
  store i8 %2425, ptr %2431, align 1, !tbaa !28
  br label %2432

2432:                                             ; preds = %2424, %2422, %2407
  %2433 = load i32, ptr %2366, align 4, !tbaa !26
  %2434 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2433, i32 -1)
  %2435 = extractvalue { i32, i1 } %2434, 1, !nosanitize !32
  br i1 %2435, label %2436, label %2437, !prof !35, !nosanitize !32

2436:                                             ; preds = %2432
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

2437:                                             ; preds = %2432
  %2438 = extractvalue { i32, i1 } %2434, 0, !nosanitize !32
  %2439 = and i32 %2438, 7
  %2440 = add nuw nsw i32 %2439, 1
  %2441 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2440, ptr %2441, align 8, !tbaa !27
  store i16 0, ptr %2370, align 8, !tbaa !25
  store i32 0, ptr %2366, align 4, !tbaa !26
  %2442 = trunc i64 %2 to i8
  %2443 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2444 = load ptr, ptr %2443, align 8, !tbaa !33
  %2445 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2446 = load i64, ptr %2445, align 8, !tbaa !34
  %2447 = add i64 %2446, 1
  store i64 %2447, ptr %2445, align 8, !tbaa !34
  %2448 = getelementptr inbounds nuw i8, ptr %2444, i64 %2446
  store i8 %2442, ptr %2448, align 1, !tbaa !28
  %2449 = lshr i64 %2, 8
  %2450 = trunc i64 %2449 to i8
  %2451 = load ptr, ptr %2443, align 8, !tbaa !33
  %2452 = load i64, ptr %2445, align 8, !tbaa !34
  %2453 = add i64 %2452, 1
  store i64 %2453, ptr %2445, align 8, !tbaa !34
  %2454 = getelementptr inbounds nuw i8, ptr %2451, i64 %2452
  store i8 %2450, ptr %2454, align 1, !tbaa !28
  %2455 = trunc i64 %2 to i32
  %2456 = xor i32 %2455, 65535
  %2457 = trunc i32 %2456 to i8
  %2458 = load ptr, ptr %2443, align 8, !tbaa !33
  %2459 = load i64, ptr %2445, align 8, !tbaa !34
  %2460 = add i64 %2459, 1
  store i64 %2460, ptr %2445, align 8, !tbaa !34
  %2461 = getelementptr inbounds nuw i8, ptr %2458, i64 %2459
  store i8 %2457, ptr %2461, align 1, !tbaa !28
  %2462 = lshr i32 %2456, 8
  %2463 = trunc i32 %2462 to i8
  %2464 = load ptr, ptr %2443, align 8, !tbaa !33
  %2465 = load i64, ptr %2445, align 8, !tbaa !34
  %2466 = add i64 %2465, 1
  store i64 %2466, ptr %2445, align 8, !tbaa !34
  %2467 = getelementptr inbounds nuw i8, ptr %2464, i64 %2465
  store i8 %2463, ptr %2467, align 1, !tbaa !28
  %2468 = icmp eq i64 %2, 0
  br i1 %2468, label %2473, label %2469

2469:                                             ; preds = %2437
  %2470 = load ptr, ptr %2443, align 8, !tbaa !33
  %2471 = load i64, ptr %2445, align 8, !tbaa !34
  %2472 = getelementptr inbounds nuw i8, ptr %2470, i64 %2471
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2472, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2473

2473:                                             ; preds = %2469, %2437
  %2474 = load i64, ptr %2445, align 8, !tbaa !34
  %2475 = add i64 %2474, %2
  store i64 %2475, ptr %2445, align 8, !tbaa !34
  br label %4171

2476:                                             ; preds = %2354
  %2477 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2478 = load i32, ptr %2477, align 4, !tbaa !26
  %2479 = icmp sgt i32 %2478, 13
  %2480 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !32
  %2481 = extractvalue { i32, i1 } %2480, 1, !nosanitize !32
  br i1 %2479, label %2483, label %2516

2482:                                             ; preds = %2844, %2485
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

2483:                                             ; preds = %2476
  br i1 %2481, label %2484, label %2485, !prof !35, !nosanitize !32

2484:                                             ; preds = %2893, %2885, %2875, %2868, %2843, %2516, %2509, %2483
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

2485:                                             ; preds = %2483
  %2486 = extractvalue { i32, i1 } %2480, 0, !nosanitize !32
  %2487 = shl i32 %2486, %2478
  %2488 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2489 = load i16, ptr %2488, align 8, !tbaa !25
  %2490 = trunc i32 %2487 to i16
  %2491 = or i16 %2489, %2490
  store i16 %2491, ptr %2488, align 8, !tbaa !25
  %2492 = trunc i16 %2491 to i8
  %2493 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2494 = load ptr, ptr %2493, align 8, !tbaa !33
  %2495 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2496 = load i64, ptr %2495, align 8, !tbaa !34
  %2497 = add i64 %2496, 1
  store i64 %2497, ptr %2495, align 8, !tbaa !34
  %2498 = getelementptr inbounds nuw i8, ptr %2494, i64 %2496
  store i8 %2492, ptr %2498, align 1, !tbaa !28
  %2499 = load i16, ptr %2488, align 8, !tbaa !25
  %2500 = lshr i16 %2499, 8
  %2501 = trunc nuw i16 %2500 to i8
  %2502 = load ptr, ptr %2493, align 8, !tbaa !33
  %2503 = load i64, ptr %2495, align 8, !tbaa !34
  %2504 = add i64 %2503, 1
  store i64 %2504, ptr %2495, align 8, !tbaa !34
  %2505 = getelementptr inbounds nuw i8, ptr %2502, i64 %2503
  store i8 %2501, ptr %2505, align 1, !tbaa !28
  %2506 = load i32, ptr %2477, align 4, !tbaa !26
  %2507 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2506), !nosanitize !32
  %2508 = extractvalue { i32, i1 } %2507, 1, !nosanitize !32
  br i1 %2508, label %2482, label %2509, !prof !35, !nosanitize !32

2509:                                             ; preds = %2485
  %2510 = extractvalue { i32, i1 } %2507, 0, !nosanitize !32
  %2511 = and i32 %2486, 65535
  %2512 = lshr i32 %2511, %2510
  %2513 = trunc nuw i32 %2512 to i16
  store i16 %2513, ptr %2488, align 8, !tbaa !25
  %2514 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2506, i32 -13), !nosanitize !32
  %2515 = extractvalue { i32, i1 } %2514, 1, !nosanitize !32
  br i1 %2515, label %2484, label %2526, !prof !35, !nosanitize !32

2516:                                             ; preds = %2476
  br i1 %2481, label %2484, label %2517, !prof !35, !nosanitize !32

2517:                                             ; preds = %2516
  %2518 = extractvalue { i32, i1 } %2480, 0, !nosanitize !32
  %2519 = shl i32 %2518, %2478
  %2520 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2521 = load i16, ptr %2520, align 8, !tbaa !25
  %2522 = trunc i32 %2519 to i16
  %2523 = or i16 %2521, %2522
  store i16 %2523, ptr %2520, align 8, !tbaa !25
  %2524 = add nsw i32 %2478, 3
  %2525 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2524, 0
  br label %2526

2526:                                             ; preds = %2517, %2509
  %2527 = phi i16 [ %2513, %2509 ], [ %2523, %2517 ]
  %2528 = phi { i32, i1 } [ %2514, %2509 ], [ %2525, %2517 ]
  %2529 = extractvalue { i32, i1 } %2528, 0
  store i32 %2529, ptr %2477, align 4, !tbaa !26
  %2530 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2531 = load i32, ptr %2530, align 4, !tbaa !31
  %2532 = icmp eq i32 %2531, 0
  br i1 %2532, label %2805, label %2533

2533:                                             ; preds = %2526
  %2534 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2535 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2536 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2537 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %2538

2538:                                             ; preds = %2800, %2533
  %2539 = phi i16 [ %2801, %2800 ], [ %2527, %2533 ]
  %2540 = phi i32 [ %2802, %2800 ], [ %2529, %2533 ]
  %2541 = phi i32 [ %2555, %2800 ], [ 0, %2533 ]
  %2542 = load ptr, ptr %2534, align 8, !tbaa !80
  %2543 = add nuw i32 %2541, 1
  %2544 = zext i32 %2541 to i64
  %2545 = getelementptr inbounds nuw i8, ptr %2542, i64 %2544
  %2546 = load i8, ptr %2545, align 1, !tbaa !28
  %2547 = zext i8 %2546 to i32
  %2548 = add i32 %2541, 2
  %2549 = zext i32 %2543 to i64
  %2550 = getelementptr inbounds nuw i8, ptr %2542, i64 %2549
  %2551 = load i8, ptr %2550, align 1, !tbaa !28
  %2552 = zext i8 %2551 to i32
  %2553 = shl nuw nsw i32 %2552, 8
  %2554 = or disjoint i32 %2553, %2547
  %2555 = add i32 %2541, 3
  %2556 = zext i32 %2548 to i64
  %2557 = getelementptr inbounds nuw i8, ptr %2542, i64 %2556
  %2558 = load i8, ptr %2557, align 1, !tbaa !28
  %2559 = zext i8 %2558 to i32
  %2560 = icmp eq i32 %2554, 0
  %2561 = zext i8 %2558 to i64
  br i1 %2560, label %2562, label %2602

2562:                                             ; preds = %2538
  %2563 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2561
  %2564 = getelementptr inbounds nuw i8, ptr %2563, i64 2
  %2565 = load i16, ptr %2564, align 2, !tbaa !28
  %2566 = zext i16 %2565 to i32
  %2567 = sub nsw i32 16, %2566
  %2568 = icmp sgt i32 %2540, %2567
  %2569 = load i16, ptr %2563, align 4, !tbaa !28
  %2570 = zext i16 %2569 to i32
  %2571 = shl i32 %2570, %2540
  %2572 = trunc i32 %2571 to i16
  %2573 = or i16 %2539, %2572
  store i16 %2573, ptr %2535, align 8, !tbaa !25
  br i1 %2568, label %2575, label %2599

2574:                                             ; preds = %2810, %2782, %2766, %2754, %2722, %2683, %2667, %2658, %2652, %2618, %2575
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

2575:                                             ; preds = %2562
  %2576 = trunc i16 %2573 to i8
  %2577 = load ptr, ptr %2536, align 8, !tbaa !33
  %2578 = load i64, ptr %2537, align 8, !tbaa !34
  %2579 = add i64 %2578, 1
  store i64 %2579, ptr %2537, align 8, !tbaa !34
  %2580 = getelementptr inbounds nuw i8, ptr %2577, i64 %2578
  store i8 %2576, ptr %2580, align 1, !tbaa !28
  %2581 = load i16, ptr %2535, align 8, !tbaa !25
  %2582 = lshr i16 %2581, 8
  %2583 = trunc nuw i16 %2582 to i8
  %2584 = load ptr, ptr %2536, align 8, !tbaa !33
  %2585 = load i64, ptr %2537, align 8, !tbaa !34
  %2586 = add i64 %2585, 1
  store i64 %2586, ptr %2537, align 8, !tbaa !34
  %2587 = getelementptr inbounds nuw i8, ptr %2584, i64 %2585
  store i8 %2583, ptr %2587, align 1, !tbaa !28
  %2588 = load i32, ptr %2477, align 4, !tbaa !26
  %2589 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2588), !nosanitize !32
  %2590 = extractvalue { i32, i1 } %2589, 1, !nosanitize !32
  br i1 %2590, label %2574, label %2591, !prof !35, !nosanitize !32

2591:                                             ; preds = %2575
  %2592 = extractvalue { i32, i1 } %2589, 0, !nosanitize !32
  %2593 = lshr i32 %2570, %2592
  %2594 = trunc nuw i32 %2593 to i16
  store i16 %2594, ptr %2535, align 8, !tbaa !25
  %2595 = add nsw i32 %2566, -16
  %2596 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2588, i32 %2595), !nosanitize !32
  %2597 = extractvalue { i32, i1 } %2596, 1, !nosanitize !32
  br i1 %2597, label %2598, label %2796, !prof !35, !nosanitize !32

2598:                                             ; preds = %2828, %2793, %2789, %2738, %2694, %2690, %2634, %2591
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

2599:                                             ; preds = %2562
  %2600 = add nsw i32 %2540, %2566
  %2601 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2600, 0
  br label %2796

2602:                                             ; preds = %2538
  %2603 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %2561
  %2604 = load i8, ptr %2603, align 1, !tbaa !28
  %2605 = zext i8 %2604 to i64
  %2606 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2605
  %2607 = getelementptr inbounds nuw i8, ptr %2606, i64 1028
  %2608 = getelementptr inbounds nuw i8, ptr %2606, i64 1030
  %2609 = load i16, ptr %2608, align 2, !tbaa !28
  %2610 = zext i16 %2609 to i32
  %2611 = sub nsw i32 16, %2610
  %2612 = icmp sgt i32 %2540, %2611
  %2613 = load i16, ptr %2607, align 4, !tbaa !28
  %2614 = zext i16 %2613 to i32
  %2615 = shl i32 %2614, %2540
  %2616 = trunc i32 %2615 to i16
  %2617 = or i16 %2539, %2616
  store i16 %2617, ptr %2535, align 8, !tbaa !25
  br i1 %2612, label %2618, label %2641

2618:                                             ; preds = %2602
  %2619 = trunc i16 %2617 to i8
  %2620 = load ptr, ptr %2536, align 8, !tbaa !33
  %2621 = load i64, ptr %2537, align 8, !tbaa !34
  %2622 = add i64 %2621, 1
  store i64 %2622, ptr %2537, align 8, !tbaa !34
  %2623 = getelementptr inbounds nuw i8, ptr %2620, i64 %2621
  store i8 %2619, ptr %2623, align 1, !tbaa !28
  %2624 = load i16, ptr %2535, align 8, !tbaa !25
  %2625 = lshr i16 %2624, 8
  %2626 = trunc nuw i16 %2625 to i8
  %2627 = load ptr, ptr %2536, align 8, !tbaa !33
  %2628 = load i64, ptr %2537, align 8, !tbaa !34
  %2629 = add i64 %2628, 1
  store i64 %2629, ptr %2537, align 8, !tbaa !34
  %2630 = getelementptr inbounds nuw i8, ptr %2627, i64 %2628
  store i8 %2626, ptr %2630, align 1, !tbaa !28
  %2631 = load i32, ptr %2477, align 4, !tbaa !26
  %2632 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2631), !nosanitize !32
  %2633 = extractvalue { i32, i1 } %2632, 1, !nosanitize !32
  br i1 %2633, label %2574, label %2634, !prof !35, !nosanitize !32

2634:                                             ; preds = %2618
  %2635 = extractvalue { i32, i1 } %2632, 0, !nosanitize !32
  %2636 = lshr i32 %2614, %2635
  %2637 = trunc nuw i32 %2636 to i16
  store i16 %2637, ptr %2535, align 8, !tbaa !25
  %2638 = add nsw i32 %2610, -16
  %2639 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2631, i32 %2638), !nosanitize !32
  %2640 = extractvalue { i32, i1 } %2639, 1, !nosanitize !32
  br i1 %2640, label %2598, label %2644, !prof !35, !nosanitize !32

2641:                                             ; preds = %2602
  %2642 = add nsw i32 %2540, %2610
  %2643 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2642, 0
  br label %2644

2644:                                             ; preds = %2641, %2634
  %2645 = phi i16 [ %2637, %2634 ], [ %2617, %2641 ]
  %2646 = phi { i32, i1 } [ %2639, %2634 ], [ %2643, %2641 ]
  %2647 = extractvalue { i32, i1 } %2646, 0
  store i32 %2647, ptr %2477, align 4, !tbaa !26
  %2648 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %2605
  %2649 = load i32, ptr %2648, align 4, !tbaa !4
  %2650 = add i8 %2604, -28
  %2651 = icmp ult i8 %2650, -20
  br i1 %2651, label %2701, label %2652

2652:                                             ; preds = %2644
  %2653 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %2605
  %2654 = load i32, ptr %2653, align 4, !tbaa !4
  %2655 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2559, i32 %2654), !nosanitize !32
  %2656 = extractvalue { i32, i1 } %2655, 0, !nosanitize !32
  %2657 = extractvalue { i32, i1 } %2655, 1, !nosanitize !32
  br i1 %2657, label %2574, label %2658, !prof !35, !nosanitize !32

2658:                                             ; preds = %2652
  %2659 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2649), !nosanitize !32
  %2660 = extractvalue { i32, i1 } %2659, 1, !nosanitize !32
  br i1 %2660, label %2574, label %2661, !prof !35, !nosanitize !32

2661:                                             ; preds = %2658
  %2662 = extractvalue { i32, i1 } %2659, 0, !nosanitize !32
  %2663 = icmp sgt i32 %2647, %2662
  %2664 = shl i32 %2656, %2647
  %2665 = trunc i32 %2664 to i16
  %2666 = or i16 %2645, %2665
  store i16 %2666, ptr %2535, align 8, !tbaa !25
  br i1 %2663, label %2667, label %2694

2667:                                             ; preds = %2661
  %2668 = trunc i16 %2666 to i8
  %2669 = load ptr, ptr %2536, align 8, !tbaa !33
  %2670 = load i64, ptr %2537, align 8, !tbaa !34
  %2671 = add i64 %2670, 1
  store i64 %2671, ptr %2537, align 8, !tbaa !34
  %2672 = getelementptr inbounds nuw i8, ptr %2669, i64 %2670
  store i8 %2668, ptr %2672, align 1, !tbaa !28
  %2673 = load i16, ptr %2535, align 8, !tbaa !25
  %2674 = lshr i16 %2673, 8
  %2675 = trunc nuw i16 %2674 to i8
  %2676 = load ptr, ptr %2536, align 8, !tbaa !33
  %2677 = load i64, ptr %2537, align 8, !tbaa !34
  %2678 = add i64 %2677, 1
  store i64 %2678, ptr %2537, align 8, !tbaa !34
  %2679 = getelementptr inbounds nuw i8, ptr %2676, i64 %2677
  store i8 %2675, ptr %2679, align 1, !tbaa !28
  %2680 = load i32, ptr %2477, align 4, !tbaa !26
  %2681 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2680), !nosanitize !32
  %2682 = extractvalue { i32, i1 } %2681, 1, !nosanitize !32
  br i1 %2682, label %2574, label %2683, !prof !35, !nosanitize !32

2683:                                             ; preds = %2667
  %2684 = extractvalue { i32, i1 } %2681, 0, !nosanitize !32
  %2685 = and i32 %2656, 65535
  %2686 = lshr i32 %2685, %2684
  %2687 = trunc nuw i32 %2686 to i16
  store i16 %2687, ptr %2535, align 8, !tbaa !25
  %2688 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2649, i32 -16)
  %2689 = extractvalue { i32, i1 } %2688, 1, !nosanitize !32
  br i1 %2689, label %2574, label %2690, !prof !35, !nosanitize !32

2690:                                             ; preds = %2683
  %2691 = extractvalue { i32, i1 } %2688, 0, !nosanitize !32
  %2692 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2680, i32 %2691), !nosanitize !32
  %2693 = extractvalue { i32, i1 } %2692, 1, !nosanitize !32
  br i1 %2693, label %2598, label %2697, !prof !35, !nosanitize !32

2694:                                             ; preds = %2661
  %2695 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2647, i32 %2649), !nosanitize !32
  %2696 = extractvalue { i32, i1 } %2695, 1, !nosanitize !32
  br i1 %2696, label %2598, label %2697, !prof !35, !nosanitize !32

2697:                                             ; preds = %2694, %2690
  %2698 = phi i16 [ %2687, %2690 ], [ %2666, %2694 ]
  %2699 = phi { i32, i1 } [ %2692, %2690 ], [ %2695, %2694 ]
  %2700 = extractvalue { i32, i1 } %2699, 0
  store i32 %2700, ptr %2477, align 4, !tbaa !26
  br label %2701

2701:                                             ; preds = %2697, %2644
  %2702 = phi i16 [ %2698, %2697 ], [ %2645, %2644 ]
  %2703 = phi i32 [ %2700, %2697 ], [ %2647, %2644 ]
  %2704 = add nsw i32 %2554, -1
  %2705 = icmp samesign ult i32 %2554, 257
  %2706 = zext nneg i32 %2704 to i64
  %2707 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2706
  %2708 = lshr i32 %2704, 7
  %2709 = zext nneg i32 %2708 to i64
  %2710 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2709
  %2711 = getelementptr inbounds nuw i8, ptr %2710, i64 256
  %2712 = select i1 %2705, ptr %2707, ptr %2711
  %2713 = load i8, ptr %2712, align 1, !tbaa !28
  %2714 = zext i8 %2713 to i64
  %2715 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %2714
  %2716 = icmp sgt i32 %2703, 11
  %2717 = load i16, ptr %2715, align 4, !tbaa !28
  %2718 = zext i16 %2717 to i32
  %2719 = shl i32 %2718, %2703
  %2720 = trunc i32 %2719 to i16
  %2721 = or i16 %2702, %2720
  store i16 %2721, ptr %2535, align 8, !tbaa !25
  br i1 %2716, label %2722, label %2744

2722:                                             ; preds = %2701
  %2723 = trunc i16 %2721 to i8
  %2724 = load ptr, ptr %2536, align 8, !tbaa !33
  %2725 = load i64, ptr %2537, align 8, !tbaa !34
  %2726 = add i64 %2725, 1
  store i64 %2726, ptr %2537, align 8, !tbaa !34
  %2727 = getelementptr inbounds nuw i8, ptr %2724, i64 %2725
  store i8 %2723, ptr %2727, align 1, !tbaa !28
  %2728 = load i16, ptr %2535, align 8, !tbaa !25
  %2729 = lshr i16 %2728, 8
  %2730 = trunc nuw i16 %2729 to i8
  %2731 = load ptr, ptr %2536, align 8, !tbaa !33
  %2732 = load i64, ptr %2537, align 8, !tbaa !34
  %2733 = add i64 %2732, 1
  store i64 %2733, ptr %2537, align 8, !tbaa !34
  %2734 = getelementptr inbounds nuw i8, ptr %2731, i64 %2732
  store i8 %2730, ptr %2734, align 1, !tbaa !28
  %2735 = load i32, ptr %2477, align 4, !tbaa !26
  %2736 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2735), !nosanitize !32
  %2737 = extractvalue { i32, i1 } %2736, 1, !nosanitize !32
  br i1 %2737, label %2574, label %2738, !prof !35, !nosanitize !32

2738:                                             ; preds = %2722
  %2739 = extractvalue { i32, i1 } %2736, 0, !nosanitize !32
  %2740 = lshr i32 %2718, %2739
  %2741 = trunc nuw i32 %2740 to i16
  store i16 %2741, ptr %2535, align 8, !tbaa !25
  %2742 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2735, i32 -11), !nosanitize !32
  %2743 = extractvalue { i32, i1 } %2742, 1, !nosanitize !32
  br i1 %2743, label %2598, label %2747, !prof !35, !nosanitize !32

2744:                                             ; preds = %2701
  %2745 = add nsw i32 %2703, 5
  %2746 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2745, 0
  br label %2747

2747:                                             ; preds = %2744, %2738
  %2748 = phi i16 [ %2741, %2738 ], [ %2721, %2744 ]
  %2749 = phi { i32, i1 } [ %2742, %2738 ], [ %2746, %2744 ]
  %2750 = extractvalue { i32, i1 } %2749, 0
  store i32 %2750, ptr %2477, align 4, !tbaa !26
  %2751 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %2714
  %2752 = load i32, ptr %2751, align 4, !tbaa !4
  %2753 = icmp ult i8 %2713, 4
  br i1 %2753, label %2800, label %2754

2754:                                             ; preds = %2747
  %2755 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %2714
  %2756 = load i32, ptr %2755, align 4, !tbaa !4
  %2757 = sub i32 %2704, %2756
  %2758 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2752), !nosanitize !32
  %2759 = extractvalue { i32, i1 } %2758, 1, !nosanitize !32
  br i1 %2759, label %2574, label %2760, !prof !35, !nosanitize !32

2760:                                             ; preds = %2754
  %2761 = extractvalue { i32, i1 } %2758, 0, !nosanitize !32
  %2762 = icmp sgt i32 %2750, %2761
  %2763 = shl i32 %2757, %2750
  %2764 = trunc i32 %2763 to i16
  %2765 = or i16 %2748, %2764
  store i16 %2765, ptr %2535, align 8, !tbaa !25
  br i1 %2762, label %2766, label %2793

2766:                                             ; preds = %2760
  %2767 = trunc i16 %2765 to i8
  %2768 = load ptr, ptr %2536, align 8, !tbaa !33
  %2769 = load i64, ptr %2537, align 8, !tbaa !34
  %2770 = add i64 %2769, 1
  store i64 %2770, ptr %2537, align 8, !tbaa !34
  %2771 = getelementptr inbounds nuw i8, ptr %2768, i64 %2769
  store i8 %2767, ptr %2771, align 1, !tbaa !28
  %2772 = load i16, ptr %2535, align 8, !tbaa !25
  %2773 = lshr i16 %2772, 8
  %2774 = trunc nuw i16 %2773 to i8
  %2775 = load ptr, ptr %2536, align 8, !tbaa !33
  %2776 = load i64, ptr %2537, align 8, !tbaa !34
  %2777 = add i64 %2776, 1
  store i64 %2777, ptr %2537, align 8, !tbaa !34
  %2778 = getelementptr inbounds nuw i8, ptr %2775, i64 %2776
  store i8 %2774, ptr %2778, align 1, !tbaa !28
  %2779 = load i32, ptr %2477, align 4, !tbaa !26
  %2780 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2779), !nosanitize !32
  %2781 = extractvalue { i32, i1 } %2780, 1, !nosanitize !32
  br i1 %2781, label %2574, label %2782, !prof !35, !nosanitize !32

2782:                                             ; preds = %2766
  %2783 = extractvalue { i32, i1 } %2780, 0, !nosanitize !32
  %2784 = and i32 %2757, 65535
  %2785 = lshr i32 %2784, %2783
  %2786 = trunc nuw i32 %2785 to i16
  store i16 %2786, ptr %2535, align 8, !tbaa !25
  %2787 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2752, i32 -16)
  %2788 = extractvalue { i32, i1 } %2787, 1, !nosanitize !32
  br i1 %2788, label %2574, label %2789, !prof !35, !nosanitize !32

2789:                                             ; preds = %2782
  %2790 = extractvalue { i32, i1 } %2787, 0, !nosanitize !32
  %2791 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2779, i32 %2790), !nosanitize !32
  %2792 = extractvalue { i32, i1 } %2791, 1, !nosanitize !32
  br i1 %2792, label %2598, label %2796, !prof !35, !nosanitize !32

2793:                                             ; preds = %2760
  %2794 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2750, i32 %2752), !nosanitize !32
  %2795 = extractvalue { i32, i1 } %2794, 1, !nosanitize !32
  br i1 %2795, label %2598, label %2796, !prof !35, !nosanitize !32

2796:                                             ; preds = %2793, %2789, %2599, %2591
  %2797 = phi i16 [ %2573, %2599 ], [ %2594, %2591 ], [ %2786, %2789 ], [ %2765, %2793 ]
  %2798 = phi { i32, i1 } [ %2601, %2599 ], [ %2596, %2591 ], [ %2791, %2789 ], [ %2794, %2793 ]
  %2799 = extractvalue { i32, i1 } %2798, 0
  store i32 %2799, ptr %2477, align 4, !tbaa !26
  br label %2800

2800:                                             ; preds = %2796, %2747
  %2801 = phi i16 [ %2748, %2747 ], [ %2797, %2796 ]
  %2802 = phi i32 [ %2750, %2747 ], [ %2799, %2796 ]
  %2803 = load i32, ptr %2530, align 4, !tbaa !31
  %2804 = icmp ult i32 %2555, %2803
  br i1 %2804, label %2538, label %2805, !llvm.loop !81

2805:                                             ; preds = %2800, %2526
  %2806 = phi i16 [ %2527, %2526 ], [ %2801, %2800 ]
  %2807 = phi i32 [ %2529, %2526 ], [ %2802, %2800 ]
  %2808 = icmp sgt i32 %2807, 9
  %2809 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %2808, label %2810, label %2831

2810:                                             ; preds = %2805
  %2811 = trunc i16 %2806 to i8
  %2812 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2813 = load ptr, ptr %2812, align 8, !tbaa !33
  %2814 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2815 = load i64, ptr %2814, align 8, !tbaa !34
  %2816 = add i64 %2815, 1
  store i64 %2816, ptr %2814, align 8, !tbaa !34
  %2817 = getelementptr inbounds nuw i8, ptr %2813, i64 %2815
  store i8 %2811, ptr %2817, align 1, !tbaa !28
  %2818 = load i16, ptr %2809, align 8, !tbaa !25
  %2819 = lshr i16 %2818, 8
  %2820 = trunc nuw i16 %2819 to i8
  %2821 = load ptr, ptr %2812, align 8, !tbaa !33
  %2822 = load i64, ptr %2814, align 8, !tbaa !34
  %2823 = add i64 %2822, 1
  store i64 %2823, ptr %2814, align 8, !tbaa !34
  %2824 = getelementptr inbounds nuw i8, ptr %2821, i64 %2822
  store i8 %2820, ptr %2824, align 1, !tbaa !28
  %2825 = load i32, ptr %2477, align 4, !tbaa !26
  %2826 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2825), !nosanitize !32
  %2827 = extractvalue { i32, i1 } %2826, 1, !nosanitize !32
  br i1 %2827, label %2574, label %2828, !prof !35, !nosanitize !32

2828:                                             ; preds = %2810
  store i16 0, ptr %2809, align 8, !tbaa !25
  %2829 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2825, i32 -9), !nosanitize !32
  %2830 = extractvalue { i32, i1 } %2829, 1, !nosanitize !32
  br i1 %2830, label %2598, label %2834, !prof !35, !nosanitize !32

2831:                                             ; preds = %2805
  %2832 = add nsw i32 %2807, 7
  %2833 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2832, 0
  br label %2834

2834:                                             ; preds = %2831, %2828
  %2835 = phi { i32, i1 } [ %2829, %2828 ], [ %2833, %2831 ]
  %2836 = extractvalue { i32, i1 } %2835, 0
  store i32 %2836, ptr %2477, align 4, !tbaa !26
  br label %4171

2837:                                             ; preds = %2360
  %2838 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2839 = load i32, ptr %2838, align 4, !tbaa !26
  %2840 = icmp sgt i32 %2839, 13
  %2841 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !32
  %2842 = extractvalue { i32, i1 } %2841, 1, !nosanitize !32
  br i1 %2840, label %2843, label %2875

2843:                                             ; preds = %2837
  br i1 %2842, label %2484, label %2844, !prof !35, !nosanitize !32

2844:                                             ; preds = %2843
  %2845 = extractvalue { i32, i1 } %2841, 0, !nosanitize !32
  %2846 = shl i32 %2845, %2839
  %2847 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2848 = load i16, ptr %2847, align 8, !tbaa !25
  %2849 = trunc i32 %2846 to i16
  %2850 = or i16 %2848, %2849
  store i16 %2850, ptr %2847, align 8, !tbaa !25
  %2851 = trunc i16 %2850 to i8
  %2852 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2853 = load ptr, ptr %2852, align 8, !tbaa !33
  %2854 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2855 = load i64, ptr %2854, align 8, !tbaa !34
  %2856 = add i64 %2855, 1
  store i64 %2856, ptr %2854, align 8, !tbaa !34
  %2857 = getelementptr inbounds nuw i8, ptr %2853, i64 %2855
  store i8 %2851, ptr %2857, align 1, !tbaa !28
  %2858 = load i16, ptr %2847, align 8, !tbaa !25
  %2859 = lshr i16 %2858, 8
  %2860 = trunc nuw i16 %2859 to i8
  %2861 = load ptr, ptr %2852, align 8, !tbaa !33
  %2862 = load i64, ptr %2854, align 8, !tbaa !34
  %2863 = add i64 %2862, 1
  store i64 %2863, ptr %2854, align 8, !tbaa !34
  %2864 = getelementptr inbounds nuw i8, ptr %2861, i64 %2862
  store i8 %2860, ptr %2864, align 1, !tbaa !28
  %2865 = load i32, ptr %2838, align 4, !tbaa !26
  %2866 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2865), !nosanitize !32
  %2867 = extractvalue { i32, i1 } %2866, 1, !nosanitize !32
  br i1 %2867, label %2482, label %2868, !prof !35, !nosanitize !32

2868:                                             ; preds = %2844
  %2869 = extractvalue { i32, i1 } %2866, 0, !nosanitize !32
  %2870 = and i32 %2845, 65535
  %2871 = lshr i32 %2870, %2869
  %2872 = trunc nuw i32 %2871 to i16
  store i16 %2872, ptr %2847, align 8, !tbaa !25
  %2873 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2865, i32 -13), !nosanitize !32
  %2874 = extractvalue { i32, i1 } %2873, 1, !nosanitize !32
  br i1 %2874, label %2484, label %2885, !prof !35, !nosanitize !32

2875:                                             ; preds = %2837
  br i1 %2842, label %2484, label %2876, !prof !35, !nosanitize !32

2876:                                             ; preds = %2875
  %2877 = extractvalue { i32, i1 } %2841, 0, !nosanitize !32
  %2878 = shl i32 %2877, %2839
  %2879 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2880 = load i16, ptr %2879, align 8, !tbaa !25
  %2881 = trunc i32 %2878 to i16
  %2882 = or i16 %2880, %2881
  store i16 %2882, ptr %2879, align 8, !tbaa !25
  %2883 = add nsw i32 %2839, 3
  %2884 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2883, 0
  br label %2885

2885:                                             ; preds = %2876, %2868
  %2886 = phi i16 [ %2872, %2868 ], [ %2882, %2876 ]
  %2887 = phi { i32, i1 } [ %2873, %2868 ], [ %2884, %2876 ]
  %2888 = extractvalue { i32, i1 } %2887, 0
  store i32 %2888, ptr %2838, align 4, !tbaa !26
  %2889 = load i32, ptr %222, align 8, !tbaa !74
  %2890 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2889, i32 1), !nosanitize !32
  %2891 = extractvalue { i32, i1 } %2890, 0, !nosanitize !32
  %2892 = extractvalue { i32, i1 } %2890, 1, !nosanitize !32
  br i1 %2892, label %2484, label %2893, !prof !35, !nosanitize !32

2893:                                             ; preds = %2885
  %2894 = load i32, ptr %885, align 8, !tbaa !77
  %2895 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2894, i32 1), !nosanitize !32
  %2896 = extractvalue { i32, i1 } %2895, 0, !nosanitize !32
  %2897 = extractvalue { i32, i1 } %2895, 1, !nosanitize !32
  br i1 %2897, label %2484, label %2898, !prof !35, !nosanitize !32

2898:                                             ; preds = %2893
  %2899 = add nuw nsw i32 %2334, 1
  %2900 = icmp sgt i32 %2888, 11
  %2901 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2891, i32 -257)
  %2902 = extractvalue { i32, i1 } %2901, 1, !nosanitize !32
  br i1 %2900, label %2904, label %2936

2903:                                             ; preds = %3467, %3086, %3055, %2999, %2983, %2953, %2952, %2936, %2905, %2904
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

2904:                                             ; preds = %2898
  br i1 %2902, label %2903, label %2905, !prof !35, !nosanitize !32

2905:                                             ; preds = %2904
  %2906 = extractvalue { i32, i1 } %2901, 0, !nosanitize !32
  %2907 = shl i32 %2906, %2888
  %2908 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2909 = trunc i32 %2907 to i16
  %2910 = or i16 %2886, %2909
  store i16 %2910, ptr %2908, align 8, !tbaa !25
  %2911 = trunc i16 %2910 to i8
  %2912 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2913 = load ptr, ptr %2912, align 8, !tbaa !33
  %2914 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2915 = load i64, ptr %2914, align 8, !tbaa !34
  %2916 = add i64 %2915, 1
  store i64 %2916, ptr %2914, align 8, !tbaa !34
  %2917 = getelementptr inbounds nuw i8, ptr %2913, i64 %2915
  store i8 %2911, ptr %2917, align 1, !tbaa !28
  %2918 = load i16, ptr %2908, align 8, !tbaa !25
  %2919 = lshr i16 %2918, 8
  %2920 = trunc nuw i16 %2919 to i8
  %2921 = load ptr, ptr %2912, align 8, !tbaa !33
  %2922 = load i64, ptr %2914, align 8, !tbaa !34
  %2923 = add i64 %2922, 1
  store i64 %2923, ptr %2914, align 8, !tbaa !34
  %2924 = getelementptr inbounds nuw i8, ptr %2921, i64 %2922
  store i8 %2920, ptr %2924, align 1, !tbaa !28
  %2925 = load i32, ptr %2838, align 4, !tbaa !26
  %2926 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2925), !nosanitize !32
  %2927 = extractvalue { i32, i1 } %2926, 1, !nosanitize !32
  br i1 %2927, label %2903, label %2928, !prof !35, !nosanitize !32

2928:                                             ; preds = %2905
  %2929 = extractvalue { i32, i1 } %2926, 0, !nosanitize !32
  %2930 = and i32 %2906, 65535
  %2931 = lshr i32 %2930, %2929
  %2932 = trunc nuw i32 %2931 to i16
  store i16 %2932, ptr %2908, align 8, !tbaa !25
  %2933 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2925, i32 -11), !nosanitize !32
  %2934 = extractvalue { i32, i1 } %2933, 1, !nosanitize !32
  br i1 %2934, label %2935, label %2945, !prof !35, !nosanitize !32

2935:                                             ; preds = %3071, %3020, %2976, %2928
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

2936:                                             ; preds = %2898
  br i1 %2902, label %2903, label %2937, !prof !35, !nosanitize !32

2937:                                             ; preds = %2936
  %2938 = extractvalue { i32, i1 } %2901, 0, !nosanitize !32
  %2939 = shl i32 %2938, %2888
  %2940 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2941 = trunc i32 %2939 to i16
  %2942 = or i16 %2886, %2941
  store i16 %2942, ptr %2940, align 8, !tbaa !25
  %2943 = add nsw i32 %2888, 5
  %2944 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2943, 0
  br label %2945

2945:                                             ; preds = %2937, %2928
  %2946 = phi i16 [ %2932, %2928 ], [ %2942, %2937 ]
  %2947 = phi { i32, i1 } [ %2933, %2928 ], [ %2944, %2937 ]
  %2948 = extractvalue { i32, i1 } %2947, 0
  store i32 %2948, ptr %2838, align 4, !tbaa !26
  %2949 = icmp sgt i32 %2948, 11
  %2950 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2896, i32 -1)
  %2951 = extractvalue { i32, i1 } %2950, 1, !nosanitize !32
  br i1 %2949, label %2952, label %2983

2952:                                             ; preds = %2945
  br i1 %2951, label %2903, label %2953, !prof !35, !nosanitize !32

2953:                                             ; preds = %2952
  %2954 = extractvalue { i32, i1 } %2950, 0, !nosanitize !32
  %2955 = shl i32 %2954, %2948
  %2956 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2957 = trunc i32 %2955 to i16
  %2958 = or i16 %2946, %2957
  store i16 %2958, ptr %2956, align 8, !tbaa !25
  %2959 = trunc i16 %2958 to i8
  %2960 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2961 = load ptr, ptr %2960, align 8, !tbaa !33
  %2962 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2963 = load i64, ptr %2962, align 8, !tbaa !34
  %2964 = add i64 %2963, 1
  store i64 %2964, ptr %2962, align 8, !tbaa !34
  %2965 = getelementptr inbounds nuw i8, ptr %2961, i64 %2963
  store i8 %2959, ptr %2965, align 1, !tbaa !28
  %2966 = load i16, ptr %2956, align 8, !tbaa !25
  %2967 = lshr i16 %2966, 8
  %2968 = trunc nuw i16 %2967 to i8
  %2969 = load ptr, ptr %2960, align 8, !tbaa !33
  %2970 = load i64, ptr %2962, align 8, !tbaa !34
  %2971 = add i64 %2970, 1
  store i64 %2971, ptr %2962, align 8, !tbaa !34
  %2972 = getelementptr inbounds nuw i8, ptr %2969, i64 %2970
  store i8 %2968, ptr %2972, align 1, !tbaa !28
  %2973 = load i32, ptr %2838, align 4, !tbaa !26
  %2974 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2973), !nosanitize !32
  %2975 = extractvalue { i32, i1 } %2974, 1, !nosanitize !32
  br i1 %2975, label %2903, label %2976, !prof !35, !nosanitize !32

2976:                                             ; preds = %2953
  %2977 = extractvalue { i32, i1 } %2974, 0, !nosanitize !32
  %2978 = and i32 %2954, 65535
  %2979 = lshr i32 %2978, %2977
  %2980 = trunc nuw i32 %2979 to i16
  store i16 %2980, ptr %2956, align 8, !tbaa !25
  %2981 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2973, i32 -11), !nosanitize !32
  %2982 = extractvalue { i32, i1 } %2981, 1, !nosanitize !32
  br i1 %2982, label %2935, label %2992, !prof !35, !nosanitize !32

2983:                                             ; preds = %2945
  br i1 %2951, label %2903, label %2984, !prof !35, !nosanitize !32

2984:                                             ; preds = %2983
  %2985 = extractvalue { i32, i1 } %2950, 0, !nosanitize !32
  %2986 = shl i32 %2985, %2948
  %2987 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2988 = trunc i32 %2986 to i16
  %2989 = or i16 %2946, %2988
  store i16 %2989, ptr %2987, align 8, !tbaa !25
  %2990 = add nsw i32 %2948, 5
  %2991 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2990, 0
  br label %2992

2992:                                             ; preds = %2984, %2976
  %2993 = phi i16 [ %2980, %2976 ], [ %2989, %2984 ]
  %2994 = phi { i32, i1 } [ %2981, %2976 ], [ %2991, %2984 ]
  %2995 = extractvalue { i32, i1 } %2994, 0
  store i32 %2995, ptr %2838, align 4, !tbaa !26
  %2996 = icmp sgt i32 %2995, 12
  %2997 = add nsw i32 %2334, -3
  %2998 = shl i32 %2997, %2995
  br i1 %2996, label %2999, label %3027

2999:                                             ; preds = %2992
  %3000 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3001 = trunc i32 %2998 to i16
  %3002 = or i16 %2993, %3001
  store i16 %3002, ptr %3000, align 8, !tbaa !25
  %3003 = trunc i16 %3002 to i8
  %3004 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3005 = load ptr, ptr %3004, align 8, !tbaa !33
  %3006 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3007 = load i64, ptr %3006, align 8, !tbaa !34
  %3008 = add i64 %3007, 1
  store i64 %3008, ptr %3006, align 8, !tbaa !34
  %3009 = getelementptr inbounds nuw i8, ptr %3005, i64 %3007
  store i8 %3003, ptr %3009, align 1, !tbaa !28
  %3010 = load i16, ptr %3000, align 8, !tbaa !25
  %3011 = lshr i16 %3010, 8
  %3012 = trunc nuw i16 %3011 to i8
  %3013 = load ptr, ptr %3004, align 8, !tbaa !33
  %3014 = load i64, ptr %3006, align 8, !tbaa !34
  %3015 = add i64 %3014, 1
  store i64 %3015, ptr %3006, align 8, !tbaa !34
  %3016 = getelementptr inbounds nuw i8, ptr %3013, i64 %3014
  store i8 %3012, ptr %3016, align 1, !tbaa !28
  %3017 = load i32, ptr %2838, align 4, !tbaa !26
  %3018 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3017), !nosanitize !32
  %3019 = extractvalue { i32, i1 } %3018, 1, !nosanitize !32
  br i1 %3019, label %2903, label %3020, !prof !35, !nosanitize !32

3020:                                             ; preds = %2999
  %3021 = extractvalue { i32, i1 } %3018, 0, !nosanitize !32
  %3022 = and i32 %2997, 65535
  %3023 = lshr i32 %3022, %3021
  %3024 = trunc nuw i32 %3023 to i16
  store i16 %3024, ptr %3000, align 8, !tbaa !25
  %3025 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3017, i32 -12), !nosanitize !32
  %3026 = extractvalue { i32, i1 } %3025, 1, !nosanitize !32
  br i1 %3026, label %2935, label %3032, !prof !35, !nosanitize !32

3027:                                             ; preds = %2992
  %3028 = trunc i32 %2998 to i16
  %3029 = or i16 %2993, %3028
  %3030 = add nsw i32 %2995, 4
  %3031 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3030, 0
  br label %3032

3032:                                             ; preds = %3027, %3020
  %3033 = phi i16 [ %3024, %3020 ], [ %3029, %3027 ]
  %3034 = phi { i32, i1 } [ %3025, %3020 ], [ %3031, %3027 ]
  %3035 = extractvalue { i32, i1 } %3034, 0
  store i32 %3035, ptr %2838, align 4, !tbaa !26
  %3036 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3037 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3038 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3039 = zext nneg i32 %2899 to i64
  br label %3040

3040:                                             ; preds = %3080, %3032
  %3041 = phi i16 [ %3033, %3032 ], [ %3081, %3080 ]
  %3042 = phi i32 [ %3035, %3032 ], [ %3083, %3080 ]
  %3043 = phi i64 [ 0, %3032 ], [ %3084, %3080 ]
  %3044 = icmp sgt i32 %3042, 13
  %3045 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %3043
  %3046 = load i8, ptr %3045, align 1, !tbaa !28
  %3047 = zext i8 %3046 to i64
  %3048 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3047
  %3049 = getelementptr inbounds nuw i8, ptr %3048, i64 2750
  %3050 = load i16, ptr %3049, align 2, !tbaa !28
  %3051 = zext i16 %3050 to i32
  %3052 = shl i32 %3051, %3042
  %3053 = trunc i32 %3052 to i16
  %3054 = or i16 %3041, %3053
  store i16 %3054, ptr %3036, align 8, !tbaa !25
  br i1 %3044, label %3055, label %3077

3055:                                             ; preds = %3040
  %3056 = trunc i16 %3054 to i8
  %3057 = load ptr, ptr %3037, align 8, !tbaa !33
  %3058 = load i64, ptr %3038, align 8, !tbaa !34
  %3059 = add i64 %3058, 1
  store i64 %3059, ptr %3038, align 8, !tbaa !34
  %3060 = getelementptr inbounds nuw i8, ptr %3057, i64 %3058
  store i8 %3056, ptr %3060, align 1, !tbaa !28
  %3061 = load i16, ptr %3036, align 8, !tbaa !25
  %3062 = lshr i16 %3061, 8
  %3063 = trunc nuw i16 %3062 to i8
  %3064 = load ptr, ptr %3037, align 8, !tbaa !33
  %3065 = load i64, ptr %3038, align 8, !tbaa !34
  %3066 = add i64 %3065, 1
  store i64 %3066, ptr %3038, align 8, !tbaa !34
  %3067 = getelementptr inbounds nuw i8, ptr %3064, i64 %3065
  store i8 %3063, ptr %3067, align 1, !tbaa !28
  %3068 = load i32, ptr %2838, align 4, !tbaa !26
  %3069 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3068), !nosanitize !32
  %3070 = extractvalue { i32, i1 } %3069, 1, !nosanitize !32
  br i1 %3070, label %2903, label %3071, !prof !35, !nosanitize !32

3071:                                             ; preds = %3055
  %3072 = extractvalue { i32, i1 } %3069, 0, !nosanitize !32
  %3073 = lshr i32 %3051, %3072
  %3074 = trunc nuw i32 %3073 to i16
  store i16 %3074, ptr %3036, align 8, !tbaa !25
  %3075 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3068, i32 -13), !nosanitize !32
  %3076 = extractvalue { i32, i1 } %3075, 1, !nosanitize !32
  br i1 %3076, label %2935, label %3080, !prof !35, !nosanitize !32

3077:                                             ; preds = %3040
  %3078 = add nsw i32 %3042, 3
  %3079 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3078, 0
  br label %3080

3080:                                             ; preds = %3077, %3071
  %3081 = phi i16 [ %3074, %3071 ], [ %3054, %3077 ]
  %3082 = phi { i32, i1 } [ %3075, %3071 ], [ %3079, %3077 ]
  %3083 = extractvalue { i32, i1 } %3082, 0
  store i32 %3083, ptr %2838, align 4, !tbaa !26
  %3084 = add nuw nsw i64 %3043, 1
  %3085 = icmp eq i64 %3084, %3039
  br i1 %3085, label %3086, label %3040, !llvm.loop !82

3086:                                             ; preds = %3080
  %3087 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2891, i32 -1)
  %3088 = extractvalue { i32, i1 } %3087, 1, !nosanitize !32
  br i1 %3088, label %2903, label %3089, !prof !35, !nosanitize !32

3089:                                             ; preds = %3086
  %3090 = extractvalue { i32, i1 } %3087, 0, !nosanitize !32
  %3091 = icmp slt i32 %3090, 0
  br i1 %3091, label %3467, label %3092

3092:                                             ; preds = %3089
  %3093 = load i16, ptr %1466, align 2, !tbaa !28
  %3094 = icmp eq i16 %3093, 0
  %3095 = select i1 %3094, i32 138, i32 7
  %3096 = select i1 %3094, i32 3, i32 4
  %3097 = zext i16 %3093 to i32
  %3098 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3099 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3100 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3101 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3102 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3103 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3104 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3110

3105:                                             ; preds = %3459
  %3106 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3111, i32 1), !nosanitize !32
  %3107 = extractvalue { i32, i1 } %3106, 0, !nosanitize !32
  %3108 = extractvalue { i32, i1 } %3106, 1, !nosanitize !32
  br i1 %3108, label %3109, label %3110, !prof !75, !llvm.loop !83, !nosanitize !32

3109:                                             ; preds = %3438, %3403, %3367, %3332, %3294, %3259, %3216, %3164, %3105
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

3110:                                             ; preds = %3105, %3092
  %3111 = phi i32 [ 1, %3092 ], [ %3107, %3105 ]
  %3112 = phi i32 [ %3096, %3092 ], [ %3462, %3105 ]
  %3113 = phi i32 [ %3095, %3092 ], [ %3463, %3105 ]
  %3114 = phi i32 [ 0, %3092 ], [ %3464, %3105 ]
  %3115 = phi i32 [ %3097, %3092 ], [ %3123, %3105 ]
  %3116 = phi i32 [ -1, %3092 ], [ %3465, %3105 ]
  %3117 = phi i32 [ %3083, %3092 ], [ %3461, %3105 ]
  %3118 = phi i16 [ %3081, %3092 ], [ %3460, %3105 ]
  %3119 = sext i32 %3111 to i64
  %3120 = getelementptr [4 x i8], ptr %0, i64 %3119
  %3121 = getelementptr i8, ptr %3120, i64 214
  %3122 = load i16, ptr %3121, align 2, !tbaa !28
  %3123 = zext i16 %3122 to i32
  %3124 = add nsw i32 %3114, 1
  %3125 = icmp slt i32 %3124, %3113
  %3126 = icmp eq i32 %3115, %3123
  %3127 = select i1 %3125, i1 %3126, i1 false
  br i1 %3127, label %3459, label %3128

3128:                                             ; preds = %3110
  %3129 = icmp slt i32 %3124, %3112
  br i1 %3129, label %3130, label %3183

3130:                                             ; preds = %3128
  %3131 = zext nneg i32 %3115 to i64
  %3132 = getelementptr inbounds nuw [4 x i8], ptr %3098, i64 %3131
  %3133 = getelementptr inbounds nuw i8, ptr %3132, i64 2
  br label %3134

3134:                                             ; preds = %3180, %3130
  %3135 = phi i16 [ %3175, %3180 ], [ %3118, %3130 ]
  %3136 = phi i32 [ %3177, %3180 ], [ %3117, %3130 ]
  %3137 = phi i32 [ %3181, %3180 ], [ %3124, %3130 ]
  %3138 = load i16, ptr %3133, align 2, !tbaa !28
  %3139 = zext i16 %3138 to i32
  %3140 = sub nsw i32 16, %3139
  %3141 = icmp sgt i32 %3136, %3140
  %3142 = load i16, ptr %3132, align 4, !tbaa !28
  %3143 = zext i16 %3142 to i32
  %3144 = shl i32 %3143, %3136
  %3145 = trunc i32 %3144 to i16
  %3146 = or i16 %3135, %3145
  store i16 %3146, ptr %3036, align 8, !tbaa !25
  br i1 %3141, label %3148, label %3171

3147:                                             ; preds = %3422, %3387, %3351, %3316, %3278, %3243, %3200, %3174, %3148
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

3148:                                             ; preds = %3134
  %3149 = trunc i16 %3146 to i8
  %3150 = load ptr, ptr %3037, align 8, !tbaa !33
  %3151 = load i64, ptr %3038, align 8, !tbaa !34
  %3152 = add i64 %3151, 1
  store i64 %3152, ptr %3038, align 8, !tbaa !34
  %3153 = getelementptr inbounds nuw i8, ptr %3150, i64 %3151
  store i8 %3149, ptr %3153, align 1, !tbaa !28
  %3154 = load i16, ptr %3036, align 8, !tbaa !25
  %3155 = lshr i16 %3154, 8
  %3156 = trunc nuw i16 %3155 to i8
  %3157 = load ptr, ptr %3037, align 8, !tbaa !33
  %3158 = load i64, ptr %3038, align 8, !tbaa !34
  %3159 = add i64 %3158, 1
  store i64 %3159, ptr %3038, align 8, !tbaa !34
  %3160 = getelementptr inbounds nuw i8, ptr %3157, i64 %3158
  store i8 %3156, ptr %3160, align 1, !tbaa !28
  %3161 = load i32, ptr %2838, align 4, !tbaa !26
  %3162 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3161), !nosanitize !32
  %3163 = extractvalue { i32, i1 } %3162, 1, !nosanitize !32
  br i1 %3163, label %3147, label %3164, !prof !35, !nosanitize !32

3164:                                             ; preds = %3148
  %3165 = extractvalue { i32, i1 } %3162, 0, !nosanitize !32
  %3166 = lshr i32 %3143, %3165
  %3167 = trunc nuw i32 %3166 to i16
  store i16 %3167, ptr %3036, align 8, !tbaa !25
  %3168 = add nsw i32 %3139, -16
  %3169 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3161, i32 %3168), !nosanitize !32
  %3170 = extractvalue { i32, i1 } %3169, 1, !nosanitize !32
  br i1 %3170, label %3109, label %3174, !prof !35, !nosanitize !32

3171:                                             ; preds = %3134
  %3172 = add nsw i32 %3136, %3139
  %3173 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3172, 0
  br label %3174

3174:                                             ; preds = %3171, %3164
  %3175 = phi i16 [ %3167, %3164 ], [ %3146, %3171 ]
  %3176 = phi { i32, i1 } [ %3169, %3164 ], [ %3173, %3171 ]
  %3177 = extractvalue { i32, i1 } %3176, 0
  store i32 %3177, ptr %2838, align 4, !tbaa !26
  %3178 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3137, i32 -1)
  %3179 = extractvalue { i32, i1 } %3178, 1, !nosanitize !32
  br i1 %3179, label %3147, label %3180, !prof !35, !nosanitize !32

3180:                                             ; preds = %3174
  %3181 = extractvalue { i32, i1 } %3178, 0, !nosanitize !32
  %3182 = icmp eq i32 %3181, 0
  br i1 %3182, label %3452, label %3134, !llvm.loop !84

3183:                                             ; preds = %3128
  %3184 = icmp eq i32 %3115, 0
  br i1 %3184, label %3304, label %3185

3185:                                             ; preds = %3183
  %3186 = icmp eq i32 %3115, %3116
  br i1 %3186, label %3230, label %3187

3187:                                             ; preds = %3185
  %3188 = zext nneg i32 %3115 to i64
  %3189 = getelementptr inbounds nuw [4 x i8], ptr %3098, i64 %3188
  %3190 = getelementptr inbounds nuw i8, ptr %3189, i64 2
  %3191 = load i16, ptr %3190, align 2, !tbaa !28
  %3192 = zext i16 %3191 to i32
  %3193 = sub nsw i32 16, %3192
  %3194 = icmp sgt i32 %3117, %3193
  %3195 = load i16, ptr %3189, align 4, !tbaa !28
  %3196 = zext i16 %3195 to i32
  %3197 = shl i32 %3196, %3117
  %3198 = trunc i32 %3197 to i16
  %3199 = or i16 %3118, %3198
  store i16 %3199, ptr %3036, align 8, !tbaa !25
  br i1 %3194, label %3200, label %3223

3200:                                             ; preds = %3187
  %3201 = trunc i16 %3199 to i8
  %3202 = load ptr, ptr %3037, align 8, !tbaa !33
  %3203 = load i64, ptr %3038, align 8, !tbaa !34
  %3204 = add i64 %3203, 1
  store i64 %3204, ptr %3038, align 8, !tbaa !34
  %3205 = getelementptr inbounds nuw i8, ptr %3202, i64 %3203
  store i8 %3201, ptr %3205, align 1, !tbaa !28
  %3206 = load i16, ptr %3036, align 8, !tbaa !25
  %3207 = lshr i16 %3206, 8
  %3208 = trunc nuw i16 %3207 to i8
  %3209 = load ptr, ptr %3037, align 8, !tbaa !33
  %3210 = load i64, ptr %3038, align 8, !tbaa !34
  %3211 = add i64 %3210, 1
  store i64 %3211, ptr %3038, align 8, !tbaa !34
  %3212 = getelementptr inbounds nuw i8, ptr %3209, i64 %3210
  store i8 %3208, ptr %3212, align 1, !tbaa !28
  %3213 = load i32, ptr %2838, align 4, !tbaa !26
  %3214 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3213), !nosanitize !32
  %3215 = extractvalue { i32, i1 } %3214, 1, !nosanitize !32
  br i1 %3215, label %3147, label %3216, !prof !35, !nosanitize !32

3216:                                             ; preds = %3200
  %3217 = extractvalue { i32, i1 } %3214, 0, !nosanitize !32
  %3218 = lshr i32 %3196, %3217
  %3219 = trunc nuw i32 %3218 to i16
  store i16 %3219, ptr %3036, align 8, !tbaa !25
  %3220 = add nsw i32 %3192, -16
  %3221 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3213, i32 %3220), !nosanitize !32
  %3222 = extractvalue { i32, i1 } %3221, 1, !nosanitize !32
  br i1 %3222, label %3109, label %3226, !prof !35, !nosanitize !32

3223:                                             ; preds = %3187
  %3224 = add nsw i32 %3117, %3192
  %3225 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3224, 0
  br label %3226

3226:                                             ; preds = %3223, %3216
  %3227 = phi i16 [ %3219, %3216 ], [ %3199, %3223 ]
  %3228 = phi { i32, i1 } [ %3221, %3216 ], [ %3225, %3223 ]
  %3229 = extractvalue { i32, i1 } %3228, 0
  store i32 %3229, ptr %2838, align 4, !tbaa !26
  br label %3230

3230:                                             ; preds = %3226, %3185
  %3231 = phi i16 [ %3227, %3226 ], [ %3118, %3185 ]
  %3232 = phi i32 [ %3229, %3226 ], [ %3117, %3185 ]
  %3233 = phi i32 [ %3114, %3226 ], [ %3124, %3185 ]
  %3234 = load i16, ptr %3100, align 2, !tbaa !28
  %3235 = zext i16 %3234 to i32
  %3236 = sub nsw i32 16, %3235
  %3237 = icmp sgt i32 %3232, %3236
  %3238 = load i16, ptr %3099, align 4, !tbaa !28
  %3239 = zext i16 %3238 to i32
  %3240 = shl i32 %3239, %3232
  %3241 = trunc i32 %3240 to i16
  %3242 = or i16 %3231, %3241
  br i1 %3237, label %3243, label %3266

3243:                                             ; preds = %3230
  store i16 %3242, ptr %3036, align 8, !tbaa !25
  %3244 = trunc i16 %3242 to i8
  %3245 = load ptr, ptr %3037, align 8, !tbaa !33
  %3246 = load i64, ptr %3038, align 8, !tbaa !34
  %3247 = add i64 %3246, 1
  store i64 %3247, ptr %3038, align 8, !tbaa !34
  %3248 = getelementptr inbounds nuw i8, ptr %3245, i64 %3246
  store i8 %3244, ptr %3248, align 1, !tbaa !28
  %3249 = load i16, ptr %3036, align 8, !tbaa !25
  %3250 = lshr i16 %3249, 8
  %3251 = trunc nuw i16 %3250 to i8
  %3252 = load ptr, ptr %3037, align 8, !tbaa !33
  %3253 = load i64, ptr %3038, align 8, !tbaa !34
  %3254 = add i64 %3253, 1
  store i64 %3254, ptr %3038, align 8, !tbaa !34
  %3255 = getelementptr inbounds nuw i8, ptr %3252, i64 %3253
  store i8 %3251, ptr %3255, align 1, !tbaa !28
  %3256 = load i32, ptr %2838, align 4, !tbaa !26
  %3257 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3256), !nosanitize !32
  %3258 = extractvalue { i32, i1 } %3257, 1, !nosanitize !32
  br i1 %3258, label %3147, label %3259, !prof !35, !nosanitize !32

3259:                                             ; preds = %3243
  %3260 = extractvalue { i32, i1 } %3257, 0, !nosanitize !32
  %3261 = lshr i32 %3239, %3260
  %3262 = trunc nuw i32 %3261 to i16
  %3263 = add nsw i32 %3235, -16
  %3264 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3256, i32 %3263), !nosanitize !32
  %3265 = extractvalue { i32, i1 } %3264, 1, !nosanitize !32
  br i1 %3265, label %3109, label %3269, !prof !35, !nosanitize !32

3266:                                             ; preds = %3230
  %3267 = add nsw i32 %3232, %3235
  %3268 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3267, 0
  br label %3269

3269:                                             ; preds = %3266, %3259
  %3270 = phi i16 [ %3262, %3259 ], [ %3242, %3266 ]
  %3271 = phi { i32, i1 } [ %3264, %3259 ], [ %3268, %3266 ]
  %3272 = extractvalue { i32, i1 } %3271, 0
  store i32 %3272, ptr %2838, align 4, !tbaa !26
  %3273 = icmp sgt i32 %3272, 14
  %3274 = add i32 %3233, 65533
  %3275 = shl i32 %3274, %3272
  %3276 = trunc i32 %3275 to i16
  %3277 = or i16 %3270, %3276
  store i16 %3277, ptr %3036, align 8, !tbaa !25
  br i1 %3273, label %3278, label %3301

3278:                                             ; preds = %3269
  %3279 = trunc i16 %3277 to i8
  %3280 = load ptr, ptr %3037, align 8, !tbaa !33
  %3281 = load i64, ptr %3038, align 8, !tbaa !34
  %3282 = add i64 %3281, 1
  store i64 %3282, ptr %3038, align 8, !tbaa !34
  %3283 = getelementptr inbounds nuw i8, ptr %3280, i64 %3281
  store i8 %3279, ptr %3283, align 1, !tbaa !28
  %3284 = load i16, ptr %3036, align 8, !tbaa !25
  %3285 = lshr i16 %3284, 8
  %3286 = trunc nuw i16 %3285 to i8
  %3287 = load ptr, ptr %3037, align 8, !tbaa !33
  %3288 = load i64, ptr %3038, align 8, !tbaa !34
  %3289 = add i64 %3288, 1
  store i64 %3289, ptr %3038, align 8, !tbaa !34
  %3290 = getelementptr inbounds nuw i8, ptr %3287, i64 %3288
  store i8 %3286, ptr %3290, align 1, !tbaa !28
  %3291 = load i32, ptr %2838, align 4, !tbaa !26
  %3292 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3291), !nosanitize !32
  %3293 = extractvalue { i32, i1 } %3292, 1, !nosanitize !32
  br i1 %3293, label %3147, label %3294, !prof !35, !nosanitize !32

3294:                                             ; preds = %3278
  %3295 = extractvalue { i32, i1 } %3292, 0, !nosanitize !32
  %3296 = and i32 %3274, 65535
  %3297 = lshr i32 %3296, %3295
  %3298 = trunc nuw i32 %3297 to i16
  store i16 %3298, ptr %3036, align 8, !tbaa !25
  %3299 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3291, i32 -14), !nosanitize !32
  %3300 = extractvalue { i32, i1 } %3299, 1, !nosanitize !32
  br i1 %3300, label %3109, label %3448, !prof !35, !nosanitize !32

3301:                                             ; preds = %3269
  %3302 = add nsw i32 %3272, 2
  %3303 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3302, 0
  br label %3448

3304:                                             ; preds = %3183
  %3305 = icmp slt i32 %3114, 10
  br i1 %3305, label %3306, label %3377

3306:                                             ; preds = %3304
  %3307 = load i16, ptr %3104, align 2, !tbaa !28
  %3308 = zext i16 %3307 to i32
  %3309 = sub nsw i32 16, %3308
  %3310 = icmp sgt i32 %3117, %3309
  %3311 = load i16, ptr %3103, align 4, !tbaa !28
  %3312 = zext i16 %3311 to i32
  %3313 = shl i32 %3312, %3117
  %3314 = trunc i32 %3313 to i16
  %3315 = or i16 %3118, %3314
  br i1 %3310, label %3316, label %3339

3316:                                             ; preds = %3306
  store i16 %3315, ptr %3036, align 8, !tbaa !25
  %3317 = trunc i16 %3315 to i8
  %3318 = load ptr, ptr %3037, align 8, !tbaa !33
  %3319 = load i64, ptr %3038, align 8, !tbaa !34
  %3320 = add i64 %3319, 1
  store i64 %3320, ptr %3038, align 8, !tbaa !34
  %3321 = getelementptr inbounds nuw i8, ptr %3318, i64 %3319
  store i8 %3317, ptr %3321, align 1, !tbaa !28
  %3322 = load i16, ptr %3036, align 8, !tbaa !25
  %3323 = lshr i16 %3322, 8
  %3324 = trunc nuw i16 %3323 to i8
  %3325 = load ptr, ptr %3037, align 8, !tbaa !33
  %3326 = load i64, ptr %3038, align 8, !tbaa !34
  %3327 = add i64 %3326, 1
  store i64 %3327, ptr %3038, align 8, !tbaa !34
  %3328 = getelementptr inbounds nuw i8, ptr %3325, i64 %3326
  store i8 %3324, ptr %3328, align 1, !tbaa !28
  %3329 = load i32, ptr %2838, align 4, !tbaa !26
  %3330 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3329), !nosanitize !32
  %3331 = extractvalue { i32, i1 } %3330, 1, !nosanitize !32
  br i1 %3331, label %3147, label %3332, !prof !35, !nosanitize !32

3332:                                             ; preds = %3316
  %3333 = extractvalue { i32, i1 } %3330, 0, !nosanitize !32
  %3334 = lshr i32 %3312, %3333
  %3335 = trunc nuw i32 %3334 to i16
  %3336 = add nsw i32 %3308, -16
  %3337 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3329, i32 %3336), !nosanitize !32
  %3338 = extractvalue { i32, i1 } %3337, 1, !nosanitize !32
  br i1 %3338, label %3109, label %3342, !prof !35, !nosanitize !32

3339:                                             ; preds = %3306
  %3340 = add nsw i32 %3117, %3308
  %3341 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3340, 0
  br label %3342

3342:                                             ; preds = %3339, %3332
  %3343 = phi i16 [ %3335, %3332 ], [ %3315, %3339 ]
  %3344 = phi { i32, i1 } [ %3337, %3332 ], [ %3341, %3339 ]
  %3345 = extractvalue { i32, i1 } %3344, 0
  store i32 %3345, ptr %2838, align 4, !tbaa !26
  %3346 = icmp sgt i32 %3345, 13
  %3347 = add nsw i32 %3114, 65534
  %3348 = shl i32 %3347, %3345
  %3349 = trunc i32 %3348 to i16
  %3350 = or i16 %3343, %3349
  store i16 %3350, ptr %3036, align 8, !tbaa !25
  br i1 %3346, label %3351, label %3374

3351:                                             ; preds = %3342
  %3352 = trunc i16 %3350 to i8
  %3353 = load ptr, ptr %3037, align 8, !tbaa !33
  %3354 = load i64, ptr %3038, align 8, !tbaa !34
  %3355 = add i64 %3354, 1
  store i64 %3355, ptr %3038, align 8, !tbaa !34
  %3356 = getelementptr inbounds nuw i8, ptr %3353, i64 %3354
  store i8 %3352, ptr %3356, align 1, !tbaa !28
  %3357 = load i16, ptr %3036, align 8, !tbaa !25
  %3358 = lshr i16 %3357, 8
  %3359 = trunc nuw i16 %3358 to i8
  %3360 = load ptr, ptr %3037, align 8, !tbaa !33
  %3361 = load i64, ptr %3038, align 8, !tbaa !34
  %3362 = add i64 %3361, 1
  store i64 %3362, ptr %3038, align 8, !tbaa !34
  %3363 = getelementptr inbounds nuw i8, ptr %3360, i64 %3361
  store i8 %3359, ptr %3363, align 1, !tbaa !28
  %3364 = load i32, ptr %2838, align 4, !tbaa !26
  %3365 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3364), !nosanitize !32
  %3366 = extractvalue { i32, i1 } %3365, 1, !nosanitize !32
  br i1 %3366, label %3147, label %3367, !prof !35, !nosanitize !32

3367:                                             ; preds = %3351
  %3368 = extractvalue { i32, i1 } %3365, 0, !nosanitize !32
  %3369 = and i32 %3347, 65535
  %3370 = lshr i32 %3369, %3368
  %3371 = trunc nuw i32 %3370 to i16
  store i16 %3371, ptr %3036, align 8, !tbaa !25
  %3372 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3364, i32 -13), !nosanitize !32
  %3373 = extractvalue { i32, i1 } %3372, 1, !nosanitize !32
  br i1 %3373, label %3109, label %3448, !prof !35, !nosanitize !32

3374:                                             ; preds = %3342
  %3375 = add nsw i32 %3345, 3
  %3376 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3375, 0
  br label %3448

3377:                                             ; preds = %3304
  %3378 = load i16, ptr %3102, align 2, !tbaa !28
  %3379 = zext i16 %3378 to i32
  %3380 = sub nsw i32 16, %3379
  %3381 = icmp sgt i32 %3117, %3380
  %3382 = load i16, ptr %3101, align 4, !tbaa !28
  %3383 = zext i16 %3382 to i32
  %3384 = shl i32 %3383, %3117
  %3385 = trunc i32 %3384 to i16
  %3386 = or i16 %3118, %3385
  br i1 %3381, label %3387, label %3410

3387:                                             ; preds = %3377
  store i16 %3386, ptr %3036, align 8, !tbaa !25
  %3388 = trunc i16 %3386 to i8
  %3389 = load ptr, ptr %3037, align 8, !tbaa !33
  %3390 = load i64, ptr %3038, align 8, !tbaa !34
  %3391 = add i64 %3390, 1
  store i64 %3391, ptr %3038, align 8, !tbaa !34
  %3392 = getelementptr inbounds nuw i8, ptr %3389, i64 %3390
  store i8 %3388, ptr %3392, align 1, !tbaa !28
  %3393 = load i16, ptr %3036, align 8, !tbaa !25
  %3394 = lshr i16 %3393, 8
  %3395 = trunc nuw i16 %3394 to i8
  %3396 = load ptr, ptr %3037, align 8, !tbaa !33
  %3397 = load i64, ptr %3038, align 8, !tbaa !34
  %3398 = add i64 %3397, 1
  store i64 %3398, ptr %3038, align 8, !tbaa !34
  %3399 = getelementptr inbounds nuw i8, ptr %3396, i64 %3397
  store i8 %3395, ptr %3399, align 1, !tbaa !28
  %3400 = load i32, ptr %2838, align 4, !tbaa !26
  %3401 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3400), !nosanitize !32
  %3402 = extractvalue { i32, i1 } %3401, 1, !nosanitize !32
  br i1 %3402, label %3147, label %3403, !prof !35, !nosanitize !32

3403:                                             ; preds = %3387
  %3404 = extractvalue { i32, i1 } %3401, 0, !nosanitize !32
  %3405 = lshr i32 %3383, %3404
  %3406 = trunc nuw i32 %3405 to i16
  %3407 = add nsw i32 %3379, -16
  %3408 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3400, i32 %3407), !nosanitize !32
  %3409 = extractvalue { i32, i1 } %3408, 1, !nosanitize !32
  br i1 %3409, label %3109, label %3413, !prof !35, !nosanitize !32

3410:                                             ; preds = %3377
  %3411 = add nsw i32 %3117, %3379
  %3412 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3411, 0
  br label %3413

3413:                                             ; preds = %3410, %3403
  %3414 = phi i16 [ %3406, %3403 ], [ %3386, %3410 ]
  %3415 = phi { i32, i1 } [ %3408, %3403 ], [ %3412, %3410 ]
  %3416 = extractvalue { i32, i1 } %3415, 0
  store i32 %3416, ptr %2838, align 4, !tbaa !26
  %3417 = icmp sgt i32 %3416, 9
  %3418 = add nuw i32 %3114, 65526
  %3419 = shl i32 %3418, %3416
  %3420 = trunc i32 %3419 to i16
  %3421 = or i16 %3414, %3420
  store i16 %3421, ptr %3036, align 8, !tbaa !25
  br i1 %3417, label %3422, label %3445

3422:                                             ; preds = %3413
  %3423 = trunc i16 %3421 to i8
  %3424 = load ptr, ptr %3037, align 8, !tbaa !33
  %3425 = load i64, ptr %3038, align 8, !tbaa !34
  %3426 = add i64 %3425, 1
  store i64 %3426, ptr %3038, align 8, !tbaa !34
  %3427 = getelementptr inbounds nuw i8, ptr %3424, i64 %3425
  store i8 %3423, ptr %3427, align 1, !tbaa !28
  %3428 = load i16, ptr %3036, align 8, !tbaa !25
  %3429 = lshr i16 %3428, 8
  %3430 = trunc nuw i16 %3429 to i8
  %3431 = load ptr, ptr %3037, align 8, !tbaa !33
  %3432 = load i64, ptr %3038, align 8, !tbaa !34
  %3433 = add i64 %3432, 1
  store i64 %3433, ptr %3038, align 8, !tbaa !34
  %3434 = getelementptr inbounds nuw i8, ptr %3431, i64 %3432
  store i8 %3430, ptr %3434, align 1, !tbaa !28
  %3435 = load i32, ptr %2838, align 4, !tbaa !26
  %3436 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3435), !nosanitize !32
  %3437 = extractvalue { i32, i1 } %3436, 1, !nosanitize !32
  br i1 %3437, label %3147, label %3438, !prof !35, !nosanitize !32

3438:                                             ; preds = %3422
  %3439 = extractvalue { i32, i1 } %3436, 0, !nosanitize !32
  %3440 = and i32 %3418, 65535
  %3441 = lshr i32 %3440, %3439
  %3442 = trunc nuw i32 %3441 to i16
  store i16 %3442, ptr %3036, align 8, !tbaa !25
  %3443 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3435, i32 -9), !nosanitize !32
  %3444 = extractvalue { i32, i1 } %3443, 1, !nosanitize !32
  br i1 %3444, label %3109, label %3448, !prof !35, !nosanitize !32

3445:                                             ; preds = %3413
  %3446 = add nsw i32 %3416, 7
  %3447 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3446, 0
  br label %3448

3448:                                             ; preds = %3445, %3438, %3374, %3367, %3301, %3294
  %3449 = phi i16 [ %3277, %3301 ], [ %3350, %3374 ], [ %3298, %3294 ], [ %3371, %3367 ], [ %3442, %3438 ], [ %3421, %3445 ]
  %3450 = phi { i32, i1 } [ %3303, %3301 ], [ %3376, %3374 ], [ %3299, %3294 ], [ %3372, %3367 ], [ %3443, %3438 ], [ %3447, %3445 ]
  %3451 = extractvalue { i32, i1 } %3450, 0
  store i32 %3451, ptr %2838, align 4, !tbaa !26
  br label %3452

3452:                                             ; preds = %3448, %3180
  %3453 = phi i16 [ %3449, %3448 ], [ %3175, %3180 ]
  %3454 = phi i32 [ %3451, %3448 ], [ %3177, %3180 ]
  %3455 = icmp eq i16 %3122, 0
  br i1 %3455, label %3459, label %3456

3456:                                             ; preds = %3452
  %3457 = select i1 %3126, i32 3, i32 4
  %3458 = select i1 %3126, i32 6, i32 7
  br label %3459

3459:                                             ; preds = %3456, %3452, %3110
  %3460 = phi i16 [ %3118, %3110 ], [ %3453, %3452 ], [ %3453, %3456 ]
  %3461 = phi i32 [ %3117, %3110 ], [ %3454, %3452 ], [ %3454, %3456 ]
  %3462 = phi i32 [ %3112, %3110 ], [ 3, %3452 ], [ %3457, %3456 ]
  %3463 = phi i32 [ %3113, %3110 ], [ 138, %3452 ], [ %3458, %3456 ]
  %3464 = phi i32 [ %3124, %3110 ], [ 0, %3452 ], [ 0, %3456 ]
  %3465 = phi i32 [ %3116, %3110 ], [ %3115, %3452 ], [ %3115, %3456 ]
  %3466 = icmp sgt i32 %3111, %3090
  br i1 %3466, label %3467, label %3105, !llvm.loop !83

3467:                                             ; preds = %3459, %3089
  %3468 = phi i16 [ %3081, %3089 ], [ %3460, %3459 ]
  %3469 = phi i32 [ %3083, %3089 ], [ %3461, %3459 ]
  br i1 %2951, label %2903, label %3470, !prof !35, !nosanitize !32

3470:                                             ; preds = %3467
  %3471 = extractvalue { i32, i1 } %2950, 0, !nosanitize !32
  %3472 = icmp slt i32 %3471, 0
  br i1 %3472, label %3848, label %3473

3473:                                             ; preds = %3470
  %3474 = load i16, ptr %1548, align 2, !tbaa !28
  %3475 = icmp eq i16 %3474, 0
  %3476 = select i1 %3475, i32 138, i32 7
  %3477 = select i1 %3475, i32 3, i32 4
  %3478 = zext i16 %3474 to i32
  %3479 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3480 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3481 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3482 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3483 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3484 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3485 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3491

3486:                                             ; preds = %3840
  %3487 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3492, i32 1), !nosanitize !32
  %3488 = extractvalue { i32, i1 } %3487, 0, !nosanitize !32
  %3489 = extractvalue { i32, i1 } %3487, 1, !nosanitize !32
  br i1 %3489, label %3490, label %3491, !prof !75, !llvm.loop !83, !nosanitize !32

3490:                                             ; preds = %3819, %3784, %3748, %3713, %3675, %3640, %3597, %3545, %3486
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

3491:                                             ; preds = %3486, %3473
  %3492 = phi i32 [ 1, %3473 ], [ %3488, %3486 ]
  %3493 = phi i32 [ %3477, %3473 ], [ %3843, %3486 ]
  %3494 = phi i32 [ %3476, %3473 ], [ %3844, %3486 ]
  %3495 = phi i32 [ 0, %3473 ], [ %3845, %3486 ]
  %3496 = phi i32 [ %3478, %3473 ], [ %3504, %3486 ]
  %3497 = phi i32 [ -1, %3473 ], [ %3846, %3486 ]
  %3498 = phi i32 [ %3469, %3473 ], [ %3842, %3486 ]
  %3499 = phi i16 [ %3468, %3473 ], [ %3841, %3486 ]
  %3500 = sext i32 %3492 to i64
  %3501 = getelementptr [4 x i8], ptr %0, i64 %3500
  %3502 = getelementptr i8, ptr %3501, i64 2506
  %3503 = load i16, ptr %3502, align 2, !tbaa !28
  %3504 = zext i16 %3503 to i32
  %3505 = add nsw i32 %3495, 1
  %3506 = icmp slt i32 %3505, %3494
  %3507 = icmp eq i32 %3496, %3504
  %3508 = select i1 %3506, i1 %3507, i1 false
  br i1 %3508, label %3840, label %3509

3509:                                             ; preds = %3491
  %3510 = icmp slt i32 %3505, %3493
  br i1 %3510, label %3511, label %3564

3511:                                             ; preds = %3509
  %3512 = zext nneg i32 %3496 to i64
  %3513 = getelementptr inbounds nuw [4 x i8], ptr %3479, i64 %3512
  %3514 = getelementptr inbounds nuw i8, ptr %3513, i64 2
  br label %3515

3515:                                             ; preds = %3561, %3511
  %3516 = phi i16 [ %3556, %3561 ], [ %3499, %3511 ]
  %3517 = phi i32 [ %3558, %3561 ], [ %3498, %3511 ]
  %3518 = phi i32 [ %3562, %3561 ], [ %3505, %3511 ]
  %3519 = load i16, ptr %3514, align 2, !tbaa !28
  %3520 = zext i16 %3519 to i32
  %3521 = sub nsw i32 16, %3520
  %3522 = icmp sgt i32 %3517, %3521
  %3523 = load i16, ptr %3513, align 4, !tbaa !28
  %3524 = zext i16 %3523 to i32
  %3525 = shl i32 %3524, %3517
  %3526 = trunc i32 %3525 to i16
  %3527 = or i16 %3516, %3526
  store i16 %3527, ptr %3036, align 8, !tbaa !25
  br i1 %3522, label %3529, label %3552

3528:                                             ; preds = %3803, %3768, %3732, %3697, %3659, %3624, %3581, %3555, %3529
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

3529:                                             ; preds = %3515
  %3530 = trunc i16 %3527 to i8
  %3531 = load ptr, ptr %3037, align 8, !tbaa !33
  %3532 = load i64, ptr %3038, align 8, !tbaa !34
  %3533 = add i64 %3532, 1
  store i64 %3533, ptr %3038, align 8, !tbaa !34
  %3534 = getelementptr inbounds nuw i8, ptr %3531, i64 %3532
  store i8 %3530, ptr %3534, align 1, !tbaa !28
  %3535 = load i16, ptr %3036, align 8, !tbaa !25
  %3536 = lshr i16 %3535, 8
  %3537 = trunc nuw i16 %3536 to i8
  %3538 = load ptr, ptr %3037, align 8, !tbaa !33
  %3539 = load i64, ptr %3038, align 8, !tbaa !34
  %3540 = add i64 %3539, 1
  store i64 %3540, ptr %3038, align 8, !tbaa !34
  %3541 = getelementptr inbounds nuw i8, ptr %3538, i64 %3539
  store i8 %3537, ptr %3541, align 1, !tbaa !28
  %3542 = load i32, ptr %2838, align 4, !tbaa !26
  %3543 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3542), !nosanitize !32
  %3544 = extractvalue { i32, i1 } %3543, 1, !nosanitize !32
  br i1 %3544, label %3528, label %3545, !prof !35, !nosanitize !32

3545:                                             ; preds = %3529
  %3546 = extractvalue { i32, i1 } %3543, 0, !nosanitize !32
  %3547 = lshr i32 %3524, %3546
  %3548 = trunc nuw i32 %3547 to i16
  store i16 %3548, ptr %3036, align 8, !tbaa !25
  %3549 = add nsw i32 %3520, -16
  %3550 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3542, i32 %3549), !nosanitize !32
  %3551 = extractvalue { i32, i1 } %3550, 1, !nosanitize !32
  br i1 %3551, label %3490, label %3555, !prof !35, !nosanitize !32

3552:                                             ; preds = %3515
  %3553 = add nsw i32 %3517, %3520
  %3554 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3553, 0
  br label %3555

3555:                                             ; preds = %3552, %3545
  %3556 = phi i16 [ %3548, %3545 ], [ %3527, %3552 ]
  %3557 = phi { i32, i1 } [ %3550, %3545 ], [ %3554, %3552 ]
  %3558 = extractvalue { i32, i1 } %3557, 0
  store i32 %3558, ptr %2838, align 4, !tbaa !26
  %3559 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3518, i32 -1)
  %3560 = extractvalue { i32, i1 } %3559, 1, !nosanitize !32
  br i1 %3560, label %3528, label %3561, !prof !35, !nosanitize !32

3561:                                             ; preds = %3555
  %3562 = extractvalue { i32, i1 } %3559, 0, !nosanitize !32
  %3563 = icmp eq i32 %3562, 0
  br i1 %3563, label %3833, label %3515, !llvm.loop !84

3564:                                             ; preds = %3509
  %3565 = icmp eq i32 %3496, 0
  br i1 %3565, label %3685, label %3566

3566:                                             ; preds = %3564
  %3567 = icmp eq i32 %3496, %3497
  br i1 %3567, label %3611, label %3568

3568:                                             ; preds = %3566
  %3569 = zext nneg i32 %3496 to i64
  %3570 = getelementptr inbounds nuw [4 x i8], ptr %3479, i64 %3569
  %3571 = getelementptr inbounds nuw i8, ptr %3570, i64 2
  %3572 = load i16, ptr %3571, align 2, !tbaa !28
  %3573 = zext i16 %3572 to i32
  %3574 = sub nsw i32 16, %3573
  %3575 = icmp sgt i32 %3498, %3574
  %3576 = load i16, ptr %3570, align 4, !tbaa !28
  %3577 = zext i16 %3576 to i32
  %3578 = shl i32 %3577, %3498
  %3579 = trunc i32 %3578 to i16
  %3580 = or i16 %3499, %3579
  store i16 %3580, ptr %3036, align 8, !tbaa !25
  br i1 %3575, label %3581, label %3604

3581:                                             ; preds = %3568
  %3582 = trunc i16 %3580 to i8
  %3583 = load ptr, ptr %3037, align 8, !tbaa !33
  %3584 = load i64, ptr %3038, align 8, !tbaa !34
  %3585 = add i64 %3584, 1
  store i64 %3585, ptr %3038, align 8, !tbaa !34
  %3586 = getelementptr inbounds nuw i8, ptr %3583, i64 %3584
  store i8 %3582, ptr %3586, align 1, !tbaa !28
  %3587 = load i16, ptr %3036, align 8, !tbaa !25
  %3588 = lshr i16 %3587, 8
  %3589 = trunc nuw i16 %3588 to i8
  %3590 = load ptr, ptr %3037, align 8, !tbaa !33
  %3591 = load i64, ptr %3038, align 8, !tbaa !34
  %3592 = add i64 %3591, 1
  store i64 %3592, ptr %3038, align 8, !tbaa !34
  %3593 = getelementptr inbounds nuw i8, ptr %3590, i64 %3591
  store i8 %3589, ptr %3593, align 1, !tbaa !28
  %3594 = load i32, ptr %2838, align 4, !tbaa !26
  %3595 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3594), !nosanitize !32
  %3596 = extractvalue { i32, i1 } %3595, 1, !nosanitize !32
  br i1 %3596, label %3528, label %3597, !prof !35, !nosanitize !32

3597:                                             ; preds = %3581
  %3598 = extractvalue { i32, i1 } %3595, 0, !nosanitize !32
  %3599 = lshr i32 %3577, %3598
  %3600 = trunc nuw i32 %3599 to i16
  store i16 %3600, ptr %3036, align 8, !tbaa !25
  %3601 = add nsw i32 %3573, -16
  %3602 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3594, i32 %3601), !nosanitize !32
  %3603 = extractvalue { i32, i1 } %3602, 1, !nosanitize !32
  br i1 %3603, label %3490, label %3607, !prof !35, !nosanitize !32

3604:                                             ; preds = %3568
  %3605 = add nsw i32 %3498, %3573
  %3606 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3605, 0
  br label %3607

3607:                                             ; preds = %3604, %3597
  %3608 = phi i16 [ %3600, %3597 ], [ %3580, %3604 ]
  %3609 = phi { i32, i1 } [ %3602, %3597 ], [ %3606, %3604 ]
  %3610 = extractvalue { i32, i1 } %3609, 0
  store i32 %3610, ptr %2838, align 4, !tbaa !26
  br label %3611

3611:                                             ; preds = %3607, %3566
  %3612 = phi i16 [ %3608, %3607 ], [ %3499, %3566 ]
  %3613 = phi i32 [ %3610, %3607 ], [ %3498, %3566 ]
  %3614 = phi i32 [ %3495, %3607 ], [ %3505, %3566 ]
  %3615 = load i16, ptr %3481, align 2, !tbaa !28
  %3616 = zext i16 %3615 to i32
  %3617 = sub nsw i32 16, %3616
  %3618 = icmp sgt i32 %3613, %3617
  %3619 = load i16, ptr %3480, align 4, !tbaa !28
  %3620 = zext i16 %3619 to i32
  %3621 = shl i32 %3620, %3613
  %3622 = trunc i32 %3621 to i16
  %3623 = or i16 %3612, %3622
  br i1 %3618, label %3624, label %3647

3624:                                             ; preds = %3611
  store i16 %3623, ptr %3036, align 8, !tbaa !25
  %3625 = trunc i16 %3623 to i8
  %3626 = load ptr, ptr %3037, align 8, !tbaa !33
  %3627 = load i64, ptr %3038, align 8, !tbaa !34
  %3628 = add i64 %3627, 1
  store i64 %3628, ptr %3038, align 8, !tbaa !34
  %3629 = getelementptr inbounds nuw i8, ptr %3626, i64 %3627
  store i8 %3625, ptr %3629, align 1, !tbaa !28
  %3630 = load i16, ptr %3036, align 8, !tbaa !25
  %3631 = lshr i16 %3630, 8
  %3632 = trunc nuw i16 %3631 to i8
  %3633 = load ptr, ptr %3037, align 8, !tbaa !33
  %3634 = load i64, ptr %3038, align 8, !tbaa !34
  %3635 = add i64 %3634, 1
  store i64 %3635, ptr %3038, align 8, !tbaa !34
  %3636 = getelementptr inbounds nuw i8, ptr %3633, i64 %3634
  store i8 %3632, ptr %3636, align 1, !tbaa !28
  %3637 = load i32, ptr %2838, align 4, !tbaa !26
  %3638 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3637), !nosanitize !32
  %3639 = extractvalue { i32, i1 } %3638, 1, !nosanitize !32
  br i1 %3639, label %3528, label %3640, !prof !35, !nosanitize !32

3640:                                             ; preds = %3624
  %3641 = extractvalue { i32, i1 } %3638, 0, !nosanitize !32
  %3642 = lshr i32 %3620, %3641
  %3643 = trunc nuw i32 %3642 to i16
  %3644 = add nsw i32 %3616, -16
  %3645 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3637, i32 %3644), !nosanitize !32
  %3646 = extractvalue { i32, i1 } %3645, 1, !nosanitize !32
  br i1 %3646, label %3490, label %3650, !prof !35, !nosanitize !32

3647:                                             ; preds = %3611
  %3648 = add nsw i32 %3613, %3616
  %3649 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3648, 0
  br label %3650

3650:                                             ; preds = %3647, %3640
  %3651 = phi i16 [ %3643, %3640 ], [ %3623, %3647 ]
  %3652 = phi { i32, i1 } [ %3645, %3640 ], [ %3649, %3647 ]
  %3653 = extractvalue { i32, i1 } %3652, 0
  store i32 %3653, ptr %2838, align 4, !tbaa !26
  %3654 = icmp sgt i32 %3653, 14
  %3655 = add i32 %3614, 65533
  %3656 = shl i32 %3655, %3653
  %3657 = trunc i32 %3656 to i16
  %3658 = or i16 %3651, %3657
  store i16 %3658, ptr %3036, align 8, !tbaa !25
  br i1 %3654, label %3659, label %3682

3659:                                             ; preds = %3650
  %3660 = trunc i16 %3658 to i8
  %3661 = load ptr, ptr %3037, align 8, !tbaa !33
  %3662 = load i64, ptr %3038, align 8, !tbaa !34
  %3663 = add i64 %3662, 1
  store i64 %3663, ptr %3038, align 8, !tbaa !34
  %3664 = getelementptr inbounds nuw i8, ptr %3661, i64 %3662
  store i8 %3660, ptr %3664, align 1, !tbaa !28
  %3665 = load i16, ptr %3036, align 8, !tbaa !25
  %3666 = lshr i16 %3665, 8
  %3667 = trunc nuw i16 %3666 to i8
  %3668 = load ptr, ptr %3037, align 8, !tbaa !33
  %3669 = load i64, ptr %3038, align 8, !tbaa !34
  %3670 = add i64 %3669, 1
  store i64 %3670, ptr %3038, align 8, !tbaa !34
  %3671 = getelementptr inbounds nuw i8, ptr %3668, i64 %3669
  store i8 %3667, ptr %3671, align 1, !tbaa !28
  %3672 = load i32, ptr %2838, align 4, !tbaa !26
  %3673 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3672), !nosanitize !32
  %3674 = extractvalue { i32, i1 } %3673, 1, !nosanitize !32
  br i1 %3674, label %3528, label %3675, !prof !35, !nosanitize !32

3675:                                             ; preds = %3659
  %3676 = extractvalue { i32, i1 } %3673, 0, !nosanitize !32
  %3677 = and i32 %3655, 65535
  %3678 = lshr i32 %3677, %3676
  %3679 = trunc nuw i32 %3678 to i16
  store i16 %3679, ptr %3036, align 8, !tbaa !25
  %3680 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3672, i32 -14), !nosanitize !32
  %3681 = extractvalue { i32, i1 } %3680, 1, !nosanitize !32
  br i1 %3681, label %3490, label %3829, !prof !35, !nosanitize !32

3682:                                             ; preds = %3650
  %3683 = add nsw i32 %3653, 2
  %3684 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3683, 0
  br label %3829

3685:                                             ; preds = %3564
  %3686 = icmp slt i32 %3495, 10
  br i1 %3686, label %3687, label %3758

3687:                                             ; preds = %3685
  %3688 = load i16, ptr %3485, align 2, !tbaa !28
  %3689 = zext i16 %3688 to i32
  %3690 = sub nsw i32 16, %3689
  %3691 = icmp sgt i32 %3498, %3690
  %3692 = load i16, ptr %3484, align 4, !tbaa !28
  %3693 = zext i16 %3692 to i32
  %3694 = shl i32 %3693, %3498
  %3695 = trunc i32 %3694 to i16
  %3696 = or i16 %3499, %3695
  br i1 %3691, label %3697, label %3720

3697:                                             ; preds = %3687
  store i16 %3696, ptr %3036, align 8, !tbaa !25
  %3698 = trunc i16 %3696 to i8
  %3699 = load ptr, ptr %3037, align 8, !tbaa !33
  %3700 = load i64, ptr %3038, align 8, !tbaa !34
  %3701 = add i64 %3700, 1
  store i64 %3701, ptr %3038, align 8, !tbaa !34
  %3702 = getelementptr inbounds nuw i8, ptr %3699, i64 %3700
  store i8 %3698, ptr %3702, align 1, !tbaa !28
  %3703 = load i16, ptr %3036, align 8, !tbaa !25
  %3704 = lshr i16 %3703, 8
  %3705 = trunc nuw i16 %3704 to i8
  %3706 = load ptr, ptr %3037, align 8, !tbaa !33
  %3707 = load i64, ptr %3038, align 8, !tbaa !34
  %3708 = add i64 %3707, 1
  store i64 %3708, ptr %3038, align 8, !tbaa !34
  %3709 = getelementptr inbounds nuw i8, ptr %3706, i64 %3707
  store i8 %3705, ptr %3709, align 1, !tbaa !28
  %3710 = load i32, ptr %2838, align 4, !tbaa !26
  %3711 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3710), !nosanitize !32
  %3712 = extractvalue { i32, i1 } %3711, 1, !nosanitize !32
  br i1 %3712, label %3528, label %3713, !prof !35, !nosanitize !32

3713:                                             ; preds = %3697
  %3714 = extractvalue { i32, i1 } %3711, 0, !nosanitize !32
  %3715 = lshr i32 %3693, %3714
  %3716 = trunc nuw i32 %3715 to i16
  %3717 = add nsw i32 %3689, -16
  %3718 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3710, i32 %3717), !nosanitize !32
  %3719 = extractvalue { i32, i1 } %3718, 1, !nosanitize !32
  br i1 %3719, label %3490, label %3723, !prof !35, !nosanitize !32

3720:                                             ; preds = %3687
  %3721 = add nsw i32 %3498, %3689
  %3722 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3721, 0
  br label %3723

3723:                                             ; preds = %3720, %3713
  %3724 = phi i16 [ %3716, %3713 ], [ %3696, %3720 ]
  %3725 = phi { i32, i1 } [ %3718, %3713 ], [ %3722, %3720 ]
  %3726 = extractvalue { i32, i1 } %3725, 0
  store i32 %3726, ptr %2838, align 4, !tbaa !26
  %3727 = icmp sgt i32 %3726, 13
  %3728 = add nsw i32 %3495, 65534
  %3729 = shl i32 %3728, %3726
  %3730 = trunc i32 %3729 to i16
  %3731 = or i16 %3724, %3730
  store i16 %3731, ptr %3036, align 8, !tbaa !25
  br i1 %3727, label %3732, label %3755

3732:                                             ; preds = %3723
  %3733 = trunc i16 %3731 to i8
  %3734 = load ptr, ptr %3037, align 8, !tbaa !33
  %3735 = load i64, ptr %3038, align 8, !tbaa !34
  %3736 = add i64 %3735, 1
  store i64 %3736, ptr %3038, align 8, !tbaa !34
  %3737 = getelementptr inbounds nuw i8, ptr %3734, i64 %3735
  store i8 %3733, ptr %3737, align 1, !tbaa !28
  %3738 = load i16, ptr %3036, align 8, !tbaa !25
  %3739 = lshr i16 %3738, 8
  %3740 = trunc nuw i16 %3739 to i8
  %3741 = load ptr, ptr %3037, align 8, !tbaa !33
  %3742 = load i64, ptr %3038, align 8, !tbaa !34
  %3743 = add i64 %3742, 1
  store i64 %3743, ptr %3038, align 8, !tbaa !34
  %3744 = getelementptr inbounds nuw i8, ptr %3741, i64 %3742
  store i8 %3740, ptr %3744, align 1, !tbaa !28
  %3745 = load i32, ptr %2838, align 4, !tbaa !26
  %3746 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3745), !nosanitize !32
  %3747 = extractvalue { i32, i1 } %3746, 1, !nosanitize !32
  br i1 %3747, label %3528, label %3748, !prof !35, !nosanitize !32

3748:                                             ; preds = %3732
  %3749 = extractvalue { i32, i1 } %3746, 0, !nosanitize !32
  %3750 = and i32 %3728, 65535
  %3751 = lshr i32 %3750, %3749
  %3752 = trunc nuw i32 %3751 to i16
  store i16 %3752, ptr %3036, align 8, !tbaa !25
  %3753 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3745, i32 -13), !nosanitize !32
  %3754 = extractvalue { i32, i1 } %3753, 1, !nosanitize !32
  br i1 %3754, label %3490, label %3829, !prof !35, !nosanitize !32

3755:                                             ; preds = %3723
  %3756 = add nsw i32 %3726, 3
  %3757 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3756, 0
  br label %3829

3758:                                             ; preds = %3685
  %3759 = load i16, ptr %3483, align 2, !tbaa !28
  %3760 = zext i16 %3759 to i32
  %3761 = sub nsw i32 16, %3760
  %3762 = icmp sgt i32 %3498, %3761
  %3763 = load i16, ptr %3482, align 4, !tbaa !28
  %3764 = zext i16 %3763 to i32
  %3765 = shl i32 %3764, %3498
  %3766 = trunc i32 %3765 to i16
  %3767 = or i16 %3499, %3766
  br i1 %3762, label %3768, label %3791

3768:                                             ; preds = %3758
  store i16 %3767, ptr %3036, align 8, !tbaa !25
  %3769 = trunc i16 %3767 to i8
  %3770 = load ptr, ptr %3037, align 8, !tbaa !33
  %3771 = load i64, ptr %3038, align 8, !tbaa !34
  %3772 = add i64 %3771, 1
  store i64 %3772, ptr %3038, align 8, !tbaa !34
  %3773 = getelementptr inbounds nuw i8, ptr %3770, i64 %3771
  store i8 %3769, ptr %3773, align 1, !tbaa !28
  %3774 = load i16, ptr %3036, align 8, !tbaa !25
  %3775 = lshr i16 %3774, 8
  %3776 = trunc nuw i16 %3775 to i8
  %3777 = load ptr, ptr %3037, align 8, !tbaa !33
  %3778 = load i64, ptr %3038, align 8, !tbaa !34
  %3779 = add i64 %3778, 1
  store i64 %3779, ptr %3038, align 8, !tbaa !34
  %3780 = getelementptr inbounds nuw i8, ptr %3777, i64 %3778
  store i8 %3776, ptr %3780, align 1, !tbaa !28
  %3781 = load i32, ptr %2838, align 4, !tbaa !26
  %3782 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3781), !nosanitize !32
  %3783 = extractvalue { i32, i1 } %3782, 1, !nosanitize !32
  br i1 %3783, label %3528, label %3784, !prof !35, !nosanitize !32

3784:                                             ; preds = %3768
  %3785 = extractvalue { i32, i1 } %3782, 0, !nosanitize !32
  %3786 = lshr i32 %3764, %3785
  %3787 = trunc nuw i32 %3786 to i16
  %3788 = add nsw i32 %3760, -16
  %3789 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3781, i32 %3788), !nosanitize !32
  %3790 = extractvalue { i32, i1 } %3789, 1, !nosanitize !32
  br i1 %3790, label %3490, label %3794, !prof !35, !nosanitize !32

3791:                                             ; preds = %3758
  %3792 = add nsw i32 %3498, %3760
  %3793 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3792, 0
  br label %3794

3794:                                             ; preds = %3791, %3784
  %3795 = phi i16 [ %3787, %3784 ], [ %3767, %3791 ]
  %3796 = phi { i32, i1 } [ %3789, %3784 ], [ %3793, %3791 ]
  %3797 = extractvalue { i32, i1 } %3796, 0
  store i32 %3797, ptr %2838, align 4, !tbaa !26
  %3798 = icmp sgt i32 %3797, 9
  %3799 = add nuw i32 %3495, 65526
  %3800 = shl i32 %3799, %3797
  %3801 = trunc i32 %3800 to i16
  %3802 = or i16 %3795, %3801
  store i16 %3802, ptr %3036, align 8, !tbaa !25
  br i1 %3798, label %3803, label %3826

3803:                                             ; preds = %3794
  %3804 = trunc i16 %3802 to i8
  %3805 = load ptr, ptr %3037, align 8, !tbaa !33
  %3806 = load i64, ptr %3038, align 8, !tbaa !34
  %3807 = add i64 %3806, 1
  store i64 %3807, ptr %3038, align 8, !tbaa !34
  %3808 = getelementptr inbounds nuw i8, ptr %3805, i64 %3806
  store i8 %3804, ptr %3808, align 1, !tbaa !28
  %3809 = load i16, ptr %3036, align 8, !tbaa !25
  %3810 = lshr i16 %3809, 8
  %3811 = trunc nuw i16 %3810 to i8
  %3812 = load ptr, ptr %3037, align 8, !tbaa !33
  %3813 = load i64, ptr %3038, align 8, !tbaa !34
  %3814 = add i64 %3813, 1
  store i64 %3814, ptr %3038, align 8, !tbaa !34
  %3815 = getelementptr inbounds nuw i8, ptr %3812, i64 %3813
  store i8 %3811, ptr %3815, align 1, !tbaa !28
  %3816 = load i32, ptr %2838, align 4, !tbaa !26
  %3817 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3816), !nosanitize !32
  %3818 = extractvalue { i32, i1 } %3817, 1, !nosanitize !32
  br i1 %3818, label %3528, label %3819, !prof !35, !nosanitize !32

3819:                                             ; preds = %3803
  %3820 = extractvalue { i32, i1 } %3817, 0, !nosanitize !32
  %3821 = and i32 %3799, 65535
  %3822 = lshr i32 %3821, %3820
  %3823 = trunc nuw i32 %3822 to i16
  store i16 %3823, ptr %3036, align 8, !tbaa !25
  %3824 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3816, i32 -9), !nosanitize !32
  %3825 = extractvalue { i32, i1 } %3824, 1, !nosanitize !32
  br i1 %3825, label %3490, label %3829, !prof !35, !nosanitize !32

3826:                                             ; preds = %3794
  %3827 = add nsw i32 %3797, 7
  %3828 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3827, 0
  br label %3829

3829:                                             ; preds = %3826, %3819, %3755, %3748, %3682, %3675
  %3830 = phi i16 [ %3658, %3682 ], [ %3731, %3755 ], [ %3679, %3675 ], [ %3752, %3748 ], [ %3823, %3819 ], [ %3802, %3826 ]
  %3831 = phi { i32, i1 } [ %3684, %3682 ], [ %3757, %3755 ], [ %3680, %3675 ], [ %3753, %3748 ], [ %3824, %3819 ], [ %3828, %3826 ]
  %3832 = extractvalue { i32, i1 } %3831, 0
  store i32 %3832, ptr %2838, align 4, !tbaa !26
  br label %3833

3833:                                             ; preds = %3829, %3561
  %3834 = phi i16 [ %3830, %3829 ], [ %3556, %3561 ]
  %3835 = phi i32 [ %3832, %3829 ], [ %3558, %3561 ]
  %3836 = icmp eq i16 %3503, 0
  br i1 %3836, label %3840, label %3837

3837:                                             ; preds = %3833
  %3838 = select i1 %3507, i32 3, i32 4
  %3839 = select i1 %3507, i32 6, i32 7
  br label %3840

3840:                                             ; preds = %3837, %3833, %3491
  %3841 = phi i16 [ %3499, %3491 ], [ %3834, %3833 ], [ %3834, %3837 ]
  %3842 = phi i32 [ %3498, %3491 ], [ %3835, %3833 ], [ %3835, %3837 ]
  %3843 = phi i32 [ %3493, %3491 ], [ 3, %3833 ], [ %3838, %3837 ]
  %3844 = phi i32 [ %3494, %3491 ], [ 138, %3833 ], [ %3839, %3837 ]
  %3845 = phi i32 [ %3505, %3491 ], [ 0, %3833 ], [ 0, %3837 ]
  %3846 = phi i32 [ %3497, %3491 ], [ %3496, %3833 ], [ %3496, %3837 ]
  %3847 = icmp sgt i32 %3492, %3471
  br i1 %3847, label %3848, label %3486, !llvm.loop !83

3848:                                             ; preds = %3840, %3470
  %3849 = phi i16 [ %3468, %3470 ], [ %3841, %3840 ]
  %3850 = phi i32 [ %3469, %3470 ], [ %3842, %3840 ]
  %3851 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %3852 = load i32, ptr %3851, align 4, !tbaa !31
  %3853 = icmp eq i32 %3852, 0
  br i1 %3853, label %4128, label %3854

3854:                                             ; preds = %3848
  %3855 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %3856

3856:                                             ; preds = %4123, %3854
  %3857 = phi i16 [ %4124, %4123 ], [ %3849, %3854 ]
  %3858 = phi i32 [ %4125, %4123 ], [ %3850, %3854 ]
  %3859 = phi i32 [ %3873, %4123 ], [ 0, %3854 ]
  %3860 = load ptr, ptr %3855, align 8, !tbaa !80
  %3861 = add nuw i32 %3859, 1
  %3862 = zext i32 %3859 to i64
  %3863 = getelementptr inbounds nuw i8, ptr %3860, i64 %3862
  %3864 = load i8, ptr %3863, align 1, !tbaa !28
  %3865 = zext i8 %3864 to i32
  %3866 = add i32 %3859, 2
  %3867 = zext i32 %3861 to i64
  %3868 = getelementptr inbounds nuw i8, ptr %3860, i64 %3867
  %3869 = load i8, ptr %3868, align 1, !tbaa !28
  %3870 = zext i8 %3869 to i32
  %3871 = shl nuw nsw i32 %3870, 8
  %3872 = or disjoint i32 %3871, %3865
  %3873 = add i32 %3859, 3
  %3874 = zext i32 %3866 to i64
  %3875 = getelementptr inbounds nuw i8, ptr %3860, i64 %3874
  %3876 = load i8, ptr %3875, align 1, !tbaa !28
  %3877 = zext i8 %3876 to i32
  %3878 = icmp eq i32 %3872, 0
  %3879 = zext i8 %3876 to i64
  br i1 %3878, label %3880, label %3920

3880:                                             ; preds = %3856
  %3881 = getelementptr inbounds nuw [4 x i8], ptr %1460, i64 %3879
  %3882 = getelementptr inbounds nuw i8, ptr %3881, i64 2
  %3883 = load i16, ptr %3882, align 2, !tbaa !28
  %3884 = zext i16 %3883 to i32
  %3885 = sub nsw i32 16, %3884
  %3886 = icmp sgt i32 %3858, %3885
  %3887 = load i16, ptr %3881, align 2, !tbaa !28
  %3888 = zext i16 %3887 to i32
  %3889 = shl i32 %3888, %3858
  %3890 = trunc i32 %3889 to i16
  %3891 = or i16 %3857, %3890
  store i16 %3891, ptr %3036, align 8, !tbaa !25
  br i1 %3886, label %3893, label %3917

3892:                                             ; preds = %4142, %4105, %4089, %4077, %4044, %4001, %3985, %3976, %3970, %3936, %3893
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

3893:                                             ; preds = %3880
  %3894 = trunc i16 %3891 to i8
  %3895 = load ptr, ptr %3037, align 8, !tbaa !33
  %3896 = load i64, ptr %3038, align 8, !tbaa !34
  %3897 = add i64 %3896, 1
  store i64 %3897, ptr %3038, align 8, !tbaa !34
  %3898 = getelementptr inbounds nuw i8, ptr %3895, i64 %3896
  store i8 %3894, ptr %3898, align 1, !tbaa !28
  %3899 = load i16, ptr %3036, align 8, !tbaa !25
  %3900 = lshr i16 %3899, 8
  %3901 = trunc nuw i16 %3900 to i8
  %3902 = load ptr, ptr %3037, align 8, !tbaa !33
  %3903 = load i64, ptr %3038, align 8, !tbaa !34
  %3904 = add i64 %3903, 1
  store i64 %3904, ptr %3038, align 8, !tbaa !34
  %3905 = getelementptr inbounds nuw i8, ptr %3902, i64 %3903
  store i8 %3901, ptr %3905, align 1, !tbaa !28
  %3906 = load i32, ptr %2838, align 4, !tbaa !26
  %3907 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3906), !nosanitize !32
  %3908 = extractvalue { i32, i1 } %3907, 1, !nosanitize !32
  br i1 %3908, label %3892, label %3909, !prof !35, !nosanitize !32

3909:                                             ; preds = %3893
  %3910 = extractvalue { i32, i1 } %3907, 0, !nosanitize !32
  %3911 = lshr i32 %3888, %3910
  %3912 = trunc nuw i32 %3911 to i16
  store i16 %3912, ptr %3036, align 8, !tbaa !25
  %3913 = add nsw i32 %3884, -16
  %3914 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3906, i32 %3913), !nosanitize !32
  %3915 = extractvalue { i32, i1 } %3914, 1, !nosanitize !32
  br i1 %3915, label %3916, label %4119, !prof !35, !nosanitize !32

3916:                                             ; preds = %4158, %4116, %4112, %4060, %4012, %4008, %3952, %3909
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !32
  unreachable, !nosanitize !32

3917:                                             ; preds = %3880
  %3918 = add nsw i32 %3858, %3884
  %3919 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3918, 0
  br label %4119

3920:                                             ; preds = %3856
  %3921 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %3879
  %3922 = load i8, ptr %3921, align 1, !tbaa !28
  %3923 = zext i8 %3922 to i64
  %3924 = getelementptr inbounds nuw [4 x i8], ptr %1460, i64 %3923
  %3925 = getelementptr inbounds nuw i8, ptr %3924, i64 1028
  %3926 = getelementptr inbounds nuw i8, ptr %3924, i64 1030
  %3927 = load i16, ptr %3926, align 2, !tbaa !28
  %3928 = zext i16 %3927 to i32
  %3929 = sub nsw i32 16, %3928
  %3930 = icmp sgt i32 %3858, %3929
  %3931 = load i16, ptr %3925, align 2, !tbaa !28
  %3932 = zext i16 %3931 to i32
  %3933 = shl i32 %3932, %3858
  %3934 = trunc i32 %3933 to i16
  %3935 = or i16 %3857, %3934
  store i16 %3935, ptr %3036, align 8, !tbaa !25
  br i1 %3930, label %3936, label %3959

3936:                                             ; preds = %3920
  %3937 = trunc i16 %3935 to i8
  %3938 = load ptr, ptr %3037, align 8, !tbaa !33
  %3939 = load i64, ptr %3038, align 8, !tbaa !34
  %3940 = add i64 %3939, 1
  store i64 %3940, ptr %3038, align 8, !tbaa !34
  %3941 = getelementptr inbounds nuw i8, ptr %3938, i64 %3939
  store i8 %3937, ptr %3941, align 1, !tbaa !28
  %3942 = load i16, ptr %3036, align 8, !tbaa !25
  %3943 = lshr i16 %3942, 8
  %3944 = trunc nuw i16 %3943 to i8
  %3945 = load ptr, ptr %3037, align 8, !tbaa !33
  %3946 = load i64, ptr %3038, align 8, !tbaa !34
  %3947 = add i64 %3946, 1
  store i64 %3947, ptr %3038, align 8, !tbaa !34
  %3948 = getelementptr inbounds nuw i8, ptr %3945, i64 %3946
  store i8 %3944, ptr %3948, align 1, !tbaa !28
  %3949 = load i32, ptr %2838, align 4, !tbaa !26
  %3950 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3949), !nosanitize !32
  %3951 = extractvalue { i32, i1 } %3950, 1, !nosanitize !32
  br i1 %3951, label %3892, label %3952, !prof !35, !nosanitize !32

3952:                                             ; preds = %3936
  %3953 = extractvalue { i32, i1 } %3950, 0, !nosanitize !32
  %3954 = lshr i32 %3932, %3953
  %3955 = trunc nuw i32 %3954 to i16
  store i16 %3955, ptr %3036, align 8, !tbaa !25
  %3956 = add nsw i32 %3928, -16
  %3957 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3949, i32 %3956), !nosanitize !32
  %3958 = extractvalue { i32, i1 } %3957, 1, !nosanitize !32
  br i1 %3958, label %3916, label %3962, !prof !35, !nosanitize !32

3959:                                             ; preds = %3920
  %3960 = add nsw i32 %3858, %3928
  %3961 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3960, 0
  br label %3962

3962:                                             ; preds = %3959, %3952
  %3963 = phi i16 [ %3955, %3952 ], [ %3935, %3959 ]
  %3964 = phi { i32, i1 } [ %3957, %3952 ], [ %3961, %3959 ]
  %3965 = extractvalue { i32, i1 } %3964, 0
  store i32 %3965, ptr %2838, align 4, !tbaa !26
  %3966 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %3923
  %3967 = load i32, ptr %3966, align 4, !tbaa !4
  %3968 = add i8 %3922, -28
  %3969 = icmp ult i8 %3968, -20
  br i1 %3969, label %4019, label %3970

3970:                                             ; preds = %3962
  %3971 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %3923
  %3972 = load i32, ptr %3971, align 4, !tbaa !4
  %3973 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3877, i32 %3972), !nosanitize !32
  %3974 = extractvalue { i32, i1 } %3973, 0, !nosanitize !32
  %3975 = extractvalue { i32, i1 } %3973, 1, !nosanitize !32
  br i1 %3975, label %3892, label %3976, !prof !35, !nosanitize !32

3976:                                             ; preds = %3970
  %3977 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3967), !nosanitize !32
  %3978 = extractvalue { i32, i1 } %3977, 1, !nosanitize !32
  br i1 %3978, label %3892, label %3979, !prof !35, !nosanitize !32

3979:                                             ; preds = %3976
  %3980 = extractvalue { i32, i1 } %3977, 0, !nosanitize !32
  %3981 = icmp sgt i32 %3965, %3980
  %3982 = shl i32 %3974, %3965
  %3983 = trunc i32 %3982 to i16
  %3984 = or i16 %3963, %3983
  store i16 %3984, ptr %3036, align 8, !tbaa !25
  br i1 %3981, label %3985, label %4012

3985:                                             ; preds = %3979
  %3986 = trunc i16 %3984 to i8
  %3987 = load ptr, ptr %3037, align 8, !tbaa !33
  %3988 = load i64, ptr %3038, align 8, !tbaa !34
  %3989 = add i64 %3988, 1
  store i64 %3989, ptr %3038, align 8, !tbaa !34
  %3990 = getelementptr inbounds nuw i8, ptr %3987, i64 %3988
  store i8 %3986, ptr %3990, align 1, !tbaa !28
  %3991 = load i16, ptr %3036, align 8, !tbaa !25
  %3992 = lshr i16 %3991, 8
  %3993 = trunc nuw i16 %3992 to i8
  %3994 = load ptr, ptr %3037, align 8, !tbaa !33
  %3995 = load i64, ptr %3038, align 8, !tbaa !34
  %3996 = add i64 %3995, 1
  store i64 %3996, ptr %3038, align 8, !tbaa !34
  %3997 = getelementptr inbounds nuw i8, ptr %3994, i64 %3995
  store i8 %3993, ptr %3997, align 1, !tbaa !28
  %3998 = load i32, ptr %2838, align 4, !tbaa !26
  %3999 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3998), !nosanitize !32
  %4000 = extractvalue { i32, i1 } %3999, 1, !nosanitize !32
  br i1 %4000, label %3892, label %4001, !prof !35, !nosanitize !32

4001:                                             ; preds = %3985
  %4002 = extractvalue { i32, i1 } %3999, 0, !nosanitize !32
  %4003 = and i32 %3974, 65535
  %4004 = lshr i32 %4003, %4002
  %4005 = trunc nuw i32 %4004 to i16
  store i16 %4005, ptr %3036, align 8, !tbaa !25
  %4006 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3967, i32 -16)
  %4007 = extractvalue { i32, i1 } %4006, 1, !nosanitize !32
  br i1 %4007, label %3892, label %4008, !prof !35, !nosanitize !32

4008:                                             ; preds = %4001
  %4009 = extractvalue { i32, i1 } %4006, 0, !nosanitize !32
  %4010 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3998, i32 %4009), !nosanitize !32
  %4011 = extractvalue { i32, i1 } %4010, 1, !nosanitize !32
  br i1 %4011, label %3916, label %4015, !prof !35, !nosanitize !32

4012:                                             ; preds = %3979
  %4013 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3965, i32 %3967), !nosanitize !32
  %4014 = extractvalue { i32, i1 } %4013, 1, !nosanitize !32
  br i1 %4014, label %3916, label %4015, !prof !35, !nosanitize !32

4015:                                             ; preds = %4012, %4008
  %4016 = phi i16 [ %4005, %4008 ], [ %3984, %4012 ]
  %4017 = phi { i32, i1 } [ %4010, %4008 ], [ %4013, %4012 ]
  %4018 = extractvalue { i32, i1 } %4017, 0
  store i32 %4018, ptr %2838, align 4, !tbaa !26
  br label %4019

4019:                                             ; preds = %4015, %3962
  %4020 = phi i16 [ %4016, %4015 ], [ %3963, %3962 ]
  %4021 = phi i32 [ %4018, %4015 ], [ %3965, %3962 ]
  %4022 = add nsw i32 %3872, -1
  %4023 = icmp samesign ult i32 %3872, 257
  %4024 = zext nneg i32 %4022 to i64
  %4025 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4024
  %4026 = lshr i32 %4022, 7
  %4027 = zext nneg i32 %4026 to i64
  %4028 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %4027
  %4029 = getelementptr inbounds nuw i8, ptr %4028, i64 256
  %4030 = select i1 %4023, ptr %4025, ptr %4029
  %4031 = load i8, ptr %4030, align 1, !tbaa !28
  %4032 = zext i8 %4031 to i64
  %4033 = getelementptr inbounds nuw [4 x i8], ptr %1542, i64 %4032
  %4034 = getelementptr inbounds nuw i8, ptr %4033, i64 2
  %4035 = load i16, ptr %4034, align 2, !tbaa !28
  %4036 = zext i16 %4035 to i32
  %4037 = sub nsw i32 16, %4036
  %4038 = icmp sgt i32 %4021, %4037
  %4039 = load i16, ptr %4033, align 2, !tbaa !28
  %4040 = zext i16 %4039 to i32
  %4041 = shl i32 %4040, %4021
  %4042 = trunc i32 %4041 to i16
  %4043 = or i16 %4020, %4042
  store i16 %4043, ptr %3036, align 8, !tbaa !25
  br i1 %4038, label %4044, label %4067

4044:                                             ; preds = %4019
  %4045 = trunc i16 %4043 to i8
  %4046 = load ptr, ptr %3037, align 8, !tbaa !33
  %4047 = load i64, ptr %3038, align 8, !tbaa !34
  %4048 = add i64 %4047, 1
  store i64 %4048, ptr %3038, align 8, !tbaa !34
  %4049 = getelementptr inbounds nuw i8, ptr %4046, i64 %4047
  store i8 %4045, ptr %4049, align 1, !tbaa !28
  %4050 = load i16, ptr %3036, align 8, !tbaa !25
  %4051 = lshr i16 %4050, 8
  %4052 = trunc nuw i16 %4051 to i8
  %4053 = load ptr, ptr %3037, align 8, !tbaa !33
  %4054 = load i64, ptr %3038, align 8, !tbaa !34
  %4055 = add i64 %4054, 1
  store i64 %4055, ptr %3038, align 8, !tbaa !34
  %4056 = getelementptr inbounds nuw i8, ptr %4053, i64 %4054
  store i8 %4052, ptr %4056, align 1, !tbaa !28
  %4057 = load i32, ptr %2838, align 4, !tbaa !26
  %4058 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4057), !nosanitize !32
  %4059 = extractvalue { i32, i1 } %4058, 1, !nosanitize !32
  br i1 %4059, label %3892, label %4060, !prof !35, !nosanitize !32

4060:                                             ; preds = %4044
  %4061 = extractvalue { i32, i1 } %4058, 0, !nosanitize !32
  %4062 = lshr i32 %4040, %4061
  %4063 = trunc nuw i32 %4062 to i16
  store i16 %4063, ptr %3036, align 8, !tbaa !25
  %4064 = add nsw i32 %4036, -16
  %4065 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4057, i32 %4064), !nosanitize !32
  %4066 = extractvalue { i32, i1 } %4065, 1, !nosanitize !32
  br i1 %4066, label %3916, label %4070, !prof !35, !nosanitize !32

4067:                                             ; preds = %4019
  %4068 = add nsw i32 %4021, %4036
  %4069 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4068, 0
  br label %4070

4070:                                             ; preds = %4067, %4060
  %4071 = phi i16 [ %4063, %4060 ], [ %4043, %4067 ]
  %4072 = phi { i32, i1 } [ %4065, %4060 ], [ %4069, %4067 ]
  %4073 = extractvalue { i32, i1 } %4072, 0
  store i32 %4073, ptr %2838, align 4, !tbaa !26
  %4074 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %4032
  %4075 = load i32, ptr %4074, align 4, !tbaa !4
  %4076 = icmp ult i8 %4031, 4
  br i1 %4076, label %4123, label %4077

4077:                                             ; preds = %4070
  %4078 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %4032
  %4079 = load i32, ptr %4078, align 4, !tbaa !4
  %4080 = sub i32 %4022, %4079
  %4081 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4075), !nosanitize !32
  %4082 = extractvalue { i32, i1 } %4081, 1, !nosanitize !32
  br i1 %4082, label %3892, label %4083, !prof !35, !nosanitize !32

4083:                                             ; preds = %4077
  %4084 = extractvalue { i32, i1 } %4081, 0, !nosanitize !32
  %4085 = icmp sgt i32 %4073, %4084
  %4086 = shl i32 %4080, %4073
  %4087 = trunc i32 %4086 to i16
  %4088 = or i16 %4071, %4087
  store i16 %4088, ptr %3036, align 8, !tbaa !25
  br i1 %4085, label %4089, label %4116

4089:                                             ; preds = %4083
  %4090 = trunc i16 %4088 to i8
  %4091 = load ptr, ptr %3037, align 8, !tbaa !33
  %4092 = load i64, ptr %3038, align 8, !tbaa !34
  %4093 = add i64 %4092, 1
  store i64 %4093, ptr %3038, align 8, !tbaa !34
  %4094 = getelementptr inbounds nuw i8, ptr %4091, i64 %4092
  store i8 %4090, ptr %4094, align 1, !tbaa !28
  %4095 = load i16, ptr %3036, align 8, !tbaa !25
  %4096 = lshr i16 %4095, 8
  %4097 = trunc nuw i16 %4096 to i8
  %4098 = load ptr, ptr %3037, align 8, !tbaa !33
  %4099 = load i64, ptr %3038, align 8, !tbaa !34
  %4100 = add i64 %4099, 1
  store i64 %4100, ptr %3038, align 8, !tbaa !34
  %4101 = getelementptr inbounds nuw i8, ptr %4098, i64 %4099
  store i8 %4097, ptr %4101, align 1, !tbaa !28
  %4102 = load i32, ptr %2838, align 4, !tbaa !26
  %4103 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4102), !nosanitize !32
  %4104 = extractvalue { i32, i1 } %4103, 1, !nosanitize !32
  br i1 %4104, label %3892, label %4105, !prof !35, !nosanitize !32

4105:                                             ; preds = %4089
  %4106 = extractvalue { i32, i1 } %4103, 0, !nosanitize !32
  %4107 = and i32 %4080, 65535
  %4108 = lshr i32 %4107, %4106
  %4109 = trunc nuw i32 %4108 to i16
  store i16 %4109, ptr %3036, align 8, !tbaa !25
  %4110 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4075, i32 -16)
  %4111 = extractvalue { i32, i1 } %4110, 1, !nosanitize !32
  br i1 %4111, label %3892, label %4112, !prof !35, !nosanitize !32

4112:                                             ; preds = %4105
  %4113 = extractvalue { i32, i1 } %4110, 0, !nosanitize !32
  %4114 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4102, i32 %4113), !nosanitize !32
  %4115 = extractvalue { i32, i1 } %4114, 1, !nosanitize !32
  br i1 %4115, label %3916, label %4119, !prof !35, !nosanitize !32

4116:                                             ; preds = %4083
  %4117 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4073, i32 %4075), !nosanitize !32
  %4118 = extractvalue { i32, i1 } %4117, 1, !nosanitize !32
  br i1 %4118, label %3916, label %4119, !prof !35, !nosanitize !32

4119:                                             ; preds = %4116, %4112, %3917, %3909
  %4120 = phi i16 [ %3891, %3917 ], [ %3912, %3909 ], [ %4109, %4112 ], [ %4088, %4116 ]
  %4121 = phi { i32, i1 } [ %3919, %3917 ], [ %3914, %3909 ], [ %4114, %4112 ], [ %4117, %4116 ]
  %4122 = extractvalue { i32, i1 } %4121, 0
  store i32 %4122, ptr %2838, align 4, !tbaa !26
  br label %4123

4123:                                             ; preds = %4119, %4070
  %4124 = phi i16 [ %4071, %4070 ], [ %4120, %4119 ]
  %4125 = phi i32 [ %4073, %4070 ], [ %4122, %4119 ]
  %4126 = load i32, ptr %3851, align 4, !tbaa !31
  %4127 = icmp ult i32 %3873, %4126
  br i1 %4127, label %3856, label %4128, !llvm.loop !81

4128:                                             ; preds = %4123, %3848
  %4129 = phi i16 [ %3849, %3848 ], [ %4124, %4123 ]
  %4130 = phi i32 [ %3850, %3848 ], [ %4125, %4123 ]
  %4131 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4132 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4133 = load i16, ptr %4132, align 2, !tbaa !28
  %4134 = zext i16 %4133 to i32
  %4135 = sub nsw i32 16, %4134
  %4136 = icmp sgt i32 %4130, %4135
  %4137 = load i16, ptr %4131, align 2, !tbaa !28
  %4138 = zext i16 %4137 to i32
  %4139 = shl i32 %4138, %4130
  %4140 = trunc i32 %4139 to i16
  %4141 = or i16 %4129, %4140
  store i16 %4141, ptr %3036, align 8, !tbaa !25
  br i1 %4136, label %4142, label %4165

4142:                                             ; preds = %4128
  %4143 = trunc i16 %4141 to i8
  %4144 = load ptr, ptr %3037, align 8, !tbaa !33
  %4145 = load i64, ptr %3038, align 8, !tbaa !34
  %4146 = add i64 %4145, 1
  store i64 %4146, ptr %3038, align 8, !tbaa !34
  %4147 = getelementptr inbounds nuw i8, ptr %4144, i64 %4145
  store i8 %4143, ptr %4147, align 1, !tbaa !28
  %4148 = load i16, ptr %3036, align 8, !tbaa !25
  %4149 = lshr i16 %4148, 8
  %4150 = trunc nuw i16 %4149 to i8
  %4151 = load ptr, ptr %3037, align 8, !tbaa !33
  %4152 = load i64, ptr %3038, align 8, !tbaa !34
  %4153 = add i64 %4152, 1
  store i64 %4153, ptr %3038, align 8, !tbaa !34
  %4154 = getelementptr inbounds nuw i8, ptr %4151, i64 %4152
  store i8 %4150, ptr %4154, align 1, !tbaa !28
  %4155 = load i32, ptr %2838, align 4, !tbaa !26
  %4156 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4155), !nosanitize !32
  %4157 = extractvalue { i32, i1 } %4156, 1, !nosanitize !32
  br i1 %4157, label %3892, label %4158, !prof !35, !nosanitize !32

4158:                                             ; preds = %4142
  %4159 = extractvalue { i32, i1 } %4156, 0, !nosanitize !32
  %4160 = lshr i32 %4138, %4159
  %4161 = trunc nuw i32 %4160 to i16
  store i16 %4161, ptr %3036, align 8, !tbaa !25
  %4162 = add nsw i32 %4134, -16
  %4163 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4155, i32 %4162), !nosanitize !32
  %4164 = extractvalue { i32, i1 } %4163, 1, !nosanitize !32
  br i1 %4164, label %3916, label %4168, !prof !35, !nosanitize !32

4165:                                             ; preds = %4128
  %4166 = add nsw i32 %4130, %4134
  %4167 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4166, 0
  br label %4168

4168:                                             ; preds = %4165, %4158
  %4169 = phi { i32, i1 } [ %4163, %4158 ], [ %4167, %4165 ]
  %4170 = extractvalue { i32, i1 } %4169, 0
  store i32 %4170, ptr %2838, align 4, !tbaa !26
  br label %4171

4171:                                             ; preds = %4168, %2834, %2473
  %4172 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4173

4173:                                             ; preds = %4173, %4171
  %4174 = phi i64 [ 0, %4171 ], [ %4178, %4173 ]
  %4175 = getelementptr inbounds nuw [4 x i8], ptr %4172, i64 %4174
  store i16 0, ptr %4175, align 4, !tbaa !28
  %4176 = getelementptr inbounds nuw [4 x i8], ptr %4172, i64 %4174
  %4177 = getelementptr inbounds nuw i8, ptr %4176, i64 4
  store i16 0, ptr %4177, align 4, !tbaa !28
  %4178 = add nuw nsw i64 %4174, 2
  %4179 = icmp eq i64 %4178, 286
  br i1 %4179, label %4180, label %4173, !llvm.loop !29

4180:                                             ; preds = %4173
  %4181 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4181, align 4, !tbaa !28
  %4182 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %4182, align 4, !tbaa !28
  %4183 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %4183, align 4, !tbaa !28
  %4184 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %4184, align 4, !tbaa !28
  %4185 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %4185, align 4, !tbaa !28
  %4186 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %4186, align 4, !tbaa !28
  %4187 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %4187, align 4, !tbaa !28
  %4188 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %4188, align 4, !tbaa !28
  %4189 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %4189, align 4, !tbaa !28
  %4190 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %4190, align 4, !tbaa !28
  %4191 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %4191, align 4, !tbaa !28
  %4192 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %4192, align 4, !tbaa !28
  %4193 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %4193, align 4, !tbaa !28
  %4194 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %4194, align 4, !tbaa !28
  %4195 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %4195, align 4, !tbaa !28
  %4196 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %4196, align 4, !tbaa !28
  %4197 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %4197, align 4, !tbaa !28
  %4198 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %4198, align 4, !tbaa !28
  %4199 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %4199, align 4, !tbaa !28
  %4200 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %4200, align 4, !tbaa !28
  %4201 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %4201, align 4, !tbaa !28
  %4202 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %4202, align 4, !tbaa !28
  %4203 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %4203, align 4, !tbaa !28
  %4204 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %4204, align 4, !tbaa !28
  %4205 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %4205, align 4, !tbaa !28
  %4206 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %4206, align 4, !tbaa !28
  %4207 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %4207, align 4, !tbaa !28
  %4208 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %4208, align 4, !tbaa !28
  %4209 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %4209, align 4, !tbaa !28
  %4210 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %4210, align 4, !tbaa !28
  %4211 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %4211, align 4, !tbaa !28
  %4212 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %4212, align 4, !tbaa !28
  %4213 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %4213, align 4, !tbaa !28
  %4214 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %4214, align 4, !tbaa !28
  %4215 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %4215, align 4, !tbaa !28
  %4216 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %4216, align 4, !tbaa !28
  %4217 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %4217, align 4, !tbaa !28
  %4218 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %4218, align 4, !tbaa !28
  %4219 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %4219, align 4, !tbaa !28
  %4220 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %4220, align 4, !tbaa !28
  %4221 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %4221, align 4, !tbaa !28
  %4222 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %4222, align 4, !tbaa !28
  %4223 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %4223, align 4, !tbaa !28
  %4224 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %4224, align 4, !tbaa !28
  %4225 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %4225, align 4, !tbaa !28
  %4226 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %4226, align 4, !tbaa !28
  %4227 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %4227, align 4, !tbaa !28
  %4228 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %4228, align 4, !tbaa !28
  %4229 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %4229, align 4, !tbaa !28
  %4230 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %4230, align 4, !tbaa !28
  %4231 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %4232 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %4232, align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4231, i8 0, i64 20, i1 false)
  %4233 = icmp eq i32 %3, 0
  br i1 %4233, label %4278, label %4234

4234:                                             ; preds = %4180
  %4235 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %4236 = load i32, ptr %4235, align 4, !tbaa !26
  %4237 = icmp sgt i32 %4236, 8
  br i1 %4237, label %4238, label %4255

4238:                                             ; preds = %4234
  %4239 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4240 = load i16, ptr %4239, align 8, !tbaa !25
  %4241 = trunc i16 %4240 to i8
  %4242 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4243 = load ptr, ptr %4242, align 8, !tbaa !33
  %4244 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4245 = load i64, ptr %4244, align 8, !tbaa !34
  %4246 = add i64 %4245, 1
  store i64 %4246, ptr %4244, align 8, !tbaa !34
  %4247 = getelementptr inbounds nuw i8, ptr %4243, i64 %4245
  store i8 %4241, ptr %4247, align 1, !tbaa !28
  %4248 = load i16, ptr %4239, align 8, !tbaa !25
  %4249 = lshr i16 %4248, 8
  %4250 = trunc nuw i16 %4249 to i8
  %4251 = load ptr, ptr %4242, align 8, !tbaa !33
  %4252 = load i64, ptr %4244, align 8, !tbaa !34
  %4253 = add i64 %4252, 1
  store i64 %4253, ptr %4244, align 8, !tbaa !34
  %4254 = getelementptr inbounds nuw i8, ptr %4251, i64 %4252
  store i8 %4250, ptr %4254, align 1, !tbaa !28
  br label %4267

4255:                                             ; preds = %4234
  %4256 = icmp sgt i32 %4236, 0
  br i1 %4256, label %4257, label %4267

4257:                                             ; preds = %4255
  %4258 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4259 = load i16, ptr %4258, align 8, !tbaa !25
  %4260 = trunc i16 %4259 to i8
  %4261 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4262 = load ptr, ptr %4261, align 8, !tbaa !33
  %4263 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4264 = load i64, ptr %4263, align 8, !tbaa !34
  %4265 = add i64 %4264, 1
  store i64 %4265, ptr %4263, align 8, !tbaa !34
  %4266 = getelementptr inbounds nuw i8, ptr %4262, i64 %4264
  store i8 %4260, ptr %4266, align 1, !tbaa !28
  br label %4267

4267:                                             ; preds = %4257, %4255, %4238
  %4268 = load i32, ptr %4235, align 4, !tbaa !26
  %4269 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4268, i32 -1)
  %4270 = extractvalue { i32, i1 } %4269, 1, !nosanitize !32
  br i1 %4270, label %4271, label %4272, !prof !35, !nosanitize !32

4271:                                             ; preds = %4267
  tail call void @llvm.ubsantrap(i8 21) #10, !nosanitize !32
  unreachable, !nosanitize !32

4272:                                             ; preds = %4267
  %4273 = extractvalue { i32, i1 } %4269, 0, !nosanitize !32
  %4274 = and i32 %4273, 7
  %4275 = add nuw nsw i32 %4274, 1
  %4276 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %4275, ptr %4276, align 8, !tbaa !27
  %4277 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %4277, align 8, !tbaa !25
  store i32 0, ptr %4235, align 4, !tbaa !26
  br label %4278

4278:                                             ; preds = %4272, %4180
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = trunc i32 %1 to i8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %8 = load i32, ptr %7, align 4, !tbaa !31
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !31
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 %10
  store i8 %4, ptr %11, align 1, !tbaa !28
  %12 = lshr i32 %1, 8
  %13 = trunc i32 %12 to i8
  %14 = load ptr, ptr %5, align 8, !tbaa !80
  %15 = load i32, ptr %7, align 4, !tbaa !31
  %16 = add i32 %15, 1
  store i32 %16, ptr %7, align 4, !tbaa !31
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 %17
  store i8 %13, ptr %18, align 1, !tbaa !28
  %19 = trunc i32 %2 to i8
  %20 = load ptr, ptr %5, align 8, !tbaa !80
  %21 = load i32, ptr %7, align 4, !tbaa !31
  %22 = add i32 %21, 1
  store i32 %22, ptr %7, align 4, !tbaa !31
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
  %34 = load i32, ptr %33, align 8, !tbaa !85
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !85
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
  %60 = load i32, ptr %7, align 4, !tbaa !31
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %62 = load i32, ptr %61, align 8, !tbaa !86
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i32
  ret i32 %64
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!9, !5, i64 5900}
!32 = !{}
!33 = !{!9, !12, i64 16}
!34 = !{!9, !13, i64 40}
!35 = !{!"branch_weights", i32 1, i32 1048575}
!36 = !{!9, !5, i64 196}
!37 = !{!9, !10, i64 0}
!38 = !{!39, !5, i64 88}
!39 = !{!"z_stream_s", !12, i64 0, !5, i64 8, !13, i64 16, !12, i64 24, !5, i64 32, !13, i64 40, !12, i64 48, !40, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!40 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!41 = distinct !{!41, !30}
!42 = !{!16, !17, i64 0}
!43 = !{!16, !18, i64 16}
!44 = !{!45, !17, i64 0}
!45 = !{!"static_tree_desc_s", !17, i64 0, !46, i64 8, !5, i64 16, !5, i64 20, !5, i64 24}
!46 = !{!"p1 int", !11, i64 0}
!47 = !{!45, !5, i64 20}
!48 = !{!9, !5, i64 5300}
!49 = !{!9, !5, i64 5304}
!50 = distinct !{!50, !30}
!51 = !{!9, !13, i64 5912}
!52 = !{!9, !13, i64 5920}
!53 = distinct !{!53, !30}
!54 = !{!16, !5, i64 8}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = !{!45, !46, i64 8}
!59 = !{!45, !5, i64 16}
!60 = !{!45, !5, i64 24}
!61 = !{!19, !19, i64 0}
!62 = distinct !{!62, !30}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = !{!"branch_weights", i32 1, i32 127}
!66 = !{!"branch_weights", i32 127, i32 134217473}
!67 = distinct !{!67, !30}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !30}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !71}
!74 = !{!9, !5, i64 2912}
!75 = !{!"branch_weights", i32 1, i32 1048574}
!76 = distinct !{!76, !30}
!77 = !{!9, !5, i64 2936}
!78 = distinct !{!78, !71}
!79 = !{!9, !5, i64 200}
!80 = !{!9, !12, i64 5888}
!81 = distinct !{!81, !30}
!82 = distinct !{!82, !30}
!83 = distinct !{!83, !30}
!84 = distinct !{!84, !30}
!85 = !{!9, !5, i64 5928}
!86 = !{!9, !5, i64 5904}
