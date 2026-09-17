#pragma once
// =====================================================================
// Narrow -- whole-query bit-width reduction with overflow instrumentation
// (F1 step 2b, HANDOFF §10.38).
//
// Rewrites finished Z3 assertions so that every From-bit (64) term is
// rebuilt at To bits (32). Free From-bit constants stay From-bit (facts and
// hypotheses about inputs remain exact); their uses become extract(To-1,0).
// Every rewritten operation whose To-bit result may differ from the
// truncation of its From-bit result gets an overflow FLAG:
//   add/sub/mul   signed To-bit overflow/underflow
//   neg           operand == INT_MIN
//   shl           (result ashr amt) != operand  ||  amt >= To
//   lshr/udiv/urem operand negative (unsigned semantics differ)
//   ashr          amt >= To
//   sdiv/srem     INT_MIN / -1
//   zext s->From  (s == To) source top bit set
//   free input    !fits(v)   with fits(v) := sext(extract(To-1,0,v)) == v
// Compares (signed and unsigned), and/or/xor/not, select/ite, sext, and
// extracts below To need no flag: on values that fit, the To-bit result
// equals the From-bit one.
//
// Refuses (throws Refused) on any other From-bit operation and on a
// numeral that does not fit To bits signed; the caller decides whether the
// containing assertion may be dropped (facts/guards: yes, weakening) or
// whether narrowing is abandoned (definitions/trap: yes).
// =====================================================================
#include <z3++.h>
#include <map>
#include <string>
#include <vector>

namespace odessy {

struct NarrowRefused { std::string Why; };

class Narrower {
public:
    // FreshInputs: every From-bit free constant v is represented by a fresh
    // To-bit constant v~To (the pure-narrow query, §10.38 Q_A); links()
    // returns v~To == extract(To-1,0,v) for the wide side (Q_B).
    Narrower(z3::context &C, unsigned From = 64, unsigned To = 32, bool FreshInputs = true)
        : Ctx(C), From(From), To(To), Fresh(FreshInputs) {}
    const std::vector<z3::expr> &links() const { return Links; }
    // Rewrite one assertion. Flags produced along the way accumulate in
    // flags(); memoization spans calls (same term => same rewrite/flags).
    z3::expr rewrite(const z3::expr &E);
    const std::vector<z3::expr> &flags() const { return Flags; }
    const std::vector<std::string> &flagTexts() const { return FlagText; }
    const std::vector<z3::expr> &inputs() const { return InputsSeenExprs; }
    z3::expr anyFlag();       // OR of all flags (false if none)
    z3::expr noFlag();        // AND of !flag (true if none)
    unsigned numInputs() const { return NumInputs; }

private:
    z3::context &Ctx;
    unsigned From, To; bool Fresh;
    std::vector<z3::expr> Links;
    // Memo keyed by structural hash with equality check; the stored key
    // keeps the input AST alive (Z3 reuses ids of freed ASTs, so ids alone
    // are not stable keys).
    std::map<unsigned, std::vector<std::pair<z3::expr, z3::expr>>> Memo;
    std::vector<z3::expr> InputsSeenExprs;
    std::vector<z3::expr> Flags;
    std::vector<std::string> FlagText;
    void flag(const z3::expr &F, const std::string &Why, const z3::expr &Term) {
        Flags.push_back(F);
        std::string T = Term.to_string(); if (T.size() > 90) T = T.substr(0, 90) + "...";
        FlagText.push_back(Why + ": " + T);
    }

    unsigned NumInputs = 0;

    bool isFrom(const z3::expr &E) const { return E.is_bv() && E.get_sort().bv_size() == From; }
    z3::expr fits(const z3::expr &V64);
    z3::expr go(const z3::expr &E);
};

} // namespace odessy
