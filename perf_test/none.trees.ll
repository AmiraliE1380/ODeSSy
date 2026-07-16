; ModuleID = '/home/amiralie1380/michigan/pl/zlib/trees.c'
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_tr_stored_block(ptr noundef captures(none) initializes((5944, 5948)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %6 = load i32, ptr %5, align 4, !tbaa !26
  %7 = icmp sgt i32 %6, 13
  br i1 %7, label %8, label %34

8:                                                ; preds = %4
  %9 = and i32 %3, 65535
  %10 = shl i32 %3, %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %12 = load i16, ptr %11, align 8, !tbaa !25
  %13 = trunc i32 %10 to i16
  %14 = or i16 %12, %13
  store i16 %14, ptr %11, align 8, !tbaa !25
  %15 = trunc i16 %14 to i8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !32
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %19 = load i64, ptr %18, align 8, !tbaa !33
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8, !tbaa !33
  %21 = getelementptr inbounds nuw i8, ptr %17, i64 %19
  store i8 %15, ptr %21, align 1, !tbaa !28
  %22 = load i16, ptr %11, align 8, !tbaa !25
  %23 = lshr i16 %22, 8
  %24 = trunc nuw i16 %23 to i8
  %25 = load ptr, ptr %16, align 8, !tbaa !32
  %26 = load i64, ptr %18, align 8, !tbaa !33
  %27 = add i64 %26, 1
  store i64 %27, ptr %18, align 8, !tbaa !33
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 %26
  store i8 %24, ptr %28, align 1, !tbaa !28
  %29 = load i32, ptr %5, align 4, !tbaa !26
  %30 = sub nsw i32 16, %29
  %31 = lshr i32 %9, %30
  %32 = trunc nuw i32 %31 to i16
  store i16 %32, ptr %11, align 8, !tbaa !25
  %33 = add nsw i32 %29, -13
  br label %41

34:                                               ; preds = %4
  %35 = shl i32 %3, %6
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %37 = load i16, ptr %36, align 8, !tbaa !25
  %38 = trunc i32 %35 to i16
  %39 = or i16 %37, %38
  store i16 %39, ptr %36, align 8, !tbaa !25
  %40 = add nsw i32 %6, 3
  br label %41

41:                                               ; preds = %34, %8
  %42 = phi i16 [ %39, %34 ], [ %32, %8 ]
  %43 = phi i32 [ %40, %34 ], [ %33, %8 ]
  store i32 %43, ptr %5, align 4, !tbaa !26
  %44 = icmp sgt i32 %43, 8
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %47 = trunc i16 %42 to i8
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %49 = load ptr, ptr %48, align 8, !tbaa !32
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %51 = load i64, ptr %50, align 8, !tbaa !33
  %52 = add i64 %51, 1
  store i64 %52, ptr %50, align 8, !tbaa !33
  %53 = getelementptr inbounds nuw i8, ptr %49, i64 %51
  store i8 %47, ptr %53, align 1, !tbaa !28
  %54 = load i16, ptr %46, align 8, !tbaa !25
  %55 = lshr i16 %54, 8
  %56 = trunc nuw i16 %55 to i8
  %57 = load ptr, ptr %48, align 8, !tbaa !32
  %58 = load i64, ptr %50, align 8, !tbaa !33
  %59 = add i64 %58, 1
  store i64 %59, ptr %50, align 8, !tbaa !33
  %60 = getelementptr inbounds nuw i8, ptr %57, i64 %58
  store i8 %56, ptr %60, align 1, !tbaa !28
  br label %71

61:                                               ; preds = %41
  %62 = icmp sgt i32 %43, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %61
  %64 = trunc i16 %42 to i8
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %66 = load ptr, ptr %65, align 8, !tbaa !32
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %68 = load i64, ptr %67, align 8, !tbaa !33
  %69 = add i64 %68, 1
  store i64 %69, ptr %67, align 8, !tbaa !33
  %70 = getelementptr inbounds nuw i8, ptr %66, i64 %68
  store i8 %64, ptr %70, align 1, !tbaa !28
  br label %71

71:                                               ; preds = %45, %61, %63
  %72 = load i32, ptr %5, align 4, !tbaa !26
  %73 = add i32 %72, 7
  %74 = and i32 %73, 7
  %75 = add nuw nsw i32 %74, 1
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %75, ptr %76, align 8, !tbaa !27
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %77, align 8, !tbaa !25
  store i32 0, ptr %5, align 4, !tbaa !26
  %78 = trunc i64 %2 to i8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %80 = load ptr, ptr %79, align 8, !tbaa !32
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %82 = load i64, ptr %81, align 8, !tbaa !33
  %83 = add i64 %82, 1
  store i64 %83, ptr %81, align 8, !tbaa !33
  %84 = getelementptr inbounds nuw i8, ptr %80, i64 %82
  store i8 %78, ptr %84, align 1, !tbaa !28
  %85 = lshr i64 %2, 8
  %86 = trunc i64 %85 to i8
  %87 = load ptr, ptr %79, align 8, !tbaa !32
  %88 = load i64, ptr %81, align 8, !tbaa !33
  %89 = add i64 %88, 1
  store i64 %89, ptr %81, align 8, !tbaa !33
  %90 = getelementptr inbounds nuw i8, ptr %87, i64 %88
  store i8 %86, ptr %90, align 1, !tbaa !28
  %91 = trunc i64 %2 to i32
  %92 = xor i32 %91, 65535
  %93 = trunc i32 %92 to i8
  %94 = load ptr, ptr %79, align 8, !tbaa !32
  %95 = load i64, ptr %81, align 8, !tbaa !33
  %96 = add i64 %95, 1
  store i64 %96, ptr %81, align 8, !tbaa !33
  %97 = getelementptr inbounds nuw i8, ptr %94, i64 %95
  store i8 %93, ptr %97, align 1, !tbaa !28
  %98 = lshr i32 %92, 8
  %99 = trunc i32 %98 to i8
  %100 = load ptr, ptr %79, align 8, !tbaa !32
  %101 = load i64, ptr %81, align 8, !tbaa !33
  %102 = add i64 %101, 1
  store i64 %102, ptr %81, align 8, !tbaa !33
  %103 = getelementptr inbounds nuw i8, ptr %100, i64 %101
  store i8 %99, ptr %103, align 1, !tbaa !28
  %104 = icmp eq i64 %2, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %71
  %106 = load ptr, ptr %79, align 8, !tbaa !32
  %107 = load i64, ptr %81, align 8, !tbaa !33
  %108 = getelementptr inbounds nuw i8, ptr %106, i64 %107
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %108, ptr align 1 %1, i64 %2, i1 false)
  br label %109

109:                                              ; preds = %105, %71
  %110 = load i64, ptr %81, align 8, !tbaa !33
  %111 = add i64 %110, %2
  store i64 %111, ptr %81, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_tr_flush_bits(ptr noundef captures(none) %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %7 = load i16, ptr %6, align 8, !tbaa !25
  %8 = trunc i16 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %12 = load i64, ptr %11, align 8, !tbaa !33
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !33
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 %12
  store i8 %8, ptr %14, align 1, !tbaa !28
  %15 = load i16, ptr %6, align 8, !tbaa !25
  %16 = lshr i16 %15, 8
  %17 = trunc nuw i16 %16 to i8
  %18 = load ptr, ptr %9, align 8, !tbaa !32
  %19 = load i64, ptr %11, align 8, !tbaa !33
  %20 = add i64 %19, 1
  store i64 %20, ptr %11, align 8, !tbaa !33
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %19
  store i8 %17, ptr %21, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %38

22:                                               ; preds = %1
  %23 = icmp sgt i32 %3, 7
  br i1 %23, label %24, label %40

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %26 = load i16, ptr %25, align 8, !tbaa !25
  %27 = trunc i16 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %29 = load ptr, ptr %28, align 8, !tbaa !32
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i64, ptr %30, align 8, !tbaa !33
  %32 = add i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !33
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 %31
  store i8 %27, ptr %33, align 1, !tbaa !28
  %34 = load i16, ptr %25, align 8, !tbaa !25
  %35 = lshr i16 %34, 8
  store i16 %35, ptr %25, align 8, !tbaa !25
  %36 = load i32, ptr %2, align 4, !tbaa !26
  %37 = add nsw i32 %36, -8
  br label %38

38:                                               ; preds = %24, %5
  %39 = phi i32 [ %37, %24 ], [ 0, %5 ]
  store i32 %39, ptr %2, align 4, !tbaa !26
  br label %40

40:                                               ; preds = %22, %38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_tr_align(ptr noundef captures(none) %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = icmp sgt i32 %3, 13
  %5 = shl i32 2, %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %7 = load i16, ptr %6, align 8, !tbaa !25
  %8 = trunc i32 %5 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %6, align 8, !tbaa !25
  br i1 %4, label %10, label %30

10:                                               ; preds = %1
  %11 = trunc i16 %9 to i8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %15 = load i64, ptr %14, align 8, !tbaa !33
  %16 = add i64 %15, 1
  store i64 %16, ptr %14, align 8, !tbaa !33
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 %15
  store i8 %11, ptr %17, align 1, !tbaa !28
  %18 = load i16, ptr %6, align 8, !tbaa !25
  %19 = lshr i16 %18, 8
  %20 = trunc nuw i16 %19 to i8
  %21 = load ptr, ptr %12, align 8, !tbaa !32
  %22 = load i64, ptr %14, align 8, !tbaa !33
  %23 = add i64 %22, 1
  store i64 %23, ptr %14, align 8, !tbaa !33
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 %22
  store i8 %20, ptr %24, align 1, !tbaa !28
  %25 = load i32, ptr %2, align 4, !tbaa !26
  %26 = sub nsw i32 16, %25
  %27 = lshr i32 2, %26
  %28 = trunc nuw nsw i32 %27 to i16
  store i16 %28, ptr %6, align 8, !tbaa !25
  %29 = add nsw i32 %25, -13
  br label %32

30:                                               ; preds = %1
  %31 = add nsw i32 %3, 3
  br label %32

32:                                               ; preds = %30, %10
  %33 = phi i16 [ %9, %30 ], [ %28, %10 ]
  %34 = phi i32 [ %31, %30 ], [ %29, %10 ]
  store i32 %34, ptr %2, align 4, !tbaa !26
  %35 = icmp sgt i32 %34, 9
  %36 = trunc i16 %33 to i8
  br i1 %35, label %37, label %54

37:                                               ; preds = %32
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !32
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %42 = load i64, ptr %41, align 8, !tbaa !33
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8, !tbaa !33
  %44 = getelementptr inbounds nuw i8, ptr %40, i64 %42
  store i8 %36, ptr %44, align 1, !tbaa !28
  %45 = load i16, ptr %38, align 8, !tbaa !25
  %46 = lshr i16 %45, 8
  %47 = trunc nuw i16 %46 to i8
  %48 = load ptr, ptr %39, align 8, !tbaa !32
  %49 = load i64, ptr %41, align 8, !tbaa !33
  %50 = add i64 %49, 1
  store i64 %50, ptr %41, align 8, !tbaa !33
  %51 = getelementptr inbounds nuw i8, ptr %48, i64 %49
  store i8 %47, ptr %51, align 1, !tbaa !28
  store i16 0, ptr %38, align 8, !tbaa !25
  %52 = load i32, ptr %2, align 4, !tbaa !26
  %53 = add nsw i32 %52, -9
  br label %56

54:                                               ; preds = %32
  %55 = add nsw i32 %34, 7
  br label %56

56:                                               ; preds = %54, %37
  %57 = phi i8 [ %36, %54 ], [ 0, %37 ]
  %58 = phi i32 [ %55, %54 ], [ %53, %37 ]
  store i32 %58, ptr %2, align 4, !tbaa !26
  %59 = icmp eq i32 %58, 16
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %63 = load ptr, ptr %62, align 8, !tbaa !32
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %65 = load i64, ptr %64, align 8, !tbaa !33
  %66 = add i64 %65, 1
  store i64 %66, ptr %64, align 8, !tbaa !33
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 %65
  store i8 %57, ptr %67, align 1, !tbaa !28
  %68 = load i16, ptr %61, align 8, !tbaa !25
  %69 = lshr i16 %68, 8
  %70 = trunc nuw i16 %69 to i8
  %71 = load ptr, ptr %62, align 8, !tbaa !32
  %72 = load i64, ptr %64, align 8, !tbaa !33
  %73 = add i64 %72, 1
  store i64 %73, ptr %64, align 8, !tbaa !33
  %74 = getelementptr inbounds nuw i8, ptr %71, i64 %72
  store i8 %70, ptr %74, align 1, !tbaa !28
  store i16 0, ptr %61, align 8, !tbaa !25
  br label %89

75:                                               ; preds = %56
  %76 = icmp sgt i32 %58, 7
  br i1 %76, label %77, label %91

77:                                               ; preds = %75
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %80 = load ptr, ptr %79, align 8, !tbaa !32
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %82 = load i64, ptr %81, align 8, !tbaa !33
  %83 = add i64 %82, 1
  store i64 %83, ptr %81, align 8, !tbaa !33
  %84 = getelementptr inbounds nuw i8, ptr %80, i64 %82
  store i8 %57, ptr %84, align 1, !tbaa !28
  %85 = load i16, ptr %78, align 8, !tbaa !25
  %86 = lshr i16 %85, 8
  store i16 %86, ptr %78, align 8, !tbaa !25
  %87 = load i32, ptr %2, align 4, !tbaa !26
  %88 = add nsw i32 %87, -8
  br label %89

89:                                               ; preds = %77, %60
  %90 = phi i32 [ %88, %77 ], [ 0, %60 ]
  store i32 %90, ptr %2, align 4, !tbaa !26
  br label %91

91:                                               ; preds = %75, %89
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_tr_flush_block(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = alloca [16 x i16], align 16
  %6 = alloca [16 x i16], align 16
  %7 = alloca [16 x i16], align 16
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %2161

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %14 = load i32, ptr %13, align 8, !tbaa !36
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
  br i1 %137, label %143, label %138, !llvm.loop !39

138:                                              ; preds = %116, %135
  %139 = phi i64 [ %136, %135 ], [ 32, %116 ]
  %140 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %139
  %141 = load i16, ptr %140, align 4, !tbaa !28
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %120, label %143

143:                                              ; preds = %138, %120, %125, %130, %135, %16, %20, %24, %28, %32, %36, %40, %44, %48, %52, %56, %60, %64, %68, %72, %76, %80, %84, %88, %92, %96, %100, %104, %108, %112, %116
  %144 = phi i32 [ 1, %112 ], [ 0, %20 ], [ 1, %108 ], [ 1, %116 ], [ 0, %16 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 1, %138 ], [ 0, %135 ], [ 1, %120 ], [ 1, %130 ], [ 1, %125 ]
  store i32 %144, ptr %13, align 8, !tbaa !36
  br label %145

145:                                              ; preds = %143, %11
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %147 = load ptr, ptr %146, align 8, !tbaa !40
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 2920
  %149 = load ptr, ptr %148, align 8, !tbaa !41
  %150 = load ptr, ptr %149, align 8, !tbaa !42
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 20
  %152 = load i32, ptr %151, align 4, !tbaa !45
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 5300
  store i32 0, ptr %153, align 4, !tbaa !46
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 5304
  store i32 573, ptr %154, align 8, !tbaa !47
  %155 = icmp sgt i32 %152, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %145
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %159 = zext nneg i32 %152 to i64
  br label %171

160:                                              ; preds = %186
  %161 = load i32, ptr %153, align 4, !tbaa !46
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %215

163:                                              ; preds = %160, %145
  %164 = phi i32 [ %187, %160 ], [ -1, %145 ]
  %165 = phi i32 [ %161, %160 ], [ 0, %145 ]
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %169 = icmp eq ptr %150, null
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %190

171:                                              ; preds = %186, %156
  %172 = phi i64 [ 0, %156 ], [ %188, %186 ]
  %173 = phi i32 [ -1, %156 ], [ %187, %186 ]
  %174 = getelementptr inbounds nuw [4 x i8], ptr %147, i64 %172
  %175 = load i16, ptr %174, align 2, !tbaa !28
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %171
  %178 = load i32, ptr %153, align 4, !tbaa !46
  %179 = add nsw i32 %178, 1
  store i32 %179, ptr %153, align 4, !tbaa !46
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i8], ptr %157, i64 %180
  %182 = trunc nuw nsw i64 %172 to i32
  store i32 %182, ptr %181, align 4, !tbaa !4
  %183 = getelementptr inbounds nuw i8, ptr %158, i64 %172
  store i8 0, ptr %183, align 1, !tbaa !28
  br label %186

184:                                              ; preds = %171
  %185 = getelementptr inbounds nuw i8, ptr %174, i64 2
  store i16 0, ptr %185, align 2, !tbaa !28
  br label %186

186:                                              ; preds = %184, %177
  %187 = phi i32 [ %182, %177 ], [ %173, %184 ]
  %188 = add nuw nsw i64 %172, 1
  %189 = icmp eq i64 %188, %159
  br i1 %189, label %160, label %171, !llvm.loop !48

190:                                              ; preds = %212, %163
  %191 = phi i32 [ %165, %163 ], [ %213, %212 ]
  %192 = phi i32 [ %164, %163 ], [ %195, %212 ]
  %193 = icmp slt i32 %192, 2
  %194 = add nsw i32 %192, 1
  %195 = select i1 %193, i32 %194, i32 %192
  %196 = select i1 %193, i32 %194, i32 0
  %197 = add nsw i32 %191, 1
  store i32 %197, ptr %153, align 4, !tbaa !46
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [4 x i8], ptr %166, i64 %198
  store i32 %196, ptr %199, align 4, !tbaa !4
  %200 = sext i32 %196 to i64
  %201 = getelementptr inbounds [4 x i8], ptr %147, i64 %200
  store i16 1, ptr %201, align 2, !tbaa !28
  %202 = getelementptr inbounds i8, ptr %167, i64 %200
  store i8 0, ptr %202, align 1, !tbaa !28
  %203 = load i64, ptr %168, align 8, !tbaa !49
  %204 = add i64 %203, -1
  store i64 %204, ptr %168, align 8, !tbaa !49
  br i1 %169, label %212, label %205

205:                                              ; preds = %190
  %206 = getelementptr inbounds [4 x i8], ptr %150, i64 %200
  %207 = getelementptr inbounds nuw i8, ptr %206, i64 2
  %208 = load i16, ptr %207, align 2, !tbaa !28
  %209 = zext i16 %208 to i64
  %210 = load i64, ptr %170, align 8, !tbaa !50
  %211 = sub i64 %210, %209
  store i64 %211, ptr %170, align 8, !tbaa !50
  br label %212

212:                                              ; preds = %205, %190
  %213 = load i32, ptr %153, align 4, !tbaa !46
  %214 = icmp slt i32 %213, 2
  br i1 %214, label %190, label %215, !llvm.loop !51

215:                                              ; preds = %212, %160
  %216 = phi i32 [ %187, %160 ], [ %195, %212 ]
  %217 = phi i32 [ %161, %160 ], [ %213, %212 ]
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %216, ptr %218, align 8, !tbaa !52
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %221 = lshr i32 %217, 1
  %222 = zext nneg i32 %221 to i64
  br label %227

223:                                              ; preds = %293
  %224 = load i32, ptr %153, align 4, !tbaa !46
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %226 = sext i32 %152 to i64
  br label %299

227:                                              ; preds = %293, %215
  %228 = phi i64 [ %222, %215 ], [ %297, %293 ]
  %229 = getelementptr inbounds nuw [4 x i8], ptr %219, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, ptr %220, i64 %231
  %233 = load i32, ptr %153, align 4, !tbaa !46
  %234 = trunc i64 %228 to i32
  %235 = shl i32 %234, 1
  %236 = icmp sgt i32 %235, %233
  br i1 %236, label %293, label %237

237:                                              ; preds = %227
  %238 = getelementptr inbounds [4 x i8], ptr %147, i64 %231
  br label %239

239:                                              ; preds = %287, %237
  %240 = phi i32 [ %233, %237 ], [ %291, %287 ]
  %241 = phi i32 [ %235, %237 ], [ %290, %287 ]
  %242 = phi i32 [ %234, %237 ], [ %272, %287 ]
  %243 = icmp slt i32 %241, %240
  br i1 %243, label %246, label %244

244:                                              ; preds = %239
  %245 = sext i32 %241 to i64
  br label %270

246:                                              ; preds = %239
  %247 = or disjoint i32 %241, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [4 x i8], ptr %219, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [4 x i8], ptr %147, i64 %251
  %253 = load i16, ptr %252, align 2, !tbaa !28
  %254 = sext i32 %241 to i64
  %255 = getelementptr inbounds [4 x i8], ptr %219, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [4 x i8], ptr %147, i64 %257
  %259 = load i16, ptr %258, align 2, !tbaa !28
  %260 = icmp ult i16 %253, %259
  br i1 %260, label %269, label %261

261:                                              ; preds = %246
  %262 = icmp eq i16 %253, %259
  br i1 %262, label %263, label %270

263:                                              ; preds = %261
  %264 = getelementptr inbounds i8, ptr %220, i64 %251
  %265 = load i8, ptr %264, align 1, !tbaa !28
  %266 = getelementptr inbounds i8, ptr %220, i64 %257
  %267 = load i8, ptr %266, align 1, !tbaa !28
  %268 = icmp ugt i8 %265, %267
  br i1 %268, label %270, label %269

269:                                              ; preds = %263, %246
  br label %270

270:                                              ; preds = %269, %263, %261, %244
  %271 = phi i64 [ %245, %244 ], [ %248, %269 ], [ %254, %263 ], [ %254, %261 ]
  %272 = phi i32 [ %241, %244 ], [ %247, %269 ], [ %241, %263 ], [ %241, %261 ]
  %273 = load i16, ptr %238, align 2, !tbaa !28
  %274 = getelementptr inbounds [4 x i8], ptr %219, i64 %271
  %275 = load i32, ptr %274, align 4, !tbaa !4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [4 x i8], ptr %147, i64 %276
  %278 = load i16, ptr %277, align 2, !tbaa !28
  %279 = icmp ult i16 %273, %278
  br i1 %279, label %293, label %280

280:                                              ; preds = %270
  %281 = icmp eq i16 %273, %278
  br i1 %281, label %282, label %287

282:                                              ; preds = %280
  %283 = load i8, ptr %232, align 1, !tbaa !28
  %284 = getelementptr inbounds i8, ptr %220, i64 %276
  %285 = load i8, ptr %284, align 1, !tbaa !28
  %286 = icmp ugt i8 %283, %285
  br i1 %286, label %287, label %293

287:                                              ; preds = %282, %280
  %288 = sext i32 %242 to i64
  %289 = getelementptr inbounds [4 x i8], ptr %219, i64 %288
  store i32 %275, ptr %289, align 4, !tbaa !4
  %290 = shl i32 %272, 1
  %291 = load i32, ptr %153, align 4, !tbaa !46
  %292 = icmp sgt i32 %290, %291
  br i1 %292, label %293, label %239, !llvm.loop !53

293:                                              ; preds = %287, %282, %270, %227
  %294 = phi i32 [ %234, %227 ], [ %242, %270 ], [ %242, %282 ], [ %272, %287 ]
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [4 x i8], ptr %219, i64 %295
  store i32 %230, ptr %296, align 4, !tbaa !4
  %297 = add nsw i64 %228, -1
  %298 = icmp sgt i64 %228, 1
  br i1 %298, label %227, label %223, !llvm.loop !54

299:                                              ; preds = %460, %223
  %300 = phi i32 [ %224, %223 ], [ %463, %460 ]
  %301 = phi i64 [ %226, %223 ], [ %400, %460 ]
  %302 = load i32, ptr %225, align 4, !tbaa !4
  %303 = add nsw i32 %300, -1
  store i32 %303, ptr %153, align 4, !tbaa !46
  %304 = sext i32 %300 to i64
  %305 = getelementptr inbounds [4 x i8], ptr %219, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !4
  store i32 %306, ptr %225, align 4, !tbaa !4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, ptr %220, i64 %307
  %309 = icmp slt i32 %300, 3
  br i1 %309, label %369, label %310

310:                                              ; preds = %299
  %311 = getelementptr inbounds [4 x i8], ptr %147, i64 %307
  br label %312

312:                                              ; preds = %360, %310
  %313 = phi i32 [ %303, %310 ], [ %364, %360 ]
  %314 = phi i32 [ 2, %310 ], [ %363, %360 ]
  %315 = phi i32 [ 1, %310 ], [ %345, %360 ]
  %316 = icmp slt i32 %314, %313
  br i1 %316, label %319, label %317

317:                                              ; preds = %312
  %318 = sext i32 %314 to i64
  br label %343

319:                                              ; preds = %312
  %320 = or disjoint i32 %314, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [4 x i8], ptr %219, i64 %321
  %323 = load i32, ptr %322, align 4, !tbaa !4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [4 x i8], ptr %147, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !28
  %327 = sext i32 %314 to i64
  %328 = getelementptr inbounds [4 x i8], ptr %219, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [4 x i8], ptr %147, i64 %330
  %332 = load i16, ptr %331, align 2, !tbaa !28
  %333 = icmp ult i16 %326, %332
  br i1 %333, label %342, label %334

334:                                              ; preds = %319
  %335 = icmp eq i16 %326, %332
  br i1 %335, label %336, label %343

336:                                              ; preds = %334
  %337 = getelementptr inbounds i8, ptr %220, i64 %324
  %338 = load i8, ptr %337, align 1, !tbaa !28
  %339 = getelementptr inbounds i8, ptr %220, i64 %330
  %340 = load i8, ptr %339, align 1, !tbaa !28
  %341 = icmp ugt i8 %338, %340
  br i1 %341, label %343, label %342

342:                                              ; preds = %336, %319
  br label %343

343:                                              ; preds = %342, %336, %334, %317
  %344 = phi i64 [ %318, %317 ], [ %321, %342 ], [ %327, %336 ], [ %327, %334 ]
  %345 = phi i32 [ %314, %317 ], [ %320, %342 ], [ %314, %336 ], [ %314, %334 ]
  %346 = load i16, ptr %311, align 2, !tbaa !28
  %347 = getelementptr inbounds [4 x i8], ptr %219, i64 %344
  %348 = load i32, ptr %347, align 4, !tbaa !4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [4 x i8], ptr %147, i64 %349
  %351 = load i16, ptr %350, align 2, !tbaa !28
  %352 = icmp ult i16 %346, %351
  br i1 %352, label %366, label %353

353:                                              ; preds = %343
  %354 = icmp eq i16 %346, %351
  br i1 %354, label %355, label %360

355:                                              ; preds = %353
  %356 = load i8, ptr %308, align 1, !tbaa !28
  %357 = getelementptr inbounds i8, ptr %220, i64 %349
  %358 = load i8, ptr %357, align 1, !tbaa !28
  %359 = icmp ugt i8 %356, %358
  br i1 %359, label %360, label %366

360:                                              ; preds = %355, %353
  %361 = sext i32 %315 to i64
  %362 = getelementptr inbounds [4 x i8], ptr %219, i64 %361
  store i32 %348, ptr %362, align 4, !tbaa !4
  %363 = shl i32 %345, 1
  %364 = load i32, ptr %153, align 4, !tbaa !46
  %365 = icmp sgt i32 %363, %364
  br i1 %365, label %366, label %312, !llvm.loop !53

366:                                              ; preds = %360, %355, %343
  %367 = phi i32 [ %315, %343 ], [ %315, %355 ], [ %345, %360 ]
  %368 = sext i32 %367 to i64
  br label %369

369:                                              ; preds = %366, %299
  %370 = phi i64 [ 1, %299 ], [ %368, %366 ]
  %371 = getelementptr inbounds [4 x i8], ptr %219, i64 %370
  store i32 %306, ptr %371, align 4, !tbaa !4
  %372 = load i32, ptr %225, align 4, !tbaa !4
  %373 = load i32, ptr %154, align 8, !tbaa !47
  %374 = add nsw i32 %373, -1
  store i32 %374, ptr %154, align 8, !tbaa !47
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [4 x i8], ptr %219, i64 %375
  store i32 %302, ptr %376, align 4, !tbaa !4
  %377 = load i32, ptr %154, align 8, !tbaa !47
  %378 = add nsw i32 %377, -1
  store i32 %378, ptr %154, align 8, !tbaa !47
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [4 x i8], ptr %219, i64 %379
  store i32 %372, ptr %380, align 4, !tbaa !4
  %381 = sext i32 %302 to i64
  %382 = getelementptr inbounds [4 x i8], ptr %147, i64 %381
  %383 = load i16, ptr %382, align 2, !tbaa !28
  %384 = sext i32 %372 to i64
  %385 = getelementptr inbounds [4 x i8], ptr %147, i64 %384
  %386 = load i16, ptr %385, align 2, !tbaa !28
  %387 = add i16 %386, %383
  %388 = getelementptr inbounds [4 x i8], ptr %147, i64 %301
  store i16 %387, ptr %388, align 2, !tbaa !28
  %389 = getelementptr inbounds i8, ptr %220, i64 %381
  %390 = load i8, ptr %389, align 1, !tbaa !28
  %391 = getelementptr inbounds i8, ptr %220, i64 %384
  %392 = load i8, ptr %391, align 1, !tbaa !28
  %393 = tail call i8 @llvm.umax.i8(i8 %390, i8 %392)
  %394 = add i8 %393, 1
  %395 = getelementptr inbounds i8, ptr %220, i64 %301
  store i8 %394, ptr %395, align 1, !tbaa !28
  %396 = trunc nsw i64 %301 to i32
  %397 = trunc i64 %301 to i16
  %398 = getelementptr inbounds nuw i8, ptr %385, i64 2
  store i16 %397, ptr %398, align 2, !tbaa !28
  %399 = getelementptr inbounds nuw i8, ptr %382, i64 2
  store i16 %397, ptr %399, align 2, !tbaa !28
  %400 = add nsw i64 %301, 1
  store i32 %396, ptr %225, align 4, !tbaa !4
  %401 = load i32, ptr %153, align 4, !tbaa !46
  %402 = icmp slt i32 %401, 2
  br i1 %402, label %460, label %403

403:                                              ; preds = %369, %451
  %404 = phi i32 [ %455, %451 ], [ %401, %369 ]
  %405 = phi i32 [ %454, %451 ], [ 2, %369 ]
  %406 = phi i32 [ %436, %451 ], [ 1, %369 ]
  %407 = icmp slt i32 %405, %404
  br i1 %407, label %410, label %408

408:                                              ; preds = %403
  %409 = sext i32 %405 to i64
  br label %434

410:                                              ; preds = %403
  %411 = or disjoint i32 %405, 1
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [4 x i8], ptr %219, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [4 x i8], ptr %147, i64 %415
  %417 = load i16, ptr %416, align 2, !tbaa !28
  %418 = sext i32 %405 to i64
  %419 = getelementptr inbounds [4 x i8], ptr %219, i64 %418
  %420 = load i32, ptr %419, align 4, !tbaa !4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [4 x i8], ptr %147, i64 %421
  %423 = load i16, ptr %422, align 2, !tbaa !28
  %424 = icmp ult i16 %417, %423
  br i1 %424, label %433, label %425

425:                                              ; preds = %410
  %426 = icmp eq i16 %417, %423
  br i1 %426, label %427, label %434

427:                                              ; preds = %425
  %428 = getelementptr inbounds i8, ptr %220, i64 %415
  %429 = load i8, ptr %428, align 1, !tbaa !28
  %430 = getelementptr inbounds i8, ptr %220, i64 %421
  %431 = load i8, ptr %430, align 1, !tbaa !28
  %432 = icmp ugt i8 %429, %431
  br i1 %432, label %434, label %433

433:                                              ; preds = %427, %410
  br label %434

434:                                              ; preds = %433, %427, %425, %408
  %435 = phi i64 [ %409, %408 ], [ %412, %433 ], [ %418, %427 ], [ %418, %425 ]
  %436 = phi i32 [ %405, %408 ], [ %411, %433 ], [ %405, %427 ], [ %405, %425 ]
  %437 = load i16, ptr %388, align 2, !tbaa !28
  %438 = getelementptr inbounds [4 x i8], ptr %219, i64 %435
  %439 = load i32, ptr %438, align 4, !tbaa !4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [4 x i8], ptr %147, i64 %440
  %442 = load i16, ptr %441, align 2, !tbaa !28
  %443 = icmp ult i16 %437, %442
  br i1 %443, label %457, label %444

444:                                              ; preds = %434
  %445 = icmp eq i16 %437, %442
  br i1 %445, label %446, label %451

446:                                              ; preds = %444
  %447 = load i8, ptr %395, align 1, !tbaa !28
  %448 = getelementptr inbounds i8, ptr %220, i64 %440
  %449 = load i8, ptr %448, align 1, !tbaa !28
  %450 = icmp ugt i8 %447, %449
  br i1 %450, label %451, label %457

451:                                              ; preds = %446, %444
  %452 = sext i32 %406 to i64
  %453 = getelementptr inbounds [4 x i8], ptr %219, i64 %452
  store i32 %439, ptr %453, align 4, !tbaa !4
  %454 = shl i32 %436, 1
  %455 = load i32, ptr %153, align 4, !tbaa !46
  %456 = icmp sgt i32 %454, %455
  br i1 %456, label %457, label %403, !llvm.loop !53

457:                                              ; preds = %451, %446, %434
  %458 = phi i32 [ %406, %434 ], [ %406, %446 ], [ %436, %451 ]
  %459 = sext i32 %458 to i64
  br label %460

460:                                              ; preds = %457, %369
  %461 = phi i64 [ 1, %369 ], [ %459, %457 ]
  %462 = getelementptr inbounds [4 x i8], ptr %219, i64 %461
  store i32 %396, ptr %462, align 4, !tbaa !4
  %463 = load i32, ptr %153, align 4, !tbaa !46
  %464 = icmp sgt i32 %463, 1
  br i1 %464, label %299, label %465, !llvm.loop !55

465:                                              ; preds = %460
  %466 = load i32, ptr %225, align 4, !tbaa !4
  %467 = load i32, ptr %154, align 8, !tbaa !47
  %468 = add nsw i32 %467, -1
  store i32 %468, ptr %154, align 8, !tbaa !47
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [4 x i8], ptr %219, i64 %469
  store i32 %466, ptr %470, align 4, !tbaa !4
  %471 = load ptr, ptr %146, align 8, !tbaa !40
  %472 = load i32, ptr %218, align 8, !tbaa !52
  %473 = load ptr, ptr %148, align 8, !tbaa !41
  %474 = load ptr, ptr %473, align 8, !tbaa !42
  %475 = getelementptr inbounds nuw i8, ptr %473, i64 8
  %476 = load ptr, ptr %475, align 8, !tbaa !56
  %477 = getelementptr inbounds nuw i8, ptr %473, i64 16
  %478 = load i32, ptr %477, align 8, !tbaa !57
  %479 = getelementptr inbounds nuw i8, ptr %473, i64 24
  %480 = load i32, ptr %479, align 8, !tbaa !58
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %481, i8 0, i64 32, i1 false), !tbaa !59
  %482 = load i32, ptr %154, align 8, !tbaa !47
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [4 x i8], ptr %219, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [4 x i8], ptr %471, i64 %486
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 2
  store i16 0, ptr %488, align 2, !tbaa !28
  %489 = load i32, ptr %154, align 8, !tbaa !47
  %490 = icmp slt i32 %489, 572
  br i1 %490, label %491, label %620

491:                                              ; preds = %465
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %493 = icmp eq ptr %474, null
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %495 = sext i32 %489 to i64
  %496 = add nsw i64 %495, 1
  br label %497

497:                                              ; preds = %548, %491
  %498 = phi i64 [ %496, %491 ], [ %549, %548 ]
  %499 = phi i32 [ 0, %491 ], [ %515, %548 ]
  %500 = getelementptr inbounds [4 x i8], ptr %219, i64 %498
  %501 = load i32, ptr %500, align 4, !tbaa !4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [4 x i8], ptr %471, i64 %502
  %504 = getelementptr inbounds nuw i8, ptr %503, i64 2
  %505 = load i16, ptr %504, align 2, !tbaa !28
  %506 = zext i16 %505 to i64
  %507 = getelementptr inbounds nuw [4 x i8], ptr %471, i64 %506
  %508 = getelementptr inbounds nuw i8, ptr %507, i64 2
  %509 = load i16, ptr %508, align 2, !tbaa !28
  %510 = zext i16 %509 to i32
  %511 = add nuw nsw i32 %510, 1
  %512 = icmp sle i32 %480, %510
  %513 = select i1 %512, i32 %480, i32 %511
  %514 = zext i1 %512 to i32
  %515 = add nuw nsw i32 %499, %514
  %516 = trunc i32 %513 to i16
  store i16 %516, ptr %504, align 2, !tbaa !28
  %517 = icmp sgt i32 %501, %472
  br i1 %517, label %548, label %518

518:                                              ; preds = %497
  %519 = sext i32 %513 to i64
  %520 = getelementptr inbounds [2 x i8], ptr %481, i64 %519
  %521 = load i16, ptr %520, align 2, !tbaa !59
  %522 = add i16 %521, 1
  store i16 %522, ptr %520, align 2, !tbaa !59
  %523 = icmp slt i32 %501, %478
  br i1 %523, label %529, label %524

524:                                              ; preds = %518
  %525 = sub nsw i32 %501, %478
  %526 = zext nneg i32 %525 to i64
  %527 = getelementptr inbounds nuw [4 x i8], ptr %476, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !4
  br label %529

529:                                              ; preds = %524, %518
  %530 = phi i32 [ %528, %524 ], [ 0, %518 ]
  %531 = load i16, ptr %503, align 2, !tbaa !28
  %532 = zext i16 %531 to i64
  %533 = add nsw i32 %530, %513
  %534 = zext i32 %533 to i64
  %535 = mul nuw nsw i64 %532, %534
  %536 = load i64, ptr %492, align 8, !tbaa !49
  %537 = add i64 %535, %536
  store i64 %537, ptr %492, align 8, !tbaa !49
  br i1 %493, label %548, label %538

538:                                              ; preds = %529
  %539 = getelementptr inbounds [4 x i8], ptr %474, i64 %502
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 2
  %541 = load i16, ptr %540, align 2, !tbaa !28
  %542 = zext i16 %541 to i32
  %543 = add nsw i32 %530, %542
  %544 = zext i32 %543 to i64
  %545 = mul nuw nsw i64 %544, %532
  %546 = load i64, ptr %494, align 8, !tbaa !50
  %547 = add i64 %545, %546
  store i64 %547, ptr %494, align 8, !tbaa !50
  br label %548

548:                                              ; preds = %538, %529, %497
  %549 = add nsw i64 %498, 1
  %550 = and i64 %549, 4294967295
  %551 = icmp eq i64 %550, 573
  br i1 %551, label %552, label %497, !llvm.loop !60

552:                                              ; preds = %548
  %553 = icmp eq i32 %515, 0
  br i1 %553, label %620, label %554

554:                                              ; preds = %552
  %555 = sext i32 %480 to i64
  %556 = getelementptr inbounds [2 x i8], ptr %481, i64 %555
  br label %557

557:                                              ; preds = %565, %554
  %558 = phi i32 [ %575, %565 ], [ %515, %554 ]
  br label %559

559:                                              ; preds = %559, %557
  %560 = phi i64 [ %561, %559 ], [ %555, %557 ]
  %561 = add nsw i64 %560, -1
  %562 = getelementptr inbounds [2 x i8], ptr %481, i64 %561
  %563 = load i16, ptr %562, align 2, !tbaa !59
  %564 = icmp eq i16 %563, 0
  br i1 %564, label %559, label %565, !llvm.loop !61

565:                                              ; preds = %559
  %566 = getelementptr inbounds [2 x i8], ptr %481, i64 %561
  %567 = add i16 %563, -1
  store i16 %567, ptr %566, align 2, !tbaa !59
  %568 = shl i64 %560, 32
  %569 = ashr exact i64 %568, 31
  %570 = getelementptr inbounds i8, ptr %481, i64 %569
  %571 = load i16, ptr %570, align 2, !tbaa !59
  %572 = add i16 %571, 2
  store i16 %572, ptr %570, align 2, !tbaa !59
  %573 = load i16, ptr %556, align 2, !tbaa !59
  %574 = add i16 %573, -1
  store i16 %574, ptr %556, align 2, !tbaa !59
  %575 = add nsw i32 %558, -2
  %576 = icmp sgt i32 %558, 2
  br i1 %576, label %557, label %577, !llvm.loop !62

577:                                              ; preds = %565
  %578 = icmp eq i32 %480, 0
  br i1 %578, label %620, label %579

579:                                              ; preds = %577, %588
  %580 = phi i64 [ %590, %588 ], [ %555, %577 ]
  %581 = phi i32 [ %589, %588 ], [ 573, %577 ]
  %582 = getelementptr inbounds [2 x i8], ptr %481, i64 %580
  %583 = load i16, ptr %582, align 2, !tbaa !59
  %584 = icmp eq i16 %583, 0
  br i1 %584, label %588, label %585

585:                                              ; preds = %579
  %586 = zext i16 %583 to i32
  %587 = trunc i64 %580 to i16
  br label %592

588:                                              ; preds = %617, %579
  %589 = phi i32 [ %581, %579 ], [ %603, %617 ]
  %590 = add nsw i64 %580, -1
  %591 = icmp eq i64 %590, 0
  br i1 %591, label %620, label %579, !llvm.loop !63

592:                                              ; preds = %617, %585
  %593 = phi i32 [ %581, %585 ], [ %603, %617 ]
  %594 = phi i32 [ %586, %585 ], [ %618, %617 ]
  %595 = sext i32 %593 to i64
  br label %596

596:                                              ; preds = %596, %592
  %597 = phi i64 [ %595, %592 ], [ %598, %596 ]
  %598 = add nsw i64 %597, -1
  %599 = getelementptr inbounds [4 x i8], ptr %219, i64 %598
  %600 = load i32, ptr %599, align 4, !tbaa !4
  %601 = icmp sgt i32 %600, %472
  br i1 %601, label %596, label %602, !llvm.loop !64

602:                                              ; preds = %596
  %603 = trunc nsw i64 %598 to i32
  %604 = sext i32 %600 to i64
  %605 = getelementptr inbounds [4 x i8], ptr %471, i64 %604
  %606 = getelementptr inbounds nuw i8, ptr %605, i64 2
  %607 = load i16, ptr %606, align 2, !tbaa !28
  %608 = zext i16 %607 to i64
  %609 = icmp eq i64 %580, %608
  br i1 %609, label %617, label %610

610:                                              ; preds = %602
  %611 = sub nsw i64 %580, %608
  %612 = load i16, ptr %605, align 2, !tbaa !28
  %613 = zext i16 %612 to i64
  %614 = mul nsw i64 %611, %613
  %615 = load i64, ptr %492, align 8, !tbaa !49
  %616 = add i64 %614, %615
  store i64 %616, ptr %492, align 8, !tbaa !49
  store i16 %587, ptr %606, align 2, !tbaa !28
  br label %617

617:                                              ; preds = %610, %602
  %618 = add nsw i32 %594, -1
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %588, label %592, !llvm.loop !64

620:                                              ; preds = %588, %577, %552, %465
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %621 = load i16, ptr %481, align 2, !tbaa !59
  %622 = shl i16 %621, 1
  %623 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %622, ptr %623, align 2, !tbaa !59
  %624 = getelementptr i8, ptr %0, i64 2978
  %625 = load i16, ptr %624, align 2, !tbaa !59
  %626 = add i16 %625, %622
  %627 = shl i16 %626, 1
  %628 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %627, ptr %628, align 4, !tbaa !59
  %629 = getelementptr i8, ptr %0, i64 2980
  %630 = load i16, ptr %629, align 2, !tbaa !59
  %631 = add i16 %630, %627
  %632 = shl i16 %631, 1
  %633 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %632, ptr %633, align 2, !tbaa !59
  %634 = getelementptr i8, ptr %0, i64 2982
  %635 = load i16, ptr %634, align 2, !tbaa !59
  %636 = add i16 %635, %632
  %637 = shl i16 %636, 1
  %638 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %637, ptr %638, align 8, !tbaa !59
  %639 = getelementptr i8, ptr %0, i64 2984
  %640 = load i16, ptr %639, align 2, !tbaa !59
  %641 = add i16 %640, %637
  %642 = shl i16 %641, 1
  %643 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %642, ptr %643, align 2, !tbaa !59
  %644 = getelementptr i8, ptr %0, i64 2986
  %645 = load i16, ptr %644, align 2, !tbaa !59
  %646 = add i16 %645, %642
  %647 = shl i16 %646, 1
  %648 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %647, ptr %648, align 4, !tbaa !59
  %649 = getelementptr i8, ptr %0, i64 2988
  %650 = load i16, ptr %649, align 2, !tbaa !59
  %651 = add i16 %650, %647
  %652 = shl i16 %651, 1
  %653 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %652, ptr %653, align 2, !tbaa !59
  %654 = getelementptr i8, ptr %0, i64 2990
  %655 = load i16, ptr %654, align 2, !tbaa !59
  %656 = add i16 %655, %652
  %657 = shl i16 %656, 1
  %658 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %657, ptr %658, align 16, !tbaa !59
  %659 = getelementptr i8, ptr %0, i64 2992
  %660 = load i16, ptr %659, align 2, !tbaa !59
  %661 = add i16 %660, %657
  %662 = shl i16 %661, 1
  %663 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %662, ptr %663, align 2, !tbaa !59
  %664 = getelementptr i8, ptr %0, i64 2994
  %665 = load i16, ptr %664, align 2, !tbaa !59
  %666 = add i16 %665, %662
  %667 = shl i16 %666, 1
  %668 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %667, ptr %668, align 4, !tbaa !59
  %669 = getelementptr i8, ptr %0, i64 2996
  %670 = load i16, ptr %669, align 2, !tbaa !59
  %671 = add i16 %670, %667
  %672 = shl i16 %671, 1
  %673 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %672, ptr %673, align 2, !tbaa !59
  %674 = getelementptr i8, ptr %0, i64 2998
  %675 = load i16, ptr %674, align 2, !tbaa !59
  %676 = add i16 %675, %672
  %677 = shl i16 %676, 1
  %678 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %677, ptr %678, align 8, !tbaa !59
  %679 = getelementptr i8, ptr %0, i64 3000
  %680 = load i16, ptr %679, align 2, !tbaa !59
  %681 = add i16 %680, %677
  %682 = shl i16 %681, 1
  %683 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %682, ptr %683, align 2, !tbaa !59
  %684 = getelementptr i8, ptr %0, i64 3002
  %685 = load i16, ptr %684, align 2, !tbaa !59
  %686 = add i16 %685, %682
  %687 = shl i16 %686, 1
  %688 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %687, ptr %688, align 4, !tbaa !59
  %689 = getelementptr i8, ptr %0, i64 3004
  %690 = load i16, ptr %689, align 2, !tbaa !59
  %691 = add i16 %690, %687
  %692 = shl i16 %691, 1
  %693 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %692, ptr %693, align 2, !tbaa !59
  %694 = icmp slt i32 %216, 0
  br i1 %694, label %755, label %695

695:                                              ; preds = %620
  %696 = add nuw i32 %216, 1
  %697 = zext i32 %696 to i64
  br label %698

698:                                              ; preds = %752, %695
  %699 = phi i64 [ 0, %695 ], [ %753, %752 ]
  %700 = getelementptr inbounds nuw [4 x i8], ptr %147, i64 %699
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 2
  %702 = load i16, ptr %701, align 2, !tbaa !28
  %703 = icmp eq i16 %702, 0
  br i1 %703, label %752, label %704

704:                                              ; preds = %698
  %705 = zext i16 %702 to i32
  %706 = zext i16 %702 to i64
  %707 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %706
  %708 = load i16, ptr %707, align 2, !tbaa !59
  %709 = add i16 %708, 1
  store i16 %709, ptr %707, align 2, !tbaa !59
  %710 = and i32 %705, 3
  %711 = icmp ult i16 %702, 4
  br i1 %711, label %736, label %712

712:                                              ; preds = %704
  %713 = and i32 %705, 65532
  br label %714

714:                                              ; preds = %714, %712
  %715 = phi i16 [ %708, %712 ], [ %730, %714 ]
  %716 = phi i16 [ 0, %712 ], [ %731, %714 ]
  %717 = phi i32 [ 0, %712 ], [ %732, %714 ]
  %718 = and i16 %715, 1
  %719 = or disjoint i16 %716, %718
  %720 = shl i16 %719, 2
  %721 = and i16 %715, 2
  %722 = or disjoint i16 %720, %721
  %723 = lshr i16 %715, 2
  %724 = and i16 %723, 1
  %725 = or disjoint i16 %722, %724
  %726 = lshr i16 %715, 3
  %727 = shl i16 %725, 1
  %728 = and i16 %726, 1
  %729 = or disjoint i16 %727, %728
  %730 = lshr i16 %715, 4
  %731 = shl i16 %729, 1
  %732 = add i32 %717, 4
  %733 = icmp eq i32 %732, %713
  br i1 %733, label %734, label %714, !llvm.loop !65

734:                                              ; preds = %714
  %735 = icmp eq i32 %710, 0
  br i1 %735, label %750, label %736

736:                                              ; preds = %734, %704
  %737 = phi i16 [ %708, %704 ], [ %730, %734 ]
  %738 = phi i16 [ 0, %704 ], [ %731, %734 ]
  %739 = icmp ne i32 %710, 0
  tail call void @llvm.assume(i1 %739)
  br label %740

740:                                              ; preds = %740, %736
  %741 = phi i16 [ %737, %736 ], [ %746, %740 ]
  %742 = phi i16 [ %738, %736 ], [ %747, %740 ]
  %743 = phi i32 [ 0, %736 ], [ %748, %740 ]
  %744 = and i16 %741, 1
  %745 = or disjoint i16 %742, %744
  %746 = lshr i16 %741, 1
  %747 = shl i16 %745, 1
  %748 = add i32 %743, 1
  %749 = icmp eq i32 %748, %710
  br i1 %749, label %750, label %740, !llvm.loop !66

750:                                              ; preds = %740, %734
  %751 = phi i16 [ %729, %734 ], [ %745, %740 ]
  store i16 %751, ptr %700, align 2, !tbaa !28
  br label %752

752:                                              ; preds = %750, %698
  %753 = add nuw nsw i64 %699, 1
  %754 = icmp eq i64 %753, %697
  br i1 %754, label %755, label %698, !llvm.loop !68

755:                                              ; preds = %752, %620
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %756 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %757 = load ptr, ptr %756, align 8, !tbaa !40
  %758 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %759 = load ptr, ptr %758, align 8, !tbaa !41
  %760 = load ptr, ptr %759, align 8, !tbaa !42
  %761 = getelementptr inbounds nuw i8, ptr %759, i64 20
  %762 = load i32, ptr %761, align 4, !tbaa !45
  store i32 0, ptr %153, align 4, !tbaa !46
  store i32 573, ptr %154, align 8, !tbaa !47
  %763 = icmp sgt i32 %762, 0
  br i1 %763, label %764, label %769

764:                                              ; preds = %755
  %765 = zext nneg i32 %762 to i64
  br label %775

766:                                              ; preds = %790
  %767 = load i32, ptr %153, align 4, !tbaa !46
  %768 = icmp slt i32 %767, 2
  br i1 %768, label %769, label %819

769:                                              ; preds = %766, %755
  %770 = phi i32 [ %791, %766 ], [ -1, %755 ]
  %771 = phi i32 [ %767, %766 ], [ 0, %755 ]
  %772 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %773 = icmp eq ptr %760, null
  %774 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %794

775:                                              ; preds = %790, %764
  %776 = phi i64 [ 0, %764 ], [ %792, %790 ]
  %777 = phi i32 [ -1, %764 ], [ %791, %790 ]
  %778 = getelementptr inbounds nuw [4 x i8], ptr %757, i64 %776
  %779 = load i16, ptr %778, align 2, !tbaa !28
  %780 = icmp eq i16 %779, 0
  br i1 %780, label %788, label %781

781:                                              ; preds = %775
  %782 = load i32, ptr %153, align 4, !tbaa !46
  %783 = add nsw i32 %782, 1
  store i32 %783, ptr %153, align 4, !tbaa !46
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds [4 x i8], ptr %219, i64 %784
  %786 = trunc nuw nsw i64 %776 to i32
  store i32 %786, ptr %785, align 4, !tbaa !4
  %787 = getelementptr inbounds nuw i8, ptr %220, i64 %776
  store i8 0, ptr %787, align 1, !tbaa !28
  br label %790

788:                                              ; preds = %775
  %789 = getelementptr inbounds nuw i8, ptr %778, i64 2
  store i16 0, ptr %789, align 2, !tbaa !28
  br label %790

790:                                              ; preds = %788, %781
  %791 = phi i32 [ %786, %781 ], [ %777, %788 ]
  %792 = add nuw nsw i64 %776, 1
  %793 = icmp eq i64 %792, %765
  br i1 %793, label %766, label %775, !llvm.loop !48

794:                                              ; preds = %816, %769
  %795 = phi i32 [ %771, %769 ], [ %817, %816 ]
  %796 = phi i32 [ %770, %769 ], [ %799, %816 ]
  %797 = icmp slt i32 %796, 2
  %798 = add nsw i32 %796, 1
  %799 = select i1 %797, i32 %798, i32 %796
  %800 = select i1 %797, i32 %798, i32 0
  %801 = add nsw i32 %795, 1
  store i32 %801, ptr %153, align 4, !tbaa !46
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds [4 x i8], ptr %219, i64 %802
  store i32 %800, ptr %803, align 4, !tbaa !4
  %804 = sext i32 %800 to i64
  %805 = getelementptr inbounds [4 x i8], ptr %757, i64 %804
  store i16 1, ptr %805, align 2, !tbaa !28
  %806 = getelementptr inbounds i8, ptr %220, i64 %804
  store i8 0, ptr %806, align 1, !tbaa !28
  %807 = load i64, ptr %772, align 8, !tbaa !49
  %808 = add i64 %807, -1
  store i64 %808, ptr %772, align 8, !tbaa !49
  br i1 %773, label %816, label %809

809:                                              ; preds = %794
  %810 = getelementptr inbounds [4 x i8], ptr %760, i64 %804
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 2
  %812 = load i16, ptr %811, align 2, !tbaa !28
  %813 = zext i16 %812 to i64
  %814 = load i64, ptr %774, align 8, !tbaa !50
  %815 = sub i64 %814, %813
  store i64 %815, ptr %774, align 8, !tbaa !50
  br label %816

816:                                              ; preds = %809, %794
  %817 = load i32, ptr %153, align 4, !tbaa !46
  %818 = icmp slt i32 %817, 2
  br i1 %818, label %794, label %819, !llvm.loop !51

819:                                              ; preds = %816, %766
  %820 = phi i32 [ %791, %766 ], [ %799, %816 ]
  %821 = phi i32 [ %767, %766 ], [ %817, %816 ]
  %822 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %820, ptr %822, align 8, !tbaa !52
  %823 = lshr i32 %821, 1
  %824 = zext nneg i32 %823 to i64
  br label %828

825:                                              ; preds = %894
  %826 = load i32, ptr %153, align 4, !tbaa !46
  %827 = sext i32 %762 to i64
  br label %900

828:                                              ; preds = %894, %819
  %829 = phi i64 [ %824, %819 ], [ %898, %894 ]
  %830 = getelementptr inbounds nuw [4 x i8], ptr %219, i64 %829
  %831 = load i32, ptr %830, align 4, !tbaa !4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds i8, ptr %220, i64 %832
  %834 = load i32, ptr %153, align 4, !tbaa !46
  %835 = trunc i64 %829 to i32
  %836 = shl i32 %835, 1
  %837 = icmp sgt i32 %836, %834
  br i1 %837, label %894, label %838

838:                                              ; preds = %828
  %839 = getelementptr inbounds [4 x i8], ptr %757, i64 %832
  br label %840

840:                                              ; preds = %888, %838
  %841 = phi i32 [ %834, %838 ], [ %892, %888 ]
  %842 = phi i32 [ %836, %838 ], [ %891, %888 ]
  %843 = phi i32 [ %835, %838 ], [ %873, %888 ]
  %844 = icmp slt i32 %842, %841
  br i1 %844, label %847, label %845

845:                                              ; preds = %840
  %846 = sext i32 %842 to i64
  br label %871

847:                                              ; preds = %840
  %848 = or disjoint i32 %842, 1
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds [4 x i8], ptr %219, i64 %849
  %851 = load i32, ptr %850, align 4, !tbaa !4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds [4 x i8], ptr %757, i64 %852
  %854 = load i16, ptr %853, align 2, !tbaa !28
  %855 = sext i32 %842 to i64
  %856 = getelementptr inbounds [4 x i8], ptr %219, i64 %855
  %857 = load i32, ptr %856, align 4, !tbaa !4
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds [4 x i8], ptr %757, i64 %858
  %860 = load i16, ptr %859, align 2, !tbaa !28
  %861 = icmp ult i16 %854, %860
  br i1 %861, label %870, label %862

862:                                              ; preds = %847
  %863 = icmp eq i16 %854, %860
  br i1 %863, label %864, label %871

864:                                              ; preds = %862
  %865 = getelementptr inbounds i8, ptr %220, i64 %852
  %866 = load i8, ptr %865, align 1, !tbaa !28
  %867 = getelementptr inbounds i8, ptr %220, i64 %858
  %868 = load i8, ptr %867, align 1, !tbaa !28
  %869 = icmp ugt i8 %866, %868
  br i1 %869, label %871, label %870

870:                                              ; preds = %864, %847
  br label %871

871:                                              ; preds = %870, %864, %862, %845
  %872 = phi i64 [ %846, %845 ], [ %849, %870 ], [ %855, %864 ], [ %855, %862 ]
  %873 = phi i32 [ %842, %845 ], [ %848, %870 ], [ %842, %864 ], [ %842, %862 ]
  %874 = load i16, ptr %839, align 2, !tbaa !28
  %875 = getelementptr inbounds [4 x i8], ptr %219, i64 %872
  %876 = load i32, ptr %875, align 4, !tbaa !4
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds [4 x i8], ptr %757, i64 %877
  %879 = load i16, ptr %878, align 2, !tbaa !28
  %880 = icmp ult i16 %874, %879
  br i1 %880, label %894, label %881

881:                                              ; preds = %871
  %882 = icmp eq i16 %874, %879
  br i1 %882, label %883, label %888

883:                                              ; preds = %881
  %884 = load i8, ptr %833, align 1, !tbaa !28
  %885 = getelementptr inbounds i8, ptr %220, i64 %877
  %886 = load i8, ptr %885, align 1, !tbaa !28
  %887 = icmp ugt i8 %884, %886
  br i1 %887, label %888, label %894

888:                                              ; preds = %883, %881
  %889 = sext i32 %843 to i64
  %890 = getelementptr inbounds [4 x i8], ptr %219, i64 %889
  store i32 %876, ptr %890, align 4, !tbaa !4
  %891 = shl i32 %873, 1
  %892 = load i32, ptr %153, align 4, !tbaa !46
  %893 = icmp sgt i32 %891, %892
  br i1 %893, label %894, label %840, !llvm.loop !53

894:                                              ; preds = %888, %883, %871, %828
  %895 = phi i32 [ %835, %828 ], [ %843, %871 ], [ %843, %883 ], [ %873, %888 ]
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds [4 x i8], ptr %219, i64 %896
  store i32 %831, ptr %897, align 4, !tbaa !4
  %898 = add nsw i64 %829, -1
  %899 = icmp sgt i64 %829, 1
  br i1 %899, label %828, label %825, !llvm.loop !54

900:                                              ; preds = %1061, %825
  %901 = phi i32 [ %826, %825 ], [ %1064, %1061 ]
  %902 = phi i64 [ %827, %825 ], [ %1001, %1061 ]
  %903 = load i32, ptr %225, align 4, !tbaa !4
  %904 = add nsw i32 %901, -1
  store i32 %904, ptr %153, align 4, !tbaa !46
  %905 = sext i32 %901 to i64
  %906 = getelementptr inbounds [4 x i8], ptr %219, i64 %905
  %907 = load i32, ptr %906, align 4, !tbaa !4
  store i32 %907, ptr %225, align 4, !tbaa !4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds i8, ptr %220, i64 %908
  %910 = icmp slt i32 %901, 3
  br i1 %910, label %970, label %911

911:                                              ; preds = %900
  %912 = getelementptr inbounds [4 x i8], ptr %757, i64 %908
  br label %913

913:                                              ; preds = %961, %911
  %914 = phi i32 [ %904, %911 ], [ %965, %961 ]
  %915 = phi i32 [ 2, %911 ], [ %964, %961 ]
  %916 = phi i32 [ 1, %911 ], [ %946, %961 ]
  %917 = icmp slt i32 %915, %914
  br i1 %917, label %920, label %918

918:                                              ; preds = %913
  %919 = sext i32 %915 to i64
  br label %944

920:                                              ; preds = %913
  %921 = or disjoint i32 %915, 1
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds [4 x i8], ptr %219, i64 %922
  %924 = load i32, ptr %923, align 4, !tbaa !4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds [4 x i8], ptr %757, i64 %925
  %927 = load i16, ptr %926, align 2, !tbaa !28
  %928 = sext i32 %915 to i64
  %929 = getelementptr inbounds [4 x i8], ptr %219, i64 %928
  %930 = load i32, ptr %929, align 4, !tbaa !4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds [4 x i8], ptr %757, i64 %931
  %933 = load i16, ptr %932, align 2, !tbaa !28
  %934 = icmp ult i16 %927, %933
  br i1 %934, label %943, label %935

935:                                              ; preds = %920
  %936 = icmp eq i16 %927, %933
  br i1 %936, label %937, label %944

937:                                              ; preds = %935
  %938 = getelementptr inbounds i8, ptr %220, i64 %925
  %939 = load i8, ptr %938, align 1, !tbaa !28
  %940 = getelementptr inbounds i8, ptr %220, i64 %931
  %941 = load i8, ptr %940, align 1, !tbaa !28
  %942 = icmp ugt i8 %939, %941
  br i1 %942, label %944, label %943

943:                                              ; preds = %937, %920
  br label %944

944:                                              ; preds = %943, %937, %935, %918
  %945 = phi i64 [ %919, %918 ], [ %922, %943 ], [ %928, %937 ], [ %928, %935 ]
  %946 = phi i32 [ %915, %918 ], [ %921, %943 ], [ %915, %937 ], [ %915, %935 ]
  %947 = load i16, ptr %912, align 2, !tbaa !28
  %948 = getelementptr inbounds [4 x i8], ptr %219, i64 %945
  %949 = load i32, ptr %948, align 4, !tbaa !4
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds [4 x i8], ptr %757, i64 %950
  %952 = load i16, ptr %951, align 2, !tbaa !28
  %953 = icmp ult i16 %947, %952
  br i1 %953, label %967, label %954

954:                                              ; preds = %944
  %955 = icmp eq i16 %947, %952
  br i1 %955, label %956, label %961

956:                                              ; preds = %954
  %957 = load i8, ptr %909, align 1, !tbaa !28
  %958 = getelementptr inbounds i8, ptr %220, i64 %950
  %959 = load i8, ptr %958, align 1, !tbaa !28
  %960 = icmp ugt i8 %957, %959
  br i1 %960, label %961, label %967

961:                                              ; preds = %956, %954
  %962 = sext i32 %916 to i64
  %963 = getelementptr inbounds [4 x i8], ptr %219, i64 %962
  store i32 %949, ptr %963, align 4, !tbaa !4
  %964 = shl i32 %946, 1
  %965 = load i32, ptr %153, align 4, !tbaa !46
  %966 = icmp sgt i32 %964, %965
  br i1 %966, label %967, label %913, !llvm.loop !53

967:                                              ; preds = %961, %956, %944
  %968 = phi i32 [ %916, %944 ], [ %916, %956 ], [ %946, %961 ]
  %969 = sext i32 %968 to i64
  br label %970

970:                                              ; preds = %967, %900
  %971 = phi i64 [ 1, %900 ], [ %969, %967 ]
  %972 = getelementptr inbounds [4 x i8], ptr %219, i64 %971
  store i32 %907, ptr %972, align 4, !tbaa !4
  %973 = load i32, ptr %225, align 4, !tbaa !4
  %974 = load i32, ptr %154, align 8, !tbaa !47
  %975 = add nsw i32 %974, -1
  store i32 %975, ptr %154, align 8, !tbaa !47
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds [4 x i8], ptr %219, i64 %976
  store i32 %903, ptr %977, align 4, !tbaa !4
  %978 = load i32, ptr %154, align 8, !tbaa !47
  %979 = add nsw i32 %978, -1
  store i32 %979, ptr %154, align 8, !tbaa !47
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds [4 x i8], ptr %219, i64 %980
  store i32 %973, ptr %981, align 4, !tbaa !4
  %982 = sext i32 %903 to i64
  %983 = getelementptr inbounds [4 x i8], ptr %757, i64 %982
  %984 = load i16, ptr %983, align 2, !tbaa !28
  %985 = sext i32 %973 to i64
  %986 = getelementptr inbounds [4 x i8], ptr %757, i64 %985
  %987 = load i16, ptr %986, align 2, !tbaa !28
  %988 = add i16 %987, %984
  %989 = getelementptr inbounds [4 x i8], ptr %757, i64 %902
  store i16 %988, ptr %989, align 2, !tbaa !28
  %990 = getelementptr inbounds i8, ptr %220, i64 %982
  %991 = load i8, ptr %990, align 1, !tbaa !28
  %992 = getelementptr inbounds i8, ptr %220, i64 %985
  %993 = load i8, ptr %992, align 1, !tbaa !28
  %994 = tail call i8 @llvm.umax.i8(i8 %991, i8 %993)
  %995 = add i8 %994, 1
  %996 = getelementptr inbounds i8, ptr %220, i64 %902
  store i8 %995, ptr %996, align 1, !tbaa !28
  %997 = trunc nsw i64 %902 to i32
  %998 = trunc i64 %902 to i16
  %999 = getelementptr inbounds nuw i8, ptr %986, i64 2
  store i16 %998, ptr %999, align 2, !tbaa !28
  %1000 = getelementptr inbounds nuw i8, ptr %983, i64 2
  store i16 %998, ptr %1000, align 2, !tbaa !28
  %1001 = add nsw i64 %902, 1
  store i32 %997, ptr %225, align 4, !tbaa !4
  %1002 = load i32, ptr %153, align 4, !tbaa !46
  %1003 = icmp slt i32 %1002, 2
  br i1 %1003, label %1061, label %1004

1004:                                             ; preds = %970, %1052
  %1005 = phi i32 [ %1056, %1052 ], [ %1002, %970 ]
  %1006 = phi i32 [ %1055, %1052 ], [ 2, %970 ]
  %1007 = phi i32 [ %1037, %1052 ], [ 1, %970 ]
  %1008 = icmp slt i32 %1006, %1005
  br i1 %1008, label %1011, label %1009

1009:                                             ; preds = %1004
  %1010 = sext i32 %1006 to i64
  br label %1035

1011:                                             ; preds = %1004
  %1012 = or disjoint i32 %1006, 1
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds [4 x i8], ptr %219, i64 %1013
  %1015 = load i32, ptr %1014, align 4, !tbaa !4
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds [4 x i8], ptr %757, i64 %1016
  %1018 = load i16, ptr %1017, align 2, !tbaa !28
  %1019 = sext i32 %1006 to i64
  %1020 = getelementptr inbounds [4 x i8], ptr %219, i64 %1019
  %1021 = load i32, ptr %1020, align 4, !tbaa !4
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds [4 x i8], ptr %757, i64 %1022
  %1024 = load i16, ptr %1023, align 2, !tbaa !28
  %1025 = icmp ult i16 %1018, %1024
  br i1 %1025, label %1034, label %1026

1026:                                             ; preds = %1011
  %1027 = icmp eq i16 %1018, %1024
  br i1 %1027, label %1028, label %1035

1028:                                             ; preds = %1026
  %1029 = getelementptr inbounds i8, ptr %220, i64 %1016
  %1030 = load i8, ptr %1029, align 1, !tbaa !28
  %1031 = getelementptr inbounds i8, ptr %220, i64 %1022
  %1032 = load i8, ptr %1031, align 1, !tbaa !28
  %1033 = icmp ugt i8 %1030, %1032
  br i1 %1033, label %1035, label %1034

1034:                                             ; preds = %1028, %1011
  br label %1035

1035:                                             ; preds = %1034, %1028, %1026, %1009
  %1036 = phi i64 [ %1010, %1009 ], [ %1013, %1034 ], [ %1019, %1028 ], [ %1019, %1026 ]
  %1037 = phi i32 [ %1006, %1009 ], [ %1012, %1034 ], [ %1006, %1028 ], [ %1006, %1026 ]
  %1038 = load i16, ptr %989, align 2, !tbaa !28
  %1039 = getelementptr inbounds [4 x i8], ptr %219, i64 %1036
  %1040 = load i32, ptr %1039, align 4, !tbaa !4
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds [4 x i8], ptr %757, i64 %1041
  %1043 = load i16, ptr %1042, align 2, !tbaa !28
  %1044 = icmp ult i16 %1038, %1043
  br i1 %1044, label %1058, label %1045

1045:                                             ; preds = %1035
  %1046 = icmp eq i16 %1038, %1043
  br i1 %1046, label %1047, label %1052

1047:                                             ; preds = %1045
  %1048 = load i8, ptr %996, align 1, !tbaa !28
  %1049 = getelementptr inbounds i8, ptr %220, i64 %1041
  %1050 = load i8, ptr %1049, align 1, !tbaa !28
  %1051 = icmp ugt i8 %1048, %1050
  br i1 %1051, label %1052, label %1058

1052:                                             ; preds = %1047, %1045
  %1053 = sext i32 %1007 to i64
  %1054 = getelementptr inbounds [4 x i8], ptr %219, i64 %1053
  store i32 %1040, ptr %1054, align 4, !tbaa !4
  %1055 = shl i32 %1037, 1
  %1056 = load i32, ptr %153, align 4, !tbaa !46
  %1057 = icmp sgt i32 %1055, %1056
  br i1 %1057, label %1058, label %1004, !llvm.loop !53

1058:                                             ; preds = %1052, %1047, %1035
  %1059 = phi i32 [ %1007, %1035 ], [ %1007, %1047 ], [ %1037, %1052 ]
  %1060 = sext i32 %1059 to i64
  br label %1061

1061:                                             ; preds = %1058, %970
  %1062 = phi i64 [ 1, %970 ], [ %1060, %1058 ]
  %1063 = getelementptr inbounds [4 x i8], ptr %219, i64 %1062
  store i32 %997, ptr %1063, align 4, !tbaa !4
  %1064 = load i32, ptr %153, align 4, !tbaa !46
  %1065 = icmp sgt i32 %1064, 1
  br i1 %1065, label %900, label %1066, !llvm.loop !55

1066:                                             ; preds = %1061
  %1067 = load i32, ptr %225, align 4, !tbaa !4
  %1068 = load i32, ptr %154, align 8, !tbaa !47
  %1069 = add nsw i32 %1068, -1
  store i32 %1069, ptr %154, align 8, !tbaa !47
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds [4 x i8], ptr %219, i64 %1070
  store i32 %1067, ptr %1071, align 4, !tbaa !4
  %1072 = load ptr, ptr %756, align 8, !tbaa !40
  %1073 = load i32, ptr %822, align 8, !tbaa !52
  %1074 = load ptr, ptr %758, align 8, !tbaa !41
  %1075 = load ptr, ptr %1074, align 8, !tbaa !42
  %1076 = getelementptr inbounds nuw i8, ptr %1074, i64 8
  %1077 = load ptr, ptr %1076, align 8, !tbaa !56
  %1078 = getelementptr inbounds nuw i8, ptr %1074, i64 16
  %1079 = load i32, ptr %1078, align 8, !tbaa !57
  %1080 = getelementptr inbounds nuw i8, ptr %1074, i64 24
  %1081 = load i32, ptr %1080, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %481, i8 0, i64 32, i1 false), !tbaa !59
  %1082 = load i32, ptr %154, align 8, !tbaa !47
  %1083 = sext i32 %1082 to i64
  %1084 = getelementptr inbounds [4 x i8], ptr %219, i64 %1083
  %1085 = load i32, ptr %1084, align 4, !tbaa !4
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds [4 x i8], ptr %1072, i64 %1086
  %1088 = getelementptr inbounds nuw i8, ptr %1087, i64 2
  store i16 0, ptr %1088, align 2, !tbaa !28
  %1089 = load i32, ptr %154, align 8, !tbaa !47
  %1090 = icmp slt i32 %1089, 572
  br i1 %1090, label %1091, label %1220

1091:                                             ; preds = %1066
  %1092 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1093 = icmp eq ptr %1075, null
  %1094 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1095 = sext i32 %1089 to i64
  %1096 = add nsw i64 %1095, 1
  br label %1097

1097:                                             ; preds = %1148, %1091
  %1098 = phi i64 [ %1096, %1091 ], [ %1149, %1148 ]
  %1099 = phi i32 [ 0, %1091 ], [ %1115, %1148 ]
  %1100 = getelementptr inbounds [4 x i8], ptr %219, i64 %1098
  %1101 = load i32, ptr %1100, align 4, !tbaa !4
  %1102 = sext i32 %1101 to i64
  %1103 = getelementptr inbounds [4 x i8], ptr %1072, i64 %1102
  %1104 = getelementptr inbounds nuw i8, ptr %1103, i64 2
  %1105 = load i16, ptr %1104, align 2, !tbaa !28
  %1106 = zext i16 %1105 to i64
  %1107 = getelementptr inbounds nuw [4 x i8], ptr %1072, i64 %1106
  %1108 = getelementptr inbounds nuw i8, ptr %1107, i64 2
  %1109 = load i16, ptr %1108, align 2, !tbaa !28
  %1110 = zext i16 %1109 to i32
  %1111 = add nuw nsw i32 %1110, 1
  %1112 = icmp sle i32 %1081, %1110
  %1113 = select i1 %1112, i32 %1081, i32 %1111
  %1114 = zext i1 %1112 to i32
  %1115 = add nuw nsw i32 %1099, %1114
  %1116 = trunc i32 %1113 to i16
  store i16 %1116, ptr %1104, align 2, !tbaa !28
  %1117 = icmp sgt i32 %1101, %1073
  br i1 %1117, label %1148, label %1118

1118:                                             ; preds = %1097
  %1119 = sext i32 %1113 to i64
  %1120 = getelementptr inbounds [2 x i8], ptr %481, i64 %1119
  %1121 = load i16, ptr %1120, align 2, !tbaa !59
  %1122 = add i16 %1121, 1
  store i16 %1122, ptr %1120, align 2, !tbaa !59
  %1123 = icmp slt i32 %1101, %1079
  br i1 %1123, label %1129, label %1124

1124:                                             ; preds = %1118
  %1125 = sub nsw i32 %1101, %1079
  %1126 = zext nneg i32 %1125 to i64
  %1127 = getelementptr inbounds nuw [4 x i8], ptr %1077, i64 %1126
  %1128 = load i32, ptr %1127, align 4, !tbaa !4
  br label %1129

1129:                                             ; preds = %1124, %1118
  %1130 = phi i32 [ %1128, %1124 ], [ 0, %1118 ]
  %1131 = load i16, ptr %1103, align 2, !tbaa !28
  %1132 = zext i16 %1131 to i64
  %1133 = add nsw i32 %1130, %1113
  %1134 = zext i32 %1133 to i64
  %1135 = mul nuw nsw i64 %1132, %1134
  %1136 = load i64, ptr %1092, align 8, !tbaa !49
  %1137 = add i64 %1135, %1136
  store i64 %1137, ptr %1092, align 8, !tbaa !49
  br i1 %1093, label %1148, label %1138

1138:                                             ; preds = %1129
  %1139 = getelementptr inbounds [4 x i8], ptr %1075, i64 %1102
  %1140 = getelementptr inbounds nuw i8, ptr %1139, i64 2
  %1141 = load i16, ptr %1140, align 2, !tbaa !28
  %1142 = zext i16 %1141 to i32
  %1143 = add nsw i32 %1130, %1142
  %1144 = zext i32 %1143 to i64
  %1145 = mul nuw nsw i64 %1144, %1132
  %1146 = load i64, ptr %1094, align 8, !tbaa !50
  %1147 = add i64 %1145, %1146
  store i64 %1147, ptr %1094, align 8, !tbaa !50
  br label %1148

1148:                                             ; preds = %1138, %1129, %1097
  %1149 = add nsw i64 %1098, 1
  %1150 = and i64 %1149, 4294967295
  %1151 = icmp eq i64 %1150, 573
  br i1 %1151, label %1152, label %1097, !llvm.loop !60

1152:                                             ; preds = %1148
  %1153 = icmp eq i32 %1115, 0
  br i1 %1153, label %1220, label %1154

1154:                                             ; preds = %1152
  %1155 = sext i32 %1081 to i64
  %1156 = getelementptr inbounds [2 x i8], ptr %481, i64 %1155
  br label %1157

1157:                                             ; preds = %1165, %1154
  %1158 = phi i32 [ %1175, %1165 ], [ %1115, %1154 ]
  br label %1159

1159:                                             ; preds = %1159, %1157
  %1160 = phi i64 [ %1161, %1159 ], [ %1155, %1157 ]
  %1161 = add nsw i64 %1160, -1
  %1162 = getelementptr inbounds [2 x i8], ptr %481, i64 %1161
  %1163 = load i16, ptr %1162, align 2, !tbaa !59
  %1164 = icmp eq i16 %1163, 0
  br i1 %1164, label %1159, label %1165, !llvm.loop !61

1165:                                             ; preds = %1159
  %1166 = getelementptr inbounds [2 x i8], ptr %481, i64 %1161
  %1167 = add i16 %1163, -1
  store i16 %1167, ptr %1166, align 2, !tbaa !59
  %1168 = shl i64 %1160, 32
  %1169 = ashr exact i64 %1168, 31
  %1170 = getelementptr inbounds i8, ptr %481, i64 %1169
  %1171 = load i16, ptr %1170, align 2, !tbaa !59
  %1172 = add i16 %1171, 2
  store i16 %1172, ptr %1170, align 2, !tbaa !59
  %1173 = load i16, ptr %1156, align 2, !tbaa !59
  %1174 = add i16 %1173, -1
  store i16 %1174, ptr %1156, align 2, !tbaa !59
  %1175 = add nsw i32 %1158, -2
  %1176 = icmp sgt i32 %1158, 2
  br i1 %1176, label %1157, label %1177, !llvm.loop !62

1177:                                             ; preds = %1165
  %1178 = icmp eq i32 %1081, 0
  br i1 %1178, label %1220, label %1179

1179:                                             ; preds = %1177, %1188
  %1180 = phi i64 [ %1190, %1188 ], [ %1155, %1177 ]
  %1181 = phi i32 [ %1189, %1188 ], [ 573, %1177 ]
  %1182 = getelementptr inbounds [2 x i8], ptr %481, i64 %1180
  %1183 = load i16, ptr %1182, align 2, !tbaa !59
  %1184 = icmp eq i16 %1183, 0
  br i1 %1184, label %1188, label %1185

1185:                                             ; preds = %1179
  %1186 = zext i16 %1183 to i32
  %1187 = trunc i64 %1180 to i16
  br label %1192

1188:                                             ; preds = %1217, %1179
  %1189 = phi i32 [ %1181, %1179 ], [ %1203, %1217 ]
  %1190 = add nsw i64 %1180, -1
  %1191 = icmp eq i64 %1190, 0
  br i1 %1191, label %1220, label %1179, !llvm.loop !63

1192:                                             ; preds = %1217, %1185
  %1193 = phi i32 [ %1181, %1185 ], [ %1203, %1217 ]
  %1194 = phi i32 [ %1186, %1185 ], [ %1218, %1217 ]
  %1195 = sext i32 %1193 to i64
  br label %1196

1196:                                             ; preds = %1196, %1192
  %1197 = phi i64 [ %1195, %1192 ], [ %1198, %1196 ]
  %1198 = add nsw i64 %1197, -1
  %1199 = getelementptr inbounds [4 x i8], ptr %219, i64 %1198
  %1200 = load i32, ptr %1199, align 4, !tbaa !4
  %1201 = icmp sgt i32 %1200, %1073
  br i1 %1201, label %1196, label %1202, !llvm.loop !64

1202:                                             ; preds = %1196
  %1203 = trunc nsw i64 %1198 to i32
  %1204 = sext i32 %1200 to i64
  %1205 = getelementptr inbounds [4 x i8], ptr %1072, i64 %1204
  %1206 = getelementptr inbounds nuw i8, ptr %1205, i64 2
  %1207 = load i16, ptr %1206, align 2, !tbaa !28
  %1208 = zext i16 %1207 to i64
  %1209 = icmp eq i64 %1180, %1208
  br i1 %1209, label %1217, label %1210

1210:                                             ; preds = %1202
  %1211 = sub nsw i64 %1180, %1208
  %1212 = load i16, ptr %1205, align 2, !tbaa !28
  %1213 = zext i16 %1212 to i64
  %1214 = mul nsw i64 %1211, %1213
  %1215 = load i64, ptr %1092, align 8, !tbaa !49
  %1216 = add i64 %1214, %1215
  store i64 %1216, ptr %1092, align 8, !tbaa !49
  store i16 %1187, ptr %1206, align 2, !tbaa !28
  br label %1217

1217:                                             ; preds = %1210, %1202
  %1218 = add nsw i32 %1194, -1
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1188, label %1192, !llvm.loop !64

1220:                                             ; preds = %1188, %1177, %1152, %1066
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %1221 = load i16, ptr %481, align 2, !tbaa !59
  %1222 = shl i16 %1221, 1
  %1223 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1222, ptr %1223, align 2, !tbaa !59
  %1224 = load i16, ptr %624, align 2, !tbaa !59
  %1225 = add i16 %1224, %1222
  %1226 = shl i16 %1225, 1
  %1227 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1226, ptr %1227, align 4, !tbaa !59
  %1228 = load i16, ptr %629, align 2, !tbaa !59
  %1229 = add i16 %1228, %1226
  %1230 = shl i16 %1229, 1
  %1231 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1230, ptr %1231, align 2, !tbaa !59
  %1232 = load i16, ptr %634, align 2, !tbaa !59
  %1233 = add i16 %1232, %1230
  %1234 = shl i16 %1233, 1
  %1235 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1234, ptr %1235, align 8, !tbaa !59
  %1236 = load i16, ptr %639, align 2, !tbaa !59
  %1237 = add i16 %1236, %1234
  %1238 = shl i16 %1237, 1
  %1239 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1238, ptr %1239, align 2, !tbaa !59
  %1240 = load i16, ptr %644, align 2, !tbaa !59
  %1241 = add i16 %1240, %1238
  %1242 = shl i16 %1241, 1
  %1243 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1242, ptr %1243, align 4, !tbaa !59
  %1244 = load i16, ptr %649, align 2, !tbaa !59
  %1245 = add i16 %1244, %1242
  %1246 = shl i16 %1245, 1
  %1247 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1246, ptr %1247, align 2, !tbaa !59
  %1248 = load i16, ptr %654, align 2, !tbaa !59
  %1249 = add i16 %1248, %1246
  %1250 = shl i16 %1249, 1
  %1251 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1250, ptr %1251, align 16, !tbaa !59
  %1252 = load i16, ptr %659, align 2, !tbaa !59
  %1253 = add i16 %1252, %1250
  %1254 = shl i16 %1253, 1
  %1255 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1254, ptr %1255, align 2, !tbaa !59
  %1256 = load i16, ptr %664, align 2, !tbaa !59
  %1257 = add i16 %1256, %1254
  %1258 = shl i16 %1257, 1
  %1259 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1258, ptr %1259, align 4, !tbaa !59
  %1260 = load i16, ptr %669, align 2, !tbaa !59
  %1261 = add i16 %1260, %1258
  %1262 = shl i16 %1261, 1
  %1263 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1262, ptr %1263, align 2, !tbaa !59
  %1264 = load i16, ptr %674, align 2, !tbaa !59
  %1265 = add i16 %1264, %1262
  %1266 = shl i16 %1265, 1
  %1267 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1266, ptr %1267, align 8, !tbaa !59
  %1268 = load i16, ptr %679, align 2, !tbaa !59
  %1269 = add i16 %1268, %1266
  %1270 = shl i16 %1269, 1
  %1271 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1270, ptr %1271, align 2, !tbaa !59
  %1272 = load i16, ptr %684, align 2, !tbaa !59
  %1273 = add i16 %1272, %1270
  %1274 = shl i16 %1273, 1
  %1275 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1274, ptr %1275, align 4, !tbaa !59
  %1276 = load i16, ptr %689, align 2, !tbaa !59
  %1277 = add i16 %1276, %1274
  %1278 = shl i16 %1277, 1
  %1279 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1278, ptr %1279, align 2, !tbaa !59
  %1280 = icmp slt i32 %820, 0
  br i1 %1280, label %1341, label %1281

1281:                                             ; preds = %1220
  %1282 = add nuw i32 %820, 1
  %1283 = zext i32 %1282 to i64
  br label %1284

1284:                                             ; preds = %1338, %1281
  %1285 = phi i64 [ 0, %1281 ], [ %1339, %1338 ]
  %1286 = getelementptr inbounds nuw [4 x i8], ptr %757, i64 %1285
  %1287 = getelementptr inbounds nuw i8, ptr %1286, i64 2
  %1288 = load i16, ptr %1287, align 2, !tbaa !28
  %1289 = icmp eq i16 %1288, 0
  br i1 %1289, label %1338, label %1290

1290:                                             ; preds = %1284
  %1291 = zext i16 %1288 to i32
  %1292 = zext i16 %1288 to i64
  %1293 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %1292
  %1294 = load i16, ptr %1293, align 2, !tbaa !59
  %1295 = add i16 %1294, 1
  store i16 %1295, ptr %1293, align 2, !tbaa !59
  %1296 = and i32 %1291, 3
  %1297 = icmp ult i16 %1288, 4
  br i1 %1297, label %1322, label %1298

1298:                                             ; preds = %1290
  %1299 = and i32 %1291, 65532
  br label %1300

1300:                                             ; preds = %1300, %1298
  %1301 = phi i16 [ %1294, %1298 ], [ %1316, %1300 ]
  %1302 = phi i16 [ 0, %1298 ], [ %1317, %1300 ]
  %1303 = phi i32 [ 0, %1298 ], [ %1318, %1300 ]
  %1304 = and i16 %1301, 1
  %1305 = or disjoint i16 %1302, %1304
  %1306 = shl i16 %1305, 2
  %1307 = and i16 %1301, 2
  %1308 = or disjoint i16 %1306, %1307
  %1309 = lshr i16 %1301, 2
  %1310 = and i16 %1309, 1
  %1311 = or disjoint i16 %1308, %1310
  %1312 = lshr i16 %1301, 3
  %1313 = shl i16 %1311, 1
  %1314 = and i16 %1312, 1
  %1315 = or disjoint i16 %1313, %1314
  %1316 = lshr i16 %1301, 4
  %1317 = shl i16 %1315, 1
  %1318 = add i32 %1303, 4
  %1319 = icmp eq i32 %1318, %1299
  br i1 %1319, label %1320, label %1300, !llvm.loop !65

1320:                                             ; preds = %1300
  %1321 = icmp eq i32 %1296, 0
  br i1 %1321, label %1336, label %1322

1322:                                             ; preds = %1320, %1290
  %1323 = phi i16 [ %1294, %1290 ], [ %1316, %1320 ]
  %1324 = phi i16 [ 0, %1290 ], [ %1317, %1320 ]
  %1325 = icmp ne i32 %1296, 0
  tail call void @llvm.assume(i1 %1325)
  br label %1326

1326:                                             ; preds = %1326, %1322
  %1327 = phi i16 [ %1323, %1322 ], [ %1332, %1326 ]
  %1328 = phi i16 [ %1324, %1322 ], [ %1333, %1326 ]
  %1329 = phi i32 [ 0, %1322 ], [ %1334, %1326 ]
  %1330 = and i16 %1327, 1
  %1331 = or disjoint i16 %1328, %1330
  %1332 = lshr i16 %1327, 1
  %1333 = shl i16 %1331, 1
  %1334 = add i32 %1329, 1
  %1335 = icmp eq i32 %1334, %1296
  br i1 %1335, label %1336, label %1326, !llvm.loop !69

1336:                                             ; preds = %1326, %1320
  %1337 = phi i16 [ %1315, %1320 ], [ %1331, %1326 ]
  store i16 %1337, ptr %1286, align 2, !tbaa !28
  br label %1338

1338:                                             ; preds = %1336, %1284
  %1339 = add nuw nsw i64 %1285, 1
  %1340 = icmp eq i64 %1339, %1283
  br i1 %1340, label %1341, label %1284, !llvm.loop !68

1341:                                             ; preds = %1338, %1220
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %1342 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1343 = load i32, ptr %218, align 8, !tbaa !70
  %1344 = getelementptr inbounds nuw i8, ptr %0, i64 214
  %1345 = load i16, ptr %1344, align 2, !tbaa !28
  %1346 = sext i32 %1343 to i64
  %1347 = getelementptr [4 x i8], ptr %1342, i64 %1346
  %1348 = getelementptr i8, ptr %1347, i64 6
  store i16 -1, ptr %1348, align 2, !tbaa !28
  %1349 = icmp slt i32 %1343, 0
  br i1 %1349, label %1416, label %1350

1350:                                             ; preds = %1341
  %1351 = icmp eq i16 %1345, 0
  %1352 = select i1 %1351, i32 3, i32 4
  %1353 = select i1 %1351, i32 138, i32 7
  %1354 = zext i16 %1345 to i32
  %1355 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1356 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1357 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1358 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %1359 = add nuw i32 %1343, 1
  %1360 = zext i32 %1359 to i64
  br label %1361

1361:                                             ; preds = %1410, %1350
  %1362 = phi i64 [ 0, %1350 ], [ %1368, %1410 ]
  %1363 = phi i32 [ %1352, %1350 ], [ %1414, %1410 ]
  %1364 = phi i32 [ %1353, %1350 ], [ %1413, %1410 ]
  %1365 = phi i32 [ 0, %1350 ], [ %1412, %1410 ]
  %1366 = phi i32 [ %1354, %1350 ], [ %1372, %1410 ]
  %1367 = phi i32 [ -1, %1350 ], [ %1411, %1410 ]
  %1368 = add nuw nsw i64 %1362, 1
  %1369 = getelementptr inbounds nuw [4 x i8], ptr %1342, i64 %1368
  %1370 = getelementptr inbounds nuw i8, ptr %1369, i64 2
  %1371 = load i16, ptr %1370, align 2, !tbaa !28
  %1372 = zext i16 %1371 to i32
  %1373 = add nsw i32 %1365, 1
  %1374 = icmp slt i32 %1373, %1364
  %1375 = icmp eq i32 %1366, %1372
  %1376 = select i1 %1374, i1 %1375, i1 false
  br i1 %1376, label %1410, label %1377

1377:                                             ; preds = %1361
  %1378 = icmp slt i32 %1373, %1363
  br i1 %1378, label %1379, label %1385

1379:                                             ; preds = %1377
  %1380 = zext nneg i32 %1366 to i64
  %1381 = getelementptr inbounds nuw [4 x i8], ptr %1355, i64 %1380
  %1382 = load i16, ptr %1381, align 4, !tbaa !28
  %1383 = trunc i32 %1373 to i16
  %1384 = add i16 %1382, %1383
  store i16 %1384, ptr %1381, align 4, !tbaa !28
  br label %1405

1385:                                             ; preds = %1377
  %1386 = icmp eq i32 %1366, 0
  br i1 %1386, label %1397, label %1387

1387:                                             ; preds = %1385
  %1388 = icmp eq i32 %1366, %1367
  br i1 %1388, label %1394, label %1389

1389:                                             ; preds = %1387
  %1390 = zext nneg i32 %1366 to i64
  %1391 = getelementptr inbounds nuw [4 x i8], ptr %1355, i64 %1390
  %1392 = load i16, ptr %1391, align 4, !tbaa !28
  %1393 = add i16 %1392, 1
  store i16 %1393, ptr %1391, align 4, !tbaa !28
  br label %1394

1394:                                             ; preds = %1389, %1387
  %1395 = load i16, ptr %1356, align 4, !tbaa !28
  %1396 = add i16 %1395, 1
  store i16 %1396, ptr %1356, align 4, !tbaa !28
  br label %1405

1397:                                             ; preds = %1385
  %1398 = icmp slt i32 %1365, 10
  br i1 %1398, label %1399, label %1402

1399:                                             ; preds = %1397
  %1400 = load i16, ptr %1358, align 4, !tbaa !28
  %1401 = add i16 %1400, 1
  store i16 %1401, ptr %1358, align 4, !tbaa !28
  br label %1405

1402:                                             ; preds = %1397
  %1403 = load i16, ptr %1357, align 4, !tbaa !28
  %1404 = add i16 %1403, 1
  store i16 %1404, ptr %1357, align 4, !tbaa !28
  br label %1405

1405:                                             ; preds = %1402, %1399, %1394, %1379
  %1406 = icmp eq i16 %1371, 0
  br i1 %1406, label %1410, label %1407

1407:                                             ; preds = %1405
  %1408 = select i1 %1375, i32 6, i32 7
  %1409 = select i1 %1375, i32 3, i32 4
  br label %1410

1410:                                             ; preds = %1407, %1405, %1361
  %1411 = phi i32 [ %1367, %1361 ], [ %1366, %1405 ], [ %1366, %1407 ]
  %1412 = phi i32 [ %1373, %1361 ], [ 0, %1405 ], [ 0, %1407 ]
  %1413 = phi i32 [ %1364, %1361 ], [ 138, %1405 ], [ %1408, %1407 ]
  %1414 = phi i32 [ %1363, %1361 ], [ 3, %1405 ], [ %1409, %1407 ]
  %1415 = icmp eq i64 %1368, %1360
  br i1 %1415, label %1416, label %1361, !llvm.loop !71

1416:                                             ; preds = %1410, %1341
  %1417 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %1418 = load i32, ptr %822, align 8, !tbaa !72
  %1419 = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %1420 = load i16, ptr %1419, align 2, !tbaa !28
  %1421 = sext i32 %1418 to i64
  %1422 = getelementptr [4 x i8], ptr %1417, i64 %1421
  %1423 = getelementptr i8, ptr %1422, i64 6
  store i16 -1, ptr %1423, align 2, !tbaa !28
  %1424 = icmp slt i32 %1418, 0
  br i1 %1424, label %1491, label %1425

1425:                                             ; preds = %1416
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
  br i1 %1490, label %1491, label %1436, !llvm.loop !71

1491:                                             ; preds = %1485, %1416
  %1492 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1493 = load ptr, ptr %1492, align 8, !tbaa !40
  %1494 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1495 = load ptr, ptr %1494, align 8, !tbaa !41
  %1496 = load ptr, ptr %1495, align 8, !tbaa !42
  %1497 = getelementptr inbounds nuw i8, ptr %1495, i64 20
  %1498 = load i32, ptr %1497, align 4, !tbaa !45
  store i32 0, ptr %153, align 4, !tbaa !46
  store i32 573, ptr %154, align 8, !tbaa !47
  %1499 = icmp sgt i32 %1498, 0
  br i1 %1499, label %1500, label %1505

1500:                                             ; preds = %1491
  %1501 = zext nneg i32 %1498 to i64
  br label %1511

1502:                                             ; preds = %1526
  %1503 = load i32, ptr %153, align 4, !tbaa !46
  %1504 = icmp slt i32 %1503, 2
  br i1 %1504, label %1505, label %1555

1505:                                             ; preds = %1502, %1491
  %1506 = phi i32 [ %1527, %1502 ], [ -1, %1491 ]
  %1507 = phi i32 [ %1503, %1502 ], [ 0, %1491 ]
  %1508 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1509 = icmp eq ptr %1496, null
  %1510 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1530

1511:                                             ; preds = %1526, %1500
  %1512 = phi i64 [ 0, %1500 ], [ %1528, %1526 ]
  %1513 = phi i32 [ -1, %1500 ], [ %1527, %1526 ]
  %1514 = getelementptr inbounds nuw [4 x i8], ptr %1493, i64 %1512
  %1515 = load i16, ptr %1514, align 2, !tbaa !28
  %1516 = icmp eq i16 %1515, 0
  br i1 %1516, label %1524, label %1517

1517:                                             ; preds = %1511
  %1518 = load i32, ptr %153, align 4, !tbaa !46
  %1519 = add nsw i32 %1518, 1
  store i32 %1519, ptr %153, align 4, !tbaa !46
  %1520 = sext i32 %1519 to i64
  %1521 = getelementptr inbounds [4 x i8], ptr %219, i64 %1520
  %1522 = trunc nuw nsw i64 %1512 to i32
  store i32 %1522, ptr %1521, align 4, !tbaa !4
  %1523 = getelementptr inbounds nuw i8, ptr %220, i64 %1512
  store i8 0, ptr %1523, align 1, !tbaa !28
  br label %1526

1524:                                             ; preds = %1511
  %1525 = getelementptr inbounds nuw i8, ptr %1514, i64 2
  store i16 0, ptr %1525, align 2, !tbaa !28
  br label %1526

1526:                                             ; preds = %1524, %1517
  %1527 = phi i32 [ %1522, %1517 ], [ %1513, %1524 ]
  %1528 = add nuw nsw i64 %1512, 1
  %1529 = icmp eq i64 %1528, %1501
  br i1 %1529, label %1502, label %1511, !llvm.loop !48

1530:                                             ; preds = %1552, %1505
  %1531 = phi i32 [ %1507, %1505 ], [ %1553, %1552 ]
  %1532 = phi i32 [ %1506, %1505 ], [ %1535, %1552 ]
  %1533 = icmp slt i32 %1532, 2
  %1534 = add nsw i32 %1532, 1
  %1535 = select i1 %1533, i32 %1534, i32 %1532
  %1536 = select i1 %1533, i32 %1534, i32 0
  %1537 = add nsw i32 %1531, 1
  store i32 %1537, ptr %153, align 4, !tbaa !46
  %1538 = sext i32 %1537 to i64
  %1539 = getelementptr inbounds [4 x i8], ptr %219, i64 %1538
  store i32 %1536, ptr %1539, align 4, !tbaa !4
  %1540 = sext i32 %1536 to i64
  %1541 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1540
  store i16 1, ptr %1541, align 2, !tbaa !28
  %1542 = getelementptr inbounds i8, ptr %220, i64 %1540
  store i8 0, ptr %1542, align 1, !tbaa !28
  %1543 = load i64, ptr %1508, align 8, !tbaa !49
  %1544 = add i64 %1543, -1
  store i64 %1544, ptr %1508, align 8, !tbaa !49
  br i1 %1509, label %1552, label %1545

1545:                                             ; preds = %1530
  %1546 = getelementptr inbounds [4 x i8], ptr %1496, i64 %1540
  %1547 = getelementptr inbounds nuw i8, ptr %1546, i64 2
  %1548 = load i16, ptr %1547, align 2, !tbaa !28
  %1549 = zext i16 %1548 to i64
  %1550 = load i64, ptr %1510, align 8, !tbaa !50
  %1551 = sub i64 %1550, %1549
  store i64 %1551, ptr %1510, align 8, !tbaa !50
  br label %1552

1552:                                             ; preds = %1545, %1530
  %1553 = load i32, ptr %153, align 4, !tbaa !46
  %1554 = icmp slt i32 %1553, 2
  br i1 %1554, label %1530, label %1555, !llvm.loop !51

1555:                                             ; preds = %1552, %1502
  %1556 = phi i32 [ %1527, %1502 ], [ %1535, %1552 ]
  %1557 = phi i32 [ %1503, %1502 ], [ %1553, %1552 ]
  %1558 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1556, ptr %1558, align 8, !tbaa !52
  %1559 = lshr i32 %1557, 1
  %1560 = zext nneg i32 %1559 to i64
  br label %1564

1561:                                             ; preds = %1630
  %1562 = load i32, ptr %153, align 4, !tbaa !46
  %1563 = sext i32 %1498 to i64
  br label %1636

1564:                                             ; preds = %1630, %1555
  %1565 = phi i64 [ %1560, %1555 ], [ %1634, %1630 ]
  %1566 = getelementptr inbounds nuw [4 x i8], ptr %219, i64 %1565
  %1567 = load i32, ptr %1566, align 4, !tbaa !4
  %1568 = sext i32 %1567 to i64
  %1569 = getelementptr inbounds i8, ptr %220, i64 %1568
  %1570 = load i32, ptr %153, align 4, !tbaa !46
  %1571 = trunc i64 %1565 to i32
  %1572 = shl i32 %1571, 1
  %1573 = icmp sgt i32 %1572, %1570
  br i1 %1573, label %1630, label %1574

1574:                                             ; preds = %1564
  %1575 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1568
  br label %1576

1576:                                             ; preds = %1624, %1574
  %1577 = phi i32 [ %1570, %1574 ], [ %1628, %1624 ]
  %1578 = phi i32 [ %1572, %1574 ], [ %1627, %1624 ]
  %1579 = phi i32 [ %1571, %1574 ], [ %1609, %1624 ]
  %1580 = icmp slt i32 %1578, %1577
  br i1 %1580, label %1583, label %1581

1581:                                             ; preds = %1576
  %1582 = sext i32 %1578 to i64
  br label %1607

1583:                                             ; preds = %1576
  %1584 = or disjoint i32 %1578, 1
  %1585 = sext i32 %1584 to i64
  %1586 = getelementptr inbounds [4 x i8], ptr %219, i64 %1585
  %1587 = load i32, ptr %1586, align 4, !tbaa !4
  %1588 = sext i32 %1587 to i64
  %1589 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1588
  %1590 = load i16, ptr %1589, align 2, !tbaa !28
  %1591 = sext i32 %1578 to i64
  %1592 = getelementptr inbounds [4 x i8], ptr %219, i64 %1591
  %1593 = load i32, ptr %1592, align 4, !tbaa !4
  %1594 = sext i32 %1593 to i64
  %1595 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1594
  %1596 = load i16, ptr %1595, align 2, !tbaa !28
  %1597 = icmp ult i16 %1590, %1596
  br i1 %1597, label %1606, label %1598

1598:                                             ; preds = %1583
  %1599 = icmp eq i16 %1590, %1596
  br i1 %1599, label %1600, label %1607

1600:                                             ; preds = %1598
  %1601 = getelementptr inbounds i8, ptr %220, i64 %1588
  %1602 = load i8, ptr %1601, align 1, !tbaa !28
  %1603 = getelementptr inbounds i8, ptr %220, i64 %1594
  %1604 = load i8, ptr %1603, align 1, !tbaa !28
  %1605 = icmp ugt i8 %1602, %1604
  br i1 %1605, label %1607, label %1606

1606:                                             ; preds = %1600, %1583
  br label %1607

1607:                                             ; preds = %1606, %1600, %1598, %1581
  %1608 = phi i64 [ %1582, %1581 ], [ %1585, %1606 ], [ %1591, %1600 ], [ %1591, %1598 ]
  %1609 = phi i32 [ %1578, %1581 ], [ %1584, %1606 ], [ %1578, %1600 ], [ %1578, %1598 ]
  %1610 = load i16, ptr %1575, align 2, !tbaa !28
  %1611 = getelementptr inbounds [4 x i8], ptr %219, i64 %1608
  %1612 = load i32, ptr %1611, align 4, !tbaa !4
  %1613 = sext i32 %1612 to i64
  %1614 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1613
  %1615 = load i16, ptr %1614, align 2, !tbaa !28
  %1616 = icmp ult i16 %1610, %1615
  br i1 %1616, label %1630, label %1617

1617:                                             ; preds = %1607
  %1618 = icmp eq i16 %1610, %1615
  br i1 %1618, label %1619, label %1624

1619:                                             ; preds = %1617
  %1620 = load i8, ptr %1569, align 1, !tbaa !28
  %1621 = getelementptr inbounds i8, ptr %220, i64 %1613
  %1622 = load i8, ptr %1621, align 1, !tbaa !28
  %1623 = icmp ugt i8 %1620, %1622
  br i1 %1623, label %1624, label %1630

1624:                                             ; preds = %1619, %1617
  %1625 = sext i32 %1579 to i64
  %1626 = getelementptr inbounds [4 x i8], ptr %219, i64 %1625
  store i32 %1612, ptr %1626, align 4, !tbaa !4
  %1627 = shl i32 %1609, 1
  %1628 = load i32, ptr %153, align 4, !tbaa !46
  %1629 = icmp sgt i32 %1627, %1628
  br i1 %1629, label %1630, label %1576, !llvm.loop !53

1630:                                             ; preds = %1624, %1619, %1607, %1564
  %1631 = phi i32 [ %1571, %1564 ], [ %1609, %1624 ], [ %1579, %1619 ], [ %1579, %1607 ]
  %1632 = sext i32 %1631 to i64
  %1633 = getelementptr inbounds [4 x i8], ptr %219, i64 %1632
  store i32 %1567, ptr %1633, align 4, !tbaa !4
  %1634 = add nsw i64 %1565, -1
  %1635 = icmp sgt i64 %1565, 1
  br i1 %1635, label %1564, label %1561, !llvm.loop !54

1636:                                             ; preds = %1797, %1561
  %1637 = phi i32 [ %1562, %1561 ], [ %1800, %1797 ]
  %1638 = phi i64 [ %1563, %1561 ], [ %1737, %1797 ]
  %1639 = load i32, ptr %225, align 4, !tbaa !4
  %1640 = add nsw i32 %1637, -1
  store i32 %1640, ptr %153, align 4, !tbaa !46
  %1641 = sext i32 %1637 to i64
  %1642 = getelementptr inbounds [4 x i8], ptr %219, i64 %1641
  %1643 = load i32, ptr %1642, align 4, !tbaa !4
  store i32 %1643, ptr %225, align 4, !tbaa !4
  %1644 = sext i32 %1643 to i64
  %1645 = getelementptr inbounds i8, ptr %220, i64 %1644
  %1646 = icmp slt i32 %1637, 3
  br i1 %1646, label %1706, label %1647

1647:                                             ; preds = %1636
  %1648 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1644
  br label %1649

1649:                                             ; preds = %1697, %1647
  %1650 = phi i32 [ %1640, %1647 ], [ %1701, %1697 ]
  %1651 = phi i32 [ 2, %1647 ], [ %1700, %1697 ]
  %1652 = phi i32 [ 1, %1647 ], [ %1682, %1697 ]
  %1653 = icmp slt i32 %1651, %1650
  br i1 %1653, label %1656, label %1654

1654:                                             ; preds = %1649
  %1655 = sext i32 %1651 to i64
  br label %1680

1656:                                             ; preds = %1649
  %1657 = or disjoint i32 %1651, 1
  %1658 = sext i32 %1657 to i64
  %1659 = getelementptr inbounds [4 x i8], ptr %219, i64 %1658
  %1660 = load i32, ptr %1659, align 4, !tbaa !4
  %1661 = sext i32 %1660 to i64
  %1662 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1661
  %1663 = load i16, ptr %1662, align 2, !tbaa !28
  %1664 = sext i32 %1651 to i64
  %1665 = getelementptr inbounds [4 x i8], ptr %219, i64 %1664
  %1666 = load i32, ptr %1665, align 4, !tbaa !4
  %1667 = sext i32 %1666 to i64
  %1668 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1667
  %1669 = load i16, ptr %1668, align 2, !tbaa !28
  %1670 = icmp ult i16 %1663, %1669
  br i1 %1670, label %1679, label %1671

1671:                                             ; preds = %1656
  %1672 = icmp eq i16 %1663, %1669
  br i1 %1672, label %1673, label %1680

1673:                                             ; preds = %1671
  %1674 = getelementptr inbounds i8, ptr %220, i64 %1661
  %1675 = load i8, ptr %1674, align 1, !tbaa !28
  %1676 = getelementptr inbounds i8, ptr %220, i64 %1667
  %1677 = load i8, ptr %1676, align 1, !tbaa !28
  %1678 = icmp ugt i8 %1675, %1677
  br i1 %1678, label %1680, label %1679

1679:                                             ; preds = %1673, %1656
  br label %1680

1680:                                             ; preds = %1679, %1673, %1671, %1654
  %1681 = phi i64 [ %1655, %1654 ], [ %1658, %1679 ], [ %1664, %1673 ], [ %1664, %1671 ]
  %1682 = phi i32 [ %1651, %1654 ], [ %1657, %1679 ], [ %1651, %1673 ], [ %1651, %1671 ]
  %1683 = load i16, ptr %1648, align 2, !tbaa !28
  %1684 = getelementptr inbounds [4 x i8], ptr %219, i64 %1681
  %1685 = load i32, ptr %1684, align 4, !tbaa !4
  %1686 = sext i32 %1685 to i64
  %1687 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1686
  %1688 = load i16, ptr %1687, align 2, !tbaa !28
  %1689 = icmp ult i16 %1683, %1688
  br i1 %1689, label %1703, label %1690

1690:                                             ; preds = %1680
  %1691 = icmp eq i16 %1683, %1688
  br i1 %1691, label %1692, label %1697

1692:                                             ; preds = %1690
  %1693 = load i8, ptr %1645, align 1, !tbaa !28
  %1694 = getelementptr inbounds i8, ptr %220, i64 %1686
  %1695 = load i8, ptr %1694, align 1, !tbaa !28
  %1696 = icmp ugt i8 %1693, %1695
  br i1 %1696, label %1697, label %1703

1697:                                             ; preds = %1692, %1690
  %1698 = sext i32 %1652 to i64
  %1699 = getelementptr inbounds [4 x i8], ptr %219, i64 %1698
  store i32 %1685, ptr %1699, align 4, !tbaa !4
  %1700 = shl i32 %1682, 1
  %1701 = load i32, ptr %153, align 4, !tbaa !46
  %1702 = icmp sgt i32 %1700, %1701
  br i1 %1702, label %1703, label %1649, !llvm.loop !53

1703:                                             ; preds = %1697, %1692, %1680
  %1704 = phi i32 [ %1652, %1680 ], [ %1652, %1692 ], [ %1682, %1697 ]
  %1705 = sext i32 %1704 to i64
  br label %1706

1706:                                             ; preds = %1703, %1636
  %1707 = phi i64 [ 1, %1636 ], [ %1705, %1703 ]
  %1708 = getelementptr inbounds [4 x i8], ptr %219, i64 %1707
  store i32 %1643, ptr %1708, align 4, !tbaa !4
  %1709 = load i32, ptr %225, align 4, !tbaa !4
  %1710 = load i32, ptr %154, align 8, !tbaa !47
  %1711 = add nsw i32 %1710, -1
  store i32 %1711, ptr %154, align 8, !tbaa !47
  %1712 = sext i32 %1711 to i64
  %1713 = getelementptr inbounds [4 x i8], ptr %219, i64 %1712
  store i32 %1639, ptr %1713, align 4, !tbaa !4
  %1714 = load i32, ptr %154, align 8, !tbaa !47
  %1715 = add nsw i32 %1714, -1
  store i32 %1715, ptr %154, align 8, !tbaa !47
  %1716 = sext i32 %1715 to i64
  %1717 = getelementptr inbounds [4 x i8], ptr %219, i64 %1716
  store i32 %1709, ptr %1717, align 4, !tbaa !4
  %1718 = sext i32 %1639 to i64
  %1719 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1718
  %1720 = load i16, ptr %1719, align 2, !tbaa !28
  %1721 = sext i32 %1709 to i64
  %1722 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1721
  %1723 = load i16, ptr %1722, align 2, !tbaa !28
  %1724 = add i16 %1723, %1720
  %1725 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1638
  store i16 %1724, ptr %1725, align 2, !tbaa !28
  %1726 = getelementptr inbounds i8, ptr %220, i64 %1718
  %1727 = load i8, ptr %1726, align 1, !tbaa !28
  %1728 = getelementptr inbounds i8, ptr %220, i64 %1721
  %1729 = load i8, ptr %1728, align 1, !tbaa !28
  %1730 = tail call i8 @llvm.umax.i8(i8 %1727, i8 %1729)
  %1731 = add i8 %1730, 1
  %1732 = getelementptr inbounds i8, ptr %220, i64 %1638
  store i8 %1731, ptr %1732, align 1, !tbaa !28
  %1733 = trunc nsw i64 %1638 to i32
  %1734 = trunc i64 %1638 to i16
  %1735 = getelementptr inbounds nuw i8, ptr %1722, i64 2
  store i16 %1734, ptr %1735, align 2, !tbaa !28
  %1736 = getelementptr inbounds nuw i8, ptr %1719, i64 2
  store i16 %1734, ptr %1736, align 2, !tbaa !28
  %1737 = add nsw i64 %1638, 1
  store i32 %1733, ptr %225, align 4, !tbaa !4
  %1738 = load i32, ptr %153, align 4, !tbaa !46
  %1739 = icmp slt i32 %1738, 2
  br i1 %1739, label %1797, label %1740

1740:                                             ; preds = %1706, %1788
  %1741 = phi i32 [ %1792, %1788 ], [ %1738, %1706 ]
  %1742 = phi i32 [ %1791, %1788 ], [ 2, %1706 ]
  %1743 = phi i32 [ %1773, %1788 ], [ 1, %1706 ]
  %1744 = icmp slt i32 %1742, %1741
  br i1 %1744, label %1747, label %1745

1745:                                             ; preds = %1740
  %1746 = sext i32 %1742 to i64
  br label %1771

1747:                                             ; preds = %1740
  %1748 = or disjoint i32 %1742, 1
  %1749 = sext i32 %1748 to i64
  %1750 = getelementptr inbounds [4 x i8], ptr %219, i64 %1749
  %1751 = load i32, ptr %1750, align 4, !tbaa !4
  %1752 = sext i32 %1751 to i64
  %1753 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1752
  %1754 = load i16, ptr %1753, align 2, !tbaa !28
  %1755 = sext i32 %1742 to i64
  %1756 = getelementptr inbounds [4 x i8], ptr %219, i64 %1755
  %1757 = load i32, ptr %1756, align 4, !tbaa !4
  %1758 = sext i32 %1757 to i64
  %1759 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1758
  %1760 = load i16, ptr %1759, align 2, !tbaa !28
  %1761 = icmp ult i16 %1754, %1760
  br i1 %1761, label %1770, label %1762

1762:                                             ; preds = %1747
  %1763 = icmp eq i16 %1754, %1760
  br i1 %1763, label %1764, label %1771

1764:                                             ; preds = %1762
  %1765 = getelementptr inbounds i8, ptr %220, i64 %1752
  %1766 = load i8, ptr %1765, align 1, !tbaa !28
  %1767 = getelementptr inbounds i8, ptr %220, i64 %1758
  %1768 = load i8, ptr %1767, align 1, !tbaa !28
  %1769 = icmp ugt i8 %1766, %1768
  br i1 %1769, label %1771, label %1770

1770:                                             ; preds = %1764, %1747
  br label %1771

1771:                                             ; preds = %1770, %1764, %1762, %1745
  %1772 = phi i64 [ %1746, %1745 ], [ %1749, %1770 ], [ %1755, %1764 ], [ %1755, %1762 ]
  %1773 = phi i32 [ %1742, %1745 ], [ %1748, %1770 ], [ %1742, %1764 ], [ %1742, %1762 ]
  %1774 = load i16, ptr %1725, align 2, !tbaa !28
  %1775 = getelementptr inbounds [4 x i8], ptr %219, i64 %1772
  %1776 = load i32, ptr %1775, align 4, !tbaa !4
  %1777 = sext i32 %1776 to i64
  %1778 = getelementptr inbounds [4 x i8], ptr %1493, i64 %1777
  %1779 = load i16, ptr %1778, align 2, !tbaa !28
  %1780 = icmp ult i16 %1774, %1779
  br i1 %1780, label %1794, label %1781

1781:                                             ; preds = %1771
  %1782 = icmp eq i16 %1774, %1779
  br i1 %1782, label %1783, label %1788

1783:                                             ; preds = %1781
  %1784 = load i8, ptr %1732, align 1, !tbaa !28
  %1785 = getelementptr inbounds i8, ptr %220, i64 %1777
  %1786 = load i8, ptr %1785, align 1, !tbaa !28
  %1787 = icmp ugt i8 %1784, %1786
  br i1 %1787, label %1788, label %1794

1788:                                             ; preds = %1783, %1781
  %1789 = sext i32 %1743 to i64
  %1790 = getelementptr inbounds [4 x i8], ptr %219, i64 %1789
  store i32 %1776, ptr %1790, align 4, !tbaa !4
  %1791 = shl i32 %1773, 1
  %1792 = load i32, ptr %153, align 4, !tbaa !46
  %1793 = icmp sgt i32 %1791, %1792
  br i1 %1793, label %1794, label %1740, !llvm.loop !53

1794:                                             ; preds = %1788, %1783, %1771
  %1795 = phi i32 [ %1743, %1771 ], [ %1743, %1783 ], [ %1773, %1788 ]
  %1796 = sext i32 %1795 to i64
  br label %1797

1797:                                             ; preds = %1794, %1706
  %1798 = phi i64 [ 1, %1706 ], [ %1796, %1794 ]
  %1799 = getelementptr inbounds [4 x i8], ptr %219, i64 %1798
  store i32 %1733, ptr %1799, align 4, !tbaa !4
  %1800 = load i32, ptr %153, align 4, !tbaa !46
  %1801 = icmp sgt i32 %1800, 1
  br i1 %1801, label %1636, label %1802, !llvm.loop !55

1802:                                             ; preds = %1797
  %1803 = load i32, ptr %225, align 4, !tbaa !4
  %1804 = load i32, ptr %154, align 8, !tbaa !47
  %1805 = add nsw i32 %1804, -1
  store i32 %1805, ptr %154, align 8, !tbaa !47
  %1806 = sext i32 %1805 to i64
  %1807 = getelementptr inbounds [4 x i8], ptr %219, i64 %1806
  store i32 %1803, ptr %1807, align 4, !tbaa !4
  %1808 = load ptr, ptr %1492, align 8, !tbaa !40
  %1809 = load i32, ptr %1558, align 8, !tbaa !52
  %1810 = load ptr, ptr %1494, align 8, !tbaa !41
  %1811 = load ptr, ptr %1810, align 8, !tbaa !42
  %1812 = getelementptr inbounds nuw i8, ptr %1810, i64 8
  %1813 = load ptr, ptr %1812, align 8, !tbaa !56
  %1814 = getelementptr inbounds nuw i8, ptr %1810, i64 16
  %1815 = load i32, ptr %1814, align 8, !tbaa !57
  %1816 = getelementptr inbounds nuw i8, ptr %1810, i64 24
  %1817 = load i32, ptr %1816, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %481, i8 0, i64 32, i1 false), !tbaa !59
  %1818 = load i32, ptr %154, align 8, !tbaa !47
  %1819 = sext i32 %1818 to i64
  %1820 = getelementptr inbounds [4 x i8], ptr %219, i64 %1819
  %1821 = load i32, ptr %1820, align 4, !tbaa !4
  %1822 = sext i32 %1821 to i64
  %1823 = getelementptr inbounds [4 x i8], ptr %1808, i64 %1822
  %1824 = getelementptr inbounds nuw i8, ptr %1823, i64 2
  store i16 0, ptr %1824, align 2, !tbaa !28
  %1825 = load i32, ptr %154, align 8, !tbaa !47
  %1826 = icmp slt i32 %1825, 572
  br i1 %1826, label %1827, label %1956

