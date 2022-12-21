#pragma once

#include <llvm/IR/PassManager.h>

namespace llvm {

class EquivalenceCheckPass : public PassInfoMixin<EquivalenceCheckPass> {
public:
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM);
};

} // namespace llvm
