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

// SystemVerilog created from bb_conv1_B4_stall_region
// Created for function/kernel conv1
// SystemVerilog created on Sat Apr  1 13:10:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv1_bb_B4_stall_region (
    input wire [63:0] in_unnamed_conv18_conv1_avm_readdata,
    input wire [0:0] in_unnamed_conv18_conv1_avm_writeack,
    input wire [0:0] in_unnamed_conv18_conv1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv18_conv1_avm_readdatavalid,
    output wire [63:0] out_unnamed_conv17_conv1_avm_address,
    output wire [0:0] out_unnamed_conv17_conv1_avm_enable,
    output wire [0:0] out_unnamed_conv17_conv1_avm_read,
    output wire [0:0] out_unnamed_conv17_conv1_avm_write,
    output wire [63:0] out_unnamed_conv17_conv1_avm_writedata,
    output wire [7:0] out_unnamed_conv17_conv1_avm_byteenable,
    output wire [0:0] out_unnamed_conv17_conv1_avm_burstcount,
    output wire [0:0] out_exitcond1234_pop25,
    output wire [0:0] out_exitcond941_pop29,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp1742_pop30,
    output wire [0:0] out_notcmp2236_pop26,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_conv19_conv1_avm_readdata,
    input wire [0:0] in_unnamed_conv19_conv1_avm_writeack,
    input wire [0:0] in_unnamed_conv19_conv1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv19_conv1_avm_readdatavalid,
    output wire [63:0] out_unnamed_conv18_conv1_avm_address,
    output wire [0:0] out_unnamed_conv18_conv1_avm_enable,
    output wire [0:0] out_unnamed_conv18_conv1_avm_read,
    output wire [0:0] out_unnamed_conv18_conv1_avm_write,
    output wire [63:0] out_unnamed_conv18_conv1_avm_writedata,
    output wire [7:0] out_unnamed_conv18_conv1_avm_byteenable,
    output wire [0:0] out_unnamed_conv18_conv1_avm_burstcount,
    input wire [63:0] in_memdep_conv1_avm_readdata,
    input wire [0:0] in_memdep_conv1_avm_writeack,
    input wire [0:0] in_memdep_conv1_avm_waitrequest,
    input wire [0:0] in_memdep_conv1_avm_readdatavalid,
    output wire [63:0] out_unnamed_conv19_conv1_avm_address,
    output wire [0:0] out_unnamed_conv19_conv1_avm_enable,
    output wire [0:0] out_unnamed_conv19_conv1_avm_read,
    output wire [0:0] out_unnamed_conv19_conv1_avm_write,
    output wire [63:0] out_unnamed_conv19_conv1_avm_writedata,
    output wire [7:0] out_unnamed_conv19_conv1_avm_byteenable,
    output wire [0:0] out_unnamed_conv19_conv1_avm_burstcount,
    output wire [63:0] out_memdep_conv1_avm_address,
    output wire [0:0] out_memdep_conv1_avm_enable,
    output wire [0:0] out_memdep_conv1_avm_read,
    output wire [0:0] out_memdep_conv1_avm_write,
    output wire [63:0] out_memdep_conv1_avm_writedata,
    output wire [7:0] out_memdep_conv1_avm_byteenable,
    output wire [0:0] out_memdep_conv1_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [63:0] in_unnamed_conv17_conv1_avm_readdata,
    input wire [0:0] in_unnamed_conv17_conv1_avm_writeack,
    input wire [0:0] in_unnamed_conv17_conv1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv17_conv1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv15_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv15_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_channel_029_pop1137_pop1863,
    input wire [0:0] in_exitcond1233_pop1661,
    input wire [0:0] in_exitcond957,
    input wire [0:0] in_forked,
    input wire [0:0] in_memdep_phi1_pop1560,
    input wire [0:0] in_memdep_phi2_pop1239_pop1964,
    input wire [0:0] in_notcmp1758,
    input wire [0:0] in_notcmp2235_pop1762,
    input wire [31:0] in_row_028_pop1459,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_conv125_sel_x_b;
    wire [31:0] bgTrunc_i_inc57_conv122_sel_x_b;
    wire [0:0] conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] conv1_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv1_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] conv1_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv1_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] conv1_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] conv1_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] conv1_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv1_B4_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv1_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv1_B4_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] i_arrayidx17_conv10_dupName_2_trunc_sel_x_b;
    wire [1:0] i_arrayidx17_conv10_c_i2_02_x_q;
    wire [63:0] i_arrayidx23_conv10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx25_conv10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx32_conv10_dupName_4_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_conv118_sel_x_b;
    wire [63:0] i_idxprom18_conv134_sel_x_b;
    wire [63:0] i_idxprom_conv129_sel_x_b;
    wire [0:0] i_last_initeration_conv139_sel_x_b;
    wire [31:0] i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_out_c0_exit97_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_out_o_valid;
    wire [1:0] c_i2_162_q;
    wire [31:0] c_i32_064_q;
    wire [31:0] c_i32_166_q;
    wire [5:0] c_i6_168_q;
    wire [5:0] c_i6_2665_q;
    wire [1:0] i_cleanups_shl_conv119_vt_join_q;
    wire [0:0] i_cleanups_shl_conv119_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_conv137_q;
    wire [6:0] i_fpga_indvars_iv_next_conv125_a;
    wire [6:0] i_fpga_indvars_iv_next_conv125_b;
    logic [6:0] i_fpga_indvars_iv_next_conv125_o;
    wire [6:0] i_fpga_indvars_iv_next_conv125_q;
    wire [63:0] i_idxprom18_conv134_vt_join_q;
    wire [31:0] i_idxprom18_conv134_vt_select_31_b;
    wire [63:0] i_idxprom_conv129_vt_join_q;
    wire [31:0] i_idxprom_conv129_vt_select_31_b;
    wire [32:0] i_inc57_conv122_a;
    wire [32:0] i_inc57_conv122_b;
    logic [32:0] i_inc57_conv122_o;
    wire [32:0] i_inc57_conv122_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_conv160_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_conv160_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_conv160_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_conv160_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv17_conv152_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv17_conv152_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv17_conv152_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv18_conv153_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv18_conv153_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv18_conv153_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv19_conv154_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv19_conv154_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv19_conv154_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv15_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv15_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv15_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv15_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv15_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv15_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv15_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv15_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop24_conv14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_conv14_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_conv14_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_conv14_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop23_conv16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_conv16_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_conv16_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_conv16_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_col_027_pop21_conv17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_col_027_pop21_conv17_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i32_col_027_pop21_conv17_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_col_027_pop21_conv17_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_valid_out;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1234_push25_conv131_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1234_push25_conv131_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1234_push25_conv131_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1234_push25_conv131_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond941_push29_conv126_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond941_push29_conv126_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond941_push29_conv126_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond941_push29_conv126_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv149_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv149_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv149_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv149_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_conv161_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_conv161_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_conv161_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_conv161_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1742_push30_conv127_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1742_push30_conv127_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1742_push30_conv127_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1742_push30_conv127_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2236_push26_conv132_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2236_push26_conv132_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2236_push26_conv132_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2236_push26_conv132_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv142_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv142_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv142_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv142_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push24_conv159_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_conv159_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_conv159_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_conv159_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push23_conv138_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_conv138_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_conv138_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_conv138_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_col_027_push21_conv140_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_col_027_push21_conv140_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i32_col_027_push21_conv140_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_col_027_push21_conv140_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_out_valid_out;
    wire [0:0] i_masked_conv151_qi;
    reg [0:0] i_masked_conv151_q;
    wire [0:0] i_next_cleanups_conv155_s;
    reg [1:0] i_next_cleanups_conv155_q;
    wire [1:0] i_next_initerations_conv120_vt_join_q;
    wire [0:0] i_next_initerations_conv120_vt_select_0_b;
    wire [0:0] i_notcmp_conv141_q;
    wire [0:0] i_or_conv150_q;
    wire [0:0] i_reduction_conv1_0_conv136_qi;
    reg [0:0] i_reduction_conv1_0_conv136_q;
    wire [0:0] i_reduction_conv1_1_conv148_q;
    wire [35:0] i_arrayidx17_conv10_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx17_conv10_mult_x_sums_align_0_qint;
    wire [42:0] i_arrayidx17_conv10_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx17_conv10_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx17_conv10_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx17_conv10_mult_x_sums_align_3_qint;
    wire [35:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_align_0_qint;
    wire [42:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_align_3_qint;
    wire [35:0] i_arrayidx32_conv10_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx32_conv10_mult_x_sums_align_0_qint;
    wire [47:0] i_arrayidx32_conv10_mult_x_sums_align_2_q;
    wire [47:0] i_arrayidx32_conv10_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx32_conv10_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx32_conv10_mult_x_sums_align_3_qint;
    wire [0:0] leftShiftStage0Idx1Rng1_uid321_i_cleanups_shl_conv10_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid321_i_cleanups_shl_conv10_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid322_i_cleanups_shl_conv10_shift_x_q;
    wire [0:0] leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_s;
    reg [1:0] leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid328_i_next_initerations_conv10_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid330_i_next_initerations_conv10_shift_x_q;
    wire [0:0] rightShiftStage0_uid332_i_next_initerations_conv10_shift_x_s;
    reg [1:0] rightShiftStage0_uid332_i_next_initerations_conv10_shift_x_q;
    wire [0:0] i_exitcond_conv123_cmp_nsign_q;
    wire [18:0] xIfSign_mergedSignalTM_uid361_i_arrayidx17_conv10_mult_x_im0_q;
    wire [2:0] padACst_uid365_i_arrayidx17_conv10_mult_x_im0_q;
    wire [21:0] aPostPad_uid366_i_arrayidx17_conv10_mult_x_im0_q;
    wire [22:0] sub_uid367_i_arrayidx17_conv10_mult_x_im0_a;
    wire [22:0] sub_uid367_i_arrayidx17_conv10_mult_x_im0_b;
    logic [22:0] sub_uid367_i_arrayidx17_conv10_mult_x_im0_o;
    wire [22:0] sub_uid367_i_arrayidx17_conv10_mult_x_im0_q;
    wire [3:0] sR_bottomExtension_uid370_i_arrayidx17_conv10_mult_x_im0_q;
    wire [18:0] xIfSign_mergedSignalTM_uid424_i_arrayidx17_conv10_mult_x_im3_q;
    wire [21:0] aPostPad_uid429_i_arrayidx17_conv10_mult_x_im3_q;
    wire [22:0] sub_uid430_i_arrayidx17_conv10_mult_x_im3_a;
    wire [22:0] sub_uid430_i_arrayidx17_conv10_mult_x_im3_b;
    logic [22:0] sub_uid430_i_arrayidx17_conv10_mult_x_im3_o;
    wire [22:0] sub_uid430_i_arrayidx17_conv10_mult_x_im3_q;
    wire [20:0] sR_bottomRange_uid434_i_arrayidx17_conv10_mult_x_im3_in;
    wire [20:0] sR_bottomRange_uid434_i_arrayidx17_conv10_mult_x_im3_b;
    wire [24:0] sR_mergedSignalTM_uid435_i_arrayidx17_conv10_mult_x_im3_q;
    wire [18:0] xIfSign_mergedSignalTM_uid487_i_arrayidx17_conv10_mult_x_im6_q;
    wire [21:0] aPostPad_uid492_i_arrayidx17_conv10_mult_x_im6_q;
    wire [22:0] sub_uid493_i_arrayidx17_conv10_mult_x_im6_a;
    wire [22:0] sub_uid493_i_arrayidx17_conv10_mult_x_im6_b;
    logic [22:0] sub_uid493_i_arrayidx17_conv10_mult_x_im6_o;
    wire [22:0] sub_uid493_i_arrayidx17_conv10_mult_x_im6_q;
    wire [20:0] sR_bottomRange_uid497_i_arrayidx17_conv10_mult_x_im6_in;
    wire [20:0] sR_bottomRange_uid497_i_arrayidx17_conv10_mult_x_im6_b;
    wire [24:0] sR_mergedSignalTM_uid498_i_arrayidx17_conv10_mult_x_im6_q;
    wire [10:0] xIfSign_mergedSignalTM_uid550_i_arrayidx17_conv10_mult_x_im9_q;
    wire [13:0] aPostPad_uid555_i_arrayidx17_conv10_mult_x_im9_q;
    wire [14:0] sub_uid556_i_arrayidx17_conv10_mult_x_im9_a;
    wire [14:0] sub_uid556_i_arrayidx17_conv10_mult_x_im9_b;
    logic [14:0] sub_uid556_i_arrayidx17_conv10_mult_x_im9_o;
    wire [14:0] sub_uid556_i_arrayidx17_conv10_mult_x_im9_q;
    wire [12:0] sR_bottomRange_uid560_i_arrayidx17_conv10_mult_x_im9_in;
    wire [12:0] sR_bottomRange_uid560_i_arrayidx17_conv10_mult_x_im9_b;
    wire [16:0] sR_mergedSignalTM_uid561_i_arrayidx17_conv10_mult_x_im9_q;
    wire [0:0] lowRangeB_uid824_i_arrayidx32_conv10_mult_x_im0_in;
    wire [0:0] lowRangeB_uid824_i_arrayidx32_conv10_mult_x_im0_b;
    wire [16:0] highBBits_uid825_i_arrayidx32_conv10_mult_x_im0_b;
    wire [18:0] addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_q;
    wire [19:0] add_uid827_i_arrayidx32_conv10_mult_x_im0_q;
    wire [13:0] highBBits_uid830_i_arrayidx32_conv10_mult_x_im0_b;
    wire [20:0] a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0_a;
    wire [20:0] a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0_b;
    logic [20:0] a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0_o;
    wire [20:0] a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0_q;
    wire [5:0] sR_bottomExtension_uid835_i_arrayidx32_conv10_mult_x_im0_q;
    wire [0:0] lowRangeB_uid893_i_arrayidx32_conv10_mult_x_im3_in;
    wire [0:0] lowRangeB_uid893_i_arrayidx32_conv10_mult_x_im3_b;
    wire [16:0] highBBits_uid894_i_arrayidx32_conv10_mult_x_im3_b;
    wire [18:0] addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_q;
    wire [19:0] add_uid896_i_arrayidx32_conv10_mult_x_im3_q;
    wire [3:0] lowRangeB_uid898_i_arrayidx32_conv10_mult_x_im3_in;
    wire [3:0] lowRangeB_uid898_i_arrayidx32_conv10_mult_x_im3_b;
    wire [13:0] highBBits_uid899_i_arrayidx32_conv10_mult_x_im3_b;
    wire [20:0] a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3_a;
    wire [20:0] a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3_b;
    logic [20:0] a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3_o;
    wire [20:0] a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3_q;
    wire [24:0] a_subconst_49_uid901_i_arrayidx32_conv10_mult_x_im3_q;
    wire [23:0] sR_bottomRange_uid905_i_arrayidx32_conv10_mult_x_im3_in;
    wire [23:0] sR_bottomRange_uid905_i_arrayidx32_conv10_mult_x_im3_b;
    wire [29:0] sR_mergedSignalTM_uid906_i_arrayidx32_conv10_mult_x_im3_q;
    wire [0:0] lowRangeB_uid962_i_arrayidx32_conv10_mult_x_im6_in;
    wire [0:0] lowRangeB_uid962_i_arrayidx32_conv10_mult_x_im6_b;
    wire [16:0] highBBits_uid963_i_arrayidx32_conv10_mult_x_im6_b;
    wire [18:0] addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_q;
    wire [19:0] add_uid965_i_arrayidx32_conv10_mult_x_im6_q;
    wire [3:0] lowRangeB_uid967_i_arrayidx32_conv10_mult_x_im6_in;
    wire [3:0] lowRangeB_uid967_i_arrayidx32_conv10_mult_x_im6_b;
    wire [13:0] highBBits_uid968_i_arrayidx32_conv10_mult_x_im6_b;
    wire [20:0] a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6_a;
    wire [20:0] a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6_b;
    logic [20:0] a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6_o;
    wire [20:0] a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6_q;
    wire [24:0] a_subconst_49_uid970_i_arrayidx32_conv10_mult_x_im6_q;
    wire [23:0] sR_bottomRange_uid974_i_arrayidx32_conv10_mult_x_im6_in;
    wire [23:0] sR_bottomRange_uid974_i_arrayidx32_conv10_mult_x_im6_b;
    wire [29:0] sR_mergedSignalTM_uid975_i_arrayidx32_conv10_mult_x_im6_q;
    wire [0:0] lowRangeB_uid1031_i_arrayidx32_conv10_mult_x_im9_in;
    wire [0:0] lowRangeB_uid1031_i_arrayidx32_conv10_mult_x_im9_b;
    wire [8:0] highBBits_uid1032_i_arrayidx32_conv10_mult_x_im9_b;
    wire [10:0] addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_q;
    wire [11:0] add_uid1034_i_arrayidx32_conv10_mult_x_im9_q;
    wire [3:0] lowRangeB_uid1036_i_arrayidx32_conv10_mult_x_im9_in;
    wire [3:0] lowRangeB_uid1036_i_arrayidx32_conv10_mult_x_im9_b;
    wire [5:0] highBBits_uid1037_i_arrayidx32_conv10_mult_x_im9_b;
    wire [12:0] a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9_a;
    wire [12:0] a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9_b;
    logic [12:0] a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9_o;
    wire [12:0] a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9_q;
    wire [16:0] a_subconst_49_uid1039_i_arrayidx32_conv10_mult_x_im9_q;
    wire [15:0] sR_bottomRange_uid1043_i_arrayidx32_conv10_mult_x_im9_in;
    wire [15:0] sR_bottomRange_uid1043_i_arrayidx32_conv10_mult_x_im9_b;
    wire [21:0] sR_mergedSignalTM_uid1044_i_arrayidx32_conv10_mult_x_im9_q;
    wire [52:0] i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx17_conv10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx17_conv10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx17_conv10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx17_conv10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx17_conv10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx17_conv10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx17_conv10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx17_conv10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx17_conv10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx17_conv10_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx23_conv10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx23_conv10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx23_conv10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx23_conv10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx23_conv10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx23_conv10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx23_conv10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx23_conv10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx23_conv10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx23_conv10_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx23_conv10_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx25_conv10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx25_conv10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx25_conv10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx25_conv10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx25_conv10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx25_conv10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx25_conv10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx25_conv10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx25_conv10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx25_conv10_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx25_conv10_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx32_conv10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx32_conv10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx32_conv10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx32_conv10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx32_conv10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx32_conv10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx32_conv10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx32_conv10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx32_conv10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx32_conv10_add_x_p2_of_2_q;
    wire [10:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_UpperBits_for_a_q;
    wire [52:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [21:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [21:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [21:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [19:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [52:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [21:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [21:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [21:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [19:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [52:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [26:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [26:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [26:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [24:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [11:0] i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [17:0] i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [51:0] i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [11:0] i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [12:0] i_arrayidx17_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx17_conv10_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx17_conv10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [12:0] i_arrayidx23_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [12:0] i_arrayidx25_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx32_conv10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx32_conv10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [12:0] i_arrayidx32_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx32_conv10_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx32_conv10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [20:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [51:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [19:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [19:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [51:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [19:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [19:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [3:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [19:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b;
    wire [51:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [24:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [24:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [17:0] i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_e;
    wire [17:0] i_arrayidx17_conv10_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx17_conv10_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx17_conv10_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx17_conv10_mult_x_bs1_merged_bit_select_e;
    wire [51:0] i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [26:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b;
    wire [8:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c;
    wire [8:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [18:0] i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [26:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b;
    wire [8:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c;
    wire [8:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [18:0] i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [21:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b;
    wire [13:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    wire [3:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [23:0] i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [3:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    wire [45:0] join_for_coalesced_delay_2_q;
    wire [17:0] sel_for_coalesced_delay_2_b;
    wire [17:0] sel_for_coalesced_delay_2_c;
    wire [9:0] sel_for_coalesced_delay_2_d;
    wire [64:0] join_for_coalesced_delay_3_q;
    wire [63:0] sel_for_coalesced_delay_3_b;
    wire [0:0] sel_for_coalesced_delay_3_c;
    reg [23:0] redist0_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [13:0] redist1_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q;
    reg [18:0] redist2_i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [8:0] redist3_i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q;
    reg [18:0] redist4_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [8:0] redist5_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q;
    reg [11:0] redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [19:0] redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_q;
    reg [51:0] redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_q;
    reg [15:0] redist18_sR_bottomRange_uid1043_i_arrayidx32_conv10_mult_x_im9_b_1_0_q;
    reg [23:0] redist19_sR_bottomRange_uid974_i_arrayidx32_conv10_mult_x_im6_b_1_0_q;
    reg [23:0] redist20_sR_bottomRange_uid905_i_arrayidx32_conv10_mult_x_im3_b_1_0_q;
    reg [13:0] redist21_highBBits_uid830_i_arrayidx32_conv10_mult_x_im0_b_1_0_q;
    reg [0:0] redist22_lowRangeB_uid824_i_arrayidx32_conv10_mult_x_im0_b_1_0_q;
    reg [12:0] redist23_sR_bottomRange_uid560_i_arrayidx17_conv10_mult_x_im9_b_1_0_q;
    reg [20:0] redist24_sR_bottomRange_uid497_i_arrayidx17_conv10_mult_x_im6_b_1_0_q;
    reg [20:0] redist25_sR_bottomRange_uid434_i_arrayidx17_conv10_mult_x_im3_b_1_0_q;
    reg [0:0] redist26_i_reduction_conv1_0_conv136_q_2_0_q;
    wire [0:0] redist27_i_masked_conv151_q_98_fifo_valid_in;
    wire redist27_i_masked_conv151_q_98_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist27_i_masked_conv151_q_98_fifo_stall_in;
    wire redist27_i_masked_conv151_q_98_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist27_i_masked_conv151_q_98_fifo_data_in;
    wire [0:0] redist27_i_masked_conv151_q_98_fifo_valid_out;
    wire redist27_i_masked_conv151_q_98_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist27_i_masked_conv151_q_98_fifo_stall_out;
    wire redist27_i_masked_conv151_q_98_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist27_i_masked_conv151_q_98_fifo_data_out;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_valid_in;
    wire redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_stall_in;
    wire redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_data_in;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_valid_out;
    wire redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_stall_out;
    wire redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_data_out;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_0_q;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_1_q;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_2_q;
    reg [31:0] redist30_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_2_0_q;
    reg [31:0] redist30_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_2_1_q;
    reg [31:0] redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_0_q;
    reg [31:0] redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_1_q;
    reg [31:0] redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_q;
    wire [0:0] redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_valid_in;
    wire redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_stall_in;
    wire redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_data_in;
    wire [0:0] redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_valid_out;
    wire redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_stall_out;
    wire redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_data_out;
    wire [0:0] redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_valid_in;
    wire redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_stall_in;
    wire redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_data_in;
    wire [0:0] redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_valid_out;
    wire redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_stall_out;
    wire redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_data_out;
    reg [0:0] redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_q;
    reg [0:0] redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_q;
    wire [0:0] redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_valid_in;
    wire redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_stall_in;
    wire redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_data_in;
    wire [0:0] redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_valid_out;
    wire redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_stall_out;
    wire redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_data_out;
    reg [0:0] redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_q;
    reg [0:0] redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q;
    reg [0:0] redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q;
    reg [0:0] redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q;
    reg [0:0] redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q;
    reg [0:0] redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q;
    reg [0:0] redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_q;
    reg [0:0] redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q;
    reg [0:0] redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q;
    wire [0:0] redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in;
    wire redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in;
    wire redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_in;
    wire [0:0] redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out;
    wire redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out;
    wire redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_out;
    reg [0:0] redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q;
    reg [0:0] redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [3:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [3:0] coalesced_delay_1_fifo_data_out;
    reg [45:0] coalesced_delay_2_0_q;
    wire [0:0] coalesced_delay_3_fifo_valid_in;
    wire coalesced_delay_3_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_3_fifo_stall_in;
    wire coalesced_delay_3_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_3_fifo_data_in;
    wire [0:0] coalesced_delay_3_fifo_valid_out;
    wire coalesced_delay_3_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_3_fifo_stall_out;
    wire coalesced_delay_3_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_3_fifo_data_out;
    wire [70:0] bubble_join_conv1_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv1_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_conv1_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_conv1_B4_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_conv1_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv1_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_conv1_B4_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_conv1_B4_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_conv1_B4_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv1_B4_merge_reg_aunroll_x_j;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_conv160_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_conv160_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_conv17_conv152_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_conv17_conv152_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_conv18_conv153_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_conv18_conv153_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_conv19_conv154_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_conv19_conv154_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_conv15_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_conv15_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_conv16_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_conv16_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_col_027_pop21_conv17_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_col_027_pop21_conv17_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_b;
    wire [5:0] bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_q;
    wire [5:0] bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_b;
    wire [70:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_join_redist27_i_masked_conv151_q_98_fifo_q;
    wire [0:0] bubble_select_redist27_i_masked_conv151_q_98_fifo_b;
    wire [31:0] bubble_join_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_q;
    wire [31:0] bubble_select_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_b;
    wire [0:0] bubble_join_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_q;
    wire [0:0] bubble_select_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_b;
    wire [0:0] bubble_join_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_q;
    wire [0:0] bubble_select_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_b;
    wire [0:0] bubble_join_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_q;
    wire [0:0] bubble_select_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_b;
    wire [0:0] bubble_join_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_q;
    wire [0:0] bubble_select_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [3:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_3_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_3_fifo_b;
    wire [0:0] SE_bgTrunc_i_inc57_conv122_sel_x_wireValid;
    wire [0:0] SE_bgTrunc_i_inc57_conv122_sel_x_and0;
    wire [0:0] SE_bgTrunc_i_inc57_conv122_sel_x_backStall;
    wire [0:0] SE_bgTrunc_i_inc57_conv122_sel_x_V0;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_conv1_B4_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_conv160_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_V3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond941_push29_conv126_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond941_push29_conv126_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_conv149_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_conv149_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_conv142_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_conv142_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push24_conv159_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push24_conv159_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push23_conv138_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push23_conv138_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_col_027_push21_conv140_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_col_027_push21_conv140_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_backStall;
    reg [0:0] SE_i_masked_conv151_R_v_0;
    wire [0:0] SE_i_masked_conv151_v_s_0;
    wire [0:0] SE_i_masked_conv151_s_tv_0;
    wire [0:0] SE_i_masked_conv151_backEN;
    wire [0:0] SE_i_masked_conv151_backStall;
    wire [0:0] SE_i_masked_conv151_V0;
    wire [0:0] SE_i_next_initerations_conv120_vt_select_0_wireValid;
    wire [0:0] SE_i_next_initerations_conv120_vt_select_0_wireStall;
    wire [0:0] SE_i_next_initerations_conv120_vt_select_0_StallValid;
    wire [0:0] SE_i_next_initerations_conv120_vt_select_0_toReg0;
    reg [0:0] SE_i_next_initerations_conv120_vt_select_0_fromReg0;
    wire [0:0] SE_i_next_initerations_conv120_vt_select_0_consumed0;
    wire [0:0] SE_i_next_initerations_conv120_vt_select_0_toReg1;
    reg [0:0] SE_i_next_initerations_conv120_vt_select_0_fromReg1;
    wire [0:0] SE_i_next_initerations_conv120_vt_select_0_consumed1;
    wire [0:0] SE_i_next_initerations_conv120_vt_select_0_or0;
    wire [0:0] SE_i_next_initerations_conv120_vt_select_0_backStall;
    wire [0:0] SE_i_next_initerations_conv120_vt_select_0_V0;
    wire [0:0] SE_i_next_initerations_conv120_vt_select_0_V1;
    reg [0:0] SE_i_reduction_conv1_0_conv136_R_v_0;
    wire [0:0] SE_i_reduction_conv1_0_conv136_v_s_0;
    wire [0:0] SE_i_reduction_conv1_0_conv136_s_tv_0;
    wire [0:0] SE_i_reduction_conv1_0_conv136_backEN;
    wire [0:0] SE_i_reduction_conv1_0_conv136_and0;
    wire [0:0] SE_i_reduction_conv1_0_conv136_backStall;
    wire [0:0] SE_i_reduction_conv1_0_conv136_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_V0;
    reg [0:0] SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_R_v_0;
    wire [0:0] SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_v_s_0;
    wire [0:0] SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_s_tv_0;
    wire [0:0] SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_backEN;
    wire [0:0] SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_backStall;
    wire [0:0] SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_V0;
    reg [0:0] SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_R_v_0;
    wire [0:0] SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_v_s_0;
    wire [0:0] SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_s_tv_0;
    wire [0:0] SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backEN;
    wire [0:0] SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backStall;
    wire [0:0] SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_V0;
    reg [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx17_conv10_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx17_conv10_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx23_conv10_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx25_conv10_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx32_conv10_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx32_conv10_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_or1;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_V1;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_V2;
    reg [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_or0;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_or1;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_V1;
    wire [0:0] SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_V2;
    reg [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_or0;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_V1;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel0_2_V0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel0_2_V1;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireStall;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_StallValid;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg0;
    reg [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg1;
    reg [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed1;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_or0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V1;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_V1;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_V2;
    wire [0:0] SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_V3;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_wireStall;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_StallValid;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_toReg0;
    reg [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_toReg1;
    reg [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_consumed1;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_or0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_V1;
    reg [0:0] SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0;
    wire [0:0] SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_v_s_0;
    wire [0:0] SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_s_tv_0;
    wire [0:0] SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN;
    wire [0:0] SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backStall;
    wire [0:0] SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_V0;
    reg [0:0] SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist26_i_reduction_conv1_0_conv136_q_2_0_R_v_0;
    wire [0:0] SE_redist26_i_reduction_conv1_0_conv136_q_2_0_v_s_0;
    wire [0:0] SE_redist26_i_reduction_conv1_0_conv136_q_2_0_s_tv_0;
    wire [0:0] SE_redist26_i_reduction_conv1_0_conv136_q_2_0_backEN;
    wire [0:0] SE_redist26_i_reduction_conv1_0_conv136_q_2_0_backStall;
    wire [0:0] SE_redist26_i_reduction_conv1_0_conv136_q_2_0_V0;
    wire [0:0] SE_in_redist27_i_masked_conv151_q_98_fifo_wireValid;
    wire [0:0] SE_in_redist27_i_masked_conv151_q_98_fifo_backStall;
    wire [0:0] SE_in_redist27_i_masked_conv151_q_98_fifo_V0;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_wireValid;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_backStall;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_V0;
    reg [0:0] SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_0;
    reg [0:0] SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_1;
    wire [0:0] SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_v_s_0;
    wire [0:0] SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_s_tv_0;
    wire [0:0] SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_s_tv_1;
    wire [0:0] SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backEN;
    wire [0:0] SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_or0;
    wire [0:0] SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backStall;
    wire [0:0] SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_V0;
    wire [0:0] SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_V1;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_wireValid;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_wireStall;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_StallValid;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_toReg0;
    reg [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_fromReg0;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_consumed0;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_toReg1;
    reg [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_fromReg1;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_consumed1;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_or0;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_backStall;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_V0;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_V1;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_wireValid;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_wireStall;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_StallValid;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_toReg0;
    reg [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_fromReg0;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_consumed0;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_toReg1;
    reg [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_fromReg1;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_consumed1;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_or0;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_backStall;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_V0;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_V1;
    reg [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_backEN;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_backStall;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_V0;
    reg [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_1;
    reg [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_2;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_s_tv_2;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backEN;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_or0;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_or1;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backStall;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_V0;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_V1;
    wire [0:0] SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_V2;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_wireValid;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_wireStall;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_StallValid;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_toReg0;
    reg [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_fromReg0;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_consumed0;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_toReg1;
    reg [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_fromReg1;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_consumed1;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_or0;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_backStall;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_V0;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_V1;
    reg [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_R_v_0;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_v_s_0;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_s_tv_0;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_backEN;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_backStall;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_V0;
    reg [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_0;
    reg [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_1;
    reg [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_2;
    reg [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_3;
    reg [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_4;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_v_s_0;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_0;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_1;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_2;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_3;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_4;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backEN;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_or0;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_or1;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_or2;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_or3;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backStall;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V0;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V1;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V2;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V3;
    wire [0:0] SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V4;
    reg [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_v_s_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_s_tv_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V0;
    reg [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_v_s_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_s_tv_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V0;
    reg [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_v_s_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_s_tv_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V0;
    reg [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V0;
    reg [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_0;
    reg [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_1;
    reg [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_2;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_v_s_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_s_tv_0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_s_tv_1;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_s_tv_2;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backEN;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_or0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_or1;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backStall;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_V0;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_V1;
    wire [0:0] SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_V2;
    reg [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_v_s_0;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_s_tv_0;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V0;
    reg [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0;
    reg [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1;
    reg [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2;
    reg [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_0;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_1;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_2;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_3;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or0;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or1;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or2;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V0;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V1;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V2;
    wire [0:0] SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V3;
    wire [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid;
    wire [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireStall;
    wire [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_StallValid;
    wire [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg0;
    reg [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0;
    wire [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed0;
    wire [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg1;
    reg [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1;
    wire [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed1;
    wire [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_or0;
    wire [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_backStall;
    wire [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V0;
    wire [0:0] SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V1;
    reg [0:0] SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0;
    wire [0:0] SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_v_s_0;
    wire [0:0] SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_s_tv_0;
    wire [0:0] SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN;
    wire [0:0] SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall;
    wire [0:0] SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V0;
    reg [0:0] SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0;
    wire [0:0] SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_v_s_0;
    wire [0:0] SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_s_tv_0;
    wire [0:0] SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN;
    wire [0:0] SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall;
    wire [0:0] SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg2;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg3;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg3;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed3;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V3;
    wire [0:0] SE_out_coalesced_delay_3_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_3_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_3_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_3_fifo_V0;
    wire [0:0] SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_V0;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_i_valid;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_valid;
    reg [31:0] SR_SE_out_coalesced_delay_0_fifo_r_data0;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data1;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data2;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_V;
    wire [31:0] SR_SE_out_coalesced_delay_0_fifo_D0;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D2;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid;
    reg [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid;
    reg [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_data0;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_D0;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid;
    reg [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid;
    reg [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_data0;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_D0;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid;
    reg [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid;
    reg [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_data0;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_D0;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid;
    reg [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid;
    reg [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_data0;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_D0;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_i_valid;
    reg [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_valid;
    reg [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_data0;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backStall;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_V;
    wire [0:0] SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_D0;
    wire [0:0] SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid;
    reg [0:0] SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid;
    reg [0:0] SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_data0;
    wire [0:0] SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall;
    wire [0:0] SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V;
    wire [0:0] SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_D0;
    wire [0:0] SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid;
    reg [0:0] SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid;
    reg [0:0] SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_data0;
    wire [0:0] SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall;
    wire [0:0] SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V;
    wire [0:0] SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_D0;
    wire [0:0] SR_SE_i_masked_conv151_i_valid;
    reg [0:0] SR_SE_i_masked_conv151_r_valid;
    wire [0:0] SR_SE_i_masked_conv151_and0;
    reg [0:0] SR_SE_i_masked_conv151_r_data0;
    reg [0:0] SR_SE_i_masked_conv151_r_data1;
    wire [0:0] SR_SE_i_masked_conv151_backStall;
    wire [0:0] SR_SE_i_masked_conv151_V;
    wire [0:0] SR_SE_i_masked_conv151_D0;
    wire [0:0] SR_SE_i_masked_conv151_D1;
    wire [0:0] SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid;
    reg [0:0] SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid;
    reg [0:0] SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_data0;
    wire [0:0] SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall;
    wire [0:0] SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V;
    wire [0:0] SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_D0;
    wire [0:0] SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid;
    reg [0:0] SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid;
    reg [0:0] SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_data0;
    wire [0:0] SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall;
    wire [0:0] SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V;
    wire [0:0] SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_D0;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_i_valid;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_valid;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_and0;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data0;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data1;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data2;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data3;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data4;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data5;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data6;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data7;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_V;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D0;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D2;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D3;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D4;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D5;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D6;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D7;
    wire [0:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid;
    reg [51:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data1;
    reg [23:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data2;
    reg [13:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data3;
    reg [31:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data4;
    wire [0:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D1;
    wire [23:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D2;
    wire [13:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D3;
    wire [31:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid;
    reg [51:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data3;
    reg [18:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data4;
    reg [18:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data5;
    reg [8:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data6;
    reg [8:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data7;
    reg [31:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data8;
    wire [0:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D3;
    wire [18:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D4;
    wire [18:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D5;
    wire [8:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D6;
    wire [8:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D7;
    wire [31:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D8;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid;
    reg [24:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data0;
    reg [24:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data2;
    reg [31:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data3;
    wire [0:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_V;
    wire [24:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_D0;
    wire [24:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_D2;
    wire [31:0] SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_D3;
    wire [0:0] SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid;
    reg [19:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data0;
    reg [19:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data2;
    reg [19:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data3;
    reg [19:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data5;
    reg [31:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data6;
    wire [0:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_V;
    wire [19:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D0;
    wire [19:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D2;
    wire [19:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D3;
    wire [19:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D5;
    wire [31:0] SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D6;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_i_valid;
    reg [0:0] SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_valid;
    reg [31:0] SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_data0;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backStall;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_V;
    wire [31:0] SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_D0;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_i_valid;
    reg [0:0] SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_valid;
    reg [0:0] SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_data0;
    wire [0:0] SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_backStall;
    wire [0:0] SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_V;
    wire [0:0] SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_D0;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_i_valid;
    reg [0:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_valid;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_and0;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_and1;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_and2;
    reg [63:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_data0;
    reg [0:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_data1;
    reg [0:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_data2;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_backStall;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_V;
    wire [63:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_D0;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_D1;
    wire [0:0] SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_D2;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_and0;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_and1;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_and2;
    reg [63:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_data0;
    reg [0:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_data1;
    reg [0:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_data2;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_backStall;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_V;
    wire [63:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_D0;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_D1;
    wire [0:0] SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_D2;
    wire [0:0] SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_i_valid;
    reg [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_valid;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_and0;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_and1;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_and2;
    reg [63:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_data0;
    reg [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_data1;
    reg [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_data2;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_V;
    wire [63:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_D0;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_D1;
    wire [0:0] SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_D2;
    wire [0:0] SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_i_valid;
    reg [0:0] SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_valid;
    reg [0:0] SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_data0;
    wire [0:0] SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_backStall;
    wire [0:0] SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_V;
    wire [0:0] SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_D0;
    wire [0:0] SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_i_valid;
    reg [0:0] SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_valid;
    reg [0:0] SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_data0;
    wire [0:0] SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backStall;
    wire [0:0] SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_V;
    wire [0:0] SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_D0;
    wire [0:0] SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_i_valid;
    reg [0:0] SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_valid;
    reg [0:0] SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_data0;
    wire [0:0] SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_backStall;
    wire [0:0] SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_V;
    wire [0:0] SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_D0;
    wire [0:0] SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_i_valid;
    reg [0:0] SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_valid;
    reg [0:0] SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_data0;
    wire [0:0] SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backStall;
    wire [0:0] SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V;
    wire [0:0] SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_D1;
    wire [0:0] SR_SE_i_next_initerations_conv120_vt_select_0_i_valid;
    reg [0:0] SR_SE_i_next_initerations_conv120_vt_select_0_r_valid;
    wire [0:0] SR_SE_i_next_initerations_conv120_vt_select_0_and0;
    reg [0:0] SR_SE_i_next_initerations_conv120_vt_select_0_r_data0;
    reg [0:0] SR_SE_i_next_initerations_conv120_vt_select_0_r_data1;
    reg [0:0] SR_SE_i_next_initerations_conv120_vt_select_0_r_data2;
    reg [1:0] SR_SE_i_next_initerations_conv120_vt_select_0_r_data3;
    wire [0:0] SR_SE_i_next_initerations_conv120_vt_select_0_backStall;
    wire [0:0] SR_SE_i_next_initerations_conv120_vt_select_0_V;
    wire [0:0] SR_SE_i_next_initerations_conv120_vt_select_0_D0;
    wire [0:0] SR_SE_i_next_initerations_conv120_vt_select_0_D1;
    wire [0:0] SR_SE_i_next_initerations_conv120_vt_select_0_D2;
    wire [1:0] SR_SE_i_next_initerations_conv120_vt_select_0_D3;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_D1;
    wire [0:0] SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_i_valid;
    reg [0:0] SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_valid;
    wire [0:0] SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_and0;
    wire [0:0] SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_and1;
    reg [1:0] SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_data0;
    reg [0:0] SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_data1;
    wire [0:0] SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_backStall;
    wire [0:0] SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_V;
    wire [1:0] SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_D0;
    wire [0:0] SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_and0;
    reg [31:0] SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_V;
    wire [31:0] SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_and0;
    reg [5:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_V;
    wire [5:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_D1;


    // SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q(STALLENABLE,1709)
    // Valid signal propagation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_V0 = SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_unnamed_conv17_conv152_out_o_stall | ~ (SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_wireValid = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_V;

    // bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x(BITJOIN,1423)
    assign bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_q = i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_out_c0_exit97_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x(BITSELECT,1424)
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_q[31:0]);

    // SE_bgTrunc_i_inc57_conv122_sel_x(STALLENABLE,1531)
    // Valid signal propagation
    assign SE_bgTrunc_i_inc57_conv122_sel_x_V0 = SE_bgTrunc_i_inc57_conv122_sel_x_wireValid;
    // Backward Stall generation
    assign SE_bgTrunc_i_inc57_conv122_sel_x_backStall = i_llvm_fpga_push_i32_col_027_push21_conv140_out_stall_out | ~ (SE_bgTrunc_i_inc57_conv122_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bgTrunc_i_inc57_conv122_sel_x_and0 = SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_V1;
    assign SE_bgTrunc_i_inc57_conv122_sel_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V4 & SE_bgTrunc_i_inc57_conv122_sel_x_and0;

    // i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,1176)
    assign i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel0_2_b = c_i32_064_q[17:0];

    // bubble_join_i_llvm_fpga_pop_i32_col_027_pop21_conv17(BITJOIN,1490)
    assign bubble_join_i_llvm_fpga_pop_i32_col_027_pop21_conv17_q = i_llvm_fpga_pop_i32_col_027_pop21_conv17_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_col_027_pop21_conv17(BITSELECT,1491)
    assign bubble_select_i_llvm_fpga_pop_i32_col_027_pop21_conv17_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_col_027_pop21_conv17_q[31:0]);

    // i_arrayidx17_conv10_c_i2_02_x(CONSTANT,25)
    assign i_arrayidx17_conv10_c_i2_02_x_q = $unsigned(2'b00);

    // i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,1177)@100
    assign i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_i_llvm_fpga_pop_i32_col_027_pop21_conv17_b, i_arrayidx17_conv10_c_i2_02_x_q};

    // join_for_coalesced_delay_1(BITJOIN,1352)
    assign join_for_coalesced_delay_1_q = {bubble_select_conv1_B4_merge_reg_aunroll_x_h, bubble_select_conv1_B4_merge_reg_aunroll_x_g, bubble_select_conv1_B4_merge_reg_aunroll_x_d, bubble_select_conv1_B4_merge_reg_aunroll_x_c};

    // redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0(REG,1406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN == 1'b1)
        begin
            redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q <= $unsigned(SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_D0);
        end
    end

    // SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0(STALLENABLE,1838)
    // Valid signal propagation
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V0 = SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0;
    // Stall signal propagation
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_s_tv_0 = SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall & SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0;
    // Backward Enable generation
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN = ~ (SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_v_s_0 = SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN & SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V;
    // Backward Stall generation
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall = ~ (SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN == 1'b0)
            begin
                SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0 <= SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0 & SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_s_tv_0;
            end
            else
            begin
                SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0 <= SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_v_s_0;
            end

        end
    end

    // SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1(STALLREG,2027)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid <= 1'b0;
            SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid <= SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall & (SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid | SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid);

            if (SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_data0 <= $unsigned(redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid = SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V0;
    // Stall signal propagation
    assign SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall = SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid | ~ (SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid);

    // Valid
    assign SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V = SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid == 1'b1 ? SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid : SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid;

    assign SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_D0 = SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid == 1'b1 ? SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_data0 : redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q;

    // redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1(REG,1407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b1)
        begin
            redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q <= $unsigned(SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_D0);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_conv14(BITJOIN,1480)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_q = i_llvm_fpga_pop_i2_cleanups_pop24_conv14_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_conv14(BITSELECT,1481)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_q[1:0]);

    // i_first_cleanup_conv118_sel_x(BITSELECT,73)@102
    assign i_first_cleanup_conv118_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_b[0:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19(BITJOIN,1496)
    assign bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_q = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19(BITSELECT,1497)
    assign bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_b = $unsigned(bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_q[5:0]);

    // i_exitcond_conv123_cmp_nsign(LOGICAL,334)@102
    assign i_exitcond_conv123_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_b[5:5]));

    // i_notcmp_conv141(LOGICAL,159)@102
    assign i_notcmp_conv141_q = i_exitcond_conv123_cmp_nsign_q ^ VCC_q;

    // i_arrayidx32_conv10_dupName_1_add_x_p1_of_2(ADD,1130)@100 + 1
    assign i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_D0};
    assign i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q = i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_o[51:0];

    // SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0(STALLREG,2042)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_V = SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q;

    // SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0(STALLENABLE,1798)
    // Valid signal propagation
    assign SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_V0 = SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_backStall & SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1178)
    assign i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = c_i32_064_q[29:18];

    // i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1180)@101
    assign i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_1(REG,1387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_1_q <= $unsigned(SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D8);
        end
    end

    // redist2_i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,1362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(19'b0000000000000000000);
        end
        else if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist2_i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D4);
        end
    end

    // i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1272)@99
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist2_i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // i_arrayidx17_conv10_mult_x_sums_result_add_0_0_UpperBits_for_a(CONSTANT,1143)
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_UpperBits_for_a_q = $unsigned(11'b00000000000);

    // redist3_i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0(REG,1363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q <= $unsigned(9'b000000000);
        end
        else if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist3_i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D6);
        end
    end

    // i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1266)@99
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx17_conv10_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist3_i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q};

    // i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2(ADD,1148)@98 + 1
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D0};
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // redist4_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,1364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(19'b0000000000000000000);
        end
        else if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist4_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D5);
        end
    end

    // i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1259)@99
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist4_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // redist5_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0(REG,1365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q <= $unsigned(9'b000000000);
        end
        else if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist5_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D7);
        end
    end

    // i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1253)@99
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx17_conv10_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist5_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q};

    // SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2(STALLREG,2039)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= $unsigned(redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_i_valid = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_V = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 : i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 : i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 : i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D3 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 : i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data4
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D4 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data4 : i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data5
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D5 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data5 : i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D6 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data6 : redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_1_q;

    // i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,1158)@99 + 1
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D5;
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D4}, i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 22'b0;
        end
        else if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[20:1];

    // i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1222)@100
    assign i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1224)@100
    assign i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0(REG,1401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN == 1'b1)
        begin
            redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q <= $unsigned(SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_D0);
        end
    end

    // redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1(REG,1402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN == 1'b1)
        begin
            redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q <= $unsigned(SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_D0);
        end
    end

    // redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2(REG,1403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN == 1'b1)
        begin
            redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q <= $unsigned(SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_D0);
        end
    end

    // SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3(STALLENABLE,1836)
    // Valid signal propagation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V0 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0;
    // Stall signal propagation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_0 = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backStall & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0;
    // Backward Enable generation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN = ~ (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN & SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V;
    // Backward Stall generation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall = ~ (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN == 1'b0)
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0 & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_0;
            end
            else
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0;
            end

        end
    end

    // SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3(STALLREG,2024)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid <= 1'b0;
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall & (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid | SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid);

            if (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_data0 <= $unsigned(redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V0;
    // Stall signal propagation
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid | ~ (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid);

    // Valid
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid == 1'b1 ? SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid : SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid;

    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_D0 = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid == 1'b1 ? SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_data0 : redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q;

    // SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2(STALLENABLE,1835)
    // Valid signal propagation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V0 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0;
    // Stall signal propagation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_s_tv_0 = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0;
    // Backward Enable generation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN = ~ (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_v_s_0 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN & SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V;
    // Backward Stall generation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall = ~ (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN == 1'b0)
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0 & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_s_tv_0;
            end
            else
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_v_s_0;
            end

        end
    end

    // SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2(STALLREG,2023)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid <= 1'b0;
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall & (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid | SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid);

            if (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_data0 <= $unsigned(redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V0;
    // Stall signal propagation
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid | ~ (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid);

    // Valid
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid == 1'b1 ? SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid : SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid;

    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_D0 = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid == 1'b1 ? SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_data0 : redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q;

    // SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1(STALLENABLE,1834)
    // Valid signal propagation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V0 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0;
    // Stall signal propagation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_s_tv_0 = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0;
    // Backward Enable generation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN = ~ (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_v_s_0 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN & SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V;
    // Backward Stall generation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall = ~ (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN == 1'b0)
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0 & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_s_tv_0;
            end
            else
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_v_s_0;
            end

        end
    end

    // SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1(STALLREG,2022)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid <= 1'b0;
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall & (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid | SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid);

            if (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_data0 <= $unsigned(redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V0;
    // Stall signal propagation
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid | ~ (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid);

    // Valid
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid == 1'b1 ? SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid : SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid;

    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_D0 = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid == 1'b1 ? SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_data0 : redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q;

    // SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0(STALLENABLE,1833)
    // Valid signal propagation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V0 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0;
    // Stall signal propagation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_s_tv_0 = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0;
    // Backward Enable generation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN = ~ (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_v_s_0 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN & SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V;
    // Backward Stall generation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall = ~ (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN == 1'b0)
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0 & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_s_tv_0;
            end
            else
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_v_s_0;
            end

        end
    end

    // SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0(STALLREG,2021)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid <= 1'b0;
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall & (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid | SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid);

            if (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_data0 <= $unsigned(SR_SE_out_coalesced_delay_0_fifo_D2);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid = SE_out_coalesced_delay_0_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid | ~ (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid);

    // Valid
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid == 1'b1 ? SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid : SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid;

    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_D0 = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid == 1'b1 ? SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_data0 : SR_SE_out_coalesced_delay_0_fifo_D2;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,1845)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = SR_SE_out_coalesced_delay_0_fifo_V;

    // i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,1199)@100
    assign i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel0_2_b, redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_q, i_arrayidx17_conv10_c_i2_02_x_q};

    // SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_2(STALLENABLE,1858)
    // Valid signal propagation
    assign SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_out_stall_out | ~ (SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_2_wireValid = bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11(BLACKBOX,120)@99
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@100
    // out out_stall_out@20000000
    // out out_valid_out@100
    conv1_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_0 thei_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_backStall),
        .in_valid_in(SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11(BITJOIN,1435)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_q = i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11(BITSELECT,1436)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_q[63:0]);

    // i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,1292)@100
    assign i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_b[51:0]);
    assign i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_b[63:52]);

    // i_arrayidx25_conv10_add_x_p1_of_2(ADD,1112)@100 + 1
    assign i_arrayidx25_conv10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_D0};
    assign i_arrayidx25_conv10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx25_conv10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx25_conv10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx25_conv10_add_x_p1_of_2_o <= $unsigned(i_arrayidx25_conv10_add_x_p1_of_2_a) + $unsigned(i_arrayidx25_conv10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx25_conv10_add_x_p1_of_2_c[0] = i_arrayidx25_conv10_add_x_p1_of_2_o[52];
    assign i_arrayidx25_conv10_add_x_p1_of_2_q = i_arrayidx25_conv10_add_x_p1_of_2_o[51:0];

    // redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,1366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx25_conv10_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1207)@101
    assign i_arrayidx25_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_i_arrayidx25_conv10_add_x_p2_of_2(STALLENABLE,1716)
    // Valid signal propagation
    assign SE_i_arrayidx25_conv10_add_x_p2_of_2_V0 = SE_i_arrayidx25_conv10_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx25_conv10_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_backStall & SE_i_arrayidx25_conv10_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx25_conv10_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx25_conv10_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx25_conv10_add_x_p2_of_2_v_s_0 = SE_i_arrayidx25_conv10_add_x_p2_of_2_backEN & SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx25_conv10_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx25_conv10_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx25_conv10_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx25_conv10_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx25_conv10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx25_conv10_add_x_p2_of_2_R_v_0 & SE_i_arrayidx25_conv10_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx25_conv10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx25_conv10_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx25_conv10_add_x_p2_of_2(STALLREG,2045)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_valid <= SE_i_arrayidx25_conv10_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx25_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx25_conv10_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_and0 = SE_i_arrayidx25_conv10_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_and1 = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_V2 & SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_i_valid = SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_backStall = SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_V = SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_D0 = SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_data0 : i_arrayidx25_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_D1 = SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_data1 : i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_D2 = SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_r_data2 : i_arrayidx25_conv10_add_x_p1_of_2_c;

    // SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1793)
    // Valid signal propagation
    assign SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_backStall & SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_V1;
    // Backward Stall generation
    assign SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11(STALLENABLE,1560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_consumed0 = (~ (SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_consumed1 = (~ (SE_redist6_i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_wireValid = i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_out_valid_out;

    // SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0(STALLENABLE,1799)
    // Valid signal propagation
    assign SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_V0 = SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_backStall & SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0(STALLREG,2046)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_valid <= SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx25_conv10_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx25_conv10_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_V = SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx25_conv10_add_x_p1_of_2_q;

    // SE_i_arrayidx25_conv10_add_x_p1_of_2(STALLENABLE,1715)
    // Valid signal propagation
    assign SE_i_arrayidx25_conv10_add_x_p1_of_2_V0 = SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx25_conv10_add_x_p1_of_2_V1 = SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx25_conv10_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_backStall & SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx25_conv10_add_x_p1_of_2_s_tv_1 = SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx25_conv10_add_x_p1_of_2_or0 = SE_i_arrayidx25_conv10_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx25_conv10_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx25_conv10_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx25_conv10_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx25_conv10_add_x_p1_of_2_v_s_0 = SE_i_arrayidx25_conv10_add_x_p1_of_2_backEN & SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx25_conv10_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx25_conv10_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx25_conv10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_0 & SE_i_arrayidx25_conv10_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx25_conv10_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx25_conv10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_1 & SE_i_arrayidx25_conv10_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx25_conv10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx25_conv10_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx25_conv10_add_x_p1_of_2(STALLREG,2044)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_valid <= SE_i_arrayidx25_conv10_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_and0 = SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_V1;
    assign SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias3215_conv11_V0 & SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_backStall = SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_V = SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_D0 = SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_data0 : i_arrayidx25_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_D1 = SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_r_data1 : i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_1(STALLENABLE,1856)
    // Valid signal propagation
    assign SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_out_stall_out | ~ (SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_1_wireValid = bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10(BLACKBOX,117)@99
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@100
    // out out_stall_out@20000000
    // out out_valid_out@100
    conv1_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_0 thei_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_backStall),
        .in_valid_in(SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10(BITJOIN,1426)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_q = i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10(BITSELECT,1427)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_q[63:0]);

    // i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,1289)@100
    assign i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_b[51:0]);
    assign i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_b[63:52]);

    // i_arrayidx23_conv10_add_x_p1_of_2(ADD,1103)@100 + 1
    assign i_arrayidx23_conv10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_D0};
    assign i_arrayidx23_conv10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_conv10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx23_conv10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_conv10_add_x_p1_of_2_o <= $unsigned(i_arrayidx23_conv10_add_x_p1_of_2_a) + $unsigned(i_arrayidx23_conv10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx23_conv10_add_x_p1_of_2_c[0] = i_arrayidx23_conv10_add_x_p1_of_2_o[52];
    assign i_arrayidx23_conv10_add_x_p1_of_2_q = i_arrayidx23_conv10_add_x_p1_of_2_o[51:0];

    // redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,1369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx23_conv10_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1195)@101
    assign i_arrayidx23_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_i_arrayidx23_conv10_add_x_p2_of_2(STALLENABLE,1713)
    // Valid signal propagation
    assign SE_i_arrayidx23_conv10_add_x_p2_of_2_V0 = SE_i_arrayidx23_conv10_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx23_conv10_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_backStall & SE_i_arrayidx23_conv10_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx23_conv10_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx23_conv10_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_conv10_add_x_p2_of_2_v_s_0 = SE_i_arrayidx23_conv10_add_x_p2_of_2_backEN & SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_conv10_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx23_conv10_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_conv10_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_conv10_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_conv10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_conv10_add_x_p2_of_2_R_v_0 & SE_i_arrayidx23_conv10_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_conv10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_conv10_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx23_conv10_add_x_p2_of_2(STALLREG,2050)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_valid <= SE_i_arrayidx23_conv10_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx23_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx23_conv10_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_and0 = SE_i_arrayidx23_conv10_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_and1 = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_V1 & SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_i_valid = SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_backStall = SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_V = SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_D0 = SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_data0 : i_arrayidx23_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_D1 = SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_data1 : i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_D2 = SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_r_data2 : i_arrayidx23_conv10_add_x_p1_of_2_c;

    // SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1796)
    // Valid signal propagation
    assign SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_backStall & SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_V1;
    // Backward Stall generation
    assign SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10(STALLENABLE,1554)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_consumed0 = (~ (SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_consumed1 = (~ (SE_redist9_i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_wireValid = i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_out_valid_out;

    // SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0(STALLENABLE,1800)
    // Valid signal propagation
    assign SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_V0 = SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_backStall & SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0(STALLREG,2051)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_valid <= SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx23_conv10_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx23_conv10_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_V = SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx23_conv10_add_x_p1_of_2_q;

    // SE_i_arrayidx23_conv10_add_x_p1_of_2(STALLENABLE,1712)
    // Valid signal propagation
    assign SE_i_arrayidx23_conv10_add_x_p1_of_2_V0 = SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_conv10_add_x_p1_of_2_V1 = SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx23_conv10_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_backStall & SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_conv10_add_x_p1_of_2_s_tv_1 = SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx23_conv10_add_x_p1_of_2_or0 = SE_i_arrayidx23_conv10_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx23_conv10_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx23_conv10_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx23_conv10_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_conv10_add_x_p1_of_2_v_s_0 = SE_i_arrayidx23_conv10_add_x_p1_of_2_backEN & SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_conv10_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx23_conv10_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_conv10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_0 & SE_i_arrayidx23_conv10_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_conv10_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx23_conv10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_1 & SE_i_arrayidx23_conv10_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx23_conv10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_conv10_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx23_conv10_add_x_p1_of_2(STALLREG,2049)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_valid <= SE_i_arrayidx23_conv10_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_and0 = SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    assign SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024a1a1f32_kernel3114_conv10_V0 & SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_backStall = SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_V = SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_D0 = SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_data0 : i_arrayidx23_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_D1 = SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_r_data1 : i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,1741)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0 <= '0;
            SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0 <= SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_toReg0;
            // Successor 1
            SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1 <= SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_consumed0 = (~ (SR_SE_i_arrayidx23_conv10_add_x_p1_of_2_backStall) & SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid) | SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0;
    assign SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_consumed1 = (~ (SR_SE_i_arrayidx25_conv10_add_x_p1_of_2_backStall) & SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid) | SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1;
    // Consuming
    assign SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_StallValid = SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    assign SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_toReg0 = SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_StallValid & SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    assign SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_toReg1 = SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_StallValid & SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_consumed1;
    // Backward Stall generation
    assign SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_or0 = SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    assign SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_wireStall = ~ (SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_consumed1 & SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_or0);
    assign SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid & ~ (SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0);
    assign SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_V1 = SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid & ~ (SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel0_2_V1;
    assign SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_V1 & SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_1(REG,1392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_1_q <= $unsigned(SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_D3);
        end
    end

    // SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2(STALLREG,2043)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_valid <= 1'b0;
            SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_valid <= SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backStall & (SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_valid | SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_i_valid);

            if (SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_data0 <= $unsigned(redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_i_valid = SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backStall = SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_valid | ~ (SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_i_valid);

    // Valid
    assign SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_V = SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_valid == 1'b1 ? SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_valid : SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_i_valid;

    assign SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_D0 = SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_valid == 1'b1 ? SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_r_data0 : redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_1_q;

    // SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2(STALLENABLE,1822)
    // Valid signal propagation
    assign SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_V0 = SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_0;
    assign SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_V1 = SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_1;
    // Stall signal propagation
    assign SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_s_tv_0 = SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_backStall & SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_0;
    assign SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_s_tv_1 = SE_i_arrayidx23_conv10_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_1;
    // Backward Enable generation
    assign SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_or0 = SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_s_tv_0;
    assign SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backEN = ~ (SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_s_tv_1 | SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_v_s_0 = SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backEN & SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_V;
    // Backward Stall generation
    assign SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backStall = ~ (SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_0 <= 1'b0;
            SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backEN == 1'b0)
            begin
                SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_0 <= SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_0 & SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_s_tv_0;
            end
            else
            begin
                SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_0 <= SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_v_s_0;
            end

            if (SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backEN == 1'b0)
            begin
                SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_1 <= SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_1 & SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_s_tv_1;
            end
            else
            begin
                SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_R_v_1 <= SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133(STALLENABLE,1619)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_V0 = SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_backStall = i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_and0 = SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_V0;
    assign SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V3 & SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_and0;

    // SE_out_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133(STALLENABLE,1620)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_wireValid = i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_out_valid_out;

    // redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2(REG,1393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backEN == 1'b1)
        begin
            redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_q <= $unsigned(SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_D0);
        end
    end

    // i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133(BLACKBOX,150)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    conv1_i_llvm_fpga_push_i32_channel_029_pop1138_push27_0 thei_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133 (
        .in_data_in(redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_feedback_stall_out_27),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_conv15_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_V0),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,1522)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,1523)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[32:0]);

    // sel_for_coalesced_delay_0(BITSELECT,1350)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);

    // SR_SE_out_coalesced_delay_0_fifo(STALLREG,2020)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= 1'b0;
            SR_SE_out_coalesced_delay_0_fifo_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_coalesced_delay_0_fifo_r_data1 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= SE_out_coalesced_delay_0_fifo_backStall & (SR_SE_out_coalesced_delay_0_fifo_r_valid | SR_SE_out_coalesced_delay_0_fifo_i_valid);

            if (SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_coalesced_delay_0_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_0_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data1 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_out_coalesced_delay_0_fifo_r_data2 <= $unsigned(sel_for_coalesced_delay_0_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_0_fifo_i_valid = coalesced_delay_0_fifo_valid_out;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_0_fifo_backStall = SR_SE_out_coalesced_delay_0_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_0_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_0_fifo_V = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_valid : SR_SE_out_coalesced_delay_0_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_0_fifo_D0 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data0 : sel_for_coalesced_delay_0_b;
    // Data1
    assign SR_SE_out_coalesced_delay_0_fifo_D1 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data1 : sel_for_coalesced_delay_0_c;
    // Data2
    assign SR_SE_out_coalesced_delay_0_fifo_D2 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data2 : sel_for_coalesced_delay_0_c;

    // i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116(BLACKBOX,135)@94
    // in in_stall_in@20000000
    // out out_data_out@95
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@95
    conv1_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_0 thei_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D1),
        .in_feedback_in_27(i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116(STALLENABLE,1590)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_V0 = SE_out_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_backStall = SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_wireValid = i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_valid_out;

    // SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0(STALLENABLE,1673)
    // Valid signal propagation
    assign SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_V0 = SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_s_tv_0 = SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backStall & SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backEN = ~ (SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_v_s_0 = SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backEN & SE_out_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_V0;
    // Backward Stall generation
    assign SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backStall = ~ (SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backEN == 1'b0)
            begin
                SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_R_v_0 & SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116(BITJOIN,1487)
    assign bubble_join_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_q = i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116(BITSELECT,1488)
    assign bubble_select_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_q[31:0]);

    // redist30_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_2_0(REG,1389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_2_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_b);
        end
    end

    // redist30_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_2_1(REG,1390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_2_1_q <= $unsigned(redist30_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_2_0_q);
        end
    end

    // i_idxprom18_conv134_sel_x(BITSELECT,75)@95
    assign i_idxprom18_conv134_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_b[31:0]};

    // i_idxprom18_conv134_vt_select_31(BITSELECT,110)@95
    assign i_idxprom18_conv134_vt_select_31_b = i_idxprom18_conv134_sel_x_b[31:0];

    // i_idxprom18_conv134_vt_join(BITJOIN,109)@95
    assign i_idxprom18_conv134_vt_join_q = {c_i32_064_q, i_idxprom18_conv134_vt_select_31_b};

    // i_arrayidx32_conv10_mult_x_bs1_merged_bit_select(BITSELECT,1287)@95
    assign i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_b = i_idxprom18_conv134_vt_join_q[17:0];
    assign i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_c = i_idxprom18_conv134_vt_join_q[35:18];
    assign i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_d = i_idxprom18_conv134_vt_join_q[53:36];
    assign i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_e = i_idxprom18_conv134_vt_join_q[63:54];

    // join_for_coalesced_delay_2(BITJOIN,1355)
    assign join_for_coalesced_delay_2_q = {i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_e, i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_d, i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_c};

    // coalesced_delay_2_0(REG,1413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_0_q <= $unsigned(46'b0000000000000000000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backEN == 1'b1)
        begin
            coalesced_delay_2_0_q <= $unsigned(join_for_coalesced_delay_2_q);
        end
    end

    // sel_for_coalesced_delay_2(BITSELECT,1356)
    assign sel_for_coalesced_delay_2_b = $unsigned(coalesced_delay_2_0_q[17:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(coalesced_delay_2_0_q[35:18]);
    assign sel_for_coalesced_delay_2_d = $unsigned(coalesced_delay_2_0_q[45:36]);

    // highBBits_uid968_i_arrayidx32_conv10_mult_x_im6(BITSELECT,967)@96
    assign highBBits_uid968_i_arrayidx32_conv10_mult_x_im6_b = sel_for_coalesced_delay_2_c[17:4];

    // highBBits_uid963_i_arrayidx32_conv10_mult_x_im6(BITSELECT,962)@95
    assign highBBits_uid963_i_arrayidx32_conv10_mult_x_im6_b = i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_d[17:1];

    // addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6(ADD,963)@95 + 1
    assign addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_a = {1'b0, i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_b = {2'b00, highBBits_uid963_i_arrayidx32_conv10_mult_x_im6_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_o <= $unsigned(addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_a) + $unsigned(addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_q = addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_o[18:0];

    // lowRangeB_uid962_i_arrayidx32_conv10_mult_x_im6(BITSELECT,961)@96
    assign lowRangeB_uid962_i_arrayidx32_conv10_mult_x_im6_in = sel_for_coalesced_delay_2_c[0:0];
    assign lowRangeB_uid962_i_arrayidx32_conv10_mult_x_im6_b = lowRangeB_uid962_i_arrayidx32_conv10_mult_x_im6_in[0:0];

    // add_uid965_i_arrayidx32_conv10_mult_x_im6(BITJOIN,964)@96
    assign add_uid965_i_arrayidx32_conv10_mult_x_im6_q = {addsumAHighB_uid964_i_arrayidx32_conv10_mult_x_im6_q, lowRangeB_uid962_i_arrayidx32_conv10_mult_x_im6_b};

    // a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6(ADD,968)@96
    assign a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6_a = {1'b0, add_uid965_i_arrayidx32_conv10_mult_x_im6_q};
    assign a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6_b = {7'b0000000, highBBits_uid968_i_arrayidx32_conv10_mult_x_im6_b};
    assign a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6_o = $unsigned(a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6_a) + $unsigned(a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6_b);
    assign a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6_q = a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6_o[20:0];

    // lowRangeB_uid967_i_arrayidx32_conv10_mult_x_im6(BITSELECT,966)@96
    assign lowRangeB_uid967_i_arrayidx32_conv10_mult_x_im6_in = sel_for_coalesced_delay_2_c[3:0];
    assign lowRangeB_uid967_i_arrayidx32_conv10_mult_x_im6_b = lowRangeB_uid967_i_arrayidx32_conv10_mult_x_im6_in[3:0];

    // a_subconst_49_uid970_i_arrayidx32_conv10_mult_x_im6(BITJOIN,969)@96
    assign a_subconst_49_uid970_i_arrayidx32_conv10_mult_x_im6_q = {a_subconst_49_sumAHighB_uid969_i_arrayidx32_conv10_mult_x_im6_q, lowRangeB_uid967_i_arrayidx32_conv10_mult_x_im6_b};

    // sR_bottomRange_uid974_i_arrayidx32_conv10_mult_x_im6(BITSELECT,973)@96
    assign sR_bottomRange_uid974_i_arrayidx32_conv10_mult_x_im6_in = a_subconst_49_uid970_i_arrayidx32_conv10_mult_x_im6_q[23:0];
    assign sR_bottomRange_uid974_i_arrayidx32_conv10_mult_x_im6_b = sR_bottomRange_uid974_i_arrayidx32_conv10_mult_x_im6_in[23:0];

    // redist19_sR_bottomRange_uid974_i_arrayidx32_conv10_mult_x_im6_b_1_0(REG,1376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sR_bottomRange_uid974_i_arrayidx32_conv10_mult_x_im6_b_1_0_q <= $unsigned(24'b000000000000000000000000);
        end
        else if (SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist19_sR_bottomRange_uid974_i_arrayidx32_conv10_mult_x_im6_b_1_0_q <= $unsigned(sR_bottomRange_uid974_i_arrayidx32_conv10_mult_x_im6_b);
        end
    end

    // sR_bottomExtension_uid835_i_arrayidx32_conv10_mult_x_im0(CONSTANT,834)
    assign sR_bottomExtension_uid835_i_arrayidx32_conv10_mult_x_im0_q = $unsigned(6'b000000);

    // sR_mergedSignalTM_uid975_i_arrayidx32_conv10_mult_x_im6(BITJOIN,974)@97
    assign sR_mergedSignalTM_uid975_i_arrayidx32_conv10_mult_x_im6_q = {redist19_sR_bottomRange_uid974_i_arrayidx32_conv10_mult_x_im6_b_1_0_q, sR_bottomExtension_uid835_i_arrayidx32_conv10_mult_x_im0_q};

    // i_arrayidx32_conv10_mult_x_sums_align_0(BITSHIFT,311)@97
    assign i_arrayidx32_conv10_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid975_i_arrayidx32_conv10_mult_x_im6_q, 6'b000000 };
    assign i_arrayidx32_conv10_mult_x_sums_align_0_q = i_arrayidx32_conv10_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select(BITSELECT,1297)@97
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b = $unsigned(i_arrayidx32_conv10_mult_x_sums_align_0_q[21:0]);
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c = $unsigned(i_arrayidx32_conv10_mult_x_sums_align_0_q[35:22]);

    // highBBits_uid1037_i_arrayidx32_conv10_mult_x_im9(BITSELECT,1036)@96
    assign highBBits_uid1037_i_arrayidx32_conv10_mult_x_im9_b = sel_for_coalesced_delay_2_d[9:4];

    // highBBits_uid1032_i_arrayidx32_conv10_mult_x_im9(BITSELECT,1031)@95
    assign highBBits_uid1032_i_arrayidx32_conv10_mult_x_im9_b = i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_e[9:1];

    // addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9(ADD,1032)@95 + 1
    assign addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_a = {1'b0, i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_b = {2'b00, highBBits_uid1032_i_arrayidx32_conv10_mult_x_im9_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_o <= 11'b0;
        end
        else if (SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_o <= $unsigned(addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_a) + $unsigned(addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_q = addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_o[10:0];

    // lowRangeB_uid1031_i_arrayidx32_conv10_mult_x_im9(BITSELECT,1030)@96
    assign lowRangeB_uid1031_i_arrayidx32_conv10_mult_x_im9_in = sel_for_coalesced_delay_2_d[0:0];
    assign lowRangeB_uid1031_i_arrayidx32_conv10_mult_x_im9_b = lowRangeB_uid1031_i_arrayidx32_conv10_mult_x_im9_in[0:0];

    // add_uid1034_i_arrayidx32_conv10_mult_x_im9(BITJOIN,1033)@96
    assign add_uid1034_i_arrayidx32_conv10_mult_x_im9_q = {addsumAHighB_uid1033_i_arrayidx32_conv10_mult_x_im9_q, lowRangeB_uid1031_i_arrayidx32_conv10_mult_x_im9_b};

    // a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9(ADD,1037)@96
    assign a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9_a = {1'b0, add_uid1034_i_arrayidx32_conv10_mult_x_im9_q};
    assign a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9_b = {7'b0000000, highBBits_uid1037_i_arrayidx32_conv10_mult_x_im9_b};
    assign a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9_o = $unsigned(a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9_a) + $unsigned(a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9_b);
    assign a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9_q = a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9_o[12:0];

    // lowRangeB_uid1036_i_arrayidx32_conv10_mult_x_im9(BITSELECT,1035)@96
    assign lowRangeB_uid1036_i_arrayidx32_conv10_mult_x_im9_in = sel_for_coalesced_delay_2_d[3:0];
    assign lowRangeB_uid1036_i_arrayidx32_conv10_mult_x_im9_b = lowRangeB_uid1036_i_arrayidx32_conv10_mult_x_im9_in[3:0];

    // a_subconst_49_uid1039_i_arrayidx32_conv10_mult_x_im9(BITJOIN,1038)@96
    assign a_subconst_49_uid1039_i_arrayidx32_conv10_mult_x_im9_q = {a_subconst_49_sumAHighB_uid1038_i_arrayidx32_conv10_mult_x_im9_q, lowRangeB_uid1036_i_arrayidx32_conv10_mult_x_im9_b};

    // sR_bottomRange_uid1043_i_arrayidx32_conv10_mult_x_im9(BITSELECT,1042)@96
    assign sR_bottomRange_uid1043_i_arrayidx32_conv10_mult_x_im9_in = a_subconst_49_uid1039_i_arrayidx32_conv10_mult_x_im9_q[15:0];
    assign sR_bottomRange_uid1043_i_arrayidx32_conv10_mult_x_im9_b = sR_bottomRange_uid1043_i_arrayidx32_conv10_mult_x_im9_in[15:0];

    // redist18_sR_bottomRange_uid1043_i_arrayidx32_conv10_mult_x_im9_b_1_0(REG,1375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sR_bottomRange_uid1043_i_arrayidx32_conv10_mult_x_im9_b_1_0_q <= $unsigned(16'b0000000000000000);
        end
        else if (SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist18_sR_bottomRange_uid1043_i_arrayidx32_conv10_mult_x_im9_b_1_0_q <= $unsigned(sR_bottomRange_uid1043_i_arrayidx32_conv10_mult_x_im9_b);
        end
    end

    // sR_mergedSignalTM_uid1044_i_arrayidx32_conv10_mult_x_im9(BITJOIN,1043)@97
    assign sR_mergedSignalTM_uid1044_i_arrayidx32_conv10_mult_x_im9_q = {redist18_sR_bottomRange_uid1043_i_arrayidx32_conv10_mult_x_im9_b_1_0_q, sR_bottomExtension_uid835_i_arrayidx32_conv10_mult_x_im0_q};

    // i_arrayidx32_conv10_mult_x_sums_align_3(BITSHIFT,314)@97
    assign i_arrayidx32_conv10_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1044_i_arrayidx32_conv10_mult_x_im9_q, 6'b000000 };
    assign i_arrayidx32_conv10_mult_x_sums_align_3_q = i_arrayidx32_conv10_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,1298)@97
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx32_conv10_mult_x_sums_align_3_q[3:0]);
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx32_conv10_mult_x_sums_align_3_q[27:4]);

    // highBBits_uid899_i_arrayidx32_conv10_mult_x_im3(BITSELECT,898)@96
    assign highBBits_uid899_i_arrayidx32_conv10_mult_x_im3_b = sel_for_coalesced_delay_2_b[17:4];

    // highBBits_uid894_i_arrayidx32_conv10_mult_x_im3(BITSELECT,893)@95
    assign highBBits_uid894_i_arrayidx32_conv10_mult_x_im3_b = i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_c[17:1];

    // addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3(ADD,894)@95 + 1
    assign addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_a = {1'b0, i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_b = {2'b00, highBBits_uid894_i_arrayidx32_conv10_mult_x_im3_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_o <= $unsigned(addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_a) + $unsigned(addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_q = addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_o[18:0];

    // lowRangeB_uid893_i_arrayidx32_conv10_mult_x_im3(BITSELECT,892)@96
    assign lowRangeB_uid893_i_arrayidx32_conv10_mult_x_im3_in = sel_for_coalesced_delay_2_b[0:0];
    assign lowRangeB_uid893_i_arrayidx32_conv10_mult_x_im3_b = lowRangeB_uid893_i_arrayidx32_conv10_mult_x_im3_in[0:0];

    // add_uid896_i_arrayidx32_conv10_mult_x_im3(BITJOIN,895)@96
    assign add_uid896_i_arrayidx32_conv10_mult_x_im3_q = {addsumAHighB_uid895_i_arrayidx32_conv10_mult_x_im3_q, lowRangeB_uid893_i_arrayidx32_conv10_mult_x_im3_b};

    // a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3(ADD,899)@96
    assign a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3_a = {1'b0, add_uid896_i_arrayidx32_conv10_mult_x_im3_q};
    assign a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3_b = {7'b0000000, highBBits_uid899_i_arrayidx32_conv10_mult_x_im3_b};
    assign a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3_o = $unsigned(a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3_a) + $unsigned(a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3_b);
    assign a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3_q = a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3_o[20:0];

    // lowRangeB_uid898_i_arrayidx32_conv10_mult_x_im3(BITSELECT,897)@96
    assign lowRangeB_uid898_i_arrayidx32_conv10_mult_x_im3_in = sel_for_coalesced_delay_2_b[3:0];
    assign lowRangeB_uid898_i_arrayidx32_conv10_mult_x_im3_b = lowRangeB_uid898_i_arrayidx32_conv10_mult_x_im3_in[3:0];

    // a_subconst_49_uid901_i_arrayidx32_conv10_mult_x_im3(BITJOIN,900)@96
    assign a_subconst_49_uid901_i_arrayidx32_conv10_mult_x_im3_q = {a_subconst_49_sumAHighB_uid900_i_arrayidx32_conv10_mult_x_im3_q, lowRangeB_uid898_i_arrayidx32_conv10_mult_x_im3_b};

    // sR_bottomRange_uid905_i_arrayidx32_conv10_mult_x_im3(BITSELECT,904)@96
    assign sR_bottomRange_uid905_i_arrayidx32_conv10_mult_x_im3_in = a_subconst_49_uid901_i_arrayidx32_conv10_mult_x_im3_q[23:0];
    assign sR_bottomRange_uid905_i_arrayidx32_conv10_mult_x_im3_b = sR_bottomRange_uid905_i_arrayidx32_conv10_mult_x_im3_in[23:0];

    // redist20_sR_bottomRange_uid905_i_arrayidx32_conv10_mult_x_im3_b_1_0(REG,1377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sR_bottomRange_uid905_i_arrayidx32_conv10_mult_x_im3_b_1_0_q <= $unsigned(24'b000000000000000000000000);
        end
        else if (SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist20_sR_bottomRange_uid905_i_arrayidx32_conv10_mult_x_im3_b_1_0_q <= $unsigned(sR_bottomRange_uid905_i_arrayidx32_conv10_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid906_i_arrayidx32_conv10_mult_x_im3(BITJOIN,905)@97
    assign sR_mergedSignalTM_uid906_i_arrayidx32_conv10_mult_x_im3_q = {redist20_sR_bottomRange_uid905_i_arrayidx32_conv10_mult_x_im3_b_1_0_q, sR_bottomExtension_uid835_i_arrayidx32_conv10_mult_x_im0_q};

    // i_arrayidx32_conv10_mult_x_sums_align_2(BITSHIFT,313)@97
    assign i_arrayidx32_conv10_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid906_i_arrayidx32_conv10_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx32_conv10_mult_x_sums_align_2_q = i_arrayidx32_conv10_mult_x_sums_align_2_qint[47:0];

    // i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,1283)@97
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx32_conv10_mult_x_sums_align_2_q};

    // highBBits_uid830_i_arrayidx32_conv10_mult_x_im0(BITSELECT,829)@95
    assign highBBits_uid830_i_arrayidx32_conv10_mult_x_im0_b = i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_b[17:4];

    // redist21_highBBits_uid830_i_arrayidx32_conv10_mult_x_im0_b_1_0(REG,1378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_highBBits_uid830_i_arrayidx32_conv10_mult_x_im0_b_1_0_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backEN == 1'b1)
        begin
            redist21_highBBits_uid830_i_arrayidx32_conv10_mult_x_im0_b_1_0_q <= $unsigned(highBBits_uid830_i_arrayidx32_conv10_mult_x_im0_b);
        end
    end

    // highBBits_uid825_i_arrayidx32_conv10_mult_x_im0(BITSELECT,824)@95
    assign highBBits_uid825_i_arrayidx32_conv10_mult_x_im0_b = i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_b[17:1];

    // addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0(ADD,825)@95 + 1
    assign addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_a = {1'b0, i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_b = {2'b00, highBBits_uid825_i_arrayidx32_conv10_mult_x_im0_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_o <= $unsigned(addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_a) + $unsigned(addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_q = addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_o[18:0];

    // lowRangeB_uid824_i_arrayidx32_conv10_mult_x_im0(BITSELECT,823)@95
    assign lowRangeB_uid824_i_arrayidx32_conv10_mult_x_im0_in = i_arrayidx32_conv10_mult_x_bs1_merged_bit_select_b[0:0];
    assign lowRangeB_uid824_i_arrayidx32_conv10_mult_x_im0_b = lowRangeB_uid824_i_arrayidx32_conv10_mult_x_im0_in[0:0];

    // redist22_lowRangeB_uid824_i_arrayidx32_conv10_mult_x_im0_b_1_0(REG,1379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_lowRangeB_uid824_i_arrayidx32_conv10_mult_x_im0_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_backEN == 1'b1)
        begin
            redist22_lowRangeB_uid824_i_arrayidx32_conv10_mult_x_im0_b_1_0_q <= $unsigned(lowRangeB_uid824_i_arrayidx32_conv10_mult_x_im0_b);
        end
    end

    // add_uid827_i_arrayidx32_conv10_mult_x_im0(BITJOIN,826)@96
    assign add_uid827_i_arrayidx32_conv10_mult_x_im0_q = {addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_q, redist22_lowRangeB_uid824_i_arrayidx32_conv10_mult_x_im0_b_1_0_q};

    // a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0(ADD,830)@96
    assign a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0_a = {1'b0, add_uid827_i_arrayidx32_conv10_mult_x_im0_q};
    assign a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0_b = {7'b0000000, redist21_highBBits_uid830_i_arrayidx32_conv10_mult_x_im0_b_1_0_q};
    assign a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0_o = $unsigned(a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0_a) + $unsigned(a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0_b);
    assign a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0_q = a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0_o[20:0];

    // i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2(BITSELECT,1275)@96
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b = $unsigned(a_subconst_49_sumAHighB_uid831_i_arrayidx32_conv10_mult_x_im0_q[19:0]);

    // redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0(REG,1370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_q <= $unsigned(20'b00000000000000000000);
        end
        else if (SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_q <= $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b);
        end
    end

    // i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,1274)@97
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(redist30_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_2_1_q[3:0]);

    // i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1277)@97
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b, redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_q, i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid835_i_arrayidx32_conv10_mult_x_im0_q};

    // SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0(STALLENABLE,1797)
    // Valid signal propagation
    assign SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_V0 = SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_s_tv_0 = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backStall & SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN = ~ (SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_v_s_0 = SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN & SE_addsumAHighB_uid826_i_arrayidx32_conv10_mult_x_im0_V0;
    // Backward Stall generation
    assign SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backStall = ~ (SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b0)
            begin
                SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0 <= SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0 & SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0 <= SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2(STALLREG,2032)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= 24'bxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c);
                SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= $unsigned(redist30_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_i_valid = SE_redist13_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_V0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_V = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 : i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data1
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 : i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data2
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D2 = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 : i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data3
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D3 = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 : i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    // Data4
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D4 = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 : redist30_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_2_1_q;

    // redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_0(REG,1391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_0_q <= $unsigned(SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D4);
        end
    end

    // i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2(ADD,1166)@97 + 1
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D0};
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // redist0_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,1360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(24'b000000000000000000000000);
        end
        else if (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist0_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D2);
        end
    end

    // i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1286)@98
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist0_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // redist1_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0(REG,1361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist1_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_D3);
        end
    end

    // i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1280)@98
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx17_conv10_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist1_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q};

    // SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_4(STALLENABLE,1862)
    // Valid signal propagation
    assign SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_out_stall_out | ~ (SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_4_wireValid = bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13(BLACKBOX,118)@97
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@98
    // out out_stall_out@20000000
    // out out_valid_out@98
    conv1_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_0 thei_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_backStall),
        .in_valid_in(SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13(BITJOIN,1429)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_q = i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13(BITSELECT,1430)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_q[63:0]);

    // i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,1290)@98
    assign i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_b[51:0]);
    assign i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_b[63:52]);

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13(STALLENABLE,1556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_consumed0 = (~ (SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_consumed1 = (~ (SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_wireValid = i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_out_valid_out;

    // SR_SE_i_arrayidx32_conv10_add_x_p1_of_2(STALLREG,2033)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_valid <= SE_i_arrayidx32_conv10_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_and0 = SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_V0;
    assign SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_V0 & SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_backStall = SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_V = SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_D0 = SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_data0 : i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_D1 = SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_r_data1 : i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_q;

    // SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2(STALLENABLE,1729)
    // Valid signal propagation
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_V0 = SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_V1 = SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_backStall & SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backStall & SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_or0 = SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2(STALLREG,2037)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= $unsigned(redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_i_valid = SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_V = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 : i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 : i_arrayidx32_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 : i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_D3 = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 : redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_0_q;

    // i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2(ADD,1167)@98 + 1
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_D2;
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_D1}, i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_o <= 27'b0;
        end
        else if (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_o[25:1];

    // i_arrayidx32_conv10_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1244)@99
    assign i_arrayidx32_conv10_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx32_conv10_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1246)@99
    assign i_arrayidx32_conv10_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx32_conv10_add_x_BitSelect_for_b_tessel1_0_b};

    // redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,1368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx32_conv10_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1241)@99
    assign i_arrayidx32_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2(STALLENABLE,1730)
    // Valid signal propagation
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_V0 = SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_V1 = SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_backStall & SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 = SR_SE_redist31_i_llvm_fpga_pop_i32_channel_029_pop1138_pop27_conv116_out_data_out_5_2_backStall & SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_or0 = SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 | SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 & SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1795)
    // Valid signal propagation
    assign SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_backStall & SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out03316_conv13_V1;
    // Backward Stall generation
    assign SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx32_conv10_add_x_p2_of_2(STALLREG,2038)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_valid <= SE_i_arrayidx32_conv10_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx32_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx32_conv10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx32_conv10_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_and0 = SE_i_arrayidx32_conv10_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_and1 = SE_redist8_i_arrayidx32_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_i_valid = SE_i_arrayidx32_conv10_mult_x_sums_result_add_0_0_p2_of_2_V0 & SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_backStall = SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_V = SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_D0 = SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_data0 : i_arrayidx32_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_D1 = SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_data1 : i_arrayidx32_conv10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_D2 = SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_r_data2 : i_arrayidx32_conv10_add_x_p1_of_2_c;

    // i_arrayidx32_conv10_add_x_p2_of_2(ADD,1140)@99 + 1
    assign i_arrayidx32_conv10_add_x_p2_of_2_cin = SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_D2;
    assign i_arrayidx32_conv10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx32_conv10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_D1}, i_arrayidx32_conv10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx32_conv10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx32_conv10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx32_conv10_add_x_p2_of_2_o <= $unsigned(i_arrayidx32_conv10_add_x_p2_of_2_a) + $unsigned(i_arrayidx32_conv10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx32_conv10_add_x_p2_of_2_q = i_arrayidx32_conv10_add_x_p2_of_2_o[13:1];

    // i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,1217)@100
    assign i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx32_conv10_add_x_p2_of_2_q[11:0]);

    // i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1219)@100
    assign i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_2(REG,1388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_2_q <= $unsigned(SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D6);
        end
    end

    // SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128(STALLENABLE,1623)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_V0 = SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_backStall = i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_wireValid = SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_V;

    // SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128(STALLREG,2070)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_valid <= SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_backStall & (SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_valid | SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_data0 <= $unsigned(redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_2_q);
                SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_conv15_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_and0 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_V2;
    assign SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V5 & SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_backStall = SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_V = SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_valid : SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_D0 = SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_data0 : redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_2_q;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_D1 = SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_conv15_b;

    // SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_3(STALLENABLE,1860)
    // Valid signal propagation
    assign SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_out_stall_out | ~ (SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_3_wireValid = bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12(BLACKBOX,119)@98
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@99
    // out out_stall_out@20000000
    // out out_valid_out@99
    conv1_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_0 thei_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_backStall),
        .in_valid_in(SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12(BITJOIN,1432)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_q = i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12(BITSELECT,1433)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_q[63:0]);

    // i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,1291)@99
    assign i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_b[51:0]);
    assign i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_b[63:52]);

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12(STALLENABLE,1558)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_consumed0 = (~ (SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_consumed1 = (~ (SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_wireValid = i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_out_valid_out;

    // SR_SE_i_arrayidx17_conv10_add_x_p1_of_2(STALLREG,2053)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_valid <= SE_i_arrayidx17_conv10_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_and0 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_V0;
    assign SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_V0 & SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_backStall = SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_V = SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_D0 = SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_data0 : i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_D1 = SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_r_data1 : i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_q;

    // i_arrayidx17_conv10_add_x_p1_of_2(ADD,1094)@99 + 1
    assign i_arrayidx17_conv10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_D0};
    assign i_arrayidx17_conv10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx17_conv10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx17_conv10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx17_conv10_add_x_p1_of_2_o <= $unsigned(i_arrayidx17_conv10_add_x_p1_of_2_a) + $unsigned(i_arrayidx17_conv10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx17_conv10_add_x_p1_of_2_c[0] = i_arrayidx17_conv10_add_x_p1_of_2_o[52];
    assign i_arrayidx17_conv10_add_x_p1_of_2_q = i_arrayidx17_conv10_add_x_p1_of_2_o[51:0];

    // i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2(ADD,1149)@99 + 1
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D2;
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_D1}, i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_o <= 22'b0;
        end
        else if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_o[20:1];

    // i_arrayidx17_conv10_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1188)@100
    assign i_arrayidx17_conv10_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx17_conv10_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1190)@100
    assign i_arrayidx17_conv10_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx17_conv10_add_x_BitSelect_for_b_tessel1_0_b};

    // redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,1367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx17_conv10_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1185)@100
    assign i_arrayidx17_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1794)
    // Valid signal propagation
    assign SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_backStall & SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024a28f32_in03013_conv12_V1;
    // Backward Stall generation
    assign SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx17_conv10_add_x_p1_of_2(STALLENABLE,1710)
    // Valid signal propagation
    assign SE_i_arrayidx17_conv10_add_x_p1_of_2_V0 = SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx17_conv10_add_x_p1_of_2_V1 = SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx17_conv10_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx17_conv10_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_backStall & SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx17_conv10_add_x_p1_of_2_or0 = SE_i_arrayidx17_conv10_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx17_conv10_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx17_conv10_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx17_conv10_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx17_conv10_add_x_p1_of_2_v_s_0 = SE_i_arrayidx17_conv10_add_x_p1_of_2_backEN & SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx17_conv10_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx17_conv10_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx17_conv10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_0 & SE_i_arrayidx17_conv10_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx17_conv10_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx17_conv10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_1 & SE_i_arrayidx17_conv10_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx17_conv10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx17_conv10_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // i_arrayidx17_conv10_dupName_0_add_x_p1_of_2(ADD,1085)@100 + 1
    assign i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_D0};
    assign i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q = i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_o[51:0];

    // i_arrayidx17_conv10_add_x_p2_of_2(ADD,1095)@100 + 1
    assign i_arrayidx17_conv10_add_x_p2_of_2_cin = SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_D2;
    assign i_arrayidx17_conv10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx17_conv10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_D1}, i_arrayidx17_conv10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx17_conv10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx17_conv10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx17_conv10_add_x_p2_of_2_o <= $unsigned(i_arrayidx17_conv10_add_x_p2_of_2_a) + $unsigned(i_arrayidx17_conv10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx17_conv10_add_x_p2_of_2_q = i_arrayidx17_conv10_add_x_p2_of_2_o[13:1];

    // i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,1171)@101
    assign i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx17_conv10_add_x_p2_of_2_q[11:0]);

    // i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1173)@101
    assign i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0(STALLENABLE,1801)
    // Valid signal propagation
    assign SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_V0 = SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_backStall & SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0(STALLREG,2057)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_V = SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q;

    // SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2(STALLENABLE,1707)
    // Valid signal propagation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_V0 = SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_V1 = SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_s_tv_1 = SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_or0 = SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2(STALLENABLE,1708)
    // Valid signal propagation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_V0 = SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_backStall & SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2(STALLREG,2056)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_valid <= SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_and0 = SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_and1 = SE_i_arrayidx17_conv10_add_x_p2_of_2_V0 & SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_i_valid = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_V0 & SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_V = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_data0 : i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_data1 : i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_r_data2 : i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_c;

    // SE_i_arrayidx17_conv10_add_x_p2_of_2(STALLENABLE,1711)
    // Valid signal propagation
    assign SE_i_arrayidx17_conv10_add_x_p2_of_2_V0 = SE_i_arrayidx17_conv10_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx17_conv10_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx17_conv10_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx17_conv10_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx17_conv10_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx17_conv10_add_x_p2_of_2_v_s_0 = SE_i_arrayidx17_conv10_add_x_p2_of_2_backEN & SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx17_conv10_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx17_conv10_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx17_conv10_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx17_conv10_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx17_conv10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx17_conv10_add_x_p2_of_2_R_v_0 & SE_i_arrayidx17_conv10_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx17_conv10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx17_conv10_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx17_conv10_add_x_p2_of_2(STALLREG,2055)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_valid <= SE_i_arrayidx17_conv10_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx17_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx17_conv10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx17_conv10_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_and0 = SE_i_arrayidx17_conv10_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_and1 = SE_redist7_i_arrayidx17_conv10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_i_valid = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_V0 & SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_backStall = SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_V = SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_D0 = SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_data0 : i_arrayidx17_conv10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_D1 = SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_data1 : i_arrayidx17_conv10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_D2 = SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_r_data2 : i_arrayidx17_conv10_add_x_p1_of_2_c;

    // SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2(STALLENABLE,1726)
    // Valid signal propagation
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_V0 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_V1 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_V2 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_i_arrayidx17_conv10_add_x_p2_of_2_backStall & SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 = SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_backStall & SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_or0 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_or1 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 | SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_or0;
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 | SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 & SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 & SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx32_conv10_add_x_p2_of_2(STALLENABLE,1724)
    // Valid signal propagation
    assign SE_i_arrayidx32_conv10_add_x_p2_of_2_V0 = SE_i_arrayidx32_conv10_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx32_conv10_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx32_conv10_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx32_conv10_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx32_conv10_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx32_conv10_add_x_p2_of_2_v_s_0 = SE_i_arrayidx32_conv10_add_x_p2_of_2_backEN & SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx32_conv10_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx32_conv10_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx32_conv10_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx32_conv10_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx32_conv10_add_x_p2_of_2_R_v_0 & SE_i_arrayidx32_conv10_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx32_conv10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx32_conv10_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2(STALLREG,2040)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_valid <= SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_and0 = SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_and1 = SE_i_arrayidx32_conv10_add_x_p2_of_2_V0 & SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_i_valid = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_V1 & SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_V = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_data0 : i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_data1 : i_arrayidx32_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_r_data2 : i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_c;

    // i_arrayidx32_conv10_dupName_0_add_x_p2_of_2(ADD,1122)@100 + 1
    assign i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_D2;
    assign i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_D1}, i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_q = i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx32_conv10_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,1227)@101
    assign i_arrayidx32_conv10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx32_conv10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1229)@101
    assign i_arrayidx32_conv10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx32_conv10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2(STALLENABLE,1719)
    // Valid signal propagation
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_V0 = SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,1735)
    // Valid signal propagation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_V2 = 1'b1;
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_V3 = 1'b1;

    // SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2(STALLREG,2041)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_valid <= SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx32_conv10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_and0 = SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_and1 = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel1_0_V3 & SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_i_valid = SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_V0 & SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backStall = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_V = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_D0 = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_data0 : i_arrayidx32_conv10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_D1 = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_data1 : i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_D2 = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_r_data2 : i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_c;

    // SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2(STALLENABLE,1721)
    // Valid signal propagation
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_V0 = SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_s_tv_0 = SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_backStall & SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_v_s_0 = SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backEN & SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_R_v_0 & SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q(STALLENABLE,1722)
    // Valid signal propagation
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_V0 = SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_backStall = coalesced_delay_3_fifo_stall_out | ~ (SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_and0 = SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_V0;
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_and1 = SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_V0 & SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_and0;
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V6 & SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_and1;

    // i_first_cleanup_xor_conv137(LOGICAL,101)@102
    assign i_first_cleanup_xor_conv137_q = i_first_cleanup_conv118_sel_x_b ^ VCC_q;

    // SE_redist26_i_reduction_conv1_0_conv136_q_2_0(STALLENABLE,1810)
    // Valid signal propagation
    assign SE_redist26_i_reduction_conv1_0_conv136_q_2_0_V0 = SE_redist26_i_reduction_conv1_0_conv136_q_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist26_i_reduction_conv1_0_conv136_q_2_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_backStall & SE_redist26_i_reduction_conv1_0_conv136_q_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist26_i_reduction_conv1_0_conv136_q_2_0_backEN = ~ (SE_redist26_i_reduction_conv1_0_conv136_q_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_reduction_conv1_0_conv136_q_2_0_v_s_0 = SE_redist26_i_reduction_conv1_0_conv136_q_2_0_backEN & SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_V;
    // Backward Stall generation
    assign SE_redist26_i_reduction_conv1_0_conv136_q_2_0_backStall = ~ (SE_redist26_i_reduction_conv1_0_conv136_q_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_reduction_conv1_0_conv136_q_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_reduction_conv1_0_conv136_q_2_0_backEN == 1'b0)
            begin
                SE_redist26_i_reduction_conv1_0_conv136_q_2_0_R_v_0 <= SE_redist26_i_reduction_conv1_0_conv136_q_2_0_R_v_0 & SE_redist26_i_reduction_conv1_0_conv136_q_2_0_s_tv_0;
            end
            else
            begin
                SE_redist26_i_reduction_conv1_0_conv136_q_2_0_R_v_0 <= SE_redist26_i_reduction_conv1_0_conv136_q_2_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117(BITJOIN,1466)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_q = i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117(BITSELECT,1467)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135(STALLENABLE,1606)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_wireValid = i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135(BLACKBOX,143)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    conv1_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135 (
        .in_data_in(bubble_select_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_feedback_stall_out_28),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_conv15_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_V0),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_out_feedback_valid_out_28),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135(STALLENABLE,1605)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_backStall = i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V2;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_wireValid = SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_and0;

    // SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo(STALLENABLE,1824)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_fromReg0 <= '0;
            SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_fromReg0 <= SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_toReg0;
            // Successor 1
            SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_fromReg1 <= SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_backStall) & SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_wireValid) | SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_fromReg0;
    assign SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_consumed1 = (~ (SE_i_reduction_conv1_0_conv136_backStall) & SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_wireValid) | SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_fromReg1;
    // Consuming
    assign SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_StallValid = SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_backStall & SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_wireValid;
    assign SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_toReg0 = SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_StallValid & SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_consumed0;
    assign SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_toReg1 = SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_StallValid & SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_or0 = SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_consumed0;
    assign SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_wireStall = ~ (SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_consumed1 & SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_or0);
    assign SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_backStall = SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_V0 = SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_wireValid & ~ (SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_fromReg0);
    assign SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_V1 = SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_wireValid & ~ (SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_wireValid = redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117(STALLENABLE,1578)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_backStall = redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_wireValid = i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_valid_out;

    // redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo(STALLFIFO,1394)
    assign redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_V0;
    assign redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_stall_in = SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_backStall;
    assign redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_b;
    assign redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_valid_in_bitsignaltemp = redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_valid_in[0];
    assign redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_stall_in_bitsignaltemp = redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_stall_in[0];
    assign redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_valid_out[0] = redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_valid_out_bitsignaltemp;
    assign redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_stall_out[0] = redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo (
        .valid_in(redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_valid_in_bitsignaltemp),
        .stall_in(redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_b),
        .valid_out(redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_valid_out_bitsignaltemp),
        .stall_out(redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_stall_out_bitsignaltemp),
        .data_out(redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo(BITJOIN,1510)
    assign bubble_join_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_q = redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_data_out;

    // bubble_select_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo(BITSELECT,1511)
    assign bubble_select_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_b = $unsigned(bubble_join_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113(BITJOIN,1463)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_q = i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113(BITSELECT,1464)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130(STALLENABLE,1604)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_wireValid = i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130(BLACKBOX,142)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    conv1_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_0 thei_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130 (
        .in_data_in(bubble_select_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_feedback_stall_out_32),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_conv15_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_V0),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_out_feedback_valid_out_32),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130(STALLENABLE,1603)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_backStall = i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_wireValid = SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_and0;

    // SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo(STALLENABLE,1826)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_fromReg0 <= '0;
            SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_fromReg0 <= SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_toReg0;
            // Successor 1
            SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_fromReg1 <= SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_backStall) & SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_wireValid) | SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_fromReg0;
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_consumed1 = (~ (SE_i_reduction_conv1_0_conv136_backStall) & SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_wireValid) | SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_fromReg1;
    // Consuming
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_StallValid = SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_backStall & SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_wireValid;
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_toReg0 = SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_StallValid & SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_consumed0;
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_toReg1 = SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_StallValid & SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_or0 = SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_consumed0;
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_wireStall = ~ (SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_consumed1 & SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_or0);
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_backStall = SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_V0 = SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_wireValid & ~ (SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_fromReg0);
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_V1 = SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_wireValid & ~ (SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_wireValid = redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113(STALLENABLE,1576)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_backStall = redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_wireValid = i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_valid_out;

    // redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo(STALLFIFO,1395)
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_V0;
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_stall_in = SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_backStall;
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_b;
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_valid_in_bitsignaltemp = redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_valid_in[0];
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_stall_in_bitsignaltemp = redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_stall_in[0];
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_valid_out[0] = redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_valid_out_bitsignaltemp;
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_stall_out[0] = redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo (
        .valid_in(redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_valid_in_bitsignaltemp),
        .stall_in(redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_b),
        .valid_out(redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_valid_out_bitsignaltemp),
        .stall_out(redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_stall_out_bitsignaltemp),
        .data_out(redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo(BITJOIN,1513)
    assign bubble_join_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_q = redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_data_out;

    // bubble_select_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo(BITSELECT,1514)
    assign bubble_select_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_b = $unsigned(bubble_join_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_q[0:0]);

    // i_reduction_conv1_0_conv136(LOGICAL,161)@100 + 1
    assign i_reduction_conv1_0_conv136_qi = bubble_select_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_b | bubble_select_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_conv1_0_conv136_delay ( .xin(i_reduction_conv1_0_conv136_qi), .xout(i_reduction_conv1_0_conv136_q), .ena(SE_i_reduction_conv1_0_conv136_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_i_reduction_conv1_0_conv136(STALLENABLE,1633)
    // Valid signal propagation
    assign SE_i_reduction_conv1_0_conv136_V0 = SE_i_reduction_conv1_0_conv136_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_conv1_0_conv136_s_tv_0 = SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_backStall & SE_i_reduction_conv1_0_conv136_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_conv1_0_conv136_backEN = ~ (SE_i_reduction_conv1_0_conv136_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_conv1_0_conv136_and0 = SE_out_redist32_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out_98_fifo_V1 & SE_i_reduction_conv1_0_conv136_backEN;
    assign SE_i_reduction_conv1_0_conv136_v_s_0 = SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out_98_fifo_V1 & SE_i_reduction_conv1_0_conv136_and0;
    // Backward Stall generation
    assign SE_i_reduction_conv1_0_conv136_backStall = ~ (SE_i_reduction_conv1_0_conv136_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_conv1_0_conv136_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_conv1_0_conv136_backEN == 1'b0)
            begin
                SE_i_reduction_conv1_0_conv136_R_v_0 <= SE_i_reduction_conv1_0_conv136_R_v_0 & SE_i_reduction_conv1_0_conv136_s_tv_0;
            end
            else
            begin
                SE_i_reduction_conv1_0_conv136_R_v_0 <= SE_i_reduction_conv1_0_conv136_v_s_0;
            end

        end
    end

    // SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0(STALLREG,2047)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_valid <= 1'b0;
            SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_valid <= SE_redist26_i_reduction_conv1_0_conv136_q_2_0_backStall & (SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_valid | SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_i_valid);

            if (SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_data0 <= i_reduction_conv1_0_conv136_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_i_valid = SE_i_reduction_conv1_0_conv136_V0;
    // Stall signal propagation
    assign SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_backStall = SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_valid | ~ (SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_i_valid);

    // Valid
    assign SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_V = SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_valid == 1'b1 ? SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_valid : SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_i_valid;

    assign SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_D0 = SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_valid == 1'b1 ? SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_r_data0 : i_reduction_conv1_0_conv136_q;

    // redist26_i_reduction_conv1_0_conv136_q_2_0(REG,1383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_reduction_conv1_0_conv136_q_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist26_i_reduction_conv1_0_conv136_q_2_0_backEN == 1'b1)
        begin
            redist26_i_reduction_conv1_0_conv136_q_2_0_q <= $unsigned(SR_SE_redist26_i_reduction_conv1_0_conv136_q_2_0_D0);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18(BITJOIN,1469)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_q = i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18(BITSELECT,1470)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_q[0:0]);

    // i_reduction_conv1_1_conv148(LOGICAL,162)@102
    assign i_reduction_conv1_1_conv148_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_b | redist26_i_reduction_conv1_0_conv136_q_2_0_q;

    // i_arrayidx25_conv10_add_x_p2_of_2(ADD,1113)@101 + 1
    assign i_arrayidx25_conv10_add_x_p2_of_2_cin = SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_D2;
    assign i_arrayidx25_conv10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx25_conv10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx25_conv10_add_x_p2_of_2_D1}, i_arrayidx25_conv10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx25_conv10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx25_conv10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx25_conv10_add_x_p2_of_2_o <= $unsigned(i_arrayidx25_conv10_add_x_p2_of_2_a) + $unsigned(i_arrayidx25_conv10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx25_conv10_add_x_p2_of_2_q = i_arrayidx25_conv10_add_x_p2_of_2_o[13:1];

    // redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0(REG,1372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx25_conv10_add_x_BitJoin_for_q(BITJOIN,1114)@102
    assign i_arrayidx25_conv10_add_x_BitJoin_for_q_q = {i_arrayidx25_conv10_add_x_p2_of_2_q, redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx25_conv10_dupName_0_trunc_sel_x(BITSELECT,37)@102
    assign i_arrayidx25_conv10_dupName_0_trunc_sel_x_b = i_arrayidx25_conv10_add_x_BitJoin_for_q_q[63:0];

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18(STALLENABLE,1580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_consumed0 = (~ (SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_consumed1 = (~ (SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_consumed2 = (~ (SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_or1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_wireValid = SE_redist26_i_reduction_conv1_0_conv136_q_2_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_and0;

    // SE_i_arrayidx25_conv10_add_x_BitJoin_for_q(STALLENABLE,1717)
    // Valid signal propagation
    assign SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_V0 = SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_unnamed_conv19_conv154_out_o_stall | ~ (SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_wireValid = SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_V;

    // SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q(STALLREG,2048)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_valid <= 1'b0;
            SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_data1 <= 1'bx;
            SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_valid <= SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_backStall & (SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_valid | SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_i_valid);

            if (SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_data0 <= i_arrayidx25_conv10_dupName_0_trunc_sel_x_b;
                SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_data1 <= i_reduction_conv1_1_conv148_q;
                SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_data2 <= i_first_cleanup_xor_conv137_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_and0 = SE_i_arrayidx25_conv10_add_x_p2_of_2_V0;
    assign SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_and1 = SE_redist15_i_arrayidx25_conv10_add_x_p1_of_2_q_1_0_V0 & SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_and0;
    assign SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V5 & SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_and1;
    assign SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_V2 & SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_and2;
    // Stall signal propagation
    assign SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_backStall = SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_valid | ~ (SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_i_valid);

    // Valid
    assign SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_V = SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_valid : SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_i_valid;

    // Data0
    assign SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_D0 = SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_data0 : i_arrayidx25_conv10_dupName_0_trunc_sel_x_b;
    // Data1
    assign SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_D1 = SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_data1 : i_reduction_conv1_1_conv148_q;
    // Data2
    assign SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_D2 = SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_r_data2 : i_first_cleanup_xor_conv137_q;

    // i_arrayidx23_conv10_add_x_p2_of_2(ADD,1104)@101 + 1
    assign i_arrayidx23_conv10_add_x_p2_of_2_cin = SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_D2;
    assign i_arrayidx23_conv10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx23_conv10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx23_conv10_add_x_p2_of_2_D1}, i_arrayidx23_conv10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_conv10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx23_conv10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_conv10_add_x_p2_of_2_o <= $unsigned(i_arrayidx23_conv10_add_x_p2_of_2_a) + $unsigned(i_arrayidx23_conv10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx23_conv10_add_x_p2_of_2_q = i_arrayidx23_conv10_add_x_p2_of_2_o[13:1];

    // redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0(REG,1373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx23_conv10_add_x_BitJoin_for_q(BITJOIN,1105)@102
    assign i_arrayidx23_conv10_add_x_BitJoin_for_q_q = {i_arrayidx23_conv10_add_x_p2_of_2_q, redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx23_conv10_dupName_0_trunc_sel_x(BITSELECT,31)@102
    assign i_arrayidx23_conv10_dupName_0_trunc_sel_x_b = i_arrayidx23_conv10_add_x_BitJoin_for_q_q[63:0];

    // SE_i_arrayidx23_conv10_add_x_BitJoin_for_q(STALLENABLE,1714)
    // Valid signal propagation
    assign SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_V0 = SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_unnamed_conv18_conv153_out_o_stall | ~ (SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_wireValid = SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_V;

    // SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q(STALLREG,2052)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_data1 <= 1'bx;
            SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_valid <= SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_backStall & (SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_valid | SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_i_valid);

            if (SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_data0 <= i_arrayidx23_conv10_dupName_0_trunc_sel_x_b;
                SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_data1 <= i_reduction_conv1_1_conv148_q;
                SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_data2 <= i_first_cleanup_xor_conv137_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_and0 = SE_i_arrayidx23_conv10_add_x_p2_of_2_V0;
    assign SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_and1 = SE_redist16_i_arrayidx23_conv10_add_x_p1_of_2_q_1_0_V0 & SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_and0;
    assign SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V4 & SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_and1;
    assign SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_V1 & SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_and2;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_backStall = SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_valid | ~ (SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_V = SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_valid : SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_D0 = SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_data0 : i_arrayidx23_conv10_dupName_0_trunc_sel_x_b;
    // Data1
    assign SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_D1 = SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_data1 : i_reduction_conv1_1_conv148_q;
    // Data2
    assign SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_D2 = SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_r_data2 : i_first_cleanup_xor_conv137_q;

    // leftShiftStage0Idx1Rng1_uid321_i_cleanups_shl_conv10_shift_x(BITSELECT,320)@102
    assign leftShiftStage0Idx1Rng1_uid321_i_cleanups_shl_conv10_shift_x_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid321_i_cleanups_shl_conv10_shift_x_b = leftShiftStage0Idx1Rng1_uid321_i_cleanups_shl_conv10_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid322_i_cleanups_shl_conv10_shift_x(BITJOIN,321)@102
    assign leftShiftStage0Idx1_uid322_i_cleanups_shl_conv10_shift_x_q = {leftShiftStage0Idx1Rng1_uid321_i_cleanups_shl_conv10_shift_x_b, GND_q};

    // leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x(MUX,323)@102
    assign leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_b or leftShiftStage0Idx1_uid322_i_cleanups_shl_conv10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_s)
            1'b0 : leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_b;
            1'b1 : leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_q = leftShiftStage0Idx1_uid322_i_cleanups_shl_conv10_shift_x_q;
            default : leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_conv119_vt_select_1(BITSELECT,98)@102
    assign i_cleanups_shl_conv119_vt_select_1_b = leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_q[1:1];

    // i_cleanups_shl_conv119_vt_join(BITJOIN,97)@102
    assign i_cleanups_shl_conv119_vt_join_q = {i_cleanups_shl_conv119_vt_select_1_b, GND_q};

    // i_or_conv150(LOGICAL,160)@102
    assign i_or_conv150_q = i_notcmp_conv141_q | i_first_cleanup_xor_conv137_q;

    // i_next_cleanups_conv155(MUX,155)@102
    assign i_next_cleanups_conv155_s = i_or_conv150_q;
    always @(i_next_cleanups_conv155_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_b or i_cleanups_shl_conv119_vt_join_q)
    begin
        unique case (i_next_cleanups_conv155_s)
            1'b0 : i_next_cleanups_conv155_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_b;
            1'b1 : i_next_cleanups_conv155_q = i_cleanups_shl_conv119_vt_join_q;
            default : i_next_cleanups_conv155_q = 2'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_push_i2_cleanups_push24_conv159(STALLENABLE,1616)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push24_conv159_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push24_conv159_wireValid = i_llvm_fpga_push_i2_cleanups_push24_conv159_out_valid_out;

    // i_llvm_fpga_push_i2_cleanups_push24_conv159(BLACKBOX,148)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    conv1_i_llvm_fpga_push_i2_cleanups_push24_0 thei_llvm_fpga_push_i2_cleanups_push24_conv159 (
        .in_data_in(SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_D0),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i2_cleanups_pop24_conv14_out_feedback_stall_out_24),
        .in_keep_going(SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push24_conv159_backStall),
        .in_valid_in(SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i2_cleanups_push24_conv159_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i2_cleanups_push24_conv159_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push24_conv159_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push24_conv159_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x(STALLENABLE,1648)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_V0 = SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_backStall = i_llvm_fpga_push_i2_cleanups_push24_conv159_out_stall_out | ~ (SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_wireValid = SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_V;

    // SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x(STALLREG,2069)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_valid <= 1'b0;
            SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_data0 <= 2'bxx;
            SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_valid <= SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_backStall & (SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_valid | SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_i_valid);

            if (SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_data0 <= i_next_cleanups_conv155_q;
                SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_data1 <= $unsigned(redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_V1;
    assign SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_and1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V0 & SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_and0;
    assign SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_i_valid = SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_V0 & SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_and1;
    // Stall signal propagation
    assign SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_backStall = SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_valid | ~ (SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_i_valid);

    // Valid
    assign SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_V = SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_valid : SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_i_valid;

    // Data0
    assign SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_D0 = SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_data0 : i_next_cleanups_conv155_q;
    // Data1
    assign SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_D1 = SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_r_data1 : redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_q;

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14(STALLENABLE,1586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg4 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg5 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg6 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed0 = (~ (SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed2 = (~ (SR_SE_i_masked_conv151_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed3 = (~ (SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed4 = (~ (SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed5 = (~ (SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg5;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed6 = (~ (SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg6;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg5 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed5;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_toReg6 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed6;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed4 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or5 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed5 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_consumed6 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_or5);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg4);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V5 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg5);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V6 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_wireValid = i_llvm_fpga_pop_i2_cleanups_pop24_conv14_out_valid_out;

    // i_masked_conv151(LOGICAL,154)@102 + 1
    assign i_masked_conv151_qi = SR_SE_i_masked_conv151_D0 & SR_SE_i_masked_conv151_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_conv151_delay ( .xin(i_masked_conv151_qi), .xout(i_masked_conv151_q), .ena(SE_i_masked_conv151_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist27_i_masked_conv151_q_98_fifo(STALLFIFO,1384)
    assign redist27_i_masked_conv151_q_98_fifo_valid_in = SE_in_redist27_i_masked_conv151_q_98_fifo_V0;
    assign redist27_i_masked_conv151_q_98_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_backStall;
    assign redist27_i_masked_conv151_q_98_fifo_data_in = i_masked_conv151_q;
    assign redist27_i_masked_conv151_q_98_fifo_valid_in_bitsignaltemp = redist27_i_masked_conv151_q_98_fifo_valid_in[0];
    assign redist27_i_masked_conv151_q_98_fifo_stall_in_bitsignaltemp = redist27_i_masked_conv151_q_98_fifo_stall_in[0];
    assign redist27_i_masked_conv151_q_98_fifo_valid_out[0] = redist27_i_masked_conv151_q_98_fifo_valid_out_bitsignaltemp;
    assign redist27_i_masked_conv151_q_98_fifo_stall_out[0] = redist27_i_masked_conv151_q_98_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist27_i_masked_conv151_q_98_fifo (
        .valid_in(redist27_i_masked_conv151_q_98_fifo_valid_in_bitsignaltemp),
        .stall_in(redist27_i_masked_conv151_q_98_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_conv151_q),
        .valid_out(redist27_i_masked_conv151_q_98_fifo_valid_out_bitsignaltemp),
        .stall_out(redist27_i_masked_conv151_q_98_fifo_stall_out_bitsignaltemp),
        .data_out(redist27_i_masked_conv151_q_98_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_redist27_i_masked_conv151_q_98_fifo(STALLENABLE,1811)
    // Valid signal propagation
    assign SE_in_redist27_i_masked_conv151_q_98_fifo_V0 = SE_in_redist27_i_masked_conv151_q_98_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist27_i_masked_conv151_q_98_fifo_backStall = redist27_i_masked_conv151_q_98_fifo_stall_out | ~ (SE_in_redist27_i_masked_conv151_q_98_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist27_i_masked_conv151_q_98_fifo_wireValid = SE_i_masked_conv151_V0;

    // SE_i_masked_conv151(STALLENABLE,1627)
    // Valid signal propagation
    assign SE_i_masked_conv151_V0 = SE_i_masked_conv151_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_conv151_s_tv_0 = SE_in_redist27_i_masked_conv151_q_98_fifo_backStall & SE_i_masked_conv151_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_conv151_backEN = ~ (SE_i_masked_conv151_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_conv151_v_s_0 = SE_i_masked_conv151_backEN & SR_SE_i_masked_conv151_V;
    // Backward Stall generation
    assign SE_i_masked_conv151_backStall = ~ (SE_i_masked_conv151_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_conv151_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_conv151_backEN == 1'b0)
            begin
                SE_i_masked_conv151_R_v_0 <= SE_i_masked_conv151_R_v_0 & SE_i_masked_conv151_s_tv_0;
            end
            else
            begin
                SE_i_masked_conv151_R_v_0 <= SE_i_masked_conv151_v_s_0;
            end

        end
    end

    // SR_SE_i_masked_conv151(STALLREG,2028)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_conv151_r_valid <= 1'b0;
            SR_SE_i_masked_conv151_r_data0 <= 1'bx;
            SR_SE_i_masked_conv151_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_conv151_r_valid <= SE_i_masked_conv151_backStall & (SR_SE_i_masked_conv151_r_valid | SR_SE_i_masked_conv151_i_valid);

            if (SR_SE_i_masked_conv151_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_conv151_r_data0 <= i_notcmp_conv141_q;
                SR_SE_i_masked_conv151_r_data1 <= i_first_cleanup_conv118_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_conv151_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V2;
    assign SR_SE_i_masked_conv151_i_valid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_V3 & SR_SE_i_masked_conv151_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_conv151_backStall = SR_SE_i_masked_conv151_r_valid | ~ (SR_SE_i_masked_conv151_i_valid);

    // Valid
    assign SR_SE_i_masked_conv151_V = SR_SE_i_masked_conv151_r_valid == 1'b1 ? SR_SE_i_masked_conv151_r_valid : SR_SE_i_masked_conv151_i_valid;

    // Data0
    assign SR_SE_i_masked_conv151_D0 = SR_SE_i_masked_conv151_r_valid == 1'b1 ? SR_SE_i_masked_conv151_r_data0 : i_notcmp_conv141_q;
    // Data1
    assign SR_SE_i_masked_conv151_D1 = SR_SE_i_masked_conv151_r_valid == 1'b1 ? SR_SE_i_masked_conv151_r_data1 : i_first_cleanup_conv118_sel_x_b;

    // c_i6_168(CONSTANT,90)
    assign c_i6_168_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_conv125(ADD,102)@102
    assign i_fpga_indvars_iv_next_conv125_a = {1'b0, bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_b};
    assign i_fpga_indvars_iv_next_conv125_b = {1'b0, c_i6_168_q};
    assign i_fpga_indvars_iv_next_conv125_o = $unsigned(i_fpga_indvars_iv_next_conv125_a) + $unsigned(i_fpga_indvars_iv_next_conv125_b);
    assign i_fpga_indvars_iv_next_conv125_q = i_fpga_indvars_iv_next_conv125_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_conv125_sel_x(BITSELECT,2)@102
    assign bgTrunc_i_fpga_indvars_iv_next_conv125_sel_x_b = i_fpga_indvars_iv_next_conv125_q[5:0];

    // SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143(STALLENABLE,1625)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_V0 = SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_backStall = i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_wireValid = SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_V;

    // SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143(STALLREG,2071)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_data0 <= 6'bxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_valid <= SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_backStall & (SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_valid | SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_data0 <= bgTrunc_i_fpga_indvars_iv_next_conv125_sel_x_b;
                SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_data1 <= $unsigned(redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_V2;
    assign SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_i_valid = SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_V1 & SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_backStall = SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_V = SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_valid : SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_D0 = SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_data0 : bgTrunc_i_fpga_indvars_iv_next_conv125_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_D1 = SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_r_data1 : redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_q;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_conv142(STALLENABLE,1613)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_conv142_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_consumed1 = (~ (SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_wireValid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_and0;

    // bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg(STALLFIFO,2019)
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_V0;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19(STALLENABLE,1596)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg0 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg1 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg2 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg3 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed2 = (~ (SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed3 = (~ (SR_SE_i_masked_conv151_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_StallValid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_backStall & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireValid;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_toReg0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_toReg1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_toReg2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_toReg3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_or0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_or1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed1 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_or0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_or2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed2 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_or1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireStall = ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_consumed3 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_or2);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_backStall = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_V0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_V1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_V2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_V3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_wireValid = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_out_valid_out;

    // SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143(STALLENABLE,1626)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_wireValid = i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_out_valid_out;

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143(BLACKBOX,153)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    conv1_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_D0),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_out_feedback_stall_out_20),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2665(CONSTANT,91)
    assign c_i6_2665_q = $unsigned(6'b011010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19(BLACKBOX,138)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    conv1_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19 (
        .in_data_in(c_i6_2665_q),
        .in_dir(redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_backStall),
        .in_valid_in(SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V2),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_162(CONSTANT,87)
    assign c_i2_162_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop24_conv14(BLACKBOX,133)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    conv1_i_llvm_fpga_pop_i2_cleanups_pop24_0 thei_llvm_fpga_pop_i2_cleanups_pop24_conv14 (
        .in_data_in(c_i2_162_q),
        .in_dir(redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i2_cleanups_push24_conv159_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i2_cleanups_push24_conv159_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_backStall),
        .in_valid_in(SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V1),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop24_conv14_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i2_cleanups_pop24_conv14_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop24_conv14_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop24_conv14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_conv161(STALLENABLE,1608)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_wireValid = i_llvm_fpga_push_i1_memdep_phi_push22_conv161_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push22_conv161(BLACKBOX,144)@200
    // in in_stall_in@20000000
    // out out_data_out@201
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@201
    conv1_i_llvm_fpga_push_i1_memdep_phi_push22_0 thei_llvm_fpga_push_i1_memdep_phi_push22_conv161 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_D0),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_out_feedback_stall_out_22),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_conv161_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_conv161_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push22_conv161_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push22_conv161_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18(BLACKBOX,130)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    conv1_i_llvm_fpga_pop_i1_memdep_phi_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi_pop22_conv18 (
        .in_data_in(GND_q),
        .in_dir(redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_memdep_phi_push22_conv161_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_memdep_phi_push22_conv161_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_backStall),
        .in_valid_in(SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1(STALLENABLE,1839)
    // Valid signal propagation
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V0 = SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0;
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V1 = SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1;
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V2 = SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2;
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V3 = SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3;
    // Stall signal propagation
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_out_stall_out & SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0;
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_1 = i_llvm_fpga_pop_i2_cleanups_pop24_conv14_out_stall_out & SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1;
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_2 = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_out_stall_out & SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2;
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_3 = redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out & SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3;
    // Backward Enable generation
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or0 = SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_0;
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or1 = SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_1 | SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or0;
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or2 = SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_2 | SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or1;
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN = ~ (SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_3 | SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0 = SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN & SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V;
    // Backward Stall generation
    assign SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall = ~ (SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0 <= 1'b0;
            SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1 <= 1'b0;
            SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2 <= 1'b0;
            SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b0)
            begin
                SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0 <= SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0 & SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_0;
            end
            else
            begin
                SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0 <= SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
            end

            if (SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b0)
            begin
                SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1 <= SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1 & SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_1;
            end
            else
            begin
                SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1 <= SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
            end

            if (SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b0)
            begin
                SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2 <= SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2 & SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_2;
            end
            else
            begin
                SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2 <= SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
            end

            if (SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b0)
            begin
                SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3 <= SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3 & SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_3;
            end
            else
            begin
                SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3 <= SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
            end

        end
    end

    // redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo(STALLFIFO,1408)
    assign redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in = SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V3;
    assign redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in = SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_backStall;
    assign redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_in = redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q;
    assign redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in_bitsignaltemp = redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in[0];
    assign redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in_bitsignaltemp = redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in[0];
    assign redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out[0] = redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out_bitsignaltemp;
    assign redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out[0] = redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo (
        .valid_in(redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in_bitsignaltemp),
        .stall_in(redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in_bitsignaltemp),
        .data_in(redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q),
        .valid_out(redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out_bitsignaltemp),
        .stall_out(redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out_bitsignaltemp),
        .data_out(redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo(BITJOIN,1519)
    assign bubble_join_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_q = redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_out;

    // bubble_select_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo(BITSELECT,1520)
    assign bubble_select_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b = $unsigned(bubble_join_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_q[0:0]);

    // rightShiftStage0Idx1Rng1_uid328_i_next_initerations_conv10_shift_x(BITSELECT,327)@198
    assign rightShiftStage0Idx1Rng1_uid328_i_next_initerations_conv10_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_conv16_b[1:1];

    // rightShiftStage0Idx1_uid330_i_next_initerations_conv10_shift_x(BITJOIN,329)@198
    assign rightShiftStage0Idx1_uid330_i_next_initerations_conv10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid328_i_next_initerations_conv10_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_conv16(BITJOIN,1483)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_conv16_q = i_llvm_fpga_pop_i2_initerations_pop23_conv16_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_conv16(BITSELECT,1484)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_conv16_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_conv16_q[1:0]);

    // rightShiftStage0_uid332_i_next_initerations_conv10_shift_x(MUX,331)@198
    assign rightShiftStage0_uid332_i_next_initerations_conv10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid332_i_next_initerations_conv10_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_conv16_b or rightShiftStage0Idx1_uid330_i_next_initerations_conv10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid332_i_next_initerations_conv10_shift_x_s)
            1'b0 : rightShiftStage0_uid332_i_next_initerations_conv10_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_conv16_b;
            1'b1 : rightShiftStage0_uid332_i_next_initerations_conv10_shift_x_q = rightShiftStage0Idx1_uid330_i_next_initerations_conv10_shift_x_q;
            default : rightShiftStage0_uid332_i_next_initerations_conv10_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_conv120_vt_select_0(BITSELECT,158)@198
    assign i_next_initerations_conv120_vt_select_0_b = rightShiftStage0_uid332_i_next_initerations_conv10_shift_x_q[0:0];

    // i_next_initerations_conv120_vt_join(BITJOIN,157)@198
    assign i_next_initerations_conv120_vt_join_q = {GND_q, i_next_initerations_conv120_vt_select_0_b};

    // i_last_initeration_conv139_sel_x(BITSELECT,77)@198
    assign i_last_initeration_conv139_sel_x_b = i_next_initerations_conv120_vt_join_q[0:0];

    // SE_i_next_initerations_conv120_vt_select_0(STALLENABLE,1630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_conv120_vt_select_0_fromReg0 <= '0;
            SE_i_next_initerations_conv120_vt_select_0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_conv120_vt_select_0_fromReg0 <= SE_i_next_initerations_conv120_vt_select_0_toReg0;
            // Successor 1
            SE_i_next_initerations_conv120_vt_select_0_fromReg1 <= SE_i_next_initerations_conv120_vt_select_0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_conv120_vt_select_0_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_conv149_out_stall_out) & SE_i_next_initerations_conv120_vt_select_0_wireValid) | SE_i_next_initerations_conv120_vt_select_0_fromReg0;
    assign SE_i_next_initerations_conv120_vt_select_0_consumed1 = (~ (i_llvm_fpga_push_i2_initerations_push23_conv138_out_stall_out) & SE_i_next_initerations_conv120_vt_select_0_wireValid) | SE_i_next_initerations_conv120_vt_select_0_fromReg1;
    // Consuming
    assign SE_i_next_initerations_conv120_vt_select_0_StallValid = SE_i_next_initerations_conv120_vt_select_0_backStall & SE_i_next_initerations_conv120_vt_select_0_wireValid;
    assign SE_i_next_initerations_conv120_vt_select_0_toReg0 = SE_i_next_initerations_conv120_vt_select_0_StallValid & SE_i_next_initerations_conv120_vt_select_0_consumed0;
    assign SE_i_next_initerations_conv120_vt_select_0_toReg1 = SE_i_next_initerations_conv120_vt_select_0_StallValid & SE_i_next_initerations_conv120_vt_select_0_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_conv120_vt_select_0_or0 = SE_i_next_initerations_conv120_vt_select_0_consumed0;
    assign SE_i_next_initerations_conv120_vt_select_0_wireStall = ~ (SE_i_next_initerations_conv120_vt_select_0_consumed1 & SE_i_next_initerations_conv120_vt_select_0_or0);
    assign SE_i_next_initerations_conv120_vt_select_0_backStall = SE_i_next_initerations_conv120_vt_select_0_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_conv120_vt_select_0_V0 = SE_i_next_initerations_conv120_vt_select_0_wireValid & ~ (SE_i_next_initerations_conv120_vt_select_0_fromReg0);
    assign SE_i_next_initerations_conv120_vt_select_0_V1 = SE_i_next_initerations_conv120_vt_select_0_wireValid & ~ (SE_i_next_initerations_conv120_vt_select_0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_conv120_vt_select_0_wireValid = SR_SE_i_next_initerations_conv120_vt_select_0_V;

    // SR_SE_i_next_initerations_conv120_vt_select_0(STALLREG,2065)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_conv120_vt_select_0_r_valid <= 1'b0;
            SR_SE_i_next_initerations_conv120_vt_select_0_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_conv120_vt_select_0_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_conv120_vt_select_0_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_conv120_vt_select_0_r_data3 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_conv120_vt_select_0_r_valid <= SE_i_next_initerations_conv120_vt_select_0_backStall & (SR_SE_i_next_initerations_conv120_vt_select_0_r_valid | SR_SE_i_next_initerations_conv120_vt_select_0_i_valid);

            if (SR_SE_i_next_initerations_conv120_vt_select_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_conv120_vt_select_0_r_data0 <= i_last_initeration_conv139_sel_x_b;
                SR_SE_i_next_initerations_conv120_vt_select_0_r_data1 <= $unsigned(bubble_select_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_b);
                SR_SE_i_next_initerations_conv120_vt_select_0_r_data2 <= $unsigned(bubble_select_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_b);
                SR_SE_i_next_initerations_conv120_vt_select_0_r_data3 <= i_next_initerations_conv120_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_conv120_vt_select_0_and0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_V1;
    assign SR_SE_i_next_initerations_conv120_vt_select_0_i_valid = SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_V0 & SR_SE_i_next_initerations_conv120_vt_select_0_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_conv120_vt_select_0_backStall = SR_SE_i_next_initerations_conv120_vt_select_0_r_valid | ~ (SR_SE_i_next_initerations_conv120_vt_select_0_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_conv120_vt_select_0_V = SR_SE_i_next_initerations_conv120_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_conv120_vt_select_0_r_valid : SR_SE_i_next_initerations_conv120_vt_select_0_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_conv120_vt_select_0_D0 = SR_SE_i_next_initerations_conv120_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_conv120_vt_select_0_r_data0 : i_last_initeration_conv139_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_conv120_vt_select_0_D1 = SR_SE_i_next_initerations_conv120_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_conv120_vt_select_0_r_data1 : bubble_select_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations_conv120_vt_select_0_D2 = SR_SE_i_next_initerations_conv120_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_conv120_vt_select_0_r_data2 : bubble_select_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations_conv120_vt_select_0_D3 = SR_SE_i_next_initerations_conv120_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_conv120_vt_select_0_r_data3 : i_next_initerations_conv120_vt_join_q;

    // bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg(STALLFIFO,2018)
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_V0;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16(STALLENABLE,1588)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_consumed1 = (~ (SR_SE_i_next_initerations_conv120_vt_select_0_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_StallValid = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_backStall & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_toReg0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_toReg1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_or0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_consumed1 & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_or0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_backStall = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_V0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_V1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_wireValid = i_llvm_fpga_pop_i2_initerations_pop23_conv16_out_valid_out;

    // SE_out_i_llvm_fpga_push_i2_initerations_push23_conv138(STALLENABLE,1618)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations_push23_conv138_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations_push23_conv138_wireValid = i_llvm_fpga_push_i2_initerations_push23_conv138_out_valid_out;

    // i_llvm_fpga_push_i2_initerations_push23_conv138(BLACKBOX,149)@198
    // in in_stall_in@20000000
    // out out_data_out@199
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@199
    conv1_i_llvm_fpga_push_i2_initerations_push23_0 thei_llvm_fpga_push_i2_initerations_push23_conv138 (
        .in_data_in(SR_SE_i_next_initerations_conv120_vt_select_0_D3),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i2_initerations_pop23_conv16_out_feedback_stall_out_23),
        .in_keep_going(SR_SE_i_next_initerations_conv120_vt_select_0_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations_push23_conv138_backStall),
        .in_valid_in(SE_i_next_initerations_conv120_vt_select_0_V1),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i2_initerations_push23_conv138_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i2_initerations_push23_conv138_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i2_initerations_push23_conv138_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations_push23_conv138_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop23_conv16(BLACKBOX,134)@197
    // in in_stall_in@20000000
    // out out_data_out@198
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@198
    conv1_i_llvm_fpga_pop_i2_initerations_pop23_0 thei_llvm_fpga_pop_i2_initerations_pop23_conv16 (
        .in_data_in(c_i2_162_q),
        .in_dir(bubble_select_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b),
        .in_feedback_in_23(i_llvm_fpga_push_i2_initerations_push23_conv138_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i2_initerations_push23_conv138_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_backStall),
        .in_valid_in(SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop23_conv16_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i2_initerations_pop23_conv16_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations_pop23_conv16_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations_pop23_conv16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo(STALLENABLE,1841)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0 <= '0;
            SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0 <= SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg0;
            // Successor 1
            SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1 <= SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed0 = (~ (SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall) & SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid) | SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0;
    assign SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed1 = (~ (i_llvm_fpga_pop_i2_initerations_pop23_conv16_out_stall_out) & SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid) | SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1;
    // Consuming
    assign SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_StallValid = SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_backStall & SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid;
    assign SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg0 = SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_StallValid & SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed0;
    assign SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg1 = SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_StallValid & SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_or0 = SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed0;
    assign SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireStall = ~ (SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed1 & SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_or0);
    assign SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_backStall = SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V0 = SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid & ~ (SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0);
    assign SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V1 = SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid & ~ (SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid = redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out;

    // SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0(STALLREG,2029)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid <= 1'b0;
            SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid <= SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall & (SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid | SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid);

            if (SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_data0 <= $unsigned(bubble_select_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid = SE_out_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall = SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid | ~ (SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid);

    // Valid
    assign SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V = SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid == 1'b1 ? SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid : SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid;

    assign SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_D0 = SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid == 1'b1 ? SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_data0 : bubble_select_redist42_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b;

    // redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0(REG,1409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN == 1'b1)
        begin
            redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q <= $unsigned(SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_D0);
        end
    end

    // SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0(STALLENABLE,1842)
    // Valid signal propagation
    assign SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V0 = SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0;
    // Stall signal propagation
    assign SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_s_tv_0 = SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall & SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0;
    // Backward Enable generation
    assign SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN = ~ (SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_v_s_0 = SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN & SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V;
    // Backward Stall generation
    assign SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall = ~ (SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN == 1'b0)
            begin
                SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0 <= SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0 & SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_s_tv_0;
            end
            else
            begin
                SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0 <= SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_v_s_0;
            end

        end
    end

    // SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1(STALLREG,2030)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid <= 1'b0;
            SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid <= SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall & (SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid | SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid);

            if (SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_data0 <= $unsigned(redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid = SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V0;
    // Stall signal propagation
    assign SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall = SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid | ~ (SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid);

    // Valid
    assign SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V = SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid == 1'b1 ? SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid : SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid;

    assign SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_D0 = SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid == 1'b1 ? SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_data0 : redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q;

    // redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1(REG,1410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN == 1'b1)
        begin
            redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q <= $unsigned(SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_D0);
        end
    end

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,1525)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,1526)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[3:0]);

    // sel_for_coalesced_delay_1(BITSELECT,1353)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[2:2]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[3:3]);

    // SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1(STALLENABLE,1843)
    // Valid signal propagation
    assign SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V0 = SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0;
    // Stall signal propagation
    assign SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_s_tv_0 = SR_SE_out_coalesced_delay_1_fifo_backStall & SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0;
    // Backward Enable generation
    assign SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN = ~ (SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_v_s_0 = SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN & SR_SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V;
    // Backward Stall generation
    assign SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall = ~ (SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN == 1'b0)
            begin
                SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0 <= SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0 & SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_s_tv_0;
            end
            else
            begin
                SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0 <= SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115(BITJOIN,1476)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_q = i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115(BITSELECT,1477)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132(STALLENABLE,1611)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_V0 = SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_backStall = i_llvm_fpga_push_i1_notcmp2236_push26_conv132_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132(STALLREG,2068)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_data1 <= $unsigned(redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_and0 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V4;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_V1 & SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_r_data1 : redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q;

    // SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115(STALLENABLE,1584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_wireValid = i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp2236_push26_conv132(STALLENABLE,1612)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_wireValid = i_llvm_fpga_push_i1_notcmp2236_push26_conv132_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp2236_push26_conv132(BLACKBOX,146)@200
    // in in_stall_in@20000000
    // out out_data_out@201
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@201
    conv1_i_llvm_fpga_push_i1_notcmp2236_push26_0 thei_llvm_fpga_push_i1_notcmp2236_push26_conv132 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_D0),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_out_feedback_stall_out_26),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_V0),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_notcmp2236_push26_conv132_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_notcmp2236_push26_conv132_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp2236_push26_conv132_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp2236_push26_conv132_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115(BLACKBOX,132)@199
    // in in_stall_in@20000000
    // out out_data_out@200
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@200
    conv1_i_llvm_fpga_pop_i1_notcmp2236_pop26_0 thei_llvm_fpga_pop_i1_notcmp2236_pop26_conv115 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D7),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D4),
        .in_feedback_in_26(i_llvm_fpga_push_i1_notcmp2236_push26_conv132_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_notcmp2236_push26_conv132_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V3),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111(BITJOIN,1472)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_q = i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111(BITSELECT,1473)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127(STALLENABLE,1609)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_V0 = SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_backStall = i_llvm_fpga_push_i1_notcmp1742_push30_conv127_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127(STALLREG,2067)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_data1 <= $unsigned(redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_and0 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V3;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_V1 & SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_r_data1 : redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q;

    // SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111(STALLENABLE,1582)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_wireValid = i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp1742_push30_conv127(STALLENABLE,1610)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_wireValid = i_llvm_fpga_push_i1_notcmp1742_push30_conv127_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp1742_push30_conv127(BLACKBOX,145)@200
    // in in_stall_in@20000000
    // out out_data_out@201
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@201
    conv1_i_llvm_fpga_push_i1_notcmp1742_push30_0 thei_llvm_fpga_push_i1_notcmp1742_push30_conv127 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_D0),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_out_feedback_stall_out_30),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_V0),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_notcmp1742_push30_conv127_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_notcmp1742_push30_conv127_out_feedback_valid_out_30),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp1742_push30_conv127_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp1742_push30_conv127_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111(BLACKBOX,131)@199
    // in in_stall_in@20000000
    // out out_data_out@200
    // out out_feedback_stall_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@200
    conv1_i_llvm_fpga_pop_i1_notcmp1742_pop30_0 thei_llvm_fpga_pop_i1_notcmp1742_pop30_conv111 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D6),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D3),
        .in_feedback_in_30(i_llvm_fpga_push_i1_notcmp1742_push30_conv127_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_notcmp1742_push30_conv127_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_out_feedback_stall_out_30),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110(BITJOIN,1459)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_q = i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110(BITSELECT,1460)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126(STALLENABLE,1599)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_V0 = SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_backStall = i_llvm_fpga_push_i1_exitcond941_push29_conv126_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_V;

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126(STALLREG,2064)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_data1 <= $unsigned(redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_and0 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V1;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_i_valid = SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_V1 & SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_r_data1 : redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q;

    // SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110(STALLENABLE,1574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_wireValid = i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_exitcond941_push29_conv126(STALLENABLE,1600)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond941_push29_conv126_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond941_push29_conv126_wireValid = i_llvm_fpga_push_i1_exitcond941_push29_conv126_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond941_push29_conv126(BLACKBOX,140)@200
    // in in_stall_in@20000000
    // out out_data_out@201
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@201
    conv1_i_llvm_fpga_push_i1_exitcond941_push29_0 thei_llvm_fpga_push_i1_exitcond941_push29_conv126 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_D0),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_out_feedback_stall_out_29),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond941_push29_conv126_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_V0),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_exitcond941_push29_conv126_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_exitcond941_push29_conv126_out_feedback_valid_out_29),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond941_push29_conv126_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond941_push29_conv126_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond941_pop29_conv110(BLACKBOX,127)@199
    // in in_stall_in@20000000
    // out out_data_out@200
    // out out_feedback_stall_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@200
    conv1_i_llvm_fpga_pop_i1_exitcond941_pop29_0 thei_llvm_fpga_pop_i1_exitcond941_pop29_conv110 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D5),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D2),
        .in_feedback_in_29(i_llvm_fpga_push_i1_exitcond941_push29_conv126_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_exitcond941_push29_conv126_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_out_feedback_stall_out_29),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114(BITJOIN,1455)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_q = i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114(BITSELECT,1456)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131(STALLENABLE,1597)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_V0 = SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_backStall = i_llvm_fpga_push_i1_exitcond1234_push25_conv131_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_V;

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131(STALLREG,2063)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_data1 <= $unsigned(redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_and0 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V0;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_i_valid = SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_V1 & SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_r_data1 : redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q;

    // SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114(STALLENABLE,1572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_wireValid = i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_exitcond1234_push25_conv131(STALLENABLE,1598)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_wireValid = i_llvm_fpga_push_i1_exitcond1234_push25_conv131_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond1234_push25_conv131(BLACKBOX,139)@200
    // in in_stall_in@20000000
    // out out_data_out@201
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@201
    conv1_i_llvm_fpga_push_i1_exitcond1234_push25_0 thei_llvm_fpga_push_i1_exitcond1234_push25_conv131 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_D0),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_out_feedback_stall_out_25),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_exitcond1234_push25_conv131_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_exitcond1234_push25_conv131_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond1234_push25_conv131_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond1234_push25_conv131_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114(BLACKBOX,126)@199
    // in in_stall_in@20000000
    // out out_data_out@200
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@200
    conv1_i_llvm_fpga_pop_i1_exitcond1234_pop25_0 thei_llvm_fpga_pop_i1_exitcond1234_pop25_conv114 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D1),
        .in_feedback_in_25(i_llvm_fpga_push_i1_exitcond1234_push25_conv131_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_exitcond1234_push25_conv131_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,1847)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg2 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
            // Successor 2
            SE_out_coalesced_delay_1_fifo_fromReg2 <= SE_out_coalesced_delay_1_fifo_toReg2;
            // Successor 3
            SE_out_coalesced_delay_1_fifo_fromReg3 <= SE_out_coalesced_delay_1_fifo_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    assign SE_out_coalesced_delay_1_fifo_consumed2 = (~ (i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg2;
    assign SE_out_coalesced_delay_1_fifo_consumed3 = (~ (i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg3;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    assign SE_out_coalesced_delay_1_fifo_toReg2 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed2;
    assign SE_out_coalesced_delay_1_fifo_toReg3 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_or1 = SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0;
    assign SE_out_coalesced_delay_1_fifo_or2 = SE_out_coalesced_delay_1_fifo_consumed2 & SE_out_coalesced_delay_1_fifo_or1;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed3 & SE_out_coalesced_delay_1_fifo_or2);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    assign SE_out_coalesced_delay_1_fifo_V2 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg2);
    assign SE_out_coalesced_delay_1_fifo_V3 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_wireValid = SR_SE_out_coalesced_delay_1_fifo_V;

    // SR_SE_out_coalesced_delay_1_fifo(STALLREG,2031)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_coalesced_delay_1_fifo_r_valid <= 1'b0;
            SR_SE_out_coalesced_delay_1_fifo_r_data0 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data1 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data2 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data3 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data4 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data5 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data6 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data7 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_coalesced_delay_1_fifo_r_valid <= SE_out_coalesced_delay_1_fifo_backStall & (SR_SE_out_coalesced_delay_1_fifo_r_valid | SR_SE_out_coalesced_delay_1_fifo_i_valid);

            if (SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_coalesced_delay_1_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_1_d);
                SR_SE_out_coalesced_delay_1_fifo_r_data1 <= $unsigned(redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data2 <= $unsigned(redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data3 <= $unsigned(redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data4 <= $unsigned(redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data5 <= $unsigned(sel_for_coalesced_delay_1_b);
                SR_SE_out_coalesced_delay_1_fifo_r_data6 <= $unsigned(sel_for_coalesced_delay_1_c);
                SR_SE_out_coalesced_delay_1_fifo_r_data7 <= $unsigned(sel_for_coalesced_delay_1_e);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_1_fifo_i_valid = SE_redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V0 & SR_SE_out_coalesced_delay_1_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_1_fifo_backStall = SR_SE_out_coalesced_delay_1_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_1_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_1_fifo_V = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_valid : SR_SE_out_coalesced_delay_1_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_1_fifo_D0 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data0 : sel_for_coalesced_delay_1_d;
    // Data1
    assign SR_SE_out_coalesced_delay_1_fifo_D1 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data1 : redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q;
    // Data2
    assign SR_SE_out_coalesced_delay_1_fifo_D2 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data2 : redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q;
    // Data3
    assign SR_SE_out_coalesced_delay_1_fifo_D3 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data3 : redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q;
    // Data4
    assign SR_SE_out_coalesced_delay_1_fifo_D4 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data4 : redist43_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q;
    // Data5
    assign SR_SE_out_coalesced_delay_1_fifo_D5 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data5 : sel_for_coalesced_delay_1_b;
    // Data6
    assign SR_SE_out_coalesced_delay_1_fifo_D6 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data6 : sel_for_coalesced_delay_1_c;
    // Data7
    assign SR_SE_out_coalesced_delay_1_fifo_D7 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data7 : sel_for_coalesced_delay_1_e;

    // coalesced_delay_1_fifo(STALLFIFO,1412)
    assign coalesced_delay_1_fifo_valid_in = SE_out_conv1_B4_merge_reg_aunroll_x_V8;
    assign coalesced_delay_1_fifo_stall_in = SR_SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(199),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(4),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,1349)
    assign join_for_coalesced_delay_0_q = {bubble_select_conv1_B4_merge_reg_aunroll_x_b, bubble_select_conv1_B4_merge_reg_aunroll_x_i};

    // coalesced_delay_0_fifo(STALLFIFO,1411)
    assign coalesced_delay_0_fifo_valid_in = SE_out_conv1_B4_merge_reg_aunroll_x_V7;
    assign coalesced_delay_0_fifo_stall_in = SR_SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(94),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117(BLACKBOX,129)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    conv1_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117 (
        .in_data_in(bubble_select_conv1_B4_merge_reg_aunroll_x_j),
        .in_dir(bubble_select_conv1_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_28(i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_backStall),
        .in_valid_in(SE_out_conv1_B4_merge_reg_aunroll_x_V5),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_feedback_stall_out_28),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113(BLACKBOX,128)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    conv1_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113 (
        .in_data_in(bubble_select_conv1_B4_merge_reg_aunroll_x_f),
        .in_dir(bubble_select_conv1_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_32(i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_backStall),
        .in_valid_in(SE_out_conv1_B4_merge_reg_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_feedback_stall_out_32),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg(STALLFIFO,2016)
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_valid_in = SE_out_conv1_B4_merge_reg_aunroll_x_V3;
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_conv1_B4_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg(STALLFIFO,2015)
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_valid_in = SE_out_conv1_B4_merge_reg_aunroll_x_V2;
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_conv1_B4_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg(STALLFIFO,2014)
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_valid_in = SE_out_conv1_B4_merge_reg_aunroll_x_V1;
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_conv1_B4_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg(STALLFIFO,2013)
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_valid_in = SE_out_conv1_B4_merge_reg_aunroll_x_V0;
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_conv1_B4_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_conv1_B4_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,1635)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv1_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,1500)
    assign bubble_join_stall_entry_q = {in_row_028_pop1459, in_notcmp2235_pop1762, in_notcmp1758, in_memdep_phi2_pop1239_pop1964, in_memdep_phi1_pop1560, in_forked, in_exitcond957, in_exitcond1233_pop1661, in_channel_029_pop1137_pop1863};

    // bubble_select_stall_entry(BITSELECT,1501)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[36:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[37:37]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[38:38]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[70:39]);

    // conv1_B4_merge_reg_aunroll_x(BLACKBOX,5)@0
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
    // out out_stall_out@20000000
    // out out_valid_out@1
    conv1_B4_merge_reg theconv1_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_e),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_h),
        .in_data_in_3_tpl(bubble_select_stall_entry_j),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .in_data_in_5_tpl(bubble_select_stall_entry_c),
        .in_data_in_6_tpl(bubble_select_stall_entry_i),
        .in_data_in_7_tpl(bubble_select_stall_entry_b),
        .in_data_in_8_tpl(bubble_select_stall_entry_g),
        .in_stall_in(SE_out_conv1_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv1_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv1_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv1_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv1_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv1_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv1_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv1_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv1_B4_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_stall_out(conv1_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv1_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv1_B4_merge_reg_aunroll_x(STALLENABLE,1533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg8 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_conv1_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_conv1_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_conv1_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_conv1_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_conv1_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_conv1_B4_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg6 <= SE_out_conv1_B4_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg7 <= SE_out_conv1_B4_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_conv1_B4_merge_reg_aunroll_x_fromReg8 <= SE_out_conv1_B4_merge_reg_aunroll_x_toReg8;
        end
    end
    // Input Stall processing
    assign SE_out_conv1_B4_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_conv1_B4_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_conv1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv1_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_conv1_B4_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_conv1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv1_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_conv1_B4_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_conv1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv1_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_conv1_B4_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_conv1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv1_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i1_memdep_phi1_pop1544_pop32_conv113_out_stall_out) & SE_out_conv1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv1_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_pop_i1_memdep_phi2_pop1240_pop28_conv117_out_stall_out) & SE_out_conv1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv1_B4_merge_reg_aunroll_x_fromReg5;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_consumed6 = (~ (i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_stall_out) & SE_out_conv1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv1_B4_merge_reg_aunroll_x_fromReg6;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_consumed7 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_conv1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv1_B4_merge_reg_aunroll_x_fromReg7;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_consumed8 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_conv1_B4_merge_reg_aunroll_x_wireValid) | SE_out_conv1_B4_merge_reg_aunroll_x_fromReg8;
    // Consuming
    assign SE_out_conv1_B4_merge_reg_aunroll_x_StallValid = SE_out_conv1_B4_merge_reg_aunroll_x_backStall & SE_out_conv1_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_toReg0 = SE_out_conv1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv1_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_toReg1 = SE_out_conv1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv1_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_toReg2 = SE_out_conv1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv1_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_toReg3 = SE_out_conv1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv1_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_toReg4 = SE_out_conv1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv1_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_toReg5 = SE_out_conv1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv1_B4_merge_reg_aunroll_x_consumed5;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_toReg6 = SE_out_conv1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv1_B4_merge_reg_aunroll_x_consumed6;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_toReg7 = SE_out_conv1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv1_B4_merge_reg_aunroll_x_consumed7;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_toReg8 = SE_out_conv1_B4_merge_reg_aunroll_x_StallValid & SE_out_conv1_B4_merge_reg_aunroll_x_consumed8;
    // Backward Stall generation
    assign SE_out_conv1_B4_merge_reg_aunroll_x_or0 = SE_out_conv1_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_or1 = SE_out_conv1_B4_merge_reg_aunroll_x_consumed1 & SE_out_conv1_B4_merge_reg_aunroll_x_or0;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_or2 = SE_out_conv1_B4_merge_reg_aunroll_x_consumed2 & SE_out_conv1_B4_merge_reg_aunroll_x_or1;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_or3 = SE_out_conv1_B4_merge_reg_aunroll_x_consumed3 & SE_out_conv1_B4_merge_reg_aunroll_x_or2;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_or4 = SE_out_conv1_B4_merge_reg_aunroll_x_consumed4 & SE_out_conv1_B4_merge_reg_aunroll_x_or3;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_or5 = SE_out_conv1_B4_merge_reg_aunroll_x_consumed5 & SE_out_conv1_B4_merge_reg_aunroll_x_or4;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_or6 = SE_out_conv1_B4_merge_reg_aunroll_x_consumed6 & SE_out_conv1_B4_merge_reg_aunroll_x_or5;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_or7 = SE_out_conv1_B4_merge_reg_aunroll_x_consumed7 & SE_out_conv1_B4_merge_reg_aunroll_x_or6;
    assign SE_out_conv1_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_conv1_B4_merge_reg_aunroll_x_consumed8 & SE_out_conv1_B4_merge_reg_aunroll_x_or7);
    assign SE_out_conv1_B4_merge_reg_aunroll_x_backStall = SE_out_conv1_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_conv1_B4_merge_reg_aunroll_x_V0 = SE_out_conv1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv1_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_conv1_B4_merge_reg_aunroll_x_V1 = SE_out_conv1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv1_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_conv1_B4_merge_reg_aunroll_x_V2 = SE_out_conv1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv1_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_conv1_B4_merge_reg_aunroll_x_V3 = SE_out_conv1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv1_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_conv1_B4_merge_reg_aunroll_x_V4 = SE_out_conv1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv1_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_conv1_B4_merge_reg_aunroll_x_V5 = SE_out_conv1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv1_B4_merge_reg_aunroll_x_fromReg5);
    assign SE_out_conv1_B4_merge_reg_aunroll_x_V6 = SE_out_conv1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv1_B4_merge_reg_aunroll_x_fromReg6);
    assign SE_out_conv1_B4_merge_reg_aunroll_x_V7 = SE_out_conv1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv1_B4_merge_reg_aunroll_x_fromReg7);
    assign SE_out_conv1_B4_merge_reg_aunroll_x_V8 = SE_out_conv1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv1_B4_merge_reg_aunroll_x_fromReg8);
    // Computing multiple Valid(s)
    assign SE_out_conv1_B4_merge_reg_aunroll_x_wireValid = conv1_B4_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128(STALLENABLE,1624)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_wireValid = i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_out_valid_out;

    // i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128(BLACKBOX,152)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    conv1_i_llvm_fpga_push_i32_row_028_pop1443_push31_0 thei_llvm_fpga_push_i32_row_028_pop1443_push31_conv128 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_D0),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_feedback_stall_out_31),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_V0),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_out_feedback_valid_out_31),
        .out_stall_out(i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_conv1_B4_merge_reg_aunroll_x(BITJOIN,1416)
    assign bubble_join_conv1_B4_merge_reg_aunroll_x_q = {conv1_B4_merge_reg_aunroll_x_out_data_out_8_tpl, conv1_B4_merge_reg_aunroll_x_out_data_out_7_tpl, conv1_B4_merge_reg_aunroll_x_out_data_out_6_tpl, conv1_B4_merge_reg_aunroll_x_out_data_out_5_tpl, conv1_B4_merge_reg_aunroll_x_out_data_out_4_tpl, conv1_B4_merge_reg_aunroll_x_out_data_out_3_tpl, conv1_B4_merge_reg_aunroll_x_out_data_out_2_tpl, conv1_B4_merge_reg_aunroll_x_out_data_out_1_tpl, conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv1_B4_merge_reg_aunroll_x(BITSELECT,1417)
    assign bubble_select_conv1_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv1_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv1_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv1_B4_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_conv1_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv1_B4_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_conv1_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv1_B4_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_conv1_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv1_B4_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_conv1_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv1_B4_merge_reg_aunroll_x_q[36:36]);
    assign bubble_select_conv1_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv1_B4_merge_reg_aunroll_x_q[37:37]);
    assign bubble_select_conv1_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv1_B4_merge_reg_aunroll_x_q[69:38]);
    assign bubble_select_conv1_B4_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv1_B4_merge_reg_aunroll_x_q[70:70]);

    // i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112(BLACKBOX,137)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    conv1_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_0 thei_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112 (
        .in_data_in(bubble_select_conv1_B4_merge_reg_aunroll_x_e),
        .in_dir(bubble_select_conv1_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_31(i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_backStall),
        .in_valid_in(SE_out_conv1_B4_merge_reg_aunroll_x_V6),
        .out_data_out(i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_feedback_stall_out_31),
        .out_stall_out(i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112(BITJOIN,1493)
    assign bubble_join_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_q = i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112(BITSELECT,1494)
    assign bubble_select_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_q[31:0]);

    // SE_out_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo(STALLENABLE,1814)
    // Valid signal propagation
    assign SE_out_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_V0 = SE_out_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_backStall = SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_backStall | ~ (SE_out_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_wireValid = redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_valid_out;

    // SE_out_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112(STALLENABLE,1594)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_V0 = SE_out_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_backStall = redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_wireValid = i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_valid_out;

    // redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo(STALLFIFO,1385)
    assign redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_V0;
    assign redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_stall_in = SE_out_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_backStall;
    assign redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_b;
    assign redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_valid_in_bitsignaltemp = redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_valid_in[0];
    assign redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_stall_in_bitsignaltemp = redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_stall_in[0];
    assign redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_valid_out[0] = redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_valid_out_bitsignaltemp;
    assign redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_stall_out[0] = redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(96),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo (
        .valid_in(redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_valid_in_bitsignaltemp),
        .stall_in(redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_b),
        .valid_out(redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_valid_out_bitsignaltemp),
        .stall_out(redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_stall_out_bitsignaltemp),
        .data_out(redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo(BITJOIN,1507)
    assign bubble_join_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_q = redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_data_out;

    // bubble_select_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo(BITSELECT,1508)
    assign bubble_select_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_b = $unsigned(bubble_join_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_q[31:0]);

    // redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_0(REG,1386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_0_q <= $unsigned(bubble_select_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_b);
        end
    end

    // i_idxprom_conv129_sel_x(BITSELECT,76)@97
    assign i_idxprom_conv129_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_b[31:0]};

    // i_idxprom_conv129_vt_select_31(BITSELECT,114)@97
    assign i_idxprom_conv129_vt_select_31_b = i_idxprom_conv129_sel_x_b[31:0];

    // i_idxprom_conv129_vt_join(BITJOIN,113)@97
    assign i_idxprom_conv129_vt_join_q = {c_i32_064_q, i_idxprom_conv129_vt_select_31_b};

    // i_arrayidx17_conv10_mult_x_bs1_merged_bit_select(BITSELECT,1288)@97
    assign i_arrayidx17_conv10_mult_x_bs1_merged_bit_select_b = i_idxprom_conv129_vt_join_q[17:0];
    assign i_arrayidx17_conv10_mult_x_bs1_merged_bit_select_c = i_idxprom_conv129_vt_join_q[35:18];
    assign i_arrayidx17_conv10_mult_x_bs1_merged_bit_select_d = i_idxprom_conv129_vt_join_q[53:36];
    assign i_arrayidx17_conv10_mult_x_bs1_merged_bit_select_e = i_idxprom_conv129_vt_join_q[63:54];

    // xIfSign_mergedSignalTM_uid487_i_arrayidx17_conv10_mult_x_im6(BITJOIN,486)@97
    assign xIfSign_mergedSignalTM_uid487_i_arrayidx17_conv10_mult_x_im6_q = {GND_q, i_arrayidx17_conv10_mult_x_bs1_merged_bit_select_d};

    // padACst_uid365_i_arrayidx17_conv10_mult_x_im0(CONSTANT,364)
    assign padACst_uid365_i_arrayidx17_conv10_mult_x_im0_q = $unsigned(3'b000);

    // aPostPad_uid492_i_arrayidx17_conv10_mult_x_im6(BITJOIN,491)@97
    assign aPostPad_uid492_i_arrayidx17_conv10_mult_x_im6_q = {xIfSign_mergedSignalTM_uid487_i_arrayidx17_conv10_mult_x_im6_q, padACst_uid365_i_arrayidx17_conv10_mult_x_im0_q};

    // sub_uid493_i_arrayidx17_conv10_mult_x_im6(SUB,492)@97
    assign sub_uid493_i_arrayidx17_conv10_mult_x_im6_a = $unsigned({{1{aPostPad_uid492_i_arrayidx17_conv10_mult_x_im6_q[21]}}, aPostPad_uid492_i_arrayidx17_conv10_mult_x_im6_q});
    assign sub_uid493_i_arrayidx17_conv10_mult_x_im6_b = $unsigned({{4{xIfSign_mergedSignalTM_uid487_i_arrayidx17_conv10_mult_x_im6_q[18]}}, xIfSign_mergedSignalTM_uid487_i_arrayidx17_conv10_mult_x_im6_q});
    assign sub_uid493_i_arrayidx17_conv10_mult_x_im6_o = $unsigned($signed(sub_uid493_i_arrayidx17_conv10_mult_x_im6_a) - $signed(sub_uid493_i_arrayidx17_conv10_mult_x_im6_b));
    assign sub_uid493_i_arrayidx17_conv10_mult_x_im6_q = sub_uid493_i_arrayidx17_conv10_mult_x_im6_o[22:0];

    // sR_bottomRange_uid497_i_arrayidx17_conv10_mult_x_im6(BITSELECT,496)@97
    assign sR_bottomRange_uid497_i_arrayidx17_conv10_mult_x_im6_in = $unsigned(sub_uid493_i_arrayidx17_conv10_mult_x_im6_q[20:0]);
    assign sR_bottomRange_uid497_i_arrayidx17_conv10_mult_x_im6_b = $unsigned(sR_bottomRange_uid497_i_arrayidx17_conv10_mult_x_im6_in[20:0]);

    // redist24_sR_bottomRange_uid497_i_arrayidx17_conv10_mult_x_im6_b_1_0(REG,1381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sR_bottomRange_uid497_i_arrayidx17_conv10_mult_x_im6_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_backEN == 1'b1)
        begin
            redist24_sR_bottomRange_uid497_i_arrayidx17_conv10_mult_x_im6_b_1_0_q <= $unsigned(sR_bottomRange_uid497_i_arrayidx17_conv10_mult_x_im6_b);
        end
    end

    // sR_bottomExtension_uid370_i_arrayidx17_conv10_mult_x_im0(CONSTANT,369)
    assign sR_bottomExtension_uid370_i_arrayidx17_conv10_mult_x_im0_q = $unsigned(4'b0000);

    // sR_mergedSignalTM_uid498_i_arrayidx17_conv10_mult_x_im6(BITJOIN,497)@98
    assign sR_mergedSignalTM_uid498_i_arrayidx17_conv10_mult_x_im6_q = {redist24_sR_bottomRange_uid497_i_arrayidx17_conv10_mult_x_im6_b_1_0_q, sR_bottomExtension_uid370_i_arrayidx17_conv10_mult_x_im0_q};

    // i_arrayidx17_conv10_mult_x_sums_align_0(BITSHIFT,275)@98
    assign i_arrayidx17_conv10_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid498_i_arrayidx17_conv10_mult_x_im6_q, 11'b00000000000 };
    assign i_arrayidx17_conv10_mult_x_sums_align_0_q = i_arrayidx17_conv10_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select(BITSELECT,1293)@98
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b = $unsigned(i_arrayidx17_conv10_mult_x_sums_align_0_q[26:0]);
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c = $unsigned(i_arrayidx17_conv10_mult_x_sums_align_0_q[35:27]);

    // i_arrayidx32_conv10_dupName_0_mult_x_sums_align_0(BITSHIFT,293)@98
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid498_i_arrayidx17_conv10_mult_x_im6_q, 11'b00000000000 };
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_align_0_q = i_arrayidx32_conv10_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select(BITSELECT,1295)@98
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b = $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_align_0_q[26:0]);
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c = $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_align_0_q[35:27]);

    // xIfSign_mergedSignalTM_uid550_i_arrayidx17_conv10_mult_x_im9(BITJOIN,549)@97
    assign xIfSign_mergedSignalTM_uid550_i_arrayidx17_conv10_mult_x_im9_q = {GND_q, i_arrayidx17_conv10_mult_x_bs1_merged_bit_select_e};

    // aPostPad_uid555_i_arrayidx17_conv10_mult_x_im9(BITJOIN,554)@97
    assign aPostPad_uid555_i_arrayidx17_conv10_mult_x_im9_q = {xIfSign_mergedSignalTM_uid550_i_arrayidx17_conv10_mult_x_im9_q, padACst_uid365_i_arrayidx17_conv10_mult_x_im0_q};

    // sub_uid556_i_arrayidx17_conv10_mult_x_im9(SUB,555)@97
    assign sub_uid556_i_arrayidx17_conv10_mult_x_im9_a = $unsigned({{1{aPostPad_uid555_i_arrayidx17_conv10_mult_x_im9_q[13]}}, aPostPad_uid555_i_arrayidx17_conv10_mult_x_im9_q});
    assign sub_uid556_i_arrayidx17_conv10_mult_x_im9_b = $unsigned({{4{xIfSign_mergedSignalTM_uid550_i_arrayidx17_conv10_mult_x_im9_q[10]}}, xIfSign_mergedSignalTM_uid550_i_arrayidx17_conv10_mult_x_im9_q});
    assign sub_uid556_i_arrayidx17_conv10_mult_x_im9_o = $unsigned($signed(sub_uid556_i_arrayidx17_conv10_mult_x_im9_a) - $signed(sub_uid556_i_arrayidx17_conv10_mult_x_im9_b));
    assign sub_uid556_i_arrayidx17_conv10_mult_x_im9_q = sub_uid556_i_arrayidx17_conv10_mult_x_im9_o[14:0];

    // sR_bottomRange_uid560_i_arrayidx17_conv10_mult_x_im9(BITSELECT,559)@97
    assign sR_bottomRange_uid560_i_arrayidx17_conv10_mult_x_im9_in = $unsigned(sub_uid556_i_arrayidx17_conv10_mult_x_im9_q[12:0]);
    assign sR_bottomRange_uid560_i_arrayidx17_conv10_mult_x_im9_b = $unsigned(sR_bottomRange_uid560_i_arrayidx17_conv10_mult_x_im9_in[12:0]);

    // redist23_sR_bottomRange_uid560_i_arrayidx17_conv10_mult_x_im9_b_1_0(REG,1380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sR_bottomRange_uid560_i_arrayidx17_conv10_mult_x_im9_b_1_0_q <= $unsigned(13'b0000000000000);
        end
        else if (SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_backEN == 1'b1)
        begin
            redist23_sR_bottomRange_uid560_i_arrayidx17_conv10_mult_x_im9_b_1_0_q <= $unsigned(sR_bottomRange_uid560_i_arrayidx17_conv10_mult_x_im9_b);
        end
    end

    // sR_mergedSignalTM_uid561_i_arrayidx17_conv10_mult_x_im9(BITJOIN,560)@98
    assign sR_mergedSignalTM_uid561_i_arrayidx17_conv10_mult_x_im9_q = {redist23_sR_bottomRange_uid560_i_arrayidx17_conv10_mult_x_im9_b_1_0_q, sR_bottomExtension_uid370_i_arrayidx17_conv10_mult_x_im0_q};

    // i_arrayidx17_conv10_mult_x_sums_align_3(BITSHIFT,278)@98
    assign i_arrayidx17_conv10_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid561_i_arrayidx17_conv10_mult_x_im9_q, 11'b00000000000 };
    assign i_arrayidx17_conv10_mult_x_sums_align_3_q = i_arrayidx17_conv10_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,1294)@98
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx17_conv10_mult_x_sums_align_3_q[8:0]);
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx17_conv10_mult_x_sums_align_3_q[27:9]);

    // i_arrayidx32_conv10_dupName_0_mult_x_sums_align_3(BITSHIFT,296)@98
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid561_i_arrayidx17_conv10_mult_x_im9_q, 11'b00000000000 };
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_align_3_q = i_arrayidx32_conv10_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,1296)@98
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_align_3_q[8:0]);
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_align_3_q[27:9]);

    // xIfSign_mergedSignalTM_uid424_i_arrayidx17_conv10_mult_x_im3(BITJOIN,423)@97
    assign xIfSign_mergedSignalTM_uid424_i_arrayidx17_conv10_mult_x_im3_q = {GND_q, i_arrayidx17_conv10_mult_x_bs1_merged_bit_select_c};

    // aPostPad_uid429_i_arrayidx17_conv10_mult_x_im3(BITJOIN,428)@97
    assign aPostPad_uid429_i_arrayidx17_conv10_mult_x_im3_q = {xIfSign_mergedSignalTM_uid424_i_arrayidx17_conv10_mult_x_im3_q, padACst_uid365_i_arrayidx17_conv10_mult_x_im0_q};

    // sub_uid430_i_arrayidx17_conv10_mult_x_im3(SUB,429)@97
    assign sub_uid430_i_arrayidx17_conv10_mult_x_im3_a = $unsigned({{1{aPostPad_uid429_i_arrayidx17_conv10_mult_x_im3_q[21]}}, aPostPad_uid429_i_arrayidx17_conv10_mult_x_im3_q});
    assign sub_uid430_i_arrayidx17_conv10_mult_x_im3_b = $unsigned({{4{xIfSign_mergedSignalTM_uid424_i_arrayidx17_conv10_mult_x_im3_q[18]}}, xIfSign_mergedSignalTM_uid424_i_arrayidx17_conv10_mult_x_im3_q});
    assign sub_uid430_i_arrayidx17_conv10_mult_x_im3_o = $unsigned($signed(sub_uid430_i_arrayidx17_conv10_mult_x_im3_a) - $signed(sub_uid430_i_arrayidx17_conv10_mult_x_im3_b));
    assign sub_uid430_i_arrayidx17_conv10_mult_x_im3_q = sub_uid430_i_arrayidx17_conv10_mult_x_im3_o[22:0];

    // sR_bottomRange_uid434_i_arrayidx17_conv10_mult_x_im3(BITSELECT,433)@97
    assign sR_bottomRange_uid434_i_arrayidx17_conv10_mult_x_im3_in = $unsigned(sub_uid430_i_arrayidx17_conv10_mult_x_im3_q[20:0]);
    assign sR_bottomRange_uid434_i_arrayidx17_conv10_mult_x_im3_b = $unsigned(sR_bottomRange_uid434_i_arrayidx17_conv10_mult_x_im3_in[20:0]);

    // redist25_sR_bottomRange_uid434_i_arrayidx17_conv10_mult_x_im3_b_1_0(REG,1382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sR_bottomRange_uid434_i_arrayidx17_conv10_mult_x_im3_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_backEN == 1'b1)
        begin
            redist25_sR_bottomRange_uid434_i_arrayidx17_conv10_mult_x_im3_b_1_0_q <= $unsigned(sR_bottomRange_uid434_i_arrayidx17_conv10_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid435_i_arrayidx17_conv10_mult_x_im3(BITJOIN,434)@98
    assign sR_mergedSignalTM_uid435_i_arrayidx17_conv10_mult_x_im3_q = {redist25_sR_bottomRange_uid434_i_arrayidx17_conv10_mult_x_im3_b_1_0_q, sR_bottomExtension_uid370_i_arrayidx17_conv10_mult_x_im0_q};

    // i_arrayidx32_conv10_dupName_0_mult_x_sums_align_2(BITSHIFT,295)@98
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid435_i_arrayidx17_conv10_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_align_2_q = i_arrayidx32_conv10_dupName_0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,1269)@98
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx32_conv10_dupName_0_mult_x_sums_align_2_q};

    // xIfSign_mergedSignalTM_uid361_i_arrayidx17_conv10_mult_x_im0(BITJOIN,360)@97
    assign xIfSign_mergedSignalTM_uid361_i_arrayidx17_conv10_mult_x_im0_q = {GND_q, i_arrayidx17_conv10_mult_x_bs1_merged_bit_select_b};

    // aPostPad_uid366_i_arrayidx17_conv10_mult_x_im0(BITJOIN,365)@97
    assign aPostPad_uid366_i_arrayidx17_conv10_mult_x_im0_q = {xIfSign_mergedSignalTM_uid361_i_arrayidx17_conv10_mult_x_im0_q, padACst_uid365_i_arrayidx17_conv10_mult_x_im0_q};

    // sub_uid367_i_arrayidx17_conv10_mult_x_im0(SUB,366)@97 + 1
    assign sub_uid367_i_arrayidx17_conv10_mult_x_im0_a = $unsigned({{1{aPostPad_uid366_i_arrayidx17_conv10_mult_x_im0_q[21]}}, aPostPad_uid366_i_arrayidx17_conv10_mult_x_im0_q});
    assign sub_uid367_i_arrayidx17_conv10_mult_x_im0_b = $unsigned({{4{xIfSign_mergedSignalTM_uid361_i_arrayidx17_conv10_mult_x_im0_q[18]}}, xIfSign_mergedSignalTM_uid361_i_arrayidx17_conv10_mult_x_im0_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sub_uid367_i_arrayidx17_conv10_mult_x_im0_o <= 23'b0;
        end
        else if (SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_backEN == 1'b1)
        begin
            sub_uid367_i_arrayidx17_conv10_mult_x_im0_o <= $unsigned($signed(sub_uid367_i_arrayidx17_conv10_mult_x_im0_a) - $signed(sub_uid367_i_arrayidx17_conv10_mult_x_im0_b));
        end
    end
    assign sub_uid367_i_arrayidx17_conv10_mult_x_im0_q = sub_uid367_i_arrayidx17_conv10_mult_x_im0_o[22:0];

    // i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,1248)@98
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(sub_uid367_i_arrayidx17_conv10_mult_x_im0_q[20:0]);

    // i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1263)@98
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b, i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid370_i_arrayidx17_conv10_mult_x_im0_q};

    // i_arrayidx17_conv10_mult_x_sums_align_2(BITSHIFT,277)@98
    assign i_arrayidx17_conv10_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid435_i_arrayidx17_conv10_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx17_conv10_mult_x_sums_align_2_q = i_arrayidx17_conv10_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,1256)@98
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx17_conv10_mult_x_sums_align_2_q};

    // i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1250)@98
    assign i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b, i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid370_i_arrayidx17_conv10_mult_x_im0_q};

    // SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0(STALLENABLE,1655)
    // Valid signal propagation
    assign SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_V0 = SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_s_tv_0 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backStall & SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_backEN = ~ (SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_v_s_0 = SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_backEN & SE_out_redist28_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_95_fifo_V0;
    // Backward Stall generation
    assign SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_backStall = ~ (SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_backEN == 1'b0)
            begin
                SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_R_v_0 <= SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_R_v_0 & SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_R_v_0 <= SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2(STALLREG,2034)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= 9'bxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= 9'bxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= $unsigned(i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c);
                SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= $unsigned(redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_i_valid = SE_sub_uid367_i_arrayidx17_conv10_mult_x_im0_V0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_V = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 : i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data1
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 : i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data2
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D2 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 : i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data3
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D3 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 : i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data4
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D4 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 : i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data5
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D5 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data5 : i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data6
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D6 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data6 : i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c;
    // Data7
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D7 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data7 : i_arrayidx17_conv10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c;
    // Data8
    assign SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D8 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_r_data8 : redist29_i_llvm_fpga_pop_i32_row_028_pop1443_pop31_conv112_out_data_out_98_0_q;

    // i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,1157)@98 + 1
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D2};
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_D3};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // i_arrayidx32_conv10_add_x_p1_of_2(ADD,1139)@98 + 1
    assign i_arrayidx32_conv10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_D0};
    assign i_arrayidx32_conv10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx32_conv10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx32_conv10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx32_conv10_add_x_p1_of_2_o <= $unsigned(i_arrayidx32_conv10_add_x_p1_of_2_a) + $unsigned(i_arrayidx32_conv10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx32_conv10_add_x_p1_of_2_c[0] = i_arrayidx32_conv10_add_x_p1_of_2_o[52];
    assign i_arrayidx32_conv10_add_x_p1_of_2_q = i_arrayidx32_conv10_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2(STALLENABLE,1725)
    // Valid signal propagation
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_V0 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_V1 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_V2 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_arrayidx17_conv10_add_x_p1_of_2_backStall & SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p2_of_2_backStall & SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_or0 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_or1 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_or0;
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 | SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 & SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx32_conv10_add_x_p1_of_2(STALLENABLE,1723)
    // Valid signal propagation
    assign SE_i_arrayidx32_conv10_add_x_p1_of_2_V0 = SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx32_conv10_add_x_p1_of_2_V1 = SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx32_conv10_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx32_conv10_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx32_conv10_add_x_p2_of_2_backStall & SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx32_conv10_add_x_p1_of_2_or0 = SE_i_arrayidx32_conv10_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx32_conv10_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx32_conv10_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx32_conv10_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx32_conv10_add_x_p1_of_2_v_s_0 = SE_i_arrayidx32_conv10_add_x_p1_of_2_backEN & SR_SE_i_arrayidx32_conv10_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx32_conv10_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx32_conv10_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx32_conv10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_0 & SE_i_arrayidx32_conv10_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx32_conv10_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx32_conv10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_1 & SE_i_arrayidx32_conv10_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx32_conv10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx32_conv10_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2(STALLREG,2035)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_valid <= SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx32_conv10_add_x_p1_of_2_q);
                SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_and0 = SE_i_arrayidx32_conv10_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_i_valid = SE_i_arrayidx17_conv10_mult_x_sums_result_add_0_0_p1_of_2_V2 & SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_V = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_data0 : i_arrayidx32_conv10_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_r_data1 : i_arrayidx32_conv10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;

    // i_arrayidx32_conv10_dupName_0_add_x_p1_of_2(ADD,1121)@99 + 1
    assign i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_D0};
    assign i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_q = i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2(STALLENABLE,1718)
    // Valid signal propagation
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_V0 = SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_V1 = SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backStall & SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_or0 = SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2(STALLENABLE,1720)
    // Valid signal propagation
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_V0 = SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_V1 = SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_s_tv_1 = SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_or0 = SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_v_s_0 = SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backEN & SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_0 & SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_1 & SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2(STALLREG,2036)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_valid <= SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_and0 = SE_i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_i_valid = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V1 & SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backStall = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_V = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_D0 = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_data0 : i_arrayidx32_conv10_dupName_0_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_D1 = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_r_data1 : i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2(STALLREG,2054)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_valid <= SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx17_conv10_add_x_p1_of_2_q);
                SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_and0 = SE_i_arrayidx17_conv10_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_i_valid = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_V = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_data0 : i_arrayidx17_conv10_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_r_data1 : i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel0_2(STALLENABLE,1733)
    // Valid signal propagation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel0_2_V0 = 1'b1;
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel0_2_V1 = 1'b1;

    // SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,1734)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0 <= '0;
            SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0 <= SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg0;
            // Successor 1
            SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1 <= SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed0 = (~ (SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_backStall) & SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid) | SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0;
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed1 = (~ (SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_backStall) & SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid) | SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1;
    // Consuming
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_StallValid = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg0 = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_StallValid & SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg1 = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_StallValid & SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed1;
    // Backward Stall generation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_or0 = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireStall = ~ (SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed1 & SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_or0);
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid & ~ (SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0);
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V1 = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid & ~ (SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_tessel0_2_V0;
    assign SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_V0 & SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17(STALLENABLE,1592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_consumed0 = (~ (SE_i_arrayidx17_conv10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_wireValid) | SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_consumed1 = (~ (SE_bgTrunc_i_inc57_conv122_sel_x_backStall) & SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_wireValid) | SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_StallValid = SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_backStall & SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_toReg0 = SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_StallValid & SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_toReg1 = SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_StallValid & SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_or0 = SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_consumed1 & SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_or0);
    assign SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_backStall = SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_V0 = SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_V1 = SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_wireValid = i_llvm_fpga_pop_i32_col_027_pop21_conv17_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_col_027_push21_conv140(STALLENABLE,1622)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_col_027_push21_conv140_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_col_027_push21_conv140_wireValid = i_llvm_fpga_push_i32_col_027_push21_conv140_out_valid_out;

    // c_i32_166(CONSTANT,89)
    assign c_i32_166_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc57_conv122(ADD,115)@100
    assign i_inc57_conv122_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_col_027_pop21_conv17_b};
    assign i_inc57_conv122_b = {1'b0, c_i32_166_q};
    assign i_inc57_conv122_o = $unsigned(i_inc57_conv122_a) + $unsigned(i_inc57_conv122_b);
    assign i_inc57_conv122_q = i_inc57_conv122_o[32:0];

    // bgTrunc_i_inc57_conv122_sel_x(BITSELECT,3)@100
    assign bgTrunc_i_inc57_conv122_sel_x_b = i_inc57_conv122_q[31:0];

    // i_llvm_fpga_push_i32_col_027_push21_conv140(BLACKBOX,151)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    conv1_i_llvm_fpga_push_i32_col_027_push21_0 thei_llvm_fpga_push_i32_col_027_push21_conv140 (
        .in_data_in(bgTrunc_i_inc57_conv122_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_col_027_pop21_conv17_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_conv15_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_col_027_push21_conv140_backStall),
        .in_valid_in(SE_bgTrunc_i_inc57_conv122_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_col_027_push21_conv140_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_col_027_push21_conv140_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i32_col_027_push21_conv140_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_col_027_push21_conv140_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_064(CONSTANT,88)
    assign c_i32_064_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_col_027_pop21_conv17(BLACKBOX,136)@99
    // in in_stall_in@20000000
    // out out_data_out@100
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@100
    conv1_i_llvm_fpga_pop_i32_col_027_pop21_0 thei_llvm_fpga_pop_i32_col_027_pop21_conv17 (
        .in_data_in(c_i32_064_q),
        .in_dir(redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_col_027_push21_conv140_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_col_027_push21_conv140_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_col_027_pop21_conv17_backStall),
        .in_valid_in(SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_V2),
        .out_data_out(i_llvm_fpga_pop_i32_col_027_pop21_conv17_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_col_027_pop21_conv17_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i32_col_027_pop21_conv17_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_col_027_pop21_conv17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0(STALLREG,2026)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid <= 1'b0;
            SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid <= SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall & (SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid | SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid);

            if (SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_data0 <= $unsigned(redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_V0;
    // Stall signal propagation
    assign SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall = SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid | ~ (SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid);

    // Valid
    assign SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V = SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid == 1'b1 ? SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid : SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid;

    assign SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_D0 = SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid == 1'b1 ? SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_data0 : redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_q;

    // redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3(REG,1404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN == 1'b1)
        begin
            redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q <= $unsigned(SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_D0);
        end
    end

    // SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4(STALLREG,2025)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_valid <= 1'b0;
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_valid <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backStall & (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_valid | SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_i_valid);

            if (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_data0 <= $unsigned(redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_i_valid = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V0;
    // Stall signal propagation
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backStall = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_valid | ~ (SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_i_valid);

    // Valid
    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_V = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_valid == 1'b1 ? SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_valid : SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_i_valid;

    assign SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_D0 = SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_valid == 1'b1 ? SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_r_data0 : redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q;

    // SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4(STALLENABLE,1837)
    // Valid signal propagation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_V0 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_0;
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_V1 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_1;
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_V2 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_2;
    // Stall signal propagation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_s_tv_0 = SR_SE_redist41_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_0;
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_s_tv_1 = i_llvm_fpga_pipeline_keep_going_conv15_out_stall_out & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_1;
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_s_tv_2 = i_llvm_fpga_pop_i32_col_027_pop21_conv17_out_stall_out & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_2;
    // Backward Enable generation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_or0 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_s_tv_0;
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_or1 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_s_tv_1 | SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_or0;
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backEN = ~ (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_s_tv_2 | SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_v_s_0 = SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backEN & SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_V;
    // Backward Stall generation
    assign SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backStall = ~ (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_0 <= 1'b0;
            SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_1 <= 1'b0;
            SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backEN == 1'b0)
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_0 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_0 & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_s_tv_0;
            end
            else
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_0 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_v_s_0;
            end

            if (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backEN == 1'b0)
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_1 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_1 & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_s_tv_1;
            end
            else
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_1 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_v_s_0;
            end

            if (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backEN == 1'b0)
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_2 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_2 & SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_s_tv_2;
            end
            else
            begin
                SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_R_v_2 <= SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_notexitcond_conv142(STALLENABLE,1614)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_conv142_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_conv142_wireValid = i_llvm_fpga_push_i1_notexitcond_conv142_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_conv142(BLACKBOX,147)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    conv1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_conv142 (
        .in_data_in(i_exitcond_conv123_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_conv15_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_conv118_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_conv142_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_conv142_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_conv142_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_conv142_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_conv142_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_conv142_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_conv149(STALLENABLE,1602)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_conv149_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_conv149_wireValid = i_llvm_fpga_push_i1_lastiniteration_conv149_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_conv149(BLACKBOX,141)@198
    // in in_stall_in@20000000
    // out out_data_out@199
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@199
    conv1_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_conv149 (
        .in_data_in(SR_SE_i_next_initerations_conv120_vt_select_0_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_conv15_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_conv120_vt_select_0_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_conv149_backStall),
        .in_valid_in(SE_i_next_initerations_conv120_vt_select_0_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_conv149_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_conv149_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_conv149_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_conv149_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4(REG,1405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_backEN == 1'b1)
        begin
            redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_q <= $unsigned(SR_SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_D0);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_conv15(BLACKBOX,125)@99
    // in in_stall_in@20000000
    // out out_data_out@100
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@100
    conv1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_conv15 (
        .in_data_in(redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_conv149_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_conv149_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_conv142_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_conv142_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_conv15_backStall),
        .in_valid_in(SE_redist40_conv1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_98_4_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_conv15_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_conv15_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_conv15_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_conv15_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_conv15_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_conv15_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_conv15_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_conv15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pipeline_keep_going_conv15(BITJOIN,1451)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_conv15_q = i_llvm_fpga_pipeline_keep_going_conv15_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_conv15(BITSELECT,1452)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_conv15_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_conv15_q[0:0]);

    // bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg(STALLFIFO,2017)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(101),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_conv15(STALLENABLE,1570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg6 <= SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1544_push32_conv130_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed2 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1240_push28_conv135_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed3 = (~ (SE_in_i_llvm_fpga_push_i32_channel_029_pop1138_push27_conv133_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed4 = (~ (SE_bgTrunc_i_inc57_conv122_sel_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed5 = (~ (SR_SE_in_i_llvm_fpga_push_i32_row_028_pop1443_push31_conv128_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed6 = (~ (SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg6;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_toReg6 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed6;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or5 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_conv15_consumed6 & SE_out_i_llvm_fpga_pipeline_keep_going_conv15_or5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V6 = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_conv15_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_conv15_wireValid = i_llvm_fpga_pipeline_keep_going_conv15_out_valid_out;

    // SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0(STALLREG,2059)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_valid <= 1'b0;
            SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_valid <= SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_backStall & (SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_valid | SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_i_valid);

            if (SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_conv15_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_conv15_V6;
    // Stall signal propagation
    assign SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_backStall = SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_valid | ~ (SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_i_valid);

    // Valid
    assign SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_V = SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_valid : SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_i_valid;

    assign SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_D0 = SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_r_data0 : bubble_select_i_llvm_fpga_pipeline_keep_going_conv15_b;

    // redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0(REG,1396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_backEN == 1'b1)
        begin
            redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_q <= $unsigned(SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_D0);
        end
    end

    // SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0(STALLENABLE,1827)
    // Valid signal propagation
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_V0 = SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_s_tv_0 = SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backStall & SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_backEN = ~ (SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_v_s_0 = SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_backEN & SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_V;
    // Backward Stall generation
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_backStall = ~ (SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_R_v_0 <= SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_R_v_0 & SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_R_v_0 <= SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1(STALLREG,2060)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_valid <= 1'b0;
            SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_valid <= SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backStall & (SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_valid | SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_i_valid);

            if (SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_data0 <= $unsigned(redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_i_valid = SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backStall = SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_valid | ~ (SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_i_valid);

    // Valid
    assign SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_V = SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_valid : SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_i_valid;

    assign SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_D0 = SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_r_data0 : redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_0_q;

    // redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1(REG,1397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backEN == 1'b1)
        begin
            redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_q <= $unsigned(SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_D0);
        end
    end

    // SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1(STALLENABLE,1828)
    // Valid signal propagation
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_V0 = SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_0;
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_V1 = SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_1;
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_V2 = SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_2;
    // Stall signal propagation
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_s_tv_0 = SR_SE_leftShiftStage0_uid324_i_cleanups_shl_conv10_shift_x_backStall & SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_0;
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_conv143_backStall & SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_1;
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_s_tv_2 = redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_stall_out & SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_2;
    // Backward Enable generation
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_or0 = SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_s_tv_0;
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_or1 = SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_s_tv_1 | SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_or0;
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backEN = ~ (SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_s_tv_2 | SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_v_s_0 = SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backEN & SR_SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_V;
    // Backward Stall generation
    assign SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backStall = ~ (SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_1 <= 1'b0;
            SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_0 <= SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_0 & SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_0 <= SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_v_s_0;
            end

            if (SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_1 <= SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_1 & SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_1 <= SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_v_s_0;
            end

            if (SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_2 <= SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_2 & SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_s_tv_2;
            end
            else
            begin
                SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_R_v_2 <= SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_v_s_0;
            end

        end
    end

    // redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo(STALLFIFO,1398)
    assign redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_valid_in = SE_redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_V2;
    assign redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_stall_in = SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_backStall;
    assign redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_data_in = redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_q;
    assign redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_valid_in_bitsignaltemp = redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_valid_in[0];
    assign redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_stall_in_bitsignaltemp = redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_stall_in[0];
    assign redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_valid_out[0] = redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_valid_out_bitsignaltemp;
    assign redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_stall_out[0] = redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo (
        .valid_in(redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_valid_in_bitsignaltemp),
        .stall_in(redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_stall_in_bitsignaltemp),
        .data_in(redist34_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_2_1_q),
        .valid_out(redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_valid_out_bitsignaltemp),
        .stall_out(redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_stall_out_bitsignaltemp),
        .data_out(redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo(BITJOIN,1516)
    assign bubble_join_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_q = redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_data_out;

    // bubble_select_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo(BITSELECT,1517)
    assign bubble_select_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_b = $unsigned(bubble_join_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_q[0:0]);

    // SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo(STALLENABLE,1830)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_fromReg0 <= '0;
            SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_fromReg0 <= SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_toReg0;
            // Successor 1
            SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_fromReg1 <= SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_consumed0 = (~ (SR_SE_i_next_initerations_conv120_vt_select_0_backStall) & SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_wireValid) | SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_fromReg0;
    assign SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_consumed1 = (~ (SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_backStall) & SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_wireValid) | SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_fromReg1;
    // Consuming
    assign SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_StallValid = SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_backStall & SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_wireValid;
    assign SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_toReg0 = SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_StallValid & SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_consumed0;
    assign SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_toReg1 = SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_StallValid & SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_or0 = SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_consumed0;
    assign SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_wireStall = ~ (SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_consumed1 & SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_or0);
    assign SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_backStall = SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_V0 = SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_wireValid & ~ (SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_fromReg0);
    assign SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_V1 = SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_wireValid & ~ (SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_wireValid = redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_valid_out;

    // SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0(STALLREG,2061)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_valid <= 1'b0;
            SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_valid <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_backStall & (SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_valid | SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_i_valid);

            if (SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_data0 <= $unsigned(bubble_select_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_i_valid = SE_out_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_backStall = SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_valid | ~ (SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_i_valid);

    // Valid
    assign SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_V = SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_valid == 1'b1 ? SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_valid : SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_i_valid;

    assign SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_D0 = SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_valid == 1'b1 ? SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_r_data0 : bubble_select_redist35_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_98_fifo_b;

    // redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0(REG,1399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_backEN == 1'b1)
        begin
            redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_q <= $unsigned(SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_D0);
        end
    end

    // SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0(STALLENABLE,1831)
    // Valid signal propagation
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_V0 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_R_v_0;
    // Stall signal propagation
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_s_tv_0 = SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backStall & SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_R_v_0;
    // Backward Enable generation
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_backEN = ~ (SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_v_s_0 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_backEN & SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_V;
    // Backward Stall generation
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_backStall = ~ (SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_backEN == 1'b0)
            begin
                SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_R_v_0 <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_R_v_0 & SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_s_tv_0;
            end
            else
            begin
                SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_R_v_0 <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_v_s_0;
            end

        end
    end

    // SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1(STALLREG,2062)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_valid <= 1'b0;
            SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_valid <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backStall & (SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_valid | SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_i_valid);

            if (SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_data0 <= $unsigned(redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_i_valid = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_V0;
    // Stall signal propagation
    assign SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backStall = SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_valid | ~ (SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_i_valid);

    // Valid
    assign SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V = SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_valid == 1'b1 ? SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_valid : SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_i_valid;

    assign SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_D0 = SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_valid == 1'b1 ? SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_r_data0 : redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_0_q;

    // redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1(REG,1400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backEN == 1'b1)
        begin
            redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q <= $unsigned(SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_D0);
        end
    end

    // bubble_join_i_llvm_fpga_mem_memdep_conv160(BITJOIN,1438)
    assign bubble_join_i_llvm_fpga_mem_memdep_conv160_q = i_llvm_fpga_mem_memdep_conv160_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_conv160(BITSELECT,1439)
    assign bubble_select_i_llvm_fpga_mem_memdep_conv160_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_conv160_q[0:0]);

    // SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1(STALLENABLE,1832)
    // Valid signal propagation
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V0 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_0;
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V1 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_1;
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V2 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_2;
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V3 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_3;
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V4 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_4;
    // Stall signal propagation
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1234_push25_conv131_backStall & SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_0;
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond941_push29_conv126_backStall & SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_1;
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_2 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_backStall & SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_2;
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_3 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1742_push30_conv127_backStall & SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_3;
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_4 = SR_SE_in_i_llvm_fpga_push_i1_notcmp2236_push26_conv132_backStall & SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_4;
    // Backward Enable generation
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_or0 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_0;
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_or1 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_1 | SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_or0;
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_or2 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_2 | SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_or1;
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_or3 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_3 | SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_or2;
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backEN = ~ (SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_4 | SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_v_s_0 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backEN & SR_SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V;
    // Backward Stall generation
    assign SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backStall = ~ (SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_0 <= 1'b0;
            SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_1 <= 1'b0;
            SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_2 <= 1'b0;
            SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_3 <= 1'b0;
            SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backEN == 1'b0)
            begin
                SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_0 <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_0 & SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_0;
            end
            else
            begin
                SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_0 <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_v_s_0;
            end

            if (SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backEN == 1'b0)
            begin
                SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_1 <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_1 & SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_1;
            end
            else
            begin
                SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_1 <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_v_s_0;
            end

            if (SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backEN == 1'b0)
            begin
                SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_2 <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_2 & SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_2;
            end
            else
            begin
                SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_2 <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_v_s_0;
            end

            if (SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backEN == 1'b0)
            begin
                SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_3 <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_3 & SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_3;
            end
            else
            begin
                SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_3 <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_v_s_0;
            end

            if (SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_backEN == 1'b0)
            begin
                SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_4 <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_4 & SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_s_tv_4;
            end
            else
            begin
                SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_R_v_4 <= SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161(STALLENABLE,1607)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_backStall = i_llvm_fpga_push_i1_memdep_phi_push22_conv161_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_wireValid = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_V;

    // SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161(STALLREG,2066)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_valid <= SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_backStall & (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_valid | SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_mem_memdep_conv160_b);
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_data1 <= $unsigned(redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_and0 = SE_redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_V2;
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_i_valid = SE_out_i_llvm_fpga_mem_memdep_conv160_V1 & SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_backStall = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_V = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_valid : SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_D0 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_data0 : bubble_select_i_llvm_fpga_mem_memdep_conv160_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_D1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_r_data1 : redist36_i_llvm_fpga_pipeline_keep_going_conv15_out_data_out_100_1_q;

    // SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1(STALLENABLE,1970)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and0 = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and1 = redist27_i_masked_conv151_q_98_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and2 = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_conv16_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and3 = bubble_out_i_llvm_fpga_pipeline_keep_going_conv15_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and4 = SE_out_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and5 = SE_out_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and6 = SE_out_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and7 = SE_out_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_conv160_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_and7;

    // SE_out_i_llvm_fpga_mem_memdep_conv160(STALLENABLE,1562)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_conv160_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_conv160_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_conv160_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_conv160_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_conv160_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_conv160_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_conv160_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_conv160_wireValid) | SE_out_i_llvm_fpga_mem_memdep_conv160_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_conv160_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_conv161_backStall) & SE_out_i_llvm_fpga_mem_memdep_conv160_wireValid) | SE_out_i_llvm_fpga_mem_memdep_conv160_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_conv160_StallValid = SE_out_i_llvm_fpga_mem_memdep_conv160_backStall & SE_out_i_llvm_fpga_mem_memdep_conv160_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_conv160_toReg0 = SE_out_i_llvm_fpga_mem_memdep_conv160_StallValid & SE_out_i_llvm_fpga_mem_memdep_conv160_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_conv160_toReg1 = SE_out_i_llvm_fpga_mem_memdep_conv160_StallValid & SE_out_i_llvm_fpga_mem_memdep_conv160_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_conv160_or0 = SE_out_i_llvm_fpga_mem_memdep_conv160_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_conv160_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_conv160_consumed1 & SE_out_i_llvm_fpga_mem_memdep_conv160_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_conv160_backStall = SE_out_i_llvm_fpga_mem_memdep_conv160_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_conv160_V0 = SE_out_i_llvm_fpga_mem_memdep_conv160_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_conv160_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_conv160_V1 = SE_out_i_llvm_fpga_mem_memdep_conv160_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_conv160_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_conv160_wireValid = i_llvm_fpga_mem_memdep_conv160_out_o_valid;

    // bubble_join_coalesced_delay_3_fifo(BITJOIN,1528)
    assign bubble_join_coalesced_delay_3_fifo_q = coalesced_delay_3_fifo_data_out;

    // bubble_select_coalesced_delay_3_fifo(BITSELECT,1529)
    assign bubble_select_coalesced_delay_3_fifo_b = $unsigned(bubble_join_coalesced_delay_3_fifo_q[64:0]);

    // sel_for_coalesced_delay_3(BITSELECT,1359)
    assign sel_for_coalesced_delay_3_b = $unsigned(bubble_select_coalesced_delay_3_fifo_b[63:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(bubble_select_coalesced_delay_3_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_conv160(BLACKBOX,121)@169
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_conv1_avm_address@20000000
    // out out_memdep_conv1_avm_burstcount@20000000
    // out out_memdep_conv1_avm_byteenable@20000000
    // out out_memdep_conv1_avm_enable@20000000
    // out out_memdep_conv1_avm_read@20000000
    // out out_memdep_conv1_avm_write@20000000
    // out out_memdep_conv1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@200
    // out out_o_writeack@200
    conv1_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_conv160 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_3_b),
        .in_i_predicate(sel_for_coalesced_delay_3_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_conv160_backStall),
        .in_i_valid(SE_out_coalesced_delay_3_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_b),
        .in_memdep_conv1_avm_readdata(in_memdep_conv1_avm_readdata),
        .in_memdep_conv1_avm_readdatavalid(in_memdep_conv1_avm_readdatavalid),
        .in_memdep_conv1_avm_waitrequest(in_memdep_conv1_avm_waitrequest),
        .in_memdep_conv1_avm_writeack(in_memdep_conv1_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_conv160_out_lsu_memdep_o_active),
        .out_memdep_conv1_avm_address(i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_address),
        .out_memdep_conv1_avm_burstcount(i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_burstcount),
        .out_memdep_conv1_avm_byteenable(i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_byteenable),
        .out_memdep_conv1_avm_enable(i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_enable),
        .out_memdep_conv1_avm_read(i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_read),
        .out_memdep_conv1_avm_write(i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_write),
        .out_memdep_conv1_avm_writedata(i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_conv160_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_conv160_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_conv160_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx32_conv10_dupName_1_add_x_p2_of_2(ADD,1131)@101 + 1
    assign i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_D2;
    assign i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_D1}, i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_q = i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_o[13:1];

    // redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0(REG,1371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q(BITJOIN,1132)@102
    assign i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx32_conv10_dupName_1_add_x_p2_of_2_q, redist14_i_arrayidx32_conv10_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx32_conv10_dupName_4_trunc_sel_x(BITSELECT,48)@102
    assign i_arrayidx32_conv10_dupName_4_trunc_sel_x_b = i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // join_for_coalesced_delay_3(BITJOIN,1358)
    assign join_for_coalesced_delay_3_q = {i_first_cleanup_xor_conv137_q, i_arrayidx32_conv10_dupName_4_trunc_sel_x_b};

    // coalesced_delay_3_fifo(STALLFIFO,1414)
    assign coalesced_delay_3_fifo_valid_in = SE_i_arrayidx32_conv10_dupName_1_add_x_BitJoin_for_q_V0;
    assign coalesced_delay_3_fifo_stall_in = SE_out_coalesced_delay_3_fifo_backStall;
    assign coalesced_delay_3_fifo_data_in = join_for_coalesced_delay_3_q;
    assign coalesced_delay_3_fifo_valid_in_bitsignaltemp = coalesced_delay_3_fifo_valid_in[0];
    assign coalesced_delay_3_fifo_stall_in_bitsignaltemp = coalesced_delay_3_fifo_stall_in[0];
    assign coalesced_delay_3_fifo_valid_out[0] = coalesced_delay_3_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_3_fifo_stall_out[0] = coalesced_delay_3_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_3_fifo (
        .valid_in(coalesced_delay_3_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_3_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_3_q),
        .valid_out(coalesced_delay_3_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_3_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_3_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_3_fifo(STALLENABLE,1850)
    // Valid signal propagation
    assign SE_out_coalesced_delay_3_fifo_V0 = SE_out_coalesced_delay_3_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_3_fifo_backStall = i_llvm_fpga_mem_memdep_conv160_out_o_stall | ~ (SE_out_coalesced_delay_3_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_3_fifo_and0 = coalesced_delay_3_fifo_valid_out;
    assign SE_out_coalesced_delay_3_fifo_wireValid = i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_out_o_valid & SE_out_coalesced_delay_3_fifo_and0;

    // bubble_join_i_llvm_fpga_mem_unnamed_conv19_conv154(BITJOIN,1448)
    assign bubble_join_i_llvm_fpga_mem_unnamed_conv19_conv154_q = i_llvm_fpga_mem_unnamed_conv19_conv154_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_conv19_conv154(BITSELECT,1449)
    assign bubble_select_i_llvm_fpga_mem_unnamed_conv19_conv154_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_conv19_conv154_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_conv18_conv153(BITJOIN,1445)
    assign bubble_join_i_llvm_fpga_mem_unnamed_conv18_conv153_q = i_llvm_fpga_mem_unnamed_conv18_conv153_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_conv18_conv153(BITSELECT,1446)
    assign bubble_select_i_llvm_fpga_mem_unnamed_conv18_conv153_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_conv18_conv153_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_conv17_conv152(BITJOIN,1442)
    assign bubble_join_i_llvm_fpga_mem_unnamed_conv17_conv152_q = i_llvm_fpga_mem_unnamed_conv17_conv152_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_conv17_conv152(BITSELECT,1443)
    assign bubble_select_i_llvm_fpga_mem_unnamed_conv17_conv152_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_conv17_conv152_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x(BLACKBOX,82)@134
    // in in_i_stall@20000000
    // out out_c0_exit97_0_tpl@169
    // out out_c0_exit97_1_tpl@169
    // out out_o_stall@20000000
    // out out_o_valid@169
    conv1_i_sfc_s_c0_in_for_cond7_preheader_s_c0_enter9212_conv157 thei_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x (
        .in_c0_eni391_0_tpl(GND_q),
        .in_c0_eni391_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_conv17_conv152_b),
        .in_c0_eni391_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_conv18_conv153_b),
        .in_c0_eni391_3_tpl(bubble_select_i_llvm_fpga_mem_unnamed_conv19_conv154_b),
        .in_i_stall(SE_out_coalesced_delay_3_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_V0),
        .out_c0_exit97_0_tpl(),
        .out_c0_exit97_1_tpl(i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_out_c0_exit97_1_tpl),
        .out_o_stall(i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_conv18_conv153(BLACKBOX,123)@102
    // in in_i_stall@20000000
    // out out_o_readdata@134
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_unnamed_conv18_conv1_avm_address@20000000
    // out out_unnamed_conv18_conv1_avm_burstcount@20000000
    // out out_unnamed_conv18_conv1_avm_byteenable@20000000
    // out out_unnamed_conv18_conv1_avm_enable@20000000
    // out out_unnamed_conv18_conv1_avm_read@20000000
    // out out_unnamed_conv18_conv1_avm_write@20000000
    // out out_unnamed_conv18_conv1_avm_writedata@20000000
    conv1_i_llvm_fpga_mem_unnamed_8_conv10 thei_llvm_fpga_mem_unnamed_conv18_conv153 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_D0),
        .in_i_dependence(SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_D1),
        .in_i_predicate(SR_SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_backStall),
        .in_i_valid(SE_i_arrayidx23_conv10_add_x_BitJoin_for_q_V0),
        .in_unnamed_conv18_conv1_avm_readdata(in_unnamed_conv18_conv1_avm_readdata),
        .in_unnamed_conv18_conv1_avm_readdatavalid(in_unnamed_conv18_conv1_avm_readdatavalid),
        .in_unnamed_conv18_conv1_avm_waitrequest(in_unnamed_conv18_conv1_avm_waitrequest),
        .in_unnamed_conv18_conv1_avm_writeack(in_unnamed_conv18_conv1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_conv18_conv153_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv18_conv153_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv18_conv153_out_o_valid),
        .out_unnamed_conv18_conv1_avm_address(i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_address),
        .out_unnamed_conv18_conv1_avm_burstcount(i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_burstcount),
        .out_unnamed_conv18_conv1_avm_byteenable(i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_byteenable),
        .out_unnamed_conv18_conv1_avm_enable(i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_enable),
        .out_unnamed_conv18_conv1_avm_read(i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_read),
        .out_unnamed_conv18_conv1_avm_write(i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_write),
        .out_unnamed_conv18_conv1_avm_writedata(i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_conv19_conv154(BLACKBOX,124)@102
    // in in_i_stall@20000000
    // out out_o_readdata@134
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_unnamed_conv19_conv1_avm_address@20000000
    // out out_unnamed_conv19_conv1_avm_burstcount@20000000
    // out out_unnamed_conv19_conv1_avm_byteenable@20000000
    // out out_unnamed_conv19_conv1_avm_enable@20000000
    // out out_unnamed_conv19_conv1_avm_read@20000000
    // out out_unnamed_conv19_conv1_avm_write@20000000
    // out out_unnamed_conv19_conv1_avm_writedata@20000000
    conv1_i_llvm_fpga_mem_unnamed_9_conv10 thei_llvm_fpga_mem_unnamed_conv19_conv154 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_D0),
        .in_i_dependence(SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_D1),
        .in_i_predicate(SR_SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_backStall),
        .in_i_valid(SE_i_arrayidx25_conv10_add_x_BitJoin_for_q_V0),
        .in_unnamed_conv19_conv1_avm_readdata(in_unnamed_conv19_conv1_avm_readdata),
        .in_unnamed_conv19_conv1_avm_readdatavalid(in_unnamed_conv19_conv1_avm_readdatavalid),
        .in_unnamed_conv19_conv1_avm_waitrequest(in_unnamed_conv19_conv1_avm_waitrequest),
        .in_unnamed_conv19_conv1_avm_writeack(in_unnamed_conv19_conv1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_conv19_conv154_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv19_conv154_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv19_conv154_out_o_valid),
        .out_unnamed_conv19_conv1_avm_address(i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_address),
        .out_unnamed_conv19_conv1_avm_burstcount(i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_burstcount),
        .out_unnamed_conv19_conv1_avm_byteenable(i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_byteenable),
        .out_unnamed_conv19_conv1_avm_enable(i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_enable),
        .out_unnamed_conv19_conv1_avm_read(i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_read),
        .out_unnamed_conv19_conv1_avm_write(i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_write),
        .out_unnamed_conv19_conv1_avm_writedata(i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154(STALLENABLE,1568)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_V0 = SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_backStall = i_sfc_s_c0_in_for_cond7_preheader_conv1s_c0_enter9212_conv157_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_and0 = i_llvm_fpga_mem_unnamed_conv19_conv154_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_and1 = i_llvm_fpga_mem_unnamed_conv18_conv153_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_wireValid = i_llvm_fpga_mem_unnamed_conv17_conv152_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_and1;

    // i_arrayidx17_conv10_dupName_0_add_x_p2_of_2(ADD,1086)@101 + 1
    assign i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_D2;
    assign i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_D1}, i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_q = i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_o[13:1];

    // redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0(REG,1374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q(BITJOIN,1087)@102
    assign i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_q = {i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_q, redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx17_conv10_dupName_2_trunc_sel_x(BITSELECT,16)@102
    assign i_arrayidx17_conv10_dupName_2_trunc_sel_x_b = i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_q[63:0];

    // SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q(STALLREG,2058)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_valid <= 1'b0;
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_data1 <= 1'bx;
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_valid <= SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_backStall & (SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_valid | SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_i_valid);

            if (SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_data0 <= i_arrayidx17_conv10_dupName_2_trunc_sel_x_b;
                SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_data1 <= i_reduction_conv1_1_conv148_q;
                SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_data2 <= i_first_cleanup_xor_conv137_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_and0 = SE_i_arrayidx17_conv10_dupName_0_add_x_p2_of_2_V0;
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_and1 = SE_redist17_i_arrayidx17_conv10_dupName_0_add_x_p1_of_2_q_1_0_V0 & SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_and0;
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_conv14_V3 & SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_and1;
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_conv18_V0 & SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_and2;
    // Stall signal propagation
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_backStall = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_valid | ~ (SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_i_valid);

    // Valid
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_V = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_valid : SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_i_valid;

    // Data0
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_D0 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_data0 : i_arrayidx17_conv10_dupName_2_trunc_sel_x_b;
    // Data1
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_D1 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_data1 : i_reduction_conv1_1_conv148_q;
    // Data2
    assign SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_D2 = SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_r_data2 : i_first_cleanup_xor_conv137_q;

    // i_llvm_fpga_mem_unnamed_conv17_conv152(BLACKBOX,122)@102
    // in in_i_stall@20000000
    // out out_o_readdata@134
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_unnamed_conv17_conv1_avm_address@20000000
    // out out_unnamed_conv17_conv1_avm_burstcount@20000000
    // out out_unnamed_conv17_conv1_avm_byteenable@20000000
    // out out_unnamed_conv17_conv1_avm_enable@20000000
    // out out_unnamed_conv17_conv1_avm_read@20000000
    // out out_unnamed_conv17_conv1_avm_write@20000000
    // out out_unnamed_conv17_conv1_avm_writedata@20000000
    conv1_i_llvm_fpga_mem_unnamed_7_conv10 thei_llvm_fpga_mem_unnamed_conv17_conv152 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_D0),
        .in_i_dependence(SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_D1),
        .in_i_predicate(SR_SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_conv19_conv154_backStall),
        .in_i_valid(SE_i_arrayidx17_conv10_dupName_0_add_x_BitJoin_for_q_V0),
        .in_unnamed_conv17_conv1_avm_readdata(in_unnamed_conv17_conv1_avm_readdata),
        .in_unnamed_conv17_conv1_avm_readdatavalid(in_unnamed_conv17_conv1_avm_readdatavalid),
        .in_unnamed_conv17_conv1_avm_waitrequest(in_unnamed_conv17_conv1_avm_waitrequest),
        .in_unnamed_conv17_conv1_avm_writeack(in_unnamed_conv17_conv1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_conv17_conv152_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv17_conv152_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv17_conv152_out_o_valid),
        .out_unnamed_conv17_conv1_avm_address(i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_address),
        .out_unnamed_conv17_conv1_avm_burstcount(i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_burstcount),
        .out_unnamed_conv17_conv1_avm_byteenable(i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_byteenable),
        .out_unnamed_conv17_conv1_avm_enable(i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_enable),
        .out_unnamed_conv17_conv1_avm_read(i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_read),
        .out_unnamed_conv17_conv1_avm_write(i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_write),
        .out_unnamed_conv17_conv1_avm_writedata(i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,7)
    assign out_unnamed_conv17_conv1_avm_address = i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_address;
    assign out_unnamed_conv17_conv1_avm_enable = i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_enable;
    assign out_unnamed_conv17_conv1_avm_read = i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_read;
    assign out_unnamed_conv17_conv1_avm_write = i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_write;
    assign out_unnamed_conv17_conv1_avm_writedata = i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_writedata;
    assign out_unnamed_conv17_conv1_avm_byteenable = i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_byteenable;
    assign out_unnamed_conv17_conv1_avm_burstcount = i_llvm_fpga_mem_unnamed_conv17_conv152_out_unnamed_conv17_conv1_avm_burstcount;

    // bubble_join_redist27_i_masked_conv151_q_98_fifo(BITJOIN,1504)
    assign bubble_join_redist27_i_masked_conv151_q_98_fifo_q = redist27_i_masked_conv151_q_98_fifo_data_out;

    // bubble_select_redist27_i_masked_conv151_q_98_fifo(BITSELECT,1505)
    assign bubble_select_redist27_i_masked_conv151_q_98_fifo_b = $unsigned(bubble_join_redist27_i_masked_conv151_q_98_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,8)@200
    assign out_exitcond1234_pop25 = bubble_select_i_llvm_fpga_pop_i1_exitcond1234_pop25_conv114_b;
    assign out_exitcond941_pop29 = bubble_select_i_llvm_fpga_pop_i1_exitcond941_pop29_conv110_b;
    assign out_masked = bubble_select_redist27_i_masked_conv151_q_98_fifo_b;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_conv160_b;
    assign out_notcmp1742_pop30 = bubble_select_i_llvm_fpga_pop_i1_notcmp1742_pop30_conv111_b;
    assign out_notcmp2236_pop26 = bubble_select_i_llvm_fpga_pop_i1_notcmp2236_pop26_conv115_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_conv19_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,10)
    assign out_unnamed_conv18_conv1_avm_address = i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_address;
    assign out_unnamed_conv18_conv1_avm_enable = i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_enable;
    assign out_unnamed_conv18_conv1_avm_read = i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_read;
    assign out_unnamed_conv18_conv1_avm_write = i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_write;
    assign out_unnamed_conv18_conv1_avm_writedata = i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_writedata;
    assign out_unnamed_conv18_conv1_avm_byteenable = i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_byteenable;
    assign out_unnamed_conv18_conv1_avm_burstcount = i_llvm_fpga_mem_unnamed_conv18_conv153_out_unnamed_conv18_conv1_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,12)
    assign out_unnamed_conv19_conv1_avm_address = i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_address;
    assign out_unnamed_conv19_conv1_avm_enable = i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_enable;
    assign out_unnamed_conv19_conv1_avm_read = i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_read;
    assign out_unnamed_conv19_conv1_avm_write = i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_write;
    assign out_unnamed_conv19_conv1_avm_writedata = i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_writedata;
    assign out_unnamed_conv19_conv1_avm_byteenable = i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_byteenable;
    assign out_unnamed_conv19_conv1_avm_burstcount = i_llvm_fpga_mem_unnamed_conv19_conv154_out_unnamed_conv19_conv1_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,13)
    assign out_memdep_conv1_avm_address = i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_address;
    assign out_memdep_conv1_avm_enable = i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_enable;
    assign out_memdep_conv1_avm_read = i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_read;
    assign out_memdep_conv1_avm_write = i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_write;
    assign out_memdep_conv1_avm_writedata = i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_writedata;
    assign out_memdep_conv1_avm_byteenable = i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_byteenable;
    assign out_memdep_conv1_avm_burstcount = i_llvm_fpga_mem_memdep_conv160_out_memdep_conv1_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,14)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_conv160_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,95)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv15_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_conv15_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv15_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_conv15_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,243)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_conv15_out_pipeline_valid_out;

    // sync_out(GPOUT,252)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
