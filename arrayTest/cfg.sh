clang -emit-llvm test.c -c  -o test.bc
opt -load  ./CFGPass.so -CFG test.bc
