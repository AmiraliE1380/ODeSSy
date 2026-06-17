int test_phi4(int input) {
    int val;
    // 3-Way Split (Pure Tree, No internal merges)
    if (input == 1) {
        val = 100;
    } else if (input == 2) {
        val = 200;
    } else {
        val = 300;
    }
    // val max is 300. 300 + 1000 = 1300. UNSAT.
    return val + 1000;
}