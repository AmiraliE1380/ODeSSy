// sha256.zig -- the second-language runtime candidate. Zig ReleaseSafe
// keeps bounds checks on (its native check family here; the hash's
// wrapping adds use +% by design, like Swift's &+ / Julia's wrap).
// Same block-processing kernel as the Swift/Julia ports.
// Build : zig build-exe -O ReleaseSafe sha256.zig
// IR    : zig build-obj -O ReleaseSafe -fno-strip -femit-llvm-ir=sha256_zig.ll sha256.zig
// CLI   : sha256 <iters> <input-file>
const std = @import("std");

const K = [64]u32{
    0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
    0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
    0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
    0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
    0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
    0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
    0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
    0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2,
};

fn rotr(x: u32, comptime n: u5) u32 {
    return (x >> n) | (x << (31 - n + 1));
}

fn sha256Sum(data: []const u8, iters: usize) u32 {
    var final: u32 = 0;
    var w: [64]u32 = undefined;
    var it: usize = 0;
    while (it < iters) : (it += 1) {
        var h0: u32 = 0x6a09e667; var h1: u32 = 0xbb67ae85;
        var h2: u32 = 0x3c6ef372; var h3: u32 = 0xa54ff53a;
        var h4: u32 = 0x510e527f; var h5: u32 = 0x9b05688c;
        var h6: u32 = 0x1f83d9ab; var h7: u32 = 0x5be0cd19;
        const nBlocks = data.len / 64;
        var b: usize = 0;
        while (b < nBlocks) : (b += 1) {
            const off = b * 64;
            var t: usize = 0;
            while (t < 16) : (t += 1) {
                w[t] = (@as(u32, data[off + 4 * t]) << 24) |
                       (@as(u32, data[off + 4 * t + 1]) << 16) |
                       (@as(u32, data[off + 4 * t + 2]) << 8) |
                        @as(u32, data[off + 4 * t + 3]);
            }
            t = 16;
            while (t < 64) : (t += 1) {
                const s0 = rotr(w[t - 15], 7) ^ rotr(w[t - 15], 18) ^ (w[t - 15] >> 3);
                const s1 = rotr(w[t - 2], 17) ^ rotr(w[t - 2], 19) ^ (w[t - 2] >> 10);
                w[t] = w[t - 16] +% s0 +% w[t - 7] +% s1;
            }
            var a = h0; var bb = h1; var c = h2; var d = h3;
            var e = h4; var f = h5; var g = h6; var hh = h7;
            var r: usize = 0;
            while (r < 64) : (r += 1) {
                const S1 = rotr(e, 6) ^ rotr(e, 11) ^ rotr(e, 25);
                const ch = (e & f) ^ (~e & g);
                const t1 = hh +% S1 +% ch +% K[r] +% w[r];
                const S0 = rotr(a, 2) ^ rotr(a, 13) ^ rotr(a, 22);
                const mj = (a & bb) ^ (a & c) ^ (bb & c);
                const t2 = S0 +% mj;
                hh = g; g = f; f = e; e = d +% t1;
                d = c; c = bb; bb = a; a = t1 +% t2;
            }
            h0 +%= a; h1 +%= bb; h2 +%= c; h3 +%= d;
            h4 +%= e; h5 +%= f; h6 +%= g; h7 +%= hh;
        }
        final = final +% h0 +% h7;
    }
    return final;
}

pub fn main() !void {
    const alloc = std.heap.page_allocator;
    const args = try std.process.argsAlloc(alloc);
    const iters = try std.fmt.parseInt(usize, args[1], 10);
    const data = try std.fs.cwd().readFileAlloc(alloc, args[2], 1 << 30);
    const out = sha256Sum(data, iters);
    // posix write: stable across zig's shifting stdio APIs
    var buf: [32]u8 = undefined;
    const s = try std.fmt.bufPrint(&buf, "{d}\n", .{out});
    _ = try std.posix.write(1, s);
}
