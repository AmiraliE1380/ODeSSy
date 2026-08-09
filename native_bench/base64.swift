// base64.swift -- the first NON-hash instance of the idiom (the diversity
// row). Encoder hot loop: reads data[i], data[i+1], data[i+2] behind the
// single lead guard `i+2 < n` -- trailing accesses entailed. BONUS proof
// class: the table lookups tbl[x & 63] index a 64-entry array with a
// 6-bit-masked value -- provable via KnownBits/mask reasoning, a second,
// distinct mechanism in the same kernel. Accumulates a checksum instead
// of building a string (keeps allocation out of the timing).
// CLI: base64 <iters> <input-file>.
import Foundation
let iters = Int(CommandLine.arguments[1])!
let data = [UInt8](try! Data(contentsOf: URL(fileURLWithPath: CommandLine.arguments[2])))

let tbl = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".utf8)

var final: UInt64 = 0
for _ in 0..<iters {
  var acc: UInt64 = 0
  let n = data.count
  var i = 0
  while i + 2 < n {
    let b0 = data[i]
    let b1 = data[i + 1]
    let b2 = data[i + 2]
    acc = acc &+ UInt64(tbl[Int(b0 >> 2)])
    acc = acc &+ UInt64(tbl[Int(((b0 & 0x03) << 4) | (b1 >> 4))])
    acc = acc &+ UInt64(tbl[Int(((b1 & 0x0F) << 2) | (b2 >> 6))])
    acc = acc &+ UInt64(tbl[Int(b2 & 0x3F)])
    i += 3
  }
  final = final &+ acc
}
print(final)
