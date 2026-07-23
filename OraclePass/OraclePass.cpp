#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LazyValueInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/CFG.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "Z3Encoder.h"
#include "FactEncoder.h"
#include "llvm/Support/Path.h"
#include <chrono>
#include <queue>
#include <set>
#include <vector>
#include <utility>
#include <string>
#include <cctype>


using namespace llvm;

// --- THE DEBUG FLAG ---
bool DebugOracle = false;


namespace {

// Turn a module identifier (usually the input .ll path, e.g.
// "evaluation/zlib/deflate_integer_O3.ll") into a safe, stable log
// filename stem ("deflate_integer_O3"). Deterministic: the same input
// always maps to the same log file, so one benchmark == one log.
static std::string logStemForModule(const Module &M) {
    StringRef Id = M.getModuleIdentifier();

    // Strip directory and the final extension.
    StringRef Base = sys::path::stem(sys::path::filename(Id));

    std::string Stem;
    if (Base.empty() || Base == "<stdin>") {
        Stem = "module";
    } else {
        // Replace anything that isn't [A-Za-z0-9._-] with '_' so the
        // name is always a valid single path component.
        for (char c : Base) {
            Stem.push_back((std::isalnum(static_cast<unsigned char>(c)) ||
                            c == '.' || c == '_' || c == '-') ? c : '_');
        }
    }
    return Stem;
}

struct OraclePass : public PassInfoMixin<OraclePass> {

    // Computed lazily on the first function of a given module, then reused
    // for every remaining function in that same opt invocation.
    std::string LogFilename;
    bool LogInitialized = false;

// When true, every UNSAT is audited: guards alone must be SAT.
    // Costs one extra solver query per UNSAT (not per trap) -- enable in
    // dev/audit runs, disable for performance benchmarking.
    bool VacuityCheck = false;
    // Precision tier. false = LIGHT: today's encoder, and it must stay
    // byte-for-byte identical to pre-tier behavior (the tier split doubles
    // as the analysis-facts ablation). true = HEAVY: light PLUS LLVM
    // analysis facts (LVI / KnownBits / SCEV / !range) asserted at the
    // over-approximation boundaries (HANDOFF §9).
    bool HeavyMode = false;
    unsigned QueryTimeoutMs = 10000;
    OraclePass() = default;
    OraclePass(bool Vacuity, bool Heavy, unsigned TimeoutMs)
        : VacuityCheck(Vacuity), HeavyMode(Heavy), QueryTimeoutMs(TimeoutMs) {}


PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
        auto function_start_time = std::chrono::high_resolution_clock::now();

        // --- Resolve the per-benchmark log file exactly once per module ---
        // Filename is derived from the module (input .ll), NOT from a
        // wall-clock timestamp. Consequences:
        //   * one benchmark  -> one log file (all its functions share it)
        //   * rerunning opt  -> overwrites the same file (idempotent),
        //                       instead of leaving timestamped duplicates
        //   * no same-second collision race between parallel opt runs
        // The first function TRUNCATES the file; later functions APPEND.
        sys::fs::OpenFlags OpenMode = sys::fs::OF_Append;
        if (!LogInitialized) {
            LogFilename = "logs/compilations/" +
                          logStemForModule(*F.getParent()) + ".txt";
            OpenMode = sys::fs::OF_None; // truncate on first open this run
            LogInitialized = true;
        }

        std::error_code EC;
        raw_fd_ostream Log(LogFilename, EC, OpenMode);

        if (EC) {
            errs() << "[Error] Could not open log file: " << EC.message() << "\n";
            return PreservedAnalyses::all();
        }

        Log << "\n[Z3 Oracle] Analyzing Function: " << F.getName() << "\n";
        errs() << "\n[Z3 Oracle] Analyzing Function: " << F.getName() << "\n";
        if (HeavyMode) {
            Log << "  [tier: heavy]\n";
            errs() << "  [tier: heavy]\n";
        }

        double TotalLatency = 0.0;
        int TrapsEliminated = 0;
        int trap_attempts = 0;
        int smt_queries = 0; 

