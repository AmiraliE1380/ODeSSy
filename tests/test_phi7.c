int test_phi7(int x, int y, int z) {
    int val1, val2, val3;

    // Layer 1: 3 Paths
    if (x == 0)      val1 = 10;
    else if (x == 1) val1 = 20;
    else             val1 = 30;

    // Layer 2: 5 Paths
    if (y == 0)      val2 = val1 + 1;
    else if (y == 1) val2 = val1 + 2;
    else if (y == 2) val2 = val1 + 3;
    else if (y == 3) val2 = val1 + 4;
    else             val2 = val1 + 5;

    // Layer 3: 2 Paths
    if (z == 0)      val3 = val2 + 100;
    else             val3 = val2 + 200;

    // Maximum possible value: 30 + 5 + 200 = 235. 
    // 235 + 1000 = 1235. Safely within 32-bit limits. UNSAT.
    return val3 + 1000;
}