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

// SystemVerilog created from bb_conv2_B9
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B9 (
    output wire [0:0] out_feedback_out_39,
    input wire [0:0] in_feedback_stall_in_39,
    output wire [0:0] out_feedback_valid_out_39,
    input wire [0:0] in_exitcond22128_pop9727_0,
    input wire [0:0] in_exitcond25119_pop9422_0,
    input wire [0:0] in_exitcond2891_pop8615_0,
    input wire [0:0] in_exitcond3171_pop826_0,
    input wire [0:0] in_memdep_34_0,
    input wire [0:0] in_notcmp41130_pop9829_0,
    input wire [0:0] in_notcmp46122_pop9525_0,
    input wire [0:0] in_notcmp5195_pop8719_0,
    input wire [0:0] in_notcmp5676_pop8311_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_exitcond25119_pop9422,
    output wire [0:0] out_exitcond2891_pop8615,
    output wire [0:0] out_exitcond3171_pop826,
    output wire [0:0] out_memdep_34,
    output wire [0:0] out_notcmp46122_pop9525,
    output wire [0:0] out_notcmp5195_pop8719,
    output wire [0:0] out_notcmp5676_pop8311,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2_B9_stall_region_out_exitcond25119_pop9422;
    wire [0:0] bb_conv2_B9_stall_region_out_exitcond2891_pop8615;
    wire [0:0] bb_conv2_B9_stall_region_out_exitcond3171_pop826;
    wire [0:0] bb_conv2_B9_stall_region_out_feedback_out_39;
    wire [0:0] bb_conv2_B9_stall_region_out_feedback_valid_out_39;
    wire [0:0] bb_conv2_B9_stall_region_out_memdep_34;
    wire [0:0] bb_conv2_B9_stall_region_out_notcmp41130_pop9829;
    wire [0:0] bb_conv2_B9_stall_region_out_notcmp46122_pop9525;
    wire [0:0] bb_conv2_B9_stall_region_out_notcmp5195_pop8719;
    wire [0:0] bb_conv2_B9_stall_region_out_notcmp5676_pop8311;
    wire [0:0] bb_conv2_B9_stall_region_out_stall_out;
    wire [0:0] bb_conv2_B9_stall_region_out_valid_out;
    wire [0:0] conv2_B9_branch_out_exitcond25119_pop9422;
    wire [0:0] conv2_B9_branch_out_exitcond2891_pop8615;
    wire [0:0] conv2_B9_branch_out_exitcond3171_pop826;
    wire [0:0] conv2_B9_branch_out_memdep_34;
    wire [0:0] conv2_B9_branch_out_notcmp46122_pop9525;
    wire [0:0] conv2_B9_branch_out_notcmp5195_pop8719;
    wire [0:0] conv2_B9_branch_out_notcmp5676_pop8311;
    wire [0:0] conv2_B9_branch_out_stall_out;
    wire [0:0] conv2_B9_branch_out_valid_out_0;
    wire [0:0] conv2_B9_branch_out_valid_out_1;
    wire [0:0] conv2_B9_merge_out_exitcond22128_pop9727;
    wire [0:0] conv2_B9_merge_out_exitcond25119_pop9422;
    wire [0:0] conv2_B9_merge_out_exitcond2891_pop8615;
    wire [0:0] conv2_B9_merge_out_exitcond3171_pop826;
    wire [0:0] conv2_B9_merge_out_memdep_34;
    wire [0:0] conv2_B9_merge_out_notcmp41130_pop9829;
    wire [0:0] conv2_B9_merge_out_notcmp46122_pop9525;
    wire [0:0] conv2_B9_merge_out_notcmp5195_pop8719;
    wire [0:0] conv2_B9_merge_out_notcmp5676_pop8311;
    wire [0:0] conv2_B9_merge_out_stall_out_0;
    wire [0:0] conv2_B9_merge_out_valid_out;


    // conv2_B9_branch(BLACKBOX,3)
    conv2_B9_branch theconv2_B9_branch (
        .in_exitcond25119_pop9422(bb_conv2_B9_stall_region_out_exitcond25119_pop9422),
        .in_exitcond2891_pop8615(bb_conv2_B9_stall_region_out_exitcond2891_pop8615),
        .in_exitcond3171_pop826(bb_conv2_B9_stall_region_out_exitcond3171_pop826),
        .in_memdep_34(bb_conv2_B9_stall_region_out_memdep_34),
        .in_notcmp41130_pop9829(bb_conv2_B9_stall_region_out_notcmp41130_pop9829),
        .in_notcmp46122_pop9525(bb_conv2_B9_stall_region_out_notcmp46122_pop9525),
        .in_notcmp5195_pop8719(bb_conv2_B9_stall_region_out_notcmp5195_pop8719),
        .in_notcmp5676_pop8311(bb_conv2_B9_stall_region_out_notcmp5676_pop8311),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2_B9_stall_region_out_valid_out),
        .out_exitcond25119_pop9422(conv2_B9_branch_out_exitcond25119_pop9422),
        .out_exitcond2891_pop8615(conv2_B9_branch_out_exitcond2891_pop8615),
        .out_exitcond3171_pop826(conv2_B9_branch_out_exitcond3171_pop826),
        .out_memdep_34(conv2_B9_branch_out_memdep_34),
        .out_notcmp46122_pop9525(conv2_B9_branch_out_notcmp46122_pop9525),
        .out_notcmp5195_pop8719(conv2_B9_branch_out_notcmp5195_pop8719),
        .out_notcmp5676_pop8311(conv2_B9_branch_out_notcmp5676_pop8311),
        .out_stall_out(conv2_B9_branch_out_stall_out),
        .out_valid_out_0(conv2_B9_branch_out_valid_out_0),
        .out_valid_out_1(conv2_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B9_merge(BLACKBOX,4)
    conv2_B9_merge theconv2_B9_merge (
        .in_exitcond22128_pop9727_0(in_exitcond22128_pop9727_0),
        .in_exitcond25119_pop9422_0(in_exitcond25119_pop9422_0),
        .in_exitcond2891_pop8615_0(in_exitcond2891_pop8615_0),
        .in_exitcond3171_pop826_0(in_exitcond3171_pop826_0),
        .in_memdep_34_0(in_memdep_34_0),
        .in_notcmp41130_pop9829_0(in_notcmp41130_pop9829_0),
        .in_notcmp46122_pop9525_0(in_notcmp46122_pop9525_0),
        .in_notcmp5195_pop8719_0(in_notcmp5195_pop8719_0),
        .in_notcmp5676_pop8311_0(in_notcmp5676_pop8311_0),
        .in_stall_in(bb_conv2_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_exitcond22128_pop9727(conv2_B9_merge_out_exitcond22128_pop9727),
        .out_exitcond25119_pop9422(conv2_B9_merge_out_exitcond25119_pop9422),
        .out_exitcond2891_pop8615(conv2_B9_merge_out_exitcond2891_pop8615),
        .out_exitcond3171_pop826(conv2_B9_merge_out_exitcond3171_pop826),
        .out_memdep_34(conv2_B9_merge_out_memdep_34),
        .out_notcmp41130_pop9829(conv2_B9_merge_out_notcmp41130_pop9829),
        .out_notcmp46122_pop9525(conv2_B9_merge_out_notcmp46122_pop9525),
        .out_notcmp5195_pop8719(conv2_B9_merge_out_notcmp5195_pop8719),
        .out_notcmp5676_pop8311(conv2_B9_merge_out_notcmp5676_pop8311),
        .out_stall_out_0(conv2_B9_merge_out_stall_out_0),
        .out_valid_out(conv2_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B9_stall_region(BLACKBOX,2)
    conv2_bb_B9_stall_region thebb_conv2_B9_stall_region (
        .in_exitcond22128_pop9727(conv2_B9_merge_out_exitcond22128_pop9727),
        .in_exitcond25119_pop9422(conv2_B9_merge_out_exitcond25119_pop9422),
        .in_exitcond2891_pop8615(conv2_B9_merge_out_exitcond2891_pop8615),
        .in_exitcond3171_pop826(conv2_B9_merge_out_exitcond3171_pop826),
        .in_feedback_stall_in_39(in_feedback_stall_in_39),
        .in_memdep_34(conv2_B9_merge_out_memdep_34),
        .in_notcmp41130_pop9829(conv2_B9_merge_out_notcmp41130_pop9829),
        .in_notcmp46122_pop9525(conv2_B9_merge_out_notcmp46122_pop9525),
        .in_notcmp5195_pop8719(conv2_B9_merge_out_notcmp5195_pop8719),
        .in_notcmp5676_pop8311(conv2_B9_merge_out_notcmp5676_pop8311),
        .in_stall_in(conv2_B9_branch_out_stall_out),
        .in_valid_in(conv2_B9_merge_out_valid_out),
        .out_exitcond25119_pop9422(bb_conv2_B9_stall_region_out_exitcond25119_pop9422),
        .out_exitcond2891_pop8615(bb_conv2_B9_stall_region_out_exitcond2891_pop8615),
        .out_exitcond3171_pop826(bb_conv2_B9_stall_region_out_exitcond3171_pop826),
        .out_feedback_out_39(bb_conv2_B9_stall_region_out_feedback_out_39),
        .out_feedback_valid_out_39(bb_conv2_B9_stall_region_out_feedback_valid_out_39),
        .out_memdep_34(bb_conv2_B9_stall_region_out_memdep_34),
        .out_notcmp41130_pop9829(bb_conv2_B9_stall_region_out_notcmp41130_pop9829),
        .out_notcmp46122_pop9525(bb_conv2_B9_stall_region_out_notcmp46122_pop9525),
        .out_notcmp5195_pop8719(bb_conv2_B9_stall_region_out_notcmp5195_pop8719),
        .out_notcmp5676_pop8311(bb_conv2_B9_stall_region_out_notcmp5676_pop8311),
        .out_stall_out(bb_conv2_B9_stall_region_out_stall_out),
        .out_valid_out(bb_conv2_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_39_sync(GPOUT,5)
    assign out_feedback_out_39 = bb_conv2_B9_stall_region_out_feedback_out_39;

    // feedback_valid_out_39_sync(GPOUT,7)
    assign out_feedback_valid_out_39 = bb_conv2_B9_stall_region_out_feedback_valid_out_39;

    // out_exitcond25119_pop9422(GPOUT,20)
    assign out_exitcond25119_pop9422 = conv2_B9_branch_out_exitcond25119_pop9422;

    // out_exitcond2891_pop8615(GPOUT,21)
    assign out_exitcond2891_pop8615 = conv2_B9_branch_out_exitcond2891_pop8615;

    // out_exitcond3171_pop826(GPOUT,22)
    assign out_exitcond3171_pop826 = conv2_B9_branch_out_exitcond3171_pop826;

    // out_memdep_34(GPOUT,23)
    assign out_memdep_34 = conv2_B9_branch_out_memdep_34;

    // out_notcmp46122_pop9525(GPOUT,24)
    assign out_notcmp46122_pop9525 = conv2_B9_branch_out_notcmp46122_pop9525;

    // out_notcmp5195_pop8719(GPOUT,25)
    assign out_notcmp5195_pop8719 = conv2_B9_branch_out_notcmp5195_pop8719;

    // out_notcmp5676_pop8311(GPOUT,26)
    assign out_notcmp5676_pop8311 = conv2_B9_branch_out_notcmp5676_pop8311;

    // out_stall_in_0(GPOUT,27)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = conv2_B9_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = conv2_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,30)
    assign out_valid_out_1 = conv2_B9_branch_out_valid_out_1;

endmodule
