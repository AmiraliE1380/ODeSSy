#include "Z3Encoder.h"
#include "llvm/Support/raw_ostream.h"
#include <chrono>
#include <string>

using namespace llvm;

Z3Encoder::Z3Encoder() : Solver(Ctx) {}

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

    if (Val->getType()->isIntegerTy(1)) {
        z3::expr new_bool = Ctx.bool_const(Val->getName().str().c_str());
        ValueMap.insert({Val, new_bool});
        return new_bool;
    }

    // DYNAMIC WIDTH: Read exact bit-width for variables
    if (Val->getType()->isIntegerTy()) {
        unsigned BitWidth = Val->getType()->getIntegerBitWidth();
        z3::expr new_var = Ctx.bv_const(Val->getName().str().c_str(), BitWidth);
        ValueMap.insert({Val, new_var});
        return new_var;
    }

    // Fallback for pointers/structs - should rarely be hit in our pure math slice
    z3::expr unk = Ctx.int_const(Val->getName().str().c_str());
    ValueMap.insert({Val, unk});
    return unk;
}

bool Z3Encoder::encodeInstruction(Instruction *Inst, DominatorTree *DT) {
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
            BasicBlock *WalkBB = Phi->getIncomingBlock(i);
            Value *IncVal = Phi->getIncomingValue(i);
            
            z3::expr path_cond = Ctx.bool_val(true);

            // Trace backward to the IDom to collect the exact path condition
            while (WalkBB != IDomBB && WalkBB != nullptr) {
                BasicBlock *PredBB = WalkBB->getSinglePredecessor();
                if (!PredBB) return false; // Safety check

                auto *Br = dyn_cast<BranchInst>(PredBB->getTerminator());
                if (Br && Br->isConditional()) {
                    z3::expr cond = getOrCreateZ3Expr(Br->getCondition());
                    // Did we take the True or False edge to get here?
                    if (Br->getSuccessor(0) == WalkBB) {
                        path_cond = path_cond && cond;
                    } else {
                        path_cond = path_cond && !cond;
                    }
                }
                WalkBB = PredBB;
            }

            if (WalkBB == nullptr) return false;

            // Chain it: If this path was taken, use this value. Otherwise, fall back.
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
        case z3::sat:     status = "SAT (WARNING: Potential Integer Overflow Bug Detected!)"; break;
        case z3::unknown: status = "UNKNOWN (Solver gave up)"; break;
        default:          status = "ERROR"; break;
    }

    std::string output = status + " [Query Latency: " + std::to_string(raw_latency) + " ms]";
    return {output, raw_latency};
}