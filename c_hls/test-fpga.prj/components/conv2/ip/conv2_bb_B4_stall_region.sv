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

// SystemVerilog created from bb_conv2_B4_stall_region
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B4_stall_region (
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
    output wire [0:0] out_memdep_phi4_pop28,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out,
    input wire [0:0] in_feedback_in_28,
    output wire [0:0] out_feedback_stall_out_28,
    input wire [0:0] in_feedback_valid_in_28,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_channel_039_pop17166,
    input wire [31:0] in_channel_039_pop1777_pop24218,
    input wire [0:0] in_exitcond28176,
    input wire [0:0] in_exitcond31148,
    input wire [0:0] in_exitcond3167_pop22204,
    input wire [0:0] in_forked87,
    input wire [0:0] in_memdep_phi5_pop21197,
    input wire [0:0] in_memdep_phi6_pop18175,
    input wire [0:0] in_memdep_phi6_pop1882_pop25225,
    input wire [0:0] in_notcmp51183,
    input wire [0:0] in_notcmp56157,
    input wire [0:0] in_notcmp5672_pop23211,
    input wire [31:0] in_row_038_pop20190,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv2_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] conv2_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv2_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] conv2_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] conv2_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2_B4_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2_B4_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] conv2_B4_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] conv2_B4_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] conv2_B4_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] conv2_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2_B4_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_20_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_21_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_22_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_23_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_24_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_25_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_26_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_27_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_out_valid_out;
    wire [400:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [63:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    wire [0:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    wire [0:0] sel_for_coalesced_delay_0_s;
    wire [0:0] sel_for_coalesced_delay_0_t;
    wire [0:0] sel_for_coalesced_delay_0_u;
    wire [0:0] sel_for_coalesced_delay_0_v;
    wire [0:0] sel_for_coalesced_delay_0_w;
    wire [0:0] sel_for_coalesced_delay_0_x;
    wire [0:0] sel_for_coalesced_delay_0_y;
    wire [0:0] sel_for_coalesced_delay_0_z;
    wire [0:0] sel_for_coalesced_delay_0_aa;
    reg [400:0] coalesced_delay_0_0_q;
    wire [105:0] bubble_join_conv2_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_conv2_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_conv2_B4_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_conv2_B4_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_conv2_B4_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2_B4_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2_B4_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2_B4_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_conv2_B4_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_conv2_B4_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_conv2_B4_merge_reg_aunroll_x_n;
    wire [401:0] bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_t;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_u;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_w;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_x;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_y;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_z;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_aa;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_bb;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_b;
    wire [105:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [0:0] SE_out_conv2_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_stall_entry(STALLENABLE,79)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,70)
    assign bubble_join_stall_entry_q = {in_row_038_pop20190, in_notcmp5672_pop23211, in_notcmp56157, in_notcmp51183, in_memdep_phi6_pop1882_pop25225, in_memdep_phi6_pop18175, in_memdep_phi5_pop21197, in_forked87, in_exitcond3167_pop22204, in_exitcond31148, in_exitcond28176, in_channel_039_pop1777_pop24218, in_channel_039_pop17166};

    // bubble_select_stall_entry(BITSELECT,71)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:67]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:68]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[69:69]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[70:70]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[71:71]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[72:72]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[73:73]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[105:74]);

    // conv2_B4_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    conv2_B4_merge_reg theconv2_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_g),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_l),
        .in_data_in_3_tpl(bubble_select_stall_entry_b),
        .in_data_in_4_tpl(bubble_select_stall_entry_i),
        .in_data_in_5_tpl(bubble_select_stall_entry_d),
        .in_data_in_6_tpl(bubble_select_stall_entry_k),
        .in_data_in_7_tpl(bubble_select_stall_entry_n),
        .in_data_in_8_tpl(bubble_select_stall_entry_h),
        .in_data_in_9_tpl(bubble_select_stall_entry_f),
        .in_data_in_10_tpl(bubble_select_stall_entry_m),
        .in_data_in_11_tpl(bubble_select_stall_entry_c),
        .in_data_in_12_tpl(bubble_select_stall_entry_j),
        .in_stall_in(SE_out_conv2_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2_B4_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_stall_out(conv2_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv2_B4_merge_reg_aunroll_x(STALLENABLE,74)
    // Valid signal propagation
    assign SE_out_conv2_B4_merge_reg_aunroll_x_V0 = SE_out_conv2_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_o_stall | ~ (SE_out_conv2_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2_B4_merge_reg_aunroll_x_wireValid = conv2_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_conv2_B4_merge_reg_aunroll_x(BITJOIN,59)
    assign bubble_join_conv2_B4_merge_reg_aunroll_x_q = {conv2_B4_merge_reg_aunroll_x_out_data_out_12_tpl, conv2_B4_merge_reg_aunroll_x_out_data_out_11_tpl, conv2_B4_merge_reg_aunroll_x_out_data_out_10_tpl, conv2_B4_merge_reg_aunroll_x_out_data_out_9_tpl, conv2_B4_merge_reg_aunroll_x_out_data_out_8_tpl, conv2_B4_merge_reg_aunroll_x_out_data_out_7_tpl, conv2_B4_merge_reg_aunroll_x_out_data_out_6_tpl, conv2_B4_merge_reg_aunroll_x_out_data_out_5_tpl, conv2_B4_merge_reg_aunroll_x_out_data_out_4_tpl, conv2_B4_merge_reg_aunroll_x_out_data_out_3_tpl, conv2_B4_merge_reg_aunroll_x_out_data_out_2_tpl, conv2_B4_merge_reg_aunroll_x_out_data_out_1_tpl, conv2_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2_B4_merge_reg_aunroll_x(BITSELECT,60)
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[36:36]);
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[37:37]);
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[69:38]);
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[70:70]);
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[71:71]);
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[72:72]);
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[104:73]);
    assign bubble_select_conv2_B4_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2_B4_merge_reg_aunroll_x_q[105:105]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x(BLACKBOX,4)@1
    // in in_i_stall@20000000
    // out out_c0_exit462_0_tpl@10
    // out out_c0_exit462_1_tpl@10
    // out out_c0_exit462_2_tpl@10
    // out out_c0_exit462_3_tpl@10
    // out out_c0_exit462_4_tpl@10
    // out out_c0_exit462_5_tpl@10
    // out out_c0_exit462_6_tpl@10
    // out out_c0_exit462_7_tpl@10
    // out out_c0_exit462_8_tpl@10
    // out out_c0_exit462_9_tpl@10
    // out out_c0_exit462_10_tpl@10
    // out out_c0_exit462_11_tpl@10
    // out out_c0_exit462_12_tpl@10
    // out out_c0_exit462_13_tpl@10
    // out out_c0_exit462_14_tpl@10
    // out out_c0_exit462_15_tpl@10
    // out out_c0_exit462_16_tpl@10
    // out out_c0_exit462_17_tpl@10
    // out out_c0_exit462_18_tpl@10
    // out out_c0_exit462_19_tpl@10
    // out out_c0_exit462_20_tpl@10
    // out out_c0_exit462_21_tpl@10
    // out out_c0_exit462_22_tpl@10
    // out out_c0_exit462_23_tpl@10
    // out out_c0_exit462_24_tpl@10
    // out out_c0_exit462_25_tpl@10
    // out out_c0_exit462_26_tpl@10
    // out out_c0_exit462_27_tpl@10
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_pipeline_valid_out@20000000
    conv2_i_sfc_s_c0_in_for_cond7_preheader_s_c0_enter44439_conv21 thei_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x (
        .in_c0_eni13_0_tpl(GND_q),
        .in_c0_eni13_1_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_i),
        .in_c0_eni13_2_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_b),
        .in_c0_eni13_3_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_m),
        .in_c0_eni13_4_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_k),
        .in_c0_eni13_5_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_l),
        .in_c0_eni13_6_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_n),
        .in_c0_eni13_7_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_g),
        .in_c0_eni13_8_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_h),
        .in_c0_eni13_9_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_j),
        .in_c0_eni13_10_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_c),
        .in_c0_eni13_11_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_d),
        .in_c0_eni13_12_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_e),
        .in_c0_eni13_13_tpl(bubble_select_conv2_B4_merge_reg_aunroll_x_f),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2_B4_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit462_0_tpl(),
        .out_c0_exit462_1_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_1_tpl),
        .out_c0_exit462_2_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_2_tpl),
        .out_c0_exit462_3_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_3_tpl),
        .out_c0_exit462_4_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_4_tpl),
        .out_c0_exit462_5_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_5_tpl),
        .out_c0_exit462_6_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_6_tpl),
        .out_c0_exit462_7_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_7_tpl),
        .out_c0_exit462_8_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_8_tpl),
        .out_c0_exit462_9_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_9_tpl),
        .out_c0_exit462_10_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_10_tpl),
        .out_c0_exit462_11_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_11_tpl),
        .out_c0_exit462_12_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_12_tpl),
        .out_c0_exit462_13_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_13_tpl),
        .out_c0_exit462_14_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_14_tpl),
        .out_c0_exit462_15_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_15_tpl),
        .out_c0_exit462_16_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_16_tpl),
        .out_c0_exit462_17_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_17_tpl),
        .out_c0_exit462_18_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_18_tpl),
        .out_c0_exit462_19_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_19_tpl),
        .out_c0_exit462_20_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_20_tpl),
        .out_c0_exit462_21_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_21_tpl),
        .out_c0_exit462_22_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_22_tpl),
        .out_c0_exit462_23_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_23_tpl),
        .out_c0_exit462_24_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_24_tpl),
        .out_c0_exit462_25_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_25_tpl),
        .out_c0_exit462_26_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_26_tpl),
        .out_c0_exit462_27_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_27_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x(STALLENABLE,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_o_valid;

    // SE_coalesced_delay_0_0(STALLENABLE,83)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_V1;
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

    // bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x(BITJOIN,63)
    assign bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q = {i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_27_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_26_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_25_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_24_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_23_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_22_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_21_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_20_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_19_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_18_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_17_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_16_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_15_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_14_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_13_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_12_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_11_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_10_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_9_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_8_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_7_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_6_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_5_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_4_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_3_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_2_tpl, i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_c0_exit462_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x(BITSELECT,64)
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[191:128]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[223:192]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[287:224]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[288:288]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[289:289]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[290:290]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[291:291]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[292:292]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[293:293]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[294:294]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[295:295]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[296:296]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[297:297]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[298:298]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[330:299]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[331:331]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[332:332]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[333:333]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[365:334]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[366:366]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[367:367]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[368:368]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[400:369]);
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q[401:401]);

    // i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23(BLACKBOX,12)@10
    // in in_stall_in@20000000
    // out out_data_out@11
    // out out_feedback_stall_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@11
    conv2_i_llvm_fpga_pop_i1_memdep_phi4_pop28_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_p),
        .in_feedback_in_28(in_feedback_in_28),
        .in_feedback_valid_in_28(in_feedback_valid_in_28),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_out_feedback_stall_out_28),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23(STALLENABLE,78)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_and0 = i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_and0;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23(BITJOIN,66)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_q = i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23(BITSELECT,67)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,55)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_bb, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_z, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_y, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_x, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_v, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_u, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_t, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_aa, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_w, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_d};

    // coalesced_delay_0_0(REG,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(401'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,56)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[191:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[223:192]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[255:224]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[287:256]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[319:288]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[351:320]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[383:352]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[384:384]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[385:385]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_0_q[386:386]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_0_q[387:387]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_0_q[388:388]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_0_q[389:389]);
    assign sel_for_coalesced_delay_0_q = $unsigned(coalesced_delay_0_0_q[390:390]);
    assign sel_for_coalesced_delay_0_r = $unsigned(coalesced_delay_0_0_q[391:391]);
    assign sel_for_coalesced_delay_0_s = $unsigned(coalesced_delay_0_0_q[392:392]);
    assign sel_for_coalesced_delay_0_t = $unsigned(coalesced_delay_0_0_q[393:393]);
    assign sel_for_coalesced_delay_0_u = $unsigned(coalesced_delay_0_0_q[394:394]);
    assign sel_for_coalesced_delay_0_v = $unsigned(coalesced_delay_0_0_q[395:395]);
    assign sel_for_coalesced_delay_0_w = $unsigned(coalesced_delay_0_0_q[396:396]);
    assign sel_for_coalesced_delay_0_x = $unsigned(coalesced_delay_0_0_q[397:397]);
    assign sel_for_coalesced_delay_0_y = $unsigned(coalesced_delay_0_0_q[398:398]);
    assign sel_for_coalesced_delay_0_z = $unsigned(coalesced_delay_0_0_q[399:399]);
    assign sel_for_coalesced_delay_0_aa = $unsigned(coalesced_delay_0_0_q[400:400]);

    // dupName_0_sync_out_x(GPOUT,3)@11
    assign out_c0_exe10472 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe11473 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe12474 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe13 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe14 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe1463 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe16 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe17 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe18 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe19 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe20 = sel_for_coalesced_delay_0_v;
    assign out_c0_exe21 = sel_for_coalesced_delay_0_w;
    assign out_c0_exe22 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe23 = sel_for_coalesced_delay_0_x;
    assign out_c0_exe24 = sel_for_coalesced_delay_0_y;
    assign out_c0_exe2464 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe25 = sel_for_coalesced_delay_0_z;
    assign out_c0_exe26 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe27 = sel_for_coalesced_delay_0_aa;
    assign out_c0_exe3465 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe4466 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe5467 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe6468 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe7469 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe8470 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe9471 = sel_for_coalesced_delay_0_m;
    assign out_memdep_phi4_pop28 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_V0;

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out = i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out = i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out;

    // feedback_stall_out_28_sync(GPOUT,10)
    assign out_feedback_stall_out_28 = i_llvm_fpga_pop_i1_memdep_phi4_pop28_conv23_out_feedback_stall_out_28;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv21_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,26)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