1827:                                             ; preds = %1802
  %1828 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1829 = icmp eq ptr %1811, null
  %1830 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1831 = sext i32 %1825 to i64
  %1832 = add nsw i64 %1831, 1
  br label %1833

1833:                                             ; preds = %1884, %1827
  %1834 = phi i64 [ %1832, %1827 ], [ %1885, %1884 ]
  %1835 = phi i32 [ 0, %1827 ], [ %1851, %1884 ]
  %1836 = getelementptr inbounds [4 x i8], ptr %219, i64 %1834
  %1837 = load i32, ptr %1836, align 4, !tbaa !4
  %1838 = sext i32 %1837 to i64
  %1839 = getelementptr inbounds [4 x i8], ptr %1808, i64 %1838
  %1840 = getelementptr inbounds nuw i8, ptr %1839, i64 2
  %1841 = load i16, ptr %1840, align 2, !tbaa !28
  %1842 = zext i16 %1841 to i64
  %1843 = getelementptr inbounds nuw [4 x i8], ptr %1808, i64 %1842
  %1844 = getelementptr inbounds nuw i8, ptr %1843, i64 2
  %1845 = load i16, ptr %1844, align 2, !tbaa !28
  %1846 = zext i16 %1845 to i32
  %1847 = add nuw nsw i32 %1846, 1
  %1848 = icmp sle i32 %1817, %1846
  %1849 = select i1 %1848, i32 %1817, i32 %1847
  %1850 = zext i1 %1848 to i32
  %1851 = add nuw nsw i32 %1835, %1850
  %1852 = trunc i32 %1849 to i16
  store i16 %1852, ptr %1840, align 2, !tbaa !28
  %1853 = icmp sgt i32 %1837, %1809
  br i1 %1853, label %1884, label %1854