        LoopInfo &LI = FAM.getResult<LoopAnalysis>(F);
        DominatorTree &DT = FAM.getResult<DominatorTreeAnalysis>(F);
        // HEAVY tier only: point-sensitive ranges for boundary facts.
        // Never requested in light tier => light stays byte-identical.
        LazyValueInfo *LVI =
            HeavyMode ? &FAM.getResult<LazyValueAnalysis>(F) : nullptr;
        ScalarEvolution *SE =
            HeavyMode ? &FAM.getResult<ScalarEvolutionAnalysis>(F) : nullptr;


        for (BasicBlock &BB : F) {
            // 1. The Hunter: Find the ubsantrap call
            CallInst *TrapCall = nullptr;
            for (Instruction &Inst : BB) {
                if (auto *CI = dyn_cast<CallInst>(&Inst)) {
                    if (Function *Callee = CI->getCalledFunction()) {
                        if (Callee->getName().contains("ubsantrap") || Callee->getName() == "llvm.trap") {
                            TrapCall = CI;
                            break;
                        }
                    }
                }
            }

            if (!TrapCall) continue;

            // 2. The Anchor: Find the predecessor branch that triggered this trap
            BasicBlock *PredBB = BB.getSinglePredecessor();
            if (!PredBB) continue; // Skip complex merged traps for now

            auto *Br = dyn_cast<BranchInst>(PredBB->getTerminator());
            if (!Br || !Br->isConditional()) continue;

            Value *OvfCondition = Br->getCondition();
            bool TrapOnTrue = (Br->getSuccessor(0) == &BB);

            if (DILocation *Loc = TrapCall->getDebugLoc()) {
                Log << "  -> Trap source: " << Loc->getFilename().str()
                    << ":" << Loc->getLine() << "\n";
            }

            Log << "  -> Found UB Trap. Starting Backward Slice...\n";
            errs() << "  -> Found UB Trap. Starting Backward Slice...\n";

            // 3. The Slicer & Solver
            Z3Encoder Encoder(QueryTimeoutMs);
            if (VacuityCheck) Encoder.enableUnsatCores();

            trap_attempts++;
            
            auto [Eliminated, Latency] = tryEliminateTrap(OvfCondition, TrapOnTrue, PredBB, Encoder, LI, DT, LVI, SE, Log);
            TotalLatency += Latency;
            
            if (Latency > 0.0) {
                smt_queries++;
            }

            if (Eliminated) {
                // 4. The Kill
                Br->setCondition(ConstantInt::get(Type::getInt1Ty(F.getContext()), TrapOnTrue ? 0 : 1));
                Log << "  => SUCCESS: Trap mathematically neutralized!\n";
                errs() << "  => SUCCESS: Trap mathematically neutralized!\n";
                TrapsEliminated++;
            }
        }

        Log << "  => Total Traps Eliminated: " << TrapsEliminated << "\n";
        Log << "  => Total Trap Attempts: " << trap_attempts << "\n";
        Log << "  => Total SMT Queries Executed: " << smt_queries << "\n";
        Log << "  => Total SMT Query Latency: " << TotalLatency << " ms\n";
        Log << "  => Average SMT Query Latency: " << (smt_queries > 0 ? TotalLatency / smt_queries : 0) << " ms\n";

        auto function_end_time = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double, std::milli> function_duration = function_end_time - function_start_time;
        
        Log << "  => Total DFS & SMT Execution Time: " << function_duration.count() << " ms\n";
        Log << "--------------------------------------------------\n";

        errs() << "  => Total Traps Eliminated: " << TrapsEliminated << "\n";
        errs() << "  => Total Trap Attempts: " << trap_attempts << "\n";
        errs() << "  => Total SMT Queries Executed: " << smt_queries << "\n";
        errs() << "  => Total SMT Query Latency: " << TotalLatency << " ms\n";
        errs() << "  => Average SMT Query Latency: " << (smt_queries > 0 ? TotalLatency / smt_queries : 0) << " ms\n";
        errs() << "  => Total DFS & SMT Execution Time: " << function_duration.count() << " ms\n";

