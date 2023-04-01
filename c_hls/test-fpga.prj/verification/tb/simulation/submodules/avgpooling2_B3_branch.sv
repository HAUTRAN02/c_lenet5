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

// SystemVerilog created from avgpooling2_B3_branch
// Created for function/kernel avgpooling2
// SystemVerilog created on Sat Apr  1 13:10:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpooling2_B3_branch (
    input wire [0:0] in_c0_exe183,
    input wire [0:0] in_c0_exe284,
    input wire [31:0] in_c0_exe385,
    input wire [0:0] in_c0_exe486,
    input wire [0:0] in_c0_exe5,
    input wire [31:0] in_c0_exe6,
    input wire [0:0] in_c0_exe7,
    input wire [0:0] in_memdep_phi1_pop15,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe183,
    output wire [0:0] out_c0_exe284,
    output wire [31:0] out_c0_exe385,
    output wire [0:0] out_c0_exe486,
    output wire [0:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_memdep_phi1_pop15,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe183(GPOUT,12)
    assign out_c0_exe183 = in_c0_exe183;

    // out_c0_exe284(GPOUT,13)
    assign out_c0_exe284 = in_c0_exe284;

    // out_c0_exe385(GPOUT,14)
    assign out_c0_exe385 = in_c0_exe385;

    // out_c0_exe486(GPOUT,15)
    assign out_c0_exe486 = in_c0_exe486;

    // out_c0_exe5(GPOUT,16)
    assign out_c0_exe5 = in_c0_exe5;

    // out_c0_exe6(GPOUT,17)
    assign out_c0_exe6 = in_c0_exe6;

    // out_c0_exe7(GPOUT,18)
    assign out_c0_exe7 = in_c0_exe7;

    // out_memdep_phi1_pop15(GPOUT,19)
    assign out_memdep_phi1_pop15 = in_memdep_phi1_pop15;

    // stall_out(LOGICAL,22)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,20)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,21)
    assign out_valid_out_0 = in_valid_in;

endmodule
