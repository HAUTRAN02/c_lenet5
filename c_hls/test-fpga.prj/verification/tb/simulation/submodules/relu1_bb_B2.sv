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

// SystemVerilog created from bb_relu1_B2
// Created for function/kernel relu1
// SystemVerilog created on Sat Apr  1 13:10:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu1_bb_B2 (
    input wire [0:0] in_feedback_in_12,
    output wire [0:0] out_feedback_stall_out_12,
    input wire [0:0] in_feedback_valid_in_12,
    input wire [0:0] in_forked25_0,
    input wire [0:0] in_forked25_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe170,
    output wire [0:0] out_c0_exe2,
    output wire [31:0] out_c0_exe3,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi2_pop12,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_relu1_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_relu12_exiting_stall_out;
    wire [0:0] bb_relu1_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_relu12_exiting_valid_out;
    wire [0:0] bb_relu1_B2_stall_region_out_c0_exe170;
    wire [0:0] bb_relu1_B2_stall_region_out_c0_exe2;
    wire [31:0] bb_relu1_B2_stall_region_out_c0_exe3;
    wire [0:0] bb_relu1_B2_stall_region_out_feedback_stall_out_12;
    wire [0:0] bb_relu1_B2_stall_region_out_memdep_phi2_pop12;
    wire [0:0] bb_relu1_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_relu1_B2_stall_region_out_stall_out;
    wire [0:0] bb_relu1_B2_stall_region_out_valid_out;
    wire [0:0] relu1_B2_branch_out_c0_exe170;
    wire [0:0] relu1_B2_branch_out_c0_exe2;
    wire [31:0] relu1_B2_branch_out_c0_exe3;
    wire [0:0] relu1_B2_branch_out_memdep_phi2_pop12;
    wire [0:0] relu1_B2_branch_out_stall_out;
    wire [0:0] relu1_B2_branch_out_valid_out_0;
    wire [0:0] relu1_B2_merge_out_forked25;
    wire [0:0] relu1_B2_merge_out_stall_out_0;
    wire [0:0] relu1_B2_merge_out_stall_out_1;
    wire [0:0] relu1_B2_merge_out_valid_out;


    // relu1_B2_branch(BLACKBOX,24)
    relu1_B2_branch therelu1_B2_branch (
        .in_c0_exe170(bb_relu1_B2_stall_region_out_c0_exe170),
        .in_c0_exe2(bb_relu1_B2_stall_region_out_c0_exe2),
        .in_c0_exe3(bb_relu1_B2_stall_region_out_c0_exe3),
        .in_memdep_phi2_pop12(bb_relu1_B2_stall_region_out_memdep_phi2_pop12),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_relu1_B2_stall_region_out_valid_out),
        .out_c0_exe170(relu1_B2_branch_out_c0_exe170),
        .out_c0_exe2(relu1_B2_branch_out_c0_exe2),
        .out_c0_exe3(relu1_B2_branch_out_c0_exe3),
        .out_memdep_phi2_pop12(relu1_B2_branch_out_memdep_phi2_pop12),
        .out_stall_out(relu1_B2_branch_out_stall_out),
        .out_valid_out_0(relu1_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // relu1_B2_merge(BLACKBOX,25)
    relu1_B2_merge therelu1_B2_merge (
        .in_forked25_0(in_forked25_0),
        .in_forked25_1(in_forked25_1),
        .in_stall_in(bb_relu1_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked25(relu1_B2_merge_out_forked25),
        .out_stall_out_0(relu1_B2_merge_out_stall_out_0),
        .out_stall_out_1(relu1_B2_merge_out_stall_out_1),
        .out_valid_out(relu1_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B2_stall_region(BLACKBOX,2)
    relu1_bb_B2_stall_region thebb_relu1_B2_stall_region (
        .in_feedback_in_12(in_feedback_in_12),
        .in_feedback_valid_in_12(in_feedback_valid_in_12),
        .in_forked25(relu1_B2_merge_out_forked25),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(relu1_B2_branch_out_stall_out),
        .in_valid_in(relu1_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_relu12_exiting_stall_out(bb_relu1_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_relu12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_relu12_exiting_valid_out(bb_relu1_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_relu12_exiting_valid_out),
        .out_c0_exe170(bb_relu1_B2_stall_region_out_c0_exe170),
        .out_c0_exe2(bb_relu1_B2_stall_region_out_c0_exe2),
        .out_c0_exe3(bb_relu1_B2_stall_region_out_c0_exe3),
        .out_feedback_stall_out_12(bb_relu1_B2_stall_region_out_feedback_stall_out_12),
        .out_memdep_phi2_pop12(bb_relu1_B2_stall_region_out_memdep_phi2_pop12),
        .out_pipeline_valid_out(bb_relu1_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_relu1_B2_stall_region_out_stall_out),
        .out_valid_out(bb_relu1_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_12_sync(GPOUT,4)
    assign out_feedback_stall_out_12 = bb_relu1_B2_stall_region_out_feedback_stall_out_12;

    // out_c0_exe170(GPOUT,11)
    assign out_c0_exe170 = relu1_B2_branch_out_c0_exe170;

    // out_c0_exe2(GPOUT,12)
    assign out_c0_exe2 = relu1_B2_branch_out_c0_exe2;

    // out_c0_exe3(GPOUT,13)
    assign out_c0_exe3 = relu1_B2_branch_out_c0_exe3;

    // out_exiting_stall_out(GPOUT,14)
    assign out_exiting_stall_out = bb_relu1_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_relu12_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,15)
    assign out_exiting_valid_out = bb_relu1_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_relu12_exiting_valid_out;

    // out_memdep_phi2_pop12(GPOUT,16)
    assign out_memdep_phi2_pop12 = relu1_B2_branch_out_memdep_phi2_pop12;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = relu1_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,18)
    assign out_stall_out_1 = relu1_B2_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,19)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,20)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,21)
    assign out_valid_out_0 = relu1_B2_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,23)
    assign out_pipeline_valid_out = bb_relu1_B2_stall_region_out_pipeline_valid_out;

endmodule
