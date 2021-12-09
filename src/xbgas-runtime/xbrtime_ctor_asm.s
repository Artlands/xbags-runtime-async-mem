#
# _XBRTIME_CTOR_ASM_S
#
# A replica of xbgas runtime library

  .file "xbrtime_ctor_asm.s"
  .text
  .align 1

  .global __xbrtime_ctor_reg_reset
  .type __xbrtime_ctor_reg_reset, @function
__xbrtime_ctor_reg_reset:
  eaddie e14, zero, 0
  eaddie e15, zero, 0
  eaddie e16, zero, 0
  eaddie e17, zero, 0
  eaddie e18, zero, 0
  eaddie e19, zero, 0
  eaddie e20, zero, 0
  eaddie e21, zero, 0
  eaddie e22, zero, 0
  eaddie e23, zero, 0
  eaddie e24, zero, 0
  eaddie e25, zero, 0
  eaddie e26, zero, 0
  eaddie e27, zero, 0
  eaddie e28, zero, 0
  eaddie e29, zero, 0
  eaddie e30, zero, 0
  eaddie e31, zero, 0
  ret
  .size __xbrtime_ctor_reg_reset, .-__xbrtime_ctor_reg_reset
