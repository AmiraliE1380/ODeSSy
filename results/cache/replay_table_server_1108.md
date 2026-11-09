| benchmark | cold cache | commit changed it + hot cache | identical + hot cache |
|---|---|---|---|
| zlib_1108 (whole library) | 330.4 s (1×) | 23.01 s (14×) | 7.06 s (47×) |
| zlib_1108 adler32 | 55.3 s (1×) | — | 0.25 s (223×) |
| zlib_1108 crc32 | 4.4 s (1×) | — | 0.11 s (40×) |
| zlib_1108 deflate | 19.6 s (1×) | 17.14 s (1.1×) | 1.13 s (17×) |
| zlib_1108 gzread | 11.6 s (1×) | 11.94 s (1.0×) | 0.57 s (20×) |
| zlib_1108 gzwrite | 4.3 s (1×) | 4.52 s (0.9×) | 0.56 s (7.7×) |
| zlib_1108 infback | 4.2 s (1×) | 4.20 s (1.0×) | 0.18 s (23×) |
| zlib_1108 inflate | 21.2 s (1×) | 21.36 s (1.0×) | 0.69 s (31×) |
| zlib_1108 trees | 206.1 s (1×) | — | 3.14 s (66×) |
| zstd_1108 (whole library) | 80.1 s (1×) | 6.14 s (13×) | 5.40 s (15×) |
| zstd_1108 divsufsort | 22.7 s (1×) | 18.00 s (1.3×) | 1.14 s (20×) |
| zstd_1108 huf_compress | 5.9 s (1×) | — | 0.61 s (9.7×) |
| zstd_1108 zstd_decompress_block | 2.2 s (1×) | 1.13 s (1.9×) | 0.41 s (5.3×) |
| zstd_1108 zstd_opt | 6.1 s (1×) | 6.13 s (1.0×) | 0.27 s (22×) |
| zstd_1108 zstd_preSplit | 32.3 s (1×) | — | 0.07 s (455×) |
