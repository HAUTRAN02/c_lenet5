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

// SystemVerilog created from bb_conv2_B8
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B8 (
    output wire [0:0] out_feedback_out_57,
    input wire [0:0] in_feedback_stall_in_57,
    output wire [0:0] out_feedback_valid_out_57,
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
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_exitcond22128_pop9728,
    output wire [0:0] out_exitcond25119_pop9423,
    output wire [0:0] out_exitcond2891_pop8616,
    output wire [0:0] out_exitcond3171_pop827,
    output wire [0:0] out_memdep_35,
    output wire [0:0] out_notcmp41130_pop9830,
    output wire [0:0] out_notcmp46122_pop9526,
    output wire [0:0] out_notcmp5195_pop8720,
    output wire [0:0] out_notcmp5676_pop8312,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2_B8_stall_region_out_exitcond22128_pop9728;
    wire [0:0] bb_conv2_B8_stall_region_out_exitcond25119_pop9423;
    wire [0:0] bb_conv2_B8_stall_region_out_exitcond2891_pop8616;
    wire [0:0] bb_conv2_B8_stall_region_out_exitcond3171_pop827;
    wire [0:0] bb_conv2_B8_stall_region_out_feedback_out_57;
    wire [0:0] bb_conv2_B8_stall_region_out_feedback_valid_out_57;
    wire [0:0] bb_conv2_B8_stall_region_out_memdep_35;
    wire [0:0] bb_conv2_B8_stall_region_out_notcmp36138_pop1052;
    wire [0:0] bb_conv2_B8_stall_region_out_notcmp41130_pop9830;
    wire [0:0] bb_conv2_B8_stall_region_out_notcmp46122_pop9526;
    wire [0:0] bb_conv2_B8_stall_region_out_notcmp5195_pop8720;
    wire [0:0] bb_conv2_B8_stall_region_out_notcmp5676_pop8312;
    wire [0:0] bb_conv2_B8_stall_region_out_stall_out;
    wire [0:0] bb_conv2_B8_stall_region_out_valid_out;
    wire [0:0] conv2_B8_branch_out_exitcond22128_pop9728;
    wire [0:0] conv2_B8_branch_out_exitcond25119_pop9423;
    wire [0:0] conv2_B8_branch_out_exitcond2891_pop8616;
    wire [0:0] conv2_B8_branch_out_exitcond3171_pop827;
    wire [0:0] conv2_B8_branch_out_memdep_35;
    wire [0:0] conv2_B8_branch_out_notcmp41130_pop9830;
    wire [0:0] conv2_B8_branch_out_notcmp46122_pop9526;
    wire [0:0] conv2_B8_branch_out_notcmp5195_pop8720;
    wire [0:0] conv2_B8_branch_out_notcmp5676_pop8312;
    wire [0:0] conv2_B8_branch_out_stall_out;
    wire [0:0] conv2_B8_branch_out_valid_out_0;
    wire [0:0] conv2_B8_branch_out_valid_out_1;
    wire [0:0] conv2_B8_merge_out_exitcond19137_pop1041;
    wire [0:0] conv2_B8_merge_out_exitcond22128_pop9728;
    wire [0:0] conv2_B8_merge_out_exitcond25119_pop9423;
    wire [0:0] conv2_B8_merge_out_exitcond2891_pop8616;
    wire [0:0] conv2_B8_merge_out_exitcond3171_pop827;
    wire [0:0] conv2_B8_merge_out_memdep_35;
    wire [0:0] conv2_B8_merge_out_notcmp36138_pop1052;
    wire [0:0] conv2_B8_merge_out_notcmp41130_pop9830;
    wire [0:0] conv2_B8_merge_out_notcmp46122_pop9526;
    wire [0:0] conv2_B8_merge_out_notcmp5195_pop8720;
    wire [0:0] conv2_B8_merge_out_notcmp5676_pop8312;
    wire [0:0] conv2_B8_merge_out_stall_out_0;
    wire [0:0] conv2_B8_merge_out_valid_out;


    // conv2_B8_branch(BLACKBOX,3)
    conv2_B8_branch theconv2_B8_branch (
        .in_exitcond22128_pop9728(bb_conv2_B8_stall_region_out_exitcond22128_pop9728),
        .in_exitcond25119_pop9423(bb_conv2_B8_stall_region_out_exitcond25119_pop9423),
        .in_exitcond2891_pop8616(bb_conv2_B8_stall_region_out_exitcond2891_pop8616),
        .in_exitcond3171_pop827(bb_conv2_B8_stall_region_out_exitcond3171_pop827),
        .in_memdep_35(bb_conv2_B8_stall_region_out_memdep_35),
        .in_notcmp36138_pop1052(bb_conv2_B8_stall_region_out_notcmp36138_pop1052),
        .in_notcmp41130_pop9830(bb_conv2_B8_stall_region_out_notcmp41130_pop9830),
        .in_notcmp46122_pop9526(bb_conv2_B8_stall_region_out_notcmp46122_pop9526),
        .in_notcmp5195_pop8720(bb_conv2_B8_stall_region_out_notcmp5195_pop8720),
        .in_notcmp5676_pop8312(bb_conv2_B8_stall_region_out_notcmp5676_pop8312),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2_B8_stall_region_out_valid_out),
        .out_exitcond22128_pop9728(conv2_B8_branch_out_exitcond22128_pop9728),
        .out_exitcond25119_pop9423(conv2_B8_branch_out_exitcond25119_pop9423),
        .out_exitcond2891_pop8616(conv2_B8_branch_out_exitcond2891_pop8616),
        .out_exitcond3171_pop827(conv2_B8_branch_out_exitcond3171_pop827),
        .out_memdep_35(conv2_B8_branch_out_memdep_35),
        .out_notcmp41130_pop9830(conv2_B8_branch_out_notcmp41130_pop9830),
        .out_notcmp46122_pop9526(conv2_B8_branch_out_notcmp46122_pop9526),
        .out_notcmp5195_pop8720(conv2_B8_branch_out_notcmp5195_pop8720),
        .out_notcmp5676_pop8312(conv2_B8_branch_out_notcmp5676_pop8312),
        .out_stall_out(conv2_B8_branch_out_stall_out),
        .out_valid_out_0(conv2_B8_branch_out_valid_out_0),
        .out_valid_out_1(conv2_B8_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B8_merge(BLACKBOX,4)
    conv2_B8_merge theconv2_B8_merge (
        .in_exitcond19137_pop1041_0(in_exitcond19137_pop1041_0),
        .in_exitcond22128_pop9728_0(in_exitcond22128_pop9728_0),
        .in_exitcond25119_pop9423_0(in_exitcond25119_pop9423_0),
        .in_exitcond2891_pop8616_0(in_exitcond2891_pop8616_0),
        .in_exitcond3171_pop827_0(in_exitcond3171_pop827_0),
        .in_memdep_35_0(in_memdep_35_0),
        .in_notcmp36138_pop1052_0(in_notcmp36138_pop1052_0),
        .in_notcmp41130_pop9830_0(in_notcmp41130_pop9830_0),
        .in_notcmp46122_pop9526_0(in_notcmp46122_pop9526_0),
        .in_notcmp5195_pop8720_0(in_notcmp5195_pop8720_0),
        .in_notcmp5676_pop8312_0(in_notcmp5676_pop8312_0),
        .in_stall_in(bb_conv2_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_exitcond19137_pop1041(conv2_B8_merge_out_exitcond19137_pop1041),
        .out_exitcond22128_pop9728(conv2_B8_merge_out_exitcond22128_pop9728),
        .out_exitcond25119_pop9423(conv2_B8_merge_out_exitcond25119_pop9423),
        .out_exitcond2891_pop8616(conv2_B8_merge_out_exitcond2891_pop8616),
        .out_exitcond3171_pop827(conv2_B8_merge_out_exitcond3171_pop827),
        .out_memdep_35(conv2_B8_merge_out_memdep_35),
        .out_notcmp36138_pop1052(conv2_B8_merge_out_notcmp36138_pop1052),
        .out_notcmp41130_pop9830(conv2_B8_merge_out_notcmp41130_pop9830),
        .out_notcmp46122_pop9526(conv2_B8_merge_out_notcmp46122_pop9526),
        .out_notcmp5195_pop8720(conv2_B8_merge_out_notcmp5195_pop8720),
        .out_notcmp5676_pop8312(conv2_B8_merge_out_notcmp5676_pop8312),
        .out_stall_out_0(conv2_B8_merge_out_stall_out_0),
        .out_valid_out(conv2_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B8_stall_region(BLACKBOX,2)
    conv2_bb_B8_stall_region thebb_conv2_B8_stall_region (
        .in_exitcond19137_pop1041(conv2_B8_merge_out_exitcond19137_pop1041),
        .in_exitcond22128_pop9728(conv2_B8_merge_out_exitcond22128_pop9728),
        .in_exitcond25119_pop9423(conv2_B8_merge_out_exitcond25119_pop9423),
        .in_exitcond2891_pop8616(conv2_B8_merge_out_exitcond2891_pop8616),
        .in_exitcond3171_pop827(conv2_B8_merge_out_exitcond3171_pop827),
        .in_feedback_stall_in_57(in_feedback_stall_in_57),
        .in_memdep_35(conv2_B8_merge_out_memdep_35),
        .in_notcmp36138_pop1052(conv2_B8_merge_out_notcmp36138_pop1052),
        .in_notcmp41130_pop9830(conv2_B8_merge_out_notcmp41130_pop9830),
        .in_notcmp46122_pop9526(conv2_B8_merge_out_notcmp46122_pop9526),
        .in_notcmp5195_pop8720(conv2_B8_merge_out_notcmp5195_pop8720),
        .in_notcmp5676_pop8312(conv2_B8_merge_out_notcmp5676_pop8312),
        .in_stall_in(conv2_B8_branch_out_stall_out),
        .in_valid_in(conv2_B8_merge_out_valid_out),
        .out_exitcond22128_pop9728(bb_conv2_B8_stall_region_out_exitcond22128_pop9728),
        .out_exitcond25119_pop9423(bb_conv2_B8_stall_region_out_exitcond25119_pop9423),
        .out_exitcond2891_pop8616(bb_conv2_B8_stall_region_out_exitcond2891_pop8616),
        .out_exitcond3171_pop827(bb_conv2_B8_stall_region_out_exitcond3171_pop827),
        .out_feedback_out_57(bb_conv2_B8_stall_region_out_feedback_out_57),
        .out_feedback_valid_out_57(bb_conv2_B8_stall_region_out_feedback_valid_out_57),
        .out_memdep_35(bb_conv2_B8_stall_region_out_memdep_35),
        .out_notcmp36138_pop1052(bb_conv2_B8_stall_region_out_notcmp36138_pop1052),
        .out_notcmp41130_pop9830(bb_conv2_B8_stall_region_out_notcmp41130_pop9830),
        .out_notcmp46122_pop9526(bb_conv2_B8_stall_region_out_notcmp46122_pop9526),
        .out_notcmp5195_pop8720(bb_conv2_B8_stall_region_out_notcmp5195_pop8720),
        .out_notcmp5676_pop8312(bb_conv2_B8_stall_region_out_notcmp5676_pop8312),
        .out_stall_out(bb_conv2_B8_stall_region_out_stall_out),
        .out_valid_out(bb_conv2_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_57_sync(GPOUT,5)
    assign out_feedback_out_57 = bb_conv2_B8_stall_region_out_feedback_out_57;

    // feedback_valid_out_57_sync(GPOUT,7)
    assign out_feedback_valid_out_57 = bb_conv2_B8_stall_region_out_feedback_valid_out_57;

    // out_exitcond22128_pop9728(GPOUT,22)
    assign out_exitcond22128_pop9728 = conv2_B8_branch_out_exitcond22128_pop9728;

    // out_exitcond25119_pop9423(GPOUT,23)
    assign out_exitcond25119_pop9423 = conv2_B8_branch_out_exitcond25119_pop9423;

    // out_exitcond2891_pop8616(GPOUT,24)
    assign out_exitcond2891_pop8616 = conv2_B8_branch_out_exitcond2891_pop8616;

    // out_exitcond3171_pop827(GPOUT,25)
    assign out_exitcond3171_pop827 = conv2_B8_branch_out_exitcond3171_pop827;

    // out_memdep_35(GPOUT,26)
    assign out_memdep_35 = conv2_B8_branch_out_memdep_35;

    // out_notcmp41130_pop9830(GPOUT,27)
    assign out_notcmp41130_pop9830 = conv2_B8_branch_out_notcmp41130_pop9830;

    // out_notcmp46122_pop9526(GPOUT,28)
    assign out_notcmp46122_pop9526 = conv2_B8_branch_out_notcmp46122_pop9526;

    // out_notcmp5195_pop8720(GPOUT,29)
    assign out_notcmp5195_pop8720 = conv2_B8_branch_out_notcmp5195_pop8720;

    // out_notcmp5676_pop8312(GPOUT,30)
    assign out_notcmp5676_pop8312 = conv2_B8_branch_out_notcmp5676_pop8312;

    // out_stall_in_0(GPOUT,31)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,32)
    assign out_stall_out_0 = conv2_B8_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = conv2_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,34)
    assign out_valid_out_1 = conv2_B8_branch_out_valid_out_1;

endmodule
