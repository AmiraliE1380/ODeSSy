// crc32.swift -- FAITHFUL TRANSPILE of zlib's crc32.c slicing-by-4 path
// (the BYFOUR / crc32_little code): compression-family, real deployed
// algorithm. Preserved: the 4x256 table construction (make_crc_table's
// poly 0xedb88320 + derived tables), the 4-byte-word hot loop, the
// byte tail. The crc value is LOOP-CARRIED (each iteration consumes the
// previous crc), so LLVM cannot vectorize this on any platform -- the
// property that protected sha256's eliminations on Linux.
// Proof targets: the data[i+1..3] trailing loads behind `i+4 <= n`.
// Known-SAT residue: the four table lookups index runtime-built arrays
// (heap counts -- taxonomy slot b), expected to survive.
// CLI: crc32 <iters> <input-file>.
import Foundation
let iters = Int(CommandLine.arguments[1])!
let data = [UInt8](try! Data(contentsOf: URL(fileURLWithPath: CommandLine.arguments[2])))

// ---- table generation, faithful to zlib make_crc_table ----
var t0 = [UInt32](repeating: 0, count: 256)
var t1 = [UInt32](repeating: 0, count: 256)
var t2 = [UInt32](repeating: 0, count: 256)
var t3 = [UInt32](repeating: 0, count: 256)
for n in 0..<256 {
  var c = UInt32(n)
  for _ in 0..<8 {
    c = (c & 1) != 0 ? 0xedb88320 ^ (c >> 1) : c >> 1
  }
  t0[n] = c
}
for n in 0..<256 {
  var c = t0[n]
  c = t0[Int(c & 0xff)] ^ (c >> 8); t1[n] = c
  c = t0[Int(c & 0xff)] ^ (c >> 8); t2[n] = c
  c = t0[Int(c & 0xff)] ^ (c >> 8); t3[n] = c
}

func crc32(_ buf: [UInt8]) -> UInt32 {
  var c: UInt32 = 0xffffffff
  var i = 0
  let n = buf.count
  while i + 4 <= n {                     // the BYFOUR hot loop
    let w = UInt32(buf[i])
          | (UInt32(buf[i + 1]) << 8)
          | (UInt32(buf[i + 2]) << 16)
          | (UInt32(buf[i + 3]) << 24)
    c ^= w
    c = t3[Int(c & 0xff)]
      ^ t2[Int((c >> 8) & 0xff)]
      ^ t1[Int((c >> 16) & 0xff)]
      ^ t0[Int(c >> 24)]
    i += 4
  }
  while i < n {                          // byte tail
    c = t0[Int((c ^ UInt32(buf[i])) & 0xff)] ^ (c >> 8)
    i += 1
  }
  return c ^ 0xffffffff
}

var final: UInt32 = 0
for _ in 0..<iters {
  final = final &+ crc32(data)
}
print(final)
