#include "Z3Encoder.h"
#include "llvm/Support/raw_ostream.h"
#include <chrono>
#include <string>
#include <sstream>

using namespace llvm;

Z3Encoder::Z3Encoder() : Solver(Ctx) {}

// --- Handle unnamed LLVM IR values ---
std::string getSafeName(Value *Val) {
    if (Val->hasName()) return Val->getName().str();
    return "unnamed_" + std::to_string(reinterpret_cast<uintptr_t>(Val));
}

z3::expr Z3Encoder::getOrCreateZ3Expr(Value *Val) {
    auto it = ValueMap.find(Val);
    if (it != ValueMap.end()) {
        return it->second; 
    }

    if (auto *CI = dyn_cast<ConstantInt>(Val)) {
        if (CI->getType()->isIntegerTy(1)) {
            z3::expr z3_bool = Ctx.bool_val(CI->getZExtValue() != 0);
            ValueMap.insert({Val, z3_bool});
            return z3_bool;
        }
        
        // DYNAMIC WIDTH: Read exact bit-width from LLVM type
        unsigned BitWidth = CI->getType()->getIntegerBitWidth();
        uint64_t val = CI->getZExtValue();
        z3::expr z3_const = Ctx.bv_val((unsigned)val, BitWidth); 
        ValueMap.insert({Val, z3_const});
        return z3_const;
    }

    if (DebugOracle) {
        errs() << "    [WIRETAP] Creating FREE SMT VARIABLE for: " << getSafeName(Val) << "\n";
    }

    if (Val->getType()->isIntegerTy(1)) {
        z3::expr new_bool = Ctx.bool_const(getSafeName(Val).c_str());
        ValueMap.insert({Val, new_bool});
        return new_bool;
    }

    if (Val->getType()->isIntegerTy()) {
        unsigned BitWidth = Val->getType()->getIntegerBitWidth();
        z3::expr new_var = Ctx.bv_const(getSafeName(Val).c_str(), BitWidth);
        ValueMap.insert({Val, new_var});
        return new_var;
    }

    z3::expr unk = Ctx.int_const(getSafeName(Val).c_str());
    ValueMap.insert({Val, unk});
    return unk;
}


bool Z3Encoder::buildPathCondDFS(BasicBlock *Current, BasicBlock *Target, BasicBlock *PhiBB, std::vector<std::pair<Value*, bool>> &CurrentPath, std::vector<z3::expr> &ValidPaths, std::set<BasicBlock*> &PathVis, int depth) {
    if (depth > 50) return false;

    if (Current == Target) {
        // SUCCESS: We found a valid path! Now it is safe to evaluate the SMT conditions.
        z3::expr path_cond = Ctx.bool_val(true);
        for (auto &Edge : CurrentPath) {
            z3::expr c = getOrCreateZ3Expr(Edge.first);
            if (Edge.second) { // True edge
                path_cond = path_cond && c;
            } else {           // False edge
                path_cond = path_cond && !c;
            }
        }
        ValidPaths.push_back(path_cond);
        return true;
    }

    if (Current == PhiBB) return false;

    PathVis.insert(Current);
    bool foundPath = false;

    auto *Term = Current->getTerminator();
    if (auto *Br = dyn_cast<BranchInst>(Term)) {
        if (Br->isConditional()) {
            for (unsigned i = 0; i < 2; ++i) {
                BasicBlock *Succ = Br->getSuccessor(i);
                if (PathVis.find(Succ) == PathVis.end()) {
                    // Record the condition and whether we took True (0) or False (1)
                    CurrentPath.push_back({Br->getCondition(), i == 0});
                    
                    if (buildPathCondDFS(Succ, Target, PhiBB, CurrentPath, ValidPaths, PathVis, depth + 1)) {
                        foundPath = true;
                    }
                    
                    CurrentPath.pop_back(); // Backtrack
                }
            }
        } else {
            BasicBlock *Succ = Br->getSuccessor(0);
            if (PathVis.find(Succ) == PathVis.end()) {
                if (buildPathCondDFS(Succ, Target, PhiBB, CurrentPath, ValidPaths, PathVis, depth + 1)) {
                    foundPath = true;
                }
            }
        }
    }

    PathVis.erase(Current);
    return foundPath;
}

