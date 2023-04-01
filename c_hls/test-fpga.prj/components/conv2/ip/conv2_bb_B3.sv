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

// SystemVerilog created from bb_conv2_B3
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B3 (
    input wire [0:0] in_feedback_in_21,
    output wire [0:0] out_feedback_stall_out_21,
    input wire [0:0] in_feedback_valid_in_21,
    input wire [31:0] in_channel_039_pop17158_0,
    input wire [31:0] in_channel_039_pop17158_1,
    input wire [0:0] in_exitcond31140_0,
    input wire [0:0] in_exitcond31140_1,
    input wire [0:0] in_forked66_0,
    input wire [0:0] in_forked66_1,
    input wire [0:0] in_memdep_phi6_pop18167_0,
    input wire [0:0] in_memdep_phi6_pop18167_1,
    input wire [0:0] in_notcmp56149_0,
    input wire [0:0] in_notcmp56149_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe1435,
    output wire [0:0] out_c0_exe2436,
    output wire [31:0] out_c0_exe3437,
    output wire [0:0] out_c0_exe4438,
    output wire [0:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi5_pop21,
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

    wire [0:0] bb_conv2_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_conv22_exiting_stall_out;
    wire [0:0] bb_conv2_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_conv22_exiting_valid_out;
    wire [0:0] bb_conv2_B3_stall_region_out_c0_exe10;
    wire [31:0] bb_conv2_B3_stall_region_out_c0_exe11;
    wire [0:0] bb_conv2_B3_stall_region_out_c0_exe12;
    wire [0:0] bb_conv2_B3_stall_region_out_c0_exe1435;
    wire [0:0] bb_conv2_B3_stall_region_out_c0_exe2436;
    wire [31:0] bb_conv2_B3_stall_region_out_c0_exe3437;
    wire [0:0] bb_conv2_B3_stall_region_out_c0_exe4438;
    wire [0:0] bb_conv2_B3_stall_region_out_c0_exe5;
    wire [31:0] bb_conv2_B3_stall_region_out_c0_exe6;
    wire [0:0] bb_conv2_B3_stall_region_out_c0_exe7;
    wire [0:0] bb_conv2_B3_stall_region_out_c0_exe9;
    wire [0:0] bb_conv2_B3_stall_region_out_feedback_stall_out_21;
    wire [0:0] bb_conv2_B3_stall_region_out_memdep_phi5_pop21;
    wire [0:0] bb_conv2_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2_B3_stall_region_out_stall_out;
    wire [0:0] bb_conv2_B3_stall_region_out_valid_out;
    wire [0:0] conv2_B3_branch_out_c0_exe10;
    wire [31:0] conv2_B3_branch_out_c0_exe11;
    wire [0:0] conv2_B3_branch_out_c0_exe12;
    wire [0:0] conv2_B3_branch_out_c0_exe1435;
    wire [0:0] conv2_B3_branch_out_c0_exe2436;
    wire [31:0] conv2_B3_branch_out_c0_exe3437;
    wire [0:0] conv2_B3_branch_out_c0_exe4438;
    wire [0:0] conv2_B3_branch_out_c0_exe5;
    wire [31:0] conv2_B3_branch_out_c0_exe6;
    wire [0:0] conv2_B3_branch_out_c0_exe7;
    wire [0:0] conv2_B3_branch_out_c0_exe9;
    wire [0:0] conv2_B3_branch_out_memdep_phi5_pop21;
    wire [0:0] conv2_B3_branch_out_stall_out;
    wire [0:0] conv2_B3_branch_out_valid_out_0;
    wire [31:0] conv2_B3_merge_out_channel_039_pop17158;
    wire [0:0] conv2_B3_merge_out_exitcond31140;
    wire [0:0] conv2_B3_merge_out_forked66;
    wire [0:0] conv2_B3_merge_out_memdep_phi6_pop18167;
    wire [0:0] conv2_B3_merge_out_notcmp56149;
    wire [0:0] conv2_B3_merge_out_stall_out_0;
    wire [0:0] conv2_B3_merge_out_stall_out_1;
    wire [0:0] conv2_B3_merge_out_valid_out;


    // conv2_B3_branch(BLACKBOX,3)
    conv2_B3_branch theconv2_B3_branch (
        .in_c0_exe10(bb_conv2_B3_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_conv2_B3_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_conv2_B3_stall_region_out_c0_exe12),
        .in_c0_exe1435(bb_conv2_B3_stall_region_out_c0_exe1435),
        .in_c0_exe2436(bb_conv2_B3_stall_region_out_c0_exe2436),
        .in_c0_exe3437(bb_conv2_B3_stall_region_out_c0_exe3437),
        .in_c0_exe4438(bb_conv2_B3_stall_region_out_c0_exe4438),
        .in_c0_exe5(bb_conv2_B3_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_conv2_B3_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_conv2_B3_stall_region_out_c0_exe7),
        .in_c0_exe9(bb_conv2_B3_stall_region_out_c0_exe9),
        .in_memdep_phi5_pop21(bb_conv2_B3_stall_region_out_memdep_phi5_pop21),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2_B3_stall_region_out_valid_out),
        .out_c0_exe10(conv2_B3_branch_out_c0_exe10),
        .out_c0_exe11(conv2_B3_branch_out_c0_exe11),
        .out_c0_exe12(conv2_B3_branch_out_c0_exe12),
        .out_c0_exe1435(conv2_B3_branch_out_c0_exe1435),
        .out_c0_exe2436(conv2_B3_branch_out_c0_exe2436),
        .out_c0_exe3437(conv2_B3_branch_out_c0_exe3437),
        .out_c0_exe4438(conv2_B3_branch_out_c0_exe4438),
        .out_c0_exe5(conv2_B3_branch_out_c0_exe5),
        .out_c0_exe6(conv2_B3_branch_out_c0_exe6),
        .out_c0_exe7(conv2_B3_branch_out_c0_exe7),
        .out_c0_exe9(conv2_B3_branch_out_c0_exe9),
        .out_memdep_phi5_pop21(conv2_B3_branch_out_memdep_phi5_pop21),
        .out_stall_out(conv2_B3_branch_out_stall_out),
        .out_valid_out_0(conv2_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B3_merge(BLACKBOX,4)
    conv2_B3_merge theconv2_B3_merge (
        .in_channel_039_pop17158_0(in_channel_039_pop17158_0),
        .in_channel_039_pop17158_1(in_channel_039_pop17158_1),
        .in_exitcond31140_0(in_exitcond31140_0),
        .in_exitcond31140_1(in_exitcond31140_1),
        .in_forked66_0(in_forked66_0),
        .in_forked66_1(in_forked66_1),
        .in_memdep_phi6_pop18167_0(in_memdep_phi6_pop18167_0),
        .in_memdep_phi6_pop18167_1(in_memdep_phi6_pop18167_1),
        .in_notcmp56149_0(in_notcmp56149_0),
        .in_notcmp56149_1(in_notcmp56149_1),
        .in_stall_in(bb_conv2_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_channel_039_pop17158(conv2_B3_merge_out_channel_039_pop17158),
        .out_exitcond31140(conv2_B3_merge_out_exitcond31140),
        .out_forked66(conv2_B3_merge_out_forked66),
        .out_memdep_phi6_pop18167(conv2_B3_merge_out_memdep_phi6_pop18167),
        .out_notcmp56149(conv2_B3_merge_out_notcmp56149),
        .out_stall_out_0(conv2_B3_merge_out_stall_out_0),
        .out_stall_out_1(conv2_B3_merge_out_stall_out_1),
        .out_valid_out(conv2_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B3_stall_region(BLACKBOX,2)
    conv2_bb_B3_stall_region thebb_conv2_B3_stall_region (
        .in_channel_039_pop17158(conv2_B3_merge_out_channel_039_pop17158),
        .in_exitcond31140(conv2_B3_merge_out_exitcond31140),
        .in_feedback_in_21(in_feedback_in_21),
        .in_feedback_valid_in_21(in_feedback_valid_in_21),
        .in_forked66(conv2_B3_merge_out_forked66),
        .in_memdep_phi6_pop18167(conv2_B3_merge_out_memdep_phi6_pop18167),
        .in_notcmp56149(conv2_B3_merge_out_notcmp56149),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv2_B3_branch_out_stall_out),
        .in_valid_in(conv2_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_conv22_exiting_stall_out(bb_conv2_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_conv22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_conv22_exiting_valid_out(bb_conv2_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_conv22_exiting_valid_out),
        .out_c0_exe10(bb_conv2_B3_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_conv2_B3_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_conv2_B3_stall_region_out_c0_exe12),
        .out_c0_exe1435(bb_conv2_B3_stall_region_out_c0_exe1435),
        .out_c0_exe2436(bb_conv2_B3_stall_region_out_c0_exe2436),
        .out_c0_exe3437(bb_conv2_B3_stall_region_out_c0_exe3437),
        .out_c0_exe4438(bb_conv2_B3_stall_region_out_c0_exe4438),
        .out_c0_exe5(bb_conv2_B3_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_conv2_B3_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_conv2_B3_stall_region_out_c0_exe7),
        .out_c0_exe9(bb_conv2_B3_stall_region_out_c0_exe9),
        .out_feedback_stall_out_21(bb_conv2_B3_stall_region_out_feedback_stall_out_21),
        .out_memdep_phi5_pop21(bb_conv2_B3_stall_region_out_memdep_phi5_pop21),
        .out_pipeline_valid_out(bb_conv2_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2_B3_stall_region_out_stall_out),
        .out_valid_out(bb_conv2_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_21_sync(GPOUT,6)
    assign out_feedback_stall_out_21 = bb_conv2_B3_stall_region_out_feedback_stall_out_21;

    // out_c0_exe10(GPOUT,21)
    assign out_c0_exe10 = conv2_B3_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,22)
    assign out_c0_exe11 = conv2_B3_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,23)
    assign out_c0_exe12 = conv2_B3_branch_out_c0_exe12;

    // out_c0_exe1435(GPOUT,24)
    assign out_c0_exe1435 = conv2_B3_branch_out_c0_exe1435;

    // out_c0_exe2436(GPOUT,25)
    assign out_c0_exe2436 = conv2_B3_branch_out_c0_exe2436;

    // out_c0_exe3437(GPOUT,26)
    assign out_c0_exe3437 = conv2_B3_branch_out_c0_exe3437;

    // out_c0_exe4438(GPOUT,27)
    assign out_c0_exe4438 = conv2_B3_branch_out_c0_exe4438;

    // out_c0_exe5(GPOUT,28)
    assign out_c0_exe5 = conv2_B3_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,29)
    assign out_c0_exe6 = conv2_B3_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,30)
    assign out_c0_exe7 = conv2_B3_branch_out_c0_exe7;

    // out_c0_exe9(GPOUT,31)
    assign out_c0_exe9 = conv2_B3_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,32)
    assign out_exiting_stall_out = bb_conv2_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_conv22_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,33)
    assign out_exiting_valid_out = bb_conv2_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_conv22_exiting_valid_out;

    // out_memdep_phi5_pop21(GPOUT,34)
    assign out_memdep_phi5_pop21 = conv2_B3_branch_out_memdep_phi5_pop21;

    // out_stall_out_0(GPOUT,35)
    assign out_stall_out_0 = conv2_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,36)
    assign out_stall_out_1 = conv2_B3_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,37)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,38)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,39)
    assign out_valid_out_0 = conv2_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,41)
    assign out_pipeline_valid_out = bb_conv2_B3_stall_region_out_pipeline_valid_out;

endmodule
