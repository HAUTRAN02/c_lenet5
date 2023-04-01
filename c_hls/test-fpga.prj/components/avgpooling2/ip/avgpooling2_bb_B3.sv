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

// SystemVerilog created from bb_avgpooling2_B3
// Created for function/kernel avgpooling2
// SystemVerilog created on Sat Apr  1 13:10:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpooling2_bb_B3 (
    input wire [0:0] in_feedback_in_15,
    output wire [0:0] out_feedback_stall_out_15,
    input wire [0:0] in_feedback_valid_in_15,
    input wire [0:0] in_exitcond1443_0,
    input wire [0:0] in_exitcond1443_1,
    input wire [0:0] in_forked30_0,
    input wire [0:0] in_forked30_1,
    input wire [0:0] in_memdep_phi2_pop1252_0,
    input wire [0:0] in_memdep_phi2_pop1252_1,
    input wire [31:0] in_n_channel_027_pop1149_0,
    input wire [31:0] in_n_channel_027_pop1149_1,
    input wire [0:0] in_notcmp2046_0,
    input wire [0:0] in_notcmp2046_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe183,
    output wire [0:0] out_c0_exe284,
    output wire [31:0] out_c0_exe385,
    output wire [0:0] out_c0_exe486,
    output wire [0:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi1_pop15,
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

    wire [0:0] avgpooling2_B3_branch_out_c0_exe183;
    wire [0:0] avgpooling2_B3_branch_out_c0_exe284;
    wire [31:0] avgpooling2_B3_branch_out_c0_exe385;
    wire [0:0] avgpooling2_B3_branch_out_c0_exe486;
    wire [0:0] avgpooling2_B3_branch_out_c0_exe5;
    wire [31:0] avgpooling2_B3_branch_out_c0_exe6;
    wire [0:0] avgpooling2_B3_branch_out_c0_exe7;
    wire [0:0] avgpooling2_B3_branch_out_memdep_phi1_pop15;
    wire [0:0] avgpooling2_B3_branch_out_stall_out;
    wire [0:0] avgpooling2_B3_branch_out_valid_out_0;
    wire [0:0] avgpooling2_B3_merge_out_exitcond1443;
    wire [0:0] avgpooling2_B3_merge_out_forked30;
    wire [0:0] avgpooling2_B3_merge_out_memdep_phi2_pop1252;
    wire [31:0] avgpooling2_B3_merge_out_n_channel_027_pop1149;
    wire [0:0] avgpooling2_B3_merge_out_notcmp2046;
    wire [0:0] avgpooling2_B3_merge_out_stall_out_0;
    wire [0:0] avgpooling2_B3_merge_out_stall_out_1;
    wire [0:0] avgpooling2_B3_merge_out_valid_out;
    wire [0:0] bb_avgpooling2_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_avgpooling22_exiting_stall_out;
    wire [0:0] bb_avgpooling2_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_avgpooling22_exiting_valid_out;
    wire [0:0] bb_avgpooling2_B3_stall_region_out_c0_exe183;
    wire [0:0] bb_avgpooling2_B3_stall_region_out_c0_exe284;
    wire [31:0] bb_avgpooling2_B3_stall_region_out_c0_exe385;
    wire [0:0] bb_avgpooling2_B3_stall_region_out_c0_exe486;
    wire [0:0] bb_avgpooling2_B3_stall_region_out_c0_exe5;
    wire [31:0] bb_avgpooling2_B3_stall_region_out_c0_exe6;
    wire [0:0] bb_avgpooling2_B3_stall_region_out_c0_exe7;
    wire [0:0] bb_avgpooling2_B3_stall_region_out_feedback_stall_out_15;
    wire [0:0] bb_avgpooling2_B3_stall_region_out_memdep_phi1_pop15;
    wire [0:0] bb_avgpooling2_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_avgpooling2_B3_stall_region_out_stall_out;
    wire [0:0] bb_avgpooling2_B3_stall_region_out_valid_out;


    // avgpooling2_B3_branch(BLACKBOX,2)
    avgpooling2_B3_branch theavgpooling2_B3_branch (
        .in_c0_exe183(bb_avgpooling2_B3_stall_region_out_c0_exe183),
        .in_c0_exe284(bb_avgpooling2_B3_stall_region_out_c0_exe284),
        .in_c0_exe385(bb_avgpooling2_B3_stall_region_out_c0_exe385),
        .in_c0_exe486(bb_avgpooling2_B3_stall_region_out_c0_exe486),
        .in_c0_exe5(bb_avgpooling2_B3_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_avgpooling2_B3_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_avgpooling2_B3_stall_region_out_c0_exe7),
        .in_memdep_phi1_pop15(bb_avgpooling2_B3_stall_region_out_memdep_phi1_pop15),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_avgpooling2_B3_stall_region_out_valid_out),
        .out_c0_exe183(avgpooling2_B3_branch_out_c0_exe183),
        .out_c0_exe284(avgpooling2_B3_branch_out_c0_exe284),
        .out_c0_exe385(avgpooling2_B3_branch_out_c0_exe385),
        .out_c0_exe486(avgpooling2_B3_branch_out_c0_exe486),
        .out_c0_exe5(avgpooling2_B3_branch_out_c0_exe5),
        .out_c0_exe6(avgpooling2_B3_branch_out_c0_exe6),
        .out_c0_exe7(avgpooling2_B3_branch_out_c0_exe7),
        .out_memdep_phi1_pop15(avgpooling2_B3_branch_out_memdep_phi1_pop15),
        .out_stall_out(avgpooling2_B3_branch_out_stall_out),
        .out_valid_out_0(avgpooling2_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // avgpooling2_B3_merge(BLACKBOX,3)
    avgpooling2_B3_merge theavgpooling2_B3_merge (
        .in_exitcond1443_0(in_exitcond1443_0),
        .in_exitcond1443_1(in_exitcond1443_1),
        .in_forked30_0(in_forked30_0),
        .in_forked30_1(in_forked30_1),
        .in_memdep_phi2_pop1252_0(in_memdep_phi2_pop1252_0),
        .in_memdep_phi2_pop1252_1(in_memdep_phi2_pop1252_1),
        .in_n_channel_027_pop1149_0(in_n_channel_027_pop1149_0),
        .in_n_channel_027_pop1149_1(in_n_channel_027_pop1149_1),
        .in_notcmp2046_0(in_notcmp2046_0),
        .in_notcmp2046_1(in_notcmp2046_1),
        .in_stall_in(bb_avgpooling2_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond1443(avgpooling2_B3_merge_out_exitcond1443),
        .out_forked30(avgpooling2_B3_merge_out_forked30),
        .out_memdep_phi2_pop1252(avgpooling2_B3_merge_out_memdep_phi2_pop1252),
        .out_n_channel_027_pop1149(avgpooling2_B3_merge_out_n_channel_027_pop1149),
        .out_notcmp2046(avgpooling2_B3_merge_out_notcmp2046),
        .out_stall_out_0(avgpooling2_B3_merge_out_stall_out_0),
        .out_stall_out_1(avgpooling2_B3_merge_out_stall_out_1),
        .out_valid_out(avgpooling2_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling2_B3_stall_region(BLACKBOX,4)
    avgpooling2_bb_B3_stall_region thebb_avgpooling2_B3_stall_region (
        .in_exitcond1443(avgpooling2_B3_merge_out_exitcond1443),
        .in_feedback_in_15(in_feedback_in_15),
        .in_feedback_valid_in_15(in_feedback_valid_in_15),
        .in_forked30(avgpooling2_B3_merge_out_forked30),
        .in_memdep_phi2_pop1252(avgpooling2_B3_merge_out_memdep_phi2_pop1252),
        .in_n_channel_027_pop1149(avgpooling2_B3_merge_out_n_channel_027_pop1149),
        .in_notcmp2046(avgpooling2_B3_merge_out_notcmp2046),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(avgpooling2_B3_branch_out_stall_out),
        .in_valid_in(avgpooling2_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_avgpooling22_exiting_stall_out(bb_avgpooling2_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_avgpooling22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_avgpooling22_exiting_valid_out(bb_avgpooling2_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_avgpooling22_exiting_valid_out),
        .out_c0_exe183(bb_avgpooling2_B3_stall_region_out_c0_exe183),
        .out_c0_exe284(bb_avgpooling2_B3_stall_region_out_c0_exe284),
        .out_c0_exe385(bb_avgpooling2_B3_stall_region_out_c0_exe385),
        .out_c0_exe486(bb_avgpooling2_B3_stall_region_out_c0_exe486),
        .out_c0_exe5(bb_avgpooling2_B3_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_avgpooling2_B3_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_avgpooling2_B3_stall_region_out_c0_exe7),
        .out_feedback_stall_out_15(bb_avgpooling2_B3_stall_region_out_feedback_stall_out_15),
        .out_memdep_phi1_pop15(bb_avgpooling2_B3_stall_region_out_memdep_phi1_pop15),
        .out_pipeline_valid_out(bb_avgpooling2_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_avgpooling2_B3_stall_region_out_stall_out),
        .out_valid_out(bb_avgpooling2_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_15_sync(GPOUT,6)
    assign out_feedback_stall_out_15 = bb_avgpooling2_B3_stall_region_out_feedback_stall_out_15;

    // out_c0_exe183(GPOUT,21)
    assign out_c0_exe183 = avgpooling2_B3_branch_out_c0_exe183;

    // out_c0_exe284(GPOUT,22)
    assign out_c0_exe284 = avgpooling2_B3_branch_out_c0_exe284;

    // out_c0_exe385(GPOUT,23)
    assign out_c0_exe385 = avgpooling2_B3_branch_out_c0_exe385;

    // out_c0_exe486(GPOUT,24)
    assign out_c0_exe486 = avgpooling2_B3_branch_out_c0_exe486;

    // out_c0_exe5(GPOUT,25)
    assign out_c0_exe5 = avgpooling2_B3_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,26)
    assign out_c0_exe6 = avgpooling2_B3_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,27)
    assign out_c0_exe7 = avgpooling2_B3_branch_out_c0_exe7;

    // out_exiting_stall_out(GPOUT,28)
    assign out_exiting_stall_out = bb_avgpooling2_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_avgpooling22_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,29)
    assign out_exiting_valid_out = bb_avgpooling2_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_avgpooling22_exiting_valid_out;

    // out_memdep_phi1_pop15(GPOUT,30)
    assign out_memdep_phi1_pop15 = avgpooling2_B3_branch_out_memdep_phi1_pop15;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = avgpooling2_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = avgpooling2_B3_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,33)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,34)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = avgpooling2_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,37)
    assign out_pipeline_valid_out = bb_avgpooling2_B3_stall_region_out_pipeline_valid_out;

endmodule
