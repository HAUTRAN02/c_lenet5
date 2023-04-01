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

// SystemVerilog created from bb_conv2_B5_stall_region
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B5_stall_region (
    output wire [31:0] out_c0_exe10539,
    output wire [0:0] out_c0_exe11540,
    output wire [63:0] out_c0_exe12541,
    output wire [63:0] out_c0_exe13542,
    output wire [31:0] out_c0_exe14543,
    output wire [0:0] out_c0_exe1530,
    output wire [63:0] out_c0_exe15544,
    output wire [0:0] out_c0_exe16545,
    output wire [0:0] out_c0_exe17546,
    output wire [0:0] out_c0_exe18547,
    output wire [0:0] out_c0_exe20549,
    output wire [0:0] out_c0_exe21550,
    output wire [31:0] out_c0_exe22551,
    output wire [0:0] out_c0_exe23552,
    output wire [0:0] out_c0_exe24553,
    output wire [0:0] out_c0_exe2531,
    output wire [0:0] out_c0_exe25554,
    output wire [31:0] out_c0_exe26555,
    output wire [0:0] out_c0_exe27556,
    output wire [0:0] out_c0_exe28,
    output wire [0:0] out_c0_exe29,
    output wire [31:0] out_c0_exe30,
    output wire [0:0] out_c0_exe31,
    output wire [31:0] out_c0_exe32,
    output wire [31:0] out_c0_exe33,
    output wire [63:0] out_c0_exe34,
    output wire [63:0] out_c0_exe35,
    output wire [31:0] out_c0_exe3532,
    output wire [31:0] out_c0_exe36,
    output wire [63:0] out_c0_exe37,
    output wire [0:0] out_c0_exe38,
    output wire [0:0] out_c0_exe39,
    output wire [0:0] out_c0_exe40,
    output wire [0:0] out_c0_exe41,
    output wire [0:0] out_c0_exe42,
    output wire [0:0] out_c0_exe43,
    output wire [0:0] out_c0_exe44,
    output wire [0:0] out_c0_exe45,
    output wire [0:0] out_c0_exe4533,
    output wire [0:0] out_c0_exe46,
    output wire [0:0] out_c0_exe5534,
    output wire [31:0] out_c0_exe6535,
    output wire [0:0] out_c0_exe7536,
    output wire [0:0] out_c0_exe8537,
    output wire [0:0] out_c0_exe9538,
    output wire [0:0] out_memdep_phi3_pop39,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out,
    input wire [0:0] in_feedback_in_39,
    output wire [0:0] out_feedback_stall_out_39,
    input wire [0:0] in_feedback_valid_in_39,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_arrayidx34247,
    input wire [63:0] in_arrayidx64257,
    input wire [31:0] in_channel_039_pop17165,
    input wire [31:0] in_channel_039_pop1777_pop24224,
    input wire [31:0] in_channel_039_pop1778_pop31237,
    input wire [31:0] in_col_037_pop27252,
    input wire [0:0] in_exitcond25262,
    input wire [0:0] in_exitcond28182,
    input wire [0:0] in_exitcond2888_pop33292,
    input wire [0:0] in_exitcond31147,
    input wire [0:0] in_exitcond3167_pop22210,
    input wire [0:0] in_exitcond3168_pop29277,
    input wire [0:0] in_forked104,
    input wire [63:0] in_idxprom25242,
    input wire [0:0] in_memdep_phi4_pop28272,
    input wire [0:0] in_memdep_phi5_pop21100_pop36302,
    input wire [0:0] in_memdep_phi5_pop21203,
    input wire [0:0] in_memdep_phi6_pop18174,
    input wire [0:0] in_memdep_phi6_pop1882_pop25231,
    input wire [0:0] in_memdep_phi6_pop1883_pop32287,
    input wire [0:0] in_notcmp46267,
    input wire [0:0] in_notcmp51189,
    input wire [0:0] in_notcmp5192_pop34297,
    input wire [0:0] in_notcmp56156,
    input wire [0:0] in_notcmp5672_pop23217,
    input wire [0:0] in_notcmp5673_pop30282,
    input wire [31:0] in_row_038_pop20196,
    input wire [31:0] in_row_038_pop2096_pop35232,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2_B5_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] conv2_B5_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] conv2_B5_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] conv2_B5_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [63:0] conv2_B5_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [63:0] conv2_B5_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [31:0] conv2_B5_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [63:0] conv2_B5_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_24_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_25_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_26_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_data_out_27_tpl;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_11_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_12_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_14_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_20_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_21_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_22_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_23_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_24_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_25_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_26_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_27_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_28_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_29_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_30_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_31_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_32_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_33_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_34_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_35_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_36_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_37_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_38_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_39_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_40_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_41_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_42_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_43_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_44_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_45_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_46_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_out_feedback_stall_out_39;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_out_valid_out;
    wire [732:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [63:0] sel_for_coalesced_delay_0_d;
    wire [63:0] sel_for_coalesced_delay_0_e;
    wire [63:0] sel_for_coalesced_delay_0_f;
    wire [63:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [31:0] sel_for_coalesced_delay_0_k;
    wire [31:0] sel_for_coalesced_delay_0_l;
    wire [31:0] sel_for_coalesced_delay_0_m;
    wire [31:0] sel_for_coalesced_delay_0_n;
    wire [31:0] sel_for_coalesced_delay_0_o;
    wire [31:0] sel_for_coalesced_delay_0_p;
    wire [31:0] sel_for_coalesced_delay_0_q;
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
    wire [0:0] sel_for_coalesced_delay_0_bb;
    wire [0:0] sel_for_coalesced_delay_0_cc;
    wire [0:0] sel_for_coalesced_delay_0_dd;
    wire [0:0] sel_for_coalesced_delay_0_ee;
    wire [0:0] sel_for_coalesced_delay_0_ff;
    wire [0:0] sel_for_coalesced_delay_0_gg;
    wire [0:0] sel_for_coalesced_delay_0_hh;
    wire [0:0] sel_for_coalesced_delay_0_ii;
    wire [0:0] sel_for_coalesced_delay_0_jj;
    wire [0:0] sel_for_coalesced_delay_0_kk;
    wire [0:0] sel_for_coalesced_delay_0_ll;
    wire [0:0] sel_for_coalesced_delay_0_mm;
    wire [0:0] sel_for_coalesced_delay_0_nn;
    wire [0:0] sel_for_coalesced_delay_0_oo;
    wire [0:0] sel_for_coalesced_delay_0_pp;
    wire [0:0] sel_for_coalesced_delay_0_qq;
    wire [0:0] sel_for_coalesced_delay_0_rr;
    wire [0:0] sel_for_coalesced_delay_0_ss;
    wire [0:0] sel_for_coalesced_delay_0_tt;
    reg [732:0] coalesced_delay_0_0_q;
    wire [402:0] bubble_join_conv2_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2_B5_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2_B5_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_conv2_B5_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_conv2_B5_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_conv2_B5_merge_reg_aunroll_x_p;
    wire [63:0] bubble_select_conv2_B5_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_conv2_B5_merge_reg_aunroll_x_r;
    wire [31:0] bubble_select_conv2_B5_merge_reg_aunroll_x_s;
    wire [63:0] bubble_select_conv2_B5_merge_reg_aunroll_x_t;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_u;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_v;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_w;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_x;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_y;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_z;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_aa;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_bb;
    wire [0:0] bubble_select_conv2_B5_merge_reg_aunroll_x_cc;
    wire [733:0] bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_l;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_m;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_o;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_t;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_u;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_w;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_x;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_y;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_z;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_aa;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_bb;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_cc;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_dd;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ee;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ff;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_gg;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_hh;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ii;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_jj;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_kk;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ll;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_mm;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_nn;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_oo;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_pp;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_qq;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_rr;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ss;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_tt;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_uu;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_b;
    wire [402:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [63:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [0:0] bubble_select_stall_entry_t;
    wire [0:0] bubble_select_stall_entry_u;
    wire [0:0] bubble_select_stall_entry_v;
    wire [0:0] bubble_select_stall_entry_w;
    wire [0:0] bubble_select_stall_entry_x;
    wire [0:0] bubble_select_stall_entry_y;
    wire [0:0] bubble_select_stall_entry_z;
    wire [0:0] bubble_select_stall_entry_aa;
    wire [31:0] bubble_select_stall_entry_bb;
    wire [31:0] bubble_select_stall_entry_cc;
    wire [0:0] SE_out_conv2_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_stall_entry(STALLENABLE,96)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,87)
    assign bubble_join_stall_entry_q = {in_row_038_pop2096_pop35232, in_row_038_pop20196, in_notcmp5673_pop30282, in_notcmp5672_pop23217, in_notcmp56156, in_notcmp5192_pop34297, in_notcmp51189, in_notcmp46267, in_memdep_phi6_pop1883_pop32287, in_memdep_phi6_pop1882_pop25231, in_memdep_phi6_pop18174, in_memdep_phi5_pop21203, in_memdep_phi5_pop21100_pop36302, in_memdep_phi4_pop28272, in_idxprom25242, in_forked104, in_exitcond3168_pop29277, in_exitcond3167_pop22210, in_exitcond31147, in_exitcond2888_pop33292, in_exitcond28182, in_exitcond25262, in_col_037_pop27252, in_channel_039_pop1778_pop31237, in_channel_039_pop1777_pop24224, in_channel_039_pop17165, in_arrayidx64257, in_arrayidx34247};

    // bubble_select_stall_entry(BITSELECT,88)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[159:128]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[191:160]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[223:192]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[255:224]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[256:256]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[257:257]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[258:258]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[259:259]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[260:260]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[261:261]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[262:262]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[326:263]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[327:327]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[328:328]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[329:329]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[330:330]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[331:331]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[332:332]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[333:333]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[334:334]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[335:335]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[336:336]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[337:337]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[338:338]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[370:339]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[402:371]);

    // conv2_B5_merge_reg_aunroll_x(BLACKBOX,2)@0
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
    // out out_data_out_13_tpl@1
    // out out_data_out_14_tpl@1
    // out out_data_out_15_tpl@1
    // out out_data_out_16_tpl@1
    // out out_data_out_17_tpl@1
    // out out_data_out_18_tpl@1
    // out out_data_out_19_tpl@1
    // out out_data_out_20_tpl@1
    // out out_data_out_21_tpl@1
    // out out_data_out_22_tpl@1
    // out out_data_out_23_tpl@1
    // out out_data_out_24_tpl@1
    // out out_data_out_25_tpl@1
    // out out_data_out_26_tpl@1
    // out out_data_out_27_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    conv2_B5_merge_reg theconv2_B5_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_n),
        .in_data_in_1_tpl(bubble_select_stall_entry_k),
        .in_data_in_2_tpl(bubble_select_stall_entry_y),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_data_in_4_tpl(bubble_select_stall_entry_s),
        .in_data_in_5_tpl(bubble_select_stall_entry_i),
        .in_data_in_6_tpl(bubble_select_stall_entry_w),
        .in_data_in_7_tpl(bubble_select_stall_entry_bb),
        .in_data_in_8_tpl(bubble_select_stall_entry_r),
        .in_data_in_9_tpl(bubble_select_stall_entry_l),
        .in_data_in_10_tpl(bubble_select_stall_entry_z),
        .in_data_in_11_tpl(bubble_select_stall_entry_e),
        .in_data_in_12_tpl(bubble_select_stall_entry_t),
        .in_data_in_13_tpl(bubble_select_stall_entry_cc),
        .in_data_in_14_tpl(bubble_select_stall_entry_f),
        .in_data_in_15_tpl(bubble_select_stall_entry_o),
        .in_data_in_16_tpl(bubble_select_stall_entry_b),
        .in_data_in_17_tpl(bubble_select_stall_entry_g),
        .in_data_in_18_tpl(bubble_select_stall_entry_c),
        .in_data_in_19_tpl(bubble_select_stall_entry_h),
        .in_data_in_20_tpl(bubble_select_stall_entry_v),
        .in_data_in_21_tpl(bubble_select_stall_entry_p),
        .in_data_in_22_tpl(bubble_select_stall_entry_m),
        .in_data_in_23_tpl(bubble_select_stall_entry_aa),
        .in_data_in_24_tpl(bubble_select_stall_entry_u),
        .in_data_in_25_tpl(bubble_select_stall_entry_j),
        .in_data_in_26_tpl(bubble_select_stall_entry_x),
        .in_data_in_27_tpl(bubble_select_stall_entry_q),
        .in_stall_in(SE_out_conv2_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(conv2_B5_merge_reg_aunroll_x_out_data_out_27_tpl),
        .out_stall_out(conv2_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2_B5_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv2_B5_merge_reg_aunroll_x(STALLENABLE,91)
    // Valid signal propagation
    assign SE_out_conv2_B5_merge_reg_aunroll_x_V0 = SE_out_conv2_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_o_stall | ~ (SE_out_conv2_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2_B5_merge_reg_aunroll_x_wireValid = conv2_B5_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_conv2_B5_merge_reg_aunroll_x(BITJOIN,76)
    assign bubble_join_conv2_B5_merge_reg_aunroll_x_q = {conv2_B5_merge_reg_aunroll_x_out_data_out_27_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_26_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_25_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_24_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_23_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_22_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_21_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_20_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_19_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_18_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_17_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_16_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_15_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_14_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_13_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_12_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_11_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_10_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_9_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_8_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_7_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_6_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_5_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_4_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_3_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_2_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_1_tpl, conv2_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2_B5_merge_reg_aunroll_x(BITSELECT,77)
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[36:36]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[37:37]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[69:38]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[70:70]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[71:71]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[72:72]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[104:73]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[105:105]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[137:106]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[169:138]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[233:170]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[297:234]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[329:298]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[393:330]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[394:394]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_v = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[395:395]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_w = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[396:396]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_x = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[397:397]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_y = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[398:398]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_z = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[399:399]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_aa = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[400:400]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_bb = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[401:401]);
    assign bubble_select_conv2_B5_merge_reg_aunroll_x_cc = $unsigned(bubble_join_conv2_B5_merge_reg_aunroll_x_q[402:402]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x(BLACKBOX,4)@1
    // in in_i_stall@20000000
    // out out_c0_exit529_0_tpl@5
    // out out_c0_exit529_1_tpl@5
    // out out_c0_exit529_2_tpl@5
    // out out_c0_exit529_3_tpl@5
    // out out_c0_exit529_4_tpl@5
    // out out_c0_exit529_5_tpl@5
    // out out_c0_exit529_6_tpl@5
    // out out_c0_exit529_7_tpl@5
    // out out_c0_exit529_8_tpl@5
    // out out_c0_exit529_9_tpl@5
    // out out_c0_exit529_10_tpl@5
    // out out_c0_exit529_11_tpl@5
    // out out_c0_exit529_12_tpl@5
    // out out_c0_exit529_13_tpl@5
    // out out_c0_exit529_14_tpl@5
    // out out_c0_exit529_15_tpl@5
    // out out_c0_exit529_16_tpl@5
    // out out_c0_exit529_17_tpl@5
    // out out_c0_exit529_18_tpl@5
    // out out_c0_exit529_19_tpl@5
    // out out_c0_exit529_20_tpl@5
    // out out_c0_exit529_21_tpl@5
    // out out_c0_exit529_22_tpl@5
    // out out_c0_exit529_23_tpl@5
    // out out_c0_exit529_24_tpl@5
    // out out_c0_exit529_25_tpl@5
    // out out_c0_exit529_26_tpl@5
    // out out_c0_exit529_27_tpl@5
    // out out_c0_exit529_28_tpl@5
    // out out_c0_exit529_29_tpl@5
    // out out_c0_exit529_30_tpl@5
    // out out_c0_exit529_31_tpl@5
    // out out_c0_exit529_32_tpl@5
    // out out_c0_exit529_33_tpl@5
    // out out_c0_exit529_34_tpl@5
    // out out_c0_exit529_35_tpl@5
    // out out_c0_exit529_36_tpl@5
    // out out_c0_exit529_37_tpl@5
    // out out_c0_exit529_38_tpl@5
    // out out_c0_exit529_39_tpl@5
    // out out_c0_exit529_40_tpl@5
    // out out_c0_exit529_41_tpl@5
    // out out_c0_exit529_42_tpl@5
    // out out_c0_exit529_43_tpl@5
    // out out_c0_exit529_44_tpl@5
    // out out_c0_exit529_45_tpl@5
    // out out_c0_exit529_46_tpl@5
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    conv2_i_sfc_s_c0_in_for_cond10_preheader_s_c0_enter48840_conv21 thei_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x (
        .in_c0_eni28_0_tpl(GND_q),
        .in_c0_eni28_1_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_b),
        .in_c0_eni28_2_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_x),
        .in_c0_eni28_3_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_y),
        .in_c0_eni28_4_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_p),
        .in_c0_eni28_5_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_z),
        .in_c0_eni28_6_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_aa),
        .in_c0_eni28_7_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_bb),
        .in_c0_eni28_8_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_o),
        .in_c0_eni28_9_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_cc),
        .in_c0_eni28_10_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_q),
        .in_c0_eni28_11_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_r),
        .in_c0_eni28_12_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_s),
        .in_c0_eni28_13_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_t),
        .in_c0_eni28_14_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_u),
        .in_c0_eni28_15_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_v),
        .in_c0_eni28_16_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_w),
        .in_c0_eni28_17_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_c),
        .in_c0_eni28_18_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_d),
        .in_c0_eni28_19_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_e),
        .in_c0_eni28_20_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_f),
        .in_c0_eni28_21_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_g),
        .in_c0_eni28_22_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_h),
        .in_c0_eni28_23_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_i),
        .in_c0_eni28_24_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_j),
        .in_c0_eni28_25_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_k),
        .in_c0_eni28_26_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_l),
        .in_c0_eni28_27_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_m),
        .in_c0_eni28_28_tpl(bubble_select_conv2_B5_merge_reg_aunroll_x_n),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2_B5_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit529_0_tpl(),
        .out_c0_exit529_1_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_1_tpl),
        .out_c0_exit529_2_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_2_tpl),
        .out_c0_exit529_3_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_3_tpl),
        .out_c0_exit529_4_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_4_tpl),
        .out_c0_exit529_5_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_5_tpl),
        .out_c0_exit529_6_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_6_tpl),
        .out_c0_exit529_7_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_7_tpl),
        .out_c0_exit529_8_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_8_tpl),
        .out_c0_exit529_9_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_9_tpl),
        .out_c0_exit529_10_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_10_tpl),
        .out_c0_exit529_11_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_11_tpl),
        .out_c0_exit529_12_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_12_tpl),
        .out_c0_exit529_13_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_13_tpl),
        .out_c0_exit529_14_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_14_tpl),
        .out_c0_exit529_15_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_15_tpl),
        .out_c0_exit529_16_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_16_tpl),
        .out_c0_exit529_17_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_17_tpl),
        .out_c0_exit529_18_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_18_tpl),
        .out_c0_exit529_19_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_19_tpl),
        .out_c0_exit529_20_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_20_tpl),
        .out_c0_exit529_21_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_21_tpl),
        .out_c0_exit529_22_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_22_tpl),
        .out_c0_exit529_23_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_23_tpl),
        .out_c0_exit529_24_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_24_tpl),
        .out_c0_exit529_25_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_25_tpl),
        .out_c0_exit529_26_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_26_tpl),
        .out_c0_exit529_27_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_27_tpl),
        .out_c0_exit529_28_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_28_tpl),
        .out_c0_exit529_29_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_29_tpl),
        .out_c0_exit529_30_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_30_tpl),
        .out_c0_exit529_31_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_31_tpl),
        .out_c0_exit529_32_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_32_tpl),
        .out_c0_exit529_33_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_33_tpl),
        .out_c0_exit529_34_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_34_tpl),
        .out_c0_exit529_35_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_35_tpl),
        .out_c0_exit529_36_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_36_tpl),
        .out_c0_exit529_37_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_37_tpl),
        .out_c0_exit529_38_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_38_tpl),
        .out_c0_exit529_39_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_39_tpl),
        .out_c0_exit529_40_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_40_tpl),
        .out_c0_exit529_41_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_41_tpl),
        .out_c0_exit529_42_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_42_tpl),
        .out_c0_exit529_43_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_43_tpl),
        .out_c0_exit529_44_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_44_tpl),
        .out_c0_exit529_45_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_45_tpl),
        .out_c0_exit529_46_tpl(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_46_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x(STALLENABLE,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_o_valid;

    // SE_coalesced_delay_0_0(STALLENABLE,100)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_V1;
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

    // bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x(BITJOIN,80)
    assign bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q = {i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_46_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_45_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_44_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_43_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_42_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_41_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_40_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_39_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_38_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_37_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_36_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_35_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_34_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_33_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_32_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_31_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_30_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_29_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_28_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_27_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_26_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_25_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_24_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_23_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_22_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_21_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_20_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_19_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_18_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_17_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_16_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_15_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_14_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_13_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_12_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_11_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_10_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_9_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_8_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_7_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_6_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_5_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_4_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_3_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_2_tpl, i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_c0_exit529_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x(BITSELECT,81)
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[34:34]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[35:35]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[67:36]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[68:68]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[69:69]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[70:70]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[102:71]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[103:103]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[167:104]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[231:168]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[263:232]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[327:264]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[328:328]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[329:329]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[330:330]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[331:331]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[332:332]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[333:333]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[365:334]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[366:366]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[367:367]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[368:368]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[400:369]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[401:401]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[402:402]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[403:403]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ee = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[435:404]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ff = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[436:436]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_gg = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[468:437]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_hh = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[500:469]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ii = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[564:501]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_jj = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[628:565]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_kk = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[660:629]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ll = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[724:661]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_mm = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[725:725]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_nn = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[726:726]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_oo = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[727:727]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_pp = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[728:728]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_qq = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[729:729]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_rr = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[730:730]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ss = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[731:731]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_tt = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[732:732]);
    assign bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_uu = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q[733:733]);

    // i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23(BLACKBOX,12)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_39@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    conv2_i_llvm_fpga_pop_i1_memdep_phi3_pop39_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_t),
        .in_feedback_in_39(in_feedback_in_39),
        .in_feedback_valid_in_39(in_feedback_valid_in_39),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_out_feedback_stall_out_39),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23(STALLENABLE,95)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_and0 = i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_and0;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23(BITJOIN,83)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_q = i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23(BITSELECT,84)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,72)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_uu, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_tt, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ss, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_rr, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_qq, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_pp, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_oo, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_nn, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_mm, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ff, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_dd, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_cc, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_bb, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_z, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_y, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_x, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_v, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_u, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_kk, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_hh, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_gg, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ee, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_aa, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_w, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ll, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_jj, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_ii, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_p};

    // coalesced_delay_0_0(REG,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(733'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,73)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[191:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[255:192]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[319:256]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[383:320]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[415:384]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[447:416]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[479:448]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[511:480]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[543:512]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_0_q[575:544]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_0_q[607:576]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_0_q[639:608]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_0_q[671:640]);
    assign sel_for_coalesced_delay_0_q = $unsigned(coalesced_delay_0_0_q[703:672]);
    assign sel_for_coalesced_delay_0_r = $unsigned(coalesced_delay_0_0_q[704:704]);
    assign sel_for_coalesced_delay_0_s = $unsigned(coalesced_delay_0_0_q[705:705]);
    assign sel_for_coalesced_delay_0_t = $unsigned(coalesced_delay_0_0_q[706:706]);
    assign sel_for_coalesced_delay_0_u = $unsigned(coalesced_delay_0_0_q[707:707]);
    assign sel_for_coalesced_delay_0_v = $unsigned(coalesced_delay_0_0_q[708:708]);
    assign sel_for_coalesced_delay_0_w = $unsigned(coalesced_delay_0_0_q[709:709]);
    assign sel_for_coalesced_delay_0_x = $unsigned(coalesced_delay_0_0_q[710:710]);
    assign sel_for_coalesced_delay_0_y = $unsigned(coalesced_delay_0_0_q[711:711]);
    assign sel_for_coalesced_delay_0_z = $unsigned(coalesced_delay_0_0_q[712:712]);
    assign sel_for_coalesced_delay_0_aa = $unsigned(coalesced_delay_0_0_q[713:713]);
    assign sel_for_coalesced_delay_0_bb = $unsigned(coalesced_delay_0_0_q[714:714]);
    assign sel_for_coalesced_delay_0_cc = $unsigned(coalesced_delay_0_0_q[715:715]);
    assign sel_for_coalesced_delay_0_dd = $unsigned(coalesced_delay_0_0_q[716:716]);
    assign sel_for_coalesced_delay_0_ee = $unsigned(coalesced_delay_0_0_q[717:717]);
    assign sel_for_coalesced_delay_0_ff = $unsigned(coalesced_delay_0_0_q[718:718]);
    assign sel_for_coalesced_delay_0_gg = $unsigned(coalesced_delay_0_0_q[719:719]);
    assign sel_for_coalesced_delay_0_hh = $unsigned(coalesced_delay_0_0_q[720:720]);
    assign sel_for_coalesced_delay_0_ii = $unsigned(coalesced_delay_0_0_q[721:721]);
    assign sel_for_coalesced_delay_0_jj = $unsigned(coalesced_delay_0_0_q[722:722]);
    assign sel_for_coalesced_delay_0_kk = $unsigned(coalesced_delay_0_0_q[723:723]);
    assign sel_for_coalesced_delay_0_ll = $unsigned(coalesced_delay_0_0_q[724:724]);
    assign sel_for_coalesced_delay_0_mm = $unsigned(coalesced_delay_0_0_q[725:725]);
    assign sel_for_coalesced_delay_0_nn = $unsigned(coalesced_delay_0_0_q[726:726]);
    assign sel_for_coalesced_delay_0_oo = $unsigned(coalesced_delay_0_0_q[727:727]);
    assign sel_for_coalesced_delay_0_pp = $unsigned(coalesced_delay_0_0_q[728:728]);
    assign sel_for_coalesced_delay_0_qq = $unsigned(coalesced_delay_0_0_q[729:729]);
    assign sel_for_coalesced_delay_0_rr = $unsigned(coalesced_delay_0_0_q[730:730]);
    assign sel_for_coalesced_delay_0_ss = $unsigned(coalesced_delay_0_0_q[731:731]);
    assign sel_for_coalesced_delay_0_tt = $unsigned(coalesced_delay_0_0_q[732:732]);

    // dupName_0_sync_out_x(GPOUT,3)@6
    assign out_c0_exe10539 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe11540 = sel_for_coalesced_delay_0_kk;
    assign out_c0_exe12541 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe13542 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe14543 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe1530 = sel_for_coalesced_delay_0_gg;
    assign out_c0_exe15544 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe16545 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe17546 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe18547 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe20549 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe21550 = sel_for_coalesced_delay_0_v;
    assign out_c0_exe22551 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe23552 = sel_for_coalesced_delay_0_w;
    assign out_c0_exe24553 = sel_for_coalesced_delay_0_x;
    assign out_c0_exe2531 = sel_for_coalesced_delay_0_z;
    assign out_c0_exe25554 = sel_for_coalesced_delay_0_y;
    assign out_c0_exe26555 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe27556 = sel_for_coalesced_delay_0_aa;
    assign out_c0_exe28 = sel_for_coalesced_delay_0_bb;
    assign out_c0_exe29 = sel_for_coalesced_delay_0_cc;
    assign out_c0_exe30 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe31 = sel_for_coalesced_delay_0_ee;
    assign out_c0_exe32 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe33 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe34 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe35 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe3532 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe36 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe37 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe38 = sel_for_coalesced_delay_0_ll;
    assign out_c0_exe39 = sel_for_coalesced_delay_0_mm;
    assign out_c0_exe40 = sel_for_coalesced_delay_0_nn;
    assign out_c0_exe41 = sel_for_coalesced_delay_0_oo;
    assign out_c0_exe42 = sel_for_coalesced_delay_0_pp;
    assign out_c0_exe43 = sel_for_coalesced_delay_0_qq;
    assign out_c0_exe44 = sel_for_coalesced_delay_0_rr;
    assign out_c0_exe45 = sel_for_coalesced_delay_0_ss;
    assign out_c0_exe4533 = sel_for_coalesced_delay_0_dd;
    assign out_c0_exe46 = sel_for_coalesced_delay_0_tt;
    assign out_c0_exe5534 = sel_for_coalesced_delay_0_ff;
    assign out_c0_exe6535 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe7536 = sel_for_coalesced_delay_0_hh;
    assign out_c0_exe8537 = sel_for_coalesced_delay_0_ii;
    assign out_c0_exe9538 = sel_for_coalesced_delay_0_jj;
    assign out_memdep_phi3_pop39 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_V0;

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out = i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out = i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out;

    // feedback_stall_out_39_sync(GPOUT,10)
    assign out_feedback_stall_out_39 = i_llvm_fpga_pop_i1_memdep_phi3_pop39_conv23_out_feedback_stall_out_39;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
