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

// SystemVerilog created from bb_conv1_B5
// Created for function/kernel conv1
// SystemVerilog created on Sat Apr  1 13:10:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv1_bb_B5 (
    output wire [0:0] out_feedback_out_15,
    input wire [0:0] in_feedback_stall_in_15,
    output wire [0:0] out_feedback_valid_out_15,
    input wire [0:0] in_exitcond1234_pop254_0,
    input wire [0:0] in_exitcond941_pop291_0,
    input wire [0:0] in_memdep_8_0,
    input wire [0:0] in_notcmp1742_pop302_0,
    input wire [0:0] in_notcmp2236_pop266_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_exitcond1234_pop254,
    output wire [0:0] out_memdep_8,
    output wire [0:0] out_notcmp2236_pop266,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv1_B5_stall_region_out_exitcond1234_pop254;
    wire [0:0] bb_conv1_B5_stall_region_out_feedback_out_15;
    wire [0:0] bb_conv1_B5_stall_region_out_feedback_valid_out_15;
    wire [0:0] bb_conv1_B5_stall_region_out_memdep_8;
    wire [0:0] bb_conv1_B5_stall_region_out_notcmp1742_pop302;
    wire [0:0] bb_conv1_B5_stall_region_out_notcmp2236_pop266;
    wire [0:0] bb_conv1_B5_stall_region_out_stall_out;
    wire [0:0] bb_conv1_B5_stall_region_out_valid_out;
    wire [0:0] conv1_B5_branch_out_exitcond1234_pop254;
    wire [0:0] conv1_B5_branch_out_memdep_8;
    wire [0:0] conv1_B5_branch_out_notcmp2236_pop266;
    wire [0:0] conv1_B5_branch_out_stall_out;
    wire [0:0] conv1_B5_branch_out_valid_out_0;
    wire [0:0] conv1_B5_branch_out_valid_out_1;
    wire [0:0] conv1_B5_merge_out_exitcond1234_pop254;
    wire [0:0] conv1_B5_merge_out_exitcond941_pop291;
    wire [0:0] conv1_B5_merge_out_memdep_8;
    wire [0:0] conv1_B5_merge_out_notcmp1742_pop302;
    wire [0:0] conv1_B5_merge_out_notcmp2236_pop266;
    wire [0:0] conv1_B5_merge_out_stall_out_0;
    wire [0:0] conv1_B5_merge_out_valid_out;


    // conv1_B5_branch(BLACKBOX,3)
    conv1_B5_branch theconv1_B5_branch (
        .in_exitcond1234_pop254(bb_conv1_B5_stall_region_out_exitcond1234_pop254),
        .in_memdep_8(bb_conv1_B5_stall_region_out_memdep_8),
        .in_notcmp1742_pop302(bb_conv1_B5_stall_region_out_notcmp1742_pop302),
        .in_notcmp2236_pop266(bb_conv1_B5_stall_region_out_notcmp2236_pop266),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv1_B5_stall_region_out_valid_out),
        .out_exitcond1234_pop254(conv1_B5_branch_out_exitcond1234_pop254),
        .out_memdep_8(conv1_B5_branch_out_memdep_8),
        .out_notcmp2236_pop266(conv1_B5_branch_out_notcmp2236_pop266),
        .out_stall_out(conv1_B5_branch_out_stall_out),
        .out_valid_out_0(conv1_B5_branch_out_valid_out_0),
        .out_valid_out_1(conv1_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // conv1_B5_merge(BLACKBOX,4)
    conv1_B5_merge theconv1_B5_merge (
        .in_exitcond1234_pop254_0(in_exitcond1234_pop254_0),
        .in_exitcond941_pop291_0(in_exitcond941_pop291_0),
        .in_memdep_8_0(in_memdep_8_0),
        .in_notcmp1742_pop302_0(in_notcmp1742_pop302_0),
        .in_notcmp2236_pop266_0(in_notcmp2236_pop266_0),
        .in_stall_in(bb_conv1_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_exitcond1234_pop254(conv1_B5_merge_out_exitcond1234_pop254),
        .out_exitcond941_pop291(conv1_B5_merge_out_exitcond941_pop291),
        .out_memdep_8(conv1_B5_merge_out_memdep_8),
        .out_notcmp1742_pop302(conv1_B5_merge_out_notcmp1742_pop302),
        .out_notcmp2236_pop266(conv1_B5_merge_out_notcmp2236_pop266),
        .out_stall_out_0(conv1_B5_merge_out_stall_out_0),
        .out_valid_out(conv1_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv1_B5_stall_region(BLACKBOX,2)
    conv1_bb_B5_stall_region thebb_conv1_B5_stall_region (
        .in_exitcond1234_pop254(conv1_B5_merge_out_exitcond1234_pop254),
        .in_exitcond941_pop291(conv1_B5_merge_out_exitcond941_pop291),
        .in_feedback_stall_in_15(in_feedback_stall_in_15),
        .in_memdep_8(conv1_B5_merge_out_memdep_8),
        .in_notcmp1742_pop302(conv1_B5_merge_out_notcmp1742_pop302),
        .in_notcmp2236_pop266(conv1_B5_merge_out_notcmp2236_pop266),
        .in_stall_in(conv1_B5_branch_out_stall_out),
        .in_valid_in(conv1_B5_merge_out_valid_out),
        .out_exitcond1234_pop254(bb_conv1_B5_stall_region_out_exitcond1234_pop254),
        .out_feedback_out_15(bb_conv1_B5_stall_region_out_feedback_out_15),
        .out_feedback_valid_out_15(bb_conv1_B5_stall_region_out_feedback_valid_out_15),
        .out_memdep_8(bb_conv1_B5_stall_region_out_memdep_8),
        .out_notcmp1742_pop302(bb_conv1_B5_stall_region_out_notcmp1742_pop302),
        .out_notcmp2236_pop266(bb_conv1_B5_stall_region_out_notcmp2236_pop266),
        .out_stall_out(bb_conv1_B5_stall_region_out_stall_out),
        .out_valid_out(bb_conv1_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_15_sync(GPOUT,5)
    assign out_feedback_out_15 = bb_conv1_B5_stall_region_out_feedback_out_15;

    // feedback_valid_out_15_sync(GPOUT,7)
    assign out_feedback_valid_out_15 = bb_conv1_B5_stall_region_out_feedback_valid_out_15;

    // out_exitcond1234_pop254(GPOUT,16)
    assign out_exitcond1234_pop254 = conv1_B5_branch_out_exitcond1234_pop254;

    // out_memdep_8(GPOUT,17)
    assign out_memdep_8 = conv1_B5_branch_out_memdep_8;

    // out_notcmp2236_pop266(GPOUT,18)
    assign out_notcmp2236_pop266 = conv1_B5_branch_out_notcmp2236_pop266;

    // out_stall_in_0(GPOUT,19)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = conv1_B5_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,21)
    assign out_valid_out_0 = conv1_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,22)
    assign out_valid_out_1 = conv1_B5_branch_out_valid_out_1;

endmodule
