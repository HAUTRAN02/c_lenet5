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

// SystemVerilog created from bb_conv2_B4
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B4 (
    input wire [0:0] in_feedback_in_28,
    output wire [0:0] out_feedback_stall_out_28,
    input wire [0:0] in_feedback_valid_in_28,
    input wire [31:0] in_channel_039_pop17166_0,
    input wire [31:0] in_channel_039_pop17166_1,
    input wire [31:0] in_channel_039_pop1777_pop24218_0,
    input wire [31:0] in_channel_039_pop1777_pop24218_1,
    input wire [0:0] in_exitcond28176_0,
    input wire [0:0] in_exitcond28176_1,
    input wire [0:0] in_exitcond31148_0,
    input wire [0:0] in_exitcond31148_1,
    input wire [0:0] in_exitcond3167_pop22204_0,
    input wire [0:0] in_exitcond3167_pop22204_1,
    input wire [0:0] in_forked87_0,
    input wire [0:0] in_forked87_1,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_memdep_phi5_pop21197_0,
    input wire [0:0] in_memdep_phi5_pop21197_1,
    input wire [0:0] in_memdep_phi6_pop18175_0,
    input wire [0:0] in_memdep_phi6_pop18175_1,
    input wire [0:0] in_memdep_phi6_pop1882_pop25225_0,
    input wire [0:0] in_memdep_phi6_pop1882_pop25225_1,
    input wire [0:0] in_notcmp51183_0,
    input wire [0:0] in_notcmp51183_1,
    input wire [0:0] in_notcmp56157_0,
    input wire [0:0] in_notcmp56157_1,
    input wire [0:0] in_notcmp5672_pop23211_0,
    input wire [0:0] in_notcmp5672_pop23211_1,
    input wire [31:0] in_row_038_pop20190_0,
    input wire [31:0] in_row_038_pop20190_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10472,
    output wire [0:0] out_c0_exe11473,
    output wire [0:0] out_c0_exe12474,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [31:0] out_c0_exe1463,
    output wire [0:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [31:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [31:0] out_c0_exe22,
    output wire [0:0] out_c0_exe23,
    output wire [0:0] out_c0_exe24,
    output wire [31:0] out_c0_exe2464,
    output wire [0:0] out_c0_exe25,
    output wire [31:0] out_c0_exe26,
    output wire [0:0] out_c0_exe27,
    output wire [63:0] out_c0_exe3465,
    output wire [63:0] out_c0_exe4466,
    output wire [31:0] out_c0_exe5467,
    output wire [63:0] out_c0_exe6468,
    output wire [0:0] out_c0_exe7469,
    output wire [0:0] out_c0_exe8470,
    output wire [0:0] out_c0_exe9471,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi4_pop28,
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

    wire [0:0] bb_conv2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out;
    wire [0:0] bb_conv2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe10472;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe11473;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe12474;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe13;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe14;
    wire [31:0] bb_conv2_B4_stall_region_out_c0_exe1463;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe16;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe17;
    wire [31:0] bb_conv2_B4_stall_region_out_c0_exe18;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe19;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe20;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe21;
    wire [31:0] bb_conv2_B4_stall_region_out_c0_exe22;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe23;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe24;
    wire [31:0] bb_conv2_B4_stall_region_out_c0_exe2464;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe25;
    wire [31:0] bb_conv2_B4_stall_region_out_c0_exe26;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe27;
    wire [63:0] bb_conv2_B4_stall_region_out_c0_exe3465;
    wire [63:0] bb_conv2_B4_stall_region_out_c0_exe4466;
    wire [31:0] bb_conv2_B4_stall_region_out_c0_exe5467;
    wire [63:0] bb_conv2_B4_stall_region_out_c0_exe6468;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe7469;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe8470;
    wire [0:0] bb_conv2_B4_stall_region_out_c0_exe9471;
    wire [0:0] bb_conv2_B4_stall_region_out_feedback_stall_out_28;
    wire [0:0] bb_conv2_B4_stall_region_out_memdep_phi4_pop28;
    wire [0:0] bb_conv2_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2_B4_stall_region_out_stall_out;
    wire [0:0] bb_conv2_B4_stall_region_out_valid_out;
    wire [0:0] conv2_B4_branch_out_c0_exe10472;
    wire [0:0] conv2_B4_branch_out_c0_exe11473;
    wire [0:0] conv2_B4_branch_out_c0_exe12474;
    wire [0:0] conv2_B4_branch_out_c0_exe13;
    wire [0:0] conv2_B4_branch_out_c0_exe14;
    wire [31:0] conv2_B4_branch_out_c0_exe1463;
    wire [0:0] conv2_B4_branch_out_c0_exe16;
    wire [0:0] conv2_B4_branch_out_c0_exe17;
    wire [31:0] conv2_B4_branch_out_c0_exe18;
    wire [0:0] conv2_B4_branch_out_c0_exe19;
    wire [0:0] conv2_B4_branch_out_c0_exe20;
    wire [0:0] conv2_B4_branch_out_c0_exe21;
    wire [31:0] conv2_B4_branch_out_c0_exe22;
    wire [0:0] conv2_B4_branch_out_c0_exe23;
    wire [0:0] conv2_B4_branch_out_c0_exe24;
    wire [31:0] conv2_B4_branch_out_c0_exe2464;
    wire [0:0] conv2_B4_branch_out_c0_exe25;
    wire [31:0] conv2_B4_branch_out_c0_exe26;
    wire [0:0] conv2_B4_branch_out_c0_exe27;
    wire [63:0] conv2_B4_branch_out_c0_exe3465;
    wire [63:0] conv2_B4_branch_out_c0_exe4466;
    wire [31:0] conv2_B4_branch_out_c0_exe5467;
    wire [63:0] conv2_B4_branch_out_c0_exe6468;
    wire [0:0] conv2_B4_branch_out_c0_exe7469;
    wire [0:0] conv2_B4_branch_out_c0_exe8470;
    wire [0:0] conv2_B4_branch_out_c0_exe9471;
    wire [0:0] conv2_B4_branch_out_memdep_phi4_pop28;
    wire [0:0] conv2_B4_branch_out_stall_out;
    wire [0:0] conv2_B4_branch_out_valid_out_0;
    wire [31:0] conv2_B4_merge_out_channel_039_pop17166;
    wire [31:0] conv2_B4_merge_out_channel_039_pop1777_pop24218;
    wire [0:0] conv2_B4_merge_out_exitcond28176;
    wire [0:0] conv2_B4_merge_out_exitcond31148;
    wire [0:0] conv2_B4_merge_out_exitcond3167_pop22204;
    wire [0:0] conv2_B4_merge_out_forked87;
    wire [0:0] conv2_B4_merge_out_memdep_phi5_pop21197;
    wire [0:0] conv2_B4_merge_out_memdep_phi6_pop18175;
    wire [0:0] conv2_B4_merge_out_memdep_phi6_pop1882_pop25225;
    wire [0:0] conv2_B4_merge_out_notcmp51183;
    wire [0:0] conv2_B4_merge_out_notcmp56157;
    wire [0:0] conv2_B4_merge_out_notcmp5672_pop23211;
    wire [31:0] conv2_B4_merge_out_row_038_pop20190;
    wire [0:0] conv2_B4_merge_out_stall_out_0;
    wire [0:0] conv2_B4_merge_out_stall_out_1;
    wire [0:0] conv2_B4_merge_out_valid_out;


    // conv2_B4_branch(BLACKBOX,3)
    conv2_B4_branch theconv2_B4_branch (
        .in_c0_exe10472(bb_conv2_B4_stall_region_out_c0_exe10472),
        .in_c0_exe11473(bb_conv2_B4_stall_region_out_c0_exe11473),
        .in_c0_exe12474(bb_conv2_B4_stall_region_out_c0_exe12474),
        .in_c0_exe13(bb_conv2_B4_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_conv2_B4_stall_region_out_c0_exe14),
        .in_c0_exe1463(bb_conv2_B4_stall_region_out_c0_exe1463),
        .in_c0_exe16(bb_conv2_B4_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_conv2_B4_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_conv2_B4_stall_region_out_c0_exe18),
        .in_c0_exe19(bb_conv2_B4_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_conv2_B4_stall_region_out_c0_exe20),
        .in_c0_exe21(bb_conv2_B4_stall_region_out_c0_exe21),
        .in_c0_exe22(bb_conv2_B4_stall_region_out_c0_exe22),
        .in_c0_exe23(bb_conv2_B4_stall_region_out_c0_exe23),
        .in_c0_exe24(bb_conv2_B4_stall_region_out_c0_exe24),
        .in_c0_exe2464(bb_conv2_B4_stall_region_out_c0_exe2464),
        .in_c0_exe25(bb_conv2_B4_stall_region_out_c0_exe25),
        .in_c0_exe26(bb_conv2_B4_stall_region_out_c0_exe26),
        .in_c0_exe27(bb_conv2_B4_stall_region_out_c0_exe27),
        .in_c0_exe3465(bb_conv2_B4_stall_region_out_c0_exe3465),
        .in_c0_exe4466(bb_conv2_B4_stall_region_out_c0_exe4466),
        .in_c0_exe5467(bb_conv2_B4_stall_region_out_c0_exe5467),
        .in_c0_exe6468(bb_conv2_B4_stall_region_out_c0_exe6468),
        .in_c0_exe7469(bb_conv2_B4_stall_region_out_c0_exe7469),
        .in_c0_exe8470(bb_conv2_B4_stall_region_out_c0_exe8470),
        .in_c0_exe9471(bb_conv2_B4_stall_region_out_c0_exe9471),
        .in_memdep_phi4_pop28(bb_conv2_B4_stall_region_out_memdep_phi4_pop28),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2_B4_stall_region_out_valid_out),
        .out_c0_exe10472(conv2_B4_branch_out_c0_exe10472),
        .out_c0_exe11473(conv2_B4_branch_out_c0_exe11473),
        .out_c0_exe12474(conv2_B4_branch_out_c0_exe12474),
        .out_c0_exe13(conv2_B4_branch_out_c0_exe13),
        .out_c0_exe14(conv2_B4_branch_out_c0_exe14),
        .out_c0_exe1463(conv2_B4_branch_out_c0_exe1463),
        .out_c0_exe16(conv2_B4_branch_out_c0_exe16),
        .out_c0_exe17(conv2_B4_branch_out_c0_exe17),
        .out_c0_exe18(conv2_B4_branch_out_c0_exe18),
        .out_c0_exe19(conv2_B4_branch_out_c0_exe19),
        .out_c0_exe20(conv2_B4_branch_out_c0_exe20),
        .out_c0_exe21(conv2_B4_branch_out_c0_exe21),
        .out_c0_exe22(conv2_B4_branch_out_c0_exe22),
        .out_c0_exe23(conv2_B4_branch_out_c0_exe23),
        .out_c0_exe24(conv2_B4_branch_out_c0_exe24),
        .out_c0_exe2464(conv2_B4_branch_out_c0_exe2464),
        .out_c0_exe25(conv2_B4_branch_out_c0_exe25),
        .out_c0_exe26(conv2_B4_branch_out_c0_exe26),
        .out_c0_exe27(conv2_B4_branch_out_c0_exe27),
        .out_c0_exe3465(conv2_B4_branch_out_c0_exe3465),
        .out_c0_exe4466(conv2_B4_branch_out_c0_exe4466),
        .out_c0_exe5467(conv2_B4_branch_out_c0_exe5467),
        .out_c0_exe6468(conv2_B4_branch_out_c0_exe6468),
        .out_c0_exe7469(conv2_B4_branch_out_c0_exe7469),
        .out_c0_exe8470(conv2_B4_branch_out_c0_exe8470),
        .out_c0_exe9471(conv2_B4_branch_out_c0_exe9471),
        .out_memdep_phi4_pop28(conv2_B4_branch_out_memdep_phi4_pop28),
        .out_stall_out(conv2_B4_branch_out_stall_out),
        .out_valid_out_0(conv2_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B4_merge(BLACKBOX,4)
    conv2_B4_merge theconv2_B4_merge (
        .in_channel_039_pop17166_0(in_channel_039_pop17166_0),
        .in_channel_039_pop17166_1(in_channel_039_pop17166_1),
        .in_channel_039_pop1777_pop24218_0(in_channel_039_pop1777_pop24218_0),
        .in_channel_039_pop1777_pop24218_1(in_channel_039_pop1777_pop24218_1),
        .in_exitcond28176_0(in_exitcond28176_0),
        .in_exitcond28176_1(in_exitcond28176_1),
        .in_exitcond31148_0(in_exitcond31148_0),
        .in_exitcond31148_1(in_exitcond31148_1),
        .in_exitcond3167_pop22204_0(in_exitcond3167_pop22204_0),
        .in_exitcond3167_pop22204_1(in_exitcond3167_pop22204_1),
        .in_forked87_0(in_forked87_0),
        .in_forked87_1(in_forked87_1),
        .in_memdep_phi5_pop21197_0(in_memdep_phi5_pop21197_0),
        .in_memdep_phi5_pop21197_1(in_memdep_phi5_pop21197_1),
        .in_memdep_phi6_pop18175_0(in_memdep_phi6_pop18175_0),
        .in_memdep_phi6_pop18175_1(in_memdep_phi6_pop18175_1),
        .in_memdep_phi6_pop1882_pop25225_0(in_memdep_phi6_pop1882_pop25225_0),
        .in_memdep_phi6_pop1882_pop25225_1(in_memdep_phi6_pop1882_pop25225_1),
        .in_notcmp51183_0(in_notcmp51183_0),
        .in_notcmp51183_1(in_notcmp51183_1),
        .in_notcmp56157_0(in_notcmp56157_0),
        .in_notcmp56157_1(in_notcmp56157_1),
        .in_notcmp5672_pop23211_0(in_notcmp5672_pop23211_0),
        .in_notcmp5672_pop23211_1(in_notcmp5672_pop23211_1),
        .in_row_038_pop20190_0(in_row_038_pop20190_0),
        .in_row_038_pop20190_1(in_row_038_pop20190_1),
        .in_stall_in(bb_conv2_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_channel_039_pop17166(conv2_B4_merge_out_channel_039_pop17166),
        .out_channel_039_pop1777_pop24218(conv2_B4_merge_out_channel_039_pop1777_pop24218),
        .out_exitcond28176(conv2_B4_merge_out_exitcond28176),
        .out_exitcond31148(conv2_B4_merge_out_exitcond31148),
        .out_exitcond3167_pop22204(conv2_B4_merge_out_exitcond3167_pop22204),
        .out_forked87(conv2_B4_merge_out_forked87),
        .out_memdep_phi5_pop21197(conv2_B4_merge_out_memdep_phi5_pop21197),
        .out_memdep_phi6_pop18175(conv2_B4_merge_out_memdep_phi6_pop18175),
        .out_memdep_phi6_pop1882_pop25225(conv2_B4_merge_out_memdep_phi6_pop1882_pop25225),
        .out_notcmp51183(conv2_B4_merge_out_notcmp51183),
        .out_notcmp56157(conv2_B4_merge_out_notcmp56157),
        .out_notcmp5672_pop23211(conv2_B4_merge_out_notcmp5672_pop23211),
        .out_row_038_pop20190(conv2_B4_merge_out_row_038_pop20190),
        .out_stall_out_0(conv2_B4_merge_out_stall_out_0),
        .out_stall_out_1(conv2_B4_merge_out_stall_out_1),
        .out_valid_out(conv2_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B4_stall_region(BLACKBOX,2)
    conv2_bb_B4_stall_region thebb_conv2_B4_stall_region (
        .in_channel_039_pop17166(conv2_B4_merge_out_channel_039_pop17166),
        .in_channel_039_pop1777_pop24218(conv2_B4_merge_out_channel_039_pop1777_pop24218),
        .in_exitcond28176(conv2_B4_merge_out_exitcond28176),
        .in_exitcond31148(conv2_B4_merge_out_exitcond31148),
        .in_exitcond3167_pop22204(conv2_B4_merge_out_exitcond3167_pop22204),
        .in_feedback_in_28(in_feedback_in_28),
        .in_feedback_valid_in_28(in_feedback_valid_in_28),
        .in_forked87(conv2_B4_merge_out_forked87),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_memdep_phi5_pop21197(conv2_B4_merge_out_memdep_phi5_pop21197),
        .in_memdep_phi6_pop18175(conv2_B4_merge_out_memdep_phi6_pop18175),
        .in_memdep_phi6_pop1882_pop25225(conv2_B4_merge_out_memdep_phi6_pop1882_pop25225),
        .in_notcmp51183(conv2_B4_merge_out_notcmp51183),
        .in_notcmp56157(conv2_B4_merge_out_notcmp56157),
        .in_notcmp5672_pop23211(conv2_B4_merge_out_notcmp5672_pop23211),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_row_038_pop20190(conv2_B4_merge_out_row_038_pop20190),
        .in_stall_in(conv2_B4_branch_out_stall_out),
        .in_valid_in(conv2_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out(bb_conv2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out(bb_conv2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out),
        .out_c0_exe10472(bb_conv2_B4_stall_region_out_c0_exe10472),
        .out_c0_exe11473(bb_conv2_B4_stall_region_out_c0_exe11473),
        .out_c0_exe12474(bb_conv2_B4_stall_region_out_c0_exe12474),
        .out_c0_exe13(bb_conv2_B4_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_conv2_B4_stall_region_out_c0_exe14),
        .out_c0_exe1463(bb_conv2_B4_stall_region_out_c0_exe1463),
        .out_c0_exe16(bb_conv2_B4_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_conv2_B4_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_conv2_B4_stall_region_out_c0_exe18),
        .out_c0_exe19(bb_conv2_B4_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_conv2_B4_stall_region_out_c0_exe20),
        .out_c0_exe21(bb_conv2_B4_stall_region_out_c0_exe21),
        .out_c0_exe22(bb_conv2_B4_stall_region_out_c0_exe22),
        .out_c0_exe23(bb_conv2_B4_stall_region_out_c0_exe23),
        .out_c0_exe24(bb_conv2_B4_stall_region_out_c0_exe24),
        .out_c0_exe2464(bb_conv2_B4_stall_region_out_c0_exe2464),
        .out_c0_exe25(bb_conv2_B4_stall_region_out_c0_exe25),
        .out_c0_exe26(bb_conv2_B4_stall_region_out_c0_exe26),
        .out_c0_exe27(bb_conv2_B4_stall_region_out_c0_exe27),
        .out_c0_exe3465(bb_conv2_B4_stall_region_out_c0_exe3465),
        .out_c0_exe4466(bb_conv2_B4_stall_region_out_c0_exe4466),
        .out_c0_exe5467(bb_conv2_B4_stall_region_out_c0_exe5467),
        .out_c0_exe6468(bb_conv2_B4_stall_region_out_c0_exe6468),
        .out_c0_exe7469(bb_conv2_B4_stall_region_out_c0_exe7469),
        .out_c0_exe8470(bb_conv2_B4_stall_region_out_c0_exe8470),
        .out_c0_exe9471(bb_conv2_B4_stall_region_out_c0_exe9471),
        .out_feedback_stall_out_28(bb_conv2_B4_stall_region_out_feedback_stall_out_28),
        .out_memdep_phi4_pop28(bb_conv2_B4_stall_region_out_memdep_phi4_pop28),
        .out_pipeline_valid_out(bb_conv2_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2_B4_stall_region_out_stall_out),
        .out_valid_out(bb_conv2_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_28_sync(GPOUT,6)
    assign out_feedback_stall_out_28 = bb_conv2_B4_stall_region_out_feedback_stall_out_28;

    // out_c0_exe10472(GPOUT,39)
    assign out_c0_exe10472 = conv2_B4_branch_out_c0_exe10472;

    // out_c0_exe11473(GPOUT,40)
    assign out_c0_exe11473 = conv2_B4_branch_out_c0_exe11473;

    // out_c0_exe12474(GPOUT,41)
    assign out_c0_exe12474 = conv2_B4_branch_out_c0_exe12474;

    // out_c0_exe13(GPOUT,42)
    assign out_c0_exe13 = conv2_B4_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,43)
    assign out_c0_exe14 = conv2_B4_branch_out_c0_exe14;

    // out_c0_exe1463(GPOUT,44)
    assign out_c0_exe1463 = conv2_B4_branch_out_c0_exe1463;

    // out_c0_exe16(GPOUT,45)
    assign out_c0_exe16 = conv2_B4_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,46)
    assign out_c0_exe17 = conv2_B4_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,47)
    assign out_c0_exe18 = conv2_B4_branch_out_c0_exe18;

    // out_c0_exe19(GPOUT,48)
    assign out_c0_exe19 = conv2_B4_branch_out_c0_exe19;

    // out_c0_exe20(GPOUT,49)
    assign out_c0_exe20 = conv2_B4_branch_out_c0_exe20;

    // out_c0_exe21(GPOUT,50)
    assign out_c0_exe21 = conv2_B4_branch_out_c0_exe21;

    // out_c0_exe22(GPOUT,51)
    assign out_c0_exe22 = conv2_B4_branch_out_c0_exe22;

    // out_c0_exe23(GPOUT,52)
    assign out_c0_exe23 = conv2_B4_branch_out_c0_exe23;

    // out_c0_exe24(GPOUT,53)
    assign out_c0_exe24 = conv2_B4_branch_out_c0_exe24;

    // out_c0_exe2464(GPOUT,54)
    assign out_c0_exe2464 = conv2_B4_branch_out_c0_exe2464;

    // out_c0_exe25(GPOUT,55)
    assign out_c0_exe25 = conv2_B4_branch_out_c0_exe25;

    // out_c0_exe26(GPOUT,56)
    assign out_c0_exe26 = conv2_B4_branch_out_c0_exe26;

    // out_c0_exe27(GPOUT,57)
    assign out_c0_exe27 = conv2_B4_branch_out_c0_exe27;

    // out_c0_exe3465(GPOUT,58)
    assign out_c0_exe3465 = conv2_B4_branch_out_c0_exe3465;

    // out_c0_exe4466(GPOUT,59)
    assign out_c0_exe4466 = conv2_B4_branch_out_c0_exe4466;

    // out_c0_exe5467(GPOUT,60)
    assign out_c0_exe5467 = conv2_B4_branch_out_c0_exe5467;

    // out_c0_exe6468(GPOUT,61)
    assign out_c0_exe6468 = conv2_B4_branch_out_c0_exe6468;

    // out_c0_exe7469(GPOUT,62)
    assign out_c0_exe7469 = conv2_B4_branch_out_c0_exe7469;

    // out_c0_exe8470(GPOUT,63)
    assign out_c0_exe8470 = conv2_B4_branch_out_c0_exe8470;

    // out_c0_exe9471(GPOUT,64)
    assign out_c0_exe9471 = conv2_B4_branch_out_c0_exe9471;

    // out_exiting_stall_out(GPOUT,65)
    assign out_exiting_stall_out = bb_conv2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,66)
    assign out_exiting_valid_out = bb_conv2_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out;

    // out_memdep_phi4_pop28(GPOUT,67)
    assign out_memdep_phi4_pop28 = conv2_B4_branch_out_memdep_phi4_pop28;

    // out_stall_out_0(GPOUT,68)
    assign out_stall_out_0 = conv2_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,69)
    assign out_stall_out_1 = conv2_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,70)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,71)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,72)
    assign out_valid_out_0 = conv2_B4_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,74)
    assign out_pipeline_valid_out = bb_conv2_B4_stall_region_out_pipeline_valid_out;

endmodule