        return TrapsEliminated > 0 ? PreservedAnalyses::none() : PreservedAnalyses::all();
    }


private:
    // ==================================================================
    // PHASE 1: LINEAR BACKWARD REGION WALK (no path enumeration)
    // ==================================================================
    bool collectPhiConditions(PHINode *Phi, DominatorTree &DT, std::set<Value*> &Visited, std::queue<Value*> &Worklist, raw_fd_ostream &Log) {
        BasicBlock *PhiBB = Phi->getParent();
        DomTreeNode *Node = DT.getNode(PhiBB);
        if (!Node || !Node->getIDom()) return false;

        BasicBlock *IDomBB = Node->getIDom()->getBlock();

        std::set<BasicBlock*> RegionVisited;
        std::queue<BasicBlock*> BlockWorklist;

        for (unsigned i = 0; i < Phi->getNumIncomingValues(); ++i) {
            Value *IncVal = Phi->getIncomingValue(i);
            if (Visited.insert(IncVal).second) Worklist.push(IncVal);

            BasicBlock *IncBB = Phi->getIncomingBlock(i);
            if (RegionVisited.insert(IncBB).second) BlockWorklist.push(IncBB);
        }

        while (!BlockWorklist.empty()) {
            BasicBlock *BB = BlockWorklist.front();
            BlockWorklist.pop();

            auto *Term = BB->getTerminator();
            Value *Cond = nullptr;
            if (auto *Br = dyn_cast<BranchInst>(Term)) {
                if (Br->isConditional()) Cond = Br->getCondition();
            } else if (auto *Sw = dyn_cast<SwitchInst>(Term)) {
                Cond = Sw->getCondition();
            }
            if (Cond && Visited.insert(Cond).second) Worklist.push(Cond);

            if (BB == IDomBB) continue;

            for (BasicBlock *Pred : predecessors(BB)) {
                if (Pred == PhiBB) continue;
                if (!DT.dominates(IDomBB, Pred)) continue;
                if (RegionVisited.insert(Pred).second) BlockWorklist.push(Pred);
            }
        }

        return true;
    }

    
private:
std::pair<bool, double> tryEliminateTrap(Value *TargetCond, bool TrapOnTrue, BasicBlock *PredBB, Z3Encoder &Encoder, LoopInfo &LI, DominatorTree &DT, LazyValueInfo *LVI, ScalarEvolution *SE, raw_fd_ostream &Log) {        std::queue<Value*> Worklist; 
        std::set<Value*> Visited;    

        Worklist.push(TargetCond);
        Visited.insert(TargetCond);

        // ==============================================================
        // PHASE 0: DOMINATING CONTEXT GUARDS
        //
        // The trap condition alone is almost never contradictory -- the
        // proof of impossibility lives in the guards the programmer
        // already wrote upstream (e.g. `if (len > MAX) return 0;`).
        //
        // Walk the dominator tree upward from the trap's branch block.
        // For every dominator D that ends in a conditional branch, if one
        // outgoing EDGE of D dominates the trap block, then every
        // execution reaching the trap took that edge on its last visit
        // to D. SSA immutability guarantees the condition's operands
        // still denote those same values at the trap, so the edge's
        // condition can be soundly asserted -- even across loops, since
        // loop-variant inputs are already over-approximated as free
        // variables.
        // ==============================================================
        std::vector<std::pair<Value*, bool>> Guards;
        for (DomTreeNode *N = DT.getNode(PredBB); N && N->getIDom(); N = N->getIDom()) {
            BasicBlock *D = N->getIDom()->getBlock();
            auto *DBr = dyn_cast<BranchInst>(D->getTerminator());
            if (!DBr || !DBr->isConditional()) continue;
            if (DBr->getSuccessor(0) == DBr->getSuccessor(1)) continue;

            Value *GCond = nullptr;
            bool GVal = true;
            if (DT.dominates(BasicBlockEdge(D, DBr->getSuccessor(0)), PredBB)) {
                GCond = DBr->getCondition(); GVal = true;
            } else if (DT.dominates(BasicBlockEdge(D, DBr->getSuccessor(1)), PredBB)) {
                GCond = DBr->getCondition(); GVal = false;
            }

            if (GCond) {
                Guards.push_back({GCond, GVal});

                std::string GS; raw_string_ostream OS(GS); GCond->print(OS);
                Log << "    -> Guard[" << (Guards.size()-1) << "] ("
                    << (GVal ? "true" : "false") << " edge of '" << D->getName()
                    << "'):" << OS.str() << "\n";

                // Slice the guard too, so its defining math is encoded.
                if (Visited.insert(GCond).second) Worklist.push(GCond);
            }
        }
        // ==============================================================
        // PHASE 0.5: DOMINATING llvm.assume FACTS
        // The optimizer's own recorded truths: if an assume dominates the
        // trap's branch block, its condition holds on every path there --
        // free, sound context by the same SSA argument as the guards.
        // ==============================================================
        for (BasicBlock &ABB : *PredBB->getParent()) {
            for (Instruction &AI : ABB) {
                auto *II = dyn_cast<IntrinsicInst>(&AI);
                if (!II || II->getIntrinsicID() != Intrinsic::assume) continue;
                if (!DT.dominates(II, PredBB)) continue;
                Value *ACond = II->getArgOperand(0);
                Guards.push_back({ACond, true});
                std::string GS; raw_string_ostream OS(GS); ACond->print(OS);
                Log << "    -> Guard[" << (Guards.size()-1) << "] (llvm.assume):"
                    << OS.str() << "\n";
                if (Visited.insert(ACond).second) Worklist.push(ACond);
            }
        }
        Log << "    -> Collected " << Guards.size() << " dominating context guard(s).\n";

        // PHASE 1: BACKWARD SLICE
        while (!Worklist.empty()) {
            Value *V = Worklist.front();
            Worklist.pop();

            Instruction *Inst = dyn_cast<Instruction>(V);
            if (!Inst) continue; 

            // --- THE NEW PHI / MEMORY LOGIC ---
            if (auto *Phi = dyn_cast<PHINode>(Inst)) {
                BasicBlock *PhiBB = Phi->getParent();
                Loop *L = LI.getLoopFor(PhiBB);
                
                if (L && L->getHeader() == PhiBB) {
                    if (DebugOracle) {
                        errs() << "    [DEBUG] Over-approximating Loop Header Phi: " << *Inst << "\n";
                    }
                    continue; // Stop slicing backwards, treat as a free variable!
                } else {
                    if (!collectPhiConditions(Phi, DT, Visited, Worklist, Log)) {
                        return {false, 0.0};
                    }
                    continue;
                }
            }

            // --- THE BOUNDARY LOGIC ---
            if (isa<LoadInst>(Inst) || isa<GetElementPtrInst>(Inst)) {
                if (DebugOracle) {
                    errs() << "    [DEBUG] Over-approximating Boundary: " << Inst->getOpcodeName() << "\n";
                }
                continue; 
            }
            if (auto *Call = dyn_cast<CallInst>(Inst)) {
                bool IsMathIntrinsic = false;
                if (Function *F = Call->getCalledFunction()) {
                    // Slice through the ENTIRE overflow family:
                    // sadd/ssub/smul/uadd/usub/umul.with.overflow
                    if (F->getName().contains(".with.overflow")) {
                        IsMathIntrinsic = true;
                    }
                }
                
                if (!IsMathIntrinsic) {
                    if (DebugOracle) {
                        errs() << "    [DEBUG] Over-approximating Alien Call\n";
                    }
                    continue;
                }
            }
            // ----------------------------------
            
            for (Use &U : Inst->operands()) {
                Value *Operand = U.get();
                if (Visited.find(Operand) == Visited.end()) {
                    Visited.insert(Operand);
                    Worklist.push(Operand);
                }
            }
        }


        try {
            // PHASE 2: FORWARD ENCODE (Reverse Post-Order so defs are encoded
            // before uses in the acyclic CFG -- prevents branch conditions
            // from silently becoming free variables.)
            Function *F = PredBB->getParent();
            ReversePostOrderTraversal<Function*> RPOT(F);
            for (BasicBlock *BB : RPOT) {
                for (Instruction &Inst : *BB) {
                    if (Visited.find(&Inst) != Visited.end()) {
                        if (!Encoder.encodeInstruction(&Inst, &DT, &LI)) {
                            Log << "    -> [Abort] Unsupported Instruction: " << Inst.getOpcodeName() << "\n";
                            errs() << "    -> [Abort] Unsupported Instruction: " << Inst.getOpcodeName() << "\n";
                            return {false, 0.0};
                        }
                    }
                }
            }

            // PHASE 2.5 (HEAVY TIER ONLY): BOUNDARY ANALYSIS FACTS
            // Free variables = over-approximation boundaries. Assert what
            // LLVM already knows about each (!range / KnownBits / LVI).
            // Context-side (pre-push): the vacuity audit is the alarm for
            // a bad fact import, and RM:/KB:/LVI: labels make unsat cores
            // attribute proofs to their fact source.
            if (HeavyMode) {
                FactEncoder Facts(Encoder, LVI, SE, DT,
                                  PredBB->getModule()->getDataLayout(),
                                  VacuityCheck, Log);
                unsigned NFacts = Facts.encodeBoundaryFacts(PredBB);
                Log << "    -> [heavy] " << NFacts << " analysis fact(s) on "
                    << Encoder.getFreeVariables().size() << " boundary value(s)\n";
            }
            // PHASE 3: ASSERT CONTEXT + TRAP CONDITION
            for (unsigned i = 0; i < Guards.size(); ++i) {
                if (VacuityCheck)
                    Encoder.assertConditionTracked(Guards[i].first, Guards[i].second,
                                                   "G" + std::to_string(i));
                else
                    Encoder.assertCondition(Guards[i].first, Guards[i].second);
            }
            Encoder.push();                                    // context | trap boundary
            
            if (VacuityCheck)
                Encoder.assertConditionTracked(TargetCond, TrapOnTrue, "TRAP");
            else
                Encoder.assertCondition(TargetCond, TrapOnTrue);

            auto [ResultString, QueryLatency] = Encoder.checkSatisfiability();
            Log << "    -> " << ResultString << "\n";
            bool IsUnsat = (ResultString.find("UNSAT") != std::string::npos);
            if (IsUnsat && VacuityCheck) {
                Log << "    -> Unsat core: " << Encoder.getUnsatCore() << "\n";

                // VACUITY AUDIT: an UNSAT only means "trap dead" if the guards
                // ALONE are satisfiable. A contradictory context makes every
                // query vacuously UNSAT (encoding bug or unreachable code).
                Encoder.pop();                                 // drop trap condition only
                auto [CtxResult, CtxLatency] = Encoder.checkSatisfiability();
                QueryLatency += CtxLatency;
                if (CtxResult.find("UNSAT") != std::string::npos) {
                    Log << "    -> [VACUOUS] guards alone are contradictory -- refusing to eliminate. Investigate!\n";
                    errs() << "    -> [VACUOUS] guards alone are contradictory -- refusing to eliminate. Investigate!\n";
                    return {false, QueryLatency};
                }
                Log << "    -> [vacuity-ok] context alone is satisfiable\n";
            }
            if (DebugOracle || IsUnsat) {
                errs() << "    -> " << ResultString << "\n";
            }
            return {IsUnsat, QueryLatency};
            
        } catch (const z3::exception &e) {
            // Sort mismatch or any other Z3 throw: degrade to "can't prove it,
            // keep the trap" instead of std::terminate'ing the whole opt process.
            Log << "    -> [Skip] Z3 exception: " << e.msg() << "\n";
            errs() << "    -> [Skip] Z3 exception: " << e.msg() << "\n";
            return {false, 0.0};
        } catch (const std::exception &e) {
            Log << "    -> [Skip] C++ exception: " << e.what() << "\n";
            errs() << "    -> [Skip] C++ exception: " << e.what() << "\n";
            return {false, 0.0};
        }
    }
};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "OraclePass", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](StringRef Name, FunctionPassManager &FPM,
                       ArrayRef<PassBuilder::PipelineElement>) {
                        if (!Name.consume_front("oracle-pass"))
                            return false;
                        bool Vacuity = false;
                        bool Heavy = false;
                        bool TierSeen = false;            // reject <light;heavy>
                        unsigned TimeoutMs = 10000;
                        if (!Name.empty()) {              // parse "<a;b;...>"
                            if (!Name.consume_front("<") || !Name.consume_back(">"))
                                return false;
                            SmallVector<StringRef, 4> Parts;
                            Name.split(Parts, ';');
                            for (StringRef P : Parts) {
                                P = P.trim();
                                if (P == "vacuity")
                                    Vacuity = true;
                                else if (P == "light" || P == "heavy") {
                                    if (TierSeen)
                                        return false;   // contradictory tiers
                                    TierSeen = true;
                                    Heavy = (P == "heavy");
                                } else if (P.consume_front("timeout=")) {
                                    if (P.getAsInteger(10, TimeoutMs))
                                        return false;   // malformed number
                                } else if (!P.empty())
                                    return false;       // unknown parameter
                            }
                        }
                        FPM.addPass(OraclePass(Vacuity, Heavy, TimeoutMs));
                        return true;
                    }
                );
            }};
}