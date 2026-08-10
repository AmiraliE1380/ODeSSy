// cryptoswift_main.swift -- perf driver for the CryptoSwift library row.
// Compiled WHOLE-MODULE together with the library sources (EXTRA_SRCS),
// so it calls the library's SHA-256 directly (same module, no import).
// CLI: <iters> <input-file>.
import Foundation
let iters = Int(CommandLine.arguments[1])!
let data = [UInt8](try! Data(contentsOf: URL(fileURLWithPath: CommandLine.arguments[2])))
var acc: UInt8 = 0
for _ in 0..<iters {
  let digest = SHA2(variant: .sha256).calculate(for: data)
  acc = acc &+ digest[0] &+ digest[31]
}
print(acc)
