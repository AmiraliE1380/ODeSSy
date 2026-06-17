#include <stdint.h>

int complex_cfg(int input, int flag) {
    int val;
    
    // The Immediate Dominator (Root of the split)
    if (input < 1000) {      
        
        // The Intermediate Split
        if (flag == 1) {          
            val = 300;
        } else {
            val = 400;       
        }
        
        // --- INTERMEDIATE MERGE POINT ---
        // To get here, the path split and merged back together.
        // Our old linear crawler would crash here because looking backward
        // gives TWO predecessors, not one!

    } else {
        val = 100;
    }
    
    // --- FINAL MERGE POINT (Target Phi) ---
    // The highest possible value 'val' can hold is 400. 
    // 400 + 1000 = 1400. This fits perfectly in a 32-bit signed int.
    // Z3 should easily prove an overflow is UNSAT.
    
    return val + 1000;
}