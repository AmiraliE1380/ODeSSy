#pragma once
// Profile.h -- oracle-pass<profile-stages> (HANDOFF §13.6).
//
// Wall-clock breakdown of where a module's ODeSSy time goes: per job
// (encode, FactGate wait, fact import split into LLVM analysis calls by
// kind vs. the rest, direct query, induction, guard synthesis) and per
// module (Stages 1, 2, 2b, 3). Each worker points CurProf at its job's
// record; with the knob off CurProf stays null and every hook is a single
// branch, so default builds are unaffected.

#include <chrono>
#include <mutex>
#include <set>
#include <tuple>

namespace odessy {

enum ProfKind { P_RM, P_KB, P_LVI, P_SCEV, P_SCEVSYM, P_NKINDS };
inline const char *profKindName(int K) {
    static const char *N[] = {"RM", "KB", "LVI", "SCEV", "SCEVSYM"};
    return N[K];
}

struct JobProfile {
    double EncodeMs = 0, GateWaitMs = 0, FactMs = 0;
    double AnalysisMs[P_NKINDS] = {};
    unsigned AnalysisCalls[P_NKINDS] = {};
    unsigned AnalysisRepeats[P_NKINDS] = {};   // same (kind, value, context) asked before
    double DirectMs = 0, IndMs = 0, MvMs = 0, NarrowMs = 0;
    double SetupMs = 0, SolveMs = 0, TeardownMs = 0;   // TrapSolver ctor / solvePhase / dtor
    double AssertMs = 0;                       // solvePhase before the direct check()
    unsigned Queries = 0;                      // every solver check() of the job
    double QueryMs = 0;
    char Verdict = '-';                        // exact direct query: U(nsat) S(at) ?(unknown)
    char MvVerdict = '-';                      // exact mv verification, last round ('-': not reached)
};

inline thread_local JobProfile *CurProf = nullptr;
inline bool ProfStagesEnabled = false;   // oracle-pass<profile-stages>

inline double profMsSince(std::chrono::steady_clock::time_point T0) {
    return std::chrono::duration<double, std::milli>(
               std::chrono::steady_clock::now() - T0).count();
}

// Repeat detection across jobs: (kind, value, context). Fact import runs
// under the FactGate, but T3/ind preparation may not; the mutex keeps the
// set safe either way.
struct ProfRepeatSet {
    std::mutex M;
    std::set<std::tuple<int, const void *, const void *>> Seen;
    bool seen(int K, const void *V, const void *Ctx) {
        std::lock_guard<std::mutex> G(M);
        return !Seen.insert({K, V, Ctx}).second;
    }
};
inline ProfRepeatSet &profRepeats() { static ProfRepeatSet S; return S; }

// RAII: time one LLVM analysis call and count it.
struct ProfAnalysis {
    int K; const void *V, *Ctx;
    std::chrono::steady_clock::time_point T0;
    ProfAnalysis(int K, const void *V, const void *Ctx) : K(K), V(V), Ctx(Ctx) {
        if (CurProf) T0 = std::chrono::steady_clock::now();
    }
    ~ProfAnalysis() {
        if (!CurProf) return;
        CurProf->AnalysisMs[K] += profMsSince(T0);
        ++CurProf->AnalysisCalls[K];
        if (profRepeats().seen(K, V, Ctx)) ++CurProf->AnalysisRepeats[K];
    }
};

// RAII: add a scope's wall clock to one field of the current job.
struct ProfScope {
    double JobProfile::*F;
    std::chrono::steady_clock::time_point T0;
    explicit ProfScope(double JobProfile::*F) : F(F) {
        if (CurProf) T0 = std::chrono::steady_clock::now();
    }
    ~ProfScope() { if (CurProf) CurProf->*F += profMsSince(T0); }
};

inline void profQuery(double Ms) {
    if (CurProf) { ++CurProf->Queries; CurProf->QueryMs += Ms; }
}

} // namespace odessy