bool Z3Encoder::encodeInstruction(Instruction *Inst, DominatorTree *DT) {
    if (DebugOracle) {
        errs() << "    [DEBUG] Visiting Instruction: " << Inst->getOpcodeName() << " (" << getSafeName(Inst) << ")\n";
    }

    // If we already encoded it during our slice, skip
    if (ValueMap.find(Inst) != ValueMap.end()) return true;

    if (auto *BinOp = dyn_cast<BinaryOperator>(Inst)) {
        z3::expr op1 = getOrCreateZ3Expr(BinOp->getOperand(0));
        z3::expr op2 = getOrCreateZ3Expr(BinOp->getOperand(1));
        z3::expr res(Ctx);

        switch (BinOp->getOpcode()) {
            case Instruction::Add:  res = op1 + op2; break;
            case Instruction::Sub:  res = op1 - op2; break;
            case Instruction::Mul:  res = op1 * op2; break;
            case Instruction::SDiv: res = op1 / op2; break;
            case Instruction::UDiv: res = z3::udiv(op1, op2); break;
            case Instruction::SRem: res = z3::srem(op1, op2); break;
            case Instruction::URem: res = z3::urem(op1, op2); break;
            case Instruction::And:  res = op1.is_bool() ? (op1 && op2) : (op1 & op2); break;
            case Instruction::Or:   res = op1.is_bool() ? (op1 || op2) : (op1 | op2); break;
            case Instruction::Xor:  res = op1.is_bool() ? (op1 != op2) : (op1 ^ op2); break;
            default: 
                errs() << "    -> [Z3Encoder] Unsupported BinOp: " << Inst->getOpcodeName() << "\n"; 
                return false; 
        }
        ValueMap.insert({Inst, res});
        return true;
    } 
    else if (auto *Cmp = dyn_cast<ICmpInst>(Inst)) {
        z3::expr op1 = getOrCreateZ3Expr(Cmp->getOperand(0));
        z3::expr op2 = getOrCreateZ3Expr(Cmp->getOperand(1));
        z3::expr res(Ctx);

        switch (Cmp->getPredicate()) {
            case CmpInst::ICMP_EQ:  res = (op1 == op2); break;
            case CmpInst::ICMP_NE:  res = (op1 != op2); break;
            case CmpInst::ICMP_SGT: res = (op1 > op2); break;
            case CmpInst::ICMP_SGE: res = (op1 >= op2); break;
            case CmpInst::ICMP_SLT: res = (op1 < op2); break;
            case CmpInst::ICMP_SLE: res = (op1 <= op2); break;
            case CmpInst::ICMP_UGT: res = z3::ugt(op1, op2); break;
            case CmpInst::ICMP_UGE: res = z3::uge(op1, op2); break;
            case CmpInst::ICMP_ULT: res = z3::ult(op1, op2); break;
            case CmpInst::ICMP_ULE: res = z3::ule(op1, op2); break;
            default: 
                errs() << "    -> [Z3Encoder] Unsupported Cmp: " << Inst->getOpcodeName() << "\n"; 
                return false;
        }
        ValueMap.insert({Inst, res});
        return true;
    }
    else if (auto *Cast = dyn_cast<CastInst>(Inst)) {
        z3::expr src = getOrCreateZ3Expr(Cast->getOperand(0));
        unsigned src_width = Cast->getSrcTy()->getIntegerBitWidth();
        unsigned dst_width = Cast->getDestTy()->getIntegerBitWidth();
        z3::expr res(Ctx);

        if (isa<TruncInst>(Inst)) {
            res = src.extract(dst_width - 1, 0); // Z3 extract is inclusive (high_bit, low_bit)
        } else if (isa<ZExtInst>(Inst)) {
            res = z3::zext(src, dst_width - src_width); // Z3 requires the delta, not the new size
        } else if (isa<SExtInst>(Inst)) {
            res = z3::sext(src, dst_width - src_width);
        } else {
            errs() << "    -> [Z3Encoder] Unsupported Cast: " << Inst->getOpcodeName() << "\n";
            return false;
        }
        ValueMap.insert({Inst, res});
        return true;
    }

    else if (auto *ExtVal = dyn_cast<ExtractValueInst>(Inst)) {
        // 1. Get the Call instruction that generated the struct
        Value *Agg = ExtVal->getAggregateOperand();
        auto *Call = dyn_cast<CallInst>(Agg);
        
        if (!Call || !Call->getCalledFunction()) {
            errs() << "    -> [Z3Encoder] Unsupported ExtractValue source\n";
            return false;
        }

        StringRef IntrinsicName = Call->getCalledFunction()->getName();
        
        // 2. We only care about Signed Addition Overflow right now
        if (IntrinsicName.starts_with("llvm.sadd.with.overflow")) {
            z3::expr op1 = getOrCreateZ3Expr(Call->getArgOperand(0));
            z3::expr op2 = getOrCreateZ3Expr(Call->getArgOperand(1));
            
            // ExtractValue takes an array of indices. We only care about the first one.
            unsigned Index = ExtVal->getIndices()[0];
            z3::expr res(Ctx);

            if (Index == 0) {
                // Index 0: The standard math result
                res = op1 + op2;
            } else if (Index == 1) {
                // Index 1: The Overflow Flag
                // SMT-LIB logic: Extending to N+1 bits to cleanly check for overflow
                unsigned bw = op1.get_sort().bv_size();
                z3::expr ext_op1 = z3::sext(op1, 1);
                z3::expr ext_op2 = z3::sext(op2, 1);
                z3::expr ext_add = ext_op1 + ext_op2;
                
                // If the N+1 bit addition doesn't fit in the original N bits, it overflowed!
                // FIXED: Explicitly cast to uint64_t to resolve compiler ambiguity
                z3::expr max_val = Ctx.bv_val(static_cast<uint64_t>((1ull << (bw - 1)) - 1), bw + 1);
                z3::expr min_val = z3::sext(Ctx.bv_val(static_cast<uint64_t>(1ull << (bw - 1)), bw), 1);
                
                res = (ext_add > max_val) || (ext_add < min_val);
            } else {
                return false;
            }

            ValueMap.insert({Inst, res});
            
            if (DebugOracle) {
                errs() << "    [DEBUG] Successfully inserted ExtractValueInst into ValueMap: " << getSafeName(Inst) << "\n";
            }

            return true;
        }

        errs() << "    -> [Z3Encoder] Unsupported Intrinsic: " << IntrinsicName << "\n";
        return false;
    }

    else if (auto *Call = dyn_cast<CallInst>(Inst)) {
        if (Function *F = Call->getCalledFunction()) {
            StringRef Name = F->getName();
            // Allow the slicer to pass through known overflow intrinsics
            if (Name.starts_with("llvm.sadd.with.overflow") || Name.starts_with("llvm.ssub.with.overflow")) {
                return true; 
            }
        }
    }
    
    else if (auto *Phi = dyn_cast<PHINode>(Inst)) {
        if (!DT) return false;

        BasicBlock *PhiBB = Phi->getParent();
        DomTreeNode *Node = DT->getNode(PhiBB);
        if (!Node || !Node->getIDom()) return false;
        BasicBlock *IDomBB = Node->getIDom()->getBlock();

        // Base case: Start with the first incoming value as our fallback
        z3::expr res = getOrCreateZ3Expr(Phi->getIncomingValue(0));

        // Fold the remaining incoming values into a nested ITE chain
        for (unsigned i = 1; i < Phi->getNumIncomingValues(); ++i) {
            BasicBlock *TargetBB = Phi->getIncomingBlock(i);
            Value *IncVal = Phi->getIncomingValue(i);
            
            std::vector<z3::expr> ValidPaths;
            std::set<BasicBlock*> PathVis;
            std::vector<std::pair<Value*, bool>> CurrentPath;

            // Notice we pass CurrentPath instead of start_cond now
            if (!buildPathCondDFS(IDomBB, TargetBB, PhiBB, CurrentPath, ValidPaths, PathVis, 0) || ValidPaths.empty()) {
                return false;
            }

            // If there are multiple paths to this block, OR them together
            z3::expr path_cond = ValidPaths[0];
            for (size_t j = 1; j < ValidPaths.size(); ++j) {
                path_cond = path_cond || ValidPaths[j];
            }

            // Chain it: If ANY valid path was taken, use this value. Otherwise, fall back.
            z3::expr val_expr = getOrCreateZ3Expr(IncVal);
            res = z3::ite(path_cond, val_expr, res);
        }

        ValueMap.insert({Inst, res});
        return true;
    }
    
    // Catch-all for anything else (Intrinsics, ExtractValue, PHI, etc.)
    errs() << "    -> [Z3Encoder] Unsupported Instruction: " << Inst->getOpcodeName() << "\n";
    return false;
}

