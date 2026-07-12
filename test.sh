#!/usr/bin/env bash

set -euo pipefail

# cmake -S llvm -B build \
#     -DCMAKE_BUILD_TYPE=Debug \
#     -DLLVM_TARGETS_TO_BUILD=X86 \
#     -DLLVM_ENABLE_ASSERTIONS=ON

# cmake --build build --target llc -j$(nproc)

./build/bin/llc -debug-only=isel ./test.ll -o /dev/null 2>&1 | less
