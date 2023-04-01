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

// SystemVerilog created from bb_fc3_B3_stall_region
// Created for function/kernel fc3
// SystemVerilog created on Sat Apr  1 13:10:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fc3_bb_B3_stall_region (
    input wire [63:0] in_unnamed_fc38_fc3_avm_readdata,
    input wire [0:0] in_unnamed_fc38_fc3_avm_writeack,
    input wire [0:0] in_unnamed_fc38_fc3_avm_waitrequest,
    input wire [0:0] in_unnamed_fc38_fc3_avm_readdatavalid,
    output wire [63:0] out_unnamed_fc37_fc3_avm_address,
    output wire [0:0] out_unnamed_fc37_fc3_avm_enable,
    output wire [0:0] out_unnamed_fc37_fc3_avm_read,
    output wire [0:0] out_unnamed_fc37_fc3_avm_write,
    output wire [63:0] out_unnamed_fc37_fc3_avm_writedata,
    output wire [7:0] out_unnamed_fc37_fc3_avm_byteenable,
    output wire [0:0] out_unnamed_fc37_fc3_avm_burstcount,
    output wire [0:0] out_exitcond722_pop16,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp1223_pop17,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_pn1_fc3_avm_readdata,
    input wire [0:0] in_pn1_fc3_avm_writeack,
    input wire [0:0] in_pn1_fc3_avm_waitrequest,
    input wire [0:0] in_pn1_fc3_avm_readdatavalid,
    output wire [63:0] out_unnamed_fc38_fc3_avm_address,
    output wire [0:0] out_unnamed_fc38_fc3_avm_enable,
    output wire [0:0] out_unnamed_fc38_fc3_avm_read,
    output wire [0:0] out_unnamed_fc38_fc3_avm_write,
    output wire [63:0] out_unnamed_fc38_fc3_avm_writedata,
    output wire [7:0] out_unnamed_fc38_fc3_avm_byteenable,
    output wire [0:0] out_unnamed_fc38_fc3_avm_burstcount,
    input wire [63:0] in_memdep_fc3_avm_readdata,
    input wire [0:0] in_memdep_fc3_avm_writeack,
    input wire [0:0] in_memdep_fc3_avm_waitrequest,
    input wire [0:0] in_memdep_fc3_avm_readdatavalid,
    output wire [63:0] out_pn1_fc3_avm_address,
    output wire [0:0] out_pn1_fc3_avm_enable,
    output wire [0:0] out_pn1_fc3_avm_read,
    output wire [0:0] out_pn1_fc3_avm_write,
    output wire [63:0] out_pn1_fc3_avm_writedata,
    output wire [7:0] out_pn1_fc3_avm_byteenable,
    output wire [0:0] out_pn1_fc3_avm_burstcount,
    output wire [63:0] out_memdep_fc3_avm_address,
    output wire [0:0] out_memdep_fc3_avm_enable,
    output wire [0:0] out_memdep_fc3_avm_read,
    output wire [0:0] out_memdep_fc3_avm_write,
    output wire [63:0] out_memdep_fc3_avm_writedata,
    output wire [7:0] out_memdep_fc3_avm_byteenable,
    output wire [0:0] out_memdep_fc3_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [63:0] in_unnamed_fc37_fc3_avm_readdata,
    input wire [0:0] in_unnamed_fc37_fc3_avm_writeack,
    input wire [0:0] in_unnamed_fc37_fc3_avm_waitrequest,
    input wire [0:0] in_unnamed_fc37_fc3_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc35_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc35_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond726,
    input wire [0:0] in_forked,
    input wire [31:0] in_i_014_pop928,
    input wire [0:0] in_memdep_phi2_pop1029,
    input wire [0:0] in_notcmp1227,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next_fc323_sel_x_b;
    wire [31:0] bgTrunc_i_inc_fc320_sel_x_b;
    wire [31:0] c_i32_057_recast_x_q;
    wire [0:0] fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] fc3_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] fc3_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] fc3_B3_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] fc3_B3_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] fc3_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] fc3_B3_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] i_arrayidx10_fc30_dupName_0_trunc_sel_x_b;
    wire [1:0] i_arrayidx10_fc30_c_i2_01_x_q;
    wire [63:0] i_arrayidx21_fc30_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx6_fc30_dupName_2_trunc_sel_x_b;
    wire [63:0] i_arrayidx8_fc30_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_fc314_sel_x_b;
    wire [63:0] i_idxprom_fc327_sel_x_b;
    wire [0:0] i_last_initeration_fc332_sel_x_b;
    wire [31:0] i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_out_c0_exit41_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_out_o_valid;
    wire [1:0] c_i2_155_q;
    wire [31:0] c_i32_159_q;
    wire [7:0] c_i8_161_q;
    wire [7:0] c_i8_8258_q;
    wire [0:0] i_arrayidx10_arrayidx21_fc345_s;
    reg [63:0] i_arrayidx10_arrayidx21_fc345_q;
    wire [1:0] i_cleanups_shl_fc315_vt_join_q;
    wire [0:0] i_cleanups_shl_fc315_vt_select_1_b;
    wire [0:0] i_cmp4_fc317_qi;
    reg [0:0] i_cmp4_fc317_q;
    wire [0:0] i_first_cleanup_xor_fc330_q;
    wire [8:0] i_fpga_indvars_iv_next_fc323_a;
    wire [8:0] i_fpga_indvars_iv_next_fc323_b;
    logic [8:0] i_fpga_indvars_iv_next_fc323_o;
    wire [8:0] i_fpga_indvars_iv_next_fc323_q;
    wire [63:0] i_idxprom_fc327_vt_join_q;
    wire [31:0] i_idxprom_fc327_vt_select_31_b;
    wire [32:0] i_inc_fc320_a;
    wire [32:0] i_inc_fc320_b;
    logic [32:0] i_inc_fc320_o;
    wire [32:0] i_inc_fc320_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_fc353_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_fc353_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_fc353_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_fc353_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_pn1_fc348_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_pn1_fc348_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_pn1_fc348_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_address;
    wire [0:0] i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_read;
    wire [0:0] i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_write;
    wire [63:0] i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_fc37_fc342_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc37_fc342_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc37_fc342_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_fc38_fc346_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc38_fc346_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc38_fc346_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc35_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc35_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc35_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc35_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc35_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc35_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc35_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc35_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop15_fc34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop15_fc34_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop15_fc34_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop15_fc34_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop14_fc36_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop14_fc36_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop14_fc36_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop14_fc36_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_013_pop12_fc37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_013_pop12_fc37_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_pop_i32_j_013_pop12_fc37_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_013_pop12_fc37_out_valid_out;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond722_push16_fc324_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_exitcond722_push16_fc324_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_exitcond722_push16_fc324_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond722_push16_fc324_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fc341_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fc341_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fc341_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fc341_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push13_fc354_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push13_fc354_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push13_fc354_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push13_fc354_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1223_push17_fc325_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1223_push17_fc325_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1223_push17_fc325_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1223_push17_fc325_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fc336_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fc336_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fc336_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fc336_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push15_fc349_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push15_fc349_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push15_fc349_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push15_fc349_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push14_fc331_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push14_fc331_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push14_fc331_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push14_fc331_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_013_push12_fc334_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i32_j_013_push12_fc334_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i32_j_013_push12_fc334_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_013_push12_fc334_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_out_valid_out;
    wire [0:0] i_masked_fc344_qi;
    reg [0:0] i_masked_fc344_q;
    wire [0:0] i_memdep_phi2_or_fc329_q;
    wire [0:0] i_next_cleanups_fc347_s;
    reg [1:0] i_next_cleanups_fc347_q;
    wire [1:0] i_next_initerations_fc316_vt_join_q;
    wire [0:0] i_next_initerations_fc316_vt_select_0_b;
    wire [0:0] i_notcmp_fc335_q;
    wire [0:0] i_or_fc343_q;
    wire [35:0] i_arrayidx6_fc30_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx6_fc30_mult_x_sums_align_0_qint;
    wire [44:0] i_arrayidx6_fc30_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx6_fc30_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx6_fc30_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx6_fc30_mult_x_sums_align_3_qint;
    wire [0:0] leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc30_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc30_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid239_i_cleanups_shl_fc30_shift_x_q;
    wire [0:0] leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_s;
    reg [1:0] leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid245_i_next_initerations_fc30_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid247_i_next_initerations_fc30_shift_x_q;
    wire [0:0] rightShiftStage0_uid249_i_next_initerations_fc30_shift_x_s;
    reg [1:0] rightShiftStage0_uid249_i_next_initerations_fc30_shift_x_q;
    wire [0:0] i_exitcond_fc321_cmp_nsign_q;
    wire [18:0] addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_q;
    wire [20:0] add_uid264_i_arrayidx6_fc30_mult_x_im0_q;
    wire [21:0] a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0_a;
    wire [21:0] a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0_b;
    logic [21:0] a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0_o;
    wire [21:0] a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0_q;
    wire [3:0] sR_bottomExtension_uid272_i_arrayidx6_fc30_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_q;
    wire [20:0] add_uid334_i_arrayidx6_fc30_mult_x_im3_q;
    wire [21:0] a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3_a;
    wire [21:0] a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3_b;
    logic [21:0] a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3_o;
    wire [21:0] a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3_q;
    wire [23:0] a_subconst_21_uid339_i_arrayidx6_fc30_mult_x_im3_q;
    wire [22:0] sR_bottomRange_uid343_i_arrayidx6_fc30_mult_x_im3_in;
    wire [22:0] sR_bottomRange_uid343_i_arrayidx6_fc30_mult_x_im3_b;
    wire [26:0] sR_mergedSignalTM_uid344_i_arrayidx6_fc30_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_q;
    wire [20:0] add_uid404_i_arrayidx6_fc30_mult_x_im6_q;
    wire [21:0] a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6_a;
    wire [21:0] a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6_b;
    logic [21:0] a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6_o;
    wire [21:0] a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6_q;
    wire [23:0] a_subconst_21_uid409_i_arrayidx6_fc30_mult_x_im6_q;
    wire [22:0] sR_bottomRange_uid413_i_arrayidx6_fc30_mult_x_im6_in;
    wire [22:0] sR_bottomRange_uid413_i_arrayidx6_fc30_mult_x_im6_b;
    wire [26:0] sR_mergedSignalTM_uid414_i_arrayidx6_fc30_mult_x_im6_q;
    wire [10:0] addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_q;
    wire [12:0] add_uid474_i_arrayidx6_fc30_mult_x_im9_q;
    wire [13:0] a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9_a;
    wire [13:0] a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9_b;
    logic [13:0] a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9_o;
    wire [13:0] a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9_q;
    wire [15:0] a_subconst_21_uid479_i_arrayidx6_fc30_mult_x_im9_q;
    wire [14:0] sR_bottomRange_uid483_i_arrayidx6_fc30_mult_x_im9_in;
    wire [14:0] sR_bottomRange_uid483_i_arrayidx6_fc30_mult_x_im9_b;
    wire [18:0] sR_mergedSignalTM_uid484_i_arrayidx6_fc30_mult_x_im9_q;
    wire [52:0] i_arrayidx10_fc30_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_fc30_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_fc30_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_fc30_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_fc30_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_fc30_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_fc30_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_fc30_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_fc30_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_fc30_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx10_fc30_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx21_fc30_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx21_fc30_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx21_fc30_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx21_fc30_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx21_fc30_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx21_fc30_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx21_fc30_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx21_fc30_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx21_fc30_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx21_fc30_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx21_fc30_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx6_fc30_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx6_fc30_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx6_fc30_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx6_fc30_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx6_fc30_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx6_fc30_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx6_fc30_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx6_fc30_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx6_fc30_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx6_fc30_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx8_fc30_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx8_fc30_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx8_fc30_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx8_fc30_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx8_fc30_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx8_fc30_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx8_fc30_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx8_fc30_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx8_fc30_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx8_fc30_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx8_fc30_add_x_BitJoin_for_q_q;
    wire [10:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_UpperBits_for_a_q;
    wire [52:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [23:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [23:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [23:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [21:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [12:0] i_arrayidx10_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [17:0] i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel0_2_b;
    wire [51:0] i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [11:0] i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [12:0] i_arrayidx21_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [12:0] i_arrayidx6_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx6_fc30_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx6_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [12:0] i_arrayidx8_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [1:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [20:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b;
    wire [51:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [21:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [21:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [17:0] i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_e;
    wire [51:0] i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [24:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b;
    wire [10:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    wire [6:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [20:0] i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid261_i_arrayidx6_fc30_mult_x_im0_merged_bit_select_b;
    wire [15:0] lowRangeB_uid261_i_arrayidx6_fc30_mult_x_im0_merged_bit_select_c;
    wire [1:0] lowRangeB_uid331_i_arrayidx6_fc30_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid331_i_arrayidx6_fc30_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid401_i_arrayidx6_fc30_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid401_i_arrayidx6_fc30_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid471_i_arrayidx6_fc30_mult_x_im9_merged_bit_select_b;
    wire [7:0] lowRangeB_uid471_i_arrayidx6_fc30_mult_x_im9_merged_bit_select_c;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [17:0] join_for_coalesced_delay_2_q;
    wire [15:0] sel_for_coalesced_delay_2_b;
    wire [1:0] sel_for_coalesced_delay_2_c;
    wire [17:0] join_for_coalesced_delay_3_q;
    wire [15:0] sel_for_coalesced_delay_3_b;
    wire [1:0] sel_for_coalesced_delay_3_c;
    wire [17:0] join_for_coalesced_delay_4_q;
    wire [15:0] sel_for_coalesced_delay_4_b;
    wire [1:0] sel_for_coalesced_delay_4_c;
    wire [9:0] join_for_coalesced_delay_5_q;
    wire [7:0] sel_for_coalesced_delay_5_b;
    wire [1:0] sel_for_coalesced_delay_5_c;
    wire [64:0] join_for_coalesced_delay_6_q;
    wire [63:0] sel_for_coalesced_delay_6_b;
    wire [0:0] sel_for_coalesced_delay_6_c;
    reg [20:0] redist8_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [10:0] redist9_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q;
    reg [11:0] redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [20:0] redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_q;
    reg [51:0] redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_q;
    reg [14:0] redist19_sR_bottomRange_uid483_i_arrayidx6_fc30_mult_x_im9_b_1_0_q;
    reg [22:0] redist20_sR_bottomRange_uid413_i_arrayidx6_fc30_mult_x_im6_b_1_0_q;
    reg [22:0] redist21_sR_bottomRange_uid343_i_arrayidx6_fc30_mult_x_im3_b_1_0_q;
    wire [0:0] redist22_i_masked_fc344_q_98_fifo_valid_in;
    wire redist22_i_masked_fc344_q_98_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist22_i_masked_fc344_q_98_fifo_stall_in;
    wire redist22_i_masked_fc344_q_98_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist22_i_masked_fc344_q_98_fifo_data_in;
    wire [0:0] redist22_i_masked_fc344_q_98_fifo_valid_out;
    wire redist22_i_masked_fc344_q_98_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist22_i_masked_fc344_q_98_fifo_stall_out;
    wire redist22_i_masked_fc344_q_98_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist22_i_masked_fc344_q_98_fifo_data_out;
    reg [31:0] redist23_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_2_0_q;
    reg [31:0] redist23_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_2_1_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_0_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_1_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_valid_in;
    wire redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_stall_in;
    wire redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_data_in;
    wire [0:0] redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_valid_out;
    wire redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_stall_out;
    wire redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_data_out;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_q;
    wire [0:0] redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_valid_in;
    wire redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_stall_in;
    wire redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_data_in;
    wire [0:0] redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_valid_out;
    wire redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_stall_out;
    wire redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_data_out;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_q;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_q;
    reg [0:0] redist31_i_cmp4_fc317_q_2_0_q;
    reg [0:0] redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q;
    reg [0:0] redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q;
    reg [0:0] redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q;
    reg [0:0] redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q;
    reg [0:0] redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q;
    reg [0:0] redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q;
    wire [0:0] redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in;
    wire redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in;
    wire redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_in;
    wire [0:0] redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out;
    wire redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out;
    wire redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_out;
    reg [0:0] redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q;
    reg [0:0] redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q;
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
    wire [1:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_out;
    reg [17:0] coalesced_delay_2_0_q;
    reg [17:0] coalesced_delay_3_0_q;
    reg [17:0] coalesced_delay_4_0_q;
    reg [9:0] coalesced_delay_5_0_q;
    wire [0:0] coalesced_delay_6_fifo_valid_in;
    wire coalesced_delay_6_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_6_fifo_stall_in;
    wire coalesced_delay_6_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_6_fifo_data_in;
    wire [0:0] coalesced_delay_6_fifo_valid_out;
    wire coalesced_delay_6_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_6_fifo_stall_out;
    wire coalesced_delay_6_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_6_fifo_data_out;
    wire [35:0] bubble_join_fc3_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_fc3_B3_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_fc3_B3_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_fc3_B3_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_fc3_B3_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_fc3_B3_merge_reg_aunroll_x_f;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_fc353_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_fc353_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_pn1_fc348_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_pn1_fc348_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_fc37_fc342_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_fc37_fc342_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_fc38_fc346_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_fc38_fc346_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_fc35_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_fc35_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations_pop14_fc36_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations_pop14_fc36_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_013_pop12_fc37_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_013_pop12_fc37_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_b;
    wire [35:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_join_redist22_i_masked_fc344_q_98_fifo_q;
    wire [0:0] bubble_select_redist22_i_masked_fc344_q_98_fifo_b;
    wire [0:0] bubble_join_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_q;
    wire [0:0] bubble_select_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_b;
    wire [0:0] bubble_join_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_q;
    wire [0:0] bubble_select_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_b;
    wire [0:0] bubble_join_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_q;
    wire [0:0] bubble_select_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_6_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_6_fifo_b;
    wire [0:0] SE_bgTrunc_i_inc_fc320_sel_x_wireValid;
    wire [0:0] SE_bgTrunc_i_inc_fc320_sel_x_and0;
    wire [0:0] SE_bgTrunc_i_inc_fc320_sel_x_backStall;
    wire [0:0] SE_bgTrunc_i_inc_fc320_sel_x_V0;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_fc3_B3_merge_reg_aunroll_x_V6;
    reg [0:0] SE_i_cmp4_fc317_R_v_0;
    wire [0:0] SE_i_cmp4_fc317_v_s_0;
    wire [0:0] SE_i_cmp4_fc317_s_tv_0;
    wire [0:0] SE_i_cmp4_fc317_backEN;
    wire [0:0] SE_i_cmp4_fc317_backStall;
    wire [0:0] SE_i_cmp4_fc317_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc353_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_V3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond722_push16_fc324_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond722_push16_fc324_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_fc341_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_fc341_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_fc336_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_fc336_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push15_fc349_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push15_fc349_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push14_fc331_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push14_fc331_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_013_push12_fc334_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_013_push12_fc334_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_backStall;
    reg [0:0] SE_i_masked_fc344_R_v_0;
    wire [0:0] SE_i_masked_fc344_v_s_0;
    wire [0:0] SE_i_masked_fc344_s_tv_0;
    wire [0:0] SE_i_masked_fc344_backEN;
    wire [0:0] SE_i_masked_fc344_backStall;
    wire [0:0] SE_i_masked_fc344_V0;
    wire [0:0] SE_i_next_initerations_fc316_vt_select_0_wireValid;
    wire [0:0] SE_i_next_initerations_fc316_vt_select_0_wireStall;
    wire [0:0] SE_i_next_initerations_fc316_vt_select_0_StallValid;
    wire [0:0] SE_i_next_initerations_fc316_vt_select_0_toReg0;
    reg [0:0] SE_i_next_initerations_fc316_vt_select_0_fromReg0;
    wire [0:0] SE_i_next_initerations_fc316_vt_select_0_consumed0;
    wire [0:0] SE_i_next_initerations_fc316_vt_select_0_toReg1;
    reg [0:0] SE_i_next_initerations_fc316_vt_select_0_fromReg1;
    wire [0:0] SE_i_next_initerations_fc316_vt_select_0_consumed1;
    wire [0:0] SE_i_next_initerations_fc316_vt_select_0_or0;
    wire [0:0] SE_i_next_initerations_fc316_vt_select_0_backStall;
    wire [0:0] SE_i_next_initerations_fc316_vt_select_0_V0;
    wire [0:0] SE_i_next_initerations_fc316_vt_select_0_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_V0;
    reg [0:0] SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_R_v_0;
    wire [0:0] SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_v_s_0;
    wire [0:0] SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_s_tv_0;
    wire [0:0] SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN;
    wire [0:0] SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backStall;
    wire [0:0] SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_V0;
    reg [0:0] SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_fc30_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx21_fc30_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_wireStall;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_StallValid;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_toReg0;
    reg [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_fromReg0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_consumed0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_toReg1;
    reg [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_fromReg1;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_consumed1;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_or0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_V0;
    wire [0:0] SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_V1;
    reg [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx6_fc30_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx6_fc30_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx8_fc30_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_or0;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_or1;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_V1;
    wire [0:0] SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_V2;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel0_2_V0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel0_2_V1;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_wireStall;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_StallValid;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_toReg0;
    reg [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_toReg1;
    reg [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_consumed1;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_or0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_V1;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_V1;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_V2;
    wire [0:0] SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_V3;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireStall;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_StallValid;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg0;
    reg [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg1;
    reg [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed1;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_or0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V1;
    wire [0:0] SE_join_for_coalesced_delay_6_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_6_backStall;
    wire [0:0] SE_join_for_coalesced_delay_6_V0;
    reg [0:0] SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0;
    wire [0:0] SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_v_s_0;
    wire [0:0] SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_s_tv_0;
    wire [0:0] SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN;
    wire [0:0] SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backStall;
    wire [0:0] SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_V0;
    reg [0:0] SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_V0;
    wire [0:0] SE_in_redist22_i_masked_fc344_q_98_fifo_wireValid;
    wire [0:0] SE_in_redist22_i_masked_fc344_q_98_fifo_backStall;
    wire [0:0] SE_in_redist22_i_masked_fc344_q_98_fifo_V0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_wireValid;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_wireStall;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_StallValid;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_toReg0;
    reg [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_fromReg0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_consumed0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_toReg1;
    reg [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_fromReg1;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_consumed1;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_or0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_backStall;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_V0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_V1;
    reg [0:0] SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_R_v_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_v_s_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_s_tv_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_backEN;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_backStall;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_V0;
    reg [0:0] SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_R_v_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_v_s_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_s_tv_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_backEN;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_backStall;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_V0;
    reg [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_backEN;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_backStall;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_V0;
    reg [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_1;
    reg [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_2;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_s_tv_2;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backEN;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_or0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_or1;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backStall;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_V0;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_V1;
    wire [0:0] SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_V2;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_wireValid;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_wireStall;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_StallValid;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_toReg0;
    reg [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_fromReg0;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_consumed0;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_toReg1;
    reg [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_fromReg1;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_consumed1;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_or0;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_backStall;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_V0;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_V1;
    reg [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_R_v_0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_v_s_0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_s_tv_0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_backEN;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_backStall;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_V0;
    reg [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_0;
    reg [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_1;
    reg [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_2;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_v_s_0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_s_tv_0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_s_tv_1;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_s_tv_2;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backEN;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_or0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_or1;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backStall;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_V0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_V1;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_V2;
    reg [0:0] SE_redist31_i_cmp4_fc317_q_2_0_R_v_0;
    wire [0:0] SE_redist31_i_cmp4_fc317_q_2_0_v_s_0;
    wire [0:0] SE_redist31_i_cmp4_fc317_q_2_0_s_tv_0;
    wire [0:0] SE_redist31_i_cmp4_fc317_q_2_0_backEN;
    wire [0:0] SE_redist31_i_cmp4_fc317_q_2_0_backStall;
    wire [0:0] SE_redist31_i_cmp4_fc317_q_2_0_V0;
    reg [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_v_s_0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_s_tv_0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V0;
    reg [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_v_s_0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_s_tv_0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V0;
    reg [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_v_s_0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_s_tv_0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V0;
    reg [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0;
    reg [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1;
    reg [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_1;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_2;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_or0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_or1;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V0;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V1;
    wire [0:0] SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V2;
    reg [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_v_s_0;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_s_tv_0;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V0;
    reg [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0;
    reg [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1;
    reg [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2;
    reg [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_0;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_1;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_2;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_3;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or0;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or1;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or2;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V0;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V1;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V2;
    wire [0:0] SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V3;
    wire [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid;
    wire [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireStall;
    wire [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_StallValid;
    wire [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg0;
    reg [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0;
    wire [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed0;
    wire [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg1;
    reg [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1;
    wire [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed1;
    wire [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_or0;
    wire [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_backStall;
    wire [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V0;
    wire [0:0] SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V1;
    reg [0:0] SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0;
    wire [0:0] SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_v_s_0;
    wire [0:0] SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_s_tv_0;
    wire [0:0] SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN;
    wire [0:0] SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall;
    wire [0:0] SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V0;
    reg [0:0] SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0;
    wire [0:0] SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_v_s_0;
    wire [0:0] SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_s_tv_0;
    wire [0:0] SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN;
    wire [0:0] SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall;
    wire [0:0] SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V0;
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
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_6_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_6_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_6_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_6_fifo_V0;
    wire [0:0] SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_V0;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_stall_out_bitsignaltemp;
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
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid;
    reg [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid;
    reg [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_data0;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_D0;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid;
    reg [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid;
    reg [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_data0;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_D0;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid;
    reg [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid;
    reg [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_data0;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_D0;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid;
    reg [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid;
    reg [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_data0;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V;
    wire [0:0] SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_D0;
    wire [0:0] SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid;
    reg [0:0] SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid;
    reg [0:0] SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_data0;
    wire [0:0] SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall;
    wire [0:0] SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V;
    wire [0:0] SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_D0;
    wire [0:0] SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid;
    reg [0:0] SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid;
    reg [0:0] SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_data0;
    wire [0:0] SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall;
    wire [0:0] SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V;
    wire [0:0] SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_D0;
    wire [0:0] SR_SE_i_masked_fc344_i_valid;
    reg [0:0] SR_SE_i_masked_fc344_r_valid;
    wire [0:0] SR_SE_i_masked_fc344_and0;
    reg [0:0] SR_SE_i_masked_fc344_r_data0;
    reg [0:0] SR_SE_i_masked_fc344_r_data1;
    wire [0:0] SR_SE_i_masked_fc344_backStall;
    wire [0:0] SR_SE_i_masked_fc344_V;
    wire [0:0] SR_SE_i_masked_fc344_D0;
    wire [0:0] SR_SE_i_masked_fc344_D1;
    wire [0:0] SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid;
    reg [0:0] SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid;
    reg [0:0] SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_data0;
    wire [0:0] SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall;
    wire [0:0] SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V;
    wire [0:0] SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_D0;
    wire [0:0] SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid;
    reg [0:0] SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid;
    reg [0:0] SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_data0;
    wire [0:0] SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall;
    wire [0:0] SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V;
    wire [0:0] SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_D0;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_i_valid;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_valid;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_and0;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data0;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data1;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data2;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data3;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_V;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D0;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D2;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D3;
    wire [0:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid;
    reg [51:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data1;
    reg [20:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data2;
    reg [10:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data3;
    reg [31:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data4;
    wire [0:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D1;
    wire [20:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D2;
    wire [10:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D3;
    wire [31:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_valid;
    reg [21:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data0;
    reg [21:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data2;
    reg [31:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data3;
    wire [0:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_V;
    wire [21:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_D0;
    wire [21:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_D2;
    wire [31:0] SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_D3;
    wire [0:0] SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_join_for_coalesced_delay_6_i_valid;
    reg [0:0] SR_SE_join_for_coalesced_delay_6_r_valid;
    wire [0:0] SR_SE_join_for_coalesced_delay_6_and0;
    reg [64:0] SR_SE_join_for_coalesced_delay_6_r_data0;
    wire [0:0] SR_SE_join_for_coalesced_delay_6_backStall;
    wire [0:0] SR_SE_join_for_coalesced_delay_6_V;
    wire [64:0] SR_SE_join_for_coalesced_delay_6_D0;
    wire [0:0] SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_i_valid;
    reg [0:0] SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_valid;
    reg [0:0] SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_data0;
    wire [0:0] SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_backStall;
    wire [0:0] SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_V;
    wire [0:0] SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_D0;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_valid;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_and0;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_and1;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_and2;
    reg [63:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_data0;
    reg [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_data1;
    reg [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_data2;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_V;
    wire [63:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_D0;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_D1;
    wire [0:0] SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_D2;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_i_valid;
    reg [0:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_valid;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_and0;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_and1;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_and2;
    reg [63:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_data0;
    reg [0:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_data1;
    reg [0:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_data2;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_backStall;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_V;
    wire [63:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_D0;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_D1;
    wire [0:0] SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_D2;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist31_i_cmp4_fc317_q_2_0_i_valid;
    reg [0:0] SR_SE_redist31_i_cmp4_fc317_q_2_0_r_valid;
    reg [0:0] SR_SE_redist31_i_cmp4_fc317_q_2_0_r_data0;
    wire [0:0] SR_SE_redist31_i_cmp4_fc317_q_2_0_backStall;
    wire [0:0] SR_SE_redist31_i_cmp4_fc317_q_2_0_V;
    wire [0:0] SR_SE_redist31_i_cmp4_fc317_q_2_0_D0;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and0;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and1;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and2;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and3;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and4;
    reg [63:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_data0;
    reg [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_data2;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_backStall;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_V;
    wire [63:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_D0;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_D1;
    wire [0:0] SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_D2;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_i_valid;
    reg [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_valid;
    reg [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_data0;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_backStall;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_V;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_D0;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_i_valid;
    reg [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_valid;
    reg [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_data0;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backStall;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_V;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_D0;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_i_valid;
    reg [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_valid;
    reg [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_data0;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_backStall;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_V;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_D0;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_i_valid;
    reg [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_valid;
    reg [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_data0;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backStall;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_V;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_D1;
    wire [0:0] SR_SE_i_next_initerations_fc316_vt_select_0_i_valid;
    reg [0:0] SR_SE_i_next_initerations_fc316_vt_select_0_r_valid;
    wire [0:0] SR_SE_i_next_initerations_fc316_vt_select_0_and0;
    reg [0:0] SR_SE_i_next_initerations_fc316_vt_select_0_r_data0;
    reg [0:0] SR_SE_i_next_initerations_fc316_vt_select_0_r_data1;
    reg [0:0] SR_SE_i_next_initerations_fc316_vt_select_0_r_data2;
    reg [1:0] SR_SE_i_next_initerations_fc316_vt_select_0_r_data3;
    wire [0:0] SR_SE_i_next_initerations_fc316_vt_select_0_backStall;
    wire [0:0] SR_SE_i_next_initerations_fc316_vt_select_0_V;
    wire [0:0] SR_SE_i_next_initerations_fc316_vt_select_0_D0;
    wire [0:0] SR_SE_i_next_initerations_fc316_vt_select_0_D1;
    wire [0:0] SR_SE_i_next_initerations_fc316_vt_select_0_D2;
    wire [1:0] SR_SE_i_next_initerations_fc316_vt_select_0_D3;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_D1;
    wire [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_i_valid;
    reg [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_valid;
    wire [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_and0;
    wire [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_and1;
    reg [1:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_data0;
    reg [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_data1;
    wire [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_backStall;
    wire [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_V;
    wire [1:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_D0;
    wire [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_and0;
    reg [31:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_V;
    wire [31:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_and0;
    reg [7:0] SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_V;
    wire [7:0] SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_D1;


    // SE_i_arrayidx8_fc30_add_x_BitJoin_for_q(STALLENABLE,991)
    // Valid signal propagation
    assign SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_V0 = SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_unnamed_fc37_fc342_out_o_stall | ~ (SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_wireValid = SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_V;

    // bubble_join_i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x(BITJOIN,771)
    assign bubble_join_i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_q = i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_out_c0_exit41_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x(BITSELECT,772)
    assign bubble_select_i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_q[31:0]);

    // SE_bgTrunc_i_inc_fc320_sel_x(STALLENABLE,859)
    // Valid signal propagation
    assign SE_bgTrunc_i_inc_fc320_sel_x_V0 = SE_bgTrunc_i_inc_fc320_sel_x_wireValid;
    // Backward Stall generation
    assign SE_bgTrunc_i_inc_fc320_sel_x_backStall = i_llvm_fpga_push_i32_j_013_push12_fc334_out_stall_out | ~ (SE_bgTrunc_i_inc_fc320_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bgTrunc_i_inc_fc320_sel_x_and0 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_V2;
    assign SE_bgTrunc_i_inc_fc320_sel_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V3 & SE_bgTrunc_i_inc_fc320_sel_x_and0;

    // i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel0_2(BITSELECT,581)
    assign i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel0_2_b = $unsigned(c_i32_057_recast_x_q[17:0]);

    // bubble_join_i_llvm_fpga_pop_i32_j_013_pop12_fc37(BITJOIN,827)
    assign bubble_join_i_llvm_fpga_pop_i32_j_013_pop12_fc37_q = i_llvm_fpga_pop_i32_j_013_pop12_fc37_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_013_pop12_fc37(BITSELECT,828)
    assign bubble_select_i_llvm_fpga_pop_i32_j_013_pop12_fc37_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_013_pop12_fc37_q[31:0]);

    // i_arrayidx10_fc30_c_i2_01_x(CONSTANT,19)
    assign i_arrayidx10_fc30_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,606)@100
    assign i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_i_llvm_fpga_pop_i32_j_013_pop12_fc37_b, i_arrayidx10_fc30_c_i2_01_x_q};

    // bubble_join_fc3_B3_merge_reg_aunroll_x(BITJOIN,764)
    assign bubble_join_fc3_B3_merge_reg_aunroll_x_q = {fc3_B3_merge_reg_aunroll_x_out_data_out_4_tpl, fc3_B3_merge_reg_aunroll_x_out_data_out_3_tpl, fc3_B3_merge_reg_aunroll_x_out_data_out_2_tpl, fc3_B3_merge_reg_aunroll_x_out_data_out_1_tpl, fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_fc3_B3_merge_reg_aunroll_x(BITSELECT,765)
    assign bubble_select_fc3_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_fc3_B3_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_fc3_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_fc3_B3_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_fc3_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_fc3_B3_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_fc3_B3_merge_reg_aunroll_x_e = $unsigned(bubble_join_fc3_B3_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_fc3_B3_merge_reg_aunroll_x_f = $unsigned(bubble_join_fc3_B3_merge_reg_aunroll_x_q[35:35]);

    // join_for_coalesced_delay_1(BITJOIN,702)
    assign join_for_coalesced_delay_1_q = {bubble_select_fc3_B3_merge_reg_aunroll_x_d, bubble_select_fc3_B3_merge_reg_aunroll_x_c};

    // redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0(REG,751)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN == 1'b1)
        begin
            redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q <= $unsigned(SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_D0);
        end
    end

    // SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0(STALLENABLE,1073)
    // Valid signal propagation
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V0 = SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0;
    // Stall signal propagation
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_s_tv_0 = SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall & SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0;
    // Backward Enable generation
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN = ~ (SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_v_s_0 = SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN & SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V;
    // Backward Stall generation
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall = ~ (SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN == 1'b0)
            begin
                SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0 <= SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0 & SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_s_tv_0;
            end
            else
            begin
                SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0 <= SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_v_s_0;
            end

        end
    end

    // SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1(STALLREG,1236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid <= 1'b0;
            SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid <= SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall & (SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid | SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid);

            if (SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_data0 <= $unsigned(redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid = SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V0;
    // Stall signal propagation
    assign SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall = SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid | ~ (SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid);

    // Valid
    assign SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V = SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid == 1'b1 ? SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid : SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid;

    assign SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_D0 = SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid == 1'b1 ? SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_data0 : redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q;

    // redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1(REG,752)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b1)
        begin
            redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q <= $unsigned(SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_D0);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop15_fc34(BITJOIN,817)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_q = i_llvm_fpga_pop_i2_cleanups_pop15_fc34_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc34(BITSELECT,818)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_q[1:0]);

    // i_first_cleanup_fc314_sel_x(BITSELECT,54)@102
    assign i_first_cleanup_fc314_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_b[0:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39(BITJOIN,830)
    assign bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_q = i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39(BITSELECT,831)
    assign bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_b = $unsigned(bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_q[7:0]);

    // i_exitcond_fc321_cmp_nsign(LOGICAL,251)@102
    assign i_exitcond_fc321_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_b[7:7]));

    // i_notcmp_fc335(LOGICAL,130)@102
    assign i_notcmp_fc335_q = i_exitcond_fc321_cmp_nsign_q ^ VCC_q;

    // i_first_cleanup_xor_fc330(LOGICAL,83)@102
    assign i_first_cleanup_xor_fc330_q = i_first_cleanup_fc314_sel_x_b ^ VCC_q;

    // SE_i_arrayidx21_fc30_add_x_p2_of_2(STALLENABLE,982)
    // Valid signal propagation
    assign SE_i_arrayidx21_fc30_add_x_p2_of_2_V0 = SE_i_arrayidx21_fc30_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx21_fc30_add_x_p2_of_2_s_tv_0 = SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_backStall & SE_i_arrayidx21_fc30_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx21_fc30_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx21_fc30_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx21_fc30_add_x_p2_of_2_v_s_0 = SE_i_arrayidx21_fc30_add_x_p2_of_2_backEN & SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx21_fc30_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx21_fc30_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx21_fc30_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx21_fc30_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx21_fc30_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx21_fc30_add_x_p2_of_2_R_v_0 & SE_i_arrayidx21_fc30_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx21_fc30_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx21_fc30_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326(STALLENABLE,933)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_wireValid = i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_out_valid_out;

    // redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0(REG,747)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN == 1'b1)
        begin
            redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q <= $unsigned(SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_D0);
        end
    end

    // redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1(REG,748)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN == 1'b1)
        begin
            redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q <= $unsigned(SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_D0);
        end
    end

    // SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2(STALLENABLE,1071)
    // Valid signal propagation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V0 = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0;
    // Stall signal propagation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_s_tv_0 = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall & SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0;
    // Backward Enable generation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN = ~ (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_v_s_0 = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN & SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V;
    // Backward Stall generation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall = ~ (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN == 1'b0)
            begin
                SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0 <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0 & SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_s_tv_0;
            end
            else
            begin
                SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0 <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_v_s_0;
            end

        end
    end

    // SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2(STALLREG,1233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid <= 1'b0;
            SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall & (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid | SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid);

            if (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_data0 <= $unsigned(redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V0;
    // Stall signal propagation
    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid | ~ (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid);

    // Valid
    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid == 1'b1 ? SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid : SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid;

    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_D0 = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid == 1'b1 ? SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_data0 : redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q;

    // SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1(STALLENABLE,1070)
    // Valid signal propagation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V0 = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0;
    // Stall signal propagation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_s_tv_0 = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall & SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0;
    // Backward Enable generation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN = ~ (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_v_s_0 = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN & SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V;
    // Backward Stall generation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall = ~ (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN == 1'b0)
            begin
                SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0 <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0 & SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_s_tv_0;
            end
            else
            begin
                SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0 <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_v_s_0;
            end

        end
    end

    // SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1(STALLREG,1232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid <= 1'b0;
            SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall & (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid | SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid);

            if (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_data0 <= $unsigned(redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V0;
    // Stall signal propagation
    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid | ~ (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid);

    // Valid
    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid == 1'b1 ? SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid : SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid;

    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_D0 = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid == 1'b1 ? SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_data0 : redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q;

    // SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0(STALLENABLE,1069)
    // Valid signal propagation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V0 = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0;
    // Stall signal propagation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_s_tv_0 = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall & SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0;
    // Backward Enable generation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN = ~ (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_v_s_0 = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN & SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V;
    // Backward Stall generation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall = ~ (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN == 1'b0)
            begin
                SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0 <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0 & SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_s_tv_0;
            end
            else
            begin
                SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0 <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_v_s_0;
            end

        end
    end

    // SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0(STALLREG,1231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid <= 1'b0;
            SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall & (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid | SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid);

            if (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_data0 <= $unsigned(SR_SE_out_coalesced_delay_0_fifo_D2);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid = SE_out_coalesced_delay_0_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid | ~ (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid);

    // Valid
    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid == 1'b1 ? SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid : SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid;

    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_D0 = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid == 1'b1 ? SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_data0 : SR_SE_out_coalesced_delay_0_fifo_D2;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,1080)
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
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
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

    // bubble_join_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312(BITJOIN,824)
    assign bubble_join_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_q = i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312(BITSELECT,825)
    assign bubble_select_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_q[31:0]);

    // redist23_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_2_0(REG,734)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_2_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_b);
        end
    end

    // redist23_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_2_1(REG,735)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_2_1_q <= $unsigned(redist23_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_2_0_q);
        end
    end

    // lowRangeB_uid401_i_arrayidx6_fc30_mult_x_im6_merged_bit_select(BITSELECT,655)@96
    assign lowRangeB_uid401_i_arrayidx6_fc30_mult_x_im6_merged_bit_select_b = i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_d[1:0];
    assign lowRangeB_uid401_i_arrayidx6_fc30_mult_x_im6_merged_bit_select_c = i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_d[17:2];

    // i_idxprom_fc327_sel_x(BITSELECT,56)@96
    assign i_idxprom_fc327_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_b[31:0]};

    // i_idxprom_fc327_vt_select_31(BITSELECT,92)@96
    assign i_idxprom_fc327_vt_select_31_b = i_idxprom_fc327_sel_x_b[31:0];

    // i_idxprom_fc327_vt_join(BITJOIN,91)@96
    assign i_idxprom_fc327_vt_join_q = {c_i32_057_recast_x_q, i_idxprom_fc327_vt_select_31_b};

    // i_arrayidx6_fc30_mult_x_bs1_merged_bit_select(BITSELECT,646)@96
    assign i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_b = i_idxprom_fc327_vt_join_q[17:0];
    assign i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_c = i_idxprom_fc327_vt_join_q[35:18];
    assign i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_d = i_idxprom_fc327_vt_join_q[53:36];
    assign i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_e = i_idxprom_fc327_vt_join_q[63:54];

    // addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6(ADD,402)@96 + 1
    assign addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_a = {1'b0, i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_b = {3'b000, lowRangeB_uid401_i_arrayidx6_fc30_mult_x_im6_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_o <= $unsigned(addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_a) + $unsigned(addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_q = addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_o[18:0];

    // add_uid404_i_arrayidx6_fc30_mult_x_im6(BITJOIN,403)@97
    assign add_uid404_i_arrayidx6_fc30_mult_x_im6_q = {addsumAHighB_uid403_i_arrayidx6_fc30_mult_x_im6_q, sel_for_coalesced_delay_4_c};

    // a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6(ADD,407)@97
    assign a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6_a = {1'b0, add_uid404_i_arrayidx6_fc30_mult_x_im6_q};
    assign a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6_b = {6'b000000, sel_for_coalesced_delay_4_b};
    assign a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6_o = $unsigned(a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6_a) + $unsigned(a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6_b);
    assign a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6_q = a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6_o[21:0];

    // join_for_coalesced_delay_4(BITJOIN,711)
    assign join_for_coalesced_delay_4_q = {lowRangeB_uid401_i_arrayidx6_fc30_mult_x_im6_merged_bit_select_b, lowRangeB_uid401_i_arrayidx6_fc30_mult_x_im6_merged_bit_select_c};

    // coalesced_delay_4_0(REG,760)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_4_0_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN == 1'b1)
        begin
            coalesced_delay_4_0_q <= $unsigned(join_for_coalesced_delay_4_q);
        end
    end

    // sel_for_coalesced_delay_4(BITSELECT,712)
    assign sel_for_coalesced_delay_4_b = $unsigned(coalesced_delay_4_0_q[15:0]);
    assign sel_for_coalesced_delay_4_c = $unsigned(coalesced_delay_4_0_q[17:16]);

    // a_subconst_21_uid409_i_arrayidx6_fc30_mult_x_im6(BITJOIN,408)@97
    assign a_subconst_21_uid409_i_arrayidx6_fc30_mult_x_im6_q = {a_subconst_21_sumAHighB_uid408_i_arrayidx6_fc30_mult_x_im6_q, sel_for_coalesced_delay_4_c};

    // sR_bottomRange_uid413_i_arrayidx6_fc30_mult_x_im6(BITSELECT,412)@97
    assign sR_bottomRange_uid413_i_arrayidx6_fc30_mult_x_im6_in = a_subconst_21_uid409_i_arrayidx6_fc30_mult_x_im6_q[22:0];
    assign sR_bottomRange_uid413_i_arrayidx6_fc30_mult_x_im6_b = sR_bottomRange_uid413_i_arrayidx6_fc30_mult_x_im6_in[22:0];

    // redist20_sR_bottomRange_uid413_i_arrayidx6_fc30_mult_x_im6_b_1_0(REG,731)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sR_bottomRange_uid413_i_arrayidx6_fc30_mult_x_im6_b_1_0_q <= $unsigned(23'b00000000000000000000000);
        end
        else if (SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist20_sR_bottomRange_uid413_i_arrayidx6_fc30_mult_x_im6_b_1_0_q <= $unsigned(sR_bottomRange_uid413_i_arrayidx6_fc30_mult_x_im6_b);
        end
    end

    // sR_bottomExtension_uid272_i_arrayidx6_fc30_mult_x_im0(CONSTANT,271)
    assign sR_bottomExtension_uid272_i_arrayidx6_fc30_mult_x_im0_q = $unsigned(4'b0000);

    // sR_mergedSignalTM_uid414_i_arrayidx6_fc30_mult_x_im6(BITJOIN,413)@98
    assign sR_mergedSignalTM_uid414_i_arrayidx6_fc30_mult_x_im6_q = {redist20_sR_bottomRange_uid413_i_arrayidx6_fc30_mult_x_im6_b_1_0_q, sR_bottomExtension_uid272_i_arrayidx6_fc30_mult_x_im0_q};

    // i_arrayidx6_fc30_mult_x_sums_align_0(BITSHIFT,228)@98
    assign i_arrayidx6_fc30_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid414_i_arrayidx6_fc30_mult_x_im6_q, 9'b000000000 };
    assign i_arrayidx6_fc30_mult_x_sums_align_0_q = i_arrayidx6_fc30_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select(BITSELECT,651)@98
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b = $unsigned(i_arrayidx6_fc30_mult_x_sums_align_0_q[24:0]);
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c = $unsigned(i_arrayidx6_fc30_mult_x_sums_align_0_q[35:25]);

    // lowRangeB_uid471_i_arrayidx6_fc30_mult_x_im9_merged_bit_select(BITSELECT,656)@96
    assign lowRangeB_uid471_i_arrayidx6_fc30_mult_x_im9_merged_bit_select_b = i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_e[1:0];
    assign lowRangeB_uid471_i_arrayidx6_fc30_mult_x_im9_merged_bit_select_c = i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_e[9:2];

    // addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9(ADD,472)@96 + 1
    assign addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_a = {1'b0, i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_b = {3'b000, lowRangeB_uid471_i_arrayidx6_fc30_mult_x_im9_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_o <= 11'b0;
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_o <= $unsigned(addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_a) + $unsigned(addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_q = addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_o[10:0];

    // add_uid474_i_arrayidx6_fc30_mult_x_im9(BITJOIN,473)@97
    assign add_uid474_i_arrayidx6_fc30_mult_x_im9_q = {addsumAHighB_uid473_i_arrayidx6_fc30_mult_x_im9_q, sel_for_coalesced_delay_5_c};

    // a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9(ADD,477)@97
    assign a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9_a = {1'b0, add_uid474_i_arrayidx6_fc30_mult_x_im9_q};
    assign a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9_b = {6'b000000, sel_for_coalesced_delay_5_b};
    assign a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9_o = $unsigned(a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9_a) + $unsigned(a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9_b);
    assign a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9_q = a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9_o[13:0];

    // join_for_coalesced_delay_5(BITJOIN,714)
    assign join_for_coalesced_delay_5_q = {lowRangeB_uid471_i_arrayidx6_fc30_mult_x_im9_merged_bit_select_b, lowRangeB_uid471_i_arrayidx6_fc30_mult_x_im9_merged_bit_select_c};

    // coalesced_delay_5_0(REG,761)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_5_0_q <= $unsigned(10'b0000000000);
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN == 1'b1)
        begin
            coalesced_delay_5_0_q <= $unsigned(join_for_coalesced_delay_5_q);
        end
    end

    // sel_for_coalesced_delay_5(BITSELECT,715)
    assign sel_for_coalesced_delay_5_b = $unsigned(coalesced_delay_5_0_q[7:0]);
    assign sel_for_coalesced_delay_5_c = $unsigned(coalesced_delay_5_0_q[9:8]);

    // a_subconst_21_uid479_i_arrayidx6_fc30_mult_x_im9(BITJOIN,478)@97
    assign a_subconst_21_uid479_i_arrayidx6_fc30_mult_x_im9_q = {a_subconst_21_sumAHighB_uid478_i_arrayidx6_fc30_mult_x_im9_q, sel_for_coalesced_delay_5_c};

    // sR_bottomRange_uid483_i_arrayidx6_fc30_mult_x_im9(BITSELECT,482)@97
    assign sR_bottomRange_uid483_i_arrayidx6_fc30_mult_x_im9_in = a_subconst_21_uid479_i_arrayidx6_fc30_mult_x_im9_q[14:0];
    assign sR_bottomRange_uid483_i_arrayidx6_fc30_mult_x_im9_b = sR_bottomRange_uid483_i_arrayidx6_fc30_mult_x_im9_in[14:0];

    // redist19_sR_bottomRange_uid483_i_arrayidx6_fc30_mult_x_im9_b_1_0(REG,730)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sR_bottomRange_uid483_i_arrayidx6_fc30_mult_x_im9_b_1_0_q <= $unsigned(15'b000000000000000);
        end
        else if (SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist19_sR_bottomRange_uid483_i_arrayidx6_fc30_mult_x_im9_b_1_0_q <= $unsigned(sR_bottomRange_uid483_i_arrayidx6_fc30_mult_x_im9_b);
        end
    end

    // sR_mergedSignalTM_uid484_i_arrayidx6_fc30_mult_x_im9(BITJOIN,483)@98
    assign sR_mergedSignalTM_uid484_i_arrayidx6_fc30_mult_x_im9_q = {redist19_sR_bottomRange_uid483_i_arrayidx6_fc30_mult_x_im9_b_1_0_q, sR_bottomExtension_uid272_i_arrayidx6_fc30_mult_x_im0_q};

    // i_arrayidx6_fc30_mult_x_sums_align_3(BITSHIFT,231)@98
    assign i_arrayidx6_fc30_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid484_i_arrayidx6_fc30_mult_x_im9_q, 9'b000000000 };
    assign i_arrayidx6_fc30_mult_x_sums_align_3_q = i_arrayidx6_fc30_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,652)@98
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx6_fc30_mult_x_sums_align_3_q[6:0]);
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx6_fc30_mult_x_sums_align_3_q[27:7]);

    // lowRangeB_uid331_i_arrayidx6_fc30_mult_x_im3_merged_bit_select(BITSELECT,654)@96
    assign lowRangeB_uid331_i_arrayidx6_fc30_mult_x_im3_merged_bit_select_b = i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_c[1:0];
    assign lowRangeB_uid331_i_arrayidx6_fc30_mult_x_im3_merged_bit_select_c = i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_c[17:2];

    // addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3(ADD,332)@96 + 1
    assign addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_a = {1'b0, i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_b = {3'b000, lowRangeB_uid331_i_arrayidx6_fc30_mult_x_im3_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_o <= $unsigned(addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_a) + $unsigned(addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_q = addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_o[18:0];

    // add_uid334_i_arrayidx6_fc30_mult_x_im3(BITJOIN,333)@97
    assign add_uid334_i_arrayidx6_fc30_mult_x_im3_q = {addsumAHighB_uid333_i_arrayidx6_fc30_mult_x_im3_q, sel_for_coalesced_delay_3_c};

    // a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3(ADD,337)@97
    assign a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3_a = {1'b0, add_uid334_i_arrayidx6_fc30_mult_x_im3_q};
    assign a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3_b = {6'b000000, sel_for_coalesced_delay_3_b};
    assign a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3_o = $unsigned(a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3_a) + $unsigned(a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3_b);
    assign a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3_q = a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3_o[21:0];

    // join_for_coalesced_delay_3(BITJOIN,708)
    assign join_for_coalesced_delay_3_q = {lowRangeB_uid331_i_arrayidx6_fc30_mult_x_im3_merged_bit_select_b, lowRangeB_uid331_i_arrayidx6_fc30_mult_x_im3_merged_bit_select_c};

    // coalesced_delay_3_0(REG,759)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_3_0_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN == 1'b1)
        begin
            coalesced_delay_3_0_q <= $unsigned(join_for_coalesced_delay_3_q);
        end
    end

    // sel_for_coalesced_delay_3(BITSELECT,709)
    assign sel_for_coalesced_delay_3_b = $unsigned(coalesced_delay_3_0_q[15:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(coalesced_delay_3_0_q[17:16]);

    // a_subconst_21_uid339_i_arrayidx6_fc30_mult_x_im3(BITJOIN,338)@97
    assign a_subconst_21_uid339_i_arrayidx6_fc30_mult_x_im3_q = {a_subconst_21_sumAHighB_uid338_i_arrayidx6_fc30_mult_x_im3_q, sel_for_coalesced_delay_3_c};

    // sR_bottomRange_uid343_i_arrayidx6_fc30_mult_x_im3(BITSELECT,342)@97
    assign sR_bottomRange_uid343_i_arrayidx6_fc30_mult_x_im3_in = a_subconst_21_uid339_i_arrayidx6_fc30_mult_x_im3_q[22:0];
    assign sR_bottomRange_uid343_i_arrayidx6_fc30_mult_x_im3_b = sR_bottomRange_uid343_i_arrayidx6_fc30_mult_x_im3_in[22:0];

    // redist21_sR_bottomRange_uid343_i_arrayidx6_fc30_mult_x_im3_b_1_0(REG,732)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sR_bottomRange_uid343_i_arrayidx6_fc30_mult_x_im3_b_1_0_q <= $unsigned(23'b00000000000000000000000);
        end
        else if (SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist21_sR_bottomRange_uid343_i_arrayidx6_fc30_mult_x_im3_b_1_0_q <= $unsigned(sR_bottomRange_uid343_i_arrayidx6_fc30_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid344_i_arrayidx6_fc30_mult_x_im3(BITJOIN,343)@98
    assign sR_mergedSignalTM_uid344_i_arrayidx6_fc30_mult_x_im3_q = {redist21_sR_bottomRange_uid343_i_arrayidx6_fc30_mult_x_im3_b_1_0_q, sR_bottomExtension_uid272_i_arrayidx6_fc30_mult_x_im0_q};

    // i_arrayidx6_fc30_mult_x_sums_align_2(BITSHIFT,230)@98
    assign i_arrayidx6_fc30_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid344_i_arrayidx6_fc30_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx6_fc30_mult_x_sums_align_2_q = i_arrayidx6_fc30_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,642)@98
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx6_fc30_mult_x_sums_align_2_q};

    // lowRangeB_uid261_i_arrayidx6_fc30_mult_x_im0_merged_bit_select(BITSELECT,653)@96
    assign lowRangeB_uid261_i_arrayidx6_fc30_mult_x_im0_merged_bit_select_b = i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_b[1:0];
    assign lowRangeB_uid261_i_arrayidx6_fc30_mult_x_im0_merged_bit_select_c = i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_b[17:2];

    // join_for_coalesced_delay_2(BITJOIN,705)
    assign join_for_coalesced_delay_2_q = {lowRangeB_uid261_i_arrayidx6_fc30_mult_x_im0_merged_bit_select_b, lowRangeB_uid261_i_arrayidx6_fc30_mult_x_im0_merged_bit_select_c};

    // coalesced_delay_2_0(REG,758)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_0_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN == 1'b1)
        begin
            coalesced_delay_2_0_q <= $unsigned(join_for_coalesced_delay_2_q);
        end
    end

    // sel_for_coalesced_delay_2(BITSELECT,706)
    assign sel_for_coalesced_delay_2_b = $unsigned(coalesced_delay_2_0_q[15:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(coalesced_delay_2_0_q[17:16]);

    // addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0(ADD,262)@96 + 1
    assign addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_a = {1'b0, i_arrayidx6_fc30_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_b = {3'b000, lowRangeB_uid261_i_arrayidx6_fc30_mult_x_im0_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_o <= $unsigned(addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_a) + $unsigned(addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_q = addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_o[18:0];

    // add_uid264_i_arrayidx6_fc30_mult_x_im0(BITJOIN,263)@97
    assign add_uid264_i_arrayidx6_fc30_mult_x_im0_q = {addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_q, sel_for_coalesced_delay_2_c};

    // a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0(ADD,267)@97
    assign a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0_a = {1'b0, add_uid264_i_arrayidx6_fc30_mult_x_im0_q};
    assign a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0_b = {6'b000000, sel_for_coalesced_delay_2_b};
    assign a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0_o = $unsigned(a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0_a) + $unsigned(a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0_b);
    assign a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0_q = a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0_o[21:0];

    // i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2(BITSELECT,634)@97
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b = $unsigned(a_subconst_21_sumAHighB_uid268_i_arrayidx6_fc30_mult_x_im0_q[20:0]);

    // redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0(REG,725)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_q <= $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b);
        end
    end

    // i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,633)@98
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(redist23_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_2_1_q[1:0]);

    // i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,636)@98
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b, redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_q, i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid272_i_arrayidx6_fc30_mult_x_im0_q};

    // i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2(ADD,571)@98 + 1
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D0};
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_3(STALLENABLE,1098)
    // Valid signal propagation
    assign SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_out_stall_out | ~ (SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_3_wireValid = bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32(BLACKBOX,95)@98
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@99
    // out out_stall_out@20000000
    // out out_valid_out@99
    fc3_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_0 thei_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_backStall),
        .in_valid_in(SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32(BITJOIN,774)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_q = i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32(BITSELECT,775)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_q[63:0]);

    // i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,647)@99
    assign i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_b[51:0]);
    assign i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_b[63:52]);

    // SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1043)
    // Valid signal propagation
    assign SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_backStall & SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_V1;
    // Backward Stall generation
    assign SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32(STALLENABLE,881)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_consumed0 = (~ (SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_consumed1 = (~ (SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_wireValid = i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_out_valid_out;

    // SE_i_arrayidx6_fc30_add_x_p1_of_2(STALLENABLE,987)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc30_add_x_p1_of_2_V0 = SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx6_fc30_add_x_p1_of_2_V1 = SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx6_fc30_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx6_fc30_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_backStall & SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx6_fc30_add_x_p1_of_2_or0 = SE_i_arrayidx6_fc30_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx6_fc30_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx6_fc30_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx6_fc30_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx6_fc30_add_x_p1_of_2_v_s_0 = SE_i_arrayidx6_fc30_add_x_p1_of_2_backEN & SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc30_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx6_fc30_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx6_fc30_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_0 & SE_i_arrayidx6_fc30_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx6_fc30_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx6_fc30_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_1 & SE_i_arrayidx6_fc30_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx6_fc30_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx6_fc30_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx6_fc30_add_x_p1_of_2(STALLREG,1247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_valid <= SE_i_arrayidx6_fc30_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_and0 = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_V0;
    assign SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024a84f32_weights169_fc32_V0 & SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_backStall = SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_V = SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_D0 = SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_data0 : i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_D1 = SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_r_data1 : i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_q;

    // SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2(STALLENABLE,992)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_V0 = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_V1 = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_backStall & SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backStall & SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_or0 = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2(STALLREG,1241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= 21'bxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= 11'bxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c);
                SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= $unsigned(redist23_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_i_valid = SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_V0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_V = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data0 : i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data1
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data1 : i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data2
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D2 = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data2 : i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data3
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D3 = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data3 : i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    // Data4
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D4 = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_r_data4 : redist23_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_2_1_q;

    // SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0(STALLENABLE,1044)
    // Valid signal propagation
    assign SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_V0 = SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_s_tv_0 = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backStall & SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN = ~ (SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_v_s_0 = SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN & SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_V0;
    // Backward Stall generation
    assign SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backStall = ~ (SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b0)
            begin
                SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0 <= SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0 & SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0 <= SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_v_s_0;
            end

        end
    end

    // SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0(STALLENABLE,957)
    // Valid signal propagation
    assign SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_V0 = SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_s_tv_0 = SE_redist14_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backStall & SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN = ~ (SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_v_s_0 = SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN & SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_V0;
    // Backward Stall generation
    assign SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backStall = ~ (SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backEN == 1'b0)
            begin
                SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_R_v_0 & SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312(STALLENABLE,911)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_V0 = SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_backStall = SE_addsumAHighB_uid263_i_arrayidx6_fc30_mult_x_im0_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_wireValid = i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_valid_out;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,850)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,851)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[32:0]);

    // sel_for_coalesced_delay_0(BITSELECT,700)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);

    // SR_SE_out_coalesced_delay_0_fifo(STALLREG,1230)
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

    // i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312(BLACKBOX,110)@95
    // in in_stall_in@20000000
    // out out_data_out@96
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@96
    fc3_i_llvm_fpga_pop_i32_i_014_pop924_pop18_0 thei_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D1),
        .in_feedback_in_18(i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_i_014_pop924_push18_fc326(BLACKBOX,121)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    fc3_i_llvm_fpga_push_i32_i_014_pop924_push18_0 thei_llvm_fpga_push_i32_i_014_pop924_push18_fc326 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_D0),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_feedback_stall_out_18),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326(STALLENABLE,932)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_V0 = SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_backStall = i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_wireValid = SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_V;

    // SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326(STALLREG,1272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_valid <= SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_backStall & (SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_valid | SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_data0 <= $unsigned(redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_1_q);
                SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_fc35_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_and0 = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_V1;
    assign SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V2 & SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_backStall = SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_V = SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_valid : SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_D0 = SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_data0 : redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_1_q;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_D1 = SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_fc35_b;

    // i_arrayidx6_fc30_add_x_p1_of_2(ADD,553)@99 + 1
    assign i_arrayidx6_fc30_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_D0};
    assign i_arrayidx6_fc30_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx6_fc30_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_fc30_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx6_fc30_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx6_fc30_add_x_p1_of_2_o <= $unsigned(i_arrayidx6_fc30_add_x_p1_of_2_a) + $unsigned(i_arrayidx6_fc30_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx6_fc30_add_x_p1_of_2_c[0] = i_arrayidx6_fc30_add_x_p1_of_2_o[52];
    assign i_arrayidx6_fc30_add_x_p1_of_2_q = i_arrayidx6_fc30_add_x_p1_of_2_o[51:0];

    // i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2(ADD,572)@99 + 1
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_D2;
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_D1}, i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_o <= 24'b0;
        end
        else if (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_o[22:1];

    // i_arrayidx6_fc30_add_x_BitSelect_for_b_tessel1_0(BITSELECT,617)@100
    assign i_arrayidx6_fc30_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx6_fc30_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,619)@100
    assign i_arrayidx6_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx6_fc30_add_x_BitSelect_for_b_tessel1_0_b};

    // redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,724)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx6_fc30_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,614)@100
    assign i_arrayidx6_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_arrayidx6_fc30_dupName_0_add_x_p1_of_2(ADD,544)@100 + 1
    assign i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_D0};
    assign i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q = i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_o[51:0];

    // i_arrayidx6_fc30_add_x_p2_of_2(ADD,554)@100 + 1
    assign i_arrayidx6_fc30_add_x_p2_of_2_cin = SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_D2;
    assign i_arrayidx6_fc30_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx6_fc30_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_D1}, i_arrayidx6_fc30_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_fc30_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx6_fc30_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx6_fc30_add_x_p2_of_2_o <= $unsigned(i_arrayidx6_fc30_add_x_p2_of_2_a) + $unsigned(i_arrayidx6_fc30_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx6_fc30_add_x_p2_of_2_q = i_arrayidx6_fc30_add_x_p2_of_2_o[13:1];

    // i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,600)@101
    assign i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx6_fc30_add_x_p2_of_2_q[11:0]);

    // i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,602)@101
    assign i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0(STALLENABLE,1046)
    // Valid signal propagation
    assign SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_V0 = SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_backStall & SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0(STALLREG,1251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_V = SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q;

    // SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2(STALLENABLE,984)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_V0 = SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_V1 = SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_s_tv_1 = SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_or0 = SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2(STALLENABLE,985)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_V0 = SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_backStall & SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2(STALLREG,1250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_valid <= SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_and0 = SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_and1 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_V2 & SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_i_valid = SE_i_arrayidx6_fc30_add_x_p2_of_2_V0 & SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_V = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_data0 : i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_data1 : i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_r_data2 : i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_c;

    // SE_i_arrayidx6_fc30_add_x_p2_of_2(STALLENABLE,988)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc30_add_x_p2_of_2_V0 = SE_i_arrayidx6_fc30_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx6_fc30_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx6_fc30_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx6_fc30_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx6_fc30_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx6_fc30_add_x_p2_of_2_v_s_0 = SE_i_arrayidx6_fc30_add_x_p2_of_2_backEN & SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc30_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx6_fc30_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc30_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx6_fc30_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc30_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx6_fc30_add_x_p2_of_2_R_v_0 & SE_i_arrayidx6_fc30_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx6_fc30_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx6_fc30_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx6_fc30_add_x_p2_of_2(STALLREG,1249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_valid <= SE_i_arrayidx6_fc30_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx6_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx6_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx6_fc30_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_and0 = SE_i_arrayidx6_fc30_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_and1 = SE_redist13_i_arrayidx6_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_i_valid = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_V0 & SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_backStall = SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_V = SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_D0 = SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_data0 : i_arrayidx6_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_D1 = SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_data1 : i_arrayidx6_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_D2 = SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_r_data2 : i_arrayidx6_fc30_add_x_p1_of_2_c;

    // SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2(STALLENABLE,993)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_V0 = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_V1 = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_V2 = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_i_arrayidx6_fc30_add_x_p2_of_2_backStall & SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_backStall & SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_or0 = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_or1 = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 | SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_or0;
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 | SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 & SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 & SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_0(REG,736)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_0_q <= $unsigned(SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D4);
        end
    end

    // redist8_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,719)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist8_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D2);
        end
    end

    // i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,645)@99
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist8_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // i_arrayidx6_fc30_mult_x_sums_result_add_0_0_UpperBits_for_a(CONSTANT,566)
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_UpperBits_for_a_q = $unsigned(11'b00000000000);

    // redist9_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0(REG,720)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(11'b00000000000);
        end
        else if (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist9_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_D3);
        end
    end

    // i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,639)@99
    assign i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx6_fc30_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist9_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q};

    // SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2(STALLREG,1242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= $unsigned(redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_i_valid = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_V = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data0 : i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data1 : i_arrayidx6_fc30_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data2 : i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_D3 = SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_r_data3 : redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_0_q;

    // redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_1(REG,737)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_1_q <= $unsigned(SR_SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_D3);
        end
    end

    // i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,582)@100
    assign i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel0_2_b, redist24_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc312_out_data_out_4_1_q, i_arrayidx10_fc30_c_i2_01_x_q};

    // SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_1(STALLENABLE,1094)
    // Valid signal propagation
    assign SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_out_stall_out | ~ (SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_1_wireValid = bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30(BLACKBOX,98)@99
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@100
    // out out_stall_out@20000000
    // out out_valid_out@100
    fc3_i_llvm_fpga_ffwd_dest_p1024f32_out01811_0 thei_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_backStall),
        .in_valid_in(SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30(BITJOIN,783)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_q = i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30(BITSELECT,784)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_q[63:0]);

    // i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,650)@100
    assign i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_b[51:0]);
    assign i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_b[63:52]);

    // SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30(STALLENABLE,887)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_consumed0 = (~ (SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_consumed1 = (~ (SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_wireValid = i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_out_valid_out;

    // SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_2(STALLENABLE,1096)
    // Valid signal propagation
    assign SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_out_stall_out | ~ (SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_2_wireValid = bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31(BLACKBOX,96)@99
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@100
    // out out_stall_out@20000000
    // out out_valid_out@100
    fc3_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_0 thei_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_backStall),
        .in_valid_in(SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31(BITJOIN,777)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_q = i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31(BITSELECT,778)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_q[63:0]);

    // i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,648)@100
    assign i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_b[51:0]);
    assign i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_b[63:52]);

    // i_arrayidx10_fc30_add_x_p1_of_2(ADD,526)@100 + 1
    assign i_arrayidx10_fc30_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_D0};
    assign i_arrayidx10_fc30_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_fc30_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_fc30_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_fc30_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_fc30_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_fc30_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_fc30_add_x_p1_of_2_c[0] = i_arrayidx10_fc30_add_x_p1_of_2_o[52];
    assign i_arrayidx10_fc30_add_x_p1_of_2_q = i_arrayidx10_fc30_add_x_p1_of_2_o[51:0];

    // redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,723)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx10_fc30_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,578)@101
    assign i_arrayidx10_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_i_arrayidx10_fc30_add_x_p2_of_2(STALLENABLE,979)
    // Valid signal propagation
    assign SE_i_arrayidx10_fc30_add_x_p2_of_2_V0 = SE_i_arrayidx10_fc30_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_fc30_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_backStall & SE_i_arrayidx10_fc30_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_fc30_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_fc30_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_fc30_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_fc30_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_fc30_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_fc30_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_fc30_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_fc30_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_fc30_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_fc30_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_fc30_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_fc30_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_fc30_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_fc30_add_x_p2_of_2(STALLREG,1259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_fc30_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_fc30_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_and0 = SE_i_arrayidx10_fc30_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_and1 = SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_i_valid = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_V0 & SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_V = SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_data0 : i_arrayidx10_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_data1 : i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_r_data2 : i_arrayidx10_fc30_add_x_p1_of_2_c;

    // SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1042)
    // Valid signal propagation
    assign SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_backStall & SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_V1;
    // Backward Stall generation
    assign SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31(STALLENABLE,883)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_consumed0 = (~ (SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_consumed1 = (~ (SE_redist12_i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_wireValid = i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_out_valid_out;

    // SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0(STALLENABLE,1048)
    // Valid signal propagation
    assign SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_V0 = SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_backStall & SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0(STALLREG,1260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_valid <= SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx10_fc30_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx10_fc30_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_V = SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx10_fc30_add_x_p1_of_2_q;

    // SE_i_arrayidx10_fc30_add_x_p1_of_2(STALLENABLE,978)
    // Valid signal propagation
    assign SE_i_arrayidx10_fc30_add_x_p1_of_2_V0 = SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_fc30_add_x_p1_of_2_V1 = SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_fc30_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_backStall & SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_fc30_add_x_p1_of_2_s_tv_1 = SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_fc30_add_x_p1_of_2_or0 = SE_i_arrayidx10_fc30_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_fc30_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_fc30_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_fc30_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_fc30_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_fc30_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_fc30_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_fc30_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_fc30_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_fc30_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_fc30_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_fc30_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_fc30_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_fc30_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_fc30_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_fc30_add_x_p1_of_2(STALLREG,1258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_fc30_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_and0 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    assign SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc31_V0 & SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_V = SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_data0 : i_arrayidx10_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_r_data1 : i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,996)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0 <= '0;
            SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0 <= SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_toReg0;
            // Successor 1
            SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1 <= SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_consumed0 = (~ (SR_SE_i_arrayidx10_fc30_add_x_p1_of_2_backStall) & SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_wireValid) | SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0;
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_consumed1 = (~ (SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_backStall) & SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_wireValid) | SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1;
    // Consuming
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_StallValid = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_toReg0 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_StallValid & SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_toReg1 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_StallValid & SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_consumed1;
    // Backward Stall generation
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_or0 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_wireStall = ~ (SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_consumed1 & SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_or0);
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_wireValid & ~ (SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0);
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_V1 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_wireValid & ~ (SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel0_2_V0;
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_i_arrayidx6_fc30_mult_x_sums_result_add_0_0_p2_of_2_V2 & SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SR_SE_i_arrayidx21_fc30_add_x_p1_of_2(STALLREG,1243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_valid <= SE_i_arrayidx21_fc30_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_and0 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_V1;
    assign SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_V0 & SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_backStall = SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_V = SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_D0 = SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_data0 : i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_D1 = SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_r_data1 : i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // i_arrayidx21_fc30_add_x_p1_of_2(ADD,535)@100 + 1
    assign i_arrayidx21_fc30_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_D0};
    assign i_arrayidx21_fc30_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx21_fc30_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx21_fc30_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx21_fc30_add_x_p1_of_2_o <= $unsigned(i_arrayidx21_fc30_add_x_p1_of_2_a) + $unsigned(i_arrayidx21_fc30_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx21_fc30_add_x_p1_of_2_c[0] = i_arrayidx21_fc30_add_x_p1_of_2_o[52];
    assign i_arrayidx21_fc30_add_x_p1_of_2_q = i_arrayidx21_fc30_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0(BITSELECT,583)
    assign i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(c_i32_057_recast_x_q[29:18]);

    // i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,585)@101
    assign i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_b};

    // redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,721)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx21_fc30_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,590)@101
    assign i_arrayidx21_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1040)
    // Valid signal propagation
    assign SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_backStall & SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc30_V1;
    // Backward Stall generation
    assign SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // i_arrayidx8_fc30_add_x_p1_of_2(ADD,562)@100 + 1
    assign i_arrayidx8_fc30_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_D0};
    assign i_arrayidx8_fc30_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx8_fc30_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx8_fc30_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx8_fc30_add_x_p1_of_2_o <= $unsigned(i_arrayidx8_fc30_add_x_p1_of_2_a) + $unsigned(i_arrayidx8_fc30_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx8_fc30_add_x_p1_of_2_c[0] = i_arrayidx8_fc30_add_x_p1_of_2_o[52];
    assign i_arrayidx8_fc30_add_x_p1_of_2_q = i_arrayidx8_fc30_add_x_p1_of_2_o[51:0];

    // redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,722)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx8_fc30_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,624)@101
    assign i_arrayidx8_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1041)
    // Valid signal propagation
    assign SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_backStall & SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_V1;
    // Backward Stall generation
    assign SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx8_fc30_add_x_p2_of_2(STALLENABLE,990)
    // Valid signal propagation
    assign SE_i_arrayidx8_fc30_add_x_p2_of_2_V0 = SE_i_arrayidx8_fc30_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx8_fc30_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_backStall & SE_i_arrayidx8_fc30_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx8_fc30_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx8_fc30_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx8_fc30_add_x_p2_of_2_v_s_0 = SE_i_arrayidx8_fc30_add_x_p2_of_2_backEN & SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx8_fc30_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx8_fc30_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx8_fc30_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx8_fc30_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx8_fc30_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx8_fc30_add_x_p2_of_2_R_v_0 & SE_i_arrayidx8_fc30_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx8_fc30_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx8_fc30_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx8_fc30_add_x_p2_of_2(STALLREG,1255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_valid <= SE_i_arrayidx8_fc30_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx8_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx8_fc30_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_and0 = SE_i_arrayidx8_fc30_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_and1 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_V3 & SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_i_valid = SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_backStall = SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_V = SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_D0 = SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_data0 : i_arrayidx8_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_D1 = SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_data1 : i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_D2 = SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_r_data2 : i_arrayidx8_fc30_add_x_p1_of_2_c;

    // SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,997)
    // Valid signal propagation
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_V2 = 1'b1;
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_V3 = 1'b1;

    // SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0(STALLENABLE,1047)
    // Valid signal propagation
    assign SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_V0 = SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_backStall & SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0(STALLREG,1245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_valid <= SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx21_fc30_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx21_fc30_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_V = SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx21_fc30_add_x_p1_of_2_q;

    // SE_i_arrayidx21_fc30_add_x_p1_of_2(STALLENABLE,981)
    // Valid signal propagation
    assign SE_i_arrayidx21_fc30_add_x_p1_of_2_V0 = SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx21_fc30_add_x_p1_of_2_V1 = SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx21_fc30_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_backStall & SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx21_fc30_add_x_p1_of_2_s_tv_1 = SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx21_fc30_add_x_p1_of_2_or0 = SE_i_arrayidx21_fc30_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx21_fc30_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx21_fc30_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx21_fc30_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx21_fc30_add_x_p1_of_2_v_s_0 = SE_i_arrayidx21_fc30_add_x_p1_of_2_backEN & SR_SE_i_arrayidx21_fc30_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx21_fc30_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx21_fc30_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx21_fc30_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_0 & SE_i_arrayidx21_fc30_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx21_fc30_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx21_fc30_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_1 & SE_i_arrayidx21_fc30_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx21_fc30_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx21_fc30_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx21_fc30_add_x_p2_of_2(STALLREG,1244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_valid <= SE_i_arrayidx21_fc30_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx21_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx21_fc30_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_and0 = SE_i_arrayidx21_fc30_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_and1 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel1_0_V1 & SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_i_valid = SE_redist10_i_arrayidx21_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_backStall = SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_V = SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_D0 = SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_data0 : i_arrayidx21_fc30_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_D1 = SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_data1 : i_arrayidx10_fc30_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_D2 = SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_r_data2 : i_arrayidx21_fc30_add_x_p1_of_2_c;

    // i_arrayidx21_fc30_add_x_p2_of_2(ADD,536)@101 + 1
    assign i_arrayidx21_fc30_add_x_p2_of_2_cin = SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_D2;
    assign i_arrayidx21_fc30_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx21_fc30_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx21_fc30_add_x_p2_of_2_D1}, i_arrayidx21_fc30_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx21_fc30_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx21_fc30_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx21_fc30_add_x_p2_of_2_o <= $unsigned(i_arrayidx21_fc30_add_x_p2_of_2_a) + $unsigned(i_arrayidx21_fc30_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx21_fc30_add_x_p2_of_2_q = i_arrayidx21_fc30_add_x_p2_of_2_o[13:1];

    // redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0(REG,728)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx21_fc30_add_x_BitJoin_for_q(BITJOIN,537)@102
    assign i_arrayidx21_fc30_add_x_BitJoin_for_q_q = {i_arrayidx21_fc30_add_x_p2_of_2_q, redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx21_fc30_dupName_0_trunc_sel_x(BITSELECT,22)@102
    assign i_arrayidx21_fc30_dupName_0_trunc_sel_x_b = i_arrayidx21_fc30_add_x_BitJoin_for_q_q[63:0];

    // join_for_coalesced_delay_6(BITJOIN,717)
    assign join_for_coalesced_delay_6_q = {i_first_cleanup_xor_fc330_q, i_arrayidx21_fc30_dupName_0_trunc_sel_x_b};

    // SE_i_arrayidx21_fc30_add_x_BitJoin_for_q(STALLENABLE,983)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_fromReg0 <= '0;
            SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_fromReg0 <= SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_toReg0;
            // Successor 1
            SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_fromReg1 <= SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_consumed0 = (~ (SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_backStall) & SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_wireValid) | SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_fromReg0;
    assign SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_consumed1 = (~ (SR_SE_join_for_coalesced_delay_6_backStall) & SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_wireValid) | SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_fromReg1;
    // Consuming
    assign SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_StallValid = SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_backStall & SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_wireValid;
    assign SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_toReg0 = SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_StallValid & SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_consumed0;
    assign SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_toReg1 = SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_StallValid & SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_consumed1;
    // Backward Stall generation
    assign SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_or0 = SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_consumed0;
    assign SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_wireStall = ~ (SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_consumed1 & SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_or0);
    assign SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_backStall = SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_V0 = SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_wireValid & ~ (SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_fromReg0);
    assign SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_V1 = SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_wireValid & ~ (SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_and0 = SE_i_arrayidx21_fc30_add_x_p2_of_2_V0;
    assign SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_wireValid = SE_redist17_i_arrayidx21_fc30_add_x_p1_of_2_q_1_0_V0 & SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_and0;

    // SE_join_for_coalesced_delay_6(STALLENABLE,1036)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_6_V0 = SE_join_for_coalesced_delay_6_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_6_backStall = coalesced_delay_6_fifo_stall_out | ~ (SE_join_for_coalesced_delay_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_6_wireValid = SR_SE_join_for_coalesced_delay_6_V;

    // SR_SE_join_for_coalesced_delay_6(STALLREG,1246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_join_for_coalesced_delay_6_r_valid <= 1'b0;
            SR_SE_join_for_coalesced_delay_6_r_data0 <= 65'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_join_for_coalesced_delay_6_r_valid <= SE_join_for_coalesced_delay_6_backStall & (SR_SE_join_for_coalesced_delay_6_r_valid | SR_SE_join_for_coalesced_delay_6_i_valid);

            if (SR_SE_join_for_coalesced_delay_6_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_join_for_coalesced_delay_6_r_data0 <= $unsigned(join_for_coalesced_delay_6_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_join_for_coalesced_delay_6_and0 = SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_V1;
    assign SR_SE_join_for_coalesced_delay_6_i_valid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V6 & SR_SE_join_for_coalesced_delay_6_and0;
    // Stall signal propagation
    assign SR_SE_join_for_coalesced_delay_6_backStall = SR_SE_join_for_coalesced_delay_6_r_valid | ~ (SR_SE_join_for_coalesced_delay_6_i_valid);

    // Valid
    assign SR_SE_join_for_coalesced_delay_6_V = SR_SE_join_for_coalesced_delay_6_r_valid == 1'b1 ? SR_SE_join_for_coalesced_delay_6_r_valid : SR_SE_join_for_coalesced_delay_6_i_valid;

    assign SR_SE_join_for_coalesced_delay_6_D0 = SR_SE_join_for_coalesced_delay_6_r_valid == 1'b1 ? SR_SE_join_for_coalesced_delay_6_r_data0 : join_for_coalesced_delay_6_q;

    // SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1(STALLENABLE,1061)
    // Valid signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_V0 = SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_R_v_0;
    // Stall signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_backStall & SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_R_v_0;
    // Backward Enable generation
    assign SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_backEN = ~ (SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_v_s_0 = SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_backEN & SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_V;
    // Backward Stall generation
    assign SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_backStall = ~ (SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_backEN == 1'b0)
            begin
                SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_R_v_0 & SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_s_tv_0;
            end
            else
            begin
                SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313(BITJOIN,807)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_q = i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313(BITSELECT,808)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328(STALLENABLE,921)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_wireValid = i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328(BLACKBOX,115)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    fc3_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328 (
        .in_data_in(bubble_select_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_feedback_stall_out_19),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_fc35_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328(STALLENABLE,920)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_backStall = i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_wireValid = SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_and0;

    // SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo(STALLENABLE,1059)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_fromReg0 <= '0;
            SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_fromReg0 <= SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_toReg0;
            // Successor 1
            SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_fromReg1 <= SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_backStall) & SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_wireValid) | SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_fromReg0;
    assign SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_consumed1 = (~ (SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_backStall) & SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_wireValid) | SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_fromReg1;
    // Consuming
    assign SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_StallValid = SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_backStall & SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_wireValid;
    assign SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_toReg0 = SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_StallValid & SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_consumed0;
    assign SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_toReg1 = SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_StallValid & SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_or0 = SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_consumed0;
    assign SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_wireStall = ~ (SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_consumed1 & SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_or0);
    assign SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_backStall = SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_V0 = SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_wireValid & ~ (SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_fromReg0);
    assign SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_V1 = SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_wireValid & ~ (SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_wireValid = redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313(STALLENABLE,901)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_backStall = redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_wireValid = i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_valid_out;

    // redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo(STALLFIFO,738)
    assign redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_V0;
    assign redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_stall_in = SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_backStall;
    assign redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_b;
    assign redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_valid_in_bitsignaltemp = redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_valid_in[0];
    assign redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_stall_in_bitsignaltemp = redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_stall_in[0];
    assign redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_valid_out[0] = redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_valid_out_bitsignaltemp;
    assign redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_stall_out[0] = redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo (
        .valid_in(redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_valid_in_bitsignaltemp),
        .stall_in(redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_b),
        .valid_out(redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_valid_out_bitsignaltemp),
        .stall_out(redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_stall_out_bitsignaltemp),
        .data_out(redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo(BITJOIN,841)
    assign bubble_join_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_q = redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_data_out;

    // bubble_select_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo(BITSELECT,842)
    assign bubble_select_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_b = $unsigned(bubble_join_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_q[0:0]);

    // redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0(REG,739)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_q <= $unsigned(bubble_select_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_b);
        end
    end

    // SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0(STALLENABLE,1060)
    // Valid signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_V0 = SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_R_v_0;
    // Stall signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_s_tv_0 = SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_backStall & SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_R_v_0;
    // Backward Enable generation
    assign SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_backEN = ~ (SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_v_s_0 = SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_backEN & SE_out_redist25_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_98_fifo_V1;
    // Backward Stall generation
    assign SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_backStall = ~ (SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_backEN == 1'b0)
            begin
                SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_R_v_0 & SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_s_tv_0;
            end
            else
            begin
                SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_v_s_0;
            end

        end
    end

    // SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1(STALLREG,1252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_valid <= 1'b0;
            SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_valid <= SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_backStall & (SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_valid | SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_i_valid);

            if (SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_data0 <= $unsigned(redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_i_valid = SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_V0;
    // Stall signal propagation
    assign SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_backStall = SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_valid | ~ (SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_i_valid);

    // Valid
    assign SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_V = SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_valid == 1'b1 ? SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_valid : SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_i_valid;

    assign SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_D0 = SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_valid == 1'b1 ? SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_r_data0 : redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_0_q;

    // redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1(REG,740)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_q <= $unsigned(SR_SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_D0);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38(BITJOIN,810)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_q = i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38(BITSELECT,811)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_q[0:0]);

    // i_memdep_phi2_or_fc329(LOGICAL,125)@102
    assign i_memdep_phi2_or_fc329_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_b | redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_q;

    // i_arrayidx6_fc30_dupName_0_add_x_p2_of_2(ADD,545)@101 + 1
    assign i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_D2;
    assign i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_D1}, i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_q = i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_o[13:1];

    // redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0(REG,727)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q(BITJOIN,546)@102
    assign i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_q = {i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_q, redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx6_fc30_dupName_2_trunc_sel_x(BITSELECT,29)@102
    assign i_arrayidx6_fc30_dupName_2_trunc_sel_x_b = i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_q[63:0];

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38(STALLENABLE,903)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_consumed0 = (~ (SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_consumed1 = (~ (SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_consumed2 = (~ (SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_or1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_wireValid = SE_redist26_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out_100_1_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_and0;

    // SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q(STALLENABLE,986)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_V0 = SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_unnamed_fc38_fc346_out_o_stall | ~ (SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_wireValid = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_V;

    // SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q(STALLREG,1253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_data1 <= 1'bx;
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_valid <= SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_backStall & (SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_valid | SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_i_valid);

            if (SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_data0 <= i_arrayidx6_fc30_dupName_2_trunc_sel_x_b;
                SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_data1 <= i_memdep_phi2_or_fc329_q;
                SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_data2 <= i_first_cleanup_xor_fc330_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_and0 = SE_i_arrayidx6_fc30_dupName_0_add_x_p2_of_2_V0;
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_and1 = SE_redist16_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_q_1_0_V0 & SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_and0;
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V5 & SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_and1;
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_V2 & SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_and2;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_backStall = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_valid | ~ (SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_V = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_valid : SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_D0 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_data0 : i_arrayidx6_fc30_dupName_2_trunc_sel_x_b;
    // Data1
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_D1 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_data1 : i_memdep_phi2_or_fc329_q;
    // Data2
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_D2 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_r_data2 : i_first_cleanup_xor_fc330_q;

    // i_arrayidx10_fc30_add_x_p2_of_2(ADD,527)@101 + 1
    assign i_arrayidx10_fc30_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_D2;
    assign i_arrayidx10_fc30_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_fc30_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_fc30_add_x_p2_of_2_D1}, i_arrayidx10_fc30_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_fc30_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_fc30_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_fc30_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_fc30_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_fc30_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_fc30_add_x_p2_of_2_q = i_arrayidx10_fc30_add_x_p2_of_2_o[13:1];

    // redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0(REG,729)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx10_fc30_add_x_BitJoin_for_q(BITJOIN,528)@102
    assign i_arrayidx10_fc30_add_x_BitJoin_for_q_q = {i_arrayidx10_fc30_add_x_p2_of_2_q, redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx10_fc30_dupName_0_trunc_sel_x(BITSELECT,16)@102
    assign i_arrayidx10_fc30_dupName_0_trunc_sel_x_b = i_arrayidx10_fc30_add_x_BitJoin_for_q_q[63:0];

    // i_cmp4_fc317(LOGICAL,80)@100 + 1
    assign i_cmp4_fc317_qi = $unsigned(bubble_select_i_llvm_fpga_pop_i32_j_013_pop12_fc37_b == c_i32_057_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp4_fc317_delay ( .xin(i_cmp4_fc317_qi), .xout(i_cmp4_fc317_q), .ena(SE_i_cmp4_fc317_backEN[0]), .clk(clock), .aclr(resetn) );

    // SR_SE_redist31_i_cmp4_fc317_q_2_0(STALLREG,1261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist31_i_cmp4_fc317_q_2_0_r_valid <= 1'b0;
            SR_SE_redist31_i_cmp4_fc317_q_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist31_i_cmp4_fc317_q_2_0_r_valid <= SE_redist31_i_cmp4_fc317_q_2_0_backStall & (SR_SE_redist31_i_cmp4_fc317_q_2_0_r_valid | SR_SE_redist31_i_cmp4_fc317_q_2_0_i_valid);

            if (SR_SE_redist31_i_cmp4_fc317_q_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist31_i_cmp4_fc317_q_2_0_r_data0 <= i_cmp4_fc317_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist31_i_cmp4_fc317_q_2_0_i_valid = SE_i_cmp4_fc317_V0;
    // Stall signal propagation
    assign SR_SE_redist31_i_cmp4_fc317_q_2_0_backStall = SR_SE_redist31_i_cmp4_fc317_q_2_0_r_valid | ~ (SR_SE_redist31_i_cmp4_fc317_q_2_0_i_valid);

    // Valid
    assign SR_SE_redist31_i_cmp4_fc317_q_2_0_V = SR_SE_redist31_i_cmp4_fc317_q_2_0_r_valid == 1'b1 ? SR_SE_redist31_i_cmp4_fc317_q_2_0_r_valid : SR_SE_redist31_i_cmp4_fc317_q_2_0_i_valid;

    assign SR_SE_redist31_i_cmp4_fc317_q_2_0_D0 = SR_SE_redist31_i_cmp4_fc317_q_2_0_r_valid == 1'b1 ? SR_SE_redist31_i_cmp4_fc317_q_2_0_r_data0 : i_cmp4_fc317_q;

    // redist31_i_cmp4_fc317_q_2_0(REG,746)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_cmp4_fc317_q_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_i_cmp4_fc317_q_2_0_backEN == 1'b1)
        begin
            redist31_i_cmp4_fc317_q_2_0_q <= $unsigned(SR_SE_redist31_i_cmp4_fc317_q_2_0_D0);
        end
    end

    // i_arrayidx10_arrayidx21_fc345(MUX,76)@102
    assign i_arrayidx10_arrayidx21_fc345_s = redist31_i_cmp4_fc317_q_2_0_q;
    always @(i_arrayidx10_arrayidx21_fc345_s or i_arrayidx21_fc30_dupName_0_trunc_sel_x_b or i_arrayidx10_fc30_dupName_0_trunc_sel_x_b)
    begin
        unique case (i_arrayidx10_arrayidx21_fc345_s)
            1'b0 : i_arrayidx10_arrayidx21_fc345_q = i_arrayidx21_fc30_dupName_0_trunc_sel_x_b;
            1'b1 : i_arrayidx10_arrayidx21_fc345_q = i_arrayidx10_fc30_dupName_0_trunc_sel_x_b;
            default : i_arrayidx10_arrayidx21_fc345_q = 64'b0;
        endcase
    end

    // SE_redist31_i_cmp4_fc317_q_2_0(STALLENABLE,1068)
    // Valid signal propagation
    assign SE_redist31_i_cmp4_fc317_q_2_0_V0 = SE_redist31_i_cmp4_fc317_q_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist31_i_cmp4_fc317_q_2_0_s_tv_0 = SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_backStall & SE_redist31_i_cmp4_fc317_q_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist31_i_cmp4_fc317_q_2_0_backEN = ~ (SE_redist31_i_cmp4_fc317_q_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_i_cmp4_fc317_q_2_0_v_s_0 = SE_redist31_i_cmp4_fc317_q_2_0_backEN & SR_SE_redist31_i_cmp4_fc317_q_2_0_V;
    // Backward Stall generation
    assign SE_redist31_i_cmp4_fc317_q_2_0_backStall = ~ (SE_redist31_i_cmp4_fc317_q_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_i_cmp4_fc317_q_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_i_cmp4_fc317_q_2_0_backEN == 1'b0)
            begin
                SE_redist31_i_cmp4_fc317_q_2_0_R_v_0 <= SE_redist31_i_cmp4_fc317_q_2_0_R_v_0 & SE_redist31_i_cmp4_fc317_q_2_0_s_tv_0;
            end
            else
            begin
                SE_redist31_i_cmp4_fc317_q_2_0_R_v_0 <= SE_redist31_i_cmp4_fc317_q_2_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_fc30_add_x_BitJoin_for_q(STALLENABLE,980)
    // Valid signal propagation
    assign SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_V0 = SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_pn1_fc348_out_o_stall | ~ (SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_wireValid = SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_V;

    // SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q(STALLREG,1262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_data1 <= 1'bx;
            SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_valid <= SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_backStall & (SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_valid | SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_i_valid);

            if (SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_data0 <= i_arrayidx10_arrayidx21_fc345_q;
                SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_data1 <= i_memdep_phi2_or_fc329_q;
                SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_data2 <= i_first_cleanup_xor_fc330_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and0 = SE_i_arrayidx10_fc30_add_x_p2_of_2_V0;
    assign SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and1 = SE_redist18_i_arrayidx10_fc30_add_x_p1_of_2_q_1_0_V0 & SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and0;
    assign SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and2 = SE_i_arrayidx21_fc30_add_x_BitJoin_for_q_V0 & SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and1;
    assign SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and3 = SE_redist31_i_cmp4_fc317_q_2_0_V0 & SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and2;
    assign SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V3 & SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and3;
    assign SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_V0 & SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_and4;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_backStall = SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_valid | ~ (SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_V = SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_valid : SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_D0 = SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_data0 : i_arrayidx10_arrayidx21_fc345_q;
    // Data1
    assign SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_D1 = SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_data1 : i_memdep_phi2_or_fc329_q;
    // Data2
    assign SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_D2 = SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_r_data2 : i_first_cleanup_xor_fc330_q;

    // leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc30_shift_x(BITSELECT,237)@102
    assign leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc30_shift_x_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc30_shift_x_b = leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc30_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid239_i_cleanups_shl_fc30_shift_x(BITJOIN,238)@102
    assign leftShiftStage0Idx1_uid239_i_cleanups_shl_fc30_shift_x_q = {leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc30_shift_x_b, GND_q};

    // leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x(MUX,240)@102
    assign leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_b or leftShiftStage0Idx1_uid239_i_cleanups_shl_fc30_shift_x_q)
    begin
        unique case (leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_s)
            1'b0 : leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_b;
            1'b1 : leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_q = leftShiftStage0Idx1_uid239_i_cleanups_shl_fc30_shift_x_q;
            default : leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_fc315_vt_select_1(BITSELECT,79)@102
    assign i_cleanups_shl_fc315_vt_select_1_b = leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_q[1:1];

    // i_cleanups_shl_fc315_vt_join(BITJOIN,78)@102
    assign i_cleanups_shl_fc315_vt_join_q = {i_cleanups_shl_fc315_vt_select_1_b, GND_q};

    // i_or_fc343(LOGICAL,131)@102
    assign i_or_fc343_q = i_notcmp_fc335_q | i_first_cleanup_xor_fc330_q;

    // i_next_cleanups_fc347(MUX,126)@102
    assign i_next_cleanups_fc347_s = i_or_fc343_q;
    always @(i_next_cleanups_fc347_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_b or i_cleanups_shl_fc315_vt_join_q)
    begin
        unique case (i_next_cleanups_fc347_s)
            1'b0 : i_next_cleanups_fc347_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_b;
            1'b1 : i_next_cleanups_fc347_q = i_cleanups_shl_fc315_vt_join_q;
            default : i_next_cleanups_fc347_q = 2'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_push_i2_cleanups_push15_fc349(STALLENABLE,929)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push15_fc349_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push15_fc349_wireValid = i_llvm_fpga_push_i2_cleanups_push15_fc349_out_valid_out;

    // i_llvm_fpga_push_i2_cleanups_push15_fc349(BLACKBOX,119)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    fc3_i_llvm_fpga_push_i2_cleanups_push15_0 thei_llvm_fpga_push_i2_cleanups_push15_fc349 (
        .in_data_in(SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_D0),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i2_cleanups_pop15_fc34_out_feedback_stall_out_15),
        .in_keep_going(SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push15_fc349_backStall),
        .in_valid_in(SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i2_cleanups_push15_fc349_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i2_cleanups_push15_fc349_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push15_fc349_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push15_fc349_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x(STALLENABLE,952)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_V0 = SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_backStall = i_llvm_fpga_push_i2_cleanups_push15_fc349_out_stall_out | ~ (SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_wireValid = SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_V;

    // SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x(STALLREG,1271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_valid <= 1'b0;
            SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_data0 <= 2'bxx;
            SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_valid <= SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_backStall & (SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_valid | SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_i_valid);

            if (SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_data0 <= i_next_cleanups_fc347_q;
                SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_data1 <= $unsigned(redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_V1;
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_and1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V0 & SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_and0;
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_i_valid = SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_V0 & SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_and1;
    // Stall signal propagation
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_backStall = SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_valid | ~ (SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_i_valid);

    // Valid
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_V = SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_valid : SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_i_valid;

    // Data0
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_D0 = SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_data0 : i_next_cleanups_fc347_q;
    // Data1
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_D1 = SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_r_data1 : redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_q;

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34(STALLENABLE,907)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg4 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg5 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg6 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed0 = (~ (SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed2 = (~ (SR_SE_i_masked_fc344_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed3 = (~ (SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed4 = (~ (SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed5 = (~ (SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg5;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed6 = (~ (SR_SE_join_for_coalesced_delay_6_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg6;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg5 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed5;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_toReg6 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed6;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed4 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or5 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed5 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_consumed6 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_or5);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg4);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V5 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg5);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V6 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_wireValid = i_llvm_fpga_pop_i2_cleanups_pop15_fc34_out_valid_out;

    // i_masked_fc344(LOGICAL,124)@102 + 1
    assign i_masked_fc344_qi = SR_SE_i_masked_fc344_D0 & SR_SE_i_masked_fc344_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_fc344_delay ( .xin(i_masked_fc344_qi), .xout(i_masked_fc344_q), .ena(SE_i_masked_fc344_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist22_i_masked_fc344_q_98_fifo(STALLFIFO,733)
    assign redist22_i_masked_fc344_q_98_fifo_valid_in = SE_in_redist22_i_masked_fc344_q_98_fifo_V0;
    assign redist22_i_masked_fc344_q_98_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_backStall;
    assign redist22_i_masked_fc344_q_98_fifo_data_in = i_masked_fc344_q;
    assign redist22_i_masked_fc344_q_98_fifo_valid_in_bitsignaltemp = redist22_i_masked_fc344_q_98_fifo_valid_in[0];
    assign redist22_i_masked_fc344_q_98_fifo_stall_in_bitsignaltemp = redist22_i_masked_fc344_q_98_fifo_stall_in[0];
    assign redist22_i_masked_fc344_q_98_fifo_valid_out[0] = redist22_i_masked_fc344_q_98_fifo_valid_out_bitsignaltemp;
    assign redist22_i_masked_fc344_q_98_fifo_stall_out[0] = redist22_i_masked_fc344_q_98_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist22_i_masked_fc344_q_98_fifo (
        .valid_in(redist22_i_masked_fc344_q_98_fifo_valid_in_bitsignaltemp),
        .stall_in(redist22_i_masked_fc344_q_98_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_fc344_q),
        .valid_out(redist22_i_masked_fc344_q_98_fifo_valid_out_bitsignaltemp),
        .stall_out(redist22_i_masked_fc344_q_98_fifo_stall_out_bitsignaltemp),
        .data_out(redist22_i_masked_fc344_q_98_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_redist22_i_masked_fc344_q_98_fifo(STALLENABLE,1052)
    // Valid signal propagation
    assign SE_in_redist22_i_masked_fc344_q_98_fifo_V0 = SE_in_redist22_i_masked_fc344_q_98_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist22_i_masked_fc344_q_98_fifo_backStall = redist22_i_masked_fc344_q_98_fifo_stall_out | ~ (SE_in_redist22_i_masked_fc344_q_98_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist22_i_masked_fc344_q_98_fifo_wireValid = SE_i_masked_fc344_V0;

    // SE_i_masked_fc344(STALLENABLE,938)
    // Valid signal propagation
    assign SE_i_masked_fc344_V0 = SE_i_masked_fc344_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_fc344_s_tv_0 = SE_in_redist22_i_masked_fc344_q_98_fifo_backStall & SE_i_masked_fc344_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_fc344_backEN = ~ (SE_i_masked_fc344_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_fc344_v_s_0 = SE_i_masked_fc344_backEN & SR_SE_i_masked_fc344_V;
    // Backward Stall generation
    assign SE_i_masked_fc344_backStall = ~ (SE_i_masked_fc344_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_fc344_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_fc344_backEN == 1'b0)
            begin
                SE_i_masked_fc344_R_v_0 <= SE_i_masked_fc344_R_v_0 & SE_i_masked_fc344_s_tv_0;
            end
            else
            begin
                SE_i_masked_fc344_R_v_0 <= SE_i_masked_fc344_v_s_0;
            end

        end
    end

    // SR_SE_i_masked_fc344(STALLREG,1237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_fc344_r_valid <= 1'b0;
            SR_SE_i_masked_fc344_r_data0 <= 1'bx;
            SR_SE_i_masked_fc344_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_fc344_r_valid <= SE_i_masked_fc344_backStall & (SR_SE_i_masked_fc344_r_valid | SR_SE_i_masked_fc344_i_valid);

            if (SR_SE_i_masked_fc344_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_fc344_r_data0 <= i_notcmp_fc335_q;
                SR_SE_i_masked_fc344_r_data1 <= i_first_cleanup_fc314_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_fc344_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V2;
    assign SR_SE_i_masked_fc344_i_valid = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_V3 & SR_SE_i_masked_fc344_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_fc344_backStall = SR_SE_i_masked_fc344_r_valid | ~ (SR_SE_i_masked_fc344_i_valid);

    // Valid
    assign SR_SE_i_masked_fc344_V = SR_SE_i_masked_fc344_r_valid == 1'b1 ? SR_SE_i_masked_fc344_r_valid : SR_SE_i_masked_fc344_i_valid;

    // Data0
    assign SR_SE_i_masked_fc344_D0 = SR_SE_i_masked_fc344_r_valid == 1'b1 ? SR_SE_i_masked_fc344_r_data0 : i_notcmp_fc335_q;
    // Data1
    assign SR_SE_i_masked_fc344_D1 = SR_SE_i_masked_fc344_r_valid == 1'b1 ? SR_SE_i_masked_fc344_r_data1 : i_first_cleanup_fc314_sel_x_b;

    // c_i8_161(CONSTANT,70)
    assign c_i8_161_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next_fc323(ADD,84)@102
    assign i_fpga_indvars_iv_next_fc323_a = {1'b0, bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_b};
    assign i_fpga_indvars_iv_next_fc323_b = {1'b0, c_i8_161_q};
    assign i_fpga_indvars_iv_next_fc323_o = $unsigned(i_fpga_indvars_iv_next_fc323_a) + $unsigned(i_fpga_indvars_iv_next_fc323_b);
    assign i_fpga_indvars_iv_next_fc323_q = i_fpga_indvars_iv_next_fc323_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next_fc323_sel_x(BITSELECT,2)@102
    assign bgTrunc_i_fpga_indvars_iv_next_fc323_sel_x_b = i_fpga_indvars_iv_next_fc323_q[7:0];

    // SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337(STALLENABLE,936)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_V0 = SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_backStall = i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_wireValid = SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_V;

    // SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337(STALLREG,1273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_data0 <= 8'bxxxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_valid <= SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_backStall & (SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_valid | SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_data0 <= bgTrunc_i_fpga_indvars_iv_next_fc323_sel_x_b;
                SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_data1 <= $unsigned(redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_and0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_V2;
    assign SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_i_valid = SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_V1 & SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_backStall = SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_V = SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_valid : SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_D0 = SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_data0 : bgTrunc_i_fpga_indvars_iv_next_fc323_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_D1 = SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_r_data1 : redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_q;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_fc336(STALLENABLE,926)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_fc336_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_consumed1 = (~ (SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_wireValid = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_and0;

    // bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg(STALLFIFO,1229)
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_V0;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39(STALLENABLE,915)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg0 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg1 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg2 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg3 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed2 = (~ (SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed3 = (~ (SR_SE_i_masked_fc344_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_StallValid = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_backStall & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireValid;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_toReg0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_toReg1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_toReg2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed2;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_toReg3 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_or0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_or1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed1 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_or0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_or2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed2 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_or1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireStall = ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_consumed3 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_or2);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_backStall = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_V0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_V1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_V2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_V3 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_wireValid = i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_out_valid_out;

    // SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337(STALLENABLE,937)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_wireValid = i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_out_valid_out;

    // i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337(BLACKBOX,123)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    fc3_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_0 thei_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_D0),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_out_feedback_stall_out_11),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_V0),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_out_feedback_valid_out_11),
        .out_stall_out(i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_8258(CONSTANT,71)
    assign c_i8_8258_q = $unsigned(8'b01010010);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39(BLACKBOX,112)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_stall_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    fc3_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39 (
        .in_data_in(c_i8_8258_q),
        .in_dir(redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_backStall),
        .in_valid_in(SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V2),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_out_feedback_stall_out_11),
        .out_stall_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_155(CONSTANT,67)
    assign c_i2_155_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop15_fc34(BLACKBOX,108)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    fc3_i_llvm_fpga_pop_i2_cleanups_pop15_0 thei_llvm_fpga_pop_i2_cleanups_pop15_fc34 (
        .in_data_in(c_i2_155_q),
        .in_dir(redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i2_cleanups_push15_fc349_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i2_cleanups_push15_fc349_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_backStall),
        .in_valid_in(SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V1),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop15_fc34_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i2_cleanups_pop15_fc34_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop15_fc34_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop15_fc34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_fc354(STALLENABLE,923)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_wireValid = i_llvm_fpga_push_i1_memdep_phi_push13_fc354_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push13_fc354(BLACKBOX,116)@200
    // in in_stall_in@20000000
    // out out_data_out@201
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@201
    fc3_i_llvm_fpga_push_i1_memdep_phi_push13_0 thei_llvm_fpga_push_i1_memdep_phi_push13_fc354 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_D0),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_out_feedback_stall_out_13),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_V0),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_memdep_phi_push13_fc354_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_memdep_phi_push13_fc354_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push13_fc354_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push13_fc354_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38(BLACKBOX,106)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    fc3_i_llvm_fpga_pop_i1_memdep_phi_pop13_0 thei_llvm_fpga_pop_i1_memdep_phi_pop13_fc38 (
        .in_data_in(GND_q),
        .in_dir(redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i1_memdep_phi_push13_fc354_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i1_memdep_phi_push13_fc354_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_backStall),
        .in_valid_in(SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1(STALLENABLE,1074)
    // Valid signal propagation
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V0 = SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0;
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V1 = SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1;
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V2 = SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2;
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V3 = SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3;
    // Stall signal propagation
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_out_stall_out & SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0;
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_1 = i_llvm_fpga_pop_i2_cleanups_pop15_fc34_out_stall_out & SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1;
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_2 = i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_out_stall_out & SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2;
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_3 = redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out & SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3;
    // Backward Enable generation
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or0 = SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_0;
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or1 = SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_1 | SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or0;
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or2 = SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_2 | SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or1;
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN = ~ (SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_3 | SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0 = SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN & SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V;
    // Backward Stall generation
    assign SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall = ~ (SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0 <= 1'b0;
            SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1 <= 1'b0;
            SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2 <= 1'b0;
            SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b0)
            begin
                SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0 <= SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0 & SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_0;
            end
            else
            begin
                SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0 <= SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
            end

            if (SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b0)
            begin
                SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1 <= SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1 & SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_1;
            end
            else
            begin
                SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1 <= SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
            end

            if (SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b0)
            begin
                SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2 <= SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2 & SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_2;
            end
            else
            begin
                SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2 <= SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
            end

            if (SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b0)
            begin
                SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3 <= SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3 & SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_3;
            end
            else
            begin
                SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3 <= SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
            end

        end
    end

    // redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo(STALLFIFO,753)
    assign redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in = SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V3;
    assign redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in = SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_backStall;
    assign redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_in = redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q;
    assign redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in_bitsignaltemp = redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in[0];
    assign redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in_bitsignaltemp = redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in[0];
    assign redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out[0] = redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out_bitsignaltemp;
    assign redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out[0] = redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo (
        .valid_in(redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in_bitsignaltemp),
        .stall_in(redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in_bitsignaltemp),
        .data_in(redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q),
        .valid_out(redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out_bitsignaltemp),
        .stall_out(redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out_bitsignaltemp),
        .data_out(redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo(BITJOIN,847)
    assign bubble_join_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_q = redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_out;

    // bubble_select_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo(BITSELECT,848)
    assign bubble_select_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b = $unsigned(bubble_join_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_q[0:0]);

    // rightShiftStage0Idx1Rng1_uid245_i_next_initerations_fc30_shift_x(BITSELECT,244)@198
    assign rightShiftStage0Idx1Rng1_uid245_i_next_initerations_fc30_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations_pop14_fc36_b[1:1];

    // rightShiftStage0Idx1_uid247_i_next_initerations_fc30_shift_x(BITJOIN,246)@198
    assign rightShiftStage0Idx1_uid247_i_next_initerations_fc30_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid245_i_next_initerations_fc30_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations_pop14_fc36(BITJOIN,820)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations_pop14_fc36_q = i_llvm_fpga_pop_i2_initerations_pop14_fc36_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations_pop14_fc36(BITSELECT,821)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations_pop14_fc36_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations_pop14_fc36_q[1:0]);

    // rightShiftStage0_uid249_i_next_initerations_fc30_shift_x(MUX,248)@198
    assign rightShiftStage0_uid249_i_next_initerations_fc30_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid249_i_next_initerations_fc30_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations_pop14_fc36_b or rightShiftStage0Idx1_uid247_i_next_initerations_fc30_shift_x_q)
    begin
        unique case (rightShiftStage0_uid249_i_next_initerations_fc30_shift_x_s)
            1'b0 : rightShiftStage0_uid249_i_next_initerations_fc30_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations_pop14_fc36_b;
            1'b1 : rightShiftStage0_uid249_i_next_initerations_fc30_shift_x_q = rightShiftStage0Idx1_uid247_i_next_initerations_fc30_shift_x_q;
            default : rightShiftStage0_uid249_i_next_initerations_fc30_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_fc316_vt_select_0(BITSELECT,129)@198
    assign i_next_initerations_fc316_vt_select_0_b = rightShiftStage0_uid249_i_next_initerations_fc30_shift_x_q[0:0];

    // i_next_initerations_fc316_vt_join(BITJOIN,128)@198
    assign i_next_initerations_fc316_vt_join_q = {GND_q, i_next_initerations_fc316_vt_select_0_b};

    // i_last_initeration_fc332_sel_x(BITSELECT,57)@198
    assign i_last_initeration_fc332_sel_x_b = i_next_initerations_fc316_vt_join_q[0:0];

    // SE_i_next_initerations_fc316_vt_select_0(STALLENABLE,942)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_fc316_vt_select_0_fromReg0 <= '0;
            SE_i_next_initerations_fc316_vt_select_0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_fc316_vt_select_0_fromReg0 <= SE_i_next_initerations_fc316_vt_select_0_toReg0;
            // Successor 1
            SE_i_next_initerations_fc316_vt_select_0_fromReg1 <= SE_i_next_initerations_fc316_vt_select_0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_fc316_vt_select_0_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_fc341_out_stall_out) & SE_i_next_initerations_fc316_vt_select_0_wireValid) | SE_i_next_initerations_fc316_vt_select_0_fromReg0;
    assign SE_i_next_initerations_fc316_vt_select_0_consumed1 = (~ (i_llvm_fpga_push_i2_initerations_push14_fc331_out_stall_out) & SE_i_next_initerations_fc316_vt_select_0_wireValid) | SE_i_next_initerations_fc316_vt_select_0_fromReg1;
    // Consuming
    assign SE_i_next_initerations_fc316_vt_select_0_StallValid = SE_i_next_initerations_fc316_vt_select_0_backStall & SE_i_next_initerations_fc316_vt_select_0_wireValid;
    assign SE_i_next_initerations_fc316_vt_select_0_toReg0 = SE_i_next_initerations_fc316_vt_select_0_StallValid & SE_i_next_initerations_fc316_vt_select_0_consumed0;
    assign SE_i_next_initerations_fc316_vt_select_0_toReg1 = SE_i_next_initerations_fc316_vt_select_0_StallValid & SE_i_next_initerations_fc316_vt_select_0_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_fc316_vt_select_0_or0 = SE_i_next_initerations_fc316_vt_select_0_consumed0;
    assign SE_i_next_initerations_fc316_vt_select_0_wireStall = ~ (SE_i_next_initerations_fc316_vt_select_0_consumed1 & SE_i_next_initerations_fc316_vt_select_0_or0);
    assign SE_i_next_initerations_fc316_vt_select_0_backStall = SE_i_next_initerations_fc316_vt_select_0_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_fc316_vt_select_0_V0 = SE_i_next_initerations_fc316_vt_select_0_wireValid & ~ (SE_i_next_initerations_fc316_vt_select_0_fromReg0);
    assign SE_i_next_initerations_fc316_vt_select_0_V1 = SE_i_next_initerations_fc316_vt_select_0_wireValid & ~ (SE_i_next_initerations_fc316_vt_select_0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_fc316_vt_select_0_wireValid = SR_SE_i_next_initerations_fc316_vt_select_0_V;

    // SR_SE_i_next_initerations_fc316_vt_select_0(STALLREG,1268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_fc316_vt_select_0_r_valid <= 1'b0;
            SR_SE_i_next_initerations_fc316_vt_select_0_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_fc316_vt_select_0_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_fc316_vt_select_0_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_fc316_vt_select_0_r_data3 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_fc316_vt_select_0_r_valid <= SE_i_next_initerations_fc316_vt_select_0_backStall & (SR_SE_i_next_initerations_fc316_vt_select_0_r_valid | SR_SE_i_next_initerations_fc316_vt_select_0_i_valid);

            if (SR_SE_i_next_initerations_fc316_vt_select_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_fc316_vt_select_0_r_data0 <= i_last_initeration_fc332_sel_x_b;
                SR_SE_i_next_initerations_fc316_vt_select_0_r_data1 <= $unsigned(bubble_select_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_b);
                SR_SE_i_next_initerations_fc316_vt_select_0_r_data2 <= $unsigned(bubble_select_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_b);
                SR_SE_i_next_initerations_fc316_vt_select_0_r_data3 <= i_next_initerations_fc316_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_fc316_vt_select_0_and0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_V1;
    assign SR_SE_i_next_initerations_fc316_vt_select_0_i_valid = SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_V0 & SR_SE_i_next_initerations_fc316_vt_select_0_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_fc316_vt_select_0_backStall = SR_SE_i_next_initerations_fc316_vt_select_0_r_valid | ~ (SR_SE_i_next_initerations_fc316_vt_select_0_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_fc316_vt_select_0_V = SR_SE_i_next_initerations_fc316_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_fc316_vt_select_0_r_valid : SR_SE_i_next_initerations_fc316_vt_select_0_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_fc316_vt_select_0_D0 = SR_SE_i_next_initerations_fc316_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_fc316_vt_select_0_r_data0 : i_last_initeration_fc332_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_fc316_vt_select_0_D1 = SR_SE_i_next_initerations_fc316_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_fc316_vt_select_0_r_data1 : bubble_select_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations_fc316_vt_select_0_D2 = SR_SE_i_next_initerations_fc316_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_fc316_vt_select_0_r_data2 : bubble_select_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations_fc316_vt_select_0_D3 = SR_SE_i_next_initerations_fc316_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_fc316_vt_select_0_r_data3 : i_next_initerations_fc316_vt_join_q;

    // bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg(STALLFIFO,1228)
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_V0;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36(STALLENABLE,909)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_consumed1 = (~ (SR_SE_i_next_initerations_fc316_vt_select_0_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_StallValid = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_backStall & SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_toReg0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_toReg1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_or0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_consumed1 & SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_or0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_backStall = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_V0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_V1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_wireValid = i_llvm_fpga_pop_i2_initerations_pop14_fc36_out_valid_out;

    // SE_out_i_llvm_fpga_push_i2_initerations_push14_fc331(STALLENABLE,931)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations_push14_fc331_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations_push14_fc331_wireValid = i_llvm_fpga_push_i2_initerations_push14_fc331_out_valid_out;

    // i_llvm_fpga_push_i2_initerations_push14_fc331(BLACKBOX,120)@198
    // in in_stall_in@20000000
    // out out_data_out@199
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@199
    fc3_i_llvm_fpga_push_i2_initerations_push14_0 thei_llvm_fpga_push_i2_initerations_push14_fc331 (
        .in_data_in(SR_SE_i_next_initerations_fc316_vt_select_0_D3),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i2_initerations_pop14_fc36_out_feedback_stall_out_14),
        .in_keep_going(SR_SE_i_next_initerations_fc316_vt_select_0_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations_push14_fc331_backStall),
        .in_valid_in(SE_i_next_initerations_fc316_vt_select_0_V1),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i2_initerations_push14_fc331_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i2_initerations_push14_fc331_out_feedback_valid_out_14),
        .out_stall_out(i_llvm_fpga_push_i2_initerations_push14_fc331_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations_push14_fc331_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop14_fc36(BLACKBOX,109)@197
    // in in_stall_in@20000000
    // out out_data_out@198
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@198
    fc3_i_llvm_fpga_pop_i2_initerations_pop14_0 thei_llvm_fpga_pop_i2_initerations_pop14_fc36 (
        .in_data_in(c_i2_155_q),
        .in_dir(bubble_select_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b),
        .in_feedback_in_14(i_llvm_fpga_push_i2_initerations_push14_fc331_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i2_initerations_push14_fc331_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_backStall),
        .in_valid_in(SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop14_fc36_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i2_initerations_pop14_fc36_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations_pop14_fc36_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations_pop14_fc36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo(STALLENABLE,1076)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0 <= '0;
            SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0 <= SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg0;
            // Successor 1
            SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1 <= SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed0 = (~ (SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall) & SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid) | SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0;
    assign SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed1 = (~ (i_llvm_fpga_pop_i2_initerations_pop14_fc36_out_stall_out) & SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid) | SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1;
    // Consuming
    assign SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_StallValid = SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_backStall & SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid;
    assign SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg0 = SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_StallValid & SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed0;
    assign SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg1 = SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_StallValid & SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_or0 = SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed0;
    assign SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireStall = ~ (SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed1 & SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_or0);
    assign SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_backStall = SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V0 = SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid & ~ (SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0);
    assign SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V1 = SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid & ~ (SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid = redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out;

    // SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0(STALLREG,1238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid <= 1'b0;
            SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid <= SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall & (SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid | SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid);

            if (SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_data0 <= $unsigned(bubble_select_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid = SE_out_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall = SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid | ~ (SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid);

    // Valid
    assign SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V = SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid == 1'b1 ? SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid : SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid;

    assign SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_D0 = SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid == 1'b1 ? SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_data0 : bubble_select_redist36_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b;

    // redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0(REG,754)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN == 1'b1)
        begin
            redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q <= $unsigned(SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_D0);
        end
    end

    // SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0(STALLENABLE,1077)
    // Valid signal propagation
    assign SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V0 = SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0;
    // Stall signal propagation
    assign SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_s_tv_0 = SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall & SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0;
    // Backward Enable generation
    assign SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN = ~ (SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_v_s_0 = SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN & SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V;
    // Backward Stall generation
    assign SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall = ~ (SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN == 1'b0)
            begin
                SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0 <= SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0 & SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_s_tv_0;
            end
            else
            begin
                SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0 <= SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_v_s_0;
            end

        end
    end

    // SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1(STALLREG,1239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid <= 1'b0;
            SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid <= SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall & (SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid | SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid);

            if (SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_data0 <= $unsigned(redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid = SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V0;
    // Stall signal propagation
    assign SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall = SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid | ~ (SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid);

    // Valid
    assign SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V = SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid == 1'b1 ? SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid : SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid;

    assign SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_D0 = SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid == 1'b1 ? SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_data0 : redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q;

    // redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1(REG,755)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN == 1'b1)
        begin
            redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q <= $unsigned(SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_D0);
        end
    end

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,853)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,854)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,703)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1(STALLENABLE,1078)
    // Valid signal propagation
    assign SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V0 = SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0;
    // Stall signal propagation
    assign SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_s_tv_0 = SR_SE_out_coalesced_delay_1_fifo_backStall & SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0;
    // Backward Enable generation
    assign SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN = ~ (SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_v_s_0 = SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN & SR_SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V;
    // Backward Stall generation
    assign SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall = ~ (SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN == 1'b0)
            begin
                SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0 <= SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0 & SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_s_tv_0;
            end
            else
            begin
                SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0 <= SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311(BITJOIN,813)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_q = i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311(BITSELECT,814)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325(STALLENABLE,924)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_V0 = SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_backStall = i_llvm_fpga_push_i1_notcmp1223_push17_fc325_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325(STALLREG,1270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_data1 <= $unsigned(redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_and0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_V2;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_V1 & SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_r_data1 : redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_q;

    // SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311(STALLENABLE,905)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_wireValid = i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp1223_push17_fc325(STALLENABLE,925)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_wireValid = i_llvm_fpga_push_i1_notcmp1223_push17_fc325_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp1223_push17_fc325(BLACKBOX,117)@200
    // in in_stall_in@20000000
    // out out_data_out@201
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@201
    fc3_i_llvm_fpga_push_i1_notcmp1223_push17_0 thei_llvm_fpga_push_i1_notcmp1223_push17_fc325 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_D0),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_out_feedback_stall_out_17),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_notcmp1223_push17_fc325_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_notcmp1223_push17_fc325_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp1223_push17_fc325_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp1223_push17_fc325_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311(BLACKBOX,107)@199
    // in in_stall_in@20000000
    // out out_data_out@200
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@200
    fc3_i_llvm_fpga_pop_i1_notcmp1223_pop17_0 thei_llvm_fpga_pop_i1_notcmp1223_pop17_fc311 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D3),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D2),
        .in_feedback_in_17(i_llvm_fpga_push_i1_notcmp1223_push17_fc325_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_notcmp1223_push17_fc325_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310(BITJOIN,803)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_q = i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310(BITSELECT,804)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324(STALLENABLE,916)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_V0 = SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_backStall = i_llvm_fpga_push_i1_exitcond722_push16_fc324_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_V;

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324(STALLREG,1267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_data1 <= $unsigned(redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_and0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_V0;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_i_valid = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_V1 & SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_r_data1 : redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_q;

    // SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310(STALLENABLE,899)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_wireValid = i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_exitcond722_push16_fc324(STALLENABLE,917)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond722_push16_fc324_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond722_push16_fc324_wireValid = i_llvm_fpga_push_i1_exitcond722_push16_fc324_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond722_push16_fc324(BLACKBOX,113)@200
    // in in_stall_in@20000000
    // out out_data_out@201
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@201
    fc3_i_llvm_fpga_push_i1_exitcond722_push16_0 thei_llvm_fpga_push_i1_exitcond722_push16_fc324 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_D0),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_out_feedback_stall_out_16),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond722_push16_fc324_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_V0),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_exitcond722_push16_fc324_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_exitcond722_push16_fc324_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond722_push16_fc324_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond722_push16_fc324_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond722_pop16_fc310(BLACKBOX,104)@199
    // in in_stall_in@20000000
    // out out_data_out@200
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@200
    fc3_i_llvm_fpga_pop_i1_exitcond722_pop16_0 thei_llvm_fpga_pop_i1_exitcond722_pop16_fc310 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D1),
        .in_feedback_in_16(i_llvm_fpga_push_i1_exitcond722_push16_fc324_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_exitcond722_push16_fc324_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,1082)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_wireValid = SR_SE_out_coalesced_delay_1_fifo_V;

    // SR_SE_out_coalesced_delay_1_fifo(STALLREG,1240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_coalesced_delay_1_fifo_r_valid <= 1'b0;
            SR_SE_out_coalesced_delay_1_fifo_r_data0 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data1 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data2 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data3 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_coalesced_delay_1_fifo_r_valid <= SE_out_coalesced_delay_1_fifo_backStall & (SR_SE_out_coalesced_delay_1_fifo_r_valid | SR_SE_out_coalesced_delay_1_fifo_i_valid);

            if (SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_coalesced_delay_1_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_1_b);
                SR_SE_out_coalesced_delay_1_fifo_r_data1 <= $unsigned(redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data2 <= $unsigned(redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data3 <= $unsigned(sel_for_coalesced_delay_1_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_1_fifo_i_valid = SE_redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V0 & SR_SE_out_coalesced_delay_1_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_1_fifo_backStall = SR_SE_out_coalesced_delay_1_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_1_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_1_fifo_V = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_valid : SR_SE_out_coalesced_delay_1_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_1_fifo_D0 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data0 : sel_for_coalesced_delay_1_b;
    // Data1
    assign SR_SE_out_coalesced_delay_1_fifo_D1 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data1 : redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q;
    // Data2
    assign SR_SE_out_coalesced_delay_1_fifo_D2 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data2 : redist37_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q;
    // Data3
    assign SR_SE_out_coalesced_delay_1_fifo_D3 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data3 : sel_for_coalesced_delay_1_c;

    // coalesced_delay_1_fifo(STALLFIFO,757)
    assign coalesced_delay_1_fifo_valid_in = SE_out_fc3_B3_merge_reg_aunroll_x_V6;
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
        .DATA_WIDTH(2),
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

    // join_for_coalesced_delay_0(BITJOIN,699)
    assign join_for_coalesced_delay_0_q = {bubble_select_fc3_B3_merge_reg_aunroll_x_b, bubble_select_fc3_B3_merge_reg_aunroll_x_e};

    // coalesced_delay_0_fifo(STALLFIFO,756)
    assign coalesced_delay_0_fifo_valid_in = SE_out_fc3_B3_merge_reg_aunroll_x_V5;
    assign coalesced_delay_0_fifo_stall_in = SR_SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(95),
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

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313(BLACKBOX,105)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    fc3_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313 (
        .in_data_in(bubble_select_fc3_B3_merge_reg_aunroll_x_f),
        .in_dir(bubble_select_fc3_B3_merge_reg_aunroll_x_b),
        .in_feedback_in_19(i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_backStall),
        .in_valid_in(SE_out_fc3_B3_merge_reg_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg(STALLFIFO,1225)
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_valid_in = SE_out_fc3_B3_merge_reg_aunroll_x_V2;
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_fc3_B3_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg(STALLFIFO,1224)
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_valid_in = SE_out_fc3_B3_merge_reg_aunroll_x_V1;
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_fc3_B3_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg(STALLFIFO,1223)
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_valid_in = SE_out_fc3_B3_merge_reg_aunroll_x_V0;
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_fc3_B3_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,945)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = fc3_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,834)
    assign bubble_join_stall_entry_q = {in_notcmp1227, in_memdep_phi2_pop1029, in_i_014_pop928, in_forked, in_exitcond726};

    // bubble_select_stall_entry(BITSELECT,835)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);

    // fc3_B3_merge_reg_aunroll_x(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    fc3_B3_merge_reg thefc3_B3_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_data_in_2_tpl(bubble_select_stall_entry_f),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .in_stall_in(SE_out_fc3_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(fc3_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(fc3_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(fc3_B3_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(fc3_B3_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_stall_out(fc3_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(fc3_B3_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_fc3_B3_merge_reg_aunroll_x(STALLENABLE,861)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg0 <= SE_out_fc3_B3_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg1 <= SE_out_fc3_B3_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg2 <= SE_out_fc3_B3_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg3 <= SE_out_fc3_B3_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg4 <= SE_out_fc3_B3_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg5 <= SE_out_fc3_B3_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_fc3_B3_merge_reg_aunroll_x_fromReg6 <= SE_out_fc3_B3_merge_reg_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_fc3_B3_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_fc3_B3_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_fc3_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc3_B3_merge_reg_aunroll_x_fromReg0;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_fc3_B3_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_fc3_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc3_B3_merge_reg_aunroll_x_fromReg1;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_fc3_B3_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_fc3_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc3_B3_merge_reg_aunroll_x_fromReg2;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_fc3_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc3_B3_merge_reg_aunroll_x_fromReg3;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc313_out_stall_out) & SE_out_fc3_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc3_B3_merge_reg_aunroll_x_fromReg4;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_consumed5 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_fc3_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc3_B3_merge_reg_aunroll_x_fromReg5;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_consumed6 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_fc3_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc3_B3_merge_reg_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_fc3_B3_merge_reg_aunroll_x_StallValid = SE_out_fc3_B3_merge_reg_aunroll_x_backStall & SE_out_fc3_B3_merge_reg_aunroll_x_wireValid;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_toReg0 = SE_out_fc3_B3_merge_reg_aunroll_x_StallValid & SE_out_fc3_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_toReg1 = SE_out_fc3_B3_merge_reg_aunroll_x_StallValid & SE_out_fc3_B3_merge_reg_aunroll_x_consumed1;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_toReg2 = SE_out_fc3_B3_merge_reg_aunroll_x_StallValid & SE_out_fc3_B3_merge_reg_aunroll_x_consumed2;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_toReg3 = SE_out_fc3_B3_merge_reg_aunroll_x_StallValid & SE_out_fc3_B3_merge_reg_aunroll_x_consumed3;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_toReg4 = SE_out_fc3_B3_merge_reg_aunroll_x_StallValid & SE_out_fc3_B3_merge_reg_aunroll_x_consumed4;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_toReg5 = SE_out_fc3_B3_merge_reg_aunroll_x_StallValid & SE_out_fc3_B3_merge_reg_aunroll_x_consumed5;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_toReg6 = SE_out_fc3_B3_merge_reg_aunroll_x_StallValid & SE_out_fc3_B3_merge_reg_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_fc3_B3_merge_reg_aunroll_x_or0 = SE_out_fc3_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_or1 = SE_out_fc3_B3_merge_reg_aunroll_x_consumed1 & SE_out_fc3_B3_merge_reg_aunroll_x_or0;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_or2 = SE_out_fc3_B3_merge_reg_aunroll_x_consumed2 & SE_out_fc3_B3_merge_reg_aunroll_x_or1;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_or3 = SE_out_fc3_B3_merge_reg_aunroll_x_consumed3 & SE_out_fc3_B3_merge_reg_aunroll_x_or2;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_or4 = SE_out_fc3_B3_merge_reg_aunroll_x_consumed4 & SE_out_fc3_B3_merge_reg_aunroll_x_or3;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_or5 = SE_out_fc3_B3_merge_reg_aunroll_x_consumed5 & SE_out_fc3_B3_merge_reg_aunroll_x_or4;
    assign SE_out_fc3_B3_merge_reg_aunroll_x_wireStall = ~ (SE_out_fc3_B3_merge_reg_aunroll_x_consumed6 & SE_out_fc3_B3_merge_reg_aunroll_x_or5);
    assign SE_out_fc3_B3_merge_reg_aunroll_x_backStall = SE_out_fc3_B3_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_fc3_B3_merge_reg_aunroll_x_V0 = SE_out_fc3_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc3_B3_merge_reg_aunroll_x_fromReg0);
    assign SE_out_fc3_B3_merge_reg_aunroll_x_V1 = SE_out_fc3_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc3_B3_merge_reg_aunroll_x_fromReg1);
    assign SE_out_fc3_B3_merge_reg_aunroll_x_V2 = SE_out_fc3_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc3_B3_merge_reg_aunroll_x_fromReg2);
    assign SE_out_fc3_B3_merge_reg_aunroll_x_V3 = SE_out_fc3_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc3_B3_merge_reg_aunroll_x_fromReg3);
    assign SE_out_fc3_B3_merge_reg_aunroll_x_V4 = SE_out_fc3_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc3_B3_merge_reg_aunroll_x_fromReg4);
    assign SE_out_fc3_B3_merge_reg_aunroll_x_V5 = SE_out_fc3_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc3_B3_merge_reg_aunroll_x_fromReg5);
    assign SE_out_fc3_B3_merge_reg_aunroll_x_V6 = SE_out_fc3_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc3_B3_merge_reg_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_fc3_B3_merge_reg_aunroll_x_wireValid = fc3_B3_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg(STALLFIFO,1226)
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_valid_in = SE_out_fc3_B3_merge_reg_aunroll_x_V3;
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_fc3_B3_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_4(STALLENABLE,1100)
    // Valid signal propagation
    assign SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_out_stall_out | ~ (SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_4_wireValid = bubble_out_fc3_B3_merge_reg_aunroll_x_4_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33(BLACKBOX,97)@99
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@100
    // out out_stall_out@20000000
    // out out_valid_out@100
    fc3_i_llvm_fpga_ffwd_dest_p1024f32_in0158_0 thei_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_backStall),
        .in_valid_in(SE_out_bubble_out_fc3_B3_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33(BITJOIN,780)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_q = i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33(BITSELECT,781)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_q[63:0]);

    // i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,649)@100
    assign i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_b[51:0]);
    assign i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_b[63:52]);

    // SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33(STALLENABLE,885)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_consumed0 = (~ (SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_consumed1 = (~ (SE_redist11_i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_wireValid = i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_out_valid_out;

    // SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0(STALLENABLE,1045)
    // Valid signal propagation
    assign SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_V0 = SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_backStall & SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0(STALLREG,1256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_valid <= SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx8_fc30_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx8_fc30_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_V = SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx8_fc30_add_x_p1_of_2_q;

    // SE_i_arrayidx8_fc30_add_x_p1_of_2(STALLENABLE,989)
    // Valid signal propagation
    assign SE_i_arrayidx8_fc30_add_x_p1_of_2_V0 = SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx8_fc30_add_x_p1_of_2_V1 = SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx8_fc30_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_backStall & SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx8_fc30_add_x_p1_of_2_s_tv_1 = SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx8_fc30_add_x_p1_of_2_or0 = SE_i_arrayidx8_fc30_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx8_fc30_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx8_fc30_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx8_fc30_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx8_fc30_add_x_p1_of_2_v_s_0 = SE_i_arrayidx8_fc30_add_x_p1_of_2_backEN & SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx8_fc30_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx8_fc30_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx8_fc30_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_0 & SE_i_arrayidx8_fc30_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx8_fc30_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx8_fc30_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_1 & SE_i_arrayidx8_fc30_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx8_fc30_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx8_fc30_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx8_fc30_add_x_p1_of_2(STALLREG,1254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_valid <= SE_i_arrayidx8_fc30_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_and0 = SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V1;
    assign SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc33_V0 & SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_backStall = SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_V = SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_D0 = SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_data0 : i_arrayidx8_fc30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_D1 = SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_r_data1 : i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2(STALLREG,1248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_valid <= SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx6_fc30_add_x_p1_of_2_q);
                SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_and0 = SE_i_arrayidx6_fc30_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_i_valid = SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_V = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_data0 : i_arrayidx6_fc30_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_r_data1 : i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel0_2(STALLENABLE,995)
    // Valid signal propagation
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel0_2_V0 = 1'b1;
    assign SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel0_2_V1 = 1'b1;

    // SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,1002)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0 <= '0;
            SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0 <= SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg0;
            // Successor 1
            SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1 <= SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed0 = (~ (SR_SE_i_arrayidx6_fc30_dupName_0_add_x_p1_of_2_backStall) & SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid) | SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0;
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed1 = (~ (SR_SE_i_arrayidx8_fc30_add_x_p1_of_2_backStall) & SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid) | SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1;
    // Consuming
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_StallValid = SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg0 = SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_StallValid & SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg1 = SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_StallValid & SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed1;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_or0 = SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireStall = ~ (SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed1 & SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_or0);
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid & ~ (SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0);
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V1 = SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid & ~ (SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_arrayidx10_fc30_add_x_BitSelect_for_b_tessel0_2_V1;
    assign SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_V1 & SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_i_cmp4_fc317(STALLENABLE,874)
    // Valid signal propagation
    assign SE_i_cmp4_fc317_V0 = SE_i_cmp4_fc317_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp4_fc317_s_tv_0 = SR_SE_redist31_i_cmp4_fc317_q_2_0_backStall & SE_i_cmp4_fc317_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp4_fc317_backEN = ~ (SE_i_cmp4_fc317_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp4_fc317_v_s_0 = SE_i_cmp4_fc317_backEN & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_V0;
    // Backward Stall generation
    assign SE_i_cmp4_fc317_backStall = ~ (SE_i_cmp4_fc317_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp4_fc317_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp4_fc317_backEN == 1'b0)
            begin
                SE_i_cmp4_fc317_R_v_0 <= SE_i_cmp4_fc317_R_v_0 & SE_i_cmp4_fc317_s_tv_0;
            end
            else
            begin
                SE_i_cmp4_fc317_R_v_0 <= SE_i_cmp4_fc317_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37(STALLENABLE,913)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_consumed0 = (~ (SE_i_cmp4_fc317_backStall) & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_consumed1 = (~ (SE_i_arrayidx6_fc30_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_consumed2 = (~ (SE_bgTrunc_i_inc_fc320_sel_x_backStall) & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_StallValid = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_backStall & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_toReg0 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_StallValid & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_toReg1 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_StallValid & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_toReg2 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_StallValid & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_or0 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_or1 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_consumed1 & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_or0;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_consumed2 & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_or1);
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_backStall = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_V0 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_V1 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_V2 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_wireValid = i_llvm_fpga_pop_i32_j_013_pop12_fc37_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_j_013_push12_fc334(STALLENABLE,935)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_013_push12_fc334_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_013_push12_fc334_wireValid = i_llvm_fpga_push_i32_j_013_push12_fc334_out_valid_out;

    // c_i32_159(CONSTANT,69)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_fc320(ADD,93)@100
    assign i_inc_fc320_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_j_013_pop12_fc37_b};
    assign i_inc_fc320_b = {1'b0, c_i32_159_q};
    assign i_inc_fc320_o = $unsigned(i_inc_fc320_a) + $unsigned(i_inc_fc320_b);
    assign i_inc_fc320_q = i_inc_fc320_o[32:0];

    // bgTrunc_i_inc_fc320_sel_x(BITSELECT,3)@100
    assign bgTrunc_i_inc_fc320_sel_x_b = i_inc_fc320_q[31:0];

    // i_llvm_fpga_push_i32_j_013_push12_fc334(BLACKBOX,122)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    fc3_i_llvm_fpga_push_i32_j_013_push12_0 thei_llvm_fpga_push_i32_j_013_push12_fc334 (
        .in_data_in(bgTrunc_i_inc_fc320_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i32_j_013_pop12_fc37_out_feedback_stall_out_12),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_fc35_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_013_push12_fc334_backStall),
        .in_valid_in(SE_bgTrunc_i_inc_fc320_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i32_j_013_push12_fc334_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i32_j_013_push12_fc334_out_feedback_valid_out_12),
        .out_stall_out(i_llvm_fpga_push_i32_j_013_push12_fc334_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_013_push12_fc334_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_057_recast_x(CONSTANT,4)
    assign c_i32_057_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j_013_pop12_fc37(BLACKBOX,111)@99
    // in in_stall_in@20000000
    // out out_data_out@100
    // out out_feedback_stall_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@100
    fc3_i_llvm_fpga_pop_i32_j_013_pop12_0 thei_llvm_fpga_pop_i32_j_013_pop12_fc37 (
        .in_data_in(c_i32_057_recast_x_q),
        .in_dir(redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q),
        .in_feedback_in_12(i_llvm_fpga_push_i32_j_013_push12_fc334_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i32_j_013_push12_fc334_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc37_backStall),
        .in_valid_in(SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V2),
        .out_data_out(i_llvm_fpga_pop_i32_j_013_pop12_fc37_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i32_j_013_pop12_fc37_out_feedback_stall_out_12),
        .out_stall_out(i_llvm_fpga_pop_i32_j_013_pop12_fc37_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_013_pop12_fc37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0(STALLREG,1235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid <= 1'b0;
            SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid <= SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall & (SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid | SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid);

            if (SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_data0 <= $unsigned(redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V0;
    // Stall signal propagation
    assign SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall = SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid | ~ (SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid);

    // Valid
    assign SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V = SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid == 1'b1 ? SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid : SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid;

    assign SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_D0 = SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid == 1'b1 ? SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_data0 : redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q;

    // redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2(REG,749)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN == 1'b1)
        begin
            redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q <= $unsigned(SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_D0);
        end
    end

    // SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3(STALLREG,1234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid <= 1'b0;
            SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall & (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid | SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid);

            if (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_data0 <= $unsigned(redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V0;
    // Stall signal propagation
    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid | ~ (SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid);

    // Valid
    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid == 1'b1 ? SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid : SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid;

    assign SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_D0 = SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid == 1'b1 ? SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_data0 : redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q;

    // SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3(STALLENABLE,1072)
    // Valid signal propagation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V0 = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0;
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V1 = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1;
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V2 = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2;
    // Stall signal propagation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_0 = SR_SE_redist35_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall & SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0;
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_1 = i_llvm_fpga_pipeline_keep_going_fc35_out_stall_out & SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1;
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_2 = i_llvm_fpga_pop_i32_j_013_pop12_fc37_out_stall_out & SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2;
    // Backward Enable generation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_or0 = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_0;
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_or1 = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_1 | SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_or0;
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN = ~ (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_2 | SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0 = SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN & SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V;
    // Backward Stall generation
    assign SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall = ~ (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0 <= 1'b0;
            SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1 <= 1'b0;
            SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN == 1'b0)
            begin
                SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0 <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0 & SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_0;
            end
            else
            begin
                SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0 <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0;
            end

            if (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN == 1'b0)
            begin
                SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1 <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1 & SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_1;
            end
            else
            begin
                SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1 <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0;
            end

            if (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN == 1'b0)
            begin
                SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2 <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2 & SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_2;
            end
            else
            begin
                SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2 <= SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_notexitcond_fc336(STALLENABLE,927)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_fc336_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_fc336_wireValid = i_llvm_fpga_push_i1_notexitcond_fc336_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_fc336(BLACKBOX,118)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    fc3_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_fc336 (
        .in_data_in(i_exitcond_fc321_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_fc35_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_fc314_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_fc336_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_fc336_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_fc336_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_fc336_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_fc336_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_fc336_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_fc341(STALLENABLE,919)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_fc341_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_fc341_wireValid = i_llvm_fpga_push_i1_lastiniteration_fc341_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_fc341(BLACKBOX,114)@198
    // in in_stall_in@20000000
    // out out_data_out@199
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@199
    fc3_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_fc341 (
        .in_data_in(SR_SE_i_next_initerations_fc316_vt_select_0_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_fc35_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_fc316_vt_select_0_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_fc341_backStall),
        .in_valid_in(SE_i_next_initerations_fc316_vt_select_0_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_fc341_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_fc341_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_fc341_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_fc341_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3(REG,750)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN == 1'b1)
        begin
            redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q <= $unsigned(SR_SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_D0);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_fc35(BLACKBOX,103)@99
    // in in_stall_in@20000000
    // out out_data_out@100
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@100
    fc3_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_fc35 (
        .in_data_in(redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_fc341_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_fc341_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_fc336_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_fc336_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_fc35_backStall),
        .in_valid_in(SE_redist34_fc3_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_fc35_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_fc35_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_fc35_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_fc35_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_fc35_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_fc35_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_fc35_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_fc35_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pipeline_keep_going_fc35(BITJOIN,799)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_fc35_q = i_llvm_fpga_pipeline_keep_going_fc35_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_fc35(BITSELECT,800)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_fc35_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_fc35_q[0:0]);

    // bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg(STALLFIFO,1227)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(101),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_fc35(STALLENABLE,897)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc328_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed2 = (~ (SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc326_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed3 = (~ (SE_bgTrunc_i_inc_fc320_sel_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed4 = (~ (SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_fc35_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_fc35_or3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_fc35_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc35_wireValid = i_llvm_fpga_pipeline_keep_going_fc35_out_valid_out;

    // SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0(STALLREG,1263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_valid <= 1'b0;
            SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_valid <= SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_backStall & (SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_valid | SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_i_valid);

            if (SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_fc35_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_fc35_V4;
    // Stall signal propagation
    assign SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_backStall = SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_valid | ~ (SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_i_valid);

    // Valid
    assign SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_V = SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_valid : SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_i_valid;

    assign SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_D0 = SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_r_data0 : bubble_select_i_llvm_fpga_pipeline_keep_going_fc35_b;

    // redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0(REG,741)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_q <= $unsigned(SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_D0);
        end
    end

    // SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0(STALLENABLE,1062)
    // Valid signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_V0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_s_tv_0 = SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backStall & SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_backEN = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_v_s_0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_backEN & SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_V;
    // Backward Stall generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_backStall = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_R_v_0 & SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1(STALLREG,1264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_valid <= 1'b0;
            SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_valid <= SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backStall & (SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_valid | SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_i_valid);

            if (SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_data0 <= $unsigned(redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_i_valid = SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backStall = SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_valid | ~ (SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_i_valid);

    // Valid
    assign SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_V = SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_valid : SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_i_valid;

    assign SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_D0 = SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_r_data0 : redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_0_q;

    // redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1(REG,742)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_q <= $unsigned(SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_D0);
        end
    end

    // SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1(STALLENABLE,1063)
    // Valid signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_V0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_0;
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_V1 = SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_1;
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_V2 = SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_2;
    // Stall signal propagation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_s_tv_0 = SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc30_shift_x_backStall & SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_0;
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push11_fc337_backStall & SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_1;
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_s_tv_2 = redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_stall_out & SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_2;
    // Backward Enable generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_or0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_s_tv_0;
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_or1 = SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_s_tv_1 | SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_or0;
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backEN = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_s_tv_2 | SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_v_s_0 = SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backEN & SR_SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_V;
    // Backward Stall generation
    assign SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backStall = ~ (SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_1 <= 1'b0;
            SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_0 & SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_0 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_v_s_0;
            end

            if (SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_1 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_1 & SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_1 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_v_s_0;
            end

            if (SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_2 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_2 & SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_s_tv_2;
            end
            else
            begin
                SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_R_v_2 <= SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_v_s_0;
            end

        end
    end

    // redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo(STALLFIFO,743)
    assign redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_valid_in = SE_redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_V2;
    assign redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_stall_in = SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_backStall;
    assign redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_data_in = redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_q;
    assign redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_valid_in_bitsignaltemp = redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_valid_in[0];
    assign redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_stall_in_bitsignaltemp = redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_stall_in[0];
    assign redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_valid_out[0] = redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_valid_out_bitsignaltemp;
    assign redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_stall_out[0] = redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo (
        .valid_in(redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_valid_in_bitsignaltemp),
        .stall_in(redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_stall_in_bitsignaltemp),
        .data_in(redist27_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_2_1_q),
        .valid_out(redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_valid_out_bitsignaltemp),
        .stall_out(redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_stall_out_bitsignaltemp),
        .data_out(redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo(BITJOIN,844)
    assign bubble_join_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_q = redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_data_out;

    // bubble_select_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo(BITSELECT,845)
    assign bubble_select_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_b = $unsigned(bubble_join_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_q[0:0]);

    // SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo(STALLENABLE,1065)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_fromReg0 <= '0;
            SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_fromReg0 <= SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_toReg0;
            // Successor 1
            SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_fromReg1 <= SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_consumed0 = (~ (SR_SE_i_next_initerations_fc316_vt_select_0_backStall) & SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_wireValid) | SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_fromReg0;
    assign SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_consumed1 = (~ (SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_backStall) & SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_wireValid) | SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_fromReg1;
    // Consuming
    assign SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_StallValid = SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_backStall & SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_wireValid;
    assign SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_toReg0 = SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_StallValid & SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_consumed0;
    assign SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_toReg1 = SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_StallValid & SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_or0 = SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_consumed0;
    assign SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_wireStall = ~ (SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_consumed1 & SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_or0);
    assign SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_backStall = SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_V0 = SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_wireValid & ~ (SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_fromReg0);
    assign SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_V1 = SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_wireValid & ~ (SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_wireValid = redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_valid_out;

    // SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0(STALLREG,1265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_valid <= 1'b0;
            SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_valid <= SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_backStall & (SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_valid | SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_i_valid);

            if (SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_data0 <= $unsigned(bubble_select_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_i_valid = SE_out_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_backStall = SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_valid | ~ (SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_i_valid);

    // Valid
    assign SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_V = SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_valid == 1'b1 ? SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_valid : SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_i_valid;

    assign SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_D0 = SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_valid == 1'b1 ? SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_r_data0 : bubble_select_redist28_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_98_fifo_b;

    // redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0(REG,744)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_q <= $unsigned(SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_D0);
        end
    end

    // SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0(STALLENABLE,1066)
    // Valid signal propagation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_V0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_R_v_0;
    // Stall signal propagation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_s_tv_0 = SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backStall & SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_R_v_0;
    // Backward Enable generation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_backEN = ~ (SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_v_s_0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_backEN & SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_V;
    // Backward Stall generation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_backStall = ~ (SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_R_v_0 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_R_v_0 & SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_s_tv_0;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_R_v_0 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_v_s_0;
            end

        end
    end

    // SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1(STALLREG,1266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_valid <= 1'b0;
            SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_valid <= SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backStall & (SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_valid | SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_i_valid);

            if (SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_data0 <= $unsigned(redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_i_valid = SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_V0;
    // Stall signal propagation
    assign SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backStall = SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_valid | ~ (SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_i_valid);

    // Valid
    assign SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_V = SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_valid == 1'b1 ? SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_valid : SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_i_valid;

    assign SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_D0 = SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_valid == 1'b1 ? SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_r_data0 : redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_0_q;

    // redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1(REG,745)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_q <= $unsigned(SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_D0);
        end
    end

    // bubble_join_i_llvm_fpga_mem_memdep_fc353(BITJOIN,786)
    assign bubble_join_i_llvm_fpga_mem_memdep_fc353_q = i_llvm_fpga_mem_memdep_fc353_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_fc353(BITSELECT,787)
    assign bubble_select_i_llvm_fpga_mem_memdep_fc353_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_fc353_q[0:0]);

    // SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1(STALLENABLE,1067)
    // Valid signal propagation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_V0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_0;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_V1 = SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_1;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_V2 = SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_2;
    // Stall signal propagation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_s_tv_0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc324_backStall & SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_0;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_backStall & SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_1;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_s_tv_2 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc325_backStall & SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_2;
    // Backward Enable generation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_or0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_s_tv_0;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_or1 = SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_s_tv_1 | SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_or0;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backEN = ~ (SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_s_tv_2 | SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_v_s_0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backEN & SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_V;
    // Backward Stall generation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backStall = ~ (SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_0 <= 1'b0;
            SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_1 <= 1'b0;
            SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_0 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_0 & SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_s_tv_0;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_0 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_v_s_0;
            end

            if (SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_1 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_1 & SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_s_tv_1;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_1 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_v_s_0;
            end

            if (SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_2 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_2 & SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_s_tv_2;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_R_v_2 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354(STALLENABLE,922)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_backStall = i_llvm_fpga_push_i1_memdep_phi_push13_fc354_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_wireValid = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_V;

    // SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354(STALLREG,1269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_valid <= SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_backStall & (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_valid | SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_mem_memdep_fc353_b);
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_data1 <= $unsigned(redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_and0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_V1;
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_i_valid = SE_out_i_llvm_fpga_mem_memdep_fc353_V1 & SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_backStall = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_V = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_valid : SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_D0 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_data0 : bubble_select_i_llvm_fpga_mem_memdep_fc353_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_D1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_r_data1 : redist29_i_llvm_fpga_pipeline_keep_going_fc35_out_data_out_100_1_q;

    // SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1(STALLENABLE,1188)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and0 = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and1 = redist22_i_masked_fc344_q_98_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and2 = bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc36_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and3 = bubble_out_i_llvm_fpga_pipeline_keep_going_fc35_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and4 = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and5 = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_fc353_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_and5;

    // SE_out_i_llvm_fpga_mem_memdep_fc353(STALLENABLE,889)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_fc353_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_fc353_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_fc353_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_fc353_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_fc353_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_fc353_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_fc353_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_fc353_wireValid) | SE_out_i_llvm_fpga_mem_memdep_fc353_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_fc353_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc354_backStall) & SE_out_i_llvm_fpga_mem_memdep_fc353_wireValid) | SE_out_i_llvm_fpga_mem_memdep_fc353_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_fc353_StallValid = SE_out_i_llvm_fpga_mem_memdep_fc353_backStall & SE_out_i_llvm_fpga_mem_memdep_fc353_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_fc353_toReg0 = SE_out_i_llvm_fpga_mem_memdep_fc353_StallValid & SE_out_i_llvm_fpga_mem_memdep_fc353_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_fc353_toReg1 = SE_out_i_llvm_fpga_mem_memdep_fc353_StallValid & SE_out_i_llvm_fpga_mem_memdep_fc353_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_fc353_or0 = SE_out_i_llvm_fpga_mem_memdep_fc353_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_fc353_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_fc353_consumed1 & SE_out_i_llvm_fpga_mem_memdep_fc353_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_fc353_backStall = SE_out_i_llvm_fpga_mem_memdep_fc353_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_fc353_V0 = SE_out_i_llvm_fpga_mem_memdep_fc353_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_fc353_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_fc353_V1 = SE_out_i_llvm_fpga_mem_memdep_fc353_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_fc353_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_fc353_wireValid = i_llvm_fpga_mem_memdep_fc353_out_o_valid;

    // bubble_join_coalesced_delay_6_fifo(BITJOIN,856)
    assign bubble_join_coalesced_delay_6_fifo_q = coalesced_delay_6_fifo_data_out;

    // bubble_select_coalesced_delay_6_fifo(BITSELECT,857)
    assign bubble_select_coalesced_delay_6_fifo_b = $unsigned(bubble_join_coalesced_delay_6_fifo_q[64:0]);

    // sel_for_coalesced_delay_6(BITSELECT,718)
    assign sel_for_coalesced_delay_6_b = $unsigned(bubble_select_coalesced_delay_6_fifo_b[63:0]);
    assign sel_for_coalesced_delay_6_c = $unsigned(bubble_select_coalesced_delay_6_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_fc353(BLACKBOX,99)@169
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_fc3_avm_address@20000000
    // out out_memdep_fc3_avm_burstcount@20000000
    // out out_memdep_fc3_avm_byteenable@20000000
    // out out_memdep_fc3_avm_enable@20000000
    // out out_memdep_fc3_avm_read@20000000
    // out out_memdep_fc3_avm_write@20000000
    // out out_memdep_fc3_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@200
    // out out_o_writeack@200
    fc3_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_fc353 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_6_b),
        .in_i_predicate(sel_for_coalesced_delay_6_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_fc353_backStall),
        .in_i_valid(SE_out_coalesced_delay_6_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_b),
        .in_memdep_fc3_avm_readdata(in_memdep_fc3_avm_readdata),
        .in_memdep_fc3_avm_readdatavalid(in_memdep_fc3_avm_readdatavalid),
        .in_memdep_fc3_avm_waitrequest(in_memdep_fc3_avm_waitrequest),
        .in_memdep_fc3_avm_writeack(in_memdep_fc3_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_fc353_out_lsu_memdep_o_active),
        .out_memdep_fc3_avm_address(i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_address),
        .out_memdep_fc3_avm_burstcount(i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_burstcount),
        .out_memdep_fc3_avm_byteenable(i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_byteenable),
        .out_memdep_fc3_avm_enable(i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_enable),
        .out_memdep_fc3_avm_read(i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_read),
        .out_memdep_fc3_avm_write(i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_write),
        .out_memdep_fc3_avm_writedata(i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_fc353_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_fc353_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_fc353_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_6_fifo(STALLFIFO,762)
    assign coalesced_delay_6_fifo_valid_in = SE_join_for_coalesced_delay_6_V0;
    assign coalesced_delay_6_fifo_stall_in = SE_out_coalesced_delay_6_fifo_backStall;
    assign coalesced_delay_6_fifo_data_in = SR_SE_join_for_coalesced_delay_6_D0;
    assign coalesced_delay_6_fifo_valid_in_bitsignaltemp = coalesced_delay_6_fifo_valid_in[0];
    assign coalesced_delay_6_fifo_stall_in_bitsignaltemp = coalesced_delay_6_fifo_stall_in[0];
    assign coalesced_delay_6_fifo_valid_out[0] = coalesced_delay_6_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_6_fifo_stall_out[0] = coalesced_delay_6_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_6_fifo (
        .valid_in(coalesced_delay_6_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_6_fifo_stall_in_bitsignaltemp),
        .data_in(SR_SE_join_for_coalesced_delay_6_D0),
        .valid_out(coalesced_delay_6_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_6_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_6_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_6_fifo(STALLENABLE,1088)
    // Valid signal propagation
    assign SE_out_coalesced_delay_6_fifo_V0 = SE_out_coalesced_delay_6_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_6_fifo_backStall = i_llvm_fpga_mem_memdep_fc353_out_o_stall | ~ (SE_out_coalesced_delay_6_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_6_fifo_and0 = coalesced_delay_6_fifo_valid_out;
    assign SE_out_coalesced_delay_6_fifo_wireValid = i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_out_o_valid & SE_out_coalesced_delay_6_fifo_and0;

    // bubble_join_i_llvm_fpga_mem_pn1_fc348(BITJOIN,790)
    assign bubble_join_i_llvm_fpga_mem_pn1_fc348_q = i_llvm_fpga_mem_pn1_fc348_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_pn1_fc348(BITSELECT,791)
    assign bubble_select_i_llvm_fpga_mem_pn1_fc348_b = $unsigned(bubble_join_i_llvm_fpga_mem_pn1_fc348_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_fc37_fc342(BITJOIN,793)
    assign bubble_join_i_llvm_fpga_mem_unnamed_fc37_fc342_q = i_llvm_fpga_mem_unnamed_fc37_fc342_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_fc37_fc342(BITSELECT,794)
    assign bubble_select_i_llvm_fpga_mem_unnamed_fc37_fc342_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_fc37_fc342_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_fc38_fc346(BITJOIN,796)
    assign bubble_join_i_llvm_fpga_mem_unnamed_fc38_fc346_q = i_llvm_fpga_mem_unnamed_fc38_fc346_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_fc38_fc346(BITSELECT,797)
    assign bubble_select_i_llvm_fpga_mem_unnamed_fc38_fc346_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_fc38_fc346_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x(BLACKBOX,62)@134
    // in in_i_stall@20000000
    // out out_c0_exit41_0_tpl@169
    // out out_c0_exit41_1_tpl@169
    // out out_o_stall@20000000
    // out out_o_valid@169
    fc3_i_sfc_s_c0_in_for_body3_s_c0_enter386_fc351 thei_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x (
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_fc38_fc346_b),
        .in_c0_eni3_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_fc37_fc342_b),
        .in_c0_eni3_3_tpl(bubble_select_i_llvm_fpga_mem_pn1_fc348_b),
        .in_i_stall(SE_out_coalesced_delay_6_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_V0),
        .out_c0_exit41_0_tpl(),
        .out_c0_exit41_1_tpl(i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_out_c0_exit41_1_tpl),
        .out_o_stall(i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_pn1_fc348(BLACKBOX,100)@102
    // in in_i_stall@20000000
    // out out_o_readdata@134
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_pn1_fc3_avm_address@20000000
    // out out_pn1_fc3_avm_burstcount@20000000
    // out out_pn1_fc3_avm_byteenable@20000000
    // out out_pn1_fc3_avm_enable@20000000
    // out out_pn1_fc3_avm_read@20000000
    // out out_pn1_fc3_avm_write@20000000
    // out out_pn1_fc3_avm_writedata@20000000
    fc3_i_llvm_fpga_mem_pn1_0 thei_llvm_fpga_mem_pn1_fc348 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_D0),
        .in_i_dependence(SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_D1),
        .in_i_predicate(SR_SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_backStall),
        .in_i_valid(SE_i_arrayidx10_fc30_add_x_BitJoin_for_q_V0),
        .in_pn1_fc3_avm_readdata(in_pn1_fc3_avm_readdata),
        .in_pn1_fc3_avm_readdatavalid(in_pn1_fc3_avm_readdatavalid),
        .in_pn1_fc3_avm_waitrequest(in_pn1_fc3_avm_waitrequest),
        .in_pn1_fc3_avm_writeack(in_pn1_fc3_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_pn1_fc348_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_pn1_fc348_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_pn1_fc348_out_o_valid),
        .out_pn1_fc3_avm_address(i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_address),
        .out_pn1_fc3_avm_burstcount(i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_burstcount),
        .out_pn1_fc3_avm_byteenable(i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_byteenable),
        .out_pn1_fc3_avm_enable(i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_enable),
        .out_pn1_fc3_avm_read(i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_read),
        .out_pn1_fc3_avm_write(i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_write),
        .out_pn1_fc3_avm_writedata(i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_fc38_fc346(BLACKBOX,102)@102
    // in in_i_stall@20000000
    // out out_o_readdata@134
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_unnamed_fc38_fc3_avm_address@20000000
    // out out_unnamed_fc38_fc3_avm_burstcount@20000000
    // out out_unnamed_fc38_fc3_avm_byteenable@20000000
    // out out_unnamed_fc38_fc3_avm_enable@20000000
    // out out_unnamed_fc38_fc3_avm_read@20000000
    // out out_unnamed_fc38_fc3_avm_write@20000000
    // out out_unnamed_fc38_fc3_avm_writedata@20000000
    fc3_i_llvm_fpga_mem_unnamed_8_fc30 thei_llvm_fpga_mem_unnamed_fc38_fc346 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_D0),
        .in_i_dependence(SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_D1),
        .in_i_predicate(SR_SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_backStall),
        .in_i_valid(SE_i_arrayidx6_fc30_dupName_0_add_x_BitJoin_for_q_V0),
        .in_unnamed_fc38_fc3_avm_readdata(in_unnamed_fc38_fc3_avm_readdata),
        .in_unnamed_fc38_fc3_avm_readdatavalid(in_unnamed_fc38_fc3_avm_readdatavalid),
        .in_unnamed_fc38_fc3_avm_waitrequest(in_unnamed_fc38_fc3_avm_waitrequest),
        .in_unnamed_fc38_fc3_avm_writeack(in_unnamed_fc38_fc3_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_fc38_fc346_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_fc38_fc346_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_fc38_fc346_out_o_valid),
        .out_unnamed_fc38_fc3_avm_address(i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_address),
        .out_unnamed_fc38_fc3_avm_burstcount(i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_burstcount),
        .out_unnamed_fc38_fc3_avm_byteenable(i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_byteenable),
        .out_unnamed_fc38_fc3_avm_enable(i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_enable),
        .out_unnamed_fc38_fc3_avm_read(i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_read),
        .out_unnamed_fc38_fc3_avm_write(i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_write),
        .out_unnamed_fc38_fc3_avm_writedata(i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346(STALLENABLE,895)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_V0 = SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_backStall = i_sfc_s_c0_in_for_body3_fc3s_c0_enter386_fc351_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_and0 = i_llvm_fpga_mem_unnamed_fc38_fc346_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_and1 = i_llvm_fpga_mem_unnamed_fc37_fc342_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_wireValid = i_llvm_fpga_mem_pn1_fc348_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_and1;

    // i_arrayidx8_fc30_add_x_p2_of_2(ADD,563)@101 + 1
    assign i_arrayidx8_fc30_add_x_p2_of_2_cin = SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_D2;
    assign i_arrayidx8_fc30_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx8_fc30_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx8_fc30_add_x_p2_of_2_D1}, i_arrayidx8_fc30_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx8_fc30_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx8_fc30_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx8_fc30_add_x_p2_of_2_o <= $unsigned(i_arrayidx8_fc30_add_x_p2_of_2_a) + $unsigned(i_arrayidx8_fc30_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx8_fc30_add_x_p2_of_2_q = i_arrayidx8_fc30_add_x_p2_of_2_o[13:1];

    // redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0(REG,726)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx8_fc30_add_x_BitJoin_for_q(BITJOIN,564)@102
    assign i_arrayidx8_fc30_add_x_BitJoin_for_q_q = {i_arrayidx8_fc30_add_x_p2_of_2_q, redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx8_fc30_dupName_0_trunc_sel_x(BITSELECT,44)@102
    assign i_arrayidx8_fc30_dupName_0_trunc_sel_x_b = i_arrayidx8_fc30_add_x_BitJoin_for_q_q[63:0];

    // SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q(STALLREG,1257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_valid <= 1'b0;
            SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_data1 <= 1'bx;
            SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_valid <= SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_backStall & (SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_valid | SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_i_valid);

            if (SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_data0 <= i_arrayidx8_fc30_dupName_0_trunc_sel_x_b;
                SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_data1 <= i_memdep_phi2_or_fc329_q;
                SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_data2 <= i_first_cleanup_xor_fc330_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_and0 = SE_i_arrayidx8_fc30_add_x_p2_of_2_V0;
    assign SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_and1 = SE_redist15_i_arrayidx8_fc30_add_x_p1_of_2_q_1_0_V0 & SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_and0;
    assign SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc34_V4 & SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_and1;
    assign SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc38_V1 & SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_and2;
    // Stall signal propagation
    assign SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_backStall = SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_valid | ~ (SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_i_valid);

    // Valid
    assign SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_V = SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_valid : SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_i_valid;

    // Data0
    assign SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_D0 = SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_data0 : i_arrayidx8_fc30_dupName_0_trunc_sel_x_b;
    // Data1
    assign SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_D1 = SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_data1 : i_memdep_phi2_or_fc329_q;
    // Data2
    assign SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_D2 = SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_r_data2 : i_first_cleanup_xor_fc330_q;

    // i_llvm_fpga_mem_unnamed_fc37_fc342(BLACKBOX,101)@102
    // in in_i_stall@20000000
    // out out_o_readdata@134
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_unnamed_fc37_fc3_avm_address@20000000
    // out out_unnamed_fc37_fc3_avm_burstcount@20000000
    // out out_unnamed_fc37_fc3_avm_byteenable@20000000
    // out out_unnamed_fc37_fc3_avm_enable@20000000
    // out out_unnamed_fc37_fc3_avm_read@20000000
    // out out_unnamed_fc37_fc3_avm_write@20000000
    // out out_unnamed_fc37_fc3_avm_writedata@20000000
    fc3_i_llvm_fpga_mem_unnamed_7_fc30 thei_llvm_fpga_mem_unnamed_fc37_fc342 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_D0),
        .in_i_dependence(SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_D1),
        .in_i_predicate(SR_SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_fc38_fc346_backStall),
        .in_i_valid(SE_i_arrayidx8_fc30_add_x_BitJoin_for_q_V0),
        .in_unnamed_fc37_fc3_avm_readdata(in_unnamed_fc37_fc3_avm_readdata),
        .in_unnamed_fc37_fc3_avm_readdatavalid(in_unnamed_fc37_fc3_avm_readdatavalid),
        .in_unnamed_fc37_fc3_avm_waitrequest(in_unnamed_fc37_fc3_avm_waitrequest),
        .in_unnamed_fc37_fc3_avm_writeack(in_unnamed_fc37_fc3_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_fc37_fc342_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_fc37_fc342_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_fc37_fc342_out_o_valid),
        .out_unnamed_fc37_fc3_avm_address(i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_address),
        .out_unnamed_fc37_fc3_avm_burstcount(i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_burstcount),
        .out_unnamed_fc37_fc3_avm_byteenable(i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_byteenable),
        .out_unnamed_fc37_fc3_avm_enable(i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_enable),
        .out_unnamed_fc37_fc3_avm_read(i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_read),
        .out_unnamed_fc37_fc3_avm_write(i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_write),
        .out_unnamed_fc37_fc3_avm_writedata(i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,7)
    assign out_unnamed_fc37_fc3_avm_address = i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_address;
    assign out_unnamed_fc37_fc3_avm_enable = i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_enable;
    assign out_unnamed_fc37_fc3_avm_read = i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_read;
    assign out_unnamed_fc37_fc3_avm_write = i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_write;
    assign out_unnamed_fc37_fc3_avm_writedata = i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_writedata;
    assign out_unnamed_fc37_fc3_avm_byteenable = i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_byteenable;
    assign out_unnamed_fc37_fc3_avm_burstcount = i_llvm_fpga_mem_unnamed_fc37_fc342_out_unnamed_fc37_fc3_avm_burstcount;

    // bubble_join_redist22_i_masked_fc344_q_98_fifo(BITJOIN,838)
    assign bubble_join_redist22_i_masked_fc344_q_98_fifo_q = redist22_i_masked_fc344_q_98_fifo_data_out;

    // bubble_select_redist22_i_masked_fc344_q_98_fifo(BITSELECT,839)
    assign bubble_select_redist22_i_masked_fc344_q_98_fifo_b = $unsigned(bubble_join_redist22_i_masked_fc344_q_98_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,8)@200
    assign out_exitcond722_pop16 = bubble_select_i_llvm_fpga_pop_i1_exitcond722_pop16_fc310_b;
    assign out_masked = bubble_select_redist22_i_masked_fc344_q_98_fifo_b;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_fc353_b;
    assign out_notcmp1223_pop17 = bubble_select_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc311_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop11_fc39_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,10)
    assign out_unnamed_fc38_fc3_avm_address = i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_address;
    assign out_unnamed_fc38_fc3_avm_enable = i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_enable;
    assign out_unnamed_fc38_fc3_avm_read = i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_read;
    assign out_unnamed_fc38_fc3_avm_write = i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_write;
    assign out_unnamed_fc38_fc3_avm_writedata = i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_writedata;
    assign out_unnamed_fc38_fc3_avm_byteenable = i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_byteenable;
    assign out_unnamed_fc38_fc3_avm_burstcount = i_llvm_fpga_mem_unnamed_fc38_fc346_out_unnamed_fc38_fc3_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,12)
    assign out_pn1_fc3_avm_address = i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_address;
    assign out_pn1_fc3_avm_enable = i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_enable;
    assign out_pn1_fc3_avm_read = i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_read;
    assign out_pn1_fc3_avm_write = i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_write;
    assign out_pn1_fc3_avm_writedata = i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_writedata;
    assign out_pn1_fc3_avm_byteenable = i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_byteenable;
    assign out_pn1_fc3_avm_burstcount = i_llvm_fpga_mem_pn1_fc348_out_pn1_fc3_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,13)
    assign out_memdep_fc3_avm_address = i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_address;
    assign out_memdep_fc3_avm_enable = i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_enable;
    assign out_memdep_fc3_avm_read = i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_read;
    assign out_memdep_fc3_avm_write = i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_write;
    assign out_memdep_fc3_avm_writedata = i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_writedata;
    assign out_memdep_fc3_avm_byteenable = i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_byteenable;
    assign out_memdep_fc3_avm_burstcount = i_llvm_fpga_mem_memdep_fc353_out_memdep_fc3_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,14)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_fc353_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,75)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc35_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_fc35_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc35_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_fc35_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,197)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_fc35_out_pipeline_valid_out;

    // sync_out(GPOUT,206)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