1854:                                             ; preds = %1833
  %1855 = sext i32 %1849 to i64
  %1856 = getelementptr inbounds [2 x i8], ptr %481, i64 %1855
  %1857 = load i16, ptr %1856, align 2, !tbaa !59
  %1858 = add i16 %1857, 1
  store i16 %1858, ptr %1856, align 2, !tbaa !59
  %1859 = icmp slt i32 %1837, %1815
  br i1 %1859, label %1865, label %1860

1860:                                             ; preds = %1854
  %1861 = sub nsw i32 %1837, %1815
  %1862 = zext nneg i32 %1861 to i64
  %1863 = getelementptr inbounds nuw [4 x i8], ptr %1813, i64 %1862
  %1864 = load i32, ptr %1863, align 4, !tbaa !4
  br label %1865

1865:                                             ; preds = %1860, %1854
  %1866 = phi i32 [ %1864, %1860 ], [ 0, %1854 ]
  %1867 = load i16, ptr %1839, align 2, !tbaa !28
  %1868 = zext i16 %1867 to i64
  %1869 = add nsw i32 %1866, %1849
  %1870 = zext i32 %1869 to i64
  %1871 = mul nuw nsw i64 %1868, %1870
  %1872 = load i64, ptr %1828, align 8, !tbaa !49
  %1873 = add i64 %1871, %1872
  store i64 %1873, ptr %1828, align 8, !tbaa !49
  br i1 %1829, label %1884, label %1874

