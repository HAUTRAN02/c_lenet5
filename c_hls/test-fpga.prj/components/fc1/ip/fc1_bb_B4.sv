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

// SystemVerilog created from bb_fc1_B4
// Created for function/kernel fc1
// SystemVerilog created on Sat Apr  1 13:10:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fc1_bb_B4 (
    output wire [0:0] out_feedback_out_10,
    input wire [0:0] in_feedback_stall_in_10,
    output wire [0:0] out_feedback_valid_out_10,
    input wire [0:0] in_exitcond722_pop161_0,
    input wire [0:0] in_memdep_3_0,
    input wire [0:0] in_notcmp1223_pop172_0,
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

    wire [0:0] bb_fc1_B4_stall_region_out_feedback_out_10;
    wire [0:0] bb_fc1_B4_stall_region_out_feedback_valid_out_10;
    wire [0:0] bb_fc1_B4_stall_region_out_notcmp1223_pop172;
    wire [0:0] bb_fc1_B4_stall_region_out_stall_out;
    wire [0:0] bb_fc1_B4_stall_region_out_valid_out;
    wire [0:0] fc1_B4_branch_out_stall_out;
    wire [0:0] fc1_B4_branch_out_valid_out_0;
    wire [0:0] fc1_B4_branch_out_valid_out_1;
    wire [0:0] fc1_B4_merge_out_exitcond722_pop161;
    wire [0:0] fc1_B4_merge_out_memdep_3;
    wire [0:0] fc1_B4_merge_out_notcmp1223_pop172;
    wire [0:0] fc1_B4_merge_out_stall_out_0;
    wire [0:0] fc1_B4_merge_out_valid_out;


    // fc1_B4_branch(BLACKBOX,3)
    fc1_B4_branch thefc1_B4_branch (
        .in_notcmp1223_pop172(bb_fc1_B4_stall_region_out_notcmp1223_pop172),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_fc1_B4_stall_region_out_valid_out),
        .out_stall_out(fc1_B4_branch_out_stall_out),
        .out_valid_out_0(fc1_B4_branch_out_valid_out_0),
        .out_valid_out_1(fc1_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // fc1_B4_merge(BLACKBOX,4)
    fc1_B4_merge thefc1_B4_merge (
        .in_exitcond722_pop161_0(in_exitcond722_pop161_0),
        .in_memdep_3_0(in_memdep_3_0),
        .in_notcmp1223_pop172_0(in_notcmp1223_pop172_0),
        .in_stall_in(bb_fc1_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_exitcond722_pop161(fc1_B4_merge_out_exitcond722_pop161),
        .out_memdep_3(fc1_B4_merge_out_memdep_3),
        .out_notcmp1223_pop172(fc1_B4_merge_out_notcmp1223_pop172),
        .out_stall_out_0(fc1_B4_merge_out_stall_out_0),
        .out_valid_out(fc1_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fc1_B4_stall_region(BLACKBOX,2)
    fc1_bb_B4_stall_region thebb_fc1_B4_stall_region (
        .in_exitcond722_pop161(fc1_B4_merge_out_exitcond722_pop161),
        .in_feedback_stall_in_10(in_feedback_stall_in_10),
        .in_memdep_3(fc1_B4_merge_out_memdep_3),
        .in_notcmp1223_pop172(fc1_B4_merge_out_notcmp1223_pop172),
        .in_stall_in(fc1_B4_branch_out_stall_out),
        .in_valid_in(fc1_B4_merge_out_valid_out),
        .out_feedback_out_10(bb_fc1_B4_stall_region_out_feedback_out_10),
        .out_feedback_valid_out_10(bb_fc1_B4_stall_region_out_feedback_valid_out_10),
        .out_notcmp1223_pop172(bb_fc1_B4_stall_region_out_notcmp1223_pop172),
        .out_stall_out(bb_fc1_B4_stall_region_out_stall_out),
        .out_valid_out(bb_fc1_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_10_sync(GPOUT,5)
    assign out_feedback_out_10 = bb_fc1_B4_stall_region_out_feedback_out_10;

    // feedback_valid_out_10_sync(GPOUT,7)
    assign out_feedback_valid_out_10 = bb_fc1_B4_stall_region_out_feedback_valid_out_10;

    // out_stall_in_0(GPOUT,14)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,15)
    assign out_stall_out_0 = fc1_B4_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,16)
    assign out_valid_out_0 = fc1_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,17)
    assign out_valid_out_1 = fc1_B4_branch_out_valid_out_1;

endmodule
