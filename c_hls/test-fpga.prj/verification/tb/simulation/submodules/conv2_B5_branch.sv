// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.4 (Release Build #53.1)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from conv2_B5_branch
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B5_branch (
    input wire [31:0] in_c0_exe10539,
    input wire [0:0] in_c0_exe11540,
    input wire [63:0] in_c0_exe12541,
    input wire [63:0] in_c0_exe13542,
    input wire [31:0] in_c0_exe14543,
    input wire [0:0] in_c0_exe1530,
    input wire [63:0] in_c0_exe15544,
    input wire [0:0] in_c0_exe16545,
    input wire [0:0] in_c0_exe17546,
    input wire [0:0] in_c0_exe18547,
    input wire [0:0] in_c0_exe20549,
    input wire [0:0] in_c0_exe21550,
    input wire [31:0] in_c0_exe22551,
    input wire [0:0] in_c0_exe23552,
    input wire [0:0] in_c0_exe24553,
    input wire [0:0] in_c0_exe2531,
    input wire [0:0] in_c0_exe25554,
    input wire [31:0] in_c0_exe26555,
    input wire [0:0] in_c0_exe27556,
    input wire [0:0] in_c0_exe28,
    input wire [0:0] in_c0_exe29,
    input wire [31:0] in_c0_exe30,
    input wire [0:0] in_c0_exe31,
    input wire [31:0] in_c0_exe32,
    input wire [31:0] in_c0_exe33,
    input wire [63:0] in_c0_exe34,
    input wire [63:0] in_c0_exe35,
    input wire [31:0] in_c0_exe3532,
    input wire [31:0] in_c0_exe36,
    input wire [63:0] in_c0_exe37,
    input wire [0:0] in_c0_exe38,
    input wire [0:0] in_c0_exe39,
    input wire [0:0] in_c0_exe40,
    input wire [0:0] in_c0_exe41,
    input wire [0:0] in_c0_exe42,
    input wire [0:0] in_c0_exe43,
    input wire [0:0] in_c0_exe44,
    input wire [0:0] in_c0_exe45,
    input wire [0:0] in_c0_exe4533,
    input wire [0:0] in_c0_exe46,
    input wire [0:0] in_c0_exe5534,
    input wire [31:0] in_c0_exe6535,
    input wire [0:0] in_c0_exe7536,
    input wire [0:0] in_c0_exe8537,
    input wire [0:0] in_c0_exe9538,
    input wire [0:0] in_memdep_phi3_pop39,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10539,
    output wire [0:0] out_c0_exe11540,
    output wire [63:0] out_c0_exe12541,
    output wire [63:0] out_c0_exe13542,
    output wire [31:0] out_c0_exe14543,
    output wire [0:0] out_c0_exe1530,
    output wire [63:0] out_c0_exe15544,
    output wire [0:0] out_c0_exe16545,
    output wire [0:0] out_c0_exe17546,
    output wire [0:0] out_c0_exe18547,
    output wire [0:0] out_c0_exe20549,
    output wire [0:0] out_c0_exe21550,
    output wire [31:0] out_c0_exe22551,
    output wire [0:0] out_c0_exe23552,
    output wire [0:0] out_c0_exe24553,
    output wire [0:0] out_c0_exe2531,
    output wire [0:0] out_c0_exe25554,
    output wire [31:0] out_c0_exe26555,
    output wire [0:0] out_c0_exe27556,
    output wire [0:0] out_c0_exe28,
    output wire [0:0] out_c0_exe29,
    output wire [31:0] out_c0_exe30,
    output wire [0:0] out_c0_exe31,
    output wire [31:0] out_c0_exe32,
    output wire [31:0] out_c0_exe33,
    output wire [63:0] out_c0_exe34,
    output wire [63:0] out_c0_exe35,
    output wire [31:0] out_c0_exe3532,
    output wire [31:0] out_c0_exe36,
    output wire [63:0] out_c0_exe37,
    output wire [0:0] out_c0_exe38,
    output wire [0:0] out_c0_exe39,
    output wire [0:0] out_c0_exe40,
    output wire [0:0] out_c0_exe41,
    output wire [0:0] out_c0_exe42,
    output wire [0:0] out_c0_exe43,
    output wire [0:0] out_c0_exe44,
    output wire [0:0] out_c0_exe45,
    output wire [0:0] out_c0_exe4533,
    output wire [0:0] out_c0_exe46,
    output wire [0:0] out_c0_exe5534,
    output wire [31:0] out_c0_exe6535,
    output wire [0:0] out_c0_exe7536,
    output wire [0:0] out_c0_exe8537,
    output wire [0:0] out_c0_exe9538,
    output wire [0:0] out_memdep_phi3_pop39,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10539(GPOUT,50)
    assign out_c0_exe10539 = in_c0_exe10539;

    // out_c0_exe11540(GPOUT,51)
    assign out_c0_exe11540 = in_c0_exe11540;

    // out_c0_exe12541(GPOUT,52)
    assign out_c0_exe12541 = in_c0_exe12541;

    // out_c0_exe13542(GPOUT,53)
    assign out_c0_exe13542 = in_c0_exe13542;

    // out_c0_exe14543(GPOUT,54)
    assign out_c0_exe14543 = in_c0_exe14543;

    // out_c0_exe1530(GPOUT,55)
    assign out_c0_exe1530 = in_c0_exe1530;

    // out_c0_exe15544(GPOUT,56)
    assign out_c0_exe15544 = in_c0_exe15544;

    // out_c0_exe16545(GPOUT,57)
    assign out_c0_exe16545 = in_c0_exe16545;

    // out_c0_exe17546(GPOUT,58)
    assign out_c0_exe17546 = in_c0_exe17546;

    // out_c0_exe18547(GPOUT,59)
    assign out_c0_exe18547 = in_c0_exe18547;

    // out_c0_exe20549(GPOUT,60)
    assign out_c0_exe20549 = in_c0_exe20549;

    // out_c0_exe21550(GPOUT,61)
    assign out_c0_exe21550 = in_c0_exe21550;

    // out_c0_exe22551(GPOUT,62)
    assign out_c0_exe22551 = in_c0_exe22551;

    // out_c0_exe23552(GPOUT,63)
    assign out_c0_exe23552 = in_c0_exe23552;

    // out_c0_exe24553(GPOUT,64)
    assign out_c0_exe24553 = in_c0_exe24553;

    // out_c0_exe2531(GPOUT,65)
    assign out_c0_exe2531 = in_c0_exe2531;

    // out_c0_exe25554(GPOUT,66)
    assign out_c0_exe25554 = in_c0_exe25554;

    // out_c0_exe26555(GPOUT,67)
    assign out_c0_exe26555 = in_c0_exe26555;

    // out_c0_exe27556(GPOUT,68)
    assign out_c0_exe27556 = in_c0_exe27556;

    // out_c0_exe28(GPOUT,69)
    assign out_c0_exe28 = in_c0_exe28;

    // out_c0_exe29(GPOUT,70)
    assign out_c0_exe29 = in_c0_exe29;

    // out_c0_exe30(GPOUT,71)
    assign out_c0_exe30 = in_c0_exe30;

    // out_c0_exe31(GPOUT,72)
    assign out_c0_exe31 = in_c0_exe31;

    // out_c0_exe32(GPOUT,73)
    assign out_c0_exe32 = in_c0_exe32;

    // out_c0_exe33(GPOUT,74)
    assign out_c0_exe33 = in_c0_exe33;

    // out_c0_exe34(GPOUT,75)
    assign out_c0_exe34 = in_c0_exe34;

    // out_c0_exe35(GPOUT,76)
    assign out_c0_exe35 = in_c0_exe35;

    // out_c0_exe3532(GPOUT,77)
    assign out_c0_exe3532 = in_c0_exe3532;

    // out_c0_exe36(GPOUT,78)
    assign out_c0_exe36 = in_c0_exe36;

    // out_c0_exe37(GPOUT,79)
    assign out_c0_exe37 = in_c0_exe37;

    // out_c0_exe38(GPOUT,80)
    assign out_c0_exe38 = in_c0_exe38;

    // out_c0_exe39(GPOUT,81)
    assign out_c0_exe39 = in_c0_exe39;

    // out_c0_exe40(GPOUT,82)
    assign out_c0_exe40 = in_c0_exe40;

    // out_c0_exe41(GPOUT,83)
    assign out_c0_exe41 = in_c0_exe41;

    // out_c0_exe42(GPOUT,84)
    assign out_c0_exe42 = in_c0_exe42;

    // out_c0_exe43(GPOUT,85)
    assign out_c0_exe43 = in_c0_exe43;

    // out_c0_exe44(GPOUT,86)
    assign out_c0_exe44 = in_c0_exe44;

    // out_c0_exe45(GPOUT,87)
    assign out_c0_exe45 = in_c0_exe45;

    // out_c0_exe4533(GPOUT,88)
    assign out_c0_exe4533 = in_c0_exe4533;

    // out_c0_exe46(GPOUT,89)
    assign out_c0_exe46 = in_c0_exe46;

    // out_c0_exe5534(GPOUT,90)
    assign out_c0_exe5534 = in_c0_exe5534;

    // out_c0_exe6535(GPOUT,91)
    assign out_c0_exe6535 = in_c0_exe6535;

    // out_c0_exe7536(GPOUT,92)
    assign out_c0_exe7536 = in_c0_exe7536;

    // out_c0_exe8537(GPOUT,93)
    assign out_c0_exe8537 = in_c0_exe8537;

    // out_c0_exe9538(GPOUT,94)
    assign out_c0_exe9538 = in_c0_exe9538;

    // out_memdep_phi3_pop39(GPOUT,95)
    assign out_memdep_phi3_pop39 = in_memdep_phi3_pop39;

    // stall_out(LOGICAL,98)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,96)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,97)
    assign out_valid_out_0 = in_valid_in;

endmodule
