// adler32.swift -- FAITHFUL TRANSPILE of zlib's adler32.c (Mark Adler),
// the checksum used by zlib/deflate: compression-family, NOT crypto.
// Preserved from the C source: BASE=65521, NMAX=5552, the DO16 macro's
// sixteen-fold manual unrolling (buf[i]..buf[i+15] per group), and the
// modulo-reduction schedule. Differences forced by Swift: explicit
// index arithmetic instead of pointer bumps (Swift has no unchecked
// pointer walk -- the whole point), &+ for the intentionally-wrapping
// sums. CLI: adler32 <iters> <input-file>.
import Foundation
let iters = Int(CommandLine.arguments[1])!
let data = [UInt8](try! Data(contentsOf: URL(fileURLWithPath: CommandLine.arguments[2])))

let BASE: UInt32 = 65521
let NMAX = 5552

func adler32(_ buf: [UInt8]) -> UInt32 {
  var adler: UInt32 = 1
  var sum2: UInt32 = 0
  var i = 0
  var len = buf.count
  while len >= NMAX {
    len -= NMAX
    var n = NMAX / 16          // 347 DO16 groups, exactly as in adler32.c
    repeat {
      adler &+= UInt32(buf[i     ]); sum2 &+= adler
      adler &+= UInt32(buf[i +  1]); sum2 &+= adler
      adler &+= UInt32(buf[i +  2]); sum2 &+= adler
      adler &+= UInt32(buf[i +  3]); sum2 &+= adler
      adler &+= UInt32(buf[i +  4]); sum2 &+= adler
      adler &+= UInt32(buf[i +  5]); sum2 &+= adler
      adler &+= UInt32(buf[i +  6]); sum2 &+= adler
      adler &+= UInt32(buf[i +  7]); sum2 &+= adler
      adler &+= UInt32(buf[i +  8]); sum2 &+= adler
      adler &+= UInt32(buf[i +  9]); sum2 &+= adler
      adler &+= UInt32(buf[i + 10]); sum2 &+= adler
      adler &+= UInt32(buf[i + 11]); sum2 &+= adler
      adler &+= UInt32(buf[i + 12]); sum2 &+= adler
      adler &+= UInt32(buf[i + 13]); sum2 &+= adler
      adler &+= UInt32(buf[i + 14]); sum2 &+= adler
      adler &+= UInt32(buf[i + 15]); sum2 &+= adler
      i += 16
      n -= 1
    } while n > 0
    adler %= BASE
    sum2 %= BASE
  }
  while len > 0 {
    adler &+= UInt32(buf[i]); sum2 &+= adler
    i += 1
    len -= 1
  }
  adler %= BASE
  sum2 %= BASE
  return adler | (sum2 << 16)
}

var final: UInt32 = 0
for _ in 0..<iters {
  final = final &+ adler32(data)
}
print(final)
