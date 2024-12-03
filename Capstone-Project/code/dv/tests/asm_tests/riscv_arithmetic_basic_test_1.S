.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x2, 0x40001104
                  csrw 0x301, x2
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 0
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  li x2, 0x0
                  csrw 0x304, x2 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x49fb4e1b
                  li x3, 0x0
                  li x4, 0xb
                  li x5, 0xd
                  li x6, 0x0
                  li x7, 0xf5b40330
                  li x8, 0x21ea48de
                  li x10, 0x7
                  li x11, 0x4
                  li x12, 0xfa21e5e0
                  li x13, 0xf91088b5
                  li x14, 0x5e89c27a
                  li x15, 0xf5f759ac
                  li x16, 0x5
                  li x17, 0x0
                  li x18, 0xf882237d
                  li x19, 0x0
                  li x20, 0xff5cec06
                  li x21, 0x7
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x1845d15c
                  li x26, 0xf796e9e8
                  li x27, 0x80000000
                  li x28, 0x6
                  li x29, 0xcef5a68e
                  li x30, 0x80000000
                  li x31, 0x0
                  la x9, user_stack_end
main:             li         t6, 0x0 #start riscv_int_numeric_corner_stream_7
                  li         a5, 0x2aee303b
                  li         t4, 0x1
                  li         s10, 0x1
                  li         a3, 0x171ff044
                  li         t0, 0x1
                  li         s8, 0x1a519165
                  li         t3, 0x0
                  li         a2, 0x0
                  li         s9, 0x0
                  rem         a3, s7, t2
                  mulhu       a0, t5, t4
                  c.mv        s5, s2
                  sub         s10, t0, t5
                  c.add       a0, s9
                  add         a7, t2, t0
                  c.lui       t3, 24
                  c.addi16sp  sp, -16
                  auipc       zero, 415117
                  addi        s3, a4, -1602
                  c.nop
                  sub         t2, zero, a0
                  divu        s0, sp, s6
                  c.nop
                  mulhu       sp, s4, s7 #end riscv_int_numeric_corner_stream_7
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_8
                  li         sp, 0x0
                  li         a0, 0x0
                  li         t3, 0x33fc31d1
                  li         a4, 0x134e53bc
                  li         t6, 0x1
                  li         s10, 0x0
                  li         s8, 0x1
                  li         s7, 0x0
                  li         a2, 0x0
                  rem         a6, a3, s7
                  nop
                  lui         zero, 967213
                  c.lui       gp, 26
                  divu        s3, s9, a7
                  mulhu       sp, t0, t6
                  c.addi4spn  a2, sp, 560
                  mulhu       gp, zero, ra
                  sub         t3, s3, s3
                  c.nop
                  c.sub       a1, a3
                  mul         t2, s5, s6
                  div         t0, a4, s0
                  auipc       t2, 402383
                  rem         a6, t0, t6
                  c.nop
                  sub         a4, a1, sp
                  sub         t6, s9, sp
                  c.nop
                  div         a0, a2, s2 #end riscv_int_numeric_corner_stream_8
                  li         t6, 0x1 #start riscv_int_numeric_corner_stream_9
                  li         t4, 0x1
                  li         a3, 0x0
                  li         s4, 0x166d7e69
                  li         s9, 0x0
                  li         s10, 0x1
                  li         s11, 0x15834e67
                  li         t3, 0x0
                  li         a2, 0x4c297a11
                  li         s8, 0x1
                  c.mv        a5, s2
                  auipc       zero, 86115
                  add         a3, t0, s1
                  auipc       t6, 17081
                  sub         zero, a3, t1
                  c.add       t0, sp
                  mulhu       t2, tp, s3
                  c.add       a7, a3
                  mul         ra, t5, s8
                  c.addi      t4, -1
                  sub         zero, s11, s11
                  lui         s8, 168591
                  nop
                  mulhsu      s7, s7, a2
                  c.addi      gp, -1
                  mulh        t1, a0, a6
                  c.addi16sp  sp, -16
                  c.add       t2, a0
                  div         sp, gp, s4
                  lui         a0, 421076
                  c.lui       s11, 27
                  mul         s4, s1, s8
                  auipc       tp, 987232
                  mulhsu      s9, s7, s0 #end riscv_int_numeric_corner_stream_9
                  li         s9, 0x1 #start riscv_int_numeric_corner_stream_17
                  li         t6, 0x0
                  li         t4, 0x0
                  li         t3, 0x781890dd
                  li         t2, 0x11caaa71
                  li         gp, 0x0
                  li         s8, 0x0
                  li         s4, 0x0
                  li         s10, 0x0
                  li         a4, 0x0
                  add         a2, t3, a4
                  c.add       a5, a4
                  c.nop
                  add         a0, a3, a2
                  mul         s3, s10, a7
                  mulhu       sp, s2, s0
                  mulh        a7, zero, t0
                  mulh        a3, a3, tp
                  addi        s8, s1, 1849
                  lui         s11, 849789
                  auipc       t3, 809236
                  c.sub       a1, a2
                  nop
                  c.lui       ra, 8
                  c.nop
                  sub         s0, s9, t5
                  rem         zero, t0, s2
                  c.sub       a3, s1
                  addi        a6, t2, 1400
                  c.li        ra, 27
                  c.add       s5, t4
                  rem         s5, s9, a2
                  addi        a1, ra, 1859
                  div         s3, gp, t3
                  mulh        t4, s3, s8
                  c.sub       a2, a1
                  nop #end riscv_int_numeric_corner_stream_17
                  li         t6, 0x1 #start riscv_int_numeric_corner_stream_4
                  li         a7, 0x0
                  li         t4, 0x0
                  li         t3, 0x0
                  li         a5, 0x395f5e49
                  li         sp, 0x1
                  li         s11, 0x51a29923
                  li         s9, 0x0
                  li         a6, 0x0
                  li         s10, 0x1
                  lui         sp, 995771
                  mulhsu      t1, t3, s9
                  c.add       s0, a0
                  nop
                  mulhu       t1, a1, a4
                  c.addi16sp  sp, -16
                  auipc       zero, 622608
                  c.lui       t3, 27
                  c.mv        t3, s10
                  c.addi      s9, -1
                  rem         t3, a5, s6
                  mul         t2, s1, t2
                  mulhsu      s2, t0, a5
                  nop
                  nop
                  mul         ra, s11, t1
                  c.addi      s11, -1
                  c.lui       s4, 1
                  c.addi4spn  a1, sp, 592
                  auipc       s2, 245261
                  c.sub       a1, a0
                  auipc       t1, 805694
                  mul         a2, s11, t6
                  c.sub       a2, a5
                  mulhsu      a4, s6, a1 #end riscv_int_numeric_corner_stream_4
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_18
                  li         s9, 0x0
                  li         t4, 0x1
                  li         t3, 0x1
                  li         s5, 0x0
                  li         s8, 0x1
                  li         t2, 0x0
                  li         s10, 0x0
                  li         a6, 0x5674eca2
                  li         a2, 0x1
                  div         t1, s7, gp
                  c.nop
                  c.addi16sp  sp, 400
                  addi        a5, a2, 1208
                  rem         s5, s0, t4
                  divu        zero, tp, a4
                  mul         t6, s11, s2
                  c.addi      t3, -1
                  lui         s5, 670474
                  c.mv        t1, s0
                  add         zero, a7, t0
                  add         a2, t3, gp
                  c.addi4spn  a3, sp, 640
                  mulh        t1, t6, tp
                  sub         tp, s1, t3
                  c.add       s10, gp
                  addi        s11, s10, 1756
                  c.addi4spn  a1, sp, 912
                  mul         t4, s1, a5
                  auipc       t0, 598291
                  divu        ra, s1, ra
                  c.lui       s11, 21
                  lui         a6, 78259
                  c.addi16sp  sp, -16
                  c.add       ra, t6
                  c.addi      t0, -1
                  mul         a2, s2, s0
                  divu        s4, t5, zero
                  addi        a7, t0, -1042
                  c.add       a0, gp
                  li         t6, 0x13b045ce #start riscv_int_numeric_corner_stream_11
                  li         a3, 0x0
                  li         s2, 0x1
                  li         t3, 0x1
                  li         s10, 0x1
                  li         s8, 0x1
                  li         t4, 0x183e2a7b
                  li         s9, 0x0
                  li         a0, 0x0
                  li         s5, 0x1
                  mul         s10, s8, s2
                  divu        zero, a2, a2
                  lui         t0, 775755
                  add         s9, t0, s9
                  c.mv        sp, ra
                  c.li        s2, -1
                  mulhsu      t2, a6, t1
                  add         s4, s11, s2
                  mulhsu      s0, zero, s7
                  c.sub       a1, a2
                  rem         zero, a1, s9
                  c.addi4spn  a3, sp, 832
                  rem         gp, zero, t1
                  addi        t4, a6, 869
                  c.li        a7, -1
                  auipc       t2, 1010330
                  lui         s2, 140360
                  c.lui       a6, 2
                  c.add       s11, s2
                  mulhsu      s9, s6, s9
                  c.addi16sp  sp, -16
                  c.addi4spn  a2, sp, 816
                  mulh        s9, sp, t6
                  mulhsu      a3, a1, t1
                  mulhu       tp, t4, gp
                  divu        a7, s5, ra #end riscv_int_numeric_corner_stream_11
                  c.srai      a3, 29
                  and         t4, s1, t5
                  or          a6, s5, gp
                  mul         t3, s3, a2
                  rem         a7, s0, ra
                  div         s3, t4, t4
                  c.addi4spn  a2, sp, 272
                  c.nop
                  or          tp, a6, a2
                  addi        a7, s0, -1092
                  auipc       t4, 990799
                  or          t4, a4, sp
                  xori        a3, a2, -25
                  c.andi      a1, 12
                  c.addi4spn  a2, sp, 144
                  mul         s4, s11, s5
                  andi        s0, a0, 320
                  nop
                  and         sp, s1, s11
                  ori         t1, t5, -1871
                  sll         ra, s6, a1
                  nop
                  c.addi16sp  sp, 432
                  sra         a7, tp, s7
                  sll         t0, s4, sp
                  c.srai      a3, 29
                  slli        s9, s0, 2
                  ori         s10, a3, -1626
                  sll         a2, t3, s1
                  srai        s10, a3, 7
                  c.addi4spn  a1, sp, 192
                  add         ra, a1, gp
                  mulhsu      s5, s2, s6
                  c.srai      s0, 13
                  sra         a1, t6, zero
                  sub         s4, a5, t4
                  c.nop
                  c.srli      a3, 11
                  andi        a0, s2, -317
                  c.slli      t1, 17
                  divu        a5, a7, a0
                  xori        zero, t0, 1874
                  ori         zero, s5, 1259
                  c.and       a3, a0
                  auipc       a6, 28505
                  c.lui       t6, 7
                  srl         a0, s9, tp
                  rem         t1, t1, t1
                  rem         a1, s3, s5
                  sltiu       s8, a5, -2
                  c.and       a3, a3
                  c.li        s8, 12
                  c.sub       a2, a4
                  c.addi      t2, 7
                  div         s5, s5, s11
                  c.addi16sp  sp, -16
                  c.lui       t2, 22
                  slti        s2, s3, 259
                  c.addi16sp  sp, -16
                  slli        a7, a5, 2
                  c.lui       a2, 1
                  c.mv        a1, s10
                  slt         zero, s11, a6
                  c.addi16sp  sp, 240
                  c.or        a3, a5
                  divu        a6, tp, t1
                  sra         zero, a3, a4
                  c.srai      a3, 20
                  sub         zero, s9, s1
                  andi        a4, a6, 1099
                  andi        a5, zero, 639
                  divu        a7, sp, a3
                  andi        s3, ra, 766
                  mul         a1, a1, a4
                  auipc       t6, 463167
                  srl         t3, sp, a5
                  sll         zero, s8, s1
                  c.lui       tp, 7
                  c.mv        a6, s7
                  c.addi      s2, 30
                  srl         s2, t6, gp
                  ori         a3, t6, -1354
                  mul         ra, a5, s7
                  c.xor       a2, a3
                  xor         s9, sp, zero
                  xor         t3, a5, t3
                  c.addi      t4, 7
                  c.lui       ra, 27
                  add         a1, a7, s0
                  divu        t3, s8, t4
                  xori        s9, a5, 1380
                  xor         zero, s11, a2
                  divu        a0, tp, a4
                  c.addi      a1, 9
                  c.nop
                  c.add       s7, t2
                  nop
                  c.sub       a2, a2
                  c.slli      s3, 9
                  slt         zero, a6, s2
                  auipc       a7, 682870
                  srl         tp, s10, s2
                  c.mv        sp, t1
                  sll         zero, s5, t1
                  li         t1, 0x1 #start riscv_int_numeric_corner_stream_5
                  li         t4, 0x0
                  li         t3, 0x3d6ef0a2
                  li         s4, 0x0
                  li         t6, 0x1
                  li         a4, 0x0
                  li         a2, 0x52692d2b
                  li         a6, 0x0
                  li         s3, 0x1
                  li         a3, 0x0
                  nop
                  sub         zero, s2, s5
                  c.li        a2, -1
                  nop
                  c.lui       s4, 7
                  addi        t3, zero, 80
                  divu        zero, s2, a1
                  c.addi      a1, 21
                  lui         s3, 816907
                  c.sub       a3, a2
                  mul         s4, a7, gp
                  nop
                  c.addi4spn  s0, sp, 352
                  c.addi4spn  a2, sp, 96
                  mulh        zero, a2, ra
                  sub         a1, a4, a2
                  nop
                  add         a1, tp, a0
                  lui         tp, 177627
                  c.addi      sp, 15
                  sub         a2, s10, gp
                  mulhsu      a1, a3, s2
                  c.lui       s9, 8
                  c.mv        t0, s11
                  mulhu       s0, t6, s2 #end riscv_int_numeric_corner_stream_5
                  divu        t6, s11, t2
                  nop
                  c.srli      a1, 17
                  slti        a7, t0, -401
                  sltiu       s0, s6, -1851
                  c.addi      a6, 10
                  c.addi      a1, -1
                  c.nop
                  and         zero, s7, s5
                  nop
                  c.srli      a5, 15
                  mulh        s3, s11, a5
                  c.li        a0, -1
                  c.srai      a1, 11
                  nop
                  c.andi      a3, 25
                  lui         t1, 112575
                  lui         s3, 343369
                  lui         t4, 259116
                  ori         a5, t1, -1406
                  slt         t2, t3, s1
                  sll         s3, s4, ra
                  srli        a5, sp, 30
                  and         a6, t0, t3
                  c.addi4spn  a0, sp, 784
                  c.lui       s3, 14
                  c.lui       a5, 16
                  sltiu       t2, t6, -1147
                  auipc       a4, 794548
                  slli        a6, sp, 20
                  c.nop
                  divu        s3, t4, s2
                  slli        a4, s5, 31
                  mulh        a3, s5, s3
                  divu        a2, tp, a7
                  c.xor       a3, a3
                  li         t6, 0x231e1de9 #start riscv_int_numeric_corner_stream_6
                  li         s5, 0x1f0c26bc
                  li         t4, 0x0
                  li         t1, 0x4009c3ff
                  li         t3, 0x0
                  li         a0, 0x6a897380
                  li         a2, 0x0
                  li         s8, 0x1
                  li         s9, 0x7d358a30
                  li         a3, 0x5415512a
                  addi        s4, s0, 7
                  mulhu       s8, gp, s4
                  c.li        a2, -1
                  c.nop
                  c.nop
                  mul         s9, s2, s0
                  c.nop
                  divu        zero, t1, a3
                  c.addi16sp  sp, 272
                  mulhu       a5, s11, gp
                  c.lui       t3, 20
                  mulh        s0, t0, s7
                  mulhsu      s4, s3, s1
                  c.mv        ra, tp
                  c.addi      t1, 8
                  addi        gp, a7, -1984
                  c.sub       a4, a3
                  nop
                  c.mv        t2, s11
                  div         a6, a6, zero
                  c.sub       a2, s1
                  nop
                  mulhu       s4, a1, zero
                  c.mv        s7, a0
                  c.sub       a3, a3
                  c.addi4spn  s0, sp, 672
                  addi        t6, s7, 289 #end riscv_int_numeric_corner_stream_6
                  c.add       s2, a6
                  slli        zero, s9, 19
                  c.xor       a1, a3
                  divu        zero, s2, zero
                  or          s8, t5, s5
                  c.mv        a4, s9
                  mulh        t3, a0, t6
                  c.srli      a2, 9
                  or          sp, sp, s7
                  c.sub       a2, s1
                  c.lui       a4, 2
                  sltu        s9, t1, a6
                  c.lui       a5, 18
                  c.mv        t3, a2
                  c.or        s0, a1
                  c.or        a3, a0
                  and         s0, s4, t1
                  c.slli      ra, 17
                  c.mv        a0, s4
                  divu        zero, a6, s4
                  sll         zero, a1, a5
                  c.addi4spn  a2, sp, 656
                  c.addi      s9, -1
                  srli        a3, a4, 10
                  nop
                  add         s3, t2, s9
                  c.srli      a3, 8
                  sltiu       t6, a7, -1955
                  sll         ra, s7, t2
                  c.mv        ra, tp
                  and         s2, s3, t1
                  c.addi      s10, -1
                  srli        t3, zero, 28
                  mulhsu      s10, a2, a1
                  c.xor       a3, a0
                  c.sub       a2, s1
                  c.slli      s7, 4
                  mulhu       t3, sp, s5
                  or          zero, gp, s6
                  xori        a4, a3, 1915
                  c.srli      a2, 17
                  ori         t6, s0, 326
                  auipc       s11, 450875
                  c.addi16sp  sp, -16
                  srli        a0, s2, 17
                  sub         sp, s11, a4
                  c.and       a2, a1
                  auipc       a4, 784422
                  sltiu       sp, gp, 54
                  sub         t3, s10, gp
                  c.mv        s8, s0
                  mulhu       a4, t4, s3
                  xori        a0, a0, 1232
                  c.lui       t1, 3
                  divu        zero, gp, s11
                  xori        zero, a0, -1308
                  slt         a5, a1, s4
                  c.addi4spn  a1, sp, 304
                  xor         s4, s4, sp
                  c.addi      ra, -1
                  c.sub       a2, a0
                  and         zero, zero, gp
                  c.addi      t3, -1
                  slli        a0, t3, 30
                  sra         t3, gp, t1
                  c.or        a5, a0
                  srl         a4, t3, t6
                  slli        sp, sp, 0
                  c.and       a2, a2
                  c.sub       a0, a3
                  c.addi4spn  a3, sp, 576
                  c.mv        t3, ra
                  c.or        a3, s1
                  slli        gp, a6, 7
                  srli        t6, t1, 25
                  mul         s3, s0, sp
                  c.mv        s0, t3
                  c.mv        sp, ra
                  mulh        a6, s6, s5
                  slli        zero, a0, 28
                  auipc       gp, 178174
                  sll         gp, a5, t6
                  c.lui       ra, 18
                  nop
                  sltu        a7, s1, s4
                  mulhsu      s8, a1, a2
                  divu        a0, tp, t2
                  sltiu       a4, s10, -2018
                  andi        a1, s2, -344
                  or          s0, a6, ra
                  slti        zero, s10, 883
                  c.srli      a1, 3
                  rem         zero, t3, a5
                  slti        t1, a6, -451
                  ori         s7, t4, 1118
                  srli        a6, s2, 23
                  c.add       s2, t0
                  mul         t0, t6, t0
                  sltu        s2, t5, t1
                  c.mv        a4, t1
                  divu        t0, t2, gp
                  c.slli      a0, 29
                  xor         t6, s11, a4
                  and         s9, gp, a1
                  c.and       a2, a1
                  c.xor       a1, s1
                  nop
                  add         zero, s4, a5
                  c.nop
                  c.li        s9, 0
                  c.nop
                  andi        s3, sp, -1400
                  mul         s2, t2, t4
                  mul         s2, s8, a6
                  mulhsu      a2, a7, s0
                  divu        a7, t3, s1
                  slli        zero, s5, 15
                  c.mv        t2, a0
                  or          a6, a6, t3
                  mulhu       s0, s6, s10
                  c.addi      ra, -1
                  mulhsu      zero, t6, s8
                  divu        t0, a2, t2
                  c.andi      a5, -1
                  sltu        t4, ra, s0
                  c.li        ra, 19
                  c.xor       a2, s1
                  sub         zero, a7, a6
                  c.mv        t0, a6
                  and         s7, a7, a5
                  srli        s9, t1, 17
                  andi        s10, t4, -266
                  mulh        t3, s2, s9
                  c.andi      s0, -1
                  lui         zero, 719494
                  mul         s7, s1, s4
                  sltu        zero, t0, tp
                  lui         zero, 1001922
                  c.or        a0, a3
                  c.li        a1, 21
                  auipc       a3, 8289
                  xori        t6, sp, 1792
                  srli        a5, a2, 4
                  add         s10, s7, s10
                  c.srli      a3, 20
                  srl         zero, a2, s0
                  mulhsu      a2, s7, t5
                  c.addi      t2, -1
                  c.addi16sp  sp, -16
                  sub         gp, a3, a0
                  sra         a3, s5, s5
                  add         s2, s7, s1
                  c.li        s0, 13
                  sll         s0, s5, a5
                  sub         a2, s11, t0
                  c.addi4spn  a0, sp, 560
                  mul         a4, a1, t6
                  slti        a5, t1, -1518
                  c.addi4spn  a1, sp, 592
                  c.srli      s0, 14
                  addi        zero, a4, 1903
                  sub         a7, t2, s8
                  slti        s0, s4, -438
                  xor         s7, a0, s3
                  slt         a7, t6, t6
                  mulh        s0, s5, s10
                  c.srai      a2, 11
                  c.nop
                  c.srli      a2, 27
                  c.addi16sp  sp, 32
                  lui         t4, 153096
                  c.addi4spn  s0, sp, 128
                  c.li        t3, 14
                  div         a2, s9, a7
                  c.lui       s8, 6
                  c.addi4spn  a1, sp, 208
                  lui         a4, 338514
                  c.srli      a3, 14
                  srai        zero, s1, 2
                  c.add       s5, s6
                  c.srli      a1, 2
                  mul         t0, a2, a1
                  c.srli      a2, 21
                  c.mv        a1, s9
                  slli        s4, s7, 7
                  mulh        t3, t1, a5
                  c.sub       a5, a0
                  c.lui       a0, 30
                  c.add       s3, s5
                  c.addi16sp  sp, 16
                  c.or        a1, a0
                  mulhsu      t3, s10, a0
                  c.sub       a3, a2
                  addi        zero, a3, -880
                  mulhu       tp, a3, t6
                  ori         zero, t6, 1333
                  and         zero, t3, s7
                  c.add       s8, t2
                  auipc       t6, 708956
                  srai        zero, t6, 1
                  and         s7, a2, gp
                  mulhsu      a2, t2, t0
                  c.add       ra, s9
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_1
                  li         t4, 0x0
                  li         s3, 0x1
                  li         tp, 0x0
                  li         s10, 0x0
                  li         s0, 0x3f843a1
                  li         a2, 0x1
                  li         a3, 0x1
                  li         s4, 0x0
                  li         s11, 0x0
                  lui         s7, 975859
                  add         gp, s5, t0
                  sub         tp, t2, s4
                  nop
                  sub         zero, t0, t2
                  c.li        ra, -1
                  sub         s11, s5, t2
                  c.nop
                  c.li        t2, -1
                  auipc       zero, 397756
                  div         s4, s10, a6
                  nop
                  sub         zero, s5, s7
                  c.addi16sp  sp, 464
                  mulhu       sp, s0, t1
                  mul         t0, s11, gp
                  c.addi16sp  sp, -16
                  divu        s10, gp, a5
                  c.lui       a0, 22
                  c.xor       a3, a0
                  mulh        tp, sp, a6
                  mul         s11, a7, t5
                  c.addi4spn  a5, sp, 336
                  c.nop
                  c.li        tp, -1
                  addi        ra, a6, -135
                  c.slli      s8, 23
                  c.xor       a2, s1
                  ori         a1, a7, 1320
                  auipc       a5, 793042
                  c.lui       ra, 23
                  slti        gp, t4, 1144
                  nop
                  c.sub       a3, a0
                  c.addi16sp  sp, -16
                  rem         sp, s9, a7
                  mulhu       ra, sp, s6
                  addi        a5, zero, -61
                  slt         zero, s6, t2
                  slti        t0, a0, -1940
                  c.addi16sp  sp, 64
                  auipc       t4, 708409
                  srli        zero, s9, 5
                  c.slli      s9, 23
                  div         a1, s3, s7
                  mulh        tp, s3, s1
                  rem         s9, gp, s8
                  xor         t3, t4, s11
                  srl         s3, s5, t3
                  c.addi16sp  sp, -16
                  sltiu       s2, a0, -1350
                  mulhu       a6, t4, s4
                  c.slli      gp, 13
                  mul         zero, t3, a4
                  xor         a5, ra, t3
                  srl         a6, t6, s10
                  srl         s4, s1, tp
                  c.nop
                  c.srai      s0, 28
                  c.slli      a4, 11
                  c.lui       a2, 30
                  c.srai      a3, 16
                  c.addi16sp  sp, 16
                  c.addi16sp  sp, 384
                  sltu        t1, a1, a0
                  xor         s7, t2, t6
                  slli        s10, t1, 7
                  auipc       s9, 654423
                  c.addi      a0, -1
                  c.andi      a2, -1
                  mulh        t4, s8, s1
                  c.srai      a1, 24
                  c.srai      a3, 25
                  slti        s3, s6, -335
                  srai        t1, t0, 21
                  sub         gp, a6, s10
                  c.nop
                  slt         a4, tp, tp
                  mulh        t2, t0, a2
                  slti        s10, s0, 155
                  c.srai      a0, 2
                  div         s5, s2, t4
                  c.nop
                  mulhu       s11, s3, a5
                  c.lui       a6, 27
                  sll         s3, s3, a4
                  c.andi      a3, -1
                  divu        s3, s5, a4
                  sltiu       a3, a3, -15
                  c.andi      a2, -1
                  addi        a7, s1, -1329
                  addi        s11, a6, 1591
                  addi        s11, s6, 680
                  sltiu       s3, t6, -1789
                  c.add       s4, t4
                  c.sub       a2, s0
                  mulh        a1, s1, t4
                  div         sp, t5, a7
                  divu        s0, s0, t0
                  c.sub       a2, s1
                  c.xor       a1, a1
                  ori         s0, t1, -646
                  lui         s11, 498723
                  xor         a7, a5, t4
                  mulhu       zero, s11, zero
                  c.and       s0, a3
                  divu        zero, s10, s7
                  sll         t0, t1, s3
                  c.sub       a2, a1
                  c.srai      a2, 22
                  c.mv        a2, ra
                  xor         t3, a2, ra
                  slt         tp, s5, t1
                  xor         t1, s2, s6
                  srl         a6, a0, s5
                  srai        s3, tp, 1
                  div         zero, s8, s8
                  c.and       a3, a2
                  slli        t1, ra, 28
                  mul         t4, a2, a7
                  sub         s10, a0, s7
                  c.sub       a3, s0
                  sra         a4, s0, t1
                  c.addi16sp  sp, 320
                  c.srai      a5, 31
                  c.lui       a0, 8
                  c.slli      t2, 25
                  rem         ra, t6, s2
                  div         t1, t4, a3
                  mulh        t0, a1, s7
                  or          s2, t2, zero
                  c.lui       s5, 13
                  c.mv        s11, t2
                  andi        t4, a0, 460
                  slti        a7, a5, 1458
                  c.srli      a2, 28
                  nop
                  c.li        s10, -1
                  mulhsu      a7, s8, s6
                  mulhu       s5, s6, s3
                  c.nop
                  xor         t2, t5, gp
                  c.addi16sp  sp, 16
                  and         a3, t5, s4
                  sra         t4, t3, zero
                  auipc       tp, 95347
                  add         s3, a3, s10
                  c.nop
                  slti        a2, tp, -567
                  c.addi      sp, 30
                  slli        t0, t1, 15
                  sll         s11, t4, gp
                  sra         a7, s8, t3
                  c.li        a7, -1
                  srli        t0, a1, 2
                  lui         a6, 145179
                  c.slli      ra, 18
                  sub         a7, s1, s2
                  auipc       a0, 589134
                  mul         zero, s6, s5
                  rem         s5, s1, a0
                  c.andi      a1, 3
                  c.xor       a2, a1
                  sll         gp, s4, a3
                  xori        t0, a6, 315
                  c.lui       a4, 4
                  sub         s5, s0, t0
                  ori         s10, a6, 37
                  or          a2, s6, t3
                  add         t3, t2, t6
                  mulhsu      ra, s8, a6
                  or          s5, s6, sp
                  sra         a3, s10, ra
                  c.srli      a3, 10
                  slt         a3, a5, a5
                  c.lui       ra, 5
                  andi        s7, tp, 1568
                  lui         a5, 938388
                  divu        s7, s3, t4
                  auipc       sp, 116401
                  xori        zero, s7, 1196
                  slti        sp, s11, -1806
                  auipc       s3, 672306
                  srl         sp, a1, zero
                  c.sub       a2, a0
                  sll         a1, gp, s10
                  c.xor       a2, a3
                  mulh        a5, zero, sp
                  or          a1, a6, zero
                  c.slli      a4, 14
                  srli        a0, s10, 30
                  c.sub       a3, a0
                  slli        t2, gp, 15
                  c.srai      a1, 23
                  and         t1, s1, s3
                  c.srai      a4, 11
                  sltu        a5, a4, sp
                  auipc       t4, 36193
                  add         a2, a4, a3
                  and         s9, s1, t6
                  sltu        tp, s0, s7
                  slti        s8, s10, 171
                  mulhsu      t4, t5, t5
                  srai        zero, s1, 4
                  sltu        t2, tp, s11
                  slti        sp, a7, -7
                  sra         a1, a6, a5
                  srai        gp, sp, 11
                  ori         s10, t4, -1782
                  mulh        a7, s4, a6
                  c.addi16sp  sp, 352
                  ori         s8, a3, -436
                  mulhu       sp, t3, t4
                  c.xor       a1, s0
                  sub         zero, a6, s4
                  c.slli      s8, 1
                  div         zero, s8, s1
                  xori        a5, tp, 2022
                  c.sub       a0, s0
                  sltu        a1, sp, sp
                  sub         a7, zero, s3
                  c.or        a2, a2
                  mulh        s9, zero, t2
                  auipc       gp, 138794
                  c.xor       a3, a0
                  or          a2, a4, gp
                  slt         s3, a2, a0
                  c.slli      s0, 8
                  c.nop
                  sll         s3, s2, s7
                  slti        s2, s0, 1889
                  c.addi4spn  a1, sp, 16
                  div         s4, s11, tp
                  and         t3, s3, s5
                  c.addi      a3, -1
                  srai        s3, a1, 6
                  nop
                  c.slli      t4, 5
                  c.sub       a2, s0
                  and         s9, s2, s8
                  slt         ra, a4, s10
                  rem         s4, s10, a3
                  ori         s0, s2, 933
                  c.addi16sp  sp, -16
                  c.lui       a1, 19
                  c.srai      a0, 14
                  sltu        s9, s3, s0
                  addi        sp, s9, 1455
                  sra         s0, t3, s8
                  sltu        s3, s9, a4
                  c.addi      s11, 8
                  sub         s3, s5, s2
                  c.addi      a1, 31
                  lui         a0, 20448
                  ori         t2, s5, 2015
                  nop
                  sll         t6, a2, t0
                  sll         s4, t4, tp
                  mulhu       zero, gp, a2
                  nop
                  mulhsu      a7, ra, ra
                  c.addi4spn  a1, sp, 784
                  nop
                  rem         t3, s11, a4
                  slti        s9, a6, 1332
                  mulhu       t3, gp, t2
                  c.lui       t2, 21
                  rem         s3, zero, s3
                  c.li        ra, 1
                  xori        t6, zero, 1425
                  addi        s9, a1, 767
                  srli        s9, zero, 26
                  c.add       ra, t0
                  div         tp, t2, t6
                  mulh        a3, a5, s9
                  rem         s0, s5, s2
                  slt         t2, s5, s3
                  sub         a0, zero, gp
                  add         s11, s2, a0
                  c.xor       a0, s1
                  add         t0, t3, s1
                  c.addi16sp  sp, -16
                  sub         a1, gp, s2
                  mulhsu      a0, s1, s0
                  c.and       a2, a1
                  rem         a4, s9, s6
                  mulhu       t0, s0, a6
                  div         s0, ra, a4
                  ori         t3, a5, 589
                  c.slli      a5, 10
                  mulh        a5, s3, a3
                  sltu        t2, s6, s4
                  c.andi      s0, 29
                  divu        t0, t0, t2
                  c.or        a0, a1
                  andi        zero, t1, 1225
                  mulhsu      a0, sp, s9
                  sltiu       t0, a5, 256
                  srl         s5, a1, t6
                  srl         s2, tp, zero
                  ori         a7, s9, -648
                  c.slli      ra, 9
                  rem         t2, a4, s3
                  srl         zero, s8, a0
                  c.sub       a2, s1
                  sltiu       s4, tp, -1330
                  srl         s5, s3, gp
                  srai        s9, s8, 21
                  mulh        s8, t2, t5
                  c.add       ra, t6
                  andi        s8, s5, 1835
                  c.xor       a2, a0
                  c.nop
                  sub         t4, s6, s5
                  auipc       a3, 1037748
                  xori        zero, s2, -1902
                  c.addi      s0, -1
                  c.and       a2, a3
                  c.addi4spn  a1, sp, 240
                  mulh        t0, s6, s10
                  srli        a7, tp, 19
                  c.lui       s2, 8
                  sll         a3, a3, tp
                  add         ra, a5, s2
                  sltiu       t3, t6, -2046
                  div         s7, s6, t6
                  mulh        t4, s4, a6
                  sll         s10, s2, tp
                  rem         zero, t1, s4
                  rem         s3, t3, a4
                  addi        a1, a3, -1141
                  c.addi16sp  sp, 464
                  sra         t3, s7, s4
                  sra         t2, a6, s9
                  c.xor       a2, a1
                  sub         sp, s2, sp
                  c.srai      s0, 24
                  c.addi16sp  sp, -16
                  c.xor       s0, a1
                  nop
                  rem         a2, t0, zero
                  slti        zero, s11, -1681
                  sltu        zero, a3, t0
                  sra         t6, t2, s7
                  c.xor       a1, a5
                  sll         t6, s9, s9
                  slti        s5, t1, -1852
                  slli        s8, s3, 31
                  c.lui       a4, 11
                  c.nop
                  sll         t0, a2, t6
                  srai        gp, a0, 31
                  c.andi      a2, 16
                  xori        s5, t2, -748
                  c.or        a3, a0
                  andi        a5, s7, 1826
                  c.addi      tp, 23
                  srai        a6, s2, 20
                  c.srli      a0, 21
                  lui         a4, 74932
                  c.or        a3, s1
                  nop
                  srl         s2, t5, a2
                  slti        t0, a4, -519
                  divu        s5, a5, s8
                  srai        s10, t6, 12
                  c.addi4spn  a2, sp, 752
                  c.xor       a2, a1
                  c.addi4spn  a4, sp, 272
                  c.lui       s3, 1
                  c.lui       a2, 4
                  sltu        zero, sp, t2
                  c.addi16sp  sp, -16
                  c.lui       t2, 14
                  sll         zero, t3, t4
                  sra         s10, t2, s9
                  div         a3, s3, a4
                  c.srli      s0, 4
                  c.li        t1, -1
                  c.nop
                  slt         t6, s1, s5
                  c.addi4spn  a2, sp, 928
                  c.or        a2, a2
                  c.slli      a4, 9
                  c.addi      a0, 30
                  auipc       t2, 45642
                  c.add       s2, t4
                  divu        s2, s6, a6
                  c.addi      a1, 13
                  xori        a0, ra, -737
                  c.add       t3, sp
                  mulhu       t0, s7, t0
                  c.srli      a1, 6
                  c.or        a3, a2
                  sll         t6, a5, s9
                  slti        a3, a3, -1888
                  mulhsu      s9, ra, t4
                  rem         a0, a7, a1
                  mul         t3, s6, a0
                  c.addi4spn  a1, sp, 960
                  mulh        tp, a0, sp
                  slli        t0, s7, 1
                  rem         s10, s4, s7
                  slti        a0, s2, -1652
                  nop
                  mulhu       a5, a6, s10
                  mulh        t1, s6, sp
                  andi        t3, s10, -975
                  slt         a5, s10, s1
                  c.lui       gp, 27
                  lui         a6, 466387
                  sltu        ra, a3, t0
                  auipc       a7, 304658
                  mulhsu      t4, s7, t5
                  c.xor       a5, a5
                  c.srai      a2, 20
                  c.addi4spn  a1, sp, 528
                  c.xor       a1, a1
                  sra         s5, t0, a7
                  c.addi4spn  a2, sp, 656
                  c.addi      a5, 14
                  c.addi16sp  sp, -16
                  c.srai      a2, 8
                  xor         s2, ra, s3
                  c.and       a2, s1
                  c.sub       a2, a1
                  xori        s8, zero, -1486
                  c.srai      a3, 17
                  c.srli      a2, 3
                  mulh        s0, t3, s11
                  xori        s10, a2, 1717
                  sltu        s2, t2, s2
                  mulhsu      t0, a7, a7
                  add         a1, t2, t1
                  sra         a3, ra, s8
                  c.nop
                  c.and       a5, a3
                  ori         a4, a7, 794
                  srai        s11, t4, 22
                  c.sub       a1, s1
                  lui         a3, 253563
                  c.li        a1, 28
                  ori         s2, s8, 497
                  c.lui       s10, 14
                  mulh        t3, a7, gp
                  slt         s9, a2, t6
                  nop
                  slli        a1, a5, 26
                  addi        ra, s0, 1219
                  c.or        a4, a1
                  mulhu       s9, s2, s3
                  rem         t6, s5, t0
                  divu        t3, s1, s7
                  c.nop
                  sltiu       ra, t3, -1520
                  mulhsu      s11, a4, sp
                  srai        zero, t4, 4
                  addi        s11, t2, 18
                  or          a3, a0, t3
                  c.sub       a1, a3
                  div         s3, a4, s2
                  div         t3, s4, tp
                  c.lui       ra, 29
                  c.srli      a5, 17
                  xori        s4, s11, 254
                  c.addi4spn  a3, sp, 416
                  c.and       a3, a1
                  mulhsu      t0, a0, s8
                  c.mv        a0, a1
                  c.mv        t2, t6
                  sltiu       t4, a0, 1505
                  srli        a3, ra, 13
                  srl         a6, t3, s5
                  c.li        ra, 5
                  c.lui       s3, 13
                  c.mv        gp, a0
                  c.srli      a3, 12
                  sub         s10, zero, t5
                  rem         s9, a6, s11
                  c.addi4spn  a2, sp, 48
                  divu        zero, s6, tp
                  c.lui       s0, 27
                  andi        s11, t3, 1038
                  c.addi16sp  sp, 416
                  c.or        a3, a3
                  slli        gp, s5, 19
                  divu        s9, s5, s5
                  slt         ra, a5, s7
                  sltu        t0, a3, ra
                  c.li        ra, 30
                  c.nop
                  c.srli      a2, 27
                  ori         a4, s7, -973
                  srl         s9, s9, t2
                  xor         a1, ra, s7
                  rem         s8, t1, s3
                  c.slli      a6, 18
                  srli        a1, s2, 21
                  c.lui       ra, 11
                  c.sub       a1, a0
                  srl         a2, s2, s8
                  nop
                  c.xor       s0, a2
                  slli        a5, s7, 9
                  c.or        a1, a2
                  sra         zero, t2, s3
                  c.nop
                  slli        a5, a3, 18
                  lui         s4, 626583
                  c.sub       a2, a2
                  xori        s8, t0, -292
                  c.srai      a5, 7
                  c.and       a1, s1
                  sra         t1, s2, a1
                  andi        s11, t2, 963
                  mulh        zero, s2, a4
                  c.or        a0, a1
                  xor         a7, a1, t6
                  srl         zero, gp, s2
                  mulh        zero, s10, s1
                  c.mv        gp, t0
                  slti        a2, a7, -42
                  slli        ra, a3, 8
                  addi        a7, a1, -540
                  c.nop
                  sltiu       a6, a1, -1083
                  c.add       ra, t2
                  c.slli      s3, 16
                  sltiu       s3, s5, -1725
                  mul         s2, a7, s3
                  sll         s9, a7, s9
                  sltiu       a3, a3, -1796
                  c.slli      a3, 28
                  c.addi16sp  sp, -16
                  c.add       a5, s8
                  c.addi      s5, 23
                  c.addi4spn  a3, sp, 32
                  slli        tp, a5, 9
                  c.mv        s5, t4
                  c.xor       a0, s1
                  sub         a3, t0, s0
                  c.addi16sp  sp, 240
                  sltu        s10, s9, tp
                  andi        a0, s4, -283
                  add         a3, s5, a2
                  mul         zero, a7, t1
                  divu        s0, ra, a1
                  slt         a2, a3, s0
                  c.li        a2, -1
                  xori        gp, a4, -1170
                  c.nop
                  c.srai      a2, 14
                  c.or        a3, a0
                  c.sub       a2, a0
                  xori        t6, a6, 1856
                  xor         s8, t1, t1
                  sltu        s3, sp, s2
                  srai        s8, ra, 8
                  c.srai      a0, 11
                  c.andi      a0, 1
                  andi        s9, gp, 1671
                  c.mv        a3, a5
                  andi        t4, a3, -1189
                  sll         tp, a5, t4
                  auipc       a5, 901881
                  c.li        s11, 13
                  c.lui       s5, 14
                  sub         a2, a3, sp
                  c.li        a6, 10
                  slt         s5, a3, sp
                  slli        a1, t2, 18
                  mul         s9, s11, t1
                  sll         s7, zero, s11
                  c.srli      a3, 24
                  srl         s2, s1, t1
                  c.sub       a1, a0
                  mulhu       s0, a3, t6
                  slli        gp, t1, 29
                  c.xor       a3, a3
                  c.sub       a5, a0
                  auipc       t4, 859573
                  lui         a0, 535148
                  c.xor       s0, a5
                  c.sub       a3, a3
                  c.add       t6, s5
                  sltiu       zero, a3, 1319
                  divu        t2, a1, tp
                  srli        a3, ra, 8
                  lui         s2, 452112
                  mulh        t1, a2, s8
                  xori        gp, a6, -951
                  slli        s10, s4, 24
                  mulh        t1, a0, tp
                  srli        a1, a0, 25
                  lui         a4, 828421
                  mulhu       s0, s1, t1
                  mulh        t4, s1, s8
                  and         t0, tp, t6
                  c.add       ra, s0
                  slt         a0, s11, gp
                  slt         s4, s5, t4
                  srli        t6, a6, 12
                  c.add       a3, a0
                  slli        t0, a1, 19
                  andi        t6, t0, 598
                  rem         a0, t1, a0
                  add         a4, s5, a1
                  xor         a2, s0, s10
                  c.sub       a1, s1
                  sltiu       a5, t3, 984
                  mulhu       t4, s1, gp
                  srl         s11, s9, s4
                  xori        t0, s6, 1510
                  c.sub       a4, a2
                  c.mv        gp, a1
                  c.andi      a2, 4
                  c.li        a6, 14
                  sra         s2, s8, s2
                  add         t6, s9, a2
                  c.addi      ra, -1
                  c.sub       s0, a3
                  mul         a2, a7, s9
                  or          s4, s6, t6
                  andi        tp, t1, 1138
                  c.andi      a2, 30
                  addi        t4, s2, -1734
                  slti        a7, s0, 449
                  lui         t3, 446386
                  lui         t1, 269244
                  c.mv        s3, a1
                  lui         a3, 804838
                  c.slli      a5, 19
                  c.mv        ra, t5
                  srli        t2, t6, 30
                  c.srai      a2, 15
                  c.xor       a3, s1
                  c.andi      a2, -1
                  c.andi      s0, 3
                  rem         a0, a2, a7
                  c.addi      a3, 25
                  c.addi      t1, 29
                  srli        a0, a3, 22
                  slt         s11, t4, t0
                  sltiu       s11, s2, -70
                  c.addi      ra, 14
                  srl         t6, s11, t2
                  c.xor       a3, s1
                  sll         zero, s8, a7
                  slti        a2, t4, 7
                  addi        s5, sp, -532
                  add         zero, t5, zero
                  slli        s11, a0, 22
                  slti        t0, a3, -141
                  srai        s4, t1, 27
                  c.slli      ra, 3
                  c.srli      a1, 15
                  auipc       s8, 46222
                  slt         zero, a0, s7
                  c.srai      a5, 5
                  c.and       a2, a1
                  sltiu       a0, a3, 487
                  c.li        t1, 0
                  sub         a6, t1, a5
                  c.addi4spn  a4, sp, 576
                  c.nop
                  c.addi4spn  a1, sp, 960
                  xor         s8, s10, s9
                  addi        s8, t0, -91
                  c.nop
                  add         t0, sp, a2
                  c.slli      a6, 5
                  mul         zero, a4, t2
                  xor         t0, s11, ra
                  mulhsu      a3, s2, s6
                  sltiu       s0, a1, -560
                  c.sub       a1, a5
                  c.add       s4, t4
                  c.add       s9, t4
                  c.andi      a2, -1
                  c.li        ra, -1
                  auipc       zero, 725374
                  sltiu       ra, t3, -1283
                  c.addi16sp  sp, 336
                  c.nop
                  sll         s10, a7, a5
                  sltu        s11, zero, a7
                  xor         t4, s8, s9
                  sub         t3, t6, t1
                  slli        s4, a1, 8
                  sub         a5, s2, a5
                  c.srli      a1, 16
                  c.sub       a4, a3
                  c.srai      s0, 22
                  mulh        zero, ra, s6
                  mulhu       zero, ra, tp
                  c.slli      s2, 4
                  xor         tp, t4, tp
                  c.slli      ra, 18
                  c.andi      a0, 9
                  add         s2, tp, a5
                  xori        t3, s0, 1803
                  ori         a0, a2, 1250
                  mul         s10, t5, s6
                  c.and       a1, a0
                  slti        zero, a3, -1683
                  c.add       t1, s7
                  c.addi16sp  sp, 224
                  or          t6, t0, a3
                  c.or        s0, a1
                  c.and       s0, s1
                  c.slli      a1, 28
                  sll         s4, a4, zero
                  xor         a0, sp, ra
                  srli        s2, t6, 2
                  slt         a7, a6, t0
                  or          s11, s3, a0
                  sltu        s8, s3, t4
                  c.addi16sp  sp, -16
                  c.slli      ra, 1
                  c.srai      a3, 28
                  addi        t6, gp, -262
                  add         a7, t4, s6
                  c.nop
                  c.lui       ra, 1
                  lui         a6, 849327
                  div         t3, a1, s0
                  nop
                  add         a5, a7, a1
                  c.add       t4, tp
                  or          zero, s5, a7
                  slti        s11, a0, -1271
                  andi        t3, a2, 721
                  c.addi4spn  a3, sp, 384
                  and         s2, s1, s7
                  addi        t0, s10, 1560
                  lui         s11, 229143
                  srl         tp, s7, s3
                  c.nop
                  c.srai      a1, 14
                  divu        s2, tp, a2
                  c.li        t3, -1
                  c.addi16sp  sp, -16
                  divu        sp, sp, s0
                  slli        a0, a5, 9
                  mulh        s7, a1, s1
                  mul         zero, s11, s3
                  c.mv        s7, a0
                  c.addi      s3, 14
                  srli        a7, s9, 30
                  sltiu       zero, a0, -533
                  c.addi16sp  sp, 368
                  or          a7, t3, t1
                  sub         zero, s1, s7
                  c.li        ra, -1
                  or          a1, s6, zero
                  c.addi16sp  sp, -16
                  mul         s7, s7, t4
                  c.add       s5, s8
                  c.mv        a6, a6
                  nop
                  srli        t1, s7, 22
                  div         s7, t1, s11
                  c.add       t6, t5
                  lui         zero, 149849
                  c.sub       a3, a2
                  sub         s0, s7, a3
                  rem         s0, s8, s10
                  addi        a6, s6, 1198
                  srli        s0, t0, 21
                  c.nop
                  c.xor       a2, s1
                  c.andi      s0, 27
                  c.slli      sp, 10
                  c.sub       a3, a1
                  sltu        s7, t4, s11
                  c.li        t1, 18
                  c.lui       a2, 18
                  rem         s8, a4, zero
                  mulhsu      s11, t0, s6
                  c.li        sp, -1
                  mul         s3, tp, s8
                  c.srli      a4, 6
                  c.mv        s9, t4
                  sltiu       s5, s3, 876
                  sltiu       a6, a1, -1010
                  c.addi      ra, -1
                  c.add       a6, t5
                  auipc       a6, 795723
                  auipc       s4, 59887
                  lui         gp, 611096
                  xori        a0, s9, -853
                  c.mv        s8, s6
                  ori         tp, a4, -389
                  rem         s8, a3, s11
                  c.li        s8, 8
                  c.srai      a3, 13
                  mulh        t4, a0, a3
                  c.srai      a1, 2
                  c.mv        a5, s8
                  and         zero, zero, s6
                  sltu        s0, a6, s9
                  sltiu       t3, t1, 932
                  c.li        a5, -1
                  mul         zero, t6, t0
                  c.nop
                  rem         a4, a0, t4
                  and         s7, t2, t2
                  c.addi4spn  a3, sp, 896
                  lui         s9, 511073
                  c.andi      s0, -1
                  slti        s5, t1, -1056
                  c.or        a2, a0
                  c.li        s0, 20
                  srli        a5, zero, 0
                  div         s3, s4, a0
                  mul         t0, s0, s0
                  c.mv        ra, tp
                  c.srai      a1, 13
                  or          a3, t2, t6
                  sltu        ra, gp, a2
                  xor         t0, t2, s5
                  nop
                  mulh        s11, t1, a7
                  sll         t3, t2, s4
                  ori         tp, t4, -1365
                  xori        t4, s11, 153
                  c.andi      a3, 13
                  xori        s8, s0, 621
                  c.sub       a2, s0
                  c.li        ra, -1
                  and         t4, a3, t2
                  sll         a1, s6, s0
                  rem         zero, s9, t2
                  c.add       a7, s10
                  c.xor       a2, s1
                  slt         t2, s1, s6
                  addi        s4, s0, 243
                  sll         s3, s4, t1
                  mulhsu      s0, a0, s2
                  srli        t2, gp, 16
                  rem         a4, a3, s9
                  c.addi16sp  sp, 80
                  lui         tp, 84597
                  c.nop
                  divu        t6, a3, a3
                  sltu        zero, s0, a1
                  ori         s10, t6, -1571
                  c.addi      ra, 3
                  c.mv        a2, s10
                  mulhsu      sp, s11, t6
                  divu        t3, a7, s4
                  andi        a6, s7, 1995
                  c.sub       a2, a3
                  srl         a5, s5, a6
                  sltu        ra, t3, s3
                  mulhsu      zero, t2, gp
                  c.and       a1, a0
                  auipc       tp, 7899
                  sltu        t2, s2, a7
                  c.srai      a1, 28
                  c.sub       a0, a1
                  mulhu       s10, s0, a2
                  sub         t3, s2, t2
                  slti        s4, t4, 871
                  c.sub       a2, s1
                  c.xor       s0, a0
                  xori        t3, a3, 268
                  mulhsu      s11, s6, t5
                  andi        t4, a2, 324
                  add         tp, a3, s11
                  c.addi16sp  sp, -16
                  addi        a2, a1, 957
                  c.nop
                  c.lui       t4, 6
                  c.srai      a5, 27
                  divu        s0, a4, t1
                  and         s2, s7, a5
                  divu        a3, s4, s9
                  rem         zero, s8, s9
                  c.srli      s0, 11
                  addi        a2, t0, 1785
                  c.lui       ra, 16
                  add         s8, ra, s8
                  xori        ra, t6, -444
                  srli        t2, a6, 19
                  c.or        a2, a1
                  or          a1, t0, s8
                  c.andi      a5, 4
                  srli        t3, s5, 7
                  slt         a0, a3, s8
                  xori        s9, s3, -547
                  div         s11, gp, a2
                  c.andi      a3, 15
                  mulhu       s0, s10, s3
                  and         s2, s8, s5
                  c.and       a1, a1
                  rem         t2, s2, a5
                  slt         tp, t6, a3
                  ori         a2, ra, -661
                  or          s0, a2, a2
                  c.addi4spn  a2, sp, 32
                  or          a4, a1, s10
                  c.or        a2, a1
                  c.nop
                  sltiu       s3, a0, -1642
                  xori        t6, s0, 1004
                  c.nop
                  c.or        a0, a0
                  c.or        a1, a4
                  rem         s4, s0, a3
                  rem         s4, s11, t4
                  c.andi      a1, 8
                  nop
                  divu        sp, s8, a6
                  sub         a2, s7, s0
                  lui         s5, 123786
                  lui         t2, 76232
                  mulh        a1, a1, sp
                  mulhu       s3, t4, s10
                  sltiu       a3, a3, 1582
                  c.mv        s10, t1
                  sltu        a5, t4, a4
                  c.mv        s7, t5
                  nop
                  slti        s2, t6, -683
                  nop
                  mulh        a2, s10, s1
                  c.and       a2, a0
                  auipc       s8, 136451
                  ori         tp, s5, 955
                  mulh        s4, s11, a0
                  c.srli      a0, 18
                  addi        gp, a5, 320
                  c.addi      s8, 31
                  auipc       a6, 563005
                  sub         zero, s0, s4
                  addi        s3, s7, -267
                  c.xor       a2, s0
                  c.addi16sp  sp, 304
                  or          s9, sp, zero
                  c.lui       s11, 1
                  c.mv        gp, t5
                  c.lui       gp, 11
                  c.xor       a5, a0
                  c.srai      a1, 24
                  c.mv        a6, tp
                  or          a6, t5, s6
                  slli        t6, t6, 28
                  slt         a7, t3, t3
                  c.xor       a0, a1
                  c.addi      s3, -1
                  sltiu       t3, a6, 913
                  c.mv        a1, gp
                  c.slli      a4, 26
                  andi        zero, gp, -517
                  and         a1, t6, a4
                  c.srai      a3, 2
                  nop
                  srli        t6, a6, 31
                  auipc       s11, 116488
                  c.srli      a3, 2
                  c.nop
                  addi        s9, a6, 1215
                  auipc       zero, 527054
                  sub         tp, s9, gp
                  or          a4, t1, s4
                  sltu        zero, t0, sp
                  c.slli      gp, 20
                  xori        s8, s5, -1904
                  add         t0, t1, a4
                  slti        a7, a7, -1598
                  srai        a5, s5, 15
                  lui         s8, 422289
                  c.nop
                  nop
                  addi        a1, t3, 411
                  c.lui       a7, 9
                  slli        sp, s1, 17
                  and         a2, t4, gp
                  c.nop
                  c.srai      a0, 27
                  c.srli      a1, 5
                  sltu        a2, s0, a3
                  divu        s3, s2, s3
                  rem         t4, s11, a6
                  mulh        a4, zero, t1
                  div         s2, t0, s9
                  mul         s3, s9, t6
                  c.lui       a1, 1
                  mulhu       a4, a6, a7
                  lui         s5, 2561
                  andi        a7, sp, 239
                  add         s0, s4, s9
                  and         t6, a1, gp
                  c.srai      a3, 24
                  srai        s7, s1, 19
                  c.sub       a3, a1
                  c.srai      a2, 12
                  c.lui       t6, 12
                  add         tp, a2, t1
                  rem         t4, s5, a4
                  c.add       gp, a5
                  andi        sp, s1, -1795
                  mulhsu      s10, t1, zero
                  ori         t2, a4, 759
                  c.srai      a3, 31
                  addi        a6, a3, -1483
                  sltu        zero, t5, s7
                  mulhu       ra, s3, t2
                  c.add       t4, s10
                  c.lui       t3, 24
                  c.xor       a2, a0
                  c.li        s3, 21
                  sltiu       tp, t4, 862
                  or          a0, t4, a6
                  c.addi4spn  a1, sp, 784
                  nop
                  and         s5, t0, zero
                  xori        t4, t3, 550
                  c.mv        t6, tp
                  c.addi16sp  sp, -16
                  addi        s10, s2, 1543
                  or          t2, s2, sp
                  c.xor       a4, a3
                  c.addi      s3, 29
                  or          tp, s4, s11
                  c.xor       s0, s0
                  lui         s4, 177757
                  mul         a5, a3, zero
                  xori        s2, a5, 1391
                  sltiu       s8, tp, 1782
                  divu        gp, s0, a1
                  sltu        tp, s4, a3
                  srli        s5, t0, 15
                  c.addi4spn  a3, sp, 304
                  mulh        a4, s11, s9
                  mulh        s11, a6, a6
                  slti        s10, sp, -1260
                  nop
                  lui         a7, 891827
                  c.srli      a2, 18
                  c.srli      s0, 28
                  c.nop
                  c.lui       ra, 17
                  c.lui       a4, 19
                  c.add       s5, t0
                  c.or        a2, a2
                  or          t6, t5, t4
                  srai        t2, s6, 24
                  div         t2, zero, t0
                  c.srai      a3, 4
                  c.srli      a3, 10
                  mulhsu      t1, ra, t5
                  slti        tp, t3, -412
                  div         a0, s5, s0
                  c.srai      a2, 9
                  c.srli      a3, 15
                  slli        a6, a1, 12
                  div         a3, a6, t0
                  nop
                  ori         s3, t6, -1025
                  srai        gp, s2, 22
                  rem         s2, a0, t3
                  c.addi4spn  a3, sp, 784
                  addi        t4, s8, 1323
                  mulhsu      s4, t4, s4
                  sub         s2, gp, a3
                  and         a3, a1, s1
                  slti        s3, s8, -1416
                  c.addi4spn  a3, sp, 528
                  c.li        ra, 31
                  slti        sp, a0, -1601
                  c.and       a3, a4
                  sll         s9, s3, s6
                  addi        zero, s5, -1418
                  mul         a1, a3, t6
                  c.sub       a3, a3
                  c.nop
                  xori        a6, a6, 332
                  c.srli      a2, 4
                  slti        zero, zero, 1579
                  rem         a7, s11, a6
                  c.sub       a2, s1
                  slli        s8, s6, 9
                  c.or        a3, a2
                  mulhu       s9, tp, t1
                  mulhu       s4, a1, t6
                  c.addi16sp  sp, -16
                  div         a2, s1, a3
                  mulhu       gp, tp, t0
                  mulhsu      a2, s2, s1
                  c.sub       a3, a3
                  c.nop
                  addi        zero, s10, 189
                  li         s2, 0x0 #start riscv_int_numeric_corner_stream_2
                  li         t4, 0x1
                  li         t2, 0x0
                  li         s11, 0x0
                  li         t0, 0x0
                  li         a1, 0x1
                  li         a0, 0x57a878fc
                  li         tp, 0x0
                  li         t6, 0x22650487
                  li         t1, 0x1
                  c.li        t1, -1
                  rem         ra, t5, t2
                  c.addi16sp  sp, 400
                  add         s7, ra, s1
                  div         a7, t2, s7
                  mulhu       t4, gp, a2
                  add         s8, s2, s8
                  mulh        t4, a2, t3
                  auipc       zero, 45369
                  c.li        t3, -1
                  mulhsu      ra, a6, t5
                  c.addi4spn  a0, sp, 640
                  c.mv        a3, a7
                  c.lui       ra, 12
                  c.lui       s0, 6
                  div         gp, a6, t4
                  add         a5, gp, t3
                  div         s7, s2, gp
                  c.add       ra, a0
                  nop
                  mulhsu      s4, a2, s2
                  lui         s10, 683161 #end riscv_int_numeric_corner_stream_2
                  c.or        a2, a2
                  sub         s9, a6, a4
                  c.or        a0, a0
                  mul         zero, s10, s4
                  or          tp, a7, s10
                  c.add       a5, a3
                  mulh        a1, a3, t4
                  rem         t6, t0, a4
                  divu        a6, tp, s0
                  c.add       t4, t6
                  c.slli      s0, 10
                  c.addi4spn  a5, sp, 832
                  srli        sp, a1, 12
                  andi        t3, s9, -1508
                  sll         ra, a7, t6
                  srai        a2, t4, 1
                  div         zero, s6, tp
                  c.srli      a3, 19
                  and         t6, s5, a0
                  slt         a0, s2, a5
                  rem         s11, ra, gp
                  slt         sp, zero, ra
                  c.add       sp, a5
                  add         s11, t0, a5
                  c.nop
                  mulhu       s2, t2, t0
                  divu        a1, sp, s10
                  c.xor       a5, a1
                  sll         a0, s11, a3
                  xori        a2, a5, 657
                  c.andi      a2, -1
                  nop
                  c.srai      a0, 21
                  addi        a5, s9, -1287
                  auipc       s3, 631169
                  c.srli      s0, 10
                  c.addi4spn  a2, sp, 96
                  srli        t4, s6, 3
                  slli        zero, t5, 8
                  slt         t3, gp, s3
                  nop
                  srai        t4, tp, 4
                  c.lui       ra, 3
                  c.sub       a1, a2
                  c.sub       a2, a2
                  add         zero, gp, s3
                  div         s2, zero, a5
                  c.mv        a1, a7
                  rem         a7, a5, s11
                  ori         s0, t1, 2010
                  div         a0, a3, t3
                  mulhsu      a0, a2, s5
                  slli        tp, s3, 20
                  c.addi      ra, -1
                  xor         gp, s1, s10
                  add         zero, t6, a5
                  srl         s2, a6, t3
                  srl         a1, t2, t2
                  ori         zero, t6, 586
                  rem         a3, t1, a3
                  slti        s4, s9, 145
                  c.li        s10, -1
                  c.xor       a1, a1
                  slli        a0, a3, 17
                  ori         a7, a0, 1345
                  add         tp, s6, tp
                  c.sub       s0, a2
                  div         gp, s8, s7
                  or          a1, a0, t1
                  slli        tp, tp, 28
                  c.xor       s0, a1
                  c.addi4spn  a2, sp, 432
                  c.or        a0, s1
                  mulhsu      s8, t5, t6
                  c.slli      a1, 13
                  sll         s5, a5, s8
                  c.addi16sp  sp, -16
                  c.slli      ra, 10
                  c.mv        ra, s0
                  c.andi      a0, -1
                  sltiu       gp, s11, 1987
                  sltiu       a7, a6, -1591
                  div         t4, s10, s11
                  c.andi      a2, 27
                  c.or        a3, a1
                  slli        t6, t0, 27
                  c.srli      a2, 8
                  mulh        zero, s3, zero
                  c.andi      a3, 16
                  sub         s0, t0, t1
                  sltiu       s4, s7, -1045
                  div         t3, s10, a7
                  slt         zero, s8, t0
                  c.xor       a2, s1
                  c.addi      s4, -1
                  c.srai      a1, 9
                  c.srai      a3, 1
                  sra         a1, s4, s7
                  c.li        t0, -1
                  slti        zero, t6, 409
                  slti        s11, tp, -595
                  mulhu       a6, a2, sp
                  andi        s4, a4, 1857
                  andi        ra, a0, 881
                  slli        a6, a4, 24
                  c.slli      s5, 24
                  sub         t4, s4, s2
                  slti        t6, tp, -1529
                  sltu        s7, s2, s1
                  lui         sp, 382433
                  lui         t0, 677970
                  c.addi      a6, -1
                  sub         t4, s1, a4
                  slli        s4, t2, 25
                  rem         a0, sp, a6
                  or          s2, zero, t6
                  sra         s11, t2, t0
                  sra         a0, t6, t5
                  c.addi      s7, 21
                  sub         zero, t3, s7
                  c.srli      a1, 23
                  mulh        s5, s8, t6
                  ori         zero, zero, 739
                  addi        t2, s11, 37
                  srl         s3, a4, t0
                  addi        s7, gp, 65
                  addi        s10, t5, 227
                  xor         s11, s4, s4
                  mulhsu      t6, t0, s11
                  c.xor       a3, a4
                  or          ra, ra, t0
                  c.addi4spn  a2, sp, 656
                  mul         zero, t4, t2
                  ori         zero, s6, 1999
                  auipc       s7, 785377
                  srai        zero, gp, 14
                  lui         s4, 623592
                  c.andi      a2, 21
                  srl         s4, a6, t0
                  c.or        a3, a3
                  srl         a6, gp, t3
                  c.xor       a3, a1
                  c.li        s7, -1
                  c.srli      a5, 5
                  xori        a5, s4, 894
                  mulh        s11, zero, t0
                  srli        a3, sp, 10
                  xor         zero, t3, tp
                  divu        a0, s11, t4
                  c.srli      a3, 2
                  c.addi      t1, 29
                  xor         t2, t6, a6
                  c.slli      ra, 15
                  xor         s5, s5, s0
                  mul         s9, a4, t3
                  c.addi      t0, -1
                  div         s7, s0, s5
                  sub         s5, zero, a3
                  srai        a1, s6, 30
                  srli        t4, a4, 27
                  divu        t3, s7, s10
                  mul         tp, s6, s4
                  slti        a4, t1, 1986
                  rem         a6, gp, a3
                  mulhsu      s9, t4, s5
                  c.lui       a1, 17
                  andi        s8, t3, -1598
                  c.addi4spn  a3, sp, 784
                  c.srli      a2, 29
                  xori        s11, tp, 2006
                  div         s10, t0, a2
                  c.srai      a1, 1
                  mulh        a6, a1, s5
                  sltu        t6, s5, a6
                  c.mv        s8, s6
                  c.addi4spn  a0, sp, 976
                  ori         a3, a4, -1874
                  slt         a3, t5, gp
                  c.addi      s4, -1
                  slti        a7, t2, -888
                  c.add       s9, a5
                  c.or        a2, a2
                  sltiu       a4, a7, -699
                  c.andi      a2, -1
                  c.add       t2, s7
                  sltiu       a7, s2, 1342
                  srai        ra, a0, 9
                  divu        s9, a6, t2
                  lui         a6, 851780
                  c.addi4spn  a1, sp, 880
                  slti        a4, a6, 6
                  c.lui       a6, 15
                  div         a4, zero, a4
                  sra         zero, a5, s9
                  srl         s11, zero, gp
                  c.lui       a6, 9
                  c.srli      a0, 2
                  c.nop
                  addi        sp, zero, 45
                  rem         s0, s4, s6
                  xor         a1, t1, a4
                  sub         s4, a2, t1
                  addi        t4, s7, -737
                  c.srai      a0, 3
                  xori        t6, zero, 1993
                  ori         t1, zero, -178
                  c.srai      a2, 31
                  sub         a6, s2, zero
                  slt         zero, a0, a1
                  srli        a0, s2, 17
                  c.srli      a3, 23
                  and         a4, s2, s1
                  srli        ra, tp, 18
                  c.mv        s9, t0
                  mul         t1, s5, s8
                  divu        a2, s2, a3
                  ori         sp, s9, -1166
                  c.andi      a3, -1
                  sub         zero, t4, s0
                  c.addi16sp  sp, -16
                  ori         a3, tp, -889
                  mulh        t6, a2, t0
                  c.srai      a3, 19
                  addi        zero, ra, -1430
                  ori         t2, a3, -1057
                  c.srli      a3, 10
                  add         tp, ra, a0
                  nop
                  c.add       s11, a7
                  sltiu       s11, tp, -1853
                  c.or        a2, s1
                  c.nop
                  and         zero, a4, a7
                  lui         zero, 856975
                  c.or        a2, a3
                  sltu        s8, s1, s4
                  c.slli      ra, 25
                  c.nop
                  mul         zero, zero, s1
                  srai        t2, a0, 28
                  and         zero, s5, a3
                  c.add       a3, s2
                  rem         s10, s7, t0
                  lui         s2, 835687
                  sll         s9, a1, a5
                  sltiu       s10, t5, 941
                  xor         zero, s0, t4
                  nop
                  sltu        tp, t5, s8
                  nop
                  c.or        a2, a1
                  c.slli      s7, 29
                  c.xor       a3, a3
                  c.sub       a3, a1
                  auipc       s7, 373120
                  c.li        sp, -1
                  c.addi16sp  sp, -16
                  c.slli      t2, 25
                  sub         a5, s0, a3
                  xor         a0, t6, s9
                  c.addi16sp  sp, -16
                  c.slli      t4, 30
                  c.or        a0, a0
                  c.andi      a2, 13
                  c.srli      a2, 23
                  sub         t3, s5, t5
                  sltu        s0, s3, s1
                  c.or        a2, a1
                  c.andi      a0, -1
                  or          zero, s1, s1
                  srl         s4, t4, s3
                  sub         tp, s11, s1
                  nop
                  divu        t6, a6, s0
                  c.add       s2, s4
                  sltu        s2, s8, a2
                  c.xor       a0, a1
                  andi        ra, a3, 1668
                  sltiu       s3, s1, -677
                  andi        a2, a1, -394
                  sra         zero, s7, s0
                  xor         t3, ra, s5
                  sll         a4, ra, s1
                  divu        zero, s1, s2
                  slti        t1, s8, -1635
                  xor         s3, t5, a2
                  sltiu       a0, a6, 1637
                  c.slli      s9, 29
                  c.xor       a3, s1
                  srl         a7, gp, zero
                  c.lui       t4, 21
                  auipc       ra, 703985
                  andi        tp, a7, 2006
                  c.srai      a0, 19
                  sltiu       s3, s7, -1877
                  or          sp, sp, a2
                  c.add       t6, s1
                  sltu        a6, t0, s6
                  slt         a5, t3, tp
                  c.add       s11, a4
                  xori        gp, s5, 16
                  srli        zero, gp, 3
                  c.mv        t0, s4
                  slt         a0, s6, a6
                  sltiu       a4, s1, 911
                  c.addi      a2, 4
                  mulhu       a5, tp, s6
                  c.or        a3, a0
                  add         ra, t5, s5
                  slti        s9, s10, -1285
                  c.addi      t2, 29
                  slli        t3, a4, 1
                  c.sub       a1, s1
                  c.lui       ra, 14
                  nop
                  ori         s4, s6, -1761
                  c.addi16sp  sp, -16
                  srl         zero, s8, s0
                  slli        zero, t3, 18
                  srai        zero, t6, 27
                  srli        a5, sp, 13
                  xori        a3, s6, -765
                  slti        s11, s6, 332
                  mulhu       s11, tp, s11
                  nop
                  srai        a1, s11, 17
                  ori         s3, s10, -1148
                  c.addi      a2, -1
                  rem         s2, t1, a4
                  andi        s10, s9, -19
                  sltiu       s0, s7, -75
                  c.srli      a1, 28
                  or          zero, ra, s6
                  add         t1, t3, t2
                  sltu        s2, t6, s1
                  c.add       a5, s0
                  slt         t0, a5, t0
                  slli        zero, t3, 20
                  sll         a4, s6, t0
                  c.srli      a1, 30
                  c.mv        a2, t0
                  andi        s9, s8, 1926
                  sra         s0, t1, s4
                  or          s11, s4, s0
                  xori        t6, zero, 181
                  c.or        a2, s1
                  sra         a4, s9, s2
                  add         t3, s4, t0
                  sltiu       t1, s8, 1187
                  c.nop
                  c.addi      t0, 1
                  sra         s9, zero, t5
                  srai        s5, s0, 22
                  c.lui       a6, 7
                  auipc       a2, 100675
                  sra         t4, s3, s3
                  mulh        s4, t4, a1
                  and         t0, a1, a0
                  mulhu       sp, s1, t3
                  or          sp, t3, a4
                  sll         t0, s0, a7
                  rem         zero, zero, sp
                  nop
                  nop
                  srl         t0, t4, s5
                  sll         sp, tp, a1
                  sll         a1, t5, t3
                  c.li        s3, -1
                  c.srli      a0, 30
                  div         t6, s10, t2
                  sltiu       s0, s1, -226
                  c.mv        s7, a3
                  c.and       a2, a3
                  c.sub       a2, a5
                  mulhsu      t0, s4, s9
                  auipc       t0, 501592
                  mul         s8, s9, a6
                  mulhu       s8, a0, gp
                  c.addi      sp, -1
                  c.addi4spn  a3, sp, 976
                  sltiu       a6, a6, 1864
                  mul         t4, s6, s4
                  sltu        t1, s9, a2
                  lui         a0, 811034
                  xori        a1, a2, 1115
                  mulhsu      sp, a0, a1
                  c.andi      a1, 20
                  c.addi16sp  sp, -16
                  c.lui       a2, 8
                  c.srai      a0, 24
                  slt         a5, s6, a6
                  slt         a3, s9, t2
                  c.nop
                  auipc       s4, 220789
                  c.addi4spn  a3, sp, 624
                  xori        a3, s2, -150
                  ori         t6, s3, -327
                  addi        gp, t2, 288
                  andi        ra, zero, 1816
                  xori        t6, s9, 1349
                  andi        t4, s10, 190
                  sltiu       ra, s9, 1430
                  sub         gp, s8, s8
                  c.addi16sp  sp, 272
                  rem         t6, t6, a0
                  c.add       s11, sp
                  c.add       s3, a5
                  or          a1, tp, a4
                  xor         a7, t3, ra
                  xori        t6, s2, -1601
                  sll         t0, a3, gp
                  addi        a7, t0, -614
                  rem         a2, sp, a5
                  rem         s0, t5, t3
                  c.addi4spn  a3, sp, 928
                  sub         t3, a3, s8
                  nop
                  xori        s2, t1, 1294
                  nop
                  div         a3, ra, tp
                  rem         t3, tp, a0
                  auipc       s0, 230989
                  mul         a0, s1, a3
                  add         a0, gp, tp
                  c.addi16sp  sp, 448
                  xor         a0, ra, t1
                  rem         a1, a6, s4
                  c.and       a3, a1
                  mulh        t0, s5, a1
                  sltu        t1, s10, gp
                  addi        s7, a3, -90
                  sll         a4, a3, a6
                  c.addi4spn  a3, sp, 784
                  c.and       s0, s1
                  add         s0, s11, s0
                  slli        t4, s1, 26
                  sltu        gp, a5, a0
                  and         a0, s1, s3
                  c.addi4spn  a1, sp, 720
                  and         zero, tp, zero
                  add         a6, s2, t5
                  add         s9, t0, t1
                  sra         ra, a0, s0
                  slli        t0, sp, 14
                  ori         s5, a1, -1542
                  c.srli      a3, 19
                  c.xor       a3, a5
                  lui         t0, 889793
                  c.slli      s11, 11
                  sltu        s10, t4, s0
                  sub         a6, a3, s2
                  add         a4, gp, t1
                  auipc       sp, 44536
                  srai        a4, a3, 24
                  sltu        gp, zero, a1
                  or          zero, a1, s9
                  c.xor       a2, a3
                  nop
                  rem         t0, a6, a7
                  srli        s4, a4, 1
                  c.addi16sp  sp, -16
                  c.nop
                  div         a3, a0, t4
                  and         s7, t6, t2
                  rem         s11, t3, zero
                  xori        a0, s4, 668
                  slt         s2, zero, t4
                  mulh        s4, a7, s7
                  c.addi      a5, 27
                  slli        tp, s2, 7
                  srl         s3, t5, s2
                  andi        s8, a5, -715
                  srai        tp, sp, 18
                  c.or        a1, a1
                  c.sub       a3, a3
                  lui         ra, 992930
                  mulh        a6, t1, s3
                  sltu        ra, s11, s7
                  slt         s0, s1, s5
                  srai        a0, t4, 18
                  c.or        a2, a3
                  c.addi4spn  a1, sp, 320
                  c.slli      t4, 20
                  c.addi4spn  a2, sp, 992
                  sltu        a2, a0, t4
                  andi        gp, tp, -856
                  rem         t2, s5, t4
                  c.srai      a0, 26
                  c.addi4spn  a1, sp, 160
                  mul         sp, a4, s5
                  sll         a1, s9, s0
                  c.addi      ra, -1
                  srai        t3, s5, 5
                  srai        zero, a5, 21
                  c.sub       a1, a3
                  lui         s11, 900399
                  xori        a0, a2, -1193
                  srli        a4, s2, 18
                  slt         sp, s1, sp
                  c.sub       a1, s1
                  sltu        t6, s4, s4
                  c.addi4spn  a5, sp, 592
                  ori         s10, zero, -1970
                  sub         a6, s0, tp
                  and         a5, s8, t4
                  c.add       ra, s6
                  srl         t0, s5, tp
                  sra         t4, s7, t2
                  addi        s2, t6, -1715
                  c.and       a2, a3
                  or          ra, a6, t5
                  c.addi      s8, 7
                  or          s9, t5, t5
                  c.nop
                  c.or        a3, a0
                  xori        s4, a0, 280
                  c.li        gp, 28
                  c.li        ra, 11
                  div         t3, a1, zero
                  addi        s2, s1, -897
                  c.addi4spn  a1, sp, 336
                  sltu        a5, ra, a0
                  srli        gp, s4, 22
                  ori         zero, tp, 581
                  c.srli      a1, 6
                  mul         t2, s0, s10
                  mulhu       t1, t0, s11
                  c.sub       a2, a0
                  mulh        s0, a7, tp
                  divu        t1, t6, ra
                  divu        s9, s10, s0
                  rem         a6, t4, t6
                  srli        a3, zero, 3
                  c.addi16sp  sp, 352
                  nop
                  c.srai      a1, 23
                  srli        s0, t1, 31
                  sub         a3, t4, s3
                  rem         sp, s11, a4
                  rem         t1, s0, t0
                  mul         s9, s8, tp
                  mulhu       s8, s1, a6
                  xori        tp, a7, -655
                  slt         a4, s4, a2
                  c.addi      s5, 27
                  or          s9, s8, t1
                  c.sub       a2, a1
                  sltu        t1, a4, s9
                  and         t6, t6, s8
                  slti        s0, a4, -218
                  c.slli      s8, 16
                  auipc       zero, 1046867
                  sltiu       tp, s8, -1014
                  c.addi      a6, -1
                  addi        a2, a5, -646
                  sra         s5, s8, t4
                  c.li        s5, -1
                  or          s10, a1, ra
                  and         t2, t0, a7
                  or          tp, t5, s8
                  auipc       sp, 309599
                  andi        a3, t5, 2015
                  slti        tp, s9, 218
                  nop
                  c.and       a2, s0
                  auipc       s9, 706717
                  mulhsu      s4, s0, a0
                  c.srai      a1, 22
                  c.nop
                  c.mv        t2, a0
                  c.addi4spn  a2, sp, 624
                  c.mv        ra, a7
                  srli        t4, s1, 27
                  c.addi4spn  a3, sp, 960
                  c.addi4spn  a2, sp, 224
                  sltu        a1, s1, s11
                  c.and       a0, a0
                  c.andi      a3, -1
                  mulh        a7, a1, s11
                  slt         gp, a0, s3
                  lui         t4, 207083
                  srl         t4, zero, a6
                  sltiu       a2, s7, -522
                  c.li        ra, 21
                  c.srli      a1, 20
                  andi        s10, s6, 1488
                  xor         t4, s1, s8
                  and         ra, zero, a3
                  sub         zero, s5, s8
                  and         s7, sp, ra
                  mulhsu      sp, a7, t1
                  c.lui       s2, 22
                  slti        gp, tp, -1645
                  srli        a7, t4, 20
                  sub         s4, a3, zero
                  or          zero, s2, s3
                  c.and       a2, a2
                  mulhu       a2, s1, s5
                  and         s11, t1, a6
                  srli        a2, a7, 30
                  c.li        t0, -1
                  sub         a0, t1, a6
                  c.nop
                  addi        s5, s9, -1703
                  c.li        sp, -1
                  mulh        s7, t2, a2
                  andi        a3, s3, 1516
                  srai        a2, t1, 4
                  divu        s7, gp, tp
                  sra         s4, t2, a4
                  add         s4, s2, s11
                  nop
                  c.srli      a2, 1
                  divu        s2, tp, t3
                  xor         t4, a3, sp
                  mulhu       s11, s4, t1
                  c.li        t1, 20
                  andi        a0, a5, -783
                  c.sub       a3, s0
                  c.and       a3, a0
                  c.addi      t3, 12
                  divu        ra, s9, a3
                  lui         a0, 2815
                  divu        s7, t5, t1
                  sltu        s9, a1, ra
                  rem         t0, ra, a5
                  mul         a3, sp, t4
                  xori        t4, t6, -625
                  slli        s7, s9, 15
                  c.add       s5, a2
                  mulh        t3, s9, s4
                  andi        zero, t5, -1311
                  xori        s3, sp, -762
                  c.andi      a2, 2
                  and         t6, t2, t3
                  div         t4, t0, a1
                  c.or        a1, a2
                  slt         zero, a1, s2
                  mulhsu      t1, s2, a1
                  c.sub       a3, a0
                  c.addi4spn  a0, sp, 640
                  nop
                  or          t6, s11, sp
                  c.addi      sp, -1
                  lui         t0, 850578
                  andi        a7, s2, 838
                  c.slli      a0, 21
                  c.srai      a3, 15
                  or          s11, t4, s1
                  sll         a7, s2, t4
                  lui         s2, 883853
                  slli        t1, s10, 15
                  xori        s5, a0, -6
                  c.sub       a3, s1
                  or          t3, s8, s4
                  rem         a3, t2, s2
                  c.or        a3, a1
                  add         a3, sp, ra
                  c.or        s0, a1
                  c.and       a1, a3
                  sll         s8, zero, s9
                  slti        tp, s10, 1551
                  mul         a6, t6, s5
                  c.and       a4, s1
                  sltiu       t0, a6, -1557
                  slt         s11, a5, s10
                  xori        t0, s7, -375
                  c.add       s4, a1
                  and         zero, s9, a4
                  nop
                  slti        zero, a4, -2008
                  c.mv        tp, s11
                  c.and       a3, a2
                  srl         zero, t3, t5
                  add         s10, s10, a6
                  c.xor       a2, a0
                  sltiu       t2, s2, 1919
                  c.add       a3, a4
                  c.addi16sp  sp, -16
                  srli        zero, a0, 2
                  sltu        s8, s9, gp
                  sub         s7, t0, s1
                  c.lui       gp, 19
                  c.nop
                  c.addi4spn  s0, sp, 144
                  c.and       s0, a0
                  c.slli      ra, 2
                  div         a6, t4, s11
                  slti        s8, sp, 1397
                  c.srai      a3, 17
                  ori         a4, s2, 1481
                  c.addi4spn  a2, sp, 336
                  sltiu       t0, s11, -1576
                  c.addi16sp  sp, -16
                  srli        s2, a2, 18
                  c.addi16sp  sp, -16
                  xori        s3, t4, 1968
                  ori         s4, a7, 668
                  and         s4, t0, t6
                  c.addi16sp  sp, 240
                  c.or        a2, a0
                  slti        a2, s6, 931
                  rem         t3, s10, a0
                  div         s10, zero, zero
                  sub         zero, tp, s0
                  c.or        a1, a2
                  rem         t2, a3, t0
                  c.sub       a4, a5
                  c.li        tp, 15
                  srli        s9, t1, 21
                  lui         a1, 597740
                  c.li        s11, 25
                  sltiu       zero, zero, 1709
                  c.andi      a2, 9
                  c.andi      a1, -1
                  sra         a0, s0, s0
                  auipc       s5, 683452
                  sltiu       sp, a1, 774
                  c.li        a2, 0
                  c.sub       a3, a1
                  add         a1, t4, ra
                  addi        s4, s1, -649
                  c.xor       a0, a2
                  c.add       s0, s9
                  c.mv        s7, a6
                  srai        t2, s10, 0
                  divu        s8, gp, t6
                  add         t6, a5, s0
                  divu        a5, s11, t6
                  add         a6, t3, zero
                  slli        ra, s10, 27
                  srai        a3, s4, 2
                  c.mv        s2, ra
                  sll         a3, s3, t0
                  divu        sp, a3, a7
                  div         a2, s3, s0
                  c.add       t2, s6
                  c.addi16sp  sp, -16
                  or          a6, a6, t3
                  c.slli      s0, 18
                  sra         s11, t3, s4
                  mulh        t1, t2, a5
                  add         t4, s1, a1
                  mulhsu      a6, s7, a5
                  divu        a5, a6, tp
                  c.srli      a3, 25
                  sltiu       t1, s5, -578
                  c.addi16sp  sp, 80
                  c.nop
                  c.mv        s7, a0
                  c.nop
                  c.nop
                  c.or        a2, a2
                  sll         s3, a2, s10
                  xor         s3, a1, s3
                  c.slli      t4, 19
                  srli        s4, a0, 28
                  c.addi      a5, -1
                  ori         a5, a4, -1799
                  addi        a7, t6, -353
                  mulh        t1, zero, sp
                  c.srli      a3, 6
                  c.add       a6, s7
                  divu        a0, s4, s4
                  div         t3, s10, s5
                  c.lui       ra, 10
                  sub         a4, s11, a0
                  mulh        s11, s1, sp
                  or          t3, s0, s3
                  addi        sp, sp, 1679
                  c.addi4spn  a0, sp, 672
                  addi        t6, t2, 861
                  divu        tp, ra, s7
                  ori         t4, a3, -1155
                  add         zero, s7, s0
                  or          a7, s5, t3
                  mulh        s0, t2, s7
                  xori        zero, a3, -1159
                  srl         t6, t0, s8
                  divu        zero, s3, a4
                  and         s8, s0, s3
                  nop
                  mulhsu      s11, s10, s9
                  c.add       a0, s3
                  nop
                  add         gp, s10, ra
                  addi        s8, s4, -1580
                  sub         s11, s6, a2
                  add         zero, a7, a4
                  c.xor       a3, s1
                  c.srai      a3, 27
                  sra         s7, t5, a2
                  c.addi4spn  a3, sp, 688
                  xor         t1, s5, zero
                  c.andi      a2, 1
                  c.slli      t0, 24
                  c.and       a1, a2
                  sra         a2, a2, t6
                  c.and       a3, a2
                  nop
                  c.xor       a3, s1
                  mul         zero, a6, a4
                  c.xor       a1, a1
                  sll         t0, a5, s9
                  srl         zero, s1, a7
                  sll         t4, t5, s10
                  c.xor       a0, a3
                  slti        s0, s9, -1557
                  sltu        t4, t5, a4
                  c.sub       a2, s1
                  c.lui       ra, 31
                  c.addi      ra, 24
                  mulhu       sp, t3, t0
                  mul         a0, gp, gp
                  sub         a6, s0, a2
                  div         zero, s9, s9
                  c.li        a2, 2
                  slti        zero, s0, 509
                  ori         a4, t3, 973
                  add         ra, s4, a5
                  or          t6, a3, s8
                  or          s3, s9, gp
                  c.addi      s0, -1
                  add         gp, a7, a4
                  xor         zero, a4, s3
                  slt         t1, t3, s11
                  mul         zero, t0, a7
                  c.add       t6, a6
                  c.xor       a2, a5
                  mulhsu      gp, a5, a7
                  add         zero, s7, t5
                  addi        a3, t5, 1127
                  and         sp, s3, t2
                  rem         ra, s8, s5
                  c.li        ra, -1
                  xor         a0, s5, t0
                  mulh        s0, t0, a5
                  nop
                  mulhsu      a5, s9, t4
                  andi        s9, s11, -936
                  nop
                  c.li        a3, 30
                  mul         s3, a5, s4
                  divu        tp, zero, s0
                  mulh        tp, a0, a2
                  auipc       s8, 217154
                  c.or        a2, a3
                  c.srai      a2, 1
                  addi        s9, s8, 430
                  add         sp, ra, a7
                  c.andi      a2, 23
                  xor         t4, sp, t0
                  addi        tp, a2, 1322
                  rem         t1, a5, t4
                  c.mv        a0, tp
                  c.sub       a2, a5
                  sltu        a6, a1, s7
                  c.andi      a1, 7
                  rem         s10, s8, a1
                  auipc       gp, 542117
                  sltiu       s5, t1, -1074
                  c.slli      s2, 30
                  sltiu       tp, a3, 1163
                  sra         a7, a2, s7
                  c.addi16sp  sp, 192
                  srai        s9, a5, 19
                  andi        s5, s5, 120
                  auipc       t2, 559113
                  mulhu       a5, t3, t6
                  c.nop
                  c.li        a2, 18
                  c.slli      ra, 17
                  c.addi16sp  sp, 256
                  sra         t3, a5, t1
                  sll         zero, s3, gp
                  sltiu       zero, s10, -640
                  andi        sp, s2, -679
                  or          a1, t2, ra
                  and         a6, s0, a5
                  div         t1, a5, s3
                  srl         s2, a1, s8
                  sra         tp, ra, t5
                  sltiu       a4, s1, -1995
                  slli        s3, s10, 18
                  c.andi      a2, -1
                  or          a3, s3, s8
                  c.andi      a2, 16
                  c.andi      a3, -1
                  c.li        a3, 31
                  c.andi      s0, 20
                  auipc       zero, 92526
                  nop
                  c.srai      a3, 10
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, 80
                  c.and       a0, a3
                  c.srai      a1, 9
                  c.add       s3, a3
                  mulh        a2, t2, s5
                  c.slli      a4, 26
                  sra         a7, a5, a4
                  mul         a6, gp, ra
                  c.addi      t4, 20
                  c.addi      ra, 21
                  c.or        a1, a0
                  mulh        s7, s11, a3
                  xor         zero, s6, s7
                  c.and       a0, a1
                  sub         s5, a0, t2
                  xori        a6, sp, 1831
                  sub         a2, t1, ra
                  srli        tp, a0, 10
                  c.addi4spn  a5, sp, 800
                  c.xor       a3, s0
                  c.xor       a2, a3
                  andi        s5, s9, -2042
                  or          s7, t0, sp
                  c.lui       t2, 25
                  sub         t0, s0, gp
                  or          s11, a2, s7
                  mulh        s4, sp, a6
                  mulh        s9, s5, a7
                  andi        zero, t0, -40
                  c.andi      a2, -1
                  srai        t1, a1, 7
                  mul         t4, t2, a5
                  c.add       t6, s0
                  xori        s7, a0, 1261
                  c.addi16sp  sp, -16
                  sra         t1, t3, a7
                  c.or        a2, a0
                  andi        a0, t0, -1087
                  mulhsu      s7, s3, t0
                  c.srli      a2, 19
                  or          ra, s0, s6
                  c.addi4spn  a2, sp, 896
                  c.addi      s4, -1
                  slt         a3, s0, s4
                  mulh        s2, tp, gp
                  c.or        a2, a3
                  c.or        a1, s1
                  and         zero, t2, a1
                  sub         zero, ra, t3
                  rem         s5, a4, a4
                  slli        s5, a4, 29
                  c.nop
                  nop
                  sll         sp, s2, s4
                  c.srai      a2, 6
                  c.lui       a3, 26
                  c.lui       gp, 2
                  xori        t6, s4, -427
                  slti        t2, t5, 665
                  sub         zero, t3, t0
                  c.slli      ra, 9
                  c.andi      s0, -1
                  c.or        a2, a5
                  sll         a6, s2, a3
                  add         s4, t6, t5
                  slti        s3, a6, -1891
                  sltu        s8, s11, s10
                  c.mv        a6, sp
                  srli        t1, s3, 23
                  lui         a1, 551530
                  srai        s9, sp, 16
                  xori        zero, t1, 1565
                  c.lui       s5, 10
                  sltu        t2, a4, tp
                  c.li        a7, -1
                  c.nop
                  c.slli      a6, 1
                  auipc       t4, 679976
                  mulh        a3, tp, a5
                  ori         a7, s5, 1815
                  addi        t3, a1, 61
                  sll         gp, gp, s1
                  c.and       a2, a0
                  c.addi      s5, 28
                  mulh        s0, t0, t3
                  auipc       zero, 545206
                  c.andi      a3, -1
                  add         s3, a0, a4
                  sltiu       a7, t1, -599
                  sll         t1, s6, s11
                  mulh        s10, tp, s6
                  c.addi4spn  a4, sp, 208
                  mul         a5, t2, t4
                  c.and       a0, a3
                  and         s7, t3, gp
                  srl         tp, a2, t6
                  srai        t2, a2, 31
                  slli        s9, gp, 2
                  c.slli      ra, 7
                  mulhsu      zero, a1, s7
                  ori         t6, t2, -1592
                  divu        tp, t3, s5
                  c.xor       a1, a1
                  c.andi      a1, 30
                  or          zero, t2, s8
                  c.nop
                  srai        t3, a6, 12
                  srl         a1, s5, s9
                  addi        s11, s10, 1760
                  divu        s0, tp, a4
                  c.srli      a4, 14
                  mulh        zero, s4, t4
                  sltiu       zero, s4, -1371
                  c.or        a1, a3
                  c.slli      t1, 2
                  sra         s4, a4, t1
                  xori        a3, a1, 1267
                  sub         a7, s3, a1
                  xor         s7, s5, t3
                  div         t4, s7, s1
                  or          a5, s3, t0
                  mulh        s2, s4, gp
                  rem         s8, s5, a5
                  slt         s3, a1, s9
                  ori         s0, s8, -1842
                  c.srai      a5, 19
                  srl         s7, tp, a1
                  div         t2, a5, t3
                  c.srli      a3, 18
                  sltiu       s7, s0, -581
                  lui         t6, 321514
                  lui         a0, 395261
                  c.xor       a2, a3
                  c.srli      a2, 15
                  c.addi      a0, 24
                  mulhsu      gp, s2, s11
                  auipc       t3, 724040
                  or          s9, t1, t1
                  c.addi4spn  a3, sp, 528
                  srl         zero, a3, s4
                  c.lui       a3, 26
                  slti        sp, s11, -1362
                  mulhu       t6, ra, a6
                  c.srli      a1, 7
                  slt         s4, t2, ra
                  srli        sp, ra, 26
                  mulh        a5, gp, s3
                  ori         zero, a1, -1640
                  slt         s8, s7, a2
                  mulhsu      zero, a5, s5
                  c.addi16sp  sp, 416
                  mulhsu      zero, s2, t0
                  srl         a4, s1, tp
                  slli        t1, ra, 14
                  sll         s8, t0, s11
                  mulh        t6, t0, t6
                  srai        a1, s0, 14
                  c.or        a1, a0
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_0
                  li         t4, 0x0
                  li         t3, 0x0
                  li         s10, 0x6fe19d03
                  li         s4, 0x0
                  li         s8, 0x92789bd
                  li         t0, 0x0
                  li         s11, 0x0
                  li         s9, 0x0
                  li         t1, 0x0
                  c.addi16sp  sp, 320
                  c.addi      a0, -1
                  div         t2, s9, a0
                  mul         a4, t2, t2
                  divu        a3, t3, s4
                  mul         sp, a3, s3
                  auipc       a0, 310476
                  c.add       t3, s11
                  c.lui       t1, 22
                  c.nop
                  c.addi16sp  sp, 416
                  divu        ra, s1, gp
                  c.sub       s0, a3
                  mulhsu      s7, gp, gp
                  lui         t6, 551636
                  sub         s4, t6, a0
                  sub         s4, a7, s7
                  addi        t4, sp, -1804
                  c.nop
                  addi        t3, s3, 296
                  addi        a1, a5, -1649
                  c.add       a6, t5
                  auipc       a0, 60255
                  c.nop
                  c.nop
                  c.lui       s0, 21
                  c.andi      a3, 14
                  div         t6, sp, s7
                  nop
                  mul         s2, t3, t6
                  c.lui       s5, 31
                  sll         s8, t0, t2
                  c.sub       a1, a1
                  c.andi      a2, 12
                  sll         gp, s9, s5
                  c.add       s7, s2
                  srai        a3, s2, 19
                  lui         ra, 188832
                  c.mv        ra, s4
                  lui         a4, 514103
                  c.mv        ra, t5
                  c.lui       ra, 25
                  lui         t4, 382691
                  divu        s9, a2, s3
                  c.addi      tp, 4
                  mul         zero, t0, s5
                  srli        t1, s4, 14
                  c.add       ra, s3
                  c.add       t3, s9
                  c.sub       s0, a1
                  andi        a4, zero, 1559
                  or          zero, s5, tp
                  rem         s5, s6, s10
                  divu        a6, t5, a6
                  ori         s11, s2, -199
                  sub         s4, s7, ra
                  c.addi      sp, -1
                  sll         zero, sp, t6
                  andi        a4, a1, 789
                  c.add       s7, a6
                  div         a4, s0, s8
                  c.mv        t6, s5
                  sub         t4, a3, s6
                  slli        s7, a2, 20
                  addi        s11, t0, 1886
                  or          a1, sp, a4
                  rem         a6, s4, t5
                  c.nop
                  sltiu       s3, t1, -1329
                  rem         s5, t6, t5
                  mul         s11, a2, a1
                  slli        a0, a6, 7
                  c.nop
                  sra         a4, sp, a5
                  div         zero, a1, s7
                  divu        s11, t5, a3
                  c.lui       ra, 9
                  c.and       a0, a4
                  c.and       a4, a3
                  lui         s11, 437026
                  c.slli      t4, 13
                  c.lui       a1, 3
                  c.addi      t2, -1
                  sra         s5, t5, s5
                  srl         t6, t0, a1
                  andi        t4, t6, 1400
                  and         s8, sp, s9
                  and         s2, s2, s9
                  mulh        zero, a3, t4
                  c.add       a3, t6
                  c.slli      s7, 24
                  c.andi      a2, -1
                  c.addi16sp  sp, -16
                  addi        sp, s9, -1670
                  c.xor       a2, a1
                  c.sub       a2, s1
                  c.lui       a5, 28
                  ori         t4, a3, 290
                  sltiu       s11, zero, -1999
                  c.or        a2, a3
                  auipc       t3, 881108
                  c.nop
                  divu        gp, a5, s6
                  ori         a7, a3, 53
                  slli        a1, a4, 31
                  c.mv        a7, a4
                  sltiu       zero, t0, 1279
                  sltiu       zero, s1, 1288
                  andi        s5, t0, -375
                  c.andi      s0, -1
                  c.and       a2, s1
                  slli        s8, gp, 20
                  slti        zero, s2, 1379
                  lui         s9, 327186
                  sltu        zero, a5, s7
                  slt         ra, zero, s9
                  divu        s8, t1, s10
                  srli        zero, a1, 31
                  sltu        s9, a4, zero
                  nop
                  c.addi      a5, 25
                  c.or        a1, a1
                  c.xor       a3, a3
                  add         a6, t1, s4
                  c.nop
                  slt         zero, a4, t6
                  xori        a2, s8, -1352
                  div         a4, a0, s5
                  c.andi      a5, 14
                  c.add       ra, t5
                  c.nop
                  sltiu       s5, s1, 257
                  c.and       a3, a2
                  lui         s4, 93400
                  srl         a2, a1, ra
                  c.li        ra, 25
                  sra         s4, t2, s10
                  c.andi      a2, 9
                  sub         s5, s5, gp
                  c.slli      a0, 20
                  xor         a2, ra, t1
                  or          t1, s10, s3
                  mulhsu      zero, s3, s8
                  srli        a0, a3, 20
                  xor         t2, t5, s4
                  mulhu       a3, a0, a6
                  srai        t3, s1, 19
                  slli        s7, t4, 9
                  mulhsu      a7, a5, s7
                  rem         tp, t0, t1
                  auipc       zero, 105097
                  c.andi      a3, 15
                  c.andi      a0, 23
                  c.nop
                  c.mv        s3, a1
                  mulhsu      a3, a0, s8
                  c.nop
                  c.or        a3, a3
                  sra         a0, s2, s8
                  sra         zero, s9, a6
                  slt         t6, ra, a3
                  c.addi4spn  a1, sp, 400
                  c.add       ra, a5
                  c.li        t6, -1
                  and         t3, t1, s7
                  addi        s3, t5, 873
                  c.srai      a3, 27
                  c.srai      a4, 16
                  c.lui       s11, 9
                  srli        s11, s11, 30
                  c.slli      ra, 24
                  rem         ra, s2, a2
                  srai        s5, sp, 8
                  auipc       a7, 233027
                  c.addi16sp  sp, 48
                  c.mv        s3, a5
                  c.andi      a0, 24
                  c.addi4spn  s0, sp, 496
                  mulh        zero, a3, a4
                  ori         a0, gp, -1329
                  divu        zero, sp, a4
                  addi        s4, ra, 702
                  slli        s2, a6, 30
                  or          ra, t2, s7
                  nop
                  mulhu       t3, s3, t0
                  ori         sp, a0, -1907
                  sra         s4, s1, s0
                  c.and       a1, a2
                  c.andi      a2, 30
                  c.sub       a0, a1
                  sltu        t0, a7, t6
                  sll         t0, a6, t6
                  c.srai      a1, 27
                  ori         sp, s11, 771
                  c.li        a7, -1
                  c.slli      s9, 5
                  sub         s7, t0, s11
                  slt         s0, s3, a0
                  c.sub       a3, s1
                  ori         t0, a4, 748
                  divu        s5, t0, t6
                  c.srli      s0, 25
                  xori        a4, a4, -1597
                  c.and       a1, a0
                  c.li        sp, 7
                  mulhu       a5, a7, a0
                  c.mv        t2, t0
                  add         a6, t1, a3
                  c.sub       a2, a1
                  c.li        tp, 10
                  c.sub       a1, a5
                  c.sub       a3, a1
                  c.addi4spn  a2, sp, 720
                  c.srli      a1, 17
                  sra         a7, t3, t2
                  c.mv        s8, s5
                  c.srli      a2, 7
                  c.mv        a3, sp
                  c.addi4spn  a3, sp, 848
                  c.lui       ra, 14
                  slti        s7, a5, -504
                  srli        t2, t5, 12
                  c.addi      s9, 17
                  c.slli      s9, 2
                  sll         a0, tp, sp
                  rem         s10, s7, s8
                  sll         s7, zero, zero
                  c.and       a1, a2
                  c.li        ra, 4
                  c.andi      a2, -1
                  c.slli      a6, 11
                  srai        zero, s3, 29
                  slti        t3, a0, 1972
                  xor         s5, s5, s11
                  mulh        zero, a6, sp
                  xor         s4, a2, gp
                  c.andi      a4, 4
                  c.xor       a1, a0
                  c.srai      a1, 23
                  sll         t3, a6, ra
                  rem         zero, s6, s7
                  mulh        t4, a4, a6
                  c.slli      a3, 31
                  c.addi16sp  sp, 208
                  mulhsu      t4, s2, t0
                  mulhsu      a7, a7, t2
                  add         ra, t1, a0
                  c.xor       a1, s1
                  c.srli      a5, 21
                  add         a5, gp, a2
                  srai        t4, a1, 1
                  c.or        a3, s0
                  mulhu       zero, s7, t2
                  xor         gp, s11, t0
                  c.srai      a1, 9
                  slli        a0, s10, 3
                  sltiu       t2, s11, 1410
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_12
                  li         t3, 0x0
                  li         s5, 0x279c2d8c
                  li         s8, 0x0
                  li         t2, 0x0
                  li         t0, 0x1
                  li         s3, 0x1
                  li         t6, 0x0
                  li         s11, 0x1
                  li         a5, 0x2ae24710
                  mulh        a1, gp, s5
                  addi        zero, a5, 1242
                  sub         gp, a4, a2
                  c.li        s9, 27
                  c.sub       a0, a1
                  c.mv        a3, s4
                  c.nop
                  c.li        s11, 18
                  nop
                  auipc       a7, 938771
                  c.add       s0, a0
                  mulhsu      zero, s8, a5
                  mul         t1, tp, s0
                  c.addi      a5, 22
                  add         a7, t1, s7
                  c.add       s5, s9
                  c.xor       a0, a1
                  or          a3, t5, tp
                  and         a7, s10, t3
                  sra         a7, t4, a4
                  c.addi4spn  a1, sp, 112
                  ori         t3, s8, 1287
                  andi        s7, zero, 429
                  xori        tp, a5, -542
                  xor         t1, t3, s2
                  c.addi4spn  a2, sp, 112
                  c.addi      a7, 27
                  sltu        zero, s4, s7
                  and         s3, sp, t4
                  xor         sp, zero, s5
                  add         a5, t4, t6
                  nop
                  nop
                  or          s8, t6, t6
                  slt         zero, s8, zero
                  sub         s8, s4, gp
                  mulhu       zero, a4, sp
                  c.addi4spn  a3, sp, 336
                  slti        s11, s0, 753
                  mulh        s9, t6, a1
                  srl         s2, a1, t3
                  sll         t3, a0, s4
                  xori        t4, s3, 438
                  div         t0, tp, s8
                  c.andi      a2, -1
                  c.li        s5, -1
                  sltu        zero, a2, a5
                  or          t4, s10, zero
                  addi        s11, s3, -961
                  c.or        a1, a5
                  add         t4, s5, t5
                  c.xor       a3, a1
                  srl         t4, zero, s1
                  add         s0, a3, t3
                  or          s11, t6, a5
                  c.add       s3, t2
                  add         a1, t1, ra
                  xor         s4, a1, s3
                  lui         a6, 101148
                  auipc       a7, 424600
                  c.xor       a3, a1
                  c.andi      s0, -1
                  slti        s0, s8, -1700
                  srli        zero, a5, 18
                  c.xor       a2, a2
                  addi        s2, a3, 970
                  sub         s8, a7, s10
                  add         s5, s8, a7
                  srli        ra, s9, 2
                  and         s11, t4, s7
                  mulhsu      s8, a6, s10
                  srl         zero, sp, s11
                  c.li        gp, 25
                  c.add       s2, t3
                  slli        t2, a0, 8
                  slt         s4, a6, s2
                  c.mv        sp, s3
                  c.srai      s0, 26
                  c.srli      a2, 24
                  divu        tp, s5, a3
                  mulhsu      zero, t4, a7
                  and         tp, t5, t0
                  add         a0, zero, t2
                  c.addi4spn  a3, sp, 864
                  c.xor       a3, a2
                  slli        a4, ra, 14
                  lui         a0, 642082
                  srl         a7, s4, a0
                  mulh        a4, t5, s10
                  add         s8, s2, gp
                  c.slli      t4, 29
                  add         t1, s5, sp
                  c.srai      a2, 20
                  c.xor       a1, a1
                  c.xor       a3, a2
                  c.slli      a3, 25
                  lui         a4, 599132
                  add         a7, s3, t5
                  c.or        a3, a0
                  mulhsu      t3, sp, a2
                  div         ra, t3, s11
                  c.add       gp, s7
                  div         t4, s4, a3
                  slt         a5, a2, a7
                  slt         zero, s7, t1
                  srai        s3, t3, 29
                  and         a7, tp, s4
                  c.sub       a1, a3
                  add         zero, gp, t1
                  srai        s4, gp, 27
                  c.mv        a6, tp
                  or          s3, s0, s9
                  add         s8, t1, s0
                  xori        gp, s6, -544
                  andi        t0, s7, 1665
                  auipc       s10, 462438
                  andi        a4, s3, 669
                  c.lui       s11, 3
                  c.srai      a5, 12
                  sll         s8, t4, a4
                  slti        a0, s7, 892
                  c.lui       a3, 1
                  or          s4, t0, a7
                  c.slli      s5, 20
                  sltiu       s9, s4, -733
                  mulhu       a0, t5, t3
                  lui         a1, 779157
                  xori        t2, a0, -1465
                  div         zero, t3, a3
                  srl         s11, s11, s4
                  c.mv        a3, t6
                  divu        t0, t6, s3
                  srai        a1, a7, 25
                  c.mv        t6, a2
                  and         tp, s6, t5
                  c.xor       a1, s0
                  add         a3, a4, ra
                  xori        zero, ra, 932
                  mulhsu      t0, s0, s6
                  slti        gp, s0, 357
                  ori         a3, t5, -1650
                  c.lui       a0, 3
                  sra         a5, s2, a5
                  andi        s3, zero, 61
                  c.or        a3, a0
                  slt         s8, s4, s11
                  ori         zero, s7, -1252
                  mulhsu      zero, t6, s1
                  c.addi16sp  sp, 272
                  c.addi      ra, -1
                  c.or        a2, s1
                  andi        a1, tp, -1420
                  c.slli      s0, 21
                  c.srli      a0, 14
                  and         s0, t1, s8
                  c.lui       t0, 2
                  srai        a6, a5, 0
                  mulhsu      s7, a2, a3
                  lui         a3, 958070
                  addi        a0, zero, -181
                  c.slli      t6, 23
                  slti        t1, a3, -1694
                  slt         s5, gp, t3
                  mulhsu      a1, t2, a4
                  divu        zero, t1, s3
                  add         s5, s0, t0
                  divu        tp, s9, a3
                  sltiu       s7, s1, -2006
                  sltu        zero, t0, zero
                  sltu        zero, tp, s4
                  c.sub       a1, a1
                  c.srli      s0, 1
                  sltiu       s10, s2, -1183
                  c.lui       a7, 13
                  c.sub       a2, a2
                  auipc       a7, 218303
                  srli        t3, s4, 1
                  c.nop
                  srai        a4, t2, 24
                  mulhu       sp, a1, ra
                  ori         t1, t5, -1015
                  c.mv        a7, t4
                  c.or        a2, a2
                  mulh        a0, a6, s7
                  slt         s7, s4, s3
                  slli        gp, a0, 16
                  c.addi4spn  s0, sp, 240
                  srai        a3, a4, 3
                  c.mv        ra, s2
                  c.addi16sp  sp, 80
                  lui         a7, 212994
                  srli        a5, t3, 14
                  srli        s8, a1, 1
                  rem         a4, t2, s7
                  slt         ra, a4, t5
                  c.nop
                  mul         zero, gp, gp
                  sltiu       zero, a4, -686
                  li         t6, 0x22a2cb3c #start riscv_int_numeric_corner_stream_10
                  li         s0, 0x0
                  li         t4, 0x0
                  li         t3, 0x1
                  li         a3, 0x1
                  li         s9, 0x0
                  li         a2, 0x1
                  li         s10, 0x52b80363
                  li         a4, 0x1
                  li         ra, 0x4a775a48
                  c.add       t0, a5
                  mulh        t1, t0, gp
                  c.sub       a0, a5
                  add         s2, s10, s4
                  c.add       t2, s0
                  divu        s4, a1, s1
                  sub         s4, a1, s5
                  sub         s9, t3, a4
                  sub         a5, t6, s3
                  c.addi4spn  a3, sp, 688
                  mulhu       a7, s10, s9
                  c.lui       a0, 21
                  c.addi16sp  sp, -16
                  nop
                  c.mv        a3, a6
                  c.add       ra, t5
                  divu        s7, s9, a1
                  auipc       a3, 762794
                  c.sub       a1, a1
                  divu        zero, s1, s10
                  c.addi16sp  sp, -16
                  sub         a7, t2, s5
                  mul         s4, t6, tp #end riscv_int_numeric_corner_stream_10
                  c.xor       a2, a0
                  c.addi      s4, 29
                  add         a2, t5, a6
                  sltu        t6, s4, a0
                  addi        t1, gp, -1965
                  srl         zero, s4, s3
                  xor         a1, a0, s2
                  c.and       a1, a0
                  c.addi4spn  a2, sp, 272
                  srai        s5, a6, 15
                  andi        tp, t1, 1316
                  mulhsu      zero, s3, a2
                  c.lui       ra, 27
                  slt         gp, t4, tp
                  mul         a1, t0, s10
                  lui         s2, 408370
                  mulh        a2, s2, t0
                  c.or        s0, s1
                  div         s0, a4, tp
                  c.add       s7, t5
                  or          s0, s4, s11
                  c.addi16sp  sp, -16
                  c.srli      a1, 7
                  c.srli      a3, 26
                  sra         s0, s1, a2
                  c.sub       a5, a0
                  sra         zero, s3, a0
                  mul         a3, s9, s6
                  rem         t3, t5, t6
                  c.addi      s4, 31
                  c.xor       a3, s1
                  c.lui       a4, 14
                  xor         a6, s2, a6
                  slt         tp, t5, s11
                  sub         ra, a2, t3
                  srl         s5, a0, s6
                  lui         t6, 711279
                  auipc       tp, 709870
                  xori        s5, tp, 1367
                  c.li        a3, 24
                  c.sub       a5, a2
                  ori         s3, sp, -1508
                  c.xor       a3, a2
                  slt         s8, t3, s5
                  or          t1, t5, a5
                  c.mv        ra, s9
                  c.lui       s4, 25
                  lui         s0, 262374
                  mulh        t4, s0, s5
                  sub         t6, gp, gp
                  c.srli      a2, 24
                  and         s10, a7, a3
                  andi        a1, s2, 1310
                  auipc       s2, 920457
                  c.addi      a4, 14
                  sltiu       zero, s7, -1980
                  andi        zero, s6, 1651
                  c.or        a2, a0
                  c.li        t6, 27
                  xori        zero, a6, 1648
                  c.slli      ra, 30
                  sltiu       a4, s7, -481
                  div         a0, s10, t0
                  and         t2, s3, s0
                  div         s0, a3, s3
                  auipc       zero, 696068
                  c.sub       a1, s0
                  c.add       a4, ra
                  c.srli      a1, 28
                  add         gp, s2, a3
                  add         a7, a5, t1
                  auipc       t6, 654025
                  mul         zero, a5, s6
                  c.mv        a2, s4
                  srli        s8, s6, 16
                  xori        s11, a2, -236
                  c.lui       ra, 9
                  sltiu       t3, s11, -931
                  div         a2, t3, a5
                  c.nop
                  mulhu       s2, s5, t2
                  c.sub       a2, a0
                  c.and       s0, s0
                  and         a2, t3, s5
                  nop
                  sltu        ra, t6, t5
                  c.srli      a2, 6
                  sll         zero, s8, s11
                  auipc       zero, 582703
                  c.srai      a1, 11
                  slli        a0, s7, 16
                  mulh        s2, s7, s5
                  mul         a5, t3, a6
                  slt         t2, t6, s7
                  c.and       a3, a0
                  c.lui       s0, 19
                  auipc       a0, 513782
                  div         a1, s7, t0
                  c.nop
                  addi        a2, a6, 25
                  mulhu       s0, s8, a4
                  addi        a7, s4, 206
                  and         t6, s11, s11
                  or          a0, s5, t3
                  nop
                  xori        a5, a7, 405
                  c.srli      a1, 24
                  c.xor       a2, a1
                  c.and       a1, a3
                  ori         a3, s3, 1022
                  mulh        t3, t1, s2
                  c.srli      a2, 22
                  add         s2, t1, a7
                  c.nop
                  c.addi16sp  sp, 16
                  sra         t2, s9, t0
                  c.andi      a5, -1
                  addi        s7, ra, 1086
                  c.li        s9, -1
                  addi        a1, t6, 1371
                  c.mv        t1, a3
                  c.addi      s8, 27
                  c.andi      a1, 23
                  addi        s3, s4, 2015
                  add         a2, s10, s11
                  ori         a1, s8, 1639
                  li         t6, 0x1 #start riscv_int_numeric_corner_stream_16
                  li         t2, 0x0
                  li         t4, 0x0
                  li         t3, 0x0
                  li         s8, 0x1c2ef743
                  li         a4, 0x1
                  li         a2, 0x0
                  li         s3, 0x65216a60
                  li         s2, 0x1
                  li         s4, 0x0
                  c.addi4spn  a1, sp, 304
                  add         a5, s1, t3
                  rem         a2, t6, a0
                  c.nop
                  c.sub       a3, a3
                  c.addi16sp  sp, 256
                  c.sub       a2, a2
                  lui         zero, 781073
                  addi        a4, a1, 93
                  lui         s8, 332613
                  rem         a0, zero, s0
                  nop
                  mulhsu      t4, a6, a5
                  mulhu       t4, s6, a0
                  add         t1, t0, s6
                  c.addi      s8, -1
                  nop
                  c.addi      s3, 6
                  mulh        s0, s9, s8
                  c.add       s11, s1
                  c.addi16sp  sp, -16
                  c.li        s4, 22
                  c.nop
                  c.addi4spn  a1, sp, 816
                  divu        t1, t5, s6
                  and         tp, t0, s11
                  sra         s7, a1, s7
                  rem         zero, s1, a7
                  ori         a0, s7, 476
                  mulhu       gp, sp, t1
                  c.nop
                  mulhsu      t0, a1, a1
                  mulhu       a6, s3, t4
                  c.addi16sp  sp, -16
                  c.srai      a1, 17
                  sltiu       a6, a5, -957
                  sub         ra, s0, zero
                  sra         t6, s5, s3
                  or          sp, t3, sp
                  c.li        t4, -1
                  c.add       a0, a1
                  c.mv        ra, tp
                  div         zero, a1, tp
                  c.srai      a3, 11
                  sra         t6, t1, a4
                  c.addi16sp  sp, 144
                  c.xor       a2, a3
                  c.mv        a1, s4
                  mulhu       a1, a0, t6
                  c.sub       a2, s1
                  c.addi4spn  a2, sp, 384
                  mulhsu      a1, s8, t4
                  add         s3, s2, s1
                  xor         a3, s6, t0
                  div         gp, s9, t2
                  sltu        s0, t5, t3
                  c.lui       ra, 13
                  slt         a1, s2, sp
                  c.li        ra, 1
                  slli        zero, t6, 24
                  c.nop
                  sltu        t6, gp, t3
                  ori         a3, zero, -656
                  slt         s2, s7, t6
                  c.addi      tp, -1
                  rem         s9, tp, a2
                  lui         gp, 609100
                  ori         s7, s10, -1561
                  rem         s0, s0, t4
                  c.mv        t1, sp
                  mulh        s7, zero, a5
                  c.addi4spn  a1, sp, 752
                  c.slli      a1, 16
                  c.sub       a1, s1
                  srl         zero, s7, s7
                  c.li        a4, 12
                  c.or        s0, a4
                  or          t1, tp, s2
                  c.li        t6, -1
                  slti        sp, s2, 686
                  c.xor       a1, s1
                  mulhsu      t6, s2, s7
                  c.xor       a1, s0
                  divu        s5, a5, a5
                  nop
                  c.or        a1, a2
                  auipc       t4, 74924
                  ori         t0, s2, -1105
                  ori         t6, a0, -273
                  sll         t3, t1, s1
                  c.andi      a2, -1
                  add         s3, gp, ra
                  srli        s4, s4, 3
                  slli        gp, t1, 8
                  rem         ra, a1, t4
                  xor         s0, s1, t3
                  c.mv        t6, s9
                  divu        t6, a5, s1
                  slli        s2, s5, 26
                  srl         a6, a6, s10
                  andi        s4, a1, 180
                  c.addi4spn  a2, sp, 960
                  mulh        s5, a4, ra
                  lui         s5, 535660
                  c.li        a4, 10
                  slti        a2, a1, -268
                  addi        s8, s4, 1998
                  c.addi      sp, 31
                  c.lui       ra, 10
                  c.li        s4, 26
                  c.nop
                  or          s9, s8, sp
                  c.nop
                  c.mv        t2, t6
                  c.and       a3, s1
                  addi        s2, s0, -169
                  sll         tp, t2, t2
                  c.addi      t4, -1
                  sra         s3, a2, a2
                  c.srai      a2, 27
                  c.srai      s0, 19
                  sltu        s7, t1, t4
                  c.nop
                  auipc       t3, 496339
                  c.addi      ra, 10
                  sra         a2, gp, s7
                  addi        s9, s8, 1783
                  rem         s11, a2, s7
                  and         s8, zero, a2
                  auipc       t4, 405459
                  xori        tp, t1, -614
                  srai        s4, s7, 7
                  c.addi4spn  a2, sp, 896
                  c.or        a0, a1
                  add         s7, a4, s4
                  and         a4, s5, t4
                  c.andi      a0, 4
                  c.lui       ra, 6
                  c.or        a2, a3
                  sltu        s7, a0, t5
                  c.andi      a3, -1
                  rem         s9, a2, t4
                  c.sub       a0, a0
                  c.addi      s9, -1
                  c.and       a3, a3
                  c.addi      ra, -1
                  c.lui       a5, 29
                  c.srai      a5, 22
                  slli        zero, s9, 2
                  slli        zero, a5, 31
                  mul         s4, a2, a6
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_15
                  li         a3, 0x0
                  li         s7, 0x1
                  li         t6, 0x0
                  li         t3, 0x0
                  li         a2, 0x0
                  li         s11, 0x0
                  li         ra, 0x0
                  li         s8, 0x1
                  li         s4, 0x62f1be43
                  add         gp, s7, t5
                  c.addi      a0, 10
                  addi        s7, a6, -304
                  c.addi16sp  sp, 352
                  sub         a7, a2, gp
                  add         gp, s9, t5
                  lui         a3, 147065
                  sub         ra, s4, gp
                  c.addi16sp  sp, 480
                  c.addi16sp  sp, 256
                  addi        zero, a4, 1936
                  c.sub       a4, a0
                  c.addi      ra, 21
                  divu        sp, s10, s4
                  c.addi16sp  sp, -16
                  c.mv        t6, s9
                  mulhsu      s7, t3, a6
                  addi        a4, s10, 776
                  mulhu       a3, a0, ra
                  c.add       s9, t6
                  c.addi16sp  sp, -16
                  c.nop
                  c.li        s3, -1
                  c.sub       a2, a0
                  auipc       ra, 825519
                  div         zero, t5, s9
                  mulhu       zero, t3, a3 #end riscv_int_numeric_corner_stream_15
                  sub         t1, a4, s5
                  srai        t2, a1, 9
                  and         a6, a3, a4
                  c.xor       a1, a3
                  addi        a2, t6, 1230
                  c.lui       a4, 30
                  c.add       a6, a2
                  mul         t6, s2, a4
                  slti        t1, s11, 724
                  slli        ra, tp, 22
                  srli        t6, a3, 1
                  c.sub       a2, a1
                  xori        a7, t6, 1665
                  nop
                  c.li        a4, 9
                  sra         zero, a3, s0
                  sub         t2, a6, s4
                  c.mv        t1, t2
                  rem         zero, a2, t6
                  ori         t4, s6, 601
                  c.srai      a1, 7
                  srli        s9, s6, 3
                  sra         a0, a0, s6
                  slti        zero, s4, -1498
                  c.srai      a2, 31
                  c.srai      a1, 18
                  sra         t3, a5, t4
                  mulhsu      a0, s9, t5
                  c.and       a0, a2
                  sub         s0, a7, a6
                  c.addi4spn  a3, sp, 880
                  c.xor       a1, a0
                  and         t0, a0, s8
                  or          a4, t5, s6
                  sltu        s8, t4, t2
                  c.nop
                  mulhu       a5, s2, t5
                  sltiu       a5, t6, -1501
                  div         t6, t1, t4
                  c.add       t4, ra
                  c.add       s11, s3
                  c.lui       t2, 28
                  mulhu       s10, s7, s6
                  srai        t6, s11, 7
                  mul         t6, a6, s7
                  c.slli      gp, 3
                  sll         a5, a5, s8
                  c.nop
                  add         a0, a5, s10
                  xor         s5, a5, a0
                  c.and       a3, a5
                  sll         t6, s10, t0
                  slti        zero, s11, 370
                  addi        s0, tp, -926
                  andi        zero, s11, -1436
                  nop
                  srli        s4, s2, 30
                  mul         s11, s3, a1
                  c.addi      s2, -1
                  c.lui       t6, 17
                  c.xor       a1, s1
                  andi        a4, t0, -1746
                  c.nop
                  c.and       a0, a0
                  or          sp, zero, s5
                  srl         t0, a0, a6
                  c.add       a5, t6
                  addi        gp, s7, -1889
                  c.andi      s0, 9
                  add         t0, s6, t6
                  c.mv        a1, t1
                  c.mv        t4, a3
                  addi        a6, s10, 1430
                  mulh        s0, t2, a3
                  c.addi      s11, -1
                  rem         s9, t3, s2
                  mulh        s0, s11, t5
                  c.add       s5, t5
                  auipc       a0, 1019755
                  c.srai      a2, 28
                  sub         t3, s3, ra
                  div         a6, gp, a1
                  sra         a1, s1, t6
                  c.addi4spn  a2, sp, 528
                  andi        zero, s7, 1702
                  c.srai      a1, 26
                  andi        s2, s7, -458
                  c.nop
                  slt         ra, a3, a3
                  c.sub       a2, a0
                  sll         zero, zero, s0
                  c.lui       a0, 8
                  xori        t3, s1, -1195
                  c.li        ra, 24
                  c.srli      a3, 14
                  rem         ra, a6, a1
                  and         tp, s0, s9
                  divu        s8, a7, a4
                  and         s5, gp, a5
                  div         t6, t2, ra
                  sub         t4, a1, s9
                  c.xor       a0, s1
                  and         s8, a5, a2
                  xor         a7, a5, t0
                  c.lui       s9, 8
                  sltu        s7, t2, s6
                  slli        a5, tp, 25
                  or          s2, a6, s2
                  slti        a7, s6, -555
                  c.xor       a3, a2
                  auipc       ra, 95139
                  c.lui       t0, 29
                  c.add       s10, s6
                  c.or        a2, a3
                  c.or        a2, a2
                  c.add       a6, a7
                  c.addi4spn  s0, sp, 736
                  slt         s0, t4, t5
                  auipc       a5, 789814
                  c.srli      a3, 17
                  and         a1, t6, a2
                  sub         s3, s11, ra
                  ori         t1, t5, -1463
                  c.add       s9, s8
                  mulh        a7, t2, s6
                  c.mv        t1, sp
                  and         s2, s8, t0
                  xor         s9, t2, t5
                  c.srai      s0, 9
                  c.lui       s3, 29
                  auipc       gp, 706270
                  slti        t0, s11, -1889
                  srai        tp, ra, 21
                  c.srli      a0, 22
                  add         s4, s3, a2
                  sltu        s9, a7, tp
                  c.and       a0, a1
                  sll         s7, s5, ra
                  nop
                  sub         s0, s9, s10
                  xori        zero, s6, 944
                  sub         s4, gp, t6
                  mul         a2, t4, s3
                  divu        a2, s1, zero
                  srai        t4, zero, 12
                  c.srli      a1, 1
                  mul         gp, ra, t4
                  c.addi16sp  sp, -16
                  divu        a3, s2, t1
                  slli        a2, sp, 11
                  auipc       gp, 617
                  c.and       a2, a1
                  c.sub       a3, a3
                  mul         t4, tp, t4
                  ori         t3, a3, -498
                  mulhsu      a1, a4, s5
                  slt         zero, a2, t3
                  xor         t3, s1, t5
                  c.lui       a5, 2
                  divu        sp, s4, s7
                  slti        zero, a6, -1962
                  c.xor       a3, a1
                  sltu        t2, a3, a1
                  c.srai      a1, 27
                  c.srai      s0, 8
                  slti        s10, s0, 1519
                  srli        s10, s8, 31
                  srli        s11, s10, 22
                  sra         zero, s4, a7
                  sra         t3, s10, tp
                  nop
                  div         t6, t6, t3
                  sub         a5, s5, s3
                  div         s3, s9, t0
                  c.andi      a5, -1
                  c.add       s11, gp
                  sll         s8, t0, a1
                  addi        tp, s0, 571
                  mulh        zero, gp, t1
                  mul         sp, zero, t3
                  c.nop
                  mulhsu      t6, a5, s4
                  sub         t4, t1, s6
                  c.mv        a5, a6
                  c.srli      a1, 20
                  c.slli      ra, 14
                  c.add       a7, t5
                  c.srai      s0, 11
                  nop
                  mulhsu      tp, s4, a0
                  sll         a4, s11, gp
                  c.sub       a0, a2
                  c.lui       a4, 27
                  auipc       s4, 924396
                  xori        ra, a0, -341
                  ori         t2, a4, -1969
                  c.srli      a3, 20
                  slti        a5, t6, 1963
                  c.slli      s10, 14
                  c.srli      s0, 1
                  srl         s4, t4, a7
                  andi        s4, t2, -475
                  c.srai      s0, 1
                  c.addi16sp  sp, -16
                  xor         s11, s7, s3
                  c.add       ra, s6
                  c.addi4spn  a5, sp, 64
                  sltiu       t0, s1, -1670
                  sltu        a5, t2, sp
                  add         zero, s2, a2
                  lui         t4, 429949
                  c.srai      a3, 9
                  slli        a5, tp, 14
                  sub         a0, s2, t1
                  sltu        t2, gp, s2
                  srai        s5, t3, 4
                  sll         s10, s10, a5
                  slli        zero, a3, 26
                  c.slli      s2, 30
                  srl         s11, a0, t5
                  and         t6, s11, s10
                  c.nop
                  mulh        gp, a4, s0
                  c.lui       s7, 31
                  xori        a0, tp, 1690
                  slt         zero, s6, gp
                  slti        t2, s9, -856
                  srl         t2, s3, t5
                  sltiu       t3, s10, -1621
                  div         s2, a4, t0
                  sltiu       a0, t5, 895
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, -16
                  sub         t3, a1, gp
                  mul         tp, s9, t1
                  c.or        a2, a1
                  c.addi      s4, 19
                  c.sub       a1, a2
                  c.srli      a1, 16
                  or          s5, s8, s5
                  c.andi      a1, 12
                  divu        zero, s2, t3
                  addi        sp, t6, 541
                  lui         s11, 289293
                  c.add       s4, t5
                  and         t3, s9, a2
                  c.sub       a1, a2
                  or          t4, t2, s0
                  mul         s8, s4, t5
                  ori         a2, t5, -161
                  mulh        s9, gp, s6
                  mulh        s9, s5, a1
                  srli        gp, s8, 14
                  xor         zero, t5, s3
                  mulh        t2, tp, s11
                  slti        a3, t5, 1011
                  or          t6, s8, zero
                  div         a5, gp, t2
                  rem         s4, s3, gp
                  c.addi16sp  sp, -16
                  ori         ra, tp, 942
                  sll         s9, s1, t6
                  add         a1, t4, s7
                  auipc       a7, 744943
                  c.li        ra, 11
                  sltu        s7, s3, s2
                  c.slli      s5, 19
                  and         sp, s10, s6
                  slti        gp, s3, -1674
                  srli        s0, t6, 6
                  srli        t0, s7, 24
                  srli        sp, t4, 3
                  c.lui       a6, 30
                  c.andi      a3, 15
                  c.sub       s0, a3
                  addi        a6, s7, -1677
                  and         zero, t3, s2
                  mulh        a3, ra, s5
                  c.addi      s9, -1
                  xori        t4, s7, -2042
                  divu        a6, t5, zero
                  mul         a3, t2, ra
                  c.li        s7, -1
                  mulh        ra, a3, s5
                  lui         t0, 119582
                  lui         t1, 101926
                  c.nop
                  c.or        a1, a0
                  slti        s2, s1, 134
                  div         t1, s2, t3
                  or          t3, s10, a3
                  c.addi4spn  a2, sp, 720
                  c.andi      a1, -1
                  c.slli      s3, 10
                  srai        a2, tp, 25
                  c.or        a2, s1
                  c.addi16sp  sp, 16
                  addi        t0, a1, -1913
                  andi        t3, t5, 1569
                  c.andi      a4, -1
                  slt         s4, a4, tp
                  c.add       ra, a7
                  srai        zero, a7, 23
                  or          a2, sp, ra
                  andi        zero, t4, 478
                  addi        a3, gp, 805
                  c.addi16sp  sp, -16
                  xor         s5, t2, a7
                  c.and       a2, s1
                  c.srli      a1, 9
                  c.nop
                  andi        t4, a0, 2040
                  c.or        a2, a2
                  c.nop
                  sub         t4, sp, s7
                  lui         zero, 247603
                  c.lui       s11, 29
                  mulh        a1, t1, a2
                  c.srli      a2, 2
                  c.nop
                  c.mv        t0, ra
                  addi        s10, s10, -637
                  divu        a5, s11, ra
                  srli        a2, a5, 19
                  sra         a0, a2, t1
                  c.addi16sp  sp, 112
                  c.sub       a3, a2
                  xor         a0, a3, t6
                  c.mv        a3, a6
                  c.nop
                  c.addi      ra, 14
                  c.srli      a4, 18
                  rem         t2, s4, a0
                  xori        s0, s6, 607
                  auipc       s10, 137026
                  divu        t1, s3, t3
                  sub         s10, s6, s9
                  c.li        gp, 27
                  and         s0, t1, t0
                  srli        t1, t4, 12
                  c.li        s11, -1
                  addi        s5, s7, 1917
                  c.or        s0, a1
                  c.addi      a4, -1
                  add         a1, s9, t4
                  mulhsu      t6, a2, s3
                  xori        zero, s4, 260
                  sll         s10, t0, t4
                  slt         s10, sp, a5
                  c.andi      a2, -1
                  slti        a2, sp, 1646
                  srl         a7, t3, s9
                  divu        t4, s10, s7
                  add         a5, tp, t0
                  c.andi      a3, 18
                  xori        a7, t1, -131
                  c.nop
                  sltiu       tp, ra, 42
                  c.and       a1, a0
                  c.addi      t6, -1
                  c.or        a2, a3
                  c.and       a1, a2
                  slli        t4, s3, 21
                  c.li        a5, 20
                  or          sp, t0, s1
                  c.slli      sp, 21
                  c.addi4spn  a3, sp, 144
                  mulhsu      zero, s8, a4
                  andi        s4, t0, 355
                  xori        a7, s4, -196
                  c.li        ra, -1
                  c.addi4spn  a2, sp, 864
                  slli        t1, gp, 12
                  c.sub       a3, a2
                  and         zero, t3, t6
                  sll         s11, a4, t3
                  add         zero, a1, t1
                  addi        t3, s1, 1537
                  div         a6, t2, t0
                  sub         s3, a0, t4
                  c.or        a2, a3
                  divu        t2, s10, s11
                  slti        zero, a1, -1825
                  mulh        ra, gp, s9
                  srai        zero, a7, 18
                  c.add       s5, ra
                  slt         a3, t2, a5
                  c.and       a0, a1
                  c.andi      a2, -1
                  c.add       a1, a6
                  srai        zero, a0, 30
                  mulhsu      t6, t2, s0
                  c.xor       a2, s1
                  c.xor       a3, s0
                  c.addi4spn  a3, sp, 272
                  c.addi16sp  sp, 256
                  rem         a2, t5, t2
                  lui         s9, 726804
                  sll         t1, a3, s1
                  slti        a0, s10, 357
                  c.lui       ra, 7
                  mul         t3, t6, s3
                  c.addi16sp  sp, 272
                  mulhu       tp, t4, s1
                  c.srai      a1, 25
                  c.srli      a2, 1
                  lui         s11, 619996
                  andi        a0, t5, 1225
                  divu        t1, sp, a5
                  c.or        a4, a3
                  srai        t4, a5, 4
                  c.addi4spn  a1, sp, 528
                  divu        a7, a0, tp
                  mulh        t4, a5, s10
                  c.mv        t4, s5
                  ori         zero, s0, -340
                  andi        a3, s0, -1183
                  c.srli      a1, 14
                  c.lui       s4, 20
                  mulhu       t6, s3, s8
                  c.and       a3, a1
                  c.addi      s10, 30
                  c.andi      a3, -1
                  mulh        tp, t1, sp
                  c.add       s5, s2
                  slti        a7, s3, 800
                  mul         zero, s11, s3
                  sub         s9, t3, s10
                  c.addi16sp  sp, -16
                  nop
                  c.srli      a0, 27
                  add         s4, t2, t0
                  mulhu       t4, t2, gp
                  c.addi16sp  sp, -16
                  c.xor       a5, s1
                  c.andi      a3, -1
                  slli        a3, t0, 22
                  mulhsu      s5, a1, tp
                  ori         s10, a5, -658
                  sltu        a7, t1, a2
                  c.sub       a1, a1
                  divu        a3, sp, gp
                  ori         a6, a3, -421
                  c.or        a2, s1
                  div         gp, a3, t1
                  c.add       s4, a1
                  auipc       t4, 343867
                  c.andi      a2, 26
                  c.nop
                  rem         zero, t2, s2
                  slli        s11, s1, 12
                  srl         s11, t6, s4
                  slt         s0, a5, s6
                  sltiu       s2, a6, -817
                  c.add       a0, a1
                  c.or        a2, a2
                  sltiu       a3, t3, -591
                  addi        s3, a1, 692
                  c.sub       a2, s1
                  slli        s4, s9, 19
                  lui         s9, 176743
                  c.xor       s0, s1
                  mulhu       a0, s5, s5
                  auipc       zero, 605367
                  c.li        s9, 16
                  mulhsu      t1, s5, a7
                  c.srli      a1, 30
                  sltu        t1, s1, s6
                  add         sp, s5, s0
                  c.nop
                  sub         a1, ra, a7
                  sub         sp, t2, s11
                  c.nop
                  or          zero, a2, tp
                  sltu        zero, a6, ra
                  slli        zero, s11, 18
                  andi        s3, t6, 552
                  c.lui       ra, 7
                  c.xor       a3, a0
                  c.addi      ra, -1
                  slti        s0, s7, -700
                  slti        a5, a3, -1737
                  c.addi16sp  sp, -16
                  c.addi4spn  a1, sp, 400
                  c.xor       a2, a2
                  c.sub       a2, a2
                  auipc       s4, 447322
                  c.addi4spn  s0, sp, 944
                  c.add       a7, t1
                  mulh        s8, a3, s0
                  srli        a4, s9, 13
                  c.andi      a2, -1
                  c.srai      a0, 4
                  c.addi      s10, 3
                  slt         t3, s9, s9
                  c.sub       a2, a1
                  c.andi      a1, 1
                  slli        s2, s0, 23
                  slli        s8, s8, 1
                  nop
                  xori        a2, a1, 182
                  c.nop
                  c.and       a1, a2
                  srl         a0, t3, s3
                  addi        s4, t4, 1958
                  slt         s4, s0, s9
                  xor         a2, s0, s9
                  lui         sp, 20023
                  c.and       a2, a3
                  mulhu       s4, s3, t1
                  slli        t0, t3, 10
                  addi        zero, s1, 382
                  mulhsu      s3, t5, t5
                  c.or        s0, a2
                  sub         a0, s5, s0
                  c.slli      s5, 27
                  c.add       tp, ra
                  c.or        a2, s0
                  rem         a0, s3, s6
                  xor         zero, t5, a1
                  c.addi16sp  sp, 464
                  mulhu       s5, a1, gp
                  c.srai      a4, 15
                  mulhsu      s11, a2, sp
                  sll         t1, t2, t2
                  sub         a7, s11, a5
                  c.xor       a1, a0
                  mul         s8, t3, zero
                  c.or        a0, a2
                  mul         s11, s3, gp
                  c.addi      t6, 2
                  ori         a5, s2, -791
                  mulhu       a6, sp, s9
                  add         s0, t4, s8
                  divu        ra, t6, t2
                  srli        a6, s7, 17
                  andi        t4, t0, -225
                  c.add       tp, s4
                  c.sub       a2, s0
                  divu        a5, t3, a5
                  c.addi      ra, -1
                  c.mv        gp, s2
                  slti        s7, a4, -1382
                  c.addi16sp  sp, -16
                  ori         t0, t5, 1334
                  srli        zero, a1, 1
                  mulh        s11, a2, zero
                  rem         zero, ra, a3
                  c.and       a3, a3
                  mul         zero, t4, a2
                  sra         s4, s9, s5
                  sra         t2, zero, s7
                  xori        s11, s1, -888
                  c.srai      a1, 13
                  sll         s5, a0, a4
                  div         a4, gp, s2
                  srai        a1, t4, 30
                  sra         zero, s9, s0
                  c.xor       a3, a1
                  srl         s9, a7, s4
                  auipc       s7, 710961
                  lui         a6, 566787
                  slli        a1, a5, 8
                  add         zero, s2, a4
                  xori        a5, a4, -737
                  slli        s9, t1, 18
                  c.or        a3, s0
                  sltiu       a0, a6, -1445
                  c.addi      ra, -1
                  slt         t4, zero, s10
                  mulhsu      a7, s5, ra
                  slli        a1, s8, 27
                  nop
                  c.xor       a2, a2
                  mul         zero, s7, t1
                  srai        t4, a5, 20
                  slt         s2, a7, t0
                  and         s10, s4, s3
                  ori         a3, s2, -439
                  lui         a2, 781778
                  mul         a4, a2, a5
                  c.and       a1, a2
                  sltu        zero, t6, t3
                  c.or        a3, a0
                  c.xor       a0, a0
                  sra         s0, a7, a7
                  or          t2, t0, a4
                  xori        sp, tp, 381
                  mulh        t2, s11, s5
                  slti        a4, a0, -444
                  mul         a1, s1, s8
                  c.mv        gp, t0
                  div         s11, ra, s11
                  slti        sp, s9, 338
                  c.slli      tp, 25
                  c.mv        a6, a1
                  nop
                  mulhsu      zero, a2, t5
                  add         a7, t2, tp
                  c.addi16sp  sp, -16
                  slti        s8, t6, -1735
                  c.xor       a2, a0
                  addi        a2, s1, 1996
                  c.slli      a3, 29
                  c.li        t1, -1
                  ori         zero, tp, 216
                  c.and       a2, a0
                  xori        a6, t0, 986
                  c.srli      a2, 31
                  sltiu       zero, t3, -1081
                  sub         a3, s8, s1
                  c.andi      a2, 28
                  slli        s9, t3, 2
                  c.addi16sp  sp, -16
                  sltu        a1, a7, s2
                  sra         s3, s0, t0
                  c.addi      t6, 26
                  sltu        s3, a1, s9
                  srai        s4, zero, 7
                  c.sub       a1, a0
                  c.sub       a0, a3
                  sub         ra, s1, s4
                  c.li        a7, -1
                  c.or        a0, s1
                  c.xor       a3, a3
                  c.mv        ra, a0
                  c.addi4spn  a0, sp, 272
                  auipc       zero, 571473
                  addi        t0, s10, 378
                  c.add       s9, a0
                  c.li        s4, -1
                  c.add       s5, ra
                  c.srai      a2, 29
                  and         a0, t2, s5
                  mulhsu      ra, t3, t6
                  slti        s7, tp, 1016
                  xori        t2, a0, 659
                  mulh        a6, t4, s8
                  or          t2, ra, s11
                  c.srli      a3, 26
                  sub         s7, a3, sp
                  nop
                  or          s11, s3, s1
                  c.and       a2, a3
                  addi        gp, s5, -1133
                  c.srli      a3, 9
                  xori        s10, a2, 1844
                  srai        t0, s6, 24
                  ori         zero, a0, 865
                  sll         ra, s9, a1
                  mul         a7, s5, s9
                  c.or        a3, s0
                  c.andi      a1, -1
                  sltiu       a7, a6, -1554
                  mul         s4, a1, s4
                  andi        a6, a5, 461
                  c.andi      s0, 12
                  divu        t2, s6, gp
                  c.add       ra, t6
                  and         zero, a2, gp
                  xor         s5, s7, a0
                  c.addi4spn  a3, sp, 896
                  or          s7, a4, t3
                  c.addi16sp  sp, 240
                  c.li        s2, -1
                  srli        t3, t5, 8
                  auipc       s5, 263863
                  srli        a6, s4, 27
                  c.slli      s7, 4
                  c.addi16sp  sp, -16
                  c.nop
                  c.srli      a2, 12
                  slt         s5, a6, a5
                  sll         s5, s11, s11
                  c.srli      a1, 27
                  c.add       ra, s1
                  ori         a3, a4, 364
                  and         zero, s6, a7
                  c.slli      s0, 6
                  c.lui       t2, 19
                  sltiu       t6, t4, -2012
                  c.mv        ra, a2
                  sub         a0, t5, s9
                  c.li        tp, 17
                  c.addi4spn  a0, sp, 432
                  c.mv        t1, t6
                  mulh        s7, s10, t4
                  div         t1, s9, s3
                  rem         t3, a2, s4
                  mulhu       s4, a0, t5
                  c.xor       a2, a4
                  add         zero, t1, t6
                  rem         sp, a6, ra
                  xori        s11, s0, -1726
                  c.nop
                  or          t6, t0, s4
                  slti        tp, s6, -747
                  add         t1, s6, s1
                  slti        zero, a0, 1229
                  c.mv        t1, a0
                  slli        t6, t4, 21
                  srai        s7, a4, 6
                  mul         a2, t6, a4
                  c.xor       a3, a2
                  c.andi      a3, -1
                  xor         a6, a7, s7
                  divu        a5, s5, s8
                  addi        t4, s1, 1600
                  c.srli      a3, 23
                  sra         a7, t3, t4
                  div         zero, s10, s1
                  c.lui       s10, 12
                  addi        zero, a4, 1571
                  c.xor       a2, a5
                  ori         s5, a1, 1960
                  c.addi16sp  sp, -16
                  nop
                  c.slli      s7, 2
                  sra         t6, a4, s0
                  c.addi      a0, 12
                  c.xor       a1, a1
                  c.slli      t0, 19
                  c.sub       a3, a0
                  addi        s8, a7, 231
                  mulh        t4, s9, sp
                  srl         a0, s6, sp
                  andi        s3, t6, -174
                  div         a0, s2, a6
                  c.srli      a3, 22
                  srli        t6, s6, 31
                  c.addi4spn  a1, sp, 96
                  c.li        a7, 24
                  div         s7, s10, s0
                  c.nop
                  c.addi      s0, -1
                  srli        tp, t5, 19
                  lui         a3, 850054
                  auipc       a2, 1031112
                  and         tp, sp, t1
                  srli        s10, ra, 8
                  mulh        s10, s11, s3
                  nop
                  sra         t1, t1, a4
                  slti        zero, t3, -819
                  and         tp, a7, a7
                  mulh        zero, s7, t3
                  mulhu       tp, sp, ra
                  c.srai      a1, 28
                  c.add       t3, t4
                  sub         a1, t1, s7
                  slt         s4, s0, zero
                  sub         s3, s8, t2
                  rem         zero, t1, s2
                  slt         sp, a5, a3
                  c.and       a2, a1
                  c.nop
                  sltu        t3, tp, tp
                  sub         s5, t3, s9
                  addi        gp, a4, 1469
                  c.srli      a0, 21
                  sra         s3, t4, s0
                  xor         t0, s4, ra
                  c.addi      t4, -1
                  or          t4, gp, s10
                  xori        a5, s5, 1785
                  c.mv        s7, s6
                  divu        s7, a4, s11
                  c.slli      s2, 20
                  c.sub       a0, a2
                  lui         s2, 535212
                  sltiu       a7, s10, -1224
                  lui         s2, 612944
                  c.addi4spn  a0, sp, 640
                  xori        a1, t0, 1636
                  lui         t4, 114340
                  srli        t3, s7, 12
                  slti        sp, t5, 1854
                  lui         a0, 158382
                  srl         a5, a7, a3
                  slli        s4, s1, 9
                  mul         zero, s10, a6
                  c.add       s9, t4
                  sub         t2, a1, a1
                  c.mv        sp, a0
                  c.li        a7, 8
                  c.addi16sp  sp, 432
                  c.slli      t6, 5
                  c.nop
                  slli        s11, t4, 3
                  c.addi16sp  sp, 160
                  c.li        s11, 12
                  lui         zero, 732724
                  c.srli      a3, 8
                  srl         ra, gp, t6
                  c.srli      a2, 27
                  c.nop
                  mulhu       t3, t3, t0
                  c.or        a0, a3
                  lui         t6, 54799
                  srli        gp, sp, 19
                  mulh        s0, s1, zero
                  addi        zero, s4, 1986
                  c.add       a7, a1
                  xori        s10, t5, -1568
                  slt         s8, t6, t0
                  mulhsu      t1, s10, ra
                  mul         s9, s9, a6
                  mul         a1, a0, s6
                  add         tp, s9, s4
                  c.lui       ra, 11
                  mulhsu      a5, a1, a0
                  mulhu       zero, s11, sp
                  c.and       a1, a0
                  lui         s11, 587158
                  c.addi      s3, 23
                  srli        ra, a6, 23
                  andi        t4, t1, 1219
                  ori         zero, a3, 1841
                  or          zero, s3, a6
                  c.andi      a2, 14
                  add         s8, s0, s5
                  c.slli      s10, 5
                  mulhu       gp, s6, s9
                  addi        t1, t5, 489
                  srli        s2, a2, 26
                  auipc       s11, 499996
                  div         zero, sp, s11
                  sltu        t1, s0, s7
                  c.sub       s0, a3
                  andi        zero, t3, -1224
                  ori         t6, tp, -1841
                  c.sub       a2, a1
                  c.and       a1, a5
                  c.add       ra, t3
                  c.li        t0, -1
                  c.and       a2, a0
                  sltu        t3, s6, a0
                  c.slli      s7, 27
                  c.sub       a2, a3
                  c.add       tp, t6
                  mul         t0, zero, s4
                  ori         zero, s1, -1425
                  srai        tp, s11, 28
                  and         a6, a2, t5
                  auipc       sp, 913407
                  c.or        a5, a1
                  slti        zero, a3, -1530
                  c.lui       a7, 10
                  sltu        s2, ra, s11
                  and         s0, a0, s11
                  c.li        t1, -1
                  c.slli      s5, 17
                  lui         s7, 156725
                  div         s10, tp, a1
                  slt         s9, zero, s3
                  c.sub       a1, s1
                  c.xor       a1, a1
                  srl         zero, s11, s10
                  c.slli      s2, 22
                  c.srai      a2, 7
                  srli        s0, t3, 16
                  mulhu       a2, t1, s11
                  c.nop
                  c.addi4spn  a0, sp, 272
                  nop
                  c.andi      a2, -1
                  c.and       a3, a3
                  mulhsu      s0, s4, t4
                  c.andi      a3, 16
                  rem         tp, t2, s4
                  mulhu       t3, t4, a2
                  mul         s8, a7, zero
                  sra         a1, a3, a7
                  sra         zero, a5, ra
                  and         s2, a3, a0
                  c.mv        a2, t0
                  c.xor       a2, a5
                  xori        a3, s6, -1081
                  c.nop
                  c.addi      s0, -1
                  c.or        a1, a1
                  c.lui       a6, 15
                  and         a3, a5, t0
                  add         s7, s6, s5
                  c.or        s0, a1
                  c.and       a2, a5
                  srl         a3, s11, t5
                  rem         s3, a2, t1
                  c.addi16sp  sp, -16
                  c.and       a3, s1
                  c.or        a2, a0
                  divu        s7, s4, ra
                  auipc       a7, 95820
                  c.add       s0, s6
                  sll         t4, s9, t5
                  c.srli      a1, 11
                  c.srai      a2, 28
                  c.mv        ra, gp
                  divu        a7, s10, s6
                  c.addi      s7, -1
                  c.xor       a2, a1
                  mulh        ra, ra, t2
                  c.and       a0, a3
                  mul         gp, gp, s5
                  c.slli      a0, 21
                  mulhsu      a1, t0, sp
                  c.slli      sp, 24
                  or          s9, t4, s11
                  and         s2, s1, s11
                  c.nop
                  sltu        s0, ra, s8
                  c.or        a2, s1
                  add         zero, tp, t1
                  srli        a1, s0, 0
                  slt         zero, a6, s3
                  c.addi4spn  a2, sp, 64
                  div         s8, s11, s11
                  sltu        s0, a7, s6
                  mul         s3, a4, s6
                  mulhsu      ra, s8, s6
                  divu        zero, a2, s1
                  addi        ra, s8, 1709
                  c.addi      s9, 26
                  sub         s0, s8, s10
                  and         s4, a0, s9
                  auipc       a3, 264572
                  c.lui       s11, 9
                  or          t6, sp, zero
                  c.and       a3, a0
                  and         tp, s1, a5
                  slti        t0, a3, -1551
                  auipc       s10, 536081
                  c.or        a3, a0
                  c.srli      a1, 21
                  sltu        t0, ra, a1
                  sltiu       s2, t5, 124
                  c.xor       a3, a1
                  c.or        a2, s1
                  c.lui       ra, 15
                  c.add       a5, ra
                  c.or        a3, a0
                  ori         t2, s8, -949
                  divu        a6, t4, a7
                  sll         zero, gp, sp
                  rem         zero, a0, s9
                  mul         zero, t5, t3
                  slti        zero, tp, -542
                  sra         t2, zero, t3
                  mulhsu      s7, s1, t0
                  rem         s0, s2, a5
                  sra         a7, s5, s8
                  add         t1, t4, s0
                  srai        ra, a2, 20
                  auipc       ra, 701606
                  or          tp, zero, a1
                  c.andi      a2, 10
                  c.nop
                  srl         s10, a6, s6
                  ori         t2, s0, -1319
                  or          s8, a1, tp
                  c.andi      a1, 17
                  andi        zero, a2, -2006
                  divu        s9, a0, s2
                  mul         t4, s4, a5
                  c.lui       s8, 23
                  c.addi      a4, -1
                  c.addi4spn  a1, sp, 176
                  sltu        t3, a7, a4
                  c.add       s9, a6
                  c.addi16sp  sp, -16
                  srli        s3, a3, 30
                  rem         t1, a1, t5
                  or          a7, s1, t4
                  and         a4, t6, t0
                  divu        s2, gp, s4
                  c.add       ra, a5
                  srl         s0, t4, s2
                  srl         t0, t3, a4
                  mulhu       a6, t6, t5
                  div         a3, s2, s0
                  xori        zero, tp, -945
                  mulh        a4, t5, s6
                  sltu        t6, zero, tp
                  c.mv        sp, s4
                  and         gp, a6, a2
                  slt         s11, a4, tp
                  addi        s11, a5, -1148
                  xor         s11, a3, s2
                  c.srai      a2, 10
                  sltiu       s5, a0, 783
                  c.srli      a2, 7
                  c.slli      a7, 27
                  mul         s9, a4, s5
                  mul         s10, a3, s5
                  sub         zero, s7, a4
                  slti        t3, a0, 78
                  div         t0, s3, ra
                  sltu        s10, s8, t6
                  c.addi4spn  a1, sp, 688
                  slt         zero, t0, s7
                  divu        zero, s7, tp
                  srli        s11, a6, 2
                  xor         a3, a4, a0
                  rem         gp, s0, t1
                  c.addi4spn  s0, sp, 192
                  mulhsu      a1, a6, s7
                  slli        a5, a5, 11
                  sll         a2, s11, gp
                  c.mv        tp, s3
                  sltu        a7, ra, zero
                  slt         a3, s5, a1
                  divu        s11, s5, s4
                  c.andi      a2, -1
                  c.andi      a3, 26
                  and         s0, sp, s7
                  c.lui       ra, 22
                  srli        tp, a2, 31
                  mulhsu      s10, t0, s2
                  sll         t1, a1, gp
                  andi        t6, s2, 927
                  div         tp, a1, s3
                  sltu        zero, a2, t2
                  mulhu       t3, gp, a1
                  c.or        a3, a1
                  c.mv        a2, gp
                  mulh        zero, t4, t2
                  sra         s4, t6, t3
                  c.sub       a4, a3
                  c.add       a0, t2
                  srai        zero, t5, 16
                  sra         a4, s4, a1
                  mulhsu      a6, tp, s5
                  lui         s3, 370608
                  c.lui       s9, 6
                  sra         zero, s10, s2
                  rem         zero, gp, t0
                  or          s8, a2, t2
                  c.sub       a2, a2
                  c.add       ra, a6
                  ori         a7, s2, -1495
                  srli        s5, s11, 23
                  div         t3, sp, a3
                  srl         a6, t4, s8
                  and         zero, tp, a7
                  rem         a0, t1, t0
                  sub         a0, a3, a0
                  c.sub       a4, a1
                  c.or        a3, a0
                  slti        s5, s11, -1211
                  andi        s5, tp, 474
                  c.xor       s0, a3
                  c.srai      a3, 7
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, -16
                  auipc       t6, 531470
                  c.mv        ra, ra
                  c.addi4spn  a2, sp, 1008
                  auipc       t2, 706178
                  c.slli      a7, 16
                  divu        zero, a7, t4
                  mulhu       a7, a6, a3
                  sltu        zero, a1, t6
                  sltu        s2, a1, s2
                  c.andi      a0, -1
                  sltu        tp, t4, t0
                  div         s5, a0, s1
                  mulhsu      s3, t4, a2
                  srli        ra, s9, 29
                  lui         t1, 406922
                  c.xor       a2, s0
                  add         zero, a0, t5
                  slt         s0, sp, s8
                  xori        a2, t5, -294
                  c.slli      a2, 13
                  slli        a7, s1, 14
                  slti        sp, s11, -1527
                  sra         ra, tp, s4
                  srli        s4, t4, 23
                  c.andi      a2, 26
                  c.addi4spn  a3, sp, 368
                  slti        a4, tp, 701
                  mul         a6, s6, t0
                  add         t1, a3, s8
                  and         s5, sp, s3
                  srl         t0, a5, s7
                  nop
                  add         t3, t5, t0
                  nop
                  sll         zero, s10, a2
                  add         s9, gp, tp
                  c.xor       a2, a3
                  c.nop
                  c.addi      ra, -1
                  sltu        zero, t3, t3
                  add         t0, t5, a3
                  divu        zero, a5, s8
                  andi        t4, a3, -525
                  c.addi      t4, 21
                  ori         a0, sp, -223
                  srl         s8, a1, s1
                  ori         zero, ra, -1485
                  sra         a0, a4, t1
                  c.sub       a0, a4
                  c.addi      t4, -1
                  and         zero, sp, s8
                  srl         a7, s3, a0
                  add         a6, s6, t6
                  slt         a7, t0, t3
                  mul         t6, s11, tp
                  mulhsu      a2, s1, s0
                  srli        s2, tp, 5
                  or          s5, s10, s8
                  and         t4, ra, s9
                  mul         a4, a1, s4
                  c.andi      a2, 18
                  c.srli      a2, 12
                  c.addi16sp  sp, 16
                  c.xor       a2, a1
                  sltu        gp, s1, s3
                  slli        s0, s4, 22
                  mul         s7, zero, t0
                  c.add       s8, s6
                  c.andi      a1, -1
                  sltiu       s9, a1, 643
                  div         ra, gp, s4
                  or          s2, s0, sp
                  c.nop
                  mul         t3, s1, a0
                  c.add       s7, a2
                  c.nop
                  slti        t0, a5, -1405
                  nop
                  c.addi      s4, -1
                  c.andi      a3, 26
                  c.lui       ra, 16
                  c.lui       t0, 20
                  xor         s11, s9, s7
                  and         a1, t3, a1
                  rem         ra, s11, ra
                  mulh        s7, s4, s1
                  c.addi4spn  a2, sp, 240
                  c.addi4spn  a1, sp, 32
                  auipc       a4, 706266
                  andi        s3, zero, 426
                  c.srli      a2, 26
                  sub         a7, a5, a2
                  mul         s10, s2, t3
                  rem         a0, a2, s8
                  mulh        a7, ra, a5
                  add         zero, zero, zero
                  sll         s3, a5, a1
                  slti        s11, s11, 196
                  sub         zero, s7, t6
                  divu        s7, a3, a6
                  srl         t3, s10, ra
                  c.srai      a1, 1
                  sltiu       a4, t2, -984
                  and         a0, s8, sp
                  div         t0, a7, t3
                  add         a5, s4, s9
                  mulhu       t6, t1, a6
                  c.add       t4, t5
                  sltiu       gp, t6, -1936
                  c.add       a4, ra
                  srl         tp, a0, s6
                  sll         zero, t2, s10
                  c.and       a1, a1
                  sub         gp, t0, s5
                  c.addi4spn  a2, sp, 896
                  c.nop
                  c.addi16sp  sp, 80
                  slli        s0, t4, 16
                  c.srli      a4, 4
                  mul         t0, t6, a1
                  c.andi      a2, 22
                  mul         ra, s6, a0
                  xor         tp, t1, s6
                  mulhsu      s5, tp, t1
                  slt         gp, ra, a7
                  mul         gp, t5, t4
                  or          s7, s9, sp
                  c.srai      a1, 2
                  sltu        t0, a6, sp
                  slt         s7, a5, ra
                  divu        zero, s6, a5
                  div         s2, t5, s10
                  slti        s9, s9, 815
                  rem         t6, sp, t0
                  mul         a2, s2, t3
                  sll         t0, sp, s5
                  mulhsu      a0, t6, t2
                  c.add       ra, ra
                  sll         s3, tp, ra
                  slt         t6, a1, s11
                  auipc       a2, 87680
                  c.xor       a1, a1
                  add         s7, s2, s1
                  c.andi      a2, 26
                  xor         zero, a2, s1
                  ori         zero, t2, -1937
                  auipc       s0, 493647
                  slt         a6, t6, a5
                  mulh        zero, a1, s0
                  mulh        a7, s5, t3
                  c.lui       a2, 24
                  c.andi      a2, -1
                  srli        s4, a1, 6
                  c.mv        t4, s1
                  c.addi      s11, 26
                  sra         a5, s0, tp
                  rem         sp, tp, s0
                  c.addi4spn  a3, sp, 224
                  c.addi      t6, -1
                  xor         s5, s6, gp
                  rem         zero, t3, tp
                  addi        a2, s10, -856
                  c.li        ra, 13
                  sltiu       t1, s8, 1833
                  add         a2, tp, a3
                  c.addi16sp  sp, -16
                  auipc       sp, 58320
                  slt         a0, a1, t2
                  or          a6, a3, s1
                  c.mv        a2, s9
                  mulhsu      s8, t5, s11
                  slli        a7, t6, 19
                  mulhsu      t6, a4, s0
                  ori         a1, s5, 245
                  slt         gp, s3, a6
                  xori        zero, sp, -1622
                  sra         s0, s6, s3
                  sra         a7, t3, zero
                  c.slli      t6, 26
                  div         a6, a1, a4
                  srai        t1, a0, 10
                  c.andi      a2, -1
                  c.andi      a1, 25
                  sra         a6, s2, a5
                  sra         s10, a5, ra
                  c.nop
                  add         zero, s10, s3
                  c.addi16sp  sp, -16
                  rem         t4, zero, zero
                  ori         t1, a3, -619
                  srli        s9, s3, 23
                  sltu        s8, s4, ra
                  div         a3, t5, s2
                  c.slli      s2, 18
                  addi        s2, s1, 938
                  srai        s7, a5, 13
                  xor         a4, a3, s4
                  slli        a6, a0, 21
                  c.addi4spn  a0, sp, 992
                  c.sub       a3, a2
                  mulhsu      a2, t1, s9
                  auipc       t2, 713097
                  and         s9, zero, s9
                  slti        t3, t6, 1593
                  c.slli      s4, 16
                  c.mv        a1, t2
                  c.or        a3, a2
                  c.andi      a0, 11
                  srl         t4, tp, a2
                  c.slli      s8, 23
                  c.andi      a3, -1
                  sll         a0, s1, a4
                  c.addi4spn  a2, sp, 944
                  c.or        a5, s0
                  rem         t0, t5, t3
                  sub         s8, a1, t5
                  srl         a5, a3, sp
                  mulhsu      zero, s4, s2
                  c.slli      s3, 13
                  and         s8, t4, a7
                  srli        tp, s2, 11
                  c.li        s3, 12
                  sll         s7, s5, t2
                  c.or        a1, a3
                  mulh        sp, t4, t5
                  slli        a1, s1, 28
                  sltiu       s4, s5, -1136
                  addi        s3, tp, 87
                  or          zero, s0, a1
                  or          zero, t1, zero
                  c.add       a4, s6
                  mulh        a7, gp, t4
                  nop
                  slli        t3, a7, 27
                  c.mv        a3, s4
                  xori        tp, s7, -448
                  c.and       a3, a1
                  c.lui       t1, 8
                  mulhu       t2, a1, a3
                  auipc       t0, 879422
                  c.srai      a3, 18
                  sra         a3, tp, t3
                  nop
                  c.add       a3, s3
                  div         s7, a4, a0
                  sub         a6, a7, a5
                  rem         s11, gp, t1
                  c.srai      a2, 21
                  div         zero, tp, gp
                  rem         s10, s10, t1
                  mul         t6, s7, t3
                  sltu        t6, sp, zero
                  slt         zero, s4, a7
                  addi        s10, s6, 64
                  nop
                  auipc       s11, 318872
                  c.srai      a3, 1
                  sra         a5, s2, t1
                  sra         s7, s2, a0
                  or          a4, a5, t2
                  sra         gp, s10, a1
                  c.srai      s0, 3
                  xor         a7, t0, s6
                  c.addi4spn  a3, sp, 816
                  lui         a2, 970047
                  andi        zero, a0, -285
                  srli        s10, a6, 23
                  xori        t6, s4, -524
                  c.lui       a5, 13
                  c.add       ra, t0
                  mul         s3, s4, a5
                  c.nop
                  div         tp, a6, s4
                  divu        s9, s3, a2
                  c.li        s9, -1
                  or          s10, s0, t4
                  c.srai      a3, 5
                  mulhsu      a2, a7, s9
                  rem         s3, t3, t1
                  slli        a6, a5, 24
                  c.lui       ra, 21
                  srli        a5, gp, 3
                  sltiu       gp, t4, -103
                  c.addi4spn  a2, sp, 480
                  sltu        zero, s0, s2
                  add         zero, a5, s5
                  c.slli      s11, 17
                  sub         s10, s6, a4
                  xor         sp, s2, t4
                  c.lui       a3, 11
                  c.addi4spn  a3, sp, 400
                  mulh        zero, s2, s3
                  srai        zero, s4, 23
                  mul         s7, s2, t2
                  c.nop
                  li         s11, 0x0 #start riscv_int_numeric_corner_stream_13
                  li         t0, 0x0
                  li         a1, 0x0
                  li         t6, 0x1
                  li         t4, 0x1
                  li         t3, 0x1de193fa
                  li         s8, 0x628cc346
                  li         s4, 0x0
                  li         s9, 0x0
                  li         a6, 0x1
                  c.mv        t4, s2
                  auipc       zero, 600678
                  c.addi      s0, 4
                  divu        t1, s3, a7
                  c.nop
                  c.nop
                  c.mv        t3, a5
                  c.add       t4, gp
                  auipc       sp, 262982
                  c.lui       a0, 15
                  sub         s0, s0, t4
                  div         a7, gp, t0
                  c.addi4spn  a2, sp, 16
                  sub         s4, a5, a1
                  auipc       s2, 829923
                  mul         s11, s0, s10
                  c.add       a6, tp
                  mul         a3, a5, a7
                  lui         s10, 407037
                  mulh        t2, a7, a1
                  c.addi16sp  sp, 368
                  c.addi16sp  sp, -16
                  c.nop
                  mulhsu      a7, s9, t0
                  c.sub       a2, a1
                  auipc       t2, 756990
                  addi        zero, s9, 290
                  c.sub       a1, a2
                  mulhu       s5, t4, a3
                  mulh        zero, t0, zero
                  auipc       s7, 1032239
                  c.or        a3, a2
                  c.mv        ra, gp
                  sltu        t0, t6, s7
                  rem         t6, s0, t6
                  c.xor       a0, a1
                  c.srli      a1, 7
                  auipc       s8, 612895
                  c.andi      a0, -1
                  mul         a4, s3, t6
                  sub         s9, a4, zero
                  c.li        ra, 25
                  c.srai      a1, 12
                  sltiu       gp, s0, 1644
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_14
                  li         t4, 0x6f3ba17e
                  li         t3, 0x0
                  li         a2, 0x0
                  li         a3, 0x1
                  li         s0, 0x38b9c288
                  li         a4, 0x0
                  li         a0, 0x1
                  li         s7, 0x1
                  li         a5, 0x1
                  auipc       a7, 7694
                  c.addi4spn  a2, sp, 128
                  c.li        a0, 29
                  c.addi4spn  a3, sp, 528
                  nop
                  c.add       s2, s11
                  c.sub       a0, s1
                  auipc       s4, 861616
                  c.addi4spn  a3, sp, 16
                  c.add       a6, s9
                  c.sub       a1, a0
                  c.addi      gp, -1
                  c.addi16sp  sp, 256
                  c.addi4spn  a3, sp, 192
                  c.addi4spn  a2, sp, 560
                  c.addi      a1, -1
                  c.lui       t3, 24
                  c.nop
                  c.li        t6, -1
                  c.nop
                  divu        s9, ra, a7
                  rem         tp, zero, gp
                  c.lui       a4, 30
                  c.li        ra, -1
                  andi        s8, a2, 1390
                  c.nop
                  c.andi      a3, -1
                  c.addi      s8, 27
                  or          t3, t3, s2
                  addi        t2, a4, -376
                  mulh        t6, a1, ra
                  c.mv        s5, ra
                  lui         a0, 224166
                  slti        gp, t4, -470
                  sra         s7, a2, t6
                  c.xor       a1, a0
                  c.sub       s0, a5
                  auipc       a1, 199890
                  nop
                  c.nop
                  c.or        a0, s1
                  xor         t3, s7, t2
                  slli        s10, a1, 17
                  c.xor       a2, s1
                  sll         sp, s2, t6
                  xor         a7, t1, s7
                  c.li        ra, -1
                  c.addi      tp, 28
                  mulhsu      zero, s2, s8
                  c.xor       a5, a2
                  c.xor       a0, a4
                  mulhu       zero, s4, t2
                  sltu        a7, t5, a0
                  c.addi16sp  sp, -16
                  auipc       a3, 469531
                  srai        a1, s9, 22
                  c.addi4spn  a3, sp, 32
                  c.lui       s9, 23
                  rem         a1, s10, a3
                  and         s11, a4, a2
                  lui         t6, 699808
                  sub         t3, t1, s4
                  c.or        a3, a5
                  slti        t3, a1, -197
                  c.srai      a5, 20
                  c.nop
                  srai        t3, ra, 15
                  sll         s7, a5, s0
                  sltiu       a6, s8, 1167
                  xor         s7, s5, t2
                  mul         a5, t1, s9
                  slli        s10, a0, 14
                  c.addi4spn  a3, sp, 944
                  c.and       a1, s1
                  add         a2, s8, a4
                  slli        t3, s11, 10
                  mulhsu      s7, s11, tp
                  slti        t0, a2, -489
                  div         gp, t2, a2
                  sltu        a6, s9, a6
                  slt         s11, a2, s5
                  div         s9, t4, s10
                  sll         s5, sp, zero
                  mulhsu      t3, s11, t0
                  c.mv        s8, t1
                  lui         gp, 653553
                  c.add       s7, a6
                  c.srli      a3, 4
                  c.or        a0, a2
                  c.srli      a1, 30
                  lui         a5, 733118
                  andi        t2, t3, -256
                  sra         t6, a0, gp
                  add         t0, s1, s0
                  c.li        s8, -1
                  slti        a5, s6, -1123
                  slti        a2, tp, 1150
                  mulh        a5, a4, a1
                  or          s0, s4, s0
                  andi        a0, a5, 1522
                  c.addi      ra, 29
                  c.and       a1, a3
                  c.nop
                  add         s11, s5, t0
                  xor         zero, a4, s9
                  srli        gp, a2, 19
                  div         gp, t1, s2
                  c.srli      a3, 23
                  c.lui       a4, 21
                  sltiu       a6, s7, -30
                  c.addi16sp  sp, -16
                  xori        a7, a3, 125
                  c.addi      a4, -1
                  nop
                  c.lui       tp, 17
                  mulh        zero, s8, t1
                  c.nop
                  sll         ra, t6, tp
                  or          t4, t0, a0
                  and         s10, a7, t4
                  c.mv        tp, s9
                  c.and       a3, a0
                  c.li        s9, 9
                  rem         s2, s6, s0
                  c.xor       a3, a3
                  sltiu       t4, sp, 1864
                  c.sub       s0, a4
                  or          tp, s10, s5
                  ori         zero, a1, -1421
                  nop
                  mulhsu      t4, s9, a2
                  mulh        sp, t1, tp
                  c.addi4spn  s0, sp, 816
                  nop
                  c.and       a3, a1
                  c.addi16sp  sp, 144
                  srli        s0, t0, 3
                  xor         zero, s11, a5
                  c.and       a3, a0
                  c.li        s10, -1
                  andi        s4, s4, 375
                  srl         tp, s5, s1
                  srli        s4, tp, 22
                  srai        tp, ra, 4
                  div         a7, a6, t5
                  c.or        a2, a5
                  srl         s5, s0, a3
                  srli        zero, s10, 13
                  c.and       a1, s1
                  c.addi16sp  sp, 336
                  c.addi      ra, 20
                  sll         s8, t6, s2
                  div         t4, s6, s5
                  c.xor       a2, a2
                  c.slli      s4, 4
                  and         zero, a3, t4
                  addi        t3, a5, -495
                  c.addi16sp  sp, 304
                  c.srai      a3, 14
                  c.andi      a1, 7
                  sltu        t3, t6, s2
                  lui         ra, 11510
                  nop
                  mul         t2, a3, t4
                  mulh        s2, t0, s8
                  xori        s3, a4, 310
                  srl         s9, t6, gp
                  andi        t1, s9, 1351
                  c.or        a1, a1
                  c.lui       s9, 5
                  sub         s9, gp, a4
                  sltu        s4, t2, s7
                  mulh        t3, s4, t2
                  c.lui       t2, 17
                  slt         a0, t0, s3
                  c.addi16sp  sp, 432
                  nop
                  c.addi16sp  sp, -16
                  and         a6, s6, s0
                  c.addi4spn  a5, sp, 720
                  c.lui       ra, 1
                  addi        s2, s1, -472
                  c.add       t4, s5
                  sll         zero, zero, s8
                  ori         a6, a7, 1432
                  c.lui       a4, 5
                  slt         sp, ra, s2
                  or          ra, s5, s3
                  mul         sp, t2, s9
                  c.sub       a1, a3
                  slli        s3, s0, 16
                  c.or        a1, a1
                  c.lui       t3, 15
                  c.addi      t2, 10
                  lui         zero, 750412
                  sltu        s8, a3, t2
                  div         s8, a2, s6
                  mul         t3, s2, s7
                  c.lui       a3, 28
                  c.sub       a3, a5
                  slt         zero, t1, t2
                  xor         gp, a5, t1
                  mulhsu      a1, s2, s9
                  srai        s11, s2, 5
                  c.add       ra, a6
                  sub         s11, s10, s11
                  c.li        t0, -1
                  xor         zero, s3, t6
                  c.li        s9, -1
                  sra         tp, ra, t4
                  slti        a2, t3, -439
                  c.li        s5, 24
                  c.add       ra, a5
                  lui         t2, 188987
                  c.lui       t4, 24
                  mul         t3, t5, a0
                  mulhu       t4, a7, s4
                  sltu        gp, t0, t5
                  slt         s9, t0, zero
                  ori         ra, t6, -30
                  c.nop
                  add         a1, a2, a6
                  div         t3, s10, a7
                  c.srai      a1, 23
                  c.srai      a3, 6
                  mulh        s2, t6, t4
                  sltiu       t0, s2, 653
                  slli        a6, sp, 28
                  c.slli      a2, 19
                  xor         sp, sp, s10
                  ori         gp, s9, -1573
                  c.addi4spn  a1, sp, 560
                  mulh        zero, zero, ra
                  c.addi4spn  a2, sp, 864
                  c.sub       a3, a1
                  auipc       s7, 311989
                  c.add       tp, tp
                  c.lui       t1, 5
                  nop
                  c.sub       a0, a3
                  c.nop
                  sra         s7, s2, s6
                  xor         a0, a2, s7
                  slti        s0, t5, -1728
                  c.sub       a2, a3
                  sll         s10, a5, zero
                  andi        s9, s9, 300
                  addi        s8, s2, -1302
                  c.lui       s9, 22
                  sub         s7, t1, gp
                  mul         t4, t3, a6
                  sltu        t0, a4, tp
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_3
                  li         s7, 0x0
                  li         a3, 0x0
                  li         t4, 0x0
                  li         t3, 0x0
                  li         a4, 0x1
                  li         s9, 0x0
                  li         sp, 0x3686c6f2
                  li         s8, 0x0
                  li         a6, 0x39a29602
                  rem         s2, s5, tp
                  c.addi4spn  a1, sp, 32
                  mulhsu      a5, sp, s4
                  addi        t0, tp, 998
                  c.lui       s5, 19
                  lui         a6, 893901
                  rem         s7, a1, s7
                  divu        s10, s0, t6
                  divu        a2, a1, t4
                  divu        sp, zero, s0
                  auipc       t4, 769270
                  auipc       sp, 824543
                  nop
                  rem         zero, t3, s3
                  c.lui       t1, 31
                  addi        s9, t0, 954
                  auipc       t4, 691295
                  rem         a6, t6, a5
                  c.addi16sp  sp, 176
                  c.sub       a1, a5
                  slti        zero, t0, -1849
                  add         t4, t5, s3
                  rem         t6, t0, s3
                  addi        s9, ra, 2043
                  lui         a3, 1024999
                  mulhu       s11, tp, t4
                  slli        zero, a2, 23
                  c.nop
                  c.mv        a4, a1
                  mulh        zero, a2, t4
                  lui         a0, 994936
                  ori         t4, t1, -208
                  sll         t1, a1, s5
                  c.slli      s9, 21
                  c.srai      s0, 21
                  c.addi      a3, 4
                  andi        ra, t2, 166
                  ori         a7, tp, -564
                  c.srai      a3, 10
                  c.li        s0, 22
                  mul         t0, a6, s4
                  c.and       a5, a4
                  c.mv        tp, t4
                  rem         s9, s11, s9
                  slt         s4, s6, zero
                  c.andi      a1, 0
                  lui         sp, 91008
                  mulhsu      t0, s4, a7
                  nop
                  divu        s3, a1, t1
                  c.nop
                  and         zero, sp, a7
                  nop
                  c.andi      a3, 5
                  mul         zero, t4, zero
                  ori         t2, sp, -1787
                  sub         zero, a7, s10
                  c.add       a7, s7
                  c.andi      a3, -1
                  c.sub       a2, a0
                  and         a0, t0, a6
                  slti        a0, a0, 405
                  c.xor       a2, a1
                  c.slli      s4, 2
                  lui         t6, 343821
                  addi        t3, a4, -190
                  srl         s11, t0, sp
                  and         s11, a5, s0
                  and         tp, s11, a7
                  mulhu       s5, sp, tp
                  c.slli      t1, 27
                  sll         ra, sp, a1
                  c.nop
                  c.andi      a0, 3
                  xori        zero, s2, -1068
                  c.srai      a2, 1
                  div         t1, s3, t0
                  slli        a5, t2, 3
                  sltiu       zero, gp, -1509
                  and         s4, s5, t1
                  c.slli      a3, 6
                  mulh        a2, a0, t3
                  c.and       a1, a0
                  c.add       a4, tp
                  c.addi16sp  sp, -16
                  c.mv        t6, tp
                  mulhu       s4, t5, sp
                  c.nop
                  c.slli      a2, 30
                  ori         t4, a6, -64
                  c.and       a1, a3
                  mulh        t3, t4, s3
                  mulhu       zero, s0, tp
                  c.lui       a2, 28
                  c.addi      t0, -1
                  srl         s2, s1, a3
                  mul         ra, s0, ra
                  srai        s8, gp, 20
                  lui         zero, 1021099
                  srai        a3, a6, 1
                  divu        t0, s11, s11
                  c.srli      s0, 2
                  mulhsu      s3, t4, s6
                  divu        t4, s6, s0
                  auipc       a6, 86280
                  sltiu       zero, a3, -1148
                  xor         a2, t2, ra
                  sltiu       s11, s8, -340
                  c.lui       s8, 27
                  div         s4, a2, s6
                  xori        t1, t5, -1551
                  sltu        s3, s3, s0
                  c.srai      a1, 12
                  c.add       t0, a5
                  xori        a1, a1, 156
                  sra         a6, s4, s6
                  c.sub       a3, a2
                  mul         gp, a7, zero
                  xori        zero, t2, 1434
                  srai        zero, s9, 17
                  c.xor       a3, a0
                  slti        gp, t2, -1817
                  c.add       ra, s10
                  c.xor       a3, s1
                  srai        sp, s10, 24
                  srli        t2, gp, 18
                  c.andi      a3, 16
                  sltiu       s0, t6, -569
                  slt         a2, ra, s9
                  andi        s10, a6, 1315
                  sltiu       a0, s5, -399
                  sra         zero, t2, t5
                  c.nop
                  sub         a1, s6, s3
                  c.add       s9, a2
                  c.li        a6, -1
                  andi        s9, t4, 582
                  div         a2, s2, a5
                  divu        gp, s1, a7
                  mulhsu      a4, a4, a3
                  mul         s0, t1, a1
                  and         a3, s5, sp
                  c.xor       a1, a0
                  c.srli      a1, 15
                  c.andi      s0, -1
                  slli        ra, s8, 17
                  c.slli      s4, 24
                  slti        t3, t4, -1167
                  sltu        zero, a1, t6
                  slti        t0, s8, -1734
                  ori         a3, s4, 468
                  rem         s11, sp, a2
                  xor         t3, t0, s2
                  addi        zero, a0, -1772
                  c.add       t0, a2
                  rem         s8, a2, t3
                  srli        s4, s2, 9
                  mul         s0, s3, s0
                  srl         s4, a5, a6
                  and         s10, s2, s2
                  sltu        zero, ra, s5
                  c.slli      a1, 1
                  c.addi      gp, 16
                  add         zero, s6, a3
                  mulhsu      s11, zero, t2
                  add         s7, a1, s9
                  c.or        a2, a1
                  c.addi4spn  a1, sp, 576
                  c.mv        ra, a7
                  ori         t6, s5, -284
                  c.mv        ra, s5
                  slti        zero, a0, -643
                  and         a5, t0, zero
                  srli        a7, a3, 9
                  c.sub       s0, s1
                  c.or        a0, s1
                  xor         t6, a5, t6
                  xor         s8, zero, sp
                  c.xor       a1, s1
                  ori         s7, zero, 1507
                  c.or        a3, a1
                  sra         a5, s9, a4
                  lui         a1, 278477
                  c.and       a0, s1
                  sltiu       ra, t0, 1670
                  c.addi16sp  sp, 16
                  c.slli      a0, 10
                  mulhsu      zero, s9, s0
                  ori         sp, a0, -505
                  c.addi      t3, -1
                  div         t1, ra, s10
                  c.xor       a2, a2
                  sra         s9, s10, s3
                  c.and       a2, a1
                  auipc       zero, 839675
                  mulhu       sp, s10, t4
                  c.and       a1, a2
                  c.addi4spn  a3, sp, 272
                  c.srai      a4, 9
                  add         t4, a4, s5
                  sltu        gp, t6, s6
                  c.addi      ra, -1
                  c.sub       a0, s1
                  auipc       a3, 974738
                  c.addi      sp, 26
                  c.sub       a3, a1
                  c.add       t3, t2
                  c.sub       a2, a3
                  sltu        a2, s2, a1
                  div         s8, sp, s3
                  sltiu       s0, a7, -1065
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align 2
mtvec_handler:    
                  csrrw x9, 0x340, x9
                  add x9, x22, zero
                  1: addi x9, x9, -124
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x31, 0xb # ECALL_MMODE
                  beq x2, x31, ecall_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x30, write_tohost
                  jalr x0, x30, 0

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  lw x1, 4(x9)
                  lw x2, 8(x9)
                  lw x3, 12(x9)
                  lw x4, 16(x9)
                  lw x5, 20(x9)
                  lw x6, 24(x9)
                  lw x7, 28(x9)
                  lw x8, 32(x9)
                  lw x9, 36(x9)
                  lw x10, 40(x9)
                  lw x11, 44(x9)
                  lw x12, 48(x9)
                  lw x13, 52(x9)
                  lw x14, 56(x9)
                  lw x15, 60(x9)
                  lw x16, 64(x9)
                  lw x17, 68(x9)
                  lw x18, 72(x9)
                  lw x19, 76(x9)
                  lw x20, 80(x9)
                  lw x21, 84(x9)
                  lw x22, 88(x9)
                  lw x23, 92(x9)
                  lw x24, 96(x9)
                  lw x25, 100(x9)
                  lw x26, 104(x9)
                  lw x27, 108(x9)
                  lw x28, 112(x9)
                  lw x29, 116(x9)
                  lw x30, 120(x9)
                  lw x31, 124(x9)
                  addi x9, x9, 124
                  add x22, x9, zero
                  csrrw x9, 0x340, x9
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  lw x1, 4(x9)
                  lw x2, 8(x9)
                  lw x3, 12(x9)
                  lw x4, 16(x9)
                  lw x5, 20(x9)
                  lw x6, 24(x9)
                  lw x7, 28(x9)
                  lw x8, 32(x9)
                  lw x9, 36(x9)
                  lw x10, 40(x9)
                  lw x11, 44(x9)
                  lw x12, 48(x9)
                  lw x13, 52(x9)
                  lw x14, 56(x9)
                  lw x15, 60(x9)
                  lw x16, 64(x9)
                  lw x17, 68(x9)
                  lw x18, 72(x9)
                  lw x19, 76(x9)
                  lw x20, 80(x9)
                  lw x21, 84(x9)
                  lw x22, 88(x9)
                  lw x23, 92(x9)
                  lw x24, 96(x9)
                  lw x25, 100(x9)
                  lw x26, 104(x9)
                  lw x27, 108(x9)
                  lw x28, 112(x9)
                  lw x29, 116(x9)
                  lw x30, 120(x9)
                  lw x31, 124(x9)
                  addi x9, x9, 124
                  add x22, x9, zero
                  csrrw x9, 0x340, x9
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
