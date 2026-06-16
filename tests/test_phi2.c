int sanity_check_2(int input) {
    int step1;
    // Diamond 1
    if (input < 500) {
        step1 = 100;
    } else {
        step1 = 200;
    }

    int step2;
    // Diamond 2 (relies on math from Diamond 1)
    if (input == 1000) {  
        step2 = step1 + 50;
    } else {
        step2 = step1 + 10;
    }

    // Trap Check: Does (step2 + 1000) overflow a 32-bit signed int?
    // Max possible value of step2 is (200 + 50) = 250. 
    // 250 + 1000 = 1250. No overflow! Should return UNSAT.
    return step2 + 1000;
}