//
//  asm.s
//  汇编(二)
//
//  Created by 冷健 on 2018/4/21.
//  Copyright © 2018年 冷健. All rights reserved.
//
.text
.global _A,  _Sum, _JumpFunc, _tempJump, _ManyPropertySumFunction


_A:
    //拉伸栈32个字节空间
    sub sp, sp, #0x10
    //给x0x1赋值
    mov x0, #0x1111
    mov x1, #0xffff
    //同时将x0x1寄存器中的值存储到[sp,#0010]位置上
    stp x0, x1, [sp, #0x10]
    ldp x1, x0, [sp, #0x10]
    add sp, sp, #0x20
    ret


_JumpFunc:
    stp x29, x30, [sp, #0x10]!
    bl _tempJump
    ldp x29, x30, [sp], #0x10
    ret



_tempJump:
//    stp x29, x30, [sp, #-0x10]!
//    ldp x29, x30, [sp], #0x10
    ret

//两种写法是一致的,需要自己体会
//-----------------------------------------
//_Sum:
//    stp x29, x30, [sp,#-0x20]!
//    add x0, x0, x1
//    ldp x29, x30, [sp], #0x20
//    ret

//     |
//     V
_Sum:
    sub sp, sp, #0x20
    stp x29, x30, [sp]
    add x0, x0, x1
    ldp x29, x30, [sp]
    add sp, sp, #0x20
    ret
//-----------------------------------------

_ManyPropertySumFunction:
//    sub sp, sp, #0x90
    stp x29, x30, [sp, #-0x90]!
    
    ldp x29, x30, [sp], #0x90
    ret
