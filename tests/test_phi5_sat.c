int test_phi5_sat(int input) {
    int val;
    // 3-Way Split
    if (input == 1) {
        val = 2147483640; // Very close to the 32-bit signed limit!
    } else if (input == 2) {
        val = 200;
    } else {
        val = 300;
    }
    
    // If input == 1, val is 2147483640. 
    // 2147483640 + 1000 = 2147484640 -> OVERFLOW!
    // Z3 should return SAT.
    return val + 1000;
}