void Z3Encoder::assertCondition(Value *Cond, bool IsTrue) {
    if (DebugOracle) {
        errs() << "\n    [DEBUG] assertCondition called for TargetCond: " << Cond->getName() << "\n";
    
        if (ValueMap.find(Cond) == ValueMap.end()) {
            errs() << "    [DEBUG ERROR] Cond was NOT in ValueMap! Falling back to unconstrained variable.\n";
        } else {
            errs() << "    [DEBUG SUCCESS] Cond FOUND in ValueMap. SMT Formula:\n" << ValueMap.at(Cond).to_string() << "\n";
        }
    }
    
    z3::expr z3_cond = getOrCreateZ3Expr(Cond);
    if (!IsTrue) {
        z3_cond = !z3_cond;
    }
    Solver.add(z3_cond);
}

std::pair<std::string, double> Z3Encoder::checkSatisfiability() {
    auto start_time = std::chrono::high_resolution_clock::now();
    z3::check_result result = Solver.check();
    auto end_time = std::chrono::high_resolution_clock::now();
    
    std::chrono::duration<double, std::milli> latency = end_time - start_time;
    double raw_latency = latency.count();

    std::string status;
    switch (result) {
        case z3::unsat:   status = "UNSAT (Dead Code / Impossible Path)"; break;
        case z3::sat: {
            status = "SAT (WARNING: Potential Integer Overflow Bug Detected!)"; 
            if (DebugOracle) {
                errs() << "\n    ================ Z3 SMT-LIB DUMP ================\n";
                errs() << Solver.to_smt2() << "\n";
                errs() << "    ================ Z3 MODEL DUMP ==================\n";
                std::ostringstream model_stream;
                model_stream << Solver.get_model();
                errs() << model_stream.str() << "\n";
                errs() << "    =================================================\n";
            }
            break;
        }
        case z3::unknown: status = "UNKNOWN (Solver gave up)"; break;
        default:          status = "ERROR"; break;
    }

    std::string output = status + " [Query Latency: " + std::to_string(raw_latency) + " ms]";
    return {output, raw_latency};
}