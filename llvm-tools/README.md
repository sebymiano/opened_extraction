# How to run the pass

First of all, if you want to compile with a custom version of LLMV, run the following command:

```console
mkdir build; cd build
cmake -DLLVM_ROOT=$HOME/dev/clang+llvm-15.0.6 ..
make
```

```console
opt -disable-output -load-pass-plugin=<plugin_folder>/EquivalenceCheckPass.so ./test-programs/balancer_kern.ll -passes=EquivalanceCheckPass
```