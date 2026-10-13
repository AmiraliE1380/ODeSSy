; ModuleID = '/mydata/zlib/trees.c'
source_filename = "/mydata/zlib/trees.c"
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
  store ptr %2, ptr %3, align 8, !tbaa !5
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
  %16 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %2, i64 0, i64 %15
  store i16 0, ptr %16, align 4, !tbaa !28
  %17 = or disjoint i64 %15, 1
  %18 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %2, i64 0, i64 %17
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

; Function Attrs: nounwind uwtable
define dso_local void @_tr_stored_block(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %6 = load i32, ptr %5, align 4, !tbaa !26
  %7 = icmp sgt i32 %6, 13
  br i1 %7, label %9, label %47

8:                                                ; preds = %31
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

9:                                                ; preds = %4
  %10 = and i32 %3, 65535
  %11 = shl i32 %3, %6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %13 = load i16, ptr %12, align 8, !tbaa !25
  %14 = trunc i32 %11 to i16
  %15 = or i16 %13, %14
  store i16 %15, ptr %12, align 8, !tbaa !25
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = load i64, ptr %16, align 8, !tbaa !33
  %18 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %17, i64 1), !nosanitize !32
  %19 = extractvalue { i64, i1 } %18, 1, !nosanitize !32
  br i1 %19, label %20, label %21, !prof !34, !nosanitize !32

20:                                               ; preds = %9
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

21:                                               ; preds = %9
  %22 = extractvalue { i64, i1 } %18, 0, !nosanitize !32
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = trunc i16 %15 to i8
  store i64 %22, ptr %16, align 8, !tbaa !33
  %26 = getelementptr inbounds nuw i8, ptr %24, i64 %17
  store i8 %25, ptr %26, align 1, !tbaa !28
  %27 = load i64, ptr %16, align 8, !tbaa !33
  %28 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 1), !nosanitize !32
  %29 = extractvalue { i64, i1 } %28, 1, !nosanitize !32
  br i1 %29, label %30, label %31, !prof !34, !nosanitize !32

30:                                               ; preds = %41, %21
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

31:                                               ; preds = %21
  %32 = extractvalue { i64, i1 } %28, 0, !nosanitize !32
  %33 = load ptr, ptr %23, align 8, !tbaa !35
  %34 = load i16, ptr %12, align 8, !tbaa !25
  %35 = lshr i16 %34, 8
  %36 = trunc nuw i16 %35 to i8
  store i64 %32, ptr %16, align 8, !tbaa !33
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 %27
  store i8 %36, ptr %37, align 1, !tbaa !28
  %38 = load i32, ptr %5, align 4, !tbaa !26
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %38), !nosanitize !32
  %40 = extractvalue { i32, i1 } %39, 1, !nosanitize !32
  br i1 %40, label %8, label %41, !prof !34, !nosanitize !32

41:                                               ; preds = %31
  %42 = extractvalue { i32, i1 } %39, 0, !nosanitize !32
  %43 = lshr i32 %10, %42
  %44 = trunc nuw i32 %43 to i16
  store i16 %44, ptr %12, align 8, !tbaa !25
  %45 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 -13), !nosanitize !32
  %46 = extractvalue { i32, i1 } %45, 1, !nosanitize !32
  br i1 %46, label %30, label %55, !prof !34, !nosanitize !32

47:                                               ; preds = %4
  %48 = shl i32 %3, %6
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %50 = load i16, ptr %49, align 8, !tbaa !25
  %51 = trunc i32 %48 to i16
  %52 = or i16 %50, %51
  store i16 %52, ptr %49, align 8, !tbaa !25
  %53 = add nsw i32 %6, 3
  %54 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %53, 0
  br label %55

55:                                               ; preds = %47, %41
  %56 = phi i16 [ %44, %41 ], [ %52, %47 ]
  %57 = phi { i32, i1 } [ %45, %41 ], [ %54, %47 ]
  %58 = extractvalue { i32, i1 } %57, 0
  store i32 %58, ptr %5, align 4, !tbaa !26
  %59 = icmp sgt i32 %58, 8
  br i1 %59, label %60, label %84

60:                                               ; preds = %55
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %62 = load i64, ptr %61, align 8, !tbaa !33
  %63 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %62, i64 1), !nosanitize !32
  %64 = extractvalue { i64, i1 } %63, 1, !nosanitize !32
  br i1 %64, label %65, label %66, !prof !34, !nosanitize !32

65:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

66:                                               ; preds = %60
  %67 = extractvalue { i64, i1 } %63, 0, !nosanitize !32
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %69 = load ptr, ptr %68, align 8, !tbaa !35
  %70 = trunc i16 %56 to i8
  store i64 %67, ptr %61, align 8, !tbaa !33
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 %62
  store i8 %70, ptr %71, align 1, !tbaa !28
  %72 = load i64, ptr %61, align 8, !tbaa !33
  %73 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %72, i64 1), !nosanitize !32
  %74 = extractvalue { i64, i1 } %73, 1, !nosanitize !32
  br i1 %74, label %75, label %76, !prof !34, !nosanitize !32

75:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

76:                                               ; preds = %66
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %78 = extractvalue { i64, i1 } %73, 0, !nosanitize !32
  %79 = load ptr, ptr %68, align 8, !tbaa !35
  %80 = load i16, ptr %77, align 8, !tbaa !25
  %81 = lshr i16 %80, 8
  %82 = trunc nuw i16 %81 to i8
  store i64 %78, ptr %61, align 8, !tbaa !33
  %83 = getelementptr inbounds nuw i8, ptr %79, i64 %72
  store i8 %82, ptr %83, align 1, !tbaa !28
  br label %98

84:                                               ; preds = %55
  %85 = icmp sgt i32 %58, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %84
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %88 = load i64, ptr %87, align 8, !tbaa !33
  %89 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %88, i64 1), !nosanitize !32
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !32
  br i1 %90, label %91, label %92, !prof !34, !nosanitize !32

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

92:                                               ; preds = %86
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !32
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %95 = load ptr, ptr %94, align 8, !tbaa !35
  %96 = trunc i16 %56 to i8
  store i64 %93, ptr %87, align 8, !tbaa !33
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 %88
  store i8 %96, ptr %97, align 1, !tbaa !28
  br label %98

98:                                               ; preds = %92, %84, %76
  %99 = load i32, ptr %5, align 4, !tbaa !26
  %100 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %99, i32 -1)
  %101 = extractvalue { i32, i1 } %100, 1, !nosanitize !32
  br i1 %101, label %102, label %103, !prof !34, !nosanitize !32

102:                                              ; preds = %98
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

103:                                              ; preds = %98
  %104 = extractvalue { i32, i1 } %100, 0, !nosanitize !32
  %105 = and i32 %104, 7
  %106 = add nuw nsw i32 %105, 1
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %106, ptr %107, align 8, !tbaa !27
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %108, align 8, !tbaa !25
  store i32 0, ptr %5, align 4, !tbaa !26
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %111 = load i64, ptr %110, align 8, !tbaa !33
  %112 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 1), !nosanitize !32
  %113 = extractvalue { i64, i1 } %112, 1, !nosanitize !32
  br i1 %113, label %114, label %115, !prof !34, !nosanitize !32

114:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

115:                                              ; preds = %103
  %116 = extractvalue { i64, i1 } %112, 0, !nosanitize !32
  %117 = load ptr, ptr %109, align 8, !tbaa !35
  %118 = trunc i64 %2 to i8
  store i64 %116, ptr %110, align 8, !tbaa !33
  %119 = getelementptr inbounds nuw i8, ptr %117, i64 %111
  store i8 %118, ptr %119, align 1, !tbaa !28
  %120 = load i64, ptr %110, align 8, !tbaa !33
  %121 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %120, i64 1), !nosanitize !32
  %122 = extractvalue { i64, i1 } %121, 1, !nosanitize !32
  br i1 %122, label %123, label %124, !prof !34, !nosanitize !32

123:                                              ; preds = %115
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

124:                                              ; preds = %115
  %125 = extractvalue { i64, i1 } %121, 0, !nosanitize !32
  %126 = load ptr, ptr %109, align 8, !tbaa !35
  %127 = lshr i64 %2, 8
  %128 = trunc i64 %127 to i8
  store i64 %125, ptr %110, align 8, !tbaa !33
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 %120
  store i8 %128, ptr %129, align 1, !tbaa !28
  %130 = load i64, ptr %110, align 8, !tbaa !33
  %131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 1), !nosanitize !32
  %132 = extractvalue { i64, i1 } %131, 1, !nosanitize !32
  br i1 %132, label %133, label %134, !prof !34, !nosanitize !32

133:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

134:                                              ; preds = %124
  %135 = extractvalue { i64, i1 } %131, 0, !nosanitize !32
  %136 = load ptr, ptr %109, align 8, !tbaa !35
  %137 = trunc i64 %2 to i32
  %138 = xor i32 %137, 65535
  %139 = trunc i32 %138 to i8
  store i64 %135, ptr %110, align 8, !tbaa !33
  %140 = getelementptr inbounds nuw i8, ptr %136, i64 %130
  store i8 %139, ptr %140, align 1, !tbaa !28
  %141 = load i64, ptr %110, align 8, !tbaa !33
  %142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %141, i64 1), !nosanitize !32
  %143 = extractvalue { i64, i1 } %142, 1, !nosanitize !32
  br i1 %143, label %144, label %145, !prof !34, !nosanitize !32

144:                                              ; preds = %134
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

145:                                              ; preds = %134
  %146 = extractvalue { i64, i1 } %142, 0, !nosanitize !32
  %147 = load ptr, ptr %109, align 8, !tbaa !35
  %148 = lshr i32 %138, 8
  %149 = trunc i32 %148 to i8
  store i64 %146, ptr %110, align 8, !tbaa !33
  %150 = getelementptr inbounds nuw i8, ptr %147, i64 %141
  store i8 %149, ptr %150, align 1, !tbaa !28
  %151 = icmp eq i64 %2, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %145
  %153 = load ptr, ptr %109, align 8, !tbaa !35
  %154 = load i64, ptr %110, align 8, !tbaa !33
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 %154
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %155, ptr align 1 %1, i64 %2, i1 false)
  br label %156

156:                                              ; preds = %152, %145
  %157 = load i64, ptr %110, align 8, !tbaa !33
  %158 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %157, i64 %2), !nosanitize !32
  %159 = extractvalue { i64, i1 } %158, 1, !nosanitize !32
  br i1 %159, label %160, label %161, !prof !34, !nosanitize !32

160:                                              ; preds = %156
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

161:                                              ; preds = %156
  %162 = extractvalue { i64, i1 } %158, 0, !nosanitize !32
  store i64 %162, ptr %110, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @_tr_flush_bits(ptr noundef captures(none) %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !33
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 1), !nosanitize !32
  %10 = extractvalue { i64, i1 } %9, 1, !nosanitize !32
  br i1 %10, label %11, label %12, !prof !34, !nosanitize !32

11:                                               ; preds = %5
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

12:                                               ; preds = %5
  %13 = extractvalue { i64, i1 } %9, 0, !nosanitize !32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = load i16, ptr %6, align 8, !tbaa !25
  %17 = trunc i16 %16 to i8
  store i64 %13, ptr %7, align 8, !tbaa !33
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 %8
  store i8 %17, ptr %18, align 1, !tbaa !28
  %19 = load i64, ptr %7, align 8, !tbaa !33
  %20 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 1), !nosanitize !32
  %21 = extractvalue { i64, i1 } %20, 1, !nosanitize !32
  br i1 %21, label %22, label %23, !prof !34, !nosanitize !32

22:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

23:                                               ; preds = %12
  %24 = extractvalue { i64, i1 } %20, 0, !nosanitize !32
  %25 = load ptr, ptr %14, align 8, !tbaa !35
  %26 = load i16, ptr %6, align 8, !tbaa !25
  %27 = lshr i16 %26, 8
  %28 = trunc nuw i16 %27 to i8
  store i64 %24, ptr %7, align 8, !tbaa !33
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 %19
  store i8 %28, ptr %29, align 1, !tbaa !28
  store i16 0, ptr %6, align 8, !tbaa !25
  br label %54

30:                                               ; preds = %1
  %31 = icmp sgt i32 %3, 7
  br i1 %31, label %32, label %56

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %34 = load i64, ptr %33, align 8, !tbaa !33
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %34, i64 1), !nosanitize !32
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !32
  br i1 %36, label %37, label %38, !prof !34, !nosanitize !32

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !32
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %43 = load i16, ptr %42, align 8, !tbaa !25
  %44 = trunc i16 %43 to i8
  store i64 %39, ptr %33, align 8, !tbaa !33
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 %34
  store i8 %44, ptr %45, align 1, !tbaa !28
  %46 = load i16, ptr %42, align 8, !tbaa !25
  %47 = lshr i16 %46, 8
  store i16 %47, ptr %42, align 8, !tbaa !25
  %48 = load i32, ptr %2, align 4, !tbaa !26
  %49 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %48, i32 -8)
  %50 = extractvalue { i32, i1 } %49, 1, !nosanitize !32
  br i1 %50, label %51, label %52, !prof !34, !nosanitize !32

51:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

52:                                               ; preds = %38
  %53 = extractvalue { i32, i1 } %49, 0, !nosanitize !32
  br label %54

54:                                               ; preds = %52, %23
  %55 = phi i32 [ %53, %52 ], [ 0, %23 ]
  store i32 %55, ptr %2, align 4, !tbaa !26
  br label %56

56:                                               ; preds = %30, %54
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_tr_align(ptr noundef captures(none) %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = icmp sgt i32 %3, 13
  %5 = shl i32 2, %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %7 = load i16, ptr %6, align 8, !tbaa !25
  %8 = trunc i32 %5 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %6, align 8, !tbaa !25
  br i1 %4, label %11, label %43

10:                                               ; preds = %68, %27
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load i64, ptr %12, align 8, !tbaa !33
  %14 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 1), !nosanitize !32
  %15 = extractvalue { i64, i1 } %14, 1, !nosanitize !32
  br i1 %15, label %16, label %17, !prof !34, !nosanitize !32

16:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

17:                                               ; preds = %11
  %18 = extractvalue { i64, i1 } %14, 0, !nosanitize !32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = trunc i16 %9 to i8
  store i64 %18, ptr %12, align 8, !tbaa !33
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 %13
  store i8 %21, ptr %22, align 1, !tbaa !28
  %23 = load i64, ptr %12, align 8, !tbaa !33
  %24 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %23, i64 1), !nosanitize !32
  %25 = extractvalue { i64, i1 } %24, 1, !nosanitize !32
  br i1 %25, label %26, label %27, !prof !34, !nosanitize !32

26:                                               ; preds = %37, %17
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

27:                                               ; preds = %17
  %28 = extractvalue { i64, i1 } %24, 0, !nosanitize !32
  %29 = load ptr, ptr %19, align 8, !tbaa !35
  %30 = load i16, ptr %6, align 8, !tbaa !25
  %31 = lshr i16 %30, 8
  %32 = trunc nuw i16 %31 to i8
  store i64 %28, ptr %12, align 8, !tbaa !33
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 %23
  store i8 %32, ptr %33, align 1, !tbaa !28
  %34 = load i32, ptr %2, align 4, !tbaa !26
  %35 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %34), !nosanitize !32
  %36 = extractvalue { i32, i1 } %35, 1, !nosanitize !32
  br i1 %36, label %10, label %37, !prof !34, !nosanitize !32

37:                                               ; preds = %27
  %38 = extractvalue { i32, i1 } %35, 0, !nosanitize !32
  %39 = lshr i32 2, %38
  %40 = trunc nuw nsw i32 %39 to i16
  store i16 %40, ptr %6, align 8, !tbaa !25
  %41 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 -13), !nosanitize !32
  %42 = extractvalue { i32, i1 } %41, 1, !nosanitize !32
  br i1 %42, label %26, label %46, !prof !34, !nosanitize !32

43:                                               ; preds = %1
  %44 = add nsw i32 %3, 3
  %45 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %44, 0
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i16 [ %40, %37 ], [ %9, %43 ]
  %48 = phi { i32, i1 } [ %41, %37 ], [ %45, %43 ]
  %49 = extractvalue { i32, i1 } %48, 0
  store i32 %49, ptr %2, align 4, !tbaa !26
  %50 = icmp sgt i32 %49, 9
  br i1 %50, label %51, label %83

51:                                               ; preds = %46
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %54 = load i64, ptr %53, align 8, !tbaa !33
  %55 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %54, i64 1), !nosanitize !32
  %56 = extractvalue { i64, i1 } %55, 1, !nosanitize !32
  br i1 %56, label %57, label %58, !prof !34, !nosanitize !32

57:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

58:                                               ; preds = %51
  %59 = extractvalue { i64, i1 } %55, 0, !nosanitize !32
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  %62 = trunc i16 %47 to i8
  store i64 %59, ptr %53, align 8, !tbaa !33
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 %54
  store i8 %62, ptr %63, align 1, !tbaa !28
  %64 = load i64, ptr %53, align 8, !tbaa !33
  %65 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 1), !nosanitize !32
  %66 = extractvalue { i64, i1 } %65, 1, !nosanitize !32
  br i1 %66, label %67, label %68, !prof !34, !nosanitize !32

67:                                               ; preds = %78, %58
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

68:                                               ; preds = %58
  %69 = extractvalue { i64, i1 } %65, 0, !nosanitize !32
  %70 = load ptr, ptr %60, align 8, !tbaa !35
  %71 = load i16, ptr %52, align 8, !tbaa !25
  %72 = lshr i16 %71, 8
  %73 = trunc nuw i16 %72 to i8
  store i64 %69, ptr %53, align 8, !tbaa !33
  %74 = getelementptr inbounds nuw i8, ptr %70, i64 %64
  store i8 %73, ptr %74, align 1, !tbaa !28
  %75 = load i32, ptr %2, align 4, !tbaa !26
  %76 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %75), !nosanitize !32
  %77 = extractvalue { i32, i1 } %76, 1, !nosanitize !32
  br i1 %77, label %10, label %78, !prof !34, !nosanitize !32

78:                                               ; preds = %68
  store i16 0, ptr %52, align 8, !tbaa !25
  %79 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %75, i32 -9), !nosanitize !32
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !32
  br i1 %80, label %67, label %81, !prof !34, !nosanitize !32

81:                                               ; preds = %78
  %82 = extractvalue { i32, i1 } %79, 0, !nosanitize !32
  br label %86

83:                                               ; preds = %46
  %84 = add nsw i32 %49, 7
  %85 = trunc i16 %47 to i8
  br label %86

86:                                               ; preds = %83, %81
  %87 = phi i8 [ %85, %83 ], [ 0, %81 ]
  %88 = phi i32 [ %84, %83 ], [ %82, %81 ]
  store i32 %88, ptr %2, align 4, !tbaa !26
  %89 = icmp eq i32 %88, 16
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %93 = load i64, ptr %92, align 8, !tbaa !33
  %94 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %93, i64 1), !nosanitize !32
  %95 = extractvalue { i64, i1 } %94, 1, !nosanitize !32
  br i1 %95, label %96, label %97, !prof !34, !nosanitize !32

96:                                               ; preds = %90
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

97:                                               ; preds = %90
  %98 = extractvalue { i64, i1 } %94, 0, !nosanitize !32
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  store i64 %98, ptr %92, align 8, !tbaa !33
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 %93
  store i8 %87, ptr %101, align 1, !tbaa !28
  %102 = load i64, ptr %92, align 8, !tbaa !33
  %103 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %102, i64 1), !nosanitize !32
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !32
  br i1 %104, label %105, label %106, !prof !34, !nosanitize !32

105:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

106:                                              ; preds = %97
  %107 = extractvalue { i64, i1 } %103, 0, !nosanitize !32
  %108 = load ptr, ptr %99, align 8, !tbaa !35
  %109 = load i16, ptr %91, align 8, !tbaa !25
  %110 = lshr i16 %109, 8
  %111 = trunc nuw i16 %110 to i8
  store i64 %107, ptr %92, align 8, !tbaa !33
  %112 = getelementptr inbounds nuw i8, ptr %108, i64 %102
  store i8 %111, ptr %112, align 1, !tbaa !28
  store i16 0, ptr %91, align 8, !tbaa !25
  br label %135

113:                                              ; preds = %86
  %114 = icmp sgt i32 %88, 7
  br i1 %114, label %115, label %137

115:                                              ; preds = %113
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %117 = load i64, ptr %116, align 8, !tbaa !33
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %117, i64 1), !nosanitize !32
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !32
  br i1 %119, label %120, label %121, !prof !34, !nosanitize !32

120:                                              ; preds = %115
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

121:                                              ; preds = %115
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !32
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %124 = load ptr, ptr %123, align 8, !tbaa !35
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i64 %122, ptr %116, align 8, !tbaa !33
  %126 = getelementptr inbounds nuw i8, ptr %124, i64 %117
  store i8 %87, ptr %126, align 1, !tbaa !28
  %127 = load i16, ptr %125, align 8, !tbaa !25
  %128 = lshr i16 %127, 8
  store i16 %128, ptr %125, align 8, !tbaa !25
  %129 = load i32, ptr %2, align 4, !tbaa !26
  %130 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %129, i32 -8)
  %131 = extractvalue { i32, i1 } %130, 1, !nosanitize !32
  br i1 %131, label %132, label %133, !prof !34, !nosanitize !32

132:                                              ; preds = %121
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

133:                                              ; preds = %121
  %134 = extractvalue { i32, i1 } %130, 0, !nosanitize !32
  br label %135

135:                                              ; preds = %133, %106
  %136 = phi i32 [ %134, %133 ], [ 0, %106 ]
  store i32 %136, ptr %2, align 4, !tbaa !26
  br label %137

137:                                              ; preds = %113, %135
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_tr_flush_block(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [16 x i16], align 16
  %6 = alloca [16 x i16], align 16
  %7 = alloca [16 x i16], align 16
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %9 = load i32, ptr %8, align 4, !tbaa !36
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %2496

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
  %121 = or disjoint i64 %139, 1
  %122 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %17, i64 0, i64 %121
  %123 = load i16, ptr %122, align 4, !tbaa !28
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %120
  %126 = or disjoint i64 %139, 2
  %127 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %17, i64 0, i64 %126
  %128 = load i16, ptr %127, align 4, !tbaa !28
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = or disjoint i64 %139, 3
  %132 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %17, i64 0, i64 %131
  %133 = load i16, ptr %132, align 4, !tbaa !28
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = add nuw nsw i64 %139, 4
  %137 = icmp eq i64 %136, 256
  br i1 %137, label %143, label %138, !llvm.loop !41

138:                                              ; preds = %116, %135
  %139 = phi i64 [ %136, %135 ], [ 32, %116 ]
  %140 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %17, i64 0, i64 %139
  %141 = load i16, ptr %140, align 4, !tbaa !28
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %120, label %143

143:                                              ; preds = %138, %120, %125, %130, %135, %16, %20, %24, %28, %32, %36, %40, %44, %48, %52, %56, %60, %64, %68, %72, %76, %80, %84, %88, %92, %96, %100, %104, %108, %112, %116
  %144 = phi i32 [ 1, %116 ], [ 1, %112 ], [ 1, %108 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ], [ 0, %32 ], [ 0, %28 ], [ 0, %24 ], [ 0, %20 ], [ 0, %16 ], [ 1, %138 ], [ 1, %120 ], [ 1, %125 ], [ 1, %130 ], [ 0, %135 ]
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
  br i1 %162, label %163, label %226

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
  %174 = getelementptr inbounds nuw %struct.ct_data_s, ptr %147, i64 %172
  %175 = load i16, ptr %174, align 2, !tbaa !28
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %171
  %178 = load i32, ptr %153, align 4, !tbaa !48
  %179 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %178, i32 1), !nosanitize !32
  %180 = extractvalue { i32, i1 } %179, 1, !nosanitize !32
  br i1 %180, label %181, label %182, !prof !34, !nosanitize !32

181:                                              ; preds = %177, %397
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

182:                                              ; preds = %177
  %183 = extractvalue { i32, i1 } %179, 0, !nosanitize !32
  store i32 %183, ptr %153, align 4, !tbaa !48
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [573 x i32], ptr %157, i64 0, i64 %184
  %186 = trunc nuw nsw i64 %172 to i32
  store i32 %186, ptr %185, align 4, !tbaa !50
  %187 = getelementptr inbounds nuw [573 x i8], ptr %158, i64 0, i64 %172
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
  br i1 %193, label %160, label %171, !llvm.loop !51

194:                                              ; preds = %223, %163
  %195 = phi i32 [ %165, %163 ], [ %224, %223 ]
  %196 = phi i32 [ %164, %163 ], [ %199, %223 ]
  %197 = icmp slt i32 %196, 2
  %198 = add i32 %196, 1
  %199 = select i1 %197, i32 %198, i32 %196
  %200 = add nsw i32 %195, 1
  %201 = select i1 %197, i32 %198, i32 0
  store i32 %200, ptr %153, align 4, !tbaa !48
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds [573 x i32], ptr %166, i64 0, i64 %202
  store i32 %201, ptr %203, align 4, !tbaa !50
  %204 = sext i32 %201 to i64
  %205 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %204
  store i16 1, ptr %205, align 2, !tbaa !28
  %206 = getelementptr inbounds [573 x i8], ptr %167, i64 0, i64 %204
  store i8 0, ptr %206, align 1, !tbaa !28
  %207 = load i64, ptr %168, align 8, !tbaa !52
  %208 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %207, i64 1), !nosanitize !32
  %209 = extractvalue { i64, i1 } %208, 1, !nosanitize !32
  br i1 %209, label %210, label %211, !prof !34, !nosanitize !32

210:                                              ; preds = %194
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

211:                                              ; preds = %194
  %212 = extractvalue { i64, i1 } %208, 0, !nosanitize !32
  store i64 %212, ptr %168, align 8, !tbaa !52
  br i1 %169, label %223, label %213

213:                                              ; preds = %211
  %214 = getelementptr inbounds %struct.ct_data_s, ptr %150, i64 %204, i32 1
  %215 = load i16, ptr %214, align 2, !tbaa !28
  %216 = zext i16 %215 to i64
  %217 = load i64, ptr %170, align 8, !tbaa !53
  %218 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %217, i64 %216), !nosanitize !32
  %219 = extractvalue { i64, i1 } %218, 1, !nosanitize !32
  br i1 %219, label %220, label %221, !prof !34, !nosanitize !32

220:                                              ; preds = %213, %390, %383, %310, %487
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

221:                                              ; preds = %213
  %222 = extractvalue { i64, i1 } %218, 0, !nosanitize !32
  store i64 %222, ptr %170, align 8, !tbaa !53
  br label %223

223:                                              ; preds = %221, %211
  %224 = load i32, ptr %153, align 4, !tbaa !48
  %225 = icmp slt i32 %224, 2
  br i1 %225, label %194, label %226, !llvm.loop !54

226:                                              ; preds = %223, %160
  %227 = phi i32 [ %191, %160 ], [ %199, %223 ]
  %228 = phi i32 [ %161, %160 ], [ %224, %223 ]
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 %227, ptr %229, align 8, !tbaa !55
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %232 = lshr i32 %228, 1
  %233 = zext nneg i32 %232 to i64
  br label %238

234:                                              ; preds = %304
  %235 = load i32, ptr %153, align 4, !tbaa !48
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 3012
  %237 = sext i32 %152 to i64
  br label %310

238:                                              ; preds = %304, %226
  %239 = phi i64 [ %233, %226 ], [ %308, %304 ]
  %240 = getelementptr inbounds nuw [573 x i32], ptr %230, i64 0, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !50
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %242
  %244 = load i32, ptr %153, align 4, !tbaa !48
  %245 = trunc i64 %239 to i32
  %246 = shl i32 %245, 1
  %247 = icmp sgt i32 %246, %244
  br i1 %247, label %304, label %248

248:                                              ; preds = %238
  %249 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %242
  br label %250

250:                                              ; preds = %298, %248
  %251 = phi i32 [ %244, %248 ], [ %302, %298 ]
  %252 = phi i32 [ %246, %248 ], [ %301, %298 ]
  %253 = phi i32 [ %245, %248 ], [ %283, %298 ]
  %254 = icmp slt i32 %252, %251
  br i1 %254, label %257, label %255

255:                                              ; preds = %250
  %256 = sext i32 %252 to i64
  br label %281

257:                                              ; preds = %250
  %258 = or disjoint i32 %252, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !50
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %262
  %264 = load i16, ptr %263, align 2, !tbaa !28
  %265 = sext i32 %252 to i64
  %266 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %265
  %267 = load i32, ptr %266, align 4, !tbaa !50
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %268
  %270 = load i16, ptr %269, align 2, !tbaa !28
  %271 = icmp ult i16 %264, %270
  br i1 %271, label %280, label %272

272:                                              ; preds = %257
  %273 = icmp eq i16 %264, %270
  br i1 %273, label %274, label %281

274:                                              ; preds = %272
  %275 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %262
  %276 = load i8, ptr %275, align 1, !tbaa !28
  %277 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %268
  %278 = load i8, ptr %277, align 1, !tbaa !28
  %279 = icmp ugt i8 %276, %278
  br i1 %279, label %281, label %280

280:                                              ; preds = %274, %257
  br label %281

281:                                              ; preds = %280, %274, %272, %255
  %282 = phi i64 [ %256, %255 ], [ %259, %280 ], [ %265, %274 ], [ %265, %272 ]
  %283 = phi i32 [ %252, %255 ], [ %258, %280 ], [ %252, %274 ], [ %252, %272 ]
  %284 = load i16, ptr %249, align 2, !tbaa !28
  %285 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %282
  %286 = load i32, ptr %285, align 4, !tbaa !50
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %287
  %289 = load i16, ptr %288, align 2, !tbaa !28
  %290 = icmp ult i16 %284, %289
  br i1 %290, label %304, label %291

291:                                              ; preds = %281
  %292 = icmp eq i16 %284, %289
  br i1 %292, label %293, label %298

293:                                              ; preds = %291
  %294 = load i8, ptr %243, align 1, !tbaa !28
  %295 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %287
  %296 = load i8, ptr %295, align 1, !tbaa !28
  %297 = icmp ugt i8 %294, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %293, %291
  %299 = sext i32 %253 to i64
  %300 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %299
  store i32 %286, ptr %300, align 4, !tbaa !50
  %301 = shl i32 %283, 1
  %302 = load i32, ptr %153, align 4, !tbaa !48
  %303 = icmp sgt i32 %301, %302
  br i1 %303, label %304, label %250, !llvm.loop !56

304:                                              ; preds = %298, %293, %281, %238
  %305 = phi i32 [ %245, %238 ], [ %253, %281 ], [ %253, %293 ], [ %283, %298 ]
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %306
  store i32 %241, ptr %307, align 4, !tbaa !50
  %308 = add nsw i64 %239, -1
  %309 = icmp sgt i64 %239, 1
  br i1 %309, label %238, label %234, !llvm.loop !57

310:                                              ; preds = %482, %234
  %311 = phi i32 [ %235, %234 ], [ %485, %482 ]
  %312 = phi i64 [ %237, %234 ], [ %422, %482 ]
  %313 = load i32, ptr %236, align 4, !tbaa !50
  %314 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %311, i32 -1)
  %315 = extractvalue { i32, i1 } %314, 1, !nosanitize !32
  br i1 %315, label %220, label %316, !prof !34, !nosanitize !32

316:                                              ; preds = %310
  %317 = extractvalue { i32, i1 } %314, 0, !nosanitize !32
  store i32 %317, ptr %153, align 4, !tbaa !48
  %318 = sext i32 %311 to i64
  %319 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %318
  %320 = load i32, ptr %319, align 4, !tbaa !50
  store i32 %320, ptr %236, align 4, !tbaa !50
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %321
  %323 = icmp slt i32 %317, 2
  br i1 %323, label %383, label %324

324:                                              ; preds = %316
  %325 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %321
  br label %326

326:                                              ; preds = %374, %324
  %327 = phi i32 [ %317, %324 ], [ %378, %374 ]
  %328 = phi i32 [ 2, %324 ], [ %377, %374 ]
  %329 = phi i32 [ 1, %324 ], [ %359, %374 ]
  %330 = icmp slt i32 %328, %327
  br i1 %330, label %333, label %331

331:                                              ; preds = %326
  %332 = sext i32 %328 to i64
  br label %357

333:                                              ; preds = %326
  %334 = or disjoint i32 %328, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !50
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %338
  %340 = load i16, ptr %339, align 2, !tbaa !28
  %341 = sext i32 %328 to i64
  %342 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %341
  %343 = load i32, ptr %342, align 4, !tbaa !50
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %344
  %346 = load i16, ptr %345, align 2, !tbaa !28
  %347 = icmp ult i16 %340, %346
  br i1 %347, label %356, label %348

348:                                              ; preds = %333
  %349 = icmp eq i16 %340, %346
  br i1 %349, label %350, label %357

350:                                              ; preds = %348
  %351 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %338
  %352 = load i8, ptr %351, align 1, !tbaa !28
  %353 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %344
  %354 = load i8, ptr %353, align 1, !tbaa !28
  %355 = icmp ugt i8 %352, %354
  br i1 %355, label %357, label %356

356:                                              ; preds = %350, %333
  br label %357

357:                                              ; preds = %356, %350, %348, %331
  %358 = phi i64 [ %332, %331 ], [ %335, %356 ], [ %341, %350 ], [ %341, %348 ]
  %359 = phi i32 [ %328, %331 ], [ %334, %356 ], [ %328, %350 ], [ %328, %348 ]
  %360 = load i16, ptr %325, align 2, !tbaa !28
  %361 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %358
  %362 = load i32, ptr %361, align 4, !tbaa !50
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %363
  %365 = load i16, ptr %364, align 2, !tbaa !28
  %366 = icmp ult i16 %360, %365
  br i1 %366, label %380, label %367

367:                                              ; preds = %357
  %368 = icmp eq i16 %360, %365
  br i1 %368, label %369, label %374

369:                                              ; preds = %367
  %370 = load i8, ptr %322, align 1, !tbaa !28
  %371 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %363
  %372 = load i8, ptr %371, align 1, !tbaa !28
  %373 = icmp ugt i8 %370, %372
  br i1 %373, label %374, label %380

374:                                              ; preds = %369, %367
  %375 = sext i32 %329 to i64
  %376 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %375
  store i32 %362, ptr %376, align 4, !tbaa !50
  %377 = shl i32 %359, 1
  %378 = load i32, ptr %153, align 4, !tbaa !48
  %379 = icmp sgt i32 %377, %378
  br i1 %379, label %380, label %326, !llvm.loop !56

380:                                              ; preds = %374, %369, %357
  %381 = phi i32 [ %329, %357 ], [ %329, %369 ], [ %359, %374 ]
  %382 = sext i32 %381 to i64
  br label %383

383:                                              ; preds = %380, %316
  %384 = phi i64 [ 1, %316 ], [ %382, %380 ]
  %385 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %384
  store i32 %320, ptr %385, align 4, !tbaa !50
  %386 = load i32, ptr %236, align 4, !tbaa !50
  %387 = load i32, ptr %154, align 8, !tbaa !49
  %388 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %387, i32 -1)
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !32
  br i1 %389, label %220, label %390, !prof !34, !nosanitize !32

390:                                              ; preds = %383
  %391 = extractvalue { i32, i1 } %388, 0, !nosanitize !32
  store i32 %391, ptr %154, align 8, !tbaa !49
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %392
  store i32 %313, ptr %393, align 4, !tbaa !50
  %394 = load i32, ptr %154, align 8, !tbaa !49
  %395 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %394, i32 -1)
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !32
  br i1 %396, label %220, label %397, !prof !34, !nosanitize !32

397:                                              ; preds = %390
  %398 = extractvalue { i32, i1 } %395, 0, !nosanitize !32
  store i32 %398, ptr %154, align 8, !tbaa !49
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %399
  store i32 %386, ptr %400, align 4, !tbaa !50
  %401 = sext i32 %313 to i64
  %402 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %401
  %403 = load i16, ptr %402, align 2, !tbaa !28
  %404 = sext i32 %386 to i64
  %405 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %404
  %406 = load i16, ptr %405, align 2, !tbaa !28
  %407 = add i16 %406, %403
  %408 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %312
  store i16 %407, ptr %408, align 2, !tbaa !28
  %409 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %401
  %410 = load i8, ptr %409, align 1, !tbaa !28
  %411 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %404
  %412 = load i8, ptr %411, align 1, !tbaa !28
  %413 = tail call i8 @llvm.umax.i8(i8 %410, i8 %412)
  %414 = add i8 %413, 1
  %415 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %312
  store i8 %414, ptr %415, align 1, !tbaa !28
  %416 = trunc nsw i64 %312 to i32
  %417 = trunc i64 %312 to i16
  %418 = getelementptr inbounds nuw i8, ptr %405, i64 2
  store i16 %417, ptr %418, align 2, !tbaa !28
  %419 = getelementptr inbounds nuw i8, ptr %402, i64 2
  store i16 %417, ptr %419, align 2, !tbaa !28
  %420 = icmp eq i64 %312, 2147483647
  br i1 %420, label %181, label %421, !prof !34, !nosanitize !32

421:                                              ; preds = %397
  %422 = add nsw i64 %312, 1
  store i32 %416, ptr %236, align 4, !tbaa !50
  %423 = load i32, ptr %153, align 4, !tbaa !48
  %424 = icmp slt i32 %423, 2
  br i1 %424, label %482, label %425

425:                                              ; preds = %421, %473
  %426 = phi i32 [ %477, %473 ], [ %423, %421 ]
  %427 = phi i32 [ %476, %473 ], [ 2, %421 ]
  %428 = phi i32 [ %458, %473 ], [ 1, %421 ]
  %429 = icmp slt i32 %427, %426
  br i1 %429, label %432, label %430

430:                                              ; preds = %425
  %431 = sext i32 %427 to i64
  br label %456

432:                                              ; preds = %425
  %433 = or disjoint i32 %427, 1
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !50
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %437
  %439 = load i16, ptr %438, align 2, !tbaa !28
  %440 = sext i32 %427 to i64
  %441 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %440
  %442 = load i32, ptr %441, align 4, !tbaa !50
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %443
  %445 = load i16, ptr %444, align 2, !tbaa !28
  %446 = icmp ult i16 %439, %445
  br i1 %446, label %455, label %447

447:                                              ; preds = %432
  %448 = icmp eq i16 %439, %445
  br i1 %448, label %449, label %456

449:                                              ; preds = %447
  %450 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %437
  %451 = load i8, ptr %450, align 1, !tbaa !28
  %452 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %443
  %453 = load i8, ptr %452, align 1, !tbaa !28
  %454 = icmp ugt i8 %451, %453
  br i1 %454, label %456, label %455

455:                                              ; preds = %449, %432
  br label %456

456:                                              ; preds = %455, %449, %447, %430
  %457 = phi i64 [ %431, %430 ], [ %434, %455 ], [ %440, %449 ], [ %440, %447 ]
  %458 = phi i32 [ %427, %430 ], [ %433, %455 ], [ %427, %449 ], [ %427, %447 ]
  %459 = load i16, ptr %408, align 2, !tbaa !28
  %460 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %457
  %461 = load i32, ptr %460, align 4, !tbaa !50
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.ct_data_s, ptr %147, i64 %462
  %464 = load i16, ptr %463, align 2, !tbaa !28
  %465 = icmp ult i16 %459, %464
  br i1 %465, label %479, label %466

466:                                              ; preds = %456
  %467 = icmp eq i16 %459, %464
  br i1 %467, label %468, label %473

468:                                              ; preds = %466
  %469 = load i8, ptr %415, align 1, !tbaa !28
  %470 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %462
  %471 = load i8, ptr %470, align 1, !tbaa !28
  %472 = icmp ugt i8 %469, %471
  br i1 %472, label %473, label %479

473:                                              ; preds = %468, %466
  %474 = sext i32 %428 to i64
  %475 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %474
  store i32 %461, ptr %475, align 4, !tbaa !50
  %476 = shl i32 %458, 1
  %477 = load i32, ptr %153, align 4, !tbaa !48
  %478 = icmp sgt i32 %476, %477
  br i1 %478, label %479, label %425, !llvm.loop !56

479:                                              ; preds = %473, %468, %456
  %480 = phi i32 [ %428, %456 ], [ %428, %468 ], [ %458, %473 ]
  %481 = sext i32 %480 to i64
  br label %482

482:                                              ; preds = %479, %421
  %483 = phi i64 [ 1, %421 ], [ %481, %479 ]
  %484 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %483
  store i32 %416, ptr %484, align 4, !tbaa !50
  %485 = load i32, ptr %153, align 4, !tbaa !48
  %486 = icmp sgt i32 %485, 1
  br i1 %486, label %310, label %487, !llvm.loop !58

487:                                              ; preds = %482
  %488 = load i32, ptr %154, align 8, !tbaa !49
  %489 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %488, i32 -1)
  %490 = extractvalue { i32, i1 } %489, 1, !nosanitize !32
  br i1 %490, label %220, label %491, !prof !34, !nosanitize !32

491:                                              ; preds = %487
  %492 = extractvalue { i32, i1 } %489, 0, !nosanitize !32
  %493 = load i32, ptr %236, align 4, !tbaa !50
  store i32 %492, ptr %154, align 8, !tbaa !49
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %494
  store i32 %493, ptr %495, align 4, !tbaa !50
  %496 = load ptr, ptr %146, align 8, !tbaa !42
  %497 = load i32, ptr %229, align 8, !tbaa !55
  %498 = load ptr, ptr %148, align 8, !tbaa !43
  %499 = load ptr, ptr %498, align 8, !tbaa !44
  %500 = getelementptr inbounds nuw i8, ptr %498, i64 8
  %501 = load ptr, ptr %500, align 8, !tbaa !59
  %502 = getelementptr inbounds nuw i8, ptr %498, i64 16
  %503 = load i32, ptr %502, align 8, !tbaa !60
  %504 = getelementptr inbounds nuw i8, ptr %498, i64 24
  %505 = load i32, ptr %504, align 8, !tbaa !61
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %506, i8 0, i64 32, i1 false), !tbaa !62
  %507 = load i32, ptr %154, align 8, !tbaa !49
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %508
  %510 = load i32, ptr %509, align 4, !tbaa !50
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.ct_data_s, ptr %496, i64 %511, i32 1
  store i16 0, ptr %512, align 2, !tbaa !28
  %513 = load i32, ptr %154, align 8, !tbaa !49
  %514 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %513, i32 1), !nosanitize !32
  %515 = extractvalue { i32, i1 } %514, 1, !nosanitize !32
  br i1 %515, label %516, label %517, !prof !34, !nosanitize !32

516:                                              ; preds = %565, %540, %491
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

517:                                              ; preds = %491
  %518 = extractvalue { i32, i1 } %514, 0
  %519 = icmp slt i32 %518, 573
  br i1 %519, label %520, label %699

520:                                              ; preds = %517
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %522 = icmp eq ptr %499, null
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %524 = sext i32 %518 to i64
  br label %525

525:                                              ; preds = %597, %520
  %526 = phi i64 [ %524, %520 ], [ %598, %597 ]
  %527 = phi i32 [ 0, %520 ], [ %547, %597 ]
  %528 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %526
  %529 = load i32, ptr %528, align 4, !tbaa !50
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.ct_data_s, ptr %496, i64 %530
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 2
  %533 = load i16, ptr %532, align 2, !tbaa !28
  %534 = zext i16 %533 to i64
  %535 = getelementptr inbounds nuw %struct.ct_data_s, ptr %496, i64 %534, i32 1
  %536 = load i16, ptr %535, align 2, !tbaa !28
  %537 = zext i16 %536 to i32
  %538 = add nuw nsw i32 %537, 1
  %539 = icmp sgt i32 %505, %537
  br i1 %539, label %545, label %540

540:                                              ; preds = %525
  %541 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %527, i32 1), !nosanitize !32
  %542 = extractvalue { i32, i1 } %541, 1, !nosanitize !32
  br i1 %542, label %516, label %543, !prof !34, !nosanitize !32

543:                                              ; preds = %540
  %544 = extractvalue { i32, i1 } %541, 0, !nosanitize !32
  br label %545

545:                                              ; preds = %543, %525
  %546 = phi i32 [ %505, %543 ], [ %538, %525 ]
  %547 = phi i32 [ %544, %543 ], [ %527, %525 ]
  %548 = trunc i32 %546 to i16
  store i16 %548, ptr %532, align 2, !tbaa !28
  %549 = icmp sgt i32 %529, %497
  br i1 %549, label %597, label %550

550:                                              ; preds = %545
  %551 = sext i32 %546 to i64
  %552 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %551
  %553 = load i16, ptr %552, align 2, !tbaa !62
  %554 = add i16 %553, 1
  store i16 %554, ptr %552, align 2, !tbaa !62
  %555 = icmp slt i32 %529, %503
  br i1 %555, label %565, label %556

556:                                              ; preds = %550
  %557 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %529, i32 %503), !nosanitize !32
  %558 = extractvalue { i32, i1 } %557, 1, !nosanitize !32
  br i1 %558, label %559, label %560, !prof !34, !nosanitize !32

559:                                              ; preds = %556, %625, %617, %656, %603
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

560:                                              ; preds = %556
  %561 = extractvalue { i32, i1 } %557, 0, !nosanitize !32
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32, ptr %501, i64 %562
  %564 = load i32, ptr %563, align 4, !tbaa !50
  br label %565

565:                                              ; preds = %560, %550
  %566 = phi i32 [ %564, %560 ], [ 0, %550 ]
  %567 = load i16, ptr %531, align 2, !tbaa !28
  %568 = zext i16 %567 to i64
  %569 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %546, i32 %566), !nosanitize !32
  %570 = extractvalue { i32, i1 } %569, 1, !nosanitize !32
  br i1 %570, label %516, label %571, !prof !34, !nosanitize !32

571:                                              ; preds = %565
  %572 = extractvalue { i32, i1 } %569, 0, !nosanitize !32
  %573 = zext i32 %572 to i64
  %574 = mul nuw nsw i64 %573, %568
  %575 = load i64, ptr %521, align 8, !tbaa !52
  %576 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %575, i64 %574), !nosanitize !32
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !32
  br i1 %577, label %578, label %579, !prof !34, !nosanitize !32

578:                                              ; preds = %581, %571
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

579:                                              ; preds = %571
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !32
  store i64 %580, ptr %521, align 8, !tbaa !52
  br i1 %522, label %597, label %581

581:                                              ; preds = %579
  %582 = getelementptr inbounds %struct.ct_data_s, ptr %499, i64 %530, i32 1
  %583 = load i16, ptr %582, align 2, !tbaa !28
  %584 = zext i16 %583 to i32
  %585 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %584, i32 %566), !nosanitize !32
  %586 = extractvalue { i32, i1 } %585, 1, !nosanitize !32
  br i1 %586, label %578, label %587, !prof !34, !nosanitize !32

587:                                              ; preds = %581
  %588 = extractvalue { i32, i1 } %585, 0, !nosanitize !32
  %589 = zext i32 %588 to i64
  %590 = mul nuw nsw i64 %589, %568
  %591 = load i64, ptr %523, align 8, !tbaa !53
  %592 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %591, i64 %590), !nosanitize !32
  %593 = extractvalue { i64, i1 } %592, 1, !nosanitize !32
  br i1 %593, label %594, label %595, !prof !34, !nosanitize !32

594:                                              ; preds = %587, %620
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

595:                                              ; preds = %587
  %596 = extractvalue { i64, i1 } %592, 0, !nosanitize !32
  store i64 %596, ptr %523, align 8, !tbaa !53
  br label %597

597:                                              ; preds = %595, %579, %545
  %598 = add nsw i64 %526, 1
  %599 = and i64 %598, 4294967295
  %600 = icmp eq i64 %599, 573
  br i1 %600, label %601, label %525, !llvm.loop !63

601:                                              ; preds = %597
  %602 = icmp eq i32 %547, 0
  br i1 %602, label %699, label %603

603:                                              ; preds = %601
  %604 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %505, i32 -1)
  %605 = extractvalue { i32, i1 } %604, 1, !nosanitize !32
  %606 = sext i32 %505 to i64
  %607 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %606
  br i1 %605, label %559, label %608, !prof !34, !nosanitize !32

608:                                              ; preds = %603, %635
  %609 = phi i32 [ %636, %635 ], [ %547, %603 ]
  br label %610

610:                                              ; preds = %617, %608
  %611 = phi { i32, i1 } [ %618, %617 ], [ %604, %608 ]
  %612 = extractvalue { i32, i1 } %611, 0
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %613
  %615 = load i16, ptr %614, align 2, !tbaa !62
  %616 = icmp eq i16 %615, 0
  br i1 %616, label %617, label %620

617:                                              ; preds = %610
  %618 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %612, i32 -1)
  %619 = extractvalue { i32, i1 } %618, 1, !nosanitize !32
  br i1 %619, label %559, label %610, !prof !34, !llvm.loop !64, !nosanitize !32

620:                                              ; preds = %610
  %621 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %613
  %622 = add i16 %615, -1
  store i16 %622, ptr %621, align 2, !tbaa !62
  %623 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %612, i32 1), !nosanitize !32
  %624 = extractvalue { i32, i1 } %623, 1, !nosanitize !32
  br i1 %624, label %594, label %625, !prof !34, !nosanitize !32

625:                                              ; preds = %620
  %626 = extractvalue { i32, i1 } %623, 0, !nosanitize !32
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %627
  %629 = load i16, ptr %628, align 2, !tbaa !62
  %630 = add i16 %629, 2
  store i16 %630, ptr %628, align 2, !tbaa !62
  %631 = load i16, ptr %607, align 2, !tbaa !62
  %632 = add i16 %631, -1
  store i16 %632, ptr %607, align 2, !tbaa !62
  %633 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %609, i32 -2)
  %634 = extractvalue { i32, i1 } %633, 1, !nosanitize !32
  br i1 %634, label %559, label %635, !prof !34, !nosanitize !32

635:                                              ; preds = %625
  %636 = extractvalue { i32, i1 } %633, 0, !nosanitize !32
  %637 = icmp sgt i32 %636, 0
  br i1 %637, label %608, label %638, !llvm.loop !65

638:                                              ; preds = %635
  %639 = icmp eq i32 %505, 0
  br i1 %639, label %699, label %640

640:                                              ; preds = %638, %695
  %641 = phi i64 [ %696, %695 ], [ %606, %638 ]
  %642 = phi i32 [ %650, %695 ], [ 573, %638 ]
  %643 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %641
  %644 = load i16, ptr %643, align 2, !tbaa !62
  %645 = icmp eq i16 %644, 0
  br i1 %645, label %649, label %646

646:                                              ; preds = %640
  %647 = zext i16 %644 to i32
  %648 = trunc i64 %641 to i16
  br label %653

649:                                              ; preds = %692, %640
  %650 = phi i32 [ %642, %640 ], [ %661, %692 ]
  %651 = and i64 %641, 4294967295
  %652 = icmp eq i64 %651, 2147483648
  br i1 %652, label %676, label %695, !prof !34, !nosanitize !32

653:                                              ; preds = %692, %646
  %654 = phi i32 [ %642, %646 ], [ %661, %692 ]
  %655 = phi i32 [ %647, %646 ], [ %693, %692 ]
  br label %656

656:                                              ; preds = %660, %653
  %657 = phi i32 [ %661, %660 ], [ %654, %653 ]
  %658 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %657, i32 -1)
  %659 = extractvalue { i32, i1 } %658, 1, !nosanitize !32
  br i1 %659, label %559, label %660, !prof !34, !nosanitize !32

660:                                              ; preds = %656
  %661 = extractvalue { i32, i1 } %658, 0, !nosanitize !32
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %662
  %664 = load i32, ptr %663, align 4, !tbaa !50
  %665 = icmp sgt i32 %664, %497
  br i1 %665, label %656, label %666, !llvm.loop !66

666:                                              ; preds = %660
  %667 = sext i32 %664 to i64
  %668 = getelementptr inbounds %struct.ct_data_s, ptr %496, i64 %667
  %669 = getelementptr inbounds nuw i8, ptr %668, i64 2
  %670 = load i16, ptr %669, align 2, !tbaa !28
  %671 = zext i16 %670 to i64
  %672 = icmp eq i64 %641, %671
  br i1 %672, label %692, label %673

673:                                              ; preds = %666
  %674 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %641, i64 %671), !nosanitize !32
  %675 = extractvalue { i64, i1 } %674, 1, !nosanitize !32
  br i1 %675, label %676, label %677, !prof !34, !nosanitize !32

676:                                              ; preds = %649, %673
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

677:                                              ; preds = %673
  %678 = extractvalue { i64, i1 } %674, 0, !nosanitize !32
  %679 = load i16, ptr %668, align 2, !tbaa !28
  %680 = zext i16 %679 to i64
  %681 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %678, i64 %680), !nosanitize !32
  %682 = extractvalue { i64, i1 } %681, 1, !nosanitize !32
  br i1 %682, label %683, label %684, !prof !34, !nosanitize !32

683:                                              ; preds = %677
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !32
  unreachable, !nosanitize !32

684:                                              ; preds = %677
  %685 = extractvalue { i64, i1 } %681, 0, !nosanitize !32
  %686 = load i64, ptr %521, align 8, !tbaa !52
  %687 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %686, i64 %685), !nosanitize !32
  %688 = extractvalue { i64, i1 } %687, 1, !nosanitize !32
  br i1 %688, label %689, label %690, !prof !34, !nosanitize !32

689:                                              ; preds = %684
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

690:                                              ; preds = %684
  %691 = extractvalue { i64, i1 } %687, 0, !nosanitize !32
  store i64 %691, ptr %521, align 8, !tbaa !52
  store i16 %648, ptr %669, align 2, !tbaa !28
  br label %692

692:                                              ; preds = %690, %666
  %693 = add nsw i32 %655, -1
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %649, label %653, !llvm.loop !66

695:                                              ; preds = %649
  %696 = add nsw i64 %641, -1
  %697 = and i64 %696, 4294967295
  %698 = icmp eq i64 %697, 0
  br i1 %698, label %699, label %640, !llvm.loop !67

699:                                              ; preds = %695, %638, %601, %517
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  %700 = load i16, ptr %506, align 2, !tbaa !62
  %701 = zext i16 %700 to i32
  %702 = shl nuw nsw i32 %701, 1
  %703 = trunc i32 %702 to i16
  %704 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 %703, ptr %704, align 2, !tbaa !62
  %705 = getelementptr i8, ptr %0, i64 2978
  %706 = load i16, ptr %705, align 2, !tbaa !62
  %707 = zext i16 %706 to i32
  %708 = add nuw nsw i32 %702, %707
  %709 = shl nuw nsw i32 %708, 1
  %710 = trunc i32 %709 to i16
  %711 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %710, ptr %711, align 4, !tbaa !62
  %712 = getelementptr i8, ptr %0, i64 2980
  %713 = load i16, ptr %712, align 2, !tbaa !62
  %714 = zext i16 %713 to i32
  %715 = add nuw nsw i32 %709, %714
  %716 = shl nuw nsw i32 %715, 1
  %717 = trunc i32 %716 to i16
  %718 = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 %717, ptr %718, align 2, !tbaa !62
  %719 = getelementptr i8, ptr %0, i64 2982
  %720 = load i16, ptr %719, align 2, !tbaa !62
  %721 = zext i16 %720 to i32
  %722 = add nuw nsw i32 %716, %721
  %723 = shl nuw nsw i32 %722, 1
  %724 = trunc i32 %723 to i16
  %725 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %724, ptr %725, align 8, !tbaa !62
  %726 = getelementptr i8, ptr %0, i64 2984
  %727 = load i16, ptr %726, align 2, !tbaa !62
  %728 = zext i16 %727 to i32
  %729 = add nuw nsw i32 %723, %728
  %730 = shl nuw nsw i32 %729, 1
  %731 = trunc i32 %730 to i16
  %732 = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %731, ptr %732, align 2, !tbaa !62
  %733 = getelementptr i8, ptr %0, i64 2986
  %734 = load i16, ptr %733, align 2, !tbaa !62
  %735 = zext i16 %734 to i32
  %736 = add nuw nsw i32 %730, %735
  %737 = shl nuw nsw i32 %736, 1
  %738 = trunc i32 %737 to i16
  %739 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i16 %738, ptr %739, align 4, !tbaa !62
  %740 = getelementptr i8, ptr %0, i64 2988
  %741 = load i16, ptr %740, align 2, !tbaa !62
  %742 = zext i16 %741 to i32
  %743 = add nuw nsw i32 %737, %742
  %744 = shl nuw nsw i32 %743, 1
  %745 = trunc i32 %744 to i16
  %746 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 %745, ptr %746, align 2, !tbaa !62
  %747 = getelementptr i8, ptr %0, i64 2990
  %748 = load i16, ptr %747, align 2, !tbaa !62
  %749 = zext i16 %748 to i32
  %750 = add nuw nsw i32 %744, %749
  %751 = shl nuw nsw i32 %750, 1
  %752 = trunc i32 %751 to i16
  %753 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 %752, ptr %753, align 16, !tbaa !62
  %754 = getelementptr i8, ptr %0, i64 2992
  %755 = load i16, ptr %754, align 2, !tbaa !62
  %756 = zext i16 %755 to i32
  %757 = add nuw nsw i32 %751, %756
  %758 = shl nuw nsw i32 %757, 1
  %759 = trunc i32 %758 to i16
  %760 = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i16 %759, ptr %760, align 2, !tbaa !62
  %761 = getelementptr i8, ptr %0, i64 2994
  %762 = load i16, ptr %761, align 2, !tbaa !62
  %763 = zext i16 %762 to i32
  %764 = add nuw nsw i32 %758, %763
  %765 = shl nuw nsw i32 %764, 1
  %766 = trunc i32 %765 to i16
  %767 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %766, ptr %767, align 4, !tbaa !62
  %768 = getelementptr i8, ptr %0, i64 2996
  %769 = load i16, ptr %768, align 2, !tbaa !62
  %770 = trunc i32 %765 to i16
  %771 = add i16 %769, %770
  %772 = shl i16 %771, 1
  %773 = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %772, ptr %773, align 2, !tbaa !62
  %774 = getelementptr i8, ptr %0, i64 2998
  %775 = load i16, ptr %774, align 2, !tbaa !62
  %776 = add i16 %775, %772
  %777 = shl i16 %776, 1
  %778 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %777, ptr %778, align 8, !tbaa !62
  %779 = getelementptr i8, ptr %0, i64 3000
  %780 = load i16, ptr %779, align 2, !tbaa !62
  %781 = add i16 %777, %780
  %782 = shl i16 %781, 1
  %783 = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %782, ptr %783, align 2, !tbaa !62
  %784 = getelementptr i8, ptr %0, i64 3002
  %785 = load i16, ptr %784, align 2, !tbaa !62
  %786 = add i16 %782, %785
  %787 = shl i16 %786, 1
  %788 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i16 %787, ptr %788, align 4, !tbaa !62
  %789 = getelementptr i8, ptr %0, i64 3004
  %790 = load i16, ptr %789, align 2, !tbaa !62
  %791 = add i16 %787, %790
  %792 = shl i16 %791, 1
  %793 = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i16 %792, ptr %793, align 2, !tbaa !62
  %794 = icmp slt i32 %227, 0
  br i1 %794, label %855, label %796

795:                                              ; preds = %849
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

796:                                              ; preds = %699, %851
  %797 = phi i64 [ %852, %851 ], [ 0, %699 ]
  %798 = getelementptr inbounds nuw %struct.ct_data_s, ptr %147, i64 %797
  %799 = getelementptr inbounds nuw i8, ptr %798, i64 2
  %800 = load i16, ptr %799, align 2, !tbaa !28
  %801 = icmp eq i16 %800, 0
  br i1 %801, label %849, label %802

802:                                              ; preds = %796
  %803 = zext i16 %800 to i32
  %804 = zext i16 %800 to i64
  %805 = getelementptr inbounds nuw [16 x i16], ptr %7, i64 0, i64 %804
  %806 = load i16, ptr %805, align 2, !tbaa !62
  %807 = add i16 %806, 1
  store i16 %807, ptr %805, align 2, !tbaa !62
  %808 = and i32 %803, 3
  %809 = icmp ult i16 %800, 4
  br i1 %809, label %832, label %810

810:                                              ; preds = %802
  %811 = and i32 %803, 65532
  br label %812

812:                                              ; preds = %812, %810
  %813 = phi i16 [ %806, %810 ], [ %829, %812 ]
  %814 = phi i16 [ 0, %810 ], [ %828, %812 ]
  %815 = phi i32 [ 0, %810 ], [ %830, %812 ]
  %816 = and i16 %813, 1
  %817 = or disjoint i16 %814, %816
  %818 = lshr i16 %813, 2
  %819 = shl i16 %817, 2
  %820 = and i16 %813, 2
  %821 = or disjoint i16 %819, %820
  %822 = and i16 %818, 1
  %823 = or disjoint i16 %821, %822
  %824 = shl i16 %823, 1
  %825 = lshr i16 %813, 3
  %826 = and i16 %825, 1
  %827 = or disjoint i16 %824, %826
  %828 = shl i16 %827, 1
  %829 = lshr i16 %813, 4
  %830 = add i32 %815, 4
  %831 = icmp eq i32 %830, %811
  br i1 %831, label %832, label %812, !llvm.loop !68

832:                                              ; preds = %812, %802
  %833 = phi i16 [ poison, %802 ], [ %827, %812 ]
  %834 = phi i16 [ %806, %802 ], [ %829, %812 ]
  %835 = phi i16 [ 0, %802 ], [ %828, %812 ]
  %836 = icmp eq i32 %808, 0
  br i1 %836, label %847, label %837

837:                                              ; preds = %832, %837
  %838 = phi i16 [ %844, %837 ], [ %834, %832 ]
  %839 = phi i16 [ %843, %837 ], [ %835, %832 ]
  %840 = phi i32 [ %845, %837 ], [ 0, %832 ]
  %841 = and i16 %838, 1
  %842 = or disjoint i16 %839, %841
  %843 = shl i16 %842, 1
  %844 = lshr i16 %838, 1
  %845 = add i32 %840, 1
  %846 = icmp eq i32 %845, %808
  br i1 %846, label %847, label %837, !llvm.loop !69

847:                                              ; preds = %837, %832
  %848 = phi i16 [ %833, %832 ], [ %842, %837 ]
  store i16 %848, ptr %798, align 2, !tbaa !28
  br label %849

849:                                              ; preds = %847, %796
  %850 = icmp eq i64 %797, 2147483647
  br i1 %850, label %795, label %851, !prof !34, !nosanitize !32

851:                                              ; preds = %849
  %852 = add nuw nsw i64 %797, 1
  %853 = trunc i64 %852 to i32
  %854 = icmp slt i32 %227, %853
  br i1 %854, label %855, label %796, !llvm.loop !71

855:                                              ; preds = %851, %699
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  %856 = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %857 = load ptr, ptr %856, align 8, !tbaa !42
  %858 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %859 = load ptr, ptr %858, align 8, !tbaa !43
  %860 = load ptr, ptr %859, align 8, !tbaa !44
  %861 = getelementptr inbounds nuw i8, ptr %859, i64 20
  %862 = load i32, ptr %861, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %863 = icmp sgt i32 %862, 0
  br i1 %863, label %864, label %869

864:                                              ; preds = %855
  %865 = zext nneg i32 %862 to i64
  br label %875

866:                                              ; preds = %894
  %867 = load i32, ptr %153, align 4, !tbaa !48
  %868 = icmp slt i32 %867, 2
  br i1 %868, label %869, label %930

869:                                              ; preds = %866, %855
  %870 = phi i32 [ %895, %866 ], [ -1, %855 ]
  %871 = phi i32 [ %867, %866 ], [ 0, %855 ]
  %872 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %873 = icmp eq ptr %860, null
  %874 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %898

875:                                              ; preds = %894, %864
  %876 = phi i64 [ 0, %864 ], [ %896, %894 ]
  %877 = phi i32 [ -1, %864 ], [ %895, %894 ]
  %878 = getelementptr inbounds nuw %struct.ct_data_s, ptr %857, i64 %876
  %879 = load i16, ptr %878, align 2, !tbaa !28
  %880 = icmp eq i16 %879, 0
  br i1 %880, label %892, label %881

881:                                              ; preds = %875
  %882 = load i32, ptr %153, align 4, !tbaa !48
  %883 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %882, i32 1), !nosanitize !32
  %884 = extractvalue { i32, i1 } %883, 1, !nosanitize !32
  br i1 %884, label %885, label %886, !prof !34, !nosanitize !32

885:                                              ; preds = %881, %1098
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

886:                                              ; preds = %881
  %887 = extractvalue { i32, i1 } %883, 0, !nosanitize !32
  store i32 %887, ptr %153, align 4, !tbaa !48
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %888
  %890 = trunc nuw nsw i64 %876 to i32
  store i32 %890, ptr %889, align 4, !tbaa !50
  %891 = getelementptr inbounds nuw [573 x i8], ptr %231, i64 0, i64 %876
  store i8 0, ptr %891, align 1, !tbaa !28
  br label %894

892:                                              ; preds = %875
  %893 = getelementptr inbounds nuw i8, ptr %878, i64 2
  store i16 0, ptr %893, align 2, !tbaa !28
  br label %894

894:                                              ; preds = %892, %886
  %895 = phi i32 [ %890, %886 ], [ %877, %892 ]
  %896 = add nuw nsw i64 %876, 1
  %897 = icmp eq i64 %896, %865
  br i1 %897, label %866, label %875, !llvm.loop !51

898:                                              ; preds = %927, %869
  %899 = phi i32 [ %871, %869 ], [ %928, %927 ]
  %900 = phi i32 [ %870, %869 ], [ %903, %927 ]
  %901 = icmp slt i32 %900, 2
  %902 = add i32 %900, 1
  %903 = select i1 %901, i32 %902, i32 %900
  %904 = add nsw i32 %899, 1
  %905 = select i1 %901, i32 %902, i32 0
  store i32 %904, ptr %153, align 4, !tbaa !48
  %906 = sext i32 %904 to i64
  %907 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %906
  store i32 %905, ptr %907, align 4, !tbaa !50
  %908 = sext i32 %905 to i64
  %909 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %908
  store i16 1, ptr %909, align 2, !tbaa !28
  %910 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %908
  store i8 0, ptr %910, align 1, !tbaa !28
  %911 = load i64, ptr %872, align 8, !tbaa !52
  %912 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %911, i64 1), !nosanitize !32
  %913 = extractvalue { i64, i1 } %912, 1, !nosanitize !32
  br i1 %913, label %914, label %915, !prof !34, !nosanitize !32

914:                                              ; preds = %898
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

915:                                              ; preds = %898
  %916 = extractvalue { i64, i1 } %912, 0, !nosanitize !32
  store i64 %916, ptr %872, align 8, !tbaa !52
  br i1 %873, label %927, label %917

917:                                              ; preds = %915
  %918 = getelementptr inbounds %struct.ct_data_s, ptr %860, i64 %908, i32 1
  %919 = load i16, ptr %918, align 2, !tbaa !28
  %920 = zext i16 %919 to i64
  %921 = load i64, ptr %874, align 8, !tbaa !53
  %922 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %921, i64 %920), !nosanitize !32
  %923 = extractvalue { i64, i1 } %922, 1, !nosanitize !32
  br i1 %923, label %924, label %925, !prof !34, !nosanitize !32

924:                                              ; preds = %917, %1091, %1084, %1011, %1188
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

925:                                              ; preds = %917
  %926 = extractvalue { i64, i1 } %922, 0, !nosanitize !32
  store i64 %926, ptr %874, align 8, !tbaa !53
  br label %927

927:                                              ; preds = %925, %915
  %928 = load i32, ptr %153, align 4, !tbaa !48
  %929 = icmp slt i32 %928, 2
  br i1 %929, label %898, label %930, !llvm.loop !54

930:                                              ; preds = %927, %866
  %931 = phi i32 [ %895, %866 ], [ %903, %927 ]
  %932 = phi i32 [ %867, %866 ], [ %928, %927 ]
  %933 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  store i32 %931, ptr %933, align 8, !tbaa !55
  %934 = lshr i32 %932, 1
  %935 = zext nneg i32 %934 to i64
  br label %939

936:                                              ; preds = %1005
  %937 = load i32, ptr %153, align 4, !tbaa !48
  %938 = sext i32 %862 to i64
  br label %1011

939:                                              ; preds = %1005, %930
  %940 = phi i64 [ %935, %930 ], [ %1009, %1005 ]
  %941 = getelementptr inbounds nuw [573 x i32], ptr %230, i64 0, i64 %940
  %942 = load i32, ptr %941, align 4, !tbaa !50
  %943 = sext i32 %942 to i64
  %944 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %943
  %945 = load i32, ptr %153, align 4, !tbaa !48
  %946 = trunc i64 %940 to i32
  %947 = shl i32 %946, 1
  %948 = icmp sgt i32 %947, %945
  br i1 %948, label %1005, label %949

949:                                              ; preds = %939
  %950 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %943
  br label %951

951:                                              ; preds = %999, %949
  %952 = phi i32 [ %945, %949 ], [ %1003, %999 ]
  %953 = phi i32 [ %947, %949 ], [ %1002, %999 ]
  %954 = phi i32 [ %946, %949 ], [ %984, %999 ]
  %955 = icmp slt i32 %953, %952
  br i1 %955, label %958, label %956

956:                                              ; preds = %951
  %957 = sext i32 %953 to i64
  br label %982

958:                                              ; preds = %951
  %959 = or disjoint i32 %953, 1
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %960
  %962 = load i32, ptr %961, align 4, !tbaa !50
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %963
  %965 = load i16, ptr %964, align 2, !tbaa !28
  %966 = sext i32 %953 to i64
  %967 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %966
  %968 = load i32, ptr %967, align 4, !tbaa !50
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %969
  %971 = load i16, ptr %970, align 2, !tbaa !28
  %972 = icmp ult i16 %965, %971
  br i1 %972, label %981, label %973

973:                                              ; preds = %958
  %974 = icmp eq i16 %965, %971
  br i1 %974, label %975, label %982

975:                                              ; preds = %973
  %976 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %963
  %977 = load i8, ptr %976, align 1, !tbaa !28
  %978 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %969
  %979 = load i8, ptr %978, align 1, !tbaa !28
  %980 = icmp ugt i8 %977, %979
  br i1 %980, label %982, label %981

981:                                              ; preds = %975, %958
  br label %982

982:                                              ; preds = %981, %975, %973, %956
  %983 = phi i64 [ %957, %956 ], [ %960, %981 ], [ %966, %975 ], [ %966, %973 ]
  %984 = phi i32 [ %953, %956 ], [ %959, %981 ], [ %953, %975 ], [ %953, %973 ]
  %985 = load i16, ptr %950, align 2, !tbaa !28
  %986 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %983
  %987 = load i32, ptr %986, align 4, !tbaa !50
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %988
  %990 = load i16, ptr %989, align 2, !tbaa !28
  %991 = icmp ult i16 %985, %990
  br i1 %991, label %1005, label %992

992:                                              ; preds = %982
  %993 = icmp eq i16 %985, %990
  br i1 %993, label %994, label %999

994:                                              ; preds = %992
  %995 = load i8, ptr %944, align 1, !tbaa !28
  %996 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %988
  %997 = load i8, ptr %996, align 1, !tbaa !28
  %998 = icmp ugt i8 %995, %997
  br i1 %998, label %999, label %1005

999:                                              ; preds = %994, %992
  %1000 = sext i32 %954 to i64
  %1001 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1000
  store i32 %987, ptr %1001, align 4, !tbaa !50
  %1002 = shl i32 %984, 1
  %1003 = load i32, ptr %153, align 4, !tbaa !48
  %1004 = icmp sgt i32 %1002, %1003
  br i1 %1004, label %1005, label %951, !llvm.loop !56

1005:                                             ; preds = %999, %994, %982, %939
  %1006 = phi i32 [ %946, %939 ], [ %954, %982 ], [ %954, %994 ], [ %984, %999 ]
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1007
  store i32 %942, ptr %1008, align 4, !tbaa !50
  %1009 = add nsw i64 %940, -1
  %1010 = icmp sgt i64 %940, 1
  br i1 %1010, label %939, label %936, !llvm.loop !57

1011:                                             ; preds = %1183, %936
  %1012 = phi i32 [ %937, %936 ], [ %1186, %1183 ]
  %1013 = phi i64 [ %938, %936 ], [ %1123, %1183 ]
  %1014 = load i32, ptr %236, align 4, !tbaa !50
  %1015 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1012, i32 -1)
  %1016 = extractvalue { i32, i1 } %1015, 1, !nosanitize !32
  br i1 %1016, label %924, label %1017, !prof !34, !nosanitize !32

1017:                                             ; preds = %1011
  %1018 = extractvalue { i32, i1 } %1015, 0, !nosanitize !32
  store i32 %1018, ptr %153, align 4, !tbaa !48
  %1019 = sext i32 %1012 to i64
  %1020 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1019
  %1021 = load i32, ptr %1020, align 4, !tbaa !50
  store i32 %1021, ptr %236, align 4, !tbaa !50
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1022
  %1024 = icmp slt i32 %1018, 2
  br i1 %1024, label %1084, label %1025

1025:                                             ; preds = %1017
  %1026 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %1022
  br label %1027

1027:                                             ; preds = %1075, %1025
  %1028 = phi i32 [ %1018, %1025 ], [ %1079, %1075 ]
  %1029 = phi i32 [ 2, %1025 ], [ %1078, %1075 ]
  %1030 = phi i32 [ 1, %1025 ], [ %1060, %1075 ]
  %1031 = icmp slt i32 %1029, %1028
  br i1 %1031, label %1034, label %1032

1032:                                             ; preds = %1027
  %1033 = sext i32 %1029 to i64
  br label %1058

1034:                                             ; preds = %1027
  %1035 = or disjoint i32 %1029, 1
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1036
  %1038 = load i32, ptr %1037, align 4, !tbaa !50
  %1039 = sext i32 %1038 to i64
  %1040 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %1039
  %1041 = load i16, ptr %1040, align 2, !tbaa !28
  %1042 = sext i32 %1029 to i64
  %1043 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1042
  %1044 = load i32, ptr %1043, align 4, !tbaa !50
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %1045
  %1047 = load i16, ptr %1046, align 2, !tbaa !28
  %1048 = icmp ult i16 %1041, %1047
  br i1 %1048, label %1057, label %1049

1049:                                             ; preds = %1034
  %1050 = icmp eq i16 %1041, %1047
  br i1 %1050, label %1051, label %1058

1051:                                             ; preds = %1049
  %1052 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1039
  %1053 = load i8, ptr %1052, align 1, !tbaa !28
  %1054 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1045
  %1055 = load i8, ptr %1054, align 1, !tbaa !28
  %1056 = icmp ugt i8 %1053, %1055
  br i1 %1056, label %1058, label %1057

1057:                                             ; preds = %1051, %1034
  br label %1058

1058:                                             ; preds = %1057, %1051, %1049, %1032
  %1059 = phi i64 [ %1033, %1032 ], [ %1036, %1057 ], [ %1042, %1051 ], [ %1042, %1049 ]
  %1060 = phi i32 [ %1029, %1032 ], [ %1035, %1057 ], [ %1029, %1051 ], [ %1029, %1049 ]
  %1061 = load i16, ptr %1026, align 2, !tbaa !28
  %1062 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1059
  %1063 = load i32, ptr %1062, align 4, !tbaa !50
  %1064 = sext i32 %1063 to i64
  %1065 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %1064
  %1066 = load i16, ptr %1065, align 2, !tbaa !28
  %1067 = icmp ult i16 %1061, %1066
  br i1 %1067, label %1081, label %1068

1068:                                             ; preds = %1058
  %1069 = icmp eq i16 %1061, %1066
  br i1 %1069, label %1070, label %1075

1070:                                             ; preds = %1068
  %1071 = load i8, ptr %1023, align 1, !tbaa !28
  %1072 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1064
  %1073 = load i8, ptr %1072, align 1, !tbaa !28
  %1074 = icmp ugt i8 %1071, %1073
  br i1 %1074, label %1075, label %1081

1075:                                             ; preds = %1070, %1068
  %1076 = sext i32 %1030 to i64
  %1077 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1076
  store i32 %1063, ptr %1077, align 4, !tbaa !50
  %1078 = shl i32 %1060, 1
  %1079 = load i32, ptr %153, align 4, !tbaa !48
  %1080 = icmp sgt i32 %1078, %1079
  br i1 %1080, label %1081, label %1027, !llvm.loop !56

1081:                                             ; preds = %1075, %1070, %1058
  %1082 = phi i32 [ %1030, %1058 ], [ %1030, %1070 ], [ %1060, %1075 ]
  %1083 = sext i32 %1082 to i64
  br label %1084

1084:                                             ; preds = %1081, %1017
  %1085 = phi i64 [ 1, %1017 ], [ %1083, %1081 ]
  %1086 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1085
  store i32 %1021, ptr %1086, align 4, !tbaa !50
  %1087 = load i32, ptr %236, align 4, !tbaa !50
  %1088 = load i32, ptr %154, align 8, !tbaa !49
  %1089 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1088, i32 -1)
  %1090 = extractvalue { i32, i1 } %1089, 1, !nosanitize !32
  br i1 %1090, label %924, label %1091, !prof !34, !nosanitize !32

1091:                                             ; preds = %1084
  %1092 = extractvalue { i32, i1 } %1089, 0, !nosanitize !32
  store i32 %1092, ptr %154, align 8, !tbaa !49
  %1093 = sext i32 %1092 to i64
  %1094 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1093
  store i32 %1014, ptr %1094, align 4, !tbaa !50
  %1095 = load i32, ptr %154, align 8, !tbaa !49
  %1096 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1095, i32 -1)
  %1097 = extractvalue { i32, i1 } %1096, 1, !nosanitize !32
  br i1 %1097, label %924, label %1098, !prof !34, !nosanitize !32

1098:                                             ; preds = %1091
  %1099 = extractvalue { i32, i1 } %1096, 0, !nosanitize !32
  store i32 %1099, ptr %154, align 8, !tbaa !49
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1100
  store i32 %1087, ptr %1101, align 4, !tbaa !50
  %1102 = sext i32 %1014 to i64
  %1103 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %1102
  %1104 = load i16, ptr %1103, align 2, !tbaa !28
  %1105 = sext i32 %1087 to i64
  %1106 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %1105
  %1107 = load i16, ptr %1106, align 2, !tbaa !28
  %1108 = add i16 %1107, %1104
  %1109 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %1013
  store i16 %1108, ptr %1109, align 2, !tbaa !28
  %1110 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1102
  %1111 = load i8, ptr %1110, align 1, !tbaa !28
  %1112 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1105
  %1113 = load i8, ptr %1112, align 1, !tbaa !28
  %1114 = tail call i8 @llvm.umax.i8(i8 %1111, i8 %1113)
  %1115 = add i8 %1114, 1
  %1116 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1013
  store i8 %1115, ptr %1116, align 1, !tbaa !28
  %1117 = trunc nsw i64 %1013 to i32
  %1118 = trunc i64 %1013 to i16
  %1119 = getelementptr inbounds nuw i8, ptr %1106, i64 2
  store i16 %1118, ptr %1119, align 2, !tbaa !28
  %1120 = getelementptr inbounds nuw i8, ptr %1103, i64 2
  store i16 %1118, ptr %1120, align 2, !tbaa !28
  %1121 = icmp eq i64 %1013, 2147483647
  br i1 %1121, label %885, label %1122, !prof !34, !nosanitize !32

1122:                                             ; preds = %1098
  %1123 = add nsw i64 %1013, 1
  store i32 %1117, ptr %236, align 4, !tbaa !50
  %1124 = load i32, ptr %153, align 4, !tbaa !48
  %1125 = icmp slt i32 %1124, 2
  br i1 %1125, label %1183, label %1126

1126:                                             ; preds = %1122, %1174
  %1127 = phi i32 [ %1178, %1174 ], [ %1124, %1122 ]
  %1128 = phi i32 [ %1177, %1174 ], [ 2, %1122 ]
  %1129 = phi i32 [ %1159, %1174 ], [ 1, %1122 ]
  %1130 = icmp slt i32 %1128, %1127
  br i1 %1130, label %1133, label %1131

1131:                                             ; preds = %1126
  %1132 = sext i32 %1128 to i64
  br label %1157

1133:                                             ; preds = %1126
  %1134 = or disjoint i32 %1128, 1
  %1135 = sext i32 %1134 to i64
  %1136 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1135
  %1137 = load i32, ptr %1136, align 4, !tbaa !50
  %1138 = sext i32 %1137 to i64
  %1139 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %1138
  %1140 = load i16, ptr %1139, align 2, !tbaa !28
  %1141 = sext i32 %1128 to i64
  %1142 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1141
  %1143 = load i32, ptr %1142, align 4, !tbaa !50
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %1144
  %1146 = load i16, ptr %1145, align 2, !tbaa !28
  %1147 = icmp ult i16 %1140, %1146
  br i1 %1147, label %1156, label %1148

1148:                                             ; preds = %1133
  %1149 = icmp eq i16 %1140, %1146
  br i1 %1149, label %1150, label %1157

1150:                                             ; preds = %1148
  %1151 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1138
  %1152 = load i8, ptr %1151, align 1, !tbaa !28
  %1153 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1144
  %1154 = load i8, ptr %1153, align 1, !tbaa !28
  %1155 = icmp ugt i8 %1152, %1154
  br i1 %1155, label %1157, label %1156

1156:                                             ; preds = %1150, %1133
  br label %1157

1157:                                             ; preds = %1156, %1150, %1148, %1131
  %1158 = phi i64 [ %1132, %1131 ], [ %1135, %1156 ], [ %1141, %1150 ], [ %1141, %1148 ]
  %1159 = phi i32 [ %1128, %1131 ], [ %1134, %1156 ], [ %1128, %1150 ], [ %1128, %1148 ]
  %1160 = load i16, ptr %1109, align 2, !tbaa !28
  %1161 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1158
  %1162 = load i32, ptr %1161, align 4, !tbaa !50
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds %struct.ct_data_s, ptr %857, i64 %1163
  %1165 = load i16, ptr %1164, align 2, !tbaa !28
  %1166 = icmp ult i16 %1160, %1165
  br i1 %1166, label %1180, label %1167

1167:                                             ; preds = %1157
  %1168 = icmp eq i16 %1160, %1165
  br i1 %1168, label %1169, label %1174

1169:                                             ; preds = %1167
  %1170 = load i8, ptr %1116, align 1, !tbaa !28
  %1171 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1163
  %1172 = load i8, ptr %1171, align 1, !tbaa !28
  %1173 = icmp ugt i8 %1170, %1172
  br i1 %1173, label %1174, label %1180

1174:                                             ; preds = %1169, %1167
  %1175 = sext i32 %1129 to i64
  %1176 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1175
  store i32 %1162, ptr %1176, align 4, !tbaa !50
  %1177 = shl i32 %1159, 1
  %1178 = load i32, ptr %153, align 4, !tbaa !48
  %1179 = icmp sgt i32 %1177, %1178
  br i1 %1179, label %1180, label %1126, !llvm.loop !56

1180:                                             ; preds = %1174, %1169, %1157
  %1181 = phi i32 [ %1129, %1157 ], [ %1129, %1169 ], [ %1159, %1174 ]
  %1182 = sext i32 %1181 to i64
  br label %1183

1183:                                             ; preds = %1180, %1122
  %1184 = phi i64 [ 1, %1122 ], [ %1182, %1180 ]
  %1185 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1184
  store i32 %1117, ptr %1185, align 4, !tbaa !50
  %1186 = load i32, ptr %153, align 4, !tbaa !48
  %1187 = icmp sgt i32 %1186, 1
  br i1 %1187, label %1011, label %1188, !llvm.loop !58

1188:                                             ; preds = %1183
  %1189 = load i32, ptr %154, align 8, !tbaa !49
  %1190 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1189, i32 -1)
  %1191 = extractvalue { i32, i1 } %1190, 1, !nosanitize !32
  br i1 %1191, label %924, label %1192, !prof !34, !nosanitize !32

1192:                                             ; preds = %1188
  %1193 = extractvalue { i32, i1 } %1190, 0, !nosanitize !32
  %1194 = load i32, ptr %236, align 4, !tbaa !50
  store i32 %1193, ptr %154, align 8, !tbaa !49
  %1195 = sext i32 %1193 to i64
  %1196 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1195
  store i32 %1194, ptr %1196, align 4, !tbaa !50
  %1197 = load ptr, ptr %856, align 8, !tbaa !42
  %1198 = load i32, ptr %933, align 8, !tbaa !55
  %1199 = load ptr, ptr %858, align 8, !tbaa !43
  %1200 = load ptr, ptr %1199, align 8, !tbaa !44
  %1201 = getelementptr inbounds nuw i8, ptr %1199, i64 8
  %1202 = load ptr, ptr %1201, align 8, !tbaa !59
  %1203 = getelementptr inbounds nuw i8, ptr %1199, i64 16
  %1204 = load i32, ptr %1203, align 8, !tbaa !60
  %1205 = getelementptr inbounds nuw i8, ptr %1199, i64 24
  %1206 = load i32, ptr %1205, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %506, i8 0, i64 32, i1 false), !tbaa !62
  %1207 = load i32, ptr %154, align 8, !tbaa !49
  %1208 = sext i32 %1207 to i64
  %1209 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1208
  %1210 = load i32, ptr %1209, align 4, !tbaa !50
  %1211 = sext i32 %1210 to i64
  %1212 = getelementptr inbounds %struct.ct_data_s, ptr %1197, i64 %1211, i32 1
  store i16 0, ptr %1212, align 2, !tbaa !28
  %1213 = load i32, ptr %154, align 8, !tbaa !49
  %1214 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1213, i32 1), !nosanitize !32
  %1215 = extractvalue { i32, i1 } %1214, 1, !nosanitize !32
  br i1 %1215, label %1216, label %1217, !prof !34, !nosanitize !32

1216:                                             ; preds = %1265, %1240, %1192
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1217:                                             ; preds = %1192
  %1218 = extractvalue { i32, i1 } %1214, 0
  %1219 = icmp slt i32 %1218, 573
  br i1 %1219, label %1220, label %1399

1220:                                             ; preds = %1217
  %1221 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1222 = icmp eq ptr %1200, null
  %1223 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %1224 = sext i32 %1218 to i64
  br label %1225

1225:                                             ; preds = %1297, %1220
  %1226 = phi i64 [ %1224, %1220 ], [ %1298, %1297 ]
  %1227 = phi i32 [ 0, %1220 ], [ %1247, %1297 ]
  %1228 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1226
  %1229 = load i32, ptr %1228, align 4, !tbaa !50
  %1230 = sext i32 %1229 to i64
  %1231 = getelementptr inbounds %struct.ct_data_s, ptr %1197, i64 %1230
  %1232 = getelementptr inbounds nuw i8, ptr %1231, i64 2
  %1233 = load i16, ptr %1232, align 2, !tbaa !28
  %1234 = zext i16 %1233 to i64
  %1235 = getelementptr inbounds nuw %struct.ct_data_s, ptr %1197, i64 %1234, i32 1
  %1236 = load i16, ptr %1235, align 2, !tbaa !28
  %1237 = zext i16 %1236 to i32
  %1238 = add nuw nsw i32 %1237, 1
  %1239 = icmp sgt i32 %1206, %1237
  br i1 %1239, label %1245, label %1240

1240:                                             ; preds = %1225
  %1241 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1227, i32 1), !nosanitize !32
  %1242 = extractvalue { i32, i1 } %1241, 1, !nosanitize !32
  br i1 %1242, label %1216, label %1243, !prof !34, !nosanitize !32

1243:                                             ; preds = %1240
  %1244 = extractvalue { i32, i1 } %1241, 0, !nosanitize !32
  br label %1245

1245:                                             ; preds = %1243, %1225
  %1246 = phi i32 [ %1206, %1243 ], [ %1238, %1225 ]
  %1247 = phi i32 [ %1244, %1243 ], [ %1227, %1225 ]
  %1248 = trunc i32 %1246 to i16
  store i16 %1248, ptr %1232, align 2, !tbaa !28
  %1249 = icmp sgt i32 %1229, %1198
  br i1 %1249, label %1297, label %1250

1250:                                             ; preds = %1245
  %1251 = sext i32 %1246 to i64
  %1252 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %1251
  %1253 = load i16, ptr %1252, align 2, !tbaa !62
  %1254 = add i16 %1253, 1
  store i16 %1254, ptr %1252, align 2, !tbaa !62
  %1255 = icmp slt i32 %1229, %1204
  br i1 %1255, label %1265, label %1256

1256:                                             ; preds = %1250
  %1257 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1229, i32 %1204), !nosanitize !32
  %1258 = extractvalue { i32, i1 } %1257, 1, !nosanitize !32
  br i1 %1258, label %1259, label %1260, !prof !34, !nosanitize !32

1259:                                             ; preds = %1256, %1325, %1317, %1356, %1303
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

1260:                                             ; preds = %1256
  %1261 = extractvalue { i32, i1 } %1257, 0, !nosanitize !32
  %1262 = sext i32 %1261 to i64
  %1263 = getelementptr inbounds i32, ptr %1202, i64 %1262
  %1264 = load i32, ptr %1263, align 4, !tbaa !50
  br label %1265

1265:                                             ; preds = %1260, %1250
  %1266 = phi i32 [ %1264, %1260 ], [ 0, %1250 ]
  %1267 = load i16, ptr %1231, align 2, !tbaa !28
  %1268 = zext i16 %1267 to i64
  %1269 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1246, i32 %1266), !nosanitize !32
  %1270 = extractvalue { i32, i1 } %1269, 1, !nosanitize !32
  br i1 %1270, label %1216, label %1271, !prof !34, !nosanitize !32

1271:                                             ; preds = %1265
  %1272 = extractvalue { i32, i1 } %1269, 0, !nosanitize !32
  %1273 = zext i32 %1272 to i64
  %1274 = mul nuw nsw i64 %1273, %1268
  %1275 = load i64, ptr %1221, align 8, !tbaa !52
  %1276 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1275, i64 %1274), !nosanitize !32
  %1277 = extractvalue { i64, i1 } %1276, 1, !nosanitize !32
  br i1 %1277, label %1278, label %1279, !prof !34, !nosanitize !32

1278:                                             ; preds = %1281, %1271
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

1279:                                             ; preds = %1271
  %1280 = extractvalue { i64, i1 } %1276, 0, !nosanitize !32
  store i64 %1280, ptr %1221, align 8, !tbaa !52
  br i1 %1222, label %1297, label %1281

1281:                                             ; preds = %1279
  %1282 = getelementptr inbounds %struct.ct_data_s, ptr %1200, i64 %1230, i32 1
  %1283 = load i16, ptr %1282, align 2, !tbaa !28
  %1284 = zext i16 %1283 to i32
  %1285 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1284, i32 %1266), !nosanitize !32
  %1286 = extractvalue { i32, i1 } %1285, 1, !nosanitize !32
  br i1 %1286, label %1278, label %1287, !prof !34, !nosanitize !32

1287:                                             ; preds = %1281
  %1288 = extractvalue { i32, i1 } %1285, 0, !nosanitize !32
  %1289 = zext i32 %1288 to i64
  %1290 = mul nuw nsw i64 %1289, %1268
  %1291 = load i64, ptr %1223, align 8, !tbaa !53
  %1292 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1291, i64 %1290), !nosanitize !32
  %1293 = extractvalue { i64, i1 } %1292, 1, !nosanitize !32
  br i1 %1293, label %1294, label %1295, !prof !34, !nosanitize !32

1294:                                             ; preds = %1287, %1320
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

1295:                                             ; preds = %1287
  %1296 = extractvalue { i64, i1 } %1292, 0, !nosanitize !32
  store i64 %1296, ptr %1223, align 8, !tbaa !53
  br label %1297

1297:                                             ; preds = %1295, %1279, %1245
  %1298 = add nsw i64 %1226, 1
  %1299 = and i64 %1298, 4294967295
  %1300 = icmp eq i64 %1299, 573
  br i1 %1300, label %1301, label %1225, !llvm.loop !63

1301:                                             ; preds = %1297
  %1302 = icmp eq i32 %1247, 0
  br i1 %1302, label %1399, label %1303

1303:                                             ; preds = %1301
  %1304 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1206, i32 -1)
  %1305 = extractvalue { i32, i1 } %1304, 1, !nosanitize !32
  %1306 = sext i32 %1206 to i64
  %1307 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %1306
  br i1 %1305, label %1259, label %1308, !prof !34, !nosanitize !32

1308:                                             ; preds = %1303, %1335
  %1309 = phi i32 [ %1336, %1335 ], [ %1247, %1303 ]
  br label %1310

1310:                                             ; preds = %1317, %1308
  %1311 = phi { i32, i1 } [ %1318, %1317 ], [ %1304, %1308 ]
  %1312 = extractvalue { i32, i1 } %1311, 0
  %1313 = sext i32 %1312 to i64
  %1314 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %1313
  %1315 = load i16, ptr %1314, align 2, !tbaa !62
  %1316 = icmp eq i16 %1315, 0
  br i1 %1316, label %1317, label %1320

1317:                                             ; preds = %1310
  %1318 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1312, i32 -1)
  %1319 = extractvalue { i32, i1 } %1318, 1, !nosanitize !32
  br i1 %1319, label %1259, label %1310, !prof !34, !llvm.loop !64, !nosanitize !32

1320:                                             ; preds = %1310
  %1321 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %1313
  %1322 = add i16 %1315, -1
  store i16 %1322, ptr %1321, align 2, !tbaa !62
  %1323 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1312, i32 1), !nosanitize !32
  %1324 = extractvalue { i32, i1 } %1323, 1, !nosanitize !32
  br i1 %1324, label %1294, label %1325, !prof !34, !nosanitize !32

1325:                                             ; preds = %1320
  %1326 = extractvalue { i32, i1 } %1323, 0, !nosanitize !32
  %1327 = sext i32 %1326 to i64
  %1328 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %1327
  %1329 = load i16, ptr %1328, align 2, !tbaa !62
  %1330 = add i16 %1329, 2
  store i16 %1330, ptr %1328, align 2, !tbaa !62
  %1331 = load i16, ptr %1307, align 2, !tbaa !62
  %1332 = add i16 %1331, -1
  store i16 %1332, ptr %1307, align 2, !tbaa !62
  %1333 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1309, i32 -2)
  %1334 = extractvalue { i32, i1 } %1333, 1, !nosanitize !32
  br i1 %1334, label %1259, label %1335, !prof !34, !nosanitize !32

1335:                                             ; preds = %1325
  %1336 = extractvalue { i32, i1 } %1333, 0, !nosanitize !32
  %1337 = icmp sgt i32 %1336, 0
  br i1 %1337, label %1308, label %1338, !llvm.loop !65

1338:                                             ; preds = %1335
  %1339 = icmp eq i32 %1206, 0
  br i1 %1339, label %1399, label %1340

1340:                                             ; preds = %1338, %1395
  %1341 = phi i64 [ %1396, %1395 ], [ %1306, %1338 ]
  %1342 = phi i32 [ %1350, %1395 ], [ 573, %1338 ]
  %1343 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %1341
  %1344 = load i16, ptr %1343, align 2, !tbaa !62
  %1345 = icmp eq i16 %1344, 0
  br i1 %1345, label %1349, label %1346

1346:                                             ; preds = %1340
  %1347 = zext i16 %1344 to i32
  %1348 = trunc i64 %1341 to i16
  br label %1353

1349:                                             ; preds = %1392, %1340
  %1350 = phi i32 [ %1342, %1340 ], [ %1361, %1392 ]
  %1351 = and i64 %1341, 4294967295
  %1352 = icmp eq i64 %1351, 2147483648
  br i1 %1352, label %1376, label %1395, !prof !34, !nosanitize !32

1353:                                             ; preds = %1392, %1346
  %1354 = phi i32 [ %1342, %1346 ], [ %1361, %1392 ]
  %1355 = phi i32 [ %1347, %1346 ], [ %1393, %1392 ]
  br label %1356

1356:                                             ; preds = %1360, %1353
  %1357 = phi i32 [ %1361, %1360 ], [ %1354, %1353 ]
  %1358 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1357, i32 -1)
  %1359 = extractvalue { i32, i1 } %1358, 1, !nosanitize !32
  br i1 %1359, label %1259, label %1360, !prof !34, !nosanitize !32

1360:                                             ; preds = %1356
  %1361 = extractvalue { i32, i1 } %1358, 0, !nosanitize !32
  %1362 = sext i32 %1361 to i64
  %1363 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1362
  %1364 = load i32, ptr %1363, align 4, !tbaa !50
  %1365 = icmp sgt i32 %1364, %1198
  br i1 %1365, label %1356, label %1366, !llvm.loop !66

1366:                                             ; preds = %1360
  %1367 = sext i32 %1364 to i64
  %1368 = getelementptr inbounds %struct.ct_data_s, ptr %1197, i64 %1367
  %1369 = getelementptr inbounds nuw i8, ptr %1368, i64 2
  %1370 = load i16, ptr %1369, align 2, !tbaa !28
  %1371 = zext i16 %1370 to i64
  %1372 = icmp eq i64 %1341, %1371
  br i1 %1372, label %1392, label %1373

1373:                                             ; preds = %1366
  %1374 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1341, i64 %1371), !nosanitize !32
  %1375 = extractvalue { i64, i1 } %1374, 1, !nosanitize !32
  br i1 %1375, label %1376, label %1377, !prof !34, !nosanitize !32

1376:                                             ; preds = %1349, %1373
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

1377:                                             ; preds = %1373
  %1378 = extractvalue { i64, i1 } %1374, 0, !nosanitize !32
  %1379 = load i16, ptr %1368, align 2, !tbaa !28
  %1380 = zext i16 %1379 to i64
  %1381 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1378, i64 %1380), !nosanitize !32
  %1382 = extractvalue { i64, i1 } %1381, 1, !nosanitize !32
  br i1 %1382, label %1383, label %1384, !prof !34, !nosanitize !32

1383:                                             ; preds = %1377
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !32
  unreachable, !nosanitize !32

1384:                                             ; preds = %1377
  %1385 = extractvalue { i64, i1 } %1381, 0, !nosanitize !32
  %1386 = load i64, ptr %1221, align 8, !tbaa !52
  %1387 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1386, i64 %1385), !nosanitize !32
  %1388 = extractvalue { i64, i1 } %1387, 1, !nosanitize !32
  br i1 %1388, label %1389, label %1390, !prof !34, !nosanitize !32

1389:                                             ; preds = %1384
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

1390:                                             ; preds = %1384
  %1391 = extractvalue { i64, i1 } %1387, 0, !nosanitize !32
  store i64 %1391, ptr %1221, align 8, !tbaa !52
  store i16 %1348, ptr %1369, align 2, !tbaa !28
  br label %1392

1392:                                             ; preds = %1390, %1366
  %1393 = add nsw i32 %1355, -1
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1349, label %1353, !llvm.loop !66

1395:                                             ; preds = %1349
  %1396 = add nsw i64 %1341, -1
  %1397 = and i64 %1396, 4294967295
  %1398 = icmp eq i64 %1397, 0
  br i1 %1398, label %1399, label %1340, !llvm.loop !67

1399:                                             ; preds = %1395, %1338, %1301, %1217
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  %1400 = load i16, ptr %506, align 2, !tbaa !62
  %1401 = zext i16 %1400 to i32
  %1402 = shl nuw nsw i32 %1401, 1
  %1403 = trunc i32 %1402 to i16
  %1404 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1403, ptr %1404, align 2, !tbaa !62
  %1405 = load i16, ptr %705, align 2, !tbaa !62
  %1406 = zext i16 %1405 to i32
  %1407 = add nuw nsw i32 %1402, %1406
  %1408 = shl nuw nsw i32 %1407, 1
  %1409 = trunc i32 %1408 to i16
  %1410 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %1409, ptr %1410, align 4, !tbaa !62
  %1411 = load i16, ptr %712, align 2, !tbaa !62
  %1412 = zext i16 %1411 to i32
  %1413 = add nuw nsw i32 %1408, %1412
  %1414 = shl nuw nsw i32 %1413, 1
  %1415 = trunc i32 %1414 to i16
  %1416 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %1415, ptr %1416, align 2, !tbaa !62
  %1417 = load i16, ptr %719, align 2, !tbaa !62
  %1418 = zext i16 %1417 to i32
  %1419 = add nuw nsw i32 %1414, %1418
  %1420 = shl nuw nsw i32 %1419, 1
  %1421 = trunc i32 %1420 to i16
  %1422 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %1421, ptr %1422, align 8, !tbaa !62
  %1423 = load i16, ptr %726, align 2, !tbaa !62
  %1424 = zext i16 %1423 to i32
  %1425 = add nuw nsw i32 %1420, %1424
  %1426 = shl nuw nsw i32 %1425, 1
  %1427 = trunc i32 %1426 to i16
  %1428 = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %1427, ptr %1428, align 2, !tbaa !62
  %1429 = load i16, ptr %733, align 2, !tbaa !62
  %1430 = zext i16 %1429 to i32
  %1431 = add nuw nsw i32 %1426, %1430
  %1432 = shl nuw nsw i32 %1431, 1
  %1433 = trunc i32 %1432 to i16
  %1434 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %1433, ptr %1434, align 4, !tbaa !62
  %1435 = load i16, ptr %740, align 2, !tbaa !62
  %1436 = zext i16 %1435 to i32
  %1437 = add nuw nsw i32 %1432, %1436
  %1438 = shl nuw nsw i32 %1437, 1
  %1439 = trunc i32 %1438 to i16
  %1440 = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %1439, ptr %1440, align 2, !tbaa !62
  %1441 = load i16, ptr %747, align 2, !tbaa !62
  %1442 = zext i16 %1441 to i32
  %1443 = add nuw nsw i32 %1438, %1442
  %1444 = shl nuw nsw i32 %1443, 1
  %1445 = trunc i32 %1444 to i16
  %1446 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %1445, ptr %1446, align 16, !tbaa !62
  %1447 = load i16, ptr %754, align 2, !tbaa !62
  %1448 = zext i16 %1447 to i32
  %1449 = add nuw nsw i32 %1444, %1448
  %1450 = shl nuw nsw i32 %1449, 1
  %1451 = trunc i32 %1450 to i16
  %1452 = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %1451, ptr %1452, align 2, !tbaa !62
  %1453 = load i16, ptr %761, align 2, !tbaa !62
  %1454 = zext i16 %1453 to i32
  %1455 = add nuw nsw i32 %1450, %1454
  %1456 = shl nuw nsw i32 %1455, 1
  %1457 = trunc i32 %1456 to i16
  %1458 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %1457, ptr %1458, align 4, !tbaa !62
  %1459 = load i16, ptr %768, align 2, !tbaa !62
  %1460 = trunc i32 %1456 to i16
  %1461 = add i16 %1459, %1460
  %1462 = shl i16 %1461, 1
  %1463 = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1462, ptr %1463, align 2, !tbaa !62
  %1464 = load i16, ptr %774, align 2, !tbaa !62
  %1465 = add i16 %1464, %1462
  %1466 = shl i16 %1465, 1
  %1467 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %1466, ptr %1467, align 8, !tbaa !62
  %1468 = load i16, ptr %779, align 2, !tbaa !62
  %1469 = add i16 %1466, %1468
  %1470 = shl i16 %1469, 1
  %1471 = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 %1470, ptr %1471, align 2, !tbaa !62
  %1472 = load i16, ptr %784, align 2, !tbaa !62
  %1473 = add i16 %1470, %1472
  %1474 = shl i16 %1473, 1
  %1475 = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i16 %1474, ptr %1475, align 4, !tbaa !62
  %1476 = load i16, ptr %789, align 2, !tbaa !62
  %1477 = add i16 %1474, %1476
  %1478 = shl i16 %1477, 1
  %1479 = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i16 %1478, ptr %1479, align 2, !tbaa !62
  %1480 = icmp slt i32 %931, 0
  br i1 %1480, label %1541, label %1482

1481:                                             ; preds = %1535
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

1482:                                             ; preds = %1399, %1537
  %1483 = phi i64 [ %1538, %1537 ], [ 0, %1399 ]
  %1484 = getelementptr inbounds nuw %struct.ct_data_s, ptr %857, i64 %1483
  %1485 = getelementptr inbounds nuw i8, ptr %1484, i64 2
  %1486 = load i16, ptr %1485, align 2, !tbaa !28
  %1487 = icmp eq i16 %1486, 0
  br i1 %1487, label %1535, label %1488

1488:                                             ; preds = %1482
  %1489 = zext i16 %1486 to i32
  %1490 = zext i16 %1486 to i64
  %1491 = getelementptr inbounds nuw [16 x i16], ptr %6, i64 0, i64 %1490
  %1492 = load i16, ptr %1491, align 2, !tbaa !62
  %1493 = add i16 %1492, 1
  store i16 %1493, ptr %1491, align 2, !tbaa !62
  %1494 = and i32 %1489, 3
  %1495 = icmp ult i16 %1486, 4
  br i1 %1495, label %1518, label %1496

1496:                                             ; preds = %1488
  %1497 = and i32 %1489, 65532
  br label %1498

1498:                                             ; preds = %1498, %1496
  %1499 = phi i16 [ %1492, %1496 ], [ %1515, %1498 ]
  %1500 = phi i16 [ 0, %1496 ], [ %1514, %1498 ]
  %1501 = phi i32 [ 0, %1496 ], [ %1516, %1498 ]
  %1502 = and i16 %1499, 1
  %1503 = or disjoint i16 %1500, %1502
  %1504 = lshr i16 %1499, 2
  %1505 = shl i16 %1503, 2
  %1506 = and i16 %1499, 2
  %1507 = or disjoint i16 %1505, %1506
  %1508 = and i16 %1504, 1
  %1509 = or disjoint i16 %1507, %1508
  %1510 = shl i16 %1509, 1
  %1511 = lshr i16 %1499, 3
  %1512 = and i16 %1511, 1
  %1513 = or disjoint i16 %1510, %1512
  %1514 = shl i16 %1513, 1
  %1515 = lshr i16 %1499, 4
  %1516 = add i32 %1501, 4
  %1517 = icmp eq i32 %1516, %1497
  br i1 %1517, label %1518, label %1498, !llvm.loop !68

1518:                                             ; preds = %1498, %1488
  %1519 = phi i16 [ poison, %1488 ], [ %1513, %1498 ]
  %1520 = phi i16 [ %1492, %1488 ], [ %1515, %1498 ]
  %1521 = phi i16 [ 0, %1488 ], [ %1514, %1498 ]
  %1522 = icmp eq i32 %1494, 0
  br i1 %1522, label %1533, label %1523

1523:                                             ; preds = %1518, %1523
  %1524 = phi i16 [ %1530, %1523 ], [ %1520, %1518 ]
  %1525 = phi i16 [ %1529, %1523 ], [ %1521, %1518 ]
  %1526 = phi i32 [ %1531, %1523 ], [ 0, %1518 ]
  %1527 = and i16 %1524, 1
  %1528 = or disjoint i16 %1525, %1527
  %1529 = shl i16 %1528, 1
  %1530 = lshr i16 %1524, 1
  %1531 = add i32 %1526, 1
  %1532 = icmp eq i32 %1531, %1494
  br i1 %1532, label %1533, label %1523, !llvm.loop !72

1533:                                             ; preds = %1523, %1518
  %1534 = phi i16 [ %1519, %1518 ], [ %1528, %1523 ]
  store i16 %1534, ptr %1484, align 2, !tbaa !28
  br label %1535

1535:                                             ; preds = %1533, %1482
  %1536 = icmp eq i64 %1483, 2147483647
  br i1 %1536, label %1481, label %1537, !prof !34, !nosanitize !32

1537:                                             ; preds = %1535
  %1538 = add nuw nsw i64 %1483, 1
  %1539 = trunc i64 %1538 to i32
  %1540 = icmp slt i32 %931, %1539
  br i1 %1540, label %1541, label %1482, !llvm.loop !71

1541:                                             ; preds = %1537, %1399
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  %1542 = load i32, ptr %229, align 8, !tbaa !73
  %1543 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1542, i32 1), !nosanitize !32
  %1544 = extractvalue { i32, i1 } %1543, 1, !nosanitize !32
  br i1 %1544, label %1545, label %1546, !prof !34, !nosanitize !32

1545:                                             ; preds = %1565, %1541
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1546:                                             ; preds = %1541
  %1547 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1548 = getelementptr i8, ptr %0, i64 214
  %1549 = load i16, ptr %1548, align 2, !tbaa !28
  %1550 = extractvalue { i32, i1 } %1543, 0, !nosanitize !32
  %1551 = sext i32 %1550 to i64
  %1552 = shl nsw i64 %1551, 2
  %1553 = getelementptr i8, ptr %1547, i64 %1552
  %1554 = getelementptr i8, ptr %1553, i64 2
  store i16 -1, ptr %1554, align 2, !tbaa !28
  %1555 = icmp slt i32 %1542, 0
  br i1 %1555, label %1624, label %1556

1556:                                             ; preds = %1546
  %1557 = zext i16 %1549 to i32
  %1558 = icmp eq i16 %1549, 0
  %1559 = select i1 %1558, i32 138, i32 7
  %1560 = select i1 %1558, i32 3, i32 4
  %1561 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1562 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1563 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1564 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1565

1565:                                             ; preds = %1618, %1556
  %1566 = phi i32 [ %1560, %1556 ], [ %1622, %1618 ]
  %1567 = phi i32 [ %1559, %1556 ], [ %1621, %1618 ]
  %1568 = phi i32 [ 0, %1556 ], [ %1620, %1618 ]
  %1569 = phi i32 [ %1557, %1556 ], [ %1580, %1618 ]
  %1570 = phi i32 [ 0, %1556 ], [ %1573, %1618 ]
  %1571 = phi i32 [ -1, %1556 ], [ %1619, %1618 ]
  %1572 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1570, i32 1), !nosanitize !32
  %1573 = extractvalue { i32, i1 } %1572, 0, !nosanitize !32
  %1574 = extractvalue { i32, i1 } %1572, 1, !nosanitize !32
  br i1 %1574, label %1545, label %1575, !prof !34, !nosanitize !32

1575:                                             ; preds = %1565
  %1576 = sext i32 %1573 to i64
  %1577 = shl nsw i64 %1576, 2
  %1578 = getelementptr i8, ptr %1548, i64 %1577
  %1579 = load i16, ptr %1578, align 2, !tbaa !28
  %1580 = zext i16 %1579 to i32
  %1581 = add nsw i32 %1568, 1
  %1582 = icmp slt i32 %1581, %1567
  %1583 = icmp eq i32 %1569, %1580
  %1584 = select i1 %1582, i1 %1583, i1 false
  br i1 %1584, label %1618, label %1585

1585:                                             ; preds = %1575
  %1586 = icmp slt i32 %1581, %1566
  br i1 %1586, label %1587, label %1593

1587:                                             ; preds = %1585
  %1588 = zext nneg i32 %1569 to i64
  %1589 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %1561, i64 0, i64 %1588
  %1590 = load i16, ptr %1589, align 4, !tbaa !28
  %1591 = trunc i32 %1581 to i16
  %1592 = add i16 %1590, %1591
  store i16 %1592, ptr %1589, align 4, !tbaa !28
  br label %1613

1593:                                             ; preds = %1585
  %1594 = icmp eq i32 %1569, 0
  br i1 %1594, label %1605, label %1595

1595:                                             ; preds = %1593
  %1596 = icmp eq i32 %1569, %1571
  br i1 %1596, label %1602, label %1597

1597:                                             ; preds = %1595
  %1598 = zext nneg i32 %1569 to i64
  %1599 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %1561, i64 0, i64 %1598
  %1600 = load i16, ptr %1599, align 4, !tbaa !28
  %1601 = add i16 %1600, 1
  store i16 %1601, ptr %1599, align 4, !tbaa !28
  br label %1602

1602:                                             ; preds = %1597, %1595
  %1603 = load i16, ptr %1562, align 4, !tbaa !28
  %1604 = add i16 %1603, 1
  store i16 %1604, ptr %1562, align 4, !tbaa !28
  br label %1613

1605:                                             ; preds = %1593
  %1606 = icmp slt i32 %1568, 10
  br i1 %1606, label %1607, label %1610

1607:                                             ; preds = %1605
  %1608 = load i16, ptr %1564, align 4, !tbaa !28
  %1609 = add i16 %1608, 1
  store i16 %1609, ptr %1564, align 4, !tbaa !28
  br label %1613

1610:                                             ; preds = %1605
  %1611 = load i16, ptr %1563, align 4, !tbaa !28
  %1612 = add i16 %1611, 1
  store i16 %1612, ptr %1563, align 4, !tbaa !28
  br label %1613

1613:                                             ; preds = %1610, %1607, %1602, %1587
  %1614 = icmp eq i16 %1579, 0
  br i1 %1614, label %1618, label %1615

1615:                                             ; preds = %1613
  %1616 = select i1 %1583, i32 6, i32 7
  %1617 = select i1 %1583, i32 3, i32 4
  br label %1618

1618:                                             ; preds = %1615, %1613, %1575
  %1619 = phi i32 [ %1571, %1575 ], [ %1569, %1613 ], [ %1569, %1615 ]
  %1620 = phi i32 [ %1581, %1575 ], [ 0, %1613 ], [ 0, %1615 ]
  %1621 = phi i32 [ %1567, %1575 ], [ 138, %1613 ], [ %1616, %1615 ]
  %1622 = phi i32 [ %1566, %1575 ], [ 3, %1613 ], [ %1617, %1615 ]
  %1623 = icmp sgt i32 %1573, %1542
  br i1 %1623, label %1624, label %1565, !llvm.loop !74

1624:                                             ; preds = %1618, %1546
  %1625 = load i32, ptr %933, align 8, !tbaa !75
  %1626 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1625, i32 1), !nosanitize !32
  %1627 = extractvalue { i32, i1 } %1626, 1, !nosanitize !32
  br i1 %1627, label %1628, label %1629, !prof !34, !nosanitize !32

1628:                                             ; preds = %1648, %1624
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1629:                                             ; preds = %1624
  %1630 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %1631 = getelementptr i8, ptr %0, i64 2506
  %1632 = load i16, ptr %1631, align 2, !tbaa !28
  %1633 = extractvalue { i32, i1 } %1626, 0, !nosanitize !32
  %1634 = sext i32 %1633 to i64
  %1635 = shl nsw i64 %1634, 2
  %1636 = getelementptr i8, ptr %1630, i64 %1635
  %1637 = getelementptr i8, ptr %1636, i64 2
  store i16 -1, ptr %1637, align 2, !tbaa !28
  %1638 = icmp slt i32 %1625, 0
  br i1 %1638, label %1707, label %1639

1639:                                             ; preds = %1629
  %1640 = zext i16 %1632 to i32
  %1641 = icmp eq i16 %1632, 0
  %1642 = select i1 %1641, i32 138, i32 7
  %1643 = select i1 %1641, i32 3, i32 4
  %1644 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %1645 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %1646 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %1647 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %1648

1648:                                             ; preds = %1701, %1639
  %1649 = phi i32 [ %1643, %1639 ], [ %1705, %1701 ]
  %1650 = phi i32 [ %1642, %1639 ], [ %1704, %1701 ]
  %1651 = phi i32 [ 0, %1639 ], [ %1703, %1701 ]
  %1652 = phi i32 [ %1640, %1639 ], [ %1663, %1701 ]
  %1653 = phi i32 [ 0, %1639 ], [ %1656, %1701 ]
  %1654 = phi i32 [ -1, %1639 ], [ %1702, %1701 ]
  %1655 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1653, i32 1), !nosanitize !32
  %1656 = extractvalue { i32, i1 } %1655, 0, !nosanitize !32
  %1657 = extractvalue { i32, i1 } %1655, 1, !nosanitize !32
  br i1 %1657, label %1628, label %1658, !prof !34, !nosanitize !32

1658:                                             ; preds = %1648
  %1659 = sext i32 %1656 to i64
  %1660 = shl nsw i64 %1659, 2
  %1661 = getelementptr i8, ptr %1631, i64 %1660
  %1662 = load i16, ptr %1661, align 2, !tbaa !28
  %1663 = zext i16 %1662 to i32
  %1664 = add nsw i32 %1651, 1
  %1665 = icmp slt i32 %1664, %1650
  %1666 = icmp eq i32 %1652, %1663
  %1667 = select i1 %1665, i1 %1666, i1 false
  br i1 %1667, label %1701, label %1668

1668:                                             ; preds = %1658
  %1669 = icmp slt i32 %1664, %1649
  br i1 %1669, label %1670, label %1676

1670:                                             ; preds = %1668
  %1671 = zext nneg i32 %1652 to i64
  %1672 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %1644, i64 0, i64 %1671
  %1673 = load i16, ptr %1672, align 4, !tbaa !28
  %1674 = trunc i32 %1664 to i16
  %1675 = add i16 %1673, %1674
  store i16 %1675, ptr %1672, align 4, !tbaa !28
  br label %1696

1676:                                             ; preds = %1668
  %1677 = icmp eq i32 %1652, 0
  br i1 %1677, label %1688, label %1678

1678:                                             ; preds = %1676
  %1679 = icmp eq i32 %1652, %1654
  br i1 %1679, label %1685, label %1680

1680:                                             ; preds = %1678
  %1681 = zext nneg i32 %1652 to i64
  %1682 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %1644, i64 0, i64 %1681
  %1683 = load i16, ptr %1682, align 4, !tbaa !28
  %1684 = add i16 %1683, 1
  store i16 %1684, ptr %1682, align 4, !tbaa !28
  br label %1685

1685:                                             ; preds = %1680, %1678
  %1686 = load i16, ptr %1645, align 4, !tbaa !28
  %1687 = add i16 %1686, 1
  store i16 %1687, ptr %1645, align 4, !tbaa !28
  br label %1696

1688:                                             ; preds = %1676
  %1689 = icmp slt i32 %1651, 10
  br i1 %1689, label %1690, label %1693

1690:                                             ; preds = %1688
  %1691 = load i16, ptr %1647, align 4, !tbaa !28
  %1692 = add i16 %1691, 1
  store i16 %1692, ptr %1647, align 4, !tbaa !28
  br label %1696

1693:                                             ; preds = %1688
  %1694 = load i16, ptr %1646, align 4, !tbaa !28
  %1695 = add i16 %1694, 1
  store i16 %1695, ptr %1646, align 4, !tbaa !28
  br label %1696

1696:                                             ; preds = %1693, %1690, %1685, %1670
  %1697 = icmp eq i16 %1662, 0
  br i1 %1697, label %1701, label %1698

1698:                                             ; preds = %1696
  %1699 = select i1 %1666, i32 6, i32 7
  %1700 = select i1 %1666, i32 3, i32 4
  br label %1701

1701:                                             ; preds = %1698, %1696, %1658
  %1702 = phi i32 [ %1654, %1658 ], [ %1652, %1696 ], [ %1652, %1698 ]
  %1703 = phi i32 [ %1664, %1658 ], [ 0, %1696 ], [ 0, %1698 ]
  %1704 = phi i32 [ %1650, %1658 ], [ 138, %1696 ], [ %1699, %1698 ]
  %1705 = phi i32 [ %1649, %1658 ], [ 3, %1696 ], [ %1700, %1698 ]
  %1706 = icmp sgt i32 %1656, %1625
  br i1 %1706, label %1707, label %1648, !llvm.loop !74

1707:                                             ; preds = %1701, %1629
  %1708 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %1709 = load ptr, ptr %1708, align 8, !tbaa !42
  %1710 = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %1711 = load ptr, ptr %1710, align 8, !tbaa !43
  %1712 = load ptr, ptr %1711, align 8, !tbaa !44
  %1713 = getelementptr inbounds nuw i8, ptr %1711, i64 20
  %1714 = load i32, ptr %1713, align 4, !tbaa !47
  store i32 0, ptr %153, align 4, !tbaa !48
  store i32 573, ptr %154, align 8, !tbaa !49
  %1715 = icmp sgt i32 %1714, 0
  br i1 %1715, label %1716, label %1721

1716:                                             ; preds = %1707
  %1717 = zext nneg i32 %1714 to i64
  br label %1727

1718:                                             ; preds = %1746
  %1719 = load i32, ptr %153, align 4, !tbaa !48
  %1720 = icmp slt i32 %1719, 2
  br i1 %1720, label %1721, label %1782

1721:                                             ; preds = %1718, %1707
  %1722 = phi i32 [ %1747, %1718 ], [ -1, %1707 ]
  %1723 = phi i32 [ %1719, %1718 ], [ 0, %1707 ]
  %1724 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %1725 = icmp eq ptr %1712, null
  %1726 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  br label %1750

1727:                                             ; preds = %1746, %1716
  %1728 = phi i64 [ 0, %1716 ], [ %1748, %1746 ]
  %1729 = phi i32 [ -1, %1716 ], [ %1747, %1746 ]
  %1730 = getelementptr inbounds nuw %struct.ct_data_s, ptr %1709, i64 %1728
  %1731 = load i16, ptr %1730, align 2, !tbaa !28
  %1732 = icmp eq i16 %1731, 0
  br i1 %1732, label %1744, label %1733

1733:                                             ; preds = %1727
  %1734 = load i32, ptr %153, align 4, !tbaa !48
  %1735 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1734, i32 1), !nosanitize !32
  %1736 = extractvalue { i32, i1 } %1735, 1, !nosanitize !32
  br i1 %1736, label %1737, label %1738, !prof !34, !nosanitize !32

1737:                                             ; preds = %1733, %1950
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

1738:                                             ; preds = %1733
  %1739 = extractvalue { i32, i1 } %1735, 0, !nosanitize !32
  store i32 %1739, ptr %153, align 4, !tbaa !48
  %1740 = sext i32 %1739 to i64
  %1741 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1740
  %1742 = trunc nuw nsw i64 %1728 to i32
  store i32 %1742, ptr %1741, align 4, !tbaa !50
  %1743 = getelementptr inbounds nuw [573 x i8], ptr %231, i64 0, i64 %1728
  store i8 0, ptr %1743, align 1, !tbaa !28
  br label %1746

1744:                                             ; preds = %1727
  %1745 = getelementptr inbounds nuw i8, ptr %1730, i64 2
  store i16 0, ptr %1745, align 2, !tbaa !28
  br label %1746

1746:                                             ; preds = %1744, %1738
  %1747 = phi i32 [ %1742, %1738 ], [ %1729, %1744 ]
  %1748 = add nuw nsw i64 %1728, 1
  %1749 = icmp eq i64 %1748, %1717
  br i1 %1749, label %1718, label %1727, !llvm.loop !51

1750:                                             ; preds = %1779, %1721
  %1751 = phi i32 [ %1723, %1721 ], [ %1780, %1779 ]
  %1752 = phi i32 [ %1722, %1721 ], [ %1755, %1779 ]
  %1753 = icmp slt i32 %1752, 2
  %1754 = add i32 %1752, 1
  %1755 = select i1 %1753, i32 %1754, i32 %1752
  %1756 = add nsw i32 %1751, 1
  %1757 = select i1 %1753, i32 %1754, i32 0
  store i32 %1756, ptr %153, align 4, !tbaa !48
  %1758 = sext i32 %1756 to i64
  %1759 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1758
  store i32 %1757, ptr %1759, align 4, !tbaa !50
  %1760 = sext i32 %1757 to i64
  %1761 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1760
  store i16 1, ptr %1761, align 2, !tbaa !28
  %1762 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1760
  store i8 0, ptr %1762, align 1, !tbaa !28
  %1763 = load i64, ptr %1724, align 8, !tbaa !52
  %1764 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1763, i64 1), !nosanitize !32
  %1765 = extractvalue { i64, i1 } %1764, 1, !nosanitize !32
  br i1 %1765, label %1766, label %1767, !prof !34, !nosanitize !32

1766:                                             ; preds = %1750
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

1767:                                             ; preds = %1750
  %1768 = extractvalue { i64, i1 } %1764, 0, !nosanitize !32
  store i64 %1768, ptr %1724, align 8, !tbaa !52
  br i1 %1725, label %1779, label %1769

1769:                                             ; preds = %1767
  %1770 = getelementptr inbounds %struct.ct_data_s, ptr %1712, i64 %1760, i32 1
  %1771 = load i16, ptr %1770, align 2, !tbaa !28
  %1772 = zext i16 %1771 to i64
  %1773 = load i64, ptr %1726, align 8, !tbaa !53
  %1774 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1773, i64 %1772), !nosanitize !32
  %1775 = extractvalue { i64, i1 } %1774, 1, !nosanitize !32
  br i1 %1775, label %1776, label %1777, !prof !34, !nosanitize !32

1776:                                             ; preds = %1769, %1943, %1936, %1863, %2040
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

1777:                                             ; preds = %1769
  %1778 = extractvalue { i64, i1 } %1774, 0, !nosanitize !32
  store i64 %1778, ptr %1726, align 8, !tbaa !53
  br label %1779

1779:                                             ; preds = %1777, %1767
  %1780 = load i32, ptr %153, align 4, !tbaa !48
  %1781 = icmp slt i32 %1780, 2
  br i1 %1781, label %1750, label %1782, !llvm.loop !54

1782:                                             ; preds = %1779, %1718
  %1783 = phi i32 [ %1747, %1718 ], [ %1755, %1779 ]
  %1784 = phi i32 [ %1719, %1718 ], [ %1780, %1779 ]
  %1785 = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i32 %1783, ptr %1785, align 8, !tbaa !55
  %1786 = lshr i32 %1784, 1
  %1787 = zext nneg i32 %1786 to i64
  br label %1791

1788:                                             ; preds = %1857
  %1789 = load i32, ptr %153, align 4, !tbaa !48
  %1790 = sext i32 %1714 to i64
  br label %1863

1791:                                             ; preds = %1857, %1782
  %1792 = phi i64 [ %1787, %1782 ], [ %1861, %1857 ]
  %1793 = getelementptr inbounds nuw [573 x i32], ptr %230, i64 0, i64 %1792
  %1794 = load i32, ptr %1793, align 4, !tbaa !50
  %1795 = sext i32 %1794 to i64
  %1796 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1795
  %1797 = load i32, ptr %153, align 4, !tbaa !48
  %1798 = trunc i64 %1792 to i32
  %1799 = shl i32 %1798, 1
  %1800 = icmp sgt i32 %1799, %1797
  br i1 %1800, label %1857, label %1801

1801:                                             ; preds = %1791
  %1802 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1795
  br label %1803

1803:                                             ; preds = %1851, %1801
  %1804 = phi i32 [ %1797, %1801 ], [ %1855, %1851 ]
  %1805 = phi i32 [ %1799, %1801 ], [ %1854, %1851 ]
  %1806 = phi i32 [ %1798, %1801 ], [ %1836, %1851 ]
  %1807 = icmp slt i32 %1805, %1804
  br i1 %1807, label %1810, label %1808

1808:                                             ; preds = %1803
  %1809 = sext i32 %1805 to i64
  br label %1834

1810:                                             ; preds = %1803
  %1811 = or disjoint i32 %1805, 1
  %1812 = sext i32 %1811 to i64
  %1813 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1812
  %1814 = load i32, ptr %1813, align 4, !tbaa !50
  %1815 = sext i32 %1814 to i64
  %1816 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1815
  %1817 = load i16, ptr %1816, align 2, !tbaa !28
  %1818 = sext i32 %1805 to i64
  %1819 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1818
  %1820 = load i32, ptr %1819, align 4, !tbaa !50
  %1821 = sext i32 %1820 to i64
  %1822 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1821
  %1823 = load i16, ptr %1822, align 2, !tbaa !28
  %1824 = icmp ult i16 %1817, %1823
  br i1 %1824, label %1833, label %1825

1825:                                             ; preds = %1810
  %1826 = icmp eq i16 %1817, %1823
  br i1 %1826, label %1827, label %1834

1827:                                             ; preds = %1825
  %1828 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1815
  %1829 = load i8, ptr %1828, align 1, !tbaa !28
  %1830 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1821
  %1831 = load i8, ptr %1830, align 1, !tbaa !28
  %1832 = icmp ugt i8 %1829, %1831
  br i1 %1832, label %1834, label %1833

1833:                                             ; preds = %1827, %1810
  br label %1834

1834:                                             ; preds = %1833, %1827, %1825, %1808
  %1835 = phi i64 [ %1809, %1808 ], [ %1812, %1833 ], [ %1818, %1827 ], [ %1818, %1825 ]
  %1836 = phi i32 [ %1805, %1808 ], [ %1811, %1833 ], [ %1805, %1827 ], [ %1805, %1825 ]
  %1837 = load i16, ptr %1802, align 2, !tbaa !28
  %1838 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1835
  %1839 = load i32, ptr %1838, align 4, !tbaa !50
  %1840 = sext i32 %1839 to i64
  %1841 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1840
  %1842 = load i16, ptr %1841, align 2, !tbaa !28
  %1843 = icmp ult i16 %1837, %1842
  br i1 %1843, label %1857, label %1844

1844:                                             ; preds = %1834
  %1845 = icmp eq i16 %1837, %1842
  br i1 %1845, label %1846, label %1851

1846:                                             ; preds = %1844
  %1847 = load i8, ptr %1796, align 1, !tbaa !28
  %1848 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1840
  %1849 = load i8, ptr %1848, align 1, !tbaa !28
  %1850 = icmp ugt i8 %1847, %1849
  br i1 %1850, label %1851, label %1857

1851:                                             ; preds = %1846, %1844
  %1852 = sext i32 %1806 to i64
  %1853 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1852
  store i32 %1839, ptr %1853, align 4, !tbaa !50
  %1854 = shl i32 %1836, 1
  %1855 = load i32, ptr %153, align 4, !tbaa !48
  %1856 = icmp sgt i32 %1854, %1855
  br i1 %1856, label %1857, label %1803, !llvm.loop !56

1857:                                             ; preds = %1851, %1846, %1834, %1791
  %1858 = phi i32 [ %1798, %1791 ], [ %1836, %1851 ], [ %1806, %1846 ], [ %1806, %1834 ]
  %1859 = sext i32 %1858 to i64
  %1860 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1859
  store i32 %1794, ptr %1860, align 4, !tbaa !50
  %1861 = add nsw i64 %1792, -1
  %1862 = icmp sgt i64 %1792, 1
  br i1 %1862, label %1791, label %1788, !llvm.loop !57

1863:                                             ; preds = %2035, %1788
  %1864 = phi i32 [ %1789, %1788 ], [ %2038, %2035 ]
  %1865 = phi i64 [ %1790, %1788 ], [ %1975, %2035 ]
  %1866 = load i32, ptr %236, align 4, !tbaa !50
  %1867 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1864, i32 -1)
  %1868 = extractvalue { i32, i1 } %1867, 1, !nosanitize !32
  br i1 %1868, label %1776, label %1869, !prof !34, !nosanitize !32

1869:                                             ; preds = %1863
  %1870 = extractvalue { i32, i1 } %1867, 0, !nosanitize !32
  store i32 %1870, ptr %153, align 4, !tbaa !48
  %1871 = sext i32 %1864 to i64
  %1872 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1871
  %1873 = load i32, ptr %1872, align 4, !tbaa !50
  store i32 %1873, ptr %236, align 4, !tbaa !50
  %1874 = sext i32 %1873 to i64
  %1875 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1874
  %1876 = icmp slt i32 %1870, 2
  br i1 %1876, label %1936, label %1877

1877:                                             ; preds = %1869
  %1878 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1874
  br label %1879

1879:                                             ; preds = %1927, %1877
  %1880 = phi i32 [ %1870, %1877 ], [ %1931, %1927 ]
  %1881 = phi i32 [ 2, %1877 ], [ %1930, %1927 ]
  %1882 = phi i32 [ 1, %1877 ], [ %1912, %1927 ]
  %1883 = icmp slt i32 %1881, %1880
  br i1 %1883, label %1886, label %1884

1884:                                             ; preds = %1879
  %1885 = sext i32 %1881 to i64
  br label %1910

1886:                                             ; preds = %1879
  %1887 = or disjoint i32 %1881, 1
  %1888 = sext i32 %1887 to i64
  %1889 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1888
  %1890 = load i32, ptr %1889, align 4, !tbaa !50
  %1891 = sext i32 %1890 to i64
  %1892 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1891
  %1893 = load i16, ptr %1892, align 2, !tbaa !28
  %1894 = sext i32 %1881 to i64
  %1895 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1894
  %1896 = load i32, ptr %1895, align 4, !tbaa !50
  %1897 = sext i32 %1896 to i64
  %1898 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1897
  %1899 = load i16, ptr %1898, align 2, !tbaa !28
  %1900 = icmp ult i16 %1893, %1899
  br i1 %1900, label %1909, label %1901

1901:                                             ; preds = %1886
  %1902 = icmp eq i16 %1893, %1899
  br i1 %1902, label %1903, label %1910

1903:                                             ; preds = %1901
  %1904 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1891
  %1905 = load i8, ptr %1904, align 1, !tbaa !28
  %1906 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1897
  %1907 = load i8, ptr %1906, align 1, !tbaa !28
  %1908 = icmp ugt i8 %1905, %1907
  br i1 %1908, label %1910, label %1909

1909:                                             ; preds = %1903, %1886
  br label %1910

1910:                                             ; preds = %1909, %1903, %1901, %1884
  %1911 = phi i64 [ %1885, %1884 ], [ %1888, %1909 ], [ %1894, %1903 ], [ %1894, %1901 ]
  %1912 = phi i32 [ %1881, %1884 ], [ %1887, %1909 ], [ %1881, %1903 ], [ %1881, %1901 ]
  %1913 = load i16, ptr %1878, align 2, !tbaa !28
  %1914 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1911
  %1915 = load i32, ptr %1914, align 4, !tbaa !50
  %1916 = sext i32 %1915 to i64
  %1917 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1916
  %1918 = load i16, ptr %1917, align 2, !tbaa !28
  %1919 = icmp ult i16 %1913, %1918
  br i1 %1919, label %1933, label %1920

1920:                                             ; preds = %1910
  %1921 = icmp eq i16 %1913, %1918
  br i1 %1921, label %1922, label %1927

1922:                                             ; preds = %1920
  %1923 = load i8, ptr %1875, align 1, !tbaa !28
  %1924 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1916
  %1925 = load i8, ptr %1924, align 1, !tbaa !28
  %1926 = icmp ugt i8 %1923, %1925
  br i1 %1926, label %1927, label %1933

1927:                                             ; preds = %1922, %1920
  %1928 = sext i32 %1882 to i64
  %1929 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1928
  store i32 %1915, ptr %1929, align 4, !tbaa !50
  %1930 = shl i32 %1912, 1
  %1931 = load i32, ptr %153, align 4, !tbaa !48
  %1932 = icmp sgt i32 %1930, %1931
  br i1 %1932, label %1933, label %1879, !llvm.loop !56

1933:                                             ; preds = %1927, %1922, %1910
  %1934 = phi i32 [ %1882, %1910 ], [ %1882, %1922 ], [ %1912, %1927 ]
  %1935 = sext i32 %1934 to i64
  br label %1936

1936:                                             ; preds = %1933, %1869
  %1937 = phi i64 [ 1, %1869 ], [ %1935, %1933 ]
  %1938 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1937
  store i32 %1873, ptr %1938, align 4, !tbaa !50
  %1939 = load i32, ptr %236, align 4, !tbaa !50
  %1940 = load i32, ptr %154, align 8, !tbaa !49
  %1941 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1940, i32 -1)
  %1942 = extractvalue { i32, i1 } %1941, 1, !nosanitize !32
  br i1 %1942, label %1776, label %1943, !prof !34, !nosanitize !32

1943:                                             ; preds = %1936
  %1944 = extractvalue { i32, i1 } %1941, 0, !nosanitize !32
  store i32 %1944, ptr %154, align 8, !tbaa !49
  %1945 = sext i32 %1944 to i64
  %1946 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1945
  store i32 %1866, ptr %1946, align 4, !tbaa !50
  %1947 = load i32, ptr %154, align 8, !tbaa !49
  %1948 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1947, i32 -1)
  %1949 = extractvalue { i32, i1 } %1948, 1, !nosanitize !32
  br i1 %1949, label %1776, label %1950, !prof !34, !nosanitize !32

1950:                                             ; preds = %1943
  %1951 = extractvalue { i32, i1 } %1948, 0, !nosanitize !32
  store i32 %1951, ptr %154, align 8, !tbaa !49
  %1952 = sext i32 %1951 to i64
  %1953 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1952
  store i32 %1939, ptr %1953, align 4, !tbaa !50
  %1954 = sext i32 %1866 to i64
  %1955 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1954
  %1956 = load i16, ptr %1955, align 2, !tbaa !28
  %1957 = sext i32 %1939 to i64
  %1958 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1957
  %1959 = load i16, ptr %1958, align 2, !tbaa !28
  %1960 = add i16 %1959, %1956
  %1961 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1865
  store i16 %1960, ptr %1961, align 2, !tbaa !28
  %1962 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1954
  %1963 = load i8, ptr %1962, align 1, !tbaa !28
  %1964 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1957
  %1965 = load i8, ptr %1964, align 1, !tbaa !28
  %1966 = tail call i8 @llvm.umax.i8(i8 %1963, i8 %1965)
  %1967 = add i8 %1966, 1
  %1968 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1865
  store i8 %1967, ptr %1968, align 1, !tbaa !28
  %1969 = trunc nsw i64 %1865 to i32
  %1970 = trunc i64 %1865 to i16
  %1971 = getelementptr inbounds nuw i8, ptr %1958, i64 2
  store i16 %1970, ptr %1971, align 2, !tbaa !28
  %1972 = getelementptr inbounds nuw i8, ptr %1955, i64 2
  store i16 %1970, ptr %1972, align 2, !tbaa !28
  %1973 = icmp eq i64 %1865, 2147483647
  br i1 %1973, label %1737, label %1974, !prof !34, !nosanitize !32

1974:                                             ; preds = %1950
  %1975 = add nsw i64 %1865, 1
  store i32 %1969, ptr %236, align 4, !tbaa !50
  %1976 = load i32, ptr %153, align 4, !tbaa !48
  %1977 = icmp slt i32 %1976, 2
  br i1 %1977, label %2035, label %1978

1978:                                             ; preds = %1974, %2026
  %1979 = phi i32 [ %2030, %2026 ], [ %1976, %1974 ]
  %1980 = phi i32 [ %2029, %2026 ], [ 2, %1974 ]
  %1981 = phi i32 [ %2011, %2026 ], [ 1, %1974 ]
  %1982 = icmp slt i32 %1980, %1979
  br i1 %1982, label %1985, label %1983

1983:                                             ; preds = %1978
  %1984 = sext i32 %1980 to i64
  br label %2009

1985:                                             ; preds = %1978
  %1986 = or disjoint i32 %1980, 1
  %1987 = sext i32 %1986 to i64
  %1988 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1987
  %1989 = load i32, ptr %1988, align 4, !tbaa !50
  %1990 = sext i32 %1989 to i64
  %1991 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1990
  %1992 = load i16, ptr %1991, align 2, !tbaa !28
  %1993 = sext i32 %1980 to i64
  %1994 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %1993
  %1995 = load i32, ptr %1994, align 4, !tbaa !50
  %1996 = sext i32 %1995 to i64
  %1997 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %1996
  %1998 = load i16, ptr %1997, align 2, !tbaa !28
  %1999 = icmp ult i16 %1992, %1998
  br i1 %1999, label %2008, label %2000

2000:                                             ; preds = %1985
  %2001 = icmp eq i16 %1992, %1998
  br i1 %2001, label %2002, label %2009

2002:                                             ; preds = %2000
  %2003 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1990
  %2004 = load i8, ptr %2003, align 1, !tbaa !28
  %2005 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %1996
  %2006 = load i8, ptr %2005, align 1, !tbaa !28
  %2007 = icmp ugt i8 %2004, %2006
  br i1 %2007, label %2009, label %2008

2008:                                             ; preds = %2002, %1985
  br label %2009

2009:                                             ; preds = %2008, %2002, %2000, %1983
  %2010 = phi i64 [ %1984, %1983 ], [ %1987, %2008 ], [ %1993, %2002 ], [ %1993, %2000 ]
  %2011 = phi i32 [ %1980, %1983 ], [ %1986, %2008 ], [ %1980, %2002 ], [ %1980, %2000 ]
  %2012 = load i16, ptr %1961, align 2, !tbaa !28
  %2013 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2010
  %2014 = load i32, ptr %2013, align 4, !tbaa !50
  %2015 = sext i32 %2014 to i64
  %2016 = getelementptr inbounds %struct.ct_data_s, ptr %1709, i64 %2015
  %2017 = load i16, ptr %2016, align 2, !tbaa !28
  %2018 = icmp ult i16 %2012, %2017
  br i1 %2018, label %2032, label %2019

2019:                                             ; preds = %2009
  %2020 = icmp eq i16 %2012, %2017
  br i1 %2020, label %2021, label %2026

2021:                                             ; preds = %2019
  %2022 = load i8, ptr %1968, align 1, !tbaa !28
  %2023 = getelementptr inbounds [573 x i8], ptr %231, i64 0, i64 %2015
  %2024 = load i8, ptr %2023, align 1, !tbaa !28
  %2025 = icmp ugt i8 %2022, %2024
  br i1 %2025, label %2026, label %2032

2026:                                             ; preds = %2021, %2019
  %2027 = sext i32 %1981 to i64
  %2028 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2027
  store i32 %2014, ptr %2028, align 4, !tbaa !50
  %2029 = shl i32 %2011, 1
  %2030 = load i32, ptr %153, align 4, !tbaa !48
  %2031 = icmp sgt i32 %2029, %2030
  br i1 %2031, label %2032, label %1978, !llvm.loop !56

2032:                                             ; preds = %2026, %2021, %2009
  %2033 = phi i32 [ %1981, %2009 ], [ %1981, %2021 ], [ %2011, %2026 ]
  %2034 = sext i32 %2033 to i64
  br label %2035

2035:                                             ; preds = %2032, %1974
  %2036 = phi i64 [ 1, %1974 ], [ %2034, %2032 ]
  %2037 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2036
  store i32 %1969, ptr %2037, align 4, !tbaa !50
  %2038 = load i32, ptr %153, align 4, !tbaa !48
  %2039 = icmp sgt i32 %2038, 1
  br i1 %2039, label %1863, label %2040, !llvm.loop !58

2040:                                             ; preds = %2035
  %2041 = load i32, ptr %154, align 8, !tbaa !49
  %2042 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2041, i32 -1)
  %2043 = extractvalue { i32, i1 } %2042, 1, !nosanitize !32
  br i1 %2043, label %1776, label %2044, !prof !34, !nosanitize !32

2044:                                             ; preds = %2040
  %2045 = extractvalue { i32, i1 } %2042, 0, !nosanitize !32
  %2046 = load i32, ptr %236, align 4, !tbaa !50
  store i32 %2045, ptr %154, align 8, !tbaa !49
  %2047 = sext i32 %2045 to i64
  %2048 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2047
  store i32 %2046, ptr %2048, align 4, !tbaa !50
  %2049 = load ptr, ptr %1708, align 8, !tbaa !42
  %2050 = load i32, ptr %1785, align 8, !tbaa !55
  %2051 = load ptr, ptr %1710, align 8, !tbaa !43
  %2052 = load ptr, ptr %2051, align 8, !tbaa !44
  %2053 = getelementptr inbounds nuw i8, ptr %2051, i64 8
  %2054 = load ptr, ptr %2053, align 8, !tbaa !59
  %2055 = getelementptr inbounds nuw i8, ptr %2051, i64 16
  %2056 = load i32, ptr %2055, align 8, !tbaa !60
  %2057 = getelementptr inbounds nuw i8, ptr %2051, i64 24
  %2058 = load i32, ptr %2057, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %506, i8 0, i64 32, i1 false), !tbaa !62
  %2059 = load i32, ptr %154, align 8, !tbaa !49
  %2060 = sext i32 %2059 to i64
  %2061 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2060
  %2062 = load i32, ptr %2061, align 4, !tbaa !50
  %2063 = sext i32 %2062 to i64
  %2064 = getelementptr inbounds %struct.ct_data_s, ptr %2049, i64 %2063, i32 1
  store i16 0, ptr %2064, align 2, !tbaa !28
  %2065 = load i32, ptr %154, align 8, !tbaa !49
  %2066 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2065, i32 1), !nosanitize !32
  %2067 = extractvalue { i32, i1 } %2066, 1, !nosanitize !32
  br i1 %2067, label %2068, label %2069, !prof !34, !nosanitize !32

2068:                                             ; preds = %2117, %2092, %2044
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

2069:                                             ; preds = %2044
  %2070 = extractvalue { i32, i1 } %2066, 0
  %2071 = icmp slt i32 %2070, 573
  br i1 %2071, label %2072, label %2251

2072:                                             ; preds = %2069
  %2073 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2074 = icmp eq ptr %2052, null
  %2075 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2076 = sext i32 %2070 to i64
  br label %2077

2077:                                             ; preds = %2149, %2072
  %2078 = phi i64 [ %2076, %2072 ], [ %2150, %2149 ]
  %2079 = phi i32 [ 0, %2072 ], [ %2099, %2149 ]
  %2080 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2078
  %2081 = load i32, ptr %2080, align 4, !tbaa !50
  %2082 = sext i32 %2081 to i64
  %2083 = getelementptr inbounds %struct.ct_data_s, ptr %2049, i64 %2082
  %2084 = getelementptr inbounds nuw i8, ptr %2083, i64 2
  %2085 = load i16, ptr %2084, align 2, !tbaa !28
  %2086 = zext i16 %2085 to i64
  %2087 = getelementptr inbounds nuw %struct.ct_data_s, ptr %2049, i64 %2086, i32 1
  %2088 = load i16, ptr %2087, align 2, !tbaa !28
  %2089 = zext i16 %2088 to i32
  %2090 = add nuw nsw i32 %2089, 1
  %2091 = icmp sgt i32 %2058, %2089
  br i1 %2091, label %2097, label %2092

2092:                                             ; preds = %2077
  %2093 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2079, i32 1), !nosanitize !32
  %2094 = extractvalue { i32, i1 } %2093, 1, !nosanitize !32
  br i1 %2094, label %2068, label %2095, !prof !34, !nosanitize !32

2095:                                             ; preds = %2092
  %2096 = extractvalue { i32, i1 } %2093, 0, !nosanitize !32
  br label %2097

2097:                                             ; preds = %2095, %2077
  %2098 = phi i32 [ %2058, %2095 ], [ %2090, %2077 ]
  %2099 = phi i32 [ %2096, %2095 ], [ %2079, %2077 ]
  %2100 = trunc i32 %2098 to i16
  store i16 %2100, ptr %2084, align 2, !tbaa !28
  %2101 = icmp sgt i32 %2081, %2050
  br i1 %2101, label %2149, label %2102

2102:                                             ; preds = %2097
  %2103 = sext i32 %2098 to i64
  %2104 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %2103
  %2105 = load i16, ptr %2104, align 2, !tbaa !62
  %2106 = add i16 %2105, 1
  store i16 %2106, ptr %2104, align 2, !tbaa !62
  %2107 = icmp slt i32 %2081, %2056
  br i1 %2107, label %2117, label %2108

2108:                                             ; preds = %2102
  %2109 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2081, i32 %2056), !nosanitize !32
  %2110 = extractvalue { i32, i1 } %2109, 1, !nosanitize !32
  br i1 %2110, label %2111, label %2112, !prof !34, !nosanitize !32

2111:                                             ; preds = %2108, %2177, %2169, %2208, %2155
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

2112:                                             ; preds = %2108
  %2113 = extractvalue { i32, i1 } %2109, 0, !nosanitize !32
  %2114 = sext i32 %2113 to i64
  %2115 = getelementptr inbounds i32, ptr %2054, i64 %2114
  %2116 = load i32, ptr %2115, align 4, !tbaa !50
  br label %2117

2117:                                             ; preds = %2112, %2102
  %2118 = phi i32 [ %2116, %2112 ], [ 0, %2102 ]
  %2119 = load i16, ptr %2083, align 2, !tbaa !28
  %2120 = zext i16 %2119 to i64
  %2121 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2098, i32 %2118), !nosanitize !32
  %2122 = extractvalue { i32, i1 } %2121, 1, !nosanitize !32
  br i1 %2122, label %2068, label %2123, !prof !34, !nosanitize !32

2123:                                             ; preds = %2117
  %2124 = extractvalue { i32, i1 } %2121, 0, !nosanitize !32
  %2125 = zext i32 %2124 to i64
  %2126 = mul nuw nsw i64 %2125, %2120
  %2127 = load i64, ptr %2073, align 8, !tbaa !52
  %2128 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2127, i64 %2126), !nosanitize !32
  %2129 = extractvalue { i64, i1 } %2128, 1, !nosanitize !32
  br i1 %2129, label %2130, label %2131, !prof !34, !nosanitize !32

2130:                                             ; preds = %2133, %2123
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2131:                                             ; preds = %2123
  %2132 = extractvalue { i64, i1 } %2128, 0, !nosanitize !32
  store i64 %2132, ptr %2073, align 8, !tbaa !52
  br i1 %2074, label %2149, label %2133

2133:                                             ; preds = %2131
  %2134 = getelementptr inbounds %struct.ct_data_s, ptr %2052, i64 %2082, i32 1
  %2135 = load i16, ptr %2134, align 2, !tbaa !28
  %2136 = zext i16 %2135 to i32
  %2137 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2136, i32 %2118), !nosanitize !32
  %2138 = extractvalue { i32, i1 } %2137, 1, !nosanitize !32
  br i1 %2138, label %2130, label %2139, !prof !34, !nosanitize !32

2139:                                             ; preds = %2133
  %2140 = extractvalue { i32, i1 } %2137, 0, !nosanitize !32
  %2141 = zext i32 %2140 to i64
  %2142 = mul nuw nsw i64 %2141, %2120
  %2143 = load i64, ptr %2075, align 8, !tbaa !53
  %2144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2143, i64 %2142), !nosanitize !32
  %2145 = extractvalue { i64, i1 } %2144, 1, !nosanitize !32
  br i1 %2145, label %2146, label %2147, !prof !34, !nosanitize !32

2146:                                             ; preds = %2139, %2172
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2147:                                             ; preds = %2139
  %2148 = extractvalue { i64, i1 } %2144, 0, !nosanitize !32
  store i64 %2148, ptr %2075, align 8, !tbaa !53
  br label %2149

2149:                                             ; preds = %2147, %2131, %2097
  %2150 = add nsw i64 %2078, 1
  %2151 = and i64 %2150, 4294967295
  %2152 = icmp eq i64 %2151, 573
  br i1 %2152, label %2153, label %2077, !llvm.loop !63

2153:                                             ; preds = %2149
  %2154 = icmp eq i32 %2099, 0
  br i1 %2154, label %2251, label %2155

2155:                                             ; preds = %2153
  %2156 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2058, i32 -1)
  %2157 = extractvalue { i32, i1 } %2156, 1, !nosanitize !32
  %2158 = sext i32 %2058 to i64
  %2159 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %2158
  br i1 %2157, label %2111, label %2160, !prof !34, !nosanitize !32

2160:                                             ; preds = %2155, %2187
  %2161 = phi i32 [ %2188, %2187 ], [ %2099, %2155 ]
  br label %2162

2162:                                             ; preds = %2169, %2160
  %2163 = phi { i32, i1 } [ %2170, %2169 ], [ %2156, %2160 ]
  %2164 = extractvalue { i32, i1 } %2163, 0
  %2165 = sext i32 %2164 to i64
  %2166 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %2165
  %2167 = load i16, ptr %2166, align 2, !tbaa !62
  %2168 = icmp eq i16 %2167, 0
  br i1 %2168, label %2169, label %2172

2169:                                             ; preds = %2162
  %2170 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2164, i32 -1)
  %2171 = extractvalue { i32, i1 } %2170, 1, !nosanitize !32
  br i1 %2171, label %2111, label %2162, !prof !34, !llvm.loop !64, !nosanitize !32

2172:                                             ; preds = %2162
  %2173 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %2165
  %2174 = add i16 %2167, -1
  store i16 %2174, ptr %2173, align 2, !tbaa !62
  %2175 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2164, i32 1), !nosanitize !32
  %2176 = extractvalue { i32, i1 } %2175, 1, !nosanitize !32
  br i1 %2176, label %2146, label %2177, !prof !34, !nosanitize !32

2177:                                             ; preds = %2172
  %2178 = extractvalue { i32, i1 } %2175, 0, !nosanitize !32
  %2179 = sext i32 %2178 to i64
  %2180 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %2179
  %2181 = load i16, ptr %2180, align 2, !tbaa !62
  %2182 = add i16 %2181, 2
  store i16 %2182, ptr %2180, align 2, !tbaa !62
  %2183 = load i16, ptr %2159, align 2, !tbaa !62
  %2184 = add i16 %2183, -1
  store i16 %2184, ptr %2159, align 2, !tbaa !62
  %2185 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2161, i32 -2)
  %2186 = extractvalue { i32, i1 } %2185, 1, !nosanitize !32
  br i1 %2186, label %2111, label %2187, !prof !34, !nosanitize !32

2187:                                             ; preds = %2177
  %2188 = extractvalue { i32, i1 } %2185, 0, !nosanitize !32
  %2189 = icmp sgt i32 %2188, 0
  br i1 %2189, label %2160, label %2190, !llvm.loop !65

2190:                                             ; preds = %2187
  %2191 = icmp eq i32 %2058, 0
  br i1 %2191, label %2251, label %2192

2192:                                             ; preds = %2190, %2247
  %2193 = phi i64 [ %2248, %2247 ], [ %2158, %2190 ]
  %2194 = phi i32 [ %2202, %2247 ], [ 573, %2190 ]
  %2195 = getelementptr inbounds [16 x i16], ptr %506, i64 0, i64 %2193
  %2196 = load i16, ptr %2195, align 2, !tbaa !62
  %2197 = icmp eq i16 %2196, 0
  br i1 %2197, label %2201, label %2198

2198:                                             ; preds = %2192
  %2199 = zext i16 %2196 to i32
  %2200 = trunc i64 %2193 to i16
  br label %2205

2201:                                             ; preds = %2244, %2192
  %2202 = phi i32 [ %2194, %2192 ], [ %2213, %2244 ]
  %2203 = and i64 %2193, 4294967295
  %2204 = icmp eq i64 %2203, 2147483648
  br i1 %2204, label %2228, label %2247, !prof !34, !nosanitize !32

2205:                                             ; preds = %2244, %2198
  %2206 = phi i32 [ %2194, %2198 ], [ %2213, %2244 ]
  %2207 = phi i32 [ %2199, %2198 ], [ %2245, %2244 ]
  br label %2208

2208:                                             ; preds = %2212, %2205
  %2209 = phi i32 [ %2213, %2212 ], [ %2206, %2205 ]
  %2210 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2209, i32 -1)
  %2211 = extractvalue { i32, i1 } %2210, 1, !nosanitize !32
  br i1 %2211, label %2111, label %2212, !prof !34, !nosanitize !32

2212:                                             ; preds = %2208
  %2213 = extractvalue { i32, i1 } %2210, 0, !nosanitize !32
  %2214 = sext i32 %2213 to i64
  %2215 = getelementptr inbounds [573 x i32], ptr %230, i64 0, i64 %2214
  %2216 = load i32, ptr %2215, align 4, !tbaa !50
  %2217 = icmp sgt i32 %2216, %2050
  br i1 %2217, label %2208, label %2218, !llvm.loop !66

2218:                                             ; preds = %2212
  %2219 = sext i32 %2216 to i64
  %2220 = getelementptr inbounds %struct.ct_data_s, ptr %2049, i64 %2219
  %2221 = getelementptr inbounds nuw i8, ptr %2220, i64 2
  %2222 = load i16, ptr %2221, align 2, !tbaa !28
  %2223 = zext i16 %2222 to i64
  %2224 = icmp eq i64 %2193, %2223
  br i1 %2224, label %2244, label %2225

2225:                                             ; preds = %2218
  %2226 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2193, i64 %2223), !nosanitize !32
  %2227 = extractvalue { i64, i1 } %2226, 1, !nosanitize !32
  br i1 %2227, label %2228, label %2229, !prof !34, !nosanitize !32

2228:                                             ; preds = %2201, %2225
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

2229:                                             ; preds = %2225
  %2230 = extractvalue { i64, i1 } %2226, 0, !nosanitize !32
  %2231 = load i16, ptr %2220, align 2, !tbaa !28
  %2232 = zext i16 %2231 to i64
  %2233 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2230, i64 %2232), !nosanitize !32
  %2234 = extractvalue { i64, i1 } %2233, 1, !nosanitize !32
  br i1 %2234, label %2235, label %2236, !prof !34, !nosanitize !32

2235:                                             ; preds = %2229
  tail call void @llvm.ubsantrap(i8 12) #9, !nosanitize !32
  unreachable, !nosanitize !32

2236:                                             ; preds = %2229
  %2237 = extractvalue { i64, i1 } %2233, 0, !nosanitize !32
  %2238 = load i64, ptr %2073, align 8, !tbaa !52
  %2239 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2238, i64 %2237), !nosanitize !32
  %2240 = extractvalue { i64, i1 } %2239, 1, !nosanitize !32
  br i1 %2240, label %2241, label %2242, !prof !34, !nosanitize !32

2241:                                             ; preds = %2236
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2242:                                             ; preds = %2236
  %2243 = extractvalue { i64, i1 } %2239, 0, !nosanitize !32
  store i64 %2243, ptr %2073, align 8, !tbaa !52
  store i16 %2200, ptr %2221, align 2, !tbaa !28
  br label %2244

2244:                                             ; preds = %2242, %2218
  %2245 = add nsw i32 %2207, -1
  %2246 = icmp eq i32 %2245, 0
  br i1 %2246, label %2201, label %2205, !llvm.loop !66

2247:                                             ; preds = %2201
  %2248 = add nsw i64 %2193, -1
  %2249 = and i64 %2248, 4294967295
  %2250 = icmp eq i64 %2249, 0
  br i1 %2250, label %2251, label %2192, !llvm.loop !67

2251:                                             ; preds = %2247, %2190, %2153, %2069
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %2252 = load i16, ptr %506, align 2, !tbaa !62
  %2253 = zext i16 %2252 to i32
  %2254 = shl nuw nsw i32 %2253, 1
  %2255 = trunc i32 %2254 to i16
  %2256 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %2255, ptr %2256, align 2, !tbaa !62
  %2257 = load i16, ptr %705, align 2, !tbaa !62
  %2258 = zext i16 %2257 to i32
  %2259 = add nuw nsw i32 %2254, %2258
  %2260 = shl nuw nsw i32 %2259, 1
  %2261 = trunc i32 %2260 to i16
  %2262 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2261, ptr %2262, align 4, !tbaa !62
  %2263 = load i16, ptr %712, align 2, !tbaa !62
  %2264 = zext i16 %2263 to i32
  %2265 = add nuw nsw i32 %2260, %2264
  %2266 = shl nuw nsw i32 %2265, 1
  %2267 = trunc i32 %2266 to i16
  %2268 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %2267, ptr %2268, align 2, !tbaa !62
  %2269 = load i16, ptr %719, align 2, !tbaa !62
  %2270 = zext i16 %2269 to i32
  %2271 = add nuw nsw i32 %2266, %2270
  %2272 = shl nuw nsw i32 %2271, 1
  %2273 = trunc i32 %2272 to i16
  %2274 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %2273, ptr %2274, align 8, !tbaa !62
  %2275 = load i16, ptr %726, align 2, !tbaa !62
  %2276 = zext i16 %2275 to i32
  %2277 = add nuw nsw i32 %2272, %2276
  %2278 = shl nuw nsw i32 %2277, 1
  %2279 = trunc i32 %2278 to i16
  %2280 = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %2279, ptr %2280, align 2, !tbaa !62
  %2281 = load i16, ptr %733, align 2, !tbaa !62
  %2282 = zext i16 %2281 to i32
  %2283 = add nuw nsw i32 %2278, %2282
  %2284 = shl nuw nsw i32 %2283, 1
  %2285 = trunc i32 %2284 to i16
  %2286 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %2285, ptr %2286, align 4, !tbaa !62
  %2287 = load i16, ptr %740, align 2, !tbaa !62
  %2288 = zext i16 %2287 to i32
  %2289 = add nuw nsw i32 %2284, %2288
  %2290 = shl nuw nsw i32 %2289, 1
  %2291 = trunc i32 %2290 to i16
  %2292 = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %2291, ptr %2292, align 2, !tbaa !62
  %2293 = load i16, ptr %747, align 2, !tbaa !62
  %2294 = zext i16 %2293 to i32
  %2295 = add nuw nsw i32 %2290, %2294
  %2296 = shl nuw nsw i32 %2295, 1
  %2297 = trunc i32 %2296 to i16
  %2298 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %2297, ptr %2298, align 16, !tbaa !62
  %2299 = load i16, ptr %754, align 2, !tbaa !62
  %2300 = trunc i32 %2296 to i16
  %2301 = add i16 %2299, %2300
  %2302 = shl i16 %2301, 1
  %2303 = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %2302, ptr %2303, align 2, !tbaa !62
  %2304 = load i16, ptr %761, align 2, !tbaa !62
  %2305 = add i16 %2304, %2302
  %2306 = shl i16 %2305, 1
  %2307 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %2306, ptr %2307, align 4, !tbaa !62
  %2308 = load i16, ptr %768, align 2, !tbaa !62
  %2309 = add i16 %2306, %2308
  %2310 = shl i16 %2309, 1
  %2311 = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %2310, ptr %2311, align 2, !tbaa !62
  %2312 = load i16, ptr %774, align 2, !tbaa !62
  %2313 = add i16 %2310, %2312
  %2314 = shl i16 %2313, 1
  %2315 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %2314, ptr %2315, align 8, !tbaa !62
  %2316 = load i16, ptr %779, align 2, !tbaa !62
  %2317 = add i16 %2314, %2316
  %2318 = shl i16 %2317, 1
  %2319 = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %2318, ptr %2319, align 2, !tbaa !62
  %2320 = load i16, ptr %784, align 2, !tbaa !62
  %2321 = add i16 %2318, %2320
  %2322 = shl i16 %2321, 1
  %2323 = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2322, ptr %2323, align 4, !tbaa !62
  %2324 = load i16, ptr %789, align 2, !tbaa !62
  %2325 = add i16 %2322, %2324
  %2326 = shl i16 %2325, 1
  %2327 = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %2326, ptr %2327, align 2, !tbaa !62
  %2328 = icmp slt i32 %1783, 0
  br i1 %2328, label %2389, label %2330

2329:                                             ; preds = %2383
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2330:                                             ; preds = %2251, %2385
  %2331 = phi i64 [ %2386, %2385 ], [ 0, %2251 ]
  %2332 = getelementptr inbounds nuw %struct.ct_data_s, ptr %1709, i64 %2331
  %2333 = getelementptr inbounds nuw i8, ptr %2332, i64 2
  %2334 = load i16, ptr %2333, align 2, !tbaa !28
  %2335 = icmp eq i16 %2334, 0
  br i1 %2335, label %2383, label %2336

2336:                                             ; preds = %2330
  %2337 = zext i16 %2334 to i32
  %2338 = zext i16 %2334 to i64
  %2339 = getelementptr inbounds nuw [16 x i16], ptr %5, i64 0, i64 %2338
  %2340 = load i16, ptr %2339, align 2, !tbaa !62
  %2341 = add i16 %2340, 1
  store i16 %2341, ptr %2339, align 2, !tbaa !62
  %2342 = and i32 %2337, 3
  %2343 = icmp ult i16 %2334, 4
  br i1 %2343, label %2366, label %2344

2344:                                             ; preds = %2336
  %2345 = and i32 %2337, 65532
  br label %2346

2346:                                             ; preds = %2346, %2344
  %2347 = phi i16 [ %2340, %2344 ], [ %2363, %2346 ]
  %2348 = phi i16 [ 0, %2344 ], [ %2362, %2346 ]
  %2349 = phi i32 [ 0, %2344 ], [ %2364, %2346 ]
  %2350 = and i16 %2347, 1
  %2351 = or disjoint i16 %2348, %2350
  %2352 = lshr i16 %2347, 2
  %2353 = shl i16 %2351, 2
  %2354 = and i16 %2347, 2
  %2355 = or disjoint i16 %2353, %2354
  %2356 = and i16 %2352, 1
  %2357 = or disjoint i16 %2355, %2356
  %2358 = shl i16 %2357, 1
  %2359 = lshr i16 %2347, 3
  %2360 = and i16 %2359, 1
  %2361 = or disjoint i16 %2358, %2360
  %2362 = shl i16 %2361, 1
  %2363 = lshr i16 %2347, 4
  %2364 = add i32 %2349, 4
  %2365 = icmp eq i32 %2364, %2345
  br i1 %2365, label %2366, label %2346, !llvm.loop !68

2366:                                             ; preds = %2346, %2336
  %2367 = phi i16 [ poison, %2336 ], [ %2361, %2346 ]
  %2368 = phi i16 [ %2340, %2336 ], [ %2363, %2346 ]
  %2369 = phi i16 [ 0, %2336 ], [ %2362, %2346 ]
  %2370 = icmp eq i32 %2342, 0
  br i1 %2370, label %2381, label %2371

2371:                                             ; preds = %2366, %2371
  %2372 = phi i16 [ %2378, %2371 ], [ %2368, %2366 ]
  %2373 = phi i16 [ %2377, %2371 ], [ %2369, %2366 ]
  %2374 = phi i32 [ %2379, %2371 ], [ 0, %2366 ]
  %2375 = and i16 %2372, 1
  %2376 = or disjoint i16 %2373, %2375
  %2377 = shl i16 %2376, 1
  %2378 = lshr i16 %2372, 1
  %2379 = add i32 %2374, 1
  %2380 = icmp eq i32 %2379, %2342
  br i1 %2380, label %2381, label %2371, !llvm.loop !76

2381:                                             ; preds = %2371, %2366
  %2382 = phi i16 [ %2367, %2366 ], [ %2376, %2371 ]
  store i16 %2382, ptr %2332, align 2, !tbaa !28
  br label %2383

2383:                                             ; preds = %2381, %2330
  %2384 = icmp eq i64 %2331, 2147483647
  br i1 %2384, label %2329, label %2385, !prof !34, !nosanitize !32

2385:                                             ; preds = %2383
  %2386 = add nuw nsw i64 %2331, 1
  %2387 = trunc i64 %2386 to i32
  %2388 = icmp slt i32 %1783, %2387
  br i1 %2388, label %2389, label %2330, !llvm.loop !71

2389:                                             ; preds = %2385, %2251
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  %2390 = getelementptr i8, ptr %0, i64 2750
  %2391 = getelementptr i8, ptr %0, i64 2810
  %2392 = load i16, ptr %2391, align 2, !tbaa !28
  %2393 = icmp eq i16 %2392, 0
  br i1 %2393, label %2394, label %2454

2394:                                             ; preds = %2389
  %2395 = getelementptr i8, ptr %0, i64 2754
  %2396 = load i16, ptr %2395, align 2, !tbaa !28
  %2397 = icmp eq i16 %2396, 0
  br i1 %2397, label %2398, label %2454

2398:                                             ; preds = %2394
  %2399 = getelementptr i8, ptr %0, i64 2806
  %2400 = load i16, ptr %2399, align 2, !tbaa !28
  %2401 = icmp eq i16 %2400, 0
  br i1 %2401, label %2402, label %2454

2402:                                             ; preds = %2398
  %2403 = getelementptr i8, ptr %0, i64 2758
  %2404 = load i16, ptr %2403, align 2, !tbaa !28
  %2405 = icmp eq i16 %2404, 0
  br i1 %2405, label %2406, label %2454

2406:                                             ; preds = %2402
  %2407 = getelementptr i8, ptr %0, i64 2802
  %2408 = load i16, ptr %2407, align 2, !tbaa !28
  %2409 = icmp eq i16 %2408, 0
  br i1 %2409, label %2410, label %2454

2410:                                             ; preds = %2406
  %2411 = getelementptr i8, ptr %0, i64 2762
  %2412 = load i16, ptr %2411, align 2, !tbaa !28
  %2413 = icmp eq i16 %2412, 0
  br i1 %2413, label %2414, label %2454

2414:                                             ; preds = %2410
  %2415 = getelementptr i8, ptr %0, i64 2798
  %2416 = load i16, ptr %2415, align 2, !tbaa !28
  %2417 = icmp eq i16 %2416, 0
  br i1 %2417, label %2418, label %2454

2418:                                             ; preds = %2414
  %2419 = getelementptr i8, ptr %0, i64 2766
  %2420 = load i16, ptr %2419, align 2, !tbaa !28
  %2421 = icmp eq i16 %2420, 0
  br i1 %2421, label %2422, label %2454

2422:                                             ; preds = %2418
  %2423 = getelementptr i8, ptr %0, i64 2794
  %2424 = load i16, ptr %2423, align 2, !tbaa !28
  %2425 = icmp eq i16 %2424, 0
  br i1 %2425, label %2426, label %2454

2426:                                             ; preds = %2422
  %2427 = getelementptr i8, ptr %0, i64 2770
  %2428 = load i16, ptr %2427, align 2, !tbaa !28
  %2429 = icmp eq i16 %2428, 0
  br i1 %2429, label %2430, label %2454

2430:                                             ; preds = %2426
  %2431 = getelementptr i8, ptr %0, i64 2790
  %2432 = load i16, ptr %2431, align 2, !tbaa !28
  %2433 = icmp eq i16 %2432, 0
  br i1 %2433, label %2434, label %2454

2434:                                             ; preds = %2430
  %2435 = getelementptr i8, ptr %0, i64 2774
  %2436 = load i16, ptr %2435, align 2, !tbaa !28
  %2437 = icmp eq i16 %2436, 0
  br i1 %2437, label %2438, label %2454

2438:                                             ; preds = %2434
  %2439 = getelementptr i8, ptr %0, i64 2786
  %2440 = load i16, ptr %2439, align 2, !tbaa !28
  %2441 = icmp eq i16 %2440, 0
  br i1 %2441, label %2442, label %2454

2442:                                             ; preds = %2438
  %2443 = getelementptr i8, ptr %0, i64 2778
  %2444 = load i16, ptr %2443, align 2, !tbaa !28
  %2445 = icmp eq i16 %2444, 0
  br i1 %2445, label %2446, label %2454

2446:                                             ; preds = %2442
  %2447 = getelementptr i8, ptr %0, i64 2782
  %2448 = load i16, ptr %2447, align 2, !tbaa !28
  %2449 = icmp eq i16 %2448, 0
  br i1 %2449, label %2450, label %2454

2450:                                             ; preds = %2446
  %2451 = load i16, ptr %2390, align 2, !tbaa !28
  %2452 = icmp eq i16 %2451, 0
  %2453 = select i1 %2452, i32 2, i32 3
  br label %2454

2454:                                             ; preds = %2450, %2446, %2442, %2438, %2434, %2430, %2426, %2422, %2418, %2414, %2410, %2406, %2402, %2398, %2394, %2389
  %2455 = phi i32 [ 18, %2389 ], [ 17, %2394 ], [ 16, %2398 ], [ 15, %2402 ], [ 14, %2406 ], [ 13, %2410 ], [ 12, %2414 ], [ 11, %2418 ], [ 10, %2422 ], [ 9, %2426 ], [ 8, %2430 ], [ 7, %2434 ], [ 6, %2438 ], [ 5, %2442 ], [ 4, %2446 ], [ %2453, %2450 ]
  %2456 = mul nuw nsw i32 %2455, 3
  %2457 = add nuw nsw i32 %2456, 17
  %2458 = zext nneg i32 %2457 to i64
  %2459 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %2460 = load i64, ptr %2459, align 8, !tbaa !52
  %2461 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2460, i64 %2458), !nosanitize !32
  %2462 = extractvalue { i64, i1 } %2461, 1, !nosanitize !32
  br i1 %2462, label %2463, label %2464, !prof !34, !nosanitize !32

2463:                                             ; preds = %2454
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2464:                                             ; preds = %2454
  %2465 = extractvalue { i64, i1 } %2461, 0, !nosanitize !32
  store i64 %2465, ptr %2459, align 8, !tbaa !52
  %2466 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2465, i64 3), !nosanitize !32
  %2467 = extractvalue { i64, i1 } %2466, 1, !nosanitize !32
  br i1 %2467, label %2468, label %2469, !prof !34, !nosanitize !32

2468:                                             ; preds = %2464
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2469:                                             ; preds = %2464
  %2470 = extractvalue { i64, i1 } %2466, 0, !nosanitize !32
  %2471 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2470, i64 7), !nosanitize !32
  %2472 = extractvalue { i64, i1 } %2471, 1, !nosanitize !32
  br i1 %2472, label %2473, label %2474, !prof !34, !nosanitize !32

2473:                                             ; preds = %2469
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2474:                                             ; preds = %2469
  %2475 = extractvalue { i64, i1 } %2471, 0, !nosanitize !32
  %2476 = lshr i64 %2475, 3
  %2477 = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %2478 = load i64, ptr %2477, align 8, !tbaa !53
  %2479 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2478, i64 3), !nosanitize !32
  %2480 = extractvalue { i64, i1 } %2479, 1, !nosanitize !32
  br i1 %2480, label %2481, label %2482, !prof !34, !nosanitize !32

2481:                                             ; preds = %2474
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2482:                                             ; preds = %2474
  %2483 = extractvalue { i64, i1 } %2479, 0, !nosanitize !32
  %2484 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2483, i64 7), !nosanitize !32
  %2485 = extractvalue { i64, i1 } %2484, 1, !nosanitize !32
  br i1 %2485, label %2486, label %2487, !prof !34, !nosanitize !32

2486:                                             ; preds = %2482
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2487:                                             ; preds = %2482
  %2488 = extractvalue { i64, i1 } %2484, 0, !nosanitize !32
  %2489 = lshr i64 %2488, 3
  %2490 = icmp samesign ugt i64 %2489, %2476
  br i1 %2490, label %2491, label %2495

2491:                                             ; preds = %2487
  %2492 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %2493 = load i32, ptr %2492, align 8, !tbaa !77
  %2494 = icmp eq i32 %2493, 4
  br i1 %2494, label %2495, label %2502

2495:                                             ; preds = %2491, %2487
  br label %2502

2496:                                             ; preds = %4
  %2497 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 5), !nosanitize !32
  %2498 = extractvalue { i64, i1 } %2497, 1, !nosanitize !32
  br i1 %2498, label %2499, label %2500, !prof !34, !nosanitize !32

2499:                                             ; preds = %2496
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2500:                                             ; preds = %2496
  %2501 = extractvalue { i64, i1 } %2497, 0, !nosanitize !32
  br label %2502

2502:                                             ; preds = %2491, %2495, %2500
  %2503 = phi i32 [ %2455, %2495 ], [ %2455, %2491 ], [ 0, %2500 ]
  %2504 = phi i64 [ %2489, %2495 ], [ %2489, %2491 ], [ %2501, %2500 ]
  %2505 = phi i64 [ %2489, %2495 ], [ %2476, %2491 ], [ %2501, %2500 ]
  %2506 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 4), !nosanitize !32
  %2507 = extractvalue { i64, i1 } %2506, 1, !nosanitize !32
  br i1 %2507, label %2508, label %2509, !prof !34, !nosanitize !32

2508:                                             ; preds = %2682, %2502
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2509:                                             ; preds = %2502
  %2510 = extractvalue { i64, i1 } %2506, 0, !nosanitize !32
  %2511 = icmp ule i64 %2510, %2505
  %2512 = icmp ne ptr %1, null
  %2513 = and i1 %2512, %2511
  br i1 %2513, label %2514, label %2673

2514:                                             ; preds = %2509
  %2515 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2516 = load i32, ptr %2515, align 4, !tbaa !26
  %2517 = icmp sgt i32 %2516, 13
  br i1 %2517, label %2519, label %2557

2518:                                             ; preds = %2541
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

2519:                                             ; preds = %2514
  %2520 = and i32 %3, 65535
  %2521 = shl i32 %3, %2516
  %2522 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2523 = load i16, ptr %2522, align 8, !tbaa !25
  %2524 = trunc i32 %2521 to i16
  %2525 = or i16 %2523, %2524
  store i16 %2525, ptr %2522, align 8, !tbaa !25
  %2526 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2527 = load i64, ptr %2526, align 8, !tbaa !33
  %2528 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2527, i64 1), !nosanitize !32
  %2529 = extractvalue { i64, i1 } %2528, 1, !nosanitize !32
  br i1 %2529, label %2530, label %2531, !prof !34, !nosanitize !32

2530:                                             ; preds = %2519
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2531:                                             ; preds = %2519
  %2532 = extractvalue { i64, i1 } %2528, 0, !nosanitize !32
  %2533 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2534 = load ptr, ptr %2533, align 8, !tbaa !35
  %2535 = trunc i16 %2525 to i8
  store i64 %2532, ptr %2526, align 8, !tbaa !33
  %2536 = getelementptr inbounds nuw i8, ptr %2534, i64 %2527
  store i8 %2535, ptr %2536, align 1, !tbaa !28
  %2537 = load i64, ptr %2526, align 8, !tbaa !33
  %2538 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2537, i64 1), !nosanitize !32
  %2539 = extractvalue { i64, i1 } %2538, 1, !nosanitize !32
  br i1 %2539, label %2540, label %2541, !prof !34, !nosanitize !32

2540:                                             ; preds = %2551, %2531
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2541:                                             ; preds = %2531
  %2542 = extractvalue { i64, i1 } %2538, 0, !nosanitize !32
  %2543 = load ptr, ptr %2533, align 8, !tbaa !35
  %2544 = load i16, ptr %2522, align 8, !tbaa !25
  %2545 = lshr i16 %2544, 8
  %2546 = trunc nuw i16 %2545 to i8
  store i64 %2542, ptr %2526, align 8, !tbaa !33
  %2547 = getelementptr inbounds nuw i8, ptr %2543, i64 %2537
  store i8 %2546, ptr %2547, align 1, !tbaa !28
  %2548 = load i32, ptr %2515, align 4, !tbaa !26
  %2549 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2548), !nosanitize !32
  %2550 = extractvalue { i32, i1 } %2549, 1, !nosanitize !32
  br i1 %2550, label %2518, label %2551, !prof !34, !nosanitize !32

2551:                                             ; preds = %2541
  %2552 = extractvalue { i32, i1 } %2549, 0, !nosanitize !32
  %2553 = lshr i32 %2520, %2552
  %2554 = trunc nuw i32 %2553 to i16
  store i16 %2554, ptr %2522, align 8, !tbaa !25
  %2555 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2548, i32 -13), !nosanitize !32
  %2556 = extractvalue { i32, i1 } %2555, 1, !nosanitize !32
  br i1 %2556, label %2540, label %2565, !prof !34, !nosanitize !32

2557:                                             ; preds = %2514
  %2558 = shl i32 %3, %2516
  %2559 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2560 = load i16, ptr %2559, align 8, !tbaa !25
  %2561 = trunc i32 %2558 to i16
  %2562 = or i16 %2560, %2561
  store i16 %2562, ptr %2559, align 8, !tbaa !25
  %2563 = add nsw i32 %2516, 3
  %2564 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2563, 0
  br label %2565

2565:                                             ; preds = %2557, %2551
  %2566 = phi i16 [ %2554, %2551 ], [ %2562, %2557 ]
  %2567 = phi { i32, i1 } [ %2555, %2551 ], [ %2564, %2557 ]
  %2568 = extractvalue { i32, i1 } %2567, 0
  store i32 %2568, ptr %2515, align 4, !tbaa !26
  %2569 = icmp sgt i32 %2568, 8
  br i1 %2569, label %2570, label %2594

2570:                                             ; preds = %2565
  %2571 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2572 = load i64, ptr %2571, align 8, !tbaa !33
  %2573 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2572, i64 1), !nosanitize !32
  %2574 = extractvalue { i64, i1 } %2573, 1, !nosanitize !32
  br i1 %2574, label %2575, label %2576, !prof !34, !nosanitize !32

2575:                                             ; preds = %2570
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2576:                                             ; preds = %2570
  %2577 = extractvalue { i64, i1 } %2573, 0, !nosanitize !32
  %2578 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2579 = load ptr, ptr %2578, align 8, !tbaa !35
  %2580 = trunc i16 %2566 to i8
  store i64 %2577, ptr %2571, align 8, !tbaa !33
  %2581 = getelementptr inbounds nuw i8, ptr %2579, i64 %2572
  store i8 %2580, ptr %2581, align 1, !tbaa !28
  %2582 = load i64, ptr %2571, align 8, !tbaa !33
  %2583 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2582, i64 1), !nosanitize !32
  %2584 = extractvalue { i64, i1 } %2583, 1, !nosanitize !32
  br i1 %2584, label %2585, label %2586, !prof !34, !nosanitize !32

2585:                                             ; preds = %2576
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2586:                                             ; preds = %2576
  %2587 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2588 = extractvalue { i64, i1 } %2583, 0, !nosanitize !32
  %2589 = load ptr, ptr %2578, align 8, !tbaa !35
  %2590 = load i16, ptr %2587, align 8, !tbaa !25
  %2591 = lshr i16 %2590, 8
  %2592 = trunc nuw i16 %2591 to i8
  store i64 %2588, ptr %2571, align 8, !tbaa !33
  %2593 = getelementptr inbounds nuw i8, ptr %2589, i64 %2582
  store i8 %2592, ptr %2593, align 1, !tbaa !28
  br label %2608

2594:                                             ; preds = %2565
  %2595 = icmp sgt i32 %2568, 0
  br i1 %2595, label %2596, label %2608

2596:                                             ; preds = %2594
  %2597 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2598 = load i64, ptr %2597, align 8, !tbaa !33
  %2599 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2598, i64 1), !nosanitize !32
  %2600 = extractvalue { i64, i1 } %2599, 1, !nosanitize !32
  br i1 %2600, label %2601, label %2602, !prof !34, !nosanitize !32

2601:                                             ; preds = %2596
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2602:                                             ; preds = %2596
  %2603 = extractvalue { i64, i1 } %2599, 0, !nosanitize !32
  %2604 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2605 = load ptr, ptr %2604, align 8, !tbaa !35
  %2606 = trunc i16 %2566 to i8
  store i64 %2603, ptr %2597, align 8, !tbaa !33
  %2607 = getelementptr inbounds nuw i8, ptr %2605, i64 %2598
  store i8 %2606, ptr %2607, align 1, !tbaa !28
  br label %2608

2608:                                             ; preds = %2602, %2594, %2586
  %2609 = load i32, ptr %2515, align 4, !tbaa !26
  %2610 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2609, i32 -1)
  %2611 = extractvalue { i32, i1 } %2610, 1, !nosanitize !32
  br i1 %2611, label %2612, label %2613, !prof !34, !nosanitize !32

2612:                                             ; preds = %2608
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

2613:                                             ; preds = %2608
  %2614 = extractvalue { i32, i1 } %2610, 0, !nosanitize !32
  %2615 = and i32 %2614, 7
  %2616 = add nuw nsw i32 %2615, 1
  %2617 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %2616, ptr %2617, align 8, !tbaa !27
  %2618 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %2618, align 8, !tbaa !25
  store i32 0, ptr %2515, align 4, !tbaa !26
  %2619 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2620 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2621 = load i64, ptr %2620, align 8, !tbaa !33
  %2622 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2621, i64 1), !nosanitize !32
  %2623 = extractvalue { i64, i1 } %2622, 1, !nosanitize !32
  br i1 %2623, label %2624, label %2625, !prof !34, !nosanitize !32

2624:                                             ; preds = %2613
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2625:                                             ; preds = %2613
  %2626 = extractvalue { i64, i1 } %2622, 0, !nosanitize !32
  %2627 = load ptr, ptr %2619, align 8, !tbaa !35
  %2628 = trunc i64 %2 to i8
  store i64 %2626, ptr %2620, align 8, !tbaa !33
  %2629 = getelementptr inbounds nuw i8, ptr %2627, i64 %2621
  store i8 %2628, ptr %2629, align 1, !tbaa !28
  %2630 = load i64, ptr %2620, align 8, !tbaa !33
  %2631 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2630, i64 1), !nosanitize !32
  %2632 = extractvalue { i64, i1 } %2631, 1, !nosanitize !32
  br i1 %2632, label %2633, label %2634, !prof !34, !nosanitize !32

2633:                                             ; preds = %2625
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2634:                                             ; preds = %2625
  %2635 = extractvalue { i64, i1 } %2631, 0, !nosanitize !32
  %2636 = load ptr, ptr %2619, align 8, !tbaa !35
  %2637 = lshr i64 %2, 8
  %2638 = trunc i64 %2637 to i8
  store i64 %2635, ptr %2620, align 8, !tbaa !33
  %2639 = getelementptr inbounds nuw i8, ptr %2636, i64 %2630
  store i8 %2638, ptr %2639, align 1, !tbaa !28
  %2640 = load i64, ptr %2620, align 8, !tbaa !33
  %2641 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2640, i64 1), !nosanitize !32
  %2642 = extractvalue { i64, i1 } %2641, 1, !nosanitize !32
  br i1 %2642, label %2643, label %2644, !prof !34, !nosanitize !32

2643:                                             ; preds = %2634
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2644:                                             ; preds = %2634
  %2645 = extractvalue { i64, i1 } %2641, 0, !nosanitize !32
  %2646 = load ptr, ptr %2619, align 8, !tbaa !35
  %2647 = trunc i64 %2 to i32
  %2648 = xor i32 %2647, 65535
  %2649 = trunc i32 %2648 to i8
  store i64 %2645, ptr %2620, align 8, !tbaa !33
  %2650 = getelementptr inbounds nuw i8, ptr %2646, i64 %2640
  store i8 %2649, ptr %2650, align 1, !tbaa !28
  %2651 = load i64, ptr %2620, align 8, !tbaa !33
  %2652 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2651, i64 1), !nosanitize !32
  %2653 = extractvalue { i64, i1 } %2652, 1, !nosanitize !32
  br i1 %2653, label %2654, label %2655, !prof !34, !nosanitize !32

2654:                                             ; preds = %2644
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2655:                                             ; preds = %2644
  %2656 = extractvalue { i64, i1 } %2652, 0, !nosanitize !32
  %2657 = load ptr, ptr %2619, align 8, !tbaa !35
  %2658 = lshr i32 %2648, 8
  %2659 = trunc i32 %2658 to i8
  store i64 %2656, ptr %2620, align 8, !tbaa !33
  %2660 = getelementptr inbounds nuw i8, ptr %2657, i64 %2651
  store i8 %2659, ptr %2660, align 1, !tbaa !28
  %2661 = icmp eq i64 %2, 0
  br i1 %2661, label %2666, label %2662

2662:                                             ; preds = %2655
  %2663 = load ptr, ptr %2619, align 8, !tbaa !35
  %2664 = load i64, ptr %2620, align 8, !tbaa !33
  %2665 = getelementptr inbounds nuw i8, ptr %2663, i64 %2664
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2665, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %2666

2666:                                             ; preds = %2662, %2655
  %2667 = load i64, ptr %2620, align 8, !tbaa !33
  %2668 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2667, i64 %2), !nosanitize !32
  %2669 = extractvalue { i64, i1 } %2668, 1, !nosanitize !32
  br i1 %2669, label %2670, label %2671, !prof !34, !nosanitize !32

2670:                                             ; preds = %2666
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2671:                                             ; preds = %2666
  %2672 = extractvalue { i64, i1 } %2668, 0, !nosanitize !32
  store i64 %2672, ptr %2620, align 8, !tbaa !33
  br label %4695

2673:                                             ; preds = %2509
  %2674 = icmp eq i64 %2504, %2505
  %2675 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %2676 = load i32, ptr %2675, align 4, !tbaa !26
  %2677 = icmp sgt i32 %2676, 13
  br i1 %2674, label %2678, label %3107

2678:                                             ; preds = %2673
  %2679 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2), !nosanitize !32
  %2680 = extractvalue { i32, i1 } %2679, 1, !nosanitize !32
  br i1 %2677, label %2682, label %2722

2681:                                             ; preds = %3134, %2706
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

2682:                                             ; preds = %2678
  br i1 %2680, label %2508, label %2683, !prof !34, !nosanitize !32

2683:                                             ; preds = %2682
  %2684 = extractvalue { i32, i1 } %2679, 0, !nosanitize !32
  %2685 = and i32 %2684, 65535
  %2686 = shl i32 %2684, %2676
  %2687 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2688 = load i16, ptr %2687, align 8, !tbaa !25
  %2689 = trunc i32 %2686 to i16
  %2690 = or i16 %2688, %2689
  store i16 %2690, ptr %2687, align 8, !tbaa !25
  %2691 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2692 = load i64, ptr %2691, align 8, !tbaa !33
  %2693 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2692, i64 1), !nosanitize !32
  %2694 = extractvalue { i64, i1 } %2693, 1, !nosanitize !32
  br i1 %2694, label %2695, label %2696, !prof !34, !nosanitize !32

2695:                                             ; preds = %2683
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2696:                                             ; preds = %2683
  %2697 = extractvalue { i64, i1 } %2693, 0, !nosanitize !32
  %2698 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2699 = load ptr, ptr %2698, align 8, !tbaa !35
  %2700 = trunc i16 %2690 to i8
  store i64 %2697, ptr %2691, align 8, !tbaa !33
  %2701 = getelementptr inbounds nuw i8, ptr %2699, i64 %2692
  store i8 %2700, ptr %2701, align 1, !tbaa !28
  %2702 = load i64, ptr %2691, align 8, !tbaa !33
  %2703 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2702, i64 1), !nosanitize !32
  %2704 = extractvalue { i64, i1 } %2703, 1, !nosanitize !32
  br i1 %2704, label %2705, label %2706, !prof !34, !nosanitize !32

2705:                                             ; preds = %3110, %2722, %2716, %2696
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2706:                                             ; preds = %2696
  %2707 = extractvalue { i64, i1 } %2703, 0, !nosanitize !32
  %2708 = load ptr, ptr %2698, align 8, !tbaa !35
  %2709 = load i16, ptr %2687, align 8, !tbaa !25
  %2710 = lshr i16 %2709, 8
  %2711 = trunc nuw i16 %2710 to i8
  store i64 %2707, ptr %2691, align 8, !tbaa !33
  %2712 = getelementptr inbounds nuw i8, ptr %2708, i64 %2702
  store i8 %2711, ptr %2712, align 1, !tbaa !28
  %2713 = load i32, ptr %2675, align 4, !tbaa !26
  %2714 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2713), !nosanitize !32
  %2715 = extractvalue { i32, i1 } %2714, 1, !nosanitize !32
  br i1 %2715, label %2681, label %2716, !prof !34, !nosanitize !32

2716:                                             ; preds = %2706
  %2717 = extractvalue { i32, i1 } %2714, 0, !nosanitize !32
  %2718 = lshr i32 %2685, %2717
  %2719 = trunc nuw i32 %2718 to i16
  store i16 %2719, ptr %2687, align 8, !tbaa !25
  %2720 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2713, i32 -13), !nosanitize !32
  %2721 = extractvalue { i32, i1 } %2720, 1, !nosanitize !32
  br i1 %2721, label %2705, label %2732, !prof !34, !nosanitize !32

2722:                                             ; preds = %2678
  br i1 %2680, label %2705, label %2723, !prof !34, !nosanitize !32

2723:                                             ; preds = %2722
  %2724 = extractvalue { i32, i1 } %2679, 0, !nosanitize !32
  %2725 = shl i32 %2724, %2676
  %2726 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2727 = load i16, ptr %2726, align 8, !tbaa !25
  %2728 = trunc i32 %2725 to i16
  %2729 = or i16 %2727, %2728
  store i16 %2729, ptr %2726, align 8, !tbaa !25
  %2730 = add nsw i32 %2676, 3
  %2731 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2730, 0
  br label %2732

2732:                                             ; preds = %2723, %2716
  %2733 = phi i16 [ %2719, %2716 ], [ %2729, %2723 ]
  %2734 = phi { i32, i1 } [ %2720, %2716 ], [ %2731, %2723 ]
  %2735 = extractvalue { i32, i1 } %2734, 0
  store i32 %2735, ptr %2675, align 4, !tbaa !26
  %2736 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %2737 = load i32, ptr %2736, align 4, !tbaa !31
  %2738 = icmp eq i32 %2737, 0
  br i1 %2738, label %3067, label %2739

2739:                                             ; preds = %2732
  %2740 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %2741 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %2742 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2743 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %2744

2744:                                             ; preds = %3062, %2739
  %2745 = phi i16 [ %3063, %3062 ], [ %2733, %2739 ]
  %2746 = phi i32 [ %3064, %3062 ], [ %2735, %2739 ]
  %2747 = phi i32 [ %2766, %3062 ], [ 0, %2739 ]
  %2748 = load ptr, ptr %2740, align 8, !tbaa !78
  %2749 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2747, i32 2)
  %2750 = extractvalue { i32, i1 } %2749, 0, !nosanitize !32
  %2751 = extractvalue { i32, i1 } %2749, 1, !nosanitize !32
  br i1 %2751, label %2752, label %2753, !prof !34, !nosanitize !32

2752:                                             ; preds = %2744
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2753:                                             ; preds = %2744
  %2754 = add nuw i32 %2747, 1
  %2755 = zext i32 %2747 to i64
  %2756 = getelementptr inbounds nuw i8, ptr %2748, i64 %2755
  %2757 = load i8, ptr %2756, align 1, !tbaa !28
  %2758 = zext i8 %2757 to i32
  %2759 = zext i32 %2754 to i64
  %2760 = getelementptr inbounds nuw i8, ptr %2748, i64 %2759
  %2761 = load i8, ptr %2760, align 1, !tbaa !28
  %2762 = zext i8 %2761 to i32
  %2763 = shl nuw nsw i32 %2762, 8
  %2764 = or disjoint i32 %2763, %2758
  %2765 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2750, i32 1), !nosanitize !32
  %2766 = extractvalue { i32, i1 } %2765, 0, !nosanitize !32
  %2767 = extractvalue { i32, i1 } %2765, 1, !nosanitize !32
  br i1 %2767, label %2768, label %2769, !prof !34, !nosanitize !32

2768:                                             ; preds = %2753
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2769:                                             ; preds = %2753
  %2770 = zext i32 %2750 to i64
  %2771 = getelementptr inbounds nuw i8, ptr %2748, i64 %2770
  %2772 = load i8, ptr %2771, align 1, !tbaa !28
  %2773 = zext i8 %2772 to i32
  %2774 = icmp eq i32 %2764, 0
  %2775 = zext i8 %2772 to i64
  br i1 %2774, label %2776, label %2823

2776:                                             ; preds = %2769
  %2777 = getelementptr inbounds nuw %struct.ct_data_s, ptr @static_ltree, i64 %2775
  %2778 = getelementptr inbounds nuw i8, ptr %2777, i64 2
  %2779 = load i16, ptr %2778, align 2, !tbaa !28
  %2780 = zext i16 %2779 to i32
  %2781 = sub nsw i32 16, %2780
  %2782 = icmp sgt i32 %2746, %2781
  %2783 = load i16, ptr %2777, align 4, !tbaa !28
  %2784 = zext i16 %2783 to i32
  %2785 = shl i32 %2784, %2746
  %2786 = trunc i32 %2785 to i16
  %2787 = or i16 %2745, %2786
  store i16 %2787, ptr %2741, align 8, !tbaa !25
  br i1 %2782, label %2789, label %2820

2788:                                             ; preds = %2921, %2911, %2887, %2881, %2853, %2803
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

2789:                                             ; preds = %2776
  %2790 = load i64, ptr %2742, align 8, !tbaa !33
  %2791 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2790, i64 1), !nosanitize !32
  %2792 = extractvalue { i64, i1 } %2791, 1, !nosanitize !32
  br i1 %2792, label %2793, label %2794, !prof !34, !nosanitize !32

2793:                                             ; preds = %2789
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2794:                                             ; preds = %2789
  %2795 = extractvalue { i64, i1 } %2791, 0, !nosanitize !32
  %2796 = load ptr, ptr %2743, align 8, !tbaa !35
  %2797 = trunc i16 %2787 to i8
  store i64 %2795, ptr %2742, align 8, !tbaa !33
  %2798 = getelementptr inbounds nuw i8, ptr %2796, i64 %2790
  store i8 %2797, ptr %2798, align 1, !tbaa !28
  %2799 = load i64, ptr %2742, align 8, !tbaa !33
  %2800 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2799, i64 1), !nosanitize !32
  %2801 = extractvalue { i64, i1 } %2800, 1, !nosanitize !32
  br i1 %2801, label %2802, label %2803, !prof !34, !nosanitize !32

2802:                                             ; preds = %2813, %2794
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2803:                                             ; preds = %2794
  %2804 = extractvalue { i64, i1 } %2800, 0, !nosanitize !32
  %2805 = load ptr, ptr %2743, align 8, !tbaa !35
  %2806 = load i16, ptr %2741, align 8, !tbaa !25
  %2807 = lshr i16 %2806, 8
  %2808 = trunc nuw i16 %2807 to i8
  store i64 %2804, ptr %2742, align 8, !tbaa !33
  %2809 = getelementptr inbounds nuw i8, ptr %2805, i64 %2799
  store i8 %2808, ptr %2809, align 1, !tbaa !28
  %2810 = load i32, ptr %2675, align 4, !tbaa !26
  %2811 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2810), !nosanitize !32
  %2812 = extractvalue { i32, i1 } %2811, 1, !nosanitize !32
  br i1 %2812, label %2788, label %2813, !prof !34, !nosanitize !32

2813:                                             ; preds = %2803
  %2814 = extractvalue { i32, i1 } %2811, 0, !nosanitize !32
  %2815 = lshr i32 %2784, %2814
  %2816 = trunc nuw i32 %2815 to i16
  store i16 %2816, ptr %2741, align 8, !tbaa !25
  %2817 = add nsw i32 %2780, -16
  %2818 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2810, i32 %2817), !nosanitize !32
  %2819 = extractvalue { i32, i1 } %2818, 1, !nosanitize !32
  br i1 %2819, label %2802, label %3058, !prof !34, !nosanitize !32

2820:                                             ; preds = %2776
  %2821 = add nsw i32 %2746, %2780
  %2822 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2821, 0
  br label %3058

2823:                                             ; preds = %2769
  %2824 = getelementptr inbounds nuw [256 x i8], ptr @_length_code, i64 0, i64 %2775
  %2825 = load i8, ptr %2824, align 1, !tbaa !28
  %2826 = zext i8 %2825 to i64
  %2827 = getelementptr inbounds nuw %struct.ct_data_s, ptr @static_ltree, i64 %2826
  %2828 = getelementptr inbounds nuw i8, ptr %2827, i64 1028
  %2829 = getelementptr inbounds nuw i8, ptr %2827, i64 1030
  %2830 = load i16, ptr %2829, align 2, !tbaa !28
  %2831 = zext i16 %2830 to i32
  %2832 = sub nsw i32 16, %2831
  %2833 = icmp sgt i32 %2746, %2832
  %2834 = load i16, ptr %2828, align 4, !tbaa !28
  %2835 = zext i16 %2834 to i32
  %2836 = shl i32 %2835, %2746
  %2837 = trunc i32 %2836 to i16
  %2838 = or i16 %2745, %2837
  store i16 %2838, ptr %2741, align 8, !tbaa !25
  br i1 %2833, label %2839, label %2870

2839:                                             ; preds = %2823
  %2840 = load i64, ptr %2742, align 8, !tbaa !33
  %2841 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2840, i64 1), !nosanitize !32
  %2842 = extractvalue { i64, i1 } %2841, 1, !nosanitize !32
  br i1 %2842, label %2843, label %2844, !prof !34, !nosanitize !32

2843:                                             ; preds = %2839
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2844:                                             ; preds = %2839
  %2845 = extractvalue { i64, i1 } %2841, 0, !nosanitize !32
  %2846 = load ptr, ptr %2743, align 8, !tbaa !35
  %2847 = trunc i16 %2838 to i8
  store i64 %2845, ptr %2742, align 8, !tbaa !33
  %2848 = getelementptr inbounds nuw i8, ptr %2846, i64 %2840
  store i8 %2847, ptr %2848, align 1, !tbaa !28
  %2849 = load i64, ptr %2742, align 8, !tbaa !33
  %2850 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2849, i64 1), !nosanitize !32
  %2851 = extractvalue { i64, i1 } %2850, 1, !nosanitize !32
  br i1 %2851, label %2852, label %2853, !prof !34, !nosanitize !32

2852:                                             ; preds = %2863, %2844
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2853:                                             ; preds = %2844
  %2854 = extractvalue { i64, i1 } %2850, 0, !nosanitize !32
  %2855 = load ptr, ptr %2743, align 8, !tbaa !35
  %2856 = load i16, ptr %2741, align 8, !tbaa !25
  %2857 = lshr i16 %2856, 8
  %2858 = trunc nuw i16 %2857 to i8
  store i64 %2854, ptr %2742, align 8, !tbaa !33
  %2859 = getelementptr inbounds nuw i8, ptr %2855, i64 %2849
  store i8 %2858, ptr %2859, align 1, !tbaa !28
  %2860 = load i32, ptr %2675, align 4, !tbaa !26
  %2861 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2860), !nosanitize !32
  %2862 = extractvalue { i32, i1 } %2861, 1, !nosanitize !32
  br i1 %2862, label %2788, label %2863, !prof !34, !nosanitize !32

2863:                                             ; preds = %2853
  %2864 = extractvalue { i32, i1 } %2861, 0, !nosanitize !32
  %2865 = lshr i32 %2835, %2864
  %2866 = trunc nuw i32 %2865 to i16
  store i16 %2866, ptr %2741, align 8, !tbaa !25
  %2867 = add nsw i32 %2831, -16
  %2868 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2860, i32 %2867), !nosanitize !32
  %2869 = extractvalue { i32, i1 } %2868, 1, !nosanitize !32
  br i1 %2869, label %2852, label %2873, !prof !34, !nosanitize !32

2870:                                             ; preds = %2823
  %2871 = add nsw i32 %2746, %2831
  %2872 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2871, 0
  br label %2873

2873:                                             ; preds = %2870, %2863
  %2874 = phi i16 [ %2866, %2863 ], [ %2838, %2870 ]
  %2875 = phi { i32, i1 } [ %2868, %2863 ], [ %2872, %2870 ]
  %2876 = extractvalue { i32, i1 } %2875, 0
  store i32 %2876, ptr %2675, align 4, !tbaa !26
  %2877 = getelementptr inbounds nuw [29 x i32], ptr @extra_lbits, i64 0, i64 %2826
  %2878 = load i32, ptr %2877, align 4, !tbaa !50
  %2879 = add nsw i64 %2826, -28
  %2880 = icmp ult i64 %2879, -20
  br i1 %2880, label %2941, label %2881

2881:                                             ; preds = %2873
  %2882 = getelementptr inbounds nuw [29 x i32], ptr @base_length, i64 0, i64 %2826
  %2883 = load i32, ptr %2882, align 4, !tbaa !50
  %2884 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2773, i32 %2883), !nosanitize !32
  %2885 = extractvalue { i32, i1 } %2884, 0, !nosanitize !32
  %2886 = extractvalue { i32, i1 } %2884, 1, !nosanitize !32
  br i1 %2886, label %2788, label %2887, !prof !34, !nosanitize !32

2887:                                             ; preds = %2881
  %2888 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2878), !nosanitize !32
  %2889 = extractvalue { i32, i1 } %2888, 1, !nosanitize !32
  br i1 %2889, label %2788, label %2890, !prof !34, !nosanitize !32

2890:                                             ; preds = %2887
  %2891 = extractvalue { i32, i1 } %2888, 0, !nosanitize !32
  %2892 = icmp sgt i32 %2876, %2891
  br i1 %2892, label %2893, label %2931

2893:                                             ; preds = %2890
  %2894 = and i32 %2885, 65535
  %2895 = shl i32 %2885, %2876
  %2896 = trunc i32 %2895 to i16
  %2897 = or i16 %2874, %2896
  store i16 %2897, ptr %2741, align 8, !tbaa !25
  %2898 = load i64, ptr %2742, align 8, !tbaa !33
  %2899 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2898, i64 1), !nosanitize !32
  %2900 = extractvalue { i64, i1 } %2899, 1, !nosanitize !32
  br i1 %2900, label %2901, label %2902, !prof !34, !nosanitize !32

2901:                                             ; preds = %2893
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2902:                                             ; preds = %2893
  %2903 = extractvalue { i64, i1 } %2899, 0, !nosanitize !32
  %2904 = load ptr, ptr %2743, align 8, !tbaa !35
  %2905 = trunc i16 %2897 to i8
  store i64 %2903, ptr %2742, align 8, !tbaa !33
  %2906 = getelementptr inbounds nuw i8, ptr %2904, i64 %2898
  store i8 %2905, ptr %2906, align 1, !tbaa !28
  %2907 = load i64, ptr %2742, align 8, !tbaa !33
  %2908 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2907, i64 1), !nosanitize !32
  %2909 = extractvalue { i64, i1 } %2908, 1, !nosanitize !32
  br i1 %2909, label %2910, label %2911, !prof !34, !nosanitize !32

2910:                                             ; preds = %2931, %2927, %2902
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2911:                                             ; preds = %2902
  %2912 = extractvalue { i64, i1 } %2908, 0, !nosanitize !32
  %2913 = load ptr, ptr %2743, align 8, !tbaa !35
  %2914 = load i16, ptr %2741, align 8, !tbaa !25
  %2915 = lshr i16 %2914, 8
  %2916 = trunc nuw i16 %2915 to i8
  store i64 %2912, ptr %2742, align 8, !tbaa !33
  %2917 = getelementptr inbounds nuw i8, ptr %2913, i64 %2907
  store i8 %2916, ptr %2917, align 1, !tbaa !28
  %2918 = load i32, ptr %2675, align 4, !tbaa !26
  %2919 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2918), !nosanitize !32
  %2920 = extractvalue { i32, i1 } %2919, 1, !nosanitize !32
  br i1 %2920, label %2788, label %2921, !prof !34, !nosanitize !32

2921:                                             ; preds = %2911
  %2922 = extractvalue { i32, i1 } %2919, 0, !nosanitize !32
  %2923 = lshr i32 %2894, %2922
  %2924 = trunc nuw i32 %2923 to i16
  store i16 %2924, ptr %2741, align 8, !tbaa !25
  %2925 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2878, i32 -16)
  %2926 = extractvalue { i32, i1 } %2925, 1, !nosanitize !32
  br i1 %2926, label %2788, label %2927, !prof !34, !nosanitize !32

2927:                                             ; preds = %2921
  %2928 = extractvalue { i32, i1 } %2925, 0, !nosanitize !32
  %2929 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2918, i32 %2928), !nosanitize !32
  %2930 = extractvalue { i32, i1 } %2929, 1, !nosanitize !32
  br i1 %2930, label %2910, label %2937, !prof !34, !nosanitize !32

2931:                                             ; preds = %2890
  %2932 = shl i32 %2885, %2876
  %2933 = trunc i32 %2932 to i16
  %2934 = or i16 %2874, %2933
  store i16 %2934, ptr %2741, align 8, !tbaa !25
  %2935 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2876, i32 %2878), !nosanitize !32
  %2936 = extractvalue { i32, i1 } %2935, 1, !nosanitize !32
  br i1 %2936, label %2910, label %2937, !prof !34, !nosanitize !32

2937:                                             ; preds = %2931, %2927
  %2938 = phi i16 [ %2924, %2927 ], [ %2934, %2931 ]
  %2939 = phi { i32, i1 } [ %2929, %2927 ], [ %2935, %2931 ]
  %2940 = extractvalue { i32, i1 } %2939, 0
  store i32 %2940, ptr %2675, align 4, !tbaa !26
  br label %2941

2941:                                             ; preds = %2937, %2873
  %2942 = phi i16 [ %2938, %2937 ], [ %2874, %2873 ]
  %2943 = phi i32 [ %2940, %2937 ], [ %2876, %2873 ]
  %2944 = add nsw i32 %2764, -1
  %2945 = icmp samesign ult i32 %2764, 257
  %2946 = lshr i32 %2944, 7
  %2947 = add nuw nsw i32 %2946, 256
  %2948 = select i1 %2945, i32 %2944, i32 %2947
  %2949 = zext nneg i32 %2948 to i64
  %2950 = getelementptr inbounds nuw [512 x i8], ptr @_dist_code, i64 0, i64 %2949
  %2951 = load i8, ptr %2950, align 1, !tbaa !28
  %2952 = zext i8 %2951 to i64
  %2953 = getelementptr inbounds nuw %struct.ct_data_s, ptr @static_dtree, i64 %2952
  %2954 = icmp sgt i32 %2943, 11
  %2955 = load i16, ptr %2953, align 4, !tbaa !28
  %2956 = zext i16 %2955 to i32
  %2957 = shl i32 %2956, %2943
  %2958 = trunc i32 %2957 to i16
  %2959 = or i16 %2942, %2958
  store i16 %2959, ptr %2741, align 8, !tbaa !25
  br i1 %2954, label %2961, label %2991

2960:                                             ; preds = %2975
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

2961:                                             ; preds = %2941
  %2962 = load i64, ptr %2742, align 8, !tbaa !33
  %2963 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2962, i64 1), !nosanitize !32
  %2964 = extractvalue { i64, i1 } %2963, 1, !nosanitize !32
  br i1 %2964, label %2965, label %2966, !prof !34, !nosanitize !32

2965:                                             ; preds = %2961
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2966:                                             ; preds = %2961
  %2967 = extractvalue { i64, i1 } %2963, 0, !nosanitize !32
  %2968 = load ptr, ptr %2743, align 8, !tbaa !35
  %2969 = trunc i16 %2959 to i8
  store i64 %2967, ptr %2742, align 8, !tbaa !33
  %2970 = getelementptr inbounds nuw i8, ptr %2968, i64 %2962
  store i8 %2969, ptr %2970, align 1, !tbaa !28
  %2971 = load i64, ptr %2742, align 8, !tbaa !33
  %2972 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2971, i64 1), !nosanitize !32
  %2973 = extractvalue { i64, i1 } %2972, 1, !nosanitize !32
  br i1 %2973, label %2974, label %2975, !prof !34, !nosanitize !32

2974:                                             ; preds = %2985, %2966
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

2975:                                             ; preds = %2966
  %2976 = extractvalue { i64, i1 } %2972, 0, !nosanitize !32
  %2977 = load ptr, ptr %2743, align 8, !tbaa !35
  %2978 = load i16, ptr %2741, align 8, !tbaa !25
  %2979 = lshr i16 %2978, 8
  %2980 = trunc nuw i16 %2979 to i8
  store i64 %2976, ptr %2742, align 8, !tbaa !33
  %2981 = getelementptr inbounds nuw i8, ptr %2977, i64 %2971
  store i8 %2980, ptr %2981, align 1, !tbaa !28
  %2982 = load i32, ptr %2675, align 4, !tbaa !26
  %2983 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2982), !nosanitize !32
  %2984 = extractvalue { i32, i1 } %2983, 1, !nosanitize !32
  br i1 %2984, label %2960, label %2985, !prof !34, !nosanitize !32

2985:                                             ; preds = %2975
  %2986 = extractvalue { i32, i1 } %2983, 0, !nosanitize !32
  %2987 = lshr i32 %2956, %2986
  %2988 = trunc nuw i32 %2987 to i16
  store i16 %2988, ptr %2741, align 8, !tbaa !25
  %2989 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2982, i32 -11), !nosanitize !32
  %2990 = extractvalue { i32, i1 } %2989, 1, !nosanitize !32
  br i1 %2990, label %2974, label %2994, !prof !34, !nosanitize !32

2991:                                             ; preds = %2941
  %2992 = add nsw i32 %2943, 5
  %2993 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %2992, 0
  br label %2994

2994:                                             ; preds = %2991, %2985
  %2995 = phi i16 [ %2988, %2985 ], [ %2959, %2991 ]
  %2996 = phi { i32, i1 } [ %2989, %2985 ], [ %2993, %2991 ]
  %2997 = extractvalue { i32, i1 } %2996, 0
  store i32 %2997, ptr %2675, align 4, !tbaa !26
  %2998 = getelementptr inbounds nuw [30 x i32], ptr @extra_dbits, i64 0, i64 %2952
  %2999 = load i32, ptr %2998, align 4, !tbaa !50
  %3000 = icmp ult i8 %2951, 4
  br i1 %3000, label %3062, label %3001

3001:                                             ; preds = %2994
  %3002 = getelementptr inbounds nuw [30 x i32], ptr @base_dist, i64 0, i64 %2952
  %3003 = load i32, ptr %3002, align 4, !tbaa !50
  %3004 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2944, i32 %3003), !nosanitize !32
  %3005 = extractvalue { i32, i1 } %3004, 0, !nosanitize !32
  %3006 = extractvalue { i32, i1 } %3004, 1, !nosanitize !32
  br i1 %3006, label %3007, label %3008, !prof !34, !nosanitize !32

3007:                                             ; preds = %3042, %3032, %3008, %3001, %3088
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

3008:                                             ; preds = %3001
  %3009 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %2999), !nosanitize !32
  %3010 = extractvalue { i32, i1 } %3009, 1, !nosanitize !32
  br i1 %3010, label %3007, label %3011, !prof !34, !nosanitize !32

3011:                                             ; preds = %3008
  %3012 = extractvalue { i32, i1 } %3009, 0, !nosanitize !32
  %3013 = icmp sgt i32 %2997, %3012
  br i1 %3013, label %3014, label %3052

3014:                                             ; preds = %3011
  %3015 = and i32 %3005, 65535
  %3016 = shl i32 %3005, %2997
  %3017 = trunc i32 %3016 to i16
  %3018 = or i16 %2995, %3017
  store i16 %3018, ptr %2741, align 8, !tbaa !25
  %3019 = load i64, ptr %2742, align 8, !tbaa !33
  %3020 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3019, i64 1), !nosanitize !32
  %3021 = extractvalue { i64, i1 } %3020, 1, !nosanitize !32
  br i1 %3021, label %3022, label %3023, !prof !34, !nosanitize !32

3022:                                             ; preds = %3014
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3023:                                             ; preds = %3014
  %3024 = extractvalue { i64, i1 } %3020, 0, !nosanitize !32
  %3025 = load ptr, ptr %2743, align 8, !tbaa !35
  %3026 = trunc i16 %3018 to i8
  store i64 %3024, ptr %2742, align 8, !tbaa !33
  %3027 = getelementptr inbounds nuw i8, ptr %3025, i64 %3019
  store i8 %3026, ptr %3027, align 1, !tbaa !28
  %3028 = load i64, ptr %2742, align 8, !tbaa !33
  %3029 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3028, i64 1), !nosanitize !32
  %3030 = extractvalue { i64, i1 } %3029, 1, !nosanitize !32
  br i1 %3030, label %3031, label %3032, !prof !34, !nosanitize !32

3031:                                             ; preds = %3052, %3048, %3023
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3032:                                             ; preds = %3023
  %3033 = extractvalue { i64, i1 } %3029, 0, !nosanitize !32
  %3034 = load ptr, ptr %2743, align 8, !tbaa !35
  %3035 = load i16, ptr %2741, align 8, !tbaa !25
  %3036 = lshr i16 %3035, 8
  %3037 = trunc nuw i16 %3036 to i8
  store i64 %3033, ptr %2742, align 8, !tbaa !33
  %3038 = getelementptr inbounds nuw i8, ptr %3034, i64 %3028
  store i8 %3037, ptr %3038, align 1, !tbaa !28
  %3039 = load i32, ptr %2675, align 4, !tbaa !26
  %3040 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3039), !nosanitize !32
  %3041 = extractvalue { i32, i1 } %3040, 1, !nosanitize !32
  br i1 %3041, label %3007, label %3042, !prof !34, !nosanitize !32

3042:                                             ; preds = %3032
  %3043 = extractvalue { i32, i1 } %3040, 0, !nosanitize !32
  %3044 = lshr i32 %3015, %3043
  %3045 = trunc nuw i32 %3044 to i16
  store i16 %3045, ptr %2741, align 8, !tbaa !25
  %3046 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2999, i32 -16)
  %3047 = extractvalue { i32, i1 } %3046, 1, !nosanitize !32
  br i1 %3047, label %3007, label %3048, !prof !34, !nosanitize !32

3048:                                             ; preds = %3042
  %3049 = extractvalue { i32, i1 } %3046, 0, !nosanitize !32
  %3050 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3039, i32 %3049), !nosanitize !32
  %3051 = extractvalue { i32, i1 } %3050, 1, !nosanitize !32
  br i1 %3051, label %3031, label %3058, !prof !34, !nosanitize !32

3052:                                             ; preds = %3011
  %3053 = shl i32 %3005, %2997
  %3054 = trunc i32 %3053 to i16
  %3055 = or i16 %2995, %3054
  store i16 %3055, ptr %2741, align 8, !tbaa !25
  %3056 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2997, i32 %2999), !nosanitize !32
  %3057 = extractvalue { i32, i1 } %3056, 1, !nosanitize !32
  br i1 %3057, label %3031, label %3058, !prof !34, !nosanitize !32

3058:                                             ; preds = %3052, %3048, %2820, %2813
  %3059 = phi i16 [ %2816, %2813 ], [ %2787, %2820 ], [ %3045, %3048 ], [ %3055, %3052 ]
  %3060 = phi { i32, i1 } [ %2818, %2813 ], [ %2822, %2820 ], [ %3050, %3048 ], [ %3056, %3052 ]
  %3061 = extractvalue { i32, i1 } %3060, 0
  store i32 %3061, ptr %2675, align 4, !tbaa !26
  br label %3062

3062:                                             ; preds = %3058, %2994
  %3063 = phi i16 [ %2995, %2994 ], [ %3059, %3058 ]
  %3064 = phi i32 [ %2997, %2994 ], [ %3061, %3058 ]
  %3065 = load i32, ptr %2736, align 4, !tbaa !31
  %3066 = icmp ult i32 %2766, %3065
  br i1 %3066, label %2744, label %3067, !llvm.loop !79

3067:                                             ; preds = %3062, %2732
  %3068 = phi i16 [ %2733, %2732 ], [ %3063, %3062 ]
  %3069 = phi i32 [ %2735, %2732 ], [ %3064, %3062 ]
  %3070 = icmp sgt i32 %3069, 9
  %3071 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  br i1 %3070, label %3072, label %3101

3072:                                             ; preds = %3067
  %3073 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3074 = load i64, ptr %3073, align 8, !tbaa !33
  %3075 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3074, i64 1), !nosanitize !32
  %3076 = extractvalue { i64, i1 } %3075, 1, !nosanitize !32
  br i1 %3076, label %3077, label %3078, !prof !34, !nosanitize !32

3077:                                             ; preds = %3072
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3078:                                             ; preds = %3072
  %3079 = extractvalue { i64, i1 } %3075, 0, !nosanitize !32
  %3080 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3081 = load ptr, ptr %3080, align 8, !tbaa !35
  %3082 = trunc i16 %3068 to i8
  store i64 %3079, ptr %3073, align 8, !tbaa !33
  %3083 = getelementptr inbounds nuw i8, ptr %3081, i64 %3074
  store i8 %3082, ptr %3083, align 1, !tbaa !28
  %3084 = load i64, ptr %3073, align 8, !tbaa !33
  %3085 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3084, i64 1), !nosanitize !32
  %3086 = extractvalue { i64, i1 } %3085, 1, !nosanitize !32
  br i1 %3086, label %3087, label %3088, !prof !34, !nosanitize !32

3087:                                             ; preds = %3098, %3078
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3088:                                             ; preds = %3078
  %3089 = extractvalue { i64, i1 } %3085, 0, !nosanitize !32
  %3090 = load ptr, ptr %3080, align 8, !tbaa !35
  %3091 = load i16, ptr %3071, align 8, !tbaa !25
  %3092 = lshr i16 %3091, 8
  %3093 = trunc nuw i16 %3092 to i8
  store i64 %3089, ptr %3073, align 8, !tbaa !33
  %3094 = getelementptr inbounds nuw i8, ptr %3090, i64 %3084
  store i8 %3093, ptr %3094, align 1, !tbaa !28
  %3095 = load i32, ptr %2675, align 4, !tbaa !26
  %3096 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3095), !nosanitize !32
  %3097 = extractvalue { i32, i1 } %3096, 1, !nosanitize !32
  br i1 %3097, label %3007, label %3098, !prof !34, !nosanitize !32

3098:                                             ; preds = %3088
  store i16 0, ptr %3071, align 8, !tbaa !25
  %3099 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3095, i32 -9), !nosanitize !32
  %3100 = extractvalue { i32, i1 } %3099, 1, !nosanitize !32
  br i1 %3100, label %3087, label %3104, !prof !34, !nosanitize !32

3101:                                             ; preds = %3067
  %3102 = add nsw i32 %3069, 7
  %3103 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3102, 0
  br label %3104

3104:                                             ; preds = %3098, %3101
  %3105 = phi { i32, i1 } [ %3099, %3098 ], [ %3103, %3101 ]
  %3106 = extractvalue { i32, i1 } %3105, 0
  store i32 %3106, ptr %2675, align 4, !tbaa !26
  br label %4695

3107:                                             ; preds = %2673
  %3108 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 4), !nosanitize !32
  %3109 = extractvalue { i32, i1 } %3108, 1, !nosanitize !32
  br i1 %2677, label %3110, label %3150

3110:                                             ; preds = %3107
  br i1 %3109, label %2705, label %3111, !prof !34, !nosanitize !32

3111:                                             ; preds = %3110
  %3112 = extractvalue { i32, i1 } %3108, 0, !nosanitize !32
  %3113 = and i32 %3112, 65535
  %3114 = shl i32 %3112, %2676
  %3115 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3116 = load i16, ptr %3115, align 8, !tbaa !25
  %3117 = trunc i32 %3114 to i16
  %3118 = or i16 %3116, %3117
  store i16 %3118, ptr %3115, align 8, !tbaa !25
  %3119 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3120 = load i64, ptr %3119, align 8, !tbaa !33
  %3121 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3120, i64 1), !nosanitize !32
  %3122 = extractvalue { i64, i1 } %3121, 1, !nosanitize !32
  br i1 %3122, label %3123, label %3124, !prof !34, !nosanitize !32

3123:                                             ; preds = %3111
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3124:                                             ; preds = %3111
  %3125 = extractvalue { i64, i1 } %3121, 0, !nosanitize !32
  %3126 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3127 = load ptr, ptr %3126, align 8, !tbaa !35
  %3128 = trunc i16 %3118 to i8
  store i64 %3125, ptr %3119, align 8, !tbaa !33
  %3129 = getelementptr inbounds nuw i8, ptr %3127, i64 %3120
  store i8 %3128, ptr %3129, align 1, !tbaa !28
  %3130 = load i64, ptr %3119, align 8, !tbaa !33
  %3131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3130, i64 1), !nosanitize !32
  %3132 = extractvalue { i64, i1 } %3131, 1, !nosanitize !32
  br i1 %3132, label %3133, label %3134, !prof !34, !nosanitize !32

3133:                                             ; preds = %3169, %3160, %3150, %3144, %3124
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3134:                                             ; preds = %3124
  %3135 = extractvalue { i64, i1 } %3131, 0, !nosanitize !32
  %3136 = load ptr, ptr %3126, align 8, !tbaa !35
  %3137 = load i16, ptr %3115, align 8, !tbaa !25
  %3138 = lshr i16 %3137, 8
  %3139 = trunc nuw i16 %3138 to i8
  store i64 %3135, ptr %3119, align 8, !tbaa !33
  %3140 = getelementptr inbounds nuw i8, ptr %3136, i64 %3130
  store i8 %3139, ptr %3140, align 1, !tbaa !28
  %3141 = load i32, ptr %2675, align 4, !tbaa !26
  %3142 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3141), !nosanitize !32
  %3143 = extractvalue { i32, i1 } %3142, 1, !nosanitize !32
  br i1 %3143, label %2681, label %3144, !prof !34, !nosanitize !32

3144:                                             ; preds = %3134
  %3145 = extractvalue { i32, i1 } %3142, 0, !nosanitize !32
  %3146 = lshr i32 %3113, %3145
  %3147 = trunc nuw i32 %3146 to i16
  store i16 %3147, ptr %3115, align 8, !tbaa !25
  %3148 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3141, i32 -13), !nosanitize !32
  %3149 = extractvalue { i32, i1 } %3148, 1, !nosanitize !32
  br i1 %3149, label %3133, label %3160, !prof !34, !nosanitize !32

3150:                                             ; preds = %3107
  br i1 %3109, label %3133, label %3151, !prof !34, !nosanitize !32

3151:                                             ; preds = %3150
  %3152 = extractvalue { i32, i1 } %3108, 0, !nosanitize !32
  %3153 = shl i32 %3152, %2676
  %3154 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3155 = load i16, ptr %3154, align 8, !tbaa !25
  %3156 = trunc i32 %3153 to i16
  %3157 = or i16 %3155, %3156
  store i16 %3157, ptr %3154, align 8, !tbaa !25
  %3158 = add nsw i32 %2676, 3
  %3159 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3158, 0
  br label %3160

3160:                                             ; preds = %3151, %3144
  %3161 = phi i16 [ %3147, %3144 ], [ %3157, %3151 ]
  %3162 = phi { i32, i1 } [ %3148, %3144 ], [ %3159, %3151 ]
  %3163 = extractvalue { i32, i1 } %3162, 0
  store i32 %3163, ptr %2675, align 4, !tbaa !26
  %3164 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %3165 = load i32, ptr %3164, align 8, !tbaa !73
  %3166 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3165, i32 1), !nosanitize !32
  %3167 = extractvalue { i32, i1 } %3166, 0, !nosanitize !32
  %3168 = extractvalue { i32, i1 } %3166, 1, !nosanitize !32
  br i1 %3168, label %3133, label %3169, !prof !34, !nosanitize !32

3169:                                             ; preds = %3160
  %3170 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %3171 = load i32, ptr %3170, align 8, !tbaa !75
  %3172 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3171, i32 1), !nosanitize !32
  %3173 = extractvalue { i32, i1 } %3172, 0, !nosanitize !32
  %3174 = extractvalue { i32, i1 } %3172, 1, !nosanitize !32
  br i1 %3174, label %3133, label %3175, !prof !34, !nosanitize !32

3175:                                             ; preds = %3169
  %3176 = add nuw nsw i32 %2503, 1
  %3177 = icmp sgt i32 %3163, 11
  %3178 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3167, i32 -257)
  %3179 = extractvalue { i32, i1 } %3178, 1, !nosanitize !32
  br i1 %3177, label %3181, label %3220

3180:                                             ; preds = %3371, %3851, %3396, %3311, %3275, %3259, %3236, %3220, %3204, %3181
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

3181:                                             ; preds = %3175
  br i1 %3179, label %3180, label %3182, !prof !34, !nosanitize !32

3182:                                             ; preds = %3181
  %3183 = extractvalue { i32, i1 } %3178, 0, !nosanitize !32
  %3184 = and i32 %3183, 65535
  %3185 = shl i32 %3183, %3163
  %3186 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3187 = trunc i32 %3185 to i16
  %3188 = or i16 %3161, %3187
  store i16 %3188, ptr %3186, align 8, !tbaa !25
  %3189 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3190 = load i64, ptr %3189, align 8, !tbaa !33
  %3191 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3190, i64 1), !nosanitize !32
  %3192 = extractvalue { i64, i1 } %3191, 1, !nosanitize !32
  br i1 %3192, label %3193, label %3194, !prof !34, !nosanitize !32

3193:                                             ; preds = %3182
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3194:                                             ; preds = %3182
  %3195 = extractvalue { i64, i1 } %3191, 0, !nosanitize !32
  %3196 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3197 = load ptr, ptr %3196, align 8, !tbaa !35
  %3198 = trunc i16 %3188 to i8
  store i64 %3195, ptr %3189, align 8, !tbaa !33
  %3199 = getelementptr inbounds nuw i8, ptr %3197, i64 %3190
  store i8 %3198, ptr %3199, align 1, !tbaa !28
  %3200 = load i64, ptr %3189, align 8, !tbaa !33
  %3201 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3200, i64 1), !nosanitize !32
  %3202 = extractvalue { i64, i1 } %3201, 1, !nosanitize !32
  br i1 %3202, label %3203, label %3204, !prof !34, !nosanitize !32

3203:                                             ; preds = %3214, %3194
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3204:                                             ; preds = %3194
  %3205 = extractvalue { i64, i1 } %3201, 0, !nosanitize !32
  %3206 = load ptr, ptr %3196, align 8, !tbaa !35
  %3207 = load i16, ptr %3186, align 8, !tbaa !25
  %3208 = lshr i16 %3207, 8
  %3209 = trunc nuw i16 %3208 to i8
  store i64 %3205, ptr %3189, align 8, !tbaa !33
  %3210 = getelementptr inbounds nuw i8, ptr %3206, i64 %3200
  store i8 %3209, ptr %3210, align 1, !tbaa !28
  %3211 = load i32, ptr %2675, align 4, !tbaa !26
  %3212 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3211), !nosanitize !32
  %3213 = extractvalue { i32, i1 } %3212, 1, !nosanitize !32
  br i1 %3213, label %3180, label %3214, !prof !34, !nosanitize !32

3214:                                             ; preds = %3204
  %3215 = extractvalue { i32, i1 } %3212, 0, !nosanitize !32
  %3216 = lshr i32 %3184, %3215
  %3217 = trunc nuw i32 %3216 to i16
  store i16 %3217, ptr %3186, align 8, !tbaa !25
  %3218 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3211, i32 -11), !nosanitize !32
  %3219 = extractvalue { i32, i1 } %3218, 1, !nosanitize !32
  br i1 %3219, label %3203, label %3229, !prof !34, !nosanitize !32

3220:                                             ; preds = %3175
  br i1 %3179, label %3180, label %3221, !prof !34, !nosanitize !32

3221:                                             ; preds = %3220
  %3222 = extractvalue { i32, i1 } %3178, 0, !nosanitize !32
  %3223 = shl i32 %3222, %3163
  %3224 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3225 = trunc i32 %3223 to i16
  %3226 = or i16 %3161, %3225
  store i16 %3226, ptr %3224, align 8, !tbaa !25
  %3227 = add nsw i32 %3163, 5
  %3228 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3227, 0
  br label %3229

3229:                                             ; preds = %3221, %3214
  %3230 = phi i16 [ %3217, %3214 ], [ %3226, %3221 ]
  %3231 = phi { i32, i1 } [ %3218, %3214 ], [ %3228, %3221 ]
  %3232 = extractvalue { i32, i1 } %3231, 0
  store i32 %3232, ptr %2675, align 4, !tbaa !26
  %3233 = icmp sgt i32 %3232, 11
  %3234 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3173, i32 -1)
  %3235 = extractvalue { i32, i1 } %3234, 1, !nosanitize !32
  br i1 %3233, label %3236, label %3275

3236:                                             ; preds = %3229
  br i1 %3235, label %3180, label %3237, !prof !34, !nosanitize !32

3237:                                             ; preds = %3236
  %3238 = extractvalue { i32, i1 } %3234, 0, !nosanitize !32
  %3239 = and i32 %3238, 65535
  %3240 = shl i32 %3238, %3232
  %3241 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3242 = trunc i32 %3240 to i16
  %3243 = or i16 %3230, %3242
  store i16 %3243, ptr %3241, align 8, !tbaa !25
  %3244 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3245 = load i64, ptr %3244, align 8, !tbaa !33
  %3246 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3245, i64 1), !nosanitize !32
  %3247 = extractvalue { i64, i1 } %3246, 1, !nosanitize !32
  br i1 %3247, label %3248, label %3249, !prof !34, !nosanitize !32

3248:                                             ; preds = %3237
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3249:                                             ; preds = %3237
  %3250 = extractvalue { i64, i1 } %3246, 0, !nosanitize !32
  %3251 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3252 = load ptr, ptr %3251, align 8, !tbaa !35
  %3253 = trunc i16 %3243 to i8
  store i64 %3250, ptr %3244, align 8, !tbaa !33
  %3254 = getelementptr inbounds nuw i8, ptr %3252, i64 %3245
  store i8 %3253, ptr %3254, align 1, !tbaa !28
  %3255 = load i64, ptr %3244, align 8, !tbaa !33
  %3256 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3255, i64 1), !nosanitize !32
  %3257 = extractvalue { i64, i1 } %3256, 1, !nosanitize !32
  br i1 %3257, label %3258, label %3259, !prof !34, !nosanitize !32

3258:                                             ; preds = %3269, %3249
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3259:                                             ; preds = %3249
  %3260 = extractvalue { i64, i1 } %3256, 0, !nosanitize !32
  %3261 = load ptr, ptr %3251, align 8, !tbaa !35
  %3262 = load i16, ptr %3241, align 8, !tbaa !25
  %3263 = lshr i16 %3262, 8
  %3264 = trunc nuw i16 %3263 to i8
  store i64 %3260, ptr %3244, align 8, !tbaa !33
  %3265 = getelementptr inbounds nuw i8, ptr %3261, i64 %3255
  store i8 %3264, ptr %3265, align 1, !tbaa !28
  %3266 = load i32, ptr %2675, align 4, !tbaa !26
  %3267 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3266), !nosanitize !32
  %3268 = extractvalue { i32, i1 } %3267, 1, !nosanitize !32
  br i1 %3268, label %3180, label %3269, !prof !34, !nosanitize !32

3269:                                             ; preds = %3259
  %3270 = extractvalue { i32, i1 } %3267, 0, !nosanitize !32
  %3271 = lshr i32 %3239, %3270
  %3272 = trunc nuw i32 %3271 to i16
  store i16 %3272, ptr %3241, align 8, !tbaa !25
  %3273 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3266, i32 -11), !nosanitize !32
  %3274 = extractvalue { i32, i1 } %3273, 1, !nosanitize !32
  br i1 %3274, label %3258, label %3284, !prof !34, !nosanitize !32

3275:                                             ; preds = %3229
  br i1 %3235, label %3180, label %3276, !prof !34, !nosanitize !32

3276:                                             ; preds = %3275
  %3277 = extractvalue { i32, i1 } %3234, 0, !nosanitize !32
  %3278 = shl i32 %3277, %3232
  %3279 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3280 = trunc i32 %3278 to i16
  %3281 = or i16 %3230, %3280
  store i16 %3281, ptr %3279, align 8, !tbaa !25
  %3282 = add nsw i32 %3232, 5
  %3283 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3282, 0
  br label %3284

3284:                                             ; preds = %3276, %3269
  %3285 = phi i16 [ %3272, %3269 ], [ %3281, %3276 ]
  %3286 = phi { i32, i1 } [ %3273, %3269 ], [ %3283, %3276 ]
  %3287 = extractvalue { i32, i1 } %3286, 0
  store i32 %3287, ptr %2675, align 4, !tbaa !26
  %3288 = icmp sgt i32 %3287, 12
  %3289 = add nsw i32 %2503, -3
  br i1 %3288, label %3290, label %3327

3290:                                             ; preds = %3284
  %3291 = and i32 %3289, 65535
  %3292 = shl i32 %3289, %3287
  %3293 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3294 = trunc i32 %3292 to i16
  %3295 = or i16 %3285, %3294
  store i16 %3295, ptr %3293, align 8, !tbaa !25
  %3296 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3297 = load i64, ptr %3296, align 8, !tbaa !33
  %3298 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3297, i64 1), !nosanitize !32
  %3299 = extractvalue { i64, i1 } %3298, 1, !nosanitize !32
  br i1 %3299, label %3300, label %3301, !prof !34, !nosanitize !32

3300:                                             ; preds = %3290
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3301:                                             ; preds = %3290
  %3302 = extractvalue { i64, i1 } %3298, 0, !nosanitize !32
  %3303 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3304 = load ptr, ptr %3303, align 8, !tbaa !35
  %3305 = trunc i16 %3295 to i8
  store i64 %3302, ptr %3296, align 8, !tbaa !33
  %3306 = getelementptr inbounds nuw i8, ptr %3304, i64 %3297
  store i8 %3305, ptr %3306, align 1, !tbaa !28
  %3307 = load i64, ptr %3296, align 8, !tbaa !33
  %3308 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3307, i64 1), !nosanitize !32
  %3309 = extractvalue { i64, i1 } %3308, 1, !nosanitize !32
  br i1 %3309, label %3310, label %3311, !prof !34, !nosanitize !32

3310:                                             ; preds = %3321, %3301
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3311:                                             ; preds = %3301
  %3312 = extractvalue { i64, i1 } %3308, 0, !nosanitize !32
  %3313 = load ptr, ptr %3303, align 8, !tbaa !35
  %3314 = load i16, ptr %3293, align 8, !tbaa !25
  %3315 = lshr i16 %3314, 8
  %3316 = trunc nuw i16 %3315 to i8
  store i64 %3312, ptr %3296, align 8, !tbaa !33
  %3317 = getelementptr inbounds nuw i8, ptr %3313, i64 %3307
  store i8 %3316, ptr %3317, align 1, !tbaa !28
  %3318 = load i32, ptr %2675, align 4, !tbaa !26
  %3319 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3318), !nosanitize !32
  %3320 = extractvalue { i32, i1 } %3319, 1, !nosanitize !32
  br i1 %3320, label %3180, label %3321, !prof !34, !nosanitize !32

3321:                                             ; preds = %3311
  %3322 = extractvalue { i32, i1 } %3319, 0, !nosanitize !32
  %3323 = lshr i32 %3291, %3322
  %3324 = trunc nuw i32 %3323 to i16
  store i16 %3324, ptr %3293, align 8, !tbaa !25
  %3325 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3318, i32 -12), !nosanitize !32
  %3326 = extractvalue { i32, i1 } %3325, 1, !nosanitize !32
  br i1 %3326, label %3310, label %3333, !prof !34, !nosanitize !32

3327:                                             ; preds = %3284
  %3328 = shl nsw i32 %3289, %3287
  %3329 = trunc i32 %3328 to i16
  %3330 = or i16 %3285, %3329
  %3331 = add nsw i32 %3287, 4
  %3332 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3331, 0
  br label %3333

3333:                                             ; preds = %3321, %3327
  %3334 = phi i16 [ %3324, %3321 ], [ %3330, %3327 ]
  %3335 = phi { i32, i1 } [ %3325, %3321 ], [ %3332, %3327 ]
  %3336 = extractvalue { i32, i1 } %3335, 0
  store i32 %3336, ptr %2675, align 4, !tbaa !26
  %3337 = getelementptr i8, ptr %0, i64 2750
  %3338 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %3339 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3340 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3341 = zext nneg i32 %3176 to i64
  br label %3342

3342:                                             ; preds = %3390, %3333
  %3343 = phi i16 [ %3334, %3333 ], [ %3391, %3390 ]
  %3344 = phi i32 [ %3336, %3333 ], [ %3393, %3390 ]
  %3345 = phi i64 [ 0, %3333 ], [ %3394, %3390 ]
  %3346 = icmp sgt i32 %3344, 13
  %3347 = getelementptr inbounds nuw [19 x i8], ptr @bl_order, i64 0, i64 %3345
  %3348 = load i8, ptr %3347, align 1, !tbaa !28
  %3349 = zext i8 %3348 to i64
  %3350 = shl nuw nsw i64 %3349, 2
  %3351 = getelementptr i8, ptr %3337, i64 %3350
  %3352 = load i16, ptr %3351, align 2, !tbaa !28
  %3353 = zext i16 %3352 to i32
  %3354 = shl i32 %3353, %3344
  %3355 = trunc i32 %3354 to i16
  %3356 = or i16 %3343, %3355
  store i16 %3356, ptr %3338, align 8, !tbaa !25
  br i1 %3346, label %3357, label %3387

3357:                                             ; preds = %3342
  %3358 = load i64, ptr %3339, align 8, !tbaa !33
  %3359 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3358, i64 1), !nosanitize !32
  %3360 = extractvalue { i64, i1 } %3359, 1, !nosanitize !32
  br i1 %3360, label %3361, label %3362, !prof !34, !nosanitize !32

3361:                                             ; preds = %3357
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3362:                                             ; preds = %3357
  %3363 = extractvalue { i64, i1 } %3359, 0, !nosanitize !32
  %3364 = load ptr, ptr %3340, align 8, !tbaa !35
  %3365 = trunc i16 %3356 to i8
  store i64 %3363, ptr %3339, align 8, !tbaa !33
  %3366 = getelementptr inbounds nuw i8, ptr %3364, i64 %3358
  store i8 %3365, ptr %3366, align 1, !tbaa !28
  %3367 = load i64, ptr %3339, align 8, !tbaa !33
  %3368 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3367, i64 1), !nosanitize !32
  %3369 = extractvalue { i64, i1 } %3368, 1, !nosanitize !32
  br i1 %3369, label %3370, label %3371, !prof !34, !nosanitize !32

3370:                                             ; preds = %3381, %3362
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3371:                                             ; preds = %3362
  %3372 = extractvalue { i64, i1 } %3368, 0, !nosanitize !32
  %3373 = load ptr, ptr %3340, align 8, !tbaa !35
  %3374 = load i16, ptr %3338, align 8, !tbaa !25
  %3375 = lshr i16 %3374, 8
  %3376 = trunc nuw i16 %3375 to i8
  store i64 %3372, ptr %3339, align 8, !tbaa !33
  %3377 = getelementptr inbounds nuw i8, ptr %3373, i64 %3367
  store i8 %3376, ptr %3377, align 1, !tbaa !28
  %3378 = load i32, ptr %2675, align 4, !tbaa !26
  %3379 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3378), !nosanitize !32
  %3380 = extractvalue { i32, i1 } %3379, 1, !nosanitize !32
  br i1 %3380, label %3180, label %3381, !prof !34, !nosanitize !32

3381:                                             ; preds = %3371
  %3382 = extractvalue { i32, i1 } %3379, 0, !nosanitize !32
  %3383 = lshr i32 %3353, %3382
  %3384 = trunc nuw i32 %3383 to i16
  store i16 %3384, ptr %3338, align 8, !tbaa !25
  %3385 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3378, i32 -13), !nosanitize !32
  %3386 = extractvalue { i32, i1 } %3385, 1, !nosanitize !32
  br i1 %3386, label %3370, label %3390, !prof !34, !nosanitize !32

3387:                                             ; preds = %3342
  %3388 = add nsw i32 %3344, 3
  %3389 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3388, 0
  br label %3390

3390:                                             ; preds = %3387, %3381
  %3391 = phi i16 [ %3384, %3381 ], [ %3356, %3387 ]
  %3392 = phi { i32, i1 } [ %3385, %3381 ], [ %3389, %3387 ]
  %3393 = extractvalue { i32, i1 } %3392, 0
  store i32 %3393, ptr %2675, align 4, !tbaa !26
  %3394 = add nuw nsw i64 %3345, 1
  %3395 = icmp eq i64 %3394, %3341
  br i1 %3395, label %3396, label %3342, !llvm.loop !80

3396:                                             ; preds = %3390
  %3397 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3167, i32 -1)
  %3398 = extractvalue { i32, i1 } %3397, 1, !nosanitize !32
  br i1 %3398, label %3180, label %3399, !prof !34, !nosanitize !32

3399:                                             ; preds = %3396
  %3400 = extractvalue { i32, i1 } %3397, 0, !nosanitize !32
  %3401 = icmp slt i32 %3400, 0
  br i1 %3401, label %3851, label %3402

3402:                                             ; preds = %3399
  %3403 = getelementptr i8, ptr %0, i64 214
  %3404 = load i16, ptr %3403, align 2, !tbaa !28
  %3405 = icmp eq i16 %3404, 0
  %3406 = select i1 %3405, i32 138, i32 7
  %3407 = select i1 %3405, i32 3, i32 4
  %3408 = zext i16 %3404 to i32
  %3409 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3410 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3411 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3412 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3413 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3414 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3415 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3416

3416:                                             ; preds = %3843, %3402
  %3417 = phi i16 [ %3391, %3402 ], [ %3844, %3843 ]
  %3418 = phi i32 [ %3393, %3402 ], [ %3845, %3843 ]
  %3419 = phi i32 [ 0, %3402 ], [ %3426, %3843 ]
  %3420 = phi i32 [ -1, %3402 ], [ %3849, %3843 ]
  %3421 = phi i32 [ %3408, %3402 ], [ %3434, %3843 ]
  %3422 = phi i32 [ 0, %3402 ], [ %3848, %3843 ]
  %3423 = phi i32 [ %3406, %3402 ], [ %3847, %3843 ]
  %3424 = phi i32 [ %3407, %3402 ], [ %3846, %3843 ]
  %3425 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3419, i32 1), !nosanitize !32
  %3426 = extractvalue { i32, i1 } %3425, 0, !nosanitize !32
  %3427 = extractvalue { i32, i1 } %3425, 1, !nosanitize !32
  br i1 %3427, label %3428, label %3429, !prof !34, !nosanitize !32

3428:                                             ; preds = %3416
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3429:                                             ; preds = %3416
  %3430 = sext i32 %3426 to i64
  %3431 = shl nsw i64 %3430, 2
  %3432 = getelementptr i8, ptr %3403, i64 %3431
  %3433 = load i16, ptr %3432, align 2, !tbaa !28
  %3434 = zext i16 %3433 to i32
  %3435 = add nsw i32 %3422, 1
  %3436 = icmp slt i32 %3435, %3423
  %3437 = icmp eq i32 %3421, %3434
  %3438 = select i1 %3436, i1 %3437, i1 false
  br i1 %3438, label %3843, label %3439

3439:                                             ; preds = %3429
  %3440 = icmp slt i32 %3435, %3424
  br i1 %3440, label %3441, label %3502

3441:                                             ; preds = %3439
  %3442 = zext nneg i32 %3421 to i64
  %3443 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %3409, i64 0, i64 %3442
  %3444 = getelementptr inbounds nuw i8, ptr %3443, i64 2
  br label %3445

3445:                                             ; preds = %3499, %3441
  %3446 = phi i16 [ %3494, %3499 ], [ %3417, %3441 ]
  %3447 = phi i32 [ %3496, %3499 ], [ %3418, %3441 ]
  %3448 = phi i32 [ %3500, %3499 ], [ %3435, %3441 ]
  %3449 = load i16, ptr %3444, align 2, !tbaa !28
  %3450 = zext i16 %3449 to i32
  %3451 = sub nsw i32 16, %3450
  %3452 = icmp sgt i32 %3447, %3451
  %3453 = load i16, ptr %3443, align 4, !tbaa !28
  %3454 = zext i16 %3453 to i32
  %3455 = shl i32 %3454, %3447
  %3456 = trunc i32 %3455 to i16
  %3457 = or i16 %3446, %3456
  store i16 %3457, ptr %3338, align 8, !tbaa !25
  br i1 %3452, label %3459, label %3490

3458:                                             ; preds = %3810, %3766, %3720, %3676, %3628, %3584, %3533, %3493, %3473
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

3459:                                             ; preds = %3445
  %3460 = load i64, ptr %3339, align 8, !tbaa !33
  %3461 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3460, i64 1), !nosanitize !32
  %3462 = extractvalue { i64, i1 } %3461, 1, !nosanitize !32
  br i1 %3462, label %3463, label %3464, !prof !34, !nosanitize !32

3463:                                             ; preds = %3459
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3464:                                             ; preds = %3459
  %3465 = extractvalue { i64, i1 } %3461, 0, !nosanitize !32
  %3466 = load ptr, ptr %3340, align 8, !tbaa !35
  %3467 = trunc i16 %3457 to i8
  store i64 %3465, ptr %3339, align 8, !tbaa !33
  %3468 = getelementptr inbounds nuw i8, ptr %3466, i64 %3460
  store i8 %3467, ptr %3468, align 1, !tbaa !28
  %3469 = load i64, ptr %3339, align 8, !tbaa !33
  %3470 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3469, i64 1), !nosanitize !32
  %3471 = extractvalue { i64, i1 } %3470, 1, !nosanitize !32
  br i1 %3471, label %3472, label %3473, !prof !34, !nosanitize !32

3472:                                             ; preds = %3483, %3464
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3473:                                             ; preds = %3464
  %3474 = extractvalue { i64, i1 } %3470, 0, !nosanitize !32
  %3475 = load ptr, ptr %3340, align 8, !tbaa !35
  %3476 = load i16, ptr %3338, align 8, !tbaa !25
  %3477 = lshr i16 %3476, 8
  %3478 = trunc nuw i16 %3477 to i8
  store i64 %3474, ptr %3339, align 8, !tbaa !33
  %3479 = getelementptr inbounds nuw i8, ptr %3475, i64 %3469
  store i8 %3478, ptr %3479, align 1, !tbaa !28
  %3480 = load i32, ptr %2675, align 4, !tbaa !26
  %3481 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3480), !nosanitize !32
  %3482 = extractvalue { i32, i1 } %3481, 1, !nosanitize !32
  br i1 %3482, label %3458, label %3483, !prof !34, !nosanitize !32

3483:                                             ; preds = %3473
  %3484 = extractvalue { i32, i1 } %3481, 0, !nosanitize !32
  %3485 = lshr i32 %3454, %3484
  %3486 = trunc nuw i32 %3485 to i16
  store i16 %3486, ptr %3338, align 8, !tbaa !25
  %3487 = add nsw i32 %3450, -16
  %3488 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3480, i32 %3487), !nosanitize !32
  %3489 = extractvalue { i32, i1 } %3488, 1, !nosanitize !32
  br i1 %3489, label %3472, label %3493, !prof !34, !nosanitize !32

3490:                                             ; preds = %3445
  %3491 = add nsw i32 %3447, %3450
  %3492 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3491, 0
  br label %3493

3493:                                             ; preds = %3490, %3483
  %3494 = phi i16 [ %3486, %3483 ], [ %3457, %3490 ]
  %3495 = phi { i32, i1 } [ %3488, %3483 ], [ %3492, %3490 ]
  %3496 = extractvalue { i32, i1 } %3495, 0
  store i32 %3496, ptr %2675, align 4, !tbaa !26
  %3497 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3448, i32 -1)
  %3498 = extractvalue { i32, i1 } %3497, 1, !nosanitize !32
  br i1 %3498, label %3458, label %3499, !prof !34, !nosanitize !32

3499:                                             ; preds = %3493
  %3500 = extractvalue { i32, i1 } %3497, 0, !nosanitize !32
  %3501 = icmp eq i32 %3500, 0
  br i1 %3501, label %3836, label %3445, !llvm.loop !81

3502:                                             ; preds = %3439
  %3503 = icmp eq i32 %3421, 0
  br i1 %3503, label %3650, label %3504

3504:                                             ; preds = %3502
  %3505 = icmp eq i32 %3421, %3420
  br i1 %3505, label %3557, label %3506

3506:                                             ; preds = %3504
  %3507 = zext nneg i32 %3421 to i64
  %3508 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %3409, i64 0, i64 %3507
  %3509 = getelementptr inbounds nuw i8, ptr %3508, i64 2
  %3510 = load i16, ptr %3509, align 2, !tbaa !28
  %3511 = zext i16 %3510 to i32
  %3512 = sub nsw i32 16, %3511
  %3513 = icmp sgt i32 %3418, %3512
  %3514 = load i16, ptr %3508, align 4, !tbaa !28
  %3515 = zext i16 %3514 to i32
  %3516 = shl i32 %3515, %3418
  %3517 = trunc i32 %3516 to i16
  %3518 = or i16 %3417, %3517
  store i16 %3518, ptr %3338, align 8, !tbaa !25
  br i1 %3513, label %3519, label %3550

3519:                                             ; preds = %3506
  %3520 = load i64, ptr %3339, align 8, !tbaa !33
  %3521 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3520, i64 1), !nosanitize !32
  %3522 = extractvalue { i64, i1 } %3521, 1, !nosanitize !32
  br i1 %3522, label %3523, label %3524, !prof !34, !nosanitize !32

3523:                                             ; preds = %3519
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3524:                                             ; preds = %3519
  %3525 = extractvalue { i64, i1 } %3521, 0, !nosanitize !32
  %3526 = load ptr, ptr %3340, align 8, !tbaa !35
  %3527 = trunc i16 %3518 to i8
  store i64 %3525, ptr %3339, align 8, !tbaa !33
  %3528 = getelementptr inbounds nuw i8, ptr %3526, i64 %3520
  store i8 %3527, ptr %3528, align 1, !tbaa !28
  %3529 = load i64, ptr %3339, align 8, !tbaa !33
  %3530 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3529, i64 1), !nosanitize !32
  %3531 = extractvalue { i64, i1 } %3530, 1, !nosanitize !32
  br i1 %3531, label %3532, label %3533, !prof !34, !nosanitize !32

3532:                                             ; preds = %3543, %3524
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3533:                                             ; preds = %3524
  %3534 = extractvalue { i64, i1 } %3530, 0, !nosanitize !32
  %3535 = load ptr, ptr %3340, align 8, !tbaa !35
  %3536 = load i16, ptr %3338, align 8, !tbaa !25
  %3537 = lshr i16 %3536, 8
  %3538 = trunc nuw i16 %3537 to i8
  store i64 %3534, ptr %3339, align 8, !tbaa !33
  %3539 = getelementptr inbounds nuw i8, ptr %3535, i64 %3529
  store i8 %3538, ptr %3539, align 1, !tbaa !28
  %3540 = load i32, ptr %2675, align 4, !tbaa !26
  %3541 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3540), !nosanitize !32
  %3542 = extractvalue { i32, i1 } %3541, 1, !nosanitize !32
  br i1 %3542, label %3458, label %3543, !prof !34, !nosanitize !32

3543:                                             ; preds = %3533
  %3544 = extractvalue { i32, i1 } %3541, 0, !nosanitize !32
  %3545 = lshr i32 %3515, %3544
  %3546 = trunc nuw i32 %3545 to i16
  store i16 %3546, ptr %3338, align 8, !tbaa !25
  %3547 = add nsw i32 %3511, -16
  %3548 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3540, i32 %3547), !nosanitize !32
  %3549 = extractvalue { i32, i1 } %3548, 1, !nosanitize !32
  br i1 %3549, label %3532, label %3553, !prof !34, !nosanitize !32

3550:                                             ; preds = %3506
  %3551 = add nsw i32 %3418, %3511
  %3552 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3551, 0
  br label %3553

3553:                                             ; preds = %3550, %3543
  %3554 = phi i16 [ %3546, %3543 ], [ %3518, %3550 ]
  %3555 = phi { i32, i1 } [ %3548, %3543 ], [ %3552, %3550 ]
  %3556 = extractvalue { i32, i1 } %3555, 0
  store i32 %3556, ptr %2675, align 4, !tbaa !26
  br label %3557

3557:                                             ; preds = %3553, %3504
  %3558 = phi i16 [ %3554, %3553 ], [ %3417, %3504 ]
  %3559 = phi i32 [ %3556, %3553 ], [ %3418, %3504 ]
  %3560 = phi i32 [ %3422, %3553 ], [ %3435, %3504 ]
  %3561 = load i16, ptr %3411, align 2, !tbaa !28
  %3562 = zext i16 %3561 to i32
  %3563 = sub nsw i32 16, %3562
  %3564 = icmp sgt i32 %3559, %3563
  %3565 = load i16, ptr %3410, align 4, !tbaa !28
  %3566 = zext i16 %3565 to i32
  %3567 = shl i32 %3566, %3559
  %3568 = trunc i32 %3567 to i16
  %3569 = or i16 %3558, %3568
  store i16 %3569, ptr %3338, align 8, !tbaa !25
  br i1 %3564, label %3570, label %3601

3570:                                             ; preds = %3557
  %3571 = load i64, ptr %3339, align 8, !tbaa !33
  %3572 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3571, i64 1), !nosanitize !32
  %3573 = extractvalue { i64, i1 } %3572, 1, !nosanitize !32
  br i1 %3573, label %3574, label %3575, !prof !34, !nosanitize !32

3574:                                             ; preds = %3570
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3575:                                             ; preds = %3570
  %3576 = extractvalue { i64, i1 } %3572, 0, !nosanitize !32
  %3577 = load ptr, ptr %3340, align 8, !tbaa !35
  %3578 = trunc i16 %3569 to i8
  store i64 %3576, ptr %3339, align 8, !tbaa !33
  %3579 = getelementptr inbounds nuw i8, ptr %3577, i64 %3571
  store i8 %3578, ptr %3579, align 1, !tbaa !28
  %3580 = load i64, ptr %3339, align 8, !tbaa !33
  %3581 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3580, i64 1), !nosanitize !32
  %3582 = extractvalue { i64, i1 } %3581, 1, !nosanitize !32
  br i1 %3582, label %3583, label %3584, !prof !34, !nosanitize !32

3583:                                             ; preds = %3594, %3575
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3584:                                             ; preds = %3575
  %3585 = extractvalue { i64, i1 } %3581, 0, !nosanitize !32
  %3586 = load ptr, ptr %3340, align 8, !tbaa !35
  %3587 = load i16, ptr %3338, align 8, !tbaa !25
  %3588 = lshr i16 %3587, 8
  %3589 = trunc nuw i16 %3588 to i8
  store i64 %3585, ptr %3339, align 8, !tbaa !33
  %3590 = getelementptr inbounds nuw i8, ptr %3586, i64 %3580
  store i8 %3589, ptr %3590, align 1, !tbaa !28
  %3591 = load i32, ptr %2675, align 4, !tbaa !26
  %3592 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3591), !nosanitize !32
  %3593 = extractvalue { i32, i1 } %3592, 1, !nosanitize !32
  br i1 %3593, label %3458, label %3594, !prof !34, !nosanitize !32

3594:                                             ; preds = %3584
  %3595 = extractvalue { i32, i1 } %3592, 0, !nosanitize !32
  %3596 = lshr i32 %3566, %3595
  %3597 = trunc nuw i32 %3596 to i16
  store i16 %3597, ptr %3338, align 8, !tbaa !25
  %3598 = add nsw i32 %3562, -16
  %3599 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3591, i32 %3598), !nosanitize !32
  %3600 = extractvalue { i32, i1 } %3599, 1, !nosanitize !32
  br i1 %3600, label %3583, label %3604, !prof !34, !nosanitize !32

3601:                                             ; preds = %3557
  %3602 = add nsw i32 %3559, %3562
  %3603 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3602, 0
  br label %3604

3604:                                             ; preds = %3601, %3594
  %3605 = phi i16 [ %3597, %3594 ], [ %3569, %3601 ]
  %3606 = phi { i32, i1 } [ %3599, %3594 ], [ %3603, %3601 ]
  %3607 = extractvalue { i32, i1 } %3606, 0
  store i32 %3607, ptr %2675, align 4, !tbaa !26
  %3608 = icmp sgt i32 %3607, 14
  %3609 = add i32 %3560, 65533
  br i1 %3608, label %3610, label %3644

3610:                                             ; preds = %3604
  %3611 = and i32 %3609, 65535
  %3612 = shl i32 %3609, %3607
  %3613 = trunc i32 %3612 to i16
  %3614 = or i16 %3605, %3613
  store i16 %3614, ptr %3338, align 8, !tbaa !25
  %3615 = load i64, ptr %3339, align 8, !tbaa !33
  %3616 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3615, i64 1), !nosanitize !32
  %3617 = extractvalue { i64, i1 } %3616, 1, !nosanitize !32
  br i1 %3617, label %3618, label %3619, !prof !34, !nosanitize !32

3618:                                             ; preds = %3610
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3619:                                             ; preds = %3610
  %3620 = extractvalue { i64, i1 } %3616, 0, !nosanitize !32
  %3621 = load ptr, ptr %3340, align 8, !tbaa !35
  %3622 = trunc i16 %3614 to i8
  store i64 %3620, ptr %3339, align 8, !tbaa !33
  %3623 = getelementptr inbounds nuw i8, ptr %3621, i64 %3615
  store i8 %3622, ptr %3623, align 1, !tbaa !28
  %3624 = load i64, ptr %3339, align 8, !tbaa !33
  %3625 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3624, i64 1), !nosanitize !32
  %3626 = extractvalue { i64, i1 } %3625, 1, !nosanitize !32
  br i1 %3626, label %3627, label %3628, !prof !34, !nosanitize !32

3627:                                             ; preds = %3638, %3619
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3628:                                             ; preds = %3619
  %3629 = extractvalue { i64, i1 } %3625, 0, !nosanitize !32
  %3630 = load ptr, ptr %3340, align 8, !tbaa !35
  %3631 = load i16, ptr %3338, align 8, !tbaa !25
  %3632 = lshr i16 %3631, 8
  %3633 = trunc nuw i16 %3632 to i8
  store i64 %3629, ptr %3339, align 8, !tbaa !33
  %3634 = getelementptr inbounds nuw i8, ptr %3630, i64 %3624
  store i8 %3633, ptr %3634, align 1, !tbaa !28
  %3635 = load i32, ptr %2675, align 4, !tbaa !26
  %3636 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3635), !nosanitize !32
  %3637 = extractvalue { i32, i1 } %3636, 1, !nosanitize !32
  br i1 %3637, label %3458, label %3638, !prof !34, !nosanitize !32

3638:                                             ; preds = %3628
  %3639 = extractvalue { i32, i1 } %3636, 0, !nosanitize !32
  %3640 = lshr i32 %3611, %3639
  %3641 = trunc nuw i32 %3640 to i16
  store i16 %3641, ptr %3338, align 8, !tbaa !25
  %3642 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3635, i32 -14), !nosanitize !32
  %3643 = extractvalue { i32, i1 } %3642, 1, !nosanitize !32
  br i1 %3643, label %3627, label %3832, !prof !34, !nosanitize !32

3644:                                             ; preds = %3604
  %3645 = shl i32 %3609, %3607
  %3646 = trunc i32 %3645 to i16
  %3647 = or i16 %3605, %3646
  store i16 %3647, ptr %3338, align 8, !tbaa !25
  %3648 = add nsw i32 %3607, 2
  %3649 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3648, 0
  br label %3832

3650:                                             ; preds = %3502
  %3651 = icmp slt i32 %3422, 10
  br i1 %3651, label %3652, label %3742

3652:                                             ; preds = %3650
  %3653 = load i16, ptr %3415, align 2, !tbaa !28
  %3654 = zext i16 %3653 to i32
  %3655 = sub nsw i32 16, %3654
  %3656 = icmp sgt i32 %3418, %3655
  %3657 = load i16, ptr %3414, align 4, !tbaa !28
  %3658 = zext i16 %3657 to i32
  %3659 = shl i32 %3658, %3418
  %3660 = trunc i32 %3659 to i16
  %3661 = or i16 %3417, %3660
  store i16 %3661, ptr %3338, align 8, !tbaa !25
  br i1 %3656, label %3662, label %3693

3662:                                             ; preds = %3652
  %3663 = load i64, ptr %3339, align 8, !tbaa !33
  %3664 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3663, i64 1), !nosanitize !32
  %3665 = extractvalue { i64, i1 } %3664, 1, !nosanitize !32
  br i1 %3665, label %3666, label %3667, !prof !34, !nosanitize !32

3666:                                             ; preds = %3662
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3667:                                             ; preds = %3662
  %3668 = extractvalue { i64, i1 } %3664, 0, !nosanitize !32
  %3669 = load ptr, ptr %3340, align 8, !tbaa !35
  %3670 = trunc i16 %3661 to i8
  store i64 %3668, ptr %3339, align 8, !tbaa !33
  %3671 = getelementptr inbounds nuw i8, ptr %3669, i64 %3663
  store i8 %3670, ptr %3671, align 1, !tbaa !28
  %3672 = load i64, ptr %3339, align 8, !tbaa !33
  %3673 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3672, i64 1), !nosanitize !32
  %3674 = extractvalue { i64, i1 } %3673, 1, !nosanitize !32
  br i1 %3674, label %3675, label %3676, !prof !34, !nosanitize !32

3675:                                             ; preds = %3686, %3667
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3676:                                             ; preds = %3667
  %3677 = extractvalue { i64, i1 } %3673, 0, !nosanitize !32
  %3678 = load ptr, ptr %3340, align 8, !tbaa !35
  %3679 = load i16, ptr %3338, align 8, !tbaa !25
  %3680 = lshr i16 %3679, 8
  %3681 = trunc nuw i16 %3680 to i8
  store i64 %3677, ptr %3339, align 8, !tbaa !33
  %3682 = getelementptr inbounds nuw i8, ptr %3678, i64 %3672
  store i8 %3681, ptr %3682, align 1, !tbaa !28
  %3683 = load i32, ptr %2675, align 4, !tbaa !26
  %3684 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3683), !nosanitize !32
  %3685 = extractvalue { i32, i1 } %3684, 1, !nosanitize !32
  br i1 %3685, label %3458, label %3686, !prof !34, !nosanitize !32

3686:                                             ; preds = %3676
  %3687 = extractvalue { i32, i1 } %3684, 0, !nosanitize !32
  %3688 = lshr i32 %3658, %3687
  %3689 = trunc nuw i32 %3688 to i16
  store i16 %3689, ptr %3338, align 8, !tbaa !25
  %3690 = add nsw i32 %3654, -16
  %3691 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3683, i32 %3690), !nosanitize !32
  %3692 = extractvalue { i32, i1 } %3691, 1, !nosanitize !32
  br i1 %3692, label %3675, label %3696, !prof !34, !nosanitize !32

3693:                                             ; preds = %3652
  %3694 = add nsw i32 %3418, %3654
  %3695 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3694, 0
  br label %3696

3696:                                             ; preds = %3693, %3686
  %3697 = phi i16 [ %3689, %3686 ], [ %3661, %3693 ]
  %3698 = phi { i32, i1 } [ %3691, %3686 ], [ %3695, %3693 ]
  %3699 = extractvalue { i32, i1 } %3698, 0
  store i32 %3699, ptr %2675, align 4, !tbaa !26
  %3700 = icmp sgt i32 %3699, 13
  %3701 = add nsw i32 %3422, 65534
  br i1 %3700, label %3702, label %3736

3702:                                             ; preds = %3696
  %3703 = and i32 %3701, 65535
  %3704 = shl i32 %3701, %3699
  %3705 = trunc i32 %3704 to i16
  %3706 = or i16 %3697, %3705
  store i16 %3706, ptr %3338, align 8, !tbaa !25
  %3707 = load i64, ptr %3339, align 8, !tbaa !33
  %3708 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3707, i64 1), !nosanitize !32
  %3709 = extractvalue { i64, i1 } %3708, 1, !nosanitize !32
  br i1 %3709, label %3710, label %3711, !prof !34, !nosanitize !32

3710:                                             ; preds = %3702
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3711:                                             ; preds = %3702
  %3712 = extractvalue { i64, i1 } %3708, 0, !nosanitize !32
  %3713 = load ptr, ptr %3340, align 8, !tbaa !35
  %3714 = trunc i16 %3706 to i8
  store i64 %3712, ptr %3339, align 8, !tbaa !33
  %3715 = getelementptr inbounds nuw i8, ptr %3713, i64 %3707
  store i8 %3714, ptr %3715, align 1, !tbaa !28
  %3716 = load i64, ptr %3339, align 8, !tbaa !33
  %3717 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3716, i64 1), !nosanitize !32
  %3718 = extractvalue { i64, i1 } %3717, 1, !nosanitize !32
  br i1 %3718, label %3719, label %3720, !prof !34, !nosanitize !32

3719:                                             ; preds = %3730, %3711
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3720:                                             ; preds = %3711
  %3721 = extractvalue { i64, i1 } %3717, 0, !nosanitize !32
  %3722 = load ptr, ptr %3340, align 8, !tbaa !35
  %3723 = load i16, ptr %3338, align 8, !tbaa !25
  %3724 = lshr i16 %3723, 8
  %3725 = trunc nuw i16 %3724 to i8
  store i64 %3721, ptr %3339, align 8, !tbaa !33
  %3726 = getelementptr inbounds nuw i8, ptr %3722, i64 %3716
  store i8 %3725, ptr %3726, align 1, !tbaa !28
  %3727 = load i32, ptr %2675, align 4, !tbaa !26
  %3728 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3727), !nosanitize !32
  %3729 = extractvalue { i32, i1 } %3728, 1, !nosanitize !32
  br i1 %3729, label %3458, label %3730, !prof !34, !nosanitize !32

3730:                                             ; preds = %3720
  %3731 = extractvalue { i32, i1 } %3728, 0, !nosanitize !32
  %3732 = lshr i32 %3703, %3731
  %3733 = trunc nuw i32 %3732 to i16
  store i16 %3733, ptr %3338, align 8, !tbaa !25
  %3734 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3727, i32 -13), !nosanitize !32
  %3735 = extractvalue { i32, i1 } %3734, 1, !nosanitize !32
  br i1 %3735, label %3719, label %3832, !prof !34, !nosanitize !32

3736:                                             ; preds = %3696
  %3737 = shl i32 %3701, %3699
  %3738 = trunc i32 %3737 to i16
  %3739 = or i16 %3697, %3738
  store i16 %3739, ptr %3338, align 8, !tbaa !25
  %3740 = add nsw i32 %3699, 3
  %3741 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3740, 0
  br label %3832

3742:                                             ; preds = %3650
  %3743 = load i16, ptr %3413, align 2, !tbaa !28
  %3744 = zext i16 %3743 to i32
  %3745 = sub nsw i32 16, %3744
  %3746 = icmp sgt i32 %3418, %3745
  %3747 = load i16, ptr %3412, align 4, !tbaa !28
  %3748 = zext i16 %3747 to i32
  %3749 = shl i32 %3748, %3418
  %3750 = trunc i32 %3749 to i16
  %3751 = or i16 %3417, %3750
  store i16 %3751, ptr %3338, align 8, !tbaa !25
  br i1 %3746, label %3752, label %3783

3752:                                             ; preds = %3742
  %3753 = load i64, ptr %3339, align 8, !tbaa !33
  %3754 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3753, i64 1), !nosanitize !32
  %3755 = extractvalue { i64, i1 } %3754, 1, !nosanitize !32
  br i1 %3755, label %3756, label %3757, !prof !34, !nosanitize !32

3756:                                             ; preds = %3752
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3757:                                             ; preds = %3752
  %3758 = extractvalue { i64, i1 } %3754, 0, !nosanitize !32
  %3759 = load ptr, ptr %3340, align 8, !tbaa !35
  %3760 = trunc i16 %3751 to i8
  store i64 %3758, ptr %3339, align 8, !tbaa !33
  %3761 = getelementptr inbounds nuw i8, ptr %3759, i64 %3753
  store i8 %3760, ptr %3761, align 1, !tbaa !28
  %3762 = load i64, ptr %3339, align 8, !tbaa !33
  %3763 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3762, i64 1), !nosanitize !32
  %3764 = extractvalue { i64, i1 } %3763, 1, !nosanitize !32
  br i1 %3764, label %3765, label %3766, !prof !34, !nosanitize !32

3765:                                             ; preds = %3776, %3757
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3766:                                             ; preds = %3757
  %3767 = extractvalue { i64, i1 } %3763, 0, !nosanitize !32
  %3768 = load ptr, ptr %3340, align 8, !tbaa !35
  %3769 = load i16, ptr %3338, align 8, !tbaa !25
  %3770 = lshr i16 %3769, 8
  %3771 = trunc nuw i16 %3770 to i8
  store i64 %3767, ptr %3339, align 8, !tbaa !33
  %3772 = getelementptr inbounds nuw i8, ptr %3768, i64 %3762
  store i8 %3771, ptr %3772, align 1, !tbaa !28
  %3773 = load i32, ptr %2675, align 4, !tbaa !26
  %3774 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3773), !nosanitize !32
  %3775 = extractvalue { i32, i1 } %3774, 1, !nosanitize !32
  br i1 %3775, label %3458, label %3776, !prof !34, !nosanitize !32

3776:                                             ; preds = %3766
  %3777 = extractvalue { i32, i1 } %3774, 0, !nosanitize !32
  %3778 = lshr i32 %3748, %3777
  %3779 = trunc nuw i32 %3778 to i16
  store i16 %3779, ptr %3338, align 8, !tbaa !25
  %3780 = add nsw i32 %3744, -16
  %3781 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3773, i32 %3780), !nosanitize !32
  %3782 = extractvalue { i32, i1 } %3781, 1, !nosanitize !32
  br i1 %3782, label %3765, label %3786, !prof !34, !nosanitize !32

3783:                                             ; preds = %3742
  %3784 = add nsw i32 %3418, %3744
  %3785 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3784, 0
  br label %3786

3786:                                             ; preds = %3783, %3776
  %3787 = phi i16 [ %3779, %3776 ], [ %3751, %3783 ]
  %3788 = phi { i32, i1 } [ %3781, %3776 ], [ %3785, %3783 ]
  %3789 = extractvalue { i32, i1 } %3788, 0
  store i32 %3789, ptr %2675, align 4, !tbaa !26
  %3790 = icmp sgt i32 %3789, 9
  %3791 = add nuw i32 %3422, 65526
  br i1 %3790, label %3792, label %3826

3792:                                             ; preds = %3786
  %3793 = and i32 %3791, 65535
  %3794 = shl i32 %3791, %3789
  %3795 = trunc i32 %3794 to i16
  %3796 = or i16 %3787, %3795
  store i16 %3796, ptr %3338, align 8, !tbaa !25
  %3797 = load i64, ptr %3339, align 8, !tbaa !33
  %3798 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3797, i64 1), !nosanitize !32
  %3799 = extractvalue { i64, i1 } %3798, 1, !nosanitize !32
  br i1 %3799, label %3800, label %3801, !prof !34, !nosanitize !32

3800:                                             ; preds = %3792
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3801:                                             ; preds = %3792
  %3802 = extractvalue { i64, i1 } %3798, 0, !nosanitize !32
  %3803 = load ptr, ptr %3340, align 8, !tbaa !35
  %3804 = trunc i16 %3796 to i8
  store i64 %3802, ptr %3339, align 8, !tbaa !33
  %3805 = getelementptr inbounds nuw i8, ptr %3803, i64 %3797
  store i8 %3804, ptr %3805, align 1, !tbaa !28
  %3806 = load i64, ptr %3339, align 8, !tbaa !33
  %3807 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3806, i64 1), !nosanitize !32
  %3808 = extractvalue { i64, i1 } %3807, 1, !nosanitize !32
  br i1 %3808, label %3809, label %3810, !prof !34, !nosanitize !32

3809:                                             ; preds = %3820, %3801
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3810:                                             ; preds = %3801
  %3811 = extractvalue { i64, i1 } %3807, 0, !nosanitize !32
  %3812 = load ptr, ptr %3340, align 8, !tbaa !35
  %3813 = load i16, ptr %3338, align 8, !tbaa !25
  %3814 = lshr i16 %3813, 8
  %3815 = trunc nuw i16 %3814 to i8
  store i64 %3811, ptr %3339, align 8, !tbaa !33
  %3816 = getelementptr inbounds nuw i8, ptr %3812, i64 %3806
  store i8 %3815, ptr %3816, align 1, !tbaa !28
  %3817 = load i32, ptr %2675, align 4, !tbaa !26
  %3818 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3817), !nosanitize !32
  %3819 = extractvalue { i32, i1 } %3818, 1, !nosanitize !32
  br i1 %3819, label %3458, label %3820, !prof !34, !nosanitize !32

3820:                                             ; preds = %3810
  %3821 = extractvalue { i32, i1 } %3818, 0, !nosanitize !32
  %3822 = lshr i32 %3793, %3821
  %3823 = trunc nuw i32 %3822 to i16
  store i16 %3823, ptr %3338, align 8, !tbaa !25
  %3824 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3817, i32 -9), !nosanitize !32
  %3825 = extractvalue { i32, i1 } %3824, 1, !nosanitize !32
  br i1 %3825, label %3809, label %3832, !prof !34, !nosanitize !32

3826:                                             ; preds = %3786
  %3827 = shl i32 %3791, %3789
  %3828 = trunc i32 %3827 to i16
  %3829 = or i16 %3787, %3828
  store i16 %3829, ptr %3338, align 8, !tbaa !25
  %3830 = add nsw i32 %3789, 7
  %3831 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3830, 0
  br label %3832

3832:                                             ; preds = %3826, %3820, %3736, %3730, %3644, %3638
  %3833 = phi i16 [ %3641, %3638 ], [ %3647, %3644 ], [ %3733, %3730 ], [ %3739, %3736 ], [ %3823, %3820 ], [ %3829, %3826 ]
  %3834 = phi { i32, i1 } [ %3642, %3638 ], [ %3649, %3644 ], [ %3734, %3730 ], [ %3741, %3736 ], [ %3824, %3820 ], [ %3831, %3826 ]
  %3835 = extractvalue { i32, i1 } %3834, 0
  store i32 %3835, ptr %2675, align 4, !tbaa !26
  br label %3836

3836:                                             ; preds = %3499, %3832
  %3837 = phi i16 [ %3833, %3832 ], [ %3494, %3499 ]
  %3838 = phi i32 [ %3835, %3832 ], [ %3496, %3499 ]
  %3839 = icmp eq i16 %3433, 0
  br i1 %3839, label %3843, label %3840

3840:                                             ; preds = %3836
  %3841 = select i1 %3437, i32 3, i32 4
  %3842 = select i1 %3437, i32 6, i32 7
  br label %3843

3843:                                             ; preds = %3840, %3836, %3429
  %3844 = phi i16 [ %3417, %3429 ], [ %3837, %3836 ], [ %3837, %3840 ]
  %3845 = phi i32 [ %3418, %3429 ], [ %3838, %3836 ], [ %3838, %3840 ]
  %3846 = phi i32 [ %3424, %3429 ], [ 3, %3836 ], [ %3841, %3840 ]
  %3847 = phi i32 [ %3423, %3429 ], [ 138, %3836 ], [ %3842, %3840 ]
  %3848 = phi i32 [ %3435, %3429 ], [ 0, %3836 ], [ 0, %3840 ]
  %3849 = phi i32 [ %3420, %3429 ], [ %3421, %3836 ], [ %3421, %3840 ]
  %3850 = icmp sgt i32 %3426, %3400
  br i1 %3850, label %3851, label %3416, !llvm.loop !82

3851:                                             ; preds = %3843, %3399
  %3852 = phi i16 [ %3391, %3399 ], [ %3844, %3843 ]
  %3853 = phi i32 [ %3393, %3399 ], [ %3845, %3843 ]
  br i1 %3235, label %3180, label %3854, !prof !34, !nosanitize !32

3854:                                             ; preds = %3851
  %3855 = extractvalue { i32, i1 } %3234, 0, !nosanitize !32
  %3856 = icmp slt i32 %3855, 0
  br i1 %3856, label %4306, label %3857

3857:                                             ; preds = %3854
  %3858 = getelementptr i8, ptr %0, i64 2506
  %3859 = load i16, ptr %3858, align 2, !tbaa !28
  %3860 = icmp eq i16 %3859, 0
  %3861 = select i1 %3860, i32 138, i32 7
  %3862 = select i1 %3860, i32 3, i32 4
  %3863 = zext i16 %3859 to i32
  %3864 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  %3865 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %3866 = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %3867 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %3868 = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %3869 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %3870 = getelementptr inbounds nuw i8, ptr %0, i64 2818
  br label %3871

3871:                                             ; preds = %4298, %3857
  %3872 = phi i16 [ %3852, %3857 ], [ %4299, %4298 ]
  %3873 = phi i32 [ %3853, %3857 ], [ %4300, %4298 ]
  %3874 = phi i32 [ 0, %3857 ], [ %3881, %4298 ]
  %3875 = phi i32 [ -1, %3857 ], [ %4304, %4298 ]
  %3876 = phi i32 [ %3863, %3857 ], [ %3889, %4298 ]
  %3877 = phi i32 [ 0, %3857 ], [ %4303, %4298 ]
  %3878 = phi i32 [ %3861, %3857 ], [ %4302, %4298 ]
  %3879 = phi i32 [ %3862, %3857 ], [ %4301, %4298 ]
  %3880 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3874, i32 1), !nosanitize !32
  %3881 = extractvalue { i32, i1 } %3880, 0, !nosanitize !32
  %3882 = extractvalue { i32, i1 } %3880, 1, !nosanitize !32
  br i1 %3882, label %3883, label %3884, !prof !34, !nosanitize !32

3883:                                             ; preds = %3871
  tail call void @llvm.ubsantrap(i8 0) #8, !nosanitize !32
  unreachable, !nosanitize !32

3884:                                             ; preds = %3871
  %3885 = sext i32 %3881 to i64
  %3886 = shl nsw i64 %3885, 2
  %3887 = getelementptr i8, ptr %3858, i64 %3886
  %3888 = load i16, ptr %3887, align 2, !tbaa !28
  %3889 = zext i16 %3888 to i32
  %3890 = add nsw i32 %3877, 1
  %3891 = icmp slt i32 %3890, %3878
  %3892 = icmp eq i32 %3876, %3889
  %3893 = select i1 %3891, i1 %3892, i1 false
  br i1 %3893, label %4298, label %3894

3894:                                             ; preds = %3884
  %3895 = icmp slt i32 %3890, %3879
  br i1 %3895, label %3896, label %3957

3896:                                             ; preds = %3894
  %3897 = zext nneg i32 %3876 to i64
  %3898 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %3864, i64 0, i64 %3897
  %3899 = getelementptr inbounds nuw i8, ptr %3898, i64 2
  br label %3900

3900:                                             ; preds = %3954, %3896
  %3901 = phi i16 [ %3949, %3954 ], [ %3872, %3896 ]
  %3902 = phi i32 [ %3951, %3954 ], [ %3873, %3896 ]
  %3903 = phi i32 [ %3955, %3954 ], [ %3890, %3896 ]
  %3904 = load i16, ptr %3899, align 2, !tbaa !28
  %3905 = zext i16 %3904 to i32
  %3906 = sub nsw i32 16, %3905
  %3907 = icmp sgt i32 %3902, %3906
  %3908 = load i16, ptr %3898, align 4, !tbaa !28
  %3909 = zext i16 %3908 to i32
  %3910 = shl i32 %3909, %3902
  %3911 = trunc i32 %3910 to i16
  %3912 = or i16 %3901, %3911
  store i16 %3912, ptr %3338, align 8, !tbaa !25
  br i1 %3907, label %3914, label %3945

3913:                                             ; preds = %4265, %4221, %4175, %4131, %4083, %4039, %3988, %3948, %3928
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

3914:                                             ; preds = %3900
  %3915 = load i64, ptr %3339, align 8, !tbaa !33
  %3916 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3915, i64 1), !nosanitize !32
  %3917 = extractvalue { i64, i1 } %3916, 1, !nosanitize !32
  br i1 %3917, label %3918, label %3919, !prof !34, !nosanitize !32

3918:                                             ; preds = %3914
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3919:                                             ; preds = %3914
  %3920 = extractvalue { i64, i1 } %3916, 0, !nosanitize !32
  %3921 = load ptr, ptr %3340, align 8, !tbaa !35
  %3922 = trunc i16 %3912 to i8
  store i64 %3920, ptr %3339, align 8, !tbaa !33
  %3923 = getelementptr inbounds nuw i8, ptr %3921, i64 %3915
  store i8 %3922, ptr %3923, align 1, !tbaa !28
  %3924 = load i64, ptr %3339, align 8, !tbaa !33
  %3925 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3924, i64 1), !nosanitize !32
  %3926 = extractvalue { i64, i1 } %3925, 1, !nosanitize !32
  br i1 %3926, label %3927, label %3928, !prof !34, !nosanitize !32

3927:                                             ; preds = %3938, %3919
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3928:                                             ; preds = %3919
  %3929 = extractvalue { i64, i1 } %3925, 0, !nosanitize !32
  %3930 = load ptr, ptr %3340, align 8, !tbaa !35
  %3931 = load i16, ptr %3338, align 8, !tbaa !25
  %3932 = lshr i16 %3931, 8
  %3933 = trunc nuw i16 %3932 to i8
  store i64 %3929, ptr %3339, align 8, !tbaa !33
  %3934 = getelementptr inbounds nuw i8, ptr %3930, i64 %3924
  store i8 %3933, ptr %3934, align 1, !tbaa !28
  %3935 = load i32, ptr %2675, align 4, !tbaa !26
  %3936 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3935), !nosanitize !32
  %3937 = extractvalue { i32, i1 } %3936, 1, !nosanitize !32
  br i1 %3937, label %3913, label %3938, !prof !34, !nosanitize !32

3938:                                             ; preds = %3928
  %3939 = extractvalue { i32, i1 } %3936, 0, !nosanitize !32
  %3940 = lshr i32 %3909, %3939
  %3941 = trunc nuw i32 %3940 to i16
  store i16 %3941, ptr %3338, align 8, !tbaa !25
  %3942 = add nsw i32 %3905, -16
  %3943 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3935, i32 %3942), !nosanitize !32
  %3944 = extractvalue { i32, i1 } %3943, 1, !nosanitize !32
  br i1 %3944, label %3927, label %3948, !prof !34, !nosanitize !32

3945:                                             ; preds = %3900
  %3946 = add nsw i32 %3902, %3905
  %3947 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %3946, 0
  br label %3948

3948:                                             ; preds = %3945, %3938
  %3949 = phi i16 [ %3941, %3938 ], [ %3912, %3945 ]
  %3950 = phi { i32, i1 } [ %3943, %3938 ], [ %3947, %3945 ]
  %3951 = extractvalue { i32, i1 } %3950, 0
  store i32 %3951, ptr %2675, align 4, !tbaa !26
  %3952 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3903, i32 -1)
  %3953 = extractvalue { i32, i1 } %3952, 1, !nosanitize !32
  br i1 %3953, label %3913, label %3954, !prof !34, !nosanitize !32

3954:                                             ; preds = %3948
  %3955 = extractvalue { i32, i1 } %3952, 0, !nosanitize !32
  %3956 = icmp eq i32 %3955, 0
  br i1 %3956, label %4291, label %3900, !llvm.loop !81

3957:                                             ; preds = %3894
  %3958 = icmp eq i32 %3876, 0
  br i1 %3958, label %4105, label %3959

3959:                                             ; preds = %3957
  %3960 = icmp eq i32 %3876, %3875
  br i1 %3960, label %4012, label %3961

3961:                                             ; preds = %3959
  %3962 = zext nneg i32 %3876 to i64
  %3963 = getelementptr inbounds nuw [39 x %struct.ct_data_s], ptr %3864, i64 0, i64 %3962
  %3964 = getelementptr inbounds nuw i8, ptr %3963, i64 2
  %3965 = load i16, ptr %3964, align 2, !tbaa !28
  %3966 = zext i16 %3965 to i32
  %3967 = sub nsw i32 16, %3966
  %3968 = icmp sgt i32 %3873, %3967
  %3969 = load i16, ptr %3963, align 4, !tbaa !28
  %3970 = zext i16 %3969 to i32
  %3971 = shl i32 %3970, %3873
  %3972 = trunc i32 %3971 to i16
  %3973 = or i16 %3872, %3972
  store i16 %3973, ptr %3338, align 8, !tbaa !25
  br i1 %3968, label %3974, label %4005

3974:                                             ; preds = %3961
  %3975 = load i64, ptr %3339, align 8, !tbaa !33
  %3976 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3975, i64 1), !nosanitize !32
  %3977 = extractvalue { i64, i1 } %3976, 1, !nosanitize !32
  br i1 %3977, label %3978, label %3979, !prof !34, !nosanitize !32

3978:                                             ; preds = %3974
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3979:                                             ; preds = %3974
  %3980 = extractvalue { i64, i1 } %3976, 0, !nosanitize !32
  %3981 = load ptr, ptr %3340, align 8, !tbaa !35
  %3982 = trunc i16 %3973 to i8
  store i64 %3980, ptr %3339, align 8, !tbaa !33
  %3983 = getelementptr inbounds nuw i8, ptr %3981, i64 %3975
  store i8 %3982, ptr %3983, align 1, !tbaa !28
  %3984 = load i64, ptr %3339, align 8, !tbaa !33
  %3985 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3984, i64 1), !nosanitize !32
  %3986 = extractvalue { i64, i1 } %3985, 1, !nosanitize !32
  br i1 %3986, label %3987, label %3988, !prof !34, !nosanitize !32

3987:                                             ; preds = %3998, %3979
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

3988:                                             ; preds = %3979
  %3989 = extractvalue { i64, i1 } %3985, 0, !nosanitize !32
  %3990 = load ptr, ptr %3340, align 8, !tbaa !35
  %3991 = load i16, ptr %3338, align 8, !tbaa !25
  %3992 = lshr i16 %3991, 8
  %3993 = trunc nuw i16 %3992 to i8
  store i64 %3989, ptr %3339, align 8, !tbaa !33
  %3994 = getelementptr inbounds nuw i8, ptr %3990, i64 %3984
  store i8 %3993, ptr %3994, align 1, !tbaa !28
  %3995 = load i32, ptr %2675, align 4, !tbaa !26
  %3996 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %3995), !nosanitize !32
  %3997 = extractvalue { i32, i1 } %3996, 1, !nosanitize !32
  br i1 %3997, label %3913, label %3998, !prof !34, !nosanitize !32

3998:                                             ; preds = %3988
  %3999 = extractvalue { i32, i1 } %3996, 0, !nosanitize !32
  %4000 = lshr i32 %3970, %3999
  %4001 = trunc nuw i32 %4000 to i16
  store i16 %4001, ptr %3338, align 8, !tbaa !25
  %4002 = add nsw i32 %3966, -16
  %4003 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3995, i32 %4002), !nosanitize !32
  %4004 = extractvalue { i32, i1 } %4003, 1, !nosanitize !32
  br i1 %4004, label %3987, label %4008, !prof !34, !nosanitize !32

4005:                                             ; preds = %3961
  %4006 = add nsw i32 %3873, %3966
  %4007 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4006, 0
  br label %4008

4008:                                             ; preds = %4005, %3998
  %4009 = phi i16 [ %4001, %3998 ], [ %3973, %4005 ]
  %4010 = phi { i32, i1 } [ %4003, %3998 ], [ %4007, %4005 ]
  %4011 = extractvalue { i32, i1 } %4010, 0
  store i32 %4011, ptr %2675, align 4, !tbaa !26
  br label %4012

4012:                                             ; preds = %4008, %3959
  %4013 = phi i16 [ %4009, %4008 ], [ %3872, %3959 ]
  %4014 = phi i32 [ %4011, %4008 ], [ %3873, %3959 ]
  %4015 = phi i32 [ %3877, %4008 ], [ %3890, %3959 ]
  %4016 = load i16, ptr %3866, align 2, !tbaa !28
  %4017 = zext i16 %4016 to i32
  %4018 = sub nsw i32 16, %4017
  %4019 = icmp sgt i32 %4014, %4018
  %4020 = load i16, ptr %3865, align 4, !tbaa !28
  %4021 = zext i16 %4020 to i32
  %4022 = shl i32 %4021, %4014
  %4023 = trunc i32 %4022 to i16
  %4024 = or i16 %4013, %4023
  store i16 %4024, ptr %3338, align 8, !tbaa !25
  br i1 %4019, label %4025, label %4056

4025:                                             ; preds = %4012
  %4026 = load i64, ptr %3339, align 8, !tbaa !33
  %4027 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4026, i64 1), !nosanitize !32
  %4028 = extractvalue { i64, i1 } %4027, 1, !nosanitize !32
  br i1 %4028, label %4029, label %4030, !prof !34, !nosanitize !32

4029:                                             ; preds = %4025
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4030:                                             ; preds = %4025
  %4031 = extractvalue { i64, i1 } %4027, 0, !nosanitize !32
  %4032 = load ptr, ptr %3340, align 8, !tbaa !35
  %4033 = trunc i16 %4024 to i8
  store i64 %4031, ptr %3339, align 8, !tbaa !33
  %4034 = getelementptr inbounds nuw i8, ptr %4032, i64 %4026
  store i8 %4033, ptr %4034, align 1, !tbaa !28
  %4035 = load i64, ptr %3339, align 8, !tbaa !33
  %4036 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4035, i64 1), !nosanitize !32
  %4037 = extractvalue { i64, i1 } %4036, 1, !nosanitize !32
  br i1 %4037, label %4038, label %4039, !prof !34, !nosanitize !32

4038:                                             ; preds = %4049, %4030
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4039:                                             ; preds = %4030
  %4040 = extractvalue { i64, i1 } %4036, 0, !nosanitize !32
  %4041 = load ptr, ptr %3340, align 8, !tbaa !35
  %4042 = load i16, ptr %3338, align 8, !tbaa !25
  %4043 = lshr i16 %4042, 8
  %4044 = trunc nuw i16 %4043 to i8
  store i64 %4040, ptr %3339, align 8, !tbaa !33
  %4045 = getelementptr inbounds nuw i8, ptr %4041, i64 %4035
  store i8 %4044, ptr %4045, align 1, !tbaa !28
  %4046 = load i32, ptr %2675, align 4, !tbaa !26
  %4047 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4046), !nosanitize !32
  %4048 = extractvalue { i32, i1 } %4047, 1, !nosanitize !32
  br i1 %4048, label %3913, label %4049, !prof !34, !nosanitize !32

4049:                                             ; preds = %4039
  %4050 = extractvalue { i32, i1 } %4047, 0, !nosanitize !32
  %4051 = lshr i32 %4021, %4050
  %4052 = trunc nuw i32 %4051 to i16
  store i16 %4052, ptr %3338, align 8, !tbaa !25
  %4053 = add nsw i32 %4017, -16
  %4054 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4046, i32 %4053), !nosanitize !32
  %4055 = extractvalue { i32, i1 } %4054, 1, !nosanitize !32
  br i1 %4055, label %4038, label %4059, !prof !34, !nosanitize !32

4056:                                             ; preds = %4012
  %4057 = add nsw i32 %4014, %4017
  %4058 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4057, 0
  br label %4059

4059:                                             ; preds = %4056, %4049
  %4060 = phi i16 [ %4052, %4049 ], [ %4024, %4056 ]
  %4061 = phi { i32, i1 } [ %4054, %4049 ], [ %4058, %4056 ]
  %4062 = extractvalue { i32, i1 } %4061, 0
  store i32 %4062, ptr %2675, align 4, !tbaa !26
  %4063 = icmp sgt i32 %4062, 14
  %4064 = add i32 %4015, 65533
  br i1 %4063, label %4065, label %4099

4065:                                             ; preds = %4059
  %4066 = and i32 %4064, 65535
  %4067 = shl i32 %4064, %4062
  %4068 = trunc i32 %4067 to i16
  %4069 = or i16 %4060, %4068
  store i16 %4069, ptr %3338, align 8, !tbaa !25
  %4070 = load i64, ptr %3339, align 8, !tbaa !33
  %4071 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4070, i64 1), !nosanitize !32
  %4072 = extractvalue { i64, i1 } %4071, 1, !nosanitize !32
  br i1 %4072, label %4073, label %4074, !prof !34, !nosanitize !32

4073:                                             ; preds = %4065
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4074:                                             ; preds = %4065
  %4075 = extractvalue { i64, i1 } %4071, 0, !nosanitize !32
  %4076 = load ptr, ptr %3340, align 8, !tbaa !35
  %4077 = trunc i16 %4069 to i8
  store i64 %4075, ptr %3339, align 8, !tbaa !33
  %4078 = getelementptr inbounds nuw i8, ptr %4076, i64 %4070
  store i8 %4077, ptr %4078, align 1, !tbaa !28
  %4079 = load i64, ptr %3339, align 8, !tbaa !33
  %4080 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4079, i64 1), !nosanitize !32
  %4081 = extractvalue { i64, i1 } %4080, 1, !nosanitize !32
  br i1 %4081, label %4082, label %4083, !prof !34, !nosanitize !32

4082:                                             ; preds = %4093, %4074
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4083:                                             ; preds = %4074
  %4084 = extractvalue { i64, i1 } %4080, 0, !nosanitize !32
  %4085 = load ptr, ptr %3340, align 8, !tbaa !35
  %4086 = load i16, ptr %3338, align 8, !tbaa !25
  %4087 = lshr i16 %4086, 8
  %4088 = trunc nuw i16 %4087 to i8
  store i64 %4084, ptr %3339, align 8, !tbaa !33
  %4089 = getelementptr inbounds nuw i8, ptr %4085, i64 %4079
  store i8 %4088, ptr %4089, align 1, !tbaa !28
  %4090 = load i32, ptr %2675, align 4, !tbaa !26
  %4091 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4090), !nosanitize !32
  %4092 = extractvalue { i32, i1 } %4091, 1, !nosanitize !32
  br i1 %4092, label %3913, label %4093, !prof !34, !nosanitize !32

4093:                                             ; preds = %4083
  %4094 = extractvalue { i32, i1 } %4091, 0, !nosanitize !32
  %4095 = lshr i32 %4066, %4094
  %4096 = trunc nuw i32 %4095 to i16
  store i16 %4096, ptr %3338, align 8, !tbaa !25
  %4097 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4090, i32 -14), !nosanitize !32
  %4098 = extractvalue { i32, i1 } %4097, 1, !nosanitize !32
  br i1 %4098, label %4082, label %4287, !prof !34, !nosanitize !32

4099:                                             ; preds = %4059
  %4100 = shl i32 %4064, %4062
  %4101 = trunc i32 %4100 to i16
  %4102 = or i16 %4060, %4101
  store i16 %4102, ptr %3338, align 8, !tbaa !25
  %4103 = add nsw i32 %4062, 2
  %4104 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4103, 0
  br label %4287

4105:                                             ; preds = %3957
  %4106 = icmp slt i32 %3877, 10
  br i1 %4106, label %4107, label %4197

4107:                                             ; preds = %4105
  %4108 = load i16, ptr %3870, align 2, !tbaa !28
  %4109 = zext i16 %4108 to i32
  %4110 = sub nsw i32 16, %4109
  %4111 = icmp sgt i32 %3873, %4110
  %4112 = load i16, ptr %3869, align 4, !tbaa !28
  %4113 = zext i16 %4112 to i32
  %4114 = shl i32 %4113, %3873
  %4115 = trunc i32 %4114 to i16
  %4116 = or i16 %3872, %4115
  store i16 %4116, ptr %3338, align 8, !tbaa !25
  br i1 %4111, label %4117, label %4148

4117:                                             ; preds = %4107
  %4118 = load i64, ptr %3339, align 8, !tbaa !33
  %4119 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4118, i64 1), !nosanitize !32
  %4120 = extractvalue { i64, i1 } %4119, 1, !nosanitize !32
  br i1 %4120, label %4121, label %4122, !prof !34, !nosanitize !32

4121:                                             ; preds = %4117
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4122:                                             ; preds = %4117
  %4123 = extractvalue { i64, i1 } %4119, 0, !nosanitize !32
  %4124 = load ptr, ptr %3340, align 8, !tbaa !35
  %4125 = trunc i16 %4116 to i8
  store i64 %4123, ptr %3339, align 8, !tbaa !33
  %4126 = getelementptr inbounds nuw i8, ptr %4124, i64 %4118
  store i8 %4125, ptr %4126, align 1, !tbaa !28
  %4127 = load i64, ptr %3339, align 8, !tbaa !33
  %4128 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4127, i64 1), !nosanitize !32
  %4129 = extractvalue { i64, i1 } %4128, 1, !nosanitize !32
  br i1 %4129, label %4130, label %4131, !prof !34, !nosanitize !32

4130:                                             ; preds = %4141, %4122
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4131:                                             ; preds = %4122
  %4132 = extractvalue { i64, i1 } %4128, 0, !nosanitize !32
  %4133 = load ptr, ptr %3340, align 8, !tbaa !35
  %4134 = load i16, ptr %3338, align 8, !tbaa !25
  %4135 = lshr i16 %4134, 8
  %4136 = trunc nuw i16 %4135 to i8
  store i64 %4132, ptr %3339, align 8, !tbaa !33
  %4137 = getelementptr inbounds nuw i8, ptr %4133, i64 %4127
  store i8 %4136, ptr %4137, align 1, !tbaa !28
  %4138 = load i32, ptr %2675, align 4, !tbaa !26
  %4139 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4138), !nosanitize !32
  %4140 = extractvalue { i32, i1 } %4139, 1, !nosanitize !32
  br i1 %4140, label %3913, label %4141, !prof !34, !nosanitize !32

4141:                                             ; preds = %4131
  %4142 = extractvalue { i32, i1 } %4139, 0, !nosanitize !32
  %4143 = lshr i32 %4113, %4142
  %4144 = trunc nuw i32 %4143 to i16
  store i16 %4144, ptr %3338, align 8, !tbaa !25
  %4145 = add nsw i32 %4109, -16
  %4146 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4138, i32 %4145), !nosanitize !32
  %4147 = extractvalue { i32, i1 } %4146, 1, !nosanitize !32
  br i1 %4147, label %4130, label %4151, !prof !34, !nosanitize !32

4148:                                             ; preds = %4107
  %4149 = add nsw i32 %3873, %4109
  %4150 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4149, 0
  br label %4151

4151:                                             ; preds = %4148, %4141
  %4152 = phi i16 [ %4144, %4141 ], [ %4116, %4148 ]
  %4153 = phi { i32, i1 } [ %4146, %4141 ], [ %4150, %4148 ]
  %4154 = extractvalue { i32, i1 } %4153, 0
  store i32 %4154, ptr %2675, align 4, !tbaa !26
  %4155 = icmp sgt i32 %4154, 13
  %4156 = add nsw i32 %3877, 65534
  br i1 %4155, label %4157, label %4191

4157:                                             ; preds = %4151
  %4158 = and i32 %4156, 65535
  %4159 = shl i32 %4156, %4154
  %4160 = trunc i32 %4159 to i16
  %4161 = or i16 %4152, %4160
  store i16 %4161, ptr %3338, align 8, !tbaa !25
  %4162 = load i64, ptr %3339, align 8, !tbaa !33
  %4163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4162, i64 1), !nosanitize !32
  %4164 = extractvalue { i64, i1 } %4163, 1, !nosanitize !32
  br i1 %4164, label %4165, label %4166, !prof !34, !nosanitize !32

4165:                                             ; preds = %4157
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4166:                                             ; preds = %4157
  %4167 = extractvalue { i64, i1 } %4163, 0, !nosanitize !32
  %4168 = load ptr, ptr %3340, align 8, !tbaa !35
  %4169 = trunc i16 %4161 to i8
  store i64 %4167, ptr %3339, align 8, !tbaa !33
  %4170 = getelementptr inbounds nuw i8, ptr %4168, i64 %4162
  store i8 %4169, ptr %4170, align 1, !tbaa !28
  %4171 = load i64, ptr %3339, align 8, !tbaa !33
  %4172 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4171, i64 1), !nosanitize !32
  %4173 = extractvalue { i64, i1 } %4172, 1, !nosanitize !32
  br i1 %4173, label %4174, label %4175, !prof !34, !nosanitize !32

4174:                                             ; preds = %4185, %4166
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4175:                                             ; preds = %4166
  %4176 = extractvalue { i64, i1 } %4172, 0, !nosanitize !32
  %4177 = load ptr, ptr %3340, align 8, !tbaa !35
  %4178 = load i16, ptr %3338, align 8, !tbaa !25
  %4179 = lshr i16 %4178, 8
  %4180 = trunc nuw i16 %4179 to i8
  store i64 %4176, ptr %3339, align 8, !tbaa !33
  %4181 = getelementptr inbounds nuw i8, ptr %4177, i64 %4171
  store i8 %4180, ptr %4181, align 1, !tbaa !28
  %4182 = load i32, ptr %2675, align 4, !tbaa !26
  %4183 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4182), !nosanitize !32
  %4184 = extractvalue { i32, i1 } %4183, 1, !nosanitize !32
  br i1 %4184, label %3913, label %4185, !prof !34, !nosanitize !32

4185:                                             ; preds = %4175
  %4186 = extractvalue { i32, i1 } %4183, 0, !nosanitize !32
  %4187 = lshr i32 %4158, %4186
  %4188 = trunc nuw i32 %4187 to i16
  store i16 %4188, ptr %3338, align 8, !tbaa !25
  %4189 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4182, i32 -13), !nosanitize !32
  %4190 = extractvalue { i32, i1 } %4189, 1, !nosanitize !32
  br i1 %4190, label %4174, label %4287, !prof !34, !nosanitize !32

4191:                                             ; preds = %4151
  %4192 = shl i32 %4156, %4154
  %4193 = trunc i32 %4192 to i16
  %4194 = or i16 %4152, %4193
  store i16 %4194, ptr %3338, align 8, !tbaa !25
  %4195 = add nsw i32 %4154, 3
  %4196 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4195, 0
  br label %4287

4197:                                             ; preds = %4105
  %4198 = load i16, ptr %3868, align 2, !tbaa !28
  %4199 = zext i16 %4198 to i32
  %4200 = sub nsw i32 16, %4199
  %4201 = icmp sgt i32 %3873, %4200
  %4202 = load i16, ptr %3867, align 4, !tbaa !28
  %4203 = zext i16 %4202 to i32
  %4204 = shl i32 %4203, %3873
  %4205 = trunc i32 %4204 to i16
  %4206 = or i16 %3872, %4205
  store i16 %4206, ptr %3338, align 8, !tbaa !25
  br i1 %4201, label %4207, label %4238

4207:                                             ; preds = %4197
  %4208 = load i64, ptr %3339, align 8, !tbaa !33
  %4209 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4208, i64 1), !nosanitize !32
  %4210 = extractvalue { i64, i1 } %4209, 1, !nosanitize !32
  br i1 %4210, label %4211, label %4212, !prof !34, !nosanitize !32

4211:                                             ; preds = %4207
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4212:                                             ; preds = %4207
  %4213 = extractvalue { i64, i1 } %4209, 0, !nosanitize !32
  %4214 = load ptr, ptr %3340, align 8, !tbaa !35
  %4215 = trunc i16 %4206 to i8
  store i64 %4213, ptr %3339, align 8, !tbaa !33
  %4216 = getelementptr inbounds nuw i8, ptr %4214, i64 %4208
  store i8 %4215, ptr %4216, align 1, !tbaa !28
  %4217 = load i64, ptr %3339, align 8, !tbaa !33
  %4218 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4217, i64 1), !nosanitize !32
  %4219 = extractvalue { i64, i1 } %4218, 1, !nosanitize !32
  br i1 %4219, label %4220, label %4221, !prof !34, !nosanitize !32

4220:                                             ; preds = %4231, %4212
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4221:                                             ; preds = %4212
  %4222 = extractvalue { i64, i1 } %4218, 0, !nosanitize !32
  %4223 = load ptr, ptr %3340, align 8, !tbaa !35
  %4224 = load i16, ptr %3338, align 8, !tbaa !25
  %4225 = lshr i16 %4224, 8
  %4226 = trunc nuw i16 %4225 to i8
  store i64 %4222, ptr %3339, align 8, !tbaa !33
  %4227 = getelementptr inbounds nuw i8, ptr %4223, i64 %4217
  store i8 %4226, ptr %4227, align 1, !tbaa !28
  %4228 = load i32, ptr %2675, align 4, !tbaa !26
  %4229 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4228), !nosanitize !32
  %4230 = extractvalue { i32, i1 } %4229, 1, !nosanitize !32
  br i1 %4230, label %3913, label %4231, !prof !34, !nosanitize !32

4231:                                             ; preds = %4221
  %4232 = extractvalue { i32, i1 } %4229, 0, !nosanitize !32
  %4233 = lshr i32 %4203, %4232
  %4234 = trunc nuw i32 %4233 to i16
  store i16 %4234, ptr %3338, align 8, !tbaa !25
  %4235 = add nsw i32 %4199, -16
  %4236 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4228, i32 %4235), !nosanitize !32
  %4237 = extractvalue { i32, i1 } %4236, 1, !nosanitize !32
  br i1 %4237, label %4220, label %4241, !prof !34, !nosanitize !32

4238:                                             ; preds = %4197
  %4239 = add nsw i32 %3873, %4199
  %4240 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4239, 0
  br label %4241

4241:                                             ; preds = %4238, %4231
  %4242 = phi i16 [ %4234, %4231 ], [ %4206, %4238 ]
  %4243 = phi { i32, i1 } [ %4236, %4231 ], [ %4240, %4238 ]
  %4244 = extractvalue { i32, i1 } %4243, 0
  store i32 %4244, ptr %2675, align 4, !tbaa !26
  %4245 = icmp sgt i32 %4244, 9
  %4246 = add nuw i32 %3877, 65526
  br i1 %4245, label %4247, label %4281

4247:                                             ; preds = %4241
  %4248 = and i32 %4246, 65535
  %4249 = shl i32 %4246, %4244
  %4250 = trunc i32 %4249 to i16
  %4251 = or i16 %4242, %4250
  store i16 %4251, ptr %3338, align 8, !tbaa !25
  %4252 = load i64, ptr %3339, align 8, !tbaa !33
  %4253 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4252, i64 1), !nosanitize !32
  %4254 = extractvalue { i64, i1 } %4253, 1, !nosanitize !32
  br i1 %4254, label %4255, label %4256, !prof !34, !nosanitize !32

4255:                                             ; preds = %4247
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4256:                                             ; preds = %4247
  %4257 = extractvalue { i64, i1 } %4253, 0, !nosanitize !32
  %4258 = load ptr, ptr %3340, align 8, !tbaa !35
  %4259 = trunc i16 %4251 to i8
  store i64 %4257, ptr %3339, align 8, !tbaa !33
  %4260 = getelementptr inbounds nuw i8, ptr %4258, i64 %4252
  store i8 %4259, ptr %4260, align 1, !tbaa !28
  %4261 = load i64, ptr %3339, align 8, !tbaa !33
  %4262 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4261, i64 1), !nosanitize !32
  %4263 = extractvalue { i64, i1 } %4262, 1, !nosanitize !32
  br i1 %4263, label %4264, label %4265, !prof !34, !nosanitize !32

4264:                                             ; preds = %4275, %4256
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4265:                                             ; preds = %4256
  %4266 = extractvalue { i64, i1 } %4262, 0, !nosanitize !32
  %4267 = load ptr, ptr %3340, align 8, !tbaa !35
  %4268 = load i16, ptr %3338, align 8, !tbaa !25
  %4269 = lshr i16 %4268, 8
  %4270 = trunc nuw i16 %4269 to i8
  store i64 %4266, ptr %3339, align 8, !tbaa !33
  %4271 = getelementptr inbounds nuw i8, ptr %4267, i64 %4261
  store i8 %4270, ptr %4271, align 1, !tbaa !28
  %4272 = load i32, ptr %2675, align 4, !tbaa !26
  %4273 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4272), !nosanitize !32
  %4274 = extractvalue { i32, i1 } %4273, 1, !nosanitize !32
  br i1 %4274, label %3913, label %4275, !prof !34, !nosanitize !32

4275:                                             ; preds = %4265
  %4276 = extractvalue { i32, i1 } %4273, 0, !nosanitize !32
  %4277 = lshr i32 %4248, %4276
  %4278 = trunc nuw i32 %4277 to i16
  store i16 %4278, ptr %3338, align 8, !tbaa !25
  %4279 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4272, i32 -9), !nosanitize !32
  %4280 = extractvalue { i32, i1 } %4279, 1, !nosanitize !32
  br i1 %4280, label %4264, label %4287, !prof !34, !nosanitize !32

4281:                                             ; preds = %4241
  %4282 = shl i32 %4246, %4244
  %4283 = trunc i32 %4282 to i16
  %4284 = or i16 %4242, %4283
  store i16 %4284, ptr %3338, align 8, !tbaa !25
  %4285 = add nsw i32 %4244, 7
  %4286 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4285, 0
  br label %4287

4287:                                             ; preds = %4281, %4275, %4191, %4185, %4099, %4093
  %4288 = phi i16 [ %4096, %4093 ], [ %4102, %4099 ], [ %4188, %4185 ], [ %4194, %4191 ], [ %4278, %4275 ], [ %4284, %4281 ]
  %4289 = phi { i32, i1 } [ %4097, %4093 ], [ %4104, %4099 ], [ %4189, %4185 ], [ %4196, %4191 ], [ %4279, %4275 ], [ %4286, %4281 ]
  %4290 = extractvalue { i32, i1 } %4289, 0
  store i32 %4290, ptr %2675, align 4, !tbaa !26
  br label %4291

4291:                                             ; preds = %3954, %4287
  %4292 = phi i16 [ %4288, %4287 ], [ %3949, %3954 ]
  %4293 = phi i32 [ %4290, %4287 ], [ %3951, %3954 ]
  %4294 = icmp eq i16 %3888, 0
  br i1 %4294, label %4298, label %4295

4295:                                             ; preds = %4291
  %4296 = select i1 %3892, i32 3, i32 4
  %4297 = select i1 %3892, i32 6, i32 7
  br label %4298

4298:                                             ; preds = %4295, %4291, %3884
  %4299 = phi i16 [ %3872, %3884 ], [ %4292, %4291 ], [ %4292, %4295 ]
  %4300 = phi i32 [ %3873, %3884 ], [ %4293, %4291 ], [ %4293, %4295 ]
  %4301 = phi i32 [ %3879, %3884 ], [ 3, %4291 ], [ %4296, %4295 ]
  %4302 = phi i32 [ %3878, %3884 ], [ 138, %4291 ], [ %4297, %4295 ]
  %4303 = phi i32 [ %3890, %3884 ], [ 0, %4291 ], [ 0, %4295 ]
  %4304 = phi i32 [ %3875, %3884 ], [ %3876, %4291 ], [ %3876, %4295 ]
  %4305 = icmp sgt i32 %3881, %3855
  br i1 %4305, label %4306, label %3871, !llvm.loop !82

4306:                                             ; preds = %4298, %3854
  %4307 = phi i16 [ %3852, %3854 ], [ %4299, %4298 ]
  %4308 = phi i32 [ %3853, %3854 ], [ %4300, %4298 ]
  %4309 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %4310 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %4311 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %4312 = load i32, ptr %4311, align 4, !tbaa !31
  %4313 = icmp eq i32 %4312, 0
  br i1 %4313, label %4644, label %4314

4314:                                             ; preds = %4306
  %4315 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  br label %4316

4316:                                             ; preds = %4639, %4314
  %4317 = phi i16 [ %4640, %4639 ], [ %4307, %4314 ]
  %4318 = phi i32 [ %4641, %4639 ], [ %4308, %4314 ]
  %4319 = phi i32 [ %4338, %4639 ], [ 0, %4314 ]
  %4320 = load ptr, ptr %4315, align 8, !tbaa !78
  %4321 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4319, i32 2)
  %4322 = extractvalue { i32, i1 } %4321, 0, !nosanitize !32
  %4323 = extractvalue { i32, i1 } %4321, 1, !nosanitize !32
  br i1 %4323, label %4324, label %4325, !prof !34, !nosanitize !32

4324:                                             ; preds = %4316
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4325:                                             ; preds = %4316
  %4326 = add nuw i32 %4319, 1
  %4327 = zext i32 %4319 to i64
  %4328 = getelementptr inbounds nuw i8, ptr %4320, i64 %4327
  %4329 = load i8, ptr %4328, align 1, !tbaa !28
  %4330 = zext i8 %4329 to i32
  %4331 = zext i32 %4326 to i64
  %4332 = getelementptr inbounds nuw i8, ptr %4320, i64 %4331
  %4333 = load i8, ptr %4332, align 1, !tbaa !28
  %4334 = zext i8 %4333 to i32
  %4335 = shl nuw nsw i32 %4334, 8
  %4336 = or disjoint i32 %4335, %4330
  %4337 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4322, i32 1), !nosanitize !32
  %4338 = extractvalue { i32, i1 } %4337, 0, !nosanitize !32
  %4339 = extractvalue { i32, i1 } %4337, 1, !nosanitize !32
  br i1 %4339, label %4340, label %4341, !prof !34, !nosanitize !32

4340:                                             ; preds = %4325
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4341:                                             ; preds = %4325
  %4342 = zext i32 %4322 to i64
  %4343 = getelementptr inbounds nuw i8, ptr %4320, i64 %4342
  %4344 = load i8, ptr %4343, align 1, !tbaa !28
  %4345 = zext i8 %4344 to i32
  %4346 = icmp eq i32 %4336, 0
  %4347 = zext i8 %4344 to i64
  br i1 %4346, label %4348, label %4395

4348:                                             ; preds = %4341
  %4349 = getelementptr inbounds nuw %struct.ct_data_s, ptr %4309, i64 %4347
  %4350 = getelementptr inbounds nuw i8, ptr %4349, i64 2
  %4351 = load i16, ptr %4350, align 2, !tbaa !28
  %4352 = zext i16 %4351 to i32
  %4353 = sub nsw i32 16, %4352
  %4354 = icmp sgt i32 %4318, %4353
  %4355 = load i16, ptr %4349, align 2, !tbaa !28
  %4356 = zext i16 %4355 to i32
  %4357 = shl i32 %4356, %4318
  %4358 = trunc i32 %4357 to i16
  %4359 = or i16 %4317, %4358
  store i16 %4359, ptr %3338, align 8, !tbaa !25
  br i1 %4354, label %4361, label %4392

4360:                                             ; preds = %4493, %4483, %4459, %4453, %4425, %4375
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

4361:                                             ; preds = %4348
  %4362 = load i64, ptr %3339, align 8, !tbaa !33
  %4363 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4362, i64 1), !nosanitize !32
  %4364 = extractvalue { i64, i1 } %4363, 1, !nosanitize !32
  br i1 %4364, label %4365, label %4366, !prof !34, !nosanitize !32

4365:                                             ; preds = %4361
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4366:                                             ; preds = %4361
  %4367 = extractvalue { i64, i1 } %4363, 0, !nosanitize !32
  %4368 = load ptr, ptr %3340, align 8, !tbaa !35
  %4369 = trunc i16 %4359 to i8
  store i64 %4367, ptr %3339, align 8, !tbaa !33
  %4370 = getelementptr inbounds nuw i8, ptr %4368, i64 %4362
  store i8 %4369, ptr %4370, align 1, !tbaa !28
  %4371 = load i64, ptr %3339, align 8, !tbaa !33
  %4372 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4371, i64 1), !nosanitize !32
  %4373 = extractvalue { i64, i1 } %4372, 1, !nosanitize !32
  br i1 %4373, label %4374, label %4375, !prof !34, !nosanitize !32

4374:                                             ; preds = %4385, %4366
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4375:                                             ; preds = %4366
  %4376 = extractvalue { i64, i1 } %4372, 0, !nosanitize !32
  %4377 = load ptr, ptr %3340, align 8, !tbaa !35
  %4378 = load i16, ptr %3338, align 8, !tbaa !25
  %4379 = lshr i16 %4378, 8
  %4380 = trunc nuw i16 %4379 to i8
  store i64 %4376, ptr %3339, align 8, !tbaa !33
  %4381 = getelementptr inbounds nuw i8, ptr %4377, i64 %4371
  store i8 %4380, ptr %4381, align 1, !tbaa !28
  %4382 = load i32, ptr %2675, align 4, !tbaa !26
  %4383 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4382), !nosanitize !32
  %4384 = extractvalue { i32, i1 } %4383, 1, !nosanitize !32
  br i1 %4384, label %4360, label %4385, !prof !34, !nosanitize !32

4385:                                             ; preds = %4375
  %4386 = extractvalue { i32, i1 } %4383, 0, !nosanitize !32
  %4387 = lshr i32 %4356, %4386
  %4388 = trunc nuw i32 %4387 to i16
  store i16 %4388, ptr %3338, align 8, !tbaa !25
  %4389 = add nsw i32 %4352, -16
  %4390 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4382, i32 %4389), !nosanitize !32
  %4391 = extractvalue { i32, i1 } %4390, 1, !nosanitize !32
  br i1 %4391, label %4374, label %4635, !prof !34, !nosanitize !32

4392:                                             ; preds = %4348
  %4393 = add nsw i32 %4318, %4352
  %4394 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4393, 0
  br label %4635

4395:                                             ; preds = %4341
  %4396 = getelementptr inbounds nuw [256 x i8], ptr @_length_code, i64 0, i64 %4347
  %4397 = load i8, ptr %4396, align 1, !tbaa !28
  %4398 = zext i8 %4397 to i64
  %4399 = getelementptr inbounds nuw %struct.ct_data_s, ptr %4309, i64 %4398
  %4400 = getelementptr inbounds nuw i8, ptr %4399, i64 1028
  %4401 = getelementptr inbounds nuw i8, ptr %4399, i64 1030
  %4402 = load i16, ptr %4401, align 2, !tbaa !28
  %4403 = zext i16 %4402 to i32
  %4404 = sub nsw i32 16, %4403
  %4405 = icmp sgt i32 %4318, %4404
  %4406 = load i16, ptr %4400, align 2, !tbaa !28
  %4407 = zext i16 %4406 to i32
  %4408 = shl i32 %4407, %4318
  %4409 = trunc i32 %4408 to i16
  %4410 = or i16 %4317, %4409
  store i16 %4410, ptr %3338, align 8, !tbaa !25
  br i1 %4405, label %4411, label %4442

4411:                                             ; preds = %4395
  %4412 = load i64, ptr %3339, align 8, !tbaa !33
  %4413 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4412, i64 1), !nosanitize !32
  %4414 = extractvalue { i64, i1 } %4413, 1, !nosanitize !32
  br i1 %4414, label %4415, label %4416, !prof !34, !nosanitize !32

4415:                                             ; preds = %4411
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4416:                                             ; preds = %4411
  %4417 = extractvalue { i64, i1 } %4413, 0, !nosanitize !32
  %4418 = load ptr, ptr %3340, align 8, !tbaa !35
  %4419 = trunc i16 %4410 to i8
  store i64 %4417, ptr %3339, align 8, !tbaa !33
  %4420 = getelementptr inbounds nuw i8, ptr %4418, i64 %4412
  store i8 %4419, ptr %4420, align 1, !tbaa !28
  %4421 = load i64, ptr %3339, align 8, !tbaa !33
  %4422 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4421, i64 1), !nosanitize !32
  %4423 = extractvalue { i64, i1 } %4422, 1, !nosanitize !32
  br i1 %4423, label %4424, label %4425, !prof !34, !nosanitize !32

4424:                                             ; preds = %4435, %4416
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4425:                                             ; preds = %4416
  %4426 = extractvalue { i64, i1 } %4422, 0, !nosanitize !32
  %4427 = load ptr, ptr %3340, align 8, !tbaa !35
  %4428 = load i16, ptr %3338, align 8, !tbaa !25
  %4429 = lshr i16 %4428, 8
  %4430 = trunc nuw i16 %4429 to i8
  store i64 %4426, ptr %3339, align 8, !tbaa !33
  %4431 = getelementptr inbounds nuw i8, ptr %4427, i64 %4421
  store i8 %4430, ptr %4431, align 1, !tbaa !28
  %4432 = load i32, ptr %2675, align 4, !tbaa !26
  %4433 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4432), !nosanitize !32
  %4434 = extractvalue { i32, i1 } %4433, 1, !nosanitize !32
  br i1 %4434, label %4360, label %4435, !prof !34, !nosanitize !32

4435:                                             ; preds = %4425
  %4436 = extractvalue { i32, i1 } %4433, 0, !nosanitize !32
  %4437 = lshr i32 %4407, %4436
  %4438 = trunc nuw i32 %4437 to i16
  store i16 %4438, ptr %3338, align 8, !tbaa !25
  %4439 = add nsw i32 %4403, -16
  %4440 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4432, i32 %4439), !nosanitize !32
  %4441 = extractvalue { i32, i1 } %4440, 1, !nosanitize !32
  br i1 %4441, label %4424, label %4445, !prof !34, !nosanitize !32

4442:                                             ; preds = %4395
  %4443 = add nsw i32 %4318, %4403
  %4444 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4443, 0
  br label %4445

4445:                                             ; preds = %4442, %4435
  %4446 = phi i16 [ %4438, %4435 ], [ %4410, %4442 ]
  %4447 = phi { i32, i1 } [ %4440, %4435 ], [ %4444, %4442 ]
  %4448 = extractvalue { i32, i1 } %4447, 0
  store i32 %4448, ptr %2675, align 4, !tbaa !26
  %4449 = getelementptr inbounds nuw [29 x i32], ptr @extra_lbits, i64 0, i64 %4398
  %4450 = load i32, ptr %4449, align 4, !tbaa !50
  %4451 = add nsw i64 %4398, -28
  %4452 = icmp ult i64 %4451, -20
  br i1 %4452, label %4513, label %4453

4453:                                             ; preds = %4445
  %4454 = getelementptr inbounds nuw [29 x i32], ptr @base_length, i64 0, i64 %4398
  %4455 = load i32, ptr %4454, align 4, !tbaa !50
  %4456 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4345, i32 %4455), !nosanitize !32
  %4457 = extractvalue { i32, i1 } %4456, 0, !nosanitize !32
  %4458 = extractvalue { i32, i1 } %4456, 1, !nosanitize !32
  br i1 %4458, label %4360, label %4459, !prof !34, !nosanitize !32

4459:                                             ; preds = %4453
  %4460 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4450), !nosanitize !32
  %4461 = extractvalue { i32, i1 } %4460, 1, !nosanitize !32
  br i1 %4461, label %4360, label %4462, !prof !34, !nosanitize !32

4462:                                             ; preds = %4459
  %4463 = extractvalue { i32, i1 } %4460, 0, !nosanitize !32
  %4464 = icmp sgt i32 %4448, %4463
  br i1 %4464, label %4465, label %4503

4465:                                             ; preds = %4462
  %4466 = and i32 %4457, 65535
  %4467 = shl i32 %4457, %4448
  %4468 = trunc i32 %4467 to i16
  %4469 = or i16 %4446, %4468
  store i16 %4469, ptr %3338, align 8, !tbaa !25
  %4470 = load i64, ptr %3339, align 8, !tbaa !33
  %4471 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4470, i64 1), !nosanitize !32
  %4472 = extractvalue { i64, i1 } %4471, 1, !nosanitize !32
  br i1 %4472, label %4473, label %4474, !prof !34, !nosanitize !32

4473:                                             ; preds = %4465
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4474:                                             ; preds = %4465
  %4475 = extractvalue { i64, i1 } %4471, 0, !nosanitize !32
  %4476 = load ptr, ptr %3340, align 8, !tbaa !35
  %4477 = trunc i16 %4469 to i8
  store i64 %4475, ptr %3339, align 8, !tbaa !33
  %4478 = getelementptr inbounds nuw i8, ptr %4476, i64 %4470
  store i8 %4477, ptr %4478, align 1, !tbaa !28
  %4479 = load i64, ptr %3339, align 8, !tbaa !33
  %4480 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4479, i64 1), !nosanitize !32
  %4481 = extractvalue { i64, i1 } %4480, 1, !nosanitize !32
  br i1 %4481, label %4482, label %4483, !prof !34, !nosanitize !32

4482:                                             ; preds = %4503, %4499, %4474
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4483:                                             ; preds = %4474
  %4484 = extractvalue { i64, i1 } %4480, 0, !nosanitize !32
  %4485 = load ptr, ptr %3340, align 8, !tbaa !35
  %4486 = load i16, ptr %3338, align 8, !tbaa !25
  %4487 = lshr i16 %4486, 8
  %4488 = trunc nuw i16 %4487 to i8
  store i64 %4484, ptr %3339, align 8, !tbaa !33
  %4489 = getelementptr inbounds nuw i8, ptr %4485, i64 %4479
  store i8 %4488, ptr %4489, align 1, !tbaa !28
  %4490 = load i32, ptr %2675, align 4, !tbaa !26
  %4491 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4490), !nosanitize !32
  %4492 = extractvalue { i32, i1 } %4491, 1, !nosanitize !32
  br i1 %4492, label %4360, label %4493, !prof !34, !nosanitize !32

4493:                                             ; preds = %4483
  %4494 = extractvalue { i32, i1 } %4491, 0, !nosanitize !32
  %4495 = lshr i32 %4466, %4494
  %4496 = trunc nuw i32 %4495 to i16
  store i16 %4496, ptr %3338, align 8, !tbaa !25
  %4497 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4450, i32 -16)
  %4498 = extractvalue { i32, i1 } %4497, 1, !nosanitize !32
  br i1 %4498, label %4360, label %4499, !prof !34, !nosanitize !32

4499:                                             ; preds = %4493
  %4500 = extractvalue { i32, i1 } %4497, 0, !nosanitize !32
  %4501 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4490, i32 %4500), !nosanitize !32
  %4502 = extractvalue { i32, i1 } %4501, 1, !nosanitize !32
  br i1 %4502, label %4482, label %4509, !prof !34, !nosanitize !32

4503:                                             ; preds = %4462
  %4504 = shl i32 %4457, %4448
  %4505 = trunc i32 %4504 to i16
  %4506 = or i16 %4446, %4505
  store i16 %4506, ptr %3338, align 8, !tbaa !25
  %4507 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4448, i32 %4450), !nosanitize !32
  %4508 = extractvalue { i32, i1 } %4507, 1, !nosanitize !32
  br i1 %4508, label %4482, label %4509, !prof !34, !nosanitize !32

4509:                                             ; preds = %4503, %4499
  %4510 = phi i16 [ %4496, %4499 ], [ %4506, %4503 ]
  %4511 = phi { i32, i1 } [ %4501, %4499 ], [ %4507, %4503 ]
  %4512 = extractvalue { i32, i1 } %4511, 0
  store i32 %4512, ptr %2675, align 4, !tbaa !26
  br label %4513

4513:                                             ; preds = %4509, %4445
  %4514 = phi i16 [ %4510, %4509 ], [ %4446, %4445 ]
  %4515 = phi i32 [ %4512, %4509 ], [ %4448, %4445 ]
  %4516 = add nsw i32 %4336, -1
  %4517 = icmp samesign ult i32 %4336, 257
  %4518 = lshr i32 %4516, 7
  %4519 = add nuw nsw i32 %4518, 256
  %4520 = select i1 %4517, i32 %4516, i32 %4519
  %4521 = zext nneg i32 %4520 to i64
  %4522 = getelementptr inbounds nuw [512 x i8], ptr @_dist_code, i64 0, i64 %4521
  %4523 = load i8, ptr %4522, align 1, !tbaa !28
  %4524 = zext i8 %4523 to i64
  %4525 = getelementptr inbounds nuw %struct.ct_data_s, ptr %4310, i64 %4524
  %4526 = getelementptr inbounds nuw i8, ptr %4525, i64 2
  %4527 = load i16, ptr %4526, align 2, !tbaa !28
  %4528 = zext i16 %4527 to i32
  %4529 = sub nsw i32 16, %4528
  %4530 = icmp sgt i32 %4515, %4529
  %4531 = load i16, ptr %4525, align 2, !tbaa !28
  %4532 = zext i16 %4531 to i32
  %4533 = shl i32 %4532, %4515
  %4534 = trunc i32 %4533 to i16
  %4535 = or i16 %4514, %4534
  store i16 %4535, ptr %3338, align 8, !tbaa !25
  br i1 %4530, label %4537, label %4568

4536:                                             ; preds = %4551
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

4537:                                             ; preds = %4513
  %4538 = load i64, ptr %3339, align 8, !tbaa !33
  %4539 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4538, i64 1), !nosanitize !32
  %4540 = extractvalue { i64, i1 } %4539, 1, !nosanitize !32
  br i1 %4540, label %4541, label %4542, !prof !34, !nosanitize !32

4541:                                             ; preds = %4537
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4542:                                             ; preds = %4537
  %4543 = extractvalue { i64, i1 } %4539, 0, !nosanitize !32
  %4544 = load ptr, ptr %3340, align 8, !tbaa !35
  %4545 = trunc i16 %4535 to i8
  store i64 %4543, ptr %3339, align 8, !tbaa !33
  %4546 = getelementptr inbounds nuw i8, ptr %4544, i64 %4538
  store i8 %4545, ptr %4546, align 1, !tbaa !28
  %4547 = load i64, ptr %3339, align 8, !tbaa !33
  %4548 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4547, i64 1), !nosanitize !32
  %4549 = extractvalue { i64, i1 } %4548, 1, !nosanitize !32
  br i1 %4549, label %4550, label %4551, !prof !34, !nosanitize !32

4550:                                             ; preds = %4561, %4542
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4551:                                             ; preds = %4542
  %4552 = extractvalue { i64, i1 } %4548, 0, !nosanitize !32
  %4553 = load ptr, ptr %3340, align 8, !tbaa !35
  %4554 = load i16, ptr %3338, align 8, !tbaa !25
  %4555 = lshr i16 %4554, 8
  %4556 = trunc nuw i16 %4555 to i8
  store i64 %4552, ptr %3339, align 8, !tbaa !33
  %4557 = getelementptr inbounds nuw i8, ptr %4553, i64 %4547
  store i8 %4556, ptr %4557, align 1, !tbaa !28
  %4558 = load i32, ptr %2675, align 4, !tbaa !26
  %4559 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4558), !nosanitize !32
  %4560 = extractvalue { i32, i1 } %4559, 1, !nosanitize !32
  br i1 %4560, label %4536, label %4561, !prof !34, !nosanitize !32

4561:                                             ; preds = %4551
  %4562 = extractvalue { i32, i1 } %4559, 0, !nosanitize !32
  %4563 = lshr i32 %4532, %4562
  %4564 = trunc nuw i32 %4563 to i16
  store i16 %4564, ptr %3338, align 8, !tbaa !25
  %4565 = add nsw i32 %4528, -16
  %4566 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4558, i32 %4565), !nosanitize !32
  %4567 = extractvalue { i32, i1 } %4566, 1, !nosanitize !32
  br i1 %4567, label %4550, label %4571, !prof !34, !nosanitize !32

4568:                                             ; preds = %4513
  %4569 = add nsw i32 %4515, %4528
  %4570 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4569, 0
  br label %4571

4571:                                             ; preds = %4568, %4561
  %4572 = phi i16 [ %4564, %4561 ], [ %4535, %4568 ]
  %4573 = phi { i32, i1 } [ %4566, %4561 ], [ %4570, %4568 ]
  %4574 = extractvalue { i32, i1 } %4573, 0
  store i32 %4574, ptr %2675, align 4, !tbaa !26
  %4575 = getelementptr inbounds nuw [30 x i32], ptr @extra_dbits, i64 0, i64 %4524
  %4576 = load i32, ptr %4575, align 4, !tbaa !50
  %4577 = icmp ult i8 %4523, 4
  br i1 %4577, label %4639, label %4578

4578:                                             ; preds = %4571
  %4579 = getelementptr inbounds nuw [30 x i32], ptr @base_dist, i64 0, i64 %4524
  %4580 = load i32, ptr %4579, align 4, !tbaa !50
  %4581 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %4516, i32 %4580), !nosanitize !32
  %4582 = extractvalue { i32, i1 } %4581, 0, !nosanitize !32
  %4583 = extractvalue { i32, i1 } %4581, 1, !nosanitize !32
  br i1 %4583, label %4584, label %4585, !prof !34, !nosanitize !32

4584:                                             ; preds = %4619, %4609, %4585, %4578, %4672
  tail call void @llvm.ubsantrap(i8 21) #9, !nosanitize !32
  unreachable, !nosanitize !32

4585:                                             ; preds = %4578
  %4586 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4576), !nosanitize !32
  %4587 = extractvalue { i32, i1 } %4586, 1, !nosanitize !32
  br i1 %4587, label %4584, label %4588, !prof !34, !nosanitize !32

4588:                                             ; preds = %4585
  %4589 = extractvalue { i32, i1 } %4586, 0, !nosanitize !32
  %4590 = icmp sgt i32 %4574, %4589
  br i1 %4590, label %4591, label %4629

4591:                                             ; preds = %4588
  %4592 = and i32 %4582, 65535
  %4593 = shl i32 %4582, %4574
  %4594 = trunc i32 %4593 to i16
  %4595 = or i16 %4572, %4594
  store i16 %4595, ptr %3338, align 8, !tbaa !25
  %4596 = load i64, ptr %3339, align 8, !tbaa !33
  %4597 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4596, i64 1), !nosanitize !32
  %4598 = extractvalue { i64, i1 } %4597, 1, !nosanitize !32
  br i1 %4598, label %4599, label %4600, !prof !34, !nosanitize !32

4599:                                             ; preds = %4591
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4600:                                             ; preds = %4591
  %4601 = extractvalue { i64, i1 } %4597, 0, !nosanitize !32
  %4602 = load ptr, ptr %3340, align 8, !tbaa !35
  %4603 = trunc i16 %4595 to i8
  store i64 %4601, ptr %3339, align 8, !tbaa !33
  %4604 = getelementptr inbounds nuw i8, ptr %4602, i64 %4596
  store i8 %4603, ptr %4604, align 1, !tbaa !28
  %4605 = load i64, ptr %3339, align 8, !tbaa !33
  %4606 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4605, i64 1), !nosanitize !32
  %4607 = extractvalue { i64, i1 } %4606, 1, !nosanitize !32
  br i1 %4607, label %4608, label %4609, !prof !34, !nosanitize !32

4608:                                             ; preds = %4629, %4625, %4600
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4609:                                             ; preds = %4600
  %4610 = extractvalue { i64, i1 } %4606, 0, !nosanitize !32
  %4611 = load ptr, ptr %3340, align 8, !tbaa !35
  %4612 = load i16, ptr %3338, align 8, !tbaa !25
  %4613 = lshr i16 %4612, 8
  %4614 = trunc nuw i16 %4613 to i8
  store i64 %4610, ptr %3339, align 8, !tbaa !33
  %4615 = getelementptr inbounds nuw i8, ptr %4611, i64 %4605
  store i8 %4614, ptr %4615, align 1, !tbaa !28
  %4616 = load i32, ptr %2675, align 4, !tbaa !26
  %4617 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4616), !nosanitize !32
  %4618 = extractvalue { i32, i1 } %4617, 1, !nosanitize !32
  br i1 %4618, label %4584, label %4619, !prof !34, !nosanitize !32

4619:                                             ; preds = %4609
  %4620 = extractvalue { i32, i1 } %4617, 0, !nosanitize !32
  %4621 = lshr i32 %4592, %4620
  %4622 = trunc nuw i32 %4621 to i16
  store i16 %4622, ptr %3338, align 8, !tbaa !25
  %4623 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4576, i32 -16)
  %4624 = extractvalue { i32, i1 } %4623, 1, !nosanitize !32
  br i1 %4624, label %4584, label %4625, !prof !34, !nosanitize !32

4625:                                             ; preds = %4619
  %4626 = extractvalue { i32, i1 } %4623, 0, !nosanitize !32
  %4627 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4616, i32 %4626), !nosanitize !32
  %4628 = extractvalue { i32, i1 } %4627, 1, !nosanitize !32
  br i1 %4628, label %4608, label %4635, !prof !34, !nosanitize !32

4629:                                             ; preds = %4588
  %4630 = shl i32 %4582, %4574
  %4631 = trunc i32 %4630 to i16
  %4632 = or i16 %4572, %4631
  store i16 %4632, ptr %3338, align 8, !tbaa !25
  %4633 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4574, i32 %4576), !nosanitize !32
  %4634 = extractvalue { i32, i1 } %4633, 1, !nosanitize !32
  br i1 %4634, label %4608, label %4635, !prof !34, !nosanitize !32

4635:                                             ; preds = %4629, %4625, %4392, %4385
  %4636 = phi i16 [ %4388, %4385 ], [ %4359, %4392 ], [ %4622, %4625 ], [ %4632, %4629 ]
  %4637 = phi { i32, i1 } [ %4390, %4385 ], [ %4394, %4392 ], [ %4627, %4625 ], [ %4633, %4629 ]
  %4638 = extractvalue { i32, i1 } %4637, 0
  store i32 %4638, ptr %2675, align 4, !tbaa !26
  br label %4639

4639:                                             ; preds = %4635, %4571
  %4640 = phi i16 [ %4572, %4571 ], [ %4636, %4635 ]
  %4641 = phi i32 [ %4574, %4571 ], [ %4638, %4635 ]
  %4642 = load i32, ptr %4311, align 4, !tbaa !31
  %4643 = icmp ult i32 %4338, %4642
  br i1 %4643, label %4316, label %4644, !llvm.loop !79

4644:                                             ; preds = %4639, %4306
  %4645 = phi i16 [ %4307, %4306 ], [ %4640, %4639 ]
  %4646 = phi i32 [ %4308, %4306 ], [ %4641, %4639 ]
  %4647 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %4648 = getelementptr inbounds nuw i8, ptr %0, i64 1238
  %4649 = load i16, ptr %4648, align 2, !tbaa !28
  %4650 = zext i16 %4649 to i32
  %4651 = sub nsw i32 16, %4650
  %4652 = icmp sgt i32 %4646, %4651
  %4653 = load i16, ptr %4647, align 2, !tbaa !28
  %4654 = zext i16 %4653 to i32
  %4655 = shl i32 %4654, %4646
  %4656 = trunc i32 %4655 to i16
  %4657 = or i16 %4645, %4656
  store i16 %4657, ptr %3338, align 8, !tbaa !25
  br i1 %4652, label %4658, label %4689

4658:                                             ; preds = %4644
  %4659 = load i64, ptr %3339, align 8, !tbaa !33
  %4660 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4659, i64 1), !nosanitize !32
  %4661 = extractvalue { i64, i1 } %4660, 1, !nosanitize !32
  br i1 %4661, label %4662, label %4663, !prof !34, !nosanitize !32

4662:                                             ; preds = %4658
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4663:                                             ; preds = %4658
  %4664 = extractvalue { i64, i1 } %4660, 0, !nosanitize !32
  %4665 = load ptr, ptr %3340, align 8, !tbaa !35
  %4666 = trunc i16 %4657 to i8
  store i64 %4664, ptr %3339, align 8, !tbaa !33
  %4667 = getelementptr inbounds nuw i8, ptr %4665, i64 %4659
  store i8 %4666, ptr %4667, align 1, !tbaa !28
  %4668 = load i64, ptr %3339, align 8, !tbaa !33
  %4669 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4668, i64 1), !nosanitize !32
  %4670 = extractvalue { i64, i1 } %4669, 1, !nosanitize !32
  br i1 %4670, label %4671, label %4672, !prof !34, !nosanitize !32

4671:                                             ; preds = %4682, %4663
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4672:                                             ; preds = %4663
  %4673 = extractvalue { i64, i1 } %4669, 0, !nosanitize !32
  %4674 = load ptr, ptr %3340, align 8, !tbaa !35
  %4675 = load i16, ptr %3338, align 8, !tbaa !25
  %4676 = lshr i16 %4675, 8
  %4677 = trunc nuw i16 %4676 to i8
  store i64 %4673, ptr %3339, align 8, !tbaa !33
  %4678 = getelementptr inbounds nuw i8, ptr %4674, i64 %4668
  store i8 %4677, ptr %4678, align 1, !tbaa !28
  %4679 = load i32, ptr %2675, align 4, !tbaa !26
  %4680 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %4679), !nosanitize !32
  %4681 = extractvalue { i32, i1 } %4680, 1, !nosanitize !32
  br i1 %4681, label %4584, label %4682, !prof !34, !nosanitize !32

4682:                                             ; preds = %4672
  %4683 = extractvalue { i32, i1 } %4680, 0, !nosanitize !32
  %4684 = lshr i32 %4654, %4683
  %4685 = trunc nuw i32 %4684 to i16
  store i16 %4685, ptr %3338, align 8, !tbaa !25
  %4686 = add nsw i32 %4650, -16
  %4687 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4679, i32 %4686), !nosanitize !32
  %4688 = extractvalue { i32, i1 } %4687, 1, !nosanitize !32
  br i1 %4688, label %4671, label %4692, !prof !34, !nosanitize !32

4689:                                             ; preds = %4644
  %4690 = add nsw i32 %4646, %4650
  %4691 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %4690, 0
  br label %4692

4692:                                             ; preds = %4682, %4689
  %4693 = phi { i32, i1 } [ %4687, %4682 ], [ %4691, %4689 ]
  %4694 = extractvalue { i32, i1 } %4693, 0
  store i32 %4694, ptr %2675, align 4, !tbaa !26
  br label %4695

4695:                                             ; preds = %3104, %4692, %2671
  %4696 = getelementptr inbounds nuw i8, ptr %0, i64 212
  br label %4697

4697:                                             ; preds = %4697, %4695
  %4698 = phi i64 [ 0, %4695 ], [ %4702, %4697 ]
  %4699 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %4696, i64 0, i64 %4698
  store i16 0, ptr %4699, align 4, !tbaa !28
  %4700 = or disjoint i64 %4698, 1
  %4701 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %4696, i64 0, i64 %4700
  store i16 0, ptr %4701, align 4, !tbaa !28
  %4702 = add nuw nsw i64 %4698, 2
  %4703 = icmp eq i64 %4702, 286
  br i1 %4703, label %4704, label %4697, !llvm.loop !29

4704:                                             ; preds = %4697
  %4705 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %4705, align 4, !tbaa !28
  %4706 = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %4706, align 4, !tbaa !28
  %4707 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %4707, align 4, !tbaa !28
  %4708 = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %4708, align 4, !tbaa !28
  %4709 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %4709, align 4, !tbaa !28
  %4710 = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %4710, align 4, !tbaa !28
  %4711 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %4711, align 4, !tbaa !28
  %4712 = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %4712, align 4, !tbaa !28
  %4713 = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %4713, align 4, !tbaa !28
  %4714 = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %4714, align 4, !tbaa !28
  %4715 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %4715, align 4, !tbaa !28
  %4716 = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %4716, align 4, !tbaa !28
  %4717 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %4717, align 4, !tbaa !28
  %4718 = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %4718, align 4, !tbaa !28
  %4719 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %4719, align 4, !tbaa !28
  %4720 = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %4720, align 4, !tbaa !28
  %4721 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %4721, align 4, !tbaa !28
  %4722 = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %4722, align 4, !tbaa !28
  %4723 = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %4723, align 4, !tbaa !28
  %4724 = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %4724, align 4, !tbaa !28
  %4725 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %4725, align 4, !tbaa !28
  %4726 = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %4726, align 4, !tbaa !28
  %4727 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %4727, align 4, !tbaa !28
  %4728 = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %4728, align 4, !tbaa !28
  %4729 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %4729, align 4, !tbaa !28
  %4730 = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %4730, align 4, !tbaa !28
  %4731 = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %4731, align 4, !tbaa !28
  %4732 = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %4732, align 4, !tbaa !28
  %4733 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %4733, align 4, !tbaa !28
  %4734 = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %4734, align 4, !tbaa !28
  %4735 = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %4735, align 4, !tbaa !28
  %4736 = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %4736, align 4, !tbaa !28
  %4737 = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %4737, align 4, !tbaa !28
  %4738 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %4738, align 4, !tbaa !28
  %4739 = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %4739, align 4, !tbaa !28
  %4740 = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %4740, align 4, !tbaa !28
  %4741 = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %4741, align 4, !tbaa !28
  %4742 = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %4742, align 4, !tbaa !28
  %4743 = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %4743, align 4, !tbaa !28
  %4744 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %4744, align 4, !tbaa !28
  %4745 = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %4745, align 4, !tbaa !28
  %4746 = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %4746, align 4, !tbaa !28
  %4747 = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %4747, align 4, !tbaa !28
  %4748 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %4748, align 4, !tbaa !28
  %4749 = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %4749, align 4, !tbaa !28
  %4750 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %4750, align 4, !tbaa !28
  %4751 = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %4751, align 4, !tbaa !28
  %4752 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %4752, align 4, !tbaa !28
  %4753 = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %4753, align 4, !tbaa !28
  %4754 = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %4754, align 4, !tbaa !28
  %4755 = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %4756 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %4756, align 4, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4755, i8 0, i64 20, i1 false)
  %4757 = icmp eq i32 %3, 0
  br i1 %4757, label %4814, label %4758

4758:                                             ; preds = %4704
  %4759 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %4760 = load i32, ptr %4759, align 4, !tbaa !26
  %4761 = icmp sgt i32 %4760, 8
  br i1 %4761, label %4762, label %4787

4762:                                             ; preds = %4758
  %4763 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4764 = load i64, ptr %4763, align 8, !tbaa !33
  %4765 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4764, i64 1), !nosanitize !32
  %4766 = extractvalue { i64, i1 } %4765, 1, !nosanitize !32
  br i1 %4766, label %4767, label %4768, !prof !34, !nosanitize !32

4767:                                             ; preds = %4762
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4768:                                             ; preds = %4762
  %4769 = extractvalue { i64, i1 } %4765, 0, !nosanitize !32
  %4770 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4771 = load ptr, ptr %4770, align 8, !tbaa !35
  %4772 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4773 = load i16, ptr %4772, align 8, !tbaa !25
  %4774 = trunc i16 %4773 to i8
  store i64 %4769, ptr %4763, align 8, !tbaa !33
  %4775 = getelementptr inbounds nuw i8, ptr %4771, i64 %4764
  store i8 %4774, ptr %4775, align 1, !tbaa !28
  %4776 = load i64, ptr %4763, align 8, !tbaa !33
  %4777 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4776, i64 1), !nosanitize !32
  %4778 = extractvalue { i64, i1 } %4777, 1, !nosanitize !32
  br i1 %4778, label %4779, label %4780, !prof !34, !nosanitize !32

4779:                                             ; preds = %4768
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4780:                                             ; preds = %4768
  %4781 = extractvalue { i64, i1 } %4777, 0, !nosanitize !32
  %4782 = load ptr, ptr %4770, align 8, !tbaa !35
  %4783 = load i16, ptr %4772, align 8, !tbaa !25
  %4784 = lshr i16 %4783, 8
  %4785 = trunc nuw i16 %4784 to i8
  store i64 %4781, ptr %4763, align 8, !tbaa !33
  %4786 = getelementptr inbounds nuw i8, ptr %4782, i64 %4776
  store i8 %4785, ptr %4786, align 1, !tbaa !28
  br label %4803

4787:                                             ; preds = %4758
  %4788 = icmp sgt i32 %4760, 0
  br i1 %4788, label %4789, label %4803

4789:                                             ; preds = %4787
  %4790 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4791 = load i64, ptr %4790, align 8, !tbaa !33
  %4792 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4791, i64 1), !nosanitize !32
  %4793 = extractvalue { i64, i1 } %4792, 1, !nosanitize !32
  br i1 %4793, label %4794, label %4795, !prof !34, !nosanitize !32

4794:                                             ; preds = %4789
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

4795:                                             ; preds = %4789
  %4796 = extractvalue { i64, i1 } %4792, 0, !nosanitize !32
  %4797 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4798 = load ptr, ptr %4797, align 8, !tbaa !35
  %4799 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %4800 = load i16, ptr %4799, align 8, !tbaa !25
  %4801 = trunc i16 %4800 to i8
  store i64 %4796, ptr %4790, align 8, !tbaa !33
  %4802 = getelementptr inbounds nuw i8, ptr %4798, i64 %4791
  store i8 %4801, ptr %4802, align 1, !tbaa !28
  br label %4803

4803:                                             ; preds = %4795, %4787, %4780
  %4804 = load i32, ptr %4759, align 4, !tbaa !26
  %4805 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4804, i32 -1)
  %4806 = extractvalue { i32, i1 } %4805, 1, !nosanitize !32
  br i1 %4806, label %4807, label %4808, !prof !34, !nosanitize !32

4807:                                             ; preds = %4803
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !32
  unreachable, !nosanitize !32

4808:                                             ; preds = %4803
  %4809 = extractvalue { i32, i1 } %4805, 0, !nosanitize !32
  %4810 = and i32 %4809, 7
  %4811 = add nuw nsw i32 %4810, 1
  %4812 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %4811, ptr %4812, align 8, !tbaa !27
  %4813 = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %4813, align 8, !tbaa !25
  store i32 0, ptr %4759, align 4, !tbaa !26
  br label %4814

4814:                                             ; preds = %4808, %4704
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_tr_tally(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %6 = load i32, ptr %5, align 4, !tbaa !31
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 1), !nosanitize !32
  %8 = extractvalue { i32, i1 } %7, 1, !nosanitize !32
  br i1 %8, label %9, label %10, !prof !34, !nosanitize !32

9:                                                ; preds = %3
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

10:                                               ; preds = %3
  %11 = extractvalue { i32, i1 } %7, 0, !nosanitize !32
  %12 = load ptr, ptr %4, align 8, !tbaa !78
  %13 = trunc i32 %1 to i8
  store i32 %11, ptr %5, align 4, !tbaa !31
  %14 = zext i32 %6 to i64
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 %14
  store i8 %13, ptr %15, align 1, !tbaa !28
  %16 = load i32, ptr %5, align 4, !tbaa !31
  %17 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %16, i32 1), !nosanitize !32
  %18 = extractvalue { i32, i1 } %17, 1, !nosanitize !32
  br i1 %18, label %19, label %20, !prof !34, !nosanitize !32

19:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

20:                                               ; preds = %10
  %21 = extractvalue { i32, i1 } %17, 0, !nosanitize !32
  %22 = load ptr, ptr %4, align 8, !tbaa !78
  %23 = lshr i32 %1, 8
  %24 = trunc i32 %23 to i8
  store i32 %21, ptr %5, align 4, !tbaa !31
  %25 = zext i32 %16 to i64
  %26 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  store i8 %24, ptr %26, align 1, !tbaa !28
  %27 = load i32, ptr %5, align 4, !tbaa !31
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %27, i32 1), !nosanitize !32
  %29 = extractvalue { i32, i1 } %28, 1, !nosanitize !32
  br i1 %29, label %30, label %31, !prof !34, !nosanitize !32

30:                                               ; preds = %20
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

31:                                               ; preds = %20
  %32 = extractvalue { i32, i1 } %28, 0, !nosanitize !32
  %33 = load ptr, ptr %4, align 8, !tbaa !78
  %34 = trunc i32 %2 to i8
  store i32 %32, ptr %5, align 4, !tbaa !31
  %35 = zext i32 %27 to i64
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 %35
  store i8 %34, ptr %36, align 1, !tbaa !28
  %37 = icmp eq i32 %1, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %40 = zext i32 %2 to i64
  %41 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %39, i64 0, i64 %40
  %42 = load i16, ptr %41, align 4, !tbaa !28
  %43 = add i16 %42, 1
  store i16 %43, ptr %41, align 4, !tbaa !28
  br label %74

44:                                               ; preds = %31
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %46 = load i32, ptr %45, align 8, !tbaa !83
  %47 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 1), !nosanitize !32
  %48 = extractvalue { i32, i1 } %47, 1, !nosanitize !32
  br i1 %48, label %49, label %50, !prof !34, !nosanitize !32

49:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #9, !nosanitize !32
  unreachable, !nosanitize !32

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %47, 0, !nosanitize !32
  store i32 %51, ptr %45, align 8, !tbaa !83
  %52 = add i32 %1, -1
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %54 = zext i32 %2 to i64
  %55 = getelementptr inbounds nuw [256 x i8], ptr @_length_code, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !28
  %57 = zext i8 %56 to i64
  %58 = add nuw nsw i64 %57, 257
  %59 = getelementptr inbounds nuw [573 x %struct.ct_data_s], ptr %53, i64 0, i64 %58
  %60 = load i16, ptr %59, align 4, !tbaa !28
  %61 = add i16 %60, 1
  store i16 %61, ptr %59, align 4, !tbaa !28
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %63 = icmp ult i32 %1, 257
  %64 = lshr i32 %52, 7
  %65 = add nuw nsw i32 %64, 256
  %66 = select i1 %63, i32 %52, i32 %65
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw [512 x i8], ptr @_dist_code, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !28
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds nuw [61 x %struct.ct_data_s], ptr %62, i64 0, i64 %70
  %72 = load i16, ptr %71, align 4, !tbaa !28
  %73 = add i16 %72, 1
  store i16 %73, ptr %71, align 4, !tbaa !28
  br label %74

74:                                               ; preds = %50, %38
  %75 = load i32, ptr %5, align 4, !tbaa !31
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %77 = load i32, ptr %76, align 8, !tbaa !84
  %78 = icmp eq i32 %75, %77
  %79 = zext i1 %78 to i32
  ret i32 %79
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nomerge noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !17, i64 2904}
!6 = !{!"internal_state", !7, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !13, i64 40, !11, i64 48, !14, i64 56, !13, i64 64, !9, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !12, i64 96, !13, i64 104, !15, i64 112, !15, i64 120, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !13, i64 152, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !9, i64 212, !9, i64 2504, !9, i64 2748, !16, i64 2904, !16, i64 2928, !16, i64 2952, !9, i64 2976, !9, i64 3008, !11, i64 5300, !11, i64 5304, !9, i64 5308, !12, i64 5888, !11, i64 5896, !11, i64 5900, !11, i64 5904, !13, i64 5912, !13, i64 5920, !11, i64 5928, !11, i64 5932, !19, i64 5936, !11, i64 5940, !11, i64 5944, !13, i64 5952, !11, i64 5960}
!7 = !{!"p1 _ZTS10z_stream_s", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!"p1 _ZTS11gz_header_s", !8, i64 0}
!15 = !{!"p1 short", !8, i64 0}
!16 = !{!"tree_desc_s", !17, i64 0, !11, i64 8, !18, i64 16}
!17 = !{!"p1 _ZTS9ct_data_s", !8, i64 0}
!18 = !{!"p1 _ZTS18static_tree_desc_s", !8, i64 0}
!19 = !{!"short", !9, i64 0}
!20 = !{!6, !18, i64 2920}
!21 = !{!6, !17, i64 2928}
!22 = !{!6, !18, i64 2944}
!23 = !{!6, !17, i64 2952}
!24 = !{!6, !18, i64 2968}
!25 = !{!6, !19, i64 5936}
!26 = !{!6, !11, i64 5940}
!27 = !{!6, !11, i64 5944}
!28 = !{!9, !9, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!6, !11, i64 5900}
!32 = !{}
!33 = !{!6, !13, i64 40}
!34 = !{!"branch_weights", i32 1, i32 1048575}
!35 = !{!6, !12, i64 16}
!36 = !{!6, !11, i64 196}
!37 = !{!6, !7, i64 0}
!38 = !{!39, !11, i64 88}
!39 = !{!"z_stream_s", !12, i64 0, !11, i64 8, !13, i64 16, !12, i64 24, !11, i64 32, !13, i64 40, !12, i64 48, !40, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !11, i64 88, !13, i64 96, !13, i64 104}
!40 = !{!"p1 _ZTS14internal_state", !8, i64 0}
!41 = distinct !{!41, !30}
!42 = !{!16, !17, i64 0}
!43 = !{!16, !18, i64 16}
!44 = !{!45, !17, i64 0}
!45 = !{!"static_tree_desc_s", !17, i64 0, !46, i64 8, !11, i64 16, !11, i64 20, !11, i64 24}
!46 = !{!"p1 int", !8, i64 0}
!47 = !{!45, !11, i64 20}
!48 = !{!6, !11, i64 5300}
!49 = !{!6, !11, i64 5304}
!50 = !{!11, !11, i64 0}
!51 = distinct !{!51, !30}
!52 = !{!6, !13, i64 5912}
!53 = !{!6, !13, i64 5920}
!54 = distinct !{!54, !30}
!55 = !{!16, !11, i64 8}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = !{!45, !46, i64 8}
!60 = !{!45, !11, i64 16}
!61 = !{!45, !11, i64 24}
!62 = !{!19, !19, i64 0}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = distinct !{!71, !30}
!72 = distinct !{!72, !70}
!73 = !{!6, !11, i64 2912}
!74 = distinct !{!74, !30}
!75 = !{!6, !11, i64 2936}
!76 = distinct !{!76, !70}
!77 = !{!6, !11, i64 200}
!78 = !{!6, !12, i64 5888}
!79 = distinct !{!79, !30}
!80 = distinct !{!80, !30}
!81 = distinct !{!81, !30}
!82 = distinct !{!82, !30}
!83 = !{!6, !11, i64 5928}
!84 = !{!6, !11, i64 5904}
