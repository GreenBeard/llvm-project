#!/usr/bin/env bash

set -euo pipefail

# cmake --build build --target llc -j$(nproc)

./build/bin/llc -debug-only=isel ./test.ll -o /dev/null 2>&1 | less
