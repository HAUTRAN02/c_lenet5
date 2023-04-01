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

// SystemVerilog created from conv2_B11_merge
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B11_merge (
    input wire [0:0] in_exitcond2891_pop8613_0,
    input wire [0:0] in_exitcond3171_pop824_0,
    input wire [0:0] in_memdep_32_0,
    input wire [0:0] in_notcmp5195_pop8717_0,
    input wire [0:0] in_notcmp5676_pop839_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_exitcond2891_pop8613,
    output wire [0:0] out_exitcond3171_pop824,
    output wire [0:0] out_memdep_32,
    output wire [0:0] out_notcmp5195_pop8717,
    output wire [0:0] out_notcmp5676_pop839,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_exitcond2891_pop8613(GPOUT,9)
    assign out_exitcond2891_pop8613 = in_exitcond2891_pop8613_0;

    // out_exitcond3171_pop824(GPOUT,10)
    assign out_exitcond3171_pop824 = in_exitcond3171_pop824_0;

    // out_memdep_32(GPOUT,11)
    assign out_memdep_32 = in_memdep_32_0;

    // out_notcmp5195_pop8717(GPOUT,12)
    assign out_notcmp5195_pop8717 = in_notcmp5195_pop8717_0;

    // out_notcmp5676_pop839(GPOUT,13)
    assign out_notcmp5676_pop839 = in_notcmp5676_pop839_0;

    // stall_out(LOGICAL,16)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,15)
    assign out_valid_out = in_valid_in_0;

endmodule
