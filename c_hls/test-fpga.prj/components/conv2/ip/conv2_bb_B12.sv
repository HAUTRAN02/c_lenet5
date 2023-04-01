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

// SystemVerilog created from bb_conv2_B12
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B12 (
    output wire [0:0] out_feedback_out_18,
    input wire [0:0] in_feedback_stall_in_18,
    output wire [0:0] out_feedback_valid_out_18,
    input wire [0:0] in_exitcond3171_pop823_0,
    input wire [0:0] in_memdep_31_0,
    input wire [0:0] in_notcmp5676_pop838_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2_B12_stall_region_out_feedback_out_18;
    wire [0:0] bb_conv2_B12_stall_region_out_feedback_valid_out_18;
    wire [0:0] bb_conv2_B12_stall_region_out_notcmp5676_pop838;
    wire [0:0] bb_conv2_B12_stall_region_out_stall_out;
    wire [0:0] bb_conv2_B12_stall_region_out_valid_out;
    wire [0:0] conv2_B12_branch_out_stall_out;
    wire [0:0] conv2_B12_branch_out_valid_out_0;
    wire [0:0] conv2_B12_branch_out_valid_out_1;
    wire [0:0] conv2_B12_merge_out_exitcond3171_pop823;
    wire [0:0] conv2_B12_merge_out_memdep_31;
    wire [0:0] conv2_B12_merge_out_notcmp5676_pop838;
    wire [0:0] conv2_B12_merge_out_stall_out_0;
    wire [0:0] conv2_B12_merge_out_valid_out;


    // conv2_B12_branch(BLACKBOX,3)
    conv2_B12_branch theconv2_B12_branch (
        .in_notcmp5676_pop838(bb_conv2_B12_stall_region_out_notcmp5676_pop838),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2_B12_stall_region_out_valid_out),
        .out_stall_out(conv2_B12_branch_out_stall_out),
        .out_valid_out_0(conv2_B12_branch_out_valid_out_0),
        .out_valid_out_1(conv2_B12_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B12_merge(BLACKBOX,4)
    conv2_B12_merge theconv2_B12_merge (
        .in_exitcond3171_pop823_0(in_exitcond3171_pop823_0),
        .in_memdep_31_0(in_memdep_31_0),
        .in_notcmp5676_pop838_0(in_notcmp5676_pop838_0),
        .in_stall_in(bb_conv2_B12_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_exitcond3171_pop823(conv2_B12_merge_out_exitcond3171_pop823),
        .out_memdep_31(conv2_B12_merge_out_memdep_31),
        .out_notcmp5676_pop838(conv2_B12_merge_out_notcmp5676_pop838),
        .out_stall_out_0(conv2_B12_merge_out_stall_out_0),
        .out_valid_out(conv2_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B12_stall_region(BLACKBOX,2)
    conv2_bb_B12_stall_region thebb_conv2_B12_stall_region (
        .in_exitcond3171_pop823(conv2_B12_merge_out_exitcond3171_pop823),
        .in_feedback_stall_in_18(in_feedback_stall_in_18),
        .in_memdep_31(conv2_B12_merge_out_memdep_31),
        .in_notcmp5676_pop838(conv2_B12_merge_out_notcmp5676_pop838),
        .in_stall_in(conv2_B12_branch_out_stall_out),
        .in_valid_in(conv2_B12_merge_out_valid_out),
        .out_feedback_out_18(bb_conv2_B12_stall_region_out_feedback_out_18),
        .out_feedback_valid_out_18(bb_conv2_B12_stall_region_out_feedback_valid_out_18),
        .out_notcmp5676_pop838(bb_conv2_B12_stall_region_out_notcmp5676_pop838),
        .out_stall_out(bb_conv2_B12_stall_region_out_stall_out),
        .out_valid_out(bb_conv2_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_18_sync(GPOUT,5)
    assign out_feedback_out_18 = bb_conv2_B12_stall_region_out_feedback_out_18;

    // feedback_valid_out_18_sync(GPOUT,7)
    assign out_feedback_valid_out_18 = bb_conv2_B12_stall_region_out_feedback_valid_out_18;

    // out_stall_in_0(GPOUT,14)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,15)
    assign out_stall_out_0 = conv2_B12_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,16)
    assign out_valid_out_0 = conv2_B12_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,17)
    assign out_valid_out_1 = conv2_B12_branch_out_valid_out_1;

endmodule
