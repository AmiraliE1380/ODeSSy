use std::env;
use std::fs;
fn main() {
    let args: Vec<String> = env::args().collect();
    let iters: usize = args[1].parse().unwrap();
    let data = fs::read(&args[2]).unwrap();
    let mut total = 0usize;
    for _ in 0..iters {
        let c = miniz_oxide::deflate::compress_to_vec(&data, 6);
        total = total.wrapping_add(c.len());
    }
    println!("{}", total);
}
