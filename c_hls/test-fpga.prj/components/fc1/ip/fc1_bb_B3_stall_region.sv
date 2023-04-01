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

// SystemVerilog created from bb_fc1_B3_stall_region
// Created for function/kernel fc1
// SystemVerilog created on Sat Apr  1 13:10:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fc1_bb_B3_stall_region (
    input wire [63:0] in_unnamed_fc18_fc1_avm_readdata,
    input wire [0:0] in_unnamed_fc18_fc1_avm_writeack,
    input wire [0:0] in_unnamed_fc18_fc1_avm_waitrequest,
    input wire [0:0] in_unnamed_fc18_fc1_avm_readdatavalid,
    output wire [63:0] out_unnamed_fc17_fc1_avm_address,
    output wire [0:0] out_unnamed_fc17_fc1_avm_enable,
    output wire [0:0] out_unnamed_fc17_fc1_avm_read,
    output wire [0:0] out_unnamed_fc17_fc1_avm_write,
    output wire [63:0] out_unnamed_fc17_fc1_avm_writedata,
    output wire [7:0] out_unnamed_fc17_fc1_avm_byteenable,
    output wire [0:0] out_unnamed_fc17_fc1_avm_burstcount,
    output wire [0:0] out_exitcond722_pop16,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp1223_pop17,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_pn1_fc1_avm_readdata,
    input wire [0:0] in_pn1_fc1_avm_writeack,
    input wire [0:0] in_pn1_fc1_avm_waitrequest,
    input wire [0:0] in_pn1_fc1_avm_readdatavalid,
    output wire [63:0] out_unnamed_fc18_fc1_avm_address,
    output wire [0:0] out_unnamed_fc18_fc1_avm_enable,
    output wire [0:0] out_unnamed_fc18_fc1_avm_read,
    output wire [0:0] out_unnamed_fc18_fc1_avm_write,
    output wire [63:0] out_unnamed_fc18_fc1_avm_writedata,
    output wire [7:0] out_unnamed_fc18_fc1_avm_byteenable,
    output wire [0:0] out_unnamed_fc18_fc1_avm_burstcount,
    input wire [63:0] in_memdep_fc1_avm_readdata,
    input wire [0:0] in_memdep_fc1_avm_writeack,
    input wire [0:0] in_memdep_fc1_avm_waitrequest,
    input wire [0:0] in_memdep_fc1_avm_readdatavalid,
    output wire [63:0] out_pn1_fc1_avm_address,
    output wire [0:0] out_pn1_fc1_avm_enable,
    output wire [0:0] out_pn1_fc1_avm_read,
    output wire [0:0] out_pn1_fc1_avm_write,
    output wire [63:0] out_pn1_fc1_avm_writedata,
    output wire [7:0] out_pn1_fc1_avm_byteenable,
    output wire [0:0] out_pn1_fc1_avm_burstcount,
    output wire [63:0] out_memdep_fc1_avm_address,
    output wire [0:0] out_memdep_fc1_avm_enable,
    output wire [0:0] out_memdep_fc1_avm_read,
    output wire [0:0] out_memdep_fc1_avm_write,
    output wire [63:0] out_memdep_fc1_avm_writedata,
    output wire [7:0] out_memdep_fc1_avm_byteenable,
    output wire [0:0] out_memdep_fc1_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [63:0] in_unnamed_fc17_fc1_avm_readdata,
    input wire [0:0] in_unnamed_fc17_fc1_avm_writeack,
    input wire [0:0] in_unnamed_fc17_fc1_avm_waitrequest,
    input wire [0:0] in_unnamed_fc17_fc1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc15_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc15_exiting_stall_out,
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
    wire [9:0] bgTrunc_i_fpga_indvars_iv_next_fc123_sel_x_b;
    wire [31:0] bgTrunc_i_inc_fc120_sel_x_b;
    wire [31:0] c_i32_057_recast_x_q;
    wire [0:0] fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] fc1_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] fc1_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] fc1_B3_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] fc1_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] fc1_B3_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] i_arrayidx10_fc10_dupName_0_trunc_sel_x_b;
    wire [1:0] i_arrayidx10_fc10_c_i2_01_x_q;
    wire [63:0] i_arrayidx21_fc10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx6_fc10_dupName_2_trunc_sel_x_b;
    wire [63:0] i_arrayidx8_fc10_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_fc114_sel_x_b;
    wire [63:0] i_idxprom_fc127_sel_x_b;
    wire [0:0] i_last_initeration_fc132_sel_x_b;
    wire [31:0] i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_out_c0_exit41_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_out_o_valid;
    wire [9:0] c_i10_161_q;
    wire [9:0] c_i10_39858_q;
    wire [1:0] c_i2_155_q;
    wire [31:0] c_i32_159_q;
    wire [0:0] i_arrayidx10_arrayidx21_fc145_s;
    reg [63:0] i_arrayidx10_arrayidx21_fc145_q;
    wire [1:0] i_cleanups_shl_fc115_vt_join_q;
    wire [0:0] i_cleanups_shl_fc115_vt_select_1_b;
    wire [0:0] i_cmp4_fc117_qi;
    reg [0:0] i_cmp4_fc117_q;
    wire [0:0] i_first_cleanup_xor_fc130_q;
    wire [10:0] i_fpga_indvars_iv_next_fc123_a;
    wire [10:0] i_fpga_indvars_iv_next_fc123_b;
    logic [10:0] i_fpga_indvars_iv_next_fc123_o;
    wire [10:0] i_fpga_indvars_iv_next_fc123_q;
    wire [63:0] i_idxprom_fc127_vt_join_q;
    wire [31:0] i_idxprom_fc127_vt_select_31_b;
    wire [32:0] i_inc_fc120_a;
    wire [32:0] i_inc_fc120_b;
    logic [32:0] i_inc_fc120_o;
    wire [32:0] i_inc_fc120_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_fc153_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_fc153_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_fc153_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_fc153_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_pn1_fc148_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_pn1_fc148_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_pn1_fc148_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_address;
    wire [0:0] i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_read;
    wire [0:0] i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_write;
    wire [63:0] i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_fc17_fc142_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc17_fc142_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc17_fc142_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_fc18_fc146_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc18_fc146_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc18_fc146_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc15_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc15_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc15_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc15_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc15_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc15_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc15_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc15_out_valid_out;
    wire [9:0] i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop15_fc14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop15_fc14_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop15_fc14_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop15_fc14_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop14_fc16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop14_fc16_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop14_fc16_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop14_fc16_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_013_pop12_fc17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_013_pop12_fc17_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_pop_i32_j_013_pop12_fc17_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_013_pop12_fc17_out_valid_out;
    wire [15:0] i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond722_push16_fc124_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_exitcond722_push16_fc124_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_exitcond722_push16_fc124_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond722_push16_fc124_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fc141_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fc141_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fc141_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fc141_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push13_fc154_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push13_fc154_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push13_fc154_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push13_fc154_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1223_push17_fc125_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1223_push17_fc125_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1223_push17_fc125_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1223_push17_fc125_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fc136_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fc136_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fc136_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fc136_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push15_fc149_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push15_fc149_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push15_fc149_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push15_fc149_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push14_fc131_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push14_fc131_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push14_fc131_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push14_fc131_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_013_push12_fc134_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i32_j_013_push12_fc134_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i32_j_013_push12_fc134_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_013_push12_fc134_out_valid_out;
    wire [0:0] i_masked_fc144_qi;
    reg [0:0] i_masked_fc144_q;
    wire [0:0] i_memdep_phi2_or_fc129_q;
    wire [0:0] i_next_cleanups_fc147_s;
    reg [1:0] i_next_cleanups_fc147_q;
    wire [1:0] i_next_initerations_fc116_vt_join_q;
    wire [0:0] i_next_initerations_fc116_vt_select_0_b;
    wire [0:0] i_notcmp_fc135_q;
    wire [0:0] i_or_fc143_q;
    wire [35:0] i_arrayidx6_fc10_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx6_fc10_mult_x_sums_align_0_qint;
    wire [46:0] i_arrayidx6_fc10_mult_x_sums_align_2_q;
    wire [46:0] i_arrayidx6_fc10_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx6_fc10_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx6_fc10_mult_x_sums_align_3_qint;
    wire [0:0] leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc10_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc10_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid239_i_cleanups_shl_fc10_shift_x_q;
    wire [0:0] leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_s;
    reg [1:0] leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid245_i_next_initerations_fc10_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid247_i_next_initerations_fc10_shift_x_q;
    wire [0:0] rightShiftStage0_uid249_i_next_initerations_fc10_shift_x_s;
    reg [1:0] rightShiftStage0_uid249_i_next_initerations_fc10_shift_x_q;
    wire [0:0] i_exitcond_fc121_cmp_nsign_q;
    wire [0:0] lowRangeB_uid261_i_arrayidx6_fc10_mult_x_im0_in;
    wire [0:0] lowRangeB_uid261_i_arrayidx6_fc10_mult_x_im0_b;
    wire [16:0] highBBits_uid262_i_arrayidx6_fc10_mult_x_im0_b;
    wire [18:0] addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_q;
    wire [19:0] add_uid264_i_arrayidx6_fc10_mult_x_im0_q;
    wire [14:0] highBBits_uid267_i_arrayidx6_fc10_mult_x_im0_b;
    wire [20:0] a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0_a;
    wire [20:0] a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0_b;
    logic [20:0] a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0_o;
    wire [20:0] a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0_q;
    wire [5:0] sR_bottomExtension_uid272_i_arrayidx6_fc10_mult_x_im0_q;
    wire [0:0] lowRangeB_uid330_i_arrayidx6_fc10_mult_x_im3_in;
    wire [0:0] lowRangeB_uid330_i_arrayidx6_fc10_mult_x_im3_b;
    wire [16:0] highBBits_uid331_i_arrayidx6_fc10_mult_x_im3_b;
    wire [18:0] addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_q;
    wire [19:0] add_uid333_i_arrayidx6_fc10_mult_x_im3_q;
    wire [2:0] lowRangeB_uid335_i_arrayidx6_fc10_mult_x_im3_in;
    wire [2:0] lowRangeB_uid335_i_arrayidx6_fc10_mult_x_im3_b;
    wire [14:0] highBBits_uid336_i_arrayidx6_fc10_mult_x_im3_b;
    wire [20:0] a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3_a;
    wire [20:0] a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3_b;
    logic [20:0] a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3_o;
    wire [20:0] a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3_q;
    wire [23:0] a_subconst_25_uid338_i_arrayidx6_fc10_mult_x_im3_q;
    wire [22:0] sR_bottomRange_uid342_i_arrayidx6_fc10_mult_x_im3_in;
    wire [22:0] sR_bottomRange_uid342_i_arrayidx6_fc10_mult_x_im3_b;
    wire [28:0] sR_mergedSignalTM_uid343_i_arrayidx6_fc10_mult_x_im3_q;
    wire [0:0] lowRangeB_uid399_i_arrayidx6_fc10_mult_x_im6_in;
    wire [0:0] lowRangeB_uid399_i_arrayidx6_fc10_mult_x_im6_b;
    wire [16:0] highBBits_uid400_i_arrayidx6_fc10_mult_x_im6_b;
    wire [18:0] addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_q;
    wire [19:0] add_uid402_i_arrayidx6_fc10_mult_x_im6_q;
    wire [2:0] lowRangeB_uid404_i_arrayidx6_fc10_mult_x_im6_in;
    wire [2:0] lowRangeB_uid404_i_arrayidx6_fc10_mult_x_im6_b;
    wire [14:0] highBBits_uid405_i_arrayidx6_fc10_mult_x_im6_b;
    wire [20:0] a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6_a;
    wire [20:0] a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6_b;
    logic [20:0] a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6_o;
    wire [20:0] a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6_q;
    wire [23:0] a_subconst_25_uid407_i_arrayidx6_fc10_mult_x_im6_q;
    wire [22:0] sR_bottomRange_uid411_i_arrayidx6_fc10_mult_x_im6_in;
    wire [22:0] sR_bottomRange_uid411_i_arrayidx6_fc10_mult_x_im6_b;
    wire [28:0] sR_mergedSignalTM_uid412_i_arrayidx6_fc10_mult_x_im6_q;
    wire [0:0] lowRangeB_uid468_i_arrayidx6_fc10_mult_x_im9_in;
    wire [0:0] lowRangeB_uid468_i_arrayidx6_fc10_mult_x_im9_b;
    wire [8:0] highBBits_uid469_i_arrayidx6_fc10_mult_x_im9_b;
    wire [10:0] addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_q;
    wire [11:0] add_uid471_i_arrayidx6_fc10_mult_x_im9_q;
    wire [2:0] lowRangeB_uid473_i_arrayidx6_fc10_mult_x_im9_in;
    wire [2:0] lowRangeB_uid473_i_arrayidx6_fc10_mult_x_im9_b;
    wire [6:0] highBBits_uid474_i_arrayidx6_fc10_mult_x_im9_b;
    wire [12:0] a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9_a;
    wire [12:0] a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9_b;
    logic [12:0] a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9_o;
    wire [12:0] a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9_q;
    wire [15:0] a_subconst_25_uid476_i_arrayidx6_fc10_mult_x_im9_q;
    wire [14:0] sR_bottomRange_uid480_i_arrayidx6_fc10_mult_x_im9_in;
    wire [14:0] sR_bottomRange_uid480_i_arrayidx6_fc10_mult_x_im9_b;
    wire [20:0] sR_mergedSignalTM_uid481_i_arrayidx6_fc10_mult_x_im9_q;
    wire [52:0] i_arrayidx10_fc10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_fc10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_fc10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_fc10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_fc10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_fc10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_fc10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_fc10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_fc10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_fc10_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx10_fc10_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx21_fc10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx21_fc10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx21_fc10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx21_fc10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx21_fc10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx21_fc10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx21_fc10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx21_fc10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx21_fc10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx21_fc10_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx21_fc10_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx6_fc10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx6_fc10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx6_fc10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx6_fc10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx6_fc10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx6_fc10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx6_fc10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx6_fc10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx6_fc10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx6_fc10_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx8_fc10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx8_fc10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx8_fc10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx8_fc10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx8_fc10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx8_fc10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx8_fc10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx8_fc10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx8_fc10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx8_fc10_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx8_fc10_add_x_BitJoin_for_q_q;
    wire [10:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_UpperBits_for_a_q;
    wire [52:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [25:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [25:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [25:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [23:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [12:0] i_arrayidx10_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [17:0] i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel0_2_b;
    wire [51:0] i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [11:0] i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [12:0] i_arrayidx21_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [12:0] i_arrayidx6_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx6_fc10_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx6_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [12:0] i_arrayidx8_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [2:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [19:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b;
    wire [51:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [23:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [23:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [17:0] i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_e;
    wire [51:0] i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [22:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b;
    wire [12:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    wire [4:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [22:0] i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [45:0] join_for_coalesced_delay_2_q;
    wire [17:0] sel_for_coalesced_delay_2_b;
    wire [17:0] sel_for_coalesced_delay_2_c;
    wire [9:0] sel_for_coalesced_delay_2_d;
    wire [64:0] join_for_coalesced_delay_3_q;
    wire [63:0] sel_for_coalesced_delay_3_b;
    wire [0:0] sel_for_coalesced_delay_3_c;
    reg [22:0] redist0_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [12:0] redist1_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q;
    reg [11:0] redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [19:0] redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_q;
    reg [51:0] redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_q;
    reg [14:0] redist14_sR_bottomRange_uid480_i_arrayidx6_fc10_mult_x_im9_b_1_0_q;
    reg [22:0] redist15_sR_bottomRange_uid411_i_arrayidx6_fc10_mult_x_im6_b_1_0_q;
    reg [22:0] redist16_sR_bottomRange_uid342_i_arrayidx6_fc10_mult_x_im3_b_1_0_q;
    reg [14:0] redist17_highBBits_uid267_i_arrayidx6_fc10_mult_x_im0_b_1_0_q;
    reg [0:0] redist18_lowRangeB_uid261_i_arrayidx6_fc10_mult_x_im0_b_1_0_q;
    wire [0:0] redist19_i_masked_fc144_q_98_fifo_valid_in;
    wire redist19_i_masked_fc144_q_98_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_i_masked_fc144_q_98_fifo_stall_in;
    wire redist19_i_masked_fc144_q_98_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist19_i_masked_fc144_q_98_fifo_data_in;
    wire [0:0] redist19_i_masked_fc144_q_98_fifo_valid_out;
    wire redist19_i_masked_fc144_q_98_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_i_masked_fc144_q_98_fifo_stall_out;
    wire redist19_i_masked_fc144_q_98_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist19_i_masked_fc144_q_98_fifo_data_out;
    reg [31:0] redist20_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_2_0_q;
    reg [31:0] redist20_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_2_1_q;
    reg [31:0] redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_0_q;
    reg [31:0] redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_1_q;
    wire [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_valid_in;
    wire redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_stall_in;
    wire redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_data_in;
    wire [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_valid_out;
    wire redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_stall_out;
    wire redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_data_out;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_q;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_q;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_valid_in;
    wire redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_stall_in;
    wire redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_data_in;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_valid_out;
    wire redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_stall_out;
    wire redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_data_out;
    reg [0:0] redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_q;
    reg [0:0] redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_q;
    reg [0:0] redist27_i_cmp4_fc117_q_2_0_q;
    wire [0:0] redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_in;
    wire redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_in;
    wire redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_data_in;
    wire [0:0] redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_out;
    wire redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_out;
    wire redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_data_out;
    reg [0:0] redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q;
    reg [0:0] redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q;
    reg [0:0] redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q;
    reg [0:0] redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q;
    reg [0:0] redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q;
    reg [0:0] redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q;
    wire [0:0] redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in;
    wire redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in;
    wire redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_in;
    wire [0:0] redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out;
    wire redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out;
    wire redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_out;
    reg [0:0] redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q;
    reg [0:0] redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q;
    wire [0:0] redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_valid_in;
    wire redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_stall_in;
    wire redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_data_in;
    wire [0:0] redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_valid_out;
    wire redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_stall_out;
    wire redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_data_out;
    reg [1:0] coalesced_delay_0_0_q;
    reg [1:0] coalesced_delay_0_1_q;
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
    wire [35:0] bubble_join_fc1_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_fc1_B3_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_fc1_B3_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_fc1_B3_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_fc1_B3_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_fc1_B3_merge_reg_aunroll_x_f;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_fc153_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_fc153_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_pn1_fc148_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_pn1_fc148_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_fc17_fc142_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_fc17_fc142_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_fc18_fc146_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_fc18_fc146_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_fc15_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_fc15_b;
    wire [9:0] bubble_join_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_q;
    wire [9:0] bubble_select_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations_pop14_fc16_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations_pop14_fc16_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_013_pop12_fc17_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_013_pop12_fc17_b;
    wire [35:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_join_redist19_i_masked_fc144_q_98_fifo_q;
    wire [0:0] bubble_select_redist19_i_masked_fc144_q_98_fifo_b;
    wire [0:0] bubble_join_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_q;
    wire [0:0] bubble_select_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_b;
    wire [0:0] bubble_join_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_q;
    wire [0:0] bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_b;
    wire [0:0] bubble_join_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_q;
    wire [0:0] bubble_select_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_b;
    wire [0:0] bubble_join_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_q;
    wire [0:0] bubble_select_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b;
    wire [31:0] bubble_join_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_q;
    wire [31:0] bubble_select_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_3_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_3_fifo_b;
    wire [0:0] SE_bgTrunc_i_inc_fc120_sel_x_wireValid;
    wire [0:0] SE_bgTrunc_i_inc_fc120_sel_x_and0;
    wire [0:0] SE_bgTrunc_i_inc_fc120_sel_x_backStall;
    wire [0:0] SE_bgTrunc_i_inc_fc120_sel_x_V0;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_fc1_B3_merge_reg_aunroll_x_V6;
    reg [0:0] SE_i_cmp4_fc117_R_v_0;
    wire [0:0] SE_i_cmp4_fc117_v_s_0;
    wire [0:0] SE_i_cmp4_fc117_s_tv_0;
    wire [0:0] SE_i_cmp4_fc117_backEN;
    wire [0:0] SE_i_cmp4_fc117_backStall;
    wire [0:0] SE_i_cmp4_fc117_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_fc153_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_fc15_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_V2;
    wire [0:0] SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond722_push16_fc124_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond722_push16_fc124_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_fc141_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_fc141_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_fc136_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_fc136_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push15_fc149_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push15_fc149_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push14_fc131_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push14_fc131_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_013_push12_fc134_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_013_push12_fc134_backStall;
    reg [0:0] SE_i_masked_fc144_R_v_0;
    wire [0:0] SE_i_masked_fc144_v_s_0;
    wire [0:0] SE_i_masked_fc144_s_tv_0;
    wire [0:0] SE_i_masked_fc144_backEN;
    wire [0:0] SE_i_masked_fc144_backStall;
    wire [0:0] SE_i_masked_fc144_V0;
    wire [0:0] SE_i_next_initerations_fc116_vt_select_0_wireValid;
    wire [0:0] SE_i_next_initerations_fc116_vt_select_0_wireStall;
    wire [0:0] SE_i_next_initerations_fc116_vt_select_0_StallValid;
    wire [0:0] SE_i_next_initerations_fc116_vt_select_0_toReg0;
    reg [0:0] SE_i_next_initerations_fc116_vt_select_0_fromReg0;
    wire [0:0] SE_i_next_initerations_fc116_vt_select_0_consumed0;
    wire [0:0] SE_i_next_initerations_fc116_vt_select_0_toReg1;
    reg [0:0] SE_i_next_initerations_fc116_vt_select_0_fromReg1;
    wire [0:0] SE_i_next_initerations_fc116_vt_select_0_consumed1;
    wire [0:0] SE_i_next_initerations_fc116_vt_select_0_or0;
    wire [0:0] SE_i_next_initerations_fc116_vt_select_0_backStall;
    wire [0:0] SE_i_next_initerations_fc116_vt_select_0_V0;
    wire [0:0] SE_i_next_initerations_fc116_vt_select_0_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_V0;
    reg [0:0] SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_R_v_0;
    wire [0:0] SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_v_s_0;
    wire [0:0] SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_s_tv_0;
    wire [0:0] SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backEN;
    wire [0:0] SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backStall;
    wire [0:0] SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_V0;
    reg [0:0] SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_fc10_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx21_fc10_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_wireStall;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_StallValid;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_toReg0;
    reg [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_fromReg0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_consumed0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_toReg1;
    reg [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_fromReg1;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_consumed1;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_or0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_V0;
    wire [0:0] SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_V1;
    reg [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_and2;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx6_fc10_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx6_fc10_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx8_fc10_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_and2;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_or0;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_or1;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_V1;
    wire [0:0] SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_V2;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel0_2_V0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel0_2_V1;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_wireStall;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_StallValid;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_toReg0;
    reg [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_toReg1;
    reg [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_consumed1;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_or0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_V1;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_V1;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_V2;
    wire [0:0] SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_V3;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireStall;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_StallValid;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg0;
    reg [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg1;
    reg [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed1;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_or0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V1;
    wire [0:0] SE_join_for_coalesced_delay_3_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_3_backStall;
    wire [0:0] SE_join_for_coalesced_delay_3_V0;
    reg [0:0] SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0;
    wire [0:0] SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_v_s_0;
    wire [0:0] SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN;
    wire [0:0] SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backStall;
    wire [0:0] SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_V0;
    reg [0:0] SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_V0;
    wire [0:0] SE_in_redist19_i_masked_fc144_q_98_fifo_wireValid;
    wire [0:0] SE_in_redist19_i_masked_fc144_q_98_fifo_backStall;
    wire [0:0] SE_in_redist19_i_masked_fc144_q_98_fifo_V0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_wireValid;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_wireStall;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_StallValid;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_toReg0;
    reg [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_fromReg0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_consumed0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_toReg1;
    reg [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_fromReg1;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_consumed1;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_or0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_backStall;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_V0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_V1;
    reg [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_V0;
    reg [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_1;
    reg [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_2;
    reg [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_3;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_2;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_3;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_or0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_or1;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_or2;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V1;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V2;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V3;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_wireValid;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_wireStall;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_StallValid;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_toReg0;
    reg [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_fromReg0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_consumed0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_toReg1;
    reg [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_fromReg1;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_consumed1;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_or0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_backStall;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_V0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_V1;
    reg [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_R_v_0;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_v_s_0;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_s_tv_0;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_backEN;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_backStall;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_V0;
    reg [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_0;
    reg [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_1;
    reg [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_2;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_v_s_0;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_s_tv_0;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_s_tv_1;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_s_tv_2;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backEN;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_or0;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_or1;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backStall;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_V0;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_V1;
    wire [0:0] SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_V2;
    reg [0:0] SE_redist27_i_cmp4_fc117_q_2_0_R_v_0;
    wire [0:0] SE_redist27_i_cmp4_fc117_q_2_0_v_s_0;
    wire [0:0] SE_redist27_i_cmp4_fc117_q_2_0_s_tv_0;
    wire [0:0] SE_redist27_i_cmp4_fc117_q_2_0_backEN;
    wire [0:0] SE_redist27_i_cmp4_fc117_q_2_0_backStall;
    wire [0:0] SE_redist27_i_cmp4_fc117_q_2_0_V0;
    wire [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid;
    wire [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireStall;
    wire [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_StallValid;
    wire [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg0;
    reg [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg0;
    wire [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed0;
    wire [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg1;
    reg [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg1;
    wire [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed1;
    wire [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_or0;
    wire [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_backStall;
    wire [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V0;
    wire [0:0] SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V1;
    reg [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_v_s_0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_s_tv_0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V0;
    reg [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_v_s_0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_s_tv_0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V0;
    reg [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_v_s_0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_s_tv_0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V0;
    reg [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0;
    reg [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1;
    reg [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_1;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_2;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_or0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_or1;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V0;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V1;
    wire [0:0] SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V2;
    reg [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_v_s_0;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_s_tv_0;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V0;
    reg [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0;
    reg [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1;
    reg [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2;
    reg [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_0;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_1;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_2;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_3;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or0;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or1;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or2;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V0;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V1;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V2;
    wire [0:0] SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V3;
    wire [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid;
    wire [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireStall;
    wire [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_StallValid;
    wire [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg0;
    reg [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0;
    wire [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed0;
    wire [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg1;
    reg [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1;
    wire [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed1;
    wire [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_or0;
    wire [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_backStall;
    wire [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V0;
    wire [0:0] SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V1;
    reg [0:0] SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0;
    wire [0:0] SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_v_s_0;
    wire [0:0] SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_s_tv_0;
    wire [0:0] SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN;
    wire [0:0] SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall;
    wire [0:0] SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V0;
    reg [0:0] SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0;
    wire [0:0] SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_v_s_0;
    wire [0:0] SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_s_tv_0;
    wire [0:0] SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN;
    wire [0:0] SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall;
    wire [0:0] SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V0;
    wire [0:0] SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_wireValid;
    wire [0:0] SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_backStall;
    wire [0:0] SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_1;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_or0;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    wire [0:0] SE_coalesced_delay_0_1_V1;
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
    wire [0:0] SE_out_coalesced_delay_3_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_3_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_3_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_3_fifo_V0;
    wire [0:0] SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_V0;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_coalesced_delay_0_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_0_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_0_V;
    wire [1:0] SR_SE_coalesced_delay_0_0_D0;
    wire [0:0] SR_SE_coalesced_delay_0_1_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_1_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_1_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_1_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_1_V;
    wire [1:0] SR_SE_coalesced_delay_0_1_D0;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid;
    reg [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid;
    reg [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_data0;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_D0;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid;
    reg [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid;
    reg [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_data0;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_D0;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid;
    reg [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid;
    reg [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_data0;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_D0;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid;
    reg [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid;
    reg [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_data0;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V;
    wire [0:0] SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_D0;
    wire [0:0] SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid;
    reg [0:0] SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid;
    reg [0:0] SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_data0;
    wire [0:0] SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall;
    wire [0:0] SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V;
    wire [0:0] SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_D0;
    wire [0:0] SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid;
    reg [0:0] SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid;
    reg [0:0] SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_data0;
    wire [0:0] SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall;
    wire [0:0] SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V;
    wire [0:0] SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_D0;
    wire [0:0] SR_SE_i_masked_fc144_i_valid;
    reg [0:0] SR_SE_i_masked_fc144_r_valid;
    wire [0:0] SR_SE_i_masked_fc144_and0;
    reg [0:0] SR_SE_i_masked_fc144_r_data0;
    reg [0:0] SR_SE_i_masked_fc144_r_data1;
    wire [0:0] SR_SE_i_masked_fc144_backStall;
    wire [0:0] SR_SE_i_masked_fc144_V;
    wire [0:0] SR_SE_i_masked_fc144_D0;
    wire [0:0] SR_SE_i_masked_fc144_D1;
    wire [0:0] SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid;
    reg [0:0] SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid;
    reg [0:0] SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_data0;
    wire [0:0] SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall;
    wire [0:0] SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V;
    wire [0:0] SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_D0;
    wire [0:0] SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid;
    reg [0:0] SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid;
    reg [0:0] SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_data0;
    wire [0:0] SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall;
    wire [0:0] SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V;
    wire [0:0] SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_D0;
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
    wire [0:0] SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_i_valid;
    reg [0:0] SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_valid;
    wire [0:0] SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_and0;
    reg [31:0] SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_data0;
    reg [0:0] SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_data1;
    wire [0:0] SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_backStall;
    wire [0:0] SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_V;
    wire [31:0] SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_D0;
    wire [0:0] SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_D1;
    wire [0:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid;
    reg [51:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data1;
    reg [22:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data2;
    reg [12:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data3;
    reg [31:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data4;
    wire [0:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D1;
    wire [22:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D2;
    wire [12:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D3;
    wire [31:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_valid;
    reg [23:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data0;
    reg [23:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data2;
    reg [31:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data3;
    wire [0:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_V;
    wire [23:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_D0;
    wire [23:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_D2;
    wire [31:0] SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_D3;
    wire [0:0] SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_join_for_coalesced_delay_3_i_valid;
    reg [0:0] SR_SE_join_for_coalesced_delay_3_r_valid;
    wire [0:0] SR_SE_join_for_coalesced_delay_3_and0;
    reg [64:0] SR_SE_join_for_coalesced_delay_3_r_data0;
    wire [0:0] SR_SE_join_for_coalesced_delay_3_backStall;
    wire [0:0] SR_SE_join_for_coalesced_delay_3_V;
    wire [64:0] SR_SE_join_for_coalesced_delay_3_D0;
    wire [0:0] SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist27_i_cmp4_fc117_q_2_0_i_valid;
    reg [0:0] SR_SE_redist27_i_cmp4_fc117_q_2_0_r_valid;
    reg [0:0] SR_SE_redist27_i_cmp4_fc117_q_2_0_r_data0;
    wire [0:0] SR_SE_redist27_i_cmp4_fc117_q_2_0_backStall;
    wire [0:0] SR_SE_redist27_i_cmp4_fc117_q_2_0_V;
    wire [0:0] SR_SE_redist27_i_cmp4_fc117_q_2_0_D0;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and0;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and1;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and2;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and3;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and4;
    reg [63:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_data0;
    reg [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_data2;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_backStall;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_V;
    wire [63:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_D0;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_D1;
    wire [0:0] SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_D2;
    wire [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_i_valid;
    reg [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_valid;
    reg [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_data0;
    wire [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_backStall;
    wire [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_V;
    wire [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_D0;
    wire [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_i_valid;
    reg [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_valid;
    reg [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_data0;
    wire [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backStall;
    wire [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V;
    wire [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_and0;
    reg [9:0] SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_V;
    wire [9:0] SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_D1;
    wire [0:0] SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_i_valid;
    reg [0:0] SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_valid;
    reg [0:0] SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_data0;
    wire [0:0] SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_backStall;
    wire [0:0] SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_V;
    wire [0:0] SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_D0;
    wire [0:0] SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_i_valid;
    reg [0:0] SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_valid;
    reg [0:0] SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_data0;
    wire [0:0] SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backStall;
    wire [0:0] SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_V;
    wire [0:0] SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_D1;
    wire [0:0] SR_SE_i_next_initerations_fc116_vt_select_0_i_valid;
    reg [0:0] SR_SE_i_next_initerations_fc116_vt_select_0_r_valid;
    wire [0:0] SR_SE_i_next_initerations_fc116_vt_select_0_and0;
    reg [0:0] SR_SE_i_next_initerations_fc116_vt_select_0_r_data0;
    reg [0:0] SR_SE_i_next_initerations_fc116_vt_select_0_r_data1;
    reg [0:0] SR_SE_i_next_initerations_fc116_vt_select_0_r_data2;
    reg [1:0] SR_SE_i_next_initerations_fc116_vt_select_0_r_data3;
    wire [0:0] SR_SE_i_next_initerations_fc116_vt_select_0_backStall;
    wire [0:0] SR_SE_i_next_initerations_fc116_vt_select_0_V;
    wire [0:0] SR_SE_i_next_initerations_fc116_vt_select_0_D0;
    wire [0:0] SR_SE_i_next_initerations_fc116_vt_select_0_D1;
    wire [0:0] SR_SE_i_next_initerations_fc116_vt_select_0_D2;
    wire [1:0] SR_SE_i_next_initerations_fc116_vt_select_0_D3;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_D1;
    wire [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_i_valid;
    reg [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_valid;
    wire [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_and0;
    wire [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_and1;
    reg [1:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_data0;
    reg [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_data1;
    wire [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_backStall;
    wire [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_V;
    wire [1:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_D0;
    wire [0:0] SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_and0;
    reg [31:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_V;
    wire [31:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_D1;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i32_057_recast_x(CONSTANT,5)
    assign c_i32_057_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel0_2(BITSELECT,577)
    assign i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel0_2_b = $unsigned(c_i32_057_recast_x_q[17:0]);

    // bubble_join_i_llvm_fpga_pipeline_keep_going_fc15(BITJOIN,780)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_fc15_q = i_llvm_fpga_pipeline_keep_going_fc15_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_fc15(BITSELECT,781)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_fc15_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_fc15_q[0:0]);

    // redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0(REG,722)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_q <= $unsigned(SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_D0);
        end
    end

    // redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1(REG,723)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_q <= $unsigned(SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_D0);
        end
    end

    // bubble_join_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo(BITJOIN,825)
    assign bubble_join_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_q = redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_data_out;

    // bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo(BITSELECT,826)
    assign bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_b = $unsigned(bubble_join_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_q[0:0]);

    // redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0(REG,725)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_backEN == 1'b1)
        begin
            redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_q <= $unsigned(SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_D0);
        end
    end

    // redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1(REG,726)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backEN == 1'b1)
        begin
            redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_q <= $unsigned(SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_D0);
        end
    end

    // SE_i_arrayidx10_fc10_add_x_BitJoin_for_q(STALLENABLE,979)
    // Valid signal propagation
    assign SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_V0 = SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_pn1_fc148_out_o_stall | ~ (SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_wireValid = SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_V;

    // i_llvm_fpga_mem_pn1_fc148(BLACKBOX,100)@102
    // in in_i_stall@20000000
    // out out_o_readdata@134
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_pn1_fc1_avm_address@20000000
    // out out_pn1_fc1_avm_burstcount@20000000
    // out out_pn1_fc1_avm_byteenable@20000000
    // out out_pn1_fc1_avm_enable@20000000
    // out out_pn1_fc1_avm_read@20000000
    // out out_pn1_fc1_avm_write@20000000
    // out out_pn1_fc1_avm_writedata@20000000
    fc1_i_llvm_fpga_mem_pn1_0 thei_llvm_fpga_mem_pn1_fc148 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_D0),
        .in_i_dependence(SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_D1),
        .in_i_predicate(SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_backStall),
        .in_i_valid(SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_V0),
        .in_pn1_fc1_avm_readdata(in_pn1_fc1_avm_readdata),
        .in_pn1_fc1_avm_readdatavalid(in_pn1_fc1_avm_readdatavalid),
        .in_pn1_fc1_avm_waitrequest(in_pn1_fc1_avm_waitrequest),
        .in_pn1_fc1_avm_writeack(in_pn1_fc1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_pn1_fc148_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_pn1_fc148_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_pn1_fc148_out_o_valid),
        .out_pn1_fc1_avm_address(i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_address),
        .out_pn1_fc1_avm_burstcount(i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_burstcount),
        .out_pn1_fc1_avm_byteenable(i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_byteenable),
        .out_pn1_fc1_avm_enable(i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_enable),
        .out_pn1_fc1_avm_read(i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_read),
        .out_pn1_fc1_avm_write(i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_write),
        .out_pn1_fc1_avm_writedata(i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_pn1_fc148(BITJOIN,771)
    assign bubble_join_i_llvm_fpga_mem_pn1_fc148_q = i_llvm_fpga_mem_pn1_fc148_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_pn1_fc148(BITSELECT,772)
    assign bubble_select_i_llvm_fpga_mem_pn1_fc148_b = $unsigned(bubble_join_i_llvm_fpga_mem_pn1_fc148_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_fc17_fc142(BITJOIN,774)
    assign bubble_join_i_llvm_fpga_mem_unnamed_fc17_fc142_q = i_llvm_fpga_mem_unnamed_fc17_fc142_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_fc17_fc142(BITSELECT,775)
    assign bubble_select_i_llvm_fpga_mem_unnamed_fc17_fc142_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_fc17_fc142_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_fc18_fc146(BITJOIN,777)
    assign bubble_join_i_llvm_fpga_mem_unnamed_fc18_fc146_q = i_llvm_fpga_mem_unnamed_fc18_fc146_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_fc18_fc146(BITSELECT,778)
    assign bubble_select_i_llvm_fpga_mem_unnamed_fc18_fc146_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_fc18_fc146_q[31:0]);

    // i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x(BLACKBOX,62)@134
    // in in_i_stall@20000000
    // out out_c0_exit41_0_tpl@169
    // out out_c0_exit41_1_tpl@169
    // out out_o_stall@20000000
    // out out_o_valid@169
    fc1_i_sfc_s_c0_in_for_body3_s_c0_enter386_fc151 thei_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x (
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_fc18_fc146_b),
        .in_c0_eni3_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_fc17_fc142_b),
        .in_c0_eni3_3_tpl(bubble_select_i_llvm_fpga_mem_pn1_fc148_b),
        .in_i_stall(SE_out_coalesced_delay_3_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_V0),
        .out_c0_exit41_0_tpl(),
        .out_c0_exit41_1_tpl(i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_out_c0_exit41_1_tpl),
        .out_o_stall(i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x(BITJOIN,752)
    assign bubble_join_i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_q = i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_out_c0_exit41_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x(BITSELECT,753)
    assign bubble_select_i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_q[31:0]);

    // SE_i_arrayidx21_fc10_add_x_p2_of_2(STALLENABLE,981)
    // Valid signal propagation
    assign SE_i_arrayidx21_fc10_add_x_p2_of_2_V0 = SE_i_arrayidx21_fc10_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx21_fc10_add_x_p2_of_2_s_tv_0 = SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_backStall & SE_i_arrayidx21_fc10_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx21_fc10_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx21_fc10_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx21_fc10_add_x_p2_of_2_v_s_0 = SE_i_arrayidx21_fc10_add_x_p2_of_2_backEN & SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx21_fc10_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx21_fc10_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx21_fc10_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx21_fc10_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx21_fc10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx21_fc10_add_x_p2_of_2_R_v_0 & SE_i_arrayidx21_fc10_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx21_fc10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx21_fc10_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2(ADD,568)@99 + 1
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_D2;
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_D1}, i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_o <= 26'b0;
        end
        else if (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_o[24:1];

    // i_arrayidx6_fc10_add_x_BitSelect_for_b_tessel1_0(BITSELECT,613)@100
    assign i_arrayidx6_fc10_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx6_fc10_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,615)@100
    assign i_arrayidx6_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx6_fc10_add_x_BitSelect_for_b_tessel1_0_b};

    // bubble_join_fc1_B3_merge_reg_aunroll_x(BITJOIN,745)
    assign bubble_join_fc1_B3_merge_reg_aunroll_x_q = {fc1_B3_merge_reg_aunroll_x_out_data_out_4_tpl, fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl, fc1_B3_merge_reg_aunroll_x_out_data_out_2_tpl, fc1_B3_merge_reg_aunroll_x_out_data_out_1_tpl, fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_fc1_B3_merge_reg_aunroll_x(BITSELECT,746)
    assign bubble_select_fc1_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_fc1_B3_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_fc1_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_fc1_B3_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_fc1_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_fc1_B3_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_fc1_B3_merge_reg_aunroll_x_e = $unsigned(bubble_join_fc1_B3_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_fc1_B3_merge_reg_aunroll_x_f = $unsigned(bubble_join_fc1_B3_merge_reg_aunroll_x_q[35:35]);

    // join_for_coalesced_delay_1(BITJOIN,692)
    assign join_for_coalesced_delay_1_q = {bubble_select_fc1_B3_merge_reg_aunroll_x_d, bubble_select_fc1_B3_merge_reg_aunroll_x_c};

    // coalesced_delay_1_fifo(STALLFIFO,741)
    assign coalesced_delay_1_fifo_valid_in = SE_out_fc1_B3_merge_reg_aunroll_x_V6;
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

    // coalesced_delay_0_0(REG,739)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(SR_SE_coalesced_delay_0_0_D0);
        end
    end

    // SE_coalesced_delay_0_0(STALLENABLE,1072)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SR_SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SR_SE_coalesced_delay_0_0_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_backEN);
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

    // SR_SE_coalesced_delay_0_1(STALLREG,1225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_1_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_1_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_1_r_valid <= SE_coalesced_delay_0_1_backStall & (SR_SE_coalesced_delay_0_1_r_valid | SR_SE_coalesced_delay_0_1_i_valid);

            if (SR_SE_coalesced_delay_0_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_1_r_data0 <= $unsigned(coalesced_delay_0_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_1_i_valid = SE_coalesced_delay_0_0_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_1_backStall = SR_SE_coalesced_delay_0_1_r_valid | ~ (SR_SE_coalesced_delay_0_1_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_1_V = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_valid : SR_SE_coalesced_delay_0_1_i_valid;

    assign SR_SE_coalesced_delay_0_1_D0 = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_data0 : coalesced_delay_0_0_q;

    // coalesced_delay_0_1(REG,740)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(SR_SE_coalesced_delay_0_1_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,690)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_1_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_1_q[1:1]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113(BITJOIN,792)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_q = i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113(BITSELECT,793)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_q[0:0]);

    // redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo(STALLFIFO,721)
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_V0;
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_stall_in = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_backStall;
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_b;
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_valid_in_bitsignaltemp = redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_valid_in[0];
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_stall_in_bitsignaltemp = redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_stall_in[0];
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_valid_out[0] = redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_valid_out_bitsignaltemp;
    assign redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_stall_out[0] = redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo (
        .valid_in(redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_valid_in_bitsignaltemp),
        .stall_in(redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_b),
        .valid_out(redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_valid_out_bitsignaltemp),
        .stall_out(redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_stall_out_bitsignaltemp),
        .data_out(redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113(STALLENABLE,887)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_backStall = redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_wireValid = i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128(STALLENABLE,906)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_backStall = i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_wireValid = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_V;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128(STALLENABLE,907)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_wireValid = i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128(BLACKBOX,116)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    fc1_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_D0),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_feedback_stall_out_19),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113(BLACKBOX,106)@3
    // in in_stall_in@20000000
    // out out_data_out@4
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@4
    fc1_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113 (
        .in_data_in(sel_for_coalesced_delay_0_c),
        .in_dir(sel_for_coalesced_delay_0_b),
        .in_feedback_in_19(i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_backStall),
        .in_valid_in(SE_coalesced_delay_0_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_1(STALLENABLE,1073)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    assign SE_coalesced_delay_0_1_V1 = SE_coalesced_delay_0_1_R_v_1;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_stall_out & SE_coalesced_delay_0_1_R_v_0;
    assign SE_coalesced_delay_0_1_s_tv_1 = redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_out & SE_coalesced_delay_0_1_R_v_1;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_or0 = SE_coalesced_delay_0_1_s_tv_0;
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_1 | SE_coalesced_delay_0_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SR_SE_coalesced_delay_0_1_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_1 <= SE_coalesced_delay_0_1_R_v_1 & SE_coalesced_delay_0_1_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_1 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo(STALLFIFO,728)
    assign redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_in = SE_coalesced_delay_0_1_V1;
    assign redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_in = SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_backStall;
    assign redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_data_in = sel_for_coalesced_delay_0_b;
    assign redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_in_bitsignaltemp = redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_in[0];
    assign redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_in_bitsignaltemp = redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_in[0];
    assign redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_out[0] = redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_out_bitsignaltemp;
    assign redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_out[0] = redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(93),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo (
        .valid_in(redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_in_bitsignaltemp),
        .data_in(sel_for_coalesced_delay_0_b),
        .valid_out(redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo(BITJOIN,828)
    assign bubble_join_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_q = redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_data_out;

    // bubble_select_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo(BITSELECT,829)
    assign bubble_select_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_b = $unsigned(bubble_join_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_q[0:0]);

    // bubble_join_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo(BITJOIN,834)
    assign bubble_join_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_q = redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_data_out;

    // bubble_select_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo(BITSELECT,835)
    assign bubble_select_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_b = $unsigned(bubble_join_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_q[31:0]);

    // redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0(REG,729)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN == 1'b1)
        begin
            redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q <= $unsigned(SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_D0);
        end
    end

    // redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1(REG,730)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN == 1'b1)
        begin
            redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q <= $unsigned(SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_D0);
        end
    end

    // SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2(STALLENABLE,1062)
    // Valid signal propagation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V0 = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0;
    // Stall signal propagation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_s_tv_0 = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall & SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0;
    // Backward Enable generation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN = ~ (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_v_s_0 = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN & SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V;
    // Backward Stall generation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall = ~ (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN == 1'b0)
            begin
                SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0 <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0 & SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_s_tv_0;
            end
            else
            begin
                SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_R_v_0 <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_v_s_0;
            end

        end
    end

    // SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2(STALLREG,1228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid <= 1'b0;
            SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall & (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid | SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid);

            if (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_data0 <= $unsigned(redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V0;
    // Stall signal propagation
    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid | ~ (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid);

    // Valid
    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid == 1'b1 ? SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid : SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_i_valid;

    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_D0 = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_valid == 1'b1 ? SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_r_data0 : redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_q;

    // SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1(STALLENABLE,1061)
    // Valid signal propagation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V0 = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0;
    // Stall signal propagation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_s_tv_0 = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backStall & SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0;
    // Backward Enable generation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN = ~ (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_v_s_0 = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN & SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V;
    // Backward Stall generation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall = ~ (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backEN == 1'b0)
            begin
                SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0 <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0 & SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_s_tv_0;
            end
            else
            begin
                SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_R_v_0 <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_v_s_0;
            end

        end
    end

    // SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1(STALLREG,1227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid <= 1'b0;
            SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall & (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid | SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid);

            if (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_data0 <= $unsigned(redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V0;
    // Stall signal propagation
    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid | ~ (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid);

    // Valid
    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_V = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid == 1'b1 ? SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid : SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_i_valid;

    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_D0 = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_valid == 1'b1 ? SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_r_data0 : redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_q;

    // SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0(STALLENABLE,1060)
    // Valid signal propagation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V0 = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0;
    // Stall signal propagation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_s_tv_0 = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_1_backStall & SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0;
    // Backward Enable generation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN = ~ (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_v_s_0 = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN & SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V;
    // Backward Stall generation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall = ~ (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backEN == 1'b0)
            begin
                SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0 <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0 & SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_s_tv_0;
            end
            else
            begin
                SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_R_v_0 <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_v_s_0;
            end

        end
    end

    // SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0(STALLREG,1226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid <= 1'b0;
            SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall & (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid | SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid);

            if (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_data0 <= $unsigned(bubble_select_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid = SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid | ~ (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid);

    // Valid
    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_V = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid == 1'b1 ? SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid : SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_i_valid;

    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_D0 = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_valid == 1'b1 ? SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_r_data0 : bubble_select_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_b;

    // SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo(STALLENABLE,1059)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg0 <= '0;
            SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg0 <= SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg0;
            // Successor 1
            SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg1 <= SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed0 = (~ (SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_backStall) & SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid) | SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg0;
    assign SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed1 = (~ (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_0_backStall) & SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid) | SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg1;
    // Consuming
    assign SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_StallValid = SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_backStall & SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid;
    assign SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg0 = SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_StallValid & SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed0;
    assign SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg1 = SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_StallValid & SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_or0 = SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed0;
    assign SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireStall = ~ (SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed1 & SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_or0);
    assign SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_backStall = SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V0 = SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid & ~ (SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg0);
    assign SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V1 = SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid & ~ (SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid = redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_out;

    // bubble_join_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112(BITJOIN,809)
    assign bubble_join_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_q = i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112(BITSELECT,810)
    assign bubble_select_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_q[31:0]);

    // redist20_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_2_0(REG,717)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backEN == 1'b1)
        begin
            redist20_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_2_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_b);
        end
    end

    // redist20_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_2_1(REG,718)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist20_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_2_1_q <= $unsigned(redist20_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_2_0_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_idxprom_fc127_sel_x(BITSELECT,56)@96
    assign i_idxprom_fc127_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_b[31:0]};

    // i_idxprom_fc127_vt_select_31(BITSELECT,92)@96
    assign i_idxprom_fc127_vt_select_31_b = i_idxprom_fc127_sel_x_b[31:0];

    // i_idxprom_fc127_vt_join(BITJOIN,91)@96
    assign i_idxprom_fc127_vt_join_q = {c_i32_057_recast_x_q, i_idxprom_fc127_vt_select_31_b};

    // i_arrayidx6_fc10_mult_x_bs1_merged_bit_select(BITSELECT,642)@96
    assign i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_b = i_idxprom_fc127_vt_join_q[17:0];
    assign i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_c = i_idxprom_fc127_vt_join_q[35:18];
    assign i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_d = i_idxprom_fc127_vt_join_q[53:36];
    assign i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_e = i_idxprom_fc127_vt_join_q[63:54];

    // join_for_coalesced_delay_2(BITJOIN,695)
    assign join_for_coalesced_delay_2_q = {i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_e, i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_d, i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_c};

    // coalesced_delay_2_0(REG,742)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_0_q <= $unsigned(46'b0000000000000000000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backEN == 1'b1)
        begin
            coalesced_delay_2_0_q <= $unsigned(join_for_coalesced_delay_2_q);
        end
    end

    // sel_for_coalesced_delay_2(BITSELECT,696)
    assign sel_for_coalesced_delay_2_b = $unsigned(coalesced_delay_2_0_q[17:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(coalesced_delay_2_0_q[35:18]);
    assign sel_for_coalesced_delay_2_d = $unsigned(coalesced_delay_2_0_q[45:36]);

    // highBBits_uid405_i_arrayidx6_fc10_mult_x_im6(BITSELECT,404)@97
    assign highBBits_uid405_i_arrayidx6_fc10_mult_x_im6_b = sel_for_coalesced_delay_2_c[17:3];

    // highBBits_uid400_i_arrayidx6_fc10_mult_x_im6(BITSELECT,399)@96
    assign highBBits_uid400_i_arrayidx6_fc10_mult_x_im6_b = i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_d[17:1];

    // addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6(ADD,400)@96 + 1
    assign addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_a = {1'b0, i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_b = {2'b00, highBBits_uid400_i_arrayidx6_fc10_mult_x_im6_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_o <= $unsigned(addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_a) + $unsigned(addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_q = addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_o[18:0];

    // lowRangeB_uid399_i_arrayidx6_fc10_mult_x_im6(BITSELECT,398)@97
    assign lowRangeB_uid399_i_arrayidx6_fc10_mult_x_im6_in = sel_for_coalesced_delay_2_c[0:0];
    assign lowRangeB_uid399_i_arrayidx6_fc10_mult_x_im6_b = lowRangeB_uid399_i_arrayidx6_fc10_mult_x_im6_in[0:0];

    // add_uid402_i_arrayidx6_fc10_mult_x_im6(BITJOIN,401)@97
    assign add_uid402_i_arrayidx6_fc10_mult_x_im6_q = {addsumAHighB_uid401_i_arrayidx6_fc10_mult_x_im6_q, lowRangeB_uid399_i_arrayidx6_fc10_mult_x_im6_b};

    // a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6(ADD,405)@97
    assign a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6_a = {1'b0, add_uid402_i_arrayidx6_fc10_mult_x_im6_q};
    assign a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6_b = {6'b000000, highBBits_uid405_i_arrayidx6_fc10_mult_x_im6_b};
    assign a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6_o = $unsigned(a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6_a) + $unsigned(a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6_b);
    assign a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6_q = a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6_o[20:0];

    // lowRangeB_uid404_i_arrayidx6_fc10_mult_x_im6(BITSELECT,403)@97
    assign lowRangeB_uid404_i_arrayidx6_fc10_mult_x_im6_in = sel_for_coalesced_delay_2_c[2:0];
    assign lowRangeB_uid404_i_arrayidx6_fc10_mult_x_im6_b = lowRangeB_uid404_i_arrayidx6_fc10_mult_x_im6_in[2:0];

    // a_subconst_25_uid407_i_arrayidx6_fc10_mult_x_im6(BITJOIN,406)@97
    assign a_subconst_25_uid407_i_arrayidx6_fc10_mult_x_im6_q = {a_subconst_25_sumAHighB_uid406_i_arrayidx6_fc10_mult_x_im6_q, lowRangeB_uid404_i_arrayidx6_fc10_mult_x_im6_b};

    // sR_bottomRange_uid411_i_arrayidx6_fc10_mult_x_im6(BITSELECT,410)@97
    assign sR_bottomRange_uid411_i_arrayidx6_fc10_mult_x_im6_in = a_subconst_25_uid407_i_arrayidx6_fc10_mult_x_im6_q[22:0];
    assign sR_bottomRange_uid411_i_arrayidx6_fc10_mult_x_im6_b = sR_bottomRange_uid411_i_arrayidx6_fc10_mult_x_im6_in[22:0];

    // redist15_sR_bottomRange_uid411_i_arrayidx6_fc10_mult_x_im6_b_1_0(REG,712)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sR_bottomRange_uid411_i_arrayidx6_fc10_mult_x_im6_b_1_0_q <= $unsigned(23'b00000000000000000000000);
        end
        else if (SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist15_sR_bottomRange_uid411_i_arrayidx6_fc10_mult_x_im6_b_1_0_q <= $unsigned(sR_bottomRange_uid411_i_arrayidx6_fc10_mult_x_im6_b);
        end
    end

    // sR_bottomExtension_uid272_i_arrayidx6_fc10_mult_x_im0(CONSTANT,271)
    assign sR_bottomExtension_uid272_i_arrayidx6_fc10_mult_x_im0_q = $unsigned(6'b000000);

    // sR_mergedSignalTM_uid412_i_arrayidx6_fc10_mult_x_im6(BITJOIN,411)@98
    assign sR_mergedSignalTM_uid412_i_arrayidx6_fc10_mult_x_im6_q = {redist15_sR_bottomRange_uid411_i_arrayidx6_fc10_mult_x_im6_b_1_0_q, sR_bottomExtension_uid272_i_arrayidx6_fc10_mult_x_im0_q};

    // i_arrayidx6_fc10_mult_x_sums_align_0(BITSHIFT,228)@98
    assign i_arrayidx6_fc10_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid412_i_arrayidx6_fc10_mult_x_im6_q, 7'b0000000 };
    assign i_arrayidx6_fc10_mult_x_sums_align_0_q = i_arrayidx6_fc10_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select(BITSELECT,647)@98
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b = $unsigned(i_arrayidx6_fc10_mult_x_sums_align_0_q[22:0]);
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c = $unsigned(i_arrayidx6_fc10_mult_x_sums_align_0_q[35:23]);

    // highBBits_uid474_i_arrayidx6_fc10_mult_x_im9(BITSELECT,473)@97
    assign highBBits_uid474_i_arrayidx6_fc10_mult_x_im9_b = sel_for_coalesced_delay_2_d[9:3];

    // highBBits_uid469_i_arrayidx6_fc10_mult_x_im9(BITSELECT,468)@96
    assign highBBits_uid469_i_arrayidx6_fc10_mult_x_im9_b = i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_e[9:1];

    // addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9(ADD,469)@96 + 1
    assign addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_a = {1'b0, i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_b = {2'b00, highBBits_uid469_i_arrayidx6_fc10_mult_x_im9_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_o <= 11'b0;
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_o <= $unsigned(addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_a) + $unsigned(addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_q = addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_o[10:0];

    // lowRangeB_uid468_i_arrayidx6_fc10_mult_x_im9(BITSELECT,467)@97
    assign lowRangeB_uid468_i_arrayidx6_fc10_mult_x_im9_in = sel_for_coalesced_delay_2_d[0:0];
    assign lowRangeB_uid468_i_arrayidx6_fc10_mult_x_im9_b = lowRangeB_uid468_i_arrayidx6_fc10_mult_x_im9_in[0:0];

    // add_uid471_i_arrayidx6_fc10_mult_x_im9(BITJOIN,470)@97
    assign add_uid471_i_arrayidx6_fc10_mult_x_im9_q = {addsumAHighB_uid470_i_arrayidx6_fc10_mult_x_im9_q, lowRangeB_uid468_i_arrayidx6_fc10_mult_x_im9_b};

    // a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9(ADD,474)@97
    assign a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9_a = {1'b0, add_uid471_i_arrayidx6_fc10_mult_x_im9_q};
    assign a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9_b = {6'b000000, highBBits_uid474_i_arrayidx6_fc10_mult_x_im9_b};
    assign a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9_o = $unsigned(a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9_a) + $unsigned(a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9_b);
    assign a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9_q = a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9_o[12:0];

    // lowRangeB_uid473_i_arrayidx6_fc10_mult_x_im9(BITSELECT,472)@97
    assign lowRangeB_uid473_i_arrayidx6_fc10_mult_x_im9_in = sel_for_coalesced_delay_2_d[2:0];
    assign lowRangeB_uid473_i_arrayidx6_fc10_mult_x_im9_b = lowRangeB_uid473_i_arrayidx6_fc10_mult_x_im9_in[2:0];

    // a_subconst_25_uid476_i_arrayidx6_fc10_mult_x_im9(BITJOIN,475)@97
    assign a_subconst_25_uid476_i_arrayidx6_fc10_mult_x_im9_q = {a_subconst_25_sumAHighB_uid475_i_arrayidx6_fc10_mult_x_im9_q, lowRangeB_uid473_i_arrayidx6_fc10_mult_x_im9_b};

    // sR_bottomRange_uid480_i_arrayidx6_fc10_mult_x_im9(BITSELECT,479)@97
    assign sR_bottomRange_uid480_i_arrayidx6_fc10_mult_x_im9_in = a_subconst_25_uid476_i_arrayidx6_fc10_mult_x_im9_q[14:0];
    assign sR_bottomRange_uid480_i_arrayidx6_fc10_mult_x_im9_b = sR_bottomRange_uid480_i_arrayidx6_fc10_mult_x_im9_in[14:0];

    // redist14_sR_bottomRange_uid480_i_arrayidx6_fc10_mult_x_im9_b_1_0(REG,711)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sR_bottomRange_uid480_i_arrayidx6_fc10_mult_x_im9_b_1_0_q <= $unsigned(15'b000000000000000);
        end
        else if (SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist14_sR_bottomRange_uid480_i_arrayidx6_fc10_mult_x_im9_b_1_0_q <= $unsigned(sR_bottomRange_uid480_i_arrayidx6_fc10_mult_x_im9_b);
        end
    end

    // sR_mergedSignalTM_uid481_i_arrayidx6_fc10_mult_x_im9(BITJOIN,480)@98
    assign sR_mergedSignalTM_uid481_i_arrayidx6_fc10_mult_x_im9_q = {redist14_sR_bottomRange_uid480_i_arrayidx6_fc10_mult_x_im9_b_1_0_q, sR_bottomExtension_uid272_i_arrayidx6_fc10_mult_x_im0_q};

    // i_arrayidx6_fc10_mult_x_sums_align_3(BITSHIFT,231)@98
    assign i_arrayidx6_fc10_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid481_i_arrayidx6_fc10_mult_x_im9_q, 7'b0000000 };
    assign i_arrayidx6_fc10_mult_x_sums_align_3_q = i_arrayidx6_fc10_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,648)@98
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx6_fc10_mult_x_sums_align_3_q[4:0]);
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx6_fc10_mult_x_sums_align_3_q[27:5]);

    // highBBits_uid336_i_arrayidx6_fc10_mult_x_im3(BITSELECT,335)@97
    assign highBBits_uid336_i_arrayidx6_fc10_mult_x_im3_b = sel_for_coalesced_delay_2_b[17:3];

    // highBBits_uid331_i_arrayidx6_fc10_mult_x_im3(BITSELECT,330)@96
    assign highBBits_uid331_i_arrayidx6_fc10_mult_x_im3_b = i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_c[17:1];

    // addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3(ADD,331)@96 + 1
    assign addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_a = {1'b0, i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_b = {2'b00, highBBits_uid331_i_arrayidx6_fc10_mult_x_im3_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_o <= $unsigned(addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_a) + $unsigned(addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_q = addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_o[18:0];

    // lowRangeB_uid330_i_arrayidx6_fc10_mult_x_im3(BITSELECT,329)@97
    assign lowRangeB_uid330_i_arrayidx6_fc10_mult_x_im3_in = sel_for_coalesced_delay_2_b[0:0];
    assign lowRangeB_uid330_i_arrayidx6_fc10_mult_x_im3_b = lowRangeB_uid330_i_arrayidx6_fc10_mult_x_im3_in[0:0];

    // add_uid333_i_arrayidx6_fc10_mult_x_im3(BITJOIN,332)@97
    assign add_uid333_i_arrayidx6_fc10_mult_x_im3_q = {addsumAHighB_uid332_i_arrayidx6_fc10_mult_x_im3_q, lowRangeB_uid330_i_arrayidx6_fc10_mult_x_im3_b};

    // a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3(ADD,336)@97
    assign a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3_a = {1'b0, add_uid333_i_arrayidx6_fc10_mult_x_im3_q};
    assign a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3_b = {6'b000000, highBBits_uid336_i_arrayidx6_fc10_mult_x_im3_b};
    assign a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3_o = $unsigned(a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3_a) + $unsigned(a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3_b);
    assign a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3_q = a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3_o[20:0];

    // lowRangeB_uid335_i_arrayidx6_fc10_mult_x_im3(BITSELECT,334)@97
    assign lowRangeB_uid335_i_arrayidx6_fc10_mult_x_im3_in = sel_for_coalesced_delay_2_b[2:0];
    assign lowRangeB_uid335_i_arrayidx6_fc10_mult_x_im3_b = lowRangeB_uid335_i_arrayidx6_fc10_mult_x_im3_in[2:0];

    // a_subconst_25_uid338_i_arrayidx6_fc10_mult_x_im3(BITJOIN,337)@97
    assign a_subconst_25_uid338_i_arrayidx6_fc10_mult_x_im3_q = {a_subconst_25_sumAHighB_uid337_i_arrayidx6_fc10_mult_x_im3_q, lowRangeB_uid335_i_arrayidx6_fc10_mult_x_im3_b};

    // sR_bottomRange_uid342_i_arrayidx6_fc10_mult_x_im3(BITSELECT,341)@97
    assign sR_bottomRange_uid342_i_arrayidx6_fc10_mult_x_im3_in = a_subconst_25_uid338_i_arrayidx6_fc10_mult_x_im3_q[22:0];
    assign sR_bottomRange_uid342_i_arrayidx6_fc10_mult_x_im3_b = sR_bottomRange_uid342_i_arrayidx6_fc10_mult_x_im3_in[22:0];

    // redist16_sR_bottomRange_uid342_i_arrayidx6_fc10_mult_x_im3_b_1_0(REG,713)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sR_bottomRange_uid342_i_arrayidx6_fc10_mult_x_im3_b_1_0_q <= $unsigned(23'b00000000000000000000000);
        end
        else if (SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist16_sR_bottomRange_uid342_i_arrayidx6_fc10_mult_x_im3_b_1_0_q <= $unsigned(sR_bottomRange_uid342_i_arrayidx6_fc10_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid343_i_arrayidx6_fc10_mult_x_im3(BITJOIN,342)@98
    assign sR_mergedSignalTM_uid343_i_arrayidx6_fc10_mult_x_im3_q = {redist16_sR_bottomRange_uid342_i_arrayidx6_fc10_mult_x_im3_b_1_0_q, sR_bottomExtension_uid272_i_arrayidx6_fc10_mult_x_im0_q};

    // i_arrayidx6_fc10_mult_x_sums_align_2(BITSHIFT,230)@98
    assign i_arrayidx6_fc10_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid343_i_arrayidx6_fc10_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx6_fc10_mult_x_sums_align_2_q = i_arrayidx6_fc10_mult_x_sums_align_2_qint[46:0];

    // i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,638)@98
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx6_fc10_mult_x_sums_align_2_q};

    // highBBits_uid267_i_arrayidx6_fc10_mult_x_im0(BITSELECT,266)@96
    assign highBBits_uid267_i_arrayidx6_fc10_mult_x_im0_b = i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_b[17:3];

    // redist17_highBBits_uid267_i_arrayidx6_fc10_mult_x_im0_b_1_0(REG,714)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_highBBits_uid267_i_arrayidx6_fc10_mult_x_im0_b_1_0_q <= $unsigned(15'b000000000000000);
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backEN == 1'b1)
        begin
            redist17_highBBits_uid267_i_arrayidx6_fc10_mult_x_im0_b_1_0_q <= $unsigned(highBBits_uid267_i_arrayidx6_fc10_mult_x_im0_b);
        end
    end

    // highBBits_uid262_i_arrayidx6_fc10_mult_x_im0(BITSELECT,261)@96
    assign highBBits_uid262_i_arrayidx6_fc10_mult_x_im0_b = i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_b[17:1];

    // addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0(ADD,262)@96 + 1
    assign addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_a = {1'b0, i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_b = {2'b00, highBBits_uid262_i_arrayidx6_fc10_mult_x_im0_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_o <= $unsigned(addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_a) + $unsigned(addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_q = addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_o[18:0];

    // lowRangeB_uid261_i_arrayidx6_fc10_mult_x_im0(BITSELECT,260)@96
    assign lowRangeB_uid261_i_arrayidx6_fc10_mult_x_im0_in = i_arrayidx6_fc10_mult_x_bs1_merged_bit_select_b[0:0];
    assign lowRangeB_uid261_i_arrayidx6_fc10_mult_x_im0_b = lowRangeB_uid261_i_arrayidx6_fc10_mult_x_im0_in[0:0];

    // redist18_lowRangeB_uid261_i_arrayidx6_fc10_mult_x_im0_b_1_0(REG,715)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_lowRangeB_uid261_i_arrayidx6_fc10_mult_x_im0_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backEN == 1'b1)
        begin
            redist18_lowRangeB_uid261_i_arrayidx6_fc10_mult_x_im0_b_1_0_q <= $unsigned(lowRangeB_uid261_i_arrayidx6_fc10_mult_x_im0_b);
        end
    end

    // add_uid264_i_arrayidx6_fc10_mult_x_im0(BITJOIN,263)@97
    assign add_uid264_i_arrayidx6_fc10_mult_x_im0_q = {addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_q, redist18_lowRangeB_uid261_i_arrayidx6_fc10_mult_x_im0_b_1_0_q};

    // a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0(ADD,267)@97
    assign a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0_a = {1'b0, add_uid264_i_arrayidx6_fc10_mult_x_im0_q};
    assign a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0_b = {6'b000000, redist17_highBBits_uid267_i_arrayidx6_fc10_mult_x_im0_b_1_0_q};
    assign a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0_o = $unsigned(a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0_a) + $unsigned(a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0_b);
    assign a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0_q = a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0_o[20:0];

    // i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2(BITSELECT,630)@97
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b = $unsigned(a_subconst_25_sumAHighB_uid268_i_arrayidx6_fc10_mult_x_im0_q[19:0]);

    // redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0(REG,706)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_q <= $unsigned(20'b00000000000000000000);
        end
        else if (SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b1)
        begin
            redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_q <= $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b);
        end
    end

    // i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,629)@98
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(redist20_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_2_1_q[2:0]);

    // i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,632)@98
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b, redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_q, i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid272_i_arrayidx6_fc10_mult_x_im0_q};

    // i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2(ADD,567)@98 + 1
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D0};
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // SR_SE_i_arrayidx6_fc10_add_x_p1_of_2(STALLREG,1243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_valid <= SE_i_arrayidx6_fc10_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_and0 = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_V0;
    assign SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_V0 & SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_backStall = SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_V = SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_D0 = SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_data0 : i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_D1 = SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_r_data1 : i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_q;

    // SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2(STALLENABLE,991)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_V0 = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_V1 = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_backStall & SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backStall & SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_or0 = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2(STALLREG,1237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= 23'bxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c);
                SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= $unsigned(redist20_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_i_valid = SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_V0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_V = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 : i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data1
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 : i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data2
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D2 = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 : i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data3
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D3 = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 : i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    // Data4
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D4 = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 : redist20_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_2_1_q;

    // SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0(STALLENABLE,1033)
    // Valid signal propagation
    assign SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_V0 = SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_s_tv_0 = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backStall & SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN = ~ (SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_v_s_0 = SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN & SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_V0;
    // Backward Stall generation
    assign SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backStall = ~ (SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0 <= SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0 & SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_R_v_0 <= SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_v_s_0;
            end

        end
    end

    // SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0(STALLENABLE,943)
    // Valid signal propagation
    assign SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_V0 = SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_s_tv_0 = SE_redist9_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_0_backStall & SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backEN = ~ (SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_v_s_0 = SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backEN & SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_V0;
    // Backward Stall generation
    assign SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backStall = ~ (SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backEN == 1'b0)
            begin
                SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_R_v_0 & SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112(STALLENABLE,897)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_V0 = SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_backStall = SE_addsumAHighB_uid263_i_arrayidx6_fc10_mult_x_im0_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_wireValid = i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_valid_out;

    // SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126(STALLENABLE,918)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_V0 = SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_backStall = i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_wireValid = SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_V;

    // SE_out_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126(STALLENABLE,919)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_wireValid = i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_out_valid_out;

    // i_llvm_fpga_push_i32_i_014_pop924_push18_fc126(BLACKBOX,122)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    fc1_i_llvm_fpga_push_i32_i_014_pop924_push18_0 thei_llvm_fpga_push_i32_i_014_pop924_push18_fc126 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_D0),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_feedback_stall_out_18),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112(BLACKBOX,111)@95
    // in in_stall_in@20000000
    // out out_data_out@96
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@96
    fc1_i_llvm_fpga_pop_i32_i_014_pop924_pop18_0 thei_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112 (
        .in_data_in(SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_D0),
        .in_dir(SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_D1),
        .in_feedback_in_18(i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_backStall),
        .in_valid_in(SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo(STALLENABLE,1071)
    // Valid signal propagation
    assign SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_V0 = SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_backStall = i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_stall_out | ~ (SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_wireValid = SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_V;

    // SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo(STALLREG,1236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_valid <= 1'b0;
            SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_valid <= SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_backStall & (SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_valid | SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_i_valid);

            if (SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_data0 <= $unsigned(bubble_select_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_b);
                SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_data1 <= $unsigned(bubble_select_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_and0 = redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_valid_out;
    assign SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_i_valid = SE_out_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V0 & SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_backStall = SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_valid | ~ (SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_V = SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_valid == 1'b1 ? SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_valid : SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_D0 = SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_valid == 1'b1 ? SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_data0 : bubble_select_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_b;
    // Data1
    assign SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_D1 = SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_valid == 1'b1 ? SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_r_data1 : bubble_select_redist30_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_b;

    // redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo(STALLFIFO,738)
    assign redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_valid_in = SE_out_fc1_B3_merge_reg_aunroll_x_V5;
    assign redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_stall_in = SR_SE_out_redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_backStall;
    assign redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_data_in = bubble_select_fc1_B3_merge_reg_aunroll_x_e;
    assign redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_valid_in_bitsignaltemp = redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_valid_in[0];
    assign redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_stall_in_bitsignaltemp = redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_stall_in[0];
    assign redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_valid_out[0] = redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_valid_out_bitsignaltemp;
    assign redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_stall_out[0] = redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo (
        .valid_in(redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_fc1_B3_merge_reg_aunroll_x_e),
        .valid_out(redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,689)
    assign join_for_coalesced_delay_0_q = {bubble_select_fc1_B3_merge_reg_aunroll_x_f, bubble_select_fc1_B3_merge_reg_aunroll_x_b};

    // SR_SE_coalesced_delay_0_0(STALLREG,1224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_0_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_0_r_valid <= SE_coalesced_delay_0_0_backStall & (SR_SE_coalesced_delay_0_0_r_valid | SR_SE_coalesced_delay_0_0_i_valid);

            if (SR_SE_coalesced_delay_0_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_0_r_data0 <= $unsigned(join_for_coalesced_delay_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_0_i_valid = SE_out_fc1_B3_merge_reg_aunroll_x_V4;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_0_backStall = SR_SE_coalesced_delay_0_0_r_valid | ~ (SR_SE_coalesced_delay_0_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_0_V = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_valid : SR_SE_coalesced_delay_0_0_i_valid;

    assign SR_SE_coalesced_delay_0_0_D0 = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_data0 : join_for_coalesced_delay_0_q;

    // i_arrayidx8_fc10_add_x_p1_of_2(ADD,558)@100 + 1
    assign i_arrayidx8_fc10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_D0};
    assign i_arrayidx8_fc10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx8_fc10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx8_fc10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx8_fc10_add_x_p1_of_2_o <= $unsigned(i_arrayidx8_fc10_add_x_p1_of_2_a) + $unsigned(i_arrayidx8_fc10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx8_fc10_add_x_p1_of_2_c[0] = i_arrayidx8_fc10_add_x_p1_of_2_o[52];
    assign i_arrayidx8_fc10_add_x_p1_of_2_q = i_arrayidx8_fc10_add_x_p1_of_2_o[51:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13(BITJOIN,761)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_q = i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13(BITSELECT,762)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_q[63:0]);

    // i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,645)@100
    assign i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_b[51:0]);
    assign i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_b[63:52]);

    // redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,703)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx8_fc10_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,620)@101
    assign i_arrayidx8_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0(STALLREG,1250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_valid <= SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx8_fc10_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx8_fc10_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_V = SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx8_fc10_add_x_p1_of_2_q;

    // SE_i_arrayidx8_fc10_add_x_p1_of_2(STALLENABLE,988)
    // Valid signal propagation
    assign SE_i_arrayidx8_fc10_add_x_p1_of_2_V0 = SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx8_fc10_add_x_p1_of_2_V1 = SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx8_fc10_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_backStall & SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx8_fc10_add_x_p1_of_2_s_tv_1 = SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx8_fc10_add_x_p1_of_2_or0 = SE_i_arrayidx8_fc10_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx8_fc10_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx8_fc10_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx8_fc10_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx8_fc10_add_x_p1_of_2_v_s_0 = SE_i_arrayidx8_fc10_add_x_p1_of_2_backEN & SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx8_fc10_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx8_fc10_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx8_fc10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_0 & SE_i_arrayidx8_fc10_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx8_fc10_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx8_fc10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_1 & SE_i_arrayidx8_fc10_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx8_fc10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx8_fc10_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx8_fc10_add_x_p2_of_2(STALLREG,1249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_valid <= SE_i_arrayidx8_fc10_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx8_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx8_fc10_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_and0 = SE_i_arrayidx8_fc10_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_and1 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_V3 & SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_i_valid = SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_backStall = SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_V = SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_D0 = SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_data0 : i_arrayidx8_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_D1 = SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_data1 : i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_D2 = SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_r_data2 : i_arrayidx8_fc10_add_x_p1_of_2_c;

    // SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1030)
    // Valid signal propagation
    assign SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_backStall & SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_V1;
    // Backward Stall generation
    assign SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx8_fc10_add_x_p1_of_2(STALLREG,1248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_valid <= SE_i_arrayidx8_fc10_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_and0 = SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V1;
    assign SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_V0 & SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_backStall = SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_V = SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_D0 = SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_data0 : i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_D1 = SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_r_data1 : i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13(STALLENABLE,869)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_consumed0 = (~ (SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_consumed1 = (~ (SE_redist3_i_arrayidx8_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_wireValid = i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13(BLACKBOX,97)@99
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@100
    // out out_stall_out@20000000
    // out out_valid_out@100
    fc1_i_llvm_fpga_ffwd_dest_p1024f32_in0158_0 thei_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_backStall),
        .in_valid_in(SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_4(STALLENABLE,1090)
    // Valid signal propagation
    assign SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_p1024f32_in0158_fc13_out_stall_out | ~ (SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_4_wireValid = bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_valid_out;

    // bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg(STALLFIFO,1220)
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_valid_in = SE_out_fc1_B3_merge_reg_aunroll_x_V3;
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_fc1_B3_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx10_fc10_add_x_p1_of_2(ADD,522)@100 + 1
    assign i_arrayidx10_fc10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_D0};
    assign i_arrayidx10_fc10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_fc10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_fc10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_fc10_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_fc10_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_fc10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_fc10_add_x_p1_of_2_c[0] = i_arrayidx10_fc10_add_x_p1_of_2_o[52];
    assign i_arrayidx10_fc10_add_x_p1_of_2_q = i_arrayidx10_fc10_add_x_p1_of_2_o[51:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11(BITJOIN,758)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_q = i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11(BITSELECT,759)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_q[63:0]);

    // i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,644)@100
    assign i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_b[51:0]);
    assign i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_b[63:52]);

    // redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,704)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx10_fc10_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,574)@101
    assign i_arrayidx10_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0(STALLENABLE,1037)
    // Valid signal propagation
    assign SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_V0 = SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_backStall & SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0(STALLREG,1253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_valid <= SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx10_fc10_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx10_fc10_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_V = SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx10_fc10_add_x_p1_of_2_q;

    // SE_i_arrayidx10_fc10_add_x_p1_of_2(STALLENABLE,977)
    // Valid signal propagation
    assign SE_i_arrayidx10_fc10_add_x_p1_of_2_V0 = SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_fc10_add_x_p1_of_2_V1 = SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_fc10_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_backStall & SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_fc10_add_x_p1_of_2_s_tv_1 = SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_fc10_add_x_p1_of_2_or0 = SE_i_arrayidx10_fc10_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_fc10_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_fc10_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_fc10_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_fc10_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_fc10_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_fc10_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_fc10_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_fc10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_fc10_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_fc10_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_fc10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_fc10_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_fc10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_fc10_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_fc10_add_x_p2_of_2(STALLENABLE,978)
    // Valid signal propagation
    assign SE_i_arrayidx10_fc10_add_x_p2_of_2_V0 = SE_i_arrayidx10_fc10_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_fc10_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_backStall & SE_i_arrayidx10_fc10_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_fc10_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_fc10_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_fc10_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_fc10_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_fc10_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_fc10_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_fc10_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_fc10_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_fc10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_fc10_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_fc10_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_fc10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_fc10_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_fc10_add_x_p2_of_2(STALLREG,1252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_fc10_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_fc10_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_and0 = SE_i_arrayidx10_fc10_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_and1 = SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_i_valid = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_V0 & SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_V = SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_data0 : i_arrayidx10_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_data1 : i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_r_data2 : i_arrayidx10_fc10_add_x_p1_of_2_c;

    // SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1031)
    // Valid signal propagation
    assign SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_backStall & SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_V1;
    // Backward Stall generation
    assign SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_fc10_add_x_p1_of_2(STALLREG,1251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_fc10_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_and0 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    assign SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_V0 & SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_V = SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_data0 : i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_r_data1 : i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11(STALLENABLE,867)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_consumed0 = (~ (SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_consumed1 = (~ (SE_redist4_i_arrayidx10_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_wireValid = i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11(BLACKBOX,96)@99
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@100
    // out out_stall_out@20000000
    // out out_valid_out@100
    fc1_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_0 thei_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_backStall),
        .in_valid_in(SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_2(STALLENABLE,1086)
    // Valid signal propagation
    assign SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1024f32_bias1710_fc11_out_stall_out | ~ (SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_2_wireValid = bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_valid_out;

    // bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg(STALLFIFO,1218)
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_valid_in = SE_out_fc1_B3_merge_reg_aunroll_x_V1;
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_fc1_B3_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10(BLACKBOX,98)@99
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@100
    // out out_stall_out@20000000
    // out out_valid_out@100
    fc1_i_llvm_fpga_ffwd_dest_p1024f32_out01811_0 thei_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_backStall),
        .in_valid_in(SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_1(STALLENABLE,1084)
    // Valid signal propagation
    assign SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_out_stall_out | ~ (SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_1_wireValid = bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_valid_out;

    // bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg(STALLFIFO,1217)
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_valid_in = SE_out_fc1_B3_merge_reg_aunroll_x_V0;
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_fc1_B3_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,929)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = fc1_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,815)
    assign bubble_join_stall_entry_q = {in_notcmp1227, in_memdep_phi2_pop1029, in_i_014_pop928, in_forked, in_exitcond726};

    // bubble_select_stall_entry(BITSELECT,816)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);

    // fc1_B3_merge_reg_aunroll_x(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    fc1_B3_merge_reg thefc1_B3_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_data_in_2_tpl(bubble_select_stall_entry_f),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .in_stall_in(SE_out_fc1_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(fc1_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(fc1_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(fc1_B3_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_stall_out(fc1_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(fc1_B3_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_fc1_B3_merge_reg_aunroll_x(STALLENABLE,845)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg0 <= SE_out_fc1_B3_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg1 <= SE_out_fc1_B3_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg2 <= SE_out_fc1_B3_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg3 <= SE_out_fc1_B3_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg4 <= SE_out_fc1_B3_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg5 <= SE_out_fc1_B3_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_fc1_B3_merge_reg_aunroll_x_fromReg6 <= SE_out_fc1_B3_merge_reg_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_fc1_B3_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_fc1_B3_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_fc1_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc1_B3_merge_reg_aunroll_x_fromReg0;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_fc1_B3_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_fc1_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc1_B3_merge_reg_aunroll_x_fromReg1;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_fc1_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc1_B3_merge_reg_aunroll_x_fromReg2;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_fc1_B3_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_fc1_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc1_B3_merge_reg_aunroll_x_fromReg3;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_consumed4 = (~ (SR_SE_coalesced_delay_0_0_backStall) & SE_out_fc1_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc1_B3_merge_reg_aunroll_x_fromReg4;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_consumed5 = (~ (redist37_fc1_B3_merge_reg_aunroll_x_out_data_out_3_tpl_94_fifo_stall_out) & SE_out_fc1_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc1_B3_merge_reg_aunroll_x_fromReg5;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_consumed6 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_fc1_B3_merge_reg_aunroll_x_wireValid) | SE_out_fc1_B3_merge_reg_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_fc1_B3_merge_reg_aunroll_x_StallValid = SE_out_fc1_B3_merge_reg_aunroll_x_backStall & SE_out_fc1_B3_merge_reg_aunroll_x_wireValid;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_toReg0 = SE_out_fc1_B3_merge_reg_aunroll_x_StallValid & SE_out_fc1_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_toReg1 = SE_out_fc1_B3_merge_reg_aunroll_x_StallValid & SE_out_fc1_B3_merge_reg_aunroll_x_consumed1;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_toReg2 = SE_out_fc1_B3_merge_reg_aunroll_x_StallValid & SE_out_fc1_B3_merge_reg_aunroll_x_consumed2;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_toReg3 = SE_out_fc1_B3_merge_reg_aunroll_x_StallValid & SE_out_fc1_B3_merge_reg_aunroll_x_consumed3;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_toReg4 = SE_out_fc1_B3_merge_reg_aunroll_x_StallValid & SE_out_fc1_B3_merge_reg_aunroll_x_consumed4;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_toReg5 = SE_out_fc1_B3_merge_reg_aunroll_x_StallValid & SE_out_fc1_B3_merge_reg_aunroll_x_consumed5;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_toReg6 = SE_out_fc1_B3_merge_reg_aunroll_x_StallValid & SE_out_fc1_B3_merge_reg_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_fc1_B3_merge_reg_aunroll_x_or0 = SE_out_fc1_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_or1 = SE_out_fc1_B3_merge_reg_aunroll_x_consumed1 & SE_out_fc1_B3_merge_reg_aunroll_x_or0;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_or2 = SE_out_fc1_B3_merge_reg_aunroll_x_consumed2 & SE_out_fc1_B3_merge_reg_aunroll_x_or1;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_or3 = SE_out_fc1_B3_merge_reg_aunroll_x_consumed3 & SE_out_fc1_B3_merge_reg_aunroll_x_or2;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_or4 = SE_out_fc1_B3_merge_reg_aunroll_x_consumed4 & SE_out_fc1_B3_merge_reg_aunroll_x_or3;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_or5 = SE_out_fc1_B3_merge_reg_aunroll_x_consumed5 & SE_out_fc1_B3_merge_reg_aunroll_x_or4;
    assign SE_out_fc1_B3_merge_reg_aunroll_x_wireStall = ~ (SE_out_fc1_B3_merge_reg_aunroll_x_consumed6 & SE_out_fc1_B3_merge_reg_aunroll_x_or5);
    assign SE_out_fc1_B3_merge_reg_aunroll_x_backStall = SE_out_fc1_B3_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_fc1_B3_merge_reg_aunroll_x_V0 = SE_out_fc1_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc1_B3_merge_reg_aunroll_x_fromReg0);
    assign SE_out_fc1_B3_merge_reg_aunroll_x_V1 = SE_out_fc1_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc1_B3_merge_reg_aunroll_x_fromReg1);
    assign SE_out_fc1_B3_merge_reg_aunroll_x_V2 = SE_out_fc1_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc1_B3_merge_reg_aunroll_x_fromReg2);
    assign SE_out_fc1_B3_merge_reg_aunroll_x_V3 = SE_out_fc1_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc1_B3_merge_reg_aunroll_x_fromReg3);
    assign SE_out_fc1_B3_merge_reg_aunroll_x_V4 = SE_out_fc1_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc1_B3_merge_reg_aunroll_x_fromReg4);
    assign SE_out_fc1_B3_merge_reg_aunroll_x_V5 = SE_out_fc1_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc1_B3_merge_reg_aunroll_x_fromReg5);
    assign SE_out_fc1_B3_merge_reg_aunroll_x_V6 = SE_out_fc1_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_fc1_B3_merge_reg_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_fc1_B3_merge_reg_aunroll_x_wireValid = fc1_B3_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg(STALLFIFO,1219)
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_valid_in = SE_out_fc1_B3_merge_reg_aunroll_x_V2;
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_fc1_B3_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_3(STALLENABLE,1088)
    // Valid signal propagation
    assign SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_out_stall_out | ~ (SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_3_wireValid = bubble_out_fc1_B3_merge_reg_aunroll_x_3_reg_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12(STALLENABLE,865)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_consumed0 = (~ (SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_consumed1 = (~ (SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_wireValid = i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12(BLACKBOX,95)@98
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@99
    // out out_stall_out@20000000
    // out out_valid_out@99
    fc1_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_0 thei_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_backStall),
        .in_valid_in(SE_out_bubble_out_fc1_B3_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12(BITJOIN,755)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_q = i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12(BITSELECT,756)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_q[63:0]);

    // i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,643)@99
    assign i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_b[51:0]);
    assign i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_b[63:52]);

    // redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,705)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx6_fc10_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,610)@100
    assign i_arrayidx6_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1032)
    // Valid signal propagation
    assign SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_backStall & SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024a400f32_weights169_fc12_V1;
    // Backward Stall generation
    assign SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx6_fc10_add_x_p2_of_2(STALLREG,1245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_valid <= SE_i_arrayidx6_fc10_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx6_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx6_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx6_fc10_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_and0 = SE_i_arrayidx6_fc10_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_and1 = SE_redist5_i_arrayidx6_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_i_valid = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_V0 & SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_backStall = SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_V = SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_D0 = SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_data0 : i_arrayidx6_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_D1 = SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_data1 : i_arrayidx6_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_D2 = SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_r_data2 : i_arrayidx6_fc10_add_x_p1_of_2_c;

    // SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2(STALLENABLE,992)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_V0 = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_V1 = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_V2 = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_backStall & SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_backStall & SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_or0 = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_or1 = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 | SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_or0;
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 | SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 & SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 & SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_0(REG,719)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_0_q <= $unsigned(SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D4);
        end
    end

    // redist0_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,700)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(23'b00000000000000000000000);
        end
        else if (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist0_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D2);
        end
    end

    // i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,641)@99
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist0_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // i_arrayidx6_fc10_mult_x_sums_result_add_0_0_UpperBits_for_a(CONSTANT,562)
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_UpperBits_for_a_q = $unsigned(11'b00000000000);

    // redist1_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0(REG,701)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(13'b0000000000000);
        end
        else if (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist1_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_D3);
        end
    end

    // i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,635)@99
    assign i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx6_fc10_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist1_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q};

    // SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2(STALLREG,1238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= 24'bxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= 24'bxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= $unsigned(redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_i_valid = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_V = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 : i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 : i_arrayidx6_fc10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 : i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_D3 = SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 : redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_0_q;

    // redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_1(REG,720)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_1_q <= $unsigned(SR_SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_D3);
        end
    end

    // i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,578)@100
    assign i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel0_2_b, redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_1_q, i_arrayidx10_fc10_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10(BITJOIN,764)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_q = i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10(BITSELECT,765)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_q[63:0]);

    // i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,646)@100
    assign i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_b[51:0]);
    assign i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_b[63:52]);

    // SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10(STALLENABLE,871)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_consumed0 = (~ (SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_consumed1 = (~ (SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_wireValid = i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_out_valid_out;

    // SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel0_2(STALLENABLE,994)
    // Valid signal propagation
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel0_2_V0 = 1'b1;
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel0_2_V1 = 1'b1;

    // SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,995)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0 <= '0;
            SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0 <= SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_toReg0;
            // Successor 1
            SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1 <= SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_consumed0 = (~ (SR_SE_i_arrayidx10_fc10_add_x_p1_of_2_backStall) & SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid) | SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0;
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_consumed1 = (~ (SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_backStall) & SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid) | SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1;
    // Consuming
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_StallValid = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_toReg0 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_StallValid & SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_toReg1 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_StallValid & SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_consumed1;
    // Backward Stall generation
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_or0 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_wireStall = ~ (SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_consumed1 & SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_or0);
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid & ~ (SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0);
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_V1 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid & ~ (SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel0_2_V0;
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_V2 & SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SR_SE_i_arrayidx21_fc10_add_x_p1_of_2(STALLREG,1239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_valid <= SE_i_arrayidx21_fc10_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_and0 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_V1;
    assign SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_V0 & SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_backStall = SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_V = SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_D0 = SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_data0 : i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_D1 = SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_r_data1 : i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // i_arrayidx21_fc10_add_x_p1_of_2(ADD,531)@100 + 1
    assign i_arrayidx21_fc10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_D0};
    assign i_arrayidx21_fc10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx21_fc10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx21_fc10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx21_fc10_add_x_p1_of_2_o <= $unsigned(i_arrayidx21_fc10_add_x_p1_of_2_a) + $unsigned(i_arrayidx21_fc10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx21_fc10_add_x_p1_of_2_c[0] = i_arrayidx21_fc10_add_x_p1_of_2_o[52];
    assign i_arrayidx21_fc10_add_x_p1_of_2_q = i_arrayidx21_fc10_add_x_p1_of_2_o[51:0];

    // redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,702)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx21_fc10_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,586)@101
    assign i_arrayidx21_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1029)
    // Valid signal propagation
    assign SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_backStall & SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out01811_fc10_V1;
    // Backward Stall generation
    assign SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0(STALLENABLE,1036)
    // Valid signal propagation
    assign SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_V0 = SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_backStall & SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0(STALLREG,1241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_valid <= SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx21_fc10_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx21_fc10_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_V = SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx21_fc10_add_x_p1_of_2_q;

    // SE_i_arrayidx21_fc10_add_x_p1_of_2(STALLENABLE,980)
    // Valid signal propagation
    assign SE_i_arrayidx21_fc10_add_x_p1_of_2_V0 = SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx21_fc10_add_x_p1_of_2_V1 = SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx21_fc10_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_backStall & SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx21_fc10_add_x_p1_of_2_s_tv_1 = SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx21_fc10_add_x_p1_of_2_or0 = SE_i_arrayidx21_fc10_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx21_fc10_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx21_fc10_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx21_fc10_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx21_fc10_add_x_p1_of_2_v_s_0 = SE_i_arrayidx21_fc10_add_x_p1_of_2_backEN & SR_SE_i_arrayidx21_fc10_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx21_fc10_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx21_fc10_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx21_fc10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_0 & SE_i_arrayidx21_fc10_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx21_fc10_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx21_fc10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_1 & SE_i_arrayidx21_fc10_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx21_fc10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx21_fc10_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx21_fc10_add_x_p2_of_2(STALLREG,1240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_valid <= SE_i_arrayidx21_fc10_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx21_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx21_fc10_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_and0 = SE_i_arrayidx21_fc10_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_and1 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_V1 & SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_i_valid = SE_redist2_i_arrayidx21_fc10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_backStall = SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_V = SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_D0 = SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_data0 : i_arrayidx21_fc10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_D1 = SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_data1 : i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_D2 = SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_r_data2 : i_arrayidx21_fc10_add_x_p1_of_2_c;

    // i_arrayidx21_fc10_add_x_p2_of_2(ADD,532)@101 + 1
    assign i_arrayidx21_fc10_add_x_p2_of_2_cin = SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_D2;
    assign i_arrayidx21_fc10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx21_fc10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx21_fc10_add_x_p2_of_2_D1}, i_arrayidx21_fc10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx21_fc10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx21_fc10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx21_fc10_add_x_p2_of_2_o <= $unsigned(i_arrayidx21_fc10_add_x_p2_of_2_a) + $unsigned(i_arrayidx21_fc10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx21_fc10_add_x_p2_of_2_q = i_arrayidx21_fc10_add_x_p2_of_2_o[13:1];

    // redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0(REG,709)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx21_fc10_add_x_BitJoin_for_q(BITJOIN,533)@102
    assign i_arrayidx21_fc10_add_x_BitJoin_for_q_q = {i_arrayidx21_fc10_add_x_p2_of_2_q, redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx21_fc10_dupName_0_trunc_sel_x(BITSELECT,22)@102
    assign i_arrayidx21_fc10_dupName_0_trunc_sel_x_b = i_arrayidx21_fc10_add_x_BitJoin_for_q_q[63:0];

    // join_for_coalesced_delay_3(BITJOIN,698)
    assign join_for_coalesced_delay_3_q = {i_first_cleanup_xor_fc130_q, i_arrayidx21_fc10_dupName_0_trunc_sel_x_b};

    // SE_i_arrayidx21_fc10_add_x_BitJoin_for_q(STALLENABLE,982)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_fromReg0 <= '0;
            SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_fromReg0 <= SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_toReg0;
            // Successor 1
            SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_fromReg1 <= SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_consumed0 = (~ (SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_backStall) & SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_wireValid) | SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_fromReg0;
    assign SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_consumed1 = (~ (SR_SE_join_for_coalesced_delay_3_backStall) & SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_wireValid) | SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_fromReg1;
    // Consuming
    assign SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_StallValid = SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_backStall & SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_wireValid;
    assign SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_toReg0 = SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_StallValid & SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_consumed0;
    assign SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_toReg1 = SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_StallValid & SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_consumed1;
    // Backward Stall generation
    assign SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_or0 = SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_consumed0;
    assign SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_wireStall = ~ (SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_consumed1 & SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_or0);
    assign SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_backStall = SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_V0 = SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_wireValid & ~ (SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_fromReg0);
    assign SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_V1 = SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_wireValid & ~ (SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_and0 = SE_i_arrayidx21_fc10_add_x_p2_of_2_V0;
    assign SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_wireValid = SE_redist12_i_arrayidx21_fc10_add_x_p1_of_2_q_1_0_V0 & SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_and0;

    // SR_SE_join_for_coalesced_delay_3(STALLREG,1242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_join_for_coalesced_delay_3_r_valid <= 1'b0;
            SR_SE_join_for_coalesced_delay_3_r_data0 <= 65'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_join_for_coalesced_delay_3_r_valid <= SE_join_for_coalesced_delay_3_backStall & (SR_SE_join_for_coalesced_delay_3_r_valid | SR_SE_join_for_coalesced_delay_3_i_valid);

            if (SR_SE_join_for_coalesced_delay_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_join_for_coalesced_delay_3_r_data0 <= $unsigned(join_for_coalesced_delay_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_join_for_coalesced_delay_3_and0 = SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_V1;
    assign SR_SE_join_for_coalesced_delay_3_i_valid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V6 & SR_SE_join_for_coalesced_delay_3_and0;
    // Stall signal propagation
    assign SR_SE_join_for_coalesced_delay_3_backStall = SR_SE_join_for_coalesced_delay_3_r_valid | ~ (SR_SE_join_for_coalesced_delay_3_i_valid);

    // Valid
    assign SR_SE_join_for_coalesced_delay_3_V = SR_SE_join_for_coalesced_delay_3_r_valid == 1'b1 ? SR_SE_join_for_coalesced_delay_3_r_valid : SR_SE_join_for_coalesced_delay_3_i_valid;

    assign SR_SE_join_for_coalesced_delay_3_D0 = SR_SE_join_for_coalesced_delay_3_r_valid == 1'b1 ? SR_SE_join_for_coalesced_delay_3_r_data0 : join_for_coalesced_delay_3_q;

    // SE_join_for_coalesced_delay_3(STALLENABLE,1025)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_3_V0 = SE_join_for_coalesced_delay_3_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_3_backStall = coalesced_delay_3_fifo_stall_out | ~ (SE_join_for_coalesced_delay_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_3_wireValid = SR_SE_join_for_coalesced_delay_3_V;

    // coalesced_delay_3_fifo(STALLFIFO,743)
    assign coalesced_delay_3_fifo_valid_in = SE_join_for_coalesced_delay_3_V0;
    assign coalesced_delay_3_fifo_stall_in = SE_out_coalesced_delay_3_fifo_backStall;
    assign coalesced_delay_3_fifo_data_in = SR_SE_join_for_coalesced_delay_3_D0;
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
        .data_in(SR_SE_join_for_coalesced_delay_3_D0),
        .valid_out(coalesced_delay_3_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_3_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_3_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_3_fifo(STALLENABLE,1078)
    // Valid signal propagation
    assign SE_out_coalesced_delay_3_fifo_V0 = SE_out_coalesced_delay_3_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_3_fifo_backStall = i_llvm_fpga_mem_memdep_fc153_out_o_stall | ~ (SE_out_coalesced_delay_3_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_3_fifo_and0 = coalesced_delay_3_fifo_valid_out;
    assign SE_out_coalesced_delay_3_fifo_wireValid = i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_out_o_valid & SE_out_coalesced_delay_3_fifo_and0;

    // bubble_join_coalesced_delay_3_fifo(BITJOIN,840)
    assign bubble_join_coalesced_delay_3_fifo_q = coalesced_delay_3_fifo_data_out;

    // bubble_select_coalesced_delay_3_fifo(BITSELECT,841)
    assign bubble_select_coalesced_delay_3_fifo_b = $unsigned(bubble_join_coalesced_delay_3_fifo_q[64:0]);

    // sel_for_coalesced_delay_3(BITSELECT,699)
    assign sel_for_coalesced_delay_3_b = $unsigned(bubble_select_coalesced_delay_3_fifo_b[63:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(bubble_select_coalesced_delay_3_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_fc153(BLACKBOX,99)@169
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_fc1_avm_address@20000000
    // out out_memdep_fc1_avm_burstcount@20000000
    // out out_memdep_fc1_avm_byteenable@20000000
    // out out_memdep_fc1_avm_enable@20000000
    // out out_memdep_fc1_avm_read@20000000
    // out out_memdep_fc1_avm_write@20000000
    // out out_memdep_fc1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@200
    // out out_o_writeack@200
    fc1_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_fc153 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_3_b),
        .in_i_predicate(sel_for_coalesced_delay_3_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_fc153_backStall),
        .in_i_valid(SE_out_coalesced_delay_3_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_b),
        .in_memdep_fc1_avm_readdata(in_memdep_fc1_avm_readdata),
        .in_memdep_fc1_avm_readdatavalid(in_memdep_fc1_avm_readdatavalid),
        .in_memdep_fc1_avm_waitrequest(in_memdep_fc1_avm_waitrequest),
        .in_memdep_fc1_avm_writeack(in_memdep_fc1_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_fc153_out_lsu_memdep_o_active),
        .out_memdep_fc1_avm_address(i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_address),
        .out_memdep_fc1_avm_burstcount(i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_burstcount),
        .out_memdep_fc1_avm_byteenable(i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_byteenable),
        .out_memdep_fc1_avm_enable(i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_enable),
        .out_memdep_fc1_avm_read(i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_read),
        .out_memdep_fc1_avm_write(i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_write),
        .out_memdep_fc1_avm_writedata(i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_fc153_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_fc153_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_fc153_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_fc153(STALLENABLE,873)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_fc153_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_fc153_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_fc153_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_fc153_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_fc153_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_fc153_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_fc153_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_fc153_wireValid) | SE_out_i_llvm_fpga_mem_memdep_fc153_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_fc153_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_backStall) & SE_out_i_llvm_fpga_mem_memdep_fc153_wireValid) | SE_out_i_llvm_fpga_mem_memdep_fc153_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_fc153_StallValid = SE_out_i_llvm_fpga_mem_memdep_fc153_backStall & SE_out_i_llvm_fpga_mem_memdep_fc153_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_fc153_toReg0 = SE_out_i_llvm_fpga_mem_memdep_fc153_StallValid & SE_out_i_llvm_fpga_mem_memdep_fc153_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_fc153_toReg1 = SE_out_i_llvm_fpga_mem_memdep_fc153_StallValid & SE_out_i_llvm_fpga_mem_memdep_fc153_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_fc153_or0 = SE_out_i_llvm_fpga_mem_memdep_fc153_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_fc153_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_fc153_consumed1 & SE_out_i_llvm_fpga_mem_memdep_fc153_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_fc153_backStall = SE_out_i_llvm_fpga_mem_memdep_fc153_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_fc153_V0 = SE_out_i_llvm_fpga_mem_memdep_fc153_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_fc153_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_fc153_V1 = SE_out_i_llvm_fpga_mem_memdep_fc153_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_fc153_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_fc153_wireValid = i_llvm_fpga_mem_memdep_fc153_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16(STALLENABLE,895)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_consumed1 = (~ (SR_SE_i_next_initerations_fc116_vt_select_0_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_StallValid = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_backStall & SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_toReg0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_toReg1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_or0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_consumed1 & SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_or0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_backStall = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_V0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_V1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_wireValid = i_llvm_fpga_pop_i2_initerations_pop14_fc16_out_valid_out;

    // SE_i_next_initerations_fc116_vt_select_0(STALLENABLE,926)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_fc116_vt_select_0_fromReg0 <= '0;
            SE_i_next_initerations_fc116_vt_select_0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_fc116_vt_select_0_fromReg0 <= SE_i_next_initerations_fc116_vt_select_0_toReg0;
            // Successor 1
            SE_i_next_initerations_fc116_vt_select_0_fromReg1 <= SE_i_next_initerations_fc116_vt_select_0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_fc116_vt_select_0_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_fc141_out_stall_out) & SE_i_next_initerations_fc116_vt_select_0_wireValid) | SE_i_next_initerations_fc116_vt_select_0_fromReg0;
    assign SE_i_next_initerations_fc116_vt_select_0_consumed1 = (~ (i_llvm_fpga_push_i2_initerations_push14_fc131_out_stall_out) & SE_i_next_initerations_fc116_vt_select_0_wireValid) | SE_i_next_initerations_fc116_vt_select_0_fromReg1;
    // Consuming
    assign SE_i_next_initerations_fc116_vt_select_0_StallValid = SE_i_next_initerations_fc116_vt_select_0_backStall & SE_i_next_initerations_fc116_vt_select_0_wireValid;
    assign SE_i_next_initerations_fc116_vt_select_0_toReg0 = SE_i_next_initerations_fc116_vt_select_0_StallValid & SE_i_next_initerations_fc116_vt_select_0_consumed0;
    assign SE_i_next_initerations_fc116_vt_select_0_toReg1 = SE_i_next_initerations_fc116_vt_select_0_StallValid & SE_i_next_initerations_fc116_vt_select_0_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_fc116_vt_select_0_or0 = SE_i_next_initerations_fc116_vt_select_0_consumed0;
    assign SE_i_next_initerations_fc116_vt_select_0_wireStall = ~ (SE_i_next_initerations_fc116_vt_select_0_consumed1 & SE_i_next_initerations_fc116_vt_select_0_or0);
    assign SE_i_next_initerations_fc116_vt_select_0_backStall = SE_i_next_initerations_fc116_vt_select_0_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_fc116_vt_select_0_V0 = SE_i_next_initerations_fc116_vt_select_0_wireValid & ~ (SE_i_next_initerations_fc116_vt_select_0_fromReg0);
    assign SE_i_next_initerations_fc116_vt_select_0_V1 = SE_i_next_initerations_fc116_vt_select_0_wireValid & ~ (SE_i_next_initerations_fc116_vt_select_0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_fc116_vt_select_0_wireValid = SR_SE_i_next_initerations_fc116_vt_select_0_V;

    // SE_out_i_llvm_fpga_push_i2_initerations_push14_fc131(STALLENABLE,917)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations_push14_fc131_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations_push14_fc131_wireValid = i_llvm_fpga_push_i2_initerations_push14_fc131_out_valid_out;

    // i_llvm_fpga_push_i2_initerations_push14_fc131(BLACKBOX,121)@198
    // in in_stall_in@20000000
    // out out_data_out@199
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@199
    fc1_i_llvm_fpga_push_i2_initerations_push14_0 thei_llvm_fpga_push_i2_initerations_push14_fc131 (
        .in_data_in(SR_SE_i_next_initerations_fc116_vt_select_0_D3),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i2_initerations_pop14_fc16_out_feedback_stall_out_14),
        .in_keep_going(SR_SE_i_next_initerations_fc116_vt_select_0_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations_push14_fc131_backStall),
        .in_valid_in(SE_i_next_initerations_fc116_vt_select_0_V1),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i2_initerations_push14_fc131_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i2_initerations_push14_fc131_out_feedback_valid_out_14),
        .out_stall_out(i_llvm_fpga_push_i2_initerations_push14_fc131_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations_push14_fc131_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo(BITJOIN,831)
    assign bubble_join_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_q = redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_out;

    // bubble_select_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo(BITSELECT,832)
    assign bubble_select_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b = $unsigned(bubble_join_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_q[0:0]);

    // i_llvm_fpga_pop_i2_initerations_pop14_fc16(BLACKBOX,110)@197
    // in in_stall_in@20000000
    // out out_data_out@198
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@198
    fc1_i_llvm_fpga_pop_i2_initerations_pop14_0 thei_llvm_fpga_pop_i2_initerations_pop14_fc16 (
        .in_data_in(c_i2_155_q),
        .in_dir(bubble_select_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b),
        .in_feedback_in_14(i_llvm_fpga_push_i2_initerations_push14_fc131_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i2_initerations_push14_fc131_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_backStall),
        .in_valid_in(SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop14_fc16_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i2_initerations_pop14_fc16_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations_pop14_fc16_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations_pop14_fc16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0(REG,736)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN == 1'b1)
        begin
            redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q <= $unsigned(SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_D0);
        end
    end

    // SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1(STALLENABLE,1069)
    // Valid signal propagation
    assign SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V0 = SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0;
    // Stall signal propagation
    assign SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_s_tv_0 = SR_SE_out_coalesced_delay_1_fifo_backStall & SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0;
    // Backward Enable generation
    assign SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN = ~ (SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_v_s_0 = SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN & SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V;
    // Backward Stall generation
    assign SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall = ~ (SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN == 1'b0)
            begin
                SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0 <= SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0 & SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_s_tv_0;
            end
            else
            begin
                SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_R_v_0 <= SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_v_s_0;
            end

        end
    end

    // SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1(STALLREG,1234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid <= 1'b0;
            SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid <= SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall & (SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid | SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid);

            if (SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_data0 <= $unsigned(redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid = SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V0;
    // Stall signal propagation
    assign SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall = SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid | ~ (SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid);

    // Valid
    assign SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V = SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid == 1'b1 ? SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid : SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_i_valid;

    assign SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_D0 = SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_valid == 1'b1 ? SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_r_data0 : redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_q;

    // SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0(STALLENABLE,1068)
    // Valid signal propagation
    assign SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V0 = SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0;
    // Stall signal propagation
    assign SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_s_tv_0 = SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backStall & SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0;
    // Backward Enable generation
    assign SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN = ~ (SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_v_s_0 = SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN & SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V;
    // Backward Stall generation
    assign SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall = ~ (SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backEN == 1'b0)
            begin
                SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0 <= SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0 & SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_s_tv_0;
            end
            else
            begin
                SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_R_v_0 <= SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_v_s_0;
            end

        end
    end

    // SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0(STALLREG,1233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid <= 1'b0;
            SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid <= SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall & (SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid | SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid);

            if (SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_data0 <= $unsigned(bubble_select_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid = SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall = SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid | ~ (SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid);

    // Valid
    assign SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_V = SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid == 1'b1 ? SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid : SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_i_valid;

    assign SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_D0 = SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_valid == 1'b1 ? SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_r_data0 : bubble_select_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_b;

    // SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo(STALLENABLE,1067)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0 <= '0;
            SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0 <= SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg0;
            // Successor 1
            SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1 <= SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed0 = (~ (SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_0_backStall) & SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid) | SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0;
    assign SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed1 = (~ (i_llvm_fpga_pop_i2_initerations_pop14_fc16_out_stall_out) & SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid) | SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1;
    // Consuming
    assign SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_StallValid = SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_backStall & SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid;
    assign SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg0 = SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_StallValid & SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed0;
    assign SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_toReg1 = SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_StallValid & SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_or0 = SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed0;
    assign SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireStall = ~ (SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_consumed1 & SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_or0);
    assign SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_backStall = SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V0 = SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid & ~ (SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg0);
    assign SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_V1 = SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid & ~ (SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_wireValid = redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out;

    // redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo(STALLFIFO,735)
    assign redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in = SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V3;
    assign redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in = SE_out_redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_backStall;
    assign redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_in = redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q;
    assign redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in_bitsignaltemp = redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in[0];
    assign redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in_bitsignaltemp = redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in[0];
    assign redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out[0] = redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out_bitsignaltemp;
    assign redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out[0] = redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo (
        .valid_in(redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_in_bitsignaltemp),
        .stall_in(redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_in_bitsignaltemp),
        .data_in(redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q),
        .valid_out(redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_valid_out_bitsignaltemp),
        .stall_out(redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out_bitsignaltemp),
        .data_out(redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0(REG,733)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN == 1'b1)
        begin
            redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q <= $unsigned(SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_D0);
        end
    end

    // SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0(STALLENABLE,1064)
    // Valid signal propagation
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V0 = SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0;
    // Stall signal propagation
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_s_tv_0 = SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall & SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0;
    // Backward Enable generation
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN = ~ (SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_v_s_0 = SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN & SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V;
    // Backward Stall generation
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall = ~ (SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backEN == 1'b0)
            begin
                SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0 <= SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0 & SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_s_tv_0;
            end
            else
            begin
                SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_R_v_0 <= SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_v_s_0;
            end

        end
    end

    // SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1(STALLREG,1231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid <= 1'b0;
            SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid <= SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall & (SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid | SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid);

            if (SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_data0 <= $unsigned(redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid = SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V0;
    // Stall signal propagation
    assign SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall = SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid | ~ (SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid);

    // Valid
    assign SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V = SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid == 1'b1 ? SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid : SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_i_valid;

    assign SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_D0 = SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_valid == 1'b1 ? SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_r_data0 : redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_q;

    // SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1(STALLENABLE,1065)
    // Valid signal propagation
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V0 = SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0;
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V1 = SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1;
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V2 = SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2;
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V3 = SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3;
    // Stall signal propagation
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_0 = i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_out_stall_out & SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0;
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_out_stall_out & SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1;
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_2 = i_llvm_fpga_pop_i2_cleanups_pop15_fc14_out_stall_out & SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2;
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_3 = redist33_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_196_fifo_stall_out & SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3;
    // Backward Enable generation
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or0 = SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_0;
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or1 = SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_1 | SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or0;
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or2 = SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_2 | SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or1;
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN = ~ (SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_3 | SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0 = SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN & SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V;
    // Backward Stall generation
    assign SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backStall = ~ (SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0 <= 1'b0;
            SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1 <= 1'b0;
            SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2 <= 1'b0;
            SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b0)
            begin
                SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0 <= SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0 & SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_0;
            end
            else
            begin
                SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_0 <= SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
            end

            if (SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b0)
            begin
                SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1 <= SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1 & SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_1;
            end
            else
            begin
                SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_1 <= SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
            end

            if (SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b0)
            begin
                SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2 <= SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2 & SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_2;
            end
            else
            begin
                SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_2 <= SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
            end

            if (SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b0)
            begin
                SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3 <= SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3 & SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_s_tv_3;
            end
            else
            begin
                SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_R_v_3 <= SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_v_s_0;
            end

        end
    end

    // SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x(STALLENABLE,936)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_V0 = SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_backStall = i_llvm_fpga_push_i2_cleanups_push15_fc149_out_stall_out | ~ (SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_wireValid = SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_V;

    // SE_out_i_llvm_fpga_push_i2_cleanups_push15_fc149(STALLENABLE,915)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push15_fc149_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push15_fc149_wireValid = i_llvm_fpga_push_i2_cleanups_push15_fc149_out_valid_out;

    // i_llvm_fpga_push_i2_cleanups_push15_fc149(BLACKBOX,120)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    fc1_i_llvm_fpga_push_i2_cleanups_push15_0 thei_llvm_fpga_push_i2_cleanups_push15_fc149 (
        .in_data_in(SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_D0),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i2_cleanups_pop15_fc14_out_feedback_stall_out_15),
        .in_keep_going(SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push15_fc149_backStall),
        .in_valid_in(SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i2_cleanups_push15_fc149_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i2_cleanups_push15_fc149_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push15_fc149_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push15_fc149_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1(REG,734)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_backEN == 1'b1)
        begin
            redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q <= $unsigned(SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_D0);
        end
    end

    // c_i2_155(CONSTANT,69)
    assign c_i2_155_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop15_fc14(BLACKBOX,109)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    fc1_i_llvm_fpga_pop_i2_cleanups_pop15_0 thei_llvm_fpga_pop_i2_cleanups_pop15_fc14 (
        .in_data_in(c_i2_155_q),
        .in_dir(redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i2_cleanups_push15_fc149_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i2_cleanups_push15_fc149_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_backStall),
        .in_valid_in(SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V2),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop15_fc14_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i2_cleanups_pop15_fc14_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop15_fc14_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop15_fc14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop15_fc14(BITJOIN,802)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_q = i_llvm_fpga_pop_i2_cleanups_pop15_fc14_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc14(BITSELECT,803)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_q[1:0]);

    // i_first_cleanup_fc114_sel_x(BITSELECT,54)@102
    assign i_first_cleanup_fc114_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_b[0:0];

    // bubble_join_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19(BITJOIN,784)
    assign bubble_join_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_q = i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19(BITSELECT,785)
    assign bubble_select_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_b = $unsigned(bubble_join_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_q[9:0]);

    // i_exitcond_fc121_cmp_nsign(LOGICAL,251)@102
    assign i_exitcond_fc121_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_b[9:9]));

    // i_notcmp_fc135(LOGICAL,130)@102
    assign i_notcmp_fc135_q = i_exitcond_fc121_cmp_nsign_q ^ VCC_q;

    // SE_in_redist19_i_masked_fc144_q_98_fifo(STALLENABLE,1043)
    // Valid signal propagation
    assign SE_in_redist19_i_masked_fc144_q_98_fifo_V0 = SE_in_redist19_i_masked_fc144_q_98_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist19_i_masked_fc144_q_98_fifo_backStall = redist19_i_masked_fc144_q_98_fifo_stall_out | ~ (SE_in_redist19_i_masked_fc144_q_98_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist19_i_masked_fc144_q_98_fifo_wireValid = SE_i_masked_fc144_V0;

    // SE_i_masked_fc144(STALLENABLE,922)
    // Valid signal propagation
    assign SE_i_masked_fc144_V0 = SE_i_masked_fc144_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_fc144_s_tv_0 = SE_in_redist19_i_masked_fc144_q_98_fifo_backStall & SE_i_masked_fc144_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_fc144_backEN = ~ (SE_i_masked_fc144_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_fc144_v_s_0 = SE_i_masked_fc144_backEN & SR_SE_i_masked_fc144_V;
    // Backward Stall generation
    assign SE_i_masked_fc144_backStall = ~ (SE_i_masked_fc144_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_fc144_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_fc144_backEN == 1'b0)
            begin
                SE_i_masked_fc144_R_v_0 <= SE_i_masked_fc144_R_v_0 & SE_i_masked_fc144_s_tv_0;
            end
            else
            begin
                SE_i_masked_fc144_R_v_0 <= SE_i_masked_fc144_v_s_0;
            end

        end
    end

    // SR_SE_i_masked_fc144(STALLREG,1232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_fc144_r_valid <= 1'b0;
            SR_SE_i_masked_fc144_r_data0 <= 1'bx;
            SR_SE_i_masked_fc144_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_fc144_r_valid <= SE_i_masked_fc144_backStall & (SR_SE_i_masked_fc144_r_valid | SR_SE_i_masked_fc144_i_valid);

            if (SR_SE_i_masked_fc144_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_fc144_r_data0 <= i_notcmp_fc135_q;
                SR_SE_i_masked_fc144_r_data1 <= i_first_cleanup_fc114_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_fc144_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V2;
    assign SR_SE_i_masked_fc144_i_valid = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_V3 & SR_SE_i_masked_fc144_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_fc144_backStall = SR_SE_i_masked_fc144_r_valid | ~ (SR_SE_i_masked_fc144_i_valid);

    // Valid
    assign SR_SE_i_masked_fc144_V = SR_SE_i_masked_fc144_r_valid == 1'b1 ? SR_SE_i_masked_fc144_r_valid : SR_SE_i_masked_fc144_i_valid;

    // Data0
    assign SR_SE_i_masked_fc144_D0 = SR_SE_i_masked_fc144_r_valid == 1'b1 ? SR_SE_i_masked_fc144_r_data0 : i_notcmp_fc135_q;
    // Data1
    assign SR_SE_i_masked_fc144_D1 = SR_SE_i_masked_fc144_r_valid == 1'b1 ? SR_SE_i_masked_fc144_r_data1 : i_first_cleanup_fc114_sel_x_b;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_fc136(STALLENABLE,912)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_fc136_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_consumed1 = (~ (SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_wireValid = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_and0;

    // SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137(STALLENABLE,900)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_V0 = SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_backStall = i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_wireValid = SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_V;

    // SE_out_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137(STALLENABLE,901)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_wireValid = i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_out_valid_out;

    // i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137(BLACKBOX,113)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    fc1_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_0 thei_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_D0),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_out_feedback_stall_out_11),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_V0),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_out_feedback_valid_out_11),
        .out_stall_out(i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i10_39858(CONSTANT,66)
    assign c_i10_39858_q = $unsigned(10'b0110001110);

    // i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19(BLACKBOX,104)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_stall_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    fc1_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_0 thei_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19 (
        .in_data_in(c_i10_39858_q),
        .in_dir(redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_backStall),
        .in_valid_in(SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V0),
        .out_data_out(i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_out_feedback_stall_out_11),
        .out_stall_out(i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19(STALLENABLE,883)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg0 <= SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg1 <= SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg2 <= SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg3 <= SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireValid) | SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_backStall) & SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireValid) | SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed2 = (~ (SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_backStall) & SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireValid) | SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed3 = (~ (SR_SE_i_masked_fc144_backStall) & SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireValid) | SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_StallValid = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_backStall & SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireValid;
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_toReg0 = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_StallValid & SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_toReg1 = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_StallValid & SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed1;
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_toReg2 = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_StallValid & SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed2;
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_toReg3 = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_StallValid & SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_or0 = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_or1 = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed1 & SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_or0;
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_or2 = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed2 & SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_or1;
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireStall = ~ (SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_consumed3 & SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_or2);
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_backStall = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_V0 = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_V1 = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_V2 = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_V3 = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_wireValid = i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_out_valid_out;

    // bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg(STALLFIFO,1222)
    assign bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_V0;
    assign bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_fc144(LOGICAL,124)@102 + 1
    assign i_masked_fc144_qi = SR_SE_i_masked_fc144_D0 & SR_SE_i_masked_fc144_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_fc144_delay ( .xin(i_masked_fc144_qi), .xout(i_masked_fc144_q), .ena(SE_i_masked_fc144_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist19_i_masked_fc144_q_98_fifo(STALLFIFO,716)
    assign redist19_i_masked_fc144_q_98_fifo_valid_in = SE_in_redist19_i_masked_fc144_q_98_fifo_V0;
    assign redist19_i_masked_fc144_q_98_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_backStall;
    assign redist19_i_masked_fc144_q_98_fifo_data_in = i_masked_fc144_q;
    assign redist19_i_masked_fc144_q_98_fifo_valid_in_bitsignaltemp = redist19_i_masked_fc144_q_98_fifo_valid_in[0];
    assign redist19_i_masked_fc144_q_98_fifo_stall_in_bitsignaltemp = redist19_i_masked_fc144_q_98_fifo_stall_in[0];
    assign redist19_i_masked_fc144_q_98_fifo_valid_out[0] = redist19_i_masked_fc144_q_98_fifo_valid_out_bitsignaltemp;
    assign redist19_i_masked_fc144_q_98_fifo_stall_out[0] = redist19_i_masked_fc144_q_98_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist19_i_masked_fc144_q_98_fifo (
        .valid_in(redist19_i_masked_fc144_q_98_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_i_masked_fc144_q_98_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_fc144_q),
        .valid_out(redist19_i_masked_fc144_q_98_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_i_masked_fc144_q_98_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_i_masked_fc144_q_98_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg(STALLFIFO,1223)
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_V0;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1(STALLENABLE,1170)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and0 = bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and1 = redist19_i_masked_fc144_q_98_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and2 = bubble_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and3 = bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and4 = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and5 = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_fc153_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_and5;

    // SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110(STALLENABLE,885)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_wireValid = i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124(STALLENABLE,902)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_V0 = SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_backStall = i_llvm_fpga_push_i1_exitcond722_push16_fc124_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_V;

    // SE_out_i_llvm_fpga_push_i1_exitcond722_push16_fc124(STALLENABLE,903)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond722_push16_fc124_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond722_push16_fc124_wireValid = i_llvm_fpga_push_i1_exitcond722_push16_fc124_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond722_push16_fc124(BLACKBOX,114)@200
    // in in_stall_in@20000000
    // out out_data_out@201
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@201
    fc1_i_llvm_fpga_push_i1_exitcond722_push16_0 thei_llvm_fpga_push_i1_exitcond722_push16_fc124 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_D0),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_out_feedback_stall_out_16),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond722_push16_fc124_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_V0),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_exitcond722_push16_fc124_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_exitcond722_push16_fc124_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond722_push16_fc124_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond722_push16_fc124_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond722_pop16_fc110(BLACKBOX,105)@199
    // in in_stall_in@20000000
    // out out_data_out@200
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@200
    fc1_i_llvm_fpga_pop_i1_exitcond722_pop16_0 thei_llvm_fpga_pop_i1_exitcond722_pop16_fc110 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D1),
        .in_feedback_in_16(i_llvm_fpga_push_i1_exitcond722_push16_fc124_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_exitcond722_push16_fc124_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,1075)
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
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
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

    // SE_out_i_llvm_fpga_push_i1_notcmp1223_push17_fc125(STALLENABLE,911)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_wireValid = i_llvm_fpga_push_i1_notcmp1223_push17_fc125_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp1223_push17_fc125(BLACKBOX,118)@200
    // in in_stall_in@20000000
    // out out_data_out@201
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@201
    fc1_i_llvm_fpga_push_i1_notcmp1223_push17_0 thei_llvm_fpga_push_i1_notcmp1223_push17_fc125 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_D0),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_out_feedback_stall_out_17),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_notcmp1223_push17_fc125_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_notcmp1223_push17_fc125_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp1223_push17_fc125_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp1223_push17_fc125_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1(REG,737)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_backEN == 1'b1)
        begin
            redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q <= $unsigned(SR_SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_D0);
        end
    end

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,837)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,838)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,693)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // SR_SE_out_coalesced_delay_1_fifo(STALLREG,1235)
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
                SR_SE_out_coalesced_delay_1_fifo_r_data1 <= $unsigned(redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data2 <= $unsigned(redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data3 <= $unsigned(sel_for_coalesced_delay_1_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_1_fifo_i_valid = SE_redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_V0 & SR_SE_out_coalesced_delay_1_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_1_fifo_backStall = SR_SE_out_coalesced_delay_1_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_1_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_1_fifo_V = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_valid : SR_SE_out_coalesced_delay_1_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_1_fifo_D0 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data0 : sel_for_coalesced_delay_1_b;
    // Data1
    assign SR_SE_out_coalesced_delay_1_fifo_D1 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data1 : redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q;
    // Data2
    assign SR_SE_out_coalesced_delay_1_fifo_D2 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data2 : redist34_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_198_1_q;
    // Data3
    assign SR_SE_out_coalesced_delay_1_fifo_D3 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data3 : sel_for_coalesced_delay_1_c;

    // i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111(BLACKBOX,108)@199
    // in in_stall_in@20000000
    // out out_data_out@200
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@200
    fc1_i_llvm_fpga_pop_i1_notcmp1223_pop17_0 thei_llvm_fpga_pop_i1_notcmp1223_pop17_fc111 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D3),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D2),
        .in_feedback_in_17(i_llvm_fpga_push_i1_notcmp1223_push17_fc125_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_notcmp1223_push17_fc125_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111(BITJOIN,798)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_q = i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111(BITSELECT,799)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111(STALLENABLE,891)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_wireValid = i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125(STALLENABLE,910)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_V0 = SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_backStall = i_llvm_fpga_push_i1_notcmp1223_push17_fc125_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125(STALLREG,1265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_data1 <= $unsigned(redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_and0 = SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_V2;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_V1 & SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_r_data1 : redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_q;

    // bubble_join_i_llvm_fpga_mem_memdep_fc153(BITJOIN,767)
    assign bubble_join_i_llvm_fpga_mem_memdep_fc153_q = i_llvm_fpga_mem_memdep_fc153_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_fc153(BITSELECT,768)
    assign bubble_select_i_llvm_fpga_mem_memdep_fc153_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_fc153_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_fc154(STALLENABLE,909)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_wireValid = i_llvm_fpga_push_i1_memdep_phi_push13_fc154_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push13_fc154(BLACKBOX,117)@200
    // in in_stall_in@20000000
    // out out_data_out@201
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@201
    fc1_i_llvm_fpga_push_i1_memdep_phi_push13_0 thei_llvm_fpga_push_i1_memdep_phi_push13_fc154 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_D0),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_out_feedback_stall_out_13),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_V0),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_memdep_phi_push13_fc154_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_memdep_phi_push13_fc154_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push13_fc154_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push13_fc154_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154(STALLENABLE,908)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_backStall = i_llvm_fpga_push_i1_memdep_phi_push13_fc154_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_wireValid = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_V;

    // SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154(STALLREG,1264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_valid <= SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_backStall & (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_valid | SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_mem_memdep_fc153_b);
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_data1 <= $unsigned(redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_and0 = SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_V1;
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_i_valid = SE_out_i_llvm_fpga_mem_memdep_fc153_V1 & SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_backStall = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_V = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_valid : SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_D0 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_data0 : bubble_select_i_llvm_fpga_mem_memdep_fc153_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_D1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_r_data1 : redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_q;

    // bubble_join_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110(BITJOIN,788)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_q = i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110(BITSELECT,789)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_q[0:0]);

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124(STALLREG,1261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_data1 <= $unsigned(redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_and0 = SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_V0;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_i_valid = SE_out_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_V1 & SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_r_data1 : redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_q;

    // SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1(STALLENABLE,1056)
    // Valid signal propagation
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_V0 = SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_0;
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_V1 = SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_1;
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_V2 = SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_2;
    // Stall signal propagation
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_s_tv_0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond722_push16_fc124_backStall & SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_0;
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push13_fc154_backStall & SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_1;
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_s_tv_2 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1223_push17_fc125_backStall & SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_2;
    // Backward Enable generation
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_or0 = SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_s_tv_0;
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_or1 = SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_s_tv_1 | SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_or0;
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backEN = ~ (SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_s_tv_2 | SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_v_s_0 = SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backEN & SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_V;
    // Backward Stall generation
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backStall = ~ (SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_0 <= 1'b0;
            SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_1 <= 1'b0;
            SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backEN == 1'b0)
            begin
                SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_0 <= SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_0 & SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_s_tv_0;
            end
            else
            begin
                SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_0 <= SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_v_s_0;
            end

            if (SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backEN == 1'b0)
            begin
                SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_1 <= SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_1 & SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_s_tv_1;
            end
            else
            begin
                SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_1 <= SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_v_s_0;
            end

            if (SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backEN == 1'b0)
            begin
                SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_2 <= SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_2 & SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_s_tv_2;
            end
            else
            begin
                SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_R_v_2 <= SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_v_s_0;
            end

        end
    end

    // SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1(STALLREG,1260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_valid <= 1'b0;
            SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_valid <= SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backStall & (SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_valid | SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_i_valid);

            if (SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_data0 <= $unsigned(redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_i_valid = SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_V0;
    // Stall signal propagation
    assign SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backStall = SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_valid | ~ (SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_i_valid);

    // Valid
    assign SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_V = SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_valid == 1'b1 ? SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_valid : SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_i_valid;

    assign SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_D0 = SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_valid == 1'b1 ? SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_r_data0 : redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_q;

    // SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0(STALLENABLE,1055)
    // Valid signal propagation
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_V0 = SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_R_v_0;
    // Stall signal propagation
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_s_tv_0 = SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_1_backStall & SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_R_v_0;
    // Backward Enable generation
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_backEN = ~ (SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_v_s_0 = SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_backEN & SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_V;
    // Backward Stall generation
    assign SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_backStall = ~ (SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_backEN == 1'b0)
            begin
                SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_R_v_0 <= SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_R_v_0 & SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_s_tv_0;
            end
            else
            begin
                SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_R_v_0 <= SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_v_s_0;
            end

        end
    end

    // SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0(STALLREG,1259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_valid <= 1'b0;
            SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_valid <= SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_backStall & (SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_valid | SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_i_valid);

            if (SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_data0 <= $unsigned(bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_i_valid = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_backStall = SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_valid | ~ (SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_i_valid);

    // Valid
    assign SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_V = SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_valid == 1'b1 ? SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_valid : SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_i_valid;

    assign SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_D0 = SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_valid == 1'b1 ? SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_r_data0 : bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_b;

    // rightShiftStage0Idx1Rng1_uid245_i_next_initerations_fc10_shift_x(BITSELECT,244)@198
    assign rightShiftStage0Idx1Rng1_uid245_i_next_initerations_fc10_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations_pop14_fc16_b[1:1];

    // rightShiftStage0Idx1_uid247_i_next_initerations_fc10_shift_x(BITJOIN,246)@198
    assign rightShiftStage0Idx1_uid247_i_next_initerations_fc10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid245_i_next_initerations_fc10_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations_pop14_fc16(BITJOIN,805)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations_pop14_fc16_q = i_llvm_fpga_pop_i2_initerations_pop14_fc16_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations_pop14_fc16(BITSELECT,806)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations_pop14_fc16_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations_pop14_fc16_q[1:0]);

    // rightShiftStage0_uid249_i_next_initerations_fc10_shift_x(MUX,248)@198
    assign rightShiftStage0_uid249_i_next_initerations_fc10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid249_i_next_initerations_fc10_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations_pop14_fc16_b or rightShiftStage0Idx1_uid247_i_next_initerations_fc10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid249_i_next_initerations_fc10_shift_x_s)
            1'b0 : rightShiftStage0_uid249_i_next_initerations_fc10_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations_pop14_fc16_b;
            1'b1 : rightShiftStage0_uid249_i_next_initerations_fc10_shift_x_q = rightShiftStage0Idx1_uid247_i_next_initerations_fc10_shift_x_q;
            default : rightShiftStage0_uid249_i_next_initerations_fc10_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_fc116_vt_select_0(BITSELECT,129)@198
    assign i_next_initerations_fc116_vt_select_0_b = rightShiftStage0_uid249_i_next_initerations_fc10_shift_x_q[0:0];

    // i_next_initerations_fc116_vt_join(BITJOIN,128)@198
    assign i_next_initerations_fc116_vt_join_q = {GND_q, i_next_initerations_fc116_vt_select_0_b};

    // i_last_initeration_fc132_sel_x(BITSELECT,57)@198
    assign i_last_initeration_fc132_sel_x_b = i_next_initerations_fc116_vt_join_q[0:0];

    // SR_SE_i_next_initerations_fc116_vt_select_0(STALLREG,1262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_fc116_vt_select_0_r_valid <= 1'b0;
            SR_SE_i_next_initerations_fc116_vt_select_0_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_fc116_vt_select_0_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_fc116_vt_select_0_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_fc116_vt_select_0_r_data3 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_fc116_vt_select_0_r_valid <= SE_i_next_initerations_fc116_vt_select_0_backStall & (SR_SE_i_next_initerations_fc116_vt_select_0_r_valid | SR_SE_i_next_initerations_fc116_vt_select_0_i_valid);

            if (SR_SE_i_next_initerations_fc116_vt_select_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_fc116_vt_select_0_r_data0 <= i_last_initeration_fc132_sel_x_b;
                SR_SE_i_next_initerations_fc116_vt_select_0_r_data1 <= $unsigned(bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_b);
                SR_SE_i_next_initerations_fc116_vt_select_0_r_data2 <= $unsigned(bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_b);
                SR_SE_i_next_initerations_fc116_vt_select_0_r_data3 <= i_next_initerations_fc116_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_fc116_vt_select_0_and0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_V1;
    assign SR_SE_i_next_initerations_fc116_vt_select_0_i_valid = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_V0 & SR_SE_i_next_initerations_fc116_vt_select_0_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_fc116_vt_select_0_backStall = SR_SE_i_next_initerations_fc116_vt_select_0_r_valid | ~ (SR_SE_i_next_initerations_fc116_vt_select_0_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_fc116_vt_select_0_V = SR_SE_i_next_initerations_fc116_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_fc116_vt_select_0_r_valid : SR_SE_i_next_initerations_fc116_vt_select_0_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_fc116_vt_select_0_D0 = SR_SE_i_next_initerations_fc116_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_fc116_vt_select_0_r_data0 : i_last_initeration_fc132_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_fc116_vt_select_0_D1 = SR_SE_i_next_initerations_fc116_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_fc116_vt_select_0_r_data1 : bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations_fc116_vt_select_0_D2 = SR_SE_i_next_initerations_fc116_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_fc116_vt_select_0_r_data2 : bubble_select_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations_fc116_vt_select_0_D3 = SR_SE_i_next_initerations_fc116_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_fc116_vt_select_0_r_data3 : i_next_initerations_fc116_vt_join_q;

    // SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo(STALLENABLE,1054)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_fromReg0 <= '0;
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_fromReg0 <= SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_toReg0;
            // Successor 1
            SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_fromReg1 <= SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_consumed0 = (~ (SR_SE_i_next_initerations_fc116_vt_select_0_backStall) & SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_wireValid) | SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_fromReg0;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_consumed1 = (~ (SR_SE_redist25_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_100_0_backStall) & SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_wireValid) | SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_fromReg1;
    // Consuming
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_StallValid = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_backStall & SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_wireValid;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_toReg0 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_StallValid & SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_consumed0;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_toReg1 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_StallValid & SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_or0 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_consumed0;
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_wireStall = ~ (SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_consumed1 & SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_or0);
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_backStall = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_V0 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_wireValid & ~ (SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_fromReg0);
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_V1 = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_wireValid & ~ (SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_wireValid = redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_valid_out;

    // redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo(STALLFIFO,724)
    assign redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_valid_in = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V3;
    assign redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_stall_in = SE_out_redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_backStall;
    assign redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_data_in = redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_q;
    assign redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_valid_in_bitsignaltemp = redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_valid_in[0];
    assign redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_stall_in_bitsignaltemp = redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_stall_in[0];
    assign redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_valid_out[0] = redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_valid_out_bitsignaltemp;
    assign redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_stall_out[0] = redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo (
        .valid_in(redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_stall_in_bitsignaltemp),
        .data_in(redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_q),
        .valid_out(redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc10_shift_x(BITSELECT,237)@102
    assign leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc10_shift_x_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc10_shift_x_b = leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc10_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid239_i_cleanups_shl_fc10_shift_x(BITJOIN,238)@102
    assign leftShiftStage0Idx1_uid239_i_cleanups_shl_fc10_shift_x_q = {leftShiftStage0Idx1Rng1_uid238_i_cleanups_shl_fc10_shift_x_b, GND_q};

    // leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x(MUX,240)@102
    assign leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_b or leftShiftStage0Idx1_uid239_i_cleanups_shl_fc10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_s)
            1'b0 : leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_b;
            1'b1 : leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_q = leftShiftStage0Idx1_uid239_i_cleanups_shl_fc10_shift_x_q;
            default : leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_fc115_vt_select_1(BITSELECT,79)@102
    assign i_cleanups_shl_fc115_vt_select_1_b = leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_q[1:1];

    // i_cleanups_shl_fc115_vt_join(BITJOIN,78)@102
    assign i_cleanups_shl_fc115_vt_join_q = {i_cleanups_shl_fc115_vt_select_1_b, GND_q};

    // i_or_fc143(LOGICAL,131)@102
    assign i_or_fc143_q = i_notcmp_fc135_q | i_first_cleanup_xor_fc130_q;

    // i_next_cleanups_fc147(MUX,126)@102
    assign i_next_cleanups_fc147_s = i_or_fc143_q;
    always @(i_next_cleanups_fc147_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_b or i_cleanups_shl_fc115_vt_join_q)
    begin
        unique case (i_next_cleanups_fc147_s)
            1'b0 : i_next_cleanups_fc147_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_b;
            1'b1 : i_next_cleanups_fc147_q = i_cleanups_shl_fc115_vt_join_q;
            default : i_next_cleanups_fc147_q = 2'b0;
        endcase
    end

    // SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x(STALLREG,1266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_valid <= 1'b0;
            SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_data0 <= 2'bxx;
            SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_valid <= SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_backStall & (SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_valid | SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_i_valid);

            if (SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_data0 <= i_next_cleanups_fc147_q;
                SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_data1 <= $unsigned(redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_V1;
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_and1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V0 & SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_and0;
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_i_valid = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V2 & SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_and1;
    // Stall signal propagation
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_backStall = SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_valid | ~ (SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_i_valid);

    // Valid
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_V = SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_valid : SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_i_valid;

    // Data0
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_D0 = SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_data0 : i_next_cleanups_fc147_q;
    // Data1
    assign SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_D1 = SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_r_data1 : redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_q;

    // bubble_join_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo(BITJOIN,822)
    assign bubble_join_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_q = redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_data_out;

    // bubble_select_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo(BITSELECT,823)
    assign bubble_select_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_b = $unsigned(bubble_join_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_q[0:0]);

    // SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128(STALLREG,1263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_valid <= SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_backStall & (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_valid | SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_data0 <= $unsigned(bubble_select_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_b);
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_data1 <= $unsigned(redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_and0 = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V1;
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_i_valid = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_V0 & SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_backStall = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_V = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_valid : SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_D0 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_data0 : bubble_select_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_D1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_r_data1 : redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_q;

    // c_i10_161(CONSTANT,65)
    assign c_i10_161_q = $unsigned(10'b1111111111);

    // i_fpga_indvars_iv_next_fc123(ADD,84)@102
    assign i_fpga_indvars_iv_next_fc123_a = {1'b0, bubble_select_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_b};
    assign i_fpga_indvars_iv_next_fc123_b = {1'b0, c_i10_161_q};
    assign i_fpga_indvars_iv_next_fc123_o = $unsigned(i_fpga_indvars_iv_next_fc123_a) + $unsigned(i_fpga_indvars_iv_next_fc123_b);
    assign i_fpga_indvars_iv_next_fc123_q = i_fpga_indvars_iv_next_fc123_o[10:0];

    // bgTrunc_i_fpga_indvars_iv_next_fc123_sel_x(BITSELECT,2)@102
    assign bgTrunc_i_fpga_indvars_iv_next_fc123_sel_x_b = i_fpga_indvars_iv_next_fc123_q[9:0];

    // SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137(STALLREG,1258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_data0 <= 10'bxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_valid <= SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_backStall & (SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_valid | SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_data0 <= bgTrunc_i_fpga_indvars_iv_next_fc123_sel_x_b;
                SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_data1 <= $unsigned(redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_and0 = SE_out_i_llvm_fpga_pop_i10_fpga_indvars_iv_pop11_fc19_V2;
    assign SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_i_valid = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V0 & SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_backStall = SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_V = SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_valid : SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_D0 = SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_data0 : bgTrunc_i_fpga_indvars_iv_next_fc123_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_D1 = SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_r_data1 : redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_q;

    // SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1(STALLENABLE,1052)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V0 = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_0;
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V1 = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_1;
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V2 = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_2;
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V3 = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_3;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_0 = SR_SE_in_i_llvm_fpga_push_i10_fpga_indvars_iv_push11_fc137_backStall & SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_0;
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_backStall & SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_1;
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_2 = SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_backStall & SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_2;
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_3 = redist24_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_98_fifo_stall_out & SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_3;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_or0 = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_0;
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_or1 = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_1 | SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_or0;
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_or2 = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_2 | SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_or1;
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backEN = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_3 | SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_v_s_0 = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backEN & SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backStall = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_1 <= 1'b0;
            SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_2 <= 1'b0;
            SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_0 & SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_v_s_0;
            end

            if (SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_1 <= SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_1 & SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_1 <= SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_v_s_0;
            end

            if (SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_2 <= SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_2 & SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_2;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_2 <= SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_v_s_0;
            end

            if (SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_3 <= SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_3 & SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_s_tv_3;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_R_v_3 <= SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_v_s_0;
            end

        end
    end

    // SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1(STALLREG,1257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_valid <= 1'b0;
            SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_valid <= SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backStall & (SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_valid | SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_i_valid);

            if (SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_data0 <= $unsigned(redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_i_valid = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backStall = SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_valid | ~ (SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_i_valid);

    // Valid
    assign SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_V = SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_valid : SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_i_valid;

    assign SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_D0 = SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_r_data0 : redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_q;

    // SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0(STALLENABLE,1051)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_V0 = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_s_tv_0 = SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_1_backStall & SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_backEN = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_v_s_0 = SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_backEN & SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_V;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_backStall = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_R_v_0 & SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0(STALLREG,1256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_valid <= 1'b0;
            SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_valid <= SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_backStall & (SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_valid | SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_i_valid);

            if (SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_fc15_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_V3;
    // Stall signal propagation
    assign SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_backStall = SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_valid | ~ (SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_i_valid);

    // Valid
    assign SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_V = SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_valid : SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_i_valid;

    assign SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_D0 = SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_r_data0 : bubble_select_i_llvm_fpga_pipeline_keep_going_fc15_b;

    // SE_bgTrunc_i_inc_fc120_sel_x(STALLENABLE,843)
    // Valid signal propagation
    assign SE_bgTrunc_i_inc_fc120_sel_x_V0 = SE_bgTrunc_i_inc_fc120_sel_x_wireValid;
    // Backward Stall generation
    assign SE_bgTrunc_i_inc_fc120_sel_x_backStall = i_llvm_fpga_push_i32_j_013_push12_fc134_out_stall_out | ~ (SE_bgTrunc_i_inc_fc120_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bgTrunc_i_inc_fc120_sel_x_and0 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_V2;
    assign SE_bgTrunc_i_inc_fc120_sel_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_V2 & SE_bgTrunc_i_inc_fc120_sel_x_and0;

    // SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126(STALLREG,1267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_valid <= SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_backStall & (SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_valid | SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_data0 <= $unsigned(redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_1_q);
                SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_fc15_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_and0 = SE_i_arrayidx6_fc10_mult_x_sums_result_add_0_0_p2_of_2_V1;
    assign SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_V1 & SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_backStall = SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_V = SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_valid : SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_D0 = SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_data0 : redist21_i_llvm_fpga_pop_i32_i_014_pop924_pop18_fc112_out_data_out_4_1_q;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_D1 = SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_fc15_b;

    // bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg(STALLFIFO,1221)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(101),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_fc15(STALLENABLE,881)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_fc15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_fc15_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_fc15_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_fc15_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_fc15_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i32_i_014_pop924_push18_fc126_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed2 = (~ (SE_bgTrunc_i_inc_fc120_sel_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed3 = (~ (SR_SE_redist23_i_llvm_fpga_pipeline_keep_going_fc15_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_fc15_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_fc15_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_fc15_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_fc15_or2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_fc15_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_fc15_wireValid = i_llvm_fpga_pipeline_keep_going_fc15_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_fc136(STALLENABLE,913)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_fc136_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_fc136_wireValid = i_llvm_fpga_push_i1_notexitcond_fc136_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_fc136(BLACKBOX,119)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    fc1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_fc136 (
        .in_data_in(i_exitcond_fc121_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_fc15_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_fc114_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_fc136_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_fc136_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_fc136_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_fc136_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_fc136_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_fc141(STALLENABLE,905)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_fc141_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_fc141_wireValid = i_llvm_fpga_push_i1_lastiniteration_fc141_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_fc141(BLACKBOX,115)@198
    // in in_stall_in@20000000
    // out out_data_out@199
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@199
    fc1_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_fc141 (
        .in_data_in(SR_SE_i_next_initerations_fc116_vt_select_0_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_fc15_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_fc116_vt_select_0_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_fc141_backStall),
        .in_valid_in(SE_i_next_initerations_fc116_vt_select_0_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_fc141_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_fc141_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_fc141_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_fc141_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_fc15(BLACKBOX,103)@99
    // in in_stall_in@20000000
    // out out_data_out@100
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@100
    fc1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_fc15 (
        .in_data_in(redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_fc141_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_fc141_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_fc136_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_fc136_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_fc15_backStall),
        .in_valid_in(SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_fc15_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_fc15_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_fc15_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_fc15_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_fc15_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_fc15_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_fc15_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_fc15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0(STALLREG,1230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid <= 1'b0;
            SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid <= SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall & (SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid | SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid);

            if (SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_data0 <= $unsigned(redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V0;
    // Stall signal propagation
    assign SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall = SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid | ~ (SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid);

    // Valid
    assign SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_V = SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid == 1'b1 ? SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid : SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_i_valid;

    assign SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_D0 = SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_valid == 1'b1 ? SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_r_data0 : redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q;

    // redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2(REG,731)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_backEN == 1'b1)
        begin
            redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q <= $unsigned(SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_D0);
        end
    end

    // SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3(STALLREG,1229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid <= 1'b0;
            SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall & (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid | SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid);

            if (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_data0 <= $unsigned(redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_V0;
    // Stall signal propagation
    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid | ~ (SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid);

    // Valid
    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid == 1'b1 ? SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid : SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_i_valid;

    assign SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_D0 = SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_valid == 1'b1 ? SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_r_data0 : redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_2_q;

    // SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3(STALLENABLE,1063)
    // Valid signal propagation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V0 = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0;
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V1 = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1;
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V2 = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2;
    // Stall signal propagation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_0 = SR_SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_0_backStall & SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0;
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_1 = i_llvm_fpga_pipeline_keep_going_fc15_out_stall_out & SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1;
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_2 = i_llvm_fpga_pop_i32_j_013_pop12_fc17_out_stall_out & SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2;
    // Backward Enable generation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_or0 = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_0;
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_or1 = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_1 | SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_or0;
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN = ~ (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_2 | SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0 = SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN & SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V;
    // Backward Stall generation
    assign SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backStall = ~ (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0 <= 1'b0;
            SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1 <= 1'b0;
            SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN == 1'b0)
            begin
                SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0 <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0 & SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_0;
            end
            else
            begin
                SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_0 <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0;
            end

            if (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN == 1'b0)
            begin
                SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1 <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1 & SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_1;
            end
            else
            begin
                SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_1 <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0;
            end

            if (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN == 1'b0)
            begin
                SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2 <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2 & SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_s_tv_2;
            end
            else
            begin
                SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_R_v_2 <= SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_v_s_0;
            end

        end
    end

    // i_cmp4_fc117(LOGICAL,80)@100 + 1
    assign i_cmp4_fc117_qi = $unsigned(bubble_select_i_llvm_fpga_pop_i32_j_013_pop12_fc17_b == c_i32_057_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp4_fc117_delay ( .xin(i_cmp4_fc117_qi), .xout(i_cmp4_fc117_q), .ena(SE_i_cmp4_fc117_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_redist27_i_cmp4_fc117_q_2_0(STALLENABLE,1057)
    // Valid signal propagation
    assign SE_redist27_i_cmp4_fc117_q_2_0_V0 = SE_redist27_i_cmp4_fc117_q_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist27_i_cmp4_fc117_q_2_0_s_tv_0 = SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_backStall & SE_redist27_i_cmp4_fc117_q_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist27_i_cmp4_fc117_q_2_0_backEN = ~ (SE_redist27_i_cmp4_fc117_q_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_cmp4_fc117_q_2_0_v_s_0 = SE_redist27_i_cmp4_fc117_q_2_0_backEN & SR_SE_redist27_i_cmp4_fc117_q_2_0_V;
    // Backward Stall generation
    assign SE_redist27_i_cmp4_fc117_q_2_0_backStall = ~ (SE_redist27_i_cmp4_fc117_q_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_cmp4_fc117_q_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_cmp4_fc117_q_2_0_backEN == 1'b0)
            begin
                SE_redist27_i_cmp4_fc117_q_2_0_R_v_0 <= SE_redist27_i_cmp4_fc117_q_2_0_R_v_0 & SE_redist27_i_cmp4_fc117_q_2_0_s_tv_0;
            end
            else
            begin
                SE_redist27_i_cmp4_fc117_q_2_0_R_v_0 <= SE_redist27_i_cmp4_fc117_q_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist27_i_cmp4_fc117_q_2_0(STALLREG,1254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist27_i_cmp4_fc117_q_2_0_r_valid <= 1'b0;
            SR_SE_redist27_i_cmp4_fc117_q_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist27_i_cmp4_fc117_q_2_0_r_valid <= SE_redist27_i_cmp4_fc117_q_2_0_backStall & (SR_SE_redist27_i_cmp4_fc117_q_2_0_r_valid | SR_SE_redist27_i_cmp4_fc117_q_2_0_i_valid);

            if (SR_SE_redist27_i_cmp4_fc117_q_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist27_i_cmp4_fc117_q_2_0_r_data0 <= i_cmp4_fc117_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist27_i_cmp4_fc117_q_2_0_i_valid = SE_i_cmp4_fc117_V0;
    // Stall signal propagation
    assign SR_SE_redist27_i_cmp4_fc117_q_2_0_backStall = SR_SE_redist27_i_cmp4_fc117_q_2_0_r_valid | ~ (SR_SE_redist27_i_cmp4_fc117_q_2_0_i_valid);

    // Valid
    assign SR_SE_redist27_i_cmp4_fc117_q_2_0_V = SR_SE_redist27_i_cmp4_fc117_q_2_0_r_valid == 1'b1 ? SR_SE_redist27_i_cmp4_fc117_q_2_0_r_valid : SR_SE_redist27_i_cmp4_fc117_q_2_0_i_valid;

    assign SR_SE_redist27_i_cmp4_fc117_q_2_0_D0 = SR_SE_redist27_i_cmp4_fc117_q_2_0_r_valid == 1'b1 ? SR_SE_redist27_i_cmp4_fc117_q_2_0_r_data0 : i_cmp4_fc117_q;

    // SE_i_cmp4_fc117(STALLENABLE,858)
    // Valid signal propagation
    assign SE_i_cmp4_fc117_V0 = SE_i_cmp4_fc117_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp4_fc117_s_tv_0 = SR_SE_redist27_i_cmp4_fc117_q_2_0_backStall & SE_i_cmp4_fc117_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp4_fc117_backEN = ~ (SE_i_cmp4_fc117_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp4_fc117_v_s_0 = SE_i_cmp4_fc117_backEN & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_V0;
    // Backward Stall generation
    assign SE_i_cmp4_fc117_backStall = ~ (SE_i_cmp4_fc117_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp4_fc117_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp4_fc117_backEN == 1'b0)
            begin
                SE_i_cmp4_fc117_R_v_0 <= SE_i_cmp4_fc117_R_v_0 & SE_i_cmp4_fc117_s_tv_0;
            end
            else
            begin
                SE_i_cmp4_fc117_R_v_0 <= SE_i_cmp4_fc117_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17(STALLENABLE,899)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_consumed0 = (~ (SE_i_cmp4_fc117_backStall) & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_consumed1 = (~ (SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_consumed2 = (~ (SE_bgTrunc_i_inc_fc120_sel_x_backStall) & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_StallValid = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_backStall & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_toReg0 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_StallValid & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_toReg1 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_StallValid & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_toReg2 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_StallValid & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_or0 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_or1 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_consumed1 & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_or0;
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_consumed2 & SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_or1);
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_backStall = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_V0 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_V1 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_V2 = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_wireValid = i_llvm_fpga_pop_i32_j_013_pop12_fc17_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_j_013_push12_fc134(STALLENABLE,921)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_013_push12_fc134_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_013_push12_fc134_wireValid = i_llvm_fpga_push_i32_j_013_push12_fc134_out_valid_out;

    // c_i32_159(CONSTANT,71)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_fc120(ADD,93)@100
    assign i_inc_fc120_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_j_013_pop12_fc17_b};
    assign i_inc_fc120_b = {1'b0, c_i32_159_q};
    assign i_inc_fc120_o = $unsigned(i_inc_fc120_a) + $unsigned(i_inc_fc120_b);
    assign i_inc_fc120_q = i_inc_fc120_o[32:0];

    // bgTrunc_i_inc_fc120_sel_x(BITSELECT,3)@100
    assign bgTrunc_i_inc_fc120_sel_x_b = i_inc_fc120_q[31:0];

    // i_llvm_fpga_push_i32_j_013_push12_fc134(BLACKBOX,123)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    fc1_i_llvm_fpga_push_i32_j_013_push12_0 thei_llvm_fpga_push_i32_j_013_push12_fc134 (
        .in_data_in(bgTrunc_i_inc_fc120_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i32_j_013_pop12_fc17_out_feedback_stall_out_12),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_fc15_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_013_push12_fc134_backStall),
        .in_valid_in(SE_bgTrunc_i_inc_fc120_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i32_j_013_push12_fc134_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i32_j_013_push12_fc134_out_feedback_valid_out_12),
        .out_stall_out(i_llvm_fpga_push_i32_j_013_push12_fc134_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_013_push12_fc134_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3(REG,732)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_backEN == 1'b1)
        begin
            redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q <= $unsigned(SR_SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_D0);
        end
    end

    // i_llvm_fpga_pop_i32_j_013_pop12_fc17(BLACKBOX,112)@99
    // in in_stall_in@20000000
    // out out_data_out@100
    // out out_feedback_stall_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@100
    fc1_i_llvm_fpga_pop_i32_j_013_pop12_0 thei_llvm_fpga_pop_i32_j_013_pop12_fc17 (
        .in_data_in(c_i32_057_recast_x_q),
        .in_dir(redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_q),
        .in_feedback_in_12(i_llvm_fpga_push_i32_j_013_push12_fc134_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i32_j_013_push12_fc134_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_backStall),
        .in_valid_in(SE_redist31_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_98_3_V2),
        .out_data_out(i_llvm_fpga_pop_i32_j_013_pop12_fc17_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i32_j_013_pop12_fc17_out_feedback_stall_out_12),
        .out_stall_out(i_llvm_fpga_pop_i32_j_013_pop12_fc17_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_013_pop12_fc17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_j_013_pop12_fc17(BITJOIN,812)
    assign bubble_join_i_llvm_fpga_pop_i32_j_013_pop12_fc17_q = i_llvm_fpga_pop_i32_j_013_pop12_fc17_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_013_pop12_fc17(BITSELECT,813)
    assign bubble_select_i_llvm_fpga_pop_i32_j_013_pop12_fc17_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_013_pop12_fc17_q[31:0]);

    // i_arrayidx10_fc10_c_i2_01_x(CONSTANT,19)
    assign i_arrayidx10_fc10_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,602)@100
    assign i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_i_llvm_fpga_pop_i32_j_013_pop12_fc17_b, i_arrayidx10_fc10_c_i2_01_x_q};

    // i_arrayidx6_fc10_add_x_p1_of_2(ADD,549)@99 + 1
    assign i_arrayidx6_fc10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_D0};
    assign i_arrayidx6_fc10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_fc10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx6_fc10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx6_fc10_add_x_p1_of_2_o <= $unsigned(i_arrayidx6_fc10_add_x_p1_of_2_a) + $unsigned(i_arrayidx6_fc10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx6_fc10_add_x_p1_of_2_c[0] = i_arrayidx6_fc10_add_x_p1_of_2_o[52];
    assign i_arrayidx6_fc10_add_x_p1_of_2_q = i_arrayidx6_fc10_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,1001)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0 <= '0;
            SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0 <= SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg0;
            // Successor 1
            SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1 <= SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed0 = (~ (SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backStall) & SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid) | SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0;
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed1 = (~ (SR_SE_i_arrayidx8_fc10_add_x_p1_of_2_backStall) & SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid) | SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1;
    // Consuming
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_StallValid = SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg0 = SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_StallValid & SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_toReg1 = SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_StallValid & SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed1;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_or0 = SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed0;
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireStall = ~ (SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_consumed1 & SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_or0);
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid & ~ (SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg0);
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V1 = SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid & ~ (SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel0_2_V1;
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_out_i_llvm_fpga_pop_i32_j_013_pop12_fc17_V1 & SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_i_arrayidx6_fc10_add_x_p1_of_2(STALLENABLE,986)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc10_add_x_p1_of_2_V0 = SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx6_fc10_add_x_p1_of_2_V1 = SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx6_fc10_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx6_fc10_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_backStall & SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx6_fc10_add_x_p1_of_2_or0 = SE_i_arrayidx6_fc10_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx6_fc10_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx6_fc10_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx6_fc10_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx6_fc10_add_x_p1_of_2_v_s_0 = SE_i_arrayidx6_fc10_add_x_p1_of_2_backEN & SR_SE_i_arrayidx6_fc10_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc10_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx6_fc10_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx6_fc10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_0 & SE_i_arrayidx6_fc10_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx6_fc10_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx6_fc10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_1 & SE_i_arrayidx6_fc10_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx6_fc10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx6_fc10_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2(STALLREG,1244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_valid <= SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx6_fc10_add_x_p1_of_2_q);
                SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_and0 = SE_i_arrayidx6_fc10_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_i_valid = SE_i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_V = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_data0 : i_arrayidx6_fc10_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_r_data1 : i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // i_arrayidx6_fc10_dupName_0_add_x_p1_of_2(ADD,540)@100 + 1
    assign i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_D0};
    assign i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q = i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0(BITSELECT,579)
    assign i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(c_i32_057_recast_x_q[29:18]);

    // i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,581)@101
    assign i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx6_fc10_add_x_p2_of_2(ADD,550)@100 + 1
    assign i_arrayidx6_fc10_add_x_p2_of_2_cin = SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_D2;
    assign i_arrayidx6_fc10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx6_fc10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_D1}, i_arrayidx6_fc10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_fc10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx6_fc10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx6_fc10_add_x_p2_of_2_o <= $unsigned(i_arrayidx6_fc10_add_x_p2_of_2_a) + $unsigned(i_arrayidx6_fc10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx6_fc10_add_x_p2_of_2_q = i_arrayidx6_fc10_add_x_p2_of_2_o[13:1];

    // i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,596)@101
    assign i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx6_fc10_add_x_p2_of_2_q[11:0]);

    // i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,598)@101
    assign i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // SE_i_arrayidx6_fc10_add_x_p2_of_2(STALLENABLE,987)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc10_add_x_p2_of_2_V0 = SE_i_arrayidx6_fc10_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx6_fc10_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx6_fc10_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx6_fc10_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx6_fc10_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx6_fc10_add_x_p2_of_2_v_s_0 = SE_i_arrayidx6_fc10_add_x_p2_of_2_backEN & SR_SE_i_arrayidx6_fc10_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc10_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx6_fc10_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc10_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx6_fc10_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx6_fc10_add_x_p2_of_2_R_v_0 & SE_i_arrayidx6_fc10_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx6_fc10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx6_fc10_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,996)
    // Valid signal propagation
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_V2 = 1'b1;
    assign SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_V3 = 1'b1;

    // SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0(STALLREG,1247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_V = SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q;

    // SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2(STALLENABLE,983)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_V0 = SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_V1 = SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_s_tv_1 = SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_or0 = SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2(STALLREG,1246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_valid <= SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_and0 = SE_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_and1 = SE_i_arrayidx10_fc10_add_x_BitSelect_for_b_tessel1_0_V2 & SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_i_valid = SE_i_arrayidx6_fc10_add_x_p2_of_2_V0 & SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_V = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_data0 : i_arrayidx6_fc10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_data1 : i_arrayidx10_fc10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_r_data2 : i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_c;

    // i_arrayidx6_fc10_dupName_0_add_x_p2_of_2(ADD,541)@101 + 1
    assign i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_D2;
    assign i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_D1}, i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_q = i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_o[13:1];

    // redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0(REG,708)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q(BITJOIN,542)@102
    assign i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_q = {i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_q, redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx6_fc10_dupName_2_trunc_sel_x(BITSELECT,29)@102
    assign i_arrayidx6_fc10_dupName_2_trunc_sel_x_b = i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_unnamed_fc18_fc146(BLACKBOX,102)@102
    // in in_i_stall@20000000
    // out out_o_readdata@134
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_unnamed_fc18_fc1_avm_address@20000000
    // out out_unnamed_fc18_fc1_avm_burstcount@20000000
    // out out_unnamed_fc18_fc1_avm_byteenable@20000000
    // out out_unnamed_fc18_fc1_avm_enable@20000000
    // out out_unnamed_fc18_fc1_avm_read@20000000
    // out out_unnamed_fc18_fc1_avm_write@20000000
    // out out_unnamed_fc18_fc1_avm_writedata@20000000
    fc1_i_llvm_fpga_mem_unnamed_8_fc10 thei_llvm_fpga_mem_unnamed_fc18_fc146 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx6_fc10_dupName_2_trunc_sel_x_b),
        .in_i_dependence(i_memdep_phi2_or_fc129_q),
        .in_i_predicate(i_first_cleanup_xor_fc130_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_backStall),
        .in_i_valid(SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_V0),
        .in_unnamed_fc18_fc1_avm_readdata(in_unnamed_fc18_fc1_avm_readdata),
        .in_unnamed_fc18_fc1_avm_readdatavalid(in_unnamed_fc18_fc1_avm_readdatavalid),
        .in_unnamed_fc18_fc1_avm_waitrequest(in_unnamed_fc18_fc1_avm_waitrequest),
        .in_unnamed_fc18_fc1_avm_writeack(in_unnamed_fc18_fc1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_fc18_fc146_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_fc18_fc146_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_fc18_fc146_out_o_valid),
        .out_unnamed_fc18_fc1_avm_address(i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_address),
        .out_unnamed_fc18_fc1_avm_burstcount(i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_burstcount),
        .out_unnamed_fc18_fc1_avm_byteenable(i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_byteenable),
        .out_unnamed_fc18_fc1_avm_enable(i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_enable),
        .out_unnamed_fc18_fc1_avm_read(i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_read),
        .out_unnamed_fc18_fc1_avm_write(i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_write),
        .out_unnamed_fc18_fc1_avm_writedata(i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0(STALLENABLE,1035)
    // Valid signal propagation
    assign SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_V0 = SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_backStall & SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2(STALLENABLE,984)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_V0 = SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_s_tv_0 = SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_backStall & SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q(STALLENABLE,985)
    // Valid signal propagation
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_V0 = SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_unnamed_fc18_fc146_out_o_stall | ~ (SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_and0 = SE_i_arrayidx6_fc10_dupName_0_add_x_p2_of_2_V0;
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_and1 = SE_redist11_i_arrayidx6_fc10_dupName_0_add_x_p1_of_2_q_1_0_V0 & SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_and0;
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V5 & SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_and1;
    assign SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_V2 & SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_and2;

    // i_arrayidx10_fc10_add_x_p2_of_2(ADD,523)@101 + 1
    assign i_arrayidx10_fc10_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_D2;
    assign i_arrayidx10_fc10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_fc10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_fc10_add_x_p2_of_2_D1}, i_arrayidx10_fc10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_fc10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_fc10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_fc10_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_fc10_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_fc10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_fc10_add_x_p2_of_2_q = i_arrayidx10_fc10_add_x_p2_of_2_o[13:1];

    // redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0(REG,710)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx10_fc10_add_x_BitJoin_for_q(BITJOIN,524)@102
    assign i_arrayidx10_fc10_add_x_BitJoin_for_q_q = {i_arrayidx10_fc10_add_x_p2_of_2_q, redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx10_fc10_dupName_0_trunc_sel_x(BITSELECT,16)@102
    assign i_arrayidx10_fc10_dupName_0_trunc_sel_x_b = i_arrayidx10_fc10_add_x_BitJoin_for_q_q[63:0];

    // redist27_i_cmp4_fc117_q_2_0(REG,727)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_cmp4_fc117_q_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist27_i_cmp4_fc117_q_2_0_backEN == 1'b1)
        begin
            redist27_i_cmp4_fc117_q_2_0_q <= $unsigned(SR_SE_redist27_i_cmp4_fc117_q_2_0_D0);
        end
    end

    // i_arrayidx10_arrayidx21_fc145(MUX,76)@102
    assign i_arrayidx10_arrayidx21_fc145_s = redist27_i_cmp4_fc117_q_2_0_q;
    always @(i_arrayidx10_arrayidx21_fc145_s or i_arrayidx21_fc10_dupName_0_trunc_sel_x_b or i_arrayidx10_fc10_dupName_0_trunc_sel_x_b)
    begin
        unique case (i_arrayidx10_arrayidx21_fc145_s)
            1'b0 : i_arrayidx10_arrayidx21_fc145_q = i_arrayidx21_fc10_dupName_0_trunc_sel_x_b;
            1'b1 : i_arrayidx10_arrayidx21_fc145_q = i_arrayidx10_fc10_dupName_0_trunc_sel_x_b;
            default : i_arrayidx10_arrayidx21_fc145_q = 64'b0;
        endcase
    end

    // SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q(STALLREG,1255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_data1 <= 1'bx;
            SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_valid <= SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_backStall & (SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_valid | SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_i_valid);

            if (SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_data0 <= i_arrayidx10_arrayidx21_fc145_q;
                SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_data1 <= i_memdep_phi2_or_fc129_q;
                SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_data2 <= i_first_cleanup_xor_fc130_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and0 = SE_i_arrayidx10_fc10_add_x_p2_of_2_V0;
    assign SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and1 = SE_redist13_i_arrayidx10_fc10_add_x_p1_of_2_q_1_0_V0 & SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and0;
    assign SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and2 = SE_i_arrayidx21_fc10_add_x_BitJoin_for_q_V0 & SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and1;
    assign SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and3 = SE_redist27_i_cmp4_fc117_q_2_0_V0 & SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and2;
    assign SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V3 & SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and3;
    assign SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_V0 & SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_and4;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_backStall = SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_valid | ~ (SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_V = SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_valid : SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_D0 = SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_data0 : i_arrayidx10_arrayidx21_fc145_q;
    // Data1
    assign SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_D1 = SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_data1 : i_memdep_phi2_or_fc129_q;
    // Data2
    assign SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_D2 = SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_r_data2 : i_first_cleanup_xor_fc130_q;

    // SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo(STALLENABLE,1050)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_fromReg0 <= '0;
            SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_fromReg0 <= SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_toReg0;
            // Successor 1
            SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_fromReg1 <= SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_consumed0 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1025_push19_fc128_backStall) & SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_wireValid) | SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_fromReg0;
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_backStall) & SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_wireValid) | SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_fromReg1;
    // Consuming
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_StallValid = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_backStall & SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_wireValid;
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_toReg0 = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_StallValid & SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_consumed0;
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_toReg1 = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_StallValid & SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_or0 = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_consumed0;
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_wireStall = ~ (SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_consumed1 & SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_or0);
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_backStall = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_V0 = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_wireValid & ~ (SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_fromReg0);
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_V1 = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_wireValid & ~ (SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_wireValid = redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_valid_out;

    // i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18(BLACKBOX,107)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    fc1_i_llvm_fpga_pop_i1_memdep_phi_pop13_0 thei_llvm_fpga_pop_i1_memdep_phi_pop13_fc18 (
        .in_data_in(GND_q),
        .in_dir(redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i1_memdep_phi_push13_fc154_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i1_memdep_phi_push13_fc154_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_backStall),
        .in_valid_in(SE_redist32_fc1_B3_merge_reg_aunroll_x_out_data_out_0_tpl_100_1_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18(STALLENABLE,889)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_consumed0 = (~ (SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_consumed1 = (~ (SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_consumed2 = (~ (SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_or1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_wireValid = SE_out_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_V1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_and0;

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14(STALLENABLE,893)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg4 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg5 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg6 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed0 = (~ (SR_SE_leftShiftStage0_uid241_i_cleanups_shl_fc10_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_fc136_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed2 = (~ (SR_SE_i_masked_fc144_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed3 = (~ (SR_SE_i_arrayidx10_fc10_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed4 = (~ (SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed5 = (~ (SE_i_arrayidx6_fc10_dupName_0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg5;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed6 = (~ (SR_SE_join_for_coalesced_delay_3_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg6;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg5 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed5;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_toReg6 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed6;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed4 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or5 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed5 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_consumed6 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_or5);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg4);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V5 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg5);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V6 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_wireValid = i_llvm_fpga_pop_i2_cleanups_pop15_fc14_out_valid_out;

    // SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0(STALLENABLE,1034)
    // Valid signal propagation
    assign SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_V0 = SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_backStall & SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx8_fc10_add_x_p2_of_2(STALLENABLE,989)
    // Valid signal propagation
    assign SE_i_arrayidx8_fc10_add_x_p2_of_2_V0 = SE_i_arrayidx8_fc10_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx8_fc10_add_x_p2_of_2_s_tv_0 = SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_backStall & SE_i_arrayidx8_fc10_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx8_fc10_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx8_fc10_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx8_fc10_add_x_p2_of_2_v_s_0 = SE_i_arrayidx8_fc10_add_x_p2_of_2_backEN & SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx8_fc10_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx8_fc10_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx8_fc10_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx8_fc10_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx8_fc10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx8_fc10_add_x_p2_of_2_R_v_0 & SE_i_arrayidx8_fc10_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx8_fc10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx8_fc10_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx8_fc10_add_x_BitJoin_for_q(STALLENABLE,990)
    // Valid signal propagation
    assign SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_V0 = SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_unnamed_fc17_fc142_out_o_stall | ~ (SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_and0 = SE_i_arrayidx8_fc10_add_x_p2_of_2_V0;
    assign SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_and1 = SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_V0 & SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_and0;
    assign SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop15_fc14_V4 & SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_and1;
    assign SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_V1 & SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_and2;

    // SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146(STALLENABLE,879)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_V0 = SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_backStall = i_sfc_s_c0_in_for_body3_fc1s_c0_enter386_fc151_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_and0 = i_llvm_fpga_mem_unnamed_fc18_fc146_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_and1 = i_llvm_fpga_mem_unnamed_fc17_fc142_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_wireValid = i_llvm_fpga_mem_pn1_fc148_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_and1;

    // i_first_cleanup_xor_fc130(LOGICAL,83)@102
    assign i_first_cleanup_xor_fc130_q = i_first_cleanup_fc114_sel_x_b ^ VCC_q;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18(BITJOIN,795)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_q = i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18(BITSELECT,796)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_q[0:0]);

    // i_memdep_phi2_or_fc129(LOGICAL,125)@102
    assign i_memdep_phi2_or_fc129_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop13_fc18_b | bubble_select_redist22_i_llvm_fpga_pop_i1_memdep_phi2_pop1025_pop19_fc113_out_data_out_98_fifo_b;

    // i_arrayidx8_fc10_add_x_p2_of_2(ADD,559)@101 + 1
    assign i_arrayidx8_fc10_add_x_p2_of_2_cin = SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_D2;
    assign i_arrayidx8_fc10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx8_fc10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx8_fc10_add_x_p2_of_2_D1}, i_arrayidx8_fc10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx8_fc10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx8_fc10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx8_fc10_add_x_p2_of_2_o <= $unsigned(i_arrayidx8_fc10_add_x_p2_of_2_a) + $unsigned(i_arrayidx8_fc10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx8_fc10_add_x_p2_of_2_q = i_arrayidx8_fc10_add_x_p2_of_2_o[13:1];

    // redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0(REG,707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx8_fc10_add_x_BitJoin_for_q(BITJOIN,560)@102
    assign i_arrayidx8_fc10_add_x_BitJoin_for_q_q = {i_arrayidx8_fc10_add_x_p2_of_2_q, redist10_i_arrayidx8_fc10_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx8_fc10_dupName_0_trunc_sel_x(BITSELECT,44)@102
    assign i_arrayidx8_fc10_dupName_0_trunc_sel_x_b = i_arrayidx8_fc10_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_unnamed_fc17_fc142(BLACKBOX,101)@102
    // in in_i_stall@20000000
    // out out_o_readdata@134
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_unnamed_fc17_fc1_avm_address@20000000
    // out out_unnamed_fc17_fc1_avm_burstcount@20000000
    // out out_unnamed_fc17_fc1_avm_byteenable@20000000
    // out out_unnamed_fc17_fc1_avm_enable@20000000
    // out out_unnamed_fc17_fc1_avm_read@20000000
    // out out_unnamed_fc17_fc1_avm_write@20000000
    // out out_unnamed_fc17_fc1_avm_writedata@20000000
    fc1_i_llvm_fpga_mem_unnamed_7_fc10 thei_llvm_fpga_mem_unnamed_fc17_fc142 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx8_fc10_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_memdep_phi2_or_fc129_q),
        .in_i_predicate(i_first_cleanup_xor_fc130_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_fc18_fc146_backStall),
        .in_i_valid(SE_i_arrayidx8_fc10_add_x_BitJoin_for_q_V0),
        .in_unnamed_fc17_fc1_avm_readdata(in_unnamed_fc17_fc1_avm_readdata),
        .in_unnamed_fc17_fc1_avm_readdatavalid(in_unnamed_fc17_fc1_avm_readdatavalid),
        .in_unnamed_fc17_fc1_avm_waitrequest(in_unnamed_fc17_fc1_avm_waitrequest),
        .in_unnamed_fc17_fc1_avm_writeack(in_unnamed_fc17_fc1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_fc17_fc142_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_fc17_fc142_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_fc17_fc142_out_o_valid),
        .out_unnamed_fc17_fc1_avm_address(i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_address),
        .out_unnamed_fc17_fc1_avm_burstcount(i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_burstcount),
        .out_unnamed_fc17_fc1_avm_byteenable(i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_byteenable),
        .out_unnamed_fc17_fc1_avm_enable(i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_enable),
        .out_unnamed_fc17_fc1_avm_read(i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_read),
        .out_unnamed_fc17_fc1_avm_write(i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_write),
        .out_unnamed_fc17_fc1_avm_writedata(i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,7)
    assign out_unnamed_fc17_fc1_avm_address = i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_address;
    assign out_unnamed_fc17_fc1_avm_enable = i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_enable;
    assign out_unnamed_fc17_fc1_avm_read = i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_read;
    assign out_unnamed_fc17_fc1_avm_write = i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_write;
    assign out_unnamed_fc17_fc1_avm_writedata = i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_writedata;
    assign out_unnamed_fc17_fc1_avm_byteenable = i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_byteenable;
    assign out_unnamed_fc17_fc1_avm_burstcount = i_llvm_fpga_mem_unnamed_fc17_fc142_out_unnamed_fc17_fc1_avm_burstcount;

    // bubble_join_redist19_i_masked_fc144_q_98_fifo(BITJOIN,819)
    assign bubble_join_redist19_i_masked_fc144_q_98_fifo_q = redist19_i_masked_fc144_q_98_fifo_data_out;

    // bubble_select_redist19_i_masked_fc144_q_98_fifo(BITSELECT,820)
    assign bubble_select_redist19_i_masked_fc144_q_98_fifo_b = $unsigned(bubble_join_redist19_i_masked_fc144_q_98_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,8)@200
    assign out_exitcond722_pop16 = bubble_select_i_llvm_fpga_pop_i1_exitcond722_pop16_fc110_b;
    assign out_masked = bubble_select_redist19_i_masked_fc144_q_98_fifo_b;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_fc153_b;
    assign out_notcmp1223_pop17 = bubble_select_i_llvm_fpga_pop_i1_notcmp1223_pop17_fc111_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i2_initerations_pop14_fc16_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,10)
    assign out_unnamed_fc18_fc1_avm_address = i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_address;
    assign out_unnamed_fc18_fc1_avm_enable = i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_enable;
    assign out_unnamed_fc18_fc1_avm_read = i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_read;
    assign out_unnamed_fc18_fc1_avm_write = i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_write;
    assign out_unnamed_fc18_fc1_avm_writedata = i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_writedata;
    assign out_unnamed_fc18_fc1_avm_byteenable = i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_byteenable;
    assign out_unnamed_fc18_fc1_avm_burstcount = i_llvm_fpga_mem_unnamed_fc18_fc146_out_unnamed_fc18_fc1_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,12)
    assign out_pn1_fc1_avm_address = i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_address;
    assign out_pn1_fc1_avm_enable = i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_enable;
    assign out_pn1_fc1_avm_read = i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_read;
    assign out_pn1_fc1_avm_write = i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_write;
    assign out_pn1_fc1_avm_writedata = i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_writedata;
    assign out_pn1_fc1_avm_byteenable = i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_byteenable;
    assign out_pn1_fc1_avm_burstcount = i_llvm_fpga_mem_pn1_fc148_out_pn1_fc1_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,13)
    assign out_memdep_fc1_avm_address = i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_address;
    assign out_memdep_fc1_avm_enable = i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_enable;
    assign out_memdep_fc1_avm_read = i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_read;
    assign out_memdep_fc1_avm_write = i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_write;
    assign out_memdep_fc1_avm_writedata = i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_writedata;
    assign out_memdep_fc1_avm_byteenable = i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_byteenable;
    assign out_memdep_fc1_avm_burstcount = i_llvm_fpga_mem_memdep_fc153_out_memdep_fc1_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,14)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_fc153_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,75)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc15_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_fc15_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc15_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_fc15_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,197)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_fc15_out_pipeline_valid_out;

    // sync_out(GPOUT,206)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
