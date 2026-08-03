# Run on the machine that has run_zlib_perf.sh (server or Mac):
#   python3 patch_zlib_perf_anf.py
src = open('run_zlib_perf.sh').read()
old_loop = 'for spec in none signed unsigned both; do'
new_loop = 'for spec in ${SPECS:-none signed unsigned both}; do'
assert old_loop in src, "spec loop not found -- paste the loop line to Claude"
src = src.replace(old_loop, new_loop)
old_case = '''    both)     SANF=(-fsanitize=signed-integer-overflow,unsigned-integer-overflow
                    -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow) ;;'''
new_case = old_case + '''
    # anf = zlib's all-non-firing union (robust matrix): everything that
    # can actually SHIP on zlib -- the deployable config ODeSSy attacks.
    anf)      SANF=(-fsanitize=signed-integer-overflow,unsigned-integer-overflow,integer-divide-by-zero,shift,bounds
                    -fsanitize-trap=signed-integer-overflow,unsigned-integer-overflow,integer-divide-by-zero,shift,bounds) ;;'''
assert old_case in src, "set_san both-case not found -- paste set_san to Claude"
src = src.replace(old_case, new_case)
open('run_zlib_perf.sh','w').write(src)
print("run_zlib_perf.sh: SPECS knob + anf spec added")
