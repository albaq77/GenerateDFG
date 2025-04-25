#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/Support/FileSystem.h" // 包含文件系统支持
#include <fstream>

using namespace llvm;

namespace {
  struct GlobalAndBBPrinter : public ModulePass {
    static char ID;
    GlobalAndBBPrinter() : ModulePass(ID) {}

    bool runOnModule(Module &M) override {
      const DataLayout &DL = M.getDataLayout();
      std::ofstream Out("/tmp/output_llvm39.txt");

      // 打印全局变量信息
      for (const GlobalVariable &GV : M.globals()) {
        Type *Ty = GV.getType()->getElementType();
        uint64_t Size = DL.getTypeAllocSize(Ty);
        const MDNode *N = GV.getMetadata("dbg");

        if (N) {
          if (auto *DIGV = dyn_cast<DIGlobalVariable>(N)) {
            Out << "Global Variable: " << GV.getName().str()
                << ", Size: " << Size
                << ", Declared in: " << DIGV->getFilename().str() << ":" << DIGV->getLine() << "\n";
            continue;
          }
        }

        Out << "Global Variable: " << GV.getName().str()
            << ", Size: " << Size
            << ", Declared in: [unknown]\n";
      }

      // 打印基本块信息
      for (Function &F : M) {
        if (F.isDeclaration()) continue;
        int bbIndex = 0;
        for (BasicBlock &BB : F) {
          Out << "Function: " << F.getName().str()
              << ", BasicBlock " << bbIndex++ << "\n" 
              << ", Instructions: " << "\n";;
          for (Instruction &I : BB) {
            // 手动格式化并输出指令信息
            Out << I.getOpcodeName(); // 输出操作码名称
            for (auto &Op : I.operands()) {
              Out << " " << Op->getName().str(); // 输出每个操作数的名称
            }
            Out << "\n";
          }
        }
      }

      Out.close();
      return false;
    }
  };
}

char GlobalAndBBPrinter::ID = 1;
static RegisterPass<GlobalAndBBPrinter> X("globalbbpass", "Global and BasicBlock Printer Pass", false, false);
