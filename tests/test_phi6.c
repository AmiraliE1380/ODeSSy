int test_phi6_spaghetti(int input, int flag1, int flag2) {
    int val;

    // The IDom Split
    if (input < 100) {
        if (flag1 == 1) {
            val = 10;
            goto merge_A; // Cross-branch jump!
        } else {
            val = 28;
            goto final_merge;
        }
    } else {
        if (flag2 == 1) {
            val = 30;
            goto merge_A; // Cross-branch jump!
        } else {
            val = 40;
            goto final_merge;
        }
    }

merge_A:
    // Intermediate Phi Node: Can be reached from BOTH sides of the IDom split
    val += 5; // val is now either 15 or 35
    goto final_merge;

final_merge:
    // Final 3-Way Phi Node
    // Max possible value reaching here is 40.
    // 40 + 1000 = 1040. Fits easily in signed 32-bit int. UNSAT.
    return val + 1000;
}