1874:                                             ; preds = %1865
  %1875 = getelementptr inbounds [4 x i8], ptr %1811, i64 %1838
  %1876 = getelementptr inbounds nuw i8, ptr %1875, i64 2
  %1877 = load i16, ptr %1876, align 2, !tbaa !28
  %1878 = zext i16 %1877 to i32
  %1879 = add nsw i32 %1866, %1878
  %1880 = zext i32 %1879 to i64
  %1881 = mul nuw nsw i64 %1880, %1868
  %1882 = load i64, ptr %1830, align 8, !tbaa !50
  %1883 = add i64 %1881, %1882
  store i64 %1883, ptr %1830, align 8, !tbaa !50
  br label %1884

1884:                                             ; preds = %1874, %1865, %1833
  %1885 = add nsw i64 %1834, 1
  %1886 = and i64 %1885, 4294967295
  %1887 = icmp eq i64 %1886, 573
  br i1 %1887, label %1888, label %1833, !llvm.loop !60

1888:                                             ; preds = %1884
  %1889 = icmp eq i32 %1851, 0
  br i1 %1889, label %1956, label %1890

1890:                                             ; preds = %1888
  %1891 = sext i32 %1817 to i64
  %1892 = getelementptr inbounds [2 x i8], ptr %481, i64 %1891
  br label %1893

1893:                                             ; preds = %1901, %1890
  %1894 = phi i32 [ %1911, %1901 ], [ %1851, %1890 ]
  br label %1895

1895:                                             ; preds = %1895, %1893
  %1896 = phi i64 [ %1897, %1895 ], [ %1891, %1893 ]
  %1897 = add nsw i64 %1896, -1
  %1898 = getelementptr inbounds [2 x i8], ptr %481, i64 %1897
  %1899 = load i16, ptr %1898, align 2, !tbaa !59
  %1900 = icmp eq i16 %1899, 0
  br i1 %1900, label %1895, label %1901, !llvm.loop !61

1901:                                             ; preds = %1895
  %1902 = getelementptr inbounds [2 x i8], ptr %481, i64 %1897
  %1903 = add i16 %1899, -1
  store i16 %1903, ptr %1902, align 2, !tbaa !59
  %1904 = shl i64 %1896, 32
  %1905 = ashr exact i64 %1904, 31
  %1906 = getelementptr inbounds i8, ptr %481, i64 %1905
  %1907 = load i16, ptr %1906, align 2, !tbaa !59
  %1908 = add i16 %1907, 2
  store i16 %1908, ptr %1906, align 2, !tbaa !59
  %1909 = load i16, ptr %1892, align 2, !tbaa !59
  %1910 = add i16 %1909, -1
  store i16 %1910, ptr %1892, align 2, !tbaa !59
  %1911 = add nsw i32 %1894, -2
  %1912 = icmp sgt i32 %1894, 2
  br i1 %1912, label %1893, label %1913, !llvm.loop !62

1913:                                             ; preds = %1901
  %1914 = icmp eq i32 %1817, 0
  br i1 %1914, label %1956, label %1915

1915:                                             ; preds = %1913, %1924
  %1916 = phi i64 [ %1926, %1924 ], [ %1891, %1913 ]
  %1917 = phi i32 [ %1925, %1924 ], [ 573, %1913 ]
  %1918 = getelementptr inbounds [2 x i8], ptr %481, i64 %1916
  %1919 = load i16, ptr %1918, align 2, !tbaa !59
  %1920 = icmp eq i16 %1919, 0
  br i1 %1920, label %1924, label %1921

1921:                                             ; preds = %1915
  %1922 = zext i16 %1919 to i32
  %1923 = trunc i64 %1916 to i16
  br label %1928

1924:                                             ; preds = %1953, %1915
  %1925 = phi i32 [ %1917, %1915 ], [ %1939, %1953 ]
  %1926 = add nsw i64 %1916, -1
  %1927 = icmp eq i64 %1926, 0
  br i1 %1927, label %1956, label %1915, !llvm.loop !63

1928:                                             ; preds = %1953, %1921
  %1929 = phi i32 [ %1917, %1921 ], [ %1939, %1953 ]
  %1930 = phi i32 [ %1922, %1921 ], [ %1954, %1953 ]
  %1931 = sext i32 %1929 to i64
  br label %1932

1932:                                             ; preds = %1932, %1928
  %1933 = phi i64 [ %1931, %1928 ], [ %1934, %1932 ]
  %1934 = add nsw i64 %1933, -1
  %1935 = getelementptr inbounds [4 x i8], ptr %219, i64 %1934
  %1936 = load i32, ptr %1935, align 4, !tbaa !4
  %1937 = icmp sgt i32 %1936, %1809
  br i1 %1937, label %1932, label %1938, !llvm.loop !64

1938:                                             ; preds = %1932
  %1939 = trunc nsw i64 %1934 to i32
  %1940 = sext i32 %1936 to i64
  %1941 = getelementptr inbounds [4 x i8], ptr %1808, i64 %1940
  %1942 = getelementptr inbounds nuw i8, ptr %1941, i64 2
  %1943 = load i16, ptr %1942, align 2, !tbaa !28
  %1944 = zext i16 %1943 to i64
  %1945 = icmp eq i64 %1916, %1944
  br i1 %1945, label %1953, label %1946

1946:                                             ; preds = %1938
  %1947 = sub nsw i64 %1916, %1944
  %1948 = load i16, ptr %1941, align 2, !tbaa !28
  %1949 = zext i16 %1948 to i64
  %1950 = mul nsw i64 %1947, %1949
  %1951 = load i64, ptr %1828, align 8, !tbaa !49
  %1952 = add i64 %1950, %1951
  store i64 %1952, ptr %1828, align 8, !tbaa !49
  store i16 %1923, ptr %1942, align 2, !tbaa !28
  br label %1953

1953:                                             ; preds = %1946, %1938
  %1954 = add nsw i32 %1930, -1
  %1955 = icmp eq i32 %1954, 0
  br i1 %1955, label %1924, label %1928, !llvm.loop !64

