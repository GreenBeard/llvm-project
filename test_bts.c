#include <stdint.h>

uint64_t bts64_mod64(uint64_t input, uint64_t pos) {
  return input | 1ULL << pos;
}

uint32_t bts32_mod64(uint32_t input, uint32_t pos) {
  return input | 1ULL << pos;
}

uint16_t bts16_mod64(uint16_t input, uint16_t pos) {
  return input | 1ULL << pos;
}
