#include "llvm/ADT/SmallVector.h"
#include "llvm/Bitcode/BitcodeReader.h"
#include "llvm/Bitcode/BitcodeWriter.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Error.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/MemoryBuffer.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/FunctionComparator.h"
#include <algorithm>
#include <memory>
#include <string>
#include <system_error>
#include <vector>

#include "EquivalenceCheck.h"

using namespace llvm;

cl::OptionCategory EqCategory("equivalance-check Options");

static cl::opt<bool>
    ListFuncs("l", cl::desc("Enable this to list all function in the provided file"),
              cl::cat(EqCategory));

static cl::opt<std::string> FirstFile("f1", cl::Required,
                                      cl::desc("First LLVM file"),
                                      cl::value_desc("filename"),
                                      cl::cat(EqCategory));

static cl::opt<std::string> FistFunctionName("f1_name", cl::Optional,
                                      cl::desc("Name of the first LLVM file function"),
                                      cl::value_desc("func-name"),
                                      cl::cat(EqCategory));

static cl::opt<std::string> SecondFile("f2", cl::Required,
                                      cl::desc("Second LLVM file"),
                                      cl::value_desc("filename"),
                                      cl::cat(EqCategory));

static cl::opt<std::string> SecondFunctionName("f2_name", cl::Optional,
                                      cl::desc("Name of the second LLVM file function"),
                                      cl::value_desc("func-name"),
                                      cl::cat(EqCategory));

int main(int argc, char **argv) {
    cl::HideUnrelatedOptions(EqCategory);
    cl::ParseCommandLineOptions(argc, argv, "Check equivalance between two modules");

    ExitOnError ExitOnErr("equivalance-check: ");
    LLVMContext Context;
    GlobalNumberState GlobalNumbers;

    SMDiagnostic Err;
    std::unique_ptr<Module> first_module = parseIRFile(FirstFile, Err, Context);
    if (!first_module) {
        Err.print(argv[0], errs());
        return 1;
    }

    std::unique_ptr<Module> second_module = parseIRFile(SecondFile, Err, Context);
    if (!second_module) {
        Err.print(argv[0], errs());
        return 1;
    }

    if (ListFuncs) {
        outs() << "First module function list" << "\n";
        for (auto &func : first_module->getFunctionList()) {
            outs() << "Function name: " << func.getName() << "\n";
        }
    
        outs() << "Second module function list" << "\n";
        for (auto &func : second_module->getFunctionList()) {
            outs() << "Function name: " << func.getName() << "\n";
        }
        return 0;
    }

    Function *f1_func = first_module->getFunction(FistFunctionName);
    if (!f1_func) {
        Err.print(argv[0], errs());
        return 1;
    }

    Function *f2_func = second_module->getFunction(SecondFunctionName);
    if (!f2_func) {
        Err.print(argv[0], errs());
        return 1;
    }

    outs() << "Start checking the equivalence between the modules" << "\n";

    int Res1 = FunctionComparator(f1_func, f2_func, &GlobalNumbers).compare();
    // int Res2 = FunctionComparator(f2_func, f1_func, &GlobalNumbers).compare();

    outs() << "[1] Results of comparison of the two functions is: " << Res1 << "\n";
    // outs() << "[2] Results of comparison of the two functions is: " << Res2 << "\n";
    return 0;
}