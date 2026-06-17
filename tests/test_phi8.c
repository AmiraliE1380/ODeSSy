int test_phi8_sat(int x, int y, int z) {
    int val1, val2, val3;

    // Layer 1: 3 Paths
    if (x == 0)      val1 = 10;
    else if (x == 1) val1 = 20;
    else             val1 = 2147483000; // POISONED (Close to 32-bit max)

    // Layer 2: 5 Paths
    if (y == 0)      val2 = val1 + 1;
    else if (y == 1) val2 = val1 + 2;
    else if (y == 2) val2 = val1 + 3;
    else if (y == 3) val2 = val1 + 4;
    else             val2 = val1 - 2147483000; // ANTIDOTE 1

    // Layer 3: 2 Paths
    if (z == 0)      val3 = val2 + 500; // Poison + 500 = 2147483500. (+1000 below = Overflow!)
    else             val3 = val2 - 1000; // ANTIDOTE 2

    return val3 + 1000;
}