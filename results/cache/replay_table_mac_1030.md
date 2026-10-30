| benchmark | cold cache | commit changed it + hot cache | identical + hot cache |
|---|---|---|---|
| zlib (whole library) | 91.4 s (1×) | 3.89 s (23×) | 2.63 s (35×) |
| zlib adler32 | 13.6 s (1×) | — | 0.10 s (139×) |
| zlib deflate | 4.2 s (1×) | — | 0.52 s (8.1×) |
| zlib inflate | 5.5 s (1×) | 5.41 s (1.0×) | 0.24 s (23×) |
| zlib trees | 62.7 s (1×) | — | 0.66 s (95×) |
| zstd (whole library) | 50.8 s (1×) | 3.61 s (14×) | 2.91 s (17×) |
| zstd divsufsort | 3.6 s (1×) | 3.22 s (1.1×) | 0.36 s (9.8×) |
| zstd zstd_preSplit | 44.0 s (1×) | — | 0.04 s (977×) |