1956:                                             ; preds = %1924, %1913, %1888, %1802
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %1957 = load i16, ptr %481, align 2, !tbaa !59
  %1958 = shl i16 %1957, 1
  %1959 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %1958, ptr %1959, align 2, !tbaa !59
  %1960 = load i16, ptr %624, align 2, !tbaa !59
  %1961 = add i16 %1960, %1958
  %1962 = shl i16 %1961, 1
  %1963 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %1962, ptr %1963, align 4, !tbaa !59
  %1964 = load i16, ptr %629, align 2, !tbaa !59
  %1965 = add i16 %1964, %1962
  %1966 = shl i16 %1965, 1
  %1967 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %1966, ptr %1967, align 2, !tbaa !59
  %1968 = load i16, ptr %634, align 2, !tbaa !59
  %1969 = add i16 %1968, %1966
  %1970 = shl i16 %1969, 1
  %1971 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %1970, ptr %1971, align 8, !tbaa !59
  %1972 = load i16, ptr %639, align 2, !tbaa !59
  %1973 = add i16 %1972, %1970
  %1974 = shl i16 %1973, 1
  %1975 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %1974, ptr %1975, align 2, !tbaa !59
  %1976 = load i16, ptr %644, align 2, !tbaa !59
  %1977 = add i16 %1976, %1974
  %1978 = shl i16 %1977, 1
  %1979 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %1978, ptr %1979, align 4, !tbaa !59
  %1980 = load i16, ptr %649, align 2, !tbaa !59
  %1981 = add i16 %1980, %1978
  %1982 = shl i16 %1981, 1
  %1983 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %1982, ptr %1983, align 2, !tbaa !59
  %1984 = load i16, ptr %654, align 2, !tbaa !59
  %1985 = add i16 %1984, %1982
  %1986 = shl i16 %1985, 1
  %1987 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %1986, ptr %1987, align 16, !tbaa !59
  %1988 = load i16, ptr %659, align 2, !tbaa !59
  %1989 = add i16 %1988, %1986
  %1990 = shl i16 %1989, 1
  %1991 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %1990, ptr %1991, align 2, !tbaa !59
  %1992 = load i16, ptr %664, align 2, !tbaa !59
  %1993 = add i16 %1992, %1990
  %1994 = shl i16 %1993, 1
  %1995 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %1994, ptr %1995, align 4, !tbaa !59
  %1996 = load i16, ptr %669, align 2, !tbaa !59
  %1997 = add i16 %1996, %1994
  %1998 = shl i16 %1997, 1
  %1999 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %1998, ptr %1999, align 2, !tbaa !59
  %2000 = load i16, ptr %674, align 2, !tbaa !59
  %2001 = add i16 %2000, %1998
  %2002 = shl i16 %2001, 1
  %2003 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2002, ptr %2003, align 8, !tbaa !59
  %2004 = load i16, ptr %679, align 2, !tbaa !59
  %2005 = add i16 %2004, %2002
  %2006 = shl i16 %2005, 1
  %2007 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2006, ptr %2007, align 2, !tbaa !59
  %2008 = load i16, ptr %684, align 2, !tbaa !59
  %2009 = add i16 %2008, %2006
  %2010 = shl i16 %2009, 1
  %2011 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2010, ptr %2011, align 4, !tbaa !59
  %2012 = load i16, ptr %689, align 2, !tbaa !59
  %2013 = add i16 %2012, %2010
  %2014 = shl i16 %2013, 1
  %2015 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2014, ptr %2015, align 2, !tbaa !59
  %2016 = icmp slt i32 %1556, 0
  br i1 %2016, label %2077, label %2017

2017:                                             ; preds = %1956
  %2018 = add nuw i32 %1556, 1
  %2019 = zext i32 %2018 to i64
  br label %2020

2020:                                             ; preds = %2074, %2017
  %2021 = phi i64 [ 0, %2017 ], [ %2075, %2074 ]
  %2022 = getelementptr inbounds nuw [4 x i8], ptr %1493, i64 %2021
  %2023 = getelementptr inbounds nuw i8, ptr %2022, i64 2
  %2024 = load i16, ptr %2023, align 2, !tbaa !28
  %2025 = icmp eq i16 %2024, 0
  br i1 %2025, label %2074, label %2026

2026:                                             ; preds = %2020
  %2027 = zext i16 %2024 to i32
  %2028 = zext i16 %2024 to i64
  %2029 = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %2028
  %2030 = load i16, ptr %2029, align 2, !tbaa !59
  %2031 = add i16 %2030, 1
  store i16 %2031, ptr %2029, align 2, !tbaa !59
  %2032 = and i32 %2027, 3
  %2033 = icmp ult i16 %2024, 4
  br i1 %2033, label %2058, label %2034

2034:                                             ; preds = %2026
  %2035 = and i32 %2027, 65532
  br label %2036

2036:                                             ; preds = %2036, %2034
  %2037 = phi i16 [ %2030, %2034 ], [ %2052, %2036 ]
  %2038 = phi i16 [ 0, %2034 ], [ %2053, %2036 ]
  %2039 = phi i32 [ 0, %2034 ], [ %2054, %2036 ]
  %2040 = and i16 %2037, 1
  %2041 = or disjoint i16 %2038, %2040
  %2042 = shl i16 %2041, 2
  %2043 = and i16 %2037, 2
  %2044 = or disjoint i16 %2042, %2043
  %2045 = lshr i16 %2037, 2
  %2046 = and i16 %2045, 1
  %2047 = or disjoint i16 %2044, %2046
  %2048 = lshr i16 %2037, 3
  %2049 = shl i16 %2047, 1
  %2050 = and i16 %2048, 1
  %2051 = or disjoint i16 %2049, %2050
  %2052 = lshr i16 %2037, 4
  %2053 = shl i16 %2051, 1
  %2054 = add i32 %2039, 4
  %2055 = icmp eq i32 %2054, %2035
  br i1 %2055, label %2056, label %2036, !llvm.loop !65

2056:                                             ; preds = %2036
  %2057 = icmp eq i32 %2032, 0
  br i1 %2057, label %2072, label %2058

2058:                                             ; preds = %2056, %2026
  %2059 = phi i16 [ %2030, %2026 ], [ %2052, %2056 ]
  %2060 = phi i16 [ 0, %2026 ], [ %2053, %2056 ]
  %2061 = icmp ne i32 %2032, 0
  tail call void @llvm.assume(i1 %2061)
  br label %2062

2062:                                             ; preds = %2062, %2058
  %2063 = phi i16 [ %2059, %2058 ], [ %2068, %2062 ]
  %2064 = phi i16 [ %2060, %2058 ], [ %2069, %2062 ]
  %2065 = phi i32 [ 0, %2058 ], [ %2070, %2062 ]
  %2066 = and i16 %2063, 1
  %2067 = or disjoint i16 %2064, %2066
  %2068 = lshr i16 %2063, 1
  %2069 = shl i16 %2067, 1
  %2070 = add i32 %2065, 1
  %2071 = icmp eq i32 %2070, %2032
  br i1 %2071, label %2072, label %2062, !llvm.loop !73

2072:                                             ; preds = %2062, %2056
  %2073 = phi i16 [ %2051, %2056 ], [ %2067, %2062 ]
  store i16 %2073, ptr %2022, align 2, !tbaa !28
  br label %2074

2074:                                             ; preds = %2072, %2020
  %2075 = add nuw nsw i64 %2021, 1
  %2076 = icmp eq i64 %2075, %2019
  br i1 %2076, label %2077, label %2020, !llvm.loop !68

2077:                                             ; preds = %2074, %1956
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %2078 = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %2079 = load i16, ptr %2078, align 2, !tbaa !28
  %2080 = icmp eq i16 %2079, 0
  br i1 %2080, label %2081, label %2142

2081:                                             ; preds = %2077
  %2082 = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %2083 = load i16, ptr %2082, align 2, !tbaa !28
  %2084 = icmp eq i16 %2083, 0
  br i1 %2084, label %2085, label %2142

2085:                                             ; preds = %2081
  %2086 = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %2087 = load i16, ptr %2086, align 2, !tbaa !28
  %2088 = icmp eq i16 %2087, 0
  br i1 %2088, label %2089, label %2142

2089:                                             ; preds = %2085
  %2090 = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %2091 = load i16, ptr %2090, align 2, !tbaa !28
  %2092 = icmp eq i16 %2091, 0
  br i1 %2092, label %2093, label %2142

2093:                                             ; preds = %2089
  %2094 = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %2095 = load i16, ptr %2094, align 2, !tbaa !28
  %2096 = icmp eq i16 %2095, 0
  br i1 %2096, label %2097, label %2142

2097:                                             ; preds = %2093
  %2098 = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %2099 = load i16, ptr %2098, align 2, !tbaa !28
  %2100 = icmp eq i16 %2099, 0
  br i1 %2100, label %2101, label %2142

2101:                                             ; preds = %2097
  %2102 = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %2103 = load i16, ptr %2102, align 2, !tbaa !28
  %2104 = icmp eq i16 %2103, 0
  br i1 %2104, label %2105, label %2142

2105:                                             ; preds = %2101
  %2106 = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %2107 = load i16, ptr %2106, align 2, !tbaa !28
  %2108 = icmp eq i16 %2107, 0
  br i1 %2108, label %2109, label %2142

2109:                                             ; preds = %2105
  %2110 = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %2111 = load i16, ptr %2110, align 2, !tbaa !28
  %2112 = icmp eq i16 %2111, 0
  br i1 %2112, label %2113, label %2142

2113:                                             ; preds = %2109
  %2114 = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %2115 = load i16, ptr %2114, align 2, !tbaa !28
  %2116 = icmp eq i16 %2115, 0
  br i1 %2116, label %2117, label %2142

2117:                                             ; preds = %2113
  %2118 = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %2119 = load i16, ptr %2118, align 2, !tbaa !28
  %2120 = icmp eq i16 %2119, 0
  br i1 %2120, label %2121, label %2142

2121:                                             ; preds = %2117
  %2122 = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %2123 = load i16, ptr %2122, align 2, !tbaa !28
  %2124 = icmp eq i16 %2123, 0
  br i1 %2124, label %2125, label %2142

2125:                                             ; preds = %2121
  %2126 = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %2127 = load i16, ptr %2126, align 2, !tbaa !28
  %2128 = icmp eq i16 %2127, 0
  br i1 %2128, label %2129, label %2142

2129:                                             ; preds = %2125
  %2130 = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %2131 = load i16, ptr %2130, align 2, !tbaa !28
  %2132 = icmp eq i16 %2131, 0
  br i1 %2132, label %2133, label %2142

2133:                                             ; preds = %2129
  %2134 = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %2135 = load i16, ptr %2134, align 2, !tbaa !28
  %2136 = icmp eq i16 %2135, 0
  br i1 %2136, label %2137, label %2142

2137:                                             ; preds = %2133
  %2138 = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %2139 = load i16, ptr %2138, align 2, !tbaa !28
  %2140 = icmp eq i16 %2139, 0
  %2141 = select i1 %2140, i32 2, i32 3
  br label %2142

2142:                                             ; preds = %2077, %2081, %2085, %2089, %2093, %2097, %2101, %2105, %2109, %2113, %2117, %2121, %2125, %2129, %2133, %2137
  %2143 = phi i32 [ 18, %2077 ], [ 10, %2109 ], [ 17, %2081 ], [ %2141, %2137 ], [ 16, %2085 ], [ 8, %2117 ], [ 15, %2089 ], [ 4, %2133 ], [ 14, %2093 ], [ 9, %2113 ], [ 13, %2097 ], [ 5, %2129 ], [ 12, %2101 ], [ 7, %2121 ], [ 11, %2105 ], [ 6, %2125 ]
  %2144 = mul nuw nsw i32 %2143, 3
  %2145 = add nuw nsw i32 %2144, 17
  %2146 = zext nneg i32 %2145 to i64
  %2147 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2148 = load i64, ptr %2147, align 8, !tbaa !49
  %2149 = add i64 %2148, %2146
  store i64 %2149, ptr %2147, align 8, !tbaa !49
  %2150 = add i64 %2149, 10
  %2151 = lshr i64 %2150, 3
  %2152 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2153 = load i64, ptr %2152, align 8, !tbaa !50
  %2154 = add i64 %2153, 10
  %2155 = lshr i64 %2154, 3
  %2156 = icmp samesign ugt i64 %2155, %2151
  br i1 %2156, label %2157, label %2163

2157:                                             ; preds = %2142
  %2158 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2159 = load i32, ptr %2158, align 8, !tbaa !74
  %2160 = icmp eq i32 %2159, 4
  br i1 %2160, label %2163, label %2169

2161:                                             ; preds = %4
  %2162 = add i64 %2, 5
  br label %2163

2163:                                             ; preds = %2142, %2157, %2161
  %2164 = phi i64 [ %2162, %2161 ], [ %2155, %2157 ], [ %2155, %2142 ]
  %2165 = add i64 %2, 4
  %2166 = icmp ule i64 %2165, %2164
  %2167 = icmp ne ptr %1, null
  %2168 = and i1 %2167, %2166
  br i1 %2168, label %2174, label %2282

2169:                                             ; preds = %2157
  %2170 = add i64 %2, 4
  %2171 = icmp ule i64 %2170, %2151
  %2172 = icmp ne ptr %1, null
  %2173 = and i1 %2172, %2171
  br i1 %2173, label %2174, label %2584

2174:                                             ; preds = %2169, %2163
  %2175 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2176 = load i32, ptr %2175, align 4, !tbaa !26
  %2177 = icmp sgt i32 %2176, 13
  br i1 %2177, label %2178, label %2204

2178:                                             ; preds = %2174
  %2179 = and i32 %3, 65535
  %2180 = shl i32 %3, %2176
  %2181 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2182 = load i16, ptr %2181, align 8, !tbaa !25
  %2183 = trunc i32 %2180 to i16
  %2184 = or i16 %2182, %2183
  store i16 %2184, ptr %2181, align 8, !tbaa !25
  %2185 = trunc i16 %2184 to i8
  %2186 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2187 = load ptr, ptr %2186, align 8, !tbaa !32
  %2188 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2189 = load i64, ptr %2188, align 8, !tbaa !33
  %2190 = add i64 %2189, 1
  store i64 %2190, ptr %2188, align 8, !tbaa !33
  %2191 = getelementptr inbounds nuw i8, ptr %2187, i64 %2189
  store i8 %2185, ptr %2191, align 1, !tbaa !28
  %2192 = load i16, ptr %2181, align 8, !tbaa !25
  %2193 = lshr i16 %2192, 8
  %2194 = trunc nuw i16 %2193 to i8
  %2195 = load ptr, ptr %2186, align 8, !tbaa !32
  %2196 = load i64, ptr %2188, align 8, !tbaa !33
  %2197 = add i64 %2196, 1
  store i64 %2197, ptr %2188, align 8, !tbaa !33
  %2198 = getelementptr inbounds nuw i8, ptr %2195, i64 %2196
  store i8 %2194, ptr %2198, align 1, !tbaa !28
  %2199 = load i32, ptr %2175, align 4, !tbaa !26
  %2200 = sub nsw i32 16, %2199
  %2201 = lshr i32 %2179, %2200
  %2202 = trunc nuw i32 %2201 to i16
  store i16 %2202, ptr %2181, align 8, !tbaa !25
  %2203 = add nsw i32 %2199, -13
  br label %2211

2204:                                             ; preds = %2174
  %2205 = shl i32 %3, %2176
  %2206 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2207 = load i16, ptr %2206, align 8, !tbaa !25
  %2208 = trunc i32 %2205 to i16
  %2209 = or i16 %2207, %2208
  store i16 %2209, ptr %2206, align 8, !tbaa !25
  %2210 = add nsw i32 %2176, 3
  br label %2211

2211:                                             ; preds = %2204, %2178
  %2212 = phi i16 [ %2209, %2204 ], [ %2202, %2178 ]
  %2213 = phi i32 [ %2210, %2204 ], [ %2203, %2178 ]
  store i32 %2213, ptr %2175, align 4, !tbaa !26
  %2214 = icmp sgt i32 %2213, 8
  br i1 %2214, label %2215, label %2231

2215:                                             ; preds = %2211
  %2216 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2217 = trunc i16 %2212 to i8
  %2218 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2219 = load ptr, ptr %2218, align 8, !tbaa !32
  %2220 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2221 = load i64, ptr %2220, align 8, !tbaa !33
  %2222 = add i64 %2221, 1
  store i64 %2222, ptr %2220, align 8, !tbaa !33
  %2223 = getelementptr inbounds nuw i8, ptr %2219, i64 %2221
  store i8 %2217, ptr %2223, align 1, !tbaa !28
  %2224 = load i16, ptr %2216, align 8, !tbaa !25
  %2225 = lshr i16 %2224, 8
  %2226 = trunc nuw i16 %2225 to i8
  %2227 = load ptr, ptr %2218, align 8, !tbaa !32
  %2228 = load i64, ptr %2220, align 8, !tbaa !33
  %2229 = add i64 %2228, 1
  store i64 %2229, ptr %2220, align 8, !tbaa !33
  %2230 = getelementptr inbounds nuw i8, ptr %2227, i64 %2228
  store i8 %2226, ptr %2230, align 1, !tbaa !28
  br label %2241

2231:                                             ; preds = %2211
  %2232 = icmp sgt i32 %2213, 0
  br i1 %2232, label %2233, label %2241

2233:                                             ; preds = %2231
  %2234 = trunc i16 %2212 to i8
  %2235 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2236 = load ptr, ptr %2235, align 8, !tbaa !32
  %2237 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2238 = load i64, ptr %2237, align 8, !tbaa !33
  %2239 = add i64 %2238, 1
  store i64 %2239, ptr %2237, align 8, !tbaa !33
  %2240 = getelementptr inbounds nuw i8, ptr %2236, i64 %2238
  store i8 %2234, ptr %2240, align 1, !tbaa !28
  br label %2241

2241:                                             ; preds = %2233, %2231, %2215
  %2242 = load i32, ptr %2175, align 4, !tbaa !26
  %2243 = add i32 %2242, 7
  %2244 = and i32 %2243, 7
  %2245 = add nuw nsw i32 %2244, 1
  %2246 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2245, ptr %2246, align 8, !tbaa !27
  %2247 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %2247, align 8, !tbaa !25
  store i32 0, ptr %2175, align 4, !tbaa !26
  %2248 = trunc i64 %2 to i8
  %2249 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2250 = load ptr, ptr %2249, align 8, !tbaa !32
  %2251 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2252 = load i64, ptr %2251, align 8, !tbaa !33
  %2253 = add i64 %2252, 1
  store i64 %2253, ptr %2251, align 8, !tbaa !33
  %2254 = getelementptr inbounds nuw i8, ptr %2250, i64 %2252
  store i8 %2248, ptr %2254, align 1, !tbaa !28
  %2255 = lshr i64 %2, 8
  %2256 = trunc i64 %2255 to i8
  %2257 = load ptr, ptr %2249, align 8, !tbaa !32
  %2258 = load i64, ptr %2251, align 8, !tbaa !33
  %2259 = add i64 %2258, 1
  store i64 %2259, ptr %2251, align 8, !tbaa !33
  %2260 = getelementptr inbounds nuw i8, ptr %2257, i64 %2258
  store i8 %2256, ptr %2260, align 1, !tbaa !28
  %2261 = trunc i64 %2 to i32
  %2262 = xor i32 %2261, 65535
  %2263 = trunc i32 %2262 to i8
  %2264 = load ptr, ptr %2249, align 8, !tbaa !32
  %2265 = load i64, ptr %2251, align 8, !tbaa !33
  %2266 = add i64 %2265, 1
  store i64 %2266, ptr %2251, align 8, !tbaa !33
  %2267 = getelementptr inbounds nuw i8, ptr %2264, i64 %2265
  store i8 %2263, ptr %2267, align 1, !tbaa !28
  %2268 = lshr i32 %2262, 8
  %2269 = trunc i32 %2268 to i8
  %2270 = load ptr, ptr %2249, align 8, !tbaa !32
  %2271 = load i64, ptr %2251, align 8, !tbaa !33
  %2272 = add i64 %2271, 1
  store i64 %2272, ptr %2251, align 8, !tbaa !33
  %2273 = getelementptr inbounds nuw i8, ptr %2270, i64 %2271
  store i8 %2269, ptr %2273, align 1, !tbaa !28
  %2274 = icmp eq i64 %2, 0
  br i1 %2274, label %2279, label %2275

2275:                                             ; preds = %2241
  %2276 = load ptr, ptr %2249, align 8, !tbaa !32
  %2277 = load i64, ptr %2251, align 8, !tbaa !33
  %2278 = getelementptr inbounds nuw i8, ptr %2276, i64 %2277
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2278, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2279

2279:                                             ; preds = %2241, %2275
  %2280 = load i64, ptr %2251, align 8, !tbaa !33
  %2281 = add i64 %2280, %2
  store i64 %2281, ptr %2251, align 8, !tbaa !33
  br label %3721

2282:                                             ; preds = %2163
  %2283 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2284 = load i32, ptr %2283, align 4, !tbaa !26
  %2285 = icmp sgt i32 %2284, 13
  %2286 = add i32 %3, 2
  br i1 %2285, label %2287, label %2313

2287:                                             ; preds = %2282
  %2288 = and i32 %2286, 65535
  %2289 = shl i32 %2286, %2284
  %2290 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2291 = load i16, ptr %2290, align 8, !tbaa !25
  %2292 = trunc i32 %2289 to i16
  %2293 = or i16 %2291, %2292
  store i16 %2293, ptr %2290, align 8, !tbaa !25
  %2294 = trunc i16 %2293 to i8
  %2295 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2296 = load ptr, ptr %2295, align 8, !tbaa !32
  %2297 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2298 = load i64, ptr %2297, align 8, !tbaa !33
  %2299 = add i64 %2298, 1
  store i64 %2299, ptr %2297, align 8, !tbaa !33
  %2300 = getelementptr inbounds nuw i8, ptr %2296, i64 %2298
  store i8 %2294, ptr %2300, align 1, !tbaa !28
  %2301 = load i16, ptr %2290, align 8, !tbaa !25
  %2302 = lshr i16 %2301, 8
  %2303 = trunc nuw i16 %2302 to i8
  %2304 = load ptr, ptr %2295, align 8, !tbaa !32
  %2305 = load i64, ptr %2297, align 8, !tbaa !33
  %2306 = add i64 %2305, 1
  store i64 %2306, ptr %2297, align 8, !tbaa !33
  %2307 = getelementptr inbounds nuw i8, ptr %2304, i64 %2305
  store i8 %2303, ptr %2307, align 1, !tbaa !28
  %2308 = load i32, ptr %2283, align 4, !tbaa !26
  %2309 = sub nsw i32 16, %2308
  %2310 = lshr i32 %2288, %2309
  %2311 = trunc nuw i32 %2310 to i16
  store i16 %2311, ptr %2290, align 8, !tbaa !25
  %2312 = add nsw i32 %2308, -13
  br label %2320

2313:                                             ; preds = %2282
  %2314 = shl i32 %2286, %2284
  %2315 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2316 = load i16, ptr %2315, align 8, !tbaa !25
  %2317 = trunc i32 %2314 to i16
  %2318 = or i16 %2316, %2317
  store i16 %2318, ptr %2315, align 8, !tbaa !25
  %2319 = add nsw i32 %2284, 3
  br label %2320

2320:                                             ; preds = %2313, %2287
  %2321 = phi i16 [ %2318, %2313 ], [ %2311, %2287 ]
  %2322 = phi i32 [ %2319, %2313 ], [ %2312, %2287 ]
  store i32 %2322, ptr %2283, align 4, !tbaa !26
  %2323 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2324 = load i32, ptr %2323, align 4, !tbaa !31
  %2325 = icmp eq i32 %2324, 0
  br i1 %2325, label %2558, label %2326

2326:                                             ; preds = %2320
  %2327 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2328 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2329 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2330 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %2331

2331:                                             ; preds = %2553, %2326
  %2332 = phi i16 [ %2554, %2553 ], [ %2321, %2326 ]
  %2333 = phi i32 [ %2555, %2553 ], [ %2322, %2326 ]
  %2334 = phi i32 [ %2348, %2553 ], [ 0, %2326 ]
  %2335 = load ptr, ptr %2327, align 8, !tbaa !75
  %2336 = add nuw i32 %2334, 1
  %2337 = zext i32 %2334 to i64
  %2338 = getelementptr inbounds nuw i8, ptr %2335, i64 %2337
  %2339 = load i8, ptr %2338, align 1, !tbaa !28
  %2340 = zext i8 %2339 to i32
  %2341 = add i32 %2334, 2
  %2342 = zext i32 %2336 to i64
  %2343 = getelementptr inbounds nuw i8, ptr %2335, i64 %2342
  %2344 = load i8, ptr %2343, align 1, !tbaa !28
  %2345 = zext i8 %2344 to i32
  %2346 = shl nuw nsw i32 %2345, 8
  %2347 = or disjoint i32 %2346, %2340
  %2348 = add i32 %2334, 3
  %2349 = zext i32 %2341 to i64
  %2350 = getelementptr inbounds nuw i8, ptr %2335, i64 %2349
  %2351 = load i8, ptr %2350, align 1, !tbaa !28
  %2352 = zext i8 %2351 to i32
  %2353 = icmp eq i32 %2347, 0
  %2354 = zext i8 %2351 to i64
  br i1 %2353, label %2355, label %2388

2355:                                             ; preds = %2331
  %2356 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2354
  %2357 = getelementptr inbounds nuw i8, ptr %2356, i64 2
  %2358 = load i16, ptr %2357, align 2, !tbaa !28
  %2359 = zext i16 %2358 to i32
  %2360 = sub nsw i32 16, %2359
  %2361 = icmp sgt i32 %2333, %2360
  %2362 = load i16, ptr %2356, align 4, !tbaa !28
  %2363 = zext i16 %2362 to i32
  %2364 = shl i32 %2363, %2333
  %2365 = trunc i32 %2364 to i16
  %2366 = or i16 %2332, %2365
  store i16 %2366, ptr %2328, align 8, !tbaa !25
  br i1 %2361, label %2367, label %2386

2367:                                             ; preds = %2355
  %2368 = trunc i16 %2366 to i8
  %2369 = load ptr, ptr %2329, align 8, !tbaa !32
  %2370 = load i64, ptr %2330, align 8, !tbaa !33
  %2371 = add i64 %2370, 1
  store i64 %2371, ptr %2330, align 8, !tbaa !33
  %2372 = getelementptr inbounds nuw i8, ptr %2369, i64 %2370
  store i8 %2368, ptr %2372, align 1, !tbaa !28
  %2373 = load i16, ptr %2328, align 8, !tbaa !25
  %2374 = lshr i16 %2373, 8
  %2375 = trunc nuw i16 %2374 to i8
  %2376 = load ptr, ptr %2329, align 8, !tbaa !32
  %2377 = load i64, ptr %2330, align 8, !tbaa !33
  %2378 = add i64 %2377, 1
  store i64 %2378, ptr %2330, align 8, !tbaa !33
  %2379 = getelementptr inbounds nuw i8, ptr %2376, i64 %2377
  store i8 %2375, ptr %2379, align 1, !tbaa !28
  %2380 = load i32, ptr %2283, align 4, !tbaa !26
  %2381 = sub nsw i32 16, %2380
  %2382 = lshr i32 %2363, %2381
  %2383 = trunc nuw i32 %2382 to i16
  store i16 %2383, ptr %2328, align 8, !tbaa !25
  %2384 = add nsw i32 %2359, -16
  %2385 = add nsw i32 %2384, %2380
  br label %2550

2386:                                             ; preds = %2355
  %2387 = add nsw i32 %2333, %2359
  br label %2550

2388:                                             ; preds = %2331
  %2389 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %2354
  %2390 = load i8, ptr %2389, align 1, !tbaa !28
  %2391 = zext i8 %2390 to i64
  %2392 = getelementptr inbounds nuw [4 x i8], ptr @static_ltree, i64 %2391
  %2393 = getelementptr inbounds nuw i8, ptr %2392, i64 1028
  %2394 = getelementptr inbounds nuw i8, ptr %2392, i64 1030
  %2395 = load i16, ptr %2394, align 2, !tbaa !28
  %2396 = zext i16 %2395 to i32
  %2397 = sub nsw i32 16, %2396
  %2398 = icmp sgt i32 %2333, %2397
  %2399 = load i16, ptr %2393, align 4, !tbaa !28
  %2400 = zext i16 %2399 to i32
  %2401 = shl i32 %2400, %2333
  %2402 = trunc i32 %2401 to i16
  %2403 = or i16 %2332, %2402
  store i16 %2403, ptr %2328, align 8, !tbaa !25
  br i1 %2398, label %2404, label %2423

2404:                                             ; preds = %2388
  %2405 = trunc i16 %2403 to i8
  %2406 = load ptr, ptr %2329, align 8, !tbaa !32
  %2407 = load i64, ptr %2330, align 8, !tbaa !33
  %2408 = add i64 %2407, 1
  store i64 %2408, ptr %2330, align 8, !tbaa !33
  %2409 = getelementptr inbounds nuw i8, ptr %2406, i64 %2407
  store i8 %2405, ptr %2409, align 1, !tbaa !28
  %2410 = load i16, ptr %2328, align 8, !tbaa !25
  %2411 = lshr i16 %2410, 8
  %2412 = trunc nuw i16 %2411 to i8
  %2413 = load ptr, ptr %2329, align 8, !tbaa !32
  %2414 = load i64, ptr %2330, align 8, !tbaa !33
  %2415 = add i64 %2414, 1
  store i64 %2415, ptr %2330, align 8, !tbaa !33
  %2416 = getelementptr inbounds nuw i8, ptr %2413, i64 %2414
  store i8 %2412, ptr %2416, align 1, !tbaa !28
  %2417 = load i32, ptr %2283, align 4, !tbaa !26
  %2418 = sub nsw i32 16, %2417
  %2419 = lshr i32 %2400, %2418
  %2420 = trunc nuw i32 %2419 to i16
  %2421 = add nsw i32 %2396, -16
  %2422 = add nsw i32 %2421, %2417
  br label %2425

2423:                                             ; preds = %2388
  %2424 = add nsw i32 %2333, %2396
  br label %2425

2425:                                             ; preds = %2423, %2404
  %2426 = phi i16 [ %2403, %2423 ], [ %2420, %2404 ]
  %2427 = phi i32 [ %2424, %2423 ], [ %2422, %2404 ]
  store i32 %2427, ptr %2283, align 4, !tbaa !26
  %2428 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %2391
  %2429 = load i32, ptr %2428, align 4, !tbaa !4
  %2430 = add i8 %2390, -28
  %2431 = icmp ult i8 %2430, -20
  br i1 %2431, label %2469, label %2432

2432:                                             ; preds = %2425
  %2433 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %2391
  %2434 = load i32, ptr %2433, align 4, !tbaa !4
  %2435 = sub nsw i32 %2352, %2434
  %2436 = sub nsw i32 16, %2429
  %2437 = icmp sgt i32 %2427, %2436
  br i1 %2437, label %2438, label %2461

2438:                                             ; preds = %2432
  %2439 = and i32 %2435, 65535
  %2440 = shl i32 %2435, %2427
  %2441 = trunc i32 %2440 to i16
  %2442 = or i16 %2426, %2441
  store i16 %2442, ptr %2328, align 8, !tbaa !25
  %2443 = trunc i16 %2442 to i8
  %2444 = load ptr, ptr %2329, align 8, !tbaa !32
  %2445 = load i64, ptr %2330, align 8, !tbaa !33
  %2446 = add i64 %2445, 1
  store i64 %2446, ptr %2330, align 8, !tbaa !33
  %2447 = getelementptr inbounds nuw i8, ptr %2444, i64 %2445
  store i8 %2443, ptr %2447, align 1, !tbaa !28
  %2448 = load i16, ptr %2328, align 8, !tbaa !25
  %2449 = lshr i16 %2448, 8
  %2450 = trunc nuw i16 %2449 to i8
  %2451 = load ptr, ptr %2329, align 8, !tbaa !32
  %2452 = load i64, ptr %2330, align 8, !tbaa !33
  %2453 = add i64 %2452, 1
  store i64 %2453, ptr %2330, align 8, !tbaa !33
  %2454 = getelementptr inbounds nuw i8, ptr %2451, i64 %2452
  store i8 %2450, ptr %2454, align 1, !tbaa !28
  %2455 = load i32, ptr %2283, align 4, !tbaa !26
  %2456 = sub nsw i32 16, %2455
  %2457 = lshr i32 %2439, %2456
  %2458 = trunc nuw i32 %2457 to i16
  %2459 = add nsw i32 %2429, -16
  %2460 = add nsw i32 %2459, %2455
  br label %2466

2461:                                             ; preds = %2432
  %2462 = shl i32 %2435, %2427
  %2463 = trunc i32 %2462 to i16
  %2464 = or i16 %2426, %2463
  %2465 = add nsw i32 %2429, %2427
  br label %2466

2466:                                             ; preds = %2461, %2438
  %2467 = phi i16 [ %2458, %2438 ], [ %2464, %2461 ]
  %2468 = phi i32 [ %2460, %2438 ], [ %2465, %2461 ]
  store i32 %2468, ptr %2283, align 4, !tbaa !26
  br label %2469

2469:                                             ; preds = %2466, %2425
  %2470 = phi i16 [ %2467, %2466 ], [ %2426, %2425 ]
  %2471 = phi i32 [ %2468, %2466 ], [ %2427, %2425 ]
  %2472 = add nsw i32 %2347, -1
  %2473 = icmp samesign ult i32 %2347, 257
  %2474 = zext nneg i32 %2472 to i64
  %2475 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2474
  %2476 = lshr i32 %2472, 7
  %2477 = zext nneg i32 %2476 to i64
  %2478 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2477
  %2479 = getelementptr inbounds nuw i8, ptr %2478, i64 256
  %2480 = select i1 %2473, ptr %2475, ptr %2479
  %2481 = load i8, ptr %2480, align 1, !tbaa !28
  %2482 = zext i8 %2481 to i64
  %2483 = getelementptr inbounds nuw [4 x i8], ptr @static_dtree, i64 %2482
  %2484 = icmp sgt i32 %2471, 11
  %2485 = load i16, ptr %2483, align 4, !tbaa !28
  %2486 = zext i16 %2485 to i32
  %2487 = shl i32 %2486, %2471
  %2488 = trunc i32 %2487 to i16
  %2489 = or i16 %2470, %2488
  store i16 %2489, ptr %2328, align 8, !tbaa !25
  br i1 %2484, label %2490, label %2508

