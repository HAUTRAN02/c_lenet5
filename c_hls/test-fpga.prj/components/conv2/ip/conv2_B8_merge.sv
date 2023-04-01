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

// SystemVerilog created from conv2_B8_merge
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B8_merge (
    input wire [0:0] in_exitcond19137_pop1041_0,
    input wire [0:0] in_exitcond22128_pop9728_0,
    input wire [0:0] in_exitcond25119_pop9423_0,
    input wire [0:0] in_exitcond2891_pop8616_0,
    input wire [0:0] in_exitcond3171_pop827_0,
    input wire [0:0] in_memdep_35_0,
    input wire [0:0] in_notcmp36138_pop1052_0,
    input wire [0:0] in_notcmp41130_pop9830_0,
    input wire [0:0] in_notcmp46122_pop9526_0,
    input wire [0:0] in_notcmp5195_pop8720_0,
    input wire [0:0] in_notcmp5676_pop8312_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_exitcond19137_pop1041,
    output wire [0:0] out_exitcond22128_pop9728,
    output wire [0:0] out_exitcond25119_pop9423,
    output wire [0:0] out_exitcond2891_pop8616,
    output wire [0:0] out_exitcond3171_pop827,
    output wire [0:0] out_memdep_35,
    output wire [0:0] out_notcmp36138_pop1052,
    output wire [0:0] out_notcmp41130_pop9830,
    output wire [0:0] out_notcmp46122_pop9526,
    output wire [0:0] out_notcmp5195_pop8720,
    output wire [0:0] out_notcmp5676_pop8312,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_exitcond19137_pop1041(GPOUT,15)
    assign out_exitcond19137_pop1041 = in_exitcond19137_pop1041_0;

    // out_exitcond22128_pop9728(GPOUT,16)
    assign out_exitcond22128_pop9728 = in_exitcond22128_pop9728_0;

    // out_exitcond25119_pop9423(GPOUT,17)
    assign out_exitcond25119_pop9423 = in_exitcond25119_pop9423_0;

    // out_exitcond2891_pop8616(GPOUT,18)
    assign out_exitcond2891_pop8616 = in_exitcond2891_pop8616_0;

    // out_exitcond3171_pop827(GPOUT,19)
    assign out_exitcond3171_pop827 = in_exitcond3171_pop827_0;

    // out_memdep_35(GPOUT,20)
    assign out_memdep_35 = in_memdep_35_0;

    // out_notcmp36138_pop1052(GPOUT,21)
    assign out_notcmp36138_pop1052 = in_notcmp36138_pop1052_0;

    // out_notcmp41130_pop9830(GPOUT,22)
    assign out_notcmp41130_pop9830 = in_notcmp41130_pop9830_0;

    // out_notcmp46122_pop9526(GPOUT,23)
    assign out_notcmp46122_pop9526 = in_notcmp46122_pop9526_0;

    // out_notcmp5195_pop8720(GPOUT,24)
    assign out_notcmp5195_pop8720 = in_notcmp5195_pop8720_0;

    // out_notcmp5676_pop8312(GPOUT,25)
    assign out_notcmp5676_pop8312 = in_notcmp5676_pop8312_0;

    // stall_out(LOGICAL,28)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,26)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,27)
    assign out_valid_out = in_valid_in_0;

endmodule
