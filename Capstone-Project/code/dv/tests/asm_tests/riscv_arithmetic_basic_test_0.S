.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x31, 0x40001104
                  csrw 0x301, x31
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 0
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

init_machine_mode:
                  li x31, 0x1a00
                  csrw 0x300, x31 # MSTATUS
                  li x31, 0x0
                  csrw 0x304, x31 # MIE
                  mret
init:             
                  li x0, 0x14a5a8a7
                  li x1, 0xf7f5acaa
                  li x2, 0x0
                  li x3, 0x57888e90
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0x6
                  li x7, 0x39fe5d5d
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x0
                  li x12, 0xa6edb048
                  li x13, 0xfb9c0dbd
                  li x14, 0xc3d3b026
                  li x15, 0x0
                  li x16, 0x80000000
                  li x18, 0xfc90daea
                  li x19, 0x80000000
                  li x20, 0xf8f47555
                  li x21, 0x451224ee
                  li x22, 0x0
                  li x23, 0xfe238473
                  li x24, 0x37eb61e8
                  li x25, 0xfbffc831
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0x301585ca
                  li x30, 0x80000000
                  li x31, 0xf597117b
                  la x11, user_stack_end
main:             li         t6, 0x1 #start riscv_int_numeric_corner_stream_0
                  li         s1, 0x1b2278dc
                  li         t5, 0x0
                  li         t3, 0x0
                  li         t4, 0x0
                  li         s8, 0x0
                  li         s10, 0x0
                  li         s9, 0x0
                  li         a5, 0x0
                  li         a3, 0x0
                  c.addi4spn  a0, sp, 688
                  add         t4, s4, a3
                  mul         a4, t2, s7
                  c.addi4spn  a3, sp, 576
                  c.nop
                  auipc       zero, 170225
                  mulhsu      t4, s8, s11
                  mulhsu      t2, s6, t1
                  sub         a4, s8, t1
                  div         t0, s4, s9
                  divu        s9, a1, t4
                  lui         zero, 616022
                  mulhsu      s9, a0, t1
                  c.mv        s4, a0
                  div         zero, s3, s10
                  c.nop
                  divu        t5, a6, s8
                  rem         s3, s9, a5
                  c.mv        s1, s11
                  c.addi      a6, 6
                  li         t2, 0x18bd0091 #start riscv_int_numeric_corner_stream_22
                  li         t6, 0x0
                  li         a5, 0x28463e3b
                  li         s3, 0x1
                  li         t5, 0x0
                  li         t4, 0x618a0270
                  li         s7, 0x0
                  li         t3, 0x0
                  li         s9, 0x49562c58
                  li         s6, 0x0
                  addi        zero, tp, -1935
                  rem         s2, s6, s8
                  div         a6, s7, t5
                  sub         t6, s10, s2
                  div         t2, s9, a1
                  mulh        t6, t2, s10
                  c.nop
                  c.sub       s1, a3
                  mulh        a3, t5, t4
                  nop
                  mul         t5, a3, tp
                  div         a5, t3, sp
                  addi        zero, s11, -1195
                  c.li        t4, 2
                  mulhsu      ra, s2, a0
                  mulhsu      s10, a6, t0
                  add         t0, a5, s3
                  c.sub       a0, a2
                  lui         t4, 285202 #end riscv_int_numeric_corner_stream_22
                  li         t6, 0x1 #start riscv_int_numeric_corner_stream_9
                  li         t5, 0x41cd8737
                  li         a3, 0x3b55c306
                  li         s4, 0x0
                  li         s1, 0x0
                  li         t3, 0x1
                  li         t4, 0x899db0b
                  li         sp, 0x7069b6e3
                  li         s9, 0x1
                  li         s6, 0x0
                  add         s7, s0, s8
                  c.nop
                  div         ra, gp, s4
                  addi        t1, sp, -1278
                  c.nop
                  c.li        s9, -1
                  mulh        s5, t5, s2
                  add         a0, zero, a5
                  c.add       s2, s10
                  div         zero, s5, a3
                  sub         s10, zero, t2
                  c.addi4spn  s0, sp, 480
                  rem         t3, a4, a3
                  mulhu       sp, s2, ra
                  c.lui       t0, 7
                  add         tp, t3, a1
                  c.addi16sp  sp, 288
                  c.nop
                  divu        zero, a5, t6
                  mulhu       t0, tp, t3
                  auipc       gp, 300586
                  c.lui       s10, 24
                  c.li        t3, -1
                  sub         a4, t3, a5
                  add         t4, s6, a5 #end riscv_int_numeric_corner_stream_9
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_15
                  li         s4, 0x4f5e2d8e
                  li         s0, 0x23ea81ba
                  li         tp, 0x50c48c7a
                  li         s1, 0x1
                  li         t0, 0x0
                  li         t2, 0x1
                  li         sp, 0x7270c54b
                  li         t5, 0x0
                  li         a5, 0x944d2c
                  mulhu       a4, a7, s0
                  rem         zero, s7, s0
                  auipc       s9, 161338
                  auipc       a0, 254761
                  mulhu       s3, s2, s0
                  div         s6, s6, t5
                  add         a0, t3, a4
                  c.addi      s3, 7
                  c.nop
                  c.nop
                  c.addi16sp  sp, -16
                  mulhsu      s8, s7, a1
                  c.sub       a4, a0
                  c.mv        a3, s10
                  c.mv        ra, a2
                  sub         t5, a4, s2
                  lui         s5, 125931
                  c.addi16sp  sp, -16
                  c.add       a6, s11
                  c.addi16sp  sp, 336
                  auipc       s2, 327417
                  mulhsu      zero, a2, s1
                  c.nop
                  c.addi16sp  sp, -16
                  mulhsu      s6, gp, s7 #end riscv_int_numeric_corner_stream_15
                  li         t0, 0x1 #start riscv_int_numeric_corner_stream_2
                  li         t6, 0x0
                  li         t5, 0x0
                  li         a4, 0x0
                  li         a5, 0x51ff2456
                  li         s7, 0x1
                  li         s8, 0x1
                  li         t3, 0x21aef8a0
                  li         tp, 0x0
                  li         s6, 0x0
                  divu        s1, t2, s0
                  c.nop
                  mulhu       s3, t2, s5
                  lui         a5, 178350
                  c.sub       s1, a2
                  mulh        t2, t2, t3
                  c.mv        t6, s7
                  mulhu       tp, s5, s7
                  addi        zero, t6, -445
                  mulh        t4, t5, t2
                  c.lui       ra, 17
                  c.li        ra, -1
                  sub         a3, t3, t3
                  c.sub       s1, a3
                  lui         s5, 988440
                  auipc       s10, 186074 #end riscv_int_numeric_corner_stream_2
                  li         t6, 0x1 #start riscv_int_numeric_corner_stream_19
                  li         s10, 0x15171279
                  li         s0, 0x528b29da
                  li         a2, 0x0
                  li         s8, 0x0
                  li         t3, 0x1
                  li         a4, 0x0
                  li         t4, 0x0
                  li         s7, 0x0
                  li         t5, 0x1
                  divu        a5, a7, ra
                  c.sub       a3, a1
                  nop
                  mulhsu      sp, tp, s2
                  c.addi16sp  sp, 160
                  c.addi      t0, 15
                  auipc       t1, 258229
                  c.sub       a4, a1
                  mulh        t5, ra, t0
                  nop
                  c.add       ra, a5
                  c.addi4spn  s1, sp, 288
                  add         a4, t2, zero
                  div         t6, s1, a4
                  c.addi      gp, 29
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_5
                  li         t5, 0x0
                  li         s10, 0x55bf3b67
                  li         a2, 0x458c473e
                  li         t0, 0x0
                  li         s9, 0x74630da9
                  li         t4, 0x0
                  li         t3, 0x0
                  li         s2, 0x5b6feb48
                  li         s8, 0x0
                  c.sub       s1, a1
                  auipc       t1, 79048
                  c.addi4spn  a3, sp, 320
                  c.mv        s3, t6
                  auipc       t0, 187541
                  mul         zero, s9, s8
                  rem         t1, s10, s2
                  c.nop
                  c.li        t6, -1
                  auipc       tp, 234184
                  c.addi16sp  sp, 144
                  nop
                  lui         s5, 789437
                  c.mv        ra, gp
                  c.sub       a2, s0
                  auipc       t1, 951805 #end riscv_int_numeric_corner_stream_5
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_14
                  li         a3, 0x0
                  li         t5, 0x0
                  li         s0, 0x0
                  li         tp, 0x0
                  li         t4, 0x799201ec
                  li         t0, 0x13d4c1bc
                  li         t3, 0x0
                  li         s8, 0x172b5468
                  li         a2, 0x0
                  c.li        s0, 9
                  c.mv        t4, a6
                  nop
                  nop
                  divu        a4, a0, s10
                  c.lui       t0, 19
                  add         zero, s11, ra
                  c.addi      t0, -1
                  c.nop
                  mulh        s3, t4, s9
                  nop
                  c.nop
                  c.mv        a6, a6
                  mulhu       zero, s1, s5
                  c.add       ra, a6
                  li         t1, 0x0 #start riscv_int_numeric_corner_stream_4
                  li         t6, 0x1
                  li         t5, 0x0
                  li         s5, 0x1882bb48
                  li         ra, 0x0
                  li         t4, 0x3a4cc6d9
                  li         a2, 0x1
                  li         a3, 0x0
                  li         t3, 0x24019965
                  li         s9, 0x0
                  mulhu       gp, s6, zero
                  c.nop
                  c.add       s1, a3
                  addi        t3, s6, 508
                  rem         a3, a3, a2
                  rem         a6, s6, t2
                  c.addi16sp  sp, 256
                  div         s9, t1, sp
                  c.mv        a0, s5
                  c.nop
                  c.lui       a2, 29
                  c.addi      s5, 1
                  c.addi4spn  a0, sp, 736
                  divu        s4, a6, a1
                  c.addi      s0, 4
                  c.addi16sp  sp, 464
                  mulh        s3, a4, t4
                  div         t3, gp, zero
                  div         s3, ra, ra
                  mulhsu      zero, tp, s9
                  mulhsu      gp, s9, s5
                  nop
                  c.sub       s1, a1
                  nop
                  mul         s10, s2, s2
                  divu        tp, a7, a6
                  mulh        s8, s1, a1
                  c.sub       s1, a2
                  li         t6, 0x7e2c4316 #start riscv_int_numeric_corner_stream_20
                  li         s9, 0x1
                  li         s2, 0x0
                  li         t5, 0x0
                  li         t4, 0x0
                  li         tp, 0x0
                  li         s8, 0x0
                  li         a3, 0x0
                  li         t3, 0x0
                  li         s4, 0x7f408a71
                  c.addi16sp  sp, 240
                  c.addi16sp  sp, 496
                  lui         s4, 817285
                  c.addi      a0, -1
                  add         a6, s1, t1
                  nop
                  mulhu       s5, s0, t0
                  sub         s10, sp, s11
                  c.add       t0, s9
                  auipc       a6, 833914
                  c.lui       s0, 19
                  c.lui       a2, 16
                  add         s0, s1, t6
                  add         a3, a3, zero
                  c.sub       a2, a3
                  c.mv        a3, t5
                  sub         t6, s2, a3
                  nop
                  c.sub       s1, a2
                  c.add       ra, tp
                  c.add       ra, t2
                  c.sub       s1, s1
                  nop
                  c.nop
                  c.addi      s1, 11
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_16
                  li         t5, 0x1
                  li         a0, 0x0
                  li         t4, 0x0
                  li         t3, 0x0
                  li         ra, 0x0
                  li         s3, 0x1
                  li         s8, 0xd22b78e
                  li         s9, 0x0
                  li         a3, 0x0
                  auipc       zero, 39194
                  c.addi      s9, -1
                  mulh        t2, s9, a3
                  sub         s0, s8, s3
                  c.lui       ra, 13
                  addi        s5, s4, 299
                  lui         a0, 823136
                  mulhu       s8, s4, s8
                  add         a6, s11, s8
                  mulh        t6, s10, s1
                  addi        zero, t1, -841
                  c.addi16sp  sp, -16
                  c.lui       ra, 4
                  c.li        a6, -1
                  rem         a6, a2, a7
                  mulh        a2, s5, a2
                  c.addi16sp  sp, 224
                  c.addi4spn  s1, sp, 944
                  c.li        t3, 15
                  nop
                  nop
                  addi        a2, t6, 1701
                  rem         a5, tp, t0
                  sub         s3, t2, t4
                  nop
                  c.lui       a4, 20
                  c.sub       a5, s0
                  mulhu       a2, s11, a7
                  auipc       sp, 790186
                  nop #end riscv_int_numeric_corner_stream_16
                  nop
                  auipc       tp, 267914
                  c.srli      a0, 18
                  c.slli      s10, 2
                  c.slli      t5, 23
                  xor         ra, s8, a1
                  or          zero, t5, s1
                  mulh        a4, zero, s1
                  c.add       ra, ra
                  addi        t5, sp, -285
                  xor         zero, s10, s3
                  c.srai      s1, 24
                  srai        a0, t0, 1
                  c.add       ra, s9
                  sltu        s7, gp, a7
                  mulhu       a6, s3, t5
                  srli        s2, a2, 15
                  divu        s6, gp, s2
                  addi        gp, s10, 642
                  mulhsu      s7, t6, a5
                  div         s7, ra, t2
                  mulhsu      t2, t6, s8
                  sub         s4, zero, a7
                  c.sub       a3, a1
                  add         zero, s11, a1
                  c.andi      s1, 19
                  slt         s4, s9, a0
                  lui         s6, 981089
                  div         s4, t4, gp
                  srli        zero, s8, 19
                  c.srai      s1, 23
                  div         s3, s8, ra
                  c.addi16sp  sp, 16
                  auipc       zero, 413385
                  xori        a6, a1, -806
                  c.srai      a2, 10
                  auipc       a5, 336568
                  srl         a3, s5, t4
                  mulhsu      s1, s4, a6
                  auipc       t0, 431691
                  c.add       a6, s10
                  c.sub       s1, a0
                  c.srai      s1, 26
                  c.xor       a5, a1
                  c.add       t4, s4
                  slt         zero, s6, s5
                  slti        t2, a1, -1282
                  c.lui       ra, 4
                  c.xor       a5, a3
                  c.add       s7, ra
                  c.slli      a5, 6
                  addi        a5, t4, 1761
                  c.srli      a3, 13
                  c.li        sp, -1
                  srl         s1, s9, ra
                  divu        ra, s8, s2
                  rem         a2, a5, a0
                  slti        s9, ra, -1958
                  sub         s9, s1, s11
                  c.addi      a0, -1
                  and         a3, s0, sp
                  c.nop
                  c.add       a0, s2
                  mulhu       a4, t1, t4
                  c.addi16sp  sp, -16
                  mulh        ra, t0, s6
                  and         t1, s0, a1
                  c.addi      t1, -1
                  c.xor       a0, s1
                  c.mv        s7, s8
                  c.addi4spn  a0, sp, 224
                  rem         t4, s6, t4
                  mul         s10, a1, t5
                  c.li        sp, 2
                  andi        zero, s2, 1541
                  c.srai      s1, 14
                  srl         a0, a6, s1
                  sltiu       s5, t3, 774
                  add         t3, a2, tp
                  c.xor       a2, a1
                  xori        s0, s1, -1076
                  c.srai      a5, 15
                  auipc       s10, 633129
                  slli        s1, zero, 20
                  mul         s5, sp, s2
                  srli        a6, s8, 11
                  div         a5, t3, s2
                  srl         zero, s5, a2
                  c.mv        s8, sp
                  sltiu       a6, a7, 1286
                  slti        t3, s9, -1518
                  divu        s10, s0, sp
                  c.addi16sp  sp, 496
                  rem         s7, s1, tp
                  ori         t5, a6, 908
                  lui         a2, 85401
                  c.slli      s8, 11
                  auipc       t6, 577576
                  c.addi16sp  sp, 32
                  addi        zero, s11, 42
                  c.li        tp, -1
                  c.addi4spn  s1, sp, 288
                  sub         a6, t0, s7
                  c.xor       s1, a2
                  c.mv        ra, t5
                  c.and       a5, a1
                  c.addi16sp  sp, 64
                  mul         a6, t5, ra
                  slli        a4, a2, 19
                  c.or        a5, a0
                  slli        a3, s10, 17
                  c.slli      a4, 19
                  andi        gp, sp, 1074
                  c.add       t4, t0
                  slti        t4, s5, 1383
                  c.srli      a0, 6
                  mulh        gp, t4, zero
                  c.srai      a2, 12
                  c.addi16sp  sp, -16
                  and         s1, t3, s2
                  addi        zero, s11, -1084
                  c.srli      a2, 17
                  addi        t3, a0, 1708
                  div         zero, a6, t0
                  lui         s8, 328001
                  lui         s5, 156057
                  xor         t3, ra, ra
                  addi        a6, s2, -1952
                  sra         t0, t1, s4
                  sra         s5, s2, sp
                  addi        s9, gp, 197
                  add         s3, t5, s0
                  c.add       s2, gp
                  mulhsu      t0, t6, a4
                  add         s2, ra, a6
                  mulh        t1, s3, t3
                  auipc       t3, 135382
                  mulhsu      zero, s0, a3
                  mulh        s9, tp, a6
                  c.addi16sp  sp, -16
                  sub         s1, a6, t1
                  c.slli      s8, 4
                  c.xor       s1, a4
                  c.lui       ra, 8
                  srai        sp, zero, 24
                  srl         s10, a3, gp
                  sra         s7, a2, a0
                  div         s3, s0, s0
                  slli        t4, zero, 29
                  andi        a0, t3, -73
                  c.xor       a0, s0
                  addi        t1, s9, -900
                  sra         sp, a6, s3
                  xor         zero, s5, a5
                  sltiu       t1, t3, 1745
                  c.addi4spn  a3, sp, 784
                  sltiu       a2, a5, 675
                  add         s5, gp, s3
                  c.add       t3, t1
                  nop
                  xori        sp, s6, -667
                  srl         a5, s0, s0
                  c.nop
                  c.andi      a0, 12
                  sra         t5, s4, a5
                  c.slli      s2, 16
                  or          sp, ra, a1
                  c.li        gp, 12
                  c.li        gp, -1
                  srl         tp, sp, s6
                  add         a4, t4, t6
                  c.mv        s9, s8
                  mulhsu      tp, s7, s7
                  sub         t4, sp, t1
                  rem         s2, s3, t1
                  c.srli      s0, 9
                  c.addi4spn  a3, sp, 528
                  auipc       s1, 229642
                  slli        zero, t6, 2
                  srai        s2, t3, 13
                  slt         zero, s1, s9
                  and         s3, t5, a2
                  xori        gp, t6, -1089
                  sll         tp, t4, s0
                  c.nop
                  srai        gp, t6, 10
                  c.xor       s0, a0
                  sltu        s2, t4, s9
                  divu        a5, gp, s0
                  mul         ra, s4, sp
                  nop
                  c.li        a2, 23
                  ori         a3, zero, 974
                  div         a3, s5, s1
                  div         zero, s2, a3
                  add         a6, sp, zero
                  sltu        t1, t4, s4
                  srai        a4, s11, 14
                  xor         s8, s6, s11
                  srl         a0, s0, a6
                  c.add       t6, t2
                  srli        s3, s8, 27
                  c.add       a2, a2
                  srai        a4, s1, 3
                  div         a6, a2, s1
                  srli        a0, s0, 12
                  c.nop
                  and         gp, t3, a5
                  sra         zero, a6, s6
                  sltu        a3, s8, a4
                  add         s3, s6, s5
                  nop
                  mul         s4, a0, s9
                  div         s3, t5, t6
                  ori         s5, t1, -500
                  c.or        a0, a3
                  rem         t1, s8, tp
                  slli        t5, zero, 29
                  mulh        t4, s8, s10
                  div         zero, a5, s8
                  c.srli      a3, 24
                  c.srli      a2, 28
                  div         tp, tp, s0
                  slti        s7, t5, -1096
                  c.and       a3, a1
                  sltu        s1, a5, tp
                  c.addi16sp  sp, -16
                  or          s5, s0, t3
                  c.nop
                  slt         a2, t4, t3
                  divu        s3, sp, a3
                  c.addi16sp  sp, 432
                  xori        t5, s8, -108
                  or          a3, s1, s3
                  slti        s7, tp, -738
                  and         ra, s2, tp
                  mulhsu      gp, s9, t6
                  slt         t2, s7, s6
                  srl         tp, a5, a4
                  c.li        t1, -1
                  c.mv        a4, s4
                  divu        tp, t6, a4
                  c.nop
                  srai        zero, a5, 3
                  nop
                  c.xor       s1, a3
                  ori         s9, a2, 1756
                  c.andi      a3, 18
                  and         t5, s9, t2
                  c.addi16sp  sp, 384
                  xor         t5, s8, s3
                  sll         t3, a0, s6
                  c.xor       a0, s1
                  c.nop
                  c.srli      a3, 23
                  c.nop
                  c.andi      a4, -1
                  mulhsu      s9, zero, tp
                  sltu        a0, ra, a3
                  nop
                  c.addi4spn  s1, sp, 896
                  sub         gp, s0, a3
                  sra         a2, s9, a3
                  or          sp, t2, s1
                  slli        t1, a1, 0
                  slt         s1, zero, s10
                  c.srli      s1, 1
                  c.add       a2, t2
                  rem         ra, s1, s2
                  mulhsu      s7, a6, a0
                  c.lui       a3, 26
                  rem         zero, t5, t1
                  or          s6, a6, t2
                  c.li        s0, -1
                  c.add       a3, s0
                  srl         t5, t0, t4
                  xor         s10, s3, a5
                  c.or        s1, s1
                  ori         a0, s6, 570
                  slli        s3, s10, 9
                  sltu        t3, a3, t1
                  mulh        a4, t6, t0
                  srli        sp, a7, 9
                  mulhsu      s7, a6, s11
                  ori         s3, gp, -1266
                  addi        zero, s11, -1053
                  addi        a2, s11, -1439
                  c.and       s1, a1
                  rem         t4, a4, s2
                  xor         sp, a0, s3
                  c.nop
                  sra         sp, zero, t3
                  slti        s8, s5, -322
                  xor         s10, t4, s9
                  nop
                  c.andi      a3, -1
                  sub         t1, t5, zero
                  mulhu       gp, t1, a4
                  c.xor       s1, a0
                  c.srli      a2, 11
                  slti        ra, s2, 1951
                  mulh        zero, t6, t2
                  or          s3, t4, sp
                  auipc       zero, 450961
                  div         s6, zero, s0
                  or          t4, a7, t0
                  c.addi16sp  sp, -16
                  c.sub       a2, a1
                  sltiu       zero, t1, -945
                  divu        s4, sp, a1
                  sltu        a0, a0, sp
                  rem         a5, t2, s6
                  c.mv        s9, sp
                  sra         zero, s11, t6
                  c.addi4spn  a2, sp, 304
                  andi        s8, t6, -365
                  c.addi4spn  s1, sp, 368
                  mulhu       a2, t6, t4
                  c.li        s3, -1
                  c.and       a5, a3
                  sltu        s2, a2, zero
                  srai        t6, s4, 19
                  srl         ra, t6, a3
                  srl         a2, t1, s4
                  srli        a3, t2, 2
                  or          a6, s6, t3
                  sub         a0, t1, t6
                  li         t1, 0x0 #start riscv_int_numeric_corner_stream_6
                  li         t5, 0x1
                  li         a3, 0x0
                  li         s10, 0x4bcdfb07
                  li         a5, 0x0
                  li         t4, 0x59a03ae6
                  li         a4, 0x7b1508a5
                  li         s0, 0x1
                  li         t6, 0x0
                  li         s2, 0x1
                  divu        sp, s0, s9
                  c.lui       t4, 24
                  c.mv        ra, s5
                  c.lui       ra, 29
                  lui         gp, 314231
                  c.addi4spn  a4, sp, 400
                  mulhsu      a5, t0, a1
                  c.addi      a2, 5
                  c.mv        t3, sp
                  mulhsu      s2, s6, a4
                  mulh        s5, s10, t2
                  divu        zero, s5, s5
                  c.add       ra, t5
                  divu        gp, t1, zero
                  sub         s0, t2, a5
                  c.addi4spn  s1, sp, 352
                  c.addi      sp, -1
                  c.mv        s10, s9
                  c.sub       a3, a0
                  slli        s2, s8, 20
                  div         s6, gp, t1
                  div         t1, t6, a4
                  or          s2, a5, a3
                  c.xor       s1, a0
                  div         zero, t3, s4
                  c.add       s6, t2
                  add         s5, t2, s8
                  slli        t4, t4, 2
                  srai        a0, tp, 21
                  srl         s2, s5, a5
                  sltu        s9, a7, sp
                  srai        zero, s8, 16
                  srl         zero, tp, s5
                  rem         a4, s4, s8
                  srli        a4, a3, 7
                  c.addi4spn  s1, sp, 464
                  c.or        s1, a1
                  divu        a0, s11, s11
                  lui         tp, 708933
                  mulhu       t3, t5, t5
                  sltiu       s3, sp, -1642
                  sltu        s6, a1, t0
                  c.srai      a0, 17
                  c.sub       a5, s0
                  mulh        a3, s7, a6
                  c.srli      s1, 8
                  c.sub       a0, a3
                  c.li        a4, -1
                  mulhsu      t2, s6, ra
                  nop
                  sltu        s1, tp, a0
                  ori         a5, a3, 2027
                  srli        t5, t3, 4
                  sltu        a6, s5, t2
                  divu        s9, a0, a3
                  c.sub       s1, a0
                  slt         t6, t6, a3
                  c.slli      s10, 6
                  and         t5, t6, gp
                  ori         a0, t4, 1253
                  mulhu       t1, s11, s1
                  c.andi      s1, -1
                  mulh        t5, s1, s2
                  c.andi      s1, -1
                  rem         zero, a4, t3
                  auipc       a0, 114256
                  c.addi4spn  a5, sp, 224
                  sll         s7, s1, a2
                  mul         s3, s6, a5
                  or          a5, a4, s3
                  slt         a5, zero, sp
                  auipc       s6, 297841
                  c.addi      a6, 25
                  or          ra, t4, s1
                  and         zero, s1, s3
                  slti        a4, s9, -1094
                  c.lui       s4, 18
                  c.mv        s9, s0
                  mulhu       s7, t4, gp
                  sub         a5, t6, t6
                  c.srli      a3, 30
                  mulhu       sp, a5, zero
                  c.addi4spn  a0, sp, 960
                  c.lui       t2, 24
                  sltu        s4, s5, t4
                  c.or        a0, a3
                  c.addi      ra, -1
                  sll         zero, a7, zero
                  sltiu       t6, sp, -787
                  nop
                  c.nop
                  c.nop
                  sltu        ra, s5, t0
                  c.andi      s1, 26
                  nop
                  mulhsu      sp, a5, sp
                  c.xor       s1, a0
                  c.xor       a0, a0
                  slt         t6, t3, sp
                  divu        t0, tp, t3
                  sltiu       a0, t2, -417
                  auipc       s4, 634431
                  xor         t5, a7, s0
                  c.and       a5, a1
                  mulh        s5, a4, t6
                  c.addi4spn  s1, sp, 480
                  c.and       a3, a3
                  sll         s0, a7, t0
                  slti        zero, sp, 689
                  c.and       a4, a1
                  slti        t3, s10, -712
                  c.li        ra, 9
                  c.sub       a0, a0
                  add         t5, t3, a4
                  slli        s9, a0, 6
                  auipc       s7, 409480
                  slt         a5, t1, t2
                  rem         t5, t6, s11
                  and         zero, sp, zero
                  nop
                  mulhsu      s6, s7, s8
                  c.mv        t6, t0
                  slli        a5, s9, 4
                  c.lui       a5, 10
                  div         t3, a7, s6
                  slti        ra, s1, 1837
                  c.srli      a2, 27
                  sub         t0, a0, s2
                  or          sp, t4, t4
                  rem         s2, s1, a5
                  slli        sp, sp, 22
                  andi        t5, t3, -180
                  srl         sp, a0, s2
                  c.or        a3, a1
                  c.lui       a3, 7
                  or          t3, sp, s4
                  srli        s5, s7, 19
                  or          a0, zero, gp
                  or          s1, s10, sp
                  divu        a6, t6, sp
                  sll         s7, a7, t5
                  sra         s7, t4, a0
                  nop
                  divu        a6, s9, t4
                  c.addi      s1, 6
                  sra         t1, s3, t1
                  c.addi      ra, 12
                  mulh        zero, ra, zero
                  c.srli      a3, 19
                  divu        gp, t1, s4
                  c.addi16sp  sp, -16
                  xor         a2, ra, a7
                  srli        zero, s11, 12
                  c.lui       ra, 5
                  c.addi16sp  sp, 160
                  c.sub       a2, a0
                  c.and       a3, a2
                  c.addi16sp  sp, -16
                  c.add       t1, a5
                  or          zero, t4, t4
                  xori        a6, s10, -1234
                  xor         sp, s11, t1
                  mulh        zero, a3, s0
                  c.and       a3, a1
                  auipc       gp, 918166
                  sra         s0, t5, tp
                  c.addi4spn  s1, sp, 16
                  c.addi      s9, -1
                  add         t1, s0, a3
                  sltu        zero, t4, sp
                  mul         s10, sp, t0
                  sltu        t6, tp, a0
                  srl         s5, tp, a7
                  div         s3, s10, ra
                  c.andi      a2, 20
                  sltiu       t3, s8, 1225
                  and         s8, t3, a0
                  c.xor       s1, a2
                  srl         t1, sp, gp
                  c.srli      a3, 24
                  sltiu       ra, a4, 2036
                  c.andi      s1, 17
                  c.srai      a0, 14
                  auipc       zero, 986256
                  c.slli      ra, 25
                  c.xor       a0, a1
                  divu        s6, s5, t1
                  c.slli      gp, 18
                  sll         t6, s11, a4
                  c.andi      s1, -1
                  srai        s5, s9, 6
                  c.sub       a3, a2
                  c.nop
                  xor         a5, s6, s4
                  rem         s8, a5, t2
                  sra         zero, s7, t5
                  c.li        s7, 23
                  xori        zero, t6, 1027
                  addi        s3, s4, -2035
                  c.slli      a6, 14
                  c.xor       s1, a1
                  c.andi      s1, 15
                  xori        t0, a3, -1131
                  mulh        a4, s4, a3
                  xor         s3, t4, a5
                  xori        a5, sp, 163
                  c.addi16sp  sp, -16
                  sll         zero, a7, zero
                  c.and       s1, a1
                  sltiu       s3, t3, 603
                  sltiu       zero, a6, -1751
                  srai        t1, t2, 4
                  c.mv        t5, t1
                  c.srai      s1, 17
                  srli        s8, t5, 25
                  c.sub       s1, a2
                  c.andi      s1, -1
                  c.and       s1, a3
                  c.xor       a5, a3
                  slt         s9, s11, tp
                  xori        zero, s0, 1341
                  andi        s1, t6, 989
                  sra         t3, s11, zero
                  xori        t2, gp, 361
                  nop
                  xori        t1, s7, -616
                  c.or        s1, a3
                  or          s9, gp, s11
                  slt         a0, s5, a2
                  sll         zero, t6, a6
                  mulh        a5, a4, t0
                  srl         t0, s1, s0
                  xor         s4, t5, ra
                  srl         s7, s7, ra
                  add         ra, s0, t4
                  srli        a0, s4, 13
                  mulh        t3, t4, s1
                  auipc       zero, 319312
                  srl         t0, t0, s1
                  c.addi16sp  sp, -16
                  nop
                  c.lui       a6, 29
                  mulhu       s8, s7, s6
                  addi        tp, t0, 1316
                  sll         zero, t6, a0
                  andi        t3, s7, 1140
                  andi        t0, zero, 1182
                  xor         a5, t1, s8
                  c.and       a0, a1
                  c.slli      t5, 24
                  srli        t2, a3, 30
                  sltu        a2, s3, s10
                  mulh        zero, tp, s1
                  c.and       a0, s1
                  mulh        gp, s6, t4
                  c.srai      a0, 4
                  sltu        t4, s6, s6
                  c.srai      s1, 14
                  c.mv        s10, a1
                  c.sub       s1, s1
                  slti        s1, s10, -1982
                  sra         zero, t2, s3
                  c.and       a0, a1
                  c.xor       s1, a0
                  mul         zero, tp, s5
                  c.nop
                  slli        s0, t0, 15
                  xor         s2, t6, s10
                  c.slli      t0, 31
                  or          a3, s4, a5
                  xor         t6, zero, s5
                  slti        zero, s5, 1441
                  auipc       tp, 837517
                  srli        zero, s0, 19
                  c.mv        t6, s7
                  c.or        s1, a3
                  sltu        s9, t6, a6
                  lui         a6, 982635
                  and         sp, a5, t4
                  mulhsu      s3, s2, t5
                  rem         a6, s0, t3
                  add         sp, s1, s8
                  xor         a5, s2, a3
                  c.add       s7, s5
                  c.srai      a3, 13
                  sltu        s6, a4, s5
                  slti        s6, s8, -320
                  xor         t1, t6, s10
                  sll         s4, a4, gp
                  c.nop
                  srl         t2, t4, s1
                  c.srai      a0, 18
                  sltu        s3, s5, s5
                  addi        ra, s9, 1621
                  add         s6, t0, t5
                  c.slli      ra, 2
                  add         s6, s7, s3
                  srli        zero, t3, 19
                  xor         s1, s8, s11
                  c.sub       s1, a1
                  sub         zero, ra, s2
                  auipc       tp, 270036
                  slt         a4, s10, s10
                  mulhsu      t3, t4, s5
                  mul         s6, zero, a1
                  slti        sp, s9, -364
                  slli        s3, gp, 28
                  slt         zero, t2, a3
                  c.or        s1, a3
                  c.and       s1, s0
                  sltiu       s6, s0, 1197
                  c.addi4spn  a2, sp, 624
                  sub         s3, a6, tp
                  addi        s3, tp, -1459
                  divu        gp, t6, s4
                  mulhsu      a3, a4, s0
                  add         zero, s3, s1
                  sll         sp, a4, sp
                  lui         t6, 175008
                  and         t3, a0, t0
                  rem         tp, a1, a6
                  addi        s4, t6, -699
                  c.mv        a3, s7
                  addi        s5, ra, 544
                  sltu        zero, t0, a6
                  sltu        t6, a4, s8
                  lui         s2, 323075
                  mulhsu      t5, s0, gp
                  slt         s7, ra, s0
                  sll         a5, a5, a2
                  mulh        s10, zero, s0
                  c.addi16sp  sp, -16
                  c.srai      s1, 4
                  slti        zero, s2, -1146
                  mulhsu      s4, s7, s9
                  c.xor       a3, a1
                  slt         s8, tp, a5
                  andi        s10, t3, 644
                  c.and       s1, a2
                  add         a2, t6, a7
                  slti        s0, a7, -84
                  mulh        s9, t1, zero
                  c.srli      s1, 20
                  c.sub       a2, a0
                  c.mv        t3, ra
                  c.or        a3, a3
                  mul         zero, tp, a7
                  c.nop
                  c.andi      a0, -1
                  sub         t6, t6, t6
                  c.and       s1, a3
                  c.addi      s9, 19
                  sltiu       s7, tp, -1588
                  c.addi4spn  a0, sp, 288
                  sltiu       s9, sp, 1865
                  srai        a3, s4, 28
                  c.li        ra, -1
                  c.addi4spn  a3, sp, 672
                  mul         s6, s6, s5
                  nop
                  nop
                  mulhsu      s3, s0, s2
                  xor         s10, s5, s11
                  sll         t2, s7, t0
                  sltu        sp, s4, ra
                  mulhsu      s6, a1, s4
                  slt         t2, a4, t5
                  slt         zero, t6, sp
                  c.addi4spn  a3, sp, 32
                  srai        a5, t2, 19
                  c.lui       a3, 2
                  c.and       s1, a1
                  xor         t0, a6, a7
                  sltu        s10, s9, s8
                  ori         a5, t6, 87
                  sltiu       s7, a1, 2031
                  add         t5, tp, a7
                  c.or        a3, a5
                  slti        s0, s7, -697
                  sra         t4, s2, a4
                  c.mv        t4, t4
                  c.xor       s1, a2
                  c.sub       s1, a1
                  andi        s3, s0, -134
                  and         s5, ra, a1
                  c.add       s4, s2
                  c.addi16sp  sp, -16
                  c.and       s1, a3
                  c.addi16sp  sp, 448
                  sra         t6, s2, a1
                  c.lui       ra, 8
                  c.srai      s1, 2
                  c.srli      a3, 24
                  c.mv        a4, s11
                  mulh        t1, a4, tp
                  c.sub       s1, a3
                  c.mv        a3, t3
                  sll         tp, s11, s3
                  slt         t2, t3, t4
                  c.srli      s0, 11
                  andi        gp, s7, 728
                  srai        t1, a1, 25
                  add         ra, t2, a0
                  c.srli      a2, 7
                  nop
                  c.add       ra, t5
                  andi        s6, a2, -1780
                  c.or        a5, a3
                  c.srai      s1, 5
                  sub         zero, s4, s3
                  slli        t6, a5, 25
                  and         s7, t2, gp
                  auipc       s4, 36069
                  or          t4, t3, sp
                  c.addi      ra, -1
                  slli        s4, a0, 21
                  slli        s3, s6, 12
                  div         s4, s4, t4
                  sll         t6, a7, s10
                  sltu        zero, a4, s9
                  mulhu       s4, zero, s4
                  xori        zero, tp, -252
                  c.addi      s2, 30
                  srli        s3, zero, 19
                  andi        t2, a4, -237
                  c.nop
                  slt         a4, zero, s3
                  andi        s6, s2, -1649
                  c.andi      s1, 3
                  c.addi4spn  s1, sp, 928
                  c.mv        s5, s8
                  andi        zero, s8, 2019
                  div         ra, sp, ra
                  slli        a4, s2, 22
                  c.srai      s0, 17
                  c.li        t2, -1
                  sltu        t0, s6, s6
                  xor         a2, s9, a5
                  c.slli      t2, 1
                  slt         s4, a3, s4
                  c.and       a0, a0
                  mulh        a0, s8, a1
                  c.or        a5, a3
                  mulhsu      gp, s11, a2
                  c.li        sp, -1
                  c.and       a3, a1
                  c.addi4spn  a0, sp, 544
                  c.slli      s2, 14
                  slti        s8, s1, -1688
                  c.addi4spn  s1, sp, 448
                  c.addi16sp  sp, 400
                  sltiu       s1, gp, -1287
                  mulh        ra, t1, t6
                  c.and       s1, a0
                  nop
                  c.nop
                  srli        s0, a0, 24
                  c.srli      a0, 26
                  c.and       a3, a3
                  sltu        zero, s2, a7
                  c.li        ra, 10
                  c.andi      a3, -1
                  mulhu       s9, a7, t0
                  rem         t5, s10, s10
                  nop
                  xor         s10, a3, a6
                  sra         zero, a7, s11
                  sra         s1, t5, t5
                  mulh        s3, s6, sp
                  divu        zero, a7, s3
                  c.addi16sp  sp, 224
                  divu        s8, tp, s11
                  c.srli      a0, 27
                  sub         gp, tp, t2
                  c.nop
                  c.addi      t6, 27
                  mul         sp, a5, s2
                  c.xor       a3, a1
                  c.li        sp, -1
                  nop
                  sub         zero, a6, s11
                  srai        s7, a5, 31
                  andi        s7, a5, -437
                  c.srai      a5, 22
                  c.srai      s1, 4
                  srl         a6, a7, a6
                  mul         t1, s5, t6
                  srl         gp, a6, a0
                  sra         t2, a7, a4
                  srai        ra, ra, 25
                  slt         t2, s8, tp
                  c.li        t4, 7
                  srli        zero, a5, 20
                  sra         zero, t0, a5
                  c.addi4spn  a2, sp, 640
                  mulhu       tp, t0, s6
                  sltu        t2, s1, t5
                  c.andi      a0, 4
                  mul         t4, s5, t4
                  c.addi      ra, 22
                  c.lui       s5, 12
                  c.mv        s6, s9
                  srli        t1, t4, 3
                  slti        t6, t3, -208
                  addi        ra, a1, 1011
                  c.addi4spn  a2, sp, 720
                  or          a5, a2, gp
                  c.srai      a3, 18
                  mulhsu      s8, a6, s6
                  c.slli      t3, 23
                  xor         s6, s0, s11
                  c.and       a2, a1
                  rem         ra, t3, t5
                  c.and       a3, a2
                  c.mv        tp, a2
                  sltiu       zero, ra, 878
                  rem         zero, s6, s6
                  mulhsu      tp, sp, a4
                  xor         t5, a7, gp
                  sltiu       a0, s2, -1066
                  srli        s8, sp, 27
                  slti        gp, s2, 1742
                  c.addi16sp  sp, -16
                  mulhu       t1, t3, s8
                  xor         s9, s3, t5
                  c.li        tp, -1
                  slli        zero, tp, 19
                  slli        s10, t2, 18
                  c.xor       a3, a3
                  slt         t2, a7, s5
                  slti        zero, a0, -1904
                  sra         gp, a6, t6
                  c.addi4spn  a5, sp, 240
                  xor         s10, a6, s11
                  sra         zero, a4, s1
                  addi        t5, t5, -1427
                  mul         t6, a2, s4
                  xor         t0, t3, a1
                  c.and       s1, a0
                  rem         zero, sp, a0
                  slt         s2, a6, s4
                  mul         s2, s6, s2
                  c.addi16sp  sp, -16
                  c.nop
                  or          t4, s11, a2
                  sub         t0, a5, a1
                  c.li        s3, -1
                  mulhu       t1, t5, a1
                  lui         s7, 549665
                  slt         s0, s6, t0
                  c.xor       a3, a0
                  sra         a4, t0, s8
                  c.add       ra, s1
                  srli        t1, s4, 23
                  c.andi      a2, -1
                  c.lui       s3, 16
                  srai        zero, a3, 20
                  c.sub       a2, s1
                  mulhsu      t2, t6, gp
                  c.addi16sp  sp, 368
                  c.and       s0, a1
                  srli        a5, s7, 3
                  lui         s10, 656675
                  c.addi16sp  sp, 48
                  or          zero, t2, a6
                  slti        s1, s2, -894
                  or          zero, s5, ra
                  addi        zero, a1, 220
                  slt         zero, s11, a4
                  mulhsu      s5, t3, a1
                  c.sub       s1, s0
                  c.andi      s1, -1
                  c.addi16sp  sp, 432
                  c.sub       s1, a1
                  slt         tp, t0, ra
                  sub         sp, s2, a6
                  andi        a5, ra, -899
                  c.lui       s6, 13
                  c.addi4spn  s1, sp, 736
                  sub         a2, t3, a3
                  c.li        tp, -1
                  ori         t0, sp, -1228
                  rem         a0, a3, t6
                  c.addi4spn  a2, sp, 720
                  mulh        s10, t2, t6
                  sub         a6, s4, ra
                  rem         sp, s10, s10
                  slti        zero, s1, 1596
                  c.or        s1, a3
                  ori         t0, a0, -1145
                  mulhsu      s1, a4, t0
                  mulhu       zero, a0, zero
                  c.slli      a2, 27
                  c.mv        a6, a0
                  addi        zero, ra, -944
                  c.li        t5, -1
                  c.mv        s10, sp
                  srl         t3, tp, t4
                  sll         zero, a1, t6
                  c.xor       s1, a2
                  c.srli      a3, 14
                  c.addi16sp  sp, 400
                  mulhsu      t1, t0, a7
                  c.nop
                  add         s1, a4, t6
                  slti        t6, gp, 1421
                  c.li        a2, -1
                  xor         t6, s2, gp
                  c.lui       s0, 2
                  sltiu       s1, ra, -1819
                  c.lui       a3, 2
                  xor         s8, sp, s1
                  mulh        s7, a2, ra
                  srl         t6, s7, a7
                  addi        t5, sp, 1044
                  divu        t3, s2, ra
                  c.nop
                  c.li        tp, -1
                  c.add       t1, t5
                  addi        a2, t3, -611
                  c.mv        ra, s8
                  xor         s4, a0, a7
                  sll         s6, a6, zero
                  slt         zero, s0, s3
                  xor         gp, a6, zero
                  addi        tp, s10, -1251
                  and         ra, gp, s9
                  c.lui       ra, 5
                  xori        t6, t0, 37
                  nop
                  slt         ra, a7, s11
                  and         s0, s6, a2
                  c.mv        ra, s6
                  div         s10, a3, a1
                  c.sub       s1, a3
                  nop
                  c.li        a4, 22
                  mulhu       t1, t3, s7
                  c.addi16sp  sp, 272
                  srl         a0, gp, s5
                  mulh        zero, t6, a3
                  div         t2, a7, t1
                  c.mv        gp, s3
                  c.srli      a0, 18
                  addi        sp, t2, 1305
                  c.add       s6, a4
                  ori         t6, a3, -193
                  c.addi16sp  sp, 160
                  mulhsu      a2, t5, t2
                  mulhsu      a5, a3, s5
                  sra         s3, t6, a4
                  or          s3, a4, ra
                  slt         t5, gp, ra
                  mulhu       zero, s9, a0
                  c.xor       a0, s1
                  c.sub       a0, a2
                  srai        zero, sp, 31
                  mulhsu      zero, a3, t2
                  sll         a0, gp, a3
                  c.xor       s1, a0
                  c.addi      t2, 16
                  slti        a2, a0, -2006
                  li         t6, 0x1 #start riscv_int_numeric_corner_stream_1
                  li         a4, 0x0
                  li         a0, 0x0
                  li         a3, 0x0
                  li         ra, 0x7ea432d
                  li         tp, 0x26b994ce
                  li         t3, 0x1
                  li         sp, 0x0
                  li         t5, 0x1fc6d340
                  li         gp, 0x199c9ba
                  c.nop
                  c.add       tp, sp
                  mulhu       s2, a3, a3
                  c.li        t0, 10
                  c.li        s6, 0
                  c.addi      s9, 11
                  div         t6, a2, a0
                  c.li        a3, 23
                  mulhsu      tp, a3, sp
                  addi        t3, t0, 212
                  nop
                  add         s0, a2, s2
                  mulhsu      s3, ra, s2
                  mul         gp, a6, t5
                  c.add       s8, s1
                  c.addi16sp  sp, -16
                  c.lui       s5, 31
                  divu        a2, s6, s3
                  sub         a5, s0, a6
                  rem         s5, t2, a7
                  lui         s8, 641809
                  lui         t6, 350665
                  c.add       ra, s0
                  andi        zero, t2, -432
                  mulhu       s5, a2, a2
                  rem         gp, t6, t3
                  rem         s8, s4, t6
                  divu        t4, s8, t1
                  slt         s0, a2, t3
                  nop
                  c.lui       a2, 27
                  sra         s3, sp, t3
                  c.li        t1, 2
                  sub         zero, a5, s7
                  lui         s5, 212924
                  rem         s10, t6, s9
                  auipc       a2, 680876
                  slli        zero, a4, 9
                  ori         s1, a2, 424
                  andi        zero, zero, 539
                  c.nop
                  and         zero, ra, a7
                  c.li        sp, 13
                  c.xor       a5, a1
                  c.addi4spn  a3, sp, 784
                  c.slli      s3, 10
                  or          s5, s1, t3
                  mulhu       tp, s5, ra
                  c.xor       s0, s1
                  sltu        a3, a3, ra
                  c.slli      s3, 30
                  sltu        zero, s6, s1
                  rem         tp, a2, s6
                  divu        a5, s1, s10
                  c.sub       s1, s1
                  c.addi4spn  a3, sp, 528
                  c.addi      s6, -1
                  c.srli      s1, 24
                  mulhsu      s0, a7, t2
                  srai        s1, a7, 31
                  c.li        s4, -1
                  c.srai      a0, 20
                  sltu        t0, a4, a4
                  addi        t1, s3, -1477
                  sll         ra, t2, s2
                  add         s5, a4, t3
                  ori         a0, tp, -968
                  c.slli      s4, 24
                  srli        ra, tp, 24
                  nop
                  c.addi16sp  sp, 400
                  slt         a0, s8, s8
                  xori        a3, a0, 701
                  auipc       zero, 839343
                  c.addi      s8, 3
                  mul         s0, a4, t2
                  srai        ra, a2, 15
                  sub         s1, ra, t5
                  nop
                  c.addi4spn  s1, sp, 992
                  xori        t1, s4, -57
                  addi        s10, a2, 1263
                  c.srli      a5, 23
                  c.andi      a0, -1
                  srai        t2, s2, 26
                  mul         t1, t1, s2
                  c.add       t1, s0
                  sltiu       t0, t3, 1596
                  c.andi      a0, -1
                  c.srli      a2, 16
                  auipc       ra, 796806
                  c.andi      s1, 6
                  divu        t5, ra, ra
                  or          a5, s6, a2
                  sltu        gp, a1, tp
                  slti        t5, s11, 1287
                  c.xor       s1, a2
                  c.add       s0, s9
                  divu        t4, t6, a0
                  xor         a5, a1, s5
                  rem         a6, s8, s7
                  c.lui       s9, 8
                  sll         t0, a7, a6
                  slti        s4, tp, 2010
                  mul         t3, s5, t1
                  xori        s2, a7, -93
                  sll         a5, s11, a7
                  nop
                  mulhsu      zero, a7, sp
                  c.addi16sp  sp, -16
                  divu        s2, s11, a7
                  xor         t5, s5, ra
                  and         s1, t3, t1
                  slt         s8, t0, s2
                  xori        t3, zero, -483
                  xor         a4, t3, s7
                  div         s0, t5, t1
                  mulhsu      a6, t6, t6
                  sltu        zero, a6, s8
                  mulh        s5, s1, a1
                  c.nop
                  c.sub       a3, a1
                  add         t4, s8, t1
                  c.lui       s3, 3
                  c.and       s1, a1
                  addi        s0, s2, -767
                  nop
                  andi        t5, s10, -1835
                  sltiu       s1, s9, -813
                  slti        gp, s9, -1790
                  mulhsu      s7, sp, s2
                  lui         s10, 957388
                  xor         s2, s7, a7
                  c.addi16sp  sp, -16
                  srl         t4, a7, t4
                  srl         ra, t6, gp
                  sll         tp, a5, s7
                  c.or        s1, a3
                  div         t1, s2, t4
                  c.mv        ra, s2
                  and         s1, t0, ra
                  srli        a0, a1, 13
                  xori        zero, t1, 652
                  c.li        a4, 13
                  c.or        a3, s0
                  div         a5, zero, t5
                  c.srli      a3, 31
                  c.addi16sp  sp, -16
                  addi        zero, s10, -1504
                  and         zero, s7, t0
                  mulh        s3, s8, t5
                  sltu        zero, s10, t0
                  sltu        t5, a5, s11
                  c.and       a0, a1
                  c.li        t4, 26
                  mul         t5, gp, a3
                  c.srli      a0, 11
                  xori        s7, a3, -96
                  c.slli      ra, 25
                  c.srli      a3, 9
                  c.addi16sp  sp, 112
                  c.xor       a0, a2
                  lui         s9, 767501
                  c.slli      ra, 27
                  c.nop
                  or          t5, s9, sp
                  c.add       t6, s4
                  mul         t5, sp, a5
                  srl         a6, t4, t5
                  div         s3, s1, t2
                  c.li        s0, 15
                  slti        a3, t5, -458
                  c.xor       a3, s1
                  c.nop
                  mul         zero, gp, t5
                  ori         t2, tp, -1204
                  c.xor       s1, a1
                  and         s9, t4, a0
                  srli        a4, t0, 8
                  slti        a3, s6, -1233
                  c.srai      a5, 26
                  c.sub       a3, a3
                  c.addi      s7, -1
                  c.add       a6, a4
                  c.xor       s1, a3
                  mulh        s2, a7, a0
                  xori        t5, s11, -76
                  sltiu       a5, t5, 989
                  slt         t2, s0, a7
                  sltu        sp, t6, t1
                  c.li        ra, -1
                  add         s10, a2, s5
                  c.add       a6, t4
                  c.nop
                  c.sub       s1, a0
                  mulh        t2, s5, t4
                  sltu        a5, s4, t5
                  c.addi4spn  a0, sp, 640
                  c.add       s1, s11
                  ori         zero, t6, 1308
                  c.addi4spn  a4, sp, 112
                  mulhu       s2, a2, s1
                  and         s6, s9, s4
                  c.srli      a0, 21
                  sra         s5, s0, t5
                  c.add       s1, tp
                  slti        s10, a4, -835
                  nop
                  c.andi      a2, 26
                  c.nop
                  c.srli      a3, 25
                  div         a5, gp, t1
                  and         a4, zero, a1
                  c.add       sp, t5
                  c.and       a3, a0
                  sub         gp, s3, s10
                  mul         a0, sp, s4
                  sltiu       s2, t0, 1624
                  sll         a0, s5, s3
                  c.li        t2, 12
                  c.sub       a5, s1
                  c.addi16sp  sp, -16
                  ori         a2, zero, -79
                  c.addi      t5, 13
                  sltiu       t1, s0, 1558
                  xori        a5, t2, -1202
                  rem         t1, t4, t0
                  xor         gp, s6, s5
                  xori        ra, a7, 1544
                  nop
                  sltiu       a6, t6, 511
                  srli        gp, t3, 5
                  nop
                  c.add       s0, ra
                  mulhsu      a5, t5, s3
                  mulh        s2, t6, a1
                  c.sub       s1, a1
                  slli        a3, t4, 24
                  c.sub       a3, a1
                  mulhsu      ra, a3, a0
                  c.srli      a0, 18
                  mulh        a5, s4, zero
                  slt         tp, a7, a5
                  c.addi16sp  sp, 32
                  c.srli      a2, 17
                  c.add       a0, gp
                  c.and       s1, a0
                  c.mv        s0, a1
                  c.or        a3, a1
                  div         zero, s4, a7
                  c.lui       s0, 2
                  c.andi      a0, 25
                  slt         s2, s4, t5
                  c.lui       s2, 18
                  slt         s4, t0, t1
                  divu        s6, a5, s7
                  c.srai      s1, 8
                  slli        s3, s1, 12
                  xori        s8, s6, 121
                  sll         t0, s4, t1
                  or          t0, ra, s9
                  add         t4, a4, a2
                  rem         t0, s8, s11
                  slt         a2, t6, s6
                  addi        zero, s11, -494
                  auipc       s8, 923599
                  mulhu       ra, a4, s2
                  c.mv        sp, ra
                  auipc       ra, 456336
                  c.sub       a3, a1
                  c.sub       s1, a0
                  sub         a4, tp, a3
                  srai        s8, sp, 26
                  addi        t0, s0, 876
                  xor         a4, t6, ra
                  mulhsu      s1, a0, a1
                  xori        a6, t2, 424
                  c.li        s2, 10
                  c.add       s2, ra
                  sltiu       s5, t0, -339
                  mulhsu      s5, ra, t0
                  slli        t4, s9, 15
                  xor         a0, gp, s8
                  mulh        s2, s6, a6
                  div         t3, a7, a3
                  andi        zero, a6, 1971
                  div         a5, a3, a2
                  slli        zero, s9, 16
                  mulh        tp, t5, t5
                  srai        a3, a3, 29
                  srli        s4, a3, 16
                  sra         s10, s6, a2
                  div         gp, s5, s3
                  xori        s7, a3, 929
                  rem         a3, t2, t1
                  sltu        zero, a3, a5
                  mulhu       s3, s9, s3
                  div         t0, a2, s7
                  slli        zero, a3, 18
                  add         s8, s4, s1
                  or          zero, a4, t4
                  sub         zero, s5, s6
                  lui         s10, 345364
                  mulh        s4, s10, gp
                  c.li        ra, 9
                  sltu        t4, s6, t2
                  c.srli      s1, 20
                  c.and       a3, a2
                  andi        zero, a6, 446
                  divu        t4, s10, s8
                  c.slli      s5, 14
                  andi        a5, t6, -797
                  c.addi      s4, -1
                  sub         s3, s2, a5
                  or          s2, a2, t0
                  sltiu       a0, s10, 502
                  srai        a0, a3, 7
                  xor         ra, a0, a4
                  slli        s5, t0, 5
                  mulh        zero, a0, a3
                  sltiu       s5, a7, 420
                  divu        s8, s9, t2
                  divu        s2, a6, s5
                  c.slli      a2, 3
                  srli        zero, t2, 5
                  mulhu       s2, ra, a3
                  or          a4, s0, t6
                  sll         tp, s1, s4
                  xor         t2, s11, s8
                  rem         a5, s6, a6
                  slti        zero, s9, -1844
                  sra         s5, t1, gp
                  slti        s3, a1, -1061
                  xor         a2, t6, t0
                  c.lui       s8, 6
                  lui         zero, 69754
                  c.lui       ra, 19
                  lui         gp, 374836
                  slt         t0, t4, t3
                  xor         tp, ra, s1
                  lui         zero, 210999
                  divu        a6, a2, s5
                  c.srli      s1, 11
                  c.addi4spn  s0, sp, 528
                  slt         s9, a1, t3
                  srai        t4, s10, 19
                  c.addi      s10, 1
                  c.nop
                  divu        s5, t5, s8
                  sub         s3, sp, t3
                  and         t5, a6, tp
                  div         a2, s6, ra
                  c.and       a0, a3
                  srl         a6, a2, zero
                  srl         ra, s4, t0
                  addi        s6, s8, 1658
                  xori        s4, s10, 1073
                  andi        s0, tp, 1516
                  sltiu       a3, zero, 363
                  c.li        ra, -1
                  c.sub       s0, a2
                  div         s7, a5, a7
                  andi        zero, t4, 2015
                  mulhu       zero, a5, t2
                  lui         a5, 885801
                  srai        s9, zero, 2
                  add         a5, tp, sp
                  sra         s1, a4, a0
                  div         s7, s4, a4
                  mulhu       s7, s4, t0
                  c.and       a5, a3
                  slli        tp, zero, 1
                  c.li        s9, 18
                  srli        a4, s3, 0
                  mulh        s8, sp, sp
                  c.and       s1, a5
                  lui         zero, 751201
                  c.andi      a0, -1
                  c.srai      s1, 11
                  sub         s0, zero, t0
                  lui         t1, 646686
                  srli        t4, t5, 30
                  c.srli      a3, 12
                  c.mv        a5, s0
                  add         gp, t0, gp
                  c.and       a2, a1
                  c.srli      a3, 23
                  c.slli      s9, 1
                  divu        t5, s1, tp
                  srli        t0, s7, 19
                  c.addi      t3, -1
                  sub         tp, s3, s3
                  andi        s9, s11, 91
                  c.and       s1, a0
                  c.add       tp, s2
                  xor         t5, s7, s5
                  ori         s4, s7, 298
                  sltiu       s1, s6, 481
                  add         a2, a2, a2
                  mulhsu      s1, a3, t1
                  or          sp, a0, t4
                  or          zero, s7, s5
                  sub         t1, t5, a4
                  slli        a4, a6, 5
                  ori         zero, s3, 1133
                  c.addi16sp  sp, 272
                  lui         a6, 773695
                  or          zero, s1, s5
                  srai        gp, s8, 25
                  slli        t3, s11, 6
                  and         s8, s3, a5
                  addi        a5, s4, -1507
                  mul         a5, t1, t3
                  c.xor       s1, a0
                  mulhsu      t3, s10, s11
                  mulhu       s8, a5, t3
                  div         s1, ra, t4
                  divu        t2, s4, t0
                  c.addi16sp  sp, 48
                  and         s4, a2, s4
                  slti        s9, t5, 1321
                  c.nop
                  mulhsu      t2, t5, a6
                  c.srli      a2, 23
                  and         s0, a1, a3
                  c.xor       s1, s1
                  add         t0, a4, a6
                  c.mv        a5, a6
                  div         a3, s10, s3
                  mulhsu      s10, s5, s3
                  xor         t1, a4, s2
                  divu        t4, s5, gp
                  nop
                  mulh        sp, s3, s7
                  c.or        s0, a1
                  xori        a2, a0, 519
                  add         t6, t1, s0
                  c.mv        gp, sp
                  sub         a4, a2, ra
                  c.add       s9, s6
                  addi        s1, s8, 1068
                  lui         zero, 62738
                  srai        t6, zero, 14
                  c.xor       a0, a3
                  srai        ra, s9, 15
                  mulh        s5, a7, s5
                  lui         a0, 357372
                  c.addi16sp  sp, -16
                  xori        s3, t5, 1207
                  sll         a2, a0, s0
                  and         a3, a3, s11
                  sltu        a3, t2, s3
                  slti        a3, t4, -997
                  sltiu       s3, t6, 805
                  add         s6, sp, a5
                  xori        sp, ra, -280
                  c.mv        t3, a2
                  c.mv        ra, t0
                  mulhsu      s4, s0, s3
                  slt         tp, zero, a7
                  c.addi16sp  sp, 352
                  slt         s1, sp, s11
                  auipc       t2, 266625
                  srai        s0, s6, 6
                  addi        s6, s11, 1410
                  srli        gp, a5, 14
                  c.addi16sp  sp, -16
                  srli        s1, a1, 26
                  addi        a6, t5, -249
                  c.andi      s1, 29
                  c.andi      a5, 14
                  c.addi      s0, -1
                  c.mv        a6, s7
                  c.addi4spn  s1, sp, 928
                  slt         t0, a4, a0
                  srl         s0, t2, t1
                  c.and       s1, a3
                  c.lui       s0, 30
                  c.add       t4, s6
                  c.and       a2, s0
                  c.xor       s1, s1
                  sra         s4, t5, t4
                  c.or        a2, a0
                  ori         s6, t6, 257
                  c.lui       a3, 10
                  auipc       zero, 375006
                  ori         s1, t3, -179
                  c.xor       a3, a3
                  c.li        s5, -1
                  c.addi      a2, -1
                  or          s10, t0, s0
                  srl         s4, a3, s4
                  c.nop
                  c.addi      s4, 23
                  or          s8, ra, a3
                  mulh        zero, s7, s6
                  c.xor       a3, a3
                  slt         t5, t0, t3
                  auipc       zero, 446519
                  nop
                  sra         s8, a2, zero
                  c.nop
                  c.xor       s1, a0
                  c.sub       s1, a0
                  srai        a0, t3, 9
                  c.add       ra, ra
                  sub         s2, a1, a6
                  andi        a5, s4, -650
                  mulhu       s7, t5, a3
                  c.nop
                  mul         tp, s6, t0
                  sltu        s7, s11, s0
                  ori         sp, a1, 120
                  mulhu       s10, s9, s0
                  c.addi      t1, 1
                  auipc       s10, 359756
                  c.xor       s1, s1
                  c.xor       a3, s1
                  c.nop
                  srli        a0, t5, 2
                  andi        tp, t4, 1882
                  rem         a2, t2, a2
                  c.sub       a5, a3
                  slt         a3, zero, s0
                  mulhsu      s7, s10, t2
                  lui         zero, 673525
                  sra         zero, t0, s0
                  c.addi16sp  sp, -16
                  sltu        t2, s2, t2
                  div         s7, s0, sp
                  c.and       a3, a0
                  sra         s1, a2, s3
                  c.or        a0, a0
                  c.addi4spn  s0, sp, 688
                  c.andi      s1, 15
                  mulh        t1, a1, a2
                  addi        a6, sp, 285
                  c.addi16sp  sp, -16
                  c.mv        a2, a7
                  divu        t0, s5, gp
                  mulhsu      t2, s4, a6
                  c.xor       s1, a1
                  add         zero, t0, t6
                  c.add       s10, s4
                  c.and       a5, a1
                  mulhsu      t0, a3, t1
                  mul         s3, s1, s3
                  c.addi16sp  sp, -16
                  slli        zero, t0, 14
                  c.slli      a0, 28
                  c.addi4spn  a3, sp, 352
                  sra         gp, t6, s11
                  divu        s4, a2, s3
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_13
                  li         t5, 0x79ffb718
                  li         s7, 0x762d599a
                  li         t4, 0x0
                  li         ra, 0x0
                  li         a2, 0x0
                  li         a3, 0x1
                  li         t3, 0x0
                  li         a5, 0x8e4629b
                  li         a4, 0x0
                  c.li        s9, -1
                  lui         s3, 186346
                  rem         t0, a7, a2
                  lui         a0, 864237
                  divu        s10, s9, gp
                  c.li        tp, 18
                  c.addi4spn  s1, sp, 208
                  mul         t1, t3, t5
                  c.addi4spn  a3, sp, 496
                  c.addi4spn  s1, sp, 288
                  c.lui       s3, 1
                  divu        s2, s11, s5
                  mulhsu      zero, sp, t0
                  mul         a3, s5, tp
                  nop
                  divu        zero, t4, tp
                  mulh        zero, s10, s4
                  auipc       tp, 492201
                  mul         t6, a4, s1
                  c.addi4spn  s1, sp, 624
                  c.addi      s2, -1
                  add         t6, t0, tp
                  c.addi4spn  s1, sp, 928
                  nop
                  add         a3, gp, t5
                  mul         zero, t1, s2 #end riscv_int_numeric_corner_stream_13
                  sltu        s0, a7, s2
                  c.lui       ra, 14
                  addi        t0, t5, -353
                  sltiu       zero, s2, 1924
                  c.sub       s1, a0
                  nop
                  addi        s3, a3, -207
                  c.and       s1, s1
                  auipc       gp, 577851
                  mulh        s2, a5, ra
                  c.andi      a0, -1
                  div         a2, a0, a0
                  sra         t6, ra, t0
                  c.srai      a0, 1
                  c.add       t2, s10
                  sra         s8, t2, s0
                  mulhsu      zero, a4, a1
                  c.xor       a3, a1
                  slli        t1, s8, 20
                  lui         zero, 413132
                  c.addi      s10, -1
                  srl         t6, a3, s7
                  c.xor       a2, a3
                  c.or        a2, s1
                  addi        t5, a5, -1109
                  or          sp, t1, zero
                  sub         a3, a7, s9
                  c.srli      s1, 16
                  c.and       s1, a5
                  sll         s2, sp, a1
                  sltiu       s10, s5, -1892
                  andi        s5, t5, -1129
                  div         ra, s11, ra
                  rem         sp, s9, s5
                  andi        ra, gp, 787
                  xori        s3, zero, -1578
                  sltu        s8, s2, a3
                  slli        ra, a5, 5
                  srai        zero, tp, 0
                  xor         s3, t5, s5
                  mulhu       a5, s6, s7
                  rem         t4, a1, s2
                  c.li        t1, -1
                  ori         a4, ra, 548
                  slt         a3, ra, s6
                  c.srli      a3, 22
                  auipc       s4, 711790
                  andi        a6, t5, -470
                  sll         s2, t0, a6
                  nop
                  c.mv        s1, a7
                  sra         t5, s9, t1
                  sll         t6, a4, s9
                  c.slli      t3, 13
                  srai        t3, t5, 10
                  lui         t1, 333068
                  slti        gp, sp, -1693
                  xor         s1, a3, s3
                  sltiu       t6, a6, -1422
                  sltiu       s6, s8, -1497
                  sra         a0, tp, t3
                  c.li        s4, 1
                  divu        s10, a1, t2
                  c.mv        ra, a7
                  auipc       t0, 697995
                  auipc       a4, 397401
                  rem         s9, s5, t2
                  slt         s1, tp, a1
                  mul         s3, a3, s11
                  sltu        zero, tp, t3
                  c.li        a4, -1
                  mul         s0, s7, ra
                  or          gp, gp, t0
                  c.andi      s1, -1
                  auipc       t1, 52791
                  sll         zero, t4, a6
                  addi        t6, a1, -1398
                  or          zero, s2, a0
                  mul         a0, a6, t5
                  c.xor       a2, a3
                  c.xor       a2, a2
                  xor         s9, a1, a5
                  xor         t2, t1, t3
                  sltiu       a3, t4, -820
                  slt         ra, a7, s8
                  xori        s9, ra, 909
                  auipc       a3, 318639
                  add         s6, a3, a5
                  c.andi      s1, -1
                  or          s9, a0, a6
                  c.or        s1, a3
                  c.nop
                  add         zero, a0, s4
                  c.mv        sp, t1
                  sll         t0, a2, a1
                  slli        zero, a5, 25
                  sltiu       t5, a6, 1681
                  sll         gp, s2, s10
                  divu        sp, s4, t5
                  and         s4, a0, s7
                  c.add       sp, s11
                  mulhsu      s5, s5, s10
                  srli        s4, s2, 7
                  slt         t4, a2, a5
                  c.mv        a5, t2
                  lui         s5, 908541
                  nop
                  c.addi4spn  a0, sp, 816
                  c.mv        s0, s8
                  sltu        s6, a6, s8
                  c.xor       s0, a0
                  sltu        s5, s7, a4
                  c.srli      s0, 20
                  c.xor       a2, a2
                  mul         a5, a2, sp
                  srl         zero, a5, a5
                  c.nop
                  addi        s5, a0, 1844
                  addi        a4, sp, -1207
                  mulhu       tp, a7, a5
                  andi        s1, t6, 1391
                  c.addi4spn  s1, sp, 208
                  mulhu       a3, a7, s2
                  srli        a5, s2, 16
                  c.add       t1, s4
                  li         t6, 0x22b2f694 #start riscv_int_numeric_corner_stream_12
                  li         a4, 0x0
                  li         s1, 0x0
                  li         a2, 0x211d076c
                  li         s4, 0x0
                  li         a3, 0x0
                  li         t1, 0x0
                  li         t2, 0x0
                  li         t5, 0x0
                  li         s6, 0x679f61ad
                  lui         t1, 953275
                  mulh        a3, s9, s9
                  add         s6, tp, a5
                  c.addi4spn  s1, sp, 752
                  div         zero, t3, t3
                  mul         t2, a2, s11
                  divu        a3, s9, t4
                  nop
                  c.lui       t2, 10
                  mulhsu      a3, s8, t5
                  lui         s1, 174602
                  add         a2, ra, s2
                  add         t3, a2, t6
                  c.lui       ra, 10
                  addi        a3, a1, 1361
                  mul         s2, s8, s8
                  mulhu       zero, t0, s10
                  c.add       t1, s10
                  rem         t3, t1, zero
                  c.nop
                  c.sub       s1, a3
                  c.sub       a3, a0
                  c.nop
                  c.addi16sp  sp, 496
                  c.addi      s7, 25
                  c.nop
                  add         a5, t6, a2
                  mulh        t2, s10, a5
                  mul         gp, a3, s5
                  div         s8, sp, gp #end riscv_int_numeric_corner_stream_12
                  sltu        ra, a4, a7
                  and         s4, s6, s7
                  c.addi4spn  s1, sp, 128
                  slt         s5, s7, ra
                  mul         s3, a2, a1
                  div         a2, a0, gp
                  c.slli      a6, 24
                  srai        s7, a0, 15
                  mulh        a3, t6, s0
                  srl         s6, a4, t2
                  divu        a4, t2, a6
                  sub         a5, ra, a0
                  c.andi      a4, 14
                  c.andi      a0, 6
                  c.andi      a0, -1
                  auipc       zero, 962812
                  slti        s3, ra, -1310
                  c.li        t3, 12
                  c.and       a0, a4
                  c.and       a0, a1
                  c.slli      a6, 21
                  xor         zero, zero, a2
                  c.lui       gp, 29
                  c.andi      a3, -1
                  c.xor       a3, a1
                  mulh        t2, tp, s11
                  mulh        t1, s0, a5
                  sub         s1, sp, ra
                  srai        t2, s8, 2
                  c.or        a0, a3
                  sub         t5, t5, t0
                  sra         ra, t1, t4
                  c.slli      a2, 18
                  divu        gp, s9, t0
                  xor         s6, zero, s9
                  srai        s4, a3, 21
                  srai        zero, s3, 12
                  c.or        s1, s1
                  c.srli      s1, 27
                  srl         a4, s3, zero
                  lui         t0, 772019
                  mul         t1, t1, s5
                  srli        ra, s5, 0
                  srl         zero, ra, s6
                  c.srai      s1, 9
                  slt         a4, s5, zero
                  mulhsu      a6, s5, ra
                  c.lui       a4, 26
                  xor         s1, zero, t2
                  mulhu       t1, a7, t3
                  c.mv        t6, a2
                  andi        ra, s5, 1595
                  c.andi      a0, 30
                  c.srai      a3, 23
                  addi        s3, s10, 181
                  div         t2, ra, t0
                  c.or        s1, a3
                  addi        a4, t3, -449
                  c.lui       ra, 3
                  slli        a2, t1, 8
                  c.nop
                  sub         zero, a4, zero
                  ori         a3, a6, 1998
                  mulhu       t2, tp, a1
                  c.andi      s1, 5
                  mulh        zero, tp, t0
                  mul         sp, s1, a5
                  mulhsu      a0, gp, gp
                  c.addi      s0, -1
                  divu        s5, t3, t2
                  rem         t1, a1, s7
                  c.nop
                  c.li        gp, -1
                  c.nop
                  slli        a0, tp, 27
                  slli        t5, s6, 16
                  c.xor       a0, a3
                  and         zero, s2, s9
                  sll         s5, s9, ra
                  divu        t5, t0, s8
                  lui         s8, 1038854
                  c.slli      gp, 15
                  and         s8, t3, s8
                  nop
                  c.andi      s1, -1
                  xori        s1, t0, -1234
                  lui         zero, 767610
                  c.slli      ra, 13
                  c.li        s3, -1
                  rem         gp, t3, s9
                  c.lui       t2, 22
                  c.add       gp, a6
                  c.addi16sp  sp, 416
                  mul         s8, tp, s6
                  c.lui       s0, 13
                  c.andi      a2, -1
                  c.li        tp, -1
                  xor         s5, s7, zero
                  xor         s0, t5, s10
                  ori         a4, s3, 107
                  c.sub       s1, a0
                  c.sub       s1, a0
                  sltu        t5, t6, s11
                  sll         s2, a0, t2
                  c.li        a4, 0
                  srl         s0, s0, s1
                  sltiu       t3, a2, -460
                  c.srli      a3, 19
                  sltu        a0, s1, tp
                  div         a6, t4, ra
                  addi        s9, s5, -312
                  mulhsu      s10, a0, a4
                  addi        s8, s6, -1378
                  sub         a2, t1, s9
                  auipc       a6, 690170
                  slti        s5, s0, 225
                  slt         a3, s4, a2
                  divu        t3, gp, s11
                  lui         t6, 288543
                  srl         t1, a2, s4
                  slt         s0, tp, ra
                  slli        s7, zero, 20
                  c.mv        a6, sp
                  c.sub       a3, a1
                  c.srli      a3, 21
                  mul         zero, s0, t1
                  slti        s4, s3, 523
                  slt         t1, s10, t0
                  sll         t5, tp, s8
                  div         a5, s9, t3
                  rem         s0, a6, tp
                  slti        ra, t1, 872
                  sltu        s6, a7, a0
                  addi        zero, a4, 1931
                  mulhu       s6, tp, a5
                  c.srli      a5, 28
                  auipc       ra, 1009726
                  c.slli      a4, 24
                  c.add       t5, t1
                  divu        s7, t1, a3
                  nop
                  mulhsu      s3, s9, sp
                  c.and       s1, a3
                  c.mv        a6, t1
                  xori        t5, ra, -1886
                  sltu        s2, t3, tp
                  c.xor       s1, a0
                  c.li        t5, 10
                  mulh        s10, s1, s9
                  sltu        ra, a0, t6
                  xor         s0, t4, s6
                  c.xor       a0, a2
                  c.and       s1, s0
                  xori        s0, sp, 839
                  c.mv        s10, a7
                  srli        s4, s1, 15
                  rem         t0, t5, tp
                  slli        a5, a6, 24
                  sra         s7, a3, a3
                  sltu        t4, s3, t2
                  rem         zero, a1, a0
                  nop
                  c.or        s0, a3
                  mul         sp, s1, s10
                  sra         tp, a0, t6
                  slti        a0, s0, 1627
                  srl         zero, a4, s5
                  mulhu       s8, tp, a7
                  c.mv        ra, s4
                  xor         s8, t6, s1
                  c.sub       a3, a2
                  xori        sp, a2, 1619
                  sltiu       t4, a7, -268
                  slti        s0, a2, 1252
                  andi        tp, a0, -1282
                  sra         zero, t4, tp
                  c.addi4spn  s1, sp, 656
                  slti        a2, s4, 677
                  c.lui       ra, 27
                  c.slli      s2, 6
                  srai        s8, s9, 14
                  c.lui       a6, 16
                  add         zero, s5, s8
                  srl         a4, s8, sp
                  ori         t4, s5, 27
                  c.nop
                  divu        zero, s0, s9
                  c.andi      a3, -1
                  c.xor       a0, a1
                  rem         sp, a2, a1
                  divu        a3, s7, s6
                  mulhu       tp, s5, s8
                  slti        t0, t1, 1169
                  slti        a4, s4, -935
                  lui         s4, 86763
                  slli        s4, a4, 15
                  c.slli      a2, 20
                  sra         a3, a4, a6
                  c.addi      ra, -1
                  divu        t1, sp, s0
                  srl         s8, s2, s5
                  add         s3, t1, sp
                  ori         zero, gp, 519
                  sub         zero, s11, s1
                  c.addi4spn  a0, sp, 64
                  srli        t4, t6, 5
                  divu        gp, s1, ra
                  nop
                  c.nop
                  andi        s3, t2, -464
                  slli        s9, a1, 15
                  c.li        a2, 30
                  ori         t6, s10, 1048
                  srai        zero, s11, 15
                  xori        t0, a0, -578
                  mul         a6, tp, t1
                  add         a6, t6, a1
                  or          a6, s7, a6
                  and         s10, a0, s9
                  c.srai      a5, 18
                  add         tp, t6, a3
                  rem         zero, s11, s0
                  c.xor       s1, a1
                  addi        a5, s10, 1908
                  srai        s1, tp, 11
                  sltu        s10, t1, t4
                  srli        s0, s1, 8
                  slli        s4, s5, 29
                  slti        t5, zero, 156
                  slli        t4, t3, 1
                  sltiu       zero, t3, -610
                  c.slli      ra, 20
                  mulhu       s4, s9, s11
                  xor         s3, t1, a6
                  andi        a2, zero, 1047
                  ori         t5, s10, -455
                  c.addi4spn  s1, sp, 528
                  slli        s7, t6, 8
                  c.sub       a3, a3
                  c.andi      s1, 11
                  auipc       t1, 972637
                  srai        a6, s8, 23
                  c.addi16sp  sp, 224
                  sra         a6, tp, s7
                  slt         tp, s0, a7
                  mulh        t2, gp, a0
                  c.or        a0, a2
                  slli        a0, t4, 25
                  c.addi16sp  sp, 416
                  addi        t0, a2, -1805
                  srai        tp, t0, 17
                  sltu        s6, a0, t5
                  c.addi      s9, -1
                  c.slli      tp, 14
                  andi        t2, a7, 874
                  c.slli      ra, 17
                  c.srai      a5, 23
                  c.li        s7, 16
                  srli        t2, t1, 19
                  andi        t1, a5, -1127
                  c.andi      s1, -1
                  div         sp, s2, s2
                  lui         s1, 243127
                  sll         ra, s7, t5
                  or          s0, a4, t1
                  c.add       t0, t2
                  and         a4, a3, s2
                  c.andi      s1, -1
                  c.xor       a5, s1
                  or          t2, t5, t2
                  lui         a3, 187378
                  divu        t2, s8, s4
                  mulhu       s7, s9, s3
                  c.mv        a3, t0
                  sltiu       s4, ra, 204
                  or          a4, a3, t5
                  andi        zero, s3, -1891
                  sra         t4, a7, t0
                  mulhsu      s5, s8, a5
                  mulhsu      t5, a3, s1
                  nop
                  add         zero, s9, zero
                  auipc       s3, 288282
                  div         s10, t6, s5
                  sltiu       s0, t3, 350
                  c.mv        s2, s3
                  c.nop
                  mulhu       a2, s8, t4
                  c.add       ra, s3
                  or          gp, s10, s2
                  lui         a5, 902287
                  c.add       ra, t6
                  xori        zero, s9, -1509
                  c.srli      s1, 25
                  srl         s3, s5, a1
                  sra         s10, s1, zero
                  mulh        s10, t1, t2
                  or          a6, s2, t6
                  ori         s1, t6, 652
                  lui         a4, 483474
                  c.mv        s5, ra
                  div         s9, a5, a6
                  sll         s3, a3, t3
                  andi        t3, s5, 278
                  lui         s0, 828474
                  c.andi      a0, -1
                  c.lui       a3, 27
                  sltu        s9, t6, s7
                  c.lui       s0, 15
                  rem         a6, a3, s5
                  andi        s9, t6, -51
                  ori         a3, a2, -1812
                  sll         s5, s4, s0
                  mulh        s4, t2, a1
                  sltiu       a0, s11, 932
                  mul         t0, ra, gp
                  or          t2, s3, s6
                  c.srai      a5, 24
                  c.sub       s1, a2
                  mulhsu      t3, a6, s8
                  c.lui       a6, 17
                  slt         a4, s2, s10
                  addi        s0, a5, -1717
                  div         a6, s2, a2
                  c.add       ra, t0
                  slt         zero, s4, a2
                  c.add       t5, a7
                  c.srai      s1, 25
                  c.or        a3, s0
                  c.slli      a3, 7
                  slt         s2, sp, sp
                  divu        tp, s4, t3
                  c.xor       a0, s1
                  rem         s10, s1, s6
                  divu        tp, a3, s11
                  div         s1, s11, t6
                  mulhsu      zero, zero, a3
                  sltiu       a6, s11, -825
                  ori         s0, ra, -1978
                  c.srli      s1, 23
                  mul         a0, a1, s7
                  mulh        a5, s2, s8
                  sub         t1, s10, s0
                  xor         gp, a1, a2
                  c.addi      s6, 7
                  addi        t6, t6, -1150
                  c.nop
                  add         ra, t3, t1
                  xor         s1, a3, s1
                  ori         a4, gp, -453
                  c.lui       s4, 9
                  c.sub       s0, a2
                  c.nop
                  addi        s8, sp, -1790
                  add         a3, sp, zero
                  andi        t2, s1, 1768
                  c.srli      a0, 8
                  and         zero, a6, s3
                  slli        zero, s6, 10
                  addi        s6, t5, -968
                  mulhsu      s10, a7, a2
                  srli        a4, t3, 20
                  rem         s3, t5, s5
                  mul         s10, s3, a0
                  c.and       s1, a1
                  c.xor       a5, s0
                  or          s7, s8, s10
                  c.mv        s6, t4
                  c.or        s1, a0
                  add         s9, s8, t1
                  srli        a0, a6, 9
                  c.xor       a3, a0
                  rem         zero, a0, a5
                  c.addi      t0, 14
                  add         t6, sp, a6
                  nop
                  sltu        zero, s4, a0
                  c.addi4spn  a3, sp, 608
                  c.or        s1, a2
                  srl         t4, tp, zero
                  addi        s10, t6, 1835
                  srli        s4, s10, 7
                  srai        a6, s3, 0
                  nop
                  sltiu       t4, a7, -140
                  c.slli      ra, 23
                  sra         s8, t4, a3
                  mul         t1, s0, a2
                  mulhu       a6, gp, a2
                  or          t3, t0, a4
                  c.addi4spn  s1, sp, 688
                  c.xor       a4, a0
                  srli        s7, t4, 7
                  c.mv        s7, t5
                  c.andi      s0, -1
                  mulhsu      sp, s0, t1
                  mulhu       s5, t2, gp
                  sltiu       a2, gp, 1414
                  c.li        tp, -1
                  slti        a0, t1, -1332
                  xor         sp, a5, tp
                  addi        zero, t3, 169
                  srl         s5, t4, a6
                  c.xor       s1, a0
                  c.and       s1, s0
                  xori        t3, t4, 1112
                  xor         t6, s0, s0
                  sll         ra, t4, a6
                  c.andi      a0, 4
                  srl         zero, t0, s3
                  sra         s3, t3, t2
                  lui         t2, 555979
                  c.add       s3, s8
                  div         t5, s5, t2
                  c.andi      a5, 16
                  addi        t0, t2, -393
                  andi        s2, t6, 1504
                  xori        s3, s9, -1327
                  c.li        t4, 18
                  sltu        s0, t0, sp
                  rem         t1, tp, s8
                  xor         s8, a5, a6
                  sltiu       t1, tp, 448
                  c.sub       s0, a2
                  c.slli      gp, 27
                  c.li        a3, -1
                  sra         sp, zero, a5
                  sub         s1, s8, a0
                  c.sub       a0, a0
                  mulhu       s3, s10, t3
                  sltu        a6, sp, s11
                  c.slli      sp, 4
                  sub         t2, t6, s4
                  ori         t3, ra, 1802
                  slti        zero, s4, -1548
                  c.andi      a4, 5
                  c.addi16sp  sp, -16
                  addi        zero, s9, -1214
                  addi        s0, gp, 826
                  c.srli      s1, 4
                  c.mv        t4, t3
                  sra         t3, s5, a4
                  srli        t0, s4, 16
                  addi        s9, a7, -1023
                  or          t3, a3, a4
                  c.and       a3, a1
                  sll         a2, t4, t0
                  ori         a5, t1, 522
                  addi        sp, a3, 468
                  ori         t0, a4, -605
                  mulh        a4, s6, s11
                  auipc       s6, 889613
                  c.lui       t3, 30
                  slti        t1, s7, 1060
                  slli        s1, a5, 16
                  andi        zero, a7, 1609
                  sll         a2, s6, s11
                  andi        a0, a1, 64
                  slti        a5, t3, 1943
                  slt         zero, tp, tp
                  sltu        ra, s11, t5
                  c.add       s7, a3
                  srli        s4, s8, 19
                  c.addi      t1, 9
                  slti        s0, t4, 64
                  c.addi16sp  sp, 192
                  andi        a2, zero, 1433
                  c.sub       s1, a2
                  sltiu       s10, t5, -1747
                  and         s4, t1, tp
                  div         s9, ra, tp
                  c.srai      a0, 13
                  mulhu       sp, s8, a4
                  rem         a0, s4, a7
                  xori        t3, s2, -1675
                  c.addi4spn  s1, sp, 368
                  slli        t6, a7, 13
                  srl         t1, s7, a7
                  nop
                  nop
                  sra         s5, a4, a4
                  c.addi      t3, 30
                  srli        zero, zero, 20
                  mulhsu      a0, t2, t0
                  c.nop
                  c.and       s1, a0
                  slli        a6, s3, 18
                  c.mv        tp, t0
                  mul         a0, a3, t5
                  or          a3, a2, s4
                  c.li        s4, -1
                  sra         tp, tp, s3
                  sltu        s4, t3, gp
                  andi        s10, t3, -323
                  xor         a4, s8, t6
                  addi        s6, t5, 833
                  sltu        s4, a7, s7
                  xor         s10, a2, zero
                  divu        zero, zero, t1
                  c.nop
                  c.or        a3, a1
                  auipc       s4, 858433
                  xor         s6, s2, s3
                  c.andi      a3, -1
                  c.addi16sp  sp, 144
                  c.add       a4, tp
                  or          gp, s1, t1
                  mulhsu      ra, t0, t1
                  c.nop
                  xor         s2, a2, a6
                  c.srai      a4, 24
                  lui         a0, 367689
                  sll         t1, t0, a2
                  slti        zero, t0, 1128
                  divu        a5, ra, s3
                  slti        a2, a2, -1747
                  c.add       tp, a3
                  slt         t5, zero, t1
                  add         s2, s10, s6
                  c.sub       a2, a0
                  c.addi16sp  sp, 400
                  xor         t1, s7, s3
                  c.andi      s1, -1
                  c.sub       a0, a1
                  c.sub       a0, a3
                  c.addi4spn  a0, sp, 384
                  mulh        t4, s2, s6
                  rem         s5, t3, s10
                  divu        t1, t5, t2
                  c.mv        t2, a6
                  divu        ra, a6, a0
                  sra         t6, a2, s6
                  c.xor       s1, a1
                  c.and       s1, a1
                  auipc       s7, 389160
                  sll         s5, zero, t4
                  slti        a3, s11, 209
                  mulhsu      s1, t6, s10
                  lui         s4, 683138
                  c.srli      s1, 25
                  mulhsu      zero, a5, t4
                  mul         zero, a1, s4
                  lui         a3, 526136
                  and         s2, s5, s11
                  srl         t6, tp, t6
                  and         s7, s6, s6
                  div         gp, a2, a4
                  c.and       a0, a2
                  c.nop
                  sll         s6, s7, s8
                  c.add       ra, s10
                  c.and       s1, a1
                  c.addi4spn  s1, sp, 480
                  addi        sp, a0, -891
                  slli        s2, sp, 25
                  mulhu       a0, a2, s10
                  sub         zero, s6, a3
                  sra         s7, ra, a0
                  xori        s5, s9, 1192
                  add         s2, ra, t1
                  sltiu       s3, s10, -245
                  mulh        t3, a2, s8
                  c.sub       a3, a3
                  mulhsu      s9, a2, a0
                  c.sub       a0, a3
                  add         s6, a1, t5
                  or          tp, s4, sp
                  auipc       t3, 247712
                  sra         s5, t6, a1
                  slt         t4, s1, a6
                  slt         a5, s2, s1
                  sltu        ra, t3, s2
                  c.mv        t1, a0
                  or          sp, s8, s4
                  c.lui       ra, 1
                  c.addi      a3, -1
                  c.and       s1, a5
                  c.andi      a0, 30
                  c.nop
                  c.and       s0, a0
                  andi        s10, zero, -1283
                  div         s0, s3, t0
                  slti        sp, a5, 467
                  slt         zero, zero, s7
                  mulh        sp, a2, a6
                  divu        s1, tp, tp
                  sltiu       zero, t3, -33
                  nop
                  xori        a6, a3, -651
                  c.xor       a5, a0
                  or          sp, a5, a3
                  slti        t4, a7, 1669
                  sra         s10, zero, a7
                  nop
                  c.or        a0, s1
                  slli        ra, a1, 4
                  slti        t2, s7, 928
                  slli        t4, t6, 15
                  rem         t3, t5, s3
                  slti        a5, s3, 1398
                  c.addi4spn  s1, sp, 608
                  rem         t0, s1, ra
                  srl         t5, a0, s1
                  c.li        s5, -1
                  lui         s8, 874926
                  srai        a6, a0, 13
                  slti        s1, s11, 195
                  add         zero, s11, s7
                  c.srai      s1, 5
                  c.addi      gp, -1
                  c.mv        s6, s7
                  lui         zero, 982310
                  addi        t2, t0, 1796
                  nop
                  add         sp, gp, zero
                  c.and       a3, a0
                  rem         a6, s10, a2
                  mul         t4, s2, s2
                  c.or        a2, s1
                  mulhu       zero, tp, a3
                  slli        s4, t5, 12
                  mulhsu      a6, a0, a2
                  sltiu       s5, t4, -1715
                  divu        a5, a2, t5
                  c.or        s1, a1
                  mulhsu      t0, s11, a2
                  c.and       a5, a3
                  c.nop
                  c.nop
                  slti        zero, s4, 19
                  c.slli      gp, 16
                  div         t2, s5, sp
                  c.andi      s0, 0
                  sll         ra, t0, ra
                  slt         zero, t2, t0
                  c.nop
                  slt         a2, a2, a2
                  add         zero, t2, t2
                  or          s2, t5, t6
                  rem         zero, s3, a3
                  addi        s0, s6, -1968
                  auipc       zero, 967977
                  sltiu       gp, s5, 551
                  c.addi16sp  sp, -16
                  sub         ra, a4, s3
                  c.srli      a0, 28
                  slti        ra, s7, -869
                  c.li        a4, 21
                  mul         a3, t2, t4
                  srli        t6, s1, 30
                  lui         t2, 467026
                  sll         s1, a1, s8
                  c.sub       a2, s1
                  c.andi      s1, 7
                  andi        t0, tp, 955
                  srli        tp, t6, 5
                  srai        s4, gp, 17
                  c.sub       s1, a3
                  auipc       sp, 449158
                  srl         a3, s1, a5
                  c.mv        s8, ra
                  c.addi      ra, 7
                  c.slli      s3, 14
                  sra         s2, s8, s7
                  c.sub       s1, a2
                  slt         zero, a5, s8
                  c.addi4spn  a3, sp, 160
                  mulhu       zero, a6, gp
                  ori         a3, s8, -405
                  nop
                  c.mv        s3, s3
                  mulhu       s8, t2, s5
                  c.li        a4, 23
                  slti        a3, s11, 619
                  sub         sp, a5, s3
                  c.lui       s3, 6
                  c.nop
                  and         t5, t5, t4
                  auipc       a5, 576205
                  div         t0, a3, ra
                  c.slli      s5, 31
                  srai        sp, s3, 26
                  c.addi4spn  s1, sp, 272
                  c.lui       t5, 9
                  slti        t5, ra, -880
                  slli        s1, tp, 10
                  rem         zero, a4, tp
                  addi        t6, s6, -1435
                  auipc       t0, 128411
                  or          zero, tp, a5
                  c.addi16sp  sp, 320
                  and         a0, a2, ra
                  srai        t0, a0, 21
                  mul         zero, s10, t4
                  divu        t1, t6, s6
                  slt         a6, s8, t6
                  c.srai      a0, 5
                  c.and       s1, s1
                  c.xor       a4, a3
                  slti        s5, sp, -1821
                  nop
                  add         t2, a1, tp
                  andi        a0, s5, 1166
                  srai        a2, t1, 6
                  c.mv        s3, ra
                  sub         s5, tp, a4
                  c.slli      a4, 8
                  lui         s9, 482620
                  slli        ra, sp, 20
                  auipc       s1, 1023435
                  c.addi4spn  a0, sp, 48
                  c.mv        t1, s0
                  srl         a5, s5, gp
                  mulh        t3, tp, a3
                  xor         t0, a3, s3
                  sra         a5, gp, zero
                  addi        a4, zero, 1706
                  slti        s8, s9, 1298
                  andi        ra, a0, 1591
                  add         a2, s11, a3
                  lui         t0, 226446
                  div         t4, s0, a4
                  sra         sp, t0, s9
                  slti        tp, a6, 1687
                  c.li        t6, 15
                  slti        zero, gp, 1145
                  c.or        s1, a4
                  c.addi16sp  sp, -16
                  lui         s3, 553698
                  c.xor       a0, a2
                  or          ra, a0, t6
                  c.srli      a0, 2
                  srli        zero, s8, 25
                  c.addi      ra, 12
                  srli        s4, s10, 24
                  xor         zero, s11, s9
                  c.and       a0, s1
                  c.nop
                  mulhsu      zero, s1, a5
                  slt         ra, a6, s11
                  c.xor       s1, a2
                  slli        t5, s8, 0
                  nop
                  mulhu       a5, a2, sp
                  mulh        t2, t5, s7
                  c.addi4spn  s1, sp, 656
                  srli        s5, s11, 1
                  c.srai      s1, 25
                  srai        a3, s5, 22
                  or          zero, a2, tp
                  c.slli      a5, 6
                  sub         t3, s4, t4
                  mulhu       s3, tp, s7
                  slli        zero, s11, 3
                  or          tp, a3, zero
                  andi        s8, s2, -432
                  div         t1, sp, s2
                  c.or        s0, s1
                  add         t6, s3, sp
                  mul         t5, gp, t5
                  sll         zero, t3, t4
                  divu        t2, s9, a3
                  auipc       t4, 240263
                  c.sub       s1, s0
                  auipc       sp, 277623
                  add         zero, t0, s10
                  c.slli      ra, 18
                  c.and       s1, a0
                  c.xor       s1, a3
                  c.add       gp, s6
                  divu        tp, a4, a5
                  slli        zero, s8, 14
                  c.addi4spn  a3, sp, 944
                  c.lui       s5, 4
                  c.xor       s1, a3
                  c.or        a2, a0
                  and         t1, a2, t4
                  srli        t5, a5, 20
                  c.slli      t0, 20
                  c.xor       s1, a2
                  c.nop
                  c.andi      a5, 2
                  c.srli      a5, 25
                  sll         sp, a1, s7
                  sltiu       tp, t4, 1044
                  andi        s6, t1, 1083
                  slt         zero, ra, t1
                  xor         a2, t5, sp
                  c.lui       a6, 24
                  or          tp, s8, s9
                  c.addi4spn  a5, sp, 992
                  c.addi4spn  a0, sp, 80
                  c.nop
                  c.addi16sp  sp, -16
                  c.nop
                  andi        a0, s4, -1617
                  c.mv        s9, s3
                  lui         zero, 125802
                  c.and       a3, a2
                  ori         s4, a1, 460
                  c.lui       ra, 23
                  andi        a6, s9, -1786
                  div         s7, t4, a4
                  sub         zero, gp, t6
                  sub         s9, zero, s6
                  slti        s2, t3, 823
                  divu        s7, s8, t0
                  nop
                  div         s10, t3, a2
                  ori         t0, a5, 1203
                  slti        sp, s6, 1924
                  c.addi      s4, 16
                  sub         t5, t1, a1
                  c.addi16sp  sp, -16
                  c.mv        a4, tp
                  mulhu       s6, t0, s0
                  sll         a4, a5, s4
                  andi        a2, tp, -1230
                  srli        zero, s0, 29
                  ori         s9, t1, 593
                  srli        t2, s2, 31
                  or          sp, t4, s0
                  srl         s3, s3, gp
                  ori         t4, t2, 761
                  c.or        s0, a3
                  c.li        a2, 1
                  c.or        a3, a3
                  c.lui       t6, 29
                  mulhsu      sp, t2, t0
                  c.sub       s1, a2
                  srl         t3, a7, s7
                  srl         s4, t6, a3
                  c.sub       s1, a0
                  c.addi4spn  s1, sp, 272
                  mulhsu      s2, a0, t6
                  c.nop
                  auipc       t2, 978138
                  divu        t2, s6, t5
                  addi        zero, s8, -884
                  c.add       a3, t6
                  srai        s1, a1, 21
                  srl         t5, a4, t3
                  c.sub       a5, a3
                  srl         s6, s1, s1
                  nop
                  c.sub       s1, a1
                  srli        t0, s6, 20
                  divu        t4, t0, sp
                  c.or        a5, s1
                  lui         gp, 827024
                  c.or        a3, a0
                  div         zero, gp, s7
                  mul         a3, a4, a6
                  divu        tp, zero, s4
                  c.andi      s0, 27
                  mulhsu      zero, a6, s6
                  slti        t6, s0, -583
                  slli        a3, s8, 25
                  c.li        s4, -1
                  auipc       s2, 421889
                  c.xor       a4, s0
                  c.xor       a3, a0
                  ori         s2, zero, 303
                  slli        s6, tp, 20
                  c.srli      a3, 20
                  and         t2, t5, gp
                  c.and       a5, a2
                  and         s5, s2, t5
                  lui         gp, 508788
                  div         sp, s8, gp
                  and         s3, t0, t1
                  nop
                  nop
                  xor         a3, sp, s9
                  mulhu       t1, a1, a3
                  or          zero, s4, a4
                  c.lui       s5, 2
                  sltiu       s7, ra, 729
                  c.addi      s8, 9
                  sub         s7, a4, s8
                  div         s8, a0, t2
                  rem         gp, a2, s9
                  c.or        s1, a3
                  nop
                  c.srli      s1, 26
                  addi        s5, sp, -215
                  c.and       a0, a0
                  c.addi4spn  a0, sp, 368
                  mulhsu      t4, a1, sp
                  or          t1, a7, t2
                  lui         a0, 550383
                  and         s0, gp, a1
                  slti        s7, a4, -1673
                  c.li        t1, 11
                  sub         s10, t2, a2
                  add         s5, t3, tp
                  srai        zero, s7, 22
                  rem         zero, sp, ra
                  c.slli      a0, 13
                  sltu        a2, tp, s3
                  c.xor       s1, a1
                  mulh        ra, a2, s1
                  c.xor       s1, a3
                  sub         t0, s1, sp
                  sra         s10, t2, s10
                  c.slli      s10, 12
                  sltu        s2, a7, a1
                  slti        a2, s7, -302
                  c.srai      a3, 1
                  and         t5, a7, t3
                  sub         t4, a2, s2
                  c.li        s8, -1
                  c.slli      s6, 15
                  srai        a4, a7, 7
                  addi        t1, t3, -1712
                  nop
                  c.or        a2, a1
                  c.li        t5, 6
                  sll         t5, s9, s5
                  or          tp, a1, a1
                  sra         zero, gp, t6
                  mulhsu      t4, sp, a4
                  xor         a6, s0, a3
                  c.add       ra, s0
                  mulh        s8, t5, s1
                  slli        s4, s7, 9
                  c.andi      s0, 8
                  c.slli      gp, 12
                  c.slli      s5, 31
                  c.srai      s1, 8
                  c.addi      a5, -1
                  div         s7, t2, t5
                  c.srli      a4, 9
                  c.addi      s10, -1
                  div         zero, t2, s2
                  or          a2, t0, s11
                  srl         ra, s8, zero
                  mul         s3, a7, s11
                  slti        a6, a0, -1011
                  c.mv        t1, a5
                  c.lui       s6, 27
                  c.xor       a0, a2
                  mulh        a2, a1, s9
                  c.srli      a2, 10
                  div         s3, a7, s9
                  c.addi4spn  a5, sp, 656
                  c.addi      ra, 3
                  auipc       a5, 674245
                  c.li        s3, 21
                  and         gp, s8, a6
                  srli        tp, t4, 28
                  srai        a5, a0, 22
                  xor         t5, gp, t3
                  c.nop
                  c.andi      a0, 13
                  slt         tp, t3, gp
                  andi        t0, s4, 1909
                  c.andi      s1, -1
                  sub         t1, s8, tp
                  c.addi      tp, 11
                  slt         s4, a2, s4
                  c.xor       s1, a3
                  sltiu       t4, t6, 1838
                  slt         a4, t3, s10
                  slt         a2, s2, sp
                  c.srai      a3, 5
                  or          a4, a2, s1
                  c.li        s4, 1
                  c.addi      t5, -1
                  mulhsu      a5, a7, s4
                  c.addi16sp  sp, 448
                  c.nop
                  sltu        zero, a3, a3
                  c.slli      s0, 25
                  srai        t1, s11, 30
                  srai        tp, tp, 0
                  c.addi      a5, -1
                  xori        zero, a6, 759
                  c.srli      a3, 13
                  mulhsu      zero, t3, t6
                  mul         zero, a7, s1
                  slli        t2, a7, 6
                  c.addi4spn  a4, sp, 208
                  slti        s3, t1, 1904
                  ori         t6, a4, -1737
                  mulhsu      t6, s7, a7
                  slt         t6, t4, s2
                  c.and       s1, a1
                  div         t5, t0, a6
                  and         s8, tp, s6
                  mulhu       a5, a7, a0
                  or          s3, s10, t2
                  mulhsu      t1, a5, a3
                  c.andi      a3, -1
                  mulhsu      s4, tp, s0
                  sra         a4, s8, t5
                  sll         s1, zero, t1
                  andi        a5, a5, -1694
                  c.srli      s1, 29
                  c.xor       s1, a2
                  c.slli      a4, 28
                  mulhsu      a5, s2, s0
                  or          a2, a7, s7
                  sltiu       t2, gp, 910
                  c.lui       t0, 12
                  c.or        s1, a0
                  sll         s6, a2, t6
                  slti        zero, sp, 977
                  mul         a3, s2, a3
                  sll         sp, a0, a1
                  sra         t5, s7, s0
                  add         sp, s3, s6
                  c.srli      a0, 13
                  addi        t0, a3, 1981
                  c.xor       a3, a2
                  slli        t4, a1, 9
                  c.nop
                  mulhsu      s4, a2, s4
                  c.li        s6, -1
                  c.slli      s0, 4
                  c.slli      a0, 10
                  xori        a5, t1, 1238
                  mul         s9, s0, t3
                  c.lui       ra, 16
                  c.and       a0, a2
                  nop
                  c.mv        a3, sp
                  c.slli      t2, 5
                  c.addi4spn  s1, sp, 112
                  sltu        zero, sp, a0
                  sltu        a3, t1, ra
                  c.sub       a5, a2
                  sra         s1, a1, s3
                  addi        sp, a3, -1786
                  mulh        a3, a0, t5
                  xor         s0, zero, s0
                  c.lui       ra, 24
                  mulhu       a4, a3, s6
                  c.andi      a5, 25
                  c.addi16sp  sp, 416
                  c.sub       a5, s1
                  slt         gp, ra, ra
                  sra         zero, s0, s4
                  c.addi4spn  a0, sp, 608
                  srli        a3, a5, 6
                  lui         s0, 1013222
                  auipc       a0, 439005
                  c.or        a0, a1
                  mul         t1, t1, t2
                  c.or        s1, a3
                  c.add       ra, sp
                  srai        t2, s5, 27
                  c.addi4spn  a5, sp, 704
                  c.or        s1, a4
                  or          s0, s5, t3
                  c.and       a2, a2
                  lui         s1, 973496
                  c.slli      s3, 11
                  slti        t2, gp, -1062
                  andi        sp, a6, 0
                  srai        sp, a6, 3
                  add         tp, a2, gp
                  c.lui       ra, 13
                  xor         t0, a0, t3
                  c.addi16sp  sp, 304
                  c.slli      ra, 25
                  c.sub       s1, s1
                  sra         s10, a1, gp
                  c.andi      a2, -1
                  mul         t2, ra, a4
                  add         s4, t4, s1
                  c.srai      s1, 11
                  srli        s5, s5, 26
                  c.li        a5, 10
                  c.srai      a0, 4
                  mulhu       s0, t2, a6
                  sltu        a5, a0, a5
                  c.mv        s9, s11
                  divu        s6, a1, t0
                  c.add       s9, t3
                  c.or        s1, s1
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_23
                  li         t5, 0x0
                  li         s9, 0x0
                  li         s3, 0x1
                  li         s5, 0x1
                  li         s8, 0x1
                  li         a3, 0x1
                  li         t6, 0x0
                  li         t0, 0x0
                  li         tp, 0x0
                  c.lui       ra, 29
                  lui         s8, 108579
                  mul         zero, a5, a3
                  lui         t4, 451918
                  mulhu       s0, t5, ra
                  c.lui       t6, 2
                  c.nop
                  c.mv        s4, s10
                  rem         s3, s11, t0
                  c.addi4spn  a3, sp, 448
                  rem         t4, s5, t5
                  c.add       s5, a4
                  nop
                  divu        s10, s0, a1
                  c.addi      s4, -1
                  nop
                  c.add       ra, tp
                  div         a6, a3, s7
                  sub         t0, a0, t4
                  sub         s6, s11, t3 #end riscv_int_numeric_corner_stream_23
                  slli        a2, a4, 7
                  c.andi      a5, 17
                  c.srai      a4, 5
                  c.or        a3, a2
                  c.mv        s6, t1
                  c.andi      a3, -1
                  c.andi      s1, 8
                  slt         s1, t2, s1
                  sra         ra, a0, s11
                  sra         tp, tp, a4
                  c.xor       a3, a0
                  xor         s5, tp, t2
                  div         zero, ra, s9
                  auipc       t5, 494024
                  c.li        s9, -1
                  c.slli      a3, 16
                  c.li        ra, -1
                  srl         gp, tp, a1
                  or          t5, a3, t2
                  add         tp, s2, t5
                  c.addi16sp  sp, -16
                  c.nop
                  c.srli      a3, 15
                  rem         a5, s2, s2
                  slt         s3, s0, a5
                  slti        t1, t4, 1970
                  nop
                  sll         s8, a6, a3
                  slti        t6, gp, 366
                  add         s4, s6, s1
                  c.lui       s2, 19
                  c.andi      a3, -1
                  slti        sp, t1, 1020
                  mulh        ra, a5, t1
                  c.lui       t0, 9
                  c.nop
                  add         a3, t0, a2
                  sltu        a4, a6, s10
                  xor         s8, s9, s7
                  xor         t1, s10, s2
                  sll         s2, zero, s4
                  slt         t4, s6, s3
                  mulh        zero, s1, s1
                  xori        t4, s6, -605
                  andi        s3, s10, 894
                  auipc       a5, 457589
                  c.addi4spn  a5, sp, 272
                  c.addi      ra, 20
                  c.xor       s1, a2
                  sra         ra, ra, a2
                  ori         gp, s9, 1374
                  add         a0, a3, s9
                  c.sub       a0, a3
                  c.addi      ra, 17
                  sub         zero, t3, t4
                  andi        zero, t6, -240
                  divu        s6, zero, tp
                  c.sub       a3, a2
                  slli        tp, gp, 9
                  divu        gp, s0, a7
                  c.and       s1, s0
                  sra         a2, a4, a6
                  c.nop
                  c.add       a4, tp
                  slli        t4, a5, 17
                  c.or        s1, a1
                  slli        s0, a3, 25
                  div         t3, ra, s9
                  c.addi16sp  sp, -16
                  srli        a0, s0, 31
                  mulhu       s3, a6, a1
                  slli        s3, tp, 0
                  c.addi      s4, -1
                  ori         t6, tp, -632
                  sra         t2, a2, zero
                  sub         t5, a6, s10
                  srli        s4, t1, 25
                  xori        s0, sp, -751
                  sub         t1, s1, a0
                  addi        s5, s2, -1643
                  c.or        a3, a1
                  nop
                  and         a0, t1, s1
                  c.mv        gp, a2
                  slt         a0, sp, s6
                  div         a4, a5, s7
                  auipc       zero, 693611
                  lui         t4, 785042
                  sll         a0, s3, s7
                  c.and       a0, a0
                  c.and       a5, a1
                  mul         s10, t2, s7
                  sra         a3, s2, s2
                  c.addi4spn  a5, sp, 784
                  c.andi      s1, 10
                  mulhu       a6, a3, s4
                  srai        a2, s2, 23
                  nop
                  srai        a4, ra, 9
                  rem         t2, s5, a0
                  nop
                  c.slli      s8, 5
                  c.mv        sp, s7
                  rem         a4, s1, a2
                  ori         s6, ra, -1474
                  srli        s1, s2, 6
                  srai        s6, s9, 2
                  mulh        a6, s10, t1
                  mul         s8, a7, t6
                  andi        zero, t0, 1254
                  add         s3, ra, gp
                  lui         s9, 1010601
                  addi        sp, a4, -1090
                  sll         t2, s9, s5
                  add         sp, a7, s2
                  ori         s8, t6, -1231
                  srai        t2, gp, 0
                  c.addi16sp  sp, 272
                  and         s6, t4, a7
                  srai        zero, t1, 12
                  c.srai      a0, 16
                  c.srli      a2, 1
                  c.addi      a2, -1
                  c.andi      a3, -1
                  addi        t4, t3, 1922
                  rem         a3, t3, t6
                  sltu        t2, t1, a2
                  mul         t2, s10, s4
                  add         zero, t0, s10
                  mulhsu      zero, t6, s7
                  add         t0, a0, t6
                  ori         ra, t3, 345
                  c.and       s1, a4
                  c.and       a3, a5
                  srl         sp, t1, s8
                  c.slli      t1, 17
                  ori         t4, a5, -903
                  c.andi      a5, -1
                  andi        sp, s9, 1044
                  nop
                  li         a0, 0x0 #start riscv_int_numeric_corner_stream_10
                  li         t6, 0x64412798
                  li         t5, 0x1
                  li         a3, 0x0
                  li         s1, 0x0
                  li         t4, 0x0
                  li         t3, 0x1
                  li         s8, 0x0
                  li         s10, 0x44ba0ed4
                  li         s4, 0x1
                  mul         a3, s7, t6
                  c.addi4spn  a3, sp, 1008
                  divu        t2, s4, t3
                  c.li        s2, -1
                  sub         s4, a0, s3
                  c.addi16sp  sp, 144
                  auipc       a2, 206119
                  mulh        ra, s2, s9
                  rem         s4, a7, a7
                  lui         s1, 771387
                  c.nop
                  c.addi4spn  a2, sp, 368
                  mulhu       s7, t6, s6
                  c.mv        ra, s4
                  c.li        s0, -1
                  nop
                  divu        a0, tp, s8 #end riscv_int_numeric_corner_stream_10
                  and         s0, s4, a2
                  nop
                  or          s1, s9, t2
                  srli        s9, ra, 28
                  c.lui       s9, 15
                  mul         t6, s1, ra
                  nop
                  slti        t5, a4, -1725
                  slti        tp, s6, 1809
                  add         s0, tp, a2
                  sltu        t6, s3, sp
                  c.srli      a2, 26
                  c.li        s2, -1
                  mulhu       s3, s8, s8
                  c.addi16sp  sp, 448
                  c.or        s1, a0
                  mul         t6, a1, a4
                  mulhsu      zero, t6, a7
                  c.sub       a0, a0
                  c.add       s1, s11
                  c.add       s5, s9
                  srl         s7, gp, tp
                  c.sub       a0, a0
                  mulh        t4, a5, a3
                  mulhsu      t2, tp, a5
                  div         s9, s3, s2
                  slti        zero, s3, 1237
                  addi        t1, a5, -50
                  sra         s1, zero, t5
                  slli        s4, s0, 8
                  and         t5, a3, s6
                  divu        ra, s10, a4
                  c.srai      a0, 18
                  mul         t0, t0, t3
                  andi        sp, s11, 1031
                  add         a2, t4, s5
                  c.srli      a0, 31
                  c.srai      a5, 5
                  nop
                  divu        s6, a2, s2
                  srli        a3, t2, 24
                  divu        s2, s6, s11
                  c.and       a3, a2
                  c.xor       a3, s0
                  c.srli      a0, 14
                  c.sub       s1, a1
                  c.addi4spn  s1, sp, 336
                  sra         a5, a0, ra
                  c.addi4spn  a0, sp, 656
                  c.addi4spn  a3, sp, 816
                  divu        a2, a4, s11
                  c.and       a5, a0
                  c.srli      a5, 26
                  c.and       s1, a3
                  c.mv        t0, a5
                  slti        s9, s6, -1731
                  c.or        a0, a2
                  c.addi4spn  a0, sp, 128
                  c.slli      a0, 23
                  sltu        s7, t2, a6
                  c.addi      tp, -1
                  srai        ra, t3, 16
                  c.and       s1, a0
                  xori        zero, a2, 1891
                  div         zero, gp, s2
                  slli        zero, s9, 31
                  add         tp, a7, zero
                  slti        zero, s11, -82
                  c.lui       ra, 23
                  c.srai      a0, 4
                  sub         a2, a0, a2
                  div         s8, t2, s3
                  divu        s4, a6, zero
                  sub         sp, t0, t0
                  c.addi4spn  a0, sp, 656
                  c.sub       s1, a3
                  xor         zero, s3, s6
                  nop
                  sub         a4, s5, t2
                  c.addi4spn  s1, sp, 240
                  xori        gp, s2, -1468
                  slti        t5, a3, 987
                  c.addi4spn  a2, sp, 848
                  xori        s3, s1, -735
                  srli        zero, s7, 12
                  nop
                  c.add       sp, a5
                  add         a0, a7, s8
                  xor         t5, t6, t1
                  add         s9, gp, s4
                  c.addi16sp  sp, 112
                  c.addi16sp  sp, -16
                  xori        s4, zero, 36
                  srai        a6, s1, 29
                  sub         t6, t0, t0
                  and         s6, a4, a0
                  srli        t5, a3, 25
                  c.or        s1, a4
                  slli        t6, a2, 6
                  sra         s5, t6, t2
                  c.xor       a5, a0
                  sub         s0, gp, a6
                  c.add       t2, gp
                  c.srai      s0, 8
                  c.mv        ra, gp
                  c.sub       s1, a2
                  slt         t6, sp, t3
                  rem         t2, t4, tp
                  div         s9, s7, s10
                  sub         t3, tp, t3
                  and         s2, ra, s11
                  c.li        t5, 18
                  add         gp, tp, a5
                  and         t4, s4, s8
                  c.addi16sp  sp, -16
                  sltu        s3, s8, t1
                  c.li        t1, -1
                  c.sub       a3, a1
                  c.andi      s1, 0
                  c.andi      a2, 9
                  auipc       zero, 298953
                  srai        a4, s10, 22
                  srli        t3, s1, 27
                  and         gp, sp, t0
                  c.xor       a0, a0
                  andi        a4, a7, -869
                  mulhsu      s10, a2, a5
                  c.nop
                  c.lui       s0, 16
                  c.and       s1, a1
                  slt         a2, s3, t3
                  c.and       a0, a3
                  c.lui       ra, 7
                  c.addi      t4, -1
                  srai        a5, s5, 23
                  c.and       a5, a2
                  slt         s9, s0, a3
                  c.add       s6, t1
                  c.xor       s1, a5
                  div         gp, s3, a1
                  and         zero, a7, ra
                  sra         zero, s2, s8
                  c.addi      a2, -1
                  c.srli      s1, 16
                  slt         sp, t1, t5
                  c.slli      a3, 17
                  nop
                  nop
                  c.andi      s1, 23
                  sltiu       t6, sp, -1769
                  c.li        a4, -1
                  div         s6, gp, t2
                  mulh        tp, s6, t4
                  xori        gp, a1, -1332
                  c.addi      t3, 12
                  sub         s4, s11, a2
                  sub         s5, zero, t1
                  slt         s8, a4, s11
                  mul         s8, t6, s7
                  mul         a4, s8, a5
                  c.srli      s1, 1
                  ori         t2, sp, 374
                  slti        s6, s3, 1235
                  sub         a0, t2, t1
                  mulh        ra, s4, s10
                  mulh        ra, s3, s4
                  lui         s0, 230810
                  mulh        s2, t2, s11
                  c.lui       t0, 2
                  c.slli      ra, 8
                  c.xor       s1, s1
                  sll         t4, a0, t6
                  lui         sp, 140487
                  c.li        a0, -1
                  add         t1, sp, t1
                  xori        t0, a1, 218
                  addi        s1, t4, -569
                  sltu        t4, s9, s3
                  mulh        s7, s6, s0
                  sll         zero, s4, t1
                  c.and       a0, a1
                  c.srli      a3, 5
                  div         a5, t4, s0
                  srai        s4, s2, 14
                  sltiu       ra, s1, -1160
                  andi        s2, s0, 1909
                  c.andi      s1, -1
                  mulhu       zero, t3, t3
                  slti        tp, a0, -1707
                  ori         zero, a2, -1822
                  rem         tp, sp, s9
                  c.li        a4, -1
                  srl         t0, gp, t4
                  andi        ra, s6, -692
                  sltu        tp, s7, s10
                  srli        s10, a0, 10
                  and         a2, t1, s11
                  c.add       s3, a2
                  c.nop
                  or          zero, t0, a0
                  sltu        t6, gp, s10
                  sra         s8, s10, t2
                  c.mv        ra, t3
                  mul         a5, a3, tp
                  auipc       t5, 42176
                  sll         s10, s10, t4
                  srli        s3, ra, 8
                  slt         zero, s1, a3
                  slli        s2, s11, 1
                  sub         t1, s11, t0
                  c.andi      s1, -1
                  mulhsu      s8, a4, t3
                  c.andi      s0, 29
                  mulhsu      s9, s8, s3
                  mul         s10, s4, s7
                  sub         zero, s1, a2
                  c.lui       a0, 14
                  mulhu       t0, a2, t2
                  xori        a0, t4, -1824
                  srai        t2, s2, 14
                  c.or        a3, a3
                  add         zero, t2, t0
                  c.lui       t1, 27
                  andi        gp, s5, -188
                  c.addi      s7, 4
                  srl         zero, a1, s10
                  mulhsu      a2, s2, t1
                  c.mv        t4, s11
                  sltiu       a5, a3, 1011
                  c.andi      s1, -1
                  c.nop
                  srli        ra, t4, 17
                  sub         s2, t1, t5
                  sltiu       t5, t1, 1780
                  xori        a4, s0, 147
                  div         s10, ra, t6
                  lui         zero, 554121
                  divu        t0, a5, s8
                  c.lui       s4, 27
                  c.nop
                  srl         s10, tp, s3
                  xor         a3, a7, t5
                  slli        s7, a7, 25
                  mul         a4, zero, s2
                  sltu        s1, a5, t3
                  lui         t0, 751818
                  ori         t1, s1, -1858
                  c.sub       s1, a0
                  c.or        a0, a1
                  c.xor       a4, a5
                  c.lui       s10, 30
                  xori        s2, a6, -43
                  lui         a6, 49974
                  auipc       t0, 648281
                  rem         ra, a6, a3
                  xori        s8, s8, -912
                  and         a0, a3, t3
                  rem         tp, t4, s3
                  c.add       a6, t5
                  divu        s5, s3, s0
                  mulhsu      t5, a6, t3
                  slt         t6, t5, a4
                  mulhu       zero, a1, gp
                  c.nop
                  addi        t2, a6, -119
                  c.slli      t1, 28
                  mulh        gp, t1, tp
                  xor         zero, t3, s4
                  mulh        ra, ra, t4
                  or          gp, ra, s8
                  c.srli      s1, 17
                  add         s3, s7, a1
                  c.and       a3, a2
                  c.srli      s1, 15
                  slli        zero, a7, 18
                  div         t0, a1, t3
                  andi        t1, a2, -1053
                  c.and       a2, a3
                  srai        a3, a4, 8
                  xori        s9, t3, 1452
                  sra         s10, s3, s4
                  nop
                  sll         t4, s8, t2
                  sub         s4, s3, zero
                  c.srli      s1, 15
                  c.xor       a3, s0
                  rem         a6, s6, t5
                  xor         s6, a7, a2
                  c.li        t2, -1
                  sra         s5, t2, s2
                  sltu        t0, s11, a1
                  andi        a5, a3, 777
                  xor         a3, s8, s2
                  sltu        zero, s3, t3
                  add         s8, tp, a6
                  c.srli      s1, 22
                  c.and       s1, s1
                  auipc       zero, 209578
                  xor         s6, s4, s1
                  addi        a6, t5, 112
                  slli        zero, t4, 9
                  srl         zero, t3, s1
                  sub         a5, a3, a4
                  slli        s3, tp, 26
                  mulh        a0, t5, a5
                  xor         zero, sp, a0
                  lui         s9, 652371
                  or          s9, a4, s11
                  srl         zero, t1, a6
                  c.add       t5, s2
                  c.lui       t4, 27
                  sll         s3, a0, gp
                  slt         s5, s5, s6
                  c.srli      s1, 16
                  mul         s2, s3, t0
                  ori         s7, s9, 383
                  c.mv        sp, s9
                  mul         a4, s4, t2
                  c.addi4spn  s1, sp, 656
                  c.sub       a3, s0
                  lui         s8, 931158
                  c.li        a4, 17
                  c.sub       a0, a3
                  c.and       s1, a0
                  srai        s5, s0, 1
                  rem         a0, t1, s11
                  sll         s7, ra, a3
                  c.srai      s1, 25
                  sub         a4, t5, t2
                  sltu        s8, a6, s1
                  slti        gp, a2, 1744
                  c.and       a0, a2
                  c.mv        s8, a5
                  c.addi16sp  sp, 480
                  c.addi      a2, -1
                  c.addi4spn  s1, sp, 960
                  rem         s5, t0, a3
                  sltiu       s2, s7, -532
                  c.addi16sp  sp, -16
                  slli        t1, a7, 6
                  srli        s7, s7, 28
                  srl         ra, a1, t4
                  sltiu       t1, t1, -2024
                  mul         t2, gp, t5
                  ori         a5, a2, -1071
                  c.mv        s0, s10
                  xor         zero, t3, a0
                  add         a2, s9, a4
                  c.andi      a0, 5
                  c.addi16sp  sp, -16
                  c.mv        s3, a4
                  srl         s3, t1, t6
                  c.or        a0, s1
                  c.srli      s0, 16
                  divu        gp, a7, s1
                  mulh        s0, a1, t6
                  c.or        s1, a3
                  and         a6, s0, a3
                  c.addi4spn  a3, sp, 704
                  c.and       a0, a0
                  auipc       t0, 246719
                  auipc       s7, 117189
                  sltiu       a4, s1, -1116
                  addi        a4, t1, -1350
                  mul         zero, tp, sp
                  c.xor       a0, a5
                  divu        s4, s1, s11
                  c.addi4spn  a2, sp, 960
                  sub         t5, t5, t3
                  div         s10, ra, t5
                  addi        a4, a2, 1473
                  c.srli      a3, 25
                  ori         sp, a3, 1867
                  c.and       s1, s0
                  c.addi4spn  s1, sp, 336
                  mulhsu      gp, zero, s9
                  sltu        a4, t2, s5
                  addi        sp, sp, -672
                  andi        t4, a7, 820
                  slti        zero, gp, -104
                  c.addi      ra, 9
                  c.srli      a3, 22
                  c.lui       t1, 23
                  sll         a2, ra, a6
                  slt         a5, s9, t3
                  add         t5, s3, s9
                  c.xor       a2, a3
                  or          a5, s1, s10
                  sra         zero, t2, t6
                  c.andi      s1, 7
                  srl         s6, t6, s6
                  c.li        gp, 18
                  c.xor       a0, a3
                  slli        s9, t3, 0
                  addi        zero, s4, 1375
                  nop
                  mulhu       a3, t0, t5
                  andi        zero, s1, 440
                  divu        s4, s7, t1
                  sll         s6, t5, a5
                  c.slli      s8, 6
                  c.nop
                  slli        s8, t5, 10
                  c.mv        t0, s0
                  mul         zero, t2, t1
                  sll         s7, s4, a4
                  xor         a4, s6, s6
                  c.addi16sp  sp, 192
                  c.addi16sp  sp, -16
                  mul         t0, a6, a0
                  slt         t6, s11, s10
                  mulhu       sp, s2, zero
                  srai        a0, a1, 27
                  div         s7, s3, s9
                  xori        a5, s0, 1736
                  slti        sp, t3, -498
                  xori        ra, a3, -577
                  c.mv        t5, a1
                  div         t6, s10, a1
                  xor         a5, t5, ra
                  add         sp, s3, t2
                  mulhsu      t4, a5, a6
                  c.srli      a2, 30
                  mulh        zero, s7, t6
                  slti        a2, a0, 1642
                  c.li        t0, -1
                  c.nop
                  c.sub       a0, s1
                  lui         t0, 356897
                  sub         tp, a2, s2
                  c.xor       a3, s1
                  c.addi      ra, -1
                  rem         a4, a2, t6
                  sll         s9, t5, a7
                  addi        a3, s8, 935
                  sra         t0, gp, t3
                  divu        s2, a2, s8
                  c.srai      a4, 31
                  slti        zero, a5, 1388
                  xor         s4, a7, s1
                  c.srai      a0, 18
                  c.srli      a2, 2
                  c.srai      a5, 31
                  c.slli      t5, 24
                  c.xor       a0, a1
                  mulhu       zero, t6, a7
                  srl         s6, a4, t6
                  auipc       s3, 203351
                  xor         s3, a1, s11
                  rem         a5, s5, t2
                  lui         a3, 460640
                  ori         zero, t3, 1532
                  c.xor       s1, a2
                  ori         sp, t4, 1970
                  mulhu       s2, a5, t2
                  c.slli      s3, 28
                  srai        gp, s6, 8
                  slli        a3, tp, 24
                  nop
                  xori        zero, s4, 1058
                  sub         t1, s1, zero
                  c.or        s1, a2
                  slt         t2, s1, s6
                  xori        s1, s0, 1621
                  mulh        t2, a1, a1
                  add         t0, t0, a4
                  c.lui       s8, 1
                  or          t1, s3, s1
                  mulhu       gp, a1, t3
                  slti        a3, s5, 1101
                  c.li        s8, 26
                  sub         a6, a6, t4
                  rem         s2, gp, t2
                  div         t1, s10, ra
                  auipc       a0, 503078
                  c.lui       ra, 25
                  sra         t6, zero, gp
                  c.lui       s1, 21
                  c.or        a0, a3
                  xor         a0, t2, sp
                  sll         s4, sp, a1
                  srl         a2, s2, s1
                  c.addi16sp  sp, 128
                  sltu        t1, s7, a6
                  sra         tp, t6, t1
                  c.addi4spn  s1, sp, 432
                  srl         s2, a6, s10
                  c.addi4spn  a0, sp, 800
                  c.nop
                  slli        a2, s2, 31
                  ori         t6, s1, 110
                  or          a2, a3, s8
                  divu        zero, s9, s8
                  c.srai      a3, 24
                  c.nop
                  srl         s2, t4, s7
                  slti        t4, t4, 496
                  divu        t4, s7, s11
                  sll         t4, s3, zero
                  c.slli      s8, 22
                  add         ra, t0, a6
                  slli        s9, s6, 1
                  srl         zero, zero, sp
                  mulh        s1, s9, s5
                  add         a3, t6, s6
                  c.addi      s10, 20
                  andi        a0, t3, 1888
                  sra         s4, s10, t5
                  c.add       ra, a0
                  addi        s0, s11, 184
                  c.addi16sp  sp, 208
                  nop
                  c.xor       s1, a2
                  div         s5, t1, s6
                  c.sub       s1, a3
                  xori        zero, ra, 895
                  slt         t3, a4, t0
                  andi        ra, s4, 484
                  sra         a4, a5, s5
                  mulhsu      zero, s3, s9
                  c.andi      s1, -1
                  c.or        s1, a2
                  slt         zero, zero, zero
                  mulhu       t0, a5, s5
                  lui         a3, 113881
                  c.mv        s8, a1
                  c.lui       ra, 5
                  c.mv        t0, t3
                  c.srli      a5, 21
                  auipc       sp, 37491
                  ori         t1, s9, -580
                  sub         s10, tp, a1
                  rem         gp, a6, s0
                  slti        s10, t5, -960
                  c.slli      a3, 1
                  slt         t1, s7, t2
                  sltu        a3, t3, t0
                  c.addi16sp  sp, 144
                  c.lui       a3, 12
                  srl         zero, t3, t5
                  or          a6, t0, t3
                  c.addi16sp  sp, 192
                  c.mv        gp, a3
                  mulhu       tp, gp, zero
                  srli        s6, zero, 28
                  sltiu       t4, s2, -15
                  sll         zero, s1, s11
                  c.lui       t3, 14
                  c.slli      t3, 13
                  sub         s8, t5, s1
                  slli        a2, t4, 29
                  srli        zero, a6, 29
                  c.srli      a3, 26
                  slt         zero, s8, a4
                  auipc       zero, 903370
                  sltiu       t2, sp, 345
                  xori        a5, ra, 43
                  c.li        ra, -1
                  c.srai      a3, 24
                  nop
                  c.srai      a0, 22
                  srl         s7, s7, s3
                  srli        s0, a7, 19
                  c.nop
                  or          sp, s11, t6
                  srli        s1, a3, 16
                  c.slli      s3, 10
                  nop
                  sltu        gp, a2, t1
                  slti        t0, s9, 776
                  div         s3, a3, s0
                  c.addi      s9, 30
                  divu        a6, ra, sp
                  c.addi16sp  sp, -16
                  add         sp, t5, tp
                  sll         s6, a7, s1
                  c.slli      s4, 9
                  ori         s3, t6, -1297
                  andi        s6, a4, -45
                  srai        s4, tp, 0
                  c.andi      a0, 22
                  srl         s10, sp, tp
                  c.addi4spn  a5, sp, 976
                  xor         t4, t0, s0
                  c.sub       a5, a2
                  ori         a5, tp, -1135
                  rem         a0, t3, a1
                  c.addi4spn  s1, sp, 800
                  c.addi      s7, -1
                  mul         a0, s4, tp
                  and         s3, zero, t6
                  or          s7, a0, a6
                  c.xor       s1, a2
                  mulh        t6, a7, zero
                  sltu        s10, sp, ra
                  c.srai      a2, 11
                  slti        a3, s11, 1492
                  sll         t2, sp, sp
                  srli        s10, s11, 27
                  mul         s5, t5, s2
                  c.or        a3, a2
                  divu        s9, s8, a2
                  c.sub       a5, a0
                  slti        a6, a2, -637
                  c.or        a3, a3
                  slt         s6, s9, a4
                  c.xor       a0, a3
                  c.sub       s0, a2
                  add         t1, zero, t4
                  sra         t3, s4, s7
                  lui         a4, 506969
                  sltiu       s0, a6, 1557
                  c.sub       a2, a0
                  c.addi16sp  sp, 336
                  c.mv        t2, sp
                  c.lui       t6, 5
                  and         t0, ra, a0
                  mulhu       t4, zero, s7
                  c.addi4spn  a3, sp, 704
                  div         a0, s8, a0
                  c.sub       s1, a1
                  srai        t0, ra, 23
                  c.srai      a0, 25
                  or          a2, t0, a6
                  addi        t6, tp, 4
                  mulhsu      sp, s2, zero
                  addi        zero, s1, -1286
                  add         s7, zero, a6
                  and         s6, tp, s4
                  c.addi      a4, -1
                  c.srli      s1, 27
                  nop
                  sll         a4, t1, gp
                  sltu        a5, s5, s11
                  nop
                  c.add       ra, t4
                  sra         s1, a6, s4
                  c.addi      s1, -1
                  c.xor       a0, a0
                  slli        s10, a6, 19
                  div         s1, s2, a0
                  rem         zero, a7, a5
                  c.and       a3, a0
                  c.add       ra, s3
                  c.srli      s0, 21
                  divu        a3, s8, a7
                  sltu        a0, sp, ra
                  c.sub       a4, a0
                  c.sub       s1, a2
                  sra         t0, zero, t0
                  sltiu       ra, s4, -832
                  c.or        s1, s0
                  c.srli      a3, 22
                  slli        s5, a4, 13
                  slti        ra, a7, 1955
                  and         s8, t1, s10
                  auipc       t2, 205943
                  c.xor       s1, a3
                  c.xor       s1, s0
                  c.addi4spn  a0, sp, 192
                  c.and       a4, s1
                  ori         t0, sp, -1127
                  div         t1, s2, sp
                  c.li        s2, 15
                  or          zero, s5, s2
                  c.addi      s10, 30
                  and         zero, t3, t6
                  nop
                  divu        zero, a0, a4
                  mulh        t6, a4, s7
                  c.lui       t0, 13
                  auipc       t2, 377454
                  slti        zero, a7, 1103
                  div         t1, tp, a5
                  c.lui       s6, 31
                  mul         s9, gp, a1
                  div         s2, s10, t3
                  and         s10, a5, s11
                  c.lui       a0, 23
                  and         zero, s2, s11
                  slli        s9, tp, 0
                  c.and       a2, a1
                  c.add       ra, a6
                  c.add       ra, a2
                  andi        s4, zero, -254
                  mulhu       a0, s5, ra
                  and         s10, s3, a0
                  slt         a6, a7, tp
                  mulh        t5, s6, t3
                  c.nop
                  c.andi      a0, 25
                  c.add       a3, a7
                  c.addi16sp  sp, -16
                  c.slli      s4, 14
                  sll         s9, gp, a2
                  c.addi      ra, 9
                  mulhu       a5, t2, s1
                  and         s10, s11, s3
                  mulh        s3, tp, gp
                  srli        s7, s4, 10
                  and         gp, t1, a4
                  c.nop
                  and         s0, tp, s9
                  sltu        s2, tp, s7
                  addi        a4, s4, -1144
                  add         t0, zero, a0
                  c.xor       a3, a2
                  mulhu       s10, a5, gp
                  srl         a5, t5, s5
                  c.xor       a3, a2
                  c.addi      s8, 1
                  xor         a2, t2, a7
                  c.nop
                  rem         t3, s2, s2
                  c.addi16sp  sp, -16
                  mul         gp, tp, s4
                  srli        zero, s6, 24
                  c.add       t1, s5
                  c.mv        s8, a2
                  ori         tp, t4, -1114
                  c.addi16sp  sp, 272
                  mulhsu      a0, a4, a6
                  c.slli      t2, 17
                  c.lui       t4, 25
                  mulh        s7, s8, t0
                  divu        zero, s1, a1
                  slt         zero, a0, t3
                  c.or        a4, a1
                  auipc       s10, 500424
                  and         s10, s0, zero
                  mulhu       s8, t1, a1
                  slt         s4, a4, s0
                  sltu        s7, t6, s6
                  mulhu       s3, s5, s8
                  or          zero, s0, t6
                  sra         s8, t0, t6
                  auipc       zero, 894720
                  addi        a6, s3, -1992
                  add         t5, s10, s5
                  or          s7, s6, a0
                  sra         t0, t1, t6
                  mulhsu      t0, t4, sp
                  slli        s7, s11, 21
                  srai        t2, t0, 8
                  c.addi4spn  a0, sp, 96
                  srli        s7, t0, 2
                  c.addi16sp  sp, 96
                  srli        s9, s11, 2
                  slli        s0, t3, 27
                  add         zero, a1, a2
                  c.li        t6, -1
                  c.srai      s0, 1
                  c.addi      s8, -1
                  divu        a4, a7, s4
                  c.andi      a0, 2
                  c.mv        s10, sp
                  mulhsu      t4, s7, s0
                  srli        zero, s2, 21
                  nop
                  nop
                  c.sub       a0, a3
                  slt         ra, t5, t6
                  add         s1, s2, s1
                  c.slli      ra, 4
                  xor         zero, a5, s8
                  ori         t0, s7, -1082
                  c.slli      t2, 21
                  rem         tp, t5, s11
                  srl         t4, s5, tp
                  ori         a4, ra, 1968
                  or          a0, s4, tp
                  mulh        t3, s4, s0
                  auipc       s0, 14892
                  c.andi      a2, 23
                  sltu        s2, a6, s4
                  mul         a5, s11, ra
                  lui         s4, 711090
                  c.li        t1, -1
                  andi        s3, t4, -543
                  sltu        a6, a1, t5
                  c.andi      s1, 14
                  slli        s0, a4, 24
                  andi        a5, a4, -628
                  c.slli      s3, 14
                  sra         zero, t4, ra
                  c.and       s1, a1
                  mulhsu      s5, s2, a0
                  c.xor       a3, a0
                  add         zero, gp, t0
                  andi        a5, s6, -591
                  or          a5, t1, a2
                  c.lui       s4, 1
                  c.and       a2, a3
                  rem         s3, a5, s6
                  c.addi      s2, -1
                  and         a4, a2, t0
                  c.addi      a2, -1
                  sra         a5, a5, t3
                  c.mv        s5, a2
                  sll         t3, s11, ra
                  c.li        s9, 21
                  mulh        sp, a7, zero
                  sub         a3, gp, s2
                  sub         s3, s5, s2
                  srli        s9, a5, 15
                  c.nop
                  sll         s8, sp, s10
                  and         a6, a6, a1
                  slli        zero, t5, 0
                  srl         s0, s7, gp
                  rem         t6, s0, a5
                  nop
                  add         s6, t1, s8
                  c.srli      a0, 22
                  c.li        a3, 20
                  mulhsu      a4, sp, zero
                  mulh        zero, t3, t2
                  mulh        s4, t1, a6
                  sub         t2, a5, s10
                  xor         a5, sp, s7
                  and         s6, sp, a4
                  srl         a3, zero, s7
                  mulh        sp, ra, t4
                  rem         t1, t3, gp
                  c.li        a5, 20
                  c.andi      s1, 1
                  andi        a5, zero, 1071
                  auipc       t5, 420878
                  divu        sp, a3, a5
                  sra         s0, t4, s10
                  rem         t5, a6, a2
                  sra         zero, a3, ra
                  mul         ra, ra, t2
                  c.addi4spn  s0, sp, 368
                  c.srli      a3, 20
                  sll         t2, s1, s4
                  c.addi      s10, -1
                  c.and       s1, a1
                  sltiu       s5, gp, 1704
                  c.nop
                  xori        gp, ra, 1292
                  slli        gp, t1, 24
                  c.nop
                  ori         sp, gp, -1698
                  c.srai      s1, 10
                  mulhsu      tp, sp, s5
                  c.nop
                  divu        gp, a2, s3
                  c.add       t2, s7
                  slli        zero, t3, 14
                  nop
                  xor         s5, s3, s6
                  c.xor       s1, a2
                  c.addi      t0, -1
                  srl         s6, s7, a7
                  nop
                  rem         s1, s1, ra
                  rem         s10, a5, s2
                  add         s6, s8, gp
                  divu        ra, s10, s1
                  c.addi4spn  s1, sp, 272
                  ori         s1, a1, -63
                  sra         a5, s9, t0
                  mulhu       s0, tp, sp
                  c.srai      s1, 15
                  c.or        s1, a1
                  sll         t3, a4, t0
                  sub         s0, a1, s8
                  and         zero, gp, a6
                  slti        s10, t2, 1492
                  mulhu       a6, s7, a1
                  c.addi      gp, -1
                  sltiu       a3, ra, 252
                  c.andi      a4, 15
                  c.srai      a0, 5
                  mul         zero, s2, t0
                  c.addi16sp  sp, 304
                  c.li        a2, 21
                  sub         a0, a4, s3
                  c.li        a3, 15
                  c.srai      a0, 6
                  xor         s8, a7, s8
                  xori        t5, ra, 1874
                  c.addi4spn  s1, sp, 288
                  mulhu       s9, t1, s0
                  c.mv        s5, a7
                  xor         gp, s11, t1
                  addi        s7, s5, 614
                  c.andi      a3, 3
                  c.addi      ra, 12
                  andi        a0, a4, -708
                  c.mv        s2, s7
                  c.sub       a3, a1
                  sltiu       s7, s5, 1717
                  sltu        s5, a5, tp
                  ori         s7, t1, -356
                  srli        t1, s8, 26
                  xor         s2, t2, a7
                  srl         s1, a7, t1
                  srli        t2, s5, 21
                  c.xor       s1, s1
                  c.xor       a0, a2
                  auipc       ra, 837345
                  c.slli      s3, 12
                  sll         a2, t6, a5
                  c.addi16sp  sp, -16
                  c.addi      s0, 25
                  c.lui       a4, 21
                  c.lui       a2, 27
                  xori        zero, a0, 1233
                  add         t6, sp, s0
                  andi        a0, s0, 1909
                  xor         t1, zero, t2
                  c.li        a0, 15
                  rem         t0, a1, a3
                  sltu        s0, tp, t0
                  slli        s2, zero, 31
                  slli        zero, a5, 12
                  ori         t4, t5, -1141
                  srl         s1, a4, tp
                  mul         s4, s3, s4
                  srai        zero, zero, 21
                  c.addi16sp  sp, 16
                  c.and       s1, a2
                  c.add       t2, t4
                  c.lui       gp, 12
                  slli        s4, a1, 22
                  lui         a2, 935306
                  c.or        a2, a2
                  c.and       a3, s0
                  c.and       a3, a1
                  and         zero, s10, s10
                  sra         ra, gp, s2
                  slli        sp, s11, 28
                  srli        t3, s9, 16
                  auipc       s1, 978716
                  add         s1, s9, a1
                  c.or        a0, a2
                  auipc       s1, 360932
                  sltu        s6, s8, s10
                  c.li        s10, -1
                  sll         zero, s9, gp
                  c.addi      s4, -1
                  rem         tp, tp, t2
                  c.xor       a3, a2
                  c.xor       a2, a0
                  sltu        tp, ra, s1
                  or          s2, s3, sp
                  mulhsu      s4, s2, s0
                  slti        s5, a0, 353
                  auipc       s10, 782799
                  c.srai      a0, 23
                  slli        t5, a5, 2
                  xor         s2, a7, s1
                  c.xor       a2, s0
                  srai        t4, ra, 27
                  sltu        zero, a6, s2
                  c.and       a0, s1
                  sra         t6, s3, gp
                  srai        a4, a7, 31
                  or          a3, s8, t5
                  c.addi      s10, -1
                  rem         s1, s6, s10
                  c.nop
                  c.addi16sp  sp, 256
                  and         a4, a0, t5
                  lui         t1, 614967
                  xor         s7, s11, s2
                  divu        gp, t1, zero
                  srl         a4, t2, s7
                  slti        gp, s2, 1229
                  auipc       s7, 746930
                  c.nop
                  c.addi4spn  a0, sp, 848
                  mul         zero, sp, t4
                  c.slli      a6, 6
                  div         s3, a5, zero
                  c.add       ra, a7
                  c.mv        a3, t3
                  sub         sp, a5, tp
                  c.addi16sp  sp, 16
                  c.li        a0, -1
                  nop
                  c.addi      s3, -1
                  c.addi      s9, -1
                  or          s10, a5, t2
                  sll         s7, t6, a3
                  c.srai      a2, 1
                  nop
                  c.xor       s1, s0
                  sra         zero, ra, zero
                  srai        t0, t0, 26
                  c.andi      a5, 14
                  c.lui       s6, 2
                  mulh        s5, s9, a0
                  add         t6, s7, a2
                  c.slli      t4, 29
                  c.and       a3, s1
                  slli        a0, t3, 16
                  div         t0, s2, t3
                  c.xor       a3, a3
                  sltu        zero, a3, s7
                  slti        t3, a6, 1602
                  auipc       s6, 664152
                  c.andi      a3, -1
                  sll         tp, t0, ra
                  lui         s9, 848602
                  c.mv        a5, s9
                  c.add       ra, tp
                  c.sub       a5, a1
                  mulhsu      s4, tp, t6
                  c.add       a2, t3
                  slli        a4, sp, 17
                  c.lui       t4, 21
                  sra         a6, s4, s3
                  c.srai      s1, 9
                  add         a2, s1, t1
                  c.srai      a3, 25
                  addi        zero, sp, -157
                  or          tp, a2, sp
                  mulhsu      s9, a0, s7
                  or          t2, s11, zero
                  c.srai      s1, 3
                  slt         ra, s8, s6
                  add         s10, t3, s0
                  div         s1, a1, s2
                  or          zero, s10, s0
                  sra         s6, s3, t0
                  c.srli      s1, 9
                  mul         zero, zero, s9
                  c.and       s0, s1
                  mulh        t3, s4, s8
                  c.add       s9, s2
                  sltu        s6, s0, t4
                  c.li        s7, -1
                  c.slli      t3, 5
                  c.or        s1, a2
                  srl         ra, t3, s5
                  c.or        a3, a0
                  mul         s3, s3, t3
                  c.srli      s1, 24
                  c.srai      s1, 22
                  c.andi      a3, -1
                  srl         s2, s6, a6
                  or          a4, s2, tp
                  mulh        s1, a1, gp
                  sltiu       s9, tp, 581
                  c.slli      t5, 4
                  auipc       gp, 555934
                  srli        t0, a3, 20
                  c.lui       t2, 17
                  c.lui       s7, 20
                  srl         s8, a6, a0
                  and         s8, s5, s3
                  slli        s6, t2, 24
                  slli        t0, t4, 29
                  mul         a4, s8, s1
                  c.andi      a5, -1
                  c.and       s1, a2
                  c.mv        t1, a5
                  srli        s8, s9, 23
                  or          s4, t1, a7
                  c.slli      gp, 4
                  c.addi      s9, -1
                  rem         s10, tp, s3
                  mulhsu      a5, s3, a7
                  c.addi4spn  a2, sp, 160
                  slli        a6, s7, 20
                  sltu        t3, t2, s5
                  c.srai      s1, 10
                  c.andi      s1, 16
                  sltu        s5, a3, a1
                  c.lui       ra, 22
                  sub         s6, a1, s5
                  c.mv        ra, t3
                  c.addi4spn  a3, sp, 160
                  c.and       a0, a0
                  mulh        s7, a4, s4
                  c.add       s3, a5
                  c.srai      s1, 22
                  c.andi      a3, 6
                  sltu        gp, tp, gp
                  slt         t6, s6, a1
                  rem         zero, t0, t0
                  srai        s4, t2, 19
                  c.or        a3, a2
                  addi        t1, a7, 524
                  slli        t4, s1, 12
                  sll         zero, a1, t1
                  c.srai      a4, 7
                  c.addi4spn  s0, sp, 672
                  slti        ra, s8, -1526
                  xori        s2, s5, 1522
                  c.mv        t3, t4
                  xor         t4, t3, s2
                  lui         s6, 337597
                  sltu        a4, s0, s3
                  c.and       a5, s0
                  lui         sp, 430553
                  div         zero, t4, a5
                  c.srli      a5, 7
                  slli        zero, a7, 12
                  ori         s2, s2, 523
                  c.mv        s8, t2
                  and         gp, zero, t1
                  sra         zero, a0, s5
                  lui         a6, 398612
                  and         s3, s1, a0
                  c.nop
                  c.andi      a2, -1
                  div         s0, t2, a4
                  sltiu       a6, a1, -381
                  c.xor       s1, s1
                  c.srli      s1, 4
                  xor         s7, t1, t2
                  mul         s2, t0, s0
                  add         s4, s0, t3
                  c.and       a5, a2
                  slti        s9, a5, -935
                  xori        a4, t6, -321
                  c.lui       t1, 6
                  mulhsu      t0, a6, ra
                  c.xor       s1, a2
                  mulhsu      zero, s11, s8
                  c.and       s1, a0
                  srai        sp, s0, 15
                  rem         t0, s3, s8
                  sltiu       zero, s6, -379
                  addi        t0, a7, -1112
                  ori         a3, gp, 118
                  slti        s10, t3, -1870
                  c.add       ra, s7
                  rem         s0, zero, tp
                  slti        s10, tp, 1271
                  mul         t2, t0, s1
                  c.slli      tp, 26
                  divu        t2, s9, s7
                  div         t1, s8, t4
                  sltiu       a2, s10, 1635
                  nop
                  c.addi16sp  sp, 144
                  mul         zero, a2, s6
                  c.nop
                  sra         ra, a4, t1
                  c.srli      s1, 30
                  mulhsu      zero, s1, t5
                  auipc       t5, 610296
                  sltiu       s10, s1, -131
                  c.addi4spn  a3, sp, 848
                  or          t6, s4, s11
                  srai        s5, s6, 7
                  c.and       s1, a3
                  xor         t3, a1, tp
                  ori         s10, a7, -682
                  c.addi16sp  sp, 112
                  lui         s5, 410170
                  lui         t6, 791748
                  srai        s9, s3, 1
                  srai        a2, a3, 20
                  c.nop
                  div         s9, zero, s1
                  ori         a5, s0, 1052
                  addi        a4, s10, 908
                  nop
                  c.mv        s10, a2
                  mulhu       t1, s6, a3
                  rem         sp, t5, s9
                  lui         t5, 34503
                  c.or        s1, a2
                  c.slli      s10, 16
                  nop
                  c.and       a3, a2
                  sltu        zero, sp, a1
                  slli        gp, s8, 0
                  lui         t2, 637991
                  mulh        t5, t4, t3
                  ori         t4, ra, 1192
                  c.li        s2, -1
                  auipc       t3, 61863
                  c.li        t6, 10
                  sra         tp, t6, t1
                  sltu        ra, ra, a4
                  ori         gp, t4, -1230
                  c.andi      s1, 28
                  srl         a6, s1, a4
                  sltiu       s4, s2, -1483
                  sltu        s9, s6, a5
                  and         t6, t0, zero
                  slli        t4, s3, 31
                  c.lui       a4, 2
                  mulh        s8, t3, a6
                  mulhu       t6, s1, s4
                  c.xor       s1, a0
                  mulh        zero, s3, s4
                  c.addi4spn  a2, sp, 352
                  sltu        s7, a5, t0
                  srai        sp, t4, 0
                  c.sub       a3, a2
                  andi        a5, a6, 1419
                  c.or        a2, s1
                  and         zero, s1, t1
                  c.add       s9, s3
                  srai        a2, t6, 23
                  c.sub       a3, a1
                  srai        t4, s4, 15
                  sub         s1, s6, a4
                  divu        t4, tp, s6
                  srli        zero, t6, 4
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_17
                  li         t5, 0x0
                  li         t3, 0x1
                  li         s10, 0x1
                  li         a4, 0x56430bd4
                  li         t4, 0x3ec94283
                  li         gp, 0x0
                  li         ra, 0x0
                  li         a0, 0x1
                  li         s2, 0x0
                  addi        sp, zero, -634
                  c.li        a6, 5
                  c.addi4spn  a3, sp, 976
                  divu        t4, a3, a7
                  nop
                  addi        a0, s0, 27
                  c.addi16sp  sp, -16
                  auipc       gp, 206459
                  c.nop
                  divu        a4, a1, s5
                  sub         t3, zero, t0
                  mulhu       t0, a3, s1
                  mulhsu      s4, gp, t0
                  c.addi4spn  a3, sp, 528
                  add         tp, t2, ra
                  lui         gp, 705381
                  sub         a4, t1, a5 #end riscv_int_numeric_corner_stream_17
                  c.addi      t4, 12
                  mulhu       t5, a1, s1
                  andi        t1, ra, -1277
                  c.addi4spn  a3, sp, 96
                  slti        sp, a5, 396
                  c.sub       s1, a3
                  and         t1, s6, t2
                  xori        a0, s5, 306
                  or          t6, a3, t6
                  sltiu       s9, t1, -1234
                  c.and       a0, a0
                  c.add       t6, s6
                  sub         s3, s9, t5
                  c.or        s1, s1
                  and         sp, tp, a4
                  c.nop
                  c.slli      s5, 21
                  c.sub       a3, a1
                  c.li        t4, -1
                  slti        zero, s4, 78
                  c.and       a0, a1
                  c.and       s1, a3
                  mul         zero, s8, s7
                  mulhu       t5, gp, tp
                  slli        gp, t1, 10
                  c.addi      gp, 14
                  add         s1, s9, t0
                  div         a0, gp, s7
                  slli        a2, ra, 3
                  c.addi16sp  sp, 208
                  c.xor       s1, a0
                  c.addi      t4, 7
                  sra         t5, gp, s9
                  c.slli      a6, 24
                  c.addi      a3, -1
                  addi        s0, ra, -731
                  c.andi      s1, 15
                  divu        s1, s0, t0
                  c.srai      a0, 2
                  c.addi4spn  s1, sp, 496
                  srli        s9, t0, 3
                  c.addi16sp  sp, 448
                  add         a0, a2, s9
                  c.xor       a5, s0
                  c.addi4spn  a5, sp, 128
                  mulhu       a6, t0, a1
                  mulhu       t2, s0, a2
                  slli        t3, t1, 29
                  and         s4, t1, s4
                  nop
                  sra         t2, t3, sp
                  add         a2, s4, t4
                  mul         t1, s10, s3
                  slt         s5, a7, s3
                  mulhsu      s3, tp, s7
                  divu        tp, s1, s6
                  sltiu       zero, sp, -178
                  xori        t3, a7, 1378
                  sll         s0, s5, a4
                  sra         s2, t1, sp
                  mulhu       zero, t1, tp
                  mulh        s7, s1, t1
                  c.li        a3, 21
                  or          s6, t2, a3
                  c.andi      s1, -1
                  srli        sp, s9, 17
                  rem         s3, zero, gp
                  c.mv        a5, s4
                  srl         a3, zero, t5
                  mulh        zero, a2, a2
                  c.srli      a2, 27
                  c.mv        s5, ra
                  c.addi4spn  s1, sp, 640
                  c.and       s1, a3
                  sll         s7, s10, a3
                  and         s3, a3, s10
                  nop
                  c.addi      tp, -1
                  c.lui       t0, 14
                  c.slli      ra, 31
                  mulhsu      tp, s4, zero
                  srli        a4, a1, 26
                  sltu        s6, s7, zero
                  mulh        s9, s0, t1
                  mulhu       s3, tp, s10
                  and         s1, s2, zero
                  c.slli      s5, 15
                  c.or        s1, a0
                  c.xor       a3, a2
                  srai        a5, a7, 6
                  mul         a4, a2, tp
                  sltiu       s9, t5, 236
                  and         tp, s4, s7
                  c.andi      a2, 26
                  xori        a2, s7, 938
                  rem         t2, gp, a7
                  c.sub       s0, a2
                  c.add       s1, gp
                  mul         a3, gp, s11
                  sub         zero, sp, zero
                  auipc       a5, 898396
                  auipc       s2, 582741
                  srli        zero, t4, 20
                  c.and       s1, a0
                  divu        tp, a4, t6
                  nop
                  xori        s4, sp, 508
                  andi        s10, ra, 1062
                  add         s1, a6, gp
                  and         s5, s0, a1
                  srl         s10, zero, t0
                  c.addi      gp, 25
                  slli        s1, t6, 17
                  c.slli      s8, 15
                  nop
                  c.slli      s6, 22
                  c.addi4spn  s1, sp, 96
                  c.slli      a0, 22
                  mulh        a6, s10, s5
                  c.addi      ra, 1
                  addi        t2, s0, 1219
                  sub         zero, s8, a7
                  auipc       s10, 518747
                  sub         a3, s3, a6
                  srai        a4, t3, 5
                  sltiu       s7, s0, 1256
                  mul         gp, t4, ra
                  sltu        a0, ra, s5
                  xor         a0, t5, s1
                  add         s5, a4, a5
                  mulhu       s3, t0, tp
                  div         zero, s6, s6
                  and         s1, s7, t3
                  rem         t6, a4, s5
                  mulhu       s4, t1, zero
                  sub         a3, t2, t2
                  srai        s2, s2, 5
                  sltiu       t0, t6, -1560
                  slli        a3, s4, 2
                  addi        s8, t6, 1614
                  divu        t3, gp, t0
                  addi        a5, a2, -1760
                  c.srai      a4, 7
                  mul         a3, t2, a5
                  sra         a6, a6, tp
                  sltiu       zero, t3, 1866
                  c.nop
                  divu        a5, ra, t5
                  c.add       ra, ra
                  c.srli      a5, 18
                  c.and       s0, a1
                  sra         t3, s8, s0
                  divu        zero, t4, t0
                  ori         ra, t1, -1181
                  andi        t5, s7, 810
                  div         t2, t0, t0
                  sltu        t3, t5, s6
                  addi        a5, s8, -504
                  xori        s8, s7, 1076
                  and         t0, s9, s2
                  c.addi4spn  a3, sp, 48
                  mulhu       s9, s8, a5
                  divu        s2, s4, t1
                  srl         gp, t3, tp
                  divu        t0, s4, t2
                  c.sub       a0, a2
                  slti        t0, s0, -1321
                  sltiu       t6, s6, 1725
                  rem         s4, s7, s2
                  slti        ra, s7, -1877
                  srl         ra, s7, a0
                  slt         t4, sp, s2
                  c.xor       s1, s1
                  c.andi      a3, -1
                  c.lui       s6, 10
                  addi        s1, t3, 1345
                  c.srli      a3, 25
                  srli        a2, t0, 5
                  rem         a5, t5, a2
                  nop
                  andi        t1, s9, -435
                  and         a4, s3, s1
                  xori        a4, t3, 1734
                  srl         s0, a4, s4
                  sltiu       t5, a7, 1666
                  slli        s6, t1, 24
                  sub         zero, t3, s9
                  c.lui       s6, 23
                  sra         t3, s10, t0
                  mul         s1, a7, tp
                  c.lui       a2, 31
                  c.addi      s1, -1
                  c.mv        s7, s8
                  sltu        a5, zero, tp
                  c.sub       a4, s1
                  c.andi      a0, -1
                  c.andi      a0, -1
                  andi        s0, s11, 1641
                  nop
                  srl         s3, ra, a6
                  sltu        a5, t2, t2
                  c.srai      a2, 14
                  slli        zero, s1, 12
                  slli        s4, zero, 24
                  srai        s3, tp, 17
                  or          s7, s3, s3
                  auipc       zero, 475776
                  srai        ra, s9, 10
                  c.xor       a3, a1
                  srai        s9, t1, 29
                  c.or        a3, a2
                  nop
                  c.addi16sp  sp, 112
                  c.lui       t1, 1
                  or          t5, s7, a5
                  srai        zero, tp, 17
                  c.andi      a0, 16
                  slti        t0, s1, -463
                  mulh        s4, t4, s2
                  and         s3, s0, s2
                  c.xor       s1, a0
                  sltu        s8, t1, s10
                  slt         s7, s4, s3
                  mulh        s10, a4, a5
                  c.and       a0, a5
                  mulh        zero, t4, s2
                  mulh        gp, a7, a4
                  srli        a0, a4, 15
                  c.li        s8, 1
                  xor         a0, s8, gp
                  c.srai      s1, 7
                  sra         ra, s3, t3
                  divu        t3, a4, s11
                  sltiu       t0, a3, -1262
                  sltiu       t4, s9, 288
                  xori        s6, t5, -933
                  sub         sp, s2, a0
                  div         zero, a5, sp
                  c.sub       s1, s0
                  auipc       zero, 167485
                  c.mv        a2, t4
                  divu        tp, sp, a7
                  srai        s9, s9, 18
                  and         a0, t6, s6
                  div         a0, a1, t3
                  and         s1, t3, s10
                  slt         a2, a6, t5
                  add         zero, a2, sp
                  addi        t4, s10, -41
                  sltiu       zero, tp, -1877
                  c.addi16sp  sp, 208
                  sub         a4, s5, s11
                  c.and       a0, a0
                  sra         s6, zero, t0
                  slt         a3, a5, t2
                  c.addi16sp  sp, 224
                  c.addi16sp  sp, -16
                  sll         t4, s1, s10
                  auipc       zero, 389006
                  andi        s9, t2, 539
                  c.xor       a4, a1
                  sra         tp, s0, s3
                  c.srai      s1, 10
                  or          zero, s0, t5
                  c.addi      a2, 7
                  c.sub       a5, a3
                  nop
                  srai        t0, s11, 12
                  divu        s9, zero, a5
                  ori         sp, s6, 817
                  lui         sp, 276442
                  srl         t4, s2, s8
                  srai        sp, a4, 20
                  c.sub       a0, s1
                  slti        zero, t1, 1407
                  mul         s8, tp, s4
                  sub         s2, sp, t4
                  srl         s3, s4, t3
                  slti        zero, s9, 1587
                  c.or        a0, a0
                  nop
                  srl         sp, s11, s9
                  divu        s5, s11, a0
                  c.li        s6, -1
                  c.addi4spn  a2, sp, 448
                  and         a5, a0, s9
                  andi        s10, t6, -1983
                  xori        s2, gp, 1839
                  c.li        s8, 3
                  sll         ra, t3, a7
                  c.srli      s0, 4
                  c.and       a3, a3
                  sltu        a5, s10, a6
                  c.srai      a0, 1
                  c.or        a3, a2
                  c.srli      s1, 16
                  c.or        s1, a3
                  c.li        s3, 4
                  c.add       t0, s11
                  nop
                  c.addi      ra, 16
                  mulhsu      ra, a1, t2
                  li         a4, 0x1 #start riscv_int_numeric_corner_stream_7
                  li         a5, 0x0
                  li         t6, 0x27297cfe
                  li         t5, 0x75460d12
                  li         a6, 0x75a2f469
                  li         t3, 0x0
                  li         s8, 0x1
                  li         s10, 0x1
                  li         s6, 0x34a88a34
                  li         a0, 0x1
                  addi        zero, a4, 1981
                  c.li        a4, 0
                  c.li        t0, -1
                  c.lui       s1, 10
                  c.addi16sp  sp, -16
                  c.mv        s8, a0
                  rem         t3, gp, s8
                  mul         s4, ra, t5
                  sub         t5, a3, sp
                  rem         zero, t5, zero
                  c.add       sp, a7
                  div         a4, gp, ra
                  auipc       a6, 359250
                  c.sub       a3, a0
                  mulh        s3, s9, t4
                  c.addi4spn  a2, sp, 544
                  div         a5, s0, s5
                  mulh        t2, s8, s3
                  c.sub       a0, a1
                  c.addi4spn  s1, sp, 592
                  addi        s4, s10, 1007
                  c.sub       s1, a5
                  c.lui       t6, 19
                  rem         s1, t0, a4
                  add         tp, sp, s4
                  addi        a5, a0, -1544
                  c.add       s3, s1
                  mulhu       s10, a6, t1 #end riscv_int_numeric_corner_stream_7
                  addi        t3, s1, 195
                  slti        a5, s6, -797
                  div         s2, s8, s7
                  c.lui       ra, 15
                  slt         t0, s7, s4
                  nop
                  divu        ra, sp, ra
                  sub         a0, t3, a6
                  c.li        s9, -1
                  ori         a4, t1, -1186
                  auipc       a3, 673111
                  c.addi16sp  sp, 192
                  div         a5, a3, t2
                  auipc       a0, 481350
                  c.or        a0, a3
                  c.srli      s1, 31
                  or          s6, s2, s11
                  c.add       a5, a3
                  and         a6, t4, s7
                  div         t4, s11, s8
                  sra         s5, s9, s9
                  c.add       ra, t3
                  lui         s0, 326936
                  c.lui       t4, 24
                  c.addi4spn  a3, sp, 416
                  and         s5, t2, gp
                  lui         s6, 566508
                  sra         zero, s11, s8
                  nop
                  srl         s2, t2, a6
                  sltiu       sp, s4, 1538
                  xor         zero, t3, s6
                  sll         s6, zero, s8
                  sub         zero, t1, s2
                  xor         t4, t1, s5
                  mulhsu      zero, a1, a0
                  c.lui       s3, 21
                  sltiu       s5, sp, 1233
                  c.addi16sp  sp, 448
                  c.xor       s0, s1
                  andi        a2, a7, 1862
                  xor         a6, s8, a7
                  c.addi16sp  sp, -16
                  c.add       t6, s11
                  slt         zero, sp, a5
                  xori        a6, a2, 2041
                  c.addi4spn  s1, sp, 672
                  mulhu       t6, ra, s6
                  andi        t4, a5, 320
                  c.or        a0, a1
                  and         s9, sp, s6
                  c.mv        t1, s7
                  div         s7, a2, s0
                  and         t1, gp, t5
                  c.mv        t1, gp
                  c.or        s1, a2
                  c.mv        t0, a2
                  slti        t6, s6, 1944
                  lui         t3, 754164
                  slli        t6, a0, 0
                  slti        zero, s10, 134
                  mulhu       s8, s4, s11
                  sll         s5, t4, s7
                  slli        s10, s6, 6
                  sltiu       t1, a2, -1771
                  sra         sp, zero, t0
                  sltiu       t0, a2, -1625
                  c.nop
                  add         a6, s7, gp
                  c.addi16sp  sp, 208
                  sltiu       sp, s9, -617
                  xor         s0, a6, s0
                  c.addi4spn  a0, sp, 480
                  auipc       ra, 56807
                  c.and       a3, a3
                  c.nop
                  or          t3, a3, s0
                  sltu        a3, t4, t0
                  auipc       tp, 167742
                  lui         s5, 374509
                  mulhsu      gp, t6, a3
                  c.or        s1, a1
                  nop
                  or          s10, gp, t6
                  mul         s4, s7, t0
                  sltiu       s10, a1, -824
                  slt         t0, zero, s7
                  auipc       s3, 657052
                  mul         a0, s4, s9
                  sra         tp, t0, s10
                  auipc       tp, 223708
                  sltu        ra, s5, t3
                  sltu        s1, s10, t5
                  div         t5, s1, t6
                  divu        a4, t0, t1
                  andi        s0, s5, 564
                  or          sp, t4, s1
                  c.add       s9, t1
                  c.andi      a2, -1
                  ori         t3, s0, -1292
                  xor         s0, ra, ra
                  mulh        s3, s0, s3
                  sltu        s1, s4, t2
                  andi        t4, a7, -1757
                  and         a4, s0, s6
                  c.addi4spn  s1, sp, 800
                  mulhu       zero, t5, t6
                  divu        zero, s10, t4
                  srai        s0, t0, 6
                  c.add       a2, a7
                  addi        t5, s5, 1903
                  c.lui       a2, 13
                  nop
                  auipc       s4, 8973
                  sltu        gp, zero, s7
                  srai        s7, s8, 16
                  sll         t4, s0, t1
                  c.addi16sp  sp, -16
                  sltiu       t4, s5, -809
                  c.add       s2, s9
                  c.slli      t5, 27
                  slt         s3, tp, s5
                  xori        zero, s0, -1988
                  rem         s5, t5, a0
                  c.sub       a0, a3
                  and         zero, t1, tp
                  c.nop
                  c.lui       ra, 2
                  div         a3, t6, t5
                  andi        a0, s1, -1666
                  and         s3, a1, a5
                  c.and       a2, a2
                  mulhsu      s1, s11, a3
                  c.and       s1, a2
                  mulhsu      a5, a4, zero
                  mul         t5, a5, a5
                  srai        s6, s3, 18
                  sub         a5, t2, a6
                  addi        s4, s5, 1885
                  sltiu       s10, a4, 596
                  c.and       a3, a3
                  c.li        a0, -1
                  sltu        t4, tp, s7
                  c.lui       t3, 14
                  andi        s8, s8, 105
                  mulh        t0, s8, t0
                  slti        s10, a3, -609
                  and         s7, a6, a5
                  c.andi      s1, -1
                  srai        s2, s11, 27
                  mulhu       a3, s3, t2
                  c.li        ra, 24
                  c.andi      s1, 24
                  ori         s5, t2, -1332
                  rem         s9, a5, a3
                  srl         t4, s3, s7
                  nop
                  sll         a6, a1, s5
                  c.addi4spn  a0, sp, 368
                  mulh        t0, a4, s10
                  c.xor       s1, a2
                  c.li        s1, 30
                  nop
                  c.nop
                  xor         zero, a3, t5
                  c.add       t5, a1
                  c.lui       s8, 24
                  c.addi16sp  sp, -16
                  c.srli      a3, 11
                  andi        t5, a2, -1368
                  slli        tp, s5, 3
                  add         a0, s9, s8
                  c.li        s3, -1
                  c.add       t5, a3
                  sra         t1, sp, a3
                  c.xor       a0, a0
                  c.addi      s1, -1
                  sub         s9, t6, tp
                  srai        t1, s10, 20
                  c.andi      s1, -1
                  slt         s8, sp, s9
                  c.xor       s0, a3
                  c.xor       a4, a3
                  lui         s3, 1047992
                  srai        zero, a6, 13
                  c.or        a3, a3
                  c.add       t4, a3
                  mulh        s8, s2, s11
                  and         t5, s5, t5
                  slti        a0, s11, -829
                  nop
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_11
                  li         t5, 0x4bbf45eb
                  li         a2, 0x13bc9fb1
                  li         t4, 0x0
                  li         t3, 0x0
                  li         s9, 0x0
                  li         ra, 0x1
                  li         a4, 0x4a256e0d
                  li         s10, 0x0
                  li         tp, 0x2556d9aa
                  auipc       s5, 421370
                  div         s6, t3, t6
                  c.addi16sp  sp, 256
                  add         zero, s2, s10
                  sub         s3, t1, s5
                  mulhu       a3, a6, sp
                  lui         s9, 257511
                  rem         s3, s3, a0
                  c.nop
                  c.nop
                  add         ra, t3, t5
                  c.nop
                  c.addi16sp  sp, 400
                  divu        t1, s11, s8
                  mul         a3, ra, s8
                  c.mv        a3, s6
                  sub         t5, gp, gp
                  mulhsu      sp, s8, t3
                  c.mv        a5, t2
                  mulhu       a3, a3, s2
                  sub         zero, a1, s11
                  c.addi16sp  sp, -16
                  auipc       zero, 26575
                  c.addi4spn  s1, sp, 496
                  c.lui       t3, 23
                  c.li        s2, 26
                  mulh        s1, a2, t5
                  c.addi16sp  sp, 368
                  srli        s0, a0, 20
                  mul         t4, t1, s10
                  c.or        a0, a0
                  c.xor       s1, a4
                  sltiu       t4, ra, -1998
                  xor         s6, a0, s0
                  c.nop
                  c.slli      t0, 29
                  c.xor       a2, a3
                  c.add       ra, s1
                  sub         s7, t6, t5
                  divu        s1, s3, t5
                  lui         zero, 416395
                  auipc       zero, 872627
                  slti        a3, t4, 500
                  and         t1, s11, zero
                  and         gp, s2, s11
                  c.lui       s7, 10
                  sltiu       t5, a4, -792
                  sltu        a6, s9, t5
                  sra         s1, a6, t2
                  sltu        t3, t5, s2
                  addi        s1, ra, -1053
                  c.lui       t3, 31
                  sltiu       s4, a2, 1164
                  c.slli      s5, 17
                  div         zero, ra, s8
                  andi        t6, t2, -321
                  slt         s7, a2, zero
                  c.lui       s3, 10
                  lui         s4, 1042547
                  div         a6, a3, s10
                  divu        ra, zero, s3
                  auipc       a5, 1042993
                  c.sub       a0, a2
                  xor         ra, s8, s4
                  srai        t2, a7, 1
                  auipc       s7, 35156
                  c.or        a3, a1
                  srai        sp, s1, 19
                  mulh        s7, t5, zero
                  c.slli      t6, 12
                  srl         t6, s1, s8
                  nop
                  andi        s7, s5, 1012
                  divu        t2, s11, sp
                  c.addi4spn  a5, sp, 528
                  addi        zero, s8, -1897
                  slti        t2, s3, -44
                  add         t6, t0, s3
                  andi        s9, tp, -755
                  divu        s10, s11, s11
                  auipc       s2, 664132
                  sltiu       a5, a3, 904
                  c.sub       a0, a0
                  c.srai      a3, 1
                  mul         t4, a2, s6
                  and         s3, a1, s11
                  c.lui       ra, 11
                  c.andi      s1, 11
                  c.lui       s9, 24
                  and         a4, a3, ra
                  sra         s2, t5, a1
                  c.sub       s1, s1
                  xor         gp, t3, s4
                  c.addi16sp  sp, -16
                  srai        t0, t5, 21
                  lui         s2, 883681
                  divu        s5, s9, s3
                  div         a2, sp, tp
                  andi        gp, s11, -1775
                  c.and       s1, a2
                  div         sp, s11, s3
                  srai        a6, a7, 29
                  addi        t6, t2, 1881
                  andi        s1, t2, 1947
                  mulhu       s10, gp, t3
                  auipc       s0, 893
                  ori         s1, t1, -65
                  sub         t6, a4, s1
                  mul         t2, gp, a4
                  andi        t5, a1, 326
                  c.addi4spn  a5, sp, 480
                  c.slli      t1, 5
                  srl         zero, s6, s10
                  sll         ra, s10, a3
                  sll         s8, t4, tp
                  or          s0, a6, a1
                  slti        s10, tp, -1523
                  lui         gp, 1044089
                  and         s9, t6, tp
                  auipc       t6, 992092
                  c.addi16sp  sp, 416
                  sll         s7, a5, t2
                  srli        s8, tp, 20
                  mulh        a6, a4, s2
                  div         s1, t1, t4
                  mulh        gp, s2, s6
                  add         t6, s0, zero
                  slli        t5, s2, 22
                  add         s3, s4, t1
                  andi        s8, a5, 1677
                  rem         t4, a3, a5
                  xor         s8, s8, t1
                  c.addi4spn  s1, sp, 48
                  c.lui       a5, 1
                  mul         a6, gp, t2
                  c.add       t5, s7
                  srl         zero, s6, t4
                  slti        s10, s11, 590
                  andi        zero, a3, -32
                  addi        tp, s3, -1887
                  c.xor       a0, a1
                  ori         zero, a7, -1861
                  mul         s9, gp, t6
                  mulh        zero, a2, t2
                  c.slli      a5, 5
                  c.slli      s9, 1
                  sra         zero, t0, a5
                  divu        zero, t2, a0
                  c.lui       s5, 7
                  c.li        ra, 26
                  c.and       a0, a0
                  c.andi      a3, -1
                  c.add       s2, t0
                  c.lui       s6, 22
                  mulhsu      s9, t3, ra
                  c.slli      t1, 20
                  c.add       t6, s3
                  rem         gp, t4, zero
                  slti        t2, s9, -70
                  divu        s4, t6, a3
                  srli        a6, gp, 8
                  c.and       s1, a3
                  c.or        s1, a2
                  add         zero, t2, gp
                  div         s10, s7, s1
                  c.andi      s1, 24
                  rem         a3, a4, a1
                  c.addi16sp  sp, 464
                  nop
                  c.srai      a0, 15
                  nop
                  c.or        s1, a1
                  divu        t0, t1, a6
                  c.addi4spn  a2, sp, 144
                  sltiu       sp, s8, 952
                  sltu        s8, t5, a6
                  c.addi      s3, -1
                  add         t6, t0, s6
                  ori         s6, t2, -1675
                  c.and       s1, a3
                  ori         t0, t3, 1540
                  xori        zero, a3, -1087
                  sltiu       s1, s6, 851
                  c.li        a3, -1
                  ori         zero, sp, -498
                  c.add       a6, ra
                  c.addi4spn  a5, sp, 208
                  slt         a0, a5, s7
                  ori         a4, t2, -1939
                  c.addi      gp, -1
                  nop
                  or          s0, s8, t0
                  c.sub       a3, a0
                  slti        t5, t6, 1240
                  rem         t2, s6, s3
                  mulh        t2, t5, s5
                  c.srai      a3, 2
                  div         s5, s9, a3
                  c.srai      a2, 31
                  xori        zero, t6, -120
                  c.addi      t1, -1
                  sltiu       a6, gp, 27
                  c.sub       a2, a1
                  c.xor       a3, a0
                  c.and       s1, a2
                  or          a3, ra, a4
                  c.slli      s1, 14
                  rem         zero, tp, s4
                  and         t0, a5, sp
                  div         s1, t4, t1
                  slti        a0, sp, -1814
                  mulhsu      t2, a7, s1
                  auipc       a0, 817930
                  c.andi      s1, 30
                  c.lui       a4, 18
                  sltiu       s8, gp, -670
                  sltiu       s4, t4, 1925
                  c.sub       s1, a5
                  addi        zero, t3, -454
                  or          a6, s3, t2
                  auipc       s2, 145340
                  sltiu       zero, s3, 576
                  sltiu       zero, tp, -1617
                  c.nop
                  c.lui       a6, 5
                  c.addi4spn  s1, sp, 208
                  mulhsu      s8, ra, t6
                  mul         ra, s9, s4
                  slli        a5, s6, 29
                  rem         zero, tp, t4
                  sll         ra, s9, sp
                  c.lui       ra, 27
                  div         s2, a5, t5
                  rem         s2, ra, s5
                  and         sp, t4, s6
                  c.addi      s10, -1
                  c.mv        a6, s7
                  mulhu       s2, a7, s10
                  divu        ra, sp, a5
                  c.srai      s1, 10
                  c.xor       a3, a2
                  div         s9, s10, a4
                  mulhu       a6, s3, s5
                  ori         s5, a3, -1679
                  sltiu       s5, a5, -1892
                  c.srli      s1, 20
                  c.add       s8, s9
                  c.mv        s1, t1
                  c.sub       s1, a0
                  sra         tp, a7, a2
                  c.slli      t6, 12
                  srai        zero, t1, 18
                  nop
                  c.andi      a0, 17
                  c.andi      a5, 19
                  c.li        tp, 15
                  sltu        s5, t4, s6
                  c.mv        s3, s9
                  divu        s8, t5, ra
                  sltu        zero, s4, s0
                  sltiu       zero, s5, -1081
                  sra         s10, s3, t0
                  c.li        t2, 28
                  srai        t4, a3, 30
                  sub         a2, a3, a0
                  auipc       s4, 252290
                  nop
                  divu        a0, t1, a2
                  xor         a5, s2, a5
                  srli        s2, s7, 10
                  andi        zero, s4, 1496
                  mulhsu      t6, sp, s1
                  c.slli      t4, 9
                  slt         sp, s7, ra
                  addi        s2, s4, 1492
                  c.and       a0, a2
                  srl         zero, s6, t2
                  nop
                  c.mv        s3, s2
                  xor         a2, s5, t6
                  sub         a2, t0, s6
                  c.srli      s1, 6
                  c.mv        a5, t5
                  c.slli      s2, 14
                  andi        s9, zero, -1126
                  auipc       ra, 120229
                  xor         a4, s7, tp
                  sll         s7, s3, a5
                  c.or        a3, a2
                  c.lui       s10, 31
                  mulhsu      s2, sp, s4
                  sub         s4, a1, s10
                  andi        s7, t2, -1662
                  sra         a0, s0, s4
                  addi        gp, s2, -1497
                  add         t6, a7, t6
                  mul         s4, s1, a6
                  c.lui       t1, 27
                  lui         ra, 625480
                  li         t6, 0x1 #start riscv_int_numeric_corner_stream_18
                  li         t5, 0x0
                  li         t4, 0x1
                  li         s10, 0x1a64721e
                  li         s1, 0x0
                  li         t3, 0x0
                  li         a2, 0x2fa03781
                  li         s7, 0x768e2ad4
                  li         a3, 0x3aed12eb
                  li         s0, 0x0
                  c.li        t0, 28
                  div         s10, a3, t0
                  addi        ra, a1, -1506
                  c.add       a2, a1
                  addi        t4, a1, 36
                  nop
                  c.addi      a5, -1
                  c.addi      s3, -1
                  nop
                  div         t2, ra, sp
                  mulh        s2, t6, s5
                  c.li        s3, 14
                  c.li        s8, -1
                  add         zero, a6, zero
                  mulhu       s0, a4, s4 #end riscv_int_numeric_corner_stream_18
                  c.addi16sp  sp, 448
                  c.addi16sp  sp, -16
                  xori        s6, a6, -1149
                  c.lui       tp, 5
                  c.xor       s1, s0
                  div         zero, a5, sp
                  c.addi      s9, 9
                  sltu        t1, s4, s4
                  andi        t4, t4, -25
                  slli        t1, t3, 23
                  div         t0, tp, gp
                  sll         a5, t3, t1
                  c.add       t3, a1
                  xor         gp, zero, a1
                  andi        t3, t3, 1498
                  or          a2, a7, s6
                  auipc       t6, 65546
                  sra         s10, a1, s5
                  c.srli      a4, 1
                  and         s8, s4, t1
                  c.add       s6, t3
                  c.add       s6, s0
                  xori        s8, s7, -809
                  xor         tp, t6, a3
                  rem         s2, s5, a4
                  c.li        s2, 7
                  mulhu       gp, s1, t3
                  auipc       t1, 788313
                  xori        zero, s6, 1139
                  c.and       a0, a2
                  xor         t1, a5, s5
                  c.addi16sp  sp, 160
                  srli        s4, s8, 14
                  c.addi16sp  sp, -16
                  c.xor       s1, a3
                  lui         t5, 430726
                  c.addi      ra, -1
                  srli        ra, s4, 4
                  ori         zero, t3, -1679
                  xori        s7, a6, 561
                  div         a5, zero, a3
                  mulhsu      a4, s10, s0
                  divu        ra, t0, a4
                  slt         t4, s11, t1
                  c.nop
                  slt         zero, s6, s1
                  c.or        a3, a1
                  c.srli      a0, 2
                  lui         ra, 119418
                  c.addi      s3, 7
                  auipc       t2, 294274
                  addi        a5, s3, -191
                  sll         a0, a0, s5
                  c.or        a0, s1
                  c.andi      a3, -1
                  c.slli      s6, 19
                  mul         s1, s4, a1
                  c.slli      t6, 1
                  c.lui       t4, 25
                  c.addi16sp  sp, 80
                  c.andi      a0, 8
                  mulhsu      s3, t4, ra
                  or          s5, gp, t1
                  srl         s6, s11, s9
                  c.addi16sp  sp, -16
                  c.andi      a3, -1
                  andi        s0, a6, -450
                  c.li        s7, 22
                  c.andi      a5, 5
                  ori         t5, s5, 1594
                  c.and       s1, a1
                  ori         t5, s10, -1087
                  mulhsu      s10, gp, t3
                  rem         s4, s6, t4
                  srl         zero, s5, s5
                  c.and       a3, a1
                  c.andi      a3, 17
                  srli        gp, t4, 10
                  c.add       a6, s7
                  ori         s3, tp, -880
                  c.addi      tp, 24
                  slti        ra, a3, 1410
                  div         s8, t6, gp
                  c.srli      a4, 6
                  div         s4, s10, t5
                  mul         zero, t4, a1
                  c.lui       a5, 27
                  c.li        ra, -1
                  sll         s6, t6, s5
                  c.mv        s0, s7
                  divu        s8, ra, a5
                  xori        sp, t5, -257
                  srai        t4, t3, 2
                  c.or        s1, a1
                  auipc       s5, 555045
                  c.add       t6, t0
                  c.addi      t2, 25
                  and         t1, s4, a5
                  c.mv        t5, s9
                  srl         t1, s6, a3
                  rem         s10, t0, s8
                  c.li        s5, -1
                  sll         a5, s1, t4
                  addi        a4, tp, -316
                  srai        s10, zero, 27
                  or          tp, s0, zero
                  c.andi      a4, -1
                  mulhu       t1, s8, t1
                  sra         t1, t5, sp
                  srli        s8, s7, 14
                  c.srai      a3, 25
                  sra         gp, gp, a7
                  auipc       s9, 379832
                  auipc       s1, 574165
                  c.addi      tp, -1
                  or          s2, s9, s3
                  srl         t2, s6, t2
                  c.andi      a0, 30
                  c.srli      a2, 21
                  nop
                  srli        s7, s11, 11
                  and         s8, s2, tp
                  add         ra, s7, s2
                  rem         zero, t4, zero
                  mulhsu      s4, a6, sp
                  andi        a6, a4, -2013
                  c.lui       t3, 28
                  c.li        a0, -1
                  auipc       s10, 522751
                  c.addi4spn  a5, sp, 992
                  xori        ra, a5, -344
                  srli        t3, s5, 29
                  slt         s8, s10, s10
                  mulhsu      s7, s0, t5
                  add         s8, s2, tp
                  sra         a2, t6, s1
                  and         s10, a0, t3
                  srli        a6, gp, 10
                  c.add       t6, a6
                  and         s1, a1, a2
                  c.srli      s1, 9
                  c.slli      a0, 11
                  c.addi      t6, 16
                  add         ra, zero, a3
                  sltiu       a0, a1, -445
                  sub         t5, ra, a2
                  xori        a4, tp, -797
                  and         s9, s1, t4
                  c.andi      a5, -1
                  c.lui       ra, 9
                  c.srli      a3, 31
                  c.addi4spn  a0, sp, 96
                  div         sp, t6, a6
                  c.add       ra, s3
                  and         s5, s1, a4
                  c.srai      s1, 6
                  mulh        s9, a4, tp
                  c.mv        a2, ra
                  slti        a5, s6, -2000
                  c.lui       s9, 14
                  mulhsu      sp, t5, s2
                  c.li        ra, 6
                  and         s0, s8, t1
                  c.lui       s1, 31
                  slti        zero, a5, 1307
                  xor         s10, s2, sp
                  and         zero, zero, s2
                  divu        zero, s5, s3
                  c.srai      s1, 8
                  c.andi      s1, -1
                  c.addi      s4, -1
                  c.sub       a3, a2
                  divu        gp, tp, s6
                  divu        s5, zero, s9
                  or          s2, a0, a1
                  sra         s7, s3, s9
                  xori        t4, a1, -1192
                  sra         s0, tp, s0
                  srli        s7, a4, 3
                  c.addi16sp  sp, -16
                  div         tp, ra, s11
                  c.addi4spn  s1, sp, 1008
                  addi        zero, t1, -1420
                  sra         s4, sp, gp
                  addi        zero, s6, -1248
                  c.lui       s4, 7
                  add         ra, t6, s11
                  c.nop
                  rem         t4, t4, tp
                  slti        tp, tp, -1405
                  slti        t6, t1, -1195
                  c.li        t6, -1
                  andi        t4, a2, -1241
                  add         s0, t1, t2
                  c.addi      s9, 6
                  c.nop
                  srli        t2, a4, 14
                  xori        s6, t3, -1741
                  lui         a3, 765261
                  rem         s3, s9, sp
                  ori         a5, s11, 887
                  c.addi16sp  sp, 144
                  srai        s1, s2, 29
                  c.addi4spn  a2, sp, 704
                  c.addi16sp  sp, 416
                  c.li        ra, -1
                  c.xor       s1, a1
                  sll         s1, a1, s11
                  slli        a0, a2, 4
                  addi        s3, t1, -1863
                  c.srai      a5, 16
                  c.xor       a0, a1
                  srai        a3, ra, 10
                  slli        t6, tp, 11
                  c.li        t0, 17
                  c.nop
                  sltiu       s8, a6, -872
                  sra         s9, s9, s4
                  c.srai      a4, 11
                  and         t1, s7, s3
                  srai        t5, t2, 4
                  add         s4, ra, s0
                  c.lui       a4, 24
                  c.add       t5, s1
                  c.and       a0, s0
                  slti        s5, s3, -1157
                  mul         ra, s7, ra
                  c.li        t2, -1
                  c.mv        ra, t4
                  rem         t1, a2, a4
                  or          s7, t1, s7
                  sltiu       t4, t6, -1029
                  divu        sp, a1, t4
                  c.srli      s1, 17
                  c.and       s1, a3
                  sltiu       t6, s7, -1450
                  sltu        t1, a5, s9
                  div         t1, a2, s10
                  and         t3, s6, t5
                  and         s6, s2, s1
                  sltiu       zero, s2, -994
                  c.li        a6, -1
                  ori         tp, tp, 316
                  c.xor       a0, a1
                  c.slli      t6, 29
                  rem         s4, s2, t6
                  c.or        a0, a0
                  sll         a5, s9, s7
                  srai        a6, t2, 15
                  mulhsu      s5, s0, a4
                  mulh        gp, s2, a5
                  srai        a0, s5, 23
                  c.xor       s1, s0
                  sub         s10, s2, zero
                  ori         s6, s8, 1868
                  c.li        ra, 24
                  sll         s9, s7, t3
                  srli        a0, s6, 3
                  slli        a0, s10, 8
                  nop
                  c.add       ra, gp
                  addi        t3, s7, 1058
                  rem         ra, s5, a1
                  srai        a6, a7, 14
                  lui         t4, 506967
                  sll         tp, a1, s6
                  div         a4, t4, a1
                  c.addi4spn  s1, sp, 448
                  nop
                  srai        sp, a1, 18
                  c.nop
                  or          t5, a3, s3
                  c.li        t3, -1
                  c.srli      a5, 20
                  c.mv        ra, s6
                  c.addi      t6, 19
                  c.li        ra, 1
                  and         s5, s9, s8
                  sll         t2, t1, s7
                  c.addi      s0, -1
                  sra         s8, s8, s8
                  add         sp, s11, t5
                  c.addi      ra, -1
                  c.xor       s1, s1
                  ori         s0, t0, -13
                  c.li        s1, 15
                  c.addi4spn  s1, sp, 608
                  sltu        a5, zero, ra
                  auipc       a5, 265910
                  srl         s3, s0, t6
                  c.srai      a2, 16
                  c.sub       s0, a3
                  c.li        ra, -1
                  andi        t0, t4, -995
                  or          zero, s6, a5
                  divu        sp, s0, s6
                  c.slli      s10, 23
                  c.addi      a2, -1
                  auipc       a2, 195636
                  divu        s5, t0, a7
                  c.slli      ra, 10
                  c.addi4spn  s1, sp, 208
                  c.nop
                  c.andi      s1, 1
                  and         sp, s6, ra
                  xori        a5, s3, 1611
                  lui         a6, 879802
                  srli        t3, a4, 9
                  c.li        ra, -1
                  div         t4, a4, a3
                  c.andi      a0, -1
                  ori         zero, t1, -1506
                  c.sub       s1, a1
                  srli        zero, gp, 10
                  nop
                  srai        s1, a3, 1
                  mul         s8, s8, a6
                  lui         sp, 863630
                  sub         s5, s6, s1
                  sll         s10, t3, t4
                  sra         s4, t0, zero
                  sltiu       s1, t6, -1950
                  c.addi4spn  a2, sp, 560
                  or          s2, t1, t0
                  c.slli      ra, 24
                  sltu        s6, sp, s9
                  xori        t0, s8, 128
                  slli        s6, s10, 31
                  slt         s6, a3, s5
                  c.addi4spn  s1, sp, 336
                  mulhu       a4, s0, s4
                  addi        a3, s6, 775
                  slli        t1, tp, 21
                  xori        t0, gp, 1578
                  c.lui       a0, 28
                  srl         t0, s6, s4
                  mulhu       s4, t6, t0
                  c.slli      ra, 11
                  add         a4, tp, t5
                  c.andi      a0, -1
                  c.and       a0, a5
                  slt         ra, a0, a1
                  mulhsu      zero, s0, a3
                  addi        t4, t3, 1565
                  srl         a4, a2, s7
                  xor         s2, s2, t6
                  rem         t0, a6, a4
                  divu        s1, s8, s6
                  c.mv        t0, s2
                  addi        zero, s0, -1342
                  add         a6, s10, tp
                  addi        t6, s3, -2024
                  and         a5, s7, t1
                  c.srai      s1, 30
                  c.addi16sp  sp, -16
                  srli        t1, a1, 2
                  c.addi4spn  a0, sp, 1008
                  lui         tp, 413740
                  div         a5, s10, s1
                  ori         ra, t0, -617
                  slli        sp, zero, 13
                  lui         s9, 537149
                  lui         s8, 954771
                  addi        s5, t4, 1483
                  c.srli      a2, 23
                  div         s9, s1, s6
                  c.or        a3, a1
                  sltu        t2, s9, s3
                  slli        t6, ra, 7
                  sll         t1, t5, s10
                  nop
                  c.mv        s3, a3
                  sltu        s7, t3, s5
                  c.addi16sp  sp, 224
                  slt         a6, s7, s1
                  c.lui       s3, 25
                  c.andi      a0, 19
                  srl         t5, t3, sp
                  sub         s2, t0, s7
                  divu        s1, ra, a5
                  c.srli      s1, 10
                  addi        s1, s2, 1237
                  c.nop
                  srli        t2, a5, 29
                  sltu        a0, gp, t3
                  divu        t3, a6, t5
                  auipc       a0, 738140
                  mulhsu      a2, s11, s10
                  slt         t1, s9, s9
                  div         t3, s8, a0
                  andi        a2, a1, 404
                  sub         t0, s11, s11
                  mul         s5, s1, s10
                  srli        t0, a2, 2
                  or          a5, gp, sp
                  sll         a6, s10, gp
                  slti        ra, t4, 458
                  srl         s9, t0, s3
                  ori         zero, t4, 611
                  slti        s1, s2, -6
                  c.mv        t1, ra
                  sub         zero, s8, s9
                  rem         t4, t0, sp
                  c.add       s8, tp
                  xori        s5, s6, -91
                  and         ra, s0, a0
                  sra         s10, a7, s7
                  mul         s8, a6, t3
                  mulhu       s1, t0, a5
                  auipc       s1, 981104
                  sub         s7, ra, s6
                  slti        s1, t3, 679
                  slti        t2, a4, 248
                  c.addi      a5, 11
                  addi        a4, s7, -1386
                  mulhsu      ra, a7, t1
                  srli        s8, gp, 21
                  c.addi16sp  sp, -16
                  slli        s2, a7, 24
                  c.xor       a0, a2
                  srl         s4, a2, s3
                  srai        t4, a0, 1
                  rem         s1, s4, s10
                  slti        sp, a6, 641
                  or          zero, s11, a4
                  c.xor       s1, s1
                  mulh        s1, sp, s8
                  sra         zero, s6, a5
                  mulh        t4, s4, t2
                  andi        s3, a7, -979
                  lui         a2, 648655
                  srai        zero, a6, 16
                  mulhsu      a5, s3, a0
                  sra         tp, a1, s1
                  c.mv        s1, s0
                  rem         zero, a5, t4
                  sltu        s2, s4, s3
                  or          t4, s9, t6
                  slt         s5, a2, t0
                  mulh        s5, s7, s10
                  sltu        a6, a2, s4
                  srl         t4, s6, t5
                  or          a6, sp, a4
                  ori         s2, a1, 1221
                  srli        zero, t2, 31
                  c.xor       s0, a2
                  c.slli      s5, 14
                  c.srai      s1, 5
                  slti        a6, a3, -266
                  sll         a0, t4, s3
                  andi        a6, a5, -2028
                  div         s1, tp, t2
                  mulh        a5, t2, s4
                  auipc       s1, 4991
                  addi        t4, ra, 1125
                  c.add       s8, s3
                  c.or        s1, a1
                  c.add       ra, s10
                  slti        a4, t1, -1065
                  c.or        a3, a0
                  add         s0, s3, t0
                  c.slli      t0, 4
                  c.xor       s1, s1
                  add         t6, a5, sp
                  slti        t0, a7, -1188
                  c.slli      s0, 6
                  mulh        tp, s9, t1
                  slt         t1, sp, s4
                  c.xor       a3, a3
                  addi        t1, s9, -2032
                  nop
                  div         s4, s10, s11
                  c.xor       s1, a3
                  ori         s3, s3, -1465
                  xor         s6, s5, a7
                  auipc       a0, 772703
                  or          zero, t0, s4
                  and         s1, t6, s3
                  c.sub       s1, a3
                  sltu        t3, a0, a6
                  c.slli      s7, 12
                  srai        a4, t2, 23
                  rem         a4, s5, s5
                  mulhsu      zero, a7, s3
                  c.xor       s1, a2
                  lui         t4, 110212
                  c.sub       s1, a0
                  andi        s5, sp, -1376
                  c.nop
                  mul         s7, a6, gp
                  c.li        a2, 9
                  addi        t5, t1, 51
                  mul         s1, s9, s5
                  c.and       a0, a3
                  c.srai      a0, 11
                  sll         s10, a1, t6
                  sll         t2, ra, t1
                  divu        t1, a6, s6
                  sltiu       t5, a4, 1114
                  c.addi16sp  sp, 208
                  c.andi      a2, 27
                  srl         t3, s8, t5
                  c.srai      s1, 6
                  c.or        s1, a3
                  andi        s9, s1, 334
                  ori         ra, a7, -1329
                  c.addi4spn  a0, sp, 80
                  srli        gp, a6, 7
                  c.srli      a5, 8
                  mulh        a6, s11, a7
                  c.slli      t4, 4
                  mul         zero, t4, t0
                  or          t6, t1, tp
                  mulh        t4, s2, t4
                  c.mv        a5, gp
                  sub         a6, s0, s9
                  div         t4, s7, gp
                  c.addi      a0, 13
                  mulh        gp, s4, a4
                  srl         a3, s10, s1
                  lui         t6, 471255
                  sub         zero, sp, s9
                  c.and       a0, a1
                  slli        s6, t6, 25
                  mul         s9, s0, a0
                  c.xor       a3, a2
                  c.addi16sp  sp, -16
                  slli        t4, t2, 9
                  and         a6, s0, s6
                  sll         s10, t5, t5
                  or          a2, t2, a4
                  c.add       s4, ra
                  nop
                  slt         a6, s11, a3
                  c.srli      a0, 25
                  c.addi4spn  a3, sp, 160
                  sltu        s6, s7, s5
                  c.srai      a2, 21
                  andi        s7, s10, -1255
                  sub         t5, s5, s8
                  and         t4, a6, s6
                  lui         t1, 450159
                  c.addi4spn  a4, sp, 160
                  addi        ra, t3, 520
                  and         t4, a4, s5
                  srai        s0, t5, 4
                  mulhsu      a3, a0, tp
                  slt         s1, a2, gp
                  c.mv        s4, s1
                  rem         t4, t1, sp
                  ori         a3, a4, 275
                  slt         s6, a7, t4
                  c.srai      a3, 29
                  mulhu       t4, t4, t6
                  sltiu       s9, s9, 1462
                  c.srli      a3, 1
                  c.andi      a3, 10
                  c.or        a0, a1
                  c.nop
                  c.and       s1, a3
                  mulhu       zero, s4, s0
                  auipc       s7, 253269
                  c.srli      s1, 30
                  andi        zero, a2, -1962
                  sub         zero, a6, gp
                  c.addi      t5, 20
                  xor         t6, s7, s2
                  c.xor       s1, a0
                  mulhsu      zero, s1, t4
                  srli        zero, s9, 8
                  c.or        a2, a2
                  c.addi      t5, -1
                  mul         s2, s4, tp
                  c.addi4spn  s1, sp, 160
                  sll         t0, ra, zero
                  c.addi4spn  s1, sp, 944
                  c.mv        s6, gp
                  c.slli      s3, 6
                  sltiu       ra, t0, 838
                  c.addi4spn  s1, sp, 448
                  sltu        zero, zero, t3
                  or          s1, t5, sp
                  c.and       s1, s1
                  srai        s9, t2, 9
                  sltiu       a3, t1, -1798
                  sub         tp, s11, s11
                  nop
                  c.or        s1, s0
                  mulh        gp, t4, s4
                  c.li        ra, -1
                  c.xor       s1, a0
                  or          s8, t0, a6
                  ori         s10, s2, -715
                  c.andi      a3, 27
                  sub         zero, s9, a5
                  divu        t5, s6, s2
                  and         s2, s11, s8
                  rem         a3, t4, s11
                  c.andi      s1, 26
                  or          a6, t3, t6
                  c.nop
                  c.li        s1, 2
                  mulh        a5, s6, a2
                  c.xor       a2, a5
                  c.add       t4, a6
                  sltu        s10, s0, s4
                  c.slli      t4, 29
                  and         s1, s4, s5
                  c.addi16sp  sp, -16
                  addi        s2, zero, -956
                  c.and       a0, a0
                  c.nop
                  nop
                  c.lui       a2, 5
                  c.srli      s1, 6
                  sltu        t5, s4, t3
                  c.lui       t1, 5
                  or          s1, s8, a4
                  srli        s10, zero, 26
                  c.addi      t6, -1
                  srai        ra, s4, 24
                  divu        s0, t0, gp
                  c.li        gp, -1
                  xori        t4, s9, 1128
                  divu        s8, a5, gp
                  sll         zero, s7, s7
                  c.srai      s1, 7
                  nop
                  c.add       s1, s11
                  c.addi      a2, 10
                  c.andi      a0, 4
                  srli        t5, a7, 17
                  xori        t5, a3, 791
                  slt         s3, s3, a0
                  sra         a5, tp, s7
                  srai        t0, t2, 26
                  auipc       zero, 532074
                  c.mv        a0, a6
                  c.and       s1, s1
                  sll         t3, t6, s9
                  c.and       a4, a3
                  c.andi      a2, -1
                  c.nop
                  c.slli      s2, 26
                  mul         t3, zero, t4
                  sltiu       zero, a3, -1049
                  c.sub       a3, a1
                  c.andi      s1, 22
                  c.addi      s1, -1
                  c.mv        s10, s9
                  nop
                  sra         t1, gp, a2
                  srai        s6, s4, 2
                  sltu        a6, t4, a1
                  mulhu       sp, s1, a4
                  sub         a4, a3, a7
                  c.sub       a0, s0
                  c.srli      a3, 15
                  mulh        zero, s4, s7
                  c.srli      a3, 1
                  sltiu       s4, s4, -1255
                  c.li        s7, -1
                  add         a5, a5, t3
                  add         ra, t3, a4
                  sll         s6, t4, t5
                  c.xor       a3, a1
                  c.nop
                  div         sp, a4, t0
                  lui         tp, 905571
                  andi        s9, s10, 663
                  lui         s9, 682910
                  divu        s5, tp, a7
                  c.srai      s1, 7
                  auipc       zero, 419716
                  or          gp, s8, s10
                  c.and       a0, a1
                  xori        s0, s6, 1586
                  ori         zero, s2, -1182
                  sra         a0, a2, tp
                  c.addi16sp  sp, -16
                  divu        zero, s9, a0
                  c.add       s4, s0
                  slt         s4, a4, a5
                  sltu        s8, s3, s9
                  ori         ra, s6, -508
                  and         s10, t3, a2
                  and         t0, s11, s1
                  ori         s6, t1, -327
                  c.nop
                  divu        zero, s11, a6
                  lui         t3, 263930
                  c.srai      a3, 29
                  lui         zero, 5245
                  lui         s5, 260486
                  mulhsu      zero, s4, s1
                  srai        s2, s8, 13
                  or          a6, s2, s3
                  c.addi4spn  a2, sp, 144
                  c.lui       t6, 15
                  c.or        s1, a0
                  slli        tp, t2, 29
                  addi        s3, gp, 806
                  c.nop
                  andi        s1, a3, 1421
                  sub         s5, a7, s9
                  srl         s0, t3, ra
                  divu        s4, s3, s4
                  c.li        t0, -1
                  sll         a2, s9, a4
                  c.lui       s3, 27
                  c.add       a0, s7
                  c.xor       a3, a3
                  andi        s9, t5, -1955
                  nop
                  c.lui       s1, 22
                  sll         t2, a0, a2
                  ori         s5, a6, -1013
                  srli        zero, t2, 24
                  slti        t2, t1, -609
                  divu        zero, a7, a2
                  andi        t1, t4, 841
                  mul         a3, s3, s6
                  sltiu       s8, s0, -294
                  c.mv        tp, t4
                  c.or        s1, a0
                  div         zero, ra, tp
                  c.addi4spn  a4, sp, 112
                  srli        a6, a5, 15
                  c.xor       a0, a2
                  rem         a5, t5, a5
                  c.srli      s0, 21
                  sltiu       t5, s10, 1764
                  sltiu       a3, s4, -107
                  add         zero, tp, t0
                  c.srai      a0, 31
                  c.sub       s0, a0
                  c.slli      a6, 9
                  sub         zero, t3, t6
                  srli        a6, t2, 23
                  mul         s2, a1, t6
                  addi        s5, a7, -655
                  slt         s7, t3, s1
                  nop
                  sltu        s0, tp, s3
                  c.andi      s1, -1
                  sll         t5, a5, s4
                  mulhu       a6, s4, a3
                  slti        s7, a4, -1243
                  sub         s8, t1, s0
                  mulhsu      s0, t4, tp
                  c.andi      a3, -1
                  c.li        t4, 26
                  c.nop
                  c.andi      s1, -1
                  sltiu       s2, gp, 1346
                  xor         s7, t4, a7
                  andi        s7, a3, -920
                  ori         s5, s7, -382
                  c.or        a0, a2
                  c.mv        ra, s5
                  sll         gp, s5, a4
                  rem         a0, t0, s6
                  mulhu       a3, a7, s1
                  lui         t6, 126824
                  add         zero, t2, a1
                  c.add       ra, t3
                  divu        s6, a7, a3
                  sltiu       s10, s11, -1665
                  c.li        s8, 30
                  auipc       s5, 533307
                  c.mv        s2, t5
                  c.and       s0, a1
                  sll         zero, t4, s6
                  c.xor       a5, a2
                  sltu        zero, a4, s2
                  sub         a2, a7, tp
                  slti        sp, s5, -1208
                  div         a3, ra, t2
                  nop
                  nop
                  c.andi      a5, -1
                  ori         zero, s8, -569
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_8
                  li         t5, 0x444db19a
                  li         t4, 0x5283d06b
                  li         t0, 0x53c2356
                  li         t3, 0x0
                  li         s8, 0xb2ff869
                  li         s0, 0x1
                  li         s9, 0x0
                  li         a2, 0x6a441b71
                  li         s4, 0x0
                  c.li        s8, -1
                  c.add       t5, ra
                  c.mv        s10, a0
                  c.addi      s6, 22
                  c.add       a6, a5
                  rem         t3, s4, a0
                  rem         s2, a3, t6
                  c.mv        tp, s8
                  add         t2, t0, a1
                  auipc       t0, 128086
                  mulhu       a5, s9, t5
                  sub         s5, a3, sp
                  divu        t4, t0, a3
                  c.lui       a2, 1
                  div         sp, a0, a2
                  auipc       zero, 888946
                  rem         s2, t3, t4 #end riscv_int_numeric_corner_stream_8
                  xor         gp, t5, sp
                  div         t3, ra, a0
                  mulhsu      zero, s11, s4
                  srli        s10, s3, 12
                  xori        tp, t6, -164
                  sltu        ra, a5, t1
                  xor         a5, t6, t2
                  slt         t1, s4, s11
                  add         s0, s3, s1
                  c.srli      s1, 12
                  and         s7, t1, a6
                  auipc       s5, 704958
                  c.nop
                  slt         s3, s0, s6
                  nop
                  div         s7, s1, a2
                  srli        t5, ra, 19
                  sll         t2, s5, ra
                  mul         s9, s6, s3
                  slt         s2, a5, t1
                  c.srli      s1, 2
                  addi        t2, a3, 1628
                  rem         s0, s9, a0
                  c.srai      a0, 25
                  c.nop
                  sra         t3, s10, s10
                  auipc       a4, 968159
                  sll         gp, s6, s11
                  addi        t2, s9, 1082
                  c.addi4spn  a3, sp, 16
                  mulhu       gp, t3, a6
                  sltu        s2, a6, gp
                  c.sub       a2, a1
                  mulhu       t4, t6, s0
                  c.li        s10, 22
                  c.addi4spn  a3, sp, 432
                  srli        a6, a1, 20
                  c.and       a3, a2
                  c.li        s6, 20
                  xori        s1, a0, -1285
                  andi        a0, t4, 1267
                  lui         s5, 1026787
                  nop
                  c.addi      s8, -1
                  c.addi16sp  sp, 384
                  or          s6, s3, t1
                  c.li        a3, 29
                  slli        s2, a3, 15
                  sltu        a5, s10, s2
                  sll         ra, s5, ra
                  mulhsu      s5, sp, s7
                  c.and       a5, a1
                  c.addi4spn  a5, sp, 192
                  andi        ra, a4, 1229
                  c.lui       t6, 2
                  xor         ra, t4, t5
                  c.mv        t2, t4
                  c.xor       s1, a2
                  and         a5, tp, a2
                  andi        a0, s0, -746
                  slt         zero, t6, a0
                  mulhu       s2, t2, s0
                  c.srli      a5, 25
                  mul         a6, s5, t0
                  c.and       s1, a0
                  add         t4, s11, tp
                  lui         s1, 736130
                  srai        s10, a1, 31
                  andi        tp, s3, -198
                  mulhu       t3, t1, s7
                  add         s6, t0, s0
                  mulhu       t3, s9, sp
                  slt         t3, t0, s2
                  andi        s8, ra, 555
                  c.xor       s1, a5
                  sltiu       s2, t1, -1150
                  ori         t5, s4, -2010
                  lui         t4, 902146
                  mulh        s0, ra, t0
                  c.add       ra, t0
                  c.srai      s1, 12
                  mulhu       zero, s1, a6
                  c.addi4spn  s1, sp, 352
                  andi        t1, t0, 1628
                  addi        s9, a5, -1986
                  c.andi      s1, -1
                  c.or        s1, a4
                  c.nop
                  div         t4, a3, ra
                  nop
                  c.srai      a5, 29
                  mulh        sp, t3, tp
                  and         s9, t4, s3
                  nop
                  c.nop
                  slli        tp, a5, 6
                  c.mv        s7, a7
                  xori        s1, s11, -1167
                  slt         s2, t6, zero
                  sltiu       t4, a1, -897
                  c.addi      a3, -1
                  sub         s7, s11, t5
                  mul         s9, gp, s1
                  c.and       a5, a5
                  c.and       s1, a1
                  srl         s3, sp, s5
                  sra         gp, t3, sp
                  and         s6, s9, zero
                  c.mv        ra, t5
                  slti        s1, t6, 1107
                  c.and       s1, s1
                  c.or        a0, a2
                  c.add       t1, tp
                  sra         gp, s9, s3
                  xori        s10, gp, -831
                  slti        s9, s2, -1812
                  lui         ra, 834037
                  lui         s4, 427388
                  c.slli      t1, 1
                  mulh        t2, a7, t1
                  c.or        a0, a1
                  c.addi4spn  s1, sp, 320
                  nop
                  c.srai      a3, 23
                  sub         zero, s3, s1
                  andi        zero, t4, 1335
                  auipc       s10, 545736
                  c.add       ra, t6
                  c.addi      s7, 26
                  c.addi      t2, 11
                  addi        ra, t4, -1564
                  xori        tp, a1, 1054
                  c.addi16sp  sp, 48
                  sll         a5, ra, t2
                  c.and       a2, a3
                  c.addi4spn  a2, sp, 480
                  c.mv        s10, s0
                  add         s2, t0, a0
                  c.mv        a3, ra
                  c.addi16sp  sp, -16
                  srl         a3, a6, a3
                  lui         t4, 863020
                  srli        t0, s0, 7
                  mulh        s10, ra, a2
                  c.slli      t5, 28
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_21
                  li         t5, 0x5b509090
                  li         t4, 0x1
                  li         a3, 0x0
                  li         t0, 0x0
                  li         t3, 0x0
                  li         s6, 0x1
                  li         s9, 0x3f008fe6
                  li         s8, 0x5d50698c
                  li         s10, 0x3c3c6fd2
                  rem         s7, t6, s8
                  mulhu       a0, s2, s0
                  mulhsu      a5, t3, a5
                  c.addi4spn  s1, sp, 288
                  auipc       gp, 442801
                  c.lui       s7, 29
                  mul         zero, a4, s2
                  lui         t6, 831270
                  c.nop
                  addi        sp, t6, 787
                  c.nop
                  sub         s6, ra, t4
                  div         s0, s10, a5
                  c.addi4spn  s1, sp, 240
                  lui         tp, 981123
                  c.li        s1, 7
                  add         gp, s3, s11
                  c.mv        s4, sp
                  mulh        a0, gp, s5
                  lui         tp, 291537
                  c.add       ra, sp
                  mul         s7, a5, t0
                  mulhsu      a2, s9, s0
                  mulh        s8, t4, s8
                  c.nop
                  auipc       sp, 236977
                  c.srli      s1, 2
                  c.andi      a3, 23
                  nop
                  c.xor       s1, a0
                  slli        tp, t2, 31
                  c.addi      s0, -1
                  c.mv        t1, gp
                  sra         s1, s2, zero
                  slti        zero, sp, -44
                  c.nop
                  c.addi4spn  a3, sp, 224
                  auipc       sp, 41790
                  c.add       s0, t5
                  nop
                  c.srai      s1, 19
                  c.sub       s1, a3
                  c.and       a3, a1
                  mul         t5, t0, t0
                  mulhu       t2, s8, t4
                  slli        t6, a6, 12
                  slt         t4, zero, tp
                  addi        a2, t3, 652
                  ori         s2, a2, -490
                  divu        zero, a2, t0
                  c.srli      a3, 3
                  c.mv        s7, t4
                  xori        s7, s8, 893
                  c.and       s1, a3
                  sltu        zero, t0, ra
                  slli        zero, ra, 27
                  auipc       a2, 987237
                  srl         ra, t1, t2
                  sll         t4, s4, t2
                  c.and       a2, a2
                  sra         s0, t6, a0
                  auipc       s3, 1025254
                  c.andi      s1, 31
                  c.xor       a0, s1
                  rem         t5, s4, t4
                  sll         a4, s2, s8
                  srli        s9, s3, 24
                  lui         t2, 718865
                  c.add       s2, s2
                  c.slli      gp, 19
                  mulhu       a0, s1, a6
                  sltu        t6, gp, t5
                  srli        s8, a3, 4
                  mulh        s6, t4, s10
                  c.andi      a0, 16
                  c.slli      t1, 23
                  c.addi16sp  sp, 224
                  ori         s4, zero, -625
                  c.srli      a2, 5
                  c.and       a3, a2
                  slti        s1, s8, -256
                  xori        t0, t1, -1
                  lui         t2, 757184
                  c.add       t1, a4
                  sll         a4, s9, ra
                  xor         s2, ra, a6
                  c.srli      a5, 28
                  lui         zero, 892047
                  srli        a4, s7, 14
                  sll         zero, s0, a4
                  c.addi      a6, 30
                  or          a2, s4, s9
                  mul         sp, s4, a3
                  add         zero, s0, s10
                  srl         s4, s11, s6
                  lui         a0, 192467
                  c.lui       t3, 3
                  slti        t6, zero, 1756
                  c.add       ra, s10
                  c.li        ra, -1
                  mul         t1, sp, t1
                  sltu        t2, s1, s4
                  mulhu       tp, sp, s4
                  auipc       tp, 757429
                  c.li        a3, 31
                  auipc       a5, 290938
                  c.li        ra, 2
                  and         s1, a0, a5
                  c.lui       a3, 8
                  div         s6, tp, t1
                  add         a4, t4, s9
                  srai        s3, t4, 8
                  sltiu       a4, s0, 1850
                  add         a0, t3, s9
                  andi        t2, t4, 548
                  sltu        s5, s9, a5
                  slt         a2, s4, s4
                  and         s8, a3, a2
                  c.lui       s4, 15
                  c.lui       s5, 6
                  slti        s5, s2, -1759
                  mul         t0, a4, a7
                  divu        a3, a6, s6
                  c.add       t1, s11
                  srli        a4, s9, 7
                  c.addi      gp, 15
                  c.addi4spn  a3, sp, 816
                  ori         zero, a0, 63
                  c.srai      s1, 11
                  srai        s5, s4, 23
                  c.addi16sp  sp, -16
                  sltiu       s9, s8, 1855
                  c.and       s1, a2
                  divu        s2, t3, s9
                  and         s5, s8, s10
                  slli        s5, s4, 24
                  mulh        t2, sp, s1
                  add         s3, t1, gp
                  c.srai      a3, 30
                  srli        tp, a5, 11
                  mulh        t3, s0, s5
                  auipc       s9, 355353
                  c.addi4spn  a5, sp, 400
                  ori         s8, t0, -1238
                  div         t4, a6, gp
                  sltiu       a0, ra, -1703
                  or          a5, s6, ra
                  sltu        s4, s9, t1
                  mul         t1, s5, s9
                  c.addi16sp  sp, -16
                  xor         t3, s1, s11
                  slt         s10, a5, s2
                  slt         s3, a6, sp
                  mulhu       zero, a6, gp
                  andi        s6, s1, 1905
                  c.srai      a5, 20
                  xor         a4, s3, a6
                  sra         s5, a1, a5
                  c.srli      a0, 25
                  mulhu       a4, s8, t3
                  mulh        s3, s3, a3
                  andi        ra, s2, -1220
                  c.addi16sp  sp, -16
                  add         gp, s6, a1
                  c.xor       s1, a3
                  c.srai      a2, 9
                  div         t5, s7, s9
                  and         t1, s4, t1
                  sltu        s7, s7, s1
                  c.srli      s0, 9
                  c.sub       a3, a4
                  c.srai      a3, 27
                  c.add       ra, t5
                  mul         t4, t6, s5
                  ori         s7, sp, 753
                  addi        s2, a3, -252
                  srli        t6, s10, 3
                  c.and       a3, a3
                  c.sub       a4, a0
                  and         a0, s3, t6
                  mul         zero, s8, t1
                  c.slli      t2, 6
                  c.addi16sp  sp, 160
                  mulhu       s8, a3, a6
                  auipc       zero, 77184
                  c.addi4spn  a3, sp, 640
                  and         t5, sp, a3
                  sltiu       s3, a4, 1308
                  mulhsu      gp, s3, a1
                  mul         a3, t0, s4
                  and         s9, tp, t5
                  c.nop
                  sra         s5, t1, s2
                  slti        tp, gp, -672
                  c.or        a5, s1
                  c.andi      a0, -1
                  c.xor       s1, a3
                  c.xor       s1, a1
                  xor         s2, a3, s3
                  mulhsu      tp, s7, tp
                  andi        s8, t2, 546
                  c.addi      sp, -1
                  slti        zero, s1, -1671
                  c.or        a0, a2
                  add         zero, a2, t6
                  c.srai      s1, 22
                  c.xor       s1, s0
                  c.nop
                  c.addi4spn  s1, sp, 192
                  c.mv        ra, s4
                  c.srai      s1, 1
                  c.nop
                  c.addi4spn  s1, sp, 192
                  c.addi      s1, 23
                  xor         t6, s7, s2
                  add         a4, s4, s2
                  xori        t2, t3, 110
                  sltu        zero, t4, a3
                  srl         s1, a5, tp
                  c.nop
                  c.nop
                  slli        t4, t2, 26
                  mulhsu      a0, sp, t3
                  mulhsu      a4, a0, s9
                  c.srai      s1, 24
                  divu        s6, s10, s6
                  sltu        sp, sp, a1
                  c.addi4spn  a5, sp, 464
                  c.andi      s1, -1
                  xor         zero, t1, a4
                  mulhsu      s2, tp, sp
                  c.addi      t0, -1
                  c.li        a5, 31
                  ori         s8, t6, 960
                  andi        t1, t5, -227
                  c.or        a3, a3
                  nop
                  c.addi16sp  sp, -16
                  auipc       s5, 698931
                  c.li        t1, -1
                  c.slli      t1, 25
                  c.or        s1, s1
                  c.lui       s6, 10
                  srli        ra, a4, 18
                  c.li        t3, 21
                  c.or        s1, s1
                  add         s1, t2, s10
                  c.add       ra, a7
                  c.addi16sp  sp, -16
                  mulhsu      tp, t4, s9
                  or          s5, s9, a2
                  sltiu       zero, s2, 1884
                  c.addi4spn  a3, sp, 1008
                  slti        s8, zero, 1273
                  addi        s8, s11, -1257
                  slli        t6, a7, 3
                  c.nop
                  rem         t6, a3, a7
                  slt         t3, s10, a1
                  c.mv        ra, s0
                  sltu        t0, a4, ra
                  c.addi4spn  a4, sp, 656
                  slli        s4, t0, 28
                  c.addi16sp  sp, 16
                  slt         s7, a2, a6
                  c.andi      s1, -1
                  add         t6, t3, s3
                  c.lui       t1, 3
                  andi        ra, s1, 1900
                  or          s1, a1, s10
                  or          ra, s8, s10
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_3
                  li         t5, 0x0
                  li         t4, 0x1
                  li         a5, 0x1
                  li         s5, 0x0
                  li         a2, 0x47bfcbec
                  li         t0, 0x1
                  li         sp, 0x4f3da734
                  li         t3, 0x0
                  li         s4, 0x0
                  div         a4, s3, a0
                  c.add       a0, sp
                  c.addi      ra, -1
                  sub         s0, a7, t1
                  c.mv        ra, gp
                  c.mv        ra, t1
                  c.addi16sp  sp, 224
                  add         t5, s3, zero
                  divu        a5, s0, gp
                  c.sub       a2, a2
                  nop
                  c.mv        t4, s1
                  sub         t0, a0, t4
                  add         t0, a2, t6
                  add         ra, t3, s3
                  addi        s9, a3, -483
                  c.mv        s4, s1
                  divu        s1, tp, t3
                  c.addi4spn  s1, sp, 672
                  c.add       sp, s9
                  lui         s2, 623503
                  c.li        t0, -1
                  rem         t6, gp, a2
                  add         t2, zero, a3
                  c.sub       a4, a1
                  div         s1, s5, a6
                  c.sub       a3, s1
                  c.mv        tp, s7
                  c.addi4spn  a2, sp, 336
                  lui         zero, 888414 #end riscv_int_numeric_corner_stream_3
                  xori        s5, s10, -1281
                  c.li        s0, 16
                  xori        zero, s10, 1746
                  c.srai      a3, 19
                  lui         s5, 940082
                  sra         tp, s1, zero
                  andi        gp, t2, -1130
                  c.srli      a0, 23
                  c.add       s9, a2
                  slti        t6, a6, -1863
                  c.li        ra, 16
                  sltu        t1, t5, t1
                  c.lui       a3, 21
                  xori        s2, s6, 1321
                  srli        s2, t5, 9
                  mulhu       a5, a1, s9
                  c.lui       a0, 21
                  mulhu       zero, t2, s8
                  la x27, test_done
                  jalr x0, x27, 0
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
                  csrrw x11, 0x340, x11
                  add x11, x17, zero
                  1: addi x11, x11, -124
                  sw x1, 4(x11)
                  sw x2, 8(x11)
                  sw x3, 12(x11)
                  sw x4, 16(x11)
                  sw x5, 20(x11)
                  sw x6, 24(x11)
                  sw x7, 28(x11)
                  sw x8, 32(x11)
                  sw x9, 36(x11)
                  sw x10, 40(x11)
                  sw x11, 44(x11)
                  sw x12, 48(x11)
                  sw x13, 52(x11)
                  sw x14, 56(x11)
                  sw x15, 60(x11)
                  sw x16, 64(x11)
                  sw x17, 68(x11)
                  sw x18, 72(x11)
                  sw x19, 76(x11)
                  sw x20, 80(x11)
                  sw x21, 84(x11)
                  sw x22, 88(x11)
                  sw x23, 92(x11)
                  sw x24, 96(x11)
                  sw x25, 100(x11)
                  sw x26, 104(x11)
                  sw x27, 108(x11)
                  sw x28, 112(x11)
                  sw x29, 116(x11)
                  sw x30, 120(x11)
                  sw x31, 124(x11)
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x30, 0xb # ECALL_MMODE
                  beq x31, x30, ecall_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x27, write_tohost
                  jalr x0, x27, 0

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  lw x1, 4(x11)
                  lw x2, 8(x11)
                  lw x3, 12(x11)
                  lw x4, 16(x11)
                  lw x5, 20(x11)
                  lw x6, 24(x11)
                  lw x7, 28(x11)
                  lw x8, 32(x11)
                  lw x9, 36(x11)
                  lw x10, 40(x11)
                  lw x11, 44(x11)
                  lw x12, 48(x11)
                  lw x13, 52(x11)
                  lw x14, 56(x11)
                  lw x15, 60(x11)
                  lw x16, 64(x11)
                  lw x17, 68(x11)
                  lw x18, 72(x11)
                  lw x19, 76(x11)
                  lw x20, 80(x11)
                  lw x21, 84(x11)
                  lw x22, 88(x11)
                  lw x23, 92(x11)
                  lw x24, 96(x11)
                  lw x25, 100(x11)
                  lw x26, 104(x11)
                  lw x27, 108(x11)
                  lw x28, 112(x11)
                  lw x29, 116(x11)
                  lw x30, 120(x11)
                  lw x31, 124(x11)
                  addi x11, x11, 124
                  add x17, x11, zero
                  csrrw x11, 0x340, x11
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  lw x1, 4(x11)
                  lw x2, 8(x11)
                  lw x3, 12(x11)
                  lw x4, 16(x11)
                  lw x5, 20(x11)
                  lw x6, 24(x11)
                  lw x7, 28(x11)
                  lw x8, 32(x11)
                  lw x9, 36(x11)
                  lw x10, 40(x11)
                  lw x11, 44(x11)
                  lw x12, 48(x11)
                  lw x13, 52(x11)
                  lw x14, 56(x11)
                  lw x15, 60(x11)
                  lw x16, 64(x11)
                  lw x17, 68(x11)
                  lw x18, 72(x11)
                  lw x19, 76(x11)
                  lw x20, 80(x11)
                  lw x21, 84(x11)
                  lw x22, 88(x11)
                  lw x23, 92(x11)
                  lw x24, 96(x11)
                  lw x25, 100(x11)
                  lw x26, 104(x11)
                  lw x27, 108(x11)
                  lw x28, 112(x11)
                  lw x29, 116(x11)
                  lw x30, 120(x11)
                  lw x31, 124(x11)
                  addi x11, x11, 124
                  add x17, x11, zero
                  csrrw x11, 0x340, x11
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