2490:                                             ; preds = %2469
  %2491 = trunc i16 %2489 to i8
  %2492 = load ptr, ptr %2329, align 8, !tbaa !32
  %2493 = load i64, ptr %2330, align 8, !tbaa !33
  %2494 = add i64 %2493, 1
  store i64 %2494, ptr %2330, align 8, !tbaa !33
  %2495 = getelementptr inbounds nuw i8, ptr %2492, i64 %2493
  store i8 %2491, ptr %2495, align 1, !tbaa !28
  %2496 = load i16, ptr %2328, align 8, !tbaa !25
  %2497 = lshr i16 %2496, 8
  %2498 = trunc nuw i16 %2497 to i8
  %2499 = load ptr, ptr %2329, align 8, !tbaa !32
  %2500 = load i64, ptr %2330, align 8, !tbaa !33
  %2501 = add i64 %2500, 1
  store i64 %2501, ptr %2330, align 8, !tbaa !33
  %2502 = getelementptr inbounds nuw i8, ptr %2499, i64 %2500
  store i8 %2498, ptr %2502, align 1, !tbaa !28
  %2503 = load i32, ptr %2283, align 4, !tbaa !26
  %2504 = sub nsw i32 16, %2503
  %2505 = lshr i32 %2486, %2504
  %2506 = trunc nuw i32 %2505 to i16
  store i16 %2506, ptr %2328, align 8, !tbaa !25
  %2507 = add nsw i32 %2503, -11
  br label %2510

2508:                                             ; preds = %2469
  %2509 = add nsw i32 %2471, 5
  br label %2510

2510:                                             ; preds = %2508, %2490
  %2511 = phi i16 [ %2489, %2508 ], [ %2506, %2490 ]
  %2512 = phi i32 [ %2509, %2508 ], [ %2507, %2490 ]
  store i32 %2512, ptr %2283, align 4, !tbaa !26
  %2513 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %2482
  %2514 = load i32, ptr %2513, align 4, !tbaa !4
  %2515 = icmp ult i8 %2481, 4
  br i1 %2515, label %2553, label %2516

2516:                                             ; preds = %2510
  %2517 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %2482
  %2518 = load i32, ptr %2517, align 4, !tbaa !4
  %2519 = sub i32 %2472, %2518
  %2520 = sub nsw i32 16, %2514
  %2521 = icmp sgt i32 %2512, %2520
  br i1 %2521, label %2522, label %2545

2522:                                             ; preds = %2516
  %2523 = and i32 %2519, 65535
  %2524 = shl i32 %2519, %2512
  %2525 = trunc i32 %2524 to i16
  %2526 = or i16 %2511, %2525
  store i16 %2526, ptr %2328, align 8, !tbaa !25
  %2527 = trunc i16 %2526 to i8
  %2528 = load ptr, ptr %2329, align 8, !tbaa !32
  %2529 = load i64, ptr %2330, align 8, !tbaa !33
  %2530 = add i64 %2529, 1
  store i64 %2530, ptr %2330, align 8, !tbaa !33
  %2531 = getelementptr inbounds nuw i8, ptr %2528, i64 %2529
  store i8 %2527, ptr %2531, align 1, !tbaa !28
  %2532 = load i16, ptr %2328, align 8, !tbaa !25
  %2533 = lshr i16 %2532, 8
  %2534 = trunc nuw i16 %2533 to i8
  %2535 = load ptr, ptr %2329, align 8, !tbaa !32
  %2536 = load i64, ptr %2330, align 8, !tbaa !33
  %2537 = add i64 %2536, 1
  store i64 %2537, ptr %2330, align 8, !tbaa !33
  %2538 = getelementptr inbounds nuw i8, ptr %2535, i64 %2536
  store i8 %2534, ptr %2538, align 1, !tbaa !28
  %2539 = load i32, ptr %2283, align 4, !tbaa !26
  %2540 = sub nsw i32 16, %2539
  %2541 = lshr i32 %2523, %2540
  %2542 = trunc nuw i32 %2541 to i16
  store i16 %2542, ptr %2328, align 8, !tbaa !25
  %2543 = add nsw i32 %2514, -16
  %2544 = add nsw i32 %2543, %2539
  br label %2550

2545:                                             ; preds = %2516
  %2546 = shl i32 %2519, %2512
  %2547 = trunc i32 %2546 to i16
  %2548 = or i16 %2511, %2547
  store i16 %2548, ptr %2328, align 8, !tbaa !25
  %2549 = add nsw i32 %2514, %2512
  br label %2550

2550:                                             ; preds = %2545, %2522, %2386, %2367
  %2551 = phi i16 [ %2383, %2367 ], [ %2366, %2386 ], [ %2548, %2545 ], [ %2542, %2522 ]
  %2552 = phi i32 [ %2385, %2367 ], [ %2387, %2386 ], [ %2549, %2545 ], [ %2544, %2522 ]
  store i32 %2552, ptr %2283, align 4, !tbaa !26
  br label %2553

2553:                                             ; preds = %2550, %2510
  %2554 = phi i16 [ %2511, %2510 ], [ %2551, %2550 ]
  %2555 = phi i32 [ %2512, %2510 ], [ %2552, %2550 ]
  %2556 = load i32, ptr %2323, align 4, !tbaa !31
  %2557 = icmp ult i32 %2348, %2556
  br i1 %2557, label %2331, label %2558, !llvm.loop !76

2558:                                             ; preds = %2553, %2320
  %2559 = phi i16 [ %2321, %2320 ], [ %2554, %2553 ]
  %2560 = phi i32 [ %2322, %2320 ], [ %2555, %2553 ]
  %2561 = icmp sgt i32 %2560, 9
  br i1 %2561, label %2562, label %2580

2562:                                             ; preds = %2558
  %2563 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2564 = trunc i16 %2559 to i8
  %2565 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2566 = load ptr, ptr %2565, align 8, !tbaa !32
  %2567 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2568 = load i64, ptr %2567, align 8, !tbaa !33
  %2569 = add i64 %2568, 1
  store i64 %2569, ptr %2567, align 8, !tbaa !33
  %2570 = getelementptr inbounds nuw i8, ptr %2566, i64 %2568
  store i8 %2564, ptr %2570, align 1, !tbaa !28
  %2571 = load i16, ptr %2563, align 8, !tbaa !25
  %2572 = lshr i16 %2571, 8
  %2573 = trunc nuw i16 %2572 to i8
  %2574 = load ptr, ptr %2565, align 8, !tbaa !32
  %2575 = load i64, ptr %2567, align 8, !tbaa !33
  %2576 = add i64 %2575, 1
  store i64 %2576, ptr %2567, align 8, !tbaa !33
  %2577 = getelementptr inbounds nuw i8, ptr %2574, i64 %2575
  store i8 %2573, ptr %2577, align 1, !tbaa !28
  %2578 = load i32, ptr %2283, align 4, !tbaa !26
  store i16 0, ptr %2563, align 8, !tbaa !25
  %2579 = add nsw i32 %2578, -9
  br label %2582

2580:                                             ; preds = %2558
  %2581 = add nsw i32 %2560, 7
  br label %2582

2582:                                             ; preds = %2562, %2580
  %2583 = phi i32 [ %2581, %2580 ], [ %2579, %2562 ]
  store i32 %2583, ptr %2283, align 4, !tbaa !26
  br label %3721

2584:                                             ; preds = %2169
  %2585 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2586 = load i32, ptr %2585, align 4, !tbaa !26
  %2587 = icmp sgt i32 %2586, 13
  %2588 = add i32 %3, 4
  br i1 %2587, label %2589, label %2615

2589:                                             ; preds = %2584
  %2590 = and i32 %2588, 65535
  %2591 = shl i32 %2588, %2586
  %2592 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2593 = load i16, ptr %2592, align 8, !tbaa !25
  %2594 = trunc i32 %2591 to i16
  %2595 = or i16 %2593, %2594
  store i16 %2595, ptr %2592, align 8, !tbaa !25
  %2596 = trunc i16 %2595 to i8
  %2597 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2598 = load ptr, ptr %2597, align 8, !tbaa !32
  %2599 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2600 = load i64, ptr %2599, align 8, !tbaa !33
  %2601 = add i64 %2600, 1
  store i64 %2601, ptr %2599, align 8, !tbaa !33
  %2602 = getelementptr inbounds nuw i8, ptr %2598, i64 %2600
  store i8 %2596, ptr %2602, align 1, !tbaa !28
  %2603 = load i16, ptr %2592, align 8, !tbaa !25
  %2604 = lshr i16 %2603, 8
  %2605 = trunc nuw i16 %2604 to i8
  %2606 = load ptr, ptr %2597, align 8, !tbaa !32
  %2607 = load i64, ptr %2599, align 8, !tbaa !33
  %2608 = add i64 %2607, 1
  store i64 %2608, ptr %2599, align 8, !tbaa !33
  %2609 = getelementptr inbounds nuw i8, ptr %2606, i64 %2607
  store i8 %2605, ptr %2609, align 1, !tbaa !28
  %2610 = load i32, ptr %2585, align 4, !tbaa !26
  %2611 = sub nsw i32 16, %2610
  %2612 = lshr i32 %2590, %2611
  %2613 = trunc nuw i32 %2612 to i16
  %2614 = add nsw i32 %2610, -13
  br label %2622

2615:                                             ; preds = %2584
  %2616 = shl i32 %2588, %2586
  %2617 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2618 = load i16, ptr %2617, align 8, !tbaa !25
  %2619 = trunc i32 %2616 to i16
  %2620 = or i16 %2618, %2619
  %2621 = add nsw i32 %2586, 3
  br label %2622

2622:                                             ; preds = %2615, %2589
  %2623 = phi i16 [ %2620, %2615 ], [ %2613, %2589 ]
  %2624 = phi i32 [ %2621, %2615 ], [ %2614, %2589 ]
  store i32 %2624, ptr %2585, align 4, !tbaa !26
  %2625 = load i32, ptr %218, align 8, !tbaa !70
  %2626 = add nsw i32 %2625, 1
  %2627 = load i32, ptr %822, align 8, !tbaa !72
  %2628 = add nsw i32 %2627, 1
  %2629 = add nuw nsw i32 %2143, 1
  %2630 = icmp sgt i32 %2624, 11
  %2631 = add i32 %2625, 65280
  br i1 %2630, label %2632, label %2657

2632:                                             ; preds = %2622
  %2633 = and i32 %2631, 65535
  %2634 = shl i32 %2631, %2624
  %2635 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2636 = trunc i32 %2634 to i16
  %2637 = or i16 %2623, %2636
  store i16 %2637, ptr %2635, align 8, !tbaa !25
  %2638 = trunc i16 %2637 to i8
  %2639 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2640 = load ptr, ptr %2639, align 8, !tbaa !32
  %2641 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2642 = load i64, ptr %2641, align 8, !tbaa !33
  %2643 = add i64 %2642, 1
  store i64 %2643, ptr %2641, align 8, !tbaa !33
  %2644 = getelementptr inbounds nuw i8, ptr %2640, i64 %2642
  store i8 %2638, ptr %2644, align 1, !tbaa !28
  %2645 = load i16, ptr %2635, align 8, !tbaa !25
  %2646 = lshr i16 %2645, 8
  %2647 = trunc nuw i16 %2646 to i8
  %2648 = load ptr, ptr %2639, align 8, !tbaa !32
  %2649 = load i64, ptr %2641, align 8, !tbaa !33
  %2650 = add i64 %2649, 1
  store i64 %2650, ptr %2641, align 8, !tbaa !33
  %2651 = getelementptr inbounds nuw i8, ptr %2648, i64 %2649
  store i8 %2647, ptr %2651, align 1, !tbaa !28
  %2652 = load i32, ptr %2585, align 4, !tbaa !26
  %2653 = sub nsw i32 16, %2652
  %2654 = lshr i32 %2633, %2653
  %2655 = trunc nuw i32 %2654 to i16
  %2656 = add nsw i32 %2652, -11
  br label %2662

2657:                                             ; preds = %2622
  %2658 = shl i32 %2631, %2624
  %2659 = trunc i32 %2658 to i16
  %2660 = or i16 %2623, %2659
  %2661 = add nsw i32 %2624, 5
  br label %2662

2662:                                             ; preds = %2657, %2632
  %2663 = phi i16 [ %2660, %2657 ], [ %2655, %2632 ]
  %2664 = phi i32 [ %2661, %2657 ], [ %2656, %2632 ]
  store i32 %2664, ptr %2585, align 4, !tbaa !26
  %2665 = icmp sgt i32 %2664, 11
  br i1 %2665, label %2666, label %2691

2666:                                             ; preds = %2662
  %2667 = and i32 %2627, 65535
  %2668 = shl i32 %2627, %2664
  %2669 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2670 = trunc i32 %2668 to i16
  %2671 = or i16 %2663, %2670
  store i16 %2671, ptr %2669, align 8, !tbaa !25
  %2672 = trunc i16 %2671 to i8
  %2673 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2674 = load ptr, ptr %2673, align 8, !tbaa !32
  %2675 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2676 = load i64, ptr %2675, align 8, !tbaa !33
  %2677 = add i64 %2676, 1
  store i64 %2677, ptr %2675, align 8, !tbaa !33
  %2678 = getelementptr inbounds nuw i8, ptr %2674, i64 %2676
  store i8 %2672, ptr %2678, align 1, !tbaa !28
  %2679 = load i16, ptr %2669, align 8, !tbaa !25
  %2680 = lshr i16 %2679, 8
  %2681 = trunc nuw i16 %2680 to i8
  %2682 = load ptr, ptr %2673, align 8, !tbaa !32
  %2683 = load i64, ptr %2675, align 8, !tbaa !33
  %2684 = add i64 %2683, 1
  store i64 %2684, ptr %2675, align 8, !tbaa !33
  %2685 = getelementptr inbounds nuw i8, ptr %2682, i64 %2683
  store i8 %2681, ptr %2685, align 1, !tbaa !28
  %2686 = load i32, ptr %2585, align 4, !tbaa !26
  %2687 = sub nsw i32 16, %2686
  %2688 = lshr i32 %2667, %2687
  %2689 = trunc nuw i32 %2688 to i16
  %2690 = add nsw i32 %2686, -11
  br label %2696

2691:                                             ; preds = %2662
  %2692 = shl i32 %2627, %2664
  %2693 = trunc i32 %2692 to i16
  %2694 = or i16 %2663, %2693
  %2695 = add nsw i32 %2664, 5
  br label %2696

2696:                                             ; preds = %2691, %2666
  %2697 = phi i16 [ %2694, %2691 ], [ %2689, %2666 ]
  %2698 = phi i32 [ %2695, %2691 ], [ %2690, %2666 ]
  store i32 %2698, ptr %2585, align 4, !tbaa !26
  %2699 = icmp sgt i32 %2698, 12
  %2700 = add nuw nsw i32 %2143, 65533
  br i1 %2699, label %2701, label %2726

2701:                                             ; preds = %2696
  %2702 = and i32 %2700, 65535
  %2703 = shl i32 %2700, %2698
  %2704 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2705 = trunc i32 %2703 to i16
  %2706 = or i16 %2697, %2705
  store i16 %2706, ptr %2704, align 8, !tbaa !25
  %2707 = trunc i16 %2706 to i8
  %2708 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2709 = load ptr, ptr %2708, align 8, !tbaa !32
  %2710 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2711 = load i64, ptr %2710, align 8, !tbaa !33
  %2712 = add i64 %2711, 1
  store i64 %2712, ptr %2710, align 8, !tbaa !33
  %2713 = getelementptr inbounds nuw i8, ptr %2709, i64 %2711
  store i8 %2707, ptr %2713, align 1, !tbaa !28
  %2714 = load i16, ptr %2704, align 8, !tbaa !25
  %2715 = lshr i16 %2714, 8
  %2716 = trunc nuw i16 %2715 to i8
  %2717 = load ptr, ptr %2708, align 8, !tbaa !32
  %2718 = load i64, ptr %2710, align 8, !tbaa !33
  %2719 = add i64 %2718, 1
  store i64 %2719, ptr %2710, align 8, !tbaa !33
  %2720 = getelementptr inbounds nuw i8, ptr %2717, i64 %2718
  store i8 %2716, ptr %2720, align 1, !tbaa !28
  %2721 = load i32, ptr %2585, align 4, !tbaa !26
  %2722 = sub nsw i32 16, %2721
  %2723 = lshr i32 %2702, %2722
  %2724 = trunc nuw i32 %2723 to i16
  %2725 = add nsw i32 %2721, -12
  br label %2731

2726:                                             ; preds = %2696
  %2727 = shl nuw nsw i32 %2700, %2698
  %2728 = trunc i32 %2727 to i16
  %2729 = or i16 %2697, %2728
  %2730 = add nsw i32 %2698, 4
  br label %2731

2731:                                             ; preds = %2701, %2726
  %2732 = phi i16 [ %2729, %2726 ], [ %2724, %2701 ]
  %2733 = phi i32 [ %2730, %2726 ], [ %2725, %2701 ]
  store i32 %2733, ptr %2585, align 4, !tbaa !26
  %2734 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2735 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2736 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2737 = zext nneg i32 %2629 to i64
  br label %2738

2738:                                             ; preds = %2773, %2731
  %2739 = phi i16 [ %2732, %2731 ], [ %2774, %2773 ]
  %2740 = phi i32 [ %2733, %2731 ], [ %2775, %2773 ]
  %2741 = phi i64 [ 0, %2731 ], [ %2776, %2773 ]
  %2742 = icmp sgt i32 %2740, 13
  %2743 = getelementptr inbounds nuw i8, ptr @bl_order, i64 %2741
  %2744 = load i8, ptr %2743, align 1, !tbaa !28
  %2745 = zext i8 %2744 to i64
  %2746 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2745
  %2747 = getelementptr inbounds nuw i8, ptr %2746, i64 2750
  %2748 = load i16, ptr %2747, align 2, !tbaa !28
  %2749 = zext i16 %2748 to i32
  %2750 = shl i32 %2749, %2740
  %2751 = trunc i32 %2750 to i16
  %2752 = or i16 %2739, %2751
  store i16 %2752, ptr %2734, align 8, !tbaa !25
  br i1 %2742, label %2753, label %2771

2753:                                             ; preds = %2738
  %2754 = trunc i16 %2752 to i8
  %2755 = load ptr, ptr %2735, align 8, !tbaa !32
  %2756 = load i64, ptr %2736, align 8, !tbaa !33
  %2757 = add i64 %2756, 1
  store i64 %2757, ptr %2736, align 8, !tbaa !33
  %2758 = getelementptr inbounds nuw i8, ptr %2755, i64 %2756
  store i8 %2754, ptr %2758, align 1, !tbaa !28
  %2759 = load i16, ptr %2734, align 8, !tbaa !25
  %2760 = lshr i16 %2759, 8
  %2761 = trunc nuw i16 %2760 to i8
  %2762 = load ptr, ptr %2735, align 8, !tbaa !32
  %2763 = load i64, ptr %2736, align 8, !tbaa !33
  %2764 = add i64 %2763, 1
  store i64 %2764, ptr %2736, align 8, !tbaa !33
  %2765 = getelementptr inbounds nuw i8, ptr %2762, i64 %2763
  store i8 %2761, ptr %2765, align 1, !tbaa !28
  %2766 = load i32, ptr %2585, align 4, !tbaa !26
  %2767 = sub nsw i32 16, %2766
  %2768 = lshr i32 %2749, %2767
  %2769 = trunc nuw i32 %2768 to i16
  store i16 %2769, ptr %2734, align 8, !tbaa !25
  %2770 = add nsw i32 %2766, -13
  br label %2773

2771:                                             ; preds = %2738
  %2772 = add nsw i32 %2740, 3
  br label %2773

2773:                                             ; preds = %2771, %2753
  %2774 = phi i16 [ %2752, %2771 ], [ %2769, %2753 ]
  %2775 = phi i32 [ %2772, %2771 ], [ %2770, %2753 ]
  store i32 %2775, ptr %2585, align 4, !tbaa !26
  %2776 = add nuw nsw i64 %2741, 1
  %2777 = icmp eq i64 %2776, %2737
  br i1 %2777, label %2778, label %2738, !llvm.loop !77

2778:                                             ; preds = %2773
  %2779 = icmp slt i32 %2625, 0
  br i1 %2779, label %3110, label %2780

2780:                                             ; preds = %2778
  %2781 = load i16, ptr %1344, align 2, !tbaa !28
  %2782 = icmp eq i16 %2781, 0
  %2783 = select i1 %2782, i32 138, i32 7
  %2784 = select i1 %2782, i32 3, i32 4
  %2785 = zext i16 %2781 to i32
  %2786 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %2787 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %2788 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %2789 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %2790 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %2791 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %2792 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %2793 = zext nneg i32 %2626 to i64
  br label %2794

2794:                                             ; preds = %3102, %2780
  %2795 = phi i16 [ %2774, %2780 ], [ %3103, %3102 ]
  %2796 = phi i32 [ %2775, %2780 ], [ %3104, %3102 ]
  %2797 = phi i64 [ 0, %2780 ], [ %2803, %3102 ]
  %2798 = phi i32 [ -1, %2780 ], [ %3108, %3102 ]
  %2799 = phi i32 [ %2785, %2780 ], [ %2807, %3102 ]
  %2800 = phi i32 [ 0, %2780 ], [ %3107, %3102 ]
  %2801 = phi i32 [ %2783, %2780 ], [ %3106, %3102 ]
  %2802 = phi i32 [ %2784, %2780 ], [ %3105, %3102 ]
  %2803 = add nuw nsw i64 %2797, 1
  %2804 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2803
  %2805 = getelementptr inbounds nuw i8, ptr %2804, i64 214
  %2806 = load i16, ptr %2805, align 2, !tbaa !28
  %2807 = zext i16 %2806 to i32
  %2808 = add nsw i32 %2800, 1
  %2809 = icmp slt i32 %2808, %2801
  %2810 = icmp eq i32 %2799, %2807
  %2811 = select i1 %2809, i1 %2810, i1 false
  br i1 %2811, label %3102, label %2812

2812:                                             ; preds = %2794
  %2813 = icmp slt i32 %2808, %2802
  br i1 %2813, label %2814, label %2857

2814:                                             ; preds = %2812
  %2815 = zext nneg i32 %2799 to i64
  %2816 = getelementptr inbounds nuw [4 x i8], ptr %2786, i64 %2815
  %2817 = getelementptr inbounds nuw i8, ptr %2816, i64 2
  br label %2818

2818:                                             ; preds = %2852, %2814
  %2819 = phi i16 [ %2853, %2852 ], [ %2795, %2814 ]
  %2820 = phi i32 [ %2854, %2852 ], [ %2796, %2814 ]
  %2821 = phi i32 [ %2855, %2852 ], [ %2808, %2814 ]
  %2822 = load i16, ptr %2817, align 2, !tbaa !28
  %2823 = zext i16 %2822 to i32
  %2824 = sub nsw i32 16, %2823
  %2825 = icmp sgt i32 %2820, %2824
  %2826 = load i16, ptr %2816, align 4, !tbaa !28
  %2827 = zext i16 %2826 to i32
  %2828 = shl i32 %2827, %2820
  %2829 = trunc i32 %2828 to i16
  %2830 = or i16 %2819, %2829
  store i16 %2830, ptr %2734, align 8, !tbaa !25
  br i1 %2825, label %2831, label %2850

2831:                                             ; preds = %2818
  %2832 = trunc i16 %2830 to i8
  %2833 = load ptr, ptr %2735, align 8, !tbaa !32
  %2834 = load i64, ptr %2736, align 8, !tbaa !33
  %2835 = add i64 %2834, 1
  store i64 %2835, ptr %2736, align 8, !tbaa !33
  %2836 = getelementptr inbounds nuw i8, ptr %2833, i64 %2834
  store i8 %2832, ptr %2836, align 1, !tbaa !28
  %2837 = load i16, ptr %2734, align 8, !tbaa !25
  %2838 = lshr i16 %2837, 8
  %2839 = trunc nuw i16 %2838 to i8
  %2840 = load ptr, ptr %2735, align 8, !tbaa !32
  %2841 = load i64, ptr %2736, align 8, !tbaa !33
  %2842 = add i64 %2841, 1
  store i64 %2842, ptr %2736, align 8, !tbaa !33
  %2843 = getelementptr inbounds nuw i8, ptr %2840, i64 %2841
  store i8 %2839, ptr %2843, align 1, !tbaa !28
  %2844 = load i32, ptr %2585, align 4, !tbaa !26
  %2845 = sub nsw i32 16, %2844
  %2846 = lshr i32 %2827, %2845
  %2847 = trunc nuw i32 %2846 to i16
  store i16 %2847, ptr %2734, align 8, !tbaa !25
  %2848 = add nsw i32 %2823, -16
  %2849 = add nsw i32 %2848, %2844
  br label %2852

2850:                                             ; preds = %2818
  %2851 = add nsw i32 %2820, %2823
  br label %2852

2852:                                             ; preds = %2850, %2831
  %2853 = phi i16 [ %2830, %2850 ], [ %2847, %2831 ]
  %2854 = phi i32 [ %2851, %2850 ], [ %2849, %2831 ]
  store i32 %2854, ptr %2585, align 4, !tbaa !26
  %2855 = add nsw i32 %2821, -1
  %2856 = icmp eq i32 %2855, 0
  br i1 %2856, label %3095, label %2818, !llvm.loop !78

2857:                                             ; preds = %2812
  %2858 = icmp eq i32 %2799, 0
  br i1 %2858, label %2964, label %2859

2859:                                             ; preds = %2857
  %2860 = icmp eq i32 %2799, %2798
  br i1 %2860, label %2898, label %2861

2861:                                             ; preds = %2859
  %2862 = zext nneg i32 %2799 to i64
  %2863 = getelementptr inbounds nuw [4 x i8], ptr %2786, i64 %2862
  %2864 = getelementptr inbounds nuw i8, ptr %2863, i64 2
  %2865 = load i16, ptr %2864, align 2, !tbaa !28
  %2866 = zext i16 %2865 to i32
  %2867 = sub nsw i32 16, %2866
  %2868 = icmp sgt i32 %2796, %2867
  %2869 = load i16, ptr %2863, align 4, !tbaa !28
  %2870 = zext i16 %2869 to i32
  %2871 = shl i32 %2870, %2796
  %2872 = trunc i32 %2871 to i16
  %2873 = or i16 %2795, %2872
  store i16 %2873, ptr %2734, align 8, !tbaa !25
  br i1 %2868, label %2874, label %2893

2874:                                             ; preds = %2861
  %2875 = trunc i16 %2873 to i8
  %2876 = load ptr, ptr %2735, align 8, !tbaa !32
  %2877 = load i64, ptr %2736, align 8, !tbaa !33
  %2878 = add i64 %2877, 1
  store i64 %2878, ptr %2736, align 8, !tbaa !33
  %2879 = getelementptr inbounds nuw i8, ptr %2876, i64 %2877
  store i8 %2875, ptr %2879, align 1, !tbaa !28
  %2880 = load i16, ptr %2734, align 8, !tbaa !25
  %2881 = lshr i16 %2880, 8
  %2882 = trunc nuw i16 %2881 to i8
  %2883 = load ptr, ptr %2735, align 8, !tbaa !32
  %2884 = load i64, ptr %2736, align 8, !tbaa !33
  %2885 = add i64 %2884, 1
  store i64 %2885, ptr %2736, align 8, !tbaa !33
  %2886 = getelementptr inbounds nuw i8, ptr %2883, i64 %2884
  store i8 %2882, ptr %2886, align 1, !tbaa !28
  %2887 = load i32, ptr %2585, align 4, !tbaa !26
  %2888 = sub nsw i32 16, %2887
  %2889 = lshr i32 %2870, %2888
  %2890 = trunc nuw i32 %2889 to i16
  %2891 = add nsw i32 %2866, -16
  %2892 = add nsw i32 %2891, %2887
  br label %2895

2893:                                             ; preds = %2861
  %2894 = add nsw i32 %2796, %2866
  br label %2895

2895:                                             ; preds = %2893, %2874
  %2896 = phi i16 [ %2873, %2893 ], [ %2890, %2874 ]
  %2897 = phi i32 [ %2894, %2893 ], [ %2892, %2874 ]
  store i32 %2897, ptr %2585, align 4, !tbaa !26
  br label %2898

2898:                                             ; preds = %2895, %2859
  %2899 = phi i16 [ %2896, %2895 ], [ %2795, %2859 ]
  %2900 = phi i32 [ %2897, %2895 ], [ %2796, %2859 ]
  %2901 = phi i32 [ %2800, %2895 ], [ %2808, %2859 ]
  %2902 = load i16, ptr %2788, align 2, !tbaa !28
  %2903 = zext i16 %2902 to i32
  %2904 = sub nsw i32 16, %2903
  %2905 = icmp sgt i32 %2900, %2904
  %2906 = load i16, ptr %2787, align 4, !tbaa !28
  %2907 = zext i16 %2906 to i32
  %2908 = shl i32 %2907, %2900
  %2909 = trunc i32 %2908 to i16
  %2910 = or i16 %2899, %2909
  br i1 %2905, label %2911, label %2930

2911:                                             ; preds = %2898
  store i16 %2910, ptr %2734, align 8, !tbaa !25
  %2912 = trunc i16 %2910 to i8
  %2913 = load ptr, ptr %2735, align 8, !tbaa !32
  %2914 = load i64, ptr %2736, align 8, !tbaa !33
  %2915 = add i64 %2914, 1
  store i64 %2915, ptr %2736, align 8, !tbaa !33
  %2916 = getelementptr inbounds nuw i8, ptr %2913, i64 %2914
  store i8 %2912, ptr %2916, align 1, !tbaa !28
  %2917 = load i16, ptr %2734, align 8, !tbaa !25
  %2918 = lshr i16 %2917, 8
  %2919 = trunc nuw i16 %2918 to i8
  %2920 = load ptr, ptr %2735, align 8, !tbaa !32
  %2921 = load i64, ptr %2736, align 8, !tbaa !33
  %2922 = add i64 %2921, 1
  store i64 %2922, ptr %2736, align 8, !tbaa !33
  %2923 = getelementptr inbounds nuw i8, ptr %2920, i64 %2921
  store i8 %2919, ptr %2923, align 1, !tbaa !28
  %2924 = load i32, ptr %2585, align 4, !tbaa !26
  %2925 = sub nsw i32 16, %2924
  %2926 = lshr i32 %2907, %2925
  %2927 = trunc nuw i32 %2926 to i16
  %2928 = add nsw i32 %2903, -16
  %2929 = add nsw i32 %2928, %2924
  br label %2932

2930:                                             ; preds = %2898
  %2931 = add nsw i32 %2900, %2903
  br label %2932

2932:                                             ; preds = %2930, %2911
  %2933 = phi i16 [ %2910, %2930 ], [ %2927, %2911 ]
  %2934 = phi i32 [ %2931, %2930 ], [ %2929, %2911 ]
  store i32 %2934, ptr %2585, align 4, !tbaa !26
  %2935 = icmp sgt i32 %2934, 14
  %2936 = add i32 %2901, 65533
  br i1 %2935, label %2937, label %2959

2937:                                             ; preds = %2932
  %2938 = and i32 %2936, 65535
  %2939 = shl i32 %2936, %2934
  %2940 = trunc i32 %2939 to i16
  %2941 = or i16 %2933, %2940
  store i16 %2941, ptr %2734, align 8, !tbaa !25
  %2942 = trunc i16 %2941 to i8
  %2943 = load ptr, ptr %2735, align 8, !tbaa !32
  %2944 = load i64, ptr %2736, align 8, !tbaa !33
  %2945 = add i64 %2944, 1
  store i64 %2945, ptr %2736, align 8, !tbaa !33
  %2946 = getelementptr inbounds nuw i8, ptr %2943, i64 %2944
  store i8 %2942, ptr %2946, align 1, !tbaa !28
  %2947 = load i16, ptr %2734, align 8, !tbaa !25
  %2948 = lshr i16 %2947, 8
  %2949 = trunc nuw i16 %2948 to i8
  %2950 = load ptr, ptr %2735, align 8, !tbaa !32
  %2951 = load i64, ptr %2736, align 8, !tbaa !33
  %2952 = add i64 %2951, 1
  store i64 %2952, ptr %2736, align 8, !tbaa !33
  %2953 = getelementptr inbounds nuw i8, ptr %2950, i64 %2951
  store i8 %2949, ptr %2953, align 1, !tbaa !28
  %2954 = load i32, ptr %2585, align 4, !tbaa !26
  %2955 = sub nsw i32 16, %2954
  %2956 = lshr i32 %2938, %2955
  %2957 = trunc nuw i32 %2956 to i16
  store i16 %2957, ptr %2734, align 8, !tbaa !25
  %2958 = add nsw i32 %2954, -14
  br label %3092

