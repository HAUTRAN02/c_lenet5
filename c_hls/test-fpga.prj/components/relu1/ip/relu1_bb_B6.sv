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

// SystemVerilog created from bb_relu1_B6
// Created for function/kernel relu1
// SystemVerilog created on Sat Apr  1 13:10:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu1_bb_B6 (
    output wire [0:0] out_feedback_out_12,
    input wire [0:0] in_feedback_stall_in_12,
    output wire [0:0] out_feedback_valid_out_12,
    input wire [0:0] in_exitcond828_pop253_0,
    input wire [0:0] in_memdep_7_0,
    input wire [0:0] in_notcmp1630_pop265_0,
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

    wire [0:0] bb_relu1_B6_stall_region_out_feedback_out_12;
    wire [0:0] bb_relu1_B6_stall_region_out_feedback_valid_out_12;
    wire [0:0] bb_relu1_B6_stall_region_out_notcmp1630_pop265;
    wire [0:0] bb_relu1_B6_stall_region_out_stall_out;
    wire [0:0] bb_relu1_B6_stall_region_out_valid_out;
    wire [0:0] relu1_B6_branch_out_stall_out;
    wire [0:0] relu1_B6_branch_out_valid_out_0;
    wire [0:0] relu1_B6_branch_out_valid_out_1;
    wire [0:0] relu1_B6_merge_out_exitcond828_pop253;
    wire [0:0] relu1_B6_merge_out_memdep_7;
    wire [0:0] relu1_B6_merge_out_notcmp1630_pop265;
    wire [0:0] relu1_B6_merge_out_stall_out_0;
    wire [0:0] relu1_B6_merge_out_valid_out;


    // relu1_B6_branch(BLACKBOX,16)
    relu1_B6_branch therelu1_B6_branch (
        .in_notcmp1630_pop265(bb_relu1_B6_stall_region_out_notcmp1630_pop265),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_relu1_B6_stall_region_out_valid_out),
        .out_stall_out(relu1_B6_branch_out_stall_out),
        .out_valid_out_0(relu1_B6_branch_out_valid_out_0),
        .out_valid_out_1(relu1_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // relu1_B6_merge(BLACKBOX,17)
    relu1_B6_merge therelu1_B6_merge (
        .in_exitcond828_pop253_0(in_exitcond828_pop253_0),
        .in_memdep_7_0(in_memdep_7_0),
        .in_notcmp1630_pop265_0(in_notcmp1630_pop265_0),
        .in_stall_in(bb_relu1_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_exitcond828_pop253(relu1_B6_merge_out_exitcond828_pop253),
        .out_memdep_7(relu1_B6_merge_out_memdep_7),
        .out_notcmp1630_pop265(relu1_B6_merge_out_notcmp1630_pop265),
        .out_stall_out_0(relu1_B6_merge_out_stall_out_0),
        .out_valid_out(relu1_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B6_stall_region(BLACKBOX,2)
    relu1_bb_B6_stall_region thebb_relu1_B6_stall_region (
        .in_exitcond828_pop253(relu1_B6_merge_out_exitcond828_pop253),
        .in_feedback_stall_in_12(in_feedback_stall_in_12),
        .in_memdep_7(relu1_B6_merge_out_memdep_7),
        .in_notcmp1630_pop265(relu1_B6_merge_out_notcmp1630_pop265),
        .in_stall_in(relu1_B6_branch_out_stall_out),
        .in_valid_in(relu1_B6_merge_out_valid_out),
        .out_feedback_out_12(bb_relu1_B6_stall_region_out_feedback_out_12),
        .out_feedback_valid_out_12(bb_relu1_B6_stall_region_out_feedback_valid_out_12),
        .out_notcmp1630_pop265(bb_relu1_B6_stall_region_out_notcmp1630_pop265),
        .out_stall_out(bb_relu1_B6_stall_region_out_stall_out),
        .out_valid_out(bb_relu1_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_12_sync(GPOUT,3)
    assign out_feedback_out_12 = bb_relu1_B6_stall_region_out_feedback_out_12;

    // feedback_valid_out_12_sync(GPOUT,5)
    assign out_feedback_valid_out_12 = bb_relu1_B6_stall_region_out_feedback_valid_out_12;

    // out_stall_in_0(GPOUT,12)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,13)
    assign out_stall_out_0 = relu1_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,14)
    assign out_valid_out_0 = relu1_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,15)
    assign out_valid_out_1 = relu1_B6_branch_out_valid_out_1;

endmodule
