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

// SystemVerilog created from conv2_B4_branch
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B4_branch (
    input wire [0:0] in_c0_exe10472,
    input wire [0:0] in_c0_exe11473,
    input wire [0:0] in_c0_exe12474,
    input wire [0:0] in_c0_exe13,
    input wire [0:0] in_c0_exe14,
    input wire [31:0] in_c0_exe1463,
    input wire [0:0] in_c0_exe16,
    input wire [0:0] in_c0_exe17,
    input wire [31:0] in_c0_exe18,
    input wire [0:0] in_c0_exe19,
    input wire [0:0] in_c0_exe20,
    input wire [0:0] in_c0_exe21,
    input wire [31:0] in_c0_exe22,
    input wire [0:0] in_c0_exe23,
    input wire [0:0] in_c0_exe24,
    input wire [31:0] in_c0_exe2464,
    input wire [0:0] in_c0_exe25,
    input wire [31:0] in_c0_exe26,
    input wire [0:0] in_c0_exe27,
    input wire [63:0] in_c0_exe3465,
    input wire [63:0] in_c0_exe4466,
    input wire [31:0] in_c0_exe5467,
    input wire [63:0] in_c0_exe6468,
    input wire [0:0] in_c0_exe7469,
    input wire [0:0] in_c0_exe8470,
    input wire [0:0] in_c0_exe9471,
    input wire [0:0] in_memdep_phi4_pop28,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10472,
    output wire [0:0] out_c0_exe11473,
    output wire [0:0] out_c0_exe12474,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [31:0] out_c0_exe1463,
    output wire [0:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [31:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [31:0] out_c0_exe22,
    output wire [0:0] out_c0_exe23,
    output wire [0:0] out_c0_exe24,
    output wire [31:0] out_c0_exe2464,
    output wire [0:0] out_c0_exe25,
    output wire [31:0] out_c0_exe26,
    output wire [0:0] out_c0_exe27,
    output wire [63:0] out_c0_exe3465,
    output wire [63:0] out_c0_exe4466,
    output wire [31:0] out_c0_exe5467,
    output wire [63:0] out_c0_exe6468,
    output wire [0:0] out_c0_exe7469,
    output wire [0:0] out_c0_exe8470,
    output wire [0:0] out_c0_exe9471,
    output wire [0:0] out_memdep_phi4_pop28,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10472(GPOUT,31)
    assign out_c0_exe10472 = in_c0_exe10472;

    // out_c0_exe11473(GPOUT,32)
    assign out_c0_exe11473 = in_c0_exe11473;

    // out_c0_exe12474(GPOUT,33)
    assign out_c0_exe12474 = in_c0_exe12474;

    // out_c0_exe13(GPOUT,34)
    assign out_c0_exe13 = in_c0_exe13;

    // out_c0_exe14(GPOUT,35)
    assign out_c0_exe14 = in_c0_exe14;

    // out_c0_exe1463(GPOUT,36)
    assign out_c0_exe1463 = in_c0_exe1463;

    // out_c0_exe16(GPOUT,37)
    assign out_c0_exe16 = in_c0_exe16;

    // out_c0_exe17(GPOUT,38)
    assign out_c0_exe17 = in_c0_exe17;

    // out_c0_exe18(GPOUT,39)
    assign out_c0_exe18 = in_c0_exe18;

    // out_c0_exe19(GPOUT,40)
    assign out_c0_exe19 = in_c0_exe19;

    // out_c0_exe20(GPOUT,41)
    assign out_c0_exe20 = in_c0_exe20;

    // out_c0_exe21(GPOUT,42)
    assign out_c0_exe21 = in_c0_exe21;

    // out_c0_exe22(GPOUT,43)
    assign out_c0_exe22 = in_c0_exe22;

    // out_c0_exe23(GPOUT,44)
    assign out_c0_exe23 = in_c0_exe23;

    // out_c0_exe24(GPOUT,45)
    assign out_c0_exe24 = in_c0_exe24;

    // out_c0_exe2464(GPOUT,46)
    assign out_c0_exe2464 = in_c0_exe2464;

    // out_c0_exe25(GPOUT,47)
    assign out_c0_exe25 = in_c0_exe25;

    // out_c0_exe26(GPOUT,48)
    assign out_c0_exe26 = in_c0_exe26;

    // out_c0_exe27(GPOUT,49)
    assign out_c0_exe27 = in_c0_exe27;

    // out_c0_exe3465(GPOUT,50)
    assign out_c0_exe3465 = in_c0_exe3465;

    // out_c0_exe4466(GPOUT,51)
    assign out_c0_exe4466 = in_c0_exe4466;

    // out_c0_exe5467(GPOUT,52)
    assign out_c0_exe5467 = in_c0_exe5467;

    // out_c0_exe6468(GPOUT,53)
    assign out_c0_exe6468 = in_c0_exe6468;

    // out_c0_exe7469(GPOUT,54)
    assign out_c0_exe7469 = in_c0_exe7469;

    // out_c0_exe8470(GPOUT,55)
    assign out_c0_exe8470 = in_c0_exe8470;

    // out_c0_exe9471(GPOUT,56)
    assign out_c0_exe9471 = in_c0_exe9471;

    // out_memdep_phi4_pop28(GPOUT,57)
    assign out_memdep_phi4_pop28 = in_memdep_phi4_pop28;

    // stall_out(LOGICAL,60)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,58)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,59)
    assign out_valid_out_0 = in_valid_in;

endmodule
