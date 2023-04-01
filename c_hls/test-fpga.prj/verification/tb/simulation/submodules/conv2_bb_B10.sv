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

// SystemVerilog created from bb_conv2_B10
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B10 (
    output wire [0:0] out_feedback_out_28,
    input wire [0:0] in_feedback_stall_in_28,
    output wire [0:0] out_feedback_valid_out_28,
    input wire [0:0] in_exitcond25119_pop9421_0,
    input wire [0:0] in_exitcond2891_pop8614_0,
    input wire [0:0] in_exitcond3171_pop825_0,
    input wire [0:0] in_memdep_33_0,
    input wire [0:0] in_notcmp46122_pop9524_0,
    input wire [0:0] in_notcmp5195_pop8718_0,
    input wire [0:0] in_notcmp5676_pop8310_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_exitcond2891_pop8614,
    output wire [0:0] out_exitcond3171_pop825,
    output wire [0:0] out_memdep_33,
    output wire [0:0] out_notcmp5195_pop8718,
    output wire [0:0] out_notcmp5676_pop8310,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2_B10_stall_region_out_exitcond2891_pop8614;
    wire [0:0] bb_conv2_B10_stall_region_out_exitcond3171_pop825;
    wire [0:0] bb_conv2_B10_stall_region_out_feedback_out_28;
    wire [0:0] bb_conv2_B10_stall_region_out_feedback_valid_out_28;
    wire [0:0] bb_conv2_B10_stall_region_out_memdep_33;
    wire [0:0] bb_conv2_B10_stall_region_out_notcmp46122_pop9524;
    wire [0:0] bb_conv2_B10_stall_region_out_notcmp5195_pop8718;
    wire [0:0] bb_conv2_B10_stall_region_out_notcmp5676_pop8310;
    wire [0:0] bb_conv2_B10_stall_region_out_stall_out;
    wire [0:0] bb_conv2_B10_stall_region_out_valid_out;
    wire [0:0] conv2_B10_branch_out_exitcond2891_pop8614;
    wire [0:0] conv2_B10_branch_out_exitcond3171_pop825;
    wire [0:0] conv2_B10_branch_out_memdep_33;
    wire [0:0] conv2_B10_branch_out_notcmp5195_pop8718;
    wire [0:0] conv2_B10_branch_out_notcmp5676_pop8310;
    wire [0:0] conv2_B10_branch_out_stall_out;
    wire [0:0] conv2_B10_branch_out_valid_out_0;
    wire [0:0] conv2_B10_branch_out_valid_out_1;
    wire [0:0] conv2_B10_merge_out_exitcond25119_pop9421;
    wire [0:0] conv2_B10_merge_out_exitcond2891_pop8614;
    wire [0:0] conv2_B10_merge_out_exitcond3171_pop825;
    wire [0:0] conv2_B10_merge_out_memdep_33;
    wire [0:0] conv2_B10_merge_out_notcmp46122_pop9524;
    wire [0:0] conv2_B10_merge_out_notcmp5195_pop8718;
    wire [0:0] conv2_B10_merge_out_notcmp5676_pop8310;
    wire [0:0] conv2_B10_merge_out_stall_out_0;
    wire [0:0] conv2_B10_merge_out_valid_out;


    // conv2_B10_branch(BLACKBOX,3)
    conv2_B10_branch theconv2_B10_branch (
        .in_exitcond2891_pop8614(bb_conv2_B10_stall_region_out_exitcond2891_pop8614),
        .in_exitcond3171_pop825(bb_conv2_B10_stall_region_out_exitcond3171_pop825),
        .in_memdep_33(bb_conv2_B10_stall_region_out_memdep_33),
        .in_notcmp46122_pop9524(bb_conv2_B10_stall_region_out_notcmp46122_pop9524),
        .in_notcmp5195_pop8718(bb_conv2_B10_stall_region_out_notcmp5195_pop8718),
        .in_notcmp5676_pop8310(bb_conv2_B10_stall_region_out_notcmp5676_pop8310),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2_B10_stall_region_out_valid_out),
        .out_exitcond2891_pop8614(conv2_B10_branch_out_exitcond2891_pop8614),
        .out_exitcond3171_pop825(conv2_B10_branch_out_exitcond3171_pop825),
        .out_memdep_33(conv2_B10_branch_out_memdep_33),
        .out_notcmp5195_pop8718(conv2_B10_branch_out_notcmp5195_pop8718),
        .out_notcmp5676_pop8310(conv2_B10_branch_out_notcmp5676_pop8310),
        .out_stall_out(conv2_B10_branch_out_stall_out),
        .out_valid_out_0(conv2_B10_branch_out_valid_out_0),
        .out_valid_out_1(conv2_B10_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B10_merge(BLACKBOX,4)
    conv2_B10_merge theconv2_B10_merge (
        .in_exitcond25119_pop9421_0(in_exitcond25119_pop9421_0),
        .in_exitcond2891_pop8614_0(in_exitcond2891_pop8614_0),
        .in_exitcond3171_pop825_0(in_exitcond3171_pop825_0),
        .in_memdep_33_0(in_memdep_33_0),
        .in_notcmp46122_pop9524_0(in_notcmp46122_pop9524_0),
        .in_notcmp5195_pop8718_0(in_notcmp5195_pop8718_0),
        .in_notcmp5676_pop8310_0(in_notcmp5676_pop8310_0),
        .in_stall_in(bb_conv2_B10_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_exitcond25119_pop9421(conv2_B10_merge_out_exitcond25119_pop9421),
        .out_exitcond2891_pop8614(conv2_B10_merge_out_exitcond2891_pop8614),
        .out_exitcond3171_pop825(conv2_B10_merge_out_exitcond3171_pop825),
        .out_memdep_33(conv2_B10_merge_out_memdep_33),
        .out_notcmp46122_pop9524(conv2_B10_merge_out_notcmp46122_pop9524),
        .out_notcmp5195_pop8718(conv2_B10_merge_out_notcmp5195_pop8718),
        .out_notcmp5676_pop8310(conv2_B10_merge_out_notcmp5676_pop8310),
        .out_stall_out_0(conv2_B10_merge_out_stall_out_0),
        .out_valid_out(conv2_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B10_stall_region(BLACKBOX,2)
    conv2_bb_B10_stall_region thebb_conv2_B10_stall_region (
        .in_exitcond25119_pop9421(conv2_B10_merge_out_exitcond25119_pop9421),
        .in_exitcond2891_pop8614(conv2_B10_merge_out_exitcond2891_pop8614),
        .in_exitcond3171_pop825(conv2_B10_merge_out_exitcond3171_pop825),
        .in_feedback_stall_in_28(in_feedback_stall_in_28),
        .in_memdep_33(conv2_B10_merge_out_memdep_33),
        .in_notcmp46122_pop9524(conv2_B10_merge_out_notcmp46122_pop9524),
        .in_notcmp5195_pop8718(conv2_B10_merge_out_notcmp5195_pop8718),
        .in_notcmp5676_pop8310(conv2_B10_merge_out_notcmp5676_pop8310),
        .in_stall_in(conv2_B10_branch_out_stall_out),
        .in_valid_in(conv2_B10_merge_out_valid_out),
        .out_exitcond2891_pop8614(bb_conv2_B10_stall_region_out_exitcond2891_pop8614),
        .out_exitcond3171_pop825(bb_conv2_B10_stall_region_out_exitcond3171_pop825),
        .out_feedback_out_28(bb_conv2_B10_stall_region_out_feedback_out_28),
        .out_feedback_valid_out_28(bb_conv2_B10_stall_region_out_feedback_valid_out_28),
        .out_memdep_33(bb_conv2_B10_stall_region_out_memdep_33),
        .out_notcmp46122_pop9524(bb_conv2_B10_stall_region_out_notcmp46122_pop9524),
        .out_notcmp5195_pop8718(bb_conv2_B10_stall_region_out_notcmp5195_pop8718),
        .out_notcmp5676_pop8310(bb_conv2_B10_stall_region_out_notcmp5676_pop8310),
        .out_stall_out(bb_conv2_B10_stall_region_out_stall_out),
        .out_valid_out(bb_conv2_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_28_sync(GPOUT,5)
    assign out_feedback_out_28 = bb_conv2_B10_stall_region_out_feedback_out_28;

    // feedback_valid_out_28_sync(GPOUT,7)
    assign out_feedback_valid_out_28 = bb_conv2_B10_stall_region_out_feedback_valid_out_28;

    // out_exitcond2891_pop8614(GPOUT,18)
    assign out_exitcond2891_pop8614 = conv2_B10_branch_out_exitcond2891_pop8614;

    // out_exitcond3171_pop825(GPOUT,19)
    assign out_exitcond3171_pop825 = conv2_B10_branch_out_exitcond3171_pop825;

    // out_memdep_33(GPOUT,20)
    assign out_memdep_33 = conv2_B10_branch_out_memdep_33;

    // out_notcmp5195_pop8718(GPOUT,21)
    assign out_notcmp5195_pop8718 = conv2_B10_branch_out_notcmp5195_pop8718;

    // out_notcmp5676_pop8310(GPOUT,22)
    assign out_notcmp5676_pop8310 = conv2_B10_branch_out_notcmp5676_pop8310;

    // out_stall_in_0(GPOUT,23)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,24)
    assign out_stall_out_0 = conv2_B10_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,25)
    assign out_valid_out_0 = conv2_B10_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,26)
    assign out_valid_out_1 = conv2_B10_branch_out_valid_out_1;

endmodule