2959:                                             ; preds = %2932
  %2960 = shl i32 %2936, %2934
  %2961 = trunc i32 %2960 to i16
  %2962 = or i16 %2933, %2961
  store i16 %2962, ptr %2734, align 8, !tbaa !25
  %2963 = add nsw i32 %2934, 2
  br label %3092

2964:                                             ; preds = %2857
  %2965 = icmp slt i32 %2800, 10
  br i1 %2965, label %2966, label %3029

2966:                                             ; preds = %2964
  %2967 = load i16, ptr %2792, align 2, !tbaa !28
  %2968 = zext i16 %2967 to i32
  %2969 = sub nsw i32 16, %2968
  %2970 = icmp sgt i32 %2796, %2969
  %2971 = load i16, ptr %2791, align 4, !tbaa !28
  %2972 = zext i16 %2971 to i32
  %2973 = shl i32 %2972, %2796
  %2974 = trunc i32 %2973 to i16
  %2975 = or i16 %2795, %2974
  br i1 %2970, label %2976, label %2995

2976:                                             ; preds = %2966
  store i16 %2975, ptr %2734, align 8, !tbaa !25
  %2977 = trunc i16 %2975 to i8
  %2978 = load ptr, ptr %2735, align 8, !tbaa !32
  %2979 = load i64, ptr %2736, align 8, !tbaa !33
  %2980 = add i64 %2979, 1
  store i64 %2980, ptr %2736, align 8, !tbaa !33
  %2981 = getelementptr inbounds nuw i8, ptr %2978, i64 %2979
  store i8 %2977, ptr %2981, align 1, !tbaa !28
  %2982 = load i16, ptr %2734, align 8, !tbaa !25
  %2983 = lshr i16 %2982, 8
  %2984 = trunc nuw i16 %2983 to i8
  %2985 = load ptr, ptr %2735, align 8, !tbaa !32
  %2986 = load i64, ptr %2736, align 8, !tbaa !33
  %2987 = add i64 %2986, 1
  store i64 %2987, ptr %2736, align 8, !tbaa !33
  %2988 = getelementptr inbounds nuw i8, ptr %2985, i64 %2986
  store i8 %2984, ptr %2988, align 1, !tbaa !28
  %2989 = load i32, ptr %2585, align 4, !tbaa !26
  %2990 = sub nsw i32 16, %2989
  %2991 = lshr i32 %2972, %2990
  %2992 = trunc nuw i32 %2991 to i16
  %2993 = add nsw i32 %2968, -16
  %2994 = add nsw i32 %2993, %2989
  br label %2997

2995:                                             ; preds = %2966
  %2996 = add nsw i32 %2796, %2968
  br label %2997

2997:                                             ; preds = %2995, %2976
  %2998 = phi i16 [ %2975, %2995 ], [ %2992, %2976 ]
  %2999 = phi i32 [ %2996, %2995 ], [ %2994, %2976 ]
  store i32 %2999, ptr %2585, align 4, !tbaa !26
  %3000 = icmp sgt i32 %2999, 13
  %3001 = add nsw i32 %2800, 65534
  br i1 %3000, label %3002, label %3024

3002:                                             ; preds = %2997
  %3003 = and i32 %3001, 65535
  %3004 = shl i32 %3001, %2999
  %3005 = trunc i32 %3004 to i16
  %3006 = or i16 %2998, %3005
  store i16 %3006, ptr %2734, align 8, !tbaa !25
  %3007 = trunc i16 %3006 to i8
  %3008 = load ptr, ptr %2735, align 8, !tbaa !32
  %3009 = load i64, ptr %2736, align 8, !tbaa !33
  %3010 = add i64 %3009, 1
  store i64 %3010, ptr %2736, align 8, !tbaa !33
  %3011 = getelementptr inbounds nuw i8, ptr %3008, i64 %3009
  store i8 %3007, ptr %3011, align 1, !tbaa !28
  %3012 = load i16, ptr %2734, align 8, !tbaa !25
  %3013 = lshr i16 %3012, 8
  %3014 = trunc nuw i16 %3013 to i8
  %3015 = load ptr, ptr %2735, align 8, !tbaa !32
  %3016 = load i64, ptr %2736, align 8, !tbaa !33
  %3017 = add i64 %3016, 1
  store i64 %3017, ptr %2736, align 8, !tbaa !33
  %3018 = getelementptr inbounds nuw i8, ptr %3015, i64 %3016
  store i8 %3014, ptr %3018, align 1, !tbaa !28
  %3019 = load i32, ptr %2585, align 4, !tbaa !26
  %3020 = sub nsw i32 16, %3019
  %3021 = lshr i32 %3003, %3020
  %3022 = trunc nuw i32 %3021 to i16
  store i16 %3022, ptr %2734, align 8, !tbaa !25
  %3023 = add nsw i32 %3019, -13
  br label %3092

3024:                                             ; preds = %2997
  %3025 = shl i32 %3001, %2999
  %3026 = trunc i32 %3025 to i16
  %3027 = or i16 %2998, %3026
  store i16 %3027, ptr %2734, align 8, !tbaa !25
  %3028 = add nsw i32 %2999, 3
  br label %3092

3029:                                             ; preds = %2964
  %3030 = load i16, ptr %2790, align 2, !tbaa !28
  %3031 = zext i16 %3030 to i32
  %3032 = sub nsw i32 16, %3031
  %3033 = icmp sgt i32 %2796, %3032
  %3034 = load i16, ptr %2789, align 4, !tbaa !28
  %3035 = zext i16 %3034 to i32
  %3036 = shl i32 %3035, %2796
  %3037 = trunc i32 %3036 to i16
  %3038 = or i16 %2795, %3037
  br i1 %3033, label %3039, label %3058

3039:                                             ; preds = %3029
  store i16 %3038, ptr %2734, align 8, !tbaa !25
  %3040 = trunc i16 %3038 to i8
  %3041 = load ptr, ptr %2735, align 8, !tbaa !32
  %3042 = load i64, ptr %2736, align 8, !tbaa !33
  %3043 = add i64 %3042, 1
  store i64 %3043, ptr %2736, align 8, !tbaa !33
  %3044 = getelementptr inbounds nuw i8, ptr %3041, i64 %3042
  store i8 %3040, ptr %3044, align 1, !tbaa !28
  %3045 = load i16, ptr %2734, align 8, !tbaa !25
  %3046 = lshr i16 %3045, 8
  %3047 = trunc nuw i16 %3046 to i8
  %3048 = load ptr, ptr %2735, align 8, !tbaa !32
  %3049 = load i64, ptr %2736, align 8, !tbaa !33
  %3050 = add i64 %3049, 1
  store i64 %3050, ptr %2736, align 8, !tbaa !33
  %3051 = getelementptr inbounds nuw i8, ptr %3048, i64 %3049
  store i8 %3047, ptr %3051, align 1, !tbaa !28
  %3052 = load i32, ptr %2585, align 4, !tbaa !26
  %3053 = sub nsw i32 16, %3052
  %3054 = lshr i32 %3035, %3053
  %3055 = trunc nuw i32 %3054 to i16
  %3056 = add nsw i32 %3031, -16
  %3057 = add nsw i32 %3056, %3052
  br label %3060

3058:                                             ; preds = %3029
  %3059 = add nsw i32 %2796, %3031
  br label %3060

3060:                                             ; preds = %3058, %3039
  %3061 = phi i16 [ %3038, %3058 ], [ %3055, %3039 ]
  %3062 = phi i32 [ %3059, %3058 ], [ %3057, %3039 ]
  store i32 %3062, ptr %2585, align 4, !tbaa !26
  %3063 = icmp sgt i32 %3062, 9
  %3064 = add nuw i32 %2800, 65526
  br i1 %3063, label %3065, label %3087

3065:                                             ; preds = %3060
  %3066 = and i32 %3064, 65535
  %3067 = shl i32 %3064, %3062
  %3068 = trunc i32 %3067 to i16
  %3069 = or i16 %3061, %3068
  store i16 %3069, ptr %2734, align 8, !tbaa !25
  %3070 = trunc i16 %3069 to i8
  %3071 = load ptr, ptr %2735, align 8, !tbaa !32
  %3072 = load i64, ptr %2736, align 8, !tbaa !33
  %3073 = add i64 %3072, 1
  store i64 %3073, ptr %2736, align 8, !tbaa !33
  %3074 = getelementptr inbounds nuw i8, ptr %3071, i64 %3072
  store i8 %3070, ptr %3074, align 1, !tbaa !28
  %3075 = load i16, ptr %2734, align 8, !tbaa !25
  %3076 = lshr i16 %3075, 8
  %3077 = trunc nuw i16 %3076 to i8
  %3078 = load ptr, ptr %2735, align 8, !tbaa !32
  %3079 = load i64, ptr %2736, align 8, !tbaa !33
  %3080 = add i64 %3079, 1
  store i64 %3080, ptr %2736, align 8, !tbaa !33
  %3081 = getelementptr inbounds nuw i8, ptr %3078, i64 %3079
  store i8 %3077, ptr %3081, align 1, !tbaa !28
  %3082 = load i32, ptr %2585, align 4, !tbaa !26
  %3083 = sub nsw i32 16, %3082
  %3084 = lshr i32 %3066, %3083
  %3085 = trunc nuw i32 %3084 to i16
  store i16 %3085, ptr %2734, align 8, !tbaa !25
  %3086 = add nsw i32 %3082, -9
  br label %3092

3087:                                             ; preds = %3060
  %3088 = shl i32 %3064, %3062
  %3089 = trunc i32 %3088 to i16
  %3090 = or i16 %3061, %3089
  store i16 %3090, ptr %2734, align 8, !tbaa !25
  %3091 = add nsw i32 %3062, 7
  br label %3092

3092:                                             ; preds = %3087, %3065, %3024, %3002, %2959, %2937
  %3093 = phi i16 [ %2957, %2937 ], [ %3022, %3002 ], [ %2962, %2959 ], [ %3027, %3024 ], [ %3090, %3087 ], [ %3085, %3065 ]
  %3094 = phi i32 [ %2958, %2937 ], [ %3023, %3002 ], [ %2963, %2959 ], [ %3028, %3024 ], [ %3091, %3087 ], [ %3086, %3065 ]
  store i32 %3094, ptr %2585, align 4, !tbaa !26
  br label %3095

3095:                                             ; preds = %2852, %3092
  %3096 = phi i16 [ %3093, %3092 ], [ %2853, %2852 ]
  %3097 = phi i32 [ %3094, %3092 ], [ %2854, %2852 ]
  %3098 = icmp eq i16 %2806, 0
  br i1 %3098, label %3102, label %3099

3099:                                             ; preds = %3095
  %3100 = select i1 %2810, i32 3, i32 4
  %3101 = select i1 %2810, i32 6, i32 7
  br label %3102

3102:                                             ; preds = %3099, %3095, %2794
  %3103 = phi i16 [ %2795, %2794 ], [ %3096, %3095 ], [ %3096, %3099 ]
  %3104 = phi i32 [ %2796, %2794 ], [ %3097, %3095 ], [ %3097, %3099 ]
  %3105 = phi i32 [ %2802, %2794 ], [ 3, %3095 ], [ %3100, %3099 ]
  %3106 = phi i32 [ %2801, %2794 ], [ 138, %3095 ], [ %3101, %3099 ]
  %3107 = phi i32 [ %2808, %2794 ], [ 0, %3095 ], [ 0, %3099 ]
  %3108 = phi i32 [ %2798, %2794 ], [ %2799, %3095 ], [ %2799, %3099 ]
  %3109 = icmp eq i64 %2803, %2793
  br i1 %3109, label %3110, label %2794, !llvm.loop !79

3110:                                             ; preds = %3102, %2778
  %3111 = phi i16 [ %2774, %2778 ], [ %3103, %3102 ]
  %3112 = phi i32 [ %2775, %2778 ], [ %3104, %3102 ]
  %3113 = icmp slt i32 %2627, 0
  br i1 %3113, label %3444, label %3114

3114:                                             ; preds = %3110
  %3115 = load i16, ptr %1419, align 2, !tbaa !28
  %3116 = icmp eq i16 %3115, 0
  %3117 = select i1 %3116, i32 138, i32 7
  %3118 = select i1 %3116, i32 3, i32 4
  %3119 = zext i16 %3115 to i32
  %3120 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3121 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3122 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3123 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3124 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3125 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3126 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %3127 = zext nneg i32 %2628 to i64
  br label %3128

3128:                                             ; preds = %3436, %3114
  %3129 = phi i16 [ %3111, %3114 ], [ %3437, %3436 ]
  %3130 = phi i32 [ %3112, %3114 ], [ %3438, %3436 ]
  %3131 = phi i64 [ 0, %3114 ], [ %3137, %3436 ]
  %3132 = phi i32 [ -1, %3114 ], [ %3442, %3436 ]
  %3133 = phi i32 [ %3119, %3114 ], [ %3141, %3436 ]
  %3134 = phi i32 [ 0, %3114 ], [ %3441, %3436 ]
  %3135 = phi i32 [ %3117, %3114 ], [ %3440, %3436 ]
  %3136 = phi i32 [ %3118, %3114 ], [ %3439, %3436 ]
  %3137 = add nuw nsw i64 %3131, 1
  %3138 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3137
  %3139 = getelementptr inbounds nuw i8, ptr %3138, i64 2506
  %3140 = load i16, ptr %3139, align 2, !tbaa !28
  %3141 = zext i16 %3140 to i32
  %3142 = add nsw i32 %3134, 1
  %3143 = icmp slt i32 %3142, %3135
  %3144 = icmp eq i32 %3133, %3141
  %3145 = select i1 %3143, i1 %3144, i1 false
  br i1 %3145, label %3436, label %3146

3146:                                             ; preds = %3128
  %3147 = icmp slt i32 %3142, %3136
  br i1 %3147, label %3148, label %3191

3148:                                             ; preds = %3146
  %3149 = zext nneg i32 %3133 to i64
  %3150 = getelementptr inbounds nuw [4 x i8], ptr %3120, i64 %3149
  %3151 = getelementptr inbounds nuw i8, ptr %3150, i64 2
  br label %3152

3152:                                             ; preds = %3186, %3148
  %3153 = phi i16 [ %3187, %3186 ], [ %3129, %3148 ]
  %3154 = phi i32 [ %3188, %3186 ], [ %3130, %3148 ]
  %3155 = phi i32 [ %3189, %3186 ], [ %3142, %3148 ]
  %3156 = load i16, ptr %3151, align 2, !tbaa !28
  %3157 = zext i16 %3156 to i32
  %3158 = sub nsw i32 16, %3157
  %3159 = icmp sgt i32 %3154, %3158
  %3160 = load i16, ptr %3150, align 4, !tbaa !28
  %3161 = zext i16 %3160 to i32
  %3162 = shl i32 %3161, %3154
  %3163 = trunc i32 %3162 to i16
  %3164 = or i16 %3153, %3163
  store i16 %3164, ptr %2734, align 8, !tbaa !25
  br i1 %3159, label %3165, label %3184

3165:                                             ; preds = %3152
  %3166 = trunc i16 %3164 to i8
  %3167 = load ptr, ptr %2735, align 8, !tbaa !32
  %3168 = load i64, ptr %2736, align 8, !tbaa !33
  %3169 = add i64 %3168, 1
  store i64 %3169, ptr %2736, align 8, !tbaa !33
  %3170 = getelementptr inbounds nuw i8, ptr %3167, i64 %3168
  store i8 %3166, ptr %3170, align 1, !tbaa !28
  %3171 = load i16, ptr %2734, align 8, !tbaa !25
  %3172 = lshr i16 %3171, 8
  %3173 = trunc nuw i16 %3172 to i8
  %3174 = load ptr, ptr %2735, align 8, !tbaa !32
  %3175 = load i64, ptr %2736, align 8, !tbaa !33
  %3176 = add i64 %3175, 1
  store i64 %3176, ptr %2736, align 8, !tbaa !33
  %3177 = getelementptr inbounds nuw i8, ptr %3174, i64 %3175
  store i8 %3173, ptr %3177, align 1, !tbaa !28
  %3178 = load i32, ptr %2585, align 4, !tbaa !26
  %3179 = sub nsw i32 16, %3178
  %3180 = lshr i32 %3161, %3179
  %3181 = trunc nuw i32 %3180 to i16
  store i16 %3181, ptr %2734, align 8, !tbaa !25
  %3182 = add nsw i32 %3157, -16
  %3183 = add nsw i32 %3182, %3178
  br label %3186

3184:                                             ; preds = %3152
  %3185 = add nsw i32 %3154, %3157
  br label %3186

3186:                                             ; preds = %3184, %3165
  %3187 = phi i16 [ %3164, %3184 ], [ %3181, %3165 ]
  %3188 = phi i32 [ %3185, %3184 ], [ %3183, %3165 ]
  store i32 %3188, ptr %2585, align 4, !tbaa !26
  %3189 = add nsw i32 %3155, -1
  %3190 = icmp eq i32 %3189, 0
  br i1 %3190, label %3429, label %3152, !llvm.loop !78

3191:                                             ; preds = %3146
  %3192 = icmp eq i32 %3133, 0
  br i1 %3192, label %3298, label %3193

3193:                                             ; preds = %3191
  %3194 = icmp eq i32 %3133, %3132
  br i1 %3194, label %3232, label %3195

3195:                                             ; preds = %3193
  %3196 = zext nneg i32 %3133 to i64
  %3197 = getelementptr inbounds nuw [4 x i8], ptr %3120, i64 %3196
  %3198 = getelementptr inbounds nuw i8, ptr %3197, i64 2
  %3199 = load i16, ptr %3198, align 2, !tbaa !28
  %3200 = zext i16 %3199 to i32
  %3201 = sub nsw i32 16, %3200
  %3202 = icmp sgt i32 %3130, %3201
  %3203 = load i16, ptr %3197, align 4, !tbaa !28
  %3204 = zext i16 %3203 to i32
  %3205 = shl i32 %3204, %3130
  %3206 = trunc i32 %3205 to i16
  %3207 = or i16 %3129, %3206
  store i16 %3207, ptr %2734, align 8, !tbaa !25
  br i1 %3202, label %3208, label %3227

3208:                                             ; preds = %3195
  %3209 = trunc i16 %3207 to i8
  %3210 = load ptr, ptr %2735, align 8, !tbaa !32
  %3211 = load i64, ptr %2736, align 8, !tbaa !33
  %3212 = add i64 %3211, 1
  store i64 %3212, ptr %2736, align 8, !tbaa !33
  %3213 = getelementptr inbounds nuw i8, ptr %3210, i64 %3211
  store i8 %3209, ptr %3213, align 1, !tbaa !28
  %3214 = load i16, ptr %2734, align 8, !tbaa !25
  %3215 = lshr i16 %3214, 8
  %3216 = trunc nuw i16 %3215 to i8
  %3217 = load ptr, ptr %2735, align 8, !tbaa !32
  %3218 = load i64, ptr %2736, align 8, !tbaa !33
  %3219 = add i64 %3218, 1
  store i64 %3219, ptr %2736, align 8, !tbaa !33
  %3220 = getelementptr inbounds nuw i8, ptr %3217, i64 %3218
  store i8 %3216, ptr %3220, align 1, !tbaa !28
  %3221 = load i32, ptr %2585, align 4, !tbaa !26
  %3222 = sub nsw i32 16, %3221
  %3223 = lshr i32 %3204, %3222
  %3224 = trunc nuw i32 %3223 to i16
  store i16 %3224, ptr %2734, align 8, !tbaa !25
  %3225 = add nsw i32 %3200, -16
  %3226 = add nsw i32 %3225, %3221
  br label %3229

3227:                                             ; preds = %3195
  %3228 = add nsw i32 %3130, %3200
  br label %3229

3229:                                             ; preds = %3227, %3208
  %3230 = phi i16 [ %3207, %3227 ], [ %3224, %3208 ]
  %3231 = phi i32 [ %3228, %3227 ], [ %3226, %3208 ]
  store i32 %3231, ptr %2585, align 4, !tbaa !26
  br label %3232

3232:                                             ; preds = %3229, %3193
  %3233 = phi i16 [ %3230, %3229 ], [ %3129, %3193 ]
  %3234 = phi i32 [ %3231, %3229 ], [ %3130, %3193 ]
  %3235 = phi i32 [ %3134, %3229 ], [ %3142, %3193 ]
  %3236 = load i16, ptr %3122, align 2, !tbaa !28
  %3237 = zext i16 %3236 to i32
  %3238 = sub nsw i32 16, %3237
  %3239 = icmp sgt i32 %3234, %3238
  %3240 = load i16, ptr %3121, align 4, !tbaa !28
  %3241 = zext i16 %3240 to i32
  %3242 = shl i32 %3241, %3234
  %3243 = trunc i32 %3242 to i16
  %3244 = or i16 %3233, %3243
  br i1 %3239, label %3245, label %3264

3245:                                             ; preds = %3232
  store i16 %3244, ptr %2734, align 8, !tbaa !25
  %3246 = trunc i16 %3244 to i8
  %3247 = load ptr, ptr %2735, align 8, !tbaa !32
  %3248 = load i64, ptr %2736, align 8, !tbaa !33
  %3249 = add i64 %3248, 1
  store i64 %3249, ptr %2736, align 8, !tbaa !33
  %3250 = getelementptr inbounds nuw i8, ptr %3247, i64 %3248
  store i8 %3246, ptr %3250, align 1, !tbaa !28
  %3251 = load i16, ptr %2734, align 8, !tbaa !25
  %3252 = lshr i16 %3251, 8
  %3253 = trunc nuw i16 %3252 to i8
  %3254 = load ptr, ptr %2735, align 8, !tbaa !32
  %3255 = load i64, ptr %2736, align 8, !tbaa !33
  %3256 = add i64 %3255, 1
  store i64 %3256, ptr %2736, align 8, !tbaa !33
  %3257 = getelementptr inbounds nuw i8, ptr %3254, i64 %3255
  store i8 %3253, ptr %3257, align 1, !tbaa !28
  %3258 = load i32, ptr %2585, align 4, !tbaa !26
  %3259 = sub nsw i32 16, %3258
  %3260 = lshr i32 %3241, %3259
  %3261 = trunc nuw i32 %3260 to i16
  %3262 = add nsw i32 %3237, -16
  %3263 = add nsw i32 %3262, %3258
  br label %3266

3264:                                             ; preds = %3232
  %3265 = add nsw i32 %3234, %3237
  br label %3266

3266:                                             ; preds = %3264, %3245
  %3267 = phi i16 [ %3244, %3264 ], [ %3261, %3245 ]
  %3268 = phi i32 [ %3265, %3264 ], [ %3263, %3245 ]
  store i32 %3268, ptr %2585, align 4, !tbaa !26
  %3269 = icmp sgt i32 %3268, 14
  %3270 = add i32 %3235, 65533
  br i1 %3269, label %3271, label %3293

3271:                                             ; preds = %3266
  %3272 = and i32 %3270, 65535
  %3273 = shl i32 %3270, %3268
  %3274 = trunc i32 %3273 to i16
  %3275 = or i16 %3267, %3274
  store i16 %3275, ptr %2734, align 8, !tbaa !25
  %3276 = trunc i16 %3275 to i8
  %3277 = load ptr, ptr %2735, align 8, !tbaa !32
  %3278 = load i64, ptr %2736, align 8, !tbaa !33
  %3279 = add i64 %3278, 1
  store i64 %3279, ptr %2736, align 8, !tbaa !33
  %3280 = getelementptr inbounds nuw i8, ptr %3277, i64 %3278
  store i8 %3276, ptr %3280, align 1, !tbaa !28
  %3281 = load i16, ptr %2734, align 8, !tbaa !25
  %3282 = lshr i16 %3281, 8
  %3283 = trunc nuw i16 %3282 to i8
  %3284 = load ptr, ptr %2735, align 8, !tbaa !32
  %3285 = load i64, ptr %2736, align 8, !tbaa !33
  %3286 = add i64 %3285, 1
  store i64 %3286, ptr %2736, align 8, !tbaa !33
  %3287 = getelementptr inbounds nuw i8, ptr %3284, i64 %3285
  store i8 %3283, ptr %3287, align 1, !tbaa !28
  %3288 = load i32, ptr %2585, align 4, !tbaa !26
  %3289 = sub nsw i32 16, %3288
  %3290 = lshr i32 %3272, %3289
  %3291 = trunc nuw i32 %3290 to i16
  store i16 %3291, ptr %2734, align 8, !tbaa !25
  %3292 = add nsw i32 %3288, -14
  br label %3426

3293:                                             ; preds = %3266
  %3294 = shl i32 %3270, %3268
  %3295 = trunc i32 %3294 to i16
  %3296 = or i16 %3267, %3295
  store i16 %3296, ptr %2734, align 8, !tbaa !25
  %3297 = add nsw i32 %3268, 2
  br label %3426

3298:                                             ; preds = %3191
  %3299 = icmp slt i32 %3134, 10
  br i1 %3299, label %3300, label %3363

3300:                                             ; preds = %3298
  %3301 = load i16, ptr %3126, align 2, !tbaa !28
  %3302 = zext i16 %3301 to i32
  %3303 = sub nsw i32 16, %3302
  %3304 = icmp sgt i32 %3130, %3303
  %3305 = load i16, ptr %3125, align 4, !tbaa !28
  %3306 = zext i16 %3305 to i32
  %3307 = shl i32 %3306, %3130
  %3308 = trunc i32 %3307 to i16
  %3309 = or i16 %3129, %3308
  br i1 %3304, label %3310, label %3329

3310:                                             ; preds = %3300
  store i16 %3309, ptr %2734, align 8, !tbaa !25
  %3311 = trunc i16 %3309 to i8
  %3312 = load ptr, ptr %2735, align 8, !tbaa !32
  %3313 = load i64, ptr %2736, align 8, !tbaa !33
  %3314 = add i64 %3313, 1
  store i64 %3314, ptr %2736, align 8, !tbaa !33
  %3315 = getelementptr inbounds nuw i8, ptr %3312, i64 %3313
  store i8 %3311, ptr %3315, align 1, !tbaa !28
  %3316 = load i16, ptr %2734, align 8, !tbaa !25
  %3317 = lshr i16 %3316, 8
  %3318 = trunc nuw i16 %3317 to i8
  %3319 = load ptr, ptr %2735, align 8, !tbaa !32
  %3320 = load i64, ptr %2736, align 8, !tbaa !33
  %3321 = add i64 %3320, 1
  store i64 %3321, ptr %2736, align 8, !tbaa !33
  %3322 = getelementptr inbounds nuw i8, ptr %3319, i64 %3320
  store i8 %3318, ptr %3322, align 1, !tbaa !28
  %3323 = load i32, ptr %2585, align 4, !tbaa !26
  %3324 = sub nsw i32 16, %3323
  %3325 = lshr i32 %3306, %3324
  %3326 = trunc nuw i32 %3325 to i16
  %3327 = add nsw i32 %3302, -16
  %3328 = add nsw i32 %3327, %3323
  br label %3331

3329:                                             ; preds = %3300
  %3330 = add nsw i32 %3130, %3302
  br label %3331

3331:                                             ; preds = %3329, %3310
  %3332 = phi i16 [ %3309, %3329 ], [ %3326, %3310 ]
  %3333 = phi i32 [ %3330, %3329 ], [ %3328, %3310 ]
  store i32 %3333, ptr %2585, align 4, !tbaa !26
  %3334 = icmp sgt i32 %3333, 13
  %3335 = add nsw i32 %3134, 65534
  br i1 %3334, label %3336, label %3358

3336:                                             ; preds = %3331
  %3337 = and i32 %3335, 65535
  %3338 = shl i32 %3335, %3333
  %3339 = trunc i32 %3338 to i16
  %3340 = or i16 %3332, %3339
  store i16 %3340, ptr %2734, align 8, !tbaa !25
  %3341 = trunc i16 %3340 to i8
  %3342 = load ptr, ptr %2735, align 8, !tbaa !32
  %3343 = load i64, ptr %2736, align 8, !tbaa !33
  %3344 = add i64 %3343, 1
  store i64 %3344, ptr %2736, align 8, !tbaa !33
  %3345 = getelementptr inbounds nuw i8, ptr %3342, i64 %3343
  store i8 %3341, ptr %3345, align 1, !tbaa !28
  %3346 = load i16, ptr %2734, align 8, !tbaa !25
  %3347 = lshr i16 %3346, 8
  %3348 = trunc nuw i16 %3347 to i8
  %3349 = load ptr, ptr %2735, align 8, !tbaa !32
  %3350 = load i64, ptr %2736, align 8, !tbaa !33
  %3351 = add i64 %3350, 1
  store i64 %3351, ptr %2736, align 8, !tbaa !33
  %3352 = getelementptr inbounds nuw i8, ptr %3349, i64 %3350
  store i8 %3348, ptr %3352, align 1, !tbaa !28
  %3353 = load i32, ptr %2585, align 4, !tbaa !26
  %3354 = sub nsw i32 16, %3353
  %3355 = lshr i32 %3337, %3354
  %3356 = trunc nuw i32 %3355 to i16
  store i16 %3356, ptr %2734, align 8, !tbaa !25
  %3357 = add nsw i32 %3353, -13
  br label %3426

3358:                                             ; preds = %3331
  %3359 = shl i32 %3335, %3333
  %3360 = trunc i32 %3359 to i16
  %3361 = or i16 %3332, %3360
  store i16 %3361, ptr %2734, align 8, !tbaa !25
  %3362 = add nsw i32 %3333, 3
  br label %3426

3363:                                             ; preds = %3298
  %3364 = load i16, ptr %3124, align 2, !tbaa !28
  %3365 = zext i16 %3364 to i32
  %3366 = sub nsw i32 16, %3365
  %3367 = icmp sgt i32 %3130, %3366
  %3368 = load i16, ptr %3123, align 4, !tbaa !28
  %3369 = zext i16 %3368 to i32
  %3370 = shl i32 %3369, %3130
  %3371 = trunc i32 %3370 to i16
  %3372 = or i16 %3129, %3371
  br i1 %3367, label %3373, label %3392

3373:                                             ; preds = %3363
  store i16 %3372, ptr %2734, align 8, !tbaa !25
  %3374 = trunc i16 %3372 to i8
  %3375 = load ptr, ptr %2735, align 8, !tbaa !32
  %3376 = load i64, ptr %2736, align 8, !tbaa !33
  %3377 = add i64 %3376, 1
  store i64 %3377, ptr %2736, align 8, !tbaa !33
  %3378 = getelementptr inbounds nuw i8, ptr %3375, i64 %3376
  store i8 %3374, ptr %3378, align 1, !tbaa !28
  %3379 = load i16, ptr %2734, align 8, !tbaa !25
  %3380 = lshr i16 %3379, 8
  %3381 = trunc nuw i16 %3380 to i8
  %3382 = load ptr, ptr %2735, align 8, !tbaa !32
  %3383 = load i64, ptr %2736, align 8, !tbaa !33
  %3384 = add i64 %3383, 1
  store i64 %3384, ptr %2736, align 8, !tbaa !33
  %3385 = getelementptr inbounds nuw i8, ptr %3382, i64 %3383
  store i8 %3381, ptr %3385, align 1, !tbaa !28
  %3386 = load i32, ptr %2585, align 4, !tbaa !26
  %3387 = sub nsw i32 16, %3386
  %3388 = lshr i32 %3369, %3387
  %3389 = trunc nuw i32 %3388 to i16
  %3390 = add nsw i32 %3365, -16
  %3391 = add nsw i32 %3390, %3386
  br label %3394

3392:                                             ; preds = %3363
  %3393 = add nsw i32 %3130, %3365
  br label %3394

3394:                                             ; preds = %3392, %3373
  %3395 = phi i16 [ %3372, %3392 ], [ %3389, %3373 ]
  %3396 = phi i32 [ %3393, %3392 ], [ %3391, %3373 ]
  store i32 %3396, ptr %2585, align 4, !tbaa !26
  %3397 = icmp sgt i32 %3396, 9
  %3398 = add nuw i32 %3134, 65526
  br i1 %3397, label %3399, label %3421

