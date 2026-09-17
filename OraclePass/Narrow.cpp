#include "Narrow.h"

namespace odessy {

z3::expr Narrower::fits(const z3::expr &V) {
    return z3::sext(V.extract(To - 1, 0), From - To) == V;
}

z3::expr Narrower::anyFlag() {
    z3::expr R = Ctx.bool_val(false);
    for (auto &F : Flags) R = R || F;
    return R;
}
z3::expr Narrower::noFlag() {
    z3::expr R = Ctx.bool_val(true);
    for (auto &F : Flags) R = R && !F;
    return R;
}

z3::expr Narrower::rewrite(const z3::expr &E) { return go(E); }

z3::expr Narrower::go(const z3::expr &E) {
    auto &Bucket = Memo[E.hash()];
    for (auto &KV : Bucket) if (z3::eq(KV.first, E)) return KV.second;
    auto remember = [&](const z3::expr &R) { Bucket.push_back({E, R}); return R; };
    z3::expr R(Ctx);

    if (!E.is_app()) throw NarrowRefused{"non-application term (quantifier/var)"};
    z3::func_decl D = E.decl();
    Z3_decl_kind K = D.decl_kind();
    unsigned N = E.num_args();

    // ---- leaves
    if (K == Z3_OP_UNINTERPRETED && N == 0) {
        if (isFrom(E)) {
            // keep the From-bit input; use its low To bits; flag !fits once
            bool Seen = false;
            for (auto &X : InputsSeenExprs) if (z3::eq(X, E)) { Seen = true; break; }
            if (Fresh) {
                std::string Nm = E.decl().name().str() + "~" + std::to_string(To);
                R = Ctx.bv_const(Nm.c_str(), To);
                if (!Seen) Links.push_back(R == E.extract(To - 1, 0));
            } else R = E.extract(To - 1, 0);
            if (!Seen) { InputsSeenExprs.push_back(E); flag(!fits(E), "input !fits", E); ++NumInputs; }
        } else R = E;
        return remember(R);
    }
    if (K == Z3_OP_BNUM) {
        if (isFrom(E)) {
            // numeral: must fit To bits signed
            uint64_t U = 0;
            if (!E.is_numeral_u64(U)) throw NarrowRefused{"numeral not representable"};
            long long V = (long long)U;
            long long Lo = -(1LL << (To - 1)), Hi = (1LL << (To - 1)) - 1;
            if (V < Lo || V > Hi) throw NarrowRefused{"numeral does not fit: " + std::to_string(V)};
            R = Ctx.bv_val((uint64_t)(U & ((1ULL << To) - 1)), To);
        } else R = E;
        return remember(R);
    }
    if (K == Z3_OP_TRUE || K == Z3_OP_FALSE) return remember(E);

    // ---- comparisons against a From-bit numeral that does not fit To bits:
    // on operands that fit (the regime Q_A lives in) the result is a
    // constant. Signed orders and (dis)equality only; unsigned orders are
    // refused (the unsigned view of a negative value is not order-preserving
    // against large constants).
    auto bigNumeral = [&](const z3::expr &X, long long &V) {
        if (X.is_app() && X.decl().decl_kind() == Z3_OP_BNUM && isFrom(X)) {
            uint64_t U = 0; if (!X.is_numeral_u64(U)) return false;
            V = (long long)U;
            long long Lo = -(1LL << (To - 1)), Hi = (1LL << (To - 1)) - 1;
            return V < Lo || V > Hi;
        }
        return false;
    };
    if (N == 2 && (K == Z3_OP_SLEQ || K == Z3_OP_SLT || K == Z3_OP_SGEQ || K == Z3_OP_SGT || K == Z3_OP_EQ || K == Z3_OP_DISTINCT)) {
        long long V = 0; bool L = bigNumeral(E.arg(0), V), Rr = !L && bigNumeral(E.arg(1), V);
        if ((L || Rr) && isFrom(E.arg(0))) {
            bool Big = V > 0;                        // numeral above the To-bit range (else below)
            bool Res;
            switch (K) {                             // x op C  (Rr) or  C op x  (L)
            case Z3_OP_SLEQ: Res = Rr ? Big : !Big; break;   // x <= C : true iff C big ; C <= x : true iff C small
            case Z3_OP_SLT:  Res = Rr ? Big : !Big; break;
            case Z3_OP_SGEQ: Res = Rr ? !Big : Big; break;
            case Z3_OP_SGT:  Res = Rr ? !Big : Big; break;
            case Z3_OP_EQ:   Res = false; break;
            default:         Res = true;  break;     // distinct
            }
            R = Ctx.bool_val(Res);
            return remember(R);
        }
    }
    // ---- rewrite children
    std::vector<z3::expr> A;
    for (unsigned i = 0; i < N; ++i) A.push_back(go(E.arg(i)));
    // Binary bit-vector ops and comparisons need equal operand sorts after
    // rewriting; a mismatch means one side was From-bit and the other was
    // not (e.g. a From-bit constant compared with a zext of a narrower
    // value): refuse rather than let z3++ abort.
    if (N >= 2 && K != Z3_OP_ITE && K != Z3_OP_EXTRACT && K != Z3_OP_ZERO_EXT && K != Z3_OP_SIGN_EXT &&
        K != Z3_OP_CONCAT && K != Z3_OP_AND && K != Z3_OP_OR && K != Z3_OP_IMPLIES && K != Z3_OP_IFF && K != Z3_OP_XOR)
        for (unsigned i = 1; i < N; ++i)
            if (!z3::eq(A[i].get_sort(), A[0].get_sort()))
                throw NarrowRefused{std::string("operand sort mismatch after rewrite in ") + D.name().str() +
                                    " (" + Z3_sort_to_string(Ctx, A[0].get_sort()) + " vs " + Z3_sort_to_string(Ctx, A[i].get_sort()) + ")"};
    bool WasFrom = isFrom(E);                              // result sort was From-bit
    bool ArgFrom = N > 0 && isFrom(E.arg(0));              // first argument was From-bit
    z3::expr IntMin = Ctx.bv_val((uint64_t)1 << (To - 1), To);
    z3::expr ToC = Ctx.bv_val((uint64_t)To, To);

    switch (K) {
    // ---- arithmetic with flags (only when the term was From-bit)
    case Z3_OP_BADD: {
        R = A[0];
        for (unsigned i = 1; i < N; ++i) {
            if (WasFrom) flag(!(z3::bvadd_no_overflow(R, A[i], true) && z3::bvadd_no_underflow(R, A[i])), "add ovf", E);
            R = R + A[i];
        }
        break;
    }
    case Z3_OP_BSUB: {
        R = A[0];
        for (unsigned i = 1; i < N; ++i) {
            if (WasFrom) flag(!(z3::bvsub_no_overflow(R, A[i]) && z3::bvsub_no_underflow(R, A[i], true)), "sub ovf", E);
            R = R - A[i];
        }
        break;
    }
    case Z3_OP_BMUL: {
        R = A[0];
        for (unsigned i = 1; i < N; ++i) {
            if (WasFrom) {
                // Z3 encodes bvmul_no_overflow with a doubled-width multiply
                // (as costly as the problem). Conservative, multiply-free
                // flag: the product cannot overflow To bits when both operands
                // fit To/2 bits signed; anything else is flagged.
                // |x| <= 2^(To/2-1) for both operands => |x*y| <= 2^(To-2) fits.
                unsigned H = To / 2 - 1;
                z3::expr Lo = -Ctx.bv_val((uint64_t)1 << H, To), Hi = Ctx.bv_val((uint64_t)1 << H, To);
                auto small = [&](const z3::expr &X) { return (X >= Lo) && (X <= Hi); };
                flag(!(small(R) && small(A[i])), "mul operands beyond half width", E);
            }
            R = R * A[i];
        }
        break;
    }
    case Z3_OP_BNEG:
        if (WasFrom) flag(A[0] == IntMin, "neg ovf", E);
        R = -A[0]; break;
    case Z3_OP_BAND: R = A[0]; for (unsigned i = 1; i < N; ++i) R = R & A[i]; break;
    case Z3_OP_BOR:  R = A[0]; for (unsigned i = 1; i < N; ++i) R = R | A[i]; break;
    case Z3_OP_BXOR: R = A[0]; for (unsigned i = 1; i < N; ++i) R = R ^ A[i]; break;
    case Z3_OP_BNOT: R = ~A[0]; break;
    case Z3_OP_BSHL:
        R = z3::shl(A[0], A[1]);
        if (WasFrom) flag((z3::ashr(R, A[1]) != A[0]) || z3::uge(A[1], ToC), "shl ovf", E);
        break;
    case Z3_OP_BLSHR:
        if (WasFrom) flag((A[0] < Ctx.bv_val(0, To)) || z3::uge(A[1], ToC), "lshr neg", E);
        R = z3::lshr(A[0], A[1]); break;
    case Z3_OP_BASHR:
        if (WasFrom) flag(z3::uge(A[1], ToC), "ashr amt", E);
        R = z3::ashr(A[0], A[1]); break;
    case Z3_OP_BUDIV:
        if (WasFrom) flag((A[0] < Ctx.bv_val(0, To)) || (A[1] < Ctx.bv_val(0, To)), "udiv neg", E);
        R = z3::udiv(A[0], A[1]); break;
    case Z3_OP_BUREM:
        if (WasFrom) flag((A[0] < Ctx.bv_val(0, To)) || (A[1] < Ctx.bv_val(0, To)), "urem neg", E);
        R = z3::urem(A[0], A[1]); break;
    case Z3_OP_BSDIV:
        if (WasFrom) flag((A[0] == IntMin) && (A[1] == Ctx.bv_val((uint64_t)-1 & ((1ULL << To) - 1), To)), "sdiv ovf", E);
        R = A[0] / A[1]; break;
    case Z3_OP_BSREM:
        if (WasFrom) flag((A[0] == IntMin) && (A[1] == Ctx.bv_val((uint64_t)-1 & ((1ULL << To) - 1), To)), "srem ovf", E);
        R = z3::srem(A[0], A[1]); break;
    // ---- comparisons (exact on fitting values)
    case Z3_OP_ULEQ: R = z3::ule(A[0], A[1]); break;
    case Z3_OP_ULT:  R = z3::ult(A[0], A[1]); break;
    case Z3_OP_UGEQ: R = z3::uge(A[0], A[1]); break;
    case Z3_OP_UGT:  R = z3::ugt(A[0], A[1]); break;
    case Z3_OP_SLEQ: R = A[0] <= A[1]; break;
    case Z3_OP_SLT:  R = A[0] <  A[1]; break;
    case Z3_OP_SGEQ: R = A[0] >= A[1]; break;
    case Z3_OP_SGT:  R = A[0] >  A[1]; break;
    case Z3_OP_EQ:   R = A[0] == A[1]; break;
    case Z3_OP_DISTINCT: {
        z3::expr_vector V(Ctx); for (auto &X : A) V.push_back(X); R = z3::distinct(V); break;
    }
    // ---- boolean structure
    case Z3_OP_AND: { z3::expr_vector V(Ctx); for (auto &X : A) V.push_back(X); R = z3::mk_and(V); break; }
    case Z3_OP_OR:  { z3::expr_vector V(Ctx); for (auto &X : A) V.push_back(X); R = z3::mk_or(V); break; }
    case Z3_OP_NOT: R = !A[0]; break;
    case Z3_OP_IMPLIES: R = z3::implies(A[0], A[1]); break;
    case Z3_OP_IFF: R = (A[0] == A[1]); break;
    case Z3_OP_XOR: R = (A[0] != A[1]); break;
    case Z3_OP_ITE: R = z3::ite(A[0], A[1], A[2]); break;
    // ---- width changes
    case Z3_OP_EXTRACT: {
        unsigned Hi = E.hi(), Lo = E.lo();
        if (ArgFrom) {
            if (Hi >= To) throw NarrowRefused{"extract above narrowed width"};
            R = A[0].extract(Hi, Lo);
        } else R = A[0].extract(Hi, Lo);
        break;
    }
    case Z3_OP_ZERO_EXT: {
        unsigned SrcW = E.arg(0).get_sort().bv_size();
        unsigned DstW = E.get_sort().bv_size();
        if (ArgFrom) throw NarrowRefused{"zero_extend from narrowed width"};
        if (DstW == From) {
            if (SrcW > To) throw NarrowRefused{"zero_extend source wider than narrowed width"};
            if (SrcW == To) { flag(A[0] < Ctx.bv_val(0, To), "zext top bit", E); R = A[0]; }
            else R = z3::zext(A[0], To - SrcW);
        } else R = z3::zext(A[0], DstW - SrcW);
        break;
    }
    case Z3_OP_SIGN_EXT: {
        unsigned SrcW = E.arg(0).get_sort().bv_size();
        unsigned DstW = E.get_sort().bv_size();
        if (ArgFrom) throw NarrowRefused{"sign_extend from narrowed width"};
        if (DstW == From) {
            if (SrcW > To) throw NarrowRefused{"sign_extend source wider than narrowed width"};
            R = SrcW == To ? A[0] : z3::sext(A[0], To - SrcW);
        } else R = z3::sext(A[0], DstW - SrcW);
        break;
    }
    default:
        throw NarrowRefused{std::string("unsupported op ") + D.name().str()};
    }
    return remember(R);
}

} // namespace odessy
