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

// SystemVerilog created from conv2_B10_merge
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B10_merge (
    input wire [0:0] in_exitcond25119_pop9421_0,
    input wire [0:0] in_exitcond2891_pop8614_0,
    input wire [0:0] in_exitcond3171_pop825_0,
    input wire [0:0] in_memdep_33_0,
    input wire [0:0] in_notcmp46122_pop9524_0,
    input wire [0:0] in_notcmp5195_pop8718_0,
    input wire [0:0] in_notcmp5676_pop8310_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_exitcond25119_pop9421,
    output wire [0:0] out_exitcond2891_pop8614,
    output wire [0:0] out_exitcond3171_pop825,
    output wire [0:0] out_memdep_33,
    output wire [0:0] out_notcmp46122_pop9524,
    output wire [0:0] out_notcmp5195_pop8718,
    output wire [0:0] out_notcmp5676_pop8310,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_exitcond25119_pop9421(GPOUT,11)
    assign out_exitcond25119_pop9421 = in_exitcond25119_pop9421_0;

    // out_exitcond2891_pop8614(GPOUT,12)
    assign out_exitcond2891_pop8614 = in_exitcond2891_pop8614_0;

    // out_exitcond3171_pop825(GPOUT,13)
    assign out_exitcond3171_pop825 = in_exitcond3171_pop825_0;

    // out_memdep_33(GPOUT,14)
    assign out_memdep_33 = in_memdep_33_0;

    // out_notcmp46122_pop9524(GPOUT,15)
    assign out_notcmp46122_pop9524 = in_notcmp46122_pop9524_0;

    // out_notcmp5195_pop8718(GPOUT,16)
    assign out_notcmp5195_pop8718 = in_notcmp5195_pop8718_0;

    // out_notcmp5676_pop8310(GPOUT,17)
    assign out_notcmp5676_pop8310 = in_notcmp5676_pop8310_0;

    // stall_out(LOGICAL,20)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,19)
    assign out_valid_out = in_valid_in_0;

endmodule
