.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn pow, global
/* 802CB218 002947D8  4B FF CF 84 */	b __ieee754_pow
.endfn pow