3399:                                             ; preds = %3394
  %3400 = and i32 %3398, 65535
  %3401 = shl i32 %3398, %3396
  %3402 = trunc i32 %3401 to i16
  %3403 = or i16 %3395, %3402
  store i16 %3403, ptr %2734, align 8, !tbaa !25
  %3404 = trunc i16 %3403 to i8
  %3405 = load ptr, ptr %2735, align 8, !tbaa !32
  %3406 = load i64, ptr %2736, align 8, !tbaa !33
  %3407 = add i64 %3406, 1
  store i64 %3407, ptr %2736, align 8, !tbaa !33
  %3408 = getelementptr inbounds nuw i8, ptr %3405, i64 %3406
  store i8 %3404, ptr %3408, align 1, !tbaa !28
  %3409 = load i16, ptr %2734, align 8, !tbaa !25
  %3410 = lshr i16 %3409, 8
  %3411 = trunc nuw i16 %3410 to i8
  %3412 = load ptr, ptr %2735, align 8, !tbaa !32
  %3413 = load i64, ptr %2736, align 8, !tbaa !33
  %3414 = add i64 %3413, 1
  store i64 %3414, ptr %2736, align 8, !tbaa !33
  %3415 = getelementptr inbounds nuw i8, ptr %3412, i64 %3413
  store i8 %3411, ptr %3415, align 1, !tbaa !28
  %3416 = load i32, ptr %2585, align 4, !tbaa !26
  %3417 = sub nsw i32 16, %3416
  %3418 = lshr i32 %3400, %3417
  %3419 = trunc nuw i32 %3418 to i16
  store i16 %3419, ptr %2734, align 8, !tbaa !25
  %3420 = add nsw i32 %3416, -9
  br label %3426

3421:                                             ; preds = %3394
  %3422 = shl i32 %3398, %3396
  %3423 = trunc i32 %3422 to i16
  %3424 = or i16 %3395, %3423
  store i16 %3424, ptr %2734, align 8, !tbaa !25
  %3425 = add nsw i32 %3396, 7
  br label %3426

3426:                                             ; preds = %3421, %3399, %3358, %3336, %3293, %3271
  %3427 = phi i16 [ %3291, %3271 ], [ %3356, %3336 ], [ %3296, %3293 ], [ %3361, %3358 ], [ %3424, %3421 ], [ %3419, %3399 ]
  %3428 = phi i32 [ %3292, %3271 ], [ %3357, %3336 ], [ %3297, %3293 ], [ %3362, %3358 ], [ %3425, %3421 ], [ %3420, %3399 ]
  store i32 %3428, ptr %2585, align 4, !tbaa !26
  br label %3429

3429:                                             ; preds = %3186, %3426
  %3430 = phi i16 [ %3427, %3426 ], [ %3187, %3186 ]
  %3431 = phi i32 [ %3428, %3426 ], [ %3188, %3186 ]
  %3432 = icmp eq i16 %3140, 0
  br i1 %3432, label %3436, label %3433

3433:                                             ; preds = %3429
  %3434 = select i1 %3144, i32 3, i32 4
  %3435 = select i1 %3144, i32 6, i32 7
  br label %3436

3436:                                             ; preds = %3433, %3429, %3128
  %3437 = phi i16 [ %3129, %3128 ], [ %3430, %3429 ], [ %3430, %3433 ]
  %3438 = phi i32 [ %3130, %3128 ], [ %3431, %3429 ], [ %3431, %3433 ]
  %3439 = phi i32 [ %3136, %3128 ], [ 3, %3429 ], [ %3434, %3433 ]
  %3440 = phi i32 [ %3135, %3128 ], [ 138, %3429 ], [ %3435, %3433 ]
  %3441 = phi i32 [ %3142, %3128 ], [ 0, %3429 ], [ 0, %3433 ]
  %3442 = phi i32 [ %3132, %3128 ], [ %3133, %3429 ], [ %3133, %3433 ]
  %3443 = icmp eq i64 %3137, %3127
  br i1 %3443, label %3444, label %3128, !llvm.loop !79

3444:                                             ; preds = %3436, %3110
  %3445 = phi i16 [ %3111, %3110 ], [ %3437, %3436 ]
  %3446 = phi i32 [ %3112, %3110 ], [ %3438, %3436 ]
  %3447 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %3448 = load i32, ptr %3447, align 4, !tbaa !31
  %3449 = icmp eq i32 %3448, 0
  br i1 %3449, label %3684, label %3450

3450:                                             ; preds = %3444
  %3451 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %3452

3452:                                             ; preds = %3679, %3450
  %3453 = phi i16 [ %3680, %3679 ], [ %3445, %3450 ]
  %3454 = phi i32 [ %3681, %3679 ], [ %3446, %3450 ]
  %3455 = phi i32 [ %3469, %3679 ], [ 0, %3450 ]
  %3456 = load ptr, ptr %3451, align 8, !tbaa !75
  %3457 = add nuw i32 %3455, 1
  %3458 = zext i32 %3455 to i64
  %3459 = getelementptr inbounds nuw i8, ptr %3456, i64 %3458
  %3460 = load i8, ptr %3459, align 1, !tbaa !28
  %3461 = zext i8 %3460 to i32
  %3462 = add i32 %3455, 2
  %3463 = zext i32 %3457 to i64
  %3464 = getelementptr inbounds nuw i8, ptr %3456, i64 %3463
  %3465 = load i8, ptr %3464, align 1, !tbaa !28
  %3466 = zext i8 %3465 to i32
  %3467 = shl nuw nsw i32 %3466, 8
  %3468 = or disjoint i32 %3467, %3461
  %3469 = add i32 %3455, 3
  %3470 = zext i32 %3462 to i64
  %3471 = getelementptr inbounds nuw i8, ptr %3456, i64 %3470
  %3472 = load i8, ptr %3471, align 1, !tbaa !28
  %3473 = zext i8 %3472 to i32
  %3474 = icmp eq i32 %3468, 0
  %3475 = zext i8 %3472 to i64
  br i1 %3474, label %3476, label %3509

3476:                                             ; preds = %3452
  %3477 = getelementptr inbounds nuw [4 x i8], ptr %1342, i64 %3475
  %3478 = getelementptr inbounds nuw i8, ptr %3477, i64 2
  %3479 = load i16, ptr %3478, align 2, !tbaa !28
  %3480 = zext i16 %3479 to i32
  %3481 = sub nsw i32 16, %3480
  %3482 = icmp sgt i32 %3454, %3481
  %3483 = load i16, ptr %3477, align 2, !tbaa !28
  %3484 = zext i16 %3483 to i32
  %3485 = shl i32 %3484, %3454
  %3486 = trunc i32 %3485 to i16
  %3487 = or i16 %3453, %3486
  store i16 %3487, ptr %2734, align 8, !tbaa !25
  br i1 %3482, label %3488, label %3507

3488:                                             ; preds = %3476
  %3489 = trunc i16 %3487 to i8
  %3490 = load ptr, ptr %2735, align 8, !tbaa !32
  %3491 = load i64, ptr %2736, align 8, !tbaa !33
  %3492 = add i64 %3491, 1
  store i64 %3492, ptr %2736, align 8, !tbaa !33
  %3493 = getelementptr inbounds nuw i8, ptr %3490, i64 %3491
  store i8 %3489, ptr %3493, align 1, !tbaa !28
  %3494 = load i16, ptr %2734, align 8, !tbaa !25
  %3495 = lshr i16 %3494, 8
  %3496 = trunc nuw i16 %3495 to i8
  %3497 = load ptr, ptr %2735, align 8, !tbaa !32
  %3498 = load i64, ptr %2736, align 8, !tbaa !33
  %3499 = add i64 %3498, 1
  store i64 %3499, ptr %2736, align 8, !tbaa !33
  %3500 = getelementptr inbounds nuw i8, ptr %3497, i64 %3498
  store i8 %3496, ptr %3500, align 1, !tbaa !28
  %3501 = load i32, ptr %2585, align 4, !tbaa !26
  %3502 = sub nsw i32 16, %3501
  %3503 = lshr i32 %3484, %3502
  %3504 = trunc nuw i32 %3503 to i16
  store i16 %3504, ptr %2734, align 8, !tbaa !25
  %3505 = add nsw i32 %3480, -16
  %3506 = add nsw i32 %3505, %3501
  br label %3676

3507:                                             ; preds = %3476
  %3508 = add nsw i32 %3454, %3480
  br label %3676

3509:                                             ; preds = %3452
  %3510 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %3475
  %3511 = load i8, ptr %3510, align 1, !tbaa !28
  %3512 = zext i8 %3511 to i64
  %3513 = getelementptr inbounds nuw [4 x i8], ptr %1342, i64 %3512
  %3514 = getelementptr inbounds nuw i8, ptr %3513, i64 1028
  %3515 = getelementptr inbounds nuw i8, ptr %3513, i64 1030
  %3516 = load i16, ptr %3515, align 2, !tbaa !28
  %3517 = zext i16 %3516 to i32
  %3518 = sub nsw i32 16, %3517
  %3519 = icmp sgt i32 %3454, %3518
  %3520 = load i16, ptr %3514, align 2, !tbaa !28
  %3521 = zext i16 %3520 to i32
  %3522 = shl i32 %3521, %3454
  %3523 = trunc i32 %3522 to i16
  %3524 = or i16 %3453, %3523
  store i16 %3524, ptr %2734, align 8, !tbaa !25
  br i1 %3519, label %3525, label %3544

3525:                                             ; preds = %3509
  %3526 = trunc i16 %3524 to i8
  %3527 = load ptr, ptr %2735, align 8, !tbaa !32
  %3528 = load i64, ptr %2736, align 8, !tbaa !33
  %3529 = add i64 %3528, 1
  store i64 %3529, ptr %2736, align 8, !tbaa !33
  %3530 = getelementptr inbounds nuw i8, ptr %3527, i64 %3528
  store i8 %3526, ptr %3530, align 1, !tbaa !28
  %3531 = load i16, ptr %2734, align 8, !tbaa !25
  %3532 = lshr i16 %3531, 8
  %3533 = trunc nuw i16 %3532 to i8
  %3534 = load ptr, ptr %2735, align 8, !tbaa !32
  %3535 = load i64, ptr %2736, align 8, !tbaa !33
  %3536 = add i64 %3535, 1
  store i64 %3536, ptr %2736, align 8, !tbaa !33
  %3537 = getelementptr inbounds nuw i8, ptr %3534, i64 %3535
  store i8 %3533, ptr %3537, align 1, !tbaa !28
  %3538 = load i32, ptr %2585, align 4, !tbaa !26
  %3539 = sub nsw i32 16, %3538
  %3540 = lshr i32 %3521, %3539
  %3541 = trunc nuw i32 %3540 to i16
  %3542 = add nsw i32 %3517, -16
  %3543 = add nsw i32 %3542, %3538
  br label %3546

3544:                                             ; preds = %3509
  %3545 = add nsw i32 %3454, %3517
  br label %3546

3546:                                             ; preds = %3544, %3525
  %3547 = phi i16 [ %3524, %3544 ], [ %3541, %3525 ]
  %3548 = phi i32 [ %3545, %3544 ], [ %3543, %3525 ]
  store i32 %3548, ptr %2585, align 4, !tbaa !26
  %3549 = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %3512
  %3550 = load i32, ptr %3549, align 4, !tbaa !4
  %3551 = add i8 %3511, -28
  %3552 = icmp ult i8 %3551, -20
  br i1 %3552, label %3590, label %3553

3553:                                             ; preds = %3546
  %3554 = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %3512
  %3555 = load i32, ptr %3554, align 4, !tbaa !4
  %3556 = sub nsw i32 %3473, %3555
  %3557 = sub nsw i32 16, %3550
  %3558 = icmp sgt i32 %3548, %3557
  br i1 %3558, label %3559, label %3582

3559:                                             ; preds = %3553
  %3560 = and i32 %3556, 65535
  %3561 = shl i32 %3556, %3548
  %3562 = trunc i32 %3561 to i16
  %3563 = or i16 %3547, %3562
  store i16 %3563, ptr %2734, align 8, !tbaa !25
  %3564 = trunc i16 %3563 to i8
  %3565 = load ptr, ptr %2735, align 8, !tbaa !32
  %3566 = load i64, ptr %2736, align 8, !tbaa !33
  %3567 = add i64 %3566, 1
  store i64 %3567, ptr %2736, align 8, !tbaa !33
  %3568 = getelementptr inbounds nuw i8, ptr %3565, i64 %3566
  store i8 %3564, ptr %3568, align 1, !tbaa !28
  %3569 = load i16, ptr %2734, align 8, !tbaa !25
  %3570 = lshr i16 %3569, 8
  %3571 = trunc nuw i16 %3570 to i8
  %3572 = load ptr, ptr %2735, align 8, !tbaa !32
  %3573 = load i64, ptr %2736, align 8, !tbaa !33
  %3574 = add i64 %3573, 1
  store i64 %3574, ptr %2736, align 8, !tbaa !33
  %3575 = getelementptr inbounds nuw i8, ptr %3572, i64 %3573
  store i8 %3571, ptr %3575, align 1, !tbaa !28
  %3576 = load i32, ptr %2585, align 4, !tbaa !26
  %3577 = sub nsw i32 16, %3576
  %3578 = lshr i32 %3560, %3577
  %3579 = trunc nuw i32 %3578 to i16
  %3580 = add nsw i32 %3550, -16
  %3581 = add nsw i32 %3580, %3576
  br label %3587

3582:                                             ; preds = %3553
  %3583 = shl i32 %3556, %3548
  %3584 = trunc i32 %3583 to i16
  %3585 = or i16 %3547, %3584
  %3586 = add nsw i32 %3550, %3548
  br label %3587

3587:                                             ; preds = %3582, %3559
  %3588 = phi i16 [ %3579, %3559 ], [ %3585, %3582 ]
  %3589 = phi i32 [ %3581, %3559 ], [ %3586, %3582 ]
  store i32 %3589, ptr %2585, align 4, !tbaa !26
  br label %3590

3590:                                             ; preds = %3587, %3546
  %3591 = phi i16 [ %3588, %3587 ], [ %3547, %3546 ]
  %3592 = phi i32 [ %3589, %3587 ], [ %3548, %3546 ]
  %3593 = add nsw i32 %3468, -1
  %3594 = icmp samesign ult i32 %3468, 257
  %3595 = zext nneg i32 %3593 to i64
  %3596 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %3595
  %3597 = lshr i32 %3593, 7
  %3598 = zext nneg i32 %3597 to i64
  %3599 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %3598
  %3600 = getelementptr inbounds nuw i8, ptr %3599, i64 256
  %3601 = select i1 %3594, ptr %3596, ptr %3600
  %3602 = load i8, ptr %3601, align 1, !tbaa !28
  %3603 = zext i8 %3602 to i64
  %3604 = getelementptr inbounds nuw [4 x i8], ptr %1417, i64 %3603
  %3605 = getelementptr inbounds nuw i8, ptr %3604, i64 2
  %3606 = load i16, ptr %3605, align 2, !tbaa !28
  %3607 = zext i16 %3606 to i32
  %3608 = sub nsw i32 16, %3607
  %3609 = icmp sgt i32 %3592, %3608
  %3610 = load i16, ptr %3604, align 2, !tbaa !28
  %3611 = zext i16 %3610 to i32
  %3612 = shl i32 %3611, %3592
  %3613 = trunc i32 %3612 to i16
  %3614 = or i16 %3591, %3613
  store i16 %3614, ptr %2734, align 8, !tbaa !25
  br i1 %3609, label %3615, label %3634

3615:                                             ; preds = %3590
  %3616 = trunc i16 %3614 to i8
  %3617 = load ptr, ptr %2735, align 8, !tbaa !32
  %3618 = load i64, ptr %2736, align 8, !tbaa !33
  %3619 = add i64 %3618, 1
  store i64 %3619, ptr %2736, align 8, !tbaa !33
  %3620 = getelementptr inbounds nuw i8, ptr %3617, i64 %3618
  store i8 %3616, ptr %3620, align 1, !tbaa !28
  %3621 = load i16, ptr %2734, align 8, !tbaa !25
  %3622 = lshr i16 %3621, 8
  %3623 = trunc nuw i16 %3622 to i8
  %3624 = load ptr, ptr %2735, align 8, !tbaa !32
  %3625 = load i64, ptr %2736, align 8, !tbaa !33
  %3626 = add i64 %3625, 1
  store i64 %3626, ptr %2736, align 8, !tbaa !33
  %3627 = getelementptr inbounds nuw i8, ptr %3624, i64 %3625
  store i8 %3623, ptr %3627, align 1, !tbaa !28
  %3628 = load i32, ptr %2585, align 4, !tbaa !26
  %3629 = sub nsw i32 16, %3628
  %3630 = lshr i32 %3611, %3629
  %3631 = trunc nuw i32 %3630 to i16
  store i16 %3631, ptr %2734, align 8, !tbaa !25
  %3632 = add nsw i32 %3607, -16
  %3633 = add nsw i32 %3632, %3628
  br label %3636

3634:                                             ; preds = %3590
  %3635 = add nsw i32 %3592, %3607
  br label %3636

3636:                                             ; preds = %3634, %3615
  %3637 = phi i16 [ %3614, %3634 ], [ %3631, %3615 ]
  %3638 = phi i32 [ %3635, %3634 ], [ %3633, %3615 ]
  store i32 %3638, ptr %2585, align 4, !tbaa !26
  %3639 = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %3603
  %3640 = load i32, ptr %3639, align 4, !tbaa !4
  %3641 = icmp ult i8 %3602, 4
  br i1 %3641, label %3679, label %3642

3642:                                             ; preds = %3636
  %3643 = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %3603
  %3644 = load i32, ptr %3643, align 4, !tbaa !4
  %3645 = sub i32 %3593, %3644
  %3646 = sub nsw i32 16, %3640
  %3647 = icmp sgt i32 %3638, %3646
  br i1 %3647, label %3648, label %3671

3648:                                             ; preds = %3642
  %3649 = and i32 %3645, 65535
  %3650 = shl i32 %3645, %3638
  %3651 = trunc i32 %3650 to i16
  %3652 = or i16 %3637, %3651
  store i16 %3652, ptr %2734, align 8, !tbaa !25
  %3653 = trunc i16 %3652 to i8
  %3654 = load ptr, ptr %2735, align 8, !tbaa !32
  %3655 = load i64, ptr %2736, align 8, !tbaa !33
  %3656 = add i64 %3655, 1
  store i64 %3656, ptr %2736, align 8, !tbaa !33
  %3657 = getelementptr inbounds nuw i8, ptr %3654, i64 %3655
  store i8 %3653, ptr %3657, align 1, !tbaa !28
  %3658 = load i16, ptr %2734, align 8, !tbaa !25
  %3659 = lshr i16 %3658, 8
  %3660 = trunc nuw i16 %3659 to i8
  %3661 = load ptr, ptr %2735, align 8, !tbaa !32
  %3662 = load i64, ptr %2736, align 8, !tbaa !33
  %3663 = add i64 %3662, 1
  store i64 %3663, ptr %2736, align 8, !tbaa !33
  %3664 = getelementptr inbounds nuw i8, ptr %3661, i64 %3662
  store i8 %3660, ptr %3664, align 1, !tbaa !28
  %3665 = load i32, ptr %2585, align 4, !tbaa !26
  %3666 = sub nsw i32 16, %3665
  %3667 = lshr i32 %3649, %3666
  %3668 = trunc nuw i32 %3667 to i16
  store i16 %3668, ptr %2734, align 8, !tbaa !25
  %3669 = add nsw i32 %3640, -16
  %3670 = add nsw i32 %3669, %3665
  br label %3676

3671:                                             ; preds = %3642
  %3672 = shl i32 %3645, %3638
  %3673 = trunc i32 %3672 to i16
  %3674 = or i16 %3637, %3673
  store i16 %3674, ptr %2734, align 8, !tbaa !25
  %3675 = add nsw i32 %3640, %3638
  br label %3676

3676:                                             ; preds = %3671, %3648, %3507, %3488
  %3677 = phi i16 [ %3504, %3488 ], [ %3487, %3507 ], [ %3674, %3671 ], [ %3668, %3648 ]
  %3678 = phi i32 [ %3506, %3488 ], [ %3508, %3507 ], [ %3675, %3671 ], [ %3670, %3648 ]
  store i32 %3678, ptr %2585, align 4, !tbaa !26
  br label %3679

3679:                                             ; preds = %3676, %3636
  %3680 = phi i16 [ %3637, %3636 ], [ %3677, %3676 ]
  %3681 = phi i32 [ %3638, %3636 ], [ %3678, %3676 ]
  %3682 = load i32, ptr %3447, align 4, !tbaa !31
  %3683 = icmp ult i32 %3469, %3682
  br i1 %3683, label %3452, label %3684, !llvm.loop !76

3684:                                             ; preds = %3679, %3444
  %3685 = phi i16 [ %3445, %3444 ], [ %3680, %3679 ]
  %3686 = phi i32 [ %3446, %3444 ], [ %3681, %3679 ]
  %3687 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %3688 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %3689 = load i16, ptr %3688, align 2, !tbaa !28
  %3690 = zext i16 %3689 to i32
  %3691 = sub nsw i32 16, %3690
  %3692 = icmp sgt i32 %3686, %3691
  %3693 = load i16, ptr %3687, align 2, !tbaa !28
  %3694 = zext i16 %3693 to i32
  %3695 = shl i32 %3694, %3686
  %3696 = trunc i32 %3695 to i16
  %3697 = or i16 %3685, %3696
  store i16 %3697, ptr %2734, align 8, !tbaa !25
  br i1 %3692, label %3698, label %3717

3698:                                             ; preds = %3684
  %3699 = trunc i16 %3697 to i8
  %3700 = load ptr, ptr %2735, align 8, !tbaa !32
  %3701 = load i64, ptr %2736, align 8, !tbaa !33
  %3702 = add i64 %3701, 1
  store i64 %3702, ptr %2736, align 8, !tbaa !33
  %3703 = getelementptr inbounds nuw i8, ptr %3700, i64 %3701
  store i8 %3699, ptr %3703, align 1, !tbaa !28
  %3704 = load i16, ptr %2734, align 8, !tbaa !25
  %3705 = lshr i16 %3704, 8
  %3706 = trunc nuw i16 %3705 to i8
  %3707 = load ptr, ptr %2735, align 8, !tbaa !32
  %3708 = load i64, ptr %2736, align 8, !tbaa !33
  %3709 = add i64 %3708, 1
  store i64 %3709, ptr %2736, align 8, !tbaa !33
  %3710 = getelementptr inbounds nuw i8, ptr %3707, i64 %3708
  store i8 %3706, ptr %3710, align 1, !tbaa !28
  %3711 = load i32, ptr %2585, align 4, !tbaa !26
  %3712 = sub nsw i32 16, %3711
  %3713 = lshr i32 %3694, %3712
  %3714 = trunc nuw i32 %3713 to i16
  store i16 %3714, ptr %2734, align 8, !tbaa !25
  %3715 = add nsw i32 %3690, -16
  %3716 = add nsw i32 %3715, %3711
  br label %3719

3717:                                             ; preds = %3684
  %3718 = add nsw i32 %3686, %3690
  br label %3719

3719:                                             ; preds = %3698, %3717
  %3720 = phi i32 [ %3718, %3717 ], [ %3716, %3698 ]
  store i32 %3720, ptr %2585, align 4, !tbaa !26
  br label %3721

3721:                                             ; preds = %2582, %3719, %2279
  %3722 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %3723

3723:                                             ; preds = %3723, %3721
  %3724 = phi i64 [ 0, %3721 ], [ %3728, %3723 ]
  %3725 = getelementptr inbounds nuw [4 x i8], ptr %3722, i64 %3724
  store i16 0, ptr %3725, align 4, !tbaa !28
  %3726 = getelementptr inbounds nuw [4 x i8], ptr %3722, i64 %3724
  %3727 = getelementptr inbounds nuw i8, ptr %3726, i64 4
  store i16 0, ptr %3727, align 4, !tbaa !28
  %3728 = add nuw nsw i64 %3724, 2
  %3729 = icmp eq i64 %3728, 286
  br i1 %3729, label %3730, label %3723, !llvm.loop !29

3730:                                             ; preds = %3723
  %3731 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %3731, align 4, !tbaa !28
  %3732 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %3732, align 4, !tbaa !28
  %3733 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %3733, align 4, !tbaa !28
  %3734 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %3734, align 4, !tbaa !28
  %3735 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %3735, align 4, !tbaa !28
  %3736 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %3736, align 4, !tbaa !28
  %3737 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %3737, align 4, !tbaa !28
  %3738 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %3738, align 4, !tbaa !28
  %3739 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %3739, align 4, !tbaa !28
  %3740 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %3740, align 4, !tbaa !28
  %3741 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %3741, align 4, !tbaa !28
  %3742 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %3742, align 4, !tbaa !28
  %3743 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %3743, align 4, !tbaa !28
  %3744 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %3744, align 4, !tbaa !28
  %3745 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %3745, align 4, !tbaa !28
  %3746 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %3746, align 4, !tbaa !28
  %3747 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %3747, align 4, !tbaa !28
  %3748 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %3748, align 4, !tbaa !28
  %3749 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %3749, align 4, !tbaa !28
  %3750 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %3750, align 4, !tbaa !28
  %3751 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %3751, align 4, !tbaa !28
  %3752 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %3752, align 4, !tbaa !28
  %3753 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %3753, align 4, !tbaa !28
  %3754 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %3754, align 4, !tbaa !28
  %3755 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %3755, align 4, !tbaa !28
  %3756 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %3756, align 4, !tbaa !28
  %3757 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %3757, align 4, !tbaa !28
  %3758 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %3758, align 4, !tbaa !28
  %3759 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %3759, align 4, !tbaa !28
  %3760 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %3760, align 4, !tbaa !28
  %3761 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %3761, align 4, !tbaa !28
  %3762 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %3762, align 4, !tbaa !28
  %3763 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %3763, align 4, !tbaa !28
  %3764 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %3764, align 4, !tbaa !28
  %3765 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %3765, align 4, !tbaa !28
  %3766 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %3766, align 4, !tbaa !28
  %3767 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %3767, align 4, !tbaa !28
  %3768 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %3768, align 4, !tbaa !28
  %3769 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %3769, align 4, !tbaa !28
  %3770 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %3770, align 4, !tbaa !28
  %3771 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %3771, align 4, !tbaa !28
  %3772 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %3772, align 4, !tbaa !28
  %3773 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %3773, align 4, !tbaa !28
  %3774 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %3774, align 4, !tbaa !28
  %3775 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %3775, align 4, !tbaa !28
  %3776 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %3776, align 4, !tbaa !28
  %3777 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %3777, align 4, !tbaa !28
  %3778 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %3778, align 4, !tbaa !28
  %3779 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %3779, align 4, !tbaa !28
  %3780 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %3780, align 4, !tbaa !28
  %3781 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %3782 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %3782, align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3781, i8 0, i64 20, i1 false)
  %3783 = icmp eq i32 %3, 0
  br i1 %3783, label %3824, label %3784

3784:                                             ; preds = %3730
  %3785 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3786 = load i32, ptr %3785, align 4, !tbaa !26
  %3787 = icmp sgt i32 %3786, 8
  br i1 %3787, label %3788, label %3805

3788:                                             ; preds = %3784
  %3789 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3790 = load i16, ptr %3789, align 8, !tbaa !25
  %3791 = trunc i16 %3790 to i8
  %3792 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3793 = load ptr, ptr %3792, align 8, !tbaa !32
  %3794 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3795 = load i64, ptr %3794, align 8, !tbaa !33
  %3796 = add i64 %3795, 1
  store i64 %3796, ptr %3794, align 8, !tbaa !33
  %3797 = getelementptr inbounds nuw i8, ptr %3793, i64 %3795
  store i8 %3791, ptr %3797, align 1, !tbaa !28
  %3798 = load i16, ptr %3789, align 8, !tbaa !25
  %3799 = lshr i16 %3798, 8
  %3800 = trunc nuw i16 %3799 to i8
  %3801 = load ptr, ptr %3792, align 8, !tbaa !32
  %3802 = load i64, ptr %3794, align 8, !tbaa !33
  %3803 = add i64 %3802, 1
  store i64 %3803, ptr %3794, align 8, !tbaa !33
  %3804 = getelementptr inbounds nuw i8, ptr %3801, i64 %3802
  store i8 %3800, ptr %3804, align 1, !tbaa !28
  br label %3817

3805:                                             ; preds = %3784
  %3806 = icmp sgt i32 %3786, 0
  br i1 %3806, label %3807, label %3817

3807:                                             ; preds = %3805
  %3808 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3809 = load i16, ptr %3808, align 8, !tbaa !25
  %3810 = trunc i16 %3809 to i8
  %3811 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3812 = load ptr, ptr %3811, align 8, !tbaa !32
  %3813 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3814 = load i64, ptr %3813, align 8, !tbaa !33
  %3815 = add i64 %3814, 1
  store i64 %3815, ptr %3813, align 8, !tbaa !33
  %3816 = getelementptr inbounds nuw i8, ptr %3812, i64 %3814
  store i8 %3810, ptr %3816, align 1, !tbaa !28
  br label %3817

3817:                                             ; preds = %3788, %3805, %3807
  %3818 = load i32, ptr %3785, align 4, !tbaa !26
  %3819 = add i32 %3818, 7
  %3820 = and i32 %3819, 7
  %3821 = add nuw nsw i32 %3820, 1
  %3822 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %3821, ptr %3822, align 8, !tbaa !27
  %3823 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %3823, align 8, !tbaa !25
  store i32 0, ptr %3785, align 4, !tbaa !26
  br label %3824

3824:                                             ; preds = %3817, %3730
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = trunc i32 %1 to i8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %8 = load i32, ptr %7, align 4, !tbaa !31
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !31
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 %10
  store i8 %4, ptr %11, align 1, !tbaa !28
  %12 = lshr i32 %1, 8
  %13 = trunc i32 %12 to i8
  %14 = load ptr, ptr %5, align 8, !tbaa !75
  %15 = load i32, ptr %7, align 4, !tbaa !31
  %16 = add i32 %15, 1
  store i32 %16, ptr %7, align 4, !tbaa !31
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 %17
  store i8 %13, ptr %18, align 1, !tbaa !28
  %19 = trunc i32 %2 to i8
  %20 = load ptr, ptr %5, align 8, !tbaa !75
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
  %34 = load i32, ptr %33, align 8, !tbaa !80
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !80
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
  %62 = load i32, ptr %61, align 8, !tbaa !81
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i32
  ret i32 %64
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

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
!32 = !{!9, !12, i64 16}
!33 = !{!9, !13, i64 40}
!34 = !{!9, !5, i64 196}
!35 = !{!9, !10, i64 0}
!36 = !{!37, !5, i64 88}
!37 = !{!"z_stream_s", !12, i64 0, !5, i64 8, !13, i64 16, !12, i64 24, !5, i64 32, !13, i64 40, !12, i64 48, !38, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!38 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!39 = distinct !{!39, !30}
!40 = !{!16, !17, i64 0}
!41 = !{!16, !18, i64 16}
!42 = !{!43, !17, i64 0}
!43 = !{!"static_tree_desc_s", !17, i64 0, !44, i64 8, !5, i64 16, !5, i64 20, !5, i64 24}
!44 = !{!"p1 int", !11, i64 0}
!45 = !{!43, !5, i64 20}
!46 = !{!9, !5, i64 5300}
!47 = !{!9, !5, i64 5304}
!48 = distinct !{!48, !30}
!49 = !{!9, !13, i64 5912}
!50 = !{!9, !13, i64 5920}
!51 = distinct !{!51, !30}
!52 = !{!16, !5, i64 8}
!53 = distinct !{!53, !30}
!54 = distinct !{!54, !30}
!55 = distinct !{!55, !30}
!56 = !{!43, !44, i64 8}
!57 = !{!43, !5, i64 16}
!58 = !{!43, !5, i64 24}
!59 = !{!19, !19, i64 0}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !67}
!70 = !{!9, !5, i64 2912}
!71 = distinct !{!71, !30}
!72 = !{!9, !5, i64 2936}
!73 = distinct !{!73, !67}
!74 = !{!9, !5, i64 200}
!75 = !{!9, !12, i64 5888}
!76 = distinct !{!76, !30}
!77 = distinct !{!77, !30}
!78 = distinct !{!78, !30}
!79 = distinct !{!79, !30}
!80 = !{!9, !5, i64 5928}
!81 = !{!9, !5, i64 5904}
