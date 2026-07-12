#!/usr/bin/env bash

set -euo pipefail

# cmake -S llvm -B build \
#     -DCMAKE_BUILD_TYPE=Debug \
#     -DLLVM_TARGETS_TO_BUILD=X86 \
#     -DLLVM_ENABLE_ASSERTIONS=ON \
#     -DLLVM_USE_LINKER=lld

# cmake --build build --target llc -j$(nproc)

# git diff-files --quiet && { git clang-format 43df6450eb37a47b89c027828cd35a4ab399640f || { git add -u && git commit -m "format"; }; }

./build/bin/llc -debug-only=isel ./test.ll -o /dev/null 2>&1 | less
