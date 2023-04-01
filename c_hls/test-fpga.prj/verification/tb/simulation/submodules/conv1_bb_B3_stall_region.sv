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

// SystemVerilog created from bb_conv1_B3_stall_region
// Created for function/kernel conv1
// SystemVerilog created on Sat Apr  1 13:10:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv1_bb_B3_stall_region (
    output wire [0:0] out_c0_exe185,
    output wire [0:0] out_c0_exe286,
    output wire [31:0] out_c0_exe387,
    output wire [0:0] out_c0_exe488,
    output wire [0:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_memdep_phi1_pop15,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_stall_out,
    input wire [0:0] in_feedback_in_15,
    output wire [0:0] out_feedback_stall_out_15,
    input wire [0:0] in_feedback_valid_in_15,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_channel_029_pop1151,
    input wire [0:0] in_exitcond1245,
    input wire [0:0] in_forked32,
    input wire [0:0] in_memdep_phi2_pop1254,
    input wire [0:0] in_notcmp2248,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv1_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] conv1_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv1_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv1_B3_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv1_B3_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] conv1_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv1_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_out_valid_out;
    wire [68:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    reg [68:0] coalesced_delay_0_0_q;
    wire [35:0] bubble_join_conv1_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv1_B3_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_conv1_B3_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_conv1_B3_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv1_B3_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv1_B3_merge_reg_aunroll_x_f;
    wire [69:0] bubble_join_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_i;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_b;
    wire [35:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] SE_out_conv1_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv1_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv1_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_stall_entry(STALLENABLE,58)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv1_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,49)
    assign bubble_join_stall_entry_q = {in_notcmp2248, in_memdep_phi2_pop1254, in_forked32, in_exitcond1245, in_channel_029_pop1151};

    // bubble_select_stall_entry(BITSELECT,50)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);

    // conv1_B3_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    conv1_B3_merge_reg theconv1_B3_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_data_in_2_tpl(bubble_select_stall_entry_f),
        .in_data_in_3_tpl(bubble_select_stall_entry_b),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .in_stall_in(SE_out_conv1_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(conv1_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv1_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv1_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv1_B3_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv1_B3_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_stall_out(conv1_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv1_B3_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv1_B3_merge_reg_aunroll_x(STALLENABLE,53)
    // Valid signal propagation
    assign SE_out_conv1_B3_merge_reg_aunroll_x_V0 = SE_out_conv1_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv1_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_o_stall | ~ (SE_out_conv1_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv1_B3_merge_reg_aunroll_x_wireValid = conv1_B3_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_conv1_B3_merge_reg_aunroll_x(BITJOIN,38)
    assign bubble_join_conv1_B3_merge_reg_aunroll_x_q = {conv1_B3_merge_reg_aunroll_x_out_data_out_4_tpl, conv1_B3_merge_reg_aunroll_x_out_data_out_3_tpl, conv1_B3_merge_reg_aunroll_x_out_data_out_2_tpl, conv1_B3_merge_reg_aunroll_x_out_data_out_1_tpl, conv1_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv1_B3_merge_reg_aunroll_x(BITSELECT,39)
    assign bubble_select_conv1_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv1_B3_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv1_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv1_B3_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_conv1_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv1_B3_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_conv1_B3_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv1_B3_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_conv1_B3_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv1_B3_merge_reg_aunroll_x_q[35:35]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x(BLACKBOX,4)@1
    // in in_i_stall@20000000
    // out out_c0_exit84_0_tpl@5
    // out out_c0_exit84_1_tpl@5
    // out out_c0_exit84_2_tpl@5
    // out out_c0_exit84_3_tpl@5
    // out out_c0_exit84_4_tpl@5
    // out out_c0_exit84_5_tpl@5
    // out out_c0_exit84_6_tpl@5
    // out out_c0_exit84_7_tpl@5
    // out out_c0_exit84_8_tpl@5
    // out out_c0_exit84_9_tpl@5
    // out out_c0_exit84_10_tpl@5
    // out out_c0_exit84_11_tpl@5
    // out out_c0_exit84_12_tpl@5
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    conv1_i_sfc_s_c0_in_for_cond4_preheader_s_c0_enter7811_conv11 thei_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x (
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_conv1_B3_merge_reg_aunroll_x_b),
        .in_c0_eni5_2_tpl(bubble_select_conv1_B3_merge_reg_aunroll_x_c),
        .in_c0_eni5_3_tpl(bubble_select_conv1_B3_merge_reg_aunroll_x_d),
        .in_c0_eni5_4_tpl(bubble_select_conv1_B3_merge_reg_aunroll_x_e),
        .in_c0_eni5_5_tpl(bubble_select_conv1_B3_merge_reg_aunroll_x_f),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_backStall),
        .in_i_valid(SE_out_conv1_B3_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit84_0_tpl(),
        .out_c0_exit84_1_tpl(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_1_tpl),
        .out_c0_exit84_2_tpl(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_2_tpl),
        .out_c0_exit84_3_tpl(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_3_tpl),
        .out_c0_exit84_4_tpl(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_4_tpl),
        .out_c0_exit84_5_tpl(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_5_tpl),
        .out_c0_exit84_6_tpl(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_6_tpl),
        .out_c0_exit84_7_tpl(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_7_tpl),
        .out_c0_exit84_8_tpl(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_8_tpl),
        .out_c0_exit84_9_tpl(),
        .out_c0_exit84_10_tpl(),
        .out_c0_exit84_11_tpl(),
        .out_c0_exit84_12_tpl(),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_stall_out(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_valid_out(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x(STALLENABLE,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_o_valid;

    // SE_coalesced_delay_0_0(STALLENABLE,62)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_V1;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x(BITJOIN,42)
    assign bubble_join_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_q = {i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_8_tpl, i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_7_tpl, i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_6_tpl, i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_5_tpl, i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_4_tpl, i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_3_tpl, i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_2_tpl, i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_c0_exit84_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x(BITSELECT,43)
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_q[34:34]);
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_q[35:35]);
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_q[67:36]);
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_q[68:68]);
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_q[69:69]);

    // i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13(BLACKBOX,12)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    conv1_i_llvm_fpga_pop_i1_memdep_phi1_pop15_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_i),
        .in_feedback_in_15(in_feedback_in_15),
        .in_feedback_valid_in_15(in_feedback_valid_in_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13(STALLENABLE,57)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_and0 = i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_and0;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13(BITJOIN,45)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_q = i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13(BITSELECT,46)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,34)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_d};

    // coalesced_delay_0_0(REG,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(69'b000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,35)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[64:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[65:65]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[66:66]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[67:67]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[68:68]);

    // dupName_0_sync_out_x(GPOUT,3)@6
    assign out_c0_exe185 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe286 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe387 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe488 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe5 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_h;
    assign out_memdep_phi1_pop15 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_V0;

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_valid_out = i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_stall_out = i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_stall_out;

    // feedback_stall_out_15_sync(GPOUT,10)
    assign out_feedback_stall_out_15 = i_llvm_fpga_pop_i1_memdep_phi1_pop15_conv13_out_feedback_stall_out_15;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
