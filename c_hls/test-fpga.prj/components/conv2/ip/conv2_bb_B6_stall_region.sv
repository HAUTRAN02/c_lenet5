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

// SystemVerilog created from bb_conv2_B6_stall_region
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:45 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B6_stall_region (
    output wire [31:0] out_c0_exe10670,
    output wire [0:0] out_c0_exe11671,
    output wire [0:0] out_c0_exe12672,
    output wire [0:0] out_c0_exe13673,
    output wire [0:0] out_c0_exe14674,
    output wire [63:0] out_c0_exe15675,
    output wire [31:0] out_c0_exe1661,
    output wire [63:0] out_c0_exe16676,
    output wire [31:0] out_c0_exe17677,
    output wire [63:0] out_c0_exe18678,
    output wire [0:0] out_c0_exe19679,
    output wire [0:0] out_c0_exe20680,
    output wire [0:0] out_c0_exe21681,
    output wire [0:0] out_c0_exe22682,
    output wire [0:0] out_c0_exe23683,
    output wire [0:0] out_c0_exe24684,
    output wire [31:0] out_c0_exe2662,
    output wire [31:0] out_c0_exe3663,
    output wire [31:0] out_c0_exe4664,
    output wire [31:0] out_c0_exe5665,
    output wire [0:0] out_c0_exe6666,
    output wire [0:0] out_c0_exe7667,
    output wire [0:0] out_c0_exe8668,
    output wire [0:0] out_c0_exe9669,
    output wire [0:0] out_memdep_phi2_pop57,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out,
    input wire [0:0] in_feedback_in_57,
    output wire [0:0] out_feedback_stall_out_57,
    input wire [0:0] in_feedback_valid_in_57,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_arrayidx34108_pop49346,
    input wire [63:0] in_arrayidx34251,
    input wire [63:0] in_arrayidx64114_pop51352,
    input wire [63:0] in_arrayidx64261,
    input wire [31:0] in_channel_039_pop17164,
    input wire [31:0] in_channel_039_pop1777_pop24223,
    input wire [31:0] in_channel_039_pop1778_pop31241,
    input wire [31:0] in_channel_039_pop1779_pop42325,
    input wire [31:0] in_col_037_pop27111_pop50349,
    input wire [31:0] in_col_037_pop27256,
    input wire [0:0] in_exitcond22307,
    input wire [0:0] in_exitcond25117_pop52355,
    input wire [0:0] in_exitcond25266,
    input wire [0:0] in_exitcond28181,
    input wire [0:0] in_exitcond2888_pop33296,
    input wire [0:0] in_exitcond2889_pop44331,
    input wire [0:0] in_exitcond31146,
    input wire [0:0] in_exitcond3167_pop22209,
    input wire [0:0] in_exitcond3168_pop29281,
    input wire [0:0] in_exitcond3169_pop40319,
    input wire [0:0] in_forked126,
    input wire [63:0] in_idxprom25105_pop48343,
    input wire [63:0] in_idxprom25246,
    input wire [31:0] in_k_036_pop38313,
    input wire [0:0] in_memdep_phi3_pop39316,
    input wire [0:0] in_memdep_phi4_pop28123_pop54361,
    input wire [0:0] in_memdep_phi4_pop28276,
    input wire [0:0] in_memdep_phi5_pop21100_pop36306,
    input wire [0:0] in_memdep_phi5_pop21101_pop47340,
    input wire [0:0] in_memdep_phi5_pop21202,
    input wire [0:0] in_memdep_phi6_pop18173,
    input wire [0:0] in_memdep_phi6_pop1882_pop25230,
    input wire [0:0] in_memdep_phi6_pop1883_pop32291,
    input wire [0:0] in_memdep_phi6_pop1884_pop43328,
    input wire [0:0] in_notcmp41310,
    input wire [0:0] in_notcmp46120_pop53358,
    input wire [0:0] in_notcmp46271,
    input wire [0:0] in_notcmp51188,
    input wire [0:0] in_notcmp5192_pop34301,
    input wire [0:0] in_notcmp5193_pop45334,
    input wire [0:0] in_notcmp56155,
    input wire [0:0] in_notcmp5672_pop23216,
    input wire [0:0] in_notcmp5673_pop30286,
    input wire [0:0] in_notcmp5674_pop41322,
    input wire [31:0] in_row_038_pop20195,
    input wire [31:0] in_row_038_pop2096_pop35236,
    input wire [31:0] in_row_038_pop2097_pop46337,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv2_B6_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv2_B6_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] conv2_B6_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] conv2_B6_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] conv2_B6_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [63:0] conv2_B6_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [63:0] conv2_B6_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [31:0] conv2_B6_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [63:0] conv2_B6_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_24_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_25_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_26_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_27_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_28_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_29_tpl;
    wire [31:0] conv2_B6_merge_reg_aunroll_x_out_data_out_30_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_31_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_32_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_33_tpl;
    wire [31:0] conv2_B6_merge_reg_aunroll_x_out_data_out_34_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_35_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_36_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_37_tpl;
    wire [31:0] conv2_B6_merge_reg_aunroll_x_out_data_out_38_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_39_tpl;
    wire [63:0] conv2_B6_merge_reg_aunroll_x_out_data_out_40_tpl;
    wire [63:0] conv2_B6_merge_reg_aunroll_x_out_data_out_41_tpl;
    wire [31:0] conv2_B6_merge_reg_aunroll_x_out_data_out_42_tpl;
    wire [63:0] conv2_B6_merge_reg_aunroll_x_out_data_out_43_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_44_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_45_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_data_out_46_tpl;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv2_B6_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_14_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_15_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_17_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_20_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_21_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_22_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_23_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_24_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_25_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_out_feedback_stall_out_57;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_out_valid_out;
    wire [429:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [63:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [31:0] sel_for_coalesced_delay_0_k;
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
    reg [429:0] coalesced_delay_0_0_q;
    wire [734:0] bubble_join_conv2_B6_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv2_B6_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv2_B6_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_conv2_B6_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_conv2_B6_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_conv2_B6_merge_reg_aunroll_x_p;
    wire [63:0] bubble_select_conv2_B6_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_conv2_B6_merge_reg_aunroll_x_r;
    wire [31:0] bubble_select_conv2_B6_merge_reg_aunroll_x_s;
    wire [63:0] bubble_select_conv2_B6_merge_reg_aunroll_x_t;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_u;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_v;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_w;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_x;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_y;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_z;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_aa;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_bb;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_cc;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_dd;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_ee;
    wire [31:0] bubble_select_conv2_B6_merge_reg_aunroll_x_ff;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_gg;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_hh;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_ii;
    wire [31:0] bubble_select_conv2_B6_merge_reg_aunroll_x_jj;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_kk;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_ll;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_mm;
    wire [31:0] bubble_select_conv2_B6_merge_reg_aunroll_x_nn;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_oo;
    wire [63:0] bubble_select_conv2_B6_merge_reg_aunroll_x_pp;
    wire [63:0] bubble_select_conv2_B6_merge_reg_aunroll_x_qq;
    wire [31:0] bubble_select_conv2_B6_merge_reg_aunroll_x_rr;
    wire [63:0] bubble_select_conv2_B6_merge_reg_aunroll_x_ss;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_tt;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_uu;
    wire [0:0] bubble_select_conv2_B6_merge_reg_aunroll_x_vv;
    wire [430:0] bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_o;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_p;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_r;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_t;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_u;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_v;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_w;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_x;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_y;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_z;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_b;
    wire [734:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [0:0] bubble_select_stall_entry_t;
    wire [0:0] bubble_select_stall_entry_u;
    wire [0:0] bubble_select_stall_entry_v;
    wire [63:0] bubble_select_stall_entry_w;
    wire [63:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [0:0] bubble_select_stall_entry_z;
    wire [0:0] bubble_select_stall_entry_aa;
    wire [0:0] bubble_select_stall_entry_bb;
    wire [0:0] bubble_select_stall_entry_cc;
    wire [0:0] bubble_select_stall_entry_dd;
    wire [0:0] bubble_select_stall_entry_ee;
    wire [0:0] bubble_select_stall_entry_ff;
    wire [0:0] bubble_select_stall_entry_gg;
    wire [0:0] bubble_select_stall_entry_hh;
    wire [0:0] bubble_select_stall_entry_ii;
    wire [0:0] bubble_select_stall_entry_jj;
    wire [0:0] bubble_select_stall_entry_kk;
    wire [0:0] bubble_select_stall_entry_ll;
    wire [0:0] bubble_select_stall_entry_mm;
    wire [0:0] bubble_select_stall_entry_nn;
    wire [0:0] bubble_select_stall_entry_oo;
    wire [0:0] bubble_select_stall_entry_pp;
    wire [0:0] bubble_select_stall_entry_qq;
    wire [0:0] bubble_select_stall_entry_rr;
    wire [0:0] bubble_select_stall_entry_ss;
    wire [31:0] bubble_select_stall_entry_tt;
    wire [31:0] bubble_select_stall_entry_uu;
    wire [31:0] bubble_select_stall_entry_vv;
    wire [0:0] SE_out_conv2_B6_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv2_B6_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv2_B6_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_stall_entry(STALLENABLE,75)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2_B6_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,66)
    assign bubble_join_stall_entry_q = {in_row_038_pop2097_pop46337, in_row_038_pop2096_pop35236, in_row_038_pop20195, in_notcmp5674_pop41322, in_notcmp5673_pop30286, in_notcmp5672_pop23216, in_notcmp56155, in_notcmp5193_pop45334, in_notcmp5192_pop34301, in_notcmp51188, in_notcmp46271, in_notcmp46120_pop53358, in_notcmp41310, in_memdep_phi6_pop1884_pop43328, in_memdep_phi6_pop1883_pop32291, in_memdep_phi6_pop1882_pop25230, in_memdep_phi6_pop18173, in_memdep_phi5_pop21202, in_memdep_phi5_pop21101_pop47340, in_memdep_phi5_pop21100_pop36306, in_memdep_phi4_pop28276, in_memdep_phi4_pop28123_pop54361, in_memdep_phi3_pop39316, in_k_036_pop38313, in_idxprom25246, in_idxprom25105_pop48343, in_forked126, in_exitcond3169_pop40319, in_exitcond3168_pop29281, in_exitcond3167_pop22209, in_exitcond31146, in_exitcond2889_pop44331, in_exitcond2888_pop33296, in_exitcond28181, in_exitcond25266, in_exitcond25117_pop52355, in_exitcond22307, in_col_037_pop27256, in_col_037_pop27111_pop50349, in_channel_039_pop1779_pop42325, in_channel_039_pop1778_pop31241, in_channel_039_pop1777_pop24223, in_channel_039_pop17164, in_arrayidx64261, in_arrayidx64114_pop51352, in_arrayidx34251, in_arrayidx34108_pop49346};

    // bubble_select_stall_entry(BITSELECT,67)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[191:128]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[255:192]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[287:256]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[319:288]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[351:320]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[383:352]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[415:384]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[447:416]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[448:448]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[449:449]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[450:450]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[451:451]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[452:452]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[453:453]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[454:454]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[455:455]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[456:456]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[457:457]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[458:458]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[522:459]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[586:523]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[618:587]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[619:619]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[620:620]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[621:621]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[622:622]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[623:623]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[624:624]);
    assign bubble_select_stall_entry_ff = $unsigned(bubble_join_stall_entry_q[625:625]);
    assign bubble_select_stall_entry_gg = $unsigned(bubble_join_stall_entry_q[626:626]);
    assign bubble_select_stall_entry_hh = $unsigned(bubble_join_stall_entry_q[627:627]);
    assign bubble_select_stall_entry_ii = $unsigned(bubble_join_stall_entry_q[628:628]);
    assign bubble_select_stall_entry_jj = $unsigned(bubble_join_stall_entry_q[629:629]);
    assign bubble_select_stall_entry_kk = $unsigned(bubble_join_stall_entry_q[630:630]);
    assign bubble_select_stall_entry_ll = $unsigned(bubble_join_stall_entry_q[631:631]);
    assign bubble_select_stall_entry_mm = $unsigned(bubble_join_stall_entry_q[632:632]);
    assign bubble_select_stall_entry_nn = $unsigned(bubble_join_stall_entry_q[633:633]);
    assign bubble_select_stall_entry_oo = $unsigned(bubble_join_stall_entry_q[634:634]);
    assign bubble_select_stall_entry_pp = $unsigned(bubble_join_stall_entry_q[635:635]);
    assign bubble_select_stall_entry_qq = $unsigned(bubble_join_stall_entry_q[636:636]);
    assign bubble_select_stall_entry_rr = $unsigned(bubble_join_stall_entry_q[637:637]);
    assign bubble_select_stall_entry_ss = $unsigned(bubble_join_stall_entry_q[638:638]);
    assign bubble_select_stall_entry_tt = $unsigned(bubble_join_stall_entry_q[670:639]);
    assign bubble_select_stall_entry_uu = $unsigned(bubble_join_stall_entry_q[702:671]);
    assign bubble_select_stall_entry_vv = $unsigned(bubble_join_stall_entry_q[734:703]);

    // conv2_B6_merge_reg_aunroll_x(BLACKBOX,2)@0
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
    // out out_data_out_28_tpl@1
    // out out_data_out_29_tpl@1
    // out out_data_out_30_tpl@1
    // out out_data_out_31_tpl@1
    // out out_data_out_32_tpl@1
    // out out_data_out_33_tpl@1
    // out out_data_out_34_tpl@1
    // out out_data_out_35_tpl@1
    // out out_data_out_36_tpl@1
    // out out_data_out_37_tpl@1
    // out out_data_out_38_tpl@1
    // out out_data_out_39_tpl@1
    // out out_data_out_40_tpl@1
    // out out_data_out_41_tpl@1
    // out out_data_out_42_tpl@1
    // out out_data_out_43_tpl@1
    // out out_data_out_44_tpl@1
    // out out_data_out_45_tpl@1
    // out out_data_out_46_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    conv2_B6_merge_reg theconv2_B6_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_v),
        .in_data_in_1_tpl(bubble_select_stall_entry_r),
        .in_data_in_2_tpl(bubble_select_stall_entry_pp),
        .in_data_in_3_tpl(bubble_select_stall_entry_f),
        .in_data_in_4_tpl(bubble_select_stall_entry_ff),
        .in_data_in_5_tpl(bubble_select_stall_entry_o),
        .in_data_in_6_tpl(bubble_select_stall_entry_mm),
        .in_data_in_7_tpl(bubble_select_stall_entry_tt),
        .in_data_in_8_tpl(bubble_select_stall_entry_ee),
        .in_data_in_9_tpl(bubble_select_stall_entry_s),
        .in_data_in_10_tpl(bubble_select_stall_entry_qq),
        .in_data_in_11_tpl(bubble_select_stall_entry_g),
        .in_data_in_12_tpl(bubble_select_stall_entry_gg),
        .in_data_in_13_tpl(bubble_select_stall_entry_uu),
        .in_data_in_14_tpl(bubble_select_stall_entry_h),
        .in_data_in_15_tpl(bubble_select_stall_entry_x),
        .in_data_in_16_tpl(bubble_select_stall_entry_c),
        .in_data_in_17_tpl(bubble_select_stall_entry_k),
        .in_data_in_18_tpl(bubble_select_stall_entry_e),
        .in_data_in_19_tpl(bubble_select_stall_entry_n),
        .in_data_in_20_tpl(bubble_select_stall_entry_ll),
        .in_data_in_21_tpl(bubble_select_stall_entry_bb),
        .in_data_in_22_tpl(bubble_select_stall_entry_t),
        .in_data_in_23_tpl(bubble_select_stall_entry_rr),
        .in_data_in_24_tpl(bubble_select_stall_entry_hh),
        .in_data_in_25_tpl(bubble_select_stall_entry_p),
        .in_data_in_26_tpl(bubble_select_stall_entry_nn),
        .in_data_in_27_tpl(bubble_select_stall_entry_cc),
        .in_data_in_28_tpl(bubble_select_stall_entry_l),
        .in_data_in_29_tpl(bubble_select_stall_entry_jj),
        .in_data_in_30_tpl(bubble_select_stall_entry_y),
        .in_data_in_31_tpl(bubble_select_stall_entry_z),
        .in_data_in_32_tpl(bubble_select_stall_entry_u),
        .in_data_in_33_tpl(bubble_select_stall_entry_ss),
        .in_data_in_34_tpl(bubble_select_stall_entry_i),
        .in_data_in_35_tpl(bubble_select_stall_entry_ii),
        .in_data_in_36_tpl(bubble_select_stall_entry_q),
        .in_data_in_37_tpl(bubble_select_stall_entry_oo),
        .in_data_in_38_tpl(bubble_select_stall_entry_vv),
        .in_data_in_39_tpl(bubble_select_stall_entry_dd),
        .in_data_in_40_tpl(bubble_select_stall_entry_w),
        .in_data_in_41_tpl(bubble_select_stall_entry_b),
        .in_data_in_42_tpl(bubble_select_stall_entry_j),
        .in_data_in_43_tpl(bubble_select_stall_entry_d),
        .in_data_in_44_tpl(bubble_select_stall_entry_m),
        .in_data_in_45_tpl(bubble_select_stall_entry_kk),
        .in_data_in_46_tpl(bubble_select_stall_entry_aa),
        .in_stall_in(SE_out_conv2_B6_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_36_tpl),
        .out_data_out_37_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_37_tpl),
        .out_data_out_38_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_38_tpl),
        .out_data_out_39_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_39_tpl),
        .out_data_out_40_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_40_tpl),
        .out_data_out_41_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_41_tpl),
        .out_data_out_42_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_42_tpl),
        .out_data_out_43_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_43_tpl),
        .out_data_out_44_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_44_tpl),
        .out_data_out_45_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_45_tpl),
        .out_data_out_46_tpl(conv2_B6_merge_reg_aunroll_x_out_data_out_46_tpl),
        .out_stall_out(conv2_B6_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv2_B6_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv2_B6_merge_reg_aunroll_x(STALLENABLE,70)
    // Valid signal propagation
    assign SE_out_conv2_B6_merge_reg_aunroll_x_V0 = SE_out_conv2_B6_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv2_B6_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_o_stall | ~ (SE_out_conv2_B6_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv2_B6_merge_reg_aunroll_x_wireValid = conv2_B6_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_conv2_B6_merge_reg_aunroll_x(BITJOIN,55)
    assign bubble_join_conv2_B6_merge_reg_aunroll_x_q = {conv2_B6_merge_reg_aunroll_x_out_data_out_46_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_45_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_44_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_43_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_42_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_41_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_40_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_39_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_38_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_37_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_36_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_35_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_34_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_33_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_32_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_31_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_30_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_29_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_28_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_27_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_26_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_25_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_24_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_23_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_22_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_21_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_20_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_19_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_18_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_17_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_16_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_15_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_14_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_13_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_12_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_11_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_10_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_9_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_8_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_7_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_6_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_5_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_4_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_3_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_2_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_1_tpl, conv2_B6_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv2_B6_merge_reg_aunroll_x(BITSELECT,56)
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[36:36]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[37:37]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[69:38]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[70:70]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[71:71]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[72:72]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[104:73]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[105:105]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[137:106]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_p = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[169:138]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_q = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[233:170]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_r = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[297:234]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_s = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[329:298]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_t = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[393:330]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_u = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[394:394]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_v = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[395:395]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_w = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[396:396]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_x = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[397:397]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_y = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[398:398]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_z = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[399:399]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_aa = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[400:400]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_bb = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[401:401]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_cc = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[402:402]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_dd = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[403:403]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_ee = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[404:404]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_ff = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[436:405]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_gg = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[437:437]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_hh = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[438:438]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_ii = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[439:439]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_jj = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[471:440]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_kk = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[472:472]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_ll = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[473:473]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_mm = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[474:474]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_nn = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[506:475]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_oo = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[507:507]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_pp = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[571:508]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_qq = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[635:572]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_rr = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[667:636]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_ss = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[731:668]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_tt = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[732:732]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_uu = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[733:733]);
    assign bubble_select_conv2_B6_merge_reg_aunroll_x_vv = $unsigned(bubble_join_conv2_B6_merge_reg_aunroll_x_q[734:734]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x(BLACKBOX,4)@1
    // in in_i_stall@20000000
    // out out_c0_exit660_0_tpl@6
    // out out_c0_exit660_1_tpl@6
    // out out_c0_exit660_2_tpl@6
    // out out_c0_exit660_3_tpl@6
    // out out_c0_exit660_4_tpl@6
    // out out_c0_exit660_5_tpl@6
    // out out_c0_exit660_6_tpl@6
    // out out_c0_exit660_7_tpl@6
    // out out_c0_exit660_8_tpl@6
    // out out_c0_exit660_9_tpl@6
    // out out_c0_exit660_10_tpl@6
    // out out_c0_exit660_11_tpl@6
    // out out_c0_exit660_12_tpl@6
    // out out_c0_exit660_13_tpl@6
    // out out_c0_exit660_14_tpl@6
    // out out_c0_exit660_15_tpl@6
    // out out_c0_exit660_16_tpl@6
    // out out_c0_exit660_17_tpl@6
    // out out_c0_exit660_18_tpl@6
    // out out_c0_exit660_19_tpl@6
    // out out_c0_exit660_20_tpl@6
    // out out_c0_exit660_21_tpl@6
    // out out_c0_exit660_22_tpl@6
    // out out_c0_exit660_23_tpl@6
    // out out_c0_exit660_24_tpl@6
    // out out_c0_exit660_25_tpl@6
    // out out_c0_exit660_26_tpl@6
    // out out_c0_exit660_27_tpl@6
    // out out_c0_exit660_28_tpl@6
    // out out_c0_exit660_29_tpl@6
    // out out_c0_exit660_30_tpl@6
    // out out_c0_exit660_31_tpl@6
    // out out_c0_exit660_32_tpl@6
    // out out_c0_exit660_33_tpl@6
    // out out_c0_exit660_34_tpl@6
    // out out_c0_exit660_35_tpl@6
    // out out_c0_exit660_36_tpl@6
    // out out_c0_exit660_37_tpl@6
    // out out_c0_exit660_38_tpl@6
    // out out_c0_exit660_39_tpl@6
    // out out_c0_exit660_40_tpl@6
    // out out_c0_exit660_41_tpl@6
    // out out_c0_exit660_42_tpl@6
    // out out_c0_exit660_43_tpl@6
    // out out_c0_exit660_44_tpl@6
    // out out_c0_exit660_45_tpl@6
    // out out_c0_exit660_46_tpl@6
    // out out_c0_exit660_47_tpl@6
    // out out_c0_exit660_48_tpl@6
    // out out_c0_exit660_49_tpl@6
    // out out_c0_exit660_50_tpl@6
    // out out_c0_exit660_51_tpl@6
    // out out_c0_exit660_52_tpl@6
    // out out_c0_exit660_53_tpl@6
    // out out_c0_exit660_54_tpl@6
    // out out_c0_exit660_55_tpl@6
    // out out_c0_exit660_56_tpl@6
    // out out_c0_exit660_57_tpl@6
    // out out_c0_exit660_58_tpl@6
    // out out_c0_exit660_59_tpl@6
    // out out_c0_exit660_60_tpl@6
    // out out_c0_exit660_61_tpl@6
    // out out_c0_exit660_62_tpl@6
    // out out_c0_exit660_63_tpl@6
    // out out_c0_exit660_64_tpl@6
    // out out_c0_exit660_65_tpl@6
    // out out_c0_exit660_66_tpl@6
    // out out_c0_exit660_67_tpl@6
    // out out_c0_exit660_68_tpl@6
    // out out_c0_exit660_69_tpl@6
    // out out_c0_exit660_70_tpl@6
    // out out_c0_exit660_71_tpl@6
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    conv2_i_sfc_s_c0_in_for_cond13_preheader_s_c0_enter58541_conv21 thei_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x (
        .in_c0_eni47_0_tpl(GND_q),
        .in_c0_eni47_1_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_b),
        .in_c0_eni47_2_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_ff),
        .in_c0_eni47_3_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_nn),
        .in_c0_eni47_4_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_hh),
        .in_c0_eni47_5_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_ii),
        .in_c0_eni47_6_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_jj),
        .in_c0_eni47_7_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_kk),
        .in_c0_eni47_8_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_ll),
        .in_c0_eni47_9_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_mm),
        .in_c0_eni47_10_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_oo),
        .in_c0_eni47_11_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_pp),
        .in_c0_eni47_12_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_qq),
        .in_c0_eni47_13_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_rr),
        .in_c0_eni47_14_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_ss),
        .in_c0_eni47_15_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_tt),
        .in_c0_eni47_16_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_uu),
        .in_c0_eni47_17_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_vv),
        .in_c0_eni47_18_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_dd),
        .in_c0_eni47_19_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_ee),
        .in_c0_eni47_20_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_gg),
        .in_c0_eni47_21_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_c),
        .in_c0_eni47_22_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_d),
        .in_c0_eni47_23_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_e),
        .in_c0_eni47_24_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_f),
        .in_c0_eni47_25_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_g),
        .in_c0_eni47_26_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_h),
        .in_c0_eni47_27_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_i),
        .in_c0_eni47_28_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_j),
        .in_c0_eni47_29_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_k),
        .in_c0_eni47_30_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_l),
        .in_c0_eni47_31_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_m),
        .in_c0_eni47_32_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_n),
        .in_c0_eni47_33_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_o),
        .in_c0_eni47_34_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_p),
        .in_c0_eni47_35_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_q),
        .in_c0_eni47_36_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_r),
        .in_c0_eni47_37_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_s),
        .in_c0_eni47_38_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_t),
        .in_c0_eni47_39_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_u),
        .in_c0_eni47_40_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_v),
        .in_c0_eni47_41_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_w),
        .in_c0_eni47_42_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_x),
        .in_c0_eni47_43_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_y),
        .in_c0_eni47_44_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_z),
        .in_c0_eni47_45_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_aa),
        .in_c0_eni47_46_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_bb),
        .in_c0_eni47_47_tpl(bubble_select_conv2_B6_merge_reg_aunroll_x_cc),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_backStall),
        .in_i_valid(SE_out_conv2_B6_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit660_0_tpl(),
        .out_c0_exit660_1_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_1_tpl),
        .out_c0_exit660_2_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_2_tpl),
        .out_c0_exit660_3_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_3_tpl),
        .out_c0_exit660_4_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_4_tpl),
        .out_c0_exit660_5_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_5_tpl),
        .out_c0_exit660_6_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_6_tpl),
        .out_c0_exit660_7_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_7_tpl),
        .out_c0_exit660_8_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_8_tpl),
        .out_c0_exit660_9_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_9_tpl),
        .out_c0_exit660_10_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_10_tpl),
        .out_c0_exit660_11_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_11_tpl),
        .out_c0_exit660_12_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_12_tpl),
        .out_c0_exit660_13_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_13_tpl),
        .out_c0_exit660_14_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_14_tpl),
        .out_c0_exit660_15_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_15_tpl),
        .out_c0_exit660_16_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_16_tpl),
        .out_c0_exit660_17_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_17_tpl),
        .out_c0_exit660_18_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_18_tpl),
        .out_c0_exit660_19_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_19_tpl),
        .out_c0_exit660_20_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_20_tpl),
        .out_c0_exit660_21_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_21_tpl),
        .out_c0_exit660_22_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_22_tpl),
        .out_c0_exit660_23_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_23_tpl),
        .out_c0_exit660_24_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_24_tpl),
        .out_c0_exit660_25_tpl(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_25_tpl),
        .out_c0_exit660_26_tpl(),
        .out_c0_exit660_27_tpl(),
        .out_c0_exit660_28_tpl(),
        .out_c0_exit660_29_tpl(),
        .out_c0_exit660_30_tpl(),
        .out_c0_exit660_31_tpl(),
        .out_c0_exit660_32_tpl(),
        .out_c0_exit660_33_tpl(),
        .out_c0_exit660_34_tpl(),
        .out_c0_exit660_35_tpl(),
        .out_c0_exit660_36_tpl(),
        .out_c0_exit660_37_tpl(),
        .out_c0_exit660_38_tpl(),
        .out_c0_exit660_39_tpl(),
        .out_c0_exit660_40_tpl(),
        .out_c0_exit660_41_tpl(),
        .out_c0_exit660_42_tpl(),
        .out_c0_exit660_43_tpl(),
        .out_c0_exit660_44_tpl(),
        .out_c0_exit660_45_tpl(),
        .out_c0_exit660_46_tpl(),
        .out_c0_exit660_47_tpl(),
        .out_c0_exit660_48_tpl(),
        .out_c0_exit660_49_tpl(),
        .out_c0_exit660_50_tpl(),
        .out_c0_exit660_51_tpl(),
        .out_c0_exit660_52_tpl(),
        .out_c0_exit660_53_tpl(),
        .out_c0_exit660_54_tpl(),
        .out_c0_exit660_55_tpl(),
        .out_c0_exit660_56_tpl(),
        .out_c0_exit660_57_tpl(),
        .out_c0_exit660_58_tpl(),
        .out_c0_exit660_59_tpl(),
        .out_c0_exit660_60_tpl(),
        .out_c0_exit660_61_tpl(),
        .out_c0_exit660_62_tpl(),
        .out_c0_exit660_63_tpl(),
        .out_c0_exit660_64_tpl(),
        .out_c0_exit660_65_tpl(),
        .out_c0_exit660_66_tpl(),
        .out_c0_exit660_67_tpl(),
        .out_c0_exit660_68_tpl(),
        .out_c0_exit660_69_tpl(),
        .out_c0_exit660_70_tpl(),
        .out_c0_exit660_71_tpl(),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x(STALLENABLE,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_o_valid;

    // SE_coalesced_delay_0_0(STALLENABLE,79)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_V1;
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

    // bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x(BITJOIN,59)
    assign bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q = {i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_25_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_24_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_23_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_22_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_21_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_20_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_19_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_18_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_17_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_16_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_15_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_14_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_13_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_12_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_11_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_10_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_9_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_8_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_7_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_6_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_5_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_4_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_3_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_2_tpl, i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_c0_exit660_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x(BITSELECT,60)
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[127:96]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[159:128]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[160:160]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[161:161]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[162:162]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[195:164]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[196:196]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[197:197]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[198:198]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[199:199]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[263:200]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[327:264]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[359:328]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[423:360]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[424:424]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[425:425]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[426:426]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[427:427]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[428:428]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[429:429]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q[430:430]);

    // i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23(BLACKBOX,12)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_stall_out_57@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    conv2_i_llvm_fpga_pop_i1_memdep_phi2_pop57_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_z),
        .in_feedback_in_57(in_feedback_in_57),
        .in_feedback_valid_in_57(in_feedback_valid_in_57),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_out_feedback_stall_out_57),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23(STALLENABLE,74)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_and0 = i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_and0;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23(BITJOIN,62)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_q = i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23(BITSELECT,63)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,51)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_y, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_x, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_w, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_v, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_u, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_t, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_p};

    // coalesced_delay_0_0(REG,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(430'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,52)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[191:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[223:192]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[255:224]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[287:256]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[319:288]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[351:320]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[383:352]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[415:384]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[416:416]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_0_q[417:417]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_0_q[418:418]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_0_q[419:419]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_0_q[420:420]);
    assign sel_for_coalesced_delay_0_q = $unsigned(coalesced_delay_0_0_q[421:421]);
    assign sel_for_coalesced_delay_0_r = $unsigned(coalesced_delay_0_0_q[422:422]);
    assign sel_for_coalesced_delay_0_s = $unsigned(coalesced_delay_0_0_q[423:423]);
    assign sel_for_coalesced_delay_0_t = $unsigned(coalesced_delay_0_0_q[424:424]);
    assign sel_for_coalesced_delay_0_u = $unsigned(coalesced_delay_0_0_q[425:425]);
    assign sel_for_coalesced_delay_0_v = $unsigned(coalesced_delay_0_0_q[426:426]);
    assign sel_for_coalesced_delay_0_w = $unsigned(coalesced_delay_0_0_q[427:427]);
    assign sel_for_coalesced_delay_0_x = $unsigned(coalesced_delay_0_0_q[428:428]);
    assign sel_for_coalesced_delay_0_y = $unsigned(coalesced_delay_0_0_q[429:429]);

    // dupName_0_sync_out_x(GPOUT,3)@7
    assign out_c0_exe10670 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe11671 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe12672 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe13673 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe14674 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe15675 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe1661 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe16676 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe17677 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe18678 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe19679 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe20680 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe21681 = sel_for_coalesced_delay_0_v;
    assign out_c0_exe22682 = sel_for_coalesced_delay_0_w;
    assign out_c0_exe23683 = sel_for_coalesced_delay_0_x;
    assign out_c0_exe24684 = sel_for_coalesced_delay_0_y;
    assign out_c0_exe2662 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe3663 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe4664 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe5665 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe6666 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe7667 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe8668 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe9669 = sel_for_coalesced_delay_0_o;
    assign out_memdep_phi2_pop57 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_V0;

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out = i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out = i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out;

    // feedback_stall_out_57_sync(GPOUT,10)
    assign out_feedback_stall_out_57 = i_llvm_fpga_pop_i1_memdep_phi2_pop57_conv23_out_feedback_stall_out_57;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv21_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
