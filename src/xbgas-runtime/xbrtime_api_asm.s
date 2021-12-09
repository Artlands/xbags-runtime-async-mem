#
# _XBRTIME_API_ASM_S
#
# A replica of xbgas runtime library

  .file "xbrtime_api_asm.s"
  .text
  .align 1

  # ---------------------------------------------------
  # xBGAS ASM API functions are formatted as follows:
  # __xbrtime_{get,put}_OPERAND_{seq,agg}
  #   where,
  #   - {get,put} correponds to receive and send
  #   - OPERAND is one of:
  #     - u1 = unsigned one byte
  #     - u2 = unsigned two byte
  #     - u4 = unsigned four byte
  #     - u8 = unsigned eight byte
  #     - s1 = signed one byte
  #     - s2 = signed two byte
  #     - s4 = signed four byte
  #     - s8 = signed eight byte
  #   - {seq,agg} corresponds to sequential
  #             and aggregated transfers
  # ---------------------------------------------------
  # Calling Convention
  #   - a0 = base src address
  #   - a1 = base dest address
  #   - a2 = remote pe
  #   - a3 = nelems
  #   - a4 = stride (in bytes)
  # ---------------------------------------------------

  # ---------------------------------------------------
  .global __xbrtime_get_u8_seq
  .type __xbrtime_get_u8_seq, @function
__xbrtime_get_u8_seq:
  # e10 = a2 + 0, store the remote pe address in e10
  eaddie e10, a2, 0
  mv x31, zero
.get_u8_seq:
  # a0 corresponds to x10; x30 temporaries
  # x30 = addr([127-64]e10-[63-0]a0) + 0, load value from address in a0 of
  # remote pe with to x30
  eld x30, 0(a0)
  add a0, a0, a4
  add x31, x31, 1
  # sd, store 64-bit (double word) values in x30 into the memory location
  # pointed to by a1 with 0 offset.
  sd x30, 0(a1)
  add a1, a1, a4
  bne x31, a3, .get_u8_seq
  ret
  .size __xbrtime_get_u8_seq, .-__xbrtime_get_u8_seq
  # ---------------------------------------------------
  .global __xbrtime_get_u8_agg
  .type __xbrtime_get_u8_agg, @function
__xbrtime_get_u8_agg:
  eaddie e10, a2, 0
  # the encoding of eag is not known yet
  eag x31, a3, a1
  eld x30, 0(a0)
  ret
  .size __xbrtime_get_u8_agg, .-__xbrtime_get_u8_agg
  